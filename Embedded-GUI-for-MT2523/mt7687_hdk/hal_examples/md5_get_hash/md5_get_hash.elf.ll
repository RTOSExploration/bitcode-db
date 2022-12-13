; ModuleID = './build/md5_get_hash.elf.bc'
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
%struct.hal_md5_context_t = type { [4 x i32], i64, i8*, [64 x i8], i32 }
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
@__FUNCTION__.hal_md5_init = private unnamed_addr constant [13 x i8] c"hal_md5_init\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"context is NULL.\00", align 1
@__FUNCTION__.hal_md5_append = private unnamed_addr constant [15 x i8] c"hal_md5_append\00", align 1
@__FUNCTION__.hal_md5_end = private unnamed_addr constant [12 x i8] c"hal_md5_end\00", align 1
@.str.1.24 = private unnamed_addr constant [24 x i8] c"digest_message is NULL.\00", align 1
@g_uart_context_table = internal global [2 x %struct.uart_context_t] zeroinitializer, align 4, !dbg !259
@hal_uart_map_receive_callback.func_tbl = internal unnamed_addr constant [2 x void ()*] [void ()* @hal_uart_receive_callback0, void ()* @hal_uart_receive_callback1], align 4, !dbg !317
@__const.hal_uart_translate_baudrate.baudrate_tbl = private unnamed_addr constant [13 x i32] [i32 110, i32 300, i32 1200, i32 2400, i32 4800, i32 9600, i32 19200, i32 38400, i32 57600, i32 115200, i32 230400, i32 460800, i32 921600], align 4
@__const.hal_uart_translate_word_length.databit_tbl = private unnamed_addr constant [4 x i16] [i16 0, i16 1, i16 2, i16 3], align 2
@__const.hal_uart_translate_parity.parity_tbl = private unnamed_addr constant [5 x i16] [i16 0, i16 8, i16 24, i16 0, i16 0], align 2
@__const.hal_uart_translate_stopbit.stopbit_tbl = private unnamed_addr constant [3 x i16] [i16 0, i16 4, i16 4], align 2
@.str.25 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.1.26 = private unnamed_addr constant [20 x i8] c"welcome to main()\0D\0A\00", align 1
@.str.2.27 = private unnamed_addr constant [32 x i8] c"abcdefghijklmnopqrstwxyz1234567\00", align 1
@.str.3.28 = private unnamed_addr constant [18 x i8] c"Origin data: %s\0D\0A\00", align 1
@.str.4.29 = private unnamed_addr constant [12 x i8] c"MD5 result:\00", align 1
@.str.5.30 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.6.31 = private unnamed_addr constant [7 x i8] c" %02x \00", align 1
@SystemCoreClock = dso_local local_unnamed_addr global i32 40000000, align 4, !dbg !370
@System_Initialize_Done = internal global i32 0, align 4, !dbg !438
@_sbrk_r.heap_end = internal unnamed_addr global i8* null, align 4, !dbg !440
@end = external dso_local global i8, align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"_exit\0A\00", align 1
@.str.1.39 = private unnamed_addr constant [10 x i8] c"_kill %d\0A\00", align 1
@.str.2.40 = private unnamed_addr constant [9 x i8] c"_getpid\0A\00", align 1
@build_date_time_str = dso_local local_unnamed_addr global [31 x i8] c"2022/12/13 07:54:50 GMT +00:00\00", align 1, !dbg !649
@sw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"SDK_V4.6.1\00", align 1, !dbg !654
@hw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"mt7687_hdk\00", align 1, !dbg !660

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_ResetTimer(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 !dbg !949 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !953, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata i32 %1, metadata !954, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata i1 %2, metadata !955, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !956
  %4 = icmp ugt i32 %0, 1, !dbg !957
  br i1 %4, label %5, label %8, !dbg !959

5:                                                ; preds = %3
  %6 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 75) #13, !dbg !960
  br label %7, !dbg !960

7:                                                ; preds = %5, %7
  br label %7, !dbg !960, !llvm.loop !962

8:                                                ; preds = %3
  switch i32 %0, label %21 [
    i32 0, label %9
    i32 1, label %15
  ], !dbg !963

9:                                                ; preds = %8
  store volatile i32 %1, i32* inttoptr (i32 -2096824300 to i32*), align 4, !dbg !964
  %10 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !967
  br i1 %2, label %11, label %13, !dbg !969

11:                                               ; preds = %9
  %12 = or i32 %10, 2, !dbg !970
  store volatile i32 %12, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !970
  br label %21, !dbg !972

13:                                               ; preds = %9
  %14 = and i32 %10, -3, !dbg !973
  store volatile i32 %14, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !973
  br label %21

15:                                               ; preds = %8
  store volatile i32 %1, i32* inttoptr (i32 -2096824284 to i32*), align 4, !dbg !975
  %16 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !978
  br i1 %2, label %17, label %19, !dbg !980

17:                                               ; preds = %15
  %18 = or i32 %16, 2, !dbg !981
  store volatile i32 %18, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !981
  br label %21, !dbg !983

19:                                               ; preds = %15
  %20 = and i32 %16, -3, !dbg !984
  store volatile i32 %20, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !984
  br label %21

21:                                               ; preds = %8, %19, %17, %11, %13
  ret void, !dbg !986
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_Start(i32 noundef %0) local_unnamed_addr #0 !dbg !987 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !991, metadata !DIExpression()), !dbg !992
  switch i32 %0, label %2 [
    i32 0, label %5
    i32 1, label %9
    i32 4, label %13
  ], !dbg !993

2:                                                ; preds = %1
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 96) #13, !dbg !994
  br label %4, !dbg !994

4:                                                ; preds = %2, %4
  br label %4, !dbg !994, !llvm.loop !997

5:                                                ; preds = %1
  %6 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !998
  %7 = or i32 %6, 1, !dbg !998
  store volatile i32 %7, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !998
  %8 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #13, !dbg !1001
  br label %16, !dbg !1002

9:                                                ; preds = %1
  %10 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1003
  %11 = or i32 %10, 1, !dbg !1003
  store volatile i32 %11, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1003
  %12 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #13, !dbg !1006
  br label %16, !dbg !1007

13:                                               ; preds = %1
  %14 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1008
  %15 = or i32 %14, 1, !dbg !1008
  store volatile i32 %15, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1008
  br label %16, !dbg !1011

16:                                               ; preds = %9, %13, %5
  ret void, !dbg !1012
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @GPT_Stop(i32 noundef %0) local_unnamed_addr #3 !dbg !1013 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1015, metadata !DIExpression()), !dbg !1016
  switch i32 %0, label %18 [
    i32 0, label %2
    i32 1, label %7
    i32 2, label %12
    i32 4, label %15
  ], !dbg !1017

2:                                                ; preds = %1
  %3 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1018
  %4 = and i32 %3, -2, !dbg !1018
  store volatile i32 %4, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1018
  %5 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1021
  %6 = and i32 %5, -2, !dbg !1021
  store volatile i32 %6, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1021
  store volatile i32 1, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1022
  br label %18, !dbg !1023

7:                                                ; preds = %1
  %8 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1024
  %9 = and i32 %8, -3, !dbg !1024
  store volatile i32 %9, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1024
  %10 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1027
  %11 = and i32 %10, -2, !dbg !1027
  store volatile i32 %11, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1027
  store volatile i32 2, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1028
  br label %18, !dbg !1029

12:                                               ; preds = %1
  %13 = load volatile i32, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1030
  %14 = and i32 %13, -2, !dbg !1030
  store volatile i32 %14, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1030
  br label %18, !dbg !1033

15:                                               ; preds = %1
  %16 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1034
  %17 = and i32 %16, -2, !dbg !1034
  store volatile i32 %17, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1034
  br label %18, !dbg !1037

18:                                               ; preds = %1, %7, %15, %12, %2
  ret void, !dbg !1038
}

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_INT_Handler(i32 %0) #0 !dbg !1039 {
  call void @llvm.dbg.value(metadata i32 undef, metadata !1041, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata i32 undef, metadata !1041, metadata !DIExpression()), !dbg !1043
  %2 = load volatile i32, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1044
  %3 = and i32 %2, 65535, !dbg !1045
  call void @llvm.dbg.value(metadata i32 %2, metadata !1042, metadata !DIExpression()), !dbg !1043
  store volatile i32 %3, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1046
  %4 = and i32 %2, 1, !dbg !1047
  %5 = icmp eq i32 %4, 0, !dbg !1047
  br i1 %5, label %6, label %9, !dbg !1049

6:                                                ; preds = %1
  %7 = and i32 %2, 2, !dbg !1050
  %8 = icmp eq i32 %7, 0, !dbg !1050
  br i1 %8, label %13, label %9, !dbg !1052

9:                                                ; preds = %6, %1
  %10 = phi i32 [ 0, %1 ], [ 1, %6 ]
  %11 = phi void ()** [ @GPTTimer.0, %1 ], [ @GPTTimer.1, %6 ]
  tail call void @clear_TMR_INT_status_bit(i32 noundef %10) #13, !dbg !1053
  %12 = load void ()*, void ()** %11, align 4, !dbg !1053
  tail call void %12() #13, !dbg !1053
  br label %13, !dbg !1054

13:                                               ; preds = %9, %6
  ret void, !dbg !1054
}

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_init(i32 noundef %0, i32 noundef %1, void ()* noundef %2) local_unnamed_addr #0 !dbg !1055 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1059, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i32 %1, metadata !1060, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata void ()* %2, metadata !1061, metadata !DIExpression()), !dbg !1062
  switch i32 %0, label %4 [
    i32 4, label %7
    i32 2, label %7
    i32 1, label %7
    i32 0, label %7
  ], !dbg !1063

4:                                                ; preds = %3
  %5 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 149) #13, !dbg !1064
  br label %6, !dbg !1064

6:                                                ; preds = %4, %6
  br label %6, !dbg !1064, !llvm.loop !1067

7:                                                ; preds = %3, %3, %3, %3
  %8 = icmp ult i32 %0, 2, !dbg !1068
  br i1 %8, label %9, label %13, !dbg !1069

9:                                                ; preds = %7
  %10 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 24, void (i32)* noundef nonnull @GPT_INT_Handler) #13, !dbg !1071
  %11 = tail call i32 @hal_nvic_set_priority(i32 noundef 24, i32 noundef 5) #13, !dbg !1073
  %12 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #13, !dbg !1074
  br label %13, !dbg !1075

13:                                               ; preds = %7, %9
  switch i32 %0, label %36 [
    i32 0, label %14
    i32 1, label %20
    i32 2, label %26
    i32 4, label %31
  ], !dbg !1076

14:                                               ; preds = %13
  store void ()* %2, void ()** @GPTTimer.0, align 4, !dbg !1077
  %15 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1080
  %16 = or i32 %15, 1, !dbg !1080
  store volatile i32 %16, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1080
  %17 = shl i32 %1, 2, !dbg !1081
  %18 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1082
  %19 = or i32 %18, %17, !dbg !1082
  store volatile i32 %19, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1082
  br label %36, !dbg !1083

20:                                               ; preds = %13
  store void ()* %2, void ()** @GPTTimer.1, align 4, !dbg !1084
  %21 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1087
  %22 = or i32 %21, 2, !dbg !1087
  store volatile i32 %22, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1087
  %23 = shl i32 %1, 2, !dbg !1088
  %24 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1089
  %25 = or i32 %24, %23, !dbg !1089
  store volatile i32 %25, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1089
  br label %36, !dbg !1090

26:                                               ; preds = %13
  %27 = shl i32 %1, 1, !dbg !1091
  %28 = or i32 %27, 1, !dbg !1094
  %29 = load volatile i32, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1095
  %30 = or i32 %29, %28, !dbg !1095
  store volatile i32 %30, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1095
  br label %36, !dbg !1096

31:                                               ; preds = %13
  %32 = shl i32 %1, 1, !dbg !1097
  %33 = or i32 %32, 1, !dbg !1100
  %34 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1101
  %35 = or i32 %34, %33, !dbg !1101
  store volatile i32 %35, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1101
  store volatile i32 0, i32* inttoptr (i32 -2096824220 to i32*), align 4, !dbg !1102
  br label %36, !dbg !1103

36:                                               ; preds = %13, %20, %31, %26, %14
  ret void, !dbg !1104
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @GPT_return_current_count(i32 noundef %0) local_unnamed_addr #0 !dbg !1105 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1109, metadata !DIExpression()), !dbg !1111
  switch i32 %0, label %2 [
    i32 0, label %8
    i32 1, label %5
    i32 2, label %6
    i32 4, label %7
  ], !dbg !1112

2:                                                ; preds = %1
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 177) #13, !dbg !1113
  br label %4, !dbg !1113

4:                                                ; preds = %4, %2
  br label %4, !dbg !1113, !llvm.loop !1116

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !1110, metadata !DIExpression()), !dbg !1111
  br label %8, !dbg !1117

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !1110, metadata !DIExpression()), !dbg !1111
  br label %8, !dbg !1121

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !1110, metadata !DIExpression()), !dbg !1111
  br label %8, !dbg !1124

8:                                                ; preds = %1, %5, %7, %6
  %9 = phi i32* [ inttoptr (i32 -2096824252 to i32*), %5 ], [ inttoptr (i32 -2096824268 to i32*), %6 ], [ inttoptr (i32 -2096824216 to i32*), %7 ], [ inttoptr (i32 -2096824256 to i32*), %1 ]
  %10 = load volatile i32, i32* %9, align 4, !dbg !1127
  call void @llvm.dbg.value(metadata i32 %10, metadata !1110, metadata !DIExpression()), !dbg !1111
  ret i32 %10, !dbg !1128
}

; Function Attrs: noinline nounwind optsize
define dso_local void @CM4_GPT2Init() local_unnamed_addr #0 !dbg !1129 {
  tail call void @GPT_init(i32 noundef 2, i32 noundef 1, void ()* noundef null) #14, !dbg !1131
  ret void, !dbg !1132
}

; Function Attrs: noinline nounwind optsize
define dso_local void @CM4_GPT4Init() local_unnamed_addr #0 !dbg !1133 {
  tail call void @GPT_init(i32 noundef 4, i32 noundef 1, void ()* noundef null) #14, !dbg !1134
  ret void, !dbg !1135
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_ConfDirection(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1136 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1141, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata i8 %1, metadata !1142, metadata !DIExpression()), !dbg !1146
  %3 = lshr i32 %0, 5, !dbg !1147
  call void @llvm.dbg.value(metadata i32 %3, metadata !1143, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1146
  %4 = trunc i32 %0 to i16, !dbg !1148
  %5 = and i16 %4, 31, !dbg !1148
  call void @llvm.dbg.value(metadata i16 %4, metadata !1145, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1146
  %6 = trunc i32 %3 to i16, !dbg !1149
  switch i16 %6, label %97 [
    i16 0, label %7
    i16 1, label %70
  ], !dbg !1149

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 1, !dbg !1150
  %9 = zext i16 %5 to i32, !dbg !1153
  %10 = icmp ult i16 %5, 27, !dbg !1153
  br i1 %8, label %11, label %46, !dbg !1154

11:                                               ; preds = %7
  br i1 %10, label %12, label %17, !dbg !1155

12:                                               ; preds = %11
  %13 = shl nuw i32 1, %9, !dbg !1157
  %14 = xor i32 %13, -1, !dbg !1160
  %15 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1161
  %16 = and i32 %15, %14, !dbg !1161
  store volatile i32 %16, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1161
  br label %44, !dbg !1162

17:                                               ; preds = %11
  %18 = trunc i32 %0 to i5, !dbg !1163
  switch i5 %18, label %39 [
    i5 -5, label %19
    i5 -4, label %24
    i5 -3, label %29
    i5 -2, label %34
  ], !dbg !1163

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1164
  %21 = and i32 %20, -3, !dbg !1164
  store volatile i32 %21, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1164
  %22 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1167
  %23 = or i32 %22, 2048, !dbg !1167
  store volatile i32 %23, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1167
  br label %44, !dbg !1168

24:                                               ; preds = %17
  %25 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1169
  %26 = and i32 %25, -3, !dbg !1169
  store volatile i32 %26, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1169
  %27 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1172
  %28 = or i32 %27, 2048, !dbg !1172
  store volatile i32 %28, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1172
  br label %44, !dbg !1173

29:                                               ; preds = %17
  %30 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1174
  %31 = and i32 %30, -3, !dbg !1174
  store volatile i32 %31, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1174
  %32 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1177
  %33 = or i32 %32, 2048, !dbg !1177
  store volatile i32 %33, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1177
  br label %44, !dbg !1178

34:                                               ; preds = %17
  %35 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1179
  %36 = and i32 %35, -3, !dbg !1179
  store volatile i32 %36, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1179
  %37 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1182
  %38 = or i32 %37, 2048, !dbg !1182
  store volatile i32 %38, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1182
  br label %44, !dbg !1183

39:                                               ; preds = %17
  %40 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1184
  %41 = and i32 %40, -3, !dbg !1184
  store volatile i32 %41, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1184
  %42 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1187
  %43 = or i32 %42, 2048, !dbg !1187
  store volatile i32 %43, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1187
  br label %44, !dbg !1188

44:                                               ; preds = %19, %29, %39, %34, %24, %12
  %45 = shl nuw i32 1, %9, !dbg !1189
  store volatile i32 %45, i32* inttoptr (i32 -2097106796 to i32*), align 4, !dbg !1189
  br label %97, !dbg !1190

46:                                               ; preds = %7
  br i1 %10, label %47, label %51, !dbg !1191

47:                                               ; preds = %46
  %48 = shl nuw i32 1, %9, !dbg !1193
  %49 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1196
  %50 = or i32 %49, %48, !dbg !1196
  store volatile i32 %50, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1196
  br label %68, !dbg !1197

51:                                               ; preds = %46
  %52 = trunc i32 %0 to i5, !dbg !1198
  switch i5 %52, label %65 [
    i5 -5, label %53
    i5 -4, label %56
    i5 -3, label %59
    i5 -2, label %62
  ], !dbg !1198

53:                                               ; preds = %51
  %54 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1199
  %55 = or i32 %54, 2050, !dbg !1199
  store volatile i32 %55, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1199
  br label %68, !dbg !1202

56:                                               ; preds = %51
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1203
  %58 = or i32 %57, 2050, !dbg !1203
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1203
  br label %68, !dbg !1206

59:                                               ; preds = %51
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1207
  %61 = or i32 %60, 2050, !dbg !1207
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1207
  br label %68, !dbg !1210

62:                                               ; preds = %51
  %63 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1211
  %64 = or i32 %63, 2050, !dbg !1211
  store volatile i32 %64, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1211
  br label %68, !dbg !1214

65:                                               ; preds = %51
  %66 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1215
  %67 = or i32 %66, 2050, !dbg !1215
  store volatile i32 %67, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1215
  br label %68, !dbg !1218

68:                                               ; preds = %53, %59, %65, %62, %56, %47
  %69 = shl nuw i32 1, %9, !dbg !1219
  store volatile i32 %69, i32* inttoptr (i32 -2097106792 to i32*), align 8, !dbg !1219
  br label %97

70:                                               ; preds = %2
  %71 = icmp eq i8 %1, 1, !dbg !1220
  %72 = zext i16 %5 to i32, !dbg !1222
  %73 = icmp eq i16 %5, 0, !dbg !1222
  br i1 %71, label %74, label %87, !dbg !1223

74:                                               ; preds = %70
  br i1 %73, label %80, label %75, !dbg !1224

75:                                               ; preds = %74
  %76 = shl nuw i32 1, %72, !dbg !1226
  %77 = xor i32 %76, -1, !dbg !1229
  %78 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1230
  %79 = and i32 %78, %77, !dbg !1230
  store volatile i32 %79, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1230
  br label %85, !dbg !1231

80:                                               ; preds = %74
  %81 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1232
  %82 = and i32 %81, -3, !dbg !1232
  store volatile i32 %82, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1232
  %83 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1234
  %84 = or i32 %83, 2048, !dbg !1234
  store volatile i32 %84, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1234
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i32 [ 1, %80 ], [ %76, %75 ], !dbg !1235
  store volatile i32 %86, i32* inttoptr (i32 -2097106780 to i32*), align 4, !dbg !1235
  br label %97, !dbg !1236

87:                                               ; preds = %70
  br i1 %73, label %92, label %88, !dbg !1237

88:                                               ; preds = %87
  %89 = shl nuw i32 1, %72, !dbg !1239
  %90 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1242
  %91 = or i32 %90, %89, !dbg !1242
  store volatile i32 %91, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1242
  br label %95, !dbg !1243

92:                                               ; preds = %87
  %93 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1244
  %94 = or i32 %93, 2050, !dbg !1244
  store volatile i32 %94, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1244
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi i32 [ 1, %92 ], [ %89, %88 ], !dbg !1246
  store volatile i32 %96, i32* inttoptr (i32 -2097106776 to i32*), align 8, !dbg !1246
  br label %97

97:                                               ; preds = %68, %44, %95, %85, %2
  %98 = phi i32 [ -1, %2 ], [ 0, %85 ], [ 0, %95 ], [ 0, %44 ], [ 0, %68 ], !dbg !1146
  ret i32 %98, !dbg !1247
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPO_Write(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1248 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1250, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata i8 %1, metadata !1251, metadata !DIExpression()), !dbg !1254
  %3 = lshr i32 %0, 5, !dbg !1255
  call void @llvm.dbg.value(metadata i32 %3, metadata !1252, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1254
  %4 = trunc i32 %0 to i16, !dbg !1256
  %5 = and i16 %4, 31, !dbg !1256
  call void @llvm.dbg.value(metadata i16 %5, metadata !1253, metadata !DIExpression()), !dbg !1254
  %6 = trunc i32 %3 to i16, !dbg !1257
  switch i16 %6, label %19 [
    i16 0, label %7
    i16 1, label %13
  ], !dbg !1257

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 0, !dbg !1258
  %9 = zext i16 %5 to i32, !dbg !1261
  %10 = shl nuw i32 1, %9, !dbg !1261
  br i1 %8, label %12, label %11, !dbg !1262

11:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106844 to i32*), align 4, !dbg !1263
  br label %19, !dbg !1265

12:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106840 to i32*), align 8, !dbg !1266
  br label %19

13:                                               ; preds = %2
  %14 = icmp eq i8 %1, 0, !dbg !1268
  %15 = zext i16 %5 to i32, !dbg !1270
  %16 = shl nuw i32 1, %15, !dbg !1270
  br i1 %14, label %18, label %17, !dbg !1271

17:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106828 to i32*), align 4, !dbg !1272
  br label %19, !dbg !1274

18:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106824 to i32*), align 8, !dbg !1275
  br label %19

19:                                               ; preds = %12, %11, %18, %17, %2
  %20 = phi i32 [ -1, %2 ], [ 0, %17 ], [ 0, %18 ], [ 0, %11 ], [ 0, %12 ], !dbg !1254
  ret i32 %20, !dbg !1277
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DOUT(i32 noundef %0) local_unnamed_addr #4 !dbg !1278 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1282, metadata !DIExpression()), !dbg !1286
  %2 = lshr i32 %0, 5, !dbg !1287
  call void @llvm.dbg.value(metadata i32 %2, metadata !1283, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1286
  %3 = and i32 %0, 31, !dbg !1288
  call void @llvm.dbg.value(metadata i32 %0, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1286
  call void @llvm.dbg.value(metadata i8 0, metadata !1285, metadata !DIExpression()), !dbg !1286
  %4 = trunc i32 %2 to i16, !dbg !1289
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1289

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1285, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1286
  br label %6, !dbg !1290

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106832 to i32*), %5 ], [ inttoptr (i32 -2097106848 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1292
  %9 = lshr i32 %8, %3, !dbg !1292
  %10 = trunc i32 %9 to i8, !dbg !1292
  %11 = and i8 %10, 1, !dbg !1292
  call void @llvm.dbg.value(metadata i8 %11, metadata !1285, metadata !DIExpression()), !dbg !1286
  br label %12, !dbg !1293

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1286
  ret i8 %13, !dbg !1294
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DIN(i32 noundef %0) local_unnamed_addr #4 !dbg !1295 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1297, metadata !DIExpression()), !dbg !1301
  %2 = lshr i32 %0, 5, !dbg !1302
  call void @llvm.dbg.value(metadata i32 %2, metadata !1298, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1301
  %3 = and i32 %0, 31, !dbg !1303
  call void @llvm.dbg.value(metadata i32 %0, metadata !1299, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1301
  call void @llvm.dbg.value(metadata i8 0, metadata !1300, metadata !DIExpression()), !dbg !1301
  %4 = trunc i32 %2 to i16, !dbg !1304
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1304

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1300, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1301
  br label %6, !dbg !1305

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106748 to i32*), %5 ], [ inttoptr (i32 -2097106752 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 4, !dbg !1307
  %9 = lshr i32 %8, %3, !dbg !1307
  %10 = trunc i32 %9 to i8, !dbg !1307
  %11 = and i8 %10, 1, !dbg !1307
  call void @llvm.dbg.value(metadata i8 %11, metadata !1300, metadata !DIExpression()), !dbg !1301
  br label %12, !dbg !1308

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1301
  ret i8 %13, !dbg !1309
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_OutEnable(i32 noundef %0) local_unnamed_addr #4 !dbg !1310 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1312, metadata !DIExpression()), !dbg !1316
  %2 = lshr i32 %0, 5, !dbg !1317
  call void @llvm.dbg.value(metadata i32 %2, metadata !1313, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1316
  %3 = and i32 %0, 31, !dbg !1318
  call void @llvm.dbg.value(metadata i32 %0, metadata !1314, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1316
  call void @llvm.dbg.value(metadata i8 0, metadata !1315, metadata !DIExpression()), !dbg !1316
  %4 = trunc i32 %2 to i16, !dbg !1319
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1319

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1315, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1316
  br label %6, !dbg !1320

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106784 to i32*), %5 ], [ inttoptr (i32 -2097106800 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1322
  %9 = lshr i32 %8, %3, !dbg !1322
  %10 = trunc i32 %9 to i8, !dbg !1322
  %11 = and i8 %10, 1, !dbg !1322
  call void @llvm.dbg.value(metadata i8 %11, metadata !1315, metadata !DIExpression()), !dbg !1316
  br label %12, !dbg !1323

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1316
  ret i8 %13, !dbg !1324
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_SET(i32 noundef %0) local_unnamed_addr #3 !dbg !1325 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1329, metadata !DIExpression()), !dbg !1332
  %2 = lshr i32 %0, 5, !dbg !1333
  call void @llvm.dbg.value(metadata i32 %2, metadata !1330, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1332
  %3 = trunc i32 %0 to i16, !dbg !1334
  %4 = and i16 %3, 31, !dbg !1334
  call void @llvm.dbg.value(metadata i16 %3, metadata !1331, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1332
  %5 = tail call i32 @halGPIO_PullDown_RESET(i32 noundef %0) #14, !dbg !1335
  %6 = trunc i32 %2 to i16, !dbg !1336
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1336

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1337
  br i1 %8, label %9, label %12, !dbg !1340

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1341
  %11 = shl nuw nsw i32 1, %10, !dbg !1342
  store volatile i32 %11, i32* inttoptr (i32 -2097106940 to i32*), align 4, !dbg !1342
  br label %49, !dbg !1344

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1345
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1345

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1346
  %16 = and i32 %15, -29, !dbg !1346
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1346
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1349
  %18 = or i32 %17, 2052, !dbg !1349
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1349
  br label %49, !dbg !1350

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1351
  %21 = and i32 %20, -29, !dbg !1351
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1351
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1354
  %23 = or i32 %22, 2052, !dbg !1354
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1354
  br label %49, !dbg !1355

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1356
  %26 = and i32 %25, -29, !dbg !1356
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1356
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1359
  %28 = or i32 %27, 2052, !dbg !1359
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1359
  br label %49, !dbg !1360

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1361
  %31 = and i32 %30, -29, !dbg !1361
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1361
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1364
  %33 = or i32 %32, 2052, !dbg !1364
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1364
  br label %49, !dbg !1365

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1366
  %36 = and i32 %35, -29, !dbg !1366
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1366
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1369
  %38 = or i32 %37, 2052, !dbg !1369
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1369
  br label %49, !dbg !1370

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1371
  br i1 %40, label %41, label %46, !dbg !1373

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1374
  %43 = and i32 %42, -29, !dbg !1374
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1374
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1376
  %45 = or i32 %44, 2052, !dbg !1376
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1376
  br label %49, !dbg !1377

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1378
  %48 = shl nuw i32 1, %47, !dbg !1378
  store volatile i32 %48, i32* inttoptr (i32 -2097106924 to i32*), align 4, !dbg !1378
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1332
  ret i32 %50, !dbg !1380
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_RESET(i32 noundef %0) local_unnamed_addr #3 !dbg !1381 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1383, metadata !DIExpression()), !dbg !1386
  %2 = lshr i32 %0, 5, !dbg !1387
  call void @llvm.dbg.value(metadata i32 %2, metadata !1384, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1386
  %3 = trunc i32 %0 to i16, !dbg !1388
  %4 = and i16 %3, 31, !dbg !1388
  call void @llvm.dbg.value(metadata i16 %3, metadata !1385, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1386
  %5 = trunc i32 %2 to i16, !dbg !1389
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1389

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1390
  br i1 %7, label %8, label %11, !dbg !1393

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1394
  %10 = shl nuw nsw i32 1, %9, !dbg !1395
  store volatile i32 %10, i32* inttoptr (i32 -2097106888 to i32*), align 8, !dbg !1395
  br label %48, !dbg !1397

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1398
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1398

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1399
  %15 = and i32 %14, -29, !dbg !1399
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1399
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1402
  %17 = or i32 %16, 2048, !dbg !1402
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1402
  br label %48, !dbg !1403

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1404
  %20 = and i32 %19, -29, !dbg !1404
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1404
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1407
  %22 = or i32 %21, 2048, !dbg !1407
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1407
  br label %48, !dbg !1408

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1409
  %25 = and i32 %24, -29, !dbg !1409
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1409
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1412
  %27 = or i32 %26, 2048, !dbg !1412
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1412
  br label %48, !dbg !1413

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1414
  %30 = and i32 %29, -29, !dbg !1414
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1414
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1417
  %32 = or i32 %31, 2048, !dbg !1417
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1417
  br label %48, !dbg !1418

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1419
  %35 = and i32 %34, -29, !dbg !1419
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1419
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1422
  %37 = or i32 %36, 2048, !dbg !1422
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1422
  br label %48, !dbg !1423

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1424
  br i1 %39, label %40, label %45, !dbg !1426

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1427
  %42 = and i32 %41, -29, !dbg !1427
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1427
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1429
  %44 = or i32 %43, 2048, !dbg !1429
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1429
  br label %48, !dbg !1430

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1431
  %47 = shl nuw i32 1, %46, !dbg !1431
  store volatile i32 %47, i32* inttoptr (i32 -2097106872 to i32*), align 8, !dbg !1431
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1386
  ret i32 %49, !dbg !1433
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_RESET(i32 noundef %0) local_unnamed_addr #3 !dbg !1434 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1436, metadata !DIExpression()), !dbg !1439
  %2 = lshr i32 %0, 5, !dbg !1440
  call void @llvm.dbg.value(metadata i32 %2, metadata !1437, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1439
  %3 = trunc i32 %0 to i16, !dbg !1441
  %4 = and i16 %3, 31, !dbg !1441
  call void @llvm.dbg.value(metadata i16 %3, metadata !1438, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1439
  %5 = trunc i32 %2 to i16, !dbg !1442
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1442

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1443
  br i1 %7, label %8, label %11, !dbg !1446

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1447
  %10 = shl nuw nsw i32 1, %9, !dbg !1448
  store volatile i32 %10, i32* inttoptr (i32 -2097106936 to i32*), align 8, !dbg !1448
  br label %48, !dbg !1450

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1451
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1451

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1452
  %15 = and i32 %14, -29, !dbg !1452
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1452
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1455
  %17 = or i32 %16, 2048, !dbg !1455
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1455
  br label %48, !dbg !1456

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1457
  %20 = and i32 %19, -29, !dbg !1457
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1457
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1460
  %22 = or i32 %21, 2048, !dbg !1460
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1460
  br label %48, !dbg !1461

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1462
  %25 = and i32 %24, -29, !dbg !1462
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1462
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1465
  %27 = or i32 %26, 2048, !dbg !1465
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1465
  br label %48, !dbg !1466

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1467
  %30 = and i32 %29, -29, !dbg !1467
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1467
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1470
  %32 = or i32 %31, 2048, !dbg !1470
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1470
  br label %48, !dbg !1471

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1472
  %35 = and i32 %34, -29, !dbg !1472
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1472
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1475
  %37 = or i32 %36, 2048, !dbg !1475
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1475
  br label %48, !dbg !1476

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1477
  br i1 %39, label %40, label %45, !dbg !1479

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1480
  %42 = and i32 %41, -29, !dbg !1480
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1480
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1482
  %44 = or i32 %43, 2048, !dbg !1482
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1482
  br label %48, !dbg !1483

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1484
  %47 = shl nuw i32 1, %46, !dbg !1484
  store volatile i32 %47, i32* inttoptr (i32 -2097106920 to i32*), align 8, !dbg !1484
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1439
  ret i32 %49, !dbg !1486
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_SET(i32 noundef %0) local_unnamed_addr #3 !dbg !1487 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1489, metadata !DIExpression()), !dbg !1492
  %2 = lshr i32 %0, 5, !dbg !1493
  call void @llvm.dbg.value(metadata i32 %2, metadata !1490, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1492
  %3 = trunc i32 %0 to i16, !dbg !1494
  %4 = and i16 %3, 31, !dbg !1494
  call void @llvm.dbg.value(metadata i16 %3, metadata !1491, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1492
  %5 = tail call i32 @halGPIO_PullUp_RESET(i32 noundef %0) #14, !dbg !1495
  %6 = trunc i32 %2 to i16, !dbg !1496
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1496

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1497
  br i1 %8, label %9, label %12, !dbg !1500

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1501
  %11 = shl nuw nsw i32 1, %10, !dbg !1502
  store volatile i32 %11, i32* inttoptr (i32 -2097106892 to i32*), align 4, !dbg !1502
  br label %49, !dbg !1504

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1505
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1505

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1506
  %16 = and i32 %15, -29, !dbg !1506
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1506
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1509
  %18 = or i32 %17, 2068, !dbg !1509
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1509
  br label %49, !dbg !1510

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1511
  %21 = and i32 %20, -29, !dbg !1511
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1511
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1514
  %23 = or i32 %22, 2068, !dbg !1514
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1514
  br label %49, !dbg !1515

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1516
  %26 = and i32 %25, -29, !dbg !1516
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1516
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1519
  %28 = or i32 %27, 2068, !dbg !1519
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1519
  br label %49, !dbg !1520

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1521
  %31 = and i32 %30, -29, !dbg !1521
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1521
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1524
  %33 = or i32 %32, 2068, !dbg !1524
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1524
  br label %49, !dbg !1525

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1526
  %36 = and i32 %35, -29, !dbg !1526
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1526
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1529
  %38 = or i32 %37, 2068, !dbg !1529
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1529
  br label %49, !dbg !1530

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1531
  br i1 %40, label %41, label %46, !dbg !1533

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1534
  %43 = and i32 %42, -29, !dbg !1534
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1534
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1536
  %45 = or i32 %44, 2068, !dbg !1536
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1536
  br label %49, !dbg !1537

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1538
  %48 = shl nuw i32 1, %47, !dbg !1538
  store volatile i32 %48, i32* inttoptr (i32 -2097106876 to i32*), align 4, !dbg !1538
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1492
  ret i32 %50, !dbg !1540
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_SetDriving(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1541 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1543, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %1, metadata !1544, metadata !DIExpression()), !dbg !1547
  %3 = lshr i32 %0, 4, !dbg !1548
  call void @llvm.dbg.value(metadata i32 %3, metadata !1545, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1547
  %4 = trunc i32 %0 to i16, !dbg !1549
  %5 = and i16 %4, 15, !dbg !1549
  call void @llvm.dbg.value(metadata i16 %4, metadata !1546, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1547
  %6 = trunc i32 %3 to i16, !dbg !1550
  switch i16 %6, label %131 [
    i16 0, label %7
    i16 1, label %20
    i16 2, label %92
    i16 3, label %118
  ], !dbg !1550

7:                                                ; preds = %2
  %8 = shl nuw nsw i16 %5, 1, !dbg !1551
  %9 = zext i16 %8 to i32, !dbg !1551
  %10 = shl nuw i32 3, %9, !dbg !1553
  %11 = xor i32 %10, -1, !dbg !1554
  %12 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1555
  %13 = and i32 %12, %11, !dbg !1555
  store volatile i32 %13, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1555
  %14 = lshr i8 %1, 2, !dbg !1556
  %15 = zext i8 %14 to i32, !dbg !1556
  %16 = add nsw i32 %15, -1, !dbg !1557
  %17 = shl i32 %16, %9, !dbg !1558
  %18 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1559
  %19 = or i32 %18, %17, !dbg !1559
  store volatile i32 %19, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1559
  br label %131, !dbg !1560

20:                                               ; preds = %2
  %21 = icmp ult i16 %5, 11, !dbg !1561
  br i1 %21, label %22, label %35, !dbg !1563

22:                                               ; preds = %20
  %23 = shl nuw nsw i16 %5, 1, !dbg !1564
  %24 = zext i16 %23 to i32, !dbg !1564
  %25 = shl nuw nsw i32 3, %24, !dbg !1566
  %26 = xor i32 %25, -1, !dbg !1567
  %27 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1568
  %28 = and i32 %27, %26, !dbg !1568
  store volatile i32 %28, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1568
  %29 = lshr i8 %1, 2, !dbg !1569
  %30 = zext i8 %29 to i32, !dbg !1569
  %31 = add nsw i32 %30, -1, !dbg !1570
  %32 = shl nsw i32 %31, %24, !dbg !1571
  %33 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1572
  %34 = or i32 %33, %32, !dbg !1572
  store volatile i32 %34, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1572
  br label %131, !dbg !1573

35:                                               ; preds = %20
  %36 = trunc i32 %0 to i4, !dbg !1574
  switch i4 %36, label %81 [
    i4 -5, label %37
    i4 -4, label %48
    i4 -3, label %59
    i4 -2, label %70
  ], !dbg !1574

37:                                               ; preds = %35
  %38 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1575
  %39 = and i32 %38, -449, !dbg !1575
  store volatile i32 %39, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1575
  %40 = lshr i8 %1, 1, !dbg !1578
  %41 = zext i8 %40 to i32, !dbg !1578
  %42 = shl nuw nsw i32 %41, 6, !dbg !1579
  %43 = add nsw i32 %42, -64, !dbg !1579
  %44 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1580
  %45 = or i32 %44, %43, !dbg !1580
  store volatile i32 %45, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1580
  %46 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1581
  %47 = or i32 %46, 2048, !dbg !1581
  store volatile i32 %47, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1581
  br label %131, !dbg !1582

48:                                               ; preds = %35
  %49 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1583
  %50 = and i32 %49, -449, !dbg !1583
  store volatile i32 %50, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1583
  %51 = lshr i8 %1, 1, !dbg !1586
  %52 = zext i8 %51 to i32, !dbg !1586
  %53 = shl nuw nsw i32 %52, 6, !dbg !1587
  %54 = add nsw i32 %53, -64, !dbg !1587
  %55 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1588
  %56 = or i32 %55, %54, !dbg !1588
  store volatile i32 %56, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1588
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1589
  %58 = or i32 %57, 2048, !dbg !1589
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1589
  br label %131, !dbg !1590

59:                                               ; preds = %35
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1591
  %61 = and i32 %60, -449, !dbg !1591
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1591
  %62 = lshr i8 %1, 1, !dbg !1594
  %63 = zext i8 %62 to i32, !dbg !1594
  %64 = shl nuw nsw i32 %63, 6, !dbg !1595
  %65 = add nsw i32 %64, -64, !dbg !1595
  %66 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1596
  %67 = or i32 %66, %65, !dbg !1596
  store volatile i32 %67, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1596
  %68 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1597
  %69 = or i32 %68, 2048, !dbg !1597
  store volatile i32 %69, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1597
  br label %131, !dbg !1598

70:                                               ; preds = %35
  %71 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1599
  %72 = and i32 %71, -449, !dbg !1599
  store volatile i32 %72, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1599
  %73 = lshr i8 %1, 1, !dbg !1602
  %74 = zext i8 %73 to i32, !dbg !1602
  %75 = shl nuw nsw i32 %74, 6, !dbg !1603
  %76 = add nsw i32 %75, -64, !dbg !1603
  %77 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1604
  %78 = or i32 %77, %76, !dbg !1604
  store volatile i32 %78, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1604
  %79 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1605
  %80 = or i32 %79, 2048, !dbg !1605
  store volatile i32 %80, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1605
  br label %131, !dbg !1606

81:                                               ; preds = %35
  %82 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1607
  %83 = and i32 %82, -449, !dbg !1607
  store volatile i32 %83, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1607
  %84 = lshr i8 %1, 1, !dbg !1610
  %85 = zext i8 %84 to i32, !dbg !1610
  %86 = shl nuw nsw i32 %85, 6, !dbg !1611
  %87 = add nsw i32 %86, -64, !dbg !1611
  %88 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1612
  %89 = or i32 %88, %87, !dbg !1612
  store volatile i32 %89, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1612
  %90 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1613
  %91 = or i32 %90, 2048, !dbg !1613
  store volatile i32 %91, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1613
  br label %131, !dbg !1614

92:                                               ; preds = %2
  %93 = icmp eq i16 %5, 0, !dbg !1615
  br i1 %93, label %94, label %105, !dbg !1617

94:                                               ; preds = %92
  %95 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1618
  %96 = and i32 %95, -449, !dbg !1618
  store volatile i32 %96, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1618
  %97 = lshr i8 %1, 1, !dbg !1620
  %98 = zext i8 %97 to i32, !dbg !1620
  %99 = shl nuw nsw i32 %98, 6, !dbg !1621
  %100 = add nsw i32 %99, -64, !dbg !1621
  %101 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1622
  %102 = or i32 %101, %100, !dbg !1622
  store volatile i32 %102, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1622
  %103 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1623
  %104 = or i32 %103, 2048, !dbg !1623
  store volatile i32 %104, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1623
  br label %131, !dbg !1624

105:                                              ; preds = %92
  %106 = shl nuw nsw i16 %5, 1, !dbg !1625
  %107 = zext i16 %106 to i32, !dbg !1625
  %108 = shl nuw i32 3, %107, !dbg !1627
  %109 = xor i32 %108, -1, !dbg !1628
  %110 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1629
  %111 = and i32 %110, %109, !dbg !1629
  store volatile i32 %111, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1629
  %112 = lshr i8 %1, 2, !dbg !1630
  %113 = zext i8 %112 to i32, !dbg !1630
  %114 = add nsw i32 %113, -1, !dbg !1631
  %115 = shl i32 %114, %107, !dbg !1632
  %116 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1633
  %117 = or i32 %116, %115, !dbg !1633
  store volatile i32 %117, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1633
  br label %131

118:                                              ; preds = %2
  %119 = shl nuw nsw i16 %5, 1, !dbg !1634
  %120 = zext i16 %119 to i32, !dbg !1634
  %121 = shl nuw i32 3, %120, !dbg !1635
  %122 = xor i32 %121, -1, !dbg !1636
  %123 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1637
  %124 = and i32 %123, %122, !dbg !1637
  store volatile i32 %124, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1637
  %125 = lshr i8 %1, 2, !dbg !1638
  %126 = zext i8 %125 to i32, !dbg !1638
  %127 = add nsw i32 %126, -1, !dbg !1639
  %128 = shl i32 %127, %120, !dbg !1640
  %129 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1641
  %130 = or i32 %129, %128, !dbg !1641
  store volatile i32 %130, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1641
  br label %131, !dbg !1642

131:                                              ; preds = %7, %118, %37, %59, %81, %70, %48, %22, %105, %94, %2
  %132 = phi i32 [ -1, %2 ], [ 0, %94 ], [ 0, %105 ], [ 0, %22 ], [ 0, %48 ], [ 0, %70 ], [ 0, %81 ], [ 0, %59 ], [ 0, %37 ], [ 0, %118 ], [ 0, %7 ], !dbg !1547
  ret i32 %132, !dbg !1643
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @halGPIO_GetDriving(i32 noundef %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #4 !dbg !1644 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1649, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %1, metadata !1650, metadata !DIExpression()), !dbg !1654
  %3 = lshr i32 %0, 4, !dbg !1655
  call void @llvm.dbg.value(metadata i32 %3, metadata !1651, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1654
  %4 = trunc i32 %0 to i16, !dbg !1656
  %5 = and i16 %4, 15, !dbg !1656
  call void @llvm.dbg.value(metadata i16 %4, metadata !1652, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1654
  %6 = trunc i32 %3 to i16, !dbg !1657
  switch i16 %6, label %91 [
    i16 0, label %7
    i16 1, label %17
    i16 2, label %61
    i16 3, label %79
  ], !dbg !1657

7:                                                ; preds = %2
  %8 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1658
  call void @llvm.dbg.value(metadata i32 %8, metadata !1653, metadata !DIExpression()), !dbg !1654
  %9 = shl nuw nsw i16 %5, 1, !dbg !1660
  %10 = zext i16 %9 to i32, !dbg !1660
  %11 = shl nuw i32 3, %10, !dbg !1661
  %12 = and i32 %8, %11, !dbg !1662
  call void @llvm.dbg.value(metadata i32 %12, metadata !1653, metadata !DIExpression()), !dbg !1654
  %13 = lshr i32 %12, %10, !dbg !1663
  %14 = trunc i32 %13 to i8, !dbg !1664
  %15 = shl i8 %14, 2, !dbg !1664
  %16 = add i8 %15, 4, !dbg !1664
  br label %89, !dbg !1665

17:                                               ; preds = %2
  %18 = icmp ult i16 %5, 11, !dbg !1666
  br i1 %18, label %19, label %29, !dbg !1668

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1669
  call void @llvm.dbg.value(metadata i32 %20, metadata !1653, metadata !DIExpression()), !dbg !1654
  %21 = shl nuw nsw i16 %5, 1, !dbg !1671
  %22 = zext i16 %21 to i32, !dbg !1671
  %23 = shl nuw nsw i32 3, %22, !dbg !1672
  %24 = and i32 %20, %23, !dbg !1673
  call void @llvm.dbg.value(metadata i32 %24, metadata !1653, metadata !DIExpression()), !dbg !1654
  %25 = lshr i32 %24, %22, !dbg !1674
  %26 = trunc i32 %25 to i8, !dbg !1675
  %27 = shl i8 %26, 2, !dbg !1675
  %28 = add i8 %27, 4, !dbg !1675
  br label %89, !dbg !1676

29:                                               ; preds = %17
  %30 = trunc i32 %0 to i4, !dbg !1677
  switch i4 %30, label %55 [
    i4 -5, label %31
    i4 -4, label %37
    i4 -3, label %43
    i4 -2, label %49
  ], !dbg !1677

31:                                               ; preds = %29
  %32 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1678
  call void @llvm.dbg.value(metadata i32 %32, metadata !1653, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 %32, metadata !1653, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1654
  %33 = lshr i32 %32, 5, !dbg !1681
  %34 = trunc i32 %33 to i8, !dbg !1682
  %35 = and i8 %34, 14, !dbg !1682
  %36 = add nuw nsw i8 %35, 2, !dbg !1682
  br label %89, !dbg !1683

37:                                               ; preds = %29
  %38 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1684
  call void @llvm.dbg.value(metadata i32 %38, metadata !1653, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 %38, metadata !1653, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1654
  %39 = lshr i32 %38, 5, !dbg !1687
  %40 = trunc i32 %39 to i8, !dbg !1688
  %41 = and i8 %40, 14, !dbg !1688
  %42 = add nuw nsw i8 %41, 2, !dbg !1688
  br label %89, !dbg !1689

43:                                               ; preds = %29
  %44 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1690
  call void @llvm.dbg.value(metadata i32 %44, metadata !1653, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 %44, metadata !1653, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1654
  %45 = lshr i32 %44, 5, !dbg !1693
  %46 = trunc i32 %45 to i8, !dbg !1694
  %47 = and i8 %46, 14, !dbg !1694
  %48 = add nuw nsw i8 %47, 2, !dbg !1694
  br label %89, !dbg !1695

49:                                               ; preds = %29
  %50 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1696
  call void @llvm.dbg.value(metadata i32 %50, metadata !1653, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 %50, metadata !1653, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1654
  %51 = lshr i32 %50, 5, !dbg !1699
  %52 = trunc i32 %51 to i8, !dbg !1700
  %53 = and i8 %52, 14, !dbg !1700
  %54 = add nuw nsw i8 %53, 2, !dbg !1700
  br label %89, !dbg !1701

55:                                               ; preds = %29
  %56 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1702
  call void @llvm.dbg.value(metadata i32 %56, metadata !1653, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 %56, metadata !1653, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1654
  %57 = lshr i32 %56, 5, !dbg !1705
  %58 = trunc i32 %57 to i8, !dbg !1706
  %59 = and i8 %58, 14, !dbg !1706
  %60 = add nuw nsw i8 %59, 2, !dbg !1706
  br label %89, !dbg !1707

61:                                               ; preds = %2
  %62 = icmp eq i16 %5, 0, !dbg !1708
  br i1 %62, label %63, label %69, !dbg !1710

63:                                               ; preds = %61
  %64 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1711
  call void @llvm.dbg.value(metadata i32 %64, metadata !1653, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 %64, metadata !1653, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1654
  %65 = lshr i32 %64, 5, !dbg !1713
  %66 = trunc i32 %65 to i8, !dbg !1714
  %67 = and i8 %66, 14, !dbg !1714
  %68 = add nuw nsw i8 %67, 2, !dbg !1714
  br label %89, !dbg !1715

69:                                               ; preds = %61
  %70 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1716
  call void @llvm.dbg.value(metadata i32 %70, metadata !1653, metadata !DIExpression()), !dbg !1654
  %71 = shl nuw nsw i16 %5, 1, !dbg !1718
  %72 = zext i16 %71 to i32, !dbg !1718
  %73 = shl nuw i32 3, %72, !dbg !1719
  %74 = and i32 %70, %73, !dbg !1720
  call void @llvm.dbg.value(metadata i32 %74, metadata !1653, metadata !DIExpression()), !dbg !1654
  %75 = lshr i32 %74, %72, !dbg !1721
  %76 = trunc i32 %75 to i8, !dbg !1722
  %77 = shl i8 %76, 2, !dbg !1722
  %78 = add i8 %77, 4, !dbg !1722
  br label %89

79:                                               ; preds = %2
  %80 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1723
  call void @llvm.dbg.value(metadata i32 %80, metadata !1653, metadata !DIExpression()), !dbg !1654
  %81 = shl nuw nsw i16 %5, 1, !dbg !1724
  %82 = zext i16 %81 to i32, !dbg !1724
  %83 = shl nuw i32 3, %82, !dbg !1725
  %84 = and i32 %80, %83, !dbg !1726
  call void @llvm.dbg.value(metadata i32 %84, metadata !1653, metadata !DIExpression()), !dbg !1654
  %85 = lshr i32 %84, %82, !dbg !1727
  %86 = trunc i32 %85 to i8, !dbg !1728
  %87 = shl i8 %86, 2, !dbg !1728
  %88 = add i8 %87, 4, !dbg !1728
  br label %89, !dbg !1729

89:                                               ; preds = %63, %69, %19, %37, %49, %55, %43, %31, %79, %7
  %90 = phi i8 [ %16, %7 ], [ %88, %79 ], [ %36, %31 ], [ %48, %43 ], [ %60, %55 ], [ %54, %49 ], [ %42, %37 ], [ %28, %19 ], [ %78, %69 ], [ %68, %63 ]
  store i8 %90, i8* %1, align 1, !dbg !1730
  br label %91, !dbg !1731

91:                                               ; preds = %89, %2
  %92 = phi i32 [ -1, %2 ], [ 0, %89 ], !dbg !1654
  ret i32 %92, !dbg !1731
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !1732 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1737, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i32 %1, metadata !1738, metadata !DIExpression()), !dbg !1741
  %3 = lshr i32 %0, 5, !dbg !1742
  call void @llvm.dbg.value(metadata i32 %3, metadata !1739, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1741
  %4 = trunc i32 %0 to i16, !dbg !1743
  %5 = and i16 %4, 31, !dbg !1743
  call void @llvm.dbg.value(metadata i16 %5, metadata !1740, metadata !DIExpression()), !dbg !1741
  switch i32 %1, label %32 [
    i32 1, label %6
    i32 0, label %18
  ], !dbg !1744

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 %3, metadata !1739, metadata !DIExpression()), !dbg !1741
  %7 = trunc i32 %3 to i16, !dbg !1745
  switch i16 %7, label %32 [
    i16 0, label %8
    i16 1, label %13
  ], !dbg !1745

8:                                                ; preds = %6
  %9 = zext i16 %5 to i32, !dbg !1748
  %10 = shl nuw i32 1, %9, !dbg !1750
  %11 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1751
  %12 = or i32 %11, %10, !dbg !1751
  store volatile i32 %12, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1751
  br label %32, !dbg !1752

13:                                               ; preds = %6
  %14 = zext i16 %5 to i32, !dbg !1753
  %15 = shl nuw i32 1, %14, !dbg !1754
  %16 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1755
  %17 = or i32 %16, %15, !dbg !1755
  store volatile i32 %17, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1755
  br label %32, !dbg !1756

18:                                               ; preds = %2
  %19 = trunc i32 %3 to i16, !dbg !1757
  switch i16 %19, label %32 [
    i16 0, label %20
    i16 1, label %26
  ], !dbg !1757

20:                                               ; preds = %18
  %21 = zext i16 %5 to i32, !dbg !1760
  %22 = shl nuw i32 1, %21, !dbg !1762
  %23 = xor i32 %22, -1, !dbg !1763
  %24 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1764
  %25 = and i32 %24, %23, !dbg !1764
  store volatile i32 %25, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1764
  br label %32, !dbg !1765

26:                                               ; preds = %18
  %27 = zext i16 %5 to i32, !dbg !1766
  %28 = shl nuw i32 1, %27, !dbg !1767
  %29 = xor i32 %28, -1, !dbg !1768
  %30 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1769
  %31 = and i32 %30, %29, !dbg !1769
  store volatile i32 %31, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1769
  br label %32, !dbg !1770

32:                                               ; preds = %2, %18, %26, %20, %8, %13, %6
  ret void, !dbg !1771
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !1772 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1778, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i8 %1, metadata !1779, metadata !DIExpression()), !dbg !1781
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
  ], !dbg !1782

3:                                                ; preds = %2
  %4 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1783
  call void @llvm.dbg.value(metadata i32 %4, metadata !1780, metadata !DIExpression()), !dbg !1781
  %5 = and i32 %4, -16, !dbg !1785
  call void @llvm.dbg.value(metadata i32 %5, metadata !1780, metadata !DIExpression()), !dbg !1781
  %6 = zext i8 %1 to i32, !dbg !1786
  %7 = or i32 %5, %6, !dbg !1787
  store volatile i32 %7, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1788
  br label %187, !dbg !1789

8:                                                ; preds = %2
  %9 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1790
  call void @llvm.dbg.value(metadata i32 %9, metadata !1780, metadata !DIExpression()), !dbg !1781
  %10 = and i32 %9, -241, !dbg !1791
  call void @llvm.dbg.value(metadata i32 %10, metadata !1780, metadata !DIExpression()), !dbg !1781
  %11 = zext i8 %1 to i32, !dbg !1792
  %12 = shl nuw nsw i32 %11, 4, !dbg !1793
  %13 = or i32 %10, %12, !dbg !1794
  store volatile i32 %13, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1795
  br label %187, !dbg !1796

14:                                               ; preds = %2
  %15 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1797
  call void @llvm.dbg.value(metadata i32 %15, metadata !1780, metadata !DIExpression()), !dbg !1781
  %16 = and i32 %15, -3841, !dbg !1798
  call void @llvm.dbg.value(metadata i32 %16, metadata !1780, metadata !DIExpression()), !dbg !1781
  %17 = zext i8 %1 to i32, !dbg !1799
  %18 = shl nuw nsw i32 %17, 8, !dbg !1800
  %19 = or i32 %16, %18, !dbg !1801
  store volatile i32 %19, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1802
  br label %187, !dbg !1803

20:                                               ; preds = %2
  %21 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1804
  call void @llvm.dbg.value(metadata i32 %21, metadata !1780, metadata !DIExpression()), !dbg !1781
  %22 = and i32 %21, -61441, !dbg !1805
  call void @llvm.dbg.value(metadata i32 %22, metadata !1780, metadata !DIExpression()), !dbg !1781
  %23 = zext i8 %1 to i32, !dbg !1806
  %24 = shl nuw nsw i32 %23, 12, !dbg !1807
  %25 = or i32 %22, %24, !dbg !1808
  store volatile i32 %25, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1809
  br label %187, !dbg !1810

26:                                               ; preds = %2
  %27 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1811
  call void @llvm.dbg.value(metadata i32 %27, metadata !1780, metadata !DIExpression()), !dbg !1781
  %28 = and i32 %27, -983041, !dbg !1812
  call void @llvm.dbg.value(metadata i32 %28, metadata !1780, metadata !DIExpression()), !dbg !1781
  %29 = zext i8 %1 to i32, !dbg !1813
  %30 = shl nuw nsw i32 %29, 16, !dbg !1814
  %31 = or i32 %28, %30, !dbg !1815
  store volatile i32 %31, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1816
  br label %187, !dbg !1817

32:                                               ; preds = %2
  %33 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1818
  call void @llvm.dbg.value(metadata i32 %33, metadata !1780, metadata !DIExpression()), !dbg !1781
  %34 = and i32 %33, -15728641, !dbg !1819
  call void @llvm.dbg.value(metadata i32 %34, metadata !1780, metadata !DIExpression()), !dbg !1781
  %35 = zext i8 %1 to i32, !dbg !1820
  %36 = shl nuw nsw i32 %35, 20, !dbg !1821
  %37 = or i32 %34, %36, !dbg !1822
  store volatile i32 %37, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1823
  br label %187, !dbg !1824

38:                                               ; preds = %2
  %39 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1825
  call void @llvm.dbg.value(metadata i32 %39, metadata !1780, metadata !DIExpression()), !dbg !1781
  %40 = and i32 %39, -251658241, !dbg !1826
  call void @llvm.dbg.value(metadata i32 %40, metadata !1780, metadata !DIExpression()), !dbg !1781
  %41 = zext i8 %1 to i32, !dbg !1827
  %42 = shl nuw i32 %41, 24, !dbg !1828
  %43 = or i32 %40, %42, !dbg !1829
  store volatile i32 %43, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1830
  br label %187, !dbg !1831

44:                                               ; preds = %2
  %45 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1832
  call void @llvm.dbg.value(metadata i32 %45, metadata !1780, metadata !DIExpression()), !dbg !1781
  %46 = and i32 %45, 268435455, !dbg !1833
  call void @llvm.dbg.value(metadata i32 %46, metadata !1780, metadata !DIExpression()), !dbg !1781
  %47 = zext i8 %1 to i32, !dbg !1834
  %48 = shl i32 %47, 28, !dbg !1835
  %49 = or i32 %46, %48, !dbg !1836
  store volatile i32 %49, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1837
  br label %187, !dbg !1838

50:                                               ; preds = %2
  %51 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1839
  call void @llvm.dbg.value(metadata i32 %51, metadata !1780, metadata !DIExpression()), !dbg !1781
  %52 = and i32 %51, -16, !dbg !1840
  call void @llvm.dbg.value(metadata i32 %52, metadata !1780, metadata !DIExpression()), !dbg !1781
  %53 = zext i8 %1 to i32, !dbg !1841
  %54 = or i32 %52, %53, !dbg !1842
  store volatile i32 %54, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1843
  br label %187, !dbg !1844

55:                                               ; preds = %2
  %56 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1845
  call void @llvm.dbg.value(metadata i32 %56, metadata !1780, metadata !DIExpression()), !dbg !1781
  %57 = and i32 %56, -241, !dbg !1846
  call void @llvm.dbg.value(metadata i32 %57, metadata !1780, metadata !DIExpression()), !dbg !1781
  %58 = zext i8 %1 to i32, !dbg !1847
  %59 = shl nuw nsw i32 %58, 4, !dbg !1848
  %60 = or i32 %57, %59, !dbg !1849
  store volatile i32 %60, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1850
  br label %187, !dbg !1851

61:                                               ; preds = %2
  %62 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1852
  call void @llvm.dbg.value(metadata i32 %62, metadata !1780, metadata !DIExpression()), !dbg !1781
  %63 = and i32 %62, -3841, !dbg !1853
  call void @llvm.dbg.value(metadata i32 %63, metadata !1780, metadata !DIExpression()), !dbg !1781
  %64 = zext i8 %1 to i32, !dbg !1854
  %65 = shl nuw nsw i32 %64, 8, !dbg !1855
  %66 = or i32 %63, %65, !dbg !1856
  store volatile i32 %66, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1857
  br label %187, !dbg !1858

67:                                               ; preds = %2
  %68 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1859
  call void @llvm.dbg.value(metadata i32 %68, metadata !1780, metadata !DIExpression()), !dbg !1781
  %69 = and i32 %68, -61441, !dbg !1860
  call void @llvm.dbg.value(metadata i32 %69, metadata !1780, metadata !DIExpression()), !dbg !1781
  %70 = zext i8 %1 to i32, !dbg !1861
  %71 = shl nuw nsw i32 %70, 12, !dbg !1862
  %72 = or i32 %69, %71, !dbg !1863
  store volatile i32 %72, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1864
  switch i8 %1, label %187 [
    i8 5, label %73
    i8 4, label %73
    i8 2, label %73
  ], !dbg !1865

73:                                               ; preds = %67, %67, %67
  %74 = tail call i32 @halGPIO_ConfDirection(i32 noundef 27, i8 noundef zeroext 0) #13, !dbg !1867
  br label %187, !dbg !1869

75:                                               ; preds = %2
  %76 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1870
  call void @llvm.dbg.value(metadata i32 %76, metadata !1780, metadata !DIExpression()), !dbg !1781
  %77 = and i32 %76, -983041, !dbg !1871
  call void @llvm.dbg.value(metadata i32 %77, metadata !1780, metadata !DIExpression()), !dbg !1781
  %78 = zext i8 %1 to i32, !dbg !1872
  %79 = shl nuw nsw i32 %78, 16, !dbg !1873
  %80 = or i32 %77, %79, !dbg !1874
  store volatile i32 %80, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1875
  %81 = and i8 %1, -2, !dbg !1876
  %82 = icmp eq i8 %81, 4, !dbg !1876
  br i1 %82, label %83, label %187, !dbg !1876

83:                                               ; preds = %75
  %84 = tail call i32 @halGPIO_ConfDirection(i32 noundef 28, i8 noundef zeroext 0) #13, !dbg !1878
  br label %187, !dbg !1880

85:                                               ; preds = %2
  %86 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1881
  call void @llvm.dbg.value(metadata i32 %86, metadata !1780, metadata !DIExpression()), !dbg !1781
  %87 = and i32 %86, -15728641, !dbg !1882
  call void @llvm.dbg.value(metadata i32 %87, metadata !1780, metadata !DIExpression()), !dbg !1781
  %88 = zext i8 %1 to i32, !dbg !1883
  %89 = shl nuw nsw i32 %88, 20, !dbg !1884
  %90 = or i32 %87, %89, !dbg !1885
  store volatile i32 %90, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1886
  %91 = icmp eq i8 %1, 6, !dbg !1887
  br i1 %91, label %92, label %187, !dbg !1889

92:                                               ; preds = %85
  %93 = tail call i32 @halGPIO_ConfDirection(i32 noundef 29, i8 noundef zeroext 0) #13, !dbg !1890
  br label %187, !dbg !1892

94:                                               ; preds = %2
  %95 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1893
  call void @llvm.dbg.value(metadata i32 %95, metadata !1780, metadata !DIExpression()), !dbg !1781
  %96 = and i32 %95, -251658241, !dbg !1894
  call void @llvm.dbg.value(metadata i32 %96, metadata !1780, metadata !DIExpression()), !dbg !1781
  %97 = zext i8 %1 to i32, !dbg !1895
  %98 = shl nuw i32 %97, 24, !dbg !1896
  %99 = or i32 %96, %98, !dbg !1897
  store volatile i32 %99, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1898
  switch i8 %1, label %187 [
    i8 7, label %100
    i8 4, label %100
  ], !dbg !1899

100:                                              ; preds = %94, %94
  %101 = tail call i32 @halGPIO_ConfDirection(i32 noundef 30, i8 noundef zeroext 0) #13, !dbg !1901
  br label %187, !dbg !1903

102:                                              ; preds = %2
  %103 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1904
  call void @llvm.dbg.value(metadata i32 %103, metadata !1780, metadata !DIExpression()), !dbg !1781
  %104 = and i32 %103, 268435455, !dbg !1905
  call void @llvm.dbg.value(metadata i32 %104, metadata !1780, metadata !DIExpression()), !dbg !1781
  %105 = zext i8 %1 to i32, !dbg !1906
  %106 = shl i32 %105, 28, !dbg !1907
  %107 = or i32 %104, %106, !dbg !1908
  store volatile i32 %107, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1909
  %108 = and i8 %1, -3, !dbg !1910
  %109 = icmp eq i8 %108, 4, !dbg !1910
  br i1 %109, label %110, label %187, !dbg !1910

110:                                              ; preds = %102
  %111 = tail call i32 @halGPIO_ConfDirection(i32 noundef 31, i8 noundef zeroext 0) #13, !dbg !1912
  br label %187, !dbg !1914

112:                                              ; preds = %2
  %113 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1915
  call void @llvm.dbg.value(metadata i32 %113, metadata !1780, metadata !DIExpression()), !dbg !1781
  %114 = and i32 %113, -16, !dbg !1916
  call void @llvm.dbg.value(metadata i32 %114, metadata !1780, metadata !DIExpression()), !dbg !1781
  %115 = zext i8 %1 to i32, !dbg !1917
  %116 = or i32 %114, %115, !dbg !1918
  store volatile i32 %116, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1919
  %117 = and i8 %1, -3, !dbg !1920
  %118 = icmp eq i8 %117, 4, !dbg !1920
  br i1 %118, label %119, label %187, !dbg !1920

119:                                              ; preds = %112
  %120 = tail call i32 @halGPIO_ConfDirection(i32 noundef 32, i8 noundef zeroext 0) #13, !dbg !1922
  br label %187, !dbg !1924

121:                                              ; preds = %2
  %122 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1925
  call void @llvm.dbg.value(metadata i32 %122, metadata !1780, metadata !DIExpression()), !dbg !1781
  %123 = and i32 %122, -241, !dbg !1926
  call void @llvm.dbg.value(metadata i32 %123, metadata !1780, metadata !DIExpression()), !dbg !1781
  %124 = zext i8 %1 to i32, !dbg !1927
  %125 = shl nuw nsw i32 %124, 4, !dbg !1928
  %126 = or i32 %123, %125, !dbg !1929
  store volatile i32 %126, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1930
  br label %187, !dbg !1931

127:                                              ; preds = %2
  %128 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1932
  call void @llvm.dbg.value(metadata i32 %128, metadata !1780, metadata !DIExpression()), !dbg !1781
  %129 = and i32 %128, -3841, !dbg !1933
  call void @llvm.dbg.value(metadata i32 %129, metadata !1780, metadata !DIExpression()), !dbg !1781
  %130 = zext i8 %1 to i32, !dbg !1934
  %131 = shl nuw nsw i32 %130, 8, !dbg !1935
  %132 = or i32 %129, %131, !dbg !1936
  store volatile i32 %132, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1937
  br label %187, !dbg !1938

133:                                              ; preds = %2
  %134 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1939
  call void @llvm.dbg.value(metadata i32 %134, metadata !1780, metadata !DIExpression()), !dbg !1781
  %135 = and i32 %134, -61441, !dbg !1940
  call void @llvm.dbg.value(metadata i32 %135, metadata !1780, metadata !DIExpression()), !dbg !1781
  %136 = zext i8 %1 to i32, !dbg !1941
  %137 = shl nuw nsw i32 %136, 12, !dbg !1942
  %138 = or i32 %135, %137, !dbg !1943
  store volatile i32 %138, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1944
  br label %187, !dbg !1945

139:                                              ; preds = %2
  %140 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1946
  call void @llvm.dbg.value(metadata i32 %140, metadata !1780, metadata !DIExpression()), !dbg !1781
  %141 = and i32 %140, -983041, !dbg !1947
  call void @llvm.dbg.value(metadata i32 %141, metadata !1780, metadata !DIExpression()), !dbg !1781
  %142 = zext i8 %1 to i32, !dbg !1948
  %143 = shl nuw nsw i32 %142, 16, !dbg !1949
  %144 = or i32 %141, %143, !dbg !1950
  store volatile i32 %144, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1951
  br label %187, !dbg !1952

145:                                              ; preds = %2
  %146 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1953
  call void @llvm.dbg.value(metadata i32 %146, metadata !1780, metadata !DIExpression()), !dbg !1781
  %147 = and i32 %146, -15728641, !dbg !1954
  call void @llvm.dbg.value(metadata i32 %147, metadata !1780, metadata !DIExpression()), !dbg !1781
  %148 = zext i8 %1 to i32, !dbg !1955
  %149 = shl nuw nsw i32 %148, 20, !dbg !1956
  %150 = or i32 %147, %149, !dbg !1957
  store volatile i32 %150, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1958
  br label %187, !dbg !1959

151:                                              ; preds = %2
  %152 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1960
  call void @llvm.dbg.value(metadata i32 %152, metadata !1780, metadata !DIExpression()), !dbg !1781
  %153 = and i32 %152, -251658241, !dbg !1961
  call void @llvm.dbg.value(metadata i32 %153, metadata !1780, metadata !DIExpression()), !dbg !1781
  %154 = zext i8 %1 to i32, !dbg !1962
  %155 = shl nuw i32 %154, 24, !dbg !1963
  %156 = or i32 %153, %155, !dbg !1964
  store volatile i32 %156, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1965
  br label %187, !dbg !1966

157:                                              ; preds = %2
  %158 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1967
  call void @llvm.dbg.value(metadata i32 %158, metadata !1780, metadata !DIExpression()), !dbg !1781
  %159 = and i32 %158, 268435455, !dbg !1968
  call void @llvm.dbg.value(metadata i32 %159, metadata !1780, metadata !DIExpression()), !dbg !1781
  %160 = zext i8 %1 to i32, !dbg !1969
  %161 = shl i32 %160, 28, !dbg !1970
  %162 = or i32 %159, %161, !dbg !1971
  store volatile i32 %162, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1972
  br label %187, !dbg !1973

163:                                              ; preds = %2
  %164 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1974
  call void @llvm.dbg.value(metadata i32 %164, metadata !1780, metadata !DIExpression()), !dbg !1781
  %165 = and i32 %164, -241, !dbg !1975
  call void @llvm.dbg.value(metadata i32 %165, metadata !1780, metadata !DIExpression()), !dbg !1781
  %166 = zext i8 %1 to i32, !dbg !1976
  %167 = shl nuw nsw i32 %166, 4, !dbg !1977
  %168 = or i32 %165, %167, !dbg !1978
  store volatile i32 %168, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1979
  br label %187, !dbg !1980

169:                                              ; preds = %2
  %170 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1981
  call void @llvm.dbg.value(metadata i32 %170, metadata !1780, metadata !DIExpression()), !dbg !1781
  %171 = and i32 %170, -3841, !dbg !1982
  call void @llvm.dbg.value(metadata i32 %171, metadata !1780, metadata !DIExpression()), !dbg !1781
  %172 = zext i8 %1 to i32, !dbg !1983
  %173 = shl nuw nsw i32 %172, 8, !dbg !1984
  %174 = or i32 %171, %173, !dbg !1985
  store volatile i32 %174, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1986
  br label %187, !dbg !1987

175:                                              ; preds = %2
  %176 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1988
  call void @llvm.dbg.value(metadata i32 %176, metadata !1780, metadata !DIExpression()), !dbg !1781
  %177 = and i32 %176, -61441, !dbg !1989
  call void @llvm.dbg.value(metadata i32 %177, metadata !1780, metadata !DIExpression()), !dbg !1781
  %178 = zext i8 %1 to i32, !dbg !1990
  %179 = shl nuw nsw i32 %178, 12, !dbg !1991
  %180 = or i32 %177, %179, !dbg !1992
  store volatile i32 %180, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1993
  br label %187, !dbg !1994

181:                                              ; preds = %2
  %182 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1995
  call void @llvm.dbg.value(metadata i32 %182, metadata !1780, metadata !DIExpression()), !dbg !1781
  %183 = and i32 %182, -983041, !dbg !1996
  call void @llvm.dbg.value(metadata i32 %183, metadata !1780, metadata !DIExpression()), !dbg !1781
  %184 = zext i8 %1 to i32, !dbg !1997
  %185 = shl nuw nsw i32 %184, 16, !dbg !1998
  %186 = or i32 %183, %185, !dbg !1999
  store volatile i32 %186, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2000
  br label %187, !dbg !2001

187:                                              ; preds = %94, %67, %2, %119, %112, %110, %102, %100, %85, %92, %83, %75, %73, %181, %175, %169, %163, %157, %151, %145, %139, %133, %127, %121, %61, %55, %50, %44, %38, %32, %26, %20, %14, %8, %3
  ret void, !dbg !2002
}

; Function Attrs: noinline nounwind optsize
define dso_local void @NVIC_SetupVectorTable(i32 noundef %0) local_unnamed_addr #0 !dbg !2003 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2007, metadata !DIExpression()), !dbg !2008
  store volatile i32 %0, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !2009
  tail call void asm sideeffect "dsb", ""() #15, !dbg !2010, !srcloc !2011
  tail call void asm sideeffect "isb", ""() #15, !dbg !2012, !srcloc !2013
  ret void, !dbg !2014
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @NVIC_SWInt(i32 noundef %0) local_unnamed_addr #3 !dbg !2015 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2019, metadata !DIExpression()), !dbg !2020
  store volatile i32 %0, i32* inttoptr (i32 -536809728 to i32*), align 256, !dbg !2021
  ret void, !dbg !2022
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @save_and_set_interrupt_mask() local_unnamed_addr #0 section ".ramTEXT" !dbg !2023 {
  %1 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !2028, !srcloc !2035
  call void @llvm.dbg.value(metadata i32 %1, metadata !2032, metadata !DIExpression()) #15, !dbg !2036
  call void @llvm.dbg.value(metadata i32 %1, metadata !2027, metadata !DIExpression()), !dbg !2037
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !2038, !srcloc !2041
  ret i32 %1, !dbg !2042
}

; Function Attrs: noinline nounwind optsize
define dso_local void @restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #0 section ".ramTEXT" !dbg !2043 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2045, metadata !DIExpression()), !dbg !2046
  call void @llvm.dbg.value(metadata i32 %0, metadata !2047, metadata !DIExpression()) #15, !dbg !2050
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %0) #15, !dbg !2053, !srcloc !2054
  ret void, !dbg !2055
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @pinmux_config(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !2056 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2060, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i32 %1, metadata !2061, metadata !DIExpression()), !dbg !2063
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
  ], !dbg !2064

3:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  call void @llvm.dbg.value(metadata i32 %0, metadata !2062, metadata !DIExpression()), !dbg !2063
  %4 = trunc i32 %1 to i8, !dbg !2065
  tail call void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %4) #13, !dbg !2066
  br label %5, !dbg !2067

5:                                                ; preds = %2, %3
  %6 = phi i32 [ 0, %3 ], [ -1, %2 ], !dbg !2063
  ret i32 %6, !dbg !2068
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @get_current_count() local_unnamed_addr #0 !dbg !2069 {
  %1 = tail call i32 @GPT_return_current_count(i32 noundef 2) #13, !dbg !2070
  ret i32 %1, !dbg !2071
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_time(i32 noundef %0) local_unnamed_addr #0 !dbg !2072 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2074, metadata !DIExpression()), !dbg !2077
  %2 = tail call i32 @get_current_count() #14, !dbg !2078
  %3 = add i32 %2, %0, !dbg !2079
  %4 = xor i32 %3, -1, !dbg !2080
  call void @llvm.dbg.value(metadata i32 %3, metadata !2075, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2077
  %5 = tail call i32 @get_current_count() #14, !dbg !2081
  call void @llvm.dbg.value(metadata i32 %5, metadata !2076, metadata !DIExpression()), !dbg !2077
  %6 = add i32 %5, %4, !dbg !2082
  %7 = icmp slt i32 %6, 0, !dbg !2082
  br i1 %7, label %8, label %12, !dbg !2083

8:                                                ; preds = %1, %8
  %9 = tail call i32 @get_current_count() #14, !dbg !2084
  call void @llvm.dbg.value(metadata i32 %9, metadata !2076, metadata !DIExpression()), !dbg !2077
  %10 = add i32 %9, %4, !dbg !2082
  %11 = icmp slt i32 %10, 0, !dbg !2082
  br i1 %11, label %8, label %12, !dbg !2083, !llvm.loop !2086

12:                                               ; preds = %8, %1
  ret void, !dbg !2088
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_time_for_gpt4(i32 noundef %0) local_unnamed_addr #0 !dbg !2089 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2091, metadata !DIExpression()), !dbg !2094
  %2 = tail call i32 @get_current_gpt4_count() #14, !dbg !2095
  %3 = add i32 %2, %0, !dbg !2096
  %4 = xor i32 %3, -1, !dbg !2097
  call void @llvm.dbg.value(metadata i32 %3, metadata !2092, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2094
  %5 = tail call i32 @get_current_gpt4_count() #14, !dbg !2098
  call void @llvm.dbg.value(metadata i32 %5, metadata !2093, metadata !DIExpression()), !dbg !2094
  %6 = add i32 %5, %4, !dbg !2099
  %7 = icmp slt i32 %6, 0, !dbg !2099
  br i1 %7, label %8, label %12, !dbg !2100

8:                                                ; preds = %1, %8
  %9 = tail call i32 @get_current_gpt4_count() #14, !dbg !2101
  call void @llvm.dbg.value(metadata i32 %9, metadata !2093, metadata !DIExpression()), !dbg !2094
  %10 = add i32 %9, %4, !dbg !2099
  %11 = icmp slt i32 %10, 0, !dbg !2099
  br i1 %11, label %8, label %12, !dbg !2100, !llvm.loop !2103

12:                                               ; preds = %8, %1
  ret void, !dbg !2105
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @get_current_gpt4_count() local_unnamed_addr #0 !dbg !2106 {
  %1 = tail call i32 @GPT_return_current_count(i32 noundef 4) #13, !dbg !2107
  ret i32 %1, !dbg !2108
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_ms(i32 noundef %0) local_unnamed_addr #0 !dbg !2109 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2111, metadata !DIExpression()), !dbg !2113
  %2 = shl i32 %0, 5, !dbg !2114
  call void @llvm.dbg.value(metadata i32 %2, metadata !2112, metadata !DIExpression()), !dbg !2113
  %3 = mul i32 %0, 7, !dbg !2115
  %4 = udiv i32 %3, 10, !dbg !2116
  %5 = add i32 %4, %2, !dbg !2117
  call void @llvm.dbg.value(metadata i32 %5, metadata !2112, metadata !DIExpression()), !dbg !2113
  %6 = mul i32 %0, 6, !dbg !2118
  %7 = udiv i32 %6, 100, !dbg !2119
  %8 = add i32 %5, %7, !dbg !2120
  call void @llvm.dbg.value(metadata i32 %8, metadata !2112, metadata !DIExpression()), !dbg !2113
  %9 = shl i32 %0, 3, !dbg !2121
  %10 = udiv i32 %9, 1000, !dbg !2122
  %11 = add i32 %8, %10, !dbg !2123
  call void @llvm.dbg.value(metadata i32 %11, metadata !2112, metadata !DIExpression()), !dbg !2113
  tail call void @delay_time(i32 noundef %11) #14, !dbg !2124
  ret void, !dbg !2125
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_us(i32 noundef %0) local_unnamed_addr #0 !dbg !2126 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2128, metadata !DIExpression()), !dbg !2131
  %2 = tail call i32 @top_mcu_freq_get() #13, !dbg !2132
  %3 = udiv i32 %2, 1000000, !dbg !2133
  call void @llvm.dbg.value(metadata i32 %3, metadata !2130, metadata !DIExpression()), !dbg !2131
  %4 = mul i32 %3, %0, !dbg !2134
  call void @llvm.dbg.value(metadata i32 %4, metadata !2129, metadata !DIExpression()), !dbg !2131
  tail call void @delay_time_for_gpt4(i32 noundef %4) #14, !dbg !2135
  ret void, !dbg !2136
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvTMR_init(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, void ()* noundef %3) local_unnamed_addr #0 !dbg !2137 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2141, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i32 %1, metadata !2142, metadata !DIExpression()), !dbg !2145
  call void @llvm.dbg.value(metadata i1 %2, metadata !2143, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2145
  call void @llvm.dbg.value(metadata void ()* %3, metadata !2144, metadata !DIExpression()), !dbg !2145
  tail call void @GPT_Stop(i32 noundef %0) #13, !dbg !2146
  %5 = icmp eq i32 %0, 0, !dbg !2147
  br i1 %5, label %6, label %7, !dbg !2149

6:                                                ; preds = %4
  store volatile i32 0, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !2150
  br label %8, !dbg !2152

7:                                                ; preds = %4
  store volatile i32 0, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !2153
  br label %8

8:                                                ; preds = %7, %6
  %9 = phi i32 [ %0, %7 ], [ 0, %6 ]
  tail call void @GPT_init(i32 noundef %9, i32 noundef 1, void ()* noundef %3) #13, !dbg !2155
  tail call void @GPT_ResetTimer(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) #13, !dbg !2156
  ret void, !dbg !2157
}

; Function Attrs: noinline nounwind optsize
define dso_local void @TMR_Start(i32 noundef %0) local_unnamed_addr #0 !dbg !2158 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2160, metadata !DIExpression()), !dbg !2161
  tail call void @GPT_Start(i32 noundef %0) #13, !dbg !2162
  ret void, !dbg !2163
}

; Function Attrs: noinline nounwind optsize
define dso_local void @TMR_Stop(i32 noundef %0) local_unnamed_addr #0 !dbg !2164 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2166, metadata !DIExpression()), !dbg !2167
  tail call void @GPT_Stop(i32 noundef %0) #13, !dbg !2168
  ret void, !dbg !2169
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvGPT2Init() local_unnamed_addr #0 !dbg !2170 {
  tail call void @CM4_GPT2Init() #13, !dbg !2171
  ret void, !dbg !2172
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvGPT4Init() local_unnamed_addr #0 !dbg !2173 {
  tail call void @CM4_GPT4Init() #13, !dbg !2174
  ret void, !dbg !2175
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @clear_TMR_INT_status_bit(i32 noundef %0) local_unnamed_addr #3 !dbg !2176 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2178, metadata !DIExpression()), !dbg !2179
  switch i32 %0, label %5 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !2180

2:                                                ; preds = %1
  br label %3, !dbg !2181

3:                                                ; preds = %1, %2
  %4 = phi i32 [ 2, %2 ], [ 1, %1 ]
  store volatile i32 %4, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !2179
  br label %5, !dbg !2184

5:                                                ; preds = %3, %1
  ret void, !dbg !2184
}

; Function Attrs: noinline nounwind optsize
define dso_local void @top_xtal_init() local_unnamed_addr #0 !dbg !2185 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2187, metadata !DIExpression()), !dbg !2189
  %1 = load volatile i32, i32* inttoptr (i32 -2097118784 to i32*), align 64, !dbg !2190
  call void @llvm.dbg.value(metadata i32 %1, metadata !2188, metadata !DIExpression()), !dbg !2189
  %2 = lshr i32 %1, 13, !dbg !2191
  %3 = and i32 %2, 7, !dbg !2192
  call void @llvm.dbg.value(metadata i32 %3, metadata !2188, metadata !DIExpression()), !dbg !2189
  %4 = load volatile i32, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2193
  call void @llvm.dbg.value(metadata i32 %4, metadata !2187, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata i32 %4, metadata !2187, metadata !DIExpression(DW_OP_constu, 18446744073709549568, DW_OP_and, DW_OP_stack_value)), !dbg !2189
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init, i32 0, i32 %3, !dbg !2194
  %6 = load i32, i32* %5, align 4, !dbg !2194
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init.1, i32 0, i32 %3, !dbg !2194
  %8 = load i32, i32* %7, align 4, !dbg !2194
  %9 = and i32 %4, -2048, !dbg !2195
  call void @llvm.dbg.value(metadata i32 %9, metadata !2187, metadata !DIExpression()), !dbg !2189
  store i32 %6, i32* @gXtalFreq, align 4, !dbg !2196
  %10 = or i32 %9, %8, !dbg !2196
  call void @llvm.dbg.value(metadata i32 %10, metadata !2187, metadata !DIExpression()), !dbg !2189
  store volatile i32 %10, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2198
  %11 = load i32, i32* @gXtalFreq, align 4, !dbg !2199
  store i32 %11, i32* @gCpuFrequency, align 4, !dbg !2200
  tail call void @SystemCoreClockUpdate() #13, !dbg !2201
  %12 = load i32, i32* @SystemCoreClock, align 4, !dbg !2202
  %13 = udiv i32 %12, 1000, !dbg !2203
  %14 = tail call i32 @SysTick_Set(i32 noundef %13) #13, !dbg !2204
  ret void, !dbg !2205
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_xtal_freq_get() local_unnamed_addr #5 !dbg !2206 {
  %1 = load i32, i32* @gXtalFreq, align 4, !dbg !2207
  ret i32 %1, !dbg !2208
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_mcu_freq_get() local_unnamed_addr #5 !dbg !2209 {
  %1 = load i32, i32* @gCpuFrequency, align 4, !dbg !2210
  ret i32 %1, !dbg !2211
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON() local_unnamed_addr #6 !dbg !2212 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2216
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2216
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2214, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2215, metadata !DIExpression()), !dbg !2218
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2219
  store volatile i32 %3, i32* %1, align 4, !dbg !2220
  %4 = load volatile i32, i32* %1, align 4, !dbg !2221
  %5 = lshr i32 %4, 28, !dbg !2222
  %6 = and i32 %5, 3, !dbg !2223
  store volatile i32 %6, i32* %1, align 4, !dbg !2224
  %7 = load volatile i32, i32* %1, align 4, !dbg !2225
  %8 = icmp eq i32 %7, 0, !dbg !2227
  br i1 %8, label %9, label %22, !dbg !2228

9:                                                ; preds = %0
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2229
  store volatile i32 %10, i32* %1, align 4, !dbg !2231
  %11 = load volatile i32, i32* %1, align 4, !dbg !2232
  %12 = and i32 %11, -16777217, !dbg !2233
  store volatile i32 %12, i32* %1, align 4, !dbg !2234
  %13 = load volatile i32, i32* %1, align 4, !dbg !2235
  %14 = or i32 %13, 536870912, !dbg !2236
  store volatile i32 %14, i32* %1, align 4, !dbg !2237
  %15 = load volatile i32, i32* %1, align 4, !dbg !2238
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %15) #14, !dbg !2239
  br label %16, !dbg !2240

16:                                               ; preds = %16, %9
  %17 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2241
  store volatile i32 %17, i32* %1, align 4, !dbg !2243
  %18 = load volatile i32, i32* %1, align 4, !dbg !2244
  %19 = and i32 %18, 134217728, !dbg !2245
  store volatile i32 %19, i32* %1, align 4, !dbg !2246
  %20 = load volatile i32, i32* %1, align 4, !dbg !2247
  %21 = icmp eq i32 %20, 0, !dbg !2248
  br i1 %21, label %16, label %22, !dbg !2249, !llvm.loop !2250

22:                                               ; preds = %16, %0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2252
  ret void, !dbg !2252
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @cmnReadRegister32(i8* noundef %0) unnamed_addr #4 !dbg !2253 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2260, metadata !DIExpression()), !dbg !2261
  %2 = bitcast i8* %0 to i32*, !dbg !2262
  %3 = load volatile i32, i32* %2, align 4, !dbg !2263
  ret i32 %3, !dbg !2264
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @cmnWriteRegister32(i8* noundef %0, i32 noundef %1) unnamed_addr #3 !dbg !2265 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2269, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i32 %1, metadata !2270, metadata !DIExpression()), !dbg !2271
  %3 = bitcast i8* %0 to i32*, !dbg !2272
  store volatile i32 %1, i32* %3, align 4, !dbg !2273
  ret void, !dbg !2274
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #7

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON_PLL2ON(i8 noundef zeroext %0) local_unnamed_addr #6 !dbg !2275 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8 %0, metadata !2279, metadata !DIExpression()), !dbg !2282
  %3 = bitcast i32* %2 to i8*, !dbg !2283
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !2283
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2280, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2281, metadata !DIExpression()), !dbg !2282
  %4 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2285
  store volatile i32 %4, i32* %2, align 4, !dbg !2286
  %5 = load volatile i32, i32* %2, align 4, !dbg !2287
  %6 = lshr i32 %5, 28, !dbg !2288
  %7 = and i32 %6, 3, !dbg !2289
  store volatile i32 %7, i32* %2, align 4, !dbg !2290
  %8 = load volatile i32, i32* %2, align 4, !dbg !2291
  %9 = icmp eq i32 %8, 3, !dbg !2293
  br i1 %9, label %38, label %10, !dbg !2294

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2295
  store volatile i32 %11, i32* %2, align 4, !dbg !2297
  %12 = load volatile i32, i32* %2, align 4, !dbg !2298
  %13 = and i32 %12, -262145, !dbg !2299
  store volatile i32 %13, i32* %2, align 4, !dbg !2300
  %14 = load volatile i32, i32* %2, align 4, !dbg !2301
  %15 = and i32 %14, -16777217, !dbg !2302
  store volatile i32 %15, i32* %2, align 4, !dbg !2303
  %16 = load volatile i32, i32* %2, align 4, !dbg !2304
  store volatile i32 %16, i32* %2, align 4, !dbg !2305
  %17 = load volatile i32, i32* %2, align 4, !dbg !2306
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %17) #14, !dbg !2307
  %18 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2308
  store volatile i32 %18, i32* %2, align 4, !dbg !2309
  %19 = load volatile i32, i32* %2, align 4, !dbg !2310
  %20 = and i32 %19, -805306369, !dbg !2311
  store volatile i32 %20, i32* %2, align 4, !dbg !2312
  %21 = load volatile i32, i32* %2, align 4, !dbg !2313
  %22 = and i32 %21, -16777217, !dbg !2314
  store volatile i32 %22, i32* %2, align 4, !dbg !2315
  %23 = load volatile i32, i32* %2, align 4, !dbg !2316
  %24 = or i32 %23, 805306368, !dbg !2317
  store volatile i32 %24, i32* %2, align 4, !dbg !2318
  %25 = load volatile i32, i32* %2, align 4, !dbg !2319
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %25) #14, !dbg !2320
  br label %26, !dbg !2321

26:                                               ; preds = %26, %10
  %27 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2322
  store volatile i32 %27, i32* %2, align 4, !dbg !2324
  %28 = load volatile i32, i32* %2, align 4, !dbg !2325
  %29 = and i32 %28, 67108864, !dbg !2326
  store volatile i32 %29, i32* %2, align 4, !dbg !2327
  %30 = load volatile i32, i32* %2, align 4, !dbg !2328
  %31 = icmp eq i32 %30, 0, !dbg !2329
  br i1 %31, label %26, label %32, !dbg !2330, !llvm.loop !2331

32:                                               ; preds = %26
  %33 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2333
  store volatile i32 %33, i32* %2, align 4, !dbg !2334
  %34 = load volatile i32, i32* %2, align 4, !dbg !2335
  %35 = and i32 %34, -262145, !dbg !2336
  store volatile i32 %35, i32* %2, align 4, !dbg !2337
  %36 = load volatile i32, i32* %2, align 4, !dbg !2338
  %37 = and i32 %36, -16777217, !dbg !2339
  store volatile i32 %37, i32* %2, align 4, !dbg !2340
  br label %38, !dbg !2341

38:                                               ; preds = %32, %1
  %39 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2342
  store volatile i32 %39, i32* %2, align 4, !dbg !2343
  %40 = icmp eq i8 %0, 0, !dbg !2344
  %41 = load volatile i32, i32* %2, align 4, !dbg !2346
  br i1 %40, label %44, label %42, !dbg !2347

42:                                               ; preds = %38
  %43 = or i32 %41, 262144, !dbg !2348
  store volatile i32 %43, i32* %2, align 4, !dbg !2350
  br label %45, !dbg !2351

44:                                               ; preds = %38
  store volatile i32 %41, i32* %2, align 4, !dbg !2352
  br label %45

45:                                               ; preds = %44, %42
  %46 = load volatile i32, i32* %2, align 4, !dbg !2354
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %46) #14, !dbg !2355
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !2356
  ret void, !dbg !2356
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1OFF_PLL2OFF() local_unnamed_addr #6 !dbg !2357 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2361
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2361
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2359, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2360, metadata !DIExpression()), !dbg !2363
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2364
  store volatile i32 %3, i32* %1, align 4, !dbg !2365
  %4 = load volatile i32, i32* %1, align 4, !dbg !2366
  %5 = and i32 %4, -805306369, !dbg !2367
  store volatile i32 %5, i32* %1, align 4, !dbg !2368
  %6 = load volatile i32, i32* %1, align 4, !dbg !2369
  %7 = and i32 %6, -16777217, !dbg !2370
  store volatile i32 %7, i32* %1, align 4, !dbg !2371
  %8 = load volatile i32, i32* %1, align 4, !dbg !2372
  store volatile i32 %8, i32* %1, align 4, !dbg !2373
  %9 = load volatile i32, i32* %1, align 4, !dbg !2374
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %9) #14, !dbg !2375
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2376
  store volatile i32 %10, i32* %1, align 4, !dbg !2377
  %11 = load volatile i32, i32* %1, align 4, !dbg !2378
  %12 = and i32 %11, -262145, !dbg !2379
  store volatile i32 %12, i32* %1, align 4, !dbg !2380
  %13 = load volatile i32, i32* %1, align 4, !dbg !2381
  %14 = and i32 %13, -16777217, !dbg !2382
  store volatile i32 %14, i32* %1, align 4, !dbg !2383
  %15 = load volatile i32, i32* %1, align 4, !dbg !2384
  store volatile i32 %15, i32* %1, align 4, !dbg !2385
  %16 = load volatile i32, i32* %1, align 4, !dbg !2386
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %16) #14, !dbg !2387
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2388
  ret void, !dbg !2388
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureToXtal() local_unnamed_addr #0 !dbg !2389 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2393
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2393
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2391, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2392, metadata !DIExpression()), !dbg !2395
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2396
  store volatile i32 %3, i32* %1, align 4, !dbg !2397
  %4 = load volatile i32, i32* %1, align 4, !dbg !2398
  %5 = and i32 %4, -8, !dbg !2399
  store volatile i32 %5, i32* %1, align 4, !dbg !2400
  %6 = load volatile i32, i32* %1, align 4, !dbg !2401
  store volatile i32 %6, i32* %1, align 4, !dbg !2402
  %7 = load volatile i32, i32* %1, align 4, !dbg !2403
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #14, !dbg !2404
  %8 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2405
  store volatile i32 %8, i32* %1, align 4, !dbg !2406
  %9 = load volatile i32, i32* %1, align 4, !dbg !2407
  %10 = and i32 %9, -49153, !dbg !2408
  store volatile i32 %10, i32* %1, align 4, !dbg !2409
  %11 = load volatile i32, i32* %1, align 4, !dbg !2410
  store volatile i32 %11, i32* %1, align 4, !dbg !2411
  %12 = load volatile i32, i32* %1, align 4, !dbg !2412
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %12) #14, !dbg !2413
  br label %13, !dbg !2414

13:                                               ; preds = %13, %0
  %14 = load volatile i32, i32* %1, align 4, !dbg !2415
  %15 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2416
  %16 = icmp eq i32 %14, %15, !dbg !2417
  br i1 %16, label %17, label %13, !dbg !2414, !llvm.loop !2418

17:                                               ; preds = %13
  %18 = tail call i32 @top_xtal_freq_get() #14, !dbg !2420
  store i32 %18, i32* @gCpuFrequency, align 4, !dbg !2421
  tail call void @SystemCoreClockUpdate() #13, !dbg !2422
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !2423
  %20 = udiv i32 %19, 1000, !dbg !2424
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #13, !dbg !2425
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2426
  ret void, !dbg !2426
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo192M() local_unnamed_addr #0 !dbg !2427 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2431
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2431
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2429, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2430, metadata !DIExpression()), !dbg !2433
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 1) #14, !dbg !2434
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2435
  store volatile i32 %3, i32* %1, align 4, !dbg !2436
  %4 = load volatile i32, i32* %1, align 4, !dbg !2437
  %5 = and i32 %4, -49153, !dbg !2438
  store volatile i32 %5, i32* %1, align 4, !dbg !2439
  %6 = load volatile i32, i32* %1, align 4, !dbg !2440
  %7 = or i32 %6, 16384, !dbg !2441
  store volatile i32 %7, i32* %1, align 4, !dbg !2442
  %8 = load volatile i32, i32* %1, align 4, !dbg !2443
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #14, !dbg !2444
  br label %9, !dbg !2445

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !2446
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2447
  %12 = icmp eq i32 %10, %11, !dbg !2448
  br i1 %12, label %13, label %9, !dbg !2445, !llvm.loop !2449

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2451
  store volatile i32 %14, i32* %1, align 4, !dbg !2452
  %15 = load volatile i32, i32* %1, align 4, !dbg !2453
  %16 = and i32 %15, -1009, !dbg !2454
  store volatile i32 %16, i32* %1, align 4, !dbg !2455
  %17 = load volatile i32, i32* %1, align 4, !dbg !2456
  %18 = or i32 %17, 128, !dbg !2457
  store volatile i32 %18, i32* %1, align 4, !dbg !2458
  %19 = load volatile i32, i32* %1, align 4, !dbg !2459
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #14, !dbg !2460
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2461
  store volatile i32 %20, i32* %1, align 4, !dbg !2462
  %21 = load volatile i32, i32* %1, align 4, !dbg !2463
  %22 = and i32 %21, -8, !dbg !2464
  store volatile i32 %22, i32* %1, align 4, !dbg !2465
  %23 = load volatile i32, i32* %1, align 4, !dbg !2466
  %24 = or i32 %23, 4, !dbg !2467
  store volatile i32 %24, i32* %1, align 4, !dbg !2468
  %25 = load volatile i32, i32* %1, align 4, !dbg !2469
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #14, !dbg !2470
  store i32 192000000, i32* @gCpuFrequency, align 4, !dbg !2471
  tail call void @SystemCoreClockUpdate() #13, !dbg !2472
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !2473
  %27 = udiv i32 %26, 1000, !dbg !2474
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #13, !dbg !2475
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2476
  ret void, !dbg !2476
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo160M() local_unnamed_addr #0 !dbg !2477 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2481
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2481
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2479, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2480, metadata !DIExpression()), !dbg !2483
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 0) #14, !dbg !2484
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2485
  store volatile i32 %3, i32* %1, align 4, !dbg !2486
  %4 = load volatile i32, i32* %1, align 4, !dbg !2487
  %5 = and i32 %4, -49153, !dbg !2488
  store volatile i32 %5, i32* %1, align 4, !dbg !2489
  %6 = load volatile i32, i32* %1, align 4, !dbg !2490
  %7 = or i32 %6, 32768, !dbg !2491
  store volatile i32 %7, i32* %1, align 4, !dbg !2492
  %8 = load volatile i32, i32* %1, align 4, !dbg !2493
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #14, !dbg !2494
  br label %9, !dbg !2495

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !2496
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2497
  %12 = icmp eq i32 %10, %11, !dbg !2498
  br i1 %12, label %13, label %9, !dbg !2495, !llvm.loop !2499

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2501
  store volatile i32 %14, i32* %1, align 4, !dbg !2502
  %15 = load volatile i32, i32* %1, align 4, !dbg !2503
  %16 = and i32 %15, -1009, !dbg !2504
  store volatile i32 %16, i32* %1, align 4, !dbg !2505
  %17 = load volatile i32, i32* %1, align 4, !dbg !2506
  %18 = or i32 %17, 32, !dbg !2507
  store volatile i32 %18, i32* %1, align 4, !dbg !2508
  %19 = load volatile i32, i32* %1, align 4, !dbg !2509
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #14, !dbg !2510
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2511
  store volatile i32 %20, i32* %1, align 4, !dbg !2512
  %21 = load volatile i32, i32* %1, align 4, !dbg !2513
  %22 = and i32 %21, -8, !dbg !2514
  store volatile i32 %22, i32* %1, align 4, !dbg !2515
  %23 = load volatile i32, i32* %1, align 4, !dbg !2516
  %24 = or i32 %23, 4, !dbg !2517
  store volatile i32 %24, i32* %1, align 4, !dbg !2518
  %25 = load volatile i32, i32* %1, align 4, !dbg !2519
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #14, !dbg !2520
  store i32 160000000, i32* @gCpuFrequency, align 4, !dbg !2521
  tail call void @SystemCoreClockUpdate() #13, !dbg !2522
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !2523
  %27 = udiv i32 %26, 1000, !dbg !2524
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #13, !dbg !2525
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2526
  ret void, !dbg !2526
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo64M() local_unnamed_addr #0 !dbg !2527 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2531
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2531
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2529, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2530, metadata !DIExpression()), !dbg !2533
  tail call void @cmnPLL1ON() #14, !dbg !2534
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2535
  store volatile i32 %3, i32* %1, align 4, !dbg !2536
  %4 = load volatile i32, i32* %1, align 4, !dbg !2537
  %5 = and i32 %4, -49153, !dbg !2538
  store volatile i32 %5, i32* %1, align 4, !dbg !2539
  %6 = load volatile i32, i32* %1, align 4, !dbg !2540
  store volatile i32 %6, i32* %1, align 4, !dbg !2541
  %7 = load volatile i32, i32* %1, align 4, !dbg !2542
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #14, !dbg !2543
  br label %8, !dbg !2544

8:                                                ; preds = %8, %0
  %9 = load volatile i32, i32* %1, align 4, !dbg !2545
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2546
  %11 = icmp eq i32 %9, %10, !dbg !2547
  br i1 %11, label %12, label %8, !dbg !2544, !llvm.loop !2548

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2550
  store volatile i32 %13, i32* %1, align 4, !dbg !2551
  %14 = load volatile i32, i32* %1, align 4, !dbg !2552
  %15 = and i32 %14, -8, !dbg !2553
  store volatile i32 %15, i32* %1, align 4, !dbg !2554
  %16 = load volatile i32, i32* %1, align 4, !dbg !2555
  %17 = or i32 %16, 2, !dbg !2556
  store volatile i32 %17, i32* %1, align 4, !dbg !2557
  %18 = load volatile i32, i32* %1, align 4, !dbg !2558
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %18) #14, !dbg !2559
  store i32 64000000, i32* @gCpuFrequency, align 4, !dbg !2560
  tail call void @SystemCoreClockUpdate() #13, !dbg !2561
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !2562
  %20 = udiv i32 %19, 1000, !dbg !2563
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #13, !dbg !2564
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2565
  ret void, !dbg !2565
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnSerialFlashClkConfToXtal() local_unnamed_addr #6 section ".ramTEXT" !dbg !2566 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2570
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2570
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2568, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118796 to i32*), metadata !2569, metadata !DIExpression()), !dbg !2572
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*)) #14, !dbg !2573
  store volatile i32 %3, i32* %1, align 4, !dbg !2574
  %4 = load volatile i32, i32* %1, align 4, !dbg !2575
  %5 = and i32 %4, -24577, !dbg !2576
  store volatile i32 %5, i32* %1, align 4, !dbg !2577
  %6 = load volatile i32, i32* %1, align 4, !dbg !2578
  store volatile i32 %6, i32* %1, align 4, !dbg !2579
  %7 = load volatile i32, i32* %1, align 4, !dbg !2580
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*), i32 noundef %7) #14, !dbg !2581
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2582
  ret void, !dbg !2582
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc() local_unnamed_addr #4 !dbg !2583 {
  %1 = tail call i32 @getc_nowait() #14, !dbg !2588
  call void @llvm.dbg.value(metadata i32 %1, metadata !2587, metadata !DIExpression()), !dbg !2589
  ret i32 %1, !dbg !2590
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc_nowait() local_unnamed_addr #4 !dbg !2591 {
  %1 = load volatile i32, i32* inttoptr (i32 -2096955372 to i32*), align 4, !dbg !2594
  %2 = and i32 %1, 1, !dbg !2596
  %3 = icmp eq i32 %2, 0, !dbg !2596
  br i1 %3, label %7, label %4, !dbg !2597

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 -2096955392 to i32*), align 65536, !dbg !2598
  %6 = and i32 %5, 255, !dbg !2600
  call void @llvm.dbg.value(metadata i32 %5, metadata !2593, metadata !DIExpression()), !dbg !2601
  br label %7, !dbg !2602

7:                                                ; preds = %0, %4
  %8 = phi i32 [ %6, %4 ], [ -1, %0 ], !dbg !2603
  ret i32 %8, !dbg !2604
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_output_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !2605 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2610, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i8 %1, metadata !2611, metadata !DIExpression()), !dbg !2613
  %3 = icmp eq i32 %0, 0, !dbg !2614
  %4 = select i1 %3, i32 -2096955392, i32 -2096889856, !dbg !2614
  call void @llvm.dbg.value(metadata i32 %4, metadata !2612, metadata !DIExpression()), !dbg !2613
  %5 = or i32 %4, 20
  %6 = inttoptr i32 %5 to i32*
  br label %7, !dbg !2615

7:                                                ; preds = %7, %2
  %8 = load volatile i32, i32* %6, align 4, !dbg !2616
  %9 = and i32 %8, 32, !dbg !2617
  %10 = icmp eq i32 %9, 0, !dbg !2618
  br i1 %10, label %7, label %11, !dbg !2615, !llvm.loop !2619

11:                                               ; preds = %7
  %12 = zext i8 %1 to i32, !dbg !2621
  %13 = inttoptr i32 %4 to i32*, !dbg !2622
  store volatile i32 %12, i32* %13, align 65536, !dbg !2623
  ret void, !dbg !2624
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @uart_input_char(i32 noundef %0) local_unnamed_addr #3 !dbg !2625 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2629, metadata !DIExpression()), !dbg !2632
  %2 = icmp eq i32 %0, 0, !dbg !2633
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2633
  call void @llvm.dbg.value(metadata i32 %3, metadata !2630, metadata !DIExpression()), !dbg !2632
  %4 = or i32 %3, 20
  %5 = inttoptr i32 %4 to i32*
  br label %6, !dbg !2634

6:                                                ; preds = %6, %1
  %7 = load volatile i32, i32* %5, align 4, !dbg !2635
  %8 = and i32 %7, 1, !dbg !2636
  %9 = icmp eq i32 %8, 0, !dbg !2637
  br i1 %9, label %6, label %10, !dbg !2634, !llvm.loop !2638

10:                                               ; preds = %6
  %11 = inttoptr i32 %3 to i32*, !dbg !2640
  %12 = load volatile i32, i32* %11, align 65536, !dbg !2640
  %13 = trunc i32 %12 to i8, !dbg !2640
  call void @llvm.dbg.value(metadata i8 %13, metadata !2631, metadata !DIExpression()), !dbg !2632
  ret i8 %13, !dbg !2641
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @uart_input_char_unblocking(i32 noundef %0) local_unnamed_addr #4 !dbg !2642 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2646, metadata !DIExpression()), !dbg !2649
  %2 = icmp eq i32 %0, 0, !dbg !2650
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2650
  call void @llvm.dbg.value(metadata i32 %3, metadata !2647, metadata !DIExpression()), !dbg !2649
  %4 = or i32 %3, 20, !dbg !2651
  %5 = inttoptr i32 %4 to i32*, !dbg !2651
  %6 = load volatile i32, i32* %5, align 4, !dbg !2651
  %7 = and i32 %6, 1, !dbg !2653
  %8 = icmp eq i32 %7, 0, !dbg !2653
  br i1 %8, label %13, label %9, !dbg !2654

9:                                                ; preds = %1
  %10 = inttoptr i32 %3 to i32*, !dbg !2655
  %11 = load volatile i32, i32* %10, align 65536, !dbg !2655
  %12 = and i32 %11, 255, !dbg !2657
  call void @llvm.dbg.value(metadata i32 %11, metadata !2648, metadata !DIExpression()), !dbg !2649
  br label %13, !dbg !2658

13:                                               ; preds = %1, %9
  %14 = phi i32 [ %12, %9 ], [ -1, %1 ], !dbg !2659
  ret i32 %14, !dbg !2660
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_HWInit(i32 noundef %0) local_unnamed_addr #0 !dbg !2661 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2665, metadata !DIExpression()), !dbg !2666
  tail call void @halUART_SetFormat(i32 noundef %0, i32 noundef 115200, i16 noundef zeroext 3, i16 noundef zeroext 0, i16 noundef zeroext 0) #14, !dbg !2667
  switch i32 %0, label %7 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !2668

2:                                                ; preds = %1
  br label %3, !dbg !2669

3:                                                ; preds = %1, %2
  %4 = phi i32* [ inttoptr (i32 -2096889780 to i32*), %2 ], [ inttoptr (i32 -2096955316 to i32*), %1 ]
  %5 = load volatile i32, i32* %4, align 4, !dbg !2673
  %6 = or i32 %5, 1, !dbg !2673
  store volatile i32 %6, i32* %4, align 4, !dbg !2673
  br label %7, !dbg !2674

7:                                                ; preds = %3, %1
  ret void, !dbg !2674
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_SetFormat(i32 noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #0 !dbg !2675 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2681, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i32 %1, metadata !2682, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i16 %2, metadata !2683, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i16 %3, metadata !2684, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i16 %4, metadata !2685, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i32 -2096955392, metadata !2687, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, metadata !2694, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, metadata !2696, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i32 0, metadata !2697, metadata !DIExpression()), !dbg !2698
  %6 = tail call i32 @top_xtal_freq_get() #13, !dbg !2701
  store i32 %6, i32* @gUartClkFreq, align 4, !dbg !2702
  %7 = icmp eq i32 %0, 1, !dbg !2703
  %8 = select i1 %7, i32 -2096889856, i32 -2096955392, !dbg !2703
  call void @llvm.dbg.value(metadata i32 %8, metadata !2687, metadata !DIExpression()), !dbg !2698
  %9 = or i32 %8, 36, !dbg !2704
  %10 = inttoptr i32 %9 to i32*, !dbg !2704
  store volatile i32 3, i32* %10, align 4, !dbg !2705
  %11 = or i32 %8, 12, !dbg !2706
  %12 = inttoptr i32 %11 to i32*, !dbg !2706
  %13 = load volatile i32, i32* %12, align 4, !dbg !2706
  call void @llvm.dbg.value(metadata i32 %13, metadata !2689, metadata !DIExpression()), !dbg !2698
  %14 = or i32 %13, 128, !dbg !2707
  store volatile i32 %14, i32* %12, align 4, !dbg !2708
  %15 = load i32, i32* @gUartClkFreq, align 4, !dbg !2709
  %16 = udiv i32 %15, %1, !dbg !2710
  call void @llvm.dbg.value(metadata i32 %16, metadata !2688, metadata !DIExpression()), !dbg !2698
  %17 = lshr i32 %16, 8, !dbg !2711
  %18 = add nuw nsw i32 %17, 1, !dbg !2712
  call void @llvm.dbg.value(metadata i32 %18, metadata !2690, metadata !DIExpression()), !dbg !2698
  %19 = udiv i32 %16, %18, !dbg !2713
  %20 = add i32 %19, -1, !dbg !2715
  call void @llvm.dbg.value(metadata i32 %20, metadata !2691, metadata !DIExpression()), !dbg !2698
  %21 = icmp eq i32 %20, 3, !dbg !2716
  %22 = lshr i32 %20, 1, !dbg !2718
  %23 = add nsw i32 %22, -1, !dbg !2718
  %24 = select i1 %21, i32 0, i32 %23, !dbg !2718
  call void @llvm.dbg.value(metadata i32 %24, metadata !2692, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i32 undef, metadata !2697, metadata !DIExpression()), !dbg !2698
  %25 = mul i32 %15, 10, !dbg !2719
  %26 = udiv i32 %25, %1, !dbg !2720
  %27 = udiv i32 %26, %16, !dbg !2721
  %28 = mul i32 %19, -10, !dbg !2722
  %29 = add i32 %27, %28, !dbg !2723
  %30 = urem i32 %29, 10, !dbg !2724
  call void @llvm.dbg.value(metadata i32 %30, metadata !2693, metadata !DIExpression()), !dbg !2698
  %31 = and i32 %18, 255, !dbg !2725
  %32 = inttoptr i32 %8 to i32*, !dbg !2726
  store volatile i32 %31, i32* %32, align 65536, !dbg !2727
  %33 = lshr i32 %18, 8, !dbg !2728
  %34 = and i32 %33, 255, !dbg !2729
  %35 = or i32 %8, 4, !dbg !2730
  %36 = inttoptr i32 %35 to i32*, !dbg !2730
  store volatile i32 %34, i32* %36, align 4, !dbg !2731
  %37 = or i32 %8, 40, !dbg !2732
  %38 = inttoptr i32 %37 to i32*, !dbg !2732
  store volatile i32 %20, i32* %38, align 8, !dbg !2733
  %39 = or i32 %8, 44, !dbg !2734
  %40 = inttoptr i32 %39 to i32*, !dbg !2734
  store volatile i32 %24, i32* %40, align 4, !dbg !2735
  %41 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, i32 0, i32 %30, !dbg !2736
  %42 = load i16, i16* %41, align 2, !dbg !2736
  %43 = zext i16 %42 to i32, !dbg !2736
  %44 = or i32 %8, 88, !dbg !2737
  %45 = inttoptr i32 %44 to i32*, !dbg !2737
  store volatile i32 %43, i32* %45, align 8, !dbg !2738
  %46 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, i32 0, i32 %30, !dbg !2739
  %47 = load i16, i16* %46, align 2, !dbg !2739
  %48 = zext i16 %47 to i32, !dbg !2739
  %49 = or i32 %8, 84, !dbg !2740
  %50 = inttoptr i32 %49 to i32*, !dbg !2740
  store volatile i32 %48, i32* %50, align 4, !dbg !2741
  store volatile i32 %13, i32* %12, align 4, !dbg !2742
  %51 = or i32 %8, 8, !dbg !2743
  %52 = inttoptr i32 %51 to i32*, !dbg !2743
  store volatile i32 71, i32* %52, align 8, !dbg !2744
  %53 = inttoptr i32 %11 to i16*, !dbg !2745
  %54 = load volatile i16, i16* %53, align 4, !dbg !2745
  call void @llvm.dbg.value(metadata i16 %54, metadata !2686, metadata !DIExpression()), !dbg !2698
  %55 = and i16 %54, -64, !dbg !2746
  call void @llvm.dbg.value(metadata i16 %54, metadata !2686, metadata !DIExpression(DW_OP_constu, 18446744073709551608, DW_OP_and, DW_OP_stack_value)), !dbg !2698
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %2), metadata !2686, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2698
  %56 = and i16 %2, -61, !dbg !2747
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %56), metadata !2686, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2698
  call void @llvm.dbg.value(metadata !DIArgList(i16 %55, i16 %4, i16 %56), metadata !2686, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2698
  %57 = and i16 %4, -57, !dbg !2748
  call void @llvm.dbg.value(metadata i16 undef, metadata !2686, metadata !DIExpression()), !dbg !2698
  %58 = or i16 %56, %3, !dbg !2747
  %59 = or i16 %58, %57, !dbg !2748
  %60 = or i16 %59, %55, !dbg !2749
  call void @llvm.dbg.value(metadata i16 %60, metadata !2686, metadata !DIExpression()), !dbg !2698
  store volatile i16 %60, i16* %53, align 4, !dbg !2750
  ret void, !dbg !2751
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) local_unnamed_addr #4 !dbg !2752 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2757, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i32 %1, metadata !2758, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i32* %2, metadata !2759, metadata !DIExpression()), !dbg !2760
  %4 = icmp eq i32 %0, 0, !dbg !2761
  %5 = icmp eq i32 %1, 0, !dbg !2763
  br i1 %4, label %6, label %16, !dbg !2764

6:                                                ; preds = %3
  br i1 %5, label %10, label %7, !dbg !2765

7:                                                ; preds = %6
  %8 = load volatile i16, i16* inttoptr (i32 -2097082568 to i16*), align 8, !dbg !2767
  %9 = zext i16 %8 to i32, !dbg !2767
  br label %26, !dbg !2770

10:                                               ; preds = %6
  %11 = load volatile i16, i16* inttoptr (i32 -2097082812 to i16*), align 4, !dbg !2771
  %12 = zext i16 %11 to i32, !dbg !2771
  store i32 %12, i32* %2, align 4, !dbg !2773
  %13 = load volatile i16, i16* inttoptr (i32 -2097082824 to i16*), align 8, !dbg !2774
  %14 = zext i16 %13 to i32, !dbg !2774
  %15 = sub nsw i32 %12, %14, !dbg !2775
  br label %26

16:                                               ; preds = %3
  br i1 %5, label %20, label %17, !dbg !2776

17:                                               ; preds = %16
  %18 = load volatile i16, i16* inttoptr (i32 -2097082056 to i16*), align 8, !dbg !2778
  %19 = zext i16 %18 to i32, !dbg !2778
  br label %26, !dbg !2781

20:                                               ; preds = %16
  %21 = load volatile i16, i16* inttoptr (i32 -2097082300 to i16*), align 4, !dbg !2782
  %22 = zext i16 %21 to i32, !dbg !2782
  store i32 %22, i32* %2, align 4, !dbg !2784
  %23 = load volatile i16, i16* inttoptr (i32 -2097082312 to i16*), align 8, !dbg !2785
  %24 = zext i16 %23 to i32, !dbg !2785
  %25 = sub nsw i32 %22, %24, !dbg !2786
  br label %26

26:                                               ; preds = %17, %20, %7, %10
  %27 = phi i32 [ %19, %17 ], [ %25, %20 ], [ %9, %7 ], [ %15, %10 ]
  store i32 %27, i32* %2, align 4, !dbg !2763
  ret void, !dbg !2787
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Read_VFIFO_Data(i32 noundef %0, i8* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !2788 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2792, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i8* %1, metadata !2793, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i32 %2, metadata !2794, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i32 0, metadata !2795, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i32 0, metadata !2795, metadata !DIExpression()), !dbg !2796
  %4 = icmp eq i32 %2, 0, !dbg !2797
  br i1 %4, label %15, label %5, !dbg !2800

5:                                                ; preds = %3, %12
  %6 = phi i32 [ %13, %12 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !2795, metadata !DIExpression()), !dbg !2796
  switch i32 %0, label %12 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !2801

7:                                                ; preds = %5
  br label %8, !dbg !2803

8:                                                ; preds = %5, %7
  %9 = phi i8* [ inttoptr (i32 2030044416 to i8*), %7 ], [ inttoptr (i32 2030043904 to i8*), %5 ]
  %10 = load volatile i8, i8* %9, align 256, !dbg !2807
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !2807
  store i8 %10, i8* %11, align 1, !dbg !2807
  br label %12, !dbg !2808

12:                                               ; preds = %8, %5
  %13 = add nuw i32 %6, 1, !dbg !2808
  call void @llvm.dbg.value(metadata i32 %13, metadata !2795, metadata !DIExpression()), !dbg !2796
  %14 = icmp eq i32 %13, %2, !dbg !2797
  br i1 %14, label %15, label %5, !dbg !2800, !llvm.loop !2809

15:                                               ; preds = %12, %3
  ret void, !dbg !2811
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Write_VFIFO_Data(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !2812 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2818, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i8* %1, metadata !2819, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i32 %2, metadata !2820, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i32 0, metadata !2821, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i32 0, metadata !2821, metadata !DIExpression()), !dbg !2822
  %4 = icmp eq i32 %2, 0, !dbg !2823
  br i1 %4, label %16, label %5, !dbg !2826

5:                                                ; preds = %3, %13
  %6 = phi i32 [ %14, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !2821, metadata !DIExpression()), !dbg !2822
  switch i32 %0, label %13 [
    i32 0, label %7
    i32 1, label %10
  ], !dbg !2827

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !2829
  %9 = load i8, i8* %8, align 1, !dbg !2829
  store volatile i8 %9, i8* inttoptr (i32 2030043648 to i8*), align 512, !dbg !2832
  br label %13, !dbg !2833

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !2834
  %12 = load i8, i8* %11, align 1, !dbg !2834
  store volatile i8 %12, i8* inttoptr (i32 2030044160 to i8*), align 1024, !dbg !2837
  br label %13, !dbg !2838

13:                                               ; preds = %5, %7, %10
  %14 = add nuw i32 %6, 1, !dbg !2839
  call void @llvm.dbg.value(metadata i32 %14, metadata !2821, metadata !DIExpression()), !dbg !2822
  %15 = icmp eq i32 %14, %2, !dbg !2823
  br i1 %15, label %16, label %5, !dbg !2826, !llvm.loop !2840

16:                                               ; preds = %13, %3
  ret void, !dbg !2842
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Tx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !dbg !2843 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2847, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i8* %1, metadata !2848, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i32 %2, metadata !2849, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i32 %3, metadata !2850, metadata !DIExpression()), !dbg !2851
  switch i32 %0, label %9 [
    i32 0, label %6
    i32 1, label %5
  ], !dbg !2852

5:                                                ; preds = %4
  br label %6, !dbg !2853

6:                                                ; preds = %4, %5
  %7 = phi i32 [ 16, %5 ], [ 14, %4 ]
  %8 = ptrtoint i8* %1 to i32, !dbg !2857
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %8, i32 noundef %2, i32 noundef %7, i32 noundef 0, i32 noundef %3, i32 noundef 0) #13, !dbg !2857
  tail call void @DMA_Vfifo_Flush(i32 noundef %7) #13, !dbg !2857
  br label %9, !dbg !2858

9:                                                ; preds = %6, %4
  ret void, !dbg !2858
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_SetAdrs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Flush(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Rx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 !dbg !2859 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2863, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8* %1, metadata !2864, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i32 %2, metadata !2865, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i32 %3, metadata !2866, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i32 %4, metadata !2867, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i32 %5, metadata !2868, metadata !DIExpression()), !dbg !2869
  switch i32 %0, label %11 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !2870

7:                                                ; preds = %6
  br label %8, !dbg !2871

8:                                                ; preds = %6, %7
  %9 = phi i32 [ 17, %7 ], [ 15, %6 ]
  %10 = ptrtoint i8* %1 to i32, !dbg !2875
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %10, i32 noundef %2, i32 noundef %9, i32 noundef %3, i32 noundef %4, i32 noundef %5) #13, !dbg !2875
  tail call void @DMA_Vfifo_Flush(i32 noundef %9) #13, !dbg !2875
  br label %11, !dbg !2876

11:                                               ; preds = %8, %6
  ret void, !dbg !2876
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #0 !dbg !2877 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2881, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata void ()* %1, metadata !2882, metadata !DIExpression()), !dbg !2883
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !2884

3:                                                ; preds = %2
  br label %4, !dbg !2885

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef %5, void ()* noundef %1) #13, !dbg !2889
  br label %6, !dbg !2890

6:                                                ; preds = %4, %2
  ret void, !dbg !2890
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #0 !dbg !2891 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2893, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata void ()* %1, metadata !2894, metadata !DIExpression()), !dbg !2895
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !2896

3:                                                ; preds = %2
  br label %4, !dbg !2897

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_TO_Callback(i32 noundef %5, void ()* noundef %1) #13, !dbg !2901
  br label %6, !dbg !2902

6:                                                ; preds = %4, %2
  ret void, !dbg !2902
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_TO_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !2903 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2905, metadata !DIExpression()), !dbg !2909
  %2 = icmp eq i32 %0, 0, !dbg !2910
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2910
  call void @llvm.dbg.value(metadata i32 %3, metadata !2906, metadata !DIExpression()), !dbg !2909
  %4 = or i32 %3, 12, !dbg !2911
  %5 = inttoptr i32 %4 to i32*, !dbg !2911
  %6 = load volatile i32, i32* %5, align 4, !dbg !2911
  call void @llvm.dbg.value(metadata i32 %6, metadata !2908, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2909
  store volatile i32 191, i32* %5, align 4, !dbg !2912
  %7 = or i32 %3, 8, !dbg !2913
  %8 = inttoptr i32 %7 to i32*, !dbg !2913
  %9 = load volatile i32, i32* %8, align 8, !dbg !2913
  call void @llvm.dbg.value(metadata i32 %9, metadata !2907, metadata !DIExpression()), !dbg !2909
  %10 = and i32 %9, 65327, !dbg !2914
  %11 = or i32 %10, 208, !dbg !2914
  call void @llvm.dbg.value(metadata i32 %9, metadata !2907, metadata !DIExpression(DW_OP_constu, 208, DW_OP_or, DW_OP_stack_value)), !dbg !2909
  store volatile i32 %11, i32* %8, align 8, !dbg !2915
  %12 = or i32 %3, 68, !dbg !2916
  %13 = inttoptr i32 %12 to i32*, !dbg !2916
  store volatile i32 0, i32* %13, align 4, !dbg !2917
  store volatile i32 0, i32* %5, align 4, !dbg !2918
  %14 = or i32 %3, 16, !dbg !2919
  %15 = inttoptr i32 %14 to i32*, !dbg !2919
  store volatile i32 2, i32* %15, align 16, !dbg !2920
  %16 = and i32 %6, 65535, !dbg !2921
  store volatile i32 %16, i32* %5, align 4, !dbg !2922
  ret void, !dbg !2923
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 !dbg !2924 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2928, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i8 %1, metadata !2929, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i8 %2, metadata !2930, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i8 %3, metadata !2931, metadata !DIExpression()), !dbg !2935
  %5 = icmp eq i32 %0, 0, !dbg !2936
  %6 = select i1 %5, i32 -2096955392, i32 -2096889856, !dbg !2936
  call void @llvm.dbg.value(metadata i32 %6, metadata !2932, metadata !DIExpression()), !dbg !2935
  %7 = or i32 %6, 12, !dbg !2937
  %8 = inttoptr i32 %7 to i32*, !dbg !2937
  %9 = load volatile i32, i32* %8, align 4, !dbg !2937
  call void @llvm.dbg.value(metadata i32 %9, metadata !2934, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2935
  store volatile i32 191, i32* %8, align 4, !dbg !2938
  %10 = zext i8 %1 to i32, !dbg !2939
  %11 = or i32 %6, 16, !dbg !2940
  %12 = inttoptr i32 %11 to i32*, !dbg !2940
  store volatile i32 %10, i32* %12, align 16, !dbg !2941
  %13 = or i32 %6, 20, !dbg !2942
  %14 = inttoptr i32 %13 to i32*, !dbg !2942
  store volatile i32 %10, i32* %14, align 4, !dbg !2943
  %15 = zext i8 %2 to i32, !dbg !2944
  %16 = or i32 %6, 24, !dbg !2945
  %17 = inttoptr i32 %16 to i32*, !dbg !2945
  store volatile i32 %15, i32* %17, align 8, !dbg !2946
  %18 = or i32 %6, 28, !dbg !2947
  %19 = inttoptr i32 %18 to i32*, !dbg !2947
  store volatile i32 %15, i32* %19, align 4, !dbg !2948
  %20 = or i32 %6, 8, !dbg !2949
  %21 = inttoptr i32 %20 to i32*, !dbg !2949
  %22 = load volatile i32, i32* %21, align 8, !dbg !2949
  call void @llvm.dbg.value(metadata i32 %22, metadata !2933, metadata !DIExpression()), !dbg !2935
  %23 = and i32 %22, 65525, !dbg !2950
  %24 = or i32 %23, 10, !dbg !2950
  call void @llvm.dbg.value(metadata i32 %22, metadata !2933, metadata !DIExpression(DW_OP_constu, 10, DW_OP_or, DW_OP_stack_value)), !dbg !2935
  store volatile i32 %24, i32* %21, align 8, !dbg !2951
  %25 = and i32 %9, 65535, !dbg !2952
  store volatile i32 %25, i32* %8, align 4, !dbg !2953
  %26 = zext i8 %3 to i32, !dbg !2954
  %27 = or i32 %6, 64, !dbg !2955
  %28 = inttoptr i32 %27 to i32*, !dbg !2955
  store volatile i32 %26, i32* %28, align 64, !dbg !2956
  %29 = or i32 %6, 68, !dbg !2957
  %30 = inttoptr i32 %29 to i32*, !dbg !2957
  store volatile i32 1, i32* %30, align 4, !dbg !2958
  ret void, !dbg !2959
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !2960 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2962, metadata !DIExpression()), !dbg !2965
  %2 = icmp eq i32 %0, 0, !dbg !2966
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2966
  call void @llvm.dbg.value(metadata i32 %3, metadata !2963, metadata !DIExpression()), !dbg !2965
  %4 = or i32 %3, 12, !dbg !2967
  %5 = inttoptr i32 %4 to i32*, !dbg !2967
  %6 = load volatile i32, i32* %5, align 4, !dbg !2967
  call void @llvm.dbg.value(metadata i32 %6, metadata !2964, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2965
  store volatile i32 191, i32* %5, align 4, !dbg !2968
  %7 = or i32 %3, 8, !dbg !2969
  %8 = inttoptr i32 %7 to i32*, !dbg !2969
  store volatile i32 0, i32* %8, align 8, !dbg !2970
  store volatile i32 0, i32* %5, align 4, !dbg !2971
  %9 = and i32 %6, 65535, !dbg !2972
  store volatile i32 %9, i32* %5, align 4, !dbg !2973
  ret void, !dbg !2974
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_reset_default_value(i32 noundef %0) local_unnamed_addr #3 !dbg !2975 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2977, metadata !DIExpression()), !dbg !2979
  %2 = icmp eq i32 %0, 0, !dbg !2980
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2980
  call void @llvm.dbg.value(metadata i32 %3, metadata !2978, metadata !DIExpression()), !dbg !2979
  %4 = or i32 %3, 12, !dbg !2981
  %5 = inttoptr i32 %4 to i32*, !dbg !2981
  store volatile i32 191, i32* %5, align 4, !dbg !2982
  %6 = or i32 %3, 8, !dbg !2983
  %7 = inttoptr i32 %6 to i32*, !dbg !2983
  store volatile i32 16, i32* %7, align 8, !dbg !2984
  %8 = or i32 %3, 16, !dbg !2985
  %9 = inttoptr i32 %8 to i32*, !dbg !2985
  store volatile i32 0, i32* %9, align 16, !dbg !2986
  %10 = or i32 %3, 24, !dbg !2987
  %11 = inttoptr i32 %10 to i32*, !dbg !2987
  store volatile i32 0, i32* %11, align 8, !dbg !2988
  store volatile i32 128, i32* %5, align 4, !dbg !2989
  %12 = inttoptr i32 %3 to i32*, !dbg !2990
  store volatile i32 0, i32* %12, align 65536, !dbg !2991
  %13 = or i32 %3, 4, !dbg !2992
  %14 = inttoptr i32 %13 to i32*, !dbg !2992
  store volatile i32 0, i32* %14, align 4, !dbg !2993
  store volatile i32 0, i32* %5, align 4, !dbg !2994
  store volatile i32 0, i32* %14, align 4, !dbg !2995
  store volatile i32 0, i32* %7, align 8, !dbg !2996
  store volatile i32 191, i32* %5, align 4, !dbg !2997
  store volatile i32 0, i32* %7, align 8, !dbg !2998
  store volatile i32 0, i32* %5, align 4, !dbg !2999
  store volatile i32 0, i32* %9, align 16, !dbg !3000
  %15 = or i32 %3, 28, !dbg !3001
  %16 = inttoptr i32 %15 to i32*, !dbg !3001
  store volatile i32 0, i32* %16, align 4, !dbg !3002
  %17 = or i32 %3, 36, !dbg !3003
  %18 = inttoptr i32 %17 to i32*, !dbg !3003
  store volatile i32 0, i32* %18, align 4, !dbg !3004
  %19 = or i32 %3, 40, !dbg !3005
  %20 = inttoptr i32 %19 to i32*, !dbg !3005
  store volatile i32 0, i32* %20, align 8, !dbg !3006
  %21 = or i32 %3, 44, !dbg !3007
  %22 = inttoptr i32 %21 to i32*, !dbg !3007
  store volatile i32 0, i32* %22, align 4, !dbg !3008
  %23 = or i32 %3, 52, !dbg !3009
  %24 = inttoptr i32 %23 to i32*, !dbg !3009
  store volatile i32 0, i32* %24, align 4, !dbg !3010
  %25 = or i32 %3, 60, !dbg !3011
  %26 = inttoptr i32 %25 to i32*, !dbg !3011
  store volatile i32 0, i32* %26, align 4, !dbg !3012
  %27 = or i32 %3, 64, !dbg !3013
  %28 = inttoptr i32 %27 to i32*, !dbg !3013
  store volatile i32 0, i32* %28, align 64, !dbg !3014
  %29 = or i32 %3, 68, !dbg !3015
  %30 = inttoptr i32 %29 to i32*, !dbg !3015
  store volatile i32 0, i32* %30, align 4, !dbg !3016
  %31 = or i32 %3, 72, !dbg !3017
  %32 = inttoptr i32 %31 to i32*, !dbg !3017
  store volatile i32 0, i32* %32, align 8, !dbg !3018
  %33 = or i32 %3, 76, !dbg !3019
  %34 = inttoptr i32 %33 to i32*, !dbg !3019
  store volatile i32 0, i32* %34, align 4, !dbg !3020
  %35 = or i32 %3, 80, !dbg !3021
  %36 = inttoptr i32 %35 to i32*, !dbg !3021
  store volatile i32 0, i32* %36, align 16, !dbg !3022
  %37 = or i32 %3, 84, !dbg !3023
  %38 = inttoptr i32 %37 to i32*, !dbg !3023
  store volatile i32 0, i32* %38, align 4, !dbg !3024
  %39 = or i32 %3, 88, !dbg !3025
  %40 = inttoptr i32 %39 to i32*, !dbg !3025
  store volatile i32 0, i32* %40, align 8, !dbg !3026
  %41 = or i32 %3, 96, !dbg !3027
  %42 = inttoptr i32 %41 to i32*, !dbg !3027
  store volatile i32 0, i32* %42, align 32, !dbg !3028
  ret void, !dbg !3029
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_query_empty(i32 noundef %0) local_unnamed_addr #3 !dbg !3030 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3032, metadata !DIExpression()), !dbg !3034
  %2 = icmp eq i32 %0, 0, !dbg !3035
  call void @llvm.dbg.value(metadata i32 undef, metadata !3033, metadata !DIExpression()), !dbg !3034
  %3 = select i1 %2, i32 -2096955372, i32 -2096889836
  %4 = inttoptr i32 %3 to i32*
  br label %5, !dbg !3036

5:                                                ; preds = %5, %1
  %6 = load volatile i32, i32* %4, align 4, !dbg !3037
  %7 = and i32 %6, 64, !dbg !3038
  %8 = icmp eq i32 %7, 0, !dbg !3039
  br i1 %8, label %5, label %9, !dbg !3036, !llvm.loop !3040

9:                                                ; preds = %5
  ret void, !dbg !3042
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_fatal_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3043 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3047, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i32 %1, metadata !3048, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i8* %2, metadata !3049, metadata !DIExpression()), !dbg !3060
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3061
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3061
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3050, metadata !DIExpression()), !dbg !3062
  %7 = bitcast i32* %5 to i8*, !dbg !3063
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3063
  call void @llvm.dbg.value(metadata i32* %5, metadata !3059, metadata !DIExpression(DW_OP_deref)), !dbg !3060
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #13, !dbg !3064
  call void @llvm.va_start(i8* nonnull %6), !dbg !3065
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3066
  %10 = load i32, i32* %9, align 4, !dbg !3066
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3066
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #13, !dbg !3066
  call void @llvm.va_end(i8* nonnull %6), !dbg !3067
  %13 = load i32, i32* %5, align 4, !dbg !3068
  call void @llvm.dbg.value(metadata i32 %13, metadata !3059, metadata !DIExpression()), !dbg !3060
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #13, !dbg !3069
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3070
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3070
  ret void, !dbg !3070
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #8

; Function Attrs: optsize
declare dso_local i32 @vprintf(i8* noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #8

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_error_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3071 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3073, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i32 %1, metadata !3074, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i8* %2, metadata !3075, metadata !DIExpression()), !dbg !3078
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3079
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3079
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3076, metadata !DIExpression()), !dbg !3080
  %7 = bitcast i32* %5 to i8*, !dbg !3081
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3081
  call void @llvm.dbg.value(metadata i32* %5, metadata !3077, metadata !DIExpression(DW_OP_deref)), !dbg !3078
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #13, !dbg !3082
  call void @llvm.va_start(i8* nonnull %6), !dbg !3083
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3084
  %10 = load i32, i32* %9, align 4, !dbg !3084
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3084
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #13, !dbg !3084
  call void @llvm.va_end(i8* nonnull %6), !dbg !3085
  %13 = load i32, i32* %5, align 4, !dbg !3086
  call void @llvm.dbg.value(metadata i32 %13, metadata !3077, metadata !DIExpression()), !dbg !3078
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #13, !dbg !3087
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3088
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3088
  ret void, !dbg !3088
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_warning_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3089 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3091, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i32 %1, metadata !3092, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8* %2, metadata !3093, metadata !DIExpression()), !dbg !3096
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3097
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3097
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3094, metadata !DIExpression()), !dbg !3098
  %7 = bitcast i32* %5 to i8*, !dbg !3099
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3099
  call void @llvm.dbg.value(metadata i32* %5, metadata !3095, metadata !DIExpression(DW_OP_deref)), !dbg !3096
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #13, !dbg !3100
  call void @llvm.va_start(i8* nonnull %6), !dbg !3101
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3102
  %10 = load i32, i32* %9, align 4, !dbg !3102
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3102
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #13, !dbg !3102
  call void @llvm.va_end(i8* nonnull %6), !dbg !3103
  %13 = load i32, i32* %5, align 4, !dbg !3104
  call void @llvm.dbg.value(metadata i32 %13, metadata !3095, metadata !DIExpression()), !dbg !3096
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #13, !dbg !3105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3106
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3106
  ret void, !dbg !3106
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_info_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3107 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3109, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i32 %1, metadata !3110, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i8* %2, metadata !3111, metadata !DIExpression()), !dbg !3114
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3115
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3115
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3112, metadata !DIExpression()), !dbg !3116
  %7 = bitcast i32* %5 to i8*, !dbg !3117
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3117
  call void @llvm.dbg.value(metadata i32* %5, metadata !3113, metadata !DIExpression(DW_OP_deref)), !dbg !3114
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #13, !dbg !3118
  call void @llvm.va_start(i8* nonnull %6), !dbg !3119
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3120
  %10 = load i32, i32* %9, align 4, !dbg !3120
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3120
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #13, !dbg !3120
  call void @llvm.va_end(i8* nonnull %6), !dbg !3121
  %13 = load i32, i32* %5, align 4, !dbg !3122
  call void @llvm.dbg.value(metadata i32 %13, metadata !3113, metadata !DIExpression()), !dbg !3114
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #13, !dbg !3123
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3124
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3124
  ret void, !dbg !3124
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @log_hal_dump_internal(i8* nocapture noundef %0, i32 noundef %1, i8* nocapture noundef %2, i8* nocapture noundef %3, i32 noundef %4, ...) local_unnamed_addr #9 !dbg !3125 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3131, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i32 %1, metadata !3132, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i8* %2, metadata !3133, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i8* %3, metadata !3134, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i32 %4, metadata !3135, metadata !DIExpression()), !dbg !3136
  ret void, !dbg !3137
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_crypt_lock_take() local_unnamed_addr #0 !dbg !3138 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #13, !dbg !3143
  call void @llvm.dbg.value(metadata i32 %1, metadata !3142, metadata !DIExpression()), !dbg !3144
  %2 = load i8, i8* @g_crypt_lock, align 1, !dbg !3145, !range !3147
  %3 = icmp eq i8 %2, 0, !dbg !3145
  br i1 %3, label %4, label %5, !dbg !3148

4:                                                ; preds = %0
  store i8 1, i8* @g_crypt_lock, align 1, !dbg !3149
  br label %5, !dbg !3150

5:                                                ; preds = %0, %4
  %6 = phi i32 [ 0, %4 ], [ -100, %0 ], !dbg !3144
  tail call void @restore_interrupt_mask(i32 noundef %1) #13, !dbg !3144
  ret i32 %6, !dbg !3151
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local void @hal_crypt_lock_give() local_unnamed_addr #10 !dbg !3152 {
  store i8 0, i8* @g_crypt_lock, align 1, !dbg !3153
  ret void, !dbg !3154
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_aes_encrypt_with_padding(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef readonly %1, %struct.hal_aes_buffer_t* noundef readonly %2, i8* noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 !dbg !3155 {
  %6 = alloca [16 x i8], align 1
  %7 = alloca [16 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %0, metadata !3166, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %1, metadata !3167, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %2, metadata !3168, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i8* %3, metadata !3169, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i8 %4, metadata !3170, metadata !DIExpression()), !dbg !3183
  %8 = icmp eq %struct.hal_aes_buffer_t* %0, null, !dbg !3184
  %9 = icmp eq %struct.hal_aes_buffer_t* %1, null
  %10 = or i1 %8, %9, !dbg !3186
  %11 = icmp eq %struct.hal_aes_buffer_t* %2, null
  %12 = or i1 %10, %11, !dbg !3186
  %13 = icmp eq i8* %3, null
  %14 = or i1 %12, %13, !dbg !3186
  br i1 %14, label %15, label %16, !dbg !3186

15:                                               ; preds = %5
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.hal_aes_encrypt_with_padding, i32 0, i32 0), i32 noundef 154, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0)) #13, !dbg !3187
  br label %86, !dbg !3189

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %1, i32 0, i32 1, !dbg !3190
  %18 = load i32, i32* %17, align 4, !dbg !3190
  %19 = and i32 %18, 15, !dbg !3191
  call void @llvm.dbg.value(metadata i32 %19, metadata !3171, metadata !DIExpression()), !dbg !3183
  %20 = and i32 %18, -16, !dbg !3192
  call void @llvm.dbg.value(metadata i32 %18, metadata !3172, metadata !DIExpression(DW_OP_constu, 4, DW_OP_shr, DW_OP_stack_value)), !dbg !3183
  %21 = sub nuw nsw i32 16, %19, !dbg !3193
  call void @llvm.dbg.value(metadata !DIArgList(i8 16, i32 %19), metadata !3173, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_minus, DW_OP_stack_value)), !dbg !3183
  %22 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %0, i32 0, i32 1, !dbg !3194
  %23 = load i32, i32* %22, align 4, !dbg !3194
  %24 = add i32 %21, %18, !dbg !3196
  %25 = icmp ult i32 %23, %24, !dbg !3197
  br i1 %25, label %26, label %27, !dbg !3198

26:                                               ; preds = %16
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.hal_aes_encrypt_with_padding, i32 0, i32 0), i32 noundef 163, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.6, i32 0, i32 0)) #13, !dbg !3199
  br label %86, !dbg !3201

27:                                               ; preds = %16
  %28 = tail call i32 @hal_crypt_lock_take() #14, !dbg !3202
  %29 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 6, void (i32)* noundef nonnull @aes_operation_done) #13, !dbg !3203
  %30 = tail call i32 @hal_nvic_set_priority(i32 noundef 6, i32 noundef 5) #13, !dbg !3204
  %31 = tail call i32 @hal_nvic_enable_irq(i32 noundef 6) #13, !dbg !3205
  %32 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %2, i32 0, i32 1, !dbg !3206
  %33 = load i32, i32* %32, align 4, !dbg !3206
  %34 = trunc i32 %33 to i8, !dbg !3207
  %35 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %2, i32 0, i32 0, !dbg !3208
  %36 = load i8*, i8** %35, align 4, !dbg !3208
  %37 = tail call i32 @aes_set_key(i8 noundef zeroext %34, i8* noundef %36) #13, !dbg !3209
  %38 = icmp eq i8 %4, 1, !dbg !3210
  %39 = zext i1 %38 to i8
  %40 = tail call i32 @aes_configure(i8 noundef zeroext 1, i8 noundef zeroext %39) #13, !dbg !3212
  %41 = icmp ult i32 %18, 16, !dbg !3213
  br i1 %41, label %68, label %42, !dbg !3214

42:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i32 %20, metadata !3175, metadata !DIExpression()), !dbg !3215
  %43 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %0, i32 0, i32 0, !dbg !3216
  %44 = load i8*, i8** %43, align 4, !dbg !3216
  %45 = load i32, i32* %22, align 4, !dbg !3218
  %46 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %1, i32 0, i32 0, !dbg !3219
  %47 = load i8*, i8** %46, align 4, !dbg !3219
  %48 = tail call fastcc i32 @do_aes_encrypt(i8* noundef %44, i32 noundef %45, i8* noundef %47, i32 noundef %20, i8* noundef nonnull %3) #14, !dbg !3220
  %49 = icmp eq i32 %48, 0, !dbg !3221
  br i1 %49, label %51, label %50, !dbg !3222

50:                                               ; preds = %42
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.hal_aes_encrypt_with_padding, i32 0, i32 0), i32 noundef 188, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #13, !dbg !3223
  tail call void @hal_crypt_lock_give() #14, !dbg !3225
  br label %86

51:                                               ; preds = %42
  %52 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0, !dbg !3226
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %52) #15, !dbg !3226
  call void @llvm.dbg.declare(metadata [16 x i8]* %6, metadata !3178, metadata !DIExpression()), !dbg !3227
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(16) %52, i8 0, i32 16, i1 false), !dbg !3227
  %53 = load i8*, i8** %46, align 4, !dbg !3228
  %54 = getelementptr inbounds i8, i8* %53, i32 %20, !dbg !3229
  %55 = call i8* @memcpy(i8* noundef nonnull %52, i8* noundef %54, i32 noundef %19) #13, !dbg !3230
  %56 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 %19, !dbg !3231
  %57 = call i8* @memset(i8* noundef nonnull %56, i32 noundef %21, i32 noundef %21) #13, !dbg !3232
  %58 = load i8*, i8** %43, align 4, !dbg !3215
  %59 = getelementptr inbounds i8, i8* %58, i32 %20, !dbg !3233
  %60 = getelementptr inbounds i8, i8* %59, i32 -16, !dbg !3233
  %61 = select i1 %38, i8* %60, i8* %3, !dbg !3233
  call void @llvm.dbg.value(metadata i8* %61, metadata !3174, metadata !DIExpression()), !dbg !3183
  %62 = getelementptr inbounds i8, i8* %58, i32 %20, !dbg !3234
  %63 = load i32, i32* %22, align 4, !dbg !3236
  %64 = call fastcc i32 @do_aes_encrypt(i8* noundef %62, i32 noundef %63, i8* noundef nonnull %52, i32 noundef 16, i8* noundef nonnull %61) #14, !dbg !3237
  %65 = icmp eq i32 %64, 0, !dbg !3238
  br i1 %65, label %66, label %67, !dbg !3239

66:                                               ; preds = %51
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %52) #15, !dbg !3240
  br label %83

67:                                               ; preds = %51
  call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.hal_aes_encrypt_with_padding, i32 0, i32 0), i32 noundef 210, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #13, !dbg !3241
  call void @hal_crypt_lock_give() #14, !dbg !3243
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %52) #15, !dbg !3240
  br label %86

68:                                               ; preds = %27
  %69 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i32 0, i32 0, !dbg !3244
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %69) #15, !dbg !3244
  call void @llvm.dbg.declare(metadata [16 x i8]* %7, metadata !3181, metadata !DIExpression()), !dbg !3245
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(16) %69, i8 0, i32 16, i1 false), !dbg !3245
  %70 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %1, i32 0, i32 0, !dbg !3246
  %71 = load i8*, i8** %70, align 4, !dbg !3246
  %72 = load i32, i32* %17, align 4, !dbg !3247
  %73 = call i8* @memcpy(i8* noundef nonnull %69, i8* noundef %71, i32 noundef %72) #13, !dbg !3248
  %74 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i32 0, i32 %19, !dbg !3249
  %75 = call i8* @memset(i8* noundef nonnull %74, i32 noundef %21, i32 noundef %21) #13, !dbg !3250
  %76 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %0, i32 0, i32 0, !dbg !3251
  %77 = load i8*, i8** %76, align 4, !dbg !3251
  %78 = load i32, i32* %22, align 4, !dbg !3253
  %79 = call fastcc i32 @do_aes_encrypt(i8* noundef %77, i32 noundef %78, i8* noundef nonnull %69, i32 noundef 16, i8* noundef nonnull %3) #14, !dbg !3254
  %80 = icmp eq i32 %79, 0, !dbg !3255
  br i1 %80, label %82, label %81, !dbg !3256

81:                                               ; preds = %68
  call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.hal_aes_encrypt_with_padding, i32 0, i32 0), i32 noundef 223, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #13, !dbg !3257
  call void @hal_crypt_lock_give() #14, !dbg !3259
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %69) #15, !dbg !3260
  br label %86

82:                                               ; preds = %68
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %69) #15, !dbg !3260
  br label %83

83:                                               ; preds = %66, %82
  %84 = add i32 %18, 16, !dbg !3261
  %85 = and i32 %84, -16, !dbg !3261
  store i32 %85, i32* %22, align 4, !dbg !3262
  call void @hal_crypt_lock_give() #14, !dbg !3263
  br label %86, !dbg !3264

86:                                               ; preds = %67, %50, %81, %26, %83, %15
  %87 = phi i32 [ -1, %15 ], [ -1, %26 ], [ 0, %83 ], [ -1, %67 ], [ -1, %81 ], [ -1, %50 ], !dbg !3183
  ret i32 %87, !dbg !3265
}

; Function Attrs: noinline nounwind optsize
define internal void @aes_operation_done(i32 noundef %0) #0 !dbg !3266 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3268, metadata !DIExpression()), !dbg !3269
  %2 = tail call i32 @hal_nvic_disable_irq(i32 noundef 6) #13, !dbg !3270
  %3 = tail call i32 @hal_nvic_clear_pending_irq(i32 noundef 6) #13, !dbg !3271
  store volatile i8 1, i8* @g_aes_op_done, align 1, !dbg !3272
  %4 = tail call i32 @hal_nvic_enable_irq(i32 noundef 6) #13, !dbg !3273
  ret void, !dbg !3274
}

; Function Attrs: optsize
declare dso_local i32 @aes_set_key(i8 noundef zeroext, i8* noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare dso_local i32 @aes_configure(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @do_aes_encrypt(i8* noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4) unnamed_addr #0 !dbg !3275 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3279, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i32 %1, metadata !3280, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i8* %2, metadata !3281, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i32 %3, metadata !3282, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i8* %4, metadata !3283, metadata !DIExpression()), !dbg !3286
  store volatile i8 0, i8* @g_aes_op_done, align 1, !dbg !3287
  %6 = trunc i32 %1 to i16, !dbg !3288
  %7 = trunc i32 %3 to i16, !dbg !3289
  %8 = tail call i32 @aes_operate(i8* noundef %0, i16 noundef zeroext %6, i8* noundef %2, i16 noundef zeroext %7, i8* noundef %4, i8 noundef zeroext 1) #13, !dbg !3290
  call void @llvm.dbg.value(metadata i32 %8, metadata !3284, metadata !DIExpression()), !dbg !3286
  %9 = icmp slt i32 %8, 0, !dbg !3291
  br i1 %9, label %10, label %11, !dbg !3293

10:                                               ; preds = %5
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.do_aes_encrypt, i32 0, i32 0), i32 noundef 100, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0)) #13, !dbg !3294
  br label %19, !dbg !3296

11:                                               ; preds = %5, %15
  %12 = phi i32 [ %16, %15 ], [ 0, %5 ], !dbg !3286
  call void @llvm.dbg.value(metadata i32 %12, metadata !3285, metadata !DIExpression()), !dbg !3286
  %13 = load volatile i8, i8* @g_aes_op_done, align 1, !dbg !3297, !range !3147
  %14 = icmp eq i8 %13, 0, !dbg !3297
  br i1 %14, label %15, label %19, !dbg !3298

15:                                               ; preds = %11
  %16 = add nuw nsw i32 %12, 1, !dbg !3299
  call void @llvm.dbg.value(metadata i32 %16, metadata !3285, metadata !DIExpression()), !dbg !3286
  %17 = icmp eq i32 %16, 268435457, !dbg !3301
  br i1 %17, label %18, label %11, !dbg !3303, !llvm.loop !3304

18:                                               ; preds = %15
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.do_aes_encrypt, i32 0, i32 0), i32 noundef 108, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0)) #13, !dbg !3306
  br label %19, !dbg !3308

19:                                               ; preds = %11, %18, %10
  %20 = phi i32 [ -1, %10 ], [ -1, %18 ], [ 0, %11 ], !dbg !3286
  ret i32 %20, !dbg !3309
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
define dso_local i32 @hal_aes_decrypt(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef readonly %1, %struct.hal_aes_buffer_t* noundef readonly %2, i8* noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 !dbg !3310 {
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %0, metadata !3312, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %1, metadata !3313, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %2, metadata !3314, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata i8* %3, metadata !3315, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata i8 %4, metadata !3316, metadata !DIExpression()), !dbg !3318
  %6 = icmp eq %struct.hal_aes_buffer_t* %0, null, !dbg !3319
  %7 = icmp eq %struct.hal_aes_buffer_t* %1, null
  %8 = or i1 %6, %7, !dbg !3321
  %9 = icmp eq %struct.hal_aes_buffer_t* %2, null
  %10 = or i1 %8, %9, !dbg !3321
  %11 = icmp eq i8* %3, null
  %12 = or i1 %10, %11, !dbg !3321
  br i1 %12, label %13, label %14, !dbg !3321

13:                                               ; preds = %5
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.hal_aes_decrypt, i32 0, i32 0), i32 noundef 245, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0)) #13, !dbg !3322
  br label %57, !dbg !3324

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %1, i32 0, i32 1, !dbg !3325
  %16 = load i32, i32* %15, align 4, !dbg !3325
  %17 = and i32 %16, 15, !dbg !3327
  %18 = icmp eq i32 %17, 0, !dbg !3328
  br i1 %18, label %20, label %19, !dbg !3329

19:                                               ; preds = %14
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.hal_aes_decrypt, i32 0, i32 0), i32 noundef 250, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i32 noundef %16) #13, !dbg !3330
  br label %57, !dbg !3332

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %0, i32 0, i32 1, !dbg !3333
  %22 = load i32, i32* %21, align 4, !dbg !3333
  %23 = add i32 %16, -16, !dbg !3335
  %24 = icmp ult i32 %22, %23, !dbg !3336
  br i1 %24, label %25, label %26, !dbg !3337

25:                                               ; preds = %20
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.hal_aes_decrypt, i32 0, i32 0), i32 noundef 255, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i32 0, i32 0), i32 noundef %16, i32 noundef %16) #13, !dbg !3338
  br label %57, !dbg !3340

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %2, i32 0, i32 1, !dbg !3341
  %28 = load i32, i32* %27, align 4, !dbg !3341
  switch i32 %28, label %29 [
    i32 16, label %30
    i32 24, label %30
    i32 32, label %30
  ], !dbg !3343

29:                                               ; preds = %26
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.hal_aes_decrypt, i32 0, i32 0), i32 noundef 261, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5.7, i32 0, i32 0), i32 noundef %28) #13, !dbg !3344
  br label %57, !dbg !3346

30:                                               ; preds = %26, %26, %26
  %31 = tail call i32 @hal_crypt_lock_take() #14, !dbg !3347
  %32 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 6, void (i32)* noundef nonnull @aes_operation_done) #13, !dbg !3348
  %33 = tail call i32 @hal_nvic_set_priority(i32 noundef 6, i32 noundef 5) #13, !dbg !3349
  %34 = tail call i32 @hal_nvic_enable_irq(i32 noundef 6) #13, !dbg !3350
  %35 = load i32, i32* %27, align 4, !dbg !3351
  %36 = trunc i32 %35 to i8, !dbg !3352
  %37 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %2, i32 0, i32 0, !dbg !3353
  %38 = load i8*, i8** %37, align 4, !dbg !3353
  %39 = tail call i32 @aes_set_key(i8 noundef zeroext %36, i8* noundef %38) #13, !dbg !3354
  %40 = icmp eq i8 %4, 1, !dbg !3355
  %41 = zext i1 %40 to i8
  %42 = tail call i32 @aes_configure(i8 noundef zeroext 1, i8 noundef zeroext %41) #13, !dbg !3357
  %43 = tail call fastcc i32 @do_aes_decrypt(%struct.hal_aes_buffer_t* noundef nonnull %0, %struct.hal_aes_buffer_t* noundef nonnull %1, i8* noundef nonnull %3) #14, !dbg !3358
  %44 = icmp eq i32 %43, 0, !dbg !3360
  br i1 %44, label %46, label %45, !dbg !3361

45:                                               ; preds = %30
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.hal_aes_decrypt, i32 0, i32 0), i32 noundef 280, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0)) #13, !dbg !3362
  tail call void @hal_crypt_lock_give() #14, !dbg !3364
  br label %57, !dbg !3365

46:                                               ; preds = %30
  %47 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %0, i32 0, i32 0, !dbg !3366
  %48 = load i8*, i8** %47, align 4, !dbg !3366
  %49 = load i32, i32* %15, align 4, !dbg !3367
  %50 = add i32 %49, -1, !dbg !3368
  %51 = getelementptr inbounds i8, i8* %48, i32 %50, !dbg !3369
  %52 = load i8, i8* %51, align 1, !dbg !3369
  call void @llvm.dbg.value(metadata i8 %52, metadata !3317, metadata !DIExpression()), !dbg !3318
  %53 = select i1 %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), !dbg !3370
  tail call void (i8*, i32, i8*, i8*, i32, ...) @log_hal_dump_internal(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.hal_aes_decrypt, i32 0, i32 0), i32 noundef 286, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0), i8* noundef %48, i32 noundef %49, i8* noundef %53) #13, !dbg !3370
  %54 = load i32, i32* %15, align 4, !dbg !3371
  %55 = zext i8 %52 to i32, !dbg !3372
  %56 = sub i32 %54, %55, !dbg !3373
  store i32 %56, i32* %21, align 4, !dbg !3374
  tail call void @hal_crypt_lock_give() #14, !dbg !3375
  br label %57

57:                                               ; preds = %46, %45, %29, %25, %19, %13
  %58 = phi i32 [ -1, %13 ], [ -1, %19 ], [ -1, %25 ], [ -1, %29 ], [ -1, %45 ], [ 0, %46 ], !dbg !3318
  ret i32 %58, !dbg !3376
}

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @do_aes_decrypt(%struct.hal_aes_buffer_t* nocapture noundef readonly %0, %struct.hal_aes_buffer_t* nocapture noundef readonly %1, i8* noundef %2) unnamed_addr #0 !dbg !3377 {
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %0, metadata !3381, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %1, metadata !3382, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i8* %2, metadata !3383, metadata !DIExpression()), !dbg !3386
  store volatile i8 0, i8* @g_aes_op_done, align 1, !dbg !3387
  %4 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %1, i32 0, i32 0, !dbg !3388
  %5 = load i8*, i8** %4, align 4, !dbg !3388
  %6 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %1, i32 0, i32 1, !dbg !3389
  %7 = load i32, i32* %6, align 4, !dbg !3389
  %8 = trunc i32 %7 to i16, !dbg !3390
  %9 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %0, i32 0, i32 0, !dbg !3391
  %10 = load i8*, i8** %9, align 4, !dbg !3391
  %11 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %0, i32 0, i32 1, !dbg !3392
  %12 = load i32, i32* %11, align 4, !dbg !3392
  %13 = trunc i32 %12 to i16, !dbg !3393
  %14 = tail call i32 @aes_operate(i8* noundef %5, i16 noundef zeroext %8, i8* noundef %10, i16 noundef zeroext %13, i8* noundef %2, i8 noundef zeroext 0) #13, !dbg !3394
  call void @llvm.dbg.value(metadata i32 %14, metadata !3384, metadata !DIExpression()), !dbg !3386
  %15 = icmp slt i32 %14, 0, !dbg !3395
  br i1 %15, label %16, label %17, !dbg !3397

16:                                               ; preds = %3
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.do_aes_decrypt, i32 0, i32 0), i32 noundef 128, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0)) #13, !dbg !3398
  br label %25, !dbg !3400

17:                                               ; preds = %3, %21
  %18 = phi i32 [ %22, %21 ], [ 0, %3 ], !dbg !3386
  call void @llvm.dbg.value(metadata i32 %18, metadata !3385, metadata !DIExpression()), !dbg !3386
  %19 = load volatile i8, i8* @g_aes_op_done, align 1, !dbg !3401, !range !3147
  %20 = icmp eq i8 %19, 0, !dbg !3401
  br i1 %20, label %21, label %25, !dbg !3402

21:                                               ; preds = %17
  %22 = add nuw nsw i32 %18, 1, !dbg !3403
  call void @llvm.dbg.value(metadata i32 %22, metadata !3385, metadata !DIExpression()), !dbg !3386
  %23 = icmp eq i32 %22, 268435457, !dbg !3405
  br i1 %23, label %24, label %17, !dbg !3407, !llvm.loop !3408

24:                                               ; preds = %21
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.do_aes_decrypt, i32 0, i32 0), i32 noundef 136, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0)) #13, !dbg !3410
  br label %25, !dbg !3412

25:                                               ; preds = %17, %24, %16
  %26 = phi i32 [ -1, %16 ], [ -1, %24 ], [ 0, %17 ], !dbg !3386
  ret i32 %26, !dbg !3413
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_aes_cbc_encrypt(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2, i8* noundef %3) local_unnamed_addr #0 !dbg !3414 {
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %0, metadata !3418, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %1, metadata !3419, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %2, metadata !3420, metadata !DIExpression()), !dbg !3422
  call void @llvm.dbg.value(metadata i8* %3, metadata !3421, metadata !DIExpression()), !dbg !3422
  %5 = tail call i32 @hal_aes_encrypt_with_padding(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2, i8* noundef %3, i8 noundef zeroext 1) #14, !dbg !3423
  ret i32 %5, !dbg !3424
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_aes_cbc_decrypt(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2, i8* noundef %3) local_unnamed_addr #0 !dbg !3425 {
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %0, metadata !3427, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %1, metadata !3428, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %2, metadata !3429, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata i8* %3, metadata !3430, metadata !DIExpression()), !dbg !3431
  %5 = tail call i32 @hal_aes_decrypt(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2, i8* noundef %3, i8 noundef zeroext 1) #14, !dbg !3432
  ret i32 %5, !dbg !3433
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_aes_ecb_encrypt(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2) local_unnamed_addr #0 !dbg !3434 {
  %4 = alloca [16 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %0, metadata !3438, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %1, metadata !3439, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %2, metadata !3440, metadata !DIExpression()), !dbg !3442
  %5 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i32 0, i32 0, !dbg !3443
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #15, !dbg !3443
  call void @llvm.dbg.declare(metadata [16 x i8]* %4, metadata !3441, metadata !DIExpression()), !dbg !3444
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(16) %5, i8 0, i32 16, i1 false), !dbg !3444
  %6 = call i32 @hal_aes_encrypt_with_padding(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2, i8* noundef nonnull %5, i8 noundef zeroext 0) #14, !dbg !3445
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #15, !dbg !3446
  ret i32 %6, !dbg !3447
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_aes_ecb_decrypt(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2) local_unnamed_addr #0 !dbg !3448 {
  %4 = alloca [16 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %0, metadata !3450, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %1, metadata !3451, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %2, metadata !3452, metadata !DIExpression()), !dbg !3454
  %5 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i32 0, i32 0, !dbg !3455
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #15, !dbg !3455
  call void @llvm.dbg.declare(metadata [16 x i8]* %4, metadata !3453, metadata !DIExpression()), !dbg !3456
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(16) %5, i8 0, i32 16, i1 false), !dbg !3456
  %6 = call i32 @hal_aes_decrypt(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2, i8* noundef nonnull %5, i8 noundef zeroext 0) #14, !dbg !3457
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #15, !dbg !3458
  ret i32 %6, !dbg !3459
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_nvic_init() local_unnamed_addr #9 !dbg !3460 {
  ret i32 0, !dbg !3464
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_enable_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !3465 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3469, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata i32 -1, metadata !3470, metadata !DIExpression()), !dbg !3471
  %2 = icmp ugt i32 %0, 95, !dbg !3472
  br i1 %2, label %4, label %3, !dbg !3472

3:                                                ; preds = %1
  tail call fastcc void @NVIC_EnableIRQ(i32 noundef %0) #14, !dbg !3474
  call void @llvm.dbg.value(metadata i32 0, metadata !3470, metadata !DIExpression()), !dbg !3471
  br label %4, !dbg !3476

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3471
  ret i32 %5, !dbg !3477
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_EnableIRQ(i32 noundef %0) unnamed_addr #3 !dbg !3478 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3482, metadata !DIExpression()), !dbg !3483
  %2 = and i32 %0, 31, !dbg !3484
  %3 = shl nuw i32 1, %2, !dbg !3485
  %4 = lshr i32 %0, 5, !dbg !3486
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813312 to [8 x i32]*), i32 0, i32 %4, !dbg !3487
  store volatile i32 %3, i32* %5, align 4, !dbg !3488
  ret void, !dbg !3489
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_disable_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !3490 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3492, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata i32 -1, metadata !3493, metadata !DIExpression()), !dbg !3494
  %2 = icmp ugt i32 %0, 95, !dbg !3495
  br i1 %2, label %4, label %3, !dbg !3495

3:                                                ; preds = %1
  tail call fastcc void @NVIC_DisableIRQ(i32 noundef %0) #14, !dbg !3497
  call void @llvm.dbg.value(metadata i32 0, metadata !3493, metadata !DIExpression()), !dbg !3494
  br label %4, !dbg !3499

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3494
  ret i32 %5, !dbg !3500
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_DisableIRQ(i32 noundef %0) unnamed_addr #3 !dbg !3501 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3503, metadata !DIExpression()), !dbg !3504
  %2 = and i32 %0, 31, !dbg !3505
  %3 = shl nuw i32 1, %2, !dbg !3506
  %4 = lshr i32 %0, 5, !dbg !3507
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813184 to [8 x i32]*), i32 0, i32 %4, !dbg !3508
  store volatile i32 %3, i32* %5, align 4, !dbg !3509
  ret void, !dbg !3510
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_pending_irq(i32 noundef %0) local_unnamed_addr #4 !dbg !3511 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3515, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata i32 255, metadata !3516, metadata !DIExpression()), !dbg !3517
  %2 = icmp ugt i32 %0, 95, !dbg !3518
  br i1 %2, label %5, label %3, !dbg !3518

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) #14, !dbg !3520
  call void @llvm.dbg.value(metadata i32 %4, metadata !3516, metadata !DIExpression()), !dbg !3517
  br label %5, !dbg !3522

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 255, %1 ], !dbg !3517
  ret i32 %6, !dbg !3523
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) unnamed_addr #4 !dbg !3524 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3528, metadata !DIExpression()), !dbg !3529
  %2 = lshr i32 %0, 5, !dbg !3530
  %3 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %2, !dbg !3531
  %4 = load volatile i32, i32* %3, align 4, !dbg !3531
  %5 = and i32 %0, 31, !dbg !3532
  %6 = lshr i32 %4, %5, !dbg !3533
  %7 = and i32 %6, 1, !dbg !3533
  ret i32 %7, !dbg !3534
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_pending_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !3535 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3537, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i32 -1, metadata !3538, metadata !DIExpression()), !dbg !3539
  %2 = icmp ugt i32 %0, 95, !dbg !3540
  br i1 %2, label %4, label %3, !dbg !3540

3:                                                ; preds = %1
  tail call fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) #14, !dbg !3542
  call void @llvm.dbg.value(metadata i32 0, metadata !3538, metadata !DIExpression()), !dbg !3539
  br label %4, !dbg !3544

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3539
  ret i32 %5, !dbg !3545
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) unnamed_addr #3 !dbg !3546 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3548, metadata !DIExpression()), !dbg !3549
  %2 = and i32 %0, 31, !dbg !3550
  %3 = shl nuw i32 1, %2, !dbg !3551
  %4 = lshr i32 %0, 5, !dbg !3552
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %4, !dbg !3553
  store volatile i32 %3, i32* %5, align 4, !dbg !3554
  ret void, !dbg !3555
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_clear_pending_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !3556 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3558, metadata !DIExpression()), !dbg !3560
  call void @llvm.dbg.value(metadata i32 -1, metadata !3559, metadata !DIExpression()), !dbg !3560
  %2 = icmp ugt i32 %0, 95, !dbg !3561
  br i1 %2, label %4, label %3, !dbg !3561

3:                                                ; preds = %1
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #14, !dbg !3563
  call void @llvm.dbg.value(metadata i32 0, metadata !3559, metadata !DIExpression()), !dbg !3560
  br label %4, !dbg !3565

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3560
  ret i32 %5, !dbg !3566
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) unnamed_addr #3 !dbg !3567 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3569, metadata !DIExpression()), !dbg !3570
  %2 = and i32 %0, 31, !dbg !3571
  %3 = shl nuw i32 1, %2, !dbg !3572
  %4 = lshr i32 %0, 5, !dbg !3573
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812928 to [8 x i32]*), i32 0, i32 %4, !dbg !3574
  store volatile i32 %3, i32* %5, align 4, !dbg !3575
  ret void, !dbg !3576
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_priority(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !3577 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3581, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i32 %1, metadata !3582, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i32 -1, metadata !3583, metadata !DIExpression()), !dbg !3584
  %3 = icmp ugt i32 %0, 95, !dbg !3585
  br i1 %3, label %5, label %4, !dbg !3585

4:                                                ; preds = %2
  tail call fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) #14, !dbg !3587
  call void @llvm.dbg.value(metadata i32 0, metadata !3583, metadata !DIExpression()), !dbg !3584
  br label %5, !dbg !3589

5:                                                ; preds = %2, %4
  %6 = phi i32 [ 0, %4 ], [ -3, %2 ], !dbg !3584
  ret i32 %6, !dbg !3590
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) unnamed_addr #3 !dbg !3591 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3595, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i32 %1, metadata !3596, metadata !DIExpression()), !dbg !3597
  %3 = trunc i32 %1 to i8, !dbg !3598
  %4 = shl i8 %3, 5, !dbg !3598
  %5 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !3601
  store volatile i8 %4, i8* %5, align 1, !dbg !3602
  ret void, !dbg !3603
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_priority(i32 noundef %0) local_unnamed_addr #4 !dbg !3604 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3606, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i32 68, metadata !3607, metadata !DIExpression()), !dbg !3608
  %2 = icmp ugt i32 %0, 95, !dbg !3609
  br i1 %2, label %5, label %3, !dbg !3609

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPriority(i32 noundef %0) #14, !dbg !3611
  call void @llvm.dbg.value(metadata i32 %4, metadata !3607, metadata !DIExpression()), !dbg !3608
  br label %5, !dbg !3613

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 68, %1 ], !dbg !3608
  ret i32 %6, !dbg !3614
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPriority(i32 noundef %0) unnamed_addr #4 !dbg !3615 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3617, metadata !DIExpression()), !dbg !3618
  %2 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !3619
  %3 = load volatile i8, i8* %2, align 1, !dbg !3619
  %4 = lshr i8 %3, 5, !dbg !3622
  %5 = zext i8 %4 to i32, !dbg !3622
  ret i32 %5, !dbg !3623
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @Flash_ReturnReady() local_unnamed_addr #9 !dbg !3624 {
  ret void, !dbg !3625
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @isrC_main() local_unnamed_addr #0 section ".ramTEXT" !dbg !3626 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !3628, metadata !DIExpression()), !dbg !3630
  %1 = tail call fastcc i32 @get_current_irq() #14, !dbg !3631
  call void @llvm.dbg.value(metadata i32 %1, metadata !3629, metadata !DIExpression()), !dbg !3630
  %2 = icmp ugt i32 %1, 95, !dbg !3632
  br i1 %2, label %12, label %3, !dbg !3632

3:                                                ; preds = %0
  %4 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 0, !dbg !3634
  %5 = load void (i32)*, void (i32)** %4, align 4, !dbg !3634
  %6 = icmp eq void (i32)* %5, null, !dbg !3636
  br i1 %6, label %7, label %8, !dbg !3637

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 -4, metadata !3628, metadata !DIExpression()), !dbg !3630
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.isrC_main, i32 0, i32 0), i32 noundef 194, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0)) #13, !dbg !3638
  br label %12, !dbg !3640

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @get_pending_irq() #14, !dbg !3641
  %10 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 1, !dbg !3643
  store i32 %9, i32* %10, align 4, !dbg !3644
  %11 = load void (i32)*, void (i32)** %4, align 4, !dbg !3645
  tail call void %11(i32 noundef %1) #13, !dbg !3646
  call void @llvm.dbg.value(metadata i32 0, metadata !3628, metadata !DIExpression()), !dbg !3630
  br label %12, !dbg !3647

12:                                               ; preds = %0, %8, %7
  %13 = phi i32 [ -4, %7 ], [ 0, %8 ], [ -3, %0 ], !dbg !3630
  ret i32 %13, !dbg !3648
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_current_irq() unnamed_addr #4 !dbg !3649 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !3652
  %2 = and i32 %1, 511, !dbg !3653
  call void @llvm.dbg.value(metadata i32 %2, metadata !3651, metadata !DIExpression()), !dbg !3654
  %3 = add nsw i32 %2, -16, !dbg !3655
  ret i32 %3, !dbg !3656
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_pending_irq() unnamed_addr #4 !dbg !3657 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !3658
  %2 = lshr i32 %1, 22, !dbg !3659
  %3 = and i32 %2, 1, !dbg !3659
  ret i32 %3, !dbg !3660
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_register_isr_handler(i32 noundef %0, void (i32)* noundef %1) local_unnamed_addr #0 !dbg !3661 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3666, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata void (i32)* %1, metadata !3667, metadata !DIExpression()), !dbg !3669
  %3 = icmp ugt i32 %0, 95, !dbg !3670
  %4 = icmp eq void (i32)* %1, null
  %5 = or i1 %3, %4, !dbg !3670
  br i1 %5, label %10, label %6, !dbg !3670

6:                                                ; preds = %2
  %7 = tail call i32 @save_and_set_interrupt_mask() #13, !dbg !3672
  call void @llvm.dbg.value(metadata i32 %7, metadata !3668, metadata !DIExpression()), !dbg !3669
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #14, !dbg !3673
  %8 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 0, !dbg !3674
  store void (i32)* %1, void (i32)** %8, align 4, !dbg !3675
  %9 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 1, !dbg !3676
  store i32 0, i32* %9, align 4, !dbg !3677
  tail call void @restore_interrupt_mask(i32 noundef %7) #13, !dbg !3678
  br label %10, !dbg !3679

10:                                               ; preds = %2, %6
  %11 = phi i32 [ 0, %6 ], [ -2, %2 ], !dbg !3669
  ret i32 %11, !dbg !3680
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_save_and_set_interrupt_mask(i32* nocapture noundef writeonly %0) local_unnamed_addr #0 !dbg !3681 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3685, metadata !DIExpression()), !dbg !3686
  %2 = tail call i32 @save_and_set_interrupt_mask() #13, !dbg !3687
  store i32 %2, i32* %0, align 4, !dbg !3688
  ret i32 0, !dbg !3689
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #0 !dbg !3690 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3694, metadata !DIExpression()), !dbg !3695
  tail call void @restore_interrupt_mask(i32 noundef %0) #13, !dbg !3696
  ret i32 0, !dbg !3697
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pinmux_set_function(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !3698 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3704, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i8 %1, metadata !3705, metadata !DIExpression()), !dbg !3707
  %3 = icmp ugt i32 %0, 60, !dbg !3708
  br i1 %3, label %11, label %4, !dbg !3710

4:                                                ; preds = %2
  %5 = icmp ugt i8 %1, 15, !dbg !3711
  br i1 %5, label %11, label %6, !dbg !3713

6:                                                ; preds = %4
  %7 = zext i8 %1 to i32, !dbg !3714
  %8 = tail call i32 @pinmux_config(i32 noundef %0, i32 noundef %7) #13, !dbg !3715
  call void @llvm.dbg.value(metadata i32 %8, metadata !3706, metadata !DIExpression()), !dbg !3707
  %9 = icmp slt i32 %8, 0, !dbg !3716
  %10 = select i1 %9, i32 -3, i32 0, !dbg !3716
  br label %11, !dbg !3717

11:                                               ; preds = %4, %2, %6
  %12 = phi i32 [ %10, %6 ], [ -2, %2 ], [ -1, %4 ], !dbg !3707
  ret i32 %12, !dbg !3718
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_init(i32 noundef %0) local_unnamed_addr #9 !dbg !3719 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3724, metadata !DIExpression()), !dbg !3725
  ret i32 0, !dbg !3726
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_deinit(i32 noundef %0) local_unnamed_addr #9 !dbg !3727 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3729, metadata !DIExpression()), !dbg !3730
  ret i32 0, !dbg !3731
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_input(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #0 !dbg !3732 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3737, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata i32* %1, metadata !3738, metadata !DIExpression()), !dbg !3747
  %4 = icmp eq i32* %1, null, !dbg !3748
  br i1 %4, label %12, label %5, !dbg !3750

5:                                                ; preds = %2
  %6 = icmp ugt i32 %0, 60, !dbg !3751
  br i1 %6, label %12, label %7, !dbg !3753

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !3754
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #15, !dbg !3754
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #13, !dbg !3754
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 2, !dbg !3754
  %10 = load i8, i8* %9, align 1, !dbg !3754
  call void @llvm.dbg.value(metadata i8 %10, metadata !3739, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !3747
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #15, !dbg !3754
  %11 = zext i8 %10 to i32, !dbg !3755
  store i32 %11, i32* %1, align 4, !dbg !3756
  br label %12, !dbg !3757

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -1, %2 ], [ -2, %5 ], !dbg !3747
  ret i32 %13, !dbg !3758
}

; Function Attrs: optsize
declare dso_local void @gpio_get_status(%struct.gpio_status* sret(%struct.gpio_status) align 4, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !3759 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3763, metadata !DIExpression()), !dbg !3766
  call void @llvm.dbg.value(metadata i32 %1, metadata !3764, metadata !DIExpression()), !dbg !3766
  %3 = icmp ugt i32 %0, 60, !dbg !3767
  br i1 %3, label %9, label %4, !dbg !3769

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !3770
  %6 = tail call i32 @gpio_write(i32 noundef %0, i8 noundef zeroext %5) #13, !dbg !3771
  call void @llvm.dbg.value(metadata i32 %6, metadata !3765, metadata !DIExpression()), !dbg !3766
  %7 = icmp slt i32 %6, 0, !dbg !3772
  %8 = select i1 %7, i32 -3, i32 0, !dbg !3772
  br label %9, !dbg !3773

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !3766
  ret i32 %10, !dbg !3774
}

; Function Attrs: optsize
declare dso_local i32 @gpio_write(i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_output(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #0 !dbg !3775 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3777, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32* %1, metadata !3778, metadata !DIExpression()), !dbg !3780
  %4 = icmp ugt i32 %0, 60, !dbg !3781
  br i1 %4, label %12, label %5, !dbg !3783

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !3784
  br i1 %6, label %12, label %7, !dbg !3786

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !3787
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #15, !dbg !3787
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #13, !dbg !3787
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 3, !dbg !3787
  %10 = load i8, i8* %9, align 2, !dbg !3787
  call void @llvm.dbg.value(metadata i8 %10, metadata !3779, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !3780
  call void @llvm.dbg.value(metadata i8 undef, metadata !3779, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !3780
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #15, !dbg !3787
  %11 = zext i8 %10 to i32, !dbg !3788
  store i32 %11, i32* %1, align 4, !dbg !3789
  br label %12, !dbg !3790

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !3780
  ret i32 %13, !dbg !3791
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_direction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !3792 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3797, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata i32 %1, metadata !3798, metadata !DIExpression()), !dbg !3800
  %3 = icmp ugt i32 %0, 60, !dbg !3801
  br i1 %3, label %8, label %4, !dbg !3803

4:                                                ; preds = %2
  %5 = tail call i32 @gpio_direction(i32 noundef %0, i32 noundef %1) #13, !dbg !3804
  call void @llvm.dbg.value(metadata i32 %5, metadata !3799, metadata !DIExpression()), !dbg !3800
  %6 = icmp slt i32 %5, 0, !dbg !3805
  %7 = select i1 %6, i32 -3, i32 0, !dbg !3805
  br label %8, !dbg !3806

8:                                                ; preds = %2, %4
  %9 = phi i32 [ %7, %4 ], [ -2, %2 ], !dbg !3800
  ret i32 %9, !dbg !3807
}

; Function Attrs: optsize
declare dso_local i32 @gpio_direction(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_direction(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #0 !dbg !3808 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3813, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i32* %1, metadata !3814, metadata !DIExpression()), !dbg !3816
  %4 = icmp ugt i32 %0, 60, !dbg !3817
  br i1 %4, label %13, label %5, !dbg !3819

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !3820
  br i1 %6, label %13, label %7, !dbg !3822

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !3823
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #15, !dbg !3823
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #13, !dbg !3823
  call void @llvm.dbg.value(metadata i32 undef, metadata !3815, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3816
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 1, !dbg !3823
  %10 = load i8, i8* %9, align 4, !dbg !3823
  call void @llvm.dbg.value(metadata i8 %10, metadata !3815, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !3816
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #15, !dbg !3823
  %11 = icmp ne i8 %10, 0, !dbg !3824
  %12 = zext i1 %11 to i32, !dbg !3824
  store i32 %12, i32* %1, align 4, !dbg !3825
  br label %13, !dbg !3826

13:                                               ; preds = %5, %2, %7
  %14 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !3816
  ret i32 %14, !dbg !3827
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_toggle_pin(i32 noundef %0) local_unnamed_addr #0 !dbg !3828 {
  %2 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3830, metadata !DIExpression()), !dbg !3832
  %3 = icmp ugt i32 %0, 60, !dbg !3833
  br i1 %3, label %11, label %4, !dbg !3835

4:                                                ; preds = %1
  %5 = bitcast %struct.gpio_status* %2 to i8*, !dbg !3836
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #15, !dbg !3836
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %2, i32 noundef %0) #13, !dbg !3836
  %6 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %2, i32 0, i32 3, !dbg !3836
  %7 = load i8, i8* %6, align 2, !dbg !3836
  call void @llvm.dbg.value(metadata i8 %7, metadata !3831, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !3832
  call void @llvm.dbg.value(metadata i8 undef, metadata !3831, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !3832
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #15, !dbg !3836
  %8 = xor i8 %7, 1, !dbg !3837
  %9 = zext i8 %8 to i32, !dbg !3837
  %10 = call i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %9) #14, !dbg !3838
  br label %11, !dbg !3839

11:                                               ; preds = %1, %4
  %12 = phi i32 [ %10, %4 ], [ -2, %1 ], !dbg !3832
  ret i32 %12, !dbg !3840
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_up(i32 noundef %0) local_unnamed_addr #0 !dbg !3841 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3843, metadata !DIExpression()), !dbg !3845
  %2 = icmp ugt i32 %0, 60, !dbg !3846
  br i1 %2, label %10, label %3, !dbg !3848

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #13, !dbg !3849
  call void @llvm.dbg.value(metadata i32 %4, metadata !3844, metadata !DIExpression()), !dbg !3845
  %5 = icmp slt i32 %4, 0, !dbg !3850
  br i1 %5, label %10, label %6, !dbg !3852

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullUp(i32 noundef %0) #13, !dbg !3853
  call void @llvm.dbg.value(metadata i32 %7, metadata !3844, metadata !DIExpression()), !dbg !3845
  %8 = icmp slt i32 %7, 0, !dbg !3854
  %9 = select i1 %8, i32 -3, i32 0, !dbg !3854
  br label %10, !dbg !3855

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !3845
  ret i32 %11, !dbg !3856
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare dso_local i32 @gpio_PullUp(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_down(i32 noundef %0) local_unnamed_addr #0 !dbg !3857 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3859, metadata !DIExpression()), !dbg !3861
  %2 = icmp ugt i32 %0, 60, !dbg !3862
  br i1 %2, label %10, label %3, !dbg !3864

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #13, !dbg !3865
  call void @llvm.dbg.value(metadata i32 %4, metadata !3860, metadata !DIExpression()), !dbg !3861
  %5 = icmp slt i32 %4, 0, !dbg !3866
  br i1 %5, label %10, label %6, !dbg !3868

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullDown(i32 noundef %0) #13, !dbg !3869
  call void @llvm.dbg.value(metadata i32 %7, metadata !3860, metadata !DIExpression()), !dbg !3861
  %8 = icmp slt i32 %7, 0, !dbg !3870
  %9 = select i1 %8, i32 -3, i32 0, !dbg !3870
  br label %10, !dbg !3871

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !3861
  ret i32 %11, !dbg !3872
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDown(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_disable_pull(i32 noundef %0) local_unnamed_addr #0 !dbg !3873 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3875, metadata !DIExpression()), !dbg !3877
  %2 = icmp ugt i32 %0, 60, !dbg !3878
  br i1 %2, label %7, label %3, !dbg !3880

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #13, !dbg !3881
  call void @llvm.dbg.value(metadata i32 %4, metadata !3876, metadata !DIExpression()), !dbg !3877
  %5 = icmp slt i32 %4, 0, !dbg !3882
  %6 = select i1 %5, i32 -3, i32 0, !dbg !3882
  br label %7, !dbg !3883

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ -2, %1 ], !dbg !3877
  ret i32 %8, !dbg !3884
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_driving_current(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !3885 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3889, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata i32 %1, metadata !3890, metadata !DIExpression()), !dbg !3892
  %3 = icmp ugt i32 %0, 60, !dbg !3893
  br i1 %3, label %9, label %4, !dbg !3895

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !3896
  %6 = tail call i32 @gpio_SetDriving(i32 noundef %0, i8 noundef zeroext %5) #13, !dbg !3897
  call void @llvm.dbg.value(metadata i32 %6, metadata !3891, metadata !DIExpression()), !dbg !3892
  %7 = icmp slt i32 %6, 0, !dbg !3898
  %8 = select i1 %7, i32 -3, i32 0, !dbg !3898
  br label %9, !dbg !3899

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !3892
  ret i32 %10, !dbg !3900
}

; Function Attrs: optsize
declare dso_local i32 @gpio_SetDriving(i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_driving_current(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !3901 {
  %3 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3906, metadata !DIExpression()), !dbg !3910
  call void @llvm.dbg.value(metadata i32* %1, metadata !3907, metadata !DIExpression()), !dbg !3910
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #15, !dbg !3911
  %4 = icmp ugt i32 %0, 60, !dbg !3912
  br i1 %4, label %11, label %5, !dbg !3914

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3909, metadata !DIExpression(DW_OP_deref)), !dbg !3910
  %6 = call i32 @gpio_GetDriving(i32 noundef %0, i8* noundef nonnull %3) #13, !dbg !3915
  call void @llvm.dbg.value(metadata i32 %6, metadata !3908, metadata !DIExpression()), !dbg !3910
  %7 = load i8, i8* %3, align 1, !dbg !3916
  call void @llvm.dbg.value(metadata i8 %7, metadata !3909, metadata !DIExpression()), !dbg !3910
  %8 = zext i8 %7 to i32, !dbg !3917
  store i32 %8, i32* %1, align 4, !dbg !3918
  %9 = icmp slt i32 %6, 0, !dbg !3919
  %10 = select i1 %9, i32 -3, i32 0, !dbg !3919
  br label %11, !dbg !3920

11:                                               ; preds = %2, %5
  %12 = phi i32 [ %10, %5 ], [ -2, %2 ], !dbg !3910
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #15, !dbg !3921
  ret i32 %12, !dbg !3921
}

; Function Attrs: optsize
declare dso_local i32 @gpio_GetDriving(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_md5_init(%struct.hal_md5_context_t* noundef %0) local_unnamed_addr #0 !dbg !3922 {
  call void @llvm.dbg.value(metadata %struct.hal_md5_context_t* %0, metadata !3936, metadata !DIExpression()), !dbg !3937
  %2 = icmp eq %struct.hal_md5_context_t* %0, null, !dbg !3938
  br i1 %2, label %3, label %4, !dbg !3940

3:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.hal_md5_init, i32 0, i32 0), i32 noundef 47, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0)) #13, !dbg !3941
  br label %7, !dbg !3943

4:                                                ; preds = %1
  %5 = tail call i32 @hal_crypt_lock_take() #13, !dbg !3944
  %6 = bitcast %struct.hal_md5_context_t* %0 to %struct.hal_md5_context_t*, !dbg !3945
  tail call void @crypt_md5_init(%struct.hal_md5_context_t* noundef nonnull %6) #13, !dbg !3946
  tail call void @hal_crypt_lock_give() #13, !dbg !3947
  br label %7, !dbg !3948

7:                                                ; preds = %4, %3
  %8 = phi i32 [ -1, %3 ], [ 0, %4 ], !dbg !3937
  ret i32 %8, !dbg !3949
}

; Function Attrs: optsize
declare dso_local void @crypt_md5_init(%struct.hal_md5_context_t* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_md5_append(%struct.hal_md5_context_t* noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !3950 {
  call void @llvm.dbg.value(metadata %struct.hal_md5_context_t* %0, metadata !3954, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i8* %1, metadata !3955, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i32 %2, metadata !3956, metadata !DIExpression()), !dbg !3957
  %4 = icmp eq %struct.hal_md5_context_t* %0, null, !dbg !3958
  br i1 %4, label %5, label %6, !dbg !3960

5:                                                ; preds = %3
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.hal_md5_append, i32 0, i32 0), i32 noundef 62, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0)) #13, !dbg !3961
  br label %21, !dbg !3963

6:                                                ; preds = %3
  %7 = tail call i32 @hal_crypt_lock_take() #13, !dbg !3964
  call void @llvm.dbg.value(metadata i32 %2, metadata !3956, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i8* %1, metadata !3955, metadata !DIExpression()), !dbg !3957
  %8 = icmp ugt i32 %2, 255, !dbg !3965
  br i1 %8, label %9, label %17, !dbg !3968

9:                                                ; preds = %6
  %10 = bitcast %struct.hal_md5_context_t* %0 to %struct.hal_md5_context_t*
  br label %11, !dbg !3968

11:                                               ; preds = %9, %11
  %12 = phi i32 [ %2, %9 ], [ %15, %11 ]
  %13 = phi i8* [ %1, %9 ], [ %14, %11 ]
  call void @llvm.dbg.value(metadata i32 %12, metadata !3956, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i8* %13, metadata !3955, metadata !DIExpression()), !dbg !3957
  tail call void @crypt_md5_append(%struct.hal_md5_context_t* noundef nonnull %10, i8* noundef %13, i32 noundef 256) #13, !dbg !3969
  %14 = getelementptr inbounds i8, i8* %13, i32 256, !dbg !3971
  call void @llvm.dbg.value(metadata i8* %14, metadata !3955, metadata !DIExpression()), !dbg !3957
  %15 = add i32 %12, -256, !dbg !3972
  call void @llvm.dbg.value(metadata i32 %15, metadata !3956, metadata !DIExpression()), !dbg !3957
  %16 = icmp ugt i32 %15, 255, !dbg !3965
  br i1 %16, label %11, label %17, !dbg !3968, !llvm.loop !3973

17:                                               ; preds = %11, %6
  %18 = phi i8* [ %1, %6 ], [ %14, %11 ]
  %19 = phi i32 [ %2, %6 ], [ %15, %11 ]
  %20 = bitcast %struct.hal_md5_context_t* %0 to %struct.hal_md5_context_t*, !dbg !3976
  tail call void @crypt_md5_append(%struct.hal_md5_context_t* noundef nonnull %20, i8* noundef %18, i32 noundef %19) #13, !dbg !3978
  tail call void @hal_crypt_lock_give() #13, !dbg !3979
  br label %21, !dbg !3980

21:                                               ; preds = %17, %5
  %22 = phi i32 [ -1, %5 ], [ 0, %17 ], !dbg !3957
  ret i32 %22, !dbg !3981
}

; Function Attrs: optsize
declare dso_local void @crypt_md5_append(%struct.hal_md5_context_t* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_md5_end(%struct.hal_md5_context_t* noundef %0, i8* noundef %1) local_unnamed_addr #0 !dbg !3982 {
  call void @llvm.dbg.value(metadata %struct.hal_md5_context_t* %0, metadata !3986, metadata !DIExpression()), !dbg !3988
  call void @llvm.dbg.value(metadata i8* %1, metadata !3987, metadata !DIExpression()), !dbg !3988
  %3 = icmp eq %struct.hal_md5_context_t* %0, null, !dbg !3989
  br i1 %3, label %4, label %5, !dbg !3991

4:                                                ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.hal_md5_end, i32 0, i32 0), i32 noundef 86, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0)) #13, !dbg !3992
  br label %11, !dbg !3994

5:                                                ; preds = %2
  %6 = icmp eq i8* %1, null, !dbg !3995
  br i1 %6, label %7, label %8, !dbg !3997

7:                                                ; preds = %5
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.hal_md5_end, i32 0, i32 0), i32 noundef 90, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1.24, i32 0, i32 0)) #13, !dbg !3998
  br label %11, !dbg !4000

8:                                                ; preds = %5
  %9 = tail call i32 @hal_crypt_lock_take() #13, !dbg !4001
  %10 = bitcast %struct.hal_md5_context_t* %0 to %struct.hal_md5_context_t*, !dbg !4002
  tail call void @crypt_md5_end(%struct.hal_md5_context_t* noundef nonnull %10, i8* noundef nonnull %1) #13, !dbg !4003
  tail call void @hal_crypt_lock_give() #13, !dbg !4004
  br label %11, !dbg !4005

11:                                               ; preds = %8, %7, %4
  %12 = phi i32 [ -1, %4 ], [ -1, %7 ], [ 0, %8 ], !dbg !3988
  ret i32 %12, !dbg !4006
}

; Function Attrs: optsize
declare dso_local void @crypt_md5_end(%struct.hal_md5_context_t* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_init(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #0 !dbg !4007 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4013, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4014, metadata !DIExpression()), !dbg !4015
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !4016
  br i1 %3, label %4, label %18, !dbg !4018

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !4019
  %6 = load i8, i8* %5, align 4, !dbg !4019, !range !3147
  %7 = icmp eq i8 %6, 0, !dbg !4019
  br i1 %7, label %8, label %18, !dbg !4021

8:                                                ; preds = %4
  %9 = tail call i8* @memset(i8* noundef nonnull %5, i32 noundef 0, i32 noundef 64) #13, !dbg !4022
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4023
  %11 = bitcast %struct.hal_uart_config_t* %10 to i8*, !dbg !4024
  %12 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4025
  %13 = tail call i8* @memcpy(i8* noundef nonnull %11, i8* noundef %12, i32 noundef 16) #13, !dbg !4026
  store i8 1, i8* %5, align 4, !dbg !4027
  %14 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4028, !range !4029
  tail call void @uart_reset_default_value(i32 noundef %14) #13, !dbg !4030
  tail call void @halUART_HWInit(i32 noundef %14) #13, !dbg !4031
  %15 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !4032
  %16 = icmp eq i32 %15, 0, !dbg !4034
  %17 = select i1 %16, i32 0, i32 -4, !dbg !4015
  br label %18, !dbg !4015

18:                                               ; preds = %8, %4, %2
  %19 = phi i32 [ -4, %2 ], [ -3, %4 ], [ %17, %8 ], !dbg !4015
  ret i32 %19, !dbg !4035
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef readonly %1) unnamed_addr #5 !dbg !4036 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4042, metadata !DIExpression()), !dbg !4044
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4043, metadata !DIExpression()), !dbg !4044
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4045
  %4 = icmp ne %struct.hal_uart_config_t* %1, null
  %5 = and i1 %4, %3, !dbg !4047
  br i1 %5, label %6, label %22, !dbg !4047

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4048
  %8 = load i32, i32* %7, align 4, !dbg !4048
  %9 = icmp ugt i32 %8, 12, !dbg !4050
  br i1 %9, label %22, label %10, !dbg !4051

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4052
  %12 = load i32, i32* %11, align 4, !dbg !4052
  %13 = icmp ugt i32 %12, 2, !dbg !4053
  br i1 %13, label %22, label %14, !dbg !4054

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4055
  %16 = load i32, i32* %15, align 4, !dbg !4055
  %17 = icmp ugt i32 %16, 1, !dbg !4056
  br i1 %17, label %22, label %18, !dbg !4057

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4058
  %20 = load i32, i32* %19, align 4, !dbg !4058
  %21 = icmp ult i32 %20, 4, !dbg !4059
  br label %22, !dbg !4060

22:                                               ; preds = %18, %6, %10, %14, %2
  %23 = phi i1 [ false, %2 ], [ false, %14 ], [ false, %10 ], [ false, %6 ], [ %21, %18 ], !dbg !4044
  ret i1 %23, !dbg !4061
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_port(i32 noundef %0) unnamed_addr #9 !dbg !4062 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4066, metadata !DIExpression()), !dbg !4067
  %2 = icmp ne i32 %0, 0, !dbg !4068
  %3 = zext i1 %2 to i32, !dbg !4069
  ret i32 %3, !dbg !4070
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #0 !dbg !4071 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4075, metadata !DIExpression()), !dbg !4077
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4076, metadata !DIExpression()), !dbg !4077
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !4078
  br i1 %3, label %4, label %22, !dbg !4080

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4081
  %6 = bitcast %struct.hal_uart_config_t* %5 to i8*, !dbg !4082
  %7 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4083
  %8 = tail call i8* @memcpy(i8* noundef nonnull %6, i8* noundef %7, i32 noundef 16) #13, !dbg !4084
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4085
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4086
  %11 = load i32, i32* %10, align 4, !dbg !4086
  %12 = tail call fastcc i32 @hal_uart_translate_baudrate(i32 noundef %11) #14, !dbg !4087
  %13 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4088
  %14 = load i32, i32* %13, align 4, !dbg !4088
  %15 = tail call fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %14) #14, !dbg !4089
  %16 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4090
  %17 = load i32, i32* %16, align 4, !dbg !4090
  %18 = tail call fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %17) #14, !dbg !4091
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4092
  %20 = load i32, i32* %19, align 4, !dbg !4092
  %21 = tail call fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %20) #14, !dbg !4093
  tail call void @halUART_SetFormat(i32 noundef %9, i32 noundef %12, i16 noundef zeroext %15, i16 noundef zeroext %18, i16 noundef zeroext %21) #13, !dbg !4094
  br label %22, !dbg !4095

22:                                               ; preds = %2, %4
  %23 = phi i32 [ 0, %4 ], [ -4, %2 ], !dbg !4077
  ret i32 %23, !dbg !4096
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_baudrate(i32 noundef %0) unnamed_addr #9 !dbg !4097 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4101, metadata !DIExpression()), !dbg !4106
  call void @llvm.dbg.declare(metadata [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, metadata !4102, metadata !DIExpression()), !dbg !4107
  %2 = getelementptr inbounds [13 x i32], [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, i32 0, i32 %0, !dbg !4108
  %3 = load i32, i32* %2, align 4, !dbg !4108
  ret i32 %3, !dbg !4109
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %0) unnamed_addr #9 !dbg !4110 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4114, metadata !DIExpression()), !dbg !4117
  call void @llvm.dbg.declare(metadata [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, metadata !4115, metadata !DIExpression()), !dbg !4118
  %2 = getelementptr inbounds [4 x i16], [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, i32 0, i32 %0, !dbg !4119
  %3 = load i16, i16* %2, align 2, !dbg !4119
  ret i16 %3, !dbg !4120
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %0) unnamed_addr #9 !dbg !4121 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4125, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.declare(metadata [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, metadata !4126, metadata !DIExpression()), !dbg !4129
  %2 = getelementptr inbounds [5 x i16], [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, i32 0, i32 %0, !dbg !4130
  %3 = load i16, i16* %2, align 2, !dbg !4130
  ret i16 %3, !dbg !4131
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %0) unnamed_addr #9 !dbg !4132 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4136, metadata !DIExpression()), !dbg !4139
  call void @llvm.dbg.declare(metadata [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, metadata !4137, metadata !DIExpression()), !dbg !4140
  %2 = getelementptr inbounds [3 x i16], [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, i32 0, i32 %0, !dbg !4141
  %3 = load i16, i16* %2, align 2, !dbg !4141
  ret i16 %3, !dbg !4142
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) unnamed_addr #9 !dbg !4143 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4147, metadata !DIExpression()), !dbg !4148
  %2 = icmp ult i32 %0, 2, !dbg !4149
  ret i1 %2, !dbg !4150
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_deinit(i32 noundef %0) local_unnamed_addr #0 !dbg !4151 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4155, metadata !DIExpression()), !dbg !4156
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4157
  br i1 %2, label %3, label %10, !dbg !4159

3:                                                ; preds = %1
  %4 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !4160
  %5 = load i8, i8* %4, align 4, !dbg !4160, !range !3147
  %6 = icmp eq i8 %5, 0, !dbg !4162
  br i1 %6, label %10, label %7, !dbg !4163

7:                                                ; preds = %3
  %8 = tail call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i32 noundef 64) #13, !dbg !4164
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4165, !range !4029
  tail call void @uart_query_empty(i32 noundef %9) #13, !dbg !4166
  tail call void @uart_reset_default_value(i32 noundef %9) #13, !dbg !4167
  br label %10, !dbg !4168

10:                                               ; preds = %3, %1, %7
  %11 = phi i32 [ 0, %7 ], [ -4, %1 ], [ -2, %3 ], !dbg !4156
  ret i32 %11, !dbg !4169
}

; Function Attrs: noinline nounwind optsize
define dso_local void @hal_uart_put_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !4170 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4174, metadata !DIExpression()), !dbg !4177
  call void @llvm.dbg.value(metadata i8 %1, metadata !4175, metadata !DIExpression()), !dbg !4177
  %3 = icmp eq i32 %0, 0, !dbg !4178
  %4 = icmp eq i32 %0, 1, !dbg !4178
  %5 = select i1 %4, i32 1, i32 2, !dbg !4178
  %6 = select i1 %3, i32 0, i32 %5, !dbg !4178
  call void @llvm.dbg.value(metadata i32 %6, metadata !4176, metadata !DIExpression()), !dbg !4177
  %7 = icmp eq i32 %6, 2, !dbg !4179
  br i1 %7, label %9, label %8, !dbg !4181

8:                                                ; preds = %2
  tail call void @uart_output_char(i32 noundef %6, i8 noundef zeroext %1) #13, !dbg !4182
  br label %9, !dbg !4184

9:                                                ; preds = %2, %8
  ret void, !dbg !4185
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_polling(i32 noundef %0, i8* noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !4186 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4190, metadata !DIExpression()), !dbg !4195
  call void @llvm.dbg.value(metadata i8* %1, metadata !4191, metadata !DIExpression()), !dbg !4195
  call void @llvm.dbg.value(metadata i32 %2, metadata !4192, metadata !DIExpression()), !dbg !4195
  %4 = icmp eq i32 %0, 0, !dbg !4196
  %5 = icmp eq i32 %0, 1, !dbg !4196
  %6 = select i1 %5, i32 1, i32 2, !dbg !4196
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4196
  call void @llvm.dbg.value(metadata i32 %7, metadata !4193, metadata !DIExpression()), !dbg !4195
  %8 = icmp eq i8* %1, null, !dbg !4197
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !4199
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !4199
  call void @llvm.dbg.value(metadata i32 0, metadata !4194, metadata !DIExpression()), !dbg !4195
  br i1 %12, label %19, label %13, !dbg !4199

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !4194, metadata !DIExpression()), !dbg !4195
  %15 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !4200
  %16 = load i8, i8* %15, align 1, !dbg !4200
  tail call void @uart_output_char(i32 noundef %7, i8 noundef zeroext %16) #13, !dbg !4206
  %17 = add nuw i32 %14, 1, !dbg !4207
  call void @llvm.dbg.value(metadata i32 %17, metadata !4194, metadata !DIExpression()), !dbg !4195
  %18 = icmp eq i32 %17, %2, !dbg !4208
  br i1 %18, label %19, label %13, !dbg !4209, !llvm.loop !4210

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !4195
  ret i32 %20, !dbg !4212
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !4213 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4215, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata i8* %1, metadata !4216, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata i32 %2, metadata !4217, metadata !DIExpression()), !dbg !4222
  %5 = bitcast i32* %4 to i8*, !dbg !4223
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #15, !dbg !4223
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4224
  br i1 %6, label %7, label %24, !dbg !4226

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !4227
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !4229
  br i1 %10, label %24, label %11, !dbg !4229

11:                                               ; preds = %7
  %12 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !4230
  %13 = load i8, i8* %12, align 4, !dbg !4230, !range !3147
  %14 = icmp eq i8 %13, 0, !dbg !4230
  br i1 %14, label %24, label %15, !dbg !4232

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4233, !range !4029
  call void @llvm.dbg.value(metadata i32* %4, metadata !4218, metadata !DIExpression(DW_OP_deref)), !dbg !4222
  call void @halUART_Get_VFIFO_Length(i32 noundef %16, i32 noundef 0, i32* noundef nonnull %4) #13, !dbg !4234
  %17 = load i32, i32* %4, align 4, !dbg !4235
  call void @llvm.dbg.value(metadata i32 %17, metadata !4218, metadata !DIExpression()), !dbg !4222
  %18 = icmp ult i32 %17, %2, !dbg !4237
  %19 = select i1 %18, i32 %17, i32 %2
  call void @llvm.dbg.value(metadata i32 %19, metadata !4219, metadata !DIExpression()), !dbg !4222
  call void @halUART_Write_VFIFO_Data(i32 noundef %16, i8* noundef nonnull %1, i32 noundef %19) #13, !dbg !4238
  %20 = load i32, i32* %4, align 4, !dbg !4239
  call void @llvm.dbg.value(metadata i32 %20, metadata !4218, metadata !DIExpression()), !dbg !4222
  %21 = icmp eq i32 %19, %20, !dbg !4241
  br i1 %21, label %22, label %24, !dbg !4242

22:                                               ; preds = %15
  %23 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %16, i1 noundef zeroext false) #14, !dbg !4243, !range !4245
  call void @llvm.dbg.value(metadata i32 %23, metadata !4220, metadata !DIExpression()), !dbg !4222
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %23) #13, !dbg !4246
  br label %24, !dbg !4247

24:                                               ; preds = %15, %22, %11, %7, %3
  %25 = phi i32 [ 0, %3 ], [ 0, %7 ], [ 0, %11 ], [ %19, %22 ], [ %19, %15 ], !dbg !4222
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #15, !dbg !4248
  ret i32 %25, !dbg !4248
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #9 !dbg !4249 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4253, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.value(metadata i1 %1, metadata !4254, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4256
  %3 = icmp eq i32 %0, 0, !dbg !4257
  %4 = select i1 %1, i32 15, i32 14, !dbg !4259
  %5 = select i1 %1, i32 17, i32 16, !dbg !4259
  %6 = select i1 %3, i32 %4, i32 %5, !dbg !4259
  call void @llvm.dbg.value(metadata i32 %6, metadata !4255, metadata !DIExpression()), !dbg !4256
  ret i32 %6, !dbg !4260
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_enable_interrupt(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @hal_uart_get_char(i32 noundef %0) local_unnamed_addr #0 !dbg !4261 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4265, metadata !DIExpression()), !dbg !4267
  %2 = icmp eq i32 %0, 0, !dbg !4268
  %3 = icmp eq i32 %0, 1, !dbg !4268
  %4 = select i1 %3, i32 1, i32 2, !dbg !4268
  %5 = select i1 %2, i32 0, i32 %4, !dbg !4268
  call void @llvm.dbg.value(metadata i32 %5, metadata !4266, metadata !DIExpression()), !dbg !4267
  %6 = icmp ult i32 %5, 2, !dbg !4269
  br i1 %6, label %7, label %9, !dbg !4271

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @uart_input_char(i32 noundef %5) #13, !dbg !4272
  br label %9, !dbg !4274

9:                                                ; preds = %1, %7
  %10 = phi i8 [ %8, %7 ], [ 0, %1 ], !dbg !4275
  ret i8 %10, !dbg !4276
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_char_unblocking(i32 noundef %0) local_unnamed_addr #0 !dbg !4277 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4281, metadata !DIExpression()), !dbg !4283
  %2 = icmp eq i32 %0, 0, !dbg !4284
  %3 = icmp eq i32 %0, 1, !dbg !4284
  %4 = select i1 %3, i32 1, i32 2, !dbg !4284
  %5 = select i1 %2, i32 0, i32 %4, !dbg !4284
  call void @llvm.dbg.value(metadata i32 %5, metadata !4282, metadata !DIExpression()), !dbg !4283
  %6 = icmp ult i32 %5, 2, !dbg !4285
  br i1 %6, label %7, label %9, !dbg !4287

7:                                                ; preds = %1
  %8 = tail call i32 @uart_input_char_unblocking(i32 noundef %5) #13, !dbg !4288
  br label %9, !dbg !4290

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ], !dbg !4291
  ret i32 %10, !dbg !4292
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_polling(i32 noundef %0, i8* noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !4293 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4297, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata i8* %1, metadata !4298, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata i32 %2, metadata !4299, metadata !DIExpression()), !dbg !4302
  %4 = icmp eq i32 %0, 0, !dbg !4303
  %5 = icmp eq i32 %0, 1, !dbg !4303
  %6 = select i1 %5, i32 1, i32 2, !dbg !4303
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4303
  call void @llvm.dbg.value(metadata i32 %7, metadata !4300, metadata !DIExpression()), !dbg !4302
  %8 = icmp eq i8* %1, null, !dbg !4304
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !4306
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !4306
  call void @llvm.dbg.value(metadata i32 0, metadata !4301, metadata !DIExpression()), !dbg !4302
  br i1 %12, label %19, label %13, !dbg !4306

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !4301, metadata !DIExpression()), !dbg !4302
  %15 = tail call zeroext i8 @uart_input_char(i32 noundef %7) #13, !dbg !4307
  %16 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !4313
  store i8 %15, i8* %16, align 1, !dbg !4314
  %17 = add nuw i32 %14, 1, !dbg !4315
  call void @llvm.dbg.value(metadata i32 %17, metadata !4301, metadata !DIExpression()), !dbg !4302
  %18 = icmp eq i32 %17, %2, !dbg !4316
  br i1 %18, label %19, label %13, !dbg !4317, !llvm.loop !4318

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !4302
  ret i32 %20, !dbg !4320
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !4321 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4323, metadata !DIExpression()), !dbg !4329
  call void @llvm.dbg.value(metadata i8* %1, metadata !4324, metadata !DIExpression()), !dbg !4329
  call void @llvm.dbg.value(metadata i32 %2, metadata !4325, metadata !DIExpression()), !dbg !4329
  %5 = bitcast i32* %4 to i8*, !dbg !4330
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #15, !dbg !4330
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4331
  br i1 %6, label %7, label %20, !dbg !4333

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !4334
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !4336
  br i1 %10, label %20, label %11, !dbg !4336

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4337, !range !4029
  call void @llvm.dbg.value(metadata i32* %4, metadata !4326, metadata !DIExpression(DW_OP_deref)), !dbg !4329
  call void @halUART_Get_VFIFO_Length(i32 noundef %12, i32 noundef 1, i32* noundef nonnull %4) #13, !dbg !4338
  %13 = load i32, i32* %4, align 4, !dbg !4339
  call void @llvm.dbg.value(metadata i32 %13, metadata !4326, metadata !DIExpression()), !dbg !4329
  %14 = icmp ult i32 %13, %2, !dbg !4341
  %15 = select i1 %14, i32 %13, i32 %2
  call void @llvm.dbg.value(metadata i32 %15, metadata !4327, metadata !DIExpression()), !dbg !4329
  call void @halUART_Read_VFIFO_Data(i32 noundef %12, i8* noundef nonnull %1, i32 noundef %15) #13, !dbg !4342
  %16 = load i32, i32* %4, align 4, !dbg !4343
  call void @llvm.dbg.value(metadata i32 %16, metadata !4326, metadata !DIExpression()), !dbg !4329
  %17 = icmp eq i32 %15, %16, !dbg !4345
  br i1 %17, label %18, label %20, !dbg !4346

18:                                               ; preds = %11
  %19 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !4347, !range !4245
  call void @llvm.dbg.value(metadata i32 %19, metadata !4328, metadata !DIExpression()), !dbg !4329
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %19) #13, !dbg !4349
  br label %20, !dbg !4350

20:                                               ; preds = %11, %18, %7, %3
  %21 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %15, %18 ], [ %15, %11 ], !dbg !4329
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #15, !dbg !4351
  ret i32 %21, !dbg !4351
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_send_space(i32 noundef %0) local_unnamed_addr #0 !dbg !4352 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4354, metadata !DIExpression()), !dbg !4356
  %3 = bitcast i32* %2 to i8*, !dbg !4357
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #15, !dbg !4357
  call void @llvm.dbg.value(metadata i32 0, metadata !4355, metadata !DIExpression()), !dbg !4356
  store i32 0, i32* %2, align 4, !dbg !4358
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4359
  br i1 %4, label %5, label %8, !dbg !4361

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4362, !range !4029
  call void @llvm.dbg.value(metadata i32* %2, metadata !4355, metadata !DIExpression(DW_OP_deref)), !dbg !4356
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 0, i32* noundef nonnull %2) #13, !dbg !4363
  %7 = load i32, i32* %2, align 4, !dbg !4364
  call void @llvm.dbg.value(metadata i32 %7, metadata !4355, metadata !DIExpression()), !dbg !4356
  br label %8, !dbg !4365

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !4356
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #15, !dbg !4366
  ret i32 %9, !dbg !4366
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_receive_bytes(i32 noundef %0) local_unnamed_addr #0 !dbg !4367 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4369, metadata !DIExpression()), !dbg !4371
  %3 = bitcast i32* %2 to i8*, !dbg !4372
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #15, !dbg !4372
  call void @llvm.dbg.value(metadata i32 0, metadata !4370, metadata !DIExpression()), !dbg !4371
  store i32 0, i32* %2, align 4, !dbg !4373
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4374
  br i1 %4, label %5, label %8, !dbg !4376

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4377, !range !4029
  call void @llvm.dbg.value(metadata i32* %2, metadata !4370, metadata !DIExpression(DW_OP_deref)), !dbg !4371
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 1, i32* noundef nonnull %2) #13, !dbg !4378
  %7 = load i32, i32* %2, align 4, !dbg !4379
  call void @llvm.dbg.value(metadata i32 %7, metadata !4370, metadata !DIExpression()), !dbg !4371
  br label %8, !dbg !4380

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !4371
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #15, !dbg !4381
  ret i32 %9, !dbg !4381
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_register_callback(i32 noundef %0, void (i32, i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #0 !dbg !4382 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4386, metadata !DIExpression()), !dbg !4390
  call void @llvm.dbg.value(metadata void (i32, i8*)* %1, metadata !4387, metadata !DIExpression()), !dbg !4390
  call void @llvm.dbg.value(metadata i8* %2, metadata !4388, metadata !DIExpression()), !dbg !4390
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4391
  %5 = icmp ne void (i32, i8*)* %1, null
  %6 = and i1 %5, %4, !dbg !4393
  br i1 %6, label %7, label %18, !dbg !4393

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 0, !dbg !4394
  store void (i32, i8*)* %1, void (i32, i8*)** %8, align 4, !dbg !4395
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 1, !dbg !4396
  store i8* %2, i8** %9, align 4, !dbg !4397
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 2, !dbg !4398
  store i8 1, i8* %10, align 4, !dbg !4399
  %11 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4400
  %12 = tail call fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) #14, !dbg !4401
  tail call void @halUART_VDMA_Rx_Register_Callback(i32 noundef %11, void ()* noundef %12) #13, !dbg !4402
  tail call void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %11, void ()* noundef %12) #13, !dbg !4403
  %13 = icmp eq i32 %11, 0, !dbg !4404
  br i1 %13, label %14, label %15, !dbg !4406

14:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 14, void ()* noundef nonnull @hal_uart_send_callback0) #13, !dbg !4407
  br label %16, !dbg !4409

15:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 16, void ()* noundef nonnull @hal_uart_send_callback1) #13, !dbg !4410
  br label %16

16:                                               ; preds = %15, %14
  %17 = tail call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %11, i1 noundef zeroext false) #14, !dbg !4412, !range !4245
  call void @llvm.dbg.value(metadata i32 %17, metadata !4389, metadata !DIExpression()), !dbg !4390
  tail call void @DMA_Vfifo_enable_interrupt(i32 noundef %17) #13, !dbg !4413
  br label %18, !dbg !4414

18:                                               ; preds = %3, %16
  %19 = phi i32 [ 0, %16 ], [ -4, %3 ], !dbg !4390
  ret i32 %19, !dbg !4415
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) unnamed_addr #9 !dbg !319 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !325, metadata !DIExpression()), !dbg !4416
  %2 = getelementptr inbounds [2 x void ()*], [2 x void ()*]* @hal_uart_map_receive_callback.func_tbl, i32 0, i32 %0, !dbg !4417
  %3 = load void ()*, void ()** %2, align 4, !dbg !4417
  ret void ()* %3, !dbg !4418
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback0() #0 !dbg !4419 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !4425, !range !3147
  %2 = icmp eq i8 %1, 0, !dbg !4425
  br i1 %2, label %8, label %3, !dbg !4426

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !4427
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !4429
  br i1 %5, label %8, label %6, !dbg !4430

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !4431
  tail call void %4(i32 noundef 2, i8* noundef %7) #13, !dbg !4433
  br label %8, !dbg !4434

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #14, !dbg !4435, !range !4029
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #14, !dbg !4436
  ret void, !dbg !4437
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback1() #0 !dbg !4438 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !4443, !range !3147
  %2 = icmp eq i8 %1, 0, !dbg !4443
  br i1 %2, label %8, label %3, !dbg !4444

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !4445
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !4447
  br i1 %5, label %8, label %6, !dbg !4448

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !4449
  tail call void %4(i32 noundef 2, i8* noundef %7) #13, !dbg !4451
  br label %8, !dbg !4452

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #14, !dbg !4453, !range !4029
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #14, !dbg !4454
  ret void, !dbg !4455
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @hal_uart_check_irq_disable(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #0 !dbg !4456 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4460, metadata !DIExpression()), !dbg !4467
  call void @llvm.dbg.value(metadata i1 %1, metadata !4461, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4467
  %5 = bitcast i32* %3 to i8*, !dbg !4468
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #15, !dbg !4468
  %6 = bitcast i32* %4 to i8*, !dbg !4468
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !4468
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !4464, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !4467
  br i1 %1, label %7, label %12, !dbg !4469

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !4464, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !4467
  call void @llvm.dbg.value(metadata i32* %3, metadata !4462, metadata !DIExpression(DW_OP_deref)), !dbg !4467
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 1, i32* noundef nonnull %3) #13, !dbg !4470
  %8 = load i32, i32* %3, align 4, !dbg !4473
  call void @llvm.dbg.value(metadata i32 %8, metadata !4462, metadata !DIExpression()), !dbg !4467
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 5, !dbg !4475
  %10 = load i32, i32* %9, align 4, !dbg !4475
  %11 = icmp ult i32 %8, %10, !dbg !4476
  br i1 %11, label %22, label %20, !dbg !4477

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32* %4, metadata !4463, metadata !DIExpression(DW_OP_deref)), !dbg !4467
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 0, i32* noundef nonnull %4) #13, !dbg !4478
  %13 = load i32, i32* %4, align 4, !dbg !4480
  call void @llvm.dbg.value(metadata i32 %13, metadata !4463, metadata !DIExpression()), !dbg !4467
  %14 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 1, !dbg !4482
  %15 = load i32, i32* %14, align 4, !dbg !4482
  %16 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 2, !dbg !4483
  %17 = load i32, i32* %16, align 4, !dbg !4483
  %18 = sub i32 %15, %17, !dbg !4484
  %19 = icmp ult i32 %13, %18, !dbg !4485
  br i1 %19, label %22, label %20, !dbg !4486

20:                                               ; preds = %12, %7
  %21 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) #14, !dbg !4487, !range !4245
  call void @DMA_Vfifo_disable_interrupt(i32 noundef %21) #13, !dbg !4487
  br label %22, !dbg !4488

22:                                               ; preds = %20, %12, %7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !4488
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #15, !dbg !4488
  ret void, !dbg !4488
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_disable_interrupt(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback0() #0 !dbg !4489 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !4494, !range !3147
  %2 = icmp eq i8 %1, 0, !dbg !4494
  br i1 %2, label %11, label %3, !dbg !4495

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 0) #14, !dbg !4496
  %5 = icmp eq i32 %4, 0, !dbg !4497
  br i1 %5, label %11, label %6, !dbg !4498

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !4499
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !4501
  br i1 %8, label %11, label %9, !dbg !4502

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !4503
  tail call void %7(i32 noundef 1, i8* noundef %10) #13, !dbg !4505
  br label %11, !dbg !4506

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #14, !dbg !4507, !range !4029
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !4508
  ret void, !dbg !4509
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback1() #0 !dbg !4510 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !4515, !range !3147
  %2 = icmp eq i8 %1, 0, !dbg !4515
  br i1 %2, label %11, label %3, !dbg !4516

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 1) #14, !dbg !4517
  %5 = icmp eq i32 %4, 0, !dbg !4518
  br i1 %5, label %11, label %6, !dbg !4519

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !4520
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !4522
  br i1 %8, label %11, label %9, !dbg !4523

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !4524
  tail call void %7(i32 noundef 1, i8* noundef %10) #13, !dbg !4526
  br label %11, !dbg !4527

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #14, !dbg !4528, !range !4029
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !4529
  ret void, !dbg !4530
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_baudrate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4531 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4535, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata i32 %1, metadata !4536, metadata !DIExpression()), !dbg !4537
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4538
  %4 = icmp ult i32 %1, 13
  %5 = and i1 %4, %3, !dbg !4540
  br i1 %5, label %6, label %10, !dbg !4540

6:                                                ; preds = %2
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4541
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %7, i32 0, i32 0, !dbg !4542
  store i32 %1, i32* %8, align 4, !dbg !4543
  %9 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef nonnull %7) #14, !dbg !4544
  br label %10, !dbg !4545

10:                                               ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ -4, %2 ], !dbg !4537
  ret i32 %11, !dbg !4546
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma(i32 noundef %0, %struct.hal_uart_dma_config_t* noundef %1) local_unnamed_addr #0 !dbg !4547 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4553, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %1, metadata !4554, metadata !DIExpression()), !dbg !4555
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4556
  br i1 %3, label %4, label %28, !dbg !4558

4:                                                ; preds = %2
  %5 = tail call fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef %1) #14, !dbg !4559
  br i1 %5, label %6, label %28, !dbg !4561

6:                                                ; preds = %4
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !4562
  store i8 1, i8* %7, align 4, !dbg !4563
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, !dbg !4564
  %9 = bitcast %struct.hal_uart_dma_config_t* %8 to i8*, !dbg !4565
  %10 = bitcast %struct.hal_uart_dma_config_t* %1 to i8*, !dbg !4566
  %11 = tail call i8* @memcpy(i8* noundef nonnull %9, i8* noundef %10, i32 noundef 28) #13, !dbg !4567
  tail call void @DMA_Init() #13, !dbg !4568
  tail call void @DMA_Vfifo_init() #13, !dbg !4569
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4570
  %13 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 3, !dbg !4571
  %14 = load i8*, i8** %13, align 4, !dbg !4571
  %15 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 4, !dbg !4572
  %16 = load i32, i32* %15, align 4, !dbg !4572
  %17 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 6, !dbg !4573
  %18 = load i32, i32* %17, align 4, !dbg !4573
  %19 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 5, !dbg !4574
  %20 = load i32, i32* %19, align 4, !dbg !4574
  %21 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef 5000) #14, !dbg !4575
  tail call void @halUART_Rx_VFIFO_Initialize(i32 noundef %12, i8* noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %21) #13, !dbg !4576
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 0, !dbg !4577
  %23 = load i8*, i8** %22, align 4, !dbg !4577
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 1, !dbg !4578
  %25 = load i32, i32* %24, align 4, !dbg !4578
  %26 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 2, !dbg !4579
  %27 = load i32, i32* %26, align 4, !dbg !4579
  tail call void @halUART_Tx_VFIFO_Initialize(i32 noundef %12, i8* noundef %23, i32 noundef %25, i32 noundef %27) #13, !dbg !4580
  br label %28, !dbg !4581

28:                                               ; preds = %4, %2, %6
  %29 = phi i32 [ 0, %6 ], [ -4, %2 ], [ -4, %4 ], !dbg !4555
  ret i32 %29, !dbg !4582
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef readonly %0) unnamed_addr #5 !dbg !4583 {
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %0, metadata !4587, metadata !DIExpression()), !dbg !4588
  %2 = icmp eq %struct.hal_uart_dma_config_t* %0, null, !dbg !4589
  br i1 %2, label %27, label %3, !dbg !4591

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 3, !dbg !4592
  %5 = load i8*, i8** %4, align 4, !dbg !4592
  %6 = icmp eq i8* %5, null, !dbg !4594
  br i1 %6, label %27, label %7, !dbg !4595

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 4, !dbg !4596
  %9 = load i32, i32* %8, align 4, !dbg !4596
  %10 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 5, !dbg !4598
  %11 = load i32, i32* %10, align 4, !dbg !4598
  %12 = icmp ult i32 %9, %11, !dbg !4599
  br i1 %12, label %27, label %13, !dbg !4600

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 6, !dbg !4601
  %15 = load i32, i32* %14, align 4, !dbg !4601
  %16 = icmp ult i32 %9, %15, !dbg !4603
  br i1 %16, label %27, label %17, !dbg !4604

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 0, !dbg !4605
  %19 = load i8*, i8** %18, align 4, !dbg !4605
  %20 = icmp eq i8* %19, null, !dbg !4607
  br i1 %20, label %27, label %21, !dbg !4608

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 1, !dbg !4609
  %23 = load i32, i32* %22, align 4, !dbg !4609
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 2, !dbg !4611
  %25 = load i32, i32* %24, align 4, !dbg !4611
  %26 = icmp uge i32 %23, %25, !dbg !4612
  br label %27, !dbg !4613

27:                                               ; preds = %21, %17, %13, %7, %3, %1
  %28 = phi i1 [ false, %1 ], [ false, %3 ], [ false, %7 ], [ false, %13 ], [ false, %17 ], [ %26, %21 ], !dbg !4588
  ret i1 %28, !dbg !4614
}

; Function Attrs: optsize
declare dso_local void @DMA_Init() local_unnamed_addr #2

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_init() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @hal_uart_translate_timeout(i32 noundef %0) unnamed_addr #0 !dbg !4615 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4619, metadata !DIExpression()), !dbg !4621
  %2 = tail call i32 @top_mcu_freq_get() #13, !dbg !4622
  %3 = udiv i32 %2, 1000000, !dbg !4623
  call void @llvm.dbg.value(metadata i32 %3, metadata !4620, metadata !DIExpression()), !dbg !4621
  %4 = mul i32 %3, %0, !dbg !4624
  ret i32 %4, !dbg !4625
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !4626 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4628, metadata !DIExpression()), !dbg !4630
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4631
  br i1 %2, label %3, label %8, !dbg !4633

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !4634
  %5 = icmp eq i32 %0, 1, !dbg !4634
  %6 = select i1 %5, i32 1, i32 2, !dbg !4634
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4634
  call void @llvm.dbg.value(metadata i32 %7, metadata !4629, metadata !DIExpression()), !dbg !4630
  tail call void @uart_set_hardware_flowcontrol(i32 noundef %7) #13, !dbg !4635
  br label %8, !dbg !4636

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !4630
  ret i32 %9, !dbg !4637
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 !dbg !4638 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4642, metadata !DIExpression()), !dbg !4647
  call void @llvm.dbg.value(metadata i8 %1, metadata !4643, metadata !DIExpression()), !dbg !4647
  call void @llvm.dbg.value(metadata i8 %2, metadata !4644, metadata !DIExpression()), !dbg !4647
  call void @llvm.dbg.value(metadata i8 %3, metadata !4645, metadata !DIExpression()), !dbg !4647
  %5 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4648
  br i1 %5, label %6, label %11, !dbg !4650

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 0, !dbg !4651
  %8 = icmp eq i32 %0, 1, !dbg !4651
  %9 = select i1 %8, i32 1, i32 2, !dbg !4651
  %10 = select i1 %7, i32 0, i32 %9, !dbg !4651
  call void @llvm.dbg.value(metadata i32 %10, metadata !4646, metadata !DIExpression()), !dbg !4647
  tail call void @uart_set_software_flowcontrol(i32 noundef %10, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #13, !dbg !4652
  br label %11, !dbg !4653

11:                                               ; preds = %4, %6
  %12 = phi i32 [ 0, %6 ], [ -4, %4 ], !dbg !4647
  ret i32 %12, !dbg !4654
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !4655 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4657, metadata !DIExpression()), !dbg !4659
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4660
  br i1 %2, label %3, label %8, !dbg !4662

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !4663
  %5 = icmp eq i32 %0, 1, !dbg !4663
  %6 = select i1 %5, i32 1, i32 2, !dbg !4663
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4663
  call void @llvm.dbg.value(metadata i32 %7, metadata !4658, metadata !DIExpression()), !dbg !4659
  tail call void @uart_disable_flowcontrol(i32 noundef %7) #13, !dbg !4664
  br label %8, !dbg !4665

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !4659
  ret i32 %9, !dbg !4666
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma_timeout(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4667 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4671, metadata !DIExpression()), !dbg !4673
  call void @llvm.dbg.value(metadata i32 %1, metadata !4672, metadata !DIExpression()), !dbg !4673
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4674
  br i1 %3, label %4, label %8, !dbg !4676

4:                                                ; preds = %2
  %5 = icmp eq i32 %0, 0, !dbg !4677
  %6 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef %1) #14, !dbg !4679
  %7 = select i1 %5, i32 15, i32 17
  tail call void @DMA_Vfifo_Set_timeout(i32 noundef %7, i32 noundef %6) #13, !dbg !4679
  br label %8, !dbg !4680

8:                                                ; preds = %4, %2
  %9 = phi i32 [ -4, %2 ], [ 0, %4 ], !dbg !4673
  ret i32 %9, !dbg !4680
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Set_timeout(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @__io_putchar(i32 noundef returned %0) local_unnamed_addr #0 !dbg !4681 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4685, metadata !DIExpression()), !dbg !4686
  %2 = trunc i32 %0 to i8, !dbg !4687
  tail call void @hal_uart_put_char(i32 noundef 0, i8 noundef zeroext %2) #13, !dbg !4688
  ret i32 %0, !dbg !4689
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local i32 @main() local_unnamed_addr #12 !dbg !4690 {
  tail call fastcc void @SystemClock_Config() #14, !dbg !4691
  tail call fastcc void @prvSetupHardware() #14, !dbg !4692
  tail call void asm sideeffect "cpsie i", "~{memory}"() #15, !dbg !4693, !srcloc !4696
  tail call void asm sideeffect "cpsie f", "~{memory}"() #15, !dbg !4697, !srcloc !4700
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0)) #13, !dbg !4701
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.26, i32 0, i32 0)) #13, !dbg !4702
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0)) #13, !dbg !4703
  tail call fastcc void @md5_get_hash_example() #14, !dbg !4704
  br label %4, !dbg !4705

4:                                                ; preds = %4, %0
  br label %4, !dbg !4706, !llvm.loop !4709
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @SystemClock_Config() unnamed_addr #0 !dbg !4712 {
  tail call void @top_xtal_init() #13, !dbg !4713
  ret void, !dbg !4714
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvSetupHardware() unnamed_addr #0 !dbg !4715 {
  tail call fastcc void @log_uart_init() #14, !dbg !4716
  ret void, !dbg !4717
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @md5_get_hash_example() unnamed_addr #0 !dbg !4718 {
  %1 = alloca [16 x i8], align 1
  %2 = alloca %struct.hal_md5_context_t, align 8
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2.27, i32 0, i32 0), metadata !4720, metadata !DIExpression()), !dbg !4732
  %3 = tail call i32 @strlen(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2.27, i32 0, i32 0)) #13, !dbg !4733
  call void @llvm.dbg.value(metadata i32 %3, metadata !4721, metadata !DIExpression()), !dbg !4732
  %4 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i32 0, i32 0, !dbg !4734
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #15, !dbg !4734
  call void @llvm.dbg.declare(metadata [16 x i8]* %1, metadata !4722, metadata !DIExpression()), !dbg !4735
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(16) %4, i8 0, i32 16, i1 false), !dbg !4735
  %5 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3.28, i32 0, i32 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2.27, i32 0, i32 0)) #13, !dbg !4736
  %6 = bitcast %struct.hal_md5_context_t* %2 to i8*, !dbg !4737
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %6) #15, !dbg !4737
  call void @llvm.dbg.declare(metadata %struct.hal_md5_context_t* %2, metadata !4723, metadata !DIExpression()), !dbg !4738
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(96) %6, i8 0, i32 96, i1 false), !dbg !4738
  %7 = call i32 @hal_md5_init(%struct.hal_md5_context_t* noundef nonnull %2) #13, !dbg !4739
  %8 = call i32 @hal_md5_append(%struct.hal_md5_context_t* noundef nonnull %2, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2.27, i32 0, i32 0), i32 noundef %3) #13, !dbg !4740
  %9 = call i32 @hal_md5_end(%struct.hal_md5_context_t* noundef nonnull %2, i8* noundef nonnull %4) #13, !dbg !4741
  %10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4.29, i32 0, i32 0)) #13, !dbg !4742
  call fastcc void @md5_result_dump(i8* noundef nonnull %4) #14, !dbg !4743
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %6) #15, !dbg !4744
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #15, !dbg !4744
  ret void, !dbg !4744
}

; Function Attrs: optsize
declare dso_local i32 @strlen(i8* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define internal fastcc void @md5_result_dump(i8* nocapture noundef readonly %0) unnamed_addr #0 !dbg !4745 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4749, metadata !DIExpression()), !dbg !4752
  call void @llvm.dbg.value(metadata i8 16, metadata !4750, metadata !DIExpression()), !dbg !4752
  call void @llvm.dbg.value(metadata i8 0, metadata !4751, metadata !DIExpression()), !dbg !4752
  br label %2, !dbg !4753

2:                                                ; preds = %1, %7
  %3 = phi i32 [ 0, %1 ], [ %12, %7 ]
  call void @llvm.dbg.value(metadata i32 %3, metadata !4751, metadata !DIExpression()), !dbg !4752
  %4 = icmp eq i32 %3, 0, !dbg !4755
  br i1 %4, label %5, label %7, !dbg !4759

5:                                                ; preds = %2
  %6 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5.30, i32 0, i32 0)) #13, !dbg !4760
  br label %7, !dbg !4762

7:                                                ; preds = %5, %2
  %8 = getelementptr inbounds i8, i8* %0, i32 %3, !dbg !4763
  %9 = load i8, i8* %8, align 1, !dbg !4763
  %10 = zext i8 %9 to i32, !dbg !4763
  %11 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.31, i32 0, i32 0), i32 noundef %10) #13, !dbg !4764
  %12 = add nuw nsw i32 %3, 1, !dbg !4765
  call void @llvm.dbg.value(metadata i32 %12, metadata !4751, metadata !DIExpression()), !dbg !4752
  %13 = icmp eq i32 %12, 16, !dbg !4766
  br i1 %13, label %14, label %2, !dbg !4753, !llvm.loop !4767

14:                                               ; preds = %7
  %15 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5.30, i32 0, i32 0)) #13, !dbg !4769
  ret void, !dbg !4770
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @log_uart_init() unnamed_addr #0 !dbg !4771 {
  %1 = alloca %struct.hal_uart_config_t, align 4
  %2 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4781
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #15, !dbg !4781
  call void @llvm.dbg.declare(metadata %struct.hal_uart_config_t* %1, metadata !4773, metadata !DIExpression()), !dbg !4782
  %3 = tail call i32 @hal_pinmux_set_function(i32 noundef 0, i8 noundef zeroext 7) #13, !dbg !4783
  %4 = tail call i32 @hal_pinmux_set_function(i32 noundef 1, i8 noundef zeroext 7) #13, !dbg !4784
  %5 = tail call i32 @hal_pinmux_set_function(i32 noundef 2, i8 noundef zeroext 7) #13, !dbg !4785
  %6 = tail call i32 @hal_pinmux_set_function(i32 noundef 3, i8 noundef zeroext 7) #13, !dbg !4786
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4787
  store i32 9, i32* %7, align 4, !dbg !4788
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4789
  store i32 3, i32* %8, align 4, !dbg !4790
  %9 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4791
  store i32 0, i32* %9, align 4, !dbg !4792
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4793
  store i32 0, i32* %10, align 4, !dbg !4794
  %11 = call i32 @hal_uart_init(i32 noundef 0, %struct.hal_uart_config_t* noundef nonnull %1) #13, !dbg !4795
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #15, !dbg !4796
  ret void, !dbg !4796
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @SysTick_Set(i32 noundef %0) local_unnamed_addr #3 !dbg !4797 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4799, metadata !DIExpression()), !dbg !4801
  %2 = add i32 %0, -1, !dbg !4802
  %3 = icmp ugt i32 %2, 16777215, !dbg !4804
  br i1 %3, label %8, label %4, !dbg !4805

4:                                                ; preds = %1
  %5 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !4806
  call void @llvm.dbg.value(metadata i32 %5, metadata !4800, metadata !DIExpression()), !dbg !4801
  %6 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !4807
  %7 = and i32 %6, -4, !dbg !4807
  store volatile i32 %7, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !4807
  store volatile i32 %2, i32* inttoptr (i32 -536813548 to i32*), align 4, !dbg !4808
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !dbg !4809
  store volatile i32 %5, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !4810
  br label %8, !dbg !4811

8:                                                ; preds = %1, %4
  %9 = phi i32 [ 0, %4 ], [ 1, %1 ], !dbg !4801
  ret i32 %9, !dbg !4812
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SysInitStatus_Set() local_unnamed_addr #3 !dbg !4813 {
  store volatile i32 1, i32* @System_Initialize_Done, align 4, !dbg !4814
  ret void, !dbg !4815
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @SysInitStatus_Query() local_unnamed_addr #4 !dbg !4816 {
  %1 = load volatile i32, i32* @System_Initialize_Done, align 4, !dbg !4817
  ret i32 %1, !dbg !4818
}

; Function Attrs: noinline nounwind optsize
define dso_local void @SystemCoreClockUpdate() local_unnamed_addr #0 !dbg !4819 {
  %1 = tail call i32 @top_mcu_freq_get() #13, !dbg !4820
  store i32 %1, i32* @SystemCoreClock, align 4, !dbg !4821
  ret void, !dbg !4822
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SystemInit() local_unnamed_addr #3 !dbg !4823 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !4824
  %2 = or i32 %1, 15728640, !dbg !4824
  store volatile i32 %2, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !4824
  store volatile i32 536870912, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !4825
  %3 = load volatile i32, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !4826
  %4 = or i32 %3, 458752, !dbg !4826
  store volatile i32 %4, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !4826
  ret void, !dbg !4827
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @CachePreInit() local_unnamed_addr #3 !dbg !4828 {
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4829
  store volatile i32 19, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4830
  store volatile i32 3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4831
  store volatile i32 268931328, i32* inttoptr (i32 22282240 to i32*), align 262144, !dbg !4832
  store volatile i32 269713408, i32* inttoptr (i32 22282304 to i32*), align 64, !dbg !4833
  store volatile i32 1, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4834
  store volatile i32 781, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4835
  ret void, !dbg !4836
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_close(i32 noundef %0) local_unnamed_addr #9 !dbg !4837 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4839, metadata !DIExpression()), !dbg !4840
  ret i32 0, !dbg !4841
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_fstat(i32 noundef %0, %struct.stat* nocapture noundef readnone %1) local_unnamed_addr #9 !dbg !4842 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4892, metadata !DIExpression()), !dbg !4894
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !4893, metadata !DIExpression()), !dbg !4894
  ret i32 0, !dbg !4895
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_isatty(i32 noundef %0) local_unnamed_addr #9 !dbg !4896 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4898, metadata !DIExpression()), !dbg !4899
  ret i32 1, !dbg !4900
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_lseek(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !dbg !4901 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4905, metadata !DIExpression()), !dbg !4908
  call void @llvm.dbg.value(metadata i32 %1, metadata !4906, metadata !DIExpression()), !dbg !4908
  call void @llvm.dbg.value(metadata i32 %2, metadata !4907, metadata !DIExpression()), !dbg !4908
  ret i32 0, !dbg !4909
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_open(i8* nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !dbg !4910 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4914, metadata !DIExpression()), !dbg !4917
  call void @llvm.dbg.value(metadata i32 %1, metadata !4915, metadata !DIExpression()), !dbg !4917
  call void @llvm.dbg.value(metadata i32 %2, metadata !4916, metadata !DIExpression()), !dbg !4917
  ret i32 -1, !dbg !4918
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_read(i32 noundef %0, i8* nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #9 !dbg !4919 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4923, metadata !DIExpression()), !dbg !4926
  call void @llvm.dbg.value(metadata i8* %1, metadata !4924, metadata !DIExpression()), !dbg !4926
  call void @llvm.dbg.value(metadata i32 %2, metadata !4925, metadata !DIExpression()), !dbg !4926
  ret i32 0, !dbg !4927
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_write(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef returned %2) local_unnamed_addr #0 !dbg !4928 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4930, metadata !DIExpression()), !dbg !4934
  call void @llvm.dbg.value(metadata i8* %1, metadata !4931, metadata !DIExpression()), !dbg !4934
  call void @llvm.dbg.value(metadata i32 %2, metadata !4932, metadata !DIExpression()), !dbg !4934
  call void @llvm.dbg.value(metadata i32 0, metadata !4933, metadata !DIExpression()), !dbg !4934
  %4 = icmp sgt i32 %2, 0, !dbg !4935
  br i1 %4, label %5, label %14, !dbg !4938

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %12, %5 ], [ 0, %3 ]
  %7 = phi i8* [ %8, %5 ], [ %1, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !4933, metadata !DIExpression()), !dbg !4934
  call void @llvm.dbg.value(metadata i8* %7, metadata !4931, metadata !DIExpression()), !dbg !4934
  %8 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !4939
  call void @llvm.dbg.value(metadata i8* %8, metadata !4931, metadata !DIExpression()), !dbg !4934
  %9 = load i8, i8* %7, align 1, !dbg !4941
  %10 = zext i8 %9 to i32, !dbg !4941
  %11 = tail call i32 @__io_putchar(i32 noundef %10) #13, !dbg !4942
  %12 = add nuw nsw i32 %6, 1, !dbg !4943
  call void @llvm.dbg.value(metadata i32 %12, metadata !4933, metadata !DIExpression()), !dbg !4934
  %13 = icmp eq i32 %12, %2, !dbg !4935
  br i1 %13, label %14, label %5, !dbg !4938, !llvm.loop !4944

14:                                               ; preds = %5, %3
  ret i32 %2, !dbg !4946
}

; Function Attrs: noinline nounwind optsize
define dso_local i8* @_sbrk_r(%struct._reent* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #0 !dbg !442 {
  call void @llvm.dbg.value(metadata %struct._reent* %0, metadata !645, metadata !DIExpression()), !dbg !4947
  call void @llvm.dbg.value(metadata i32 %1, metadata !646, metadata !DIExpression()), !dbg !4947
  %3 = tail call i8* asm sideeffect "MRS $0, msp\0A", "=r"() #15, !dbg !4948, !srcloc !4949
  call void @llvm.dbg.value(metadata i8* %3, metadata !648, metadata !DIExpression()), !dbg !4947
  %4 = load i8*, i8** @_sbrk_r.heap_end, align 4, !dbg !4950
  %5 = icmp eq i8* %4, null, !dbg !4952
  %6 = select i1 %5, i8* @end, i8* %4, !dbg !4953
  call void @llvm.dbg.value(metadata i8* %6, metadata !647, metadata !DIExpression()), !dbg !4947
  %7 = getelementptr inbounds i8, i8* %6, i32 %1, !dbg !4954
  %8 = icmp ult i8* %3, %7, !dbg !4956
  %9 = xor i1 %8, true, !dbg !4957
  %10 = or i1 %5, %9, !dbg !4957
  br i1 %10, label %11, label %13, !dbg !4957

11:                                               ; preds = %2
  %12 = select i1 %8, i8* %6, i8* %7, !dbg !4958
  store i8* %12, i8** @_sbrk_r.heap_end, align 4, !dbg !4957
  br label %13, !dbg !4957

13:                                               ; preds = %2, %11
  %14 = select i1 %8, i8* inttoptr (i32 -1 to i8*), i8* %6, !dbg !4958
  ret i8* %14, !dbg !4957
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local void @_exit(i32 noundef %0) local_unnamed_addr #12 !dbg !4959 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4961, metadata !DIExpression()), !dbg !4962
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0)) #13, !dbg !4963
  br label %3, !dbg !4964

3:                                                ; preds = %1, %3
  br label %3, !dbg !4964, !llvm.loop !4965
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_kill(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4967 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4971, metadata !DIExpression()), !dbg !4973
  call void @llvm.dbg.value(metadata i32 %1, metadata !4972, metadata !DIExpression()), !dbg !4973
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.39, i32 0, i32 0), i32 noundef %1) #13, !dbg !4974
  ret i32 -1, !dbg !4975
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_getpid() local_unnamed_addr #0 !dbg !4976 {
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.40, i32 0, i32 0)) #13, !dbg !4981
  ret i32 0, !dbg !4982
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

!llvm.dbg.cu = !{!2, !665, !674, !755, !800, !834, !85, !102, !837, !140, !159, !839, !910, !261, !935, !372, !640, !651}
!llvm.ident = !{!939, !939, !939, !939, !939, !939, !939, !939, !939, !939, !939, !939, !939, !939, !939, !939, !939, !939}
!llvm.module.flags = !{!940, !941, !942, !943, !944, !945, !946, !947, !948}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g_u4ClkCnt1ms", scope: !2, file: !3, line: 71, type: !79, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !57, globals: !62, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/gpt.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 121, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/type_def.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "KAL_FALSE", value: 0)
!10 = !DIEnumerator(name: "KAL_TRUE", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IRQn", file: !12, line: 47, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
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
!66 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/gpt.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
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
!86 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/top.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
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
!103 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
!104 = !{!105, !111}
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !106, line: 71, baseType: !7, size: 32, elements: !107)
!106 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
!107 = !{!108, !109, !110}
!108 = !DIEnumerator(name: "UART_PORT0", value: 0)
!109 = !DIEnumerator(name: "UART_PORT1", value: 1)
!110 = !DIEnumerator(name: "UART_MAX_PORT", value: 2)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !112, line: 129, baseType: !7, size: 32, elements: !113)
!112 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/dma_sw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
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
!141 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_aes.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
!142 = !{!143, !11}
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !144, line: 290, baseType: !13, size: 32, elements: !145)
!144 = !DIFile(filename: "../../../../../driver/chip/inc/hal_aes.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
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
!160 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
!161 = !{!162, !11}
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !163, line: 152, baseType: !13, size: 32, elements: !164)
!163 = !DIFile(filename: "../../../../../driver/chip/inc/hal_nvic.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
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
!176 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cm4.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
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
!262 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
!263 = !{!264, !272, !278, !294, !300, !304, !105, !111, !309}
!264 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !265, line: 345, baseType: !13, size: 32, elements: !266)
!265 = !DIFile(filename: "../../../../../driver/chip/inc/hal_uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
!266 = !{!267, !268, !269, !270, !271}
!267 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_PARAMETER", value: -4)
!268 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_BUSY", value: -3)
!269 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_UNINITIALIZED", value: -2)
!270 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR", value: -1)
!271 = !DIEnumerator(name: "HAL_UART_STATUS_OK", value: 0)
!272 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !273, line: 109, baseType: !7, size: 32, elements: !274)
!273 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_platform.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
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
!373 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/md5_get_hash/src/system_mt7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
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
!410 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_hw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
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
!443 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/md5_get_hash/GCC/syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
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
!641 = !DIFile(filename: "syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
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
!652 = !DIFile(filename: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC/build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
!653 = !{!649, !654, !660}
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(name: "sw_verno_str", scope: !651, file: !656, line: 5, type: !657, isLocal: false, isDefinition: true)
!656 = !DIFile(filename: "build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 88, elements: !658)
!658 = !{!659}
!659 = !DISubrange(count: 11)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(name: "hw_verno_str", scope: !651, file: !656, line: 6, type: !657, isLocal: false, isDefinition: true)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 248, elements: !663)
!663 = !{!664}
!664 = !DISubrange(count: 31)
!665 = distinct !DICompileUnit(language: DW_LANG_C99, file: !666, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !667, retainedTypes: !673, splitDebugInlining: false, nameTableKind: None)
!666 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_gpio_7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
!667 = !{!668}
!668 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !669, line: 1209, baseType: !7, size: 32, elements: !670)
!669 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_gpio_7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
!670 = !{!671, !672}
!671 = !DIEnumerator(name: "ePAD_CONTROL_BY_N9", value: 0)
!672 = !DIEnumerator(name: "ePAD_CONTROL_BY_CM4", value: 1)
!673 = !{!58, !60}
!674 = distinct !DICompileUnit(language: DW_LANG_C99, file: !675, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !676, retainedTypes: !754, splitDebugInlining: false, nameTableKind: None)
!675 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
!676 = !{!677}
!677 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !678, line: 150, baseType: !7, size: 32, elements: !679)
!678 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
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
!756 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
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
!801 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
!802 = !{!803, !677}
!803 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !804, line: 55, baseType: !7, size: 32, elements: !805)
!804 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
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
!835 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/timer.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
!836 = !{!490, !58}
!837 = distinct !DICompileUnit(language: DW_LANG_C99, file: !838, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!838 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_log.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
!839 = distinct !DICompileUnit(language: DW_LANG_C99, file: !840, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !841, retainedTypes: !905, splitDebugInlining: false, nameTableKind: None)
!840 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
!841 = !{!842, !849, !803, !880, !886, !890, !894, !900}
!842 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !843, line: 233, baseType: !13, size: 32, elements: !844)
!843 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
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
!901 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/low_hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
!902 = !{!903, !904}
!903 = !DIEnumerator(name: "eDirection_IN", value: 0)
!904 = !DIEnumerator(name: "eDirection_OUT", value: 1)
!905 = !{!906, !149, !907, !150, !908, !909}
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_IOT_GPIO_NAME_T", file: !804, line: 87, baseType: !803)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_data_t", file: !843, line: 220, baseType: !886)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_driving_current_t", file: !843, line: 247, baseType: !894)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_DIR_T", file: !901, line: 60, baseType: !900)
!910 = distinct !DICompileUnit(language: DW_LANG_C99, file: !911, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !912, retainedTypes: !918, splitDebugInlining: false, nameTableKind: None)
!911 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_md5.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
!912 = !{!913}
!913 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !914, line: 139, baseType: !13, size: 32, elements: !915)
!914 = !DIFile(filename: "../../../../../driver/chip/inc/hal_md5.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
!915 = !{!916, !917}
!916 = !DIEnumerator(name: "HAL_MD5_STATUS_ERROR", value: -1)
!917 = !DIEnumerator(name: "HAL_MD5_STATUS_OK", value: 0)
!918 = !{!149, !919}
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "MD5_CTX_STRUC", file: !921, line: 64, baseType: !922)
!921 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/crypt_md5.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !921, line: 58, size: 768, elements: !923)
!923 = !{!924, !926, !929, !930, !934}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "HashValue", scope: !922, file: !921, line: 59, baseType: !925, size: 128)
!925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 128, elements: !238)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "MessageLen", scope: !922, file: !921, line: 60, baseType: !927, size: 64, offset: 128)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !93, line: 60, baseType: !928)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !95, line: 105, baseType: !574)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "Block", scope: !922, file: !921, line: 61, baseType: !363, size: 32, offset: 192)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "Buff", scope: !922, file: !921, line: 62, baseType: !931, size: 512, offset: 224)
!931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 512, elements: !932)
!932 = !{!933}
!933 = !DISubrange(count: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "BlockLen", scope: !922, file: !921, line: 63, baseType: !92, size: 32, offset: 736)
!935 = distinct !DICompileUnit(language: DW_LANG_C99, file: !936, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !937, retainedTypes: !938, splitDebugInlining: false, nameTableKind: None)
!936 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/md5_get_hash/src/main.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
!937 = !{!272, !278, !294, !300, !304, !849}
!938 = !{!363, !92, !448}
!939 = !{!"Ubuntu clang version 14.0.6"}
!940 = !{i32 7, !"Dwarf Version", i32 2}
!941 = !{i32 2, !"Debug Info Version", i32 3}
!942 = !{i32 1, !"wchar_size", i32 4}
!943 = !{i32 1, !"min_enum_size", i32 4}
!944 = !{i32 1, !"branch-target-enforcement", i32 0}
!945 = !{i32 1, !"sign-return-address", i32 0}
!946 = !{i32 1, !"sign-return-address-all", i32 0}
!947 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!948 = !{i32 7, !"frame-pointer", i32 2}
!949 = distinct !DISubprogram(name: "GPT_ResetTimer", scope: !3, file: !3, line: 73, type: !950, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !952)
!950 = !DISubroutineType(types: !951)
!951 = !{null, !60, !60, !156}
!952 = !{!953, !954, !955}
!953 = !DILocalVariable(name: "timerNum", arg: 1, scope: !949, file: !3, line: 73, type: !60)
!954 = !DILocalVariable(name: "countValue", arg: 2, scope: !949, file: !3, line: 73, type: !60)
!955 = !DILocalVariable(name: "autoRepeat", arg: 3, scope: !949, file: !3, line: 73, type: !156)
!956 = !DILocation(line: 0, scope: !949)
!957 = !DILocation(line: 75, column: 5, scope: !958)
!958 = distinct !DILexicalBlock(scope: !949, file: !3, line: 75, column: 5)
!959 = !DILocation(line: 75, column: 5, scope: !949)
!960 = !DILocation(line: 75, column: 5, scope: !961)
!961 = distinct !DILexicalBlock(scope: !958, file: !3, line: 75, column: 5)
!962 = distinct !{!962, !960, !960}
!963 = !DILocation(line: 77, column: 9, scope: !949)
!964 = !DILocation(line: 78, column: 30, scope: !965)
!965 = distinct !DILexicalBlock(scope: !966, file: !3, line: 77, column: 24)
!966 = distinct !DILexicalBlock(scope: !949, file: !3, line: 77, column: 9)
!967 = !DILocation(line: 0, scope: !968)
!968 = distinct !DILexicalBlock(scope: !965, file: !3, line: 79, column: 13)
!969 = !DILocation(line: 79, column: 13, scope: !965)
!970 = !DILocation(line: 80, column: 34, scope: !971)
!971 = distinct !DILexicalBlock(scope: !968, file: !3, line: 79, column: 37)
!972 = !DILocation(line: 81, column: 9, scope: !971)
!973 = !DILocation(line: 82, column: 34, scope: !974)
!974 = distinct !DILexicalBlock(scope: !968, file: !3, line: 81, column: 16)
!975 = !DILocation(line: 85, column: 30, scope: !976)
!976 = distinct !DILexicalBlock(scope: !977, file: !3, line: 84, column: 31)
!977 = distinct !DILexicalBlock(scope: !966, file: !3, line: 84, column: 16)
!978 = !DILocation(line: 0, scope: !979)
!979 = distinct !DILexicalBlock(scope: !976, file: !3, line: 86, column: 13)
!980 = !DILocation(line: 86, column: 13, scope: !976)
!981 = !DILocation(line: 87, column: 34, scope: !982)
!982 = distinct !DILexicalBlock(scope: !979, file: !3, line: 86, column: 37)
!983 = !DILocation(line: 88, column: 9, scope: !982)
!984 = !DILocation(line: 89, column: 34, scope: !985)
!985 = distinct !DILexicalBlock(scope: !979, file: !3, line: 88, column: 16)
!986 = !DILocation(line: 92, column: 1, scope: !949)
!987 = distinct !DISubprogram(name: "GPT_Start", scope: !3, file: !3, line: 94, type: !988, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !990)
!988 = !DISubroutineType(types: !989)
!989 = !{null, !60}
!990 = !{!991}
!991 = !DILocalVariable(name: "timerNum", arg: 1, scope: !987, file: !3, line: 94, type: !60)
!992 = !DILocation(line: 0, scope: !987)
!993 = !DILocation(line: 96, column: 5, scope: !987)
!994 = !DILocation(line: 96, column: 5, scope: !995)
!995 = distinct !DILexicalBlock(scope: !996, file: !3, line: 96, column: 5)
!996 = distinct !DILexicalBlock(scope: !987, file: !3, line: 96, column: 5)
!997 = distinct !{!997, !994, !994}
!998 = !DILocation(line: 99, column: 30, scope: !999)
!999 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 98, column: 24)
!1000 = distinct !DILexicalBlock(scope: !987, file: !3, line: 98, column: 9)
!1001 = !DILocation(line: 100, column: 9, scope: !999)
!1002 = !DILocation(line: 101, column: 5, scope: !999)
!1003 = !DILocation(line: 102, column: 30, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 101, column: 31)
!1005 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 101, column: 16)
!1006 = !DILocation(line: 103, column: 9, scope: !1004)
!1007 = !DILocation(line: 104, column: 5, scope: !1004)
!1008 = !DILocation(line: 105, column: 30, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 104, column: 31)
!1010 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 104, column: 16)
!1011 = !DILocation(line: 106, column: 5, scope: !1009)
!1012 = !DILocation(line: 108, column: 1, scope: !987)
!1013 = distinct !DISubprogram(name: "GPT_Stop", scope: !3, file: !3, line: 110, type: !988, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1014)
!1014 = !{!1015}
!1015 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1013, file: !3, line: 110, type: !60)
!1016 = !DILocation(line: 0, scope: !1013)
!1017 = !DILocation(line: 112, column: 9, scope: !1013)
!1018 = !DILocation(line: 113, column: 30, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 112, column: 24)
!1020 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 112, column: 9)
!1021 = !DILocation(line: 114, column: 30, scope: !1019)
!1022 = !DILocation(line: 115, column: 31, scope: !1019)
!1023 = !DILocation(line: 117, column: 5, scope: !1019)
!1024 = !DILocation(line: 118, column: 30, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 117, column: 31)
!1026 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 117, column: 16)
!1027 = !DILocation(line: 119, column: 30, scope: !1025)
!1028 = !DILocation(line: 120, column: 31, scope: !1025)
!1029 = !DILocation(line: 121, column: 5, scope: !1025)
!1030 = !DILocation(line: 122, column: 30, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 121, column: 31)
!1032 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 121, column: 16)
!1033 = !DILocation(line: 123, column: 5, scope: !1031)
!1034 = !DILocation(line: 124, column: 30, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 123, column: 31)
!1036 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 123, column: 16)
!1037 = !DILocation(line: 125, column: 5, scope: !1035)
!1038 = !DILocation(line: 128, column: 1, scope: !1013)
!1039 = distinct !DISubprogram(name: "GPT_INT_Handler", scope: !3, file: !3, line: 130, type: !254, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1040)
!1040 = !{!1041, !1042}
!1041 = !DILocalVariable(name: "irq_number", arg: 1, scope: !1039, file: !3, line: 130, type: !171)
!1042 = !DILocalVariable(name: "GPT_Status", scope: !1039, file: !3, line: 132, type: !131)
!1043 = !DILocation(line: 0, scope: !1039)
!1044 = !DILocation(line: 135, column: 18, scope: !1039)
!1045 = !DILocation(line: 136, column: 26, scope: !1039)
!1046 = !DILocation(line: 136, column: 24, scope: !1039)
!1047 = !DILocation(line: 138, column: 20, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 138, column: 9)
!1049 = !DILocation(line: 138, column: 9, scope: !1039)
!1050 = !DILocation(line: 141, column: 27, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 141, column: 16)
!1052 = !DILocation(line: 141, column: 16, scope: !1048)
!1053 = !DILocation(line: 0, scope: !1048)
!1054 = !DILocation(line: 145, column: 1, scope: !1039)
!1055 = distinct !DISubprogram(name: "GPT_init", scope: !3, file: !3, line: 147, type: !1056, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1058)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{null, !60, !60, !74}
!1058 = !{!1059, !1060, !1061}
!1059 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1055, file: !3, line: 147, type: !60)
!1060 = !DILocalVariable(name: "speed_32us", arg: 2, scope: !1055, file: !3, line: 147, type: !60)
!1061 = !DILocalVariable(name: "GPT_Callback", arg: 3, scope: !1055, file: !3, line: 147, type: !74)
!1062 = !DILocation(line: 0, scope: !1055)
!1063 = !DILocation(line: 149, column: 5, scope: !1055)
!1064 = !DILocation(line: 149, column: 5, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 149, column: 5)
!1066 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 149, column: 5)
!1067 = distinct !{!1067, !1064, !1064}
!1068 = !DILocation(line: 149, column: 5, scope: !1066)
!1069 = !DILocation(line: 151, column: 23, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 151, column: 9)
!1071 = !DILocation(line: 152, column: 9, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 151, column: 41)
!1073 = !DILocation(line: 153, column: 9, scope: !1072)
!1074 = !DILocation(line: 154, column: 9, scope: !1072)
!1075 = !DILocation(line: 155, column: 5, scope: !1072)
!1076 = !DILocation(line: 157, column: 9, scope: !1055)
!1077 = !DILocation(line: 158, column: 37, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 157, column: 24)
!1079 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 157, column: 9)
!1080 = !DILocation(line: 159, column: 30, scope: !1078)
!1081 = !DILocation(line: 160, column: 45, scope: !1078)
!1082 = !DILocation(line: 160, column: 30, scope: !1078)
!1083 = !DILocation(line: 161, column: 5, scope: !1078)
!1084 = !DILocation(line: 162, column: 37, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 161, column: 31)
!1086 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 161, column: 16)
!1087 = !DILocation(line: 163, column: 30, scope: !1085)
!1088 = !DILocation(line: 164, column: 45, scope: !1085)
!1089 = !DILocation(line: 164, column: 30, scope: !1085)
!1090 = !DILocation(line: 165, column: 5, scope: !1085)
!1091 = !DILocation(line: 166, column: 59, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 165, column: 31)
!1093 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 165, column: 16)
!1094 = !DILocation(line: 166, column: 45, scope: !1092)
!1095 = !DILocation(line: 166, column: 30, scope: !1092)
!1096 = !DILocation(line: 167, column: 5, scope: !1092)
!1097 = !DILocation(line: 168, column: 59, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 167, column: 31)
!1099 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 167, column: 16)
!1100 = !DILocation(line: 168, column: 45, scope: !1098)
!1101 = !DILocation(line: 168, column: 30, scope: !1098)
!1102 = !DILocation(line: 169, column: 30, scope: !1098)
!1103 = !DILocation(line: 170, column: 5, scope: !1098)
!1104 = !DILocation(line: 171, column: 1, scope: !1055)
!1105 = distinct !DISubprogram(name: "GPT_return_current_count", scope: !3, file: !3, line: 173, type: !1106, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1108)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!60, !60}
!1108 = !{!1109, !1110}
!1109 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1105, file: !3, line: 173, type: !60)
!1110 = !DILocalVariable(name: "current_count", scope: !1105, file: !3, line: 175, type: !60)
!1111 = !DILocation(line: 0, scope: !1105)
!1112 = !DILocation(line: 177, column: 5, scope: !1105)
!1113 = !DILocation(line: 177, column: 5, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !3, line: 177, column: 5)
!1115 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 177, column: 5)
!1116 = distinct !{!1116, !1113, !1113}
!1117 = !DILocation(line: 183, column: 5, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 181, column: 31)
!1119 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 181, column: 16)
!1120 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 179, column: 9)
!1121 = !DILocation(line: 185, column: 5, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 183, column: 31)
!1123 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 183, column: 16)
!1124 = !DILocation(line: 187, column: 5, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 185, column: 31)
!1126 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 185, column: 16)
!1127 = !DILocation(line: 0, scope: !1120)
!1128 = !DILocation(line: 189, column: 5, scope: !1105)
!1129 = distinct !DISubprogram(name: "CM4_GPT2Init", scope: !3, file: !3, line: 193, type: !75, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1130)
!1130 = !{}
!1131 = !DILocation(line: 195, column: 5, scope: !1129)
!1132 = !DILocation(line: 196, column: 1, scope: !1129)
!1133 = distinct !DISubprogram(name: "CM4_GPT4Init", scope: !3, file: !3, line: 198, type: !75, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1130)
!1134 = !DILocation(line: 200, column: 5, scope: !1133)
!1135 = !DILocation(line: 201, column: 1, scope: !1133)
!1136 = distinct !DISubprogram(name: "halGPIO_ConfDirection", scope: !666, file: !666, line: 54, type: !1137, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !1140)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!1139, !80, !133}
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !6, line: 56, baseType: !13)
!1140 = !{!1141, !1142, !1143, !1145}
!1141 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1136, file: !666, line: 54, type: !80)
!1142 = !DILocalVariable(name: "outEnable", arg: 2, scope: !1136, file: !666, line: 54, type: !133)
!1143 = !DILocalVariable(name: "no", scope: !1136, file: !666, line: 57, type: !1144)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !6, line: 60, baseType: !132)
!1145 = !DILocalVariable(name: "remainder", scope: !1136, file: !666, line: 58, type: !1144)
!1146 = !DILocation(line: 0, scope: !1136)
!1147 = !DILocation(line: 59, column: 19, scope: !1136)
!1148 = !DILocation(line: 60, column: 17, scope: !1136)
!1149 = !DILocation(line: 61, column: 5, scope: !1136)
!1150 = !DILocation(line: 65, column: 27, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !666, line: 65, column: 17)
!1152 = distinct !DILexicalBlock(scope: !1136, file: !666, line: 61, column: 17)
!1153 = !DILocation(line: 0, scope: !1151)
!1154 = !DILocation(line: 65, column: 17, scope: !1152)
!1155 = !DILocation(line: 66, column: 21, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1151, file: !666, line: 65, column: 33)
!1157 = !DILocation(line: 67, column: 73, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !666, line: 66, column: 38)
!1159 = distinct !DILexicalBlock(scope: !1156, file: !666, line: 66, column: 21)
!1160 = !DILocation(line: 67, column: 69, scope: !1158)
!1161 = !DILocation(line: 67, column: 66, scope: !1158)
!1162 = !DILocation(line: 68, column: 17, scope: !1158)
!1163 = !DILocation(line: 68, column: 28, scope: !1159)
!1164 = !DILocation(line: 69, column: 77, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !666, line: 68, column: 45)
!1166 = distinct !DILexicalBlock(scope: !1159, file: !666, line: 68, column: 28)
!1167 = !DILocation(line: 70, column: 77, scope: !1165)
!1168 = !DILocation(line: 71, column: 17, scope: !1165)
!1169 = !DILocation(line: 72, column: 77, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !666, line: 71, column: 45)
!1171 = distinct !DILexicalBlock(scope: !1166, file: !666, line: 71, column: 28)
!1172 = !DILocation(line: 73, column: 77, scope: !1170)
!1173 = !DILocation(line: 74, column: 17, scope: !1170)
!1174 = !DILocation(line: 75, column: 79, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !666, line: 74, column: 45)
!1176 = distinct !DILexicalBlock(scope: !1171, file: !666, line: 74, column: 28)
!1177 = !DILocation(line: 76, column: 79, scope: !1175)
!1178 = !DILocation(line: 77, column: 17, scope: !1175)
!1179 = !DILocation(line: 78, column: 79, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !666, line: 77, column: 45)
!1181 = distinct !DILexicalBlock(scope: !1176, file: !666, line: 77, column: 28)
!1182 = !DILocation(line: 79, column: 79, scope: !1180)
!1183 = !DILocation(line: 80, column: 17, scope: !1180)
!1184 = !DILocation(line: 81, column: 79, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !666, line: 80, column: 45)
!1186 = distinct !DILexicalBlock(scope: !1181, file: !666, line: 80, column: 28)
!1187 = !DILocation(line: 82, column: 79, scope: !1185)
!1188 = !DILocation(line: 83, column: 17, scope: !1185)
!1189 = !DILocation(line: 85, column: 17, scope: !1156)
!1190 = !DILocation(line: 86, column: 13, scope: !1156)
!1191 = !DILocation(line: 88, column: 21, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1151, file: !666, line: 86, column: 20)
!1193 = !DILocation(line: 89, column: 72, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !666, line: 88, column: 38)
!1195 = distinct !DILexicalBlock(scope: !1192, file: !666, line: 88, column: 21)
!1196 = !DILocation(line: 89, column: 66, scope: !1194)
!1197 = !DILocation(line: 90, column: 17, scope: !1194)
!1198 = !DILocation(line: 90, column: 28, scope: !1195)
!1199 = !DILocation(line: 91, column: 77, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !666, line: 90, column: 45)
!1201 = distinct !DILexicalBlock(scope: !1195, file: !666, line: 90, column: 28)
!1202 = !DILocation(line: 92, column: 17, scope: !1200)
!1203 = !DILocation(line: 93, column: 77, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !666, line: 92, column: 45)
!1205 = distinct !DILexicalBlock(scope: !1201, file: !666, line: 92, column: 28)
!1206 = !DILocation(line: 94, column: 17, scope: !1204)
!1207 = !DILocation(line: 95, column: 79, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !666, line: 94, column: 45)
!1209 = distinct !DILexicalBlock(scope: !1205, file: !666, line: 94, column: 28)
!1210 = !DILocation(line: 96, column: 17, scope: !1208)
!1211 = !DILocation(line: 97, column: 79, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !666, line: 96, column: 45)
!1213 = distinct !DILexicalBlock(scope: !1209, file: !666, line: 96, column: 28)
!1214 = !DILocation(line: 98, column: 17, scope: !1212)
!1215 = !DILocation(line: 99, column: 79, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !666, line: 98, column: 45)
!1217 = distinct !DILexicalBlock(scope: !1213, file: !666, line: 98, column: 28)
!1218 = !DILocation(line: 100, column: 17, scope: !1216)
!1219 = !DILocation(line: 103, column: 17, scope: !1192)
!1220 = !DILocation(line: 109, column: 27, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1152, file: !666, line: 109, column: 17)
!1222 = !DILocation(line: 0, scope: !1221)
!1223 = !DILocation(line: 109, column: 17, scope: !1152)
!1224 = !DILocation(line: 110, column: 21, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1221, file: !666, line: 109, column: 33)
!1226 = !DILocation(line: 111, column: 73, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !666, line: 110, column: 36)
!1228 = distinct !DILexicalBlock(scope: !1225, file: !666, line: 110, column: 21)
!1229 = !DILocation(line: 111, column: 69, scope: !1227)
!1230 = !DILocation(line: 111, column: 66, scope: !1227)
!1231 = !DILocation(line: 112, column: 17, scope: !1227)
!1232 = !DILocation(line: 113, column: 79, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1228, file: !666, line: 112, column: 24)
!1234 = !DILocation(line: 114, column: 79, scope: !1233)
!1235 = !DILocation(line: 117, column: 17, scope: !1225)
!1236 = !DILocation(line: 118, column: 13, scope: !1225)
!1237 = !DILocation(line: 120, column: 21, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1221, file: !666, line: 118, column: 20)
!1239 = !DILocation(line: 121, column: 72, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !666, line: 120, column: 36)
!1241 = distinct !DILexicalBlock(scope: !1238, file: !666, line: 120, column: 21)
!1242 = !DILocation(line: 121, column: 66, scope: !1240)
!1243 = !DILocation(line: 122, column: 17, scope: !1240)
!1244 = !DILocation(line: 123, column: 79, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1241, file: !666, line: 122, column: 24)
!1246 = !DILocation(line: 126, column: 17, scope: !1238)
!1247 = !DILocation(line: 133, column: 1, scope: !1136)
!1248 = distinct !DISubprogram(name: "halGPO_Write", scope: !666, file: !666, line: 136, type: !1137, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !1249)
!1249 = !{!1250, !1251, !1252, !1253}
!1250 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1248, file: !666, line: 136, type: !80)
!1251 = !DILocalVariable(name: "writeValue", arg: 2, scope: !1248, file: !666, line: 136, type: !133)
!1252 = !DILocalVariable(name: "no", scope: !1248, file: !666, line: 138, type: !1144)
!1253 = !DILocalVariable(name: "remainder", scope: !1248, file: !666, line: 139, type: !1144)
!1254 = !DILocation(line: 0, scope: !1248)
!1255 = !DILocation(line: 140, column: 19, scope: !1248)
!1256 = !DILocation(line: 141, column: 17, scope: !1248)
!1257 = !DILocation(line: 142, column: 5, scope: !1248)
!1258 = !DILocation(line: 145, column: 17, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !666, line: 145, column: 17)
!1260 = distinct !DILexicalBlock(scope: !1248, file: !666, line: 142, column: 17)
!1261 = !DILocation(line: 0, scope: !1259)
!1262 = !DILocation(line: 145, column: 17, scope: !1260)
!1263 = !DILocation(line: 146, column: 17, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1259, file: !666, line: 145, column: 29)
!1265 = !DILocation(line: 147, column: 13, scope: !1264)
!1266 = !DILocation(line: 148, column: 17, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1259, file: !666, line: 147, column: 20)
!1268 = !DILocation(line: 153, column: 17, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1260, file: !666, line: 153, column: 17)
!1270 = !DILocation(line: 0, scope: !1269)
!1271 = !DILocation(line: 153, column: 17, scope: !1260)
!1272 = !DILocation(line: 154, column: 17, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1269, file: !666, line: 153, column: 29)
!1274 = !DILocation(line: 155, column: 13, scope: !1273)
!1275 = !DILocation(line: 156, column: 17, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1269, file: !666, line: 155, column: 20)
!1277 = !DILocation(line: 163, column: 1, scope: !1248)
!1278 = distinct !DISubprogram(name: "halgetGPIO_DOUT", scope: !666, file: !666, line: 169, type: !1279, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !1281)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!133, !80}
!1281 = !{!1282, !1283, !1284, !1285}
!1282 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1278, file: !666, line: 169, type: !80)
!1283 = !DILocalVariable(name: "no", scope: !1278, file: !666, line: 171, type: !1144)
!1284 = !DILocalVariable(name: "remainder", scope: !1278, file: !666, line: 172, type: !1144)
!1285 = !DILocalVariable(name: "dout", scope: !1278, file: !666, line: 175, type: !133)
!1286 = !DILocation(line: 0, scope: !1278)
!1287 = !DILocation(line: 173, column: 19, scope: !1278)
!1288 = !DILocation(line: 174, column: 17, scope: !1278)
!1289 = !DILocation(line: 177, column: 5, scope: !1278)
!1290 = !DILocation(line: 183, column: 13, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1278, file: !666, line: 177, column: 17)
!1292 = !DILocation(line: 0, scope: !1291)
!1293 = !DILocation(line: 187, column: 5, scope: !1278)
!1294 = !DILocation(line: 188, column: 1, scope: !1278)
!1295 = distinct !DISubprogram(name: "halgetGPIO_DIN", scope: !666, file: !666, line: 189, type: !1279, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !1296)
!1296 = !{!1297, !1298, !1299, !1300}
!1297 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1295, file: !666, line: 189, type: !80)
!1298 = !DILocalVariable(name: "no", scope: !1295, file: !666, line: 191, type: !1144)
!1299 = !DILocalVariable(name: "remainder", scope: !1295, file: !666, line: 192, type: !1144)
!1300 = !DILocalVariable(name: "din", scope: !1295, file: !666, line: 195, type: !133)
!1301 = !DILocation(line: 0, scope: !1295)
!1302 = !DILocation(line: 193, column: 19, scope: !1295)
!1303 = !DILocation(line: 194, column: 17, scope: !1295)
!1304 = !DILocation(line: 196, column: 5, scope: !1295)
!1305 = !DILocation(line: 203, column: 13, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1295, file: !666, line: 196, column: 17)
!1307 = !DILocation(line: 0, scope: !1306)
!1308 = !DILocation(line: 208, column: 5, scope: !1295)
!1309 = !DILocation(line: 209, column: 1, scope: !1295)
!1310 = distinct !DISubprogram(name: "halgetGPIO_OutEnable", scope: !666, file: !666, line: 210, type: !1279, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !1311)
!1311 = !{!1312, !1313, !1314, !1315}
!1312 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1310, file: !666, line: 210, type: !80)
!1313 = !DILocalVariable(name: "no", scope: !1310, file: !666, line: 212, type: !1144)
!1314 = !DILocalVariable(name: "remainder", scope: !1310, file: !666, line: 213, type: !1144)
!1315 = !DILocalVariable(name: "outEnable", scope: !1310, file: !666, line: 216, type: !133)
!1316 = !DILocation(line: 0, scope: !1310)
!1317 = !DILocation(line: 214, column: 19, scope: !1310)
!1318 = !DILocation(line: 215, column: 17, scope: !1310)
!1319 = !DILocation(line: 218, column: 5, scope: !1310)
!1320 = !DILocation(line: 224, column: 13, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1310, file: !666, line: 218, column: 17)
!1322 = !DILocation(line: 0, scope: !1321)
!1323 = !DILocation(line: 228, column: 5, scope: !1310)
!1324 = !DILocation(line: 229, column: 1, scope: !1310)
!1325 = distinct !DISubprogram(name: "halGPIO_PullUp_SET", scope: !666, file: !666, line: 232, type: !1326, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !1328)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!1139, !80}
!1328 = !{!1329, !1330, !1331}
!1329 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1325, file: !666, line: 232, type: !80)
!1330 = !DILocalVariable(name: "no", scope: !1325, file: !666, line: 234, type: !1144)
!1331 = !DILocalVariable(name: "remainder", scope: !1325, file: !666, line: 235, type: !1144)
!1332 = !DILocation(line: 0, scope: !1325)
!1333 = !DILocation(line: 236, column: 19, scope: !1325)
!1334 = !DILocation(line: 237, column: 17, scope: !1325)
!1335 = !DILocation(line: 238, column: 5, scope: !1325)
!1336 = !DILocation(line: 239, column: 5, scope: !1325)
!1337 = !DILocation(line: 241, column: 27, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !666, line: 241, column: 17)
!1339 = distinct !DILexicalBlock(scope: !1325, file: !666, line: 239, column: 17)
!1340 = !DILocation(line: 241, column: 17, scope: !1339)
!1341 = !DILocation(line: 241, column: 17, scope: !1338)
!1342 = !DILocation(line: 242, column: 17, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1338, file: !666, line: 241, column: 34)
!1344 = !DILocation(line: 243, column: 13, scope: !1343)
!1345 = !DILocation(line: 243, column: 24, scope: !1338)
!1346 = !DILocation(line: 244, column: 73, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !666, line: 243, column: 41)
!1348 = distinct !DILexicalBlock(scope: !1338, file: !666, line: 243, column: 24)
!1349 = !DILocation(line: 245, column: 73, scope: !1347)
!1350 = !DILocation(line: 246, column: 13, scope: !1347)
!1351 = !DILocation(line: 247, column: 73, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !666, line: 246, column: 41)
!1353 = distinct !DILexicalBlock(scope: !1348, file: !666, line: 246, column: 24)
!1354 = !DILocation(line: 248, column: 73, scope: !1352)
!1355 = !DILocation(line: 249, column: 13, scope: !1352)
!1356 = !DILocation(line: 250, column: 75, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !666, line: 249, column: 41)
!1358 = distinct !DILexicalBlock(scope: !1353, file: !666, line: 249, column: 24)
!1359 = !DILocation(line: 251, column: 75, scope: !1357)
!1360 = !DILocation(line: 252, column: 13, scope: !1357)
!1361 = !DILocation(line: 253, column: 75, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !666, line: 252, column: 41)
!1363 = distinct !DILexicalBlock(scope: !1358, file: !666, line: 252, column: 24)
!1364 = !DILocation(line: 254, column: 75, scope: !1362)
!1365 = !DILocation(line: 255, column: 13, scope: !1362)
!1366 = !DILocation(line: 256, column: 75, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !666, line: 255, column: 41)
!1368 = distinct !DILexicalBlock(scope: !1363, file: !666, line: 255, column: 24)
!1369 = !DILocation(line: 257, column: 75, scope: !1367)
!1370 = !DILocation(line: 258, column: 13, scope: !1367)
!1371 = !DILocation(line: 261, column: 18, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1339, file: !666, line: 261, column: 17)
!1373 = !DILocation(line: 261, column: 17, scope: !1339)
!1374 = !DILocation(line: 262, column: 75, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1372, file: !666, line: 261, column: 29)
!1376 = !DILocation(line: 263, column: 75, scope: !1375)
!1377 = !DILocation(line: 264, column: 13, scope: !1375)
!1378 = !DILocation(line: 265, column: 17, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1372, file: !666, line: 264, column: 20)
!1380 = !DILocation(line: 272, column: 1, scope: !1325)
!1381 = distinct !DISubprogram(name: "halGPIO_PullDown_RESET", scope: !666, file: !666, line: 359, type: !1326, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !1382)
!1382 = !{!1383, !1384, !1385}
!1383 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1381, file: !666, line: 359, type: !80)
!1384 = !DILocalVariable(name: "no", scope: !1381, file: !666, line: 362, type: !1144)
!1385 = !DILocalVariable(name: "remainder", scope: !1381, file: !666, line: 363, type: !1144)
!1386 = !DILocation(line: 0, scope: !1381)
!1387 = !DILocation(line: 364, column: 19, scope: !1381)
!1388 = !DILocation(line: 365, column: 17, scope: !1381)
!1389 = !DILocation(line: 367, column: 5, scope: !1381)
!1390 = !DILocation(line: 369, column: 27, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !666, line: 369, column: 17)
!1392 = distinct !DILexicalBlock(scope: !1381, file: !666, line: 367, column: 17)
!1393 = !DILocation(line: 369, column: 17, scope: !1392)
!1394 = !DILocation(line: 369, column: 17, scope: !1391)
!1395 = !DILocation(line: 370, column: 17, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1391, file: !666, line: 369, column: 34)
!1397 = !DILocation(line: 371, column: 13, scope: !1396)
!1398 = !DILocation(line: 371, column: 24, scope: !1391)
!1399 = !DILocation(line: 372, column: 73, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !666, line: 371, column: 41)
!1401 = distinct !DILexicalBlock(scope: !1391, file: !666, line: 371, column: 24)
!1402 = !DILocation(line: 373, column: 73, scope: !1400)
!1403 = !DILocation(line: 374, column: 13, scope: !1400)
!1404 = !DILocation(line: 375, column: 73, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !666, line: 374, column: 41)
!1406 = distinct !DILexicalBlock(scope: !1401, file: !666, line: 374, column: 24)
!1407 = !DILocation(line: 376, column: 73, scope: !1405)
!1408 = !DILocation(line: 377, column: 13, scope: !1405)
!1409 = !DILocation(line: 378, column: 75, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !666, line: 377, column: 41)
!1411 = distinct !DILexicalBlock(scope: !1406, file: !666, line: 377, column: 24)
!1412 = !DILocation(line: 379, column: 75, scope: !1410)
!1413 = !DILocation(line: 380, column: 13, scope: !1410)
!1414 = !DILocation(line: 381, column: 75, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !666, line: 380, column: 41)
!1416 = distinct !DILexicalBlock(scope: !1411, file: !666, line: 380, column: 24)
!1417 = !DILocation(line: 382, column: 75, scope: !1415)
!1418 = !DILocation(line: 383, column: 13, scope: !1415)
!1419 = !DILocation(line: 384, column: 75, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !666, line: 383, column: 41)
!1421 = distinct !DILexicalBlock(scope: !1416, file: !666, line: 383, column: 24)
!1422 = !DILocation(line: 385, column: 75, scope: !1420)
!1423 = !DILocation(line: 386, column: 13, scope: !1420)
!1424 = !DILocation(line: 389, column: 18, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1392, file: !666, line: 389, column: 17)
!1426 = !DILocation(line: 389, column: 17, scope: !1392)
!1427 = !DILocation(line: 390, column: 75, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1425, file: !666, line: 389, column: 29)
!1429 = !DILocation(line: 391, column: 75, scope: !1428)
!1430 = !DILocation(line: 392, column: 13, scope: !1428)
!1431 = !DILocation(line: 393, column: 17, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1425, file: !666, line: 392, column: 20)
!1433 = !DILocation(line: 401, column: 1, scope: !1381)
!1434 = distinct !DISubprogram(name: "halGPIO_PullUp_RESET", scope: !666, file: !666, line: 274, type: !1326, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !1435)
!1435 = !{!1436, !1437, !1438}
!1436 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1434, file: !666, line: 274, type: !80)
!1437 = !DILocalVariable(name: "no", scope: !1434, file: !666, line: 276, type: !1144)
!1438 = !DILocalVariable(name: "remainder", scope: !1434, file: !666, line: 277, type: !1144)
!1439 = !DILocation(line: 0, scope: !1434)
!1440 = !DILocation(line: 278, column: 19, scope: !1434)
!1441 = !DILocation(line: 279, column: 17, scope: !1434)
!1442 = !DILocation(line: 281, column: 5, scope: !1434)
!1443 = !DILocation(line: 283, column: 27, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !666, line: 283, column: 17)
!1445 = distinct !DILexicalBlock(scope: !1434, file: !666, line: 281, column: 17)
!1446 = !DILocation(line: 283, column: 17, scope: !1445)
!1447 = !DILocation(line: 283, column: 17, scope: !1444)
!1448 = !DILocation(line: 284, column: 17, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1444, file: !666, line: 283, column: 34)
!1450 = !DILocation(line: 285, column: 13, scope: !1449)
!1451 = !DILocation(line: 285, column: 24, scope: !1444)
!1452 = !DILocation(line: 286, column: 73, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !666, line: 285, column: 41)
!1454 = distinct !DILexicalBlock(scope: !1444, file: !666, line: 285, column: 24)
!1455 = !DILocation(line: 287, column: 73, scope: !1453)
!1456 = !DILocation(line: 288, column: 13, scope: !1453)
!1457 = !DILocation(line: 289, column: 73, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !666, line: 288, column: 41)
!1459 = distinct !DILexicalBlock(scope: !1454, file: !666, line: 288, column: 24)
!1460 = !DILocation(line: 290, column: 73, scope: !1458)
!1461 = !DILocation(line: 291, column: 13, scope: !1458)
!1462 = !DILocation(line: 292, column: 75, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !666, line: 291, column: 41)
!1464 = distinct !DILexicalBlock(scope: !1459, file: !666, line: 291, column: 24)
!1465 = !DILocation(line: 293, column: 75, scope: !1463)
!1466 = !DILocation(line: 294, column: 13, scope: !1463)
!1467 = !DILocation(line: 295, column: 75, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !666, line: 294, column: 41)
!1469 = distinct !DILexicalBlock(scope: !1464, file: !666, line: 294, column: 24)
!1470 = !DILocation(line: 296, column: 75, scope: !1468)
!1471 = !DILocation(line: 297, column: 13, scope: !1468)
!1472 = !DILocation(line: 298, column: 75, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !666, line: 297, column: 41)
!1474 = distinct !DILexicalBlock(scope: !1469, file: !666, line: 297, column: 24)
!1475 = !DILocation(line: 299, column: 75, scope: !1473)
!1476 = !DILocation(line: 300, column: 13, scope: !1473)
!1477 = !DILocation(line: 303, column: 18, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1445, file: !666, line: 303, column: 17)
!1479 = !DILocation(line: 303, column: 17, scope: !1445)
!1480 = !DILocation(line: 304, column: 75, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1478, file: !666, line: 303, column: 29)
!1482 = !DILocation(line: 305, column: 75, scope: !1481)
!1483 = !DILocation(line: 306, column: 13, scope: !1481)
!1484 = !DILocation(line: 307, column: 17, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1478, file: !666, line: 306, column: 20)
!1486 = !DILocation(line: 314, column: 1, scope: !1434)
!1487 = distinct !DISubprogram(name: "halGPIO_PullDown_SET", scope: !666, file: !666, line: 316, type: !1326, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !1488)
!1488 = !{!1489, !1490, !1491}
!1489 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1487, file: !666, line: 316, type: !80)
!1490 = !DILocalVariable(name: "no", scope: !1487, file: !666, line: 318, type: !1144)
!1491 = !DILocalVariable(name: "remainder", scope: !1487, file: !666, line: 319, type: !1144)
!1492 = !DILocation(line: 0, scope: !1487)
!1493 = !DILocation(line: 320, column: 19, scope: !1487)
!1494 = !DILocation(line: 321, column: 17, scope: !1487)
!1495 = !DILocation(line: 322, column: 5, scope: !1487)
!1496 = !DILocation(line: 323, column: 5, scope: !1487)
!1497 = !DILocation(line: 325, column: 27, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !666, line: 325, column: 17)
!1499 = distinct !DILexicalBlock(scope: !1487, file: !666, line: 323, column: 17)
!1500 = !DILocation(line: 325, column: 17, scope: !1499)
!1501 = !DILocation(line: 325, column: 17, scope: !1498)
!1502 = !DILocation(line: 326, column: 17, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1498, file: !666, line: 325, column: 34)
!1504 = !DILocation(line: 327, column: 13, scope: !1503)
!1505 = !DILocation(line: 327, column: 24, scope: !1498)
!1506 = !DILocation(line: 328, column: 73, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !666, line: 327, column: 41)
!1508 = distinct !DILexicalBlock(scope: !1498, file: !666, line: 327, column: 24)
!1509 = !DILocation(line: 329, column: 73, scope: !1507)
!1510 = !DILocation(line: 330, column: 13, scope: !1507)
!1511 = !DILocation(line: 331, column: 73, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !666, line: 330, column: 41)
!1513 = distinct !DILexicalBlock(scope: !1508, file: !666, line: 330, column: 24)
!1514 = !DILocation(line: 332, column: 73, scope: !1512)
!1515 = !DILocation(line: 333, column: 13, scope: !1512)
!1516 = !DILocation(line: 334, column: 75, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !666, line: 333, column: 41)
!1518 = distinct !DILexicalBlock(scope: !1513, file: !666, line: 333, column: 24)
!1519 = !DILocation(line: 335, column: 75, scope: !1517)
!1520 = !DILocation(line: 336, column: 13, scope: !1517)
!1521 = !DILocation(line: 337, column: 75, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !666, line: 336, column: 41)
!1523 = distinct !DILexicalBlock(scope: !1518, file: !666, line: 336, column: 24)
!1524 = !DILocation(line: 338, column: 75, scope: !1522)
!1525 = !DILocation(line: 339, column: 13, scope: !1522)
!1526 = !DILocation(line: 340, column: 75, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !666, line: 339, column: 41)
!1528 = distinct !DILexicalBlock(scope: !1523, file: !666, line: 339, column: 24)
!1529 = !DILocation(line: 341, column: 75, scope: !1527)
!1530 = !DILocation(line: 342, column: 13, scope: !1527)
!1531 = !DILocation(line: 345, column: 18, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1499, file: !666, line: 345, column: 17)
!1533 = !DILocation(line: 345, column: 17, scope: !1499)
!1534 = !DILocation(line: 346, column: 75, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1532, file: !666, line: 345, column: 29)
!1536 = !DILocation(line: 347, column: 75, scope: !1535)
!1537 = !DILocation(line: 348, column: 13, scope: !1535)
!1538 = !DILocation(line: 349, column: 17, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1532, file: !666, line: 348, column: 20)
!1540 = !DILocation(line: 357, column: 1, scope: !1487)
!1541 = distinct !DISubprogram(name: "halGPIO_SetDriving", scope: !666, file: !666, line: 404, type: !1137, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !1542)
!1542 = !{!1543, !1544, !1545, !1546}
!1543 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1541, file: !666, line: 404, type: !80)
!1544 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1541, file: !666, line: 404, type: !133)
!1545 = !DILocalVariable(name: "no", scope: !1541, file: !666, line: 406, type: !1144)
!1546 = !DILocalVariable(name: "remainder", scope: !1541, file: !666, line: 407, type: !1144)
!1547 = !DILocation(line: 0, scope: !1541)
!1548 = !DILocation(line: 408, column: 19, scope: !1541)
!1549 = !DILocation(line: 409, column: 17, scope: !1541)
!1550 = !DILocation(line: 411, column: 5, scope: !1541)
!1551 = !DILocation(line: 413, column: 84, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1541, file: !666, line: 411, column: 17)
!1553 = !DILocation(line: 413, column: 70, scope: !1552)
!1554 = !DILocation(line: 413, column: 64, scope: !1552)
!1555 = !DILocation(line: 413, column: 61, scope: !1552)
!1556 = !DILocation(line: 414, column: 79, scope: !1552)
!1557 = !DILocation(line: 414, column: 83, scope: !1552)
!1558 = !DILocation(line: 414, column: 88, scope: !1552)
!1559 = !DILocation(line: 414, column: 61, scope: !1552)
!1560 = !DILocation(line: 415, column: 13, scope: !1552)
!1561 = !DILocation(line: 417, column: 27, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1552, file: !666, line: 417, column: 17)
!1563 = !DILocation(line: 417, column: 17, scope: !1552)
!1564 = !DILocation(line: 418, column: 88, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1562, file: !666, line: 417, column: 33)
!1566 = !DILocation(line: 418, column: 74, scope: !1565)
!1567 = !DILocation(line: 418, column: 68, scope: !1565)
!1568 = !DILocation(line: 418, column: 65, scope: !1565)
!1569 = !DILocation(line: 419, column: 83, scope: !1565)
!1570 = !DILocation(line: 419, column: 87, scope: !1565)
!1571 = !DILocation(line: 419, column: 92, scope: !1565)
!1572 = !DILocation(line: 419, column: 65, scope: !1565)
!1573 = !DILocation(line: 420, column: 13, scope: !1565)
!1574 = !DILocation(line: 420, column: 24, scope: !1562)
!1575 = !DILocation(line: 421, column: 73, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !666, line: 420, column: 41)
!1577 = distinct !DILexicalBlock(scope: !1562, file: !666, line: 420, column: 24)
!1578 = !DILocation(line: 422, column: 91, scope: !1576)
!1579 = !DILocation(line: 422, column: 100, scope: !1576)
!1580 = !DILocation(line: 422, column: 73, scope: !1576)
!1581 = !DILocation(line: 423, column: 73, scope: !1576)
!1582 = !DILocation(line: 424, column: 13, scope: !1576)
!1583 = !DILocation(line: 425, column: 73, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !666, line: 424, column: 41)
!1585 = distinct !DILexicalBlock(scope: !1577, file: !666, line: 424, column: 24)
!1586 = !DILocation(line: 426, column: 91, scope: !1584)
!1587 = !DILocation(line: 426, column: 100, scope: !1584)
!1588 = !DILocation(line: 426, column: 73, scope: !1584)
!1589 = !DILocation(line: 427, column: 73, scope: !1584)
!1590 = !DILocation(line: 428, column: 13, scope: !1584)
!1591 = !DILocation(line: 429, column: 75, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !666, line: 428, column: 41)
!1593 = distinct !DILexicalBlock(scope: !1585, file: !666, line: 428, column: 24)
!1594 = !DILocation(line: 430, column: 93, scope: !1592)
!1595 = !DILocation(line: 430, column: 102, scope: !1592)
!1596 = !DILocation(line: 430, column: 75, scope: !1592)
!1597 = !DILocation(line: 431, column: 75, scope: !1592)
!1598 = !DILocation(line: 432, column: 13, scope: !1592)
!1599 = !DILocation(line: 433, column: 75, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !666, line: 432, column: 41)
!1601 = distinct !DILexicalBlock(scope: !1593, file: !666, line: 432, column: 24)
!1602 = !DILocation(line: 434, column: 93, scope: !1600)
!1603 = !DILocation(line: 434, column: 102, scope: !1600)
!1604 = !DILocation(line: 434, column: 75, scope: !1600)
!1605 = !DILocation(line: 435, column: 75, scope: !1600)
!1606 = !DILocation(line: 436, column: 13, scope: !1600)
!1607 = !DILocation(line: 437, column: 75, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !666, line: 436, column: 41)
!1609 = distinct !DILexicalBlock(scope: !1601, file: !666, line: 436, column: 24)
!1610 = !DILocation(line: 438, column: 93, scope: !1608)
!1611 = !DILocation(line: 438, column: 102, scope: !1608)
!1612 = !DILocation(line: 438, column: 75, scope: !1608)
!1613 = !DILocation(line: 439, column: 75, scope: !1608)
!1614 = !DILocation(line: 440, column: 13, scope: !1608)
!1615 = !DILocation(line: 443, column: 18, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1552, file: !666, line: 443, column: 17)
!1617 = !DILocation(line: 443, column: 17, scope: !1552)
!1618 = !DILocation(line: 444, column: 75, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1616, file: !666, line: 443, column: 29)
!1620 = !DILocation(line: 445, column: 93, scope: !1619)
!1621 = !DILocation(line: 445, column: 102, scope: !1619)
!1622 = !DILocation(line: 445, column: 75, scope: !1619)
!1623 = !DILocation(line: 446, column: 75, scope: !1619)
!1624 = !DILocation(line: 447, column: 13, scope: !1619)
!1625 = !DILocation(line: 448, column: 88, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1616, file: !666, line: 447, column: 20)
!1627 = !DILocation(line: 448, column: 74, scope: !1626)
!1628 = !DILocation(line: 448, column: 68, scope: !1626)
!1629 = !DILocation(line: 448, column: 65, scope: !1626)
!1630 = !DILocation(line: 449, column: 83, scope: !1626)
!1631 = !DILocation(line: 449, column: 87, scope: !1626)
!1632 = !DILocation(line: 449, column: 92, scope: !1626)
!1633 = !DILocation(line: 449, column: 65, scope: !1626)
!1634 = !DILocation(line: 453, column: 84, scope: !1552)
!1635 = !DILocation(line: 453, column: 70, scope: !1552)
!1636 = !DILocation(line: 453, column: 64, scope: !1552)
!1637 = !DILocation(line: 453, column: 61, scope: !1552)
!1638 = !DILocation(line: 454, column: 79, scope: !1552)
!1639 = !DILocation(line: 454, column: 83, scope: !1552)
!1640 = !DILocation(line: 454, column: 88, scope: !1552)
!1641 = !DILocation(line: 454, column: 61, scope: !1552)
!1642 = !DILocation(line: 455, column: 13, scope: !1552)
!1643 = !DILocation(line: 460, column: 1, scope: !1541)
!1644 = distinct !DISubprogram(name: "halGPIO_GetDriving", scope: !666, file: !666, line: 463, type: !1645, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !1648)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!1139, !80, !1647}
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 32)
!1648 = !{!1649, !1650, !1651, !1652, !1653}
!1649 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1644, file: !666, line: 463, type: !80)
!1650 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1644, file: !666, line: 463, type: !1647)
!1651 = !DILocalVariable(name: "no", scope: !1644, file: !666, line: 465, type: !1144)
!1652 = !DILocalVariable(name: "remainder", scope: !1644, file: !666, line: 466, type: !1144)
!1653 = !DILocalVariable(name: "temp", scope: !1644, file: !666, line: 467, type: !80)
!1654 = !DILocation(line: 0, scope: !1644)
!1655 = !DILocation(line: 468, column: 19, scope: !1644)
!1656 = !DILocation(line: 469, column: 17, scope: !1644)
!1657 = !DILocation(line: 471, column: 5, scope: !1644)
!1658 = !DILocation(line: 473, column: 20, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1644, file: !666, line: 471, column: 17)
!1660 = !DILocation(line: 474, column: 40, scope: !1659)
!1661 = !DILocation(line: 474, column: 26, scope: !1659)
!1662 = !DILocation(line: 474, column: 18, scope: !1659)
!1663 = !DILocation(line: 475, column: 40, scope: !1659)
!1664 = !DILocation(line: 475, column: 29, scope: !1659)
!1665 = !DILocation(line: 476, column: 13, scope: !1659)
!1666 = !DILocation(line: 478, column: 27, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1659, file: !666, line: 478, column: 17)
!1668 = !DILocation(line: 478, column: 17, scope: !1659)
!1669 = !DILocation(line: 479, column: 24, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1667, file: !666, line: 478, column: 33)
!1671 = !DILocation(line: 480, column: 44, scope: !1670)
!1672 = !DILocation(line: 480, column: 30, scope: !1670)
!1673 = !DILocation(line: 480, column: 22, scope: !1670)
!1674 = !DILocation(line: 481, column: 44, scope: !1670)
!1675 = !DILocation(line: 481, column: 33, scope: !1670)
!1676 = !DILocation(line: 482, column: 13, scope: !1670)
!1677 = !DILocation(line: 482, column: 24, scope: !1667)
!1678 = !DILocation(line: 483, column: 24, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !666, line: 482, column: 41)
!1680 = distinct !DILexicalBlock(scope: !1667, file: !666, line: 482, column: 24)
!1681 = !DILocation(line: 485, column: 53, scope: !1679)
!1682 = !DILocation(line: 485, column: 33, scope: !1679)
!1683 = !DILocation(line: 486, column: 13, scope: !1679)
!1684 = !DILocation(line: 487, column: 24, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !666, line: 486, column: 41)
!1686 = distinct !DILexicalBlock(scope: !1680, file: !666, line: 486, column: 24)
!1687 = !DILocation(line: 489, column: 53, scope: !1685)
!1688 = !DILocation(line: 489, column: 33, scope: !1685)
!1689 = !DILocation(line: 490, column: 13, scope: !1685)
!1690 = !DILocation(line: 491, column: 24, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !666, line: 490, column: 41)
!1692 = distinct !DILexicalBlock(scope: !1686, file: !666, line: 490, column: 24)
!1693 = !DILocation(line: 493, column: 53, scope: !1691)
!1694 = !DILocation(line: 493, column: 33, scope: !1691)
!1695 = !DILocation(line: 494, column: 13, scope: !1691)
!1696 = !DILocation(line: 495, column: 24, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !666, line: 494, column: 41)
!1698 = distinct !DILexicalBlock(scope: !1692, file: !666, line: 494, column: 24)
!1699 = !DILocation(line: 497, column: 53, scope: !1697)
!1700 = !DILocation(line: 497, column: 33, scope: !1697)
!1701 = !DILocation(line: 498, column: 13, scope: !1697)
!1702 = !DILocation(line: 499, column: 24, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !666, line: 498, column: 41)
!1704 = distinct !DILexicalBlock(scope: !1698, file: !666, line: 498, column: 24)
!1705 = !DILocation(line: 501, column: 53, scope: !1703)
!1706 = !DILocation(line: 501, column: 33, scope: !1703)
!1707 = !DILocation(line: 502, column: 13, scope: !1703)
!1708 = !DILocation(line: 505, column: 18, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1659, file: !666, line: 505, column: 17)
!1710 = !DILocation(line: 505, column: 17, scope: !1659)
!1711 = !DILocation(line: 506, column: 24, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1709, file: !666, line: 505, column: 29)
!1713 = !DILocation(line: 508, column: 53, scope: !1712)
!1714 = !DILocation(line: 508, column: 33, scope: !1712)
!1715 = !DILocation(line: 509, column: 13, scope: !1712)
!1716 = !DILocation(line: 510, column: 24, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1709, file: !666, line: 509, column: 20)
!1718 = !DILocation(line: 511, column: 44, scope: !1717)
!1719 = !DILocation(line: 511, column: 30, scope: !1717)
!1720 = !DILocation(line: 511, column: 22, scope: !1717)
!1721 = !DILocation(line: 512, column: 44, scope: !1717)
!1722 = !DILocation(line: 512, column: 33, scope: !1717)
!1723 = !DILocation(line: 516, column: 20, scope: !1659)
!1724 = !DILocation(line: 517, column: 40, scope: !1659)
!1725 = !DILocation(line: 517, column: 26, scope: !1659)
!1726 = !DILocation(line: 517, column: 18, scope: !1659)
!1727 = !DILocation(line: 518, column: 40, scope: !1659)
!1728 = !DILocation(line: 518, column: 29, scope: !1659)
!1729 = !DILocation(line: 519, column: 13, scope: !1659)
!1730 = !DILocation(line: 0, scope: !1659)
!1731 = !DILocation(line: 524, column: 1, scope: !1644)
!1732 = distinct !DISubprogram(name: "topPAD_Control_GPIO", scope: !666, file: !666, line: 526, type: !1733, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665, retainedNodes: !1736)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{null, !80, !1735}
!1735 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_TOP_PAD_CONTROL_T", file: !669, line: 1212, baseType: !668)
!1736 = !{!1737, !1738, !1739, !1740}
!1737 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1732, file: !666, line: 526, type: !80)
!1738 = !DILocalVariable(name: "ePadControl", arg: 2, scope: !1732, file: !666, line: 526, type: !1735)
!1739 = !DILocalVariable(name: "no", scope: !1732, file: !666, line: 529, type: !1144)
!1740 = !DILocalVariable(name: "remainder", scope: !1732, file: !666, line: 530, type: !1144)
!1741 = !DILocation(line: 0, scope: !1732)
!1742 = !DILocation(line: 531, column: 19, scope: !1732)
!1743 = !DILocation(line: 532, column: 17, scope: !1732)
!1744 = !DILocation(line: 534, column: 9, scope: !1732)
!1745 = !DILocation(line: 536, column: 9, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !666, line: 534, column: 45)
!1747 = distinct !DILexicalBlock(scope: !1732, file: !666, line: 534, column: 9)
!1748 = !DILocation(line: 538, column: 56, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1746, file: !666, line: 536, column: 21)
!1750 = !DILocation(line: 538, column: 53, scope: !1749)
!1751 = !DILocation(line: 538, column: 47, scope: !1749)
!1752 = !DILocation(line: 539, column: 17, scope: !1749)
!1753 = !DILocation(line: 541, column: 56, scope: !1749)
!1754 = !DILocation(line: 541, column: 53, scope: !1749)
!1755 = !DILocation(line: 541, column: 47, scope: !1749)
!1756 = !DILocation(line: 542, column: 17, scope: !1749)
!1757 = !DILocation(line: 548, column: 9, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !666, line: 547, column: 51)
!1759 = distinct !DILexicalBlock(scope: !1747, file: !666, line: 547, column: 16)
!1760 = !DILocation(line: 550, column: 57, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1758, file: !666, line: 548, column: 21)
!1762 = !DILocation(line: 550, column: 54, scope: !1761)
!1763 = !DILocation(line: 550, column: 50, scope: !1761)
!1764 = !DILocation(line: 550, column: 47, scope: !1761)
!1765 = !DILocation(line: 551, column: 17, scope: !1761)
!1766 = !DILocation(line: 553, column: 57, scope: !1761)
!1767 = !DILocation(line: 553, column: 54, scope: !1761)
!1768 = !DILocation(line: 553, column: 50, scope: !1761)
!1769 = !DILocation(line: 553, column: 47, scope: !1761)
!1770 = !DILocation(line: 554, column: 17, scope: !1761)
!1771 = !DILocation(line: 560, column: 1, scope: !1732)
!1772 = distinct !DISubprogram(name: "halPinmuxTopOnPadFunc", scope: !675, file: !675, line: 85, type: !1773, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !1777)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!1775, !1776, !133}
!1775 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID", file: !6, line: 79, baseType: null)
!1776 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_PAD_NAME_T", file: !678, line: 225, baseType: !677)
!1777 = !{!1778, !1779, !1780}
!1778 = !DILocalVariable(name: "ePadIndex", arg: 1, scope: !1772, file: !675, line: 85, type: !1776)
!1779 = !DILocalVariable(name: "ucFunc", arg: 2, scope: !1772, file: !675, line: 85, type: !133)
!1780 = !DILocalVariable(name: "temp", scope: !1772, file: !675, line: 87, type: !92)
!1781 = !DILocation(line: 0, scope: !1772)
!1782 = !DILocation(line: 88, column: 5, scope: !1772)
!1783 = !DILocation(line: 91, column: 20, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1772, file: !675, line: 88, column: 24)
!1785 = !DILocation(line: 92, column: 18, scope: !1784)
!1786 = !DILocation(line: 93, column: 66, scope: !1784)
!1787 = !DILocation(line: 93, column: 63, scope: !1784)
!1788 = !DILocation(line: 93, column: 56, scope: !1784)
!1789 = !DILocation(line: 94, column: 13, scope: !1784)
!1790 = !DILocation(line: 97, column: 20, scope: !1784)
!1791 = !DILocation(line: 98, column: 18, scope: !1784)
!1792 = !DILocation(line: 99, column: 67, scope: !1784)
!1793 = !DILocation(line: 99, column: 74, scope: !1784)
!1794 = !DILocation(line: 99, column: 64, scope: !1784)
!1795 = !DILocation(line: 99, column: 56, scope: !1784)
!1796 = !DILocation(line: 100, column: 13, scope: !1784)
!1797 = !DILocation(line: 103, column: 20, scope: !1784)
!1798 = !DILocation(line: 104, column: 18, scope: !1784)
!1799 = !DILocation(line: 105, column: 67, scope: !1784)
!1800 = !DILocation(line: 105, column: 74, scope: !1784)
!1801 = !DILocation(line: 105, column: 64, scope: !1784)
!1802 = !DILocation(line: 105, column: 56, scope: !1784)
!1803 = !DILocation(line: 106, column: 13, scope: !1784)
!1804 = !DILocation(line: 109, column: 20, scope: !1784)
!1805 = !DILocation(line: 110, column: 18, scope: !1784)
!1806 = !DILocation(line: 111, column: 67, scope: !1784)
!1807 = !DILocation(line: 111, column: 74, scope: !1784)
!1808 = !DILocation(line: 111, column: 64, scope: !1784)
!1809 = !DILocation(line: 111, column: 56, scope: !1784)
!1810 = !DILocation(line: 112, column: 13, scope: !1784)
!1811 = !DILocation(line: 115, column: 20, scope: !1784)
!1812 = !DILocation(line: 116, column: 18, scope: !1784)
!1813 = !DILocation(line: 117, column: 67, scope: !1784)
!1814 = !DILocation(line: 117, column: 74, scope: !1784)
!1815 = !DILocation(line: 117, column: 64, scope: !1784)
!1816 = !DILocation(line: 117, column: 56, scope: !1784)
!1817 = !DILocation(line: 118, column: 13, scope: !1784)
!1818 = !DILocation(line: 121, column: 20, scope: !1784)
!1819 = !DILocation(line: 122, column: 18, scope: !1784)
!1820 = !DILocation(line: 123, column: 67, scope: !1784)
!1821 = !DILocation(line: 123, column: 74, scope: !1784)
!1822 = !DILocation(line: 123, column: 64, scope: !1784)
!1823 = !DILocation(line: 123, column: 56, scope: !1784)
!1824 = !DILocation(line: 124, column: 13, scope: !1784)
!1825 = !DILocation(line: 127, column: 20, scope: !1784)
!1826 = !DILocation(line: 128, column: 18, scope: !1784)
!1827 = !DILocation(line: 129, column: 67, scope: !1784)
!1828 = !DILocation(line: 129, column: 74, scope: !1784)
!1829 = !DILocation(line: 129, column: 64, scope: !1784)
!1830 = !DILocation(line: 129, column: 56, scope: !1784)
!1831 = !DILocation(line: 130, column: 13, scope: !1784)
!1832 = !DILocation(line: 133, column: 20, scope: !1784)
!1833 = !DILocation(line: 134, column: 18, scope: !1784)
!1834 = !DILocation(line: 135, column: 67, scope: !1784)
!1835 = !DILocation(line: 135, column: 74, scope: !1784)
!1836 = !DILocation(line: 135, column: 64, scope: !1784)
!1837 = !DILocation(line: 135, column: 56, scope: !1784)
!1838 = !DILocation(line: 136, column: 13, scope: !1784)
!1839 = !DILocation(line: 139, column: 20, scope: !1784)
!1840 = !DILocation(line: 140, column: 18, scope: !1784)
!1841 = !DILocation(line: 141, column: 67, scope: !1784)
!1842 = !DILocation(line: 141, column: 64, scope: !1784)
!1843 = !DILocation(line: 141, column: 56, scope: !1784)
!1844 = !DILocation(line: 142, column: 13, scope: !1784)
!1845 = !DILocation(line: 145, column: 20, scope: !1784)
!1846 = !DILocation(line: 146, column: 18, scope: !1784)
!1847 = !DILocation(line: 147, column: 67, scope: !1784)
!1848 = !DILocation(line: 147, column: 74, scope: !1784)
!1849 = !DILocation(line: 147, column: 64, scope: !1784)
!1850 = !DILocation(line: 147, column: 56, scope: !1784)
!1851 = !DILocation(line: 148, column: 13, scope: !1784)
!1852 = !DILocation(line: 151, column: 20, scope: !1784)
!1853 = !DILocation(line: 152, column: 18, scope: !1784)
!1854 = !DILocation(line: 153, column: 67, scope: !1784)
!1855 = !DILocation(line: 153, column: 74, scope: !1784)
!1856 = !DILocation(line: 153, column: 64, scope: !1784)
!1857 = !DILocation(line: 153, column: 56, scope: !1784)
!1858 = !DILocation(line: 154, column: 13, scope: !1784)
!1859 = !DILocation(line: 157, column: 20, scope: !1784)
!1860 = !DILocation(line: 158, column: 18, scope: !1784)
!1861 = !DILocation(line: 159, column: 67, scope: !1784)
!1862 = !DILocation(line: 159, column: 74, scope: !1784)
!1863 = !DILocation(line: 159, column: 64, scope: !1784)
!1864 = !DILocation(line: 159, column: 56, scope: !1784)
!1865 = !DILocation(line: 160, column: 29, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1784, file: !675, line: 160, column: 17)
!1867 = !DILocation(line: 161, column: 17, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1866, file: !675, line: 160, column: 60)
!1869 = !DILocation(line: 162, column: 13, scope: !1868)
!1870 = !DILocation(line: 166, column: 20, scope: !1784)
!1871 = !DILocation(line: 167, column: 18, scope: !1784)
!1872 = !DILocation(line: 168, column: 67, scope: !1784)
!1873 = !DILocation(line: 168, column: 74, scope: !1784)
!1874 = !DILocation(line: 168, column: 64, scope: !1784)
!1875 = !DILocation(line: 168, column: 56, scope: !1784)
!1876 = !DILocation(line: 169, column: 29, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1784, file: !675, line: 169, column: 17)
!1878 = !DILocation(line: 170, column: 17, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1877, file: !675, line: 169, column: 45)
!1880 = !DILocation(line: 171, column: 13, scope: !1879)
!1881 = !DILocation(line: 175, column: 20, scope: !1784)
!1882 = !DILocation(line: 176, column: 18, scope: !1784)
!1883 = !DILocation(line: 177, column: 67, scope: !1784)
!1884 = !DILocation(line: 177, column: 74, scope: !1784)
!1885 = !DILocation(line: 177, column: 64, scope: !1784)
!1886 = !DILocation(line: 177, column: 56, scope: !1784)
!1887 = !DILocation(line: 178, column: 19, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1784, file: !675, line: 178, column: 17)
!1889 = !DILocation(line: 178, column: 17, scope: !1784)
!1890 = !DILocation(line: 179, column: 17, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1888, file: !675, line: 178, column: 30)
!1892 = !DILocation(line: 180, column: 13, scope: !1891)
!1893 = !DILocation(line: 184, column: 20, scope: !1784)
!1894 = !DILocation(line: 185, column: 18, scope: !1784)
!1895 = !DILocation(line: 186, column: 67, scope: !1784)
!1896 = !DILocation(line: 186, column: 74, scope: !1784)
!1897 = !DILocation(line: 186, column: 64, scope: !1784)
!1898 = !DILocation(line: 186, column: 56, scope: !1784)
!1899 = !DILocation(line: 187, column: 29, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1784, file: !675, line: 187, column: 17)
!1901 = !DILocation(line: 188, column: 17, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1900, file: !675, line: 187, column: 45)
!1903 = !DILocation(line: 189, column: 13, scope: !1902)
!1904 = !DILocation(line: 193, column: 20, scope: !1784)
!1905 = !DILocation(line: 194, column: 18, scope: !1784)
!1906 = !DILocation(line: 195, column: 67, scope: !1784)
!1907 = !DILocation(line: 195, column: 74, scope: !1784)
!1908 = !DILocation(line: 195, column: 64, scope: !1784)
!1909 = !DILocation(line: 195, column: 56, scope: !1784)
!1910 = !DILocation(line: 196, column: 29, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1784, file: !675, line: 196, column: 17)
!1912 = !DILocation(line: 197, column: 17, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1911, file: !675, line: 196, column: 45)
!1914 = !DILocation(line: 198, column: 13, scope: !1913)
!1915 = !DILocation(line: 202, column: 20, scope: !1784)
!1916 = !DILocation(line: 203, column: 18, scope: !1784)
!1917 = !DILocation(line: 204, column: 67, scope: !1784)
!1918 = !DILocation(line: 204, column: 64, scope: !1784)
!1919 = !DILocation(line: 204, column: 56, scope: !1784)
!1920 = !DILocation(line: 205, column: 29, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1784, file: !675, line: 205, column: 17)
!1922 = !DILocation(line: 206, column: 17, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1921, file: !675, line: 205, column: 45)
!1924 = !DILocation(line: 207, column: 13, scope: !1923)
!1925 = !DILocation(line: 211, column: 20, scope: !1784)
!1926 = !DILocation(line: 212, column: 18, scope: !1784)
!1927 = !DILocation(line: 213, column: 67, scope: !1784)
!1928 = !DILocation(line: 213, column: 74, scope: !1784)
!1929 = !DILocation(line: 213, column: 64, scope: !1784)
!1930 = !DILocation(line: 213, column: 56, scope: !1784)
!1931 = !DILocation(line: 214, column: 13, scope: !1784)
!1932 = !DILocation(line: 217, column: 20, scope: !1784)
!1933 = !DILocation(line: 218, column: 18, scope: !1784)
!1934 = !DILocation(line: 219, column: 67, scope: !1784)
!1935 = !DILocation(line: 219, column: 74, scope: !1784)
!1936 = !DILocation(line: 219, column: 64, scope: !1784)
!1937 = !DILocation(line: 219, column: 56, scope: !1784)
!1938 = !DILocation(line: 220, column: 13, scope: !1784)
!1939 = !DILocation(line: 223, column: 20, scope: !1784)
!1940 = !DILocation(line: 224, column: 18, scope: !1784)
!1941 = !DILocation(line: 225, column: 67, scope: !1784)
!1942 = !DILocation(line: 225, column: 74, scope: !1784)
!1943 = !DILocation(line: 225, column: 64, scope: !1784)
!1944 = !DILocation(line: 225, column: 56, scope: !1784)
!1945 = !DILocation(line: 226, column: 13, scope: !1784)
!1946 = !DILocation(line: 229, column: 20, scope: !1784)
!1947 = !DILocation(line: 230, column: 18, scope: !1784)
!1948 = !DILocation(line: 231, column: 67, scope: !1784)
!1949 = !DILocation(line: 231, column: 74, scope: !1784)
!1950 = !DILocation(line: 231, column: 64, scope: !1784)
!1951 = !DILocation(line: 231, column: 56, scope: !1784)
!1952 = !DILocation(line: 232, column: 13, scope: !1784)
!1953 = !DILocation(line: 235, column: 20, scope: !1784)
!1954 = !DILocation(line: 236, column: 18, scope: !1784)
!1955 = !DILocation(line: 237, column: 66, scope: !1784)
!1956 = !DILocation(line: 237, column: 73, scope: !1784)
!1957 = !DILocation(line: 237, column: 63, scope: !1784)
!1958 = !DILocation(line: 237, column: 56, scope: !1784)
!1959 = !DILocation(line: 238, column: 13, scope: !1784)
!1960 = !DILocation(line: 241, column: 20, scope: !1784)
!1961 = !DILocation(line: 242, column: 18, scope: !1784)
!1962 = !DILocation(line: 243, column: 67, scope: !1784)
!1963 = !DILocation(line: 243, column: 74, scope: !1784)
!1964 = !DILocation(line: 243, column: 64, scope: !1784)
!1965 = !DILocation(line: 243, column: 56, scope: !1784)
!1966 = !DILocation(line: 244, column: 13, scope: !1784)
!1967 = !DILocation(line: 247, column: 20, scope: !1784)
!1968 = !DILocation(line: 248, column: 18, scope: !1784)
!1969 = !DILocation(line: 249, column: 67, scope: !1784)
!1970 = !DILocation(line: 249, column: 74, scope: !1784)
!1971 = !DILocation(line: 249, column: 64, scope: !1784)
!1972 = !DILocation(line: 249, column: 56, scope: !1784)
!1973 = !DILocation(line: 250, column: 13, scope: !1784)
!1974 = !DILocation(line: 253, column: 20, scope: !1784)
!1975 = !DILocation(line: 254, column: 18, scope: !1784)
!1976 = !DILocation(line: 255, column: 67, scope: !1784)
!1977 = !DILocation(line: 255, column: 74, scope: !1784)
!1978 = !DILocation(line: 255, column: 64, scope: !1784)
!1979 = !DILocation(line: 255, column: 56, scope: !1784)
!1980 = !DILocation(line: 256, column: 13, scope: !1784)
!1981 = !DILocation(line: 259, column: 20, scope: !1784)
!1982 = !DILocation(line: 260, column: 18, scope: !1784)
!1983 = !DILocation(line: 261, column: 67, scope: !1784)
!1984 = !DILocation(line: 261, column: 74, scope: !1784)
!1985 = !DILocation(line: 261, column: 64, scope: !1784)
!1986 = !DILocation(line: 261, column: 56, scope: !1784)
!1987 = !DILocation(line: 262, column: 13, scope: !1784)
!1988 = !DILocation(line: 265, column: 20, scope: !1784)
!1989 = !DILocation(line: 266, column: 18, scope: !1784)
!1990 = !DILocation(line: 267, column: 67, scope: !1784)
!1991 = !DILocation(line: 267, column: 74, scope: !1784)
!1992 = !DILocation(line: 267, column: 64, scope: !1784)
!1993 = !DILocation(line: 267, column: 56, scope: !1784)
!1994 = !DILocation(line: 268, column: 13, scope: !1784)
!1995 = !DILocation(line: 271, column: 20, scope: !1784)
!1996 = !DILocation(line: 272, column: 18, scope: !1784)
!1997 = !DILocation(line: 273, column: 67, scope: !1784)
!1998 = !DILocation(line: 273, column: 74, scope: !1784)
!1999 = !DILocation(line: 273, column: 64, scope: !1784)
!2000 = !DILocation(line: 273, column: 56, scope: !1784)
!2001 = !DILocation(line: 274, column: 13, scope: !1784)
!2002 = !DILocation(line: 278, column: 1, scope: !1772)
!2003 = distinct !DISubprogram(name: "NVIC_SetupVectorTable", scope: !756, file: !756, line: 47, type: !2004, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !755, retainedNodes: !2006)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{null, !92}
!2006 = !{!2007}
!2007 = !DILocalVariable(name: "addr", arg: 1, scope: !2003, file: !756, line: 47, type: !92)
!2008 = !DILocation(line: 0, scope: !2003)
!2009 = !DILocation(line: 49, column: 15, scope: !2003)
!2010 = !DILocation(line: 51, column: 5, scope: !2003)
!2011 = !{i64 2624}
!2012 = !DILocation(line: 52, column: 5, scope: !2003)
!2013 = !{i64 2651}
!2014 = !DILocation(line: 53, column: 1, scope: !2003)
!2015 = distinct !DISubprogram(name: "NVIC_SWInt", scope: !756, file: !756, line: 56, type: !2016, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !755, retainedNodes: !2018)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{null, !7}
!2018 = !{!2019}
!2019 = !DILocalVariable(name: "source", arg: 1, scope: !2015, file: !756, line: 56, type: !7)
!2020 = !DILocation(line: 0, scope: !2015)
!2021 = !DILocation(line: 58, column: 16, scope: !2015)
!2022 = !DILocation(line: 59, column: 1, scope: !2015)
!2023 = distinct !DISubprogram(name: "save_and_set_interrupt_mask", scope: !756, file: !756, line: 61, type: !2024, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !755, retainedNodes: !2026)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!92}
!2026 = !{!2027}
!2027 = !DILocalVariable(name: "mask", scope: !2023, file: !756, line: 63, type: !92)
!2028 = !DILocation(line: 470, column: 3, scope: !2029, inlinedAt: !2033)
!2029 = distinct !DISubprogram(name: "__get_PRIMASK", scope: !2030, file: !2030, line: 466, type: !2024, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !755, retainedNodes: !2031)
!2030 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmFunc.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
!2031 = !{!2032}
!2032 = !DILocalVariable(name: "result", scope: !2029, file: !2030, line: 468, type: !92)
!2033 = distinct !DILocation(line: 64, column: 5, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2023, file: !756, line: 64, column: 5)
!2035 = !{i64 302169}
!2036 = !DILocation(line: 0, scope: !2029, inlinedAt: !2033)
!2037 = !DILocation(line: 0, scope: !2023)
!2038 = !DILocation(line: 330, column: 3, scope: !2039, inlinedAt: !2040)
!2039 = distinct !DISubprogram(name: "__disable_irq", scope: !2030, file: !2030, line: 328, type: !75, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !755, retainedNodes: !1130)
!2040 = distinct !DILocation(line: 64, column: 5, scope: !2034)
!2041 = !{i64 298833}
!2042 = !DILocation(line: 65, column: 5, scope: !2023)
!2043 = distinct !DISubprogram(name: "restore_interrupt_mask", scope: !756, file: !756, line: 68, type: !2004, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !755, retainedNodes: !2044)
!2044 = !{!2045}
!2045 = !DILocalVariable(name: "mask", arg: 1, scope: !2043, file: !756, line: 68, type: !92)
!2046 = !DILocation(line: 0, scope: !2043)
!2047 = !DILocalVariable(name: "priMask", arg: 1, scope: !2048, file: !2030, line: 481, type: !92)
!2048 = distinct !DISubprogram(name: "__set_PRIMASK", scope: !2030, file: !2030, line: 481, type: !2004, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !755, retainedNodes: !2049)
!2049 = !{!2047}
!2050 = !DILocation(line: 0, scope: !2048, inlinedAt: !2051)
!2051 = distinct !DILocation(line: 70, column: 5, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2043, file: !756, line: 70, column: 5)
!2053 = !DILocation(line: 483, column: 3, scope: !2048, inlinedAt: !2051)
!2054 = !{i64 302487}
!2055 = !DILocation(line: 71, column: 1, scope: !2043)
!2056 = distinct !DISubprogram(name: "pinmux_config", scope: !801, file: !801, line: 54, type: !2057, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !2059)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!172, !906, !92}
!2059 = !{!2060, !2061, !2062}
!2060 = !DILocalVariable(name: "gpio_index", arg: 1, scope: !2056, file: !801, line: 54, type: !906)
!2061 = !DILocalVariable(name: "function", arg: 2, scope: !2056, file: !801, line: 54, type: !92)
!2062 = !DILocalVariable(name: "ePadIndex", scope: !2056, file: !801, line: 56, type: !1776)
!2063 = !DILocation(line: 0, scope: !2056)
!2064 = !DILocation(line: 60, column: 5, scope: !2056)
!2065 = !DILocation(line: 205, column: 38, scope: !2056)
!2066 = !DILocation(line: 205, column: 5, scope: !2056)
!2067 = !DILocation(line: 207, column: 5, scope: !2056)
!2068 = !DILocation(line: 208, column: 1, scope: !2056)
!2069 = distinct !DISubprogram(name: "get_current_count", scope: !835, file: !835, line: 56, type: !2024, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !834, retainedNodes: !1130)
!2070 = !DILocation(line: 58, column: 12, scope: !2069)
!2071 = !DILocation(line: 58, column: 5, scope: !2069)
!2072 = distinct !DISubprogram(name: "delay_time", scope: !835, file: !835, line: 62, type: !988, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !834, retainedNodes: !2073)
!2073 = !{!2074, !2075, !2076}
!2074 = !DILocalVariable(name: "count", arg: 1, scope: !2072, file: !835, line: 62, type: !60)
!2075 = !DILocalVariable(name: "end_count", scope: !2072, file: !835, line: 64, type: !60)
!2076 = !DILocalVariable(name: "current", scope: !2072, file: !835, line: 64, type: !60)
!2077 = !DILocation(line: 0, scope: !2072)
!2078 = !DILocation(line: 66, column: 17, scope: !2072)
!2079 = !DILocation(line: 66, column: 37, scope: !2072)
!2080 = !DILocation(line: 66, column: 45, scope: !2072)
!2081 = !DILocation(line: 67, column: 15, scope: !2072)
!2082 = !DILocation(line: 68, column: 12, scope: !2072)
!2083 = !DILocation(line: 68, column: 5, scope: !2072)
!2084 = !DILocation(line: 69, column: 19, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2072, file: !835, line: 68, column: 45)
!2086 = distinct !{!2086, !2083, !2087}
!2087 = !DILocation(line: 70, column: 5, scope: !2072)
!2088 = !DILocation(line: 72, column: 1, scope: !2072)
!2089 = distinct !DISubprogram(name: "delay_time_for_gpt4", scope: !835, file: !835, line: 75, type: !988, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !834, retainedNodes: !2090)
!2090 = !{!2091, !2092, !2093}
!2091 = !DILocalVariable(name: "count", arg: 1, scope: !2089, file: !835, line: 75, type: !60)
!2092 = !DILocalVariable(name: "end_count", scope: !2089, file: !835, line: 77, type: !60)
!2093 = !DILocalVariable(name: "current", scope: !2089, file: !835, line: 77, type: !60)
!2094 = !DILocation(line: 0, scope: !2089)
!2095 = !DILocation(line: 79, column: 17, scope: !2089)
!2096 = !DILocation(line: 79, column: 42, scope: !2089)
!2097 = !DILocation(line: 79, column: 50, scope: !2089)
!2098 = !DILocation(line: 80, column: 15, scope: !2089)
!2099 = !DILocation(line: 81, column: 12, scope: !2089)
!2100 = !DILocation(line: 81, column: 5, scope: !2089)
!2101 = !DILocation(line: 82, column: 19, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2089, file: !835, line: 81, column: 45)
!2103 = distinct !{!2103, !2100, !2104}
!2104 = !DILocation(line: 83, column: 5, scope: !2089)
!2105 = !DILocation(line: 85, column: 1, scope: !2089)
!2106 = distinct !DISubprogram(name: "get_current_gpt4_count", scope: !835, file: !835, line: 95, type: !2024, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !834, retainedNodes: !1130)
!2107 = !DILocation(line: 97, column: 13, scope: !2106)
!2108 = !DILocation(line: 97, column: 5, scope: !2106)
!2109 = distinct !DISubprogram(name: "delay_ms", scope: !835, file: !835, line: 107, type: !2004, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !834, retainedNodes: !2110)
!2110 = !{!2111, !2112}
!2111 = !DILocalVariable(name: "ms", arg: 1, scope: !2109, file: !835, line: 107, type: !92)
!2112 = !DILocalVariable(name: "count", scope: !2109, file: !835, line: 109, type: !92)
!2113 = !DILocation(line: 0, scope: !2109)
!2114 = !DILocation(line: 111, column: 17, scope: !2109)
!2115 = !DILocation(line: 112, column: 17, scope: !2109)
!2116 = !DILocation(line: 112, column: 23, scope: !2109)
!2117 = !DILocation(line: 112, column: 11, scope: !2109)
!2118 = !DILocation(line: 113, column: 17, scope: !2109)
!2119 = !DILocation(line: 113, column: 23, scope: !2109)
!2120 = !DILocation(line: 113, column: 11, scope: !2109)
!2121 = !DILocation(line: 114, column: 17, scope: !2109)
!2122 = !DILocation(line: 114, column: 23, scope: !2109)
!2123 = !DILocation(line: 114, column: 11, scope: !2109)
!2124 = !DILocation(line: 115, column: 5, scope: !2109)
!2125 = !DILocation(line: 116, column: 1, scope: !2109)
!2126 = distinct !DISubprogram(name: "delay_us", scope: !835, file: !835, line: 120, type: !2004, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !834, retainedNodes: !2127)
!2127 = !{!2128, !2129, !2130}
!2128 = !DILocalVariable(name: "us", arg: 1, scope: !2126, file: !835, line: 120, type: !92)
!2129 = !DILocalVariable(name: "count", scope: !2126, file: !835, line: 122, type: !92)
!2130 = !DILocalVariable(name: "ticks_per_us", scope: !2126, file: !835, line: 123, type: !92)
!2131 = !DILocation(line: 0, scope: !2126)
!2132 = !DILocation(line: 125, column: 20, scope: !2126)
!2133 = !DILocation(line: 125, column: 39, scope: !2126)
!2134 = !DILocation(line: 126, column: 26, scope: !2126)
!2135 = !DILocation(line: 128, column: 5, scope: !2126)
!2136 = !DILocation(line: 129, column: 1, scope: !2126)
!2137 = distinct !DISubprogram(name: "drvTMR_init", scope: !835, file: !835, line: 133, type: !2138, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !834, retainedNodes: !2140)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{null, !92, !92, !156, !74}
!2140 = !{!2141, !2142, !2143, !2144}
!2141 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2137, file: !835, line: 133, type: !92)
!2142 = !DILocalVariable(name: "countValue", arg: 2, scope: !2137, file: !835, line: 133, type: !92)
!2143 = !DILocalVariable(name: "autoRepeat", arg: 3, scope: !2137, file: !835, line: 133, type: !156)
!2144 = !DILocalVariable(name: "TMR_Callback", arg: 4, scope: !2137, file: !835, line: 133, type: !74)
!2145 = !DILocation(line: 0, scope: !2137)
!2146 = !DILocation(line: 136, column: 5, scope: !2137)
!2147 = !DILocation(line: 138, column: 18, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2137, file: !835, line: 138, column: 9)
!2149 = !DILocation(line: 138, column: 9, scope: !2137)
!2150 = !DILocation(line: 139, column: 30, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2148, file: !835, line: 138, column: 27)
!2152 = !DILocation(line: 141, column: 5, scope: !2151)
!2153 = !DILocation(line: 142, column: 30, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2148, file: !835, line: 141, column: 12)
!2155 = !DILocation(line: 0, scope: !2148)
!2156 = !DILocation(line: 146, column: 5, scope: !2137)
!2157 = !DILocation(line: 147, column: 1, scope: !2137)
!2158 = distinct !DISubprogram(name: "TMR_Start", scope: !835, file: !835, line: 149, type: !2004, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !834, retainedNodes: !2159)
!2159 = !{!2160}
!2160 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2158, file: !835, line: 149, type: !92)
!2161 = !DILocation(line: 0, scope: !2158)
!2162 = !DILocation(line: 151, column: 5, scope: !2158)
!2163 = !DILocation(line: 152, column: 1, scope: !2158)
!2164 = distinct !DISubprogram(name: "TMR_Stop", scope: !835, file: !835, line: 154, type: !2004, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !834, retainedNodes: !2165)
!2165 = !{!2166}
!2166 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2164, file: !835, line: 154, type: !92)
!2167 = !DILocation(line: 0, scope: !2164)
!2168 = !DILocation(line: 156, column: 5, scope: !2164)
!2169 = !DILocation(line: 157, column: 1, scope: !2164)
!2170 = distinct !DISubprogram(name: "drvGPT2Init", scope: !835, file: !835, line: 160, type: !75, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !834, retainedNodes: !1130)
!2171 = !DILocation(line: 162, column: 5, scope: !2170)
!2172 = !DILocation(line: 163, column: 1, scope: !2170)
!2173 = distinct !DISubprogram(name: "drvGPT4Init", scope: !835, file: !835, line: 165, type: !75, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !834, retainedNodes: !1130)
!2174 = !DILocation(line: 167, column: 5, scope: !2173)
!2175 = !DILocation(line: 168, column: 1, scope: !2173)
!2176 = distinct !DISubprogram(name: "clear_TMR_INT_status_bit", scope: !835, file: !835, line: 170, type: !2004, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !834, retainedNodes: !2177)
!2177 = !{!2178}
!2178 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2176, file: !835, line: 170, type: !92)
!2179 = !DILocation(line: 0, scope: !2176)
!2180 = !DILocation(line: 172, column: 9, scope: !2176)
!2181 = !DILocation(line: 177, column: 5, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !835, line: 175, column: 27)
!2183 = distinct !DILexicalBlock(scope: !2176, file: !835, line: 175, column: 9)
!2184 = !DILocation(line: 178, column: 1, scope: !2176)
!2185 = distinct !DISubprogram(name: "top_xtal_init", scope: !86, file: !86, line: 52, type: !75, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2186)
!2186 = !{!2187, !2188}
!2187 = !DILocalVariable(name: "u4RegVal", scope: !2185, file: !86, line: 54, type: !92)
!2188 = !DILocalVariable(name: "reg", scope: !2185, file: !86, line: 55, type: !553)
!2189 = !DILocation(line: 0, scope: !2185)
!2190 = !DILocation(line: 55, column: 25, scope: !2185)
!2191 = !DILocation(line: 56, column: 16, scope: !2185)
!2192 = !DILocation(line: 56, column: 23, scope: !2185)
!2193 = !DILocation(line: 58, column: 16, scope: !2185)
!2194 = !DILocation(line: 61, column: 5, scope: !2185)
!2195 = !DILocation(line: 59, column: 14, scope: !2185)
!2196 = !DILocation(line: 0, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2185, file: !86, line: 61, column: 18)
!2198 = !DILocation(line: 87, column: 38, scope: !2185)
!2199 = !DILocation(line: 88, column: 21, scope: !2185)
!2200 = !DILocation(line: 88, column: 19, scope: !2185)
!2201 = !DILocation(line: 89, column: 5, scope: !2185)
!2202 = !DILocation(line: 90, column: 17, scope: !2185)
!2203 = !DILocation(line: 90, column: 33, scope: !2185)
!2204 = !DILocation(line: 90, column: 5, scope: !2185)
!2205 = !DILocation(line: 91, column: 1, scope: !2185)
!2206 = distinct !DISubprogram(name: "top_xtal_freq_get", scope: !86, file: !86, line: 98, type: !2024, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1130)
!2207 = !DILocation(line: 100, column: 12, scope: !2206)
!2208 = !DILocation(line: 100, column: 5, scope: !2206)
!2209 = distinct !DISubprogram(name: "top_mcu_freq_get", scope: !86, file: !86, line: 108, type: !2024, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1130)
!2210 = !DILocation(line: 110, column: 12, scope: !2209)
!2211 = !DILocation(line: 110, column: 5, scope: !2209)
!2212 = distinct !DISubprogram(name: "cmnPLL1ON", scope: !86, file: !86, line: 118, type: !75, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2213)
!2213 = !{!2214, !2215}
!2214 = !DILocalVariable(name: "reg", scope: !2212, file: !86, line: 120, type: !91)
!2215 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2212, file: !86, line: 121, type: !90)
!2216 = !DILocation(line: 120, column: 5, scope: !2212)
!2217 = !DILocation(line: 120, column: 23, scope: !2212)
!2218 = !DILocation(line: 0, scope: !2212)
!2219 = !DILocation(line: 123, column: 11, scope: !2212)
!2220 = !DILocation(line: 123, column: 9, scope: !2212)
!2221 = !DILocation(line: 124, column: 12, scope: !2212)
!2222 = !DILocation(line: 124, column: 16, scope: !2212)
!2223 = !DILocation(line: 124, column: 39, scope: !2212)
!2224 = !DILocation(line: 124, column: 9, scope: !2212)
!2225 = !DILocation(line: 126, column: 9, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2212, file: !86, line: 126, column: 9)
!2227 = !DILocation(line: 126, column: 13, scope: !2226)
!2228 = !DILocation(line: 126, column: 9, scope: !2212)
!2229 = !DILocation(line: 127, column: 15, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2226, file: !86, line: 126, column: 47)
!2231 = !DILocation(line: 127, column: 13, scope: !2230)
!2232 = !DILocation(line: 128, column: 15, scope: !2230)
!2233 = !DILocation(line: 128, column: 19, scope: !2230)
!2234 = !DILocation(line: 128, column: 13, scope: !2230)
!2235 = !DILocation(line: 129, column: 15, scope: !2230)
!2236 = !DILocation(line: 129, column: 19, scope: !2230)
!2237 = !DILocation(line: 129, column: 13, scope: !2230)
!2238 = !DILocation(line: 130, column: 46, scope: !2230)
!2239 = !DILocation(line: 130, column: 9, scope: !2230)
!2240 = !DILocation(line: 132, column: 9, scope: !2230)
!2241 = !DILocation(line: 133, column: 19, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2230, file: !86, line: 132, column: 12)
!2243 = !DILocation(line: 133, column: 17, scope: !2242)
!2244 = !DILocation(line: 134, column: 19, scope: !2242)
!2245 = !DILocation(line: 134, column: 23, scope: !2242)
!2246 = !DILocation(line: 134, column: 17, scope: !2242)
!2247 = !DILocation(line: 135, column: 19, scope: !2230)
!2248 = !DILocation(line: 135, column: 18, scope: !2230)
!2249 = !DILocation(line: 135, column: 9, scope: !2242)
!2250 = distinct !{!2250, !2240, !2251}
!2251 = !DILocation(line: 135, column: 22, scope: !2230)
!2252 = !DILocation(line: 138, column: 1, scope: !2212)
!2253 = distinct !DISubprogram(name: "cmnReadRegister32", scope: !2254, file: !2254, line: 176, type: !2255, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2259)
!2254 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/system_mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/md5_get_hash/GCC")
!2255 = !DISubroutineType(types: !2256)
!2256 = !{!92, !2257}
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 32)
!2258 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2259 = !{!2260}
!2260 = !DILocalVariable(name: "Register", arg: 1, scope: !2253, file: !2254, line: 176, type: !2257)
!2261 = !DILocation(line: 0, scope: !2253)
!2262 = !DILocation(line: 178, column: 13, scope: !2253)
!2263 = !DILocation(line: 178, column: 12, scope: !2253)
!2264 = !DILocation(line: 178, column: 5, scope: !2253)
!2265 = distinct !DISubprogram(name: "cmnWriteRegister32", scope: !2254, file: !2254, line: 171, type: !2266, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2268)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{null, !2257, !92}
!2268 = !{!2269, !2270}
!2269 = !DILocalVariable(name: "Register", arg: 1, scope: !2265, file: !2254, line: 171, type: !2257)
!2270 = !DILocalVariable(name: "Value", arg: 2, scope: !2265, file: !2254, line: 171, type: !92)
!2271 = !DILocation(line: 0, scope: !2265)
!2272 = !DILocation(line: 173, column: 6, scope: !2265)
!2273 = !DILocation(line: 173, column: 36, scope: !2265)
!2274 = !DILocation(line: 174, column: 1, scope: !2265)
!2275 = distinct !DISubprogram(name: "cmnPLL1ON_PLL2ON", scope: !86, file: !86, line: 145, type: !2276, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2278)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{null, !150}
!2278 = !{!2279, !2280, !2281}
!2279 = !DILocalVariable(name: "fg960M", arg: 1, scope: !2275, file: !86, line: 145, type: !150)
!2280 = !DILocalVariable(name: "reg", scope: !2275, file: !86, line: 147, type: !91)
!2281 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2275, file: !86, line: 148, type: !90)
!2282 = !DILocation(line: 0, scope: !2275)
!2283 = !DILocation(line: 147, column: 5, scope: !2275)
!2284 = !DILocation(line: 147, column: 23, scope: !2275)
!2285 = !DILocation(line: 150, column: 11, scope: !2275)
!2286 = !DILocation(line: 150, column: 9, scope: !2275)
!2287 = !DILocation(line: 151, column: 12, scope: !2275)
!2288 = !DILocation(line: 151, column: 16, scope: !2275)
!2289 = !DILocation(line: 151, column: 39, scope: !2275)
!2290 = !DILocation(line: 151, column: 9, scope: !2275)
!2291 = !DILocation(line: 153, column: 9, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2275, file: !86, line: 153, column: 9)
!2293 = !DILocation(line: 153, column: 13, scope: !2292)
!2294 = !DILocation(line: 153, column: 9, scope: !2275)
!2295 = !DILocation(line: 154, column: 15, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2292, file: !86, line: 153, column: 45)
!2297 = !DILocation(line: 154, column: 13, scope: !2296)
!2298 = !DILocation(line: 155, column: 15, scope: !2296)
!2299 = !DILocation(line: 155, column: 19, scope: !2296)
!2300 = !DILocation(line: 155, column: 13, scope: !2296)
!2301 = !DILocation(line: 156, column: 15, scope: !2296)
!2302 = !DILocation(line: 156, column: 19, scope: !2296)
!2303 = !DILocation(line: 156, column: 13, scope: !2296)
!2304 = !DILocation(line: 157, column: 15, scope: !2296)
!2305 = !DILocation(line: 157, column: 13, scope: !2296)
!2306 = !DILocation(line: 158, column: 46, scope: !2296)
!2307 = !DILocation(line: 158, column: 9, scope: !2296)
!2308 = !DILocation(line: 160, column: 15, scope: !2296)
!2309 = !DILocation(line: 160, column: 13, scope: !2296)
!2310 = !DILocation(line: 161, column: 15, scope: !2296)
!2311 = !DILocation(line: 161, column: 19, scope: !2296)
!2312 = !DILocation(line: 161, column: 13, scope: !2296)
!2313 = !DILocation(line: 162, column: 15, scope: !2296)
!2314 = !DILocation(line: 162, column: 19, scope: !2296)
!2315 = !DILocation(line: 162, column: 13, scope: !2296)
!2316 = !DILocation(line: 163, column: 15, scope: !2296)
!2317 = !DILocation(line: 163, column: 19, scope: !2296)
!2318 = !DILocation(line: 163, column: 13, scope: !2296)
!2319 = !DILocation(line: 164, column: 46, scope: !2296)
!2320 = !DILocation(line: 164, column: 9, scope: !2296)
!2321 = !DILocation(line: 166, column: 9, scope: !2296)
!2322 = !DILocation(line: 167, column: 19, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2296, file: !86, line: 166, column: 12)
!2324 = !DILocation(line: 167, column: 17, scope: !2323)
!2325 = !DILocation(line: 168, column: 19, scope: !2323)
!2326 = !DILocation(line: 168, column: 23, scope: !2323)
!2327 = !DILocation(line: 168, column: 17, scope: !2323)
!2328 = !DILocation(line: 169, column: 19, scope: !2296)
!2329 = !DILocation(line: 169, column: 18, scope: !2296)
!2330 = !DILocation(line: 169, column: 9, scope: !2323)
!2331 = distinct !{!2331, !2321, !2332}
!2332 = !DILocation(line: 169, column: 22, scope: !2296)
!2333 = !DILocation(line: 171, column: 15, scope: !2296)
!2334 = !DILocation(line: 171, column: 13, scope: !2296)
!2335 = !DILocation(line: 172, column: 15, scope: !2296)
!2336 = !DILocation(line: 172, column: 19, scope: !2296)
!2337 = !DILocation(line: 172, column: 13, scope: !2296)
!2338 = !DILocation(line: 173, column: 15, scope: !2296)
!2339 = !DILocation(line: 173, column: 19, scope: !2296)
!2340 = !DILocation(line: 173, column: 13, scope: !2296)
!2341 = !DILocation(line: 174, column: 5, scope: !2296)
!2342 = !DILocation(line: 176, column: 11, scope: !2275)
!2343 = !DILocation(line: 176, column: 9, scope: !2275)
!2344 = !DILocation(line: 177, column: 9, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2275, file: !86, line: 177, column: 9)
!2346 = !DILocation(line: 0, scope: !2345)
!2347 = !DILocation(line: 177, column: 9, scope: !2275)
!2348 = !DILocation(line: 178, column: 19, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2345, file: !86, line: 177, column: 17)
!2350 = !DILocation(line: 178, column: 13, scope: !2349)
!2351 = !DILocation(line: 179, column: 5, scope: !2349)
!2352 = !DILocation(line: 180, column: 13, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2345, file: !86, line: 179, column: 12)
!2354 = !DILocation(line: 182, column: 42, scope: !2275)
!2355 = !DILocation(line: 182, column: 5, scope: !2275)
!2356 = !DILocation(line: 184, column: 1, scope: !2275)
!2357 = distinct !DISubprogram(name: "cmnPLL1OFF_PLL2OFF", scope: !86, file: !86, line: 191, type: !75, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2358)
!2358 = !{!2359, !2360}
!2359 = !DILocalVariable(name: "reg", scope: !2357, file: !86, line: 193, type: !91)
!2360 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2357, file: !86, line: 194, type: !90)
!2361 = !DILocation(line: 193, column: 5, scope: !2357)
!2362 = !DILocation(line: 193, column: 23, scope: !2357)
!2363 = !DILocation(line: 0, scope: !2357)
!2364 = !DILocation(line: 196, column: 11, scope: !2357)
!2365 = !DILocation(line: 196, column: 9, scope: !2357)
!2366 = !DILocation(line: 197, column: 11, scope: !2357)
!2367 = !DILocation(line: 197, column: 15, scope: !2357)
!2368 = !DILocation(line: 197, column: 9, scope: !2357)
!2369 = !DILocation(line: 198, column: 11, scope: !2357)
!2370 = !DILocation(line: 198, column: 15, scope: !2357)
!2371 = !DILocation(line: 198, column: 9, scope: !2357)
!2372 = !DILocation(line: 199, column: 11, scope: !2357)
!2373 = !DILocation(line: 199, column: 9, scope: !2357)
!2374 = !DILocation(line: 200, column: 42, scope: !2357)
!2375 = !DILocation(line: 200, column: 5, scope: !2357)
!2376 = !DILocation(line: 202, column: 11, scope: !2357)
!2377 = !DILocation(line: 202, column: 9, scope: !2357)
!2378 = !DILocation(line: 203, column: 11, scope: !2357)
!2379 = !DILocation(line: 203, column: 15, scope: !2357)
!2380 = !DILocation(line: 203, column: 9, scope: !2357)
!2381 = !DILocation(line: 204, column: 11, scope: !2357)
!2382 = !DILocation(line: 204, column: 15, scope: !2357)
!2383 = !DILocation(line: 204, column: 9, scope: !2357)
!2384 = !DILocation(line: 205, column: 11, scope: !2357)
!2385 = !DILocation(line: 205, column: 9, scope: !2357)
!2386 = !DILocation(line: 206, column: 42, scope: !2357)
!2387 = !DILocation(line: 206, column: 5, scope: !2357)
!2388 = !DILocation(line: 209, column: 1, scope: !2357)
!2389 = distinct !DISubprogram(name: "cmnCpuClkConfigureToXtal", scope: !86, file: !86, line: 216, type: !75, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2390)
!2390 = !{!2391, !2392}
!2391 = !DILocalVariable(name: "reg", scope: !2389, file: !86, line: 218, type: !91)
!2392 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2389, file: !86, line: 219, type: !90)
!2393 = !DILocation(line: 218, column: 5, scope: !2389)
!2394 = !DILocation(line: 218, column: 23, scope: !2389)
!2395 = !DILocation(line: 0, scope: !2389)
!2396 = !DILocation(line: 222, column: 11, scope: !2389)
!2397 = !DILocation(line: 222, column: 9, scope: !2389)
!2398 = !DILocation(line: 223, column: 11, scope: !2389)
!2399 = !DILocation(line: 223, column: 15, scope: !2389)
!2400 = !DILocation(line: 223, column: 9, scope: !2389)
!2401 = !DILocation(line: 224, column: 11, scope: !2389)
!2402 = !DILocation(line: 224, column: 9, scope: !2389)
!2403 = !DILocation(line: 225, column: 39, scope: !2389)
!2404 = !DILocation(line: 225, column: 5, scope: !2389)
!2405 = !DILocation(line: 228, column: 11, scope: !2389)
!2406 = !DILocation(line: 228, column: 9, scope: !2389)
!2407 = !DILocation(line: 229, column: 11, scope: !2389)
!2408 = !DILocation(line: 229, column: 15, scope: !2389)
!2409 = !DILocation(line: 229, column: 9, scope: !2389)
!2410 = !DILocation(line: 230, column: 11, scope: !2389)
!2411 = !DILocation(line: 230, column: 9, scope: !2389)
!2412 = !DILocation(line: 231, column: 39, scope: !2389)
!2413 = !DILocation(line: 231, column: 5, scope: !2389)
!2414 = !DILocation(line: 233, column: 5, scope: !2389)
!2415 = !DILocation(line: 233, column: 12, scope: !2389)
!2416 = !DILocation(line: 233, column: 19, scope: !2389)
!2417 = !DILocation(line: 233, column: 16, scope: !2389)
!2418 = distinct !{!2418, !2414, !2419}
!2419 = !DILocation(line: 233, column: 52, scope: !2389)
!2420 = !DILocation(line: 235, column: 21, scope: !2389)
!2421 = !DILocation(line: 235, column: 19, scope: !2389)
!2422 = !DILocation(line: 236, column: 5, scope: !2389)
!2423 = !DILocation(line: 237, column: 17, scope: !2389)
!2424 = !DILocation(line: 237, column: 33, scope: !2389)
!2425 = !DILocation(line: 237, column: 5, scope: !2389)
!2426 = !DILocation(line: 239, column: 1, scope: !2389)
!2427 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo192M", scope: !86, file: !86, line: 246, type: !75, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2428)
!2428 = !{!2429, !2430}
!2429 = !DILocalVariable(name: "reg", scope: !2427, file: !86, line: 248, type: !91)
!2430 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2427, file: !86, line: 249, type: !90)
!2431 = !DILocation(line: 248, column: 5, scope: !2427)
!2432 = !DILocation(line: 248, column: 23, scope: !2427)
!2433 = !DILocation(line: 0, scope: !2427)
!2434 = !DILocation(line: 252, column: 5, scope: !2427)
!2435 = !DILocation(line: 255, column: 11, scope: !2427)
!2436 = !DILocation(line: 255, column: 9, scope: !2427)
!2437 = !DILocation(line: 256, column: 11, scope: !2427)
!2438 = !DILocation(line: 256, column: 15, scope: !2427)
!2439 = !DILocation(line: 256, column: 9, scope: !2427)
!2440 = !DILocation(line: 257, column: 11, scope: !2427)
!2441 = !DILocation(line: 257, column: 15, scope: !2427)
!2442 = !DILocation(line: 257, column: 9, scope: !2427)
!2443 = !DILocation(line: 258, column: 39, scope: !2427)
!2444 = !DILocation(line: 258, column: 5, scope: !2427)
!2445 = !DILocation(line: 260, column: 5, scope: !2427)
!2446 = !DILocation(line: 260, column: 12, scope: !2427)
!2447 = !DILocation(line: 260, column: 19, scope: !2427)
!2448 = !DILocation(line: 260, column: 16, scope: !2427)
!2449 = distinct !{!2449, !2445, !2450}
!2450 = !DILocation(line: 260, column: 52, scope: !2427)
!2451 = !DILocation(line: 263, column: 11, scope: !2427)
!2452 = !DILocation(line: 263, column: 9, scope: !2427)
!2453 = !DILocation(line: 264, column: 11, scope: !2427)
!2454 = !DILocation(line: 264, column: 15, scope: !2427)
!2455 = !DILocation(line: 264, column: 9, scope: !2427)
!2456 = !DILocation(line: 265, column: 11, scope: !2427)
!2457 = !DILocation(line: 265, column: 15, scope: !2427)
!2458 = !DILocation(line: 265, column: 9, scope: !2427)
!2459 = !DILocation(line: 266, column: 39, scope: !2427)
!2460 = !DILocation(line: 266, column: 5, scope: !2427)
!2461 = !DILocation(line: 269, column: 11, scope: !2427)
!2462 = !DILocation(line: 269, column: 9, scope: !2427)
!2463 = !DILocation(line: 270, column: 11, scope: !2427)
!2464 = !DILocation(line: 270, column: 15, scope: !2427)
!2465 = !DILocation(line: 270, column: 9, scope: !2427)
!2466 = !DILocation(line: 271, column: 11, scope: !2427)
!2467 = !DILocation(line: 271, column: 15, scope: !2427)
!2468 = !DILocation(line: 271, column: 9, scope: !2427)
!2469 = !DILocation(line: 272, column: 39, scope: !2427)
!2470 = !DILocation(line: 272, column: 5, scope: !2427)
!2471 = !DILocation(line: 273, column: 19, scope: !2427)
!2472 = !DILocation(line: 274, column: 5, scope: !2427)
!2473 = !DILocation(line: 275, column: 17, scope: !2427)
!2474 = !DILocation(line: 275, column: 33, scope: !2427)
!2475 = !DILocation(line: 275, column: 5, scope: !2427)
!2476 = !DILocation(line: 277, column: 1, scope: !2427)
!2477 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo160M", scope: !86, file: !86, line: 284, type: !75, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2478)
!2478 = !{!2479, !2480}
!2479 = !DILocalVariable(name: "reg", scope: !2477, file: !86, line: 286, type: !91)
!2480 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2477, file: !86, line: 287, type: !90)
!2481 = !DILocation(line: 286, column: 5, scope: !2477)
!2482 = !DILocation(line: 286, column: 23, scope: !2477)
!2483 = !DILocation(line: 0, scope: !2477)
!2484 = !DILocation(line: 290, column: 5, scope: !2477)
!2485 = !DILocation(line: 293, column: 11, scope: !2477)
!2486 = !DILocation(line: 293, column: 9, scope: !2477)
!2487 = !DILocation(line: 294, column: 11, scope: !2477)
!2488 = !DILocation(line: 294, column: 15, scope: !2477)
!2489 = !DILocation(line: 294, column: 9, scope: !2477)
!2490 = !DILocation(line: 295, column: 11, scope: !2477)
!2491 = !DILocation(line: 295, column: 15, scope: !2477)
!2492 = !DILocation(line: 295, column: 9, scope: !2477)
!2493 = !DILocation(line: 296, column: 39, scope: !2477)
!2494 = !DILocation(line: 296, column: 5, scope: !2477)
!2495 = !DILocation(line: 298, column: 5, scope: !2477)
!2496 = !DILocation(line: 298, column: 12, scope: !2477)
!2497 = !DILocation(line: 298, column: 19, scope: !2477)
!2498 = !DILocation(line: 298, column: 16, scope: !2477)
!2499 = distinct !{!2499, !2495, !2500}
!2500 = !DILocation(line: 298, column: 52, scope: !2477)
!2501 = !DILocation(line: 301, column: 11, scope: !2477)
!2502 = !DILocation(line: 301, column: 9, scope: !2477)
!2503 = !DILocation(line: 302, column: 11, scope: !2477)
!2504 = !DILocation(line: 302, column: 15, scope: !2477)
!2505 = !DILocation(line: 302, column: 9, scope: !2477)
!2506 = !DILocation(line: 303, column: 11, scope: !2477)
!2507 = !DILocation(line: 303, column: 15, scope: !2477)
!2508 = !DILocation(line: 303, column: 9, scope: !2477)
!2509 = !DILocation(line: 304, column: 39, scope: !2477)
!2510 = !DILocation(line: 304, column: 5, scope: !2477)
!2511 = !DILocation(line: 307, column: 11, scope: !2477)
!2512 = !DILocation(line: 307, column: 9, scope: !2477)
!2513 = !DILocation(line: 308, column: 11, scope: !2477)
!2514 = !DILocation(line: 308, column: 15, scope: !2477)
!2515 = !DILocation(line: 308, column: 9, scope: !2477)
!2516 = !DILocation(line: 309, column: 11, scope: !2477)
!2517 = !DILocation(line: 309, column: 15, scope: !2477)
!2518 = !DILocation(line: 309, column: 9, scope: !2477)
!2519 = !DILocation(line: 310, column: 39, scope: !2477)
!2520 = !DILocation(line: 310, column: 5, scope: !2477)
!2521 = !DILocation(line: 311, column: 19, scope: !2477)
!2522 = !DILocation(line: 312, column: 5, scope: !2477)
!2523 = !DILocation(line: 313, column: 17, scope: !2477)
!2524 = !DILocation(line: 313, column: 33, scope: !2477)
!2525 = !DILocation(line: 313, column: 5, scope: !2477)
!2526 = !DILocation(line: 315, column: 1, scope: !2477)
!2527 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo64M", scope: !86, file: !86, line: 323, type: !75, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2528)
!2528 = !{!2529, !2530}
!2529 = !DILocalVariable(name: "reg", scope: !2527, file: !86, line: 325, type: !91)
!2530 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2527, file: !86, line: 326, type: !90)
!2531 = !DILocation(line: 325, column: 5, scope: !2527)
!2532 = !DILocation(line: 325, column: 23, scope: !2527)
!2533 = !DILocation(line: 0, scope: !2527)
!2534 = !DILocation(line: 329, column: 5, scope: !2527)
!2535 = !DILocation(line: 332, column: 11, scope: !2527)
!2536 = !DILocation(line: 332, column: 9, scope: !2527)
!2537 = !DILocation(line: 333, column: 11, scope: !2527)
!2538 = !DILocation(line: 333, column: 15, scope: !2527)
!2539 = !DILocation(line: 333, column: 9, scope: !2527)
!2540 = !DILocation(line: 334, column: 11, scope: !2527)
!2541 = !DILocation(line: 334, column: 9, scope: !2527)
!2542 = !DILocation(line: 335, column: 39, scope: !2527)
!2543 = !DILocation(line: 335, column: 5, scope: !2527)
!2544 = !DILocation(line: 337, column: 5, scope: !2527)
!2545 = !DILocation(line: 337, column: 12, scope: !2527)
!2546 = !DILocation(line: 337, column: 19, scope: !2527)
!2547 = !DILocation(line: 337, column: 16, scope: !2527)
!2548 = distinct !{!2548, !2544, !2549}
!2549 = !DILocation(line: 337, column: 52, scope: !2527)
!2550 = !DILocation(line: 340, column: 11, scope: !2527)
!2551 = !DILocation(line: 340, column: 9, scope: !2527)
!2552 = !DILocation(line: 341, column: 11, scope: !2527)
!2553 = !DILocation(line: 341, column: 15, scope: !2527)
!2554 = !DILocation(line: 341, column: 9, scope: !2527)
!2555 = !DILocation(line: 342, column: 11, scope: !2527)
!2556 = !DILocation(line: 342, column: 15, scope: !2527)
!2557 = !DILocation(line: 342, column: 9, scope: !2527)
!2558 = !DILocation(line: 343, column: 39, scope: !2527)
!2559 = !DILocation(line: 343, column: 5, scope: !2527)
!2560 = !DILocation(line: 344, column: 19, scope: !2527)
!2561 = !DILocation(line: 345, column: 5, scope: !2527)
!2562 = !DILocation(line: 346, column: 17, scope: !2527)
!2563 = !DILocation(line: 346, column: 33, scope: !2527)
!2564 = !DILocation(line: 346, column: 5, scope: !2527)
!2565 = !DILocation(line: 348, column: 1, scope: !2527)
!2566 = distinct !DISubprogram(name: "cmnSerialFlashClkConfToXtal", scope: !86, file: !86, line: 353, type: !75, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2567)
!2567 = !{!2568, !2569}
!2568 = !DILocalVariable(name: "reg", scope: !2566, file: !86, line: 355, type: !79)
!2569 = !DILocalVariable(name: "pTopCfgHclk", scope: !2566, file: !86, line: 356, type: !96)
!2570 = !DILocation(line: 355, column: 5, scope: !2566)
!2571 = !DILocation(line: 355, column: 21, scope: !2566)
!2572 = !DILocation(line: 0, scope: !2566)
!2573 = !DILocation(line: 358, column: 11, scope: !2566)
!2574 = !DILocation(line: 358, column: 9, scope: !2566)
!2575 = !DILocation(line: 359, column: 11, scope: !2566)
!2576 = !DILocation(line: 359, column: 15, scope: !2566)
!2577 = !DILocation(line: 359, column: 9, scope: !2566)
!2578 = !DILocation(line: 360, column: 11, scope: !2566)
!2579 = !DILocation(line: 360, column: 9, scope: !2566)
!2580 = !DILocation(line: 361, column: 37, scope: !2566)
!2581 = !DILocation(line: 361, column: 5, scope: !2566)
!2582 = !DILocation(line: 362, column: 1, scope: !2566)
!2583 = distinct !DISubprogram(name: "getc", scope: !103, file: !103, line: 68, type: !2584, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2586)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!13}
!2586 = !{!2587}
!2587 = !DILocalVariable(name: "rc", scope: !2583, file: !103, line: 71, type: !13)
!2588 = !DILocation(line: 71, column: 14, scope: !2583)
!2589 = !DILocation(line: 0, scope: !2583)
!2590 = !DILocation(line: 72, column: 5, scope: !2583)
!2591 = distinct !DISubprogram(name: "getc_nowait", scope: !103, file: !103, line: 80, type: !2584, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2592)
!2592 = !{!2593}
!2593 = !DILocalVariable(name: "c", scope: !2591, file: !103, line: 82, type: !315)
!2594 = !DILocation(line: 84, column: 9, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2591, file: !103, line: 84, column: 9)
!2596 = !DILocation(line: 84, column: 40, scope: !2595)
!2597 = !DILocation(line: 84, column: 9, scope: !2591)
!2598 = !DILocation(line: 85, column: 13, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2595, file: !103, line: 84, column: 47)
!2600 = !DILocation(line: 86, column: 16, scope: !2599)
!2601 = !DILocation(line: 0, scope: !2591)
!2602 = !DILocation(line: 86, column: 9, scope: !2599)
!2603 = !DILocation(line: 0, scope: !2595)
!2604 = !DILocation(line: 90, column: 1, scope: !2591)
!2605 = distinct !DISubprogram(name: "uart_output_char", scope: !103, file: !103, line: 93, type: !2606, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2609)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{null, !2608, !134}
!2608 = !DIDerivedType(tag: DW_TAG_typedef, name: "UART_PORT", file: !106, line: 75, baseType: !105)
!2609 = !{!2610, !2611, !2612}
!2610 = !DILocalVariable(name: "port_no", arg: 1, scope: !2605, file: !103, line: 93, type: !2608)
!2611 = !DILocalVariable(name: "c", arg: 2, scope: !2605, file: !103, line: 93, type: !134)
!2612 = !DILocalVariable(name: "base", scope: !2605, file: !103, line: 95, type: !7)
!2613 = !DILocation(line: 0, scope: !2605)
!2614 = !DILocation(line: 95, column: 25, scope: !2605)
!2615 = !DILocation(line: 97, column: 5, scope: !2605)
!2616 = !DILocation(line: 97, column: 14, scope: !2605)
!2617 = !DILocation(line: 97, column: 42, scope: !2605)
!2618 = !DILocation(line: 97, column: 12, scope: !2605)
!2619 = distinct !{!2619, !2615, !2620}
!2620 = !DILocation(line: 98, column: 9, scope: !2605)
!2621 = !DILocation(line: 99, column: 35, scope: !2605)
!2622 = !DILocation(line: 99, column: 5, scope: !2605)
!2623 = !DILocation(line: 99, column: 33, scope: !2605)
!2624 = !DILocation(line: 102, column: 1, scope: !2605)
!2625 = distinct !DISubprogram(name: "uart_input_char", scope: !103, file: !103, line: 106, type: !2626, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2628)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!150, !2608}
!2628 = !{!2629, !2630, !2631}
!2629 = !DILocalVariable(name: "port_no", arg: 1, scope: !2625, file: !103, line: 106, type: !2608)
!2630 = !DILocalVariable(name: "base", scope: !2625, file: !103, line: 108, type: !7)
!2631 = !DILocalVariable(name: "c", scope: !2625, file: !103, line: 109, type: !315)
!2632 = !DILocation(line: 0, scope: !2625)
!2633 = !DILocation(line: 108, column: 25, scope: !2625)
!2634 = !DILocation(line: 111, column: 5, scope: !2625)
!2635 = !DILocation(line: 111, column: 14, scope: !2625)
!2636 = !DILocation(line: 111, column: 42, scope: !2625)
!2637 = !DILocation(line: 111, column: 12, scope: !2625)
!2638 = distinct !{!2638, !2634, !2639}
!2639 = !DILocation(line: 112, column: 9, scope: !2625)
!2640 = !DILocation(line: 114, column: 9, scope: !2625)
!2641 = !DILocation(line: 116, column: 5, scope: !2625)
!2642 = distinct !DISubprogram(name: "uart_input_char_unblocking", scope: !103, file: !103, line: 120, type: !2643, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2645)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{!92, !2608}
!2645 = !{!2646, !2647, !2648}
!2646 = !DILocalVariable(name: "port_no", arg: 1, scope: !2642, file: !103, line: 120, type: !2608)
!2647 = !DILocalVariable(name: "base", scope: !2642, file: !103, line: 122, type: !7)
!2648 = !DILocalVariable(name: "c", scope: !2642, file: !103, line: 123, type: !315)
!2649 = !DILocation(line: 0, scope: !2642)
!2650 = !DILocation(line: 122, column: 25, scope: !2642)
!2651 = !DILocation(line: 125, column: 9, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2642, file: !103, line: 125, column: 9)
!2653 = !DILocation(line: 125, column: 37, scope: !2652)
!2654 = !DILocation(line: 125, column: 9, scope: !2642)
!2655 = !DILocation(line: 126, column: 13, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2652, file: !103, line: 125, column: 44)
!2657 = !DILocation(line: 127, column: 16, scope: !2656)
!2658 = !DILocation(line: 127, column: 9, scope: !2656)
!2659 = !DILocation(line: 0, scope: !2652)
!2660 = !DILocation(line: 131, column: 1, scope: !2642)
!2661 = distinct !DISubprogram(name: "halUART_HWInit", scope: !103, file: !103, line: 136, type: !2662, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2664)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{null, !2608}
!2664 = !{!2665}
!2665 = !DILocalVariable(name: "u_port", arg: 1, scope: !2661, file: !103, line: 136, type: !2608)
!2666 = !DILocation(line: 0, scope: !2661)
!2667 = !DILocation(line: 139, column: 5, scope: !2661)
!2668 = !DILocation(line: 140, column: 9, scope: !2661)
!2669 = !DILocation(line: 153, column: 5, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !103, line: 147, column: 38)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !103, line: 147, column: 16)
!2672 = distinct !DILexicalBlock(scope: !2661, file: !103, line: 140, column: 9)
!2673 = !DILocation(line: 0, scope: !2672)
!2674 = !DILocation(line: 155, column: 1, scope: !2661)
!2675 = distinct !DISubprogram(name: "halUART_SetFormat", scope: !103, file: !103, line: 158, type: !2676, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2680)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{null, !2608, !92, !2678, !2678, !2678}
!2678 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !93, line: 36, baseType: !2679)
!2679 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !95, line: 57, baseType: !132)
!2680 = !{!2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2696, !2697}
!2681 = !DILocalVariable(name: "u_port", arg: 1, scope: !2675, file: !103, line: 158, type: !2608)
!2682 = !DILocalVariable(name: "baudrate", arg: 2, scope: !2675, file: !103, line: 158, type: !92)
!2683 = !DILocalVariable(name: "databit", arg: 3, scope: !2675, file: !103, line: 158, type: !2678)
!2684 = !DILocalVariable(name: "parity", arg: 4, scope: !2675, file: !103, line: 158, type: !2678)
!2685 = !DILocalVariable(name: "stopbit", arg: 5, scope: !2675, file: !103, line: 158, type: !2678)
!2686 = !DILocalVariable(name: "control_word", scope: !2675, file: !103, line: 160, type: !2678)
!2687 = !DILocalVariable(name: "UART_BASE", scope: !2675, file: !103, line: 161, type: !92)
!2688 = !DILocalVariable(name: "data", scope: !2675, file: !103, line: 162, type: !92)
!2689 = !DILocalVariable(name: "uart_lcr", scope: !2675, file: !103, line: 162, type: !92)
!2690 = !DILocalVariable(name: "high_speed_div", scope: !2675, file: !103, line: 162, type: !92)
!2691 = !DILocalVariable(name: "sample_count", scope: !2675, file: !103, line: 162, type: !92)
!2692 = !DILocalVariable(name: "sample_point", scope: !2675, file: !103, line: 162, type: !92)
!2693 = !DILocalVariable(name: "fraction", scope: !2675, file: !103, line: 162, type: !92)
!2694 = !DILocalVariable(name: "fraction_L_mapping", scope: !2675, file: !103, line: 163, type: !2695)
!2695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2678, size: 176, elements: !658)
!2696 = !DILocalVariable(name: "fraction_M_mapping", scope: !2675, file: !103, line: 164, type: !2695)
!2697 = !DILocalVariable(name: "status", scope: !2675, file: !103, line: 165, type: !172)
!2698 = !DILocation(line: 0, scope: !2675)
!2699 = !DILocation(line: 163, column: 15, scope: !2675)
!2700 = !DILocation(line: 164, column: 15, scope: !2675)
!2701 = !DILocation(line: 166, column: 20, scope: !2675)
!2702 = !DILocation(line: 166, column: 18, scope: !2675)
!2703 = !DILocation(line: 168, column: 9, scope: !2675)
!2704 = !DILocation(line: 176, column: 5, scope: !2675)
!2705 = !DILocation(line: 176, column: 44, scope: !2675)
!2706 = !DILocation(line: 177, column: 16, scope: !2675)
!2707 = !DILocation(line: 178, column: 50, scope: !2675)
!2708 = !DILocation(line: 178, column: 38, scope: !2675)
!2709 = !DILocation(line: 179, column: 12, scope: !2675)
!2710 = !DILocation(line: 179, column: 25, scope: !2675)
!2711 = !DILocation(line: 180, column: 28, scope: !2675)
!2712 = !DILocation(line: 180, column: 34, scope: !2675)
!2713 = !DILocation(line: 182, column: 29, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2675, file: !103, line: 181, column: 5)
!2715 = !DILocation(line: 182, column: 46, scope: !2714)
!2716 = !DILocation(line: 183, column: 26, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2714, file: !103, line: 183, column: 13)
!2718 = !DILocation(line: 183, column: 13, scope: !2714)
!2719 = !DILocation(line: 192, column: 30, scope: !2675)
!2720 = !DILocation(line: 192, column: 35, scope: !2675)
!2721 = !DILocation(line: 192, column: 46, scope: !2675)
!2722 = !DILocation(line: 192, column: 74, scope: !2675)
!2723 = !DILocation(line: 192, column: 53, scope: !2675)
!2724 = !DILocation(line: 192, column: 80, scope: !2675)
!2725 = !DILocation(line: 193, column: 56, scope: !2675)
!2726 = !DILocation(line: 193, column: 5, scope: !2675)
!2727 = !DILocation(line: 193, column: 38, scope: !2675)
!2728 = !DILocation(line: 194, column: 57, scope: !2675)
!2729 = !DILocation(line: 194, column: 63, scope: !2675)
!2730 = !DILocation(line: 194, column: 5, scope: !2675)
!2731 = !DILocation(line: 194, column: 38, scope: !2675)
!2732 = !DILocation(line: 195, column: 5, scope: !2675)
!2733 = !DILocation(line: 195, column: 45, scope: !2675)
!2734 = !DILocation(line: 196, column: 5, scope: !2675)
!2735 = !DILocation(line: 196, column: 47, scope: !2675)
!2736 = !DILocation(line: 197, column: 46, scope: !2675)
!2737 = !DILocation(line: 197, column: 5, scope: !2675)
!2738 = !DILocation(line: 197, column: 44, scope: !2675)
!2739 = !DILocation(line: 198, column: 46, scope: !2675)
!2740 = !DILocation(line: 198, column: 5, scope: !2675)
!2741 = !DILocation(line: 198, column: 44, scope: !2675)
!2742 = !DILocation(line: 199, column: 38, scope: !2675)
!2743 = !DILocation(line: 200, column: 5, scope: !2675)
!2744 = !DILocation(line: 200, column: 38, scope: !2675)
!2745 = !DILocation(line: 202, column: 20, scope: !2675)
!2746 = !DILocation(line: 203, column: 18, scope: !2675)
!2747 = !DILocation(line: 205, column: 18, scope: !2675)
!2748 = !DILocation(line: 207, column: 18, scope: !2675)
!2749 = !DILocation(line: 208, column: 18, scope: !2675)
!2750 = !DILocation(line: 209, column: 5, scope: !2675)
!2751 = !DILocation(line: 213, column: 1, scope: !2675)
!2752 = distinct !DISubprogram(name: "halUART_Get_VFIFO_Length", scope: !103, file: !103, line: 215, type: !2753, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2756)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{null, !2608, !172, !2755}
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 32)
!2756 = !{!2757, !2758, !2759}
!2757 = !DILocalVariable(name: "u_port", arg: 1, scope: !2752, file: !103, line: 215, type: !2608)
!2758 = !DILocalVariable(name: "is_rx", arg: 2, scope: !2752, file: !103, line: 215, type: !172)
!2759 = !DILocalVariable(name: "length", arg: 3, scope: !2752, file: !103, line: 215, type: !2755)
!2760 = !DILocation(line: 0, scope: !2752)
!2761 = !DILocation(line: 217, column: 16, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2752, file: !103, line: 217, column: 9)
!2763 = !DILocation(line: 0, scope: !2762)
!2764 = !DILocation(line: 217, column: 9, scope: !2752)
!2765 = !DILocation(line: 218, column: 13, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2762, file: !103, line: 217, column: 31)
!2767 = !DILocation(line: 219, column: 23, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !103, line: 218, column: 20)
!2769 = distinct !DILexicalBlock(scope: !2766, file: !103, line: 218, column: 13)
!2770 = !DILocation(line: 220, column: 9, scope: !2768)
!2771 = !DILocation(line: 221, column: 23, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2769, file: !103, line: 220, column: 16)
!2773 = !DILocation(line: 221, column: 21, scope: !2772)
!2774 = !DILocation(line: 222, column: 24, scope: !2772)
!2775 = !DILocation(line: 222, column: 21, scope: !2772)
!2776 = !DILocation(line: 225, column: 13, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2762, file: !103, line: 224, column: 12)
!2778 = !DILocation(line: 226, column: 23, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !103, line: 225, column: 20)
!2780 = distinct !DILexicalBlock(scope: !2777, file: !103, line: 225, column: 13)
!2781 = !DILocation(line: 227, column: 9, scope: !2779)
!2782 = !DILocation(line: 228, column: 23, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2780, file: !103, line: 227, column: 16)
!2784 = !DILocation(line: 228, column: 21, scope: !2783)
!2785 = !DILocation(line: 229, column: 24, scope: !2783)
!2786 = !DILocation(line: 229, column: 21, scope: !2783)
!2787 = !DILocation(line: 233, column: 5, scope: !2752)
!2788 = distinct !DISubprogram(name: "halUART_Read_VFIFO_Data", scope: !103, file: !103, line: 236, type: !2789, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2791)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{null, !2608, !363, !92}
!2791 = !{!2792, !2793, !2794, !2795}
!2792 = !DILocalVariable(name: "u_port", arg: 1, scope: !2788, file: !103, line: 236, type: !2608)
!2793 = !DILocalVariable(name: "data", arg: 2, scope: !2788, file: !103, line: 236, type: !363)
!2794 = !DILocalVariable(name: "length", arg: 3, scope: !2788, file: !103, line: 236, type: !92)
!2795 = !DILocalVariable(name: "idx", scope: !2788, file: !103, line: 238, type: !80)
!2796 = !DILocation(line: 0, scope: !2788)
!2797 = !DILocation(line: 239, column: 23, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2799, file: !103, line: 239, column: 5)
!2799 = distinct !DILexicalBlock(scope: !2788, file: !103, line: 239, column: 5)
!2800 = !DILocation(line: 239, column: 5, scope: !2799)
!2801 = !DILocation(line: 240, column: 13, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2798, file: !103, line: 239, column: 40)
!2803 = !DILocation(line: 244, column: 9, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2805, file: !103, line: 242, column: 42)
!2805 = distinct !DILexicalBlock(scope: !2806, file: !103, line: 242, column: 20)
!2806 = distinct !DILexicalBlock(scope: !2802, file: !103, line: 240, column: 13)
!2807 = !DILocation(line: 0, scope: !2806)
!2808 = !DILocation(line: 239, column: 36, scope: !2798)
!2809 = distinct !{!2809, !2800, !2810}
!2810 = !DILocation(line: 246, column: 5, scope: !2799)
!2811 = !DILocation(line: 249, column: 1, scope: !2788)
!2812 = distinct !DISubprogram(name: "halUART_Write_VFIFO_Data", scope: !103, file: !103, line: 251, type: !2813, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2817)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{null, !2608, !2815, !92}
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 32)
!2816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!2817 = !{!2818, !2819, !2820, !2821}
!2818 = !DILocalVariable(name: "u_port", arg: 1, scope: !2812, file: !103, line: 251, type: !2608)
!2819 = !DILocalVariable(name: "data", arg: 2, scope: !2812, file: !103, line: 251, type: !2815)
!2820 = !DILocalVariable(name: "length", arg: 3, scope: !2812, file: !103, line: 251, type: !92)
!2821 = !DILocalVariable(name: "idx", scope: !2812, file: !103, line: 253, type: !80)
!2822 = !DILocation(line: 0, scope: !2812)
!2823 = !DILocation(line: 254, column: 23, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2825, file: !103, line: 254, column: 5)
!2825 = distinct !DILexicalBlock(scope: !2812, file: !103, line: 254, column: 5)
!2826 = !DILocation(line: 254, column: 5, scope: !2825)
!2827 = !DILocation(line: 255, column: 13, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2824, file: !103, line: 254, column: 40)
!2829 = !DILocation(line: 256, column: 61, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2831, file: !103, line: 255, column: 35)
!2831 = distinct !DILexicalBlock(scope: !2828, file: !103, line: 255, column: 13)
!2832 = !DILocation(line: 256, column: 59, scope: !2830)
!2833 = !DILocation(line: 257, column: 9, scope: !2830)
!2834 = !DILocation(line: 258, column: 61, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2836, file: !103, line: 257, column: 42)
!2836 = distinct !DILexicalBlock(scope: !2831, file: !103, line: 257, column: 20)
!2837 = !DILocation(line: 258, column: 59, scope: !2835)
!2838 = !DILocation(line: 259, column: 9, scope: !2835)
!2839 = !DILocation(line: 254, column: 36, scope: !2824)
!2840 = distinct !{!2840, !2826, !2841}
!2841 = !DILocation(line: 261, column: 5, scope: !2825)
!2842 = !DILocation(line: 264, column: 1, scope: !2812)
!2843 = distinct !DISubprogram(name: "halUART_Tx_VFIFO_Initialize", scope: !103, file: !103, line: 266, type: !2844, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2846)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{null, !2608, !363, !92, !92}
!2846 = !{!2847, !2848, !2849, !2850}
!2847 = !DILocalVariable(name: "u_port", arg: 1, scope: !2843, file: !103, line: 266, type: !2608)
!2848 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !2843, file: !103, line: 266, type: !363)
!2849 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !2843, file: !103, line: 266, type: !92)
!2850 = !DILocalVariable(name: "threshold", arg: 4, scope: !2843, file: !103, line: 266, type: !92)
!2851 = !DILocation(line: 0, scope: !2843)
!2852 = !DILocation(line: 268, column: 9, scope: !2843)
!2853 = !DILocation(line: 274, column: 5, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2855, file: !103, line: 271, column: 38)
!2855 = distinct !DILexicalBlock(scope: !2856, file: !103, line: 271, column: 16)
!2856 = distinct !DILexicalBlock(scope: !2843, file: !103, line: 268, column: 9)
!2857 = !DILocation(line: 0, scope: !2856)
!2858 = !DILocation(line: 276, column: 1, scope: !2843)
!2859 = distinct !DISubprogram(name: "halUART_Rx_VFIFO_Initialize", scope: !103, file: !103, line: 278, type: !2860, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2862)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{null, !2608, !363, !92, !92, !92, !92}
!2862 = !{!2863, !2864, !2865, !2866, !2867, !2868}
!2863 = !DILocalVariable(name: "u_port", arg: 1, scope: !2859, file: !103, line: 278, type: !2608)
!2864 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !2859, file: !103, line: 278, type: !363)
!2865 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !2859, file: !103, line: 278, type: !92)
!2866 = !DILocalVariable(name: "alert_length", arg: 4, scope: !2859, file: !103, line: 278, type: !92)
!2867 = !DILocalVariable(name: "threshold", arg: 5, scope: !2859, file: !103, line: 278, type: !92)
!2868 = !DILocalVariable(name: "timeout", arg: 6, scope: !2859, file: !103, line: 278, type: !92)
!2869 = !DILocation(line: 0, scope: !2859)
!2870 = !DILocation(line: 280, column: 9, scope: !2859)
!2871 = !DILocation(line: 286, column: 5, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2873, file: !103, line: 283, column: 38)
!2873 = distinct !DILexicalBlock(scope: !2874, file: !103, line: 283, column: 16)
!2874 = distinct !DILexicalBlock(scope: !2859, file: !103, line: 280, column: 9)
!2875 = !DILocation(line: 0, scope: !2874)
!2876 = !DILocation(line: 288, column: 1, scope: !2859)
!2877 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_Callback", scope: !103, file: !103, line: 290, type: !2878, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2880)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{null, !2608, !322}
!2880 = !{!2881, !2882}
!2881 = !DILocalVariable(name: "u_port", arg: 1, scope: !2877, file: !103, line: 290, type: !2608)
!2882 = !DILocalVariable(name: "func", arg: 2, scope: !2877, file: !103, line: 290, type: !322)
!2883 = !DILocation(line: 0, scope: !2877)
!2884 = !DILocation(line: 292, column: 9, scope: !2877)
!2885 = !DILocation(line: 296, column: 5, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2887, file: !103, line: 294, column: 38)
!2887 = distinct !DILexicalBlock(scope: !2888, file: !103, line: 294, column: 16)
!2888 = distinct !DILexicalBlock(scope: !2877, file: !103, line: 292, column: 9)
!2889 = !DILocation(line: 0, scope: !2888)
!2890 = !DILocation(line: 298, column: 1, scope: !2877)
!2891 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_TO_Callback", scope: !103, file: !103, line: 300, type: !2878, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2892)
!2892 = !{!2893, !2894}
!2893 = !DILocalVariable(name: "u_port", arg: 1, scope: !2891, file: !103, line: 300, type: !2608)
!2894 = !DILocalVariable(name: "func", arg: 2, scope: !2891, file: !103, line: 300, type: !322)
!2895 = !DILocation(line: 0, scope: !2891)
!2896 = !DILocation(line: 302, column: 9, scope: !2891)
!2897 = !DILocation(line: 306, column: 5, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2899, file: !103, line: 304, column: 38)
!2899 = distinct !DILexicalBlock(scope: !2900, file: !103, line: 304, column: 16)
!2900 = distinct !DILexicalBlock(scope: !2891, file: !103, line: 302, column: 9)
!2901 = !DILocation(line: 0, scope: !2900)
!2902 = !DILocation(line: 308, column: 1, scope: !2891)
!2903 = distinct !DISubprogram(name: "uart_set_hardware_flowcontrol", scope: !103, file: !103, line: 310, type: !2662, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2904)
!2904 = !{!2905, !2906, !2907, !2908}
!2905 = !DILocalVariable(name: "u_port", arg: 1, scope: !2903, file: !103, line: 310, type: !2608)
!2906 = !DILocalVariable(name: "base", scope: !2903, file: !103, line: 312, type: !7)
!2907 = !DILocalVariable(name: "EFR", scope: !2903, file: !103, line: 313, type: !2678)
!2908 = !DILocalVariable(name: "LCR", scope: !2903, file: !103, line: 313, type: !2678)
!2909 = !DILocation(line: 0, scope: !2903)
!2910 = !DILocation(line: 312, column: 25, scope: !2903)
!2911 = !DILocation(line: 315, column: 11, scope: !2903)
!2912 = !DILocation(line: 317, column: 33, scope: !2903)
!2913 = !DILocation(line: 318, column: 11, scope: !2903)
!2914 = !DILocation(line: 320, column: 35, scope: !2903)
!2915 = !DILocation(line: 320, column: 33, scope: !2903)
!2916 = !DILocation(line: 322, column: 5, scope: !2903)
!2917 = !DILocation(line: 322, column: 39, scope: !2903)
!2918 = !DILocation(line: 324, column: 33, scope: !2903)
!2919 = !DILocation(line: 325, column: 5, scope: !2903)
!2920 = !DILocation(line: 325, column: 33, scope: !2903)
!2921 = !DILocation(line: 327, column: 35, scope: !2903)
!2922 = !DILocation(line: 327, column: 33, scope: !2903)
!2923 = !DILocation(line: 328, column: 1, scope: !2903)
!2924 = distinct !DISubprogram(name: "uart_set_software_flowcontrol", scope: !103, file: !103, line: 330, type: !2925, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2927)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{null, !2608, !150, !150, !150}
!2927 = !{!2928, !2929, !2930, !2931, !2932, !2933, !2934}
!2928 = !DILocalVariable(name: "u_port", arg: 1, scope: !2924, file: !103, line: 330, type: !2608)
!2929 = !DILocalVariable(name: "xon", arg: 2, scope: !2924, file: !103, line: 330, type: !150)
!2930 = !DILocalVariable(name: "xoff", arg: 3, scope: !2924, file: !103, line: 330, type: !150)
!2931 = !DILocalVariable(name: "escape_character", arg: 4, scope: !2924, file: !103, line: 330, type: !150)
!2932 = !DILocalVariable(name: "base", scope: !2924, file: !103, line: 332, type: !7)
!2933 = !DILocalVariable(name: "EFR", scope: !2924, file: !103, line: 333, type: !2678)
!2934 = !DILocalVariable(name: "LCR", scope: !2924, file: !103, line: 333, type: !2678)
!2935 = !DILocation(line: 0, scope: !2924)
!2936 = !DILocation(line: 332, column: 25, scope: !2924)
!2937 = !DILocation(line: 335, column: 11, scope: !2924)
!2938 = !DILocation(line: 337, column: 33, scope: !2924)
!2939 = !DILocation(line: 338, column: 36, scope: !2924)
!2940 = !DILocation(line: 338, column: 5, scope: !2924)
!2941 = !DILocation(line: 338, column: 34, scope: !2924)
!2942 = !DILocation(line: 339, column: 5, scope: !2924)
!2943 = !DILocation(line: 339, column: 34, scope: !2924)
!2944 = !DILocation(line: 340, column: 37, scope: !2924)
!2945 = !DILocation(line: 340, column: 5, scope: !2924)
!2946 = !DILocation(line: 340, column: 35, scope: !2924)
!2947 = !DILocation(line: 341, column: 5, scope: !2924)
!2948 = !DILocation(line: 341, column: 35, scope: !2924)
!2949 = !DILocation(line: 343, column: 11, scope: !2924)
!2950 = !DILocation(line: 345, column: 35, scope: !2924)
!2951 = !DILocation(line: 345, column: 33, scope: !2924)
!2952 = !DILocation(line: 347, column: 35, scope: !2924)
!2953 = !DILocation(line: 347, column: 33, scope: !2924)
!2954 = !DILocation(line: 349, column: 43, scope: !2924)
!2955 = !DILocation(line: 349, column: 5, scope: !2924)
!2956 = !DILocation(line: 349, column: 41, scope: !2924)
!2957 = !DILocation(line: 350, column: 5, scope: !2924)
!2958 = !DILocation(line: 350, column: 39, scope: !2924)
!2959 = !DILocation(line: 351, column: 1, scope: !2924)
!2960 = distinct !DISubprogram(name: "uart_disable_flowcontrol", scope: !103, file: !103, line: 353, type: !2662, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2961)
!2961 = !{!2962, !2963, !2964}
!2962 = !DILocalVariable(name: "u_port", arg: 1, scope: !2960, file: !103, line: 353, type: !2608)
!2963 = !DILocalVariable(name: "base", scope: !2960, file: !103, line: 355, type: !7)
!2964 = !DILocalVariable(name: "LCR", scope: !2960, file: !103, line: 356, type: !2678)
!2965 = !DILocation(line: 0, scope: !2960)
!2966 = !DILocation(line: 355, column: 25, scope: !2960)
!2967 = !DILocation(line: 358, column: 11, scope: !2960)
!2968 = !DILocation(line: 360, column: 33, scope: !2960)
!2969 = !DILocation(line: 362, column: 5, scope: !2960)
!2970 = !DILocation(line: 362, column: 33, scope: !2960)
!2971 = !DILocation(line: 364, column: 33, scope: !2960)
!2972 = !DILocation(line: 366, column: 35, scope: !2960)
!2973 = !DILocation(line: 366, column: 33, scope: !2960)
!2974 = !DILocation(line: 367, column: 1, scope: !2960)
!2975 = distinct !DISubprogram(name: "uart_reset_default_value", scope: !103, file: !103, line: 436, type: !2662, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !2976)
!2976 = !{!2977, !2978}
!2977 = !DILocalVariable(name: "u_port", arg: 1, scope: !2975, file: !103, line: 436, type: !2608)
!2978 = !DILocalVariable(name: "base", scope: !2975, file: !103, line: 438, type: !7)
!2979 = !DILocation(line: 0, scope: !2975)
!2980 = !DILocation(line: 438, column: 25, scope: !2975)
!2981 = !DILocation(line: 440, column: 5, scope: !2975)
!2982 = !DILocation(line: 440, column: 33, scope: !2975)
!2983 = !DILocation(line: 441, column: 5, scope: !2975)
!2984 = !DILocation(line: 441, column: 33, scope: !2975)
!2985 = !DILocation(line: 442, column: 5, scope: !2975)
!2986 = !DILocation(line: 442, column: 34, scope: !2975)
!2987 = !DILocation(line: 443, column: 5, scope: !2975)
!2988 = !DILocation(line: 443, column: 35, scope: !2975)
!2989 = !DILocation(line: 445, column: 33, scope: !2975)
!2990 = !DILocation(line: 446, column: 5, scope: !2975)
!2991 = !DILocation(line: 446, column: 33, scope: !2975)
!2992 = !DILocation(line: 447, column: 5, scope: !2975)
!2993 = !DILocation(line: 447, column: 33, scope: !2975)
!2994 = !DILocation(line: 449, column: 33, scope: !2975)
!2995 = !DILocation(line: 450, column: 33, scope: !2975)
!2996 = !DILocation(line: 451, column: 33, scope: !2975)
!2997 = !DILocation(line: 453, column: 33, scope: !2975)
!2998 = !DILocation(line: 454, column: 33, scope: !2975)
!2999 = !DILocation(line: 455, column: 33, scope: !2975)
!3000 = !DILocation(line: 457, column: 33, scope: !2975)
!3001 = !DILocation(line: 458, column: 5, scope: !2975)
!3002 = !DILocation(line: 458, column: 33, scope: !2975)
!3003 = !DILocation(line: 459, column: 5, scope: !2975)
!3004 = !DILocation(line: 459, column: 39, scope: !2975)
!3005 = !DILocation(line: 460, column: 5, scope: !2975)
!3006 = !DILocation(line: 460, column: 40, scope: !2975)
!3007 = !DILocation(line: 461, column: 5, scope: !2975)
!3008 = !DILocation(line: 461, column: 42, scope: !2975)
!3009 = !DILocation(line: 462, column: 5, scope: !2975)
!3010 = !DILocation(line: 462, column: 42, scope: !2975)
!3011 = !DILocation(line: 463, column: 5, scope: !2975)
!3012 = !DILocation(line: 463, column: 35, scope: !2975)
!3013 = !DILocation(line: 464, column: 5, scope: !2975)
!3014 = !DILocation(line: 464, column: 41, scope: !2975)
!3015 = !DILocation(line: 465, column: 5, scope: !2975)
!3016 = !DILocation(line: 465, column: 39, scope: !2975)
!3017 = !DILocation(line: 466, column: 5, scope: !2975)
!3018 = !DILocation(line: 466, column: 38, scope: !2975)
!3019 = !DILocation(line: 467, column: 5, scope: !2975)
!3020 = !DILocation(line: 467, column: 42, scope: !2975)
!3021 = !DILocation(line: 468, column: 5, scope: !2975)
!3022 = !DILocation(line: 468, column: 45, scope: !2975)
!3023 = !DILocation(line: 469, column: 5, scope: !2975)
!3024 = !DILocation(line: 469, column: 39, scope: !2975)
!3025 = !DILocation(line: 470, column: 5, scope: !2975)
!3026 = !DILocation(line: 470, column: 39, scope: !2975)
!3027 = !DILocation(line: 471, column: 5, scope: !2975)
!3028 = !DILocation(line: 471, column: 42, scope: !2975)
!3029 = !DILocation(line: 472, column: 1, scope: !2975)
!3030 = distinct !DISubprogram(name: "uart_query_empty", scope: !103, file: !103, line: 474, type: !2662, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !102, retainedNodes: !3031)
!3031 = !{!3032, !3033}
!3032 = !DILocalVariable(name: "u_port", arg: 1, scope: !3030, file: !103, line: 474, type: !2608)
!3033 = !DILocalVariable(name: "base", scope: !3030, file: !103, line: 476, type: !7)
!3034 = !DILocation(line: 0, scope: !3030)
!3035 = !DILocation(line: 476, column: 25, scope: !3030)
!3036 = !DILocation(line: 478, column: 5, scope: !3030)
!3037 = !DILocation(line: 478, column: 14, scope: !3030)
!3038 = !DILocation(line: 478, column: 42, scope: !3030)
!3039 = !DILocation(line: 478, column: 12, scope: !3030)
!3040 = distinct !{!3040, !3036, !3041}
!3041 = !DILocation(line: 478, column: 50, scope: !3030)
!3042 = !DILocation(line: 479, column: 1, scope: !3030)
!3043 = distinct !DISubprogram(name: "log_hal_fatal_internal", scope: !838, file: !838, line: 64, type: !3044, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !3046)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{null, !482, !13, !482, null}
!3046 = !{!3047, !3048, !3049, !3050, !3059}
!3047 = !DILocalVariable(name: "func", arg: 1, scope: !3043, file: !838, line: 64, type: !482)
!3048 = !DILocalVariable(name: "line", arg: 2, scope: !3043, file: !838, line: 64, type: !13)
!3049 = !DILocalVariable(name: "message", arg: 3, scope: !3043, file: !838, line: 64, type: !482)
!3050 = !DILocalVariable(name: "ap", scope: !3043, file: !838, line: 66, type: !3051)
!3051 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3052, line: 46, baseType: !3053)
!3052 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/stdio.h", directory: "/home/mjshen/RTOSExploration")
!3053 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3054, line: 32, baseType: !3055)
!3054 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stdarg.h", directory: "")
!3055 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !838, baseType: !3056)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !3057)
!3057 = !{!3058}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !3056, file: !838, line: 66, baseType: !149, size: 32)
!3059 = !DILocalVariable(name: "mask", scope: !3043, file: !838, line: 68, type: !92)
!3060 = !DILocation(line: 0, scope: !3043)
!3061 = !DILocation(line: 66, column: 5, scope: !3043)
!3062 = !DILocation(line: 66, column: 13, scope: !3043)
!3063 = !DILocation(line: 68, column: 5, scope: !3043)
!3064 = !DILocation(line: 69, column: 5, scope: !3043)
!3065 = !DILocation(line: 71, column: 5, scope: !3043)
!3066 = !DILocation(line: 72, column: 5, scope: !3043)
!3067 = !DILocation(line: 73, column: 5, scope: !3043)
!3068 = !DILocation(line: 75, column: 37, scope: !3043)
!3069 = !DILocation(line: 75, column: 5, scope: !3043)
!3070 = !DILocation(line: 77, column: 1, scope: !3043)
!3071 = distinct !DISubprogram(name: "log_hal_error_internal", scope: !838, file: !838, line: 78, type: !3044, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !3072)
!3072 = !{!3073, !3074, !3075, !3076, !3077}
!3073 = !DILocalVariable(name: "func", arg: 1, scope: !3071, file: !838, line: 78, type: !482)
!3074 = !DILocalVariable(name: "line", arg: 2, scope: !3071, file: !838, line: 78, type: !13)
!3075 = !DILocalVariable(name: "message", arg: 3, scope: !3071, file: !838, line: 78, type: !482)
!3076 = !DILocalVariable(name: "ap", scope: !3071, file: !838, line: 80, type: !3051)
!3077 = !DILocalVariable(name: "mask", scope: !3071, file: !838, line: 82, type: !92)
!3078 = !DILocation(line: 0, scope: !3071)
!3079 = !DILocation(line: 80, column: 5, scope: !3071)
!3080 = !DILocation(line: 80, column: 13, scope: !3071)
!3081 = !DILocation(line: 82, column: 5, scope: !3071)
!3082 = !DILocation(line: 83, column: 5, scope: !3071)
!3083 = !DILocation(line: 85, column: 5, scope: !3071)
!3084 = !DILocation(line: 86, column: 5, scope: !3071)
!3085 = !DILocation(line: 87, column: 5, scope: !3071)
!3086 = !DILocation(line: 89, column: 37, scope: !3071)
!3087 = !DILocation(line: 89, column: 5, scope: !3071)
!3088 = !DILocation(line: 91, column: 1, scope: !3071)
!3089 = distinct !DISubprogram(name: "log_hal_warning_internal", scope: !838, file: !838, line: 92, type: !3044, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !3090)
!3090 = !{!3091, !3092, !3093, !3094, !3095}
!3091 = !DILocalVariable(name: "func", arg: 1, scope: !3089, file: !838, line: 92, type: !482)
!3092 = !DILocalVariable(name: "line", arg: 2, scope: !3089, file: !838, line: 92, type: !13)
!3093 = !DILocalVariable(name: "message", arg: 3, scope: !3089, file: !838, line: 92, type: !482)
!3094 = !DILocalVariable(name: "ap", scope: !3089, file: !838, line: 94, type: !3051)
!3095 = !DILocalVariable(name: "mask", scope: !3089, file: !838, line: 96, type: !92)
!3096 = !DILocation(line: 0, scope: !3089)
!3097 = !DILocation(line: 94, column: 5, scope: !3089)
!3098 = !DILocation(line: 94, column: 13, scope: !3089)
!3099 = !DILocation(line: 96, column: 5, scope: !3089)
!3100 = !DILocation(line: 97, column: 5, scope: !3089)
!3101 = !DILocation(line: 99, column: 5, scope: !3089)
!3102 = !DILocation(line: 100, column: 5, scope: !3089)
!3103 = !DILocation(line: 101, column: 5, scope: !3089)
!3104 = !DILocation(line: 103, column: 37, scope: !3089)
!3105 = !DILocation(line: 103, column: 5, scope: !3089)
!3106 = !DILocation(line: 105, column: 1, scope: !3089)
!3107 = distinct !DISubprogram(name: "log_hal_info_internal", scope: !838, file: !838, line: 106, type: !3044, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !3108)
!3108 = !{!3109, !3110, !3111, !3112, !3113}
!3109 = !DILocalVariable(name: "func", arg: 1, scope: !3107, file: !838, line: 106, type: !482)
!3110 = !DILocalVariable(name: "line", arg: 2, scope: !3107, file: !838, line: 106, type: !13)
!3111 = !DILocalVariable(name: "message", arg: 3, scope: !3107, file: !838, line: 106, type: !482)
!3112 = !DILocalVariable(name: "ap", scope: !3107, file: !838, line: 108, type: !3051)
!3113 = !DILocalVariable(name: "mask", scope: !3107, file: !838, line: 110, type: !92)
!3114 = !DILocation(line: 0, scope: !3107)
!3115 = !DILocation(line: 108, column: 5, scope: !3107)
!3116 = !DILocation(line: 108, column: 13, scope: !3107)
!3117 = !DILocation(line: 110, column: 5, scope: !3107)
!3118 = !DILocation(line: 111, column: 5, scope: !3107)
!3119 = !DILocation(line: 113, column: 5, scope: !3107)
!3120 = !DILocation(line: 114, column: 5, scope: !3107)
!3121 = !DILocation(line: 115, column: 5, scope: !3107)
!3122 = !DILocation(line: 117, column: 37, scope: !3107)
!3123 = !DILocation(line: 117, column: 5, scope: !3107)
!3124 = !DILocation(line: 119, column: 1, scope: !3107)
!3125 = distinct !DISubprogram(name: "log_hal_dump_internal", scope: !838, file: !838, line: 121, type: !3126, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !837, retainedNodes: !3130)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{null, !482, !13, !482, !3128, !13, null}
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 32)
!3129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3130 = !{!3131, !3132, !3133, !3134, !3135}
!3131 = !DILocalVariable(name: "func", arg: 1, scope: !3125, file: !838, line: 121, type: !482)
!3132 = !DILocalVariable(name: "line", arg: 2, scope: !3125, file: !838, line: 121, type: !13)
!3133 = !DILocalVariable(name: "message", arg: 3, scope: !3125, file: !838, line: 121, type: !482)
!3134 = !DILocalVariable(name: "data", arg: 4, scope: !3125, file: !838, line: 121, type: !3128)
!3135 = !DILocalVariable(name: "length", arg: 5, scope: !3125, file: !838, line: 121, type: !13)
!3136 = !DILocation(line: 0, scope: !3125)
!3137 = !DILocation(line: 123, column: 1, scope: !3125)
!3138 = distinct !DISubprogram(name: "hal_crypt_lock_take", scope: !141, file: !141, line: 51, type: !3139, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3141)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!172}
!3141 = !{!3142}
!3142 = !DILocalVariable(name: "irq_status", scope: !3138, file: !141, line: 53, type: !92)
!3143 = !DILocation(line: 54, column: 18, scope: !3138)
!3144 = !DILocation(line: 0, scope: !3138)
!3145 = !DILocation(line: 55, column: 9, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3138, file: !141, line: 55, column: 9)
!3147 = !{i8 0, i8 2}
!3148 = !DILocation(line: 55, column: 9, scope: !3138)
!3149 = !DILocation(line: 59, column: 18, scope: !3138)
!3150 = !DILocation(line: 61, column: 5, scope: !3138)
!3151 = !DILocation(line: 62, column: 1, scope: !3138)
!3152 = distinct !DISubprogram(name: "hal_crypt_lock_give", scope: !141, file: !141, line: 66, type: !75, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !1130)
!3153 = !DILocation(line: 68, column: 18, scope: !3152)
!3154 = !DILocation(line: 69, column: 1, scope: !3152)
!3155 = distinct !DISubprogram(name: "hal_aes_encrypt_with_padding", scope: !141, file: !141, line: 144, type: !3156, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3165)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!3158, !3159, !3159, !3159, !363, !150}
!3158 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_aes_status_t", file: !144, line: 293, baseType: !143)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 32)
!3160 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_aes_buffer_t", file: !144, line: 307, baseType: !3161)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !144, line: 304, size: 64, elements: !3162)
!3162 = !{!3163, !3164}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3161, file: !144, line: 305, baseType: !363, size: 32)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3161, file: !144, line: 306, baseType: !92, size: 32, offset: 32)
!3165 = !{!3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3178, !3180, !3181}
!3166 = !DILocalVariable(name: "encrypted_text", arg: 1, scope: !3155, file: !141, line: 144, type: !3159)
!3167 = !DILocalVariable(name: "plain_text", arg: 2, scope: !3155, file: !141, line: 145, type: !3159)
!3168 = !DILocalVariable(name: "key", arg: 3, scope: !3155, file: !141, line: 146, type: !3159)
!3169 = !DILocalVariable(name: "init_vector", arg: 4, scope: !3155, file: !141, line: 147, type: !363)
!3170 = !DILocalVariable(name: "mode", arg: 5, scope: !3155, file: !141, line: 148, type: !150)
!3171 = !DILocalVariable(name: "last_block_size", scope: !3155, file: !141, line: 157, type: !92)
!3172 = !DILocalVariable(name: "block_num", scope: !3155, file: !141, line: 158, type: !92)
!3173 = !DILocalVariable(name: "padding_size", scope: !3155, file: !141, line: 159, type: !150)
!3174 = !DILocalVariable(name: "iv", scope: !3155, file: !141, line: 160, type: !363)
!3175 = !DILocalVariable(name: "first_encypt_size", scope: !3176, file: !141, line: 182, type: !92)
!3176 = distinct !DILexicalBlock(scope: !3177, file: !141, line: 181, column: 24)
!3177 = distinct !DILexicalBlock(scope: !3155, file: !141, line: 181, column: 9)
!3178 = !DILocalVariable(name: "data_block", scope: !3176, file: !141, line: 193, type: !3179)
!3179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 128, elements: !434)
!3180 = !DILocalVariable(name: "init_vector2", scope: !3176, file: !141, line: 197, type: !363)
!3181 = !DILocalVariable(name: "data_block", scope: !3182, file: !141, line: 215, type: !3179)
!3182 = distinct !DILexicalBlock(scope: !3177, file: !141, line: 214, column: 12)
!3183 = !DILocation(line: 0, scope: !3155)
!3184 = !DILocation(line: 150, column: 15, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3155, file: !141, line: 150, column: 9)
!3186 = !DILocation(line: 151, column: 13, scope: !3185)
!3187 = !DILocation(line: 154, column: 9, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3185, file: !141, line: 153, column: 39)
!3189 = !DILocation(line: 155, column: 9, scope: !3188)
!3190 = !DILocation(line: 157, column: 44, scope: !3155)
!3191 = !DILocation(line: 157, column: 51, scope: !3155)
!3192 = !DILocation(line: 182, column: 48, scope: !3176)
!3193 = !DILocation(line: 159, column: 28, scope: !3155)
!3194 = !DILocation(line: 162, column: 25, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3155, file: !141, line: 162, column: 9)
!3196 = !DILocation(line: 162, column: 54, scope: !3195)
!3197 = !DILocation(line: 162, column: 32, scope: !3195)
!3198 = !DILocation(line: 162, column: 9, scope: !3155)
!3199 = !DILocation(line: 163, column: 9, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3195, file: !141, line: 162, column: 71)
!3201 = !DILocation(line: 164, column: 9, scope: !3200)
!3202 = !DILocation(line: 167, column: 5, scope: !3155)
!3203 = !DILocation(line: 169, column: 5, scope: !3155)
!3204 = !DILocation(line: 170, column: 5, scope: !3155)
!3205 = !DILocation(line: 171, column: 5, scope: !3155)
!3206 = !DILocation(line: 173, column: 31, scope: !3155)
!3207 = !DILocation(line: 173, column: 17, scope: !3155)
!3208 = !DILocation(line: 173, column: 44, scope: !3155)
!3209 = !DILocation(line: 173, column: 5, scope: !3155)
!3210 = !DILocation(line: 175, column: 22, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3155, file: !141, line: 175, column: 9)
!3212 = !DILocation(line: 0, scope: !3211)
!3213 = !DILocation(line: 181, column: 19, scope: !3177)
!3214 = !DILocation(line: 181, column: 9, scope: !3155)
!3215 = !DILocation(line: 0, scope: !3176)
!3216 = !DILocation(line: 183, column: 65, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3176, file: !141, line: 183, column: 13)
!3218 = !DILocation(line: 184, column: 65, scope: !3217)
!3219 = !DILocation(line: 185, column: 61, scope: !3217)
!3220 = !DILocation(line: 183, column: 34, scope: !3217)
!3221 = !DILocation(line: 183, column: 31, scope: !3217)
!3222 = !DILocation(line: 183, column: 13, scope: !3176)
!3223 = !DILocation(line: 188, column: 13, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3217, file: !141, line: 187, column: 63)
!3225 = !DILocation(line: 189, column: 13, scope: !3224)
!3226 = !DILocation(line: 193, column: 9, scope: !3176)
!3227 = !DILocation(line: 193, column: 17, scope: !3176)
!3228 = !DILocation(line: 194, column: 40, scope: !3176)
!3229 = !DILocation(line: 194, column: 47, scope: !3176)
!3230 = !DILocation(line: 194, column: 9, scope: !3176)
!3231 = !DILocation(line: 195, column: 27, scope: !3176)
!3232 = !DILocation(line: 195, column: 9, scope: !3176)
!3233 = !DILocation(line: 198, column: 13, scope: !3176)
!3234 = !DILocation(line: 205, column: 72, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3176, file: !141, line: 205, column: 13)
!3236 = !DILocation(line: 206, column: 65, scope: !3235)
!3237 = !DILocation(line: 205, column: 34, scope: !3235)
!3238 = !DILocation(line: 205, column: 31, scope: !3235)
!3239 = !DILocation(line: 205, column: 13, scope: !3176)
!3240 = !DILocation(line: 214, column: 5, scope: !3177)
!3241 = !DILocation(line: 210, column: 13, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3235, file: !141, line: 209, column: 54)
!3243 = !DILocation(line: 211, column: 13, scope: !3242)
!3244 = !DILocation(line: 215, column: 9, scope: !3182)
!3245 = !DILocation(line: 215, column: 17, scope: !3182)
!3246 = !DILocation(line: 216, column: 40, scope: !3182)
!3247 = !DILocation(line: 216, column: 60, scope: !3182)
!3248 = !DILocation(line: 216, column: 9, scope: !3182)
!3249 = !DILocation(line: 217, column: 27, scope: !3182)
!3250 = !DILocation(line: 217, column: 9, scope: !3182)
!3251 = !DILocation(line: 218, column: 65, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3182, file: !141, line: 218, column: 13)
!3253 = !DILocation(line: 219, column: 65, scope: !3252)
!3254 = !DILocation(line: 218, column: 34, scope: !3252)
!3255 = !DILocation(line: 218, column: 31, scope: !3252)
!3256 = !DILocation(line: 218, column: 13, scope: !3182)
!3257 = !DILocation(line: 223, column: 13, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3252, file: !141, line: 222, column: 63)
!3259 = !DILocation(line: 224, column: 13, scope: !3258)
!3260 = !DILocation(line: 227, column: 5, scope: !3177)
!3261 = !DILocation(line: 229, column: 46, scope: !3155)
!3262 = !DILocation(line: 229, column: 28, scope: !3155)
!3263 = !DILocation(line: 231, column: 5, scope: !3155)
!3264 = !DILocation(line: 232, column: 5, scope: !3155)
!3265 = !DILocation(line: 233, column: 1, scope: !3155)
!3266 = distinct !DISubprogram(name: "aes_operation_done", scope: !141, file: !141, line: 76, type: !254, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3267)
!3267 = !{!3268}
!3268 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3266, file: !141, line: 76, type: !171)
!3269 = !DILocation(line: 0, scope: !3266)
!3270 = !DILocation(line: 78, column: 5, scope: !3266)
!3271 = !DILocation(line: 79, column: 5, scope: !3266)
!3272 = !DILocation(line: 81, column: 19, scope: !3266)
!3273 = !DILocation(line: 83, column: 5, scope: !3266)
!3274 = !DILocation(line: 84, column: 1, scope: !3266)
!3275 = distinct !DISubprogram(name: "do_aes_encrypt", scope: !141, file: !141, line: 86, type: !3276, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3278)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!3158, !363, !92, !363, !92, !363}
!3278 = !{!3279, !3280, !3281, !3282, !3283, !3284, !3285}
!3279 = !DILocalVariable(name: "encrypt_buffer", arg: 1, scope: !3275, file: !141, line: 86, type: !363)
!3280 = !DILocalVariable(name: "encrypt_buffer_length", arg: 2, scope: !3275, file: !141, line: 87, type: !92)
!3281 = !DILocalVariable(name: "plain_buffer", arg: 3, scope: !3275, file: !141, line: 88, type: !363)
!3282 = !DILocalVariable(name: "plain_buffer_length", arg: 4, scope: !3275, file: !141, line: 89, type: !92)
!3283 = !DILocalVariable(name: "init_vector", arg: 5, scope: !3275, file: !141, line: 90, type: !363)
!3284 = !DILocalVariable(name: "ret_val", scope: !3275, file: !141, line: 93, type: !172)
!3285 = !DILocalVariable(name: "wait_count", scope: !3275, file: !141, line: 103, type: !92)
!3286 = !DILocation(line: 0, scope: !3275)
!3287 = !DILocation(line: 92, column: 19, scope: !3275)
!3288 = !DILocation(line: 94, column: 35, scope: !3275)
!3289 = !DILocation(line: 96, column: 35, scope: !3275)
!3290 = !DILocation(line: 93, column: 23, scope: !3275)
!3291 = !DILocation(line: 99, column: 17, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3275, file: !141, line: 99, column: 9)
!3293 = !DILocation(line: 99, column: 9, scope: !3275)
!3294 = !DILocation(line: 100, column: 9, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3292, file: !141, line: 99, column: 22)
!3296 = !DILocation(line: 101, column: 9, scope: !3295)
!3297 = !DILocation(line: 104, column: 13, scope: !3275)
!3298 = !DILocation(line: 104, column: 5, scope: !3275)
!3299 = !DILocation(line: 106, column: 19, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3275, file: !141, line: 104, column: 28)
!3301 = !DILocation(line: 107, column: 24, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3300, file: !141, line: 107, column: 13)
!3303 = !DILocation(line: 107, column: 13, scope: !3300)
!3304 = distinct !{!3304, !3298, !3305}
!3305 = !DILocation(line: 111, column: 5, scope: !3275)
!3306 = !DILocation(line: 108, column: 13, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3302, file: !141, line: 107, column: 50)
!3308 = !DILocation(line: 109, column: 13, scope: !3307)
!3309 = !DILocation(line: 113, column: 1, scope: !3275)
!3310 = distinct !DISubprogram(name: "hal_aes_decrypt", scope: !141, file: !141, line: 235, type: !3156, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3311)
!3311 = !{!3312, !3313, !3314, !3315, !3316, !3317}
!3312 = !DILocalVariable(name: "plain_text", arg: 1, scope: !3310, file: !141, line: 235, type: !3159)
!3313 = !DILocalVariable(name: "encrypted_text", arg: 2, scope: !3310, file: !141, line: 236, type: !3159)
!3314 = !DILocalVariable(name: "key", arg: 3, scope: !3310, file: !141, line: 237, type: !3159)
!3315 = !DILocalVariable(name: "init_vector", arg: 4, scope: !3310, file: !141, line: 238, type: !363)
!3316 = !DILocalVariable(name: "mode", arg: 5, scope: !3310, file: !141, line: 239, type: !150)
!3317 = !DILocalVariable(name: "padding_size", scope: !3310, file: !141, line: 285, type: !150)
!3318 = !DILocation(line: 0, scope: !3310)
!3319 = !DILocation(line: 241, column: 15, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3310, file: !141, line: 241, column: 9)
!3321 = !DILocation(line: 242, column: 13, scope: !3320)
!3322 = !DILocation(line: 245, column: 9, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3320, file: !141, line: 244, column: 39)
!3324 = !DILocation(line: 246, column: 9, scope: !3323)
!3325 = !DILocation(line: 249, column: 26, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3310, file: !141, line: 249, column: 9)
!3327 = !DILocation(line: 249, column: 33, scope: !3326)
!3328 = !DILocation(line: 249, column: 56, scope: !3326)
!3329 = !DILocation(line: 249, column: 9, scope: !3310)
!3330 = !DILocation(line: 250, column: 9, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3326, file: !141, line: 249, column: 62)
!3332 = !DILocation(line: 251, column: 9, scope: !3331)
!3333 = !DILocation(line: 253, column: 21, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3310, file: !141, line: 253, column: 9)
!3335 = !DILocation(line: 253, column: 54, scope: !3334)
!3336 = !DILocation(line: 253, column: 28, scope: !3334)
!3337 = !DILocation(line: 253, column: 9, scope: !3310)
!3338 = !DILocation(line: 254, column: 9, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3334, file: !141, line: 253, column: 78)
!3340 = !DILocation(line: 256, column: 9, scope: !3339)
!3341 = !DILocation(line: 258, column: 15, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3310, file: !141, line: 258, column: 9)
!3343 = !DILocation(line: 259, column: 13, scope: !3342)
!3344 = !DILocation(line: 261, column: 9, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3342, file: !141, line: 260, column: 57)
!3346 = !DILocation(line: 262, column: 9, scope: !3345)
!3347 = !DILocation(line: 265, column: 5, scope: !3310)
!3348 = !DILocation(line: 267, column: 5, scope: !3310)
!3349 = !DILocation(line: 268, column: 5, scope: !3310)
!3350 = !DILocation(line: 269, column: 5, scope: !3310)
!3351 = !DILocation(line: 271, column: 22, scope: !3310)
!3352 = !DILocation(line: 271, column: 17, scope: !3310)
!3353 = !DILocation(line: 271, column: 35, scope: !3310)
!3354 = !DILocation(line: 271, column: 5, scope: !3310)
!3355 = !DILocation(line: 272, column: 22, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3310, file: !141, line: 272, column: 9)
!3357 = !DILocation(line: 0, scope: !3356)
!3358 = !DILocation(line: 279, column: 30, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3310, file: !141, line: 279, column: 9)
!3360 = !DILocation(line: 279, column: 27, scope: !3359)
!3361 = !DILocation(line: 279, column: 9, scope: !3310)
!3362 = !DILocation(line: 280, column: 9, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3359, file: !141, line: 279, column: 87)
!3364 = !DILocation(line: 281, column: 9, scope: !3363)
!3365 = !DILocation(line: 282, column: 9, scope: !3363)
!3366 = !DILocation(line: 285, column: 40, scope: !3310)
!3367 = !DILocation(line: 285, column: 63, scope: !3310)
!3368 = !DILocation(line: 285, column: 70, scope: !3310)
!3369 = !DILocation(line: 285, column: 28, scope: !3310)
!3370 = !DILocation(line: 286, column: 5, scope: !3310)
!3371 = !DILocation(line: 287, column: 42, scope: !3310)
!3372 = !DILocation(line: 287, column: 51, scope: !3310)
!3373 = !DILocation(line: 287, column: 49, scope: !3310)
!3374 = !DILocation(line: 287, column: 24, scope: !3310)
!3375 = !DILocation(line: 289, column: 5, scope: !3310)
!3376 = !DILocation(line: 291, column: 1, scope: !3310)
!3377 = distinct !DISubprogram(name: "do_aes_decrypt", scope: !141, file: !141, line: 115, type: !3378, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3380)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{!3158, !3159, !3159, !363}
!3380 = !{!3381, !3382, !3383, !3384, !3385}
!3381 = !DILocalVariable(name: "plain_text", arg: 1, scope: !3377, file: !141, line: 115, type: !3159)
!3382 = !DILocalVariable(name: "encrypted_text", arg: 2, scope: !3377, file: !141, line: 116, type: !3159)
!3383 = !DILocalVariable(name: "init_vector", arg: 3, scope: !3377, file: !141, line: 117, type: !363)
!3384 = !DILocalVariable(name: "ret_val", scope: !3377, file: !141, line: 121, type: !172)
!3385 = !DILocalVariable(name: "wait_count", scope: !3377, file: !141, line: 131, type: !92)
!3386 = !DILocation(line: 0, scope: !3377)
!3387 = !DILocation(line: 119, column: 19, scope: !3377)
!3388 = !DILocation(line: 121, column: 51, scope: !3377)
!3389 = !DILocation(line: 122, column: 51, scope: !3377)
!3390 = !DILocation(line: 122, column: 35, scope: !3377)
!3391 = !DILocation(line: 123, column: 47, scope: !3377)
!3392 = !DILocation(line: 124, column: 47, scope: !3377)
!3393 = !DILocation(line: 124, column: 35, scope: !3377)
!3394 = !DILocation(line: 121, column: 23, scope: !3377)
!3395 = !DILocation(line: 127, column: 17, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3377, file: !141, line: 127, column: 9)
!3397 = !DILocation(line: 127, column: 9, scope: !3377)
!3398 = !DILocation(line: 128, column: 9, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3396, file: !141, line: 127, column: 22)
!3400 = !DILocation(line: 129, column: 9, scope: !3399)
!3401 = !DILocation(line: 132, column: 13, scope: !3377)
!3402 = !DILocation(line: 132, column: 5, scope: !3377)
!3403 = !DILocation(line: 134, column: 19, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3377, file: !141, line: 132, column: 28)
!3405 = !DILocation(line: 135, column: 24, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3404, file: !141, line: 135, column: 13)
!3407 = !DILocation(line: 135, column: 13, scope: !3404)
!3408 = distinct !{!3408, !3402, !3409}
!3409 = !DILocation(line: 139, column: 5, scope: !3377)
!3410 = !DILocation(line: 136, column: 13, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3406, file: !141, line: 135, column: 50)
!3412 = !DILocation(line: 137, column: 13, scope: !3411)
!3413 = !DILocation(line: 141, column: 1, scope: !3377)
!3414 = distinct !DISubprogram(name: "hal_aes_cbc_encrypt", scope: !141, file: !141, line: 293, type: !3415, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3417)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!3158, !3159, !3159, !3159, !363}
!3417 = !{!3418, !3419, !3420, !3421}
!3418 = !DILocalVariable(name: "encrypted_text", arg: 1, scope: !3414, file: !141, line: 293, type: !3159)
!3419 = !DILocalVariable(name: "plain_text", arg: 2, scope: !3414, file: !141, line: 294, type: !3159)
!3420 = !DILocalVariable(name: "key", arg: 3, scope: !3414, file: !141, line: 295, type: !3159)
!3421 = !DILocalVariable(name: "init_vector", arg: 4, scope: !3414, file: !141, line: 296, type: !363)
!3422 = !DILocation(line: 0, scope: !3414)
!3423 = !DILocation(line: 298, column: 12, scope: !3414)
!3424 = !DILocation(line: 298, column: 5, scope: !3414)
!3425 = distinct !DISubprogram(name: "hal_aes_cbc_decrypt", scope: !141, file: !141, line: 301, type: !3415, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3426)
!3426 = !{!3427, !3428, !3429, !3430}
!3427 = !DILocalVariable(name: "plain_text", arg: 1, scope: !3425, file: !141, line: 301, type: !3159)
!3428 = !DILocalVariable(name: "encrypted_text", arg: 2, scope: !3425, file: !141, line: 302, type: !3159)
!3429 = !DILocalVariable(name: "key", arg: 3, scope: !3425, file: !141, line: 303, type: !3159)
!3430 = !DILocalVariable(name: "init_vector", arg: 4, scope: !3425, file: !141, line: 304, type: !363)
!3431 = !DILocation(line: 0, scope: !3425)
!3432 = !DILocation(line: 306, column: 12, scope: !3425)
!3433 = !DILocation(line: 306, column: 5, scope: !3425)
!3434 = distinct !DISubprogram(name: "hal_aes_ecb_encrypt", scope: !141, file: !141, line: 309, type: !3435, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3437)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!3158, !3159, !3159, !3159}
!3437 = !{!3438, !3439, !3440, !3441}
!3438 = !DILocalVariable(name: "encrypted_text", arg: 1, scope: !3434, file: !141, line: 309, type: !3159)
!3439 = !DILocalVariable(name: "plain_text", arg: 2, scope: !3434, file: !141, line: 310, type: !3159)
!3440 = !DILocalVariable(name: "key", arg: 3, scope: !3434, file: !141, line: 311, type: !3159)
!3441 = !DILocalVariable(name: "init_vector", scope: !3434, file: !141, line: 313, type: !3179)
!3442 = !DILocation(line: 0, scope: !3434)
!3443 = !DILocation(line: 313, column: 5, scope: !3434)
!3444 = !DILocation(line: 313, column: 13, scope: !3434)
!3445 = !DILocation(line: 315, column: 12, scope: !3434)
!3446 = !DILocation(line: 316, column: 1, scope: !3434)
!3447 = !DILocation(line: 315, column: 5, scope: !3434)
!3448 = distinct !DISubprogram(name: "hal_aes_ecb_decrypt", scope: !141, file: !141, line: 318, type: !3435, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !140, retainedNodes: !3449)
!3449 = !{!3450, !3451, !3452, !3453}
!3450 = !DILocalVariable(name: "plain_text", arg: 1, scope: !3448, file: !141, line: 318, type: !3159)
!3451 = !DILocalVariable(name: "encrypted_text", arg: 2, scope: !3448, file: !141, line: 319, type: !3159)
!3452 = !DILocalVariable(name: "key", arg: 3, scope: !3448, file: !141, line: 320, type: !3159)
!3453 = !DILocalVariable(name: "init_vector", scope: !3448, file: !141, line: 322, type: !3179)
!3454 = !DILocation(line: 0, scope: !3448)
!3455 = !DILocation(line: 322, column: 5, scope: !3448)
!3456 = !DILocation(line: 322, column: 13, scope: !3448)
!3457 = !DILocation(line: 324, column: 12, scope: !3448)
!3458 = !DILocation(line: 325, column: 1, scope: !3448)
!3459 = !DILocation(line: 324, column: 5, scope: !3448)
!3460 = distinct !DISubprogram(name: "hal_nvic_init", scope: !160, file: !160, line: 60, type: !3461, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !1130)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!3463}
!3463 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_status_t", file: !163, line: 158, baseType: !162)
!3464 = !DILocation(line: 62, column: 5, scope: !3460)
!3465 = distinct !DISubprogram(name: "hal_nvic_enable_irq", scope: !160, file: !160, line: 65, type: !3466, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !3468)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!3463, !171}
!3468 = !{!3469, !3470}
!3469 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3465, file: !160, line: 65, type: !171)
!3470 = !DILocalVariable(name: "status", scope: !3465, file: !160, line: 67, type: !3463)
!3471 = !DILocation(line: 0, scope: !3465)
!3472 = !DILocation(line: 69, column: 40, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3465, file: !160, line: 69, column: 9)
!3474 = !DILocation(line: 73, column: 9, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !3473, file: !160, line: 72, column: 12)
!3476 = !DILocation(line: 77, column: 5, scope: !3465)
!3477 = !DILocation(line: 78, column: 1, scope: !3465)
!3478 = distinct !DISubprogram(name: "NVIC_EnableIRQ", scope: !176, file: !176, line: 1494, type: !3479, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !3481)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{null, !61}
!3481 = !{!3482}
!3482 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3478, file: !176, line: 1494, type: !61)
!3483 = !DILocation(line: 0, scope: !3478)
!3484 = !DILocation(line: 1497, column: 91, scope: !3478)
!3485 = !DILocation(line: 1497, column: 61, scope: !3478)
!3486 = !DILocation(line: 1497, column: 40, scope: !3478)
!3487 = !DILocation(line: 1497, column: 3, scope: !3478)
!3488 = !DILocation(line: 1497, column: 46, scope: !3478)
!3489 = !DILocation(line: 1498, column: 1, scope: !3478)
!3490 = distinct !DISubprogram(name: "hal_nvic_disable_irq", scope: !160, file: !160, line: 80, type: !3466, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !3491)
!3491 = !{!3492, !3493}
!3492 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3490, file: !160, line: 80, type: !171)
!3493 = !DILocalVariable(name: "status", scope: !3490, file: !160, line: 82, type: !3463)
!3494 = !DILocation(line: 0, scope: !3490)
!3495 = !DILocation(line: 84, column: 40, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3490, file: !160, line: 84, column: 9)
!3497 = !DILocation(line: 88, column: 9, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3496, file: !160, line: 87, column: 12)
!3499 = !DILocation(line: 92, column: 5, scope: !3490)
!3500 = !DILocation(line: 93, column: 1, scope: !3490)
!3501 = distinct !DISubprogram(name: "NVIC_DisableIRQ", scope: !176, file: !176, line: 1507, type: !3479, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !3502)
!3502 = !{!3503}
!3503 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3501, file: !176, line: 1507, type: !61)
!3504 = !DILocation(line: 0, scope: !3501)
!3505 = !DILocation(line: 1509, column: 65, scope: !3501)
!3506 = !DILocation(line: 1509, column: 44, scope: !3501)
!3507 = !DILocation(line: 1509, column: 32, scope: !3501)
!3508 = !DILocation(line: 1509, column: 3, scope: !3501)
!3509 = !DILocation(line: 1509, column: 39, scope: !3501)
!3510 = !DILocation(line: 1510, column: 1, scope: !3501)
!3511 = distinct !DISubprogram(name: "hal_nvic_get_pending_irq", scope: !160, file: !160, line: 95, type: !3512, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !3514)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!92, !171}
!3514 = !{!3515, !3516}
!3515 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3511, file: !160, line: 95, type: !171)
!3516 = !DILocalVariable(name: "ret", scope: !3511, file: !160, line: 97, type: !92)
!3517 = !DILocation(line: 0, scope: !3511)
!3518 = !DILocation(line: 99, column: 40, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3511, file: !160, line: 99, column: 9)
!3520 = !DILocation(line: 102, column: 15, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3519, file: !160, line: 101, column: 12)
!3522 = !DILocation(line: 105, column: 5, scope: !3511)
!3523 = !DILocation(line: 106, column: 1, scope: !3511)
!3524 = distinct !DISubprogram(name: "NVIC_GetPendingIRQ", scope: !176, file: !176, line: 1523, type: !3525, scopeLine: 1524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !3527)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{!92, !61}
!3527 = !{!3528}
!3528 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3524, file: !176, line: 1523, type: !61)
!3529 = !DILocation(line: 0, scope: !3524)
!3530 = !DILocation(line: 1525, column: 51, scope: !3524)
!3531 = !DILocation(line: 1525, column: 23, scope: !3524)
!3532 = !DILocation(line: 1525, column: 83, scope: !3524)
!3533 = !DILocation(line: 1525, column: 22, scope: !3524)
!3534 = !DILocation(line: 1525, column: 3, scope: !3524)
!3535 = distinct !DISubprogram(name: "hal_nvic_set_pending_irq", scope: !160, file: !160, line: 108, type: !3466, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !3536)
!3536 = !{!3537, !3538}
!3537 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3535, file: !160, line: 108, type: !171)
!3538 = !DILocalVariable(name: "status", scope: !3535, file: !160, line: 110, type: !3463)
!3539 = !DILocation(line: 0, scope: !3535)
!3540 = !DILocation(line: 112, column: 40, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3535, file: !160, line: 112, column: 9)
!3542 = !DILocation(line: 116, column: 9, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3541, file: !160, line: 115, column: 12)
!3544 = !DILocation(line: 120, column: 5, scope: !3535)
!3545 = !DILocation(line: 121, column: 1, scope: !3535)
!3546 = distinct !DISubprogram(name: "NVIC_SetPendingIRQ", scope: !176, file: !176, line: 1535, type: !3479, scopeLine: 1536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !3547)
!3547 = !{!3548}
!3548 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3546, file: !176, line: 1535, type: !61)
!3549 = !DILocation(line: 0, scope: !3546)
!3550 = !DILocation(line: 1537, column: 65, scope: !3546)
!3551 = !DILocation(line: 1537, column: 44, scope: !3546)
!3552 = !DILocation(line: 1537, column: 32, scope: !3546)
!3553 = !DILocation(line: 1537, column: 3, scope: !3546)
!3554 = !DILocation(line: 1537, column: 39, scope: !3546)
!3555 = !DILocation(line: 1538, column: 1, scope: !3546)
!3556 = distinct !DISubprogram(name: "hal_nvic_clear_pending_irq", scope: !160, file: !160, line: 123, type: !3466, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !3557)
!3557 = !{!3558, !3559}
!3558 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3556, file: !160, line: 123, type: !171)
!3559 = !DILocalVariable(name: "status", scope: !3556, file: !160, line: 125, type: !3463)
!3560 = !DILocation(line: 0, scope: !3556)
!3561 = !DILocation(line: 127, column: 40, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3556, file: !160, line: 127, column: 9)
!3563 = !DILocation(line: 131, column: 9, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3562, file: !160, line: 130, column: 12)
!3565 = !DILocation(line: 135, column: 5, scope: !3556)
!3566 = !DILocation(line: 136, column: 1, scope: !3556)
!3567 = distinct !DISubprogram(name: "NVIC_ClearPendingIRQ", scope: !176, file: !176, line: 1547, type: !3479, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !3568)
!3568 = !{!3569}
!3569 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3567, file: !176, line: 1547, type: !61)
!3570 = !DILocation(line: 0, scope: !3567)
!3571 = !DILocation(line: 1549, column: 65, scope: !3567)
!3572 = !DILocation(line: 1549, column: 44, scope: !3567)
!3573 = !DILocation(line: 1549, column: 32, scope: !3567)
!3574 = !DILocation(line: 1549, column: 3, scope: !3567)
!3575 = !DILocation(line: 1549, column: 39, scope: !3567)
!3576 = !DILocation(line: 1550, column: 1, scope: !3567)
!3577 = distinct !DISubprogram(name: "hal_nvic_set_priority", scope: !160, file: !160, line: 138, type: !3578, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !3580)
!3578 = !DISubroutineType(types: !3579)
!3579 = !{!3463, !171, !92}
!3580 = !{!3581, !3582, !3583}
!3581 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3577, file: !160, line: 138, type: !171)
!3582 = !DILocalVariable(name: "priority", arg: 2, scope: !3577, file: !160, line: 138, type: !92)
!3583 = !DILocalVariable(name: "status", scope: !3577, file: !160, line: 140, type: !3463)
!3584 = !DILocation(line: 0, scope: !3577)
!3585 = !DILocation(line: 142, column: 40, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3577, file: !160, line: 142, column: 9)
!3587 = !DILocation(line: 146, column: 9, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3586, file: !160, line: 145, column: 12)
!3589 = !DILocation(line: 150, column: 5, scope: !3577)
!3590 = !DILocation(line: 151, column: 1, scope: !3577)
!3591 = distinct !DISubprogram(name: "NVIC_SetPriority", scope: !176, file: !176, line: 1577, type: !3592, scopeLine: 1578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !3594)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{null, !61, !92}
!3594 = !{!3595, !3596}
!3595 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3591, file: !176, line: 1577, type: !61)
!3596 = !DILocalVariable(name: "priority", arg: 2, scope: !3591, file: !176, line: 1577, type: !92)
!3597 = !DILocation(line: 0, scope: !3591)
!3598 = !DILocation(line: 1582, column: 34, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3600, file: !176, line: 1581, column: 8)
!3600 = distinct !DILexicalBlock(scope: !3591, file: !176, line: 1579, column: 6)
!3601 = !DILocation(line: 1582, column: 5, scope: !3599)
!3602 = !DILocation(line: 1582, column: 32, scope: !3599)
!3603 = !DILocation(line: 1583, column: 1, scope: !3591)
!3604 = distinct !DISubprogram(name: "hal_nvic_get_priority", scope: !160, file: !160, line: 153, type: !3512, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !3605)
!3605 = !{!3606, !3607}
!3606 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3604, file: !160, line: 153, type: !171)
!3607 = !DILocalVariable(name: "ret", scope: !3604, file: !160, line: 155, type: !92)
!3608 = !DILocation(line: 0, scope: !3604)
!3609 = !DILocation(line: 157, column: 40, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3604, file: !160, line: 157, column: 9)
!3611 = !DILocation(line: 160, column: 15, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3610, file: !160, line: 159, column: 12)
!3613 = !DILocation(line: 163, column: 5, scope: !3604)
!3614 = !DILocation(line: 164, column: 1, scope: !3604)
!3615 = distinct !DISubprogram(name: "NVIC_GetPriority", scope: !176, file: !176, line: 1597, type: !3525, scopeLine: 1598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !3616)
!3616 = !{!3617}
!3617 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3615, file: !176, line: 1597, type: !61)
!3618 = !DILocation(line: 0, scope: !3615)
!3619 = !DILocation(line: 1603, column: 23, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3621, file: !176, line: 1602, column: 8)
!3621 = distinct !DILexicalBlock(scope: !3615, file: !176, line: 1600, column: 6)
!3622 = !DILocation(line: 1603, column: 60, scope: !3620)
!3623 = !DILocation(line: 1604, column: 1, scope: !3615)
!3624 = distinct !DISubprogram(name: "Flash_ReturnReady", scope: !160, file: !160, line: 173, type: !75, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !1130)
!3625 = !DILocation(line: 175, column: 1, scope: !3624)
!3626 = distinct !DISubprogram(name: "isrC_main", scope: !160, file: !160, line: 178, type: !3461, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !3627)
!3627 = !{!3628, !3629}
!3628 = !DILocalVariable(name: "status", scope: !3626, file: !160, line: 180, type: !3463)
!3629 = !DILocalVariable(name: "irq_number", scope: !3626, file: !160, line: 181, type: !171)
!3630 = !DILocation(line: 0, scope: !3626)
!3631 = !DILocation(line: 188, column: 34, scope: !3626)
!3632 = !DILocation(line: 189, column: 24, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3626, file: !160, line: 189, column: 9)
!3634 = !DILocation(line: 192, column: 48, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3633, file: !160, line: 192, column: 16)
!3636 = !DILocation(line: 192, column: 62, scope: !3635)
!3637 = !DILocation(line: 192, column: 16, scope: !3633)
!3638 = !DILocation(line: 194, column: 9, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3635, file: !160, line: 192, column: 71)
!3640 = !DILocation(line: 195, column: 9, scope: !3639)
!3641 = !DILocation(line: 197, column: 55, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !3635, file: !160, line: 196, column: 12)
!3643 = !DILocation(line: 197, column: 41, scope: !3642)
!3644 = !DILocation(line: 197, column: 53, scope: !3642)
!3645 = !DILocation(line: 198, column: 41, scope: !3642)
!3646 = !DILocation(line: 198, column: 9, scope: !3642)
!3647 = !DILocation(line: 202, column: 5, scope: !3626)
!3648 = !DILocation(line: 203, column: 1, scope: !3626)
!3649 = distinct !DISubprogram(name: "get_current_irq", scope: !160, file: !160, line: 166, type: !2024, scopeLine: 167, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !3650)
!3650 = !{!3651}
!3651 = !DILocalVariable(name: "irq_num", scope: !3649, file: !160, line: 168, type: !92)
!3652 = !DILocation(line: 168, column: 31, scope: !3649)
!3653 = !DILocation(line: 168, column: 36, scope: !3649)
!3654 = !DILocation(line: 0, scope: !3649)
!3655 = !DILocation(line: 169, column: 21, scope: !3649)
!3656 = !DILocation(line: 169, column: 5, scope: !3649)
!3657 = distinct !DISubprogram(name: "get_pending_irq", scope: !160, file: !160, line: 55, type: !2024, scopeLine: 56, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !1130)
!3658 = !DILocation(line: 57, column: 19, scope: !3657)
!3659 = !DILocation(line: 57, column: 51, scope: !3657)
!3660 = !DILocation(line: 57, column: 5, scope: !3657)
!3661 = distinct !DISubprogram(name: "hal_nvic_register_isr_handler", scope: !160, file: !160, line: 205, type: !3662, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !3665)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{!3463, !171, !3664}
!3664 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_isr_t", file: !163, line: 175, baseType: !253)
!3665 = !{!3666, !3667, !3668}
!3666 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3661, file: !160, line: 205, type: !171)
!3667 = !DILocalVariable(name: "callback", arg: 2, scope: !3661, file: !160, line: 205, type: !3664)
!3668 = !DILocalVariable(name: "mask", scope: !3661, file: !160, line: 207, type: !92)
!3669 = !DILocation(line: 0, scope: !3661)
!3670 = !DILocation(line: 209, column: 24, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3661, file: !160, line: 209, column: 9)
!3672 = !DILocation(line: 213, column: 12, scope: !3661)
!3673 = !DILocation(line: 214, column: 5, scope: !3661)
!3674 = !DILocation(line: 215, column: 37, scope: !3661)
!3675 = !DILocation(line: 215, column: 51, scope: !3661)
!3676 = !DILocation(line: 216, column: 37, scope: !3661)
!3677 = !DILocation(line: 216, column: 49, scope: !3661)
!3678 = !DILocation(line: 217, column: 5, scope: !3661)
!3679 = !DILocation(line: 219, column: 5, scope: !3661)
!3680 = !DILocation(line: 220, column: 1, scope: !3661)
!3681 = distinct !DISubprogram(name: "hal_nvic_save_and_set_interrupt_mask", scope: !160, file: !160, line: 222, type: !3682, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !3684)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!3463, !2755}
!3684 = !{!3685}
!3685 = !DILocalVariable(name: "mask", arg: 1, scope: !3681, file: !160, line: 222, type: !2755)
!3686 = !DILocation(line: 0, scope: !3681)
!3687 = !DILocation(line: 224, column: 13, scope: !3681)
!3688 = !DILocation(line: 224, column: 11, scope: !3681)
!3689 = !DILocation(line: 225, column: 5, scope: !3681)
!3690 = distinct !DISubprogram(name: "hal_nvic_restore_interrupt_mask", scope: !160, file: !160, line: 228, type: !3691, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !3693)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!3463, !92}
!3693 = !{!3694}
!3694 = !DILocalVariable(name: "mask", arg: 1, scope: !3690, file: !160, line: 228, type: !92)
!3695 = !DILocation(line: 0, scope: !3690)
!3696 = !DILocation(line: 230, column: 5, scope: !3690)
!3697 = !DILocation(line: 231, column: 5, scope: !3690)
!3698 = distinct !DISubprogram(name: "hal_pinmux_set_function", scope: !840, file: !840, line: 50, type: !3699, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !3703)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!3701, !3702, !150}
!3701 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_pinmux_status_t", file: !843, line: 238, baseType: !842)
!3702 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_pin_t", file: !273, line: 281, baseType: !849)
!3703 = !{!3704, !3705, !3706}
!3704 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3698, file: !840, line: 50, type: !3702)
!3705 = !DILocalVariable(name: "function_index", arg: 2, scope: !3698, file: !840, line: 50, type: !150)
!3706 = !DILocalVariable(name: "ret_value", scope: !3698, file: !840, line: 52, type: !172)
!3707 = !DILocation(line: 0, scope: !3698)
!3708 = !DILocation(line: 53, column: 18, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3698, file: !840, line: 53, column: 9)
!3710 = !DILocation(line: 53, column: 9, scope: !3698)
!3711 = !DILocation(line: 57, column: 24, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3698, file: !840, line: 57, column: 9)
!3713 = !DILocation(line: 57, column: 9, scope: !3698)
!3714 = !DILocation(line: 57, column: 9, scope: !3712)
!3715 = !DILocation(line: 60, column: 17, scope: !3698)
!3716 = !DILocation(line: 61, column: 12, scope: !3698)
!3717 = !DILocation(line: 61, column: 5, scope: !3698)
!3718 = !DILocation(line: 62, column: 1, scope: !3698)
!3719 = distinct !DISubprogram(name: "hal_gpio_init", scope: !840, file: !840, line: 64, type: !3720, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !3723)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!3722, !3702}
!3722 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_status_t", file: !843, line: 229, baseType: !880)
!3723 = !{!3724}
!3724 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3719, file: !840, line: 64, type: !3702)
!3725 = !DILocation(line: 0, scope: !3719)
!3726 = !DILocation(line: 66, column: 5, scope: !3719)
!3727 = distinct !DISubprogram(name: "hal_gpio_deinit", scope: !840, file: !840, line: 69, type: !3720, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !3728)
!3728 = !{!3729}
!3729 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3727, file: !840, line: 69, type: !3702)
!3730 = !DILocation(line: 0, scope: !3727)
!3731 = !DILocation(line: 71, column: 5, scope: !3727)
!3732 = distinct !DISubprogram(name: "hal_gpio_get_input", scope: !840, file: !840, line: 74, type: !3733, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !3736)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!3722, !3702, !3735}
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 32)
!3736 = !{!3737, !3738, !3739}
!3737 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3732, file: !840, line: 74, type: !3702)
!3738 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3732, file: !840, line: 74, type: !3735)
!3739 = !DILocalVariable(name: "status", scope: !3732, file: !840, line: 76, type: !3740)
!3740 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_status", file: !901, line: 67, baseType: !3741)
!3741 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !901, line: 62, size: 64, elements: !3742)
!3742 = !{!3743, !3744, !3745, !3746}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PIN", scope: !3741, file: !901, line: 63, baseType: !92, size: 32)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OUTEN", scope: !3741, file: !901, line: 64, baseType: !150, size: 8, offset: 32)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "GPI_DIN", scope: !3741, file: !901, line: 65, baseType: !150, size: 8, offset: 40)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "GPO_DOUT", scope: !3741, file: !901, line: 66, baseType: !150, size: 8, offset: 48)
!3747 = !DILocation(line: 0, scope: !3732)
!3748 = !DILocation(line: 77, column: 14, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3732, file: !840, line: 77, column: 9)
!3750 = !DILocation(line: 77, column: 9, scope: !3732)
!3751 = !DILocation(line: 81, column: 18, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3732, file: !840, line: 81, column: 9)
!3753 = !DILocation(line: 81, column: 9, scope: !3732)
!3754 = !DILocation(line: 85, column: 14, scope: !3732)
!3755 = !DILocation(line: 86, column: 18, scope: !3732)
!3756 = !DILocation(line: 86, column: 16, scope: !3732)
!3757 = !DILocation(line: 87, column: 5, scope: !3732)
!3758 = !DILocation(line: 88, column: 1, scope: !3732)
!3759 = distinct !DISubprogram(name: "hal_gpio_set_output", scope: !840, file: !840, line: 90, type: !3760, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !3762)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!3722, !3702, !907}
!3762 = !{!3763, !3764, !3765}
!3763 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3759, file: !840, line: 90, type: !3702)
!3764 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3759, file: !840, line: 90, type: !907)
!3765 = !DILocalVariable(name: "ret_value", scope: !3759, file: !840, line: 92, type: !172)
!3766 = !DILocation(line: 0, scope: !3759)
!3767 = !DILocation(line: 93, column: 18, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3759, file: !840, line: 93, column: 9)
!3769 = !DILocation(line: 93, column: 9, scope: !3759)
!3770 = !DILocation(line: 97, column: 60, scope: !3759)
!3771 = !DILocation(line: 97, column: 17, scope: !3759)
!3772 = !DILocation(line: 98, column: 12, scope: !3759)
!3773 = !DILocation(line: 98, column: 5, scope: !3759)
!3774 = !DILocation(line: 99, column: 1, scope: !3759)
!3775 = distinct !DISubprogram(name: "hal_gpio_get_output", scope: !840, file: !840, line: 101, type: !3733, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !3776)
!3776 = !{!3777, !3778, !3779}
!3777 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3775, file: !840, line: 101, type: !3702)
!3778 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3775, file: !840, line: 101, type: !3735)
!3779 = !DILocalVariable(name: "status", scope: !3775, file: !840, line: 103, type: !3740)
!3780 = !DILocation(line: 0, scope: !3775)
!3781 = !DILocation(line: 104, column: 18, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3775, file: !840, line: 104, column: 9)
!3783 = !DILocation(line: 104, column: 9, scope: !3775)
!3784 = !DILocation(line: 108, column: 14, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3775, file: !840, line: 108, column: 9)
!3786 = !DILocation(line: 108, column: 9, scope: !3775)
!3787 = !DILocation(line: 112, column: 14, scope: !3775)
!3788 = !DILocation(line: 113, column: 18, scope: !3775)
!3789 = !DILocation(line: 113, column: 16, scope: !3775)
!3790 = !DILocation(line: 114, column: 5, scope: !3775)
!3791 = !DILocation(line: 115, column: 1, scope: !3775)
!3792 = distinct !DISubprogram(name: "hal_gpio_set_direction", scope: !840, file: !840, line: 117, type: !3793, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !3796)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!3722, !3702, !3795}
!3795 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_direction_t", file: !843, line: 213, baseType: !890)
!3796 = !{!3797, !3798, !3799}
!3797 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3792, file: !840, line: 117, type: !3702)
!3798 = !DILocalVariable(name: "direction", arg: 2, scope: !3792, file: !840, line: 117, type: !3795)
!3799 = !DILocalVariable(name: "ret_value", scope: !3792, file: !840, line: 119, type: !172)
!3800 = !DILocation(line: 0, scope: !3792)
!3801 = !DILocation(line: 120, column: 18, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3792, file: !840, line: 120, column: 9)
!3803 = !DILocation(line: 120, column: 9, scope: !3792)
!3804 = !DILocation(line: 123, column: 17, scope: !3792)
!3805 = !DILocation(line: 125, column: 12, scope: !3792)
!3806 = !DILocation(line: 125, column: 5, scope: !3792)
!3807 = !DILocation(line: 126, column: 1, scope: !3792)
!3808 = distinct !DISubprogram(name: "hal_gpio_get_direction", scope: !840, file: !840, line: 128, type: !3809, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !3812)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!3722, !3702, !3811}
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 32)
!3812 = !{!3813, !3814, !3815}
!3813 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3808, file: !840, line: 128, type: !3702)
!3814 = !DILocalVariable(name: "direction", arg: 2, scope: !3808, file: !840, line: 128, type: !3811)
!3815 = !DILocalVariable(name: "status", scope: !3808, file: !840, line: 131, type: !3740)
!3816 = !DILocation(line: 0, scope: !3808)
!3817 = !DILocation(line: 132, column: 18, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3808, file: !840, line: 132, column: 9)
!3819 = !DILocation(line: 132, column: 9, scope: !3808)
!3820 = !DILocation(line: 136, column: 14, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3808, file: !840, line: 136, column: 9)
!3822 = !DILocation(line: 136, column: 9, scope: !3808)
!3823 = !DILocation(line: 140, column: 14, scope: !3808)
!3824 = !DILocation(line: 141, column: 18, scope: !3808)
!3825 = !DILocation(line: 141, column: 16, scope: !3808)
!3826 = !DILocation(line: 142, column: 5, scope: !3808)
!3827 = !DILocation(line: 143, column: 1, scope: !3808)
!3828 = distinct !DISubprogram(name: "hal_gpio_toggle_pin", scope: !840, file: !840, line: 146, type: !3720, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !3829)
!3829 = !{!3830, !3831}
!3830 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3828, file: !840, line: 146, type: !3702)
!3831 = !DILocalVariable(name: "status", scope: !3828, file: !840, line: 148, type: !3740)
!3832 = !DILocation(line: 0, scope: !3828)
!3833 = !DILocation(line: 149, column: 18, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3828, file: !840, line: 149, column: 9)
!3835 = !DILocation(line: 149, column: 9, scope: !3828)
!3836 = !DILocation(line: 153, column: 14, scope: !3828)
!3837 = !DILocation(line: 154, column: 76, scope: !3828)
!3838 = !DILocation(line: 154, column: 12, scope: !3828)
!3839 = !DILocation(line: 154, column: 5, scope: !3828)
!3840 = !DILocation(line: 155, column: 1, scope: !3828)
!3841 = distinct !DISubprogram(name: "hal_gpio_pull_up", scope: !840, file: !840, line: 157, type: !3720, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !3842)
!3842 = !{!3843, !3844}
!3843 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3841, file: !840, line: 157, type: !3702)
!3844 = !DILocalVariable(name: "ret_value", scope: !3841, file: !840, line: 159, type: !172)
!3845 = !DILocation(line: 0, scope: !3841)
!3846 = !DILocation(line: 160, column: 18, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3841, file: !840, line: 160, column: 9)
!3848 = !DILocation(line: 160, column: 9, scope: !3841)
!3849 = !DILocation(line: 164, column: 17, scope: !3841)
!3850 = !DILocation(line: 165, column: 19, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3841, file: !840, line: 165, column: 9)
!3852 = !DILocation(line: 165, column: 9, scope: !3841)
!3853 = !DILocation(line: 168, column: 17, scope: !3841)
!3854 = !DILocation(line: 169, column: 12, scope: !3841)
!3855 = !DILocation(line: 169, column: 5, scope: !3841)
!3856 = !DILocation(line: 170, column: 1, scope: !3841)
!3857 = distinct !DISubprogram(name: "hal_gpio_pull_down", scope: !840, file: !840, line: 172, type: !3720, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !3858)
!3858 = !{!3859, !3860}
!3859 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3857, file: !840, line: 172, type: !3702)
!3860 = !DILocalVariable(name: "ret_value", scope: !3857, file: !840, line: 174, type: !172)
!3861 = !DILocation(line: 0, scope: !3857)
!3862 = !DILocation(line: 175, column: 18, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3857, file: !840, line: 175, column: 9)
!3864 = !DILocation(line: 175, column: 9, scope: !3857)
!3865 = !DILocation(line: 179, column: 17, scope: !3857)
!3866 = !DILocation(line: 180, column: 19, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3857, file: !840, line: 180, column: 9)
!3868 = !DILocation(line: 180, column: 9, scope: !3857)
!3869 = !DILocation(line: 183, column: 17, scope: !3857)
!3870 = !DILocation(line: 184, column: 12, scope: !3857)
!3871 = !DILocation(line: 184, column: 5, scope: !3857)
!3872 = !DILocation(line: 185, column: 1, scope: !3857)
!3873 = distinct !DISubprogram(name: "hal_gpio_disable_pull", scope: !840, file: !840, line: 187, type: !3720, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !3874)
!3874 = !{!3875, !3876}
!3875 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3873, file: !840, line: 187, type: !3702)
!3876 = !DILocalVariable(name: "ret_value", scope: !3873, file: !840, line: 189, type: !172)
!3877 = !DILocation(line: 0, scope: !3873)
!3878 = !DILocation(line: 191, column: 18, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3873, file: !840, line: 191, column: 9)
!3880 = !DILocation(line: 191, column: 9, scope: !3873)
!3881 = !DILocation(line: 195, column: 17, scope: !3873)
!3882 = !DILocation(line: 196, column: 12, scope: !3873)
!3883 = !DILocation(line: 196, column: 5, scope: !3873)
!3884 = !DILocation(line: 197, column: 1, scope: !3873)
!3885 = distinct !DISubprogram(name: "hal_gpio_set_driving_current", scope: !840, file: !840, line: 200, type: !3886, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !3888)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!3722, !3702, !908}
!3888 = !{!3889, !3890, !3891}
!3889 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3885, file: !840, line: 200, type: !3702)
!3890 = !DILocalVariable(name: "driving", arg: 2, scope: !3885, file: !840, line: 200, type: !908)
!3891 = !DILocalVariable(name: "ret_value", scope: !3885, file: !840, line: 202, type: !172)
!3892 = !DILocation(line: 0, scope: !3885)
!3893 = !DILocation(line: 204, column: 18, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3885, file: !840, line: 204, column: 9)
!3895 = !DILocation(line: 204, column: 9, scope: !3885)
!3896 = !DILocation(line: 208, column: 64, scope: !3885)
!3897 = !DILocation(line: 208, column: 17, scope: !3885)
!3898 = !DILocation(line: 210, column: 12, scope: !3885)
!3899 = !DILocation(line: 210, column: 5, scope: !3885)
!3900 = !DILocation(line: 211, column: 1, scope: !3885)
!3901 = distinct !DISubprogram(name: "hal_gpio_get_driving_current", scope: !840, file: !840, line: 214, type: !3902, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !839, retainedNodes: !3905)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!3722, !3702, !3904}
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 32)
!3905 = !{!3906, !3907, !3908, !3909}
!3906 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3901, file: !840, line: 214, type: !3702)
!3907 = !DILocalVariable(name: "driving", arg: 2, scope: !3901, file: !840, line: 214, type: !3904)
!3908 = !DILocalVariable(name: "ret_value", scope: !3901, file: !840, line: 216, type: !172)
!3909 = !DILocalVariable(name: "value", scope: !3901, file: !840, line: 217, type: !150)
!3910 = !DILocation(line: 0, scope: !3901)
!3911 = !DILocation(line: 217, column: 5, scope: !3901)
!3912 = !DILocation(line: 219, column: 18, scope: !3913)
!3913 = distinct !DILexicalBlock(scope: !3901, file: !840, line: 219, column: 9)
!3914 = !DILocation(line: 219, column: 9, scope: !3901)
!3915 = !DILocation(line: 223, column: 17, scope: !3901)
!3916 = !DILocation(line: 225, column: 44, scope: !3901)
!3917 = !DILocation(line: 225, column: 16, scope: !3901)
!3918 = !DILocation(line: 225, column: 14, scope: !3901)
!3919 = !DILocation(line: 227, column: 12, scope: !3901)
!3920 = !DILocation(line: 227, column: 5, scope: !3901)
!3921 = !DILocation(line: 228, column: 1, scope: !3901)
!3922 = distinct !DISubprogram(name: "hal_md5_init", scope: !911, file: !911, line: 44, type: !3923, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !3935)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!3925, !3926}
!3925 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_md5_status_t", file: !914, line: 142, baseType: !913)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 32)
!3927 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_md5_context_t", file: !914, line: 160, baseType: !3928)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !914, line: 154, size: 768, elements: !3929)
!3929 = !{!3930, !3931, !3932, !3933, !3934}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !3928, file: !914, line: 155, baseType: !925, size: 128)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "message_length", scope: !3928, file: !914, line: 156, baseType: !927, size: 64, offset: 128)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3928, file: !914, line: 157, baseType: !363, size: 32, offset: 192)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3928, file: !914, line: 158, baseType: !931, size: 512, offset: 224)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "block_length", scope: !3928, file: !914, line: 159, baseType: !92, size: 32, offset: 736)
!3935 = !{!3936}
!3936 = !DILocalVariable(name: "context", arg: 1, scope: !3922, file: !911, line: 44, type: !3926)
!3937 = !DILocation(line: 0, scope: !3922)
!3938 = !DILocation(line: 46, column: 14, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3922, file: !911, line: 46, column: 9)
!3940 = !DILocation(line: 46, column: 9, scope: !3922)
!3941 = !DILocation(line: 47, column: 9, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3939, file: !911, line: 46, column: 26)
!3943 = !DILocation(line: 48, column: 9, scope: !3942)
!3944 = !DILocation(line: 51, column: 5, scope: !3922)
!3945 = !DILocation(line: 53, column: 20, scope: !3922)
!3946 = !DILocation(line: 53, column: 5, scope: !3922)
!3947 = !DILocation(line: 55, column: 5, scope: !3922)
!3948 = !DILocation(line: 56, column: 5, scope: !3922)
!3949 = !DILocation(line: 57, column: 1, scope: !3922)
!3950 = distinct !DISubprogram(name: "hal_md5_append", scope: !911, file: !911, line: 59, type: !3951, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !3953)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{!3925, !3926, !363, !92}
!3953 = !{!3954, !3955, !3956}
!3954 = !DILocalVariable(name: "context", arg: 1, scope: !3950, file: !911, line: 59, type: !3926)
!3955 = !DILocalVariable(name: "message", arg: 2, scope: !3950, file: !911, line: 59, type: !363)
!3956 = !DILocalVariable(name: "length", arg: 3, scope: !3950, file: !911, line: 59, type: !92)
!3957 = !DILocation(line: 0, scope: !3950)
!3958 = !DILocation(line: 61, column: 14, scope: !3959)
!3959 = distinct !DILexicalBlock(scope: !3950, file: !911, line: 61, column: 9)
!3960 = !DILocation(line: 61, column: 9, scope: !3950)
!3961 = !DILocation(line: 62, column: 9, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !3959, file: !911, line: 61, column: 26)
!3963 = !DILocation(line: 63, column: 9, scope: !3962)
!3964 = !DILocation(line: 66, column: 5, scope: !3950)
!3965 = !DILocation(line: 69, column: 20, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3967, file: !911, line: 69, column: 13)
!3967 = distinct !DILexicalBlock(scope: !3950, file: !911, line: 68, column: 15)
!3968 = !DILocation(line: 69, column: 13, scope: !3967)
!3969 = !DILocation(line: 70, column: 13, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3966, file: !911, line: 69, column: 42)
!3971 = !DILocation(line: 71, column: 21, scope: !3970)
!3972 = !DILocation(line: 72, column: 20, scope: !3970)
!3973 = distinct !{!3973, !3974, !3975}
!3974 = !DILocation(line: 68, column: 5, scope: !3950)
!3975 = !DILocation(line: 77, column: 5, scope: !3950)
!3976 = !DILocation(line: 74, column: 30, scope: !3977)
!3977 = distinct !DILexicalBlock(scope: !3966, file: !911, line: 73, column: 16)
!3978 = !DILocation(line: 74, column: 13, scope: !3977)
!3979 = !DILocation(line: 79, column: 5, scope: !3950)
!3980 = !DILocation(line: 80, column: 5, scope: !3950)
!3981 = !DILocation(line: 81, column: 1, scope: !3950)
!3982 = distinct !DISubprogram(name: "hal_md5_end", scope: !911, file: !911, line: 83, type: !3983, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !910, retainedNodes: !3985)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{!3925, !3926, !363}
!3985 = !{!3986, !3987}
!3986 = !DILocalVariable(name: "context", arg: 1, scope: !3982, file: !911, line: 83, type: !3926)
!3987 = !DILocalVariable(name: "digest_message", arg: 2, scope: !3982, file: !911, line: 83, type: !363)
!3988 = !DILocation(line: 0, scope: !3982)
!3989 = !DILocation(line: 85, column: 14, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3982, file: !911, line: 85, column: 9)
!3991 = !DILocation(line: 85, column: 9, scope: !3982)
!3992 = !DILocation(line: 86, column: 9, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3990, file: !911, line: 85, column: 26)
!3994 = !DILocation(line: 87, column: 9, scope: !3993)
!3995 = !DILocation(line: 89, column: 14, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3982, file: !911, line: 89, column: 9)
!3997 = !DILocation(line: 89, column: 9, scope: !3982)
!3998 = !DILocation(line: 90, column: 9, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3996, file: !911, line: 89, column: 33)
!4000 = !DILocation(line: 91, column: 9, scope: !3999)
!4001 = !DILocation(line: 94, column: 5, scope: !3982)
!4002 = !DILocation(line: 96, column: 19, scope: !3982)
!4003 = !DILocation(line: 96, column: 5, scope: !3982)
!4004 = !DILocation(line: 98, column: 5, scope: !3982)
!4005 = !DILocation(line: 99, column: 5, scope: !3982)
!4006 = !DILocation(line: 100, column: 1, scope: !3982)
!4007 = distinct !DISubprogram(name: "hal_uart_init", scope: !262, file: !262, line: 234, type: !4008, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4012)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{!4010, !323, !4011}
!4010 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_status_t", file: !265, line: 351, baseType: !264)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 32)
!4012 = !{!4013, !4014}
!4013 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4007, file: !262, line: 234, type: !323)
!4014 = !DILocalVariable(name: "uart_config", arg: 2, scope: !4007, file: !262, line: 234, type: !4011)
!4015 = !DILocation(line: 0, scope: !4007)
!4016 = !DILocation(line: 236, column: 10, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !4007, file: !262, line: 236, column: 9)
!4018 = !DILocation(line: 236, column: 9, scope: !4007)
!4019 = !DILocation(line: 239, column: 41, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !4007, file: !262, line: 239, column: 9)
!4021 = !DILocation(line: 239, column: 9, scope: !4007)
!4022 = !DILocation(line: 242, column: 5, scope: !4007)
!4023 = !DILocation(line: 243, column: 45, scope: !4007)
!4024 = !DILocation(line: 243, column: 12, scope: !4007)
!4025 = !DILocation(line: 244, column: 12, scope: !4007)
!4026 = !DILocation(line: 243, column: 5, scope: !4007)
!4027 = !DILocation(line: 245, column: 58, scope: !4007)
!4028 = !DILocation(line: 246, column: 30, scope: !4007)
!4029 = !{i32 0, i32 2}
!4030 = !DILocation(line: 246, column: 5, scope: !4007)
!4031 = !DILocation(line: 247, column: 5, scope: !4007)
!4032 = !DILocation(line: 249, column: 31, scope: !4033)
!4033 = distinct !DILexicalBlock(scope: !4007, file: !262, line: 249, column: 9)
!4034 = !DILocation(line: 249, column: 28, scope: !4033)
!4035 = !DILocation(line: 261, column: 1, scope: !4007)
!4036 = distinct !DISubprogram(name: "hal_uart_is_config_valid", scope: !262, file: !262, line: 93, type: !4037, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4041)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!156, !323, !4039}
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 32)
!4040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !334)
!4041 = !{!4042, !4043}
!4042 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4036, file: !262, line: 93, type: !323)
!4043 = !DILocalVariable(name: "uart_config", arg: 2, scope: !4036, file: !262, line: 93, type: !4039)
!4044 = !DILocation(line: 0, scope: !4036)
!4045 = !DILocation(line: 95, column: 10, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !4036, file: !262, line: 95, column: 9)
!4047 = !DILocation(line: 95, column: 9, scope: !4036)
!4048 = !DILocation(line: 101, column: 23, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4036, file: !262, line: 101, column: 9)
!4050 = !DILocation(line: 101, column: 32, scope: !4049)
!4051 = !DILocation(line: 101, column: 60, scope: !4049)
!4052 = !DILocation(line: 102, column: 27, scope: !4049)
!4053 = !DILocation(line: 102, column: 34, scope: !4049)
!4054 = !DILocation(line: 102, column: 58, scope: !4049)
!4055 = !DILocation(line: 103, column: 27, scope: !4049)
!4056 = !DILocation(line: 103, column: 36, scope: !4049)
!4057 = !DILocation(line: 103, column: 59, scope: !4049)
!4058 = !DILocation(line: 104, column: 27, scope: !4049)
!4059 = !DILocation(line: 104, column: 39, scope: !4049)
!4060 = !DILocation(line: 101, column: 9, scope: !4036)
!4061 = !DILocation(line: 109, column: 1, scope: !4036)
!4062 = distinct !DISubprogram(name: "hal_uart_translate_port", scope: !262, file: !262, line: 139, type: !4063, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4065)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!2608, !323}
!4065 = !{!4066}
!4066 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4062, file: !262, line: 139, type: !323)
!4067 = !DILocation(line: 0, scope: !4062)
!4068 = !DILocation(line: 141, column: 24, scope: !4062)
!4069 = !DILocation(line: 141, column: 12, scope: !4062)
!4070 = !DILocation(line: 141, column: 5, scope: !4062)
!4071 = distinct !DISubprogram(name: "hal_uart_set_format", scope: !262, file: !262, line: 593, type: !4072, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4074)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{!4010, !323, !4039}
!4074 = !{!4075, !4076}
!4075 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4071, file: !262, line: 593, type: !323)
!4076 = !DILocalVariable(name: "config", arg: 2, scope: !4071, file: !262, line: 593, type: !4039)
!4077 = !DILocation(line: 0, scope: !4071)
!4078 = !DILocation(line: 595, column: 10, scope: !4079)
!4079 = distinct !DILexicalBlock(scope: !4071, file: !262, line: 595, column: 9)
!4080 = !DILocation(line: 595, column: 9, scope: !4071)
!4081 = !DILocation(line: 598, column: 45, scope: !4071)
!4082 = !DILocation(line: 598, column: 12, scope: !4071)
!4083 = !DILocation(line: 598, column: 59, scope: !4071)
!4084 = !DILocation(line: 598, column: 5, scope: !4071)
!4085 = !DILocation(line: 599, column: 23, scope: !4071)
!4086 = !DILocation(line: 600, column: 59, scope: !4071)
!4087 = !DILocation(line: 600, column: 23, scope: !4071)
!4088 = !DILocation(line: 601, column: 62, scope: !4071)
!4089 = !DILocation(line: 601, column: 23, scope: !4071)
!4090 = !DILocation(line: 602, column: 57, scope: !4071)
!4091 = !DILocation(line: 602, column: 23, scope: !4071)
!4092 = !DILocation(line: 603, column: 58, scope: !4071)
!4093 = !DILocation(line: 603, column: 23, scope: !4071)
!4094 = !DILocation(line: 599, column: 5, scope: !4071)
!4095 = !DILocation(line: 604, column: 5, scope: !4071)
!4096 = !DILocation(line: 605, column: 1, scope: !4071)
!4097 = distinct !DISubprogram(name: "hal_uart_translate_baudrate", scope: !262, file: !262, line: 145, type: !4098, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4100)
!4098 = !DISubroutineType(types: !4099)
!4099 = !{!92, !338}
!4100 = !{!4101, !4102}
!4101 = !DILocalVariable(name: "bandrate", arg: 1, scope: !4097, file: !262, line: 145, type: !338)
!4102 = !DILocalVariable(name: "baudrate_tbl", scope: !4097, file: !262, line: 147, type: !4103)
!4103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 416, elements: !4104)
!4104 = !{!4105}
!4105 = !DISubrange(count: 13)
!4106 = !DILocation(line: 0, scope: !4097)
!4107 = !DILocation(line: 147, column: 14, scope: !4097)
!4108 = !DILocation(line: 151, column: 12, scope: !4097)
!4109 = !DILocation(line: 151, column: 5, scope: !4097)
!4110 = distinct !DISubprogram(name: "hal_uart_translate_word_length", scope: !262, file: !262, line: 155, type: !4111, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4113)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{!2678, !340}
!4113 = !{!4114, !4115}
!4114 = !DILocalVariable(name: "word_length", arg: 1, scope: !4110, file: !262, line: 155, type: !340)
!4115 = !DILocalVariable(name: "databit_tbl", scope: !4110, file: !262, line: 157, type: !4116)
!4116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2678, size: 64, elements: !238)
!4117 = !DILocation(line: 0, scope: !4110)
!4118 = !DILocation(line: 157, column: 14, scope: !4110)
!4119 = !DILocation(line: 160, column: 12, scope: !4110)
!4120 = !DILocation(line: 160, column: 5, scope: !4110)
!4121 = distinct !DISubprogram(name: "hal_uart_translate_parity", scope: !262, file: !262, line: 164, type: !4122, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4124)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{!2678, !344}
!4124 = !{!4125, !4126}
!4125 = !DILocalVariable(name: "parity", arg: 1, scope: !4121, file: !262, line: 164, type: !344)
!4126 = !DILocalVariable(name: "parity_tbl", scope: !4121, file: !262, line: 166, type: !4127)
!4127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2678, size: 80, elements: !242)
!4128 = !DILocation(line: 0, scope: !4121)
!4129 = !DILocation(line: 166, column: 14, scope: !4121)
!4130 = !DILocation(line: 169, column: 12, scope: !4121)
!4131 = !DILocation(line: 169, column: 5, scope: !4121)
!4132 = distinct !DISubprogram(name: "hal_uart_translate_stopbit", scope: !262, file: !262, line: 173, type: !4133, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4135)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{!2678, !342}
!4135 = !{!4136, !4137}
!4136 = !DILocalVariable(name: "stopbit", arg: 1, scope: !4132, file: !262, line: 173, type: !342)
!4137 = !DILocalVariable(name: "stopbit_tbl", scope: !4132, file: !262, line: 175, type: !4138)
!4138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2678, size: 48, elements: !500)
!4139 = !DILocation(line: 0, scope: !4132)
!4140 = !DILocation(line: 175, column: 14, scope: !4132)
!4141 = !DILocation(line: 178, column: 12, scope: !4132)
!4142 = !DILocation(line: 178, column: 5, scope: !4132)
!4143 = distinct !DISubprogram(name: "hal_uart_is_port_valid", scope: !262, file: !262, line: 87, type: !4144, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4146)
!4144 = !DISubroutineType(types: !4145)
!4145 = !{!156, !323}
!4146 = !{!4147}
!4147 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4143, file: !262, line: 87, type: !323)
!4148 = !DILocation(line: 0, scope: !4143)
!4149 = !DILocation(line: 89, column: 23, scope: !4143)
!4150 = !DILocation(line: 89, column: 5, scope: !4143)
!4151 = distinct !DISubprogram(name: "hal_uart_deinit", scope: !262, file: !262, line: 264, type: !4152, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4154)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{!4010, !323}
!4154 = !{!4155}
!4155 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4151, file: !262, line: 264, type: !323)
!4156 = !DILocation(line: 0, scope: !4151)
!4157 = !DILocation(line: 266, column: 10, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4151, file: !262, line: 266, column: 9)
!4159 = !DILocation(line: 266, column: 9, scope: !4151)
!4160 = !DILocation(line: 269, column: 41, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4151, file: !262, line: 269, column: 9)
!4162 = !DILocation(line: 269, column: 62, scope: !4161)
!4163 = !DILocation(line: 269, column: 9, scope: !4151)
!4164 = !DILocation(line: 272, column: 5, scope: !4151)
!4165 = !DILocation(line: 275, column: 22, scope: !4151)
!4166 = !DILocation(line: 275, column: 5, scope: !4151)
!4167 = !DILocation(line: 284, column: 5, scope: !4151)
!4168 = !DILocation(line: 286, column: 5, scope: !4151)
!4169 = !DILocation(line: 287, column: 1, scope: !4151)
!4170 = distinct !DISubprogram(name: "hal_uart_put_char", scope: !262, file: !262, line: 290, type: !4171, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4173)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{null, !323, !315}
!4173 = !{!4174, !4175, !4176}
!4174 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4170, file: !262, line: 290, type: !323)
!4175 = !DILocalVariable(name: "byte", arg: 2, scope: !4170, file: !262, line: 290, type: !315)
!4176 = !DILocalVariable(name: "int_no", scope: !4170, file: !262, line: 292, type: !2608)
!4177 = !DILocation(line: 0, scope: !4170)
!4178 = !DILocation(line: 292, column: 26, scope: !4170)
!4179 = !DILocation(line: 294, column: 16, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !4170, file: !262, line: 294, column: 9)
!4181 = !DILocation(line: 294, column: 9, scope: !4170)
!4182 = !DILocation(line: 295, column: 9, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4180, file: !262, line: 294, column: 34)
!4184 = !DILocation(line: 296, column: 5, scope: !4183)
!4185 = !DILocation(line: 299, column: 1, scope: !4170)
!4186 = distinct !DISubprogram(name: "hal_uart_send_polling", scope: !262, file: !262, line: 302, type: !4187, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4189)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!92, !323, !2815, !92}
!4189 = !{!4190, !4191, !4192, !4193, !4194}
!4190 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4186, file: !262, line: 302, type: !323)
!4191 = !DILocalVariable(name: "data", arg: 2, scope: !4186, file: !262, line: 302, type: !2815)
!4192 = !DILocalVariable(name: "size", arg: 3, scope: !4186, file: !262, line: 302, type: !92)
!4193 = !DILocalVariable(name: "int_no", scope: !4186, file: !262, line: 304, type: !2608)
!4194 = !DILocalVariable(name: "index", scope: !4186, file: !262, line: 305, type: !92)
!4195 = !DILocation(line: 0, scope: !4186)
!4196 = !DILocation(line: 304, column: 26, scope: !4186)
!4197 = !DILocation(line: 307, column: 14, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !4186, file: !262, line: 307, column: 9)
!4199 = !DILocation(line: 307, column: 9, scope: !4186)
!4200 = !DILocation(line: 313, column: 53, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4202, file: !262, line: 312, column: 48)
!4202 = distinct !DILexicalBlock(scope: !4203, file: !262, line: 312, column: 9)
!4203 = distinct !DILexicalBlock(scope: !4204, file: !262, line: 312, column: 9)
!4204 = distinct !DILexicalBlock(scope: !4205, file: !262, line: 311, column: 33)
!4205 = distinct !DILexicalBlock(scope: !4186, file: !262, line: 311, column: 9)
!4206 = !DILocation(line: 313, column: 13, scope: !4201)
!4207 = !DILocation(line: 312, column: 44, scope: !4202)
!4208 = !DILocation(line: 312, column: 31, scope: !4202)
!4209 = !DILocation(line: 312, column: 9, scope: !4203)
!4210 = distinct !{!4210, !4209, !4211}
!4211 = !DILocation(line: 314, column: 9, scope: !4203)
!4212 = !DILocation(line: 318, column: 1, scope: !4186)
!4213 = distinct !DISubprogram(name: "hal_uart_send_dma", scope: !262, file: !262, line: 320, type: !4187, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4214)
!4214 = !{!4215, !4216, !4217, !4218, !4219, !4220}
!4215 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4213, file: !262, line: 320, type: !323)
!4216 = !DILocalVariable(name: "data", arg: 2, scope: !4213, file: !262, line: 320, type: !2815)
!4217 = !DILocalVariable(name: "size", arg: 3, scope: !4213, file: !262, line: 320, type: !92)
!4218 = !DILocalVariable(name: "actual_space", scope: !4213, file: !262, line: 322, type: !92)
!4219 = !DILocalVariable(name: "send_size", scope: !4213, file: !262, line: 322, type: !92)
!4220 = !DILocalVariable(name: "ch", scope: !4213, file: !262, line: 323, type: !4221)
!4221 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_VFIFO_CHANNEL", file: !112, line: 144, baseType: !111)
!4222 = !DILocation(line: 0, scope: !4213)
!4223 = !DILocation(line: 322, column: 5, scope: !4213)
!4224 = !DILocation(line: 328, column: 10, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4213, file: !262, line: 328, column: 9)
!4226 = !DILocation(line: 328, column: 9, scope: !4213)
!4227 = !DILocation(line: 332, column: 15, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4213, file: !262, line: 332, column: 9)
!4229 = !DILocation(line: 332, column: 24, scope: !4228)
!4230 = !DILocation(line: 335, column: 42, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4213, file: !262, line: 335, column: 9)
!4232 = !DILocation(line: 335, column: 9, scope: !4213)
!4233 = !DILocation(line: 349, column: 30, scope: !4213)
!4234 = !DILocation(line: 349, column: 5, scope: !4213)
!4235 = !DILocation(line: 350, column: 9, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !4213, file: !262, line: 350, column: 9)
!4237 = !DILocation(line: 350, column: 22, scope: !4236)
!4238 = !DILocation(line: 355, column: 5, scope: !4213)
!4239 = !DILocation(line: 357, column: 22, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4213, file: !262, line: 357, column: 9)
!4241 = !DILocation(line: 357, column: 19, scope: !4240)
!4242 = !DILocation(line: 357, column: 9, scope: !4213)
!4243 = !DILocation(line: 358, column: 14, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4240, file: !262, line: 357, column: 36)
!4245 = !{i32 14, i32 18}
!4246 = !DILocation(line: 359, column: 9, scope: !4244)
!4247 = !DILocation(line: 360, column: 5, scope: !4244)
!4248 = !DILocation(line: 362, column: 1, scope: !4213)
!4249 = distinct !DISubprogram(name: "uart_channel_to_dma_channel", scope: !262, file: !262, line: 191, type: !4250, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4252)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{!4221, !2608, !156}
!4252 = !{!4253, !4254, !4255}
!4253 = !DILocalVariable(name: "port", arg: 1, scope: !4249, file: !262, line: 191, type: !2608)
!4254 = !DILocalVariable(name: "is_rx", arg: 2, scope: !4249, file: !262, line: 191, type: !156)
!4255 = !DILocalVariable(name: "ch", scope: !4249, file: !262, line: 193, type: !4221)
!4256 = !DILocation(line: 0, scope: !4249)
!4257 = !DILocation(line: 195, column: 14, scope: !4258)
!4258 = distinct !DILexicalBlock(scope: !4249, file: !262, line: 195, column: 9)
!4259 = !DILocation(line: 195, column: 9, scope: !4249)
!4260 = !DILocation(line: 209, column: 5, scope: !4249)
!4261 = distinct !DISubprogram(name: "hal_uart_get_char", scope: !262, file: !262, line: 365, type: !4262, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4264)
!4262 = !DISubroutineType(types: !4263)
!4263 = !{!315, !323}
!4264 = !{!4265, !4266}
!4265 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4261, file: !262, line: 365, type: !323)
!4266 = !DILocalVariable(name: "int_no", scope: !4261, file: !262, line: 367, type: !2608)
!4267 = !DILocation(line: 0, scope: !4261)
!4268 = !DILocation(line: 367, column: 26, scope: !4261)
!4269 = !DILocation(line: 369, column: 16, scope: !4270)
!4270 = distinct !DILexicalBlock(scope: !4261, file: !262, line: 369, column: 9)
!4271 = !DILocation(line: 369, column: 9, scope: !4261)
!4272 = !DILocation(line: 370, column: 22, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4270, file: !262, line: 369, column: 33)
!4274 = !DILocation(line: 370, column: 9, scope: !4273)
!4275 = !DILocation(line: 0, scope: !4270)
!4276 = !DILocation(line: 375, column: 1, scope: !4261)
!4277 = distinct !DISubprogram(name: "hal_uart_get_char_unblocking", scope: !262, file: !262, line: 377, type: !4278, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4280)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{!92, !323}
!4280 = !{!4281, !4282}
!4281 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4277, file: !262, line: 377, type: !323)
!4282 = !DILocalVariable(name: "int_no", scope: !4277, file: !262, line: 379, type: !2608)
!4283 = !DILocation(line: 0, scope: !4277)
!4284 = !DILocation(line: 379, column: 26, scope: !4277)
!4285 = !DILocation(line: 381, column: 16, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4277, file: !262, line: 381, column: 9)
!4287 = !DILocation(line: 381, column: 9, scope: !4277)
!4288 = !DILocation(line: 382, column: 16, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4286, file: !262, line: 381, column: 33)
!4290 = !DILocation(line: 382, column: 9, scope: !4289)
!4291 = !DILocation(line: 0, scope: !4286)
!4292 = !DILocation(line: 387, column: 1, scope: !4277)
!4293 = distinct !DISubprogram(name: "hal_uart_receive_polling", scope: !262, file: !262, line: 390, type: !4294, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4296)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{!92, !323, !363, !92}
!4296 = !{!4297, !4298, !4299, !4300, !4301}
!4297 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4293, file: !262, line: 390, type: !323)
!4298 = !DILocalVariable(name: "buffer", arg: 2, scope: !4293, file: !262, line: 390, type: !363)
!4299 = !DILocalVariable(name: "size", arg: 3, scope: !4293, file: !262, line: 390, type: !92)
!4300 = !DILocalVariable(name: "int_no", scope: !4293, file: !262, line: 392, type: !2608)
!4301 = !DILocalVariable(name: "index", scope: !4293, file: !262, line: 393, type: !92)
!4302 = !DILocation(line: 0, scope: !4293)
!4303 = !DILocation(line: 392, column: 26, scope: !4293)
!4304 = !DILocation(line: 395, column: 16, scope: !4305)
!4305 = distinct !DILexicalBlock(scope: !4293, file: !262, line: 395, column: 9)
!4306 = !DILocation(line: 395, column: 9, scope: !4293)
!4307 = !DILocation(line: 401, column: 38, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4309, file: !262, line: 400, column: 48)
!4309 = distinct !DILexicalBlock(scope: !4310, file: !262, line: 400, column: 9)
!4310 = distinct !DILexicalBlock(scope: !4311, file: !262, line: 400, column: 9)
!4311 = distinct !DILexicalBlock(scope: !4312, file: !262, line: 399, column: 33)
!4312 = distinct !DILexicalBlock(scope: !4293, file: !262, line: 399, column: 9)
!4313 = !DILocation(line: 401, column: 13, scope: !4308)
!4314 = !DILocation(line: 401, column: 27, scope: !4308)
!4315 = !DILocation(line: 400, column: 44, scope: !4309)
!4316 = !DILocation(line: 400, column: 31, scope: !4309)
!4317 = !DILocation(line: 400, column: 9, scope: !4310)
!4318 = distinct !{!4318, !4317, !4319}
!4319 = !DILocation(line: 402, column: 9, scope: !4310)
!4320 = !DILocation(line: 406, column: 1, scope: !4293)
!4321 = distinct !DISubprogram(name: "hal_uart_receive_dma", scope: !262, file: !262, line: 408, type: !4294, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4322)
!4322 = !{!4323, !4324, !4325, !4326, !4327, !4328}
!4323 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4321, file: !262, line: 408, type: !323)
!4324 = !DILocalVariable(name: "buffer", arg: 2, scope: !4321, file: !262, line: 408, type: !363)
!4325 = !DILocalVariable(name: "size", arg: 3, scope: !4321, file: !262, line: 408, type: !92)
!4326 = !DILocalVariable(name: "actual_size", scope: !4321, file: !262, line: 410, type: !92)
!4327 = !DILocalVariable(name: "receive_size", scope: !4321, file: !262, line: 410, type: !92)
!4328 = !DILocalVariable(name: "ch", scope: !4321, file: !262, line: 411, type: !4221)
!4329 = !DILocation(line: 0, scope: !4321)
!4330 = !DILocation(line: 410, column: 5, scope: !4321)
!4331 = !DILocation(line: 413, column: 10, scope: !4332)
!4332 = distinct !DILexicalBlock(scope: !4321, file: !262, line: 413, column: 9)
!4333 = !DILocation(line: 413, column: 9, scope: !4321)
!4334 = !DILocation(line: 417, column: 17, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4321, file: !262, line: 417, column: 9)
!4336 = !DILocation(line: 417, column: 26, scope: !4335)
!4337 = !DILocation(line: 421, column: 30, scope: !4321)
!4338 = !DILocation(line: 421, column: 5, scope: !4321)
!4339 = !DILocation(line: 422, column: 9, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4321, file: !262, line: 422, column: 9)
!4341 = !DILocation(line: 422, column: 21, scope: !4340)
!4342 = !DILocation(line: 427, column: 5, scope: !4321)
!4343 = !DILocation(line: 429, column: 25, scope: !4344)
!4344 = distinct !DILexicalBlock(scope: !4321, file: !262, line: 429, column: 9)
!4345 = !DILocation(line: 429, column: 22, scope: !4344)
!4346 = !DILocation(line: 429, column: 9, scope: !4321)
!4347 = !DILocation(line: 430, column: 14, scope: !4348)
!4348 = distinct !DILexicalBlock(scope: !4344, file: !262, line: 429, column: 38)
!4349 = !DILocation(line: 431, column: 9, scope: !4348)
!4350 = !DILocation(line: 432, column: 5, scope: !4348)
!4351 = !DILocation(line: 435, column: 1, scope: !4321)
!4352 = distinct !DISubprogram(name: "hal_uart_get_available_send_space", scope: !262, file: !262, line: 438, type: !4278, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4353)
!4353 = !{!4354, !4355}
!4354 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4352, file: !262, line: 438, type: !323)
!4355 = !DILocalVariable(name: "length", scope: !4352, file: !262, line: 440, type: !92)
!4356 = !DILocation(line: 0, scope: !4352)
!4357 = !DILocation(line: 440, column: 5, scope: !4352)
!4358 = !DILocation(line: 440, column: 14, scope: !4352)
!4359 = !DILocation(line: 442, column: 10, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4352, file: !262, line: 442, column: 9)
!4361 = !DILocation(line: 442, column: 9, scope: !4352)
!4362 = !DILocation(line: 446, column: 30, scope: !4352)
!4363 = !DILocation(line: 446, column: 5, scope: !4352)
!4364 = !DILocation(line: 447, column: 12, scope: !4352)
!4365 = !DILocation(line: 447, column: 5, scope: !4352)
!4366 = !DILocation(line: 448, column: 1, scope: !4352)
!4367 = distinct !DISubprogram(name: "hal_uart_get_available_receive_bytes", scope: !262, file: !262, line: 451, type: !4278, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4368)
!4368 = !{!4369, !4370}
!4369 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4367, file: !262, line: 451, type: !323)
!4370 = !DILocalVariable(name: "length", scope: !4367, file: !262, line: 453, type: !92)
!4371 = !DILocation(line: 0, scope: !4367)
!4372 = !DILocation(line: 453, column: 5, scope: !4367)
!4373 = !DILocation(line: 453, column: 14, scope: !4367)
!4374 = !DILocation(line: 455, column: 10, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4367, file: !262, line: 455, column: 9)
!4376 = !DILocation(line: 455, column: 9, scope: !4367)
!4377 = !DILocation(line: 459, column: 30, scope: !4367)
!4378 = !DILocation(line: 459, column: 5, scope: !4367)
!4379 = !DILocation(line: 461, column: 12, scope: !4367)
!4380 = !DILocation(line: 461, column: 5, scope: !4367)
!4381 = !DILocation(line: 462, column: 1, scope: !4367)
!4382 = distinct !DISubprogram(name: "hal_uart_register_callback", scope: !262, file: !262, line: 543, type: !4383, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4385)
!4383 = !DISubroutineType(types: !4384)
!4384 = !{!4010, !323, !351, !149}
!4385 = !{!4386, !4387, !4388, !4389}
!4386 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4382, file: !262, line: 543, type: !323)
!4387 = !DILocalVariable(name: "user_callback", arg: 2, scope: !4382, file: !262, line: 544, type: !351)
!4388 = !DILocalVariable(name: "user_data", arg: 3, scope: !4382, file: !262, line: 545, type: !149)
!4389 = !DILocalVariable(name: "ch", scope: !4382, file: !262, line: 547, type: !4221)
!4390 = !DILocation(line: 0, scope: !4382)
!4391 = !DILocation(line: 549, column: 10, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4382, file: !262, line: 549, column: 9)
!4393 = !DILocation(line: 549, column: 9, scope: !4382)
!4394 = !DILocation(line: 556, column: 53, scope: !4382)
!4395 = !DILocation(line: 556, column: 62, scope: !4382)
!4396 = !DILocation(line: 557, column: 53, scope: !4382)
!4397 = !DILocation(line: 557, column: 63, scope: !4382)
!4398 = !DILocation(line: 558, column: 37, scope: !4382)
!4399 = !DILocation(line: 558, column: 54, scope: !4382)
!4400 = !DILocation(line: 560, column: 39, scope: !4382)
!4401 = !DILocation(line: 561, column: 39, scope: !4382)
!4402 = !DILocation(line: 560, column: 5, scope: !4382)
!4403 = !DILocation(line: 562, column: 5, scope: !4382)
!4404 = !DILocation(line: 564, column: 44, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4382, file: !262, line: 564, column: 9)
!4406 = !DILocation(line: 564, column: 9, scope: !4382)
!4407 = !DILocation(line: 565, column: 9, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4405, file: !262, line: 564, column: 59)
!4409 = !DILocation(line: 566, column: 5, scope: !4408)
!4410 = !DILocation(line: 567, column: 9, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4405, file: !262, line: 566, column: 12)
!4412 = !DILocation(line: 569, column: 10, scope: !4382)
!4413 = !DILocation(line: 570, column: 5, scope: !4382)
!4414 = !DILocation(line: 578, column: 5, scope: !4382)
!4415 = !DILocation(line: 579, column: 1, scope: !4382)
!4416 = !DILocation(line: 0, scope: !319)
!4417 = !DILocation(line: 539, column: 12, scope: !319)
!4418 = !DILocation(line: 539, column: 5, scope: !319)
!4419 = distinct !DISubprogram(name: "hal_uart_send_callback0", scope: !262, file: !262, line: 511, type: !75, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4420)
!4420 = !{!4421}
!4421 = !DILocalVariable(name: "callback_context", scope: !4422, file: !262, line: 514, type: !4424)
!4422 = distinct !DILexicalBlock(scope: !4423, file: !262, line: 513, column: 60)
!4423 = distinct !DILexicalBlock(scope: !4419, file: !262, line: 513, column: 9)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 32)
!4425 = !DILocation(line: 513, column: 42, scope: !4423)
!4426 = !DILocation(line: 513, column: 9, scope: !4419)
!4427 = !DILocation(line: 515, column: 39, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4422, file: !262, line: 515, column: 13)
!4429 = !DILocation(line: 515, column: 18, scope: !4428)
!4430 = !DILocation(line: 515, column: 13, scope: !4422)
!4431 = !DILocation(line: 516, column: 89, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4428, file: !262, line: 515, column: 49)
!4433 = !DILocation(line: 516, column: 13, scope: !4432)
!4434 = !DILocation(line: 517, column: 9, scope: !4432)
!4435 = !DILocation(line: 519, column: 32, scope: !4419)
!4436 = !DILocation(line: 519, column: 5, scope: !4419)
!4437 = !DILocation(line: 520, column: 1, scope: !4419)
!4438 = distinct !DISubprogram(name: "hal_uart_send_callback1", scope: !262, file: !262, line: 523, type: !75, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4439)
!4439 = !{!4440}
!4440 = !DILocalVariable(name: "callback_context", scope: !4441, file: !262, line: 526, type: !4424)
!4441 = distinct !DILexicalBlock(scope: !4442, file: !262, line: 525, column: 60)
!4442 = distinct !DILexicalBlock(scope: !4438, file: !262, line: 525, column: 9)
!4443 = !DILocation(line: 525, column: 42, scope: !4442)
!4444 = !DILocation(line: 525, column: 9, scope: !4438)
!4445 = !DILocation(line: 527, column: 39, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !4441, file: !262, line: 527, column: 13)
!4447 = !DILocation(line: 527, column: 18, scope: !4446)
!4448 = !DILocation(line: 527, column: 13, scope: !4441)
!4449 = !DILocation(line: 528, column: 89, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4446, file: !262, line: 527, column: 49)
!4451 = !DILocation(line: 528, column: 13, scope: !4450)
!4452 = !DILocation(line: 529, column: 9, scope: !4450)
!4453 = !DILocation(line: 531, column: 32, scope: !4438)
!4454 = !DILocation(line: 531, column: 5, scope: !4438)
!4455 = !DILocation(line: 532, column: 1, scope: !4438)
!4456 = distinct !DISubprogram(name: "hal_uart_check_irq_disable", scope: !262, file: !262, line: 464, type: !4457, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4459)
!4457 = !DISubroutineType(types: !4458)
!4458 = !{null, !2608, !156}
!4459 = !{!4460, !4461, !4462, !4463, !4464, !4466}
!4460 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4456, file: !262, line: 464, type: !2608)
!4461 = !DILocalVariable(name: "is_rx", arg: 2, scope: !4456, file: !262, line: 464, type: !156)
!4462 = !DILocalVariable(name: "avail_size", scope: !4456, file: !262, line: 466, type: !92)
!4463 = !DILocalVariable(name: "avail_space", scope: !4456, file: !262, line: 466, type: !92)
!4464 = !DILocalVariable(name: "dma_config", scope: !4456, file: !262, line: 467, type: !4465)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 32)
!4466 = !DILocalVariable(name: "ch", scope: !4456, file: !262, line: 468, type: !4221)
!4467 = !DILocation(line: 0, scope: !4456)
!4468 = !DILocation(line: 466, column: 5, scope: !4456)
!4469 = !DILocation(line: 471, column: 9, scope: !4456)
!4470 = !DILocation(line: 472, column: 9, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4472, file: !262, line: 471, column: 16)
!4472 = distinct !DILexicalBlock(scope: !4456, file: !262, line: 471, column: 9)
!4473 = !DILocation(line: 473, column: 13, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4471, file: !262, line: 473, column: 13)
!4475 = !DILocation(line: 473, column: 39, scope: !4474)
!4476 = !DILocation(line: 473, column: 24, scope: !4474)
!4477 = !DILocation(line: 473, column: 13, scope: !4471)
!4478 = !DILocation(line: 478, column: 9, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4472, file: !262, line: 477, column: 12)
!4480 = !DILocation(line: 479, column: 13, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4479, file: !262, line: 479, column: 13)
!4482 = !DILocation(line: 479, column: 40, scope: !4481)
!4483 = !DILocation(line: 479, column: 77, scope: !4481)
!4484 = !DILocation(line: 479, column: 63, scope: !4481)
!4485 = !DILocation(line: 479, column: 25, scope: !4481)
!4486 = !DILocation(line: 479, column: 13, scope: !4479)
!4487 = !DILocation(line: 0, scope: !4472)
!4488 = !DILocation(line: 484, column: 1, scope: !4456)
!4489 = distinct !DISubprogram(name: "hal_uart_receive_callback0", scope: !262, file: !262, line: 486, type: !75, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4490)
!4490 = !{!4491}
!4491 = !DILocalVariable(name: "callback_context", scope: !4492, file: !262, line: 490, type: !4424)
!4492 = distinct !DILexicalBlock(scope: !4493, file: !262, line: 489, column: 70)
!4493 = distinct !DILexicalBlock(scope: !4489, file: !262, line: 488, column: 9)
!4494 = !DILocation(line: 488, column: 43, scope: !4493)
!4495 = !DILocation(line: 488, column: 61, scope: !4493)
!4496 = !DILocation(line: 489, column: 14, scope: !4493)
!4497 = !DILocation(line: 489, column: 63, scope: !4493)
!4498 = !DILocation(line: 488, column: 9, scope: !4489)
!4499 = !DILocation(line: 491, column: 39, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4492, file: !262, line: 491, column: 13)
!4501 = !DILocation(line: 491, column: 18, scope: !4500)
!4502 = !DILocation(line: 491, column: 13, scope: !4492)
!4503 = !DILocation(line: 492, column: 88, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4500, file: !262, line: 491, column: 49)
!4505 = !DILocation(line: 492, column: 13, scope: !4504)
!4506 = !DILocation(line: 493, column: 9, scope: !4504)
!4507 = !DILocation(line: 495, column: 32, scope: !4489)
!4508 = !DILocation(line: 495, column: 5, scope: !4489)
!4509 = !DILocation(line: 496, column: 1, scope: !4489)
!4510 = distinct !DISubprogram(name: "hal_uart_receive_callback1", scope: !262, file: !262, line: 499, type: !75, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4511)
!4511 = !{!4512}
!4512 = !DILocalVariable(name: "callback_context", scope: !4513, file: !262, line: 503, type: !4424)
!4513 = distinct !DILexicalBlock(scope: !4514, file: !262, line: 502, column: 70)
!4514 = distinct !DILexicalBlock(scope: !4510, file: !262, line: 501, column: 9)
!4515 = !DILocation(line: 501, column: 43, scope: !4514)
!4516 = !DILocation(line: 501, column: 61, scope: !4514)
!4517 = !DILocation(line: 502, column: 14, scope: !4514)
!4518 = !DILocation(line: 502, column: 63, scope: !4514)
!4519 = !DILocation(line: 501, column: 9, scope: !4510)
!4520 = !DILocation(line: 504, column: 39, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4513, file: !262, line: 504, column: 13)
!4522 = !DILocation(line: 504, column: 18, scope: !4521)
!4523 = !DILocation(line: 504, column: 13, scope: !4513)
!4524 = !DILocation(line: 505, column: 88, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4521, file: !262, line: 504, column: 49)
!4526 = !DILocation(line: 505, column: 13, scope: !4525)
!4527 = !DILocation(line: 506, column: 9, scope: !4525)
!4528 = !DILocation(line: 508, column: 32, scope: !4510)
!4529 = !DILocation(line: 508, column: 5, scope: !4510)
!4530 = !DILocation(line: 509, column: 1, scope: !4510)
!4531 = distinct !DISubprogram(name: "hal_uart_set_baudrate", scope: !262, file: !262, line: 582, type: !4532, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4534)
!4532 = !DISubroutineType(types: !4533)
!4533 = !{!4010, !323, !338}
!4534 = !{!4535, !4536}
!4535 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4531, file: !262, line: 582, type: !323)
!4536 = !DILocalVariable(name: "baudrate", arg: 2, scope: !4531, file: !262, line: 582, type: !338)
!4537 = !DILocation(line: 0, scope: !4531)
!4538 = !DILocation(line: 584, column: 11, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4531, file: !262, line: 584, column: 9)
!4540 = !DILocation(line: 584, column: 46, scope: !4539)
!4541 = !DILocation(line: 588, column: 37, scope: !4531)
!4542 = !DILocation(line: 588, column: 50, scope: !4531)
!4543 = !DILocation(line: 588, column: 59, scope: !4531)
!4544 = !DILocation(line: 589, column: 12, scope: !4531)
!4545 = !DILocation(line: 589, column: 5, scope: !4531)
!4546 = !DILocation(line: 590, column: 1, scope: !4531)
!4547 = distinct !DISubprogram(name: "hal_uart_set_dma", scope: !262, file: !262, line: 608, type: !4548, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4552)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{!4010, !323, !4550}
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4551, size: 32)
!4551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!4552 = !{!4553, !4554}
!4553 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4547, file: !262, line: 608, type: !323)
!4554 = !DILocalVariable(name: "uart_dma_config", arg: 2, scope: !4547, file: !262, line: 608, type: !4550)
!4555 = !DILocation(line: 0, scope: !4547)
!4556 = !DILocation(line: 610, column: 10, scope: !4557)
!4557 = distinct !DILexicalBlock(scope: !4547, file: !262, line: 610, column: 9)
!4558 = !DILocation(line: 610, column: 9, scope: !4547)
!4559 = !DILocation(line: 614, column: 10, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4547, file: !262, line: 614, column: 9)
!4561 = !DILocation(line: 614, column: 9, scope: !4547)
!4562 = !DILocation(line: 618, column: 37, scope: !4547)
!4563 = !DILocation(line: 618, column: 56, scope: !4547)
!4564 = !DILocation(line: 619, column: 45, scope: !4547)
!4565 = !DILocation(line: 619, column: 12, scope: !4547)
!4566 = !DILocation(line: 620, column: 12, scope: !4547)
!4567 = !DILocation(line: 619, column: 5, scope: !4547)
!4568 = !DILocation(line: 621, column: 5, scope: !4547)
!4569 = !DILocation(line: 622, column: 5, scope: !4547)
!4570 = !DILocation(line: 623, column: 33, scope: !4547)
!4571 = !DILocation(line: 624, column: 50, scope: !4547)
!4572 = !DILocation(line: 625, column: 50, scope: !4547)
!4573 = !DILocation(line: 626, column: 50, scope: !4547)
!4574 = !DILocation(line: 627, column: 50, scope: !4547)
!4575 = !DILocation(line: 628, column: 33, scope: !4547)
!4576 = !DILocation(line: 623, column: 5, scope: !4547)
!4577 = !DILocation(line: 630, column: 50, scope: !4547)
!4578 = !DILocation(line: 631, column: 50, scope: !4547)
!4579 = !DILocation(line: 632, column: 50, scope: !4547)
!4580 = !DILocation(line: 629, column: 5, scope: !4547)
!4581 = !DILocation(line: 634, column: 5, scope: !4547)
!4582 = !DILocation(line: 635, column: 1, scope: !4547)
!4583 = distinct !DISubprogram(name: "hal_uart_is_dma_config_valid", scope: !262, file: !262, line: 112, type: !4584, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4586)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!156, !4550}
!4586 = !{!4587}
!4587 = !DILocalVariable(name: "dma_config", arg: 1, scope: !4583, file: !262, line: 112, type: !4550)
!4588 = !DILocation(line: 0, scope: !4583)
!4589 = !DILocation(line: 114, column: 14, scope: !4590)
!4590 = distinct !DILexicalBlock(scope: !4583, file: !262, line: 114, column: 9)
!4591 = !DILocation(line: 114, column: 9, scope: !4583)
!4592 = !DILocation(line: 117, column: 29, scope: !4593)
!4593 = distinct !DILexicalBlock(scope: !4583, file: !262, line: 117, column: 9)
!4594 = !DILocation(line: 117, column: 14, scope: !4593)
!4595 = !DILocation(line: 117, column: 9, scope: !4583)
!4596 = !DILocation(line: 120, column: 21, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4583, file: !262, line: 120, column: 9)
!4598 = !DILocation(line: 120, column: 61, scope: !4597)
!4599 = !DILocation(line: 120, column: 47, scope: !4597)
!4600 = !DILocation(line: 120, column: 9, scope: !4583)
!4601 = !DILocation(line: 123, column: 61, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4583, file: !262, line: 123, column: 9)
!4603 = !DILocation(line: 123, column: 47, scope: !4602)
!4604 = !DILocation(line: 123, column: 9, scope: !4583)
!4605 = !DILocation(line: 126, column: 29, scope: !4606)
!4606 = distinct !DILexicalBlock(scope: !4583, file: !262, line: 126, column: 9)
!4607 = !DILocation(line: 126, column: 14, scope: !4606)
!4608 = !DILocation(line: 126, column: 9, scope: !4583)
!4609 = !DILocation(line: 129, column: 21, scope: !4610)
!4610 = distinct !DILexicalBlock(scope: !4583, file: !262, line: 129, column: 9)
!4611 = !DILocation(line: 129, column: 58, scope: !4610)
!4612 = !DILocation(line: 129, column: 44, scope: !4610)
!4613 = !DILocation(line: 129, column: 9, scope: !4583)
!4614 = !DILocation(line: 136, column: 1, scope: !4583)
!4615 = distinct !DISubprogram(name: "hal_uart_translate_timeout", scope: !262, file: !262, line: 182, type: !4616, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4618)
!4616 = !DISubroutineType(types: !4617)
!4617 = !{!92, !92}
!4618 = !{!4619, !4620}
!4619 = !DILocalVariable(name: "timeout_us", arg: 1, scope: !4615, file: !262, line: 182, type: !92)
!4620 = !DILocalVariable(name: "ticks_per_us", scope: !4615, file: !262, line: 184, type: !92)
!4621 = !DILocation(line: 0, scope: !4615)
!4622 = !DILocation(line: 186, column: 20, scope: !4615)
!4623 = !DILocation(line: 186, column: 39, scope: !4615)
!4624 = !DILocation(line: 188, column: 25, scope: !4615)
!4625 = !DILocation(line: 188, column: 5, scope: !4615)
!4626 = distinct !DISubprogram(name: "hal_uart_set_hardware_flowcontrol", scope: !262, file: !262, line: 637, type: !4152, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4627)
!4627 = !{!4628, !4629}
!4628 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4626, file: !262, line: 637, type: !323)
!4629 = !DILocalVariable(name: "int_no", scope: !4626, file: !262, line: 639, type: !2608)
!4630 = !DILocation(line: 0, scope: !4626)
!4631 = !DILocation(line: 641, column: 10, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4626, file: !262, line: 641, column: 9)
!4633 = !DILocation(line: 641, column: 9, scope: !4626)
!4634 = !DILocation(line: 645, column: 14, scope: !4626)
!4635 = !DILocation(line: 646, column: 5, scope: !4626)
!4636 = !DILocation(line: 648, column: 5, scope: !4626)
!4637 = !DILocation(line: 649, column: 1, scope: !4626)
!4638 = distinct !DISubprogram(name: "hal_uart_set_software_flowcontrol", scope: !262, file: !262, line: 651, type: !4639, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4641)
!4639 = !DISubroutineType(types: !4640)
!4640 = !{!4010, !323, !150, !150, !150}
!4641 = !{!4642, !4643, !4644, !4645, !4646}
!4642 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4638, file: !262, line: 651, type: !323)
!4643 = !DILocalVariable(name: "xon", arg: 2, scope: !4638, file: !262, line: 652, type: !150)
!4644 = !DILocalVariable(name: "xoff", arg: 3, scope: !4638, file: !262, line: 653, type: !150)
!4645 = !DILocalVariable(name: "escape_character", arg: 4, scope: !4638, file: !262, line: 654, type: !150)
!4646 = !DILocalVariable(name: "int_no", scope: !4638, file: !262, line: 656, type: !2608)
!4647 = !DILocation(line: 0, scope: !4638)
!4648 = !DILocation(line: 658, column: 10, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4638, file: !262, line: 658, column: 9)
!4650 = !DILocation(line: 658, column: 9, scope: !4638)
!4651 = !DILocation(line: 662, column: 14, scope: !4638)
!4652 = !DILocation(line: 663, column: 5, scope: !4638)
!4653 = !DILocation(line: 665, column: 5, scope: !4638)
!4654 = !DILocation(line: 666, column: 1, scope: !4638)
!4655 = distinct !DISubprogram(name: "hal_uart_disable_flowcontrol", scope: !262, file: !262, line: 668, type: !4152, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4656)
!4656 = !{!4657, !4658}
!4657 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4655, file: !262, line: 668, type: !323)
!4658 = !DILocalVariable(name: "int_no", scope: !4655, file: !262, line: 670, type: !2608)
!4659 = !DILocation(line: 0, scope: !4655)
!4660 = !DILocation(line: 672, column: 10, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4655, file: !262, line: 672, column: 9)
!4662 = !DILocation(line: 672, column: 9, scope: !4655)
!4663 = !DILocation(line: 676, column: 14, scope: !4655)
!4664 = !DILocation(line: 677, column: 5, scope: !4655)
!4665 = !DILocation(line: 679, column: 5, scope: !4655)
!4666 = !DILocation(line: 680, column: 1, scope: !4655)
!4667 = distinct !DISubprogram(name: "hal_uart_set_dma_timeout", scope: !262, file: !262, line: 683, type: !4668, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !261, retainedNodes: !4670)
!4668 = !DISubroutineType(types: !4669)
!4669 = !{!4010, !323, !92}
!4670 = !{!4671, !4672}
!4671 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4667, file: !262, line: 683, type: !323)
!4672 = !DILocalVariable(name: "timeout", arg: 2, scope: !4667, file: !262, line: 683, type: !92)
!4673 = !DILocation(line: 0, scope: !4667)
!4674 = !DILocation(line: 685, column: 10, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4667, file: !262, line: 685, column: 9)
!4676 = !DILocation(line: 685, column: 9, scope: !4667)
!4677 = !DILocation(line: 689, column: 19, scope: !4678)
!4678 = distinct !DILexicalBlock(scope: !4667, file: !262, line: 689, column: 9)
!4679 = !DILocation(line: 0, scope: !4678)
!4680 = !DILocation(line: 696, column: 1, scope: !4667)
!4681 = distinct !DISubprogram(name: "__io_putchar", scope: !936, file: !936, line: 53, type: !4682, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !935, retainedNodes: !4684)
!4682 = !DISubroutineType(types: !4683)
!4683 = !{!13, !13}
!4684 = !{!4685}
!4685 = !DILocalVariable(name: "ch", arg: 1, scope: !4681, file: !936, line: 53, type: !13)
!4686 = !DILocation(line: 0, scope: !4681)
!4687 = !DILocation(line: 60, column: 35, scope: !4681)
!4688 = !DILocation(line: 60, column: 5, scope: !4681)
!4689 = !DILocation(line: 61, column: 5, scope: !4681)
!4690 = distinct !DISubprogram(name: "main", scope: !936, file: !936, line: 150, type: !2584, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !935, retainedNodes: !1130)
!4691 = !DILocation(line: 153, column: 5, scope: !4690)
!4692 = !DILocation(line: 156, column: 5, scope: !4690)
!4693 = !DILocation(line: 319, column: 3, scope: !4694, inlinedAt: !4695)
!4694 = distinct !DISubprogram(name: "__enable_irq", scope: !2030, file: !2030, line: 317, type: !75, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !935, retainedNodes: !1130)
!4695 = distinct !DILocation(line: 159, column: 5, scope: !4690)
!4696 = !{i64 507148}
!4697 = !DILocation(line: 496, column: 3, scope: !4698, inlinedAt: !4699)
!4698 = distinct !DISubprogram(name: "__enable_fault_irq", scope: !2030, file: !2030, line: 494, type: !75, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !935, retainedNodes: !1130)
!4699 = distinct !DILocation(line: 160, column: 5, scope: !4690)
!4700 = !{i64 511423}
!4701 = !DILocation(line: 163, column: 5, scope: !4690)
!4702 = !DILocation(line: 164, column: 5, scope: !4690)
!4703 = !DILocation(line: 165, column: 5, scope: !4690)
!4704 = !DILocation(line: 167, column: 5, scope: !4690)
!4705 = !DILocation(line: 169, column: 5, scope: !4690)
!4706 = !DILocation(line: 169, column: 5, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4708, file: !936, line: 169, column: 5)
!4708 = distinct !DILexicalBlock(scope: !4690, file: !936, line: 169, column: 5)
!4709 = distinct !{!4709, !4710, !4711}
!4710 = !DILocation(line: 169, column: 5, scope: !4708)
!4711 = !DILocation(line: 169, column: 13, scope: !4708)
!4712 = distinct !DISubprogram(name: "SystemClock_Config", scope: !936, file: !936, line: 91, type: !75, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !935, retainedNodes: !1130)
!4713 = !DILocation(line: 93, column: 5, scope: !4712)
!4714 = !DILocation(line: 94, column: 1, scope: !4712)
!4715 = distinct !DISubprogram(name: "prvSetupHardware", scope: !936, file: !936, line: 100, type: !75, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !935, retainedNodes: !1130)
!4716 = !DILocation(line: 103, column: 5, scope: !4715)
!4717 = !DILocation(line: 105, column: 1, scope: !4715)
!4718 = distinct !DISubprogram(name: "md5_get_hash_example", scope: !936, file: !936, line: 132, type: !75, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !935, retainedNodes: !4719)
!4719 = !{!4720, !4721, !4722, !4723}
!4720 = !DILocalVariable(name: "data", scope: !4718, file: !936, line: 134, type: !363)
!4721 = !DILocalVariable(name: "size", scope: !4718, file: !936, line: 135, type: !92)
!4722 = !DILocalVariable(name: "digest", scope: !4718, file: !936, line: 136, type: !3179)
!4723 = !DILocalVariable(name: "context", scope: !4718, file: !936, line: 140, type: !4724)
!4724 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_md5_context_t", file: !914, line: 160, baseType: !4725)
!4725 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !914, line: 154, size: 768, elements: !4726)
!4726 = !{!4727, !4728, !4729, !4730, !4731}
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !4725, file: !914, line: 155, baseType: !925, size: 128)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "message_length", scope: !4725, file: !914, line: 156, baseType: !927, size: 64, offset: 128)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4725, file: !914, line: 157, baseType: !363, size: 32, offset: 192)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4725, file: !914, line: 158, baseType: !931, size: 512, offset: 224)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "block_length", scope: !4725, file: !914, line: 159, baseType: !92, size: 32, offset: 736)
!4732 = !DILocation(line: 0, scope: !4718)
!4733 = !DILocation(line: 135, column: 31, scope: !4718)
!4734 = !DILocation(line: 136, column: 5, scope: !4718)
!4735 = !DILocation(line: 136, column: 13, scope: !4718)
!4736 = !DILocation(line: 138, column: 5, scope: !4718)
!4737 = !DILocation(line: 140, column: 5, scope: !4718)
!4738 = !DILocation(line: 140, column: 23, scope: !4718)
!4739 = !DILocation(line: 141, column: 5, scope: !4718)
!4740 = !DILocation(line: 142, column: 5, scope: !4718)
!4741 = !DILocation(line: 143, column: 5, scope: !4718)
!4742 = !DILocation(line: 145, column: 5, scope: !4718)
!4743 = !DILocation(line: 146, column: 5, scope: !4718)
!4744 = !DILocation(line: 147, column: 1, scope: !4718)
!4745 = distinct !DISubprogram(name: "md5_result_dump", scope: !936, file: !936, line: 113, type: !4746, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !935, retainedNodes: !4748)
!4746 = !DISubroutineType(types: !4747)
!4747 = !{null, !363, !150}
!4748 = !{!4749, !4750, !4751}
!4749 = !DILocalVariable(name: "result", arg: 1, scope: !4745, file: !936, line: 113, type: !363)
!4750 = !DILocalVariable(name: "length", arg: 2, scope: !4745, file: !936, line: 113, type: !150)
!4751 = !DILocalVariable(name: "i", scope: !4745, file: !936, line: 115, type: !150)
!4752 = !DILocation(line: 0, scope: !4745)
!4753 = !DILocation(line: 117, column: 5, scope: !4754)
!4754 = distinct !DILexicalBlock(scope: !4745, file: !936, line: 117, column: 5)
!4755 = !DILocation(line: 118, column: 20, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4757, file: !936, line: 118, column: 13)
!4757 = distinct !DILexicalBlock(scope: !4758, file: !936, line: 117, column: 34)
!4758 = distinct !DILexicalBlock(scope: !4754, file: !936, line: 117, column: 5)
!4759 = !DILocation(line: 118, column: 13, scope: !4757)
!4760 = !DILocation(line: 119, column: 13, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !4756, file: !936, line: 118, column: 26)
!4762 = !DILocation(line: 120, column: 9, scope: !4761)
!4763 = !DILocation(line: 122, column: 26, scope: !4757)
!4764 = !DILocation(line: 122, column: 9, scope: !4757)
!4765 = !DILocation(line: 117, column: 30, scope: !4758)
!4766 = !DILocation(line: 117, column: 19, scope: !4758)
!4767 = distinct !{!4767, !4753, !4768}
!4768 = !DILocation(line: 123, column: 5, scope: !4754)
!4769 = !DILocation(line: 124, column: 5, scope: !4745)
!4770 = !DILocation(line: 126, column: 1, scope: !4745)
!4771 = distinct !DISubprogram(name: "log_uart_init", scope: !936, file: !936, line: 69, type: !75, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !935, retainedNodes: !4772)
!4772 = !{!4773}
!4773 = !DILocalVariable(name: "uart_config", scope: !4771, file: !936, line: 71, type: !4774)
!4774 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !265, line: 378, baseType: !4775)
!4775 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !265, line: 373, size: 128, elements: !4776)
!4776 = !{!4777, !4778, !4779, !4780}
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !4775, file: !265, line: 374, baseType: !338, size: 32)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !4775, file: !265, line: 375, baseType: !340, size: 32, offset: 32)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !4775, file: !265, line: 376, baseType: !342, size: 32, offset: 64)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !4775, file: !265, line: 377, baseType: !344, size: 32, offset: 96)
!4781 = !DILocation(line: 71, column: 5, scope: !4771)
!4782 = !DILocation(line: 71, column: 23, scope: !4771)
!4783 = !DILocation(line: 73, column: 5, scope: !4771)
!4784 = !DILocation(line: 74, column: 5, scope: !4771)
!4785 = !DILocation(line: 75, column: 5, scope: !4771)
!4786 = !DILocation(line: 76, column: 5, scope: !4771)
!4787 = !DILocation(line: 79, column: 17, scope: !4771)
!4788 = !DILocation(line: 79, column: 26, scope: !4771)
!4789 = !DILocation(line: 80, column: 17, scope: !4771)
!4790 = !DILocation(line: 80, column: 29, scope: !4771)
!4791 = !DILocation(line: 81, column: 17, scope: !4771)
!4792 = !DILocation(line: 81, column: 26, scope: !4771)
!4793 = !DILocation(line: 82, column: 17, scope: !4771)
!4794 = !DILocation(line: 82, column: 24, scope: !4771)
!4795 = !DILocation(line: 83, column: 5, scope: !4771)
!4796 = !DILocation(line: 85, column: 1, scope: !4771)
!4797 = distinct !DISubprogram(name: "SysTick_Set", scope: !373, file: !373, line: 70, type: !4616, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !372, retainedNodes: !4798)
!4798 = !{!4799, !4800}
!4799 = !DILocalVariable(name: "ticks", arg: 1, scope: !4797, file: !373, line: 70, type: !92)
!4800 = !DILocalVariable(name: "val", scope: !4797, file: !373, line: 72, type: !92)
!4801 = !DILocation(line: 0, scope: !4797)
!4802 = !DILocation(line: 74, column: 16, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4797, file: !373, line: 74, column: 9)
!4804 = !DILocation(line: 74, column: 21, scope: !4803)
!4805 = !DILocation(line: 74, column: 9, scope: !4797)
!4806 = !DILocation(line: 78, column: 20, scope: !4797)
!4807 = !DILocation(line: 80, column: 19, scope: !4797)
!4808 = !DILocation(line: 83, column: 20, scope: !4797)
!4809 = !DILocation(line: 84, column: 20, scope: !4797)
!4810 = !DILocation(line: 86, column: 19, scope: !4797)
!4811 = !DILocation(line: 88, column: 5, scope: !4797)
!4812 = !DILocation(line: 89, column: 1, scope: !4797)
!4813 = distinct !DISubprogram(name: "SysInitStatus_Set", scope: !373, file: !373, line: 98, type: !75, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !372, retainedNodes: !1130)
!4814 = !DILocation(line: 100, column: 28, scope: !4813)
!4815 = !DILocation(line: 101, column: 1, scope: !4813)
!4816 = distinct !DISubprogram(name: "SysInitStatus_Query", scope: !373, file: !373, line: 110, type: !2024, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !372, retainedNodes: !1130)
!4817 = !DILocation(line: 112, column: 12, scope: !4816)
!4818 = !DILocation(line: 112, column: 5, scope: !4816)
!4819 = distinct !DISubprogram(name: "SystemCoreClockUpdate", scope: !373, file: !373, line: 122, type: !75, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !372, retainedNodes: !1130)
!4820 = !DILocation(line: 124, column: 23, scope: !4819)
!4821 = !DILocation(line: 124, column: 21, scope: !4819)
!4822 = !DILocation(line: 125, column: 1, scope: !4819)
!4823 = distinct !DISubprogram(name: "SystemInit", scope: !373, file: !373, line: 136, type: !75, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !372, retainedNodes: !1130)
!4824 = !DILocation(line: 140, column: 16, scope: !4823)
!4825 = !DILocation(line: 144, column: 16, scope: !4823)
!4826 = !DILocation(line: 147, column: 16, scope: !4823)
!4827 = !DILocation(line: 150, column: 1, scope: !4823)
!4828 = distinct !DISubprogram(name: "CachePreInit", scope: !373, file: !373, line: 158, type: !75, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !372, retainedNodes: !1130)
!4829 = !DILocation(line: 161, column: 22, scope: !4828)
!4830 = !DILocation(line: 164, column: 21, scope: !4828)
!4831 = !DILocation(line: 167, column: 21, scope: !4828)
!4832 = !DILocation(line: 170, column: 29, scope: !4828)
!4833 = !DILocation(line: 171, column: 33, scope: !4828)
!4834 = !DILocation(line: 173, column: 28, scope: !4828)
!4835 = !DILocation(line: 178, column: 30, scope: !4828)
!4836 = !DILocation(line: 192, column: 1, scope: !4828)
!4837 = distinct !DISubprogram(name: "_close", scope: !443, file: !443, line: 11, type: !4682, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !640, retainedNodes: !4838)
!4838 = !{!4839}
!4839 = !DILocalVariable(name: "file", arg: 1, scope: !4837, file: !443, line: 11, type: !13)
!4840 = !DILocation(line: 0, scope: !4837)
!4841 = !DILocation(line: 13, column: 5, scope: !4837)
!4842 = distinct !DISubprogram(name: "_fstat", scope: !443, file: !443, line: 16, type: !4843, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !640, retainedNodes: !4891)
!4843 = !DISubroutineType(types: !4844)
!4844 = !{!13, !13, !4845}
!4845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4846, size: 32)
!4846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !4847, line: 27, size: 704, elements: !4848)
!4847 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/stat.h", directory: "/home/mjshen/RTOSExploration")
!4848 = !{!4849, !4852, !4855, !4858, !4861, !4864, !4867, !4868, !4871, !4881, !4882, !4883, !4886, !4889}
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !4846, file: !4847, line: 29, baseType: !4850, size: 16)
!4850 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !447, line: 161, baseType: !4851)
!4851 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !489, line: 56, baseType: !464)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !4846, file: !4847, line: 30, baseType: !4853, size: 16, offset: 16)
!4853 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !447, line: 139, baseType: !4854)
!4854 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !489, line: 75, baseType: !132)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !4846, file: !4847, line: 31, baseType: !4856, size: 32, offset: 32)
!4856 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !447, line: 189, baseType: !4857)
!4857 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !489, line: 90, baseType: !94)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !4846, file: !4847, line: 32, baseType: !4859, size: 16, offset: 64)
!4859 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !447, line: 194, baseType: !4860)
!4860 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !489, line: 209, baseType: !132)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !4846, file: !4847, line: 33, baseType: !4862, size: 16, offset: 80)
!4862 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !447, line: 165, baseType: !4863)
!4863 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !489, line: 60, baseType: !132)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !4846, file: !4847, line: 34, baseType: !4865, size: 16, offset: 96)
!4865 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !447, line: 169, baseType: !4866)
!4866 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !489, line: 63, baseType: !132)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !4846, file: !4847, line: 35, baseType: !4850, size: 16, offset: 112)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4846, file: !4847, line: 36, baseType: !4869, size: 32, offset: 128)
!4869 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !447, line: 157, baseType: !4870)
!4870 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !489, line: 102, baseType: !507)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !4846, file: !4847, line: 42, baseType: !4872, size: 128, offset: 192)
!4872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !4873, line: 47, size: 128, elements: !4874)
!4873 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timespec.h", directory: "/home/mjshen/RTOSExploration")
!4874 = !{!4875, !4880}
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4872, file: !4873, line: 48, baseType: !4876, size: 64)
!4876 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !4877, line: 42, baseType: !4878)
!4877 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timeval.h", directory: "/home/mjshen/RTOSExploration")
!4878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !95, line: 200, baseType: !4879)
!4879 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4872, file: !4873, line: 49, baseType: !490, size: 32, offset: 64)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !4846, file: !4847, line: 43, baseType: !4872, size: 128, offset: 320)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !4846, file: !4847, line: 44, baseType: !4872, size: 128, offset: 448)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !4846, file: !4847, line: 45, baseType: !4884, size: 32, offset: 576)
!4884 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !447, line: 102, baseType: !4885)
!4885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !489, line: 34, baseType: !490)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !4846, file: !4847, line: 46, baseType: !4887, size: 32, offset: 608)
!4887 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !447, line: 97, baseType: !4888)
!4888 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !489, line: 30, baseType: !490)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "st_spare4", scope: !4846, file: !4847, line: 48, baseType: !4890, size: 64, offset: 640)
!4890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 64, elements: !232)
!4891 = !{!4892, !4893}
!4892 = !DILocalVariable(name: "file", arg: 1, scope: !4842, file: !443, line: 16, type: !13)
!4893 = !DILocalVariable(name: "st", arg: 2, scope: !4842, file: !443, line: 16, type: !4845)
!4894 = !DILocation(line: 0, scope: !4842)
!4895 = !DILocation(line: 18, column: 5, scope: !4842)
!4896 = distinct !DISubprogram(name: "_isatty", scope: !443, file: !443, line: 22, type: !4682, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !640, retainedNodes: !4897)
!4897 = !{!4898}
!4898 = !DILocalVariable(name: "file", arg: 1, scope: !4896, file: !443, line: 22, type: !13)
!4899 = !DILocation(line: 0, scope: !4896)
!4900 = !DILocation(line: 24, column: 5, scope: !4896)
!4901 = distinct !DISubprogram(name: "_lseek", scope: !443, file: !443, line: 27, type: !4902, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !640, retainedNodes: !4904)
!4902 = !DISubroutineType(types: !4903)
!4903 = !{!13, !13, !13, !13}
!4904 = !{!4905, !4906, !4907}
!4905 = !DILocalVariable(name: "file", arg: 1, scope: !4901, file: !443, line: 27, type: !13)
!4906 = !DILocalVariable(name: "ptr", arg: 2, scope: !4901, file: !443, line: 27, type: !13)
!4907 = !DILocalVariable(name: "dir", arg: 3, scope: !4901, file: !443, line: 27, type: !13)
!4908 = !DILocation(line: 0, scope: !4901)
!4909 = !DILocation(line: 29, column: 5, scope: !4901)
!4910 = distinct !DISubprogram(name: "_open", scope: !443, file: !443, line: 32, type: !4911, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !640, retainedNodes: !4913)
!4911 = !DISubroutineType(types: !4912)
!4912 = !{!13, !482, !13, !13}
!4913 = !{!4914, !4915, !4916}
!4914 = !DILocalVariable(name: "name", arg: 1, scope: !4910, file: !443, line: 32, type: !482)
!4915 = !DILocalVariable(name: "flags", arg: 2, scope: !4910, file: !443, line: 32, type: !13)
!4916 = !DILocalVariable(name: "mode", arg: 3, scope: !4910, file: !443, line: 32, type: !13)
!4917 = !DILocation(line: 0, scope: !4910)
!4918 = !DILocation(line: 34, column: 5, scope: !4910)
!4919 = distinct !DISubprogram(name: "_read", scope: !443, file: !443, line: 37, type: !4920, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !640, retainedNodes: !4922)
!4920 = !DISubroutineType(types: !4921)
!4921 = !{!13, !13, !448, !13}
!4922 = !{!4923, !4924, !4925}
!4923 = !DILocalVariable(name: "file", arg: 1, scope: !4919, file: !443, line: 37, type: !13)
!4924 = !DILocalVariable(name: "ptr", arg: 2, scope: !4919, file: !443, line: 37, type: !448)
!4925 = !DILocalVariable(name: "len", arg: 3, scope: !4919, file: !443, line: 37, type: !13)
!4926 = !DILocation(line: 0, scope: !4919)
!4927 = !DILocation(line: 39, column: 5, scope: !4919)
!4928 = distinct !DISubprogram(name: "_write", scope: !443, file: !443, line: 52, type: !4920, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !640, retainedNodes: !4929)
!4929 = !{!4930, !4931, !4932, !4933}
!4930 = !DILocalVariable(name: "file", arg: 1, scope: !4928, file: !443, line: 52, type: !13)
!4931 = !DILocalVariable(name: "ptr", arg: 2, scope: !4928, file: !443, line: 52, type: !448)
!4932 = !DILocalVariable(name: "len", arg: 3, scope: !4928, file: !443, line: 52, type: !13)
!4933 = !DILocalVariable(name: "i", scope: !4928, file: !443, line: 54, type: !13)
!4934 = !DILocation(line: 0, scope: !4928)
!4935 = !DILocation(line: 56, column: 19, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4937, file: !443, line: 56, column: 5)
!4937 = distinct !DILexicalBlock(scope: !4928, file: !443, line: 56, column: 5)
!4938 = !DILocation(line: 56, column: 5, scope: !4937)
!4939 = !DILocation(line: 57, column: 26, scope: !4940)
!4940 = distinct !DILexicalBlock(scope: !4936, file: !443, line: 56, column: 31)
!4941 = !DILocation(line: 57, column: 22, scope: !4940)
!4942 = !DILocation(line: 57, column: 9, scope: !4940)
!4943 = !DILocation(line: 56, column: 27, scope: !4936)
!4944 = distinct !{!4944, !4938, !4945}
!4945 = !DILocation(line: 58, column: 5, scope: !4937)
!4946 = !DILocation(line: 60, column: 5, scope: !4928)
!4947 = !DILocation(line: 0, scope: !442)
!4948 = !DILocation(line: 70, column: 5, scope: !442)
!4949 = !{i64 1109}
!4950 = !DILocation(line: 72, column: 14, scope: !4951)
!4951 = distinct !DILexicalBlock(scope: !442, file: !443, line: 72, column: 9)
!4952 = !DILocation(line: 72, column: 11, scope: !4951)
!4953 = !DILocation(line: 72, column: 9, scope: !442)
!4954 = !DILocation(line: 78, column: 32, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !442, file: !443, line: 78, column: 9)
!4956 = !DILocation(line: 78, column: 15, scope: !4955)
!4957 = !DILocation(line: 89, column: 1, scope: !442)
!4958 = !DILocation(line: 78, column: 9, scope: !442)
!4959 = distinct !DISubprogram(name: "_exit", scope: !443, file: !443, line: 91, type: !592, scopeLine: 92, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !640, retainedNodes: !4960)
!4960 = !{!4961}
!4961 = !DILocalVariable(name: "__status", arg: 1, scope: !4959, file: !443, line: 91, type: !13)
!4962 = !DILocation(line: 0, scope: !4959)
!4963 = !DILocation(line: 93, column: 5, scope: !4959)
!4964 = !DILocation(line: 94, column: 5, scope: !4959)
!4965 = distinct !{!4965, !4964, !4966}
!4966 = !DILocation(line: 96, column: 5, scope: !4959)
!4967 = distinct !DISubprogram(name: "_kill", scope: !443, file: !443, line: 100, type: !4968, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !640, retainedNodes: !4970)
!4968 = !DISubroutineType(types: !4969)
!4969 = !{!13, !13, !13}
!4970 = !{!4971, !4972}
!4971 = !DILocalVariable(name: "pid", arg: 1, scope: !4967, file: !443, line: 100, type: !13)
!4972 = !DILocalVariable(name: "sig", arg: 2, scope: !4967, file: !443, line: 100, type: !13)
!4973 = !DILocation(line: 0, scope: !4967)
!4974 = !DILocation(line: 102, column: 5, scope: !4967)
!4975 = !DILocation(line: 103, column: 5, scope: !4967)
!4976 = distinct !DISubprogram(name: "_getpid", scope: !443, file: !443, line: 107, type: !4977, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !640, retainedNodes: !1130)
!4977 = !DISubroutineType(types: !4978)
!4978 = !{!4979}
!4979 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !447, line: 174, baseType: !4980)
!4980 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !489, line: 52, baseType: !13)
!4981 = !DILocation(line: 109, column: 5, scope: !4976)
!4982 = !DILocation(line: 110, column: 5, scope: !4976)
