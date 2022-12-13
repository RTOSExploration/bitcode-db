; ModuleID = './build/sha_get_hash.elf.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7em-none-unknown-eabihf"

%struct.nvic_function_t = type { void (i32)*, i32 }
%struct.uart_context_t = type { i8, %struct.hal_uart_config_t, i8, %struct.hal_uart_callback_config_t, i8, %struct.hal_uart_dma_config_t }
%struct.hal_uart_config_t = type { i32, i32, i32, i32 }
%struct.hal_uart_callback_config_t = type { void (i32, i8*)*, i8* }
%struct.hal_uart_dma_config_t = type { i8*, i32, i32, i8*, i32, i32, i32 }
%struct.__va_list = type { i8* }
%struct.hal_aes_buffer_t = type { i8*, i32 }
%struct.gpio_status = type { i32, i8, i8, i8 }
%struct.hal_sha_context_t = type { [16 x i32], i32, [128 x i8], i8*, i32 }
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
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct._misc_reent = type { i8*, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t, [8 x i8], i32, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t }

@g_u4ClkCnt1ms = dso_local local_unnamed_addr global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [37 x i8] c"ASSERT, __FILE__ = %s, __LINE__ = %u\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"../../../../../driver/chip/mt7687/src/common/gpt.c\00", align 1
@GPTTimer.0 = internal unnamed_addr global void ()* null, align 4, !dbg !81
@GPTTimer.1 = internal unnamed_addr global void ()* null, align 4, !dbg !82
@gXtalFreq = internal unnamed_addr global i32 0, align 4, !dbg !83
@gCpuFrequency = internal unnamed_addr global i32 0, align 4, !dbg !98
@switch.table.top_xtal_init = private unnamed_addr constant [8 x i32] [i32 20000000, i32 40000000, i32 26000000, i32 52000000, i32 40000000, i32 40000000, i32 40000000, i32 40000000], align 4
@switch.table.top_xtal_init.1 = private unnamed_addr constant [8 x i32] [i32 16, i32 512, i32 64, i32 1024, i32 512, i32 512, i32 512, i32 512], align 4
@__const.halUART_SetFormat.fraction_L_mapping = private unnamed_addr constant [11 x i16] [i16 0, i16 16, i16 68, i16 146, i16 41, i16 170, i16 182, i16 219, i16 173, i16 255, i16 255], align 2
@__const.halUART_SetFormat.fraction_M_mapping = private unnamed_addr constant [11 x i16] [i16 0, i16 0, i16 0, i16 0, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 3], align 2
@gUartClkFreq = dso_local local_unnamed_addr global i32 0, align 4, !dbg !100
@g_crypt_lock = dso_local local_unnamed_addr global i8 0, align 1, !dbg !138
@__FUNCTION__.hal_aes_encrypt_with_padding = private unnamed_addr constant [29 x i8] c"hal_aes_encrypt_with_padding\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"NULL input.\00", align 1
@.str.1.6 = private unnamed_addr constant [29 x i8] c"Inadequate encrypted buffer.\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"do_aes_encrypt fail.\00", align 1
@__FUNCTION__.hal_aes_decrypt = private unnamed_addr constant [16 x i8] c"hal_aes_decrypt\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Invalid encrypted text length: %lu.\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"Plain text buffer lengthL %lu is too small, encrypted length is: %lu\00", align 1
@.str.5.7 = private unnamed_addr constant [55 x i8] c"key length is %lu, invalid. It has to be 16, 24 or 32.\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"do_aes_decrypt fail\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Decrypted raw data(AES %s): \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"CBC\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"ECB\00", align 1
@g_aes_op_done = internal global i8 0, align 1, !dbg !153
@__FUNCTION__.do_aes_encrypt = private unnamed_addr constant [15 x i8] c"do_aes_encrypt\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"aes_operate fail.\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"wait for encrypt timeout.\00", align 1
@__FUNCTION__.do_aes_decrypt = private unnamed_addr constant [15 x i8] c"do_aes_decrypt\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"wait for decrypt timeout.\00", align 1
@nvic_function_table = dso_local local_unnamed_addr global [96 x %struct.nvic_function_t] zeroinitializer, align 4, !dbg !157
@__FUNCTION__.isrC_main = private unnamed_addr constant [10 x i8] c"isrC_main\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"ERROR: no IRQ handler! \0A\00", align 1
@__FUNCTION__.hal_sha1_append = private unnamed_addr constant [16 x i8] c"hal_sha1_append\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"context is NULL.\00", align 1
@.str.1.24 = private unnamed_addr constant [17 x i8] c"message is NULL.\00", align 1
@__FUNCTION__.hal_sha224_append = private unnamed_addr constant [18 x i8] c"hal_sha224_append\00", align 1
@__FUNCTION__.hal_sha256_append = private unnamed_addr constant [18 x i8] c"hal_sha256_append\00", align 1
@__FUNCTION__.hal_sha384_append = private unnamed_addr constant [18 x i8] c"hal_sha384_append\00", align 1
@__FUNCTION__.hal_sha512_append = private unnamed_addr constant [18 x i8] c"hal_sha512_append\00", align 1
@g_uart_context_table = internal global [2 x %struct.uart_context_t] zeroinitializer, align 4, !dbg !259
@hal_uart_map_receive_callback.func_tbl = internal unnamed_addr constant [2 x void ()*] [void ()* @hal_uart_receive_callback0, void ()* @hal_uart_receive_callback1], align 4, !dbg !317
@__const.hal_uart_translate_baudrate.baudrate_tbl = private unnamed_addr constant [13 x i32] [i32 110, i32 300, i32 1200, i32 2400, i32 4800, i32 9600, i32 19200, i32 38400, i32 57600, i32 115200, i32 230400, i32 460800, i32 921600], align 4
@__const.hal_uart_translate_word_length.databit_tbl = private unnamed_addr constant [4 x i16] [i16 0, i16 1, i16 2, i16 3], align 2
@__const.hal_uart_translate_parity.parity_tbl = private unnamed_addr constant [5 x i16] [i16 0, i16 8, i16 24, i16 0, i16 0], align 2
@__const.hal_uart_translate_stopbit.stopbit_tbl = private unnamed_addr constant [3 x i16] [i16 0, i16 4, i16 4], align 2
@.str.25 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.1.26 = private unnamed_addr constant [20 x i8] c"welcome to main()\0D\0A\00", align 1
@.str.2.27 = private unnamed_addr constant [32 x i8] c"abcdefghijklmnopqrstwxyz1234567\00", align 1
@.str.3.28 = private unnamed_addr constant [23 x i8] c"SHA1/SHA256 data: %s\0D\0A\00", align 1
@.str.4.29 = private unnamed_addr constant [13 x i8] c"SHA1 result:\00", align 1
@.str.5.30 = private unnamed_addr constant [15 x i8] c"SHA224 result:\00", align 1
@.str.6.31 = private unnamed_addr constant [15 x i8] c"SHA256 result:\00", align 1
@.str.7.32 = private unnamed_addr constant [15 x i8] c"SHA384 result:\00", align 1
@.str.8.33 = private unnamed_addr constant [15 x i8] c"SHA512 result:\00", align 1
@.str.9.34 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.10.35 = private unnamed_addr constant [7 x i8] c" %02x \00", align 1
@SystemCoreClock = dso_local local_unnamed_addr global i32 40000000, align 4, !dbg !370
@System_Initialize_Done = internal global i32 0, align 4, !dbg !438
@_sbrk_r.heap_end = internal unnamed_addr global i8* null, align 4, !dbg !440
@end = external dso_local global i8, align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"_exit\0A\00", align 1
@.str.1.43 = private unnamed_addr constant [10 x i8] c"_kill %d\0A\00", align 1
@.str.2.44 = private unnamed_addr constant [9 x i8] c"_getpid\0A\00", align 1
@build_date_time_str = dso_local local_unnamed_addr global [31 x i8] c"2022/12/13 07:54:15 GMT +00:00\00", align 1, !dbg !649
@sw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"SDK_V4.6.1\00", align 1, !dbg !654
@hw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"mt7687_hdk\00", align 1, !dbg !660

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_ResetTimer(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 !dbg !954 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !958, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata i32 %1, metadata !959, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata i1 %2, metadata !960, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !961
  %4 = icmp ugt i32 %0, 1, !dbg !962
  br i1 %4, label %5, label %8, !dbg !964

5:                                                ; preds = %3
  %6 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 75) #13, !dbg !965
  br label %7, !dbg !965

7:                                                ; preds = %5, %7
  br label %7, !dbg !965, !llvm.loop !967

8:                                                ; preds = %3
  switch i32 %0, label %21 [
    i32 0, label %9
    i32 1, label %15
  ], !dbg !968

9:                                                ; preds = %8
  store volatile i32 %1, i32* inttoptr (i32 -2096824300 to i32*), align 4, !dbg !969
  %10 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !972
  br i1 %2, label %11, label %13, !dbg !974

11:                                               ; preds = %9
  %12 = or i32 %10, 2, !dbg !975
  store volatile i32 %12, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !975
  br label %21, !dbg !977

13:                                               ; preds = %9
  %14 = and i32 %10, -3, !dbg !978
  store volatile i32 %14, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !978
  br label %21

15:                                               ; preds = %8
  store volatile i32 %1, i32* inttoptr (i32 -2096824284 to i32*), align 4, !dbg !980
  %16 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !983
  br i1 %2, label %17, label %19, !dbg !985

17:                                               ; preds = %15
  %18 = or i32 %16, 2, !dbg !986
  store volatile i32 %18, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !986
  br label %21, !dbg !988

19:                                               ; preds = %15
  %20 = and i32 %16, -3, !dbg !989
  store volatile i32 %20, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !989
  br label %21

21:                                               ; preds = %8, %19, %17, %11, %13
  ret void, !dbg !991
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_Start(i32 noundef %0) local_unnamed_addr #0 !dbg !992 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !996, metadata !DIExpression()), !dbg !997
  switch i32 %0, label %2 [
    i32 0, label %5
    i32 1, label %9
    i32 4, label %13
  ], !dbg !998

2:                                                ; preds = %1
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 96) #13, !dbg !999
  br label %4, !dbg !999

4:                                                ; preds = %2, %4
  br label %4, !dbg !999, !llvm.loop !1002

5:                                                ; preds = %1
  %6 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1003
  %7 = or i32 %6, 1, !dbg !1003
  store volatile i32 %7, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1003
  %8 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #13, !dbg !1006
  br label %16, !dbg !1007

9:                                                ; preds = %1
  %10 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1008
  %11 = or i32 %10, 1, !dbg !1008
  store volatile i32 %11, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1008
  %12 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #13, !dbg !1011
  br label %16, !dbg !1012

13:                                               ; preds = %1
  %14 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1013
  %15 = or i32 %14, 1, !dbg !1013
  store volatile i32 %15, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1013
  br label %16, !dbg !1016

16:                                               ; preds = %9, %13, %5
  ret void, !dbg !1017
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @GPT_Stop(i32 noundef %0) local_unnamed_addr #3 !dbg !1018 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1020, metadata !DIExpression()), !dbg !1021
  switch i32 %0, label %18 [
    i32 0, label %2
    i32 1, label %7
    i32 2, label %12
    i32 4, label %15
  ], !dbg !1022

2:                                                ; preds = %1
  %3 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1023
  %4 = and i32 %3, -2, !dbg !1023
  store volatile i32 %4, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1023
  %5 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1026
  %6 = and i32 %5, -2, !dbg !1026
  store volatile i32 %6, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1026
  store volatile i32 1, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1027
  br label %18, !dbg !1028

7:                                                ; preds = %1
  %8 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1029
  %9 = and i32 %8, -3, !dbg !1029
  store volatile i32 %9, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1029
  %10 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1032
  %11 = and i32 %10, -2, !dbg !1032
  store volatile i32 %11, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1032
  store volatile i32 2, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1033
  br label %18, !dbg !1034

12:                                               ; preds = %1
  %13 = load volatile i32, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1035
  %14 = and i32 %13, -2, !dbg !1035
  store volatile i32 %14, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1035
  br label %18, !dbg !1038

15:                                               ; preds = %1
  %16 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1039
  %17 = and i32 %16, -2, !dbg !1039
  store volatile i32 %17, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1039
  br label %18, !dbg !1042

18:                                               ; preds = %1, %7, %15, %12, %2
  ret void, !dbg !1043
}

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_INT_Handler(i32 %0) #0 !dbg !1044 {
  call void @llvm.dbg.value(metadata i32 undef, metadata !1046, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i32 undef, metadata !1046, metadata !DIExpression()), !dbg !1048
  %2 = load volatile i32, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1049
  %3 = and i32 %2, 65535, !dbg !1050
  call void @llvm.dbg.value(metadata i32 %2, metadata !1047, metadata !DIExpression()), !dbg !1048
  store volatile i32 %3, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1051
  %4 = and i32 %2, 1, !dbg !1052
  %5 = icmp eq i32 %4, 0, !dbg !1052
  br i1 %5, label %6, label %9, !dbg !1054

6:                                                ; preds = %1
  %7 = and i32 %2, 2, !dbg !1055
  %8 = icmp eq i32 %7, 0, !dbg !1055
  br i1 %8, label %13, label %9, !dbg !1057

9:                                                ; preds = %6, %1
  %10 = phi i32 [ 0, %1 ], [ 1, %6 ]
  %11 = phi void ()** [ @GPTTimer.0, %1 ], [ @GPTTimer.1, %6 ]
  tail call void @clear_TMR_INT_status_bit(i32 noundef %10) #13, !dbg !1058
  %12 = load void ()*, void ()** %11, align 4, !dbg !1058
  tail call void %12() #13, !dbg !1058
  br label %13, !dbg !1059

13:                                               ; preds = %9, %6
  ret void, !dbg !1059
}

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_init(i32 noundef %0, i32 noundef %1, void ()* noundef %2) local_unnamed_addr #0 !dbg !1060 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1064, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i32 %1, metadata !1065, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata void ()* %2, metadata !1066, metadata !DIExpression()), !dbg !1067
  switch i32 %0, label %4 [
    i32 4, label %7
    i32 2, label %7
    i32 1, label %7
    i32 0, label %7
  ], !dbg !1068

4:                                                ; preds = %3
  %5 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 149) #13, !dbg !1069
  br label %6, !dbg !1069

6:                                                ; preds = %4, %6
  br label %6, !dbg !1069, !llvm.loop !1072

7:                                                ; preds = %3, %3, %3, %3
  %8 = icmp ult i32 %0, 2, !dbg !1073
  br i1 %8, label %9, label %13, !dbg !1074

9:                                                ; preds = %7
  %10 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 24, void (i32)* noundef nonnull @GPT_INT_Handler) #13, !dbg !1076
  %11 = tail call i32 @hal_nvic_set_priority(i32 noundef 24, i32 noundef 5) #13, !dbg !1078
  %12 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #13, !dbg !1079
  br label %13, !dbg !1080

13:                                               ; preds = %7, %9
  switch i32 %0, label %36 [
    i32 0, label %14
    i32 1, label %20
    i32 2, label %26
    i32 4, label %31
  ], !dbg !1081

14:                                               ; preds = %13
  store void ()* %2, void ()** @GPTTimer.0, align 4, !dbg !1082
  %15 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1085
  %16 = or i32 %15, 1, !dbg !1085
  store volatile i32 %16, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1085
  %17 = shl i32 %1, 2, !dbg !1086
  %18 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1087
  %19 = or i32 %18, %17, !dbg !1087
  store volatile i32 %19, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1087
  br label %36, !dbg !1088

20:                                               ; preds = %13
  store void ()* %2, void ()** @GPTTimer.1, align 4, !dbg !1089
  %21 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1092
  %22 = or i32 %21, 2, !dbg !1092
  store volatile i32 %22, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1092
  %23 = shl i32 %1, 2, !dbg !1093
  %24 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1094
  %25 = or i32 %24, %23, !dbg !1094
  store volatile i32 %25, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1094
  br label %36, !dbg !1095

26:                                               ; preds = %13
  %27 = shl i32 %1, 1, !dbg !1096
  %28 = or i32 %27, 1, !dbg !1099
  %29 = load volatile i32, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1100
  %30 = or i32 %29, %28, !dbg !1100
  store volatile i32 %30, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1100
  br label %36, !dbg !1101

31:                                               ; preds = %13
  %32 = shl i32 %1, 1, !dbg !1102
  %33 = or i32 %32, 1, !dbg !1105
  %34 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1106
  %35 = or i32 %34, %33, !dbg !1106
  store volatile i32 %35, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1106
  store volatile i32 0, i32* inttoptr (i32 -2096824220 to i32*), align 4, !dbg !1107
  br label %36, !dbg !1108

36:                                               ; preds = %13, %20, %31, %26, %14
  ret void, !dbg !1109
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @GPT_return_current_count(i32 noundef %0) local_unnamed_addr #0 !dbg !1110 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1114, metadata !DIExpression()), !dbg !1116
  switch i32 %0, label %2 [
    i32 0, label %8
    i32 1, label %5
    i32 2, label %6
    i32 4, label %7
  ], !dbg !1117

2:                                                ; preds = %1
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 177) #13, !dbg !1118
  br label %4, !dbg !1118

4:                                                ; preds = %4, %2
  br label %4, !dbg !1118, !llvm.loop !1121

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !1115, metadata !DIExpression()), !dbg !1116
  br label %8, !dbg !1122

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !1115, metadata !DIExpression()), !dbg !1116
  br label %8, !dbg !1126

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !1115, metadata !DIExpression()), !dbg !1116
  br label %8, !dbg !1129

8:                                                ; preds = %1, %5, %7, %6
  %9 = phi i32* [ inttoptr (i32 -2096824252 to i32*), %5 ], [ inttoptr (i32 -2096824268 to i32*), %6 ], [ inttoptr (i32 -2096824216 to i32*), %7 ], [ inttoptr (i32 -2096824256 to i32*), %1 ]
  %10 = load volatile i32, i32* %9, align 4, !dbg !1132
  call void @llvm.dbg.value(metadata i32 %10, metadata !1115, metadata !DIExpression()), !dbg !1116
  ret i32 %10, !dbg !1133
}

; Function Attrs: noinline nounwind optsize
define dso_local void @CM4_GPT2Init() local_unnamed_addr #0 !dbg !1134 {
  tail call void @GPT_init(i32 noundef 2, i32 noundef 1, void ()* noundef null) #14, !dbg !1136
  ret void, !dbg !1137
}

; Function Attrs: noinline nounwind optsize
define dso_local void @CM4_GPT4Init() local_unnamed_addr #0 !dbg !1138 {
  tail call void @GPT_init(i32 noundef 4, i32 noundef 1, void ()* noundef null) #14, !dbg !1139
  ret void, !dbg !1140
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_ConfDirection(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1141 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1146, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata i8 %1, metadata !1147, metadata !DIExpression()), !dbg !1151
  %3 = lshr i32 %0, 5, !dbg !1152
  call void @llvm.dbg.value(metadata i32 %3, metadata !1148, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1151
  %4 = trunc i32 %0 to i16, !dbg !1153
  %5 = and i16 %4, 31, !dbg !1153
  call void @llvm.dbg.value(metadata i16 %4, metadata !1150, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1151
  %6 = trunc i32 %3 to i16, !dbg !1154
  switch i16 %6, label %97 [
    i16 0, label %7
    i16 1, label %70
  ], !dbg !1154

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 1, !dbg !1155
  %9 = zext i16 %5 to i32, !dbg !1158
  %10 = icmp ult i16 %5, 27, !dbg !1158
  br i1 %8, label %11, label %46, !dbg !1159

11:                                               ; preds = %7
  br i1 %10, label %12, label %17, !dbg !1160

12:                                               ; preds = %11
  %13 = shl nuw i32 1, %9, !dbg !1162
  %14 = xor i32 %13, -1, !dbg !1165
  %15 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1166
  %16 = and i32 %15, %14, !dbg !1166
  store volatile i32 %16, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1166
  br label %44, !dbg !1167

17:                                               ; preds = %11
  %18 = trunc i32 %0 to i5, !dbg !1168
  switch i5 %18, label %39 [
    i5 -5, label %19
    i5 -4, label %24
    i5 -3, label %29
    i5 -2, label %34
  ], !dbg !1168

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1169
  %21 = and i32 %20, -3, !dbg !1169
  store volatile i32 %21, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1169
  %22 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1172
  %23 = or i32 %22, 2048, !dbg !1172
  store volatile i32 %23, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1172
  br label %44, !dbg !1173

24:                                               ; preds = %17
  %25 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1174
  %26 = and i32 %25, -3, !dbg !1174
  store volatile i32 %26, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1174
  %27 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1177
  %28 = or i32 %27, 2048, !dbg !1177
  store volatile i32 %28, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1177
  br label %44, !dbg !1178

29:                                               ; preds = %17
  %30 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1179
  %31 = and i32 %30, -3, !dbg !1179
  store volatile i32 %31, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1179
  %32 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1182
  %33 = or i32 %32, 2048, !dbg !1182
  store volatile i32 %33, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1182
  br label %44, !dbg !1183

34:                                               ; preds = %17
  %35 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1184
  %36 = and i32 %35, -3, !dbg !1184
  store volatile i32 %36, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1184
  %37 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1187
  %38 = or i32 %37, 2048, !dbg !1187
  store volatile i32 %38, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1187
  br label %44, !dbg !1188

39:                                               ; preds = %17
  %40 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1189
  %41 = and i32 %40, -3, !dbg !1189
  store volatile i32 %41, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1189
  %42 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1192
  %43 = or i32 %42, 2048, !dbg !1192
  store volatile i32 %43, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1192
  br label %44, !dbg !1193

44:                                               ; preds = %19, %29, %39, %34, %24, %12
  %45 = shl nuw i32 1, %9, !dbg !1194
  store volatile i32 %45, i32* inttoptr (i32 -2097106796 to i32*), align 4, !dbg !1194
  br label %97, !dbg !1195

46:                                               ; preds = %7
  br i1 %10, label %47, label %51, !dbg !1196

47:                                               ; preds = %46
  %48 = shl nuw i32 1, %9, !dbg !1198
  %49 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1201
  %50 = or i32 %49, %48, !dbg !1201
  store volatile i32 %50, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1201
  br label %68, !dbg !1202

51:                                               ; preds = %46
  %52 = trunc i32 %0 to i5, !dbg !1203
  switch i5 %52, label %65 [
    i5 -5, label %53
    i5 -4, label %56
    i5 -3, label %59
    i5 -2, label %62
  ], !dbg !1203

53:                                               ; preds = %51
  %54 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1204
  %55 = or i32 %54, 2050, !dbg !1204
  store volatile i32 %55, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1204
  br label %68, !dbg !1207

56:                                               ; preds = %51
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1208
  %58 = or i32 %57, 2050, !dbg !1208
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1208
  br label %68, !dbg !1211

59:                                               ; preds = %51
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1212
  %61 = or i32 %60, 2050, !dbg !1212
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1212
  br label %68, !dbg !1215

62:                                               ; preds = %51
  %63 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1216
  %64 = or i32 %63, 2050, !dbg !1216
  store volatile i32 %64, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1216
  br label %68, !dbg !1219

65:                                               ; preds = %51
  %66 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1220
  %67 = or i32 %66, 2050, !dbg !1220
  store volatile i32 %67, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1220
  br label %68, !dbg !1223

68:                                               ; preds = %53, %59, %65, %62, %56, %47
  %69 = shl nuw i32 1, %9, !dbg !1224
  store volatile i32 %69, i32* inttoptr (i32 -2097106792 to i32*), align 8, !dbg !1224
  br label %97

70:                                               ; preds = %2
  %71 = icmp eq i8 %1, 1, !dbg !1225
  %72 = zext i16 %5 to i32, !dbg !1227
  %73 = icmp eq i16 %5, 0, !dbg !1227
  br i1 %71, label %74, label %87, !dbg !1228

74:                                               ; preds = %70
  br i1 %73, label %80, label %75, !dbg !1229

75:                                               ; preds = %74
  %76 = shl nuw i32 1, %72, !dbg !1231
  %77 = xor i32 %76, -1, !dbg !1234
  %78 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1235
  %79 = and i32 %78, %77, !dbg !1235
  store volatile i32 %79, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1235
  br label %85, !dbg !1236

80:                                               ; preds = %74
  %81 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1237
  %82 = and i32 %81, -3, !dbg !1237
  store volatile i32 %82, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1237
  %83 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1239
  %84 = or i32 %83, 2048, !dbg !1239
  store volatile i32 %84, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1239
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i32 [ 1, %80 ], [ %76, %75 ], !dbg !1240
  store volatile i32 %86, i32* inttoptr (i32 -2097106780 to i32*), align 4, !dbg !1240
  br label %97, !dbg !1241

87:                                               ; preds = %70
  br i1 %73, label %92, label %88, !dbg !1242

88:                                               ; preds = %87
  %89 = shl nuw i32 1, %72, !dbg !1244
  %90 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1247
  %91 = or i32 %90, %89, !dbg !1247
  store volatile i32 %91, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1247
  br label %95, !dbg !1248

92:                                               ; preds = %87
  %93 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1249
  %94 = or i32 %93, 2050, !dbg !1249
  store volatile i32 %94, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1249
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi i32 [ 1, %92 ], [ %89, %88 ], !dbg !1251
  store volatile i32 %96, i32* inttoptr (i32 -2097106776 to i32*), align 8, !dbg !1251
  br label %97

97:                                               ; preds = %68, %44, %95, %85, %2
  %98 = phi i32 [ -1, %2 ], [ 0, %85 ], [ 0, %95 ], [ 0, %44 ], [ 0, %68 ], !dbg !1151
  ret i32 %98, !dbg !1252
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPO_Write(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1253 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1255, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata i8 %1, metadata !1256, metadata !DIExpression()), !dbg !1259
  %3 = lshr i32 %0, 5, !dbg !1260
  call void @llvm.dbg.value(metadata i32 %3, metadata !1257, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1259
  %4 = trunc i32 %0 to i16, !dbg !1261
  %5 = and i16 %4, 31, !dbg !1261
  call void @llvm.dbg.value(metadata i16 %5, metadata !1258, metadata !DIExpression()), !dbg !1259
  %6 = trunc i32 %3 to i16, !dbg !1262
  switch i16 %6, label %19 [
    i16 0, label %7
    i16 1, label %13
  ], !dbg !1262

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 0, !dbg !1263
  %9 = zext i16 %5 to i32, !dbg !1266
  %10 = shl nuw i32 1, %9, !dbg !1266
  br i1 %8, label %12, label %11, !dbg !1267

11:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106844 to i32*), align 4, !dbg !1268
  br label %19, !dbg !1270

12:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106840 to i32*), align 8, !dbg !1271
  br label %19

13:                                               ; preds = %2
  %14 = icmp eq i8 %1, 0, !dbg !1273
  %15 = zext i16 %5 to i32, !dbg !1275
  %16 = shl nuw i32 1, %15, !dbg !1275
  br i1 %14, label %18, label %17, !dbg !1276

17:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106828 to i32*), align 4, !dbg !1277
  br label %19, !dbg !1279

18:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106824 to i32*), align 8, !dbg !1280
  br label %19

19:                                               ; preds = %12, %11, %18, %17, %2
  %20 = phi i32 [ -1, %2 ], [ 0, %17 ], [ 0, %18 ], [ 0, %11 ], [ 0, %12 ], !dbg !1259
  ret i32 %20, !dbg !1282
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DOUT(i32 noundef %0) local_unnamed_addr #4 !dbg !1283 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1287, metadata !DIExpression()), !dbg !1291
  %2 = lshr i32 %0, 5, !dbg !1292
  call void @llvm.dbg.value(metadata i32 %2, metadata !1288, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1291
  %3 = and i32 %0, 31, !dbg !1293
  call void @llvm.dbg.value(metadata i32 %0, metadata !1289, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1291
  call void @llvm.dbg.value(metadata i8 0, metadata !1290, metadata !DIExpression()), !dbg !1291
  %4 = trunc i32 %2 to i16, !dbg !1294
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1294

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1290, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1291
  br label %6, !dbg !1295

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106832 to i32*), %5 ], [ inttoptr (i32 -2097106848 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1297
  %9 = lshr i32 %8, %3, !dbg !1297
  %10 = trunc i32 %9 to i8, !dbg !1297
  %11 = and i8 %10, 1, !dbg !1297
  call void @llvm.dbg.value(metadata i8 %11, metadata !1290, metadata !DIExpression()), !dbg !1291
  br label %12, !dbg !1298

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1291
  ret i8 %13, !dbg !1299
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DIN(i32 noundef %0) local_unnamed_addr #4 !dbg !1300 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1302, metadata !DIExpression()), !dbg !1306
  %2 = lshr i32 %0, 5, !dbg !1307
  call void @llvm.dbg.value(metadata i32 %2, metadata !1303, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1306
  %3 = and i32 %0, 31, !dbg !1308
  call void @llvm.dbg.value(metadata i32 %0, metadata !1304, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1306
  call void @llvm.dbg.value(metadata i8 0, metadata !1305, metadata !DIExpression()), !dbg !1306
  %4 = trunc i32 %2 to i16, !dbg !1309
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1309

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1305, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1306
  br label %6, !dbg !1310

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106748 to i32*), %5 ], [ inttoptr (i32 -2097106752 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 4, !dbg !1312
  %9 = lshr i32 %8, %3, !dbg !1312
  %10 = trunc i32 %9 to i8, !dbg !1312
  %11 = and i8 %10, 1, !dbg !1312
  call void @llvm.dbg.value(metadata i8 %11, metadata !1305, metadata !DIExpression()), !dbg !1306
  br label %12, !dbg !1313

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1306
  ret i8 %13, !dbg !1314
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_OutEnable(i32 noundef %0) local_unnamed_addr #4 !dbg !1315 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1317, metadata !DIExpression()), !dbg !1321
  %2 = lshr i32 %0, 5, !dbg !1322
  call void @llvm.dbg.value(metadata i32 %2, metadata !1318, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1321
  %3 = and i32 %0, 31, !dbg !1323
  call void @llvm.dbg.value(metadata i32 %0, metadata !1319, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1321
  call void @llvm.dbg.value(metadata i8 0, metadata !1320, metadata !DIExpression()), !dbg !1321
  %4 = trunc i32 %2 to i16, !dbg !1324
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1324

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1320, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1321
  br label %6, !dbg !1325

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106784 to i32*), %5 ], [ inttoptr (i32 -2097106800 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1327
  %9 = lshr i32 %8, %3, !dbg !1327
  %10 = trunc i32 %9 to i8, !dbg !1327
  %11 = and i8 %10, 1, !dbg !1327
  call void @llvm.dbg.value(metadata i8 %11, metadata !1320, metadata !DIExpression()), !dbg !1321
  br label %12, !dbg !1328

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1321
  ret i8 %13, !dbg !1329
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_SET(i32 noundef %0) local_unnamed_addr #3 !dbg !1330 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1334, metadata !DIExpression()), !dbg !1337
  %2 = lshr i32 %0, 5, !dbg !1338
  call void @llvm.dbg.value(metadata i32 %2, metadata !1335, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1337
  %3 = trunc i32 %0 to i16, !dbg !1339
  %4 = and i16 %3, 31, !dbg !1339
  call void @llvm.dbg.value(metadata i16 %3, metadata !1336, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1337
  %5 = tail call i32 @halGPIO_PullDown_RESET(i32 noundef %0) #14, !dbg !1340
  %6 = trunc i32 %2 to i16, !dbg !1341
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1341

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1342
  br i1 %8, label %9, label %12, !dbg !1345

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1346
  %11 = shl nuw nsw i32 1, %10, !dbg !1347
  store volatile i32 %11, i32* inttoptr (i32 -2097106940 to i32*), align 4, !dbg !1347
  br label %49, !dbg !1349

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1350
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1350

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1351
  %16 = and i32 %15, -29, !dbg !1351
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1351
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1354
  %18 = or i32 %17, 2052, !dbg !1354
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1354
  br label %49, !dbg !1355

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1356
  %21 = and i32 %20, -29, !dbg !1356
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1356
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1359
  %23 = or i32 %22, 2052, !dbg !1359
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1359
  br label %49, !dbg !1360

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1361
  %26 = and i32 %25, -29, !dbg !1361
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1361
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1364
  %28 = or i32 %27, 2052, !dbg !1364
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1364
  br label %49, !dbg !1365

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1366
  %31 = and i32 %30, -29, !dbg !1366
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1366
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1369
  %33 = or i32 %32, 2052, !dbg !1369
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1369
  br label %49, !dbg !1370

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1371
  %36 = and i32 %35, -29, !dbg !1371
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1371
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1374
  %38 = or i32 %37, 2052, !dbg !1374
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1374
  br label %49, !dbg !1375

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1376
  br i1 %40, label %41, label %46, !dbg !1378

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1379
  %43 = and i32 %42, -29, !dbg !1379
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1379
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1381
  %45 = or i32 %44, 2052, !dbg !1381
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1381
  br label %49, !dbg !1382

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1383
  %48 = shl nuw i32 1, %47, !dbg !1383
  store volatile i32 %48, i32* inttoptr (i32 -2097106924 to i32*), align 4, !dbg !1383
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1337
  ret i32 %50, !dbg !1385
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_RESET(i32 noundef %0) local_unnamed_addr #3 !dbg !1386 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1388, metadata !DIExpression()), !dbg !1391
  %2 = lshr i32 %0, 5, !dbg !1392
  call void @llvm.dbg.value(metadata i32 %2, metadata !1389, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1391
  %3 = trunc i32 %0 to i16, !dbg !1393
  %4 = and i16 %3, 31, !dbg !1393
  call void @llvm.dbg.value(metadata i16 %3, metadata !1390, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1391
  %5 = trunc i32 %2 to i16, !dbg !1394
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1394

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1395
  br i1 %7, label %8, label %11, !dbg !1398

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1399
  %10 = shl nuw nsw i32 1, %9, !dbg !1400
  store volatile i32 %10, i32* inttoptr (i32 -2097106888 to i32*), align 8, !dbg !1400
  br label %48, !dbg !1402

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1403
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1403

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1404
  %15 = and i32 %14, -29, !dbg !1404
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1404
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1407
  %17 = or i32 %16, 2048, !dbg !1407
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1407
  br label %48, !dbg !1408

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1409
  %20 = and i32 %19, -29, !dbg !1409
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1409
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1412
  %22 = or i32 %21, 2048, !dbg !1412
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1412
  br label %48, !dbg !1413

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1414
  %25 = and i32 %24, -29, !dbg !1414
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1414
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1417
  %27 = or i32 %26, 2048, !dbg !1417
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1417
  br label %48, !dbg !1418

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1419
  %30 = and i32 %29, -29, !dbg !1419
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1419
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1422
  %32 = or i32 %31, 2048, !dbg !1422
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1422
  br label %48, !dbg !1423

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1424
  %35 = and i32 %34, -29, !dbg !1424
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1424
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1427
  %37 = or i32 %36, 2048, !dbg !1427
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1427
  br label %48, !dbg !1428

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1429
  br i1 %39, label %40, label %45, !dbg !1431

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1432
  %42 = and i32 %41, -29, !dbg !1432
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1432
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1434
  %44 = or i32 %43, 2048, !dbg !1434
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1434
  br label %48, !dbg !1435

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1436
  %47 = shl nuw i32 1, %46, !dbg !1436
  store volatile i32 %47, i32* inttoptr (i32 -2097106872 to i32*), align 8, !dbg !1436
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1391
  ret i32 %49, !dbg !1438
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_RESET(i32 noundef %0) local_unnamed_addr #3 !dbg !1439 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1441, metadata !DIExpression()), !dbg !1444
  %2 = lshr i32 %0, 5, !dbg !1445
  call void @llvm.dbg.value(metadata i32 %2, metadata !1442, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1444
  %3 = trunc i32 %0 to i16, !dbg !1446
  %4 = and i16 %3, 31, !dbg !1446
  call void @llvm.dbg.value(metadata i16 %3, metadata !1443, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1444
  %5 = trunc i32 %2 to i16, !dbg !1447
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1447

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1448
  br i1 %7, label %8, label %11, !dbg !1451

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1452
  %10 = shl nuw nsw i32 1, %9, !dbg !1453
  store volatile i32 %10, i32* inttoptr (i32 -2097106936 to i32*), align 8, !dbg !1453
  br label %48, !dbg !1455

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1456
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1456

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1457
  %15 = and i32 %14, -29, !dbg !1457
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1457
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1460
  %17 = or i32 %16, 2048, !dbg !1460
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1460
  br label %48, !dbg !1461

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1462
  %20 = and i32 %19, -29, !dbg !1462
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1462
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1465
  %22 = or i32 %21, 2048, !dbg !1465
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1465
  br label %48, !dbg !1466

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1467
  %25 = and i32 %24, -29, !dbg !1467
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1467
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1470
  %27 = or i32 %26, 2048, !dbg !1470
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1470
  br label %48, !dbg !1471

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1472
  %30 = and i32 %29, -29, !dbg !1472
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1472
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1475
  %32 = or i32 %31, 2048, !dbg !1475
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1475
  br label %48, !dbg !1476

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1477
  %35 = and i32 %34, -29, !dbg !1477
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1477
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1480
  %37 = or i32 %36, 2048, !dbg !1480
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1480
  br label %48, !dbg !1481

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1482
  br i1 %39, label %40, label %45, !dbg !1484

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1485
  %42 = and i32 %41, -29, !dbg !1485
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1485
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1487
  %44 = or i32 %43, 2048, !dbg !1487
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1487
  br label %48, !dbg !1488

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1489
  %47 = shl nuw i32 1, %46, !dbg !1489
  store volatile i32 %47, i32* inttoptr (i32 -2097106920 to i32*), align 8, !dbg !1489
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1444
  ret i32 %49, !dbg !1491
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_SET(i32 noundef %0) local_unnamed_addr #3 !dbg !1492 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1494, metadata !DIExpression()), !dbg !1497
  %2 = lshr i32 %0, 5, !dbg !1498
  call void @llvm.dbg.value(metadata i32 %2, metadata !1495, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1497
  %3 = trunc i32 %0 to i16, !dbg !1499
  %4 = and i16 %3, 31, !dbg !1499
  call void @llvm.dbg.value(metadata i16 %3, metadata !1496, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1497
  %5 = tail call i32 @halGPIO_PullUp_RESET(i32 noundef %0) #14, !dbg !1500
  %6 = trunc i32 %2 to i16, !dbg !1501
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1501

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1502
  br i1 %8, label %9, label %12, !dbg !1505

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1506
  %11 = shl nuw nsw i32 1, %10, !dbg !1507
  store volatile i32 %11, i32* inttoptr (i32 -2097106892 to i32*), align 4, !dbg !1507
  br label %49, !dbg !1509

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1510
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1510

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1511
  %16 = and i32 %15, -29, !dbg !1511
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1511
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1514
  %18 = or i32 %17, 2068, !dbg !1514
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1514
  br label %49, !dbg !1515

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1516
  %21 = and i32 %20, -29, !dbg !1516
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1516
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1519
  %23 = or i32 %22, 2068, !dbg !1519
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1519
  br label %49, !dbg !1520

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1521
  %26 = and i32 %25, -29, !dbg !1521
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1521
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1524
  %28 = or i32 %27, 2068, !dbg !1524
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1524
  br label %49, !dbg !1525

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1526
  %31 = and i32 %30, -29, !dbg !1526
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1526
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1529
  %33 = or i32 %32, 2068, !dbg !1529
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1529
  br label %49, !dbg !1530

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1531
  %36 = and i32 %35, -29, !dbg !1531
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1531
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1534
  %38 = or i32 %37, 2068, !dbg !1534
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1534
  br label %49, !dbg !1535

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1536
  br i1 %40, label %41, label %46, !dbg !1538

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1539
  %43 = and i32 %42, -29, !dbg !1539
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1539
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1541
  %45 = or i32 %44, 2068, !dbg !1541
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1541
  br label %49, !dbg !1542

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1543
  %48 = shl nuw i32 1, %47, !dbg !1543
  store volatile i32 %48, i32* inttoptr (i32 -2097106876 to i32*), align 4, !dbg !1543
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1497
  ret i32 %50, !dbg !1545
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_SetDriving(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1546 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1548, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i8 %1, metadata !1549, metadata !DIExpression()), !dbg !1552
  %3 = lshr i32 %0, 4, !dbg !1553
  call void @llvm.dbg.value(metadata i32 %3, metadata !1550, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1552
  %4 = trunc i32 %0 to i16, !dbg !1554
  %5 = and i16 %4, 15, !dbg !1554
  call void @llvm.dbg.value(metadata i16 %4, metadata !1551, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1552
  %6 = trunc i32 %3 to i16, !dbg !1555
  switch i16 %6, label %131 [
    i16 0, label %7
    i16 1, label %20
    i16 2, label %92
    i16 3, label %118
  ], !dbg !1555

7:                                                ; preds = %2
  %8 = shl nuw nsw i16 %5, 1, !dbg !1556
  %9 = zext i16 %8 to i32, !dbg !1556
  %10 = shl nuw i32 3, %9, !dbg !1558
  %11 = xor i32 %10, -1, !dbg !1559
  %12 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1560
  %13 = and i32 %12, %11, !dbg !1560
  store volatile i32 %13, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1560
  %14 = lshr i8 %1, 2, !dbg !1561
  %15 = zext i8 %14 to i32, !dbg !1561
  %16 = add nsw i32 %15, -1, !dbg !1562
  %17 = shl i32 %16, %9, !dbg !1563
  %18 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1564
  %19 = or i32 %18, %17, !dbg !1564
  store volatile i32 %19, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1564
  br label %131, !dbg !1565

20:                                               ; preds = %2
  %21 = icmp ult i16 %5, 11, !dbg !1566
  br i1 %21, label %22, label %35, !dbg !1568

22:                                               ; preds = %20
  %23 = shl nuw nsw i16 %5, 1, !dbg !1569
  %24 = zext i16 %23 to i32, !dbg !1569
  %25 = shl nuw nsw i32 3, %24, !dbg !1571
  %26 = xor i32 %25, -1, !dbg !1572
  %27 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1573
  %28 = and i32 %27, %26, !dbg !1573
  store volatile i32 %28, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1573
  %29 = lshr i8 %1, 2, !dbg !1574
  %30 = zext i8 %29 to i32, !dbg !1574
  %31 = add nsw i32 %30, -1, !dbg !1575
  %32 = shl nsw i32 %31, %24, !dbg !1576
  %33 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1577
  %34 = or i32 %33, %32, !dbg !1577
  store volatile i32 %34, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1577
  br label %131, !dbg !1578

35:                                               ; preds = %20
  %36 = trunc i32 %0 to i4, !dbg !1579
  switch i4 %36, label %81 [
    i4 -5, label %37
    i4 -4, label %48
    i4 -3, label %59
    i4 -2, label %70
  ], !dbg !1579

37:                                               ; preds = %35
  %38 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1580
  %39 = and i32 %38, -449, !dbg !1580
  store volatile i32 %39, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1580
  %40 = lshr i8 %1, 1, !dbg !1583
  %41 = zext i8 %40 to i32, !dbg !1583
  %42 = shl nuw nsw i32 %41, 6, !dbg !1584
  %43 = add nsw i32 %42, -64, !dbg !1584
  %44 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1585
  %45 = or i32 %44, %43, !dbg !1585
  store volatile i32 %45, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1585
  %46 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1586
  %47 = or i32 %46, 2048, !dbg !1586
  store volatile i32 %47, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1586
  br label %131, !dbg !1587

48:                                               ; preds = %35
  %49 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1588
  %50 = and i32 %49, -449, !dbg !1588
  store volatile i32 %50, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1588
  %51 = lshr i8 %1, 1, !dbg !1591
  %52 = zext i8 %51 to i32, !dbg !1591
  %53 = shl nuw nsw i32 %52, 6, !dbg !1592
  %54 = add nsw i32 %53, -64, !dbg !1592
  %55 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1593
  %56 = or i32 %55, %54, !dbg !1593
  store volatile i32 %56, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1593
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1594
  %58 = or i32 %57, 2048, !dbg !1594
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1594
  br label %131, !dbg !1595

59:                                               ; preds = %35
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1596
  %61 = and i32 %60, -449, !dbg !1596
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1596
  %62 = lshr i8 %1, 1, !dbg !1599
  %63 = zext i8 %62 to i32, !dbg !1599
  %64 = shl nuw nsw i32 %63, 6, !dbg !1600
  %65 = add nsw i32 %64, -64, !dbg !1600
  %66 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1601
  %67 = or i32 %66, %65, !dbg !1601
  store volatile i32 %67, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1601
  %68 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1602
  %69 = or i32 %68, 2048, !dbg !1602
  store volatile i32 %69, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1602
  br label %131, !dbg !1603

70:                                               ; preds = %35
  %71 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1604
  %72 = and i32 %71, -449, !dbg !1604
  store volatile i32 %72, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1604
  %73 = lshr i8 %1, 1, !dbg !1607
  %74 = zext i8 %73 to i32, !dbg !1607
  %75 = shl nuw nsw i32 %74, 6, !dbg !1608
  %76 = add nsw i32 %75, -64, !dbg !1608
  %77 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1609
  %78 = or i32 %77, %76, !dbg !1609
  store volatile i32 %78, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1609
  %79 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1610
  %80 = or i32 %79, 2048, !dbg !1610
  store volatile i32 %80, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1610
  br label %131, !dbg !1611

81:                                               ; preds = %35
  %82 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1612
  %83 = and i32 %82, -449, !dbg !1612
  store volatile i32 %83, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1612
  %84 = lshr i8 %1, 1, !dbg !1615
  %85 = zext i8 %84 to i32, !dbg !1615
  %86 = shl nuw nsw i32 %85, 6, !dbg !1616
  %87 = add nsw i32 %86, -64, !dbg !1616
  %88 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1617
  %89 = or i32 %88, %87, !dbg !1617
  store volatile i32 %89, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1617
  %90 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1618
  %91 = or i32 %90, 2048, !dbg !1618
  store volatile i32 %91, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1618
  br label %131, !dbg !1619

92:                                               ; preds = %2
  %93 = icmp eq i16 %5, 0, !dbg !1620
  br i1 %93, label %94, label %105, !dbg !1622

94:                                               ; preds = %92
  %95 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1623
  %96 = and i32 %95, -449, !dbg !1623
  store volatile i32 %96, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1623
  %97 = lshr i8 %1, 1, !dbg !1625
  %98 = zext i8 %97 to i32, !dbg !1625
  %99 = shl nuw nsw i32 %98, 6, !dbg !1626
  %100 = add nsw i32 %99, -64, !dbg !1626
  %101 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1627
  %102 = or i32 %101, %100, !dbg !1627
  store volatile i32 %102, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1627
  %103 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1628
  %104 = or i32 %103, 2048, !dbg !1628
  store volatile i32 %104, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1628
  br label %131, !dbg !1629

105:                                              ; preds = %92
  %106 = shl nuw nsw i16 %5, 1, !dbg !1630
  %107 = zext i16 %106 to i32, !dbg !1630
  %108 = shl nuw i32 3, %107, !dbg !1632
  %109 = xor i32 %108, -1, !dbg !1633
  %110 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1634
  %111 = and i32 %110, %109, !dbg !1634
  store volatile i32 %111, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1634
  %112 = lshr i8 %1, 2, !dbg !1635
  %113 = zext i8 %112 to i32, !dbg !1635
  %114 = add nsw i32 %113, -1, !dbg !1636
  %115 = shl i32 %114, %107, !dbg !1637
  %116 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1638
  %117 = or i32 %116, %115, !dbg !1638
  store volatile i32 %117, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1638
  br label %131

118:                                              ; preds = %2
  %119 = shl nuw nsw i16 %5, 1, !dbg !1639
  %120 = zext i16 %119 to i32, !dbg !1639
  %121 = shl nuw i32 3, %120, !dbg !1640
  %122 = xor i32 %121, -1, !dbg !1641
  %123 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1642
  %124 = and i32 %123, %122, !dbg !1642
  store volatile i32 %124, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1642
  %125 = lshr i8 %1, 2, !dbg !1643
  %126 = zext i8 %125 to i32, !dbg !1643
  %127 = add nsw i32 %126, -1, !dbg !1644
  %128 = shl i32 %127, %120, !dbg !1645
  %129 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1646
  %130 = or i32 %129, %128, !dbg !1646
  store volatile i32 %130, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1646
  br label %131, !dbg !1647

131:                                              ; preds = %7, %118, %37, %59, %81, %70, %48, %22, %105, %94, %2
  %132 = phi i32 [ -1, %2 ], [ 0, %94 ], [ 0, %105 ], [ 0, %22 ], [ 0, %48 ], [ 0, %70 ], [ 0, %81 ], [ 0, %59 ], [ 0, %37 ], [ 0, %118 ], [ 0, %7 ], !dbg !1552
  ret i32 %132, !dbg !1648
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @halGPIO_GetDriving(i32 noundef %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #4 !dbg !1649 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1654, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %1, metadata !1655, metadata !DIExpression()), !dbg !1659
  %3 = lshr i32 %0, 4, !dbg !1660
  call void @llvm.dbg.value(metadata i32 %3, metadata !1656, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1659
  %4 = trunc i32 %0 to i16, !dbg !1661
  %5 = and i16 %4, 15, !dbg !1661
  call void @llvm.dbg.value(metadata i16 %4, metadata !1657, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1659
  %6 = trunc i32 %3 to i16, !dbg !1662
  switch i16 %6, label %91 [
    i16 0, label %7
    i16 1, label %17
    i16 2, label %61
    i16 3, label %79
  ], !dbg !1662

7:                                                ; preds = %2
  %8 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1663
  call void @llvm.dbg.value(metadata i32 %8, metadata !1658, metadata !DIExpression()), !dbg !1659
  %9 = shl nuw nsw i16 %5, 1, !dbg !1665
  %10 = zext i16 %9 to i32, !dbg !1665
  %11 = shl nuw i32 3, %10, !dbg !1666
  %12 = and i32 %8, %11, !dbg !1667
  call void @llvm.dbg.value(metadata i32 %12, metadata !1658, metadata !DIExpression()), !dbg !1659
  %13 = lshr i32 %12, %10, !dbg !1668
  %14 = trunc i32 %13 to i8, !dbg !1669
  %15 = shl i8 %14, 2, !dbg !1669
  %16 = add i8 %15, 4, !dbg !1669
  br label %89, !dbg !1670

17:                                               ; preds = %2
  %18 = icmp ult i16 %5, 11, !dbg !1671
  br i1 %18, label %19, label %29, !dbg !1673

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1674
  call void @llvm.dbg.value(metadata i32 %20, metadata !1658, metadata !DIExpression()), !dbg !1659
  %21 = shl nuw nsw i16 %5, 1, !dbg !1676
  %22 = zext i16 %21 to i32, !dbg !1676
  %23 = shl nuw nsw i32 3, %22, !dbg !1677
  %24 = and i32 %20, %23, !dbg !1678
  call void @llvm.dbg.value(metadata i32 %24, metadata !1658, metadata !DIExpression()), !dbg !1659
  %25 = lshr i32 %24, %22, !dbg !1679
  %26 = trunc i32 %25 to i8, !dbg !1680
  %27 = shl i8 %26, 2, !dbg !1680
  %28 = add i8 %27, 4, !dbg !1680
  br label %89, !dbg !1681

29:                                               ; preds = %17
  %30 = trunc i32 %0 to i4, !dbg !1682
  switch i4 %30, label %55 [
    i4 -5, label %31
    i4 -4, label %37
    i4 -3, label %43
    i4 -2, label %49
  ], !dbg !1682

31:                                               ; preds = %29
  %32 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1683
  call void @llvm.dbg.value(metadata i32 %32, metadata !1658, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i32 %32, metadata !1658, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1659
  %33 = lshr i32 %32, 5, !dbg !1686
  %34 = trunc i32 %33 to i8, !dbg !1687
  %35 = and i8 %34, 14, !dbg !1687
  %36 = add nuw nsw i8 %35, 2, !dbg !1687
  br label %89, !dbg !1688

37:                                               ; preds = %29
  %38 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1689
  call void @llvm.dbg.value(metadata i32 %38, metadata !1658, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i32 %38, metadata !1658, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1659
  %39 = lshr i32 %38, 5, !dbg !1692
  %40 = trunc i32 %39 to i8, !dbg !1693
  %41 = and i8 %40, 14, !dbg !1693
  %42 = add nuw nsw i8 %41, 2, !dbg !1693
  br label %89, !dbg !1694

43:                                               ; preds = %29
  %44 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1695
  call void @llvm.dbg.value(metadata i32 %44, metadata !1658, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i32 %44, metadata !1658, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1659
  %45 = lshr i32 %44, 5, !dbg !1698
  %46 = trunc i32 %45 to i8, !dbg !1699
  %47 = and i8 %46, 14, !dbg !1699
  %48 = add nuw nsw i8 %47, 2, !dbg !1699
  br label %89, !dbg !1700

49:                                               ; preds = %29
  %50 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1701
  call void @llvm.dbg.value(metadata i32 %50, metadata !1658, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i32 %50, metadata !1658, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1659
  %51 = lshr i32 %50, 5, !dbg !1704
  %52 = trunc i32 %51 to i8, !dbg !1705
  %53 = and i8 %52, 14, !dbg !1705
  %54 = add nuw nsw i8 %53, 2, !dbg !1705
  br label %89, !dbg !1706

55:                                               ; preds = %29
  %56 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1707
  call void @llvm.dbg.value(metadata i32 %56, metadata !1658, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i32 %56, metadata !1658, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1659
  %57 = lshr i32 %56, 5, !dbg !1710
  %58 = trunc i32 %57 to i8, !dbg !1711
  %59 = and i8 %58, 14, !dbg !1711
  %60 = add nuw nsw i8 %59, 2, !dbg !1711
  br label %89, !dbg !1712

61:                                               ; preds = %2
  %62 = icmp eq i16 %5, 0, !dbg !1713
  br i1 %62, label %63, label %69, !dbg !1715

63:                                               ; preds = %61
  %64 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1716
  call void @llvm.dbg.value(metadata i32 %64, metadata !1658, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i32 %64, metadata !1658, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1659
  %65 = lshr i32 %64, 5, !dbg !1718
  %66 = trunc i32 %65 to i8, !dbg !1719
  %67 = and i8 %66, 14, !dbg !1719
  %68 = add nuw nsw i8 %67, 2, !dbg !1719
  br label %89, !dbg !1720

69:                                               ; preds = %61
  %70 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1721
  call void @llvm.dbg.value(metadata i32 %70, metadata !1658, metadata !DIExpression()), !dbg !1659
  %71 = shl nuw nsw i16 %5, 1, !dbg !1723
  %72 = zext i16 %71 to i32, !dbg !1723
  %73 = shl nuw i32 3, %72, !dbg !1724
  %74 = and i32 %70, %73, !dbg !1725
  call void @llvm.dbg.value(metadata i32 %74, metadata !1658, metadata !DIExpression()), !dbg !1659
  %75 = lshr i32 %74, %72, !dbg !1726
  %76 = trunc i32 %75 to i8, !dbg !1727
  %77 = shl i8 %76, 2, !dbg !1727
  %78 = add i8 %77, 4, !dbg !1727
  br label %89

79:                                               ; preds = %2
  %80 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1728
  call void @llvm.dbg.value(metadata i32 %80, metadata !1658, metadata !DIExpression()), !dbg !1659
  %81 = shl nuw nsw i16 %5, 1, !dbg !1729
  %82 = zext i16 %81 to i32, !dbg !1729
  %83 = shl nuw i32 3, %82, !dbg !1730
  %84 = and i32 %80, %83, !dbg !1731
  call void @llvm.dbg.value(metadata i32 %84, metadata !1658, metadata !DIExpression()), !dbg !1659
  %85 = lshr i32 %84, %82, !dbg !1732
  %86 = trunc i32 %85 to i8, !dbg !1733
  %87 = shl i8 %86, 2, !dbg !1733
  %88 = add i8 %87, 4, !dbg !1733
  br label %89, !dbg !1734

89:                                               ; preds = %63, %69, %19, %37, %49, %55, %43, %31, %79, %7
  %90 = phi i8 [ %16, %7 ], [ %88, %79 ], [ %36, %31 ], [ %48, %43 ], [ %60, %55 ], [ %54, %49 ], [ %42, %37 ], [ %28, %19 ], [ %78, %69 ], [ %68, %63 ]
  store i8 %90, i8* %1, align 1, !dbg !1735
  br label %91, !dbg !1736

91:                                               ; preds = %89, %2
  %92 = phi i32 [ -1, %2 ], [ 0, %89 ], !dbg !1659
  ret i32 %92, !dbg !1736
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !1737 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1742, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i32 %1, metadata !1743, metadata !DIExpression()), !dbg !1746
  %3 = lshr i32 %0, 5, !dbg !1747
  call void @llvm.dbg.value(metadata i32 %3, metadata !1744, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1746
  %4 = trunc i32 %0 to i16, !dbg !1748
  %5 = and i16 %4, 31, !dbg !1748
  call void @llvm.dbg.value(metadata i16 %5, metadata !1745, metadata !DIExpression()), !dbg !1746
  switch i32 %1, label %32 [
    i32 1, label %6
    i32 0, label %18
  ], !dbg !1749

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 %3, metadata !1744, metadata !DIExpression()), !dbg !1746
  %7 = trunc i32 %3 to i16, !dbg !1750
  switch i16 %7, label %32 [
    i16 0, label %8
    i16 1, label %13
  ], !dbg !1750

8:                                                ; preds = %6
  %9 = zext i16 %5 to i32, !dbg !1753
  %10 = shl nuw i32 1, %9, !dbg !1755
  %11 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1756
  %12 = or i32 %11, %10, !dbg !1756
  store volatile i32 %12, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1756
  br label %32, !dbg !1757

13:                                               ; preds = %6
  %14 = zext i16 %5 to i32, !dbg !1758
  %15 = shl nuw i32 1, %14, !dbg !1759
  %16 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1760
  %17 = or i32 %16, %15, !dbg !1760
  store volatile i32 %17, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1760
  br label %32, !dbg !1761

18:                                               ; preds = %2
  %19 = trunc i32 %3 to i16, !dbg !1762
  switch i16 %19, label %32 [
    i16 0, label %20
    i16 1, label %26
  ], !dbg !1762

20:                                               ; preds = %18
  %21 = zext i16 %5 to i32, !dbg !1765
  %22 = shl nuw i32 1, %21, !dbg !1767
  %23 = xor i32 %22, -1, !dbg !1768
  %24 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1769
  %25 = and i32 %24, %23, !dbg !1769
  store volatile i32 %25, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1769
  br label %32, !dbg !1770

26:                                               ; preds = %18
  %27 = zext i16 %5 to i32, !dbg !1771
  %28 = shl nuw i32 1, %27, !dbg !1772
  %29 = xor i32 %28, -1, !dbg !1773
  %30 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1774
  %31 = and i32 %30, %29, !dbg !1774
  store volatile i32 %31, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1774
  br label %32, !dbg !1775

32:                                               ; preds = %2, %18, %26, %20, %8, %13, %6
  ret void, !dbg !1776
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !1777 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1783, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.value(metadata i8 %1, metadata !1784, metadata !DIExpression()), !dbg !1786
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
  ], !dbg !1787

3:                                                ; preds = %2
  %4 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1788
  call void @llvm.dbg.value(metadata i32 %4, metadata !1785, metadata !DIExpression()), !dbg !1786
  %5 = and i32 %4, -16, !dbg !1790
  call void @llvm.dbg.value(metadata i32 %5, metadata !1785, metadata !DIExpression()), !dbg !1786
  %6 = zext i8 %1 to i32, !dbg !1791
  %7 = or i32 %5, %6, !dbg !1792
  store volatile i32 %7, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1793
  br label %187, !dbg !1794

8:                                                ; preds = %2
  %9 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1795
  call void @llvm.dbg.value(metadata i32 %9, metadata !1785, metadata !DIExpression()), !dbg !1786
  %10 = and i32 %9, -241, !dbg !1796
  call void @llvm.dbg.value(metadata i32 %10, metadata !1785, metadata !DIExpression()), !dbg !1786
  %11 = zext i8 %1 to i32, !dbg !1797
  %12 = shl nuw nsw i32 %11, 4, !dbg !1798
  %13 = or i32 %10, %12, !dbg !1799
  store volatile i32 %13, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1800
  br label %187, !dbg !1801

14:                                               ; preds = %2
  %15 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1802
  call void @llvm.dbg.value(metadata i32 %15, metadata !1785, metadata !DIExpression()), !dbg !1786
  %16 = and i32 %15, -3841, !dbg !1803
  call void @llvm.dbg.value(metadata i32 %16, metadata !1785, metadata !DIExpression()), !dbg !1786
  %17 = zext i8 %1 to i32, !dbg !1804
  %18 = shl nuw nsw i32 %17, 8, !dbg !1805
  %19 = or i32 %16, %18, !dbg !1806
  store volatile i32 %19, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1807
  br label %187, !dbg !1808

20:                                               ; preds = %2
  %21 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1809
  call void @llvm.dbg.value(metadata i32 %21, metadata !1785, metadata !DIExpression()), !dbg !1786
  %22 = and i32 %21, -61441, !dbg !1810
  call void @llvm.dbg.value(metadata i32 %22, metadata !1785, metadata !DIExpression()), !dbg !1786
  %23 = zext i8 %1 to i32, !dbg !1811
  %24 = shl nuw nsw i32 %23, 12, !dbg !1812
  %25 = or i32 %22, %24, !dbg !1813
  store volatile i32 %25, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1814
  br label %187, !dbg !1815

26:                                               ; preds = %2
  %27 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1816
  call void @llvm.dbg.value(metadata i32 %27, metadata !1785, metadata !DIExpression()), !dbg !1786
  %28 = and i32 %27, -983041, !dbg !1817
  call void @llvm.dbg.value(metadata i32 %28, metadata !1785, metadata !DIExpression()), !dbg !1786
  %29 = zext i8 %1 to i32, !dbg !1818
  %30 = shl nuw nsw i32 %29, 16, !dbg !1819
  %31 = or i32 %28, %30, !dbg !1820
  store volatile i32 %31, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1821
  br label %187, !dbg !1822

32:                                               ; preds = %2
  %33 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1823
  call void @llvm.dbg.value(metadata i32 %33, metadata !1785, metadata !DIExpression()), !dbg !1786
  %34 = and i32 %33, -15728641, !dbg !1824
  call void @llvm.dbg.value(metadata i32 %34, metadata !1785, metadata !DIExpression()), !dbg !1786
  %35 = zext i8 %1 to i32, !dbg !1825
  %36 = shl nuw nsw i32 %35, 20, !dbg !1826
  %37 = or i32 %34, %36, !dbg !1827
  store volatile i32 %37, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1828
  br label %187, !dbg !1829

38:                                               ; preds = %2
  %39 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1830
  call void @llvm.dbg.value(metadata i32 %39, metadata !1785, metadata !DIExpression()), !dbg !1786
  %40 = and i32 %39, -251658241, !dbg !1831
  call void @llvm.dbg.value(metadata i32 %40, metadata !1785, metadata !DIExpression()), !dbg !1786
  %41 = zext i8 %1 to i32, !dbg !1832
  %42 = shl nuw i32 %41, 24, !dbg !1833
  %43 = or i32 %40, %42, !dbg !1834
  store volatile i32 %43, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1835
  br label %187, !dbg !1836

44:                                               ; preds = %2
  %45 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1837
  call void @llvm.dbg.value(metadata i32 %45, metadata !1785, metadata !DIExpression()), !dbg !1786
  %46 = and i32 %45, 268435455, !dbg !1838
  call void @llvm.dbg.value(metadata i32 %46, metadata !1785, metadata !DIExpression()), !dbg !1786
  %47 = zext i8 %1 to i32, !dbg !1839
  %48 = shl i32 %47, 28, !dbg !1840
  %49 = or i32 %46, %48, !dbg !1841
  store volatile i32 %49, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1842
  br label %187, !dbg !1843

50:                                               ; preds = %2
  %51 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1844
  call void @llvm.dbg.value(metadata i32 %51, metadata !1785, metadata !DIExpression()), !dbg !1786
  %52 = and i32 %51, -16, !dbg !1845
  call void @llvm.dbg.value(metadata i32 %52, metadata !1785, metadata !DIExpression()), !dbg !1786
  %53 = zext i8 %1 to i32, !dbg !1846
  %54 = or i32 %52, %53, !dbg !1847
  store volatile i32 %54, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1848
  br label %187, !dbg !1849

55:                                               ; preds = %2
  %56 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1850
  call void @llvm.dbg.value(metadata i32 %56, metadata !1785, metadata !DIExpression()), !dbg !1786
  %57 = and i32 %56, -241, !dbg !1851
  call void @llvm.dbg.value(metadata i32 %57, metadata !1785, metadata !DIExpression()), !dbg !1786
  %58 = zext i8 %1 to i32, !dbg !1852
  %59 = shl nuw nsw i32 %58, 4, !dbg !1853
  %60 = or i32 %57, %59, !dbg !1854
  store volatile i32 %60, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1855
  br label %187, !dbg !1856

61:                                               ; preds = %2
  %62 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1857
  call void @llvm.dbg.value(metadata i32 %62, metadata !1785, metadata !DIExpression()), !dbg !1786
  %63 = and i32 %62, -3841, !dbg !1858
  call void @llvm.dbg.value(metadata i32 %63, metadata !1785, metadata !DIExpression()), !dbg !1786
  %64 = zext i8 %1 to i32, !dbg !1859
  %65 = shl nuw nsw i32 %64, 8, !dbg !1860
  %66 = or i32 %63, %65, !dbg !1861
  store volatile i32 %66, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1862
  br label %187, !dbg !1863

67:                                               ; preds = %2
  %68 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1864
  call void @llvm.dbg.value(metadata i32 %68, metadata !1785, metadata !DIExpression()), !dbg !1786
  %69 = and i32 %68, -61441, !dbg !1865
  call void @llvm.dbg.value(metadata i32 %69, metadata !1785, metadata !DIExpression()), !dbg !1786
  %70 = zext i8 %1 to i32, !dbg !1866
  %71 = shl nuw nsw i32 %70, 12, !dbg !1867
  %72 = or i32 %69, %71, !dbg !1868
  store volatile i32 %72, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1869
  switch i8 %1, label %187 [
    i8 5, label %73
    i8 4, label %73
    i8 2, label %73
  ], !dbg !1870

73:                                               ; preds = %67, %67, %67
  %74 = tail call i32 @halGPIO_ConfDirection(i32 noundef 27, i8 noundef zeroext 0) #13, !dbg !1872
  br label %187, !dbg !1874

75:                                               ; preds = %2
  %76 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1875
  call void @llvm.dbg.value(metadata i32 %76, metadata !1785, metadata !DIExpression()), !dbg !1786
  %77 = and i32 %76, -983041, !dbg !1876
  call void @llvm.dbg.value(metadata i32 %77, metadata !1785, metadata !DIExpression()), !dbg !1786
  %78 = zext i8 %1 to i32, !dbg !1877
  %79 = shl nuw nsw i32 %78, 16, !dbg !1878
  %80 = or i32 %77, %79, !dbg !1879
  store volatile i32 %80, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1880
  %81 = and i8 %1, -2, !dbg !1881
  %82 = icmp eq i8 %81, 4, !dbg !1881
  br i1 %82, label %83, label %187, !dbg !1881

83:                                               ; preds = %75
  %84 = tail call i32 @halGPIO_ConfDirection(i32 noundef 28, i8 noundef zeroext 0) #13, !dbg !1883
  br label %187, !dbg !1885

85:                                               ; preds = %2
  %86 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1886
  call void @llvm.dbg.value(metadata i32 %86, metadata !1785, metadata !DIExpression()), !dbg !1786
  %87 = and i32 %86, -15728641, !dbg !1887
  call void @llvm.dbg.value(metadata i32 %87, metadata !1785, metadata !DIExpression()), !dbg !1786
  %88 = zext i8 %1 to i32, !dbg !1888
  %89 = shl nuw nsw i32 %88, 20, !dbg !1889
  %90 = or i32 %87, %89, !dbg !1890
  store volatile i32 %90, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1891
  %91 = icmp eq i8 %1, 6, !dbg !1892
  br i1 %91, label %92, label %187, !dbg !1894

92:                                               ; preds = %85
  %93 = tail call i32 @halGPIO_ConfDirection(i32 noundef 29, i8 noundef zeroext 0) #13, !dbg !1895
  br label %187, !dbg !1897

94:                                               ; preds = %2
  %95 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1898
  call void @llvm.dbg.value(metadata i32 %95, metadata !1785, metadata !DIExpression()), !dbg !1786
  %96 = and i32 %95, -251658241, !dbg !1899
  call void @llvm.dbg.value(metadata i32 %96, metadata !1785, metadata !DIExpression()), !dbg !1786
  %97 = zext i8 %1 to i32, !dbg !1900
  %98 = shl nuw i32 %97, 24, !dbg !1901
  %99 = or i32 %96, %98, !dbg !1902
  store volatile i32 %99, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1903
  switch i8 %1, label %187 [
    i8 7, label %100
    i8 4, label %100
  ], !dbg !1904

100:                                              ; preds = %94, %94
  %101 = tail call i32 @halGPIO_ConfDirection(i32 noundef 30, i8 noundef zeroext 0) #13, !dbg !1906
  br label %187, !dbg !1908

102:                                              ; preds = %2
  %103 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1909
  call void @llvm.dbg.value(metadata i32 %103, metadata !1785, metadata !DIExpression()), !dbg !1786
  %104 = and i32 %103, 268435455, !dbg !1910
  call void @llvm.dbg.value(metadata i32 %104, metadata !1785, metadata !DIExpression()), !dbg !1786
  %105 = zext i8 %1 to i32, !dbg !1911
  %106 = shl i32 %105, 28, !dbg !1912
  %107 = or i32 %104, %106, !dbg !1913
  store volatile i32 %107, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1914
  %108 = and i8 %1, -3, !dbg !1915
  %109 = icmp eq i8 %108, 4, !dbg !1915
  br i1 %109, label %110, label %187, !dbg !1915

110:                                              ; preds = %102
  %111 = tail call i32 @halGPIO_ConfDirection(i32 noundef 31, i8 noundef zeroext 0) #13, !dbg !1917
  br label %187, !dbg !1919

112:                                              ; preds = %2
  %113 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1920
  call void @llvm.dbg.value(metadata i32 %113, metadata !1785, metadata !DIExpression()), !dbg !1786
  %114 = and i32 %113, -16, !dbg !1921
  call void @llvm.dbg.value(metadata i32 %114, metadata !1785, metadata !DIExpression()), !dbg !1786
  %115 = zext i8 %1 to i32, !dbg !1922
  %116 = or i32 %114, %115, !dbg !1923
  store volatile i32 %116, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1924
  %117 = and i8 %1, -3, !dbg !1925
  %118 = icmp eq i8 %117, 4, !dbg !1925
  br i1 %118, label %119, label %187, !dbg !1925

119:                                              ; preds = %112
  %120 = tail call i32 @halGPIO_ConfDirection(i32 noundef 32, i8 noundef zeroext 0) #13, !dbg !1927
  br label %187, !dbg !1929

121:                                              ; preds = %2
  %122 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1930
  call void @llvm.dbg.value(metadata i32 %122, metadata !1785, metadata !DIExpression()), !dbg !1786
  %123 = and i32 %122, -241, !dbg !1931
  call void @llvm.dbg.value(metadata i32 %123, metadata !1785, metadata !DIExpression()), !dbg !1786
  %124 = zext i8 %1 to i32, !dbg !1932
  %125 = shl nuw nsw i32 %124, 4, !dbg !1933
  %126 = or i32 %123, %125, !dbg !1934
  store volatile i32 %126, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1935
  br label %187, !dbg !1936

127:                                              ; preds = %2
  %128 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1937
  call void @llvm.dbg.value(metadata i32 %128, metadata !1785, metadata !DIExpression()), !dbg !1786
  %129 = and i32 %128, -3841, !dbg !1938
  call void @llvm.dbg.value(metadata i32 %129, metadata !1785, metadata !DIExpression()), !dbg !1786
  %130 = zext i8 %1 to i32, !dbg !1939
  %131 = shl nuw nsw i32 %130, 8, !dbg !1940
  %132 = or i32 %129, %131, !dbg !1941
  store volatile i32 %132, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1942
  br label %187, !dbg !1943

133:                                              ; preds = %2
  %134 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1944
  call void @llvm.dbg.value(metadata i32 %134, metadata !1785, metadata !DIExpression()), !dbg !1786
  %135 = and i32 %134, -61441, !dbg !1945
  call void @llvm.dbg.value(metadata i32 %135, metadata !1785, metadata !DIExpression()), !dbg !1786
  %136 = zext i8 %1 to i32, !dbg !1946
  %137 = shl nuw nsw i32 %136, 12, !dbg !1947
  %138 = or i32 %135, %137, !dbg !1948
  store volatile i32 %138, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1949
  br label %187, !dbg !1950

139:                                              ; preds = %2
  %140 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1951
  call void @llvm.dbg.value(metadata i32 %140, metadata !1785, metadata !DIExpression()), !dbg !1786
  %141 = and i32 %140, -983041, !dbg !1952
  call void @llvm.dbg.value(metadata i32 %141, metadata !1785, metadata !DIExpression()), !dbg !1786
  %142 = zext i8 %1 to i32, !dbg !1953
  %143 = shl nuw nsw i32 %142, 16, !dbg !1954
  %144 = or i32 %141, %143, !dbg !1955
  store volatile i32 %144, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1956
  br label %187, !dbg !1957

145:                                              ; preds = %2
  %146 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1958
  call void @llvm.dbg.value(metadata i32 %146, metadata !1785, metadata !DIExpression()), !dbg !1786
  %147 = and i32 %146, -15728641, !dbg !1959
  call void @llvm.dbg.value(metadata i32 %147, metadata !1785, metadata !DIExpression()), !dbg !1786
  %148 = zext i8 %1 to i32, !dbg !1960
  %149 = shl nuw nsw i32 %148, 20, !dbg !1961
  %150 = or i32 %147, %149, !dbg !1962
  store volatile i32 %150, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1963
  br label %187, !dbg !1964

151:                                              ; preds = %2
  %152 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1965
  call void @llvm.dbg.value(metadata i32 %152, metadata !1785, metadata !DIExpression()), !dbg !1786
  %153 = and i32 %152, -251658241, !dbg !1966
  call void @llvm.dbg.value(metadata i32 %153, metadata !1785, metadata !DIExpression()), !dbg !1786
  %154 = zext i8 %1 to i32, !dbg !1967
  %155 = shl nuw i32 %154, 24, !dbg !1968
  %156 = or i32 %153, %155, !dbg !1969
  store volatile i32 %156, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1970
  br label %187, !dbg !1971

157:                                              ; preds = %2
  %158 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1972
  call void @llvm.dbg.value(metadata i32 %158, metadata !1785, metadata !DIExpression()), !dbg !1786
  %159 = and i32 %158, 268435455, !dbg !1973
  call void @llvm.dbg.value(metadata i32 %159, metadata !1785, metadata !DIExpression()), !dbg !1786
  %160 = zext i8 %1 to i32, !dbg !1974
  %161 = shl i32 %160, 28, !dbg !1975
  %162 = or i32 %159, %161, !dbg !1976
  store volatile i32 %162, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1977
  br label %187, !dbg !1978

163:                                              ; preds = %2
  %164 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1979
  call void @llvm.dbg.value(metadata i32 %164, metadata !1785, metadata !DIExpression()), !dbg !1786
  %165 = and i32 %164, -241, !dbg !1980
  call void @llvm.dbg.value(metadata i32 %165, metadata !1785, metadata !DIExpression()), !dbg !1786
  %166 = zext i8 %1 to i32, !dbg !1981
  %167 = shl nuw nsw i32 %166, 4, !dbg !1982
  %168 = or i32 %165, %167, !dbg !1983
  store volatile i32 %168, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1984
  br label %187, !dbg !1985

169:                                              ; preds = %2
  %170 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1986
  call void @llvm.dbg.value(metadata i32 %170, metadata !1785, metadata !DIExpression()), !dbg !1786
  %171 = and i32 %170, -3841, !dbg !1987
  call void @llvm.dbg.value(metadata i32 %171, metadata !1785, metadata !DIExpression()), !dbg !1786
  %172 = zext i8 %1 to i32, !dbg !1988
  %173 = shl nuw nsw i32 %172, 8, !dbg !1989
  %174 = or i32 %171, %173, !dbg !1990
  store volatile i32 %174, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1991
  br label %187, !dbg !1992

175:                                              ; preds = %2
  %176 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1993
  call void @llvm.dbg.value(metadata i32 %176, metadata !1785, metadata !DIExpression()), !dbg !1786
  %177 = and i32 %176, -61441, !dbg !1994
  call void @llvm.dbg.value(metadata i32 %177, metadata !1785, metadata !DIExpression()), !dbg !1786
  %178 = zext i8 %1 to i32, !dbg !1995
  %179 = shl nuw nsw i32 %178, 12, !dbg !1996
  %180 = or i32 %177, %179, !dbg !1997
  store volatile i32 %180, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1998
  br label %187, !dbg !1999

181:                                              ; preds = %2
  %182 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2000
  call void @llvm.dbg.value(metadata i32 %182, metadata !1785, metadata !DIExpression()), !dbg !1786
  %183 = and i32 %182, -983041, !dbg !2001
  call void @llvm.dbg.value(metadata i32 %183, metadata !1785, metadata !DIExpression()), !dbg !1786
  %184 = zext i8 %1 to i32, !dbg !2002
  %185 = shl nuw nsw i32 %184, 16, !dbg !2003
  %186 = or i32 %183, %185, !dbg !2004
  store volatile i32 %186, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2005
  br label %187, !dbg !2006

187:                                              ; preds = %94, %67, %2, %119, %112, %110, %102, %100, %85, %92, %83, %75, %73, %181, %175, %169, %163, %157, %151, %145, %139, %133, %127, %121, %61, %55, %50, %44, %38, %32, %26, %20, %14, %8, %3
  ret void, !dbg !2007
}

; Function Attrs: noinline nounwind optsize
define dso_local void @NVIC_SetupVectorTable(i32 noundef %0) local_unnamed_addr #0 !dbg !2008 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2012, metadata !DIExpression()), !dbg !2013
  store volatile i32 %0, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !2014
  tail call void asm sideeffect "dsb", ""() #15, !dbg !2015, !srcloc !2016
  tail call void asm sideeffect "isb", ""() #15, !dbg !2017, !srcloc !2018
  ret void, !dbg !2019
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @NVIC_SWInt(i32 noundef %0) local_unnamed_addr #3 !dbg !2020 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2024, metadata !DIExpression()), !dbg !2025
  store volatile i32 %0, i32* inttoptr (i32 -536809728 to i32*), align 256, !dbg !2026
  ret void, !dbg !2027
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @save_and_set_interrupt_mask() local_unnamed_addr #0 section ".ramTEXT" !dbg !2028 {
  %1 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !2033, !srcloc !2040
  call void @llvm.dbg.value(metadata i32 %1, metadata !2037, metadata !DIExpression()) #15, !dbg !2041
  call void @llvm.dbg.value(metadata i32 %1, metadata !2032, metadata !DIExpression()), !dbg !2042
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !2043, !srcloc !2046
  ret i32 %1, !dbg !2047
}

; Function Attrs: noinline nounwind optsize
define dso_local void @restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #0 section ".ramTEXT" !dbg !2048 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2050, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i32 %0, metadata !2052, metadata !DIExpression()) #15, !dbg !2055
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %0) #15, !dbg !2058, !srcloc !2059
  ret void, !dbg !2060
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @pinmux_config(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !2061 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2065, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i32 %1, metadata !2066, metadata !DIExpression()), !dbg !2068
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
  ], !dbg !2069

3:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  call void @llvm.dbg.value(metadata i32 %0, metadata !2067, metadata !DIExpression()), !dbg !2068
  %4 = trunc i32 %1 to i8, !dbg !2070
  tail call void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %4) #13, !dbg !2071
  br label %5, !dbg !2072

5:                                                ; preds = %2, %3
  %6 = phi i32 [ 0, %3 ], [ -1, %2 ], !dbg !2068
  ret i32 %6, !dbg !2073
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @get_current_count() local_unnamed_addr #0 !dbg !2074 {
  %1 = tail call i32 @GPT_return_current_count(i32 noundef 2) #13, !dbg !2075
  ret i32 %1, !dbg !2076
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_time(i32 noundef %0) local_unnamed_addr #0 !dbg !2077 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2079, metadata !DIExpression()), !dbg !2082
  %2 = tail call i32 @get_current_count() #14, !dbg !2083
  %3 = add i32 %2, %0, !dbg !2084
  %4 = xor i32 %3, -1, !dbg !2085
  call void @llvm.dbg.value(metadata i32 %3, metadata !2080, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2082
  %5 = tail call i32 @get_current_count() #14, !dbg !2086
  call void @llvm.dbg.value(metadata i32 %5, metadata !2081, metadata !DIExpression()), !dbg !2082
  %6 = add i32 %5, %4, !dbg !2087
  %7 = icmp slt i32 %6, 0, !dbg !2087
  br i1 %7, label %8, label %12, !dbg !2088

8:                                                ; preds = %1, %8
  %9 = tail call i32 @get_current_count() #14, !dbg !2089
  call void @llvm.dbg.value(metadata i32 %9, metadata !2081, metadata !DIExpression()), !dbg !2082
  %10 = add i32 %9, %4, !dbg !2087
  %11 = icmp slt i32 %10, 0, !dbg !2087
  br i1 %11, label %8, label %12, !dbg !2088, !llvm.loop !2091

12:                                               ; preds = %8, %1
  ret void, !dbg !2093
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_time_for_gpt4(i32 noundef %0) local_unnamed_addr #0 !dbg !2094 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2096, metadata !DIExpression()), !dbg !2099
  %2 = tail call i32 @get_current_gpt4_count() #14, !dbg !2100
  %3 = add i32 %2, %0, !dbg !2101
  %4 = xor i32 %3, -1, !dbg !2102
  call void @llvm.dbg.value(metadata i32 %3, metadata !2097, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2099
  %5 = tail call i32 @get_current_gpt4_count() #14, !dbg !2103
  call void @llvm.dbg.value(metadata i32 %5, metadata !2098, metadata !DIExpression()), !dbg !2099
  %6 = add i32 %5, %4, !dbg !2104
  %7 = icmp slt i32 %6, 0, !dbg !2104
  br i1 %7, label %8, label %12, !dbg !2105

8:                                                ; preds = %1, %8
  %9 = tail call i32 @get_current_gpt4_count() #14, !dbg !2106
  call void @llvm.dbg.value(metadata i32 %9, metadata !2098, metadata !DIExpression()), !dbg !2099
  %10 = add i32 %9, %4, !dbg !2104
  %11 = icmp slt i32 %10, 0, !dbg !2104
  br i1 %11, label %8, label %12, !dbg !2105, !llvm.loop !2108

12:                                               ; preds = %8, %1
  ret void, !dbg !2110
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @get_current_gpt4_count() local_unnamed_addr #0 !dbg !2111 {
  %1 = tail call i32 @GPT_return_current_count(i32 noundef 4) #13, !dbg !2112
  ret i32 %1, !dbg !2113
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_ms(i32 noundef %0) local_unnamed_addr #0 !dbg !2114 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2116, metadata !DIExpression()), !dbg !2118
  %2 = shl i32 %0, 5, !dbg !2119
  call void @llvm.dbg.value(metadata i32 %2, metadata !2117, metadata !DIExpression()), !dbg !2118
  %3 = mul i32 %0, 7, !dbg !2120
  %4 = udiv i32 %3, 10, !dbg !2121
  %5 = add i32 %4, %2, !dbg !2122
  call void @llvm.dbg.value(metadata i32 %5, metadata !2117, metadata !DIExpression()), !dbg !2118
  %6 = mul i32 %0, 6, !dbg !2123
  %7 = udiv i32 %6, 100, !dbg !2124
  %8 = add i32 %5, %7, !dbg !2125
  call void @llvm.dbg.value(metadata i32 %8, metadata !2117, metadata !DIExpression()), !dbg !2118
  %9 = shl i32 %0, 3, !dbg !2126
  %10 = udiv i32 %9, 1000, !dbg !2127
  %11 = add i32 %8, %10, !dbg !2128
  call void @llvm.dbg.value(metadata i32 %11, metadata !2117, metadata !DIExpression()), !dbg !2118
  tail call void @delay_time(i32 noundef %11) #14, !dbg !2129
  ret void, !dbg !2130
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_us(i32 noundef %0) local_unnamed_addr #0 !dbg !2131 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2133, metadata !DIExpression()), !dbg !2136
  %2 = tail call i32 @top_mcu_freq_get() #13, !dbg !2137
  %3 = udiv i32 %2, 1000000, !dbg !2138
  call void @llvm.dbg.value(metadata i32 %3, metadata !2135, metadata !DIExpression()), !dbg !2136
  %4 = mul i32 %3, %0, !dbg !2139
  call void @llvm.dbg.value(metadata i32 %4, metadata !2134, metadata !DIExpression()), !dbg !2136
  tail call void @delay_time_for_gpt4(i32 noundef %4) #14, !dbg !2140
  ret void, !dbg !2141
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvTMR_init(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, void ()* noundef %3) local_unnamed_addr #0 !dbg !2142 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2146, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata i32 %1, metadata !2147, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata i1 %2, metadata !2148, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2150
  call void @llvm.dbg.value(metadata void ()* %3, metadata !2149, metadata !DIExpression()), !dbg !2150
  tail call void @GPT_Stop(i32 noundef %0) #13, !dbg !2151
  %5 = icmp eq i32 %0, 0, !dbg !2152
  br i1 %5, label %6, label %7, !dbg !2154

6:                                                ; preds = %4
  store volatile i32 0, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !2155
  br label %8, !dbg !2157

7:                                                ; preds = %4
  store volatile i32 0, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !2158
  br label %8

8:                                                ; preds = %7, %6
  %9 = phi i32 [ %0, %7 ], [ 0, %6 ]
  tail call void @GPT_init(i32 noundef %9, i32 noundef 1, void ()* noundef %3) #13, !dbg !2160
  tail call void @GPT_ResetTimer(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) #13, !dbg !2161
  ret void, !dbg !2162
}

; Function Attrs: noinline nounwind optsize
define dso_local void @TMR_Start(i32 noundef %0) local_unnamed_addr #0 !dbg !2163 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2165, metadata !DIExpression()), !dbg !2166
  tail call void @GPT_Start(i32 noundef %0) #13, !dbg !2167
  ret void, !dbg !2168
}

; Function Attrs: noinline nounwind optsize
define dso_local void @TMR_Stop(i32 noundef %0) local_unnamed_addr #0 !dbg !2169 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2171, metadata !DIExpression()), !dbg !2172
  tail call void @GPT_Stop(i32 noundef %0) #13, !dbg !2173
  ret void, !dbg !2174
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvGPT2Init() local_unnamed_addr #0 !dbg !2175 {
  tail call void @CM4_GPT2Init() #13, !dbg !2176
  ret void, !dbg !2177
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvGPT4Init() local_unnamed_addr #0 !dbg !2178 {
  tail call void @CM4_GPT4Init() #13, !dbg !2179
  ret void, !dbg !2180
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @clear_TMR_INT_status_bit(i32 noundef %0) local_unnamed_addr #3 !dbg !2181 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2183, metadata !DIExpression()), !dbg !2184
  switch i32 %0, label %5 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !2185

2:                                                ; preds = %1
  br label %3, !dbg !2186

3:                                                ; preds = %1, %2
  %4 = phi i32 [ 2, %2 ], [ 1, %1 ]
  store volatile i32 %4, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !2184
  br label %5, !dbg !2189

5:                                                ; preds = %3, %1
  ret void, !dbg !2189
}

; Function Attrs: noinline nounwind optsize
define dso_local void @top_xtal_init() local_unnamed_addr #0 !dbg !2190 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2192, metadata !DIExpression()), !dbg !2194
  %1 = load volatile i32, i32* inttoptr (i32 -2097118784 to i32*), align 64, !dbg !2195
  call void @llvm.dbg.value(metadata i32 %1, metadata !2193, metadata !DIExpression()), !dbg !2194
  %2 = lshr i32 %1, 13, !dbg !2196
  %3 = and i32 %2, 7, !dbg !2197
  call void @llvm.dbg.value(metadata i32 %3, metadata !2193, metadata !DIExpression()), !dbg !2194
  %4 = load volatile i32, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2198
  call void @llvm.dbg.value(metadata i32 %4, metadata !2192, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i32 %4, metadata !2192, metadata !DIExpression(DW_OP_constu, 18446744073709549568, DW_OP_and, DW_OP_stack_value)), !dbg !2194
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init, i32 0, i32 %3, !dbg !2199
  %6 = load i32, i32* %5, align 4, !dbg !2199
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init.1, i32 0, i32 %3, !dbg !2199
  %8 = load i32, i32* %7, align 4, !dbg !2199
  %9 = and i32 %4, -2048, !dbg !2200
  call void @llvm.dbg.value(metadata i32 %9, metadata !2192, metadata !DIExpression()), !dbg !2194
  store i32 %6, i32* @gXtalFreq, align 4, !dbg !2201
  %10 = or i32 %9, %8, !dbg !2201
  call void @llvm.dbg.value(metadata i32 %10, metadata !2192, metadata !DIExpression()), !dbg !2194
  store volatile i32 %10, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2203
  %11 = load i32, i32* @gXtalFreq, align 4, !dbg !2204
  store i32 %11, i32* @gCpuFrequency, align 4, !dbg !2205
  tail call void @SystemCoreClockUpdate() #13, !dbg !2206
  %12 = load i32, i32* @SystemCoreClock, align 4, !dbg !2207
  %13 = udiv i32 %12, 1000, !dbg !2208
  %14 = tail call i32 @SysTick_Set(i32 noundef %13) #13, !dbg !2209
  ret void, !dbg !2210
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_xtal_freq_get() local_unnamed_addr #5 !dbg !2211 {
  %1 = load i32, i32* @gXtalFreq, align 4, !dbg !2212
  ret i32 %1, !dbg !2213
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_mcu_freq_get() local_unnamed_addr #5 !dbg !2214 {
  %1 = load i32, i32* @gCpuFrequency, align 4, !dbg !2215
  ret i32 %1, !dbg !2216
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON() local_unnamed_addr #6 !dbg !2217 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2221
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2221
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2219, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2220, metadata !DIExpression()), !dbg !2223
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2224
  store volatile i32 %3, i32* %1, align 4, !dbg !2225
  %4 = load volatile i32, i32* %1, align 4, !dbg !2226
  %5 = lshr i32 %4, 28, !dbg !2227
  %6 = and i32 %5, 3, !dbg !2228
  store volatile i32 %6, i32* %1, align 4, !dbg !2229
  %7 = load volatile i32, i32* %1, align 4, !dbg !2230
  %8 = icmp eq i32 %7, 0, !dbg !2232
  br i1 %8, label %9, label %22, !dbg !2233

9:                                                ; preds = %0
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2234
  store volatile i32 %10, i32* %1, align 4, !dbg !2236
  %11 = load volatile i32, i32* %1, align 4, !dbg !2237
  %12 = and i32 %11, -16777217, !dbg !2238
  store volatile i32 %12, i32* %1, align 4, !dbg !2239
  %13 = load volatile i32, i32* %1, align 4, !dbg !2240
  %14 = or i32 %13, 536870912, !dbg !2241
  store volatile i32 %14, i32* %1, align 4, !dbg !2242
  %15 = load volatile i32, i32* %1, align 4, !dbg !2243
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %15) #14, !dbg !2244
  br label %16, !dbg !2245

16:                                               ; preds = %16, %9
  %17 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2246
  store volatile i32 %17, i32* %1, align 4, !dbg !2248
  %18 = load volatile i32, i32* %1, align 4, !dbg !2249
  %19 = and i32 %18, 134217728, !dbg !2250
  store volatile i32 %19, i32* %1, align 4, !dbg !2251
  %20 = load volatile i32, i32* %1, align 4, !dbg !2252
  %21 = icmp eq i32 %20, 0, !dbg !2253
  br i1 %21, label %16, label %22, !dbg !2254, !llvm.loop !2255

22:                                               ; preds = %16, %0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2257
  ret void, !dbg !2257
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @cmnReadRegister32(i8* noundef %0) unnamed_addr #4 !dbg !2258 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2265, metadata !DIExpression()), !dbg !2266
  %2 = bitcast i8* %0 to i32*, !dbg !2267
  %3 = load volatile i32, i32* %2, align 4, !dbg !2268
  ret i32 %3, !dbg !2269
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @cmnWriteRegister32(i8* noundef %0, i32 noundef %1) unnamed_addr #3 !dbg !2270 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2274, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i32 %1, metadata !2275, metadata !DIExpression()), !dbg !2276
  %3 = bitcast i8* %0 to i32*, !dbg !2277
  store volatile i32 %1, i32* %3, align 4, !dbg !2278
  ret void, !dbg !2279
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON_PLL2ON(i8 noundef zeroext %0) local_unnamed_addr #6 !dbg !2280 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8 %0, metadata !2284, metadata !DIExpression()), !dbg !2287
  %3 = bitcast i32* %2 to i8*, !dbg !2288
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !2288
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2285, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2286, metadata !DIExpression()), !dbg !2287
  %4 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2290
  store volatile i32 %4, i32* %2, align 4, !dbg !2291
  %5 = load volatile i32, i32* %2, align 4, !dbg !2292
  %6 = lshr i32 %5, 28, !dbg !2293
  %7 = and i32 %6, 3, !dbg !2294
  store volatile i32 %7, i32* %2, align 4, !dbg !2295
  %8 = load volatile i32, i32* %2, align 4, !dbg !2296
  %9 = icmp eq i32 %8, 3, !dbg !2298
  br i1 %9, label %38, label %10, !dbg !2299

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2300
  store volatile i32 %11, i32* %2, align 4, !dbg !2302
  %12 = load volatile i32, i32* %2, align 4, !dbg !2303
  %13 = and i32 %12, -262145, !dbg !2304
  store volatile i32 %13, i32* %2, align 4, !dbg !2305
  %14 = load volatile i32, i32* %2, align 4, !dbg !2306
  %15 = and i32 %14, -16777217, !dbg !2307
  store volatile i32 %15, i32* %2, align 4, !dbg !2308
  %16 = load volatile i32, i32* %2, align 4, !dbg !2309
  store volatile i32 %16, i32* %2, align 4, !dbg !2310
  %17 = load volatile i32, i32* %2, align 4, !dbg !2311
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %17) #14, !dbg !2312
  %18 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2313
  store volatile i32 %18, i32* %2, align 4, !dbg !2314
  %19 = load volatile i32, i32* %2, align 4, !dbg !2315
  %20 = and i32 %19, -805306369, !dbg !2316
  store volatile i32 %20, i32* %2, align 4, !dbg !2317
  %21 = load volatile i32, i32* %2, align 4, !dbg !2318
  %22 = and i32 %21, -16777217, !dbg !2319
  store volatile i32 %22, i32* %2, align 4, !dbg !2320
  %23 = load volatile i32, i32* %2, align 4, !dbg !2321
  %24 = or i32 %23, 805306368, !dbg !2322
  store volatile i32 %24, i32* %2, align 4, !dbg !2323
  %25 = load volatile i32, i32* %2, align 4, !dbg !2324
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %25) #14, !dbg !2325
  br label %26, !dbg !2326

26:                                               ; preds = %26, %10
  %27 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2327
  store volatile i32 %27, i32* %2, align 4, !dbg !2329
  %28 = load volatile i32, i32* %2, align 4, !dbg !2330
  %29 = and i32 %28, 67108864, !dbg !2331
  store volatile i32 %29, i32* %2, align 4, !dbg !2332
  %30 = load volatile i32, i32* %2, align 4, !dbg !2333
  %31 = icmp eq i32 %30, 0, !dbg !2334
  br i1 %31, label %26, label %32, !dbg !2335, !llvm.loop !2336

32:                                               ; preds = %26
  %33 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2338
  store volatile i32 %33, i32* %2, align 4, !dbg !2339
  %34 = load volatile i32, i32* %2, align 4, !dbg !2340
  %35 = and i32 %34, -262145, !dbg !2341
  store volatile i32 %35, i32* %2, align 4, !dbg !2342
  %36 = load volatile i32, i32* %2, align 4, !dbg !2343
  %37 = and i32 %36, -16777217, !dbg !2344
  store volatile i32 %37, i32* %2, align 4, !dbg !2345
  br label %38, !dbg !2346

38:                                               ; preds = %32, %1
  %39 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2347
  store volatile i32 %39, i32* %2, align 4, !dbg !2348
  %40 = icmp eq i8 %0, 0, !dbg !2349
  %41 = load volatile i32, i32* %2, align 4, !dbg !2351
  br i1 %40, label %44, label %42, !dbg !2352

42:                                               ; preds = %38
  %43 = or i32 %41, 262144, !dbg !2353
  store volatile i32 %43, i32* %2, align 4, !dbg !2355
  br label %45, !dbg !2356

44:                                               ; preds = %38
  store volatile i32 %41, i32* %2, align 4, !dbg !2357
  br label %45

45:                                               ; preds = %44, %42
  %46 = load volatile i32, i32* %2, align 4, !dbg !2359
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %46) #14, !dbg !2360
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !2361
  ret void, !dbg !2361
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1OFF_PLL2OFF() local_unnamed_addr #6 !dbg !2362 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2366
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2366
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2364, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2365, metadata !DIExpression()), !dbg !2368
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2369
  store volatile i32 %3, i32* %1, align 4, !dbg !2370
  %4 = load volatile i32, i32* %1, align 4, !dbg !2371
  %5 = and i32 %4, -805306369, !dbg !2372
  store volatile i32 %5, i32* %1, align 4, !dbg !2373
  %6 = load volatile i32, i32* %1, align 4, !dbg !2374
  %7 = and i32 %6, -16777217, !dbg !2375
  store volatile i32 %7, i32* %1, align 4, !dbg !2376
  %8 = load volatile i32, i32* %1, align 4, !dbg !2377
  store volatile i32 %8, i32* %1, align 4, !dbg !2378
  %9 = load volatile i32, i32* %1, align 4, !dbg !2379
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %9) #14, !dbg !2380
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2381
  store volatile i32 %10, i32* %1, align 4, !dbg !2382
  %11 = load volatile i32, i32* %1, align 4, !dbg !2383
  %12 = and i32 %11, -262145, !dbg !2384
  store volatile i32 %12, i32* %1, align 4, !dbg !2385
  %13 = load volatile i32, i32* %1, align 4, !dbg !2386
  %14 = and i32 %13, -16777217, !dbg !2387
  store volatile i32 %14, i32* %1, align 4, !dbg !2388
  %15 = load volatile i32, i32* %1, align 4, !dbg !2389
  store volatile i32 %15, i32* %1, align 4, !dbg !2390
  %16 = load volatile i32, i32* %1, align 4, !dbg !2391
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %16) #14, !dbg !2392
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2393
  ret void, !dbg !2393
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureToXtal() local_unnamed_addr #0 !dbg !2394 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2398
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2398
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2396, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2397, metadata !DIExpression()), !dbg !2400
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2401
  store volatile i32 %3, i32* %1, align 4, !dbg !2402
  %4 = load volatile i32, i32* %1, align 4, !dbg !2403
  %5 = and i32 %4, -8, !dbg !2404
  store volatile i32 %5, i32* %1, align 4, !dbg !2405
  %6 = load volatile i32, i32* %1, align 4, !dbg !2406
  store volatile i32 %6, i32* %1, align 4, !dbg !2407
  %7 = load volatile i32, i32* %1, align 4, !dbg !2408
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #14, !dbg !2409
  %8 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2410
  store volatile i32 %8, i32* %1, align 4, !dbg !2411
  %9 = load volatile i32, i32* %1, align 4, !dbg !2412
  %10 = and i32 %9, -49153, !dbg !2413
  store volatile i32 %10, i32* %1, align 4, !dbg !2414
  %11 = load volatile i32, i32* %1, align 4, !dbg !2415
  store volatile i32 %11, i32* %1, align 4, !dbg !2416
  %12 = load volatile i32, i32* %1, align 4, !dbg !2417
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %12) #14, !dbg !2418
  br label %13, !dbg !2419

13:                                               ; preds = %13, %0
  %14 = load volatile i32, i32* %1, align 4, !dbg !2420
  %15 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2421
  %16 = icmp eq i32 %14, %15, !dbg !2422
  br i1 %16, label %17, label %13, !dbg !2419, !llvm.loop !2423

17:                                               ; preds = %13
  %18 = tail call i32 @top_xtal_freq_get() #14, !dbg !2425
  store i32 %18, i32* @gCpuFrequency, align 4, !dbg !2426
  tail call void @SystemCoreClockUpdate() #13, !dbg !2427
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !2428
  %20 = udiv i32 %19, 1000, !dbg !2429
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #13, !dbg !2430
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2431
  ret void, !dbg !2431
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo192M() local_unnamed_addr #0 !dbg !2432 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2436
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2436
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2434, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2435, metadata !DIExpression()), !dbg !2438
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 1) #14, !dbg !2439
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2440
  store volatile i32 %3, i32* %1, align 4, !dbg !2441
  %4 = load volatile i32, i32* %1, align 4, !dbg !2442
  %5 = and i32 %4, -49153, !dbg !2443
  store volatile i32 %5, i32* %1, align 4, !dbg !2444
  %6 = load volatile i32, i32* %1, align 4, !dbg !2445
  %7 = or i32 %6, 16384, !dbg !2446
  store volatile i32 %7, i32* %1, align 4, !dbg !2447
  %8 = load volatile i32, i32* %1, align 4, !dbg !2448
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #14, !dbg !2449
  br label %9, !dbg !2450

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !2451
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2452
  %12 = icmp eq i32 %10, %11, !dbg !2453
  br i1 %12, label %13, label %9, !dbg !2450, !llvm.loop !2454

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2456
  store volatile i32 %14, i32* %1, align 4, !dbg !2457
  %15 = load volatile i32, i32* %1, align 4, !dbg !2458
  %16 = and i32 %15, -1009, !dbg !2459
  store volatile i32 %16, i32* %1, align 4, !dbg !2460
  %17 = load volatile i32, i32* %1, align 4, !dbg !2461
  %18 = or i32 %17, 128, !dbg !2462
  store volatile i32 %18, i32* %1, align 4, !dbg !2463
  %19 = load volatile i32, i32* %1, align 4, !dbg !2464
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #14, !dbg !2465
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2466
  store volatile i32 %20, i32* %1, align 4, !dbg !2467
  %21 = load volatile i32, i32* %1, align 4, !dbg !2468
  %22 = and i32 %21, -8, !dbg !2469
  store volatile i32 %22, i32* %1, align 4, !dbg !2470
  %23 = load volatile i32, i32* %1, align 4, !dbg !2471
  %24 = or i32 %23, 4, !dbg !2472
  store volatile i32 %24, i32* %1, align 4, !dbg !2473
  %25 = load volatile i32, i32* %1, align 4, !dbg !2474
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #14, !dbg !2475
  store i32 192000000, i32* @gCpuFrequency, align 4, !dbg !2476
  tail call void @SystemCoreClockUpdate() #13, !dbg !2477
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !2478
  %27 = udiv i32 %26, 1000, !dbg !2479
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #13, !dbg !2480
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2481
  ret void, !dbg !2481
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo160M() local_unnamed_addr #0 !dbg !2482 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2486
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2486
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2484, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2485, metadata !DIExpression()), !dbg !2488
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 0) #14, !dbg !2489
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2490
  store volatile i32 %3, i32* %1, align 4, !dbg !2491
  %4 = load volatile i32, i32* %1, align 4, !dbg !2492
  %5 = and i32 %4, -49153, !dbg !2493
  store volatile i32 %5, i32* %1, align 4, !dbg !2494
  %6 = load volatile i32, i32* %1, align 4, !dbg !2495
  %7 = or i32 %6, 32768, !dbg !2496
  store volatile i32 %7, i32* %1, align 4, !dbg !2497
  %8 = load volatile i32, i32* %1, align 4, !dbg !2498
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #14, !dbg !2499
  br label %9, !dbg !2500

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !2501
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2502
  %12 = icmp eq i32 %10, %11, !dbg !2503
  br i1 %12, label %13, label %9, !dbg !2500, !llvm.loop !2504

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2506
  store volatile i32 %14, i32* %1, align 4, !dbg !2507
  %15 = load volatile i32, i32* %1, align 4, !dbg !2508
  %16 = and i32 %15, -1009, !dbg !2509
  store volatile i32 %16, i32* %1, align 4, !dbg !2510
  %17 = load volatile i32, i32* %1, align 4, !dbg !2511
  %18 = or i32 %17, 32, !dbg !2512
  store volatile i32 %18, i32* %1, align 4, !dbg !2513
  %19 = load volatile i32, i32* %1, align 4, !dbg !2514
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #14, !dbg !2515
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2516
  store volatile i32 %20, i32* %1, align 4, !dbg !2517
  %21 = load volatile i32, i32* %1, align 4, !dbg !2518
  %22 = and i32 %21, -8, !dbg !2519
  store volatile i32 %22, i32* %1, align 4, !dbg !2520
  %23 = load volatile i32, i32* %1, align 4, !dbg !2521
  %24 = or i32 %23, 4, !dbg !2522
  store volatile i32 %24, i32* %1, align 4, !dbg !2523
  %25 = load volatile i32, i32* %1, align 4, !dbg !2524
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #14, !dbg !2525
  store i32 160000000, i32* @gCpuFrequency, align 4, !dbg !2526
  tail call void @SystemCoreClockUpdate() #13, !dbg !2527
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !2528
  %27 = udiv i32 %26, 1000, !dbg !2529
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #13, !dbg !2530
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2531
  ret void, !dbg !2531
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo64M() local_unnamed_addr #0 !dbg !2532 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2536
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2536
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2534, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2535, metadata !DIExpression()), !dbg !2538
  tail call void @cmnPLL1ON() #14, !dbg !2539
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2540
  store volatile i32 %3, i32* %1, align 4, !dbg !2541
  %4 = load volatile i32, i32* %1, align 4, !dbg !2542
  %5 = and i32 %4, -49153, !dbg !2543
  store volatile i32 %5, i32* %1, align 4, !dbg !2544
  %6 = load volatile i32, i32* %1, align 4, !dbg !2545
  store volatile i32 %6, i32* %1, align 4, !dbg !2546
  %7 = load volatile i32, i32* %1, align 4, !dbg !2547
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #14, !dbg !2548
  br label %8, !dbg !2549

8:                                                ; preds = %8, %0
  %9 = load volatile i32, i32* %1, align 4, !dbg !2550
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2551
  %11 = icmp eq i32 %9, %10, !dbg !2552
  br i1 %11, label %12, label %8, !dbg !2549, !llvm.loop !2553

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2555
  store volatile i32 %13, i32* %1, align 4, !dbg !2556
  %14 = load volatile i32, i32* %1, align 4, !dbg !2557
  %15 = and i32 %14, -8, !dbg !2558
  store volatile i32 %15, i32* %1, align 4, !dbg !2559
  %16 = load volatile i32, i32* %1, align 4, !dbg !2560
  %17 = or i32 %16, 2, !dbg !2561
  store volatile i32 %17, i32* %1, align 4, !dbg !2562
  %18 = load volatile i32, i32* %1, align 4, !dbg !2563
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %18) #14, !dbg !2564
  store i32 64000000, i32* @gCpuFrequency, align 4, !dbg !2565
  tail call void @SystemCoreClockUpdate() #13, !dbg !2566
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !2567
  %20 = udiv i32 %19, 1000, !dbg !2568
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #13, !dbg !2569
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2570
  ret void, !dbg !2570
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnSerialFlashClkConfToXtal() local_unnamed_addr #6 section ".ramTEXT" !dbg !2571 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2575
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2575
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2573, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118796 to i32*), metadata !2574, metadata !DIExpression()), !dbg !2577
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*)) #14, !dbg !2578
  store volatile i32 %3, i32* %1, align 4, !dbg !2579
  %4 = load volatile i32, i32* %1, align 4, !dbg !2580
  %5 = and i32 %4, -24577, !dbg !2581
  store volatile i32 %5, i32* %1, align 4, !dbg !2582
  %6 = load volatile i32, i32* %1, align 4, !dbg !2583
  store volatile i32 %6, i32* %1, align 4, !dbg !2584
  %7 = load volatile i32, i32* %1, align 4, !dbg !2585
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*), i32 noundef %7) #14, !dbg !2586
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2587
  ret void, !dbg !2587
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc() local_unnamed_addr #4 !dbg !2588 {
  %1 = tail call i32 @getc_nowait() #14, !dbg !2593
  call void @llvm.dbg.value(metadata i32 %1, metadata !2592, metadata !DIExpression()), !dbg !2594
  ret i32 %1, !dbg !2595
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc_nowait() local_unnamed_addr #4 !dbg !2596 {
  %1 = load volatile i32, i32* inttoptr (i32 -2096955372 to i32*), align 4, !dbg !2599
  %2 = and i32 %1, 1, !dbg !2601
  %3 = icmp eq i32 %2, 0, !dbg !2601
  br i1 %3, label %7, label %4, !dbg !2602

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 -2096955392 to i32*), align 65536, !dbg !2603
  %6 = and i32 %5, 255, !dbg !2605
  call void @llvm.dbg.value(metadata i32 %5, metadata !2598, metadata !DIExpression()), !dbg !2606
  br label %7, !dbg !2607

7:                                                ; preds = %0, %4
  %8 = phi i32 [ %6, %4 ], [ -1, %0 ], !dbg !2608
  ret i32 %8, !dbg !2609
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_output_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !2610 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2615, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata i8 %1, metadata !2616, metadata !DIExpression()), !dbg !2618
  %3 = icmp eq i32 %0, 0, !dbg !2619
  %4 = select i1 %3, i32 -2096955392, i32 -2096889856, !dbg !2619
  call void @llvm.dbg.value(metadata i32 %4, metadata !2617, metadata !DIExpression()), !dbg !2618
  %5 = or i32 %4, 20
  %6 = inttoptr i32 %5 to i32*
  br label %7, !dbg !2620

7:                                                ; preds = %7, %2
  %8 = load volatile i32, i32* %6, align 4, !dbg !2621
  %9 = and i32 %8, 32, !dbg !2622
  %10 = icmp eq i32 %9, 0, !dbg !2623
  br i1 %10, label %7, label %11, !dbg !2620, !llvm.loop !2624

11:                                               ; preds = %7
  %12 = zext i8 %1 to i32, !dbg !2626
  %13 = inttoptr i32 %4 to i32*, !dbg !2627
  store volatile i32 %12, i32* %13, align 65536, !dbg !2628
  ret void, !dbg !2629
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @uart_input_char(i32 noundef %0) local_unnamed_addr #3 !dbg !2630 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2634, metadata !DIExpression()), !dbg !2637
  %2 = icmp eq i32 %0, 0, !dbg !2638
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2638
  call void @llvm.dbg.value(metadata i32 %3, metadata !2635, metadata !DIExpression()), !dbg !2637
  %4 = or i32 %3, 20
  %5 = inttoptr i32 %4 to i32*
  br label %6, !dbg !2639

6:                                                ; preds = %6, %1
  %7 = load volatile i32, i32* %5, align 4, !dbg !2640
  %8 = and i32 %7, 1, !dbg !2641
  %9 = icmp eq i32 %8, 0, !dbg !2642
  br i1 %9, label %6, label %10, !dbg !2639, !llvm.loop !2643

10:                                               ; preds = %6
  %11 = inttoptr i32 %3 to i32*, !dbg !2645
  %12 = load volatile i32, i32* %11, align 65536, !dbg !2645
  %13 = trunc i32 %12 to i8, !dbg !2645
  call void @llvm.dbg.value(metadata i8 %13, metadata !2636, metadata !DIExpression()), !dbg !2637
  ret i8 %13, !dbg !2646
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @uart_input_char_unblocking(i32 noundef %0) local_unnamed_addr #4 !dbg !2647 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2651, metadata !DIExpression()), !dbg !2654
  %2 = icmp eq i32 %0, 0, !dbg !2655
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2655
  call void @llvm.dbg.value(metadata i32 %3, metadata !2652, metadata !DIExpression()), !dbg !2654
  %4 = or i32 %3, 20, !dbg !2656
  %5 = inttoptr i32 %4 to i32*, !dbg !2656
  %6 = load volatile i32, i32* %5, align 4, !dbg !2656
  %7 = and i32 %6, 1, !dbg !2658
  %8 = icmp eq i32 %7, 0, !dbg !2658
  br i1 %8, label %13, label %9, !dbg !2659

9:                                                ; preds = %1
  %10 = inttoptr i32 %3 to i32*, !dbg !2660
  %11 = load volatile i32, i32* %10, align 65536, !dbg !2660
  %12 = and i32 %11, 255, !dbg !2662
  call void @llvm.dbg.value(metadata i32 %11, metadata !2653, metadata !DIExpression()), !dbg !2654
  br label %13, !dbg !2663

13:                                               ; preds = %1, %9
  %14 = phi i32 [ %12, %9 ], [ -1, %1 ], !dbg !2664
  ret i32 %14, !dbg !2665
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_HWInit(i32 noundef %0) local_unnamed_addr #0 !dbg !2666 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2670, metadata !DIExpression()), !dbg !2671
  tail call void @halUART_SetFormat(i32 noundef %0, i32 noundef 115200, i16 noundef zeroext 3, i16 noundef zeroext 0, i16 noundef zeroext 0) #14, !dbg !2672
  switch i32 %0, label %7 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !2673

2:                                                ; preds = %1
  br label %3, !dbg !2674

3:                                                ; preds = %1, %2
  %4 = phi i32* [ inttoptr (i32 -2096889780 to i32*), %2 ], [ inttoptr (i32 -2096955316 to i32*), %1 ]
  %5 = load volatile i32, i32* %4, align 4, !dbg !2678
  %6 = or i32 %5, 1, !dbg !2678
  store volatile i32 %6, i32* %4, align 4, !dbg !2678
  br label %7, !dbg !2679

7:                                                ; preds = %3, %1
  ret void, !dbg !2679
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_SetFormat(i32 noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #0 !dbg !2680 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2686, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i32 %1, metadata !2687, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i16 %2, metadata !2688, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i16 %3, metadata !2689, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i16 %4, metadata !2690, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i32 -2096955392, metadata !2692, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, metadata !2699, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, metadata !2701, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i32 0, metadata !2702, metadata !DIExpression()), !dbg !2703
  %6 = tail call i32 @top_xtal_freq_get() #13, !dbg !2706
  store i32 %6, i32* @gUartClkFreq, align 4, !dbg !2707
  %7 = icmp eq i32 %0, 1, !dbg !2708
  %8 = select i1 %7, i32 -2096889856, i32 -2096955392, !dbg !2708
  call void @llvm.dbg.value(metadata i32 %8, metadata !2692, metadata !DIExpression()), !dbg !2703
  %9 = or i32 %8, 36, !dbg !2709
  %10 = inttoptr i32 %9 to i32*, !dbg !2709
  store volatile i32 3, i32* %10, align 4, !dbg !2710
  %11 = or i32 %8, 12, !dbg !2711
  %12 = inttoptr i32 %11 to i32*, !dbg !2711
  %13 = load volatile i32, i32* %12, align 4, !dbg !2711
  call void @llvm.dbg.value(metadata i32 %13, metadata !2694, metadata !DIExpression()), !dbg !2703
  %14 = or i32 %13, 128, !dbg !2712
  store volatile i32 %14, i32* %12, align 4, !dbg !2713
  %15 = load i32, i32* @gUartClkFreq, align 4, !dbg !2714
  %16 = udiv i32 %15, %1, !dbg !2715
  call void @llvm.dbg.value(metadata i32 %16, metadata !2693, metadata !DIExpression()), !dbg !2703
  %17 = lshr i32 %16, 8, !dbg !2716
  %18 = add nuw nsw i32 %17, 1, !dbg !2717
  call void @llvm.dbg.value(metadata i32 %18, metadata !2695, metadata !DIExpression()), !dbg !2703
  %19 = udiv i32 %16, %18, !dbg !2718
  %20 = add i32 %19, -1, !dbg !2720
  call void @llvm.dbg.value(metadata i32 %20, metadata !2696, metadata !DIExpression()), !dbg !2703
  %21 = icmp eq i32 %20, 3, !dbg !2721
  %22 = lshr i32 %20, 1, !dbg !2723
  %23 = add nsw i32 %22, -1, !dbg !2723
  %24 = select i1 %21, i32 0, i32 %23, !dbg !2723
  call void @llvm.dbg.value(metadata i32 %24, metadata !2697, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i32 undef, metadata !2702, metadata !DIExpression()), !dbg !2703
  %25 = mul i32 %15, 10, !dbg !2724
  %26 = udiv i32 %25, %1, !dbg !2725
  %27 = udiv i32 %26, %16, !dbg !2726
  %28 = mul i32 %19, -10, !dbg !2727
  %29 = add i32 %27, %28, !dbg !2728
  %30 = urem i32 %29, 10, !dbg !2729
  call void @llvm.dbg.value(metadata i32 %30, metadata !2698, metadata !DIExpression()), !dbg !2703
  %31 = and i32 %18, 255, !dbg !2730
  %32 = inttoptr i32 %8 to i32*, !dbg !2731
  store volatile i32 %31, i32* %32, align 65536, !dbg !2732
  %33 = lshr i32 %18, 8, !dbg !2733
  %34 = and i32 %33, 255, !dbg !2734
  %35 = or i32 %8, 4, !dbg !2735
  %36 = inttoptr i32 %35 to i32*, !dbg !2735
  store volatile i32 %34, i32* %36, align 4, !dbg !2736
  %37 = or i32 %8, 40, !dbg !2737
  %38 = inttoptr i32 %37 to i32*, !dbg !2737
  store volatile i32 %20, i32* %38, align 8, !dbg !2738
  %39 = or i32 %8, 44, !dbg !2739
  %40 = inttoptr i32 %39 to i32*, !dbg !2739
  store volatile i32 %24, i32* %40, align 4, !dbg !2740
  %41 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, i32 0, i32 %30, !dbg !2741
  %42 = load i16, i16* %41, align 2, !dbg !2741
  %43 = zext i16 %42 to i32, !dbg !2741
  %44 = or i32 %8, 88, !dbg !2742
  %45 = inttoptr i32 %44 to i32*, !dbg !2742
  store volatile i32 %43, i32* %45, align 8, !dbg !2743
  %46 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, i32 0, i32 %30, !dbg !2744
  %47 = load i16, i16* %46, align 2, !dbg !2744
  %48 = zext i16 %47 to i32, !dbg !2744
  %49 = or i32 %8, 84, !dbg !2745
  %50 = inttoptr i32 %49 to i32*, !dbg !2745
  store volatile i32 %48, i32* %50, align 4, !dbg !2746
  store volatile i32 %13, i32* %12, align 4, !dbg !2747
  %51 = or i32 %8, 8, !dbg !2748
  %52 = inttoptr i32 %51 to i32*, !dbg !2748
  store volatile i32 71, i32* %52, align 8, !dbg !2749
  %53 = inttoptr i32 %11 to i16*, !dbg !2750
  %54 = load volatile i16, i16* %53, align 4, !dbg !2750
  call void @llvm.dbg.value(metadata i16 %54, metadata !2691, metadata !DIExpression()), !dbg !2703
  %55 = and i16 %54, -64, !dbg !2751
  call void @llvm.dbg.value(metadata i16 %54, metadata !2691, metadata !DIExpression(DW_OP_constu, 18446744073709551608, DW_OP_and, DW_OP_stack_value)), !dbg !2703
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %2), metadata !2691, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2703
  %56 = and i16 %2, -61, !dbg !2752
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %56), metadata !2691, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2703
  call void @llvm.dbg.value(metadata !DIArgList(i16 %55, i16 %4, i16 %56), metadata !2691, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2703
  %57 = and i16 %4, -57, !dbg !2753
  call void @llvm.dbg.value(metadata i16 undef, metadata !2691, metadata !DIExpression()), !dbg !2703
  %58 = or i16 %56, %3, !dbg !2752
  %59 = or i16 %58, %57, !dbg !2753
  %60 = or i16 %59, %55, !dbg !2754
  call void @llvm.dbg.value(metadata i16 %60, metadata !2691, metadata !DIExpression()), !dbg !2703
  store volatile i16 %60, i16* %53, align 4, !dbg !2755
  ret void, !dbg !2756
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) local_unnamed_addr #4 !dbg !2757 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2762, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i32 %1, metadata !2763, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i32* %2, metadata !2764, metadata !DIExpression()), !dbg !2765
  %4 = icmp eq i32 %0, 0, !dbg !2766
  %5 = icmp eq i32 %1, 0, !dbg !2768
  br i1 %4, label %6, label %16, !dbg !2769

6:                                                ; preds = %3
  br i1 %5, label %10, label %7, !dbg !2770

7:                                                ; preds = %6
  %8 = load volatile i16, i16* inttoptr (i32 -2097082568 to i16*), align 8, !dbg !2772
  %9 = zext i16 %8 to i32, !dbg !2772
  br label %26, !dbg !2775

10:                                               ; preds = %6
  %11 = load volatile i16, i16* inttoptr (i32 -2097082812 to i16*), align 4, !dbg !2776
  %12 = zext i16 %11 to i32, !dbg !2776
  store i32 %12, i32* %2, align 4, !dbg !2778
  %13 = load volatile i16, i16* inttoptr (i32 -2097082824 to i16*), align 8, !dbg !2779
  %14 = zext i16 %13 to i32, !dbg !2779
  %15 = sub nsw i32 %12, %14, !dbg !2780
  br label %26

16:                                               ; preds = %3
  br i1 %5, label %20, label %17, !dbg !2781

17:                                               ; preds = %16
  %18 = load volatile i16, i16* inttoptr (i32 -2097082056 to i16*), align 8, !dbg !2783
  %19 = zext i16 %18 to i32, !dbg !2783
  br label %26, !dbg !2786

20:                                               ; preds = %16
  %21 = load volatile i16, i16* inttoptr (i32 -2097082300 to i16*), align 4, !dbg !2787
  %22 = zext i16 %21 to i32, !dbg !2787
  store i32 %22, i32* %2, align 4, !dbg !2789
  %23 = load volatile i16, i16* inttoptr (i32 -2097082312 to i16*), align 8, !dbg !2790
  %24 = zext i16 %23 to i32, !dbg !2790
  %25 = sub nsw i32 %22, %24, !dbg !2791
  br label %26

26:                                               ; preds = %17, %20, %7, %10
  %27 = phi i32 [ %19, %17 ], [ %25, %20 ], [ %9, %7 ], [ %15, %10 ]
  store i32 %27, i32* %2, align 4, !dbg !2768
  ret void, !dbg !2792
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Read_VFIFO_Data(i32 noundef %0, i8* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !2793 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2797, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata i8* %1, metadata !2798, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata i32 %2, metadata !2799, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata i32 0, metadata !2800, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata i32 0, metadata !2800, metadata !DIExpression()), !dbg !2801
  %4 = icmp eq i32 %2, 0, !dbg !2802
  br i1 %4, label %15, label %5, !dbg !2805

5:                                                ; preds = %3, %12
  %6 = phi i32 [ %13, %12 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !2800, metadata !DIExpression()), !dbg !2801
  switch i32 %0, label %12 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !2806

7:                                                ; preds = %5
  br label %8, !dbg !2808

8:                                                ; preds = %5, %7
  %9 = phi i8* [ inttoptr (i32 2030044416 to i8*), %7 ], [ inttoptr (i32 2030043904 to i8*), %5 ]
  %10 = load volatile i8, i8* %9, align 256, !dbg !2812
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !2812
  store i8 %10, i8* %11, align 1, !dbg !2812
  br label %12, !dbg !2813

12:                                               ; preds = %8, %5
  %13 = add nuw i32 %6, 1, !dbg !2813
  call void @llvm.dbg.value(metadata i32 %13, metadata !2800, metadata !DIExpression()), !dbg !2801
  %14 = icmp eq i32 %13, %2, !dbg !2802
  br i1 %14, label %15, label %5, !dbg !2805, !llvm.loop !2814

15:                                               ; preds = %12, %3
  ret void, !dbg !2816
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Write_VFIFO_Data(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !2817 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2823, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i8* %1, metadata !2824, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i32 %2, metadata !2825, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i32 0, metadata !2826, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i32 0, metadata !2826, metadata !DIExpression()), !dbg !2827
  %4 = icmp eq i32 %2, 0, !dbg !2828
  br i1 %4, label %16, label %5, !dbg !2831

5:                                                ; preds = %3, %13
  %6 = phi i32 [ %14, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !2826, metadata !DIExpression()), !dbg !2827
  switch i32 %0, label %13 [
    i32 0, label %7
    i32 1, label %10
  ], !dbg !2832

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !2834
  %9 = load i8, i8* %8, align 1, !dbg !2834
  store volatile i8 %9, i8* inttoptr (i32 2030043648 to i8*), align 512, !dbg !2837
  br label %13, !dbg !2838

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !2839
  %12 = load i8, i8* %11, align 1, !dbg !2839
  store volatile i8 %12, i8* inttoptr (i32 2030044160 to i8*), align 1024, !dbg !2842
  br label %13, !dbg !2843

13:                                               ; preds = %5, %7, %10
  %14 = add nuw i32 %6, 1, !dbg !2844
  call void @llvm.dbg.value(metadata i32 %14, metadata !2826, metadata !DIExpression()), !dbg !2827
  %15 = icmp eq i32 %14, %2, !dbg !2828
  br i1 %15, label %16, label %5, !dbg !2831, !llvm.loop !2845

16:                                               ; preds = %13, %3
  ret void, !dbg !2847
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Tx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !dbg !2848 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2852, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i8* %1, metadata !2853, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i32 %2, metadata !2854, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i32 %3, metadata !2855, metadata !DIExpression()), !dbg !2856
  switch i32 %0, label %9 [
    i32 0, label %6
    i32 1, label %5
  ], !dbg !2857

5:                                                ; preds = %4
  br label %6, !dbg !2858

6:                                                ; preds = %4, %5
  %7 = phi i32 [ 16, %5 ], [ 14, %4 ]
  %8 = ptrtoint i8* %1 to i32, !dbg !2862
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %8, i32 noundef %2, i32 noundef %7, i32 noundef 0, i32 noundef %3, i32 noundef 0) #13, !dbg !2862
  tail call void @DMA_Vfifo_Flush(i32 noundef %7) #13, !dbg !2862
  br label %9, !dbg !2863

9:                                                ; preds = %6, %4
  ret void, !dbg !2863
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_SetAdrs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Flush(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Rx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 !dbg !2864 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2868, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i8* %1, metadata !2869, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i32 %2, metadata !2870, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i32 %3, metadata !2871, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i32 %4, metadata !2872, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i32 %5, metadata !2873, metadata !DIExpression()), !dbg !2874
  switch i32 %0, label %11 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !2875

7:                                                ; preds = %6
  br label %8, !dbg !2876

8:                                                ; preds = %6, %7
  %9 = phi i32 [ 17, %7 ], [ 15, %6 ]
  %10 = ptrtoint i8* %1 to i32, !dbg !2880
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %10, i32 noundef %2, i32 noundef %9, i32 noundef %3, i32 noundef %4, i32 noundef %5) #13, !dbg !2880
  tail call void @DMA_Vfifo_Flush(i32 noundef %9) #13, !dbg !2880
  br label %11, !dbg !2881

11:                                               ; preds = %8, %6
  ret void, !dbg !2881
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #0 !dbg !2882 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2886, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata void ()* %1, metadata !2887, metadata !DIExpression()), !dbg !2888
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !2889

3:                                                ; preds = %2
  br label %4, !dbg !2890

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef %5, void ()* noundef %1) #13, !dbg !2894
  br label %6, !dbg !2895

6:                                                ; preds = %4, %2
  ret void, !dbg !2895
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #0 !dbg !2896 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2898, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata void ()* %1, metadata !2899, metadata !DIExpression()), !dbg !2900
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !2901

3:                                                ; preds = %2
  br label %4, !dbg !2902

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_TO_Callback(i32 noundef %5, void ()* noundef %1) #13, !dbg !2906
  br label %6, !dbg !2907

6:                                                ; preds = %4, %2
  ret void, !dbg !2907
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_TO_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !2908 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2910, metadata !DIExpression()), !dbg !2914
  %2 = icmp eq i32 %0, 0, !dbg !2915
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2915
  call void @llvm.dbg.value(metadata i32 %3, metadata !2911, metadata !DIExpression()), !dbg !2914
  %4 = or i32 %3, 12, !dbg !2916
  %5 = inttoptr i32 %4 to i32*, !dbg !2916
  %6 = load volatile i32, i32* %5, align 4, !dbg !2916
  call void @llvm.dbg.value(metadata i32 %6, metadata !2913, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2914
  store volatile i32 191, i32* %5, align 4, !dbg !2917
  %7 = or i32 %3, 8, !dbg !2918
  %8 = inttoptr i32 %7 to i32*, !dbg !2918
  %9 = load volatile i32, i32* %8, align 8, !dbg !2918
  call void @llvm.dbg.value(metadata i32 %9, metadata !2912, metadata !DIExpression()), !dbg !2914
  %10 = and i32 %9, 65327, !dbg !2919
  %11 = or i32 %10, 208, !dbg !2919
  call void @llvm.dbg.value(metadata i32 %9, metadata !2912, metadata !DIExpression(DW_OP_constu, 208, DW_OP_or, DW_OP_stack_value)), !dbg !2914
  store volatile i32 %11, i32* %8, align 8, !dbg !2920
  %12 = or i32 %3, 68, !dbg !2921
  %13 = inttoptr i32 %12 to i32*, !dbg !2921
  store volatile i32 0, i32* %13, align 4, !dbg !2922
  store volatile i32 0, i32* %5, align 4, !dbg !2923
  %14 = or i32 %3, 16, !dbg !2924
  %15 = inttoptr i32 %14 to i32*, !dbg !2924
  store volatile i32 2, i32* %15, align 16, !dbg !2925
  %16 = and i32 %6, 65535, !dbg !2926
  store volatile i32 %16, i32* %5, align 4, !dbg !2927
  ret void, !dbg !2928
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 !dbg !2929 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2933, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i8 %1, metadata !2934, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i8 %2, metadata !2935, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i8 %3, metadata !2936, metadata !DIExpression()), !dbg !2940
  %5 = icmp eq i32 %0, 0, !dbg !2941
  %6 = select i1 %5, i32 -2096955392, i32 -2096889856, !dbg !2941
  call void @llvm.dbg.value(metadata i32 %6, metadata !2937, metadata !DIExpression()), !dbg !2940
  %7 = or i32 %6, 12, !dbg !2942
  %8 = inttoptr i32 %7 to i32*, !dbg !2942
  %9 = load volatile i32, i32* %8, align 4, !dbg !2942
  call void @llvm.dbg.value(metadata i32 %9, metadata !2939, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2940
  store volatile i32 191, i32* %8, align 4, !dbg !2943
  %10 = zext i8 %1 to i32, !dbg !2944
  %11 = or i32 %6, 16, !dbg !2945
  %12 = inttoptr i32 %11 to i32*, !dbg !2945
  store volatile i32 %10, i32* %12, align 16, !dbg !2946
  %13 = or i32 %6, 20, !dbg !2947
  %14 = inttoptr i32 %13 to i32*, !dbg !2947
  store volatile i32 %10, i32* %14, align 4, !dbg !2948
  %15 = zext i8 %2 to i32, !dbg !2949
  %16 = or i32 %6, 24, !dbg !2950
  %17 = inttoptr i32 %16 to i32*, !dbg !2950
  store volatile i32 %15, i32* %17, align 8, !dbg !2951
  %18 = or i32 %6, 28, !dbg !2952
  %19 = inttoptr i32 %18 to i32*, !dbg !2952
  store volatile i32 %15, i32* %19, align 4, !dbg !2953
  %20 = or i32 %6, 8, !dbg !2954
  %21 = inttoptr i32 %20 to i32*, !dbg !2954
  %22 = load volatile i32, i32* %21, align 8, !dbg !2954
  call void @llvm.dbg.value(metadata i32 %22, metadata !2938, metadata !DIExpression()), !dbg !2940
  %23 = and i32 %22, 65525, !dbg !2955
  %24 = or i32 %23, 10, !dbg !2955
  call void @llvm.dbg.value(metadata i32 %22, metadata !2938, metadata !DIExpression(DW_OP_constu, 10, DW_OP_or, DW_OP_stack_value)), !dbg !2940
  store volatile i32 %24, i32* %21, align 8, !dbg !2956
  %25 = and i32 %9, 65535, !dbg !2957
  store volatile i32 %25, i32* %8, align 4, !dbg !2958
  %26 = zext i8 %3 to i32, !dbg !2959
  %27 = or i32 %6, 64, !dbg !2960
  %28 = inttoptr i32 %27 to i32*, !dbg !2960
  store volatile i32 %26, i32* %28, align 64, !dbg !2961
  %29 = or i32 %6, 68, !dbg !2962
  %30 = inttoptr i32 %29 to i32*, !dbg !2962
  store volatile i32 1, i32* %30, align 4, !dbg !2963
  ret void, !dbg !2964
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !2965 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2967, metadata !DIExpression()), !dbg !2970
  %2 = icmp eq i32 %0, 0, !dbg !2971
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2971
  call void @llvm.dbg.value(metadata i32 %3, metadata !2968, metadata !DIExpression()), !dbg !2970
  %4 = or i32 %3, 12, !dbg !2972
  %5 = inttoptr i32 %4 to i32*, !dbg !2972
  %6 = load volatile i32, i32* %5, align 4, !dbg !2972
  call void @llvm.dbg.value(metadata i32 %6, metadata !2969, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2970
  store volatile i32 191, i32* %5, align 4, !dbg !2973
  %7 = or i32 %3, 8, !dbg !2974
  %8 = inttoptr i32 %7 to i32*, !dbg !2974
  store volatile i32 0, i32* %8, align 8, !dbg !2975
  store volatile i32 0, i32* %5, align 4, !dbg !2976
  %9 = and i32 %6, 65535, !dbg !2977
  store volatile i32 %9, i32* %5, align 4, !dbg !2978
  ret void, !dbg !2979
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_reset_default_value(i32 noundef %0) local_unnamed_addr #3 !dbg !2980 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2982, metadata !DIExpression()), !dbg !2984
  %2 = icmp eq i32 %0, 0, !dbg !2985
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2985
  call void @llvm.dbg.value(metadata i32 %3, metadata !2983, metadata !DIExpression()), !dbg !2984
  %4 = or i32 %3, 12, !dbg !2986
  %5 = inttoptr i32 %4 to i32*, !dbg !2986
  store volatile i32 191, i32* %5, align 4, !dbg !2987
  %6 = or i32 %3, 8, !dbg !2988
  %7 = inttoptr i32 %6 to i32*, !dbg !2988
  store volatile i32 16, i32* %7, align 8, !dbg !2989
  %8 = or i32 %3, 16, !dbg !2990
  %9 = inttoptr i32 %8 to i32*, !dbg !2990
  store volatile i32 0, i32* %9, align 16, !dbg !2991
  %10 = or i32 %3, 24, !dbg !2992
  %11 = inttoptr i32 %10 to i32*, !dbg !2992
  store volatile i32 0, i32* %11, align 8, !dbg !2993
  store volatile i32 128, i32* %5, align 4, !dbg !2994
  %12 = inttoptr i32 %3 to i32*, !dbg !2995
  store volatile i32 0, i32* %12, align 65536, !dbg !2996
  %13 = or i32 %3, 4, !dbg !2997
  %14 = inttoptr i32 %13 to i32*, !dbg !2997
  store volatile i32 0, i32* %14, align 4, !dbg !2998
  store volatile i32 0, i32* %5, align 4, !dbg !2999
  store volatile i32 0, i32* %14, align 4, !dbg !3000
  store volatile i32 0, i32* %7, align 8, !dbg !3001
  store volatile i32 191, i32* %5, align 4, !dbg !3002
  store volatile i32 0, i32* %7, align 8, !dbg !3003
  store volatile i32 0, i32* %5, align 4, !dbg !3004
  store volatile i32 0, i32* %9, align 16, !dbg !3005
  %15 = or i32 %3, 28, !dbg !3006
  %16 = inttoptr i32 %15 to i32*, !dbg !3006
  store volatile i32 0, i32* %16, align 4, !dbg !3007
  %17 = or i32 %3, 36, !dbg !3008
  %18 = inttoptr i32 %17 to i32*, !dbg !3008
  store volatile i32 0, i32* %18, align 4, !dbg !3009
  %19 = or i32 %3, 40, !dbg !3010
  %20 = inttoptr i32 %19 to i32*, !dbg !3010
  store volatile i32 0, i32* %20, align 8, !dbg !3011
  %21 = or i32 %3, 44, !dbg !3012
  %22 = inttoptr i32 %21 to i32*, !dbg !3012
  store volatile i32 0, i32* %22, align 4, !dbg !3013
  %23 = or i32 %3, 52, !dbg !3014
  %24 = inttoptr i32 %23 to i32*, !dbg !3014
  store volatile i32 0, i32* %24, align 4, !dbg !3015
  %25 = or i32 %3, 60, !dbg !3016
  %26 = inttoptr i32 %25 to i32*, !dbg !3016
  store volatile i32 0, i32* %26, align 4, !dbg !3017
  %27 = or i32 %3, 64, !dbg !3018
  %28 = inttoptr i32 %27 to i32*, !dbg !3018
  store volatile i32 0, i32* %28, align 64, !dbg !3019
  %29 = or i32 %3, 68, !dbg !3020
  %30 = inttoptr i32 %29 to i32*, !dbg !3020
  store volatile i32 0, i32* %30, align 4, !dbg !3021
  %31 = or i32 %3, 72, !dbg !3022
  %32 = inttoptr i32 %31 to i32*, !dbg !3022
  store volatile i32 0, i32* %32, align 8, !dbg !3023
  %33 = or i32 %3, 76, !dbg !3024
  %34 = inttoptr i32 %33 to i32*, !dbg !3024
  store volatile i32 0, i32* %34, align 4, !dbg !3025
  %35 = or i32 %3, 80, !dbg !3026
  %36 = inttoptr i32 %35 to i32*, !dbg !3026
  store volatile i32 0, i32* %36, align 16, !dbg !3027
  %37 = or i32 %3, 84, !dbg !3028
  %38 = inttoptr i32 %37 to i32*, !dbg !3028
  store volatile i32 0, i32* %38, align 4, !dbg !3029
  %39 = or i32 %3, 88, !dbg !3030
  %40 = inttoptr i32 %39 to i32*, !dbg !3030
  store volatile i32 0, i32* %40, align 8, !dbg !3031
  %41 = or i32 %3, 96, !dbg !3032
  %42 = inttoptr i32 %41 to i32*, !dbg !3032
  store volatile i32 0, i32* %42, align 32, !dbg !3033
  ret void, !dbg !3034
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_query_empty(i32 noundef %0) local_unnamed_addr #3 !dbg !3035 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3037, metadata !DIExpression()), !dbg !3039
  %2 = icmp eq i32 %0, 0, !dbg !3040
  call void @llvm.dbg.value(metadata i32 undef, metadata !3038, metadata !DIExpression()), !dbg !3039
  %3 = select i1 %2, i32 -2096955372, i32 -2096889836
  %4 = inttoptr i32 %3 to i32*
  br label %5, !dbg !3041

5:                                                ; preds = %5, %1
  %6 = load volatile i32, i32* %4, align 4, !dbg !3042
  %7 = and i32 %6, 64, !dbg !3043
  %8 = icmp eq i32 %7, 0, !dbg !3044
  br i1 %8, label %5, label %9, !dbg !3041, !llvm.loop !3045

9:                                                ; preds = %5
  ret void, !dbg !3047
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_fatal_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3048 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3052, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i32 %1, metadata !3053, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i8* %2, metadata !3054, metadata !DIExpression()), !dbg !3065
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3066
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3066
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3055, metadata !DIExpression()), !dbg !3067
  %7 = bitcast i32* %5 to i8*, !dbg !3068
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3068
  call void @llvm.dbg.value(metadata i32* %5, metadata !3064, metadata !DIExpression(DW_OP_deref)), !dbg !3065
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #13, !dbg !3069
  call void @llvm.va_start(i8* nonnull %6), !dbg !3070
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3071
  %10 = load i32, i32* %9, align 4, !dbg !3071
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3071
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #13, !dbg !3071
  call void @llvm.va_end(i8* nonnull %6), !dbg !3072
  %13 = load i32, i32* %5, align 4, !dbg !3073
  call void @llvm.dbg.value(metadata i32 %13, metadata !3064, metadata !DIExpression()), !dbg !3065
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #13, !dbg !3074
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3075
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3075
  ret void, !dbg !3075
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #8

; Function Attrs: optsize
declare dso_local i32 @vprintf(i8* noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #8

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_error_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3076 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3078, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i32 %1, metadata !3079, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i8* %2, metadata !3080, metadata !DIExpression()), !dbg !3083
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3084
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3084
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3081, metadata !DIExpression()), !dbg !3085
  %7 = bitcast i32* %5 to i8*, !dbg !3086
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3086
  call void @llvm.dbg.value(metadata i32* %5, metadata !3082, metadata !DIExpression(DW_OP_deref)), !dbg !3083
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #13, !dbg !3087
  call void @llvm.va_start(i8* nonnull %6), !dbg !3088
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3089
  %10 = load i32, i32* %9, align 4, !dbg !3089
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3089
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #13, !dbg !3089
  call void @llvm.va_end(i8* nonnull %6), !dbg !3090
  %13 = load i32, i32* %5, align 4, !dbg !3091
  call void @llvm.dbg.value(metadata i32 %13, metadata !3082, metadata !DIExpression()), !dbg !3083
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #13, !dbg !3092
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3093
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3093
  ret void, !dbg !3093
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_warning_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3094 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3096, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i32 %1, metadata !3097, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i8* %2, metadata !3098, metadata !DIExpression()), !dbg !3101
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3102
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3099, metadata !DIExpression()), !dbg !3103
  %7 = bitcast i32* %5 to i8*, !dbg !3104
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3104
  call void @llvm.dbg.value(metadata i32* %5, metadata !3100, metadata !DIExpression(DW_OP_deref)), !dbg !3101
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #13, !dbg !3105
  call void @llvm.va_start(i8* nonnull %6), !dbg !3106
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3107
  %10 = load i32, i32* %9, align 4, !dbg !3107
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3107
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #13, !dbg !3107
  call void @llvm.va_end(i8* nonnull %6), !dbg !3108
  %13 = load i32, i32* %5, align 4, !dbg !3109
  call void @llvm.dbg.value(metadata i32 %13, metadata !3100, metadata !DIExpression()), !dbg !3101
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #13, !dbg !3110
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3111
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3111
  ret void, !dbg !3111
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_info_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3112 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3114, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i32 %1, metadata !3115, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8* %2, metadata !3116, metadata !DIExpression()), !dbg !3119
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3120
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3120
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3117, metadata !DIExpression()), !dbg !3121
  %7 = bitcast i32* %5 to i8*, !dbg !3122
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3122
  call void @llvm.dbg.value(metadata i32* %5, metadata !3118, metadata !DIExpression(DW_OP_deref)), !dbg !3119
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #13, !dbg !3123
  call void @llvm.va_start(i8* nonnull %6), !dbg !3124
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3125
  %10 = load i32, i32* %9, align 4, !dbg !3125
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3125
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #13, !dbg !3125
  call void @llvm.va_end(i8* nonnull %6), !dbg !3126
  %13 = load i32, i32* %5, align 4, !dbg !3127
  call void @llvm.dbg.value(metadata i32 %13, metadata !3118, metadata !DIExpression()), !dbg !3119
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #13, !dbg !3128
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3129
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3129
  ret void, !dbg !3129
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @log_hal_dump_internal(i8* nocapture noundef %0, i32 noundef %1, i8* nocapture noundef %2, i8* nocapture noundef %3, i32 noundef %4, ...) local_unnamed_addr #9 !dbg !3130 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3136, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i32 %1, metadata !3137, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i8* %2, metadata !3138, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i8* %3, metadata !3139, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i32 %4, metadata !3140, metadata !DIExpression()), !dbg !3141
  ret void, !dbg !3142
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_crypt_lock_take() local_unnamed_addr #0 !dbg !3143 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #13, !dbg !3148
  call void @llvm.dbg.value(metadata i32 %1, metadata !3147, metadata !DIExpression()), !dbg !3149
  %2 = load i8, i8* @g_crypt_lock, align 1, !dbg !3150, !range !3152
  %3 = icmp eq i8 %2, 0, !dbg !3150
  br i1 %3, label %4, label %5, !dbg !3153

4:                                                ; preds = %0
  store i8 1, i8* @g_crypt_lock, align 1, !dbg !3154
  br label %5, !dbg !3155

5:                                                ; preds = %0, %4
  %6 = phi i32 [ 0, %4 ], [ -100, %0 ], !dbg !3149
  tail call void @restore_interrupt_mask(i32 noundef %1) #13, !dbg !3149
  ret i32 %6, !dbg !3156
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local void @hal_crypt_lock_give() local_unnamed_addr #10 !dbg !3157 {
  store i8 0, i8* @g_crypt_lock, align 1, !dbg !3158
  ret void, !dbg !3159
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_aes_encrypt_with_padding(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef readonly %1, %struct.hal_aes_buffer_t* noundef readonly %2, i8* noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 !dbg !3160 {
  %6 = alloca [16 x i8], align 1
  %7 = alloca [16 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %0, metadata !3171, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %1, metadata !3172, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %2, metadata !3173, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.value(metadata i8* %3, metadata !3174, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.value(metadata i8 %4, metadata !3175, metadata !DIExpression()), !dbg !3188
  %8 = icmp eq %struct.hal_aes_buffer_t* %0, null, !dbg !3189
  %9 = icmp eq %struct.hal_aes_buffer_t* %1, null
  %10 = or i1 %8, %9, !dbg !3191
  %11 = icmp eq %struct.hal_aes_buffer_t* %2, null
  %12 = or i1 %10, %11, !dbg !3191
  %13 = icmp eq i8* %3, null
  %14 = or i1 %12, %13, !dbg !3191
  br i1 %14, label %15, label %16, !dbg !3191

15:                                               ; preds = %5
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.hal_aes_encrypt_with_padding, i32 0, i32 0), i32 noundef 154, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0)) #13, !dbg !3192
  br label %86, !dbg !3194

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %1, i32 0, i32 1, !dbg !3195
  %18 = load i32, i32* %17, align 4, !dbg !3195
  %19 = and i32 %18, 15, !dbg !3196
  call void @llvm.dbg.value(metadata i32 %19, metadata !3176, metadata !DIExpression()), !dbg !3188
  %20 = and i32 %18, -16, !dbg !3197
  call void @llvm.dbg.value(metadata i32 %18, metadata !3177, metadata !DIExpression(DW_OP_constu, 4, DW_OP_shr, DW_OP_stack_value)), !dbg !3188
  %21 = sub nuw nsw i32 16, %19, !dbg !3198
  call void @llvm.dbg.value(metadata !DIArgList(i8 16, i32 %19), metadata !3178, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_minus, DW_OP_stack_value)), !dbg !3188
  %22 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %0, i32 0, i32 1, !dbg !3199
  %23 = load i32, i32* %22, align 4, !dbg !3199
  %24 = add i32 %21, %18, !dbg !3201
  %25 = icmp ult i32 %23, %24, !dbg !3202
  br i1 %25, label %26, label %27, !dbg !3203

26:                                               ; preds = %16
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.hal_aes_encrypt_with_padding, i32 0, i32 0), i32 noundef 163, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.6, i32 0, i32 0)) #13, !dbg !3204
  br label %86, !dbg !3206

27:                                               ; preds = %16
  %28 = tail call i32 @hal_crypt_lock_take() #14, !dbg !3207
  %29 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 6, void (i32)* noundef nonnull @aes_operation_done) #13, !dbg !3208
  %30 = tail call i32 @hal_nvic_set_priority(i32 noundef 6, i32 noundef 5) #13, !dbg !3209
  %31 = tail call i32 @hal_nvic_enable_irq(i32 noundef 6) #13, !dbg !3210
  %32 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %2, i32 0, i32 1, !dbg !3211
  %33 = load i32, i32* %32, align 4, !dbg !3211
  %34 = trunc i32 %33 to i8, !dbg !3212
  %35 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %2, i32 0, i32 0, !dbg !3213
  %36 = load i8*, i8** %35, align 4, !dbg !3213
  %37 = tail call i32 @aes_set_key(i8 noundef zeroext %34, i8* noundef %36) #13, !dbg !3214
  %38 = icmp eq i8 %4, 1, !dbg !3215
  %39 = zext i1 %38 to i8
  %40 = tail call i32 @aes_configure(i8 noundef zeroext 1, i8 noundef zeroext %39) #13, !dbg !3217
  %41 = icmp ult i32 %18, 16, !dbg !3218
  br i1 %41, label %68, label %42, !dbg !3219

42:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i32 %20, metadata !3180, metadata !DIExpression()), !dbg !3220
  %43 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %0, i32 0, i32 0, !dbg !3221
  %44 = load i8*, i8** %43, align 4, !dbg !3221
  %45 = load i32, i32* %22, align 4, !dbg !3223
  %46 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %1, i32 0, i32 0, !dbg !3224
  %47 = load i8*, i8** %46, align 4, !dbg !3224
  %48 = tail call fastcc i32 @do_aes_encrypt(i8* noundef %44, i32 noundef %45, i8* noundef %47, i32 noundef %20, i8* noundef nonnull %3) #14, !dbg !3225
  %49 = icmp eq i32 %48, 0, !dbg !3226
  br i1 %49, label %51, label %50, !dbg !3227

50:                                               ; preds = %42
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.hal_aes_encrypt_with_padding, i32 0, i32 0), i32 noundef 188, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #13, !dbg !3228
  tail call void @hal_crypt_lock_give() #14, !dbg !3230
  br label %86

51:                                               ; preds = %42
  %52 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0, !dbg !3231
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %52) #15, !dbg !3231
  call void @llvm.dbg.declare(metadata [16 x i8]* %6, metadata !3183, metadata !DIExpression()), !dbg !3232
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(16) %52, i8 0, i32 16, i1 false), !dbg !3232
  %53 = load i8*, i8** %46, align 4, !dbg !3233
  %54 = getelementptr inbounds i8, i8* %53, i32 %20, !dbg !3234
  %55 = call i8* @memcpy(i8* noundef nonnull %52, i8* noundef %54, i32 noundef %19) #13, !dbg !3235
  %56 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 %19, !dbg !3236
  %57 = call i8* @memset(i8* noundef nonnull %56, i32 noundef %21, i32 noundef %21) #13, !dbg !3237
  %58 = load i8*, i8** %43, align 4, !dbg !3220
  %59 = getelementptr inbounds i8, i8* %58, i32 %20, !dbg !3238
  %60 = getelementptr inbounds i8, i8* %59, i32 -16, !dbg !3238
  %61 = select i1 %38, i8* %60, i8* %3, !dbg !3238
  call void @llvm.dbg.value(metadata i8* %61, metadata !3179, metadata !DIExpression()), !dbg !3188
  %62 = getelementptr inbounds i8, i8* %58, i32 %20, !dbg !3239
  %63 = load i32, i32* %22, align 4, !dbg !3241
  %64 = call fastcc i32 @do_aes_encrypt(i8* noundef %62, i32 noundef %63, i8* noundef nonnull %52, i32 noundef 16, i8* noundef nonnull %61) #14, !dbg !3242
  %65 = icmp eq i32 %64, 0, !dbg !3243
  br i1 %65, label %66, label %67, !dbg !3244

66:                                               ; preds = %51
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %52) #15, !dbg !3245
  br label %83

67:                                               ; preds = %51
  call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.hal_aes_encrypt_with_padding, i32 0, i32 0), i32 noundef 210, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #13, !dbg !3246
  call void @hal_crypt_lock_give() #14, !dbg !3248
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %52) #15, !dbg !3245
  br label %86

68:                                               ; preds = %27
  %69 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i32 0, i32 0, !dbg !3249
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %69) #15, !dbg !3249
  call void @llvm.dbg.declare(metadata [16 x i8]* %7, metadata !3186, metadata !DIExpression()), !dbg !3250
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(16) %69, i8 0, i32 16, i1 false), !dbg !3250
  %70 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %1, i32 0, i32 0, !dbg !3251
  %71 = load i8*, i8** %70, align 4, !dbg !3251
  %72 = load i32, i32* %17, align 4, !dbg !3252
  %73 = call i8* @memcpy(i8* noundef nonnull %69, i8* noundef %71, i32 noundef %72) #13, !dbg !3253
  %74 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i32 0, i32 %19, !dbg !3254
  %75 = call i8* @memset(i8* noundef nonnull %74, i32 noundef %21, i32 noundef %21) #13, !dbg !3255
  %76 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %0, i32 0, i32 0, !dbg !3256
  %77 = load i8*, i8** %76, align 4, !dbg !3256
  %78 = load i32, i32* %22, align 4, !dbg !3258
  %79 = call fastcc i32 @do_aes_encrypt(i8* noundef %77, i32 noundef %78, i8* noundef nonnull %69, i32 noundef 16, i8* noundef nonnull %3) #14, !dbg !3259
  %80 = icmp eq i32 %79, 0, !dbg !3260
  br i1 %80, label %82, label %81, !dbg !3261

81:                                               ; preds = %68
  call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.hal_aes_encrypt_with_padding, i32 0, i32 0), i32 noundef 223, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #13, !dbg !3262
  call void @hal_crypt_lock_give() #14, !dbg !3264
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %69) #15, !dbg !3265
  br label %86

82:                                               ; preds = %68
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %69) #15, !dbg !3265
  br label %83

83:                                               ; preds = %66, %82
  %84 = add i32 %18, 16, !dbg !3266
  %85 = and i32 %84, -16, !dbg !3266
  store i32 %85, i32* %22, align 4, !dbg !3267
  call void @hal_crypt_lock_give() #14, !dbg !3268
  br label %86, !dbg !3269

86:                                               ; preds = %67, %50, %81, %26, %83, %15
  %87 = phi i32 [ -1, %15 ], [ -1, %26 ], [ 0, %83 ], [ -1, %67 ], [ -1, %81 ], [ -1, %50 ], !dbg !3188
  ret i32 %87, !dbg !3270
}

; Function Attrs: noinline nounwind optsize
define internal void @aes_operation_done(i32 noundef %0) #0 !dbg !3271 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3273, metadata !DIExpression()), !dbg !3274
  %2 = tail call i32 @hal_nvic_disable_irq(i32 noundef 6) #13, !dbg !3275
  %3 = tail call i32 @hal_nvic_clear_pending_irq(i32 noundef 6) #13, !dbg !3276
  store volatile i8 1, i8* @g_aes_op_done, align 1, !dbg !3277
  %4 = tail call i32 @hal_nvic_enable_irq(i32 noundef 6) #13, !dbg !3278
  ret void, !dbg !3279
}

; Function Attrs: optsize
declare dso_local i32 @aes_set_key(i8 noundef zeroext, i8* noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare dso_local i32 @aes_configure(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @do_aes_encrypt(i8* noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4) unnamed_addr #0 !dbg !3280 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3284, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i32 %1, metadata !3285, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i8* %2, metadata !3286, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i32 %3, metadata !3287, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i8* %4, metadata !3288, metadata !DIExpression()), !dbg !3291
  store volatile i8 0, i8* @g_aes_op_done, align 1, !dbg !3292
  %6 = trunc i32 %1 to i16, !dbg !3293
  %7 = trunc i32 %3 to i16, !dbg !3294
  %8 = tail call i32 @aes_operate(i8* noundef %0, i16 noundef zeroext %6, i8* noundef %2, i16 noundef zeroext %7, i8* noundef %4, i8 noundef zeroext 1) #13, !dbg !3295
  call void @llvm.dbg.value(metadata i32 %8, metadata !3289, metadata !DIExpression()), !dbg !3291
  %9 = icmp slt i32 %8, 0, !dbg !3296
  br i1 %9, label %10, label %11, !dbg !3298

10:                                               ; preds = %5
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.do_aes_encrypt, i32 0, i32 0), i32 noundef 100, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0)) #13, !dbg !3299
  br label %19, !dbg !3301

11:                                               ; preds = %5, %15
  %12 = phi i32 [ %16, %15 ], [ 0, %5 ], !dbg !3291
  call void @llvm.dbg.value(metadata i32 %12, metadata !3290, metadata !DIExpression()), !dbg !3291
  %13 = load volatile i8, i8* @g_aes_op_done, align 1, !dbg !3302, !range !3152
  %14 = icmp eq i8 %13, 0, !dbg !3302
  br i1 %14, label %15, label %19, !dbg !3303

15:                                               ; preds = %11
  %16 = add nuw nsw i32 %12, 1, !dbg !3304
  call void @llvm.dbg.value(metadata i32 %16, metadata !3290, metadata !DIExpression()), !dbg !3291
  %17 = icmp eq i32 %16, 268435457, !dbg !3306
  br i1 %17, label %18, label %11, !dbg !3308, !llvm.loop !3309

18:                                               ; preds = %15
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.do_aes_encrypt, i32 0, i32 0), i32 noundef 108, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0)) #13, !dbg !3311
  br label %19, !dbg !3313

19:                                               ; preds = %11, %18, %10
  %20 = phi i32 [ -1, %10 ], [ -1, %18 ], [ 0, %11 ], !dbg !3291
  ret i32 %20, !dbg !3314
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #11

; Function Attrs: optsize
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare dso_local i8* @memset(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare dso_local i32 @aes_operate(i8* noundef, i16 noundef zeroext, i8* noundef, i16 noundef zeroext, i8* noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_aes_decrypt(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef readonly %1, %struct.hal_aes_buffer_t* noundef readonly %2, i8* noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 !dbg !3315 {
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %0, metadata !3317, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %1, metadata !3318, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %2, metadata !3319, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i8* %3, metadata !3320, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i8 %4, metadata !3321, metadata !DIExpression()), !dbg !3323
  %6 = icmp eq %struct.hal_aes_buffer_t* %0, null, !dbg !3324
  %7 = icmp eq %struct.hal_aes_buffer_t* %1, null
  %8 = or i1 %6, %7, !dbg !3326
  %9 = icmp eq %struct.hal_aes_buffer_t* %2, null
  %10 = or i1 %8, %9, !dbg !3326
  %11 = icmp eq i8* %3, null
  %12 = or i1 %10, %11, !dbg !3326
  br i1 %12, label %13, label %14, !dbg !3326

13:                                               ; preds = %5
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.hal_aes_decrypt, i32 0, i32 0), i32 noundef 245, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0)) #13, !dbg !3327
  br label %57, !dbg !3329

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %1, i32 0, i32 1, !dbg !3330
  %16 = load i32, i32* %15, align 4, !dbg !3330
  %17 = and i32 %16, 15, !dbg !3332
  %18 = icmp eq i32 %17, 0, !dbg !3333
  br i1 %18, label %20, label %19, !dbg !3334

19:                                               ; preds = %14
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.hal_aes_decrypt, i32 0, i32 0), i32 noundef 250, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i32 noundef %16) #13, !dbg !3335
  br label %57, !dbg !3337

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %0, i32 0, i32 1, !dbg !3338
  %22 = load i32, i32* %21, align 4, !dbg !3338
  %23 = add i32 %16, -16, !dbg !3340
  %24 = icmp ult i32 %22, %23, !dbg !3341
  br i1 %24, label %25, label %26, !dbg !3342

25:                                               ; preds = %20
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.hal_aes_decrypt, i32 0, i32 0), i32 noundef 255, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i32 0, i32 0), i32 noundef %16, i32 noundef %16) #13, !dbg !3343
  br label %57, !dbg !3345

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %2, i32 0, i32 1, !dbg !3346
  %28 = load i32, i32* %27, align 4, !dbg !3346
  switch i32 %28, label %29 [
    i32 16, label %30
    i32 24, label %30
    i32 32, label %30
  ], !dbg !3348

29:                                               ; preds = %26
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.hal_aes_decrypt, i32 0, i32 0), i32 noundef 261, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5.7, i32 0, i32 0), i32 noundef %28) #13, !dbg !3349
  br label %57, !dbg !3351

30:                                               ; preds = %26, %26, %26
  %31 = tail call i32 @hal_crypt_lock_take() #14, !dbg !3352
  %32 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 6, void (i32)* noundef nonnull @aes_operation_done) #13, !dbg !3353
  %33 = tail call i32 @hal_nvic_set_priority(i32 noundef 6, i32 noundef 5) #13, !dbg !3354
  %34 = tail call i32 @hal_nvic_enable_irq(i32 noundef 6) #13, !dbg !3355
  %35 = load i32, i32* %27, align 4, !dbg !3356
  %36 = trunc i32 %35 to i8, !dbg !3357
  %37 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %2, i32 0, i32 0, !dbg !3358
  %38 = load i8*, i8** %37, align 4, !dbg !3358
  %39 = tail call i32 @aes_set_key(i8 noundef zeroext %36, i8* noundef %38) #13, !dbg !3359
  %40 = icmp eq i8 %4, 1, !dbg !3360
  %41 = zext i1 %40 to i8
  %42 = tail call i32 @aes_configure(i8 noundef zeroext 1, i8 noundef zeroext %41) #13, !dbg !3362
  %43 = tail call fastcc i32 @do_aes_decrypt(%struct.hal_aes_buffer_t* noundef nonnull %0, %struct.hal_aes_buffer_t* noundef nonnull %1, i8* noundef nonnull %3) #14, !dbg !3363
  %44 = icmp eq i32 %43, 0, !dbg !3365
  br i1 %44, label %46, label %45, !dbg !3366

45:                                               ; preds = %30
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.hal_aes_decrypt, i32 0, i32 0), i32 noundef 280, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0)) #13, !dbg !3367
  tail call void @hal_crypt_lock_give() #14, !dbg !3369
  br label %57, !dbg !3370

46:                                               ; preds = %30
  %47 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %0, i32 0, i32 0, !dbg !3371
  %48 = load i8*, i8** %47, align 4, !dbg !3371
  %49 = load i32, i32* %15, align 4, !dbg !3372
  %50 = add i32 %49, -1, !dbg !3373
  %51 = getelementptr inbounds i8, i8* %48, i32 %50, !dbg !3374
  %52 = load i8, i8* %51, align 1, !dbg !3374
  call void @llvm.dbg.value(metadata i8 %52, metadata !3322, metadata !DIExpression()), !dbg !3323
  %53 = select i1 %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), !dbg !3375
  tail call void (i8*, i32, i8*, i8*, i32, ...) @log_hal_dump_internal(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.hal_aes_decrypt, i32 0, i32 0), i32 noundef 286, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0), i8* noundef %48, i32 noundef %49, i8* noundef %53) #13, !dbg !3375
  %54 = load i32, i32* %15, align 4, !dbg !3376
  %55 = zext i8 %52 to i32, !dbg !3377
  %56 = sub i32 %54, %55, !dbg !3378
  store i32 %56, i32* %21, align 4, !dbg !3379
  tail call void @hal_crypt_lock_give() #14, !dbg !3380
  br label %57

57:                                               ; preds = %46, %45, %29, %25, %19, %13
  %58 = phi i32 [ -1, %13 ], [ -1, %19 ], [ -1, %25 ], [ -1, %29 ], [ -1, %45 ], [ 0, %46 ], !dbg !3323
  ret i32 %58, !dbg !3381
}

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @do_aes_decrypt(%struct.hal_aes_buffer_t* nocapture noundef readonly %0, %struct.hal_aes_buffer_t* nocapture noundef readonly %1, i8* noundef %2) unnamed_addr #0 !dbg !3382 {
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %0, metadata !3386, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %1, metadata !3387, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i8* %2, metadata !3388, metadata !DIExpression()), !dbg !3391
  store volatile i8 0, i8* @g_aes_op_done, align 1, !dbg !3392
  %4 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %1, i32 0, i32 0, !dbg !3393
  %5 = load i8*, i8** %4, align 4, !dbg !3393
  %6 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %1, i32 0, i32 1, !dbg !3394
  %7 = load i32, i32* %6, align 4, !dbg !3394
  %8 = trunc i32 %7 to i16, !dbg !3395
  %9 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %0, i32 0, i32 0, !dbg !3396
  %10 = load i8*, i8** %9, align 4, !dbg !3396
  %11 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %0, i32 0, i32 1, !dbg !3397
  %12 = load i32, i32* %11, align 4, !dbg !3397
  %13 = trunc i32 %12 to i16, !dbg !3398
  %14 = tail call i32 @aes_operate(i8* noundef %5, i16 noundef zeroext %8, i8* noundef %10, i16 noundef zeroext %13, i8* noundef %2, i8 noundef zeroext 0) #13, !dbg !3399
  call void @llvm.dbg.value(metadata i32 %14, metadata !3389, metadata !DIExpression()), !dbg !3391
  %15 = icmp slt i32 %14, 0, !dbg !3400
  br i1 %15, label %16, label %17, !dbg !3402

16:                                               ; preds = %3
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.do_aes_decrypt, i32 0, i32 0), i32 noundef 128, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0)) #13, !dbg !3403
  br label %25, !dbg !3405

17:                                               ; preds = %3, %21
  %18 = phi i32 [ %22, %21 ], [ 0, %3 ], !dbg !3391
  call void @llvm.dbg.value(metadata i32 %18, metadata !3390, metadata !DIExpression()), !dbg !3391
  %19 = load volatile i8, i8* @g_aes_op_done, align 1, !dbg !3406, !range !3152
  %20 = icmp eq i8 %19, 0, !dbg !3406
  br i1 %20, label %21, label %25, !dbg !3407

21:                                               ; preds = %17
  %22 = add nuw nsw i32 %18, 1, !dbg !3408
  call void @llvm.dbg.value(metadata i32 %22, metadata !3390, metadata !DIExpression()), !dbg !3391
  %23 = icmp eq i32 %22, 268435457, !dbg !3410
  br i1 %23, label %24, label %17, !dbg !3412, !llvm.loop !3413

24:                                               ; preds = %21
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.do_aes_decrypt, i32 0, i32 0), i32 noundef 136, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0)) #13, !dbg !3415
  br label %25, !dbg !3417

25:                                               ; preds = %17, %24, %16
  %26 = phi i32 [ -1, %16 ], [ -1, %24 ], [ 0, %17 ], !dbg !3391
  ret i32 %26, !dbg !3418
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_aes_cbc_encrypt(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2, i8* noundef %3) local_unnamed_addr #0 !dbg !3419 {
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %0, metadata !3423, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %1, metadata !3424, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %2, metadata !3425, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata i8* %3, metadata !3426, metadata !DIExpression()), !dbg !3427
  %5 = tail call i32 @hal_aes_encrypt_with_padding(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2, i8* noundef %3, i8 noundef zeroext 1) #14, !dbg !3428
  ret i32 %5, !dbg !3429
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_aes_cbc_decrypt(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2, i8* noundef %3) local_unnamed_addr #0 !dbg !3430 {
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %0, metadata !3432, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %1, metadata !3433, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %2, metadata !3434, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.value(metadata i8* %3, metadata !3435, metadata !DIExpression()), !dbg !3436
  %5 = tail call i32 @hal_aes_decrypt(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2, i8* noundef %3, i8 noundef zeroext 1) #14, !dbg !3437
  ret i32 %5, !dbg !3438
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_aes_ecb_encrypt(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2) local_unnamed_addr #0 !dbg !3439 {
  %4 = alloca [16 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %0, metadata !3443, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %1, metadata !3444, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %2, metadata !3445, metadata !DIExpression()), !dbg !3447
  %5 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i32 0, i32 0, !dbg !3448
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #15, !dbg !3448
  call void @llvm.dbg.declare(metadata [16 x i8]* %4, metadata !3446, metadata !DIExpression()), !dbg !3449
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(16) %5, i8 0, i32 16, i1 false), !dbg !3449
  %6 = call i32 @hal_aes_encrypt_with_padding(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2, i8* noundef nonnull %5, i8 noundef zeroext 0) #14, !dbg !3450
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #15, !dbg !3451
  ret i32 %6, !dbg !3452
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_aes_ecb_decrypt(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2) local_unnamed_addr #0 !dbg !3453 {
  %4 = alloca [16 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %0, metadata !3455, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %1, metadata !3456, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %2, metadata !3457, metadata !DIExpression()), !dbg !3459
  %5 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i32 0, i32 0, !dbg !3460
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #15, !dbg !3460
  call void @llvm.dbg.declare(metadata [16 x i8]* %4, metadata !3458, metadata !DIExpression()), !dbg !3461
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(16) %5, i8 0, i32 16, i1 false), !dbg !3461
  %6 = call i32 @hal_aes_decrypt(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2, i8* noundef nonnull %5, i8 noundef zeroext 0) #14, !dbg !3462
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #15, !dbg !3463
  ret i32 %6, !dbg !3464
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_nvic_init() local_unnamed_addr #9 !dbg !3465 {
  ret i32 0, !dbg !3469
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_enable_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !3470 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3474, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i32 -1, metadata !3475, metadata !DIExpression()), !dbg !3476
  %2 = icmp ugt i32 %0, 95, !dbg !3477
  br i1 %2, label %4, label %3, !dbg !3477

3:                                                ; preds = %1
  tail call fastcc void @NVIC_EnableIRQ(i32 noundef %0) #14, !dbg !3479
  call void @llvm.dbg.value(metadata i32 0, metadata !3475, metadata !DIExpression()), !dbg !3476
  br label %4, !dbg !3481

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3476
  ret i32 %5, !dbg !3482
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_EnableIRQ(i32 noundef %0) unnamed_addr #3 !dbg !3483 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3487, metadata !DIExpression()), !dbg !3488
  %2 = and i32 %0, 31, !dbg !3489
  %3 = shl nuw i32 1, %2, !dbg !3490
  %4 = lshr i32 %0, 5, !dbg !3491
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813312 to [8 x i32]*), i32 0, i32 %4, !dbg !3492
  store volatile i32 %3, i32* %5, align 4, !dbg !3493
  ret void, !dbg !3494
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_disable_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !3495 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3497, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i32 -1, metadata !3498, metadata !DIExpression()), !dbg !3499
  %2 = icmp ugt i32 %0, 95, !dbg !3500
  br i1 %2, label %4, label %3, !dbg !3500

3:                                                ; preds = %1
  tail call fastcc void @NVIC_DisableIRQ(i32 noundef %0) #14, !dbg !3502
  call void @llvm.dbg.value(metadata i32 0, metadata !3498, metadata !DIExpression()), !dbg !3499
  br label %4, !dbg !3504

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3499
  ret i32 %5, !dbg !3505
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_DisableIRQ(i32 noundef %0) unnamed_addr #3 !dbg !3506 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3508, metadata !DIExpression()), !dbg !3509
  %2 = and i32 %0, 31, !dbg !3510
  %3 = shl nuw i32 1, %2, !dbg !3511
  %4 = lshr i32 %0, 5, !dbg !3512
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813184 to [8 x i32]*), i32 0, i32 %4, !dbg !3513
  store volatile i32 %3, i32* %5, align 4, !dbg !3514
  ret void, !dbg !3515
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_pending_irq(i32 noundef %0) local_unnamed_addr #4 !dbg !3516 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3520, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i32 255, metadata !3521, metadata !DIExpression()), !dbg !3522
  %2 = icmp ugt i32 %0, 95, !dbg !3523
  br i1 %2, label %5, label %3, !dbg !3523

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) #14, !dbg !3525
  call void @llvm.dbg.value(metadata i32 %4, metadata !3521, metadata !DIExpression()), !dbg !3522
  br label %5, !dbg !3527

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 255, %1 ], !dbg !3522
  ret i32 %6, !dbg !3528
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) unnamed_addr #4 !dbg !3529 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3533, metadata !DIExpression()), !dbg !3534
  %2 = lshr i32 %0, 5, !dbg !3535
  %3 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %2, !dbg !3536
  %4 = load volatile i32, i32* %3, align 4, !dbg !3536
  %5 = and i32 %0, 31, !dbg !3537
  %6 = lshr i32 %4, %5, !dbg !3538
  %7 = and i32 %6, 1, !dbg !3538
  ret i32 %7, !dbg !3539
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_pending_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !3540 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3542, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i32 -1, metadata !3543, metadata !DIExpression()), !dbg !3544
  %2 = icmp ugt i32 %0, 95, !dbg !3545
  br i1 %2, label %4, label %3, !dbg !3545

3:                                                ; preds = %1
  tail call fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) #14, !dbg !3547
  call void @llvm.dbg.value(metadata i32 0, metadata !3543, metadata !DIExpression()), !dbg !3544
  br label %4, !dbg !3549

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3544
  ret i32 %5, !dbg !3550
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) unnamed_addr #3 !dbg !3551 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3553, metadata !DIExpression()), !dbg !3554
  %2 = and i32 %0, 31, !dbg !3555
  %3 = shl nuw i32 1, %2, !dbg !3556
  %4 = lshr i32 %0, 5, !dbg !3557
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %4, !dbg !3558
  store volatile i32 %3, i32* %5, align 4, !dbg !3559
  ret void, !dbg !3560
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_clear_pending_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !3561 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3563, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i32 -1, metadata !3564, metadata !DIExpression()), !dbg !3565
  %2 = icmp ugt i32 %0, 95, !dbg !3566
  br i1 %2, label %4, label %3, !dbg !3566

3:                                                ; preds = %1
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #14, !dbg !3568
  call void @llvm.dbg.value(metadata i32 0, metadata !3564, metadata !DIExpression()), !dbg !3565
  br label %4, !dbg !3570

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3565
  ret i32 %5, !dbg !3571
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) unnamed_addr #3 !dbg !3572 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3574, metadata !DIExpression()), !dbg !3575
  %2 = and i32 %0, 31, !dbg !3576
  %3 = shl nuw i32 1, %2, !dbg !3577
  %4 = lshr i32 %0, 5, !dbg !3578
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812928 to [8 x i32]*), i32 0, i32 %4, !dbg !3579
  store volatile i32 %3, i32* %5, align 4, !dbg !3580
  ret void, !dbg !3581
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_priority(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !3582 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3586, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 %1, metadata !3587, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 -1, metadata !3588, metadata !DIExpression()), !dbg !3589
  %3 = icmp ugt i32 %0, 95, !dbg !3590
  br i1 %3, label %5, label %4, !dbg !3590

4:                                                ; preds = %2
  tail call fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) #14, !dbg !3592
  call void @llvm.dbg.value(metadata i32 0, metadata !3588, metadata !DIExpression()), !dbg !3589
  br label %5, !dbg !3594

5:                                                ; preds = %2, %4
  %6 = phi i32 [ 0, %4 ], [ -3, %2 ], !dbg !3589
  ret i32 %6, !dbg !3595
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) unnamed_addr #3 !dbg !3596 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3600, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i32 %1, metadata !3601, metadata !DIExpression()), !dbg !3602
  %3 = trunc i32 %1 to i8, !dbg !3603
  %4 = shl i8 %3, 5, !dbg !3603
  %5 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !3606
  store volatile i8 %4, i8* %5, align 1, !dbg !3607
  ret void, !dbg !3608
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_priority(i32 noundef %0) local_unnamed_addr #4 !dbg !3609 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3611, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i32 68, metadata !3612, metadata !DIExpression()), !dbg !3613
  %2 = icmp ugt i32 %0, 95, !dbg !3614
  br i1 %2, label %5, label %3, !dbg !3614

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPriority(i32 noundef %0) #14, !dbg !3616
  call void @llvm.dbg.value(metadata i32 %4, metadata !3612, metadata !DIExpression()), !dbg !3613
  br label %5, !dbg !3618

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 68, %1 ], !dbg !3613
  ret i32 %6, !dbg !3619
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPriority(i32 noundef %0) unnamed_addr #4 !dbg !3620 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3622, metadata !DIExpression()), !dbg !3623
  %2 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !3624
  %3 = load volatile i8, i8* %2, align 1, !dbg !3624
  %4 = lshr i8 %3, 5, !dbg !3627
  %5 = zext i8 %4 to i32, !dbg !3627
  ret i32 %5, !dbg !3628
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @Flash_ReturnReady() local_unnamed_addr #9 !dbg !3629 {
  ret void, !dbg !3630
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @isrC_main() local_unnamed_addr #0 section ".ramTEXT" !dbg !3631 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !3633, metadata !DIExpression()), !dbg !3635
  %1 = tail call fastcc i32 @get_current_irq() #14, !dbg !3636
  call void @llvm.dbg.value(metadata i32 %1, metadata !3634, metadata !DIExpression()), !dbg !3635
  %2 = icmp ugt i32 %1, 95, !dbg !3637
  br i1 %2, label %12, label %3, !dbg !3637

3:                                                ; preds = %0
  %4 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 0, !dbg !3639
  %5 = load void (i32)*, void (i32)** %4, align 4, !dbg !3639
  %6 = icmp eq void (i32)* %5, null, !dbg !3641
  br i1 %6, label %7, label %8, !dbg !3642

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 -4, metadata !3633, metadata !DIExpression()), !dbg !3635
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.isrC_main, i32 0, i32 0), i32 noundef 194, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0)) #13, !dbg !3643
  br label %12, !dbg !3645

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @get_pending_irq() #14, !dbg !3646
  %10 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 1, !dbg !3648
  store i32 %9, i32* %10, align 4, !dbg !3649
  %11 = load void (i32)*, void (i32)** %4, align 4, !dbg !3650
  tail call void %11(i32 noundef %1) #13, !dbg !3651
  call void @llvm.dbg.value(metadata i32 0, metadata !3633, metadata !DIExpression()), !dbg !3635
  br label %12, !dbg !3652

12:                                               ; preds = %0, %8, %7
  %13 = phi i32 [ -4, %7 ], [ 0, %8 ], [ -3, %0 ], !dbg !3635
  ret i32 %13, !dbg !3653
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_current_irq() unnamed_addr #4 !dbg !3654 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !3657
  %2 = and i32 %1, 511, !dbg !3658
  call void @llvm.dbg.value(metadata i32 %2, metadata !3656, metadata !DIExpression()), !dbg !3659
  %3 = add nsw i32 %2, -16, !dbg !3660
  ret i32 %3, !dbg !3661
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_pending_irq() unnamed_addr #4 !dbg !3662 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !3663
  %2 = lshr i32 %1, 22, !dbg !3664
  %3 = and i32 %2, 1, !dbg !3664
  ret i32 %3, !dbg !3665
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_register_isr_handler(i32 noundef %0, void (i32)* noundef %1) local_unnamed_addr #0 !dbg !3666 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3671, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata void (i32)* %1, metadata !3672, metadata !DIExpression()), !dbg !3674
  %3 = icmp ugt i32 %0, 95, !dbg !3675
  %4 = icmp eq void (i32)* %1, null
  %5 = or i1 %3, %4, !dbg !3675
  br i1 %5, label %10, label %6, !dbg !3675

6:                                                ; preds = %2
  %7 = tail call i32 @save_and_set_interrupt_mask() #13, !dbg !3677
  call void @llvm.dbg.value(metadata i32 %7, metadata !3673, metadata !DIExpression()), !dbg !3674
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #14, !dbg !3678
  %8 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 0, !dbg !3679
  store void (i32)* %1, void (i32)** %8, align 4, !dbg !3680
  %9 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 1, !dbg !3681
  store i32 0, i32* %9, align 4, !dbg !3682
  tail call void @restore_interrupt_mask(i32 noundef %7) #13, !dbg !3683
  br label %10, !dbg !3684

10:                                               ; preds = %2, %6
  %11 = phi i32 [ 0, %6 ], [ -2, %2 ], !dbg !3674
  ret i32 %11, !dbg !3685
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_save_and_set_interrupt_mask(i32* nocapture noundef writeonly %0) local_unnamed_addr #0 !dbg !3686 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3690, metadata !DIExpression()), !dbg !3691
  %2 = tail call i32 @save_and_set_interrupt_mask() #13, !dbg !3692
  store i32 %2, i32* %0, align 4, !dbg !3693
  ret i32 0, !dbg !3694
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #0 !dbg !3695 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3699, metadata !DIExpression()), !dbg !3700
  tail call void @restore_interrupt_mask(i32 noundef %0) #13, !dbg !3701
  ret i32 0, !dbg !3702
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pinmux_set_function(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !3703 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3709, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i8 %1, metadata !3710, metadata !DIExpression()), !dbg !3712
  %3 = icmp ugt i32 %0, 60, !dbg !3713
  br i1 %3, label %11, label %4, !dbg !3715

4:                                                ; preds = %2
  %5 = icmp ugt i8 %1, 15, !dbg !3716
  br i1 %5, label %11, label %6, !dbg !3718

6:                                                ; preds = %4
  %7 = zext i8 %1 to i32, !dbg !3719
  %8 = tail call i32 @pinmux_config(i32 noundef %0, i32 noundef %7) #13, !dbg !3720
  call void @llvm.dbg.value(metadata i32 %8, metadata !3711, metadata !DIExpression()), !dbg !3712
  %9 = icmp slt i32 %8, 0, !dbg !3721
  %10 = select i1 %9, i32 -3, i32 0, !dbg !3721
  br label %11, !dbg !3722

11:                                               ; preds = %4, %2, %6
  %12 = phi i32 [ %10, %6 ], [ -2, %2 ], [ -1, %4 ], !dbg !3712
  ret i32 %12, !dbg !3723
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_init(i32 noundef %0) local_unnamed_addr #9 !dbg !3724 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3729, metadata !DIExpression()), !dbg !3730
  ret i32 0, !dbg !3731
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_deinit(i32 noundef %0) local_unnamed_addr #9 !dbg !3732 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3734, metadata !DIExpression()), !dbg !3735
  ret i32 0, !dbg !3736
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_input(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #0 !dbg !3737 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3742, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata i32* %1, metadata !3743, metadata !DIExpression()), !dbg !3752
  %4 = icmp eq i32* %1, null, !dbg !3753
  br i1 %4, label %12, label %5, !dbg !3755

5:                                                ; preds = %2
  %6 = icmp ugt i32 %0, 60, !dbg !3756
  br i1 %6, label %12, label %7, !dbg !3758

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !3759
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #15, !dbg !3759
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #13, !dbg !3759
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 2, !dbg !3759
  %10 = load i8, i8* %9, align 1, !dbg !3759
  call void @llvm.dbg.value(metadata i8 %10, metadata !3744, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !3752
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #15, !dbg !3759
  %11 = zext i8 %10 to i32, !dbg !3760
  store i32 %11, i32* %1, align 4, !dbg !3761
  br label %12, !dbg !3762

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -1, %2 ], [ -2, %5 ], !dbg !3752
  ret i32 %13, !dbg !3763
}

; Function Attrs: optsize
declare dso_local void @gpio_get_status(%struct.gpio_status* sret(%struct.gpio_status) align 4, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !3764 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3768, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata i32 %1, metadata !3769, metadata !DIExpression()), !dbg !3771
  %3 = icmp ugt i32 %0, 60, !dbg !3772
  br i1 %3, label %9, label %4, !dbg !3774

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !3775
  %6 = tail call i32 @gpio_write(i32 noundef %0, i8 noundef zeroext %5) #13, !dbg !3776
  call void @llvm.dbg.value(metadata i32 %6, metadata !3770, metadata !DIExpression()), !dbg !3771
  %7 = icmp slt i32 %6, 0, !dbg !3777
  %8 = select i1 %7, i32 -3, i32 0, !dbg !3777
  br label %9, !dbg !3778

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !3771
  ret i32 %10, !dbg !3779
}

; Function Attrs: optsize
declare dso_local i32 @gpio_write(i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_output(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #0 !dbg !3780 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3782, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.value(metadata i32* %1, metadata !3783, metadata !DIExpression()), !dbg !3785
  %4 = icmp ugt i32 %0, 60, !dbg !3786
  br i1 %4, label %12, label %5, !dbg !3788

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !3789
  br i1 %6, label %12, label %7, !dbg !3791

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !3792
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #15, !dbg !3792
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #13, !dbg !3792
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 3, !dbg !3792
  %10 = load i8, i8* %9, align 2, !dbg !3792
  call void @llvm.dbg.value(metadata i8 %10, metadata !3784, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !3785
  call void @llvm.dbg.value(metadata i8 undef, metadata !3784, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !3785
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #15, !dbg !3792
  %11 = zext i8 %10 to i32, !dbg !3793
  store i32 %11, i32* %1, align 4, !dbg !3794
  br label %12, !dbg !3795

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !3785
  ret i32 %13, !dbg !3796
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_direction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !3797 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3802, metadata !DIExpression()), !dbg !3805
  call void @llvm.dbg.value(metadata i32 %1, metadata !3803, metadata !DIExpression()), !dbg !3805
  %3 = icmp ugt i32 %0, 60, !dbg !3806
  br i1 %3, label %8, label %4, !dbg !3808

4:                                                ; preds = %2
  %5 = tail call i32 @gpio_direction(i32 noundef %0, i32 noundef %1) #13, !dbg !3809
  call void @llvm.dbg.value(metadata i32 %5, metadata !3804, metadata !DIExpression()), !dbg !3805
  %6 = icmp slt i32 %5, 0, !dbg !3810
  %7 = select i1 %6, i32 -3, i32 0, !dbg !3810
  br label %8, !dbg !3811

8:                                                ; preds = %2, %4
  %9 = phi i32 [ %7, %4 ], [ -2, %2 ], !dbg !3805
  ret i32 %9, !dbg !3812
}

; Function Attrs: optsize
declare dso_local i32 @gpio_direction(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_direction(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #0 !dbg !3813 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3818, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata i32* %1, metadata !3819, metadata !DIExpression()), !dbg !3821
  %4 = icmp ugt i32 %0, 60, !dbg !3822
  br i1 %4, label %13, label %5, !dbg !3824

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !3825
  br i1 %6, label %13, label %7, !dbg !3827

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !3828
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #15, !dbg !3828
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #13, !dbg !3828
  call void @llvm.dbg.value(metadata i32 undef, metadata !3820, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3821
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 1, !dbg !3828
  %10 = load i8, i8* %9, align 4, !dbg !3828
  call void @llvm.dbg.value(metadata i8 %10, metadata !3820, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !3821
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #15, !dbg !3828
  %11 = icmp ne i8 %10, 0, !dbg !3829
  %12 = zext i1 %11 to i32, !dbg !3829
  store i32 %12, i32* %1, align 4, !dbg !3830
  br label %13, !dbg !3831

13:                                               ; preds = %5, %2, %7
  %14 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !3821
  ret i32 %14, !dbg !3832
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_toggle_pin(i32 noundef %0) local_unnamed_addr #0 !dbg !3833 {
  %2 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3835, metadata !DIExpression()), !dbg !3837
  %3 = icmp ugt i32 %0, 60, !dbg !3838
  br i1 %3, label %11, label %4, !dbg !3840

4:                                                ; preds = %1
  %5 = bitcast %struct.gpio_status* %2 to i8*, !dbg !3841
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #15, !dbg !3841
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %2, i32 noundef %0) #13, !dbg !3841
  %6 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %2, i32 0, i32 3, !dbg !3841
  %7 = load i8, i8* %6, align 2, !dbg !3841
  call void @llvm.dbg.value(metadata i8 %7, metadata !3836, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !3837
  call void @llvm.dbg.value(metadata i8 undef, metadata !3836, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !3837
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #15, !dbg !3841
  %8 = xor i8 %7, 1, !dbg !3842
  %9 = zext i8 %8 to i32, !dbg !3842
  %10 = call i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %9) #14, !dbg !3843
  br label %11, !dbg !3844

11:                                               ; preds = %1, %4
  %12 = phi i32 [ %10, %4 ], [ -2, %1 ], !dbg !3837
  ret i32 %12, !dbg !3845
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_up(i32 noundef %0) local_unnamed_addr #0 !dbg !3846 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3848, metadata !DIExpression()), !dbg !3850
  %2 = icmp ugt i32 %0, 60, !dbg !3851
  br i1 %2, label %10, label %3, !dbg !3853

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #13, !dbg !3854
  call void @llvm.dbg.value(metadata i32 %4, metadata !3849, metadata !DIExpression()), !dbg !3850
  %5 = icmp slt i32 %4, 0, !dbg !3855
  br i1 %5, label %10, label %6, !dbg !3857

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullUp(i32 noundef %0) #13, !dbg !3858
  call void @llvm.dbg.value(metadata i32 %7, metadata !3849, metadata !DIExpression()), !dbg !3850
  %8 = icmp slt i32 %7, 0, !dbg !3859
  %9 = select i1 %8, i32 -3, i32 0, !dbg !3859
  br label %10, !dbg !3860

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !3850
  ret i32 %11, !dbg !3861
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare dso_local i32 @gpio_PullUp(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_down(i32 noundef %0) local_unnamed_addr #0 !dbg !3862 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3864, metadata !DIExpression()), !dbg !3866
  %2 = icmp ugt i32 %0, 60, !dbg !3867
  br i1 %2, label %10, label %3, !dbg !3869

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #13, !dbg !3870
  call void @llvm.dbg.value(metadata i32 %4, metadata !3865, metadata !DIExpression()), !dbg !3866
  %5 = icmp slt i32 %4, 0, !dbg !3871
  br i1 %5, label %10, label %6, !dbg !3873

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullDown(i32 noundef %0) #13, !dbg !3874
  call void @llvm.dbg.value(metadata i32 %7, metadata !3865, metadata !DIExpression()), !dbg !3866
  %8 = icmp slt i32 %7, 0, !dbg !3875
  %9 = select i1 %8, i32 -3, i32 0, !dbg !3875
  br label %10, !dbg !3876

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !3866
  ret i32 %11, !dbg !3877
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDown(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_disable_pull(i32 noundef %0) local_unnamed_addr #0 !dbg !3878 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3880, metadata !DIExpression()), !dbg !3882
  %2 = icmp ugt i32 %0, 60, !dbg !3883
  br i1 %2, label %7, label %3, !dbg !3885

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #13, !dbg !3886
  call void @llvm.dbg.value(metadata i32 %4, metadata !3881, metadata !DIExpression()), !dbg !3882
  %5 = icmp slt i32 %4, 0, !dbg !3887
  %6 = select i1 %5, i32 -3, i32 0, !dbg !3887
  br label %7, !dbg !3888

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ -2, %1 ], !dbg !3882
  ret i32 %8, !dbg !3889
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_driving_current(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !3890 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3894, metadata !DIExpression()), !dbg !3897
  call void @llvm.dbg.value(metadata i32 %1, metadata !3895, metadata !DIExpression()), !dbg !3897
  %3 = icmp ugt i32 %0, 60, !dbg !3898
  br i1 %3, label %9, label %4, !dbg !3900

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !3901
  %6 = tail call i32 @gpio_SetDriving(i32 noundef %0, i8 noundef zeroext %5) #13, !dbg !3902
  call void @llvm.dbg.value(metadata i32 %6, metadata !3896, metadata !DIExpression()), !dbg !3897
  %7 = icmp slt i32 %6, 0, !dbg !3903
  %8 = select i1 %7, i32 -3, i32 0, !dbg !3903
  br label %9, !dbg !3904

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !3897
  ret i32 %10, !dbg !3905
}

; Function Attrs: optsize
declare dso_local i32 @gpio_SetDriving(i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_driving_current(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !3906 {
  %3 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3911, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata i32* %1, metadata !3912, metadata !DIExpression()), !dbg !3915
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #15, !dbg !3916
  %4 = icmp ugt i32 %0, 60, !dbg !3917
  br i1 %4, label %11, label %5, !dbg !3919

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3914, metadata !DIExpression(DW_OP_deref)), !dbg !3915
  %6 = call i32 @gpio_GetDriving(i32 noundef %0, i8* noundef nonnull %3) #13, !dbg !3920
  call void @llvm.dbg.value(metadata i32 %6, metadata !3913, metadata !DIExpression()), !dbg !3915
  %7 = load i8, i8* %3, align 1, !dbg !3921
  call void @llvm.dbg.value(metadata i8 %7, metadata !3914, metadata !DIExpression()), !dbg !3915
  %8 = zext i8 %7 to i32, !dbg !3922
  store i32 %8, i32* %1, align 4, !dbg !3923
  %9 = icmp slt i32 %6, 0, !dbg !3924
  %10 = select i1 %9, i32 -3, i32 0, !dbg !3924
  br label %11, !dbg !3925

11:                                               ; preds = %2, %5
  %12 = phi i32 [ %10, %5 ], [ -2, %2 ], !dbg !3915
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #15, !dbg !3926
  ret i32 %12, !dbg !3926
}

; Function Attrs: optsize
declare dso_local i32 @gpio_GetDriving(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_sha1_init(%struct.hal_sha_context_t* noundef %0) local_unnamed_addr #0 !dbg !3927 {
  call void @llvm.dbg.value(metadata %struct.hal_sha_context_t* %0, metadata !3941, metadata !DIExpression()), !dbg !3943
  %2 = tail call i32 @hal_crypt_lock_take() #13, !dbg !3944
  %3 = bitcast %struct.hal_sha_context_t* %0 to %struct.hal_sha_context_t*, !dbg !3945
  %4 = tail call i32 @crypt_sha_init(%struct.hal_sha_context_t* noundef %3, i32 noundef 0) #13, !dbg !3946
  call void @llvm.dbg.value(metadata i32 %4, metadata !3942, metadata !DIExpression()), !dbg !3943
  tail call void @hal_crypt_lock_give() #13, !dbg !3947
  ret i32 %4, !dbg !3948
}

; Function Attrs: optsize
declare dso_local i32 @crypt_sha_init(%struct.hal_sha_context_t* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_sha1_append(%struct.hal_sha_context_t* noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !3949 {
  call void @llvm.dbg.value(metadata %struct.hal_sha_context_t* %0, metadata !3953, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i8* %1, metadata !3954, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i32 %2, metadata !3955, metadata !DIExpression()), !dbg !3956
  %4 = icmp eq %struct.hal_sha_context_t* %0, null, !dbg !3957
  br i1 %4, label %5, label %6, !dbg !3959

5:                                                ; preds = %3
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.hal_sha1_append, i32 0, i32 0), i32 noundef 58, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0)) #13, !dbg !3960
  br label %26, !dbg !3962

6:                                                ; preds = %3
  %7 = icmp eq i8* %1, null, !dbg !3963
  br i1 %7, label %8, label %9, !dbg !3965

8:                                                ; preds = %6
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.hal_sha1_append, i32 0, i32 0), i32 noundef 62, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.24, i32 0, i32 0)) #13, !dbg !3966
  br label %26, !dbg !3968

9:                                                ; preds = %6
  %10 = tail call i32 @hal_crypt_lock_take() #13, !dbg !3969
  call void @llvm.dbg.value(metadata i32 %2, metadata !3955, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i8* %1, metadata !3954, metadata !DIExpression()), !dbg !3956
  %11 = icmp ugt i32 %2, 255, !dbg !3970
  br i1 %11, label %12, label %21, !dbg !3973

12:                                               ; preds = %9
  %13 = bitcast %struct.hal_sha_context_t* %0 to %struct.hal_sha_context_t*
  br label %14, !dbg !3973

14:                                               ; preds = %12, %14
  %15 = phi i32 [ %2, %12 ], [ %19, %14 ]
  %16 = phi i8* [ %1, %12 ], [ %18, %14 ]
  call void @llvm.dbg.value(metadata i32 %15, metadata !3955, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i8* %16, metadata !3954, metadata !DIExpression()), !dbg !3956
  %17 = tail call i32 @crypt_sha_append(%struct.hal_sha_context_t* noundef nonnull %13, i8* noundef nonnull %16, i32 noundef 256, i32 noundef 0) #13, !dbg !3974
  %18 = getelementptr inbounds i8, i8* %16, i32 256, !dbg !3976
  call void @llvm.dbg.value(metadata i8* %18, metadata !3954, metadata !DIExpression()), !dbg !3956
  %19 = add i32 %15, -256, !dbg !3977
  call void @llvm.dbg.value(metadata i32 %19, metadata !3955, metadata !DIExpression()), !dbg !3956
  %20 = icmp ugt i32 %19, 255, !dbg !3970
  br i1 %20, label %14, label %21, !dbg !3973, !llvm.loop !3978

21:                                               ; preds = %14, %9
  %22 = phi i8* [ %1, %9 ], [ %18, %14 ]
  %23 = phi i32 [ %2, %9 ], [ %19, %14 ]
  %24 = bitcast %struct.hal_sha_context_t* %0 to %struct.hal_sha_context_t*, !dbg !3981
  %25 = tail call i32 @crypt_sha_append(%struct.hal_sha_context_t* noundef nonnull %24, i8* noundef nonnull %22, i32 noundef %23, i32 noundef 0) #13, !dbg !3983
  tail call void @hal_crypt_lock_give() #13, !dbg !3984
  br label %26, !dbg !3985

26:                                               ; preds = %21, %8, %5
  %27 = phi i32 [ -1, %5 ], [ -1, %8 ], [ 0, %21 ], !dbg !3956
  ret i32 %27, !dbg !3986
}

; Function Attrs: optsize
declare dso_local i32 @crypt_sha_append(%struct.hal_sha_context_t* noundef, i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_sha1_end(%struct.hal_sha_context_t* noundef %0, i8* noundef %1) local_unnamed_addr #0 !dbg !3987 {
  call void @llvm.dbg.value(metadata %struct.hal_sha_context_t* %0, metadata !3991, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i8* %1, metadata !3992, metadata !DIExpression()), !dbg !3994
  %3 = tail call i32 @hal_crypt_lock_take() #13, !dbg !3995
  %4 = bitcast %struct.hal_sha_context_t* %0 to %struct.hal_sha_context_t*, !dbg !3996
  %5 = tail call i32 @crypt_sha_end(%struct.hal_sha_context_t* noundef %4, i8* noundef %1, i32 noundef 0) #13, !dbg !3997
  call void @llvm.dbg.value(metadata i32 %5, metadata !3993, metadata !DIExpression()), !dbg !3994
  tail call void @hal_crypt_lock_give() #13, !dbg !3998
  ret i32 %5, !dbg !3999
}

; Function Attrs: optsize
declare dso_local i32 @crypt_sha_end(%struct.hal_sha_context_t* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_sha224_init(%struct.hal_sha_context_t* noundef %0) local_unnamed_addr #0 !dbg !4000 {
  call void @llvm.dbg.value(metadata %struct.hal_sha_context_t* %0, metadata !4002, metadata !DIExpression()), !dbg !4004
  %2 = tail call i32 @hal_crypt_lock_take() #13, !dbg !4005
  %3 = bitcast %struct.hal_sha_context_t* %0 to %struct.hal_sha_context_t*, !dbg !4006
  %4 = tail call i32 @crypt_sha_init(%struct.hal_sha_context_t* noundef %3, i32 noundef 1) #13, !dbg !4007
  call void @llvm.dbg.value(metadata i32 %4, metadata !4003, metadata !DIExpression()), !dbg !4004
  tail call void @hal_crypt_lock_give() #13, !dbg !4008
  ret i32 %4, !dbg !4009
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_sha224_append(%struct.hal_sha_context_t* noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !4010 {
  call void @llvm.dbg.value(metadata %struct.hal_sha_context_t* %0, metadata !4012, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata i8* %1, metadata !4013, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata i32 %2, metadata !4014, metadata !DIExpression()), !dbg !4015
  %4 = icmp eq %struct.hal_sha_context_t* %0, null, !dbg !4016
  br i1 %4, label %5, label %6, !dbg !4018

5:                                                ; preds = %3
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.hal_sha224_append, i32 0, i32 0), i32 noundef 108, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0)) #13, !dbg !4019
  br label %26, !dbg !4021

6:                                                ; preds = %3
  %7 = icmp eq i8* %1, null, !dbg !4022
  br i1 %7, label %8, label %9, !dbg !4024

8:                                                ; preds = %6
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.hal_sha224_append, i32 0, i32 0), i32 noundef 112, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.24, i32 0, i32 0)) #13, !dbg !4025
  br label %26, !dbg !4027

9:                                                ; preds = %6
  %10 = tail call i32 @hal_crypt_lock_take() #13, !dbg !4028
  call void @llvm.dbg.value(metadata i32 %2, metadata !4014, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata i8* %1, metadata !4013, metadata !DIExpression()), !dbg !4015
  %11 = icmp ugt i32 %2, 255, !dbg !4029
  br i1 %11, label %12, label %21, !dbg !4032

12:                                               ; preds = %9
  %13 = bitcast %struct.hal_sha_context_t* %0 to %struct.hal_sha_context_t*
  br label %14, !dbg !4032

14:                                               ; preds = %12, %14
  %15 = phi i32 [ %2, %12 ], [ %19, %14 ]
  %16 = phi i8* [ %1, %12 ], [ %18, %14 ]
  call void @llvm.dbg.value(metadata i32 %15, metadata !4014, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata i8* %16, metadata !4013, metadata !DIExpression()), !dbg !4015
  %17 = tail call i32 @crypt_sha_append(%struct.hal_sha_context_t* noundef nonnull %13, i8* noundef nonnull %16, i32 noundef 256, i32 noundef 1) #13, !dbg !4033
  %18 = getelementptr inbounds i8, i8* %16, i32 256, !dbg !4035
  call void @llvm.dbg.value(metadata i8* %18, metadata !4013, metadata !DIExpression()), !dbg !4015
  %19 = add i32 %15, -256, !dbg !4036
  call void @llvm.dbg.value(metadata i32 %19, metadata !4014, metadata !DIExpression()), !dbg !4015
  %20 = icmp ugt i32 %19, 255, !dbg !4029
  br i1 %20, label %14, label %21, !dbg !4032, !llvm.loop !4037

21:                                               ; preds = %14, %9
  %22 = phi i8* [ %1, %9 ], [ %18, %14 ]
  %23 = phi i32 [ %2, %9 ], [ %19, %14 ]
  %24 = bitcast %struct.hal_sha_context_t* %0 to %struct.hal_sha_context_t*, !dbg !4040
  %25 = tail call i32 @crypt_sha_append(%struct.hal_sha_context_t* noundef nonnull %24, i8* noundef nonnull %22, i32 noundef %23, i32 noundef 1) #13, !dbg !4042
  tail call void @hal_crypt_lock_give() #13, !dbg !4043
  br label %26, !dbg !4044

26:                                               ; preds = %21, %8, %5
  %27 = phi i32 [ -1, %5 ], [ -1, %8 ], [ 0, %21 ], !dbg !4015
  ret i32 %27, !dbg !4045
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_sha224_end(%struct.hal_sha_context_t* noundef %0, i8* noundef %1) local_unnamed_addr #0 !dbg !4046 {
  call void @llvm.dbg.value(metadata %struct.hal_sha_context_t* %0, metadata !4048, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata i8* %1, metadata !4049, metadata !DIExpression()), !dbg !4051
  %3 = tail call i32 @hal_crypt_lock_take() #13, !dbg !4052
  %4 = bitcast %struct.hal_sha_context_t* %0 to %struct.hal_sha_context_t*, !dbg !4053
  %5 = tail call i32 @crypt_sha_end(%struct.hal_sha_context_t* noundef %4, i8* noundef %1, i32 noundef 1) #13, !dbg !4054
  call void @llvm.dbg.value(metadata i32 %5, metadata !4050, metadata !DIExpression()), !dbg !4051
  tail call void @hal_crypt_lock_give() #13, !dbg !4055
  ret i32 %5, !dbg !4056
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_sha256_init(%struct.hal_sha_context_t* noundef %0) local_unnamed_addr #0 !dbg !4057 {
  call void @llvm.dbg.value(metadata %struct.hal_sha_context_t* %0, metadata !4059, metadata !DIExpression()), !dbg !4061
  %2 = tail call i32 @hal_crypt_lock_take() #13, !dbg !4062
  %3 = bitcast %struct.hal_sha_context_t* %0 to %struct.hal_sha_context_t*, !dbg !4063
  %4 = tail call i32 @crypt_sha_init(%struct.hal_sha_context_t* noundef %3, i32 noundef 2) #13, !dbg !4064
  call void @llvm.dbg.value(metadata i32 %4, metadata !4060, metadata !DIExpression()), !dbg !4061
  tail call void @hal_crypt_lock_give() #13, !dbg !4065
  ret i32 %4, !dbg !4066
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_sha256_append(%struct.hal_sha_context_t* noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !4067 {
  call void @llvm.dbg.value(metadata %struct.hal_sha_context_t* %0, metadata !4069, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i8* %1, metadata !4070, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i32 %2, metadata !4071, metadata !DIExpression()), !dbg !4072
  %4 = icmp eq %struct.hal_sha_context_t* %0, null, !dbg !4073
  br i1 %4, label %5, label %6, !dbg !4075

5:                                                ; preds = %3
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.hal_sha256_append, i32 0, i32 0), i32 noundef 158, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0)) #13, !dbg !4076
  br label %26, !dbg !4078

6:                                                ; preds = %3
  %7 = icmp eq i8* %1, null, !dbg !4079
  br i1 %7, label %8, label %9, !dbg !4081

8:                                                ; preds = %6
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.hal_sha256_append, i32 0, i32 0), i32 noundef 162, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.24, i32 0, i32 0)) #13, !dbg !4082
  br label %26, !dbg !4084

9:                                                ; preds = %6
  %10 = tail call i32 @hal_crypt_lock_take() #13, !dbg !4085
  call void @llvm.dbg.value(metadata i32 %2, metadata !4071, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i8* %1, metadata !4070, metadata !DIExpression()), !dbg !4072
  %11 = icmp ugt i32 %2, 255, !dbg !4086
  br i1 %11, label %12, label %21, !dbg !4089

12:                                               ; preds = %9
  %13 = bitcast %struct.hal_sha_context_t* %0 to %struct.hal_sha_context_t*
  br label %14, !dbg !4089

14:                                               ; preds = %12, %14
  %15 = phi i32 [ %2, %12 ], [ %19, %14 ]
  %16 = phi i8* [ %1, %12 ], [ %18, %14 ]
  call void @llvm.dbg.value(metadata i32 %15, metadata !4071, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i8* %16, metadata !4070, metadata !DIExpression()), !dbg !4072
  %17 = tail call i32 @crypt_sha_append(%struct.hal_sha_context_t* noundef nonnull %13, i8* noundef nonnull %16, i32 noundef 256, i32 noundef 2) #13, !dbg !4090
  %18 = getelementptr inbounds i8, i8* %16, i32 256, !dbg !4092
  call void @llvm.dbg.value(metadata i8* %18, metadata !4070, metadata !DIExpression()), !dbg !4072
  %19 = add i32 %15, -256, !dbg !4093
  call void @llvm.dbg.value(metadata i32 %19, metadata !4071, metadata !DIExpression()), !dbg !4072
  %20 = icmp ugt i32 %19, 255, !dbg !4086
  br i1 %20, label %14, label %21, !dbg !4089, !llvm.loop !4094

21:                                               ; preds = %14, %9
  %22 = phi i8* [ %1, %9 ], [ %18, %14 ]
  %23 = phi i32 [ %2, %9 ], [ %19, %14 ]
  %24 = bitcast %struct.hal_sha_context_t* %0 to %struct.hal_sha_context_t*, !dbg !4097
  %25 = tail call i32 @crypt_sha_append(%struct.hal_sha_context_t* noundef nonnull %24, i8* noundef nonnull %22, i32 noundef %23, i32 noundef 2) #13, !dbg !4099
  tail call void @hal_crypt_lock_give() #13, !dbg !4100
  br label %26, !dbg !4101

26:                                               ; preds = %21, %8, %5
  %27 = phi i32 [ -1, %5 ], [ -1, %8 ], [ 0, %21 ], !dbg !4072
  ret i32 %27, !dbg !4102
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_sha256_end(%struct.hal_sha_context_t* noundef %0, i8* noundef %1) local_unnamed_addr #0 !dbg !4103 {
  call void @llvm.dbg.value(metadata %struct.hal_sha_context_t* %0, metadata !4105, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata i8* %1, metadata !4106, metadata !DIExpression()), !dbg !4108
  %3 = tail call i32 @hal_crypt_lock_take() #13, !dbg !4109
  %4 = bitcast %struct.hal_sha_context_t* %0 to %struct.hal_sha_context_t*, !dbg !4110
  %5 = tail call i32 @crypt_sha_end(%struct.hal_sha_context_t* noundef %4, i8* noundef %1, i32 noundef 2) #13, !dbg !4111
  call void @llvm.dbg.value(metadata i32 %5, metadata !4107, metadata !DIExpression()), !dbg !4108
  tail call void @hal_crypt_lock_give() #13, !dbg !4112
  ret i32 %5, !dbg !4113
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_sha384_init(%struct.hal_sha_context_t* noundef %0) local_unnamed_addr #0 !dbg !4114 {
  call void @llvm.dbg.value(metadata %struct.hal_sha_context_t* %0, metadata !4116, metadata !DIExpression()), !dbg !4118
  %2 = tail call i32 @hal_crypt_lock_take() #13, !dbg !4119
  %3 = bitcast %struct.hal_sha_context_t* %0 to %struct.hal_sha_context_t*, !dbg !4120
  %4 = tail call i32 @crypt_sha_init(%struct.hal_sha_context_t* noundef %3, i32 noundef 3) #13, !dbg !4121
  call void @llvm.dbg.value(metadata i32 %4, metadata !4117, metadata !DIExpression()), !dbg !4118
  tail call void @hal_crypt_lock_give() #13, !dbg !4122
  ret i32 %4, !dbg !4123
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_sha384_append(%struct.hal_sha_context_t* noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !4124 {
  call void @llvm.dbg.value(metadata %struct.hal_sha_context_t* %0, metadata !4126, metadata !DIExpression()), !dbg !4129
  call void @llvm.dbg.value(metadata i8* %1, metadata !4127, metadata !DIExpression()), !dbg !4129
  call void @llvm.dbg.value(metadata i32 %2, metadata !4128, metadata !DIExpression()), !dbg !4129
  %4 = icmp eq %struct.hal_sha_context_t* %0, null, !dbg !4130
  br i1 %4, label %5, label %6, !dbg !4132

5:                                                ; preds = %3
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.hal_sha384_append, i32 0, i32 0), i32 noundef 208, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0)) #13, !dbg !4133
  br label %26, !dbg !4135

6:                                                ; preds = %3
  %7 = icmp eq i8* %1, null, !dbg !4136
  br i1 %7, label %8, label %9, !dbg !4138

8:                                                ; preds = %6
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.hal_sha384_append, i32 0, i32 0), i32 noundef 212, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.24, i32 0, i32 0)) #13, !dbg !4139
  br label %26, !dbg !4141

9:                                                ; preds = %6
  %10 = tail call i32 @hal_crypt_lock_take() #13, !dbg !4142
  call void @llvm.dbg.value(metadata i32 %2, metadata !4128, metadata !DIExpression()), !dbg !4129
  call void @llvm.dbg.value(metadata i8* %1, metadata !4127, metadata !DIExpression()), !dbg !4129
  %11 = icmp ugt i32 %2, 255, !dbg !4143
  br i1 %11, label %12, label %21, !dbg !4146

12:                                               ; preds = %9
  %13 = bitcast %struct.hal_sha_context_t* %0 to %struct.hal_sha_context_t*
  br label %14, !dbg !4146

14:                                               ; preds = %12, %14
  %15 = phi i32 [ %2, %12 ], [ %19, %14 ]
  %16 = phi i8* [ %1, %12 ], [ %18, %14 ]
  call void @llvm.dbg.value(metadata i32 %15, metadata !4128, metadata !DIExpression()), !dbg !4129
  call void @llvm.dbg.value(metadata i8* %16, metadata !4127, metadata !DIExpression()), !dbg !4129
  %17 = tail call i32 @crypt_sha_append(%struct.hal_sha_context_t* noundef nonnull %13, i8* noundef nonnull %16, i32 noundef 256, i32 noundef 3) #13, !dbg !4147
  %18 = getelementptr inbounds i8, i8* %16, i32 256, !dbg !4149
  call void @llvm.dbg.value(metadata i8* %18, metadata !4127, metadata !DIExpression()), !dbg !4129
  %19 = add i32 %15, -256, !dbg !4150
  call void @llvm.dbg.value(metadata i32 %19, metadata !4128, metadata !DIExpression()), !dbg !4129
  %20 = icmp ugt i32 %19, 255, !dbg !4143
  br i1 %20, label %14, label %21, !dbg !4146, !llvm.loop !4151

21:                                               ; preds = %14, %9
  %22 = phi i8* [ %1, %9 ], [ %18, %14 ]
  %23 = phi i32 [ %2, %9 ], [ %19, %14 ]
  %24 = bitcast %struct.hal_sha_context_t* %0 to %struct.hal_sha_context_t*, !dbg !4154
  %25 = tail call i32 @crypt_sha_append(%struct.hal_sha_context_t* noundef nonnull %24, i8* noundef nonnull %22, i32 noundef %23, i32 noundef 3) #13, !dbg !4156
  tail call void @hal_crypt_lock_give() #13, !dbg !4157
  br label %26, !dbg !4158

26:                                               ; preds = %21, %8, %5
  %27 = phi i32 [ -1, %5 ], [ -1, %8 ], [ 0, %21 ], !dbg !4129
  ret i32 %27, !dbg !4159
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_sha384_end(%struct.hal_sha_context_t* noundef %0, i8* noundef %1) local_unnamed_addr #0 !dbg !4160 {
  call void @llvm.dbg.value(metadata %struct.hal_sha_context_t* %0, metadata !4162, metadata !DIExpression()), !dbg !4165
  call void @llvm.dbg.value(metadata i8* %1, metadata !4163, metadata !DIExpression()), !dbg !4165
  %3 = tail call i32 @hal_crypt_lock_take() #13, !dbg !4166
  %4 = bitcast %struct.hal_sha_context_t* %0 to %struct.hal_sha_context_t*, !dbg !4167
  %5 = tail call i32 @crypt_sha_end(%struct.hal_sha_context_t* noundef %4, i8* noundef %1, i32 noundef 3) #13, !dbg !4168
  call void @llvm.dbg.value(metadata i32 %5, metadata !4164, metadata !DIExpression()), !dbg !4165
  tail call void @hal_crypt_lock_give() #13, !dbg !4169
  ret i32 %5, !dbg !4170
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_sha512_init(%struct.hal_sha_context_t* noundef %0) local_unnamed_addr #0 !dbg !4171 {
  call void @llvm.dbg.value(metadata %struct.hal_sha_context_t* %0, metadata !4173, metadata !DIExpression()), !dbg !4175
  %2 = tail call i32 @hal_crypt_lock_take() #13, !dbg !4176
  %3 = bitcast %struct.hal_sha_context_t* %0 to %struct.hal_sha_context_t*, !dbg !4177
  %4 = tail call i32 @crypt_sha_init(%struct.hal_sha_context_t* noundef %3, i32 noundef 4) #13, !dbg !4178
  call void @llvm.dbg.value(metadata i32 %4, metadata !4174, metadata !DIExpression()), !dbg !4175
  tail call void @hal_crypt_lock_give() #13, !dbg !4179
  ret i32 %4, !dbg !4180
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_sha512_append(%struct.hal_sha_context_t* noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !4181 {
  call void @llvm.dbg.value(metadata %struct.hal_sha_context_t* %0, metadata !4183, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.value(metadata i8* %1, metadata !4184, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.value(metadata i32 %2, metadata !4185, metadata !DIExpression()), !dbg !4186
  %4 = icmp eq %struct.hal_sha_context_t* %0, null, !dbg !4187
  br i1 %4, label %5, label %6, !dbg !4189

5:                                                ; preds = %3
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.hal_sha512_append, i32 0, i32 0), i32 noundef 259, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0)) #13, !dbg !4190
  br label %26, !dbg !4192

6:                                                ; preds = %3
  %7 = icmp eq i8* %1, null, !dbg !4193
  br i1 %7, label %8, label %9, !dbg !4195

8:                                                ; preds = %6
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.hal_sha512_append, i32 0, i32 0), i32 noundef 263, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.24, i32 0, i32 0)) #13, !dbg !4196
  br label %26, !dbg !4198

9:                                                ; preds = %6
  %10 = tail call i32 @hal_crypt_lock_take() #13, !dbg !4199
  call void @llvm.dbg.value(metadata i32 %2, metadata !4185, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.value(metadata i8* %1, metadata !4184, metadata !DIExpression()), !dbg !4186
  %11 = icmp ugt i32 %2, 255, !dbg !4200
  br i1 %11, label %12, label %21, !dbg !4203

12:                                               ; preds = %9
  %13 = bitcast %struct.hal_sha_context_t* %0 to %struct.hal_sha_context_t*
  br label %14, !dbg !4203

14:                                               ; preds = %12, %14
  %15 = phi i32 [ %2, %12 ], [ %19, %14 ]
  %16 = phi i8* [ %1, %12 ], [ %18, %14 ]
  call void @llvm.dbg.value(metadata i32 %15, metadata !4185, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.value(metadata i8* %16, metadata !4184, metadata !DIExpression()), !dbg !4186
  %17 = tail call i32 @crypt_sha_append(%struct.hal_sha_context_t* noundef nonnull %13, i8* noundef nonnull %16, i32 noundef 256, i32 noundef 4) #13, !dbg !4204
  %18 = getelementptr inbounds i8, i8* %16, i32 256, !dbg !4206
  call void @llvm.dbg.value(metadata i8* %18, metadata !4184, metadata !DIExpression()), !dbg !4186
  %19 = add i32 %15, -256, !dbg !4207
  call void @llvm.dbg.value(metadata i32 %19, metadata !4185, metadata !DIExpression()), !dbg !4186
  %20 = icmp ugt i32 %19, 255, !dbg !4200
  br i1 %20, label %14, label %21, !dbg !4203, !llvm.loop !4208

21:                                               ; preds = %14, %9
  %22 = phi i8* [ %1, %9 ], [ %18, %14 ]
  %23 = phi i32 [ %2, %9 ], [ %19, %14 ]
  %24 = bitcast %struct.hal_sha_context_t* %0 to %struct.hal_sha_context_t*, !dbg !4211
  %25 = tail call i32 @crypt_sha_append(%struct.hal_sha_context_t* noundef nonnull %24, i8* noundef nonnull %22, i32 noundef %23, i32 noundef 4) #13, !dbg !4213
  tail call void @hal_crypt_lock_give() #13, !dbg !4214
  br label %26, !dbg !4215

26:                                               ; preds = %21, %8, %5
  %27 = phi i32 [ -1, %5 ], [ -1, %8 ], [ 0, %21 ], !dbg !4186
  ret i32 %27, !dbg !4216
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_sha512_end(%struct.hal_sha_context_t* noundef %0, i8* noundef %1) local_unnamed_addr #0 !dbg !4217 {
  call void @llvm.dbg.value(metadata %struct.hal_sha_context_t* %0, metadata !4219, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata i8* %1, metadata !4220, metadata !DIExpression()), !dbg !4222
  %3 = tail call i32 @hal_crypt_lock_take() #13, !dbg !4223
  %4 = bitcast %struct.hal_sha_context_t* %0 to %struct.hal_sha_context_t*, !dbg !4224
  %5 = tail call i32 @crypt_sha_end(%struct.hal_sha_context_t* noundef %4, i8* noundef %1, i32 noundef 4) #13, !dbg !4225
  call void @llvm.dbg.value(metadata i32 %5, metadata !4221, metadata !DIExpression()), !dbg !4222
  tail call void @hal_crypt_lock_give() #13, !dbg !4226
  ret i32 %5, !dbg !4227
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_init(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #0 !dbg !4228 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4234, metadata !DIExpression()), !dbg !4236
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4235, metadata !DIExpression()), !dbg !4236
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !4237
  br i1 %3, label %4, label %18, !dbg !4239

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !4240
  %6 = load i8, i8* %5, align 4, !dbg !4240, !range !3152
  %7 = icmp eq i8 %6, 0, !dbg !4240
  br i1 %7, label %8, label %18, !dbg !4242

8:                                                ; preds = %4
  %9 = tail call i8* @memset(i8* noundef nonnull %5, i32 noundef 0, i32 noundef 64) #13, !dbg !4243
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4244
  %11 = bitcast %struct.hal_uart_config_t* %10 to i8*, !dbg !4245
  %12 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4246
  %13 = tail call i8* @memcpy(i8* noundef nonnull %11, i8* noundef %12, i32 noundef 16) #13, !dbg !4247
  store i8 1, i8* %5, align 4, !dbg !4248
  %14 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4249, !range !4250
  tail call void @uart_reset_default_value(i32 noundef %14) #13, !dbg !4251
  tail call void @halUART_HWInit(i32 noundef %14) #13, !dbg !4252
  %15 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !4253
  %16 = icmp eq i32 %15, 0, !dbg !4255
  %17 = select i1 %16, i32 0, i32 -4, !dbg !4236
  br label %18, !dbg !4236

18:                                               ; preds = %8, %4, %2
  %19 = phi i32 [ -4, %2 ], [ -3, %4 ], [ %17, %8 ], !dbg !4236
  ret i32 %19, !dbg !4256
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef readonly %1) unnamed_addr #5 !dbg !4257 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4263, metadata !DIExpression()), !dbg !4265
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4264, metadata !DIExpression()), !dbg !4265
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4266
  %4 = icmp ne %struct.hal_uart_config_t* %1, null
  %5 = and i1 %4, %3, !dbg !4268
  br i1 %5, label %6, label %22, !dbg !4268

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4269
  %8 = load i32, i32* %7, align 4, !dbg !4269
  %9 = icmp ugt i32 %8, 12, !dbg !4271
  br i1 %9, label %22, label %10, !dbg !4272

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4273
  %12 = load i32, i32* %11, align 4, !dbg !4273
  %13 = icmp ugt i32 %12, 2, !dbg !4274
  br i1 %13, label %22, label %14, !dbg !4275

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4276
  %16 = load i32, i32* %15, align 4, !dbg !4276
  %17 = icmp ugt i32 %16, 1, !dbg !4277
  br i1 %17, label %22, label %18, !dbg !4278

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4279
  %20 = load i32, i32* %19, align 4, !dbg !4279
  %21 = icmp ult i32 %20, 4, !dbg !4280
  br label %22, !dbg !4281

22:                                               ; preds = %18, %6, %10, %14, %2
  %23 = phi i1 [ false, %2 ], [ false, %14 ], [ false, %10 ], [ false, %6 ], [ %21, %18 ], !dbg !4265
  ret i1 %23, !dbg !4282
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_port(i32 noundef %0) unnamed_addr #9 !dbg !4283 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4287, metadata !DIExpression()), !dbg !4288
  %2 = icmp ne i32 %0, 0, !dbg !4289
  %3 = zext i1 %2 to i32, !dbg !4290
  ret i32 %3, !dbg !4291
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #0 !dbg !4292 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4296, metadata !DIExpression()), !dbg !4298
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4297, metadata !DIExpression()), !dbg !4298
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !4299
  br i1 %3, label %4, label %22, !dbg !4301

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4302
  %6 = bitcast %struct.hal_uart_config_t* %5 to i8*, !dbg !4303
  %7 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4304
  %8 = tail call i8* @memcpy(i8* noundef nonnull %6, i8* noundef %7, i32 noundef 16) #13, !dbg !4305
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4306
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4307
  %11 = load i32, i32* %10, align 4, !dbg !4307
  %12 = tail call fastcc i32 @hal_uart_translate_baudrate(i32 noundef %11) #14, !dbg !4308
  %13 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4309
  %14 = load i32, i32* %13, align 4, !dbg !4309
  %15 = tail call fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %14) #14, !dbg !4310
  %16 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4311
  %17 = load i32, i32* %16, align 4, !dbg !4311
  %18 = tail call fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %17) #14, !dbg !4312
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4313
  %20 = load i32, i32* %19, align 4, !dbg !4313
  %21 = tail call fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %20) #14, !dbg !4314
  tail call void @halUART_SetFormat(i32 noundef %9, i32 noundef %12, i16 noundef zeroext %15, i16 noundef zeroext %18, i16 noundef zeroext %21) #13, !dbg !4315
  br label %22, !dbg !4316

22:                                               ; preds = %2, %4
  %23 = phi i32 [ 0, %4 ], [ -4, %2 ], !dbg !4298
  ret i32 %23, !dbg !4317
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_baudrate(i32 noundef %0) unnamed_addr #9 !dbg !4318 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4322, metadata !DIExpression()), !dbg !4327
  call void @llvm.dbg.declare(metadata [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, metadata !4323, metadata !DIExpression()), !dbg !4328
  %2 = getelementptr inbounds [13 x i32], [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, i32 0, i32 %0, !dbg !4329
  %3 = load i32, i32* %2, align 4, !dbg !4329
  ret i32 %3, !dbg !4330
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %0) unnamed_addr #9 !dbg !4331 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4335, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.declare(metadata [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, metadata !4336, metadata !DIExpression()), !dbg !4339
  %2 = getelementptr inbounds [4 x i16], [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, i32 0, i32 %0, !dbg !4340
  %3 = load i16, i16* %2, align 2, !dbg !4340
  ret i16 %3, !dbg !4341
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %0) unnamed_addr #9 !dbg !4342 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4346, metadata !DIExpression()), !dbg !4349
  call void @llvm.dbg.declare(metadata [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, metadata !4347, metadata !DIExpression()), !dbg !4350
  %2 = getelementptr inbounds [5 x i16], [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, i32 0, i32 %0, !dbg !4351
  %3 = load i16, i16* %2, align 2, !dbg !4351
  ret i16 %3, !dbg !4352
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %0) unnamed_addr #9 !dbg !4353 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4357, metadata !DIExpression()), !dbg !4360
  call void @llvm.dbg.declare(metadata [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, metadata !4358, metadata !DIExpression()), !dbg !4361
  %2 = getelementptr inbounds [3 x i16], [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, i32 0, i32 %0, !dbg !4362
  %3 = load i16, i16* %2, align 2, !dbg !4362
  ret i16 %3, !dbg !4363
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) unnamed_addr #9 !dbg !4364 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4368, metadata !DIExpression()), !dbg !4369
  %2 = icmp ult i32 %0, 2, !dbg !4370
  ret i1 %2, !dbg !4371
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_deinit(i32 noundef %0) local_unnamed_addr #0 !dbg !4372 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4376, metadata !DIExpression()), !dbg !4377
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4378
  br i1 %2, label %3, label %10, !dbg !4380

3:                                                ; preds = %1
  %4 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !4381
  %5 = load i8, i8* %4, align 4, !dbg !4381, !range !3152
  %6 = icmp eq i8 %5, 0, !dbg !4383
  br i1 %6, label %10, label %7, !dbg !4384

7:                                                ; preds = %3
  %8 = tail call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i32 noundef 64) #13, !dbg !4385
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4386, !range !4250
  tail call void @uart_query_empty(i32 noundef %9) #13, !dbg !4387
  tail call void @uart_reset_default_value(i32 noundef %9) #13, !dbg !4388
  br label %10, !dbg !4389

10:                                               ; preds = %3, %1, %7
  %11 = phi i32 [ 0, %7 ], [ -4, %1 ], [ -2, %3 ], !dbg !4377
  ret i32 %11, !dbg !4390
}

; Function Attrs: noinline nounwind optsize
define dso_local void @hal_uart_put_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !4391 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4395, metadata !DIExpression()), !dbg !4398
  call void @llvm.dbg.value(metadata i8 %1, metadata !4396, metadata !DIExpression()), !dbg !4398
  %3 = icmp eq i32 %0, 0, !dbg !4399
  %4 = icmp eq i32 %0, 1, !dbg !4399
  %5 = select i1 %4, i32 1, i32 2, !dbg !4399
  %6 = select i1 %3, i32 0, i32 %5, !dbg !4399
  call void @llvm.dbg.value(metadata i32 %6, metadata !4397, metadata !DIExpression()), !dbg !4398
  %7 = icmp eq i32 %6, 2, !dbg !4400
  br i1 %7, label %9, label %8, !dbg !4402

8:                                                ; preds = %2
  tail call void @uart_output_char(i32 noundef %6, i8 noundef zeroext %1) #13, !dbg !4403
  br label %9, !dbg !4405

9:                                                ; preds = %2, %8
  ret void, !dbg !4406
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_polling(i32 noundef %0, i8* noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !4407 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4411, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i8* %1, metadata !4412, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i32 %2, metadata !4413, metadata !DIExpression()), !dbg !4416
  %4 = icmp eq i32 %0, 0, !dbg !4417
  %5 = icmp eq i32 %0, 1, !dbg !4417
  %6 = select i1 %5, i32 1, i32 2, !dbg !4417
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4417
  call void @llvm.dbg.value(metadata i32 %7, metadata !4414, metadata !DIExpression()), !dbg !4416
  %8 = icmp eq i8* %1, null, !dbg !4418
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !4420
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !4420
  call void @llvm.dbg.value(metadata i32 0, metadata !4415, metadata !DIExpression()), !dbg !4416
  br i1 %12, label %19, label %13, !dbg !4420

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !4415, metadata !DIExpression()), !dbg !4416
  %15 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !4421
  %16 = load i8, i8* %15, align 1, !dbg !4421
  tail call void @uart_output_char(i32 noundef %7, i8 noundef zeroext %16) #13, !dbg !4427
  %17 = add nuw i32 %14, 1, !dbg !4428
  call void @llvm.dbg.value(metadata i32 %17, metadata !4415, metadata !DIExpression()), !dbg !4416
  %18 = icmp eq i32 %17, %2, !dbg !4429
  br i1 %18, label %19, label %13, !dbg !4430, !llvm.loop !4431

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !4416
  ret i32 %20, !dbg !4433
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !4434 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4436, metadata !DIExpression()), !dbg !4443
  call void @llvm.dbg.value(metadata i8* %1, metadata !4437, metadata !DIExpression()), !dbg !4443
  call void @llvm.dbg.value(metadata i32 %2, metadata !4438, metadata !DIExpression()), !dbg !4443
  %5 = bitcast i32* %4 to i8*, !dbg !4444
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #15, !dbg !4444
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4445
  br i1 %6, label %7, label %24, !dbg !4447

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !4448
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !4450
  br i1 %10, label %24, label %11, !dbg !4450

11:                                               ; preds = %7
  %12 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !4451
  %13 = load i8, i8* %12, align 4, !dbg !4451, !range !3152
  %14 = icmp eq i8 %13, 0, !dbg !4451
  br i1 %14, label %24, label %15, !dbg !4453

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4454, !range !4250
  call void @llvm.dbg.value(metadata i32* %4, metadata !4439, metadata !DIExpression(DW_OP_deref)), !dbg !4443
  call void @halUART_Get_VFIFO_Length(i32 noundef %16, i32 noundef 0, i32* noundef nonnull %4) #13, !dbg !4455
  %17 = load i32, i32* %4, align 4, !dbg !4456
  call void @llvm.dbg.value(metadata i32 %17, metadata !4439, metadata !DIExpression()), !dbg !4443
  %18 = icmp ult i32 %17, %2, !dbg !4458
  %19 = select i1 %18, i32 %17, i32 %2
  call void @llvm.dbg.value(metadata i32 %19, metadata !4440, metadata !DIExpression()), !dbg !4443
  call void @halUART_Write_VFIFO_Data(i32 noundef %16, i8* noundef nonnull %1, i32 noundef %19) #13, !dbg !4459
  %20 = load i32, i32* %4, align 4, !dbg !4460
  call void @llvm.dbg.value(metadata i32 %20, metadata !4439, metadata !DIExpression()), !dbg !4443
  %21 = icmp eq i32 %19, %20, !dbg !4462
  br i1 %21, label %22, label %24, !dbg !4463

22:                                               ; preds = %15
  %23 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %16, i1 noundef zeroext false) #14, !dbg !4464, !range !4466
  call void @llvm.dbg.value(metadata i32 %23, metadata !4441, metadata !DIExpression()), !dbg !4443
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %23) #13, !dbg !4467
  br label %24, !dbg !4468

24:                                               ; preds = %15, %22, %11, %7, %3
  %25 = phi i32 [ 0, %3 ], [ 0, %7 ], [ 0, %11 ], [ %19, %22 ], [ %19, %15 ], !dbg !4443
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #15, !dbg !4469
  ret i32 %25, !dbg !4469
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #9 !dbg !4470 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4474, metadata !DIExpression()), !dbg !4477
  call void @llvm.dbg.value(metadata i1 %1, metadata !4475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4477
  %3 = icmp eq i32 %0, 0, !dbg !4478
  %4 = select i1 %1, i32 15, i32 14, !dbg !4480
  %5 = select i1 %1, i32 17, i32 16, !dbg !4480
  %6 = select i1 %3, i32 %4, i32 %5, !dbg !4480
  call void @llvm.dbg.value(metadata i32 %6, metadata !4476, metadata !DIExpression()), !dbg !4477
  ret i32 %6, !dbg !4481
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_enable_interrupt(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @hal_uart_get_char(i32 noundef %0) local_unnamed_addr #0 !dbg !4482 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4486, metadata !DIExpression()), !dbg !4488
  %2 = icmp eq i32 %0, 0, !dbg !4489
  %3 = icmp eq i32 %0, 1, !dbg !4489
  %4 = select i1 %3, i32 1, i32 2, !dbg !4489
  %5 = select i1 %2, i32 0, i32 %4, !dbg !4489
  call void @llvm.dbg.value(metadata i32 %5, metadata !4487, metadata !DIExpression()), !dbg !4488
  %6 = icmp ult i32 %5, 2, !dbg !4490
  br i1 %6, label %7, label %9, !dbg !4492

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @uart_input_char(i32 noundef %5) #13, !dbg !4493
  br label %9, !dbg !4495

9:                                                ; preds = %1, %7
  %10 = phi i8 [ %8, %7 ], [ 0, %1 ], !dbg !4496
  ret i8 %10, !dbg !4497
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_char_unblocking(i32 noundef %0) local_unnamed_addr #0 !dbg !4498 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4502, metadata !DIExpression()), !dbg !4504
  %2 = icmp eq i32 %0, 0, !dbg !4505
  %3 = icmp eq i32 %0, 1, !dbg !4505
  %4 = select i1 %3, i32 1, i32 2, !dbg !4505
  %5 = select i1 %2, i32 0, i32 %4, !dbg !4505
  call void @llvm.dbg.value(metadata i32 %5, metadata !4503, metadata !DIExpression()), !dbg !4504
  %6 = icmp ult i32 %5, 2, !dbg !4506
  br i1 %6, label %7, label %9, !dbg !4508

7:                                                ; preds = %1
  %8 = tail call i32 @uart_input_char_unblocking(i32 noundef %5) #13, !dbg !4509
  br label %9, !dbg !4511

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ], !dbg !4512
  ret i32 %10, !dbg !4513
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_polling(i32 noundef %0, i8* noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !4514 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4518, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata i8* %1, metadata !4519, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata i32 %2, metadata !4520, metadata !DIExpression()), !dbg !4523
  %4 = icmp eq i32 %0, 0, !dbg !4524
  %5 = icmp eq i32 %0, 1, !dbg !4524
  %6 = select i1 %5, i32 1, i32 2, !dbg !4524
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4524
  call void @llvm.dbg.value(metadata i32 %7, metadata !4521, metadata !DIExpression()), !dbg !4523
  %8 = icmp eq i8* %1, null, !dbg !4525
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !4527
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !4527
  call void @llvm.dbg.value(metadata i32 0, metadata !4522, metadata !DIExpression()), !dbg !4523
  br i1 %12, label %19, label %13, !dbg !4527

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !4522, metadata !DIExpression()), !dbg !4523
  %15 = tail call zeroext i8 @uart_input_char(i32 noundef %7) #13, !dbg !4528
  %16 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !4534
  store i8 %15, i8* %16, align 1, !dbg !4535
  %17 = add nuw i32 %14, 1, !dbg !4536
  call void @llvm.dbg.value(metadata i32 %17, metadata !4522, metadata !DIExpression()), !dbg !4523
  %18 = icmp eq i32 %17, %2, !dbg !4537
  br i1 %18, label %19, label %13, !dbg !4538, !llvm.loop !4539

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !4523
  ret i32 %20, !dbg !4541
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !4542 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4544, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.value(metadata i8* %1, metadata !4545, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.value(metadata i32 %2, metadata !4546, metadata !DIExpression()), !dbg !4550
  %5 = bitcast i32* %4 to i8*, !dbg !4551
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #15, !dbg !4551
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4552
  br i1 %6, label %7, label %20, !dbg !4554

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !4555
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !4557
  br i1 %10, label %20, label %11, !dbg !4557

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4558, !range !4250
  call void @llvm.dbg.value(metadata i32* %4, metadata !4547, metadata !DIExpression(DW_OP_deref)), !dbg !4550
  call void @halUART_Get_VFIFO_Length(i32 noundef %12, i32 noundef 1, i32* noundef nonnull %4) #13, !dbg !4559
  %13 = load i32, i32* %4, align 4, !dbg !4560
  call void @llvm.dbg.value(metadata i32 %13, metadata !4547, metadata !DIExpression()), !dbg !4550
  %14 = icmp ult i32 %13, %2, !dbg !4562
  %15 = select i1 %14, i32 %13, i32 %2
  call void @llvm.dbg.value(metadata i32 %15, metadata !4548, metadata !DIExpression()), !dbg !4550
  call void @halUART_Read_VFIFO_Data(i32 noundef %12, i8* noundef nonnull %1, i32 noundef %15) #13, !dbg !4563
  %16 = load i32, i32* %4, align 4, !dbg !4564
  call void @llvm.dbg.value(metadata i32 %16, metadata !4547, metadata !DIExpression()), !dbg !4550
  %17 = icmp eq i32 %15, %16, !dbg !4566
  br i1 %17, label %18, label %20, !dbg !4567

18:                                               ; preds = %11
  %19 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !4568, !range !4466
  call void @llvm.dbg.value(metadata i32 %19, metadata !4549, metadata !DIExpression()), !dbg !4550
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %19) #13, !dbg !4570
  br label %20, !dbg !4571

20:                                               ; preds = %11, %18, %7, %3
  %21 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %15, %18 ], [ %15, %11 ], !dbg !4550
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #15, !dbg !4572
  ret i32 %21, !dbg !4572
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_send_space(i32 noundef %0) local_unnamed_addr #0 !dbg !4573 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4575, metadata !DIExpression()), !dbg !4577
  %3 = bitcast i32* %2 to i8*, !dbg !4578
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #15, !dbg !4578
  call void @llvm.dbg.value(metadata i32 0, metadata !4576, metadata !DIExpression()), !dbg !4577
  store i32 0, i32* %2, align 4, !dbg !4579
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4580
  br i1 %4, label %5, label %8, !dbg !4582

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4583, !range !4250
  call void @llvm.dbg.value(metadata i32* %2, metadata !4576, metadata !DIExpression(DW_OP_deref)), !dbg !4577
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 0, i32* noundef nonnull %2) #13, !dbg !4584
  %7 = load i32, i32* %2, align 4, !dbg !4585
  call void @llvm.dbg.value(metadata i32 %7, metadata !4576, metadata !DIExpression()), !dbg !4577
  br label %8, !dbg !4586

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !4577
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #15, !dbg !4587
  ret i32 %9, !dbg !4587
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_receive_bytes(i32 noundef %0) local_unnamed_addr #0 !dbg !4588 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4590, metadata !DIExpression()), !dbg !4592
  %3 = bitcast i32* %2 to i8*, !dbg !4593
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #15, !dbg !4593
  call void @llvm.dbg.value(metadata i32 0, metadata !4591, metadata !DIExpression()), !dbg !4592
  store i32 0, i32* %2, align 4, !dbg !4594
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4595
  br i1 %4, label %5, label %8, !dbg !4597

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4598, !range !4250
  call void @llvm.dbg.value(metadata i32* %2, metadata !4591, metadata !DIExpression(DW_OP_deref)), !dbg !4592
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 1, i32* noundef nonnull %2) #13, !dbg !4599
  %7 = load i32, i32* %2, align 4, !dbg !4600
  call void @llvm.dbg.value(metadata i32 %7, metadata !4591, metadata !DIExpression()), !dbg !4592
  br label %8, !dbg !4601

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !4592
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #15, !dbg !4602
  ret i32 %9, !dbg !4602
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_register_callback(i32 noundef %0, void (i32, i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #0 !dbg !4603 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4607, metadata !DIExpression()), !dbg !4611
  call void @llvm.dbg.value(metadata void (i32, i8*)* %1, metadata !4608, metadata !DIExpression()), !dbg !4611
  call void @llvm.dbg.value(metadata i8* %2, metadata !4609, metadata !DIExpression()), !dbg !4611
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4612
  %5 = icmp ne void (i32, i8*)* %1, null
  %6 = and i1 %5, %4, !dbg !4614
  br i1 %6, label %7, label %18, !dbg !4614

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 0, !dbg !4615
  store void (i32, i8*)* %1, void (i32, i8*)** %8, align 4, !dbg !4616
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 1, !dbg !4617
  store i8* %2, i8** %9, align 4, !dbg !4618
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 2, !dbg !4619
  store i8 1, i8* %10, align 4, !dbg !4620
  %11 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4621
  %12 = tail call fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) #14, !dbg !4622
  tail call void @halUART_VDMA_Rx_Register_Callback(i32 noundef %11, void ()* noundef %12) #13, !dbg !4623
  tail call void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %11, void ()* noundef %12) #13, !dbg !4624
  %13 = icmp eq i32 %11, 0, !dbg !4625
  br i1 %13, label %14, label %15, !dbg !4627

14:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 14, void ()* noundef nonnull @hal_uart_send_callback0) #13, !dbg !4628
  br label %16, !dbg !4630

15:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 16, void ()* noundef nonnull @hal_uart_send_callback1) #13, !dbg !4631
  br label %16

16:                                               ; preds = %15, %14
  %17 = tail call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %11, i1 noundef zeroext false) #14, !dbg !4633, !range !4466
  call void @llvm.dbg.value(metadata i32 %17, metadata !4610, metadata !DIExpression()), !dbg !4611
  tail call void @DMA_Vfifo_enable_interrupt(i32 noundef %17) #13, !dbg !4634
  br label %18, !dbg !4635

18:                                               ; preds = %3, %16
  %19 = phi i32 [ 0, %16 ], [ -4, %3 ], !dbg !4611
  ret i32 %19, !dbg !4636
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) unnamed_addr #9 !dbg !319 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !325, metadata !DIExpression()), !dbg !4637
  %2 = getelementptr inbounds [2 x void ()*], [2 x void ()*]* @hal_uart_map_receive_callback.func_tbl, i32 0, i32 %0, !dbg !4638
  %3 = load void ()*, void ()** %2, align 4, !dbg !4638
  ret void ()* %3, !dbg !4639
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback0() #0 !dbg !4640 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !4646, !range !3152
  %2 = icmp eq i8 %1, 0, !dbg !4646
  br i1 %2, label %8, label %3, !dbg !4647

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !4648
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !4650
  br i1 %5, label %8, label %6, !dbg !4651

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !4652
  tail call void %4(i32 noundef 2, i8* noundef %7) #13, !dbg !4654
  br label %8, !dbg !4655

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #14, !dbg !4656, !range !4250
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #14, !dbg !4657
  ret void, !dbg !4658
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback1() #0 !dbg !4659 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !4664, !range !3152
  %2 = icmp eq i8 %1, 0, !dbg !4664
  br i1 %2, label %8, label %3, !dbg !4665

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !4666
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !4668
  br i1 %5, label %8, label %6, !dbg !4669

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !4670
  tail call void %4(i32 noundef 2, i8* noundef %7) #13, !dbg !4672
  br label %8, !dbg !4673

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #14, !dbg !4674, !range !4250
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #14, !dbg !4675
  ret void, !dbg !4676
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @hal_uart_check_irq_disable(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #0 !dbg !4677 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4681, metadata !DIExpression()), !dbg !4688
  call void @llvm.dbg.value(metadata i1 %1, metadata !4682, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4688
  %5 = bitcast i32* %3 to i8*, !dbg !4689
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #15, !dbg !4689
  %6 = bitcast i32* %4 to i8*, !dbg !4689
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !4689
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !4685, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !4688
  br i1 %1, label %7, label %12, !dbg !4690

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !4685, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !4688
  call void @llvm.dbg.value(metadata i32* %3, metadata !4683, metadata !DIExpression(DW_OP_deref)), !dbg !4688
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 1, i32* noundef nonnull %3) #13, !dbg !4691
  %8 = load i32, i32* %3, align 4, !dbg !4694
  call void @llvm.dbg.value(metadata i32 %8, metadata !4683, metadata !DIExpression()), !dbg !4688
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 5, !dbg !4696
  %10 = load i32, i32* %9, align 4, !dbg !4696
  %11 = icmp ult i32 %8, %10, !dbg !4697
  br i1 %11, label %22, label %20, !dbg !4698

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32* %4, metadata !4684, metadata !DIExpression(DW_OP_deref)), !dbg !4688
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 0, i32* noundef nonnull %4) #13, !dbg !4699
  %13 = load i32, i32* %4, align 4, !dbg !4701
  call void @llvm.dbg.value(metadata i32 %13, metadata !4684, metadata !DIExpression()), !dbg !4688
  %14 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 1, !dbg !4703
  %15 = load i32, i32* %14, align 4, !dbg !4703
  %16 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 2, !dbg !4704
  %17 = load i32, i32* %16, align 4, !dbg !4704
  %18 = sub i32 %15, %17, !dbg !4705
  %19 = icmp ult i32 %13, %18, !dbg !4706
  br i1 %19, label %22, label %20, !dbg !4707

20:                                               ; preds = %12, %7
  %21 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) #14, !dbg !4708, !range !4466
  call void @DMA_Vfifo_disable_interrupt(i32 noundef %21) #13, !dbg !4708
  br label %22, !dbg !4709

22:                                               ; preds = %20, %12, %7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !4709
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #15, !dbg !4709
  ret void, !dbg !4709
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_disable_interrupt(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback0() #0 !dbg !4710 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !4715, !range !3152
  %2 = icmp eq i8 %1, 0, !dbg !4715
  br i1 %2, label %11, label %3, !dbg !4716

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 0) #14, !dbg !4717
  %5 = icmp eq i32 %4, 0, !dbg !4718
  br i1 %5, label %11, label %6, !dbg !4719

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !4720
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !4722
  br i1 %8, label %11, label %9, !dbg !4723

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !4724
  tail call void %7(i32 noundef 1, i8* noundef %10) #13, !dbg !4726
  br label %11, !dbg !4727

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #14, !dbg !4728, !range !4250
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !4729
  ret void, !dbg !4730
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback1() #0 !dbg !4731 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !4736, !range !3152
  %2 = icmp eq i8 %1, 0, !dbg !4736
  br i1 %2, label %11, label %3, !dbg !4737

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 1) #14, !dbg !4738
  %5 = icmp eq i32 %4, 0, !dbg !4739
  br i1 %5, label %11, label %6, !dbg !4740

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !4741
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !4743
  br i1 %8, label %11, label %9, !dbg !4744

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !4745
  tail call void %7(i32 noundef 1, i8* noundef %10) #13, !dbg !4747
  br label %11, !dbg !4748

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #14, !dbg !4749, !range !4250
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !4750
  ret void, !dbg !4751
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_baudrate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4752 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4756, metadata !DIExpression()), !dbg !4758
  call void @llvm.dbg.value(metadata i32 %1, metadata !4757, metadata !DIExpression()), !dbg !4758
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4759
  %4 = icmp ult i32 %1, 13
  %5 = and i1 %4, %3, !dbg !4761
  br i1 %5, label %6, label %10, !dbg !4761

6:                                                ; preds = %2
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4762
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %7, i32 0, i32 0, !dbg !4763
  store i32 %1, i32* %8, align 4, !dbg !4764
  %9 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef nonnull %7) #14, !dbg !4765
  br label %10, !dbg !4766

10:                                               ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ -4, %2 ], !dbg !4758
  ret i32 %11, !dbg !4767
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma(i32 noundef %0, %struct.hal_uart_dma_config_t* noundef %1) local_unnamed_addr #0 !dbg !4768 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4774, metadata !DIExpression()), !dbg !4776
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %1, metadata !4775, metadata !DIExpression()), !dbg !4776
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4777
  br i1 %3, label %4, label %28, !dbg !4779

4:                                                ; preds = %2
  %5 = tail call fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef %1) #14, !dbg !4780
  br i1 %5, label %6, label %28, !dbg !4782

6:                                                ; preds = %4
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !4783
  store i8 1, i8* %7, align 4, !dbg !4784
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, !dbg !4785
  %9 = bitcast %struct.hal_uart_dma_config_t* %8 to i8*, !dbg !4786
  %10 = bitcast %struct.hal_uart_dma_config_t* %1 to i8*, !dbg !4787
  %11 = tail call i8* @memcpy(i8* noundef nonnull %9, i8* noundef %10, i32 noundef 28) #13, !dbg !4788
  tail call void @DMA_Init() #13, !dbg !4789
  tail call void @DMA_Vfifo_init() #13, !dbg !4790
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4791
  %13 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 3, !dbg !4792
  %14 = load i8*, i8** %13, align 4, !dbg !4792
  %15 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 4, !dbg !4793
  %16 = load i32, i32* %15, align 4, !dbg !4793
  %17 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 6, !dbg !4794
  %18 = load i32, i32* %17, align 4, !dbg !4794
  %19 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 5, !dbg !4795
  %20 = load i32, i32* %19, align 4, !dbg !4795
  %21 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef 5000) #14, !dbg !4796
  tail call void @halUART_Rx_VFIFO_Initialize(i32 noundef %12, i8* noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %21) #13, !dbg !4797
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 0, !dbg !4798
  %23 = load i8*, i8** %22, align 4, !dbg !4798
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 1, !dbg !4799
  %25 = load i32, i32* %24, align 4, !dbg !4799
  %26 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 2, !dbg !4800
  %27 = load i32, i32* %26, align 4, !dbg !4800
  tail call void @halUART_Tx_VFIFO_Initialize(i32 noundef %12, i8* noundef %23, i32 noundef %25, i32 noundef %27) #13, !dbg !4801
  br label %28, !dbg !4802

28:                                               ; preds = %4, %2, %6
  %29 = phi i32 [ 0, %6 ], [ -4, %2 ], [ -4, %4 ], !dbg !4776
  ret i32 %29, !dbg !4803
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef readonly %0) unnamed_addr #5 !dbg !4804 {
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %0, metadata !4808, metadata !DIExpression()), !dbg !4809
  %2 = icmp eq %struct.hal_uart_dma_config_t* %0, null, !dbg !4810
  br i1 %2, label %27, label %3, !dbg !4812

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 3, !dbg !4813
  %5 = load i8*, i8** %4, align 4, !dbg !4813
  %6 = icmp eq i8* %5, null, !dbg !4815
  br i1 %6, label %27, label %7, !dbg !4816

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 4, !dbg !4817
  %9 = load i32, i32* %8, align 4, !dbg !4817
  %10 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 5, !dbg !4819
  %11 = load i32, i32* %10, align 4, !dbg !4819
  %12 = icmp ult i32 %9, %11, !dbg !4820
  br i1 %12, label %27, label %13, !dbg !4821

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 6, !dbg !4822
  %15 = load i32, i32* %14, align 4, !dbg !4822
  %16 = icmp ult i32 %9, %15, !dbg !4824
  br i1 %16, label %27, label %17, !dbg !4825

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 0, !dbg !4826
  %19 = load i8*, i8** %18, align 4, !dbg !4826
  %20 = icmp eq i8* %19, null, !dbg !4828
  br i1 %20, label %27, label %21, !dbg !4829

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 1, !dbg !4830
  %23 = load i32, i32* %22, align 4, !dbg !4830
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 2, !dbg !4832
  %25 = load i32, i32* %24, align 4, !dbg !4832
  %26 = icmp uge i32 %23, %25, !dbg !4833
  br label %27, !dbg !4834

27:                                               ; preds = %21, %17, %13, %7, %3, %1
  %28 = phi i1 [ false, %1 ], [ false, %3 ], [ false, %7 ], [ false, %13 ], [ false, %17 ], [ %26, %21 ], !dbg !4809
  ret i1 %28, !dbg !4835
}

; Function Attrs: optsize
declare dso_local void @DMA_Init() local_unnamed_addr #2

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_init() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @hal_uart_translate_timeout(i32 noundef %0) unnamed_addr #0 !dbg !4836 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4840, metadata !DIExpression()), !dbg !4842
  %2 = tail call i32 @top_mcu_freq_get() #13, !dbg !4843
  %3 = udiv i32 %2, 1000000, !dbg !4844
  call void @llvm.dbg.value(metadata i32 %3, metadata !4841, metadata !DIExpression()), !dbg !4842
  %4 = mul i32 %3, %0, !dbg !4845
  ret i32 %4, !dbg !4846
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !4847 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4849, metadata !DIExpression()), !dbg !4851
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4852
  br i1 %2, label %3, label %8, !dbg !4854

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !4855
  %5 = icmp eq i32 %0, 1, !dbg !4855
  %6 = select i1 %5, i32 1, i32 2, !dbg !4855
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4855
  call void @llvm.dbg.value(metadata i32 %7, metadata !4850, metadata !DIExpression()), !dbg !4851
  tail call void @uart_set_hardware_flowcontrol(i32 noundef %7) #13, !dbg !4856
  br label %8, !dbg !4857

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !4851
  ret i32 %9, !dbg !4858
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 !dbg !4859 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4863, metadata !DIExpression()), !dbg !4868
  call void @llvm.dbg.value(metadata i8 %1, metadata !4864, metadata !DIExpression()), !dbg !4868
  call void @llvm.dbg.value(metadata i8 %2, metadata !4865, metadata !DIExpression()), !dbg !4868
  call void @llvm.dbg.value(metadata i8 %3, metadata !4866, metadata !DIExpression()), !dbg !4868
  %5 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4869
  br i1 %5, label %6, label %11, !dbg !4871

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 0, !dbg !4872
  %8 = icmp eq i32 %0, 1, !dbg !4872
  %9 = select i1 %8, i32 1, i32 2, !dbg !4872
  %10 = select i1 %7, i32 0, i32 %9, !dbg !4872
  call void @llvm.dbg.value(metadata i32 %10, metadata !4867, metadata !DIExpression()), !dbg !4868
  tail call void @uart_set_software_flowcontrol(i32 noundef %10, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #13, !dbg !4873
  br label %11, !dbg !4874

11:                                               ; preds = %4, %6
  %12 = phi i32 [ 0, %6 ], [ -4, %4 ], !dbg !4868
  ret i32 %12, !dbg !4875
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !4876 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4878, metadata !DIExpression()), !dbg !4880
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4881
  br i1 %2, label %3, label %8, !dbg !4883

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !4884
  %5 = icmp eq i32 %0, 1, !dbg !4884
  %6 = select i1 %5, i32 1, i32 2, !dbg !4884
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4884
  call void @llvm.dbg.value(metadata i32 %7, metadata !4879, metadata !DIExpression()), !dbg !4880
  tail call void @uart_disable_flowcontrol(i32 noundef %7) #13, !dbg !4885
  br label %8, !dbg !4886

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !4880
  ret i32 %9, !dbg !4887
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma_timeout(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4888 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4892, metadata !DIExpression()), !dbg !4894
  call void @llvm.dbg.value(metadata i32 %1, metadata !4893, metadata !DIExpression()), !dbg !4894
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4895
  br i1 %3, label %4, label %8, !dbg !4897

4:                                                ; preds = %2
  %5 = icmp eq i32 %0, 0, !dbg !4898
  %6 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef %1) #14, !dbg !4900
  %7 = select i1 %5, i32 15, i32 17
  tail call void @DMA_Vfifo_Set_timeout(i32 noundef %7, i32 noundef %6) #13, !dbg !4900
  br label %8, !dbg !4901

8:                                                ; preds = %4, %2
  %9 = phi i32 [ -4, %2 ], [ 0, %4 ], !dbg !4894
  ret i32 %9, !dbg !4901
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Set_timeout(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @__io_putchar(i32 noundef returned %0) local_unnamed_addr #0 !dbg !4902 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4906, metadata !DIExpression()), !dbg !4907
  %2 = trunc i32 %0 to i8, !dbg !4908
  tail call void @hal_uart_put_char(i32 noundef 0, i8 noundef zeroext %2) #13, !dbg !4909
  ret i32 %0, !dbg !4910
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local i32 @main() local_unnamed_addr #12 !dbg !4911 {
  tail call fastcc void @SystemClock_Config() #14, !dbg !4912
  tail call fastcc void @prvSetupHardware() #14, !dbg !4913
  tail call void asm sideeffect "cpsie i", "~{memory}"() #15, !dbg !4914, !srcloc !4917
  tail call void asm sideeffect "cpsie f", "~{memory}"() #15, !dbg !4918, !srcloc !4921
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0)) #13, !dbg !4922
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.26, i32 0, i32 0)) #13, !dbg !4923
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0)) #13, !dbg !4924
  tail call fastcc void @sha_get_hash_example() #14, !dbg !4925
  br label %4, !dbg !4926

4:                                                ; preds = %4, %0
  br label %4, !dbg !4927, !llvm.loop !4930
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @SystemClock_Config() unnamed_addr #0 !dbg !4933 {
  tail call void @top_xtal_init() #13, !dbg !4934
  ret void, !dbg !4935
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvSetupHardware() unnamed_addr #0 !dbg !4936 {
  tail call fastcc void @log_uart_init() #14, !dbg !4937
  ret void, !dbg !4938
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @sha_get_hash_example() unnamed_addr #0 !dbg !4939 {
  %1 = alloca [64 x i8], align 1
  %2 = alloca %struct.hal_sha_context_t, align 4
  %3 = alloca %struct.hal_sha_context_t, align 4
  %4 = alloca %struct.hal_sha_context_t, align 4
  %5 = alloca %struct.hal_sha_context_t, align 4
  %6 = alloca %struct.hal_sha_context_t, align 4
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2.27, i32 0, i32 0), metadata !4941, metadata !DIExpression()), !dbg !4960
  %7 = tail call i32 @strlen(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2.27, i32 0, i32 0)) #13, !dbg !4961
  call void @llvm.dbg.value(metadata i32 %7, metadata !4942, metadata !DIExpression()), !dbg !4960
  %8 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i32 0, i32 0, !dbg !4962
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %8) #15, !dbg !4962
  call void @llvm.dbg.declare(metadata [64 x i8]* %1, metadata !4943, metadata !DIExpression()), !dbg !4963
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(64) %8, i8 0, i32 64, i1 false), !dbg !4963
  %9 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3.28, i32 0, i32 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2.27, i32 0, i32 0)) #13, !dbg !4964
  %10 = bitcast %struct.hal_sha_context_t* %2 to i8*, !dbg !4965
  call void @llvm.lifetime.start.p0i8(i64 204, i8* nonnull %10) #15, !dbg !4965
  call void @llvm.dbg.declare(metadata %struct.hal_sha_context_t* %2, metadata !4947, metadata !DIExpression()), !dbg !4966
  %11 = call i32 @hal_sha1_init(%struct.hal_sha_context_t* noundef nonnull %2) #13, !dbg !4967
  %12 = call i32 @hal_sha1_append(%struct.hal_sha_context_t* noundef nonnull %2, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2.27, i32 0, i32 0), i32 noundef %7) #13, !dbg !4968
  %13 = call i32 @hal_sha1_end(%struct.hal_sha_context_t* noundef nonnull %2, i8* noundef nonnull %8) #13, !dbg !4969
  %14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4.29, i32 0, i32 0)) #13, !dbg !4970
  call fastcc void @sha_result_dump(i8* noundef nonnull %8, i8 noundef zeroext 20) #14, !dbg !4971
  %15 = bitcast %struct.hal_sha_context_t* %3 to i8*, !dbg !4972
  call void @llvm.lifetime.start.p0i8(i64 204, i8* nonnull %15) #15, !dbg !4972
  call void @llvm.dbg.declare(metadata %struct.hal_sha_context_t* %3, metadata !4956, metadata !DIExpression()), !dbg !4973
  %16 = call i32 @hal_sha224_init(%struct.hal_sha_context_t* noundef nonnull %3) #13, !dbg !4974
  %17 = call i32 @hal_sha224_append(%struct.hal_sha_context_t* noundef nonnull %3, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2.27, i32 0, i32 0), i32 noundef %7) #13, !dbg !4975
  %18 = call i32 @hal_sha224_end(%struct.hal_sha_context_t* noundef nonnull %3, i8* noundef nonnull %8) #13, !dbg !4976
  %19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5.30, i32 0, i32 0)) #13, !dbg !4977
  call fastcc void @sha_result_dump(i8* noundef nonnull %8, i8 noundef zeroext 28) #14, !dbg !4978
  %20 = bitcast %struct.hal_sha_context_t* %4 to i8*, !dbg !4979
  call void @llvm.lifetime.start.p0i8(i64 204, i8* nonnull %20) #15, !dbg !4979
  call void @llvm.dbg.declare(metadata %struct.hal_sha_context_t* %4, metadata !4957, metadata !DIExpression()), !dbg !4980
  %21 = call i32 @hal_sha256_init(%struct.hal_sha_context_t* noundef nonnull %4) #13, !dbg !4981
  %22 = call i32 @hal_sha256_append(%struct.hal_sha_context_t* noundef nonnull %4, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2.27, i32 0, i32 0), i32 noundef %7) #13, !dbg !4982
  %23 = call i32 @hal_sha256_end(%struct.hal_sha_context_t* noundef nonnull %4, i8* noundef nonnull %8) #13, !dbg !4983
  %24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6.31, i32 0, i32 0)) #13, !dbg !4984
  call fastcc void @sha_result_dump(i8* noundef nonnull %8, i8 noundef zeroext 32) #14, !dbg !4985
  %25 = bitcast %struct.hal_sha_context_t* %5 to i8*, !dbg !4986
  call void @llvm.lifetime.start.p0i8(i64 204, i8* nonnull %25) #15, !dbg !4986
  call void @llvm.dbg.declare(metadata %struct.hal_sha_context_t* %5, metadata !4958, metadata !DIExpression()), !dbg !4987
  %26 = call i32 @hal_sha384_init(%struct.hal_sha_context_t* noundef nonnull %5) #13, !dbg !4988
  %27 = call i32 @hal_sha384_append(%struct.hal_sha_context_t* noundef nonnull %5, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2.27, i32 0, i32 0), i32 noundef %7) #13, !dbg !4989
  %28 = call i32 @hal_sha384_end(%struct.hal_sha_context_t* noundef nonnull %5, i8* noundef nonnull %8) #13, !dbg !4990
  %29 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7.32, i32 0, i32 0)) #13, !dbg !4991
  call fastcc void @sha_result_dump(i8* noundef nonnull %8, i8 noundef zeroext 48) #14, !dbg !4992
  %30 = bitcast %struct.hal_sha_context_t* %6 to i8*, !dbg !4993
  call void @llvm.lifetime.start.p0i8(i64 204, i8* nonnull %30) #15, !dbg !4993
  call void @llvm.dbg.declare(metadata %struct.hal_sha_context_t* %6, metadata !4959, metadata !DIExpression()), !dbg !4994
  %31 = call i32 @hal_sha512_init(%struct.hal_sha_context_t* noundef nonnull %6) #13, !dbg !4995
  %32 = call i32 @hal_sha512_append(%struct.hal_sha_context_t* noundef nonnull %6, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2.27, i32 0, i32 0), i32 noundef %7) #13, !dbg !4996
  %33 = call i32 @hal_sha512_end(%struct.hal_sha_context_t* noundef nonnull %6, i8* noundef nonnull %8) #13, !dbg !4997
  %34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8.33, i32 0, i32 0)) #13, !dbg !4998
  call fastcc void @sha_result_dump(i8* noundef nonnull %8, i8 noundef zeroext 64) #14, !dbg !4999
  call void @llvm.lifetime.end.p0i8(i64 204, i8* nonnull %30) #15, !dbg !5000
  call void @llvm.lifetime.end.p0i8(i64 204, i8* nonnull %25) #15, !dbg !5000
  call void @llvm.lifetime.end.p0i8(i64 204, i8* nonnull %20) #15, !dbg !5000
  call void @llvm.lifetime.end.p0i8(i64 204, i8* nonnull %15) #15, !dbg !5000
  call void @llvm.lifetime.end.p0i8(i64 204, i8* nonnull %10) #15, !dbg !5000
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %8) #15, !dbg !5000
  ret void, !dbg !5000
}

; Function Attrs: optsize
declare dso_local i32 @strlen(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define internal fastcc void @sha_result_dump(i8* nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 !dbg !5001 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5005, metadata !DIExpression()), !dbg !5008
  call void @llvm.dbg.value(metadata i8 %1, metadata !5006, metadata !DIExpression()), !dbg !5008
  call void @llvm.dbg.value(metadata i8 0, metadata !5007, metadata !DIExpression()), !dbg !5008
  %3 = icmp eq i8 %1, 0, !dbg !5009
  br i1 %3, label %19, label %4, !dbg !5012

4:                                                ; preds = %2
  %5 = zext i8 %1 to i32, !dbg !5009
  br label %6, !dbg !5012

6:                                                ; preds = %4, %12
  %7 = phi i32 [ 0, %4 ], [ %17, %12 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !5007, metadata !DIExpression()), !dbg !5008
  %8 = and i32 %7, 15, !dbg !5013
  %9 = icmp eq i32 %8, 0, !dbg !5016
  br i1 %9, label %10, label %12, !dbg !5017

10:                                               ; preds = %6
  %11 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9.34, i32 0, i32 0)) #13, !dbg !5018
  br label %12, !dbg !5020

12:                                               ; preds = %10, %6
  %13 = getelementptr inbounds i8, i8* %0, i32 %7, !dbg !5021
  %14 = load i8, i8* %13, align 1, !dbg !5021
  %15 = zext i8 %14 to i32, !dbg !5021
  %16 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10.35, i32 0, i32 0), i32 noundef %15) #13, !dbg !5022
  %17 = add nuw nsw i32 %7, 1, !dbg !5023
  call void @llvm.dbg.value(metadata i32 %17, metadata !5007, metadata !DIExpression()), !dbg !5008
  %18 = icmp eq i32 %17, %5, !dbg !5009
  br i1 %18, label %19, label %6, !dbg !5012, !llvm.loop !5024

19:                                               ; preds = %12, %2
  %20 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9.34, i32 0, i32 0)) #13, !dbg !5026
  ret void, !dbg !5027
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @log_uart_init() unnamed_addr #0 !dbg !5028 {
  %1 = alloca %struct.hal_uart_config_t, align 4
  %2 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !5038
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #15, !dbg !5038
  call void @llvm.dbg.declare(metadata %struct.hal_uart_config_t* %1, metadata !5030, metadata !DIExpression()), !dbg !5039
  %3 = tail call i32 @hal_pinmux_set_function(i32 noundef 0, i8 noundef zeroext 7) #13, !dbg !5040
  %4 = tail call i32 @hal_pinmux_set_function(i32 noundef 1, i8 noundef zeroext 7) #13, !dbg !5041
  %5 = tail call i32 @hal_pinmux_set_function(i32 noundef 2, i8 noundef zeroext 7) #13, !dbg !5042
  %6 = tail call i32 @hal_pinmux_set_function(i32 noundef 3, i8 noundef zeroext 7) #13, !dbg !5043
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !5044
  store i32 9, i32* %7, align 4, !dbg !5045
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !5046
  store i32 3, i32* %8, align 4, !dbg !5047
  %9 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !5048
  store i32 0, i32* %9, align 4, !dbg !5049
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !5050
  store i32 0, i32* %10, align 4, !dbg !5051
  %11 = call i32 @hal_uart_init(i32 noundef 0, %struct.hal_uart_config_t* noundef nonnull %1) #13, !dbg !5052
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #15, !dbg !5053
  ret void, !dbg !5053
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @SysTick_Set(i32 noundef %0) local_unnamed_addr #3 !dbg !5054 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5056, metadata !DIExpression()), !dbg !5058
  %2 = add i32 %0, -1, !dbg !5059
  %3 = icmp ugt i32 %2, 16777215, !dbg !5061
  br i1 %3, label %8, label %4, !dbg !5062

4:                                                ; preds = %1
  %5 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5063
  call void @llvm.dbg.value(metadata i32 %5, metadata !5057, metadata !DIExpression()), !dbg !5058
  %6 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5064
  %7 = and i32 %6, -4, !dbg !5064
  store volatile i32 %7, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5064
  store volatile i32 %2, i32* inttoptr (i32 -536813548 to i32*), align 4, !dbg !5065
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !dbg !5066
  store volatile i32 %5, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5067
  br label %8, !dbg !5068

8:                                                ; preds = %1, %4
  %9 = phi i32 [ 0, %4 ], [ 1, %1 ], !dbg !5058
  ret i32 %9, !dbg !5069
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SysInitStatus_Set() local_unnamed_addr #3 !dbg !5070 {
  store volatile i32 1, i32* @System_Initialize_Done, align 4, !dbg !5071
  ret void, !dbg !5072
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @SysInitStatus_Query() local_unnamed_addr #4 !dbg !5073 {
  %1 = load volatile i32, i32* @System_Initialize_Done, align 4, !dbg !5074
  ret i32 %1, !dbg !5075
}

; Function Attrs: noinline nounwind optsize
define dso_local void @SystemCoreClockUpdate() local_unnamed_addr #0 !dbg !5076 {
  %1 = tail call i32 @top_mcu_freq_get() #13, !dbg !5077
  store i32 %1, i32* @SystemCoreClock, align 4, !dbg !5078
  ret void, !dbg !5079
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SystemInit() local_unnamed_addr #3 !dbg !5080 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !5081
  %2 = or i32 %1, 15728640, !dbg !5081
  store volatile i32 %2, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !5081
  store volatile i32 536870912, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !5082
  %3 = load volatile i32, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !5083
  %4 = or i32 %3, 458752, !dbg !5083
  store volatile i32 %4, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !5083
  ret void, !dbg !5084
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @CachePreInit() local_unnamed_addr #3 !dbg !5085 {
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !5086
  store volatile i32 19, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !5087
  store volatile i32 3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !5088
  store volatile i32 268931328, i32* inttoptr (i32 22282240 to i32*), align 262144, !dbg !5089
  store volatile i32 269713408, i32* inttoptr (i32 22282304 to i32*), align 64, !dbg !5090
  store volatile i32 1, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !5091
  store volatile i32 781, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !5092
  ret void, !dbg !5093
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_close(i32 noundef %0) local_unnamed_addr #9 !dbg !5094 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5096, metadata !DIExpression()), !dbg !5097
  ret i32 0, !dbg !5098
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_fstat(i32 noundef %0, %struct.stat* nocapture noundef readnone %1) local_unnamed_addr #9 !dbg !5099 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5149, metadata !DIExpression()), !dbg !5151
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !5150, metadata !DIExpression()), !dbg !5151
  ret i32 0, !dbg !5152
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_isatty(i32 noundef %0) local_unnamed_addr #9 !dbg !5153 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5155, metadata !DIExpression()), !dbg !5156
  ret i32 1, !dbg !5157
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_lseek(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !dbg !5158 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5162, metadata !DIExpression()), !dbg !5165
  call void @llvm.dbg.value(metadata i32 %1, metadata !5163, metadata !DIExpression()), !dbg !5165
  call void @llvm.dbg.value(metadata i32 %2, metadata !5164, metadata !DIExpression()), !dbg !5165
  ret i32 0, !dbg !5166
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_open(i8* nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !dbg !5167 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5171, metadata !DIExpression()), !dbg !5174
  call void @llvm.dbg.value(metadata i32 %1, metadata !5172, metadata !DIExpression()), !dbg !5174
  call void @llvm.dbg.value(metadata i32 %2, metadata !5173, metadata !DIExpression()), !dbg !5174
  ret i32 -1, !dbg !5175
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_read(i32 noundef %0, i8* nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #9 !dbg !5176 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5180, metadata !DIExpression()), !dbg !5183
  call void @llvm.dbg.value(metadata i8* %1, metadata !5181, metadata !DIExpression()), !dbg !5183
  call void @llvm.dbg.value(metadata i32 %2, metadata !5182, metadata !DIExpression()), !dbg !5183
  ret i32 0, !dbg !5184
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_write(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef returned %2) local_unnamed_addr #0 !dbg !5185 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5187, metadata !DIExpression()), !dbg !5191
  call void @llvm.dbg.value(metadata i8* %1, metadata !5188, metadata !DIExpression()), !dbg !5191
  call void @llvm.dbg.value(metadata i32 %2, metadata !5189, metadata !DIExpression()), !dbg !5191
  call void @llvm.dbg.value(metadata i32 0, metadata !5190, metadata !DIExpression()), !dbg !5191
  %4 = icmp sgt i32 %2, 0, !dbg !5192
  br i1 %4, label %5, label %14, !dbg !5195

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %12, %5 ], [ 0, %3 ]
  %7 = phi i8* [ %8, %5 ], [ %1, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !5190, metadata !DIExpression()), !dbg !5191
  call void @llvm.dbg.value(metadata i8* %7, metadata !5188, metadata !DIExpression()), !dbg !5191
  %8 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !5196
  call void @llvm.dbg.value(metadata i8* %8, metadata !5188, metadata !DIExpression()), !dbg !5191
  %9 = load i8, i8* %7, align 1, !dbg !5198
  %10 = zext i8 %9 to i32, !dbg !5198
  %11 = tail call i32 @__io_putchar(i32 noundef %10) #13, !dbg !5199
  %12 = add nuw nsw i32 %6, 1, !dbg !5200
  call void @llvm.dbg.value(metadata i32 %12, metadata !5190, metadata !DIExpression()), !dbg !5191
  %13 = icmp eq i32 %12, %2, !dbg !5192
  br i1 %13, label %14, label %5, !dbg !5195, !llvm.loop !5201

14:                                               ; preds = %5, %3
  ret i32 %2, !dbg !5203
}

; Function Attrs: noinline nounwind optsize
define dso_local i8* @_sbrk_r(%struct._reent* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #0 !dbg !442 {
  call void @llvm.dbg.value(metadata %struct._reent* %0, metadata !645, metadata !DIExpression()), !dbg !5204
  call void @llvm.dbg.value(metadata i32 %1, metadata !646, metadata !DIExpression()), !dbg !5204
  %3 = tail call i8* asm sideeffect "MRS $0, msp\0A", "=r"() #15, !dbg !5205, !srcloc !5206
  call void @llvm.dbg.value(metadata i8* %3, metadata !648, metadata !DIExpression()), !dbg !5204
  %4 = load i8*, i8** @_sbrk_r.heap_end, align 4, !dbg !5207
  %5 = icmp eq i8* %4, null, !dbg !5209
  %6 = select i1 %5, i8* @end, i8* %4, !dbg !5210
  call void @llvm.dbg.value(metadata i8* %6, metadata !647, metadata !DIExpression()), !dbg !5204
  %7 = getelementptr inbounds i8, i8* %6, i32 %1, !dbg !5211
  %8 = icmp ult i8* %3, %7, !dbg !5213
  %9 = xor i1 %8, true, !dbg !5214
  %10 = or i1 %5, %9, !dbg !5214
  br i1 %10, label %11, label %13, !dbg !5214

11:                                               ; preds = %2
  %12 = select i1 %8, i8* %6, i8* %7, !dbg !5215
  store i8* %12, i8** @_sbrk_r.heap_end, align 4, !dbg !5214
  br label %13, !dbg !5214

13:                                               ; preds = %2, %11
  %14 = select i1 %8, i8* inttoptr (i32 -1 to i8*), i8* %6, !dbg !5215
  ret i8* %14, !dbg !5214
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local void @_exit(i32 noundef %0) local_unnamed_addr #12 !dbg !5216 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5218, metadata !DIExpression()), !dbg !5219
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0)) #13, !dbg !5220
  br label %3, !dbg !5221

3:                                                ; preds = %1, %3
  br label %3, !dbg !5221, !llvm.loop !5222
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_kill(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !5224 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5228, metadata !DIExpression()), !dbg !5230
  call void @llvm.dbg.value(metadata i32 %1, metadata !5229, metadata !DIExpression()), !dbg !5230
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.43, i32 0, i32 0), i32 noundef %1) #13, !dbg !5231
  ret i32 -1, !dbg !5232
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_getpid() local_unnamed_addr #0 !dbg !5233 {
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.44, i32 0, i32 0)) #13, !dbg !5238
  ret i32 0, !dbg !5239
}

attributes #0 = { noinline nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { optsize "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #3 = { nofree noinline norecurse nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #4 = { mustprogress nofree noinline norecurse nounwind optsize willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #6 = { nofree noinline nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #7 = { argmemonly nofree nosync nounwind willreturn }
attributes #8 = { nofree nosync nounwind willreturn }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { noinline noreturn nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #13 = { nobuiltin nounwind optsize "no-builtins" }
attributes #14 = { nobuiltin optsize "no-builtins" }
attributes #15 = { nounwind }

!llvm.dbg.cu = !{!2, !665, !674, !755, !800, !834, !85, !102, !837, !140, !159, !839, !910, !261, !940, !372, !640, !651}
!llvm.ident = !{!944, !944, !944, !944, !944, !944, !944, !944, !944, !944, !944, !944, !944, !944, !944, !944, !944, !944}
!llvm.module.flags = !{!945, !946, !947, !948, !949, !950, !951, !952, !953}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g_u4ClkCnt1ms", scope: !2, file: !3, line: 71, type: !79, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !57, globals: !62, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/gpt.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 121, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/type_def.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "KAL_FALSE", value: 0)
!10 = !DIEnumerator(name: "KAL_TRUE", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IRQn", file: !12, line: 47, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56}
!15 = !DIEnumerator(name: "Reset_IRQn", value: -15)
!16 = !DIEnumerator(name: "NonMaskableInt_IRQn", value: -14)
!17 = !DIEnumerator(name: "HardFault_IRQn", value: -13)
!18 = !DIEnumerator(name: "MemoryManagement_IRQn", value: -12)
!19 = !DIEnumerator(name: "BusFault_IRQn", value: -11)
!20 = !DIEnumerator(name: "UsageFault_IRQn", value: -10)
!21 = !DIEnumerator(name: "SVC_IRQn", value: -5)
!22 = !DIEnumerator(name: "DebugMonitor_IRQn", value: -4)
!23 = !DIEnumerator(name: "PendSV_IRQn", value: -2)
!24 = !DIEnumerator(name: "SysTick_IRQn", value: -1)
!25 = !DIEnumerator(name: "CM4_UART1_IRQ", value: 0)
!26 = !DIEnumerator(name: "CM4_DMA_IRQ", value: 1)
!27 = !DIEnumerator(name: "CM4_HIF_IRQ", value: 2)
!28 = !DIEnumerator(name: "CM4_I2C1_IRQ", value: 3)
!29 = !DIEnumerator(name: "CM4_I2C2_IRQ", value: 4)
!30 = !DIEnumerator(name: "CM4_UART2_IRQ", value: 5)
!31 = !DIEnumerator(name: "CM4_MTK_CRYPTO_IRQ", value: 6)
!32 = !DIEnumerator(name: "CM4_SF_IRQ", value: 7)
!33 = !DIEnumerator(name: "CM4_EINT_IRQ", value: 8)
!34 = !DIEnumerator(name: "CM4_BTIF_IRQ", value: 9)
!35 = !DIEnumerator(name: "CM4_WDT_IRQ", value: 10)
!36 = !DIEnumerator(name: "CM4_AHB_MON_IRQ", value: 11)
!37 = !DIEnumerator(name: "CM4_SPI_SLAVE_IRQ", value: 12)
!38 = !DIEnumerator(name: "CM4_N9_WDT_IRQ", value: 13)
!39 = !DIEnumerator(name: "CM4_ADC_IRQ", value: 14)
!40 = !DIEnumerator(name: "CM4_IRDA_TX_IRQ", value: 15)
!41 = !DIEnumerator(name: "CM4_IRDA_RX_IRQ", value: 16)
!42 = !DIEnumerator(name: "CM4_USB_VBUS_ON_IRQ", value: 17)
!43 = !DIEnumerator(name: "CM4_USB_VBUS_OFF_IRQ", value: 18)
!44 = !DIEnumerator(name: "CM4_SPIS_CS_WAKEUP_IRQ", value: 19)
!45 = !DIEnumerator(name: "CM4_GPT3_IRQ", value: 20)
!46 = !DIEnumerator(name: "CM4_IRQ21_IRQ", value: 21)
!47 = !DIEnumerator(name: "CM4_AUDIO_IRQ", value: 22)
!48 = !DIEnumerator(name: "CM4_HIF_DMA_IRQ", value: 23)
!49 = !DIEnumerator(name: "CM4_GPT_IRQ", value: 24)
!50 = !DIEnumerator(name: "CM4_ADC_COMP_IRQ", value: 25)
!51 = !DIEnumerator(name: "CM4_AUDIO_WAKE_IRQ", value: 26)
!52 = !DIEnumerator(name: "CM4_SPIM_IRQ", value: 27)
!53 = !DIEnumerator(name: "CM4_USB_IRQ", value: 28)
!54 = !DIEnumerator(name: "CM4_UDMA_IRQ", value: 29)
!55 = !DIEnumerator(name: "CM4_TRNG_IRQ", value: 30)
!56 = !DIEnumerator(name: "IRQ_NUMBER_MAX", value: 96)
!57 = !{!58, !61}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 32)
!59 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "kal_uint32", file: !6, line: 116, baseType: !7)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRQn_Type", file: !12, line: 95, baseType: !11)
!62 = !{!0, !63}
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "GPTTimer", scope: !2, file: !3, line: 67, type: !65, isLocal: true, isDefinition: true)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPTStruct", file: !66, line: 111, baseType: !67)
!66 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/gpt.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !66, line: 109, size: 96, elements: !68)
!68 = !{!69}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "GPT_FUNC", scope: !67, file: !66, line: 110, baseType: !70, size: 96)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpt_func", file: !66, line: 106, baseType: !71)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !66, line: 102, size: 96, elements: !72)
!72 = !{!73, !77, !78}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "gpt0_func", scope: !71, file: !66, line: 103, baseType: !74, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 32)
!75 = !DISubroutineType(types: !76)
!76 = !{null}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "gpt1_func", scope: !71, file: !66, line: 104, baseType: !74, size: 32, offset: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "gpt3_func", scope: !71, file: !66, line: 105, baseType: !74, size: 32, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT32", file: !6, line: 62, baseType: !7)
!81 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression(DW_OP_LLVM_fragment, 0, 32))
!82 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression(DW_OP_LLVM_fragment, 32, 32))
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "gXtalFreq", scope: !85, file: !86, line: 43, type: !92, isLocal: true, isDefinition: true)
!85 = distinct !DICompileUnit(language: DW_LANG_C99, file: !86, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !87, globals: !97, splitDebugInlining: false, nameTableKind: None)
!86 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/top.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!87 = !{!88, !80, !90, !96}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !93, line: 48, baseType: !94)
!93 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_stdint.h", directory: "/home/mjshen/RTOSExploration")
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !95, line: 79, baseType: !7)
!95 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/machine/_default_types.h", directory: "/home/mjshen/RTOSExploration")
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 32)
!97 = !{!83, !98}
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "gCpuFrequency", scope: !85, file: !86, line: 44, type: !92, isLocal: true, isDefinition: true)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "gUartClkFreq", scope: !102, file: !103, line: 54, type: !92, isLocal: false, isDefinition: true)
!102 = distinct !DICompileUnit(language: DW_LANG_C99, file: !103, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !104, retainedTypes: !128, globals: !137, splitDebugInlining: false, nameTableKind: None)
!103 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!104 = !{!105, !111}
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !106, line: 71, baseType: !7, size: 32, elements: !107)
!106 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!107 = !{!108, !109, !110}
!108 = !DIEnumerator(name: "UART_PORT0", value: 0)
!109 = !DIEnumerator(name: "UART_PORT1", value: 1)
!110 = !DIEnumerator(name: "UART_MAX_PORT", value: 2)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !112, line: 129, baseType: !7, size: 32, elements: !113)
!112 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/dma_sw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!113 = !{!114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127}
!114 = !DIEnumerator(name: "VDMA_I2S_TX_CH", value: 12)
!115 = !DIEnumerator(name: "VDMA_I2S_RX_CH", value: 13)
!116 = !DIEnumerator(name: "VDMA_UART1TX_CH", value: 14)
!117 = !DIEnumerator(name: "VDMA_UART1RX_CH", value: 15)
!118 = !DIEnumerator(name: "VDMA_UART2TX_CH", value: 16)
!119 = !DIEnumerator(name: "VDMA_UART2RX_CH", value: 17)
!120 = !DIEnumerator(name: "VDMA_BTIF_TX_CH", value: 18)
!121 = !DIEnumerator(name: "VDMA_BTIF_RX_CH", value: 19)
!122 = !DIEnumerator(name: "VDMA_USB_EP2O_CH", value: 20)
!123 = !DIEnumerator(name: "VDMA_USB_EP3I_CH", value: 21)
!124 = !DIEnumerator(name: "VDMA_USB_EP3O_CH", value: 22)
!125 = !DIEnumerator(name: "VDMA_USB_EP4I_CH", value: 23)
!126 = !DIEnumerator(name: "VDMA_USB_EP4O_CH", value: 24)
!127 = !DIEnumerator(name: "VDMA_ADC_RX_CH", value: 25)
!128 = !{!88, !92, !129, !131, !133, !135, !80}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "kal_uint16", file: !6, line: 113, baseType: !132)
!132 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !6, line: 59, baseType: !134)
!134 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !133)
!137 = !{!100}
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "g_crypt_lock", scope: !140, file: !141, line: 48, type: !156, isLocal: false, isDefinition: true)
!140 = distinct !DICompileUnit(language: DW_LANG_C99, file: !141, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !142, retainedTypes: !148, globals: !152, splitDebugInlining: false, nameTableKind: None)
!141 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_aes.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!142 = !{!143, !11}
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !144, line: 290, baseType: !13, size: 32, elements: !145)
!144 = !DIFile(filename: "../../../../../driver/chip/inc/hal_aes.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!145 = !{!146, !147}
!146 = !DIEnumerator(name: "HAL_AES_STATUS_ERROR", value: -1)
!147 = !DIEnumerator(name: "HAL_AES_STATUS_OK", value: 0)
!148 = !{!149, !61, !150}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !93, line: 24, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !95, line: 43, baseType: !134)
!152 = !{!138, !153}
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "g_aes_op_done", scope: !140, file: !141, line: 71, type: !155, isLocal: true, isDefinition: true)
!155 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !156)
!156 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "nvic_function_table", scope: !159, file: !160, line: 53, type: !248, isLocal: false, isDefinition: true)
!159 = distinct !DICompileUnit(language: DW_LANG_C99, file: !160, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !161, retainedTypes: !170, globals: !247, splitDebugInlining: false, nameTableKind: None)
!160 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!161 = !{!162, !11}
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !163, line: 152, baseType: !13, size: 32, elements: !164)
!163 = !DIFile(filename: "../../../../../driver/chip/inc/hal_nvic.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!164 = !{!165, !166, !167, !168, !169}
!165 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_NO_ISR", value: -4)
!166 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_IRQ_NUMBER", value: -3)
!167 = !DIEnumerator(name: "HAL_NVIC_STATUS_INVALID_PARAMETER", value: -2)
!168 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR", value: -1)
!169 = !DIEnumerator(name: "HAL_NVIC_STATUS_OK", value: 0)
!170 = !{!171, !149, !92, !172, !174, !208}
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_irq_t", file: !12, line: 97, baseType: !61)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !93, line: 44, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !95, line: 77, baseType: !13)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !176, line: 378, baseType: !177)
!176 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cm4.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !176, line: 363, size: 28704, elements: !178)
!178 = !{!179, !183, !187, !188, !189, !190, !191, !192, !193, !194, !198, !203, !207}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !177, file: !176, line: 365, baseType: !180, size: 256)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 256, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 8)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !177, file: !176, line: 366, baseType: !184, size: 768, offset: 256)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 768, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 24)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !177, file: !176, line: 367, baseType: !180, size: 256, offset: 1024)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !177, file: !176, line: 368, baseType: !184, size: 768, offset: 1280)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !177, file: !176, line: 369, baseType: !180, size: 256, offset: 2048)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !177, file: !176, line: 370, baseType: !184, size: 768, offset: 2304)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !177, file: !176, line: 371, baseType: !180, size: 256, offset: 3072)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !177, file: !176, line: 372, baseType: !184, size: 768, offset: 3328)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !177, file: !176, line: 373, baseType: !180, size: 256, offset: 4096)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !177, file: !176, line: 374, baseType: !195, size: 1792, offset: 4352)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 1792, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 56)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !177, file: !176, line: 375, baseType: !199, size: 1920, offset: 6144)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 1920, elements: !201)
!200 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !150)
!201 = !{!202}
!202 = !DISubrange(count: 240)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !177, file: !176, line: 376, baseType: !204, size: 20608, offset: 8064)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 20608, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 644)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !177, file: !176, line: 377, baseType: !91, size: 32, offset: 28672)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 32)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !176, line: 418, baseType: !210)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !176, line: 395, size: 1120, elements: !211)
!211 = !{!212, !214, !215, !216, !217, !218, !219, !223, !224, !225, !226, !227, !228, !229, !230, !234, !235, !236, !240, !244, !246}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !210, file: !176, line: 397, baseType: !213, size: 32)
!213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !210, file: !176, line: 398, baseType: !91, size: 32, offset: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !210, file: !176, line: 399, baseType: !91, size: 32, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !210, file: !176, line: 400, baseType: !91, size: 32, offset: 96)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !210, file: !176, line: 401, baseType: !91, size: 32, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !210, file: !176, line: 402, baseType: !91, size: 32, offset: 160)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !210, file: !176, line: 403, baseType: !220, size: 96, offset: 192)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 96, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 12)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !210, file: !176, line: 404, baseType: !91, size: 32, offset: 288)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !210, file: !176, line: 405, baseType: !91, size: 32, offset: 320)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !210, file: !176, line: 406, baseType: !91, size: 32, offset: 352)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !210, file: !176, line: 407, baseType: !91, size: 32, offset: 384)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !210, file: !176, line: 408, baseType: !91, size: 32, offset: 416)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !210, file: !176, line: 409, baseType: !91, size: 32, offset: 448)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !210, file: !176, line: 410, baseType: !91, size: 32, offset: 480)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !210, file: !176, line: 411, baseType: !231, size: 64, offset: 512)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 64, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 2)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !210, file: !176, line: 412, baseType: !213, size: 32, offset: 576)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !210, file: !176, line: 413, baseType: !213, size: 32, offset: 608)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !210, file: !176, line: 414, baseType: !237, size: 128, offset: 640)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 128, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 4)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !210, file: !176, line: 415, baseType: !241, size: 160, offset: 768)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 160, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 5)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !210, file: !176, line: 416, baseType: !245, size: 160, offset: 928)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 160, elements: !242)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !210, file: !176, line: 417, baseType: !91, size: 32, offset: 1088)
!247 = !{!157}
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 6144, elements: !257)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "nvic_function_t", file: !160, line: 50, baseType: !250)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !160, line: 47, size: 64, elements: !251)
!251 = !{!252, !256}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "nvic_callback", scope: !250, file: !160, line: 48, baseType: !253, size: 32)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 32)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !171}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pending", scope: !250, file: !160, line: 49, baseType: !92, size: 32, offset: 32)
!257 = !{!258}
!258 = !DISubrange(count: 96)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(name: "g_uart_context_table", scope: !261, file: !262, line: 77, type: !328, isLocal: true, isDefinition: true)
!261 = distinct !DICompileUnit(language: DW_LANG_C99, file: !262, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !263, retainedTypes: !314, globals: !316, splitDebugInlining: false, nameTableKind: None)
!262 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!263 = !{!264, !272, !278, !294, !300, !304, !105, !111, !309}
!264 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !265, line: 345, baseType: !13, size: 32, elements: !266)
!265 = !DIFile(filename: "../../../../../driver/chip/inc/hal_uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!266 = !{!267, !268, !269, !270, !271}
!267 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_PARAMETER", value: -4)
!268 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_BUSY", value: -3)
!269 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_UNINITIALIZED", value: -2)
!270 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR", value: -1)
!271 = !DIEnumerator(name: "HAL_UART_STATUS_OK", value: 0)
!272 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !273, line: 109, baseType: !7, size: 32, elements: !274)
!273 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_platform.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!274 = !{!275, !276, !277}
!275 = !DIEnumerator(name: "HAL_UART_0", value: 0)
!276 = !DIEnumerator(name: "HAL_UART_1", value: 1)
!277 = !DIEnumerator(name: "HAL_UART_MAX", value: 2)
!278 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !265, line: 302, baseType: !7, size: 32, elements: !279)
!279 = !{!280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293}
!280 = !DIEnumerator(name: "HAL_UART_BAUDRATE_110", value: 0)
!281 = !DIEnumerator(name: "HAL_UART_BAUDRATE_300", value: 1)
!282 = !DIEnumerator(name: "HAL_UART_BAUDRATE_1200", value: 2)
!283 = !DIEnumerator(name: "HAL_UART_BAUDRATE_2400", value: 3)
!284 = !DIEnumerator(name: "HAL_UART_BAUDRATE_4800", value: 4)
!285 = !DIEnumerator(name: "HAL_UART_BAUDRATE_9600", value: 5)
!286 = !DIEnumerator(name: "HAL_UART_BAUDRATE_19200", value: 6)
!287 = !DIEnumerator(name: "HAL_UART_BAUDRATE_38400", value: 7)
!288 = !DIEnumerator(name: "HAL_UART_BAUDRATE_57600", value: 8)
!289 = !DIEnumerator(name: "HAL_UART_BAUDRATE_115200", value: 9)
!290 = !DIEnumerator(name: "HAL_UART_BAUDRATE_230400", value: 10)
!291 = !DIEnumerator(name: "HAL_UART_BAUDRATE_460800", value: 11)
!292 = !DIEnumerator(name: "HAL_UART_BAUDRATE_921600", value: 12)
!293 = !DIEnumerator(name: "HAL_UART_BAUDRATE_MAX", value: 13)
!294 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !265, line: 321, baseType: !7, size: 32, elements: !295)
!295 = !{!296, !297, !298, !299}
!296 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_5", value: 0)
!297 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_6", value: 1)
!298 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_7", value: 2)
!299 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_8", value: 3)
!300 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !265, line: 330, baseType: !7, size: 32, elements: !301)
!301 = !{!302, !303}
!302 = !DIEnumerator(name: "HAL_UART_STOP_BIT_1", value: 0)
!303 = !DIEnumerator(name: "HAL_UART_STOP_BIT_2", value: 1)
!304 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !265, line: 337, baseType: !7, size: 32, elements: !305)
!305 = !{!306, !307, !308}
!306 = !DIEnumerator(name: "HAL_UART_PARITY_NONE", value: 0)
!307 = !DIEnumerator(name: "HAL_UART_PARITY_ODD", value: 1)
!308 = !DIEnumerator(name: "HAL_UART_PARITY_EVEN", value: 2)
!309 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !265, line: 355, baseType: !13, size: 32, elements: !310)
!310 = !{!311, !312, !313}
!311 = !DIEnumerator(name: "HAL_UART_EVENT_TRANSACTION_ERROR", value: -1)
!312 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_READ", value: 1)
!313 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_WRITE", value: 2)
!314 = !{!7, !149, !134, !315, !150}
!315 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!316 = !{!259, !317}
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(name: "func_tbl", scope: !319, file: !262, line: 536, type: !326, isLocal: true, isDefinition: true)
!319 = distinct !DISubprogram(name: "hal_uart_map_receive_callback", scope: !262, file: !262, line: 534, type: !320, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !324)
!320 = !DISubroutineType(types: !321)
!321 = !{!322, !323}
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID_FUNC", file: !112, line: 197, baseType: !74)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_port_t", file: !273, line: 113, baseType: !272)
!324 = !{!325}
!325 = !DILocalVariable(name: "uart_port", arg: 1, scope: !319, file: !262, line: 534, type: !323)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 64, elements: !232)
!327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !322)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 1024, elements: !232)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "uart_context_t", file: !262, line: 75, baseType: !330)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !262, line: 68, size: 512, elements: !331)
!331 = !{!332, !333, !345, !346, !357, !358}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config_present", scope: !330, file: !262, line: 69, baseType: !156, size: 8)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config", scope: !330, file: !262, line: 70, baseType: !334, size: 128, offset: 32)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !265, line: 378, baseType: !335)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !265, line: 373, size: 128, elements: !336)
!336 = !{!337, !339, !341, !343}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !335, file: !265, line: 374, baseType: !338, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_baudrate_t", file: !265, line: 317, baseType: !278)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !335, file: !265, line: 375, baseType: !340, size: 32, offset: 32)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_word_length_t", file: !265, line: 326, baseType: !294)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !335, file: !265, line: 376, baseType: !342, size: 32, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_stop_bit_t", file: !265, line: 333, baseType: !300)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !335, file: !265, line: 377, baseType: !344, size: 32, offset: 96)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_parity_t", file: !265, line: 341, baseType: !304)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "callback_present", scope: !330, file: !262, line: 71, baseType: !156, size: 8, offset: 160)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "callback_config", scope: !330, file: !262, line: 72, baseType: !347, size: 64, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_config_t", file: !262, line: 66, baseType: !348)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !262, line: 63, size: 64, elements: !349)
!349 = !{!350, !356}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !348, file: !262, line: 64, baseType: !351, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_t", file: !265, line: 410, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 32)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !355, !149}
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_event_t", file: !265, line: 359, baseType: !309)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !348, file: !262, line: 65, baseType: !149, size: 32, offset: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config_present", scope: !330, file: !262, line: 73, baseType: !156, size: 8, offset: 256)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config", scope: !330, file: !262, line: 74, baseType: !359, size: 224, offset: 288)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_dma_config_t", file: !265, line: 390, baseType: !360)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !265, line: 382, size: 224, elements: !361)
!361 = !{!362, !364, !365, !366, !367, !368, !369}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer", scope: !360, file: !265, line: 383, baseType: !363, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer_size", scope: !360, file: !265, line: 384, baseType: !92, size: 32, offset: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_threshold_size", scope: !360, file: !265, line: 385, baseType: !92, size: 32, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer", scope: !360, file: !265, line: 386, baseType: !363, size: 32, offset: 96)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer_size", scope: !360, file: !265, line: 387, baseType: !92, size: 32, offset: 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_threshold_size", scope: !360, file: !265, line: 388, baseType: !92, size: 32, offset: 160)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_alert_size", scope: !360, file: !265, line: 389, baseType: !92, size: 32, offset: 192)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(name: "SystemCoreClock", scope: !372, file: !373, line: 59, type: !92, isLocal: false, isDefinition: true)
!372 = distinct !DICompileUnit(language: DW_LANG_C99, file: !373, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !374, globals: !437, splitDebugInlining: false, nameTableKind: None)
!373 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/sha_get_hash/src/system_mt7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!374 = !{!375, !383, !408}
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysTick_Type", file: !176, line: 656, baseType: !377)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !176, line: 650, size: 128, elements: !378)
!378 = !{!379, !380, !381, !382}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "CTRL", scope: !377, file: !176, line: 652, baseType: !91, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "LOAD", scope: !377, file: !176, line: 653, baseType: !91, size: 32, offset: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "VAL", scope: !377, file: !176, line: 654, baseType: !91, size: 32, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "CALIB", scope: !377, file: !176, line: 655, baseType: !213, size: 32, offset: 96)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 32)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !176, line: 418, baseType: !385)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !176, line: 395, size: 1120, elements: !386)
!386 = !{!387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !385, file: !176, line: 397, baseType: !213, size: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !385, file: !176, line: 398, baseType: !91, size: 32, offset: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !385, file: !176, line: 399, baseType: !91, size: 32, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !385, file: !176, line: 400, baseType: !91, size: 32, offset: 96)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !385, file: !176, line: 401, baseType: !91, size: 32, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !385, file: !176, line: 402, baseType: !91, size: 32, offset: 160)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !385, file: !176, line: 403, baseType: !220, size: 96, offset: 192)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !385, file: !176, line: 404, baseType: !91, size: 32, offset: 288)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !385, file: !176, line: 405, baseType: !91, size: 32, offset: 320)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !385, file: !176, line: 406, baseType: !91, size: 32, offset: 352)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !385, file: !176, line: 407, baseType: !91, size: 32, offset: 384)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !385, file: !176, line: 408, baseType: !91, size: 32, offset: 416)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !385, file: !176, line: 409, baseType: !91, size: 32, offset: 448)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !385, file: !176, line: 410, baseType: !91, size: 32, offset: 480)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !385, file: !176, line: 411, baseType: !231, size: 64, offset: 512)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !385, file: !176, line: 412, baseType: !213, size: 32, offset: 576)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !385, file: !176, line: 413, baseType: !213, size: 32, offset: 608)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !385, file: !176, line: 414, baseType: !237, size: 128, offset: 640)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !385, file: !176, line: 415, baseType: !241, size: 160, offset: 768)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !385, file: !176, line: 416, baseType: !245, size: 160, offset: 928)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !385, file: !176, line: 417, baseType: !91, size: 32, offset: 1088)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "CACHE_REGISTER_T", file: !410, line: 72, baseType: !411)
!410 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_hw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !410, line: 56, size: 525312, elements: !412)
!412 = !{!413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !427, !428, !432, !436}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CON", scope: !411, file: !410, line: 57, baseType: !91, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_OP", scope: !411, file: !410, line: 58, baseType: !91, size: 32, offset: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0L", scope: !411, file: !410, line: 59, baseType: !91, size: 32, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0U", scope: !411, file: !410, line: 60, baseType: !91, size: 32, offset: 96)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0L", scope: !411, file: !410, line: 61, baseType: !91, size: 32, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0U", scope: !411, file: !410, line: 62, baseType: !91, size: 32, offset: 160)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1L", scope: !411, file: !410, line: 63, baseType: !91, size: 32, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1U", scope: !411, file: !410, line: 64, baseType: !91, size: 32, offset: 224)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1L", scope: !411, file: !410, line: 65, baseType: !91, size: 32, offset: 256)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1U", scope: !411, file: !410, line: 66, baseType: !91, size: 32, offset: 288)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !411, file: !410, line: 67, baseType: !424, size: 32, offset: 320)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 32, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 1)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_REGION_EN", scope: !411, file: !410, line: 68, baseType: !91, size: 32, offset: 352)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !411, file: !410, line: 69, baseType: !429, size: 523904, offset: 384)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 523904, elements: !430)
!430 = !{!431}
!431 = !DISubrange(count: 16372)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_ENTRY_N", scope: !411, file: !410, line: 70, baseType: !433, size: 512, offset: 524288)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 512, elements: !434)
!434 = !{!435}
!435 = !DISubrange(count: 16)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_END_ENTRY_N", scope: !411, file: !410, line: 71, baseType: !433, size: 512, offset: 524800)
!437 = !{!370, !438}
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(name: "System_Initialize_Done", scope: !372, file: !373, line: 61, type: !91, isLocal: true, isDefinition: true)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(name: "heap_end", scope: !442, file: !443, line: 66, type: !448, isLocal: true, isDefinition: true)
!442 = distinct !DISubprogram(name: "_sbrk_r", scope: !443, file: !443, line: 63, type: !444, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !640, retainedNodes: !644)
!443 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/sha_get_hash/GCC/syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!444 = !DISubroutineType(types: !445)
!445 = !{!446, !449, !639}
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !447, line: 123, baseType: !448)
!447 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/types.h", directory: "/home/mjshen/RTOSExploration")
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 32)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 32)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !451, line: 377, size: 1920, elements: !452)
!451 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/reent.h", directory: "/home/mjshen/RTOSExploration")
!452 = !{!453, !454, !528, !529, !530, !531, !532, !533, !534, !537, !558, !562, !563, !564, !565, !575, !588, !589, !594, !613, !614, !621, !622, !638}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !450, file: !451, line: 381, baseType: !13, size: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !450, file: !451, line: 386, baseType: !455, size: 32, offset: 32)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !451, line: 292, baseType: !457)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !451, line: 186, size: 832, elements: !458)
!458 = !{!459, !461, !462, !463, !465, !466, !471, !472, !473, !474, !478, !484, !491, !495, !496, !497, !498, !502, !504, !505, !506, !508, !514, !527}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !457, file: !451, line: 187, baseType: !460, size: 32)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !457, file: !451, line: 188, baseType: !13, size: 32, offset: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !457, file: !451, line: 189, baseType: !13, size: 32, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !457, file: !451, line: 190, baseType: !464, size: 16, offset: 96)
!464 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !457, file: !451, line: 191, baseType: !464, size: 16, offset: 112)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !457, file: !451, line: 192, baseType: !467, size: 64, offset: 128)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !451, line: 122, size: 64, elements: !468)
!468 = !{!469, !470}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !467, file: !451, line: 123, baseType: !460, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !467, file: !451, line: 124, baseType: !13, size: 32, offset: 32)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !457, file: !451, line: 193, baseType: !13, size: 32, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !457, file: !451, line: 196, baseType: !449, size: 32, offset: 224)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !457, file: !451, line: 200, baseType: !149, size: 32, offset: 256)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !457, file: !451, line: 202, baseType: !475, size: 32, offset: 288)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 32)
!476 = !DISubroutineType(types: !477)
!477 = !{!13, !449, !149, !448, !13}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !457, file: !451, line: 204, baseType: !479, size: 32, offset: 320)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 32)
!480 = !DISubroutineType(types: !481)
!481 = !{!13, !449, !149, !482, !13}
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 32)
!483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !457, file: !451, line: 207, baseType: !485, size: 32, offset: 352)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 32)
!486 = !DISubroutineType(types: !487)
!487 = !{!488, !449, !149, !488, !13}
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !489, line: 116, baseType: !490)
!489 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_types.h", directory: "/home/mjshen/RTOSExploration")
!490 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !457, file: !451, line: 208, baseType: !492, size: 32, offset: 384)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 32)
!493 = !DISubroutineType(types: !494)
!494 = !{!13, !449, !149}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !457, file: !451, line: 211, baseType: !467, size: 64, offset: 416)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !457, file: !451, line: 212, baseType: !460, size: 32, offset: 480)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !457, file: !451, line: 213, baseType: !13, size: 32, offset: 512)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !457, file: !451, line: 216, baseType: !499, size: 24, offset: 544)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 24, elements: !500)
!500 = !{!501}
!501 = !DISubrange(count: 3)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !457, file: !451, line: 217, baseType: !503, size: 8, offset: 568)
!503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 8, elements: !425)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !457, file: !451, line: 220, baseType: !467, size: 64, offset: 576)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !457, file: !451, line: 223, baseType: !13, size: 32, offset: 640)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !457, file: !451, line: 224, baseType: !507, size: 32, offset: 672)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !489, line: 46, baseType: !490)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !457, file: !451, line: 231, baseType: !509, size: 32, offset: 704)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !451, line: 35, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_T", file: !511, line: 34, baseType: !512)
!511 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/lock.h", directory: "/home/mjshen/RTOSExploration")
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 32)
!513 = !DICompositeType(tag: DW_TAG_structure_type, name: "__lock", file: !511, line: 33, flags: DIFlagFwdDecl)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !457, file: !451, line: 233, baseType: !515, size: 64, offset: 736)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !489, line: 170, baseType: !516)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !489, line: 162, size: 64, elements: !517)
!517 = !{!518, !519}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !516, file: !489, line: 164, baseType: !13, size: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !516, file: !489, line: 169, baseType: !520, size: 32, offset: 32)
!520 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !516, file: !489, line: 165, size: 32, elements: !521)
!521 = !{!522, !525}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !520, file: !489, line: 167, baseType: !523, size: 32)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !524, line: 116, baseType: !13)
!524 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "")
!525 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !520, file: !489, line: 168, baseType: !526, size: 32)
!526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 32, elements: !238)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !457, file: !451, line: 234, baseType: !13, size: 32, offset: 800)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !450, file: !451, line: 386, baseType: !455, size: 32, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !450, file: !451, line: 386, baseType: !455, size: 32, offset: 96)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !450, file: !451, line: 388, baseType: !13, size: 32, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !450, file: !451, line: 390, baseType: !448, size: 32, offset: 160)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !450, file: !451, line: 392, baseType: !13, size: 32, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !450, file: !451, line: 394, baseType: !13, size: 32, offset: 224)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !450, file: !451, line: 395, baseType: !535, size: 32, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 32)
!536 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !451, line: 45, flags: DIFlagFwdDecl)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_mp", scope: !450, file: !451, line: 397, baseType: !538, size: 32, offset: 288)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 32)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mprec", file: !451, line: 349, size: 128, elements: !540)
!540 = !{!541, !554, !555, !556}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !539, file: !451, line: 352, baseType: !542, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 32)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !451, line: 52, size: 192, elements: !544)
!544 = !{!545, !546, !547, !548, !549, !550}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !543, file: !451, line: 54, baseType: !542, size: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !543, file: !451, line: 55, baseType: !13, size: 32, offset: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !543, file: !451, line: 55, baseType: !13, size: 32, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !543, file: !451, line: 55, baseType: !13, size: 32, offset: 96)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !543, file: !451, line: 55, baseType: !13, size: 32, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !543, file: !451, line: 56, baseType: !551, size: 32, offset: 160)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, size: 32, elements: !425)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !451, line: 22, baseType: !553)
!553 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !539, file: !451, line: 353, baseType: !13, size: 32, offset: 32)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !539, file: !451, line: 354, baseType: !542, size: 32, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !539, file: !451, line: 355, baseType: !557, size: 32, offset: 96)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !450, file: !451, line: 399, baseType: !559, size: 32, offset: 320)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 32)
!560 = !DISubroutineType(types: !561)
!561 = !{null, !449}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !450, file: !451, line: 401, baseType: !13, size: 32, offset: 352)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !450, file: !451, line: 404, baseType: !13, size: 32, offset: 384)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !450, file: !451, line: 405, baseType: !448, size: 32, offset: 416)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !450, file: !451, line: 407, baseType: !566, size: 32, offset: 448)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 32)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !451, line: 324, size: 192, elements: !568)
!568 = !{!569, !571, !572, !573}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !567, file: !451, line: 325, baseType: !570, size: 48)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 48, elements: !500)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !567, file: !451, line: 326, baseType: !570, size: 48, offset: 48)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !567, file: !451, line: 327, baseType: !132, size: 16, offset: 96)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !567, file: !451, line: 330, baseType: !574, size: 64, offset: 128)
!574 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !450, file: !451, line: 408, baseType: !576, size: 32, offset: 480)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 32)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !451, line: 60, size: 288, elements: !578)
!578 = !{!579, !580, !581, !582, !583, !584, !585, !586, !587}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !577, file: !451, line: 62, baseType: !13, size: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !577, file: !451, line: 63, baseType: !13, size: 32, offset: 32)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !577, file: !451, line: 64, baseType: !13, size: 32, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !577, file: !451, line: 65, baseType: !13, size: 32, offset: 96)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !577, file: !451, line: 66, baseType: !13, size: 32, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !577, file: !451, line: 67, baseType: !13, size: 32, offset: 160)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !577, file: !451, line: 68, baseType: !13, size: 32, offset: 192)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !577, file: !451, line: 69, baseType: !13, size: 32, offset: 224)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !577, file: !451, line: 70, baseType: !13, size: 32, offset: 256)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !450, file: !451, line: 409, baseType: !448, size: 32, offset: 512)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !450, file: !451, line: 412, baseType: !590, size: 32, offset: 544)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 32)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 32)
!592 = !DISubroutineType(types: !593)
!593 = !{null, !13}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !450, file: !451, line: 416, baseType: !595, size: 32, offset: 576)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 32)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !451, line: 90, size: 1120, elements: !597)
!597 = !{!598, !599, !600, !604}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !596, file: !451, line: 91, baseType: !595, size: 32)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !596, file: !451, line: 92, baseType: !13, size: 32, offset: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !596, file: !451, line: 93, baseType: !601, size: 1024, offset: 64)
!601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 1024, elements: !602)
!602 = !{!603}
!603 = !DISubrange(count: 32)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args_ptr", scope: !596, file: !451, line: 94, baseType: !605, size: 32, offset: 1088)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 32)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !451, line: 79, size: 2112, elements: !607)
!607 = !{!608, !610, !611, !612}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !606, file: !451, line: 80, baseType: !609, size: 1024)
!609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 1024, elements: !602)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !606, file: !451, line: 81, baseType: !609, size: 1024, offset: 1024)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !606, file: !451, line: 83, baseType: !552, size: 32, offset: 2048)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !606, file: !451, line: 86, baseType: !552, size: 32, offset: 2080)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !450, file: !451, line: 417, baseType: !596, size: 1120, offset: 608)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !450, file: !451, line: 420, baseType: !615, size: 96, offset: 1728)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !451, line: 296, size: 96, elements: !616)
!616 = !{!617, !619, !620}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !615, file: !451, line: 298, baseType: !618, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !615, file: !451, line: 299, baseType: !13, size: 32, offset: 32)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !615, file: !451, line: 300, baseType: !455, size: 32, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !450, file: !451, line: 421, baseType: !455, size: 32, offset: 1824)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "_misc", scope: !450, file: !451, line: 422, baseType: !623, size: 32, offset: 1856)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 32)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_misc_reent", file: !451, line: 359, size: 640, elements: !625)
!625 = !{!626, !627, !628, !629, !630, !632, !633, !634, !635, !636, !637}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !624, file: !451, line: 362, baseType: !448, size: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !624, file: !451, line: 363, baseType: !515, size: 64, offset: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !624, file: !451, line: 364, baseType: !515, size: 64, offset: 96)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !624, file: !451, line: 365, baseType: !515, size: 64, offset: 160)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !624, file: !451, line: 366, baseType: !631, size: 64, offset: 224)
!631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 64, elements: !181)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !624, file: !451, line: 367, baseType: !13, size: 32, offset: 288)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !624, file: !451, line: 368, baseType: !515, size: 64, offset: 320)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !624, file: !451, line: 369, baseType: !515, size: 64, offset: 384)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !624, file: !451, line: 370, baseType: !515, size: 64, offset: 448)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !624, file: !451, line: 371, baseType: !515, size: 64, offset: 512)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !624, file: !451, line: 372, baseType: !515, size: 64, offset: 576)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !450, file: !451, line: 423, baseType: !448, size: 32, offset: 1888)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !524, line: 46, baseType: !7)
!640 = distinct !DICompileUnit(language: DW_LANG_C99, file: !641, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !642, globals: !643, splitDebugInlining: false, nameTableKind: None)
!641 = !DIFile(filename: "syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!642 = !{!448, !446}
!643 = !{!440}
!644 = !{!645, !646, !647, !648}
!645 = !DILocalVariable(name: "r", arg: 1, scope: !442, file: !443, line: 63, type: !449)
!646 = !DILocalVariable(name: "nbytes", arg: 2, scope: !442, file: !443, line: 63, type: !639)
!647 = !DILocalVariable(name: "prev_heap_end", scope: !442, file: !443, line: 67, type: !448)
!648 = !DILocalVariable(name: "stack", scope: !442, file: !443, line: 68, type: !448)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(name: "build_date_time_str", scope: !651, file: !656, line: 4, type: !662, isLocal: false, isDefinition: true)
!651 = distinct !DICompileUnit(language: DW_LANG_C99, file: !652, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !653, splitDebugInlining: false, nameTableKind: None)
!652 = !DIFile(filename: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC/build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!653 = !{!649, !654, !660}
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(name: "sw_verno_str", scope: !651, file: !656, line: 5, type: !657, isLocal: false, isDefinition: true)
!656 = !DIFile(filename: "build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 88, elements: !658)
!658 = !{!659}
!659 = !DISubrange(count: 11)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(name: "hw_verno_str", scope: !651, file: !656, line: 6, type: !657, isLocal: false, isDefinition: true)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 248, elements: !663)
!663 = !{!664}
!664 = !DISubrange(count: 31)
!665 = distinct !DICompileUnit(language: DW_LANG_C99, file: !666, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !667, retainedTypes: !673, splitDebugInlining: false, nameTableKind: None)
!666 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_gpio_7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!667 = !{!668}
!668 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !669, line: 1209, baseType: !7, size: 32, elements: !670)
!669 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_gpio_7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!670 = !{!671, !672}
!671 = !DIEnumerator(name: "ePAD_CONTROL_BY_N9", value: 0)
!672 = !DIEnumerator(name: "ePAD_CONTROL_BY_CM4", value: 1)
!673 = !{!58, !60}
!674 = distinct !DICompileUnit(language: DW_LANG_C99, file: !675, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !676, retainedTypes: !754, splitDebugInlining: false, nameTableKind: None)
!675 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!676 = !{!677}
!677 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !678, line: 150, baseType: !7, size: 32, elements: !679)
!678 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!679 = !{!680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753}
!680 = !DIEnumerator(name: "ePAD_ANTSEL0", value: 0)
!681 = !DIEnumerator(name: "ePAD_ANTSEL1", value: 1)
!682 = !DIEnumerator(name: "ePAD_ANTSEL2", value: 2)
!683 = !DIEnumerator(name: "ePAD_ANTSEL3", value: 3)
!684 = !DIEnumerator(name: "ePAD_ANTSEL4", value: 4)
!685 = !DIEnumerator(name: "ePAD_ANTSEL5", value: 5)
!686 = !DIEnumerator(name: "ePAD_ANTSEL6", value: 6)
!687 = !DIEnumerator(name: "ePAD_ANTSEL7", value: 7)
!688 = !DIEnumerator(name: "ePAD_IN_GPIO8", value: 8)
!689 = !DIEnumerator(name: "ePAD_IN_GPIO9", value: 9)
!690 = !DIEnumerator(name: "ePAD_IN_GPIO10", value: 10)
!691 = !DIEnumerator(name: "ePAD_IN_GPIO11", value: 11)
!692 = !DIEnumerator(name: "ePAD_IN_GPIO12", value: 12)
!693 = !DIEnumerator(name: "ePAD_IN_GPIO13", value: 13)
!694 = !DIEnumerator(name: "ePAD_IN_GPIO14", value: 14)
!695 = !DIEnumerator(name: "ePAD_IN_GPIO15", value: 15)
!696 = !DIEnumerator(name: "ePAD_IN_GPIO16", value: 16)
!697 = !DIEnumerator(name: "ePAD_IN_GPIO17", value: 17)
!698 = !DIEnumerator(name: "ePAD_IN_GPIO18", value: 18)
!699 = !DIEnumerator(name: "ePAD_IN_GPIO19", value: 19)
!700 = !DIEnumerator(name: "ePAD_IN_GPIO20", value: 20)
!701 = !DIEnumerator(name: "ePAD_IN_GPIO21", value: 21)
!702 = !DIEnumerator(name: "ePAD_IN_GPIO22", value: 22)
!703 = !DIEnumerator(name: "ePAD_IN_UART0_TXD", value: 23)
!704 = !DIEnumerator(name: "ePAD_PERST_N", value: 24)
!705 = !DIEnumerator(name: "ePAD_WAKE_N", value: 25)
!706 = !DIEnumerator(name: "ePAD_CLK_REQ_N", value: 26)
!707 = !DIEnumerator(name: "ePAD_SDIO_CLK", value: 27)
!708 = !DIEnumerator(name: "ePAD_SDIO_CMD", value: 28)
!709 = !DIEnumerator(name: "ePAD_SDIO_DAT3", value: 29)
!710 = !DIEnumerator(name: "ePAD_SDIO_DAT2", value: 30)
!711 = !DIEnumerator(name: "ePAD_SDIO_DAT1", value: 31)
!712 = !DIEnumerator(name: "ePAD_SDIO_DAT0", value: 32)
!713 = !DIEnumerator(name: "ePAD_GPIO0", value: 33)
!714 = !DIEnumerator(name: "ePAD_GPIO1", value: 34)
!715 = !DIEnumerator(name: "ePAD_UART_DBG", value: 35)
!716 = !DIEnumerator(name: "ePAD_UART_RX", value: 36)
!717 = !DIEnumerator(name: "ePAD_UART_TX", value: 37)
!718 = !DIEnumerator(name: "ePAD_UART_RTS", value: 38)
!719 = !DIEnumerator(name: "ePAD_UART_CTS", value: 39)
!720 = !DIEnumerator(name: "ePAD_IN_GPIO44", value: 40)
!721 = !DIEnumerator(name: "ePAD_IN_GPIO45", value: 41)
!722 = !DIEnumerator(name: "ePAD_IN_GPIO46", value: 42)
!723 = !DIEnumerator(name: "ePAD_IN_GPIO47", value: 43)
!724 = !DIEnumerator(name: "ePAD_IN_GPIO48", value: 44)
!725 = !DIEnumerator(name: "ePAD_IN_GPIO49", value: 45)
!726 = !DIEnumerator(name: "ePAD_IN_GPIO50", value: 46)
!727 = !DIEnumerator(name: "ePAD_IN_GPIO51", value: 47)
!728 = !DIEnumerator(name: "ePAD_IN_GPIO52", value: 48)
!729 = !DIEnumerator(name: "ePAD_IN_GPIO53", value: 49)
!730 = !DIEnumerator(name: "ePAD_IN_GPIO54", value: 50)
!731 = !DIEnumerator(name: "ePAD_IN_PWM2", value: 51)
!732 = !DIEnumerator(name: "ePAD_IN_PWM3", value: 52)
!733 = !DIEnumerator(name: "ePAD_IN_PWM4", value: 53)
!734 = !DIEnumerator(name: "ePAD_IN_PWM5", value: 54)
!735 = !DIEnumerator(name: "ePAD_IN_PWM6", value: 55)
!736 = !DIEnumerator(name: "ePAD_IN_PWM7", value: 56)
!737 = !DIEnumerator(name: "ePAD_WF_RF_DIS_B", value: 57)
!738 = !DIEnumerator(name: "ePAD_BT_RF_DIS_B", value: 58)
!739 = !DIEnumerator(name: "ePAD_WF_LED_B", value: 59)
!740 = !DIEnumerator(name: "ePAD_BT_LED_B", value: 60)
!741 = !DIEnumerator(name: "ePAD_IN_ADC4", value: 61)
!742 = !DIEnumerator(name: "ePAD_IN_ADC5", value: 62)
!743 = !DIEnumerator(name: "ePAD_IN_ADC6", value: 63)
!744 = !DIEnumerator(name: "ePAD_IN_ADC7", value: 64)
!745 = !DIEnumerator(name: "ePAD_IN_ADC8", value: 65)
!746 = !DIEnumerator(name: "ePAD_IN_ADC9", value: 66)
!747 = !DIEnumerator(name: "ePAD_IN_ADC10", value: 67)
!748 = !DIEnumerator(name: "ePAD_IN_ADC11", value: 68)
!749 = !DIEnumerator(name: "ePAD_IN_ADC12", value: 69)
!750 = !DIEnumerator(name: "ePAD_IN_ADC13", value: 70)
!751 = !DIEnumerator(name: "ePAD_IN_ADC14", value: 71)
!752 = !DIEnumerator(name: "ePAD_IN_ADC15", value: 72)
!753 = !DIEnumerator(name: "ePAD_NUM", value: 73)
!754 = !{!58, !80}
!755 = distinct !DICompileUnit(language: DW_LANG_C99, file: !756, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !757, splitDebugInlining: false, nameTableKind: None)
!756 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!757 = !{!758, !783}
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !176, line: 418, baseType: !760)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !176, line: 395, size: 1120, elements: !761)
!761 = !{!762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !760, file: !176, line: 397, baseType: !213, size: 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !760, file: !176, line: 398, baseType: !91, size: 32, offset: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !760, file: !176, line: 399, baseType: !91, size: 32, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !760, file: !176, line: 400, baseType: !91, size: 32, offset: 96)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !760, file: !176, line: 401, baseType: !91, size: 32, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !760, file: !176, line: 402, baseType: !91, size: 32, offset: 160)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !760, file: !176, line: 403, baseType: !220, size: 96, offset: 192)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !760, file: !176, line: 404, baseType: !91, size: 32, offset: 288)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !760, file: !176, line: 405, baseType: !91, size: 32, offset: 320)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !760, file: !176, line: 406, baseType: !91, size: 32, offset: 352)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !760, file: !176, line: 407, baseType: !91, size: 32, offset: 384)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !760, file: !176, line: 408, baseType: !91, size: 32, offset: 416)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !760, file: !176, line: 409, baseType: !91, size: 32, offset: 448)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !760, file: !176, line: 410, baseType: !91, size: 32, offset: 480)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !760, file: !176, line: 411, baseType: !231, size: 64, offset: 512)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !760, file: !176, line: 412, baseType: !213, size: 32, offset: 576)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !760, file: !176, line: 413, baseType: !213, size: 32, offset: 608)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !760, file: !176, line: 414, baseType: !237, size: 128, offset: 640)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !760, file: !176, line: 415, baseType: !241, size: 160, offset: 768)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !760, file: !176, line: 416, baseType: !245, size: 160, offset: 928)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !760, file: !176, line: 417, baseType: !91, size: 32, offset: 1088)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 32)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !176, line: 378, baseType: !785)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !176, line: 363, size: 28704, elements: !786)
!786 = !{!787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !785, file: !176, line: 365, baseType: !180, size: 256)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !785, file: !176, line: 366, baseType: !184, size: 768, offset: 256)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !785, file: !176, line: 367, baseType: !180, size: 256, offset: 1024)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !785, file: !176, line: 368, baseType: !184, size: 768, offset: 1280)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !785, file: !176, line: 369, baseType: !180, size: 256, offset: 2048)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !785, file: !176, line: 370, baseType: !184, size: 768, offset: 2304)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !785, file: !176, line: 371, baseType: !180, size: 256, offset: 3072)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !785, file: !176, line: 372, baseType: !184, size: 768, offset: 3328)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !785, file: !176, line: 373, baseType: !180, size: 256, offset: 4096)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !785, file: !176, line: 374, baseType: !195, size: 1792, offset: 4352)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !785, file: !176, line: 375, baseType: !199, size: 1920, offset: 6144)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !785, file: !176, line: 376, baseType: !204, size: 20608, offset: 8064)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !785, file: !176, line: 377, baseType: !91, size: 32, offset: 28672)
!800 = distinct !DICompileUnit(language: DW_LANG_C99, file: !801, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !802, splitDebugInlining: false, nameTableKind: None)
!801 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!802 = !{!803, !677}
!803 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !804, line: 55, baseType: !7, size: 32, elements: !805)
!804 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!805 = !{!806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833}
!806 = !DIEnumerator(name: "eIOT_GPIO_IDX_0", value: 0)
!807 = !DIEnumerator(name: "eIOT_GPIO_IDX_1", value: 1)
!808 = !DIEnumerator(name: "eIOT_GPIO_IDX_2", value: 2)
!809 = !DIEnumerator(name: "eIOT_GPIO_IDX_3", value: 3)
!810 = !DIEnumerator(name: "eIOT_GPIO_IDX_4", value: 4)
!811 = !DIEnumerator(name: "eIOT_GPIO_IDX_5", value: 5)
!812 = !DIEnumerator(name: "eIOT_GPIO_IDX_6", value: 6)
!813 = !DIEnumerator(name: "eIOT_GPIO_IDX_7", value: 7)
!814 = !DIEnumerator(name: "eIOT_GPIO_IDX_24", value: 24)
!815 = !DIEnumerator(name: "eIOT_GPIO_IDX_25", value: 25)
!816 = !DIEnumerator(name: "eIOT_GPIO_IDX_26", value: 26)
!817 = !DIEnumerator(name: "eIOT_GPIO_IDX_27", value: 27)
!818 = !DIEnumerator(name: "eIOT_GPIO_IDX_28", value: 28)
!819 = !DIEnumerator(name: "eIOT_GPIO_IDX_29", value: 29)
!820 = !DIEnumerator(name: "eIOT_GPIO_IDX_30", value: 30)
!821 = !DIEnumerator(name: "eIOT_GPIO_IDX_31", value: 31)
!822 = !DIEnumerator(name: "eIOT_GPIO_IDX_32", value: 32)
!823 = !DIEnumerator(name: "eIOT_GPIO_IDX_33", value: 33)
!824 = !DIEnumerator(name: "eIOT_GPIO_IDX_34", value: 34)
!825 = !DIEnumerator(name: "eIOT_GPIO_IDX_35", value: 35)
!826 = !DIEnumerator(name: "eIOT_GPIO_IDX_36", value: 36)
!827 = !DIEnumerator(name: "eIOT_GPIO_IDX_37", value: 37)
!828 = !DIEnumerator(name: "eIOT_GPIO_IDX_38", value: 38)
!829 = !DIEnumerator(name: "eIOT_GPIO_IDX_39", value: 39)
!830 = !DIEnumerator(name: "eIOT_GPIO_IDX_57", value: 57)
!831 = !DIEnumerator(name: "eIOT_GPIO_IDX_58", value: 58)
!832 = !DIEnumerator(name: "eIOT_GPIO_IDX_59", value: 59)
!833 = !DIEnumerator(name: "eIOT_GPIO_IDX_60", value: 60)
!834 = distinct !DICompileUnit(language: DW_LANG_C99, file: !835, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !836, splitDebugInlining: false, nameTableKind: None)
!835 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/timer.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!836 = !{!490, !58}
!837 = distinct !DICompileUnit(language: DW_LANG_C99, file: !838, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!838 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_log.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!839 = distinct !DICompileUnit(language: DW_LANG_C99, file: !840, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !841, retainedTypes: !905, splitDebugInlining: false, nameTableKind: None)
!840 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!841 = !{!842, !849, !803, !880, !886, !890, !894, !900}
!842 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !843, line: 233, baseType: !13, size: 32, elements: !844)
!843 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!844 = !{!845, !846, !847, !848}
!845 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR", value: -3)
!846 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR_PORT", value: -2)
!847 = !DIEnumerator(name: "HAL_PINMUX_STATUS_INVALID_FUNCTION", value: -1)
!848 = !DIEnumerator(name: "HAL_PINMUX_STATUS_OK", value: 0)
!849 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !273, line: 249, baseType: !7, size: 32, elements: !850)
!850 = !{!851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879}
!851 = !DIEnumerator(name: "HAL_GPIO_0", value: 0)
!852 = !DIEnumerator(name: "HAL_GPIO_1", value: 1)
!853 = !DIEnumerator(name: "HAL_GPIO_2", value: 2)
!854 = !DIEnumerator(name: "HAL_GPIO_3", value: 3)
!855 = !DIEnumerator(name: "HAL_GPIO_4", value: 4)
!856 = !DIEnumerator(name: "HAL_GPIO_5", value: 5)
!857 = !DIEnumerator(name: "HAL_GPIO_6", value: 6)
!858 = !DIEnumerator(name: "HAL_GPIO_7", value: 7)
!859 = !DIEnumerator(name: "HAL_GPIO_24", value: 24)
!860 = !DIEnumerator(name: "HAL_GPIO_25", value: 25)
!861 = !DIEnumerator(name: "HAL_GPIO_26", value: 26)
!862 = !DIEnumerator(name: "HAL_GPIO_27", value: 27)
!863 = !DIEnumerator(name: "HAL_GPIO_28", value: 28)
!864 = !DIEnumerator(name: "HAL_GPIO_29", value: 29)
!865 = !DIEnumerator(name: "HAL_GPIO_30", value: 30)
!866 = !DIEnumerator(name: "HAL_GPIO_31", value: 31)
!867 = !DIEnumerator(name: "HAL_GPIO_32", value: 32)
!868 = !DIEnumerator(name: "HAL_GPIO_33", value: 33)
!869 = !DIEnumerator(name: "HAL_GPIO_34", value: 34)
!870 = !DIEnumerator(name: "HAL_GPIO_35", value: 35)
!871 = !DIEnumerator(name: "HAL_GPIO_36", value: 36)
!872 = !DIEnumerator(name: "HAL_GPIO_37", value: 37)
!873 = !DIEnumerator(name: "HAL_GPIO_38", value: 38)
!874 = !DIEnumerator(name: "HAL_GPIO_39", value: 39)
!875 = !DIEnumerator(name: "HAL_GPIO_57", value: 57)
!876 = !DIEnumerator(name: "HAL_GPIO_58", value: 58)
!877 = !DIEnumerator(name: "HAL_GPIO_59", value: 59)
!878 = !DIEnumerator(name: "HAL_GPIO_60", value: 60)
!879 = !DIEnumerator(name: "HAL_GPIO_MAX", value: 61)
!880 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !843, line: 224, baseType: !13, size: 32, elements: !881)
!881 = !{!882, !883, !884, !885}
!882 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR", value: -3)
!883 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR_PIN", value: -2)
!884 = !DIEnumerator(name: "HAL_GPIO_STATUS_INVALID_PARAMETER", value: -1)
!885 = !DIEnumerator(name: "HAL_GPIO_STATUS_OK", value: 0)
!886 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !843, line: 217, baseType: !7, size: 32, elements: !887)
!887 = !{!888, !889}
!888 = !DIEnumerator(name: "HAL_GPIO_DATA_LOW", value: 0)
!889 = !DIEnumerator(name: "HAL_GPIO_DATA_HIGH", value: 1)
!890 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !843, line: 210, baseType: !7, size: 32, elements: !891)
!891 = !{!892, !893}
!892 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_INPUT", value: 0)
!893 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_OUTPUT", value: 1)
!894 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !843, line: 242, baseType: !7, size: 32, elements: !895)
!895 = !{!896, !897, !898, !899}
!896 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_4MA", value: 0)
!897 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_8MA", value: 1)
!898 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_12MA", value: 2)
!899 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_16MA", value: 3)
!900 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !901, line: 57, baseType: !7, size: 32, elements: !902)
!901 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/low_hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!902 = !{!903, !904}
!903 = !DIEnumerator(name: "eDirection_IN", value: 0)
!904 = !DIEnumerator(name: "eDirection_OUT", value: 1)
!905 = !{!906, !149, !907, !150, !908, !909}
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_IOT_GPIO_NAME_T", file: !804, line: 87, baseType: !803)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_data_t", file: !843, line: 220, baseType: !886)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_driving_current_t", file: !843, line: 247, baseType: !894)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_DIR_T", file: !901, line: 60, baseType: !900)
!910 = distinct !DICompileUnit(language: DW_LANG_C99, file: !911, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !912, retainedTypes: !926, splitDebugInlining: false, nameTableKind: None)
!911 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_sha.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!912 = !{!913, !918}
!913 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !914, line: 162, baseType: !13, size: 32, elements: !915)
!914 = !DIFile(filename: "../../../../../driver/chip/inc/hal_sha.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!915 = !{!916, !917}
!916 = !DIEnumerator(name: "HAL_SHA_STATUS_ERROR", value: -1)
!917 = !DIEnumerator(name: "HAL_SHA_STATUS_OK", value: 0)
!918 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !919, line: 55, baseType: !7, size: 32, elements: !920)
!919 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/crypt_sha.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!920 = !{!921, !922, !923, !924, !925}
!921 = !DIEnumerator(name: "HAL_SHA_INTERNAL_SHA1", value: 0)
!922 = !DIEnumerator(name: "HAL_SHA_INTERNAL_SHA224", value: 1)
!923 = !DIEnumerator(name: "HAL_SHA_INTERNAL_SHA256", value: 2)
!924 = !DIEnumerator(name: "HAL_SHA_INTERNAL_SHA384", value: 3)
!925 = !DIEnumerator(name: "HAL_SHA_INTERNAL_SHA512", value: 4)
!926 = !{!927, !149}
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 32)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "SHA_CTX_STRUC", file: !919, line: 93, baseType: !929)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SHA_CTX_STRUC", file: !919, line: 87, size: 1632, elements: !930)
!930 = !{!931, !933, !934, !938, !939}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "HashValue", scope: !929, file: !919, line: 88, baseType: !932, size: 512)
!932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 512, elements: !434)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "MessageLen", scope: !929, file: !919, line: 89, baseType: !92, size: 32, offset: 512)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "Buff", scope: !929, file: !919, line: 90, baseType: !935, size: 1024, offset: 544)
!935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 1024, elements: !936)
!936 = !{!937}
!937 = !DISubrange(count: 128)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "Block", scope: !929, file: !919, line: 91, baseType: !363, size: 32, offset: 1568)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "BlockLen", scope: !929, file: !919, line: 92, baseType: !92, size: 32, offset: 1600)
!940 = distinct !DICompileUnit(language: DW_LANG_C99, file: !941, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !942, retainedTypes: !943, splitDebugInlining: false, nameTableKind: None)
!941 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/sha_get_hash/src/main.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!942 = !{!272, !278, !294, !300, !304, !849}
!943 = !{!363, !92, !448}
!944 = !{!"Ubuntu clang version 14.0.6"}
!945 = !{i32 7, !"Dwarf Version", i32 2}
!946 = !{i32 2, !"Debug Info Version", i32 3}
!947 = !{i32 1, !"wchar_size", i32 4}
!948 = !{i32 1, !"min_enum_size", i32 4}
!949 = !{i32 1, !"branch-target-enforcement", i32 0}
!950 = !{i32 1, !"sign-return-address", i32 0}
!951 = !{i32 1, !"sign-return-address-all", i32 0}
!952 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!953 = !{i32 7, !"frame-pointer", i32 2}
!954 = distinct !DISubprogram(name: "GPT_ResetTimer", scope: !3, file: !3, line: 73, type: !955, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !957)
!955 = !DISubroutineType(types: !956)
!956 = !{null, !60, !60, !156}
!957 = !{!958, !959, !960}
!958 = !DILocalVariable(name: "timerNum", arg: 1, scope: !954, file: !3, line: 73, type: !60)
!959 = !DILocalVariable(name: "countValue", arg: 2, scope: !954, file: !3, line: 73, type: !60)
!960 = !DILocalVariable(name: "autoRepeat", arg: 3, scope: !954, file: !3, line: 73, type: !156)
!961 = !DILocation(line: 0, scope: !954)
!962 = !DILocation(line: 75, column: 5, scope: !963)
!963 = distinct !DILexicalBlock(scope: !954, file: !3, line: 75, column: 5)
!964 = !DILocation(line: 75, column: 5, scope: !954)
!965 = !DILocation(line: 75, column: 5, scope: !966)
!966 = distinct !DILexicalBlock(scope: !963, file: !3, line: 75, column: 5)
!967 = distinct !{!967, !965, !965}
!968 = !DILocation(line: 77, column: 9, scope: !954)
!969 = !DILocation(line: 78, column: 30, scope: !970)
!970 = distinct !DILexicalBlock(scope: !971, file: !3, line: 77, column: 24)
!971 = distinct !DILexicalBlock(scope: !954, file: !3, line: 77, column: 9)
!972 = !DILocation(line: 0, scope: !973)
!973 = distinct !DILexicalBlock(scope: !970, file: !3, line: 79, column: 13)
!974 = !DILocation(line: 79, column: 13, scope: !970)
!975 = !DILocation(line: 80, column: 34, scope: !976)
!976 = distinct !DILexicalBlock(scope: !973, file: !3, line: 79, column: 37)
!977 = !DILocation(line: 81, column: 9, scope: !976)
!978 = !DILocation(line: 82, column: 34, scope: !979)
!979 = distinct !DILexicalBlock(scope: !973, file: !3, line: 81, column: 16)
!980 = !DILocation(line: 85, column: 30, scope: !981)
!981 = distinct !DILexicalBlock(scope: !982, file: !3, line: 84, column: 31)
!982 = distinct !DILexicalBlock(scope: !971, file: !3, line: 84, column: 16)
!983 = !DILocation(line: 0, scope: !984)
!984 = distinct !DILexicalBlock(scope: !981, file: !3, line: 86, column: 13)
!985 = !DILocation(line: 86, column: 13, scope: !981)
!986 = !DILocation(line: 87, column: 34, scope: !987)
!987 = distinct !DILexicalBlock(scope: !984, file: !3, line: 86, column: 37)
!988 = !DILocation(line: 88, column: 9, scope: !987)
!989 = !DILocation(line: 89, column: 34, scope: !990)
!990 = distinct !DILexicalBlock(scope: !984, file: !3, line: 88, column: 16)
!991 = !DILocation(line: 92, column: 1, scope: !954)
!992 = distinct !DISubprogram(name: "GPT_Start", scope: !3, file: !3, line: 94, type: !993, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !995)
!993 = !DISubroutineType(types: !994)
!994 = !{null, !60}
!995 = !{!996}
!996 = !DILocalVariable(name: "timerNum", arg: 1, scope: !992, file: !3, line: 94, type: !60)
!997 = !DILocation(line: 0, scope: !992)
!998 = !DILocation(line: 96, column: 5, scope: !992)
!999 = !DILocation(line: 96, column: 5, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 96, column: 5)
!1001 = distinct !DILexicalBlock(scope: !992, file: !3, line: 96, column: 5)
!1002 = distinct !{!1002, !999, !999}
!1003 = !DILocation(line: 99, column: 30, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 98, column: 24)
!1005 = distinct !DILexicalBlock(scope: !992, file: !3, line: 98, column: 9)
!1006 = !DILocation(line: 100, column: 9, scope: !1004)
!1007 = !DILocation(line: 101, column: 5, scope: !1004)
!1008 = !DILocation(line: 102, column: 30, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 101, column: 31)
!1010 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 101, column: 16)
!1011 = !DILocation(line: 103, column: 9, scope: !1009)
!1012 = !DILocation(line: 104, column: 5, scope: !1009)
!1013 = !DILocation(line: 105, column: 30, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 104, column: 31)
!1015 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 104, column: 16)
!1016 = !DILocation(line: 106, column: 5, scope: !1014)
!1017 = !DILocation(line: 108, column: 1, scope: !992)
!1018 = distinct !DISubprogram(name: "GPT_Stop", scope: !3, file: !3, line: 110, type: !993, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1019)
!1019 = !{!1020}
!1020 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1018, file: !3, line: 110, type: !60)
!1021 = !DILocation(line: 0, scope: !1018)
!1022 = !DILocation(line: 112, column: 9, scope: !1018)
!1023 = !DILocation(line: 113, column: 30, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 112, column: 24)
!1025 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 112, column: 9)
!1026 = !DILocation(line: 114, column: 30, scope: !1024)
!1027 = !DILocation(line: 115, column: 31, scope: !1024)
!1028 = !DILocation(line: 117, column: 5, scope: !1024)
!1029 = !DILocation(line: 118, column: 30, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 117, column: 31)
!1031 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 117, column: 16)
!1032 = !DILocation(line: 119, column: 30, scope: !1030)
!1033 = !DILocation(line: 120, column: 31, scope: !1030)
!1034 = !DILocation(line: 121, column: 5, scope: !1030)
!1035 = !DILocation(line: 122, column: 30, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 121, column: 31)
!1037 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 121, column: 16)
!1038 = !DILocation(line: 123, column: 5, scope: !1036)
!1039 = !DILocation(line: 124, column: 30, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 123, column: 31)
!1041 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 123, column: 16)
!1042 = !DILocation(line: 125, column: 5, scope: !1040)
!1043 = !DILocation(line: 128, column: 1, scope: !1018)
!1044 = distinct !DISubprogram(name: "GPT_INT_Handler", scope: !3, file: !3, line: 130, type: !254, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1045)
!1045 = !{!1046, !1047}
!1046 = !DILocalVariable(name: "irq_number", arg: 1, scope: !1044, file: !3, line: 130, type: !171)
!1047 = !DILocalVariable(name: "GPT_Status", scope: !1044, file: !3, line: 132, type: !131)
!1048 = !DILocation(line: 0, scope: !1044)
!1049 = !DILocation(line: 135, column: 18, scope: !1044)
!1050 = !DILocation(line: 136, column: 26, scope: !1044)
!1051 = !DILocation(line: 136, column: 24, scope: !1044)
!1052 = !DILocation(line: 138, column: 20, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 138, column: 9)
!1054 = !DILocation(line: 138, column: 9, scope: !1044)
!1055 = !DILocation(line: 141, column: 27, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 141, column: 16)
!1057 = !DILocation(line: 141, column: 16, scope: !1053)
!1058 = !DILocation(line: 0, scope: !1053)
!1059 = !DILocation(line: 145, column: 1, scope: !1044)
!1060 = distinct !DISubprogram(name: "GPT_init", scope: !3, file: !3, line: 147, type: !1061, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1063)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{null, !60, !60, !74}
!1063 = !{!1064, !1065, !1066}
!1064 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1060, file: !3, line: 147, type: !60)
!1065 = !DILocalVariable(name: "speed_32us", arg: 2, scope: !1060, file: !3, line: 147, type: !60)
!1066 = !DILocalVariable(name: "GPT_Callback", arg: 3, scope: !1060, file: !3, line: 147, type: !74)
!1067 = !DILocation(line: 0, scope: !1060)
!1068 = !DILocation(line: 149, column: 5, scope: !1060)
!1069 = !DILocation(line: 149, column: 5, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 149, column: 5)
!1071 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 149, column: 5)
!1072 = distinct !{!1072, !1069, !1069}
!1073 = !DILocation(line: 149, column: 5, scope: !1071)
!1074 = !DILocation(line: 151, column: 23, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 151, column: 9)
!1076 = !DILocation(line: 152, column: 9, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 151, column: 41)
!1078 = !DILocation(line: 153, column: 9, scope: !1077)
!1079 = !DILocation(line: 154, column: 9, scope: !1077)
!1080 = !DILocation(line: 155, column: 5, scope: !1077)
!1081 = !DILocation(line: 157, column: 9, scope: !1060)
!1082 = !DILocation(line: 158, column: 37, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 157, column: 24)
!1084 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 157, column: 9)
!1085 = !DILocation(line: 159, column: 30, scope: !1083)
!1086 = !DILocation(line: 160, column: 45, scope: !1083)
!1087 = !DILocation(line: 160, column: 30, scope: !1083)
!1088 = !DILocation(line: 161, column: 5, scope: !1083)
!1089 = !DILocation(line: 162, column: 37, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 161, column: 31)
!1091 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 161, column: 16)
!1092 = !DILocation(line: 163, column: 30, scope: !1090)
!1093 = !DILocation(line: 164, column: 45, scope: !1090)
!1094 = !DILocation(line: 164, column: 30, scope: !1090)
!1095 = !DILocation(line: 165, column: 5, scope: !1090)
!1096 = !DILocation(line: 166, column: 59, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 165, column: 31)
!1098 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 165, column: 16)
!1099 = !DILocation(line: 166, column: 45, scope: !1097)
!1100 = !DILocation(line: 166, column: 30, scope: !1097)
!1101 = !DILocation(line: 167, column: 5, scope: !1097)
!1102 = !DILocation(line: 168, column: 59, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 167, column: 31)
!1104 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 167, column: 16)
!1105 = !DILocation(line: 168, column: 45, scope: !1103)
!1106 = !DILocation(line: 168, column: 30, scope: !1103)
!1107 = !DILocation(line: 169, column: 30, scope: !1103)
!1108 = !DILocation(line: 170, column: 5, scope: !1103)
!1109 = !DILocation(line: 171, column: 1, scope: !1060)
!1110 = distinct !DISubprogram(name: "GPT_return_current_count", scope: !3, file: !3, line: 173, type: !1111, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1113)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!60, !60}
!1113 = !{!1114, !1115}
!1114 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1110, file: !3, line: 173, type: !60)
!1115 = !DILocalVariable(name: "current_count", scope: !1110, file: !3, line: 175, type: !60)
!1116 = !DILocation(line: 0, scope: !1110)
!1117 = !DILocation(line: 177, column: 5, scope: !1110)
!1118 = !DILocation(line: 177, column: 5, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 177, column: 5)
!1120 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 177, column: 5)
!1121 = distinct !{!1121, !1118, !1118}
!1122 = !DILocation(line: 183, column: 5, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 181, column: 31)
!1124 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 181, column: 16)
!1125 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 179, column: 9)
!1126 = !DILocation(line: 185, column: 5, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 183, column: 31)
!1128 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 183, column: 16)
!1129 = !DILocation(line: 187, column: 5, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 185, column: 31)
!1131 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 185, column: 16)
!1132 = !DILocation(line: 0, scope: !1125)
!1133 = !DILocation(line: 189, column: 5, scope: !1110)
!1134 = distinct !DISubprogram(name: "CM4_GPT2Init", scope: !3, file: !3, line: 193, type: !75, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1135)
!1135 = !{}
!1136 = !DILocation(line: 195, column: 5, scope: !1134)
!1137 = !DILocation(line: 196, column: 1, scope: !1134)
!1138 = distinct !DISubprogram(name: "CM4_GPT4Init", scope: !3, file: !3, line: 198, type: !75, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1135)
!1139 = !DILocation(line: 200, column: 5, scope: !1138)
!1140 = !DILocation(line: 201, column: 1, scope: !1138)
!1141 = distinct !DISubprogram(name: "halGPIO_ConfDirection", scope: !666, file: !666, line: 54, type: !1142, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !1145)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!1144, !80, !133}
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !6, line: 56, baseType: !13)
!1145 = !{!1146, !1147, !1148, !1150}
!1146 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1141, file: !666, line: 54, type: !80)
!1147 = !DILocalVariable(name: "outEnable", arg: 2, scope: !1141, file: !666, line: 54, type: !133)
!1148 = !DILocalVariable(name: "no", scope: !1141, file: !666, line: 57, type: !1149)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !6, line: 60, baseType: !132)
!1150 = !DILocalVariable(name: "remainder", scope: !1141, file: !666, line: 58, type: !1149)
!1151 = !DILocation(line: 0, scope: !1141)
!1152 = !DILocation(line: 59, column: 19, scope: !1141)
!1153 = !DILocation(line: 60, column: 17, scope: !1141)
!1154 = !DILocation(line: 61, column: 5, scope: !1141)
!1155 = !DILocation(line: 65, column: 27, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !666, line: 65, column: 17)
!1157 = distinct !DILexicalBlock(scope: !1141, file: !666, line: 61, column: 17)
!1158 = !DILocation(line: 0, scope: !1156)
!1159 = !DILocation(line: 65, column: 17, scope: !1157)
!1160 = !DILocation(line: 66, column: 21, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1156, file: !666, line: 65, column: 33)
!1162 = !DILocation(line: 67, column: 73, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !666, line: 66, column: 38)
!1164 = distinct !DILexicalBlock(scope: !1161, file: !666, line: 66, column: 21)
!1165 = !DILocation(line: 67, column: 69, scope: !1163)
!1166 = !DILocation(line: 67, column: 66, scope: !1163)
!1167 = !DILocation(line: 68, column: 17, scope: !1163)
!1168 = !DILocation(line: 68, column: 28, scope: !1164)
!1169 = !DILocation(line: 69, column: 77, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !666, line: 68, column: 45)
!1171 = distinct !DILexicalBlock(scope: !1164, file: !666, line: 68, column: 28)
!1172 = !DILocation(line: 70, column: 77, scope: !1170)
!1173 = !DILocation(line: 71, column: 17, scope: !1170)
!1174 = !DILocation(line: 72, column: 77, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !666, line: 71, column: 45)
!1176 = distinct !DILexicalBlock(scope: !1171, file: !666, line: 71, column: 28)
!1177 = !DILocation(line: 73, column: 77, scope: !1175)
!1178 = !DILocation(line: 74, column: 17, scope: !1175)
!1179 = !DILocation(line: 75, column: 79, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !666, line: 74, column: 45)
!1181 = distinct !DILexicalBlock(scope: !1176, file: !666, line: 74, column: 28)
!1182 = !DILocation(line: 76, column: 79, scope: !1180)
!1183 = !DILocation(line: 77, column: 17, scope: !1180)
!1184 = !DILocation(line: 78, column: 79, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !666, line: 77, column: 45)
!1186 = distinct !DILexicalBlock(scope: !1181, file: !666, line: 77, column: 28)
!1187 = !DILocation(line: 79, column: 79, scope: !1185)
!1188 = !DILocation(line: 80, column: 17, scope: !1185)
!1189 = !DILocation(line: 81, column: 79, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !666, line: 80, column: 45)
!1191 = distinct !DILexicalBlock(scope: !1186, file: !666, line: 80, column: 28)
!1192 = !DILocation(line: 82, column: 79, scope: !1190)
!1193 = !DILocation(line: 83, column: 17, scope: !1190)
!1194 = !DILocation(line: 85, column: 17, scope: !1161)
!1195 = !DILocation(line: 86, column: 13, scope: !1161)
!1196 = !DILocation(line: 88, column: 21, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1156, file: !666, line: 86, column: 20)
!1198 = !DILocation(line: 89, column: 72, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !666, line: 88, column: 38)
!1200 = distinct !DILexicalBlock(scope: !1197, file: !666, line: 88, column: 21)
!1201 = !DILocation(line: 89, column: 66, scope: !1199)
!1202 = !DILocation(line: 90, column: 17, scope: !1199)
!1203 = !DILocation(line: 90, column: 28, scope: !1200)
!1204 = !DILocation(line: 91, column: 77, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !666, line: 90, column: 45)
!1206 = distinct !DILexicalBlock(scope: !1200, file: !666, line: 90, column: 28)
!1207 = !DILocation(line: 92, column: 17, scope: !1205)
!1208 = !DILocation(line: 93, column: 77, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !666, line: 92, column: 45)
!1210 = distinct !DILexicalBlock(scope: !1206, file: !666, line: 92, column: 28)
!1211 = !DILocation(line: 94, column: 17, scope: !1209)
!1212 = !DILocation(line: 95, column: 79, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !666, line: 94, column: 45)
!1214 = distinct !DILexicalBlock(scope: !1210, file: !666, line: 94, column: 28)
!1215 = !DILocation(line: 96, column: 17, scope: !1213)
!1216 = !DILocation(line: 97, column: 79, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !666, line: 96, column: 45)
!1218 = distinct !DILexicalBlock(scope: !1214, file: !666, line: 96, column: 28)
!1219 = !DILocation(line: 98, column: 17, scope: !1217)
!1220 = !DILocation(line: 99, column: 79, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !666, line: 98, column: 45)
!1222 = distinct !DILexicalBlock(scope: !1218, file: !666, line: 98, column: 28)
!1223 = !DILocation(line: 100, column: 17, scope: !1221)
!1224 = !DILocation(line: 103, column: 17, scope: !1197)
!1225 = !DILocation(line: 109, column: 27, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1157, file: !666, line: 109, column: 17)
!1227 = !DILocation(line: 0, scope: !1226)
!1228 = !DILocation(line: 109, column: 17, scope: !1157)
!1229 = !DILocation(line: 110, column: 21, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1226, file: !666, line: 109, column: 33)
!1231 = !DILocation(line: 111, column: 73, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !666, line: 110, column: 36)
!1233 = distinct !DILexicalBlock(scope: !1230, file: !666, line: 110, column: 21)
!1234 = !DILocation(line: 111, column: 69, scope: !1232)
!1235 = !DILocation(line: 111, column: 66, scope: !1232)
!1236 = !DILocation(line: 112, column: 17, scope: !1232)
!1237 = !DILocation(line: 113, column: 79, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1233, file: !666, line: 112, column: 24)
!1239 = !DILocation(line: 114, column: 79, scope: !1238)
!1240 = !DILocation(line: 117, column: 17, scope: !1230)
!1241 = !DILocation(line: 118, column: 13, scope: !1230)
!1242 = !DILocation(line: 120, column: 21, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1226, file: !666, line: 118, column: 20)
!1244 = !DILocation(line: 121, column: 72, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !666, line: 120, column: 36)
!1246 = distinct !DILexicalBlock(scope: !1243, file: !666, line: 120, column: 21)
!1247 = !DILocation(line: 121, column: 66, scope: !1245)
!1248 = !DILocation(line: 122, column: 17, scope: !1245)
!1249 = !DILocation(line: 123, column: 79, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1246, file: !666, line: 122, column: 24)
!1251 = !DILocation(line: 126, column: 17, scope: !1243)
!1252 = !DILocation(line: 133, column: 1, scope: !1141)
!1253 = distinct !DISubprogram(name: "halGPO_Write", scope: !666, file: !666, line: 136, type: !1142, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !1254)
!1254 = !{!1255, !1256, !1257, !1258}
!1255 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1253, file: !666, line: 136, type: !80)
!1256 = !DILocalVariable(name: "writeValue", arg: 2, scope: !1253, file: !666, line: 136, type: !133)
!1257 = !DILocalVariable(name: "no", scope: !1253, file: !666, line: 138, type: !1149)
!1258 = !DILocalVariable(name: "remainder", scope: !1253, file: !666, line: 139, type: !1149)
!1259 = !DILocation(line: 0, scope: !1253)
!1260 = !DILocation(line: 140, column: 19, scope: !1253)
!1261 = !DILocation(line: 141, column: 17, scope: !1253)
!1262 = !DILocation(line: 142, column: 5, scope: !1253)
!1263 = !DILocation(line: 145, column: 17, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !666, line: 145, column: 17)
!1265 = distinct !DILexicalBlock(scope: !1253, file: !666, line: 142, column: 17)
!1266 = !DILocation(line: 0, scope: !1264)
!1267 = !DILocation(line: 145, column: 17, scope: !1265)
!1268 = !DILocation(line: 146, column: 17, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1264, file: !666, line: 145, column: 29)
!1270 = !DILocation(line: 147, column: 13, scope: !1269)
!1271 = !DILocation(line: 148, column: 17, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1264, file: !666, line: 147, column: 20)
!1273 = !DILocation(line: 153, column: 17, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1265, file: !666, line: 153, column: 17)
!1275 = !DILocation(line: 0, scope: !1274)
!1276 = !DILocation(line: 153, column: 17, scope: !1265)
!1277 = !DILocation(line: 154, column: 17, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1274, file: !666, line: 153, column: 29)
!1279 = !DILocation(line: 155, column: 13, scope: !1278)
!1280 = !DILocation(line: 156, column: 17, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1274, file: !666, line: 155, column: 20)
!1282 = !DILocation(line: 163, column: 1, scope: !1253)
!1283 = distinct !DISubprogram(name: "halgetGPIO_DOUT", scope: !666, file: !666, line: 169, type: !1284, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !1286)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!133, !80}
!1286 = !{!1287, !1288, !1289, !1290}
!1287 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1283, file: !666, line: 169, type: !80)
!1288 = !DILocalVariable(name: "no", scope: !1283, file: !666, line: 171, type: !1149)
!1289 = !DILocalVariable(name: "remainder", scope: !1283, file: !666, line: 172, type: !1149)
!1290 = !DILocalVariable(name: "dout", scope: !1283, file: !666, line: 175, type: !133)
!1291 = !DILocation(line: 0, scope: !1283)
!1292 = !DILocation(line: 173, column: 19, scope: !1283)
!1293 = !DILocation(line: 174, column: 17, scope: !1283)
!1294 = !DILocation(line: 177, column: 5, scope: !1283)
!1295 = !DILocation(line: 183, column: 13, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1283, file: !666, line: 177, column: 17)
!1297 = !DILocation(line: 0, scope: !1296)
!1298 = !DILocation(line: 187, column: 5, scope: !1283)
!1299 = !DILocation(line: 188, column: 1, scope: !1283)
!1300 = distinct !DISubprogram(name: "halgetGPIO_DIN", scope: !666, file: !666, line: 189, type: !1284, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !1301)
!1301 = !{!1302, !1303, !1304, !1305}
!1302 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1300, file: !666, line: 189, type: !80)
!1303 = !DILocalVariable(name: "no", scope: !1300, file: !666, line: 191, type: !1149)
!1304 = !DILocalVariable(name: "remainder", scope: !1300, file: !666, line: 192, type: !1149)
!1305 = !DILocalVariable(name: "din", scope: !1300, file: !666, line: 195, type: !133)
!1306 = !DILocation(line: 0, scope: !1300)
!1307 = !DILocation(line: 193, column: 19, scope: !1300)
!1308 = !DILocation(line: 194, column: 17, scope: !1300)
!1309 = !DILocation(line: 196, column: 5, scope: !1300)
!1310 = !DILocation(line: 203, column: 13, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1300, file: !666, line: 196, column: 17)
!1312 = !DILocation(line: 0, scope: !1311)
!1313 = !DILocation(line: 208, column: 5, scope: !1300)
!1314 = !DILocation(line: 209, column: 1, scope: !1300)
!1315 = distinct !DISubprogram(name: "halgetGPIO_OutEnable", scope: !666, file: !666, line: 210, type: !1284, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !1316)
!1316 = !{!1317, !1318, !1319, !1320}
!1317 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1315, file: !666, line: 210, type: !80)
!1318 = !DILocalVariable(name: "no", scope: !1315, file: !666, line: 212, type: !1149)
!1319 = !DILocalVariable(name: "remainder", scope: !1315, file: !666, line: 213, type: !1149)
!1320 = !DILocalVariable(name: "outEnable", scope: !1315, file: !666, line: 216, type: !133)
!1321 = !DILocation(line: 0, scope: !1315)
!1322 = !DILocation(line: 214, column: 19, scope: !1315)
!1323 = !DILocation(line: 215, column: 17, scope: !1315)
!1324 = !DILocation(line: 218, column: 5, scope: !1315)
!1325 = !DILocation(line: 224, column: 13, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1315, file: !666, line: 218, column: 17)
!1327 = !DILocation(line: 0, scope: !1326)
!1328 = !DILocation(line: 228, column: 5, scope: !1315)
!1329 = !DILocation(line: 229, column: 1, scope: !1315)
!1330 = distinct !DISubprogram(name: "halGPIO_PullUp_SET", scope: !666, file: !666, line: 232, type: !1331, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !1333)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!1144, !80}
!1333 = !{!1334, !1335, !1336}
!1334 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1330, file: !666, line: 232, type: !80)
!1335 = !DILocalVariable(name: "no", scope: !1330, file: !666, line: 234, type: !1149)
!1336 = !DILocalVariable(name: "remainder", scope: !1330, file: !666, line: 235, type: !1149)
!1337 = !DILocation(line: 0, scope: !1330)
!1338 = !DILocation(line: 236, column: 19, scope: !1330)
!1339 = !DILocation(line: 237, column: 17, scope: !1330)
!1340 = !DILocation(line: 238, column: 5, scope: !1330)
!1341 = !DILocation(line: 239, column: 5, scope: !1330)
!1342 = !DILocation(line: 241, column: 27, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !666, line: 241, column: 17)
!1344 = distinct !DILexicalBlock(scope: !1330, file: !666, line: 239, column: 17)
!1345 = !DILocation(line: 241, column: 17, scope: !1344)
!1346 = !DILocation(line: 241, column: 17, scope: !1343)
!1347 = !DILocation(line: 242, column: 17, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1343, file: !666, line: 241, column: 34)
!1349 = !DILocation(line: 243, column: 13, scope: !1348)
!1350 = !DILocation(line: 243, column: 24, scope: !1343)
!1351 = !DILocation(line: 244, column: 73, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !666, line: 243, column: 41)
!1353 = distinct !DILexicalBlock(scope: !1343, file: !666, line: 243, column: 24)
!1354 = !DILocation(line: 245, column: 73, scope: !1352)
!1355 = !DILocation(line: 246, column: 13, scope: !1352)
!1356 = !DILocation(line: 247, column: 73, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !666, line: 246, column: 41)
!1358 = distinct !DILexicalBlock(scope: !1353, file: !666, line: 246, column: 24)
!1359 = !DILocation(line: 248, column: 73, scope: !1357)
!1360 = !DILocation(line: 249, column: 13, scope: !1357)
!1361 = !DILocation(line: 250, column: 75, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !666, line: 249, column: 41)
!1363 = distinct !DILexicalBlock(scope: !1358, file: !666, line: 249, column: 24)
!1364 = !DILocation(line: 251, column: 75, scope: !1362)
!1365 = !DILocation(line: 252, column: 13, scope: !1362)
!1366 = !DILocation(line: 253, column: 75, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !666, line: 252, column: 41)
!1368 = distinct !DILexicalBlock(scope: !1363, file: !666, line: 252, column: 24)
!1369 = !DILocation(line: 254, column: 75, scope: !1367)
!1370 = !DILocation(line: 255, column: 13, scope: !1367)
!1371 = !DILocation(line: 256, column: 75, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !666, line: 255, column: 41)
!1373 = distinct !DILexicalBlock(scope: !1368, file: !666, line: 255, column: 24)
!1374 = !DILocation(line: 257, column: 75, scope: !1372)
!1375 = !DILocation(line: 258, column: 13, scope: !1372)
!1376 = !DILocation(line: 261, column: 18, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1344, file: !666, line: 261, column: 17)
!1378 = !DILocation(line: 261, column: 17, scope: !1344)
!1379 = !DILocation(line: 262, column: 75, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1377, file: !666, line: 261, column: 29)
!1381 = !DILocation(line: 263, column: 75, scope: !1380)
!1382 = !DILocation(line: 264, column: 13, scope: !1380)
!1383 = !DILocation(line: 265, column: 17, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1377, file: !666, line: 264, column: 20)
!1385 = !DILocation(line: 272, column: 1, scope: !1330)
!1386 = distinct !DISubprogram(name: "halGPIO_PullDown_RESET", scope: !666, file: !666, line: 359, type: !1331, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !1387)
!1387 = !{!1388, !1389, !1390}
!1388 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1386, file: !666, line: 359, type: !80)
!1389 = !DILocalVariable(name: "no", scope: !1386, file: !666, line: 362, type: !1149)
!1390 = !DILocalVariable(name: "remainder", scope: !1386, file: !666, line: 363, type: !1149)
!1391 = !DILocation(line: 0, scope: !1386)
!1392 = !DILocation(line: 364, column: 19, scope: !1386)
!1393 = !DILocation(line: 365, column: 17, scope: !1386)
!1394 = !DILocation(line: 367, column: 5, scope: !1386)
!1395 = !DILocation(line: 369, column: 27, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !666, line: 369, column: 17)
!1397 = distinct !DILexicalBlock(scope: !1386, file: !666, line: 367, column: 17)
!1398 = !DILocation(line: 369, column: 17, scope: !1397)
!1399 = !DILocation(line: 369, column: 17, scope: !1396)
!1400 = !DILocation(line: 370, column: 17, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1396, file: !666, line: 369, column: 34)
!1402 = !DILocation(line: 371, column: 13, scope: !1401)
!1403 = !DILocation(line: 371, column: 24, scope: !1396)
!1404 = !DILocation(line: 372, column: 73, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !666, line: 371, column: 41)
!1406 = distinct !DILexicalBlock(scope: !1396, file: !666, line: 371, column: 24)
!1407 = !DILocation(line: 373, column: 73, scope: !1405)
!1408 = !DILocation(line: 374, column: 13, scope: !1405)
!1409 = !DILocation(line: 375, column: 73, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !666, line: 374, column: 41)
!1411 = distinct !DILexicalBlock(scope: !1406, file: !666, line: 374, column: 24)
!1412 = !DILocation(line: 376, column: 73, scope: !1410)
!1413 = !DILocation(line: 377, column: 13, scope: !1410)
!1414 = !DILocation(line: 378, column: 75, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !666, line: 377, column: 41)
!1416 = distinct !DILexicalBlock(scope: !1411, file: !666, line: 377, column: 24)
!1417 = !DILocation(line: 379, column: 75, scope: !1415)
!1418 = !DILocation(line: 380, column: 13, scope: !1415)
!1419 = !DILocation(line: 381, column: 75, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !666, line: 380, column: 41)
!1421 = distinct !DILexicalBlock(scope: !1416, file: !666, line: 380, column: 24)
!1422 = !DILocation(line: 382, column: 75, scope: !1420)
!1423 = !DILocation(line: 383, column: 13, scope: !1420)
!1424 = !DILocation(line: 384, column: 75, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !666, line: 383, column: 41)
!1426 = distinct !DILexicalBlock(scope: !1421, file: !666, line: 383, column: 24)
!1427 = !DILocation(line: 385, column: 75, scope: !1425)
!1428 = !DILocation(line: 386, column: 13, scope: !1425)
!1429 = !DILocation(line: 389, column: 18, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1397, file: !666, line: 389, column: 17)
!1431 = !DILocation(line: 389, column: 17, scope: !1397)
!1432 = !DILocation(line: 390, column: 75, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1430, file: !666, line: 389, column: 29)
!1434 = !DILocation(line: 391, column: 75, scope: !1433)
!1435 = !DILocation(line: 392, column: 13, scope: !1433)
!1436 = !DILocation(line: 393, column: 17, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1430, file: !666, line: 392, column: 20)
!1438 = !DILocation(line: 401, column: 1, scope: !1386)
!1439 = distinct !DISubprogram(name: "halGPIO_PullUp_RESET", scope: !666, file: !666, line: 274, type: !1331, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !1440)
!1440 = !{!1441, !1442, !1443}
!1441 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1439, file: !666, line: 274, type: !80)
!1442 = !DILocalVariable(name: "no", scope: !1439, file: !666, line: 276, type: !1149)
!1443 = !DILocalVariable(name: "remainder", scope: !1439, file: !666, line: 277, type: !1149)
!1444 = !DILocation(line: 0, scope: !1439)
!1445 = !DILocation(line: 278, column: 19, scope: !1439)
!1446 = !DILocation(line: 279, column: 17, scope: !1439)
!1447 = !DILocation(line: 281, column: 5, scope: !1439)
!1448 = !DILocation(line: 283, column: 27, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !666, line: 283, column: 17)
!1450 = distinct !DILexicalBlock(scope: !1439, file: !666, line: 281, column: 17)
!1451 = !DILocation(line: 283, column: 17, scope: !1450)
!1452 = !DILocation(line: 283, column: 17, scope: !1449)
!1453 = !DILocation(line: 284, column: 17, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1449, file: !666, line: 283, column: 34)
!1455 = !DILocation(line: 285, column: 13, scope: !1454)
!1456 = !DILocation(line: 285, column: 24, scope: !1449)
!1457 = !DILocation(line: 286, column: 73, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !666, line: 285, column: 41)
!1459 = distinct !DILexicalBlock(scope: !1449, file: !666, line: 285, column: 24)
!1460 = !DILocation(line: 287, column: 73, scope: !1458)
!1461 = !DILocation(line: 288, column: 13, scope: !1458)
!1462 = !DILocation(line: 289, column: 73, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !666, line: 288, column: 41)
!1464 = distinct !DILexicalBlock(scope: !1459, file: !666, line: 288, column: 24)
!1465 = !DILocation(line: 290, column: 73, scope: !1463)
!1466 = !DILocation(line: 291, column: 13, scope: !1463)
!1467 = !DILocation(line: 292, column: 75, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !666, line: 291, column: 41)
!1469 = distinct !DILexicalBlock(scope: !1464, file: !666, line: 291, column: 24)
!1470 = !DILocation(line: 293, column: 75, scope: !1468)
!1471 = !DILocation(line: 294, column: 13, scope: !1468)
!1472 = !DILocation(line: 295, column: 75, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !666, line: 294, column: 41)
!1474 = distinct !DILexicalBlock(scope: !1469, file: !666, line: 294, column: 24)
!1475 = !DILocation(line: 296, column: 75, scope: !1473)
!1476 = !DILocation(line: 297, column: 13, scope: !1473)
!1477 = !DILocation(line: 298, column: 75, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !666, line: 297, column: 41)
!1479 = distinct !DILexicalBlock(scope: !1474, file: !666, line: 297, column: 24)
!1480 = !DILocation(line: 299, column: 75, scope: !1478)
!1481 = !DILocation(line: 300, column: 13, scope: !1478)
!1482 = !DILocation(line: 303, column: 18, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1450, file: !666, line: 303, column: 17)
!1484 = !DILocation(line: 303, column: 17, scope: !1450)
!1485 = !DILocation(line: 304, column: 75, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1483, file: !666, line: 303, column: 29)
!1487 = !DILocation(line: 305, column: 75, scope: !1486)
!1488 = !DILocation(line: 306, column: 13, scope: !1486)
!1489 = !DILocation(line: 307, column: 17, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1483, file: !666, line: 306, column: 20)
!1491 = !DILocation(line: 314, column: 1, scope: !1439)
!1492 = distinct !DISubprogram(name: "halGPIO_PullDown_SET", scope: !666, file: !666, line: 316, type: !1331, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !1493)
!1493 = !{!1494, !1495, !1496}
!1494 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1492, file: !666, line: 316, type: !80)
!1495 = !DILocalVariable(name: "no", scope: !1492, file: !666, line: 318, type: !1149)
!1496 = !DILocalVariable(name: "remainder", scope: !1492, file: !666, line: 319, type: !1149)
!1497 = !DILocation(line: 0, scope: !1492)
!1498 = !DILocation(line: 320, column: 19, scope: !1492)
!1499 = !DILocation(line: 321, column: 17, scope: !1492)
!1500 = !DILocation(line: 322, column: 5, scope: !1492)
!1501 = !DILocation(line: 323, column: 5, scope: !1492)
!1502 = !DILocation(line: 325, column: 27, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !666, line: 325, column: 17)
!1504 = distinct !DILexicalBlock(scope: !1492, file: !666, line: 323, column: 17)
!1505 = !DILocation(line: 325, column: 17, scope: !1504)
!1506 = !DILocation(line: 325, column: 17, scope: !1503)
!1507 = !DILocation(line: 326, column: 17, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1503, file: !666, line: 325, column: 34)
!1509 = !DILocation(line: 327, column: 13, scope: !1508)
!1510 = !DILocation(line: 327, column: 24, scope: !1503)
!1511 = !DILocation(line: 328, column: 73, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !666, line: 327, column: 41)
!1513 = distinct !DILexicalBlock(scope: !1503, file: !666, line: 327, column: 24)
!1514 = !DILocation(line: 329, column: 73, scope: !1512)
!1515 = !DILocation(line: 330, column: 13, scope: !1512)
!1516 = !DILocation(line: 331, column: 73, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !666, line: 330, column: 41)
!1518 = distinct !DILexicalBlock(scope: !1513, file: !666, line: 330, column: 24)
!1519 = !DILocation(line: 332, column: 73, scope: !1517)
!1520 = !DILocation(line: 333, column: 13, scope: !1517)
!1521 = !DILocation(line: 334, column: 75, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !666, line: 333, column: 41)
!1523 = distinct !DILexicalBlock(scope: !1518, file: !666, line: 333, column: 24)
!1524 = !DILocation(line: 335, column: 75, scope: !1522)
!1525 = !DILocation(line: 336, column: 13, scope: !1522)
!1526 = !DILocation(line: 337, column: 75, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !666, line: 336, column: 41)
!1528 = distinct !DILexicalBlock(scope: !1523, file: !666, line: 336, column: 24)
!1529 = !DILocation(line: 338, column: 75, scope: !1527)
!1530 = !DILocation(line: 339, column: 13, scope: !1527)
!1531 = !DILocation(line: 340, column: 75, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !666, line: 339, column: 41)
!1533 = distinct !DILexicalBlock(scope: !1528, file: !666, line: 339, column: 24)
!1534 = !DILocation(line: 341, column: 75, scope: !1532)
!1535 = !DILocation(line: 342, column: 13, scope: !1532)
!1536 = !DILocation(line: 345, column: 18, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1504, file: !666, line: 345, column: 17)
!1538 = !DILocation(line: 345, column: 17, scope: !1504)
!1539 = !DILocation(line: 346, column: 75, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1537, file: !666, line: 345, column: 29)
!1541 = !DILocation(line: 347, column: 75, scope: !1540)
!1542 = !DILocation(line: 348, column: 13, scope: !1540)
!1543 = !DILocation(line: 349, column: 17, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1537, file: !666, line: 348, column: 20)
!1545 = !DILocation(line: 357, column: 1, scope: !1492)
!1546 = distinct !DISubprogram(name: "halGPIO_SetDriving", scope: !666, file: !666, line: 404, type: !1142, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !1547)
!1547 = !{!1548, !1549, !1550, !1551}
!1548 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1546, file: !666, line: 404, type: !80)
!1549 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1546, file: !666, line: 404, type: !133)
!1550 = !DILocalVariable(name: "no", scope: !1546, file: !666, line: 406, type: !1149)
!1551 = !DILocalVariable(name: "remainder", scope: !1546, file: !666, line: 407, type: !1149)
!1552 = !DILocation(line: 0, scope: !1546)
!1553 = !DILocation(line: 408, column: 19, scope: !1546)
!1554 = !DILocation(line: 409, column: 17, scope: !1546)
!1555 = !DILocation(line: 411, column: 5, scope: !1546)
!1556 = !DILocation(line: 413, column: 84, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1546, file: !666, line: 411, column: 17)
!1558 = !DILocation(line: 413, column: 70, scope: !1557)
!1559 = !DILocation(line: 413, column: 64, scope: !1557)
!1560 = !DILocation(line: 413, column: 61, scope: !1557)
!1561 = !DILocation(line: 414, column: 79, scope: !1557)
!1562 = !DILocation(line: 414, column: 83, scope: !1557)
!1563 = !DILocation(line: 414, column: 88, scope: !1557)
!1564 = !DILocation(line: 414, column: 61, scope: !1557)
!1565 = !DILocation(line: 415, column: 13, scope: !1557)
!1566 = !DILocation(line: 417, column: 27, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1557, file: !666, line: 417, column: 17)
!1568 = !DILocation(line: 417, column: 17, scope: !1557)
!1569 = !DILocation(line: 418, column: 88, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1567, file: !666, line: 417, column: 33)
!1571 = !DILocation(line: 418, column: 74, scope: !1570)
!1572 = !DILocation(line: 418, column: 68, scope: !1570)
!1573 = !DILocation(line: 418, column: 65, scope: !1570)
!1574 = !DILocation(line: 419, column: 83, scope: !1570)
!1575 = !DILocation(line: 419, column: 87, scope: !1570)
!1576 = !DILocation(line: 419, column: 92, scope: !1570)
!1577 = !DILocation(line: 419, column: 65, scope: !1570)
!1578 = !DILocation(line: 420, column: 13, scope: !1570)
!1579 = !DILocation(line: 420, column: 24, scope: !1567)
!1580 = !DILocation(line: 421, column: 73, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !666, line: 420, column: 41)
!1582 = distinct !DILexicalBlock(scope: !1567, file: !666, line: 420, column: 24)
!1583 = !DILocation(line: 422, column: 91, scope: !1581)
!1584 = !DILocation(line: 422, column: 100, scope: !1581)
!1585 = !DILocation(line: 422, column: 73, scope: !1581)
!1586 = !DILocation(line: 423, column: 73, scope: !1581)
!1587 = !DILocation(line: 424, column: 13, scope: !1581)
!1588 = !DILocation(line: 425, column: 73, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !666, line: 424, column: 41)
!1590 = distinct !DILexicalBlock(scope: !1582, file: !666, line: 424, column: 24)
!1591 = !DILocation(line: 426, column: 91, scope: !1589)
!1592 = !DILocation(line: 426, column: 100, scope: !1589)
!1593 = !DILocation(line: 426, column: 73, scope: !1589)
!1594 = !DILocation(line: 427, column: 73, scope: !1589)
!1595 = !DILocation(line: 428, column: 13, scope: !1589)
!1596 = !DILocation(line: 429, column: 75, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !666, line: 428, column: 41)
!1598 = distinct !DILexicalBlock(scope: !1590, file: !666, line: 428, column: 24)
!1599 = !DILocation(line: 430, column: 93, scope: !1597)
!1600 = !DILocation(line: 430, column: 102, scope: !1597)
!1601 = !DILocation(line: 430, column: 75, scope: !1597)
!1602 = !DILocation(line: 431, column: 75, scope: !1597)
!1603 = !DILocation(line: 432, column: 13, scope: !1597)
!1604 = !DILocation(line: 433, column: 75, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !666, line: 432, column: 41)
!1606 = distinct !DILexicalBlock(scope: !1598, file: !666, line: 432, column: 24)
!1607 = !DILocation(line: 434, column: 93, scope: !1605)
!1608 = !DILocation(line: 434, column: 102, scope: !1605)
!1609 = !DILocation(line: 434, column: 75, scope: !1605)
!1610 = !DILocation(line: 435, column: 75, scope: !1605)
!1611 = !DILocation(line: 436, column: 13, scope: !1605)
!1612 = !DILocation(line: 437, column: 75, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !666, line: 436, column: 41)
!1614 = distinct !DILexicalBlock(scope: !1606, file: !666, line: 436, column: 24)
!1615 = !DILocation(line: 438, column: 93, scope: !1613)
!1616 = !DILocation(line: 438, column: 102, scope: !1613)
!1617 = !DILocation(line: 438, column: 75, scope: !1613)
!1618 = !DILocation(line: 439, column: 75, scope: !1613)
!1619 = !DILocation(line: 440, column: 13, scope: !1613)
!1620 = !DILocation(line: 443, column: 18, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1557, file: !666, line: 443, column: 17)
!1622 = !DILocation(line: 443, column: 17, scope: !1557)
!1623 = !DILocation(line: 444, column: 75, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1621, file: !666, line: 443, column: 29)
!1625 = !DILocation(line: 445, column: 93, scope: !1624)
!1626 = !DILocation(line: 445, column: 102, scope: !1624)
!1627 = !DILocation(line: 445, column: 75, scope: !1624)
!1628 = !DILocation(line: 446, column: 75, scope: !1624)
!1629 = !DILocation(line: 447, column: 13, scope: !1624)
!1630 = !DILocation(line: 448, column: 88, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1621, file: !666, line: 447, column: 20)
!1632 = !DILocation(line: 448, column: 74, scope: !1631)
!1633 = !DILocation(line: 448, column: 68, scope: !1631)
!1634 = !DILocation(line: 448, column: 65, scope: !1631)
!1635 = !DILocation(line: 449, column: 83, scope: !1631)
!1636 = !DILocation(line: 449, column: 87, scope: !1631)
!1637 = !DILocation(line: 449, column: 92, scope: !1631)
!1638 = !DILocation(line: 449, column: 65, scope: !1631)
!1639 = !DILocation(line: 453, column: 84, scope: !1557)
!1640 = !DILocation(line: 453, column: 70, scope: !1557)
!1641 = !DILocation(line: 453, column: 64, scope: !1557)
!1642 = !DILocation(line: 453, column: 61, scope: !1557)
!1643 = !DILocation(line: 454, column: 79, scope: !1557)
!1644 = !DILocation(line: 454, column: 83, scope: !1557)
!1645 = !DILocation(line: 454, column: 88, scope: !1557)
!1646 = !DILocation(line: 454, column: 61, scope: !1557)
!1647 = !DILocation(line: 455, column: 13, scope: !1557)
!1648 = !DILocation(line: 460, column: 1, scope: !1546)
!1649 = distinct !DISubprogram(name: "halGPIO_GetDriving", scope: !666, file: !666, line: 463, type: !1650, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !1653)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!1144, !80, !1652}
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 32)
!1653 = !{!1654, !1655, !1656, !1657, !1658}
!1654 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1649, file: !666, line: 463, type: !80)
!1655 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1649, file: !666, line: 463, type: !1652)
!1656 = !DILocalVariable(name: "no", scope: !1649, file: !666, line: 465, type: !1149)
!1657 = !DILocalVariable(name: "remainder", scope: !1649, file: !666, line: 466, type: !1149)
!1658 = !DILocalVariable(name: "temp", scope: !1649, file: !666, line: 467, type: !80)
!1659 = !DILocation(line: 0, scope: !1649)
!1660 = !DILocation(line: 468, column: 19, scope: !1649)
!1661 = !DILocation(line: 469, column: 17, scope: !1649)
!1662 = !DILocation(line: 471, column: 5, scope: !1649)
!1663 = !DILocation(line: 473, column: 20, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1649, file: !666, line: 471, column: 17)
!1665 = !DILocation(line: 474, column: 40, scope: !1664)
!1666 = !DILocation(line: 474, column: 26, scope: !1664)
!1667 = !DILocation(line: 474, column: 18, scope: !1664)
!1668 = !DILocation(line: 475, column: 40, scope: !1664)
!1669 = !DILocation(line: 475, column: 29, scope: !1664)
!1670 = !DILocation(line: 476, column: 13, scope: !1664)
!1671 = !DILocation(line: 478, column: 27, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1664, file: !666, line: 478, column: 17)
!1673 = !DILocation(line: 478, column: 17, scope: !1664)
!1674 = !DILocation(line: 479, column: 24, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1672, file: !666, line: 478, column: 33)
!1676 = !DILocation(line: 480, column: 44, scope: !1675)
!1677 = !DILocation(line: 480, column: 30, scope: !1675)
!1678 = !DILocation(line: 480, column: 22, scope: !1675)
!1679 = !DILocation(line: 481, column: 44, scope: !1675)
!1680 = !DILocation(line: 481, column: 33, scope: !1675)
!1681 = !DILocation(line: 482, column: 13, scope: !1675)
!1682 = !DILocation(line: 482, column: 24, scope: !1672)
!1683 = !DILocation(line: 483, column: 24, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !666, line: 482, column: 41)
!1685 = distinct !DILexicalBlock(scope: !1672, file: !666, line: 482, column: 24)
!1686 = !DILocation(line: 485, column: 53, scope: !1684)
!1687 = !DILocation(line: 485, column: 33, scope: !1684)
!1688 = !DILocation(line: 486, column: 13, scope: !1684)
!1689 = !DILocation(line: 487, column: 24, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !666, line: 486, column: 41)
!1691 = distinct !DILexicalBlock(scope: !1685, file: !666, line: 486, column: 24)
!1692 = !DILocation(line: 489, column: 53, scope: !1690)
!1693 = !DILocation(line: 489, column: 33, scope: !1690)
!1694 = !DILocation(line: 490, column: 13, scope: !1690)
!1695 = !DILocation(line: 491, column: 24, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !666, line: 490, column: 41)
!1697 = distinct !DILexicalBlock(scope: !1691, file: !666, line: 490, column: 24)
!1698 = !DILocation(line: 493, column: 53, scope: !1696)
!1699 = !DILocation(line: 493, column: 33, scope: !1696)
!1700 = !DILocation(line: 494, column: 13, scope: !1696)
!1701 = !DILocation(line: 495, column: 24, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !666, line: 494, column: 41)
!1703 = distinct !DILexicalBlock(scope: !1697, file: !666, line: 494, column: 24)
!1704 = !DILocation(line: 497, column: 53, scope: !1702)
!1705 = !DILocation(line: 497, column: 33, scope: !1702)
!1706 = !DILocation(line: 498, column: 13, scope: !1702)
!1707 = !DILocation(line: 499, column: 24, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !666, line: 498, column: 41)
!1709 = distinct !DILexicalBlock(scope: !1703, file: !666, line: 498, column: 24)
!1710 = !DILocation(line: 501, column: 53, scope: !1708)
!1711 = !DILocation(line: 501, column: 33, scope: !1708)
!1712 = !DILocation(line: 502, column: 13, scope: !1708)
!1713 = !DILocation(line: 505, column: 18, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1664, file: !666, line: 505, column: 17)
!1715 = !DILocation(line: 505, column: 17, scope: !1664)
!1716 = !DILocation(line: 506, column: 24, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1714, file: !666, line: 505, column: 29)
!1718 = !DILocation(line: 508, column: 53, scope: !1717)
!1719 = !DILocation(line: 508, column: 33, scope: !1717)
!1720 = !DILocation(line: 509, column: 13, scope: !1717)
!1721 = !DILocation(line: 510, column: 24, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1714, file: !666, line: 509, column: 20)
!1723 = !DILocation(line: 511, column: 44, scope: !1722)
!1724 = !DILocation(line: 511, column: 30, scope: !1722)
!1725 = !DILocation(line: 511, column: 22, scope: !1722)
!1726 = !DILocation(line: 512, column: 44, scope: !1722)
!1727 = !DILocation(line: 512, column: 33, scope: !1722)
!1728 = !DILocation(line: 516, column: 20, scope: !1664)
!1729 = !DILocation(line: 517, column: 40, scope: !1664)
!1730 = !DILocation(line: 517, column: 26, scope: !1664)
!1731 = !DILocation(line: 517, column: 18, scope: !1664)
!1732 = !DILocation(line: 518, column: 40, scope: !1664)
!1733 = !DILocation(line: 518, column: 29, scope: !1664)
!1734 = !DILocation(line: 519, column: 13, scope: !1664)
!1735 = !DILocation(line: 0, scope: !1664)
!1736 = !DILocation(line: 524, column: 1, scope: !1649)
!1737 = distinct !DISubprogram(name: "topPAD_Control_GPIO", scope: !666, file: !666, line: 526, type: !1738, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !1741)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{null, !80, !1740}
!1740 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_TOP_PAD_CONTROL_T", file: !669, line: 1212, baseType: !668)
!1741 = !{!1742, !1743, !1744, !1745}
!1742 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1737, file: !666, line: 526, type: !80)
!1743 = !DILocalVariable(name: "ePadControl", arg: 2, scope: !1737, file: !666, line: 526, type: !1740)
!1744 = !DILocalVariable(name: "no", scope: !1737, file: !666, line: 529, type: !1149)
!1745 = !DILocalVariable(name: "remainder", scope: !1737, file: !666, line: 530, type: !1149)
!1746 = !DILocation(line: 0, scope: !1737)
!1747 = !DILocation(line: 531, column: 19, scope: !1737)
!1748 = !DILocation(line: 532, column: 17, scope: !1737)
!1749 = !DILocation(line: 534, column: 9, scope: !1737)
!1750 = !DILocation(line: 536, column: 9, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !666, line: 534, column: 45)
!1752 = distinct !DILexicalBlock(scope: !1737, file: !666, line: 534, column: 9)
!1753 = !DILocation(line: 538, column: 56, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1751, file: !666, line: 536, column: 21)
!1755 = !DILocation(line: 538, column: 53, scope: !1754)
!1756 = !DILocation(line: 538, column: 47, scope: !1754)
!1757 = !DILocation(line: 539, column: 17, scope: !1754)
!1758 = !DILocation(line: 541, column: 56, scope: !1754)
!1759 = !DILocation(line: 541, column: 53, scope: !1754)
!1760 = !DILocation(line: 541, column: 47, scope: !1754)
!1761 = !DILocation(line: 542, column: 17, scope: !1754)
!1762 = !DILocation(line: 548, column: 9, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !666, line: 547, column: 51)
!1764 = distinct !DILexicalBlock(scope: !1752, file: !666, line: 547, column: 16)
!1765 = !DILocation(line: 550, column: 57, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1763, file: !666, line: 548, column: 21)
!1767 = !DILocation(line: 550, column: 54, scope: !1766)
!1768 = !DILocation(line: 550, column: 50, scope: !1766)
!1769 = !DILocation(line: 550, column: 47, scope: !1766)
!1770 = !DILocation(line: 551, column: 17, scope: !1766)
!1771 = !DILocation(line: 553, column: 57, scope: !1766)
!1772 = !DILocation(line: 553, column: 54, scope: !1766)
!1773 = !DILocation(line: 553, column: 50, scope: !1766)
!1774 = !DILocation(line: 553, column: 47, scope: !1766)
!1775 = !DILocation(line: 554, column: 17, scope: !1766)
!1776 = !DILocation(line: 560, column: 1, scope: !1737)
!1777 = distinct !DISubprogram(name: "halPinmuxTopOnPadFunc", scope: !675, file: !675, line: 85, type: !1778, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !1782)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!1780, !1781, !133}
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID", file: !6, line: 79, baseType: null)
!1781 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_PAD_NAME_T", file: !678, line: 225, baseType: !677)
!1782 = !{!1783, !1784, !1785}
!1783 = !DILocalVariable(name: "ePadIndex", arg: 1, scope: !1777, file: !675, line: 85, type: !1781)
!1784 = !DILocalVariable(name: "ucFunc", arg: 2, scope: !1777, file: !675, line: 85, type: !133)
!1785 = !DILocalVariable(name: "temp", scope: !1777, file: !675, line: 87, type: !92)
!1786 = !DILocation(line: 0, scope: !1777)
!1787 = !DILocation(line: 88, column: 5, scope: !1777)
!1788 = !DILocation(line: 91, column: 20, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1777, file: !675, line: 88, column: 24)
!1790 = !DILocation(line: 92, column: 18, scope: !1789)
!1791 = !DILocation(line: 93, column: 66, scope: !1789)
!1792 = !DILocation(line: 93, column: 63, scope: !1789)
!1793 = !DILocation(line: 93, column: 56, scope: !1789)
!1794 = !DILocation(line: 94, column: 13, scope: !1789)
!1795 = !DILocation(line: 97, column: 20, scope: !1789)
!1796 = !DILocation(line: 98, column: 18, scope: !1789)
!1797 = !DILocation(line: 99, column: 67, scope: !1789)
!1798 = !DILocation(line: 99, column: 74, scope: !1789)
!1799 = !DILocation(line: 99, column: 64, scope: !1789)
!1800 = !DILocation(line: 99, column: 56, scope: !1789)
!1801 = !DILocation(line: 100, column: 13, scope: !1789)
!1802 = !DILocation(line: 103, column: 20, scope: !1789)
!1803 = !DILocation(line: 104, column: 18, scope: !1789)
!1804 = !DILocation(line: 105, column: 67, scope: !1789)
!1805 = !DILocation(line: 105, column: 74, scope: !1789)
!1806 = !DILocation(line: 105, column: 64, scope: !1789)
!1807 = !DILocation(line: 105, column: 56, scope: !1789)
!1808 = !DILocation(line: 106, column: 13, scope: !1789)
!1809 = !DILocation(line: 109, column: 20, scope: !1789)
!1810 = !DILocation(line: 110, column: 18, scope: !1789)
!1811 = !DILocation(line: 111, column: 67, scope: !1789)
!1812 = !DILocation(line: 111, column: 74, scope: !1789)
!1813 = !DILocation(line: 111, column: 64, scope: !1789)
!1814 = !DILocation(line: 111, column: 56, scope: !1789)
!1815 = !DILocation(line: 112, column: 13, scope: !1789)
!1816 = !DILocation(line: 115, column: 20, scope: !1789)
!1817 = !DILocation(line: 116, column: 18, scope: !1789)
!1818 = !DILocation(line: 117, column: 67, scope: !1789)
!1819 = !DILocation(line: 117, column: 74, scope: !1789)
!1820 = !DILocation(line: 117, column: 64, scope: !1789)
!1821 = !DILocation(line: 117, column: 56, scope: !1789)
!1822 = !DILocation(line: 118, column: 13, scope: !1789)
!1823 = !DILocation(line: 121, column: 20, scope: !1789)
!1824 = !DILocation(line: 122, column: 18, scope: !1789)
!1825 = !DILocation(line: 123, column: 67, scope: !1789)
!1826 = !DILocation(line: 123, column: 74, scope: !1789)
!1827 = !DILocation(line: 123, column: 64, scope: !1789)
!1828 = !DILocation(line: 123, column: 56, scope: !1789)
!1829 = !DILocation(line: 124, column: 13, scope: !1789)
!1830 = !DILocation(line: 127, column: 20, scope: !1789)
!1831 = !DILocation(line: 128, column: 18, scope: !1789)
!1832 = !DILocation(line: 129, column: 67, scope: !1789)
!1833 = !DILocation(line: 129, column: 74, scope: !1789)
!1834 = !DILocation(line: 129, column: 64, scope: !1789)
!1835 = !DILocation(line: 129, column: 56, scope: !1789)
!1836 = !DILocation(line: 130, column: 13, scope: !1789)
!1837 = !DILocation(line: 133, column: 20, scope: !1789)
!1838 = !DILocation(line: 134, column: 18, scope: !1789)
!1839 = !DILocation(line: 135, column: 67, scope: !1789)
!1840 = !DILocation(line: 135, column: 74, scope: !1789)
!1841 = !DILocation(line: 135, column: 64, scope: !1789)
!1842 = !DILocation(line: 135, column: 56, scope: !1789)
!1843 = !DILocation(line: 136, column: 13, scope: !1789)
!1844 = !DILocation(line: 139, column: 20, scope: !1789)
!1845 = !DILocation(line: 140, column: 18, scope: !1789)
!1846 = !DILocation(line: 141, column: 67, scope: !1789)
!1847 = !DILocation(line: 141, column: 64, scope: !1789)
!1848 = !DILocation(line: 141, column: 56, scope: !1789)
!1849 = !DILocation(line: 142, column: 13, scope: !1789)
!1850 = !DILocation(line: 145, column: 20, scope: !1789)
!1851 = !DILocation(line: 146, column: 18, scope: !1789)
!1852 = !DILocation(line: 147, column: 67, scope: !1789)
!1853 = !DILocation(line: 147, column: 74, scope: !1789)
!1854 = !DILocation(line: 147, column: 64, scope: !1789)
!1855 = !DILocation(line: 147, column: 56, scope: !1789)
!1856 = !DILocation(line: 148, column: 13, scope: !1789)
!1857 = !DILocation(line: 151, column: 20, scope: !1789)
!1858 = !DILocation(line: 152, column: 18, scope: !1789)
!1859 = !DILocation(line: 153, column: 67, scope: !1789)
!1860 = !DILocation(line: 153, column: 74, scope: !1789)
!1861 = !DILocation(line: 153, column: 64, scope: !1789)
!1862 = !DILocation(line: 153, column: 56, scope: !1789)
!1863 = !DILocation(line: 154, column: 13, scope: !1789)
!1864 = !DILocation(line: 157, column: 20, scope: !1789)
!1865 = !DILocation(line: 158, column: 18, scope: !1789)
!1866 = !DILocation(line: 159, column: 67, scope: !1789)
!1867 = !DILocation(line: 159, column: 74, scope: !1789)
!1868 = !DILocation(line: 159, column: 64, scope: !1789)
!1869 = !DILocation(line: 159, column: 56, scope: !1789)
!1870 = !DILocation(line: 160, column: 29, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1789, file: !675, line: 160, column: 17)
!1872 = !DILocation(line: 161, column: 17, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1871, file: !675, line: 160, column: 60)
!1874 = !DILocation(line: 162, column: 13, scope: !1873)
!1875 = !DILocation(line: 166, column: 20, scope: !1789)
!1876 = !DILocation(line: 167, column: 18, scope: !1789)
!1877 = !DILocation(line: 168, column: 67, scope: !1789)
!1878 = !DILocation(line: 168, column: 74, scope: !1789)
!1879 = !DILocation(line: 168, column: 64, scope: !1789)
!1880 = !DILocation(line: 168, column: 56, scope: !1789)
!1881 = !DILocation(line: 169, column: 29, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1789, file: !675, line: 169, column: 17)
!1883 = !DILocation(line: 170, column: 17, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1882, file: !675, line: 169, column: 45)
!1885 = !DILocation(line: 171, column: 13, scope: !1884)
!1886 = !DILocation(line: 175, column: 20, scope: !1789)
!1887 = !DILocation(line: 176, column: 18, scope: !1789)
!1888 = !DILocation(line: 177, column: 67, scope: !1789)
!1889 = !DILocation(line: 177, column: 74, scope: !1789)
!1890 = !DILocation(line: 177, column: 64, scope: !1789)
!1891 = !DILocation(line: 177, column: 56, scope: !1789)
!1892 = !DILocation(line: 178, column: 19, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1789, file: !675, line: 178, column: 17)
!1894 = !DILocation(line: 178, column: 17, scope: !1789)
!1895 = !DILocation(line: 179, column: 17, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1893, file: !675, line: 178, column: 30)
!1897 = !DILocation(line: 180, column: 13, scope: !1896)
!1898 = !DILocation(line: 184, column: 20, scope: !1789)
!1899 = !DILocation(line: 185, column: 18, scope: !1789)
!1900 = !DILocation(line: 186, column: 67, scope: !1789)
!1901 = !DILocation(line: 186, column: 74, scope: !1789)
!1902 = !DILocation(line: 186, column: 64, scope: !1789)
!1903 = !DILocation(line: 186, column: 56, scope: !1789)
!1904 = !DILocation(line: 187, column: 29, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1789, file: !675, line: 187, column: 17)
!1906 = !DILocation(line: 188, column: 17, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1905, file: !675, line: 187, column: 45)
!1908 = !DILocation(line: 189, column: 13, scope: !1907)
!1909 = !DILocation(line: 193, column: 20, scope: !1789)
!1910 = !DILocation(line: 194, column: 18, scope: !1789)
!1911 = !DILocation(line: 195, column: 67, scope: !1789)
!1912 = !DILocation(line: 195, column: 74, scope: !1789)
!1913 = !DILocation(line: 195, column: 64, scope: !1789)
!1914 = !DILocation(line: 195, column: 56, scope: !1789)
!1915 = !DILocation(line: 196, column: 29, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1789, file: !675, line: 196, column: 17)
!1917 = !DILocation(line: 197, column: 17, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1916, file: !675, line: 196, column: 45)
!1919 = !DILocation(line: 198, column: 13, scope: !1918)
!1920 = !DILocation(line: 202, column: 20, scope: !1789)
!1921 = !DILocation(line: 203, column: 18, scope: !1789)
!1922 = !DILocation(line: 204, column: 67, scope: !1789)
!1923 = !DILocation(line: 204, column: 64, scope: !1789)
!1924 = !DILocation(line: 204, column: 56, scope: !1789)
!1925 = !DILocation(line: 205, column: 29, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1789, file: !675, line: 205, column: 17)
!1927 = !DILocation(line: 206, column: 17, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1926, file: !675, line: 205, column: 45)
!1929 = !DILocation(line: 207, column: 13, scope: !1928)
!1930 = !DILocation(line: 211, column: 20, scope: !1789)
!1931 = !DILocation(line: 212, column: 18, scope: !1789)
!1932 = !DILocation(line: 213, column: 67, scope: !1789)
!1933 = !DILocation(line: 213, column: 74, scope: !1789)
!1934 = !DILocation(line: 213, column: 64, scope: !1789)
!1935 = !DILocation(line: 213, column: 56, scope: !1789)
!1936 = !DILocation(line: 214, column: 13, scope: !1789)
!1937 = !DILocation(line: 217, column: 20, scope: !1789)
!1938 = !DILocation(line: 218, column: 18, scope: !1789)
!1939 = !DILocation(line: 219, column: 67, scope: !1789)
!1940 = !DILocation(line: 219, column: 74, scope: !1789)
!1941 = !DILocation(line: 219, column: 64, scope: !1789)
!1942 = !DILocation(line: 219, column: 56, scope: !1789)
!1943 = !DILocation(line: 220, column: 13, scope: !1789)
!1944 = !DILocation(line: 223, column: 20, scope: !1789)
!1945 = !DILocation(line: 224, column: 18, scope: !1789)
!1946 = !DILocation(line: 225, column: 67, scope: !1789)
!1947 = !DILocation(line: 225, column: 74, scope: !1789)
!1948 = !DILocation(line: 225, column: 64, scope: !1789)
!1949 = !DILocation(line: 225, column: 56, scope: !1789)
!1950 = !DILocation(line: 226, column: 13, scope: !1789)
!1951 = !DILocation(line: 229, column: 20, scope: !1789)
!1952 = !DILocation(line: 230, column: 18, scope: !1789)
!1953 = !DILocation(line: 231, column: 67, scope: !1789)
!1954 = !DILocation(line: 231, column: 74, scope: !1789)
!1955 = !DILocation(line: 231, column: 64, scope: !1789)
!1956 = !DILocation(line: 231, column: 56, scope: !1789)
!1957 = !DILocation(line: 232, column: 13, scope: !1789)
!1958 = !DILocation(line: 235, column: 20, scope: !1789)
!1959 = !DILocation(line: 236, column: 18, scope: !1789)
!1960 = !DILocation(line: 237, column: 66, scope: !1789)
!1961 = !DILocation(line: 237, column: 73, scope: !1789)
!1962 = !DILocation(line: 237, column: 63, scope: !1789)
!1963 = !DILocation(line: 237, column: 56, scope: !1789)
!1964 = !DILocation(line: 238, column: 13, scope: !1789)
!1965 = !DILocation(line: 241, column: 20, scope: !1789)
!1966 = !DILocation(line: 242, column: 18, scope: !1789)
!1967 = !DILocation(line: 243, column: 67, scope: !1789)
!1968 = !DILocation(line: 243, column: 74, scope: !1789)
!1969 = !DILocation(line: 243, column: 64, scope: !1789)
!1970 = !DILocation(line: 243, column: 56, scope: !1789)
!1971 = !DILocation(line: 244, column: 13, scope: !1789)
!1972 = !DILocation(line: 247, column: 20, scope: !1789)
!1973 = !DILocation(line: 248, column: 18, scope: !1789)
!1974 = !DILocation(line: 249, column: 67, scope: !1789)
!1975 = !DILocation(line: 249, column: 74, scope: !1789)
!1976 = !DILocation(line: 249, column: 64, scope: !1789)
!1977 = !DILocation(line: 249, column: 56, scope: !1789)
!1978 = !DILocation(line: 250, column: 13, scope: !1789)
!1979 = !DILocation(line: 253, column: 20, scope: !1789)
!1980 = !DILocation(line: 254, column: 18, scope: !1789)
!1981 = !DILocation(line: 255, column: 67, scope: !1789)
!1982 = !DILocation(line: 255, column: 74, scope: !1789)
!1983 = !DILocation(line: 255, column: 64, scope: !1789)
!1984 = !DILocation(line: 255, column: 56, scope: !1789)
!1985 = !DILocation(line: 256, column: 13, scope: !1789)
!1986 = !DILocation(line: 259, column: 20, scope: !1789)
!1987 = !DILocation(line: 260, column: 18, scope: !1789)
!1988 = !DILocation(line: 261, column: 67, scope: !1789)
!1989 = !DILocation(line: 261, column: 74, scope: !1789)
!1990 = !DILocation(line: 261, column: 64, scope: !1789)
!1991 = !DILocation(line: 261, column: 56, scope: !1789)
!1992 = !DILocation(line: 262, column: 13, scope: !1789)
!1993 = !DILocation(line: 265, column: 20, scope: !1789)
!1994 = !DILocation(line: 266, column: 18, scope: !1789)
!1995 = !DILocation(line: 267, column: 67, scope: !1789)
!1996 = !DILocation(line: 267, column: 74, scope: !1789)
!1997 = !DILocation(line: 267, column: 64, scope: !1789)
!1998 = !DILocation(line: 267, column: 56, scope: !1789)
!1999 = !DILocation(line: 268, column: 13, scope: !1789)
!2000 = !DILocation(line: 271, column: 20, scope: !1789)
!2001 = !DILocation(line: 272, column: 18, scope: !1789)
!2002 = !DILocation(line: 273, column: 67, scope: !1789)
!2003 = !DILocation(line: 273, column: 74, scope: !1789)
!2004 = !DILocation(line: 273, column: 64, scope: !1789)
!2005 = !DILocation(line: 273, column: 56, scope: !1789)
!2006 = !DILocation(line: 274, column: 13, scope: !1789)
!2007 = !DILocation(line: 278, column: 1, scope: !1777)
!2008 = distinct !DISubprogram(name: "NVIC_SetupVectorTable", scope: !756, file: !756, line: 47, type: !2009, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !755, retainedNodes: !2011)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{null, !92}
!2011 = !{!2012}
!2012 = !DILocalVariable(name: "addr", arg: 1, scope: !2008, file: !756, line: 47, type: !92)
!2013 = !DILocation(line: 0, scope: !2008)
!2014 = !DILocation(line: 49, column: 15, scope: !2008)
!2015 = !DILocation(line: 51, column: 5, scope: !2008)
!2016 = !{i64 2624}
!2017 = !DILocation(line: 52, column: 5, scope: !2008)
!2018 = !{i64 2651}
!2019 = !DILocation(line: 53, column: 1, scope: !2008)
!2020 = distinct !DISubprogram(name: "NVIC_SWInt", scope: !756, file: !756, line: 56, type: !2021, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !755, retainedNodes: !2023)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{null, !7}
!2023 = !{!2024}
!2024 = !DILocalVariable(name: "source", arg: 1, scope: !2020, file: !756, line: 56, type: !7)
!2025 = !DILocation(line: 0, scope: !2020)
!2026 = !DILocation(line: 58, column: 16, scope: !2020)
!2027 = !DILocation(line: 59, column: 1, scope: !2020)
!2028 = distinct !DISubprogram(name: "save_and_set_interrupt_mask", scope: !756, file: !756, line: 61, type: !2029, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !755, retainedNodes: !2031)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!92}
!2031 = !{!2032}
!2032 = !DILocalVariable(name: "mask", scope: !2028, file: !756, line: 63, type: !92)
!2033 = !DILocation(line: 470, column: 3, scope: !2034, inlinedAt: !2038)
!2034 = distinct !DISubprogram(name: "__get_PRIMASK", scope: !2035, file: !2035, line: 466, type: !2029, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !755, retainedNodes: !2036)
!2035 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmFunc.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!2036 = !{!2037}
!2037 = !DILocalVariable(name: "result", scope: !2034, file: !2035, line: 468, type: !92)
!2038 = distinct !DILocation(line: 64, column: 5, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2028, file: !756, line: 64, column: 5)
!2040 = !{i64 302169}
!2041 = !DILocation(line: 0, scope: !2034, inlinedAt: !2038)
!2042 = !DILocation(line: 0, scope: !2028)
!2043 = !DILocation(line: 330, column: 3, scope: !2044, inlinedAt: !2045)
!2044 = distinct !DISubprogram(name: "__disable_irq", scope: !2035, file: !2035, line: 328, type: !75, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !755, retainedNodes: !1135)
!2045 = distinct !DILocation(line: 64, column: 5, scope: !2039)
!2046 = !{i64 298833}
!2047 = !DILocation(line: 65, column: 5, scope: !2028)
!2048 = distinct !DISubprogram(name: "restore_interrupt_mask", scope: !756, file: !756, line: 68, type: !2009, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !755, retainedNodes: !2049)
!2049 = !{!2050}
!2050 = !DILocalVariable(name: "mask", arg: 1, scope: !2048, file: !756, line: 68, type: !92)
!2051 = !DILocation(line: 0, scope: !2048)
!2052 = !DILocalVariable(name: "priMask", arg: 1, scope: !2053, file: !2035, line: 481, type: !92)
!2053 = distinct !DISubprogram(name: "__set_PRIMASK", scope: !2035, file: !2035, line: 481, type: !2009, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !755, retainedNodes: !2054)
!2054 = !{!2052}
!2055 = !DILocation(line: 0, scope: !2053, inlinedAt: !2056)
!2056 = distinct !DILocation(line: 70, column: 5, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2048, file: !756, line: 70, column: 5)
!2058 = !DILocation(line: 483, column: 3, scope: !2053, inlinedAt: !2056)
!2059 = !{i64 302487}
!2060 = !DILocation(line: 71, column: 1, scope: !2048)
!2061 = distinct !DISubprogram(name: "pinmux_config", scope: !801, file: !801, line: 54, type: !2062, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !2064)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!172, !906, !92}
!2064 = !{!2065, !2066, !2067}
!2065 = !DILocalVariable(name: "gpio_index", arg: 1, scope: !2061, file: !801, line: 54, type: !906)
!2066 = !DILocalVariable(name: "function", arg: 2, scope: !2061, file: !801, line: 54, type: !92)
!2067 = !DILocalVariable(name: "ePadIndex", scope: !2061, file: !801, line: 56, type: !1781)
!2068 = !DILocation(line: 0, scope: !2061)
!2069 = !DILocation(line: 60, column: 5, scope: !2061)
!2070 = !DILocation(line: 205, column: 38, scope: !2061)
!2071 = !DILocation(line: 205, column: 5, scope: !2061)
!2072 = !DILocation(line: 207, column: 5, scope: !2061)
!2073 = !DILocation(line: 208, column: 1, scope: !2061)
!2074 = distinct !DISubprogram(name: "get_current_count", scope: !835, file: !835, line: 56, type: !2029, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !834, retainedNodes: !1135)
!2075 = !DILocation(line: 58, column: 12, scope: !2074)
!2076 = !DILocation(line: 58, column: 5, scope: !2074)
!2077 = distinct !DISubprogram(name: "delay_time", scope: !835, file: !835, line: 62, type: !993, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !834, retainedNodes: !2078)
!2078 = !{!2079, !2080, !2081}
!2079 = !DILocalVariable(name: "count", arg: 1, scope: !2077, file: !835, line: 62, type: !60)
!2080 = !DILocalVariable(name: "end_count", scope: !2077, file: !835, line: 64, type: !60)
!2081 = !DILocalVariable(name: "current", scope: !2077, file: !835, line: 64, type: !60)
!2082 = !DILocation(line: 0, scope: !2077)
!2083 = !DILocation(line: 66, column: 17, scope: !2077)
!2084 = !DILocation(line: 66, column: 37, scope: !2077)
!2085 = !DILocation(line: 66, column: 45, scope: !2077)
!2086 = !DILocation(line: 67, column: 15, scope: !2077)
!2087 = !DILocation(line: 68, column: 12, scope: !2077)
!2088 = !DILocation(line: 68, column: 5, scope: !2077)
!2089 = !DILocation(line: 69, column: 19, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2077, file: !835, line: 68, column: 45)
!2091 = distinct !{!2091, !2088, !2092}
!2092 = !DILocation(line: 70, column: 5, scope: !2077)
!2093 = !DILocation(line: 72, column: 1, scope: !2077)
!2094 = distinct !DISubprogram(name: "delay_time_for_gpt4", scope: !835, file: !835, line: 75, type: !993, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !834, retainedNodes: !2095)
!2095 = !{!2096, !2097, !2098}
!2096 = !DILocalVariable(name: "count", arg: 1, scope: !2094, file: !835, line: 75, type: !60)
!2097 = !DILocalVariable(name: "end_count", scope: !2094, file: !835, line: 77, type: !60)
!2098 = !DILocalVariable(name: "current", scope: !2094, file: !835, line: 77, type: !60)
!2099 = !DILocation(line: 0, scope: !2094)
!2100 = !DILocation(line: 79, column: 17, scope: !2094)
!2101 = !DILocation(line: 79, column: 42, scope: !2094)
!2102 = !DILocation(line: 79, column: 50, scope: !2094)
!2103 = !DILocation(line: 80, column: 15, scope: !2094)
!2104 = !DILocation(line: 81, column: 12, scope: !2094)
!2105 = !DILocation(line: 81, column: 5, scope: !2094)
!2106 = !DILocation(line: 82, column: 19, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2094, file: !835, line: 81, column: 45)
!2108 = distinct !{!2108, !2105, !2109}
!2109 = !DILocation(line: 83, column: 5, scope: !2094)
!2110 = !DILocation(line: 85, column: 1, scope: !2094)
!2111 = distinct !DISubprogram(name: "get_current_gpt4_count", scope: !835, file: !835, line: 95, type: !2029, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !834, retainedNodes: !1135)
!2112 = !DILocation(line: 97, column: 13, scope: !2111)
!2113 = !DILocation(line: 97, column: 5, scope: !2111)
!2114 = distinct !DISubprogram(name: "delay_ms", scope: !835, file: !835, line: 107, type: !2009, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !834, retainedNodes: !2115)
!2115 = !{!2116, !2117}
!2116 = !DILocalVariable(name: "ms", arg: 1, scope: !2114, file: !835, line: 107, type: !92)
!2117 = !DILocalVariable(name: "count", scope: !2114, file: !835, line: 109, type: !92)
!2118 = !DILocation(line: 0, scope: !2114)
!2119 = !DILocation(line: 111, column: 17, scope: !2114)
!2120 = !DILocation(line: 112, column: 17, scope: !2114)
!2121 = !DILocation(line: 112, column: 23, scope: !2114)
!2122 = !DILocation(line: 112, column: 11, scope: !2114)
!2123 = !DILocation(line: 113, column: 17, scope: !2114)
!2124 = !DILocation(line: 113, column: 23, scope: !2114)
!2125 = !DILocation(line: 113, column: 11, scope: !2114)
!2126 = !DILocation(line: 114, column: 17, scope: !2114)
!2127 = !DILocation(line: 114, column: 23, scope: !2114)
!2128 = !DILocation(line: 114, column: 11, scope: !2114)
!2129 = !DILocation(line: 115, column: 5, scope: !2114)
!2130 = !DILocation(line: 116, column: 1, scope: !2114)
!2131 = distinct !DISubprogram(name: "delay_us", scope: !835, file: !835, line: 120, type: !2009, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !834, retainedNodes: !2132)
!2132 = !{!2133, !2134, !2135}
!2133 = !DILocalVariable(name: "us", arg: 1, scope: !2131, file: !835, line: 120, type: !92)
!2134 = !DILocalVariable(name: "count", scope: !2131, file: !835, line: 122, type: !92)
!2135 = !DILocalVariable(name: "ticks_per_us", scope: !2131, file: !835, line: 123, type: !92)
!2136 = !DILocation(line: 0, scope: !2131)
!2137 = !DILocation(line: 125, column: 20, scope: !2131)
!2138 = !DILocation(line: 125, column: 39, scope: !2131)
!2139 = !DILocation(line: 126, column: 26, scope: !2131)
!2140 = !DILocation(line: 128, column: 5, scope: !2131)
!2141 = !DILocation(line: 129, column: 1, scope: !2131)
!2142 = distinct !DISubprogram(name: "drvTMR_init", scope: !835, file: !835, line: 133, type: !2143, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !834, retainedNodes: !2145)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{null, !92, !92, !156, !74}
!2145 = !{!2146, !2147, !2148, !2149}
!2146 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2142, file: !835, line: 133, type: !92)
!2147 = !DILocalVariable(name: "countValue", arg: 2, scope: !2142, file: !835, line: 133, type: !92)
!2148 = !DILocalVariable(name: "autoRepeat", arg: 3, scope: !2142, file: !835, line: 133, type: !156)
!2149 = !DILocalVariable(name: "TMR_Callback", arg: 4, scope: !2142, file: !835, line: 133, type: !74)
!2150 = !DILocation(line: 0, scope: !2142)
!2151 = !DILocation(line: 136, column: 5, scope: !2142)
!2152 = !DILocation(line: 138, column: 18, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2142, file: !835, line: 138, column: 9)
!2154 = !DILocation(line: 138, column: 9, scope: !2142)
!2155 = !DILocation(line: 139, column: 30, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2153, file: !835, line: 138, column: 27)
!2157 = !DILocation(line: 141, column: 5, scope: !2156)
!2158 = !DILocation(line: 142, column: 30, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2153, file: !835, line: 141, column: 12)
!2160 = !DILocation(line: 0, scope: !2153)
!2161 = !DILocation(line: 146, column: 5, scope: !2142)
!2162 = !DILocation(line: 147, column: 1, scope: !2142)
!2163 = distinct !DISubprogram(name: "TMR_Start", scope: !835, file: !835, line: 149, type: !2009, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !834, retainedNodes: !2164)
!2164 = !{!2165}
!2165 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2163, file: !835, line: 149, type: !92)
!2166 = !DILocation(line: 0, scope: !2163)
!2167 = !DILocation(line: 151, column: 5, scope: !2163)
!2168 = !DILocation(line: 152, column: 1, scope: !2163)
!2169 = distinct !DISubprogram(name: "TMR_Stop", scope: !835, file: !835, line: 154, type: !2009, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !834, retainedNodes: !2170)
!2170 = !{!2171}
!2171 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2169, file: !835, line: 154, type: !92)
!2172 = !DILocation(line: 0, scope: !2169)
!2173 = !DILocation(line: 156, column: 5, scope: !2169)
!2174 = !DILocation(line: 157, column: 1, scope: !2169)
!2175 = distinct !DISubprogram(name: "drvGPT2Init", scope: !835, file: !835, line: 160, type: !75, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !834, retainedNodes: !1135)
!2176 = !DILocation(line: 162, column: 5, scope: !2175)
!2177 = !DILocation(line: 163, column: 1, scope: !2175)
!2178 = distinct !DISubprogram(name: "drvGPT4Init", scope: !835, file: !835, line: 165, type: !75, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !834, retainedNodes: !1135)
!2179 = !DILocation(line: 167, column: 5, scope: !2178)
!2180 = !DILocation(line: 168, column: 1, scope: !2178)
!2181 = distinct !DISubprogram(name: "clear_TMR_INT_status_bit", scope: !835, file: !835, line: 170, type: !2009, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !834, retainedNodes: !2182)
!2182 = !{!2183}
!2183 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2181, file: !835, line: 170, type: !92)
!2184 = !DILocation(line: 0, scope: !2181)
!2185 = !DILocation(line: 172, column: 9, scope: !2181)
!2186 = !DILocation(line: 177, column: 5, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !835, line: 175, column: 27)
!2188 = distinct !DILexicalBlock(scope: !2181, file: !835, line: 175, column: 9)
!2189 = !DILocation(line: 178, column: 1, scope: !2181)
!2190 = distinct !DISubprogram(name: "top_xtal_init", scope: !86, file: !86, line: 52, type: !75, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2191)
!2191 = !{!2192, !2193}
!2192 = !DILocalVariable(name: "u4RegVal", scope: !2190, file: !86, line: 54, type: !92)
!2193 = !DILocalVariable(name: "reg", scope: !2190, file: !86, line: 55, type: !553)
!2194 = !DILocation(line: 0, scope: !2190)
!2195 = !DILocation(line: 55, column: 25, scope: !2190)
!2196 = !DILocation(line: 56, column: 16, scope: !2190)
!2197 = !DILocation(line: 56, column: 23, scope: !2190)
!2198 = !DILocation(line: 58, column: 16, scope: !2190)
!2199 = !DILocation(line: 61, column: 5, scope: !2190)
!2200 = !DILocation(line: 59, column: 14, scope: !2190)
!2201 = !DILocation(line: 0, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2190, file: !86, line: 61, column: 18)
!2203 = !DILocation(line: 87, column: 38, scope: !2190)
!2204 = !DILocation(line: 88, column: 21, scope: !2190)
!2205 = !DILocation(line: 88, column: 19, scope: !2190)
!2206 = !DILocation(line: 89, column: 5, scope: !2190)
!2207 = !DILocation(line: 90, column: 17, scope: !2190)
!2208 = !DILocation(line: 90, column: 33, scope: !2190)
!2209 = !DILocation(line: 90, column: 5, scope: !2190)
!2210 = !DILocation(line: 91, column: 1, scope: !2190)
!2211 = distinct !DISubprogram(name: "top_xtal_freq_get", scope: !86, file: !86, line: 98, type: !2029, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1135)
!2212 = !DILocation(line: 100, column: 12, scope: !2211)
!2213 = !DILocation(line: 100, column: 5, scope: !2211)
!2214 = distinct !DISubprogram(name: "top_mcu_freq_get", scope: !86, file: !86, line: 108, type: !2029, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1135)
!2215 = !DILocation(line: 110, column: 12, scope: !2214)
!2216 = !DILocation(line: 110, column: 5, scope: !2214)
!2217 = distinct !DISubprogram(name: "cmnPLL1ON", scope: !86, file: !86, line: 118, type: !75, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2218)
!2218 = !{!2219, !2220}
!2219 = !DILocalVariable(name: "reg", scope: !2217, file: !86, line: 120, type: !91)
!2220 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2217, file: !86, line: 121, type: !90)
!2221 = !DILocation(line: 120, column: 5, scope: !2217)
!2222 = !DILocation(line: 120, column: 23, scope: !2217)
!2223 = !DILocation(line: 0, scope: !2217)
!2224 = !DILocation(line: 123, column: 11, scope: !2217)
!2225 = !DILocation(line: 123, column: 9, scope: !2217)
!2226 = !DILocation(line: 124, column: 12, scope: !2217)
!2227 = !DILocation(line: 124, column: 16, scope: !2217)
!2228 = !DILocation(line: 124, column: 39, scope: !2217)
!2229 = !DILocation(line: 124, column: 9, scope: !2217)
!2230 = !DILocation(line: 126, column: 9, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2217, file: !86, line: 126, column: 9)
!2232 = !DILocation(line: 126, column: 13, scope: !2231)
!2233 = !DILocation(line: 126, column: 9, scope: !2217)
!2234 = !DILocation(line: 127, column: 15, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2231, file: !86, line: 126, column: 47)
!2236 = !DILocation(line: 127, column: 13, scope: !2235)
!2237 = !DILocation(line: 128, column: 15, scope: !2235)
!2238 = !DILocation(line: 128, column: 19, scope: !2235)
!2239 = !DILocation(line: 128, column: 13, scope: !2235)
!2240 = !DILocation(line: 129, column: 15, scope: !2235)
!2241 = !DILocation(line: 129, column: 19, scope: !2235)
!2242 = !DILocation(line: 129, column: 13, scope: !2235)
!2243 = !DILocation(line: 130, column: 46, scope: !2235)
!2244 = !DILocation(line: 130, column: 9, scope: !2235)
!2245 = !DILocation(line: 132, column: 9, scope: !2235)
!2246 = !DILocation(line: 133, column: 19, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2235, file: !86, line: 132, column: 12)
!2248 = !DILocation(line: 133, column: 17, scope: !2247)
!2249 = !DILocation(line: 134, column: 19, scope: !2247)
!2250 = !DILocation(line: 134, column: 23, scope: !2247)
!2251 = !DILocation(line: 134, column: 17, scope: !2247)
!2252 = !DILocation(line: 135, column: 19, scope: !2235)
!2253 = !DILocation(line: 135, column: 18, scope: !2235)
!2254 = !DILocation(line: 135, column: 9, scope: !2247)
!2255 = distinct !{!2255, !2245, !2256}
!2256 = !DILocation(line: 135, column: 22, scope: !2235)
!2257 = !DILocation(line: 138, column: 1, scope: !2217)
!2258 = distinct !DISubprogram(name: "cmnReadRegister32", scope: !2259, file: !2259, line: 176, type: !2260, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2264)
!2259 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/system_mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/sha_get_hash/GCC")
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!92, !2262}
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 32)
!2263 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2264 = !{!2265}
!2265 = !DILocalVariable(name: "Register", arg: 1, scope: !2258, file: !2259, line: 176, type: !2262)
!2266 = !DILocation(line: 0, scope: !2258)
!2267 = !DILocation(line: 178, column: 13, scope: !2258)
!2268 = !DILocation(line: 178, column: 12, scope: !2258)
!2269 = !DILocation(line: 178, column: 5, scope: !2258)
!2270 = distinct !DISubprogram(name: "cmnWriteRegister32", scope: !2259, file: !2259, line: 171, type: !2271, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2273)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{null, !2262, !92}
!2273 = !{!2274, !2275}
!2274 = !DILocalVariable(name: "Register", arg: 1, scope: !2270, file: !2259, line: 171, type: !2262)
!2275 = !DILocalVariable(name: "Value", arg: 2, scope: !2270, file: !2259, line: 171, type: !92)
!2276 = !DILocation(line: 0, scope: !2270)
!2277 = !DILocation(line: 173, column: 6, scope: !2270)
!2278 = !DILocation(line: 173, column: 36, scope: !2270)
!2279 = !DILocation(line: 174, column: 1, scope: !2270)
!2280 = distinct !DISubprogram(name: "cmnPLL1ON_PLL2ON", scope: !86, file: !86, line: 145, type: !2281, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2283)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{null, !150}
!2283 = !{!2284, !2285, !2286}
!2284 = !DILocalVariable(name: "fg960M", arg: 1, scope: !2280, file: !86, line: 145, type: !150)
!2285 = !DILocalVariable(name: "reg", scope: !2280, file: !86, line: 147, type: !91)
!2286 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2280, file: !86, line: 148, type: !90)
!2287 = !DILocation(line: 0, scope: !2280)
!2288 = !DILocation(line: 147, column: 5, scope: !2280)
!2289 = !DILocation(line: 147, column: 23, scope: !2280)
!2290 = !DILocation(line: 150, column: 11, scope: !2280)
!2291 = !DILocation(line: 150, column: 9, scope: !2280)
!2292 = !DILocation(line: 151, column: 12, scope: !2280)
!2293 = !DILocation(line: 151, column: 16, scope: !2280)
!2294 = !DILocation(line: 151, column: 39, scope: !2280)
!2295 = !DILocation(line: 151, column: 9, scope: !2280)
!2296 = !DILocation(line: 153, column: 9, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2280, file: !86, line: 153, column: 9)
!2298 = !DILocation(line: 153, column: 13, scope: !2297)
!2299 = !DILocation(line: 153, column: 9, scope: !2280)
!2300 = !DILocation(line: 154, column: 15, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2297, file: !86, line: 153, column: 45)
!2302 = !DILocation(line: 154, column: 13, scope: !2301)
!2303 = !DILocation(line: 155, column: 15, scope: !2301)
!2304 = !DILocation(line: 155, column: 19, scope: !2301)
!2305 = !DILocation(line: 155, column: 13, scope: !2301)
!2306 = !DILocation(line: 156, column: 15, scope: !2301)
!2307 = !DILocation(line: 156, column: 19, scope: !2301)
!2308 = !DILocation(line: 156, column: 13, scope: !2301)
!2309 = !DILocation(line: 157, column: 15, scope: !2301)
!2310 = !DILocation(line: 157, column: 13, scope: !2301)
!2311 = !DILocation(line: 158, column: 46, scope: !2301)
!2312 = !DILocation(line: 158, column: 9, scope: !2301)
!2313 = !DILocation(line: 160, column: 15, scope: !2301)
!2314 = !DILocation(line: 160, column: 13, scope: !2301)
!2315 = !DILocation(line: 161, column: 15, scope: !2301)
!2316 = !DILocation(line: 161, column: 19, scope: !2301)
!2317 = !DILocation(line: 161, column: 13, scope: !2301)
!2318 = !DILocation(line: 162, column: 15, scope: !2301)
!2319 = !DILocation(line: 162, column: 19, scope: !2301)
!2320 = !DILocation(line: 162, column: 13, scope: !2301)
!2321 = !DILocation(line: 163, column: 15, scope: !2301)
!2322 = !DILocation(line: 163, column: 19, scope: !2301)
!2323 = !DILocation(line: 163, column: 13, scope: !2301)
!2324 = !DILocation(line: 164, column: 46, scope: !2301)
!2325 = !DILocation(line: 164, column: 9, scope: !2301)
!2326 = !DILocation(line: 166, column: 9, scope: !2301)
!2327 = !DILocation(line: 167, column: 19, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2301, file: !86, line: 166, column: 12)
!2329 = !DILocation(line: 167, column: 17, scope: !2328)
!2330 = !DILocation(line: 168, column: 19, scope: !2328)
!2331 = !DILocation(line: 168, column: 23, scope: !2328)
!2332 = !DILocation(line: 168, column: 17, scope: !2328)
!2333 = !DILocation(line: 169, column: 19, scope: !2301)
!2334 = !DILocation(line: 169, column: 18, scope: !2301)
!2335 = !DILocation(line: 169, column: 9, scope: !2328)
!2336 = distinct !{!2336, !2326, !2337}
!2337 = !DILocation(line: 169, column: 22, scope: !2301)
!2338 = !DILocation(line: 171, column: 15, scope: !2301)
!2339 = !DILocation(line: 171, column: 13, scope: !2301)
!2340 = !DILocation(line: 172, column: 15, scope: !2301)
!2341 = !DILocation(line: 172, column: 19, scope: !2301)
!2342 = !DILocation(line: 172, column: 13, scope: !2301)
!2343 = !DILocation(line: 173, column: 15, scope: !2301)
!2344 = !DILocation(line: 173, column: 19, scope: !2301)
!2345 = !DILocation(line: 173, column: 13, scope: !2301)
!2346 = !DILocation(line: 174, column: 5, scope: !2301)
!2347 = !DILocation(line: 176, column: 11, scope: !2280)
!2348 = !DILocation(line: 176, column: 9, scope: !2280)
!2349 = !DILocation(line: 177, column: 9, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2280, file: !86, line: 177, column: 9)
!2351 = !DILocation(line: 0, scope: !2350)
!2352 = !DILocation(line: 177, column: 9, scope: !2280)
!2353 = !DILocation(line: 178, column: 19, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2350, file: !86, line: 177, column: 17)
!2355 = !DILocation(line: 178, column: 13, scope: !2354)
!2356 = !DILocation(line: 179, column: 5, scope: !2354)
!2357 = !DILocation(line: 180, column: 13, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2350, file: !86, line: 179, column: 12)
!2359 = !DILocation(line: 182, column: 42, scope: !2280)
!2360 = !DILocation(line: 182, column: 5, scope: !2280)
!2361 = !DILocation(line: 184, column: 1, scope: !2280)
!2362 = distinct !DISubprogram(name: "cmnPLL1OFF_PLL2OFF", scope: !86, file: !86, line: 191, type: !75, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2363)
!2363 = !{!2364, !2365}
!2364 = !DILocalVariable(name: "reg", scope: !2362, file: !86, line: 193, type: !91)
!2365 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2362, file: !86, line: 194, type: !90)
!2366 = !DILocation(line: 193, column: 5, scope: !2362)
!2367 = !DILocation(line: 193, column: 23, scope: !2362)
!2368 = !DILocation(line: 0, scope: !2362)
!2369 = !DILocation(line: 196, column: 11, scope: !2362)
!2370 = !DILocation(line: 196, column: 9, scope: !2362)
!2371 = !DILocation(line: 197, column: 11, scope: !2362)
!2372 = !DILocation(line: 197, column: 15, scope: !2362)
!2373 = !DILocation(line: 197, column: 9, scope: !2362)
!2374 = !DILocation(line: 198, column: 11, scope: !2362)
!2375 = !DILocation(line: 198, column: 15, scope: !2362)
!2376 = !DILocation(line: 198, column: 9, scope: !2362)
!2377 = !DILocation(line: 199, column: 11, scope: !2362)
!2378 = !DILocation(line: 199, column: 9, scope: !2362)
!2379 = !DILocation(line: 200, column: 42, scope: !2362)
!2380 = !DILocation(line: 200, column: 5, scope: !2362)
!2381 = !DILocation(line: 202, column: 11, scope: !2362)
!2382 = !DILocation(line: 202, column: 9, scope: !2362)
!2383 = !DILocation(line: 203, column: 11, scope: !2362)
!2384 = !DILocation(line: 203, column: 15, scope: !2362)
!2385 = !DILocation(line: 203, column: 9, scope: !2362)
!2386 = !DILocation(line: 204, column: 11, scope: !2362)
!2387 = !DILocation(line: 204, column: 15, scope: !2362)
!2388 = !DILocation(line: 204, column: 9, scope: !2362)
!2389 = !DILocation(line: 205, column: 11, scope: !2362)
!2390 = !DILocation(line: 205, column: 9, scope: !2362)
!2391 = !DILocation(line: 206, column: 42, scope: !2362)
!2392 = !DILocation(line: 206, column: 5, scope: !2362)
!2393 = !DILocation(line: 209, column: 1, scope: !2362)
!2394 = distinct !DISubprogram(name: "cmnCpuClkConfigureToXtal", scope: !86, file: !86, line: 216, type: !75, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2395)
!2395 = !{!2396, !2397}
!2396 = !DILocalVariable(name: "reg", scope: !2394, file: !86, line: 218, type: !91)
!2397 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2394, file: !86, line: 219, type: !90)
!2398 = !DILocation(line: 218, column: 5, scope: !2394)
!2399 = !DILocation(line: 218, column: 23, scope: !2394)
!2400 = !DILocation(line: 0, scope: !2394)
!2401 = !DILocation(line: 222, column: 11, scope: !2394)
!2402 = !DILocation(line: 222, column: 9, scope: !2394)
!2403 = !DILocation(line: 223, column: 11, scope: !2394)
!2404 = !DILocation(line: 223, column: 15, scope: !2394)
!2405 = !DILocation(line: 223, column: 9, scope: !2394)
!2406 = !DILocation(line: 224, column: 11, scope: !2394)
!2407 = !DILocation(line: 224, column: 9, scope: !2394)
!2408 = !DILocation(line: 225, column: 39, scope: !2394)
!2409 = !DILocation(line: 225, column: 5, scope: !2394)
!2410 = !DILocation(line: 228, column: 11, scope: !2394)
!2411 = !DILocation(line: 228, column: 9, scope: !2394)
!2412 = !DILocation(line: 229, column: 11, scope: !2394)
!2413 = !DILocation(line: 229, column: 15, scope: !2394)
!2414 = !DILocation(line: 229, column: 9, scope: !2394)
!2415 = !DILocation(line: 230, column: 11, scope: !2394)
!2416 = !DILocation(line: 230, column: 9, scope: !2394)
!2417 = !DILocation(line: 231, column: 39, scope: !2394)
!2418 = !DILocation(line: 231, column: 5, scope: !2394)
!2419 = !DILocation(line: 233, column: 5, scope: !2394)
!2420 = !DILocation(line: 233, column: 12, scope: !2394)
!2421 = !DILocation(line: 233, column: 19, scope: !2394)
!2422 = !DILocation(line: 233, column: 16, scope: !2394)
!2423 = distinct !{!2423, !2419, !2424}
!2424 = !DILocation(line: 233, column: 52, scope: !2394)
!2425 = !DILocation(line: 235, column: 21, scope: !2394)
!2426 = !DILocation(line: 235, column: 19, scope: !2394)
!2427 = !DILocation(line: 236, column: 5, scope: !2394)
!2428 = !DILocation(line: 237, column: 17, scope: !2394)
!2429 = !DILocation(line: 237, column: 33, scope: !2394)
!2430 = !DILocation(line: 237, column: 5, scope: !2394)
!2431 = !DILocation(line: 239, column: 1, scope: !2394)
!2432 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo192M", scope: !86, file: !86, line: 246, type: !75, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2433)
!2433 = !{!2434, !2435}
!2434 = !DILocalVariable(name: "reg", scope: !2432, file: !86, line: 248, type: !91)
!2435 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2432, file: !86, line: 249, type: !90)
!2436 = !DILocation(line: 248, column: 5, scope: !2432)
!2437 = !DILocation(line: 248, column: 23, scope: !2432)
!2438 = !DILocation(line: 0, scope: !2432)
!2439 = !DILocation(line: 252, column: 5, scope: !2432)
!2440 = !DILocation(line: 255, column: 11, scope: !2432)
!2441 = !DILocation(line: 255, column: 9, scope: !2432)
!2442 = !DILocation(line: 256, column: 11, scope: !2432)
!2443 = !DILocation(line: 256, column: 15, scope: !2432)
!2444 = !DILocation(line: 256, column: 9, scope: !2432)
!2445 = !DILocation(line: 257, column: 11, scope: !2432)
!2446 = !DILocation(line: 257, column: 15, scope: !2432)
!2447 = !DILocation(line: 257, column: 9, scope: !2432)
!2448 = !DILocation(line: 258, column: 39, scope: !2432)
!2449 = !DILocation(line: 258, column: 5, scope: !2432)
!2450 = !DILocation(line: 260, column: 5, scope: !2432)
!2451 = !DILocation(line: 260, column: 12, scope: !2432)
!2452 = !DILocation(line: 260, column: 19, scope: !2432)
!2453 = !DILocation(line: 260, column: 16, scope: !2432)
!2454 = distinct !{!2454, !2450, !2455}
!2455 = !DILocation(line: 260, column: 52, scope: !2432)
!2456 = !DILocation(line: 263, column: 11, scope: !2432)
!2457 = !DILocation(line: 263, column: 9, scope: !2432)
!2458 = !DILocation(line: 264, column: 11, scope: !2432)
!2459 = !DILocation(line: 264, column: 15, scope: !2432)
!2460 = !DILocation(line: 264, column: 9, scope: !2432)
!2461 = !DILocation(line: 265, column: 11, scope: !2432)
!2462 = !DILocation(line: 265, column: 15, scope: !2432)
!2463 = !DILocation(line: 265, column: 9, scope: !2432)
!2464 = !DILocation(line: 266, column: 39, scope: !2432)
!2465 = !DILocation(line: 266, column: 5, scope: !2432)
!2466 = !DILocation(line: 269, column: 11, scope: !2432)
!2467 = !DILocation(line: 269, column: 9, scope: !2432)
!2468 = !DILocation(line: 270, column: 11, scope: !2432)
!2469 = !DILocation(line: 270, column: 15, scope: !2432)
!2470 = !DILocation(line: 270, column: 9, scope: !2432)
!2471 = !DILocation(line: 271, column: 11, scope: !2432)
!2472 = !DILocation(line: 271, column: 15, scope: !2432)
!2473 = !DILocation(line: 271, column: 9, scope: !2432)
!2474 = !DILocation(line: 272, column: 39, scope: !2432)
!2475 = !DILocation(line: 272, column: 5, scope: !2432)
!2476 = !DILocation(line: 273, column: 19, scope: !2432)
!2477 = !DILocation(line: 274, column: 5, scope: !2432)
!2478 = !DILocation(line: 275, column: 17, scope: !2432)
!2479 = !DILocation(line: 275, column: 33, scope: !2432)
!2480 = !DILocation(line: 275, column: 5, scope: !2432)
!2481 = !DILocation(line: 277, column: 1, scope: !2432)
!2482 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo160M", scope: !86, file: !86, line: 284, type: !75, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2483)
!2483 = !{!2484, !2485}
!2484 = !DILocalVariable(name: "reg", scope: !2482, file: !86, line: 286, type: !91)
!2485 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2482, file: !86, line: 287, type: !90)
!2486 = !DILocation(line: 286, column: 5, scope: !2482)
!2487 = !DILocation(line: 286, column: 23, scope: !2482)
!2488 = !DILocation(line: 0, scope: !2482)
!2489 = !DILocation(line: 290, column: 5, scope: !2482)
!2490 = !DILocation(line: 293, column: 11, scope: !2482)
!2491 = !DILocation(line: 293, column: 9, scope: !2482)
!2492 = !DILocation(line: 294, column: 11, scope: !2482)
!2493 = !DILocation(line: 294, column: 15, scope: !2482)
!2494 = !DILocation(line: 294, column: 9, scope: !2482)
!2495 = !DILocation(line: 295, column: 11, scope: !2482)
!2496 = !DILocation(line: 295, column: 15, scope: !2482)
!2497 = !DILocation(line: 295, column: 9, scope: !2482)
!2498 = !DILocation(line: 296, column: 39, scope: !2482)
!2499 = !DILocation(line: 296, column: 5, scope: !2482)
!2500 = !DILocation(line: 298, column: 5, scope: !2482)
!2501 = !DILocation(line: 298, column: 12, scope: !2482)
!2502 = !DILocation(line: 298, column: 19, scope: !2482)
!2503 = !DILocation(line: 298, column: 16, scope: !2482)
!2504 = distinct !{!2504, !2500, !2505}
!2505 = !DILocation(line: 298, column: 52, scope: !2482)
!2506 = !DILocation(line: 301, column: 11, scope: !2482)
!2507 = !DILocation(line: 301, column: 9, scope: !2482)
!2508 = !DILocation(line: 302, column: 11, scope: !2482)
!2509 = !DILocation(line: 302, column: 15, scope: !2482)
!2510 = !DILocation(line: 302, column: 9, scope: !2482)
!2511 = !DILocation(line: 303, column: 11, scope: !2482)
!2512 = !DILocation(line: 303, column: 15, scope: !2482)
!2513 = !DILocation(line: 303, column: 9, scope: !2482)
!2514 = !DILocation(line: 304, column: 39, scope: !2482)
!2515 = !DILocation(line: 304, column: 5, scope: !2482)
!2516 = !DILocation(line: 307, column: 11, scope: !2482)
!2517 = !DILocation(line: 307, column: 9, scope: !2482)
!2518 = !DILocation(line: 308, column: 11, scope: !2482)
!2519 = !DILocation(line: 308, column: 15, scope: !2482)
!2520 = !DILocation(line: 308, column: 9, scope: !2482)
!2521 = !DILocation(line: 309, column: 11, scope: !2482)
!2522 = !DILocation(line: 309, column: 15, scope: !2482)
!2523 = !DILocation(line: 309, column: 9, scope: !2482)
!2524 = !DILocation(line: 310, column: 39, scope: !2482)
!2525 = !DILocation(line: 310, column: 5, scope: !2482)
!2526 = !DILocation(line: 311, column: 19, scope: !2482)
!2527 = !DILocation(line: 312, column: 5, scope: !2482)
!2528 = !DILocation(line: 313, column: 17, scope: !2482)
!2529 = !DILocation(line: 313, column: 33, scope: !2482)
!2530 = !DILocation(line: 313, column: 5, scope: !2482)
!2531 = !DILocation(line: 315, column: 1, scope: !2482)
!2532 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo64M", scope: !86, file: !86, line: 323, type: !75, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2533)
!2533 = !{!2534, !2535}
!2534 = !DILocalVariable(name: "reg", scope: !2532, file: !86, line: 325, type: !91)
!2535 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2532, file: !86, line: 326, type: !90)
!2536 = !DILocation(line: 325, column: 5, scope: !2532)
!2537 = !DILocation(line: 325, column: 23, scope: !2532)
!2538 = !DILocation(line: 0, scope: !2532)
!2539 = !DILocation(line: 329, column: 5, scope: !2532)
!2540 = !DILocation(line: 332, column: 11, scope: !2532)
!2541 = !DILocation(line: 332, column: 9, scope: !2532)
!2542 = !DILocation(line: 333, column: 11, scope: !2532)
!2543 = !DILocation(line: 333, column: 15, scope: !2532)
!2544 = !DILocation(line: 333, column: 9, scope: !2532)
!2545 = !DILocation(line: 334, column: 11, scope: !2532)
!2546 = !DILocation(line: 334, column: 9, scope: !2532)
!2547 = !DILocation(line: 335, column: 39, scope: !2532)
!2548 = !DILocation(line: 335, column: 5, scope: !2532)
!2549 = !DILocation(line: 337, column: 5, scope: !2532)
!2550 = !DILocation(line: 337, column: 12, scope: !2532)
!2551 = !DILocation(line: 337, column: 19, scope: !2532)
!2552 = !DILocation(line: 337, column: 16, scope: !2532)
!2553 = distinct !{!2553, !2549, !2554}
!2554 = !DILocation(line: 337, column: 52, scope: !2532)
!2555 = !DILocation(line: 340, column: 11, scope: !2532)
!2556 = !DILocation(line: 340, column: 9, scope: !2532)
!2557 = !DILocation(line: 341, column: 11, scope: !2532)
!2558 = !DILocation(line: 341, column: 15, scope: !2532)
!2559 = !DILocation(line: 341, column: 9, scope: !2532)
!2560 = !DILocation(line: 342, column: 11, scope: !2532)
!2561 = !DILocation(line: 342, column: 15, scope: !2532)
!2562 = !DILocation(line: 342, column: 9, scope: !2532)
!2563 = !DILocation(line: 343, column: 39, scope: !2532)
!2564 = !DILocation(line: 343, column: 5, scope: !2532)
!2565 = !DILocation(line: 344, column: 19, scope: !2532)
!2566 = !DILocation(line: 345, column: 5, scope: !2532)
!2567 = !DILocation(line: 346, column: 17, scope: !2532)
!2568 = !DILocation(line: 346, column: 33, scope: !2532)
!2569 = !DILocation(line: 346, column: 5, scope: !2532)
!2570 = !DILocation(line: 348, column: 1, scope: !2532)
!2571 = distinct !DISubprogram(name: "cmnSerialFlashClkConfToXtal", scope: !86, file: !86, line: 353, type: !75, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2572)
!2572 = !{!2573, !2574}
!2573 = !DILocalVariable(name: "reg", scope: !2571, file: !86, line: 355, type: !79)
!2574 = !DILocalVariable(name: "pTopCfgHclk", scope: !2571, file: !86, line: 356, type: !96)
!2575 = !DILocation(line: 355, column: 5, scope: !2571)
!2576 = !DILocation(line: 355, column: 21, scope: !2571)
!2577 = !DILocation(line: 0, scope: !2571)
!2578 = !DILocation(line: 358, column: 11, scope: !2571)
!2579 = !DILocation(line: 358, column: 9, scope: !2571)
!2580 = !DILocation(line: 359, column: 11, scope: !2571)
!2581 = !DILocation(line: 359, column: 15, scope: !2571)
!2582 = !DILocation(line: 359, column: 9, scope: !2571)
!2583 = !DILocation(line: 360, column: 11, scope: !2571)
!2584 = !DILocation(line: 360, column: 9, scope: !2571)
!2585 = !DILocation(line: 361, column: 37, scope: !2571)
!2586 = !DILocation(line: 361, column: 5, scope: !2571)
!2587 = !DILocation(line: 362, column: 1, scope: !2571)
!2588 = distinct !DISubprogram(name: "getc", scope: !103, file: !103, line: 68, type: !2589, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2591)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{!13}
!2591 = !{!2592}
!2592 = !DILocalVariable(name: "rc", scope: !2588, file: !103, line: 71, type: !13)
!2593 = !DILocation(line: 71, column: 14, scope: !2588)
!2594 = !DILocation(line: 0, scope: !2588)
!2595 = !DILocation(line: 72, column: 5, scope: !2588)
!2596 = distinct !DISubprogram(name: "getc_nowait", scope: !103, file: !103, line: 80, type: !2589, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2597)
!2597 = !{!2598}
!2598 = !DILocalVariable(name: "c", scope: !2596, file: !103, line: 82, type: !315)
!2599 = !DILocation(line: 84, column: 9, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2596, file: !103, line: 84, column: 9)
!2601 = !DILocation(line: 84, column: 40, scope: !2600)
!2602 = !DILocation(line: 84, column: 9, scope: !2596)
!2603 = !DILocation(line: 85, column: 13, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2600, file: !103, line: 84, column: 47)
!2605 = !DILocation(line: 86, column: 16, scope: !2604)
!2606 = !DILocation(line: 0, scope: !2596)
!2607 = !DILocation(line: 86, column: 9, scope: !2604)
!2608 = !DILocation(line: 0, scope: !2600)
!2609 = !DILocation(line: 90, column: 1, scope: !2596)
!2610 = distinct !DISubprogram(name: "uart_output_char", scope: !103, file: !103, line: 93, type: !2611, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2614)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{null, !2613, !134}
!2613 = !DIDerivedType(tag: DW_TAG_typedef, name: "UART_PORT", file: !106, line: 75, baseType: !105)
!2614 = !{!2615, !2616, !2617}
!2615 = !DILocalVariable(name: "port_no", arg: 1, scope: !2610, file: !103, line: 93, type: !2613)
!2616 = !DILocalVariable(name: "c", arg: 2, scope: !2610, file: !103, line: 93, type: !134)
!2617 = !DILocalVariable(name: "base", scope: !2610, file: !103, line: 95, type: !7)
!2618 = !DILocation(line: 0, scope: !2610)
!2619 = !DILocation(line: 95, column: 25, scope: !2610)
!2620 = !DILocation(line: 97, column: 5, scope: !2610)
!2621 = !DILocation(line: 97, column: 14, scope: !2610)
!2622 = !DILocation(line: 97, column: 42, scope: !2610)
!2623 = !DILocation(line: 97, column: 12, scope: !2610)
!2624 = distinct !{!2624, !2620, !2625}
!2625 = !DILocation(line: 98, column: 9, scope: !2610)
!2626 = !DILocation(line: 99, column: 35, scope: !2610)
!2627 = !DILocation(line: 99, column: 5, scope: !2610)
!2628 = !DILocation(line: 99, column: 33, scope: !2610)
!2629 = !DILocation(line: 102, column: 1, scope: !2610)
!2630 = distinct !DISubprogram(name: "uart_input_char", scope: !103, file: !103, line: 106, type: !2631, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2633)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!150, !2613}
!2633 = !{!2634, !2635, !2636}
!2634 = !DILocalVariable(name: "port_no", arg: 1, scope: !2630, file: !103, line: 106, type: !2613)
!2635 = !DILocalVariable(name: "base", scope: !2630, file: !103, line: 108, type: !7)
!2636 = !DILocalVariable(name: "c", scope: !2630, file: !103, line: 109, type: !315)
!2637 = !DILocation(line: 0, scope: !2630)
!2638 = !DILocation(line: 108, column: 25, scope: !2630)
!2639 = !DILocation(line: 111, column: 5, scope: !2630)
!2640 = !DILocation(line: 111, column: 14, scope: !2630)
!2641 = !DILocation(line: 111, column: 42, scope: !2630)
!2642 = !DILocation(line: 111, column: 12, scope: !2630)
!2643 = distinct !{!2643, !2639, !2644}
!2644 = !DILocation(line: 112, column: 9, scope: !2630)
!2645 = !DILocation(line: 114, column: 9, scope: !2630)
!2646 = !DILocation(line: 116, column: 5, scope: !2630)
!2647 = distinct !DISubprogram(name: "uart_input_char_unblocking", scope: !103, file: !103, line: 120, type: !2648, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2650)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{!92, !2613}
!2650 = !{!2651, !2652, !2653}
!2651 = !DILocalVariable(name: "port_no", arg: 1, scope: !2647, file: !103, line: 120, type: !2613)
!2652 = !DILocalVariable(name: "base", scope: !2647, file: !103, line: 122, type: !7)
!2653 = !DILocalVariable(name: "c", scope: !2647, file: !103, line: 123, type: !315)
!2654 = !DILocation(line: 0, scope: !2647)
!2655 = !DILocation(line: 122, column: 25, scope: !2647)
!2656 = !DILocation(line: 125, column: 9, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2647, file: !103, line: 125, column: 9)
!2658 = !DILocation(line: 125, column: 37, scope: !2657)
!2659 = !DILocation(line: 125, column: 9, scope: !2647)
!2660 = !DILocation(line: 126, column: 13, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2657, file: !103, line: 125, column: 44)
!2662 = !DILocation(line: 127, column: 16, scope: !2661)
!2663 = !DILocation(line: 127, column: 9, scope: !2661)
!2664 = !DILocation(line: 0, scope: !2657)
!2665 = !DILocation(line: 131, column: 1, scope: !2647)
!2666 = distinct !DISubprogram(name: "halUART_HWInit", scope: !103, file: !103, line: 136, type: !2667, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2669)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{null, !2613}
!2669 = !{!2670}
!2670 = !DILocalVariable(name: "u_port", arg: 1, scope: !2666, file: !103, line: 136, type: !2613)
!2671 = !DILocation(line: 0, scope: !2666)
!2672 = !DILocation(line: 139, column: 5, scope: !2666)
!2673 = !DILocation(line: 140, column: 9, scope: !2666)
!2674 = !DILocation(line: 153, column: 5, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2676, file: !103, line: 147, column: 38)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !103, line: 147, column: 16)
!2677 = distinct !DILexicalBlock(scope: !2666, file: !103, line: 140, column: 9)
!2678 = !DILocation(line: 0, scope: !2677)
!2679 = !DILocation(line: 155, column: 1, scope: !2666)
!2680 = distinct !DISubprogram(name: "halUART_SetFormat", scope: !103, file: !103, line: 158, type: !2681, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2685)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{null, !2613, !92, !2683, !2683, !2683}
!2683 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !93, line: 36, baseType: !2684)
!2684 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !95, line: 57, baseType: !132)
!2685 = !{!2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2701, !2702}
!2686 = !DILocalVariable(name: "u_port", arg: 1, scope: !2680, file: !103, line: 158, type: !2613)
!2687 = !DILocalVariable(name: "baudrate", arg: 2, scope: !2680, file: !103, line: 158, type: !92)
!2688 = !DILocalVariable(name: "databit", arg: 3, scope: !2680, file: !103, line: 158, type: !2683)
!2689 = !DILocalVariable(name: "parity", arg: 4, scope: !2680, file: !103, line: 158, type: !2683)
!2690 = !DILocalVariable(name: "stopbit", arg: 5, scope: !2680, file: !103, line: 158, type: !2683)
!2691 = !DILocalVariable(name: "control_word", scope: !2680, file: !103, line: 160, type: !2683)
!2692 = !DILocalVariable(name: "UART_BASE", scope: !2680, file: !103, line: 161, type: !92)
!2693 = !DILocalVariable(name: "data", scope: !2680, file: !103, line: 162, type: !92)
!2694 = !DILocalVariable(name: "uart_lcr", scope: !2680, file: !103, line: 162, type: !92)
!2695 = !DILocalVariable(name: "high_speed_div", scope: !2680, file: !103, line: 162, type: !92)
!2696 = !DILocalVariable(name: "sample_count", scope: !2680, file: !103, line: 162, type: !92)
!2697 = !DILocalVariable(name: "sample_point", scope: !2680, file: !103, line: 162, type: !92)
!2698 = !DILocalVariable(name: "fraction", scope: !2680, file: !103, line: 162, type: !92)
!2699 = !DILocalVariable(name: "fraction_L_mapping", scope: !2680, file: !103, line: 163, type: !2700)
!2700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2683, size: 176, elements: !658)
!2701 = !DILocalVariable(name: "fraction_M_mapping", scope: !2680, file: !103, line: 164, type: !2700)
!2702 = !DILocalVariable(name: "status", scope: !2680, file: !103, line: 165, type: !172)
!2703 = !DILocation(line: 0, scope: !2680)
!2704 = !DILocation(line: 163, column: 15, scope: !2680)
!2705 = !DILocation(line: 164, column: 15, scope: !2680)
!2706 = !DILocation(line: 166, column: 20, scope: !2680)
!2707 = !DILocation(line: 166, column: 18, scope: !2680)
!2708 = !DILocation(line: 168, column: 9, scope: !2680)
!2709 = !DILocation(line: 176, column: 5, scope: !2680)
!2710 = !DILocation(line: 176, column: 44, scope: !2680)
!2711 = !DILocation(line: 177, column: 16, scope: !2680)
!2712 = !DILocation(line: 178, column: 50, scope: !2680)
!2713 = !DILocation(line: 178, column: 38, scope: !2680)
!2714 = !DILocation(line: 179, column: 12, scope: !2680)
!2715 = !DILocation(line: 179, column: 25, scope: !2680)
!2716 = !DILocation(line: 180, column: 28, scope: !2680)
!2717 = !DILocation(line: 180, column: 34, scope: !2680)
!2718 = !DILocation(line: 182, column: 29, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2680, file: !103, line: 181, column: 5)
!2720 = !DILocation(line: 182, column: 46, scope: !2719)
!2721 = !DILocation(line: 183, column: 26, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2719, file: !103, line: 183, column: 13)
!2723 = !DILocation(line: 183, column: 13, scope: !2719)
!2724 = !DILocation(line: 192, column: 30, scope: !2680)
!2725 = !DILocation(line: 192, column: 35, scope: !2680)
!2726 = !DILocation(line: 192, column: 46, scope: !2680)
!2727 = !DILocation(line: 192, column: 74, scope: !2680)
!2728 = !DILocation(line: 192, column: 53, scope: !2680)
!2729 = !DILocation(line: 192, column: 80, scope: !2680)
!2730 = !DILocation(line: 193, column: 56, scope: !2680)
!2731 = !DILocation(line: 193, column: 5, scope: !2680)
!2732 = !DILocation(line: 193, column: 38, scope: !2680)
!2733 = !DILocation(line: 194, column: 57, scope: !2680)
!2734 = !DILocation(line: 194, column: 63, scope: !2680)
!2735 = !DILocation(line: 194, column: 5, scope: !2680)
!2736 = !DILocation(line: 194, column: 38, scope: !2680)
!2737 = !DILocation(line: 195, column: 5, scope: !2680)
!2738 = !DILocation(line: 195, column: 45, scope: !2680)
!2739 = !DILocation(line: 196, column: 5, scope: !2680)
!2740 = !DILocation(line: 196, column: 47, scope: !2680)
!2741 = !DILocation(line: 197, column: 46, scope: !2680)
!2742 = !DILocation(line: 197, column: 5, scope: !2680)
!2743 = !DILocation(line: 197, column: 44, scope: !2680)
!2744 = !DILocation(line: 198, column: 46, scope: !2680)
!2745 = !DILocation(line: 198, column: 5, scope: !2680)
!2746 = !DILocation(line: 198, column: 44, scope: !2680)
!2747 = !DILocation(line: 199, column: 38, scope: !2680)
!2748 = !DILocation(line: 200, column: 5, scope: !2680)
!2749 = !DILocation(line: 200, column: 38, scope: !2680)
!2750 = !DILocation(line: 202, column: 20, scope: !2680)
!2751 = !DILocation(line: 203, column: 18, scope: !2680)
!2752 = !DILocation(line: 205, column: 18, scope: !2680)
!2753 = !DILocation(line: 207, column: 18, scope: !2680)
!2754 = !DILocation(line: 208, column: 18, scope: !2680)
!2755 = !DILocation(line: 209, column: 5, scope: !2680)
!2756 = !DILocation(line: 213, column: 1, scope: !2680)
!2757 = distinct !DISubprogram(name: "halUART_Get_VFIFO_Length", scope: !103, file: !103, line: 215, type: !2758, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2761)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{null, !2613, !172, !2760}
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 32)
!2761 = !{!2762, !2763, !2764}
!2762 = !DILocalVariable(name: "u_port", arg: 1, scope: !2757, file: !103, line: 215, type: !2613)
!2763 = !DILocalVariable(name: "is_rx", arg: 2, scope: !2757, file: !103, line: 215, type: !172)
!2764 = !DILocalVariable(name: "length", arg: 3, scope: !2757, file: !103, line: 215, type: !2760)
!2765 = !DILocation(line: 0, scope: !2757)
!2766 = !DILocation(line: 217, column: 16, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2757, file: !103, line: 217, column: 9)
!2768 = !DILocation(line: 0, scope: !2767)
!2769 = !DILocation(line: 217, column: 9, scope: !2757)
!2770 = !DILocation(line: 218, column: 13, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2767, file: !103, line: 217, column: 31)
!2772 = !DILocation(line: 219, column: 23, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !103, line: 218, column: 20)
!2774 = distinct !DILexicalBlock(scope: !2771, file: !103, line: 218, column: 13)
!2775 = !DILocation(line: 220, column: 9, scope: !2773)
!2776 = !DILocation(line: 221, column: 23, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2774, file: !103, line: 220, column: 16)
!2778 = !DILocation(line: 221, column: 21, scope: !2777)
!2779 = !DILocation(line: 222, column: 24, scope: !2777)
!2780 = !DILocation(line: 222, column: 21, scope: !2777)
!2781 = !DILocation(line: 225, column: 13, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2767, file: !103, line: 224, column: 12)
!2783 = !DILocation(line: 226, column: 23, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2785, file: !103, line: 225, column: 20)
!2785 = distinct !DILexicalBlock(scope: !2782, file: !103, line: 225, column: 13)
!2786 = !DILocation(line: 227, column: 9, scope: !2784)
!2787 = !DILocation(line: 228, column: 23, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2785, file: !103, line: 227, column: 16)
!2789 = !DILocation(line: 228, column: 21, scope: !2788)
!2790 = !DILocation(line: 229, column: 24, scope: !2788)
!2791 = !DILocation(line: 229, column: 21, scope: !2788)
!2792 = !DILocation(line: 233, column: 5, scope: !2757)
!2793 = distinct !DISubprogram(name: "halUART_Read_VFIFO_Data", scope: !103, file: !103, line: 236, type: !2794, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2796)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{null, !2613, !363, !92}
!2796 = !{!2797, !2798, !2799, !2800}
!2797 = !DILocalVariable(name: "u_port", arg: 1, scope: !2793, file: !103, line: 236, type: !2613)
!2798 = !DILocalVariable(name: "data", arg: 2, scope: !2793, file: !103, line: 236, type: !363)
!2799 = !DILocalVariable(name: "length", arg: 3, scope: !2793, file: !103, line: 236, type: !92)
!2800 = !DILocalVariable(name: "idx", scope: !2793, file: !103, line: 238, type: !80)
!2801 = !DILocation(line: 0, scope: !2793)
!2802 = !DILocation(line: 239, column: 23, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !103, line: 239, column: 5)
!2804 = distinct !DILexicalBlock(scope: !2793, file: !103, line: 239, column: 5)
!2805 = !DILocation(line: 239, column: 5, scope: !2804)
!2806 = !DILocation(line: 240, column: 13, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2803, file: !103, line: 239, column: 40)
!2808 = !DILocation(line: 244, column: 9, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2810, file: !103, line: 242, column: 42)
!2810 = distinct !DILexicalBlock(scope: !2811, file: !103, line: 242, column: 20)
!2811 = distinct !DILexicalBlock(scope: !2807, file: !103, line: 240, column: 13)
!2812 = !DILocation(line: 0, scope: !2811)
!2813 = !DILocation(line: 239, column: 36, scope: !2803)
!2814 = distinct !{!2814, !2805, !2815}
!2815 = !DILocation(line: 246, column: 5, scope: !2804)
!2816 = !DILocation(line: 249, column: 1, scope: !2793)
!2817 = distinct !DISubprogram(name: "halUART_Write_VFIFO_Data", scope: !103, file: !103, line: 251, type: !2818, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2822)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{null, !2613, !2820, !92}
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 32)
!2821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!2822 = !{!2823, !2824, !2825, !2826}
!2823 = !DILocalVariable(name: "u_port", arg: 1, scope: !2817, file: !103, line: 251, type: !2613)
!2824 = !DILocalVariable(name: "data", arg: 2, scope: !2817, file: !103, line: 251, type: !2820)
!2825 = !DILocalVariable(name: "length", arg: 3, scope: !2817, file: !103, line: 251, type: !92)
!2826 = !DILocalVariable(name: "idx", scope: !2817, file: !103, line: 253, type: !80)
!2827 = !DILocation(line: 0, scope: !2817)
!2828 = !DILocation(line: 254, column: 23, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2830, file: !103, line: 254, column: 5)
!2830 = distinct !DILexicalBlock(scope: !2817, file: !103, line: 254, column: 5)
!2831 = !DILocation(line: 254, column: 5, scope: !2830)
!2832 = !DILocation(line: 255, column: 13, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2829, file: !103, line: 254, column: 40)
!2834 = !DILocation(line: 256, column: 61, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2836, file: !103, line: 255, column: 35)
!2836 = distinct !DILexicalBlock(scope: !2833, file: !103, line: 255, column: 13)
!2837 = !DILocation(line: 256, column: 59, scope: !2835)
!2838 = !DILocation(line: 257, column: 9, scope: !2835)
!2839 = !DILocation(line: 258, column: 61, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2841, file: !103, line: 257, column: 42)
!2841 = distinct !DILexicalBlock(scope: !2836, file: !103, line: 257, column: 20)
!2842 = !DILocation(line: 258, column: 59, scope: !2840)
!2843 = !DILocation(line: 259, column: 9, scope: !2840)
!2844 = !DILocation(line: 254, column: 36, scope: !2829)
!2845 = distinct !{!2845, !2831, !2846}
!2846 = !DILocation(line: 261, column: 5, scope: !2830)
!2847 = !DILocation(line: 264, column: 1, scope: !2817)
!2848 = distinct !DISubprogram(name: "halUART_Tx_VFIFO_Initialize", scope: !103, file: !103, line: 266, type: !2849, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2851)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{null, !2613, !363, !92, !92}
!2851 = !{!2852, !2853, !2854, !2855}
!2852 = !DILocalVariable(name: "u_port", arg: 1, scope: !2848, file: !103, line: 266, type: !2613)
!2853 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !2848, file: !103, line: 266, type: !363)
!2854 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !2848, file: !103, line: 266, type: !92)
!2855 = !DILocalVariable(name: "threshold", arg: 4, scope: !2848, file: !103, line: 266, type: !92)
!2856 = !DILocation(line: 0, scope: !2848)
!2857 = !DILocation(line: 268, column: 9, scope: !2848)
!2858 = !DILocation(line: 274, column: 5, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2860, file: !103, line: 271, column: 38)
!2860 = distinct !DILexicalBlock(scope: !2861, file: !103, line: 271, column: 16)
!2861 = distinct !DILexicalBlock(scope: !2848, file: !103, line: 268, column: 9)
!2862 = !DILocation(line: 0, scope: !2861)
!2863 = !DILocation(line: 276, column: 1, scope: !2848)
!2864 = distinct !DISubprogram(name: "halUART_Rx_VFIFO_Initialize", scope: !103, file: !103, line: 278, type: !2865, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2867)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{null, !2613, !363, !92, !92, !92, !92}
!2867 = !{!2868, !2869, !2870, !2871, !2872, !2873}
!2868 = !DILocalVariable(name: "u_port", arg: 1, scope: !2864, file: !103, line: 278, type: !2613)
!2869 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !2864, file: !103, line: 278, type: !363)
!2870 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !2864, file: !103, line: 278, type: !92)
!2871 = !DILocalVariable(name: "alert_length", arg: 4, scope: !2864, file: !103, line: 278, type: !92)
!2872 = !DILocalVariable(name: "threshold", arg: 5, scope: !2864, file: !103, line: 278, type: !92)
!2873 = !DILocalVariable(name: "timeout", arg: 6, scope: !2864, file: !103, line: 278, type: !92)
!2874 = !DILocation(line: 0, scope: !2864)
!2875 = !DILocation(line: 280, column: 9, scope: !2864)
!2876 = !DILocation(line: 286, column: 5, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2878, file: !103, line: 283, column: 38)
!2878 = distinct !DILexicalBlock(scope: !2879, file: !103, line: 283, column: 16)
!2879 = distinct !DILexicalBlock(scope: !2864, file: !103, line: 280, column: 9)
!2880 = !DILocation(line: 0, scope: !2879)
!2881 = !DILocation(line: 288, column: 1, scope: !2864)
!2882 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_Callback", scope: !103, file: !103, line: 290, type: !2883, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2885)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{null, !2613, !322}
!2885 = !{!2886, !2887}
!2886 = !DILocalVariable(name: "u_port", arg: 1, scope: !2882, file: !103, line: 290, type: !2613)
!2887 = !DILocalVariable(name: "func", arg: 2, scope: !2882, file: !103, line: 290, type: !322)
!2888 = !DILocation(line: 0, scope: !2882)
!2889 = !DILocation(line: 292, column: 9, scope: !2882)
!2890 = !DILocation(line: 296, column: 5, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2892, file: !103, line: 294, column: 38)
!2892 = distinct !DILexicalBlock(scope: !2893, file: !103, line: 294, column: 16)
!2893 = distinct !DILexicalBlock(scope: !2882, file: !103, line: 292, column: 9)
!2894 = !DILocation(line: 0, scope: !2893)
!2895 = !DILocation(line: 298, column: 1, scope: !2882)
!2896 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_TO_Callback", scope: !103, file: !103, line: 300, type: !2883, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2897)
!2897 = !{!2898, !2899}
!2898 = !DILocalVariable(name: "u_port", arg: 1, scope: !2896, file: !103, line: 300, type: !2613)
!2899 = !DILocalVariable(name: "func", arg: 2, scope: !2896, file: !103, line: 300, type: !322)
!2900 = !DILocation(line: 0, scope: !2896)
!2901 = !DILocation(line: 302, column: 9, scope: !2896)
!2902 = !DILocation(line: 306, column: 5, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2904, file: !103, line: 304, column: 38)
!2904 = distinct !DILexicalBlock(scope: !2905, file: !103, line: 304, column: 16)
!2905 = distinct !DILexicalBlock(scope: !2896, file: !103, line: 302, column: 9)
!2906 = !DILocation(line: 0, scope: !2905)
!2907 = !DILocation(line: 308, column: 1, scope: !2896)
!2908 = distinct !DISubprogram(name: "uart_set_hardware_flowcontrol", scope: !103, file: !103, line: 310, type: !2667, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2909)
!2909 = !{!2910, !2911, !2912, !2913}
!2910 = !DILocalVariable(name: "u_port", arg: 1, scope: !2908, file: !103, line: 310, type: !2613)
!2911 = !DILocalVariable(name: "base", scope: !2908, file: !103, line: 312, type: !7)
!2912 = !DILocalVariable(name: "EFR", scope: !2908, file: !103, line: 313, type: !2683)
!2913 = !DILocalVariable(name: "LCR", scope: !2908, file: !103, line: 313, type: !2683)
!2914 = !DILocation(line: 0, scope: !2908)
!2915 = !DILocation(line: 312, column: 25, scope: !2908)
!2916 = !DILocation(line: 315, column: 11, scope: !2908)
!2917 = !DILocation(line: 317, column: 33, scope: !2908)
!2918 = !DILocation(line: 318, column: 11, scope: !2908)
!2919 = !DILocation(line: 320, column: 35, scope: !2908)
!2920 = !DILocation(line: 320, column: 33, scope: !2908)
!2921 = !DILocation(line: 322, column: 5, scope: !2908)
!2922 = !DILocation(line: 322, column: 39, scope: !2908)
!2923 = !DILocation(line: 324, column: 33, scope: !2908)
!2924 = !DILocation(line: 325, column: 5, scope: !2908)
!2925 = !DILocation(line: 325, column: 33, scope: !2908)
!2926 = !DILocation(line: 327, column: 35, scope: !2908)
!2927 = !DILocation(line: 327, column: 33, scope: !2908)
!2928 = !DILocation(line: 328, column: 1, scope: !2908)
!2929 = distinct !DISubprogram(name: "uart_set_software_flowcontrol", scope: !103, file: !103, line: 330, type: !2930, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2932)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{null, !2613, !150, !150, !150}
!2932 = !{!2933, !2934, !2935, !2936, !2937, !2938, !2939}
!2933 = !DILocalVariable(name: "u_port", arg: 1, scope: !2929, file: !103, line: 330, type: !2613)
!2934 = !DILocalVariable(name: "xon", arg: 2, scope: !2929, file: !103, line: 330, type: !150)
!2935 = !DILocalVariable(name: "xoff", arg: 3, scope: !2929, file: !103, line: 330, type: !150)
!2936 = !DILocalVariable(name: "escape_character", arg: 4, scope: !2929, file: !103, line: 330, type: !150)
!2937 = !DILocalVariable(name: "base", scope: !2929, file: !103, line: 332, type: !7)
!2938 = !DILocalVariable(name: "EFR", scope: !2929, file: !103, line: 333, type: !2683)
!2939 = !DILocalVariable(name: "LCR", scope: !2929, file: !103, line: 333, type: !2683)
!2940 = !DILocation(line: 0, scope: !2929)
!2941 = !DILocation(line: 332, column: 25, scope: !2929)
!2942 = !DILocation(line: 335, column: 11, scope: !2929)
!2943 = !DILocation(line: 337, column: 33, scope: !2929)
!2944 = !DILocation(line: 338, column: 36, scope: !2929)
!2945 = !DILocation(line: 338, column: 5, scope: !2929)
!2946 = !DILocation(line: 338, column: 34, scope: !2929)
!2947 = !DILocation(line: 339, column: 5, scope: !2929)
!2948 = !DILocation(line: 339, column: 34, scope: !2929)
!2949 = !DILocation(line: 340, column: 37, scope: !2929)
!2950 = !DILocation(line: 340, column: 5, scope: !2929)
!2951 = !DILocation(line: 340, column: 35, scope: !2929)
!2952 = !DILocation(line: 341, column: 5, scope: !2929)
!2953 = !DILocation(line: 341, column: 35, scope: !2929)
!2954 = !DILocation(line: 343, column: 11, scope: !2929)
!2955 = !DILocation(line: 345, column: 35, scope: !2929)
!2956 = !DILocation(line: 345, column: 33, scope: !2929)
!2957 = !DILocation(line: 347, column: 35, scope: !2929)
!2958 = !DILocation(line: 347, column: 33, scope: !2929)
!2959 = !DILocation(line: 349, column: 43, scope: !2929)
!2960 = !DILocation(line: 349, column: 5, scope: !2929)
!2961 = !DILocation(line: 349, column: 41, scope: !2929)
!2962 = !DILocation(line: 350, column: 5, scope: !2929)
!2963 = !DILocation(line: 350, column: 39, scope: !2929)
!2964 = !DILocation(line: 351, column: 1, scope: !2929)
!2965 = distinct !DISubprogram(name: "uart_disable_flowcontrol", scope: !103, file: !103, line: 353, type: !2667, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2966)
!2966 = !{!2967, !2968, !2969}
!2967 = !DILocalVariable(name: "u_port", arg: 1, scope: !2965, file: !103, line: 353, type: !2613)
!2968 = !DILocalVariable(name: "base", scope: !2965, file: !103, line: 355, type: !7)
!2969 = !DILocalVariable(name: "LCR", scope: !2965, file: !103, line: 356, type: !2683)
!2970 = !DILocation(line: 0, scope: !2965)
!2971 = !DILocation(line: 355, column: 25, scope: !2965)
!2972 = !DILocation(line: 358, column: 11, scope: !2965)
!2973 = !DILocation(line: 360, column: 33, scope: !2965)
!2974 = !DILocation(line: 362, column: 5, scope: !2965)
!2975 = !DILocation(line: 362, column: 33, scope: !2965)
!2976 = !DILocation(line: 364, column: 33, scope: !2965)
!2977 = !DILocation(line: 366, column: 35, scope: !2965)
!2978 = !DILocation(line: 366, column: 33, scope: !2965)
!2979 = !DILocation(line: 367, column: 1, scope: !2965)
!2980 = distinct !DISubprogram(name: "uart_reset_default_value", scope: !103, file: !103, line: 436, type: !2667, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2981)
!2981 = !{!2982, !2983}
!2982 = !DILocalVariable(name: "u_port", arg: 1, scope: !2980, file: !103, line: 436, type: !2613)
!2983 = !DILocalVariable(name: "base", scope: !2980, file: !103, line: 438, type: !7)
!2984 = !DILocation(line: 0, scope: !2980)
!2985 = !DILocation(line: 438, column: 25, scope: !2980)
!2986 = !DILocation(line: 440, column: 5, scope: !2980)
!2987 = !DILocation(line: 440, column: 33, scope: !2980)
!2988 = !DILocation(line: 441, column: 5, scope: !2980)
!2989 = !DILocation(line: 441, column: 33, scope: !2980)
!2990 = !DILocation(line: 442, column: 5, scope: !2980)
!2991 = !DILocation(line: 442, column: 34, scope: !2980)
!2992 = !DILocation(line: 443, column: 5, scope: !2980)
!2993 = !DILocation(line: 443, column: 35, scope: !2980)
!2994 = !DILocation(line: 445, column: 33, scope: !2980)
!2995 = !DILocation(line: 446, column: 5, scope: !2980)
!2996 = !DILocation(line: 446, column: 33, scope: !2980)
!2997 = !DILocation(line: 447, column: 5, scope: !2980)
!2998 = !DILocation(line: 447, column: 33, scope: !2980)
!2999 = !DILocation(line: 449, column: 33, scope: !2980)
!3000 = !DILocation(line: 450, column: 33, scope: !2980)
!3001 = !DILocation(line: 451, column: 33, scope: !2980)
!3002 = !DILocation(line: 453, column: 33, scope: !2980)
!3003 = !DILocation(line: 454, column: 33, scope: !2980)
!3004 = !DILocation(line: 455, column: 33, scope: !2980)
!3005 = !DILocation(line: 457, column: 33, scope: !2980)
!3006 = !DILocation(line: 458, column: 5, scope: !2980)
!3007 = !DILocation(line: 458, column: 33, scope: !2980)
!3008 = !DILocation(line: 459, column: 5, scope: !2980)
!3009 = !DILocation(line: 459, column: 39, scope: !2980)
!3010 = !DILocation(line: 460, column: 5, scope: !2980)
!3011 = !DILocation(line: 460, column: 40, scope: !2980)
!3012 = !DILocation(line: 461, column: 5, scope: !2980)
!3013 = !DILocation(line: 461, column: 42, scope: !2980)
!3014 = !DILocation(line: 462, column: 5, scope: !2980)
!3015 = !DILocation(line: 462, column: 42, scope: !2980)
!3016 = !DILocation(line: 463, column: 5, scope: !2980)
!3017 = !DILocation(line: 463, column: 35, scope: !2980)
!3018 = !DILocation(line: 464, column: 5, scope: !2980)
!3019 = !DILocation(line: 464, column: 41, scope: !2980)
!3020 = !DILocation(line: 465, column: 5, scope: !2980)
!3021 = !DILocation(line: 465, column: 39, scope: !2980)
!3022 = !DILocation(line: 466, column: 5, scope: !2980)
!3023 = !DILocation(line: 466, column: 38, scope: !2980)
!3024 = !DILocation(line: 467, column: 5, scope: !2980)
!3025 = !DILocation(line: 467, column: 42, scope: !2980)
!3026 = !DILocation(line: 468, column: 5, scope: !2980)
!3027 = !DILocation(line: 468, column: 45, scope: !2980)
!3028 = !DILocation(line: 469, column: 5, scope: !2980)
!3029 = !DILocation(line: 469, column: 39, scope: !2980)
!3030 = !DILocation(line: 470, column: 5, scope: !2980)
!3031 = !DILocation(line: 470, column: 39, scope: !2980)
!3032 = !DILocation(line: 471, column: 5, scope: !2980)
!3033 = !DILocation(line: 471, column: 42, scope: !2980)
!3034 = !DILocation(line: 472, column: 1, scope: !2980)
!3035 = distinct !DISubprogram(name: "uart_query_empty", scope: !103, file: !103, line: 474, type: !2667, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3036)
!3036 = !{!3037, !3038}
!3037 = !DILocalVariable(name: "u_port", arg: 1, scope: !3035, file: !103, line: 474, type: !2613)
!3038 = !DILocalVariable(name: "base", scope: !3035, file: !103, line: 476, type: !7)
!3039 = !DILocation(line: 0, scope: !3035)
!3040 = !DILocation(line: 476, column: 25, scope: !3035)
!3041 = !DILocation(line: 478, column: 5, scope: !3035)
!3042 = !DILocation(line: 478, column: 14, scope: !3035)
!3043 = !DILocation(line: 478, column: 42, scope: !3035)
!3044 = !DILocation(line: 478, column: 12, scope: !3035)
!3045 = distinct !{!3045, !3041, !3046}
!3046 = !DILocation(line: 478, column: 50, scope: !3035)
!3047 = !DILocation(line: 479, column: 1, scope: !3035)
!3048 = distinct !DISubprogram(name: "log_hal_fatal_internal", scope: !838, file: !838, line: 64, type: !3049, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !3051)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{null, !482, !13, !482, null}
!3051 = !{!3052, !3053, !3054, !3055, !3064}
!3052 = !DILocalVariable(name: "func", arg: 1, scope: !3048, file: !838, line: 64, type: !482)
!3053 = !DILocalVariable(name: "line", arg: 2, scope: !3048, file: !838, line: 64, type: !13)
!3054 = !DILocalVariable(name: "message", arg: 3, scope: !3048, file: !838, line: 64, type: !482)
!3055 = !DILocalVariable(name: "ap", scope: !3048, file: !838, line: 66, type: !3056)
!3056 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3057, line: 46, baseType: !3058)
!3057 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/stdio.h", directory: "/home/mjshen/RTOSExploration")
!3058 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3059, line: 32, baseType: !3060)
!3059 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stdarg.h", directory: "")
!3060 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !838, baseType: !3061)
!3061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !3062)
!3062 = !{!3063}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !3061, file: !838, line: 66, baseType: !149, size: 32)
!3064 = !DILocalVariable(name: "mask", scope: !3048, file: !838, line: 68, type: !92)
!3065 = !DILocation(line: 0, scope: !3048)
!3066 = !DILocation(line: 66, column: 5, scope: !3048)
!3067 = !DILocation(line: 66, column: 13, scope: !3048)
!3068 = !DILocation(line: 68, column: 5, scope: !3048)
!3069 = !DILocation(line: 69, column: 5, scope: !3048)
!3070 = !DILocation(line: 71, column: 5, scope: !3048)
!3071 = !DILocation(line: 72, column: 5, scope: !3048)
!3072 = !DILocation(line: 73, column: 5, scope: !3048)
!3073 = !DILocation(line: 75, column: 37, scope: !3048)
!3074 = !DILocation(line: 75, column: 5, scope: !3048)
!3075 = !DILocation(line: 77, column: 1, scope: !3048)
!3076 = distinct !DISubprogram(name: "log_hal_error_internal", scope: !838, file: !838, line: 78, type: !3049, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !3077)
!3077 = !{!3078, !3079, !3080, !3081, !3082}
!3078 = !DILocalVariable(name: "func", arg: 1, scope: !3076, file: !838, line: 78, type: !482)
!3079 = !DILocalVariable(name: "line", arg: 2, scope: !3076, file: !838, line: 78, type: !13)
!3080 = !DILocalVariable(name: "message", arg: 3, scope: !3076, file: !838, line: 78, type: !482)
!3081 = !DILocalVariable(name: "ap", scope: !3076, file: !838, line: 80, type: !3056)
!3082 = !DILocalVariable(name: "mask", scope: !3076, file: !838, line: 82, type: !92)
!3083 = !DILocation(line: 0, scope: !3076)
!3084 = !DILocation(line: 80, column: 5, scope: !3076)
!3085 = !DILocation(line: 80, column: 13, scope: !3076)
!3086 = !DILocation(line: 82, column: 5, scope: !3076)
!3087 = !DILocation(line: 83, column: 5, scope: !3076)
!3088 = !DILocation(line: 85, column: 5, scope: !3076)
!3089 = !DILocation(line: 86, column: 5, scope: !3076)
!3090 = !DILocation(line: 87, column: 5, scope: !3076)
!3091 = !DILocation(line: 89, column: 37, scope: !3076)
!3092 = !DILocation(line: 89, column: 5, scope: !3076)
!3093 = !DILocation(line: 91, column: 1, scope: !3076)
!3094 = distinct !DISubprogram(name: "log_hal_warning_internal", scope: !838, file: !838, line: 92, type: !3049, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !3095)
!3095 = !{!3096, !3097, !3098, !3099, !3100}
!3096 = !DILocalVariable(name: "func", arg: 1, scope: !3094, file: !838, line: 92, type: !482)
!3097 = !DILocalVariable(name: "line", arg: 2, scope: !3094, file: !838, line: 92, type: !13)
!3098 = !DILocalVariable(name: "message", arg: 3, scope: !3094, file: !838, line: 92, type: !482)
!3099 = !DILocalVariable(name: "ap", scope: !3094, file: !838, line: 94, type: !3056)
!3100 = !DILocalVariable(name: "mask", scope: !3094, file: !838, line: 96, type: !92)
!3101 = !DILocation(line: 0, scope: !3094)
!3102 = !DILocation(line: 94, column: 5, scope: !3094)
!3103 = !DILocation(line: 94, column: 13, scope: !3094)
!3104 = !DILocation(line: 96, column: 5, scope: !3094)
!3105 = !DILocation(line: 97, column: 5, scope: !3094)
!3106 = !DILocation(line: 99, column: 5, scope: !3094)
!3107 = !DILocation(line: 100, column: 5, scope: !3094)
!3108 = !DILocation(line: 101, column: 5, scope: !3094)
!3109 = !DILocation(line: 103, column: 37, scope: !3094)
!3110 = !DILocation(line: 103, column: 5, scope: !3094)
!3111 = !DILocation(line: 105, column: 1, scope: !3094)
!3112 = distinct !DISubprogram(name: "log_hal_info_internal", scope: !838, file: !838, line: 106, type: !3049, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !3113)
!3113 = !{!3114, !3115, !3116, !3117, !3118}
!3114 = !DILocalVariable(name: "func", arg: 1, scope: !3112, file: !838, line: 106, type: !482)
!3115 = !DILocalVariable(name: "line", arg: 2, scope: !3112, file: !838, line: 106, type: !13)
!3116 = !DILocalVariable(name: "message", arg: 3, scope: !3112, file: !838, line: 106, type: !482)
!3117 = !DILocalVariable(name: "ap", scope: !3112, file: !838, line: 108, type: !3056)
!3118 = !DILocalVariable(name: "mask", scope: !3112, file: !838, line: 110, type: !92)
!3119 = !DILocation(line: 0, scope: !3112)
!3120 = !DILocation(line: 108, column: 5, scope: !3112)
!3121 = !DILocation(line: 108, column: 13, scope: !3112)
!3122 = !DILocation(line: 110, column: 5, scope: !3112)
!3123 = !DILocation(line: 111, column: 5, scope: !3112)
!3124 = !DILocation(line: 113, column: 5, scope: !3112)
!3125 = !DILocation(line: 114, column: 5, scope: !3112)
!3126 = !DILocation(line: 115, column: 5, scope: !3112)
!3127 = !DILocation(line: 117, column: 37, scope: !3112)
!3128 = !DILocation(line: 117, column: 5, scope: !3112)
!3129 = !DILocation(line: 119, column: 1, scope: !3112)
!3130 = distinct !DISubprogram(name: "log_hal_dump_internal", scope: !838, file: !838, line: 121, type: !3131, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !3135)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{null, !482, !13, !482, !3133, !13, null}
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 32)
!3134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3135 = !{!3136, !3137, !3138, !3139, !3140}
!3136 = !DILocalVariable(name: "func", arg: 1, scope: !3130, file: !838, line: 121, type: !482)
!3137 = !DILocalVariable(name: "line", arg: 2, scope: !3130, file: !838, line: 121, type: !13)
!3138 = !DILocalVariable(name: "message", arg: 3, scope: !3130, file: !838, line: 121, type: !482)
!3139 = !DILocalVariable(name: "data", arg: 4, scope: !3130, file: !838, line: 121, type: !3133)
!3140 = !DILocalVariable(name: "length", arg: 5, scope: !3130, file: !838, line: 121, type: !13)
!3141 = !DILocation(line: 0, scope: !3130)
!3142 = !DILocation(line: 123, column: 1, scope: !3130)
!3143 = distinct !DISubprogram(name: "hal_crypt_lock_take", scope: !141, file: !141, line: 51, type: !3144, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3146)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!172}
!3146 = !{!3147}
!3147 = !DILocalVariable(name: "irq_status", scope: !3143, file: !141, line: 53, type: !92)
!3148 = !DILocation(line: 54, column: 18, scope: !3143)
!3149 = !DILocation(line: 0, scope: !3143)
!3150 = !DILocation(line: 55, column: 9, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3143, file: !141, line: 55, column: 9)
!3152 = !{i8 0, i8 2}
!3153 = !DILocation(line: 55, column: 9, scope: !3143)
!3154 = !DILocation(line: 59, column: 18, scope: !3143)
!3155 = !DILocation(line: 61, column: 5, scope: !3143)
!3156 = !DILocation(line: 62, column: 1, scope: !3143)
!3157 = distinct !DISubprogram(name: "hal_crypt_lock_give", scope: !141, file: !141, line: 66, type: !75, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !1135)
!3158 = !DILocation(line: 68, column: 18, scope: !3157)
!3159 = !DILocation(line: 69, column: 1, scope: !3157)
!3160 = distinct !DISubprogram(name: "hal_aes_encrypt_with_padding", scope: !141, file: !141, line: 144, type: !3161, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3170)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!3163, !3164, !3164, !3164, !363, !150}
!3163 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_aes_status_t", file: !144, line: 293, baseType: !143)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 32)
!3165 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_aes_buffer_t", file: !144, line: 307, baseType: !3166)
!3166 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !144, line: 304, size: 64, elements: !3167)
!3167 = !{!3168, !3169}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3166, file: !144, line: 305, baseType: !363, size: 32)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3166, file: !144, line: 306, baseType: !92, size: 32, offset: 32)
!3170 = !{!3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3183, !3185, !3186}
!3171 = !DILocalVariable(name: "encrypted_text", arg: 1, scope: !3160, file: !141, line: 144, type: !3164)
!3172 = !DILocalVariable(name: "plain_text", arg: 2, scope: !3160, file: !141, line: 145, type: !3164)
!3173 = !DILocalVariable(name: "key", arg: 3, scope: !3160, file: !141, line: 146, type: !3164)
!3174 = !DILocalVariable(name: "init_vector", arg: 4, scope: !3160, file: !141, line: 147, type: !363)
!3175 = !DILocalVariable(name: "mode", arg: 5, scope: !3160, file: !141, line: 148, type: !150)
!3176 = !DILocalVariable(name: "last_block_size", scope: !3160, file: !141, line: 157, type: !92)
!3177 = !DILocalVariable(name: "block_num", scope: !3160, file: !141, line: 158, type: !92)
!3178 = !DILocalVariable(name: "padding_size", scope: !3160, file: !141, line: 159, type: !150)
!3179 = !DILocalVariable(name: "iv", scope: !3160, file: !141, line: 160, type: !363)
!3180 = !DILocalVariable(name: "first_encypt_size", scope: !3181, file: !141, line: 182, type: !92)
!3181 = distinct !DILexicalBlock(scope: !3182, file: !141, line: 181, column: 24)
!3182 = distinct !DILexicalBlock(scope: !3160, file: !141, line: 181, column: 9)
!3183 = !DILocalVariable(name: "data_block", scope: !3181, file: !141, line: 193, type: !3184)
!3184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 128, elements: !434)
!3185 = !DILocalVariable(name: "init_vector2", scope: !3181, file: !141, line: 197, type: !363)
!3186 = !DILocalVariable(name: "data_block", scope: !3187, file: !141, line: 215, type: !3184)
!3187 = distinct !DILexicalBlock(scope: !3182, file: !141, line: 214, column: 12)
!3188 = !DILocation(line: 0, scope: !3160)
!3189 = !DILocation(line: 150, column: 15, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3160, file: !141, line: 150, column: 9)
!3191 = !DILocation(line: 151, column: 13, scope: !3190)
!3192 = !DILocation(line: 154, column: 9, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3190, file: !141, line: 153, column: 39)
!3194 = !DILocation(line: 155, column: 9, scope: !3193)
!3195 = !DILocation(line: 157, column: 44, scope: !3160)
!3196 = !DILocation(line: 157, column: 51, scope: !3160)
!3197 = !DILocation(line: 182, column: 48, scope: !3181)
!3198 = !DILocation(line: 159, column: 28, scope: !3160)
!3199 = !DILocation(line: 162, column: 25, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3160, file: !141, line: 162, column: 9)
!3201 = !DILocation(line: 162, column: 54, scope: !3200)
!3202 = !DILocation(line: 162, column: 32, scope: !3200)
!3203 = !DILocation(line: 162, column: 9, scope: !3160)
!3204 = !DILocation(line: 163, column: 9, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3200, file: !141, line: 162, column: 71)
!3206 = !DILocation(line: 164, column: 9, scope: !3205)
!3207 = !DILocation(line: 167, column: 5, scope: !3160)
!3208 = !DILocation(line: 169, column: 5, scope: !3160)
!3209 = !DILocation(line: 170, column: 5, scope: !3160)
!3210 = !DILocation(line: 171, column: 5, scope: !3160)
!3211 = !DILocation(line: 173, column: 31, scope: !3160)
!3212 = !DILocation(line: 173, column: 17, scope: !3160)
!3213 = !DILocation(line: 173, column: 44, scope: !3160)
!3214 = !DILocation(line: 173, column: 5, scope: !3160)
!3215 = !DILocation(line: 175, column: 22, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3160, file: !141, line: 175, column: 9)
!3217 = !DILocation(line: 0, scope: !3216)
!3218 = !DILocation(line: 181, column: 19, scope: !3182)
!3219 = !DILocation(line: 181, column: 9, scope: !3160)
!3220 = !DILocation(line: 0, scope: !3181)
!3221 = !DILocation(line: 183, column: 65, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3181, file: !141, line: 183, column: 13)
!3223 = !DILocation(line: 184, column: 65, scope: !3222)
!3224 = !DILocation(line: 185, column: 61, scope: !3222)
!3225 = !DILocation(line: 183, column: 34, scope: !3222)
!3226 = !DILocation(line: 183, column: 31, scope: !3222)
!3227 = !DILocation(line: 183, column: 13, scope: !3181)
!3228 = !DILocation(line: 188, column: 13, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3222, file: !141, line: 187, column: 63)
!3230 = !DILocation(line: 189, column: 13, scope: !3229)
!3231 = !DILocation(line: 193, column: 9, scope: !3181)
!3232 = !DILocation(line: 193, column: 17, scope: !3181)
!3233 = !DILocation(line: 194, column: 40, scope: !3181)
!3234 = !DILocation(line: 194, column: 47, scope: !3181)
!3235 = !DILocation(line: 194, column: 9, scope: !3181)
!3236 = !DILocation(line: 195, column: 27, scope: !3181)
!3237 = !DILocation(line: 195, column: 9, scope: !3181)
!3238 = !DILocation(line: 198, column: 13, scope: !3181)
!3239 = !DILocation(line: 205, column: 72, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3181, file: !141, line: 205, column: 13)
!3241 = !DILocation(line: 206, column: 65, scope: !3240)
!3242 = !DILocation(line: 205, column: 34, scope: !3240)
!3243 = !DILocation(line: 205, column: 31, scope: !3240)
!3244 = !DILocation(line: 205, column: 13, scope: !3181)
!3245 = !DILocation(line: 214, column: 5, scope: !3182)
!3246 = !DILocation(line: 210, column: 13, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3240, file: !141, line: 209, column: 54)
!3248 = !DILocation(line: 211, column: 13, scope: !3247)
!3249 = !DILocation(line: 215, column: 9, scope: !3187)
!3250 = !DILocation(line: 215, column: 17, scope: !3187)
!3251 = !DILocation(line: 216, column: 40, scope: !3187)
!3252 = !DILocation(line: 216, column: 60, scope: !3187)
!3253 = !DILocation(line: 216, column: 9, scope: !3187)
!3254 = !DILocation(line: 217, column: 27, scope: !3187)
!3255 = !DILocation(line: 217, column: 9, scope: !3187)
!3256 = !DILocation(line: 218, column: 65, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3187, file: !141, line: 218, column: 13)
!3258 = !DILocation(line: 219, column: 65, scope: !3257)
!3259 = !DILocation(line: 218, column: 34, scope: !3257)
!3260 = !DILocation(line: 218, column: 31, scope: !3257)
!3261 = !DILocation(line: 218, column: 13, scope: !3187)
!3262 = !DILocation(line: 223, column: 13, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3257, file: !141, line: 222, column: 63)
!3264 = !DILocation(line: 224, column: 13, scope: !3263)
!3265 = !DILocation(line: 227, column: 5, scope: !3182)
!3266 = !DILocation(line: 229, column: 46, scope: !3160)
!3267 = !DILocation(line: 229, column: 28, scope: !3160)
!3268 = !DILocation(line: 231, column: 5, scope: !3160)
!3269 = !DILocation(line: 232, column: 5, scope: !3160)
!3270 = !DILocation(line: 233, column: 1, scope: !3160)
!3271 = distinct !DISubprogram(name: "aes_operation_done", scope: !141, file: !141, line: 76, type: !254, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3272)
!3272 = !{!3273}
!3273 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3271, file: !141, line: 76, type: !171)
!3274 = !DILocation(line: 0, scope: !3271)
!3275 = !DILocation(line: 78, column: 5, scope: !3271)
!3276 = !DILocation(line: 79, column: 5, scope: !3271)
!3277 = !DILocation(line: 81, column: 19, scope: !3271)
!3278 = !DILocation(line: 83, column: 5, scope: !3271)
!3279 = !DILocation(line: 84, column: 1, scope: !3271)
!3280 = distinct !DISubprogram(name: "do_aes_encrypt", scope: !141, file: !141, line: 86, type: !3281, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3283)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!3163, !363, !92, !363, !92, !363}
!3283 = !{!3284, !3285, !3286, !3287, !3288, !3289, !3290}
!3284 = !DILocalVariable(name: "encrypt_buffer", arg: 1, scope: !3280, file: !141, line: 86, type: !363)
!3285 = !DILocalVariable(name: "encrypt_buffer_length", arg: 2, scope: !3280, file: !141, line: 87, type: !92)
!3286 = !DILocalVariable(name: "plain_buffer", arg: 3, scope: !3280, file: !141, line: 88, type: !363)
!3287 = !DILocalVariable(name: "plain_buffer_length", arg: 4, scope: !3280, file: !141, line: 89, type: !92)
!3288 = !DILocalVariable(name: "init_vector", arg: 5, scope: !3280, file: !141, line: 90, type: !363)
!3289 = !DILocalVariable(name: "ret_val", scope: !3280, file: !141, line: 93, type: !172)
!3290 = !DILocalVariable(name: "wait_count", scope: !3280, file: !141, line: 103, type: !92)
!3291 = !DILocation(line: 0, scope: !3280)
!3292 = !DILocation(line: 92, column: 19, scope: !3280)
!3293 = !DILocation(line: 94, column: 35, scope: !3280)
!3294 = !DILocation(line: 96, column: 35, scope: !3280)
!3295 = !DILocation(line: 93, column: 23, scope: !3280)
!3296 = !DILocation(line: 99, column: 17, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3280, file: !141, line: 99, column: 9)
!3298 = !DILocation(line: 99, column: 9, scope: !3280)
!3299 = !DILocation(line: 100, column: 9, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3297, file: !141, line: 99, column: 22)
!3301 = !DILocation(line: 101, column: 9, scope: !3300)
!3302 = !DILocation(line: 104, column: 13, scope: !3280)
!3303 = !DILocation(line: 104, column: 5, scope: !3280)
!3304 = !DILocation(line: 106, column: 19, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3280, file: !141, line: 104, column: 28)
!3306 = !DILocation(line: 107, column: 24, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3305, file: !141, line: 107, column: 13)
!3308 = !DILocation(line: 107, column: 13, scope: !3305)
!3309 = distinct !{!3309, !3303, !3310}
!3310 = !DILocation(line: 111, column: 5, scope: !3280)
!3311 = !DILocation(line: 108, column: 13, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3307, file: !141, line: 107, column: 50)
!3313 = !DILocation(line: 109, column: 13, scope: !3312)
!3314 = !DILocation(line: 113, column: 1, scope: !3280)
!3315 = distinct !DISubprogram(name: "hal_aes_decrypt", scope: !141, file: !141, line: 235, type: !3161, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3316)
!3316 = !{!3317, !3318, !3319, !3320, !3321, !3322}
!3317 = !DILocalVariable(name: "plain_text", arg: 1, scope: !3315, file: !141, line: 235, type: !3164)
!3318 = !DILocalVariable(name: "encrypted_text", arg: 2, scope: !3315, file: !141, line: 236, type: !3164)
!3319 = !DILocalVariable(name: "key", arg: 3, scope: !3315, file: !141, line: 237, type: !3164)
!3320 = !DILocalVariable(name: "init_vector", arg: 4, scope: !3315, file: !141, line: 238, type: !363)
!3321 = !DILocalVariable(name: "mode", arg: 5, scope: !3315, file: !141, line: 239, type: !150)
!3322 = !DILocalVariable(name: "padding_size", scope: !3315, file: !141, line: 285, type: !150)
!3323 = !DILocation(line: 0, scope: !3315)
!3324 = !DILocation(line: 241, column: 15, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3315, file: !141, line: 241, column: 9)
!3326 = !DILocation(line: 242, column: 13, scope: !3325)
!3327 = !DILocation(line: 245, column: 9, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3325, file: !141, line: 244, column: 39)
!3329 = !DILocation(line: 246, column: 9, scope: !3328)
!3330 = !DILocation(line: 249, column: 26, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3315, file: !141, line: 249, column: 9)
!3332 = !DILocation(line: 249, column: 33, scope: !3331)
!3333 = !DILocation(line: 249, column: 56, scope: !3331)
!3334 = !DILocation(line: 249, column: 9, scope: !3315)
!3335 = !DILocation(line: 250, column: 9, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3331, file: !141, line: 249, column: 62)
!3337 = !DILocation(line: 251, column: 9, scope: !3336)
!3338 = !DILocation(line: 253, column: 21, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3315, file: !141, line: 253, column: 9)
!3340 = !DILocation(line: 253, column: 54, scope: !3339)
!3341 = !DILocation(line: 253, column: 28, scope: !3339)
!3342 = !DILocation(line: 253, column: 9, scope: !3315)
!3343 = !DILocation(line: 254, column: 9, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3339, file: !141, line: 253, column: 78)
!3345 = !DILocation(line: 256, column: 9, scope: !3344)
!3346 = !DILocation(line: 258, column: 15, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3315, file: !141, line: 258, column: 9)
!3348 = !DILocation(line: 259, column: 13, scope: !3347)
!3349 = !DILocation(line: 261, column: 9, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3347, file: !141, line: 260, column: 57)
!3351 = !DILocation(line: 262, column: 9, scope: !3350)
!3352 = !DILocation(line: 265, column: 5, scope: !3315)
!3353 = !DILocation(line: 267, column: 5, scope: !3315)
!3354 = !DILocation(line: 268, column: 5, scope: !3315)
!3355 = !DILocation(line: 269, column: 5, scope: !3315)
!3356 = !DILocation(line: 271, column: 22, scope: !3315)
!3357 = !DILocation(line: 271, column: 17, scope: !3315)
!3358 = !DILocation(line: 271, column: 35, scope: !3315)
!3359 = !DILocation(line: 271, column: 5, scope: !3315)
!3360 = !DILocation(line: 272, column: 22, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3315, file: !141, line: 272, column: 9)
!3362 = !DILocation(line: 0, scope: !3361)
!3363 = !DILocation(line: 279, column: 30, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3315, file: !141, line: 279, column: 9)
!3365 = !DILocation(line: 279, column: 27, scope: !3364)
!3366 = !DILocation(line: 279, column: 9, scope: !3315)
!3367 = !DILocation(line: 280, column: 9, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3364, file: !141, line: 279, column: 87)
!3369 = !DILocation(line: 281, column: 9, scope: !3368)
!3370 = !DILocation(line: 282, column: 9, scope: !3368)
!3371 = !DILocation(line: 285, column: 40, scope: !3315)
!3372 = !DILocation(line: 285, column: 63, scope: !3315)
!3373 = !DILocation(line: 285, column: 70, scope: !3315)
!3374 = !DILocation(line: 285, column: 28, scope: !3315)
!3375 = !DILocation(line: 286, column: 5, scope: !3315)
!3376 = !DILocation(line: 287, column: 42, scope: !3315)
!3377 = !DILocation(line: 287, column: 51, scope: !3315)
!3378 = !DILocation(line: 287, column: 49, scope: !3315)
!3379 = !DILocation(line: 287, column: 24, scope: !3315)
!3380 = !DILocation(line: 289, column: 5, scope: !3315)
!3381 = !DILocation(line: 291, column: 1, scope: !3315)
!3382 = distinct !DISubprogram(name: "do_aes_decrypt", scope: !141, file: !141, line: 115, type: !3383, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3385)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!3163, !3164, !3164, !363}
!3385 = !{!3386, !3387, !3388, !3389, !3390}
!3386 = !DILocalVariable(name: "plain_text", arg: 1, scope: !3382, file: !141, line: 115, type: !3164)
!3387 = !DILocalVariable(name: "encrypted_text", arg: 2, scope: !3382, file: !141, line: 116, type: !3164)
!3388 = !DILocalVariable(name: "init_vector", arg: 3, scope: !3382, file: !141, line: 117, type: !363)
!3389 = !DILocalVariable(name: "ret_val", scope: !3382, file: !141, line: 121, type: !172)
!3390 = !DILocalVariable(name: "wait_count", scope: !3382, file: !141, line: 131, type: !92)
!3391 = !DILocation(line: 0, scope: !3382)
!3392 = !DILocation(line: 119, column: 19, scope: !3382)
!3393 = !DILocation(line: 121, column: 51, scope: !3382)
!3394 = !DILocation(line: 122, column: 51, scope: !3382)
!3395 = !DILocation(line: 122, column: 35, scope: !3382)
!3396 = !DILocation(line: 123, column: 47, scope: !3382)
!3397 = !DILocation(line: 124, column: 47, scope: !3382)
!3398 = !DILocation(line: 124, column: 35, scope: !3382)
!3399 = !DILocation(line: 121, column: 23, scope: !3382)
!3400 = !DILocation(line: 127, column: 17, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3382, file: !141, line: 127, column: 9)
!3402 = !DILocation(line: 127, column: 9, scope: !3382)
!3403 = !DILocation(line: 128, column: 9, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3401, file: !141, line: 127, column: 22)
!3405 = !DILocation(line: 129, column: 9, scope: !3404)
!3406 = !DILocation(line: 132, column: 13, scope: !3382)
!3407 = !DILocation(line: 132, column: 5, scope: !3382)
!3408 = !DILocation(line: 134, column: 19, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3382, file: !141, line: 132, column: 28)
!3410 = !DILocation(line: 135, column: 24, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3409, file: !141, line: 135, column: 13)
!3412 = !DILocation(line: 135, column: 13, scope: !3409)
!3413 = distinct !{!3413, !3407, !3414}
!3414 = !DILocation(line: 139, column: 5, scope: !3382)
!3415 = !DILocation(line: 136, column: 13, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3411, file: !141, line: 135, column: 50)
!3417 = !DILocation(line: 137, column: 13, scope: !3416)
!3418 = !DILocation(line: 141, column: 1, scope: !3382)
!3419 = distinct !DISubprogram(name: "hal_aes_cbc_encrypt", scope: !141, file: !141, line: 293, type: !3420, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3422)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!3163, !3164, !3164, !3164, !363}
!3422 = !{!3423, !3424, !3425, !3426}
!3423 = !DILocalVariable(name: "encrypted_text", arg: 1, scope: !3419, file: !141, line: 293, type: !3164)
!3424 = !DILocalVariable(name: "plain_text", arg: 2, scope: !3419, file: !141, line: 294, type: !3164)
!3425 = !DILocalVariable(name: "key", arg: 3, scope: !3419, file: !141, line: 295, type: !3164)
!3426 = !DILocalVariable(name: "init_vector", arg: 4, scope: !3419, file: !141, line: 296, type: !363)
!3427 = !DILocation(line: 0, scope: !3419)
!3428 = !DILocation(line: 298, column: 12, scope: !3419)
!3429 = !DILocation(line: 298, column: 5, scope: !3419)
!3430 = distinct !DISubprogram(name: "hal_aes_cbc_decrypt", scope: !141, file: !141, line: 301, type: !3420, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3431)
!3431 = !{!3432, !3433, !3434, !3435}
!3432 = !DILocalVariable(name: "plain_text", arg: 1, scope: !3430, file: !141, line: 301, type: !3164)
!3433 = !DILocalVariable(name: "encrypted_text", arg: 2, scope: !3430, file: !141, line: 302, type: !3164)
!3434 = !DILocalVariable(name: "key", arg: 3, scope: !3430, file: !141, line: 303, type: !3164)
!3435 = !DILocalVariable(name: "init_vector", arg: 4, scope: !3430, file: !141, line: 304, type: !363)
!3436 = !DILocation(line: 0, scope: !3430)
!3437 = !DILocation(line: 306, column: 12, scope: !3430)
!3438 = !DILocation(line: 306, column: 5, scope: !3430)
!3439 = distinct !DISubprogram(name: "hal_aes_ecb_encrypt", scope: !141, file: !141, line: 309, type: !3440, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3442)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!3163, !3164, !3164, !3164}
!3442 = !{!3443, !3444, !3445, !3446}
!3443 = !DILocalVariable(name: "encrypted_text", arg: 1, scope: !3439, file: !141, line: 309, type: !3164)
!3444 = !DILocalVariable(name: "plain_text", arg: 2, scope: !3439, file: !141, line: 310, type: !3164)
!3445 = !DILocalVariable(name: "key", arg: 3, scope: !3439, file: !141, line: 311, type: !3164)
!3446 = !DILocalVariable(name: "init_vector", scope: !3439, file: !141, line: 313, type: !3184)
!3447 = !DILocation(line: 0, scope: !3439)
!3448 = !DILocation(line: 313, column: 5, scope: !3439)
!3449 = !DILocation(line: 313, column: 13, scope: !3439)
!3450 = !DILocation(line: 315, column: 12, scope: !3439)
!3451 = !DILocation(line: 316, column: 1, scope: !3439)
!3452 = !DILocation(line: 315, column: 5, scope: !3439)
!3453 = distinct !DISubprogram(name: "hal_aes_ecb_decrypt", scope: !141, file: !141, line: 318, type: !3440, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3454)
!3454 = !{!3455, !3456, !3457, !3458}
!3455 = !DILocalVariable(name: "plain_text", arg: 1, scope: !3453, file: !141, line: 318, type: !3164)
!3456 = !DILocalVariable(name: "encrypted_text", arg: 2, scope: !3453, file: !141, line: 319, type: !3164)
!3457 = !DILocalVariable(name: "key", arg: 3, scope: !3453, file: !141, line: 320, type: !3164)
!3458 = !DILocalVariable(name: "init_vector", scope: !3453, file: !141, line: 322, type: !3184)
!3459 = !DILocation(line: 0, scope: !3453)
!3460 = !DILocation(line: 322, column: 5, scope: !3453)
!3461 = !DILocation(line: 322, column: 13, scope: !3453)
!3462 = !DILocation(line: 324, column: 12, scope: !3453)
!3463 = !DILocation(line: 325, column: 1, scope: !3453)
!3464 = !DILocation(line: 324, column: 5, scope: !3453)
!3465 = distinct !DISubprogram(name: "hal_nvic_init", scope: !160, file: !160, line: 60, type: !3466, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !1135)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!3468}
!3468 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_status_t", file: !163, line: 158, baseType: !162)
!3469 = !DILocation(line: 62, column: 5, scope: !3465)
!3470 = distinct !DISubprogram(name: "hal_nvic_enable_irq", scope: !160, file: !160, line: 65, type: !3471, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !3473)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!3468, !171}
!3473 = !{!3474, !3475}
!3474 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3470, file: !160, line: 65, type: !171)
!3475 = !DILocalVariable(name: "status", scope: !3470, file: !160, line: 67, type: !3468)
!3476 = !DILocation(line: 0, scope: !3470)
!3477 = !DILocation(line: 69, column: 40, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3470, file: !160, line: 69, column: 9)
!3479 = !DILocation(line: 73, column: 9, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3478, file: !160, line: 72, column: 12)
!3481 = !DILocation(line: 77, column: 5, scope: !3470)
!3482 = !DILocation(line: 78, column: 1, scope: !3470)
!3483 = distinct !DISubprogram(name: "NVIC_EnableIRQ", scope: !176, file: !176, line: 1494, type: !3484, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !3486)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{null, !61}
!3486 = !{!3487}
!3487 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3483, file: !176, line: 1494, type: !61)
!3488 = !DILocation(line: 0, scope: !3483)
!3489 = !DILocation(line: 1497, column: 91, scope: !3483)
!3490 = !DILocation(line: 1497, column: 61, scope: !3483)
!3491 = !DILocation(line: 1497, column: 40, scope: !3483)
!3492 = !DILocation(line: 1497, column: 3, scope: !3483)
!3493 = !DILocation(line: 1497, column: 46, scope: !3483)
!3494 = !DILocation(line: 1498, column: 1, scope: !3483)
!3495 = distinct !DISubprogram(name: "hal_nvic_disable_irq", scope: !160, file: !160, line: 80, type: !3471, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !3496)
!3496 = !{!3497, !3498}
!3497 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3495, file: !160, line: 80, type: !171)
!3498 = !DILocalVariable(name: "status", scope: !3495, file: !160, line: 82, type: !3468)
!3499 = !DILocation(line: 0, scope: !3495)
!3500 = !DILocation(line: 84, column: 40, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3495, file: !160, line: 84, column: 9)
!3502 = !DILocation(line: 88, column: 9, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3501, file: !160, line: 87, column: 12)
!3504 = !DILocation(line: 92, column: 5, scope: !3495)
!3505 = !DILocation(line: 93, column: 1, scope: !3495)
!3506 = distinct !DISubprogram(name: "NVIC_DisableIRQ", scope: !176, file: !176, line: 1507, type: !3484, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !3507)
!3507 = !{!3508}
!3508 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3506, file: !176, line: 1507, type: !61)
!3509 = !DILocation(line: 0, scope: !3506)
!3510 = !DILocation(line: 1509, column: 65, scope: !3506)
!3511 = !DILocation(line: 1509, column: 44, scope: !3506)
!3512 = !DILocation(line: 1509, column: 32, scope: !3506)
!3513 = !DILocation(line: 1509, column: 3, scope: !3506)
!3514 = !DILocation(line: 1509, column: 39, scope: !3506)
!3515 = !DILocation(line: 1510, column: 1, scope: !3506)
!3516 = distinct !DISubprogram(name: "hal_nvic_get_pending_irq", scope: !160, file: !160, line: 95, type: !3517, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !3519)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!92, !171}
!3519 = !{!3520, !3521}
!3520 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3516, file: !160, line: 95, type: !171)
!3521 = !DILocalVariable(name: "ret", scope: !3516, file: !160, line: 97, type: !92)
!3522 = !DILocation(line: 0, scope: !3516)
!3523 = !DILocation(line: 99, column: 40, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3516, file: !160, line: 99, column: 9)
!3525 = !DILocation(line: 102, column: 15, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3524, file: !160, line: 101, column: 12)
!3527 = !DILocation(line: 105, column: 5, scope: !3516)
!3528 = !DILocation(line: 106, column: 1, scope: !3516)
!3529 = distinct !DISubprogram(name: "NVIC_GetPendingIRQ", scope: !176, file: !176, line: 1523, type: !3530, scopeLine: 1524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !3532)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!92, !61}
!3532 = !{!3533}
!3533 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3529, file: !176, line: 1523, type: !61)
!3534 = !DILocation(line: 0, scope: !3529)
!3535 = !DILocation(line: 1525, column: 51, scope: !3529)
!3536 = !DILocation(line: 1525, column: 23, scope: !3529)
!3537 = !DILocation(line: 1525, column: 83, scope: !3529)
!3538 = !DILocation(line: 1525, column: 22, scope: !3529)
!3539 = !DILocation(line: 1525, column: 3, scope: !3529)
!3540 = distinct !DISubprogram(name: "hal_nvic_set_pending_irq", scope: !160, file: !160, line: 108, type: !3471, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !3541)
!3541 = !{!3542, !3543}
!3542 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3540, file: !160, line: 108, type: !171)
!3543 = !DILocalVariable(name: "status", scope: !3540, file: !160, line: 110, type: !3468)
!3544 = !DILocation(line: 0, scope: !3540)
!3545 = !DILocation(line: 112, column: 40, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3540, file: !160, line: 112, column: 9)
!3547 = !DILocation(line: 116, column: 9, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3546, file: !160, line: 115, column: 12)
!3549 = !DILocation(line: 120, column: 5, scope: !3540)
!3550 = !DILocation(line: 121, column: 1, scope: !3540)
!3551 = distinct !DISubprogram(name: "NVIC_SetPendingIRQ", scope: !176, file: !176, line: 1535, type: !3484, scopeLine: 1536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !3552)
!3552 = !{!3553}
!3553 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3551, file: !176, line: 1535, type: !61)
!3554 = !DILocation(line: 0, scope: !3551)
!3555 = !DILocation(line: 1537, column: 65, scope: !3551)
!3556 = !DILocation(line: 1537, column: 44, scope: !3551)
!3557 = !DILocation(line: 1537, column: 32, scope: !3551)
!3558 = !DILocation(line: 1537, column: 3, scope: !3551)
!3559 = !DILocation(line: 1537, column: 39, scope: !3551)
!3560 = !DILocation(line: 1538, column: 1, scope: !3551)
!3561 = distinct !DISubprogram(name: "hal_nvic_clear_pending_irq", scope: !160, file: !160, line: 123, type: !3471, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !3562)
!3562 = !{!3563, !3564}
!3563 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3561, file: !160, line: 123, type: !171)
!3564 = !DILocalVariable(name: "status", scope: !3561, file: !160, line: 125, type: !3468)
!3565 = !DILocation(line: 0, scope: !3561)
!3566 = !DILocation(line: 127, column: 40, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3561, file: !160, line: 127, column: 9)
!3568 = !DILocation(line: 131, column: 9, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3567, file: !160, line: 130, column: 12)
!3570 = !DILocation(line: 135, column: 5, scope: !3561)
!3571 = !DILocation(line: 136, column: 1, scope: !3561)
!3572 = distinct !DISubprogram(name: "NVIC_ClearPendingIRQ", scope: !176, file: !176, line: 1547, type: !3484, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !3573)
!3573 = !{!3574}
!3574 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3572, file: !176, line: 1547, type: !61)
!3575 = !DILocation(line: 0, scope: !3572)
!3576 = !DILocation(line: 1549, column: 65, scope: !3572)
!3577 = !DILocation(line: 1549, column: 44, scope: !3572)
!3578 = !DILocation(line: 1549, column: 32, scope: !3572)
!3579 = !DILocation(line: 1549, column: 3, scope: !3572)
!3580 = !DILocation(line: 1549, column: 39, scope: !3572)
!3581 = !DILocation(line: 1550, column: 1, scope: !3572)
!3582 = distinct !DISubprogram(name: "hal_nvic_set_priority", scope: !160, file: !160, line: 138, type: !3583, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !3585)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!3468, !171, !92}
!3585 = !{!3586, !3587, !3588}
!3586 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3582, file: !160, line: 138, type: !171)
!3587 = !DILocalVariable(name: "priority", arg: 2, scope: !3582, file: !160, line: 138, type: !92)
!3588 = !DILocalVariable(name: "status", scope: !3582, file: !160, line: 140, type: !3468)
!3589 = !DILocation(line: 0, scope: !3582)
!3590 = !DILocation(line: 142, column: 40, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3582, file: !160, line: 142, column: 9)
!3592 = !DILocation(line: 146, column: 9, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3591, file: !160, line: 145, column: 12)
!3594 = !DILocation(line: 150, column: 5, scope: !3582)
!3595 = !DILocation(line: 151, column: 1, scope: !3582)
!3596 = distinct !DISubprogram(name: "NVIC_SetPriority", scope: !176, file: !176, line: 1577, type: !3597, scopeLine: 1578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !3599)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{null, !61, !92}
!3599 = !{!3600, !3601}
!3600 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3596, file: !176, line: 1577, type: !61)
!3601 = !DILocalVariable(name: "priority", arg: 2, scope: !3596, file: !176, line: 1577, type: !92)
!3602 = !DILocation(line: 0, scope: !3596)
!3603 = !DILocation(line: 1582, column: 34, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3605, file: !176, line: 1581, column: 8)
!3605 = distinct !DILexicalBlock(scope: !3596, file: !176, line: 1579, column: 6)
!3606 = !DILocation(line: 1582, column: 5, scope: !3604)
!3607 = !DILocation(line: 1582, column: 32, scope: !3604)
!3608 = !DILocation(line: 1583, column: 1, scope: !3596)
!3609 = distinct !DISubprogram(name: "hal_nvic_get_priority", scope: !160, file: !160, line: 153, type: !3517, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !3610)
!3610 = !{!3611, !3612}
!3611 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3609, file: !160, line: 153, type: !171)
!3612 = !DILocalVariable(name: "ret", scope: !3609, file: !160, line: 155, type: !92)
!3613 = !DILocation(line: 0, scope: !3609)
!3614 = !DILocation(line: 157, column: 40, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3609, file: !160, line: 157, column: 9)
!3616 = !DILocation(line: 160, column: 15, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3615, file: !160, line: 159, column: 12)
!3618 = !DILocation(line: 163, column: 5, scope: !3609)
!3619 = !DILocation(line: 164, column: 1, scope: !3609)
!3620 = distinct !DISubprogram(name: "NVIC_GetPriority", scope: !176, file: !176, line: 1597, type: !3530, scopeLine: 1598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !3621)
!3621 = !{!3622}
!3622 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3620, file: !176, line: 1597, type: !61)
!3623 = !DILocation(line: 0, scope: !3620)
!3624 = !DILocation(line: 1603, column: 23, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3626, file: !176, line: 1602, column: 8)
!3626 = distinct !DILexicalBlock(scope: !3620, file: !176, line: 1600, column: 6)
!3627 = !DILocation(line: 1603, column: 60, scope: !3625)
!3628 = !DILocation(line: 1604, column: 1, scope: !3620)
!3629 = distinct !DISubprogram(name: "Flash_ReturnReady", scope: !160, file: !160, line: 173, type: !75, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !1135)
!3630 = !DILocation(line: 175, column: 1, scope: !3629)
!3631 = distinct !DISubprogram(name: "isrC_main", scope: !160, file: !160, line: 178, type: !3466, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !3632)
!3632 = !{!3633, !3634}
!3633 = !DILocalVariable(name: "status", scope: !3631, file: !160, line: 180, type: !3468)
!3634 = !DILocalVariable(name: "irq_number", scope: !3631, file: !160, line: 181, type: !171)
!3635 = !DILocation(line: 0, scope: !3631)
!3636 = !DILocation(line: 188, column: 34, scope: !3631)
!3637 = !DILocation(line: 189, column: 24, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3631, file: !160, line: 189, column: 9)
!3639 = !DILocation(line: 192, column: 48, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3638, file: !160, line: 192, column: 16)
!3641 = !DILocation(line: 192, column: 62, scope: !3640)
!3642 = !DILocation(line: 192, column: 16, scope: !3638)
!3643 = !DILocation(line: 194, column: 9, scope: !3644)
!3644 = distinct !DILexicalBlock(scope: !3640, file: !160, line: 192, column: 71)
!3645 = !DILocation(line: 195, column: 9, scope: !3644)
!3646 = !DILocation(line: 197, column: 55, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3640, file: !160, line: 196, column: 12)
!3648 = !DILocation(line: 197, column: 41, scope: !3647)
!3649 = !DILocation(line: 197, column: 53, scope: !3647)
!3650 = !DILocation(line: 198, column: 41, scope: !3647)
!3651 = !DILocation(line: 198, column: 9, scope: !3647)
!3652 = !DILocation(line: 202, column: 5, scope: !3631)
!3653 = !DILocation(line: 203, column: 1, scope: !3631)
!3654 = distinct !DISubprogram(name: "get_current_irq", scope: !160, file: !160, line: 166, type: !2029, scopeLine: 167, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !3655)
!3655 = !{!3656}
!3656 = !DILocalVariable(name: "irq_num", scope: !3654, file: !160, line: 168, type: !92)
!3657 = !DILocation(line: 168, column: 31, scope: !3654)
!3658 = !DILocation(line: 168, column: 36, scope: !3654)
!3659 = !DILocation(line: 0, scope: !3654)
!3660 = !DILocation(line: 169, column: 21, scope: !3654)
!3661 = !DILocation(line: 169, column: 5, scope: !3654)
!3662 = distinct !DISubprogram(name: "get_pending_irq", scope: !160, file: !160, line: 55, type: !2029, scopeLine: 56, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !1135)
!3663 = !DILocation(line: 57, column: 19, scope: !3662)
!3664 = !DILocation(line: 57, column: 51, scope: !3662)
!3665 = !DILocation(line: 57, column: 5, scope: !3662)
!3666 = distinct !DISubprogram(name: "hal_nvic_register_isr_handler", scope: !160, file: !160, line: 205, type: !3667, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !3670)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!3468, !171, !3669}
!3669 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_isr_t", file: !163, line: 175, baseType: !253)
!3670 = !{!3671, !3672, !3673}
!3671 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3666, file: !160, line: 205, type: !171)
!3672 = !DILocalVariable(name: "callback", arg: 2, scope: !3666, file: !160, line: 205, type: !3669)
!3673 = !DILocalVariable(name: "mask", scope: !3666, file: !160, line: 207, type: !92)
!3674 = !DILocation(line: 0, scope: !3666)
!3675 = !DILocation(line: 209, column: 24, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3666, file: !160, line: 209, column: 9)
!3677 = !DILocation(line: 213, column: 12, scope: !3666)
!3678 = !DILocation(line: 214, column: 5, scope: !3666)
!3679 = !DILocation(line: 215, column: 37, scope: !3666)
!3680 = !DILocation(line: 215, column: 51, scope: !3666)
!3681 = !DILocation(line: 216, column: 37, scope: !3666)
!3682 = !DILocation(line: 216, column: 49, scope: !3666)
!3683 = !DILocation(line: 217, column: 5, scope: !3666)
!3684 = !DILocation(line: 219, column: 5, scope: !3666)
!3685 = !DILocation(line: 220, column: 1, scope: !3666)
!3686 = distinct !DISubprogram(name: "hal_nvic_save_and_set_interrupt_mask", scope: !160, file: !160, line: 222, type: !3687, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !3689)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!3468, !2760}
!3689 = !{!3690}
!3690 = !DILocalVariable(name: "mask", arg: 1, scope: !3686, file: !160, line: 222, type: !2760)
!3691 = !DILocation(line: 0, scope: !3686)
!3692 = !DILocation(line: 224, column: 13, scope: !3686)
!3693 = !DILocation(line: 224, column: 11, scope: !3686)
!3694 = !DILocation(line: 225, column: 5, scope: !3686)
!3695 = distinct !DISubprogram(name: "hal_nvic_restore_interrupt_mask", scope: !160, file: !160, line: 228, type: !3696, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !3698)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!3468, !92}
!3698 = !{!3699}
!3699 = !DILocalVariable(name: "mask", arg: 1, scope: !3695, file: !160, line: 228, type: !92)
!3700 = !DILocation(line: 0, scope: !3695)
!3701 = !DILocation(line: 230, column: 5, scope: !3695)
!3702 = !DILocation(line: 231, column: 5, scope: !3695)
!3703 = distinct !DISubprogram(name: "hal_pinmux_set_function", scope: !840, file: !840, line: 50, type: !3704, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !3708)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!3706, !3707, !150}
!3706 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_pinmux_status_t", file: !843, line: 238, baseType: !842)
!3707 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_pin_t", file: !273, line: 281, baseType: !849)
!3708 = !{!3709, !3710, !3711}
!3709 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3703, file: !840, line: 50, type: !3707)
!3710 = !DILocalVariable(name: "function_index", arg: 2, scope: !3703, file: !840, line: 50, type: !150)
!3711 = !DILocalVariable(name: "ret_value", scope: !3703, file: !840, line: 52, type: !172)
!3712 = !DILocation(line: 0, scope: !3703)
!3713 = !DILocation(line: 53, column: 18, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3703, file: !840, line: 53, column: 9)
!3715 = !DILocation(line: 53, column: 9, scope: !3703)
!3716 = !DILocation(line: 57, column: 24, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3703, file: !840, line: 57, column: 9)
!3718 = !DILocation(line: 57, column: 9, scope: !3703)
!3719 = !DILocation(line: 57, column: 9, scope: !3717)
!3720 = !DILocation(line: 60, column: 17, scope: !3703)
!3721 = !DILocation(line: 61, column: 12, scope: !3703)
!3722 = !DILocation(line: 61, column: 5, scope: !3703)
!3723 = !DILocation(line: 62, column: 1, scope: !3703)
!3724 = distinct !DISubprogram(name: "hal_gpio_init", scope: !840, file: !840, line: 64, type: !3725, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !3728)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{!3727, !3707}
!3727 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_status_t", file: !843, line: 229, baseType: !880)
!3728 = !{!3729}
!3729 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3724, file: !840, line: 64, type: !3707)
!3730 = !DILocation(line: 0, scope: !3724)
!3731 = !DILocation(line: 66, column: 5, scope: !3724)
!3732 = distinct !DISubprogram(name: "hal_gpio_deinit", scope: !840, file: !840, line: 69, type: !3725, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !3733)
!3733 = !{!3734}
!3734 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3732, file: !840, line: 69, type: !3707)
!3735 = !DILocation(line: 0, scope: !3732)
!3736 = !DILocation(line: 71, column: 5, scope: !3732)
!3737 = distinct !DISubprogram(name: "hal_gpio_get_input", scope: !840, file: !840, line: 74, type: !3738, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !3741)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!3727, !3707, !3740}
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 32)
!3741 = !{!3742, !3743, !3744}
!3742 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3737, file: !840, line: 74, type: !3707)
!3743 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3737, file: !840, line: 74, type: !3740)
!3744 = !DILocalVariable(name: "status", scope: !3737, file: !840, line: 76, type: !3745)
!3745 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_status", file: !901, line: 67, baseType: !3746)
!3746 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !901, line: 62, size: 64, elements: !3747)
!3747 = !{!3748, !3749, !3750, !3751}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PIN", scope: !3746, file: !901, line: 63, baseType: !92, size: 32)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OUTEN", scope: !3746, file: !901, line: 64, baseType: !150, size: 8, offset: 32)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "GPI_DIN", scope: !3746, file: !901, line: 65, baseType: !150, size: 8, offset: 40)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "GPO_DOUT", scope: !3746, file: !901, line: 66, baseType: !150, size: 8, offset: 48)
!3752 = !DILocation(line: 0, scope: !3737)
!3753 = !DILocation(line: 77, column: 14, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3737, file: !840, line: 77, column: 9)
!3755 = !DILocation(line: 77, column: 9, scope: !3737)
!3756 = !DILocation(line: 81, column: 18, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3737, file: !840, line: 81, column: 9)
!3758 = !DILocation(line: 81, column: 9, scope: !3737)
!3759 = !DILocation(line: 85, column: 14, scope: !3737)
!3760 = !DILocation(line: 86, column: 18, scope: !3737)
!3761 = !DILocation(line: 86, column: 16, scope: !3737)
!3762 = !DILocation(line: 87, column: 5, scope: !3737)
!3763 = !DILocation(line: 88, column: 1, scope: !3737)
!3764 = distinct !DISubprogram(name: "hal_gpio_set_output", scope: !840, file: !840, line: 90, type: !3765, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !3767)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!3727, !3707, !907}
!3767 = !{!3768, !3769, !3770}
!3768 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3764, file: !840, line: 90, type: !3707)
!3769 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3764, file: !840, line: 90, type: !907)
!3770 = !DILocalVariable(name: "ret_value", scope: !3764, file: !840, line: 92, type: !172)
!3771 = !DILocation(line: 0, scope: !3764)
!3772 = !DILocation(line: 93, column: 18, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3764, file: !840, line: 93, column: 9)
!3774 = !DILocation(line: 93, column: 9, scope: !3764)
!3775 = !DILocation(line: 97, column: 60, scope: !3764)
!3776 = !DILocation(line: 97, column: 17, scope: !3764)
!3777 = !DILocation(line: 98, column: 12, scope: !3764)
!3778 = !DILocation(line: 98, column: 5, scope: !3764)
!3779 = !DILocation(line: 99, column: 1, scope: !3764)
!3780 = distinct !DISubprogram(name: "hal_gpio_get_output", scope: !840, file: !840, line: 101, type: !3738, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !3781)
!3781 = !{!3782, !3783, !3784}
!3782 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3780, file: !840, line: 101, type: !3707)
!3783 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3780, file: !840, line: 101, type: !3740)
!3784 = !DILocalVariable(name: "status", scope: !3780, file: !840, line: 103, type: !3745)
!3785 = !DILocation(line: 0, scope: !3780)
!3786 = !DILocation(line: 104, column: 18, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3780, file: !840, line: 104, column: 9)
!3788 = !DILocation(line: 104, column: 9, scope: !3780)
!3789 = !DILocation(line: 108, column: 14, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3780, file: !840, line: 108, column: 9)
!3791 = !DILocation(line: 108, column: 9, scope: !3780)
!3792 = !DILocation(line: 112, column: 14, scope: !3780)
!3793 = !DILocation(line: 113, column: 18, scope: !3780)
!3794 = !DILocation(line: 113, column: 16, scope: !3780)
!3795 = !DILocation(line: 114, column: 5, scope: !3780)
!3796 = !DILocation(line: 115, column: 1, scope: !3780)
!3797 = distinct !DISubprogram(name: "hal_gpio_set_direction", scope: !840, file: !840, line: 117, type: !3798, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !3801)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!3727, !3707, !3800}
!3800 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_direction_t", file: !843, line: 213, baseType: !890)
!3801 = !{!3802, !3803, !3804}
!3802 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3797, file: !840, line: 117, type: !3707)
!3803 = !DILocalVariable(name: "direction", arg: 2, scope: !3797, file: !840, line: 117, type: !3800)
!3804 = !DILocalVariable(name: "ret_value", scope: !3797, file: !840, line: 119, type: !172)
!3805 = !DILocation(line: 0, scope: !3797)
!3806 = !DILocation(line: 120, column: 18, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3797, file: !840, line: 120, column: 9)
!3808 = !DILocation(line: 120, column: 9, scope: !3797)
!3809 = !DILocation(line: 123, column: 17, scope: !3797)
!3810 = !DILocation(line: 125, column: 12, scope: !3797)
!3811 = !DILocation(line: 125, column: 5, scope: !3797)
!3812 = !DILocation(line: 126, column: 1, scope: !3797)
!3813 = distinct !DISubprogram(name: "hal_gpio_get_direction", scope: !840, file: !840, line: 128, type: !3814, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !3817)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!3727, !3707, !3816}
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 32)
!3817 = !{!3818, !3819, !3820}
!3818 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3813, file: !840, line: 128, type: !3707)
!3819 = !DILocalVariable(name: "direction", arg: 2, scope: !3813, file: !840, line: 128, type: !3816)
!3820 = !DILocalVariable(name: "status", scope: !3813, file: !840, line: 131, type: !3745)
!3821 = !DILocation(line: 0, scope: !3813)
!3822 = !DILocation(line: 132, column: 18, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3813, file: !840, line: 132, column: 9)
!3824 = !DILocation(line: 132, column: 9, scope: !3813)
!3825 = !DILocation(line: 136, column: 14, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3813, file: !840, line: 136, column: 9)
!3827 = !DILocation(line: 136, column: 9, scope: !3813)
!3828 = !DILocation(line: 140, column: 14, scope: !3813)
!3829 = !DILocation(line: 141, column: 18, scope: !3813)
!3830 = !DILocation(line: 141, column: 16, scope: !3813)
!3831 = !DILocation(line: 142, column: 5, scope: !3813)
!3832 = !DILocation(line: 143, column: 1, scope: !3813)
!3833 = distinct !DISubprogram(name: "hal_gpio_toggle_pin", scope: !840, file: !840, line: 146, type: !3725, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !3834)
!3834 = !{!3835, !3836}
!3835 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3833, file: !840, line: 146, type: !3707)
!3836 = !DILocalVariable(name: "status", scope: !3833, file: !840, line: 148, type: !3745)
!3837 = !DILocation(line: 0, scope: !3833)
!3838 = !DILocation(line: 149, column: 18, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3833, file: !840, line: 149, column: 9)
!3840 = !DILocation(line: 149, column: 9, scope: !3833)
!3841 = !DILocation(line: 153, column: 14, scope: !3833)
!3842 = !DILocation(line: 154, column: 76, scope: !3833)
!3843 = !DILocation(line: 154, column: 12, scope: !3833)
!3844 = !DILocation(line: 154, column: 5, scope: !3833)
!3845 = !DILocation(line: 155, column: 1, scope: !3833)
!3846 = distinct !DISubprogram(name: "hal_gpio_pull_up", scope: !840, file: !840, line: 157, type: !3725, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !3847)
!3847 = !{!3848, !3849}
!3848 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3846, file: !840, line: 157, type: !3707)
!3849 = !DILocalVariable(name: "ret_value", scope: !3846, file: !840, line: 159, type: !172)
!3850 = !DILocation(line: 0, scope: !3846)
!3851 = !DILocation(line: 160, column: 18, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3846, file: !840, line: 160, column: 9)
!3853 = !DILocation(line: 160, column: 9, scope: !3846)
!3854 = !DILocation(line: 164, column: 17, scope: !3846)
!3855 = !DILocation(line: 165, column: 19, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3846, file: !840, line: 165, column: 9)
!3857 = !DILocation(line: 165, column: 9, scope: !3846)
!3858 = !DILocation(line: 168, column: 17, scope: !3846)
!3859 = !DILocation(line: 169, column: 12, scope: !3846)
!3860 = !DILocation(line: 169, column: 5, scope: !3846)
!3861 = !DILocation(line: 170, column: 1, scope: !3846)
!3862 = distinct !DISubprogram(name: "hal_gpio_pull_down", scope: !840, file: !840, line: 172, type: !3725, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !3863)
!3863 = !{!3864, !3865}
!3864 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3862, file: !840, line: 172, type: !3707)
!3865 = !DILocalVariable(name: "ret_value", scope: !3862, file: !840, line: 174, type: !172)
!3866 = !DILocation(line: 0, scope: !3862)
!3867 = !DILocation(line: 175, column: 18, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3862, file: !840, line: 175, column: 9)
!3869 = !DILocation(line: 175, column: 9, scope: !3862)
!3870 = !DILocation(line: 179, column: 17, scope: !3862)
!3871 = !DILocation(line: 180, column: 19, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3862, file: !840, line: 180, column: 9)
!3873 = !DILocation(line: 180, column: 9, scope: !3862)
!3874 = !DILocation(line: 183, column: 17, scope: !3862)
!3875 = !DILocation(line: 184, column: 12, scope: !3862)
!3876 = !DILocation(line: 184, column: 5, scope: !3862)
!3877 = !DILocation(line: 185, column: 1, scope: !3862)
!3878 = distinct !DISubprogram(name: "hal_gpio_disable_pull", scope: !840, file: !840, line: 187, type: !3725, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !3879)
!3879 = !{!3880, !3881}
!3880 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3878, file: !840, line: 187, type: !3707)
!3881 = !DILocalVariable(name: "ret_value", scope: !3878, file: !840, line: 189, type: !172)
!3882 = !DILocation(line: 0, scope: !3878)
!3883 = !DILocation(line: 191, column: 18, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3878, file: !840, line: 191, column: 9)
!3885 = !DILocation(line: 191, column: 9, scope: !3878)
!3886 = !DILocation(line: 195, column: 17, scope: !3878)
!3887 = !DILocation(line: 196, column: 12, scope: !3878)
!3888 = !DILocation(line: 196, column: 5, scope: !3878)
!3889 = !DILocation(line: 197, column: 1, scope: !3878)
!3890 = distinct !DISubprogram(name: "hal_gpio_set_driving_current", scope: !840, file: !840, line: 200, type: !3891, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !3893)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!3727, !3707, !908}
!3893 = !{!3894, !3895, !3896}
!3894 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3890, file: !840, line: 200, type: !3707)
!3895 = !DILocalVariable(name: "driving", arg: 2, scope: !3890, file: !840, line: 200, type: !908)
!3896 = !DILocalVariable(name: "ret_value", scope: !3890, file: !840, line: 202, type: !172)
!3897 = !DILocation(line: 0, scope: !3890)
!3898 = !DILocation(line: 204, column: 18, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3890, file: !840, line: 204, column: 9)
!3900 = !DILocation(line: 204, column: 9, scope: !3890)
!3901 = !DILocation(line: 208, column: 64, scope: !3890)
!3902 = !DILocation(line: 208, column: 17, scope: !3890)
!3903 = !DILocation(line: 210, column: 12, scope: !3890)
!3904 = !DILocation(line: 210, column: 5, scope: !3890)
!3905 = !DILocation(line: 211, column: 1, scope: !3890)
!3906 = distinct !DISubprogram(name: "hal_gpio_get_driving_current", scope: !840, file: !840, line: 214, type: !3907, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !3910)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!3727, !3707, !3909}
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 32)
!3910 = !{!3911, !3912, !3913, !3914}
!3911 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3906, file: !840, line: 214, type: !3707)
!3912 = !DILocalVariable(name: "driving", arg: 2, scope: !3906, file: !840, line: 214, type: !3909)
!3913 = !DILocalVariable(name: "ret_value", scope: !3906, file: !840, line: 216, type: !172)
!3914 = !DILocalVariable(name: "value", scope: !3906, file: !840, line: 217, type: !150)
!3915 = !DILocation(line: 0, scope: !3906)
!3916 = !DILocation(line: 217, column: 5, scope: !3906)
!3917 = !DILocation(line: 219, column: 18, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3906, file: !840, line: 219, column: 9)
!3919 = !DILocation(line: 219, column: 9, scope: !3906)
!3920 = !DILocation(line: 223, column: 17, scope: !3906)
!3921 = !DILocation(line: 225, column: 44, scope: !3906)
!3922 = !DILocation(line: 225, column: 16, scope: !3906)
!3923 = !DILocation(line: 225, column: 14, scope: !3906)
!3924 = !DILocation(line: 227, column: 12, scope: !3906)
!3925 = !DILocation(line: 227, column: 5, scope: !3906)
!3926 = !DILocation(line: 228, column: 1, scope: !3906)
!3927 = distinct !DISubprogram(name: "hal_sha1_init", scope: !911, file: !911, line: 44, type: !3928, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !3940)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{!3930, !3931}
!3930 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_sha_status_t", file: !914, line: 165, baseType: !913)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 32)
!3932 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_sha_context_t", file: !914, line: 183, baseType: !3933)
!3933 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !914, line: 177, size: 1632, elements: !3934)
!3934 = !{!3935, !3936, !3937, !3938, !3939}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !3933, file: !914, line: 178, baseType: !932, size: 512)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "message_length", scope: !3933, file: !914, line: 179, baseType: !92, size: 32, offset: 512)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3933, file: !914, line: 180, baseType: !935, size: 1024, offset: 544)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3933, file: !914, line: 181, baseType: !363, size: 32, offset: 1568)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "block_length", scope: !3933, file: !914, line: 182, baseType: !92, size: 32, offset: 1600)
!3940 = !{!3941, !3942}
!3941 = !DILocalVariable(name: "context", arg: 1, scope: !3927, file: !911, line: 44, type: !3931)
!3942 = !DILocalVariable(name: "status", scope: !3927, file: !911, line: 46, type: !3930)
!3943 = !DILocation(line: 0, scope: !3927)
!3944 = !DILocation(line: 48, column: 5, scope: !3927)
!3945 = !DILocation(line: 49, column: 29, scope: !3927)
!3946 = !DILocation(line: 49, column: 14, scope: !3927)
!3947 = !DILocation(line: 50, column: 5, scope: !3927)
!3948 = !DILocation(line: 52, column: 5, scope: !3927)
!3949 = distinct !DISubprogram(name: "hal_sha1_append", scope: !911, file: !911, line: 55, type: !3950, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !3952)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!3930, !3931, !363, !92}
!3952 = !{!3953, !3954, !3955}
!3953 = !DILocalVariable(name: "context", arg: 1, scope: !3949, file: !911, line: 55, type: !3931)
!3954 = !DILocalVariable(name: "message", arg: 2, scope: !3949, file: !911, line: 55, type: !363)
!3955 = !DILocalVariable(name: "length", arg: 3, scope: !3949, file: !911, line: 55, type: !92)
!3956 = !DILocation(line: 0, scope: !3949)
!3957 = !DILocation(line: 57, column: 14, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3949, file: !911, line: 57, column: 9)
!3959 = !DILocation(line: 57, column: 9, scope: !3949)
!3960 = !DILocation(line: 58, column: 9, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3958, file: !911, line: 57, column: 26)
!3962 = !DILocation(line: 59, column: 9, scope: !3961)
!3963 = !DILocation(line: 61, column: 14, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3949, file: !911, line: 61, column: 9)
!3965 = !DILocation(line: 61, column: 9, scope: !3949)
!3966 = !DILocation(line: 62, column: 9, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3964, file: !911, line: 61, column: 26)
!3968 = !DILocation(line: 63, column: 9, scope: !3967)
!3969 = !DILocation(line: 66, column: 5, scope: !3949)
!3970 = !DILocation(line: 69, column: 20, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3972, file: !911, line: 69, column: 13)
!3972 = distinct !DILexicalBlock(scope: !3949, file: !911, line: 68, column: 15)
!3973 = !DILocation(line: 69, column: 13, scope: !3972)
!3974 = !DILocation(line: 70, column: 13, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3971, file: !911, line: 69, column: 42)
!3976 = !DILocation(line: 71, column: 21, scope: !3975)
!3977 = !DILocation(line: 72, column: 20, scope: !3975)
!3978 = distinct !{!3978, !3979, !3980}
!3979 = !DILocation(line: 68, column: 5, scope: !3949)
!3980 = !DILocation(line: 77, column: 5, scope: !3949)
!3981 = !DILocation(line: 74, column: 30, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3971, file: !911, line: 73, column: 16)
!3983 = !DILocation(line: 74, column: 13, scope: !3982)
!3984 = !DILocation(line: 79, column: 5, scope: !3949)
!3985 = !DILocation(line: 80, column: 5, scope: !3949)
!3986 = !DILocation(line: 81, column: 1, scope: !3949)
!3987 = distinct !DISubprogram(name: "hal_sha1_end", scope: !911, file: !911, line: 83, type: !3988, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !3990)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{!3930, !3931, !363}
!3990 = !{!3991, !3992, !3993}
!3991 = !DILocalVariable(name: "context", arg: 1, scope: !3987, file: !911, line: 83, type: !3931)
!3992 = !DILocalVariable(name: "digest_message", arg: 2, scope: !3987, file: !911, line: 83, type: !363)
!3993 = !DILocalVariable(name: "status", scope: !3987, file: !911, line: 85, type: !3930)
!3994 = !DILocation(line: 0, scope: !3987)
!3995 = !DILocation(line: 87, column: 5, scope: !3987)
!3996 = !DILocation(line: 88, column: 28, scope: !3987)
!3997 = !DILocation(line: 88, column: 14, scope: !3987)
!3998 = !DILocation(line: 89, column: 5, scope: !3987)
!3999 = !DILocation(line: 90, column: 5, scope: !3987)
!4000 = distinct !DISubprogram(name: "hal_sha224_init", scope: !911, file: !911, line: 93, type: !3928, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !4001)
!4001 = !{!4002, !4003}
!4002 = !DILocalVariable(name: "context", arg: 1, scope: !4000, file: !911, line: 93, type: !3931)
!4003 = !DILocalVariable(name: "status", scope: !4000, file: !911, line: 95, type: !3930)
!4004 = !DILocation(line: 0, scope: !4000)
!4005 = !DILocation(line: 97, column: 5, scope: !4000)
!4006 = !DILocation(line: 98, column: 29, scope: !4000)
!4007 = !DILocation(line: 98, column: 14, scope: !4000)
!4008 = !DILocation(line: 99, column: 5, scope: !4000)
!4009 = !DILocation(line: 101, column: 5, scope: !4000)
!4010 = distinct !DISubprogram(name: "hal_sha224_append", scope: !911, file: !911, line: 105, type: !3950, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !4011)
!4011 = !{!4012, !4013, !4014}
!4012 = !DILocalVariable(name: "context", arg: 1, scope: !4010, file: !911, line: 105, type: !3931)
!4013 = !DILocalVariable(name: "message", arg: 2, scope: !4010, file: !911, line: 105, type: !363)
!4014 = !DILocalVariable(name: "length", arg: 3, scope: !4010, file: !911, line: 105, type: !92)
!4015 = !DILocation(line: 0, scope: !4010)
!4016 = !DILocation(line: 107, column: 14, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !4010, file: !911, line: 107, column: 9)
!4018 = !DILocation(line: 107, column: 9, scope: !4010)
!4019 = !DILocation(line: 108, column: 9, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !4017, file: !911, line: 107, column: 26)
!4021 = !DILocation(line: 109, column: 9, scope: !4020)
!4022 = !DILocation(line: 111, column: 14, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !4010, file: !911, line: 111, column: 9)
!4024 = !DILocation(line: 111, column: 9, scope: !4010)
!4025 = !DILocation(line: 112, column: 9, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !4023, file: !911, line: 111, column: 26)
!4027 = !DILocation(line: 113, column: 9, scope: !4026)
!4028 = !DILocation(line: 116, column: 5, scope: !4010)
!4029 = !DILocation(line: 119, column: 20, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !4031, file: !911, line: 119, column: 13)
!4031 = distinct !DILexicalBlock(scope: !4010, file: !911, line: 118, column: 15)
!4032 = !DILocation(line: 119, column: 13, scope: !4031)
!4033 = !DILocation(line: 120, column: 13, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4030, file: !911, line: 119, column: 42)
!4035 = !DILocation(line: 121, column: 21, scope: !4034)
!4036 = !DILocation(line: 122, column: 20, scope: !4034)
!4037 = distinct !{!4037, !4038, !4039}
!4038 = !DILocation(line: 118, column: 5, scope: !4010)
!4039 = !DILocation(line: 127, column: 5, scope: !4010)
!4040 = !DILocation(line: 124, column: 30, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !4030, file: !911, line: 123, column: 16)
!4042 = !DILocation(line: 124, column: 13, scope: !4041)
!4043 = !DILocation(line: 129, column: 5, scope: !4010)
!4044 = !DILocation(line: 130, column: 5, scope: !4010)
!4045 = !DILocation(line: 131, column: 1, scope: !4010)
!4046 = distinct !DISubprogram(name: "hal_sha224_end", scope: !911, file: !911, line: 133, type: !3988, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !4047)
!4047 = !{!4048, !4049, !4050}
!4048 = !DILocalVariable(name: "context", arg: 1, scope: !4046, file: !911, line: 133, type: !3931)
!4049 = !DILocalVariable(name: "digest_message", arg: 2, scope: !4046, file: !911, line: 133, type: !363)
!4050 = !DILocalVariable(name: "status", scope: !4046, file: !911, line: 135, type: !3930)
!4051 = !DILocation(line: 0, scope: !4046)
!4052 = !DILocation(line: 136, column: 5, scope: !4046)
!4053 = !DILocation(line: 138, column: 28, scope: !4046)
!4054 = !DILocation(line: 138, column: 14, scope: !4046)
!4055 = !DILocation(line: 140, column: 5, scope: !4046)
!4056 = !DILocation(line: 141, column: 5, scope: !4046)
!4057 = distinct !DISubprogram(name: "hal_sha256_init", scope: !911, file: !911, line: 144, type: !3928, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !4058)
!4058 = !{!4059, !4060}
!4059 = !DILocalVariable(name: "context", arg: 1, scope: !4057, file: !911, line: 144, type: !3931)
!4060 = !DILocalVariable(name: "status", scope: !4057, file: !911, line: 146, type: !3930)
!4061 = !DILocation(line: 0, scope: !4057)
!4062 = !DILocation(line: 148, column: 5, scope: !4057)
!4063 = !DILocation(line: 149, column: 29, scope: !4057)
!4064 = !DILocation(line: 149, column: 14, scope: !4057)
!4065 = !DILocation(line: 150, column: 5, scope: !4057)
!4066 = !DILocation(line: 152, column: 5, scope: !4057)
!4067 = distinct !DISubprogram(name: "hal_sha256_append", scope: !911, file: !911, line: 155, type: !3950, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !4068)
!4068 = !{!4069, !4070, !4071}
!4069 = !DILocalVariable(name: "context", arg: 1, scope: !4067, file: !911, line: 155, type: !3931)
!4070 = !DILocalVariable(name: "message", arg: 2, scope: !4067, file: !911, line: 155, type: !363)
!4071 = !DILocalVariable(name: "length", arg: 3, scope: !4067, file: !911, line: 155, type: !92)
!4072 = !DILocation(line: 0, scope: !4067)
!4073 = !DILocation(line: 157, column: 14, scope: !4074)
!4074 = distinct !DILexicalBlock(scope: !4067, file: !911, line: 157, column: 9)
!4075 = !DILocation(line: 157, column: 9, scope: !4067)
!4076 = !DILocation(line: 158, column: 9, scope: !4077)
!4077 = distinct !DILexicalBlock(scope: !4074, file: !911, line: 157, column: 26)
!4078 = !DILocation(line: 159, column: 9, scope: !4077)
!4079 = !DILocation(line: 161, column: 14, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4067, file: !911, line: 161, column: 9)
!4081 = !DILocation(line: 161, column: 9, scope: !4067)
!4082 = !DILocation(line: 162, column: 9, scope: !4083)
!4083 = distinct !DILexicalBlock(scope: !4080, file: !911, line: 161, column: 26)
!4084 = !DILocation(line: 163, column: 9, scope: !4083)
!4085 = !DILocation(line: 166, column: 5, scope: !4067)
!4086 = !DILocation(line: 169, column: 20, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4088, file: !911, line: 169, column: 13)
!4088 = distinct !DILexicalBlock(scope: !4067, file: !911, line: 168, column: 15)
!4089 = !DILocation(line: 169, column: 13, scope: !4088)
!4090 = !DILocation(line: 170, column: 13, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4087, file: !911, line: 169, column: 42)
!4092 = !DILocation(line: 171, column: 21, scope: !4091)
!4093 = !DILocation(line: 172, column: 20, scope: !4091)
!4094 = distinct !{!4094, !4095, !4096}
!4095 = !DILocation(line: 168, column: 5, scope: !4067)
!4096 = !DILocation(line: 177, column: 5, scope: !4067)
!4097 = !DILocation(line: 174, column: 30, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !4087, file: !911, line: 173, column: 16)
!4099 = !DILocation(line: 174, column: 13, scope: !4098)
!4100 = !DILocation(line: 179, column: 5, scope: !4067)
!4101 = !DILocation(line: 180, column: 5, scope: !4067)
!4102 = !DILocation(line: 181, column: 1, scope: !4067)
!4103 = distinct !DISubprogram(name: "hal_sha256_end", scope: !911, file: !911, line: 183, type: !3988, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !4104)
!4104 = !{!4105, !4106, !4107}
!4105 = !DILocalVariable(name: "context", arg: 1, scope: !4103, file: !911, line: 183, type: !3931)
!4106 = !DILocalVariable(name: "digest_message", arg: 2, scope: !4103, file: !911, line: 183, type: !363)
!4107 = !DILocalVariable(name: "status", scope: !4103, file: !911, line: 185, type: !3930)
!4108 = !DILocation(line: 0, scope: !4103)
!4109 = !DILocation(line: 187, column: 5, scope: !4103)
!4110 = !DILocation(line: 188, column: 28, scope: !4103)
!4111 = !DILocation(line: 188, column: 14, scope: !4103)
!4112 = !DILocation(line: 189, column: 5, scope: !4103)
!4113 = !DILocation(line: 191, column: 5, scope: !4103)
!4114 = distinct !DISubprogram(name: "hal_sha384_init", scope: !911, file: !911, line: 194, type: !3928, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !4115)
!4115 = !{!4116, !4117}
!4116 = !DILocalVariable(name: "context", arg: 1, scope: !4114, file: !911, line: 194, type: !3931)
!4117 = !DILocalVariable(name: "status", scope: !4114, file: !911, line: 196, type: !3930)
!4118 = !DILocation(line: 0, scope: !4114)
!4119 = !DILocation(line: 198, column: 5, scope: !4114)
!4120 = !DILocation(line: 199, column: 29, scope: !4114)
!4121 = !DILocation(line: 199, column: 14, scope: !4114)
!4122 = !DILocation(line: 200, column: 5, scope: !4114)
!4123 = !DILocation(line: 202, column: 5, scope: !4114)
!4124 = distinct !DISubprogram(name: "hal_sha384_append", scope: !911, file: !911, line: 205, type: !3950, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !4125)
!4125 = !{!4126, !4127, !4128}
!4126 = !DILocalVariable(name: "context", arg: 1, scope: !4124, file: !911, line: 205, type: !3931)
!4127 = !DILocalVariable(name: "message", arg: 2, scope: !4124, file: !911, line: 205, type: !363)
!4128 = !DILocalVariable(name: "length", arg: 3, scope: !4124, file: !911, line: 205, type: !92)
!4129 = !DILocation(line: 0, scope: !4124)
!4130 = !DILocation(line: 207, column: 14, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4124, file: !911, line: 207, column: 9)
!4132 = !DILocation(line: 207, column: 9, scope: !4124)
!4133 = !DILocation(line: 208, column: 9, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !4131, file: !911, line: 207, column: 26)
!4135 = !DILocation(line: 209, column: 9, scope: !4134)
!4136 = !DILocation(line: 211, column: 14, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4124, file: !911, line: 211, column: 9)
!4138 = !DILocation(line: 211, column: 9, scope: !4124)
!4139 = !DILocation(line: 212, column: 9, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4137, file: !911, line: 211, column: 26)
!4141 = !DILocation(line: 213, column: 9, scope: !4140)
!4142 = !DILocation(line: 216, column: 5, scope: !4124)
!4143 = !DILocation(line: 219, column: 20, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !4145, file: !911, line: 219, column: 13)
!4145 = distinct !DILexicalBlock(scope: !4124, file: !911, line: 218, column: 15)
!4146 = !DILocation(line: 219, column: 13, scope: !4145)
!4147 = !DILocation(line: 220, column: 13, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4144, file: !911, line: 219, column: 42)
!4149 = !DILocation(line: 221, column: 21, scope: !4148)
!4150 = !DILocation(line: 222, column: 20, scope: !4148)
!4151 = distinct !{!4151, !4152, !4153}
!4152 = !DILocation(line: 218, column: 5, scope: !4124)
!4153 = !DILocation(line: 227, column: 5, scope: !4124)
!4154 = !DILocation(line: 224, column: 30, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4144, file: !911, line: 223, column: 16)
!4156 = !DILocation(line: 224, column: 13, scope: !4155)
!4157 = !DILocation(line: 229, column: 5, scope: !4124)
!4158 = !DILocation(line: 230, column: 5, scope: !4124)
!4159 = !DILocation(line: 231, column: 1, scope: !4124)
!4160 = distinct !DISubprogram(name: "hal_sha384_end", scope: !911, file: !911, line: 233, type: !3988, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !4161)
!4161 = !{!4162, !4163, !4164}
!4162 = !DILocalVariable(name: "context", arg: 1, scope: !4160, file: !911, line: 233, type: !3931)
!4163 = !DILocalVariable(name: "digest_message", arg: 2, scope: !4160, file: !911, line: 233, type: !363)
!4164 = !DILocalVariable(name: "status", scope: !4160, file: !911, line: 235, type: !3930)
!4165 = !DILocation(line: 0, scope: !4160)
!4166 = !DILocation(line: 237, column: 5, scope: !4160)
!4167 = !DILocation(line: 238, column: 28, scope: !4160)
!4168 = !DILocation(line: 238, column: 14, scope: !4160)
!4169 = !DILocation(line: 239, column: 5, scope: !4160)
!4170 = !DILocation(line: 241, column: 5, scope: !4160)
!4171 = distinct !DISubprogram(name: "hal_sha512_init", scope: !911, file: !911, line: 244, type: !3928, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !4172)
!4172 = !{!4173, !4174}
!4173 = !DILocalVariable(name: "context", arg: 1, scope: !4171, file: !911, line: 244, type: !3931)
!4174 = !DILocalVariable(name: "status", scope: !4171, file: !911, line: 246, type: !3930)
!4175 = !DILocation(line: 0, scope: !4171)
!4176 = !DILocation(line: 248, column: 5, scope: !4171)
!4177 = !DILocation(line: 249, column: 29, scope: !4171)
!4178 = !DILocation(line: 249, column: 14, scope: !4171)
!4179 = !DILocation(line: 250, column: 5, scope: !4171)
!4180 = !DILocation(line: 252, column: 5, scope: !4171)
!4181 = distinct !DISubprogram(name: "hal_sha512_append", scope: !911, file: !911, line: 255, type: !3950, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !4182)
!4182 = !{!4183, !4184, !4185}
!4183 = !DILocalVariable(name: "context", arg: 1, scope: !4181, file: !911, line: 255, type: !3931)
!4184 = !DILocalVariable(name: "message", arg: 2, scope: !4181, file: !911, line: 255, type: !363)
!4185 = !DILocalVariable(name: "length", arg: 3, scope: !4181, file: !911, line: 255, type: !92)
!4186 = !DILocation(line: 0, scope: !4181)
!4187 = !DILocation(line: 258, column: 14, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !4181, file: !911, line: 258, column: 9)
!4189 = !DILocation(line: 258, column: 9, scope: !4181)
!4190 = !DILocation(line: 259, column: 9, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4188, file: !911, line: 258, column: 26)
!4192 = !DILocation(line: 260, column: 9, scope: !4191)
!4193 = !DILocation(line: 262, column: 14, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4181, file: !911, line: 262, column: 9)
!4195 = !DILocation(line: 262, column: 9, scope: !4181)
!4196 = !DILocation(line: 263, column: 9, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4194, file: !911, line: 262, column: 26)
!4198 = !DILocation(line: 264, column: 9, scope: !4197)
!4199 = !DILocation(line: 267, column: 5, scope: !4181)
!4200 = !DILocation(line: 270, column: 20, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4202, file: !911, line: 270, column: 13)
!4202 = distinct !DILexicalBlock(scope: !4181, file: !911, line: 269, column: 15)
!4203 = !DILocation(line: 270, column: 13, scope: !4202)
!4204 = !DILocation(line: 271, column: 13, scope: !4205)
!4205 = distinct !DILexicalBlock(scope: !4201, file: !911, line: 270, column: 42)
!4206 = !DILocation(line: 272, column: 21, scope: !4205)
!4207 = !DILocation(line: 273, column: 20, scope: !4205)
!4208 = distinct !{!4208, !4209, !4210}
!4209 = !DILocation(line: 269, column: 5, scope: !4181)
!4210 = !DILocation(line: 278, column: 5, scope: !4181)
!4211 = !DILocation(line: 275, column: 30, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4201, file: !911, line: 274, column: 16)
!4213 = !DILocation(line: 275, column: 13, scope: !4212)
!4214 = !DILocation(line: 280, column: 5, scope: !4181)
!4215 = !DILocation(line: 281, column: 5, scope: !4181)
!4216 = !DILocation(line: 282, column: 1, scope: !4181)
!4217 = distinct !DISubprogram(name: "hal_sha512_end", scope: !911, file: !911, line: 284, type: !3988, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !4218)
!4218 = !{!4219, !4220, !4221}
!4219 = !DILocalVariable(name: "context", arg: 1, scope: !4217, file: !911, line: 284, type: !3931)
!4220 = !DILocalVariable(name: "digest_message", arg: 2, scope: !4217, file: !911, line: 284, type: !363)
!4221 = !DILocalVariable(name: "status", scope: !4217, file: !911, line: 286, type: !3930)
!4222 = !DILocation(line: 0, scope: !4217)
!4223 = !DILocation(line: 288, column: 5, scope: !4217)
!4224 = !DILocation(line: 289, column: 28, scope: !4217)
!4225 = !DILocation(line: 289, column: 14, scope: !4217)
!4226 = !DILocation(line: 290, column: 5, scope: !4217)
!4227 = !DILocation(line: 292, column: 5, scope: !4217)
!4228 = distinct !DISubprogram(name: "hal_uart_init", scope: !262, file: !262, line: 234, type: !4229, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4233)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{!4231, !323, !4232}
!4231 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_status_t", file: !265, line: 351, baseType: !264)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 32)
!4233 = !{!4234, !4235}
!4234 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4228, file: !262, line: 234, type: !323)
!4235 = !DILocalVariable(name: "uart_config", arg: 2, scope: !4228, file: !262, line: 234, type: !4232)
!4236 = !DILocation(line: 0, scope: !4228)
!4237 = !DILocation(line: 236, column: 10, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4228, file: !262, line: 236, column: 9)
!4239 = !DILocation(line: 236, column: 9, scope: !4228)
!4240 = !DILocation(line: 239, column: 41, scope: !4241)
!4241 = distinct !DILexicalBlock(scope: !4228, file: !262, line: 239, column: 9)
!4242 = !DILocation(line: 239, column: 9, scope: !4228)
!4243 = !DILocation(line: 242, column: 5, scope: !4228)
!4244 = !DILocation(line: 243, column: 45, scope: !4228)
!4245 = !DILocation(line: 243, column: 12, scope: !4228)
!4246 = !DILocation(line: 244, column: 12, scope: !4228)
!4247 = !DILocation(line: 243, column: 5, scope: !4228)
!4248 = !DILocation(line: 245, column: 58, scope: !4228)
!4249 = !DILocation(line: 246, column: 30, scope: !4228)
!4250 = !{i32 0, i32 2}
!4251 = !DILocation(line: 246, column: 5, scope: !4228)
!4252 = !DILocation(line: 247, column: 5, scope: !4228)
!4253 = !DILocation(line: 249, column: 31, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4228, file: !262, line: 249, column: 9)
!4255 = !DILocation(line: 249, column: 28, scope: !4254)
!4256 = !DILocation(line: 261, column: 1, scope: !4228)
!4257 = distinct !DISubprogram(name: "hal_uart_is_config_valid", scope: !262, file: !262, line: 93, type: !4258, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4262)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{!156, !323, !4260}
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 32)
!4261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !334)
!4262 = !{!4263, !4264}
!4263 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4257, file: !262, line: 93, type: !323)
!4264 = !DILocalVariable(name: "uart_config", arg: 2, scope: !4257, file: !262, line: 93, type: !4260)
!4265 = !DILocation(line: 0, scope: !4257)
!4266 = !DILocation(line: 95, column: 10, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4257, file: !262, line: 95, column: 9)
!4268 = !DILocation(line: 95, column: 9, scope: !4257)
!4269 = !DILocation(line: 101, column: 23, scope: !4270)
!4270 = distinct !DILexicalBlock(scope: !4257, file: !262, line: 101, column: 9)
!4271 = !DILocation(line: 101, column: 32, scope: !4270)
!4272 = !DILocation(line: 101, column: 60, scope: !4270)
!4273 = !DILocation(line: 102, column: 27, scope: !4270)
!4274 = !DILocation(line: 102, column: 34, scope: !4270)
!4275 = !DILocation(line: 102, column: 58, scope: !4270)
!4276 = !DILocation(line: 103, column: 27, scope: !4270)
!4277 = !DILocation(line: 103, column: 36, scope: !4270)
!4278 = !DILocation(line: 103, column: 59, scope: !4270)
!4279 = !DILocation(line: 104, column: 27, scope: !4270)
!4280 = !DILocation(line: 104, column: 39, scope: !4270)
!4281 = !DILocation(line: 101, column: 9, scope: !4257)
!4282 = !DILocation(line: 109, column: 1, scope: !4257)
!4283 = distinct !DISubprogram(name: "hal_uart_translate_port", scope: !262, file: !262, line: 139, type: !4284, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4286)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{!2613, !323}
!4286 = !{!4287}
!4287 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4283, file: !262, line: 139, type: !323)
!4288 = !DILocation(line: 0, scope: !4283)
!4289 = !DILocation(line: 141, column: 24, scope: !4283)
!4290 = !DILocation(line: 141, column: 12, scope: !4283)
!4291 = !DILocation(line: 141, column: 5, scope: !4283)
!4292 = distinct !DISubprogram(name: "hal_uart_set_format", scope: !262, file: !262, line: 593, type: !4293, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4295)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{!4231, !323, !4260}
!4295 = !{!4296, !4297}
!4296 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4292, file: !262, line: 593, type: !323)
!4297 = !DILocalVariable(name: "config", arg: 2, scope: !4292, file: !262, line: 593, type: !4260)
!4298 = !DILocation(line: 0, scope: !4292)
!4299 = !DILocation(line: 595, column: 10, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4292, file: !262, line: 595, column: 9)
!4301 = !DILocation(line: 595, column: 9, scope: !4292)
!4302 = !DILocation(line: 598, column: 45, scope: !4292)
!4303 = !DILocation(line: 598, column: 12, scope: !4292)
!4304 = !DILocation(line: 598, column: 59, scope: !4292)
!4305 = !DILocation(line: 598, column: 5, scope: !4292)
!4306 = !DILocation(line: 599, column: 23, scope: !4292)
!4307 = !DILocation(line: 600, column: 59, scope: !4292)
!4308 = !DILocation(line: 600, column: 23, scope: !4292)
!4309 = !DILocation(line: 601, column: 62, scope: !4292)
!4310 = !DILocation(line: 601, column: 23, scope: !4292)
!4311 = !DILocation(line: 602, column: 57, scope: !4292)
!4312 = !DILocation(line: 602, column: 23, scope: !4292)
!4313 = !DILocation(line: 603, column: 58, scope: !4292)
!4314 = !DILocation(line: 603, column: 23, scope: !4292)
!4315 = !DILocation(line: 599, column: 5, scope: !4292)
!4316 = !DILocation(line: 604, column: 5, scope: !4292)
!4317 = !DILocation(line: 605, column: 1, scope: !4292)
!4318 = distinct !DISubprogram(name: "hal_uart_translate_baudrate", scope: !262, file: !262, line: 145, type: !4319, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4321)
!4319 = !DISubroutineType(types: !4320)
!4320 = !{!92, !338}
!4321 = !{!4322, !4323}
!4322 = !DILocalVariable(name: "bandrate", arg: 1, scope: !4318, file: !262, line: 145, type: !338)
!4323 = !DILocalVariable(name: "baudrate_tbl", scope: !4318, file: !262, line: 147, type: !4324)
!4324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 416, elements: !4325)
!4325 = !{!4326}
!4326 = !DISubrange(count: 13)
!4327 = !DILocation(line: 0, scope: !4318)
!4328 = !DILocation(line: 147, column: 14, scope: !4318)
!4329 = !DILocation(line: 151, column: 12, scope: !4318)
!4330 = !DILocation(line: 151, column: 5, scope: !4318)
!4331 = distinct !DISubprogram(name: "hal_uart_translate_word_length", scope: !262, file: !262, line: 155, type: !4332, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4334)
!4332 = !DISubroutineType(types: !4333)
!4333 = !{!2683, !340}
!4334 = !{!4335, !4336}
!4335 = !DILocalVariable(name: "word_length", arg: 1, scope: !4331, file: !262, line: 155, type: !340)
!4336 = !DILocalVariable(name: "databit_tbl", scope: !4331, file: !262, line: 157, type: !4337)
!4337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2683, size: 64, elements: !238)
!4338 = !DILocation(line: 0, scope: !4331)
!4339 = !DILocation(line: 157, column: 14, scope: !4331)
!4340 = !DILocation(line: 160, column: 12, scope: !4331)
!4341 = !DILocation(line: 160, column: 5, scope: !4331)
!4342 = distinct !DISubprogram(name: "hal_uart_translate_parity", scope: !262, file: !262, line: 164, type: !4343, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4345)
!4343 = !DISubroutineType(types: !4344)
!4344 = !{!2683, !344}
!4345 = !{!4346, !4347}
!4346 = !DILocalVariable(name: "parity", arg: 1, scope: !4342, file: !262, line: 164, type: !344)
!4347 = !DILocalVariable(name: "parity_tbl", scope: !4342, file: !262, line: 166, type: !4348)
!4348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2683, size: 80, elements: !242)
!4349 = !DILocation(line: 0, scope: !4342)
!4350 = !DILocation(line: 166, column: 14, scope: !4342)
!4351 = !DILocation(line: 169, column: 12, scope: !4342)
!4352 = !DILocation(line: 169, column: 5, scope: !4342)
!4353 = distinct !DISubprogram(name: "hal_uart_translate_stopbit", scope: !262, file: !262, line: 173, type: !4354, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4356)
!4354 = !DISubroutineType(types: !4355)
!4355 = !{!2683, !342}
!4356 = !{!4357, !4358}
!4357 = !DILocalVariable(name: "stopbit", arg: 1, scope: !4353, file: !262, line: 173, type: !342)
!4358 = !DILocalVariable(name: "stopbit_tbl", scope: !4353, file: !262, line: 175, type: !4359)
!4359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2683, size: 48, elements: !500)
!4360 = !DILocation(line: 0, scope: !4353)
!4361 = !DILocation(line: 175, column: 14, scope: !4353)
!4362 = !DILocation(line: 178, column: 12, scope: !4353)
!4363 = !DILocation(line: 178, column: 5, scope: !4353)
!4364 = distinct !DISubprogram(name: "hal_uart_is_port_valid", scope: !262, file: !262, line: 87, type: !4365, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4367)
!4365 = !DISubroutineType(types: !4366)
!4366 = !{!156, !323}
!4367 = !{!4368}
!4368 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4364, file: !262, line: 87, type: !323)
!4369 = !DILocation(line: 0, scope: !4364)
!4370 = !DILocation(line: 89, column: 23, scope: !4364)
!4371 = !DILocation(line: 89, column: 5, scope: !4364)
!4372 = distinct !DISubprogram(name: "hal_uart_deinit", scope: !262, file: !262, line: 264, type: !4373, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4375)
!4373 = !DISubroutineType(types: !4374)
!4374 = !{!4231, !323}
!4375 = !{!4376}
!4376 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4372, file: !262, line: 264, type: !323)
!4377 = !DILocation(line: 0, scope: !4372)
!4378 = !DILocation(line: 266, column: 10, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4372, file: !262, line: 266, column: 9)
!4380 = !DILocation(line: 266, column: 9, scope: !4372)
!4381 = !DILocation(line: 269, column: 41, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4372, file: !262, line: 269, column: 9)
!4383 = !DILocation(line: 269, column: 62, scope: !4382)
!4384 = !DILocation(line: 269, column: 9, scope: !4372)
!4385 = !DILocation(line: 272, column: 5, scope: !4372)
!4386 = !DILocation(line: 275, column: 22, scope: !4372)
!4387 = !DILocation(line: 275, column: 5, scope: !4372)
!4388 = !DILocation(line: 284, column: 5, scope: !4372)
!4389 = !DILocation(line: 286, column: 5, scope: !4372)
!4390 = !DILocation(line: 287, column: 1, scope: !4372)
!4391 = distinct !DISubprogram(name: "hal_uart_put_char", scope: !262, file: !262, line: 290, type: !4392, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4394)
!4392 = !DISubroutineType(types: !4393)
!4393 = !{null, !323, !315}
!4394 = !{!4395, !4396, !4397}
!4395 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4391, file: !262, line: 290, type: !323)
!4396 = !DILocalVariable(name: "byte", arg: 2, scope: !4391, file: !262, line: 290, type: !315)
!4397 = !DILocalVariable(name: "int_no", scope: !4391, file: !262, line: 292, type: !2613)
!4398 = !DILocation(line: 0, scope: !4391)
!4399 = !DILocation(line: 292, column: 26, scope: !4391)
!4400 = !DILocation(line: 294, column: 16, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4391, file: !262, line: 294, column: 9)
!4402 = !DILocation(line: 294, column: 9, scope: !4391)
!4403 = !DILocation(line: 295, column: 9, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4401, file: !262, line: 294, column: 34)
!4405 = !DILocation(line: 296, column: 5, scope: !4404)
!4406 = !DILocation(line: 299, column: 1, scope: !4391)
!4407 = distinct !DISubprogram(name: "hal_uart_send_polling", scope: !262, file: !262, line: 302, type: !4408, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4410)
!4408 = !DISubroutineType(types: !4409)
!4409 = !{!92, !323, !2820, !92}
!4410 = !{!4411, !4412, !4413, !4414, !4415}
!4411 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4407, file: !262, line: 302, type: !323)
!4412 = !DILocalVariable(name: "data", arg: 2, scope: !4407, file: !262, line: 302, type: !2820)
!4413 = !DILocalVariable(name: "size", arg: 3, scope: !4407, file: !262, line: 302, type: !92)
!4414 = !DILocalVariable(name: "int_no", scope: !4407, file: !262, line: 304, type: !2613)
!4415 = !DILocalVariable(name: "index", scope: !4407, file: !262, line: 305, type: !92)
!4416 = !DILocation(line: 0, scope: !4407)
!4417 = !DILocation(line: 304, column: 26, scope: !4407)
!4418 = !DILocation(line: 307, column: 14, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4407, file: !262, line: 307, column: 9)
!4420 = !DILocation(line: 307, column: 9, scope: !4407)
!4421 = !DILocation(line: 313, column: 53, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4423, file: !262, line: 312, column: 48)
!4423 = distinct !DILexicalBlock(scope: !4424, file: !262, line: 312, column: 9)
!4424 = distinct !DILexicalBlock(scope: !4425, file: !262, line: 312, column: 9)
!4425 = distinct !DILexicalBlock(scope: !4426, file: !262, line: 311, column: 33)
!4426 = distinct !DILexicalBlock(scope: !4407, file: !262, line: 311, column: 9)
!4427 = !DILocation(line: 313, column: 13, scope: !4422)
!4428 = !DILocation(line: 312, column: 44, scope: !4423)
!4429 = !DILocation(line: 312, column: 31, scope: !4423)
!4430 = !DILocation(line: 312, column: 9, scope: !4424)
!4431 = distinct !{!4431, !4430, !4432}
!4432 = !DILocation(line: 314, column: 9, scope: !4424)
!4433 = !DILocation(line: 318, column: 1, scope: !4407)
!4434 = distinct !DISubprogram(name: "hal_uart_send_dma", scope: !262, file: !262, line: 320, type: !4408, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4435)
!4435 = !{!4436, !4437, !4438, !4439, !4440, !4441}
!4436 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4434, file: !262, line: 320, type: !323)
!4437 = !DILocalVariable(name: "data", arg: 2, scope: !4434, file: !262, line: 320, type: !2820)
!4438 = !DILocalVariable(name: "size", arg: 3, scope: !4434, file: !262, line: 320, type: !92)
!4439 = !DILocalVariable(name: "actual_space", scope: !4434, file: !262, line: 322, type: !92)
!4440 = !DILocalVariable(name: "send_size", scope: !4434, file: !262, line: 322, type: !92)
!4441 = !DILocalVariable(name: "ch", scope: !4434, file: !262, line: 323, type: !4442)
!4442 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_VFIFO_CHANNEL", file: !112, line: 144, baseType: !111)
!4443 = !DILocation(line: 0, scope: !4434)
!4444 = !DILocation(line: 322, column: 5, scope: !4434)
!4445 = !DILocation(line: 328, column: 10, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !4434, file: !262, line: 328, column: 9)
!4447 = !DILocation(line: 328, column: 9, scope: !4434)
!4448 = !DILocation(line: 332, column: 15, scope: !4449)
!4449 = distinct !DILexicalBlock(scope: !4434, file: !262, line: 332, column: 9)
!4450 = !DILocation(line: 332, column: 24, scope: !4449)
!4451 = !DILocation(line: 335, column: 42, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4434, file: !262, line: 335, column: 9)
!4453 = !DILocation(line: 335, column: 9, scope: !4434)
!4454 = !DILocation(line: 349, column: 30, scope: !4434)
!4455 = !DILocation(line: 349, column: 5, scope: !4434)
!4456 = !DILocation(line: 350, column: 9, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4434, file: !262, line: 350, column: 9)
!4458 = !DILocation(line: 350, column: 22, scope: !4457)
!4459 = !DILocation(line: 355, column: 5, scope: !4434)
!4460 = !DILocation(line: 357, column: 22, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4434, file: !262, line: 357, column: 9)
!4462 = !DILocation(line: 357, column: 19, scope: !4461)
!4463 = !DILocation(line: 357, column: 9, scope: !4434)
!4464 = !DILocation(line: 358, column: 14, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4461, file: !262, line: 357, column: 36)
!4466 = !{i32 14, i32 18}
!4467 = !DILocation(line: 359, column: 9, scope: !4465)
!4468 = !DILocation(line: 360, column: 5, scope: !4465)
!4469 = !DILocation(line: 362, column: 1, scope: !4434)
!4470 = distinct !DISubprogram(name: "uart_channel_to_dma_channel", scope: !262, file: !262, line: 191, type: !4471, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4473)
!4471 = !DISubroutineType(types: !4472)
!4472 = !{!4442, !2613, !156}
!4473 = !{!4474, !4475, !4476}
!4474 = !DILocalVariable(name: "port", arg: 1, scope: !4470, file: !262, line: 191, type: !2613)
!4475 = !DILocalVariable(name: "is_rx", arg: 2, scope: !4470, file: !262, line: 191, type: !156)
!4476 = !DILocalVariable(name: "ch", scope: !4470, file: !262, line: 193, type: !4442)
!4477 = !DILocation(line: 0, scope: !4470)
!4478 = !DILocation(line: 195, column: 14, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4470, file: !262, line: 195, column: 9)
!4480 = !DILocation(line: 195, column: 9, scope: !4470)
!4481 = !DILocation(line: 209, column: 5, scope: !4470)
!4482 = distinct !DISubprogram(name: "hal_uart_get_char", scope: !262, file: !262, line: 365, type: !4483, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4485)
!4483 = !DISubroutineType(types: !4484)
!4484 = !{!315, !323}
!4485 = !{!4486, !4487}
!4486 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4482, file: !262, line: 365, type: !323)
!4487 = !DILocalVariable(name: "int_no", scope: !4482, file: !262, line: 367, type: !2613)
!4488 = !DILocation(line: 0, scope: !4482)
!4489 = !DILocation(line: 367, column: 26, scope: !4482)
!4490 = !DILocation(line: 369, column: 16, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4482, file: !262, line: 369, column: 9)
!4492 = !DILocation(line: 369, column: 9, scope: !4482)
!4493 = !DILocation(line: 370, column: 22, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4491, file: !262, line: 369, column: 33)
!4495 = !DILocation(line: 370, column: 9, scope: !4494)
!4496 = !DILocation(line: 0, scope: !4491)
!4497 = !DILocation(line: 375, column: 1, scope: !4482)
!4498 = distinct !DISubprogram(name: "hal_uart_get_char_unblocking", scope: !262, file: !262, line: 377, type: !4499, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4501)
!4499 = !DISubroutineType(types: !4500)
!4500 = !{!92, !323}
!4501 = !{!4502, !4503}
!4502 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4498, file: !262, line: 377, type: !323)
!4503 = !DILocalVariable(name: "int_no", scope: !4498, file: !262, line: 379, type: !2613)
!4504 = !DILocation(line: 0, scope: !4498)
!4505 = !DILocation(line: 379, column: 26, scope: !4498)
!4506 = !DILocation(line: 381, column: 16, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4498, file: !262, line: 381, column: 9)
!4508 = !DILocation(line: 381, column: 9, scope: !4498)
!4509 = !DILocation(line: 382, column: 16, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4507, file: !262, line: 381, column: 33)
!4511 = !DILocation(line: 382, column: 9, scope: !4510)
!4512 = !DILocation(line: 0, scope: !4507)
!4513 = !DILocation(line: 387, column: 1, scope: !4498)
!4514 = distinct !DISubprogram(name: "hal_uart_receive_polling", scope: !262, file: !262, line: 390, type: !4515, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4517)
!4515 = !DISubroutineType(types: !4516)
!4516 = !{!92, !323, !363, !92}
!4517 = !{!4518, !4519, !4520, !4521, !4522}
!4518 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4514, file: !262, line: 390, type: !323)
!4519 = !DILocalVariable(name: "buffer", arg: 2, scope: !4514, file: !262, line: 390, type: !363)
!4520 = !DILocalVariable(name: "size", arg: 3, scope: !4514, file: !262, line: 390, type: !92)
!4521 = !DILocalVariable(name: "int_no", scope: !4514, file: !262, line: 392, type: !2613)
!4522 = !DILocalVariable(name: "index", scope: !4514, file: !262, line: 393, type: !92)
!4523 = !DILocation(line: 0, scope: !4514)
!4524 = !DILocation(line: 392, column: 26, scope: !4514)
!4525 = !DILocation(line: 395, column: 16, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4514, file: !262, line: 395, column: 9)
!4527 = !DILocation(line: 395, column: 9, scope: !4514)
!4528 = !DILocation(line: 401, column: 38, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4530, file: !262, line: 400, column: 48)
!4530 = distinct !DILexicalBlock(scope: !4531, file: !262, line: 400, column: 9)
!4531 = distinct !DILexicalBlock(scope: !4532, file: !262, line: 400, column: 9)
!4532 = distinct !DILexicalBlock(scope: !4533, file: !262, line: 399, column: 33)
!4533 = distinct !DILexicalBlock(scope: !4514, file: !262, line: 399, column: 9)
!4534 = !DILocation(line: 401, column: 13, scope: !4529)
!4535 = !DILocation(line: 401, column: 27, scope: !4529)
!4536 = !DILocation(line: 400, column: 44, scope: !4530)
!4537 = !DILocation(line: 400, column: 31, scope: !4530)
!4538 = !DILocation(line: 400, column: 9, scope: !4531)
!4539 = distinct !{!4539, !4538, !4540}
!4540 = !DILocation(line: 402, column: 9, scope: !4531)
!4541 = !DILocation(line: 406, column: 1, scope: !4514)
!4542 = distinct !DISubprogram(name: "hal_uart_receive_dma", scope: !262, file: !262, line: 408, type: !4515, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4543)
!4543 = !{!4544, !4545, !4546, !4547, !4548, !4549}
!4544 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4542, file: !262, line: 408, type: !323)
!4545 = !DILocalVariable(name: "buffer", arg: 2, scope: !4542, file: !262, line: 408, type: !363)
!4546 = !DILocalVariable(name: "size", arg: 3, scope: !4542, file: !262, line: 408, type: !92)
!4547 = !DILocalVariable(name: "actual_size", scope: !4542, file: !262, line: 410, type: !92)
!4548 = !DILocalVariable(name: "receive_size", scope: !4542, file: !262, line: 410, type: !92)
!4549 = !DILocalVariable(name: "ch", scope: !4542, file: !262, line: 411, type: !4442)
!4550 = !DILocation(line: 0, scope: !4542)
!4551 = !DILocation(line: 410, column: 5, scope: !4542)
!4552 = !DILocation(line: 413, column: 10, scope: !4553)
!4553 = distinct !DILexicalBlock(scope: !4542, file: !262, line: 413, column: 9)
!4554 = !DILocation(line: 413, column: 9, scope: !4542)
!4555 = !DILocation(line: 417, column: 17, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4542, file: !262, line: 417, column: 9)
!4557 = !DILocation(line: 417, column: 26, scope: !4556)
!4558 = !DILocation(line: 421, column: 30, scope: !4542)
!4559 = !DILocation(line: 421, column: 5, scope: !4542)
!4560 = !DILocation(line: 422, column: 9, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4542, file: !262, line: 422, column: 9)
!4562 = !DILocation(line: 422, column: 21, scope: !4561)
!4563 = !DILocation(line: 427, column: 5, scope: !4542)
!4564 = !DILocation(line: 429, column: 25, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4542, file: !262, line: 429, column: 9)
!4566 = !DILocation(line: 429, column: 22, scope: !4565)
!4567 = !DILocation(line: 429, column: 9, scope: !4542)
!4568 = !DILocation(line: 430, column: 14, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4565, file: !262, line: 429, column: 38)
!4570 = !DILocation(line: 431, column: 9, scope: !4569)
!4571 = !DILocation(line: 432, column: 5, scope: !4569)
!4572 = !DILocation(line: 435, column: 1, scope: !4542)
!4573 = distinct !DISubprogram(name: "hal_uart_get_available_send_space", scope: !262, file: !262, line: 438, type: !4499, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4574)
!4574 = !{!4575, !4576}
!4575 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4573, file: !262, line: 438, type: !323)
!4576 = !DILocalVariable(name: "length", scope: !4573, file: !262, line: 440, type: !92)
!4577 = !DILocation(line: 0, scope: !4573)
!4578 = !DILocation(line: 440, column: 5, scope: !4573)
!4579 = !DILocation(line: 440, column: 14, scope: !4573)
!4580 = !DILocation(line: 442, column: 10, scope: !4581)
!4581 = distinct !DILexicalBlock(scope: !4573, file: !262, line: 442, column: 9)
!4582 = !DILocation(line: 442, column: 9, scope: !4573)
!4583 = !DILocation(line: 446, column: 30, scope: !4573)
!4584 = !DILocation(line: 446, column: 5, scope: !4573)
!4585 = !DILocation(line: 447, column: 12, scope: !4573)
!4586 = !DILocation(line: 447, column: 5, scope: !4573)
!4587 = !DILocation(line: 448, column: 1, scope: !4573)
!4588 = distinct !DISubprogram(name: "hal_uart_get_available_receive_bytes", scope: !262, file: !262, line: 451, type: !4499, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4589)
!4589 = !{!4590, !4591}
!4590 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4588, file: !262, line: 451, type: !323)
!4591 = !DILocalVariable(name: "length", scope: !4588, file: !262, line: 453, type: !92)
!4592 = !DILocation(line: 0, scope: !4588)
!4593 = !DILocation(line: 453, column: 5, scope: !4588)
!4594 = !DILocation(line: 453, column: 14, scope: !4588)
!4595 = !DILocation(line: 455, column: 10, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4588, file: !262, line: 455, column: 9)
!4597 = !DILocation(line: 455, column: 9, scope: !4588)
!4598 = !DILocation(line: 459, column: 30, scope: !4588)
!4599 = !DILocation(line: 459, column: 5, scope: !4588)
!4600 = !DILocation(line: 461, column: 12, scope: !4588)
!4601 = !DILocation(line: 461, column: 5, scope: !4588)
!4602 = !DILocation(line: 462, column: 1, scope: !4588)
!4603 = distinct !DISubprogram(name: "hal_uart_register_callback", scope: !262, file: !262, line: 543, type: !4604, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4606)
!4604 = !DISubroutineType(types: !4605)
!4605 = !{!4231, !323, !351, !149}
!4606 = !{!4607, !4608, !4609, !4610}
!4607 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4603, file: !262, line: 543, type: !323)
!4608 = !DILocalVariable(name: "user_callback", arg: 2, scope: !4603, file: !262, line: 544, type: !351)
!4609 = !DILocalVariable(name: "user_data", arg: 3, scope: !4603, file: !262, line: 545, type: !149)
!4610 = !DILocalVariable(name: "ch", scope: !4603, file: !262, line: 547, type: !4442)
!4611 = !DILocation(line: 0, scope: !4603)
!4612 = !DILocation(line: 549, column: 10, scope: !4613)
!4613 = distinct !DILexicalBlock(scope: !4603, file: !262, line: 549, column: 9)
!4614 = !DILocation(line: 549, column: 9, scope: !4603)
!4615 = !DILocation(line: 556, column: 53, scope: !4603)
!4616 = !DILocation(line: 556, column: 62, scope: !4603)
!4617 = !DILocation(line: 557, column: 53, scope: !4603)
!4618 = !DILocation(line: 557, column: 63, scope: !4603)
!4619 = !DILocation(line: 558, column: 37, scope: !4603)
!4620 = !DILocation(line: 558, column: 54, scope: !4603)
!4621 = !DILocation(line: 560, column: 39, scope: !4603)
!4622 = !DILocation(line: 561, column: 39, scope: !4603)
!4623 = !DILocation(line: 560, column: 5, scope: !4603)
!4624 = !DILocation(line: 562, column: 5, scope: !4603)
!4625 = !DILocation(line: 564, column: 44, scope: !4626)
!4626 = distinct !DILexicalBlock(scope: !4603, file: !262, line: 564, column: 9)
!4627 = !DILocation(line: 564, column: 9, scope: !4603)
!4628 = !DILocation(line: 565, column: 9, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4626, file: !262, line: 564, column: 59)
!4630 = !DILocation(line: 566, column: 5, scope: !4629)
!4631 = !DILocation(line: 567, column: 9, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4626, file: !262, line: 566, column: 12)
!4633 = !DILocation(line: 569, column: 10, scope: !4603)
!4634 = !DILocation(line: 570, column: 5, scope: !4603)
!4635 = !DILocation(line: 578, column: 5, scope: !4603)
!4636 = !DILocation(line: 579, column: 1, scope: !4603)
!4637 = !DILocation(line: 0, scope: !319)
!4638 = !DILocation(line: 539, column: 12, scope: !319)
!4639 = !DILocation(line: 539, column: 5, scope: !319)
!4640 = distinct !DISubprogram(name: "hal_uart_send_callback0", scope: !262, file: !262, line: 511, type: !75, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4641)
!4641 = !{!4642}
!4642 = !DILocalVariable(name: "callback_context", scope: !4643, file: !262, line: 514, type: !4645)
!4643 = distinct !DILexicalBlock(scope: !4644, file: !262, line: 513, column: 60)
!4644 = distinct !DILexicalBlock(scope: !4640, file: !262, line: 513, column: 9)
!4645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 32)
!4646 = !DILocation(line: 513, column: 42, scope: !4644)
!4647 = !DILocation(line: 513, column: 9, scope: !4640)
!4648 = !DILocation(line: 515, column: 39, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4643, file: !262, line: 515, column: 13)
!4650 = !DILocation(line: 515, column: 18, scope: !4649)
!4651 = !DILocation(line: 515, column: 13, scope: !4643)
!4652 = !DILocation(line: 516, column: 89, scope: !4653)
!4653 = distinct !DILexicalBlock(scope: !4649, file: !262, line: 515, column: 49)
!4654 = !DILocation(line: 516, column: 13, scope: !4653)
!4655 = !DILocation(line: 517, column: 9, scope: !4653)
!4656 = !DILocation(line: 519, column: 32, scope: !4640)
!4657 = !DILocation(line: 519, column: 5, scope: !4640)
!4658 = !DILocation(line: 520, column: 1, scope: !4640)
!4659 = distinct !DISubprogram(name: "hal_uart_send_callback1", scope: !262, file: !262, line: 523, type: !75, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4660)
!4660 = !{!4661}
!4661 = !DILocalVariable(name: "callback_context", scope: !4662, file: !262, line: 526, type: !4645)
!4662 = distinct !DILexicalBlock(scope: !4663, file: !262, line: 525, column: 60)
!4663 = distinct !DILexicalBlock(scope: !4659, file: !262, line: 525, column: 9)
!4664 = !DILocation(line: 525, column: 42, scope: !4663)
!4665 = !DILocation(line: 525, column: 9, scope: !4659)
!4666 = !DILocation(line: 527, column: 39, scope: !4667)
!4667 = distinct !DILexicalBlock(scope: !4662, file: !262, line: 527, column: 13)
!4668 = !DILocation(line: 527, column: 18, scope: !4667)
!4669 = !DILocation(line: 527, column: 13, scope: !4662)
!4670 = !DILocation(line: 528, column: 89, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4667, file: !262, line: 527, column: 49)
!4672 = !DILocation(line: 528, column: 13, scope: !4671)
!4673 = !DILocation(line: 529, column: 9, scope: !4671)
!4674 = !DILocation(line: 531, column: 32, scope: !4659)
!4675 = !DILocation(line: 531, column: 5, scope: !4659)
!4676 = !DILocation(line: 532, column: 1, scope: !4659)
!4677 = distinct !DISubprogram(name: "hal_uart_check_irq_disable", scope: !262, file: !262, line: 464, type: !4678, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4680)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{null, !2613, !156}
!4680 = !{!4681, !4682, !4683, !4684, !4685, !4687}
!4681 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4677, file: !262, line: 464, type: !2613)
!4682 = !DILocalVariable(name: "is_rx", arg: 2, scope: !4677, file: !262, line: 464, type: !156)
!4683 = !DILocalVariable(name: "avail_size", scope: !4677, file: !262, line: 466, type: !92)
!4684 = !DILocalVariable(name: "avail_space", scope: !4677, file: !262, line: 466, type: !92)
!4685 = !DILocalVariable(name: "dma_config", scope: !4677, file: !262, line: 467, type: !4686)
!4686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 32)
!4687 = !DILocalVariable(name: "ch", scope: !4677, file: !262, line: 468, type: !4442)
!4688 = !DILocation(line: 0, scope: !4677)
!4689 = !DILocation(line: 466, column: 5, scope: !4677)
!4690 = !DILocation(line: 471, column: 9, scope: !4677)
!4691 = !DILocation(line: 472, column: 9, scope: !4692)
!4692 = distinct !DILexicalBlock(scope: !4693, file: !262, line: 471, column: 16)
!4693 = distinct !DILexicalBlock(scope: !4677, file: !262, line: 471, column: 9)
!4694 = !DILocation(line: 473, column: 13, scope: !4695)
!4695 = distinct !DILexicalBlock(scope: !4692, file: !262, line: 473, column: 13)
!4696 = !DILocation(line: 473, column: 39, scope: !4695)
!4697 = !DILocation(line: 473, column: 24, scope: !4695)
!4698 = !DILocation(line: 473, column: 13, scope: !4692)
!4699 = !DILocation(line: 478, column: 9, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4693, file: !262, line: 477, column: 12)
!4701 = !DILocation(line: 479, column: 13, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4700, file: !262, line: 479, column: 13)
!4703 = !DILocation(line: 479, column: 40, scope: !4702)
!4704 = !DILocation(line: 479, column: 77, scope: !4702)
!4705 = !DILocation(line: 479, column: 63, scope: !4702)
!4706 = !DILocation(line: 479, column: 25, scope: !4702)
!4707 = !DILocation(line: 479, column: 13, scope: !4700)
!4708 = !DILocation(line: 0, scope: !4693)
!4709 = !DILocation(line: 484, column: 1, scope: !4677)
!4710 = distinct !DISubprogram(name: "hal_uart_receive_callback0", scope: !262, file: !262, line: 486, type: !75, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4711)
!4711 = !{!4712}
!4712 = !DILocalVariable(name: "callback_context", scope: !4713, file: !262, line: 490, type: !4645)
!4713 = distinct !DILexicalBlock(scope: !4714, file: !262, line: 489, column: 70)
!4714 = distinct !DILexicalBlock(scope: !4710, file: !262, line: 488, column: 9)
!4715 = !DILocation(line: 488, column: 43, scope: !4714)
!4716 = !DILocation(line: 488, column: 61, scope: !4714)
!4717 = !DILocation(line: 489, column: 14, scope: !4714)
!4718 = !DILocation(line: 489, column: 63, scope: !4714)
!4719 = !DILocation(line: 488, column: 9, scope: !4710)
!4720 = !DILocation(line: 491, column: 39, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4713, file: !262, line: 491, column: 13)
!4722 = !DILocation(line: 491, column: 18, scope: !4721)
!4723 = !DILocation(line: 491, column: 13, scope: !4713)
!4724 = !DILocation(line: 492, column: 88, scope: !4725)
!4725 = distinct !DILexicalBlock(scope: !4721, file: !262, line: 491, column: 49)
!4726 = !DILocation(line: 492, column: 13, scope: !4725)
!4727 = !DILocation(line: 493, column: 9, scope: !4725)
!4728 = !DILocation(line: 495, column: 32, scope: !4710)
!4729 = !DILocation(line: 495, column: 5, scope: !4710)
!4730 = !DILocation(line: 496, column: 1, scope: !4710)
!4731 = distinct !DISubprogram(name: "hal_uart_receive_callback1", scope: !262, file: !262, line: 499, type: !75, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4732)
!4732 = !{!4733}
!4733 = !DILocalVariable(name: "callback_context", scope: !4734, file: !262, line: 503, type: !4645)
!4734 = distinct !DILexicalBlock(scope: !4735, file: !262, line: 502, column: 70)
!4735 = distinct !DILexicalBlock(scope: !4731, file: !262, line: 501, column: 9)
!4736 = !DILocation(line: 501, column: 43, scope: !4735)
!4737 = !DILocation(line: 501, column: 61, scope: !4735)
!4738 = !DILocation(line: 502, column: 14, scope: !4735)
!4739 = !DILocation(line: 502, column: 63, scope: !4735)
!4740 = !DILocation(line: 501, column: 9, scope: !4731)
!4741 = !DILocation(line: 504, column: 39, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4734, file: !262, line: 504, column: 13)
!4743 = !DILocation(line: 504, column: 18, scope: !4742)
!4744 = !DILocation(line: 504, column: 13, scope: !4734)
!4745 = !DILocation(line: 505, column: 88, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !4742, file: !262, line: 504, column: 49)
!4747 = !DILocation(line: 505, column: 13, scope: !4746)
!4748 = !DILocation(line: 506, column: 9, scope: !4746)
!4749 = !DILocation(line: 508, column: 32, scope: !4731)
!4750 = !DILocation(line: 508, column: 5, scope: !4731)
!4751 = !DILocation(line: 509, column: 1, scope: !4731)
!4752 = distinct !DISubprogram(name: "hal_uart_set_baudrate", scope: !262, file: !262, line: 582, type: !4753, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4755)
!4753 = !DISubroutineType(types: !4754)
!4754 = !{!4231, !323, !338}
!4755 = !{!4756, !4757}
!4756 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4752, file: !262, line: 582, type: !323)
!4757 = !DILocalVariable(name: "baudrate", arg: 2, scope: !4752, file: !262, line: 582, type: !338)
!4758 = !DILocation(line: 0, scope: !4752)
!4759 = !DILocation(line: 584, column: 11, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !4752, file: !262, line: 584, column: 9)
!4761 = !DILocation(line: 584, column: 46, scope: !4760)
!4762 = !DILocation(line: 588, column: 37, scope: !4752)
!4763 = !DILocation(line: 588, column: 50, scope: !4752)
!4764 = !DILocation(line: 588, column: 59, scope: !4752)
!4765 = !DILocation(line: 589, column: 12, scope: !4752)
!4766 = !DILocation(line: 589, column: 5, scope: !4752)
!4767 = !DILocation(line: 590, column: 1, scope: !4752)
!4768 = distinct !DISubprogram(name: "hal_uart_set_dma", scope: !262, file: !262, line: 608, type: !4769, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4773)
!4769 = !DISubroutineType(types: !4770)
!4770 = !{!4231, !323, !4771}
!4771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4772, size: 32)
!4772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!4773 = !{!4774, !4775}
!4774 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4768, file: !262, line: 608, type: !323)
!4775 = !DILocalVariable(name: "uart_dma_config", arg: 2, scope: !4768, file: !262, line: 608, type: !4771)
!4776 = !DILocation(line: 0, scope: !4768)
!4777 = !DILocation(line: 610, column: 10, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4768, file: !262, line: 610, column: 9)
!4779 = !DILocation(line: 610, column: 9, scope: !4768)
!4780 = !DILocation(line: 614, column: 10, scope: !4781)
!4781 = distinct !DILexicalBlock(scope: !4768, file: !262, line: 614, column: 9)
!4782 = !DILocation(line: 614, column: 9, scope: !4768)
!4783 = !DILocation(line: 618, column: 37, scope: !4768)
!4784 = !DILocation(line: 618, column: 56, scope: !4768)
!4785 = !DILocation(line: 619, column: 45, scope: !4768)
!4786 = !DILocation(line: 619, column: 12, scope: !4768)
!4787 = !DILocation(line: 620, column: 12, scope: !4768)
!4788 = !DILocation(line: 619, column: 5, scope: !4768)
!4789 = !DILocation(line: 621, column: 5, scope: !4768)
!4790 = !DILocation(line: 622, column: 5, scope: !4768)
!4791 = !DILocation(line: 623, column: 33, scope: !4768)
!4792 = !DILocation(line: 624, column: 50, scope: !4768)
!4793 = !DILocation(line: 625, column: 50, scope: !4768)
!4794 = !DILocation(line: 626, column: 50, scope: !4768)
!4795 = !DILocation(line: 627, column: 50, scope: !4768)
!4796 = !DILocation(line: 628, column: 33, scope: !4768)
!4797 = !DILocation(line: 623, column: 5, scope: !4768)
!4798 = !DILocation(line: 630, column: 50, scope: !4768)
!4799 = !DILocation(line: 631, column: 50, scope: !4768)
!4800 = !DILocation(line: 632, column: 50, scope: !4768)
!4801 = !DILocation(line: 629, column: 5, scope: !4768)
!4802 = !DILocation(line: 634, column: 5, scope: !4768)
!4803 = !DILocation(line: 635, column: 1, scope: !4768)
!4804 = distinct !DISubprogram(name: "hal_uart_is_dma_config_valid", scope: !262, file: !262, line: 112, type: !4805, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4807)
!4805 = !DISubroutineType(types: !4806)
!4806 = !{!156, !4771}
!4807 = !{!4808}
!4808 = !DILocalVariable(name: "dma_config", arg: 1, scope: !4804, file: !262, line: 112, type: !4771)
!4809 = !DILocation(line: 0, scope: !4804)
!4810 = !DILocation(line: 114, column: 14, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !4804, file: !262, line: 114, column: 9)
!4812 = !DILocation(line: 114, column: 9, scope: !4804)
!4813 = !DILocation(line: 117, column: 29, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4804, file: !262, line: 117, column: 9)
!4815 = !DILocation(line: 117, column: 14, scope: !4814)
!4816 = !DILocation(line: 117, column: 9, scope: !4804)
!4817 = !DILocation(line: 120, column: 21, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4804, file: !262, line: 120, column: 9)
!4819 = !DILocation(line: 120, column: 61, scope: !4818)
!4820 = !DILocation(line: 120, column: 47, scope: !4818)
!4821 = !DILocation(line: 120, column: 9, scope: !4804)
!4822 = !DILocation(line: 123, column: 61, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !4804, file: !262, line: 123, column: 9)
!4824 = !DILocation(line: 123, column: 47, scope: !4823)
!4825 = !DILocation(line: 123, column: 9, scope: !4804)
!4826 = !DILocation(line: 126, column: 29, scope: !4827)
!4827 = distinct !DILexicalBlock(scope: !4804, file: !262, line: 126, column: 9)
!4828 = !DILocation(line: 126, column: 14, scope: !4827)
!4829 = !DILocation(line: 126, column: 9, scope: !4804)
!4830 = !DILocation(line: 129, column: 21, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4804, file: !262, line: 129, column: 9)
!4832 = !DILocation(line: 129, column: 58, scope: !4831)
!4833 = !DILocation(line: 129, column: 44, scope: !4831)
!4834 = !DILocation(line: 129, column: 9, scope: !4804)
!4835 = !DILocation(line: 136, column: 1, scope: !4804)
!4836 = distinct !DISubprogram(name: "hal_uart_translate_timeout", scope: !262, file: !262, line: 182, type: !4837, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4839)
!4837 = !DISubroutineType(types: !4838)
!4838 = !{!92, !92}
!4839 = !{!4840, !4841}
!4840 = !DILocalVariable(name: "timeout_us", arg: 1, scope: !4836, file: !262, line: 182, type: !92)
!4841 = !DILocalVariable(name: "ticks_per_us", scope: !4836, file: !262, line: 184, type: !92)
!4842 = !DILocation(line: 0, scope: !4836)
!4843 = !DILocation(line: 186, column: 20, scope: !4836)
!4844 = !DILocation(line: 186, column: 39, scope: !4836)
!4845 = !DILocation(line: 188, column: 25, scope: !4836)
!4846 = !DILocation(line: 188, column: 5, scope: !4836)
!4847 = distinct !DISubprogram(name: "hal_uart_set_hardware_flowcontrol", scope: !262, file: !262, line: 637, type: !4373, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4848)
!4848 = !{!4849, !4850}
!4849 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4847, file: !262, line: 637, type: !323)
!4850 = !DILocalVariable(name: "int_no", scope: !4847, file: !262, line: 639, type: !2613)
!4851 = !DILocation(line: 0, scope: !4847)
!4852 = !DILocation(line: 641, column: 10, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4847, file: !262, line: 641, column: 9)
!4854 = !DILocation(line: 641, column: 9, scope: !4847)
!4855 = !DILocation(line: 645, column: 14, scope: !4847)
!4856 = !DILocation(line: 646, column: 5, scope: !4847)
!4857 = !DILocation(line: 648, column: 5, scope: !4847)
!4858 = !DILocation(line: 649, column: 1, scope: !4847)
!4859 = distinct !DISubprogram(name: "hal_uart_set_software_flowcontrol", scope: !262, file: !262, line: 651, type: !4860, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4862)
!4860 = !DISubroutineType(types: !4861)
!4861 = !{!4231, !323, !150, !150, !150}
!4862 = !{!4863, !4864, !4865, !4866, !4867}
!4863 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4859, file: !262, line: 651, type: !323)
!4864 = !DILocalVariable(name: "xon", arg: 2, scope: !4859, file: !262, line: 652, type: !150)
!4865 = !DILocalVariable(name: "xoff", arg: 3, scope: !4859, file: !262, line: 653, type: !150)
!4866 = !DILocalVariable(name: "escape_character", arg: 4, scope: !4859, file: !262, line: 654, type: !150)
!4867 = !DILocalVariable(name: "int_no", scope: !4859, file: !262, line: 656, type: !2613)
!4868 = !DILocation(line: 0, scope: !4859)
!4869 = !DILocation(line: 658, column: 10, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4859, file: !262, line: 658, column: 9)
!4871 = !DILocation(line: 658, column: 9, scope: !4859)
!4872 = !DILocation(line: 662, column: 14, scope: !4859)
!4873 = !DILocation(line: 663, column: 5, scope: !4859)
!4874 = !DILocation(line: 665, column: 5, scope: !4859)
!4875 = !DILocation(line: 666, column: 1, scope: !4859)
!4876 = distinct !DISubprogram(name: "hal_uart_disable_flowcontrol", scope: !262, file: !262, line: 668, type: !4373, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4877)
!4877 = !{!4878, !4879}
!4878 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4876, file: !262, line: 668, type: !323)
!4879 = !DILocalVariable(name: "int_no", scope: !4876, file: !262, line: 670, type: !2613)
!4880 = !DILocation(line: 0, scope: !4876)
!4881 = !DILocation(line: 672, column: 10, scope: !4882)
!4882 = distinct !DILexicalBlock(scope: !4876, file: !262, line: 672, column: 9)
!4883 = !DILocation(line: 672, column: 9, scope: !4876)
!4884 = !DILocation(line: 676, column: 14, scope: !4876)
!4885 = !DILocation(line: 677, column: 5, scope: !4876)
!4886 = !DILocation(line: 679, column: 5, scope: !4876)
!4887 = !DILocation(line: 680, column: 1, scope: !4876)
!4888 = distinct !DISubprogram(name: "hal_uart_set_dma_timeout", scope: !262, file: !262, line: 683, type: !4889, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4891)
!4889 = !DISubroutineType(types: !4890)
!4890 = !{!4231, !323, !92}
!4891 = !{!4892, !4893}
!4892 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4888, file: !262, line: 683, type: !323)
!4893 = !DILocalVariable(name: "timeout", arg: 2, scope: !4888, file: !262, line: 683, type: !92)
!4894 = !DILocation(line: 0, scope: !4888)
!4895 = !DILocation(line: 685, column: 10, scope: !4896)
!4896 = distinct !DILexicalBlock(scope: !4888, file: !262, line: 685, column: 9)
!4897 = !DILocation(line: 685, column: 9, scope: !4888)
!4898 = !DILocation(line: 689, column: 19, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4888, file: !262, line: 689, column: 9)
!4900 = !DILocation(line: 0, scope: !4899)
!4901 = !DILocation(line: 696, column: 1, scope: !4888)
!4902 = distinct !DISubprogram(name: "__io_putchar", scope: !941, file: !941, line: 53, type: !4903, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !940, retainedNodes: !4905)
!4903 = !DISubroutineType(types: !4904)
!4904 = !{!13, !13}
!4905 = !{!4906}
!4906 = !DILocalVariable(name: "ch", arg: 1, scope: !4902, file: !941, line: 53, type: !13)
!4907 = !DILocation(line: 0, scope: !4902)
!4908 = !DILocation(line: 60, column: 35, scope: !4902)
!4909 = !DILocation(line: 60, column: 5, scope: !4902)
!4910 = !DILocation(line: 61, column: 5, scope: !4902)
!4911 = distinct !DISubprogram(name: "main", scope: !941, file: !941, line: 175, type: !2589, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !940, retainedNodes: !1135)
!4912 = !DILocation(line: 178, column: 5, scope: !4911)
!4913 = !DILocation(line: 181, column: 5, scope: !4911)
!4914 = !DILocation(line: 319, column: 3, scope: !4915, inlinedAt: !4916)
!4915 = distinct !DISubprogram(name: "__enable_irq", scope: !2035, file: !2035, line: 317, type: !75, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !940, retainedNodes: !1135)
!4916 = distinct !DILocation(line: 184, column: 5, scope: !4911)
!4917 = !{i64 508221}
!4918 = !DILocation(line: 496, column: 3, scope: !4919, inlinedAt: !4920)
!4919 = distinct !DISubprogram(name: "__enable_fault_irq", scope: !2035, file: !2035, line: 494, type: !75, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !940, retainedNodes: !1135)
!4920 = distinct !DILocation(line: 185, column: 5, scope: !4911)
!4921 = !{i64 512496}
!4922 = !DILocation(line: 188, column: 5, scope: !4911)
!4923 = !DILocation(line: 189, column: 5, scope: !4911)
!4924 = !DILocation(line: 190, column: 5, scope: !4911)
!4925 = !DILocation(line: 192, column: 5, scope: !4911)
!4926 = !DILocation(line: 194, column: 5, scope: !4911)
!4927 = !DILocation(line: 194, column: 5, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !4929, file: !941, line: 194, column: 5)
!4929 = distinct !DILexicalBlock(scope: !4911, file: !941, line: 194, column: 5)
!4930 = distinct !{!4930, !4931, !4932}
!4931 = !DILocation(line: 194, column: 5, scope: !4929)
!4932 = !DILocation(line: 194, column: 13, scope: !4929)
!4933 = distinct !DISubprogram(name: "SystemClock_Config", scope: !941, file: !941, line: 91, type: !75, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !940, retainedNodes: !1135)
!4934 = !DILocation(line: 93, column: 5, scope: !4933)
!4935 = !DILocation(line: 94, column: 1, scope: !4933)
!4936 = distinct !DISubprogram(name: "prvSetupHardware", scope: !941, file: !941, line: 100, type: !75, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !940, retainedNodes: !1135)
!4937 = !DILocation(line: 103, column: 5, scope: !4936)
!4938 = !DILocation(line: 104, column: 1, scope: !4936)
!4939 = distinct !DISubprogram(name: "sha_get_hash_example", scope: !941, file: !941, line: 130, type: !75, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !940, retainedNodes: !4940)
!4940 = !{!4941, !4942, !4943, !4947, !4956, !4957, !4958, !4959}
!4941 = !DILocalVariable(name: "data", scope: !4939, file: !941, line: 132, type: !363)
!4942 = !DILocalVariable(name: "size", scope: !4939, file: !941, line: 133, type: !92)
!4943 = !DILocalVariable(name: "digest", scope: !4939, file: !941, line: 134, type: !4944)
!4944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 512, elements: !4945)
!4945 = !{!4946}
!4946 = !DISubrange(count: 64)
!4947 = !DILocalVariable(name: "sha1_context", scope: !4939, file: !941, line: 138, type: !4948)
!4948 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_sha_context_t", file: !914, line: 183, baseType: !4949)
!4949 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !914, line: 177, size: 1632, elements: !4950)
!4950 = !{!4951, !4952, !4953, !4954, !4955}
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !4949, file: !914, line: 178, baseType: !932, size: 512)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "message_length", scope: !4949, file: !914, line: 179, baseType: !92, size: 32, offset: 512)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4949, file: !914, line: 180, baseType: !935, size: 1024, offset: 544)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4949, file: !914, line: 181, baseType: !363, size: 32, offset: 1568)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "block_length", scope: !4949, file: !914, line: 182, baseType: !92, size: 32, offset: 1600)
!4956 = !DILocalVariable(name: "sha224_context", scope: !4939, file: !941, line: 145, type: !4948)
!4957 = !DILocalVariable(name: "sha256_context", scope: !4939, file: !941, line: 152, type: !4948)
!4958 = !DILocalVariable(name: "sha384_context", scope: !4939, file: !941, line: 159, type: !4948)
!4959 = !DILocalVariable(name: "sha512_context", scope: !4939, file: !941, line: 166, type: !4948)
!4960 = !DILocation(line: 0, scope: !4939)
!4961 = !DILocation(line: 133, column: 31, scope: !4939)
!4962 = !DILocation(line: 134, column: 5, scope: !4939)
!4963 = !DILocation(line: 134, column: 13, scope: !4939)
!4964 = !DILocation(line: 136, column: 5, scope: !4939)
!4965 = !DILocation(line: 138, column: 5, scope: !4939)
!4966 = !DILocation(line: 138, column: 24, scope: !4939)
!4967 = !DILocation(line: 139, column: 5, scope: !4939)
!4968 = !DILocation(line: 140, column: 5, scope: !4939)
!4969 = !DILocation(line: 141, column: 5, scope: !4939)
!4970 = !DILocation(line: 142, column: 5, scope: !4939)
!4971 = !DILocation(line: 143, column: 5, scope: !4939)
!4972 = !DILocation(line: 145, column: 5, scope: !4939)
!4973 = !DILocation(line: 145, column: 26, scope: !4939)
!4974 = !DILocation(line: 146, column: 5, scope: !4939)
!4975 = !DILocation(line: 147, column: 5, scope: !4939)
!4976 = !DILocation(line: 148, column: 5, scope: !4939)
!4977 = !DILocation(line: 149, column: 5, scope: !4939)
!4978 = !DILocation(line: 150, column: 5, scope: !4939)
!4979 = !DILocation(line: 152, column: 5, scope: !4939)
!4980 = !DILocation(line: 152, column: 26, scope: !4939)
!4981 = !DILocation(line: 153, column: 5, scope: !4939)
!4982 = !DILocation(line: 154, column: 5, scope: !4939)
!4983 = !DILocation(line: 155, column: 5, scope: !4939)
!4984 = !DILocation(line: 156, column: 5, scope: !4939)
!4985 = !DILocation(line: 157, column: 5, scope: !4939)
!4986 = !DILocation(line: 159, column: 5, scope: !4939)
!4987 = !DILocation(line: 159, column: 26, scope: !4939)
!4988 = !DILocation(line: 160, column: 5, scope: !4939)
!4989 = !DILocation(line: 161, column: 5, scope: !4939)
!4990 = !DILocation(line: 162, column: 5, scope: !4939)
!4991 = !DILocation(line: 163, column: 5, scope: !4939)
!4992 = !DILocation(line: 164, column: 5, scope: !4939)
!4993 = !DILocation(line: 166, column: 5, scope: !4939)
!4994 = !DILocation(line: 166, column: 26, scope: !4939)
!4995 = !DILocation(line: 167, column: 5, scope: !4939)
!4996 = !DILocation(line: 168, column: 5, scope: !4939)
!4997 = !DILocation(line: 169, column: 5, scope: !4939)
!4998 = !DILocation(line: 170, column: 5, scope: !4939)
!4999 = !DILocation(line: 171, column: 5, scope: !4939)
!5000 = !DILocation(line: 172, column: 1, scope: !4939)
!5001 = distinct !DISubprogram(name: "sha_result_dump", scope: !941, file: !941, line: 111, type: !5002, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !940, retainedNodes: !5004)
!5002 = !DISubroutineType(types: !5003)
!5003 = !{null, !363, !150}
!5004 = !{!5005, !5006, !5007}
!5005 = !DILocalVariable(name: "result", arg: 1, scope: !5001, file: !941, line: 111, type: !363)
!5006 = !DILocalVariable(name: "length", arg: 2, scope: !5001, file: !941, line: 111, type: !150)
!5007 = !DILocalVariable(name: "i", scope: !5001, file: !941, line: 113, type: !150)
!5008 = !DILocation(line: 0, scope: !5001)
!5009 = !DILocation(line: 115, column: 19, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !5011, file: !941, line: 115, column: 5)
!5011 = distinct !DILexicalBlock(scope: !5001, file: !941, line: 115, column: 5)
!5012 = !DILocation(line: 115, column: 5, scope: !5011)
!5013 = !DILocation(line: 116, column: 15, scope: !5014)
!5014 = distinct !DILexicalBlock(scope: !5015, file: !941, line: 116, column: 13)
!5015 = distinct !DILexicalBlock(scope: !5010, file: !941, line: 115, column: 34)
!5016 = !DILocation(line: 116, column: 20, scope: !5014)
!5017 = !DILocation(line: 116, column: 13, scope: !5015)
!5018 = !DILocation(line: 117, column: 13, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !5014, file: !941, line: 116, column: 26)
!5020 = !DILocation(line: 118, column: 9, scope: !5019)
!5021 = !DILocation(line: 120, column: 26, scope: !5015)
!5022 = !DILocation(line: 120, column: 9, scope: !5015)
!5023 = !DILocation(line: 115, column: 30, scope: !5010)
!5024 = distinct !{!5024, !5012, !5025}
!5025 = !DILocation(line: 121, column: 5, scope: !5011)
!5026 = !DILocation(line: 122, column: 5, scope: !5001)
!5027 = !DILocation(line: 124, column: 1, scope: !5001)
!5028 = distinct !DISubprogram(name: "log_uart_init", scope: !941, file: !941, line: 69, type: !75, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !940, retainedNodes: !5029)
!5029 = !{!5030}
!5030 = !DILocalVariable(name: "uart_config", scope: !5028, file: !941, line: 71, type: !5031)
!5031 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !265, line: 378, baseType: !5032)
!5032 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !265, line: 373, size: 128, elements: !5033)
!5033 = !{!5034, !5035, !5036, !5037}
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !5032, file: !265, line: 374, baseType: !338, size: 32)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !5032, file: !265, line: 375, baseType: !340, size: 32, offset: 32)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !5032, file: !265, line: 376, baseType: !342, size: 32, offset: 64)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !5032, file: !265, line: 377, baseType: !344, size: 32, offset: 96)
!5038 = !DILocation(line: 71, column: 5, scope: !5028)
!5039 = !DILocation(line: 71, column: 23, scope: !5028)
!5040 = !DILocation(line: 73, column: 5, scope: !5028)
!5041 = !DILocation(line: 74, column: 5, scope: !5028)
!5042 = !DILocation(line: 75, column: 5, scope: !5028)
!5043 = !DILocation(line: 76, column: 5, scope: !5028)
!5044 = !DILocation(line: 79, column: 17, scope: !5028)
!5045 = !DILocation(line: 79, column: 26, scope: !5028)
!5046 = !DILocation(line: 80, column: 17, scope: !5028)
!5047 = !DILocation(line: 80, column: 29, scope: !5028)
!5048 = !DILocation(line: 81, column: 17, scope: !5028)
!5049 = !DILocation(line: 81, column: 26, scope: !5028)
!5050 = !DILocation(line: 82, column: 17, scope: !5028)
!5051 = !DILocation(line: 82, column: 24, scope: !5028)
!5052 = !DILocation(line: 83, column: 5, scope: !5028)
!5053 = !DILocation(line: 85, column: 1, scope: !5028)
!5054 = distinct !DISubprogram(name: "SysTick_Set", scope: !373, file: !373, line: 70, type: !4837, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !372, retainedNodes: !5055)
!5055 = !{!5056, !5057}
!5056 = !DILocalVariable(name: "ticks", arg: 1, scope: !5054, file: !373, line: 70, type: !92)
!5057 = !DILocalVariable(name: "val", scope: !5054, file: !373, line: 72, type: !92)
!5058 = !DILocation(line: 0, scope: !5054)
!5059 = !DILocation(line: 74, column: 16, scope: !5060)
!5060 = distinct !DILexicalBlock(scope: !5054, file: !373, line: 74, column: 9)
!5061 = !DILocation(line: 74, column: 21, scope: !5060)
!5062 = !DILocation(line: 74, column: 9, scope: !5054)
!5063 = !DILocation(line: 78, column: 20, scope: !5054)
!5064 = !DILocation(line: 80, column: 19, scope: !5054)
!5065 = !DILocation(line: 83, column: 20, scope: !5054)
!5066 = !DILocation(line: 84, column: 20, scope: !5054)
!5067 = !DILocation(line: 86, column: 19, scope: !5054)
!5068 = !DILocation(line: 88, column: 5, scope: !5054)
!5069 = !DILocation(line: 89, column: 1, scope: !5054)
!5070 = distinct !DISubprogram(name: "SysInitStatus_Set", scope: !373, file: !373, line: 98, type: !75, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !372, retainedNodes: !1135)
!5071 = !DILocation(line: 100, column: 28, scope: !5070)
!5072 = !DILocation(line: 101, column: 1, scope: !5070)
!5073 = distinct !DISubprogram(name: "SysInitStatus_Query", scope: !373, file: !373, line: 110, type: !2029, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !372, retainedNodes: !1135)
!5074 = !DILocation(line: 112, column: 12, scope: !5073)
!5075 = !DILocation(line: 112, column: 5, scope: !5073)
!5076 = distinct !DISubprogram(name: "SystemCoreClockUpdate", scope: !373, file: !373, line: 122, type: !75, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !372, retainedNodes: !1135)
!5077 = !DILocation(line: 124, column: 23, scope: !5076)
!5078 = !DILocation(line: 124, column: 21, scope: !5076)
!5079 = !DILocation(line: 125, column: 1, scope: !5076)
!5080 = distinct !DISubprogram(name: "SystemInit", scope: !373, file: !373, line: 136, type: !75, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !372, retainedNodes: !1135)
!5081 = !DILocation(line: 140, column: 16, scope: !5080)
!5082 = !DILocation(line: 144, column: 16, scope: !5080)
!5083 = !DILocation(line: 147, column: 16, scope: !5080)
!5084 = !DILocation(line: 150, column: 1, scope: !5080)
!5085 = distinct !DISubprogram(name: "CachePreInit", scope: !373, file: !373, line: 158, type: !75, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !372, retainedNodes: !1135)
!5086 = !DILocation(line: 161, column: 22, scope: !5085)
!5087 = !DILocation(line: 164, column: 21, scope: !5085)
!5088 = !DILocation(line: 167, column: 21, scope: !5085)
!5089 = !DILocation(line: 170, column: 29, scope: !5085)
!5090 = !DILocation(line: 171, column: 33, scope: !5085)
!5091 = !DILocation(line: 173, column: 28, scope: !5085)
!5092 = !DILocation(line: 178, column: 30, scope: !5085)
!5093 = !DILocation(line: 192, column: 1, scope: !5085)
!5094 = distinct !DISubprogram(name: "_close", scope: !443, file: !443, line: 11, type: !4903, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !640, retainedNodes: !5095)
!5095 = !{!5096}
!5096 = !DILocalVariable(name: "file", arg: 1, scope: !5094, file: !443, line: 11, type: !13)
!5097 = !DILocation(line: 0, scope: !5094)
!5098 = !DILocation(line: 13, column: 5, scope: !5094)
!5099 = distinct !DISubprogram(name: "_fstat", scope: !443, file: !443, line: 16, type: !5100, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !640, retainedNodes: !5148)
!5100 = !DISubroutineType(types: !5101)
!5101 = !{!13, !13, !5102}
!5102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5103, size: 32)
!5103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !5104, line: 27, size: 704, elements: !5105)
!5104 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/stat.h", directory: "/home/mjshen/RTOSExploration")
!5105 = !{!5106, !5109, !5112, !5115, !5118, !5121, !5124, !5125, !5128, !5138, !5139, !5140, !5143, !5146}
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !5103, file: !5104, line: 29, baseType: !5107, size: 16)
!5107 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !447, line: 161, baseType: !5108)
!5108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !489, line: 56, baseType: !464)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !5103, file: !5104, line: 30, baseType: !5110, size: 16, offset: 16)
!5110 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !447, line: 139, baseType: !5111)
!5111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !489, line: 75, baseType: !132)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !5103, file: !5104, line: 31, baseType: !5113, size: 32, offset: 32)
!5113 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !447, line: 189, baseType: !5114)
!5114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !489, line: 90, baseType: !94)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !5103, file: !5104, line: 32, baseType: !5116, size: 16, offset: 64)
!5116 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !447, line: 194, baseType: !5117)
!5117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !489, line: 209, baseType: !132)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !5103, file: !5104, line: 33, baseType: !5119, size: 16, offset: 80)
!5119 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !447, line: 165, baseType: !5120)
!5120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !489, line: 60, baseType: !132)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !5103, file: !5104, line: 34, baseType: !5122, size: 16, offset: 96)
!5122 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !447, line: 169, baseType: !5123)
!5123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !489, line: 63, baseType: !132)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !5103, file: !5104, line: 35, baseType: !5107, size: 16, offset: 112)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5103, file: !5104, line: 36, baseType: !5126, size: 32, offset: 128)
!5126 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !447, line: 157, baseType: !5127)
!5127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !489, line: 102, baseType: !507)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !5103, file: !5104, line: 42, baseType: !5129, size: 128, offset: 192)
!5129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !5130, line: 47, size: 128, elements: !5131)
!5130 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timespec.h", directory: "/home/mjshen/RTOSExploration")
!5131 = !{!5132, !5137}
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5129, file: !5130, line: 48, baseType: !5133, size: 64)
!5133 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !5134, line: 42, baseType: !5135)
!5134 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timeval.h", directory: "/home/mjshen/RTOSExploration")
!5135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !95, line: 200, baseType: !5136)
!5136 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5129, file: !5130, line: 49, baseType: !490, size: 32, offset: 64)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !5103, file: !5104, line: 43, baseType: !5129, size: 128, offset: 320)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !5103, file: !5104, line: 44, baseType: !5129, size: 128, offset: 448)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !5103, file: !5104, line: 45, baseType: !5141, size: 32, offset: 576)
!5141 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !447, line: 102, baseType: !5142)
!5142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !489, line: 34, baseType: !490)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !5103, file: !5104, line: 46, baseType: !5144, size: 32, offset: 608)
!5144 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !447, line: 97, baseType: !5145)
!5145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !489, line: 30, baseType: !490)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "st_spare4", scope: !5103, file: !5104, line: 48, baseType: !5147, size: 64, offset: 640)
!5147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 64, elements: !232)
!5148 = !{!5149, !5150}
!5149 = !DILocalVariable(name: "file", arg: 1, scope: !5099, file: !443, line: 16, type: !13)
!5150 = !DILocalVariable(name: "st", arg: 2, scope: !5099, file: !443, line: 16, type: !5102)
!5151 = !DILocation(line: 0, scope: !5099)
!5152 = !DILocation(line: 18, column: 5, scope: !5099)
!5153 = distinct !DISubprogram(name: "_isatty", scope: !443, file: !443, line: 22, type: !4903, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !640, retainedNodes: !5154)
!5154 = !{!5155}
!5155 = !DILocalVariable(name: "file", arg: 1, scope: !5153, file: !443, line: 22, type: !13)
!5156 = !DILocation(line: 0, scope: !5153)
!5157 = !DILocation(line: 24, column: 5, scope: !5153)
!5158 = distinct !DISubprogram(name: "_lseek", scope: !443, file: !443, line: 27, type: !5159, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !640, retainedNodes: !5161)
!5159 = !DISubroutineType(types: !5160)
!5160 = !{!13, !13, !13, !13}
!5161 = !{!5162, !5163, !5164}
!5162 = !DILocalVariable(name: "file", arg: 1, scope: !5158, file: !443, line: 27, type: !13)
!5163 = !DILocalVariable(name: "ptr", arg: 2, scope: !5158, file: !443, line: 27, type: !13)
!5164 = !DILocalVariable(name: "dir", arg: 3, scope: !5158, file: !443, line: 27, type: !13)
!5165 = !DILocation(line: 0, scope: !5158)
!5166 = !DILocation(line: 29, column: 5, scope: !5158)
!5167 = distinct !DISubprogram(name: "_open", scope: !443, file: !443, line: 32, type: !5168, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !640, retainedNodes: !5170)
!5168 = !DISubroutineType(types: !5169)
!5169 = !{!13, !482, !13, !13}
!5170 = !{!5171, !5172, !5173}
!5171 = !DILocalVariable(name: "name", arg: 1, scope: !5167, file: !443, line: 32, type: !482)
!5172 = !DILocalVariable(name: "flags", arg: 2, scope: !5167, file: !443, line: 32, type: !13)
!5173 = !DILocalVariable(name: "mode", arg: 3, scope: !5167, file: !443, line: 32, type: !13)
!5174 = !DILocation(line: 0, scope: !5167)
!5175 = !DILocation(line: 34, column: 5, scope: !5167)
!5176 = distinct !DISubprogram(name: "_read", scope: !443, file: !443, line: 37, type: !5177, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !640, retainedNodes: !5179)
!5177 = !DISubroutineType(types: !5178)
!5178 = !{!13, !13, !448, !13}
!5179 = !{!5180, !5181, !5182}
!5180 = !DILocalVariable(name: "file", arg: 1, scope: !5176, file: !443, line: 37, type: !13)
!5181 = !DILocalVariable(name: "ptr", arg: 2, scope: !5176, file: !443, line: 37, type: !448)
!5182 = !DILocalVariable(name: "len", arg: 3, scope: !5176, file: !443, line: 37, type: !13)
!5183 = !DILocation(line: 0, scope: !5176)
!5184 = !DILocation(line: 39, column: 5, scope: !5176)
!5185 = distinct !DISubprogram(name: "_write", scope: !443, file: !443, line: 52, type: !5177, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !640, retainedNodes: !5186)
!5186 = !{!5187, !5188, !5189, !5190}
!5187 = !DILocalVariable(name: "file", arg: 1, scope: !5185, file: !443, line: 52, type: !13)
!5188 = !DILocalVariable(name: "ptr", arg: 2, scope: !5185, file: !443, line: 52, type: !448)
!5189 = !DILocalVariable(name: "len", arg: 3, scope: !5185, file: !443, line: 52, type: !13)
!5190 = !DILocalVariable(name: "i", scope: !5185, file: !443, line: 54, type: !13)
!5191 = !DILocation(line: 0, scope: !5185)
!5192 = !DILocation(line: 56, column: 19, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5194, file: !443, line: 56, column: 5)
!5194 = distinct !DILexicalBlock(scope: !5185, file: !443, line: 56, column: 5)
!5195 = !DILocation(line: 56, column: 5, scope: !5194)
!5196 = !DILocation(line: 57, column: 26, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !5193, file: !443, line: 56, column: 31)
!5198 = !DILocation(line: 57, column: 22, scope: !5197)
!5199 = !DILocation(line: 57, column: 9, scope: !5197)
!5200 = !DILocation(line: 56, column: 27, scope: !5193)
!5201 = distinct !{!5201, !5195, !5202}
!5202 = !DILocation(line: 58, column: 5, scope: !5194)
!5203 = !DILocation(line: 60, column: 5, scope: !5185)
!5204 = !DILocation(line: 0, scope: !442)
!5205 = !DILocation(line: 70, column: 5, scope: !442)
!5206 = !{i64 1109}
!5207 = !DILocation(line: 72, column: 14, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !442, file: !443, line: 72, column: 9)
!5209 = !DILocation(line: 72, column: 11, scope: !5208)
!5210 = !DILocation(line: 72, column: 9, scope: !442)
!5211 = !DILocation(line: 78, column: 32, scope: !5212)
!5212 = distinct !DILexicalBlock(scope: !442, file: !443, line: 78, column: 9)
!5213 = !DILocation(line: 78, column: 15, scope: !5212)
!5214 = !DILocation(line: 89, column: 1, scope: !442)
!5215 = !DILocation(line: 78, column: 9, scope: !442)
!5216 = distinct !DISubprogram(name: "_exit", scope: !443, file: !443, line: 91, type: !592, scopeLine: 92, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !640, retainedNodes: !5217)
!5217 = !{!5218}
!5218 = !DILocalVariable(name: "__status", arg: 1, scope: !5216, file: !443, line: 91, type: !13)
!5219 = !DILocation(line: 0, scope: !5216)
!5220 = !DILocation(line: 93, column: 5, scope: !5216)
!5221 = !DILocation(line: 94, column: 5, scope: !5216)
!5222 = distinct !{!5222, !5221, !5223}
!5223 = !DILocation(line: 96, column: 5, scope: !5216)
!5224 = distinct !DISubprogram(name: "_kill", scope: !443, file: !443, line: 100, type: !5225, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !640, retainedNodes: !5227)
!5225 = !DISubroutineType(types: !5226)
!5226 = !{!13, !13, !13}
!5227 = !{!5228, !5229}
!5228 = !DILocalVariable(name: "pid", arg: 1, scope: !5224, file: !443, line: 100, type: !13)
!5229 = !DILocalVariable(name: "sig", arg: 2, scope: !5224, file: !443, line: 100, type: !13)
!5230 = !DILocation(line: 0, scope: !5224)
!5231 = !DILocation(line: 102, column: 5, scope: !5224)
!5232 = !DILocation(line: 103, column: 5, scope: !5224)
!5233 = distinct !DISubprogram(name: "_getpid", scope: !443, file: !443, line: 107, type: !5234, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !640, retainedNodes: !1135)
!5234 = !DISubroutineType(types: !5235)
!5235 = !{!5236}
!5236 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !447, line: 174, baseType: !5237)
!5237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !489, line: 52, baseType: !13)
!5238 = !DILocation(line: 109, column: 5, scope: !5233)
!5239 = !DILocation(line: 110, column: 5, scope: !5233)
