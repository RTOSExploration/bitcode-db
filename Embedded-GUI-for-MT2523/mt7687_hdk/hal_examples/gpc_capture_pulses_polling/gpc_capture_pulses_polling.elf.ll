; ModuleID = './build/gpc_capture_pulses_polling.elf.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7em-none-unknown-eabihf"

%struct.gpio_backup_restore_t = type { i32, i32 }
%struct.nvic_function_t = type { void (i32)*, i32 }
%struct.hal_gpt_context_t = type { i32, %struct.hal_gpt_callback_context, i8 }
%struct.hal_gpt_callback_context = type { void (i8*)*, i8* }
%struct.uart_context_t = type { i8, %struct.hal_uart_config_t, i8, %struct.hal_uart_callback_config_t, i8, %struct.hal_uart_dma_config_t }
%struct.hal_uart_config_t = type { i32, i32, i32, i32 }
%struct.hal_uart_callback_config_t = type { void (i32, i8*)*, i8* }
%struct.hal_uart_dma_config_t = type { i8*, i32, i32, i8*, i32, i32, i32 }
%struct.hal_gpc_config_t = type { i32 }
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
%struct._mbstate_t = type { i32, %struct.hal_gpc_config_t }
%struct._misc_reent = type { i8*, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t, [8 x i8], i32, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t }

@g_u4ClkCnt1ms = dso_local local_unnamed_addr global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [37 x i8] c"ASSERT, __FILE__ = %s, __LINE__ = %u\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"../../../../../driver/chip/mt7687/src/common/gpt.c\00", align 1
@GPTTimer.0 = internal unnamed_addr global void ()* null, align 4, !dbg !81
@GPTTimer.1 = internal unnamed_addr global void ()* null, align 4, !dbg !82
@hal_gpc_has_initilized = internal unnamed_addr global i1 false, align 1, !dbg !83
@pcnt_state_work = internal unnamed_addr global i1 false, align 1, !dbg !121
@__FUNCTION__.hal_gpc_init = private unnamed_addr constant [13 x i8] c"hal_gpc_init\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Port:%d is running\0D\0A\00", align 1
@pcnt_edge = internal unnamed_addr global i1 false, align 4, !dbg !122
@gpio_bakup_table = internal unnamed_addr global [22 x %struct.gpio_backup_restore_t] [%struct.gpio_backup_restore_t { i32 0, i32 -2097106944 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106928 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106912 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106896 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106880 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106864 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106848 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106832 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106816 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106800 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106784 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106768 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106736 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106732 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106728 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106724 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106720 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106704 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106700 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106688 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106684 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106680 }], align 4, !dbg !123
@gXtalFreq = internal unnamed_addr global i32 0, align 4, !dbg !183
@gCpuFrequency = internal unnamed_addr global i32 0, align 4, !dbg !194
@switch.table.top_xtal_init = private unnamed_addr constant [8 x i32] [i32 20000000, i32 40000000, i32 26000000, i32 52000000, i32 40000000, i32 40000000, i32 40000000, i32 40000000], align 4
@switch.table.top_xtal_init.1 = private unnamed_addr constant [8 x i32] [i32 16, i32 512, i32 64, i32 1024, i32 512, i32 512, i32 512, i32 512], align 4
@__const.halUART_SetFormat.fraction_L_mapping = private unnamed_addr constant [11 x i16] [i16 0, i16 16, i16 68, i16 146, i16 41, i16 170, i16 182, i16 219, i16 173, i16 255, i16 255], align 2
@__const.halUART_SetFormat.fraction_M_mapping = private unnamed_addr constant [11 x i16] [i16 0, i16 0, i16 0, i16 0, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 3], align 2
@gUartClkFreq = dso_local local_unnamed_addr global i32 0, align 4, !dbg !196
@nvic_function_table = dso_local local_unnamed_addr global [96 x %struct.nvic_function_t] zeroinitializer, align 4, !dbg !234
@__FUNCTION__.isrC_main = private unnamed_addr constant [10 x i8] c"isrC_main\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"ERROR: no IRQ handler! \0A\00", align 1
@g_gpt_context = internal global [5 x %struct.hal_gpt_context_t] zeroinitializer, align 4, !dbg !339
@__FUNCTION__.hal_gpt_init = private unnamed_addr constant [13 x i8] c"hal_gpt_init\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"Invalid port: %d.\00", align 1
@__FUNCTION__.hal_gpt_deinit = private unnamed_addr constant [15 x i8] c"hal_gpt_deinit\00", align 1
@.str.1.25 = private unnamed_addr constant [23 x i8] c"Should call  port: %d.\00", align 1
@__FUNCTION__.hal_gpt_get_free_run_count = private unnamed_addr constant [27 x i8] c"hal_gpt_get_free_run_count\00", align 1
@.str.2.26 = private unnamed_addr constant [23 x i8] c"Invalid parameter: %d.\00", align 1
@__FUNCTION__.hal_gpt_get_running_status = private unnamed_addr constant [27 x i8] c"hal_gpt_get_running_status\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Invalid hal_gpt_stop_timer to stop port: %d.\00", align 1
@__FUNCTION__.hal_gpt_register_callback = private unnamed_addr constant [26 x i8] c"hal_gpt_register_callback\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Invalid port: %d. Only port 0 or 1 works as timer.\00", align 1
@__FUNCTION__.hal_gpt_start_timer_ms = private unnamed_addr constant [23 x i8] c"hal_gpt_start_timer_ms\00", align 1
@__FUNCTION__.hal_gpt_stop_timer = private unnamed_addr constant [19 x i8] c"hal_gpt_stop_timer\00", align 1
@g_uart_context_table = internal global [2 x %struct.uart_context_t] zeroinitializer, align 4, !dbg !391
@hal_uart_map_receive_callback.func_tbl = internal unnamed_addr constant [2 x void ()*] [void ()* @hal_uart_receive_callback0, void ()* @hal_uart_receive_callback1], align 4, !dbg !448
@__const.hal_uart_translate_baudrate.baudrate_tbl = private unnamed_addr constant [13 x i32] [i32 110, i32 300, i32 1200, i32 2400, i32 4800, i32 9600, i32 19200, i32 38400, i32 57600, i32 115200, i32 230400, i32 460800, i32 921600], align 4
@__const.hal_uart_translate_word_length.databit_tbl = private unnamed_addr constant [4 x i16] [i16 0, i16 1, i16 2, i16 3], align 2
@__const.hal_uart_translate_parity.parity_tbl = private unnamed_addr constant [5 x i16] [i16 0, i16 8, i16 24, i16 0, i16 0], align 2
@__const.hal_uart_translate_stopbit.stopbit_tbl = private unnamed_addr constant [3 x i16] [i16 0, i16 4, i16 4], align 2
@.str.27 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.1.28 = private unnamed_addr constant [20 x i8] c"welcome to main()\0D\0A\00", align 1
@.str.2.29 = private unnamed_addr constant [29 x i8] c"\0D\0A ---gpc_example begin---\0D\0A\00", align 1
@.str.3.31 = private unnamed_addr constant [36 x i8] c"\0D\0A---gpc initialization failed---\0D\0A\00", align 1
@.str.4.30 = private unnamed_addr constant [38 x i8] c"\0D\0A--- gpc %dth test fail,cout=%d---\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"\0D\0A ---gpc_example finished!!!---\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"\0D\0Aexample project test fail.\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"\0D\0Aexample project test success.\0D\0A\00", align 1
@SystemCoreClock = dso_local local_unnamed_addr global i32 40000000, align 4, !dbg !501
@System_Initialize_Done = internal global i32 0, align 4, !dbg !569
@_sbrk_r.heap_end = internal unnamed_addr global i8* null, align 4, !dbg !571
@end = external dso_local global i8, align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"_exit\0A\00", align 1
@.str.1.39 = private unnamed_addr constant [10 x i8] c"_kill %d\0A\00", align 1
@.str.2.40 = private unnamed_addr constant [9 x i8] c"_getpid\0A\00", align 1
@build_date_time_str = dso_local local_unnamed_addr global [31 x i8] c"2022/12/13 07:54:33 GMT +00:00\00", align 1, !dbg !780
@sw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"SDK_V4.6.1\00", align 1, !dbg !785
@hw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"mt7687_hdk\00", align 1, !dbg !791

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_ResetTimer(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 !dbg !1023 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1027, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata i32 %1, metadata !1028, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata i1 %2, metadata !1029, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1030
  %4 = icmp ugt i32 %0, 1, !dbg !1031
  br i1 %4, label %5, label %8, !dbg !1033

5:                                                ; preds = %3
  %6 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 75) #13, !dbg !1034
  br label %7, !dbg !1034

7:                                                ; preds = %5, %7
  br label %7, !dbg !1034, !llvm.loop !1036

8:                                                ; preds = %3
  switch i32 %0, label %21 [
    i32 0, label %9
    i32 1, label %15
  ], !dbg !1037

9:                                                ; preds = %8
  store volatile i32 %1, i32* inttoptr (i32 -2096824300 to i32*), align 4, !dbg !1038
  %10 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1041
  br i1 %2, label %11, label %13, !dbg !1043

11:                                               ; preds = %9
  %12 = or i32 %10, 2, !dbg !1044
  store volatile i32 %12, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1044
  br label %21, !dbg !1046

13:                                               ; preds = %9
  %14 = and i32 %10, -3, !dbg !1047
  store volatile i32 %14, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1047
  br label %21

15:                                               ; preds = %8
  store volatile i32 %1, i32* inttoptr (i32 -2096824284 to i32*), align 4, !dbg !1049
  %16 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1052
  br i1 %2, label %17, label %19, !dbg !1054

17:                                               ; preds = %15
  %18 = or i32 %16, 2, !dbg !1055
  store volatile i32 %18, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1055
  br label %21, !dbg !1057

19:                                               ; preds = %15
  %20 = and i32 %16, -3, !dbg !1058
  store volatile i32 %20, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1058
  br label %21

21:                                               ; preds = %8, %19, %17, %11, %13
  ret void, !dbg !1060
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_Start(i32 noundef %0) local_unnamed_addr #0 !dbg !1061 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1065, metadata !DIExpression()), !dbg !1066
  switch i32 %0, label %2 [
    i32 0, label %5
    i32 1, label %9
    i32 4, label %13
  ], !dbg !1067

2:                                                ; preds = %1
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 96) #13, !dbg !1068
  br label %4, !dbg !1068

4:                                                ; preds = %2, %4
  br label %4, !dbg !1068, !llvm.loop !1071

5:                                                ; preds = %1
  %6 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1072
  %7 = or i32 %6, 1, !dbg !1072
  store volatile i32 %7, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1072
  %8 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #13, !dbg !1075
  br label %16, !dbg !1076

9:                                                ; preds = %1
  %10 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1077
  %11 = or i32 %10, 1, !dbg !1077
  store volatile i32 %11, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1077
  %12 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #13, !dbg !1080
  br label %16, !dbg !1081

13:                                               ; preds = %1
  %14 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1082
  %15 = or i32 %14, 1, !dbg !1082
  store volatile i32 %15, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1082
  br label %16, !dbg !1085

16:                                               ; preds = %9, %13, %5
  ret void, !dbg !1086
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @GPT_Stop(i32 noundef %0) local_unnamed_addr #3 !dbg !1087 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1089, metadata !DIExpression()), !dbg !1090
  switch i32 %0, label %18 [
    i32 0, label %2
    i32 1, label %7
    i32 2, label %12
    i32 4, label %15
  ], !dbg !1091

2:                                                ; preds = %1
  %3 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1092
  %4 = and i32 %3, -2, !dbg !1092
  store volatile i32 %4, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1092
  %5 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1095
  %6 = and i32 %5, -2, !dbg !1095
  store volatile i32 %6, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1095
  store volatile i32 1, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1096
  br label %18, !dbg !1097

7:                                                ; preds = %1
  %8 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1098
  %9 = and i32 %8, -3, !dbg !1098
  store volatile i32 %9, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1098
  %10 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1101
  %11 = and i32 %10, -2, !dbg !1101
  store volatile i32 %11, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1101
  store volatile i32 2, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1102
  br label %18, !dbg !1103

12:                                               ; preds = %1
  %13 = load volatile i32, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1104
  %14 = and i32 %13, -2, !dbg !1104
  store volatile i32 %14, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1104
  br label %18, !dbg !1107

15:                                               ; preds = %1
  %16 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1108
  %17 = and i32 %16, -2, !dbg !1108
  store volatile i32 %17, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1108
  br label %18, !dbg !1111

18:                                               ; preds = %1, %7, %15, %12, %2
  ret void, !dbg !1112
}

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_INT_Handler(i32 %0) #0 !dbg !1113 {
  call void @llvm.dbg.value(metadata i32 undef, metadata !1115, metadata !DIExpression()), !dbg !1117
  call void @llvm.dbg.value(metadata i32 undef, metadata !1115, metadata !DIExpression()), !dbg !1117
  %2 = load volatile i32, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1118
  %3 = and i32 %2, 65535, !dbg !1119
  call void @llvm.dbg.value(metadata i32 %2, metadata !1116, metadata !DIExpression()), !dbg !1117
  store volatile i32 %3, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1120
  %4 = and i32 %2, 1, !dbg !1121
  %5 = icmp eq i32 %4, 0, !dbg !1121
  br i1 %5, label %6, label %9, !dbg !1123

6:                                                ; preds = %1
  %7 = and i32 %2, 2, !dbg !1124
  %8 = icmp eq i32 %7, 0, !dbg !1124
  br i1 %8, label %13, label %9, !dbg !1126

9:                                                ; preds = %6, %1
  %10 = phi i32 [ 0, %1 ], [ 1, %6 ]
  %11 = phi void ()** [ @GPTTimer.0, %1 ], [ @GPTTimer.1, %6 ]
  tail call void @clear_TMR_INT_status_bit(i32 noundef %10) #13, !dbg !1127
  %12 = load void ()*, void ()** %11, align 4, !dbg !1127
  tail call void %12() #13, !dbg !1127
  br label %13, !dbg !1128

13:                                               ; preds = %9, %6
  ret void, !dbg !1128
}

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_init(i32 noundef %0, i32 noundef %1, void ()* noundef %2) local_unnamed_addr #0 !dbg !1129 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1133, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata i32 %1, metadata !1134, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata void ()* %2, metadata !1135, metadata !DIExpression()), !dbg !1136
  switch i32 %0, label %4 [
    i32 4, label %7
    i32 2, label %7
    i32 1, label %7
    i32 0, label %7
  ], !dbg !1137

4:                                                ; preds = %3
  %5 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 149) #13, !dbg !1138
  br label %6, !dbg !1138

6:                                                ; preds = %4, %6
  br label %6, !dbg !1138, !llvm.loop !1141

7:                                                ; preds = %3, %3, %3, %3
  %8 = icmp ult i32 %0, 2, !dbg !1142
  br i1 %8, label %9, label %13, !dbg !1143

9:                                                ; preds = %7
  %10 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 24, void (i32)* noundef nonnull @GPT_INT_Handler) #13, !dbg !1145
  %11 = tail call i32 @hal_nvic_set_priority(i32 noundef 24, i32 noundef 5) #13, !dbg !1147
  %12 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #13, !dbg !1148
  br label %13, !dbg !1149

13:                                               ; preds = %7, %9
  switch i32 %0, label %36 [
    i32 0, label %14
    i32 1, label %20
    i32 2, label %26
    i32 4, label %31
  ], !dbg !1150

14:                                               ; preds = %13
  store void ()* %2, void ()** @GPTTimer.0, align 4, !dbg !1151
  %15 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1154
  %16 = or i32 %15, 1, !dbg !1154
  store volatile i32 %16, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1154
  %17 = shl i32 %1, 2, !dbg !1155
  %18 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1156
  %19 = or i32 %18, %17, !dbg !1156
  store volatile i32 %19, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1156
  br label %36, !dbg !1157

20:                                               ; preds = %13
  store void ()* %2, void ()** @GPTTimer.1, align 4, !dbg !1158
  %21 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1161
  %22 = or i32 %21, 2, !dbg !1161
  store volatile i32 %22, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1161
  %23 = shl i32 %1, 2, !dbg !1162
  %24 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1163
  %25 = or i32 %24, %23, !dbg !1163
  store volatile i32 %25, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1163
  br label %36, !dbg !1164

26:                                               ; preds = %13
  %27 = shl i32 %1, 1, !dbg !1165
  %28 = or i32 %27, 1, !dbg !1168
  %29 = load volatile i32, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1169
  %30 = or i32 %29, %28, !dbg !1169
  store volatile i32 %30, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1169
  br label %36, !dbg !1170

31:                                               ; preds = %13
  %32 = shl i32 %1, 1, !dbg !1171
  %33 = or i32 %32, 1, !dbg !1174
  %34 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1175
  %35 = or i32 %34, %33, !dbg !1175
  store volatile i32 %35, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1175
  store volatile i32 0, i32* inttoptr (i32 -2096824220 to i32*), align 4, !dbg !1176
  br label %36, !dbg !1177

36:                                               ; preds = %13, %20, %31, %26, %14
  ret void, !dbg !1178
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @GPT_return_current_count(i32 noundef %0) local_unnamed_addr #0 !dbg !1179 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1183, metadata !DIExpression()), !dbg !1185
  switch i32 %0, label %2 [
    i32 0, label %8
    i32 1, label %5
    i32 2, label %6
    i32 4, label %7
  ], !dbg !1186

2:                                                ; preds = %1
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 177) #13, !dbg !1187
  br label %4, !dbg !1187

4:                                                ; preds = %4, %2
  br label %4, !dbg !1187, !llvm.loop !1190

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !1184, metadata !DIExpression()), !dbg !1185
  br label %8, !dbg !1191

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !1184, metadata !DIExpression()), !dbg !1185
  br label %8, !dbg !1195

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !1184, metadata !DIExpression()), !dbg !1185
  br label %8, !dbg !1198

8:                                                ; preds = %1, %5, %7, %6
  %9 = phi i32* [ inttoptr (i32 -2096824252 to i32*), %5 ], [ inttoptr (i32 -2096824268 to i32*), %6 ], [ inttoptr (i32 -2096824216 to i32*), %7 ], [ inttoptr (i32 -2096824256 to i32*), %1 ]
  %10 = load volatile i32, i32* %9, align 4, !dbg !1201
  call void @llvm.dbg.value(metadata i32 %10, metadata !1184, metadata !DIExpression()), !dbg !1185
  ret i32 %10, !dbg !1202
}

; Function Attrs: noinline nounwind optsize
define dso_local void @CM4_GPT2Init() local_unnamed_addr #0 !dbg !1203 {
  tail call void @GPT_init(i32 noundef 2, i32 noundef 1, void ()* noundef null) #14, !dbg !1205
  ret void, !dbg !1206
}

; Function Attrs: noinline nounwind optsize
define dso_local void @CM4_GPT4Init() local_unnamed_addr #0 !dbg !1207 {
  tail call void @GPT_init(i32 noundef 4, i32 noundef 1, void ()* noundef null) #14, !dbg !1208
  ret void, !dbg !1209
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpc_init(i32 noundef %0, %struct.hal_gpc_config_t* nocapture noundef readonly %1) local_unnamed_addr #0 !dbg !1210 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1223, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata %struct.hal_gpc_config_t* %1, metadata !1224, metadata !DIExpression()), !dbg !1225
  %3 = load i1, i1* @hal_gpc_has_initilized, align 1, !dbg !1226
  br i1 %3, label %6, label %4, !dbg !1228

4:                                                ; preds = %2
  %5 = load i1, i1* @pcnt_state_work, align 1, !dbg !1229
  br i1 %5, label %6, label %7, !dbg !1230

6:                                                ; preds = %4, %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.hal_gpc_init, i32 0, i32 0), i32 noundef 52, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i32 noundef %0) #13, !dbg !1231
  br label %13, !dbg !1233

7:                                                ; preds = %4
  %8 = icmp eq i32 %0, 0, !dbg !1234
  br i1 %8, label %9, label %13, !dbg !1236

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.hal_gpc_config_t, %struct.hal_gpc_config_t* %1, i32 0, i32 0, !dbg !1237
  %11 = load i32, i32* %10, align 4, !dbg !1237
  %12 = icmp eq i32 %11, 0, !dbg !1239
  store i1 %12, i1* @pcnt_edge, align 4, !dbg !1240
  store i1 false, i1* @pcnt_state_work, align 1, !dbg !1241
  store i1 true, i1* @hal_gpc_has_initilized, align 1, !dbg !1242
  br label %13, !dbg !1243

13:                                               ; preds = %7, %9, %6
  %14 = phi i32 [ -3, %6 ], [ 0, %9 ], [ -2, %7 ], !dbg !1225
  ret i32 %14, !dbg !1244
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn
define dso_local i32 @hal_gpc_deinit(i32 noundef %0) local_unnamed_addr #4 !dbg !1245 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1249, metadata !DIExpression()), !dbg !1250
  %2 = icmp eq i32 %0, 0, !dbg !1251
  br i1 %2, label %3, label %6, !dbg !1253

3:                                                ; preds = %1
  %4 = load i1, i1* @pcnt_state_work, align 1, !dbg !1254
  br i1 %4, label %6, label %5, !dbg !1256

5:                                                ; preds = %3
  store i1 true, i1* @pcnt_edge, align 4, !dbg !1257
  store i1 false, i1* @pcnt_state_work, align 1, !dbg !1258
  store i1 false, i1* @hal_gpc_has_initilized, align 1, !dbg !1259
  br label %6, !dbg !1260

6:                                                ; preds = %3, %1, %5
  %7 = phi i32 [ 0, %5 ], [ -2, %1 ], [ -3, %3 ], !dbg !1250
  ret i32 %7, !dbg !1261
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn
define dso_local i32 @hal_gpc_get_running_status(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #4 !dbg !1262 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1268, metadata !DIExpression()), !dbg !1270
  call void @llvm.dbg.value(metadata i32* %1, metadata !1269, metadata !DIExpression()), !dbg !1270
  %3 = icmp eq i32 %0, 0, !dbg !1271
  br i1 %3, label %4, label %7, !dbg !1273

4:                                                ; preds = %2
  %5 = load i1, i1* @pcnt_state_work, align 1, !dbg !1274
  %6 = zext i1 %5 to i32
  store i32 %6, i32* %1, align 4, !dbg !1276
  br label %7, !dbg !1277

7:                                                ; preds = %2, %4
  %8 = phi i32 [ 0, %4 ], [ -2, %2 ], !dbg !1270
  ret i32 %8, !dbg !1278
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpc_enable(i32 noundef %0) local_unnamed_addr #0 !dbg !1279 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1281, metadata !DIExpression()), !dbg !1282
  %2 = load i1, i1* @hal_gpc_has_initilized, align 1, !dbg !1283
  br i1 %2, label %3, label %9, !dbg !1285

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !1286
  br i1 %4, label %5, label %9, !dbg !1288

5:                                                ; preds = %3
  %6 = load i1, i1* @pcnt_edge, align 4, !dbg !1289
  %7 = zext i1 %6 to i32, !dbg !1289
  %8 = tail call i32 @hal_pcnt_config(i1 noundef zeroext true, i32 noundef %7) #13, !dbg !1290
  store i1 true, i1* @pcnt_state_work, align 1, !dbg !1291
  br label %9, !dbg !1292

9:                                                ; preds = %3, %1, %5
  %10 = phi i32 [ 0, %5 ], [ -3, %1 ], [ -2, %3 ], !dbg !1282
  ret i32 %10, !dbg !1293
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpc_disable(i32 noundef %0) local_unnamed_addr #0 !dbg !1294 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1296, metadata !DIExpression()), !dbg !1297
  %2 = load i1, i1* @hal_gpc_has_initilized, align 1, !dbg !1298
  br i1 %2, label %3, label %9, !dbg !1300

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !1301
  br i1 %4, label %5, label %9, !dbg !1303

5:                                                ; preds = %3
  %6 = load i1, i1* @pcnt_edge, align 4, !dbg !1304
  %7 = zext i1 %6 to i32, !dbg !1304
  %8 = tail call i32 @hal_pcnt_config(i1 noundef zeroext false, i32 noundef %7) #13, !dbg !1305
  store i1 false, i1* @pcnt_state_work, align 1, !dbg !1306
  br label %9, !dbg !1307

9:                                                ; preds = %3, %1, %5
  %10 = phi i32 [ 0, %5 ], [ -3, %1 ], [ -2, %3 ], !dbg !1297
  ret i32 %10, !dbg !1308
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpc_get_and_clear_count(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !1309 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1314, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i32* %1, metadata !1315, metadata !DIExpression()), !dbg !1316
  %3 = load i1, i1* @hal_gpc_has_initilized, align 1, !dbg !1317
  br i1 %3, label %4, label %8, !dbg !1319

4:                                                ; preds = %2
  %5 = icmp eq i32 %0, 0, !dbg !1320
  br i1 %5, label %6, label %8, !dbg !1322

6:                                                ; preds = %4
  %7 = tail call i32 @hal_pcnt_read_and_clear() #13, !dbg !1323
  store i32 %7, i32* %1, align 4, !dbg !1324
  br label %8, !dbg !1325

8:                                                ; preds = %4, %2, %6
  %9 = phi i32 [ 0, %6 ], [ -3, %2 ], [ -2, %4 ], !dbg !1316
  ret i32 %9, !dbg !1326
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_ConfDirection(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1327 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1332, metadata !DIExpression()), !dbg !1337
  call void @llvm.dbg.value(metadata i8 %1, metadata !1333, metadata !DIExpression()), !dbg !1337
  %3 = lshr i32 %0, 5, !dbg !1338
  call void @llvm.dbg.value(metadata i32 %3, metadata !1334, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1337
  %4 = trunc i32 %0 to i16, !dbg !1339
  %5 = and i16 %4, 31, !dbg !1339
  call void @llvm.dbg.value(metadata i16 %4, metadata !1336, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1337
  %6 = trunc i32 %3 to i16, !dbg !1340
  switch i16 %6, label %97 [
    i16 0, label %7
    i16 1, label %70
  ], !dbg !1340

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 1, !dbg !1341
  %9 = zext i16 %5 to i32, !dbg !1344
  %10 = icmp ult i16 %5, 27, !dbg !1344
  br i1 %8, label %11, label %46, !dbg !1345

11:                                               ; preds = %7
  br i1 %10, label %12, label %17, !dbg !1346

12:                                               ; preds = %11
  %13 = shl nuw i32 1, %9, !dbg !1348
  %14 = xor i32 %13, -1, !dbg !1351
  %15 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1352
  %16 = and i32 %15, %14, !dbg !1352
  store volatile i32 %16, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1352
  br label %44, !dbg !1353

17:                                               ; preds = %11
  %18 = trunc i32 %0 to i5, !dbg !1354
  switch i5 %18, label %39 [
    i5 -5, label %19
    i5 -4, label %24
    i5 -3, label %29
    i5 -2, label %34
  ], !dbg !1354

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1355
  %21 = and i32 %20, -3, !dbg !1355
  store volatile i32 %21, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1355
  %22 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1358
  %23 = or i32 %22, 2048, !dbg !1358
  store volatile i32 %23, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1358
  br label %44, !dbg !1359

24:                                               ; preds = %17
  %25 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1360
  %26 = and i32 %25, -3, !dbg !1360
  store volatile i32 %26, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1360
  %27 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1363
  %28 = or i32 %27, 2048, !dbg !1363
  store volatile i32 %28, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1363
  br label %44, !dbg !1364

29:                                               ; preds = %17
  %30 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1365
  %31 = and i32 %30, -3, !dbg !1365
  store volatile i32 %31, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1365
  %32 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1368
  %33 = or i32 %32, 2048, !dbg !1368
  store volatile i32 %33, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1368
  br label %44, !dbg !1369

34:                                               ; preds = %17
  %35 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1370
  %36 = and i32 %35, -3, !dbg !1370
  store volatile i32 %36, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1370
  %37 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1373
  %38 = or i32 %37, 2048, !dbg !1373
  store volatile i32 %38, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1373
  br label %44, !dbg !1374

39:                                               ; preds = %17
  %40 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1375
  %41 = and i32 %40, -3, !dbg !1375
  store volatile i32 %41, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1375
  %42 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1378
  %43 = or i32 %42, 2048, !dbg !1378
  store volatile i32 %43, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1378
  br label %44, !dbg !1379

44:                                               ; preds = %19, %29, %39, %34, %24, %12
  %45 = shl nuw i32 1, %9, !dbg !1380
  store volatile i32 %45, i32* inttoptr (i32 -2097106796 to i32*), align 4, !dbg !1380
  br label %97, !dbg !1381

46:                                               ; preds = %7
  br i1 %10, label %47, label %51, !dbg !1382

47:                                               ; preds = %46
  %48 = shl nuw i32 1, %9, !dbg !1384
  %49 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1387
  %50 = or i32 %49, %48, !dbg !1387
  store volatile i32 %50, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1387
  br label %68, !dbg !1388

51:                                               ; preds = %46
  %52 = trunc i32 %0 to i5, !dbg !1389
  switch i5 %52, label %65 [
    i5 -5, label %53
    i5 -4, label %56
    i5 -3, label %59
    i5 -2, label %62
  ], !dbg !1389

53:                                               ; preds = %51
  %54 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1390
  %55 = or i32 %54, 2050, !dbg !1390
  store volatile i32 %55, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1390
  br label %68, !dbg !1393

56:                                               ; preds = %51
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1394
  %58 = or i32 %57, 2050, !dbg !1394
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1394
  br label %68, !dbg !1397

59:                                               ; preds = %51
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1398
  %61 = or i32 %60, 2050, !dbg !1398
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1398
  br label %68, !dbg !1401

62:                                               ; preds = %51
  %63 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1402
  %64 = or i32 %63, 2050, !dbg !1402
  store volatile i32 %64, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1402
  br label %68, !dbg !1405

65:                                               ; preds = %51
  %66 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1406
  %67 = or i32 %66, 2050, !dbg !1406
  store volatile i32 %67, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1406
  br label %68, !dbg !1409

68:                                               ; preds = %53, %59, %65, %62, %56, %47
  %69 = shl nuw i32 1, %9, !dbg !1410
  store volatile i32 %69, i32* inttoptr (i32 -2097106792 to i32*), align 8, !dbg !1410
  br label %97

70:                                               ; preds = %2
  %71 = icmp eq i8 %1, 1, !dbg !1411
  %72 = zext i16 %5 to i32, !dbg !1413
  %73 = icmp eq i16 %5, 0, !dbg !1413
  br i1 %71, label %74, label %87, !dbg !1414

74:                                               ; preds = %70
  br i1 %73, label %80, label %75, !dbg !1415

75:                                               ; preds = %74
  %76 = shl nuw i32 1, %72, !dbg !1417
  %77 = xor i32 %76, -1, !dbg !1420
  %78 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1421
  %79 = and i32 %78, %77, !dbg !1421
  store volatile i32 %79, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1421
  br label %85, !dbg !1422

80:                                               ; preds = %74
  %81 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1423
  %82 = and i32 %81, -3, !dbg !1423
  store volatile i32 %82, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1423
  %83 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1425
  %84 = or i32 %83, 2048, !dbg !1425
  store volatile i32 %84, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1425
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i32 [ 1, %80 ], [ %76, %75 ], !dbg !1426
  store volatile i32 %86, i32* inttoptr (i32 -2097106780 to i32*), align 4, !dbg !1426
  br label %97, !dbg !1427

87:                                               ; preds = %70
  br i1 %73, label %92, label %88, !dbg !1428

88:                                               ; preds = %87
  %89 = shl nuw i32 1, %72, !dbg !1430
  %90 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1433
  %91 = or i32 %90, %89, !dbg !1433
  store volatile i32 %91, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1433
  br label %95, !dbg !1434

92:                                               ; preds = %87
  %93 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1435
  %94 = or i32 %93, 2050, !dbg !1435
  store volatile i32 %94, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1435
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi i32 [ 1, %92 ], [ %89, %88 ], !dbg !1437
  store volatile i32 %96, i32* inttoptr (i32 -2097106776 to i32*), align 8, !dbg !1437
  br label %97

97:                                               ; preds = %68, %44, %95, %85, %2
  %98 = phi i32 [ -1, %2 ], [ 0, %85 ], [ 0, %95 ], [ 0, %44 ], [ 0, %68 ], !dbg !1337
  ret i32 %98, !dbg !1438
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPO_Write(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1439 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1441, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 %1, metadata !1442, metadata !DIExpression()), !dbg !1445
  %3 = lshr i32 %0, 5, !dbg !1446
  call void @llvm.dbg.value(metadata i32 %3, metadata !1443, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1445
  %4 = trunc i32 %0 to i16, !dbg !1447
  %5 = and i16 %4, 31, !dbg !1447
  call void @llvm.dbg.value(metadata i16 %5, metadata !1444, metadata !DIExpression()), !dbg !1445
  %6 = trunc i32 %3 to i16, !dbg !1448
  switch i16 %6, label %19 [
    i16 0, label %7
    i16 1, label %13
  ], !dbg !1448

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 0, !dbg !1449
  %9 = zext i16 %5 to i32, !dbg !1452
  %10 = shl nuw i32 1, %9, !dbg !1452
  br i1 %8, label %12, label %11, !dbg !1453

11:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106844 to i32*), align 4, !dbg !1454
  br label %19, !dbg !1456

12:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106840 to i32*), align 8, !dbg !1457
  br label %19

13:                                               ; preds = %2
  %14 = icmp eq i8 %1, 0, !dbg !1459
  %15 = zext i16 %5 to i32, !dbg !1461
  %16 = shl nuw i32 1, %15, !dbg !1461
  br i1 %14, label %18, label %17, !dbg !1462

17:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106828 to i32*), align 4, !dbg !1463
  br label %19, !dbg !1465

18:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106824 to i32*), align 8, !dbg !1466
  br label %19

19:                                               ; preds = %12, %11, %18, %17, %2
  %20 = phi i32 [ -1, %2 ], [ 0, %17 ], [ 0, %18 ], [ 0, %11 ], [ 0, %12 ], !dbg !1445
  ret i32 %20, !dbg !1468
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DOUT(i32 noundef %0) local_unnamed_addr #5 !dbg !1469 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1473, metadata !DIExpression()), !dbg !1477
  %2 = lshr i32 %0, 5, !dbg !1478
  call void @llvm.dbg.value(metadata i32 %2, metadata !1474, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1477
  %3 = and i32 %0, 31, !dbg !1479
  call void @llvm.dbg.value(metadata i32 %0, metadata !1475, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1477
  call void @llvm.dbg.value(metadata i8 0, metadata !1476, metadata !DIExpression()), !dbg !1477
  %4 = trunc i32 %2 to i16, !dbg !1480
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1480

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1476, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1477
  br label %6, !dbg !1481

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106832 to i32*), %5 ], [ inttoptr (i32 -2097106848 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1483
  %9 = lshr i32 %8, %3, !dbg !1483
  %10 = trunc i32 %9 to i8, !dbg !1483
  %11 = and i8 %10, 1, !dbg !1483
  call void @llvm.dbg.value(metadata i8 %11, metadata !1476, metadata !DIExpression()), !dbg !1477
  br label %12, !dbg !1484

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1477
  ret i8 %13, !dbg !1485
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DIN(i32 noundef %0) local_unnamed_addr #5 !dbg !1486 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1488, metadata !DIExpression()), !dbg !1492
  %2 = lshr i32 %0, 5, !dbg !1493
  call void @llvm.dbg.value(metadata i32 %2, metadata !1489, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1492
  %3 = and i32 %0, 31, !dbg !1494
  call void @llvm.dbg.value(metadata i32 %0, metadata !1490, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1492
  call void @llvm.dbg.value(metadata i8 0, metadata !1491, metadata !DIExpression()), !dbg !1492
  %4 = trunc i32 %2 to i16, !dbg !1495
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1495

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1491, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1492
  br label %6, !dbg !1496

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106748 to i32*), %5 ], [ inttoptr (i32 -2097106752 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 4, !dbg !1498
  %9 = lshr i32 %8, %3, !dbg !1498
  %10 = trunc i32 %9 to i8, !dbg !1498
  %11 = and i8 %10, 1, !dbg !1498
  call void @llvm.dbg.value(metadata i8 %11, metadata !1491, metadata !DIExpression()), !dbg !1492
  br label %12, !dbg !1499

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1492
  ret i8 %13, !dbg !1500
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_OutEnable(i32 noundef %0) local_unnamed_addr #5 !dbg !1501 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1503, metadata !DIExpression()), !dbg !1507
  %2 = lshr i32 %0, 5, !dbg !1508
  call void @llvm.dbg.value(metadata i32 %2, metadata !1504, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1507
  %3 = and i32 %0, 31, !dbg !1509
  call void @llvm.dbg.value(metadata i32 %0, metadata !1505, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1507
  call void @llvm.dbg.value(metadata i8 0, metadata !1506, metadata !DIExpression()), !dbg !1507
  %4 = trunc i32 %2 to i16, !dbg !1510
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1510

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1506, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1507
  br label %6, !dbg !1511

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106784 to i32*), %5 ], [ inttoptr (i32 -2097106800 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1513
  %9 = lshr i32 %8, %3, !dbg !1513
  %10 = trunc i32 %9 to i8, !dbg !1513
  %11 = and i8 %10, 1, !dbg !1513
  call void @llvm.dbg.value(metadata i8 %11, metadata !1506, metadata !DIExpression()), !dbg !1507
  br label %12, !dbg !1514

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1507
  ret i8 %13, !dbg !1515
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_SET(i32 noundef %0) local_unnamed_addr #3 !dbg !1516 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1520, metadata !DIExpression()), !dbg !1523
  %2 = lshr i32 %0, 5, !dbg !1524
  call void @llvm.dbg.value(metadata i32 %2, metadata !1521, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1523
  %3 = trunc i32 %0 to i16, !dbg !1525
  %4 = and i16 %3, 31, !dbg !1525
  call void @llvm.dbg.value(metadata i16 %3, metadata !1522, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1523
  %5 = tail call i32 @halGPIO_PullDown_RESET(i32 noundef %0) #14, !dbg !1526
  %6 = trunc i32 %2 to i16, !dbg !1527
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1527

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1528
  br i1 %8, label %9, label %12, !dbg !1531

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1532
  %11 = shl nuw nsw i32 1, %10, !dbg !1533
  store volatile i32 %11, i32* inttoptr (i32 -2097106940 to i32*), align 4, !dbg !1533
  br label %49, !dbg !1535

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1536
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1536

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1537
  %16 = and i32 %15, -29, !dbg !1537
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1537
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1540
  %18 = or i32 %17, 2052, !dbg !1540
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1540
  br label %49, !dbg !1541

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1542
  %21 = and i32 %20, -29, !dbg !1542
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1542
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1545
  %23 = or i32 %22, 2052, !dbg !1545
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1545
  br label %49, !dbg !1546

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1547
  %26 = and i32 %25, -29, !dbg !1547
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1547
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1550
  %28 = or i32 %27, 2052, !dbg !1550
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1550
  br label %49, !dbg !1551

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1552
  %31 = and i32 %30, -29, !dbg !1552
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1552
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1555
  %33 = or i32 %32, 2052, !dbg !1555
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1555
  br label %49, !dbg !1556

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1557
  %36 = and i32 %35, -29, !dbg !1557
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1557
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1560
  %38 = or i32 %37, 2052, !dbg !1560
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1560
  br label %49, !dbg !1561

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1562
  br i1 %40, label %41, label %46, !dbg !1564

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1565
  %43 = and i32 %42, -29, !dbg !1565
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1565
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1567
  %45 = or i32 %44, 2052, !dbg !1567
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1567
  br label %49, !dbg !1568

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1569
  %48 = shl nuw i32 1, %47, !dbg !1569
  store volatile i32 %48, i32* inttoptr (i32 -2097106924 to i32*), align 4, !dbg !1569
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1523
  ret i32 %50, !dbg !1571
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_RESET(i32 noundef %0) local_unnamed_addr #3 !dbg !1572 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1574, metadata !DIExpression()), !dbg !1577
  %2 = lshr i32 %0, 5, !dbg !1578
  call void @llvm.dbg.value(metadata i32 %2, metadata !1575, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1577
  %3 = trunc i32 %0 to i16, !dbg !1579
  %4 = and i16 %3, 31, !dbg !1579
  call void @llvm.dbg.value(metadata i16 %3, metadata !1576, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1577
  %5 = trunc i32 %2 to i16, !dbg !1580
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1580

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1581
  br i1 %7, label %8, label %11, !dbg !1584

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1585
  %10 = shl nuw nsw i32 1, %9, !dbg !1586
  store volatile i32 %10, i32* inttoptr (i32 -2097106888 to i32*), align 8, !dbg !1586
  br label %48, !dbg !1588

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1589
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1589

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1590
  %15 = and i32 %14, -29, !dbg !1590
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1590
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1593
  %17 = or i32 %16, 2048, !dbg !1593
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1593
  br label %48, !dbg !1594

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1595
  %20 = and i32 %19, -29, !dbg !1595
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1595
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1598
  %22 = or i32 %21, 2048, !dbg !1598
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1598
  br label %48, !dbg !1599

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1600
  %25 = and i32 %24, -29, !dbg !1600
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1600
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1603
  %27 = or i32 %26, 2048, !dbg !1603
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1603
  br label %48, !dbg !1604

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1605
  %30 = and i32 %29, -29, !dbg !1605
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1605
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1608
  %32 = or i32 %31, 2048, !dbg !1608
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1608
  br label %48, !dbg !1609

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1610
  %35 = and i32 %34, -29, !dbg !1610
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1610
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1613
  %37 = or i32 %36, 2048, !dbg !1613
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1613
  br label %48, !dbg !1614

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1615
  br i1 %39, label %40, label %45, !dbg !1617

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1618
  %42 = and i32 %41, -29, !dbg !1618
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1618
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1620
  %44 = or i32 %43, 2048, !dbg !1620
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1620
  br label %48, !dbg !1621

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1622
  %47 = shl nuw i32 1, %46, !dbg !1622
  store volatile i32 %47, i32* inttoptr (i32 -2097106872 to i32*), align 8, !dbg !1622
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1577
  ret i32 %49, !dbg !1624
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_RESET(i32 noundef %0) local_unnamed_addr #3 !dbg !1625 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1627, metadata !DIExpression()), !dbg !1630
  %2 = lshr i32 %0, 5, !dbg !1631
  call void @llvm.dbg.value(metadata i32 %2, metadata !1628, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1630
  %3 = trunc i32 %0 to i16, !dbg !1632
  %4 = and i16 %3, 31, !dbg !1632
  call void @llvm.dbg.value(metadata i16 %3, metadata !1629, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1630
  %5 = trunc i32 %2 to i16, !dbg !1633
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1633

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1634
  br i1 %7, label %8, label %11, !dbg !1637

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1638
  %10 = shl nuw nsw i32 1, %9, !dbg !1639
  store volatile i32 %10, i32* inttoptr (i32 -2097106936 to i32*), align 8, !dbg !1639
  br label %48, !dbg !1641

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1642
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1642

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1643
  %15 = and i32 %14, -29, !dbg !1643
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1643
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1646
  %17 = or i32 %16, 2048, !dbg !1646
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1646
  br label %48, !dbg !1647

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1648
  %20 = and i32 %19, -29, !dbg !1648
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1648
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1651
  %22 = or i32 %21, 2048, !dbg !1651
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1651
  br label %48, !dbg !1652

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1653
  %25 = and i32 %24, -29, !dbg !1653
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1653
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1656
  %27 = or i32 %26, 2048, !dbg !1656
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1656
  br label %48, !dbg !1657

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1658
  %30 = and i32 %29, -29, !dbg !1658
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1658
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1661
  %32 = or i32 %31, 2048, !dbg !1661
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1661
  br label %48, !dbg !1662

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1663
  %35 = and i32 %34, -29, !dbg !1663
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1663
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1666
  %37 = or i32 %36, 2048, !dbg !1666
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1666
  br label %48, !dbg !1667

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1668
  br i1 %39, label %40, label %45, !dbg !1670

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1671
  %42 = and i32 %41, -29, !dbg !1671
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1671
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1673
  %44 = or i32 %43, 2048, !dbg !1673
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1673
  br label %48, !dbg !1674

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1675
  %47 = shl nuw i32 1, %46, !dbg !1675
  store volatile i32 %47, i32* inttoptr (i32 -2097106920 to i32*), align 8, !dbg !1675
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1630
  ret i32 %49, !dbg !1677
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_SET(i32 noundef %0) local_unnamed_addr #3 !dbg !1678 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1680, metadata !DIExpression()), !dbg !1683
  %2 = lshr i32 %0, 5, !dbg !1684
  call void @llvm.dbg.value(metadata i32 %2, metadata !1681, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1683
  %3 = trunc i32 %0 to i16, !dbg !1685
  %4 = and i16 %3, 31, !dbg !1685
  call void @llvm.dbg.value(metadata i16 %3, metadata !1682, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1683
  %5 = tail call i32 @halGPIO_PullUp_RESET(i32 noundef %0) #14, !dbg !1686
  %6 = trunc i32 %2 to i16, !dbg !1687
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1687

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1688
  br i1 %8, label %9, label %12, !dbg !1691

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1692
  %11 = shl nuw nsw i32 1, %10, !dbg !1693
  store volatile i32 %11, i32* inttoptr (i32 -2097106892 to i32*), align 4, !dbg !1693
  br label %49, !dbg !1695

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1696
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1696

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1697
  %16 = and i32 %15, -29, !dbg !1697
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1697
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1700
  %18 = or i32 %17, 2068, !dbg !1700
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1700
  br label %49, !dbg !1701

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1702
  %21 = and i32 %20, -29, !dbg !1702
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1702
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1705
  %23 = or i32 %22, 2068, !dbg !1705
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1705
  br label %49, !dbg !1706

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1707
  %26 = and i32 %25, -29, !dbg !1707
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1707
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1710
  %28 = or i32 %27, 2068, !dbg !1710
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1710
  br label %49, !dbg !1711

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1712
  %31 = and i32 %30, -29, !dbg !1712
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1712
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1715
  %33 = or i32 %32, 2068, !dbg !1715
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1715
  br label %49, !dbg !1716

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1717
  %36 = and i32 %35, -29, !dbg !1717
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1717
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1720
  %38 = or i32 %37, 2068, !dbg !1720
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1720
  br label %49, !dbg !1721

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1722
  br i1 %40, label %41, label %46, !dbg !1724

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1725
  %43 = and i32 %42, -29, !dbg !1725
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1725
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1727
  %45 = or i32 %44, 2068, !dbg !1727
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1727
  br label %49, !dbg !1728

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1729
  %48 = shl nuw i32 1, %47, !dbg !1729
  store volatile i32 %48, i32* inttoptr (i32 -2097106876 to i32*), align 4, !dbg !1729
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1683
  ret i32 %50, !dbg !1731
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_SetDriving(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1732 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1734, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata i8 %1, metadata !1735, metadata !DIExpression()), !dbg !1738
  %3 = lshr i32 %0, 4, !dbg !1739
  call void @llvm.dbg.value(metadata i32 %3, metadata !1736, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1738
  %4 = trunc i32 %0 to i16, !dbg !1740
  %5 = and i16 %4, 15, !dbg !1740
  call void @llvm.dbg.value(metadata i16 %4, metadata !1737, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1738
  %6 = trunc i32 %3 to i16, !dbg !1741
  switch i16 %6, label %131 [
    i16 0, label %7
    i16 1, label %20
    i16 2, label %92
    i16 3, label %118
  ], !dbg !1741

7:                                                ; preds = %2
  %8 = shl nuw nsw i16 %5, 1, !dbg !1742
  %9 = zext i16 %8 to i32, !dbg !1742
  %10 = shl nuw i32 3, %9, !dbg !1744
  %11 = xor i32 %10, -1, !dbg !1745
  %12 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1746
  %13 = and i32 %12, %11, !dbg !1746
  store volatile i32 %13, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1746
  %14 = lshr i8 %1, 2, !dbg !1747
  %15 = zext i8 %14 to i32, !dbg !1747
  %16 = add nsw i32 %15, -1, !dbg !1748
  %17 = shl i32 %16, %9, !dbg !1749
  %18 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1750
  %19 = or i32 %18, %17, !dbg !1750
  store volatile i32 %19, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1750
  br label %131, !dbg !1751

20:                                               ; preds = %2
  %21 = icmp ult i16 %5, 11, !dbg !1752
  br i1 %21, label %22, label %35, !dbg !1754

22:                                               ; preds = %20
  %23 = shl nuw nsw i16 %5, 1, !dbg !1755
  %24 = zext i16 %23 to i32, !dbg !1755
  %25 = shl nuw nsw i32 3, %24, !dbg !1757
  %26 = xor i32 %25, -1, !dbg !1758
  %27 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1759
  %28 = and i32 %27, %26, !dbg !1759
  store volatile i32 %28, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1759
  %29 = lshr i8 %1, 2, !dbg !1760
  %30 = zext i8 %29 to i32, !dbg !1760
  %31 = add nsw i32 %30, -1, !dbg !1761
  %32 = shl nsw i32 %31, %24, !dbg !1762
  %33 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1763
  %34 = or i32 %33, %32, !dbg !1763
  store volatile i32 %34, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1763
  br label %131, !dbg !1764

35:                                               ; preds = %20
  %36 = trunc i32 %0 to i4, !dbg !1765
  switch i4 %36, label %81 [
    i4 -5, label %37
    i4 -4, label %48
    i4 -3, label %59
    i4 -2, label %70
  ], !dbg !1765

37:                                               ; preds = %35
  %38 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1766
  %39 = and i32 %38, -449, !dbg !1766
  store volatile i32 %39, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1766
  %40 = lshr i8 %1, 1, !dbg !1769
  %41 = zext i8 %40 to i32, !dbg !1769
  %42 = shl nuw nsw i32 %41, 6, !dbg !1770
  %43 = add nsw i32 %42, -64, !dbg !1770
  %44 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1771
  %45 = or i32 %44, %43, !dbg !1771
  store volatile i32 %45, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1771
  %46 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1772
  %47 = or i32 %46, 2048, !dbg !1772
  store volatile i32 %47, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1772
  br label %131, !dbg !1773

48:                                               ; preds = %35
  %49 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1774
  %50 = and i32 %49, -449, !dbg !1774
  store volatile i32 %50, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1774
  %51 = lshr i8 %1, 1, !dbg !1777
  %52 = zext i8 %51 to i32, !dbg !1777
  %53 = shl nuw nsw i32 %52, 6, !dbg !1778
  %54 = add nsw i32 %53, -64, !dbg !1778
  %55 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1779
  %56 = or i32 %55, %54, !dbg !1779
  store volatile i32 %56, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1779
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1780
  %58 = or i32 %57, 2048, !dbg !1780
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1780
  br label %131, !dbg !1781

59:                                               ; preds = %35
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1782
  %61 = and i32 %60, -449, !dbg !1782
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1782
  %62 = lshr i8 %1, 1, !dbg !1785
  %63 = zext i8 %62 to i32, !dbg !1785
  %64 = shl nuw nsw i32 %63, 6, !dbg !1786
  %65 = add nsw i32 %64, -64, !dbg !1786
  %66 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1787
  %67 = or i32 %66, %65, !dbg !1787
  store volatile i32 %67, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1787
  %68 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1788
  %69 = or i32 %68, 2048, !dbg !1788
  store volatile i32 %69, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1788
  br label %131, !dbg !1789

70:                                               ; preds = %35
  %71 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1790
  %72 = and i32 %71, -449, !dbg !1790
  store volatile i32 %72, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1790
  %73 = lshr i8 %1, 1, !dbg !1793
  %74 = zext i8 %73 to i32, !dbg !1793
  %75 = shl nuw nsw i32 %74, 6, !dbg !1794
  %76 = add nsw i32 %75, -64, !dbg !1794
  %77 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1795
  %78 = or i32 %77, %76, !dbg !1795
  store volatile i32 %78, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1795
  %79 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1796
  %80 = or i32 %79, 2048, !dbg !1796
  store volatile i32 %80, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1796
  br label %131, !dbg !1797

81:                                               ; preds = %35
  %82 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1798
  %83 = and i32 %82, -449, !dbg !1798
  store volatile i32 %83, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1798
  %84 = lshr i8 %1, 1, !dbg !1801
  %85 = zext i8 %84 to i32, !dbg !1801
  %86 = shl nuw nsw i32 %85, 6, !dbg !1802
  %87 = add nsw i32 %86, -64, !dbg !1802
  %88 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1803
  %89 = or i32 %88, %87, !dbg !1803
  store volatile i32 %89, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1803
  %90 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1804
  %91 = or i32 %90, 2048, !dbg !1804
  store volatile i32 %91, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1804
  br label %131, !dbg !1805

92:                                               ; preds = %2
  %93 = icmp eq i16 %5, 0, !dbg !1806
  br i1 %93, label %94, label %105, !dbg !1808

94:                                               ; preds = %92
  %95 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1809
  %96 = and i32 %95, -449, !dbg !1809
  store volatile i32 %96, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1809
  %97 = lshr i8 %1, 1, !dbg !1811
  %98 = zext i8 %97 to i32, !dbg !1811
  %99 = shl nuw nsw i32 %98, 6, !dbg !1812
  %100 = add nsw i32 %99, -64, !dbg !1812
  %101 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1813
  %102 = or i32 %101, %100, !dbg !1813
  store volatile i32 %102, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1813
  %103 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1814
  %104 = or i32 %103, 2048, !dbg !1814
  store volatile i32 %104, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1814
  br label %131, !dbg !1815

105:                                              ; preds = %92
  %106 = shl nuw nsw i16 %5, 1, !dbg !1816
  %107 = zext i16 %106 to i32, !dbg !1816
  %108 = shl nuw i32 3, %107, !dbg !1818
  %109 = xor i32 %108, -1, !dbg !1819
  %110 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1820
  %111 = and i32 %110, %109, !dbg !1820
  store volatile i32 %111, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1820
  %112 = lshr i8 %1, 2, !dbg !1821
  %113 = zext i8 %112 to i32, !dbg !1821
  %114 = add nsw i32 %113, -1, !dbg !1822
  %115 = shl i32 %114, %107, !dbg !1823
  %116 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1824
  %117 = or i32 %116, %115, !dbg !1824
  store volatile i32 %117, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1824
  br label %131

118:                                              ; preds = %2
  %119 = shl nuw nsw i16 %5, 1, !dbg !1825
  %120 = zext i16 %119 to i32, !dbg !1825
  %121 = shl nuw i32 3, %120, !dbg !1826
  %122 = xor i32 %121, -1, !dbg !1827
  %123 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1828
  %124 = and i32 %123, %122, !dbg !1828
  store volatile i32 %124, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1828
  %125 = lshr i8 %1, 2, !dbg !1829
  %126 = zext i8 %125 to i32, !dbg !1829
  %127 = add nsw i32 %126, -1, !dbg !1830
  %128 = shl i32 %127, %120, !dbg !1831
  %129 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1832
  %130 = or i32 %129, %128, !dbg !1832
  store volatile i32 %130, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1832
  br label %131, !dbg !1833

131:                                              ; preds = %7, %118, %37, %59, %81, %70, %48, %22, %105, %94, %2
  %132 = phi i32 [ -1, %2 ], [ 0, %94 ], [ 0, %105 ], [ 0, %22 ], [ 0, %48 ], [ 0, %70 ], [ 0, %81 ], [ 0, %59 ], [ 0, %37 ], [ 0, %118 ], [ 0, %7 ], !dbg !1738
  ret i32 %132, !dbg !1834
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @halGPIO_GetDriving(i32 noundef %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #5 !dbg !1835 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1840, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8* %1, metadata !1841, metadata !DIExpression()), !dbg !1845
  %3 = lshr i32 %0, 4, !dbg !1846
  call void @llvm.dbg.value(metadata i32 %3, metadata !1842, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1845
  %4 = trunc i32 %0 to i16, !dbg !1847
  %5 = and i16 %4, 15, !dbg !1847
  call void @llvm.dbg.value(metadata i16 %4, metadata !1843, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1845
  %6 = trunc i32 %3 to i16, !dbg !1848
  switch i16 %6, label %91 [
    i16 0, label %7
    i16 1, label %17
    i16 2, label %61
    i16 3, label %79
  ], !dbg !1848

7:                                                ; preds = %2
  %8 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1849
  call void @llvm.dbg.value(metadata i32 %8, metadata !1844, metadata !DIExpression()), !dbg !1845
  %9 = shl nuw nsw i16 %5, 1, !dbg !1851
  %10 = zext i16 %9 to i32, !dbg !1851
  %11 = shl nuw i32 3, %10, !dbg !1852
  %12 = and i32 %8, %11, !dbg !1853
  call void @llvm.dbg.value(metadata i32 %12, metadata !1844, metadata !DIExpression()), !dbg !1845
  %13 = lshr i32 %12, %10, !dbg !1854
  %14 = trunc i32 %13 to i8, !dbg !1855
  %15 = shl i8 %14, 2, !dbg !1855
  %16 = add i8 %15, 4, !dbg !1855
  br label %89, !dbg !1856

17:                                               ; preds = %2
  %18 = icmp ult i16 %5, 11, !dbg !1857
  br i1 %18, label %19, label %29, !dbg !1859

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1860
  call void @llvm.dbg.value(metadata i32 %20, metadata !1844, metadata !DIExpression()), !dbg !1845
  %21 = shl nuw nsw i16 %5, 1, !dbg !1862
  %22 = zext i16 %21 to i32, !dbg !1862
  %23 = shl nuw nsw i32 3, %22, !dbg !1863
  %24 = and i32 %20, %23, !dbg !1864
  call void @llvm.dbg.value(metadata i32 %24, metadata !1844, metadata !DIExpression()), !dbg !1845
  %25 = lshr i32 %24, %22, !dbg !1865
  %26 = trunc i32 %25 to i8, !dbg !1866
  %27 = shl i8 %26, 2, !dbg !1866
  %28 = add i8 %27, 4, !dbg !1866
  br label %89, !dbg !1867

29:                                               ; preds = %17
  %30 = trunc i32 %0 to i4, !dbg !1868
  switch i4 %30, label %55 [
    i4 -5, label %31
    i4 -4, label %37
    i4 -3, label %43
    i4 -2, label %49
  ], !dbg !1868

31:                                               ; preds = %29
  %32 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1869
  call void @llvm.dbg.value(metadata i32 %32, metadata !1844, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i32 %32, metadata !1844, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1845
  %33 = lshr i32 %32, 5, !dbg !1872
  %34 = trunc i32 %33 to i8, !dbg !1873
  %35 = and i8 %34, 14, !dbg !1873
  %36 = add nuw nsw i8 %35, 2, !dbg !1873
  br label %89, !dbg !1874

37:                                               ; preds = %29
  %38 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1875
  call void @llvm.dbg.value(metadata i32 %38, metadata !1844, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i32 %38, metadata !1844, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1845
  %39 = lshr i32 %38, 5, !dbg !1878
  %40 = trunc i32 %39 to i8, !dbg !1879
  %41 = and i8 %40, 14, !dbg !1879
  %42 = add nuw nsw i8 %41, 2, !dbg !1879
  br label %89, !dbg !1880

43:                                               ; preds = %29
  %44 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1881
  call void @llvm.dbg.value(metadata i32 %44, metadata !1844, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i32 %44, metadata !1844, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1845
  %45 = lshr i32 %44, 5, !dbg !1884
  %46 = trunc i32 %45 to i8, !dbg !1885
  %47 = and i8 %46, 14, !dbg !1885
  %48 = add nuw nsw i8 %47, 2, !dbg !1885
  br label %89, !dbg !1886

49:                                               ; preds = %29
  %50 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1887
  call void @llvm.dbg.value(metadata i32 %50, metadata !1844, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i32 %50, metadata !1844, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1845
  %51 = lshr i32 %50, 5, !dbg !1890
  %52 = trunc i32 %51 to i8, !dbg !1891
  %53 = and i8 %52, 14, !dbg !1891
  %54 = add nuw nsw i8 %53, 2, !dbg !1891
  br label %89, !dbg !1892

55:                                               ; preds = %29
  %56 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1893
  call void @llvm.dbg.value(metadata i32 %56, metadata !1844, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i32 %56, metadata !1844, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1845
  %57 = lshr i32 %56, 5, !dbg !1896
  %58 = trunc i32 %57 to i8, !dbg !1897
  %59 = and i8 %58, 14, !dbg !1897
  %60 = add nuw nsw i8 %59, 2, !dbg !1897
  br label %89, !dbg !1898

61:                                               ; preds = %2
  %62 = icmp eq i16 %5, 0, !dbg !1899
  br i1 %62, label %63, label %69, !dbg !1901

63:                                               ; preds = %61
  %64 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1902
  call void @llvm.dbg.value(metadata i32 %64, metadata !1844, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i32 %64, metadata !1844, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1845
  %65 = lshr i32 %64, 5, !dbg !1904
  %66 = trunc i32 %65 to i8, !dbg !1905
  %67 = and i8 %66, 14, !dbg !1905
  %68 = add nuw nsw i8 %67, 2, !dbg !1905
  br label %89, !dbg !1906

69:                                               ; preds = %61
  %70 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1907
  call void @llvm.dbg.value(metadata i32 %70, metadata !1844, metadata !DIExpression()), !dbg !1845
  %71 = shl nuw nsw i16 %5, 1, !dbg !1909
  %72 = zext i16 %71 to i32, !dbg !1909
  %73 = shl nuw i32 3, %72, !dbg !1910
  %74 = and i32 %70, %73, !dbg !1911
  call void @llvm.dbg.value(metadata i32 %74, metadata !1844, metadata !DIExpression()), !dbg !1845
  %75 = lshr i32 %74, %72, !dbg !1912
  %76 = trunc i32 %75 to i8, !dbg !1913
  %77 = shl i8 %76, 2, !dbg !1913
  %78 = add i8 %77, 4, !dbg !1913
  br label %89

79:                                               ; preds = %2
  %80 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1914
  call void @llvm.dbg.value(metadata i32 %80, metadata !1844, metadata !DIExpression()), !dbg !1845
  %81 = shl nuw nsw i16 %5, 1, !dbg !1915
  %82 = zext i16 %81 to i32, !dbg !1915
  %83 = shl nuw i32 3, %82, !dbg !1916
  %84 = and i32 %80, %83, !dbg !1917
  call void @llvm.dbg.value(metadata i32 %84, metadata !1844, metadata !DIExpression()), !dbg !1845
  %85 = lshr i32 %84, %82, !dbg !1918
  %86 = trunc i32 %85 to i8, !dbg !1919
  %87 = shl i8 %86, 2, !dbg !1919
  %88 = add i8 %87, 4, !dbg !1919
  br label %89, !dbg !1920

89:                                               ; preds = %63, %69, %19, %37, %49, %55, %43, %31, %79, %7
  %90 = phi i8 [ %16, %7 ], [ %88, %79 ], [ %36, %31 ], [ %48, %43 ], [ %60, %55 ], [ %54, %49 ], [ %42, %37 ], [ %28, %19 ], [ %78, %69 ], [ %68, %63 ]
  store i8 %90, i8* %1, align 1, !dbg !1921
  br label %91, !dbg !1922

91:                                               ; preds = %89, %2
  %92 = phi i32 [ -1, %2 ], [ 0, %89 ], !dbg !1845
  ret i32 %92, !dbg !1922
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !1923 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1928, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i32 %1, metadata !1929, metadata !DIExpression()), !dbg !1932
  %3 = lshr i32 %0, 5, !dbg !1933
  call void @llvm.dbg.value(metadata i32 %3, metadata !1930, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1932
  %4 = trunc i32 %0 to i16, !dbg !1934
  %5 = and i16 %4, 31, !dbg !1934
  call void @llvm.dbg.value(metadata i16 %5, metadata !1931, metadata !DIExpression()), !dbg !1932
  switch i32 %1, label %32 [
    i32 1, label %6
    i32 0, label %18
  ], !dbg !1935

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 %3, metadata !1930, metadata !DIExpression()), !dbg !1932
  %7 = trunc i32 %3 to i16, !dbg !1936
  switch i16 %7, label %32 [
    i16 0, label %8
    i16 1, label %13
  ], !dbg !1936

8:                                                ; preds = %6
  %9 = zext i16 %5 to i32, !dbg !1939
  %10 = shl nuw i32 1, %9, !dbg !1941
  %11 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1942
  %12 = or i32 %11, %10, !dbg !1942
  store volatile i32 %12, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1942
  br label %32, !dbg !1943

13:                                               ; preds = %6
  %14 = zext i16 %5 to i32, !dbg !1944
  %15 = shl nuw i32 1, %14, !dbg !1945
  %16 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1946
  %17 = or i32 %16, %15, !dbg !1946
  store volatile i32 %17, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1946
  br label %32, !dbg !1947

18:                                               ; preds = %2
  %19 = trunc i32 %3 to i16, !dbg !1948
  switch i16 %19, label %32 [
    i16 0, label %20
    i16 1, label %26
  ], !dbg !1948

20:                                               ; preds = %18
  %21 = zext i16 %5 to i32, !dbg !1951
  %22 = shl nuw i32 1, %21, !dbg !1953
  %23 = xor i32 %22, -1, !dbg !1954
  %24 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1955
  %25 = and i32 %24, %23, !dbg !1955
  store volatile i32 %25, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1955
  br label %32, !dbg !1956

26:                                               ; preds = %18
  %27 = zext i16 %5 to i32, !dbg !1957
  %28 = shl nuw i32 1, %27, !dbg !1958
  %29 = xor i32 %28, -1, !dbg !1959
  %30 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1960
  %31 = and i32 %30, %29, !dbg !1960
  store volatile i32 %31, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1960
  br label %32, !dbg !1961

32:                                               ; preds = %2, %18, %26, %20, %8, %13, %6
  ret void, !dbg !1962
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_pcnt_config(i1 noundef zeroext %0, i32 noundef %1) local_unnamed_addr #3 !dbg !1963 {
  call void @llvm.dbg.value(metadata i1 %0, metadata !1968, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1970
  call void @llvm.dbg.value(metadata i32 %1, metadata !1969, metadata !DIExpression()), !dbg !1970
  %3 = icmp ult i32 %1, 2, !dbg !1971
  br i1 %3, label %4, label %18, !dbg !1971

4:                                                ; preds = %2
  %5 = load volatile i32, i32* inttoptr (i32 -2097118816 to i32*), align 32, !dbg !1973
  br i1 %0, label %6, label %14, !dbg !1975

6:                                                ; preds = %4
  %7 = or i32 %5, -2147483648, !dbg !1976
  store volatile i32 %7, i32* inttoptr (i32 -2097118816 to i32*), align 32, !dbg !1976
  %8 = icmp eq i32 %1, 1, !dbg !1978
  %9 = load volatile i32, i32* inttoptr (i32 -2097118816 to i32*), align 32, !dbg !1980
  br i1 %8, label %10, label %12, !dbg !1981

10:                                               ; preds = %6
  %11 = or i32 %9, 536870912, !dbg !1982
  br label %16, !dbg !1984

12:                                               ; preds = %6
  %13 = and i32 %9, -536870913, !dbg !1985
  br label %16

14:                                               ; preds = %4
  %15 = and i32 %5, 2147483647, !dbg !1987
  br label %16

16:                                               ; preds = %10, %12, %14
  %17 = phi i32 [ %15, %14 ], [ %13, %12 ], [ %11, %10 ]
  store volatile i32 %17, i32* inttoptr (i32 -2097118816 to i32*), align 32, !dbg !1973
  br label %18, !dbg !1989

18:                                               ; preds = %16, %2
  %19 = phi i32 [ 2, %2 ], [ 0, %16 ], !dbg !1970
  ret i32 %19, !dbg !1989
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_pcnt_read_and_clear() local_unnamed_addr #3 !dbg !1990 {
  call void @llvm.dbg.value(metadata i32 0, metadata !1994, metadata !DIExpression()), !dbg !1995
  %1 = load volatile i32, i32* inttoptr (i32 -2097118816 to i32*), align 32, !dbg !1996
  %2 = and i32 %1, 536870911, !dbg !1997
  call void @llvm.dbg.value(metadata i32 %2, metadata !1994, metadata !DIExpression()), !dbg !1995
  %3 = load volatile i32, i32* inttoptr (i32 -2097118816 to i32*), align 32, !dbg !1998
  %4 = or i32 %3, 1073741824, !dbg !1998
  store volatile i32 %4, i32* inttoptr (i32 -2097118816 to i32*), align 32, !dbg !1998
  ret i32 %2, !dbg !1999
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !2000 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2006, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i8 %1, metadata !2007, metadata !DIExpression()), !dbg !2009
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
  ], !dbg !2010

3:                                                ; preds = %2
  %4 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2011
  call void @llvm.dbg.value(metadata i32 %4, metadata !2008, metadata !DIExpression()), !dbg !2009
  %5 = and i32 %4, -16, !dbg !2013
  call void @llvm.dbg.value(metadata i32 %5, metadata !2008, metadata !DIExpression()), !dbg !2009
  %6 = zext i8 %1 to i32, !dbg !2014
  %7 = or i32 %5, %6, !dbg !2015
  store volatile i32 %7, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2016
  br label %187, !dbg !2017

8:                                                ; preds = %2
  %9 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2018
  call void @llvm.dbg.value(metadata i32 %9, metadata !2008, metadata !DIExpression()), !dbg !2009
  %10 = and i32 %9, -241, !dbg !2019
  call void @llvm.dbg.value(metadata i32 %10, metadata !2008, metadata !DIExpression()), !dbg !2009
  %11 = zext i8 %1 to i32, !dbg !2020
  %12 = shl nuw nsw i32 %11, 4, !dbg !2021
  %13 = or i32 %10, %12, !dbg !2022
  store volatile i32 %13, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2023
  br label %187, !dbg !2024

14:                                               ; preds = %2
  %15 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2025
  call void @llvm.dbg.value(metadata i32 %15, metadata !2008, metadata !DIExpression()), !dbg !2009
  %16 = and i32 %15, -3841, !dbg !2026
  call void @llvm.dbg.value(metadata i32 %16, metadata !2008, metadata !DIExpression()), !dbg !2009
  %17 = zext i8 %1 to i32, !dbg !2027
  %18 = shl nuw nsw i32 %17, 8, !dbg !2028
  %19 = or i32 %16, %18, !dbg !2029
  store volatile i32 %19, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2030
  br label %187, !dbg !2031

20:                                               ; preds = %2
  %21 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2032
  call void @llvm.dbg.value(metadata i32 %21, metadata !2008, metadata !DIExpression()), !dbg !2009
  %22 = and i32 %21, -61441, !dbg !2033
  call void @llvm.dbg.value(metadata i32 %22, metadata !2008, metadata !DIExpression()), !dbg !2009
  %23 = zext i8 %1 to i32, !dbg !2034
  %24 = shl nuw nsw i32 %23, 12, !dbg !2035
  %25 = or i32 %22, %24, !dbg !2036
  store volatile i32 %25, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2037
  br label %187, !dbg !2038

26:                                               ; preds = %2
  %27 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2039
  call void @llvm.dbg.value(metadata i32 %27, metadata !2008, metadata !DIExpression()), !dbg !2009
  %28 = and i32 %27, -983041, !dbg !2040
  call void @llvm.dbg.value(metadata i32 %28, metadata !2008, metadata !DIExpression()), !dbg !2009
  %29 = zext i8 %1 to i32, !dbg !2041
  %30 = shl nuw nsw i32 %29, 16, !dbg !2042
  %31 = or i32 %28, %30, !dbg !2043
  store volatile i32 %31, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2044
  br label %187, !dbg !2045

32:                                               ; preds = %2
  %33 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2046
  call void @llvm.dbg.value(metadata i32 %33, metadata !2008, metadata !DIExpression()), !dbg !2009
  %34 = and i32 %33, -15728641, !dbg !2047
  call void @llvm.dbg.value(metadata i32 %34, metadata !2008, metadata !DIExpression()), !dbg !2009
  %35 = zext i8 %1 to i32, !dbg !2048
  %36 = shl nuw nsw i32 %35, 20, !dbg !2049
  %37 = or i32 %34, %36, !dbg !2050
  store volatile i32 %37, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2051
  br label %187, !dbg !2052

38:                                               ; preds = %2
  %39 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2053
  call void @llvm.dbg.value(metadata i32 %39, metadata !2008, metadata !DIExpression()), !dbg !2009
  %40 = and i32 %39, -251658241, !dbg !2054
  call void @llvm.dbg.value(metadata i32 %40, metadata !2008, metadata !DIExpression()), !dbg !2009
  %41 = zext i8 %1 to i32, !dbg !2055
  %42 = shl nuw i32 %41, 24, !dbg !2056
  %43 = or i32 %40, %42, !dbg !2057
  store volatile i32 %43, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2058
  br label %187, !dbg !2059

44:                                               ; preds = %2
  %45 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2060
  call void @llvm.dbg.value(metadata i32 %45, metadata !2008, metadata !DIExpression()), !dbg !2009
  %46 = and i32 %45, 268435455, !dbg !2061
  call void @llvm.dbg.value(metadata i32 %46, metadata !2008, metadata !DIExpression()), !dbg !2009
  %47 = zext i8 %1 to i32, !dbg !2062
  %48 = shl i32 %47, 28, !dbg !2063
  %49 = or i32 %46, %48, !dbg !2064
  store volatile i32 %49, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2065
  br label %187, !dbg !2066

50:                                               ; preds = %2
  %51 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2067
  call void @llvm.dbg.value(metadata i32 %51, metadata !2008, metadata !DIExpression()), !dbg !2009
  %52 = and i32 %51, -16, !dbg !2068
  call void @llvm.dbg.value(metadata i32 %52, metadata !2008, metadata !DIExpression()), !dbg !2009
  %53 = zext i8 %1 to i32, !dbg !2069
  %54 = or i32 %52, %53, !dbg !2070
  store volatile i32 %54, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2071
  br label %187, !dbg !2072

55:                                               ; preds = %2
  %56 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2073
  call void @llvm.dbg.value(metadata i32 %56, metadata !2008, metadata !DIExpression()), !dbg !2009
  %57 = and i32 %56, -241, !dbg !2074
  call void @llvm.dbg.value(metadata i32 %57, metadata !2008, metadata !DIExpression()), !dbg !2009
  %58 = zext i8 %1 to i32, !dbg !2075
  %59 = shl nuw nsw i32 %58, 4, !dbg !2076
  %60 = or i32 %57, %59, !dbg !2077
  store volatile i32 %60, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2078
  br label %187, !dbg !2079

61:                                               ; preds = %2
  %62 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2080
  call void @llvm.dbg.value(metadata i32 %62, metadata !2008, metadata !DIExpression()), !dbg !2009
  %63 = and i32 %62, -3841, !dbg !2081
  call void @llvm.dbg.value(metadata i32 %63, metadata !2008, metadata !DIExpression()), !dbg !2009
  %64 = zext i8 %1 to i32, !dbg !2082
  %65 = shl nuw nsw i32 %64, 8, !dbg !2083
  %66 = or i32 %63, %65, !dbg !2084
  store volatile i32 %66, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2085
  br label %187, !dbg !2086

67:                                               ; preds = %2
  %68 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2087
  call void @llvm.dbg.value(metadata i32 %68, metadata !2008, metadata !DIExpression()), !dbg !2009
  %69 = and i32 %68, -61441, !dbg !2088
  call void @llvm.dbg.value(metadata i32 %69, metadata !2008, metadata !DIExpression()), !dbg !2009
  %70 = zext i8 %1 to i32, !dbg !2089
  %71 = shl nuw nsw i32 %70, 12, !dbg !2090
  %72 = or i32 %69, %71, !dbg !2091
  store volatile i32 %72, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2092
  switch i8 %1, label %187 [
    i8 5, label %73
    i8 4, label %73
    i8 2, label %73
  ], !dbg !2093

73:                                               ; preds = %67, %67, %67
  %74 = tail call i32 @halGPIO_ConfDirection(i32 noundef 27, i8 noundef zeroext 0) #13, !dbg !2095
  br label %187, !dbg !2097

75:                                               ; preds = %2
  %76 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2098
  call void @llvm.dbg.value(metadata i32 %76, metadata !2008, metadata !DIExpression()), !dbg !2009
  %77 = and i32 %76, -983041, !dbg !2099
  call void @llvm.dbg.value(metadata i32 %77, metadata !2008, metadata !DIExpression()), !dbg !2009
  %78 = zext i8 %1 to i32, !dbg !2100
  %79 = shl nuw nsw i32 %78, 16, !dbg !2101
  %80 = or i32 %77, %79, !dbg !2102
  store volatile i32 %80, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2103
  %81 = and i8 %1, -2, !dbg !2104
  %82 = icmp eq i8 %81, 4, !dbg !2104
  br i1 %82, label %83, label %187, !dbg !2104

83:                                               ; preds = %75
  %84 = tail call i32 @halGPIO_ConfDirection(i32 noundef 28, i8 noundef zeroext 0) #13, !dbg !2106
  br label %187, !dbg !2108

85:                                               ; preds = %2
  %86 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2109
  call void @llvm.dbg.value(metadata i32 %86, metadata !2008, metadata !DIExpression()), !dbg !2009
  %87 = and i32 %86, -15728641, !dbg !2110
  call void @llvm.dbg.value(metadata i32 %87, metadata !2008, metadata !DIExpression()), !dbg !2009
  %88 = zext i8 %1 to i32, !dbg !2111
  %89 = shl nuw nsw i32 %88, 20, !dbg !2112
  %90 = or i32 %87, %89, !dbg !2113
  store volatile i32 %90, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2114
  %91 = icmp eq i8 %1, 6, !dbg !2115
  br i1 %91, label %92, label %187, !dbg !2117

92:                                               ; preds = %85
  %93 = tail call i32 @halGPIO_ConfDirection(i32 noundef 29, i8 noundef zeroext 0) #13, !dbg !2118
  br label %187, !dbg !2120

94:                                               ; preds = %2
  %95 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2121
  call void @llvm.dbg.value(metadata i32 %95, metadata !2008, metadata !DIExpression()), !dbg !2009
  %96 = and i32 %95, -251658241, !dbg !2122
  call void @llvm.dbg.value(metadata i32 %96, metadata !2008, metadata !DIExpression()), !dbg !2009
  %97 = zext i8 %1 to i32, !dbg !2123
  %98 = shl nuw i32 %97, 24, !dbg !2124
  %99 = or i32 %96, %98, !dbg !2125
  store volatile i32 %99, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2126
  switch i8 %1, label %187 [
    i8 7, label %100
    i8 4, label %100
  ], !dbg !2127

100:                                              ; preds = %94, %94
  %101 = tail call i32 @halGPIO_ConfDirection(i32 noundef 30, i8 noundef zeroext 0) #13, !dbg !2129
  br label %187, !dbg !2131

102:                                              ; preds = %2
  %103 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2132
  call void @llvm.dbg.value(metadata i32 %103, metadata !2008, metadata !DIExpression()), !dbg !2009
  %104 = and i32 %103, 268435455, !dbg !2133
  call void @llvm.dbg.value(metadata i32 %104, metadata !2008, metadata !DIExpression()), !dbg !2009
  %105 = zext i8 %1 to i32, !dbg !2134
  %106 = shl i32 %105, 28, !dbg !2135
  %107 = or i32 %104, %106, !dbg !2136
  store volatile i32 %107, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2137
  %108 = and i8 %1, -3, !dbg !2138
  %109 = icmp eq i8 %108, 4, !dbg !2138
  br i1 %109, label %110, label %187, !dbg !2138

110:                                              ; preds = %102
  %111 = tail call i32 @halGPIO_ConfDirection(i32 noundef 31, i8 noundef zeroext 0) #13, !dbg !2140
  br label %187, !dbg !2142

112:                                              ; preds = %2
  %113 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2143
  call void @llvm.dbg.value(metadata i32 %113, metadata !2008, metadata !DIExpression()), !dbg !2009
  %114 = and i32 %113, -16, !dbg !2144
  call void @llvm.dbg.value(metadata i32 %114, metadata !2008, metadata !DIExpression()), !dbg !2009
  %115 = zext i8 %1 to i32, !dbg !2145
  %116 = or i32 %114, %115, !dbg !2146
  store volatile i32 %116, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2147
  %117 = and i8 %1, -3, !dbg !2148
  %118 = icmp eq i8 %117, 4, !dbg !2148
  br i1 %118, label %119, label %187, !dbg !2148

119:                                              ; preds = %112
  %120 = tail call i32 @halGPIO_ConfDirection(i32 noundef 32, i8 noundef zeroext 0) #13, !dbg !2150
  br label %187, !dbg !2152

121:                                              ; preds = %2
  %122 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2153
  call void @llvm.dbg.value(metadata i32 %122, metadata !2008, metadata !DIExpression()), !dbg !2009
  %123 = and i32 %122, -241, !dbg !2154
  call void @llvm.dbg.value(metadata i32 %123, metadata !2008, metadata !DIExpression()), !dbg !2009
  %124 = zext i8 %1 to i32, !dbg !2155
  %125 = shl nuw nsw i32 %124, 4, !dbg !2156
  %126 = or i32 %123, %125, !dbg !2157
  store volatile i32 %126, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2158
  br label %187, !dbg !2159

127:                                              ; preds = %2
  %128 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2160
  call void @llvm.dbg.value(metadata i32 %128, metadata !2008, metadata !DIExpression()), !dbg !2009
  %129 = and i32 %128, -3841, !dbg !2161
  call void @llvm.dbg.value(metadata i32 %129, metadata !2008, metadata !DIExpression()), !dbg !2009
  %130 = zext i8 %1 to i32, !dbg !2162
  %131 = shl nuw nsw i32 %130, 8, !dbg !2163
  %132 = or i32 %129, %131, !dbg !2164
  store volatile i32 %132, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2165
  br label %187, !dbg !2166

133:                                              ; preds = %2
  %134 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2167
  call void @llvm.dbg.value(metadata i32 %134, metadata !2008, metadata !DIExpression()), !dbg !2009
  %135 = and i32 %134, -61441, !dbg !2168
  call void @llvm.dbg.value(metadata i32 %135, metadata !2008, metadata !DIExpression()), !dbg !2009
  %136 = zext i8 %1 to i32, !dbg !2169
  %137 = shl nuw nsw i32 %136, 12, !dbg !2170
  %138 = or i32 %135, %137, !dbg !2171
  store volatile i32 %138, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2172
  br label %187, !dbg !2173

139:                                              ; preds = %2
  %140 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2174
  call void @llvm.dbg.value(metadata i32 %140, metadata !2008, metadata !DIExpression()), !dbg !2009
  %141 = and i32 %140, -983041, !dbg !2175
  call void @llvm.dbg.value(metadata i32 %141, metadata !2008, metadata !DIExpression()), !dbg !2009
  %142 = zext i8 %1 to i32, !dbg !2176
  %143 = shl nuw nsw i32 %142, 16, !dbg !2177
  %144 = or i32 %141, %143, !dbg !2178
  store volatile i32 %144, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2179
  br label %187, !dbg !2180

145:                                              ; preds = %2
  %146 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2181
  call void @llvm.dbg.value(metadata i32 %146, metadata !2008, metadata !DIExpression()), !dbg !2009
  %147 = and i32 %146, -15728641, !dbg !2182
  call void @llvm.dbg.value(metadata i32 %147, metadata !2008, metadata !DIExpression()), !dbg !2009
  %148 = zext i8 %1 to i32, !dbg !2183
  %149 = shl nuw nsw i32 %148, 20, !dbg !2184
  %150 = or i32 %147, %149, !dbg !2185
  store volatile i32 %150, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2186
  br label %187, !dbg !2187

151:                                              ; preds = %2
  %152 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2188
  call void @llvm.dbg.value(metadata i32 %152, metadata !2008, metadata !DIExpression()), !dbg !2009
  %153 = and i32 %152, -251658241, !dbg !2189
  call void @llvm.dbg.value(metadata i32 %153, metadata !2008, metadata !DIExpression()), !dbg !2009
  %154 = zext i8 %1 to i32, !dbg !2190
  %155 = shl nuw i32 %154, 24, !dbg !2191
  %156 = or i32 %153, %155, !dbg !2192
  store volatile i32 %156, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2193
  br label %187, !dbg !2194

157:                                              ; preds = %2
  %158 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2195
  call void @llvm.dbg.value(metadata i32 %158, metadata !2008, metadata !DIExpression()), !dbg !2009
  %159 = and i32 %158, 268435455, !dbg !2196
  call void @llvm.dbg.value(metadata i32 %159, metadata !2008, metadata !DIExpression()), !dbg !2009
  %160 = zext i8 %1 to i32, !dbg !2197
  %161 = shl i32 %160, 28, !dbg !2198
  %162 = or i32 %159, %161, !dbg !2199
  store volatile i32 %162, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2200
  br label %187, !dbg !2201

163:                                              ; preds = %2
  %164 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2202
  call void @llvm.dbg.value(metadata i32 %164, metadata !2008, metadata !DIExpression()), !dbg !2009
  %165 = and i32 %164, -241, !dbg !2203
  call void @llvm.dbg.value(metadata i32 %165, metadata !2008, metadata !DIExpression()), !dbg !2009
  %166 = zext i8 %1 to i32, !dbg !2204
  %167 = shl nuw nsw i32 %166, 4, !dbg !2205
  %168 = or i32 %165, %167, !dbg !2206
  store volatile i32 %168, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2207
  br label %187, !dbg !2208

169:                                              ; preds = %2
  %170 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2209
  call void @llvm.dbg.value(metadata i32 %170, metadata !2008, metadata !DIExpression()), !dbg !2009
  %171 = and i32 %170, -3841, !dbg !2210
  call void @llvm.dbg.value(metadata i32 %171, metadata !2008, metadata !DIExpression()), !dbg !2009
  %172 = zext i8 %1 to i32, !dbg !2211
  %173 = shl nuw nsw i32 %172, 8, !dbg !2212
  %174 = or i32 %171, %173, !dbg !2213
  store volatile i32 %174, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2214
  br label %187, !dbg !2215

175:                                              ; preds = %2
  %176 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2216
  call void @llvm.dbg.value(metadata i32 %176, metadata !2008, metadata !DIExpression()), !dbg !2009
  %177 = and i32 %176, -61441, !dbg !2217
  call void @llvm.dbg.value(metadata i32 %177, metadata !2008, metadata !DIExpression()), !dbg !2009
  %178 = zext i8 %1 to i32, !dbg !2218
  %179 = shl nuw nsw i32 %178, 12, !dbg !2219
  %180 = or i32 %177, %179, !dbg !2220
  store volatile i32 %180, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2221
  br label %187, !dbg !2222

181:                                              ; preds = %2
  %182 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2223
  call void @llvm.dbg.value(metadata i32 %182, metadata !2008, metadata !DIExpression()), !dbg !2009
  %183 = and i32 %182, -983041, !dbg !2224
  call void @llvm.dbg.value(metadata i32 %183, metadata !2008, metadata !DIExpression()), !dbg !2009
  %184 = zext i8 %1 to i32, !dbg !2225
  %185 = shl nuw nsw i32 %184, 16, !dbg !2226
  %186 = or i32 %183, %185, !dbg !2227
  store volatile i32 %186, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2228
  br label %187, !dbg !2229

187:                                              ; preds = %94, %67, %2, %119, %112, %110, %102, %100, %85, %92, %83, %75, %73, %181, %175, %169, %163, %157, %151, %145, %139, %133, %127, %121, %61, %55, %50, %44, %38, %32, %26, %20, %14, %8, %3
  ret void, !dbg !2230
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_direction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !2231 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2235, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata i32 %1, metadata !2236, metadata !DIExpression()), !dbg !2237
  %3 = trunc i32 %1 to i8, !dbg !2238
  %4 = tail call i32 @halGPIO_ConfDirection(i32 noundef %0, i8 noundef zeroext %3) #13, !dbg !2239
  ret i32 %4, !dbg !2240
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_write(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !2241 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2245, metadata !DIExpression()), !dbg !2247
  call void @llvm.dbg.value(metadata i8 %1, metadata !2246, metadata !DIExpression()), !dbg !2247
  %3 = tail call i32 @halGPO_Write(i32 noundef %0, i8 noundef zeroext %1) #13, !dbg !2248
  ret i32 %3, !dbg !2249
}

; Function Attrs: noinline nounwind optsize
define dso_local void @gpio_get_status(%struct.gpio_status* noalias nocapture writeonly sret(%struct.gpio_status) align 4 %0, i32 noundef %1) local_unnamed_addr #0 !dbg !2250 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !2261, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.declare(metadata %struct.gpio_status* %0, metadata !2262, metadata !DIExpression()), !dbg !2264
  %3 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %0, i32 0, i32 0, !dbg !2265
  store i32 %1, i32* %3, align 4, !dbg !2266
  %4 = tail call zeroext i8 @halgetGPIO_OutEnable(i32 noundef %1) #13, !dbg !2267
  %5 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %0, i32 0, i32 1, !dbg !2268
  store i8 %4, i8* %5, align 4, !dbg !2269
  %6 = tail call zeroext i8 @halgetGPIO_DIN(i32 noundef %1) #13, !dbg !2270
  %7 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %0, i32 0, i32 2, !dbg !2271
  store i8 %6, i8* %7, align 1, !dbg !2272
  %8 = tail call zeroext i8 @halgetGPIO_DOUT(i32 noundef %1) #13, !dbg !2273
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %0, i32 0, i32 3, !dbg !2274
  store i8 %8, i8* %9, align 2, !dbg !2275
  ret void, !dbg !2276
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_PullUp(i32 noundef %0) local_unnamed_addr #0 !dbg !2277 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2281, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i32 0, metadata !2282, metadata !DIExpression()), !dbg !2283
  tail call void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef 1) #13, !dbg !2284
  %2 = tail call i32 @halGPIO_PullUp_SET(i32 noundef %0) #13, !dbg !2285
  call void @llvm.dbg.value(metadata i32 %2, metadata !2282, metadata !DIExpression()), !dbg !2283
  ret i32 %2, !dbg !2286
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_PullDown(i32 noundef %0) local_unnamed_addr #0 !dbg !2287 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2289, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i32 0, metadata !2290, metadata !DIExpression()), !dbg !2291
  tail call void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef 1) #13, !dbg !2292
  %2 = tail call i32 @halGPIO_PullDown_SET(i32 noundef %0) #13, !dbg !2293
  call void @llvm.dbg.value(metadata i32 %2, metadata !2290, metadata !DIExpression()), !dbg !2291
  ret i32 %2, !dbg !2294
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_PullDisable(i32 noundef %0) local_unnamed_addr #0 !dbg !2295 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2297, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i32 0, metadata !2298, metadata !DIExpression()), !dbg !2299
  tail call void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef 1) #13, !dbg !2300
  %2 = tail call i32 @halGPIO_PullDown_RESET(i32 noundef %0) #13, !dbg !2301
  call void @llvm.dbg.value(metadata i32 %2, metadata !2298, metadata !DIExpression()), !dbg !2299
  %3 = tail call i32 @halGPIO_PullUp_RESET(i32 noundef %0) #13, !dbg !2302
  call void @llvm.dbg.value(metadata i32 %3, metadata !2298, metadata !DIExpression()), !dbg !2299
  ret i32 %3, !dbg !2303
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_SetDriving(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !2304 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2306, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 %1, metadata !2307, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i32 0, metadata !2308, metadata !DIExpression()), !dbg !2309
  %3 = tail call i32 @halGPIO_SetDriving(i32 noundef %0, i8 noundef zeroext %1) #13, !dbg !2310
  call void @llvm.dbg.value(metadata i32 %3, metadata !2308, metadata !DIExpression()), !dbg !2309
  ret i32 %3, !dbg !2311
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_GetDriving(i32 noundef %0, i8* noundef %1) local_unnamed_addr #0 !dbg !2312 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2316, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %1, metadata !2317, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i32 0, metadata !2318, metadata !DIExpression()), !dbg !2319
  %3 = tail call i32 @halGPIO_GetDriving(i32 noundef %0, i8* noundef %1) #13, !dbg !2320
  call void @llvm.dbg.value(metadata i32 %3, metadata !2318, metadata !DIExpression()), !dbg !2319
  ret i32 %3, !dbg !2321
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @gpio_backup_all_registers() local_unnamed_addr #3 !dbg !2322 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2324, metadata !DIExpression()), !dbg !2325
  br label %1, !dbg !2326

1:                                                ; preds = %0, %1
  %2 = phi i32 [ 0, %0 ], [ %8, %1 ]
  call void @llvm.dbg.value(metadata i32 %2, metadata !2324, metadata !DIExpression()), !dbg !2325
  %3 = getelementptr inbounds [22 x %struct.gpio_backup_restore_t], [22 x %struct.gpio_backup_restore_t]* @gpio_bakup_table, i32 0, i32 %2, i32 1, !dbg !2328
  %4 = load i32, i32* %3, align 4, !dbg !2328
  %5 = inttoptr i32 %4 to i32*, !dbg !2328
  %6 = load volatile i32, i32* %5, align 4, !dbg !2328
  %7 = getelementptr inbounds [22 x %struct.gpio_backup_restore_t], [22 x %struct.gpio_backup_restore_t]* @gpio_bakup_table, i32 0, i32 %2, i32 0, !dbg !2331
  store i32 %6, i32* %7, align 4, !dbg !2332
  %8 = add nuw nsw i32 %2, 1, !dbg !2333
  call void @llvm.dbg.value(metadata i32 %8, metadata !2324, metadata !DIExpression()), !dbg !2325
  %9 = icmp eq i32 %8, 22, !dbg !2334
  br i1 %9, label %10, label %1, !dbg !2326, !llvm.loop !2335

10:                                               ; preds = %1
  ret void, !dbg !2337
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @gpio_restore_all_registers() local_unnamed_addr #3 !dbg !2338 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2340, metadata !DIExpression()), !dbg !2341
  br label %1, !dbg !2342

1:                                                ; preds = %0, %1
  %2 = phi i32 [ 0, %0 ], [ %8, %1 ]
  call void @llvm.dbg.value(metadata i32 %2, metadata !2340, metadata !DIExpression()), !dbg !2341
  %3 = getelementptr inbounds [22 x %struct.gpio_backup_restore_t], [22 x %struct.gpio_backup_restore_t]* @gpio_bakup_table, i32 0, i32 %2, i32 0, !dbg !2344
  %4 = load i32, i32* %3, align 4, !dbg !2344
  %5 = getelementptr inbounds [22 x %struct.gpio_backup_restore_t], [22 x %struct.gpio_backup_restore_t]* @gpio_bakup_table, i32 0, i32 %2, i32 1, !dbg !2347
  %6 = load i32, i32* %5, align 4, !dbg !2347
  %7 = inttoptr i32 %6 to i32*, !dbg !2347
  store volatile i32 %4, i32* %7, align 4, !dbg !2348
  %8 = add nuw nsw i32 %2, 1, !dbg !2349
  call void @llvm.dbg.value(metadata i32 %8, metadata !2340, metadata !DIExpression()), !dbg !2341
  %9 = icmp eq i32 %8, 22, !dbg !2350
  br i1 %9, label %10, label %1, !dbg !2342, !llvm.loop !2351

10:                                               ; preds = %1
  ret void, !dbg !2353
}

; Function Attrs: noinline nounwind optsize
define dso_local void @NVIC_SetupVectorTable(i32 noundef %0) local_unnamed_addr #0 !dbg !2354 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2358, metadata !DIExpression()), !dbg !2359
  store volatile i32 %0, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !2360
  tail call void asm sideeffect "dsb", ""() #15, !dbg !2361, !srcloc !2362
  tail call void asm sideeffect "isb", ""() #15, !dbg !2363, !srcloc !2364
  ret void, !dbg !2365
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @NVIC_SWInt(i32 noundef %0) local_unnamed_addr #3 !dbg !2366 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2370, metadata !DIExpression()), !dbg !2371
  store volatile i32 %0, i32* inttoptr (i32 -536809728 to i32*), align 256, !dbg !2372
  ret void, !dbg !2373
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @save_and_set_interrupt_mask() local_unnamed_addr #0 section ".ramTEXT" !dbg !2374 {
  %1 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #15, !dbg !2377, !srcloc !2384
  call void @llvm.dbg.value(metadata i32 %1, metadata !2381, metadata !DIExpression()) #15, !dbg !2385
  call void @llvm.dbg.value(metadata i32 %1, metadata !2376, metadata !DIExpression()), !dbg !2386
  tail call void asm sideeffect "cpsid i", "~{memory}"() #15, !dbg !2387, !srcloc !2390
  ret i32 %1, !dbg !2391
}

; Function Attrs: noinline nounwind optsize
define dso_local void @restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #0 section ".ramTEXT" !dbg !2392 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2394, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i32 %0, metadata !2396, metadata !DIExpression()) #15, !dbg !2399
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %0) #15, !dbg !2402, !srcloc !2403
  ret void, !dbg !2404
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @pinmux_config(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !2405 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2409, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i32 %1, metadata !2410, metadata !DIExpression()), !dbg !2412
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
  ], !dbg !2413

3:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  call void @llvm.dbg.value(metadata i32 %0, metadata !2411, metadata !DIExpression()), !dbg !2412
  %4 = trunc i32 %1 to i8, !dbg !2414
  tail call void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %4) #13, !dbg !2415
  br label %5, !dbg !2416

5:                                                ; preds = %2, %3
  %6 = phi i32 [ 0, %3 ], [ -1, %2 ], !dbg !2412
  ret i32 %6, !dbg !2417
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @get_current_count() local_unnamed_addr #0 !dbg !2418 {
  %1 = tail call i32 @GPT_return_current_count(i32 noundef 2) #13, !dbg !2419
  ret i32 %1, !dbg !2420
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_time(i32 noundef %0) local_unnamed_addr #0 !dbg !2421 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2423, metadata !DIExpression()), !dbg !2426
  %2 = tail call i32 @get_current_count() #14, !dbg !2427
  %3 = add i32 %2, %0, !dbg !2428
  %4 = xor i32 %3, -1, !dbg !2429
  call void @llvm.dbg.value(metadata i32 %3, metadata !2424, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2426
  %5 = tail call i32 @get_current_count() #14, !dbg !2430
  call void @llvm.dbg.value(metadata i32 %5, metadata !2425, metadata !DIExpression()), !dbg !2426
  %6 = add i32 %5, %4, !dbg !2431
  %7 = icmp slt i32 %6, 0, !dbg !2431
  br i1 %7, label %8, label %12, !dbg !2432

8:                                                ; preds = %1, %8
  %9 = tail call i32 @get_current_count() #14, !dbg !2433
  call void @llvm.dbg.value(metadata i32 %9, metadata !2425, metadata !DIExpression()), !dbg !2426
  %10 = add i32 %9, %4, !dbg !2431
  %11 = icmp slt i32 %10, 0, !dbg !2431
  br i1 %11, label %8, label %12, !dbg !2432, !llvm.loop !2435

12:                                               ; preds = %8, %1
  ret void, !dbg !2437
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_time_for_gpt4(i32 noundef %0) local_unnamed_addr #0 !dbg !2438 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2440, metadata !DIExpression()), !dbg !2443
  %2 = tail call i32 @get_current_gpt4_count() #14, !dbg !2444
  %3 = add i32 %2, %0, !dbg !2445
  %4 = xor i32 %3, -1, !dbg !2446
  call void @llvm.dbg.value(metadata i32 %3, metadata !2441, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2443
  %5 = tail call i32 @get_current_gpt4_count() #14, !dbg !2447
  call void @llvm.dbg.value(metadata i32 %5, metadata !2442, metadata !DIExpression()), !dbg !2443
  %6 = add i32 %5, %4, !dbg !2448
  %7 = icmp slt i32 %6, 0, !dbg !2448
  br i1 %7, label %8, label %12, !dbg !2449

8:                                                ; preds = %1, %8
  %9 = tail call i32 @get_current_gpt4_count() #14, !dbg !2450
  call void @llvm.dbg.value(metadata i32 %9, metadata !2442, metadata !DIExpression()), !dbg !2443
  %10 = add i32 %9, %4, !dbg !2448
  %11 = icmp slt i32 %10, 0, !dbg !2448
  br i1 %11, label %8, label %12, !dbg !2449, !llvm.loop !2452

12:                                               ; preds = %8, %1
  ret void, !dbg !2454
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @get_current_gpt4_count() local_unnamed_addr #0 !dbg !2455 {
  %1 = tail call i32 @GPT_return_current_count(i32 noundef 4) #13, !dbg !2456
  ret i32 %1, !dbg !2457
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_ms(i32 noundef %0) local_unnamed_addr #0 !dbg !2458 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2460, metadata !DIExpression()), !dbg !2462
  %2 = shl i32 %0, 5, !dbg !2463
  call void @llvm.dbg.value(metadata i32 %2, metadata !2461, metadata !DIExpression()), !dbg !2462
  %3 = mul i32 %0, 7, !dbg !2464
  %4 = udiv i32 %3, 10, !dbg !2465
  %5 = add i32 %4, %2, !dbg !2466
  call void @llvm.dbg.value(metadata i32 %5, metadata !2461, metadata !DIExpression()), !dbg !2462
  %6 = mul i32 %0, 6, !dbg !2467
  %7 = udiv i32 %6, 100, !dbg !2468
  %8 = add i32 %5, %7, !dbg !2469
  call void @llvm.dbg.value(metadata i32 %8, metadata !2461, metadata !DIExpression()), !dbg !2462
  %9 = shl i32 %0, 3, !dbg !2470
  %10 = udiv i32 %9, 1000, !dbg !2471
  %11 = add i32 %8, %10, !dbg !2472
  call void @llvm.dbg.value(metadata i32 %11, metadata !2461, metadata !DIExpression()), !dbg !2462
  tail call void @delay_time(i32 noundef %11) #14, !dbg !2473
  ret void, !dbg !2474
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_us(i32 noundef %0) local_unnamed_addr #0 !dbg !2475 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2477, metadata !DIExpression()), !dbg !2480
  %2 = tail call i32 @top_mcu_freq_get() #13, !dbg !2481
  %3 = udiv i32 %2, 1000000, !dbg !2482
  call void @llvm.dbg.value(metadata i32 %3, metadata !2479, metadata !DIExpression()), !dbg !2480
  %4 = mul i32 %3, %0, !dbg !2483
  call void @llvm.dbg.value(metadata i32 %4, metadata !2478, metadata !DIExpression()), !dbg !2480
  tail call void @delay_time_for_gpt4(i32 noundef %4) #14, !dbg !2484
  ret void, !dbg !2485
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvTMR_init(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, void ()* noundef %3) local_unnamed_addr #0 !dbg !2486 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2490, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata i32 %1, metadata !2491, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata i1 %2, metadata !2492, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2494
  call void @llvm.dbg.value(metadata void ()* %3, metadata !2493, metadata !DIExpression()), !dbg !2494
  tail call void @GPT_Stop(i32 noundef %0) #13, !dbg !2495
  %5 = icmp eq i32 %0, 0, !dbg !2496
  br i1 %5, label %6, label %7, !dbg !2498

6:                                                ; preds = %4
  store volatile i32 0, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !2499
  br label %8, !dbg !2501

7:                                                ; preds = %4
  store volatile i32 0, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !2502
  br label %8

8:                                                ; preds = %7, %6
  %9 = phi i32 [ %0, %7 ], [ 0, %6 ]
  tail call void @GPT_init(i32 noundef %9, i32 noundef 1, void ()* noundef %3) #13, !dbg !2504
  tail call void @GPT_ResetTimer(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) #13, !dbg !2505
  ret void, !dbg !2506
}

; Function Attrs: noinline nounwind optsize
define dso_local void @TMR_Start(i32 noundef %0) local_unnamed_addr #0 !dbg !2507 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2509, metadata !DIExpression()), !dbg !2510
  tail call void @GPT_Start(i32 noundef %0) #13, !dbg !2511
  ret void, !dbg !2512
}

; Function Attrs: noinline nounwind optsize
define dso_local void @TMR_Stop(i32 noundef %0) local_unnamed_addr #0 !dbg !2513 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2515, metadata !DIExpression()), !dbg !2516
  tail call void @GPT_Stop(i32 noundef %0) #13, !dbg !2517
  ret void, !dbg !2518
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvGPT2Init() local_unnamed_addr #0 !dbg !2519 {
  tail call void @CM4_GPT2Init() #13, !dbg !2520
  ret void, !dbg !2521
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvGPT4Init() local_unnamed_addr #0 !dbg !2522 {
  tail call void @CM4_GPT4Init() #13, !dbg !2523
  ret void, !dbg !2524
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @clear_TMR_INT_status_bit(i32 noundef %0) local_unnamed_addr #3 !dbg !2525 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2527, metadata !DIExpression()), !dbg !2528
  switch i32 %0, label %5 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !2529

2:                                                ; preds = %1
  br label %3, !dbg !2530

3:                                                ; preds = %1, %2
  %4 = phi i32 [ 2, %2 ], [ 1, %1 ]
  store volatile i32 %4, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !2528
  br label %5, !dbg !2533

5:                                                ; preds = %3, %1
  ret void, !dbg !2533
}

; Function Attrs: noinline nounwind optsize
define dso_local void @top_xtal_init() local_unnamed_addr #0 !dbg !2534 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2536, metadata !DIExpression()), !dbg !2538
  %1 = load volatile i32, i32* inttoptr (i32 -2097118784 to i32*), align 64, !dbg !2539
  call void @llvm.dbg.value(metadata i32 %1, metadata !2537, metadata !DIExpression()), !dbg !2538
  %2 = lshr i32 %1, 13, !dbg !2540
  %3 = and i32 %2, 7, !dbg !2541
  call void @llvm.dbg.value(metadata i32 %3, metadata !2537, metadata !DIExpression()), !dbg !2538
  %4 = load volatile i32, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2542
  call void @llvm.dbg.value(metadata i32 %4, metadata !2536, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i32 %4, metadata !2536, metadata !DIExpression(DW_OP_constu, 18446744073709549568, DW_OP_and, DW_OP_stack_value)), !dbg !2538
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init, i32 0, i32 %3, !dbg !2543
  %6 = load i32, i32* %5, align 4, !dbg !2543
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init.1, i32 0, i32 %3, !dbg !2543
  %8 = load i32, i32* %7, align 4, !dbg !2543
  %9 = and i32 %4, -2048, !dbg !2544
  call void @llvm.dbg.value(metadata i32 %9, metadata !2536, metadata !DIExpression()), !dbg !2538
  store i32 %6, i32* @gXtalFreq, align 4, !dbg !2545
  %10 = or i32 %9, %8, !dbg !2545
  call void @llvm.dbg.value(metadata i32 %10, metadata !2536, metadata !DIExpression()), !dbg !2538
  store volatile i32 %10, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2547
  %11 = load i32, i32* @gXtalFreq, align 4, !dbg !2548
  store i32 %11, i32* @gCpuFrequency, align 4, !dbg !2549
  tail call void @SystemCoreClockUpdate() #13, !dbg !2550
  %12 = load i32, i32* @SystemCoreClock, align 4, !dbg !2551
  %13 = udiv i32 %12, 1000, !dbg !2552
  %14 = tail call i32 @SysTick_Set(i32 noundef %13) #13, !dbg !2553
  ret void, !dbg !2554
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_xtal_freq_get() local_unnamed_addr #6 !dbg !2555 {
  %1 = load i32, i32* @gXtalFreq, align 4, !dbg !2556
  ret i32 %1, !dbg !2557
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_mcu_freq_get() local_unnamed_addr #6 !dbg !2558 {
  %1 = load i32, i32* @gCpuFrequency, align 4, !dbg !2559
  ret i32 %1, !dbg !2560
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON() local_unnamed_addr #7 !dbg !2561 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2565
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2565
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2563, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2564, metadata !DIExpression()), !dbg !2567
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2568
  store volatile i32 %3, i32* %1, align 4, !dbg !2569
  %4 = load volatile i32, i32* %1, align 4, !dbg !2570
  %5 = lshr i32 %4, 28, !dbg !2571
  %6 = and i32 %5, 3, !dbg !2572
  store volatile i32 %6, i32* %1, align 4, !dbg !2573
  %7 = load volatile i32, i32* %1, align 4, !dbg !2574
  %8 = icmp eq i32 %7, 0, !dbg !2576
  br i1 %8, label %9, label %22, !dbg !2577

9:                                                ; preds = %0
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2578
  store volatile i32 %10, i32* %1, align 4, !dbg !2580
  %11 = load volatile i32, i32* %1, align 4, !dbg !2581
  %12 = and i32 %11, -16777217, !dbg !2582
  store volatile i32 %12, i32* %1, align 4, !dbg !2583
  %13 = load volatile i32, i32* %1, align 4, !dbg !2584
  %14 = or i32 %13, 536870912, !dbg !2585
  store volatile i32 %14, i32* %1, align 4, !dbg !2586
  %15 = load volatile i32, i32* %1, align 4, !dbg !2587
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %15) #14, !dbg !2588
  br label %16, !dbg !2589

16:                                               ; preds = %16, %9
  %17 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2590
  store volatile i32 %17, i32* %1, align 4, !dbg !2592
  %18 = load volatile i32, i32* %1, align 4, !dbg !2593
  %19 = and i32 %18, 134217728, !dbg !2594
  store volatile i32 %19, i32* %1, align 4, !dbg !2595
  %20 = load volatile i32, i32* %1, align 4, !dbg !2596
  %21 = icmp eq i32 %20, 0, !dbg !2597
  br i1 %21, label %16, label %22, !dbg !2598, !llvm.loop !2599

22:                                               ; preds = %16, %0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2601
  ret void, !dbg !2601
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #8

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @cmnReadRegister32(i8* noundef %0) unnamed_addr #5 !dbg !2602 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2609, metadata !DIExpression()), !dbg !2610
  %2 = bitcast i8* %0 to i32*, !dbg !2611
  %3 = load volatile i32, i32* %2, align 4, !dbg !2612
  ret i32 %3, !dbg !2613
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @cmnWriteRegister32(i8* noundef %0, i32 noundef %1) unnamed_addr #3 !dbg !2614 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2618, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i32 %1, metadata !2619, metadata !DIExpression()), !dbg !2620
  %3 = bitcast i8* %0 to i32*, !dbg !2621
  store volatile i32 %1, i32* %3, align 4, !dbg !2622
  ret void, !dbg !2623
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #8

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON_PLL2ON(i8 noundef zeroext %0) local_unnamed_addr #7 !dbg !2624 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8 %0, metadata !2628, metadata !DIExpression()), !dbg !2631
  %3 = bitcast i32* %2 to i8*, !dbg !2632
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !2632
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2629, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2630, metadata !DIExpression()), !dbg !2631
  %4 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2634
  store volatile i32 %4, i32* %2, align 4, !dbg !2635
  %5 = load volatile i32, i32* %2, align 4, !dbg !2636
  %6 = lshr i32 %5, 28, !dbg !2637
  %7 = and i32 %6, 3, !dbg !2638
  store volatile i32 %7, i32* %2, align 4, !dbg !2639
  %8 = load volatile i32, i32* %2, align 4, !dbg !2640
  %9 = icmp eq i32 %8, 3, !dbg !2642
  br i1 %9, label %38, label %10, !dbg !2643

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2644
  store volatile i32 %11, i32* %2, align 4, !dbg !2646
  %12 = load volatile i32, i32* %2, align 4, !dbg !2647
  %13 = and i32 %12, -262145, !dbg !2648
  store volatile i32 %13, i32* %2, align 4, !dbg !2649
  %14 = load volatile i32, i32* %2, align 4, !dbg !2650
  %15 = and i32 %14, -16777217, !dbg !2651
  store volatile i32 %15, i32* %2, align 4, !dbg !2652
  %16 = load volatile i32, i32* %2, align 4, !dbg !2653
  store volatile i32 %16, i32* %2, align 4, !dbg !2654
  %17 = load volatile i32, i32* %2, align 4, !dbg !2655
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %17) #14, !dbg !2656
  %18 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2657
  store volatile i32 %18, i32* %2, align 4, !dbg !2658
  %19 = load volatile i32, i32* %2, align 4, !dbg !2659
  %20 = and i32 %19, -805306369, !dbg !2660
  store volatile i32 %20, i32* %2, align 4, !dbg !2661
  %21 = load volatile i32, i32* %2, align 4, !dbg !2662
  %22 = and i32 %21, -16777217, !dbg !2663
  store volatile i32 %22, i32* %2, align 4, !dbg !2664
  %23 = load volatile i32, i32* %2, align 4, !dbg !2665
  %24 = or i32 %23, 805306368, !dbg !2666
  store volatile i32 %24, i32* %2, align 4, !dbg !2667
  %25 = load volatile i32, i32* %2, align 4, !dbg !2668
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %25) #14, !dbg !2669
  br label %26, !dbg !2670

26:                                               ; preds = %26, %10
  %27 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2671
  store volatile i32 %27, i32* %2, align 4, !dbg !2673
  %28 = load volatile i32, i32* %2, align 4, !dbg !2674
  %29 = and i32 %28, 67108864, !dbg !2675
  store volatile i32 %29, i32* %2, align 4, !dbg !2676
  %30 = load volatile i32, i32* %2, align 4, !dbg !2677
  %31 = icmp eq i32 %30, 0, !dbg !2678
  br i1 %31, label %26, label %32, !dbg !2679, !llvm.loop !2680

32:                                               ; preds = %26
  %33 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2682
  store volatile i32 %33, i32* %2, align 4, !dbg !2683
  %34 = load volatile i32, i32* %2, align 4, !dbg !2684
  %35 = and i32 %34, -262145, !dbg !2685
  store volatile i32 %35, i32* %2, align 4, !dbg !2686
  %36 = load volatile i32, i32* %2, align 4, !dbg !2687
  %37 = and i32 %36, -16777217, !dbg !2688
  store volatile i32 %37, i32* %2, align 4, !dbg !2689
  br label %38, !dbg !2690

38:                                               ; preds = %32, %1
  %39 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2691
  store volatile i32 %39, i32* %2, align 4, !dbg !2692
  %40 = icmp eq i8 %0, 0, !dbg !2693
  %41 = load volatile i32, i32* %2, align 4, !dbg !2695
  br i1 %40, label %44, label %42, !dbg !2696

42:                                               ; preds = %38
  %43 = or i32 %41, 262144, !dbg !2697
  store volatile i32 %43, i32* %2, align 4, !dbg !2699
  br label %45, !dbg !2700

44:                                               ; preds = %38
  store volatile i32 %41, i32* %2, align 4, !dbg !2701
  br label %45

45:                                               ; preds = %44, %42
  %46 = load volatile i32, i32* %2, align 4, !dbg !2703
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %46) #14, !dbg !2704
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !2705
  ret void, !dbg !2705
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1OFF_PLL2OFF() local_unnamed_addr #7 !dbg !2706 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2710
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2710
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2708, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2709, metadata !DIExpression()), !dbg !2712
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2713
  store volatile i32 %3, i32* %1, align 4, !dbg !2714
  %4 = load volatile i32, i32* %1, align 4, !dbg !2715
  %5 = and i32 %4, -805306369, !dbg !2716
  store volatile i32 %5, i32* %1, align 4, !dbg !2717
  %6 = load volatile i32, i32* %1, align 4, !dbg !2718
  %7 = and i32 %6, -16777217, !dbg !2719
  store volatile i32 %7, i32* %1, align 4, !dbg !2720
  %8 = load volatile i32, i32* %1, align 4, !dbg !2721
  store volatile i32 %8, i32* %1, align 4, !dbg !2722
  %9 = load volatile i32, i32* %1, align 4, !dbg !2723
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %9) #14, !dbg !2724
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2725
  store volatile i32 %10, i32* %1, align 4, !dbg !2726
  %11 = load volatile i32, i32* %1, align 4, !dbg !2727
  %12 = and i32 %11, -262145, !dbg !2728
  store volatile i32 %12, i32* %1, align 4, !dbg !2729
  %13 = load volatile i32, i32* %1, align 4, !dbg !2730
  %14 = and i32 %13, -16777217, !dbg !2731
  store volatile i32 %14, i32* %1, align 4, !dbg !2732
  %15 = load volatile i32, i32* %1, align 4, !dbg !2733
  store volatile i32 %15, i32* %1, align 4, !dbg !2734
  %16 = load volatile i32, i32* %1, align 4, !dbg !2735
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %16) #14, !dbg !2736
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2737
  ret void, !dbg !2737
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureToXtal() local_unnamed_addr #0 !dbg !2738 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2742
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2742
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2740, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2741, metadata !DIExpression()), !dbg !2744
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2745
  store volatile i32 %3, i32* %1, align 4, !dbg !2746
  %4 = load volatile i32, i32* %1, align 4, !dbg !2747
  %5 = and i32 %4, -8, !dbg !2748
  store volatile i32 %5, i32* %1, align 4, !dbg !2749
  %6 = load volatile i32, i32* %1, align 4, !dbg !2750
  store volatile i32 %6, i32* %1, align 4, !dbg !2751
  %7 = load volatile i32, i32* %1, align 4, !dbg !2752
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #14, !dbg !2753
  %8 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2754
  store volatile i32 %8, i32* %1, align 4, !dbg !2755
  %9 = load volatile i32, i32* %1, align 4, !dbg !2756
  %10 = and i32 %9, -49153, !dbg !2757
  store volatile i32 %10, i32* %1, align 4, !dbg !2758
  %11 = load volatile i32, i32* %1, align 4, !dbg !2759
  store volatile i32 %11, i32* %1, align 4, !dbg !2760
  %12 = load volatile i32, i32* %1, align 4, !dbg !2761
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %12) #14, !dbg !2762
  br label %13, !dbg !2763

13:                                               ; preds = %13, %0
  %14 = load volatile i32, i32* %1, align 4, !dbg !2764
  %15 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2765
  %16 = icmp eq i32 %14, %15, !dbg !2766
  br i1 %16, label %17, label %13, !dbg !2763, !llvm.loop !2767

17:                                               ; preds = %13
  %18 = tail call i32 @top_xtal_freq_get() #14, !dbg !2769
  store i32 %18, i32* @gCpuFrequency, align 4, !dbg !2770
  tail call void @SystemCoreClockUpdate() #13, !dbg !2771
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !2772
  %20 = udiv i32 %19, 1000, !dbg !2773
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #13, !dbg !2774
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2775
  ret void, !dbg !2775
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo192M() local_unnamed_addr #0 !dbg !2776 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2780
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2780
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2778, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2779, metadata !DIExpression()), !dbg !2782
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 1) #14, !dbg !2783
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2784
  store volatile i32 %3, i32* %1, align 4, !dbg !2785
  %4 = load volatile i32, i32* %1, align 4, !dbg !2786
  %5 = and i32 %4, -49153, !dbg !2787
  store volatile i32 %5, i32* %1, align 4, !dbg !2788
  %6 = load volatile i32, i32* %1, align 4, !dbg !2789
  %7 = or i32 %6, 16384, !dbg !2790
  store volatile i32 %7, i32* %1, align 4, !dbg !2791
  %8 = load volatile i32, i32* %1, align 4, !dbg !2792
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #14, !dbg !2793
  br label %9, !dbg !2794

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !2795
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2796
  %12 = icmp eq i32 %10, %11, !dbg !2797
  br i1 %12, label %13, label %9, !dbg !2794, !llvm.loop !2798

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2800
  store volatile i32 %14, i32* %1, align 4, !dbg !2801
  %15 = load volatile i32, i32* %1, align 4, !dbg !2802
  %16 = and i32 %15, -1009, !dbg !2803
  store volatile i32 %16, i32* %1, align 4, !dbg !2804
  %17 = load volatile i32, i32* %1, align 4, !dbg !2805
  %18 = or i32 %17, 128, !dbg !2806
  store volatile i32 %18, i32* %1, align 4, !dbg !2807
  %19 = load volatile i32, i32* %1, align 4, !dbg !2808
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #14, !dbg !2809
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2810
  store volatile i32 %20, i32* %1, align 4, !dbg !2811
  %21 = load volatile i32, i32* %1, align 4, !dbg !2812
  %22 = and i32 %21, -8, !dbg !2813
  store volatile i32 %22, i32* %1, align 4, !dbg !2814
  %23 = load volatile i32, i32* %1, align 4, !dbg !2815
  %24 = or i32 %23, 4, !dbg !2816
  store volatile i32 %24, i32* %1, align 4, !dbg !2817
  %25 = load volatile i32, i32* %1, align 4, !dbg !2818
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #14, !dbg !2819
  store i32 192000000, i32* @gCpuFrequency, align 4, !dbg !2820
  tail call void @SystemCoreClockUpdate() #13, !dbg !2821
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !2822
  %27 = udiv i32 %26, 1000, !dbg !2823
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #13, !dbg !2824
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2825
  ret void, !dbg !2825
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo160M() local_unnamed_addr #0 !dbg !2826 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2830
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2830
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2828, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2829, metadata !DIExpression()), !dbg !2832
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 0) #14, !dbg !2833
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2834
  store volatile i32 %3, i32* %1, align 4, !dbg !2835
  %4 = load volatile i32, i32* %1, align 4, !dbg !2836
  %5 = and i32 %4, -49153, !dbg !2837
  store volatile i32 %5, i32* %1, align 4, !dbg !2838
  %6 = load volatile i32, i32* %1, align 4, !dbg !2839
  %7 = or i32 %6, 32768, !dbg !2840
  store volatile i32 %7, i32* %1, align 4, !dbg !2841
  %8 = load volatile i32, i32* %1, align 4, !dbg !2842
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #14, !dbg !2843
  br label %9, !dbg !2844

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !2845
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2846
  %12 = icmp eq i32 %10, %11, !dbg !2847
  br i1 %12, label %13, label %9, !dbg !2844, !llvm.loop !2848

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2850
  store volatile i32 %14, i32* %1, align 4, !dbg !2851
  %15 = load volatile i32, i32* %1, align 4, !dbg !2852
  %16 = and i32 %15, -1009, !dbg !2853
  store volatile i32 %16, i32* %1, align 4, !dbg !2854
  %17 = load volatile i32, i32* %1, align 4, !dbg !2855
  %18 = or i32 %17, 32, !dbg !2856
  store volatile i32 %18, i32* %1, align 4, !dbg !2857
  %19 = load volatile i32, i32* %1, align 4, !dbg !2858
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #14, !dbg !2859
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2860
  store volatile i32 %20, i32* %1, align 4, !dbg !2861
  %21 = load volatile i32, i32* %1, align 4, !dbg !2862
  %22 = and i32 %21, -8, !dbg !2863
  store volatile i32 %22, i32* %1, align 4, !dbg !2864
  %23 = load volatile i32, i32* %1, align 4, !dbg !2865
  %24 = or i32 %23, 4, !dbg !2866
  store volatile i32 %24, i32* %1, align 4, !dbg !2867
  %25 = load volatile i32, i32* %1, align 4, !dbg !2868
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #14, !dbg !2869
  store i32 160000000, i32* @gCpuFrequency, align 4, !dbg !2870
  tail call void @SystemCoreClockUpdate() #13, !dbg !2871
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !2872
  %27 = udiv i32 %26, 1000, !dbg !2873
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #13, !dbg !2874
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2875
  ret void, !dbg !2875
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo64M() local_unnamed_addr #0 !dbg !2876 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2880
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2880
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2878, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2879, metadata !DIExpression()), !dbg !2882
  tail call void @cmnPLL1ON() #14, !dbg !2883
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2884
  store volatile i32 %3, i32* %1, align 4, !dbg !2885
  %4 = load volatile i32, i32* %1, align 4, !dbg !2886
  %5 = and i32 %4, -49153, !dbg !2887
  store volatile i32 %5, i32* %1, align 4, !dbg !2888
  %6 = load volatile i32, i32* %1, align 4, !dbg !2889
  store volatile i32 %6, i32* %1, align 4, !dbg !2890
  %7 = load volatile i32, i32* %1, align 4, !dbg !2891
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #14, !dbg !2892
  br label %8, !dbg !2893

8:                                                ; preds = %8, %0
  %9 = load volatile i32, i32* %1, align 4, !dbg !2894
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2895
  %11 = icmp eq i32 %9, %10, !dbg !2896
  br i1 %11, label %12, label %8, !dbg !2893, !llvm.loop !2897

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2899
  store volatile i32 %13, i32* %1, align 4, !dbg !2900
  %14 = load volatile i32, i32* %1, align 4, !dbg !2901
  %15 = and i32 %14, -8, !dbg !2902
  store volatile i32 %15, i32* %1, align 4, !dbg !2903
  %16 = load volatile i32, i32* %1, align 4, !dbg !2904
  %17 = or i32 %16, 2, !dbg !2905
  store volatile i32 %17, i32* %1, align 4, !dbg !2906
  %18 = load volatile i32, i32* %1, align 4, !dbg !2907
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %18) #14, !dbg !2908
  store i32 64000000, i32* @gCpuFrequency, align 4, !dbg !2909
  tail call void @SystemCoreClockUpdate() #13, !dbg !2910
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !2911
  %20 = udiv i32 %19, 1000, !dbg !2912
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #13, !dbg !2913
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2914
  ret void, !dbg !2914
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnSerialFlashClkConfToXtal() local_unnamed_addr #7 section ".ramTEXT" !dbg !2915 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2919
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2919
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2917, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118796 to i32*), metadata !2918, metadata !DIExpression()), !dbg !2921
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*)) #14, !dbg !2922
  store volatile i32 %3, i32* %1, align 4, !dbg !2923
  %4 = load volatile i32, i32* %1, align 4, !dbg !2924
  %5 = and i32 %4, -24577, !dbg !2925
  store volatile i32 %5, i32* %1, align 4, !dbg !2926
  %6 = load volatile i32, i32* %1, align 4, !dbg !2927
  store volatile i32 %6, i32* %1, align 4, !dbg !2928
  %7 = load volatile i32, i32* %1, align 4, !dbg !2929
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*), i32 noundef %7) #14, !dbg !2930
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2931
  ret void, !dbg !2931
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc() local_unnamed_addr #5 !dbg !2932 {
  %1 = tail call i32 @getc_nowait() #14, !dbg !2936
  call void @llvm.dbg.value(metadata i32 %1, metadata !2935, metadata !DIExpression()), !dbg !2937
  ret i32 %1, !dbg !2938
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc_nowait() local_unnamed_addr #5 !dbg !2939 {
  %1 = load volatile i32, i32* inttoptr (i32 -2096955372 to i32*), align 4, !dbg !2942
  %2 = and i32 %1, 1, !dbg !2944
  %3 = icmp eq i32 %2, 0, !dbg !2944
  br i1 %3, label %7, label %4, !dbg !2945

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 -2096955392 to i32*), align 65536, !dbg !2946
  %6 = and i32 %5, 255, !dbg !2948
  call void @llvm.dbg.value(metadata i32 %5, metadata !2941, metadata !DIExpression()), !dbg !2949
  br label %7, !dbg !2950

7:                                                ; preds = %0, %4
  %8 = phi i32 [ %6, %4 ], [ -1, %0 ], !dbg !2951
  ret i32 %8, !dbg !2952
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_output_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !2953 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2958, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i8 %1, metadata !2959, metadata !DIExpression()), !dbg !2961
  %3 = icmp eq i32 %0, 0, !dbg !2962
  %4 = select i1 %3, i32 -2096955392, i32 -2096889856, !dbg !2962
  call void @llvm.dbg.value(metadata i32 %4, metadata !2960, metadata !DIExpression()), !dbg !2961
  %5 = or i32 %4, 20
  %6 = inttoptr i32 %5 to i32*
  br label %7, !dbg !2963

7:                                                ; preds = %7, %2
  %8 = load volatile i32, i32* %6, align 4, !dbg !2964
  %9 = and i32 %8, 32, !dbg !2965
  %10 = icmp eq i32 %9, 0, !dbg !2966
  br i1 %10, label %7, label %11, !dbg !2963, !llvm.loop !2967

11:                                               ; preds = %7
  %12 = zext i8 %1 to i32, !dbg !2969
  %13 = inttoptr i32 %4 to i32*, !dbg !2970
  store volatile i32 %12, i32* %13, align 65536, !dbg !2971
  ret void, !dbg !2972
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @uart_input_char(i32 noundef %0) local_unnamed_addr #3 !dbg !2973 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2977, metadata !DIExpression()), !dbg !2980
  %2 = icmp eq i32 %0, 0, !dbg !2981
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2981
  call void @llvm.dbg.value(metadata i32 %3, metadata !2978, metadata !DIExpression()), !dbg !2980
  %4 = or i32 %3, 20
  %5 = inttoptr i32 %4 to i32*
  br label %6, !dbg !2982

6:                                                ; preds = %6, %1
  %7 = load volatile i32, i32* %5, align 4, !dbg !2983
  %8 = and i32 %7, 1, !dbg !2984
  %9 = icmp eq i32 %8, 0, !dbg !2985
  br i1 %9, label %6, label %10, !dbg !2982, !llvm.loop !2986

10:                                               ; preds = %6
  %11 = inttoptr i32 %3 to i32*, !dbg !2988
  %12 = load volatile i32, i32* %11, align 65536, !dbg !2988
  %13 = trunc i32 %12 to i8, !dbg !2988
  call void @llvm.dbg.value(metadata i8 %13, metadata !2979, metadata !DIExpression()), !dbg !2980
  ret i8 %13, !dbg !2989
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @uart_input_char_unblocking(i32 noundef %0) local_unnamed_addr #5 !dbg !2990 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2994, metadata !DIExpression()), !dbg !2997
  %2 = icmp eq i32 %0, 0, !dbg !2998
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2998
  call void @llvm.dbg.value(metadata i32 %3, metadata !2995, metadata !DIExpression()), !dbg !2997
  %4 = or i32 %3, 20, !dbg !2999
  %5 = inttoptr i32 %4 to i32*, !dbg !2999
  %6 = load volatile i32, i32* %5, align 4, !dbg !2999
  %7 = and i32 %6, 1, !dbg !3001
  %8 = icmp eq i32 %7, 0, !dbg !3001
  br i1 %8, label %13, label %9, !dbg !3002

9:                                                ; preds = %1
  %10 = inttoptr i32 %3 to i32*, !dbg !3003
  %11 = load volatile i32, i32* %10, align 65536, !dbg !3003
  %12 = and i32 %11, 255, !dbg !3005
  call void @llvm.dbg.value(metadata i32 %11, metadata !2996, metadata !DIExpression()), !dbg !2997
  br label %13, !dbg !3006

13:                                               ; preds = %1, %9
  %14 = phi i32 [ %12, %9 ], [ -1, %1 ], !dbg !3007
  ret i32 %14, !dbg !3008
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_HWInit(i32 noundef %0) local_unnamed_addr #0 !dbg !3009 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3013, metadata !DIExpression()), !dbg !3014
  tail call void @halUART_SetFormat(i32 noundef %0, i32 noundef 115200, i16 noundef zeroext 3, i16 noundef zeroext 0, i16 noundef zeroext 0) #14, !dbg !3015
  switch i32 %0, label %7 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !3016

2:                                                ; preds = %1
  br label %3, !dbg !3017

3:                                                ; preds = %1, %2
  %4 = phi i32* [ inttoptr (i32 -2096889780 to i32*), %2 ], [ inttoptr (i32 -2096955316 to i32*), %1 ]
  %5 = load volatile i32, i32* %4, align 4, !dbg !3021
  %6 = or i32 %5, 1, !dbg !3021
  store volatile i32 %6, i32* %4, align 4, !dbg !3021
  br label %7, !dbg !3022

7:                                                ; preds = %3, %1
  ret void, !dbg !3022
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_SetFormat(i32 noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #0 !dbg !3023 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3029, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i32 %1, metadata !3030, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i16 %2, metadata !3031, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i16 %3, metadata !3032, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i16 %4, metadata !3033, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i32 -2096955392, metadata !3035, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, metadata !3042, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, metadata !3044, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata i32 0, metadata !3045, metadata !DIExpression()), !dbg !3046
  %6 = tail call i32 @top_xtal_freq_get() #13, !dbg !3049
  store i32 %6, i32* @gUartClkFreq, align 4, !dbg !3050
  %7 = icmp eq i32 %0, 1, !dbg !3051
  %8 = select i1 %7, i32 -2096889856, i32 -2096955392, !dbg !3051
  call void @llvm.dbg.value(metadata i32 %8, metadata !3035, metadata !DIExpression()), !dbg !3046
  %9 = or i32 %8, 36, !dbg !3052
  %10 = inttoptr i32 %9 to i32*, !dbg !3052
  store volatile i32 3, i32* %10, align 4, !dbg !3053
  %11 = or i32 %8, 12, !dbg !3054
  %12 = inttoptr i32 %11 to i32*, !dbg !3054
  %13 = load volatile i32, i32* %12, align 4, !dbg !3054
  call void @llvm.dbg.value(metadata i32 %13, metadata !3037, metadata !DIExpression()), !dbg !3046
  %14 = or i32 %13, 128, !dbg !3055
  store volatile i32 %14, i32* %12, align 4, !dbg !3056
  %15 = load i32, i32* @gUartClkFreq, align 4, !dbg !3057
  %16 = udiv i32 %15, %1, !dbg !3058
  call void @llvm.dbg.value(metadata i32 %16, metadata !3036, metadata !DIExpression()), !dbg !3046
  %17 = lshr i32 %16, 8, !dbg !3059
  %18 = add nuw nsw i32 %17, 1, !dbg !3060
  call void @llvm.dbg.value(metadata i32 %18, metadata !3038, metadata !DIExpression()), !dbg !3046
  %19 = udiv i32 %16, %18, !dbg !3061
  %20 = add i32 %19, -1, !dbg !3063
  call void @llvm.dbg.value(metadata i32 %20, metadata !3039, metadata !DIExpression()), !dbg !3046
  %21 = icmp eq i32 %20, 3, !dbg !3064
  %22 = lshr i32 %20, 1, !dbg !3066
  %23 = add nsw i32 %22, -1, !dbg !3066
  %24 = select i1 %21, i32 0, i32 %23, !dbg !3066
  call void @llvm.dbg.value(metadata i32 %24, metadata !3040, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i32 undef, metadata !3045, metadata !DIExpression()), !dbg !3046
  %25 = mul i32 %15, 10, !dbg !3067
  %26 = udiv i32 %25, %1, !dbg !3068
  %27 = udiv i32 %26, %16, !dbg !3069
  %28 = mul i32 %19, -10, !dbg !3070
  %29 = add i32 %27, %28, !dbg !3071
  %30 = urem i32 %29, 10, !dbg !3072
  call void @llvm.dbg.value(metadata i32 %30, metadata !3041, metadata !DIExpression()), !dbg !3046
  %31 = and i32 %18, 255, !dbg !3073
  %32 = inttoptr i32 %8 to i32*, !dbg !3074
  store volatile i32 %31, i32* %32, align 65536, !dbg !3075
  %33 = lshr i32 %18, 8, !dbg !3076
  %34 = and i32 %33, 255, !dbg !3077
  %35 = or i32 %8, 4, !dbg !3078
  %36 = inttoptr i32 %35 to i32*, !dbg !3078
  store volatile i32 %34, i32* %36, align 4, !dbg !3079
  %37 = or i32 %8, 40, !dbg !3080
  %38 = inttoptr i32 %37 to i32*, !dbg !3080
  store volatile i32 %20, i32* %38, align 8, !dbg !3081
  %39 = or i32 %8, 44, !dbg !3082
  %40 = inttoptr i32 %39 to i32*, !dbg !3082
  store volatile i32 %24, i32* %40, align 4, !dbg !3083
  %41 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, i32 0, i32 %30, !dbg !3084
  %42 = load i16, i16* %41, align 2, !dbg !3084
  %43 = zext i16 %42 to i32, !dbg !3084
  %44 = or i32 %8, 88, !dbg !3085
  %45 = inttoptr i32 %44 to i32*, !dbg !3085
  store volatile i32 %43, i32* %45, align 8, !dbg !3086
  %46 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, i32 0, i32 %30, !dbg !3087
  %47 = load i16, i16* %46, align 2, !dbg !3087
  %48 = zext i16 %47 to i32, !dbg !3087
  %49 = or i32 %8, 84, !dbg !3088
  %50 = inttoptr i32 %49 to i32*, !dbg !3088
  store volatile i32 %48, i32* %50, align 4, !dbg !3089
  store volatile i32 %13, i32* %12, align 4, !dbg !3090
  %51 = or i32 %8, 8, !dbg !3091
  %52 = inttoptr i32 %51 to i32*, !dbg !3091
  store volatile i32 71, i32* %52, align 8, !dbg !3092
  %53 = inttoptr i32 %11 to i16*, !dbg !3093
  %54 = load volatile i16, i16* %53, align 4, !dbg !3093
  call void @llvm.dbg.value(metadata i16 %54, metadata !3034, metadata !DIExpression()), !dbg !3046
  %55 = and i16 %54, -64, !dbg !3094
  call void @llvm.dbg.value(metadata i16 %54, metadata !3034, metadata !DIExpression(DW_OP_constu, 18446744073709551608, DW_OP_and, DW_OP_stack_value)), !dbg !3046
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %2), metadata !3034, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3046
  %56 = and i16 %2, -61, !dbg !3095
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %56), metadata !3034, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3046
  call void @llvm.dbg.value(metadata !DIArgList(i16 %55, i16 %4, i16 %56), metadata !3034, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3046
  %57 = and i16 %4, -57, !dbg !3096
  call void @llvm.dbg.value(metadata i16 undef, metadata !3034, metadata !DIExpression()), !dbg !3046
  %58 = or i16 %56, %3, !dbg !3095
  %59 = or i16 %58, %57, !dbg !3096
  %60 = or i16 %59, %55, !dbg !3097
  call void @llvm.dbg.value(metadata i16 %60, metadata !3034, metadata !DIExpression()), !dbg !3046
  store volatile i16 %60, i16* %53, align 4, !dbg !3098
  ret void, !dbg !3099
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) local_unnamed_addr #5 !dbg !3100 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3104, metadata !DIExpression()), !dbg !3107
  call void @llvm.dbg.value(metadata i32 %1, metadata !3105, metadata !DIExpression()), !dbg !3107
  call void @llvm.dbg.value(metadata i32* %2, metadata !3106, metadata !DIExpression()), !dbg !3107
  %4 = icmp eq i32 %0, 0, !dbg !3108
  %5 = icmp eq i32 %1, 0, !dbg !3110
  br i1 %4, label %6, label %16, !dbg !3111

6:                                                ; preds = %3
  br i1 %5, label %10, label %7, !dbg !3112

7:                                                ; preds = %6
  %8 = load volatile i16, i16* inttoptr (i32 -2097082568 to i16*), align 8, !dbg !3114
  %9 = zext i16 %8 to i32, !dbg !3114
  br label %26, !dbg !3117

10:                                               ; preds = %6
  %11 = load volatile i16, i16* inttoptr (i32 -2097082812 to i16*), align 4, !dbg !3118
  %12 = zext i16 %11 to i32, !dbg !3118
  store i32 %12, i32* %2, align 4, !dbg !3120
  %13 = load volatile i16, i16* inttoptr (i32 -2097082824 to i16*), align 8, !dbg !3121
  %14 = zext i16 %13 to i32, !dbg !3121
  %15 = sub nsw i32 %12, %14, !dbg !3122
  br label %26

16:                                               ; preds = %3
  br i1 %5, label %20, label %17, !dbg !3123

17:                                               ; preds = %16
  %18 = load volatile i16, i16* inttoptr (i32 -2097082056 to i16*), align 8, !dbg !3125
  %19 = zext i16 %18 to i32, !dbg !3125
  br label %26, !dbg !3128

20:                                               ; preds = %16
  %21 = load volatile i16, i16* inttoptr (i32 -2097082300 to i16*), align 4, !dbg !3129
  %22 = zext i16 %21 to i32, !dbg !3129
  store i32 %22, i32* %2, align 4, !dbg !3131
  %23 = load volatile i16, i16* inttoptr (i32 -2097082312 to i16*), align 8, !dbg !3132
  %24 = zext i16 %23 to i32, !dbg !3132
  %25 = sub nsw i32 %22, %24, !dbg !3133
  br label %26

26:                                               ; preds = %17, %20, %7, %10
  %27 = phi i32 [ %19, %17 ], [ %25, %20 ], [ %9, %7 ], [ %15, %10 ]
  store i32 %27, i32* %2, align 4, !dbg !3110
  ret void, !dbg !3134
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Read_VFIFO_Data(i32 noundef %0, i8* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !3135 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3139, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata i8* %1, metadata !3140, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata i32 %2, metadata !3141, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata i32 0, metadata !3142, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata i32 0, metadata !3142, metadata !DIExpression()), !dbg !3143
  %4 = icmp eq i32 %2, 0, !dbg !3144
  br i1 %4, label %15, label %5, !dbg !3147

5:                                                ; preds = %3, %12
  %6 = phi i32 [ %13, %12 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3142, metadata !DIExpression()), !dbg !3143
  switch i32 %0, label %12 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !3148

7:                                                ; preds = %5
  br label %8, !dbg !3150

8:                                                ; preds = %5, %7
  %9 = phi i8* [ inttoptr (i32 2030044416 to i8*), %7 ], [ inttoptr (i32 2030043904 to i8*), %5 ]
  %10 = load volatile i8, i8* %9, align 256, !dbg !3154
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3154
  store i8 %10, i8* %11, align 1, !dbg !3154
  br label %12, !dbg !3155

12:                                               ; preds = %8, %5
  %13 = add nuw i32 %6, 1, !dbg !3155
  call void @llvm.dbg.value(metadata i32 %13, metadata !3142, metadata !DIExpression()), !dbg !3143
  %14 = icmp eq i32 %13, %2, !dbg !3144
  br i1 %14, label %15, label %5, !dbg !3147, !llvm.loop !3156

15:                                               ; preds = %12, %3
  ret void, !dbg !3158
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Write_VFIFO_Data(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !3159 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3165, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i8* %1, metadata !3166, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i32 %2, metadata !3167, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i32 0, metadata !3168, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i32 0, metadata !3168, metadata !DIExpression()), !dbg !3169
  %4 = icmp eq i32 %2, 0, !dbg !3170
  br i1 %4, label %16, label %5, !dbg !3173

5:                                                ; preds = %3, %13
  %6 = phi i32 [ %14, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3168, metadata !DIExpression()), !dbg !3169
  switch i32 %0, label %13 [
    i32 0, label %7
    i32 1, label %10
  ], !dbg !3174

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3176
  %9 = load i8, i8* %8, align 1, !dbg !3176
  store volatile i8 %9, i8* inttoptr (i32 2030043648 to i8*), align 512, !dbg !3179
  br label %13, !dbg !3180

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3181
  %12 = load i8, i8* %11, align 1, !dbg !3181
  store volatile i8 %12, i8* inttoptr (i32 2030044160 to i8*), align 1024, !dbg !3184
  br label %13, !dbg !3185

13:                                               ; preds = %5, %7, %10
  %14 = add nuw i32 %6, 1, !dbg !3186
  call void @llvm.dbg.value(metadata i32 %14, metadata !3168, metadata !DIExpression()), !dbg !3169
  %15 = icmp eq i32 %14, %2, !dbg !3170
  br i1 %15, label %16, label %5, !dbg !3173, !llvm.loop !3187

16:                                               ; preds = %13, %3
  ret void, !dbg !3189
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Tx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !dbg !3190 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3194, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i8* %1, metadata !3195, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i32 %2, metadata !3196, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i32 %3, metadata !3197, metadata !DIExpression()), !dbg !3198
  switch i32 %0, label %9 [
    i32 0, label %6
    i32 1, label %5
  ], !dbg !3199

5:                                                ; preds = %4
  br label %6, !dbg !3200

6:                                                ; preds = %4, %5
  %7 = phi i32 [ 16, %5 ], [ 14, %4 ]
  %8 = ptrtoint i8* %1 to i32, !dbg !3204
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %8, i32 noundef %2, i32 noundef %7, i32 noundef 0, i32 noundef %3, i32 noundef 0) #13, !dbg !3204
  tail call void @DMA_Vfifo_Flush(i32 noundef %7) #13, !dbg !3204
  br label %9, !dbg !3205

9:                                                ; preds = %6, %4
  ret void, !dbg !3205
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_SetAdrs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Flush(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Rx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 !dbg !3206 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3210, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i8* %1, metadata !3211, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i32 %2, metadata !3212, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i32 %3, metadata !3213, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i32 %4, metadata !3214, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i32 %5, metadata !3215, metadata !DIExpression()), !dbg !3216
  switch i32 %0, label %11 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !3217

7:                                                ; preds = %6
  br label %8, !dbg !3218

8:                                                ; preds = %6, %7
  %9 = phi i32 [ 17, %7 ], [ 15, %6 ]
  %10 = ptrtoint i8* %1 to i32, !dbg !3222
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %10, i32 noundef %2, i32 noundef %9, i32 noundef %3, i32 noundef %4, i32 noundef %5) #13, !dbg !3222
  tail call void @DMA_Vfifo_Flush(i32 noundef %9) #13, !dbg !3222
  br label %11, !dbg !3223

11:                                               ; preds = %8, %6
  ret void, !dbg !3223
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #0 !dbg !3224 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3228, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata void ()* %1, metadata !3229, metadata !DIExpression()), !dbg !3230
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !3231

3:                                                ; preds = %2
  br label %4, !dbg !3232

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef %5, void ()* noundef %1) #13, !dbg !3236
  br label %6, !dbg !3237

6:                                                ; preds = %4, %2
  ret void, !dbg !3237
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #0 !dbg !3238 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3240, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata void ()* %1, metadata !3241, metadata !DIExpression()), !dbg !3242
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !3243

3:                                                ; preds = %2
  br label %4, !dbg !3244

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_TO_Callback(i32 noundef %5, void ()* noundef %1) #13, !dbg !3248
  br label %6, !dbg !3249

6:                                                ; preds = %4, %2
  ret void, !dbg !3249
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_TO_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !3250 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3252, metadata !DIExpression()), !dbg !3256
  %2 = icmp eq i32 %0, 0, !dbg !3257
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3257
  call void @llvm.dbg.value(metadata i32 %3, metadata !3253, metadata !DIExpression()), !dbg !3256
  %4 = or i32 %3, 12, !dbg !3258
  %5 = inttoptr i32 %4 to i32*, !dbg !3258
  %6 = load volatile i32, i32* %5, align 4, !dbg !3258
  call void @llvm.dbg.value(metadata i32 %6, metadata !3255, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3256
  store volatile i32 191, i32* %5, align 4, !dbg !3259
  %7 = or i32 %3, 8, !dbg !3260
  %8 = inttoptr i32 %7 to i32*, !dbg !3260
  %9 = load volatile i32, i32* %8, align 8, !dbg !3260
  call void @llvm.dbg.value(metadata i32 %9, metadata !3254, metadata !DIExpression()), !dbg !3256
  %10 = and i32 %9, 65327, !dbg !3261
  %11 = or i32 %10, 208, !dbg !3261
  call void @llvm.dbg.value(metadata i32 %9, metadata !3254, metadata !DIExpression(DW_OP_constu, 208, DW_OP_or, DW_OP_stack_value)), !dbg !3256
  store volatile i32 %11, i32* %8, align 8, !dbg !3262
  %12 = or i32 %3, 68, !dbg !3263
  %13 = inttoptr i32 %12 to i32*, !dbg !3263
  store volatile i32 0, i32* %13, align 4, !dbg !3264
  store volatile i32 0, i32* %5, align 4, !dbg !3265
  %14 = or i32 %3, 16, !dbg !3266
  %15 = inttoptr i32 %14 to i32*, !dbg !3266
  store volatile i32 2, i32* %15, align 16, !dbg !3267
  %16 = and i32 %6, 65535, !dbg !3268
  store volatile i32 %16, i32* %5, align 4, !dbg !3269
  ret void, !dbg !3270
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 !dbg !3271 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3275, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i8 %1, metadata !3276, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i8 %2, metadata !3277, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i8 %3, metadata !3278, metadata !DIExpression()), !dbg !3282
  %5 = icmp eq i32 %0, 0, !dbg !3283
  %6 = select i1 %5, i32 -2096955392, i32 -2096889856, !dbg !3283
  call void @llvm.dbg.value(metadata i32 %6, metadata !3279, metadata !DIExpression()), !dbg !3282
  %7 = or i32 %6, 12, !dbg !3284
  %8 = inttoptr i32 %7 to i32*, !dbg !3284
  %9 = load volatile i32, i32* %8, align 4, !dbg !3284
  call void @llvm.dbg.value(metadata i32 %9, metadata !3281, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3282
  store volatile i32 191, i32* %8, align 4, !dbg !3285
  %10 = zext i8 %1 to i32, !dbg !3286
  %11 = or i32 %6, 16, !dbg !3287
  %12 = inttoptr i32 %11 to i32*, !dbg !3287
  store volatile i32 %10, i32* %12, align 16, !dbg !3288
  %13 = or i32 %6, 20, !dbg !3289
  %14 = inttoptr i32 %13 to i32*, !dbg !3289
  store volatile i32 %10, i32* %14, align 4, !dbg !3290
  %15 = zext i8 %2 to i32, !dbg !3291
  %16 = or i32 %6, 24, !dbg !3292
  %17 = inttoptr i32 %16 to i32*, !dbg !3292
  store volatile i32 %15, i32* %17, align 8, !dbg !3293
  %18 = or i32 %6, 28, !dbg !3294
  %19 = inttoptr i32 %18 to i32*, !dbg !3294
  store volatile i32 %15, i32* %19, align 4, !dbg !3295
  %20 = or i32 %6, 8, !dbg !3296
  %21 = inttoptr i32 %20 to i32*, !dbg !3296
  %22 = load volatile i32, i32* %21, align 8, !dbg !3296
  call void @llvm.dbg.value(metadata i32 %22, metadata !3280, metadata !DIExpression()), !dbg !3282
  %23 = and i32 %22, 65525, !dbg !3297
  %24 = or i32 %23, 10, !dbg !3297
  call void @llvm.dbg.value(metadata i32 %22, metadata !3280, metadata !DIExpression(DW_OP_constu, 10, DW_OP_or, DW_OP_stack_value)), !dbg !3282
  store volatile i32 %24, i32* %21, align 8, !dbg !3298
  %25 = and i32 %9, 65535, !dbg !3299
  store volatile i32 %25, i32* %8, align 4, !dbg !3300
  %26 = zext i8 %3 to i32, !dbg !3301
  %27 = or i32 %6, 64, !dbg !3302
  %28 = inttoptr i32 %27 to i32*, !dbg !3302
  store volatile i32 %26, i32* %28, align 64, !dbg !3303
  %29 = or i32 %6, 68, !dbg !3304
  %30 = inttoptr i32 %29 to i32*, !dbg !3304
  store volatile i32 1, i32* %30, align 4, !dbg !3305
  ret void, !dbg !3306
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !3307 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3309, metadata !DIExpression()), !dbg !3312
  %2 = icmp eq i32 %0, 0, !dbg !3313
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3313
  call void @llvm.dbg.value(metadata i32 %3, metadata !3310, metadata !DIExpression()), !dbg !3312
  %4 = or i32 %3, 12, !dbg !3314
  %5 = inttoptr i32 %4 to i32*, !dbg !3314
  %6 = load volatile i32, i32* %5, align 4, !dbg !3314
  call void @llvm.dbg.value(metadata i32 %6, metadata !3311, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3312
  store volatile i32 191, i32* %5, align 4, !dbg !3315
  %7 = or i32 %3, 8, !dbg !3316
  %8 = inttoptr i32 %7 to i32*, !dbg !3316
  store volatile i32 0, i32* %8, align 8, !dbg !3317
  store volatile i32 0, i32* %5, align 4, !dbg !3318
  %9 = and i32 %6, 65535, !dbg !3319
  store volatile i32 %9, i32* %5, align 4, !dbg !3320
  ret void, !dbg !3321
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_reset_default_value(i32 noundef %0) local_unnamed_addr #3 !dbg !3322 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3324, metadata !DIExpression()), !dbg !3326
  %2 = icmp eq i32 %0, 0, !dbg !3327
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3327
  call void @llvm.dbg.value(metadata i32 %3, metadata !3325, metadata !DIExpression()), !dbg !3326
  %4 = or i32 %3, 12, !dbg !3328
  %5 = inttoptr i32 %4 to i32*, !dbg !3328
  store volatile i32 191, i32* %5, align 4, !dbg !3329
  %6 = or i32 %3, 8, !dbg !3330
  %7 = inttoptr i32 %6 to i32*, !dbg !3330
  store volatile i32 16, i32* %7, align 8, !dbg !3331
  %8 = or i32 %3, 16, !dbg !3332
  %9 = inttoptr i32 %8 to i32*, !dbg !3332
  store volatile i32 0, i32* %9, align 16, !dbg !3333
  %10 = or i32 %3, 24, !dbg !3334
  %11 = inttoptr i32 %10 to i32*, !dbg !3334
  store volatile i32 0, i32* %11, align 8, !dbg !3335
  store volatile i32 128, i32* %5, align 4, !dbg !3336
  %12 = inttoptr i32 %3 to i32*, !dbg !3337
  store volatile i32 0, i32* %12, align 65536, !dbg !3338
  %13 = or i32 %3, 4, !dbg !3339
  %14 = inttoptr i32 %13 to i32*, !dbg !3339
  store volatile i32 0, i32* %14, align 4, !dbg !3340
  store volatile i32 0, i32* %5, align 4, !dbg !3341
  store volatile i32 0, i32* %14, align 4, !dbg !3342
  store volatile i32 0, i32* %7, align 8, !dbg !3343
  store volatile i32 191, i32* %5, align 4, !dbg !3344
  store volatile i32 0, i32* %7, align 8, !dbg !3345
  store volatile i32 0, i32* %5, align 4, !dbg !3346
  store volatile i32 0, i32* %9, align 16, !dbg !3347
  %15 = or i32 %3, 28, !dbg !3348
  %16 = inttoptr i32 %15 to i32*, !dbg !3348
  store volatile i32 0, i32* %16, align 4, !dbg !3349
  %17 = or i32 %3, 36, !dbg !3350
  %18 = inttoptr i32 %17 to i32*, !dbg !3350
  store volatile i32 0, i32* %18, align 4, !dbg !3351
  %19 = or i32 %3, 40, !dbg !3352
  %20 = inttoptr i32 %19 to i32*, !dbg !3352
  store volatile i32 0, i32* %20, align 8, !dbg !3353
  %21 = or i32 %3, 44, !dbg !3354
  %22 = inttoptr i32 %21 to i32*, !dbg !3354
  store volatile i32 0, i32* %22, align 4, !dbg !3355
  %23 = or i32 %3, 52, !dbg !3356
  %24 = inttoptr i32 %23 to i32*, !dbg !3356
  store volatile i32 0, i32* %24, align 4, !dbg !3357
  %25 = or i32 %3, 60, !dbg !3358
  %26 = inttoptr i32 %25 to i32*, !dbg !3358
  store volatile i32 0, i32* %26, align 4, !dbg !3359
  %27 = or i32 %3, 64, !dbg !3360
  %28 = inttoptr i32 %27 to i32*, !dbg !3360
  store volatile i32 0, i32* %28, align 64, !dbg !3361
  %29 = or i32 %3, 68, !dbg !3362
  %30 = inttoptr i32 %29 to i32*, !dbg !3362
  store volatile i32 0, i32* %30, align 4, !dbg !3363
  %31 = or i32 %3, 72, !dbg !3364
  %32 = inttoptr i32 %31 to i32*, !dbg !3364
  store volatile i32 0, i32* %32, align 8, !dbg !3365
  %33 = or i32 %3, 76, !dbg !3366
  %34 = inttoptr i32 %33 to i32*, !dbg !3366
  store volatile i32 0, i32* %34, align 4, !dbg !3367
  %35 = or i32 %3, 80, !dbg !3368
  %36 = inttoptr i32 %35 to i32*, !dbg !3368
  store volatile i32 0, i32* %36, align 16, !dbg !3369
  %37 = or i32 %3, 84, !dbg !3370
  %38 = inttoptr i32 %37 to i32*, !dbg !3370
  store volatile i32 0, i32* %38, align 4, !dbg !3371
  %39 = or i32 %3, 88, !dbg !3372
  %40 = inttoptr i32 %39 to i32*, !dbg !3372
  store volatile i32 0, i32* %40, align 8, !dbg !3373
  %41 = or i32 %3, 96, !dbg !3374
  %42 = inttoptr i32 %41 to i32*, !dbg !3374
  store volatile i32 0, i32* %42, align 32, !dbg !3375
  ret void, !dbg !3376
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_query_empty(i32 noundef %0) local_unnamed_addr #3 !dbg !3377 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3379, metadata !DIExpression()), !dbg !3381
  %2 = icmp eq i32 %0, 0, !dbg !3382
  call void @llvm.dbg.value(metadata i32 undef, metadata !3380, metadata !DIExpression()), !dbg !3381
  %3 = select i1 %2, i32 -2096955372, i32 -2096889836
  %4 = inttoptr i32 %3 to i32*
  br label %5, !dbg !3383

5:                                                ; preds = %5, %1
  %6 = load volatile i32, i32* %4, align 4, !dbg !3384
  %7 = and i32 %6, 64, !dbg !3385
  %8 = icmp eq i32 %7, 0, !dbg !3386
  br i1 %8, label %5, label %9, !dbg !3383, !llvm.loop !3387

9:                                                ; preds = %5
  ret void, !dbg !3389
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_fatal_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3390 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3394, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata i32 %1, metadata !3395, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata i8* %2, metadata !3396, metadata !DIExpression()), !dbg !3407
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3408
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3408
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3397, metadata !DIExpression()), !dbg !3409
  %7 = bitcast i32* %5 to i8*, !dbg !3410
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3410
  call void @llvm.dbg.value(metadata i32* %5, metadata !3406, metadata !DIExpression(DW_OP_deref)), !dbg !3407
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #13, !dbg !3411
  call void @llvm.va_start(i8* nonnull %6), !dbg !3412
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3413
  %10 = load i32, i32* %9, align 4, !dbg !3413
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3413
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #13, !dbg !3413
  call void @llvm.va_end(i8* nonnull %6), !dbg !3414
  %13 = load i32, i32* %5, align 4, !dbg !3415
  call void @llvm.dbg.value(metadata i32 %13, metadata !3406, metadata !DIExpression()), !dbg !3407
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #13, !dbg !3416
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3417
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3417
  ret void, !dbg !3417
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #9

; Function Attrs: optsize
declare dso_local i32 @vprintf(i8* noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #9

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_error_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3418 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3420, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i32 %1, metadata !3421, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i8* %2, metadata !3422, metadata !DIExpression()), !dbg !3425
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3426
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3426
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3423, metadata !DIExpression()), !dbg !3427
  %7 = bitcast i32* %5 to i8*, !dbg !3428
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3428
  call void @llvm.dbg.value(metadata i32* %5, metadata !3424, metadata !DIExpression(DW_OP_deref)), !dbg !3425
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #13, !dbg !3429
  call void @llvm.va_start(i8* nonnull %6), !dbg !3430
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3431
  %10 = load i32, i32* %9, align 4, !dbg !3431
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3431
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #13, !dbg !3431
  call void @llvm.va_end(i8* nonnull %6), !dbg !3432
  %13 = load i32, i32* %5, align 4, !dbg !3433
  call void @llvm.dbg.value(metadata i32 %13, metadata !3424, metadata !DIExpression()), !dbg !3425
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #13, !dbg !3434
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3435
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3435
  ret void, !dbg !3435
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_warning_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3436 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3438, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 %1, metadata !3439, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i8* %2, metadata !3440, metadata !DIExpression()), !dbg !3443
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3444
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3444
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3441, metadata !DIExpression()), !dbg !3445
  %7 = bitcast i32* %5 to i8*, !dbg !3446
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3446
  call void @llvm.dbg.value(metadata i32* %5, metadata !3442, metadata !DIExpression(DW_OP_deref)), !dbg !3443
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #13, !dbg !3447
  call void @llvm.va_start(i8* nonnull %6), !dbg !3448
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3449
  %10 = load i32, i32* %9, align 4, !dbg !3449
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3449
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #13, !dbg !3449
  call void @llvm.va_end(i8* nonnull %6), !dbg !3450
  %13 = load i32, i32* %5, align 4, !dbg !3451
  call void @llvm.dbg.value(metadata i32 %13, metadata !3442, metadata !DIExpression()), !dbg !3443
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #13, !dbg !3452
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3453
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3453
  ret void, !dbg !3453
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_info_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3454 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3456, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i32 %1, metadata !3457, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i8* %2, metadata !3458, metadata !DIExpression()), !dbg !3461
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3462
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3462
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3459, metadata !DIExpression()), !dbg !3463
  %7 = bitcast i32* %5 to i8*, !dbg !3464
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3464
  call void @llvm.dbg.value(metadata i32* %5, metadata !3460, metadata !DIExpression(DW_OP_deref)), !dbg !3461
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #13, !dbg !3465
  call void @llvm.va_start(i8* nonnull %6), !dbg !3466
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3467
  %10 = load i32, i32* %9, align 4, !dbg !3467
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3467
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #13, !dbg !3467
  call void @llvm.va_end(i8* nonnull %6), !dbg !3468
  %13 = load i32, i32* %5, align 4, !dbg !3469
  call void @llvm.dbg.value(metadata i32 %13, metadata !3460, metadata !DIExpression()), !dbg !3461
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #13, !dbg !3470
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #15, !dbg !3471
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !3471
  ret void, !dbg !3471
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @log_hal_dump_internal(i8* nocapture noundef %0, i32 noundef %1, i8* nocapture noundef %2, i8* nocapture noundef %3, i32 noundef %4, ...) local_unnamed_addr #10 !dbg !3472 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3478, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i32 %1, metadata !3479, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i8* %2, metadata !3480, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i8* %3, metadata !3481, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i32 %4, metadata !3482, metadata !DIExpression()), !dbg !3483
  ret void, !dbg !3484
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_nvic_init() local_unnamed_addr #10 !dbg !3485 {
  ret i32 0, !dbg !3489
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_enable_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !3490 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3494, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata i32 -1, metadata !3495, metadata !DIExpression()), !dbg !3496
  %2 = icmp ugt i32 %0, 95, !dbg !3497
  br i1 %2, label %4, label %3, !dbg !3497

3:                                                ; preds = %1
  tail call fastcc void @NVIC_EnableIRQ(i32 noundef %0) #14, !dbg !3499
  call void @llvm.dbg.value(metadata i32 0, metadata !3495, metadata !DIExpression()), !dbg !3496
  br label %4, !dbg !3501

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3496
  ret i32 %5, !dbg !3502
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_EnableIRQ(i32 noundef %0) unnamed_addr #3 !dbg !3503 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3507, metadata !DIExpression()), !dbg !3508
  %2 = and i32 %0, 31, !dbg !3509
  %3 = shl nuw i32 1, %2, !dbg !3510
  %4 = lshr i32 %0, 5, !dbg !3511
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813312 to [8 x i32]*), i32 0, i32 %4, !dbg !3512
  store volatile i32 %3, i32* %5, align 4, !dbg !3513
  ret void, !dbg !3514
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_disable_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !3515 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3517, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i32 -1, metadata !3518, metadata !DIExpression()), !dbg !3519
  %2 = icmp ugt i32 %0, 95, !dbg !3520
  br i1 %2, label %4, label %3, !dbg !3520

3:                                                ; preds = %1
  tail call fastcc void @NVIC_DisableIRQ(i32 noundef %0) #14, !dbg !3522
  call void @llvm.dbg.value(metadata i32 0, metadata !3518, metadata !DIExpression()), !dbg !3519
  br label %4, !dbg !3524

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3519
  ret i32 %5, !dbg !3525
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_DisableIRQ(i32 noundef %0) unnamed_addr #3 !dbg !3526 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3528, metadata !DIExpression()), !dbg !3529
  %2 = and i32 %0, 31, !dbg !3530
  %3 = shl nuw i32 1, %2, !dbg !3531
  %4 = lshr i32 %0, 5, !dbg !3532
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813184 to [8 x i32]*), i32 0, i32 %4, !dbg !3533
  store volatile i32 %3, i32* %5, align 4, !dbg !3534
  ret void, !dbg !3535
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_pending_irq(i32 noundef %0) local_unnamed_addr #5 !dbg !3536 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3540, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata i32 255, metadata !3541, metadata !DIExpression()), !dbg !3542
  %2 = icmp ugt i32 %0, 95, !dbg !3543
  br i1 %2, label %5, label %3, !dbg !3543

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) #14, !dbg !3545
  call void @llvm.dbg.value(metadata i32 %4, metadata !3541, metadata !DIExpression()), !dbg !3542
  br label %5, !dbg !3547

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 255, %1 ], !dbg !3542
  ret i32 %6, !dbg !3548
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) unnamed_addr #5 !dbg !3549 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3553, metadata !DIExpression()), !dbg !3554
  %2 = lshr i32 %0, 5, !dbg !3555
  %3 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %2, !dbg !3556
  %4 = load volatile i32, i32* %3, align 4, !dbg !3556
  %5 = and i32 %0, 31, !dbg !3557
  %6 = lshr i32 %4, %5, !dbg !3558
  %7 = and i32 %6, 1, !dbg !3558
  ret i32 %7, !dbg !3559
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_pending_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !3560 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3562, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata i32 -1, metadata !3563, metadata !DIExpression()), !dbg !3564
  %2 = icmp ugt i32 %0, 95, !dbg !3565
  br i1 %2, label %4, label %3, !dbg !3565

3:                                                ; preds = %1
  tail call fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) #14, !dbg !3567
  call void @llvm.dbg.value(metadata i32 0, metadata !3563, metadata !DIExpression()), !dbg !3564
  br label %4, !dbg !3569

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3564
  ret i32 %5, !dbg !3570
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) unnamed_addr #3 !dbg !3571 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3573, metadata !DIExpression()), !dbg !3574
  %2 = and i32 %0, 31, !dbg !3575
  %3 = shl nuw i32 1, %2, !dbg !3576
  %4 = lshr i32 %0, 5, !dbg !3577
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %4, !dbg !3578
  store volatile i32 %3, i32* %5, align 4, !dbg !3579
  ret void, !dbg !3580
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_clear_pending_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !3581 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3583, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i32 -1, metadata !3584, metadata !DIExpression()), !dbg !3585
  %2 = icmp ugt i32 %0, 95, !dbg !3586
  br i1 %2, label %4, label %3, !dbg !3586

3:                                                ; preds = %1
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #14, !dbg !3588
  call void @llvm.dbg.value(metadata i32 0, metadata !3584, metadata !DIExpression()), !dbg !3585
  br label %4, !dbg !3590

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3585
  ret i32 %5, !dbg !3591
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) unnamed_addr #3 !dbg !3592 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3594, metadata !DIExpression()), !dbg !3595
  %2 = and i32 %0, 31, !dbg !3596
  %3 = shl nuw i32 1, %2, !dbg !3597
  %4 = lshr i32 %0, 5, !dbg !3598
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812928 to [8 x i32]*), i32 0, i32 %4, !dbg !3599
  store volatile i32 %3, i32* %5, align 4, !dbg !3600
  ret void, !dbg !3601
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_priority(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !3602 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3606, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata i32 %1, metadata !3607, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata i32 -1, metadata !3608, metadata !DIExpression()), !dbg !3609
  %3 = icmp ugt i32 %0, 95, !dbg !3610
  br i1 %3, label %5, label %4, !dbg !3610

4:                                                ; preds = %2
  tail call fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) #14, !dbg !3612
  call void @llvm.dbg.value(metadata i32 0, metadata !3608, metadata !DIExpression()), !dbg !3609
  br label %5, !dbg !3614

5:                                                ; preds = %2, %4
  %6 = phi i32 [ 0, %4 ], [ -3, %2 ], !dbg !3609
  ret i32 %6, !dbg !3615
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) unnamed_addr #3 !dbg !3616 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3620, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i32 %1, metadata !3621, metadata !DIExpression()), !dbg !3622
  %3 = trunc i32 %1 to i8, !dbg !3623
  %4 = shl i8 %3, 5, !dbg !3623
  %5 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !3626
  store volatile i8 %4, i8* %5, align 1, !dbg !3627
  ret void, !dbg !3628
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_priority(i32 noundef %0) local_unnamed_addr #5 !dbg !3629 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3631, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.value(metadata i32 68, metadata !3632, metadata !DIExpression()), !dbg !3633
  %2 = icmp ugt i32 %0, 95, !dbg !3634
  br i1 %2, label %5, label %3, !dbg !3634

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPriority(i32 noundef %0) #14, !dbg !3636
  call void @llvm.dbg.value(metadata i32 %4, metadata !3632, metadata !DIExpression()), !dbg !3633
  br label %5, !dbg !3638

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 68, %1 ], !dbg !3633
  ret i32 %6, !dbg !3639
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPriority(i32 noundef %0) unnamed_addr #5 !dbg !3640 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3642, metadata !DIExpression()), !dbg !3643
  %2 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !3644
  %3 = load volatile i8, i8* %2, align 1, !dbg !3644
  %4 = lshr i8 %3, 5, !dbg !3647
  %5 = zext i8 %4 to i32, !dbg !3647
  ret i32 %5, !dbg !3648
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @Flash_ReturnReady() local_unnamed_addr #10 !dbg !3649 {
  ret void, !dbg !3650
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @isrC_main() local_unnamed_addr #0 section ".ramTEXT" !dbg !3651 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !3653, metadata !DIExpression()), !dbg !3655
  %1 = tail call fastcc i32 @get_current_irq() #14, !dbg !3656
  call void @llvm.dbg.value(metadata i32 %1, metadata !3654, metadata !DIExpression()), !dbg !3655
  %2 = icmp ugt i32 %1, 95, !dbg !3657
  br i1 %2, label %12, label %3, !dbg !3657

3:                                                ; preds = %0
  %4 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 0, !dbg !3659
  %5 = load void (i32)*, void (i32)** %4, align 4, !dbg !3659
  %6 = icmp eq void (i32)* %5, null, !dbg !3661
  br i1 %6, label %7, label %8, !dbg !3662

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 -4, metadata !3653, metadata !DIExpression()), !dbg !3655
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.isrC_main, i32 0, i32 0), i32 noundef 194, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0)) #13, !dbg !3663
  br label %12, !dbg !3665

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @get_pending_irq() #14, !dbg !3666
  %10 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 1, !dbg !3668
  store i32 %9, i32* %10, align 4, !dbg !3669
  %11 = load void (i32)*, void (i32)** %4, align 4, !dbg !3670
  tail call void %11(i32 noundef %1) #13, !dbg !3671
  call void @llvm.dbg.value(metadata i32 0, metadata !3653, metadata !DIExpression()), !dbg !3655
  br label %12, !dbg !3672

12:                                               ; preds = %0, %8, %7
  %13 = phi i32 [ -4, %7 ], [ 0, %8 ], [ -3, %0 ], !dbg !3655
  ret i32 %13, !dbg !3673
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_current_irq() unnamed_addr #5 !dbg !3674 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !3677
  %2 = and i32 %1, 511, !dbg !3678
  call void @llvm.dbg.value(metadata i32 %2, metadata !3676, metadata !DIExpression()), !dbg !3679
  %3 = add nsw i32 %2, -16, !dbg !3680
  ret i32 %3, !dbg !3681
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_pending_irq() unnamed_addr #5 !dbg !3682 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !3683
  %2 = lshr i32 %1, 22, !dbg !3684
  %3 = and i32 %2, 1, !dbg !3684
  ret i32 %3, !dbg !3685
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_register_isr_handler(i32 noundef %0, void (i32)* noundef %1) local_unnamed_addr #0 !dbg !3686 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3691, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata void (i32)* %1, metadata !3692, metadata !DIExpression()), !dbg !3694
  %3 = icmp ugt i32 %0, 95, !dbg !3695
  %4 = icmp eq void (i32)* %1, null
  %5 = or i1 %3, %4, !dbg !3695
  br i1 %5, label %10, label %6, !dbg !3695

6:                                                ; preds = %2
  %7 = tail call i32 @save_and_set_interrupt_mask() #13, !dbg !3697
  call void @llvm.dbg.value(metadata i32 %7, metadata !3693, metadata !DIExpression()), !dbg !3694
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #14, !dbg !3698
  %8 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 0, !dbg !3699
  store void (i32)* %1, void (i32)** %8, align 4, !dbg !3700
  %9 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 1, !dbg !3701
  store i32 0, i32* %9, align 4, !dbg !3702
  tail call void @restore_interrupt_mask(i32 noundef %7) #13, !dbg !3703
  br label %10, !dbg !3704

10:                                               ; preds = %2, %6
  %11 = phi i32 [ 0, %6 ], [ -2, %2 ], !dbg !3694
  ret i32 %11, !dbg !3705
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_save_and_set_interrupt_mask(i32* nocapture noundef writeonly %0) local_unnamed_addr #0 !dbg !3706 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3710, metadata !DIExpression()), !dbg !3711
  %2 = tail call i32 @save_and_set_interrupt_mask() #13, !dbg !3712
  store i32 %2, i32* %0, align 4, !dbg !3713
  ret i32 0, !dbg !3714
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #0 !dbg !3715 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3719, metadata !DIExpression()), !dbg !3720
  tail call void @restore_interrupt_mask(i32 noundef %0) #13, !dbg !3721
  ret i32 0, !dbg !3722
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pinmux_set_function(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !3723 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3729, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i8 %1, metadata !3730, metadata !DIExpression()), !dbg !3732
  %3 = icmp ugt i32 %0, 60, !dbg !3733
  br i1 %3, label %11, label %4, !dbg !3735

4:                                                ; preds = %2
  %5 = icmp ugt i8 %1, 15, !dbg !3736
  br i1 %5, label %11, label %6, !dbg !3738

6:                                                ; preds = %4
  %7 = zext i8 %1 to i32, !dbg !3739
  %8 = tail call i32 @pinmux_config(i32 noundef %0, i32 noundef %7) #13, !dbg !3740
  call void @llvm.dbg.value(metadata i32 %8, metadata !3731, metadata !DIExpression()), !dbg !3732
  %9 = icmp slt i32 %8, 0, !dbg !3741
  %10 = select i1 %9, i32 -3, i32 0, !dbg !3741
  br label %11, !dbg !3742

11:                                               ; preds = %4, %2, %6
  %12 = phi i32 [ %10, %6 ], [ -2, %2 ], [ -1, %4 ], !dbg !3732
  ret i32 %12, !dbg !3743
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_init(i32 noundef %0) local_unnamed_addr #10 !dbg !3744 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3749, metadata !DIExpression()), !dbg !3750
  ret i32 0, !dbg !3751
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_deinit(i32 noundef %0) local_unnamed_addr #10 !dbg !3752 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3754, metadata !DIExpression()), !dbg !3755
  ret i32 0, !dbg !3756
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_input(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #0 !dbg !3757 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3762, metadata !DIExpression()), !dbg !3772
  call void @llvm.dbg.value(metadata i32* %1, metadata !3763, metadata !DIExpression()), !dbg !3772
  %4 = icmp eq i32* %1, null, !dbg !3773
  br i1 %4, label %12, label %5, !dbg !3775

5:                                                ; preds = %2
  %6 = icmp ugt i32 %0, 60, !dbg !3776
  br i1 %6, label %12, label %7, !dbg !3778

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !3779
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #15, !dbg !3779
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #13, !dbg !3779
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 2, !dbg !3779
  %10 = load i8, i8* %9, align 1, !dbg !3779
  call void @llvm.dbg.value(metadata i8 %10, metadata !3764, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !3772
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #15, !dbg !3779
  %11 = zext i8 %10 to i32, !dbg !3780
  store i32 %11, i32* %1, align 4, !dbg !3781
  br label %12, !dbg !3782

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -1, %2 ], [ -2, %5 ], !dbg !3772
  ret i32 %13, !dbg !3783
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !3784 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3788, metadata !DIExpression()), !dbg !3791
  call void @llvm.dbg.value(metadata i32 %1, metadata !3789, metadata !DIExpression()), !dbg !3791
  %3 = icmp ugt i32 %0, 60, !dbg !3792
  br i1 %3, label %9, label %4, !dbg !3794

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !3795
  %6 = tail call i32 @gpio_write(i32 noundef %0, i8 noundef zeroext %5) #13, !dbg !3796
  call void @llvm.dbg.value(metadata i32 %6, metadata !3790, metadata !DIExpression()), !dbg !3791
  %7 = icmp slt i32 %6, 0, !dbg !3797
  %8 = select i1 %7, i32 -3, i32 0, !dbg !3797
  br label %9, !dbg !3798

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !3791
  ret i32 %10, !dbg !3799
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_output(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #0 !dbg !3800 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3802, metadata !DIExpression()), !dbg !3805
  call void @llvm.dbg.value(metadata i32* %1, metadata !3803, metadata !DIExpression()), !dbg !3805
  %4 = icmp ugt i32 %0, 60, !dbg !3806
  br i1 %4, label %12, label %5, !dbg !3808

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !3809
  br i1 %6, label %12, label %7, !dbg !3811

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !3812
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #15, !dbg !3812
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #13, !dbg !3812
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 3, !dbg !3812
  %10 = load i8, i8* %9, align 2, !dbg !3812
  call void @llvm.dbg.value(metadata i8 %10, metadata !3804, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !3805
  call void @llvm.dbg.value(metadata i8 undef, metadata !3804, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !3805
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #15, !dbg !3812
  %11 = zext i8 %10 to i32, !dbg !3813
  store i32 %11, i32* %1, align 4, !dbg !3814
  br label %12, !dbg !3815

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !3805
  ret i32 %13, !dbg !3816
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_direction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !3817 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3822, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i32 %1, metadata !3823, metadata !DIExpression()), !dbg !3825
  %3 = icmp ugt i32 %0, 60, !dbg !3826
  br i1 %3, label %8, label %4, !dbg !3828

4:                                                ; preds = %2
  %5 = tail call i32 @gpio_direction(i32 noundef %0, i32 noundef %1) #13, !dbg !3829
  call void @llvm.dbg.value(metadata i32 %5, metadata !3824, metadata !DIExpression()), !dbg !3825
  %6 = icmp slt i32 %5, 0, !dbg !3830
  %7 = select i1 %6, i32 -3, i32 0, !dbg !3830
  br label %8, !dbg !3831

8:                                                ; preds = %2, %4
  %9 = phi i32 [ %7, %4 ], [ -2, %2 ], !dbg !3825
  ret i32 %9, !dbg !3832
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_direction(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #0 !dbg !3833 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3838, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata i32* %1, metadata !3839, metadata !DIExpression()), !dbg !3841
  %4 = icmp ugt i32 %0, 60, !dbg !3842
  br i1 %4, label %13, label %5, !dbg !3844

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !3845
  br i1 %6, label %13, label %7, !dbg !3847

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !3848
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #15, !dbg !3848
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #13, !dbg !3848
  call void @llvm.dbg.value(metadata i32 undef, metadata !3840, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3841
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 1, !dbg !3848
  %10 = load i8, i8* %9, align 4, !dbg !3848
  call void @llvm.dbg.value(metadata i8 %10, metadata !3840, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !3841
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #15, !dbg !3848
  %11 = icmp ne i8 %10, 0, !dbg !3849
  %12 = zext i1 %11 to i32, !dbg !3849
  store i32 %12, i32* %1, align 4, !dbg !3850
  br label %13, !dbg !3851

13:                                               ; preds = %5, %2, %7
  %14 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !3841
  ret i32 %14, !dbg !3852
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_toggle_pin(i32 noundef %0) local_unnamed_addr #0 !dbg !3853 {
  %2 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3855, metadata !DIExpression()), !dbg !3857
  %3 = icmp ugt i32 %0, 60, !dbg !3858
  br i1 %3, label %11, label %4, !dbg !3860

4:                                                ; preds = %1
  %5 = bitcast %struct.gpio_status* %2 to i8*, !dbg !3861
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #15, !dbg !3861
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %2, i32 noundef %0) #13, !dbg !3861
  %6 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %2, i32 0, i32 3, !dbg !3861
  %7 = load i8, i8* %6, align 2, !dbg !3861
  call void @llvm.dbg.value(metadata i8 %7, metadata !3856, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !3857
  call void @llvm.dbg.value(metadata i8 undef, metadata !3856, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !3857
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #15, !dbg !3861
  %8 = xor i8 %7, 1, !dbg !3862
  %9 = zext i8 %8 to i32, !dbg !3862
  %10 = call i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %9) #14, !dbg !3863
  br label %11, !dbg !3864

11:                                               ; preds = %1, %4
  %12 = phi i32 [ %10, %4 ], [ -2, %1 ], !dbg !3857
  ret i32 %12, !dbg !3865
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_up(i32 noundef %0) local_unnamed_addr #0 !dbg !3866 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3868, metadata !DIExpression()), !dbg !3870
  %2 = icmp ugt i32 %0, 60, !dbg !3871
  br i1 %2, label %10, label %3, !dbg !3873

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #13, !dbg !3874
  call void @llvm.dbg.value(metadata i32 %4, metadata !3869, metadata !DIExpression()), !dbg !3870
  %5 = icmp slt i32 %4, 0, !dbg !3875
  br i1 %5, label %10, label %6, !dbg !3877

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullUp(i32 noundef %0) #13, !dbg !3878
  call void @llvm.dbg.value(metadata i32 %7, metadata !3869, metadata !DIExpression()), !dbg !3870
  %8 = icmp slt i32 %7, 0, !dbg !3879
  %9 = select i1 %8, i32 -3, i32 0, !dbg !3879
  br label %10, !dbg !3880

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !3870
  ret i32 %11, !dbg !3881
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_down(i32 noundef %0) local_unnamed_addr #0 !dbg !3882 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3884, metadata !DIExpression()), !dbg !3886
  %2 = icmp ugt i32 %0, 60, !dbg !3887
  br i1 %2, label %10, label %3, !dbg !3889

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #13, !dbg !3890
  call void @llvm.dbg.value(metadata i32 %4, metadata !3885, metadata !DIExpression()), !dbg !3886
  %5 = icmp slt i32 %4, 0, !dbg !3891
  br i1 %5, label %10, label %6, !dbg !3893

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullDown(i32 noundef %0) #13, !dbg !3894
  call void @llvm.dbg.value(metadata i32 %7, metadata !3885, metadata !DIExpression()), !dbg !3886
  %8 = icmp slt i32 %7, 0, !dbg !3895
  %9 = select i1 %8, i32 -3, i32 0, !dbg !3895
  br label %10, !dbg !3896

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !3886
  ret i32 %11, !dbg !3897
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_disable_pull(i32 noundef %0) local_unnamed_addr #0 !dbg !3898 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3900, metadata !DIExpression()), !dbg !3902
  %2 = icmp ugt i32 %0, 60, !dbg !3903
  br i1 %2, label %7, label %3, !dbg !3905

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #13, !dbg !3906
  call void @llvm.dbg.value(metadata i32 %4, metadata !3901, metadata !DIExpression()), !dbg !3902
  %5 = icmp slt i32 %4, 0, !dbg !3907
  %6 = select i1 %5, i32 -3, i32 0, !dbg !3907
  br label %7, !dbg !3908

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ -2, %1 ], !dbg !3902
  ret i32 %8, !dbg !3909
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_driving_current(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !3910 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3914, metadata !DIExpression()), !dbg !3917
  call void @llvm.dbg.value(metadata i32 %1, metadata !3915, metadata !DIExpression()), !dbg !3917
  %3 = icmp ugt i32 %0, 60, !dbg !3918
  br i1 %3, label %9, label %4, !dbg !3920

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !3921
  %6 = tail call i32 @gpio_SetDriving(i32 noundef %0, i8 noundef zeroext %5) #13, !dbg !3922
  call void @llvm.dbg.value(metadata i32 %6, metadata !3916, metadata !DIExpression()), !dbg !3917
  %7 = icmp slt i32 %6, 0, !dbg !3923
  %8 = select i1 %7, i32 -3, i32 0, !dbg !3923
  br label %9, !dbg !3924

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !3917
  ret i32 %10, !dbg !3925
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_driving_current(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !3926 {
  %3 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3931, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i32* %1, metadata !3932, metadata !DIExpression()), !dbg !3935
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #15, !dbg !3936
  %4 = icmp ugt i32 %0, 60, !dbg !3937
  br i1 %4, label %11, label %5, !dbg !3939

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3934, metadata !DIExpression(DW_OP_deref)), !dbg !3935
  %6 = call i32 @gpio_GetDriving(i32 noundef %0, i8* noundef nonnull %3) #13, !dbg !3940
  call void @llvm.dbg.value(metadata i32 %6, metadata !3933, metadata !DIExpression()), !dbg !3935
  %7 = load i8, i8* %3, align 1, !dbg !3941
  call void @llvm.dbg.value(metadata i8 %7, metadata !3934, metadata !DIExpression()), !dbg !3935
  %8 = zext i8 %7 to i32, !dbg !3942
  store i32 %8, i32* %1, align 4, !dbg !3943
  %9 = icmp slt i32 %6, 0, !dbg !3944
  %10 = select i1 %9, i32 -3, i32 0, !dbg !3944
  br label %11, !dbg !3945

11:                                               ; preds = %2, %5
  %12 = phi i32 [ %10, %5 ], [ -2, %2 ], !dbg !3935
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #15, !dbg !3946
  ret i32 %12, !dbg !3946
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_init(i32 noundef %0) local_unnamed_addr #0 !dbg !3947 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3953, metadata !DIExpression()), !dbg !3954
  %2 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, !dbg !3955
  %3 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !3957
  %4 = load i8, i8* %3, align 4, !dbg !3957, !range !3958
  %5 = icmp eq i8 %4, 0, !dbg !3957
  br i1 %5, label %6, label %12, !dbg !3959

6:                                                ; preds = %1
  %7 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #14, !dbg !3960
  br i1 %7, label %9, label %8, !dbg !3962

8:                                                ; preds = %6
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.hal_gpt_init, i32 0, i32 0), i32 noundef 89, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0), i32 noundef %0) #13, !dbg !3963
  br label %12, !dbg !3965

9:                                                ; preds = %6
  %10 = bitcast %struct.hal_gpt_context_t* %2 to i8*, !dbg !3966
  %11 = tail call i8* @memset(i8* noundef nonnull %10, i32 noundef 0, i32 noundef 16) #13, !dbg !3967
  store i8 1, i8* %3, align 4, !dbg !3968
  br label %12, !dbg !3969

12:                                               ; preds = %1, %9, %8
  %13 = phi i32 [ -2, %8 ], [ 0, %9 ], [ -3, %1 ], !dbg !3954
  ret i32 %13, !dbg !3970
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) unnamed_addr #10 !dbg !3971 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3975, metadata !DIExpression()), !dbg !3976
  %2 = icmp ult i32 %0, 5, !dbg !3977
  %3 = icmp ne i32 %0, 2
  %4 = and i1 %2, %3, !dbg !3979
  ret i1 %4, !dbg !3980
}

; Function Attrs: optsize
declare dso_local i8* @memset(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_deinit(i32 noundef %0) local_unnamed_addr #0 !dbg !3981 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3983, metadata !DIExpression()), !dbg !3984
  %2 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #14, !dbg !3985
  br i1 %2, label %4, label %3, !dbg !3987

3:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.hal_gpt_deinit, i32 0, i32 0), i32 noundef 104, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0), i32 noundef %0) #13, !dbg !3988
  br label %14, !dbg !3990

4:                                                ; preds = %1
  %5 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, !dbg !3991
  %6 = getelementptr inbounds %struct.hal_gpt_context_t, %struct.hal_gpt_context_t* %5, i32 0, i32 0, !dbg !3993
  %7 = load i32, i32* %6, align 4, !dbg !3993
  %8 = icmp eq i32 %7, 0, !dbg !3994
  br i1 %8, label %10, label %9, !dbg !3995

9:                                                ; preds = %4
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.hal_gpt_deinit, i32 0, i32 0), i32 noundef 109, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1.25, i32 0, i32 0), i32 noundef %0) #13, !dbg !3996
  br label %14, !dbg !3998

10:                                               ; preds = %4
  %11 = bitcast %struct.hal_gpt_context_t* %5 to i8*, !dbg !3999
  %12 = tail call i8* @memset(i8* noundef nonnull %11, i32 noundef 0, i32 noundef 16) #13, !dbg !4000
  %13 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !4001
  store i8 0, i8* %13, align 4, !dbg !4002
  br label %14, !dbg !4003

14:                                               ; preds = %10, %9, %3
  %15 = phi i32 [ -2, %3 ], [ -3, %9 ], [ 0, %10 ], !dbg !3984
  ret i32 %15, !dbg !4004
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_get_free_run_count(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !4005 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4010, metadata !DIExpression()), !dbg !4012
  call void @llvm.dbg.value(metadata i32* %1, metadata !4011, metadata !DIExpression()), !dbg !4012
  switch i32 %0, label %24 [
    i32 0, label %3
    i32 1, label %9
    i32 2, label %18
  ], !dbg !4013

3:                                                ; preds = %2
  %4 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !4014
  %5 = icmp eq i32 %4, 1, !dbg !4018
  br i1 %5, label %7, label %6, !dbg !4019

6:                                                ; preds = %3
  tail call void @CM4_GPT2Init() #13, !dbg !4020
  br label %7, !dbg !4022

7:                                                ; preds = %6, %3
  %8 = tail call i32 @get_current_count() #13, !dbg !4023
  store i32 %8, i32* %1, align 4, !dbg !4024
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !4025
  br label %25, !dbg !4026

9:                                                ; preds = %2
  %10 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !4027
  %11 = icmp eq i32 %10, 1, !dbg !4031
  br i1 %11, label %13, label %12, !dbg !4032

12:                                               ; preds = %9
  tail call void @CM4_GPT4Init() #13, !dbg !4033
  br label %13, !dbg !4035

13:                                               ; preds = %12, %9
  %14 = tail call i32 @get_current_gpt4_count() #13, !dbg !4036
  %15 = tail call i32 @top_mcu_freq_get() #13, !dbg !4037
  %16 = udiv i32 %15, 1000000, !dbg !4038
  %17 = udiv i32 %14, %16, !dbg !4039
  store i32 %17, i32* %1, align 4, !dbg !4040
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !4041
  br label %25, !dbg !4042

18:                                               ; preds = %2
  %19 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !4043
  %20 = icmp eq i32 %19, 1, !dbg !4047
  br i1 %20, label %22, label %21, !dbg !4048

21:                                               ; preds = %18
  tail call void @CM4_GPT4Init() #13, !dbg !4049
  br label %22, !dbg !4051

22:                                               ; preds = %21, %18
  %23 = tail call i32 @get_current_gpt4_count() #13, !dbg !4052
  store i32 %23, i32* %1, align 4, !dbg !4053
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !4054
  br label %25

24:                                               ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.hal_gpt_get_free_run_count, i32 0, i32 0), i32 noundef 141, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2.26, i32 0, i32 0), i32 noundef %0) #13, !dbg !4055
  br label %25, !dbg !4057

25:                                               ; preds = %7, %22, %13, %24
  %26 = phi i32 [ -1, %24 ], [ 0, %13 ], [ 0, %22 ], [ 0, %7 ], !dbg !4012
  ret i32 %26, !dbg !4058
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local i32 @hal_gpt_get_duration_count(i32 noundef %0, i32 noundef %1, i32* noundef writeonly %2) local_unnamed_addr #11 !dbg !4059 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4063, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i32 %1, metadata !4064, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i32* %2, metadata !4065, metadata !DIExpression()), !dbg !4066
  %4 = icmp eq i32* %2, null, !dbg !4067
  br i1 %4, label %7, label %5, !dbg !4069

5:                                                ; preds = %3
  %6 = sub i32 %1, %0, !dbg !4070
  store i32 %6, i32* %2, align 4, !dbg !4070
  br label %7, !dbg !4072

7:                                                ; preds = %3, %5
  %8 = phi i32 [ 0, %5 ], [ -1, %3 ], !dbg !4066
  ret i32 %8, !dbg !4073
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_get_running_status(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !4074 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4079, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.value(metadata i32* %1, metadata !4080, metadata !DIExpression()), !dbg !4081
  %3 = icmp ugt i32 %0, 4, !dbg !4082
  br i1 %3, label %4, label %5, !dbg !4084

4:                                                ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.hal_gpt_get_running_status, i32 0, i32 0), i32 noundef 167, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0), i32 noundef %0) #13, !dbg !4085
  br label %8, !dbg !4087

5:                                                ; preds = %2
  %6 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 0, !dbg !4088
  %7 = load i32, i32* %6, align 4, !dbg !4088
  store i32 %7, i32* %1, align 4, !dbg !4089
  br label %8, !dbg !4090

8:                                                ; preds = %5, %4
  %9 = phi i32 [ -2, %4 ], [ 0, %5 ], !dbg !4081
  ret i32 %9, !dbg !4091
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_register_callback(i32 noundef %0, void (i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #0 !dbg !4092 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4096, metadata !DIExpression()), !dbg !4099
  call void @llvm.dbg.value(metadata void (i8*)* %1, metadata !4097, metadata !DIExpression()), !dbg !4099
  call void @llvm.dbg.value(metadata i8* %2, metadata !4098, metadata !DIExpression()), !dbg !4099
  %4 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #14, !dbg !4100
  br i1 %4, label %6, label %5, !dbg !4102

5:                                                ; preds = %3
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.hal_gpt_register_callback, i32 0, i32 0), i32 noundef 179, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i32 0, i32 0), i32 noundef %0) #13, !dbg !4103
  br label %15, !dbg !4105

6:                                                ; preds = %3
  %7 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !4106
  %8 = load i8, i8* %7, align 4, !dbg !4106, !range !3958
  %9 = icmp eq i8 %8, 1, !dbg !4108
  br i1 %9, label %10, label %15, !dbg !4109

10:                                               ; preds = %6
  %11 = icmp eq void (i8*)* %1, null, !dbg !4110
  br i1 %11, label %15, label %12, !dbg !4112

12:                                               ; preds = %10
  %13 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 1, i32 0, !dbg !4113
  store void (i8*)* %1, void (i8*)** %13, align 4, !dbg !4114
  %14 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 1, i32 1, !dbg !4115
  store i8* %2, i8** %14, align 4, !dbg !4116
  br label %15, !dbg !4117

15:                                               ; preds = %10, %6, %12, %5
  %16 = phi i32 [ -2, %5 ], [ 0, %12 ], [ -3, %6 ], [ -1, %10 ], !dbg !4099
  ret i32 %16, !dbg !4118
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_start_timer_ms(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !4119 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4124, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata i32 %1, metadata !4125, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata i32 %2, metadata !4126, metadata !DIExpression()), !dbg !4127
  %4 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #14, !dbg !4128
  br i1 %4, label %6, label %5, !dbg !4130

5:                                                ; preds = %3
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.hal_gpt_start_timer_ms, i32 0, i32 0), i32 noundef 221, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i32 0, i32 0), i32 noundef %0) #13, !dbg !4131
  br label %17, !dbg !4133

6:                                                ; preds = %3
  %7 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !4134
  %8 = load i8, i8* %7, align 4, !dbg !4134, !range !3958
  %9 = icmp eq i8 %8, 1, !dbg !4136
  br i1 %9, label %10, label %17, !dbg !4137

10:                                               ; preds = %6
  %11 = icmp ugt i32 %1, 130150523, !dbg !4138
  br i1 %11, label %17, label %12, !dbg !4140

12:                                               ; preds = %10
  %13 = tail call fastcc i32 @hal_gpt_translate_timeout_time(i32 noundef %1) #14, !dbg !4141
  %14 = tail call fastcc zeroext i1 @hal_gpt_translate_type(i32 noundef %2) #14, !dbg !4142
  %15 = tail call fastcc void ()* @hal_gpt_map_callback(i32 noundef %0) #14, !dbg !4143
  tail call void @drvTMR_init(i32 noundef %0, i32 noundef %13, i1 noundef zeroext %14, void ()* noundef nonnull %15) #13, !dbg !4144
  tail call void @TMR_Start(i32 noundef %0) #13, !dbg !4145
  %16 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 0, !dbg !4146
  store i32 1, i32* %16, align 4, !dbg !4147
  br label %17, !dbg !4148

17:                                               ; preds = %10, %6, %12, %5
  %18 = phi i32 [ -2, %5 ], [ 0, %12 ], [ -3, %6 ], [ -1, %10 ], !dbg !4127
  ret i32 %18, !dbg !4149
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_gpt_translate_timeout_time(i32 noundef %0) unnamed_addr #10 !dbg !4150 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4154, metadata !DIExpression()), !dbg !4155
  %2 = shl i32 %0, 5, !dbg !4156
  %3 = mul i32 %0, 7, !dbg !4157
  %4 = udiv i32 %3, 10, !dbg !4158
  %5 = add i32 %4, %2, !dbg !4159
  %6 = mul i32 %0, 6, !dbg !4160
  %7 = udiv i32 %6, 100, !dbg !4161
  %8 = add i32 %5, %7, !dbg !4162
  %9 = shl i32 %0, 3, !dbg !4163
  %10 = udiv i32 %9, 1000, !dbg !4164
  %11 = add i32 %8, %10, !dbg !4165
  ret i32 %11, !dbg !4166
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_gpt_translate_type(i32 noundef %0) unnamed_addr #10 !dbg !4167 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4171, metadata !DIExpression()), !dbg !4172
  %2 = icmp eq i32 %0, 1, !dbg !4173
  ret i1 %2, !dbg !4174
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc nonnull void ()* @hal_gpt_map_callback(i32 noundef %0) unnamed_addr #10 !dbg !4175 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4180, metadata !DIExpression()), !dbg !4181
  %2 = icmp eq i32 %0, 0, !dbg !4182
  %3 = select i1 %2, void ()* @hal_gpt_callback0, void ()* @hal_gpt_callback1, !dbg !4183
  ret void ()* %3, !dbg !4184
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_gpt_callback0() #0 !dbg !4185 {
  %1 = load void (i8*)*, void (i8*)** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 0, i32 1, i32 0), align 4, !dbg !4189
  %2 = icmp eq void (i8*)* %1, null, !dbg !4191
  br i1 %2, label %5, label %3, !dbg !4192

3:                                                ; preds = %0
  %4 = load i8*, i8** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 0, i32 1, i32 1), align 4, !dbg !4193
  tail call void %1(i8* noundef %4) #13, !dbg !4195
  br label %5, !dbg !4196

5:                                                ; preds = %3, %0
  store i32 0, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 0, i32 0), align 4, !dbg !4197
  ret void, !dbg !4198
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_gpt_callback1() #0 !dbg !4199 {
  %1 = load void (i8*)*, void (i8*)** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 1, i32 1, i32 0), align 4, !dbg !4202
  %2 = icmp eq void (i8*)* %1, null, !dbg !4204
  br i1 %2, label %5, label %3, !dbg !4205

3:                                                ; preds = %0
  %4 = load i8*, i8** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 1, i32 1, i32 1), align 4, !dbg !4206
  tail call void %1(i8* noundef %4) #13, !dbg !4208
  br label %5, !dbg !4209

5:                                                ; preds = %3, %0
  store i32 0, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 1, i32 0), align 4, !dbg !4210
  ret void, !dbg !4211
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_stop_timer(i32 noundef %0) local_unnamed_addr #0 !dbg !4212 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4214, metadata !DIExpression()), !dbg !4215
  %2 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #14, !dbg !4216
  br i1 %2, label %4, label %3, !dbg !4218

3:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.hal_gpt_stop_timer, i32 0, i32 0), i32 noundef 245, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i32 0, i32 0), i32 noundef %0) #13, !dbg !4219
  br label %6, !dbg !4221

4:                                                ; preds = %1
  tail call void @TMR_Stop(i32 noundef %0) #13, !dbg !4222
  %5 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 0, !dbg !4223
  store i32 0, i32* %5, align 4, !dbg !4224
  br label %6, !dbg !4225

6:                                                ; preds = %4, %3
  %7 = phi i32 [ -2, %3 ], [ 0, %4 ], !dbg !4215
  ret i32 %7, !dbg !4226
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_delay_ms(i32 noundef %0) local_unnamed_addr #0 !dbg !4227 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4231, metadata !DIExpression()), !dbg !4232
  %2 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !4233
  %3 = icmp eq i32 %2, 1, !dbg !4235
  br i1 %3, label %5, label %4, !dbg !4236

4:                                                ; preds = %1
  tail call void @CM4_GPT2Init() #13, !dbg !4237
  br label %5, !dbg !4239

5:                                                ; preds = %4, %1
  tail call void @delay_ms(i32 noundef %0) #13, !dbg !4240
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !4241
  ret i32 0, !dbg !4242
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_delay_us(i32 noundef %0) local_unnamed_addr #0 !dbg !4243 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4245, metadata !DIExpression()), !dbg !4246
  %2 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !4247
  %3 = icmp eq i32 %2, 1, !dbg !4249
  br i1 %3, label %5, label %4, !dbg !4250

4:                                                ; preds = %1
  tail call void @CM4_GPT4Init() #13, !dbg !4251
  br label %5, !dbg !4253

5:                                                ; preds = %4, %1
  tail call void @delay_us(i32 noundef %0) #13, !dbg !4254
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !4255
  ret i32 0, !dbg !4256
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_init(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #0 !dbg !4257 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4263, metadata !DIExpression()), !dbg !4265
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4264, metadata !DIExpression()), !dbg !4265
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !4266
  br i1 %3, label %4, label %18, !dbg !4268

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !4269
  %6 = load i8, i8* %5, align 4, !dbg !4269, !range !3958
  %7 = icmp eq i8 %6, 0, !dbg !4269
  br i1 %7, label %8, label %18, !dbg !4271

8:                                                ; preds = %4
  %9 = tail call i8* @memset(i8* noundef nonnull %5, i32 noundef 0, i32 noundef 64) #13, !dbg !4272
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4273
  %11 = bitcast %struct.hal_uart_config_t* %10 to i8*, !dbg !4274
  %12 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4275
  %13 = tail call i8* @memcpy(i8* noundef nonnull %11, i8* noundef %12, i32 noundef 16) #13, !dbg !4276
  store i8 1, i8* %5, align 4, !dbg !4277
  %14 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4278, !range !4279
  tail call void @uart_reset_default_value(i32 noundef %14) #13, !dbg !4280
  tail call void @halUART_HWInit(i32 noundef %14) #13, !dbg !4281
  %15 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !4282
  %16 = icmp eq i32 %15, 0, !dbg !4284
  %17 = select i1 %16, i32 0, i32 -4, !dbg !4265
  br label %18, !dbg !4265

18:                                               ; preds = %8, %4, %2
  %19 = phi i32 [ -4, %2 ], [ -3, %4 ], [ %17, %8 ], !dbg !4265
  ret i32 %19, !dbg !4285
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef readonly %1) unnamed_addr #6 !dbg !4286 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4292, metadata !DIExpression()), !dbg !4294
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4293, metadata !DIExpression()), !dbg !4294
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4295
  %4 = icmp ne %struct.hal_uart_config_t* %1, null
  %5 = and i1 %4, %3, !dbg !4297
  br i1 %5, label %6, label %22, !dbg !4297

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4298
  %8 = load i32, i32* %7, align 4, !dbg !4298
  %9 = icmp ugt i32 %8, 12, !dbg !4300
  br i1 %9, label %22, label %10, !dbg !4301

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4302
  %12 = load i32, i32* %11, align 4, !dbg !4302
  %13 = icmp ugt i32 %12, 2, !dbg !4303
  br i1 %13, label %22, label %14, !dbg !4304

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4305
  %16 = load i32, i32* %15, align 4, !dbg !4305
  %17 = icmp ugt i32 %16, 1, !dbg !4306
  br i1 %17, label %22, label %18, !dbg !4307

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4308
  %20 = load i32, i32* %19, align 4, !dbg !4308
  %21 = icmp ult i32 %20, 4, !dbg !4309
  br label %22, !dbg !4310

22:                                               ; preds = %18, %6, %10, %14, %2
  %23 = phi i1 [ false, %2 ], [ false, %14 ], [ false, %10 ], [ false, %6 ], [ %21, %18 ], !dbg !4294
  ret i1 %23, !dbg !4311
}

; Function Attrs: optsize
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_port(i32 noundef %0) unnamed_addr #10 !dbg !4312 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4316, metadata !DIExpression()), !dbg !4317
  %2 = icmp ne i32 %0, 0, !dbg !4318
  %3 = zext i1 %2 to i32, !dbg !4319
  ret i32 %3, !dbg !4320
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #0 !dbg !4321 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4325, metadata !DIExpression()), !dbg !4327
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4326, metadata !DIExpression()), !dbg !4327
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !4328
  br i1 %3, label %4, label %22, !dbg !4330

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4331
  %6 = bitcast %struct.hal_uart_config_t* %5 to i8*, !dbg !4332
  %7 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4333
  %8 = tail call i8* @memcpy(i8* noundef nonnull %6, i8* noundef %7, i32 noundef 16) #13, !dbg !4334
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4335
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4336
  %11 = load i32, i32* %10, align 4, !dbg !4336
  %12 = tail call fastcc i32 @hal_uart_translate_baudrate(i32 noundef %11) #14, !dbg !4337
  %13 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4338
  %14 = load i32, i32* %13, align 4, !dbg !4338
  %15 = tail call fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %14) #14, !dbg !4339
  %16 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4340
  %17 = load i32, i32* %16, align 4, !dbg !4340
  %18 = tail call fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %17) #14, !dbg !4341
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4342
  %20 = load i32, i32* %19, align 4, !dbg !4342
  %21 = tail call fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %20) #14, !dbg !4343
  tail call void @halUART_SetFormat(i32 noundef %9, i32 noundef %12, i16 noundef zeroext %15, i16 noundef zeroext %18, i16 noundef zeroext %21) #13, !dbg !4344
  br label %22, !dbg !4345

22:                                               ; preds = %2, %4
  %23 = phi i32 [ 0, %4 ], [ -4, %2 ], !dbg !4327
  ret i32 %23, !dbg !4346
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_baudrate(i32 noundef %0) unnamed_addr #10 !dbg !4347 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4351, metadata !DIExpression()), !dbg !4356
  call void @llvm.dbg.declare(metadata [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, metadata !4352, metadata !DIExpression()), !dbg !4357
  %2 = getelementptr inbounds [13 x i32], [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, i32 0, i32 %0, !dbg !4358
  %3 = load i32, i32* %2, align 4, !dbg !4358
  ret i32 %3, !dbg !4359
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %0) unnamed_addr #10 !dbg !4360 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4364, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.declare(metadata [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, metadata !4365, metadata !DIExpression()), !dbg !4368
  %2 = getelementptr inbounds [4 x i16], [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, i32 0, i32 %0, !dbg !4369
  %3 = load i16, i16* %2, align 2, !dbg !4369
  ret i16 %3, !dbg !4370
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %0) unnamed_addr #10 !dbg !4371 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4375, metadata !DIExpression()), !dbg !4378
  call void @llvm.dbg.declare(metadata [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, metadata !4376, metadata !DIExpression()), !dbg !4379
  %2 = getelementptr inbounds [5 x i16], [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, i32 0, i32 %0, !dbg !4380
  %3 = load i16, i16* %2, align 2, !dbg !4380
  ret i16 %3, !dbg !4381
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %0) unnamed_addr #10 !dbg !4382 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4386, metadata !DIExpression()), !dbg !4389
  call void @llvm.dbg.declare(metadata [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, metadata !4387, metadata !DIExpression()), !dbg !4390
  %2 = getelementptr inbounds [3 x i16], [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, i32 0, i32 %0, !dbg !4391
  %3 = load i16, i16* %2, align 2, !dbg !4391
  ret i16 %3, !dbg !4392
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) unnamed_addr #10 !dbg !4393 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4397, metadata !DIExpression()), !dbg !4398
  %2 = icmp ult i32 %0, 2, !dbg !4399
  ret i1 %2, !dbg !4400
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_deinit(i32 noundef %0) local_unnamed_addr #0 !dbg !4401 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4405, metadata !DIExpression()), !dbg !4406
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4407
  br i1 %2, label %3, label %10, !dbg !4409

3:                                                ; preds = %1
  %4 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !4410
  %5 = load i8, i8* %4, align 4, !dbg !4410, !range !3958
  %6 = icmp eq i8 %5, 0, !dbg !4412
  br i1 %6, label %10, label %7, !dbg !4413

7:                                                ; preds = %3
  %8 = tail call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i32 noundef 64) #13, !dbg !4414
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4415, !range !4279
  tail call void @uart_query_empty(i32 noundef %9) #13, !dbg !4416
  tail call void @uart_reset_default_value(i32 noundef %9) #13, !dbg !4417
  br label %10, !dbg !4418

10:                                               ; preds = %3, %1, %7
  %11 = phi i32 [ 0, %7 ], [ -4, %1 ], [ -2, %3 ], !dbg !4406
  ret i32 %11, !dbg !4419
}

; Function Attrs: noinline nounwind optsize
define dso_local void @hal_uart_put_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !4420 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4424, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i8 %1, metadata !4425, metadata !DIExpression()), !dbg !4427
  %3 = icmp eq i32 %0, 0, !dbg !4428
  %4 = icmp eq i32 %0, 1, !dbg !4428
  %5 = select i1 %4, i32 1, i32 2, !dbg !4428
  %6 = select i1 %3, i32 0, i32 %5, !dbg !4428
  call void @llvm.dbg.value(metadata i32 %6, metadata !4426, metadata !DIExpression()), !dbg !4427
  %7 = icmp eq i32 %6, 2, !dbg !4429
  br i1 %7, label %9, label %8, !dbg !4431

8:                                                ; preds = %2
  tail call void @uart_output_char(i32 noundef %6, i8 noundef zeroext %1) #13, !dbg !4432
  br label %9, !dbg !4434

9:                                                ; preds = %2, %8
  ret void, !dbg !4435
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_polling(i32 noundef %0, i8* noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !4436 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4440, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata i8* %1, metadata !4441, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata i32 %2, metadata !4442, metadata !DIExpression()), !dbg !4445
  %4 = icmp eq i32 %0, 0, !dbg !4446
  %5 = icmp eq i32 %0, 1, !dbg !4446
  %6 = select i1 %5, i32 1, i32 2, !dbg !4446
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4446
  call void @llvm.dbg.value(metadata i32 %7, metadata !4443, metadata !DIExpression()), !dbg !4445
  %8 = icmp eq i8* %1, null, !dbg !4447
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !4449
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !4449
  call void @llvm.dbg.value(metadata i32 0, metadata !4444, metadata !DIExpression()), !dbg !4445
  br i1 %12, label %19, label %13, !dbg !4449

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !4444, metadata !DIExpression()), !dbg !4445
  %15 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !4450
  %16 = load i8, i8* %15, align 1, !dbg !4450
  tail call void @uart_output_char(i32 noundef %7, i8 noundef zeroext %16) #13, !dbg !4456
  %17 = add nuw i32 %14, 1, !dbg !4457
  call void @llvm.dbg.value(metadata i32 %17, metadata !4444, metadata !DIExpression()), !dbg !4445
  %18 = icmp eq i32 %17, %2, !dbg !4458
  br i1 %18, label %19, label %13, !dbg !4459, !llvm.loop !4460

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !4445
  ret i32 %20, !dbg !4462
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !4463 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4465, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i8* %1, metadata !4466, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i32 %2, metadata !4467, metadata !DIExpression()), !dbg !4472
  %5 = bitcast i32* %4 to i8*, !dbg !4473
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #15, !dbg !4473
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4474
  br i1 %6, label %7, label %24, !dbg !4476

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !4477
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !4479
  br i1 %10, label %24, label %11, !dbg !4479

11:                                               ; preds = %7
  %12 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !4480
  %13 = load i8, i8* %12, align 4, !dbg !4480, !range !3958
  %14 = icmp eq i8 %13, 0, !dbg !4480
  br i1 %14, label %24, label %15, !dbg !4482

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4483, !range !4279
  call void @llvm.dbg.value(metadata i32* %4, metadata !4468, metadata !DIExpression(DW_OP_deref)), !dbg !4472
  call void @halUART_Get_VFIFO_Length(i32 noundef %16, i32 noundef 0, i32* noundef nonnull %4) #13, !dbg !4484
  %17 = load i32, i32* %4, align 4, !dbg !4485
  call void @llvm.dbg.value(metadata i32 %17, metadata !4468, metadata !DIExpression()), !dbg !4472
  %18 = icmp ult i32 %17, %2, !dbg !4487
  %19 = select i1 %18, i32 %17, i32 %2
  call void @llvm.dbg.value(metadata i32 %19, metadata !4469, metadata !DIExpression()), !dbg !4472
  call void @halUART_Write_VFIFO_Data(i32 noundef %16, i8* noundef nonnull %1, i32 noundef %19) #13, !dbg !4488
  %20 = load i32, i32* %4, align 4, !dbg !4489
  call void @llvm.dbg.value(metadata i32 %20, metadata !4468, metadata !DIExpression()), !dbg !4472
  %21 = icmp eq i32 %19, %20, !dbg !4491
  br i1 %21, label %22, label %24, !dbg !4492

22:                                               ; preds = %15
  %23 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %16, i1 noundef zeroext false) #14, !dbg !4493, !range !4495
  call void @llvm.dbg.value(metadata i32 %23, metadata !4470, metadata !DIExpression()), !dbg !4472
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %23) #13, !dbg !4496
  br label %24, !dbg !4497

24:                                               ; preds = %15, %22, %11, %7, %3
  %25 = phi i32 [ 0, %3 ], [ 0, %7 ], [ 0, %11 ], [ %19, %22 ], [ %19, %15 ], !dbg !4472
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #15, !dbg !4498
  ret i32 %25, !dbg !4498
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #10 !dbg !4499 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4503, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.value(metadata i1 %1, metadata !4504, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4506
  %3 = icmp eq i32 %0, 0, !dbg !4507
  %4 = select i1 %1, i32 15, i32 14, !dbg !4509
  %5 = select i1 %1, i32 17, i32 16, !dbg !4509
  %6 = select i1 %3, i32 %4, i32 %5, !dbg !4509
  call void @llvm.dbg.value(metadata i32 %6, metadata !4505, metadata !DIExpression()), !dbg !4506
  ret i32 %6, !dbg !4510
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_enable_interrupt(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @hal_uart_get_char(i32 noundef %0) local_unnamed_addr #0 !dbg !4511 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4515, metadata !DIExpression()), !dbg !4517
  %2 = icmp eq i32 %0, 0, !dbg !4518
  %3 = icmp eq i32 %0, 1, !dbg !4518
  %4 = select i1 %3, i32 1, i32 2, !dbg !4518
  %5 = select i1 %2, i32 0, i32 %4, !dbg !4518
  call void @llvm.dbg.value(metadata i32 %5, metadata !4516, metadata !DIExpression()), !dbg !4517
  %6 = icmp ult i32 %5, 2, !dbg !4519
  br i1 %6, label %7, label %9, !dbg !4521

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @uart_input_char(i32 noundef %5) #13, !dbg !4522
  br label %9, !dbg !4524

9:                                                ; preds = %1, %7
  %10 = phi i8 [ %8, %7 ], [ 0, %1 ], !dbg !4525
  ret i8 %10, !dbg !4526
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_char_unblocking(i32 noundef %0) local_unnamed_addr #0 !dbg !4527 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4531, metadata !DIExpression()), !dbg !4533
  %2 = icmp eq i32 %0, 0, !dbg !4534
  %3 = icmp eq i32 %0, 1, !dbg !4534
  %4 = select i1 %3, i32 1, i32 2, !dbg !4534
  %5 = select i1 %2, i32 0, i32 %4, !dbg !4534
  call void @llvm.dbg.value(metadata i32 %5, metadata !4532, metadata !DIExpression()), !dbg !4533
  %6 = icmp ult i32 %5, 2, !dbg !4535
  br i1 %6, label %7, label %9, !dbg !4537

7:                                                ; preds = %1
  %8 = tail call i32 @uart_input_char_unblocking(i32 noundef %5) #13, !dbg !4538
  br label %9, !dbg !4540

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ], !dbg !4541
  ret i32 %10, !dbg !4542
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_polling(i32 noundef %0, i8* noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !4543 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4547, metadata !DIExpression()), !dbg !4552
  call void @llvm.dbg.value(metadata i8* %1, metadata !4548, metadata !DIExpression()), !dbg !4552
  call void @llvm.dbg.value(metadata i32 %2, metadata !4549, metadata !DIExpression()), !dbg !4552
  %4 = icmp eq i32 %0, 0, !dbg !4553
  %5 = icmp eq i32 %0, 1, !dbg !4553
  %6 = select i1 %5, i32 1, i32 2, !dbg !4553
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4553
  call void @llvm.dbg.value(metadata i32 %7, metadata !4550, metadata !DIExpression()), !dbg !4552
  %8 = icmp eq i8* %1, null, !dbg !4554
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !4556
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !4556
  call void @llvm.dbg.value(metadata i32 0, metadata !4551, metadata !DIExpression()), !dbg !4552
  br i1 %12, label %19, label %13, !dbg !4556

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !4551, metadata !DIExpression()), !dbg !4552
  %15 = tail call zeroext i8 @uart_input_char(i32 noundef %7) #13, !dbg !4557
  %16 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !4563
  store i8 %15, i8* %16, align 1, !dbg !4564
  %17 = add nuw i32 %14, 1, !dbg !4565
  call void @llvm.dbg.value(metadata i32 %17, metadata !4551, metadata !DIExpression()), !dbg !4552
  %18 = icmp eq i32 %17, %2, !dbg !4566
  br i1 %18, label %19, label %13, !dbg !4567, !llvm.loop !4568

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !4552
  ret i32 %20, !dbg !4570
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !4571 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4573, metadata !DIExpression()), !dbg !4579
  call void @llvm.dbg.value(metadata i8* %1, metadata !4574, metadata !DIExpression()), !dbg !4579
  call void @llvm.dbg.value(metadata i32 %2, metadata !4575, metadata !DIExpression()), !dbg !4579
  %5 = bitcast i32* %4 to i8*, !dbg !4580
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #15, !dbg !4580
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4581
  br i1 %6, label %7, label %20, !dbg !4583

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !4584
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !4586
  br i1 %10, label %20, label %11, !dbg !4586

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4587, !range !4279
  call void @llvm.dbg.value(metadata i32* %4, metadata !4576, metadata !DIExpression(DW_OP_deref)), !dbg !4579
  call void @halUART_Get_VFIFO_Length(i32 noundef %12, i32 noundef 1, i32* noundef nonnull %4) #13, !dbg !4588
  %13 = load i32, i32* %4, align 4, !dbg !4589
  call void @llvm.dbg.value(metadata i32 %13, metadata !4576, metadata !DIExpression()), !dbg !4579
  %14 = icmp ult i32 %13, %2, !dbg !4591
  %15 = select i1 %14, i32 %13, i32 %2
  call void @llvm.dbg.value(metadata i32 %15, metadata !4577, metadata !DIExpression()), !dbg !4579
  call void @halUART_Read_VFIFO_Data(i32 noundef %12, i8* noundef nonnull %1, i32 noundef %15) #13, !dbg !4592
  %16 = load i32, i32* %4, align 4, !dbg !4593
  call void @llvm.dbg.value(metadata i32 %16, metadata !4576, metadata !DIExpression()), !dbg !4579
  %17 = icmp eq i32 %15, %16, !dbg !4595
  br i1 %17, label %18, label %20, !dbg !4596

18:                                               ; preds = %11
  %19 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !4597, !range !4495
  call void @llvm.dbg.value(metadata i32 %19, metadata !4578, metadata !DIExpression()), !dbg !4579
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %19) #13, !dbg !4599
  br label %20, !dbg !4600

20:                                               ; preds = %11, %18, %7, %3
  %21 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %15, %18 ], [ %15, %11 ], !dbg !4579
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #15, !dbg !4601
  ret i32 %21, !dbg !4601
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_send_space(i32 noundef %0) local_unnamed_addr #0 !dbg !4602 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4604, metadata !DIExpression()), !dbg !4606
  %3 = bitcast i32* %2 to i8*, !dbg !4607
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #15, !dbg !4607
  call void @llvm.dbg.value(metadata i32 0, metadata !4605, metadata !DIExpression()), !dbg !4606
  store i32 0, i32* %2, align 4, !dbg !4608
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4609
  br i1 %4, label %5, label %8, !dbg !4611

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4612, !range !4279
  call void @llvm.dbg.value(metadata i32* %2, metadata !4605, metadata !DIExpression(DW_OP_deref)), !dbg !4606
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 0, i32* noundef nonnull %2) #13, !dbg !4613
  %7 = load i32, i32* %2, align 4, !dbg !4614
  call void @llvm.dbg.value(metadata i32 %7, metadata !4605, metadata !DIExpression()), !dbg !4606
  br label %8, !dbg !4615

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !4606
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #15, !dbg !4616
  ret i32 %9, !dbg !4616
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_receive_bytes(i32 noundef %0) local_unnamed_addr #0 !dbg !4617 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4619, metadata !DIExpression()), !dbg !4621
  %3 = bitcast i32* %2 to i8*, !dbg !4622
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #15, !dbg !4622
  call void @llvm.dbg.value(metadata i32 0, metadata !4620, metadata !DIExpression()), !dbg !4621
  store i32 0, i32* %2, align 4, !dbg !4623
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4624
  br i1 %4, label %5, label %8, !dbg !4626

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4627, !range !4279
  call void @llvm.dbg.value(metadata i32* %2, metadata !4620, metadata !DIExpression(DW_OP_deref)), !dbg !4621
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 1, i32* noundef nonnull %2) #13, !dbg !4628
  %7 = load i32, i32* %2, align 4, !dbg !4629
  call void @llvm.dbg.value(metadata i32 %7, metadata !4620, metadata !DIExpression()), !dbg !4621
  br label %8, !dbg !4630

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !4621
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #15, !dbg !4631
  ret i32 %9, !dbg !4631
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_register_callback(i32 noundef %0, void (i32, i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #0 !dbg !4632 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4636, metadata !DIExpression()), !dbg !4640
  call void @llvm.dbg.value(metadata void (i32, i8*)* %1, metadata !4637, metadata !DIExpression()), !dbg !4640
  call void @llvm.dbg.value(metadata i8* %2, metadata !4638, metadata !DIExpression()), !dbg !4640
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4641
  %5 = icmp ne void (i32, i8*)* %1, null
  %6 = and i1 %5, %4, !dbg !4643
  br i1 %6, label %7, label %18, !dbg !4643

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 0, !dbg !4644
  store void (i32, i8*)* %1, void (i32, i8*)** %8, align 4, !dbg !4645
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 1, !dbg !4646
  store i8* %2, i8** %9, align 4, !dbg !4647
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 2, !dbg !4648
  store i8 1, i8* %10, align 4, !dbg !4649
  %11 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4650
  %12 = tail call fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) #14, !dbg !4651
  tail call void @halUART_VDMA_Rx_Register_Callback(i32 noundef %11, void ()* noundef %12) #13, !dbg !4652
  tail call void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %11, void ()* noundef %12) #13, !dbg !4653
  %13 = icmp eq i32 %11, 0, !dbg !4654
  br i1 %13, label %14, label %15, !dbg !4656

14:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 14, void ()* noundef nonnull @hal_uart_send_callback0) #13, !dbg !4657
  br label %16, !dbg !4659

15:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 16, void ()* noundef nonnull @hal_uart_send_callback1) #13, !dbg !4660
  br label %16

16:                                               ; preds = %15, %14
  %17 = tail call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %11, i1 noundef zeroext false) #14, !dbg !4662, !range !4495
  call void @llvm.dbg.value(metadata i32 %17, metadata !4639, metadata !DIExpression()), !dbg !4640
  tail call void @DMA_Vfifo_enable_interrupt(i32 noundef %17) #13, !dbg !4663
  br label %18, !dbg !4664

18:                                               ; preds = %3, %16
  %19 = phi i32 [ 0, %16 ], [ -4, %3 ], !dbg !4640
  ret i32 %19, !dbg !4665
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) unnamed_addr #10 !dbg !450 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !456, metadata !DIExpression()), !dbg !4666
  %2 = getelementptr inbounds [2 x void ()*], [2 x void ()*]* @hal_uart_map_receive_callback.func_tbl, i32 0, i32 %0, !dbg !4667
  %3 = load void ()*, void ()** %2, align 4, !dbg !4667
  ret void ()* %3, !dbg !4668
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback0() #0 !dbg !4669 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !4675, !range !3958
  %2 = icmp eq i8 %1, 0, !dbg !4675
  br i1 %2, label %8, label %3, !dbg !4676

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !4677
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !4679
  br i1 %5, label %8, label %6, !dbg !4680

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !4681
  tail call void %4(i32 noundef 2, i8* noundef %7) #13, !dbg !4683
  br label %8, !dbg !4684

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #14, !dbg !4685, !range !4279
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #14, !dbg !4686
  ret void, !dbg !4687
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback1() #0 !dbg !4688 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !4693, !range !3958
  %2 = icmp eq i8 %1, 0, !dbg !4693
  br i1 %2, label %8, label %3, !dbg !4694

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !4695
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !4697
  br i1 %5, label %8, label %6, !dbg !4698

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !4699
  tail call void %4(i32 noundef 2, i8* noundef %7) #13, !dbg !4701
  br label %8, !dbg !4702

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #14, !dbg !4703, !range !4279
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #14, !dbg !4704
  ret void, !dbg !4705
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @hal_uart_check_irq_disable(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #0 !dbg !4706 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4710, metadata !DIExpression()), !dbg !4717
  call void @llvm.dbg.value(metadata i1 %1, metadata !4711, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4717
  %5 = bitcast i32* %3 to i8*, !dbg !4718
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #15, !dbg !4718
  %6 = bitcast i32* %4 to i8*, !dbg !4718
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #15, !dbg !4718
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !4714, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !4717
  br i1 %1, label %7, label %12, !dbg !4719

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !4714, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !4717
  call void @llvm.dbg.value(metadata i32* %3, metadata !4712, metadata !DIExpression(DW_OP_deref)), !dbg !4717
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 1, i32* noundef nonnull %3) #13, !dbg !4720
  %8 = load i32, i32* %3, align 4, !dbg !4723
  call void @llvm.dbg.value(metadata i32 %8, metadata !4712, metadata !DIExpression()), !dbg !4717
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 5, !dbg !4725
  %10 = load i32, i32* %9, align 4, !dbg !4725
  %11 = icmp ult i32 %8, %10, !dbg !4726
  br i1 %11, label %22, label %20, !dbg !4727

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32* %4, metadata !4713, metadata !DIExpression(DW_OP_deref)), !dbg !4717
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 0, i32* noundef nonnull %4) #13, !dbg !4728
  %13 = load i32, i32* %4, align 4, !dbg !4730
  call void @llvm.dbg.value(metadata i32 %13, metadata !4713, metadata !DIExpression()), !dbg !4717
  %14 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 1, !dbg !4732
  %15 = load i32, i32* %14, align 4, !dbg !4732
  %16 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 2, !dbg !4733
  %17 = load i32, i32* %16, align 4, !dbg !4733
  %18 = sub i32 %15, %17, !dbg !4734
  %19 = icmp ult i32 %13, %18, !dbg !4735
  br i1 %19, label %22, label %20, !dbg !4736

20:                                               ; preds = %12, %7
  %21 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) #14, !dbg !4737, !range !4495
  call void @DMA_Vfifo_disable_interrupt(i32 noundef %21) #13, !dbg !4737
  br label %22, !dbg !4738

22:                                               ; preds = %20, %12, %7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #15, !dbg !4738
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #15, !dbg !4738
  ret void, !dbg !4738
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_disable_interrupt(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback0() #0 !dbg !4739 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !4744, !range !3958
  %2 = icmp eq i8 %1, 0, !dbg !4744
  br i1 %2, label %11, label %3, !dbg !4745

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 0) #14, !dbg !4746
  %5 = icmp eq i32 %4, 0, !dbg !4747
  br i1 %5, label %11, label %6, !dbg !4748

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !4749
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !4751
  br i1 %8, label %11, label %9, !dbg !4752

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !4753
  tail call void %7(i32 noundef 1, i8* noundef %10) #13, !dbg !4755
  br label %11, !dbg !4756

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #14, !dbg !4757, !range !4279
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !4758
  ret void, !dbg !4759
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback1() #0 !dbg !4760 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !4765, !range !3958
  %2 = icmp eq i8 %1, 0, !dbg !4765
  br i1 %2, label %11, label %3, !dbg !4766

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 1) #14, !dbg !4767
  %5 = icmp eq i32 %4, 0, !dbg !4768
  br i1 %5, label %11, label %6, !dbg !4769

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !4770
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !4772
  br i1 %8, label %11, label %9, !dbg !4773

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !4774
  tail call void %7(i32 noundef 1, i8* noundef %10) #13, !dbg !4776
  br label %11, !dbg !4777

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #14, !dbg !4778, !range !4279
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !4779
  ret void, !dbg !4780
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_baudrate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4781 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4785, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.value(metadata i32 %1, metadata !4786, metadata !DIExpression()), !dbg !4787
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4788
  %4 = icmp ult i32 %1, 13
  %5 = and i1 %4, %3, !dbg !4790
  br i1 %5, label %6, label %10, !dbg !4790

6:                                                ; preds = %2
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4791
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %7, i32 0, i32 0, !dbg !4792
  store i32 %1, i32* %8, align 4, !dbg !4793
  %9 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef nonnull %7) #14, !dbg !4794
  br label %10, !dbg !4795

10:                                               ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ -4, %2 ], !dbg !4787
  ret i32 %11, !dbg !4796
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma(i32 noundef %0, %struct.hal_uart_dma_config_t* noundef %1) local_unnamed_addr #0 !dbg !4797 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4803, metadata !DIExpression()), !dbg !4805
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %1, metadata !4804, metadata !DIExpression()), !dbg !4805
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4806
  br i1 %3, label %4, label %28, !dbg !4808

4:                                                ; preds = %2
  %5 = tail call fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef %1) #14, !dbg !4809
  br i1 %5, label %6, label %28, !dbg !4811

6:                                                ; preds = %4
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !4812
  store i8 1, i8* %7, align 4, !dbg !4813
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, !dbg !4814
  %9 = bitcast %struct.hal_uart_dma_config_t* %8 to i8*, !dbg !4815
  %10 = bitcast %struct.hal_uart_dma_config_t* %1 to i8*, !dbg !4816
  %11 = tail call i8* @memcpy(i8* noundef nonnull %9, i8* noundef %10, i32 noundef 28) #13, !dbg !4817
  tail call void @DMA_Init() #13, !dbg !4818
  tail call void @DMA_Vfifo_init() #13, !dbg !4819
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4820
  %13 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 3, !dbg !4821
  %14 = load i8*, i8** %13, align 4, !dbg !4821
  %15 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 4, !dbg !4822
  %16 = load i32, i32* %15, align 4, !dbg !4822
  %17 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 6, !dbg !4823
  %18 = load i32, i32* %17, align 4, !dbg !4823
  %19 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 5, !dbg !4824
  %20 = load i32, i32* %19, align 4, !dbg !4824
  %21 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef 5000) #14, !dbg !4825
  tail call void @halUART_Rx_VFIFO_Initialize(i32 noundef %12, i8* noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %21) #13, !dbg !4826
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 0, !dbg !4827
  %23 = load i8*, i8** %22, align 4, !dbg !4827
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 1, !dbg !4828
  %25 = load i32, i32* %24, align 4, !dbg !4828
  %26 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 2, !dbg !4829
  %27 = load i32, i32* %26, align 4, !dbg !4829
  tail call void @halUART_Tx_VFIFO_Initialize(i32 noundef %12, i8* noundef %23, i32 noundef %25, i32 noundef %27) #13, !dbg !4830
  br label %28, !dbg !4831

28:                                               ; preds = %4, %2, %6
  %29 = phi i32 [ 0, %6 ], [ -4, %2 ], [ -4, %4 ], !dbg !4805
  ret i32 %29, !dbg !4832
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef readonly %0) unnamed_addr #6 !dbg !4833 {
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %0, metadata !4837, metadata !DIExpression()), !dbg !4838
  %2 = icmp eq %struct.hal_uart_dma_config_t* %0, null, !dbg !4839
  br i1 %2, label %27, label %3, !dbg !4841

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 3, !dbg !4842
  %5 = load i8*, i8** %4, align 4, !dbg !4842
  %6 = icmp eq i8* %5, null, !dbg !4844
  br i1 %6, label %27, label %7, !dbg !4845

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 4, !dbg !4846
  %9 = load i32, i32* %8, align 4, !dbg !4846
  %10 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 5, !dbg !4848
  %11 = load i32, i32* %10, align 4, !dbg !4848
  %12 = icmp ult i32 %9, %11, !dbg !4849
  br i1 %12, label %27, label %13, !dbg !4850

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 6, !dbg !4851
  %15 = load i32, i32* %14, align 4, !dbg !4851
  %16 = icmp ult i32 %9, %15, !dbg !4853
  br i1 %16, label %27, label %17, !dbg !4854

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 0, !dbg !4855
  %19 = load i8*, i8** %18, align 4, !dbg !4855
  %20 = icmp eq i8* %19, null, !dbg !4857
  br i1 %20, label %27, label %21, !dbg !4858

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 1, !dbg !4859
  %23 = load i32, i32* %22, align 4, !dbg !4859
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 2, !dbg !4861
  %25 = load i32, i32* %24, align 4, !dbg !4861
  %26 = icmp uge i32 %23, %25, !dbg !4862
  br label %27, !dbg !4863

27:                                               ; preds = %21, %17, %13, %7, %3, %1
  %28 = phi i1 [ false, %1 ], [ false, %3 ], [ false, %7 ], [ false, %13 ], [ false, %17 ], [ %26, %21 ], !dbg !4838
  ret i1 %28, !dbg !4864
}

; Function Attrs: optsize
declare dso_local void @DMA_Init() local_unnamed_addr #2

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_init() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @hal_uart_translate_timeout(i32 noundef %0) unnamed_addr #0 !dbg !4865 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4867, metadata !DIExpression()), !dbg !4869
  %2 = tail call i32 @top_mcu_freq_get() #13, !dbg !4870
  %3 = udiv i32 %2, 1000000, !dbg !4871
  call void @llvm.dbg.value(metadata i32 %3, metadata !4868, metadata !DIExpression()), !dbg !4869
  %4 = mul i32 %3, %0, !dbg !4872
  ret i32 %4, !dbg !4873
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !4874 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4876, metadata !DIExpression()), !dbg !4878
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4879
  br i1 %2, label %3, label %8, !dbg !4881

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !4882
  %5 = icmp eq i32 %0, 1, !dbg !4882
  %6 = select i1 %5, i32 1, i32 2, !dbg !4882
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4882
  call void @llvm.dbg.value(metadata i32 %7, metadata !4877, metadata !DIExpression()), !dbg !4878
  tail call void @uart_set_hardware_flowcontrol(i32 noundef %7) #13, !dbg !4883
  br label %8, !dbg !4884

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !4878
  ret i32 %9, !dbg !4885
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 !dbg !4886 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4890, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i8 %1, metadata !4891, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i8 %2, metadata !4892, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i8 %3, metadata !4893, metadata !DIExpression()), !dbg !4895
  %5 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4896
  br i1 %5, label %6, label %11, !dbg !4898

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 0, !dbg !4899
  %8 = icmp eq i32 %0, 1, !dbg !4899
  %9 = select i1 %8, i32 1, i32 2, !dbg !4899
  %10 = select i1 %7, i32 0, i32 %9, !dbg !4899
  call void @llvm.dbg.value(metadata i32 %10, metadata !4894, metadata !DIExpression()), !dbg !4895
  tail call void @uart_set_software_flowcontrol(i32 noundef %10, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #13, !dbg !4900
  br label %11, !dbg !4901

11:                                               ; preds = %4, %6
  %12 = phi i32 [ 0, %6 ], [ -4, %4 ], !dbg !4895
  ret i32 %12, !dbg !4902
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !4903 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4905, metadata !DIExpression()), !dbg !4907
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4908
  br i1 %2, label %3, label %8, !dbg !4910

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !4911
  %5 = icmp eq i32 %0, 1, !dbg !4911
  %6 = select i1 %5, i32 1, i32 2, !dbg !4911
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4911
  call void @llvm.dbg.value(metadata i32 %7, metadata !4906, metadata !DIExpression()), !dbg !4907
  tail call void @uart_disable_flowcontrol(i32 noundef %7) #13, !dbg !4912
  br label %8, !dbg !4913

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !4907
  ret i32 %9, !dbg !4914
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma_timeout(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4915 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4919, metadata !DIExpression()), !dbg !4921
  call void @llvm.dbg.value(metadata i32 %1, metadata !4920, metadata !DIExpression()), !dbg !4921
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4922
  br i1 %3, label %4, label %8, !dbg !4924

4:                                                ; preds = %2
  %5 = icmp eq i32 %0, 0, !dbg !4925
  %6 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef %1) #14, !dbg !4927
  %7 = select i1 %5, i32 15, i32 17
  tail call void @DMA_Vfifo_Set_timeout(i32 noundef %7, i32 noundef %6) #13, !dbg !4927
  br label %8, !dbg !4928

8:                                                ; preds = %4, %2
  %9 = phi i32 [ -4, %2 ], [ 0, %4 ], !dbg !4921
  ret i32 %9, !dbg !4928
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Set_timeout(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @__io_putchar(i32 noundef returned %0) local_unnamed_addr #0 !dbg !4929 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4933, metadata !DIExpression()), !dbg !4934
  %2 = trunc i32 %0 to i8, !dbg !4935
  tail call void @hal_uart_put_char(i32 noundef 0, i8 noundef zeroext %2) #13, !dbg !4936
  ret i32 %0, !dbg !4937
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local i32 @main() local_unnamed_addr #12 !dbg !4938 {
  tail call fastcc void @SystemClock_Config() #14, !dbg !4939
  tail call fastcc void @prvSetupHardware() #14, !dbg !4940
  tail call void asm sideeffect "cpsie i", "~{memory}"() #15, !dbg !4941, !srcloc !4944
  tail call void asm sideeffect "cpsie f", "~{memory}"() #15, !dbg !4945, !srcloc !4948
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0)) #13, !dbg !4949
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.28, i32 0, i32 0)) #13, !dbg !4950
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0)) #13, !dbg !4951
  tail call fastcc void @hal_gpc_example() #14, !dbg !4952
  br label %4, !dbg !4953

4:                                                ; preds = %4, %0
  br label %4, !dbg !4954, !llvm.loop !4957
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @SystemClock_Config() unnamed_addr #0 !dbg !4960 {
  tail call void @top_xtal_init() #13, !dbg !4961
  ret void, !dbg !4962
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvSetupHardware() unnamed_addr #0 !dbg !4963 {
  tail call fastcc void @log_uart_init() #14, !dbg !4964
  ret void, !dbg !4965
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @hal_gpc_example() unnamed_addr #0 !dbg !4966 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.hal_gpc_config_t, align 4
  %3 = bitcast i32* %1 to i8*, !dbg !4977
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #15, !dbg !4977
  %4 = bitcast %struct.hal_gpc_config_t* %2 to i8*, !dbg !4978
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #15, !dbg !4978
  call void @llvm.dbg.declare(metadata %struct.hal_gpc_config_t* %2, metadata !4970, metadata !DIExpression()), !dbg !4979
  %5 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2.29, i32 0, i32 0)) #13, !dbg !4980
  %6 = getelementptr inbounds %struct.hal_gpc_config_t, %struct.hal_gpc_config_t* %2, i32 0, i32 0, !dbg !4981
  store i32 0, i32* %6, align 4, !dbg !4982
  tail call fastcc void @gpc_test_hardware_init() #14, !dbg !4983
  %7 = call i32 @hal_gpc_init(i32 noundef 0, %struct.hal_gpc_config_t* noundef nonnull %2) #13, !dbg !4984
  call void @llvm.dbg.value(metadata i32 %7, metadata !4969, metadata !DIExpression()), !dbg !4985
  %8 = icmp eq i32 %7, 0, !dbg !4986
  br i1 %8, label %9, label %25, !dbg !4988

9:                                                ; preds = %0
  %10 = call i32 @hal_gpc_enable(i32 noundef 0) #13, !dbg !4989
  call void @llvm.dbg.value(metadata i32 0, metadata !4975, metadata !DIExpression()), !dbg !4990
  br label %11, !dbg !4991

11:                                               ; preds = %14, %9
  %12 = phi i32 [ 0, %9 ], [ %15, %14 ], !dbg !4990
  call void @llvm.dbg.value(metadata i32 %12, metadata !4975, metadata !DIExpression()), !dbg !4990
  %13 = icmp eq i32 %12, 100, !dbg !4992
  br i1 %13, label %21, label %14, !dbg !4994

14:                                               ; preds = %11
  %15 = add nuw nsw i32 %12, 1, !dbg !4995
  call fastcc void @generate_pulse(i32 noundef %15) #14, !dbg !4997
  call void @llvm.dbg.value(metadata i32* %1, metadata !4968, metadata !DIExpression(DW_OP_deref)), !dbg !4985
  %16 = call i32 @hal_gpc_get_and_clear_count(i32 noundef 0, i32* noundef nonnull %1) #13, !dbg !4998
  %17 = load i32, i32* %1, align 4, !dbg !4999
  call void @llvm.dbg.value(metadata i32 %17, metadata !4968, metadata !DIExpression()), !dbg !4985
  %18 = icmp eq i32 %15, %17, !dbg !5001
  br i1 %18, label %11, label %19, !dbg !5002, !llvm.loop !5003

19:                                               ; preds = %14
  %20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4.30, i32 0, i32 0), i32 noundef %12, i32 noundef %17) #13, !dbg !5005
  br label %21

21:                                               ; preds = %11, %19
  %22 = phi i8* [ getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0), %19 ], [ getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0), %11 ]
  %23 = call i32 @hal_gpc_deinit(i32 noundef 0) #13, !dbg !4985
  %24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0)) #13, !dbg !4985
  br label %25, !dbg !4985

25:                                               ; preds = %21, %0
  %26 = phi i8* [ getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3.31, i32 0, i32 0), %0 ], [ %22, %21 ]
  %27 = call i32 (i8*, ...) @printf(i8* noundef %26) #13, !dbg !4985
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #15, !dbg !5007
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #15, !dbg !5007
  ret void, !dbg !5007
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @gpc_test_hardware_init() unnamed_addr #0 !dbg !5008 {
  call void @llvm.dbg.value(metadata i32 0, metadata !5012, metadata !DIExpression()), !dbg !5013
  %1 = tail call i32 @hal_gpio_init(i32 noundef 6) #13, !dbg !5014
  %2 = tail call i32 @hal_pinmux_set_function(i32 noundef 6, i8 noundef zeroext 8) #13, !dbg !5015
  %3 = tail call i32 @hal_gpio_set_direction(i32 noundef 6, i32 noundef 1) #13, !dbg !5016
  %4 = tail call i32 @hal_gpio_set_output(i32 noundef 6, i32 noundef 0) #13, !dbg !5017
  %5 = tail call i32 @hal_pinmux_set_function(i32 noundef 33, i8 noundef zeroext 1) #13, !dbg !5020
  ret void, !dbg !5021
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @generate_pulse(i32 noundef %0) unnamed_addr #0 !dbg !5022 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5024, metadata !DIExpression()), !dbg !5027
  call void @llvm.dbg.value(metadata i32 0, metadata !5025, metadata !DIExpression()), !dbg !5028
  %2 = icmp eq i32 %0, 0, !dbg !5029
  br i1 %2, label %3, label %4, !dbg !5031

3:                                                ; preds = %4, %1
  ret void, !dbg !5032

4:                                                ; preds = %1, %4
  %5 = phi i32 [ %10, %4 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !5025, metadata !DIExpression()), !dbg !5028
  %6 = tail call i32 @hal_gpio_set_output(i32 noundef 6, i32 noundef 1) #13, !dbg !5033
  %7 = tail call i32 @hal_gpt_delay_ms(i32 noundef 10) #13, !dbg !5035
  %8 = tail call i32 @hal_gpio_set_output(i32 noundef 6, i32 noundef 0) #13, !dbg !5036
  %9 = tail call i32 @hal_gpt_delay_ms(i32 noundef 10) #13, !dbg !5037
  %10 = add nuw i32 %5, 1, !dbg !5038
  call void @llvm.dbg.value(metadata i32 %10, metadata !5025, metadata !DIExpression()), !dbg !5028
  %11 = icmp eq i32 %10, %0, !dbg !5029
  br i1 %11, label %3, label %4, !dbg !5031, !llvm.loop !5039
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @log_uart_init() unnamed_addr #0 !dbg !5041 {
  %1 = alloca %struct.hal_uart_config_t, align 4
  %2 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !5051
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #15, !dbg !5051
  call void @llvm.dbg.declare(metadata %struct.hal_uart_config_t* %1, metadata !5043, metadata !DIExpression()), !dbg !5052
  %3 = tail call i32 @hal_pinmux_set_function(i32 noundef 0, i8 noundef zeroext 7) #13, !dbg !5053
  %4 = tail call i32 @hal_pinmux_set_function(i32 noundef 1, i8 noundef zeroext 7) #13, !dbg !5054
  %5 = tail call i32 @hal_pinmux_set_function(i32 noundef 2, i8 noundef zeroext 7) #13, !dbg !5055
  %6 = tail call i32 @hal_pinmux_set_function(i32 noundef 3, i8 noundef zeroext 7) #13, !dbg !5056
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !5057
  store i32 9, i32* %7, align 4, !dbg !5058
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !5059
  store i32 3, i32* %8, align 4, !dbg !5060
  %9 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !5061
  store i32 0, i32* %9, align 4, !dbg !5062
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !5063
  store i32 0, i32* %10, align 4, !dbg !5064
  %11 = call i32 @hal_uart_init(i32 noundef 0, %struct.hal_uart_config_t* noundef nonnull %1) #13, !dbg !5065
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #15, !dbg !5066
  ret void, !dbg !5066
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @SysTick_Set(i32 noundef %0) local_unnamed_addr #3 !dbg !5067 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5069, metadata !DIExpression()), !dbg !5071
  %2 = add i32 %0, -1, !dbg !5072
  %3 = icmp ugt i32 %2, 16777215, !dbg !5074
  br i1 %3, label %8, label %4, !dbg !5075

4:                                                ; preds = %1
  %5 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5076
  call void @llvm.dbg.value(metadata i32 %5, metadata !5070, metadata !DIExpression()), !dbg !5071
  %6 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5077
  %7 = and i32 %6, -4, !dbg !5077
  store volatile i32 %7, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5077
  store volatile i32 %2, i32* inttoptr (i32 -536813548 to i32*), align 4, !dbg !5078
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !dbg !5079
  store volatile i32 %5, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5080
  br label %8, !dbg !5081

8:                                                ; preds = %1, %4
  %9 = phi i32 [ 0, %4 ], [ 1, %1 ], !dbg !5071
  ret i32 %9, !dbg !5082
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SysInitStatus_Set() local_unnamed_addr #3 !dbg !5083 {
  store volatile i32 1, i32* @System_Initialize_Done, align 4, !dbg !5084
  ret void, !dbg !5085
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @SysInitStatus_Query() local_unnamed_addr #5 !dbg !5086 {
  %1 = load volatile i32, i32* @System_Initialize_Done, align 4, !dbg !5087
  ret i32 %1, !dbg !5088
}

; Function Attrs: noinline nounwind optsize
define dso_local void @SystemCoreClockUpdate() local_unnamed_addr #0 !dbg !5089 {
  %1 = tail call i32 @top_mcu_freq_get() #13, !dbg !5090
  store i32 %1, i32* @SystemCoreClock, align 4, !dbg !5091
  ret void, !dbg !5092
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SystemInit() local_unnamed_addr #3 !dbg !5093 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !5094
  %2 = or i32 %1, 15728640, !dbg !5094
  store volatile i32 %2, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !5094
  store volatile i32 536870912, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !5095
  %3 = load volatile i32, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !5096
  %4 = or i32 %3, 458752, !dbg !5096
  store volatile i32 %4, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !5096
  ret void, !dbg !5097
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @CachePreInit() local_unnamed_addr #3 !dbg !5098 {
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !5099
  store volatile i32 19, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !5100
  store volatile i32 3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !5101
  store volatile i32 268931328, i32* inttoptr (i32 22282240 to i32*), align 262144, !dbg !5102
  store volatile i32 269713408, i32* inttoptr (i32 22282304 to i32*), align 64, !dbg !5103
  store volatile i32 1, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !5104
  store volatile i32 781, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !5105
  ret void, !dbg !5106
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_close(i32 noundef %0) local_unnamed_addr #10 !dbg !5107 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5109, metadata !DIExpression()), !dbg !5110
  ret i32 0, !dbg !5111
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_fstat(i32 noundef %0, %struct.stat* nocapture noundef readnone %1) local_unnamed_addr #10 !dbg !5112 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5162, metadata !DIExpression()), !dbg !5164
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !5163, metadata !DIExpression()), !dbg !5164
  ret i32 0, !dbg !5165
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_isatty(i32 noundef %0) local_unnamed_addr #10 !dbg !5166 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5168, metadata !DIExpression()), !dbg !5169
  ret i32 1, !dbg !5170
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_lseek(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !5171 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5175, metadata !DIExpression()), !dbg !5178
  call void @llvm.dbg.value(metadata i32 %1, metadata !5176, metadata !DIExpression()), !dbg !5178
  call void @llvm.dbg.value(metadata i32 %2, metadata !5177, metadata !DIExpression()), !dbg !5178
  ret i32 0, !dbg !5179
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_open(i8* nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !5180 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5184, metadata !DIExpression()), !dbg !5187
  call void @llvm.dbg.value(metadata i32 %1, metadata !5185, metadata !DIExpression()), !dbg !5187
  call void @llvm.dbg.value(metadata i32 %2, metadata !5186, metadata !DIExpression()), !dbg !5187
  ret i32 -1, !dbg !5188
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_read(i32 noundef %0, i8* nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #10 !dbg !5189 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5193, metadata !DIExpression()), !dbg !5196
  call void @llvm.dbg.value(metadata i8* %1, metadata !5194, metadata !DIExpression()), !dbg !5196
  call void @llvm.dbg.value(metadata i32 %2, metadata !5195, metadata !DIExpression()), !dbg !5196
  ret i32 0, !dbg !5197
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_write(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef returned %2) local_unnamed_addr #0 !dbg !5198 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5200, metadata !DIExpression()), !dbg !5204
  call void @llvm.dbg.value(metadata i8* %1, metadata !5201, metadata !DIExpression()), !dbg !5204
  call void @llvm.dbg.value(metadata i32 %2, metadata !5202, metadata !DIExpression()), !dbg !5204
  call void @llvm.dbg.value(metadata i32 0, metadata !5203, metadata !DIExpression()), !dbg !5204
  %4 = icmp sgt i32 %2, 0, !dbg !5205
  br i1 %4, label %5, label %14, !dbg !5208

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %12, %5 ], [ 0, %3 ]
  %7 = phi i8* [ %8, %5 ], [ %1, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !5203, metadata !DIExpression()), !dbg !5204
  call void @llvm.dbg.value(metadata i8* %7, metadata !5201, metadata !DIExpression()), !dbg !5204
  %8 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !5209
  call void @llvm.dbg.value(metadata i8* %8, metadata !5201, metadata !DIExpression()), !dbg !5204
  %9 = load i8, i8* %7, align 1, !dbg !5211
  %10 = zext i8 %9 to i32, !dbg !5211
  %11 = tail call i32 @__io_putchar(i32 noundef %10) #13, !dbg !5212
  %12 = add nuw nsw i32 %6, 1, !dbg !5213
  call void @llvm.dbg.value(metadata i32 %12, metadata !5203, metadata !DIExpression()), !dbg !5204
  %13 = icmp eq i32 %12, %2, !dbg !5205
  br i1 %13, label %14, label %5, !dbg !5208, !llvm.loop !5214

14:                                               ; preds = %5, %3
  ret i32 %2, !dbg !5216
}

; Function Attrs: noinline nounwind optsize
define dso_local i8* @_sbrk_r(%struct._reent* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #0 !dbg !573 {
  call void @llvm.dbg.value(metadata %struct._reent* %0, metadata !776, metadata !DIExpression()), !dbg !5217
  call void @llvm.dbg.value(metadata i32 %1, metadata !777, metadata !DIExpression()), !dbg !5217
  %3 = tail call i8* asm sideeffect "MRS $0, msp\0A", "=r"() #15, !dbg !5218, !srcloc !5219
  call void @llvm.dbg.value(metadata i8* %3, metadata !779, metadata !DIExpression()), !dbg !5217
  %4 = load i8*, i8** @_sbrk_r.heap_end, align 4, !dbg !5220
  %5 = icmp eq i8* %4, null, !dbg !5222
  %6 = select i1 %5, i8* @end, i8* %4, !dbg !5223
  call void @llvm.dbg.value(metadata i8* %6, metadata !778, metadata !DIExpression()), !dbg !5217
  %7 = getelementptr inbounds i8, i8* %6, i32 %1, !dbg !5224
  %8 = icmp ult i8* %3, %7, !dbg !5226
  %9 = xor i1 %8, true, !dbg !5227
  %10 = or i1 %5, %9, !dbg !5227
  br i1 %10, label %11, label %13, !dbg !5227

11:                                               ; preds = %2
  %12 = select i1 %8, i8* %6, i8* %7, !dbg !5228
  store i8* %12, i8** @_sbrk_r.heap_end, align 4, !dbg !5227
  br label %13, !dbg !5227

13:                                               ; preds = %2, %11
  %14 = select i1 %8, i8* inttoptr (i32 -1 to i8*), i8* %6, !dbg !5228
  ret i8* %14, !dbg !5227
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local void @_exit(i32 noundef %0) local_unnamed_addr #12 !dbg !5229 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5231, metadata !DIExpression()), !dbg !5232
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0)) #13, !dbg !5233
  br label %3, !dbg !5234

3:                                                ; preds = %1, %3
  br label %3, !dbg !5234, !llvm.loop !5235
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_kill(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !5237 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5241, metadata !DIExpression()), !dbg !5243
  call void @llvm.dbg.value(metadata i32 %1, metadata !5242, metadata !DIExpression()), !dbg !5243
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.39, i32 0, i32 0), i32 noundef %1) #13, !dbg !5244
  ret i32 -1, !dbg !5245
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_getpid() local_unnamed_addr #0 !dbg !5246 {
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.40, i32 0, i32 0)) #13, !dbg !5251
  ret i32 0, !dbg !5252
}

attributes #0 = { noinline nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { optsize "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #3 = { nofree noinline norecurse nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #5 = { mustprogress nofree noinline norecurse nounwind optsize willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #7 = { nofree noinline nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #8 = { argmemonly nofree nosync nounwind willreturn }
attributes #9 = { nofree nosync nounwind willreturn }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #12 = { noinline noreturn nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #13 = { nobuiltin nounwind optsize "no-builtins" }
attributes #14 = { nobuiltin optsize "no-builtins" }
attributes #15 = { nounwind }

!llvm.dbg.cu = !{!2, !85, !796, !800, !809, !125, !890, !935, !938, !185, !198, !941, !236, !943, !341, !393, !1009, !503, !771, !782}
!llvm.ident = !{!1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013, !1013}
!llvm.module.flags = !{!1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g_u4ClkCnt1ms", scope: !2, file: !3, line: 71, type: !79, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !57, globals: !62, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/gpt.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 121, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/type_def.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "KAL_FALSE", value: 0)
!10 = !DIEnumerator(name: "KAL_TRUE", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IRQn", file: !12, line: 47, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
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
!66 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/gpt.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
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
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!84 = distinct !DIGlobalVariable(name: "hal_gpc_has_initilized", scope: !85, file: !86, line: 47, type: !119, isLocal: true, isDefinition: true)
!85 = distinct !DICompileUnit(language: DW_LANG_C99, file: !86, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, globals: !113, splitDebugInlining: false, nameTableKind: None)
!86 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_gpc.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!87 = !{!88, !95, !100, !104, !109}
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !89, line: 262, baseType: !13, size: 32, elements: !90)
!89 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpc.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!90 = !{!91, !92, !93, !94}
!91 = !DIEnumerator(name: "HAL_GPC_STATUS_ERROR", value: -3)
!92 = !DIEnumerator(name: "HAL_GPC_STATUS_ERROR_PORT", value: -2)
!93 = !DIEnumerator(name: "HAL_GPC_STATUS_INVALID_PARAMETER", value: -1)
!94 = !DIEnumerator(name: "HAL_GPC_STATUS_OK", value: 0)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !96, line: 847, baseType: !7, size: 32, elements: !97)
!96 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_platform.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!97 = !{!98, !99}
!98 = !DIEnumerator(name: "HAL_GPC_0", value: 0)
!99 = !DIEnumerator(name: "HAL_GPC_MAX_PORT", value: 1)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !89, line: 256, baseType: !7, size: 32, elements: !101)
!101 = !{!102, !103}
!102 = !DIEnumerator(name: "HAL_GPC_EDGE_RAISING", value: 0)
!103 = !DIEnumerator(name: "HAL_GPC_EDGE_FALLING", value: 1)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !105, line: 62, baseType: !7, size: 32, elements: !106)
!105 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_pcnt.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!106 = !{!107, !108}
!107 = !DIEnumerator(name: "HAL_PCNT_EDGE_FALLING", value: 0)
!108 = !DIEnumerator(name: "HAL_PCNT_EDGE_RAISING", value: 1)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !89, line: 270, baseType: !7, size: 32, elements: !110)
!110 = !{!111, !112}
!111 = !DIEnumerator(name: "HAL_GPC_STATUS_IDLE", value: 0)
!112 = !DIEnumerator(name: "HAL_GPC_STATUS_BUSY", value: 1)
!113 = !{!114, !117, !120}
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(name: "pcnt_edge", scope: !85, file: !86, line: 45, type: !116, isLocal: true, isDefinition: true)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_pcnt_edge_t", file: !105, line: 65, baseType: !104)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "pcnt_state_work", scope: !85, file: !86, line: 46, type: !119, isLocal: true, isDefinition: true)
!119 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!120 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!121 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!122 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "gpio_bakup_table", scope: !125, file: !126, line: 62, type: !171, isLocal: true, isDefinition: true)
!125 = distinct !DICompileUnit(language: DW_LANG_C99, file: !126, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !127, retainedTypes: !169, globals: !170, splitDebugInlining: false, nameTableKind: None)
!126 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/low_hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!127 = !{!128, !159, !164}
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !129, line: 55, baseType: !7, size: 32, elements: !130)
!129 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!130 = !{!131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158}
!131 = !DIEnumerator(name: "eIOT_GPIO_IDX_0", value: 0)
!132 = !DIEnumerator(name: "eIOT_GPIO_IDX_1", value: 1)
!133 = !DIEnumerator(name: "eIOT_GPIO_IDX_2", value: 2)
!134 = !DIEnumerator(name: "eIOT_GPIO_IDX_3", value: 3)
!135 = !DIEnumerator(name: "eIOT_GPIO_IDX_4", value: 4)
!136 = !DIEnumerator(name: "eIOT_GPIO_IDX_5", value: 5)
!137 = !DIEnumerator(name: "eIOT_GPIO_IDX_6", value: 6)
!138 = !DIEnumerator(name: "eIOT_GPIO_IDX_7", value: 7)
!139 = !DIEnumerator(name: "eIOT_GPIO_IDX_24", value: 24)
!140 = !DIEnumerator(name: "eIOT_GPIO_IDX_25", value: 25)
!141 = !DIEnumerator(name: "eIOT_GPIO_IDX_26", value: 26)
!142 = !DIEnumerator(name: "eIOT_GPIO_IDX_27", value: 27)
!143 = !DIEnumerator(name: "eIOT_GPIO_IDX_28", value: 28)
!144 = !DIEnumerator(name: "eIOT_GPIO_IDX_29", value: 29)
!145 = !DIEnumerator(name: "eIOT_GPIO_IDX_30", value: 30)
!146 = !DIEnumerator(name: "eIOT_GPIO_IDX_31", value: 31)
!147 = !DIEnumerator(name: "eIOT_GPIO_IDX_32", value: 32)
!148 = !DIEnumerator(name: "eIOT_GPIO_IDX_33", value: 33)
!149 = !DIEnumerator(name: "eIOT_GPIO_IDX_34", value: 34)
!150 = !DIEnumerator(name: "eIOT_GPIO_IDX_35", value: 35)
!151 = !DIEnumerator(name: "eIOT_GPIO_IDX_36", value: 36)
!152 = !DIEnumerator(name: "eIOT_GPIO_IDX_37", value: 37)
!153 = !DIEnumerator(name: "eIOT_GPIO_IDX_38", value: 38)
!154 = !DIEnumerator(name: "eIOT_GPIO_IDX_39", value: 39)
!155 = !DIEnumerator(name: "eIOT_GPIO_IDX_57", value: 57)
!156 = !DIEnumerator(name: "eIOT_GPIO_IDX_58", value: 58)
!157 = !DIEnumerator(name: "eIOT_GPIO_IDX_59", value: 59)
!158 = !DIEnumerator(name: "eIOT_GPIO_IDX_60", value: 60)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !160, line: 57, baseType: !7, size: 32, elements: !161)
!160 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/low_hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!161 = !{!162, !163}
!162 = !DIEnumerator(name: "eDirection_IN", value: 0)
!163 = !DIEnumerator(name: "eDirection_OUT", value: 1)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !165, line: 1209, baseType: !7, size: 32, elements: !166)
!165 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_gpio_7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!166 = !{!167, !168}
!167 = !DIEnumerator(name: "ePAD_CONTROL_BY_N9", value: 0)
!168 = !DIEnumerator(name: "ePAD_CONTROL_BY_CM4", value: 1)
!169 = !{!58}
!170 = !{!123}
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 1408, elements: !181)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_backup_restore_t", file: !126, line: 60, baseType: !173)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 57, size: 64, elements: !174)
!174 = !{!175, !180}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "reg_data", scope: !173, file: !126, line: 58, baseType: !176, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !177, line: 48, baseType: !178)
!177 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_stdint.h", directory: "/home/mjshen/RTOSExploration")
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !179, line: 79, baseType: !7)
!179 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/machine/_default_types.h", directory: "/home/mjshen/RTOSExploration")
!180 = !DIDerivedType(tag: DW_TAG_member, name: "reg_addr", scope: !173, file: !126, line: 59, baseType: !176, size: 32, offset: 32)
!181 = !{!182}
!182 = !DISubrange(count: 22)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(name: "gXtalFreq", scope: !185, file: !186, line: 43, type: !176, isLocal: true, isDefinition: true)
!185 = distinct !DICompileUnit(language: DW_LANG_C99, file: !186, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !187, globals: !193, splitDebugInlining: false, nameTableKind: None)
!186 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/top.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!187 = !{!188, !80, !190, !192}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 32)
!191 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !176)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 32)
!193 = !{!183, !194}
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(name: "gCpuFrequency", scope: !185, file: !186, line: 44, type: !176, isLocal: true, isDefinition: true)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "gUartClkFreq", scope: !198, file: !199, line: 54, type: !176, isLocal: false, isDefinition: true)
!198 = distinct !DICompileUnit(language: DW_LANG_C99, file: !199, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !200, retainedTypes: !224, globals: !233, splitDebugInlining: false, nameTableKind: None)
!199 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!200 = !{!201, !207}
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !202, line: 71, baseType: !7, size: 32, elements: !203)
!202 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!203 = !{!204, !205, !206}
!204 = !DIEnumerator(name: "UART_PORT0", value: 0)
!205 = !DIEnumerator(name: "UART_PORT1", value: 1)
!206 = !DIEnumerator(name: "UART_MAX_PORT", value: 2)
!207 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !208, line: 129, baseType: !7, size: 32, elements: !209)
!208 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/dma_sw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!209 = !{!210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223}
!210 = !DIEnumerator(name: "VDMA_I2S_TX_CH", value: 12)
!211 = !DIEnumerator(name: "VDMA_I2S_RX_CH", value: 13)
!212 = !DIEnumerator(name: "VDMA_UART1TX_CH", value: 14)
!213 = !DIEnumerator(name: "VDMA_UART1RX_CH", value: 15)
!214 = !DIEnumerator(name: "VDMA_UART2TX_CH", value: 16)
!215 = !DIEnumerator(name: "VDMA_UART2RX_CH", value: 17)
!216 = !DIEnumerator(name: "VDMA_BTIF_TX_CH", value: 18)
!217 = !DIEnumerator(name: "VDMA_BTIF_RX_CH", value: 19)
!218 = !DIEnumerator(name: "VDMA_USB_EP2O_CH", value: 20)
!219 = !DIEnumerator(name: "VDMA_USB_EP3I_CH", value: 21)
!220 = !DIEnumerator(name: "VDMA_USB_EP3O_CH", value: 22)
!221 = !DIEnumerator(name: "VDMA_USB_EP4I_CH", value: 23)
!222 = !DIEnumerator(name: "VDMA_USB_EP4O_CH", value: 24)
!223 = !DIEnumerator(name: "VDMA_ADC_RX_CH", value: 25)
!224 = !{!188, !176, !225, !227, !229, !231, !80}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 32)
!226 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "kal_uint16", file: !6, line: 113, baseType: !228)
!228 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !6, line: 59, baseType: !230)
!230 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 32)
!232 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !229)
!233 = !{!196}
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(name: "nvic_function_table", scope: !236, file: !237, line: 53, type: !328, isLocal: false, isDefinition: true)
!236 = distinct !DICompileUnit(language: DW_LANG_C99, file: !237, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !238, retainedTypes: !247, globals: !327, splitDebugInlining: false, nameTableKind: None)
!237 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!238 = !{!239, !11}
!239 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !240, line: 152, baseType: !13, size: 32, elements: !241)
!240 = !DIFile(filename: "../../../../../driver/chip/inc/hal_nvic.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!241 = !{!242, !243, !244, !245, !246}
!242 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_NO_ISR", value: -4)
!243 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_IRQ_NUMBER", value: -3)
!244 = !DIEnumerator(name: "HAL_NVIC_STATUS_INVALID_PARAMETER", value: -2)
!245 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR", value: -1)
!246 = !DIEnumerator(name: "HAL_NVIC_STATUS_OK", value: 0)
!247 = !{!248, !249, !176, !250, !252, !288}
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_irq_t", file: !12, line: 97, baseType: !61)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !177, line: 44, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !179, line: 77, baseType: !13)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 32)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !254, line: 378, baseType: !255)
!254 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cm4.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !254, line: 363, size: 28704, elements: !256)
!256 = !{!257, !261, !265, !266, !267, !268, !269, !270, !271, !272, !276, !283, !287}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !255, file: !254, line: 365, baseType: !258, size: 256)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 256, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 8)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !255, file: !254, line: 366, baseType: !262, size: 768, offset: 256)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 768, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 24)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !255, file: !254, line: 367, baseType: !258, size: 256, offset: 1024)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !255, file: !254, line: 368, baseType: !262, size: 768, offset: 1280)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !255, file: !254, line: 369, baseType: !258, size: 256, offset: 2048)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !255, file: !254, line: 370, baseType: !262, size: 768, offset: 2304)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !255, file: !254, line: 371, baseType: !258, size: 256, offset: 3072)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !255, file: !254, line: 372, baseType: !262, size: 768, offset: 3328)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !255, file: !254, line: 373, baseType: !258, size: 256, offset: 4096)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !255, file: !254, line: 374, baseType: !273, size: 1792, offset: 4352)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 1792, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 56)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !255, file: !254, line: 375, baseType: !277, size: 1920, offset: 6144)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 1920, elements: !281)
!278 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !177, line: 24, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !179, line: 43, baseType: !230)
!281 = !{!282}
!282 = !DISubrange(count: 240)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !255, file: !254, line: 376, baseType: !284, size: 20608, offset: 8064)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 20608, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 644)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !255, file: !254, line: 377, baseType: !191, size: 32, offset: 28672)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 32)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !254, line: 418, baseType: !290)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !254, line: 395, size: 1120, elements: !291)
!291 = !{!292, !294, !295, !296, !297, !298, !299, !303, !304, !305, !306, !307, !308, !309, !310, !314, !315, !316, !320, !324, !326}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !290, file: !254, line: 397, baseType: !293, size: 32)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !290, file: !254, line: 398, baseType: !191, size: 32, offset: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !290, file: !254, line: 399, baseType: !191, size: 32, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !290, file: !254, line: 400, baseType: !191, size: 32, offset: 96)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !290, file: !254, line: 401, baseType: !191, size: 32, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !290, file: !254, line: 402, baseType: !191, size: 32, offset: 160)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !290, file: !254, line: 403, baseType: !300, size: 96, offset: 192)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 96, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 12)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !290, file: !254, line: 404, baseType: !191, size: 32, offset: 288)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !290, file: !254, line: 405, baseType: !191, size: 32, offset: 320)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !290, file: !254, line: 406, baseType: !191, size: 32, offset: 352)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !290, file: !254, line: 407, baseType: !191, size: 32, offset: 384)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !290, file: !254, line: 408, baseType: !191, size: 32, offset: 416)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !290, file: !254, line: 409, baseType: !191, size: 32, offset: 448)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !290, file: !254, line: 410, baseType: !191, size: 32, offset: 480)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !290, file: !254, line: 411, baseType: !311, size: 64, offset: 512)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 64, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 2)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !290, file: !254, line: 412, baseType: !293, size: 32, offset: 576)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !290, file: !254, line: 413, baseType: !293, size: 32, offset: 608)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !290, file: !254, line: 414, baseType: !317, size: 128, offset: 640)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 128, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 4)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !290, file: !254, line: 415, baseType: !321, size: 160, offset: 768)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 160, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 5)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !290, file: !254, line: 416, baseType: !325, size: 160, offset: 928)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 160, elements: !322)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !290, file: !254, line: 417, baseType: !191, size: 32, offset: 1088)
!327 = !{!234}
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 6144, elements: !337)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "nvic_function_t", file: !237, line: 50, baseType: !330)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !237, line: 47, size: 64, elements: !331)
!331 = !{!332, !336}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "nvic_callback", scope: !330, file: !237, line: 48, baseType: !333, size: 32)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 32)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !248}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pending", scope: !330, file: !237, line: 49, baseType: !176, size: 32, offset: 32)
!337 = !{!338}
!338 = !DISubrange(count: 96)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(name: "g_gpt_context", scope: !341, file: !342, line: 61, type: !374, isLocal: true, isDefinition: true)
!341 = distinct !DICompileUnit(language: DW_LANG_C99, file: !342, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !343, retainedTypes: !372, globals: !373, splitDebugInlining: false, nameTableKind: None)
!342 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gpt.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!343 = !{!344, !352, !359, !363, !368}
!344 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !345, line: 387, baseType: !13, size: 32, elements: !346)
!345 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpt.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!346 = !{!347, !348, !349, !350, !351}
!347 = !DIEnumerator(name: "HAL_GPT_STATUS_ERROR_PORT_USED", value: -4)
!348 = !DIEnumerator(name: "HAL_GPT_STATUS_ERROR", value: -3)
!349 = !DIEnumerator(name: "HAL_GPT_STATUS_ERROR_PORT", value: -2)
!350 = !DIEnumerator(name: "HAL_GPT_STATUS_INVALID_PARAMETER", value: -1)
!351 = !DIEnumerator(name: "HAL_GPT_STATUS_OK", value: 0)
!352 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !96, line: 657, baseType: !7, size: 32, elements: !353)
!353 = !{!354, !355, !356, !357, !358}
!354 = !DIEnumerator(name: "HAL_GPT_0", value: 0)
!355 = !DIEnumerator(name: "HAL_GPT_1", value: 1)
!356 = !DIEnumerator(name: "HAL_GPT_2", value: 2)
!357 = !DIEnumerator(name: "HAL_GPT_4", value: 4)
!358 = !DIEnumerator(name: "HAL_GPT_MAX", value: 5)
!359 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !345, line: 397, baseType: !7, size: 32, elements: !360)
!360 = !{!361, !362}
!361 = !DIEnumerator(name: "HAL_GPT_STOPPED", value: 0)
!362 = !DIEnumerator(name: "HAL_GPT_RUNNING", value: 1)
!363 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !96, line: 666, baseType: !7, size: 32, elements: !364)
!364 = !{!365, !366, !367}
!365 = !DIEnumerator(name: "HAL_GPT_CLOCK_SOURCE_32K", value: 0)
!366 = !DIEnumerator(name: "HAL_GPT_CLOCK_SOURCE_1M", value: 1)
!367 = !DIEnumerator(name: "HAL_GPT_CLOCK_SOURCE_BUS", value: 2)
!368 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !345, line: 380, baseType: !7, size: 32, elements: !369)
!369 = !{!370, !371}
!370 = !DIEnumerator(name: "HAL_GPT_TIMER_TYPE_ONE_SHOT", value: 0)
!371 = !DIEnumerator(name: "HAL_GPT_TIMER_TYPE_REPEAT", value: 1)
!372 = !{!249, !176}
!373 = !{!339}
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 640, elements: !322)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_context_t", file: !342, line: 55, baseType: !376)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !342, line: 51, size: 128, elements: !377)
!377 = !{!378, !380, !390}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "running_status", scope: !376, file: !342, line: 52, baseType: !379, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_running_status_t", file: !345, line: 400, baseType: !359)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "callback_context", scope: !376, file: !342, line: 53, baseType: !381, size: 64, offset: 32)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_callback_context", file: !342, line: 49, baseType: !382)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !342, line: 46, size: 64, elements: !383)
!383 = !{!384, !389}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !382, file: !342, line: 47, baseType: !385, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_callback_t", file: !345, line: 371, baseType: !386)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 32)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !249}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !382, file: !342, line: 48, baseType: !249, size: 32, offset: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "has_initlized", scope: !376, file: !342, line: 54, baseType: !119, size: 8, offset: 96)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(name: "g_uart_context_table", scope: !393, file: !394, line: 77, type: !459, isLocal: true, isDefinition: true)
!393 = distinct !DICompileUnit(language: DW_LANG_C99, file: !394, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !395, retainedTypes: !445, globals: !447, splitDebugInlining: false, nameTableKind: None)
!394 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!395 = !{!396, !404, !409, !425, !431, !435, !201, !207, !440}
!396 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !397, line: 345, baseType: !13, size: 32, elements: !398)
!397 = !DIFile(filename: "../../../../../driver/chip/inc/hal_uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!398 = !{!399, !400, !401, !402, !403}
!399 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_PARAMETER", value: -4)
!400 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_BUSY", value: -3)
!401 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_UNINITIALIZED", value: -2)
!402 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR", value: -1)
!403 = !DIEnumerator(name: "HAL_UART_STATUS_OK", value: 0)
!404 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !96, line: 109, baseType: !7, size: 32, elements: !405)
!405 = !{!406, !407, !408}
!406 = !DIEnumerator(name: "HAL_UART_0", value: 0)
!407 = !DIEnumerator(name: "HAL_UART_1", value: 1)
!408 = !DIEnumerator(name: "HAL_UART_MAX", value: 2)
!409 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !397, line: 302, baseType: !7, size: 32, elements: !410)
!410 = !{!411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424}
!411 = !DIEnumerator(name: "HAL_UART_BAUDRATE_110", value: 0)
!412 = !DIEnumerator(name: "HAL_UART_BAUDRATE_300", value: 1)
!413 = !DIEnumerator(name: "HAL_UART_BAUDRATE_1200", value: 2)
!414 = !DIEnumerator(name: "HAL_UART_BAUDRATE_2400", value: 3)
!415 = !DIEnumerator(name: "HAL_UART_BAUDRATE_4800", value: 4)
!416 = !DIEnumerator(name: "HAL_UART_BAUDRATE_9600", value: 5)
!417 = !DIEnumerator(name: "HAL_UART_BAUDRATE_19200", value: 6)
!418 = !DIEnumerator(name: "HAL_UART_BAUDRATE_38400", value: 7)
!419 = !DIEnumerator(name: "HAL_UART_BAUDRATE_57600", value: 8)
!420 = !DIEnumerator(name: "HAL_UART_BAUDRATE_115200", value: 9)
!421 = !DIEnumerator(name: "HAL_UART_BAUDRATE_230400", value: 10)
!422 = !DIEnumerator(name: "HAL_UART_BAUDRATE_460800", value: 11)
!423 = !DIEnumerator(name: "HAL_UART_BAUDRATE_921600", value: 12)
!424 = !DIEnumerator(name: "HAL_UART_BAUDRATE_MAX", value: 13)
!425 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !397, line: 321, baseType: !7, size: 32, elements: !426)
!426 = !{!427, !428, !429, !430}
!427 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_5", value: 0)
!428 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_6", value: 1)
!429 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_7", value: 2)
!430 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_8", value: 3)
!431 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !397, line: 330, baseType: !7, size: 32, elements: !432)
!432 = !{!433, !434}
!433 = !DIEnumerator(name: "HAL_UART_STOP_BIT_1", value: 0)
!434 = !DIEnumerator(name: "HAL_UART_STOP_BIT_2", value: 1)
!435 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !397, line: 337, baseType: !7, size: 32, elements: !436)
!436 = !{!437, !438, !439}
!437 = !DIEnumerator(name: "HAL_UART_PARITY_NONE", value: 0)
!438 = !DIEnumerator(name: "HAL_UART_PARITY_ODD", value: 1)
!439 = !DIEnumerator(name: "HAL_UART_PARITY_EVEN", value: 2)
!440 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !397, line: 355, baseType: !13, size: 32, elements: !441)
!441 = !{!442, !443, !444}
!442 = !DIEnumerator(name: "HAL_UART_EVENT_TRANSACTION_ERROR", value: -1)
!443 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_READ", value: 1)
!444 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_WRITE", value: 2)
!445 = !{!7, !249, !230, !446, !279}
!446 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!447 = !{!391, !448}
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(name: "func_tbl", scope: !450, file: !394, line: 536, type: !457, isLocal: true, isDefinition: true)
!450 = distinct !DISubprogram(name: "hal_uart_map_receive_callback", scope: !394, file: !394, line: 534, type: !451, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !455)
!451 = !DISubroutineType(types: !452)
!452 = !{!453, !454}
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID_FUNC", file: !208, line: 197, baseType: !74)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_port_t", file: !96, line: 113, baseType: !404)
!455 = !{!456}
!456 = !DILocalVariable(name: "uart_port", arg: 1, scope: !450, file: !394, line: 534, type: !454)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 64, elements: !312)
!458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 1024, elements: !312)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "uart_context_t", file: !394, line: 75, baseType: !461)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !394, line: 68, size: 512, elements: !462)
!462 = !{!463, !464, !476, !477, !488, !489}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config_present", scope: !461, file: !394, line: 69, baseType: !119, size: 8)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config", scope: !461, file: !394, line: 70, baseType: !465, size: 128, offset: 32)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !397, line: 378, baseType: !466)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !397, line: 373, size: 128, elements: !467)
!467 = !{!468, !470, !472, !474}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !466, file: !397, line: 374, baseType: !469, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_baudrate_t", file: !397, line: 317, baseType: !409)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !466, file: !397, line: 375, baseType: !471, size: 32, offset: 32)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_word_length_t", file: !397, line: 326, baseType: !425)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !466, file: !397, line: 376, baseType: !473, size: 32, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_stop_bit_t", file: !397, line: 333, baseType: !431)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !466, file: !397, line: 377, baseType: !475, size: 32, offset: 96)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_parity_t", file: !397, line: 341, baseType: !435)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "callback_present", scope: !461, file: !394, line: 71, baseType: !119, size: 8, offset: 160)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "callback_config", scope: !461, file: !394, line: 72, baseType: !478, size: 64, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_config_t", file: !394, line: 66, baseType: !479)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !394, line: 63, size: 64, elements: !480)
!480 = !{!481, !487}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !479, file: !394, line: 64, baseType: !482, size: 32)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_t", file: !397, line: 410, baseType: !483)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 32)
!484 = !DISubroutineType(types: !485)
!485 = !{null, !486, !249}
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_event_t", file: !397, line: 359, baseType: !440)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !479, file: !394, line: 65, baseType: !249, size: 32, offset: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config_present", scope: !461, file: !394, line: 73, baseType: !119, size: 8, offset: 256)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config", scope: !461, file: !394, line: 74, baseType: !490, size: 224, offset: 288)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_dma_config_t", file: !397, line: 390, baseType: !491)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !397, line: 382, size: 224, elements: !492)
!492 = !{!493, !495, !496, !497, !498, !499, !500}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer", scope: !491, file: !397, line: 383, baseType: !494, size: 32)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer_size", scope: !491, file: !397, line: 384, baseType: !176, size: 32, offset: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_threshold_size", scope: !491, file: !397, line: 385, baseType: !176, size: 32, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer", scope: !491, file: !397, line: 386, baseType: !494, size: 32, offset: 96)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer_size", scope: !491, file: !397, line: 387, baseType: !176, size: 32, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_threshold_size", scope: !491, file: !397, line: 388, baseType: !176, size: 32, offset: 160)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_alert_size", scope: !491, file: !397, line: 389, baseType: !176, size: 32, offset: 192)
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(name: "SystemCoreClock", scope: !503, file: !504, line: 59, type: !176, isLocal: false, isDefinition: true)
!503 = distinct !DICompileUnit(language: DW_LANG_C99, file: !504, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !505, globals: !568, splitDebugInlining: false, nameTableKind: None)
!504 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/src/system_mt7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!505 = !{!506, !514, !539}
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 32)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysTick_Type", file: !254, line: 656, baseType: !508)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !254, line: 650, size: 128, elements: !509)
!509 = !{!510, !511, !512, !513}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "CTRL", scope: !508, file: !254, line: 652, baseType: !191, size: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "LOAD", scope: !508, file: !254, line: 653, baseType: !191, size: 32, offset: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "VAL", scope: !508, file: !254, line: 654, baseType: !191, size: 32, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "CALIB", scope: !508, file: !254, line: 655, baseType: !293, size: 32, offset: 96)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !254, line: 418, baseType: !516)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !254, line: 395, size: 1120, elements: !517)
!517 = !{!518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !516, file: !254, line: 397, baseType: !293, size: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !516, file: !254, line: 398, baseType: !191, size: 32, offset: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !516, file: !254, line: 399, baseType: !191, size: 32, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !516, file: !254, line: 400, baseType: !191, size: 32, offset: 96)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !516, file: !254, line: 401, baseType: !191, size: 32, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !516, file: !254, line: 402, baseType: !191, size: 32, offset: 160)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !516, file: !254, line: 403, baseType: !300, size: 96, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !516, file: !254, line: 404, baseType: !191, size: 32, offset: 288)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !516, file: !254, line: 405, baseType: !191, size: 32, offset: 320)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !516, file: !254, line: 406, baseType: !191, size: 32, offset: 352)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !516, file: !254, line: 407, baseType: !191, size: 32, offset: 384)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !516, file: !254, line: 408, baseType: !191, size: 32, offset: 416)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !516, file: !254, line: 409, baseType: !191, size: 32, offset: 448)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !516, file: !254, line: 410, baseType: !191, size: 32, offset: 480)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !516, file: !254, line: 411, baseType: !311, size: 64, offset: 512)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !516, file: !254, line: 412, baseType: !293, size: 32, offset: 576)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !516, file: !254, line: 413, baseType: !293, size: 32, offset: 608)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !516, file: !254, line: 414, baseType: !317, size: 128, offset: 640)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !516, file: !254, line: 415, baseType: !321, size: 160, offset: 768)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !516, file: !254, line: 416, baseType: !325, size: 160, offset: 928)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !516, file: !254, line: 417, baseType: !191, size: 32, offset: 1088)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 32)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "CACHE_REGISTER_T", file: !541, line: 72, baseType: !542)
!541 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_hw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !541, line: 56, size: 525312, elements: !543)
!543 = !{!544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !558, !559, !563, !567}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CON", scope: !542, file: !541, line: 57, baseType: !191, size: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_OP", scope: !542, file: !541, line: 58, baseType: !191, size: 32, offset: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0L", scope: !542, file: !541, line: 59, baseType: !191, size: 32, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0U", scope: !542, file: !541, line: 60, baseType: !191, size: 32, offset: 96)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0L", scope: !542, file: !541, line: 61, baseType: !191, size: 32, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0U", scope: !542, file: !541, line: 62, baseType: !191, size: 32, offset: 160)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1L", scope: !542, file: !541, line: 63, baseType: !191, size: 32, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1U", scope: !542, file: !541, line: 64, baseType: !191, size: 32, offset: 224)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1L", scope: !542, file: !541, line: 65, baseType: !191, size: 32, offset: 256)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1U", scope: !542, file: !541, line: 66, baseType: !191, size: 32, offset: 288)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !542, file: !541, line: 67, baseType: !555, size: 32, offset: 320)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 32, elements: !556)
!556 = !{!557}
!557 = !DISubrange(count: 1)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_REGION_EN", scope: !542, file: !541, line: 68, baseType: !191, size: 32, offset: 352)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !542, file: !541, line: 69, baseType: !560, size: 523904, offset: 384)
!560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 523904, elements: !561)
!561 = !{!562}
!562 = !DISubrange(count: 16372)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_ENTRY_N", scope: !542, file: !541, line: 70, baseType: !564, size: 512, offset: 524288)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 512, elements: !565)
!565 = !{!566}
!566 = !DISubrange(count: 16)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_END_ENTRY_N", scope: !542, file: !541, line: 71, baseType: !564, size: 512, offset: 524800)
!568 = !{!501, !569}
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(name: "System_Initialize_Done", scope: !503, file: !504, line: 61, type: !191, isLocal: true, isDefinition: true)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(name: "heap_end", scope: !573, file: !574, line: 66, type: !579, isLocal: true, isDefinition: true)
!573 = distinct !DISubprogram(name: "_sbrk_r", scope: !574, file: !574, line: 63, type: !575, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !775)
!574 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC/syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!575 = !DISubroutineType(types: !576)
!576 = !{!577, !580, !770}
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !578, line: 123, baseType: !579)
!578 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/types.h", directory: "/home/mjshen/RTOSExploration")
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 32)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 32)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !582, line: 377, size: 1920, elements: !583)
!582 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/reent.h", directory: "/home/mjshen/RTOSExploration")
!583 = !{!584, !585, !659, !660, !661, !662, !663, !664, !665, !668, !689, !693, !694, !695, !696, !706, !719, !720, !725, !744, !745, !752, !753, !769}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !581, file: !582, line: 381, baseType: !13, size: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !581, file: !582, line: 386, baseType: !586, size: 32, offset: 32)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 32)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !582, line: 292, baseType: !588)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !582, line: 186, size: 832, elements: !589)
!589 = !{!590, !592, !593, !594, !596, !597, !602, !603, !604, !605, !609, !615, !622, !626, !627, !628, !629, !633, !635, !636, !637, !639, !645, !658}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !588, file: !582, line: 187, baseType: !591, size: 32)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !588, file: !582, line: 188, baseType: !13, size: 32, offset: 32)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !588, file: !582, line: 189, baseType: !13, size: 32, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !588, file: !582, line: 190, baseType: !595, size: 16, offset: 96)
!595 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !588, file: !582, line: 191, baseType: !595, size: 16, offset: 112)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !588, file: !582, line: 192, baseType: !598, size: 64, offset: 128)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !582, line: 122, size: 64, elements: !599)
!599 = !{!600, !601}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !598, file: !582, line: 123, baseType: !591, size: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !598, file: !582, line: 124, baseType: !13, size: 32, offset: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !588, file: !582, line: 193, baseType: !13, size: 32, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !588, file: !582, line: 196, baseType: !580, size: 32, offset: 224)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !588, file: !582, line: 200, baseType: !249, size: 32, offset: 256)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !588, file: !582, line: 202, baseType: !606, size: 32, offset: 288)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 32)
!607 = !DISubroutineType(types: !608)
!608 = !{!13, !580, !249, !579, !13}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !588, file: !582, line: 204, baseType: !610, size: 32, offset: 320)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 32)
!611 = !DISubroutineType(types: !612)
!612 = !{!13, !580, !249, !613, !13}
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 32)
!614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !446)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !588, file: !582, line: 207, baseType: !616, size: 32, offset: 352)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 32)
!617 = !DISubroutineType(types: !618)
!618 = !{!619, !580, !249, !619, !13}
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !620, line: 116, baseType: !621)
!620 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_types.h", directory: "/home/mjshen/RTOSExploration")
!621 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !588, file: !582, line: 208, baseType: !623, size: 32, offset: 384)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 32)
!624 = !DISubroutineType(types: !625)
!625 = !{!13, !580, !249}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !588, file: !582, line: 211, baseType: !598, size: 64, offset: 416)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !588, file: !582, line: 212, baseType: !591, size: 32, offset: 480)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !588, file: !582, line: 213, baseType: !13, size: 32, offset: 512)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !588, file: !582, line: 216, baseType: !630, size: 24, offset: 544)
!630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 24, elements: !631)
!631 = !{!632}
!632 = !DISubrange(count: 3)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !588, file: !582, line: 217, baseType: !634, size: 8, offset: 568)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 8, elements: !556)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !588, file: !582, line: 220, baseType: !598, size: 64, offset: 576)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !588, file: !582, line: 223, baseType: !13, size: 32, offset: 640)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !588, file: !582, line: 224, baseType: !638, size: 32, offset: 672)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !620, line: 46, baseType: !621)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !588, file: !582, line: 231, baseType: !640, size: 32, offset: 704)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !582, line: 35, baseType: !641)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_T", file: !642, line: 34, baseType: !643)
!642 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/lock.h", directory: "/home/mjshen/RTOSExploration")
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 32)
!644 = !DICompositeType(tag: DW_TAG_structure_type, name: "__lock", file: !642, line: 33, flags: DIFlagFwdDecl)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !588, file: !582, line: 233, baseType: !646, size: 64, offset: 736)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !620, line: 170, baseType: !647)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !620, line: 162, size: 64, elements: !648)
!648 = !{!649, !650}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !647, file: !620, line: 164, baseType: !13, size: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !647, file: !620, line: 169, baseType: !651, size: 32, offset: 32)
!651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !647, file: !620, line: 165, size: 32, elements: !652)
!652 = !{!653, !656}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !651, file: !620, line: 167, baseType: !654, size: 32)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !655, line: 116, baseType: !13)
!655 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "")
!656 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !651, file: !620, line: 168, baseType: !657, size: 32)
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 32, elements: !318)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !588, file: !582, line: 234, baseType: !13, size: 32, offset: 800)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !581, file: !582, line: 386, baseType: !586, size: 32, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !581, file: !582, line: 386, baseType: !586, size: 32, offset: 96)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !581, file: !582, line: 388, baseType: !13, size: 32, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !581, file: !582, line: 390, baseType: !579, size: 32, offset: 160)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !581, file: !582, line: 392, baseType: !13, size: 32, offset: 192)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !581, file: !582, line: 394, baseType: !13, size: 32, offset: 224)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !581, file: !582, line: 395, baseType: !666, size: 32, offset: 256)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 32)
!667 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !582, line: 45, flags: DIFlagFwdDecl)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "_mp", scope: !581, file: !582, line: 397, baseType: !669, size: 32, offset: 288)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 32)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mprec", file: !582, line: 349, size: 128, elements: !671)
!671 = !{!672, !685, !686, !687}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !670, file: !582, line: 352, baseType: !673, size: 32)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 32)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !582, line: 52, size: 192, elements: !675)
!675 = !{!676, !677, !678, !679, !680, !681}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !674, file: !582, line: 54, baseType: !673, size: 32)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !674, file: !582, line: 55, baseType: !13, size: 32, offset: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !674, file: !582, line: 55, baseType: !13, size: 32, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !674, file: !582, line: 55, baseType: !13, size: 32, offset: 96)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !674, file: !582, line: 55, baseType: !13, size: 32, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !674, file: !582, line: 56, baseType: !682, size: 32, offset: 160)
!682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !683, size: 32, elements: !556)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !582, line: 22, baseType: !684)
!684 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !670, file: !582, line: 353, baseType: !13, size: 32, offset: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !670, file: !582, line: 354, baseType: !673, size: 32, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !670, file: !582, line: 355, baseType: !688, size: 32, offset: 96)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !581, file: !582, line: 399, baseType: !690, size: 32, offset: 320)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 32)
!691 = !DISubroutineType(types: !692)
!692 = !{null, !580}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !581, file: !582, line: 401, baseType: !13, size: 32, offset: 352)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !581, file: !582, line: 404, baseType: !13, size: 32, offset: 384)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !581, file: !582, line: 405, baseType: !579, size: 32, offset: 416)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !581, file: !582, line: 407, baseType: !697, size: 32, offset: 448)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 32)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !582, line: 324, size: 192, elements: !699)
!699 = !{!700, !702, !703, !704}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !698, file: !582, line: 325, baseType: !701, size: 48)
!701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 48, elements: !631)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !698, file: !582, line: 326, baseType: !701, size: 48, offset: 48)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !698, file: !582, line: 327, baseType: !228, size: 16, offset: 96)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !698, file: !582, line: 330, baseType: !705, size: 64, offset: 128)
!705 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !581, file: !582, line: 408, baseType: !707, size: 32, offset: 480)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 32)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !582, line: 60, size: 288, elements: !709)
!709 = !{!710, !711, !712, !713, !714, !715, !716, !717, !718}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !708, file: !582, line: 62, baseType: !13, size: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !708, file: !582, line: 63, baseType: !13, size: 32, offset: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !708, file: !582, line: 64, baseType: !13, size: 32, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !708, file: !582, line: 65, baseType: !13, size: 32, offset: 96)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !708, file: !582, line: 66, baseType: !13, size: 32, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !708, file: !582, line: 67, baseType: !13, size: 32, offset: 160)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !708, file: !582, line: 68, baseType: !13, size: 32, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !708, file: !582, line: 69, baseType: !13, size: 32, offset: 224)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !708, file: !582, line: 70, baseType: !13, size: 32, offset: 256)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !581, file: !582, line: 409, baseType: !579, size: 32, offset: 512)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !581, file: !582, line: 412, baseType: !721, size: 32, offset: 544)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 32)
!723 = !DISubroutineType(types: !724)
!724 = !{null, !13}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !581, file: !582, line: 416, baseType: !726, size: 32, offset: 576)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 32)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !582, line: 90, size: 1120, elements: !728)
!728 = !{!729, !730, !731, !735}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !727, file: !582, line: 91, baseType: !726, size: 32)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !727, file: !582, line: 92, baseType: !13, size: 32, offset: 32)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !727, file: !582, line: 93, baseType: !732, size: 1024, offset: 64)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 1024, elements: !733)
!733 = !{!734}
!734 = !DISubrange(count: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args_ptr", scope: !727, file: !582, line: 94, baseType: !736, size: 32, offset: 1088)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 32)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !582, line: 79, size: 2112, elements: !738)
!738 = !{!739, !741, !742, !743}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !737, file: !582, line: 80, baseType: !740, size: 1024)
!740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 1024, elements: !733)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !737, file: !582, line: 81, baseType: !740, size: 1024, offset: 1024)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !737, file: !582, line: 83, baseType: !683, size: 32, offset: 2048)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !737, file: !582, line: 86, baseType: !683, size: 32, offset: 2080)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !581, file: !582, line: 417, baseType: !727, size: 1120, offset: 608)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !581, file: !582, line: 420, baseType: !746, size: 96, offset: 1728)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !582, line: 296, size: 96, elements: !747)
!747 = !{!748, !750, !751}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !746, file: !582, line: 298, baseType: !749, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !746, file: !582, line: 299, baseType: !13, size: 32, offset: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !746, file: !582, line: 300, baseType: !586, size: 32, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !581, file: !582, line: 421, baseType: !586, size: 32, offset: 1824)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "_misc", scope: !581, file: !582, line: 422, baseType: !754, size: 32, offset: 1856)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 32)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_misc_reent", file: !582, line: 359, size: 640, elements: !756)
!756 = !{!757, !758, !759, !760, !761, !763, !764, !765, !766, !767, !768}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !755, file: !582, line: 362, baseType: !579, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !755, file: !582, line: 363, baseType: !646, size: 64, offset: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !755, file: !582, line: 364, baseType: !646, size: 64, offset: 96)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !755, file: !582, line: 365, baseType: !646, size: 64, offset: 160)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !755, file: !582, line: 366, baseType: !762, size: 64, offset: 224)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 64, elements: !259)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !755, file: !582, line: 367, baseType: !13, size: 32, offset: 288)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !755, file: !582, line: 368, baseType: !646, size: 64, offset: 320)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !755, file: !582, line: 369, baseType: !646, size: 64, offset: 384)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !755, file: !582, line: 370, baseType: !646, size: 64, offset: 448)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !755, file: !582, line: 371, baseType: !646, size: 64, offset: 512)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !755, file: !582, line: 372, baseType: !646, size: 64, offset: 576)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !581, file: !582, line: 423, baseType: !579, size: 32, offset: 1888)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !655, line: 46, baseType: !7)
!771 = distinct !DICompileUnit(language: DW_LANG_C99, file: !772, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !773, globals: !774, splitDebugInlining: false, nameTableKind: None)
!772 = !DIFile(filename: "syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!773 = !{!579, !577}
!774 = !{!571}
!775 = !{!776, !777, !778, !779}
!776 = !DILocalVariable(name: "r", arg: 1, scope: !573, file: !574, line: 63, type: !580)
!777 = !DILocalVariable(name: "nbytes", arg: 2, scope: !573, file: !574, line: 63, type: !770)
!778 = !DILocalVariable(name: "prev_heap_end", scope: !573, file: !574, line: 67, type: !579)
!779 = !DILocalVariable(name: "stack", scope: !573, file: !574, line: 68, type: !579)
!780 = !DIGlobalVariableExpression(var: !781, expr: !DIExpression())
!781 = distinct !DIGlobalVariable(name: "build_date_time_str", scope: !782, file: !787, line: 4, type: !793, isLocal: false, isDefinition: true)
!782 = distinct !DICompileUnit(language: DW_LANG_C99, file: !783, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !784, splitDebugInlining: false, nameTableKind: None)
!783 = !DIFile(filename: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC/build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!784 = !{!780, !785, !791}
!785 = !DIGlobalVariableExpression(var: !786, expr: !DIExpression())
!786 = distinct !DIGlobalVariable(name: "sw_verno_str", scope: !782, file: !787, line: 5, type: !788, isLocal: false, isDefinition: true)
!787 = !DIFile(filename: "build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 88, elements: !789)
!789 = !{!790}
!790 = !DISubrange(count: 11)
!791 = !DIGlobalVariableExpression(var: !792, expr: !DIExpression())
!792 = distinct !DIGlobalVariable(name: "hw_verno_str", scope: !782, file: !787, line: 6, type: !788, isLocal: false, isDefinition: true)
!793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 248, elements: !794)
!794 = !{!795}
!795 = !DISubrange(count: 31)
!796 = distinct !DICompileUnit(language: DW_LANG_C99, file: !797, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !798, retainedTypes: !799, splitDebugInlining: false, nameTableKind: None)
!797 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_gpio_7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!798 = !{!164}
!799 = !{!58, !60}
!800 = distinct !DICompileUnit(language: DW_LANG_C99, file: !801, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !802, retainedTypes: !808, splitDebugInlining: false, nameTableKind: None)
!801 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_pcnt.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!802 = !{!803, !104}
!803 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !105, line: 55, baseType: !7, size: 32, elements: !804)
!804 = !{!805, !806, !807}
!805 = !DIEnumerator(name: "HAL_PCNT_STATUS_OK", value: 0)
!806 = !DIEnumerator(name: "HAL_PCNT_STATUS_NOT_SUPPORTED", value: 1)
!807 = !DIEnumerator(name: "HAL_PCNT_STATUS_INVALID_PARAMETER", value: 2)
!808 = !{!176, !58}
!809 = distinct !DICompileUnit(language: DW_LANG_C99, file: !810, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !811, retainedTypes: !889, splitDebugInlining: false, nameTableKind: None)
!810 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!811 = !{!812}
!812 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !813, line: 150, baseType: !7, size: 32, elements: !814)
!813 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!814 = !{!815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888}
!815 = !DIEnumerator(name: "ePAD_ANTSEL0", value: 0)
!816 = !DIEnumerator(name: "ePAD_ANTSEL1", value: 1)
!817 = !DIEnumerator(name: "ePAD_ANTSEL2", value: 2)
!818 = !DIEnumerator(name: "ePAD_ANTSEL3", value: 3)
!819 = !DIEnumerator(name: "ePAD_ANTSEL4", value: 4)
!820 = !DIEnumerator(name: "ePAD_ANTSEL5", value: 5)
!821 = !DIEnumerator(name: "ePAD_ANTSEL6", value: 6)
!822 = !DIEnumerator(name: "ePAD_ANTSEL7", value: 7)
!823 = !DIEnumerator(name: "ePAD_IN_GPIO8", value: 8)
!824 = !DIEnumerator(name: "ePAD_IN_GPIO9", value: 9)
!825 = !DIEnumerator(name: "ePAD_IN_GPIO10", value: 10)
!826 = !DIEnumerator(name: "ePAD_IN_GPIO11", value: 11)
!827 = !DIEnumerator(name: "ePAD_IN_GPIO12", value: 12)
!828 = !DIEnumerator(name: "ePAD_IN_GPIO13", value: 13)
!829 = !DIEnumerator(name: "ePAD_IN_GPIO14", value: 14)
!830 = !DIEnumerator(name: "ePAD_IN_GPIO15", value: 15)
!831 = !DIEnumerator(name: "ePAD_IN_GPIO16", value: 16)
!832 = !DIEnumerator(name: "ePAD_IN_GPIO17", value: 17)
!833 = !DIEnumerator(name: "ePAD_IN_GPIO18", value: 18)
!834 = !DIEnumerator(name: "ePAD_IN_GPIO19", value: 19)
!835 = !DIEnumerator(name: "ePAD_IN_GPIO20", value: 20)
!836 = !DIEnumerator(name: "ePAD_IN_GPIO21", value: 21)
!837 = !DIEnumerator(name: "ePAD_IN_GPIO22", value: 22)
!838 = !DIEnumerator(name: "ePAD_IN_UART0_TXD", value: 23)
!839 = !DIEnumerator(name: "ePAD_PERST_N", value: 24)
!840 = !DIEnumerator(name: "ePAD_WAKE_N", value: 25)
!841 = !DIEnumerator(name: "ePAD_CLK_REQ_N", value: 26)
!842 = !DIEnumerator(name: "ePAD_SDIO_CLK", value: 27)
!843 = !DIEnumerator(name: "ePAD_SDIO_CMD", value: 28)
!844 = !DIEnumerator(name: "ePAD_SDIO_DAT3", value: 29)
!845 = !DIEnumerator(name: "ePAD_SDIO_DAT2", value: 30)
!846 = !DIEnumerator(name: "ePAD_SDIO_DAT1", value: 31)
!847 = !DIEnumerator(name: "ePAD_SDIO_DAT0", value: 32)
!848 = !DIEnumerator(name: "ePAD_GPIO0", value: 33)
!849 = !DIEnumerator(name: "ePAD_GPIO1", value: 34)
!850 = !DIEnumerator(name: "ePAD_UART_DBG", value: 35)
!851 = !DIEnumerator(name: "ePAD_UART_RX", value: 36)
!852 = !DIEnumerator(name: "ePAD_UART_TX", value: 37)
!853 = !DIEnumerator(name: "ePAD_UART_RTS", value: 38)
!854 = !DIEnumerator(name: "ePAD_UART_CTS", value: 39)
!855 = !DIEnumerator(name: "ePAD_IN_GPIO44", value: 40)
!856 = !DIEnumerator(name: "ePAD_IN_GPIO45", value: 41)
!857 = !DIEnumerator(name: "ePAD_IN_GPIO46", value: 42)
!858 = !DIEnumerator(name: "ePAD_IN_GPIO47", value: 43)
!859 = !DIEnumerator(name: "ePAD_IN_GPIO48", value: 44)
!860 = !DIEnumerator(name: "ePAD_IN_GPIO49", value: 45)
!861 = !DIEnumerator(name: "ePAD_IN_GPIO50", value: 46)
!862 = !DIEnumerator(name: "ePAD_IN_GPIO51", value: 47)
!863 = !DIEnumerator(name: "ePAD_IN_GPIO52", value: 48)
!864 = !DIEnumerator(name: "ePAD_IN_GPIO53", value: 49)
!865 = !DIEnumerator(name: "ePAD_IN_GPIO54", value: 50)
!866 = !DIEnumerator(name: "ePAD_IN_PWM2", value: 51)
!867 = !DIEnumerator(name: "ePAD_IN_PWM3", value: 52)
!868 = !DIEnumerator(name: "ePAD_IN_PWM4", value: 53)
!869 = !DIEnumerator(name: "ePAD_IN_PWM5", value: 54)
!870 = !DIEnumerator(name: "ePAD_IN_PWM6", value: 55)
!871 = !DIEnumerator(name: "ePAD_IN_PWM7", value: 56)
!872 = !DIEnumerator(name: "ePAD_WF_RF_DIS_B", value: 57)
!873 = !DIEnumerator(name: "ePAD_BT_RF_DIS_B", value: 58)
!874 = !DIEnumerator(name: "ePAD_WF_LED_B", value: 59)
!875 = !DIEnumerator(name: "ePAD_BT_LED_B", value: 60)
!876 = !DIEnumerator(name: "ePAD_IN_ADC4", value: 61)
!877 = !DIEnumerator(name: "ePAD_IN_ADC5", value: 62)
!878 = !DIEnumerator(name: "ePAD_IN_ADC6", value: 63)
!879 = !DIEnumerator(name: "ePAD_IN_ADC7", value: 64)
!880 = !DIEnumerator(name: "ePAD_IN_ADC8", value: 65)
!881 = !DIEnumerator(name: "ePAD_IN_ADC9", value: 66)
!882 = !DIEnumerator(name: "ePAD_IN_ADC10", value: 67)
!883 = !DIEnumerator(name: "ePAD_IN_ADC11", value: 68)
!884 = !DIEnumerator(name: "ePAD_IN_ADC12", value: 69)
!885 = !DIEnumerator(name: "ePAD_IN_ADC13", value: 70)
!886 = !DIEnumerator(name: "ePAD_IN_ADC14", value: 71)
!887 = !DIEnumerator(name: "ePAD_IN_ADC15", value: 72)
!888 = !DIEnumerator(name: "ePAD_NUM", value: 73)
!889 = !{!58, !80}
!890 = distinct !DICompileUnit(language: DW_LANG_C99, file: !891, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !892, splitDebugInlining: false, nameTableKind: None)
!891 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!892 = !{!893, !918}
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 32)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !254, line: 418, baseType: !895)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !254, line: 395, size: 1120, elements: !896)
!896 = !{!897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !895, file: !254, line: 397, baseType: !293, size: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !895, file: !254, line: 398, baseType: !191, size: 32, offset: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !895, file: !254, line: 399, baseType: !191, size: 32, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !895, file: !254, line: 400, baseType: !191, size: 32, offset: 96)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !895, file: !254, line: 401, baseType: !191, size: 32, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !895, file: !254, line: 402, baseType: !191, size: 32, offset: 160)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !895, file: !254, line: 403, baseType: !300, size: 96, offset: 192)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !895, file: !254, line: 404, baseType: !191, size: 32, offset: 288)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !895, file: !254, line: 405, baseType: !191, size: 32, offset: 320)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !895, file: !254, line: 406, baseType: !191, size: 32, offset: 352)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !895, file: !254, line: 407, baseType: !191, size: 32, offset: 384)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !895, file: !254, line: 408, baseType: !191, size: 32, offset: 416)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !895, file: !254, line: 409, baseType: !191, size: 32, offset: 448)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !895, file: !254, line: 410, baseType: !191, size: 32, offset: 480)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !895, file: !254, line: 411, baseType: !311, size: 64, offset: 512)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !895, file: !254, line: 412, baseType: !293, size: 32, offset: 576)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !895, file: !254, line: 413, baseType: !293, size: 32, offset: 608)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !895, file: !254, line: 414, baseType: !317, size: 128, offset: 640)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !895, file: !254, line: 415, baseType: !321, size: 160, offset: 768)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !895, file: !254, line: 416, baseType: !325, size: 160, offset: 928)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !895, file: !254, line: 417, baseType: !191, size: 32, offset: 1088)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 32)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !254, line: 378, baseType: !920)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !254, line: 363, size: 28704, elements: !921)
!921 = !{!922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !920, file: !254, line: 365, baseType: !258, size: 256)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !920, file: !254, line: 366, baseType: !262, size: 768, offset: 256)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !920, file: !254, line: 367, baseType: !258, size: 256, offset: 1024)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !920, file: !254, line: 368, baseType: !262, size: 768, offset: 1280)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !920, file: !254, line: 369, baseType: !258, size: 256, offset: 2048)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !920, file: !254, line: 370, baseType: !262, size: 768, offset: 2304)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !920, file: !254, line: 371, baseType: !258, size: 256, offset: 3072)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !920, file: !254, line: 372, baseType: !262, size: 768, offset: 3328)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !920, file: !254, line: 373, baseType: !258, size: 256, offset: 4096)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !920, file: !254, line: 374, baseType: !273, size: 1792, offset: 4352)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !920, file: !254, line: 375, baseType: !277, size: 1920, offset: 6144)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !920, file: !254, line: 376, baseType: !284, size: 20608, offset: 8064)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !920, file: !254, line: 377, baseType: !191, size: 32, offset: 28672)
!935 = distinct !DICompileUnit(language: DW_LANG_C99, file: !936, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !937, splitDebugInlining: false, nameTableKind: None)
!936 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!937 = !{!128, !812}
!938 = distinct !DICompileUnit(language: DW_LANG_C99, file: !939, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !940, splitDebugInlining: false, nameTableKind: None)
!939 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/timer.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!940 = !{!621, !58}
!941 = distinct !DICompileUnit(language: DW_LANG_C99, file: !942, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!942 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_log.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!943 = distinct !DICompileUnit(language: DW_LANG_C99, file: !944, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !945, retainedTypes: !1004, splitDebugInlining: false, nameTableKind: None)
!944 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!945 = !{!946, !953, !128, !984, !990, !994, !998, !159}
!946 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !947, line: 233, baseType: !13, size: 32, elements: !948)
!947 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!948 = !{!949, !950, !951, !952}
!949 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR", value: -3)
!950 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR_PORT", value: -2)
!951 = !DIEnumerator(name: "HAL_PINMUX_STATUS_INVALID_FUNCTION", value: -1)
!952 = !DIEnumerator(name: "HAL_PINMUX_STATUS_OK", value: 0)
!953 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !96, line: 249, baseType: !7, size: 32, elements: !954)
!954 = !{!955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983}
!955 = !DIEnumerator(name: "HAL_GPIO_0", value: 0)
!956 = !DIEnumerator(name: "HAL_GPIO_1", value: 1)
!957 = !DIEnumerator(name: "HAL_GPIO_2", value: 2)
!958 = !DIEnumerator(name: "HAL_GPIO_3", value: 3)
!959 = !DIEnumerator(name: "HAL_GPIO_4", value: 4)
!960 = !DIEnumerator(name: "HAL_GPIO_5", value: 5)
!961 = !DIEnumerator(name: "HAL_GPIO_6", value: 6)
!962 = !DIEnumerator(name: "HAL_GPIO_7", value: 7)
!963 = !DIEnumerator(name: "HAL_GPIO_24", value: 24)
!964 = !DIEnumerator(name: "HAL_GPIO_25", value: 25)
!965 = !DIEnumerator(name: "HAL_GPIO_26", value: 26)
!966 = !DIEnumerator(name: "HAL_GPIO_27", value: 27)
!967 = !DIEnumerator(name: "HAL_GPIO_28", value: 28)
!968 = !DIEnumerator(name: "HAL_GPIO_29", value: 29)
!969 = !DIEnumerator(name: "HAL_GPIO_30", value: 30)
!970 = !DIEnumerator(name: "HAL_GPIO_31", value: 31)
!971 = !DIEnumerator(name: "HAL_GPIO_32", value: 32)
!972 = !DIEnumerator(name: "HAL_GPIO_33", value: 33)
!973 = !DIEnumerator(name: "HAL_GPIO_34", value: 34)
!974 = !DIEnumerator(name: "HAL_GPIO_35", value: 35)
!975 = !DIEnumerator(name: "HAL_GPIO_36", value: 36)
!976 = !DIEnumerator(name: "HAL_GPIO_37", value: 37)
!977 = !DIEnumerator(name: "HAL_GPIO_38", value: 38)
!978 = !DIEnumerator(name: "HAL_GPIO_39", value: 39)
!979 = !DIEnumerator(name: "HAL_GPIO_57", value: 57)
!980 = !DIEnumerator(name: "HAL_GPIO_58", value: 58)
!981 = !DIEnumerator(name: "HAL_GPIO_59", value: 59)
!982 = !DIEnumerator(name: "HAL_GPIO_60", value: 60)
!983 = !DIEnumerator(name: "HAL_GPIO_MAX", value: 61)
!984 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !947, line: 224, baseType: !13, size: 32, elements: !985)
!985 = !{!986, !987, !988, !989}
!986 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR", value: -3)
!987 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR_PIN", value: -2)
!988 = !DIEnumerator(name: "HAL_GPIO_STATUS_INVALID_PARAMETER", value: -1)
!989 = !DIEnumerator(name: "HAL_GPIO_STATUS_OK", value: 0)
!990 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !947, line: 217, baseType: !7, size: 32, elements: !991)
!991 = !{!992, !993}
!992 = !DIEnumerator(name: "HAL_GPIO_DATA_LOW", value: 0)
!993 = !DIEnumerator(name: "HAL_GPIO_DATA_HIGH", value: 1)
!994 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !947, line: 210, baseType: !7, size: 32, elements: !995)
!995 = !{!996, !997}
!996 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_INPUT", value: 0)
!997 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_OUTPUT", value: 1)
!998 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !947, line: 242, baseType: !7, size: 32, elements: !999)
!999 = !{!1000, !1001, !1002, !1003}
!1000 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_4MA", value: 0)
!1001 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_8MA", value: 1)
!1002 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_12MA", value: 2)
!1003 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_16MA", value: 3)
!1004 = !{!1005, !249, !1006, !279, !1007, !1008}
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_IOT_GPIO_NAME_T", file: !129, line: 87, baseType: !128)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_data_t", file: !947, line: 220, baseType: !990)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_driving_current_t", file: !947, line: 247, baseType: !998)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_DIR_T", file: !160, line: 60, baseType: !159)
!1009 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1010, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1011, retainedTypes: !1012, splitDebugInlining: false, nameTableKind: None)
!1010 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/src/main.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!1011 = !{!404, !409, !425, !431, !435, !953, !88, !100, !95, !994, !990}
!1012 = !{!13}
!1013 = !{!"Ubuntu clang version 14.0.6"}
!1014 = !{i32 7, !"Dwarf Version", i32 2}
!1015 = !{i32 2, !"Debug Info Version", i32 3}
!1016 = !{i32 1, !"wchar_size", i32 4}
!1017 = !{i32 1, !"min_enum_size", i32 4}
!1018 = !{i32 1, !"branch-target-enforcement", i32 0}
!1019 = !{i32 1, !"sign-return-address", i32 0}
!1020 = !{i32 1, !"sign-return-address-all", i32 0}
!1021 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!1022 = !{i32 7, !"frame-pointer", i32 2}
!1023 = distinct !DISubprogram(name: "GPT_ResetTimer", scope: !3, file: !3, line: 73, type: !1024, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1026)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{null, !60, !60, !119}
!1026 = !{!1027, !1028, !1029}
!1027 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1023, file: !3, line: 73, type: !60)
!1028 = !DILocalVariable(name: "countValue", arg: 2, scope: !1023, file: !3, line: 73, type: !60)
!1029 = !DILocalVariable(name: "autoRepeat", arg: 3, scope: !1023, file: !3, line: 73, type: !119)
!1030 = !DILocation(line: 0, scope: !1023)
!1031 = !DILocation(line: 75, column: 5, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 75, column: 5)
!1033 = !DILocation(line: 75, column: 5, scope: !1023)
!1034 = !DILocation(line: 75, column: 5, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 75, column: 5)
!1036 = distinct !{!1036, !1034, !1034}
!1037 = !DILocation(line: 77, column: 9, scope: !1023)
!1038 = !DILocation(line: 78, column: 30, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 77, column: 24)
!1040 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 77, column: 9)
!1041 = !DILocation(line: 0, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 79, column: 13)
!1043 = !DILocation(line: 79, column: 13, scope: !1039)
!1044 = !DILocation(line: 80, column: 34, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 79, column: 37)
!1046 = !DILocation(line: 81, column: 9, scope: !1045)
!1047 = !DILocation(line: 82, column: 34, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 81, column: 16)
!1049 = !DILocation(line: 85, column: 30, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 84, column: 31)
!1051 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 84, column: 16)
!1052 = !DILocation(line: 0, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 86, column: 13)
!1054 = !DILocation(line: 86, column: 13, scope: !1050)
!1055 = !DILocation(line: 87, column: 34, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 86, column: 37)
!1057 = !DILocation(line: 88, column: 9, scope: !1056)
!1058 = !DILocation(line: 89, column: 34, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 88, column: 16)
!1060 = !DILocation(line: 92, column: 1, scope: !1023)
!1061 = distinct !DISubprogram(name: "GPT_Start", scope: !3, file: !3, line: 94, type: !1062, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1064)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{null, !60}
!1064 = !{!1065}
!1065 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1061, file: !3, line: 94, type: !60)
!1066 = !DILocation(line: 0, scope: !1061)
!1067 = !DILocation(line: 96, column: 5, scope: !1061)
!1068 = !DILocation(line: 96, column: 5, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 96, column: 5)
!1070 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 96, column: 5)
!1071 = distinct !{!1071, !1068, !1068}
!1072 = !DILocation(line: 99, column: 30, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 98, column: 24)
!1074 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 98, column: 9)
!1075 = !DILocation(line: 100, column: 9, scope: !1073)
!1076 = !DILocation(line: 101, column: 5, scope: !1073)
!1077 = !DILocation(line: 102, column: 30, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 101, column: 31)
!1079 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 101, column: 16)
!1080 = !DILocation(line: 103, column: 9, scope: !1078)
!1081 = !DILocation(line: 104, column: 5, scope: !1078)
!1082 = !DILocation(line: 105, column: 30, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 104, column: 31)
!1084 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 104, column: 16)
!1085 = !DILocation(line: 106, column: 5, scope: !1083)
!1086 = !DILocation(line: 108, column: 1, scope: !1061)
!1087 = distinct !DISubprogram(name: "GPT_Stop", scope: !3, file: !3, line: 110, type: !1062, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1088)
!1088 = !{!1089}
!1089 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1087, file: !3, line: 110, type: !60)
!1090 = !DILocation(line: 0, scope: !1087)
!1091 = !DILocation(line: 112, column: 9, scope: !1087)
!1092 = !DILocation(line: 113, column: 30, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 112, column: 24)
!1094 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 112, column: 9)
!1095 = !DILocation(line: 114, column: 30, scope: !1093)
!1096 = !DILocation(line: 115, column: 31, scope: !1093)
!1097 = !DILocation(line: 117, column: 5, scope: !1093)
!1098 = !DILocation(line: 118, column: 30, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 117, column: 31)
!1100 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 117, column: 16)
!1101 = !DILocation(line: 119, column: 30, scope: !1099)
!1102 = !DILocation(line: 120, column: 31, scope: !1099)
!1103 = !DILocation(line: 121, column: 5, scope: !1099)
!1104 = !DILocation(line: 122, column: 30, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 121, column: 31)
!1106 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 121, column: 16)
!1107 = !DILocation(line: 123, column: 5, scope: !1105)
!1108 = !DILocation(line: 124, column: 30, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 123, column: 31)
!1110 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 123, column: 16)
!1111 = !DILocation(line: 125, column: 5, scope: !1109)
!1112 = !DILocation(line: 128, column: 1, scope: !1087)
!1113 = distinct !DISubprogram(name: "GPT_INT_Handler", scope: !3, file: !3, line: 130, type: !334, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1114)
!1114 = !{!1115, !1116}
!1115 = !DILocalVariable(name: "irq_number", arg: 1, scope: !1113, file: !3, line: 130, type: !248)
!1116 = !DILocalVariable(name: "GPT_Status", scope: !1113, file: !3, line: 132, type: !227)
!1117 = !DILocation(line: 0, scope: !1113)
!1118 = !DILocation(line: 135, column: 18, scope: !1113)
!1119 = !DILocation(line: 136, column: 26, scope: !1113)
!1120 = !DILocation(line: 136, column: 24, scope: !1113)
!1121 = !DILocation(line: 138, column: 20, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 138, column: 9)
!1123 = !DILocation(line: 138, column: 9, scope: !1113)
!1124 = !DILocation(line: 141, column: 27, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 141, column: 16)
!1126 = !DILocation(line: 141, column: 16, scope: !1122)
!1127 = !DILocation(line: 0, scope: !1122)
!1128 = !DILocation(line: 145, column: 1, scope: !1113)
!1129 = distinct !DISubprogram(name: "GPT_init", scope: !3, file: !3, line: 147, type: !1130, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1132)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{null, !60, !60, !74}
!1132 = !{!1133, !1134, !1135}
!1133 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1129, file: !3, line: 147, type: !60)
!1134 = !DILocalVariable(name: "speed_32us", arg: 2, scope: !1129, file: !3, line: 147, type: !60)
!1135 = !DILocalVariable(name: "GPT_Callback", arg: 3, scope: !1129, file: !3, line: 147, type: !74)
!1136 = !DILocation(line: 0, scope: !1129)
!1137 = !DILocation(line: 149, column: 5, scope: !1129)
!1138 = !DILocation(line: 149, column: 5, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 149, column: 5)
!1140 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 149, column: 5)
!1141 = distinct !{!1141, !1138, !1138}
!1142 = !DILocation(line: 149, column: 5, scope: !1140)
!1143 = !DILocation(line: 151, column: 23, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 151, column: 9)
!1145 = !DILocation(line: 152, column: 9, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 151, column: 41)
!1147 = !DILocation(line: 153, column: 9, scope: !1146)
!1148 = !DILocation(line: 154, column: 9, scope: !1146)
!1149 = !DILocation(line: 155, column: 5, scope: !1146)
!1150 = !DILocation(line: 157, column: 9, scope: !1129)
!1151 = !DILocation(line: 158, column: 37, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 157, column: 24)
!1153 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 157, column: 9)
!1154 = !DILocation(line: 159, column: 30, scope: !1152)
!1155 = !DILocation(line: 160, column: 45, scope: !1152)
!1156 = !DILocation(line: 160, column: 30, scope: !1152)
!1157 = !DILocation(line: 161, column: 5, scope: !1152)
!1158 = !DILocation(line: 162, column: 37, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 161, column: 31)
!1160 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 161, column: 16)
!1161 = !DILocation(line: 163, column: 30, scope: !1159)
!1162 = !DILocation(line: 164, column: 45, scope: !1159)
!1163 = !DILocation(line: 164, column: 30, scope: !1159)
!1164 = !DILocation(line: 165, column: 5, scope: !1159)
!1165 = !DILocation(line: 166, column: 59, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 165, column: 31)
!1167 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 165, column: 16)
!1168 = !DILocation(line: 166, column: 45, scope: !1166)
!1169 = !DILocation(line: 166, column: 30, scope: !1166)
!1170 = !DILocation(line: 167, column: 5, scope: !1166)
!1171 = !DILocation(line: 168, column: 59, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 167, column: 31)
!1173 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 167, column: 16)
!1174 = !DILocation(line: 168, column: 45, scope: !1172)
!1175 = !DILocation(line: 168, column: 30, scope: !1172)
!1176 = !DILocation(line: 169, column: 30, scope: !1172)
!1177 = !DILocation(line: 170, column: 5, scope: !1172)
!1178 = !DILocation(line: 171, column: 1, scope: !1129)
!1179 = distinct !DISubprogram(name: "GPT_return_current_count", scope: !3, file: !3, line: 173, type: !1180, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1182)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!60, !60}
!1182 = !{!1183, !1184}
!1183 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1179, file: !3, line: 173, type: !60)
!1184 = !DILocalVariable(name: "current_count", scope: !1179, file: !3, line: 175, type: !60)
!1185 = !DILocation(line: 0, scope: !1179)
!1186 = !DILocation(line: 177, column: 5, scope: !1179)
!1187 = !DILocation(line: 177, column: 5, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 177, column: 5)
!1189 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 177, column: 5)
!1190 = distinct !{!1190, !1187, !1187}
!1191 = !DILocation(line: 183, column: 5, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 181, column: 31)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 181, column: 16)
!1194 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 179, column: 9)
!1195 = !DILocation(line: 185, column: 5, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 183, column: 31)
!1197 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 183, column: 16)
!1198 = !DILocation(line: 187, column: 5, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 185, column: 31)
!1200 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 185, column: 16)
!1201 = !DILocation(line: 0, scope: !1194)
!1202 = !DILocation(line: 189, column: 5, scope: !1179)
!1203 = distinct !DISubprogram(name: "CM4_GPT2Init", scope: !3, file: !3, line: 193, type: !75, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1204)
!1204 = !{}
!1205 = !DILocation(line: 195, column: 5, scope: !1203)
!1206 = !DILocation(line: 196, column: 1, scope: !1203)
!1207 = distinct !DISubprogram(name: "CM4_GPT4Init", scope: !3, file: !3, line: 198, type: !75, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1204)
!1208 = !DILocation(line: 200, column: 5, scope: !1207)
!1209 = !DILocation(line: 201, column: 1, scope: !1207)
!1210 = distinct !DISubprogram(name: "hal_gpc_init", scope: !86, file: !86, line: 49, type: !1211, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1222)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!1213, !1214, !1215}
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpc_status_t", file: !89, line: 267, baseType: !88)
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpc_port_t", file: !96, line: 850, baseType: !95)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 32)
!1216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1217)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpc_config_t", file: !89, line: 285, baseType: !1218)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !89, line: 283, size: 32, elements: !1219)
!1219 = !{!1220}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "edge", scope: !1218, file: !89, line: 284, baseType: !1221, size: 32)
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpc_edge_t", file: !89, line: 259, baseType: !100)
!1222 = !{!1223, !1224}
!1223 = !DILocalVariable(name: "gpc_port", arg: 1, scope: !1210, file: !86, line: 49, type: !1214)
!1224 = !DILocalVariable(name: "gpc_config", arg: 2, scope: !1210, file: !86, line: 49, type: !1215)
!1225 = !DILocation(line: 0, scope: !1210)
!1226 = !DILocation(line: 51, column: 10, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1210, file: !86, line: 51, column: 9)
!1228 = !DILocation(line: 51, column: 43, scope: !1227)
!1229 = !DILocation(line: 51, column: 47, scope: !1227)
!1230 = !DILocation(line: 51, column: 9, scope: !1210)
!1231 = !DILocation(line: 52, column: 9, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1227, file: !86, line: 51, column: 73)
!1233 = !DILocation(line: 53, column: 9, scope: !1232)
!1234 = !DILocation(line: 55, column: 18, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1210, file: !86, line: 55, column: 9)
!1236 = !DILocation(line: 55, column: 9, scope: !1210)
!1237 = !DILocation(line: 59, column: 21, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1210, file: !86, line: 59, column: 9)
!1239 = !DILocation(line: 59, column: 26, scope: !1238)
!1240 = !DILocation(line: 0, scope: !1238)
!1241 = !DILocation(line: 65, column: 21, scope: !1210)
!1242 = !DILocation(line: 66, column: 28, scope: !1210)
!1243 = !DILocation(line: 68, column: 5, scope: !1210)
!1244 = !DILocation(line: 69, column: 1, scope: !1210)
!1245 = distinct !DISubprogram(name: "hal_gpc_deinit", scope: !86, file: !86, line: 71, type: !1246, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1248)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!1213, !1214}
!1248 = !{!1249}
!1249 = !DILocalVariable(name: "gpc_port", arg: 1, scope: !1245, file: !86, line: 71, type: !1214)
!1250 = !DILocation(line: 0, scope: !1245)
!1251 = !DILocation(line: 74, column: 18, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1245, file: !86, line: 74, column: 9)
!1253 = !DILocation(line: 74, column: 9, scope: !1245)
!1254 = !DILocation(line: 78, column: 9, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1245, file: !86, line: 78, column: 9)
!1256 = !DILocation(line: 78, column: 9, scope: !1245)
!1257 = !DILocation(line: 81, column: 15, scope: !1245)
!1258 = !DILocation(line: 82, column: 21, scope: !1245)
!1259 = !DILocation(line: 83, column: 28, scope: !1245)
!1260 = !DILocation(line: 84, column: 5, scope: !1245)
!1261 = !DILocation(line: 85, column: 1, scope: !1245)
!1262 = distinct !DISubprogram(name: "hal_gpc_get_running_status", scope: !86, file: !86, line: 87, type: !1263, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1267)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!1213, !1214, !1265}
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 32)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpc_running_status_t", file: !89, line: 273, baseType: !109)
!1267 = !{!1268, !1269}
!1268 = !DILocalVariable(name: "gpc_port", arg: 1, scope: !1262, file: !86, line: 87, type: !1214)
!1269 = !DILocalVariable(name: "running_state", arg: 2, scope: !1262, file: !86, line: 87, type: !1265)
!1270 = !DILocation(line: 0, scope: !1262)
!1271 = !DILocation(line: 89, column: 18, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1262, file: !86, line: 89, column: 9)
!1273 = !DILocation(line: 89, column: 9, scope: !1262)
!1274 = !DILocation(line: 93, column: 9, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1262, file: !86, line: 93, column: 9)
!1276 = !DILocation(line: 0, scope: !1275)
!1277 = !DILocation(line: 99, column: 5, scope: !1262)
!1278 = !DILocation(line: 101, column: 1, scope: !1262)
!1279 = distinct !DISubprogram(name: "hal_gpc_enable", scope: !86, file: !86, line: 103, type: !1246, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1280)
!1280 = !{!1281}
!1281 = !DILocalVariable(name: "gpc_port", arg: 1, scope: !1279, file: !86, line: 103, type: !1214)
!1282 = !DILocation(line: 0, scope: !1279)
!1283 = !DILocation(line: 105, column: 9, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1279, file: !86, line: 105, column: 9)
!1285 = !DILocation(line: 105, column: 9, scope: !1279)
!1286 = !DILocation(line: 108, column: 18, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1279, file: !86, line: 108, column: 9)
!1288 = !DILocation(line: 108, column: 9, scope: !1279)
!1289 = !DILocation(line: 112, column: 27, scope: !1279)
!1290 = !DILocation(line: 112, column: 5, scope: !1279)
!1291 = !DILocation(line: 113, column: 21, scope: !1279)
!1292 = !DILocation(line: 115, column: 5, scope: !1279)
!1293 = !DILocation(line: 116, column: 1, scope: !1279)
!1294 = distinct !DISubprogram(name: "hal_gpc_disable", scope: !86, file: !86, line: 118, type: !1246, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1295)
!1295 = !{!1296}
!1296 = !DILocalVariable(name: "gpc_port", arg: 1, scope: !1294, file: !86, line: 118, type: !1214)
!1297 = !DILocation(line: 0, scope: !1294)
!1298 = !DILocation(line: 120, column: 9, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1294, file: !86, line: 120, column: 9)
!1300 = !DILocation(line: 120, column: 9, scope: !1294)
!1301 = !DILocation(line: 124, column: 18, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1294, file: !86, line: 124, column: 9)
!1303 = !DILocation(line: 124, column: 9, scope: !1294)
!1304 = !DILocation(line: 128, column: 28, scope: !1294)
!1305 = !DILocation(line: 128, column: 5, scope: !1294)
!1306 = !DILocation(line: 129, column: 21, scope: !1294)
!1307 = !DILocation(line: 131, column: 5, scope: !1294)
!1308 = !DILocation(line: 132, column: 1, scope: !1294)
!1309 = distinct !DISubprogram(name: "hal_gpc_get_and_clear_count", scope: !86, file: !86, line: 134, type: !1310, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1313)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!1213, !1214, !1312}
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 32)
!1313 = !{!1314, !1315}
!1314 = !DILocalVariable(name: "gpc_port", arg: 1, scope: !1309, file: !86, line: 134, type: !1214)
!1315 = !DILocalVariable(name: "count", arg: 2, scope: !1309, file: !86, line: 134, type: !1312)
!1316 = !DILocation(line: 0, scope: !1309)
!1317 = !DILocation(line: 136, column: 9, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1309, file: !86, line: 136, column: 9)
!1319 = !DILocation(line: 136, column: 9, scope: !1309)
!1320 = !DILocation(line: 139, column: 18, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1309, file: !86, line: 139, column: 9)
!1322 = !DILocation(line: 139, column: 9, scope: !1309)
!1323 = !DILocation(line: 143, column: 14, scope: !1309)
!1324 = !DILocation(line: 143, column: 12, scope: !1309)
!1325 = !DILocation(line: 145, column: 5, scope: !1309)
!1326 = !DILocation(line: 146, column: 1, scope: !1309)
!1327 = distinct !DISubprogram(name: "halGPIO_ConfDirection", scope: !797, file: !797, line: 54, type: !1328, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !1331)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!1330, !80, !229}
!1330 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !6, line: 56, baseType: !13)
!1331 = !{!1332, !1333, !1334, !1336}
!1332 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1327, file: !797, line: 54, type: !80)
!1333 = !DILocalVariable(name: "outEnable", arg: 2, scope: !1327, file: !797, line: 54, type: !229)
!1334 = !DILocalVariable(name: "no", scope: !1327, file: !797, line: 57, type: !1335)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !6, line: 60, baseType: !228)
!1336 = !DILocalVariable(name: "remainder", scope: !1327, file: !797, line: 58, type: !1335)
!1337 = !DILocation(line: 0, scope: !1327)
!1338 = !DILocation(line: 59, column: 19, scope: !1327)
!1339 = !DILocation(line: 60, column: 17, scope: !1327)
!1340 = !DILocation(line: 61, column: 5, scope: !1327)
!1341 = !DILocation(line: 65, column: 27, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !797, line: 65, column: 17)
!1343 = distinct !DILexicalBlock(scope: !1327, file: !797, line: 61, column: 17)
!1344 = !DILocation(line: 0, scope: !1342)
!1345 = !DILocation(line: 65, column: 17, scope: !1343)
!1346 = !DILocation(line: 66, column: 21, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1342, file: !797, line: 65, column: 33)
!1348 = !DILocation(line: 67, column: 73, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !797, line: 66, column: 38)
!1350 = distinct !DILexicalBlock(scope: !1347, file: !797, line: 66, column: 21)
!1351 = !DILocation(line: 67, column: 69, scope: !1349)
!1352 = !DILocation(line: 67, column: 66, scope: !1349)
!1353 = !DILocation(line: 68, column: 17, scope: !1349)
!1354 = !DILocation(line: 68, column: 28, scope: !1350)
!1355 = !DILocation(line: 69, column: 77, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !797, line: 68, column: 45)
!1357 = distinct !DILexicalBlock(scope: !1350, file: !797, line: 68, column: 28)
!1358 = !DILocation(line: 70, column: 77, scope: !1356)
!1359 = !DILocation(line: 71, column: 17, scope: !1356)
!1360 = !DILocation(line: 72, column: 77, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !797, line: 71, column: 45)
!1362 = distinct !DILexicalBlock(scope: !1357, file: !797, line: 71, column: 28)
!1363 = !DILocation(line: 73, column: 77, scope: !1361)
!1364 = !DILocation(line: 74, column: 17, scope: !1361)
!1365 = !DILocation(line: 75, column: 79, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !797, line: 74, column: 45)
!1367 = distinct !DILexicalBlock(scope: !1362, file: !797, line: 74, column: 28)
!1368 = !DILocation(line: 76, column: 79, scope: !1366)
!1369 = !DILocation(line: 77, column: 17, scope: !1366)
!1370 = !DILocation(line: 78, column: 79, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !797, line: 77, column: 45)
!1372 = distinct !DILexicalBlock(scope: !1367, file: !797, line: 77, column: 28)
!1373 = !DILocation(line: 79, column: 79, scope: !1371)
!1374 = !DILocation(line: 80, column: 17, scope: !1371)
!1375 = !DILocation(line: 81, column: 79, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !797, line: 80, column: 45)
!1377 = distinct !DILexicalBlock(scope: !1372, file: !797, line: 80, column: 28)
!1378 = !DILocation(line: 82, column: 79, scope: !1376)
!1379 = !DILocation(line: 83, column: 17, scope: !1376)
!1380 = !DILocation(line: 85, column: 17, scope: !1347)
!1381 = !DILocation(line: 86, column: 13, scope: !1347)
!1382 = !DILocation(line: 88, column: 21, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1342, file: !797, line: 86, column: 20)
!1384 = !DILocation(line: 89, column: 72, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !797, line: 88, column: 38)
!1386 = distinct !DILexicalBlock(scope: !1383, file: !797, line: 88, column: 21)
!1387 = !DILocation(line: 89, column: 66, scope: !1385)
!1388 = !DILocation(line: 90, column: 17, scope: !1385)
!1389 = !DILocation(line: 90, column: 28, scope: !1386)
!1390 = !DILocation(line: 91, column: 77, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !797, line: 90, column: 45)
!1392 = distinct !DILexicalBlock(scope: !1386, file: !797, line: 90, column: 28)
!1393 = !DILocation(line: 92, column: 17, scope: !1391)
!1394 = !DILocation(line: 93, column: 77, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !797, line: 92, column: 45)
!1396 = distinct !DILexicalBlock(scope: !1392, file: !797, line: 92, column: 28)
!1397 = !DILocation(line: 94, column: 17, scope: !1395)
!1398 = !DILocation(line: 95, column: 79, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !797, line: 94, column: 45)
!1400 = distinct !DILexicalBlock(scope: !1396, file: !797, line: 94, column: 28)
!1401 = !DILocation(line: 96, column: 17, scope: !1399)
!1402 = !DILocation(line: 97, column: 79, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !797, line: 96, column: 45)
!1404 = distinct !DILexicalBlock(scope: !1400, file: !797, line: 96, column: 28)
!1405 = !DILocation(line: 98, column: 17, scope: !1403)
!1406 = !DILocation(line: 99, column: 79, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !797, line: 98, column: 45)
!1408 = distinct !DILexicalBlock(scope: !1404, file: !797, line: 98, column: 28)
!1409 = !DILocation(line: 100, column: 17, scope: !1407)
!1410 = !DILocation(line: 103, column: 17, scope: !1383)
!1411 = !DILocation(line: 109, column: 27, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1343, file: !797, line: 109, column: 17)
!1413 = !DILocation(line: 0, scope: !1412)
!1414 = !DILocation(line: 109, column: 17, scope: !1343)
!1415 = !DILocation(line: 110, column: 21, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1412, file: !797, line: 109, column: 33)
!1417 = !DILocation(line: 111, column: 73, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !797, line: 110, column: 36)
!1419 = distinct !DILexicalBlock(scope: !1416, file: !797, line: 110, column: 21)
!1420 = !DILocation(line: 111, column: 69, scope: !1418)
!1421 = !DILocation(line: 111, column: 66, scope: !1418)
!1422 = !DILocation(line: 112, column: 17, scope: !1418)
!1423 = !DILocation(line: 113, column: 79, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1419, file: !797, line: 112, column: 24)
!1425 = !DILocation(line: 114, column: 79, scope: !1424)
!1426 = !DILocation(line: 117, column: 17, scope: !1416)
!1427 = !DILocation(line: 118, column: 13, scope: !1416)
!1428 = !DILocation(line: 120, column: 21, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1412, file: !797, line: 118, column: 20)
!1430 = !DILocation(line: 121, column: 72, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !797, line: 120, column: 36)
!1432 = distinct !DILexicalBlock(scope: !1429, file: !797, line: 120, column: 21)
!1433 = !DILocation(line: 121, column: 66, scope: !1431)
!1434 = !DILocation(line: 122, column: 17, scope: !1431)
!1435 = !DILocation(line: 123, column: 79, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1432, file: !797, line: 122, column: 24)
!1437 = !DILocation(line: 126, column: 17, scope: !1429)
!1438 = !DILocation(line: 133, column: 1, scope: !1327)
!1439 = distinct !DISubprogram(name: "halGPO_Write", scope: !797, file: !797, line: 136, type: !1328, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !1440)
!1440 = !{!1441, !1442, !1443, !1444}
!1441 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1439, file: !797, line: 136, type: !80)
!1442 = !DILocalVariable(name: "writeValue", arg: 2, scope: !1439, file: !797, line: 136, type: !229)
!1443 = !DILocalVariable(name: "no", scope: !1439, file: !797, line: 138, type: !1335)
!1444 = !DILocalVariable(name: "remainder", scope: !1439, file: !797, line: 139, type: !1335)
!1445 = !DILocation(line: 0, scope: !1439)
!1446 = !DILocation(line: 140, column: 19, scope: !1439)
!1447 = !DILocation(line: 141, column: 17, scope: !1439)
!1448 = !DILocation(line: 142, column: 5, scope: !1439)
!1449 = !DILocation(line: 145, column: 17, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !797, line: 145, column: 17)
!1451 = distinct !DILexicalBlock(scope: !1439, file: !797, line: 142, column: 17)
!1452 = !DILocation(line: 0, scope: !1450)
!1453 = !DILocation(line: 145, column: 17, scope: !1451)
!1454 = !DILocation(line: 146, column: 17, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1450, file: !797, line: 145, column: 29)
!1456 = !DILocation(line: 147, column: 13, scope: !1455)
!1457 = !DILocation(line: 148, column: 17, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1450, file: !797, line: 147, column: 20)
!1459 = !DILocation(line: 153, column: 17, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1451, file: !797, line: 153, column: 17)
!1461 = !DILocation(line: 0, scope: !1460)
!1462 = !DILocation(line: 153, column: 17, scope: !1451)
!1463 = !DILocation(line: 154, column: 17, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1460, file: !797, line: 153, column: 29)
!1465 = !DILocation(line: 155, column: 13, scope: !1464)
!1466 = !DILocation(line: 156, column: 17, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1460, file: !797, line: 155, column: 20)
!1468 = !DILocation(line: 163, column: 1, scope: !1439)
!1469 = distinct !DISubprogram(name: "halgetGPIO_DOUT", scope: !797, file: !797, line: 169, type: !1470, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !1472)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!229, !80}
!1472 = !{!1473, !1474, !1475, !1476}
!1473 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1469, file: !797, line: 169, type: !80)
!1474 = !DILocalVariable(name: "no", scope: !1469, file: !797, line: 171, type: !1335)
!1475 = !DILocalVariable(name: "remainder", scope: !1469, file: !797, line: 172, type: !1335)
!1476 = !DILocalVariable(name: "dout", scope: !1469, file: !797, line: 175, type: !229)
!1477 = !DILocation(line: 0, scope: !1469)
!1478 = !DILocation(line: 173, column: 19, scope: !1469)
!1479 = !DILocation(line: 174, column: 17, scope: !1469)
!1480 = !DILocation(line: 177, column: 5, scope: !1469)
!1481 = !DILocation(line: 183, column: 13, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1469, file: !797, line: 177, column: 17)
!1483 = !DILocation(line: 0, scope: !1482)
!1484 = !DILocation(line: 187, column: 5, scope: !1469)
!1485 = !DILocation(line: 188, column: 1, scope: !1469)
!1486 = distinct !DISubprogram(name: "halgetGPIO_DIN", scope: !797, file: !797, line: 189, type: !1470, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !1487)
!1487 = !{!1488, !1489, !1490, !1491}
!1488 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1486, file: !797, line: 189, type: !80)
!1489 = !DILocalVariable(name: "no", scope: !1486, file: !797, line: 191, type: !1335)
!1490 = !DILocalVariable(name: "remainder", scope: !1486, file: !797, line: 192, type: !1335)
!1491 = !DILocalVariable(name: "din", scope: !1486, file: !797, line: 195, type: !229)
!1492 = !DILocation(line: 0, scope: !1486)
!1493 = !DILocation(line: 193, column: 19, scope: !1486)
!1494 = !DILocation(line: 194, column: 17, scope: !1486)
!1495 = !DILocation(line: 196, column: 5, scope: !1486)
!1496 = !DILocation(line: 203, column: 13, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1486, file: !797, line: 196, column: 17)
!1498 = !DILocation(line: 0, scope: !1497)
!1499 = !DILocation(line: 208, column: 5, scope: !1486)
!1500 = !DILocation(line: 209, column: 1, scope: !1486)
!1501 = distinct !DISubprogram(name: "halgetGPIO_OutEnable", scope: !797, file: !797, line: 210, type: !1470, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !1502)
!1502 = !{!1503, !1504, !1505, !1506}
!1503 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1501, file: !797, line: 210, type: !80)
!1504 = !DILocalVariable(name: "no", scope: !1501, file: !797, line: 212, type: !1335)
!1505 = !DILocalVariable(name: "remainder", scope: !1501, file: !797, line: 213, type: !1335)
!1506 = !DILocalVariable(name: "outEnable", scope: !1501, file: !797, line: 216, type: !229)
!1507 = !DILocation(line: 0, scope: !1501)
!1508 = !DILocation(line: 214, column: 19, scope: !1501)
!1509 = !DILocation(line: 215, column: 17, scope: !1501)
!1510 = !DILocation(line: 218, column: 5, scope: !1501)
!1511 = !DILocation(line: 224, column: 13, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1501, file: !797, line: 218, column: 17)
!1513 = !DILocation(line: 0, scope: !1512)
!1514 = !DILocation(line: 228, column: 5, scope: !1501)
!1515 = !DILocation(line: 229, column: 1, scope: !1501)
!1516 = distinct !DISubprogram(name: "halGPIO_PullUp_SET", scope: !797, file: !797, line: 232, type: !1517, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !1519)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!1330, !80}
!1519 = !{!1520, !1521, !1522}
!1520 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1516, file: !797, line: 232, type: !80)
!1521 = !DILocalVariable(name: "no", scope: !1516, file: !797, line: 234, type: !1335)
!1522 = !DILocalVariable(name: "remainder", scope: !1516, file: !797, line: 235, type: !1335)
!1523 = !DILocation(line: 0, scope: !1516)
!1524 = !DILocation(line: 236, column: 19, scope: !1516)
!1525 = !DILocation(line: 237, column: 17, scope: !1516)
!1526 = !DILocation(line: 238, column: 5, scope: !1516)
!1527 = !DILocation(line: 239, column: 5, scope: !1516)
!1528 = !DILocation(line: 241, column: 27, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !797, line: 241, column: 17)
!1530 = distinct !DILexicalBlock(scope: !1516, file: !797, line: 239, column: 17)
!1531 = !DILocation(line: 241, column: 17, scope: !1530)
!1532 = !DILocation(line: 241, column: 17, scope: !1529)
!1533 = !DILocation(line: 242, column: 17, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1529, file: !797, line: 241, column: 34)
!1535 = !DILocation(line: 243, column: 13, scope: !1534)
!1536 = !DILocation(line: 243, column: 24, scope: !1529)
!1537 = !DILocation(line: 244, column: 73, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !797, line: 243, column: 41)
!1539 = distinct !DILexicalBlock(scope: !1529, file: !797, line: 243, column: 24)
!1540 = !DILocation(line: 245, column: 73, scope: !1538)
!1541 = !DILocation(line: 246, column: 13, scope: !1538)
!1542 = !DILocation(line: 247, column: 73, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !797, line: 246, column: 41)
!1544 = distinct !DILexicalBlock(scope: !1539, file: !797, line: 246, column: 24)
!1545 = !DILocation(line: 248, column: 73, scope: !1543)
!1546 = !DILocation(line: 249, column: 13, scope: !1543)
!1547 = !DILocation(line: 250, column: 75, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !797, line: 249, column: 41)
!1549 = distinct !DILexicalBlock(scope: !1544, file: !797, line: 249, column: 24)
!1550 = !DILocation(line: 251, column: 75, scope: !1548)
!1551 = !DILocation(line: 252, column: 13, scope: !1548)
!1552 = !DILocation(line: 253, column: 75, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !797, line: 252, column: 41)
!1554 = distinct !DILexicalBlock(scope: !1549, file: !797, line: 252, column: 24)
!1555 = !DILocation(line: 254, column: 75, scope: !1553)
!1556 = !DILocation(line: 255, column: 13, scope: !1553)
!1557 = !DILocation(line: 256, column: 75, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !797, line: 255, column: 41)
!1559 = distinct !DILexicalBlock(scope: !1554, file: !797, line: 255, column: 24)
!1560 = !DILocation(line: 257, column: 75, scope: !1558)
!1561 = !DILocation(line: 258, column: 13, scope: !1558)
!1562 = !DILocation(line: 261, column: 18, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1530, file: !797, line: 261, column: 17)
!1564 = !DILocation(line: 261, column: 17, scope: !1530)
!1565 = !DILocation(line: 262, column: 75, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1563, file: !797, line: 261, column: 29)
!1567 = !DILocation(line: 263, column: 75, scope: !1566)
!1568 = !DILocation(line: 264, column: 13, scope: !1566)
!1569 = !DILocation(line: 265, column: 17, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1563, file: !797, line: 264, column: 20)
!1571 = !DILocation(line: 272, column: 1, scope: !1516)
!1572 = distinct !DISubprogram(name: "halGPIO_PullDown_RESET", scope: !797, file: !797, line: 359, type: !1517, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !1573)
!1573 = !{!1574, !1575, !1576}
!1574 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1572, file: !797, line: 359, type: !80)
!1575 = !DILocalVariable(name: "no", scope: !1572, file: !797, line: 362, type: !1335)
!1576 = !DILocalVariable(name: "remainder", scope: !1572, file: !797, line: 363, type: !1335)
!1577 = !DILocation(line: 0, scope: !1572)
!1578 = !DILocation(line: 364, column: 19, scope: !1572)
!1579 = !DILocation(line: 365, column: 17, scope: !1572)
!1580 = !DILocation(line: 367, column: 5, scope: !1572)
!1581 = !DILocation(line: 369, column: 27, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !797, line: 369, column: 17)
!1583 = distinct !DILexicalBlock(scope: !1572, file: !797, line: 367, column: 17)
!1584 = !DILocation(line: 369, column: 17, scope: !1583)
!1585 = !DILocation(line: 369, column: 17, scope: !1582)
!1586 = !DILocation(line: 370, column: 17, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1582, file: !797, line: 369, column: 34)
!1588 = !DILocation(line: 371, column: 13, scope: !1587)
!1589 = !DILocation(line: 371, column: 24, scope: !1582)
!1590 = !DILocation(line: 372, column: 73, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !797, line: 371, column: 41)
!1592 = distinct !DILexicalBlock(scope: !1582, file: !797, line: 371, column: 24)
!1593 = !DILocation(line: 373, column: 73, scope: !1591)
!1594 = !DILocation(line: 374, column: 13, scope: !1591)
!1595 = !DILocation(line: 375, column: 73, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !797, line: 374, column: 41)
!1597 = distinct !DILexicalBlock(scope: !1592, file: !797, line: 374, column: 24)
!1598 = !DILocation(line: 376, column: 73, scope: !1596)
!1599 = !DILocation(line: 377, column: 13, scope: !1596)
!1600 = !DILocation(line: 378, column: 75, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !797, line: 377, column: 41)
!1602 = distinct !DILexicalBlock(scope: !1597, file: !797, line: 377, column: 24)
!1603 = !DILocation(line: 379, column: 75, scope: !1601)
!1604 = !DILocation(line: 380, column: 13, scope: !1601)
!1605 = !DILocation(line: 381, column: 75, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !797, line: 380, column: 41)
!1607 = distinct !DILexicalBlock(scope: !1602, file: !797, line: 380, column: 24)
!1608 = !DILocation(line: 382, column: 75, scope: !1606)
!1609 = !DILocation(line: 383, column: 13, scope: !1606)
!1610 = !DILocation(line: 384, column: 75, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !797, line: 383, column: 41)
!1612 = distinct !DILexicalBlock(scope: !1607, file: !797, line: 383, column: 24)
!1613 = !DILocation(line: 385, column: 75, scope: !1611)
!1614 = !DILocation(line: 386, column: 13, scope: !1611)
!1615 = !DILocation(line: 389, column: 18, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1583, file: !797, line: 389, column: 17)
!1617 = !DILocation(line: 389, column: 17, scope: !1583)
!1618 = !DILocation(line: 390, column: 75, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1616, file: !797, line: 389, column: 29)
!1620 = !DILocation(line: 391, column: 75, scope: !1619)
!1621 = !DILocation(line: 392, column: 13, scope: !1619)
!1622 = !DILocation(line: 393, column: 17, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1616, file: !797, line: 392, column: 20)
!1624 = !DILocation(line: 401, column: 1, scope: !1572)
!1625 = distinct !DISubprogram(name: "halGPIO_PullUp_RESET", scope: !797, file: !797, line: 274, type: !1517, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !1626)
!1626 = !{!1627, !1628, !1629}
!1627 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1625, file: !797, line: 274, type: !80)
!1628 = !DILocalVariable(name: "no", scope: !1625, file: !797, line: 276, type: !1335)
!1629 = !DILocalVariable(name: "remainder", scope: !1625, file: !797, line: 277, type: !1335)
!1630 = !DILocation(line: 0, scope: !1625)
!1631 = !DILocation(line: 278, column: 19, scope: !1625)
!1632 = !DILocation(line: 279, column: 17, scope: !1625)
!1633 = !DILocation(line: 281, column: 5, scope: !1625)
!1634 = !DILocation(line: 283, column: 27, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !797, line: 283, column: 17)
!1636 = distinct !DILexicalBlock(scope: !1625, file: !797, line: 281, column: 17)
!1637 = !DILocation(line: 283, column: 17, scope: !1636)
!1638 = !DILocation(line: 283, column: 17, scope: !1635)
!1639 = !DILocation(line: 284, column: 17, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1635, file: !797, line: 283, column: 34)
!1641 = !DILocation(line: 285, column: 13, scope: !1640)
!1642 = !DILocation(line: 285, column: 24, scope: !1635)
!1643 = !DILocation(line: 286, column: 73, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !797, line: 285, column: 41)
!1645 = distinct !DILexicalBlock(scope: !1635, file: !797, line: 285, column: 24)
!1646 = !DILocation(line: 287, column: 73, scope: !1644)
!1647 = !DILocation(line: 288, column: 13, scope: !1644)
!1648 = !DILocation(line: 289, column: 73, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !797, line: 288, column: 41)
!1650 = distinct !DILexicalBlock(scope: !1645, file: !797, line: 288, column: 24)
!1651 = !DILocation(line: 290, column: 73, scope: !1649)
!1652 = !DILocation(line: 291, column: 13, scope: !1649)
!1653 = !DILocation(line: 292, column: 75, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !797, line: 291, column: 41)
!1655 = distinct !DILexicalBlock(scope: !1650, file: !797, line: 291, column: 24)
!1656 = !DILocation(line: 293, column: 75, scope: !1654)
!1657 = !DILocation(line: 294, column: 13, scope: !1654)
!1658 = !DILocation(line: 295, column: 75, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !797, line: 294, column: 41)
!1660 = distinct !DILexicalBlock(scope: !1655, file: !797, line: 294, column: 24)
!1661 = !DILocation(line: 296, column: 75, scope: !1659)
!1662 = !DILocation(line: 297, column: 13, scope: !1659)
!1663 = !DILocation(line: 298, column: 75, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !797, line: 297, column: 41)
!1665 = distinct !DILexicalBlock(scope: !1660, file: !797, line: 297, column: 24)
!1666 = !DILocation(line: 299, column: 75, scope: !1664)
!1667 = !DILocation(line: 300, column: 13, scope: !1664)
!1668 = !DILocation(line: 303, column: 18, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1636, file: !797, line: 303, column: 17)
!1670 = !DILocation(line: 303, column: 17, scope: !1636)
!1671 = !DILocation(line: 304, column: 75, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1669, file: !797, line: 303, column: 29)
!1673 = !DILocation(line: 305, column: 75, scope: !1672)
!1674 = !DILocation(line: 306, column: 13, scope: !1672)
!1675 = !DILocation(line: 307, column: 17, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1669, file: !797, line: 306, column: 20)
!1677 = !DILocation(line: 314, column: 1, scope: !1625)
!1678 = distinct !DISubprogram(name: "halGPIO_PullDown_SET", scope: !797, file: !797, line: 316, type: !1517, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !1679)
!1679 = !{!1680, !1681, !1682}
!1680 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1678, file: !797, line: 316, type: !80)
!1681 = !DILocalVariable(name: "no", scope: !1678, file: !797, line: 318, type: !1335)
!1682 = !DILocalVariable(name: "remainder", scope: !1678, file: !797, line: 319, type: !1335)
!1683 = !DILocation(line: 0, scope: !1678)
!1684 = !DILocation(line: 320, column: 19, scope: !1678)
!1685 = !DILocation(line: 321, column: 17, scope: !1678)
!1686 = !DILocation(line: 322, column: 5, scope: !1678)
!1687 = !DILocation(line: 323, column: 5, scope: !1678)
!1688 = !DILocation(line: 325, column: 27, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !797, line: 325, column: 17)
!1690 = distinct !DILexicalBlock(scope: !1678, file: !797, line: 323, column: 17)
!1691 = !DILocation(line: 325, column: 17, scope: !1690)
!1692 = !DILocation(line: 325, column: 17, scope: !1689)
!1693 = !DILocation(line: 326, column: 17, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1689, file: !797, line: 325, column: 34)
!1695 = !DILocation(line: 327, column: 13, scope: !1694)
!1696 = !DILocation(line: 327, column: 24, scope: !1689)
!1697 = !DILocation(line: 328, column: 73, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !797, line: 327, column: 41)
!1699 = distinct !DILexicalBlock(scope: !1689, file: !797, line: 327, column: 24)
!1700 = !DILocation(line: 329, column: 73, scope: !1698)
!1701 = !DILocation(line: 330, column: 13, scope: !1698)
!1702 = !DILocation(line: 331, column: 73, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !797, line: 330, column: 41)
!1704 = distinct !DILexicalBlock(scope: !1699, file: !797, line: 330, column: 24)
!1705 = !DILocation(line: 332, column: 73, scope: !1703)
!1706 = !DILocation(line: 333, column: 13, scope: !1703)
!1707 = !DILocation(line: 334, column: 75, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !797, line: 333, column: 41)
!1709 = distinct !DILexicalBlock(scope: !1704, file: !797, line: 333, column: 24)
!1710 = !DILocation(line: 335, column: 75, scope: !1708)
!1711 = !DILocation(line: 336, column: 13, scope: !1708)
!1712 = !DILocation(line: 337, column: 75, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !797, line: 336, column: 41)
!1714 = distinct !DILexicalBlock(scope: !1709, file: !797, line: 336, column: 24)
!1715 = !DILocation(line: 338, column: 75, scope: !1713)
!1716 = !DILocation(line: 339, column: 13, scope: !1713)
!1717 = !DILocation(line: 340, column: 75, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !797, line: 339, column: 41)
!1719 = distinct !DILexicalBlock(scope: !1714, file: !797, line: 339, column: 24)
!1720 = !DILocation(line: 341, column: 75, scope: !1718)
!1721 = !DILocation(line: 342, column: 13, scope: !1718)
!1722 = !DILocation(line: 345, column: 18, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1690, file: !797, line: 345, column: 17)
!1724 = !DILocation(line: 345, column: 17, scope: !1690)
!1725 = !DILocation(line: 346, column: 75, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1723, file: !797, line: 345, column: 29)
!1727 = !DILocation(line: 347, column: 75, scope: !1726)
!1728 = !DILocation(line: 348, column: 13, scope: !1726)
!1729 = !DILocation(line: 349, column: 17, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1723, file: !797, line: 348, column: 20)
!1731 = !DILocation(line: 357, column: 1, scope: !1678)
!1732 = distinct !DISubprogram(name: "halGPIO_SetDriving", scope: !797, file: !797, line: 404, type: !1328, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !1733)
!1733 = !{!1734, !1735, !1736, !1737}
!1734 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1732, file: !797, line: 404, type: !80)
!1735 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1732, file: !797, line: 404, type: !229)
!1736 = !DILocalVariable(name: "no", scope: !1732, file: !797, line: 406, type: !1335)
!1737 = !DILocalVariable(name: "remainder", scope: !1732, file: !797, line: 407, type: !1335)
!1738 = !DILocation(line: 0, scope: !1732)
!1739 = !DILocation(line: 408, column: 19, scope: !1732)
!1740 = !DILocation(line: 409, column: 17, scope: !1732)
!1741 = !DILocation(line: 411, column: 5, scope: !1732)
!1742 = !DILocation(line: 413, column: 84, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1732, file: !797, line: 411, column: 17)
!1744 = !DILocation(line: 413, column: 70, scope: !1743)
!1745 = !DILocation(line: 413, column: 64, scope: !1743)
!1746 = !DILocation(line: 413, column: 61, scope: !1743)
!1747 = !DILocation(line: 414, column: 79, scope: !1743)
!1748 = !DILocation(line: 414, column: 83, scope: !1743)
!1749 = !DILocation(line: 414, column: 88, scope: !1743)
!1750 = !DILocation(line: 414, column: 61, scope: !1743)
!1751 = !DILocation(line: 415, column: 13, scope: !1743)
!1752 = !DILocation(line: 417, column: 27, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1743, file: !797, line: 417, column: 17)
!1754 = !DILocation(line: 417, column: 17, scope: !1743)
!1755 = !DILocation(line: 418, column: 88, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1753, file: !797, line: 417, column: 33)
!1757 = !DILocation(line: 418, column: 74, scope: !1756)
!1758 = !DILocation(line: 418, column: 68, scope: !1756)
!1759 = !DILocation(line: 418, column: 65, scope: !1756)
!1760 = !DILocation(line: 419, column: 83, scope: !1756)
!1761 = !DILocation(line: 419, column: 87, scope: !1756)
!1762 = !DILocation(line: 419, column: 92, scope: !1756)
!1763 = !DILocation(line: 419, column: 65, scope: !1756)
!1764 = !DILocation(line: 420, column: 13, scope: !1756)
!1765 = !DILocation(line: 420, column: 24, scope: !1753)
!1766 = !DILocation(line: 421, column: 73, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !797, line: 420, column: 41)
!1768 = distinct !DILexicalBlock(scope: !1753, file: !797, line: 420, column: 24)
!1769 = !DILocation(line: 422, column: 91, scope: !1767)
!1770 = !DILocation(line: 422, column: 100, scope: !1767)
!1771 = !DILocation(line: 422, column: 73, scope: !1767)
!1772 = !DILocation(line: 423, column: 73, scope: !1767)
!1773 = !DILocation(line: 424, column: 13, scope: !1767)
!1774 = !DILocation(line: 425, column: 73, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !797, line: 424, column: 41)
!1776 = distinct !DILexicalBlock(scope: !1768, file: !797, line: 424, column: 24)
!1777 = !DILocation(line: 426, column: 91, scope: !1775)
!1778 = !DILocation(line: 426, column: 100, scope: !1775)
!1779 = !DILocation(line: 426, column: 73, scope: !1775)
!1780 = !DILocation(line: 427, column: 73, scope: !1775)
!1781 = !DILocation(line: 428, column: 13, scope: !1775)
!1782 = !DILocation(line: 429, column: 75, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !797, line: 428, column: 41)
!1784 = distinct !DILexicalBlock(scope: !1776, file: !797, line: 428, column: 24)
!1785 = !DILocation(line: 430, column: 93, scope: !1783)
!1786 = !DILocation(line: 430, column: 102, scope: !1783)
!1787 = !DILocation(line: 430, column: 75, scope: !1783)
!1788 = !DILocation(line: 431, column: 75, scope: !1783)
!1789 = !DILocation(line: 432, column: 13, scope: !1783)
!1790 = !DILocation(line: 433, column: 75, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !797, line: 432, column: 41)
!1792 = distinct !DILexicalBlock(scope: !1784, file: !797, line: 432, column: 24)
!1793 = !DILocation(line: 434, column: 93, scope: !1791)
!1794 = !DILocation(line: 434, column: 102, scope: !1791)
!1795 = !DILocation(line: 434, column: 75, scope: !1791)
!1796 = !DILocation(line: 435, column: 75, scope: !1791)
!1797 = !DILocation(line: 436, column: 13, scope: !1791)
!1798 = !DILocation(line: 437, column: 75, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !797, line: 436, column: 41)
!1800 = distinct !DILexicalBlock(scope: !1792, file: !797, line: 436, column: 24)
!1801 = !DILocation(line: 438, column: 93, scope: !1799)
!1802 = !DILocation(line: 438, column: 102, scope: !1799)
!1803 = !DILocation(line: 438, column: 75, scope: !1799)
!1804 = !DILocation(line: 439, column: 75, scope: !1799)
!1805 = !DILocation(line: 440, column: 13, scope: !1799)
!1806 = !DILocation(line: 443, column: 18, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1743, file: !797, line: 443, column: 17)
!1808 = !DILocation(line: 443, column: 17, scope: !1743)
!1809 = !DILocation(line: 444, column: 75, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1807, file: !797, line: 443, column: 29)
!1811 = !DILocation(line: 445, column: 93, scope: !1810)
!1812 = !DILocation(line: 445, column: 102, scope: !1810)
!1813 = !DILocation(line: 445, column: 75, scope: !1810)
!1814 = !DILocation(line: 446, column: 75, scope: !1810)
!1815 = !DILocation(line: 447, column: 13, scope: !1810)
!1816 = !DILocation(line: 448, column: 88, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1807, file: !797, line: 447, column: 20)
!1818 = !DILocation(line: 448, column: 74, scope: !1817)
!1819 = !DILocation(line: 448, column: 68, scope: !1817)
!1820 = !DILocation(line: 448, column: 65, scope: !1817)
!1821 = !DILocation(line: 449, column: 83, scope: !1817)
!1822 = !DILocation(line: 449, column: 87, scope: !1817)
!1823 = !DILocation(line: 449, column: 92, scope: !1817)
!1824 = !DILocation(line: 449, column: 65, scope: !1817)
!1825 = !DILocation(line: 453, column: 84, scope: !1743)
!1826 = !DILocation(line: 453, column: 70, scope: !1743)
!1827 = !DILocation(line: 453, column: 64, scope: !1743)
!1828 = !DILocation(line: 453, column: 61, scope: !1743)
!1829 = !DILocation(line: 454, column: 79, scope: !1743)
!1830 = !DILocation(line: 454, column: 83, scope: !1743)
!1831 = !DILocation(line: 454, column: 88, scope: !1743)
!1832 = !DILocation(line: 454, column: 61, scope: !1743)
!1833 = !DILocation(line: 455, column: 13, scope: !1743)
!1834 = !DILocation(line: 460, column: 1, scope: !1732)
!1835 = distinct !DISubprogram(name: "halGPIO_GetDriving", scope: !797, file: !797, line: 463, type: !1836, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !1839)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{!1330, !80, !1838}
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 32)
!1839 = !{!1840, !1841, !1842, !1843, !1844}
!1840 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1835, file: !797, line: 463, type: !80)
!1841 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1835, file: !797, line: 463, type: !1838)
!1842 = !DILocalVariable(name: "no", scope: !1835, file: !797, line: 465, type: !1335)
!1843 = !DILocalVariable(name: "remainder", scope: !1835, file: !797, line: 466, type: !1335)
!1844 = !DILocalVariable(name: "temp", scope: !1835, file: !797, line: 467, type: !80)
!1845 = !DILocation(line: 0, scope: !1835)
!1846 = !DILocation(line: 468, column: 19, scope: !1835)
!1847 = !DILocation(line: 469, column: 17, scope: !1835)
!1848 = !DILocation(line: 471, column: 5, scope: !1835)
!1849 = !DILocation(line: 473, column: 20, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1835, file: !797, line: 471, column: 17)
!1851 = !DILocation(line: 474, column: 40, scope: !1850)
!1852 = !DILocation(line: 474, column: 26, scope: !1850)
!1853 = !DILocation(line: 474, column: 18, scope: !1850)
!1854 = !DILocation(line: 475, column: 40, scope: !1850)
!1855 = !DILocation(line: 475, column: 29, scope: !1850)
!1856 = !DILocation(line: 476, column: 13, scope: !1850)
!1857 = !DILocation(line: 478, column: 27, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1850, file: !797, line: 478, column: 17)
!1859 = !DILocation(line: 478, column: 17, scope: !1850)
!1860 = !DILocation(line: 479, column: 24, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1858, file: !797, line: 478, column: 33)
!1862 = !DILocation(line: 480, column: 44, scope: !1861)
!1863 = !DILocation(line: 480, column: 30, scope: !1861)
!1864 = !DILocation(line: 480, column: 22, scope: !1861)
!1865 = !DILocation(line: 481, column: 44, scope: !1861)
!1866 = !DILocation(line: 481, column: 33, scope: !1861)
!1867 = !DILocation(line: 482, column: 13, scope: !1861)
!1868 = !DILocation(line: 482, column: 24, scope: !1858)
!1869 = !DILocation(line: 483, column: 24, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !797, line: 482, column: 41)
!1871 = distinct !DILexicalBlock(scope: !1858, file: !797, line: 482, column: 24)
!1872 = !DILocation(line: 485, column: 53, scope: !1870)
!1873 = !DILocation(line: 485, column: 33, scope: !1870)
!1874 = !DILocation(line: 486, column: 13, scope: !1870)
!1875 = !DILocation(line: 487, column: 24, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !797, line: 486, column: 41)
!1877 = distinct !DILexicalBlock(scope: !1871, file: !797, line: 486, column: 24)
!1878 = !DILocation(line: 489, column: 53, scope: !1876)
!1879 = !DILocation(line: 489, column: 33, scope: !1876)
!1880 = !DILocation(line: 490, column: 13, scope: !1876)
!1881 = !DILocation(line: 491, column: 24, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !797, line: 490, column: 41)
!1883 = distinct !DILexicalBlock(scope: !1877, file: !797, line: 490, column: 24)
!1884 = !DILocation(line: 493, column: 53, scope: !1882)
!1885 = !DILocation(line: 493, column: 33, scope: !1882)
!1886 = !DILocation(line: 494, column: 13, scope: !1882)
!1887 = !DILocation(line: 495, column: 24, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !797, line: 494, column: 41)
!1889 = distinct !DILexicalBlock(scope: !1883, file: !797, line: 494, column: 24)
!1890 = !DILocation(line: 497, column: 53, scope: !1888)
!1891 = !DILocation(line: 497, column: 33, scope: !1888)
!1892 = !DILocation(line: 498, column: 13, scope: !1888)
!1893 = !DILocation(line: 499, column: 24, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !797, line: 498, column: 41)
!1895 = distinct !DILexicalBlock(scope: !1889, file: !797, line: 498, column: 24)
!1896 = !DILocation(line: 501, column: 53, scope: !1894)
!1897 = !DILocation(line: 501, column: 33, scope: !1894)
!1898 = !DILocation(line: 502, column: 13, scope: !1894)
!1899 = !DILocation(line: 505, column: 18, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1850, file: !797, line: 505, column: 17)
!1901 = !DILocation(line: 505, column: 17, scope: !1850)
!1902 = !DILocation(line: 506, column: 24, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1900, file: !797, line: 505, column: 29)
!1904 = !DILocation(line: 508, column: 53, scope: !1903)
!1905 = !DILocation(line: 508, column: 33, scope: !1903)
!1906 = !DILocation(line: 509, column: 13, scope: !1903)
!1907 = !DILocation(line: 510, column: 24, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1900, file: !797, line: 509, column: 20)
!1909 = !DILocation(line: 511, column: 44, scope: !1908)
!1910 = !DILocation(line: 511, column: 30, scope: !1908)
!1911 = !DILocation(line: 511, column: 22, scope: !1908)
!1912 = !DILocation(line: 512, column: 44, scope: !1908)
!1913 = !DILocation(line: 512, column: 33, scope: !1908)
!1914 = !DILocation(line: 516, column: 20, scope: !1850)
!1915 = !DILocation(line: 517, column: 40, scope: !1850)
!1916 = !DILocation(line: 517, column: 26, scope: !1850)
!1917 = !DILocation(line: 517, column: 18, scope: !1850)
!1918 = !DILocation(line: 518, column: 40, scope: !1850)
!1919 = !DILocation(line: 518, column: 29, scope: !1850)
!1920 = !DILocation(line: 519, column: 13, scope: !1850)
!1921 = !DILocation(line: 0, scope: !1850)
!1922 = !DILocation(line: 524, column: 1, scope: !1835)
!1923 = distinct !DISubprogram(name: "topPAD_Control_GPIO", scope: !797, file: !797, line: 526, type: !1924, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !1927)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{null, !80, !1926}
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_TOP_PAD_CONTROL_T", file: !165, line: 1212, baseType: !164)
!1927 = !{!1928, !1929, !1930, !1931}
!1928 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1923, file: !797, line: 526, type: !80)
!1929 = !DILocalVariable(name: "ePadControl", arg: 2, scope: !1923, file: !797, line: 526, type: !1926)
!1930 = !DILocalVariable(name: "no", scope: !1923, file: !797, line: 529, type: !1335)
!1931 = !DILocalVariable(name: "remainder", scope: !1923, file: !797, line: 530, type: !1335)
!1932 = !DILocation(line: 0, scope: !1923)
!1933 = !DILocation(line: 531, column: 19, scope: !1923)
!1934 = !DILocation(line: 532, column: 17, scope: !1923)
!1935 = !DILocation(line: 534, column: 9, scope: !1923)
!1936 = !DILocation(line: 536, column: 9, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !797, line: 534, column: 45)
!1938 = distinct !DILexicalBlock(scope: !1923, file: !797, line: 534, column: 9)
!1939 = !DILocation(line: 538, column: 56, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1937, file: !797, line: 536, column: 21)
!1941 = !DILocation(line: 538, column: 53, scope: !1940)
!1942 = !DILocation(line: 538, column: 47, scope: !1940)
!1943 = !DILocation(line: 539, column: 17, scope: !1940)
!1944 = !DILocation(line: 541, column: 56, scope: !1940)
!1945 = !DILocation(line: 541, column: 53, scope: !1940)
!1946 = !DILocation(line: 541, column: 47, scope: !1940)
!1947 = !DILocation(line: 542, column: 17, scope: !1940)
!1948 = !DILocation(line: 548, column: 9, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !797, line: 547, column: 51)
!1950 = distinct !DILexicalBlock(scope: !1938, file: !797, line: 547, column: 16)
!1951 = !DILocation(line: 550, column: 57, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1949, file: !797, line: 548, column: 21)
!1953 = !DILocation(line: 550, column: 54, scope: !1952)
!1954 = !DILocation(line: 550, column: 50, scope: !1952)
!1955 = !DILocation(line: 550, column: 47, scope: !1952)
!1956 = !DILocation(line: 551, column: 17, scope: !1952)
!1957 = !DILocation(line: 553, column: 57, scope: !1952)
!1958 = !DILocation(line: 553, column: 54, scope: !1952)
!1959 = !DILocation(line: 553, column: 50, scope: !1952)
!1960 = !DILocation(line: 553, column: 47, scope: !1952)
!1961 = !DILocation(line: 554, column: 17, scope: !1952)
!1962 = !DILocation(line: 560, column: 1, scope: !1923)
!1963 = distinct !DISubprogram(name: "hal_pcnt_config", scope: !801, file: !801, line: 49, type: !1964, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !1967)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!1966, !119, !116}
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_pcnt_status_t", file: !105, line: 59, baseType: !803)
!1967 = !{!1968, !1969}
!1968 = !DILocalVariable(name: "enable", arg: 1, scope: !1963, file: !801, line: 49, type: !119)
!1969 = !DILocalVariable(name: "edge", arg: 2, scope: !1963, file: !801, line: 49, type: !116)
!1970 = !DILocation(line: 0, scope: !1963)
!1971 = !DILocation(line: 52, column: 39, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1963, file: !801, line: 52, column: 9)
!1973 = !DILocation(line: 0, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1963, file: !801, line: 57, column: 9)
!1975 = !DILocation(line: 57, column: 9, scope: !1963)
!1976 = !DILocation(line: 58, column: 55, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1974, file: !801, line: 57, column: 25)
!1978 = !DILocation(line: 60, column: 18, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1977, file: !801, line: 60, column: 13)
!1980 = !DILocation(line: 0, scope: !1979)
!1981 = !DILocation(line: 60, column: 13, scope: !1977)
!1982 = !DILocation(line: 61, column: 59, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1979, file: !801, line: 60, column: 44)
!1984 = !DILocation(line: 62, column: 9, scope: !1983)
!1985 = !DILocation(line: 63, column: 59, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1979, file: !801, line: 62, column: 16)
!1987 = !DILocation(line: 67, column: 55, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1974, file: !801, line: 66, column: 12)
!1989 = !DILocation(line: 72, column: 1, scope: !1963)
!1990 = distinct !DISubprogram(name: "hal_pcnt_read_and_clear", scope: !801, file: !801, line: 75, type: !1991, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !800, retainedNodes: !1993)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!176}
!1993 = !{!1994}
!1994 = !DILocalVariable(name: "reg", scope: !1990, file: !801, line: 77, type: !176)
!1995 = !DILocation(line: 0, scope: !1990)
!1996 = !DILocation(line: 80, column: 11, scope: !1990)
!1997 = !DILocation(line: 80, column: 57, scope: !1990)
!1998 = !DILocation(line: 81, column: 51, scope: !1990)
!1999 = !DILocation(line: 83, column: 5, scope: !1990)
!2000 = distinct !DISubprogram(name: "halPinmuxTopOnPadFunc", scope: !810, file: !810, line: 85, type: !2001, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !809, retainedNodes: !2005)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!2003, !2004, !229}
!2003 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID", file: !6, line: 79, baseType: null)
!2004 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_PAD_NAME_T", file: !813, line: 225, baseType: !812)
!2005 = !{!2006, !2007, !2008}
!2006 = !DILocalVariable(name: "ePadIndex", arg: 1, scope: !2000, file: !810, line: 85, type: !2004)
!2007 = !DILocalVariable(name: "ucFunc", arg: 2, scope: !2000, file: !810, line: 85, type: !229)
!2008 = !DILocalVariable(name: "temp", scope: !2000, file: !810, line: 87, type: !176)
!2009 = !DILocation(line: 0, scope: !2000)
!2010 = !DILocation(line: 88, column: 5, scope: !2000)
!2011 = !DILocation(line: 91, column: 20, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2000, file: !810, line: 88, column: 24)
!2013 = !DILocation(line: 92, column: 18, scope: !2012)
!2014 = !DILocation(line: 93, column: 66, scope: !2012)
!2015 = !DILocation(line: 93, column: 63, scope: !2012)
!2016 = !DILocation(line: 93, column: 56, scope: !2012)
!2017 = !DILocation(line: 94, column: 13, scope: !2012)
!2018 = !DILocation(line: 97, column: 20, scope: !2012)
!2019 = !DILocation(line: 98, column: 18, scope: !2012)
!2020 = !DILocation(line: 99, column: 67, scope: !2012)
!2021 = !DILocation(line: 99, column: 74, scope: !2012)
!2022 = !DILocation(line: 99, column: 64, scope: !2012)
!2023 = !DILocation(line: 99, column: 56, scope: !2012)
!2024 = !DILocation(line: 100, column: 13, scope: !2012)
!2025 = !DILocation(line: 103, column: 20, scope: !2012)
!2026 = !DILocation(line: 104, column: 18, scope: !2012)
!2027 = !DILocation(line: 105, column: 67, scope: !2012)
!2028 = !DILocation(line: 105, column: 74, scope: !2012)
!2029 = !DILocation(line: 105, column: 64, scope: !2012)
!2030 = !DILocation(line: 105, column: 56, scope: !2012)
!2031 = !DILocation(line: 106, column: 13, scope: !2012)
!2032 = !DILocation(line: 109, column: 20, scope: !2012)
!2033 = !DILocation(line: 110, column: 18, scope: !2012)
!2034 = !DILocation(line: 111, column: 67, scope: !2012)
!2035 = !DILocation(line: 111, column: 74, scope: !2012)
!2036 = !DILocation(line: 111, column: 64, scope: !2012)
!2037 = !DILocation(line: 111, column: 56, scope: !2012)
!2038 = !DILocation(line: 112, column: 13, scope: !2012)
!2039 = !DILocation(line: 115, column: 20, scope: !2012)
!2040 = !DILocation(line: 116, column: 18, scope: !2012)
!2041 = !DILocation(line: 117, column: 67, scope: !2012)
!2042 = !DILocation(line: 117, column: 74, scope: !2012)
!2043 = !DILocation(line: 117, column: 64, scope: !2012)
!2044 = !DILocation(line: 117, column: 56, scope: !2012)
!2045 = !DILocation(line: 118, column: 13, scope: !2012)
!2046 = !DILocation(line: 121, column: 20, scope: !2012)
!2047 = !DILocation(line: 122, column: 18, scope: !2012)
!2048 = !DILocation(line: 123, column: 67, scope: !2012)
!2049 = !DILocation(line: 123, column: 74, scope: !2012)
!2050 = !DILocation(line: 123, column: 64, scope: !2012)
!2051 = !DILocation(line: 123, column: 56, scope: !2012)
!2052 = !DILocation(line: 124, column: 13, scope: !2012)
!2053 = !DILocation(line: 127, column: 20, scope: !2012)
!2054 = !DILocation(line: 128, column: 18, scope: !2012)
!2055 = !DILocation(line: 129, column: 67, scope: !2012)
!2056 = !DILocation(line: 129, column: 74, scope: !2012)
!2057 = !DILocation(line: 129, column: 64, scope: !2012)
!2058 = !DILocation(line: 129, column: 56, scope: !2012)
!2059 = !DILocation(line: 130, column: 13, scope: !2012)
!2060 = !DILocation(line: 133, column: 20, scope: !2012)
!2061 = !DILocation(line: 134, column: 18, scope: !2012)
!2062 = !DILocation(line: 135, column: 67, scope: !2012)
!2063 = !DILocation(line: 135, column: 74, scope: !2012)
!2064 = !DILocation(line: 135, column: 64, scope: !2012)
!2065 = !DILocation(line: 135, column: 56, scope: !2012)
!2066 = !DILocation(line: 136, column: 13, scope: !2012)
!2067 = !DILocation(line: 139, column: 20, scope: !2012)
!2068 = !DILocation(line: 140, column: 18, scope: !2012)
!2069 = !DILocation(line: 141, column: 67, scope: !2012)
!2070 = !DILocation(line: 141, column: 64, scope: !2012)
!2071 = !DILocation(line: 141, column: 56, scope: !2012)
!2072 = !DILocation(line: 142, column: 13, scope: !2012)
!2073 = !DILocation(line: 145, column: 20, scope: !2012)
!2074 = !DILocation(line: 146, column: 18, scope: !2012)
!2075 = !DILocation(line: 147, column: 67, scope: !2012)
!2076 = !DILocation(line: 147, column: 74, scope: !2012)
!2077 = !DILocation(line: 147, column: 64, scope: !2012)
!2078 = !DILocation(line: 147, column: 56, scope: !2012)
!2079 = !DILocation(line: 148, column: 13, scope: !2012)
!2080 = !DILocation(line: 151, column: 20, scope: !2012)
!2081 = !DILocation(line: 152, column: 18, scope: !2012)
!2082 = !DILocation(line: 153, column: 67, scope: !2012)
!2083 = !DILocation(line: 153, column: 74, scope: !2012)
!2084 = !DILocation(line: 153, column: 64, scope: !2012)
!2085 = !DILocation(line: 153, column: 56, scope: !2012)
!2086 = !DILocation(line: 154, column: 13, scope: !2012)
!2087 = !DILocation(line: 157, column: 20, scope: !2012)
!2088 = !DILocation(line: 158, column: 18, scope: !2012)
!2089 = !DILocation(line: 159, column: 67, scope: !2012)
!2090 = !DILocation(line: 159, column: 74, scope: !2012)
!2091 = !DILocation(line: 159, column: 64, scope: !2012)
!2092 = !DILocation(line: 159, column: 56, scope: !2012)
!2093 = !DILocation(line: 160, column: 29, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2012, file: !810, line: 160, column: 17)
!2095 = !DILocation(line: 161, column: 17, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2094, file: !810, line: 160, column: 60)
!2097 = !DILocation(line: 162, column: 13, scope: !2096)
!2098 = !DILocation(line: 166, column: 20, scope: !2012)
!2099 = !DILocation(line: 167, column: 18, scope: !2012)
!2100 = !DILocation(line: 168, column: 67, scope: !2012)
!2101 = !DILocation(line: 168, column: 74, scope: !2012)
!2102 = !DILocation(line: 168, column: 64, scope: !2012)
!2103 = !DILocation(line: 168, column: 56, scope: !2012)
!2104 = !DILocation(line: 169, column: 29, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2012, file: !810, line: 169, column: 17)
!2106 = !DILocation(line: 170, column: 17, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2105, file: !810, line: 169, column: 45)
!2108 = !DILocation(line: 171, column: 13, scope: !2107)
!2109 = !DILocation(line: 175, column: 20, scope: !2012)
!2110 = !DILocation(line: 176, column: 18, scope: !2012)
!2111 = !DILocation(line: 177, column: 67, scope: !2012)
!2112 = !DILocation(line: 177, column: 74, scope: !2012)
!2113 = !DILocation(line: 177, column: 64, scope: !2012)
!2114 = !DILocation(line: 177, column: 56, scope: !2012)
!2115 = !DILocation(line: 178, column: 19, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2012, file: !810, line: 178, column: 17)
!2117 = !DILocation(line: 178, column: 17, scope: !2012)
!2118 = !DILocation(line: 179, column: 17, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2116, file: !810, line: 178, column: 30)
!2120 = !DILocation(line: 180, column: 13, scope: !2119)
!2121 = !DILocation(line: 184, column: 20, scope: !2012)
!2122 = !DILocation(line: 185, column: 18, scope: !2012)
!2123 = !DILocation(line: 186, column: 67, scope: !2012)
!2124 = !DILocation(line: 186, column: 74, scope: !2012)
!2125 = !DILocation(line: 186, column: 64, scope: !2012)
!2126 = !DILocation(line: 186, column: 56, scope: !2012)
!2127 = !DILocation(line: 187, column: 29, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2012, file: !810, line: 187, column: 17)
!2129 = !DILocation(line: 188, column: 17, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2128, file: !810, line: 187, column: 45)
!2131 = !DILocation(line: 189, column: 13, scope: !2130)
!2132 = !DILocation(line: 193, column: 20, scope: !2012)
!2133 = !DILocation(line: 194, column: 18, scope: !2012)
!2134 = !DILocation(line: 195, column: 67, scope: !2012)
!2135 = !DILocation(line: 195, column: 74, scope: !2012)
!2136 = !DILocation(line: 195, column: 64, scope: !2012)
!2137 = !DILocation(line: 195, column: 56, scope: !2012)
!2138 = !DILocation(line: 196, column: 29, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2012, file: !810, line: 196, column: 17)
!2140 = !DILocation(line: 197, column: 17, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2139, file: !810, line: 196, column: 45)
!2142 = !DILocation(line: 198, column: 13, scope: !2141)
!2143 = !DILocation(line: 202, column: 20, scope: !2012)
!2144 = !DILocation(line: 203, column: 18, scope: !2012)
!2145 = !DILocation(line: 204, column: 67, scope: !2012)
!2146 = !DILocation(line: 204, column: 64, scope: !2012)
!2147 = !DILocation(line: 204, column: 56, scope: !2012)
!2148 = !DILocation(line: 205, column: 29, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2012, file: !810, line: 205, column: 17)
!2150 = !DILocation(line: 206, column: 17, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2149, file: !810, line: 205, column: 45)
!2152 = !DILocation(line: 207, column: 13, scope: !2151)
!2153 = !DILocation(line: 211, column: 20, scope: !2012)
!2154 = !DILocation(line: 212, column: 18, scope: !2012)
!2155 = !DILocation(line: 213, column: 67, scope: !2012)
!2156 = !DILocation(line: 213, column: 74, scope: !2012)
!2157 = !DILocation(line: 213, column: 64, scope: !2012)
!2158 = !DILocation(line: 213, column: 56, scope: !2012)
!2159 = !DILocation(line: 214, column: 13, scope: !2012)
!2160 = !DILocation(line: 217, column: 20, scope: !2012)
!2161 = !DILocation(line: 218, column: 18, scope: !2012)
!2162 = !DILocation(line: 219, column: 67, scope: !2012)
!2163 = !DILocation(line: 219, column: 74, scope: !2012)
!2164 = !DILocation(line: 219, column: 64, scope: !2012)
!2165 = !DILocation(line: 219, column: 56, scope: !2012)
!2166 = !DILocation(line: 220, column: 13, scope: !2012)
!2167 = !DILocation(line: 223, column: 20, scope: !2012)
!2168 = !DILocation(line: 224, column: 18, scope: !2012)
!2169 = !DILocation(line: 225, column: 67, scope: !2012)
!2170 = !DILocation(line: 225, column: 74, scope: !2012)
!2171 = !DILocation(line: 225, column: 64, scope: !2012)
!2172 = !DILocation(line: 225, column: 56, scope: !2012)
!2173 = !DILocation(line: 226, column: 13, scope: !2012)
!2174 = !DILocation(line: 229, column: 20, scope: !2012)
!2175 = !DILocation(line: 230, column: 18, scope: !2012)
!2176 = !DILocation(line: 231, column: 67, scope: !2012)
!2177 = !DILocation(line: 231, column: 74, scope: !2012)
!2178 = !DILocation(line: 231, column: 64, scope: !2012)
!2179 = !DILocation(line: 231, column: 56, scope: !2012)
!2180 = !DILocation(line: 232, column: 13, scope: !2012)
!2181 = !DILocation(line: 235, column: 20, scope: !2012)
!2182 = !DILocation(line: 236, column: 18, scope: !2012)
!2183 = !DILocation(line: 237, column: 66, scope: !2012)
!2184 = !DILocation(line: 237, column: 73, scope: !2012)
!2185 = !DILocation(line: 237, column: 63, scope: !2012)
!2186 = !DILocation(line: 237, column: 56, scope: !2012)
!2187 = !DILocation(line: 238, column: 13, scope: !2012)
!2188 = !DILocation(line: 241, column: 20, scope: !2012)
!2189 = !DILocation(line: 242, column: 18, scope: !2012)
!2190 = !DILocation(line: 243, column: 67, scope: !2012)
!2191 = !DILocation(line: 243, column: 74, scope: !2012)
!2192 = !DILocation(line: 243, column: 64, scope: !2012)
!2193 = !DILocation(line: 243, column: 56, scope: !2012)
!2194 = !DILocation(line: 244, column: 13, scope: !2012)
!2195 = !DILocation(line: 247, column: 20, scope: !2012)
!2196 = !DILocation(line: 248, column: 18, scope: !2012)
!2197 = !DILocation(line: 249, column: 67, scope: !2012)
!2198 = !DILocation(line: 249, column: 74, scope: !2012)
!2199 = !DILocation(line: 249, column: 64, scope: !2012)
!2200 = !DILocation(line: 249, column: 56, scope: !2012)
!2201 = !DILocation(line: 250, column: 13, scope: !2012)
!2202 = !DILocation(line: 253, column: 20, scope: !2012)
!2203 = !DILocation(line: 254, column: 18, scope: !2012)
!2204 = !DILocation(line: 255, column: 67, scope: !2012)
!2205 = !DILocation(line: 255, column: 74, scope: !2012)
!2206 = !DILocation(line: 255, column: 64, scope: !2012)
!2207 = !DILocation(line: 255, column: 56, scope: !2012)
!2208 = !DILocation(line: 256, column: 13, scope: !2012)
!2209 = !DILocation(line: 259, column: 20, scope: !2012)
!2210 = !DILocation(line: 260, column: 18, scope: !2012)
!2211 = !DILocation(line: 261, column: 67, scope: !2012)
!2212 = !DILocation(line: 261, column: 74, scope: !2012)
!2213 = !DILocation(line: 261, column: 64, scope: !2012)
!2214 = !DILocation(line: 261, column: 56, scope: !2012)
!2215 = !DILocation(line: 262, column: 13, scope: !2012)
!2216 = !DILocation(line: 265, column: 20, scope: !2012)
!2217 = !DILocation(line: 266, column: 18, scope: !2012)
!2218 = !DILocation(line: 267, column: 67, scope: !2012)
!2219 = !DILocation(line: 267, column: 74, scope: !2012)
!2220 = !DILocation(line: 267, column: 64, scope: !2012)
!2221 = !DILocation(line: 267, column: 56, scope: !2012)
!2222 = !DILocation(line: 268, column: 13, scope: !2012)
!2223 = !DILocation(line: 271, column: 20, scope: !2012)
!2224 = !DILocation(line: 272, column: 18, scope: !2012)
!2225 = !DILocation(line: 273, column: 67, scope: !2012)
!2226 = !DILocation(line: 273, column: 74, scope: !2012)
!2227 = !DILocation(line: 273, column: 64, scope: !2012)
!2228 = !DILocation(line: 273, column: 56, scope: !2012)
!2229 = !DILocation(line: 274, column: 13, scope: !2012)
!2230 = !DILocation(line: 278, column: 1, scope: !2000)
!2231 = distinct !DISubprogram(name: "gpio_direction", scope: !126, file: !126, line: 107, type: !2232, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2234)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!250, !1005, !1008}
!2234 = !{!2235, !2236}
!2235 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2231, file: !126, line: 107, type: !1005)
!2236 = !DILocalVariable(name: "direction", arg: 2, scope: !2231, file: !126, line: 107, type: !1008)
!2237 = !DILocation(line: 0, scope: !2231)
!2238 = !DILocation(line: 109, column: 45, scope: !2231)
!2239 = !DILocation(line: 109, column: 12, scope: !2231)
!2240 = !DILocation(line: 109, column: 5, scope: !2231)
!2241 = distinct !DISubprogram(name: "gpio_write", scope: !126, file: !126, line: 113, type: !2242, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2244)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!250, !1005, !279}
!2244 = !{!2245, !2246}
!2245 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2241, file: !126, line: 113, type: !1005)
!2246 = !DILocalVariable(name: "data", arg: 2, scope: !2241, file: !126, line: 113, type: !279)
!2247 = !DILocation(line: 0, scope: !2241)
!2248 = !DILocation(line: 115, column: 12, scope: !2241)
!2249 = !DILocation(line: 115, column: 5, scope: !2241)
!2250 = distinct !DISubprogram(name: "gpio_get_status", scope: !126, file: !126, line: 169, type: !2251, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2260)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!2253, !1005}
!2253 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_status", file: !160, line: 67, baseType: !2254)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !160, line: 62, size: 64, elements: !2255)
!2255 = !{!2256, !2257, !2258, !2259}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PIN", scope: !2254, file: !160, line: 63, baseType: !176, size: 32)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OUTEN", scope: !2254, file: !160, line: 64, baseType: !279, size: 8, offset: 32)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "GPI_DIN", scope: !2254, file: !160, line: 65, baseType: !279, size: 8, offset: 40)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "GPO_DOUT", scope: !2254, file: !160, line: 66, baseType: !279, size: 8, offset: 48)
!2260 = !{!2261, !2262}
!2261 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2250, file: !126, line: 169, type: !1005)
!2262 = !DILocalVariable(name: "p", scope: !2250, file: !126, line: 171, type: !2253)
!2263 = !DILocation(line: 0, scope: !2250)
!2264 = !DILocation(line: 171, column: 17, scope: !2250)
!2265 = !DILocation(line: 172, column: 7, scope: !2250)
!2266 = !DILocation(line: 172, column: 16, scope: !2250)
!2267 = !DILocation(line: 173, column: 20, scope: !2250)
!2268 = !DILocation(line: 173, column: 7, scope: !2250)
!2269 = !DILocation(line: 173, column: 18, scope: !2250)
!2270 = !DILocation(line: 174, column: 17, scope: !2250)
!2271 = !DILocation(line: 174, column: 7, scope: !2250)
!2272 = !DILocation(line: 174, column: 15, scope: !2250)
!2273 = !DILocation(line: 175, column: 18, scope: !2250)
!2274 = !DILocation(line: 175, column: 7, scope: !2250)
!2275 = !DILocation(line: 175, column: 16, scope: !2250)
!2276 = !DILocation(line: 176, column: 5, scope: !2250)
!2277 = distinct !DISubprogram(name: "gpio_PullUp", scope: !126, file: !126, line: 179, type: !2278, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2280)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!250, !1005}
!2280 = !{!2281, !2282}
!2281 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2277, file: !126, line: 179, type: !1005)
!2282 = !DILocalVariable(name: "ret", scope: !2277, file: !126, line: 181, type: !1330)
!2283 = !DILocation(line: 0, scope: !2277)
!2284 = !DILocation(line: 182, column: 5, scope: !2277)
!2285 = !DILocation(line: 183, column: 11, scope: !2277)
!2286 = !DILocation(line: 184, column: 5, scope: !2277)
!2287 = distinct !DISubprogram(name: "gpio_PullDown", scope: !126, file: !126, line: 187, type: !2278, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2288)
!2288 = !{!2289, !2290}
!2289 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2287, file: !126, line: 187, type: !1005)
!2290 = !DILocalVariable(name: "ret", scope: !2287, file: !126, line: 189, type: !1330)
!2291 = !DILocation(line: 0, scope: !2287)
!2292 = !DILocation(line: 190, column: 5, scope: !2287)
!2293 = !DILocation(line: 191, column: 11, scope: !2287)
!2294 = !DILocation(line: 192, column: 5, scope: !2287)
!2295 = distinct !DISubprogram(name: "gpio_PullDisable", scope: !126, file: !126, line: 194, type: !2278, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2296)
!2296 = !{!2297, !2298}
!2297 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2295, file: !126, line: 194, type: !1005)
!2298 = !DILocalVariable(name: "ret", scope: !2295, file: !126, line: 196, type: !1330)
!2299 = !DILocation(line: 0, scope: !2295)
!2300 = !DILocation(line: 197, column: 5, scope: !2295)
!2301 = !DILocation(line: 198, column: 11, scope: !2295)
!2302 = !DILocation(line: 199, column: 11, scope: !2295)
!2303 = !DILocation(line: 200, column: 5, scope: !2295)
!2304 = distinct !DISubprogram(name: "gpio_SetDriving", scope: !126, file: !126, line: 202, type: !2242, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2305)
!2305 = !{!2306, !2307, !2308}
!2306 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2304, file: !126, line: 202, type: !1005)
!2307 = !DILocalVariable(name: "driving", arg: 2, scope: !2304, file: !126, line: 202, type: !279)
!2308 = !DILocalVariable(name: "ret", scope: !2304, file: !126, line: 204, type: !1330)
!2309 = !DILocation(line: 0, scope: !2304)
!2310 = !DILocation(line: 205, column: 11, scope: !2304)
!2311 = !DILocation(line: 206, column: 5, scope: !2304)
!2312 = distinct !DISubprogram(name: "gpio_GetDriving", scope: !126, file: !126, line: 209, type: !2313, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2315)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!250, !1005, !494}
!2315 = !{!2316, !2317, !2318}
!2316 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2312, file: !126, line: 209, type: !1005)
!2317 = !DILocalVariable(name: "driving", arg: 2, scope: !2312, file: !126, line: 209, type: !494)
!2318 = !DILocalVariable(name: "ret", scope: !2312, file: !126, line: 211, type: !1330)
!2319 = !DILocation(line: 0, scope: !2312)
!2320 = !DILocation(line: 212, column: 11, scope: !2312)
!2321 = !DILocation(line: 213, column: 5, scope: !2312)
!2322 = distinct !DISubprogram(name: "gpio_backup_all_registers", scope: !126, file: !126, line: 216, type: !75, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2323)
!2323 = !{!2324}
!2324 = !DILocalVariable(name: "i", scope: !2322, file: !126, line: 218, type: !176)
!2325 = !DILocation(line: 0, scope: !2322)
!2326 = !DILocation(line: 220, column: 5, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2322, file: !126, line: 220, column: 5)
!2328 = !DILocation(line: 221, column: 40, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !126, line: 220, column: 78)
!2330 = distinct !DILexicalBlock(scope: !2327, file: !126, line: 220, column: 5)
!2331 = !DILocation(line: 221, column: 29, scope: !2329)
!2332 = !DILocation(line: 221, column: 38, scope: !2329)
!2333 = !DILocation(line: 220, column: 74, scope: !2330)
!2334 = !DILocation(line: 220, column: 15, scope: !2330)
!2335 = distinct !{!2335, !2326, !2336}
!2336 = !DILocation(line: 222, column: 5, scope: !2327)
!2337 = !DILocation(line: 224, column: 1, scope: !2322)
!2338 = distinct !DISubprogram(name: "gpio_restore_all_registers", scope: !126, file: !126, line: 226, type: !75, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !125, retainedNodes: !2339)
!2339 = !{!2340}
!2340 = !DILocalVariable(name: "i", scope: !2338, file: !126, line: 228, type: !176)
!2341 = !DILocation(line: 0, scope: !2338)
!2342 = !DILocation(line: 230, column: 5, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2338, file: !126, line: 230, column: 5)
!2344 = !DILocation(line: 231, column: 71, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !126, line: 230, column: 78)
!2346 = distinct !DILexicalBlock(scope: !2343, file: !126, line: 230, column: 5)
!2347 = !DILocation(line: 231, column: 9, scope: !2345)
!2348 = !DILocation(line: 231, column: 49, scope: !2345)
!2349 = !DILocation(line: 230, column: 74, scope: !2346)
!2350 = !DILocation(line: 230, column: 15, scope: !2346)
!2351 = distinct !{!2351, !2342, !2352}
!2352 = !DILocation(line: 233, column: 5, scope: !2343)
!2353 = !DILocation(line: 234, column: 1, scope: !2338)
!2354 = distinct !DISubprogram(name: "NVIC_SetupVectorTable", scope: !891, file: !891, line: 47, type: !2355, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !890, retainedNodes: !2357)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{null, !176}
!2357 = !{!2358}
!2358 = !DILocalVariable(name: "addr", arg: 1, scope: !2354, file: !891, line: 47, type: !176)
!2359 = !DILocation(line: 0, scope: !2354)
!2360 = !DILocation(line: 49, column: 15, scope: !2354)
!2361 = !DILocation(line: 51, column: 5, scope: !2354)
!2362 = !{i64 2624}
!2363 = !DILocation(line: 52, column: 5, scope: !2354)
!2364 = !{i64 2651}
!2365 = !DILocation(line: 53, column: 1, scope: !2354)
!2366 = distinct !DISubprogram(name: "NVIC_SWInt", scope: !891, file: !891, line: 56, type: !2367, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !890, retainedNodes: !2369)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{null, !7}
!2369 = !{!2370}
!2370 = !DILocalVariable(name: "source", arg: 1, scope: !2366, file: !891, line: 56, type: !7)
!2371 = !DILocation(line: 0, scope: !2366)
!2372 = !DILocation(line: 58, column: 16, scope: !2366)
!2373 = !DILocation(line: 59, column: 1, scope: !2366)
!2374 = distinct !DISubprogram(name: "save_and_set_interrupt_mask", scope: !891, file: !891, line: 61, type: !1991, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !890, retainedNodes: !2375)
!2375 = !{!2376}
!2376 = !DILocalVariable(name: "mask", scope: !2374, file: !891, line: 63, type: !176)
!2377 = !DILocation(line: 470, column: 3, scope: !2378, inlinedAt: !2382)
!2378 = distinct !DISubprogram(name: "__get_PRIMASK", scope: !2379, file: !2379, line: 466, type: !1991, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !890, retainedNodes: !2380)
!2379 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmFunc.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!2380 = !{!2381}
!2381 = !DILocalVariable(name: "result", scope: !2378, file: !2379, line: 468, type: !176)
!2382 = distinct !DILocation(line: 64, column: 5, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2374, file: !891, line: 64, column: 5)
!2384 = !{i64 301970}
!2385 = !DILocation(line: 0, scope: !2378, inlinedAt: !2382)
!2386 = !DILocation(line: 0, scope: !2374)
!2387 = !DILocation(line: 330, column: 3, scope: !2388, inlinedAt: !2389)
!2388 = distinct !DISubprogram(name: "__disable_irq", scope: !2379, file: !2379, line: 328, type: !75, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !890, retainedNodes: !1204)
!2389 = distinct !DILocation(line: 64, column: 5, scope: !2383)
!2390 = !{i64 298634}
!2391 = !DILocation(line: 65, column: 5, scope: !2374)
!2392 = distinct !DISubprogram(name: "restore_interrupt_mask", scope: !891, file: !891, line: 68, type: !2355, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !890, retainedNodes: !2393)
!2393 = !{!2394}
!2394 = !DILocalVariable(name: "mask", arg: 1, scope: !2392, file: !891, line: 68, type: !176)
!2395 = !DILocation(line: 0, scope: !2392)
!2396 = !DILocalVariable(name: "priMask", arg: 1, scope: !2397, file: !2379, line: 481, type: !176)
!2397 = distinct !DISubprogram(name: "__set_PRIMASK", scope: !2379, file: !2379, line: 481, type: !2355, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !890, retainedNodes: !2398)
!2398 = !{!2396}
!2399 = !DILocation(line: 0, scope: !2397, inlinedAt: !2400)
!2400 = distinct !DILocation(line: 70, column: 5, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2392, file: !891, line: 70, column: 5)
!2402 = !DILocation(line: 483, column: 3, scope: !2397, inlinedAt: !2400)
!2403 = !{i64 302288}
!2404 = !DILocation(line: 71, column: 1, scope: !2392)
!2405 = distinct !DISubprogram(name: "pinmux_config", scope: !936, file: !936, line: 54, type: !2406, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !935, retainedNodes: !2408)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!250, !1005, !176}
!2408 = !{!2409, !2410, !2411}
!2409 = !DILocalVariable(name: "gpio_index", arg: 1, scope: !2405, file: !936, line: 54, type: !1005)
!2410 = !DILocalVariable(name: "function", arg: 2, scope: !2405, file: !936, line: 54, type: !176)
!2411 = !DILocalVariable(name: "ePadIndex", scope: !2405, file: !936, line: 56, type: !2004)
!2412 = !DILocation(line: 0, scope: !2405)
!2413 = !DILocation(line: 60, column: 5, scope: !2405)
!2414 = !DILocation(line: 205, column: 38, scope: !2405)
!2415 = !DILocation(line: 205, column: 5, scope: !2405)
!2416 = !DILocation(line: 207, column: 5, scope: !2405)
!2417 = !DILocation(line: 208, column: 1, scope: !2405)
!2418 = distinct !DISubprogram(name: "get_current_count", scope: !939, file: !939, line: 56, type: !1991, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !938, retainedNodes: !1204)
!2419 = !DILocation(line: 58, column: 12, scope: !2418)
!2420 = !DILocation(line: 58, column: 5, scope: !2418)
!2421 = distinct !DISubprogram(name: "delay_time", scope: !939, file: !939, line: 62, type: !1062, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !938, retainedNodes: !2422)
!2422 = !{!2423, !2424, !2425}
!2423 = !DILocalVariable(name: "count", arg: 1, scope: !2421, file: !939, line: 62, type: !60)
!2424 = !DILocalVariable(name: "end_count", scope: !2421, file: !939, line: 64, type: !60)
!2425 = !DILocalVariable(name: "current", scope: !2421, file: !939, line: 64, type: !60)
!2426 = !DILocation(line: 0, scope: !2421)
!2427 = !DILocation(line: 66, column: 17, scope: !2421)
!2428 = !DILocation(line: 66, column: 37, scope: !2421)
!2429 = !DILocation(line: 66, column: 45, scope: !2421)
!2430 = !DILocation(line: 67, column: 15, scope: !2421)
!2431 = !DILocation(line: 68, column: 12, scope: !2421)
!2432 = !DILocation(line: 68, column: 5, scope: !2421)
!2433 = !DILocation(line: 69, column: 19, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2421, file: !939, line: 68, column: 45)
!2435 = distinct !{!2435, !2432, !2436}
!2436 = !DILocation(line: 70, column: 5, scope: !2421)
!2437 = !DILocation(line: 72, column: 1, scope: !2421)
!2438 = distinct !DISubprogram(name: "delay_time_for_gpt4", scope: !939, file: !939, line: 75, type: !1062, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !938, retainedNodes: !2439)
!2439 = !{!2440, !2441, !2442}
!2440 = !DILocalVariable(name: "count", arg: 1, scope: !2438, file: !939, line: 75, type: !60)
!2441 = !DILocalVariable(name: "end_count", scope: !2438, file: !939, line: 77, type: !60)
!2442 = !DILocalVariable(name: "current", scope: !2438, file: !939, line: 77, type: !60)
!2443 = !DILocation(line: 0, scope: !2438)
!2444 = !DILocation(line: 79, column: 17, scope: !2438)
!2445 = !DILocation(line: 79, column: 42, scope: !2438)
!2446 = !DILocation(line: 79, column: 50, scope: !2438)
!2447 = !DILocation(line: 80, column: 15, scope: !2438)
!2448 = !DILocation(line: 81, column: 12, scope: !2438)
!2449 = !DILocation(line: 81, column: 5, scope: !2438)
!2450 = !DILocation(line: 82, column: 19, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2438, file: !939, line: 81, column: 45)
!2452 = distinct !{!2452, !2449, !2453}
!2453 = !DILocation(line: 83, column: 5, scope: !2438)
!2454 = !DILocation(line: 85, column: 1, scope: !2438)
!2455 = distinct !DISubprogram(name: "get_current_gpt4_count", scope: !939, file: !939, line: 95, type: !1991, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !938, retainedNodes: !1204)
!2456 = !DILocation(line: 97, column: 13, scope: !2455)
!2457 = !DILocation(line: 97, column: 5, scope: !2455)
!2458 = distinct !DISubprogram(name: "delay_ms", scope: !939, file: !939, line: 107, type: !2355, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !938, retainedNodes: !2459)
!2459 = !{!2460, !2461}
!2460 = !DILocalVariable(name: "ms", arg: 1, scope: !2458, file: !939, line: 107, type: !176)
!2461 = !DILocalVariable(name: "count", scope: !2458, file: !939, line: 109, type: !176)
!2462 = !DILocation(line: 0, scope: !2458)
!2463 = !DILocation(line: 111, column: 17, scope: !2458)
!2464 = !DILocation(line: 112, column: 17, scope: !2458)
!2465 = !DILocation(line: 112, column: 23, scope: !2458)
!2466 = !DILocation(line: 112, column: 11, scope: !2458)
!2467 = !DILocation(line: 113, column: 17, scope: !2458)
!2468 = !DILocation(line: 113, column: 23, scope: !2458)
!2469 = !DILocation(line: 113, column: 11, scope: !2458)
!2470 = !DILocation(line: 114, column: 17, scope: !2458)
!2471 = !DILocation(line: 114, column: 23, scope: !2458)
!2472 = !DILocation(line: 114, column: 11, scope: !2458)
!2473 = !DILocation(line: 115, column: 5, scope: !2458)
!2474 = !DILocation(line: 116, column: 1, scope: !2458)
!2475 = distinct !DISubprogram(name: "delay_us", scope: !939, file: !939, line: 120, type: !2355, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !938, retainedNodes: !2476)
!2476 = !{!2477, !2478, !2479}
!2477 = !DILocalVariable(name: "us", arg: 1, scope: !2475, file: !939, line: 120, type: !176)
!2478 = !DILocalVariable(name: "count", scope: !2475, file: !939, line: 122, type: !176)
!2479 = !DILocalVariable(name: "ticks_per_us", scope: !2475, file: !939, line: 123, type: !176)
!2480 = !DILocation(line: 0, scope: !2475)
!2481 = !DILocation(line: 125, column: 20, scope: !2475)
!2482 = !DILocation(line: 125, column: 39, scope: !2475)
!2483 = !DILocation(line: 126, column: 26, scope: !2475)
!2484 = !DILocation(line: 128, column: 5, scope: !2475)
!2485 = !DILocation(line: 129, column: 1, scope: !2475)
!2486 = distinct !DISubprogram(name: "drvTMR_init", scope: !939, file: !939, line: 133, type: !2487, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !938, retainedNodes: !2489)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{null, !176, !176, !119, !74}
!2489 = !{!2490, !2491, !2492, !2493}
!2490 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2486, file: !939, line: 133, type: !176)
!2491 = !DILocalVariable(name: "countValue", arg: 2, scope: !2486, file: !939, line: 133, type: !176)
!2492 = !DILocalVariable(name: "autoRepeat", arg: 3, scope: !2486, file: !939, line: 133, type: !119)
!2493 = !DILocalVariable(name: "TMR_Callback", arg: 4, scope: !2486, file: !939, line: 133, type: !74)
!2494 = !DILocation(line: 0, scope: !2486)
!2495 = !DILocation(line: 136, column: 5, scope: !2486)
!2496 = !DILocation(line: 138, column: 18, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2486, file: !939, line: 138, column: 9)
!2498 = !DILocation(line: 138, column: 9, scope: !2486)
!2499 = !DILocation(line: 139, column: 30, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2497, file: !939, line: 138, column: 27)
!2501 = !DILocation(line: 141, column: 5, scope: !2500)
!2502 = !DILocation(line: 142, column: 30, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2497, file: !939, line: 141, column: 12)
!2504 = !DILocation(line: 0, scope: !2497)
!2505 = !DILocation(line: 146, column: 5, scope: !2486)
!2506 = !DILocation(line: 147, column: 1, scope: !2486)
!2507 = distinct !DISubprogram(name: "TMR_Start", scope: !939, file: !939, line: 149, type: !2355, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !938, retainedNodes: !2508)
!2508 = !{!2509}
!2509 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2507, file: !939, line: 149, type: !176)
!2510 = !DILocation(line: 0, scope: !2507)
!2511 = !DILocation(line: 151, column: 5, scope: !2507)
!2512 = !DILocation(line: 152, column: 1, scope: !2507)
!2513 = distinct !DISubprogram(name: "TMR_Stop", scope: !939, file: !939, line: 154, type: !2355, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !938, retainedNodes: !2514)
!2514 = !{!2515}
!2515 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2513, file: !939, line: 154, type: !176)
!2516 = !DILocation(line: 0, scope: !2513)
!2517 = !DILocation(line: 156, column: 5, scope: !2513)
!2518 = !DILocation(line: 157, column: 1, scope: !2513)
!2519 = distinct !DISubprogram(name: "drvGPT2Init", scope: !939, file: !939, line: 160, type: !75, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !938, retainedNodes: !1204)
!2520 = !DILocation(line: 162, column: 5, scope: !2519)
!2521 = !DILocation(line: 163, column: 1, scope: !2519)
!2522 = distinct !DISubprogram(name: "drvGPT4Init", scope: !939, file: !939, line: 165, type: !75, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !938, retainedNodes: !1204)
!2523 = !DILocation(line: 167, column: 5, scope: !2522)
!2524 = !DILocation(line: 168, column: 1, scope: !2522)
!2525 = distinct !DISubprogram(name: "clear_TMR_INT_status_bit", scope: !939, file: !939, line: 170, type: !2355, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !938, retainedNodes: !2526)
!2526 = !{!2527}
!2527 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2525, file: !939, line: 170, type: !176)
!2528 = !DILocation(line: 0, scope: !2525)
!2529 = !DILocation(line: 172, column: 9, scope: !2525)
!2530 = !DILocation(line: 177, column: 5, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !939, line: 175, column: 27)
!2532 = distinct !DILexicalBlock(scope: !2525, file: !939, line: 175, column: 9)
!2533 = !DILocation(line: 178, column: 1, scope: !2525)
!2534 = distinct !DISubprogram(name: "top_xtal_init", scope: !186, file: !186, line: 52, type: !75, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !2535)
!2535 = !{!2536, !2537}
!2536 = !DILocalVariable(name: "u4RegVal", scope: !2534, file: !186, line: 54, type: !176)
!2537 = !DILocalVariable(name: "reg", scope: !2534, file: !186, line: 55, type: !684)
!2538 = !DILocation(line: 0, scope: !2534)
!2539 = !DILocation(line: 55, column: 25, scope: !2534)
!2540 = !DILocation(line: 56, column: 16, scope: !2534)
!2541 = !DILocation(line: 56, column: 23, scope: !2534)
!2542 = !DILocation(line: 58, column: 16, scope: !2534)
!2543 = !DILocation(line: 61, column: 5, scope: !2534)
!2544 = !DILocation(line: 59, column: 14, scope: !2534)
!2545 = !DILocation(line: 0, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2534, file: !186, line: 61, column: 18)
!2547 = !DILocation(line: 87, column: 38, scope: !2534)
!2548 = !DILocation(line: 88, column: 21, scope: !2534)
!2549 = !DILocation(line: 88, column: 19, scope: !2534)
!2550 = !DILocation(line: 89, column: 5, scope: !2534)
!2551 = !DILocation(line: 90, column: 17, scope: !2534)
!2552 = !DILocation(line: 90, column: 33, scope: !2534)
!2553 = !DILocation(line: 90, column: 5, scope: !2534)
!2554 = !DILocation(line: 91, column: 1, scope: !2534)
!2555 = distinct !DISubprogram(name: "top_xtal_freq_get", scope: !186, file: !186, line: 98, type: !1991, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !1204)
!2556 = !DILocation(line: 100, column: 12, scope: !2555)
!2557 = !DILocation(line: 100, column: 5, scope: !2555)
!2558 = distinct !DISubprogram(name: "top_mcu_freq_get", scope: !186, file: !186, line: 108, type: !1991, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !1204)
!2559 = !DILocation(line: 110, column: 12, scope: !2558)
!2560 = !DILocation(line: 110, column: 5, scope: !2558)
!2561 = distinct !DISubprogram(name: "cmnPLL1ON", scope: !186, file: !186, line: 118, type: !75, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !2562)
!2562 = !{!2563, !2564}
!2563 = !DILocalVariable(name: "reg", scope: !2561, file: !186, line: 120, type: !191)
!2564 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2561, file: !186, line: 121, type: !190)
!2565 = !DILocation(line: 120, column: 5, scope: !2561)
!2566 = !DILocation(line: 120, column: 23, scope: !2561)
!2567 = !DILocation(line: 0, scope: !2561)
!2568 = !DILocation(line: 123, column: 11, scope: !2561)
!2569 = !DILocation(line: 123, column: 9, scope: !2561)
!2570 = !DILocation(line: 124, column: 12, scope: !2561)
!2571 = !DILocation(line: 124, column: 16, scope: !2561)
!2572 = !DILocation(line: 124, column: 39, scope: !2561)
!2573 = !DILocation(line: 124, column: 9, scope: !2561)
!2574 = !DILocation(line: 126, column: 9, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2561, file: !186, line: 126, column: 9)
!2576 = !DILocation(line: 126, column: 13, scope: !2575)
!2577 = !DILocation(line: 126, column: 9, scope: !2561)
!2578 = !DILocation(line: 127, column: 15, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2575, file: !186, line: 126, column: 47)
!2580 = !DILocation(line: 127, column: 13, scope: !2579)
!2581 = !DILocation(line: 128, column: 15, scope: !2579)
!2582 = !DILocation(line: 128, column: 19, scope: !2579)
!2583 = !DILocation(line: 128, column: 13, scope: !2579)
!2584 = !DILocation(line: 129, column: 15, scope: !2579)
!2585 = !DILocation(line: 129, column: 19, scope: !2579)
!2586 = !DILocation(line: 129, column: 13, scope: !2579)
!2587 = !DILocation(line: 130, column: 46, scope: !2579)
!2588 = !DILocation(line: 130, column: 9, scope: !2579)
!2589 = !DILocation(line: 132, column: 9, scope: !2579)
!2590 = !DILocation(line: 133, column: 19, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2579, file: !186, line: 132, column: 12)
!2592 = !DILocation(line: 133, column: 17, scope: !2591)
!2593 = !DILocation(line: 134, column: 19, scope: !2591)
!2594 = !DILocation(line: 134, column: 23, scope: !2591)
!2595 = !DILocation(line: 134, column: 17, scope: !2591)
!2596 = !DILocation(line: 135, column: 19, scope: !2579)
!2597 = !DILocation(line: 135, column: 18, scope: !2579)
!2598 = !DILocation(line: 135, column: 9, scope: !2591)
!2599 = distinct !{!2599, !2589, !2600}
!2600 = !DILocation(line: 135, column: 22, scope: !2579)
!2601 = !DILocation(line: 138, column: 1, scope: !2561)
!2602 = distinct !DISubprogram(name: "cmnReadRegister32", scope: !2603, file: !2603, line: 176, type: !2604, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !2608)
!2603 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/system_mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpc_capture_pulses_polling/GCC")
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!176, !2606}
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 32)
!2607 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2608 = !{!2609}
!2609 = !DILocalVariable(name: "Register", arg: 1, scope: !2602, file: !2603, line: 176, type: !2606)
!2610 = !DILocation(line: 0, scope: !2602)
!2611 = !DILocation(line: 178, column: 13, scope: !2602)
!2612 = !DILocation(line: 178, column: 12, scope: !2602)
!2613 = !DILocation(line: 178, column: 5, scope: !2602)
!2614 = distinct !DISubprogram(name: "cmnWriteRegister32", scope: !2603, file: !2603, line: 171, type: !2615, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !2617)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{null, !2606, !176}
!2617 = !{!2618, !2619}
!2618 = !DILocalVariable(name: "Register", arg: 1, scope: !2614, file: !2603, line: 171, type: !2606)
!2619 = !DILocalVariable(name: "Value", arg: 2, scope: !2614, file: !2603, line: 171, type: !176)
!2620 = !DILocation(line: 0, scope: !2614)
!2621 = !DILocation(line: 173, column: 6, scope: !2614)
!2622 = !DILocation(line: 173, column: 36, scope: !2614)
!2623 = !DILocation(line: 174, column: 1, scope: !2614)
!2624 = distinct !DISubprogram(name: "cmnPLL1ON_PLL2ON", scope: !186, file: !186, line: 145, type: !2625, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !2627)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{null, !279}
!2627 = !{!2628, !2629, !2630}
!2628 = !DILocalVariable(name: "fg960M", arg: 1, scope: !2624, file: !186, line: 145, type: !279)
!2629 = !DILocalVariable(name: "reg", scope: !2624, file: !186, line: 147, type: !191)
!2630 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2624, file: !186, line: 148, type: !190)
!2631 = !DILocation(line: 0, scope: !2624)
!2632 = !DILocation(line: 147, column: 5, scope: !2624)
!2633 = !DILocation(line: 147, column: 23, scope: !2624)
!2634 = !DILocation(line: 150, column: 11, scope: !2624)
!2635 = !DILocation(line: 150, column: 9, scope: !2624)
!2636 = !DILocation(line: 151, column: 12, scope: !2624)
!2637 = !DILocation(line: 151, column: 16, scope: !2624)
!2638 = !DILocation(line: 151, column: 39, scope: !2624)
!2639 = !DILocation(line: 151, column: 9, scope: !2624)
!2640 = !DILocation(line: 153, column: 9, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2624, file: !186, line: 153, column: 9)
!2642 = !DILocation(line: 153, column: 13, scope: !2641)
!2643 = !DILocation(line: 153, column: 9, scope: !2624)
!2644 = !DILocation(line: 154, column: 15, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2641, file: !186, line: 153, column: 45)
!2646 = !DILocation(line: 154, column: 13, scope: !2645)
!2647 = !DILocation(line: 155, column: 15, scope: !2645)
!2648 = !DILocation(line: 155, column: 19, scope: !2645)
!2649 = !DILocation(line: 155, column: 13, scope: !2645)
!2650 = !DILocation(line: 156, column: 15, scope: !2645)
!2651 = !DILocation(line: 156, column: 19, scope: !2645)
!2652 = !DILocation(line: 156, column: 13, scope: !2645)
!2653 = !DILocation(line: 157, column: 15, scope: !2645)
!2654 = !DILocation(line: 157, column: 13, scope: !2645)
!2655 = !DILocation(line: 158, column: 46, scope: !2645)
!2656 = !DILocation(line: 158, column: 9, scope: !2645)
!2657 = !DILocation(line: 160, column: 15, scope: !2645)
!2658 = !DILocation(line: 160, column: 13, scope: !2645)
!2659 = !DILocation(line: 161, column: 15, scope: !2645)
!2660 = !DILocation(line: 161, column: 19, scope: !2645)
!2661 = !DILocation(line: 161, column: 13, scope: !2645)
!2662 = !DILocation(line: 162, column: 15, scope: !2645)
!2663 = !DILocation(line: 162, column: 19, scope: !2645)
!2664 = !DILocation(line: 162, column: 13, scope: !2645)
!2665 = !DILocation(line: 163, column: 15, scope: !2645)
!2666 = !DILocation(line: 163, column: 19, scope: !2645)
!2667 = !DILocation(line: 163, column: 13, scope: !2645)
!2668 = !DILocation(line: 164, column: 46, scope: !2645)
!2669 = !DILocation(line: 164, column: 9, scope: !2645)
!2670 = !DILocation(line: 166, column: 9, scope: !2645)
!2671 = !DILocation(line: 167, column: 19, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2645, file: !186, line: 166, column: 12)
!2673 = !DILocation(line: 167, column: 17, scope: !2672)
!2674 = !DILocation(line: 168, column: 19, scope: !2672)
!2675 = !DILocation(line: 168, column: 23, scope: !2672)
!2676 = !DILocation(line: 168, column: 17, scope: !2672)
!2677 = !DILocation(line: 169, column: 19, scope: !2645)
!2678 = !DILocation(line: 169, column: 18, scope: !2645)
!2679 = !DILocation(line: 169, column: 9, scope: !2672)
!2680 = distinct !{!2680, !2670, !2681}
!2681 = !DILocation(line: 169, column: 22, scope: !2645)
!2682 = !DILocation(line: 171, column: 15, scope: !2645)
!2683 = !DILocation(line: 171, column: 13, scope: !2645)
!2684 = !DILocation(line: 172, column: 15, scope: !2645)
!2685 = !DILocation(line: 172, column: 19, scope: !2645)
!2686 = !DILocation(line: 172, column: 13, scope: !2645)
!2687 = !DILocation(line: 173, column: 15, scope: !2645)
!2688 = !DILocation(line: 173, column: 19, scope: !2645)
!2689 = !DILocation(line: 173, column: 13, scope: !2645)
!2690 = !DILocation(line: 174, column: 5, scope: !2645)
!2691 = !DILocation(line: 176, column: 11, scope: !2624)
!2692 = !DILocation(line: 176, column: 9, scope: !2624)
!2693 = !DILocation(line: 177, column: 9, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2624, file: !186, line: 177, column: 9)
!2695 = !DILocation(line: 0, scope: !2694)
!2696 = !DILocation(line: 177, column: 9, scope: !2624)
!2697 = !DILocation(line: 178, column: 19, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2694, file: !186, line: 177, column: 17)
!2699 = !DILocation(line: 178, column: 13, scope: !2698)
!2700 = !DILocation(line: 179, column: 5, scope: !2698)
!2701 = !DILocation(line: 180, column: 13, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2694, file: !186, line: 179, column: 12)
!2703 = !DILocation(line: 182, column: 42, scope: !2624)
!2704 = !DILocation(line: 182, column: 5, scope: !2624)
!2705 = !DILocation(line: 184, column: 1, scope: !2624)
!2706 = distinct !DISubprogram(name: "cmnPLL1OFF_PLL2OFF", scope: !186, file: !186, line: 191, type: !75, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !2707)
!2707 = !{!2708, !2709}
!2708 = !DILocalVariable(name: "reg", scope: !2706, file: !186, line: 193, type: !191)
!2709 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2706, file: !186, line: 194, type: !190)
!2710 = !DILocation(line: 193, column: 5, scope: !2706)
!2711 = !DILocation(line: 193, column: 23, scope: !2706)
!2712 = !DILocation(line: 0, scope: !2706)
!2713 = !DILocation(line: 196, column: 11, scope: !2706)
!2714 = !DILocation(line: 196, column: 9, scope: !2706)
!2715 = !DILocation(line: 197, column: 11, scope: !2706)
!2716 = !DILocation(line: 197, column: 15, scope: !2706)
!2717 = !DILocation(line: 197, column: 9, scope: !2706)
!2718 = !DILocation(line: 198, column: 11, scope: !2706)
!2719 = !DILocation(line: 198, column: 15, scope: !2706)
!2720 = !DILocation(line: 198, column: 9, scope: !2706)
!2721 = !DILocation(line: 199, column: 11, scope: !2706)
!2722 = !DILocation(line: 199, column: 9, scope: !2706)
!2723 = !DILocation(line: 200, column: 42, scope: !2706)
!2724 = !DILocation(line: 200, column: 5, scope: !2706)
!2725 = !DILocation(line: 202, column: 11, scope: !2706)
!2726 = !DILocation(line: 202, column: 9, scope: !2706)
!2727 = !DILocation(line: 203, column: 11, scope: !2706)
!2728 = !DILocation(line: 203, column: 15, scope: !2706)
!2729 = !DILocation(line: 203, column: 9, scope: !2706)
!2730 = !DILocation(line: 204, column: 11, scope: !2706)
!2731 = !DILocation(line: 204, column: 15, scope: !2706)
!2732 = !DILocation(line: 204, column: 9, scope: !2706)
!2733 = !DILocation(line: 205, column: 11, scope: !2706)
!2734 = !DILocation(line: 205, column: 9, scope: !2706)
!2735 = !DILocation(line: 206, column: 42, scope: !2706)
!2736 = !DILocation(line: 206, column: 5, scope: !2706)
!2737 = !DILocation(line: 209, column: 1, scope: !2706)
!2738 = distinct !DISubprogram(name: "cmnCpuClkConfigureToXtal", scope: !186, file: !186, line: 216, type: !75, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !2739)
!2739 = !{!2740, !2741}
!2740 = !DILocalVariable(name: "reg", scope: !2738, file: !186, line: 218, type: !191)
!2741 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2738, file: !186, line: 219, type: !190)
!2742 = !DILocation(line: 218, column: 5, scope: !2738)
!2743 = !DILocation(line: 218, column: 23, scope: !2738)
!2744 = !DILocation(line: 0, scope: !2738)
!2745 = !DILocation(line: 222, column: 11, scope: !2738)
!2746 = !DILocation(line: 222, column: 9, scope: !2738)
!2747 = !DILocation(line: 223, column: 11, scope: !2738)
!2748 = !DILocation(line: 223, column: 15, scope: !2738)
!2749 = !DILocation(line: 223, column: 9, scope: !2738)
!2750 = !DILocation(line: 224, column: 11, scope: !2738)
!2751 = !DILocation(line: 224, column: 9, scope: !2738)
!2752 = !DILocation(line: 225, column: 39, scope: !2738)
!2753 = !DILocation(line: 225, column: 5, scope: !2738)
!2754 = !DILocation(line: 228, column: 11, scope: !2738)
!2755 = !DILocation(line: 228, column: 9, scope: !2738)
!2756 = !DILocation(line: 229, column: 11, scope: !2738)
!2757 = !DILocation(line: 229, column: 15, scope: !2738)
!2758 = !DILocation(line: 229, column: 9, scope: !2738)
!2759 = !DILocation(line: 230, column: 11, scope: !2738)
!2760 = !DILocation(line: 230, column: 9, scope: !2738)
!2761 = !DILocation(line: 231, column: 39, scope: !2738)
!2762 = !DILocation(line: 231, column: 5, scope: !2738)
!2763 = !DILocation(line: 233, column: 5, scope: !2738)
!2764 = !DILocation(line: 233, column: 12, scope: !2738)
!2765 = !DILocation(line: 233, column: 19, scope: !2738)
!2766 = !DILocation(line: 233, column: 16, scope: !2738)
!2767 = distinct !{!2767, !2763, !2768}
!2768 = !DILocation(line: 233, column: 52, scope: !2738)
!2769 = !DILocation(line: 235, column: 21, scope: !2738)
!2770 = !DILocation(line: 235, column: 19, scope: !2738)
!2771 = !DILocation(line: 236, column: 5, scope: !2738)
!2772 = !DILocation(line: 237, column: 17, scope: !2738)
!2773 = !DILocation(line: 237, column: 33, scope: !2738)
!2774 = !DILocation(line: 237, column: 5, scope: !2738)
!2775 = !DILocation(line: 239, column: 1, scope: !2738)
!2776 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo192M", scope: !186, file: !186, line: 246, type: !75, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !2777)
!2777 = !{!2778, !2779}
!2778 = !DILocalVariable(name: "reg", scope: !2776, file: !186, line: 248, type: !191)
!2779 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2776, file: !186, line: 249, type: !190)
!2780 = !DILocation(line: 248, column: 5, scope: !2776)
!2781 = !DILocation(line: 248, column: 23, scope: !2776)
!2782 = !DILocation(line: 0, scope: !2776)
!2783 = !DILocation(line: 252, column: 5, scope: !2776)
!2784 = !DILocation(line: 255, column: 11, scope: !2776)
!2785 = !DILocation(line: 255, column: 9, scope: !2776)
!2786 = !DILocation(line: 256, column: 11, scope: !2776)
!2787 = !DILocation(line: 256, column: 15, scope: !2776)
!2788 = !DILocation(line: 256, column: 9, scope: !2776)
!2789 = !DILocation(line: 257, column: 11, scope: !2776)
!2790 = !DILocation(line: 257, column: 15, scope: !2776)
!2791 = !DILocation(line: 257, column: 9, scope: !2776)
!2792 = !DILocation(line: 258, column: 39, scope: !2776)
!2793 = !DILocation(line: 258, column: 5, scope: !2776)
!2794 = !DILocation(line: 260, column: 5, scope: !2776)
!2795 = !DILocation(line: 260, column: 12, scope: !2776)
!2796 = !DILocation(line: 260, column: 19, scope: !2776)
!2797 = !DILocation(line: 260, column: 16, scope: !2776)
!2798 = distinct !{!2798, !2794, !2799}
!2799 = !DILocation(line: 260, column: 52, scope: !2776)
!2800 = !DILocation(line: 263, column: 11, scope: !2776)
!2801 = !DILocation(line: 263, column: 9, scope: !2776)
!2802 = !DILocation(line: 264, column: 11, scope: !2776)
!2803 = !DILocation(line: 264, column: 15, scope: !2776)
!2804 = !DILocation(line: 264, column: 9, scope: !2776)
!2805 = !DILocation(line: 265, column: 11, scope: !2776)
!2806 = !DILocation(line: 265, column: 15, scope: !2776)
!2807 = !DILocation(line: 265, column: 9, scope: !2776)
!2808 = !DILocation(line: 266, column: 39, scope: !2776)
!2809 = !DILocation(line: 266, column: 5, scope: !2776)
!2810 = !DILocation(line: 269, column: 11, scope: !2776)
!2811 = !DILocation(line: 269, column: 9, scope: !2776)
!2812 = !DILocation(line: 270, column: 11, scope: !2776)
!2813 = !DILocation(line: 270, column: 15, scope: !2776)
!2814 = !DILocation(line: 270, column: 9, scope: !2776)
!2815 = !DILocation(line: 271, column: 11, scope: !2776)
!2816 = !DILocation(line: 271, column: 15, scope: !2776)
!2817 = !DILocation(line: 271, column: 9, scope: !2776)
!2818 = !DILocation(line: 272, column: 39, scope: !2776)
!2819 = !DILocation(line: 272, column: 5, scope: !2776)
!2820 = !DILocation(line: 273, column: 19, scope: !2776)
!2821 = !DILocation(line: 274, column: 5, scope: !2776)
!2822 = !DILocation(line: 275, column: 17, scope: !2776)
!2823 = !DILocation(line: 275, column: 33, scope: !2776)
!2824 = !DILocation(line: 275, column: 5, scope: !2776)
!2825 = !DILocation(line: 277, column: 1, scope: !2776)
!2826 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo160M", scope: !186, file: !186, line: 284, type: !75, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !2827)
!2827 = !{!2828, !2829}
!2828 = !DILocalVariable(name: "reg", scope: !2826, file: !186, line: 286, type: !191)
!2829 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2826, file: !186, line: 287, type: !190)
!2830 = !DILocation(line: 286, column: 5, scope: !2826)
!2831 = !DILocation(line: 286, column: 23, scope: !2826)
!2832 = !DILocation(line: 0, scope: !2826)
!2833 = !DILocation(line: 290, column: 5, scope: !2826)
!2834 = !DILocation(line: 293, column: 11, scope: !2826)
!2835 = !DILocation(line: 293, column: 9, scope: !2826)
!2836 = !DILocation(line: 294, column: 11, scope: !2826)
!2837 = !DILocation(line: 294, column: 15, scope: !2826)
!2838 = !DILocation(line: 294, column: 9, scope: !2826)
!2839 = !DILocation(line: 295, column: 11, scope: !2826)
!2840 = !DILocation(line: 295, column: 15, scope: !2826)
!2841 = !DILocation(line: 295, column: 9, scope: !2826)
!2842 = !DILocation(line: 296, column: 39, scope: !2826)
!2843 = !DILocation(line: 296, column: 5, scope: !2826)
!2844 = !DILocation(line: 298, column: 5, scope: !2826)
!2845 = !DILocation(line: 298, column: 12, scope: !2826)
!2846 = !DILocation(line: 298, column: 19, scope: !2826)
!2847 = !DILocation(line: 298, column: 16, scope: !2826)
!2848 = distinct !{!2848, !2844, !2849}
!2849 = !DILocation(line: 298, column: 52, scope: !2826)
!2850 = !DILocation(line: 301, column: 11, scope: !2826)
!2851 = !DILocation(line: 301, column: 9, scope: !2826)
!2852 = !DILocation(line: 302, column: 11, scope: !2826)
!2853 = !DILocation(line: 302, column: 15, scope: !2826)
!2854 = !DILocation(line: 302, column: 9, scope: !2826)
!2855 = !DILocation(line: 303, column: 11, scope: !2826)
!2856 = !DILocation(line: 303, column: 15, scope: !2826)
!2857 = !DILocation(line: 303, column: 9, scope: !2826)
!2858 = !DILocation(line: 304, column: 39, scope: !2826)
!2859 = !DILocation(line: 304, column: 5, scope: !2826)
!2860 = !DILocation(line: 307, column: 11, scope: !2826)
!2861 = !DILocation(line: 307, column: 9, scope: !2826)
!2862 = !DILocation(line: 308, column: 11, scope: !2826)
!2863 = !DILocation(line: 308, column: 15, scope: !2826)
!2864 = !DILocation(line: 308, column: 9, scope: !2826)
!2865 = !DILocation(line: 309, column: 11, scope: !2826)
!2866 = !DILocation(line: 309, column: 15, scope: !2826)
!2867 = !DILocation(line: 309, column: 9, scope: !2826)
!2868 = !DILocation(line: 310, column: 39, scope: !2826)
!2869 = !DILocation(line: 310, column: 5, scope: !2826)
!2870 = !DILocation(line: 311, column: 19, scope: !2826)
!2871 = !DILocation(line: 312, column: 5, scope: !2826)
!2872 = !DILocation(line: 313, column: 17, scope: !2826)
!2873 = !DILocation(line: 313, column: 33, scope: !2826)
!2874 = !DILocation(line: 313, column: 5, scope: !2826)
!2875 = !DILocation(line: 315, column: 1, scope: !2826)
!2876 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo64M", scope: !186, file: !186, line: 323, type: !75, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !2877)
!2877 = !{!2878, !2879}
!2878 = !DILocalVariable(name: "reg", scope: !2876, file: !186, line: 325, type: !191)
!2879 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2876, file: !186, line: 326, type: !190)
!2880 = !DILocation(line: 325, column: 5, scope: !2876)
!2881 = !DILocation(line: 325, column: 23, scope: !2876)
!2882 = !DILocation(line: 0, scope: !2876)
!2883 = !DILocation(line: 329, column: 5, scope: !2876)
!2884 = !DILocation(line: 332, column: 11, scope: !2876)
!2885 = !DILocation(line: 332, column: 9, scope: !2876)
!2886 = !DILocation(line: 333, column: 11, scope: !2876)
!2887 = !DILocation(line: 333, column: 15, scope: !2876)
!2888 = !DILocation(line: 333, column: 9, scope: !2876)
!2889 = !DILocation(line: 334, column: 11, scope: !2876)
!2890 = !DILocation(line: 334, column: 9, scope: !2876)
!2891 = !DILocation(line: 335, column: 39, scope: !2876)
!2892 = !DILocation(line: 335, column: 5, scope: !2876)
!2893 = !DILocation(line: 337, column: 5, scope: !2876)
!2894 = !DILocation(line: 337, column: 12, scope: !2876)
!2895 = !DILocation(line: 337, column: 19, scope: !2876)
!2896 = !DILocation(line: 337, column: 16, scope: !2876)
!2897 = distinct !{!2897, !2893, !2898}
!2898 = !DILocation(line: 337, column: 52, scope: !2876)
!2899 = !DILocation(line: 340, column: 11, scope: !2876)
!2900 = !DILocation(line: 340, column: 9, scope: !2876)
!2901 = !DILocation(line: 341, column: 11, scope: !2876)
!2902 = !DILocation(line: 341, column: 15, scope: !2876)
!2903 = !DILocation(line: 341, column: 9, scope: !2876)
!2904 = !DILocation(line: 342, column: 11, scope: !2876)
!2905 = !DILocation(line: 342, column: 15, scope: !2876)
!2906 = !DILocation(line: 342, column: 9, scope: !2876)
!2907 = !DILocation(line: 343, column: 39, scope: !2876)
!2908 = !DILocation(line: 343, column: 5, scope: !2876)
!2909 = !DILocation(line: 344, column: 19, scope: !2876)
!2910 = !DILocation(line: 345, column: 5, scope: !2876)
!2911 = !DILocation(line: 346, column: 17, scope: !2876)
!2912 = !DILocation(line: 346, column: 33, scope: !2876)
!2913 = !DILocation(line: 346, column: 5, scope: !2876)
!2914 = !DILocation(line: 348, column: 1, scope: !2876)
!2915 = distinct !DISubprogram(name: "cmnSerialFlashClkConfToXtal", scope: !186, file: !186, line: 353, type: !75, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !185, retainedNodes: !2916)
!2916 = !{!2917, !2918}
!2917 = !DILocalVariable(name: "reg", scope: !2915, file: !186, line: 355, type: !79)
!2918 = !DILocalVariable(name: "pTopCfgHclk", scope: !2915, file: !186, line: 356, type: !192)
!2919 = !DILocation(line: 355, column: 5, scope: !2915)
!2920 = !DILocation(line: 355, column: 21, scope: !2915)
!2921 = !DILocation(line: 0, scope: !2915)
!2922 = !DILocation(line: 358, column: 11, scope: !2915)
!2923 = !DILocation(line: 358, column: 9, scope: !2915)
!2924 = !DILocation(line: 359, column: 11, scope: !2915)
!2925 = !DILocation(line: 359, column: 15, scope: !2915)
!2926 = !DILocation(line: 359, column: 9, scope: !2915)
!2927 = !DILocation(line: 360, column: 11, scope: !2915)
!2928 = !DILocation(line: 360, column: 9, scope: !2915)
!2929 = !DILocation(line: 361, column: 37, scope: !2915)
!2930 = !DILocation(line: 361, column: 5, scope: !2915)
!2931 = !DILocation(line: 362, column: 1, scope: !2915)
!2932 = distinct !DISubprogram(name: "getc", scope: !199, file: !199, line: 68, type: !2933, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !2934)
!2933 = !DISubroutineType(types: !1012)
!2934 = !{!2935}
!2935 = !DILocalVariable(name: "rc", scope: !2932, file: !199, line: 71, type: !13)
!2936 = !DILocation(line: 71, column: 14, scope: !2932)
!2937 = !DILocation(line: 0, scope: !2932)
!2938 = !DILocation(line: 72, column: 5, scope: !2932)
!2939 = distinct !DISubprogram(name: "getc_nowait", scope: !199, file: !199, line: 80, type: !2933, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !2940)
!2940 = !{!2941}
!2941 = !DILocalVariable(name: "c", scope: !2939, file: !199, line: 82, type: !446)
!2942 = !DILocation(line: 84, column: 9, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2939, file: !199, line: 84, column: 9)
!2944 = !DILocation(line: 84, column: 40, scope: !2943)
!2945 = !DILocation(line: 84, column: 9, scope: !2939)
!2946 = !DILocation(line: 85, column: 13, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2943, file: !199, line: 84, column: 47)
!2948 = !DILocation(line: 86, column: 16, scope: !2947)
!2949 = !DILocation(line: 0, scope: !2939)
!2950 = !DILocation(line: 86, column: 9, scope: !2947)
!2951 = !DILocation(line: 0, scope: !2943)
!2952 = !DILocation(line: 90, column: 1, scope: !2939)
!2953 = distinct !DISubprogram(name: "uart_output_char", scope: !199, file: !199, line: 93, type: !2954, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !2957)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{null, !2956, !230}
!2956 = !DIDerivedType(tag: DW_TAG_typedef, name: "UART_PORT", file: !202, line: 75, baseType: !201)
!2957 = !{!2958, !2959, !2960}
!2958 = !DILocalVariable(name: "port_no", arg: 1, scope: !2953, file: !199, line: 93, type: !2956)
!2959 = !DILocalVariable(name: "c", arg: 2, scope: !2953, file: !199, line: 93, type: !230)
!2960 = !DILocalVariable(name: "base", scope: !2953, file: !199, line: 95, type: !7)
!2961 = !DILocation(line: 0, scope: !2953)
!2962 = !DILocation(line: 95, column: 25, scope: !2953)
!2963 = !DILocation(line: 97, column: 5, scope: !2953)
!2964 = !DILocation(line: 97, column: 14, scope: !2953)
!2965 = !DILocation(line: 97, column: 42, scope: !2953)
!2966 = !DILocation(line: 97, column: 12, scope: !2953)
!2967 = distinct !{!2967, !2963, !2968}
!2968 = !DILocation(line: 98, column: 9, scope: !2953)
!2969 = !DILocation(line: 99, column: 35, scope: !2953)
!2970 = !DILocation(line: 99, column: 5, scope: !2953)
!2971 = !DILocation(line: 99, column: 33, scope: !2953)
!2972 = !DILocation(line: 102, column: 1, scope: !2953)
!2973 = distinct !DISubprogram(name: "uart_input_char", scope: !199, file: !199, line: 106, type: !2974, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !2976)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!279, !2956}
!2976 = !{!2977, !2978, !2979}
!2977 = !DILocalVariable(name: "port_no", arg: 1, scope: !2973, file: !199, line: 106, type: !2956)
!2978 = !DILocalVariable(name: "base", scope: !2973, file: !199, line: 108, type: !7)
!2979 = !DILocalVariable(name: "c", scope: !2973, file: !199, line: 109, type: !446)
!2980 = !DILocation(line: 0, scope: !2973)
!2981 = !DILocation(line: 108, column: 25, scope: !2973)
!2982 = !DILocation(line: 111, column: 5, scope: !2973)
!2983 = !DILocation(line: 111, column: 14, scope: !2973)
!2984 = !DILocation(line: 111, column: 42, scope: !2973)
!2985 = !DILocation(line: 111, column: 12, scope: !2973)
!2986 = distinct !{!2986, !2982, !2987}
!2987 = !DILocation(line: 112, column: 9, scope: !2973)
!2988 = !DILocation(line: 114, column: 9, scope: !2973)
!2989 = !DILocation(line: 116, column: 5, scope: !2973)
!2990 = distinct !DISubprogram(name: "uart_input_char_unblocking", scope: !199, file: !199, line: 120, type: !2991, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !2993)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!176, !2956}
!2993 = !{!2994, !2995, !2996}
!2994 = !DILocalVariable(name: "port_no", arg: 1, scope: !2990, file: !199, line: 120, type: !2956)
!2995 = !DILocalVariable(name: "base", scope: !2990, file: !199, line: 122, type: !7)
!2996 = !DILocalVariable(name: "c", scope: !2990, file: !199, line: 123, type: !446)
!2997 = !DILocation(line: 0, scope: !2990)
!2998 = !DILocation(line: 122, column: 25, scope: !2990)
!2999 = !DILocation(line: 125, column: 9, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2990, file: !199, line: 125, column: 9)
!3001 = !DILocation(line: 125, column: 37, scope: !3000)
!3002 = !DILocation(line: 125, column: 9, scope: !2990)
!3003 = !DILocation(line: 126, column: 13, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !3000, file: !199, line: 125, column: 44)
!3005 = !DILocation(line: 127, column: 16, scope: !3004)
!3006 = !DILocation(line: 127, column: 9, scope: !3004)
!3007 = !DILocation(line: 0, scope: !3000)
!3008 = !DILocation(line: 131, column: 1, scope: !2990)
!3009 = distinct !DISubprogram(name: "halUART_HWInit", scope: !199, file: !199, line: 136, type: !3010, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !3012)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{null, !2956}
!3012 = !{!3013}
!3013 = !DILocalVariable(name: "u_port", arg: 1, scope: !3009, file: !199, line: 136, type: !2956)
!3014 = !DILocation(line: 0, scope: !3009)
!3015 = !DILocation(line: 139, column: 5, scope: !3009)
!3016 = !DILocation(line: 140, column: 9, scope: !3009)
!3017 = !DILocation(line: 153, column: 5, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3019, file: !199, line: 147, column: 38)
!3019 = distinct !DILexicalBlock(scope: !3020, file: !199, line: 147, column: 16)
!3020 = distinct !DILexicalBlock(scope: !3009, file: !199, line: 140, column: 9)
!3021 = !DILocation(line: 0, scope: !3020)
!3022 = !DILocation(line: 155, column: 1, scope: !3009)
!3023 = distinct !DISubprogram(name: "halUART_SetFormat", scope: !199, file: !199, line: 158, type: !3024, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !3028)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{null, !2956, !176, !3026, !3026, !3026}
!3026 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !177, line: 36, baseType: !3027)
!3027 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !179, line: 57, baseType: !228)
!3028 = !{!3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3044, !3045}
!3029 = !DILocalVariable(name: "u_port", arg: 1, scope: !3023, file: !199, line: 158, type: !2956)
!3030 = !DILocalVariable(name: "baudrate", arg: 2, scope: !3023, file: !199, line: 158, type: !176)
!3031 = !DILocalVariable(name: "databit", arg: 3, scope: !3023, file: !199, line: 158, type: !3026)
!3032 = !DILocalVariable(name: "parity", arg: 4, scope: !3023, file: !199, line: 158, type: !3026)
!3033 = !DILocalVariable(name: "stopbit", arg: 5, scope: !3023, file: !199, line: 158, type: !3026)
!3034 = !DILocalVariable(name: "control_word", scope: !3023, file: !199, line: 160, type: !3026)
!3035 = !DILocalVariable(name: "UART_BASE", scope: !3023, file: !199, line: 161, type: !176)
!3036 = !DILocalVariable(name: "data", scope: !3023, file: !199, line: 162, type: !176)
!3037 = !DILocalVariable(name: "uart_lcr", scope: !3023, file: !199, line: 162, type: !176)
!3038 = !DILocalVariable(name: "high_speed_div", scope: !3023, file: !199, line: 162, type: !176)
!3039 = !DILocalVariable(name: "sample_count", scope: !3023, file: !199, line: 162, type: !176)
!3040 = !DILocalVariable(name: "sample_point", scope: !3023, file: !199, line: 162, type: !176)
!3041 = !DILocalVariable(name: "fraction", scope: !3023, file: !199, line: 162, type: !176)
!3042 = !DILocalVariable(name: "fraction_L_mapping", scope: !3023, file: !199, line: 163, type: !3043)
!3043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3026, size: 176, elements: !789)
!3044 = !DILocalVariable(name: "fraction_M_mapping", scope: !3023, file: !199, line: 164, type: !3043)
!3045 = !DILocalVariable(name: "status", scope: !3023, file: !199, line: 165, type: !250)
!3046 = !DILocation(line: 0, scope: !3023)
!3047 = !DILocation(line: 163, column: 15, scope: !3023)
!3048 = !DILocation(line: 164, column: 15, scope: !3023)
!3049 = !DILocation(line: 166, column: 20, scope: !3023)
!3050 = !DILocation(line: 166, column: 18, scope: !3023)
!3051 = !DILocation(line: 168, column: 9, scope: !3023)
!3052 = !DILocation(line: 176, column: 5, scope: !3023)
!3053 = !DILocation(line: 176, column: 44, scope: !3023)
!3054 = !DILocation(line: 177, column: 16, scope: !3023)
!3055 = !DILocation(line: 178, column: 50, scope: !3023)
!3056 = !DILocation(line: 178, column: 38, scope: !3023)
!3057 = !DILocation(line: 179, column: 12, scope: !3023)
!3058 = !DILocation(line: 179, column: 25, scope: !3023)
!3059 = !DILocation(line: 180, column: 28, scope: !3023)
!3060 = !DILocation(line: 180, column: 34, scope: !3023)
!3061 = !DILocation(line: 182, column: 29, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3023, file: !199, line: 181, column: 5)
!3063 = !DILocation(line: 182, column: 46, scope: !3062)
!3064 = !DILocation(line: 183, column: 26, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3062, file: !199, line: 183, column: 13)
!3066 = !DILocation(line: 183, column: 13, scope: !3062)
!3067 = !DILocation(line: 192, column: 30, scope: !3023)
!3068 = !DILocation(line: 192, column: 35, scope: !3023)
!3069 = !DILocation(line: 192, column: 46, scope: !3023)
!3070 = !DILocation(line: 192, column: 74, scope: !3023)
!3071 = !DILocation(line: 192, column: 53, scope: !3023)
!3072 = !DILocation(line: 192, column: 80, scope: !3023)
!3073 = !DILocation(line: 193, column: 56, scope: !3023)
!3074 = !DILocation(line: 193, column: 5, scope: !3023)
!3075 = !DILocation(line: 193, column: 38, scope: !3023)
!3076 = !DILocation(line: 194, column: 57, scope: !3023)
!3077 = !DILocation(line: 194, column: 63, scope: !3023)
!3078 = !DILocation(line: 194, column: 5, scope: !3023)
!3079 = !DILocation(line: 194, column: 38, scope: !3023)
!3080 = !DILocation(line: 195, column: 5, scope: !3023)
!3081 = !DILocation(line: 195, column: 45, scope: !3023)
!3082 = !DILocation(line: 196, column: 5, scope: !3023)
!3083 = !DILocation(line: 196, column: 47, scope: !3023)
!3084 = !DILocation(line: 197, column: 46, scope: !3023)
!3085 = !DILocation(line: 197, column: 5, scope: !3023)
!3086 = !DILocation(line: 197, column: 44, scope: !3023)
!3087 = !DILocation(line: 198, column: 46, scope: !3023)
!3088 = !DILocation(line: 198, column: 5, scope: !3023)
!3089 = !DILocation(line: 198, column: 44, scope: !3023)
!3090 = !DILocation(line: 199, column: 38, scope: !3023)
!3091 = !DILocation(line: 200, column: 5, scope: !3023)
!3092 = !DILocation(line: 200, column: 38, scope: !3023)
!3093 = !DILocation(line: 202, column: 20, scope: !3023)
!3094 = !DILocation(line: 203, column: 18, scope: !3023)
!3095 = !DILocation(line: 205, column: 18, scope: !3023)
!3096 = !DILocation(line: 207, column: 18, scope: !3023)
!3097 = !DILocation(line: 208, column: 18, scope: !3023)
!3098 = !DILocation(line: 209, column: 5, scope: !3023)
!3099 = !DILocation(line: 213, column: 1, scope: !3023)
!3100 = distinct !DISubprogram(name: "halUART_Get_VFIFO_Length", scope: !199, file: !199, line: 215, type: !3101, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !3103)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{null, !2956, !250, !1312}
!3103 = !{!3104, !3105, !3106}
!3104 = !DILocalVariable(name: "u_port", arg: 1, scope: !3100, file: !199, line: 215, type: !2956)
!3105 = !DILocalVariable(name: "is_rx", arg: 2, scope: !3100, file: !199, line: 215, type: !250)
!3106 = !DILocalVariable(name: "length", arg: 3, scope: !3100, file: !199, line: 215, type: !1312)
!3107 = !DILocation(line: 0, scope: !3100)
!3108 = !DILocation(line: 217, column: 16, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3100, file: !199, line: 217, column: 9)
!3110 = !DILocation(line: 0, scope: !3109)
!3111 = !DILocation(line: 217, column: 9, scope: !3100)
!3112 = !DILocation(line: 218, column: 13, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3109, file: !199, line: 217, column: 31)
!3114 = !DILocation(line: 219, column: 23, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3116, file: !199, line: 218, column: 20)
!3116 = distinct !DILexicalBlock(scope: !3113, file: !199, line: 218, column: 13)
!3117 = !DILocation(line: 220, column: 9, scope: !3115)
!3118 = !DILocation(line: 221, column: 23, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3116, file: !199, line: 220, column: 16)
!3120 = !DILocation(line: 221, column: 21, scope: !3119)
!3121 = !DILocation(line: 222, column: 24, scope: !3119)
!3122 = !DILocation(line: 222, column: 21, scope: !3119)
!3123 = !DILocation(line: 225, column: 13, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3109, file: !199, line: 224, column: 12)
!3125 = !DILocation(line: 226, column: 23, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3127, file: !199, line: 225, column: 20)
!3127 = distinct !DILexicalBlock(scope: !3124, file: !199, line: 225, column: 13)
!3128 = !DILocation(line: 227, column: 9, scope: !3126)
!3129 = !DILocation(line: 228, column: 23, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3127, file: !199, line: 227, column: 16)
!3131 = !DILocation(line: 228, column: 21, scope: !3130)
!3132 = !DILocation(line: 229, column: 24, scope: !3130)
!3133 = !DILocation(line: 229, column: 21, scope: !3130)
!3134 = !DILocation(line: 233, column: 5, scope: !3100)
!3135 = distinct !DISubprogram(name: "halUART_Read_VFIFO_Data", scope: !199, file: !199, line: 236, type: !3136, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !3138)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{null, !2956, !494, !176}
!3138 = !{!3139, !3140, !3141, !3142}
!3139 = !DILocalVariable(name: "u_port", arg: 1, scope: !3135, file: !199, line: 236, type: !2956)
!3140 = !DILocalVariable(name: "data", arg: 2, scope: !3135, file: !199, line: 236, type: !494)
!3141 = !DILocalVariable(name: "length", arg: 3, scope: !3135, file: !199, line: 236, type: !176)
!3142 = !DILocalVariable(name: "idx", scope: !3135, file: !199, line: 238, type: !80)
!3143 = !DILocation(line: 0, scope: !3135)
!3144 = !DILocation(line: 239, column: 23, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3146, file: !199, line: 239, column: 5)
!3146 = distinct !DILexicalBlock(scope: !3135, file: !199, line: 239, column: 5)
!3147 = !DILocation(line: 239, column: 5, scope: !3146)
!3148 = !DILocation(line: 240, column: 13, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3145, file: !199, line: 239, column: 40)
!3150 = !DILocation(line: 244, column: 9, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3152, file: !199, line: 242, column: 42)
!3152 = distinct !DILexicalBlock(scope: !3153, file: !199, line: 242, column: 20)
!3153 = distinct !DILexicalBlock(scope: !3149, file: !199, line: 240, column: 13)
!3154 = !DILocation(line: 0, scope: !3153)
!3155 = !DILocation(line: 239, column: 36, scope: !3145)
!3156 = distinct !{!3156, !3147, !3157}
!3157 = !DILocation(line: 246, column: 5, scope: !3146)
!3158 = !DILocation(line: 249, column: 1, scope: !3135)
!3159 = distinct !DISubprogram(name: "halUART_Write_VFIFO_Data", scope: !199, file: !199, line: 251, type: !3160, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !3164)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{null, !2956, !3162, !176}
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 32)
!3163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !279)
!3164 = !{!3165, !3166, !3167, !3168}
!3165 = !DILocalVariable(name: "u_port", arg: 1, scope: !3159, file: !199, line: 251, type: !2956)
!3166 = !DILocalVariable(name: "data", arg: 2, scope: !3159, file: !199, line: 251, type: !3162)
!3167 = !DILocalVariable(name: "length", arg: 3, scope: !3159, file: !199, line: 251, type: !176)
!3168 = !DILocalVariable(name: "idx", scope: !3159, file: !199, line: 253, type: !80)
!3169 = !DILocation(line: 0, scope: !3159)
!3170 = !DILocation(line: 254, column: 23, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3172, file: !199, line: 254, column: 5)
!3172 = distinct !DILexicalBlock(scope: !3159, file: !199, line: 254, column: 5)
!3173 = !DILocation(line: 254, column: 5, scope: !3172)
!3174 = !DILocation(line: 255, column: 13, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3171, file: !199, line: 254, column: 40)
!3176 = !DILocation(line: 256, column: 61, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3178, file: !199, line: 255, column: 35)
!3178 = distinct !DILexicalBlock(scope: !3175, file: !199, line: 255, column: 13)
!3179 = !DILocation(line: 256, column: 59, scope: !3177)
!3180 = !DILocation(line: 257, column: 9, scope: !3177)
!3181 = !DILocation(line: 258, column: 61, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3183, file: !199, line: 257, column: 42)
!3183 = distinct !DILexicalBlock(scope: !3178, file: !199, line: 257, column: 20)
!3184 = !DILocation(line: 258, column: 59, scope: !3182)
!3185 = !DILocation(line: 259, column: 9, scope: !3182)
!3186 = !DILocation(line: 254, column: 36, scope: !3171)
!3187 = distinct !{!3187, !3173, !3188}
!3188 = !DILocation(line: 261, column: 5, scope: !3172)
!3189 = !DILocation(line: 264, column: 1, scope: !3159)
!3190 = distinct !DISubprogram(name: "halUART_Tx_VFIFO_Initialize", scope: !199, file: !199, line: 266, type: !3191, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !3193)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{null, !2956, !494, !176, !176}
!3193 = !{!3194, !3195, !3196, !3197}
!3194 = !DILocalVariable(name: "u_port", arg: 1, scope: !3190, file: !199, line: 266, type: !2956)
!3195 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !3190, file: !199, line: 266, type: !494)
!3196 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !3190, file: !199, line: 266, type: !176)
!3197 = !DILocalVariable(name: "threshold", arg: 4, scope: !3190, file: !199, line: 266, type: !176)
!3198 = !DILocation(line: 0, scope: !3190)
!3199 = !DILocation(line: 268, column: 9, scope: !3190)
!3200 = !DILocation(line: 274, column: 5, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3202, file: !199, line: 271, column: 38)
!3202 = distinct !DILexicalBlock(scope: !3203, file: !199, line: 271, column: 16)
!3203 = distinct !DILexicalBlock(scope: !3190, file: !199, line: 268, column: 9)
!3204 = !DILocation(line: 0, scope: !3203)
!3205 = !DILocation(line: 276, column: 1, scope: !3190)
!3206 = distinct !DISubprogram(name: "halUART_Rx_VFIFO_Initialize", scope: !199, file: !199, line: 278, type: !3207, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !3209)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{null, !2956, !494, !176, !176, !176, !176}
!3209 = !{!3210, !3211, !3212, !3213, !3214, !3215}
!3210 = !DILocalVariable(name: "u_port", arg: 1, scope: !3206, file: !199, line: 278, type: !2956)
!3211 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !3206, file: !199, line: 278, type: !494)
!3212 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !3206, file: !199, line: 278, type: !176)
!3213 = !DILocalVariable(name: "alert_length", arg: 4, scope: !3206, file: !199, line: 278, type: !176)
!3214 = !DILocalVariable(name: "threshold", arg: 5, scope: !3206, file: !199, line: 278, type: !176)
!3215 = !DILocalVariable(name: "timeout", arg: 6, scope: !3206, file: !199, line: 278, type: !176)
!3216 = !DILocation(line: 0, scope: !3206)
!3217 = !DILocation(line: 280, column: 9, scope: !3206)
!3218 = !DILocation(line: 286, column: 5, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3220, file: !199, line: 283, column: 38)
!3220 = distinct !DILexicalBlock(scope: !3221, file: !199, line: 283, column: 16)
!3221 = distinct !DILexicalBlock(scope: !3206, file: !199, line: 280, column: 9)
!3222 = !DILocation(line: 0, scope: !3221)
!3223 = !DILocation(line: 288, column: 1, scope: !3206)
!3224 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_Callback", scope: !199, file: !199, line: 290, type: !3225, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !3227)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{null, !2956, !453}
!3227 = !{!3228, !3229}
!3228 = !DILocalVariable(name: "u_port", arg: 1, scope: !3224, file: !199, line: 290, type: !2956)
!3229 = !DILocalVariable(name: "func", arg: 2, scope: !3224, file: !199, line: 290, type: !453)
!3230 = !DILocation(line: 0, scope: !3224)
!3231 = !DILocation(line: 292, column: 9, scope: !3224)
!3232 = !DILocation(line: 296, column: 5, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3234, file: !199, line: 294, column: 38)
!3234 = distinct !DILexicalBlock(scope: !3235, file: !199, line: 294, column: 16)
!3235 = distinct !DILexicalBlock(scope: !3224, file: !199, line: 292, column: 9)
!3236 = !DILocation(line: 0, scope: !3235)
!3237 = !DILocation(line: 298, column: 1, scope: !3224)
!3238 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_TO_Callback", scope: !199, file: !199, line: 300, type: !3225, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !3239)
!3239 = !{!3240, !3241}
!3240 = !DILocalVariable(name: "u_port", arg: 1, scope: !3238, file: !199, line: 300, type: !2956)
!3241 = !DILocalVariable(name: "func", arg: 2, scope: !3238, file: !199, line: 300, type: !453)
!3242 = !DILocation(line: 0, scope: !3238)
!3243 = !DILocation(line: 302, column: 9, scope: !3238)
!3244 = !DILocation(line: 306, column: 5, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3246, file: !199, line: 304, column: 38)
!3246 = distinct !DILexicalBlock(scope: !3247, file: !199, line: 304, column: 16)
!3247 = distinct !DILexicalBlock(scope: !3238, file: !199, line: 302, column: 9)
!3248 = !DILocation(line: 0, scope: !3247)
!3249 = !DILocation(line: 308, column: 1, scope: !3238)
!3250 = distinct !DISubprogram(name: "uart_set_hardware_flowcontrol", scope: !199, file: !199, line: 310, type: !3010, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !3251)
!3251 = !{!3252, !3253, !3254, !3255}
!3252 = !DILocalVariable(name: "u_port", arg: 1, scope: !3250, file: !199, line: 310, type: !2956)
!3253 = !DILocalVariable(name: "base", scope: !3250, file: !199, line: 312, type: !7)
!3254 = !DILocalVariable(name: "EFR", scope: !3250, file: !199, line: 313, type: !3026)
!3255 = !DILocalVariable(name: "LCR", scope: !3250, file: !199, line: 313, type: !3026)
!3256 = !DILocation(line: 0, scope: !3250)
!3257 = !DILocation(line: 312, column: 25, scope: !3250)
!3258 = !DILocation(line: 315, column: 11, scope: !3250)
!3259 = !DILocation(line: 317, column: 33, scope: !3250)
!3260 = !DILocation(line: 318, column: 11, scope: !3250)
!3261 = !DILocation(line: 320, column: 35, scope: !3250)
!3262 = !DILocation(line: 320, column: 33, scope: !3250)
!3263 = !DILocation(line: 322, column: 5, scope: !3250)
!3264 = !DILocation(line: 322, column: 39, scope: !3250)
!3265 = !DILocation(line: 324, column: 33, scope: !3250)
!3266 = !DILocation(line: 325, column: 5, scope: !3250)
!3267 = !DILocation(line: 325, column: 33, scope: !3250)
!3268 = !DILocation(line: 327, column: 35, scope: !3250)
!3269 = !DILocation(line: 327, column: 33, scope: !3250)
!3270 = !DILocation(line: 328, column: 1, scope: !3250)
!3271 = distinct !DISubprogram(name: "uart_set_software_flowcontrol", scope: !199, file: !199, line: 330, type: !3272, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !3274)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{null, !2956, !279, !279, !279}
!3274 = !{!3275, !3276, !3277, !3278, !3279, !3280, !3281}
!3275 = !DILocalVariable(name: "u_port", arg: 1, scope: !3271, file: !199, line: 330, type: !2956)
!3276 = !DILocalVariable(name: "xon", arg: 2, scope: !3271, file: !199, line: 330, type: !279)
!3277 = !DILocalVariable(name: "xoff", arg: 3, scope: !3271, file: !199, line: 330, type: !279)
!3278 = !DILocalVariable(name: "escape_character", arg: 4, scope: !3271, file: !199, line: 330, type: !279)
!3279 = !DILocalVariable(name: "base", scope: !3271, file: !199, line: 332, type: !7)
!3280 = !DILocalVariable(name: "EFR", scope: !3271, file: !199, line: 333, type: !3026)
!3281 = !DILocalVariable(name: "LCR", scope: !3271, file: !199, line: 333, type: !3026)
!3282 = !DILocation(line: 0, scope: !3271)
!3283 = !DILocation(line: 332, column: 25, scope: !3271)
!3284 = !DILocation(line: 335, column: 11, scope: !3271)
!3285 = !DILocation(line: 337, column: 33, scope: !3271)
!3286 = !DILocation(line: 338, column: 36, scope: !3271)
!3287 = !DILocation(line: 338, column: 5, scope: !3271)
!3288 = !DILocation(line: 338, column: 34, scope: !3271)
!3289 = !DILocation(line: 339, column: 5, scope: !3271)
!3290 = !DILocation(line: 339, column: 34, scope: !3271)
!3291 = !DILocation(line: 340, column: 37, scope: !3271)
!3292 = !DILocation(line: 340, column: 5, scope: !3271)
!3293 = !DILocation(line: 340, column: 35, scope: !3271)
!3294 = !DILocation(line: 341, column: 5, scope: !3271)
!3295 = !DILocation(line: 341, column: 35, scope: !3271)
!3296 = !DILocation(line: 343, column: 11, scope: !3271)
!3297 = !DILocation(line: 345, column: 35, scope: !3271)
!3298 = !DILocation(line: 345, column: 33, scope: !3271)
!3299 = !DILocation(line: 347, column: 35, scope: !3271)
!3300 = !DILocation(line: 347, column: 33, scope: !3271)
!3301 = !DILocation(line: 349, column: 43, scope: !3271)
!3302 = !DILocation(line: 349, column: 5, scope: !3271)
!3303 = !DILocation(line: 349, column: 41, scope: !3271)
!3304 = !DILocation(line: 350, column: 5, scope: !3271)
!3305 = !DILocation(line: 350, column: 39, scope: !3271)
!3306 = !DILocation(line: 351, column: 1, scope: !3271)
!3307 = distinct !DISubprogram(name: "uart_disable_flowcontrol", scope: !199, file: !199, line: 353, type: !3010, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !3308)
!3308 = !{!3309, !3310, !3311}
!3309 = !DILocalVariable(name: "u_port", arg: 1, scope: !3307, file: !199, line: 353, type: !2956)
!3310 = !DILocalVariable(name: "base", scope: !3307, file: !199, line: 355, type: !7)
!3311 = !DILocalVariable(name: "LCR", scope: !3307, file: !199, line: 356, type: !3026)
!3312 = !DILocation(line: 0, scope: !3307)
!3313 = !DILocation(line: 355, column: 25, scope: !3307)
!3314 = !DILocation(line: 358, column: 11, scope: !3307)
!3315 = !DILocation(line: 360, column: 33, scope: !3307)
!3316 = !DILocation(line: 362, column: 5, scope: !3307)
!3317 = !DILocation(line: 362, column: 33, scope: !3307)
!3318 = !DILocation(line: 364, column: 33, scope: !3307)
!3319 = !DILocation(line: 366, column: 35, scope: !3307)
!3320 = !DILocation(line: 366, column: 33, scope: !3307)
!3321 = !DILocation(line: 367, column: 1, scope: !3307)
!3322 = distinct !DISubprogram(name: "uart_reset_default_value", scope: !199, file: !199, line: 436, type: !3010, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !3323)
!3323 = !{!3324, !3325}
!3324 = !DILocalVariable(name: "u_port", arg: 1, scope: !3322, file: !199, line: 436, type: !2956)
!3325 = !DILocalVariable(name: "base", scope: !3322, file: !199, line: 438, type: !7)
!3326 = !DILocation(line: 0, scope: !3322)
!3327 = !DILocation(line: 438, column: 25, scope: !3322)
!3328 = !DILocation(line: 440, column: 5, scope: !3322)
!3329 = !DILocation(line: 440, column: 33, scope: !3322)
!3330 = !DILocation(line: 441, column: 5, scope: !3322)
!3331 = !DILocation(line: 441, column: 33, scope: !3322)
!3332 = !DILocation(line: 442, column: 5, scope: !3322)
!3333 = !DILocation(line: 442, column: 34, scope: !3322)
!3334 = !DILocation(line: 443, column: 5, scope: !3322)
!3335 = !DILocation(line: 443, column: 35, scope: !3322)
!3336 = !DILocation(line: 445, column: 33, scope: !3322)
!3337 = !DILocation(line: 446, column: 5, scope: !3322)
!3338 = !DILocation(line: 446, column: 33, scope: !3322)
!3339 = !DILocation(line: 447, column: 5, scope: !3322)
!3340 = !DILocation(line: 447, column: 33, scope: !3322)
!3341 = !DILocation(line: 449, column: 33, scope: !3322)
!3342 = !DILocation(line: 450, column: 33, scope: !3322)
!3343 = !DILocation(line: 451, column: 33, scope: !3322)
!3344 = !DILocation(line: 453, column: 33, scope: !3322)
!3345 = !DILocation(line: 454, column: 33, scope: !3322)
!3346 = !DILocation(line: 455, column: 33, scope: !3322)
!3347 = !DILocation(line: 457, column: 33, scope: !3322)
!3348 = !DILocation(line: 458, column: 5, scope: !3322)
!3349 = !DILocation(line: 458, column: 33, scope: !3322)
!3350 = !DILocation(line: 459, column: 5, scope: !3322)
!3351 = !DILocation(line: 459, column: 39, scope: !3322)
!3352 = !DILocation(line: 460, column: 5, scope: !3322)
!3353 = !DILocation(line: 460, column: 40, scope: !3322)
!3354 = !DILocation(line: 461, column: 5, scope: !3322)
!3355 = !DILocation(line: 461, column: 42, scope: !3322)
!3356 = !DILocation(line: 462, column: 5, scope: !3322)
!3357 = !DILocation(line: 462, column: 42, scope: !3322)
!3358 = !DILocation(line: 463, column: 5, scope: !3322)
!3359 = !DILocation(line: 463, column: 35, scope: !3322)
!3360 = !DILocation(line: 464, column: 5, scope: !3322)
!3361 = !DILocation(line: 464, column: 41, scope: !3322)
!3362 = !DILocation(line: 465, column: 5, scope: !3322)
!3363 = !DILocation(line: 465, column: 39, scope: !3322)
!3364 = !DILocation(line: 466, column: 5, scope: !3322)
!3365 = !DILocation(line: 466, column: 38, scope: !3322)
!3366 = !DILocation(line: 467, column: 5, scope: !3322)
!3367 = !DILocation(line: 467, column: 42, scope: !3322)
!3368 = !DILocation(line: 468, column: 5, scope: !3322)
!3369 = !DILocation(line: 468, column: 45, scope: !3322)
!3370 = !DILocation(line: 469, column: 5, scope: !3322)
!3371 = !DILocation(line: 469, column: 39, scope: !3322)
!3372 = !DILocation(line: 470, column: 5, scope: !3322)
!3373 = !DILocation(line: 470, column: 39, scope: !3322)
!3374 = !DILocation(line: 471, column: 5, scope: !3322)
!3375 = !DILocation(line: 471, column: 42, scope: !3322)
!3376 = !DILocation(line: 472, column: 1, scope: !3322)
!3377 = distinct !DISubprogram(name: "uart_query_empty", scope: !199, file: !199, line: 474, type: !3010, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !3378)
!3378 = !{!3379, !3380}
!3379 = !DILocalVariable(name: "u_port", arg: 1, scope: !3377, file: !199, line: 474, type: !2956)
!3380 = !DILocalVariable(name: "base", scope: !3377, file: !199, line: 476, type: !7)
!3381 = !DILocation(line: 0, scope: !3377)
!3382 = !DILocation(line: 476, column: 25, scope: !3377)
!3383 = !DILocation(line: 478, column: 5, scope: !3377)
!3384 = !DILocation(line: 478, column: 14, scope: !3377)
!3385 = !DILocation(line: 478, column: 42, scope: !3377)
!3386 = !DILocation(line: 478, column: 12, scope: !3377)
!3387 = distinct !{!3387, !3383, !3388}
!3388 = !DILocation(line: 478, column: 50, scope: !3377)
!3389 = !DILocation(line: 479, column: 1, scope: !3377)
!3390 = distinct !DISubprogram(name: "log_hal_fatal_internal", scope: !942, file: !942, line: 64, type: !3391, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !941, retainedNodes: !3393)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{null, !613, !13, !613, null}
!3393 = !{!3394, !3395, !3396, !3397, !3406}
!3394 = !DILocalVariable(name: "func", arg: 1, scope: !3390, file: !942, line: 64, type: !613)
!3395 = !DILocalVariable(name: "line", arg: 2, scope: !3390, file: !942, line: 64, type: !13)
!3396 = !DILocalVariable(name: "message", arg: 3, scope: !3390, file: !942, line: 64, type: !613)
!3397 = !DILocalVariable(name: "ap", scope: !3390, file: !942, line: 66, type: !3398)
!3398 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3399, line: 46, baseType: !3400)
!3399 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/stdio.h", directory: "/home/mjshen/RTOSExploration")
!3400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3401, line: 32, baseType: !3402)
!3401 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stdarg.h", directory: "")
!3402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !942, baseType: !3403)
!3403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !3404)
!3404 = !{!3405}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !3403, file: !942, line: 66, baseType: !249, size: 32)
!3406 = !DILocalVariable(name: "mask", scope: !3390, file: !942, line: 68, type: !176)
!3407 = !DILocation(line: 0, scope: !3390)
!3408 = !DILocation(line: 66, column: 5, scope: !3390)
!3409 = !DILocation(line: 66, column: 13, scope: !3390)
!3410 = !DILocation(line: 68, column: 5, scope: !3390)
!3411 = !DILocation(line: 69, column: 5, scope: !3390)
!3412 = !DILocation(line: 71, column: 5, scope: !3390)
!3413 = !DILocation(line: 72, column: 5, scope: !3390)
!3414 = !DILocation(line: 73, column: 5, scope: !3390)
!3415 = !DILocation(line: 75, column: 37, scope: !3390)
!3416 = !DILocation(line: 75, column: 5, scope: !3390)
!3417 = !DILocation(line: 77, column: 1, scope: !3390)
!3418 = distinct !DISubprogram(name: "log_hal_error_internal", scope: !942, file: !942, line: 78, type: !3391, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !941, retainedNodes: !3419)
!3419 = !{!3420, !3421, !3422, !3423, !3424}
!3420 = !DILocalVariable(name: "func", arg: 1, scope: !3418, file: !942, line: 78, type: !613)
!3421 = !DILocalVariable(name: "line", arg: 2, scope: !3418, file: !942, line: 78, type: !13)
!3422 = !DILocalVariable(name: "message", arg: 3, scope: !3418, file: !942, line: 78, type: !613)
!3423 = !DILocalVariable(name: "ap", scope: !3418, file: !942, line: 80, type: !3398)
!3424 = !DILocalVariable(name: "mask", scope: !3418, file: !942, line: 82, type: !176)
!3425 = !DILocation(line: 0, scope: !3418)
!3426 = !DILocation(line: 80, column: 5, scope: !3418)
!3427 = !DILocation(line: 80, column: 13, scope: !3418)
!3428 = !DILocation(line: 82, column: 5, scope: !3418)
!3429 = !DILocation(line: 83, column: 5, scope: !3418)
!3430 = !DILocation(line: 85, column: 5, scope: !3418)
!3431 = !DILocation(line: 86, column: 5, scope: !3418)
!3432 = !DILocation(line: 87, column: 5, scope: !3418)
!3433 = !DILocation(line: 89, column: 37, scope: !3418)
!3434 = !DILocation(line: 89, column: 5, scope: !3418)
!3435 = !DILocation(line: 91, column: 1, scope: !3418)
!3436 = distinct !DISubprogram(name: "log_hal_warning_internal", scope: !942, file: !942, line: 92, type: !3391, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !941, retainedNodes: !3437)
!3437 = !{!3438, !3439, !3440, !3441, !3442}
!3438 = !DILocalVariable(name: "func", arg: 1, scope: !3436, file: !942, line: 92, type: !613)
!3439 = !DILocalVariable(name: "line", arg: 2, scope: !3436, file: !942, line: 92, type: !13)
!3440 = !DILocalVariable(name: "message", arg: 3, scope: !3436, file: !942, line: 92, type: !613)
!3441 = !DILocalVariable(name: "ap", scope: !3436, file: !942, line: 94, type: !3398)
!3442 = !DILocalVariable(name: "mask", scope: !3436, file: !942, line: 96, type: !176)
!3443 = !DILocation(line: 0, scope: !3436)
!3444 = !DILocation(line: 94, column: 5, scope: !3436)
!3445 = !DILocation(line: 94, column: 13, scope: !3436)
!3446 = !DILocation(line: 96, column: 5, scope: !3436)
!3447 = !DILocation(line: 97, column: 5, scope: !3436)
!3448 = !DILocation(line: 99, column: 5, scope: !3436)
!3449 = !DILocation(line: 100, column: 5, scope: !3436)
!3450 = !DILocation(line: 101, column: 5, scope: !3436)
!3451 = !DILocation(line: 103, column: 37, scope: !3436)
!3452 = !DILocation(line: 103, column: 5, scope: !3436)
!3453 = !DILocation(line: 105, column: 1, scope: !3436)
!3454 = distinct !DISubprogram(name: "log_hal_info_internal", scope: !942, file: !942, line: 106, type: !3391, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !941, retainedNodes: !3455)
!3455 = !{!3456, !3457, !3458, !3459, !3460}
!3456 = !DILocalVariable(name: "func", arg: 1, scope: !3454, file: !942, line: 106, type: !613)
!3457 = !DILocalVariable(name: "line", arg: 2, scope: !3454, file: !942, line: 106, type: !13)
!3458 = !DILocalVariable(name: "message", arg: 3, scope: !3454, file: !942, line: 106, type: !613)
!3459 = !DILocalVariable(name: "ap", scope: !3454, file: !942, line: 108, type: !3398)
!3460 = !DILocalVariable(name: "mask", scope: !3454, file: !942, line: 110, type: !176)
!3461 = !DILocation(line: 0, scope: !3454)
!3462 = !DILocation(line: 108, column: 5, scope: !3454)
!3463 = !DILocation(line: 108, column: 13, scope: !3454)
!3464 = !DILocation(line: 110, column: 5, scope: !3454)
!3465 = !DILocation(line: 111, column: 5, scope: !3454)
!3466 = !DILocation(line: 113, column: 5, scope: !3454)
!3467 = !DILocation(line: 114, column: 5, scope: !3454)
!3468 = !DILocation(line: 115, column: 5, scope: !3454)
!3469 = !DILocation(line: 117, column: 37, scope: !3454)
!3470 = !DILocation(line: 117, column: 5, scope: !3454)
!3471 = !DILocation(line: 119, column: 1, scope: !3454)
!3472 = distinct !DISubprogram(name: "log_hal_dump_internal", scope: !942, file: !942, line: 121, type: !3473, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !941, retainedNodes: !3477)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{null, !613, !13, !613, !3475, !13, null}
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 32)
!3476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3477 = !{!3478, !3479, !3480, !3481, !3482}
!3478 = !DILocalVariable(name: "func", arg: 1, scope: !3472, file: !942, line: 121, type: !613)
!3479 = !DILocalVariable(name: "line", arg: 2, scope: !3472, file: !942, line: 121, type: !13)
!3480 = !DILocalVariable(name: "message", arg: 3, scope: !3472, file: !942, line: 121, type: !613)
!3481 = !DILocalVariable(name: "data", arg: 4, scope: !3472, file: !942, line: 121, type: !3475)
!3482 = !DILocalVariable(name: "length", arg: 5, scope: !3472, file: !942, line: 121, type: !13)
!3483 = !DILocation(line: 0, scope: !3472)
!3484 = !DILocation(line: 123, column: 1, scope: !3472)
!3485 = distinct !DISubprogram(name: "hal_nvic_init", scope: !237, file: !237, line: 60, type: !3486, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !1204)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!3488}
!3488 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_status_t", file: !240, line: 158, baseType: !239)
!3489 = !DILocation(line: 62, column: 5, scope: !3485)
!3490 = distinct !DISubprogram(name: "hal_nvic_enable_irq", scope: !237, file: !237, line: 65, type: !3491, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !3493)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{!3488, !248}
!3493 = !{!3494, !3495}
!3494 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3490, file: !237, line: 65, type: !248)
!3495 = !DILocalVariable(name: "status", scope: !3490, file: !237, line: 67, type: !3488)
!3496 = !DILocation(line: 0, scope: !3490)
!3497 = !DILocation(line: 69, column: 40, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3490, file: !237, line: 69, column: 9)
!3499 = !DILocation(line: 73, column: 9, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3498, file: !237, line: 72, column: 12)
!3501 = !DILocation(line: 77, column: 5, scope: !3490)
!3502 = !DILocation(line: 78, column: 1, scope: !3490)
!3503 = distinct !DISubprogram(name: "NVIC_EnableIRQ", scope: !254, file: !254, line: 1494, type: !3504, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !3506)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{null, !61}
!3506 = !{!3507}
!3507 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3503, file: !254, line: 1494, type: !61)
!3508 = !DILocation(line: 0, scope: !3503)
!3509 = !DILocation(line: 1497, column: 91, scope: !3503)
!3510 = !DILocation(line: 1497, column: 61, scope: !3503)
!3511 = !DILocation(line: 1497, column: 40, scope: !3503)
!3512 = !DILocation(line: 1497, column: 3, scope: !3503)
!3513 = !DILocation(line: 1497, column: 46, scope: !3503)
!3514 = !DILocation(line: 1498, column: 1, scope: !3503)
!3515 = distinct !DISubprogram(name: "hal_nvic_disable_irq", scope: !237, file: !237, line: 80, type: !3491, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !3516)
!3516 = !{!3517, !3518}
!3517 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3515, file: !237, line: 80, type: !248)
!3518 = !DILocalVariable(name: "status", scope: !3515, file: !237, line: 82, type: !3488)
!3519 = !DILocation(line: 0, scope: !3515)
!3520 = !DILocation(line: 84, column: 40, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3515, file: !237, line: 84, column: 9)
!3522 = !DILocation(line: 88, column: 9, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3521, file: !237, line: 87, column: 12)
!3524 = !DILocation(line: 92, column: 5, scope: !3515)
!3525 = !DILocation(line: 93, column: 1, scope: !3515)
!3526 = distinct !DISubprogram(name: "NVIC_DisableIRQ", scope: !254, file: !254, line: 1507, type: !3504, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !3527)
!3527 = !{!3528}
!3528 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3526, file: !254, line: 1507, type: !61)
!3529 = !DILocation(line: 0, scope: !3526)
!3530 = !DILocation(line: 1509, column: 65, scope: !3526)
!3531 = !DILocation(line: 1509, column: 44, scope: !3526)
!3532 = !DILocation(line: 1509, column: 32, scope: !3526)
!3533 = !DILocation(line: 1509, column: 3, scope: !3526)
!3534 = !DILocation(line: 1509, column: 39, scope: !3526)
!3535 = !DILocation(line: 1510, column: 1, scope: !3526)
!3536 = distinct !DISubprogram(name: "hal_nvic_get_pending_irq", scope: !237, file: !237, line: 95, type: !3537, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !3539)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{!176, !248}
!3539 = !{!3540, !3541}
!3540 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3536, file: !237, line: 95, type: !248)
!3541 = !DILocalVariable(name: "ret", scope: !3536, file: !237, line: 97, type: !176)
!3542 = !DILocation(line: 0, scope: !3536)
!3543 = !DILocation(line: 99, column: 40, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3536, file: !237, line: 99, column: 9)
!3545 = !DILocation(line: 102, column: 15, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3544, file: !237, line: 101, column: 12)
!3547 = !DILocation(line: 105, column: 5, scope: !3536)
!3548 = !DILocation(line: 106, column: 1, scope: !3536)
!3549 = distinct !DISubprogram(name: "NVIC_GetPendingIRQ", scope: !254, file: !254, line: 1523, type: !3550, scopeLine: 1524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !3552)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{!176, !61}
!3552 = !{!3553}
!3553 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3549, file: !254, line: 1523, type: !61)
!3554 = !DILocation(line: 0, scope: !3549)
!3555 = !DILocation(line: 1525, column: 51, scope: !3549)
!3556 = !DILocation(line: 1525, column: 23, scope: !3549)
!3557 = !DILocation(line: 1525, column: 83, scope: !3549)
!3558 = !DILocation(line: 1525, column: 22, scope: !3549)
!3559 = !DILocation(line: 1525, column: 3, scope: !3549)
!3560 = distinct !DISubprogram(name: "hal_nvic_set_pending_irq", scope: !237, file: !237, line: 108, type: !3491, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !3561)
!3561 = !{!3562, !3563}
!3562 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3560, file: !237, line: 108, type: !248)
!3563 = !DILocalVariable(name: "status", scope: !3560, file: !237, line: 110, type: !3488)
!3564 = !DILocation(line: 0, scope: !3560)
!3565 = !DILocation(line: 112, column: 40, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3560, file: !237, line: 112, column: 9)
!3567 = !DILocation(line: 116, column: 9, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3566, file: !237, line: 115, column: 12)
!3569 = !DILocation(line: 120, column: 5, scope: !3560)
!3570 = !DILocation(line: 121, column: 1, scope: !3560)
!3571 = distinct !DISubprogram(name: "NVIC_SetPendingIRQ", scope: !254, file: !254, line: 1535, type: !3504, scopeLine: 1536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !3572)
!3572 = !{!3573}
!3573 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3571, file: !254, line: 1535, type: !61)
!3574 = !DILocation(line: 0, scope: !3571)
!3575 = !DILocation(line: 1537, column: 65, scope: !3571)
!3576 = !DILocation(line: 1537, column: 44, scope: !3571)
!3577 = !DILocation(line: 1537, column: 32, scope: !3571)
!3578 = !DILocation(line: 1537, column: 3, scope: !3571)
!3579 = !DILocation(line: 1537, column: 39, scope: !3571)
!3580 = !DILocation(line: 1538, column: 1, scope: !3571)
!3581 = distinct !DISubprogram(name: "hal_nvic_clear_pending_irq", scope: !237, file: !237, line: 123, type: !3491, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !3582)
!3582 = !{!3583, !3584}
!3583 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3581, file: !237, line: 123, type: !248)
!3584 = !DILocalVariable(name: "status", scope: !3581, file: !237, line: 125, type: !3488)
!3585 = !DILocation(line: 0, scope: !3581)
!3586 = !DILocation(line: 127, column: 40, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3581, file: !237, line: 127, column: 9)
!3588 = !DILocation(line: 131, column: 9, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3587, file: !237, line: 130, column: 12)
!3590 = !DILocation(line: 135, column: 5, scope: !3581)
!3591 = !DILocation(line: 136, column: 1, scope: !3581)
!3592 = distinct !DISubprogram(name: "NVIC_ClearPendingIRQ", scope: !254, file: !254, line: 1547, type: !3504, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !3593)
!3593 = !{!3594}
!3594 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3592, file: !254, line: 1547, type: !61)
!3595 = !DILocation(line: 0, scope: !3592)
!3596 = !DILocation(line: 1549, column: 65, scope: !3592)
!3597 = !DILocation(line: 1549, column: 44, scope: !3592)
!3598 = !DILocation(line: 1549, column: 32, scope: !3592)
!3599 = !DILocation(line: 1549, column: 3, scope: !3592)
!3600 = !DILocation(line: 1549, column: 39, scope: !3592)
!3601 = !DILocation(line: 1550, column: 1, scope: !3592)
!3602 = distinct !DISubprogram(name: "hal_nvic_set_priority", scope: !237, file: !237, line: 138, type: !3603, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !3605)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{!3488, !248, !176}
!3605 = !{!3606, !3607, !3608}
!3606 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3602, file: !237, line: 138, type: !248)
!3607 = !DILocalVariable(name: "priority", arg: 2, scope: !3602, file: !237, line: 138, type: !176)
!3608 = !DILocalVariable(name: "status", scope: !3602, file: !237, line: 140, type: !3488)
!3609 = !DILocation(line: 0, scope: !3602)
!3610 = !DILocation(line: 142, column: 40, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3602, file: !237, line: 142, column: 9)
!3612 = !DILocation(line: 146, column: 9, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3611, file: !237, line: 145, column: 12)
!3614 = !DILocation(line: 150, column: 5, scope: !3602)
!3615 = !DILocation(line: 151, column: 1, scope: !3602)
!3616 = distinct !DISubprogram(name: "NVIC_SetPriority", scope: !254, file: !254, line: 1577, type: !3617, scopeLine: 1578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !3619)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{null, !61, !176}
!3619 = !{!3620, !3621}
!3620 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3616, file: !254, line: 1577, type: !61)
!3621 = !DILocalVariable(name: "priority", arg: 2, scope: !3616, file: !254, line: 1577, type: !176)
!3622 = !DILocation(line: 0, scope: !3616)
!3623 = !DILocation(line: 1582, column: 34, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3625, file: !254, line: 1581, column: 8)
!3625 = distinct !DILexicalBlock(scope: !3616, file: !254, line: 1579, column: 6)
!3626 = !DILocation(line: 1582, column: 5, scope: !3624)
!3627 = !DILocation(line: 1582, column: 32, scope: !3624)
!3628 = !DILocation(line: 1583, column: 1, scope: !3616)
!3629 = distinct !DISubprogram(name: "hal_nvic_get_priority", scope: !237, file: !237, line: 153, type: !3537, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !3630)
!3630 = !{!3631, !3632}
!3631 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3629, file: !237, line: 153, type: !248)
!3632 = !DILocalVariable(name: "ret", scope: !3629, file: !237, line: 155, type: !176)
!3633 = !DILocation(line: 0, scope: !3629)
!3634 = !DILocation(line: 157, column: 40, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3629, file: !237, line: 157, column: 9)
!3636 = !DILocation(line: 160, column: 15, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !3635, file: !237, line: 159, column: 12)
!3638 = !DILocation(line: 163, column: 5, scope: !3629)
!3639 = !DILocation(line: 164, column: 1, scope: !3629)
!3640 = distinct !DISubprogram(name: "NVIC_GetPriority", scope: !254, file: !254, line: 1597, type: !3550, scopeLine: 1598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !3641)
!3641 = !{!3642}
!3642 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3640, file: !254, line: 1597, type: !61)
!3643 = !DILocation(line: 0, scope: !3640)
!3644 = !DILocation(line: 1603, column: 23, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3646, file: !254, line: 1602, column: 8)
!3646 = distinct !DILexicalBlock(scope: !3640, file: !254, line: 1600, column: 6)
!3647 = !DILocation(line: 1603, column: 60, scope: !3645)
!3648 = !DILocation(line: 1604, column: 1, scope: !3640)
!3649 = distinct !DISubprogram(name: "Flash_ReturnReady", scope: !237, file: !237, line: 173, type: !75, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !1204)
!3650 = !DILocation(line: 175, column: 1, scope: !3649)
!3651 = distinct !DISubprogram(name: "isrC_main", scope: !237, file: !237, line: 178, type: !3486, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !3652)
!3652 = !{!3653, !3654}
!3653 = !DILocalVariable(name: "status", scope: !3651, file: !237, line: 180, type: !3488)
!3654 = !DILocalVariable(name: "irq_number", scope: !3651, file: !237, line: 181, type: !248)
!3655 = !DILocation(line: 0, scope: !3651)
!3656 = !DILocation(line: 188, column: 34, scope: !3651)
!3657 = !DILocation(line: 189, column: 24, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3651, file: !237, line: 189, column: 9)
!3659 = !DILocation(line: 192, column: 48, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3658, file: !237, line: 192, column: 16)
!3661 = !DILocation(line: 192, column: 62, scope: !3660)
!3662 = !DILocation(line: 192, column: 16, scope: !3658)
!3663 = !DILocation(line: 194, column: 9, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3660, file: !237, line: 192, column: 71)
!3665 = !DILocation(line: 195, column: 9, scope: !3664)
!3666 = !DILocation(line: 197, column: 55, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3660, file: !237, line: 196, column: 12)
!3668 = !DILocation(line: 197, column: 41, scope: !3667)
!3669 = !DILocation(line: 197, column: 53, scope: !3667)
!3670 = !DILocation(line: 198, column: 41, scope: !3667)
!3671 = !DILocation(line: 198, column: 9, scope: !3667)
!3672 = !DILocation(line: 202, column: 5, scope: !3651)
!3673 = !DILocation(line: 203, column: 1, scope: !3651)
!3674 = distinct !DISubprogram(name: "get_current_irq", scope: !237, file: !237, line: 166, type: !1991, scopeLine: 167, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !3675)
!3675 = !{!3676}
!3676 = !DILocalVariable(name: "irq_num", scope: !3674, file: !237, line: 168, type: !176)
!3677 = !DILocation(line: 168, column: 31, scope: !3674)
!3678 = !DILocation(line: 168, column: 36, scope: !3674)
!3679 = !DILocation(line: 0, scope: !3674)
!3680 = !DILocation(line: 169, column: 21, scope: !3674)
!3681 = !DILocation(line: 169, column: 5, scope: !3674)
!3682 = distinct !DISubprogram(name: "get_pending_irq", scope: !237, file: !237, line: 55, type: !1991, scopeLine: 56, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !1204)
!3683 = !DILocation(line: 57, column: 19, scope: !3682)
!3684 = !DILocation(line: 57, column: 51, scope: !3682)
!3685 = !DILocation(line: 57, column: 5, scope: !3682)
!3686 = distinct !DISubprogram(name: "hal_nvic_register_isr_handler", scope: !237, file: !237, line: 205, type: !3687, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !3690)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!3488, !248, !3689}
!3689 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_isr_t", file: !240, line: 175, baseType: !333)
!3690 = !{!3691, !3692, !3693}
!3691 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3686, file: !237, line: 205, type: !248)
!3692 = !DILocalVariable(name: "callback", arg: 2, scope: !3686, file: !237, line: 205, type: !3689)
!3693 = !DILocalVariable(name: "mask", scope: !3686, file: !237, line: 207, type: !176)
!3694 = !DILocation(line: 0, scope: !3686)
!3695 = !DILocation(line: 209, column: 24, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3686, file: !237, line: 209, column: 9)
!3697 = !DILocation(line: 213, column: 12, scope: !3686)
!3698 = !DILocation(line: 214, column: 5, scope: !3686)
!3699 = !DILocation(line: 215, column: 37, scope: !3686)
!3700 = !DILocation(line: 215, column: 51, scope: !3686)
!3701 = !DILocation(line: 216, column: 37, scope: !3686)
!3702 = !DILocation(line: 216, column: 49, scope: !3686)
!3703 = !DILocation(line: 217, column: 5, scope: !3686)
!3704 = !DILocation(line: 219, column: 5, scope: !3686)
!3705 = !DILocation(line: 220, column: 1, scope: !3686)
!3706 = distinct !DISubprogram(name: "hal_nvic_save_and_set_interrupt_mask", scope: !237, file: !237, line: 222, type: !3707, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !3709)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!3488, !1312}
!3709 = !{!3710}
!3710 = !DILocalVariable(name: "mask", arg: 1, scope: !3706, file: !237, line: 222, type: !1312)
!3711 = !DILocation(line: 0, scope: !3706)
!3712 = !DILocation(line: 224, column: 13, scope: !3706)
!3713 = !DILocation(line: 224, column: 11, scope: !3706)
!3714 = !DILocation(line: 225, column: 5, scope: !3706)
!3715 = distinct !DISubprogram(name: "hal_nvic_restore_interrupt_mask", scope: !237, file: !237, line: 228, type: !3716, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !3718)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!3488, !176}
!3718 = !{!3719}
!3719 = !DILocalVariable(name: "mask", arg: 1, scope: !3715, file: !237, line: 228, type: !176)
!3720 = !DILocation(line: 0, scope: !3715)
!3721 = !DILocation(line: 230, column: 5, scope: !3715)
!3722 = !DILocation(line: 231, column: 5, scope: !3715)
!3723 = distinct !DISubprogram(name: "hal_pinmux_set_function", scope: !944, file: !944, line: 50, type: !3724, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !943, retainedNodes: !3728)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!3726, !3727, !279}
!3726 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_pinmux_status_t", file: !947, line: 238, baseType: !946)
!3727 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_pin_t", file: !96, line: 281, baseType: !953)
!3728 = !{!3729, !3730, !3731}
!3729 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3723, file: !944, line: 50, type: !3727)
!3730 = !DILocalVariable(name: "function_index", arg: 2, scope: !3723, file: !944, line: 50, type: !279)
!3731 = !DILocalVariable(name: "ret_value", scope: !3723, file: !944, line: 52, type: !250)
!3732 = !DILocation(line: 0, scope: !3723)
!3733 = !DILocation(line: 53, column: 18, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3723, file: !944, line: 53, column: 9)
!3735 = !DILocation(line: 53, column: 9, scope: !3723)
!3736 = !DILocation(line: 57, column: 24, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3723, file: !944, line: 57, column: 9)
!3738 = !DILocation(line: 57, column: 9, scope: !3723)
!3739 = !DILocation(line: 57, column: 9, scope: !3737)
!3740 = !DILocation(line: 60, column: 17, scope: !3723)
!3741 = !DILocation(line: 61, column: 12, scope: !3723)
!3742 = !DILocation(line: 61, column: 5, scope: !3723)
!3743 = !DILocation(line: 62, column: 1, scope: !3723)
!3744 = distinct !DISubprogram(name: "hal_gpio_init", scope: !944, file: !944, line: 64, type: !3745, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !943, retainedNodes: !3748)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!3747, !3727}
!3747 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_status_t", file: !947, line: 229, baseType: !984)
!3748 = !{!3749}
!3749 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3744, file: !944, line: 64, type: !3727)
!3750 = !DILocation(line: 0, scope: !3744)
!3751 = !DILocation(line: 66, column: 5, scope: !3744)
!3752 = distinct !DISubprogram(name: "hal_gpio_deinit", scope: !944, file: !944, line: 69, type: !3745, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !943, retainedNodes: !3753)
!3753 = !{!3754}
!3754 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3752, file: !944, line: 69, type: !3727)
!3755 = !DILocation(line: 0, scope: !3752)
!3756 = !DILocation(line: 71, column: 5, scope: !3752)
!3757 = distinct !DISubprogram(name: "hal_gpio_get_input", scope: !944, file: !944, line: 74, type: !3758, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !943, retainedNodes: !3761)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!3747, !3727, !3760}
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 32)
!3761 = !{!3762, !3763, !3764}
!3762 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3757, file: !944, line: 74, type: !3727)
!3763 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3757, file: !944, line: 74, type: !3760)
!3764 = !DILocalVariable(name: "status", scope: !3757, file: !944, line: 76, type: !3765)
!3765 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_status", file: !160, line: 67, baseType: !3766)
!3766 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !160, line: 62, size: 64, elements: !3767)
!3767 = !{!3768, !3769, !3770, !3771}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PIN", scope: !3766, file: !160, line: 63, baseType: !176, size: 32)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OUTEN", scope: !3766, file: !160, line: 64, baseType: !279, size: 8, offset: 32)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "GPI_DIN", scope: !3766, file: !160, line: 65, baseType: !279, size: 8, offset: 40)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "GPO_DOUT", scope: !3766, file: !160, line: 66, baseType: !279, size: 8, offset: 48)
!3772 = !DILocation(line: 0, scope: !3757)
!3773 = !DILocation(line: 77, column: 14, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3757, file: !944, line: 77, column: 9)
!3775 = !DILocation(line: 77, column: 9, scope: !3757)
!3776 = !DILocation(line: 81, column: 18, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3757, file: !944, line: 81, column: 9)
!3778 = !DILocation(line: 81, column: 9, scope: !3757)
!3779 = !DILocation(line: 85, column: 14, scope: !3757)
!3780 = !DILocation(line: 86, column: 18, scope: !3757)
!3781 = !DILocation(line: 86, column: 16, scope: !3757)
!3782 = !DILocation(line: 87, column: 5, scope: !3757)
!3783 = !DILocation(line: 88, column: 1, scope: !3757)
!3784 = distinct !DISubprogram(name: "hal_gpio_set_output", scope: !944, file: !944, line: 90, type: !3785, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !943, retainedNodes: !3787)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!3747, !3727, !1006}
!3787 = !{!3788, !3789, !3790}
!3788 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3784, file: !944, line: 90, type: !3727)
!3789 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3784, file: !944, line: 90, type: !1006)
!3790 = !DILocalVariable(name: "ret_value", scope: !3784, file: !944, line: 92, type: !250)
!3791 = !DILocation(line: 0, scope: !3784)
!3792 = !DILocation(line: 93, column: 18, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !3784, file: !944, line: 93, column: 9)
!3794 = !DILocation(line: 93, column: 9, scope: !3784)
!3795 = !DILocation(line: 97, column: 60, scope: !3784)
!3796 = !DILocation(line: 97, column: 17, scope: !3784)
!3797 = !DILocation(line: 98, column: 12, scope: !3784)
!3798 = !DILocation(line: 98, column: 5, scope: !3784)
!3799 = !DILocation(line: 99, column: 1, scope: !3784)
!3800 = distinct !DISubprogram(name: "hal_gpio_get_output", scope: !944, file: !944, line: 101, type: !3758, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !943, retainedNodes: !3801)
!3801 = !{!3802, !3803, !3804}
!3802 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3800, file: !944, line: 101, type: !3727)
!3803 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3800, file: !944, line: 101, type: !3760)
!3804 = !DILocalVariable(name: "status", scope: !3800, file: !944, line: 103, type: !3765)
!3805 = !DILocation(line: 0, scope: !3800)
!3806 = !DILocation(line: 104, column: 18, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3800, file: !944, line: 104, column: 9)
!3808 = !DILocation(line: 104, column: 9, scope: !3800)
!3809 = !DILocation(line: 108, column: 14, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !3800, file: !944, line: 108, column: 9)
!3811 = !DILocation(line: 108, column: 9, scope: !3800)
!3812 = !DILocation(line: 112, column: 14, scope: !3800)
!3813 = !DILocation(line: 113, column: 18, scope: !3800)
!3814 = !DILocation(line: 113, column: 16, scope: !3800)
!3815 = !DILocation(line: 114, column: 5, scope: !3800)
!3816 = !DILocation(line: 115, column: 1, scope: !3800)
!3817 = distinct !DISubprogram(name: "hal_gpio_set_direction", scope: !944, file: !944, line: 117, type: !3818, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !943, retainedNodes: !3821)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!3747, !3727, !3820}
!3820 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_direction_t", file: !947, line: 213, baseType: !994)
!3821 = !{!3822, !3823, !3824}
!3822 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3817, file: !944, line: 117, type: !3727)
!3823 = !DILocalVariable(name: "direction", arg: 2, scope: !3817, file: !944, line: 117, type: !3820)
!3824 = !DILocalVariable(name: "ret_value", scope: !3817, file: !944, line: 119, type: !250)
!3825 = !DILocation(line: 0, scope: !3817)
!3826 = !DILocation(line: 120, column: 18, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !3817, file: !944, line: 120, column: 9)
!3828 = !DILocation(line: 120, column: 9, scope: !3817)
!3829 = !DILocation(line: 123, column: 17, scope: !3817)
!3830 = !DILocation(line: 125, column: 12, scope: !3817)
!3831 = !DILocation(line: 125, column: 5, scope: !3817)
!3832 = !DILocation(line: 126, column: 1, scope: !3817)
!3833 = distinct !DISubprogram(name: "hal_gpio_get_direction", scope: !944, file: !944, line: 128, type: !3834, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !943, retainedNodes: !3837)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!3747, !3727, !3836}
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 32)
!3837 = !{!3838, !3839, !3840}
!3838 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3833, file: !944, line: 128, type: !3727)
!3839 = !DILocalVariable(name: "direction", arg: 2, scope: !3833, file: !944, line: 128, type: !3836)
!3840 = !DILocalVariable(name: "status", scope: !3833, file: !944, line: 131, type: !3765)
!3841 = !DILocation(line: 0, scope: !3833)
!3842 = !DILocation(line: 132, column: 18, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3833, file: !944, line: 132, column: 9)
!3844 = !DILocation(line: 132, column: 9, scope: !3833)
!3845 = !DILocation(line: 136, column: 14, scope: !3846)
!3846 = distinct !DILexicalBlock(scope: !3833, file: !944, line: 136, column: 9)
!3847 = !DILocation(line: 136, column: 9, scope: !3833)
!3848 = !DILocation(line: 140, column: 14, scope: !3833)
!3849 = !DILocation(line: 141, column: 18, scope: !3833)
!3850 = !DILocation(line: 141, column: 16, scope: !3833)
!3851 = !DILocation(line: 142, column: 5, scope: !3833)
!3852 = !DILocation(line: 143, column: 1, scope: !3833)
!3853 = distinct !DISubprogram(name: "hal_gpio_toggle_pin", scope: !944, file: !944, line: 146, type: !3745, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !943, retainedNodes: !3854)
!3854 = !{!3855, !3856}
!3855 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3853, file: !944, line: 146, type: !3727)
!3856 = !DILocalVariable(name: "status", scope: !3853, file: !944, line: 148, type: !3765)
!3857 = !DILocation(line: 0, scope: !3853)
!3858 = !DILocation(line: 149, column: 18, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3853, file: !944, line: 149, column: 9)
!3860 = !DILocation(line: 149, column: 9, scope: !3853)
!3861 = !DILocation(line: 153, column: 14, scope: !3853)
!3862 = !DILocation(line: 154, column: 76, scope: !3853)
!3863 = !DILocation(line: 154, column: 12, scope: !3853)
!3864 = !DILocation(line: 154, column: 5, scope: !3853)
!3865 = !DILocation(line: 155, column: 1, scope: !3853)
!3866 = distinct !DISubprogram(name: "hal_gpio_pull_up", scope: !944, file: !944, line: 157, type: !3745, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !943, retainedNodes: !3867)
!3867 = !{!3868, !3869}
!3868 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3866, file: !944, line: 157, type: !3727)
!3869 = !DILocalVariable(name: "ret_value", scope: !3866, file: !944, line: 159, type: !250)
!3870 = !DILocation(line: 0, scope: !3866)
!3871 = !DILocation(line: 160, column: 18, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3866, file: !944, line: 160, column: 9)
!3873 = !DILocation(line: 160, column: 9, scope: !3866)
!3874 = !DILocation(line: 164, column: 17, scope: !3866)
!3875 = !DILocation(line: 165, column: 19, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !3866, file: !944, line: 165, column: 9)
!3877 = !DILocation(line: 165, column: 9, scope: !3866)
!3878 = !DILocation(line: 168, column: 17, scope: !3866)
!3879 = !DILocation(line: 169, column: 12, scope: !3866)
!3880 = !DILocation(line: 169, column: 5, scope: !3866)
!3881 = !DILocation(line: 170, column: 1, scope: !3866)
!3882 = distinct !DISubprogram(name: "hal_gpio_pull_down", scope: !944, file: !944, line: 172, type: !3745, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !943, retainedNodes: !3883)
!3883 = !{!3884, !3885}
!3884 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3882, file: !944, line: 172, type: !3727)
!3885 = !DILocalVariable(name: "ret_value", scope: !3882, file: !944, line: 174, type: !250)
!3886 = !DILocation(line: 0, scope: !3882)
!3887 = !DILocation(line: 175, column: 18, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3882, file: !944, line: 175, column: 9)
!3889 = !DILocation(line: 175, column: 9, scope: !3882)
!3890 = !DILocation(line: 179, column: 17, scope: !3882)
!3891 = !DILocation(line: 180, column: 19, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3882, file: !944, line: 180, column: 9)
!3893 = !DILocation(line: 180, column: 9, scope: !3882)
!3894 = !DILocation(line: 183, column: 17, scope: !3882)
!3895 = !DILocation(line: 184, column: 12, scope: !3882)
!3896 = !DILocation(line: 184, column: 5, scope: !3882)
!3897 = !DILocation(line: 185, column: 1, scope: !3882)
!3898 = distinct !DISubprogram(name: "hal_gpio_disable_pull", scope: !944, file: !944, line: 187, type: !3745, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !943, retainedNodes: !3899)
!3899 = !{!3900, !3901}
!3900 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3898, file: !944, line: 187, type: !3727)
!3901 = !DILocalVariable(name: "ret_value", scope: !3898, file: !944, line: 189, type: !250)
!3902 = !DILocation(line: 0, scope: !3898)
!3903 = !DILocation(line: 191, column: 18, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3898, file: !944, line: 191, column: 9)
!3905 = !DILocation(line: 191, column: 9, scope: !3898)
!3906 = !DILocation(line: 195, column: 17, scope: !3898)
!3907 = !DILocation(line: 196, column: 12, scope: !3898)
!3908 = !DILocation(line: 196, column: 5, scope: !3898)
!3909 = !DILocation(line: 197, column: 1, scope: !3898)
!3910 = distinct !DISubprogram(name: "hal_gpio_set_driving_current", scope: !944, file: !944, line: 200, type: !3911, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !943, retainedNodes: !3913)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!3747, !3727, !1007}
!3913 = !{!3914, !3915, !3916}
!3914 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3910, file: !944, line: 200, type: !3727)
!3915 = !DILocalVariable(name: "driving", arg: 2, scope: !3910, file: !944, line: 200, type: !1007)
!3916 = !DILocalVariable(name: "ret_value", scope: !3910, file: !944, line: 202, type: !250)
!3917 = !DILocation(line: 0, scope: !3910)
!3918 = !DILocation(line: 204, column: 18, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3910, file: !944, line: 204, column: 9)
!3920 = !DILocation(line: 204, column: 9, scope: !3910)
!3921 = !DILocation(line: 208, column: 64, scope: !3910)
!3922 = !DILocation(line: 208, column: 17, scope: !3910)
!3923 = !DILocation(line: 210, column: 12, scope: !3910)
!3924 = !DILocation(line: 210, column: 5, scope: !3910)
!3925 = !DILocation(line: 211, column: 1, scope: !3910)
!3926 = distinct !DISubprogram(name: "hal_gpio_get_driving_current", scope: !944, file: !944, line: 214, type: !3927, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !943, retainedNodes: !3930)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{!3747, !3727, !3929}
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 32)
!3930 = !{!3931, !3932, !3933, !3934}
!3931 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3926, file: !944, line: 214, type: !3727)
!3932 = !DILocalVariable(name: "driving", arg: 2, scope: !3926, file: !944, line: 214, type: !3929)
!3933 = !DILocalVariable(name: "ret_value", scope: !3926, file: !944, line: 216, type: !250)
!3934 = !DILocalVariable(name: "value", scope: !3926, file: !944, line: 217, type: !279)
!3935 = !DILocation(line: 0, scope: !3926)
!3936 = !DILocation(line: 217, column: 5, scope: !3926)
!3937 = !DILocation(line: 219, column: 18, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3926, file: !944, line: 219, column: 9)
!3939 = !DILocation(line: 219, column: 9, scope: !3926)
!3940 = !DILocation(line: 223, column: 17, scope: !3926)
!3941 = !DILocation(line: 225, column: 44, scope: !3926)
!3942 = !DILocation(line: 225, column: 16, scope: !3926)
!3943 = !DILocation(line: 225, column: 14, scope: !3926)
!3944 = !DILocation(line: 227, column: 12, scope: !3926)
!3945 = !DILocation(line: 227, column: 5, scope: !3926)
!3946 = !DILocation(line: 228, column: 1, scope: !3926)
!3947 = distinct !DISubprogram(name: "hal_gpt_init", scope: !342, file: !342, line: 82, type: !3948, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !3952)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{!3950, !3951}
!3950 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_status_t", file: !345, line: 393, baseType: !344)
!3951 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_port_t", file: !96, line: 663, baseType: !352)
!3952 = !{!3953}
!3953 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !3947, file: !342, line: 82, type: !3951)
!3954 = !DILocation(line: 0, scope: !3947)
!3955 = !DILocation(line: 84, column: 9, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3947, file: !342, line: 84, column: 9)
!3957 = !DILocation(line: 84, column: 33, scope: !3956)
!3958 = !{i8 0, i8 2}
!3959 = !DILocation(line: 84, column: 9, scope: !3947)
!3960 = !DILocation(line: 88, column: 9, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3947, file: !342, line: 88, column: 9)
!3962 = !DILocation(line: 88, column: 9, scope: !3947)
!3963 = !DILocation(line: 89, column: 9, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3961, file: !342, line: 88, column: 50)
!3965 = !DILocation(line: 90, column: 9, scope: !3964)
!3966 = !DILocation(line: 92, column: 12, scope: !3947)
!3967 = !DILocation(line: 92, column: 5, scope: !3947)
!3968 = !DILocation(line: 96, column: 43, scope: !3947)
!3969 = !DILocation(line: 98, column: 5, scope: !3947)
!3970 = !DILocation(line: 99, column: 1, scope: !3947)
!3971 = distinct !DISubprogram(name: "hal_gpt_is_port_valid", scope: !342, file: !342, line: 63, type: !3972, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !3974)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!119, !3951}
!3974 = !{!3975}
!3975 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !3971, file: !342, line: 63, type: !3951)
!3976 = !DILocation(line: 0, scope: !3971)
!3977 = !DILocation(line: 65, column: 19, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3971, file: !342, line: 65, column: 9)
!3979 = !DILocation(line: 65, column: 34, scope: !3978)
!3980 = !DILocation(line: 70, column: 1, scope: !3971)
!3981 = distinct !DISubprogram(name: "hal_gpt_deinit", scope: !342, file: !342, line: 101, type: !3948, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !3982)
!3982 = !{!3983}
!3983 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !3981, file: !342, line: 101, type: !3951)
!3984 = !DILocation(line: 0, scope: !3981)
!3985 = !DILocation(line: 103, column: 9, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3981, file: !342, line: 103, column: 9)
!3987 = !DILocation(line: 103, column: 9, scope: !3981)
!3988 = !DILocation(line: 104, column: 9, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3986, file: !342, line: 103, column: 50)
!3990 = !DILocation(line: 105, column: 9, scope: !3989)
!3991 = !DILocation(line: 108, column: 9, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3981, file: !342, line: 108, column: 9)
!3993 = !DILocation(line: 108, column: 33, scope: !3992)
!3994 = !DILocation(line: 108, column: 48, scope: !3992)
!3995 = !DILocation(line: 108, column: 9, scope: !3981)
!3996 = !DILocation(line: 109, column: 9, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3992, file: !342, line: 108, column: 68)
!3998 = !DILocation(line: 110, column: 9, scope: !3997)
!3999 = !DILocation(line: 113, column: 12, scope: !3981)
!4000 = !DILocation(line: 113, column: 5, scope: !3981)
!4001 = !DILocation(line: 116, column: 29, scope: !3981)
!4002 = !DILocation(line: 116, column: 43, scope: !3981)
!4003 = !DILocation(line: 117, column: 5, scope: !3981)
!4004 = !DILocation(line: 118, column: 1, scope: !3981)
!4005 = distinct !DISubprogram(name: "hal_gpt_get_free_run_count", scope: !342, file: !342, line: 120, type: !4006, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !4009)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!3950, !4008, !1312}
!4008 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_clock_source_t", file: !96, line: 674, baseType: !363)
!4009 = !{!4010, !4011}
!4010 = !DILocalVariable(name: "clock_source", arg: 1, scope: !4005, file: !342, line: 120, type: !4008)
!4011 = !DILocalVariable(name: "count", arg: 2, scope: !4005, file: !342, line: 120, type: !1312)
!4012 = !DILocation(line: 0, scope: !4005)
!4013 = !DILocation(line: 122, column: 9, scope: !4005)
!4014 = !DILocation(line: 123, column: 50, scope: !4015)
!4015 = distinct !DILexicalBlock(scope: !4016, file: !342, line: 123, column: 13)
!4016 = distinct !DILexicalBlock(scope: !4017, file: !342, line: 122, column: 51)
!4017 = distinct !DILexicalBlock(scope: !4005, file: !342, line: 122, column: 9)
!4018 = !DILocation(line: 123, column: 65, scope: !4015)
!4019 = !DILocation(line: 123, column: 13, scope: !4016)
!4020 = !DILocation(line: 124, column: 13, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !4015, file: !342, line: 123, column: 86)
!4022 = !DILocation(line: 125, column: 9, scope: !4021)
!4023 = !DILocation(line: 126, column: 18, scope: !4016)
!4024 = !DILocation(line: 126, column: 16, scope: !4016)
!4025 = !DILocation(line: 127, column: 49, scope: !4016)
!4026 = !DILocation(line: 128, column: 5, scope: !4016)
!4027 = !DILocation(line: 129, column: 50, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !4029, file: !342, line: 129, column: 13)
!4029 = distinct !DILexicalBlock(scope: !4030, file: !342, line: 128, column: 57)
!4030 = distinct !DILexicalBlock(scope: !4017, file: !342, line: 128, column: 16)
!4031 = !DILocation(line: 129, column: 65, scope: !4028)
!4032 = !DILocation(line: 129, column: 13, scope: !4029)
!4033 = !DILocation(line: 130, column: 13, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4028, file: !342, line: 129, column: 86)
!4035 = !DILocation(line: 131, column: 9, scope: !4034)
!4036 = !DILocation(line: 132, column: 18, scope: !4029)
!4037 = !DILocation(line: 132, column: 46, scope: !4029)
!4038 = !DILocation(line: 132, column: 65, scope: !4029)
!4039 = !DILocation(line: 132, column: 43, scope: !4029)
!4040 = !DILocation(line: 132, column: 16, scope: !4029)
!4041 = !DILocation(line: 133, column: 49, scope: !4029)
!4042 = !DILocation(line: 134, column: 5, scope: !4029)
!4043 = !DILocation(line: 135, column: 50, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !4045, file: !342, line: 135, column: 13)
!4045 = distinct !DILexicalBlock(scope: !4046, file: !342, line: 134, column: 58)
!4046 = distinct !DILexicalBlock(scope: !4030, file: !342, line: 134, column: 16)
!4047 = !DILocation(line: 135, column: 65, scope: !4044)
!4048 = !DILocation(line: 135, column: 13, scope: !4045)
!4049 = !DILocation(line: 136, column: 13, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4044, file: !342, line: 135, column: 86)
!4051 = !DILocation(line: 137, column: 9, scope: !4050)
!4052 = !DILocation(line: 138, column: 18, scope: !4045)
!4053 = !DILocation(line: 138, column: 16, scope: !4045)
!4054 = !DILocation(line: 139, column: 49, scope: !4045)
!4055 = !DILocation(line: 141, column: 9, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !4046, file: !342, line: 140, column: 11)
!4057 = !DILocation(line: 142, column: 9, scope: !4056)
!4058 = !DILocation(line: 146, column: 1, scope: !4005)
!4059 = distinct !DISubprogram(name: "hal_gpt_get_duration_count", scope: !342, file: !342, line: 148, type: !4060, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !4062)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{!3950, !176, !176, !1312}
!4062 = !{!4063, !4064, !4065}
!4063 = !DILocalVariable(name: "start_count", arg: 1, scope: !4059, file: !342, line: 148, type: !176)
!4064 = !DILocalVariable(name: "end_count", arg: 2, scope: !4059, file: !342, line: 148, type: !176)
!4065 = !DILocalVariable(name: "duration_count", arg: 3, scope: !4059, file: !342, line: 148, type: !1312)
!4066 = !DILocation(line: 0, scope: !4059)
!4067 = !DILocation(line: 150, column: 24, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4059, file: !342, line: 150, column: 9)
!4069 = !DILocation(line: 150, column: 9, scope: !4059)
!4070 = !DILocation(line: 0, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !4059, file: !342, line: 154, column: 9)
!4072 = !DILocation(line: 160, column: 5, scope: !4059)
!4073 = !DILocation(line: 161, column: 1, scope: !4059)
!4074 = distinct !DISubprogram(name: "hal_gpt_get_running_status", scope: !342, file: !342, line: 163, type: !4075, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !4078)
!4075 = !DISubroutineType(types: !4076)
!4076 = !{!3950, !3951, !4077}
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 32)
!4078 = !{!4079, !4080}
!4079 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4074, file: !342, line: 163, type: !3951)
!4080 = !DILocalVariable(name: "running_status", arg: 2, scope: !4074, file: !342, line: 164, type: !4077)
!4081 = !DILocation(line: 0, scope: !4074)
!4082 = !DILocation(line: 166, column: 18, scope: !4083)
!4083 = distinct !DILexicalBlock(scope: !4074, file: !342, line: 166, column: 9)
!4084 = !DILocation(line: 166, column: 9, scope: !4074)
!4085 = !DILocation(line: 167, column: 9, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !4083, file: !342, line: 166, column: 34)
!4087 = !DILocation(line: 168, column: 9, scope: !4086)
!4088 = !DILocation(line: 170, column: 47, scope: !4074)
!4089 = !DILocation(line: 170, column: 21, scope: !4074)
!4090 = !DILocation(line: 171, column: 5, scope: !4074)
!4091 = !DILocation(line: 172, column: 1, scope: !4074)
!4092 = distinct !DISubprogram(name: "hal_gpt_register_callback", scope: !342, file: !342, line: 174, type: !4093, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !4095)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{!3950, !3951, !385, !249}
!4095 = !{!4096, !4097, !4098}
!4096 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4092, file: !342, line: 174, type: !3951)
!4097 = !DILocalVariable(name: "callback", arg: 2, scope: !4092, file: !342, line: 175, type: !385)
!4098 = !DILocalVariable(name: "user_data", arg: 3, scope: !4092, file: !342, line: 176, type: !249)
!4099 = !DILocation(line: 0, scope: !4092)
!4100 = !DILocation(line: 178, column: 9, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4092, file: !342, line: 178, column: 9)
!4102 = !DILocation(line: 178, column: 9, scope: !4092)
!4103 = !DILocation(line: 179, column: 9, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4101, file: !342, line: 178, column: 50)
!4105 = !DILocation(line: 180, column: 9, scope: !4104)
!4106 = !DILocation(line: 182, column: 33, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4092, file: !342, line: 182, column: 9)
!4108 = !DILocation(line: 182, column: 47, scope: !4107)
!4109 = !DILocation(line: 182, column: 9, scope: !4092)
!4110 = !DILocation(line: 185, column: 18, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4092, file: !342, line: 185, column: 9)
!4112 = !DILocation(line: 185, column: 9, scope: !4092)
!4113 = !DILocation(line: 188, column: 46, scope: !4092)
!4114 = !DILocation(line: 188, column: 56, scope: !4092)
!4115 = !DILocation(line: 189, column: 46, scope: !4092)
!4116 = !DILocation(line: 189, column: 56, scope: !4092)
!4117 = !DILocation(line: 190, column: 5, scope: !4092)
!4118 = !DILocation(line: 191, column: 1, scope: !4092)
!4119 = distinct !DISubprogram(name: "hal_gpt_start_timer_ms", scope: !342, file: !342, line: 218, type: !4120, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !4123)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!3950, !3951, !176, !4122}
!4122 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_timer_type_t", file: !345, line: 383, baseType: !368)
!4123 = !{!4124, !4125, !4126}
!4124 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4119, file: !342, line: 218, type: !3951)
!4125 = !DILocalVariable(name: "timeout_time_ms", arg: 2, scope: !4119, file: !342, line: 218, type: !176)
!4126 = !DILocalVariable(name: "timer_type", arg: 3, scope: !4119, file: !342, line: 218, type: !4122)
!4127 = !DILocation(line: 0, scope: !4119)
!4128 = !DILocation(line: 220, column: 9, scope: !4129)
!4129 = distinct !DILexicalBlock(scope: !4119, file: !342, line: 220, column: 9)
!4130 = !DILocation(line: 220, column: 9, scope: !4119)
!4131 = !DILocation(line: 221, column: 9, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4129, file: !342, line: 220, column: 50)
!4133 = !DILocation(line: 222, column: 9, scope: !4132)
!4134 = !DILocation(line: 225, column: 33, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4119, file: !342, line: 225, column: 9)
!4136 = !DILocation(line: 225, column: 47, scope: !4135)
!4137 = !DILocation(line: 225, column: 9, scope: !4119)
!4138 = !DILocation(line: 229, column: 25, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !4119, file: !342, line: 229, column: 9)
!4140 = !DILocation(line: 229, column: 9, scope: !4119)
!4141 = !DILocation(line: 234, column: 17, scope: !4119)
!4142 = !DILocation(line: 235, column: 17, scope: !4119)
!4143 = !DILocation(line: 236, column: 17, scope: !4119)
!4144 = !DILocation(line: 233, column: 5, scope: !4119)
!4145 = !DILocation(line: 237, column: 5, scope: !4119)
!4146 = !DILocation(line: 238, column: 29, scope: !4119)
!4147 = !DILocation(line: 238, column: 44, scope: !4119)
!4148 = !DILocation(line: 239, column: 5, scope: !4119)
!4149 = !DILocation(line: 240, column: 1, scope: !4119)
!4150 = distinct !DISubprogram(name: "hal_gpt_translate_timeout_time", scope: !342, file: !342, line: 72, type: !4151, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !4153)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!176, !176}
!4153 = !{!4154}
!4154 = !DILocalVariable(name: "mili_seconds", arg: 1, scope: !4150, file: !342, line: 72, type: !176)
!4155 = !DILocation(line: 0, scope: !4150)
!4156 = !DILocation(line: 74, column: 37, scope: !4150)
!4157 = !DILocation(line: 74, column: 47, scope: !4150)
!4158 = !DILocation(line: 74, column: 63, scope: !4150)
!4159 = !DILocation(line: 74, column: 42, scope: !4150)
!4160 = !DILocation(line: 74, column: 73, scope: !4150)
!4161 = !DILocation(line: 74, column: 89, scope: !4150)
!4162 = !DILocation(line: 74, column: 68, scope: !4150)
!4163 = !DILocation(line: 74, column: 100, scope: !4150)
!4164 = !DILocation(line: 74, column: 116, scope: !4150)
!4165 = !DILocation(line: 74, column: 95, scope: !4150)
!4166 = !DILocation(line: 74, column: 5, scope: !4150)
!4167 = distinct !DISubprogram(name: "hal_gpt_translate_type", scope: !342, file: !342, line: 77, type: !4168, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !4170)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{!119, !4122}
!4170 = !{!4171}
!4171 = !DILocalVariable(name: "type", arg: 1, scope: !4167, file: !342, line: 77, type: !4122)
!4172 = !DILocation(line: 0, scope: !4167)
!4173 = !DILocation(line: 79, column: 38, scope: !4167)
!4174 = !DILocation(line: 79, column: 5, scope: !4167)
!4175 = distinct !DISubprogram(name: "hal_gpt_map_callback", scope: !342, file: !342, line: 213, type: !4176, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !4179)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{!4178, !3951}
!4178 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_internal_callback_t", file: !342, line: 211, baseType: !74)
!4179 = !{!4180}
!4180 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4175, file: !342, line: 213, type: !3951)
!4181 = !DILocation(line: 0, scope: !4175)
!4182 = !DILocation(line: 215, column: 23, scope: !4175)
!4183 = !DILocation(line: 215, column: 12, scope: !4175)
!4184 = !DILocation(line: 215, column: 5, scope: !4175)
!4185 = distinct !DISubprogram(name: "hal_gpt_callback0", scope: !342, file: !342, line: 193, type: !75, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !4186)
!4186 = !{!4187}
!4187 = !DILocalVariable(name: "context", scope: !4185, file: !342, line: 195, type: !4188)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 32)
!4189 = !DILocation(line: 196, column: 26, scope: !4190)
!4190 = distinct !DILexicalBlock(scope: !4185, file: !342, line: 196, column: 9)
!4191 = !DILocation(line: 196, column: 14, scope: !4190)
!4192 = !DILocation(line: 196, column: 9, scope: !4185)
!4193 = !DILocation(line: 197, column: 36, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4190, file: !342, line: 196, column: 36)
!4195 = !DILocation(line: 197, column: 9, scope: !4194)
!4196 = !DILocation(line: 198, column: 5, scope: !4194)
!4197 = !DILocation(line: 199, column: 45, scope: !4185)
!4198 = !DILocation(line: 200, column: 1, scope: !4185)
!4199 = distinct !DISubprogram(name: "hal_gpt_callback1", scope: !342, file: !342, line: 202, type: !75, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !4200)
!4200 = !{!4201}
!4201 = !DILocalVariable(name: "context", scope: !4199, file: !342, line: 204, type: !4188)
!4202 = !DILocation(line: 205, column: 26, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4199, file: !342, line: 205, column: 9)
!4204 = !DILocation(line: 205, column: 14, scope: !4203)
!4205 = !DILocation(line: 205, column: 9, scope: !4199)
!4206 = !DILocation(line: 206, column: 36, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4203, file: !342, line: 205, column: 36)
!4208 = !DILocation(line: 206, column: 9, scope: !4207)
!4209 = !DILocation(line: 207, column: 5, scope: !4207)
!4210 = !DILocation(line: 208, column: 45, scope: !4199)
!4211 = !DILocation(line: 209, column: 1, scope: !4199)
!4212 = distinct !DISubprogram(name: "hal_gpt_stop_timer", scope: !342, file: !342, line: 242, type: !3948, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !4213)
!4213 = !{!4214}
!4214 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4212, file: !342, line: 242, type: !3951)
!4215 = !DILocation(line: 0, scope: !4212)
!4216 = !DILocation(line: 244, column: 9, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4212, file: !342, line: 244, column: 9)
!4218 = !DILocation(line: 244, column: 9, scope: !4212)
!4219 = !DILocation(line: 245, column: 9, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4217, file: !342, line: 244, column: 50)
!4221 = !DILocation(line: 246, column: 9, scope: !4220)
!4222 = !DILocation(line: 248, column: 5, scope: !4212)
!4223 = !DILocation(line: 249, column: 29, scope: !4212)
!4224 = !DILocation(line: 249, column: 44, scope: !4212)
!4225 = !DILocation(line: 250, column: 5, scope: !4212)
!4226 = !DILocation(line: 251, column: 1, scope: !4212)
!4227 = distinct !DISubprogram(name: "hal_gpt_delay_ms", scope: !342, file: !342, line: 253, type: !4228, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !4230)
!4228 = !DISubroutineType(types: !4229)
!4229 = !{!3950, !176}
!4230 = !{!4231}
!4231 = !DILocalVariable(name: "ms", arg: 1, scope: !4227, file: !342, line: 253, type: !176)
!4232 = !DILocation(line: 0, scope: !4227)
!4233 = !DILocation(line: 255, column: 46, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4227, file: !342, line: 255, column: 9)
!4235 = !DILocation(line: 255, column: 61, scope: !4234)
!4236 = !DILocation(line: 255, column: 9, scope: !4227)
!4237 = !DILocation(line: 256, column: 9, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4234, file: !342, line: 255, column: 82)
!4239 = !DILocation(line: 257, column: 5, scope: !4238)
!4240 = !DILocation(line: 258, column: 5, scope: !4227)
!4241 = !DILocation(line: 259, column: 57, scope: !4227)
!4242 = !DILocation(line: 260, column: 5, scope: !4227)
!4243 = distinct !DISubprogram(name: "hal_gpt_delay_us", scope: !342, file: !342, line: 264, type: !4228, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !341, retainedNodes: !4244)
!4244 = !{!4245}
!4245 = !DILocalVariable(name: "us", arg: 1, scope: !4243, file: !342, line: 264, type: !176)
!4246 = !DILocation(line: 0, scope: !4243)
!4247 = !DILocation(line: 266, column: 46, scope: !4248)
!4248 = distinct !DILexicalBlock(scope: !4243, file: !342, line: 266, column: 9)
!4249 = !DILocation(line: 266, column: 61, scope: !4248)
!4250 = !DILocation(line: 266, column: 9, scope: !4243)
!4251 = !DILocation(line: 267, column: 9, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4248, file: !342, line: 266, column: 82)
!4253 = !DILocation(line: 268, column: 5, scope: !4252)
!4254 = !DILocation(line: 269, column: 5, scope: !4243)
!4255 = !DILocation(line: 270, column: 57, scope: !4243)
!4256 = !DILocation(line: 271, column: 5, scope: !4243)
!4257 = distinct !DISubprogram(name: "hal_uart_init", scope: !394, file: !394, line: 234, type: !4258, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !4262)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{!4260, !454, !4261}
!4260 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_status_t", file: !397, line: 351, baseType: !396)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 32)
!4262 = !{!4263, !4264}
!4263 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4257, file: !394, line: 234, type: !454)
!4264 = !DILocalVariable(name: "uart_config", arg: 2, scope: !4257, file: !394, line: 234, type: !4261)
!4265 = !DILocation(line: 0, scope: !4257)
!4266 = !DILocation(line: 236, column: 10, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4257, file: !394, line: 236, column: 9)
!4268 = !DILocation(line: 236, column: 9, scope: !4257)
!4269 = !DILocation(line: 239, column: 41, scope: !4270)
!4270 = distinct !DILexicalBlock(scope: !4257, file: !394, line: 239, column: 9)
!4271 = !DILocation(line: 239, column: 9, scope: !4257)
!4272 = !DILocation(line: 242, column: 5, scope: !4257)
!4273 = !DILocation(line: 243, column: 45, scope: !4257)
!4274 = !DILocation(line: 243, column: 12, scope: !4257)
!4275 = !DILocation(line: 244, column: 12, scope: !4257)
!4276 = !DILocation(line: 243, column: 5, scope: !4257)
!4277 = !DILocation(line: 245, column: 58, scope: !4257)
!4278 = !DILocation(line: 246, column: 30, scope: !4257)
!4279 = !{i32 0, i32 2}
!4280 = !DILocation(line: 246, column: 5, scope: !4257)
!4281 = !DILocation(line: 247, column: 5, scope: !4257)
!4282 = !DILocation(line: 249, column: 31, scope: !4283)
!4283 = distinct !DILexicalBlock(scope: !4257, file: !394, line: 249, column: 9)
!4284 = !DILocation(line: 249, column: 28, scope: !4283)
!4285 = !DILocation(line: 261, column: 1, scope: !4257)
!4286 = distinct !DISubprogram(name: "hal_uart_is_config_valid", scope: !394, file: !394, line: 93, type: !4287, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !4291)
!4287 = !DISubroutineType(types: !4288)
!4288 = !{!119, !454, !4289}
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 32)
!4290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !465)
!4291 = !{!4292, !4293}
!4292 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4286, file: !394, line: 93, type: !454)
!4293 = !DILocalVariable(name: "uart_config", arg: 2, scope: !4286, file: !394, line: 93, type: !4289)
!4294 = !DILocation(line: 0, scope: !4286)
!4295 = !DILocation(line: 95, column: 10, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4286, file: !394, line: 95, column: 9)
!4297 = !DILocation(line: 95, column: 9, scope: !4286)
!4298 = !DILocation(line: 101, column: 23, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4286, file: !394, line: 101, column: 9)
!4300 = !DILocation(line: 101, column: 32, scope: !4299)
!4301 = !DILocation(line: 101, column: 60, scope: !4299)
!4302 = !DILocation(line: 102, column: 27, scope: !4299)
!4303 = !DILocation(line: 102, column: 34, scope: !4299)
!4304 = !DILocation(line: 102, column: 58, scope: !4299)
!4305 = !DILocation(line: 103, column: 27, scope: !4299)
!4306 = !DILocation(line: 103, column: 36, scope: !4299)
!4307 = !DILocation(line: 103, column: 59, scope: !4299)
!4308 = !DILocation(line: 104, column: 27, scope: !4299)
!4309 = !DILocation(line: 104, column: 39, scope: !4299)
!4310 = !DILocation(line: 101, column: 9, scope: !4286)
!4311 = !DILocation(line: 109, column: 1, scope: !4286)
!4312 = distinct !DISubprogram(name: "hal_uart_translate_port", scope: !394, file: !394, line: 139, type: !4313, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !4315)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!2956, !454}
!4315 = !{!4316}
!4316 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4312, file: !394, line: 139, type: !454)
!4317 = !DILocation(line: 0, scope: !4312)
!4318 = !DILocation(line: 141, column: 24, scope: !4312)
!4319 = !DILocation(line: 141, column: 12, scope: !4312)
!4320 = !DILocation(line: 141, column: 5, scope: !4312)
!4321 = distinct !DISubprogram(name: "hal_uart_set_format", scope: !394, file: !394, line: 593, type: !4322, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !4324)
!4322 = !DISubroutineType(types: !4323)
!4323 = !{!4260, !454, !4289}
!4324 = !{!4325, !4326}
!4325 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4321, file: !394, line: 593, type: !454)
!4326 = !DILocalVariable(name: "config", arg: 2, scope: !4321, file: !394, line: 593, type: !4289)
!4327 = !DILocation(line: 0, scope: !4321)
!4328 = !DILocation(line: 595, column: 10, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4321, file: !394, line: 595, column: 9)
!4330 = !DILocation(line: 595, column: 9, scope: !4321)
!4331 = !DILocation(line: 598, column: 45, scope: !4321)
!4332 = !DILocation(line: 598, column: 12, scope: !4321)
!4333 = !DILocation(line: 598, column: 59, scope: !4321)
!4334 = !DILocation(line: 598, column: 5, scope: !4321)
!4335 = !DILocation(line: 599, column: 23, scope: !4321)
!4336 = !DILocation(line: 600, column: 59, scope: !4321)
!4337 = !DILocation(line: 600, column: 23, scope: !4321)
!4338 = !DILocation(line: 601, column: 62, scope: !4321)
!4339 = !DILocation(line: 601, column: 23, scope: !4321)
!4340 = !DILocation(line: 602, column: 57, scope: !4321)
!4341 = !DILocation(line: 602, column: 23, scope: !4321)
!4342 = !DILocation(line: 603, column: 58, scope: !4321)
!4343 = !DILocation(line: 603, column: 23, scope: !4321)
!4344 = !DILocation(line: 599, column: 5, scope: !4321)
!4345 = !DILocation(line: 604, column: 5, scope: !4321)
!4346 = !DILocation(line: 605, column: 1, scope: !4321)
!4347 = distinct !DISubprogram(name: "hal_uart_translate_baudrate", scope: !394, file: !394, line: 145, type: !4348, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !4350)
!4348 = !DISubroutineType(types: !4349)
!4349 = !{!176, !469}
!4350 = !{!4351, !4352}
!4351 = !DILocalVariable(name: "bandrate", arg: 1, scope: !4347, file: !394, line: 145, type: !469)
!4352 = !DILocalVariable(name: "baudrate_tbl", scope: !4347, file: !394, line: 147, type: !4353)
!4353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 416, elements: !4354)
!4354 = !{!4355}
!4355 = !DISubrange(count: 13)
!4356 = !DILocation(line: 0, scope: !4347)
!4357 = !DILocation(line: 147, column: 14, scope: !4347)
!4358 = !DILocation(line: 151, column: 12, scope: !4347)
!4359 = !DILocation(line: 151, column: 5, scope: !4347)
!4360 = distinct !DISubprogram(name: "hal_uart_translate_word_length", scope: !394, file: !394, line: 155, type: !4361, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !4363)
!4361 = !DISubroutineType(types: !4362)
!4362 = !{!3026, !471}
!4363 = !{!4364, !4365}
!4364 = !DILocalVariable(name: "word_length", arg: 1, scope: !4360, file: !394, line: 155, type: !471)
!4365 = !DILocalVariable(name: "databit_tbl", scope: !4360, file: !394, line: 157, type: !4366)
!4366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3026, size: 64, elements: !318)
!4367 = !DILocation(line: 0, scope: !4360)
!4368 = !DILocation(line: 157, column: 14, scope: !4360)
!4369 = !DILocation(line: 160, column: 12, scope: !4360)
!4370 = !DILocation(line: 160, column: 5, scope: !4360)
!4371 = distinct !DISubprogram(name: "hal_uart_translate_parity", scope: !394, file: !394, line: 164, type: !4372, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !4374)
!4372 = !DISubroutineType(types: !4373)
!4373 = !{!3026, !475}
!4374 = !{!4375, !4376}
!4375 = !DILocalVariable(name: "parity", arg: 1, scope: !4371, file: !394, line: 164, type: !475)
!4376 = !DILocalVariable(name: "parity_tbl", scope: !4371, file: !394, line: 166, type: !4377)
!4377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3026, size: 80, elements: !322)
!4378 = !DILocation(line: 0, scope: !4371)
!4379 = !DILocation(line: 166, column: 14, scope: !4371)
!4380 = !DILocation(line: 169, column: 12, scope: !4371)
!4381 = !DILocation(line: 169, column: 5, scope: !4371)
!4382 = distinct !DISubprogram(name: "hal_uart_translate_stopbit", scope: !394, file: !394, line: 173, type: !4383, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !4385)
!4383 = !DISubroutineType(types: !4384)
!4384 = !{!3026, !473}
!4385 = !{!4386, !4387}
!4386 = !DILocalVariable(name: "stopbit", arg: 1, scope: !4382, file: !394, line: 173, type: !473)
!4387 = !DILocalVariable(name: "stopbit_tbl", scope: !4382, file: !394, line: 175, type: !4388)
!4388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3026, size: 48, elements: !631)
!4389 = !DILocation(line: 0, scope: !4382)
!4390 = !DILocation(line: 175, column: 14, scope: !4382)
!4391 = !DILocation(line: 178, column: 12, scope: !4382)
!4392 = !DILocation(line: 178, column: 5, scope: !4382)
!4393 = distinct !DISubprogram(name: "hal_uart_is_port_valid", scope: !394, file: !394, line: 87, type: !4394, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !4396)
!4394 = !DISubroutineType(types: !4395)
!4395 = !{!119, !454}
!4396 = !{!4397}
!4397 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4393, file: !394, line: 87, type: !454)
!4398 = !DILocation(line: 0, scope: !4393)
!4399 = !DILocation(line: 89, column: 23, scope: !4393)
!4400 = !DILocation(line: 89, column: 5, scope: !4393)
!4401 = distinct !DISubprogram(name: "hal_uart_deinit", scope: !394, file: !394, line: 264, type: !4402, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !4404)
!4402 = !DISubroutineType(types: !4403)
!4403 = !{!4260, !454}
!4404 = !{!4405}
!4405 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4401, file: !394, line: 264, type: !454)
!4406 = !DILocation(line: 0, scope: !4401)
!4407 = !DILocation(line: 266, column: 10, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4401, file: !394, line: 266, column: 9)
!4409 = !DILocation(line: 266, column: 9, scope: !4401)
!4410 = !DILocation(line: 269, column: 41, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4401, file: !394, line: 269, column: 9)
!4412 = !DILocation(line: 269, column: 62, scope: !4411)
!4413 = !DILocation(line: 269, column: 9, scope: !4401)
!4414 = !DILocation(line: 272, column: 5, scope: !4401)
!4415 = !DILocation(line: 275, column: 22, scope: !4401)
!4416 = !DILocation(line: 275, column: 5, scope: !4401)
!4417 = !DILocation(line: 284, column: 5, scope: !4401)
!4418 = !DILocation(line: 286, column: 5, scope: !4401)
!4419 = !DILocation(line: 287, column: 1, scope: !4401)
!4420 = distinct !DISubprogram(name: "hal_uart_put_char", scope: !394, file: !394, line: 290, type: !4421, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !4423)
!4421 = !DISubroutineType(types: !4422)
!4422 = !{null, !454, !446}
!4423 = !{!4424, !4425, !4426}
!4424 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4420, file: !394, line: 290, type: !454)
!4425 = !DILocalVariable(name: "byte", arg: 2, scope: !4420, file: !394, line: 290, type: !446)
!4426 = !DILocalVariable(name: "int_no", scope: !4420, file: !394, line: 292, type: !2956)
!4427 = !DILocation(line: 0, scope: !4420)
!4428 = !DILocation(line: 292, column: 26, scope: !4420)
!4429 = !DILocation(line: 294, column: 16, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4420, file: !394, line: 294, column: 9)
!4431 = !DILocation(line: 294, column: 9, scope: !4420)
!4432 = !DILocation(line: 295, column: 9, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4430, file: !394, line: 294, column: 34)
!4434 = !DILocation(line: 296, column: 5, scope: !4433)
!4435 = !DILocation(line: 299, column: 1, scope: !4420)
!4436 = distinct !DISubprogram(name: "hal_uart_send_polling", scope: !394, file: !394, line: 302, type: !4437, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !4439)
!4437 = !DISubroutineType(types: !4438)
!4438 = !{!176, !454, !3162, !176}
!4439 = !{!4440, !4441, !4442, !4443, !4444}
!4440 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4436, file: !394, line: 302, type: !454)
!4441 = !DILocalVariable(name: "data", arg: 2, scope: !4436, file: !394, line: 302, type: !3162)
!4442 = !DILocalVariable(name: "size", arg: 3, scope: !4436, file: !394, line: 302, type: !176)
!4443 = !DILocalVariable(name: "int_no", scope: !4436, file: !394, line: 304, type: !2956)
!4444 = !DILocalVariable(name: "index", scope: !4436, file: !394, line: 305, type: !176)
!4445 = !DILocation(line: 0, scope: !4436)
!4446 = !DILocation(line: 304, column: 26, scope: !4436)
!4447 = !DILocation(line: 307, column: 14, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4436, file: !394, line: 307, column: 9)
!4449 = !DILocation(line: 307, column: 9, scope: !4436)
!4450 = !DILocation(line: 313, column: 53, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4452, file: !394, line: 312, column: 48)
!4452 = distinct !DILexicalBlock(scope: !4453, file: !394, line: 312, column: 9)
!4453 = distinct !DILexicalBlock(scope: !4454, file: !394, line: 312, column: 9)
!4454 = distinct !DILexicalBlock(scope: !4455, file: !394, line: 311, column: 33)
!4455 = distinct !DILexicalBlock(scope: !4436, file: !394, line: 311, column: 9)
!4456 = !DILocation(line: 313, column: 13, scope: !4451)
!4457 = !DILocation(line: 312, column: 44, scope: !4452)
!4458 = !DILocation(line: 312, column: 31, scope: !4452)
!4459 = !DILocation(line: 312, column: 9, scope: !4453)
!4460 = distinct !{!4460, !4459, !4461}
!4461 = !DILocation(line: 314, column: 9, scope: !4453)
!4462 = !DILocation(line: 318, column: 1, scope: !4436)
!4463 = distinct !DISubprogram(name: "hal_uart_send_dma", scope: !394, file: !394, line: 320, type: !4437, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !4464)
!4464 = !{!4465, !4466, !4467, !4468, !4469, !4470}
!4465 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4463, file: !394, line: 320, type: !454)
!4466 = !DILocalVariable(name: "data", arg: 2, scope: !4463, file: !394, line: 320, type: !3162)
!4467 = !DILocalVariable(name: "size", arg: 3, scope: !4463, file: !394, line: 320, type: !176)
!4468 = !DILocalVariable(name: "actual_space", scope: !4463, file: !394, line: 322, type: !176)
!4469 = !DILocalVariable(name: "send_size", scope: !4463, file: !394, line: 322, type: !176)
!4470 = !DILocalVariable(name: "ch", scope: !4463, file: !394, line: 323, type: !4471)
!4471 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_VFIFO_CHANNEL", file: !208, line: 144, baseType: !207)
!4472 = !DILocation(line: 0, scope: !4463)
!4473 = !DILocation(line: 322, column: 5, scope: !4463)
!4474 = !DILocation(line: 328, column: 10, scope: !4475)
!4475 = distinct !DILexicalBlock(scope: !4463, file: !394, line: 328, column: 9)
!4476 = !DILocation(line: 328, column: 9, scope: !4463)
!4477 = !DILocation(line: 332, column: 15, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4463, file: !394, line: 332, column: 9)
!4479 = !DILocation(line: 332, column: 24, scope: !4478)
!4480 = !DILocation(line: 335, column: 42, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4463, file: !394, line: 335, column: 9)
!4482 = !DILocation(line: 335, column: 9, scope: !4463)
!4483 = !DILocation(line: 349, column: 30, scope: !4463)
!4484 = !DILocation(line: 349, column: 5, scope: !4463)
!4485 = !DILocation(line: 350, column: 9, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4463, file: !394, line: 350, column: 9)
!4487 = !DILocation(line: 350, column: 22, scope: !4486)
!4488 = !DILocation(line: 355, column: 5, scope: !4463)
!4489 = !DILocation(line: 357, column: 22, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4463, file: !394, line: 357, column: 9)
!4491 = !DILocation(line: 357, column: 19, scope: !4490)
!4492 = !DILocation(line: 357, column: 9, scope: !4463)
!4493 = !DILocation(line: 358, column: 14, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4490, file: !394, line: 357, column: 36)
!4495 = !{i32 14, i32 18}
!4496 = !DILocation(line: 359, column: 9, scope: !4494)
!4497 = !DILocation(line: 360, column: 5, scope: !4494)
!4498 = !DILocation(line: 362, column: 1, scope: !4463)
!4499 = distinct !DISubprogram(name: "uart_channel_to_dma_channel", scope: !394, file: !394, line: 191, type: !4500, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !4502)
!4500 = !DISubroutineType(types: !4501)
!4501 = !{!4471, !2956, !119}
!4502 = !{!4503, !4504, !4505}
!4503 = !DILocalVariable(name: "port", arg: 1, scope: !4499, file: !394, line: 191, type: !2956)
!4504 = !DILocalVariable(name: "is_rx", arg: 2, scope: !4499, file: !394, line: 191, type: !119)
!4505 = !DILocalVariable(name: "ch", scope: !4499, file: !394, line: 193, type: !4471)
!4506 = !DILocation(line: 0, scope: !4499)
!4507 = !DILocation(line: 195, column: 14, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4499, file: !394, line: 195, column: 9)
!4509 = !DILocation(line: 195, column: 9, scope: !4499)
!4510 = !DILocation(line: 209, column: 5, scope: !4499)
!4511 = distinct !DISubprogram(name: "hal_uart_get_char", scope: !394, file: !394, line: 365, type: !4512, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !4514)
!4512 = !DISubroutineType(types: !4513)
!4513 = !{!446, !454}
!4514 = !{!4515, !4516}
!4515 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4511, file: !394, line: 365, type: !454)
!4516 = !DILocalVariable(name: "int_no", scope: !4511, file: !394, line: 367, type: !2956)
!4517 = !DILocation(line: 0, scope: !4511)
!4518 = !DILocation(line: 367, column: 26, scope: !4511)
!4519 = !DILocation(line: 369, column: 16, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4511, file: !394, line: 369, column: 9)
!4521 = !DILocation(line: 369, column: 9, scope: !4511)
!4522 = !DILocation(line: 370, column: 22, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4520, file: !394, line: 369, column: 33)
!4524 = !DILocation(line: 370, column: 9, scope: !4523)
!4525 = !DILocation(line: 0, scope: !4520)
!4526 = !DILocation(line: 375, column: 1, scope: !4511)
!4527 = distinct !DISubprogram(name: "hal_uart_get_char_unblocking", scope: !394, file: !394, line: 377, type: !4528, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !4530)
!4528 = !DISubroutineType(types: !4529)
!4529 = !{!176, !454}
!4530 = !{!4531, !4532}
!4531 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4527, file: !394, line: 377, type: !454)
!4532 = !DILocalVariable(name: "int_no", scope: !4527, file: !394, line: 379, type: !2956)
!4533 = !DILocation(line: 0, scope: !4527)
!4534 = !DILocation(line: 379, column: 26, scope: !4527)
!4535 = !DILocation(line: 381, column: 16, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4527, file: !394, line: 381, column: 9)
!4537 = !DILocation(line: 381, column: 9, scope: !4527)
!4538 = !DILocation(line: 382, column: 16, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4536, file: !394, line: 381, column: 33)
!4540 = !DILocation(line: 382, column: 9, scope: !4539)
!4541 = !DILocation(line: 0, scope: !4536)
!4542 = !DILocation(line: 387, column: 1, scope: !4527)
!4543 = distinct !DISubprogram(name: "hal_uart_receive_polling", scope: !394, file: !394, line: 390, type: !4544, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !4546)
!4544 = !DISubroutineType(types: !4545)
!4545 = !{!176, !454, !494, !176}
!4546 = !{!4547, !4548, !4549, !4550, !4551}
!4547 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4543, file: !394, line: 390, type: !454)
!4548 = !DILocalVariable(name: "buffer", arg: 2, scope: !4543, file: !394, line: 390, type: !494)
!4549 = !DILocalVariable(name: "size", arg: 3, scope: !4543, file: !394, line: 390, type: !176)
!4550 = !DILocalVariable(name: "int_no", scope: !4543, file: !394, line: 392, type: !2956)
!4551 = !DILocalVariable(name: "index", scope: !4543, file: !394, line: 393, type: !176)
!4552 = !DILocation(line: 0, scope: !4543)
!4553 = !DILocation(line: 392, column: 26, scope: !4543)
!4554 = !DILocation(line: 395, column: 16, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4543, file: !394, line: 395, column: 9)
!4556 = !DILocation(line: 395, column: 9, scope: !4543)
!4557 = !DILocation(line: 401, column: 38, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4559, file: !394, line: 400, column: 48)
!4559 = distinct !DILexicalBlock(scope: !4560, file: !394, line: 400, column: 9)
!4560 = distinct !DILexicalBlock(scope: !4561, file: !394, line: 400, column: 9)
!4561 = distinct !DILexicalBlock(scope: !4562, file: !394, line: 399, column: 33)
!4562 = distinct !DILexicalBlock(scope: !4543, file: !394, line: 399, column: 9)
!4563 = !DILocation(line: 401, column: 13, scope: !4558)
!4564 = !DILocation(line: 401, column: 27, scope: !4558)
!4565 = !DILocation(line: 400, column: 44, scope: !4559)
!4566 = !DILocation(line: 400, column: 31, scope: !4559)
!4567 = !DILocation(line: 400, column: 9, scope: !4560)
!4568 = distinct !{!4568, !4567, !4569}
!4569 = !DILocation(line: 402, column: 9, scope: !4560)
!4570 = !DILocation(line: 406, column: 1, scope: !4543)
!4571 = distinct !DISubprogram(name: "hal_uart_receive_dma", scope: !394, file: !394, line: 408, type: !4544, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !4572)
!4572 = !{!4573, !4574, !4575, !4576, !4577, !4578}
!4573 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4571, file: !394, line: 408, type: !454)
!4574 = !DILocalVariable(name: "buffer", arg: 2, scope: !4571, file: !394, line: 408, type: !494)
!4575 = !DILocalVariable(name: "size", arg: 3, scope: !4571, file: !394, line: 408, type: !176)
!4576 = !DILocalVariable(name: "actual_size", scope: !4571, file: !394, line: 410, type: !176)
!4577 = !DILocalVariable(name: "receive_size", scope: !4571, file: !394, line: 410, type: !176)
!4578 = !DILocalVariable(name: "ch", scope: !4571, file: !394, line: 411, type: !4471)
!4579 = !DILocation(line: 0, scope: !4571)
!4580 = !DILocation(line: 410, column: 5, scope: !4571)
!4581 = !DILocation(line: 413, column: 10, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4571, file: !394, line: 413, column: 9)
!4583 = !DILocation(line: 413, column: 9, scope: !4571)
!4584 = !DILocation(line: 417, column: 17, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4571, file: !394, line: 417, column: 9)
!4586 = !DILocation(line: 417, column: 26, scope: !4585)
!4587 = !DILocation(line: 421, column: 30, scope: !4571)
!4588 = !DILocation(line: 421, column: 5, scope: !4571)
!4589 = !DILocation(line: 422, column: 9, scope: !4590)
!4590 = distinct !DILexicalBlock(scope: !4571, file: !394, line: 422, column: 9)
!4591 = !DILocation(line: 422, column: 21, scope: !4590)
!4592 = !DILocation(line: 427, column: 5, scope: !4571)
!4593 = !DILocation(line: 429, column: 25, scope: !4594)
!4594 = distinct !DILexicalBlock(scope: !4571, file: !394, line: 429, column: 9)
!4595 = !DILocation(line: 429, column: 22, scope: !4594)
!4596 = !DILocation(line: 429, column: 9, scope: !4571)
!4597 = !DILocation(line: 430, column: 14, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4594, file: !394, line: 429, column: 38)
!4599 = !DILocation(line: 431, column: 9, scope: !4598)
!4600 = !DILocation(line: 432, column: 5, scope: !4598)
!4601 = !DILocation(line: 435, column: 1, scope: !4571)
!4602 = distinct !DISubprogram(name: "hal_uart_get_available_send_space", scope: !394, file: !394, line: 438, type: !4528, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !4603)
!4603 = !{!4604, !4605}
!4604 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4602, file: !394, line: 438, type: !454)
!4605 = !DILocalVariable(name: "length", scope: !4602, file: !394, line: 440, type: !176)
!4606 = !DILocation(line: 0, scope: !4602)
!4607 = !DILocation(line: 440, column: 5, scope: !4602)
!4608 = !DILocation(line: 440, column: 14, scope: !4602)
!4609 = !DILocation(line: 442, column: 10, scope: !4610)
!4610 = distinct !DILexicalBlock(scope: !4602, file: !394, line: 442, column: 9)
!4611 = !DILocation(line: 442, column: 9, scope: !4602)
!4612 = !DILocation(line: 446, column: 30, scope: !4602)
!4613 = !DILocation(line: 446, column: 5, scope: !4602)
!4614 = !DILocation(line: 447, column: 12, scope: !4602)
!4615 = !DILocation(line: 447, column: 5, scope: !4602)
!4616 = !DILocation(line: 448, column: 1, scope: !4602)
!4617 = distinct !DISubprogram(name: "hal_uart_get_available_receive_bytes", scope: !394, file: !394, line: 451, type: !4528, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !4618)
!4618 = !{!4619, !4620}
!4619 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4617, file: !394, line: 451, type: !454)
!4620 = !DILocalVariable(name: "length", scope: !4617, file: !394, line: 453, type: !176)
!4621 = !DILocation(line: 0, scope: !4617)
!4622 = !DILocation(line: 453, column: 5, scope: !4617)
!4623 = !DILocation(line: 453, column: 14, scope: !4617)
!4624 = !DILocation(line: 455, column: 10, scope: !4625)
!4625 = distinct !DILexicalBlock(scope: !4617, file: !394, line: 455, column: 9)
!4626 = !DILocation(line: 455, column: 9, scope: !4617)
!4627 = !DILocation(line: 459, column: 30, scope: !4617)
!4628 = !DILocation(line: 459, column: 5, scope: !4617)
!4629 = !DILocation(line: 461, column: 12, scope: !4617)
!4630 = !DILocation(line: 461, column: 5, scope: !4617)
!4631 = !DILocation(line: 462, column: 1, scope: !4617)
!4632 = distinct !DISubprogram(name: "hal_uart_register_callback", scope: !394, file: !394, line: 543, type: !4633, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !4635)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{!4260, !454, !482, !249}
!4635 = !{!4636, !4637, !4638, !4639}
!4636 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4632, file: !394, line: 543, type: !454)
!4637 = !DILocalVariable(name: "user_callback", arg: 2, scope: !4632, file: !394, line: 544, type: !482)
!4638 = !DILocalVariable(name: "user_data", arg: 3, scope: !4632, file: !394, line: 545, type: !249)
!4639 = !DILocalVariable(name: "ch", scope: !4632, file: !394, line: 547, type: !4471)
!4640 = !DILocation(line: 0, scope: !4632)
!4641 = !DILocation(line: 549, column: 10, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4632, file: !394, line: 549, column: 9)
!4643 = !DILocation(line: 549, column: 9, scope: !4632)
!4644 = !DILocation(line: 556, column: 53, scope: !4632)
!4645 = !DILocation(line: 556, column: 62, scope: !4632)
!4646 = !DILocation(line: 557, column: 53, scope: !4632)
!4647 = !DILocation(line: 557, column: 63, scope: !4632)
!4648 = !DILocation(line: 558, column: 37, scope: !4632)
!4649 = !DILocation(line: 558, column: 54, scope: !4632)
!4650 = !DILocation(line: 560, column: 39, scope: !4632)
!4651 = !DILocation(line: 561, column: 39, scope: !4632)
!4652 = !DILocation(line: 560, column: 5, scope: !4632)
!4653 = !DILocation(line: 562, column: 5, scope: !4632)
!4654 = !DILocation(line: 564, column: 44, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !4632, file: !394, line: 564, column: 9)
!4656 = !DILocation(line: 564, column: 9, scope: !4632)
!4657 = !DILocation(line: 565, column: 9, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !4655, file: !394, line: 564, column: 59)
!4659 = !DILocation(line: 566, column: 5, scope: !4658)
!4660 = !DILocation(line: 567, column: 9, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4655, file: !394, line: 566, column: 12)
!4662 = !DILocation(line: 569, column: 10, scope: !4632)
!4663 = !DILocation(line: 570, column: 5, scope: !4632)
!4664 = !DILocation(line: 578, column: 5, scope: !4632)
!4665 = !DILocation(line: 579, column: 1, scope: !4632)
!4666 = !DILocation(line: 0, scope: !450)
!4667 = !DILocation(line: 539, column: 12, scope: !450)
!4668 = !DILocation(line: 539, column: 5, scope: !450)
!4669 = distinct !DISubprogram(name: "hal_uart_send_callback0", scope: !394, file: !394, line: 511, type: !75, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !4670)
!4670 = !{!4671}
!4671 = !DILocalVariable(name: "callback_context", scope: !4672, file: !394, line: 514, type: !4674)
!4672 = distinct !DILexicalBlock(scope: !4673, file: !394, line: 513, column: 60)
!4673 = distinct !DILexicalBlock(scope: !4669, file: !394, line: 513, column: 9)
!4674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 32)
!4675 = !DILocation(line: 513, column: 42, scope: !4673)
!4676 = !DILocation(line: 513, column: 9, scope: !4669)
!4677 = !DILocation(line: 515, column: 39, scope: !4678)
!4678 = distinct !DILexicalBlock(scope: !4672, file: !394, line: 515, column: 13)
!4679 = !DILocation(line: 515, column: 18, scope: !4678)
!4680 = !DILocation(line: 515, column: 13, scope: !4672)
!4681 = !DILocation(line: 516, column: 89, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4678, file: !394, line: 515, column: 49)
!4683 = !DILocation(line: 516, column: 13, scope: !4682)
!4684 = !DILocation(line: 517, column: 9, scope: !4682)
!4685 = !DILocation(line: 519, column: 32, scope: !4669)
!4686 = !DILocation(line: 519, column: 5, scope: !4669)
!4687 = !DILocation(line: 520, column: 1, scope: !4669)
!4688 = distinct !DISubprogram(name: "hal_uart_send_callback1", scope: !394, file: !394, line: 523, type: !75, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !4689)
!4689 = !{!4690}
!4690 = !DILocalVariable(name: "callback_context", scope: !4691, file: !394, line: 526, type: !4674)
!4691 = distinct !DILexicalBlock(scope: !4692, file: !394, line: 525, column: 60)
!4692 = distinct !DILexicalBlock(scope: !4688, file: !394, line: 525, column: 9)
!4693 = !DILocation(line: 525, column: 42, scope: !4692)
!4694 = !DILocation(line: 525, column: 9, scope: !4688)
!4695 = !DILocation(line: 527, column: 39, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4691, file: !394, line: 527, column: 13)
!4697 = !DILocation(line: 527, column: 18, scope: !4696)
!4698 = !DILocation(line: 527, column: 13, scope: !4691)
!4699 = !DILocation(line: 528, column: 89, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4696, file: !394, line: 527, column: 49)
!4701 = !DILocation(line: 528, column: 13, scope: !4700)
!4702 = !DILocation(line: 529, column: 9, scope: !4700)
!4703 = !DILocation(line: 531, column: 32, scope: !4688)
!4704 = !DILocation(line: 531, column: 5, scope: !4688)
!4705 = !DILocation(line: 532, column: 1, scope: !4688)
!4706 = distinct !DISubprogram(name: "hal_uart_check_irq_disable", scope: !394, file: !394, line: 464, type: !4707, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !4709)
!4707 = !DISubroutineType(types: !4708)
!4708 = !{null, !2956, !119}
!4709 = !{!4710, !4711, !4712, !4713, !4714, !4716}
!4710 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4706, file: !394, line: 464, type: !2956)
!4711 = !DILocalVariable(name: "is_rx", arg: 2, scope: !4706, file: !394, line: 464, type: !119)
!4712 = !DILocalVariable(name: "avail_size", scope: !4706, file: !394, line: 466, type: !176)
!4713 = !DILocalVariable(name: "avail_space", scope: !4706, file: !394, line: 466, type: !176)
!4714 = !DILocalVariable(name: "dma_config", scope: !4706, file: !394, line: 467, type: !4715)
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 32)
!4716 = !DILocalVariable(name: "ch", scope: !4706, file: !394, line: 468, type: !4471)
!4717 = !DILocation(line: 0, scope: !4706)
!4718 = !DILocation(line: 466, column: 5, scope: !4706)
!4719 = !DILocation(line: 471, column: 9, scope: !4706)
!4720 = !DILocation(line: 472, column: 9, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4722, file: !394, line: 471, column: 16)
!4722 = distinct !DILexicalBlock(scope: !4706, file: !394, line: 471, column: 9)
!4723 = !DILocation(line: 473, column: 13, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4721, file: !394, line: 473, column: 13)
!4725 = !DILocation(line: 473, column: 39, scope: !4724)
!4726 = !DILocation(line: 473, column: 24, scope: !4724)
!4727 = !DILocation(line: 473, column: 13, scope: !4721)
!4728 = !DILocation(line: 478, column: 9, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4722, file: !394, line: 477, column: 12)
!4730 = !DILocation(line: 479, column: 13, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !4729, file: !394, line: 479, column: 13)
!4732 = !DILocation(line: 479, column: 40, scope: !4731)
!4733 = !DILocation(line: 479, column: 77, scope: !4731)
!4734 = !DILocation(line: 479, column: 63, scope: !4731)
!4735 = !DILocation(line: 479, column: 25, scope: !4731)
!4736 = !DILocation(line: 479, column: 13, scope: !4729)
!4737 = !DILocation(line: 0, scope: !4722)
!4738 = !DILocation(line: 484, column: 1, scope: !4706)
!4739 = distinct !DISubprogram(name: "hal_uart_receive_callback0", scope: !394, file: !394, line: 486, type: !75, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !4740)
!4740 = !{!4741}
!4741 = !DILocalVariable(name: "callback_context", scope: !4742, file: !394, line: 490, type: !4674)
!4742 = distinct !DILexicalBlock(scope: !4743, file: !394, line: 489, column: 70)
!4743 = distinct !DILexicalBlock(scope: !4739, file: !394, line: 488, column: 9)
!4744 = !DILocation(line: 488, column: 43, scope: !4743)
!4745 = !DILocation(line: 488, column: 61, scope: !4743)
!4746 = !DILocation(line: 489, column: 14, scope: !4743)
!4747 = !DILocation(line: 489, column: 63, scope: !4743)
!4748 = !DILocation(line: 488, column: 9, scope: !4739)
!4749 = !DILocation(line: 491, column: 39, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4742, file: !394, line: 491, column: 13)
!4751 = !DILocation(line: 491, column: 18, scope: !4750)
!4752 = !DILocation(line: 491, column: 13, scope: !4742)
!4753 = !DILocation(line: 492, column: 88, scope: !4754)
!4754 = distinct !DILexicalBlock(scope: !4750, file: !394, line: 491, column: 49)
!4755 = !DILocation(line: 492, column: 13, scope: !4754)
!4756 = !DILocation(line: 493, column: 9, scope: !4754)
!4757 = !DILocation(line: 495, column: 32, scope: !4739)
!4758 = !DILocation(line: 495, column: 5, scope: !4739)
!4759 = !DILocation(line: 496, column: 1, scope: !4739)
!4760 = distinct !DISubprogram(name: "hal_uart_receive_callback1", scope: !394, file: !394, line: 499, type: !75, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !4761)
!4761 = !{!4762}
!4762 = !DILocalVariable(name: "callback_context", scope: !4763, file: !394, line: 503, type: !4674)
!4763 = distinct !DILexicalBlock(scope: !4764, file: !394, line: 502, column: 70)
!4764 = distinct !DILexicalBlock(scope: !4760, file: !394, line: 501, column: 9)
!4765 = !DILocation(line: 501, column: 43, scope: !4764)
!4766 = !DILocation(line: 501, column: 61, scope: !4764)
!4767 = !DILocation(line: 502, column: 14, scope: !4764)
!4768 = !DILocation(line: 502, column: 63, scope: !4764)
!4769 = !DILocation(line: 501, column: 9, scope: !4760)
!4770 = !DILocation(line: 504, column: 39, scope: !4771)
!4771 = distinct !DILexicalBlock(scope: !4763, file: !394, line: 504, column: 13)
!4772 = !DILocation(line: 504, column: 18, scope: !4771)
!4773 = !DILocation(line: 504, column: 13, scope: !4763)
!4774 = !DILocation(line: 505, column: 88, scope: !4775)
!4775 = distinct !DILexicalBlock(scope: !4771, file: !394, line: 504, column: 49)
!4776 = !DILocation(line: 505, column: 13, scope: !4775)
!4777 = !DILocation(line: 506, column: 9, scope: !4775)
!4778 = !DILocation(line: 508, column: 32, scope: !4760)
!4779 = !DILocation(line: 508, column: 5, scope: !4760)
!4780 = !DILocation(line: 509, column: 1, scope: !4760)
!4781 = distinct !DISubprogram(name: "hal_uart_set_baudrate", scope: !394, file: !394, line: 582, type: !4782, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !4784)
!4782 = !DISubroutineType(types: !4783)
!4783 = !{!4260, !454, !469}
!4784 = !{!4785, !4786}
!4785 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4781, file: !394, line: 582, type: !454)
!4786 = !DILocalVariable(name: "baudrate", arg: 2, scope: !4781, file: !394, line: 582, type: !469)
!4787 = !DILocation(line: 0, scope: !4781)
!4788 = !DILocation(line: 584, column: 11, scope: !4789)
!4789 = distinct !DILexicalBlock(scope: !4781, file: !394, line: 584, column: 9)
!4790 = !DILocation(line: 584, column: 46, scope: !4789)
!4791 = !DILocation(line: 588, column: 37, scope: !4781)
!4792 = !DILocation(line: 588, column: 50, scope: !4781)
!4793 = !DILocation(line: 588, column: 59, scope: !4781)
!4794 = !DILocation(line: 589, column: 12, scope: !4781)
!4795 = !DILocation(line: 589, column: 5, scope: !4781)
!4796 = !DILocation(line: 590, column: 1, scope: !4781)
!4797 = distinct !DISubprogram(name: "hal_uart_set_dma", scope: !394, file: !394, line: 608, type: !4798, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !4802)
!4798 = !DISubroutineType(types: !4799)
!4799 = !{!4260, !454, !4800}
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4801, size: 32)
!4801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !490)
!4802 = !{!4803, !4804}
!4803 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4797, file: !394, line: 608, type: !454)
!4804 = !DILocalVariable(name: "uart_dma_config", arg: 2, scope: !4797, file: !394, line: 608, type: !4800)
!4805 = !DILocation(line: 0, scope: !4797)
!4806 = !DILocation(line: 610, column: 10, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4797, file: !394, line: 610, column: 9)
!4808 = !DILocation(line: 610, column: 9, scope: !4797)
!4809 = !DILocation(line: 614, column: 10, scope: !4810)
!4810 = distinct !DILexicalBlock(scope: !4797, file: !394, line: 614, column: 9)
!4811 = !DILocation(line: 614, column: 9, scope: !4797)
!4812 = !DILocation(line: 618, column: 37, scope: !4797)
!4813 = !DILocation(line: 618, column: 56, scope: !4797)
!4814 = !DILocation(line: 619, column: 45, scope: !4797)
!4815 = !DILocation(line: 619, column: 12, scope: !4797)
!4816 = !DILocation(line: 620, column: 12, scope: !4797)
!4817 = !DILocation(line: 619, column: 5, scope: !4797)
!4818 = !DILocation(line: 621, column: 5, scope: !4797)
!4819 = !DILocation(line: 622, column: 5, scope: !4797)
!4820 = !DILocation(line: 623, column: 33, scope: !4797)
!4821 = !DILocation(line: 624, column: 50, scope: !4797)
!4822 = !DILocation(line: 625, column: 50, scope: !4797)
!4823 = !DILocation(line: 626, column: 50, scope: !4797)
!4824 = !DILocation(line: 627, column: 50, scope: !4797)
!4825 = !DILocation(line: 628, column: 33, scope: !4797)
!4826 = !DILocation(line: 623, column: 5, scope: !4797)
!4827 = !DILocation(line: 630, column: 50, scope: !4797)
!4828 = !DILocation(line: 631, column: 50, scope: !4797)
!4829 = !DILocation(line: 632, column: 50, scope: !4797)
!4830 = !DILocation(line: 629, column: 5, scope: !4797)
!4831 = !DILocation(line: 634, column: 5, scope: !4797)
!4832 = !DILocation(line: 635, column: 1, scope: !4797)
!4833 = distinct !DISubprogram(name: "hal_uart_is_dma_config_valid", scope: !394, file: !394, line: 112, type: !4834, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !4836)
!4834 = !DISubroutineType(types: !4835)
!4835 = !{!119, !4800}
!4836 = !{!4837}
!4837 = !DILocalVariable(name: "dma_config", arg: 1, scope: !4833, file: !394, line: 112, type: !4800)
!4838 = !DILocation(line: 0, scope: !4833)
!4839 = !DILocation(line: 114, column: 14, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4833, file: !394, line: 114, column: 9)
!4841 = !DILocation(line: 114, column: 9, scope: !4833)
!4842 = !DILocation(line: 117, column: 29, scope: !4843)
!4843 = distinct !DILexicalBlock(scope: !4833, file: !394, line: 117, column: 9)
!4844 = !DILocation(line: 117, column: 14, scope: !4843)
!4845 = !DILocation(line: 117, column: 9, scope: !4833)
!4846 = !DILocation(line: 120, column: 21, scope: !4847)
!4847 = distinct !DILexicalBlock(scope: !4833, file: !394, line: 120, column: 9)
!4848 = !DILocation(line: 120, column: 61, scope: !4847)
!4849 = !DILocation(line: 120, column: 47, scope: !4847)
!4850 = !DILocation(line: 120, column: 9, scope: !4833)
!4851 = !DILocation(line: 123, column: 61, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4833, file: !394, line: 123, column: 9)
!4853 = !DILocation(line: 123, column: 47, scope: !4852)
!4854 = !DILocation(line: 123, column: 9, scope: !4833)
!4855 = !DILocation(line: 126, column: 29, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4833, file: !394, line: 126, column: 9)
!4857 = !DILocation(line: 126, column: 14, scope: !4856)
!4858 = !DILocation(line: 126, column: 9, scope: !4833)
!4859 = !DILocation(line: 129, column: 21, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4833, file: !394, line: 129, column: 9)
!4861 = !DILocation(line: 129, column: 58, scope: !4860)
!4862 = !DILocation(line: 129, column: 44, scope: !4860)
!4863 = !DILocation(line: 129, column: 9, scope: !4833)
!4864 = !DILocation(line: 136, column: 1, scope: !4833)
!4865 = distinct !DISubprogram(name: "hal_uart_translate_timeout", scope: !394, file: !394, line: 182, type: !4151, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !4866)
!4866 = !{!4867, !4868}
!4867 = !DILocalVariable(name: "timeout_us", arg: 1, scope: !4865, file: !394, line: 182, type: !176)
!4868 = !DILocalVariable(name: "ticks_per_us", scope: !4865, file: !394, line: 184, type: !176)
!4869 = !DILocation(line: 0, scope: !4865)
!4870 = !DILocation(line: 186, column: 20, scope: !4865)
!4871 = !DILocation(line: 186, column: 39, scope: !4865)
!4872 = !DILocation(line: 188, column: 25, scope: !4865)
!4873 = !DILocation(line: 188, column: 5, scope: !4865)
!4874 = distinct !DISubprogram(name: "hal_uart_set_hardware_flowcontrol", scope: !394, file: !394, line: 637, type: !4402, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !4875)
!4875 = !{!4876, !4877}
!4876 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4874, file: !394, line: 637, type: !454)
!4877 = !DILocalVariable(name: "int_no", scope: !4874, file: !394, line: 639, type: !2956)
!4878 = !DILocation(line: 0, scope: !4874)
!4879 = !DILocation(line: 641, column: 10, scope: !4880)
!4880 = distinct !DILexicalBlock(scope: !4874, file: !394, line: 641, column: 9)
!4881 = !DILocation(line: 641, column: 9, scope: !4874)
!4882 = !DILocation(line: 645, column: 14, scope: !4874)
!4883 = !DILocation(line: 646, column: 5, scope: !4874)
!4884 = !DILocation(line: 648, column: 5, scope: !4874)
!4885 = !DILocation(line: 649, column: 1, scope: !4874)
!4886 = distinct !DISubprogram(name: "hal_uart_set_software_flowcontrol", scope: !394, file: !394, line: 651, type: !4887, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !4889)
!4887 = !DISubroutineType(types: !4888)
!4888 = !{!4260, !454, !279, !279, !279}
!4889 = !{!4890, !4891, !4892, !4893, !4894}
!4890 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4886, file: !394, line: 651, type: !454)
!4891 = !DILocalVariable(name: "xon", arg: 2, scope: !4886, file: !394, line: 652, type: !279)
!4892 = !DILocalVariable(name: "xoff", arg: 3, scope: !4886, file: !394, line: 653, type: !279)
!4893 = !DILocalVariable(name: "escape_character", arg: 4, scope: !4886, file: !394, line: 654, type: !279)
!4894 = !DILocalVariable(name: "int_no", scope: !4886, file: !394, line: 656, type: !2956)
!4895 = !DILocation(line: 0, scope: !4886)
!4896 = !DILocation(line: 658, column: 10, scope: !4897)
!4897 = distinct !DILexicalBlock(scope: !4886, file: !394, line: 658, column: 9)
!4898 = !DILocation(line: 658, column: 9, scope: !4886)
!4899 = !DILocation(line: 662, column: 14, scope: !4886)
!4900 = !DILocation(line: 663, column: 5, scope: !4886)
!4901 = !DILocation(line: 665, column: 5, scope: !4886)
!4902 = !DILocation(line: 666, column: 1, scope: !4886)
!4903 = distinct !DISubprogram(name: "hal_uart_disable_flowcontrol", scope: !394, file: !394, line: 668, type: !4402, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !4904)
!4904 = !{!4905, !4906}
!4905 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4903, file: !394, line: 668, type: !454)
!4906 = !DILocalVariable(name: "int_no", scope: !4903, file: !394, line: 670, type: !2956)
!4907 = !DILocation(line: 0, scope: !4903)
!4908 = !DILocation(line: 672, column: 10, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4903, file: !394, line: 672, column: 9)
!4910 = !DILocation(line: 672, column: 9, scope: !4903)
!4911 = !DILocation(line: 676, column: 14, scope: !4903)
!4912 = !DILocation(line: 677, column: 5, scope: !4903)
!4913 = !DILocation(line: 679, column: 5, scope: !4903)
!4914 = !DILocation(line: 680, column: 1, scope: !4903)
!4915 = distinct !DISubprogram(name: "hal_uart_set_dma_timeout", scope: !394, file: !394, line: 683, type: !4916, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !4918)
!4916 = !DISubroutineType(types: !4917)
!4917 = !{!4260, !454, !176}
!4918 = !{!4919, !4920}
!4919 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4915, file: !394, line: 683, type: !454)
!4920 = !DILocalVariable(name: "timeout", arg: 2, scope: !4915, file: !394, line: 683, type: !176)
!4921 = !DILocation(line: 0, scope: !4915)
!4922 = !DILocation(line: 685, column: 10, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4915, file: !394, line: 685, column: 9)
!4924 = !DILocation(line: 685, column: 9, scope: !4915)
!4925 = !DILocation(line: 689, column: 19, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4915, file: !394, line: 689, column: 9)
!4927 = !DILocation(line: 0, scope: !4926)
!4928 = !DILocation(line: 696, column: 1, scope: !4915)
!4929 = distinct !DISubprogram(name: "__io_putchar", scope: !1010, file: !1010, line: 57, type: !4930, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1009, retainedNodes: !4932)
!4930 = !DISubroutineType(types: !4931)
!4931 = !{!13, !13}
!4932 = !{!4933}
!4933 = !DILocalVariable(name: "ch", arg: 1, scope: !4929, file: !1010, line: 57, type: !13)
!4934 = !DILocation(line: 0, scope: !4929)
!4935 = !DILocation(line: 64, column: 35, scope: !4929)
!4936 = !DILocation(line: 64, column: 5, scope: !4929)
!4937 = !DILocation(line: 65, column: 5, scope: !4929)
!4938 = distinct !DISubprogram(name: "main", scope: !1010, file: !1010, line: 202, type: !2933, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1009, retainedNodes: !1204)
!4939 = !DILocation(line: 205, column: 5, scope: !4938)
!4940 = !DILocation(line: 208, column: 5, scope: !4938)
!4941 = !DILocation(line: 319, column: 3, scope: !4942, inlinedAt: !4943)
!4942 = distinct !DISubprogram(name: "__enable_irq", scope: !2379, file: !2379, line: 317, type: !75, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1009, retainedNodes: !1204)
!4943 = distinct !DILocation(line: 211, column: 5, scope: !4938)
!4944 = !{i64 510296}
!4945 = !DILocation(line: 496, column: 3, scope: !4946, inlinedAt: !4947)
!4946 = distinct !DISubprogram(name: "__enable_fault_irq", scope: !2379, file: !2379, line: 494, type: !75, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1009, retainedNodes: !1204)
!4947 = distinct !DILocation(line: 212, column: 5, scope: !4938)
!4948 = !{i64 514571}
!4949 = !DILocation(line: 215, column: 5, scope: !4938)
!4950 = !DILocation(line: 218, column: 5, scope: !4938)
!4951 = !DILocation(line: 219, column: 5, scope: !4938)
!4952 = !DILocation(line: 221, column: 5, scope: !4938)
!4953 = !DILocation(line: 222, column: 5, scope: !4938)
!4954 = !DILocation(line: 222, column: 5, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4956, file: !1010, line: 222, column: 5)
!4956 = distinct !DILexicalBlock(scope: !4938, file: !1010, line: 222, column: 5)
!4957 = distinct !{!4957, !4958, !4959}
!4958 = !DILocation(line: 222, column: 5, scope: !4956)
!4959 = !DILocation(line: 222, column: 13, scope: !4956)
!4960 = distinct !DISubprogram(name: "SystemClock_Config", scope: !1010, file: !1010, line: 94, type: !75, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1009, retainedNodes: !1204)
!4961 = !DILocation(line: 96, column: 5, scope: !4960)
!4962 = !DILocation(line: 97, column: 1, scope: !4960)
!4963 = distinct !DISubprogram(name: "prvSetupHardware", scope: !1010, file: !1010, line: 103, type: !75, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1009, retainedNodes: !1204)
!4964 = !DILocation(line: 106, column: 5, scope: !4963)
!4965 = !DILocation(line: 107, column: 1, scope: !4963)
!4966 = distinct !DISubprogram(name: "hal_gpc_example", scope: !1010, file: !1010, line: 153, type: !75, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1009, retainedNodes: !4967)
!4967 = !{!4968, !4969, !4970, !4975}
!4968 = !DILocalVariable(name: "count_value", scope: !4966, file: !1010, line: 155, type: !176)
!4969 = !DILocalVariable(name: "ret", scope: !4966, file: !1010, line: 156, type: !1213)
!4970 = !DILocalVariable(name: "gpc_config", scope: !4966, file: !1010, line: 157, type: !4971)
!4971 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpc_config_t", file: !89, line: 285, baseType: !4972)
!4972 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !89, line: 283, size: 32, elements: !4973)
!4973 = !{!4974}
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "edge", scope: !4972, file: !89, line: 284, baseType: !1221, size: 32)
!4975 = !DILocalVariable(name: "index", scope: !4976, file: !1010, line: 175, type: !176)
!4976 = distinct !DILexicalBlock(scope: !4966, file: !1010, line: 175, column: 5)
!4977 = !DILocation(line: 155, column: 5, scope: !4966)
!4978 = !DILocation(line: 157, column: 5, scope: !4966)
!4979 = !DILocation(line: 157, column: 33, scope: !4966)
!4980 = !DILocation(line: 159, column: 5, scope: !4966)
!4981 = !DILocation(line: 161, column: 16, scope: !4966)
!4982 = !DILocation(line: 161, column: 21, scope: !4966)
!4983 = !DILocation(line: 162, column: 5, scope: !4966)
!4984 = !DILocation(line: 166, column: 11, scope: !4966)
!4985 = !DILocation(line: 0, scope: !4966)
!4986 = !DILocation(line: 167, column: 13, scope: !4987)
!4987 = distinct !DILexicalBlock(scope: !4966, file: !1010, line: 167, column: 9)
!4988 = !DILocation(line: 167, column: 9, scope: !4966)
!4989 = !DILocation(line: 173, column: 5, scope: !4966)
!4990 = !DILocation(line: 0, scope: !4976)
!4991 = !DILocation(line: 175, column: 10, scope: !4976)
!4992 = !DILocation(line: 175, column: 36, scope: !4993)
!4993 = distinct !DILexicalBlock(scope: !4976, file: !1010, line: 175, column: 5)
!4994 = !DILocation(line: 175, column: 5, scope: !4976)
!4995 = !DILocation(line: 178, column: 30, scope: !4996)
!4996 = distinct !DILexicalBlock(scope: !4993, file: !1010, line: 175, column: 52)
!4997 = !DILocation(line: 178, column: 9, scope: !4996)
!4998 = !DILocation(line: 181, column: 9, scope: !4996)
!4999 = !DILocation(line: 182, column: 25, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !4996, file: !1010, line: 182, column: 12)
!5001 = !DILocation(line: 182, column: 22, scope: !5000)
!5002 = !DILocation(line: 182, column: 12, scope: !4996)
!5003 = distinct !{!5003, !4994, !5004}
!5004 = !DILocation(line: 191, column: 5, scope: !4976)
!5005 = !DILocation(line: 183, column: 13, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !5000, file: !1010, line: 182, column: 37)
!5007 = !DILocation(line: 200, column: 1, scope: !4966)
!5008 = distinct !DISubprogram(name: "gpc_test_hardware_init", scope: !1010, file: !1010, line: 114, type: !5009, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1009, retainedNodes: !5011)
!5009 = !DISubroutineType(types: !5010)
!5010 = !{null, !1221}
!5011 = !{!5012}
!5012 = !DILocalVariable(name: "edge", arg: 1, scope: !5008, file: !1010, line: 114, type: !1221)
!5013 = !DILocation(line: 0, scope: !5008)
!5014 = !DILocation(line: 117, column: 5, scope: !5008)
!5015 = !DILocation(line: 119, column: 5, scope: !5008)
!5016 = !DILocation(line: 121, column: 5, scope: !5008)
!5017 = !DILocation(line: 123, column: 9, scope: !5018)
!5018 = distinct !DILexicalBlock(scope: !5019, file: !1010, line: 122, column: 39)
!5019 = distinct !DILexicalBlock(scope: !5008, file: !1010, line: 122, column: 9)
!5020 = !DILocation(line: 129, column: 5, scope: !5008)
!5021 = !DILocation(line: 130, column: 1, scope: !5008)
!5022 = distinct !DISubprogram(name: "generate_pulse", scope: !1010, file: !1010, line: 138, type: !2355, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1009, retainedNodes: !5023)
!5023 = !{!5024, !5025}
!5024 = !DILocalVariable(name: "count", arg: 1, scope: !5022, file: !1010, line: 138, type: !176)
!5025 = !DILocalVariable(name: "index", scope: !5026, file: !1010, line: 140, type: !176)
!5026 = distinct !DILexicalBlock(scope: !5022, file: !1010, line: 140, column: 5)
!5027 = !DILocation(line: 0, scope: !5022)
!5028 = !DILocation(line: 0, scope: !5026)
!5029 = !DILocation(line: 140, column: 36, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !5026, file: !1010, line: 140, column: 5)
!5031 = !DILocation(line: 140, column: 5, scope: !5026)
!5032 = !DILocation(line: 146, column: 1, scope: !5022)
!5033 = !DILocation(line: 141, column: 9, scope: !5034)
!5034 = distinct !DILexicalBlock(scope: !5030, file: !1010, line: 140, column: 54)
!5035 = !DILocation(line: 142, column: 9, scope: !5034)
!5036 = !DILocation(line: 143, column: 9, scope: !5034)
!5037 = !DILocation(line: 144, column: 9, scope: !5034)
!5038 = !DILocation(line: 140, column: 50, scope: !5030)
!5039 = distinct !{!5039, !5031, !5040}
!5040 = !DILocation(line: 145, column: 5, scope: !5026)
!5041 = distinct !DISubprogram(name: "log_uart_init", scope: !1010, file: !1010, line: 73, type: !75, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1009, retainedNodes: !5042)
!5042 = !{!5043}
!5043 = !DILocalVariable(name: "uart_config", scope: !5041, file: !1010, line: 75, type: !5044)
!5044 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !397, line: 378, baseType: !5045)
!5045 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !397, line: 373, size: 128, elements: !5046)
!5046 = !{!5047, !5048, !5049, !5050}
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !5045, file: !397, line: 374, baseType: !469, size: 32)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !5045, file: !397, line: 375, baseType: !471, size: 32, offset: 32)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !5045, file: !397, line: 376, baseType: !473, size: 32, offset: 64)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !5045, file: !397, line: 377, baseType: !475, size: 32, offset: 96)
!5051 = !DILocation(line: 75, column: 5, scope: !5041)
!5052 = !DILocation(line: 75, column: 23, scope: !5041)
!5053 = !DILocation(line: 77, column: 5, scope: !5041)
!5054 = !DILocation(line: 78, column: 5, scope: !5041)
!5055 = !DILocation(line: 79, column: 5, scope: !5041)
!5056 = !DILocation(line: 80, column: 5, scope: !5041)
!5057 = !DILocation(line: 83, column: 17, scope: !5041)
!5058 = !DILocation(line: 83, column: 26, scope: !5041)
!5059 = !DILocation(line: 84, column: 17, scope: !5041)
!5060 = !DILocation(line: 84, column: 29, scope: !5041)
!5061 = !DILocation(line: 85, column: 17, scope: !5041)
!5062 = !DILocation(line: 85, column: 26, scope: !5041)
!5063 = !DILocation(line: 86, column: 17, scope: !5041)
!5064 = !DILocation(line: 86, column: 24, scope: !5041)
!5065 = !DILocation(line: 87, column: 5, scope: !5041)
!5066 = !DILocation(line: 88, column: 1, scope: !5041)
!5067 = distinct !DISubprogram(name: "SysTick_Set", scope: !504, file: !504, line: 70, type: !4151, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !5068)
!5068 = !{!5069, !5070}
!5069 = !DILocalVariable(name: "ticks", arg: 1, scope: !5067, file: !504, line: 70, type: !176)
!5070 = !DILocalVariable(name: "val", scope: !5067, file: !504, line: 72, type: !176)
!5071 = !DILocation(line: 0, scope: !5067)
!5072 = !DILocation(line: 74, column: 16, scope: !5073)
!5073 = distinct !DILexicalBlock(scope: !5067, file: !504, line: 74, column: 9)
!5074 = !DILocation(line: 74, column: 21, scope: !5073)
!5075 = !DILocation(line: 74, column: 9, scope: !5067)
!5076 = !DILocation(line: 78, column: 20, scope: !5067)
!5077 = !DILocation(line: 80, column: 19, scope: !5067)
!5078 = !DILocation(line: 83, column: 20, scope: !5067)
!5079 = !DILocation(line: 84, column: 20, scope: !5067)
!5080 = !DILocation(line: 86, column: 19, scope: !5067)
!5081 = !DILocation(line: 88, column: 5, scope: !5067)
!5082 = !DILocation(line: 89, column: 1, scope: !5067)
!5083 = distinct !DISubprogram(name: "SysInitStatus_Set", scope: !504, file: !504, line: 98, type: !75, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !1204)
!5084 = !DILocation(line: 100, column: 28, scope: !5083)
!5085 = !DILocation(line: 101, column: 1, scope: !5083)
!5086 = distinct !DISubprogram(name: "SysInitStatus_Query", scope: !504, file: !504, line: 110, type: !1991, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !1204)
!5087 = !DILocation(line: 112, column: 12, scope: !5086)
!5088 = !DILocation(line: 112, column: 5, scope: !5086)
!5089 = distinct !DISubprogram(name: "SystemCoreClockUpdate", scope: !504, file: !504, line: 122, type: !75, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !1204)
!5090 = !DILocation(line: 124, column: 23, scope: !5089)
!5091 = !DILocation(line: 124, column: 21, scope: !5089)
!5092 = !DILocation(line: 125, column: 1, scope: !5089)
!5093 = distinct !DISubprogram(name: "SystemInit", scope: !504, file: !504, line: 136, type: !75, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !1204)
!5094 = !DILocation(line: 140, column: 16, scope: !5093)
!5095 = !DILocation(line: 144, column: 16, scope: !5093)
!5096 = !DILocation(line: 147, column: 16, scope: !5093)
!5097 = !DILocation(line: 150, column: 1, scope: !5093)
!5098 = distinct !DISubprogram(name: "CachePreInit", scope: !504, file: !504, line: 158, type: !75, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !1204)
!5099 = !DILocation(line: 161, column: 22, scope: !5098)
!5100 = !DILocation(line: 164, column: 21, scope: !5098)
!5101 = !DILocation(line: 167, column: 21, scope: !5098)
!5102 = !DILocation(line: 170, column: 29, scope: !5098)
!5103 = !DILocation(line: 171, column: 33, scope: !5098)
!5104 = !DILocation(line: 173, column: 28, scope: !5098)
!5105 = !DILocation(line: 178, column: 30, scope: !5098)
!5106 = !DILocation(line: 192, column: 1, scope: !5098)
!5107 = distinct !DISubprogram(name: "_close", scope: !574, file: !574, line: 11, type: !4930, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !5108)
!5108 = !{!5109}
!5109 = !DILocalVariable(name: "file", arg: 1, scope: !5107, file: !574, line: 11, type: !13)
!5110 = !DILocation(line: 0, scope: !5107)
!5111 = !DILocation(line: 13, column: 5, scope: !5107)
!5112 = distinct !DISubprogram(name: "_fstat", scope: !574, file: !574, line: 16, type: !5113, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !5161)
!5113 = !DISubroutineType(types: !5114)
!5114 = !{!13, !13, !5115}
!5115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5116, size: 32)
!5116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !5117, line: 27, size: 704, elements: !5118)
!5117 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/stat.h", directory: "/home/mjshen/RTOSExploration")
!5118 = !{!5119, !5122, !5125, !5128, !5131, !5134, !5137, !5138, !5141, !5151, !5152, !5153, !5156, !5159}
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !5116, file: !5117, line: 29, baseType: !5120, size: 16)
!5120 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !578, line: 161, baseType: !5121)
!5121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !620, line: 56, baseType: !595)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !5116, file: !5117, line: 30, baseType: !5123, size: 16, offset: 16)
!5123 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !578, line: 139, baseType: !5124)
!5124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !620, line: 75, baseType: !228)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !5116, file: !5117, line: 31, baseType: !5126, size: 32, offset: 32)
!5126 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !578, line: 189, baseType: !5127)
!5127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !620, line: 90, baseType: !178)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !5116, file: !5117, line: 32, baseType: !5129, size: 16, offset: 64)
!5129 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !578, line: 194, baseType: !5130)
!5130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !620, line: 209, baseType: !228)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !5116, file: !5117, line: 33, baseType: !5132, size: 16, offset: 80)
!5132 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !578, line: 165, baseType: !5133)
!5133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !620, line: 60, baseType: !228)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !5116, file: !5117, line: 34, baseType: !5135, size: 16, offset: 96)
!5135 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !578, line: 169, baseType: !5136)
!5136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !620, line: 63, baseType: !228)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !5116, file: !5117, line: 35, baseType: !5120, size: 16, offset: 112)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5116, file: !5117, line: 36, baseType: !5139, size: 32, offset: 128)
!5139 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !578, line: 157, baseType: !5140)
!5140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !620, line: 102, baseType: !638)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !5116, file: !5117, line: 42, baseType: !5142, size: 128, offset: 192)
!5142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !5143, line: 47, size: 128, elements: !5144)
!5143 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timespec.h", directory: "/home/mjshen/RTOSExploration")
!5144 = !{!5145, !5150}
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5142, file: !5143, line: 48, baseType: !5146, size: 64)
!5146 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !5147, line: 42, baseType: !5148)
!5147 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timeval.h", directory: "/home/mjshen/RTOSExploration")
!5148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !179, line: 200, baseType: !5149)
!5149 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5142, file: !5143, line: 49, baseType: !621, size: 32, offset: 64)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !5116, file: !5117, line: 43, baseType: !5142, size: 128, offset: 320)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !5116, file: !5117, line: 44, baseType: !5142, size: 128, offset: 448)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !5116, file: !5117, line: 45, baseType: !5154, size: 32, offset: 576)
!5154 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !578, line: 102, baseType: !5155)
!5155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !620, line: 34, baseType: !621)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !5116, file: !5117, line: 46, baseType: !5157, size: 32, offset: 608)
!5157 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !578, line: 97, baseType: !5158)
!5158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !620, line: 30, baseType: !621)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "st_spare4", scope: !5116, file: !5117, line: 48, baseType: !5160, size: 64, offset: 640)
!5160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 64, elements: !312)
!5161 = !{!5162, !5163}
!5162 = !DILocalVariable(name: "file", arg: 1, scope: !5112, file: !574, line: 16, type: !13)
!5163 = !DILocalVariable(name: "st", arg: 2, scope: !5112, file: !574, line: 16, type: !5115)
!5164 = !DILocation(line: 0, scope: !5112)
!5165 = !DILocation(line: 18, column: 5, scope: !5112)
!5166 = distinct !DISubprogram(name: "_isatty", scope: !574, file: !574, line: 22, type: !4930, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !5167)
!5167 = !{!5168}
!5168 = !DILocalVariable(name: "file", arg: 1, scope: !5166, file: !574, line: 22, type: !13)
!5169 = !DILocation(line: 0, scope: !5166)
!5170 = !DILocation(line: 24, column: 5, scope: !5166)
!5171 = distinct !DISubprogram(name: "_lseek", scope: !574, file: !574, line: 27, type: !5172, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !5174)
!5172 = !DISubroutineType(types: !5173)
!5173 = !{!13, !13, !13, !13}
!5174 = !{!5175, !5176, !5177}
!5175 = !DILocalVariable(name: "file", arg: 1, scope: !5171, file: !574, line: 27, type: !13)
!5176 = !DILocalVariable(name: "ptr", arg: 2, scope: !5171, file: !574, line: 27, type: !13)
!5177 = !DILocalVariable(name: "dir", arg: 3, scope: !5171, file: !574, line: 27, type: !13)
!5178 = !DILocation(line: 0, scope: !5171)
!5179 = !DILocation(line: 29, column: 5, scope: !5171)
!5180 = distinct !DISubprogram(name: "_open", scope: !574, file: !574, line: 32, type: !5181, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !5183)
!5181 = !DISubroutineType(types: !5182)
!5182 = !{!13, !613, !13, !13}
!5183 = !{!5184, !5185, !5186}
!5184 = !DILocalVariable(name: "name", arg: 1, scope: !5180, file: !574, line: 32, type: !613)
!5185 = !DILocalVariable(name: "flags", arg: 2, scope: !5180, file: !574, line: 32, type: !13)
!5186 = !DILocalVariable(name: "mode", arg: 3, scope: !5180, file: !574, line: 32, type: !13)
!5187 = !DILocation(line: 0, scope: !5180)
!5188 = !DILocation(line: 34, column: 5, scope: !5180)
!5189 = distinct !DISubprogram(name: "_read", scope: !574, file: !574, line: 37, type: !5190, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !5192)
!5190 = !DISubroutineType(types: !5191)
!5191 = !{!13, !13, !579, !13}
!5192 = !{!5193, !5194, !5195}
!5193 = !DILocalVariable(name: "file", arg: 1, scope: !5189, file: !574, line: 37, type: !13)
!5194 = !DILocalVariable(name: "ptr", arg: 2, scope: !5189, file: !574, line: 37, type: !579)
!5195 = !DILocalVariable(name: "len", arg: 3, scope: !5189, file: !574, line: 37, type: !13)
!5196 = !DILocation(line: 0, scope: !5189)
!5197 = !DILocation(line: 39, column: 5, scope: !5189)
!5198 = distinct !DISubprogram(name: "_write", scope: !574, file: !574, line: 52, type: !5190, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !5199)
!5199 = !{!5200, !5201, !5202, !5203}
!5200 = !DILocalVariable(name: "file", arg: 1, scope: !5198, file: !574, line: 52, type: !13)
!5201 = !DILocalVariable(name: "ptr", arg: 2, scope: !5198, file: !574, line: 52, type: !579)
!5202 = !DILocalVariable(name: "len", arg: 3, scope: !5198, file: !574, line: 52, type: !13)
!5203 = !DILocalVariable(name: "i", scope: !5198, file: !574, line: 54, type: !13)
!5204 = !DILocation(line: 0, scope: !5198)
!5205 = !DILocation(line: 56, column: 19, scope: !5206)
!5206 = distinct !DILexicalBlock(scope: !5207, file: !574, line: 56, column: 5)
!5207 = distinct !DILexicalBlock(scope: !5198, file: !574, line: 56, column: 5)
!5208 = !DILocation(line: 56, column: 5, scope: !5207)
!5209 = !DILocation(line: 57, column: 26, scope: !5210)
!5210 = distinct !DILexicalBlock(scope: !5206, file: !574, line: 56, column: 31)
!5211 = !DILocation(line: 57, column: 22, scope: !5210)
!5212 = !DILocation(line: 57, column: 9, scope: !5210)
!5213 = !DILocation(line: 56, column: 27, scope: !5206)
!5214 = distinct !{!5214, !5208, !5215}
!5215 = !DILocation(line: 58, column: 5, scope: !5207)
!5216 = !DILocation(line: 60, column: 5, scope: !5198)
!5217 = !DILocation(line: 0, scope: !573)
!5218 = !DILocation(line: 70, column: 5, scope: !573)
!5219 = !{i64 1109}
!5220 = !DILocation(line: 72, column: 14, scope: !5221)
!5221 = distinct !DILexicalBlock(scope: !573, file: !574, line: 72, column: 9)
!5222 = !DILocation(line: 72, column: 11, scope: !5221)
!5223 = !DILocation(line: 72, column: 9, scope: !573)
!5224 = !DILocation(line: 78, column: 32, scope: !5225)
!5225 = distinct !DILexicalBlock(scope: !573, file: !574, line: 78, column: 9)
!5226 = !DILocation(line: 78, column: 15, scope: !5225)
!5227 = !DILocation(line: 89, column: 1, scope: !573)
!5228 = !DILocation(line: 78, column: 9, scope: !573)
!5229 = distinct !DISubprogram(name: "_exit", scope: !574, file: !574, line: 91, type: !723, scopeLine: 92, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !5230)
!5230 = !{!5231}
!5231 = !DILocalVariable(name: "__status", arg: 1, scope: !5229, file: !574, line: 91, type: !13)
!5232 = !DILocation(line: 0, scope: !5229)
!5233 = !DILocation(line: 93, column: 5, scope: !5229)
!5234 = !DILocation(line: 94, column: 5, scope: !5229)
!5235 = distinct !{!5235, !5234, !5236}
!5236 = !DILocation(line: 96, column: 5, scope: !5229)
!5237 = distinct !DISubprogram(name: "_kill", scope: !574, file: !574, line: 100, type: !5238, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !5240)
!5238 = !DISubroutineType(types: !5239)
!5239 = !{!13, !13, !13}
!5240 = !{!5241, !5242}
!5241 = !DILocalVariable(name: "pid", arg: 1, scope: !5237, file: !574, line: 100, type: !13)
!5242 = !DILocalVariable(name: "sig", arg: 2, scope: !5237, file: !574, line: 100, type: !13)
!5243 = !DILocation(line: 0, scope: !5237)
!5244 = !DILocation(line: 102, column: 5, scope: !5237)
!5245 = !DILocation(line: 103, column: 5, scope: !5237)
!5246 = distinct !DISubprogram(name: "_getpid", scope: !574, file: !574, line: 107, type: !5247, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !1204)
!5247 = !DISubroutineType(types: !5248)
!5248 = !{!5249}
!5249 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !578, line: 174, baseType: !5250)
!5250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !620, line: 52, baseType: !13)
!5251 = !DILocation(line: 109, column: 5, scope: !5246)
!5252 = !DILocation(line: 110, column: 5, scope: !5246)
