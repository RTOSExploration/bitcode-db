; ModuleID = './Build/eint_edge_falling.elf.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7em-none-unknown-eabihf"

%struct.gpio_backup_restore_t = type { i32, i32 }
%struct.hal_eint_gpio_map_t = type { i32, i32, i32, i32 }
%struct.hal_eint_callback_context_t = type { i8, void (i8*)*, i8* }
%struct.nvic_function_t = type { void (i32)*, i32 }
%struct.hal_gpt_context_t = type { i32, %struct.hal_gpt_callback_context, i8 }
%struct.hal_gpt_callback_context = type { void (i8*)*, i8* }
%struct.uart_context_t = type { i8, %struct.hal_eint_gpio_map_t, i8, %struct.hal_uart_callback_config_t, i8, %struct.hal_uart_dma_config_t }
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

@g_u4ClkCnt1ms = dso_local local_unnamed_addr global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [37 x i8] c"ASSERT, __FILE__ = %s, __LINE__ = %u\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"../../../../../driver/chip/mt7687/src/common/gpt.c\00", align 1
@GPTTimer.0 = internal unnamed_addr global void ()* null, align 4, !dbg !81
@GPTTimer.1 = internal unnamed_addr global void ()* null, align 4, !dbg !82
@__FUNCTION__.drvGPIO_IDX_EINT_WIC_LISR = private unnamed_addr constant [26 x i8] c"drvGPIO_IDX_EINT_WIC_LISR\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"[Eint]drvGPIO_IDX_EINT_WIC_LISR error, the irq_number=%d\0D\0A\00", align 1
@.str.1.3 = private unnamed_addr constant [61 x i8] c"../../../../../driver/chip/mt7687/src/common/hal_gpio_7687.c\00", align 1
@.str.2.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@LISR.0 = internal unnamed_addr global void (i32)* null, align 4, !dbg !83
@__FUNCTION__.halRegGPInterrupt = private unnamed_addr constant [18 x i8] c"halRegGPInterrupt\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"[Eint]halRegGPInterrupt error, the padname=%d\0D\0A\00", align 1
@__FUNCTION__.halRegGPInterrupt_set_triggermode = private unnamed_addr constant [34 x i8] c"halRegGPInterrupt_set_triggermode\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"[Eint]halRegGPInterrupt_set_triggermode error, the padname=%d\0D\0A\00", align 1
@__FUNCTION__.halRegGPInterrupt_set_debounce = private unnamed_addr constant [31 x i8] c"halRegGPInterrupt_set_debounce\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"[Eint]halRegGPInterrupt_set_debounce error, the padname=%d\0D\0A\00", align 1
@__FUNCTION__.halRegGPInterrupt_mask = private unnamed_addr constant [23 x i8] c"halRegGPInterrupt_mask\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"[Eint]halRegGPInterrupt_mask error, the padname=%d\0D\0A\00", align 1
@__FUNCTION__.halRegGPInterrupt_unmask = private unnamed_addr constant [25 x i8] c"halRegGPInterrupt_unmask\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"[Eint]halRegGPInterrupt_unmask error, the padname=%d\0D\0A\00", align 1
@__FUNCTION__.halRegGP_set_software_trigger = private unnamed_addr constant [30 x i8] c"halRegGP_set_software_trigger\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"[Eint]halRegGP_set_software_trigger error, the padname=%d\0D\0A\00", align 1
@__FUNCTION__.halRegGP_clear_software_trigger = private unnamed_addr constant [32 x i8] c"halRegGP_clear_software_trigger\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"[Eint]halRegGP_clear_software_trigger error, the padname=%d\0D\0A\00", align 1
@gpio_bakup_table = internal unnamed_addr global [22 x %struct.gpio_backup_restore_t] [%struct.gpio_backup_restore_t { i32 0, i32 -2097106944 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106928 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106912 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106896 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106880 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106864 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106848 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106832 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106816 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106800 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106784 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106768 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106736 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106732 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106728 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106724 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106720 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106704 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106700 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106688 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106684 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106680 }], align 4, !dbg !322
@gXtalFreq = internal unnamed_addr global i32 0, align 4, !dbg !368
@gCpuFrequency = internal unnamed_addr global i32 0, align 4, !dbg !378
@switch.table.top_xtal_init = private unnamed_addr constant [8 x i32] [i32 20000000, i32 40000000, i32 26000000, i32 52000000, i32 40000000, i32 40000000, i32 40000000, i32 40000000], align 4
@switch.table.top_xtal_init.1 = private unnamed_addr constant [8 x i32] [i32 16, i32 512, i32 64, i32 1024, i32 512, i32 512, i32 512, i32 512], align 4
@__const.halUART_SetFormat.fraction_L_mapping = private unnamed_addr constant [11 x i16] [i16 0, i16 16, i16 68, i16 146, i16 41, i16 170, i16 182, i16 219, i16 173, i16 255, i16 255], align 2
@__const.halUART_SetFormat.fraction_M_mapping = private unnamed_addr constant [11 x i16] [i16 0, i16 0, i16 0, i16 0, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 3], align 2
@gUartClkFreq = dso_local local_unnamed_addr global i32 0, align 4, !dbg !380
@eint_gpio_table = dso_local local_unnamed_addr constant [23 x %struct.hal_eint_gpio_map_t] [%struct.hal_eint_gpio_map_t { i32 0, i32 0, i32 56, i32 5 }, %struct.hal_eint_gpio_map_t { i32 1, i32 1, i32 57, i32 5 }, %struct.hal_eint_gpio_map_t { i32 2, i32 3, i32 58, i32 5 }, %struct.hal_eint_gpio_map_t { i32 3, i32 4, i32 59, i32 5 }, %struct.hal_eint_gpio_map_t { i32 4, i32 5, i32 60, i32 5 }, %struct.hal_eint_gpio_map_t { i32 5, i32 6, i32 61, i32 5 }, %struct.hal_eint_gpio_map_t { i32 6, i32 7, i32 62, i32 5 }, %struct.hal_eint_gpio_map_t { i32 19, i32 35, i32 75, i32 5 }, %struct.hal_eint_gpio_map_t { i32 20, i32 37, i32 76, i32 5 }, %struct.hal_eint_gpio_map_t { i32 21, i32 38, i32 77, i32 5 }, %struct.hal_eint_gpio_map_t { i32 22, i32 39, i32 78, i32 5 }, %struct.hal_eint_gpio_map_t { i32 32, i32 2, i32 32, i32 5 }, %struct.hal_eint_gpio_map_t { i32 33, i32 25, i32 33, i32 5 }, %struct.hal_eint_gpio_map_t { i32 34, i32 27, i32 34, i32 5 }, %struct.hal_eint_gpio_map_t { i32 35, i32 29, i32 35, i32 5 }, %struct.hal_eint_gpio_map_t { i32 36, i32 32, i32 36, i32 5 }, %struct.hal_eint_gpio_map_t { i32 37, i32 33, i32 37, i32 5 }, %struct.hal_eint_gpio_map_t { i32 38, i32 34, i32 38, i32 5 }, %struct.hal_eint_gpio_map_t { i32 39, i32 36, i32 39, i32 5 }, %struct.hal_eint_gpio_map_t { i32 40, i32 57, i32 40, i32 5 }, %struct.hal_eint_gpio_map_t { i32 41, i32 58, i32 41, i32 5 }, %struct.hal_eint_gpio_map_t { i32 42, i32 59, i32 42, i32 5 }, %struct.hal_eint_gpio_map_t { i32 43, i32 60, i32 43, i32 5 }], align 4, !dbg !417
@hal_eint_count_max = dso_local local_unnamed_addr constant i32 23, align 4, !dbg !467
@__FUNCTION__.hal_eint_mask = private unnamed_addr constant [14 x i8] c"hal_eint_mask\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"hal_eint_convert_for_gpio fail.\00", align 1
@is_eint_masked = internal unnamed_addr global [23 x i32] zeroinitializer, align 4, !dbg !489
@__FUNCTION__.hal_eint_unmask = private unnamed_addr constant [16 x i8] c"hal_eint_unmask\00", align 1
@__FUNCTION__.hal_eint_init = private unnamed_addr constant [14 x i8] c"hal_eint_init\00", align 1
@.str.1.18 = private unnamed_addr constant [21 x i8] c"eint_config is NULL.\00", align 1
@is_eint_callback_registered = internal unnamed_addr global [23 x i32] zeroinitializer, align 4, !dbg !486
@g_eint_callback_context = internal global [23 x %struct.hal_eint_callback_context_t] zeroinitializer, align 4, !dbg !470
@__FUNCTION__.hal_eint_deinit = private unnamed_addr constant [16 x i8] c"hal_eint_deinit\00", align 1
@__FUNCTION__.hal_eint_register_callback = private unnamed_addr constant [27 x i8] c"hal_eint_register_callback\00", align 1
@__FUNCTION__.hal_eint_set_trigger_mode = private unnamed_addr constant [26 x i8] c"hal_eint_set_trigger_mode\00", align 1
@__FUNCTION__.hal_eint_set_debounce_count = private unnamed_addr constant [28 x i8] c"hal_eint_set_debounce_count\00", align 1
@__FUNCTION__.hal_eint_set_debounce_time = private unnamed_addr constant [27 x i8] c"hal_eint_set_debounce_time\00", align 1
@__FUNCTION__.hal_eint_set_software_trigger = private unnamed_addr constant [30 x i8] c"hal_eint_set_software_trigger\00", align 1
@__FUNCTION__.hal_eint_clear_software_trigger = private unnamed_addr constant [32 x i8] c"hal_eint_clear_software_trigger\00", align 1
@__FUNCTION__.hal_eint_apply_config = private unnamed_addr constant [22 x i8] c"hal_eint_apply_config\00", align 1
@.str.2.19 = private unnamed_addr constant [35 x i8] c"hal_eint_init: debounce disable.\0D\0A\00", align 1
@switch.table.hal_eint_apply_config = private unnamed_addr constant [5 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0], align 4
@switch.table.hal_eint_set_trigger_mode = private unnamed_addr constant [5 x i32] [i32 1, i32 1, i32 0, i32 0, i32 1], align 4
@switch.table.hal_eint_set_trigger_mode.5 = private unnamed_addr constant [5 x i32] [i32 1, i32 0, i32 1, i32 0, i32 0], align 4
@switch.table.hal_eint_set_trigger_mode.6 = private unnamed_addr constant [5 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1], align 4
@nvic_function_table = dso_local local_unnamed_addr global [96 x %struct.nvic_function_t] zeroinitializer, align 4, !dbg !501
@__FUNCTION__.isrC_main = private unnamed_addr constant [10 x i8] c"isrC_main\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"ERROR: no IRQ handler! \0A\00", align 1
@g_gpt_context = internal global [5 x %struct.hal_gpt_context_t] zeroinitializer, align 4, !dbg !570
@__FUNCTION__.hal_gpt_init = private unnamed_addr constant [13 x i8] c"hal_gpt_init\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"Invalid port: %d.\00", align 1
@__FUNCTION__.hal_gpt_deinit = private unnamed_addr constant [15 x i8] c"hal_gpt_deinit\00", align 1
@.str.1.36 = private unnamed_addr constant [23 x i8] c"Should call  port: %d.\00", align 1
@__FUNCTION__.hal_gpt_get_free_run_count = private unnamed_addr constant [27 x i8] c"hal_gpt_get_free_run_count\00", align 1
@.str.2.37 = private unnamed_addr constant [23 x i8] c"Invalid parameter: %d.\00", align 1
@__FUNCTION__.hal_gpt_get_running_status = private unnamed_addr constant [27 x i8] c"hal_gpt_get_running_status\00", align 1
@.str.3.38 = private unnamed_addr constant [45 x i8] c"Invalid hal_gpt_stop_timer to stop port: %d.\00", align 1
@__FUNCTION__.hal_gpt_register_callback = private unnamed_addr constant [26 x i8] c"hal_gpt_register_callback\00", align 1
@.str.4.39 = private unnamed_addr constant [51 x i8] c"Invalid port: %d. Only port 0 or 1 works as timer.\00", align 1
@__FUNCTION__.hal_gpt_start_timer_ms = private unnamed_addr constant [23 x i8] c"hal_gpt_start_timer_ms\00", align 1
@__FUNCTION__.hal_gpt_stop_timer = private unnamed_addr constant [19 x i8] c"hal_gpt_stop_timer\00", align 1
@g_uart_context_table = internal global [2 x %struct.uart_context_t] zeroinitializer, align 4, !dbg !619
@hal_uart_map_receive_callback.func_tbl = internal unnamed_addr constant [2 x void ()*] [void ()* @hal_uart_receive_callback0, void ()* @hal_uart_receive_callback1], align 4, !dbg !676
@__const.hal_uart_translate_baudrate.baudrate_tbl = private unnamed_addr constant [13 x i32] [i32 110, i32 300, i32 1200, i32 2400, i32 4800, i32 9600, i32 19200, i32 38400, i32 57600, i32 115200, i32 230400, i32 460800, i32 921600], align 4
@__const.hal_uart_translate_word_length.databit_tbl = private unnamed_addr constant [4 x i16] [i16 0, i16 1, i16 2, i16 3], align 2
@__const.hal_uart_translate_parity.parity_tbl = private unnamed_addr constant [5 x i16] [i16 0, i16 8, i16 24, i16 0, i16 0], align 2
@__const.hal_uart_translate_stopbit.stopbit_tbl = private unnamed_addr constant [3 x i16] [i16 0, i16 4, i16 4], align 2
@.str.42 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.1.43 = private unnamed_addr constant [20 x i8] c"welcome to main()\0D\0A\00", align 1
@.str.2.44 = private unnamed_addr constant [34 x i8] c"pls add your own code from here\0D\0A\00", align 1
@.str.3.45 = private unnamed_addr constant [30 x i8] c"\0D\0A ---eint_example begin---\0D\0A\00", align 1
@.str.4.46 = private unnamed_addr constant [36 x i8] c"\0D\0A ---eint_example finished!!!---\0D\0A\00", align 1
@.str.5.47 = private unnamed_addr constant [25 x i8] c"\0D\0A Received eint: %d !\0D\0A\00", align 1
@SystemCoreClock = dso_local local_unnamed_addr global i32 40000000, align 4, !dbg !729
@System_Initialize_Done = internal global i32 0, align 4, !dbg !797
@_sbrk_r.heap_end = internal unnamed_addr global i8* null, align 4, !dbg !799
@end = external dso_local global i8, align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"_exit\0A\00", align 1
@.str.1.55 = private unnamed_addr constant [10 x i8] c"_kill %d\0A\00", align 1
@.str.2.56 = private unnamed_addr constant [9 x i8] c"_getpid\0A\00", align 1
@build_date_time_str = dso_local local_unnamed_addr global [31 x i8] c"2022/12/13 07:54:11 GMT +00:00\00", align 1, !dbg !1008
@sw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"SDK_V4.6.1\00", align 1, !dbg !1013
@hw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"mt7687_hdk\00", align 1, !dbg !1019

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_ResetTimer(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 !dbg !1163 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1167, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i32 %1, metadata !1168, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.value(metadata i1 %2, metadata !1169, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1170
  %4 = icmp ugt i32 %0, 1, !dbg !1171
  br i1 %4, label %5, label %8, !dbg !1173

5:                                                ; preds = %3
  %6 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 75) #15, !dbg !1174
  br label %7, !dbg !1174

7:                                                ; preds = %5, %7
  br label %7, !dbg !1174, !llvm.loop !1176

8:                                                ; preds = %3
  switch i32 %0, label %21 [
    i32 0, label %9
    i32 1, label %15
  ], !dbg !1177

9:                                                ; preds = %8
  store volatile i32 %1, i32* inttoptr (i32 -2096824300 to i32*), align 4, !dbg !1178
  %10 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1181
  br i1 %2, label %11, label %13, !dbg !1183

11:                                               ; preds = %9
  %12 = or i32 %10, 2, !dbg !1184
  store volatile i32 %12, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1184
  br label %21, !dbg !1186

13:                                               ; preds = %9
  %14 = and i32 %10, -3, !dbg !1187
  store volatile i32 %14, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1187
  br label %21

15:                                               ; preds = %8
  store volatile i32 %1, i32* inttoptr (i32 -2096824284 to i32*), align 4, !dbg !1189
  %16 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1192
  br i1 %2, label %17, label %19, !dbg !1194

17:                                               ; preds = %15
  %18 = or i32 %16, 2, !dbg !1195
  store volatile i32 %18, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1195
  br label %21, !dbg !1197

19:                                               ; preds = %15
  %20 = and i32 %16, -3, !dbg !1198
  store volatile i32 %20, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1198
  br label %21

21:                                               ; preds = %8, %19, %17, %11, %13
  ret void, !dbg !1200
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_Start(i32 noundef %0) local_unnamed_addr #0 !dbg !1201 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1205, metadata !DIExpression()), !dbg !1206
  switch i32 %0, label %2 [
    i32 0, label %5
    i32 1, label %9
    i32 4, label %13
  ], !dbg !1207

2:                                                ; preds = %1
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 96) #15, !dbg !1208
  br label %4, !dbg !1208

4:                                                ; preds = %2, %4
  br label %4, !dbg !1208, !llvm.loop !1211

5:                                                ; preds = %1
  %6 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1212
  %7 = or i32 %6, 1, !dbg !1212
  store volatile i32 %7, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1212
  %8 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #15, !dbg !1215
  br label %16, !dbg !1216

9:                                                ; preds = %1
  %10 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1217
  %11 = or i32 %10, 1, !dbg !1217
  store volatile i32 %11, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1217
  %12 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #15, !dbg !1220
  br label %16, !dbg !1221

13:                                               ; preds = %1
  %14 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1222
  %15 = or i32 %14, 1, !dbg !1222
  store volatile i32 %15, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1222
  br label %16, !dbg !1225

16:                                               ; preds = %9, %13, %5
  ret void, !dbg !1226
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @GPT_Stop(i32 noundef %0) local_unnamed_addr #3 !dbg !1227 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1229, metadata !DIExpression()), !dbg !1230
  switch i32 %0, label %18 [
    i32 0, label %2
    i32 1, label %7
    i32 2, label %12
    i32 4, label %15
  ], !dbg !1231

2:                                                ; preds = %1
  %3 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1232
  %4 = and i32 %3, -2, !dbg !1232
  store volatile i32 %4, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1232
  %5 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1235
  %6 = and i32 %5, -2, !dbg !1235
  store volatile i32 %6, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1235
  store volatile i32 1, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1236
  br label %18, !dbg !1237

7:                                                ; preds = %1
  %8 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1238
  %9 = and i32 %8, -3, !dbg !1238
  store volatile i32 %9, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1238
  %10 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1241
  %11 = and i32 %10, -2, !dbg !1241
  store volatile i32 %11, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1241
  store volatile i32 2, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1242
  br label %18, !dbg !1243

12:                                               ; preds = %1
  %13 = load volatile i32, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1244
  %14 = and i32 %13, -2, !dbg !1244
  store volatile i32 %14, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1244
  br label %18, !dbg !1247

15:                                               ; preds = %1
  %16 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1248
  %17 = and i32 %16, -2, !dbg !1248
  store volatile i32 %17, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1248
  br label %18, !dbg !1251

18:                                               ; preds = %1, %7, %15, %12, %2
  ret void, !dbg !1252
}

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_INT_Handler(i32 %0) #0 !dbg !1253 {
  call void @llvm.dbg.value(metadata i32 undef, metadata !1255, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata i32 undef, metadata !1255, metadata !DIExpression()), !dbg !1257
  %2 = load volatile i32, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1258
  %3 = and i32 %2, 65535, !dbg !1259
  call void @llvm.dbg.value(metadata i32 %2, metadata !1256, metadata !DIExpression()), !dbg !1257
  store volatile i32 %3, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1260
  %4 = and i32 %2, 1, !dbg !1261
  %5 = icmp eq i32 %4, 0, !dbg !1261
  br i1 %5, label %6, label %9, !dbg !1263

6:                                                ; preds = %1
  %7 = and i32 %2, 2, !dbg !1264
  %8 = icmp eq i32 %7, 0, !dbg !1264
  br i1 %8, label %13, label %9, !dbg !1266

9:                                                ; preds = %6, %1
  %10 = phi i32 [ 0, %1 ], [ 1, %6 ]
  %11 = phi void ()** [ @GPTTimer.0, %1 ], [ @GPTTimer.1, %6 ]
  tail call void @clear_TMR_INT_status_bit(i32 noundef %10) #15, !dbg !1267
  %12 = load void ()*, void ()** %11, align 4, !dbg !1267
  tail call void %12() #15, !dbg !1267
  br label %13, !dbg !1268

13:                                               ; preds = %9, %6
  ret void, !dbg !1268
}

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_init(i32 noundef %0, i32 noundef %1, void ()* noundef %2) local_unnamed_addr #0 !dbg !1269 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1273, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.value(metadata i32 %1, metadata !1274, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.value(metadata void ()* %2, metadata !1275, metadata !DIExpression()), !dbg !1276
  switch i32 %0, label %4 [
    i32 4, label %7
    i32 2, label %7
    i32 1, label %7
    i32 0, label %7
  ], !dbg !1277

4:                                                ; preds = %3
  %5 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 149) #15, !dbg !1278
  br label %6, !dbg !1278

6:                                                ; preds = %4, %6
  br label %6, !dbg !1278, !llvm.loop !1281

7:                                                ; preds = %3, %3, %3, %3
  %8 = icmp ult i32 %0, 2, !dbg !1282
  br i1 %8, label %9, label %13, !dbg !1283

9:                                                ; preds = %7
  %10 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 24, void (i32)* noundef nonnull @GPT_INT_Handler) #15, !dbg !1285
  %11 = tail call i32 @hal_nvic_set_priority(i32 noundef 24, i32 noundef 5) #15, !dbg !1287
  %12 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #15, !dbg !1288
  br label %13, !dbg !1289

13:                                               ; preds = %7, %9
  switch i32 %0, label %36 [
    i32 0, label %14
    i32 1, label %20
    i32 2, label %26
    i32 4, label %31
  ], !dbg !1290

14:                                               ; preds = %13
  store void ()* %2, void ()** @GPTTimer.0, align 4, !dbg !1291
  %15 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1294
  %16 = or i32 %15, 1, !dbg !1294
  store volatile i32 %16, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1294
  %17 = shl i32 %1, 2, !dbg !1295
  %18 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1296
  %19 = or i32 %18, %17, !dbg !1296
  store volatile i32 %19, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1296
  br label %36, !dbg !1297

20:                                               ; preds = %13
  store void ()* %2, void ()** @GPTTimer.1, align 4, !dbg !1298
  %21 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1301
  %22 = or i32 %21, 2, !dbg !1301
  store volatile i32 %22, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1301
  %23 = shl i32 %1, 2, !dbg !1302
  %24 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1303
  %25 = or i32 %24, %23, !dbg !1303
  store volatile i32 %25, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1303
  br label %36, !dbg !1304

26:                                               ; preds = %13
  %27 = shl i32 %1, 1, !dbg !1305
  %28 = or i32 %27, 1, !dbg !1308
  %29 = load volatile i32, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1309
  %30 = or i32 %29, %28, !dbg !1309
  store volatile i32 %30, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1309
  br label %36, !dbg !1310

31:                                               ; preds = %13
  %32 = shl i32 %1, 1, !dbg !1311
  %33 = or i32 %32, 1, !dbg !1314
  %34 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1315
  %35 = or i32 %34, %33, !dbg !1315
  store volatile i32 %35, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1315
  store volatile i32 0, i32* inttoptr (i32 -2096824220 to i32*), align 4, !dbg !1316
  br label %36, !dbg !1317

36:                                               ; preds = %13, %20, %31, %26, %14
  ret void, !dbg !1318
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @GPT_return_current_count(i32 noundef %0) local_unnamed_addr #0 !dbg !1319 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1323, metadata !DIExpression()), !dbg !1325
  switch i32 %0, label %2 [
    i32 0, label %8
    i32 1, label %5
    i32 2, label %6
    i32 4, label %7
  ], !dbg !1326

2:                                                ; preds = %1
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 177) #15, !dbg !1327
  br label %4, !dbg !1327

4:                                                ; preds = %4, %2
  br label %4, !dbg !1327, !llvm.loop !1330

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !1324, metadata !DIExpression()), !dbg !1325
  br label %8, !dbg !1331

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !1324, metadata !DIExpression()), !dbg !1325
  br label %8, !dbg !1335

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !1324, metadata !DIExpression()), !dbg !1325
  br label %8, !dbg !1338

8:                                                ; preds = %1, %5, %7, %6
  %9 = phi i32* [ inttoptr (i32 -2096824252 to i32*), %5 ], [ inttoptr (i32 -2096824268 to i32*), %6 ], [ inttoptr (i32 -2096824216 to i32*), %7 ], [ inttoptr (i32 -2096824256 to i32*), %1 ]
  %10 = load volatile i32, i32* %9, align 4, !dbg !1341
  call void @llvm.dbg.value(metadata i32 %10, metadata !1324, metadata !DIExpression()), !dbg !1325
  ret i32 %10, !dbg !1342
}

; Function Attrs: noinline nounwind optsize
define dso_local void @CM4_GPT2Init() local_unnamed_addr #0 !dbg !1343 {
  tail call void @GPT_init(i32 noundef 2, i32 noundef 1, void ()* noundef null) #16, !dbg !1345
  ret void, !dbg !1346
}

; Function Attrs: noinline nounwind optsize
define dso_local void @CM4_GPT4Init() local_unnamed_addr #0 !dbg !1347 {
  tail call void @GPT_init(i32 noundef 4, i32 noundef 1, void ()* noundef null) #16, !dbg !1348
  ret void, !dbg !1349
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_ConfDirection(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1350 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1355, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i8 %1, metadata !1356, metadata !DIExpression()), !dbg !1360
  %3 = lshr i32 %0, 5, !dbg !1361
  call void @llvm.dbg.value(metadata i32 %3, metadata !1357, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1360
  %4 = trunc i32 %0 to i16, !dbg !1362
  %5 = and i16 %4, 31, !dbg !1362
  call void @llvm.dbg.value(metadata i16 %4, metadata !1359, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1360
  %6 = trunc i32 %3 to i16, !dbg !1363
  switch i16 %6, label %97 [
    i16 0, label %7
    i16 1, label %70
  ], !dbg !1363

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 1, !dbg !1364
  %9 = zext i16 %5 to i32, !dbg !1367
  %10 = icmp ult i16 %5, 27, !dbg !1367
  br i1 %8, label %11, label %46, !dbg !1368

11:                                               ; preds = %7
  br i1 %10, label %12, label %17, !dbg !1369

12:                                               ; preds = %11
  %13 = shl nuw i32 1, %9, !dbg !1371
  %14 = xor i32 %13, -1, !dbg !1374
  %15 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1375
  %16 = and i32 %15, %14, !dbg !1375
  store volatile i32 %16, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1375
  br label %44, !dbg !1376

17:                                               ; preds = %11
  %18 = trunc i32 %0 to i5, !dbg !1377
  switch i5 %18, label %39 [
    i5 -5, label %19
    i5 -4, label %24
    i5 -3, label %29
    i5 -2, label %34
  ], !dbg !1377

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1378
  %21 = and i32 %20, -3, !dbg !1378
  store volatile i32 %21, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1378
  %22 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1381
  %23 = or i32 %22, 2048, !dbg !1381
  store volatile i32 %23, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1381
  br label %44, !dbg !1382

24:                                               ; preds = %17
  %25 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1383
  %26 = and i32 %25, -3, !dbg !1383
  store volatile i32 %26, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1383
  %27 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1386
  %28 = or i32 %27, 2048, !dbg !1386
  store volatile i32 %28, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1386
  br label %44, !dbg !1387

29:                                               ; preds = %17
  %30 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1388
  %31 = and i32 %30, -3, !dbg !1388
  store volatile i32 %31, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1388
  %32 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1391
  %33 = or i32 %32, 2048, !dbg !1391
  store volatile i32 %33, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1391
  br label %44, !dbg !1392

34:                                               ; preds = %17
  %35 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1393
  %36 = and i32 %35, -3, !dbg !1393
  store volatile i32 %36, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1393
  %37 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1396
  %38 = or i32 %37, 2048, !dbg !1396
  store volatile i32 %38, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1396
  br label %44, !dbg !1397

39:                                               ; preds = %17
  %40 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1398
  %41 = and i32 %40, -3, !dbg !1398
  store volatile i32 %41, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1398
  %42 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1401
  %43 = or i32 %42, 2048, !dbg !1401
  store volatile i32 %43, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1401
  br label %44, !dbg !1402

44:                                               ; preds = %19, %29, %39, %34, %24, %12
  %45 = shl nuw i32 1, %9, !dbg !1403
  store volatile i32 %45, i32* inttoptr (i32 -2097106796 to i32*), align 4, !dbg !1403
  br label %97, !dbg !1404

46:                                               ; preds = %7
  br i1 %10, label %47, label %51, !dbg !1405

47:                                               ; preds = %46
  %48 = shl nuw i32 1, %9, !dbg !1407
  %49 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1410
  %50 = or i32 %49, %48, !dbg !1410
  store volatile i32 %50, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1410
  br label %68, !dbg !1411

51:                                               ; preds = %46
  %52 = trunc i32 %0 to i5, !dbg !1412
  switch i5 %52, label %65 [
    i5 -5, label %53
    i5 -4, label %56
    i5 -3, label %59
    i5 -2, label %62
  ], !dbg !1412

53:                                               ; preds = %51
  %54 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1413
  %55 = or i32 %54, 2050, !dbg !1413
  store volatile i32 %55, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1413
  br label %68, !dbg !1416

56:                                               ; preds = %51
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1417
  %58 = or i32 %57, 2050, !dbg !1417
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1417
  br label %68, !dbg !1420

59:                                               ; preds = %51
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1421
  %61 = or i32 %60, 2050, !dbg !1421
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1421
  br label %68, !dbg !1424

62:                                               ; preds = %51
  %63 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1425
  %64 = or i32 %63, 2050, !dbg !1425
  store volatile i32 %64, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1425
  br label %68, !dbg !1428

65:                                               ; preds = %51
  %66 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1429
  %67 = or i32 %66, 2050, !dbg !1429
  store volatile i32 %67, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1429
  br label %68, !dbg !1432

68:                                               ; preds = %53, %59, %65, %62, %56, %47
  %69 = shl nuw i32 1, %9, !dbg !1433
  store volatile i32 %69, i32* inttoptr (i32 -2097106792 to i32*), align 8, !dbg !1433
  br label %97

70:                                               ; preds = %2
  %71 = icmp eq i8 %1, 1, !dbg !1434
  %72 = zext i16 %5 to i32, !dbg !1436
  %73 = icmp eq i16 %5, 0, !dbg !1436
  br i1 %71, label %74, label %87, !dbg !1437

74:                                               ; preds = %70
  br i1 %73, label %80, label %75, !dbg !1438

75:                                               ; preds = %74
  %76 = shl nuw i32 1, %72, !dbg !1440
  %77 = xor i32 %76, -1, !dbg !1443
  %78 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1444
  %79 = and i32 %78, %77, !dbg !1444
  store volatile i32 %79, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1444
  br label %85, !dbg !1445

80:                                               ; preds = %74
  %81 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1446
  %82 = and i32 %81, -3, !dbg !1446
  store volatile i32 %82, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1446
  %83 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1448
  %84 = or i32 %83, 2048, !dbg !1448
  store volatile i32 %84, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1448
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i32 [ 1, %80 ], [ %76, %75 ], !dbg !1449
  store volatile i32 %86, i32* inttoptr (i32 -2097106780 to i32*), align 4, !dbg !1449
  br label %97, !dbg !1450

87:                                               ; preds = %70
  br i1 %73, label %92, label %88, !dbg !1451

88:                                               ; preds = %87
  %89 = shl nuw i32 1, %72, !dbg !1453
  %90 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1456
  %91 = or i32 %90, %89, !dbg !1456
  store volatile i32 %91, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1456
  br label %95, !dbg !1457

92:                                               ; preds = %87
  %93 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1458
  %94 = or i32 %93, 2050, !dbg !1458
  store volatile i32 %94, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1458
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi i32 [ 1, %92 ], [ %89, %88 ], !dbg !1460
  store volatile i32 %96, i32* inttoptr (i32 -2097106776 to i32*), align 8, !dbg !1460
  br label %97

97:                                               ; preds = %68, %44, %95, %85, %2
  %98 = phi i32 [ -1, %2 ], [ 0, %85 ], [ 0, %95 ], [ 0, %44 ], [ 0, %68 ], !dbg !1360
  ret i32 %98, !dbg !1461
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPO_Write(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1462 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1464, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i8 %1, metadata !1465, metadata !DIExpression()), !dbg !1468
  %3 = lshr i32 %0, 5, !dbg !1469
  call void @llvm.dbg.value(metadata i32 %3, metadata !1466, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1468
  %4 = trunc i32 %0 to i16, !dbg !1470
  %5 = and i16 %4, 31, !dbg !1470
  call void @llvm.dbg.value(metadata i16 %5, metadata !1467, metadata !DIExpression()), !dbg !1468
  %6 = trunc i32 %3 to i16, !dbg !1471
  switch i16 %6, label %19 [
    i16 0, label %7
    i16 1, label %13
  ], !dbg !1471

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 0, !dbg !1472
  %9 = zext i16 %5 to i32, !dbg !1475
  %10 = shl nuw i32 1, %9, !dbg !1475
  br i1 %8, label %12, label %11, !dbg !1476

11:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106844 to i32*), align 4, !dbg !1477
  br label %19, !dbg !1479

12:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106840 to i32*), align 8, !dbg !1480
  br label %19

13:                                               ; preds = %2
  %14 = icmp eq i8 %1, 0, !dbg !1482
  %15 = zext i16 %5 to i32, !dbg !1484
  %16 = shl nuw i32 1, %15, !dbg !1484
  br i1 %14, label %18, label %17, !dbg !1485

17:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106828 to i32*), align 4, !dbg !1486
  br label %19, !dbg !1488

18:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106824 to i32*), align 8, !dbg !1489
  br label %19

19:                                               ; preds = %12, %11, %18, %17, %2
  %20 = phi i32 [ -1, %2 ], [ 0, %17 ], [ 0, %18 ], [ 0, %11 ], [ 0, %12 ], !dbg !1468
  ret i32 %20, !dbg !1491
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DOUT(i32 noundef %0) local_unnamed_addr #4 !dbg !1492 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1496, metadata !DIExpression()), !dbg !1500
  %2 = lshr i32 %0, 5, !dbg !1501
  call void @llvm.dbg.value(metadata i32 %2, metadata !1497, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1500
  %3 = and i32 %0, 31, !dbg !1502
  call void @llvm.dbg.value(metadata i32 %0, metadata !1498, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1500
  call void @llvm.dbg.value(metadata i8 0, metadata !1499, metadata !DIExpression()), !dbg !1500
  %4 = trunc i32 %2 to i16, !dbg !1503
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1503

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1499, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1500
  br label %6, !dbg !1504

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106832 to i32*), %5 ], [ inttoptr (i32 -2097106848 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1506
  %9 = lshr i32 %8, %3, !dbg !1506
  %10 = trunc i32 %9 to i8, !dbg !1506
  %11 = and i8 %10, 1, !dbg !1506
  call void @llvm.dbg.value(metadata i8 %11, metadata !1499, metadata !DIExpression()), !dbg !1500
  br label %12, !dbg !1507

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1500
  ret i8 %13, !dbg !1508
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DIN(i32 noundef %0) local_unnamed_addr #4 !dbg !1509 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1511, metadata !DIExpression()), !dbg !1515
  %2 = lshr i32 %0, 5, !dbg !1516
  call void @llvm.dbg.value(metadata i32 %2, metadata !1512, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1515
  %3 = and i32 %0, 31, !dbg !1517
  call void @llvm.dbg.value(metadata i32 %0, metadata !1513, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1515
  call void @llvm.dbg.value(metadata i8 0, metadata !1514, metadata !DIExpression()), !dbg !1515
  %4 = trunc i32 %2 to i16, !dbg !1518
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1518

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1514, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1515
  br label %6, !dbg !1519

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106748 to i32*), %5 ], [ inttoptr (i32 -2097106752 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 4, !dbg !1521
  %9 = lshr i32 %8, %3, !dbg !1521
  %10 = trunc i32 %9 to i8, !dbg !1521
  %11 = and i8 %10, 1, !dbg !1521
  call void @llvm.dbg.value(metadata i8 %11, metadata !1514, metadata !DIExpression()), !dbg !1515
  br label %12, !dbg !1522

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1515
  ret i8 %13, !dbg !1523
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_OutEnable(i32 noundef %0) local_unnamed_addr #4 !dbg !1524 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1526, metadata !DIExpression()), !dbg !1530
  %2 = lshr i32 %0, 5, !dbg !1531
  call void @llvm.dbg.value(metadata i32 %2, metadata !1527, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1530
  %3 = and i32 %0, 31, !dbg !1532
  call void @llvm.dbg.value(metadata i32 %0, metadata !1528, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1530
  call void @llvm.dbg.value(metadata i8 0, metadata !1529, metadata !DIExpression()), !dbg !1530
  %4 = trunc i32 %2 to i16, !dbg !1533
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1533

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1529, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1530
  br label %6, !dbg !1534

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106784 to i32*), %5 ], [ inttoptr (i32 -2097106800 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1536
  %9 = lshr i32 %8, %3, !dbg !1536
  %10 = trunc i32 %9 to i8, !dbg !1536
  %11 = and i8 %10, 1, !dbg !1536
  call void @llvm.dbg.value(metadata i8 %11, metadata !1529, metadata !DIExpression()), !dbg !1530
  br label %12, !dbg !1537

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1530
  ret i8 %13, !dbg !1538
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_SET(i32 noundef %0) local_unnamed_addr #3 !dbg !1539 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1543, metadata !DIExpression()), !dbg !1546
  %2 = lshr i32 %0, 5, !dbg !1547
  call void @llvm.dbg.value(metadata i32 %2, metadata !1544, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1546
  %3 = trunc i32 %0 to i16, !dbg !1548
  %4 = and i16 %3, 31, !dbg !1548
  call void @llvm.dbg.value(metadata i16 %3, metadata !1545, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1546
  %5 = tail call i32 @halGPIO_PullDown_RESET(i32 noundef %0) #16, !dbg !1549
  %6 = trunc i32 %2 to i16, !dbg !1550
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1550

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1551
  br i1 %8, label %9, label %12, !dbg !1554

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1555
  %11 = shl nuw nsw i32 1, %10, !dbg !1556
  store volatile i32 %11, i32* inttoptr (i32 -2097106940 to i32*), align 4, !dbg !1556
  br label %49, !dbg !1558

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1559
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1559

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1560
  %16 = and i32 %15, -29, !dbg !1560
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1560
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1563
  %18 = or i32 %17, 2052, !dbg !1563
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1563
  br label %49, !dbg !1564

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1565
  %21 = and i32 %20, -29, !dbg !1565
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1565
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1568
  %23 = or i32 %22, 2052, !dbg !1568
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1568
  br label %49, !dbg !1569

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1570
  %26 = and i32 %25, -29, !dbg !1570
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1570
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1573
  %28 = or i32 %27, 2052, !dbg !1573
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1573
  br label %49, !dbg !1574

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1575
  %31 = and i32 %30, -29, !dbg !1575
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1575
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1578
  %33 = or i32 %32, 2052, !dbg !1578
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1578
  br label %49, !dbg !1579

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1580
  %36 = and i32 %35, -29, !dbg !1580
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1580
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1583
  %38 = or i32 %37, 2052, !dbg !1583
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1583
  br label %49, !dbg !1584

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1585
  br i1 %40, label %41, label %46, !dbg !1587

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1588
  %43 = and i32 %42, -29, !dbg !1588
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1588
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1590
  %45 = or i32 %44, 2052, !dbg !1590
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1590
  br label %49, !dbg !1591

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1592
  %48 = shl nuw i32 1, %47, !dbg !1592
  store volatile i32 %48, i32* inttoptr (i32 -2097106924 to i32*), align 4, !dbg !1592
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1546
  ret i32 %50, !dbg !1594
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_RESET(i32 noundef %0) local_unnamed_addr #3 !dbg !1595 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1597, metadata !DIExpression()), !dbg !1600
  %2 = lshr i32 %0, 5, !dbg !1601
  call void @llvm.dbg.value(metadata i32 %2, metadata !1598, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1600
  %3 = trunc i32 %0 to i16, !dbg !1602
  %4 = and i16 %3, 31, !dbg !1602
  call void @llvm.dbg.value(metadata i16 %3, metadata !1599, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1600
  %5 = trunc i32 %2 to i16, !dbg !1603
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1603

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1604
  br i1 %7, label %8, label %11, !dbg !1607

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1608
  %10 = shl nuw nsw i32 1, %9, !dbg !1609
  store volatile i32 %10, i32* inttoptr (i32 -2097106888 to i32*), align 8, !dbg !1609
  br label %48, !dbg !1611

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1612
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1612

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1613
  %15 = and i32 %14, -29, !dbg !1613
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1613
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1616
  %17 = or i32 %16, 2048, !dbg !1616
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1616
  br label %48, !dbg !1617

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1618
  %20 = and i32 %19, -29, !dbg !1618
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1618
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1621
  %22 = or i32 %21, 2048, !dbg !1621
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1621
  br label %48, !dbg !1622

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1623
  %25 = and i32 %24, -29, !dbg !1623
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1623
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1626
  %27 = or i32 %26, 2048, !dbg !1626
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1626
  br label %48, !dbg !1627

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1628
  %30 = and i32 %29, -29, !dbg !1628
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1628
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1631
  %32 = or i32 %31, 2048, !dbg !1631
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1631
  br label %48, !dbg !1632

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1633
  %35 = and i32 %34, -29, !dbg !1633
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1633
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1636
  %37 = or i32 %36, 2048, !dbg !1636
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1636
  br label %48, !dbg !1637

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1638
  br i1 %39, label %40, label %45, !dbg !1640

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1641
  %42 = and i32 %41, -29, !dbg !1641
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1641
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1643
  %44 = or i32 %43, 2048, !dbg !1643
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1643
  br label %48, !dbg !1644

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1645
  %47 = shl nuw i32 1, %46, !dbg !1645
  store volatile i32 %47, i32* inttoptr (i32 -2097106872 to i32*), align 8, !dbg !1645
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1600
  ret i32 %49, !dbg !1647
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_RESET(i32 noundef %0) local_unnamed_addr #3 !dbg !1648 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1650, metadata !DIExpression()), !dbg !1653
  %2 = lshr i32 %0, 5, !dbg !1654
  call void @llvm.dbg.value(metadata i32 %2, metadata !1651, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1653
  %3 = trunc i32 %0 to i16, !dbg !1655
  %4 = and i16 %3, 31, !dbg !1655
  call void @llvm.dbg.value(metadata i16 %3, metadata !1652, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1653
  %5 = trunc i32 %2 to i16, !dbg !1656
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1656

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1657
  br i1 %7, label %8, label %11, !dbg !1660

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1661
  %10 = shl nuw nsw i32 1, %9, !dbg !1662
  store volatile i32 %10, i32* inttoptr (i32 -2097106936 to i32*), align 8, !dbg !1662
  br label %48, !dbg !1664

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1665
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1665

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1666
  %15 = and i32 %14, -29, !dbg !1666
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1666
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1669
  %17 = or i32 %16, 2048, !dbg !1669
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1669
  br label %48, !dbg !1670

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1671
  %20 = and i32 %19, -29, !dbg !1671
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1671
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1674
  %22 = or i32 %21, 2048, !dbg !1674
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1674
  br label %48, !dbg !1675

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1676
  %25 = and i32 %24, -29, !dbg !1676
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1676
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1679
  %27 = or i32 %26, 2048, !dbg !1679
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1679
  br label %48, !dbg !1680

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1681
  %30 = and i32 %29, -29, !dbg !1681
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1681
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1684
  %32 = or i32 %31, 2048, !dbg !1684
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1684
  br label %48, !dbg !1685

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1686
  %35 = and i32 %34, -29, !dbg !1686
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1686
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1689
  %37 = or i32 %36, 2048, !dbg !1689
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1689
  br label %48, !dbg !1690

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1691
  br i1 %39, label %40, label %45, !dbg !1693

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1694
  %42 = and i32 %41, -29, !dbg !1694
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1694
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1696
  %44 = or i32 %43, 2048, !dbg !1696
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1696
  br label %48, !dbg !1697

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1698
  %47 = shl nuw i32 1, %46, !dbg !1698
  store volatile i32 %47, i32* inttoptr (i32 -2097106920 to i32*), align 8, !dbg !1698
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1653
  ret i32 %49, !dbg !1700
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_SET(i32 noundef %0) local_unnamed_addr #3 !dbg !1701 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1703, metadata !DIExpression()), !dbg !1706
  %2 = lshr i32 %0, 5, !dbg !1707
  call void @llvm.dbg.value(metadata i32 %2, metadata !1704, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1706
  %3 = trunc i32 %0 to i16, !dbg !1708
  %4 = and i16 %3, 31, !dbg !1708
  call void @llvm.dbg.value(metadata i16 %3, metadata !1705, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1706
  %5 = tail call i32 @halGPIO_PullUp_RESET(i32 noundef %0) #16, !dbg !1709
  %6 = trunc i32 %2 to i16, !dbg !1710
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1710

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1711
  br i1 %8, label %9, label %12, !dbg !1714

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1715
  %11 = shl nuw nsw i32 1, %10, !dbg !1716
  store volatile i32 %11, i32* inttoptr (i32 -2097106892 to i32*), align 4, !dbg !1716
  br label %49, !dbg !1718

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1719
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1719

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1720
  %16 = and i32 %15, -29, !dbg !1720
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1720
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1723
  %18 = or i32 %17, 2068, !dbg !1723
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1723
  br label %49, !dbg !1724

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1725
  %21 = and i32 %20, -29, !dbg !1725
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1725
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1728
  %23 = or i32 %22, 2068, !dbg !1728
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1728
  br label %49, !dbg !1729

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1730
  %26 = and i32 %25, -29, !dbg !1730
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1730
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1733
  %28 = or i32 %27, 2068, !dbg !1733
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1733
  br label %49, !dbg !1734

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1735
  %31 = and i32 %30, -29, !dbg !1735
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1735
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1738
  %33 = or i32 %32, 2068, !dbg !1738
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1738
  br label %49, !dbg !1739

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1740
  %36 = and i32 %35, -29, !dbg !1740
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1740
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1743
  %38 = or i32 %37, 2068, !dbg !1743
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1743
  br label %49, !dbg !1744

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1745
  br i1 %40, label %41, label %46, !dbg !1747

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1748
  %43 = and i32 %42, -29, !dbg !1748
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1748
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1750
  %45 = or i32 %44, 2068, !dbg !1750
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1750
  br label %49, !dbg !1751

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1752
  %48 = shl nuw i32 1, %47, !dbg !1752
  store volatile i32 %48, i32* inttoptr (i32 -2097106876 to i32*), align 4, !dbg !1752
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1706
  ret i32 %50, !dbg !1754
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_SetDriving(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1755 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1757, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i8 %1, metadata !1758, metadata !DIExpression()), !dbg !1761
  %3 = lshr i32 %0, 4, !dbg !1762
  call void @llvm.dbg.value(metadata i32 %3, metadata !1759, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1761
  %4 = trunc i32 %0 to i16, !dbg !1763
  %5 = and i16 %4, 15, !dbg !1763
  call void @llvm.dbg.value(metadata i16 %4, metadata !1760, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1761
  %6 = trunc i32 %3 to i16, !dbg !1764
  switch i16 %6, label %131 [
    i16 0, label %7
    i16 1, label %20
    i16 2, label %92
    i16 3, label %118
  ], !dbg !1764

7:                                                ; preds = %2
  %8 = shl nuw nsw i16 %5, 1, !dbg !1765
  %9 = zext i16 %8 to i32, !dbg !1765
  %10 = shl nuw i32 3, %9, !dbg !1767
  %11 = xor i32 %10, -1, !dbg !1768
  %12 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1769
  %13 = and i32 %12, %11, !dbg !1769
  store volatile i32 %13, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1769
  %14 = lshr i8 %1, 2, !dbg !1770
  %15 = zext i8 %14 to i32, !dbg !1770
  %16 = add nsw i32 %15, -1, !dbg !1771
  %17 = shl i32 %16, %9, !dbg !1772
  %18 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1773
  %19 = or i32 %18, %17, !dbg !1773
  store volatile i32 %19, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1773
  br label %131, !dbg !1774

20:                                               ; preds = %2
  %21 = icmp ult i16 %5, 11, !dbg !1775
  br i1 %21, label %22, label %35, !dbg !1777

22:                                               ; preds = %20
  %23 = shl nuw nsw i16 %5, 1, !dbg !1778
  %24 = zext i16 %23 to i32, !dbg !1778
  %25 = shl nuw nsw i32 3, %24, !dbg !1780
  %26 = xor i32 %25, -1, !dbg !1781
  %27 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1782
  %28 = and i32 %27, %26, !dbg !1782
  store volatile i32 %28, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1782
  %29 = lshr i8 %1, 2, !dbg !1783
  %30 = zext i8 %29 to i32, !dbg !1783
  %31 = add nsw i32 %30, -1, !dbg !1784
  %32 = shl nsw i32 %31, %24, !dbg !1785
  %33 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1786
  %34 = or i32 %33, %32, !dbg !1786
  store volatile i32 %34, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1786
  br label %131, !dbg !1787

35:                                               ; preds = %20
  %36 = trunc i32 %0 to i4, !dbg !1788
  switch i4 %36, label %81 [
    i4 -5, label %37
    i4 -4, label %48
    i4 -3, label %59
    i4 -2, label %70
  ], !dbg !1788

37:                                               ; preds = %35
  %38 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1789
  %39 = and i32 %38, -449, !dbg !1789
  store volatile i32 %39, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1789
  %40 = lshr i8 %1, 1, !dbg !1792
  %41 = zext i8 %40 to i32, !dbg !1792
  %42 = shl nuw nsw i32 %41, 6, !dbg !1793
  %43 = add nsw i32 %42, -64, !dbg !1793
  %44 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1794
  %45 = or i32 %44, %43, !dbg !1794
  store volatile i32 %45, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1794
  %46 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1795
  %47 = or i32 %46, 2048, !dbg !1795
  store volatile i32 %47, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1795
  br label %131, !dbg !1796

48:                                               ; preds = %35
  %49 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1797
  %50 = and i32 %49, -449, !dbg !1797
  store volatile i32 %50, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1797
  %51 = lshr i8 %1, 1, !dbg !1800
  %52 = zext i8 %51 to i32, !dbg !1800
  %53 = shl nuw nsw i32 %52, 6, !dbg !1801
  %54 = add nsw i32 %53, -64, !dbg !1801
  %55 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1802
  %56 = or i32 %55, %54, !dbg !1802
  store volatile i32 %56, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1802
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1803
  %58 = or i32 %57, 2048, !dbg !1803
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1803
  br label %131, !dbg !1804

59:                                               ; preds = %35
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1805
  %61 = and i32 %60, -449, !dbg !1805
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1805
  %62 = lshr i8 %1, 1, !dbg !1808
  %63 = zext i8 %62 to i32, !dbg !1808
  %64 = shl nuw nsw i32 %63, 6, !dbg !1809
  %65 = add nsw i32 %64, -64, !dbg !1809
  %66 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1810
  %67 = or i32 %66, %65, !dbg !1810
  store volatile i32 %67, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1810
  %68 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1811
  %69 = or i32 %68, 2048, !dbg !1811
  store volatile i32 %69, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1811
  br label %131, !dbg !1812

70:                                               ; preds = %35
  %71 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1813
  %72 = and i32 %71, -449, !dbg !1813
  store volatile i32 %72, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1813
  %73 = lshr i8 %1, 1, !dbg !1816
  %74 = zext i8 %73 to i32, !dbg !1816
  %75 = shl nuw nsw i32 %74, 6, !dbg !1817
  %76 = add nsw i32 %75, -64, !dbg !1817
  %77 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1818
  %78 = or i32 %77, %76, !dbg !1818
  store volatile i32 %78, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1818
  %79 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1819
  %80 = or i32 %79, 2048, !dbg !1819
  store volatile i32 %80, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1819
  br label %131, !dbg !1820

81:                                               ; preds = %35
  %82 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1821
  %83 = and i32 %82, -449, !dbg !1821
  store volatile i32 %83, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1821
  %84 = lshr i8 %1, 1, !dbg !1824
  %85 = zext i8 %84 to i32, !dbg !1824
  %86 = shl nuw nsw i32 %85, 6, !dbg !1825
  %87 = add nsw i32 %86, -64, !dbg !1825
  %88 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1826
  %89 = or i32 %88, %87, !dbg !1826
  store volatile i32 %89, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1826
  %90 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1827
  %91 = or i32 %90, 2048, !dbg !1827
  store volatile i32 %91, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1827
  br label %131, !dbg !1828

92:                                               ; preds = %2
  %93 = icmp eq i16 %5, 0, !dbg !1829
  br i1 %93, label %94, label %105, !dbg !1831

94:                                               ; preds = %92
  %95 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1832
  %96 = and i32 %95, -449, !dbg !1832
  store volatile i32 %96, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1832
  %97 = lshr i8 %1, 1, !dbg !1834
  %98 = zext i8 %97 to i32, !dbg !1834
  %99 = shl nuw nsw i32 %98, 6, !dbg !1835
  %100 = add nsw i32 %99, -64, !dbg !1835
  %101 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1836
  %102 = or i32 %101, %100, !dbg !1836
  store volatile i32 %102, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1836
  %103 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1837
  %104 = or i32 %103, 2048, !dbg !1837
  store volatile i32 %104, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1837
  br label %131, !dbg !1838

105:                                              ; preds = %92
  %106 = shl nuw nsw i16 %5, 1, !dbg !1839
  %107 = zext i16 %106 to i32, !dbg !1839
  %108 = shl nuw i32 3, %107, !dbg !1841
  %109 = xor i32 %108, -1, !dbg !1842
  %110 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1843
  %111 = and i32 %110, %109, !dbg !1843
  store volatile i32 %111, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1843
  %112 = lshr i8 %1, 2, !dbg !1844
  %113 = zext i8 %112 to i32, !dbg !1844
  %114 = add nsw i32 %113, -1, !dbg !1845
  %115 = shl i32 %114, %107, !dbg !1846
  %116 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1847
  %117 = or i32 %116, %115, !dbg !1847
  store volatile i32 %117, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1847
  br label %131

118:                                              ; preds = %2
  %119 = shl nuw nsw i16 %5, 1, !dbg !1848
  %120 = zext i16 %119 to i32, !dbg !1848
  %121 = shl nuw i32 3, %120, !dbg !1849
  %122 = xor i32 %121, -1, !dbg !1850
  %123 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1851
  %124 = and i32 %123, %122, !dbg !1851
  store volatile i32 %124, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1851
  %125 = lshr i8 %1, 2, !dbg !1852
  %126 = zext i8 %125 to i32, !dbg !1852
  %127 = add nsw i32 %126, -1, !dbg !1853
  %128 = shl i32 %127, %120, !dbg !1854
  %129 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1855
  %130 = or i32 %129, %128, !dbg !1855
  store volatile i32 %130, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1855
  br label %131, !dbg !1856

131:                                              ; preds = %7, %118, %37, %59, %81, %70, %48, %22, %105, %94, %2
  %132 = phi i32 [ -1, %2 ], [ 0, %94 ], [ 0, %105 ], [ 0, %22 ], [ 0, %48 ], [ 0, %70 ], [ 0, %81 ], [ 0, %59 ], [ 0, %37 ], [ 0, %118 ], [ 0, %7 ], !dbg !1761
  ret i32 %132, !dbg !1857
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @halGPIO_GetDriving(i32 noundef %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #4 !dbg !1858 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1863, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i8* %1, metadata !1864, metadata !DIExpression()), !dbg !1868
  %3 = lshr i32 %0, 4, !dbg !1869
  call void @llvm.dbg.value(metadata i32 %3, metadata !1865, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1868
  %4 = trunc i32 %0 to i16, !dbg !1870
  %5 = and i16 %4, 15, !dbg !1870
  call void @llvm.dbg.value(metadata i16 %4, metadata !1866, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1868
  %6 = trunc i32 %3 to i16, !dbg !1871
  switch i16 %6, label %91 [
    i16 0, label %7
    i16 1, label %17
    i16 2, label %61
    i16 3, label %79
  ], !dbg !1871

7:                                                ; preds = %2
  %8 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1872
  call void @llvm.dbg.value(metadata i32 %8, metadata !1867, metadata !DIExpression()), !dbg !1868
  %9 = shl nuw nsw i16 %5, 1, !dbg !1874
  %10 = zext i16 %9 to i32, !dbg !1874
  %11 = shl nuw i32 3, %10, !dbg !1875
  %12 = and i32 %8, %11, !dbg !1876
  call void @llvm.dbg.value(metadata i32 %12, metadata !1867, metadata !DIExpression()), !dbg !1868
  %13 = lshr i32 %12, %10, !dbg !1877
  %14 = trunc i32 %13 to i8, !dbg !1878
  %15 = shl i8 %14, 2, !dbg !1878
  %16 = add i8 %15, 4, !dbg !1878
  br label %89, !dbg !1879

17:                                               ; preds = %2
  %18 = icmp ult i16 %5, 11, !dbg !1880
  br i1 %18, label %19, label %29, !dbg !1882

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1883
  call void @llvm.dbg.value(metadata i32 %20, metadata !1867, metadata !DIExpression()), !dbg !1868
  %21 = shl nuw nsw i16 %5, 1, !dbg !1885
  %22 = zext i16 %21 to i32, !dbg !1885
  %23 = shl nuw nsw i32 3, %22, !dbg !1886
  %24 = and i32 %20, %23, !dbg !1887
  call void @llvm.dbg.value(metadata i32 %24, metadata !1867, metadata !DIExpression()), !dbg !1868
  %25 = lshr i32 %24, %22, !dbg !1888
  %26 = trunc i32 %25 to i8, !dbg !1889
  %27 = shl i8 %26, 2, !dbg !1889
  %28 = add i8 %27, 4, !dbg !1889
  br label %89, !dbg !1890

29:                                               ; preds = %17
  %30 = trunc i32 %0 to i4, !dbg !1891
  switch i4 %30, label %55 [
    i4 -5, label %31
    i4 -4, label %37
    i4 -3, label %43
    i4 -2, label %49
  ], !dbg !1891

31:                                               ; preds = %29
  %32 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1892
  call void @llvm.dbg.value(metadata i32 %32, metadata !1867, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i32 %32, metadata !1867, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1868
  %33 = lshr i32 %32, 5, !dbg !1895
  %34 = trunc i32 %33 to i8, !dbg !1896
  %35 = and i8 %34, 14, !dbg !1896
  %36 = add nuw nsw i8 %35, 2, !dbg !1896
  br label %89, !dbg !1897

37:                                               ; preds = %29
  %38 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1898
  call void @llvm.dbg.value(metadata i32 %38, metadata !1867, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i32 %38, metadata !1867, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1868
  %39 = lshr i32 %38, 5, !dbg !1901
  %40 = trunc i32 %39 to i8, !dbg !1902
  %41 = and i8 %40, 14, !dbg !1902
  %42 = add nuw nsw i8 %41, 2, !dbg !1902
  br label %89, !dbg !1903

43:                                               ; preds = %29
  %44 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1904
  call void @llvm.dbg.value(metadata i32 %44, metadata !1867, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i32 %44, metadata !1867, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1868
  %45 = lshr i32 %44, 5, !dbg !1907
  %46 = trunc i32 %45 to i8, !dbg !1908
  %47 = and i8 %46, 14, !dbg !1908
  %48 = add nuw nsw i8 %47, 2, !dbg !1908
  br label %89, !dbg !1909

49:                                               ; preds = %29
  %50 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1910
  call void @llvm.dbg.value(metadata i32 %50, metadata !1867, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i32 %50, metadata !1867, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1868
  %51 = lshr i32 %50, 5, !dbg !1913
  %52 = trunc i32 %51 to i8, !dbg !1914
  %53 = and i8 %52, 14, !dbg !1914
  %54 = add nuw nsw i8 %53, 2, !dbg !1914
  br label %89, !dbg !1915

55:                                               ; preds = %29
  %56 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1916
  call void @llvm.dbg.value(metadata i32 %56, metadata !1867, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i32 %56, metadata !1867, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1868
  %57 = lshr i32 %56, 5, !dbg !1919
  %58 = trunc i32 %57 to i8, !dbg !1920
  %59 = and i8 %58, 14, !dbg !1920
  %60 = add nuw nsw i8 %59, 2, !dbg !1920
  br label %89, !dbg !1921

61:                                               ; preds = %2
  %62 = icmp eq i16 %5, 0, !dbg !1922
  br i1 %62, label %63, label %69, !dbg !1924

63:                                               ; preds = %61
  %64 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1925
  call void @llvm.dbg.value(metadata i32 %64, metadata !1867, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i32 %64, metadata !1867, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1868
  %65 = lshr i32 %64, 5, !dbg !1927
  %66 = trunc i32 %65 to i8, !dbg !1928
  %67 = and i8 %66, 14, !dbg !1928
  %68 = add nuw nsw i8 %67, 2, !dbg !1928
  br label %89, !dbg !1929

69:                                               ; preds = %61
  %70 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1930
  call void @llvm.dbg.value(metadata i32 %70, metadata !1867, metadata !DIExpression()), !dbg !1868
  %71 = shl nuw nsw i16 %5, 1, !dbg !1932
  %72 = zext i16 %71 to i32, !dbg !1932
  %73 = shl nuw i32 3, %72, !dbg !1933
  %74 = and i32 %70, %73, !dbg !1934
  call void @llvm.dbg.value(metadata i32 %74, metadata !1867, metadata !DIExpression()), !dbg !1868
  %75 = lshr i32 %74, %72, !dbg !1935
  %76 = trunc i32 %75 to i8, !dbg !1936
  %77 = shl i8 %76, 2, !dbg !1936
  %78 = add i8 %77, 4, !dbg !1936
  br label %89

79:                                               ; preds = %2
  %80 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1937
  call void @llvm.dbg.value(metadata i32 %80, metadata !1867, metadata !DIExpression()), !dbg !1868
  %81 = shl nuw nsw i16 %5, 1, !dbg !1938
  %82 = zext i16 %81 to i32, !dbg !1938
  %83 = shl nuw i32 3, %82, !dbg !1939
  %84 = and i32 %80, %83, !dbg !1940
  call void @llvm.dbg.value(metadata i32 %84, metadata !1867, metadata !DIExpression()), !dbg !1868
  %85 = lshr i32 %84, %82, !dbg !1941
  %86 = trunc i32 %85 to i8, !dbg !1942
  %87 = shl i8 %86, 2, !dbg !1942
  %88 = add i8 %87, 4, !dbg !1942
  br label %89, !dbg !1943

89:                                               ; preds = %63, %69, %19, %37, %49, %55, %43, %31, %79, %7
  %90 = phi i8 [ %16, %7 ], [ %88, %79 ], [ %36, %31 ], [ %48, %43 ], [ %60, %55 ], [ %54, %49 ], [ %42, %37 ], [ %28, %19 ], [ %78, %69 ], [ %68, %63 ]
  store i8 %90, i8* %1, align 1, !dbg !1944
  br label %91, !dbg !1945

91:                                               ; preds = %89, %2
  %92 = phi i32 [ -1, %2 ], [ 0, %89 ], !dbg !1868
  ret i32 %92, !dbg !1945
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !1946 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1951, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i32 %1, metadata !1952, metadata !DIExpression()), !dbg !1955
  %3 = lshr i32 %0, 5, !dbg !1956
  call void @llvm.dbg.value(metadata i32 %3, metadata !1953, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1955
  %4 = trunc i32 %0 to i16, !dbg !1957
  %5 = and i16 %4, 31, !dbg !1957
  call void @llvm.dbg.value(metadata i16 %5, metadata !1954, metadata !DIExpression()), !dbg !1955
  switch i32 %1, label %32 [
    i32 1, label %6
    i32 0, label %18
  ], !dbg !1958

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 %3, metadata !1953, metadata !DIExpression()), !dbg !1955
  %7 = trunc i32 %3 to i16, !dbg !1959
  switch i16 %7, label %32 [
    i16 0, label %8
    i16 1, label %13
  ], !dbg !1959

8:                                                ; preds = %6
  %9 = zext i16 %5 to i32, !dbg !1962
  %10 = shl nuw i32 1, %9, !dbg !1964
  %11 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1965
  %12 = or i32 %11, %10, !dbg !1965
  store volatile i32 %12, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1965
  br label %32, !dbg !1966

13:                                               ; preds = %6
  %14 = zext i16 %5 to i32, !dbg !1967
  %15 = shl nuw i32 1, %14, !dbg !1968
  %16 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1969
  %17 = or i32 %16, %15, !dbg !1969
  store volatile i32 %17, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1969
  br label %32, !dbg !1970

18:                                               ; preds = %2
  %19 = trunc i32 %3 to i16, !dbg !1971
  switch i16 %19, label %32 [
    i16 0, label %20
    i16 1, label %26
  ], !dbg !1971

20:                                               ; preds = %18
  %21 = zext i16 %5 to i32, !dbg !1974
  %22 = shl nuw i32 1, %21, !dbg !1976
  %23 = xor i32 %22, -1, !dbg !1977
  %24 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1978
  %25 = and i32 %24, %23, !dbg !1978
  store volatile i32 %25, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1978
  br label %32, !dbg !1979

26:                                               ; preds = %18
  %27 = zext i16 %5 to i32, !dbg !1980
  %28 = shl nuw i32 1, %27, !dbg !1981
  %29 = xor i32 %28, -1, !dbg !1982
  %30 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1983
  %31 = and i32 %30, %29, !dbg !1983
  store volatile i32 %31, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1983
  br label %32, !dbg !1984

32:                                               ; preds = %2, %18, %26, %20, %8, %13, %6
  ret void, !dbg !1985
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvGPIO_IDX_EINT_WIC_LISR(i32 noundef %0) #0 !dbg !1986 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1988, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i32 255, metadata !1990, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i32 0, metadata !1989, metadata !DIExpression()), !dbg !1991
  %2 = load i32, i32* @hal_eint_count_max, align 4
  call void @llvm.dbg.value(metadata i32 0, metadata !1989, metadata !DIExpression()), !dbg !1991
  %3 = icmp eq i32 %2, 0, !dbg !1992
  br i1 %3, label %21, label %4, !dbg !1995

4:                                                ; preds = %1
  %5 = add i32 %2, -1
  call void @llvm.dbg.value(metadata i32 0, metadata !1989, metadata !DIExpression()), !dbg !1991
  %6 = load i32, i32* getelementptr inbounds ([23 x %struct.hal_eint_gpio_map_t], [23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table, i32 0, i32 0, i32 2), align 4, !dbg !1996
  %7 = icmp eq i32 %6, %0, !dbg !1999
  br i1 %7, label %8, label %12, !dbg !2000

8:                                                ; preds = %16, %4
  %9 = phi i32 [ 0, %4 ], [ %17, %16 ]
  %10 = getelementptr inbounds [0 x %struct.hal_eint_gpio_map_t], [0 x %struct.hal_eint_gpio_map_t]* bitcast ([23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table to [0 x %struct.hal_eint_gpio_map_t]*), i32 0, i32 %9, i32 1, !dbg !2001
  %11 = load i32, i32* %10, align 4, !dbg !2001
  call void @llvm.dbg.value(metadata i32 %11, metadata !1990, metadata !DIExpression()), !dbg !1991
  br label %21, !dbg !2003

12:                                               ; preds = %4, %16
  %13 = phi i32 [ %17, %16 ], [ 0, %4 ]
  call void @llvm.dbg.value(metadata i32 %13, metadata !1989, metadata !DIExpression()), !dbg !1991
  %14 = icmp eq i32 %5, %13, !dbg !2004
  br i1 %14, label %15, label %16, !dbg !2006

15:                                               ; preds = %12
  tail call void (i8*, i32, i8*, ...) @log_hal_info_internal(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.drvGPIO_IDX_EINT_WIC_LISR, i32 0, i32 0), i32 noundef 578, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i32 0, i32 0), i32 noundef %0) #15, !dbg !2007
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1.3, i32 0, i32 0), i32 noundef 579, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.drvGPIO_IDX_EINT_WIC_LISR, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.4, i32 0, i32 0)) #17, !dbg !2009
  unreachable, !dbg !2009

16:                                               ; preds = %12
  %17 = add nuw i32 %13, 1, !dbg !2010
  call void @llvm.dbg.value(metadata i32 %17, metadata !1989, metadata !DIExpression()), !dbg !1991
  %18 = getelementptr inbounds [0 x %struct.hal_eint_gpio_map_t], [0 x %struct.hal_eint_gpio_map_t]* bitcast ([23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table to [0 x %struct.hal_eint_gpio_map_t]*), i32 0, i32 %17, i32 2, !dbg !1996
  %19 = load i32, i32* %18, align 4, !dbg !1996
  %20 = icmp eq i32 %19, %0, !dbg !1999
  br i1 %20, label %8, label %12, !dbg !2000, !llvm.loop !2011

21:                                               ; preds = %1, %8
  %22 = phi i32 [ %11, %8 ], [ 255, %1 ], !dbg !1991
  call void @llvm.dbg.value(metadata i32 %22, metadata !1990, metadata !DIExpression()), !dbg !1991
  %23 = load void (i32)*, void (i32)** @LISR.0, align 4, !dbg !2013
  tail call void %23(i32 noundef %22) #15, !dbg !2014
  ret void, !dbg !2015
}

; Function Attrs: noreturn optsize
declare dso_local void @__assert_func(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize
define dso_local i32 @halRegGPInterrupt(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6, void (i32)* noundef %7) local_unnamed_addr #0 !dbg !2016 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2020, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %1, metadata !2021, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %2, metadata !2022, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %3, metadata !2023, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %4, metadata !2024, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %5, metadata !2025, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 %6, metadata !2026, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata void (i32)* %7, metadata !2027, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i32 255, metadata !2029, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i32 255, metadata !2030, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i32 0, metadata !2032, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i32 0, metadata !2033, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i32 0, metadata !2028, metadata !DIExpression()), !dbg !2036
  %9 = load i32, i32* @hal_eint_count_max, align 4
  call void @llvm.dbg.value(metadata i32 0, metadata !2028, metadata !DIExpression()), !dbg !2036
  %10 = icmp eq i32 %9, 0, !dbg !2037
  br i1 %10, label %30, label %11, !dbg !2040

11:                                               ; preds = %8
  %12 = add i32 %9, -1
  call void @llvm.dbg.value(metadata i32 0, metadata !2028, metadata !DIExpression()), !dbg !2036
  %13 = load i32, i32* getelementptr inbounds ([23 x %struct.hal_eint_gpio_map_t], [23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table, i32 0, i32 0, i32 1), align 4, !dbg !2041
  %14 = icmp eq i32 %13, %0, !dbg !2044
  br i1 %14, label %15, label %21, !dbg !2045

15:                                               ; preds = %25, %11
  %16 = phi i32 [ 0, %11 ], [ %26, %25 ]
  %17 = getelementptr inbounds [0 x %struct.hal_eint_gpio_map_t], [0 x %struct.hal_eint_gpio_map_t]* bitcast ([23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table to [0 x %struct.hal_eint_gpio_map_t]*), i32 0, i32 %16, i32 2, !dbg !2046
  %18 = load i32, i32* %17, align 4, !dbg !2046
  call void @llvm.dbg.value(metadata i32 %18, metadata !2029, metadata !DIExpression()), !dbg !2036
  %19 = getelementptr inbounds [0 x %struct.hal_eint_gpio_map_t], [0 x %struct.hal_eint_gpio_map_t]* bitcast ([23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table to [0 x %struct.hal_eint_gpio_map_t]*), i32 0, i32 %16, i32 3, !dbg !2048
  %20 = load i32, i32* %19, align 4, !dbg !2048
  call void @llvm.dbg.value(metadata i32 %20, metadata !2030, metadata !DIExpression()), !dbg !2036
  br label %30, !dbg !2049

21:                                               ; preds = %11, %25
  %22 = phi i32 [ %26, %25 ], [ 0, %11 ]
  call void @llvm.dbg.value(metadata i32 %22, metadata !2028, metadata !DIExpression()), !dbg !2036
  %23 = icmp eq i32 %12, %22, !dbg !2050
  br i1 %23, label %24, label %25, !dbg !2052

24:                                               ; preds = %21
  tail call void (i8*, i32, i8*, ...) @log_hal_info_internal(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.halRegGPInterrupt, i32 0, i32 0), i32 noundef 612, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0), i32 noundef %0) #15, !dbg !2053
  br label %60, !dbg !2055

25:                                               ; preds = %21
  %26 = add nuw i32 %22, 1, !dbg !2056
  call void @llvm.dbg.value(metadata i32 %26, metadata !2028, metadata !DIExpression()), !dbg !2036
  %27 = getelementptr inbounds [0 x %struct.hal_eint_gpio_map_t], [0 x %struct.hal_eint_gpio_map_t]* bitcast ([23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table to [0 x %struct.hal_eint_gpio_map_t]*), i32 0, i32 %26, i32 1, !dbg !2041
  %28 = load i32, i32* %27, align 4, !dbg !2041
  %29 = icmp eq i32 %28, %0, !dbg !2044
  br i1 %29, label %15, label %21, !dbg !2045, !llvm.loop !2057

30:                                               ; preds = %8, %15
  %31 = phi i32 [ %20, %15 ], [ 255, %8 ], !dbg !2036
  %32 = phi i32 [ %18, %15 ], [ 255, %8 ], !dbg !2036
  call void @llvm.dbg.value(metadata i32 %32, metadata !2029, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i32 %31, metadata !2030, metadata !DIExpression()), !dbg !2036
  tail call fastcc void @NVIC_DisableIRQ(i32 noundef %32) #16, !dbg !2059
  tail call void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext 3) #15, !dbg !2060
  %33 = lshr i32 %32, 5, !dbg !2061
  call void @llvm.dbg.value(metadata i32 %33, metadata !2034, metadata !DIExpression()), !dbg !2036
  %34 = and i32 %32, 31, !dbg !2062
  call void @llvm.dbg.value(metadata i32 %34, metadata !2035, metadata !DIExpression()), !dbg !2036
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* inttoptr (i32 -2097102336 to [4 x i32]*), i32 0, i32 %33, !dbg !2063
  %36 = load volatile i32, i32* %35, align 4, !dbg !2063
  call void @llvm.dbg.value(metadata i32 %36, metadata !2033, metadata !DIExpression()), !dbg !2036
  %37 = shl nuw i32 1, %34, !dbg !2064
  %38 = xor i32 %37, -1, !dbg !2065
  %39 = and i32 %36, %38, !dbg !2066
  call void @llvm.dbg.value(metadata i32 %39, metadata !2033, metadata !DIExpression()), !dbg !2036
  %40 = zext i8 %1 to i32, !dbg !2067
  %41 = shl i32 %40, %34, !dbg !2068
  %42 = or i32 %39, %41, !dbg !2069
  call void @llvm.dbg.value(metadata i32 %42, metadata !2033, metadata !DIExpression()), !dbg !2036
  store volatile i32 %42, i32* %35, align 4, !dbg !2070
  %43 = add i32 %32, -30, !dbg !2071
  call void @llvm.dbg.value(metadata i32 %43, metadata !2031, metadata !DIExpression()), !dbg !2036
  %44 = zext i8 %6 to i32, !dbg !2072
  %45 = zext i8 %5 to i32, !dbg !2073
  %46 = shl nuw nsw i32 %45, 4, !dbg !2074
  %47 = zext i8 %4 to i32, !dbg !2075
  %48 = shl nuw nsw i32 %47, 7, !dbg !2076
  %49 = zext i8 %3 to i32, !dbg !2077
  %50 = shl nuw nsw i32 %49, 8, !dbg !2078
  %51 = zext i8 %2 to i32, !dbg !2079
  %52 = shl nuw nsw i32 %51, 9, !dbg !2080
  %53 = add nuw nsw i32 %50, %52, !dbg !2081
  %54 = add nuw nsw i32 %53, %48, !dbg !2082
  %55 = add nuw nsw i32 %54, %44, !dbg !2083
  %56 = add nuw nsw i32 %55, %46, !dbg !2084
  call void @llvm.dbg.value(metadata i32 %56, metadata !2032, metadata !DIExpression()), !dbg !2036
  %57 = getelementptr inbounds [66 x i32], [66 x i32]* inttoptr (i32 -2097102848 to [66 x i32]*), i32 0, i32 %43, !dbg !2085
  store volatile i32 %56, i32* %57, align 4, !dbg !2086
  %58 = tail call i32 @hal_gpt_delay_us(i32 noundef 100) #15, !dbg !2087
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %32) #16, !dbg !2088
  store void (i32)* %7, void (i32)** @LISR.0, align 4, !dbg !2089
  %59 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef %32, void (i32)* noundef nonnull @drvGPIO_IDX_EINT_WIC_LISR) #15, !dbg !2090
  tail call fastcc void @NVIC_SetPriority(i32 noundef %32, i32 noundef %31) #16, !dbg !2091
  br label %60, !dbg !2092

60:                                               ; preds = %30, %24
  %61 = phi i32 [ 0, %30 ], [ -1, %24 ], !dbg !2036
  ret i32 %61, !dbg !2093
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_DisableIRQ(i32 noundef %0) unnamed_addr #3 !dbg !2094 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2098, metadata !DIExpression()), !dbg !2099
  %2 = and i32 %0, 31, !dbg !2100
  %3 = shl nuw i32 1, %2, !dbg !2101
  %4 = lshr i32 %0, 5, !dbg !2102
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813184 to [8 x i32]*), i32 0, i32 %4, !dbg !2103
  store volatile i32 %3, i32* %5, align 4, !dbg !2104
  ret void, !dbg !2105
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) unnamed_addr #3 !dbg !2106 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2108, metadata !DIExpression()), !dbg !2109
  %2 = and i32 %0, 31, !dbg !2110
  %3 = shl nuw i32 1, %2, !dbg !2111
  %4 = lshr i32 %0, 5, !dbg !2112
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812928 to [8 x i32]*), i32 0, i32 %4, !dbg !2113
  store volatile i32 %3, i32* %5, align 4, !dbg !2114
  ret void, !dbg !2115
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) unnamed_addr #3 !dbg !2116 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2120, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata i32 %1, metadata !2121, metadata !DIExpression()), !dbg !2122
  %3 = icmp slt i32 %0, 0, !dbg !2123
  %4 = trunc i32 %1 to i8, !dbg !2125
  %5 = shl i8 %4, 5, !dbg !2125
  %6 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !2126
  %7 = and i32 %0, 15, !dbg !2126
  %8 = add nsw i32 %7, -4, !dbg !2126
  %9 = getelementptr inbounds [12 x i8], [12 x i8]* inttoptr (i32 -536810216 to [12 x i8]*), i32 0, i32 %8, !dbg !2126
  %10 = select i1 %3, i8* %9, i8* %6, !dbg !2126
  store volatile i8 %5, i8* %10, align 1, !dbg !2125
  ret void, !dbg !2127
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @halRegGPInterrupt_set_triggermode(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 !dbg !2128 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2132, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 %1, metadata !2133, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 %2, metadata !2134, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 %3, metadata !2135, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i32 255, metadata !2137, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i32 0, metadata !2136, metadata !DIExpression()), !dbg !2143
  %5 = load i32, i32* @hal_eint_count_max, align 4
  call void @llvm.dbg.value(metadata i32 0, metadata !2136, metadata !DIExpression()), !dbg !2143
  %6 = icmp eq i32 %5, 0, !dbg !2144
  br i1 %6, label %24, label %7, !dbg !2147

7:                                                ; preds = %4
  %8 = add i32 %5, -1
  call void @llvm.dbg.value(metadata i32 0, metadata !2136, metadata !DIExpression()), !dbg !2143
  %9 = load i32, i32* getelementptr inbounds ([23 x %struct.hal_eint_gpio_map_t], [23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table, i32 0, i32 0, i32 1), align 4, !dbg !2148
  %10 = icmp eq i32 %9, %0, !dbg !2151
  br i1 %10, label %11, label %15, !dbg !2152

11:                                               ; preds = %19, %7
  %12 = phi i32 [ 0, %7 ], [ %20, %19 ]
  %13 = getelementptr inbounds [0 x %struct.hal_eint_gpio_map_t], [0 x %struct.hal_eint_gpio_map_t]* bitcast ([23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table to [0 x %struct.hal_eint_gpio_map_t]*), i32 0, i32 %12, i32 2, !dbg !2153
  %14 = load i32, i32* %13, align 4, !dbg !2153
  call void @llvm.dbg.value(metadata i32 %14, metadata !2137, metadata !DIExpression()), !dbg !2143
  br label %24, !dbg !2155

15:                                               ; preds = %7, %19
  %16 = phi i32 [ %20, %19 ], [ 0, %7 ]
  call void @llvm.dbg.value(metadata i32 %16, metadata !2136, metadata !DIExpression()), !dbg !2143
  %17 = icmp eq i32 %8, %16, !dbg !2156
  br i1 %17, label %18, label %19, !dbg !2158

18:                                               ; preds = %15
  tail call void (i8*, i32, i8*, ...) @log_hal_info_internal(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__FUNCTION__.halRegGPInterrupt_set_triggermode, i32 0, i32 0), i32 noundef 668, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i32 0, i32 0), i32 noundef %0) #15, !dbg !2159
  br label %44, !dbg !2161

19:                                               ; preds = %15
  %20 = add nuw i32 %16, 1, !dbg !2162
  call void @llvm.dbg.value(metadata i32 %20, metadata !2136, metadata !DIExpression()), !dbg !2143
  %21 = getelementptr inbounds [0 x %struct.hal_eint_gpio_map_t], [0 x %struct.hal_eint_gpio_map_t]* bitcast ([23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table to [0 x %struct.hal_eint_gpio_map_t]*), i32 0, i32 %20, i32 1, !dbg !2148
  %22 = load i32, i32* %21, align 4, !dbg !2148
  %23 = icmp eq i32 %22, %0, !dbg !2151
  br i1 %23, label %11, label %15, !dbg !2152, !llvm.loop !2163

24:                                               ; preds = %4, %11
  %25 = phi i32 [ %14, %11 ], [ 255, %4 ], !dbg !2143
  call void @llvm.dbg.value(metadata i32 %25, metadata !2137, metadata !DIExpression()), !dbg !2143
  tail call fastcc void @NVIC_DisableIRQ(i32 noundef %25) #16, !dbg !2165
  %26 = lshr i32 %25, 5, !dbg !2166
  call void @llvm.dbg.value(metadata i32 %26, metadata !2141, metadata !DIExpression()), !dbg !2143
  %27 = and i32 %25, 31, !dbg !2167
  call void @llvm.dbg.value(metadata i32 %27, metadata !2142, metadata !DIExpression()), !dbg !2143
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* inttoptr (i32 -2097102336 to [4 x i32]*), i32 0, i32 %26, !dbg !2168
  %29 = load volatile i32, i32* %28, align 4, !dbg !2168
  call void @llvm.dbg.value(metadata i32 %29, metadata !2140, metadata !DIExpression()), !dbg !2143
  %30 = shl nuw i32 1, %27, !dbg !2169
  %31 = xor i32 %30, -1, !dbg !2170
  %32 = and i32 %29, %31, !dbg !2171
  call void @llvm.dbg.value(metadata i32 %32, metadata !2140, metadata !DIExpression()), !dbg !2143
  %33 = zext i8 %1 to i32, !dbg !2172
  %34 = shl i32 %33, %27, !dbg !2173
  %35 = or i32 %32, %34, !dbg !2174
  call void @llvm.dbg.value(metadata i32 %35, metadata !2140, metadata !DIExpression()), !dbg !2143
  store volatile i32 %35, i32* %28, align 4, !dbg !2175
  %36 = zext i8 %3 to i32, !dbg !2176
  %37 = shl nuw nsw i32 %36, 7, !dbg !2177
  %38 = zext i8 %2 to i32, !dbg !2178
  %39 = shl nuw nsw i32 %38, 8, !dbg !2179
  %40 = add nuw nsw i32 %37, %39, !dbg !2180
  call void @llvm.dbg.value(metadata i32 %40, metadata !2139, metadata !DIExpression()), !dbg !2143
  %41 = add i32 %25, -30, !dbg !2181
  call void @llvm.dbg.value(metadata i32 %41, metadata !2138, metadata !DIExpression()), !dbg !2143
  %42 = getelementptr inbounds [66 x i32], [66 x i32]* inttoptr (i32 -2097102848 to [66 x i32]*), i32 0, i32 %41, !dbg !2182
  store volatile i32 %40, i32* %42, align 4, !dbg !2183
  tail call fastcc void @NVIC_EnableIRQ(i32 noundef %25) #16, !dbg !2184
  %43 = tail call i32 @hal_gpt_delay_us(i32 noundef 100) #15, !dbg !2185
  br label %44, !dbg !2186

44:                                               ; preds = %24, %18
  %45 = phi i32 [ 0, %24 ], [ -1, %18 ], !dbg !2143
  ret i32 %45, !dbg !2187
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_EnableIRQ(i32 noundef %0) unnamed_addr #3 !dbg !2188 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2190, metadata !DIExpression()), !dbg !2191
  %2 = and i32 %0, 31, !dbg !2192
  %3 = shl nuw i32 1, %2, !dbg !2193
  %4 = lshr i32 %0, 5, !dbg !2194
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813312 to [8 x i32]*), i32 0, i32 %4, !dbg !2195
  store volatile i32 %3, i32* %5, align 4, !dbg !2196
  ret void, !dbg !2197
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @halRegGPInterrupt_set_debounce(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 !dbg !2198 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2202, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8 %1, metadata !2203, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8 %2, metadata !2204, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8 %3, metadata !2205, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i32 255, metadata !2207, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i32 0, metadata !2206, metadata !DIExpression()), !dbg !2210
  %5 = load i32, i32* @hal_eint_count_max, align 4
  call void @llvm.dbg.value(metadata i32 0, metadata !2206, metadata !DIExpression()), !dbg !2210
  %6 = icmp eq i32 %5, 0, !dbg !2211
  br i1 %6, label %24, label %7, !dbg !2214

7:                                                ; preds = %4
  %8 = add i32 %5, -1
  call void @llvm.dbg.value(metadata i32 0, metadata !2206, metadata !DIExpression()), !dbg !2210
  %9 = load i32, i32* getelementptr inbounds ([23 x %struct.hal_eint_gpio_map_t], [23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table, i32 0, i32 0, i32 1), align 4, !dbg !2215
  %10 = icmp eq i32 %9, %0, !dbg !2218
  br i1 %10, label %11, label %15, !dbg !2219

11:                                               ; preds = %19, %7
  %12 = phi i32 [ 0, %7 ], [ %20, %19 ]
  %13 = getelementptr inbounds [0 x %struct.hal_eint_gpio_map_t], [0 x %struct.hal_eint_gpio_map_t]* bitcast ([23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table to [0 x %struct.hal_eint_gpio_map_t]*), i32 0, i32 %12, i32 2, !dbg !2220
  %14 = load i32, i32* %13, align 4, !dbg !2220
  call void @llvm.dbg.value(metadata i32 %14, metadata !2207, metadata !DIExpression()), !dbg !2210
  br label %24, !dbg !2222

15:                                               ; preds = %7, %19
  %16 = phi i32 [ %20, %19 ], [ 0, %7 ]
  call void @llvm.dbg.value(metadata i32 %16, metadata !2206, metadata !DIExpression()), !dbg !2210
  %17 = icmp eq i32 %8, %16, !dbg !2223
  br i1 %17, label %18, label %19, !dbg !2225

18:                                               ; preds = %15
  tail call void (i8*, i32, i8*, ...) @log_hal_info_internal(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__FUNCTION__.halRegGPInterrupt_set_debounce, i32 0, i32 0), i32 noundef 708, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i32 0, i32 0), i32 noundef %0) #15, !dbg !2226
  br label %36, !dbg !2228

19:                                               ; preds = %15
  %20 = add nuw i32 %16, 1, !dbg !2229
  call void @llvm.dbg.value(metadata i32 %20, metadata !2206, metadata !DIExpression()), !dbg !2210
  %21 = getelementptr inbounds [0 x %struct.hal_eint_gpio_map_t], [0 x %struct.hal_eint_gpio_map_t]* bitcast ([23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table to [0 x %struct.hal_eint_gpio_map_t]*), i32 0, i32 %20, i32 1, !dbg !2215
  %22 = load i32, i32* %21, align 4, !dbg !2215
  %23 = icmp eq i32 %22, %0, !dbg !2218
  br i1 %23, label %11, label %15, !dbg !2219, !llvm.loop !2230

24:                                               ; preds = %4, %11
  %25 = phi i32 [ %14, %11 ], [ 255, %4 ], !dbg !2210
  call void @llvm.dbg.value(metadata i32 %25, metadata !2207, metadata !DIExpression()), !dbg !2210
  tail call fastcc void @NVIC_DisableIRQ(i32 noundef %25) #16, !dbg !2232
  %26 = zext i8 %3 to i32, !dbg !2233
  %27 = zext i8 %2 to i32, !dbg !2234
  %28 = shl nuw nsw i32 %27, 4, !dbg !2235
  %29 = zext i8 %1 to i32, !dbg !2236
  %30 = shl nuw nsw i32 %29, 9, !dbg !2237
  %31 = or i32 %30, %26, !dbg !2238
  %32 = add nuw nsw i32 %31, %28, !dbg !2239
  call void @llvm.dbg.value(metadata i32 %32, metadata !2209, metadata !DIExpression()), !dbg !2210
  %33 = add i32 %25, -30, !dbg !2240
  call void @llvm.dbg.value(metadata i32 %33, metadata !2208, metadata !DIExpression()), !dbg !2210
  %34 = getelementptr inbounds [66 x i32], [66 x i32]* inttoptr (i32 -2097102848 to [66 x i32]*), i32 0, i32 %33, !dbg !2241
  store volatile i32 %32, i32* %34, align 4, !dbg !2242
  tail call fastcc void @NVIC_EnableIRQ(i32 noundef %25) #16, !dbg !2243
  %35 = tail call i32 @hal_gpt_delay_us(i32 noundef 100) #15, !dbg !2244
  br label %36, !dbg !2245

36:                                               ; preds = %24, %18
  %37 = phi i32 [ 0, %24 ], [ -1, %18 ], !dbg !2210
  ret i32 %37, !dbg !2246
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @halRegGPInterrupt_mask(i32 noundef %0) local_unnamed_addr #0 !dbg !2247 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2249, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i32 255, metadata !2251, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i32 0, metadata !2250, metadata !DIExpression()), !dbg !2252
  %2 = load i32, i32* @hal_eint_count_max, align 4
  call void @llvm.dbg.value(metadata i32 0, metadata !2250, metadata !DIExpression()), !dbg !2252
  %3 = icmp eq i32 %2, 0, !dbg !2253
  br i1 %3, label %21, label %4, !dbg !2256

4:                                                ; preds = %1
  %5 = add i32 %2, -1
  call void @llvm.dbg.value(metadata i32 0, metadata !2250, metadata !DIExpression()), !dbg !2252
  %6 = load i32, i32* getelementptr inbounds ([23 x %struct.hal_eint_gpio_map_t], [23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table, i32 0, i32 0, i32 1), align 4, !dbg !2257
  %7 = icmp eq i32 %6, %0, !dbg !2260
  br i1 %7, label %8, label %12, !dbg !2261

8:                                                ; preds = %16, %4
  %9 = phi i32 [ 0, %4 ], [ %17, %16 ]
  %10 = getelementptr inbounds [0 x %struct.hal_eint_gpio_map_t], [0 x %struct.hal_eint_gpio_map_t]* bitcast ([23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table to [0 x %struct.hal_eint_gpio_map_t]*), i32 0, i32 %9, i32 2, !dbg !2262
  %11 = load i32, i32* %10, align 4, !dbg !2262
  call void @llvm.dbg.value(metadata i32 %11, metadata !2251, metadata !DIExpression()), !dbg !2252
  br label %21, !dbg !2264

12:                                               ; preds = %4, %16
  %13 = phi i32 [ %17, %16 ], [ 0, %4 ]
  call void @llvm.dbg.value(metadata i32 %13, metadata !2250, metadata !DIExpression()), !dbg !2252
  %14 = icmp eq i32 %5, %13, !dbg !2265
  br i1 %14, label %15, label %16, !dbg !2267

15:                                               ; preds = %12
  tail call void (i8*, i32, i8*, ...) @log_hal_info_internal(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.halRegGPInterrupt_mask, i32 0, i32 0), i32 noundef 737, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i32 0, i32 0), i32 noundef %0) #15, !dbg !2268
  br label %23, !dbg !2270

16:                                               ; preds = %12
  %17 = add nuw i32 %13, 1, !dbg !2271
  call void @llvm.dbg.value(metadata i32 %17, metadata !2250, metadata !DIExpression()), !dbg !2252
  %18 = getelementptr inbounds [0 x %struct.hal_eint_gpio_map_t], [0 x %struct.hal_eint_gpio_map_t]* bitcast ([23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table to [0 x %struct.hal_eint_gpio_map_t]*), i32 0, i32 %17, i32 1, !dbg !2257
  %19 = load i32, i32* %18, align 4, !dbg !2257
  %20 = icmp eq i32 %19, %0, !dbg !2260
  br i1 %20, label %8, label %12, !dbg !2261, !llvm.loop !2272

21:                                               ; preds = %1, %8
  %22 = phi i32 [ %11, %8 ], [ 255, %1 ], !dbg !2252
  call void @llvm.dbg.value(metadata i32 %22, metadata !2251, metadata !DIExpression()), !dbg !2252
  tail call fastcc void @NVIC_DisableIRQ(i32 noundef %22) #16, !dbg !2274
  br label %23, !dbg !2275

23:                                               ; preds = %21, %15
  %24 = phi i32 [ 0, %21 ], [ -1, %15 ], !dbg !2252
  ret i32 %24, !dbg !2276
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @halRegGPInterrupt_unmask(i32 noundef %0) local_unnamed_addr #0 !dbg !2277 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2279, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i32 255, metadata !2281, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i32 0, metadata !2280, metadata !DIExpression()), !dbg !2282
  %2 = load i32, i32* @hal_eint_count_max, align 4
  call void @llvm.dbg.value(metadata i32 0, metadata !2280, metadata !DIExpression()), !dbg !2282
  %3 = icmp eq i32 %2, 0, !dbg !2283
  br i1 %3, label %21, label %4, !dbg !2286

4:                                                ; preds = %1
  %5 = add i32 %2, -1
  call void @llvm.dbg.value(metadata i32 0, metadata !2280, metadata !DIExpression()), !dbg !2282
  %6 = load i32, i32* getelementptr inbounds ([23 x %struct.hal_eint_gpio_map_t], [23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table, i32 0, i32 0, i32 1), align 4, !dbg !2287
  %7 = icmp eq i32 %6, %0, !dbg !2290
  br i1 %7, label %8, label %12, !dbg !2291

8:                                                ; preds = %16, %4
  %9 = phi i32 [ 0, %4 ], [ %17, %16 ]
  %10 = getelementptr inbounds [0 x %struct.hal_eint_gpio_map_t], [0 x %struct.hal_eint_gpio_map_t]* bitcast ([23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table to [0 x %struct.hal_eint_gpio_map_t]*), i32 0, i32 %9, i32 2, !dbg !2292
  %11 = load i32, i32* %10, align 4, !dbg !2292
  call void @llvm.dbg.value(metadata i32 %11, metadata !2281, metadata !DIExpression()), !dbg !2282
  br label %21, !dbg !2294

12:                                               ; preds = %4, %16
  %13 = phi i32 [ %17, %16 ], [ 0, %4 ]
  call void @llvm.dbg.value(metadata i32 %13, metadata !2280, metadata !DIExpression()), !dbg !2282
  %14 = icmp eq i32 %5, %13, !dbg !2295
  br i1 %14, label %15, label %16, !dbg !2297

15:                                               ; preds = %12
  tail call void (i8*, i32, i8*, ...) @log_hal_info_internal(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.halRegGPInterrupt_unmask, i32 0, i32 0), i32 noundef 758, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i32 0, i32 0), i32 noundef %0) #15, !dbg !2298
  br label %23, !dbg !2300

16:                                               ; preds = %12
  %17 = add nuw i32 %13, 1, !dbg !2301
  call void @llvm.dbg.value(metadata i32 %17, metadata !2280, metadata !DIExpression()), !dbg !2282
  %18 = getelementptr inbounds [0 x %struct.hal_eint_gpio_map_t], [0 x %struct.hal_eint_gpio_map_t]* bitcast ([23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table to [0 x %struct.hal_eint_gpio_map_t]*), i32 0, i32 %17, i32 1, !dbg !2287
  %19 = load i32, i32* %18, align 4, !dbg !2287
  %20 = icmp eq i32 %19, %0, !dbg !2290
  br i1 %20, label %8, label %12, !dbg !2291, !llvm.loop !2302

21:                                               ; preds = %1, %8
  %22 = phi i32 [ %11, %8 ], [ 255, %1 ], !dbg !2282
  call void @llvm.dbg.value(metadata i32 %22, metadata !2281, metadata !DIExpression()), !dbg !2282
  tail call fastcc void @NVIC_EnableIRQ(i32 noundef %22) #16, !dbg !2304
  br label %23, !dbg !2305

23:                                               ; preds = %21, %15
  %24 = phi i32 [ 0, %21 ], [ -1, %15 ], !dbg !2282
  ret i32 %24, !dbg !2306
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @halRegGP_set_software_trigger(i32 noundef %0) local_unnamed_addr #0 !dbg !2307 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2309, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i32 255, metadata !2311, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i32 0, metadata !2310, metadata !DIExpression()), !dbg !2312
  %2 = load i32, i32* @hal_eint_count_max, align 4
  call void @llvm.dbg.value(metadata i32 0, metadata !2310, metadata !DIExpression()), !dbg !2312
  %3 = icmp eq i32 %2, 0, !dbg !2313
  br i1 %3, label %21, label %4, !dbg !2316

4:                                                ; preds = %1
  %5 = add i32 %2, -1
  call void @llvm.dbg.value(metadata i32 0, metadata !2310, metadata !DIExpression()), !dbg !2312
  %6 = load i32, i32* getelementptr inbounds ([23 x %struct.hal_eint_gpio_map_t], [23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table, i32 0, i32 0, i32 1), align 4, !dbg !2317
  %7 = icmp eq i32 %6, %0, !dbg !2320
  br i1 %7, label %8, label %12, !dbg !2321

8:                                                ; preds = %16, %4
  %9 = phi i32 [ 0, %4 ], [ %17, %16 ]
  %10 = getelementptr inbounds [0 x %struct.hal_eint_gpio_map_t], [0 x %struct.hal_eint_gpio_map_t]* bitcast ([23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table to [0 x %struct.hal_eint_gpio_map_t]*), i32 0, i32 %9, i32 2, !dbg !2322
  %11 = load i32, i32* %10, align 4, !dbg !2322
  call void @llvm.dbg.value(metadata i32 %11, metadata !2311, metadata !DIExpression()), !dbg !2312
  br label %21, !dbg !2324

12:                                               ; preds = %4, %16
  %13 = phi i32 [ %17, %16 ], [ 0, %4 ]
  call void @llvm.dbg.value(metadata i32 %13, metadata !2310, metadata !DIExpression()), !dbg !2312
  %14 = icmp eq i32 %5, %13, !dbg !2325
  br i1 %14, label %15, label %16, !dbg !2327

15:                                               ; preds = %12
  tail call void (i8*, i32, i8*, ...) @log_hal_info_internal(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__FUNCTION__.halRegGP_set_software_trigger, i32 0, i32 0), i32 noundef 785, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i32 0, i32 0), i32 noundef %0) #15, !dbg !2328
  br label %23, !dbg !2330

16:                                               ; preds = %12
  %17 = add nuw i32 %13, 1, !dbg !2331
  call void @llvm.dbg.value(metadata i32 %17, metadata !2310, metadata !DIExpression()), !dbg !2312
  %18 = getelementptr inbounds [0 x %struct.hal_eint_gpio_map_t], [0 x %struct.hal_eint_gpio_map_t]* bitcast ([23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table to [0 x %struct.hal_eint_gpio_map_t]*), i32 0, i32 %17, i32 1, !dbg !2317
  %19 = load i32, i32* %18, align 4, !dbg !2317
  %20 = icmp eq i32 %19, %0, !dbg !2320
  br i1 %20, label %8, label %12, !dbg !2321, !llvm.loop !2332

21:                                               ; preds = %1, %8
  %22 = phi i32 [ %11, %8 ], [ 255, %1 ], !dbg !2312
  call void @llvm.dbg.value(metadata i32 %22, metadata !2311, metadata !DIExpression()), !dbg !2312
  tail call fastcc void @software_trigger_irq(i32 noundef %22) #16, !dbg !2334
  br label %23, !dbg !2335

23:                                               ; preds = %21, %15
  %24 = phi i32 [ 0, %21 ], [ -1, %15 ], !dbg !2312
  ret i32 %24, !dbg !2336
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @software_trigger_irq(i32 noundef %0) unnamed_addr #3 !dbg !2337 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2341, metadata !DIExpression()), !dbg !2342
  %2 = and i32 %0, 511, !dbg !2343
  store volatile i32 %2, i32* inttoptr (i32 -536809728 to i32*), align 256, !dbg !2344
  ret void, !dbg !2345
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @halRegGP_clear_software_trigger(i32 noundef %0) local_unnamed_addr #0 !dbg !2346 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2348, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i32 255, metadata !2350, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i32 0, metadata !2349, metadata !DIExpression()), !dbg !2351
  %2 = load i32, i32* @hal_eint_count_max, align 4
  call void @llvm.dbg.value(metadata i32 0, metadata !2349, metadata !DIExpression()), !dbg !2351
  %3 = icmp eq i32 %2, 0, !dbg !2352
  br i1 %3, label %21, label %4, !dbg !2355

4:                                                ; preds = %1
  %5 = add i32 %2, -1
  call void @llvm.dbg.value(metadata i32 0, metadata !2349, metadata !DIExpression()), !dbg !2351
  %6 = load i32, i32* getelementptr inbounds ([23 x %struct.hal_eint_gpio_map_t], [23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table, i32 0, i32 0, i32 1), align 4, !dbg !2356
  %7 = icmp eq i32 %6, %0, !dbg !2359
  br i1 %7, label %8, label %12, !dbg !2360

8:                                                ; preds = %16, %4
  %9 = phi i32 [ 0, %4 ], [ %17, %16 ]
  %10 = getelementptr inbounds [0 x %struct.hal_eint_gpio_map_t], [0 x %struct.hal_eint_gpio_map_t]* bitcast ([23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table to [0 x %struct.hal_eint_gpio_map_t]*), i32 0, i32 %9, i32 2, !dbg !2361
  %11 = load i32, i32* %10, align 4, !dbg !2361
  call void @llvm.dbg.value(metadata i32 %11, metadata !2350, metadata !DIExpression()), !dbg !2351
  br label %21, !dbg !2363

12:                                               ; preds = %4, %16
  %13 = phi i32 [ %17, %16 ], [ 0, %4 ]
  call void @llvm.dbg.value(metadata i32 %13, metadata !2349, metadata !DIExpression()), !dbg !2351
  %14 = icmp eq i32 %5, %13, !dbg !2364
  br i1 %14, label %15, label %16, !dbg !2366

15:                                               ; preds = %12
  tail call void (i8*, i32, i8*, ...) @log_hal_info_internal(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__FUNCTION__.halRegGP_clear_software_trigger, i32 0, i32 0), i32 noundef 808, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i32 0, i32 0), i32 noundef %0) #15, !dbg !2367
  br label %23, !dbg !2369

16:                                               ; preds = %12
  %17 = add nuw i32 %13, 1, !dbg !2370
  call void @llvm.dbg.value(metadata i32 %17, metadata !2349, metadata !DIExpression()), !dbg !2351
  %18 = getelementptr inbounds [0 x %struct.hal_eint_gpio_map_t], [0 x %struct.hal_eint_gpio_map_t]* bitcast ([23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table to [0 x %struct.hal_eint_gpio_map_t]*), i32 0, i32 %17, i32 1, !dbg !2356
  %19 = load i32, i32* %18, align 4, !dbg !2356
  %20 = icmp eq i32 %19, %0, !dbg !2359
  br i1 %20, label %8, label %12, !dbg !2360, !llvm.loop !2371

21:                                               ; preds = %1, %8
  %22 = phi i32 [ %11, %8 ], [ 255, %1 ], !dbg !2351
  call void @llvm.dbg.value(metadata i32 %22, metadata !2350, metadata !DIExpression()), !dbg !2351
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %22) #16, !dbg !2373
  br label %23, !dbg !2374

23:                                               ; preds = %21, %15
  %24 = phi i32 [ 0, %21 ], [ -1, %15 ], !dbg !2351
  ret i32 %24, !dbg !2375
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !2376 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2381, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata i8 %1, metadata !2382, metadata !DIExpression()), !dbg !2384
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
  ], !dbg !2385

3:                                                ; preds = %2
  %4 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2386
  call void @llvm.dbg.value(metadata i32 %4, metadata !2383, metadata !DIExpression()), !dbg !2384
  %5 = and i32 %4, -16, !dbg !2388
  call void @llvm.dbg.value(metadata i32 %5, metadata !2383, metadata !DIExpression()), !dbg !2384
  %6 = zext i8 %1 to i32, !dbg !2389
  %7 = or i32 %5, %6, !dbg !2390
  store volatile i32 %7, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2391
  br label %187, !dbg !2392

8:                                                ; preds = %2
  %9 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2393
  call void @llvm.dbg.value(metadata i32 %9, metadata !2383, metadata !DIExpression()), !dbg !2384
  %10 = and i32 %9, -241, !dbg !2394
  call void @llvm.dbg.value(metadata i32 %10, metadata !2383, metadata !DIExpression()), !dbg !2384
  %11 = zext i8 %1 to i32, !dbg !2395
  %12 = shl nuw nsw i32 %11, 4, !dbg !2396
  %13 = or i32 %10, %12, !dbg !2397
  store volatile i32 %13, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2398
  br label %187, !dbg !2399

14:                                               ; preds = %2
  %15 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2400
  call void @llvm.dbg.value(metadata i32 %15, metadata !2383, metadata !DIExpression()), !dbg !2384
  %16 = and i32 %15, -3841, !dbg !2401
  call void @llvm.dbg.value(metadata i32 %16, metadata !2383, metadata !DIExpression()), !dbg !2384
  %17 = zext i8 %1 to i32, !dbg !2402
  %18 = shl nuw nsw i32 %17, 8, !dbg !2403
  %19 = or i32 %16, %18, !dbg !2404
  store volatile i32 %19, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2405
  br label %187, !dbg !2406

20:                                               ; preds = %2
  %21 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2407
  call void @llvm.dbg.value(metadata i32 %21, metadata !2383, metadata !DIExpression()), !dbg !2384
  %22 = and i32 %21, -61441, !dbg !2408
  call void @llvm.dbg.value(metadata i32 %22, metadata !2383, metadata !DIExpression()), !dbg !2384
  %23 = zext i8 %1 to i32, !dbg !2409
  %24 = shl nuw nsw i32 %23, 12, !dbg !2410
  %25 = or i32 %22, %24, !dbg !2411
  store volatile i32 %25, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2412
  br label %187, !dbg !2413

26:                                               ; preds = %2
  %27 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2414
  call void @llvm.dbg.value(metadata i32 %27, metadata !2383, metadata !DIExpression()), !dbg !2384
  %28 = and i32 %27, -983041, !dbg !2415
  call void @llvm.dbg.value(metadata i32 %28, metadata !2383, metadata !DIExpression()), !dbg !2384
  %29 = zext i8 %1 to i32, !dbg !2416
  %30 = shl nuw nsw i32 %29, 16, !dbg !2417
  %31 = or i32 %28, %30, !dbg !2418
  store volatile i32 %31, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2419
  br label %187, !dbg !2420

32:                                               ; preds = %2
  %33 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2421
  call void @llvm.dbg.value(metadata i32 %33, metadata !2383, metadata !DIExpression()), !dbg !2384
  %34 = and i32 %33, -15728641, !dbg !2422
  call void @llvm.dbg.value(metadata i32 %34, metadata !2383, metadata !DIExpression()), !dbg !2384
  %35 = zext i8 %1 to i32, !dbg !2423
  %36 = shl nuw nsw i32 %35, 20, !dbg !2424
  %37 = or i32 %34, %36, !dbg !2425
  store volatile i32 %37, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2426
  br label %187, !dbg !2427

38:                                               ; preds = %2
  %39 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2428
  call void @llvm.dbg.value(metadata i32 %39, metadata !2383, metadata !DIExpression()), !dbg !2384
  %40 = and i32 %39, -251658241, !dbg !2429
  call void @llvm.dbg.value(metadata i32 %40, metadata !2383, metadata !DIExpression()), !dbg !2384
  %41 = zext i8 %1 to i32, !dbg !2430
  %42 = shl nuw i32 %41, 24, !dbg !2431
  %43 = or i32 %40, %42, !dbg !2432
  store volatile i32 %43, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2433
  br label %187, !dbg !2434

44:                                               ; preds = %2
  %45 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2435
  call void @llvm.dbg.value(metadata i32 %45, metadata !2383, metadata !DIExpression()), !dbg !2384
  %46 = and i32 %45, 268435455, !dbg !2436
  call void @llvm.dbg.value(metadata i32 %46, metadata !2383, metadata !DIExpression()), !dbg !2384
  %47 = zext i8 %1 to i32, !dbg !2437
  %48 = shl i32 %47, 28, !dbg !2438
  %49 = or i32 %46, %48, !dbg !2439
  store volatile i32 %49, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2440
  br label %187, !dbg !2441

50:                                               ; preds = %2
  %51 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2442
  call void @llvm.dbg.value(metadata i32 %51, metadata !2383, metadata !DIExpression()), !dbg !2384
  %52 = and i32 %51, -16, !dbg !2443
  call void @llvm.dbg.value(metadata i32 %52, metadata !2383, metadata !DIExpression()), !dbg !2384
  %53 = zext i8 %1 to i32, !dbg !2444
  %54 = or i32 %52, %53, !dbg !2445
  store volatile i32 %54, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2446
  br label %187, !dbg !2447

55:                                               ; preds = %2
  %56 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2448
  call void @llvm.dbg.value(metadata i32 %56, metadata !2383, metadata !DIExpression()), !dbg !2384
  %57 = and i32 %56, -241, !dbg !2449
  call void @llvm.dbg.value(metadata i32 %57, metadata !2383, metadata !DIExpression()), !dbg !2384
  %58 = zext i8 %1 to i32, !dbg !2450
  %59 = shl nuw nsw i32 %58, 4, !dbg !2451
  %60 = or i32 %57, %59, !dbg !2452
  store volatile i32 %60, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2453
  br label %187, !dbg !2454

61:                                               ; preds = %2
  %62 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2455
  call void @llvm.dbg.value(metadata i32 %62, metadata !2383, metadata !DIExpression()), !dbg !2384
  %63 = and i32 %62, -3841, !dbg !2456
  call void @llvm.dbg.value(metadata i32 %63, metadata !2383, metadata !DIExpression()), !dbg !2384
  %64 = zext i8 %1 to i32, !dbg !2457
  %65 = shl nuw nsw i32 %64, 8, !dbg !2458
  %66 = or i32 %63, %65, !dbg !2459
  store volatile i32 %66, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2460
  br label %187, !dbg !2461

67:                                               ; preds = %2
  %68 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2462
  call void @llvm.dbg.value(metadata i32 %68, metadata !2383, metadata !DIExpression()), !dbg !2384
  %69 = and i32 %68, -61441, !dbg !2463
  call void @llvm.dbg.value(metadata i32 %69, metadata !2383, metadata !DIExpression()), !dbg !2384
  %70 = zext i8 %1 to i32, !dbg !2464
  %71 = shl nuw nsw i32 %70, 12, !dbg !2465
  %72 = or i32 %69, %71, !dbg !2466
  store volatile i32 %72, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2467
  switch i8 %1, label %187 [
    i8 5, label %73
    i8 4, label %73
    i8 2, label %73
  ], !dbg !2468

73:                                               ; preds = %67, %67, %67
  %74 = tail call i32 @halGPIO_ConfDirection(i32 noundef 27, i8 noundef zeroext 0) #15, !dbg !2470
  br label %187, !dbg !2472

75:                                               ; preds = %2
  %76 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2473
  call void @llvm.dbg.value(metadata i32 %76, metadata !2383, metadata !DIExpression()), !dbg !2384
  %77 = and i32 %76, -983041, !dbg !2474
  call void @llvm.dbg.value(metadata i32 %77, metadata !2383, metadata !DIExpression()), !dbg !2384
  %78 = zext i8 %1 to i32, !dbg !2475
  %79 = shl nuw nsw i32 %78, 16, !dbg !2476
  %80 = or i32 %77, %79, !dbg !2477
  store volatile i32 %80, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2478
  %81 = and i8 %1, -2, !dbg !2479
  %82 = icmp eq i8 %81, 4, !dbg !2479
  br i1 %82, label %83, label %187, !dbg !2479

83:                                               ; preds = %75
  %84 = tail call i32 @halGPIO_ConfDirection(i32 noundef 28, i8 noundef zeroext 0) #15, !dbg !2481
  br label %187, !dbg !2483

85:                                               ; preds = %2
  %86 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2484
  call void @llvm.dbg.value(metadata i32 %86, metadata !2383, metadata !DIExpression()), !dbg !2384
  %87 = and i32 %86, -15728641, !dbg !2485
  call void @llvm.dbg.value(metadata i32 %87, metadata !2383, metadata !DIExpression()), !dbg !2384
  %88 = zext i8 %1 to i32, !dbg !2486
  %89 = shl nuw nsw i32 %88, 20, !dbg !2487
  %90 = or i32 %87, %89, !dbg !2488
  store volatile i32 %90, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2489
  %91 = icmp eq i8 %1, 6, !dbg !2490
  br i1 %91, label %92, label %187, !dbg !2492

92:                                               ; preds = %85
  %93 = tail call i32 @halGPIO_ConfDirection(i32 noundef 29, i8 noundef zeroext 0) #15, !dbg !2493
  br label %187, !dbg !2495

94:                                               ; preds = %2
  %95 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2496
  call void @llvm.dbg.value(metadata i32 %95, metadata !2383, metadata !DIExpression()), !dbg !2384
  %96 = and i32 %95, -251658241, !dbg !2497
  call void @llvm.dbg.value(metadata i32 %96, metadata !2383, metadata !DIExpression()), !dbg !2384
  %97 = zext i8 %1 to i32, !dbg !2498
  %98 = shl nuw i32 %97, 24, !dbg !2499
  %99 = or i32 %96, %98, !dbg !2500
  store volatile i32 %99, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2501
  switch i8 %1, label %187 [
    i8 7, label %100
    i8 4, label %100
  ], !dbg !2502

100:                                              ; preds = %94, %94
  %101 = tail call i32 @halGPIO_ConfDirection(i32 noundef 30, i8 noundef zeroext 0) #15, !dbg !2504
  br label %187, !dbg !2506

102:                                              ; preds = %2
  %103 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2507
  call void @llvm.dbg.value(metadata i32 %103, metadata !2383, metadata !DIExpression()), !dbg !2384
  %104 = and i32 %103, 268435455, !dbg !2508
  call void @llvm.dbg.value(metadata i32 %104, metadata !2383, metadata !DIExpression()), !dbg !2384
  %105 = zext i8 %1 to i32, !dbg !2509
  %106 = shl i32 %105, 28, !dbg !2510
  %107 = or i32 %104, %106, !dbg !2511
  store volatile i32 %107, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2512
  %108 = and i8 %1, -3, !dbg !2513
  %109 = icmp eq i8 %108, 4, !dbg !2513
  br i1 %109, label %110, label %187, !dbg !2513

110:                                              ; preds = %102
  %111 = tail call i32 @halGPIO_ConfDirection(i32 noundef 31, i8 noundef zeroext 0) #15, !dbg !2515
  br label %187, !dbg !2517

112:                                              ; preds = %2
  %113 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2518
  call void @llvm.dbg.value(metadata i32 %113, metadata !2383, metadata !DIExpression()), !dbg !2384
  %114 = and i32 %113, -16, !dbg !2519
  call void @llvm.dbg.value(metadata i32 %114, metadata !2383, metadata !DIExpression()), !dbg !2384
  %115 = zext i8 %1 to i32, !dbg !2520
  %116 = or i32 %114, %115, !dbg !2521
  store volatile i32 %116, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2522
  %117 = and i8 %1, -3, !dbg !2523
  %118 = icmp eq i8 %117, 4, !dbg !2523
  br i1 %118, label %119, label %187, !dbg !2523

119:                                              ; preds = %112
  %120 = tail call i32 @halGPIO_ConfDirection(i32 noundef 32, i8 noundef zeroext 0) #15, !dbg !2525
  br label %187, !dbg !2527

121:                                              ; preds = %2
  %122 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2528
  call void @llvm.dbg.value(metadata i32 %122, metadata !2383, metadata !DIExpression()), !dbg !2384
  %123 = and i32 %122, -241, !dbg !2529
  call void @llvm.dbg.value(metadata i32 %123, metadata !2383, metadata !DIExpression()), !dbg !2384
  %124 = zext i8 %1 to i32, !dbg !2530
  %125 = shl nuw nsw i32 %124, 4, !dbg !2531
  %126 = or i32 %123, %125, !dbg !2532
  store volatile i32 %126, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2533
  br label %187, !dbg !2534

127:                                              ; preds = %2
  %128 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2535
  call void @llvm.dbg.value(metadata i32 %128, metadata !2383, metadata !DIExpression()), !dbg !2384
  %129 = and i32 %128, -3841, !dbg !2536
  call void @llvm.dbg.value(metadata i32 %129, metadata !2383, metadata !DIExpression()), !dbg !2384
  %130 = zext i8 %1 to i32, !dbg !2537
  %131 = shl nuw nsw i32 %130, 8, !dbg !2538
  %132 = or i32 %129, %131, !dbg !2539
  store volatile i32 %132, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2540
  br label %187, !dbg !2541

133:                                              ; preds = %2
  %134 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2542
  call void @llvm.dbg.value(metadata i32 %134, metadata !2383, metadata !DIExpression()), !dbg !2384
  %135 = and i32 %134, -61441, !dbg !2543
  call void @llvm.dbg.value(metadata i32 %135, metadata !2383, metadata !DIExpression()), !dbg !2384
  %136 = zext i8 %1 to i32, !dbg !2544
  %137 = shl nuw nsw i32 %136, 12, !dbg !2545
  %138 = or i32 %135, %137, !dbg !2546
  store volatile i32 %138, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2547
  br label %187, !dbg !2548

139:                                              ; preds = %2
  %140 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2549
  call void @llvm.dbg.value(metadata i32 %140, metadata !2383, metadata !DIExpression()), !dbg !2384
  %141 = and i32 %140, -983041, !dbg !2550
  call void @llvm.dbg.value(metadata i32 %141, metadata !2383, metadata !DIExpression()), !dbg !2384
  %142 = zext i8 %1 to i32, !dbg !2551
  %143 = shl nuw nsw i32 %142, 16, !dbg !2552
  %144 = or i32 %141, %143, !dbg !2553
  store volatile i32 %144, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2554
  br label %187, !dbg !2555

145:                                              ; preds = %2
  %146 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2556
  call void @llvm.dbg.value(metadata i32 %146, metadata !2383, metadata !DIExpression()), !dbg !2384
  %147 = and i32 %146, -15728641, !dbg !2557
  call void @llvm.dbg.value(metadata i32 %147, metadata !2383, metadata !DIExpression()), !dbg !2384
  %148 = zext i8 %1 to i32, !dbg !2558
  %149 = shl nuw nsw i32 %148, 20, !dbg !2559
  %150 = or i32 %147, %149, !dbg !2560
  store volatile i32 %150, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2561
  br label %187, !dbg !2562

151:                                              ; preds = %2
  %152 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2563
  call void @llvm.dbg.value(metadata i32 %152, metadata !2383, metadata !DIExpression()), !dbg !2384
  %153 = and i32 %152, -251658241, !dbg !2564
  call void @llvm.dbg.value(metadata i32 %153, metadata !2383, metadata !DIExpression()), !dbg !2384
  %154 = zext i8 %1 to i32, !dbg !2565
  %155 = shl nuw i32 %154, 24, !dbg !2566
  %156 = or i32 %153, %155, !dbg !2567
  store volatile i32 %156, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2568
  br label %187, !dbg !2569

157:                                              ; preds = %2
  %158 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2570
  call void @llvm.dbg.value(metadata i32 %158, metadata !2383, metadata !DIExpression()), !dbg !2384
  %159 = and i32 %158, 268435455, !dbg !2571
  call void @llvm.dbg.value(metadata i32 %159, metadata !2383, metadata !DIExpression()), !dbg !2384
  %160 = zext i8 %1 to i32, !dbg !2572
  %161 = shl i32 %160, 28, !dbg !2573
  %162 = or i32 %159, %161, !dbg !2574
  store volatile i32 %162, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2575
  br label %187, !dbg !2576

163:                                              ; preds = %2
  %164 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2577
  call void @llvm.dbg.value(metadata i32 %164, metadata !2383, metadata !DIExpression()), !dbg !2384
  %165 = and i32 %164, -241, !dbg !2578
  call void @llvm.dbg.value(metadata i32 %165, metadata !2383, metadata !DIExpression()), !dbg !2384
  %166 = zext i8 %1 to i32, !dbg !2579
  %167 = shl nuw nsw i32 %166, 4, !dbg !2580
  %168 = or i32 %165, %167, !dbg !2581
  store volatile i32 %168, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2582
  br label %187, !dbg !2583

169:                                              ; preds = %2
  %170 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2584
  call void @llvm.dbg.value(metadata i32 %170, metadata !2383, metadata !DIExpression()), !dbg !2384
  %171 = and i32 %170, -3841, !dbg !2585
  call void @llvm.dbg.value(metadata i32 %171, metadata !2383, metadata !DIExpression()), !dbg !2384
  %172 = zext i8 %1 to i32, !dbg !2586
  %173 = shl nuw nsw i32 %172, 8, !dbg !2587
  %174 = or i32 %171, %173, !dbg !2588
  store volatile i32 %174, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2589
  br label %187, !dbg !2590

175:                                              ; preds = %2
  %176 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2591
  call void @llvm.dbg.value(metadata i32 %176, metadata !2383, metadata !DIExpression()), !dbg !2384
  %177 = and i32 %176, -61441, !dbg !2592
  call void @llvm.dbg.value(metadata i32 %177, metadata !2383, metadata !DIExpression()), !dbg !2384
  %178 = zext i8 %1 to i32, !dbg !2593
  %179 = shl nuw nsw i32 %178, 12, !dbg !2594
  %180 = or i32 %177, %179, !dbg !2595
  store volatile i32 %180, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2596
  br label %187, !dbg !2597

181:                                              ; preds = %2
  %182 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2598
  call void @llvm.dbg.value(metadata i32 %182, metadata !2383, metadata !DIExpression()), !dbg !2384
  %183 = and i32 %182, -983041, !dbg !2599
  call void @llvm.dbg.value(metadata i32 %183, metadata !2383, metadata !DIExpression()), !dbg !2384
  %184 = zext i8 %1 to i32, !dbg !2600
  %185 = shl nuw nsw i32 %184, 16, !dbg !2601
  %186 = or i32 %183, %185, !dbg !2602
  store volatile i32 %186, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2603
  br label %187, !dbg !2604

187:                                              ; preds = %94, %67, %2, %119, %112, %110, %102, %100, %85, %92, %83, %75, %73, %181, %175, %169, %163, %157, %151, %145, %139, %133, %127, %121, %61, %55, %50, %44, %38, %32, %26, %20, %14, %8, %3
  ret void, !dbg !2605
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_direction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !2606 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2610, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i32 %1, metadata !2611, metadata !DIExpression()), !dbg !2612
  %3 = trunc i32 %1 to i8, !dbg !2613
  %4 = tail call i32 @halGPIO_ConfDirection(i32 noundef %0, i8 noundef zeroext %3) #15, !dbg !2614
  ret i32 %4, !dbg !2615
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_write(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !2616 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2620, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i8 %1, metadata !2621, metadata !DIExpression()), !dbg !2622
  %3 = tail call i32 @halGPO_Write(i32 noundef %0, i8 noundef zeroext %1) #15, !dbg !2623
  ret i32 %3, !dbg !2624
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_int(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8 noundef zeroext %6, void (i32)* noundef %7) local_unnamed_addr #0 !dbg !2625 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2633, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i32 %1, metadata !2634, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i32 %2, metadata !2635, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i32 %3, metadata !2636, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i32 %4, metadata !2637, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i32 %5, metadata !2638, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i8 %6, metadata !2639, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata void (i32)* %7, metadata !2640, metadata !DIExpression()), !dbg !2641
  %9 = trunc i32 %1 to i8, !dbg !2642
  %10 = trunc i32 %2 to i8, !dbg !2643
  %11 = trunc i32 %3 to i8, !dbg !2644
  %12 = trunc i32 %4 to i8, !dbg !2645
  %13 = trunc i32 %5 to i8, !dbg !2646
  %14 = tail call i32 @halRegGPInterrupt(i32 noundef %0, i8 noundef zeroext %9, i8 noundef zeroext %10, i8 noundef zeroext %11, i8 noundef zeroext %12, i8 noundef zeroext %13, i8 noundef zeroext %6, void (i32)* noundef %7) #15, !dbg !2647
  ret i32 %14, !dbg !2648
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @eint_set_trigger_mode(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !dbg !2649 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2653, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i32 %1, metadata !2654, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i32 %2, metadata !2655, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i32 %3, metadata !2656, metadata !DIExpression()), !dbg !2657
  %5 = trunc i32 %1 to i8, !dbg !2658
  %6 = trunc i32 %2 to i8, !dbg !2659
  %7 = trunc i32 %3 to i8, !dbg !2660
  %8 = tail call i32 @halRegGPInterrupt_set_triggermode(i32 noundef %0, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7) #15, !dbg !2661
  ret i32 %8, !dbg !2662
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @eint_set_debounce(i32 noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 !dbg !2663 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2667, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i32 %1, metadata !2668, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i32 %2, metadata !2669, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i8 %3, metadata !2670, metadata !DIExpression()), !dbg !2671
  %5 = trunc i32 %1 to i8, !dbg !2672
  %6 = trunc i32 %2 to i8, !dbg !2673
  %7 = tail call i32 @halRegGPInterrupt_set_debounce(i32 noundef %0, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %3) #15, !dbg !2674
  ret i32 %7, !dbg !2675
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @eint_set_mask(i32 noundef %0) local_unnamed_addr #0 !dbg !2676 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2680, metadata !DIExpression()), !dbg !2681
  %2 = tail call i32 @halRegGPInterrupt_mask(i32 noundef %0) #15, !dbg !2682
  ret i32 %2, !dbg !2683
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @eint_set_unmask(i32 noundef %0) local_unnamed_addr #0 !dbg !2684 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2686, metadata !DIExpression()), !dbg !2687
  %2 = tail call i32 @halRegGPInterrupt_unmask(i32 noundef %0) #15, !dbg !2688
  ret i32 %2, !dbg !2689
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @eint_set_software_trigger(i32 noundef %0) local_unnamed_addr #0 !dbg !2690 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2692, metadata !DIExpression()), !dbg !2693
  %2 = tail call i32 @halRegGP_set_software_trigger(i32 noundef %0) #15, !dbg !2694
  ret i32 %2, !dbg !2695
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @eint_clear_software_trigger(i32 noundef %0) local_unnamed_addr #0 !dbg !2696 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2698, metadata !DIExpression()), !dbg !2699
  %2 = tail call i32 @halRegGP_clear_software_trigger(i32 noundef %0) #15, !dbg !2700
  ret i32 %2, !dbg !2701
}

; Function Attrs: noinline nounwind optsize
define dso_local void @gpio_get_status(%struct.gpio_status* noalias nocapture writeonly sret(%struct.gpio_status) align 4 %0, i32 noundef %1) local_unnamed_addr #0 !dbg !2702 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !2713, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.declare(metadata %struct.gpio_status* %0, metadata !2714, metadata !DIExpression()), !dbg !2716
  %3 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %0, i32 0, i32 0, !dbg !2717
  store i32 %1, i32* %3, align 4, !dbg !2718
  %4 = tail call zeroext i8 @halgetGPIO_OutEnable(i32 noundef %1) #15, !dbg !2719
  %5 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %0, i32 0, i32 1, !dbg !2720
  store i8 %4, i8* %5, align 4, !dbg !2721
  %6 = tail call zeroext i8 @halgetGPIO_DIN(i32 noundef %1) #15, !dbg !2722
  %7 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %0, i32 0, i32 2, !dbg !2723
  store i8 %6, i8* %7, align 1, !dbg !2724
  %8 = tail call zeroext i8 @halgetGPIO_DOUT(i32 noundef %1) #15, !dbg !2725
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %0, i32 0, i32 3, !dbg !2726
  store i8 %8, i8* %9, align 2, !dbg !2727
  ret void, !dbg !2728
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_PullUp(i32 noundef %0) local_unnamed_addr #0 !dbg !2729 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2731, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i32 0, metadata !2732, metadata !DIExpression()), !dbg !2733
  tail call void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef 1) #15, !dbg !2734
  %2 = tail call i32 @halGPIO_PullUp_SET(i32 noundef %0) #15, !dbg !2735
  call void @llvm.dbg.value(metadata i32 %2, metadata !2732, metadata !DIExpression()), !dbg !2733
  ret i32 %2, !dbg !2736
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_PullDown(i32 noundef %0) local_unnamed_addr #0 !dbg !2737 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2739, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata i32 0, metadata !2740, metadata !DIExpression()), !dbg !2741
  tail call void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef 1) #15, !dbg !2742
  %2 = tail call i32 @halGPIO_PullDown_SET(i32 noundef %0) #15, !dbg !2743
  call void @llvm.dbg.value(metadata i32 %2, metadata !2740, metadata !DIExpression()), !dbg !2741
  ret i32 %2, !dbg !2744
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_PullDisable(i32 noundef %0) local_unnamed_addr #0 !dbg !2745 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2747, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i32 0, metadata !2748, metadata !DIExpression()), !dbg !2749
  tail call void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef 1) #15, !dbg !2750
  %2 = tail call i32 @halGPIO_PullDown_RESET(i32 noundef %0) #15, !dbg !2751
  call void @llvm.dbg.value(metadata i32 %2, metadata !2748, metadata !DIExpression()), !dbg !2749
  %3 = tail call i32 @halGPIO_PullUp_RESET(i32 noundef %0) #15, !dbg !2752
  call void @llvm.dbg.value(metadata i32 %3, metadata !2748, metadata !DIExpression()), !dbg !2749
  ret i32 %3, !dbg !2753
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_SetDriving(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !2754 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2756, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8 %1, metadata !2757, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i32 0, metadata !2758, metadata !DIExpression()), !dbg !2759
  %3 = tail call i32 @halGPIO_SetDriving(i32 noundef %0, i8 noundef zeroext %1) #15, !dbg !2760
  call void @llvm.dbg.value(metadata i32 %3, metadata !2758, metadata !DIExpression()), !dbg !2759
  ret i32 %3, !dbg !2761
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_GetDriving(i32 noundef %0, i8* noundef %1) local_unnamed_addr #0 !dbg !2762 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2766, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i8* %1, metadata !2767, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i32 0, metadata !2768, metadata !DIExpression()), !dbg !2769
  %3 = tail call i32 @halGPIO_GetDriving(i32 noundef %0, i8* noundef %1) #15, !dbg !2770
  call void @llvm.dbg.value(metadata i32 %3, metadata !2768, metadata !DIExpression()), !dbg !2769
  ret i32 %3, !dbg !2771
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @gpio_backup_all_registers() local_unnamed_addr #3 !dbg !2772 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2774, metadata !DIExpression()), !dbg !2775
  br label %1, !dbg !2776

1:                                                ; preds = %0, %1
  %2 = phi i32 [ 0, %0 ], [ %8, %1 ]
  call void @llvm.dbg.value(metadata i32 %2, metadata !2774, metadata !DIExpression()), !dbg !2775
  %3 = getelementptr inbounds [22 x %struct.gpio_backup_restore_t], [22 x %struct.gpio_backup_restore_t]* @gpio_bakup_table, i32 0, i32 %2, i32 1, !dbg !2778
  %4 = load i32, i32* %3, align 4, !dbg !2778
  %5 = inttoptr i32 %4 to i32*, !dbg !2778
  %6 = load volatile i32, i32* %5, align 4, !dbg !2778
  %7 = getelementptr inbounds [22 x %struct.gpio_backup_restore_t], [22 x %struct.gpio_backup_restore_t]* @gpio_bakup_table, i32 0, i32 %2, i32 0, !dbg !2781
  store i32 %6, i32* %7, align 4, !dbg !2782
  %8 = add nuw nsw i32 %2, 1, !dbg !2783
  call void @llvm.dbg.value(metadata i32 %8, metadata !2774, metadata !DIExpression()), !dbg !2775
  %9 = icmp eq i32 %8, 22, !dbg !2784
  br i1 %9, label %10, label %1, !dbg !2776, !llvm.loop !2785

10:                                               ; preds = %1
  ret void, !dbg !2787
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @gpio_restore_all_registers() local_unnamed_addr #3 !dbg !2788 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2790, metadata !DIExpression()), !dbg !2791
  br label %1, !dbg !2792

1:                                                ; preds = %0, %1
  %2 = phi i32 [ 0, %0 ], [ %8, %1 ]
  call void @llvm.dbg.value(metadata i32 %2, metadata !2790, metadata !DIExpression()), !dbg !2791
  %3 = getelementptr inbounds [22 x %struct.gpio_backup_restore_t], [22 x %struct.gpio_backup_restore_t]* @gpio_bakup_table, i32 0, i32 %2, i32 0, !dbg !2794
  %4 = load i32, i32* %3, align 4, !dbg !2794
  %5 = getelementptr inbounds [22 x %struct.gpio_backup_restore_t], [22 x %struct.gpio_backup_restore_t]* @gpio_bakup_table, i32 0, i32 %2, i32 1, !dbg !2797
  %6 = load i32, i32* %5, align 4, !dbg !2797
  %7 = inttoptr i32 %6 to i32*, !dbg !2797
  store volatile i32 %4, i32* %7, align 4, !dbg !2798
  %8 = add nuw nsw i32 %2, 1, !dbg !2799
  call void @llvm.dbg.value(metadata i32 %8, metadata !2790, metadata !DIExpression()), !dbg !2791
  %9 = icmp eq i32 %8, 22, !dbg !2800
  br i1 %9, label %10, label %1, !dbg !2792, !llvm.loop !2801

10:                                               ; preds = %1
  ret void, !dbg !2803
}

; Function Attrs: noinline nounwind optsize
define dso_local void @NVIC_SetupVectorTable(i32 noundef %0) local_unnamed_addr #0 !dbg !2804 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2808, metadata !DIExpression()), !dbg !2809
  store volatile i32 %0, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !2810
  tail call void asm sideeffect "dsb", ""() #18, !dbg !2811, !srcloc !2812
  tail call void asm sideeffect "isb", ""() #18, !dbg !2813, !srcloc !2814
  ret void, !dbg !2815
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @NVIC_SWInt(i32 noundef %0) local_unnamed_addr #3 !dbg !2816 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2820, metadata !DIExpression()), !dbg !2821
  store volatile i32 %0, i32* inttoptr (i32 -536809728 to i32*), align 256, !dbg !2822
  ret void, !dbg !2823
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @save_and_set_interrupt_mask() local_unnamed_addr #0 section ".ramTEXT" !dbg !2824 {
  %1 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #18, !dbg !2829, !srcloc !2836
  call void @llvm.dbg.value(metadata i32 %1, metadata !2833, metadata !DIExpression()) #18, !dbg !2837
  call void @llvm.dbg.value(metadata i32 %1, metadata !2828, metadata !DIExpression()), !dbg !2838
  tail call void asm sideeffect "cpsid i", "~{memory}"() #18, !dbg !2839, !srcloc !2842
  ret i32 %1, !dbg !2843
}

; Function Attrs: noinline nounwind optsize
define dso_local void @restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #0 section ".ramTEXT" !dbg !2844 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2846, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i32 %0, metadata !2848, metadata !DIExpression()) #18, !dbg !2851
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %0) #18, !dbg !2854, !srcloc !2855
  ret void, !dbg !2856
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @pinmux_config(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !2857 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2861, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i32 %1, metadata !2862, metadata !DIExpression()), !dbg !2864
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
  ], !dbg !2865

3:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  call void @llvm.dbg.value(metadata i32 %0, metadata !2863, metadata !DIExpression()), !dbg !2864
  %4 = trunc i32 %1 to i8, !dbg !2866
  tail call void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %4) #15, !dbg !2867
  br label %5, !dbg !2868

5:                                                ; preds = %2, %3
  %6 = phi i32 [ 0, %3 ], [ -1, %2 ], !dbg !2864
  ret i32 %6, !dbg !2869
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @get_current_count() local_unnamed_addr #0 !dbg !2870 {
  %1 = tail call i32 @GPT_return_current_count(i32 noundef 2) #15, !dbg !2871
  ret i32 %1, !dbg !2872
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_time(i32 noundef %0) local_unnamed_addr #0 !dbg !2873 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2875, metadata !DIExpression()), !dbg !2878
  %2 = tail call i32 @get_current_count() #16, !dbg !2879
  %3 = add i32 %2, %0, !dbg !2880
  %4 = xor i32 %3, -1, !dbg !2881
  call void @llvm.dbg.value(metadata i32 %3, metadata !2876, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2878
  %5 = tail call i32 @get_current_count() #16, !dbg !2882
  call void @llvm.dbg.value(metadata i32 %5, metadata !2877, metadata !DIExpression()), !dbg !2878
  %6 = add i32 %5, %4, !dbg !2883
  %7 = icmp slt i32 %6, 0, !dbg !2883
  br i1 %7, label %8, label %12, !dbg !2884

8:                                                ; preds = %1, %8
  %9 = tail call i32 @get_current_count() #16, !dbg !2885
  call void @llvm.dbg.value(metadata i32 %9, metadata !2877, metadata !DIExpression()), !dbg !2878
  %10 = add i32 %9, %4, !dbg !2883
  %11 = icmp slt i32 %10, 0, !dbg !2883
  br i1 %11, label %8, label %12, !dbg !2884, !llvm.loop !2887

12:                                               ; preds = %8, %1
  ret void, !dbg !2889
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_time_for_gpt4(i32 noundef %0) local_unnamed_addr #0 !dbg !2890 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2892, metadata !DIExpression()), !dbg !2895
  %2 = tail call i32 @get_current_gpt4_count() #16, !dbg !2896
  %3 = add i32 %2, %0, !dbg !2897
  %4 = xor i32 %3, -1, !dbg !2898
  call void @llvm.dbg.value(metadata i32 %3, metadata !2893, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2895
  %5 = tail call i32 @get_current_gpt4_count() #16, !dbg !2899
  call void @llvm.dbg.value(metadata i32 %5, metadata !2894, metadata !DIExpression()), !dbg !2895
  %6 = add i32 %5, %4, !dbg !2900
  %7 = icmp slt i32 %6, 0, !dbg !2900
  br i1 %7, label %8, label %12, !dbg !2901

8:                                                ; preds = %1, %8
  %9 = tail call i32 @get_current_gpt4_count() #16, !dbg !2902
  call void @llvm.dbg.value(metadata i32 %9, metadata !2894, metadata !DIExpression()), !dbg !2895
  %10 = add i32 %9, %4, !dbg !2900
  %11 = icmp slt i32 %10, 0, !dbg !2900
  br i1 %11, label %8, label %12, !dbg !2901, !llvm.loop !2904

12:                                               ; preds = %8, %1
  ret void, !dbg !2906
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @get_current_gpt4_count() local_unnamed_addr #0 !dbg !2907 {
  %1 = tail call i32 @GPT_return_current_count(i32 noundef 4) #15, !dbg !2908
  ret i32 %1, !dbg !2909
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_ms(i32 noundef %0) local_unnamed_addr #0 !dbg !2910 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2912, metadata !DIExpression()), !dbg !2914
  %2 = shl i32 %0, 5, !dbg !2915
  call void @llvm.dbg.value(metadata i32 %2, metadata !2913, metadata !DIExpression()), !dbg !2914
  %3 = mul i32 %0, 7, !dbg !2916
  %4 = udiv i32 %3, 10, !dbg !2917
  %5 = add i32 %4, %2, !dbg !2918
  call void @llvm.dbg.value(metadata i32 %5, metadata !2913, metadata !DIExpression()), !dbg !2914
  %6 = mul i32 %0, 6, !dbg !2919
  %7 = udiv i32 %6, 100, !dbg !2920
  %8 = add i32 %5, %7, !dbg !2921
  call void @llvm.dbg.value(metadata i32 %8, metadata !2913, metadata !DIExpression()), !dbg !2914
  %9 = shl i32 %0, 3, !dbg !2922
  %10 = udiv i32 %9, 1000, !dbg !2923
  %11 = add i32 %8, %10, !dbg !2924
  call void @llvm.dbg.value(metadata i32 %11, metadata !2913, metadata !DIExpression()), !dbg !2914
  tail call void @delay_time(i32 noundef %11) #16, !dbg !2925
  ret void, !dbg !2926
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_us(i32 noundef %0) local_unnamed_addr #0 !dbg !2927 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2929, metadata !DIExpression()), !dbg !2932
  %2 = tail call i32 @top_mcu_freq_get() #15, !dbg !2933
  %3 = udiv i32 %2, 1000000, !dbg !2934
  call void @llvm.dbg.value(metadata i32 %3, metadata !2931, metadata !DIExpression()), !dbg !2932
  %4 = mul i32 %3, %0, !dbg !2935
  call void @llvm.dbg.value(metadata i32 %4, metadata !2930, metadata !DIExpression()), !dbg !2932
  tail call void @delay_time_for_gpt4(i32 noundef %4) #16, !dbg !2936
  ret void, !dbg !2937
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvTMR_init(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, void ()* noundef %3) local_unnamed_addr #0 !dbg !2938 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2942, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i32 %1, metadata !2943, metadata !DIExpression()), !dbg !2946
  call void @llvm.dbg.value(metadata i1 %2, metadata !2944, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2946
  call void @llvm.dbg.value(metadata void ()* %3, metadata !2945, metadata !DIExpression()), !dbg !2946
  tail call void @GPT_Stop(i32 noundef %0) #15, !dbg !2947
  %5 = icmp eq i32 %0, 0, !dbg !2948
  br i1 %5, label %6, label %7, !dbg !2950

6:                                                ; preds = %4
  store volatile i32 0, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !2951
  br label %8, !dbg !2953

7:                                                ; preds = %4
  store volatile i32 0, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !2954
  br label %8

8:                                                ; preds = %7, %6
  %9 = phi i32 [ %0, %7 ], [ 0, %6 ]
  tail call void @GPT_init(i32 noundef %9, i32 noundef 1, void ()* noundef %3) #15, !dbg !2956
  tail call void @GPT_ResetTimer(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) #15, !dbg !2957
  ret void, !dbg !2958
}

; Function Attrs: noinline nounwind optsize
define dso_local void @TMR_Start(i32 noundef %0) local_unnamed_addr #0 !dbg !2959 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2961, metadata !DIExpression()), !dbg !2962
  tail call void @GPT_Start(i32 noundef %0) #15, !dbg !2963
  ret void, !dbg !2964
}

; Function Attrs: noinline nounwind optsize
define dso_local void @TMR_Stop(i32 noundef %0) local_unnamed_addr #0 !dbg !2965 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2967, metadata !DIExpression()), !dbg !2968
  tail call void @GPT_Stop(i32 noundef %0) #15, !dbg !2969
  ret void, !dbg !2970
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvGPT2Init() local_unnamed_addr #0 !dbg !2971 {
  tail call void @CM4_GPT2Init() #15, !dbg !2972
  ret void, !dbg !2973
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvGPT4Init() local_unnamed_addr #0 !dbg !2974 {
  tail call void @CM4_GPT4Init() #15, !dbg !2975
  ret void, !dbg !2976
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @clear_TMR_INT_status_bit(i32 noundef %0) local_unnamed_addr #3 !dbg !2977 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2979, metadata !DIExpression()), !dbg !2980
  switch i32 %0, label %5 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !2981

2:                                                ; preds = %1
  br label %3, !dbg !2982

3:                                                ; preds = %1, %2
  %4 = phi i32 [ 2, %2 ], [ 1, %1 ]
  store volatile i32 %4, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !2980
  br label %5, !dbg !2985

5:                                                ; preds = %3, %1
  ret void, !dbg !2985
}

; Function Attrs: noinline nounwind optsize
define dso_local void @top_xtal_init() local_unnamed_addr #0 !dbg !2986 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2988, metadata !DIExpression()), !dbg !2990
  %1 = load volatile i32, i32* inttoptr (i32 -2097118784 to i32*), align 64, !dbg !2991
  call void @llvm.dbg.value(metadata i32 %1, metadata !2989, metadata !DIExpression()), !dbg !2990
  %2 = lshr i32 %1, 13, !dbg !2992
  %3 = and i32 %2, 7, !dbg !2993
  call void @llvm.dbg.value(metadata i32 %3, metadata !2989, metadata !DIExpression()), !dbg !2990
  %4 = load volatile i32, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2994
  call void @llvm.dbg.value(metadata i32 %4, metadata !2988, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata i32 %4, metadata !2988, metadata !DIExpression(DW_OP_constu, 18446744073709549568, DW_OP_and, DW_OP_stack_value)), !dbg !2990
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init, i32 0, i32 %3, !dbg !2995
  %6 = load i32, i32* %5, align 4, !dbg !2995
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init.1, i32 0, i32 %3, !dbg !2995
  %8 = load i32, i32* %7, align 4, !dbg !2995
  %9 = and i32 %4, -2048, !dbg !2996
  call void @llvm.dbg.value(metadata i32 %9, metadata !2988, metadata !DIExpression()), !dbg !2990
  store i32 %6, i32* @gXtalFreq, align 4, !dbg !2997
  %10 = or i32 %9, %8, !dbg !2997
  call void @llvm.dbg.value(metadata i32 %10, metadata !2988, metadata !DIExpression()), !dbg !2990
  store volatile i32 %10, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2999
  %11 = load i32, i32* @gXtalFreq, align 4, !dbg !3000
  store i32 %11, i32* @gCpuFrequency, align 4, !dbg !3001
  tail call void @SystemCoreClockUpdate() #15, !dbg !3002
  %12 = load i32, i32* @SystemCoreClock, align 4, !dbg !3003
  %13 = udiv i32 %12, 1000, !dbg !3004
  %14 = tail call i32 @SysTick_Set(i32 noundef %13) #15, !dbg !3005
  ret void, !dbg !3006
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_xtal_freq_get() local_unnamed_addr #6 !dbg !3007 {
  %1 = load i32, i32* @gXtalFreq, align 4, !dbg !3008
  ret i32 %1, !dbg !3009
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_mcu_freq_get() local_unnamed_addr #6 !dbg !3010 {
  %1 = load i32, i32* @gCpuFrequency, align 4, !dbg !3011
  ret i32 %1, !dbg !3012
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON() local_unnamed_addr #7 !dbg !3013 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3017
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3017
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3015, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !3016, metadata !DIExpression()), !dbg !3019
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3020
  store volatile i32 %3, i32* %1, align 4, !dbg !3021
  %4 = load volatile i32, i32* %1, align 4, !dbg !3022
  %5 = lshr i32 %4, 28, !dbg !3023
  %6 = and i32 %5, 3, !dbg !3024
  store volatile i32 %6, i32* %1, align 4, !dbg !3025
  %7 = load volatile i32, i32* %1, align 4, !dbg !3026
  %8 = icmp eq i32 %7, 0, !dbg !3028
  br i1 %8, label %9, label %22, !dbg !3029

9:                                                ; preds = %0
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3030
  store volatile i32 %10, i32* %1, align 4, !dbg !3032
  %11 = load volatile i32, i32* %1, align 4, !dbg !3033
  %12 = and i32 %11, -16777217, !dbg !3034
  store volatile i32 %12, i32* %1, align 4, !dbg !3035
  %13 = load volatile i32, i32* %1, align 4, !dbg !3036
  %14 = or i32 %13, 536870912, !dbg !3037
  store volatile i32 %14, i32* %1, align 4, !dbg !3038
  %15 = load volatile i32, i32* %1, align 4, !dbg !3039
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %15) #16, !dbg !3040
  br label %16, !dbg !3041

16:                                               ; preds = %16, %9
  %17 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3042
  store volatile i32 %17, i32* %1, align 4, !dbg !3044
  %18 = load volatile i32, i32* %1, align 4, !dbg !3045
  %19 = and i32 %18, 134217728, !dbg !3046
  store volatile i32 %19, i32* %1, align 4, !dbg !3047
  %20 = load volatile i32, i32* %1, align 4, !dbg !3048
  %21 = icmp eq i32 %20, 0, !dbg !3049
  br i1 %21, label %16, label %22, !dbg !3050, !llvm.loop !3051

22:                                               ; preds = %16, %0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3053
  ret void, !dbg !3053
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #8

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @cmnReadRegister32(i8* noundef %0) unnamed_addr #4 !dbg !3054 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3061, metadata !DIExpression()), !dbg !3062
  %2 = bitcast i8* %0 to i32*, !dbg !3063
  %3 = load volatile i32, i32* %2, align 4, !dbg !3064
  ret i32 %3, !dbg !3065
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @cmnWriteRegister32(i8* noundef %0, i32 noundef %1) unnamed_addr #3 !dbg !3066 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3070, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i32 %1, metadata !3071, metadata !DIExpression()), !dbg !3072
  %3 = bitcast i8* %0 to i32*, !dbg !3073
  store volatile i32 %1, i32* %3, align 4, !dbg !3074
  ret void, !dbg !3075
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #8

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON_PLL2ON(i8 noundef zeroext %0) local_unnamed_addr #7 !dbg !3076 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8 %0, metadata !3080, metadata !DIExpression()), !dbg !3083
  %3 = bitcast i32* %2 to i8*, !dbg !3084
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !3084
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3081, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !3082, metadata !DIExpression()), !dbg !3083
  %4 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3086
  store volatile i32 %4, i32* %2, align 4, !dbg !3087
  %5 = load volatile i32, i32* %2, align 4, !dbg !3088
  %6 = lshr i32 %5, 28, !dbg !3089
  %7 = and i32 %6, 3, !dbg !3090
  store volatile i32 %7, i32* %2, align 4, !dbg !3091
  %8 = load volatile i32, i32* %2, align 4, !dbg !3092
  %9 = icmp eq i32 %8, 3, !dbg !3094
  br i1 %9, label %38, label %10, !dbg !3095

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3096
  store volatile i32 %11, i32* %2, align 4, !dbg !3098
  %12 = load volatile i32, i32* %2, align 4, !dbg !3099
  %13 = and i32 %12, -262145, !dbg !3100
  store volatile i32 %13, i32* %2, align 4, !dbg !3101
  %14 = load volatile i32, i32* %2, align 4, !dbg !3102
  %15 = and i32 %14, -16777217, !dbg !3103
  store volatile i32 %15, i32* %2, align 4, !dbg !3104
  %16 = load volatile i32, i32* %2, align 4, !dbg !3105
  store volatile i32 %16, i32* %2, align 4, !dbg !3106
  %17 = load volatile i32, i32* %2, align 4, !dbg !3107
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %17) #16, !dbg !3108
  %18 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3109
  store volatile i32 %18, i32* %2, align 4, !dbg !3110
  %19 = load volatile i32, i32* %2, align 4, !dbg !3111
  %20 = and i32 %19, -805306369, !dbg !3112
  store volatile i32 %20, i32* %2, align 4, !dbg !3113
  %21 = load volatile i32, i32* %2, align 4, !dbg !3114
  %22 = and i32 %21, -16777217, !dbg !3115
  store volatile i32 %22, i32* %2, align 4, !dbg !3116
  %23 = load volatile i32, i32* %2, align 4, !dbg !3117
  %24 = or i32 %23, 805306368, !dbg !3118
  store volatile i32 %24, i32* %2, align 4, !dbg !3119
  %25 = load volatile i32, i32* %2, align 4, !dbg !3120
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %25) #16, !dbg !3121
  br label %26, !dbg !3122

26:                                               ; preds = %26, %10
  %27 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3123
  store volatile i32 %27, i32* %2, align 4, !dbg !3125
  %28 = load volatile i32, i32* %2, align 4, !dbg !3126
  %29 = and i32 %28, 67108864, !dbg !3127
  store volatile i32 %29, i32* %2, align 4, !dbg !3128
  %30 = load volatile i32, i32* %2, align 4, !dbg !3129
  %31 = icmp eq i32 %30, 0, !dbg !3130
  br i1 %31, label %26, label %32, !dbg !3131, !llvm.loop !3132

32:                                               ; preds = %26
  %33 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3134
  store volatile i32 %33, i32* %2, align 4, !dbg !3135
  %34 = load volatile i32, i32* %2, align 4, !dbg !3136
  %35 = and i32 %34, -262145, !dbg !3137
  store volatile i32 %35, i32* %2, align 4, !dbg !3138
  %36 = load volatile i32, i32* %2, align 4, !dbg !3139
  %37 = and i32 %36, -16777217, !dbg !3140
  store volatile i32 %37, i32* %2, align 4, !dbg !3141
  br label %38, !dbg !3142

38:                                               ; preds = %32, %1
  %39 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3143
  store volatile i32 %39, i32* %2, align 4, !dbg !3144
  %40 = icmp eq i8 %0, 0, !dbg !3145
  %41 = load volatile i32, i32* %2, align 4, !dbg !3147
  br i1 %40, label %44, label %42, !dbg !3148

42:                                               ; preds = %38
  %43 = or i32 %41, 262144, !dbg !3149
  store volatile i32 %43, i32* %2, align 4, !dbg !3151
  br label %45, !dbg !3152

44:                                               ; preds = %38
  store volatile i32 %41, i32* %2, align 4, !dbg !3153
  br label %45

45:                                               ; preds = %44, %42
  %46 = load volatile i32, i32* %2, align 4, !dbg !3155
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %46) #16, !dbg !3156
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !3157
  ret void, !dbg !3157
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1OFF_PLL2OFF() local_unnamed_addr #7 !dbg !3158 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3162
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3162
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3160, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !3161, metadata !DIExpression()), !dbg !3164
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3165
  store volatile i32 %3, i32* %1, align 4, !dbg !3166
  %4 = load volatile i32, i32* %1, align 4, !dbg !3167
  %5 = and i32 %4, -805306369, !dbg !3168
  store volatile i32 %5, i32* %1, align 4, !dbg !3169
  %6 = load volatile i32, i32* %1, align 4, !dbg !3170
  %7 = and i32 %6, -16777217, !dbg !3171
  store volatile i32 %7, i32* %1, align 4, !dbg !3172
  %8 = load volatile i32, i32* %1, align 4, !dbg !3173
  store volatile i32 %8, i32* %1, align 4, !dbg !3174
  %9 = load volatile i32, i32* %1, align 4, !dbg !3175
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %9) #16, !dbg !3176
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3177
  store volatile i32 %10, i32* %1, align 4, !dbg !3178
  %11 = load volatile i32, i32* %1, align 4, !dbg !3179
  %12 = and i32 %11, -262145, !dbg !3180
  store volatile i32 %12, i32* %1, align 4, !dbg !3181
  %13 = load volatile i32, i32* %1, align 4, !dbg !3182
  %14 = and i32 %13, -16777217, !dbg !3183
  store volatile i32 %14, i32* %1, align 4, !dbg !3184
  %15 = load volatile i32, i32* %1, align 4, !dbg !3185
  store volatile i32 %15, i32* %1, align 4, !dbg !3186
  %16 = load volatile i32, i32* %1, align 4, !dbg !3187
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %16) #16, !dbg !3188
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3189
  ret void, !dbg !3189
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureToXtal() local_unnamed_addr #0 !dbg !3190 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3194
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3194
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3192, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !3193, metadata !DIExpression()), !dbg !3196
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3197
  store volatile i32 %3, i32* %1, align 4, !dbg !3198
  %4 = load volatile i32, i32* %1, align 4, !dbg !3199
  %5 = and i32 %4, -8, !dbg !3200
  store volatile i32 %5, i32* %1, align 4, !dbg !3201
  %6 = load volatile i32, i32* %1, align 4, !dbg !3202
  store volatile i32 %6, i32* %1, align 4, !dbg !3203
  %7 = load volatile i32, i32* %1, align 4, !dbg !3204
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #16, !dbg !3205
  %8 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3206
  store volatile i32 %8, i32* %1, align 4, !dbg !3207
  %9 = load volatile i32, i32* %1, align 4, !dbg !3208
  %10 = and i32 %9, -49153, !dbg !3209
  store volatile i32 %10, i32* %1, align 4, !dbg !3210
  %11 = load volatile i32, i32* %1, align 4, !dbg !3211
  store volatile i32 %11, i32* %1, align 4, !dbg !3212
  %12 = load volatile i32, i32* %1, align 4, !dbg !3213
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %12) #16, !dbg !3214
  br label %13, !dbg !3215

13:                                               ; preds = %13, %0
  %14 = load volatile i32, i32* %1, align 4, !dbg !3216
  %15 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3217
  %16 = icmp eq i32 %14, %15, !dbg !3218
  br i1 %16, label %17, label %13, !dbg !3215, !llvm.loop !3219

17:                                               ; preds = %13
  %18 = tail call i32 @top_xtal_freq_get() #16, !dbg !3221
  store i32 %18, i32* @gCpuFrequency, align 4, !dbg !3222
  tail call void @SystemCoreClockUpdate() #15, !dbg !3223
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !3224
  %20 = udiv i32 %19, 1000, !dbg !3225
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #15, !dbg !3226
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3227
  ret void, !dbg !3227
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo192M() local_unnamed_addr #0 !dbg !3228 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3232
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3232
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3230, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !3231, metadata !DIExpression()), !dbg !3234
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 1) #16, !dbg !3235
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3236
  store volatile i32 %3, i32* %1, align 4, !dbg !3237
  %4 = load volatile i32, i32* %1, align 4, !dbg !3238
  %5 = and i32 %4, -49153, !dbg !3239
  store volatile i32 %5, i32* %1, align 4, !dbg !3240
  %6 = load volatile i32, i32* %1, align 4, !dbg !3241
  %7 = or i32 %6, 16384, !dbg !3242
  store volatile i32 %7, i32* %1, align 4, !dbg !3243
  %8 = load volatile i32, i32* %1, align 4, !dbg !3244
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #16, !dbg !3245
  br label %9, !dbg !3246

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !3247
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3248
  %12 = icmp eq i32 %10, %11, !dbg !3249
  br i1 %12, label %13, label %9, !dbg !3246, !llvm.loop !3250

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3252
  store volatile i32 %14, i32* %1, align 4, !dbg !3253
  %15 = load volatile i32, i32* %1, align 4, !dbg !3254
  %16 = and i32 %15, -1009, !dbg !3255
  store volatile i32 %16, i32* %1, align 4, !dbg !3256
  %17 = load volatile i32, i32* %1, align 4, !dbg !3257
  %18 = or i32 %17, 128, !dbg !3258
  store volatile i32 %18, i32* %1, align 4, !dbg !3259
  %19 = load volatile i32, i32* %1, align 4, !dbg !3260
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #16, !dbg !3261
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3262
  store volatile i32 %20, i32* %1, align 4, !dbg !3263
  %21 = load volatile i32, i32* %1, align 4, !dbg !3264
  %22 = and i32 %21, -8, !dbg !3265
  store volatile i32 %22, i32* %1, align 4, !dbg !3266
  %23 = load volatile i32, i32* %1, align 4, !dbg !3267
  %24 = or i32 %23, 4, !dbg !3268
  store volatile i32 %24, i32* %1, align 4, !dbg !3269
  %25 = load volatile i32, i32* %1, align 4, !dbg !3270
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #16, !dbg !3271
  store i32 192000000, i32* @gCpuFrequency, align 4, !dbg !3272
  tail call void @SystemCoreClockUpdate() #15, !dbg !3273
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !3274
  %27 = udiv i32 %26, 1000, !dbg !3275
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #15, !dbg !3276
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3277
  ret void, !dbg !3277
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo160M() local_unnamed_addr #0 !dbg !3278 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3282
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3282
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3280, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !3281, metadata !DIExpression()), !dbg !3284
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 0) #16, !dbg !3285
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3286
  store volatile i32 %3, i32* %1, align 4, !dbg !3287
  %4 = load volatile i32, i32* %1, align 4, !dbg !3288
  %5 = and i32 %4, -49153, !dbg !3289
  store volatile i32 %5, i32* %1, align 4, !dbg !3290
  %6 = load volatile i32, i32* %1, align 4, !dbg !3291
  %7 = or i32 %6, 32768, !dbg !3292
  store volatile i32 %7, i32* %1, align 4, !dbg !3293
  %8 = load volatile i32, i32* %1, align 4, !dbg !3294
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #16, !dbg !3295
  br label %9, !dbg !3296

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !3297
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3298
  %12 = icmp eq i32 %10, %11, !dbg !3299
  br i1 %12, label %13, label %9, !dbg !3296, !llvm.loop !3300

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3302
  store volatile i32 %14, i32* %1, align 4, !dbg !3303
  %15 = load volatile i32, i32* %1, align 4, !dbg !3304
  %16 = and i32 %15, -1009, !dbg !3305
  store volatile i32 %16, i32* %1, align 4, !dbg !3306
  %17 = load volatile i32, i32* %1, align 4, !dbg !3307
  %18 = or i32 %17, 32, !dbg !3308
  store volatile i32 %18, i32* %1, align 4, !dbg !3309
  %19 = load volatile i32, i32* %1, align 4, !dbg !3310
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #16, !dbg !3311
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3312
  store volatile i32 %20, i32* %1, align 4, !dbg !3313
  %21 = load volatile i32, i32* %1, align 4, !dbg !3314
  %22 = and i32 %21, -8, !dbg !3315
  store volatile i32 %22, i32* %1, align 4, !dbg !3316
  %23 = load volatile i32, i32* %1, align 4, !dbg !3317
  %24 = or i32 %23, 4, !dbg !3318
  store volatile i32 %24, i32* %1, align 4, !dbg !3319
  %25 = load volatile i32, i32* %1, align 4, !dbg !3320
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #16, !dbg !3321
  store i32 160000000, i32* @gCpuFrequency, align 4, !dbg !3322
  tail call void @SystemCoreClockUpdate() #15, !dbg !3323
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !3324
  %27 = udiv i32 %26, 1000, !dbg !3325
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #15, !dbg !3326
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3327
  ret void, !dbg !3327
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo64M() local_unnamed_addr #0 !dbg !3328 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3332
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3332
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3330, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !3331, metadata !DIExpression()), !dbg !3334
  tail call void @cmnPLL1ON() #16, !dbg !3335
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3336
  store volatile i32 %3, i32* %1, align 4, !dbg !3337
  %4 = load volatile i32, i32* %1, align 4, !dbg !3338
  %5 = and i32 %4, -49153, !dbg !3339
  store volatile i32 %5, i32* %1, align 4, !dbg !3340
  %6 = load volatile i32, i32* %1, align 4, !dbg !3341
  store volatile i32 %6, i32* %1, align 4, !dbg !3342
  %7 = load volatile i32, i32* %1, align 4, !dbg !3343
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #16, !dbg !3344
  br label %8, !dbg !3345

8:                                                ; preds = %8, %0
  %9 = load volatile i32, i32* %1, align 4, !dbg !3346
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3347
  %11 = icmp eq i32 %9, %10, !dbg !3348
  br i1 %11, label %12, label %8, !dbg !3345, !llvm.loop !3349

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3351
  store volatile i32 %13, i32* %1, align 4, !dbg !3352
  %14 = load volatile i32, i32* %1, align 4, !dbg !3353
  %15 = and i32 %14, -8, !dbg !3354
  store volatile i32 %15, i32* %1, align 4, !dbg !3355
  %16 = load volatile i32, i32* %1, align 4, !dbg !3356
  %17 = or i32 %16, 2, !dbg !3357
  store volatile i32 %17, i32* %1, align 4, !dbg !3358
  %18 = load volatile i32, i32* %1, align 4, !dbg !3359
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %18) #16, !dbg !3360
  store i32 64000000, i32* @gCpuFrequency, align 4, !dbg !3361
  tail call void @SystemCoreClockUpdate() #15, !dbg !3362
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !3363
  %20 = udiv i32 %19, 1000, !dbg !3364
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #15, !dbg !3365
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3366
  ret void, !dbg !3366
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnSerialFlashClkConfToXtal() local_unnamed_addr #7 section ".ramTEXT" !dbg !3367 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3371
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3371
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3369, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118796 to i32*), metadata !3370, metadata !DIExpression()), !dbg !3373
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*)) #16, !dbg !3374
  store volatile i32 %3, i32* %1, align 4, !dbg !3375
  %4 = load volatile i32, i32* %1, align 4, !dbg !3376
  %5 = and i32 %4, -24577, !dbg !3377
  store volatile i32 %5, i32* %1, align 4, !dbg !3378
  %6 = load volatile i32, i32* %1, align 4, !dbg !3379
  store volatile i32 %6, i32* %1, align 4, !dbg !3380
  %7 = load volatile i32, i32* %1, align 4, !dbg !3381
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*), i32 noundef %7) #16, !dbg !3382
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3383
  ret void, !dbg !3383
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc() local_unnamed_addr #4 !dbg !3384 {
  %1 = tail call i32 @getc_nowait() #16, !dbg !3389
  call void @llvm.dbg.value(metadata i32 %1, metadata !3388, metadata !DIExpression()), !dbg !3390
  ret i32 %1, !dbg !3391
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc_nowait() local_unnamed_addr #4 !dbg !3392 {
  %1 = load volatile i32, i32* inttoptr (i32 -2096955372 to i32*), align 4, !dbg !3395
  %2 = and i32 %1, 1, !dbg !3397
  %3 = icmp eq i32 %2, 0, !dbg !3397
  br i1 %3, label %7, label %4, !dbg !3398

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 -2096955392 to i32*), align 65536, !dbg !3399
  %6 = and i32 %5, 255, !dbg !3401
  call void @llvm.dbg.value(metadata i32 %5, metadata !3394, metadata !DIExpression()), !dbg !3402
  br label %7, !dbg !3403

7:                                                ; preds = %0, %4
  %8 = phi i32 [ %6, %4 ], [ -1, %0 ], !dbg !3404
  ret i32 %8, !dbg !3405
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_output_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !3406 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3411, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i8 %1, metadata !3412, metadata !DIExpression()), !dbg !3414
  %3 = icmp eq i32 %0, 0, !dbg !3415
  %4 = select i1 %3, i32 -2096955392, i32 -2096889856, !dbg !3415
  call void @llvm.dbg.value(metadata i32 %4, metadata !3413, metadata !DIExpression()), !dbg !3414
  %5 = or i32 %4, 20
  %6 = inttoptr i32 %5 to i32*
  br label %7, !dbg !3416

7:                                                ; preds = %7, %2
  %8 = load volatile i32, i32* %6, align 4, !dbg !3417
  %9 = and i32 %8, 32, !dbg !3418
  %10 = icmp eq i32 %9, 0, !dbg !3419
  br i1 %10, label %7, label %11, !dbg !3416, !llvm.loop !3420

11:                                               ; preds = %7
  %12 = zext i8 %1 to i32, !dbg !3422
  %13 = inttoptr i32 %4 to i32*, !dbg !3423
  store volatile i32 %12, i32* %13, align 65536, !dbg !3424
  ret void, !dbg !3425
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @uart_input_char(i32 noundef %0) local_unnamed_addr #3 !dbg !3426 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3430, metadata !DIExpression()), !dbg !3433
  %2 = icmp eq i32 %0, 0, !dbg !3434
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3434
  call void @llvm.dbg.value(metadata i32 %3, metadata !3431, metadata !DIExpression()), !dbg !3433
  %4 = or i32 %3, 20
  %5 = inttoptr i32 %4 to i32*
  br label %6, !dbg !3435

6:                                                ; preds = %6, %1
  %7 = load volatile i32, i32* %5, align 4, !dbg !3436
  %8 = and i32 %7, 1, !dbg !3437
  %9 = icmp eq i32 %8, 0, !dbg !3438
  br i1 %9, label %6, label %10, !dbg !3435, !llvm.loop !3439

10:                                               ; preds = %6
  %11 = inttoptr i32 %3 to i32*, !dbg !3441
  %12 = load volatile i32, i32* %11, align 65536, !dbg !3441
  %13 = trunc i32 %12 to i8, !dbg !3441
  call void @llvm.dbg.value(metadata i8 %13, metadata !3432, metadata !DIExpression()), !dbg !3433
  ret i8 %13, !dbg !3442
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @uart_input_char_unblocking(i32 noundef %0) local_unnamed_addr #4 !dbg !3443 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3447, metadata !DIExpression()), !dbg !3450
  %2 = icmp eq i32 %0, 0, !dbg !3451
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3451
  call void @llvm.dbg.value(metadata i32 %3, metadata !3448, metadata !DIExpression()), !dbg !3450
  %4 = or i32 %3, 20, !dbg !3452
  %5 = inttoptr i32 %4 to i32*, !dbg !3452
  %6 = load volatile i32, i32* %5, align 4, !dbg !3452
  %7 = and i32 %6, 1, !dbg !3454
  %8 = icmp eq i32 %7, 0, !dbg !3454
  br i1 %8, label %13, label %9, !dbg !3455

9:                                                ; preds = %1
  %10 = inttoptr i32 %3 to i32*, !dbg !3456
  %11 = load volatile i32, i32* %10, align 65536, !dbg !3456
  %12 = and i32 %11, 255, !dbg !3458
  call void @llvm.dbg.value(metadata i32 %11, metadata !3449, metadata !DIExpression()), !dbg !3450
  br label %13, !dbg !3459

13:                                               ; preds = %1, %9
  %14 = phi i32 [ %12, %9 ], [ -1, %1 ], !dbg !3460
  ret i32 %14, !dbg !3461
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_HWInit(i32 noundef %0) local_unnamed_addr #0 !dbg !3462 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3466, metadata !DIExpression()), !dbg !3467
  tail call void @halUART_SetFormat(i32 noundef %0, i32 noundef 115200, i16 noundef zeroext 3, i16 noundef zeroext 0, i16 noundef zeroext 0) #16, !dbg !3468
  switch i32 %0, label %7 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !3469

2:                                                ; preds = %1
  br label %3, !dbg !3470

3:                                                ; preds = %1, %2
  %4 = phi i32* [ inttoptr (i32 -2096889780 to i32*), %2 ], [ inttoptr (i32 -2096955316 to i32*), %1 ]
  %5 = load volatile i32, i32* %4, align 4, !dbg !3474
  %6 = or i32 %5, 1, !dbg !3474
  store volatile i32 %6, i32* %4, align 4, !dbg !3474
  br label %7, !dbg !3475

7:                                                ; preds = %3, %1
  ret void, !dbg !3475
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_SetFormat(i32 noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #0 !dbg !3476 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3482, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i32 %1, metadata !3483, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i16 %2, metadata !3484, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i16 %3, metadata !3485, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i16 %4, metadata !3486, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i32 -2096955392, metadata !3488, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, metadata !3495, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, metadata !3497, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i32 0, metadata !3498, metadata !DIExpression()), !dbg !3499
  %6 = tail call i32 @top_xtal_freq_get() #15, !dbg !3502
  store i32 %6, i32* @gUartClkFreq, align 4, !dbg !3503
  %7 = icmp eq i32 %0, 1, !dbg !3504
  %8 = select i1 %7, i32 -2096889856, i32 -2096955392, !dbg !3504
  call void @llvm.dbg.value(metadata i32 %8, metadata !3488, metadata !DIExpression()), !dbg !3499
  %9 = or i32 %8, 36, !dbg !3505
  %10 = inttoptr i32 %9 to i32*, !dbg !3505
  store volatile i32 3, i32* %10, align 4, !dbg !3506
  %11 = or i32 %8, 12, !dbg !3507
  %12 = inttoptr i32 %11 to i32*, !dbg !3507
  %13 = load volatile i32, i32* %12, align 4, !dbg !3507
  call void @llvm.dbg.value(metadata i32 %13, metadata !3490, metadata !DIExpression()), !dbg !3499
  %14 = or i32 %13, 128, !dbg !3508
  store volatile i32 %14, i32* %12, align 4, !dbg !3509
  %15 = load i32, i32* @gUartClkFreq, align 4, !dbg !3510
  %16 = udiv i32 %15, %1, !dbg !3511
  call void @llvm.dbg.value(metadata i32 %16, metadata !3489, metadata !DIExpression()), !dbg !3499
  %17 = lshr i32 %16, 8, !dbg !3512
  %18 = add nuw nsw i32 %17, 1, !dbg !3513
  call void @llvm.dbg.value(metadata i32 %18, metadata !3491, metadata !DIExpression()), !dbg !3499
  %19 = udiv i32 %16, %18, !dbg !3514
  %20 = add i32 %19, -1, !dbg !3516
  call void @llvm.dbg.value(metadata i32 %20, metadata !3492, metadata !DIExpression()), !dbg !3499
  %21 = icmp eq i32 %20, 3, !dbg !3517
  %22 = lshr i32 %20, 1, !dbg !3519
  %23 = add nsw i32 %22, -1, !dbg !3519
  %24 = select i1 %21, i32 0, i32 %23, !dbg !3519
  call void @llvm.dbg.value(metadata i32 %24, metadata !3493, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i32 undef, metadata !3498, metadata !DIExpression()), !dbg !3499
  %25 = mul i32 %15, 10, !dbg !3520
  %26 = udiv i32 %25, %1, !dbg !3521
  %27 = udiv i32 %26, %16, !dbg !3522
  %28 = mul i32 %19, -10, !dbg !3523
  %29 = add i32 %27, %28, !dbg !3524
  %30 = urem i32 %29, 10, !dbg !3525
  call void @llvm.dbg.value(metadata i32 %30, metadata !3494, metadata !DIExpression()), !dbg !3499
  %31 = and i32 %18, 255, !dbg !3526
  %32 = inttoptr i32 %8 to i32*, !dbg !3527
  store volatile i32 %31, i32* %32, align 65536, !dbg !3528
  %33 = lshr i32 %18, 8, !dbg !3529
  %34 = and i32 %33, 255, !dbg !3530
  %35 = or i32 %8, 4, !dbg !3531
  %36 = inttoptr i32 %35 to i32*, !dbg !3531
  store volatile i32 %34, i32* %36, align 4, !dbg !3532
  %37 = or i32 %8, 40, !dbg !3533
  %38 = inttoptr i32 %37 to i32*, !dbg !3533
  store volatile i32 %20, i32* %38, align 8, !dbg !3534
  %39 = or i32 %8, 44, !dbg !3535
  %40 = inttoptr i32 %39 to i32*, !dbg !3535
  store volatile i32 %24, i32* %40, align 4, !dbg !3536
  %41 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, i32 0, i32 %30, !dbg !3537
  %42 = load i16, i16* %41, align 2, !dbg !3537
  %43 = zext i16 %42 to i32, !dbg !3537
  %44 = or i32 %8, 88, !dbg !3538
  %45 = inttoptr i32 %44 to i32*, !dbg !3538
  store volatile i32 %43, i32* %45, align 8, !dbg !3539
  %46 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, i32 0, i32 %30, !dbg !3540
  %47 = load i16, i16* %46, align 2, !dbg !3540
  %48 = zext i16 %47 to i32, !dbg !3540
  %49 = or i32 %8, 84, !dbg !3541
  %50 = inttoptr i32 %49 to i32*, !dbg !3541
  store volatile i32 %48, i32* %50, align 4, !dbg !3542
  store volatile i32 %13, i32* %12, align 4, !dbg !3543
  %51 = or i32 %8, 8, !dbg !3544
  %52 = inttoptr i32 %51 to i32*, !dbg !3544
  store volatile i32 71, i32* %52, align 8, !dbg !3545
  %53 = inttoptr i32 %11 to i16*, !dbg !3546
  %54 = load volatile i16, i16* %53, align 4, !dbg !3546
  call void @llvm.dbg.value(metadata i16 %54, metadata !3487, metadata !DIExpression()), !dbg !3499
  %55 = and i16 %54, -64, !dbg !3547
  call void @llvm.dbg.value(metadata i16 %54, metadata !3487, metadata !DIExpression(DW_OP_constu, 18446744073709551608, DW_OP_and, DW_OP_stack_value)), !dbg !3499
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %2), metadata !3487, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3499
  %56 = and i16 %2, -61, !dbg !3548
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %56), metadata !3487, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3499
  call void @llvm.dbg.value(metadata !DIArgList(i16 %55, i16 %4, i16 %56), metadata !3487, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3499
  %57 = and i16 %4, -57, !dbg !3549
  call void @llvm.dbg.value(metadata i16 undef, metadata !3487, metadata !DIExpression()), !dbg !3499
  %58 = or i16 %56, %3, !dbg !3548
  %59 = or i16 %58, %57, !dbg !3549
  %60 = or i16 %59, %55, !dbg !3550
  call void @llvm.dbg.value(metadata i16 %60, metadata !3487, metadata !DIExpression()), !dbg !3499
  store volatile i16 %60, i16* %53, align 4, !dbg !3551
  ret void, !dbg !3552
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) local_unnamed_addr #4 !dbg !3553 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3558, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i32 %1, metadata !3559, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i32* %2, metadata !3560, metadata !DIExpression()), !dbg !3561
  %4 = icmp eq i32 %0, 0, !dbg !3562
  %5 = icmp eq i32 %1, 0, !dbg !3564
  br i1 %4, label %6, label %16, !dbg !3565

6:                                                ; preds = %3
  br i1 %5, label %10, label %7, !dbg !3566

7:                                                ; preds = %6
  %8 = load volatile i16, i16* inttoptr (i32 -2097082568 to i16*), align 8, !dbg !3568
  %9 = zext i16 %8 to i32, !dbg !3568
  br label %26, !dbg !3571

10:                                               ; preds = %6
  %11 = load volatile i16, i16* inttoptr (i32 -2097082812 to i16*), align 4, !dbg !3572
  %12 = zext i16 %11 to i32, !dbg !3572
  store i32 %12, i32* %2, align 4, !dbg !3574
  %13 = load volatile i16, i16* inttoptr (i32 -2097082824 to i16*), align 8, !dbg !3575
  %14 = zext i16 %13 to i32, !dbg !3575
  %15 = sub nsw i32 %12, %14, !dbg !3576
  br label %26

16:                                               ; preds = %3
  br i1 %5, label %20, label %17, !dbg !3577

17:                                               ; preds = %16
  %18 = load volatile i16, i16* inttoptr (i32 -2097082056 to i16*), align 8, !dbg !3579
  %19 = zext i16 %18 to i32, !dbg !3579
  br label %26, !dbg !3582

20:                                               ; preds = %16
  %21 = load volatile i16, i16* inttoptr (i32 -2097082300 to i16*), align 4, !dbg !3583
  %22 = zext i16 %21 to i32, !dbg !3583
  store i32 %22, i32* %2, align 4, !dbg !3585
  %23 = load volatile i16, i16* inttoptr (i32 -2097082312 to i16*), align 8, !dbg !3586
  %24 = zext i16 %23 to i32, !dbg !3586
  %25 = sub nsw i32 %22, %24, !dbg !3587
  br label %26

26:                                               ; preds = %17, %20, %7, %10
  %27 = phi i32 [ %19, %17 ], [ %25, %20 ], [ %9, %7 ], [ %15, %10 ]
  store i32 %27, i32* %2, align 4, !dbg !3564
  ret void, !dbg !3588
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Read_VFIFO_Data(i32 noundef %0, i8* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !3589 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3593, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i8* %1, metadata !3594, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i32 %2, metadata !3595, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i32 0, metadata !3596, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i32 0, metadata !3596, metadata !DIExpression()), !dbg !3597
  %4 = icmp eq i32 %2, 0, !dbg !3598
  br i1 %4, label %15, label %5, !dbg !3601

5:                                                ; preds = %3, %12
  %6 = phi i32 [ %13, %12 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3596, metadata !DIExpression()), !dbg !3597
  switch i32 %0, label %12 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !3602

7:                                                ; preds = %5
  br label %8, !dbg !3604

8:                                                ; preds = %5, %7
  %9 = phi i8* [ inttoptr (i32 2030044416 to i8*), %7 ], [ inttoptr (i32 2030043904 to i8*), %5 ]
  %10 = load volatile i8, i8* %9, align 256, !dbg !3608
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3608
  store i8 %10, i8* %11, align 1, !dbg !3608
  br label %12, !dbg !3609

12:                                               ; preds = %8, %5
  %13 = add nuw i32 %6, 1, !dbg !3609
  call void @llvm.dbg.value(metadata i32 %13, metadata !3596, metadata !DIExpression()), !dbg !3597
  %14 = icmp eq i32 %13, %2, !dbg !3598
  br i1 %14, label %15, label %5, !dbg !3601, !llvm.loop !3610

15:                                               ; preds = %12, %3
  ret void, !dbg !3612
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Write_VFIFO_Data(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !3613 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3619, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i8* %1, metadata !3620, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i32 %2, metadata !3621, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i32 0, metadata !3622, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i32 0, metadata !3622, metadata !DIExpression()), !dbg !3623
  %4 = icmp eq i32 %2, 0, !dbg !3624
  br i1 %4, label %16, label %5, !dbg !3627

5:                                                ; preds = %3, %13
  %6 = phi i32 [ %14, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3622, metadata !DIExpression()), !dbg !3623
  switch i32 %0, label %13 [
    i32 0, label %7
    i32 1, label %10
  ], !dbg !3628

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3630
  %9 = load i8, i8* %8, align 1, !dbg !3630
  store volatile i8 %9, i8* inttoptr (i32 2030043648 to i8*), align 512, !dbg !3633
  br label %13, !dbg !3634

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3635
  %12 = load i8, i8* %11, align 1, !dbg !3635
  store volatile i8 %12, i8* inttoptr (i32 2030044160 to i8*), align 1024, !dbg !3638
  br label %13, !dbg !3639

13:                                               ; preds = %5, %7, %10
  %14 = add nuw i32 %6, 1, !dbg !3640
  call void @llvm.dbg.value(metadata i32 %14, metadata !3622, metadata !DIExpression()), !dbg !3623
  %15 = icmp eq i32 %14, %2, !dbg !3624
  br i1 %15, label %16, label %5, !dbg !3627, !llvm.loop !3641

16:                                               ; preds = %13, %3
  ret void, !dbg !3643
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Tx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !dbg !3644 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3648, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.value(metadata i8* %1, metadata !3649, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.value(metadata i32 %2, metadata !3650, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.value(metadata i32 %3, metadata !3651, metadata !DIExpression()), !dbg !3652
  switch i32 %0, label %9 [
    i32 0, label %6
    i32 1, label %5
  ], !dbg !3653

5:                                                ; preds = %4
  br label %6, !dbg !3654

6:                                                ; preds = %4, %5
  %7 = phi i32 [ 16, %5 ], [ 14, %4 ]
  %8 = ptrtoint i8* %1 to i32, !dbg !3658
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %8, i32 noundef %2, i32 noundef %7, i32 noundef 0, i32 noundef %3, i32 noundef 0) #15, !dbg !3658
  tail call void @DMA_Vfifo_Flush(i32 noundef %7) #15, !dbg !3658
  br label %9, !dbg !3659

9:                                                ; preds = %6, %4
  ret void, !dbg !3659
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_SetAdrs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Flush(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Rx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 !dbg !3660 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3664, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i8* %1, metadata !3665, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i32 %2, metadata !3666, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i32 %3, metadata !3667, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i32 %4, metadata !3668, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i32 %5, metadata !3669, metadata !DIExpression()), !dbg !3670
  switch i32 %0, label %11 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !3671

7:                                                ; preds = %6
  br label %8, !dbg !3672

8:                                                ; preds = %6, %7
  %9 = phi i32 [ 17, %7 ], [ 15, %6 ]
  %10 = ptrtoint i8* %1 to i32, !dbg !3676
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %10, i32 noundef %2, i32 noundef %9, i32 noundef %3, i32 noundef %4, i32 noundef %5) #15, !dbg !3676
  tail call void @DMA_Vfifo_Flush(i32 noundef %9) #15, !dbg !3676
  br label %11, !dbg !3677

11:                                               ; preds = %8, %6
  ret void, !dbg !3677
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #0 !dbg !3678 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3682, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata void ()* %1, metadata !3683, metadata !DIExpression()), !dbg !3684
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !3685

3:                                                ; preds = %2
  br label %4, !dbg !3686

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef %5, void ()* noundef %1) #15, !dbg !3690
  br label %6, !dbg !3691

6:                                                ; preds = %4, %2
  ret void, !dbg !3691
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #0 !dbg !3692 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3694, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata void ()* %1, metadata !3695, metadata !DIExpression()), !dbg !3696
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !3697

3:                                                ; preds = %2
  br label %4, !dbg !3698

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_TO_Callback(i32 noundef %5, void ()* noundef %1) #15, !dbg !3702
  br label %6, !dbg !3703

6:                                                ; preds = %4, %2
  ret void, !dbg !3703
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_TO_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !3704 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3706, metadata !DIExpression()), !dbg !3710
  %2 = icmp eq i32 %0, 0, !dbg !3711
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3711
  call void @llvm.dbg.value(metadata i32 %3, metadata !3707, metadata !DIExpression()), !dbg !3710
  %4 = or i32 %3, 12, !dbg !3712
  %5 = inttoptr i32 %4 to i32*, !dbg !3712
  %6 = load volatile i32, i32* %5, align 4, !dbg !3712
  call void @llvm.dbg.value(metadata i32 %6, metadata !3709, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3710
  store volatile i32 191, i32* %5, align 4, !dbg !3713
  %7 = or i32 %3, 8, !dbg !3714
  %8 = inttoptr i32 %7 to i32*, !dbg !3714
  %9 = load volatile i32, i32* %8, align 8, !dbg !3714
  call void @llvm.dbg.value(metadata i32 %9, metadata !3708, metadata !DIExpression()), !dbg !3710
  %10 = and i32 %9, 65327, !dbg !3715
  %11 = or i32 %10, 208, !dbg !3715
  call void @llvm.dbg.value(metadata i32 %9, metadata !3708, metadata !DIExpression(DW_OP_constu, 208, DW_OP_or, DW_OP_stack_value)), !dbg !3710
  store volatile i32 %11, i32* %8, align 8, !dbg !3716
  %12 = or i32 %3, 68, !dbg !3717
  %13 = inttoptr i32 %12 to i32*, !dbg !3717
  store volatile i32 0, i32* %13, align 4, !dbg !3718
  store volatile i32 0, i32* %5, align 4, !dbg !3719
  %14 = or i32 %3, 16, !dbg !3720
  %15 = inttoptr i32 %14 to i32*, !dbg !3720
  store volatile i32 2, i32* %15, align 16, !dbg !3721
  %16 = and i32 %6, 65535, !dbg !3722
  store volatile i32 %16, i32* %5, align 4, !dbg !3723
  ret void, !dbg !3724
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 !dbg !3725 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3729, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata i8 %1, metadata !3730, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata i8 %2, metadata !3731, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata i8 %3, metadata !3732, metadata !DIExpression()), !dbg !3736
  %5 = icmp eq i32 %0, 0, !dbg !3737
  %6 = select i1 %5, i32 -2096955392, i32 -2096889856, !dbg !3737
  call void @llvm.dbg.value(metadata i32 %6, metadata !3733, metadata !DIExpression()), !dbg !3736
  %7 = or i32 %6, 12, !dbg !3738
  %8 = inttoptr i32 %7 to i32*, !dbg !3738
  %9 = load volatile i32, i32* %8, align 4, !dbg !3738
  call void @llvm.dbg.value(metadata i32 %9, metadata !3735, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3736
  store volatile i32 191, i32* %8, align 4, !dbg !3739
  %10 = zext i8 %1 to i32, !dbg !3740
  %11 = or i32 %6, 16, !dbg !3741
  %12 = inttoptr i32 %11 to i32*, !dbg !3741
  store volatile i32 %10, i32* %12, align 16, !dbg !3742
  %13 = or i32 %6, 20, !dbg !3743
  %14 = inttoptr i32 %13 to i32*, !dbg !3743
  store volatile i32 %10, i32* %14, align 4, !dbg !3744
  %15 = zext i8 %2 to i32, !dbg !3745
  %16 = or i32 %6, 24, !dbg !3746
  %17 = inttoptr i32 %16 to i32*, !dbg !3746
  store volatile i32 %15, i32* %17, align 8, !dbg !3747
  %18 = or i32 %6, 28, !dbg !3748
  %19 = inttoptr i32 %18 to i32*, !dbg !3748
  store volatile i32 %15, i32* %19, align 4, !dbg !3749
  %20 = or i32 %6, 8, !dbg !3750
  %21 = inttoptr i32 %20 to i32*, !dbg !3750
  %22 = load volatile i32, i32* %21, align 8, !dbg !3750
  call void @llvm.dbg.value(metadata i32 %22, metadata !3734, metadata !DIExpression()), !dbg !3736
  %23 = and i32 %22, 65525, !dbg !3751
  %24 = or i32 %23, 10, !dbg !3751
  call void @llvm.dbg.value(metadata i32 %22, metadata !3734, metadata !DIExpression(DW_OP_constu, 10, DW_OP_or, DW_OP_stack_value)), !dbg !3736
  store volatile i32 %24, i32* %21, align 8, !dbg !3752
  %25 = and i32 %9, 65535, !dbg !3753
  store volatile i32 %25, i32* %8, align 4, !dbg !3754
  %26 = zext i8 %3 to i32, !dbg !3755
  %27 = or i32 %6, 64, !dbg !3756
  %28 = inttoptr i32 %27 to i32*, !dbg !3756
  store volatile i32 %26, i32* %28, align 64, !dbg !3757
  %29 = or i32 %6, 68, !dbg !3758
  %30 = inttoptr i32 %29 to i32*, !dbg !3758
  store volatile i32 1, i32* %30, align 4, !dbg !3759
  ret void, !dbg !3760
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !3761 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3763, metadata !DIExpression()), !dbg !3766
  %2 = icmp eq i32 %0, 0, !dbg !3767
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3767
  call void @llvm.dbg.value(metadata i32 %3, metadata !3764, metadata !DIExpression()), !dbg !3766
  %4 = or i32 %3, 12, !dbg !3768
  %5 = inttoptr i32 %4 to i32*, !dbg !3768
  %6 = load volatile i32, i32* %5, align 4, !dbg !3768
  call void @llvm.dbg.value(metadata i32 %6, metadata !3765, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3766
  store volatile i32 191, i32* %5, align 4, !dbg !3769
  %7 = or i32 %3, 8, !dbg !3770
  %8 = inttoptr i32 %7 to i32*, !dbg !3770
  store volatile i32 0, i32* %8, align 8, !dbg !3771
  store volatile i32 0, i32* %5, align 4, !dbg !3772
  %9 = and i32 %6, 65535, !dbg !3773
  store volatile i32 %9, i32* %5, align 4, !dbg !3774
  ret void, !dbg !3775
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_reset_default_value(i32 noundef %0) local_unnamed_addr #3 !dbg !3776 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3778, metadata !DIExpression()), !dbg !3780
  %2 = icmp eq i32 %0, 0, !dbg !3781
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3781
  call void @llvm.dbg.value(metadata i32 %3, metadata !3779, metadata !DIExpression()), !dbg !3780
  %4 = or i32 %3, 12, !dbg !3782
  %5 = inttoptr i32 %4 to i32*, !dbg !3782
  store volatile i32 191, i32* %5, align 4, !dbg !3783
  %6 = or i32 %3, 8, !dbg !3784
  %7 = inttoptr i32 %6 to i32*, !dbg !3784
  store volatile i32 16, i32* %7, align 8, !dbg !3785
  %8 = or i32 %3, 16, !dbg !3786
  %9 = inttoptr i32 %8 to i32*, !dbg !3786
  store volatile i32 0, i32* %9, align 16, !dbg !3787
  %10 = or i32 %3, 24, !dbg !3788
  %11 = inttoptr i32 %10 to i32*, !dbg !3788
  store volatile i32 0, i32* %11, align 8, !dbg !3789
  store volatile i32 128, i32* %5, align 4, !dbg !3790
  %12 = inttoptr i32 %3 to i32*, !dbg !3791
  store volatile i32 0, i32* %12, align 65536, !dbg !3792
  %13 = or i32 %3, 4, !dbg !3793
  %14 = inttoptr i32 %13 to i32*, !dbg !3793
  store volatile i32 0, i32* %14, align 4, !dbg !3794
  store volatile i32 0, i32* %5, align 4, !dbg !3795
  store volatile i32 0, i32* %14, align 4, !dbg !3796
  store volatile i32 0, i32* %7, align 8, !dbg !3797
  store volatile i32 191, i32* %5, align 4, !dbg !3798
  store volatile i32 0, i32* %7, align 8, !dbg !3799
  store volatile i32 0, i32* %5, align 4, !dbg !3800
  store volatile i32 0, i32* %9, align 16, !dbg !3801
  %15 = or i32 %3, 28, !dbg !3802
  %16 = inttoptr i32 %15 to i32*, !dbg !3802
  store volatile i32 0, i32* %16, align 4, !dbg !3803
  %17 = or i32 %3, 36, !dbg !3804
  %18 = inttoptr i32 %17 to i32*, !dbg !3804
  store volatile i32 0, i32* %18, align 4, !dbg !3805
  %19 = or i32 %3, 40, !dbg !3806
  %20 = inttoptr i32 %19 to i32*, !dbg !3806
  store volatile i32 0, i32* %20, align 8, !dbg !3807
  %21 = or i32 %3, 44, !dbg !3808
  %22 = inttoptr i32 %21 to i32*, !dbg !3808
  store volatile i32 0, i32* %22, align 4, !dbg !3809
  %23 = or i32 %3, 52, !dbg !3810
  %24 = inttoptr i32 %23 to i32*, !dbg !3810
  store volatile i32 0, i32* %24, align 4, !dbg !3811
  %25 = or i32 %3, 60, !dbg !3812
  %26 = inttoptr i32 %25 to i32*, !dbg !3812
  store volatile i32 0, i32* %26, align 4, !dbg !3813
  %27 = or i32 %3, 64, !dbg !3814
  %28 = inttoptr i32 %27 to i32*, !dbg !3814
  store volatile i32 0, i32* %28, align 64, !dbg !3815
  %29 = or i32 %3, 68, !dbg !3816
  %30 = inttoptr i32 %29 to i32*, !dbg !3816
  store volatile i32 0, i32* %30, align 4, !dbg !3817
  %31 = or i32 %3, 72, !dbg !3818
  %32 = inttoptr i32 %31 to i32*, !dbg !3818
  store volatile i32 0, i32* %32, align 8, !dbg !3819
  %33 = or i32 %3, 76, !dbg !3820
  %34 = inttoptr i32 %33 to i32*, !dbg !3820
  store volatile i32 0, i32* %34, align 4, !dbg !3821
  %35 = or i32 %3, 80, !dbg !3822
  %36 = inttoptr i32 %35 to i32*, !dbg !3822
  store volatile i32 0, i32* %36, align 16, !dbg !3823
  %37 = or i32 %3, 84, !dbg !3824
  %38 = inttoptr i32 %37 to i32*, !dbg !3824
  store volatile i32 0, i32* %38, align 4, !dbg !3825
  %39 = or i32 %3, 88, !dbg !3826
  %40 = inttoptr i32 %39 to i32*, !dbg !3826
  store volatile i32 0, i32* %40, align 8, !dbg !3827
  %41 = or i32 %3, 96, !dbg !3828
  %42 = inttoptr i32 %41 to i32*, !dbg !3828
  store volatile i32 0, i32* %42, align 32, !dbg !3829
  ret void, !dbg !3830
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_query_empty(i32 noundef %0) local_unnamed_addr #3 !dbg !3831 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3833, metadata !DIExpression()), !dbg !3835
  %2 = icmp eq i32 %0, 0, !dbg !3836
  call void @llvm.dbg.value(metadata i32 undef, metadata !3834, metadata !DIExpression()), !dbg !3835
  %3 = select i1 %2, i32 -2096955372, i32 -2096889836
  %4 = inttoptr i32 %3 to i32*
  br label %5, !dbg !3837

5:                                                ; preds = %5, %1
  %6 = load volatile i32, i32* %4, align 4, !dbg !3838
  %7 = and i32 %6, 64, !dbg !3839
  %8 = icmp eq i32 %7, 0, !dbg !3840
  br i1 %8, label %5, label %9, !dbg !3837, !llvm.loop !3841

9:                                                ; preds = %5
  ret void, !dbg !3843
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_fatal_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3844 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3848, metadata !DIExpression()), !dbg !3861
  call void @llvm.dbg.value(metadata i32 %1, metadata !3849, metadata !DIExpression()), !dbg !3861
  call void @llvm.dbg.value(metadata i8* %2, metadata !3850, metadata !DIExpression()), !dbg !3861
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3862
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3862
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3851, metadata !DIExpression()), !dbg !3863
  %7 = bitcast i32* %5 to i8*, !dbg !3864
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #18, !dbg !3864
  call void @llvm.dbg.value(metadata i32* %5, metadata !3860, metadata !DIExpression(DW_OP_deref)), !dbg !3861
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #15, !dbg !3865
  call void @llvm.va_start(i8* nonnull %6), !dbg !3866
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3867
  %10 = load i32, i32* %9, align 4, !dbg !3867
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3867
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #15, !dbg !3867
  call void @llvm.va_end(i8* nonnull %6), !dbg !3868
  %13 = load i32, i32* %5, align 4, !dbg !3869
  call void @llvm.dbg.value(metadata i32 %13, metadata !3860, metadata !DIExpression()), !dbg !3861
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #15, !dbg !3870
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #18, !dbg !3871
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3871
  ret void, !dbg !3871
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #9

; Function Attrs: optsize
declare dso_local i32 @vprintf(i8* noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #9

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_error_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3872 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3874, metadata !DIExpression()), !dbg !3879
  call void @llvm.dbg.value(metadata i32 %1, metadata !3875, metadata !DIExpression()), !dbg !3879
  call void @llvm.dbg.value(metadata i8* %2, metadata !3876, metadata !DIExpression()), !dbg !3879
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3880
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3880
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3877, metadata !DIExpression()), !dbg !3881
  %7 = bitcast i32* %5 to i8*, !dbg !3882
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #18, !dbg !3882
  call void @llvm.dbg.value(metadata i32* %5, metadata !3878, metadata !DIExpression(DW_OP_deref)), !dbg !3879
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #15, !dbg !3883
  call void @llvm.va_start(i8* nonnull %6), !dbg !3884
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3885
  %10 = load i32, i32* %9, align 4, !dbg !3885
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3885
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #15, !dbg !3885
  call void @llvm.va_end(i8* nonnull %6), !dbg !3886
  %13 = load i32, i32* %5, align 4, !dbg !3887
  call void @llvm.dbg.value(metadata i32 %13, metadata !3878, metadata !DIExpression()), !dbg !3879
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #15, !dbg !3888
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #18, !dbg !3889
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3889
  ret void, !dbg !3889
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_warning_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3890 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3892, metadata !DIExpression()), !dbg !3897
  call void @llvm.dbg.value(metadata i32 %1, metadata !3893, metadata !DIExpression()), !dbg !3897
  call void @llvm.dbg.value(metadata i8* %2, metadata !3894, metadata !DIExpression()), !dbg !3897
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3898
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3898
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3895, metadata !DIExpression()), !dbg !3899
  %7 = bitcast i32* %5 to i8*, !dbg !3900
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #18, !dbg !3900
  call void @llvm.dbg.value(metadata i32* %5, metadata !3896, metadata !DIExpression(DW_OP_deref)), !dbg !3897
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #15, !dbg !3901
  call void @llvm.va_start(i8* nonnull %6), !dbg !3902
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3903
  %10 = load i32, i32* %9, align 4, !dbg !3903
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3903
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #15, !dbg !3903
  call void @llvm.va_end(i8* nonnull %6), !dbg !3904
  %13 = load i32, i32* %5, align 4, !dbg !3905
  call void @llvm.dbg.value(metadata i32 %13, metadata !3896, metadata !DIExpression()), !dbg !3897
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #15, !dbg !3906
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #18, !dbg !3907
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3907
  ret void, !dbg !3907
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_info_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3908 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3910, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata i32 %1, metadata !3911, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata i8* %2, metadata !3912, metadata !DIExpression()), !dbg !3915
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3916
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3916
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3913, metadata !DIExpression()), !dbg !3917
  %7 = bitcast i32* %5 to i8*, !dbg !3918
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #18, !dbg !3918
  call void @llvm.dbg.value(metadata i32* %5, metadata !3914, metadata !DIExpression(DW_OP_deref)), !dbg !3915
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #15, !dbg !3919
  call void @llvm.va_start(i8* nonnull %6), !dbg !3920
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3921
  %10 = load i32, i32* %9, align 4, !dbg !3921
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3921
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #15, !dbg !3921
  call void @llvm.va_end(i8* nonnull %6), !dbg !3922
  %13 = load i32, i32* %5, align 4, !dbg !3923
  call void @llvm.dbg.value(metadata i32 %13, metadata !3914, metadata !DIExpression()), !dbg !3915
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #15, !dbg !3924
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #18, !dbg !3925
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3925
  ret void, !dbg !3925
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @log_hal_dump_internal(i8* nocapture noundef %0, i32 noundef %1, i8* nocapture noundef %2, i8* nocapture noundef %3, i32 noundef %4, ...) local_unnamed_addr #10 !dbg !3926 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3932, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i32 %1, metadata !3933, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i8* %2, metadata !3934, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i8* %3, metadata !3935, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i32 %4, metadata !3936, metadata !DIExpression()), !dbg !3937
  ret void, !dbg !3938
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_eint_mask(i32 noundef %0) local_unnamed_addr #0 !dbg !3939 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3944, metadata !DIExpression()), !dbg !3946
  %3 = bitcast i32* %2 to i8*, !dbg !3947
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #18, !dbg !3947
  call void @llvm.dbg.value(metadata i32* %2, metadata !3945, metadata !DIExpression(DW_OP_deref)), !dbg !3946
  %4 = call fastcc i32 @hal_eint_convert_for_gpio(i32 noundef %0, i32* noundef nonnull %2) #16, !dbg !3948
  %5 = icmp eq i32 %4, 0, !dbg !3950
  br i1 %5, label %7, label %6, !dbg !3951

6:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.hal_eint_mask, i32 0, i32 0), i32 noundef 232, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0)) #15, !dbg !3952
  br label %11, !dbg !3954

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4, !dbg !3955
  call void @llvm.dbg.value(metadata i32 %8, metadata !3945, metadata !DIExpression()), !dbg !3946
  %9 = tail call i32 @eint_set_mask(i32 noundef %8) #15, !dbg !3956
  %10 = getelementptr inbounds [23 x i32], [23 x i32]* @is_eint_masked, i32 0, i32 %0, !dbg !3957
  store i32 1, i32* %10, align 4, !dbg !3958
  br label %11, !dbg !3959

11:                                               ; preds = %7, %6
  %12 = phi i32 [ -1, %6 ], [ 0, %7 ], !dbg !3946
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #18, !dbg !3960
  ret i32 %12, !dbg !3960
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize writeonly
define internal fastcc i32 @hal_eint_convert_for_gpio(i32 noundef %0, i32* nocapture noundef writeonly %1) unnamed_addr #11 !dbg !3961 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3966, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i32* %1, metadata !3967, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i32 23, metadata !3968, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i32 0, metadata !3969, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i32 0, metadata !3969, metadata !DIExpression()), !dbg !3970
  br label %3, !dbg !3971

3:                                                ; preds = %2, %11
  %4 = phi i32 [ 0, %2 ], [ %12, %11 ]
  call void @llvm.dbg.value(metadata i32 %4, metadata !3969, metadata !DIExpression()), !dbg !3970
  %5 = getelementptr inbounds [23 x %struct.hal_eint_gpio_map_t], [23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table, i32 0, i32 %4, i32 0, !dbg !3973
  %6 = load i32, i32* %5, align 4, !dbg !3973
  %7 = icmp eq i32 %6, %0, !dbg !3977
  br i1 %7, label %8, label %11, !dbg !3978

8:                                                ; preds = %3
  %9 = getelementptr inbounds [23 x %struct.hal_eint_gpio_map_t], [23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table, i32 0, i32 %4, i32 1, !dbg !3979
  %10 = load i32, i32* %9, align 4, !dbg !3979
  store i32 %10, i32* %1, align 4, !dbg !3981
  br label %14, !dbg !3982

11:                                               ; preds = %3
  %12 = add nuw nsw i32 %4, 1, !dbg !3983
  call void @llvm.dbg.value(metadata i32 %12, metadata !3969, metadata !DIExpression()), !dbg !3970
  %13 = icmp eq i32 %12, 23, !dbg !3984
  br i1 %13, label %14, label %3, !dbg !3971, !llvm.loop !3985

14:                                               ; preds = %11, %8
  %15 = phi i32 [ 0, %8 ], [ -1, %11 ], !dbg !3970
  ret i32 %15, !dbg !3987
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_eint_unmask(i32 noundef %0) local_unnamed_addr #0 !dbg !3988 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3990, metadata !DIExpression()), !dbg !3992
  %3 = bitcast i32* %2 to i8*, !dbg !3993
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #18, !dbg !3993
  call void @llvm.dbg.value(metadata i32* %2, metadata !3991, metadata !DIExpression(DW_OP_deref)), !dbg !3992
  %4 = call fastcc i32 @hal_eint_convert_for_gpio(i32 noundef %0, i32* noundef nonnull %2) #16, !dbg !3994
  %5 = icmp eq i32 %4, 0, !dbg !3996
  br i1 %5, label %7, label %6, !dbg !3997

6:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.hal_eint_unmask, i32 0, i32 0), i32 noundef 244, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0)) #15, !dbg !3998
  br label %11, !dbg !4000

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4, !dbg !4001
  call void @llvm.dbg.value(metadata i32 %8, metadata !3991, metadata !DIExpression()), !dbg !3992
  %9 = tail call i32 @eint_set_unmask(i32 noundef %8) #15, !dbg !4002
  %10 = getelementptr inbounds [23 x i32], [23 x i32]* @is_eint_masked, i32 0, i32 %0, !dbg !4003
  store i32 0, i32* %10, align 4, !dbg !4004
  br label %11, !dbg !4005

11:                                               ; preds = %7, %6
  %12 = phi i32 [ -1, %6 ], [ 0, %7 ], !dbg !3992
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #18, !dbg !4006
  ret i32 %12, !dbg !4006
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_eint_init(i32 noundef %0, %struct.gpio_backup_restore_t* noundef readonly %1) local_unnamed_addr #0 !dbg !4007 {
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4019, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata %struct.gpio_backup_restore_t* %1, metadata !4020, metadata !DIExpression()), !dbg !4027
  %4 = bitcast i32* %3 to i8*, !dbg !4028
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #18, !dbg !4028
  call void @llvm.dbg.value(metadata i32* %3, metadata !4021, metadata !DIExpression(DW_OP_deref)), !dbg !4027
  %5 = call fastcc i32 @hal_eint_convert_for_gpio(i32 noundef %0, i32* noundef nonnull %3) #16, !dbg !4029
  %6 = icmp eq i32 %5, 0, !dbg !4031
  br i1 %6, label %8, label %7, !dbg !4032

7:                                                ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.hal_eint_init, i32 0, i32 0), i32 noundef 258, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0)) #15, !dbg !4033
  br label %32, !dbg !4035

8:                                                ; preds = %2
  %9 = icmp eq %struct.gpio_backup_restore_t* %1, null, !dbg !4036
  br i1 %9, label %10, label %11, !dbg !4038

10:                                               ; preds = %8
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.hal_eint_init, i32 0, i32 0), i32 noundef 262, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1.18, i32 0, i32 0)) #15, !dbg !4039
  br label %32, !dbg !4041

11:                                               ; preds = %8
  %12 = getelementptr inbounds [23 x i32], [23 x i32]* @is_eint_callback_registered, i32 0, i32 %0, !dbg !4042
  %13 = load i32, i32* %12, align 4, !dbg !4042
  %14 = icmp eq i32 %13, 1, !dbg !4043
  %15 = load i32, i32* %3, align 4, !dbg !4044
  call void @llvm.dbg.value(metadata i32 %15, metadata !4021, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata i32 %15, metadata !4021, metadata !DIExpression()), !dbg !4027
  br i1 %14, label %16, label %22, !dbg !4045

16:                                               ; preds = %11
  %17 = tail call fastcc i32 @hal_eint_apply_config(i32 noundef %15, %struct.gpio_backup_restore_t* noundef nonnull %1) #16, !dbg !4046
  call void @llvm.dbg.value(metadata i32 %17, metadata !4022, metadata !DIExpression()), !dbg !4027
  %18 = icmp eq i32 %17, 0, !dbg !4048
  br i1 %18, label %19, label %32, !dbg !4050

19:                                               ; preds = %16
  %20 = tail call i32 @hal_eint_unmask(i32 noundef %0) #16, !dbg !4051
  call void @llvm.dbg.value(metadata i32 %20, metadata !4022, metadata !DIExpression()), !dbg !4027
  %21 = icmp eq i32 %20, 0, !dbg !4052
  br i1 %21, label %31, label %32, !dbg !4054

22:                                               ; preds = %11
  %23 = tail call fastcc i32 @get_index_from_gpio_pin(i32 noundef %15) #16, !dbg !4055
  call void @llvm.dbg.value(metadata !DIArgList([23 x %struct.hal_eint_callback_context_t]* @g_eint_callback_context, i32 %23), metadata !4023, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 12, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4056
  %24 = getelementptr inbounds [23 x %struct.hal_eint_callback_context_t], [23 x %struct.hal_eint_callback_context_t]* @g_eint_callback_context, i32 0, i32 %23, i32 0, !dbg !4057
  %25 = tail call i8* @memset(i8* noundef nonnull %24, i32 noundef 0, i32 noundef 12) #15, !dbg !4058
  call void @llvm.dbg.value(metadata i32 %15, metadata !4021, metadata !DIExpression()), !dbg !4027
  %26 = tail call fastcc i32 @hal_eint_apply_config(i32 noundef %15, %struct.gpio_backup_restore_t* noundef nonnull %1) #16, !dbg !4059
  call void @llvm.dbg.value(metadata i32 %26, metadata !4022, metadata !DIExpression()), !dbg !4027
  %27 = icmp eq i32 %26, 0, !dbg !4060
  br i1 %27, label %28, label %32, !dbg !4062

28:                                               ; preds = %22
  %29 = tail call i32 @hal_eint_mask(i32 noundef %0) #16, !dbg !4063
  call void @llvm.dbg.value(metadata i32 %29, metadata !4022, metadata !DIExpression()), !dbg !4027
  %30 = icmp eq i32 %29, 0, !dbg !4064
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %19
  br label %32, !dbg !4066

32:                                               ; preds = %22, %19, %16, %28, %31, %10, %7
  %33 = phi i32 [ -1, %7 ], [ -2, %10 ], [ 0, %31 ], [ -1, %28 ], [ -1, %16 ], [ %20, %19 ], [ %26, %22 ], !dbg !4027
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #18, !dbg !4067
  ret i32 %33, !dbg !4067
}

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @hal_eint_apply_config(i32 noundef %0, %struct.gpio_backup_restore_t* nocapture noundef readonly %1) unnamed_addr #0 !dbg !4068 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4072, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata %struct.gpio_backup_restore_t* %1, metadata !4073, metadata !DIExpression()), !dbg !4080
  %5 = bitcast i32* %3 to i8*, !dbg !4081
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #18, !dbg !4081
  %6 = bitcast i32* %4 to i8*, !dbg !4082
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #18, !dbg !4082
  call void @llvm.dbg.value(metadata i32 0, metadata !4079, metadata !DIExpression()), !dbg !4080
  %7 = getelementptr inbounds %struct.gpio_backup_restore_t, %struct.gpio_backup_restore_t* %1, i32 0, i32 0, !dbg !4083
  %8 = load i32, i32* %7, align 4, !dbg !4083
  %9 = icmp ult i32 %8, 5, !dbg !4084
  br i1 %9, label %10, label %30, !dbg !4084

10:                                               ; preds = %2
  %11 = getelementptr inbounds [5 x i32], [5 x i32]* @switch.table.hal_eint_apply_config, i32 0, i32 %8, !dbg !4084
  %12 = load i32, i32* %11, align 4, !dbg !4084
  %13 = getelementptr inbounds [5 x i32], [5 x i32]* @switch.table.hal_eint_set_trigger_mode.5, i32 0, i32 %8, !dbg !4084
  %14 = load i32, i32* %13, align 4, !dbg !4084
  %15 = getelementptr inbounds [5 x i32], [5 x i32]* @switch.table.hal_eint_set_trigger_mode.6, i32 0, i32 %8, !dbg !4084
  %16 = load i32, i32* %15, align 4, !dbg !4084
  call void @llvm.dbg.value(metadata i32 %16, metadata !4079, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata i32 %14, metadata !4077, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata i32 %12, metadata !4076, metadata !DIExpression()), !dbg !4080
  %17 = getelementptr inbounds %struct.gpio_backup_restore_t, %struct.gpio_backup_restore_t* %1, i32 0, i32 1, !dbg !4085
  %18 = load i32, i32* %17, align 4, !dbg !4085
  call void @llvm.dbg.value(metadata i32* %3, metadata !4074, metadata !DIExpression(DW_OP_deref)), !dbg !4080
  call void @llvm.dbg.value(metadata i32* %4, metadata !4078, metadata !DIExpression(DW_OP_deref)), !dbg !4080
  call fastcc void @hal_eint_calc_debounce_parameters(i32 noundef %18, i32* noundef nonnull %4, i32* noundef nonnull %3) #16, !dbg !4086
  %19 = load i32, i32* %3, align 4, !dbg !4087
  call void @llvm.dbg.value(metadata i32 %19, metadata !4074, metadata !DIExpression()), !dbg !4080
  %20 = icmp eq i32 %19, 0, !dbg !4089
  %21 = load i32, i32* %4, align 4, !dbg !4090
  call void @llvm.dbg.value(metadata i32 %21, metadata !4078, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata i32 %21, metadata !4078, metadata !DIExpression()), !dbg !4080
  br i1 %20, label %22, label %24, !dbg !4091

22:                                               ; preds = %10
  %23 = tail call i32 @gpio_int(i32 noundef %0, i32 noundef %12, i32 noundef 0, i32 noundef %14, i32 noundef %16, i32 noundef %21, i8 noundef zeroext 0, void (i32)* noundef nonnull @hal_eint_isr) #15, !dbg !4092
  call void @llvm.dbg.value(metadata i32 %23, metadata !4075, metadata !DIExpression()), !dbg !4080
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.hal_eint_apply_config, i32 0, i32 0), i32 noundef 212, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2.19, i32 0, i32 0)) #15, !dbg !4094
  br label %27, !dbg !4095

24:                                               ; preds = %10
  %25 = trunc i32 %19 to i8, !dbg !4096
  %26 = tail call i32 @gpio_int(i32 noundef %0, i32 noundef %12, i32 noundef 1, i32 noundef %14, i32 noundef %16, i32 noundef %21, i8 noundef zeroext %25, void (i32)* noundef nonnull @hal_eint_isr) #15, !dbg !4098
  call void @llvm.dbg.value(metadata i32 %26, metadata !4075, metadata !DIExpression()), !dbg !4080
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi i32 [ %23, %22 ], [ %26, %24 ], !dbg !4090
  call void @llvm.dbg.value(metadata i32 %28, metadata !4075, metadata !DIExpression()), !dbg !4080
  %29 = ashr i32 %28, 31, !dbg !4099
  br label %30, !dbg !4100

30:                                               ; preds = %2, %27
  %31 = phi i32 [ %29, %27 ], [ -1, %2 ], !dbg !4080
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #18, !dbg !4101
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #18, !dbg !4101
  ret i32 %31, !dbg !4101
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize readnone
define internal fastcc i32 @get_index_from_gpio_pin(i32 noundef %0) unnamed_addr #12 !dbg !4102 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4106, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata i32 0, metadata !4107, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata i32 0, metadata !4107, metadata !DIExpression()), !dbg !4108
  br label %2, !dbg !4109

2:                                                ; preds = %1, %7
  %3 = phi i32 [ 0, %1 ], [ %8, %7 ]
  call void @llvm.dbg.value(metadata i32 %3, metadata !4107, metadata !DIExpression()), !dbg !4108
  %4 = getelementptr inbounds [23 x %struct.hal_eint_gpio_map_t], [23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table, i32 0, i32 %3, i32 1, !dbg !4111
  %5 = load i32, i32* %4, align 4, !dbg !4111
  %6 = icmp eq i32 %5, %0, !dbg !4115
  br i1 %6, label %10, label %7, !dbg !4116

7:                                                ; preds = %2
  %8 = add nuw nsw i32 %3, 1, !dbg !4117
  call void @llvm.dbg.value(metadata i32 %8, metadata !4107, metadata !DIExpression()), !dbg !4108
  %9 = icmp eq i32 %8, 23, !dbg !4118
  br i1 %9, label %10, label %2, !dbg !4109, !llvm.loop !4119

10:                                               ; preds = %7, %2
  %11 = phi i32 [ %3, %2 ], [ -1, %7 ], !dbg !4108
  ret i32 %11, !dbg !4121
}

; Function Attrs: optsize
declare dso_local i8* @memset(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define internal fastcc void @hal_eint_calc_debounce_parameters(i32 noundef %0, i32* nocapture noundef writeonly %1, i32* nocapture noundef writeonly %2) unnamed_addr #13 !dbg !4122 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4127, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.value(metadata i32* %1, metadata !4128, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.value(metadata i32* %2, metadata !4129, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.value(metadata i32 10, metadata !4130, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.value(metadata i32 0, metadata !4131, metadata !DIExpression()), !dbg !4132
  %4 = shl i32 %0, 3, !dbg !4133
  call void @llvm.dbg.value(metadata i32 %4, metadata !4131, metadata !DIExpression()), !dbg !4132
  %5 = icmp ult i32 %4, 11, !dbg !4135
  br i1 %5, label %6, label %7, !dbg !4136

6:                                                ; preds = %3
  store i32 0, i32* %1, align 4, !dbg !4137
  br label %32, !dbg !4139

7:                                                ; preds = %3
  %8 = shl i32 %0, 2, !dbg !4140
  call void @llvm.dbg.value(metadata i32 %8, metadata !4131, metadata !DIExpression()), !dbg !4132
  %9 = icmp ult i32 %8, 11, !dbg !4142
  br i1 %9, label %10, label %11, !dbg !4143

10:                                               ; preds = %7
  store i32 1, i32* %1, align 4, !dbg !4144
  br label %32, !dbg !4146

11:                                               ; preds = %7
  %12 = shl i32 %0, 1, !dbg !4147
  call void @llvm.dbg.value(metadata i32 %12, metadata !4131, metadata !DIExpression()), !dbg !4132
  %13 = icmp ult i32 %12, 11, !dbg !4149
  br i1 %13, label %14, label %15, !dbg !4150

14:                                               ; preds = %11
  store i32 2, i32* %1, align 4, !dbg !4151
  br label %32, !dbg !4153

15:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i32 %0, metadata !4131, metadata !DIExpression()), !dbg !4132
  %16 = icmp ult i32 %0, 11, !dbg !4154
  br i1 %16, label %17, label %18, !dbg !4156

17:                                               ; preds = %15
  store i32 3, i32* %1, align 4, !dbg !4157
  br label %32, !dbg !4159

18:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i32 %0, metadata !4131, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shr, DW_OP_stack_value)), !dbg !4132
  %19 = icmp ult i32 %0, 22, !dbg !4160
  br i1 %19, label %20, label %22, !dbg !4162

20:                                               ; preds = %18
  %21 = lshr i32 %0, 1, !dbg !4163
  call void @llvm.dbg.value(metadata i32 %21, metadata !4131, metadata !DIExpression()), !dbg !4132
  store i32 4, i32* %1, align 4, !dbg !4164
  br label %32, !dbg !4166

22:                                               ; preds = %18
  call void @llvm.dbg.value(metadata i32 %0, metadata !4131, metadata !DIExpression(DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value)), !dbg !4132
  %23 = icmp ult i32 %0, 44, !dbg !4167
  br i1 %23, label %24, label %26, !dbg !4169

24:                                               ; preds = %22
  %25 = lshr i32 %0, 2, !dbg !4170
  call void @llvm.dbg.value(metadata i32 %25, metadata !4131, metadata !DIExpression()), !dbg !4132
  store i32 5, i32* %1, align 4, !dbg !4171
  br label %32, !dbg !4173

26:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i32 %0, metadata !4131, metadata !DIExpression(DW_OP_constu, 3, DW_OP_shr, DW_OP_stack_value)), !dbg !4132
  %27 = icmp ult i32 %0, 88, !dbg !4174
  br i1 %27, label %28, label %30, !dbg !4176

28:                                               ; preds = %26
  %29 = lshr i32 %0, 3, !dbg !4177
  call void @llvm.dbg.value(metadata i32 %29, metadata !4131, metadata !DIExpression()), !dbg !4132
  store i32 6, i32* %1, align 4, !dbg !4178
  br label %32

30:                                               ; preds = %26
  store i32 7, i32* %1, align 4, !dbg !4180
  %31 = lshr i32 %0, 4, !dbg !4182
  br label %32, !dbg !4183

32:                                               ; preds = %6, %14, %20, %28, %24, %17, %10, %30
  %33 = phi i32 [ %31, %30 ], [ %4, %6 ], [ %8, %10 ], [ %12, %14 ], [ %0, %17 ], [ %21, %20 ], [ %25, %24 ], [ %29, %28 ], !dbg !4132
  store i32 %33, i32* %2, align 4, !dbg !4132
  ret void, !dbg !4184
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_eint_isr(i32 noundef %0) #0 !dbg !4185 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4187, metadata !DIExpression()), !dbg !4189
  %2 = tail call fastcc i32 @get_index_from_gpio_pin(i32 noundef %0) #16, !dbg !4190
  call void @llvm.dbg.value(metadata !DIArgList([23 x %struct.hal_eint_callback_context_t]* @g_eint_callback_context, i32 %2), metadata !4188, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 12, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4189
  %3 = getelementptr inbounds [23 x %struct.hal_eint_callback_context_t], [23 x %struct.hal_eint_callback_context_t]* @g_eint_callback_context, i32 0, i32 %2, i32 0, !dbg !4191
  %4 = load i8, i8* %3, align 4, !dbg !4191, !range !4193
  %5 = icmp eq i8 %4, 0, !dbg !4191
  br i1 %5, label %13, label %6, !dbg !4194

6:                                                ; preds = %1
  %7 = getelementptr inbounds [23 x %struct.hal_eint_callback_context_t], [23 x %struct.hal_eint_callback_context_t]* @g_eint_callback_context, i32 0, i32 %2, i32 1, !dbg !4195
  %8 = load void (i8*)*, void (i8*)** %7, align 4, !dbg !4195
  %9 = icmp eq void (i8*)* %8, null, !dbg !4196
  br i1 %9, label %13, label %10, !dbg !4197

10:                                               ; preds = %6
  %11 = getelementptr inbounds [23 x %struct.hal_eint_callback_context_t], [23 x %struct.hal_eint_callback_context_t]* @g_eint_callback_context, i32 0, i32 %2, i32 2, !dbg !4198
  %12 = load i8*, i8** %11, align 4, !dbg !4198
  tail call void %8(i8* noundef %12) #15, !dbg !4200
  br label %13, !dbg !4201

13:                                               ; preds = %10, %6, %1
  ret void, !dbg !4202
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_eint_deinit(i32 noundef %0) local_unnamed_addr #0 !dbg !4203 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4205, metadata !DIExpression()), !dbg !4209
  %3 = bitcast i32* %2 to i8*, !dbg !4210
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #18, !dbg !4210
  call void @llvm.dbg.value(metadata i32* %2, metadata !4206, metadata !DIExpression(DW_OP_deref)), !dbg !4209
  %4 = call fastcc i32 @hal_eint_convert_for_gpio(i32 noundef %0, i32* noundef nonnull %2) #16, !dbg !4211
  %5 = icmp eq i32 %4, 0, !dbg !4213
  br i1 %5, label %7, label %6, !dbg !4214

6:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.hal_eint_deinit, i32 0, i32 0), i32 noundef 302, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0)) #15, !dbg !4215
  br label %16, !dbg !4217

7:                                                ; preds = %1
  %8 = tail call i32 @hal_eint_mask(i32 noundef %0) #16, !dbg !4218
  call void @llvm.dbg.value(metadata i32 %8, metadata !4207, metadata !DIExpression()), !dbg !4209
  %9 = icmp eq i32 %8, 0, !dbg !4219
  br i1 %9, label %10, label %16, !dbg !4221

10:                                               ; preds = %7
  %11 = load i32, i32* %2, align 4, !dbg !4222
  call void @llvm.dbg.value(metadata i32 %11, metadata !4206, metadata !DIExpression()), !dbg !4209
  %12 = tail call fastcc i32 @get_index_from_gpio_pin(i32 noundef %11) #16, !dbg !4223
  call void @llvm.dbg.value(metadata !DIArgList([23 x %struct.hal_eint_callback_context_t]* @g_eint_callback_context, i32 %12), metadata !4208, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 12, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4209
  %13 = getelementptr inbounds [23 x %struct.hal_eint_callback_context_t], [23 x %struct.hal_eint_callback_context_t]* @g_eint_callback_context, i32 0, i32 %12, i32 0, !dbg !4224
  %14 = tail call i8* @memset(i8* noundef nonnull %13, i32 noundef 0, i32 noundef 12) #15, !dbg !4225
  %15 = getelementptr inbounds [23 x i32], [23 x i32]* @is_eint_callback_registered, i32 0, i32 %0, !dbg !4226
  store i32 0, i32* %15, align 4, !dbg !4227
  br label %16

16:                                               ; preds = %7, %10, %6
  %17 = phi i32 [ -1, %6 ], [ 0, %10 ], [ %8, %7 ], !dbg !4209
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #18, !dbg !4228
  ret i32 %17, !dbg !4228
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_eint_register_callback(i32 noundef %0, void (i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #0 !dbg !4229 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4233, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata void (i8*)* %1, metadata !4234, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata i8* %2, metadata !4235, metadata !DIExpression()), !dbg !4239
  %5 = bitcast i32* %4 to i8*, !dbg !4240
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #18, !dbg !4240
  call void @llvm.dbg.value(metadata i32* %4, metadata !4236, metadata !DIExpression(DW_OP_deref)), !dbg !4239
  %6 = call fastcc i32 @hal_eint_convert_for_gpio(i32 noundef %0, i32* noundef nonnull %4) #16, !dbg !4241
  %7 = icmp eq i32 %6, 0, !dbg !4243
  br i1 %7, label %9, label %8, !dbg !4244

8:                                                ; preds = %3
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.hal_eint_register_callback, i32 0, i32 0), i32 noundef 327, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0)) #15, !dbg !4245
  br label %23, !dbg !4247

9:                                                ; preds = %3
  %10 = load i32, i32* %4, align 4, !dbg !4248
  call void @llvm.dbg.value(metadata i32 %10, metadata !4236, metadata !DIExpression()), !dbg !4239
  %11 = tail call fastcc i32 @get_index_from_gpio_pin(i32 noundef %10) #16, !dbg !4249
  call void @llvm.dbg.value(metadata !DIArgList([23 x %struct.hal_eint_callback_context_t]* @g_eint_callback_context, i32 %11), metadata !4238, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 12, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4239
  %12 = getelementptr inbounds [23 x %struct.hal_eint_callback_context_t], [23 x %struct.hal_eint_callback_context_t]* @g_eint_callback_context, i32 0, i32 %11, i32 1, !dbg !4250
  store void (i8*)* %1, void (i8*)** %12, align 4, !dbg !4251
  %13 = getelementptr inbounds [23 x %struct.hal_eint_callback_context_t], [23 x %struct.hal_eint_callback_context_t]* @g_eint_callback_context, i32 0, i32 %11, i32 2, !dbg !4252
  store i8* %2, i8** %13, align 4, !dbg !4253
  %14 = getelementptr inbounds [23 x %struct.hal_eint_callback_context_t], [23 x %struct.hal_eint_callback_context_t]* @g_eint_callback_context, i32 0, i32 %11, i32 0, !dbg !4254
  store i8 1, i8* %14, align 4, !dbg !4255
  %15 = getelementptr inbounds [23 x i32], [23 x i32]* @is_eint_callback_registered, i32 0, i32 %0, !dbg !4256
  store i32 1, i32* %15, align 4, !dbg !4257
  %16 = getelementptr inbounds [23 x i32], [23 x i32]* @is_eint_masked, i32 0, i32 %0, !dbg !4258
  %17 = load i32, i32* %16, align 4, !dbg !4258
  %18 = icmp eq i32 %17, 1, !dbg !4260
  br i1 %18, label %19, label %22, !dbg !4261

19:                                               ; preds = %9
  %20 = tail call i32 @hal_eint_unmask(i32 noundef %0) #16, !dbg !4262
  call void @llvm.dbg.value(metadata i32 %20, metadata !4237, metadata !DIExpression()), !dbg !4239
  %21 = icmp eq i32 %20, 0, !dbg !4264
  br i1 %21, label %22, label %23, !dbg !4266

22:                                               ; preds = %19, %9
  br label %23, !dbg !4267

23:                                               ; preds = %22, %19, %8
  %24 = phi i32 [ -1, %8 ], [ 0, %22 ], [ %20, %19 ], !dbg !4239
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #18, !dbg !4268
  ret i32 %24, !dbg !4268
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_eint_set_trigger_mode(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4269 {
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4273, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.value(metadata i32 %1, metadata !4274, metadata !DIExpression()), !dbg !4281
  %4 = bitcast i32* %3 to i8*, !dbg !4282
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #18, !dbg !4282
  call void @llvm.dbg.value(metadata i32* %3, metadata !4275, metadata !DIExpression(DW_OP_deref)), !dbg !4281
  %5 = call fastcc i32 @hal_eint_convert_for_gpio(i32 noundef %0, i32* noundef nonnull %3) #16, !dbg !4283
  %6 = icmp eq i32 %5, 0, !dbg !4284
  br i1 %6, label %8, label %7, !dbg !4285

7:                                                ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.hal_eint_set_trigger_mode, i32 0, i32 0), i32 noundef 353, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0)) #15, !dbg !4286
  br label %19, !dbg !4288

8:                                                ; preds = %2
  %9 = icmp ult i32 %1, 5, !dbg !4289
  br i1 %9, label %10, label %19, !dbg !4289

10:                                               ; preds = %8
  %11 = getelementptr inbounds [5 x i32], [5 x i32]* @switch.table.hal_eint_set_trigger_mode, i32 0, i32 %1, !dbg !4289
  %12 = load i32, i32* %11, align 4, !dbg !4289
  %13 = getelementptr inbounds [5 x i32], [5 x i32]* @switch.table.hal_eint_set_trigger_mode.5, i32 0, i32 %1, !dbg !4289
  %14 = load i32, i32* %13, align 4, !dbg !4289
  %15 = getelementptr inbounds [5 x i32], [5 x i32]* @switch.table.hal_eint_set_trigger_mode.6, i32 0, i32 %1, !dbg !4289
  %16 = load i32, i32* %15, align 4, !dbg !4289
  call void @llvm.dbg.value(metadata i32 %16, metadata !4280, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.value(metadata i32 %14, metadata !4279, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.value(metadata i32 %12, metadata !4276, metadata !DIExpression()), !dbg !4290
  %17 = load i32, i32* %3, align 4, !dbg !4291
  call void @llvm.dbg.value(metadata i32 %17, metadata !4275, metadata !DIExpression()), !dbg !4281
  %18 = tail call i32 @eint_set_trigger_mode(i32 noundef %17, i32 noundef %12, i32 noundef %14, i32 noundef %16) #15, !dbg !4292
  br label %19

19:                                               ; preds = %8, %10, %7
  %20 = phi i32 [ -1, %7 ], [ 0, %10 ], [ -1, %8 ], !dbg !4281
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #18, !dbg !4293
  ret i32 %20, !dbg !4293
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_eint_set_debounce_count(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4294 {
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4298, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata i32 %1, metadata !4299, metadata !DIExpression()), !dbg !4302
  %4 = bitcast i32* %3 to i8*, !dbg !4303
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #18, !dbg !4303
  call void @llvm.dbg.value(metadata i32* %3, metadata !4300, metadata !DIExpression(DW_OP_deref)), !dbg !4302
  %5 = call fastcc i32 @hal_eint_convert_for_gpio(i32 noundef %0, i32* noundef nonnull %3) #16, !dbg !4304
  %6 = icmp eq i32 %5, 0, !dbg !4306
  br i1 %6, label %8, label %7, !dbg !4307

7:                                                ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.hal_eint_set_debounce_count, i32 0, i32 0), i32 noundef 409, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0)) #15, !dbg !4308
  br label %14, !dbg !4310

8:                                                ; preds = %2
  %9 = icmp ne i32 %1, 0, !dbg !4311
  %10 = zext i1 %9 to i32
  call void @llvm.dbg.value(metadata i32 %10, metadata !4301, metadata !DIExpression()), !dbg !4302
  %11 = load i32, i32* %3, align 4, !dbg !4313
  call void @llvm.dbg.value(metadata i32 %11, metadata !4300, metadata !DIExpression()), !dbg !4302
  %12 = trunc i32 %1 to i8, !dbg !4314
  %13 = tail call i32 @eint_set_debounce(i32 noundef %11, i32 noundef %10, i32 noundef 0, i8 noundef zeroext %12) #15, !dbg !4315
  br label %14, !dbg !4316

14:                                               ; preds = %8, %7
  %15 = phi i32 [ -1, %7 ], [ 0, %8 ], !dbg !4302
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #18, !dbg !4317
  ret i32 %15, !dbg !4317
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_eint_set_debounce_time(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4318 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4320, metadata !DIExpression()), !dbg !4326
  call void @llvm.dbg.value(metadata i32 %1, metadata !4321, metadata !DIExpression()), !dbg !4326
  %6 = bitcast i32* %3 to i8*, !dbg !4327
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #18, !dbg !4327
  %7 = bitcast i32* %4 to i8*, !dbg !4328
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #18, !dbg !4328
  %8 = bitcast i32* %5 to i8*, !dbg !4329
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #18, !dbg !4329
  call void @llvm.dbg.value(metadata i32* %3, metadata !4322, metadata !DIExpression(DW_OP_deref)), !dbg !4326
  %9 = call fastcc i32 @hal_eint_convert_for_gpio(i32 noundef %0, i32* noundef nonnull %3) #16, !dbg !4330
  %10 = icmp eq i32 %9, 0, !dbg !4332
  br i1 %10, label %12, label %11, !dbg !4333

11:                                               ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.hal_eint_set_debounce_time, i32 0, i32 0), i32 noundef 431, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0)) #15, !dbg !4334
  br label %20, !dbg !4336

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32* %4, metadata !4323, metadata !DIExpression(DW_OP_deref)), !dbg !4326
  call void @llvm.dbg.value(metadata i32* %5, metadata !4324, metadata !DIExpression(DW_OP_deref)), !dbg !4326
  call fastcc void @hal_eint_calc_debounce_parameters(i32 noundef %1, i32* noundef nonnull %5, i32* noundef nonnull %4) #16, !dbg !4337
  %13 = icmp ne i32 %1, 0, !dbg !4338
  %14 = zext i1 %13 to i32
  call void @llvm.dbg.value(metadata i32 %14, metadata !4325, metadata !DIExpression()), !dbg !4326
  %15 = load i32, i32* %3, align 4, !dbg !4340
  call void @llvm.dbg.value(metadata i32 %15, metadata !4322, metadata !DIExpression()), !dbg !4326
  %16 = load i32, i32* %5, align 4, !dbg !4341
  call void @llvm.dbg.value(metadata i32 %16, metadata !4324, metadata !DIExpression()), !dbg !4326
  %17 = load i32, i32* %4, align 4, !dbg !4342
  call void @llvm.dbg.value(metadata i32 %17, metadata !4323, metadata !DIExpression()), !dbg !4326
  %18 = trunc i32 %17 to i8, !dbg !4342
  %19 = tail call i32 @eint_set_debounce(i32 noundef %15, i32 noundef %14, i32 noundef %16, i8 noundef zeroext %18) #15, !dbg !4343
  br label %20, !dbg !4344

20:                                               ; preds = %12, %11
  %21 = phi i32 [ -1, %11 ], [ 0, %12 ], !dbg !4326
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #18, !dbg !4345
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #18, !dbg !4345
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #18, !dbg !4345
  ret i32 %21, !dbg !4345
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_eint_set_software_trigger(i32 noundef %0) local_unnamed_addr #0 !dbg !4346 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4348, metadata !DIExpression()), !dbg !4350
  %3 = bitcast i32* %2 to i8*, !dbg !4351
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #18, !dbg !4351
  call void @llvm.dbg.value(metadata i32* %2, metadata !4349, metadata !DIExpression(DW_OP_deref)), !dbg !4350
  %4 = call fastcc i32 @hal_eint_convert_for_gpio(i32 noundef %0, i32* noundef nonnull %2) #16, !dbg !4352
  %5 = icmp eq i32 %4, 0, !dbg !4354
  br i1 %5, label %7, label %6, !dbg !4355

6:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__FUNCTION__.hal_eint_set_software_trigger, i32 0, i32 0), i32 noundef 464, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0)) #15, !dbg !4356
  br label %10, !dbg !4358

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4, !dbg !4359
  call void @llvm.dbg.value(metadata i32 %8, metadata !4349, metadata !DIExpression()), !dbg !4350
  %9 = tail call i32 @eint_set_software_trigger(i32 noundef %8) #15, !dbg !4360
  br label %10, !dbg !4361

10:                                               ; preds = %7, %6
  %11 = phi i32 [ -1, %6 ], [ 0, %7 ], !dbg !4350
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #18, !dbg !4362
  ret i32 %11, !dbg !4362
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_eint_clear_software_trigger(i32 noundef %0) local_unnamed_addr #0 !dbg !4363 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4365, metadata !DIExpression()), !dbg !4367
  %3 = bitcast i32* %2 to i8*, !dbg !4368
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #18, !dbg !4368
  call void @llvm.dbg.value(metadata i32* %2, metadata !4366, metadata !DIExpression(DW_OP_deref)), !dbg !4367
  %4 = call fastcc i32 @hal_eint_convert_for_gpio(i32 noundef %0, i32* noundef nonnull %2) #16, !dbg !4369
  %5 = icmp eq i32 %4, 0, !dbg !4371
  br i1 %5, label %7, label %6, !dbg !4372

6:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__FUNCTION__.hal_eint_clear_software_trigger, i32 0, i32 0), i32 noundef 475, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0)) #15, !dbg !4373
  br label %10, !dbg !4375

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4, !dbg !4376
  call void @llvm.dbg.value(metadata i32 %8, metadata !4366, metadata !DIExpression()), !dbg !4367
  %9 = tail call i32 @eint_clear_software_trigger(i32 noundef %8) #15, !dbg !4377
  br label %10, !dbg !4378

10:                                               ; preds = %7, %6
  %11 = phi i32 [ -1, %6 ], [ 0, %7 ], !dbg !4367
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #18, !dbg !4379
  ret i32 %11, !dbg !4379
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_nvic_init() local_unnamed_addr #10 !dbg !4380 {
  ret i32 0, !dbg !4384
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_enable_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !4385 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4389, metadata !DIExpression()), !dbg !4391
  call void @llvm.dbg.value(metadata i32 -1, metadata !4390, metadata !DIExpression()), !dbg !4391
  %2 = icmp ugt i32 %0, 95, !dbg !4392
  br i1 %2, label %4, label %3, !dbg !4392

3:                                                ; preds = %1
  tail call fastcc void @NVIC_EnableIRQ.22(i32 noundef %0) #16, !dbg !4394
  call void @llvm.dbg.value(metadata i32 0, metadata !4390, metadata !DIExpression()), !dbg !4391
  br label %4, !dbg !4396

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !4391
  ret i32 %5, !dbg !4397
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_EnableIRQ.22(i32 noundef %0) unnamed_addr #3 !dbg !4398 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4400, metadata !DIExpression()), !dbg !4401
  %2 = and i32 %0, 31, !dbg !4402
  %3 = shl nuw i32 1, %2, !dbg !4403
  %4 = lshr i32 %0, 5, !dbg !4404
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813312 to [8 x i32]*), i32 0, i32 %4, !dbg !4405
  store volatile i32 %3, i32* %5, align 4, !dbg !4406
  ret void, !dbg !4407
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_disable_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !4408 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4410, metadata !DIExpression()), !dbg !4412
  call void @llvm.dbg.value(metadata i32 -1, metadata !4411, metadata !DIExpression()), !dbg !4412
  %2 = icmp ugt i32 %0, 95, !dbg !4413
  br i1 %2, label %4, label %3, !dbg !4413

3:                                                ; preds = %1
  tail call fastcc void @NVIC_DisableIRQ.23(i32 noundef %0) #16, !dbg !4415
  call void @llvm.dbg.value(metadata i32 0, metadata !4411, metadata !DIExpression()), !dbg !4412
  br label %4, !dbg !4417

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !4412
  ret i32 %5, !dbg !4418
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_DisableIRQ.23(i32 noundef %0) unnamed_addr #3 !dbg !4419 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4421, metadata !DIExpression()), !dbg !4422
  %2 = and i32 %0, 31, !dbg !4423
  %3 = shl nuw i32 1, %2, !dbg !4424
  %4 = lshr i32 %0, 5, !dbg !4425
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813184 to [8 x i32]*), i32 0, i32 %4, !dbg !4426
  store volatile i32 %3, i32* %5, align 4, !dbg !4427
  ret void, !dbg !4428
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_pending_irq(i32 noundef %0) local_unnamed_addr #4 !dbg !4429 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4433, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i32 255, metadata !4434, metadata !DIExpression()), !dbg !4435
  %2 = icmp ugt i32 %0, 95, !dbg !4436
  br i1 %2, label %5, label %3, !dbg !4436

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) #16, !dbg !4438
  call void @llvm.dbg.value(metadata i32 %4, metadata !4434, metadata !DIExpression()), !dbg !4435
  br label %5, !dbg !4440

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 255, %1 ], !dbg !4435
  ret i32 %6, !dbg !4441
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) unnamed_addr #4 !dbg !4442 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4446, metadata !DIExpression()), !dbg !4447
  %2 = lshr i32 %0, 5, !dbg !4448
  %3 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %2, !dbg !4449
  %4 = load volatile i32, i32* %3, align 4, !dbg !4449
  %5 = and i32 %0, 31, !dbg !4450
  %6 = lshr i32 %4, %5, !dbg !4451
  %7 = and i32 %6, 1, !dbg !4451
  ret i32 %7, !dbg !4452
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_pending_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !4453 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4455, metadata !DIExpression()), !dbg !4457
  call void @llvm.dbg.value(metadata i32 -1, metadata !4456, metadata !DIExpression()), !dbg !4457
  %2 = icmp ugt i32 %0, 95, !dbg !4458
  br i1 %2, label %4, label %3, !dbg !4458

3:                                                ; preds = %1
  tail call fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) #16, !dbg !4460
  call void @llvm.dbg.value(metadata i32 0, metadata !4456, metadata !DIExpression()), !dbg !4457
  br label %4, !dbg !4462

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !4457
  ret i32 %5, !dbg !4463
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) unnamed_addr #3 !dbg !4464 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4466, metadata !DIExpression()), !dbg !4467
  %2 = and i32 %0, 31, !dbg !4468
  %3 = shl nuw i32 1, %2, !dbg !4469
  %4 = lshr i32 %0, 5, !dbg !4470
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %4, !dbg !4471
  store volatile i32 %3, i32* %5, align 4, !dbg !4472
  ret void, !dbg !4473
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_clear_pending_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !4474 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4476, metadata !DIExpression()), !dbg !4478
  call void @llvm.dbg.value(metadata i32 -1, metadata !4477, metadata !DIExpression()), !dbg !4478
  %2 = icmp ugt i32 %0, 95, !dbg !4479
  br i1 %2, label %4, label %3, !dbg !4479

3:                                                ; preds = %1
  tail call fastcc void @NVIC_ClearPendingIRQ.24(i32 noundef %0) #16, !dbg !4481
  call void @llvm.dbg.value(metadata i32 0, metadata !4477, metadata !DIExpression()), !dbg !4478
  br label %4, !dbg !4483

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !4478
  ret i32 %5, !dbg !4484
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_ClearPendingIRQ.24(i32 noundef %0) unnamed_addr #3 !dbg !4485 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4487, metadata !DIExpression()), !dbg !4488
  %2 = and i32 %0, 31, !dbg !4489
  %3 = shl nuw i32 1, %2, !dbg !4490
  %4 = lshr i32 %0, 5, !dbg !4491
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812928 to [8 x i32]*), i32 0, i32 %4, !dbg !4492
  store volatile i32 %3, i32* %5, align 4, !dbg !4493
  ret void, !dbg !4494
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_priority(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4495 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4499, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata i32 %1, metadata !4500, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata i32 -1, metadata !4501, metadata !DIExpression()), !dbg !4502
  %3 = icmp ugt i32 %0, 95, !dbg !4503
  br i1 %3, label %5, label %4, !dbg !4503

4:                                                ; preds = %2
  tail call fastcc void @NVIC_SetPriority.27(i32 noundef %0, i32 noundef %1) #16, !dbg !4505
  call void @llvm.dbg.value(metadata i32 0, metadata !4501, metadata !DIExpression()), !dbg !4502
  br label %5, !dbg !4507

5:                                                ; preds = %2, %4
  %6 = phi i32 [ 0, %4 ], [ -3, %2 ], !dbg !4502
  ret i32 %6, !dbg !4508
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPriority.27(i32 noundef %0, i32 noundef %1) unnamed_addr #3 !dbg !4509 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4511, metadata !DIExpression()), !dbg !4513
  call void @llvm.dbg.value(metadata i32 %1, metadata !4512, metadata !DIExpression()), !dbg !4513
  %3 = trunc i32 %1 to i8, !dbg !4514
  %4 = shl i8 %3, 5, !dbg !4514
  %5 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !4517
  store volatile i8 %4, i8* %5, align 1, !dbg !4518
  ret void, !dbg !4519
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_priority(i32 noundef %0) local_unnamed_addr #4 !dbg !4520 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4522, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata i32 68, metadata !4523, metadata !DIExpression()), !dbg !4524
  %2 = icmp ugt i32 %0, 95, !dbg !4525
  br i1 %2, label %5, label %3, !dbg !4525

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPriority(i32 noundef %0) #16, !dbg !4527
  call void @llvm.dbg.value(metadata i32 %4, metadata !4523, metadata !DIExpression()), !dbg !4524
  br label %5, !dbg !4529

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 68, %1 ], !dbg !4524
  ret i32 %6, !dbg !4530
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPriority(i32 noundef %0) unnamed_addr #4 !dbg !4531 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4533, metadata !DIExpression()), !dbg !4534
  %2 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !4535
  %3 = load volatile i8, i8* %2, align 1, !dbg !4535
  %4 = lshr i8 %3, 5, !dbg !4538
  %5 = zext i8 %4 to i32, !dbg !4538
  ret i32 %5, !dbg !4539
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @Flash_ReturnReady() local_unnamed_addr #10 !dbg !4540 {
  ret void, !dbg !4541
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @isrC_main() local_unnamed_addr #0 section ".ramTEXT" !dbg !4542 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !4544, metadata !DIExpression()), !dbg !4546
  %1 = tail call fastcc i32 @get_current_irq() #16, !dbg !4547
  call void @llvm.dbg.value(metadata i32 %1, metadata !4545, metadata !DIExpression()), !dbg !4546
  %2 = icmp ugt i32 %1, 95, !dbg !4548
  br i1 %2, label %12, label %3, !dbg !4548

3:                                                ; preds = %0
  %4 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 0, !dbg !4550
  %5 = load void (i32)*, void (i32)** %4, align 4, !dbg !4550
  %6 = icmp eq void (i32)* %5, null, !dbg !4552
  br i1 %6, label %7, label %8, !dbg !4553

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 -4, metadata !4544, metadata !DIExpression()), !dbg !4546
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.isrC_main, i32 0, i32 0), i32 noundef 194, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i32 0, i32 0)) #15, !dbg !4554
  br label %12, !dbg !4556

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @get_pending_irq() #16, !dbg !4557
  %10 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 1, !dbg !4559
  store i32 %9, i32* %10, align 4, !dbg !4560
  %11 = load void (i32)*, void (i32)** %4, align 4, !dbg !4561
  tail call void %11(i32 noundef %1) #15, !dbg !4562
  call void @llvm.dbg.value(metadata i32 0, metadata !4544, metadata !DIExpression()), !dbg !4546
  br label %12, !dbg !4563

12:                                               ; preds = %0, %8, %7
  %13 = phi i32 [ -4, %7 ], [ 0, %8 ], [ -3, %0 ], !dbg !4546
  ret i32 %13, !dbg !4564
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_current_irq() unnamed_addr #4 !dbg !4565 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !4568
  %2 = and i32 %1, 511, !dbg !4569
  call void @llvm.dbg.value(metadata i32 %2, metadata !4567, metadata !DIExpression()), !dbg !4570
  %3 = add nsw i32 %2, -16, !dbg !4571
  ret i32 %3, !dbg !4572
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_pending_irq() unnamed_addr #4 !dbg !4573 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !4574
  %2 = lshr i32 %1, 22, !dbg !4575
  %3 = and i32 %2, 1, !dbg !4575
  ret i32 %3, !dbg !4576
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_register_isr_handler(i32 noundef %0, void (i32)* noundef %1) local_unnamed_addr #0 !dbg !4577 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4582, metadata !DIExpression()), !dbg !4585
  call void @llvm.dbg.value(metadata void (i32)* %1, metadata !4583, metadata !DIExpression()), !dbg !4585
  %3 = icmp ugt i32 %0, 95, !dbg !4586
  %4 = icmp eq void (i32)* %1, null
  %5 = or i1 %3, %4, !dbg !4586
  br i1 %5, label %10, label %6, !dbg !4586

6:                                                ; preds = %2
  %7 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !4588
  call void @llvm.dbg.value(metadata i32 %7, metadata !4584, metadata !DIExpression()), !dbg !4585
  tail call fastcc void @NVIC_ClearPendingIRQ.24(i32 noundef %0) #16, !dbg !4589
  %8 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 0, !dbg !4590
  store void (i32)* %1, void (i32)** %8, align 4, !dbg !4591
  %9 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 1, !dbg !4592
  store i32 0, i32* %9, align 4, !dbg !4593
  tail call void @restore_interrupt_mask(i32 noundef %7) #15, !dbg !4594
  br label %10, !dbg !4595

10:                                               ; preds = %2, %6
  %11 = phi i32 [ 0, %6 ], [ -2, %2 ], !dbg !4585
  ret i32 %11, !dbg !4596
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_save_and_set_interrupt_mask(i32* nocapture noundef writeonly %0) local_unnamed_addr #0 !dbg !4597 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4601, metadata !DIExpression()), !dbg !4602
  %2 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !4603
  store i32 %2, i32* %0, align 4, !dbg !4604
  ret i32 0, !dbg !4605
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #0 !dbg !4606 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4610, metadata !DIExpression()), !dbg !4611
  tail call void @restore_interrupt_mask(i32 noundef %0) #15, !dbg !4612
  ret i32 0, !dbg !4613
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pinmux_set_function(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !4614 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4620, metadata !DIExpression()), !dbg !4623
  call void @llvm.dbg.value(metadata i8 %1, metadata !4621, metadata !DIExpression()), !dbg !4623
  %3 = icmp ugt i32 %0, 60, !dbg !4624
  br i1 %3, label %11, label %4, !dbg !4626

4:                                                ; preds = %2
  %5 = icmp ugt i8 %1, 15, !dbg !4627
  br i1 %5, label %11, label %6, !dbg !4629

6:                                                ; preds = %4
  %7 = zext i8 %1 to i32, !dbg !4630
  %8 = tail call i32 @pinmux_config(i32 noundef %0, i32 noundef %7) #15, !dbg !4631
  call void @llvm.dbg.value(metadata i32 %8, metadata !4622, metadata !DIExpression()), !dbg !4623
  %9 = icmp slt i32 %8, 0, !dbg !4632
  %10 = select i1 %9, i32 -3, i32 0, !dbg !4632
  br label %11, !dbg !4633

11:                                               ; preds = %4, %2, %6
  %12 = phi i32 [ %10, %6 ], [ -2, %2 ], [ -1, %4 ], !dbg !4623
  ret i32 %12, !dbg !4634
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_init(i32 noundef %0) local_unnamed_addr #10 !dbg !4635 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4640, metadata !DIExpression()), !dbg !4641
  ret i32 0, !dbg !4642
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_deinit(i32 noundef %0) local_unnamed_addr #10 !dbg !4643 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4645, metadata !DIExpression()), !dbg !4646
  ret i32 0, !dbg !4647
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_input(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #0 !dbg !4648 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4653, metadata !DIExpression()), !dbg !4663
  call void @llvm.dbg.value(metadata i32* %1, metadata !4654, metadata !DIExpression()), !dbg !4663
  %4 = icmp eq i32* %1, null, !dbg !4664
  br i1 %4, label %12, label %5, !dbg !4666

5:                                                ; preds = %2
  %6 = icmp ugt i32 %0, 60, !dbg !4667
  br i1 %6, label %12, label %7, !dbg !4669

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !4670
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #18, !dbg !4670
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #15, !dbg !4670
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 2, !dbg !4670
  %10 = load i8, i8* %9, align 1, !dbg !4670
  call void @llvm.dbg.value(metadata i8 %10, metadata !4655, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !4663
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #18, !dbg !4670
  %11 = zext i8 %10 to i32, !dbg !4671
  store i32 %11, i32* %1, align 4, !dbg !4672
  br label %12, !dbg !4673

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -1, %2 ], [ -2, %5 ], !dbg !4663
  ret i32 %13, !dbg !4674
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4675 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4679, metadata !DIExpression()), !dbg !4682
  call void @llvm.dbg.value(metadata i32 %1, metadata !4680, metadata !DIExpression()), !dbg !4682
  %3 = icmp ugt i32 %0, 60, !dbg !4683
  br i1 %3, label %9, label %4, !dbg !4685

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !4686
  %6 = tail call i32 @gpio_write(i32 noundef %0, i8 noundef zeroext %5) #15, !dbg !4687
  call void @llvm.dbg.value(metadata i32 %6, metadata !4681, metadata !DIExpression()), !dbg !4682
  %7 = icmp slt i32 %6, 0, !dbg !4688
  %8 = select i1 %7, i32 -3, i32 0, !dbg !4688
  br label %9, !dbg !4689

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !4682
  ret i32 %10, !dbg !4690
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_output(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #0 !dbg !4691 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4693, metadata !DIExpression()), !dbg !4696
  call void @llvm.dbg.value(metadata i32* %1, metadata !4694, metadata !DIExpression()), !dbg !4696
  %4 = icmp ugt i32 %0, 60, !dbg !4697
  br i1 %4, label %12, label %5, !dbg !4699

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !4700
  br i1 %6, label %12, label %7, !dbg !4702

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !4703
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #18, !dbg !4703
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #15, !dbg !4703
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 3, !dbg !4703
  %10 = load i8, i8* %9, align 2, !dbg !4703
  call void @llvm.dbg.value(metadata i8 %10, metadata !4695, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !4696
  call void @llvm.dbg.value(metadata i8 undef, metadata !4695, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !4696
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #18, !dbg !4703
  %11 = zext i8 %10 to i32, !dbg !4704
  store i32 %11, i32* %1, align 4, !dbg !4705
  br label %12, !dbg !4706

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !4696
  ret i32 %13, !dbg !4707
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_direction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4708 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4713, metadata !DIExpression()), !dbg !4716
  call void @llvm.dbg.value(metadata i32 %1, metadata !4714, metadata !DIExpression()), !dbg !4716
  %3 = icmp ugt i32 %0, 60, !dbg !4717
  br i1 %3, label %8, label %4, !dbg !4719

4:                                                ; preds = %2
  %5 = tail call i32 @gpio_direction(i32 noundef %0, i32 noundef %1) #15, !dbg !4720
  call void @llvm.dbg.value(metadata i32 %5, metadata !4715, metadata !DIExpression()), !dbg !4716
  %6 = icmp slt i32 %5, 0, !dbg !4721
  %7 = select i1 %6, i32 -3, i32 0, !dbg !4721
  br label %8, !dbg !4722

8:                                                ; preds = %2, %4
  %9 = phi i32 [ %7, %4 ], [ -2, %2 ], !dbg !4716
  ret i32 %9, !dbg !4723
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_direction(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #0 !dbg !4724 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4729, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata i32* %1, metadata !4730, metadata !DIExpression()), !dbg !4732
  %4 = icmp ugt i32 %0, 60, !dbg !4733
  br i1 %4, label %13, label %5, !dbg !4735

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !4736
  br i1 %6, label %13, label %7, !dbg !4738

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !4739
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #18, !dbg !4739
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #15, !dbg !4739
  call void @llvm.dbg.value(metadata i32 undef, metadata !4731, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4732
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 1, !dbg !4739
  %10 = load i8, i8* %9, align 4, !dbg !4739
  call void @llvm.dbg.value(metadata i8 %10, metadata !4731, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !4732
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #18, !dbg !4739
  %11 = icmp ne i8 %10, 0, !dbg !4740
  %12 = zext i1 %11 to i32, !dbg !4740
  store i32 %12, i32* %1, align 4, !dbg !4741
  br label %13, !dbg !4742

13:                                               ; preds = %5, %2, %7
  %14 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !4732
  ret i32 %14, !dbg !4743
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_toggle_pin(i32 noundef %0) local_unnamed_addr #0 !dbg !4744 {
  %2 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4746, metadata !DIExpression()), !dbg !4748
  %3 = icmp ugt i32 %0, 60, !dbg !4749
  br i1 %3, label %11, label %4, !dbg !4751

4:                                                ; preds = %1
  %5 = bitcast %struct.gpio_status* %2 to i8*, !dbg !4752
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #18, !dbg !4752
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %2, i32 noundef %0) #15, !dbg !4752
  %6 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %2, i32 0, i32 3, !dbg !4752
  %7 = load i8, i8* %6, align 2, !dbg !4752
  call void @llvm.dbg.value(metadata i8 %7, metadata !4747, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !4748
  call void @llvm.dbg.value(metadata i8 undef, metadata !4747, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !4748
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #18, !dbg !4752
  %8 = xor i8 %7, 1, !dbg !4753
  %9 = zext i8 %8 to i32, !dbg !4753
  %10 = call i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %9) #16, !dbg !4754
  br label %11, !dbg !4755

11:                                               ; preds = %1, %4
  %12 = phi i32 [ %10, %4 ], [ -2, %1 ], !dbg !4748
  ret i32 %12, !dbg !4756
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_up(i32 noundef %0) local_unnamed_addr #0 !dbg !4757 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4759, metadata !DIExpression()), !dbg !4761
  %2 = icmp ugt i32 %0, 60, !dbg !4762
  br i1 %2, label %10, label %3, !dbg !4764

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #15, !dbg !4765
  call void @llvm.dbg.value(metadata i32 %4, metadata !4760, metadata !DIExpression()), !dbg !4761
  %5 = icmp slt i32 %4, 0, !dbg !4766
  br i1 %5, label %10, label %6, !dbg !4768

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullUp(i32 noundef %0) #15, !dbg !4769
  call void @llvm.dbg.value(metadata i32 %7, metadata !4760, metadata !DIExpression()), !dbg !4761
  %8 = icmp slt i32 %7, 0, !dbg !4770
  %9 = select i1 %8, i32 -3, i32 0, !dbg !4770
  br label %10, !dbg !4771

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !4761
  ret i32 %11, !dbg !4772
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_down(i32 noundef %0) local_unnamed_addr #0 !dbg !4773 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4775, metadata !DIExpression()), !dbg !4777
  %2 = icmp ugt i32 %0, 60, !dbg !4778
  br i1 %2, label %10, label %3, !dbg !4780

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #15, !dbg !4781
  call void @llvm.dbg.value(metadata i32 %4, metadata !4776, metadata !DIExpression()), !dbg !4777
  %5 = icmp slt i32 %4, 0, !dbg !4782
  br i1 %5, label %10, label %6, !dbg !4784

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullDown(i32 noundef %0) #15, !dbg !4785
  call void @llvm.dbg.value(metadata i32 %7, metadata !4776, metadata !DIExpression()), !dbg !4777
  %8 = icmp slt i32 %7, 0, !dbg !4786
  %9 = select i1 %8, i32 -3, i32 0, !dbg !4786
  br label %10, !dbg !4787

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !4777
  ret i32 %11, !dbg !4788
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_disable_pull(i32 noundef %0) local_unnamed_addr #0 !dbg !4789 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4791, metadata !DIExpression()), !dbg !4793
  %2 = icmp ugt i32 %0, 60, !dbg !4794
  br i1 %2, label %7, label %3, !dbg !4796

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #15, !dbg !4797
  call void @llvm.dbg.value(metadata i32 %4, metadata !4792, metadata !DIExpression()), !dbg !4793
  %5 = icmp slt i32 %4, 0, !dbg !4798
  %6 = select i1 %5, i32 -3, i32 0, !dbg !4798
  br label %7, !dbg !4799

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ -2, %1 ], !dbg !4793
  ret i32 %8, !dbg !4800
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_driving_current(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4801 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4805, metadata !DIExpression()), !dbg !4808
  call void @llvm.dbg.value(metadata i32 %1, metadata !4806, metadata !DIExpression()), !dbg !4808
  %3 = icmp ugt i32 %0, 60, !dbg !4809
  br i1 %3, label %9, label %4, !dbg !4811

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !4812
  %6 = tail call i32 @gpio_SetDriving(i32 noundef %0, i8 noundef zeroext %5) #15, !dbg !4813
  call void @llvm.dbg.value(metadata i32 %6, metadata !4807, metadata !DIExpression()), !dbg !4808
  %7 = icmp slt i32 %6, 0, !dbg !4814
  %8 = select i1 %7, i32 -3, i32 0, !dbg !4814
  br label %9, !dbg !4815

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !4808
  ret i32 %10, !dbg !4816
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_driving_current(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !4817 {
  %3 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4822, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.value(metadata i32* %1, metadata !4823, metadata !DIExpression()), !dbg !4826
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #18, !dbg !4827
  %4 = icmp ugt i32 %0, 60, !dbg !4828
  br i1 %4, label %11, label %5, !dbg !4830

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4825, metadata !DIExpression(DW_OP_deref)), !dbg !4826
  %6 = call i32 @gpio_GetDriving(i32 noundef %0, i8* noundef nonnull %3) #15, !dbg !4831
  call void @llvm.dbg.value(metadata i32 %6, metadata !4824, metadata !DIExpression()), !dbg !4826
  %7 = load i8, i8* %3, align 1, !dbg !4832
  call void @llvm.dbg.value(metadata i8 %7, metadata !4825, metadata !DIExpression()), !dbg !4826
  %8 = zext i8 %7 to i32, !dbg !4833
  store i32 %8, i32* %1, align 4, !dbg !4834
  %9 = icmp slt i32 %6, 0, !dbg !4835
  %10 = select i1 %9, i32 -3, i32 0, !dbg !4835
  br label %11, !dbg !4836

11:                                               ; preds = %2, %5
  %12 = phi i32 [ %10, %5 ], [ -2, %2 ], !dbg !4826
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #18, !dbg !4837
  ret i32 %12, !dbg !4837
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_init(i32 noundef %0) local_unnamed_addr #0 !dbg !4838 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4844, metadata !DIExpression()), !dbg !4845
  %2 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, !dbg !4846
  %3 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !4848
  %4 = load i8, i8* %3, align 4, !dbg !4848, !range !4193
  %5 = icmp eq i8 %4, 0, !dbg !4848
  br i1 %5, label %6, label %12, !dbg !4849

6:                                                ; preds = %1
  %7 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #16, !dbg !4850
  br i1 %7, label %9, label %8, !dbg !4852

8:                                                ; preds = %6
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.hal_gpt_init, i32 0, i32 0), i32 noundef 89, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), i32 noundef %0) #15, !dbg !4853
  br label %12, !dbg !4855

9:                                                ; preds = %6
  %10 = bitcast %struct.hal_gpt_context_t* %2 to i8*, !dbg !4856
  %11 = tail call i8* @memset(i8* noundef nonnull %10, i32 noundef 0, i32 noundef 16) #15, !dbg !4857
  store i8 1, i8* %3, align 4, !dbg !4858
  br label %12, !dbg !4859

12:                                               ; preds = %1, %9, %8
  %13 = phi i32 [ -2, %8 ], [ 0, %9 ], [ -3, %1 ], !dbg !4845
  ret i32 %13, !dbg !4860
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) unnamed_addr #10 !dbg !4861 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4865, metadata !DIExpression()), !dbg !4866
  %2 = icmp ult i32 %0, 5, !dbg !4867
  %3 = icmp ne i32 %0, 2
  %4 = and i1 %2, %3, !dbg !4869
  ret i1 %4, !dbg !4870
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_deinit(i32 noundef %0) local_unnamed_addr #0 !dbg !4871 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4873, metadata !DIExpression()), !dbg !4874
  %2 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #16, !dbg !4875
  br i1 %2, label %4, label %3, !dbg !4877

3:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.hal_gpt_deinit, i32 0, i32 0), i32 noundef 104, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), i32 noundef %0) #15, !dbg !4878
  br label %14, !dbg !4880

4:                                                ; preds = %1
  %5 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, !dbg !4881
  %6 = getelementptr inbounds %struct.hal_gpt_context_t, %struct.hal_gpt_context_t* %5, i32 0, i32 0, !dbg !4883
  %7 = load i32, i32* %6, align 4, !dbg !4883
  %8 = icmp eq i32 %7, 0, !dbg !4884
  br i1 %8, label %10, label %9, !dbg !4885

9:                                                ; preds = %4
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.hal_gpt_deinit, i32 0, i32 0), i32 noundef 109, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1.36, i32 0, i32 0), i32 noundef %0) #15, !dbg !4886
  br label %14, !dbg !4888

10:                                               ; preds = %4
  %11 = bitcast %struct.hal_gpt_context_t* %5 to i8*, !dbg !4889
  %12 = tail call i8* @memset(i8* noundef nonnull %11, i32 noundef 0, i32 noundef 16) #15, !dbg !4890
  %13 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !4891
  store i8 0, i8* %13, align 4, !dbg !4892
  br label %14, !dbg !4893

14:                                               ; preds = %10, %9, %3
  %15 = phi i32 [ -2, %3 ], [ -3, %9 ], [ 0, %10 ], !dbg !4874
  ret i32 %15, !dbg !4894
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_get_free_run_count(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !4895 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4900, metadata !DIExpression()), !dbg !4902
  call void @llvm.dbg.value(metadata i32* %1, metadata !4901, metadata !DIExpression()), !dbg !4902
  switch i32 %0, label %24 [
    i32 0, label %3
    i32 1, label %9
    i32 2, label %18
  ], !dbg !4903

3:                                                ; preds = %2
  %4 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !4904
  %5 = icmp eq i32 %4, 1, !dbg !4908
  br i1 %5, label %7, label %6, !dbg !4909

6:                                                ; preds = %3
  tail call void @CM4_GPT2Init() #15, !dbg !4910
  br label %7, !dbg !4912

7:                                                ; preds = %6, %3
  %8 = tail call i32 @get_current_count() #15, !dbg !4913
  store i32 %8, i32* %1, align 4, !dbg !4914
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !4915
  br label %25, !dbg !4916

9:                                                ; preds = %2
  %10 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !4917
  %11 = icmp eq i32 %10, 1, !dbg !4921
  br i1 %11, label %13, label %12, !dbg !4922

12:                                               ; preds = %9
  tail call void @CM4_GPT4Init() #15, !dbg !4923
  br label %13, !dbg !4925

13:                                               ; preds = %12, %9
  %14 = tail call i32 @get_current_gpt4_count() #15, !dbg !4926
  %15 = tail call i32 @top_mcu_freq_get() #15, !dbg !4927
  %16 = udiv i32 %15, 1000000, !dbg !4928
  %17 = udiv i32 %14, %16, !dbg !4929
  store i32 %17, i32* %1, align 4, !dbg !4930
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !4931
  br label %25, !dbg !4932

18:                                               ; preds = %2
  %19 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !4933
  %20 = icmp eq i32 %19, 1, !dbg !4937
  br i1 %20, label %22, label %21, !dbg !4938

21:                                               ; preds = %18
  tail call void @CM4_GPT4Init() #15, !dbg !4939
  br label %22, !dbg !4941

22:                                               ; preds = %21, %18
  %23 = tail call i32 @get_current_gpt4_count() #15, !dbg !4942
  store i32 %23, i32* %1, align 4, !dbg !4943
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !4944
  br label %25

24:                                               ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.hal_gpt_get_free_run_count, i32 0, i32 0), i32 noundef 141, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2.37, i32 0, i32 0), i32 noundef %0) #15, !dbg !4945
  br label %25, !dbg !4947

25:                                               ; preds = %7, %22, %13, %24
  %26 = phi i32 [ -1, %24 ], [ 0, %13 ], [ 0, %22 ], [ 0, %7 ], !dbg !4902
  ret i32 %26, !dbg !4948
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local i32 @hal_gpt_get_duration_count(i32 noundef %0, i32 noundef %1, i32* noundef writeonly %2) local_unnamed_addr #13 !dbg !4949 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4953, metadata !DIExpression()), !dbg !4956
  call void @llvm.dbg.value(metadata i32 %1, metadata !4954, metadata !DIExpression()), !dbg !4956
  call void @llvm.dbg.value(metadata i32* %2, metadata !4955, metadata !DIExpression()), !dbg !4956
  %4 = icmp eq i32* %2, null, !dbg !4957
  br i1 %4, label %7, label %5, !dbg !4959

5:                                                ; preds = %3
  %6 = sub i32 %1, %0, !dbg !4960
  store i32 %6, i32* %2, align 4, !dbg !4960
  br label %7, !dbg !4962

7:                                                ; preds = %3, %5
  %8 = phi i32 [ 0, %5 ], [ -1, %3 ], !dbg !4956
  ret i32 %8, !dbg !4963
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_get_running_status(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !4964 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4969, metadata !DIExpression()), !dbg !4971
  call void @llvm.dbg.value(metadata i32* %1, metadata !4970, metadata !DIExpression()), !dbg !4971
  %3 = icmp ugt i32 %0, 4, !dbg !4972
  br i1 %3, label %4, label %5, !dbg !4974

4:                                                ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.hal_gpt_get_running_status, i32 0, i32 0), i32 noundef 167, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3.38, i32 0, i32 0), i32 noundef %0) #15, !dbg !4975
  br label %8, !dbg !4977

5:                                                ; preds = %2
  %6 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 0, !dbg !4978
  %7 = load i32, i32* %6, align 4, !dbg !4978
  store i32 %7, i32* %1, align 4, !dbg !4979
  br label %8, !dbg !4980

8:                                                ; preds = %5, %4
  %9 = phi i32 [ -2, %4 ], [ 0, %5 ], !dbg !4971
  ret i32 %9, !dbg !4981
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_register_callback(i32 noundef %0, void (i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #0 !dbg !4982 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4986, metadata !DIExpression()), !dbg !4989
  call void @llvm.dbg.value(metadata void (i8*)* %1, metadata !4987, metadata !DIExpression()), !dbg !4989
  call void @llvm.dbg.value(metadata i8* %2, metadata !4988, metadata !DIExpression()), !dbg !4989
  %4 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #16, !dbg !4990
  br i1 %4, label %6, label %5, !dbg !4992

5:                                                ; preds = %3
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.hal_gpt_register_callback, i32 0, i32 0), i32 noundef 179, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4.39, i32 0, i32 0), i32 noundef %0) #15, !dbg !4993
  br label %15, !dbg !4995

6:                                                ; preds = %3
  %7 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !4996
  %8 = load i8, i8* %7, align 4, !dbg !4996, !range !4193
  %9 = icmp eq i8 %8, 1, !dbg !4998
  br i1 %9, label %10, label %15, !dbg !4999

10:                                               ; preds = %6
  %11 = icmp eq void (i8*)* %1, null, !dbg !5000
  br i1 %11, label %15, label %12, !dbg !5002

12:                                               ; preds = %10
  %13 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 1, i32 0, !dbg !5003
  store void (i8*)* %1, void (i8*)** %13, align 4, !dbg !5004
  %14 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 1, i32 1, !dbg !5005
  store i8* %2, i8** %14, align 4, !dbg !5006
  br label %15, !dbg !5007

15:                                               ; preds = %10, %6, %12, %5
  %16 = phi i32 [ -2, %5 ], [ 0, %12 ], [ -3, %6 ], [ -1, %10 ], !dbg !4989
  ret i32 %16, !dbg !5008
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_start_timer_ms(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !5009 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5014, metadata !DIExpression()), !dbg !5017
  call void @llvm.dbg.value(metadata i32 %1, metadata !5015, metadata !DIExpression()), !dbg !5017
  call void @llvm.dbg.value(metadata i32 %2, metadata !5016, metadata !DIExpression()), !dbg !5017
  %4 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #16, !dbg !5018
  br i1 %4, label %6, label %5, !dbg !5020

5:                                                ; preds = %3
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.hal_gpt_start_timer_ms, i32 0, i32 0), i32 noundef 221, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4.39, i32 0, i32 0), i32 noundef %0) #15, !dbg !5021
  br label %17, !dbg !5023

6:                                                ; preds = %3
  %7 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !5024
  %8 = load i8, i8* %7, align 4, !dbg !5024, !range !4193
  %9 = icmp eq i8 %8, 1, !dbg !5026
  br i1 %9, label %10, label %17, !dbg !5027

10:                                               ; preds = %6
  %11 = icmp ugt i32 %1, 130150523, !dbg !5028
  br i1 %11, label %17, label %12, !dbg !5030

12:                                               ; preds = %10
  %13 = tail call fastcc i32 @hal_gpt_translate_timeout_time(i32 noundef %1) #16, !dbg !5031
  %14 = tail call fastcc zeroext i1 @hal_gpt_translate_type(i32 noundef %2) #16, !dbg !5032
  %15 = tail call fastcc void ()* @hal_gpt_map_callback(i32 noundef %0) #16, !dbg !5033
  tail call void @drvTMR_init(i32 noundef %0, i32 noundef %13, i1 noundef zeroext %14, void ()* noundef nonnull %15) #15, !dbg !5034
  tail call void @TMR_Start(i32 noundef %0) #15, !dbg !5035
  %16 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 0, !dbg !5036
  store i32 1, i32* %16, align 4, !dbg !5037
  br label %17, !dbg !5038

17:                                               ; preds = %10, %6, %12, %5
  %18 = phi i32 [ -2, %5 ], [ 0, %12 ], [ -3, %6 ], [ -1, %10 ], !dbg !5017
  ret i32 %18, !dbg !5039
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_gpt_translate_timeout_time(i32 noundef %0) unnamed_addr #10 !dbg !5040 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5044, metadata !DIExpression()), !dbg !5045
  %2 = shl i32 %0, 5, !dbg !5046
  %3 = mul i32 %0, 7, !dbg !5047
  %4 = udiv i32 %3, 10, !dbg !5048
  %5 = add i32 %4, %2, !dbg !5049
  %6 = mul i32 %0, 6, !dbg !5050
  %7 = udiv i32 %6, 100, !dbg !5051
  %8 = add i32 %5, %7, !dbg !5052
  %9 = shl i32 %0, 3, !dbg !5053
  %10 = udiv i32 %9, 1000, !dbg !5054
  %11 = add i32 %8, %10, !dbg !5055
  ret i32 %11, !dbg !5056
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_gpt_translate_type(i32 noundef %0) unnamed_addr #10 !dbg !5057 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5061, metadata !DIExpression()), !dbg !5062
  %2 = icmp eq i32 %0, 1, !dbg !5063
  ret i1 %2, !dbg !5064
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc nonnull void ()* @hal_gpt_map_callback(i32 noundef %0) unnamed_addr #10 !dbg !5065 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5070, metadata !DIExpression()), !dbg !5071
  %2 = icmp eq i32 %0, 0, !dbg !5072
  %3 = select i1 %2, void ()* @hal_gpt_callback0, void ()* @hal_gpt_callback1, !dbg !5073
  ret void ()* %3, !dbg !5074
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_gpt_callback0() #0 !dbg !5075 {
  %1 = load void (i8*)*, void (i8*)** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 0, i32 1, i32 0), align 4, !dbg !5079
  %2 = icmp eq void (i8*)* %1, null, !dbg !5081
  br i1 %2, label %5, label %3, !dbg !5082

3:                                                ; preds = %0
  %4 = load i8*, i8** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 0, i32 1, i32 1), align 4, !dbg !5083
  tail call void %1(i8* noundef %4) #15, !dbg !5085
  br label %5, !dbg !5086

5:                                                ; preds = %3, %0
  store i32 0, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 0, i32 0), align 4, !dbg !5087
  ret void, !dbg !5088
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_gpt_callback1() #0 !dbg !5089 {
  %1 = load void (i8*)*, void (i8*)** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 1, i32 1, i32 0), align 4, !dbg !5092
  %2 = icmp eq void (i8*)* %1, null, !dbg !5094
  br i1 %2, label %5, label %3, !dbg !5095

3:                                                ; preds = %0
  %4 = load i8*, i8** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 1, i32 1, i32 1), align 4, !dbg !5096
  tail call void %1(i8* noundef %4) #15, !dbg !5098
  br label %5, !dbg !5099

5:                                                ; preds = %3, %0
  store i32 0, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 1, i32 0), align 4, !dbg !5100
  ret void, !dbg !5101
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_stop_timer(i32 noundef %0) local_unnamed_addr #0 !dbg !5102 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5104, metadata !DIExpression()), !dbg !5105
  %2 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #16, !dbg !5106
  br i1 %2, label %4, label %3, !dbg !5108

3:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.hal_gpt_stop_timer, i32 0, i32 0), i32 noundef 245, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4.39, i32 0, i32 0), i32 noundef %0) #15, !dbg !5109
  br label %6, !dbg !5111

4:                                                ; preds = %1
  tail call void @TMR_Stop(i32 noundef %0) #15, !dbg !5112
  %5 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 0, !dbg !5113
  store i32 0, i32* %5, align 4, !dbg !5114
  br label %6, !dbg !5115

6:                                                ; preds = %4, %3
  %7 = phi i32 [ -2, %3 ], [ 0, %4 ], !dbg !5105
  ret i32 %7, !dbg !5116
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_delay_ms(i32 noundef %0) local_unnamed_addr #0 !dbg !5117 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5121, metadata !DIExpression()), !dbg !5122
  %2 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !5123
  %3 = icmp eq i32 %2, 1, !dbg !5125
  br i1 %3, label %5, label %4, !dbg !5126

4:                                                ; preds = %1
  tail call void @CM4_GPT2Init() #15, !dbg !5127
  br label %5, !dbg !5129

5:                                                ; preds = %4, %1
  tail call void @delay_ms(i32 noundef %0) #15, !dbg !5130
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !5131
  ret i32 0, !dbg !5132
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_delay_us(i32 noundef %0) local_unnamed_addr #0 !dbg !5133 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5135, metadata !DIExpression()), !dbg !5136
  %2 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !5137
  %3 = icmp eq i32 %2, 1, !dbg !5139
  br i1 %3, label %5, label %4, !dbg !5140

4:                                                ; preds = %1
  tail call void @CM4_GPT4Init() #15, !dbg !5141
  br label %5, !dbg !5143

5:                                                ; preds = %4, %1
  tail call void @delay_us(i32 noundef %0) #15, !dbg !5144
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !5145
  ret i32 0, !dbg !5146
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_init(i32 noundef %0, %struct.hal_eint_gpio_map_t* noundef %1) local_unnamed_addr #0 !dbg !5147 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5153, metadata !DIExpression()), !dbg !5155
  call void @llvm.dbg.value(metadata %struct.hal_eint_gpio_map_t* %1, metadata !5154, metadata !DIExpression()), !dbg !5155
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_eint_gpio_map_t* noundef %1) #16, !dbg !5156
  br i1 %3, label %4, label %18, !dbg !5158

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !5159
  %6 = load i8, i8* %5, align 4, !dbg !5159, !range !4193
  %7 = icmp eq i8 %6, 0, !dbg !5159
  br i1 %7, label %8, label %18, !dbg !5161

8:                                                ; preds = %4
  %9 = tail call i8* @memset(i8* noundef nonnull %5, i32 noundef 0, i32 noundef 64) #15, !dbg !5162
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !5163
  %11 = bitcast %struct.hal_eint_gpio_map_t* %10 to i8*, !dbg !5164
  %12 = bitcast %struct.hal_eint_gpio_map_t* %1 to i8*, !dbg !5165
  %13 = tail call i8* @memcpy(i8* noundef nonnull %11, i8* noundef %12, i32 noundef 16) #15, !dbg !5166
  store i8 1, i8* %5, align 4, !dbg !5167
  %14 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #16, !dbg !5168, !range !5169
  tail call void @uart_reset_default_value(i32 noundef %14) #15, !dbg !5170
  tail call void @halUART_HWInit(i32 noundef %14) #15, !dbg !5171
  %15 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_eint_gpio_map_t* noundef %1) #16, !dbg !5172
  %16 = icmp eq i32 %15, 0, !dbg !5174
  %17 = select i1 %16, i32 0, i32 -4, !dbg !5155
  br label %18, !dbg !5155

18:                                               ; preds = %8, %4, %2
  %19 = phi i32 [ -4, %2 ], [ -3, %4 ], [ %17, %8 ], !dbg !5155
  ret i32 %19, !dbg !5175
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_eint_gpio_map_t* noundef readonly %1) unnamed_addr #6 !dbg !5176 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5182, metadata !DIExpression()), !dbg !5184
  call void @llvm.dbg.value(metadata %struct.hal_eint_gpio_map_t* %1, metadata !5183, metadata !DIExpression()), !dbg !5184
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5185
  %4 = icmp ne %struct.hal_eint_gpio_map_t* %1, null
  %5 = and i1 %4, %3, !dbg !5187
  br i1 %5, label %6, label %22, !dbg !5187

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hal_eint_gpio_map_t, %struct.hal_eint_gpio_map_t* %1, i32 0, i32 0, !dbg !5188
  %8 = load i32, i32* %7, align 4, !dbg !5188
  %9 = icmp ugt i32 %8, 12, !dbg !5190
  br i1 %9, label %22, label %10, !dbg !5191

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hal_eint_gpio_map_t, %struct.hal_eint_gpio_map_t* %1, i32 0, i32 3, !dbg !5192
  %12 = load i32, i32* %11, align 4, !dbg !5192
  %13 = icmp ugt i32 %12, 2, !dbg !5193
  br i1 %13, label %22, label %14, !dbg !5194

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hal_eint_gpio_map_t, %struct.hal_eint_gpio_map_t* %1, i32 0, i32 2, !dbg !5195
  %16 = load i32, i32* %15, align 4, !dbg !5195
  %17 = icmp ugt i32 %16, 1, !dbg !5196
  br i1 %17, label %22, label %18, !dbg !5197

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hal_eint_gpio_map_t, %struct.hal_eint_gpio_map_t* %1, i32 0, i32 1, !dbg !5198
  %20 = load i32, i32* %19, align 4, !dbg !5198
  %21 = icmp ult i32 %20, 4, !dbg !5199
  br label %22, !dbg !5200

22:                                               ; preds = %18, %6, %10, %14, %2
  %23 = phi i1 [ false, %2 ], [ false, %14 ], [ false, %10 ], [ false, %6 ], [ %21, %18 ], !dbg !5184
  ret i1 %23, !dbg !5201
}

; Function Attrs: optsize
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_port(i32 noundef %0) unnamed_addr #10 !dbg !5202 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5206, metadata !DIExpression()), !dbg !5207
  %2 = icmp ne i32 %0, 0, !dbg !5208
  %3 = zext i1 %2 to i32, !dbg !5209
  ret i32 %3, !dbg !5210
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_eint_gpio_map_t* noundef %1) local_unnamed_addr #0 !dbg !5211 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5215, metadata !DIExpression()), !dbg !5217
  call void @llvm.dbg.value(metadata %struct.hal_eint_gpio_map_t* %1, metadata !5216, metadata !DIExpression()), !dbg !5217
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_eint_gpio_map_t* noundef %1) #16, !dbg !5218
  br i1 %3, label %4, label %22, !dbg !5220

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !5221
  %6 = bitcast %struct.hal_eint_gpio_map_t* %5 to i8*, !dbg !5222
  %7 = bitcast %struct.hal_eint_gpio_map_t* %1 to i8*, !dbg !5223
  %8 = tail call i8* @memcpy(i8* noundef nonnull %6, i8* noundef %7, i32 noundef 16) #15, !dbg !5224
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #16, !dbg !5225
  %10 = getelementptr inbounds %struct.hal_eint_gpio_map_t, %struct.hal_eint_gpio_map_t* %1, i32 0, i32 0, !dbg !5226
  %11 = load i32, i32* %10, align 4, !dbg !5226
  %12 = tail call fastcc i32 @hal_uart_translate_baudrate(i32 noundef %11) #16, !dbg !5227
  %13 = getelementptr inbounds %struct.hal_eint_gpio_map_t, %struct.hal_eint_gpio_map_t* %1, i32 0, i32 1, !dbg !5228
  %14 = load i32, i32* %13, align 4, !dbg !5228
  %15 = tail call fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %14) #16, !dbg !5229
  %16 = getelementptr inbounds %struct.hal_eint_gpio_map_t, %struct.hal_eint_gpio_map_t* %1, i32 0, i32 3, !dbg !5230
  %17 = load i32, i32* %16, align 4, !dbg !5230
  %18 = tail call fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %17) #16, !dbg !5231
  %19 = getelementptr inbounds %struct.hal_eint_gpio_map_t, %struct.hal_eint_gpio_map_t* %1, i32 0, i32 2, !dbg !5232
  %20 = load i32, i32* %19, align 4, !dbg !5232
  %21 = tail call fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %20) #16, !dbg !5233
  tail call void @halUART_SetFormat(i32 noundef %9, i32 noundef %12, i16 noundef zeroext %15, i16 noundef zeroext %18, i16 noundef zeroext %21) #15, !dbg !5234
  br label %22, !dbg !5235

22:                                               ; preds = %2, %4
  %23 = phi i32 [ 0, %4 ], [ -4, %2 ], !dbg !5217
  ret i32 %23, !dbg !5236
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_baudrate(i32 noundef %0) unnamed_addr #10 !dbg !5237 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5241, metadata !DIExpression()), !dbg !5246
  call void @llvm.dbg.declare(metadata [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, metadata !5242, metadata !DIExpression()), !dbg !5247
  %2 = getelementptr inbounds [13 x i32], [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, i32 0, i32 %0, !dbg !5248
  %3 = load i32, i32* %2, align 4, !dbg !5248
  ret i32 %3, !dbg !5249
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %0) unnamed_addr #10 !dbg !5250 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5254, metadata !DIExpression()), !dbg !5257
  call void @llvm.dbg.declare(metadata [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, metadata !5255, metadata !DIExpression()), !dbg !5258
  %2 = getelementptr inbounds [4 x i16], [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, i32 0, i32 %0, !dbg !5259
  %3 = load i16, i16* %2, align 2, !dbg !5259
  ret i16 %3, !dbg !5260
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %0) unnamed_addr #10 !dbg !5261 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5265, metadata !DIExpression()), !dbg !5268
  call void @llvm.dbg.declare(metadata [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, metadata !5266, metadata !DIExpression()), !dbg !5269
  %2 = getelementptr inbounds [5 x i16], [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, i32 0, i32 %0, !dbg !5270
  %3 = load i16, i16* %2, align 2, !dbg !5270
  ret i16 %3, !dbg !5271
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %0) unnamed_addr #10 !dbg !5272 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5276, metadata !DIExpression()), !dbg !5279
  call void @llvm.dbg.declare(metadata [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, metadata !5277, metadata !DIExpression()), !dbg !5280
  %2 = getelementptr inbounds [3 x i16], [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, i32 0, i32 %0, !dbg !5281
  %3 = load i16, i16* %2, align 2, !dbg !5281
  ret i16 %3, !dbg !5282
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) unnamed_addr #10 !dbg !5283 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5287, metadata !DIExpression()), !dbg !5288
  %2 = icmp ult i32 %0, 2, !dbg !5289
  ret i1 %2, !dbg !5290
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_deinit(i32 noundef %0) local_unnamed_addr #0 !dbg !5291 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5295, metadata !DIExpression()), !dbg !5296
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5297
  br i1 %2, label %3, label %10, !dbg !5299

3:                                                ; preds = %1
  %4 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !5300
  %5 = load i8, i8* %4, align 4, !dbg !5300, !range !4193
  %6 = icmp eq i8 %5, 0, !dbg !5302
  br i1 %6, label %10, label %7, !dbg !5303

7:                                                ; preds = %3
  %8 = tail call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i32 noundef 64) #15, !dbg !5304
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #16, !dbg !5305, !range !5169
  tail call void @uart_query_empty(i32 noundef %9) #15, !dbg !5306
  tail call void @uart_reset_default_value(i32 noundef %9) #15, !dbg !5307
  br label %10, !dbg !5308

10:                                               ; preds = %3, %1, %7
  %11 = phi i32 [ 0, %7 ], [ -4, %1 ], [ -2, %3 ], !dbg !5296
  ret i32 %11, !dbg !5309
}

; Function Attrs: noinline nounwind optsize
define dso_local void @hal_uart_put_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !5310 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5314, metadata !DIExpression()), !dbg !5317
  call void @llvm.dbg.value(metadata i8 %1, metadata !5315, metadata !DIExpression()), !dbg !5317
  %3 = icmp eq i32 %0, 0, !dbg !5318
  %4 = icmp eq i32 %0, 1, !dbg !5318
  %5 = select i1 %4, i32 1, i32 2, !dbg !5318
  %6 = select i1 %3, i32 0, i32 %5, !dbg !5318
  call void @llvm.dbg.value(metadata i32 %6, metadata !5316, metadata !DIExpression()), !dbg !5317
  %7 = icmp eq i32 %6, 2, !dbg !5319
  br i1 %7, label %9, label %8, !dbg !5321

8:                                                ; preds = %2
  tail call void @uart_output_char(i32 noundef %6, i8 noundef zeroext %1) #15, !dbg !5322
  br label %9, !dbg !5324

9:                                                ; preds = %2, %8
  ret void, !dbg !5325
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_polling(i32 noundef %0, i8* noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !5326 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5330, metadata !DIExpression()), !dbg !5335
  call void @llvm.dbg.value(metadata i8* %1, metadata !5331, metadata !DIExpression()), !dbg !5335
  call void @llvm.dbg.value(metadata i32 %2, metadata !5332, metadata !DIExpression()), !dbg !5335
  %4 = icmp eq i32 %0, 0, !dbg !5336
  %5 = icmp eq i32 %0, 1, !dbg !5336
  %6 = select i1 %5, i32 1, i32 2, !dbg !5336
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5336
  call void @llvm.dbg.value(metadata i32 %7, metadata !5333, metadata !DIExpression()), !dbg !5335
  %8 = icmp eq i8* %1, null, !dbg !5337
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !5339
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !5339
  call void @llvm.dbg.value(metadata i32 0, metadata !5334, metadata !DIExpression()), !dbg !5335
  br i1 %12, label %19, label %13, !dbg !5339

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !5334, metadata !DIExpression()), !dbg !5335
  %15 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !5340
  %16 = load i8, i8* %15, align 1, !dbg !5340
  tail call void @uart_output_char(i32 noundef %7, i8 noundef zeroext %16) #15, !dbg !5346
  %17 = add nuw i32 %14, 1, !dbg !5347
  call void @llvm.dbg.value(metadata i32 %17, metadata !5334, metadata !DIExpression()), !dbg !5335
  %18 = icmp eq i32 %17, %2, !dbg !5348
  br i1 %18, label %19, label %13, !dbg !5349, !llvm.loop !5350

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !5335
  ret i32 %20, !dbg !5352
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !5353 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5355, metadata !DIExpression()), !dbg !5362
  call void @llvm.dbg.value(metadata i8* %1, metadata !5356, metadata !DIExpression()), !dbg !5362
  call void @llvm.dbg.value(metadata i32 %2, metadata !5357, metadata !DIExpression()), !dbg !5362
  %5 = bitcast i32* %4 to i8*, !dbg !5363
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #18, !dbg !5363
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5364
  br i1 %6, label %7, label %24, !dbg !5366

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !5367
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !5369
  br i1 %10, label %24, label %11, !dbg !5369

11:                                               ; preds = %7
  %12 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !5370
  %13 = load i8, i8* %12, align 4, !dbg !5370, !range !4193
  %14 = icmp eq i8 %13, 0, !dbg !5370
  br i1 %14, label %24, label %15, !dbg !5372

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #16, !dbg !5373, !range !5169
  call void @llvm.dbg.value(metadata i32* %4, metadata !5358, metadata !DIExpression(DW_OP_deref)), !dbg !5362
  call void @halUART_Get_VFIFO_Length(i32 noundef %16, i32 noundef 0, i32* noundef nonnull %4) #15, !dbg !5374
  %17 = load i32, i32* %4, align 4, !dbg !5375
  call void @llvm.dbg.value(metadata i32 %17, metadata !5358, metadata !DIExpression()), !dbg !5362
  %18 = icmp ult i32 %17, %2, !dbg !5377
  %19 = select i1 %18, i32 %17, i32 %2
  call void @llvm.dbg.value(metadata i32 %19, metadata !5359, metadata !DIExpression()), !dbg !5362
  call void @halUART_Write_VFIFO_Data(i32 noundef %16, i8* noundef nonnull %1, i32 noundef %19) #15, !dbg !5378
  %20 = load i32, i32* %4, align 4, !dbg !5379
  call void @llvm.dbg.value(metadata i32 %20, metadata !5358, metadata !DIExpression()), !dbg !5362
  %21 = icmp eq i32 %19, %20, !dbg !5381
  br i1 %21, label %22, label %24, !dbg !5382

22:                                               ; preds = %15
  %23 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %16, i1 noundef zeroext false) #16, !dbg !5383, !range !5385
  call void @llvm.dbg.value(metadata i32 %23, metadata !5360, metadata !DIExpression()), !dbg !5362
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %23) #15, !dbg !5386
  br label %24, !dbg !5387

24:                                               ; preds = %15, %22, %11, %7, %3
  %25 = phi i32 [ 0, %3 ], [ 0, %7 ], [ 0, %11 ], [ %19, %22 ], [ %19, %15 ], !dbg !5362
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #18, !dbg !5388
  ret i32 %25, !dbg !5388
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #10 !dbg !5389 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5393, metadata !DIExpression()), !dbg !5396
  call void @llvm.dbg.value(metadata i1 %1, metadata !5394, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5396
  %3 = icmp eq i32 %0, 0, !dbg !5397
  %4 = select i1 %1, i32 15, i32 14, !dbg !5399
  %5 = select i1 %1, i32 17, i32 16, !dbg !5399
  %6 = select i1 %3, i32 %4, i32 %5, !dbg !5399
  call void @llvm.dbg.value(metadata i32 %6, metadata !5395, metadata !DIExpression()), !dbg !5396
  ret i32 %6, !dbg !5400
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_enable_interrupt(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @hal_uart_get_char(i32 noundef %0) local_unnamed_addr #0 !dbg !5401 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5405, metadata !DIExpression()), !dbg !5407
  %2 = icmp eq i32 %0, 0, !dbg !5408
  %3 = icmp eq i32 %0, 1, !dbg !5408
  %4 = select i1 %3, i32 1, i32 2, !dbg !5408
  %5 = select i1 %2, i32 0, i32 %4, !dbg !5408
  call void @llvm.dbg.value(metadata i32 %5, metadata !5406, metadata !DIExpression()), !dbg !5407
  %6 = icmp ult i32 %5, 2, !dbg !5409
  br i1 %6, label %7, label %9, !dbg !5411

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @uart_input_char(i32 noundef %5) #15, !dbg !5412
  br label %9, !dbg !5414

9:                                                ; preds = %1, %7
  %10 = phi i8 [ %8, %7 ], [ 0, %1 ], !dbg !5415
  ret i8 %10, !dbg !5416
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_char_unblocking(i32 noundef %0) local_unnamed_addr #0 !dbg !5417 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5421, metadata !DIExpression()), !dbg !5423
  %2 = icmp eq i32 %0, 0, !dbg !5424
  %3 = icmp eq i32 %0, 1, !dbg !5424
  %4 = select i1 %3, i32 1, i32 2, !dbg !5424
  %5 = select i1 %2, i32 0, i32 %4, !dbg !5424
  call void @llvm.dbg.value(metadata i32 %5, metadata !5422, metadata !DIExpression()), !dbg !5423
  %6 = icmp ult i32 %5, 2, !dbg !5425
  br i1 %6, label %7, label %9, !dbg !5427

7:                                                ; preds = %1
  %8 = tail call i32 @uart_input_char_unblocking(i32 noundef %5) #15, !dbg !5428
  br label %9, !dbg !5430

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ], !dbg !5431
  ret i32 %10, !dbg !5432
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_polling(i32 noundef %0, i8* noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !5433 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5437, metadata !DIExpression()), !dbg !5442
  call void @llvm.dbg.value(metadata i8* %1, metadata !5438, metadata !DIExpression()), !dbg !5442
  call void @llvm.dbg.value(metadata i32 %2, metadata !5439, metadata !DIExpression()), !dbg !5442
  %4 = icmp eq i32 %0, 0, !dbg !5443
  %5 = icmp eq i32 %0, 1, !dbg !5443
  %6 = select i1 %5, i32 1, i32 2, !dbg !5443
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5443
  call void @llvm.dbg.value(metadata i32 %7, metadata !5440, metadata !DIExpression()), !dbg !5442
  %8 = icmp eq i8* %1, null, !dbg !5444
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !5446
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !5446
  call void @llvm.dbg.value(metadata i32 0, metadata !5441, metadata !DIExpression()), !dbg !5442
  br i1 %12, label %19, label %13, !dbg !5446

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !5441, metadata !DIExpression()), !dbg !5442
  %15 = tail call zeroext i8 @uart_input_char(i32 noundef %7) #15, !dbg !5447
  %16 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !5453
  store i8 %15, i8* %16, align 1, !dbg !5454
  %17 = add nuw i32 %14, 1, !dbg !5455
  call void @llvm.dbg.value(metadata i32 %17, metadata !5441, metadata !DIExpression()), !dbg !5442
  %18 = icmp eq i32 %17, %2, !dbg !5456
  br i1 %18, label %19, label %13, !dbg !5457, !llvm.loop !5458

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !5442
  ret i32 %20, !dbg !5460
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !5461 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5463, metadata !DIExpression()), !dbg !5469
  call void @llvm.dbg.value(metadata i8* %1, metadata !5464, metadata !DIExpression()), !dbg !5469
  call void @llvm.dbg.value(metadata i32 %2, metadata !5465, metadata !DIExpression()), !dbg !5469
  %5 = bitcast i32* %4 to i8*, !dbg !5470
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #18, !dbg !5470
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5471
  br i1 %6, label %7, label %20, !dbg !5473

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !5474
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !5476
  br i1 %10, label %20, label %11, !dbg !5476

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #16, !dbg !5477, !range !5169
  call void @llvm.dbg.value(metadata i32* %4, metadata !5466, metadata !DIExpression(DW_OP_deref)), !dbg !5469
  call void @halUART_Get_VFIFO_Length(i32 noundef %12, i32 noundef 1, i32* noundef nonnull %4) #15, !dbg !5478
  %13 = load i32, i32* %4, align 4, !dbg !5479
  call void @llvm.dbg.value(metadata i32 %13, metadata !5466, metadata !DIExpression()), !dbg !5469
  %14 = icmp ult i32 %13, %2, !dbg !5481
  %15 = select i1 %14, i32 %13, i32 %2
  call void @llvm.dbg.value(metadata i32 %15, metadata !5467, metadata !DIExpression()), !dbg !5469
  call void @halUART_Read_VFIFO_Data(i32 noundef %12, i8* noundef nonnull %1, i32 noundef %15) #15, !dbg !5482
  %16 = load i32, i32* %4, align 4, !dbg !5483
  call void @llvm.dbg.value(metadata i32 %16, metadata !5466, metadata !DIExpression()), !dbg !5469
  %17 = icmp eq i32 %15, %16, !dbg !5485
  br i1 %17, label %18, label %20, !dbg !5486

18:                                               ; preds = %11
  %19 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %12, i1 noundef zeroext true) #16, !dbg !5487, !range !5385
  call void @llvm.dbg.value(metadata i32 %19, metadata !5468, metadata !DIExpression()), !dbg !5469
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %19) #15, !dbg !5489
  br label %20, !dbg !5490

20:                                               ; preds = %11, %18, %7, %3
  %21 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %15, %18 ], [ %15, %11 ], !dbg !5469
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #18, !dbg !5491
  ret i32 %21, !dbg !5491
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_send_space(i32 noundef %0) local_unnamed_addr #0 !dbg !5492 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5494, metadata !DIExpression()), !dbg !5496
  %3 = bitcast i32* %2 to i8*, !dbg !5497
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #18, !dbg !5497
  call void @llvm.dbg.value(metadata i32 0, metadata !5495, metadata !DIExpression()), !dbg !5496
  store i32 0, i32* %2, align 4, !dbg !5498
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5499
  br i1 %4, label %5, label %8, !dbg !5501

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #16, !dbg !5502, !range !5169
  call void @llvm.dbg.value(metadata i32* %2, metadata !5495, metadata !DIExpression(DW_OP_deref)), !dbg !5496
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 0, i32* noundef nonnull %2) #15, !dbg !5503
  %7 = load i32, i32* %2, align 4, !dbg !5504
  call void @llvm.dbg.value(metadata i32 %7, metadata !5495, metadata !DIExpression()), !dbg !5496
  br label %8, !dbg !5505

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !5496
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #18, !dbg !5506
  ret i32 %9, !dbg !5506
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_receive_bytes(i32 noundef %0) local_unnamed_addr #0 !dbg !5507 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5509, metadata !DIExpression()), !dbg !5511
  %3 = bitcast i32* %2 to i8*, !dbg !5512
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #18, !dbg !5512
  call void @llvm.dbg.value(metadata i32 0, metadata !5510, metadata !DIExpression()), !dbg !5511
  store i32 0, i32* %2, align 4, !dbg !5513
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5514
  br i1 %4, label %5, label %8, !dbg !5516

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #16, !dbg !5517, !range !5169
  call void @llvm.dbg.value(metadata i32* %2, metadata !5510, metadata !DIExpression(DW_OP_deref)), !dbg !5511
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 1, i32* noundef nonnull %2) #15, !dbg !5518
  %7 = load i32, i32* %2, align 4, !dbg !5519
  call void @llvm.dbg.value(metadata i32 %7, metadata !5510, metadata !DIExpression()), !dbg !5511
  br label %8, !dbg !5520

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !5511
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #18, !dbg !5521
  ret i32 %9, !dbg !5521
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_register_callback(i32 noundef %0, void (i32, i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #0 !dbg !5522 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5526, metadata !DIExpression()), !dbg !5530
  call void @llvm.dbg.value(metadata void (i32, i8*)* %1, metadata !5527, metadata !DIExpression()), !dbg !5530
  call void @llvm.dbg.value(metadata i8* %2, metadata !5528, metadata !DIExpression()), !dbg !5530
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5531
  %5 = icmp ne void (i32, i8*)* %1, null
  %6 = and i1 %5, %4, !dbg !5533
  br i1 %6, label %7, label %18, !dbg !5533

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 0, !dbg !5534
  store void (i32, i8*)* %1, void (i32, i8*)** %8, align 4, !dbg !5535
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 1, !dbg !5536
  store i8* %2, i8** %9, align 4, !dbg !5537
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 2, !dbg !5538
  store i8 1, i8* %10, align 4, !dbg !5539
  %11 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #16, !dbg !5540
  %12 = tail call fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) #16, !dbg !5541
  tail call void @halUART_VDMA_Rx_Register_Callback(i32 noundef %11, void ()* noundef %12) #15, !dbg !5542
  tail call void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %11, void ()* noundef %12) #15, !dbg !5543
  %13 = icmp eq i32 %11, 0, !dbg !5544
  br i1 %13, label %14, label %15, !dbg !5546

14:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 14, void ()* noundef nonnull @hal_uart_send_callback0) #15, !dbg !5547
  br label %16, !dbg !5549

15:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 16, void ()* noundef nonnull @hal_uart_send_callback1) #15, !dbg !5550
  br label %16

16:                                               ; preds = %15, %14
  %17 = tail call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %11, i1 noundef zeroext false) #16, !dbg !5552, !range !5385
  call void @llvm.dbg.value(metadata i32 %17, metadata !5529, metadata !DIExpression()), !dbg !5530
  tail call void @DMA_Vfifo_enable_interrupt(i32 noundef %17) #15, !dbg !5553
  br label %18, !dbg !5554

18:                                               ; preds = %3, %16
  %19 = phi i32 [ 0, %16 ], [ -4, %3 ], !dbg !5530
  ret i32 %19, !dbg !5555
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) unnamed_addr #10 !dbg !678 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !684, metadata !DIExpression()), !dbg !5556
  %2 = getelementptr inbounds [2 x void ()*], [2 x void ()*]* @hal_uart_map_receive_callback.func_tbl, i32 0, i32 %0, !dbg !5557
  %3 = load void ()*, void ()** %2, align 4, !dbg !5557
  ret void ()* %3, !dbg !5558
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback0() #0 !dbg !5559 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !5565, !range !4193
  %2 = icmp eq i8 %1, 0, !dbg !5565
  br i1 %2, label %8, label %3, !dbg !5566

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !5567
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !5569
  br i1 %5, label %8, label %6, !dbg !5570

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !5571
  tail call void %4(i32 noundef 2, i8* noundef %7) #15, !dbg !5573
  br label %8, !dbg !5574

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #16, !dbg !5575, !range !5169
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #16, !dbg !5576
  ret void, !dbg !5577
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback1() #0 !dbg !5578 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !5583, !range !4193
  %2 = icmp eq i8 %1, 0, !dbg !5583
  br i1 %2, label %8, label %3, !dbg !5584

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !5585
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !5587
  br i1 %5, label %8, label %6, !dbg !5588

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !5589
  tail call void %4(i32 noundef 2, i8* noundef %7) #15, !dbg !5591
  br label %8, !dbg !5592

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #16, !dbg !5593, !range !5169
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #16, !dbg !5594
  ret void, !dbg !5595
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @hal_uart_check_irq_disable(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #0 !dbg !5596 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5600, metadata !DIExpression()), !dbg !5607
  call void @llvm.dbg.value(metadata i1 %1, metadata !5601, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5607
  %5 = bitcast i32* %3 to i8*, !dbg !5608
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #18, !dbg !5608
  %6 = bitcast i32* %4 to i8*, !dbg !5608
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #18, !dbg !5608
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !5604, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !5607
  br i1 %1, label %7, label %12, !dbg !5609

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !5604, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !5607
  call void @llvm.dbg.value(metadata i32* %3, metadata !5602, metadata !DIExpression(DW_OP_deref)), !dbg !5607
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 1, i32* noundef nonnull %3) #15, !dbg !5610
  %8 = load i32, i32* %3, align 4, !dbg !5613
  call void @llvm.dbg.value(metadata i32 %8, metadata !5602, metadata !DIExpression()), !dbg !5607
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 5, !dbg !5615
  %10 = load i32, i32* %9, align 4, !dbg !5615
  %11 = icmp ult i32 %8, %10, !dbg !5616
  br i1 %11, label %22, label %20, !dbg !5617

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32* %4, metadata !5603, metadata !DIExpression(DW_OP_deref)), !dbg !5607
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 0, i32* noundef nonnull %4) #15, !dbg !5618
  %13 = load i32, i32* %4, align 4, !dbg !5620
  call void @llvm.dbg.value(metadata i32 %13, metadata !5603, metadata !DIExpression()), !dbg !5607
  %14 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 1, !dbg !5622
  %15 = load i32, i32* %14, align 4, !dbg !5622
  %16 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 2, !dbg !5623
  %17 = load i32, i32* %16, align 4, !dbg !5623
  %18 = sub i32 %15, %17, !dbg !5624
  %19 = icmp ult i32 %13, %18, !dbg !5625
  br i1 %19, label %22, label %20, !dbg !5626

20:                                               ; preds = %12, %7
  %21 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) #16, !dbg !5627, !range !5385
  call void @DMA_Vfifo_disable_interrupt(i32 noundef %21) #15, !dbg !5627
  br label %22, !dbg !5628

22:                                               ; preds = %20, %12, %7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #18, !dbg !5628
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #18, !dbg !5628
  ret void, !dbg !5628
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_disable_interrupt(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback0() #0 !dbg !5629 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !5634, !range !4193
  %2 = icmp eq i8 %1, 0, !dbg !5634
  br i1 %2, label %11, label %3, !dbg !5635

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 0) #16, !dbg !5636
  %5 = icmp eq i32 %4, 0, !dbg !5637
  br i1 %5, label %11, label %6, !dbg !5638

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !5639
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !5641
  br i1 %8, label %11, label %9, !dbg !5642

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !5643
  tail call void %7(i32 noundef 1, i8* noundef %10) #15, !dbg !5645
  br label %11, !dbg !5646

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #16, !dbg !5647, !range !5169
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #16, !dbg !5648
  ret void, !dbg !5649
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback1() #0 !dbg !5650 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !5655, !range !4193
  %2 = icmp eq i8 %1, 0, !dbg !5655
  br i1 %2, label %11, label %3, !dbg !5656

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 1) #16, !dbg !5657
  %5 = icmp eq i32 %4, 0, !dbg !5658
  br i1 %5, label %11, label %6, !dbg !5659

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !5660
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !5662
  br i1 %8, label %11, label %9, !dbg !5663

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !5664
  tail call void %7(i32 noundef 1, i8* noundef %10) #15, !dbg !5666
  br label %11, !dbg !5667

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #16, !dbg !5668, !range !5169
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #16, !dbg !5669
  ret void, !dbg !5670
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_baudrate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !5671 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5675, metadata !DIExpression()), !dbg !5677
  call void @llvm.dbg.value(metadata i32 %1, metadata !5676, metadata !DIExpression()), !dbg !5677
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5678
  %4 = icmp ult i32 %1, 13
  %5 = and i1 %4, %3, !dbg !5680
  br i1 %5, label %6, label %10, !dbg !5680

6:                                                ; preds = %2
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !5681
  %8 = getelementptr inbounds %struct.hal_eint_gpio_map_t, %struct.hal_eint_gpio_map_t* %7, i32 0, i32 0, !dbg !5682
  store i32 %1, i32* %8, align 4, !dbg !5683
  %9 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_eint_gpio_map_t* noundef nonnull %7) #16, !dbg !5684
  br label %10, !dbg !5685

10:                                               ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ -4, %2 ], !dbg !5677
  ret i32 %11, !dbg !5686
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma(i32 noundef %0, %struct.hal_uart_dma_config_t* noundef %1) local_unnamed_addr #0 !dbg !5687 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5693, metadata !DIExpression()), !dbg !5695
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %1, metadata !5694, metadata !DIExpression()), !dbg !5695
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5696
  br i1 %3, label %4, label %28, !dbg !5698

4:                                                ; preds = %2
  %5 = tail call fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef %1) #16, !dbg !5699
  br i1 %5, label %6, label %28, !dbg !5701

6:                                                ; preds = %4
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !5702
  store i8 1, i8* %7, align 4, !dbg !5703
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, !dbg !5704
  %9 = bitcast %struct.hal_uart_dma_config_t* %8 to i8*, !dbg !5705
  %10 = bitcast %struct.hal_uart_dma_config_t* %1 to i8*, !dbg !5706
  %11 = tail call i8* @memcpy(i8* noundef nonnull %9, i8* noundef %10, i32 noundef 28) #15, !dbg !5707
  tail call void @DMA_Init() #15, !dbg !5708
  tail call void @DMA_Vfifo_init() #15, !dbg !5709
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #16, !dbg !5710
  %13 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 3, !dbg !5711
  %14 = load i8*, i8** %13, align 4, !dbg !5711
  %15 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 4, !dbg !5712
  %16 = load i32, i32* %15, align 4, !dbg !5712
  %17 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 6, !dbg !5713
  %18 = load i32, i32* %17, align 4, !dbg !5713
  %19 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 5, !dbg !5714
  %20 = load i32, i32* %19, align 4, !dbg !5714
  %21 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef 5000) #16, !dbg !5715
  tail call void @halUART_Rx_VFIFO_Initialize(i32 noundef %12, i8* noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %21) #15, !dbg !5716
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 0, !dbg !5717
  %23 = load i8*, i8** %22, align 4, !dbg !5717
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 1, !dbg !5718
  %25 = load i32, i32* %24, align 4, !dbg !5718
  %26 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 2, !dbg !5719
  %27 = load i32, i32* %26, align 4, !dbg !5719
  tail call void @halUART_Tx_VFIFO_Initialize(i32 noundef %12, i8* noundef %23, i32 noundef %25, i32 noundef %27) #15, !dbg !5720
  br label %28, !dbg !5721

28:                                               ; preds = %4, %2, %6
  %29 = phi i32 [ 0, %6 ], [ -4, %2 ], [ -4, %4 ], !dbg !5695
  ret i32 %29, !dbg !5722
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef readonly %0) unnamed_addr #6 !dbg !5723 {
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %0, metadata !5727, metadata !DIExpression()), !dbg !5728
  %2 = icmp eq %struct.hal_uart_dma_config_t* %0, null, !dbg !5729
  br i1 %2, label %27, label %3, !dbg !5731

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 3, !dbg !5732
  %5 = load i8*, i8** %4, align 4, !dbg !5732
  %6 = icmp eq i8* %5, null, !dbg !5734
  br i1 %6, label %27, label %7, !dbg !5735

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 4, !dbg !5736
  %9 = load i32, i32* %8, align 4, !dbg !5736
  %10 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 5, !dbg !5738
  %11 = load i32, i32* %10, align 4, !dbg !5738
  %12 = icmp ult i32 %9, %11, !dbg !5739
  br i1 %12, label %27, label %13, !dbg !5740

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 6, !dbg !5741
  %15 = load i32, i32* %14, align 4, !dbg !5741
  %16 = icmp ult i32 %9, %15, !dbg !5743
  br i1 %16, label %27, label %17, !dbg !5744

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 0, !dbg !5745
  %19 = load i8*, i8** %18, align 4, !dbg !5745
  %20 = icmp eq i8* %19, null, !dbg !5747
  br i1 %20, label %27, label %21, !dbg !5748

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 1, !dbg !5749
  %23 = load i32, i32* %22, align 4, !dbg !5749
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 2, !dbg !5751
  %25 = load i32, i32* %24, align 4, !dbg !5751
  %26 = icmp uge i32 %23, %25, !dbg !5752
  br label %27, !dbg !5753

27:                                               ; preds = %21, %17, %13, %7, %3, %1
  %28 = phi i1 [ false, %1 ], [ false, %3 ], [ false, %7 ], [ false, %13 ], [ false, %17 ], [ %26, %21 ], !dbg !5728
  ret i1 %28, !dbg !5754
}

; Function Attrs: optsize
declare dso_local void @DMA_Init() local_unnamed_addr #2

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_init() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @hal_uart_translate_timeout(i32 noundef %0) unnamed_addr #0 !dbg !5755 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5757, metadata !DIExpression()), !dbg !5759
  %2 = tail call i32 @top_mcu_freq_get() #15, !dbg !5760
  %3 = udiv i32 %2, 1000000, !dbg !5761
  call void @llvm.dbg.value(metadata i32 %3, metadata !5758, metadata !DIExpression()), !dbg !5759
  %4 = mul i32 %3, %0, !dbg !5762
  ret i32 %4, !dbg !5763
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !5764 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5766, metadata !DIExpression()), !dbg !5768
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5769
  br i1 %2, label %3, label %8, !dbg !5771

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !5772
  %5 = icmp eq i32 %0, 1, !dbg !5772
  %6 = select i1 %5, i32 1, i32 2, !dbg !5772
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5772
  call void @llvm.dbg.value(metadata i32 %7, metadata !5767, metadata !DIExpression()), !dbg !5768
  tail call void @uart_set_hardware_flowcontrol(i32 noundef %7) #15, !dbg !5773
  br label %8, !dbg !5774

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !5768
  ret i32 %9, !dbg !5775
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 !dbg !5776 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5780, metadata !DIExpression()), !dbg !5785
  call void @llvm.dbg.value(metadata i8 %1, metadata !5781, metadata !DIExpression()), !dbg !5785
  call void @llvm.dbg.value(metadata i8 %2, metadata !5782, metadata !DIExpression()), !dbg !5785
  call void @llvm.dbg.value(metadata i8 %3, metadata !5783, metadata !DIExpression()), !dbg !5785
  %5 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5786
  br i1 %5, label %6, label %11, !dbg !5788

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 0, !dbg !5789
  %8 = icmp eq i32 %0, 1, !dbg !5789
  %9 = select i1 %8, i32 1, i32 2, !dbg !5789
  %10 = select i1 %7, i32 0, i32 %9, !dbg !5789
  call void @llvm.dbg.value(metadata i32 %10, metadata !5784, metadata !DIExpression()), !dbg !5785
  tail call void @uart_set_software_flowcontrol(i32 noundef %10, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #15, !dbg !5790
  br label %11, !dbg !5791

11:                                               ; preds = %4, %6
  %12 = phi i32 [ 0, %6 ], [ -4, %4 ], !dbg !5785
  ret i32 %12, !dbg !5792
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !5793 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5795, metadata !DIExpression()), !dbg !5797
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5798
  br i1 %2, label %3, label %8, !dbg !5800

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !5801
  %5 = icmp eq i32 %0, 1, !dbg !5801
  %6 = select i1 %5, i32 1, i32 2, !dbg !5801
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5801
  call void @llvm.dbg.value(metadata i32 %7, metadata !5796, metadata !DIExpression()), !dbg !5797
  tail call void @uart_disable_flowcontrol(i32 noundef %7) #15, !dbg !5802
  br label %8, !dbg !5803

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !5797
  ret i32 %9, !dbg !5804
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma_timeout(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !5805 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5809, metadata !DIExpression()), !dbg !5811
  call void @llvm.dbg.value(metadata i32 %1, metadata !5810, metadata !DIExpression()), !dbg !5811
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5812
  br i1 %3, label %4, label %8, !dbg !5814

4:                                                ; preds = %2
  %5 = icmp eq i32 %0, 0, !dbg !5815
  %6 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef %1) #16, !dbg !5817
  %7 = select i1 %5, i32 15, i32 17
  tail call void @DMA_Vfifo_Set_timeout(i32 noundef %7, i32 noundef %6) #15, !dbg !5817
  br label %8, !dbg !5818

8:                                                ; preds = %4, %2
  %9 = phi i32 [ -4, %2 ], [ 0, %4 ], !dbg !5811
  ret i32 %9, !dbg !5818
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Set_timeout(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @__io_putchar(i32 noundef returned %0) local_unnamed_addr #0 !dbg !5819 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5823, metadata !DIExpression()), !dbg !5824
  %2 = trunc i32 %0 to i8, !dbg !5825
  tail call void @hal_uart_put_char(i32 noundef 0, i8 noundef zeroext %2) #15, !dbg !5826
  ret i32 %0, !dbg !5827
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local i32 @main() local_unnamed_addr #14 !dbg !5828 {
  tail call fastcc void @SystemClock_Config() #16, !dbg !5829
  tail call void @SystemCoreClockUpdate() #15, !dbg !5830
  tail call fastcc void @prvSetupHardware() #16, !dbg !5831
  tail call void asm sideeffect "cpsie i", "~{memory}"() #18, !dbg !5832, !srcloc !5835
  tail call void asm sideeffect "cpsie f", "~{memory}"() #18, !dbg !5836, !srcloc !5839
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0)) #15, !dbg !5840
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.43, i32 0, i32 0)) #15, !dbg !5841
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.44, i32 0, i32 0)) #15, !dbg !5842
  %4 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0)) #15, !dbg !5843
  tail call fastcc void @eint_sample() #16, !dbg !5844
  br label %5, !dbg !5845

5:                                                ; preds = %0, %5
  br label %5, !dbg !5845, !llvm.loop !5846
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @SystemClock_Config() unnamed_addr #0 !dbg !5848 {
  tail call void @top_xtal_init() #15, !dbg !5849
  ret void, !dbg !5850
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvSetupHardware() unnamed_addr #0 !dbg !5851 {
  tail call fastcc void @log_uart_init() #16, !dbg !5852
  ret void, !dbg !5853
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @eint_sample() unnamed_addr #0 !dbg !5854 {
  %1 = alloca %struct.gpio_backup_restore_t, align 4
  %2 = bitcast %struct.gpio_backup_restore_t* %1 to i8*, !dbg !5862
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #18, !dbg !5862
  call void @llvm.dbg.declare(metadata %struct.gpio_backup_restore_t* %1, metadata !5856, metadata !DIExpression()), !dbg !5863
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3.45, i32 0, i32 0)) #15, !dbg !5864
  %4 = tail call i32 @hal_gpio_init(i32 noundef 0) #15, !dbg !5865
  %5 = tail call i32 @hal_pinmux_set_function(i32 noundef 0, i8 noundef zeroext 3) #15, !dbg !5866
  %6 = tail call i32 @hal_gpio_set_direction(i32 noundef 0, i32 noundef 0) #15, !dbg !5867
  %7 = tail call i32 @hal_gpio_disable_pull(i32 noundef 0) #15, !dbg !5868
  %8 = getelementptr inbounds %struct.gpio_backup_restore_t, %struct.gpio_backup_restore_t* %1, i32 0, i32 0, !dbg !5869
  store i32 3, i32* %8, align 4, !dbg !5870
  %9 = getelementptr inbounds %struct.gpio_backup_restore_t, %struct.gpio_backup_restore_t* %1, i32 0, i32 1, !dbg !5871
  store i32 5, i32* %9, align 4, !dbg !5872
  %10 = tail call i32 @hal_eint_mask(i32 noundef 0) #15, !dbg !5873
  %11 = call i32 @hal_eint_init(i32 noundef 0, %struct.gpio_backup_restore_t* noundef nonnull %1) #15, !dbg !5874
  %12 = call i32 @hal_eint_register_callback(i32 noundef 0, void (i8*)* noundef nonnull @eint_irq_handler, i8* noundef null) #15, !dbg !5875
  %13 = call i32 @hal_eint_unmask(i32 noundef 0) #15, !dbg !5876
  %14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4.46, i32 0, i32 0)) #15, !dbg !5877
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #18, !dbg !5878
  ret void, !dbg !5878
}

; Function Attrs: noinline nounwind optsize
define internal void @eint_irq_handler(i8* nocapture noundef readnone %0) #0 !dbg !5879 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5881, metadata !DIExpression()), !dbg !5882
  %2 = tail call i32 @hal_eint_mask(i32 noundef 0) #15, !dbg !5883
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5.47, i32 0, i32 0), i32 noundef 0) #15, !dbg !5884
  %4 = tail call i32 @hal_eint_unmask(i32 noundef 0) #15, !dbg !5885
  ret void, !dbg !5886
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @log_uart_init() unnamed_addr #0 !dbg !5887 {
  %1 = alloca %struct.hal_eint_gpio_map_t, align 4
  %2 = bitcast %struct.hal_eint_gpio_map_t* %1 to i8*, !dbg !5897
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #18, !dbg !5897
  call void @llvm.dbg.declare(metadata %struct.hal_eint_gpio_map_t* %1, metadata !5889, metadata !DIExpression()), !dbg !5898
  %3 = tail call i32 @hal_pinmux_set_function(i32 noundef 0, i8 noundef zeroext 7) #15, !dbg !5899
  %4 = tail call i32 @hal_pinmux_set_function(i32 noundef 1, i8 noundef zeroext 7) #15, !dbg !5900
  %5 = tail call i32 @hal_pinmux_set_function(i32 noundef 2, i8 noundef zeroext 7) #15, !dbg !5901
  %6 = tail call i32 @hal_pinmux_set_function(i32 noundef 3, i8 noundef zeroext 7) #15, !dbg !5902
  %7 = getelementptr inbounds %struct.hal_eint_gpio_map_t, %struct.hal_eint_gpio_map_t* %1, i32 0, i32 0, !dbg !5903
  store i32 9, i32* %7, align 4, !dbg !5904
  %8 = getelementptr inbounds %struct.hal_eint_gpio_map_t, %struct.hal_eint_gpio_map_t* %1, i32 0, i32 1, !dbg !5905
  store i32 3, i32* %8, align 4, !dbg !5906
  %9 = getelementptr inbounds %struct.hal_eint_gpio_map_t, %struct.hal_eint_gpio_map_t* %1, i32 0, i32 2, !dbg !5907
  store i32 0, i32* %9, align 4, !dbg !5908
  %10 = getelementptr inbounds %struct.hal_eint_gpio_map_t, %struct.hal_eint_gpio_map_t* %1, i32 0, i32 3, !dbg !5909
  store i32 0, i32* %10, align 4, !dbg !5910
  %11 = call i32 @hal_uart_init(i32 noundef 0, %struct.hal_eint_gpio_map_t* noundef nonnull %1) #15, !dbg !5911
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #18, !dbg !5912
  ret void, !dbg !5912
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @SysTick_Set(i32 noundef %0) local_unnamed_addr #3 !dbg !5913 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5915, metadata !DIExpression()), !dbg !5917
  %2 = add i32 %0, -1, !dbg !5918
  %3 = icmp ugt i32 %2, 16777215, !dbg !5920
  br i1 %3, label %8, label %4, !dbg !5921

4:                                                ; preds = %1
  %5 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5922
  call void @llvm.dbg.value(metadata i32 %5, metadata !5916, metadata !DIExpression()), !dbg !5917
  %6 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5923
  %7 = and i32 %6, -4, !dbg !5923
  store volatile i32 %7, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5923
  store volatile i32 %2, i32* inttoptr (i32 -536813548 to i32*), align 4, !dbg !5924
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !dbg !5925
  store volatile i32 %5, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5926
  br label %8, !dbg !5927

8:                                                ; preds = %1, %4
  %9 = phi i32 [ 0, %4 ], [ 1, %1 ], !dbg !5917
  ret i32 %9, !dbg !5928
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SysInitStatus_Set() local_unnamed_addr #3 !dbg !5929 {
  store volatile i32 1, i32* @System_Initialize_Done, align 4, !dbg !5930
  ret void, !dbg !5931
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @SysInitStatus_Query() local_unnamed_addr #4 !dbg !5932 {
  %1 = load volatile i32, i32* @System_Initialize_Done, align 4, !dbg !5933
  ret i32 %1, !dbg !5934
}

; Function Attrs: noinline nounwind optsize
define dso_local void @SystemCoreClockUpdate() local_unnamed_addr #0 !dbg !5935 {
  %1 = tail call i32 @top_mcu_freq_get() #15, !dbg !5936
  store i32 %1, i32* @SystemCoreClock, align 4, !dbg !5937
  ret void, !dbg !5938
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SystemInit() local_unnamed_addr #3 !dbg !5939 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !5940
  %2 = or i32 %1, 15728640, !dbg !5940
  store volatile i32 %2, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !5940
  store volatile i32 536870912, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !5941
  %3 = load volatile i32, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !5942
  %4 = or i32 %3, 458752, !dbg !5942
  store volatile i32 %4, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !5942
  ret void, !dbg !5943
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @CachePreInit() local_unnamed_addr #3 !dbg !5944 {
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !5945
  store volatile i32 19, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !5946
  store volatile i32 3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !5947
  store volatile i32 268931328, i32* inttoptr (i32 22282240 to i32*), align 262144, !dbg !5948
  store volatile i32 269713408, i32* inttoptr (i32 22282304 to i32*), align 64, !dbg !5949
  store volatile i32 1, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !5950
  store volatile i32 781, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !5951
  ret void, !dbg !5952
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_close(i32 noundef %0) local_unnamed_addr #10 !dbg !5953 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5955, metadata !DIExpression()), !dbg !5956
  ret i32 0, !dbg !5957
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_fstat(i32 noundef %0, %struct.stat* nocapture noundef readnone %1) local_unnamed_addr #10 !dbg !5958 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6008, metadata !DIExpression()), !dbg !6010
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !6009, metadata !DIExpression()), !dbg !6010
  ret i32 0, !dbg !6011
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_isatty(i32 noundef %0) local_unnamed_addr #10 !dbg !6012 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6014, metadata !DIExpression()), !dbg !6015
  ret i32 1, !dbg !6016
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_lseek(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !6017 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6021, metadata !DIExpression()), !dbg !6024
  call void @llvm.dbg.value(metadata i32 %1, metadata !6022, metadata !DIExpression()), !dbg !6024
  call void @llvm.dbg.value(metadata i32 %2, metadata !6023, metadata !DIExpression()), !dbg !6024
  ret i32 0, !dbg !6025
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_open(i8* nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !6026 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !6030, metadata !DIExpression()), !dbg !6033
  call void @llvm.dbg.value(metadata i32 %1, metadata !6031, metadata !DIExpression()), !dbg !6033
  call void @llvm.dbg.value(metadata i32 %2, metadata !6032, metadata !DIExpression()), !dbg !6033
  ret i32 -1, !dbg !6034
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_read(i32 noundef %0, i8* nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #10 !dbg !6035 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6039, metadata !DIExpression()), !dbg !6042
  call void @llvm.dbg.value(metadata i8* %1, metadata !6040, metadata !DIExpression()), !dbg !6042
  call void @llvm.dbg.value(metadata i32 %2, metadata !6041, metadata !DIExpression()), !dbg !6042
  ret i32 0, !dbg !6043
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_write(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef returned %2) local_unnamed_addr #0 !dbg !6044 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6046, metadata !DIExpression()), !dbg !6050
  call void @llvm.dbg.value(metadata i8* %1, metadata !6047, metadata !DIExpression()), !dbg !6050
  call void @llvm.dbg.value(metadata i32 %2, metadata !6048, metadata !DIExpression()), !dbg !6050
  call void @llvm.dbg.value(metadata i32 0, metadata !6049, metadata !DIExpression()), !dbg !6050
  %4 = icmp sgt i32 %2, 0, !dbg !6051
  br i1 %4, label %5, label %14, !dbg !6054

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %12, %5 ], [ 0, %3 ]
  %7 = phi i8* [ %8, %5 ], [ %1, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !6049, metadata !DIExpression()), !dbg !6050
  call void @llvm.dbg.value(metadata i8* %7, metadata !6047, metadata !DIExpression()), !dbg !6050
  %8 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !6055
  call void @llvm.dbg.value(metadata i8* %8, metadata !6047, metadata !DIExpression()), !dbg !6050
  %9 = load i8, i8* %7, align 1, !dbg !6057
  %10 = zext i8 %9 to i32, !dbg !6057
  %11 = tail call i32 @__io_putchar(i32 noundef %10) #15, !dbg !6058
  %12 = add nuw nsw i32 %6, 1, !dbg !6059
  call void @llvm.dbg.value(metadata i32 %12, metadata !6049, metadata !DIExpression()), !dbg !6050
  %13 = icmp eq i32 %12, %2, !dbg !6051
  br i1 %13, label %14, label %5, !dbg !6054, !llvm.loop !6060

14:                                               ; preds = %5, %3
  ret i32 %2, !dbg !6062
}

; Function Attrs: noinline nounwind optsize
define dso_local i8* @_sbrk_r(%struct._reent* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #0 !dbg !801 {
  call void @llvm.dbg.value(metadata %struct._reent* %0, metadata !1004, metadata !DIExpression()), !dbg !6063
  call void @llvm.dbg.value(metadata i32 %1, metadata !1005, metadata !DIExpression()), !dbg !6063
  %3 = tail call i8* asm sideeffect "MRS $0, msp\0A", "=r"() #18, !dbg !6064, !srcloc !6065
  call void @llvm.dbg.value(metadata i8* %3, metadata !1007, metadata !DIExpression()), !dbg !6063
  %4 = load i8*, i8** @_sbrk_r.heap_end, align 4, !dbg !6066
  %5 = icmp eq i8* %4, null, !dbg !6068
  %6 = select i1 %5, i8* @end, i8* %4, !dbg !6069
  call void @llvm.dbg.value(metadata i8* %6, metadata !1006, metadata !DIExpression()), !dbg !6063
  %7 = getelementptr inbounds i8, i8* %6, i32 %1, !dbg !6070
  %8 = icmp ult i8* %3, %7, !dbg !6072
  %9 = xor i1 %8, true, !dbg !6073
  %10 = or i1 %5, %9, !dbg !6073
  br i1 %10, label %11, label %13, !dbg !6073

11:                                               ; preds = %2
  %12 = select i1 %8, i8* %6, i8* %7, !dbg !6074
  store i8* %12, i8** @_sbrk_r.heap_end, align 4, !dbg !6073
  br label %13, !dbg !6073

13:                                               ; preds = %2, %11
  %14 = select i1 %8, i8* inttoptr (i32 -1 to i8*), i8* %6, !dbg !6074
  ret i8* %14, !dbg !6073
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local void @_exit(i32 noundef %0) local_unnamed_addr #14 !dbg !6075 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6077, metadata !DIExpression()), !dbg !6078
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0)) #15, !dbg !6079
  br label %3, !dbg !6080

3:                                                ; preds = %1, %3
  br label %3, !dbg !6080, !llvm.loop !6081
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_kill(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !6083 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6087, metadata !DIExpression()), !dbg !6089
  call void @llvm.dbg.value(metadata i32 %1, metadata !6088, metadata !DIExpression()), !dbg !6089
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.55, i32 0, i32 0), i32 noundef %1) #15, !dbg !6090
  ret i32 -1, !dbg !6091
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_getpid() local_unnamed_addr #0 !dbg !6092 {
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.56, i32 0, i32 0)) #15, !dbg !6097
  ret i32 0, !dbg !6098
}

attributes #0 = { noinline nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { optsize "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #3 = { nofree noinline norecurse nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #4 = { mustprogress nofree noinline norecurse nounwind optsize willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #5 = { noreturn optsize "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #7 = { nofree noinline nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #8 = { argmemonly nofree nosync nounwind willreturn }
attributes #9 = { nofree nosync nounwind willreturn }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize readnone "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #14 = { noinline noreturn nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #15 = { nobuiltin nounwind optsize "no-builtins" }
attributes #16 = { nobuiltin optsize "no-builtins" }
attributes #17 = { nobuiltin noreturn nounwind optsize "no-builtins" }
attributes #18 = { nounwind }

!llvm.dbg.cu = !{!2, !85, !1024, !324, !1028, !1073, !1076, !370, !382, !1079, !419, !503, !1081, !572, !621, !1146, !731, !999, !1010}
!llvm.ident = !{!1153, !1153, !1153, !1153, !1153, !1153, !1153, !1153, !1153, !1153, !1153, !1153, !1153, !1153, !1153, !1153, !1153, !1153, !1153}
!llvm.module.flags = !{!1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g_u4ClkCnt1ms", scope: !2, file: !3, line: 71, type: !79, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !57, globals: !62, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/gpt.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 121, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/type_def.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "KAL_FALSE", value: 0)
!10 = !DIEnumerator(name: "KAL_TRUE", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IRQn", file: !12, line: 47, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
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
!66 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/gpt.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
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
!84 = distinct !DIGlobalVariable(name: "LISR", scope: !85, file: !86, line: 565, type: !311, isLocal: true, isDefinition: true)
!85 = distinct !DICompileUnit(language: DW_LANG_C99, file: !86, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, retainedTypes: !201, globals: !287, splitDebugInlining: false, nameTableKind: None)
!86 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_gpio_7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
!87 = !{!88, !11, !93, !124}
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !89, line: 1209, baseType: !7, size: 32, elements: !90)
!89 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_gpio_7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
!90 = !{!91, !92}
!91 = !DIEnumerator(name: "ePAD_CONTROL_BY_N9", value: 0)
!92 = !DIEnumerator(name: "ePAD_CONTROL_BY_CM4", value: 1)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !94, line: 55, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
!95 = !{!96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123}
!96 = !DIEnumerator(name: "eIOT_GPIO_IDX_0", value: 0)
!97 = !DIEnumerator(name: "eIOT_GPIO_IDX_1", value: 1)
!98 = !DIEnumerator(name: "eIOT_GPIO_IDX_2", value: 2)
!99 = !DIEnumerator(name: "eIOT_GPIO_IDX_3", value: 3)
!100 = !DIEnumerator(name: "eIOT_GPIO_IDX_4", value: 4)
!101 = !DIEnumerator(name: "eIOT_GPIO_IDX_5", value: 5)
!102 = !DIEnumerator(name: "eIOT_GPIO_IDX_6", value: 6)
!103 = !DIEnumerator(name: "eIOT_GPIO_IDX_7", value: 7)
!104 = !DIEnumerator(name: "eIOT_GPIO_IDX_24", value: 24)
!105 = !DIEnumerator(name: "eIOT_GPIO_IDX_25", value: 25)
!106 = !DIEnumerator(name: "eIOT_GPIO_IDX_26", value: 26)
!107 = !DIEnumerator(name: "eIOT_GPIO_IDX_27", value: 27)
!108 = !DIEnumerator(name: "eIOT_GPIO_IDX_28", value: 28)
!109 = !DIEnumerator(name: "eIOT_GPIO_IDX_29", value: 29)
!110 = !DIEnumerator(name: "eIOT_GPIO_IDX_30", value: 30)
!111 = !DIEnumerator(name: "eIOT_GPIO_IDX_31", value: 31)
!112 = !DIEnumerator(name: "eIOT_GPIO_IDX_32", value: 32)
!113 = !DIEnumerator(name: "eIOT_GPIO_IDX_33", value: 33)
!114 = !DIEnumerator(name: "eIOT_GPIO_IDX_34", value: 34)
!115 = !DIEnumerator(name: "eIOT_GPIO_IDX_35", value: 35)
!116 = !DIEnumerator(name: "eIOT_GPIO_IDX_36", value: 36)
!117 = !DIEnumerator(name: "eIOT_GPIO_IDX_37", value: 37)
!118 = !DIEnumerator(name: "eIOT_GPIO_IDX_38", value: 38)
!119 = !DIEnumerator(name: "eIOT_GPIO_IDX_39", value: 39)
!120 = !DIEnumerator(name: "eIOT_GPIO_IDX_57", value: 57)
!121 = !DIEnumerator(name: "eIOT_GPIO_IDX_58", value: 58)
!122 = !DIEnumerator(name: "eIOT_GPIO_IDX_59", value: 59)
!123 = !DIEnumerator(name: "eIOT_GPIO_IDX_60", value: 60)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !125, line: 150, baseType: !7, size: 32, elements: !126)
!125 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
!126 = !{!127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200}
!127 = !DIEnumerator(name: "ePAD_ANTSEL0", value: 0)
!128 = !DIEnumerator(name: "ePAD_ANTSEL1", value: 1)
!129 = !DIEnumerator(name: "ePAD_ANTSEL2", value: 2)
!130 = !DIEnumerator(name: "ePAD_ANTSEL3", value: 3)
!131 = !DIEnumerator(name: "ePAD_ANTSEL4", value: 4)
!132 = !DIEnumerator(name: "ePAD_ANTSEL5", value: 5)
!133 = !DIEnumerator(name: "ePAD_ANTSEL6", value: 6)
!134 = !DIEnumerator(name: "ePAD_ANTSEL7", value: 7)
!135 = !DIEnumerator(name: "ePAD_IN_GPIO8", value: 8)
!136 = !DIEnumerator(name: "ePAD_IN_GPIO9", value: 9)
!137 = !DIEnumerator(name: "ePAD_IN_GPIO10", value: 10)
!138 = !DIEnumerator(name: "ePAD_IN_GPIO11", value: 11)
!139 = !DIEnumerator(name: "ePAD_IN_GPIO12", value: 12)
!140 = !DIEnumerator(name: "ePAD_IN_GPIO13", value: 13)
!141 = !DIEnumerator(name: "ePAD_IN_GPIO14", value: 14)
!142 = !DIEnumerator(name: "ePAD_IN_GPIO15", value: 15)
!143 = !DIEnumerator(name: "ePAD_IN_GPIO16", value: 16)
!144 = !DIEnumerator(name: "ePAD_IN_GPIO17", value: 17)
!145 = !DIEnumerator(name: "ePAD_IN_GPIO18", value: 18)
!146 = !DIEnumerator(name: "ePAD_IN_GPIO19", value: 19)
!147 = !DIEnumerator(name: "ePAD_IN_GPIO20", value: 20)
!148 = !DIEnumerator(name: "ePAD_IN_GPIO21", value: 21)
!149 = !DIEnumerator(name: "ePAD_IN_GPIO22", value: 22)
!150 = !DIEnumerator(name: "ePAD_IN_UART0_TXD", value: 23)
!151 = !DIEnumerator(name: "ePAD_PERST_N", value: 24)
!152 = !DIEnumerator(name: "ePAD_WAKE_N", value: 25)
!153 = !DIEnumerator(name: "ePAD_CLK_REQ_N", value: 26)
!154 = !DIEnumerator(name: "ePAD_SDIO_CLK", value: 27)
!155 = !DIEnumerator(name: "ePAD_SDIO_CMD", value: 28)
!156 = !DIEnumerator(name: "ePAD_SDIO_DAT3", value: 29)
!157 = !DIEnumerator(name: "ePAD_SDIO_DAT2", value: 30)
!158 = !DIEnumerator(name: "ePAD_SDIO_DAT1", value: 31)
!159 = !DIEnumerator(name: "ePAD_SDIO_DAT0", value: 32)
!160 = !DIEnumerator(name: "ePAD_GPIO0", value: 33)
!161 = !DIEnumerator(name: "ePAD_GPIO1", value: 34)
!162 = !DIEnumerator(name: "ePAD_UART_DBG", value: 35)
!163 = !DIEnumerator(name: "ePAD_UART_RX", value: 36)
!164 = !DIEnumerator(name: "ePAD_UART_TX", value: 37)
!165 = !DIEnumerator(name: "ePAD_UART_RTS", value: 38)
!166 = !DIEnumerator(name: "ePAD_UART_CTS", value: 39)
!167 = !DIEnumerator(name: "ePAD_IN_GPIO44", value: 40)
!168 = !DIEnumerator(name: "ePAD_IN_GPIO45", value: 41)
!169 = !DIEnumerator(name: "ePAD_IN_GPIO46", value: 42)
!170 = !DIEnumerator(name: "ePAD_IN_GPIO47", value: 43)
!171 = !DIEnumerator(name: "ePAD_IN_GPIO48", value: 44)
!172 = !DIEnumerator(name: "ePAD_IN_GPIO49", value: 45)
!173 = !DIEnumerator(name: "ePAD_IN_GPIO50", value: 46)
!174 = !DIEnumerator(name: "ePAD_IN_GPIO51", value: 47)
!175 = !DIEnumerator(name: "ePAD_IN_GPIO52", value: 48)
!176 = !DIEnumerator(name: "ePAD_IN_GPIO53", value: 49)
!177 = !DIEnumerator(name: "ePAD_IN_GPIO54", value: 50)
!178 = !DIEnumerator(name: "ePAD_IN_PWM2", value: 51)
!179 = !DIEnumerator(name: "ePAD_IN_PWM3", value: 52)
!180 = !DIEnumerator(name: "ePAD_IN_PWM4", value: 53)
!181 = !DIEnumerator(name: "ePAD_IN_PWM5", value: 54)
!182 = !DIEnumerator(name: "ePAD_IN_PWM6", value: 55)
!183 = !DIEnumerator(name: "ePAD_IN_PWM7", value: 56)
!184 = !DIEnumerator(name: "ePAD_WF_RF_DIS_B", value: 57)
!185 = !DIEnumerator(name: "ePAD_BT_RF_DIS_B", value: 58)
!186 = !DIEnumerator(name: "ePAD_WF_LED_B", value: 59)
!187 = !DIEnumerator(name: "ePAD_BT_LED_B", value: 60)
!188 = !DIEnumerator(name: "ePAD_IN_ADC4", value: 61)
!189 = !DIEnumerator(name: "ePAD_IN_ADC5", value: 62)
!190 = !DIEnumerator(name: "ePAD_IN_ADC6", value: 63)
!191 = !DIEnumerator(name: "ePAD_IN_ADC7", value: 64)
!192 = !DIEnumerator(name: "ePAD_IN_ADC8", value: 65)
!193 = !DIEnumerator(name: "ePAD_IN_ADC9", value: 66)
!194 = !DIEnumerator(name: "ePAD_IN_ADC10", value: 67)
!195 = !DIEnumerator(name: "ePAD_IN_ADC11", value: 68)
!196 = !DIEnumerator(name: "ePAD_IN_ADC12", value: 69)
!197 = !DIEnumerator(name: "ePAD_IN_ADC13", value: 70)
!198 = !DIEnumerator(name: "ePAD_IN_ADC14", value: 71)
!199 = !DIEnumerator(name: "ePAD_IN_ADC15", value: 72)
!200 = !DIEnumerator(name: "ePAD_NUM", value: 73)
!201 = !{!58, !60, !202, !61, !203, !204, !208, !246, !285}
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_IOT_GPIO_NAME_T", file: !94, line: 87, baseType: !93)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_PAD_NAME_T", file: !125, line: 225, baseType: !124)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !205, line: 48, baseType: !206)
!205 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_stdint.h", directory: "/home/mjshen/RTOSExploration")
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !207, line: 79, baseType: !7)
!207 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/machine/_default_types.h", directory: "/home/mjshen/RTOSExploration")
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 32)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !210, line: 378, baseType: !211)
!210 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cm4.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 363, size: 28704, elements: !212)
!212 = !{!213, !218, !222, !223, !224, !225, !226, !227, !228, !229, !233, !241, !245}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !211, file: !210, line: 365, baseType: !214, size: 256)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 256, elements: !216)
!215 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !204)
!216 = !{!217}
!217 = !DISubrange(count: 8)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !211, file: !210, line: 366, baseType: !219, size: 768, offset: 256)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 768, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 24)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !211, file: !210, line: 367, baseType: !214, size: 256, offset: 1024)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !211, file: !210, line: 368, baseType: !219, size: 768, offset: 1280)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !211, file: !210, line: 369, baseType: !214, size: 256, offset: 2048)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !211, file: !210, line: 370, baseType: !219, size: 768, offset: 2304)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !211, file: !210, line: 371, baseType: !214, size: 256, offset: 3072)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !211, file: !210, line: 372, baseType: !219, size: 768, offset: 3328)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !211, file: !210, line: 373, baseType: !214, size: 256, offset: 4096)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !211, file: !210, line: 374, baseType: !230, size: 1792, offset: 4352)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 1792, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 56)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !211, file: !210, line: 375, baseType: !234, size: 1920, offset: 6144)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 1920, elements: !239)
!235 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !205, line: 24, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !207, line: 43, baseType: !238)
!238 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!239 = !{!240}
!240 = !DISubrange(count: 240)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !211, file: !210, line: 376, baseType: !242, size: 20608, offset: 8064)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 20608, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 644)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !211, file: !210, line: 377, baseType: !215, size: 32, offset: 28672)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 32)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !210, line: 418, baseType: !248)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 395, size: 1120, elements: !249)
!249 = !{!250, !252, !253, !254, !255, !256, !257, !261, !262, !263, !264, !265, !266, !267, !268, !272, !273, !274, !278, !282, !284}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !248, file: !210, line: 397, baseType: !251, size: 32)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !248, file: !210, line: 398, baseType: !215, size: 32, offset: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !248, file: !210, line: 399, baseType: !215, size: 32, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !248, file: !210, line: 400, baseType: !215, size: 32, offset: 96)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !248, file: !210, line: 401, baseType: !215, size: 32, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !248, file: !210, line: 402, baseType: !215, size: 32, offset: 160)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !248, file: !210, line: 403, baseType: !258, size: 96, offset: 192)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 96, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 12)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !248, file: !210, line: 404, baseType: !215, size: 32, offset: 288)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !248, file: !210, line: 405, baseType: !215, size: 32, offset: 320)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !248, file: !210, line: 406, baseType: !215, size: 32, offset: 352)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !248, file: !210, line: 407, baseType: !215, size: 32, offset: 384)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !248, file: !210, line: 408, baseType: !215, size: 32, offset: 416)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !248, file: !210, line: 409, baseType: !215, size: 32, offset: 448)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !248, file: !210, line: 410, baseType: !215, size: 32, offset: 480)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !248, file: !210, line: 411, baseType: !269, size: 64, offset: 512)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 64, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 2)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !248, file: !210, line: 412, baseType: !251, size: 32, offset: 576)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !248, file: !210, line: 413, baseType: !251, size: 32, offset: 608)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !248, file: !210, line: 414, baseType: !275, size: 128, offset: 640)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 128, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 4)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !248, file: !210, line: 415, baseType: !279, size: 160, offset: 768)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 160, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 5)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !248, file: !210, line: 416, baseType: !283, size: 160, offset: 928)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 160, elements: !280)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !248, file: !210, line: 417, baseType: !215, size: 32, offset: 1088)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !205, line: 44, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !207, line: 77, baseType: !13)
!287 = !{!83, !288, !296}
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(name: "eint_dbc_register", scope: !85, file: !86, line: 52, type: !290, isLocal: true, isDefinition: true)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 32)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "EINT_DEBOUCE_REGISTER_T", file: !89, line: 1231, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !89, line: 1229, size: 128, elements: !293)
!293 = !{!294}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "CM4_IRQ_SENS", scope: !292, file: !89, line: 1230, baseType: !295, size: 128)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 128, elements: !276)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(name: "eint_con_register", scope: !85, file: !86, line: 51, type: !298, isLocal: true, isDefinition: true)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 32)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "EINT_CON_REGISTER_T", file: !89, line: 1224, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !89, line: 1220, size: 10272, elements: !301)
!301 = !{!302, !306, !310}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "CM4_EINT_CON", scope: !300, file: !89, line: 1221, baseType: !303, size: 2112)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 2112, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 66)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !300, file: !89, line: 1222, baseType: !307, size: 8032, offset: 2112)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 8032, elements: !308)
!308 = !{!309}
!309 = !DISubrange(count: 251)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "CM4_IRQ_SENS", scope: !300, file: !89, line: 1223, baseType: !295, size: 128, offset: 10144)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPI_LISR_Struct", file: !89, line: 1250, baseType: !312)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !89, line: 1248, size: 32, elements: !313)
!313 = !{!314}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "gpiLisr_func", scope: !312, file: !89, line: 1249, baseType: !315, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPI_LISR_func", file: !89, line: 1216, baseType: !316)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !89, line: 1214, size: 32, elements: !317)
!317 = !{!318}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_IDX_EINT_WIC_LISR", scope: !316, file: !89, line: 1215, baseType: !319, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 32)
!320 = !DISubroutineType(types: !321)
!321 = !{null, !202}
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(name: "gpio_bakup_table", scope: !324, file: !325, line: 62, type: !360, isLocal: true, isDefinition: true)
!324 = distinct !DICompileUnit(language: DW_LANG_C99, file: !325, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !326, retainedTypes: !358, globals: !359, splitDebugInlining: false, nameTableKind: None)
!325 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/low_hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
!326 = !{!93, !327, !332, !336, !340, !344, !348, !88}
!327 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !328, line: 57, baseType: !7, size: 32, elements: !329)
!328 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/low_hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
!329 = !{!330, !331}
!330 = !DIEnumerator(name: "eDirection_IN", value: 0)
!331 = !DIEnumerator(name: "eDirection_OUT", value: 1)
!332 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !328, line: 69, baseType: !7, size: 32, elements: !333)
!333 = !{!334, !335}
!334 = !DIEnumerator(name: "eEdge_Trigger", value: 0)
!335 = !DIEnumerator(name: "eLevel_Trigger", value: 1)
!336 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !328, line: 74, baseType: !7, size: 32, elements: !337)
!337 = !{!338, !339}
!338 = !DIEnumerator(name: "eDebounce_Disable", value: 0)
!339 = !DIEnumerator(name: "eDebounce_Enable", value: 1)
!340 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !328, line: 79, baseType: !7, size: 32, elements: !341)
!341 = !{!342, !343}
!342 = !DIEnumerator(name: "eDebounce_Negative_Pol", value: 0)
!343 = !DIEnumerator(name: "eDebounce_Positive_Pol", value: 1)
!344 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !328, line: 84, baseType: !7, size: 32, elements: !345)
!345 = !{!346, !347}
!346 = !DIEnumerator(name: "eDebounce_Dual_No", value: 0)
!347 = !DIEnumerator(name: "eDebounce_Dual_Yes", value: 1)
!348 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !328, line: 89, baseType: !7, size: 32, elements: !349)
!349 = !{!350, !351, !352, !353, !354, !355, !356, !357}
!350 = !DIEnumerator(name: "eDebounce_Prescaler_8K", value: 0)
!351 = !DIEnumerator(name: "eDebounce_Prescaler_4K", value: 1)
!352 = !DIEnumerator(name: "eDebounce_Prescaler_2K", value: 2)
!353 = !DIEnumerator(name: "eDebounce_Prescaler_1K", value: 3)
!354 = !DIEnumerator(name: "eDebounce_Prescaler_Dot5K", value: 4)
!355 = !DIEnumerator(name: "eDebounce_Prescaler_Dot25K", value: 5)
!356 = !DIEnumerator(name: "eDebounce_Prescaler_Dot125K", value: 6)
!357 = !DIEnumerator(name: "eDebounce_Prescaler_Dot0625K", value: 7)
!358 = !{!58}
!359 = !{!322}
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 1408, elements: !366)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_backup_restore_t", file: !325, line: 60, baseType: !362)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !325, line: 57, size: 64, elements: !363)
!363 = !{!364, !365}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "reg_data", scope: !362, file: !325, line: 58, baseType: !204, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "reg_addr", scope: !362, file: !325, line: 59, baseType: !204, size: 32, offset: 32)
!366 = !{!367}
!367 = !DISubrange(count: 22)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(name: "gXtalFreq", scope: !370, file: !371, line: 43, type: !204, isLocal: true, isDefinition: true)
!370 = distinct !DICompileUnit(language: DW_LANG_C99, file: !371, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !372, globals: !377, splitDebugInlining: false, nameTableKind: None)
!371 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/top.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
!372 = !{!373, !80, !375, !376}
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 32)
!377 = !{!368, !378}
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(name: "gCpuFrequency", scope: !370, file: !371, line: 44, type: !204, isLocal: true, isDefinition: true)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(name: "gUartClkFreq", scope: !382, file: !383, line: 54, type: !204, isLocal: false, isDefinition: true)
!382 = distinct !DICompileUnit(language: DW_LANG_C99, file: !383, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !384, retainedTypes: !408, globals: !416, splitDebugInlining: false, nameTableKind: None)
!383 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
!384 = !{!385, !391}
!385 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !386, line: 71, baseType: !7, size: 32, elements: !387)
!386 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
!387 = !{!388, !389, !390}
!388 = !DIEnumerator(name: "UART_PORT0", value: 0)
!389 = !DIEnumerator(name: "UART_PORT1", value: 1)
!390 = !DIEnumerator(name: "UART_MAX_PORT", value: 2)
!391 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !392, line: 129, baseType: !7, size: 32, elements: !393)
!392 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/dma_sw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
!393 = !{!394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407}
!394 = !DIEnumerator(name: "VDMA_I2S_TX_CH", value: 12)
!395 = !DIEnumerator(name: "VDMA_I2S_RX_CH", value: 13)
!396 = !DIEnumerator(name: "VDMA_UART1TX_CH", value: 14)
!397 = !DIEnumerator(name: "VDMA_UART1RX_CH", value: 15)
!398 = !DIEnumerator(name: "VDMA_UART2TX_CH", value: 16)
!399 = !DIEnumerator(name: "VDMA_UART2RX_CH", value: 17)
!400 = !DIEnumerator(name: "VDMA_BTIF_TX_CH", value: 18)
!401 = !DIEnumerator(name: "VDMA_BTIF_RX_CH", value: 19)
!402 = !DIEnumerator(name: "VDMA_USB_EP2O_CH", value: 20)
!403 = !DIEnumerator(name: "VDMA_USB_EP3I_CH", value: 21)
!404 = !DIEnumerator(name: "VDMA_USB_EP3O_CH", value: 22)
!405 = !DIEnumerator(name: "VDMA_USB_EP4I_CH", value: 23)
!406 = !DIEnumerator(name: "VDMA_USB_EP4O_CH", value: 24)
!407 = !DIEnumerator(name: "VDMA_ADC_RX_CH", value: 25)
!408 = !{!373, !204, !409, !411, !413, !414, !80}
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !411)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "kal_uint16", file: !6, line: 113, baseType: !412)
!412 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !6, line: 59, baseType: !238)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 32)
!415 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !413)
!416 = !{!380}
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(name: "eint_gpio_table", scope: !419, file: !420, line: 55, type: !491, isLocal: false, isDefinition: true)
!419 = distinct !DICompileUnit(language: DW_LANG_C99, file: !420, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !421, retainedTypes: !463, globals: !466, splitDebugInlining: false, nameTableKind: None)
!420 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_eint.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
!421 = !{!422, !93, !449, !456, !332, !340, !344, !336, !348}
!422 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !423, line: 605, baseType: !7, size: 32, elements: !424)
!423 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_platform.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
!424 = !{!425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448}
!425 = !DIEnumerator(name: "HAL_EINT_NUMBER_0", value: 0)
!426 = !DIEnumerator(name: "HAL_EINT_NUMBER_1", value: 1)
!427 = !DIEnumerator(name: "HAL_EINT_NUMBER_2", value: 2)
!428 = !DIEnumerator(name: "HAL_EINT_NUMBER_3", value: 3)
!429 = !DIEnumerator(name: "HAL_EINT_NUMBER_4", value: 4)
!430 = !DIEnumerator(name: "HAL_EINT_NUMBER_5", value: 5)
!431 = !DIEnumerator(name: "HAL_EINT_NUMBER_6", value: 6)
!432 = !DIEnumerator(name: "HAL_EINT_NUMBER_19", value: 19)
!433 = !DIEnumerator(name: "HAL_EINT_NUMBER_20", value: 20)
!434 = !DIEnumerator(name: "HAL_EINT_NUMBER_21", value: 21)
!435 = !DIEnumerator(name: "HAL_EINT_NUMBER_22", value: 22)
!436 = !DIEnumerator(name: "HAL_WIC_NUMBER_0", value: 32)
!437 = !DIEnumerator(name: "HAL_WIC_NUMBER_1", value: 33)
!438 = !DIEnumerator(name: "HAL_WIC_NUMBER_2", value: 34)
!439 = !DIEnumerator(name: "HAL_WIC_NUMBER_3", value: 35)
!440 = !DIEnumerator(name: "HAL_WIC_NUMBER_4", value: 36)
!441 = !DIEnumerator(name: "HAL_WIC_NUMBER_5", value: 37)
!442 = !DIEnumerator(name: "HAL_WIC_NUMBER_6", value: 38)
!443 = !DIEnumerator(name: "HAL_WIC_NUMBER_7", value: 39)
!444 = !DIEnumerator(name: "HAL_WIC_NUMBER_8", value: 40)
!445 = !DIEnumerator(name: "HAL_WIC_NUMBER_9", value: 41)
!446 = !DIEnumerator(name: "HAL_WIC_NUMBER_10", value: 42)
!447 = !DIEnumerator(name: "HAL_WIC_NUMBER_11", value: 43)
!448 = !DIEnumerator(name: "HAL_EINT_NUMBER_MAX", value: 44)
!449 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !450, line: 204, baseType: !13, size: 32, elements: !451)
!450 = !DIFile(filename: "../../../../../driver/chip/inc/hal_eint.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
!451 = !{!452, !453, !454, !455}
!452 = !DIEnumerator(name: "HAL_EINT_STATUS_ERROR_EINT_NUMBER", value: -3)
!453 = !DIEnumerator(name: "HAL_EINT_STATUS_INVALID_PARAMETER", value: -2)
!454 = !DIEnumerator(name: "HAL_EINT_STATUS_ERROR", value: -1)
!455 = !DIEnumerator(name: "HAL_EINT_STATUS_OK", value: 0)
!456 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !450, line: 194, baseType: !7, size: 32, elements: !457)
!457 = !{!458, !459, !460, !461, !462}
!458 = !DIEnumerator(name: "HAL_EINT_LEVEL_LOW", value: 0)
!459 = !DIEnumerator(name: "HAL_EINT_LEVEL_HIGH", value: 1)
!460 = !DIEnumerator(name: "HAL_EINT_EDGE_FALLING", value: 2)
!461 = !DIEnumerator(name: "HAL_EINT_EDGE_RISING", value: 3)
!462 = !DIEnumerator(name: "HAL_EINT_EDGE_FALLING_AND_RISING", value: 4)
!463 = !{!464, !465}
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_DEBOUNCE_PRESCALER_T", file: !328, line: 98, baseType: !348)
!466 = !{!417, !467, !470, !486, !489}
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(name: "hal_eint_count_max", scope: !419, file: !420, line: 84, type: !469, isLocal: false, isDefinition: true)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(name: "g_eint_callback_context", scope: !419, file: !420, line: 86, type: !472, isLocal: true, isDefinition: true)
!472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !473, size: 2208, elements: !484)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_eint_callback_context_t", file: !420, line: 51, baseType: !474)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !420, line: 47, size: 96, elements: !475)
!475 = !{!476, !478, !483}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "callback_present", scope: !474, file: !420, line: 48, baseType: !477, size: 8)
!477 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !474, file: !420, line: 49, baseType: !479, size: 32, offset: 32)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_eint_callback_t", file: !450, line: 241, baseType: !480)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 32)
!481 = !DISubroutineType(types: !482)
!482 = !{null, !464}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !474, file: !420, line: 50, baseType: !464, size: 32, offset: 64)
!484 = !{!485}
!485 = !DISubrange(count: 23)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(name: "is_eint_callback_registered", scope: !419, file: !420, line: 87, type: !488, isLocal: true, isDefinition: true)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 736, elements: !484)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(name: "is_eint_masked", scope: !419, file: !420, line: 88, type: !488, isLocal: true, isDefinition: true)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !492, size: 2944, elements: !484)
!492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_eint_gpio_map_t", file: !89, line: 1241, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !89, line: 1236, size: 128, elements: !495)
!495 = !{!496, !498, !499, !500}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "eint_number", scope: !494, file: !89, line: 1237, baseType: !497, size: 32)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_eint_number_t", file: !423, line: 630, baseType: !422)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "gpio_pin", scope: !494, file: !89, line: 1238, baseType: !202, size: 32, offset: 32)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "irq_number", scope: !494, file: !89, line: 1239, baseType: !204, size: 32, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "priority_number", scope: !494, file: !89, line: 1240, baseType: !204, size: 32, offset: 96)
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(name: "nvic_function_table", scope: !503, file: !504, line: 53, type: !559, isLocal: false, isDefinition: true)
!503 = distinct !DICompileUnit(language: DW_LANG_C99, file: !504, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !505, retainedTypes: !514, globals: !558, splitDebugInlining: false, nameTableKind: None)
!504 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
!505 = !{!506, !11}
!506 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !507, line: 152, baseType: !13, size: 32, elements: !508)
!507 = !DIFile(filename: "../../../../../driver/chip/inc/hal_nvic.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
!508 = !{!509, !510, !511, !512, !513}
!509 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_NO_ISR", value: -4)
!510 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_IRQ_NUMBER", value: -3)
!511 = !DIEnumerator(name: "HAL_NVIC_STATUS_INVALID_PARAMETER", value: -2)
!512 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR", value: -1)
!513 = !DIEnumerator(name: "HAL_NVIC_STATUS_OK", value: 0)
!514 = !{!515, !464, !204, !285, !516, !533}
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_irq_t", file: !12, line: 97, baseType: !61)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 32)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !210, line: 378, baseType: !518)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 363, size: 28704, elements: !519)
!519 = !{!520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !518, file: !210, line: 365, baseType: !214, size: 256)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !518, file: !210, line: 366, baseType: !219, size: 768, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !518, file: !210, line: 367, baseType: !214, size: 256, offset: 1024)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !518, file: !210, line: 368, baseType: !219, size: 768, offset: 1280)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !518, file: !210, line: 369, baseType: !214, size: 256, offset: 2048)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !518, file: !210, line: 370, baseType: !219, size: 768, offset: 2304)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !518, file: !210, line: 371, baseType: !214, size: 256, offset: 3072)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !518, file: !210, line: 372, baseType: !219, size: 768, offset: 3328)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !518, file: !210, line: 373, baseType: !214, size: 256, offset: 4096)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !518, file: !210, line: 374, baseType: !230, size: 1792, offset: 4352)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !518, file: !210, line: 375, baseType: !234, size: 1920, offset: 6144)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !518, file: !210, line: 376, baseType: !242, size: 20608, offset: 8064)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !518, file: !210, line: 377, baseType: !215, size: 32, offset: 28672)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 32)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !210, line: 418, baseType: !535)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 395, size: 1120, elements: !536)
!536 = !{!537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !535, file: !210, line: 397, baseType: !251, size: 32)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !535, file: !210, line: 398, baseType: !215, size: 32, offset: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !535, file: !210, line: 399, baseType: !215, size: 32, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !535, file: !210, line: 400, baseType: !215, size: 32, offset: 96)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !535, file: !210, line: 401, baseType: !215, size: 32, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !535, file: !210, line: 402, baseType: !215, size: 32, offset: 160)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !535, file: !210, line: 403, baseType: !258, size: 96, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !535, file: !210, line: 404, baseType: !215, size: 32, offset: 288)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !535, file: !210, line: 405, baseType: !215, size: 32, offset: 320)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !535, file: !210, line: 406, baseType: !215, size: 32, offset: 352)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !535, file: !210, line: 407, baseType: !215, size: 32, offset: 384)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !535, file: !210, line: 408, baseType: !215, size: 32, offset: 416)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !535, file: !210, line: 409, baseType: !215, size: 32, offset: 448)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !535, file: !210, line: 410, baseType: !215, size: 32, offset: 480)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !535, file: !210, line: 411, baseType: !269, size: 64, offset: 512)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !535, file: !210, line: 412, baseType: !251, size: 32, offset: 576)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !535, file: !210, line: 413, baseType: !251, size: 32, offset: 608)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !535, file: !210, line: 414, baseType: !275, size: 128, offset: 640)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !535, file: !210, line: 415, baseType: !279, size: 160, offset: 768)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !535, file: !210, line: 416, baseType: !283, size: 160, offset: 928)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !535, file: !210, line: 417, baseType: !215, size: 32, offset: 1088)
!558 = !{!501}
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, size: 6144, elements: !568)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "nvic_function_t", file: !504, line: 50, baseType: !561)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !504, line: 47, size: 64, elements: !562)
!562 = !{!563, !567}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "nvic_callback", scope: !561, file: !504, line: 48, baseType: !564, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 32)
!565 = !DISubroutineType(types: !566)
!566 = !{null, !515}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pending", scope: !561, file: !504, line: 49, baseType: !204, size: 32, offset: 32)
!568 = !{!569}
!569 = !DISubrange(count: 96)
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(name: "g_gpt_context", scope: !572, file: !573, line: 61, type: !605, isLocal: true, isDefinition: true)
!572 = distinct !DICompileUnit(language: DW_LANG_C99, file: !573, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !574, retainedTypes: !603, globals: !604, splitDebugInlining: false, nameTableKind: None)
!573 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gpt.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
!574 = !{!575, !583, !590, !594, !599}
!575 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !576, line: 387, baseType: !13, size: 32, elements: !577)
!576 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpt.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
!577 = !{!578, !579, !580, !581, !582}
!578 = !DIEnumerator(name: "HAL_GPT_STATUS_ERROR_PORT_USED", value: -4)
!579 = !DIEnumerator(name: "HAL_GPT_STATUS_ERROR", value: -3)
!580 = !DIEnumerator(name: "HAL_GPT_STATUS_ERROR_PORT", value: -2)
!581 = !DIEnumerator(name: "HAL_GPT_STATUS_INVALID_PARAMETER", value: -1)
!582 = !DIEnumerator(name: "HAL_GPT_STATUS_OK", value: 0)
!583 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !423, line: 657, baseType: !7, size: 32, elements: !584)
!584 = !{!585, !586, !587, !588, !589}
!585 = !DIEnumerator(name: "HAL_GPT_0", value: 0)
!586 = !DIEnumerator(name: "HAL_GPT_1", value: 1)
!587 = !DIEnumerator(name: "HAL_GPT_2", value: 2)
!588 = !DIEnumerator(name: "HAL_GPT_4", value: 4)
!589 = !DIEnumerator(name: "HAL_GPT_MAX", value: 5)
!590 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !576, line: 397, baseType: !7, size: 32, elements: !591)
!591 = !{!592, !593}
!592 = !DIEnumerator(name: "HAL_GPT_STOPPED", value: 0)
!593 = !DIEnumerator(name: "HAL_GPT_RUNNING", value: 1)
!594 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !423, line: 666, baseType: !7, size: 32, elements: !595)
!595 = !{!596, !597, !598}
!596 = !DIEnumerator(name: "HAL_GPT_CLOCK_SOURCE_32K", value: 0)
!597 = !DIEnumerator(name: "HAL_GPT_CLOCK_SOURCE_1M", value: 1)
!598 = !DIEnumerator(name: "HAL_GPT_CLOCK_SOURCE_BUS", value: 2)
!599 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !576, line: 380, baseType: !7, size: 32, elements: !600)
!600 = !{!601, !602}
!601 = !DIEnumerator(name: "HAL_GPT_TIMER_TYPE_ONE_SHOT", value: 0)
!602 = !DIEnumerator(name: "HAL_GPT_TIMER_TYPE_REPEAT", value: 1)
!603 = !{!464, !204}
!604 = !{!570}
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !606, size: 640, elements: !280)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_context_t", file: !573, line: 55, baseType: !607)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !573, line: 51, size: 128, elements: !608)
!608 = !{!609, !611, !618}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "running_status", scope: !607, file: !573, line: 52, baseType: !610, size: 32)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_running_status_t", file: !576, line: 400, baseType: !590)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "callback_context", scope: !607, file: !573, line: 53, baseType: !612, size: 64, offset: 32)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_callback_context", file: !573, line: 49, baseType: !613)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !573, line: 46, size: 64, elements: !614)
!614 = !{!615, !617}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !613, file: !573, line: 47, baseType: !616, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_callback_t", file: !576, line: 371, baseType: !480)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !613, file: !573, line: 48, baseType: !464, size: 32, offset: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "has_initlized", scope: !607, file: !573, line: 54, baseType: !477, size: 8, offset: 96)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(name: "g_uart_context_table", scope: !621, file: !622, line: 77, type: !687, isLocal: true, isDefinition: true)
!621 = distinct !DICompileUnit(language: DW_LANG_C99, file: !622, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !623, retainedTypes: !673, globals: !675, splitDebugInlining: false, nameTableKind: None)
!622 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
!623 = !{!624, !632, !637, !653, !659, !663, !385, !391, !668}
!624 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !625, line: 345, baseType: !13, size: 32, elements: !626)
!625 = !DIFile(filename: "../../../../../driver/chip/inc/hal_uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
!626 = !{!627, !628, !629, !630, !631}
!627 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_PARAMETER", value: -4)
!628 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_BUSY", value: -3)
!629 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_UNINITIALIZED", value: -2)
!630 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR", value: -1)
!631 = !DIEnumerator(name: "HAL_UART_STATUS_OK", value: 0)
!632 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !423, line: 109, baseType: !7, size: 32, elements: !633)
!633 = !{!634, !635, !636}
!634 = !DIEnumerator(name: "HAL_UART_0", value: 0)
!635 = !DIEnumerator(name: "HAL_UART_1", value: 1)
!636 = !DIEnumerator(name: "HAL_UART_MAX", value: 2)
!637 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !625, line: 302, baseType: !7, size: 32, elements: !638)
!638 = !{!639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652}
!639 = !DIEnumerator(name: "HAL_UART_BAUDRATE_110", value: 0)
!640 = !DIEnumerator(name: "HAL_UART_BAUDRATE_300", value: 1)
!641 = !DIEnumerator(name: "HAL_UART_BAUDRATE_1200", value: 2)
!642 = !DIEnumerator(name: "HAL_UART_BAUDRATE_2400", value: 3)
!643 = !DIEnumerator(name: "HAL_UART_BAUDRATE_4800", value: 4)
!644 = !DIEnumerator(name: "HAL_UART_BAUDRATE_9600", value: 5)
!645 = !DIEnumerator(name: "HAL_UART_BAUDRATE_19200", value: 6)
!646 = !DIEnumerator(name: "HAL_UART_BAUDRATE_38400", value: 7)
!647 = !DIEnumerator(name: "HAL_UART_BAUDRATE_57600", value: 8)
!648 = !DIEnumerator(name: "HAL_UART_BAUDRATE_115200", value: 9)
!649 = !DIEnumerator(name: "HAL_UART_BAUDRATE_230400", value: 10)
!650 = !DIEnumerator(name: "HAL_UART_BAUDRATE_460800", value: 11)
!651 = !DIEnumerator(name: "HAL_UART_BAUDRATE_921600", value: 12)
!652 = !DIEnumerator(name: "HAL_UART_BAUDRATE_MAX", value: 13)
!653 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !625, line: 321, baseType: !7, size: 32, elements: !654)
!654 = !{!655, !656, !657, !658}
!655 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_5", value: 0)
!656 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_6", value: 1)
!657 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_7", value: 2)
!658 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_8", value: 3)
!659 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !625, line: 330, baseType: !7, size: 32, elements: !660)
!660 = !{!661, !662}
!661 = !DIEnumerator(name: "HAL_UART_STOP_BIT_1", value: 0)
!662 = !DIEnumerator(name: "HAL_UART_STOP_BIT_2", value: 1)
!663 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !625, line: 337, baseType: !7, size: 32, elements: !664)
!664 = !{!665, !666, !667}
!665 = !DIEnumerator(name: "HAL_UART_PARITY_NONE", value: 0)
!666 = !DIEnumerator(name: "HAL_UART_PARITY_ODD", value: 1)
!667 = !DIEnumerator(name: "HAL_UART_PARITY_EVEN", value: 2)
!668 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !625, line: 355, baseType: !13, size: 32, elements: !669)
!669 = !{!670, !671, !672}
!670 = !DIEnumerator(name: "HAL_UART_EVENT_TRANSACTION_ERROR", value: -1)
!671 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_READ", value: 1)
!672 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_WRITE", value: 2)
!673 = !{!7, !464, !238, !674, !236}
!674 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!675 = !{!619, !676}
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(name: "func_tbl", scope: !678, file: !622, line: 536, type: !685, isLocal: true, isDefinition: true)
!678 = distinct !DISubprogram(name: "hal_uart_map_receive_callback", scope: !622, file: !622, line: 534, type: !679, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !683)
!679 = !DISubroutineType(types: !680)
!680 = !{!681, !682}
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID_FUNC", file: !392, line: 197, baseType: !74)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_port_t", file: !423, line: 113, baseType: !632)
!683 = !{!684}
!684 = !DILocalVariable(name: "uart_port", arg: 1, scope: !678, file: !622, line: 534, type: !682)
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 64, elements: !270)
!686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !681)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !688, size: 1024, elements: !270)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "uart_context_t", file: !622, line: 75, baseType: !689)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !622, line: 68, size: 512, elements: !690)
!690 = !{!691, !692, !704, !705, !716, !717}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config_present", scope: !689, file: !622, line: 69, baseType: !477, size: 8)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config", scope: !689, file: !622, line: 70, baseType: !693, size: 128, offset: 32)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !625, line: 378, baseType: !694)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !625, line: 373, size: 128, elements: !695)
!695 = !{!696, !698, !700, !702}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !694, file: !625, line: 374, baseType: !697, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_baudrate_t", file: !625, line: 317, baseType: !637)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !694, file: !625, line: 375, baseType: !699, size: 32, offset: 32)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_word_length_t", file: !625, line: 326, baseType: !653)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !694, file: !625, line: 376, baseType: !701, size: 32, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_stop_bit_t", file: !625, line: 333, baseType: !659)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !694, file: !625, line: 377, baseType: !703, size: 32, offset: 96)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_parity_t", file: !625, line: 341, baseType: !663)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "callback_present", scope: !689, file: !622, line: 71, baseType: !477, size: 8, offset: 160)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "callback_config", scope: !689, file: !622, line: 72, baseType: !706, size: 64, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_config_t", file: !622, line: 66, baseType: !707)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !622, line: 63, size: 64, elements: !708)
!708 = !{!709, !715}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !707, file: !622, line: 64, baseType: !710, size: 32)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_t", file: !625, line: 410, baseType: !711)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 32)
!712 = !DISubroutineType(types: !713)
!713 = !{null, !714, !464}
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_event_t", file: !625, line: 359, baseType: !668)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !707, file: !622, line: 65, baseType: !464, size: 32, offset: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config_present", scope: !689, file: !622, line: 73, baseType: !477, size: 8, offset: 256)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config", scope: !689, file: !622, line: 74, baseType: !718, size: 224, offset: 288)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_dma_config_t", file: !625, line: 390, baseType: !719)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !625, line: 382, size: 224, elements: !720)
!720 = !{!721, !723, !724, !725, !726, !727, !728}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer", scope: !719, file: !625, line: 383, baseType: !722, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer_size", scope: !719, file: !625, line: 384, baseType: !204, size: 32, offset: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_threshold_size", scope: !719, file: !625, line: 385, baseType: !204, size: 32, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer", scope: !719, file: !625, line: 386, baseType: !722, size: 32, offset: 96)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer_size", scope: !719, file: !625, line: 387, baseType: !204, size: 32, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_threshold_size", scope: !719, file: !625, line: 388, baseType: !204, size: 32, offset: 160)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_alert_size", scope: !719, file: !625, line: 389, baseType: !204, size: 32, offset: 192)
!729 = !DIGlobalVariableExpression(var: !730, expr: !DIExpression())
!730 = distinct !DIGlobalVariable(name: "SystemCoreClock", scope: !731, file: !732, line: 59, type: !204, isLocal: false, isDefinition: true)
!731 = distinct !DICompileUnit(language: DW_LANG_C99, file: !732, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !733, globals: !796, splitDebugInlining: false, nameTableKind: None)
!732 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/eint_edge_falling/src/system_mt7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
!733 = !{!734, !742, !767}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysTick_Type", file: !210, line: 656, baseType: !736)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 650, size: 128, elements: !737)
!737 = !{!738, !739, !740, !741}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "CTRL", scope: !736, file: !210, line: 652, baseType: !215, size: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "LOAD", scope: !736, file: !210, line: 653, baseType: !215, size: 32, offset: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "VAL", scope: !736, file: !210, line: 654, baseType: !215, size: 32, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "CALIB", scope: !736, file: !210, line: 655, baseType: !251, size: 32, offset: 96)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 32)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !210, line: 418, baseType: !744)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 395, size: 1120, elements: !745)
!745 = !{!746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !744, file: !210, line: 397, baseType: !251, size: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !744, file: !210, line: 398, baseType: !215, size: 32, offset: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !744, file: !210, line: 399, baseType: !215, size: 32, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !744, file: !210, line: 400, baseType: !215, size: 32, offset: 96)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !744, file: !210, line: 401, baseType: !215, size: 32, offset: 128)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !744, file: !210, line: 402, baseType: !215, size: 32, offset: 160)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !744, file: !210, line: 403, baseType: !258, size: 96, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !744, file: !210, line: 404, baseType: !215, size: 32, offset: 288)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !744, file: !210, line: 405, baseType: !215, size: 32, offset: 320)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !744, file: !210, line: 406, baseType: !215, size: 32, offset: 352)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !744, file: !210, line: 407, baseType: !215, size: 32, offset: 384)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !744, file: !210, line: 408, baseType: !215, size: 32, offset: 416)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !744, file: !210, line: 409, baseType: !215, size: 32, offset: 448)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !744, file: !210, line: 410, baseType: !215, size: 32, offset: 480)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !744, file: !210, line: 411, baseType: !269, size: 64, offset: 512)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !744, file: !210, line: 412, baseType: !251, size: 32, offset: 576)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !744, file: !210, line: 413, baseType: !251, size: 32, offset: 608)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !744, file: !210, line: 414, baseType: !275, size: 128, offset: 640)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !744, file: !210, line: 415, baseType: !279, size: 160, offset: 768)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !744, file: !210, line: 416, baseType: !283, size: 160, offset: 928)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !744, file: !210, line: 417, baseType: !215, size: 32, offset: 1088)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 32)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "CACHE_REGISTER_T", file: !769, line: 72, baseType: !770)
!769 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_hw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !769, line: 56, size: 525312, elements: !771)
!771 = !{!772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !786, !787, !791, !795}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CON", scope: !770, file: !769, line: 57, baseType: !215, size: 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_OP", scope: !770, file: !769, line: 58, baseType: !215, size: 32, offset: 32)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0L", scope: !770, file: !769, line: 59, baseType: !215, size: 32, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0U", scope: !770, file: !769, line: 60, baseType: !215, size: 32, offset: 96)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0L", scope: !770, file: !769, line: 61, baseType: !215, size: 32, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0U", scope: !770, file: !769, line: 62, baseType: !215, size: 32, offset: 160)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1L", scope: !770, file: !769, line: 63, baseType: !215, size: 32, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1U", scope: !770, file: !769, line: 64, baseType: !215, size: 32, offset: 224)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1L", scope: !770, file: !769, line: 65, baseType: !215, size: 32, offset: 256)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1U", scope: !770, file: !769, line: 66, baseType: !215, size: 32, offset: 288)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !770, file: !769, line: 67, baseType: !783, size: 32, offset: 320)
!783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 32, elements: !784)
!784 = !{!785}
!785 = !DISubrange(count: 1)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_REGION_EN", scope: !770, file: !769, line: 68, baseType: !215, size: 32, offset: 352)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !770, file: !769, line: 69, baseType: !788, size: 523904, offset: 384)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 523904, elements: !789)
!789 = !{!790}
!790 = !DISubrange(count: 16372)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_ENTRY_N", scope: !770, file: !769, line: 70, baseType: !792, size: 512, offset: 524288)
!792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 512, elements: !793)
!793 = !{!794}
!794 = !DISubrange(count: 16)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_END_ENTRY_N", scope: !770, file: !769, line: 71, baseType: !792, size: 512, offset: 524800)
!796 = !{!729, !797}
!797 = !DIGlobalVariableExpression(var: !798, expr: !DIExpression())
!798 = distinct !DIGlobalVariable(name: "System_Initialize_Done", scope: !731, file: !732, line: 61, type: !215, isLocal: true, isDefinition: true)
!799 = !DIGlobalVariableExpression(var: !800, expr: !DIExpression())
!800 = distinct !DIGlobalVariable(name: "heap_end", scope: !801, file: !802, line: 66, type: !807, isLocal: true, isDefinition: true)
!801 = distinct !DISubprogram(name: "_sbrk_r", scope: !802, file: !802, line: 63, type: !803, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !1003)
!802 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/eint_edge_falling/GCC/syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
!803 = !DISubroutineType(types: !804)
!804 = !{!805, !808, !998}
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !806, line: 123, baseType: !807)
!806 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/types.h", directory: "/home/mjshen/RTOSExploration")
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 32)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 32)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !810, line: 377, size: 1920, elements: !811)
!810 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/reent.h", directory: "/home/mjshen/RTOSExploration")
!811 = !{!812, !813, !887, !888, !889, !890, !891, !892, !893, !896, !917, !921, !922, !923, !924, !934, !947, !948, !953, !972, !973, !980, !981, !997}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !809, file: !810, line: 381, baseType: !13, size: 32)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !809, file: !810, line: 386, baseType: !814, size: 32, offset: 32)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 32)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !810, line: 292, baseType: !816)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !810, line: 186, size: 832, elements: !817)
!817 = !{!818, !820, !821, !822, !824, !825, !830, !831, !832, !833, !837, !843, !850, !854, !855, !856, !857, !861, !863, !864, !865, !867, !873, !886}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !816, file: !810, line: 187, baseType: !819, size: 32)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !816, file: !810, line: 188, baseType: !13, size: 32, offset: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !816, file: !810, line: 189, baseType: !13, size: 32, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !816, file: !810, line: 190, baseType: !823, size: 16, offset: 96)
!823 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !816, file: !810, line: 191, baseType: !823, size: 16, offset: 112)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !816, file: !810, line: 192, baseType: !826, size: 64, offset: 128)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !810, line: 122, size: 64, elements: !827)
!827 = !{!828, !829}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !826, file: !810, line: 123, baseType: !819, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !826, file: !810, line: 124, baseType: !13, size: 32, offset: 32)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !816, file: !810, line: 193, baseType: !13, size: 32, offset: 192)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !816, file: !810, line: 196, baseType: !808, size: 32, offset: 224)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !816, file: !810, line: 200, baseType: !464, size: 32, offset: 256)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !816, file: !810, line: 202, baseType: !834, size: 32, offset: 288)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 32)
!835 = !DISubroutineType(types: !836)
!836 = !{!13, !808, !464, !807, !13}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !816, file: !810, line: 204, baseType: !838, size: 32, offset: 320)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 32)
!839 = !DISubroutineType(types: !840)
!840 = !{!13, !808, !464, !841, !13}
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 32)
!842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !674)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !816, file: !810, line: 207, baseType: !844, size: 32, offset: 352)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 32)
!845 = !DISubroutineType(types: !846)
!846 = !{!847, !808, !464, !847, !13}
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !848, line: 116, baseType: !849)
!848 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_types.h", directory: "/home/mjshen/RTOSExploration")
!849 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !816, file: !810, line: 208, baseType: !851, size: 32, offset: 384)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 32)
!852 = !DISubroutineType(types: !853)
!853 = !{!13, !808, !464}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !816, file: !810, line: 211, baseType: !826, size: 64, offset: 416)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !816, file: !810, line: 212, baseType: !819, size: 32, offset: 480)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !816, file: !810, line: 213, baseType: !13, size: 32, offset: 512)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !816, file: !810, line: 216, baseType: !858, size: 24, offset: 544)
!858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 24, elements: !859)
!859 = !{!860}
!860 = !DISubrange(count: 3)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !816, file: !810, line: 217, baseType: !862, size: 8, offset: 568)
!862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 8, elements: !784)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !816, file: !810, line: 220, baseType: !826, size: 64, offset: 576)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !816, file: !810, line: 223, baseType: !13, size: 32, offset: 640)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !816, file: !810, line: 224, baseType: !866, size: 32, offset: 672)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !848, line: 46, baseType: !849)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !816, file: !810, line: 231, baseType: !868, size: 32, offset: 704)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !810, line: 35, baseType: !869)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_T", file: !870, line: 34, baseType: !871)
!870 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/lock.h", directory: "/home/mjshen/RTOSExploration")
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 32)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "__lock", file: !870, line: 33, flags: DIFlagFwdDecl)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !816, file: !810, line: 233, baseType: !874, size: 64, offset: 736)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !848, line: 170, baseType: !875)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !848, line: 162, size: 64, elements: !876)
!876 = !{!877, !878}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !875, file: !848, line: 164, baseType: !13, size: 32)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !875, file: !848, line: 169, baseType: !879, size: 32, offset: 32)
!879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !875, file: !848, line: 165, size: 32, elements: !880)
!880 = !{!881, !884}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !879, file: !848, line: 167, baseType: !882, size: 32)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !883, line: 116, baseType: !13)
!883 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "")
!884 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !879, file: !848, line: 168, baseType: !885, size: 32)
!885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 32, elements: !276)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !816, file: !810, line: 234, baseType: !13, size: 32, offset: 800)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !809, file: !810, line: 386, baseType: !814, size: 32, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !809, file: !810, line: 386, baseType: !814, size: 32, offset: 96)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !809, file: !810, line: 388, baseType: !13, size: 32, offset: 128)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !809, file: !810, line: 390, baseType: !807, size: 32, offset: 160)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !809, file: !810, line: 392, baseType: !13, size: 32, offset: 192)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !809, file: !810, line: 394, baseType: !13, size: 32, offset: 224)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !809, file: !810, line: 395, baseType: !894, size: 32, offset: 256)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 32)
!895 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !810, line: 45, flags: DIFlagFwdDecl)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_mp", scope: !809, file: !810, line: 397, baseType: !897, size: 32, offset: 288)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 32)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mprec", file: !810, line: 349, size: 128, elements: !899)
!899 = !{!900, !913, !914, !915}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !898, file: !810, line: 352, baseType: !901, size: 32)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 32)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !810, line: 52, size: 192, elements: !903)
!903 = !{!904, !905, !906, !907, !908, !909}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !902, file: !810, line: 54, baseType: !901, size: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !902, file: !810, line: 55, baseType: !13, size: 32, offset: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !902, file: !810, line: 55, baseType: !13, size: 32, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !902, file: !810, line: 55, baseType: !13, size: 32, offset: 96)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !902, file: !810, line: 55, baseType: !13, size: 32, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !902, file: !810, line: 56, baseType: !910, size: 32, offset: 160)
!910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !911, size: 32, elements: !784)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !810, line: 22, baseType: !912)
!912 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !898, file: !810, line: 353, baseType: !13, size: 32, offset: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !898, file: !810, line: 354, baseType: !901, size: 32, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !898, file: !810, line: 355, baseType: !916, size: 32, offset: 96)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !809, file: !810, line: 399, baseType: !918, size: 32, offset: 320)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 32)
!919 = !DISubroutineType(types: !920)
!920 = !{null, !808}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !809, file: !810, line: 401, baseType: !13, size: 32, offset: 352)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !809, file: !810, line: 404, baseType: !13, size: 32, offset: 384)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !809, file: !810, line: 405, baseType: !807, size: 32, offset: 416)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !809, file: !810, line: 407, baseType: !925, size: 32, offset: 448)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 32)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !810, line: 324, size: 192, elements: !927)
!927 = !{!928, !930, !931, !932}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !926, file: !810, line: 325, baseType: !929, size: 48)
!929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 48, elements: !859)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !926, file: !810, line: 326, baseType: !929, size: 48, offset: 48)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !926, file: !810, line: 327, baseType: !412, size: 16, offset: 96)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !926, file: !810, line: 330, baseType: !933, size: 64, offset: 128)
!933 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !809, file: !810, line: 408, baseType: !935, size: 32, offset: 480)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 32)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !810, line: 60, size: 288, elements: !937)
!937 = !{!938, !939, !940, !941, !942, !943, !944, !945, !946}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !936, file: !810, line: 62, baseType: !13, size: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !936, file: !810, line: 63, baseType: !13, size: 32, offset: 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !936, file: !810, line: 64, baseType: !13, size: 32, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !936, file: !810, line: 65, baseType: !13, size: 32, offset: 96)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !936, file: !810, line: 66, baseType: !13, size: 32, offset: 128)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !936, file: !810, line: 67, baseType: !13, size: 32, offset: 160)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !936, file: !810, line: 68, baseType: !13, size: 32, offset: 192)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !936, file: !810, line: 69, baseType: !13, size: 32, offset: 224)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !936, file: !810, line: 70, baseType: !13, size: 32, offset: 256)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !809, file: !810, line: 409, baseType: !807, size: 32, offset: 512)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !809, file: !810, line: 412, baseType: !949, size: 32, offset: 544)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 32)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 32)
!951 = !DISubroutineType(types: !952)
!952 = !{null, !13}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !809, file: !810, line: 416, baseType: !954, size: 32, offset: 576)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 32)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !810, line: 90, size: 1120, elements: !956)
!956 = !{!957, !958, !959, !963}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !955, file: !810, line: 91, baseType: !954, size: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !955, file: !810, line: 92, baseType: !13, size: 32, offset: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !955, file: !810, line: 93, baseType: !960, size: 1024, offset: 64)
!960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 1024, elements: !961)
!961 = !{!962}
!962 = !DISubrange(count: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args_ptr", scope: !955, file: !810, line: 94, baseType: !964, size: 32, offset: 1088)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 32)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !810, line: 79, size: 2112, elements: !966)
!966 = !{!967, !969, !970, !971}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !965, file: !810, line: 80, baseType: !968, size: 1024)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 1024, elements: !961)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !965, file: !810, line: 81, baseType: !968, size: 1024, offset: 1024)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !965, file: !810, line: 83, baseType: !911, size: 32, offset: 2048)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !965, file: !810, line: 86, baseType: !911, size: 32, offset: 2080)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !809, file: !810, line: 417, baseType: !955, size: 1120, offset: 608)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !809, file: !810, line: 420, baseType: !974, size: 96, offset: 1728)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !810, line: 296, size: 96, elements: !975)
!975 = !{!976, !978, !979}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !974, file: !810, line: 298, baseType: !977, size: 32)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !974, file: !810, line: 299, baseType: !13, size: 32, offset: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !974, file: !810, line: 300, baseType: !814, size: 32, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !809, file: !810, line: 421, baseType: !814, size: 32, offset: 1824)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_misc", scope: !809, file: !810, line: 422, baseType: !982, size: 32, offset: 1856)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 32)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_misc_reent", file: !810, line: 359, size: 640, elements: !984)
!984 = !{!985, !986, !987, !988, !989, !991, !992, !993, !994, !995, !996}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !983, file: !810, line: 362, baseType: !807, size: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !983, file: !810, line: 363, baseType: !874, size: 64, offset: 32)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !983, file: !810, line: 364, baseType: !874, size: 64, offset: 96)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !983, file: !810, line: 365, baseType: !874, size: 64, offset: 160)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !983, file: !810, line: 366, baseType: !990, size: 64, offset: 224)
!990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !674, size: 64, elements: !216)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !983, file: !810, line: 367, baseType: !13, size: 32, offset: 288)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !983, file: !810, line: 368, baseType: !874, size: 64, offset: 320)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !983, file: !810, line: 369, baseType: !874, size: 64, offset: 384)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !983, file: !810, line: 370, baseType: !874, size: 64, offset: 448)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !983, file: !810, line: 371, baseType: !874, size: 64, offset: 512)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !983, file: !810, line: 372, baseType: !874, size: 64, offset: 576)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !809, file: !810, line: 423, baseType: !807, size: 32, offset: 1888)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !883, line: 46, baseType: !7)
!999 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1000, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1001, globals: !1002, splitDebugInlining: false, nameTableKind: None)
!1000 = !DIFile(filename: "syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
!1001 = !{!807, !805}
!1002 = !{!799}
!1003 = !{!1004, !1005, !1006, !1007}
!1004 = !DILocalVariable(name: "r", arg: 1, scope: !801, file: !802, line: 63, type: !808)
!1005 = !DILocalVariable(name: "nbytes", arg: 2, scope: !801, file: !802, line: 63, type: !998)
!1006 = !DILocalVariable(name: "prev_heap_end", scope: !801, file: !802, line: 67, type: !807)
!1007 = !DILocalVariable(name: "stack", scope: !801, file: !802, line: 68, type: !807)
!1008 = !DIGlobalVariableExpression(var: !1009, expr: !DIExpression())
!1009 = distinct !DIGlobalVariable(name: "build_date_time_str", scope: !1010, file: !1015, line: 4, type: !1021, isLocal: false, isDefinition: true)
!1010 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1011, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1012, splitDebugInlining: false, nameTableKind: None)
!1011 = !DIFile(filename: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC/Build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
!1012 = !{!1008, !1013, !1019}
!1013 = !DIGlobalVariableExpression(var: !1014, expr: !DIExpression())
!1014 = distinct !DIGlobalVariable(name: "sw_verno_str", scope: !1010, file: !1015, line: 5, type: !1016, isLocal: false, isDefinition: true)
!1015 = !DIFile(filename: "Build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
!1016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !674, size: 88, elements: !1017)
!1017 = !{!1018}
!1018 = !DISubrange(count: 11)
!1019 = !DIGlobalVariableExpression(var: !1020, expr: !DIExpression())
!1020 = distinct !DIGlobalVariable(name: "hw_verno_str", scope: !1010, file: !1015, line: 6, type: !1016, isLocal: false, isDefinition: true)
!1021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !674, size: 248, elements: !1022)
!1022 = !{!1023}
!1023 = !DISubrange(count: 31)
!1024 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1025, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1026, retainedTypes: !1027, splitDebugInlining: false, nameTableKind: None)
!1025 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
!1026 = !{!124}
!1027 = !{!58, !80}
!1028 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1029, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1030, splitDebugInlining: false, nameTableKind: None)
!1029 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
!1030 = !{!1031, !1056}
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 32)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !210, line: 418, baseType: !1033)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 395, size: 1120, elements: !1034)
!1034 = !{!1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !1033, file: !210, line: 397, baseType: !251, size: 32)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !1033, file: !210, line: 398, baseType: !215, size: 32, offset: 32)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !1033, file: !210, line: 399, baseType: !215, size: 32, offset: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !1033, file: !210, line: 400, baseType: !215, size: 32, offset: 96)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !1033, file: !210, line: 401, baseType: !215, size: 32, offset: 128)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !1033, file: !210, line: 402, baseType: !215, size: 32, offset: 160)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !1033, file: !210, line: 403, baseType: !258, size: 96, offset: 192)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !1033, file: !210, line: 404, baseType: !215, size: 32, offset: 288)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !1033, file: !210, line: 405, baseType: !215, size: 32, offset: 320)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !1033, file: !210, line: 406, baseType: !215, size: 32, offset: 352)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !1033, file: !210, line: 407, baseType: !215, size: 32, offset: 384)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !1033, file: !210, line: 408, baseType: !215, size: 32, offset: 416)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !1033, file: !210, line: 409, baseType: !215, size: 32, offset: 448)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !1033, file: !210, line: 410, baseType: !215, size: 32, offset: 480)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !1033, file: !210, line: 411, baseType: !269, size: 64, offset: 512)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !1033, file: !210, line: 412, baseType: !251, size: 32, offset: 576)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !1033, file: !210, line: 413, baseType: !251, size: 32, offset: 608)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !1033, file: !210, line: 414, baseType: !275, size: 128, offset: 640)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !1033, file: !210, line: 415, baseType: !279, size: 160, offset: 768)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !1033, file: !210, line: 416, baseType: !283, size: 160, offset: 928)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !1033, file: !210, line: 417, baseType: !215, size: 32, offset: 1088)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 32)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !210, line: 378, baseType: !1058)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 363, size: 28704, elements: !1059)
!1059 = !{!1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !1058, file: !210, line: 365, baseType: !214, size: 256)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !1058, file: !210, line: 366, baseType: !219, size: 768, offset: 256)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !1058, file: !210, line: 367, baseType: !214, size: 256, offset: 1024)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !1058, file: !210, line: 368, baseType: !219, size: 768, offset: 1280)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !1058, file: !210, line: 369, baseType: !214, size: 256, offset: 2048)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !1058, file: !210, line: 370, baseType: !219, size: 768, offset: 2304)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !1058, file: !210, line: 371, baseType: !214, size: 256, offset: 3072)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !1058, file: !210, line: 372, baseType: !219, size: 768, offset: 3328)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !1058, file: !210, line: 373, baseType: !214, size: 256, offset: 4096)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !1058, file: !210, line: 374, baseType: !230, size: 1792, offset: 4352)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !1058, file: !210, line: 375, baseType: !234, size: 1920, offset: 6144)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !1058, file: !210, line: 376, baseType: !242, size: 20608, offset: 8064)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !1058, file: !210, line: 377, baseType: !215, size: 32, offset: 28672)
!1073 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1074, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1075, splitDebugInlining: false, nameTableKind: None)
!1074 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
!1075 = !{!93, !124}
!1076 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1077, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1078, splitDebugInlining: false, nameTableKind: None)
!1077 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/timer.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
!1078 = !{!849, !58}
!1079 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1080, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1080 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_log.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
!1081 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1082, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1083, retainedTypes: !1142, splitDebugInlining: false, nameTableKind: None)
!1082 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
!1083 = !{!1084, !1091, !93, !1122, !1128, !1132, !1136, !327}
!1084 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1085, line: 233, baseType: !13, size: 32, elements: !1086)
!1085 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
!1086 = !{!1087, !1088, !1089, !1090}
!1087 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR", value: -3)
!1088 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR_PORT", value: -2)
!1089 = !DIEnumerator(name: "HAL_PINMUX_STATUS_INVALID_FUNCTION", value: -1)
!1090 = !DIEnumerator(name: "HAL_PINMUX_STATUS_OK", value: 0)
!1091 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !423, line: 249, baseType: !7, size: 32, elements: !1092)
!1092 = !{!1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121}
!1093 = !DIEnumerator(name: "HAL_GPIO_0", value: 0)
!1094 = !DIEnumerator(name: "HAL_GPIO_1", value: 1)
!1095 = !DIEnumerator(name: "HAL_GPIO_2", value: 2)
!1096 = !DIEnumerator(name: "HAL_GPIO_3", value: 3)
!1097 = !DIEnumerator(name: "HAL_GPIO_4", value: 4)
!1098 = !DIEnumerator(name: "HAL_GPIO_5", value: 5)
!1099 = !DIEnumerator(name: "HAL_GPIO_6", value: 6)
!1100 = !DIEnumerator(name: "HAL_GPIO_7", value: 7)
!1101 = !DIEnumerator(name: "HAL_GPIO_24", value: 24)
!1102 = !DIEnumerator(name: "HAL_GPIO_25", value: 25)
!1103 = !DIEnumerator(name: "HAL_GPIO_26", value: 26)
!1104 = !DIEnumerator(name: "HAL_GPIO_27", value: 27)
!1105 = !DIEnumerator(name: "HAL_GPIO_28", value: 28)
!1106 = !DIEnumerator(name: "HAL_GPIO_29", value: 29)
!1107 = !DIEnumerator(name: "HAL_GPIO_30", value: 30)
!1108 = !DIEnumerator(name: "HAL_GPIO_31", value: 31)
!1109 = !DIEnumerator(name: "HAL_GPIO_32", value: 32)
!1110 = !DIEnumerator(name: "HAL_GPIO_33", value: 33)
!1111 = !DIEnumerator(name: "HAL_GPIO_34", value: 34)
!1112 = !DIEnumerator(name: "HAL_GPIO_35", value: 35)
!1113 = !DIEnumerator(name: "HAL_GPIO_36", value: 36)
!1114 = !DIEnumerator(name: "HAL_GPIO_37", value: 37)
!1115 = !DIEnumerator(name: "HAL_GPIO_38", value: 38)
!1116 = !DIEnumerator(name: "HAL_GPIO_39", value: 39)
!1117 = !DIEnumerator(name: "HAL_GPIO_57", value: 57)
!1118 = !DIEnumerator(name: "HAL_GPIO_58", value: 58)
!1119 = !DIEnumerator(name: "HAL_GPIO_59", value: 59)
!1120 = !DIEnumerator(name: "HAL_GPIO_60", value: 60)
!1121 = !DIEnumerator(name: "HAL_GPIO_MAX", value: 61)
!1122 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1085, line: 224, baseType: !13, size: 32, elements: !1123)
!1123 = !{!1124, !1125, !1126, !1127}
!1124 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR", value: -3)
!1125 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR_PIN", value: -2)
!1126 = !DIEnumerator(name: "HAL_GPIO_STATUS_INVALID_PARAMETER", value: -1)
!1127 = !DIEnumerator(name: "HAL_GPIO_STATUS_OK", value: 0)
!1128 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1085, line: 217, baseType: !7, size: 32, elements: !1129)
!1129 = !{!1130, !1131}
!1130 = !DIEnumerator(name: "HAL_GPIO_DATA_LOW", value: 0)
!1131 = !DIEnumerator(name: "HAL_GPIO_DATA_HIGH", value: 1)
!1132 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1085, line: 210, baseType: !7, size: 32, elements: !1133)
!1133 = !{!1134, !1135}
!1134 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_INPUT", value: 0)
!1135 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_OUTPUT", value: 1)
!1136 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1085, line: 242, baseType: !7, size: 32, elements: !1137)
!1137 = !{!1138, !1139, !1140, !1141}
!1138 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_4MA", value: 0)
!1139 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_8MA", value: 1)
!1140 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_12MA", value: 2)
!1141 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_16MA", value: 3)
!1142 = !{!202, !464, !1143, !236, !1144, !1145}
!1143 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_data_t", file: !1085, line: 220, baseType: !1128)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_driving_current_t", file: !1085, line: 247, baseType: !1136)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_DIR_T", file: !328, line: 60, baseType: !327)
!1146 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1147, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1148, retainedTypes: !1149, globals: !1150, splitDebugInlining: false, nameTableKind: None)
!1147 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/eint_edge_falling/src/main.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
!1148 = !{!632, !637, !653, !659, !663, !1091, !456, !422, !1132}
!1149 = !{!464}
!1150 = !{!1151}
!1151 = !DIGlobalVariableExpression(var: !1152, expr: !DIExpression())
!1152 = distinct !DIGlobalVariable(name: "irq_num", scope: !1146, file: !1147, line: 50, type: !497, isLocal: true, isDefinition: true)
!1153 = !{!"Ubuntu clang version 14.0.6"}
!1154 = !{i32 7, !"Dwarf Version", i32 2}
!1155 = !{i32 2, !"Debug Info Version", i32 3}
!1156 = !{i32 1, !"wchar_size", i32 4}
!1157 = !{i32 1, !"min_enum_size", i32 4}
!1158 = !{i32 1, !"branch-target-enforcement", i32 0}
!1159 = !{i32 1, !"sign-return-address", i32 0}
!1160 = !{i32 1, !"sign-return-address-all", i32 0}
!1161 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!1162 = !{i32 7, !"frame-pointer", i32 2}
!1163 = distinct !DISubprogram(name: "GPT_ResetTimer", scope: !3, file: !3, line: 73, type: !1164, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1166)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{null, !60, !60, !477}
!1166 = !{!1167, !1168, !1169}
!1167 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1163, file: !3, line: 73, type: !60)
!1168 = !DILocalVariable(name: "countValue", arg: 2, scope: !1163, file: !3, line: 73, type: !60)
!1169 = !DILocalVariable(name: "autoRepeat", arg: 3, scope: !1163, file: !3, line: 73, type: !477)
!1170 = !DILocation(line: 0, scope: !1163)
!1171 = !DILocation(line: 75, column: 5, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 75, column: 5)
!1173 = !DILocation(line: 75, column: 5, scope: !1163)
!1174 = !DILocation(line: 75, column: 5, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 75, column: 5)
!1176 = distinct !{!1176, !1174, !1174}
!1177 = !DILocation(line: 77, column: 9, scope: !1163)
!1178 = !DILocation(line: 78, column: 30, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 77, column: 24)
!1180 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 77, column: 9)
!1181 = !DILocation(line: 0, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 79, column: 13)
!1183 = !DILocation(line: 79, column: 13, scope: !1179)
!1184 = !DILocation(line: 80, column: 34, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 79, column: 37)
!1186 = !DILocation(line: 81, column: 9, scope: !1185)
!1187 = !DILocation(line: 82, column: 34, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 81, column: 16)
!1189 = !DILocation(line: 85, column: 30, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 84, column: 31)
!1191 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 84, column: 16)
!1192 = !DILocation(line: 0, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 86, column: 13)
!1194 = !DILocation(line: 86, column: 13, scope: !1190)
!1195 = !DILocation(line: 87, column: 34, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 86, column: 37)
!1197 = !DILocation(line: 88, column: 9, scope: !1196)
!1198 = !DILocation(line: 89, column: 34, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 88, column: 16)
!1200 = !DILocation(line: 92, column: 1, scope: !1163)
!1201 = distinct !DISubprogram(name: "GPT_Start", scope: !3, file: !3, line: 94, type: !1202, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1204)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{null, !60}
!1204 = !{!1205}
!1205 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1201, file: !3, line: 94, type: !60)
!1206 = !DILocation(line: 0, scope: !1201)
!1207 = !DILocation(line: 96, column: 5, scope: !1201)
!1208 = !DILocation(line: 96, column: 5, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 96, column: 5)
!1210 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 96, column: 5)
!1211 = distinct !{!1211, !1208, !1208}
!1212 = !DILocation(line: 99, column: 30, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 98, column: 24)
!1214 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 98, column: 9)
!1215 = !DILocation(line: 100, column: 9, scope: !1213)
!1216 = !DILocation(line: 101, column: 5, scope: !1213)
!1217 = !DILocation(line: 102, column: 30, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 101, column: 31)
!1219 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 101, column: 16)
!1220 = !DILocation(line: 103, column: 9, scope: !1218)
!1221 = !DILocation(line: 104, column: 5, scope: !1218)
!1222 = !DILocation(line: 105, column: 30, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 104, column: 31)
!1224 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 104, column: 16)
!1225 = !DILocation(line: 106, column: 5, scope: !1223)
!1226 = !DILocation(line: 108, column: 1, scope: !1201)
!1227 = distinct !DISubprogram(name: "GPT_Stop", scope: !3, file: !3, line: 110, type: !1202, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1228)
!1228 = !{!1229}
!1229 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1227, file: !3, line: 110, type: !60)
!1230 = !DILocation(line: 0, scope: !1227)
!1231 = !DILocation(line: 112, column: 9, scope: !1227)
!1232 = !DILocation(line: 113, column: 30, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 112, column: 24)
!1234 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 112, column: 9)
!1235 = !DILocation(line: 114, column: 30, scope: !1233)
!1236 = !DILocation(line: 115, column: 31, scope: !1233)
!1237 = !DILocation(line: 117, column: 5, scope: !1233)
!1238 = !DILocation(line: 118, column: 30, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 117, column: 31)
!1240 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 117, column: 16)
!1241 = !DILocation(line: 119, column: 30, scope: !1239)
!1242 = !DILocation(line: 120, column: 31, scope: !1239)
!1243 = !DILocation(line: 121, column: 5, scope: !1239)
!1244 = !DILocation(line: 122, column: 30, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 121, column: 31)
!1246 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 121, column: 16)
!1247 = !DILocation(line: 123, column: 5, scope: !1245)
!1248 = !DILocation(line: 124, column: 30, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 123, column: 31)
!1250 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 123, column: 16)
!1251 = !DILocation(line: 125, column: 5, scope: !1249)
!1252 = !DILocation(line: 128, column: 1, scope: !1227)
!1253 = distinct !DISubprogram(name: "GPT_INT_Handler", scope: !3, file: !3, line: 130, type: !565, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1254)
!1254 = !{!1255, !1256}
!1255 = !DILocalVariable(name: "irq_number", arg: 1, scope: !1253, file: !3, line: 130, type: !515)
!1256 = !DILocalVariable(name: "GPT_Status", scope: !1253, file: !3, line: 132, type: !411)
!1257 = !DILocation(line: 0, scope: !1253)
!1258 = !DILocation(line: 135, column: 18, scope: !1253)
!1259 = !DILocation(line: 136, column: 26, scope: !1253)
!1260 = !DILocation(line: 136, column: 24, scope: !1253)
!1261 = !DILocation(line: 138, column: 20, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 138, column: 9)
!1263 = !DILocation(line: 138, column: 9, scope: !1253)
!1264 = !DILocation(line: 141, column: 27, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 141, column: 16)
!1266 = !DILocation(line: 141, column: 16, scope: !1262)
!1267 = !DILocation(line: 0, scope: !1262)
!1268 = !DILocation(line: 145, column: 1, scope: !1253)
!1269 = distinct !DISubprogram(name: "GPT_init", scope: !3, file: !3, line: 147, type: !1270, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1272)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{null, !60, !60, !74}
!1272 = !{!1273, !1274, !1275}
!1273 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1269, file: !3, line: 147, type: !60)
!1274 = !DILocalVariable(name: "speed_32us", arg: 2, scope: !1269, file: !3, line: 147, type: !60)
!1275 = !DILocalVariable(name: "GPT_Callback", arg: 3, scope: !1269, file: !3, line: 147, type: !74)
!1276 = !DILocation(line: 0, scope: !1269)
!1277 = !DILocation(line: 149, column: 5, scope: !1269)
!1278 = !DILocation(line: 149, column: 5, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 149, column: 5)
!1280 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 149, column: 5)
!1281 = distinct !{!1281, !1278, !1278}
!1282 = !DILocation(line: 149, column: 5, scope: !1280)
!1283 = !DILocation(line: 151, column: 23, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 151, column: 9)
!1285 = !DILocation(line: 152, column: 9, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 151, column: 41)
!1287 = !DILocation(line: 153, column: 9, scope: !1286)
!1288 = !DILocation(line: 154, column: 9, scope: !1286)
!1289 = !DILocation(line: 155, column: 5, scope: !1286)
!1290 = !DILocation(line: 157, column: 9, scope: !1269)
!1291 = !DILocation(line: 158, column: 37, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 157, column: 24)
!1293 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 157, column: 9)
!1294 = !DILocation(line: 159, column: 30, scope: !1292)
!1295 = !DILocation(line: 160, column: 45, scope: !1292)
!1296 = !DILocation(line: 160, column: 30, scope: !1292)
!1297 = !DILocation(line: 161, column: 5, scope: !1292)
!1298 = !DILocation(line: 162, column: 37, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 161, column: 31)
!1300 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 161, column: 16)
!1301 = !DILocation(line: 163, column: 30, scope: !1299)
!1302 = !DILocation(line: 164, column: 45, scope: !1299)
!1303 = !DILocation(line: 164, column: 30, scope: !1299)
!1304 = !DILocation(line: 165, column: 5, scope: !1299)
!1305 = !DILocation(line: 166, column: 59, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 165, column: 31)
!1307 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 165, column: 16)
!1308 = !DILocation(line: 166, column: 45, scope: !1306)
!1309 = !DILocation(line: 166, column: 30, scope: !1306)
!1310 = !DILocation(line: 167, column: 5, scope: !1306)
!1311 = !DILocation(line: 168, column: 59, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 167, column: 31)
!1313 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 167, column: 16)
!1314 = !DILocation(line: 168, column: 45, scope: !1312)
!1315 = !DILocation(line: 168, column: 30, scope: !1312)
!1316 = !DILocation(line: 169, column: 30, scope: !1312)
!1317 = !DILocation(line: 170, column: 5, scope: !1312)
!1318 = !DILocation(line: 171, column: 1, scope: !1269)
!1319 = distinct !DISubprogram(name: "GPT_return_current_count", scope: !3, file: !3, line: 173, type: !1320, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1322)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!60, !60}
!1322 = !{!1323, !1324}
!1323 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1319, file: !3, line: 173, type: !60)
!1324 = !DILocalVariable(name: "current_count", scope: !1319, file: !3, line: 175, type: !60)
!1325 = !DILocation(line: 0, scope: !1319)
!1326 = !DILocation(line: 177, column: 5, scope: !1319)
!1327 = !DILocation(line: 177, column: 5, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 177, column: 5)
!1329 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 177, column: 5)
!1330 = distinct !{!1330, !1327, !1327}
!1331 = !DILocation(line: 183, column: 5, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 181, column: 31)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 181, column: 16)
!1334 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 179, column: 9)
!1335 = !DILocation(line: 185, column: 5, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 183, column: 31)
!1337 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 183, column: 16)
!1338 = !DILocation(line: 187, column: 5, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 185, column: 31)
!1340 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 185, column: 16)
!1341 = !DILocation(line: 0, scope: !1334)
!1342 = !DILocation(line: 189, column: 5, scope: !1319)
!1343 = distinct !DISubprogram(name: "CM4_GPT2Init", scope: !3, file: !3, line: 193, type: !75, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1344)
!1344 = !{}
!1345 = !DILocation(line: 195, column: 5, scope: !1343)
!1346 = !DILocation(line: 196, column: 1, scope: !1343)
!1347 = distinct !DISubprogram(name: "CM4_GPT4Init", scope: !3, file: !3, line: 198, type: !75, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1344)
!1348 = !DILocation(line: 200, column: 5, scope: !1347)
!1349 = !DILocation(line: 201, column: 1, scope: !1347)
!1350 = distinct !DISubprogram(name: "halGPIO_ConfDirection", scope: !86, file: !86, line: 54, type: !1351, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1354)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!1353, !80, !413}
!1353 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !6, line: 56, baseType: !13)
!1354 = !{!1355, !1356, !1357, !1359}
!1355 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1350, file: !86, line: 54, type: !80)
!1356 = !DILocalVariable(name: "outEnable", arg: 2, scope: !1350, file: !86, line: 54, type: !413)
!1357 = !DILocalVariable(name: "no", scope: !1350, file: !86, line: 57, type: !1358)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !6, line: 60, baseType: !412)
!1359 = !DILocalVariable(name: "remainder", scope: !1350, file: !86, line: 58, type: !1358)
!1360 = !DILocation(line: 0, scope: !1350)
!1361 = !DILocation(line: 59, column: 19, scope: !1350)
!1362 = !DILocation(line: 60, column: 17, scope: !1350)
!1363 = !DILocation(line: 61, column: 5, scope: !1350)
!1364 = !DILocation(line: 65, column: 27, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !86, line: 65, column: 17)
!1366 = distinct !DILexicalBlock(scope: !1350, file: !86, line: 61, column: 17)
!1367 = !DILocation(line: 0, scope: !1365)
!1368 = !DILocation(line: 65, column: 17, scope: !1366)
!1369 = !DILocation(line: 66, column: 21, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1365, file: !86, line: 65, column: 33)
!1371 = !DILocation(line: 67, column: 73, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !86, line: 66, column: 38)
!1373 = distinct !DILexicalBlock(scope: !1370, file: !86, line: 66, column: 21)
!1374 = !DILocation(line: 67, column: 69, scope: !1372)
!1375 = !DILocation(line: 67, column: 66, scope: !1372)
!1376 = !DILocation(line: 68, column: 17, scope: !1372)
!1377 = !DILocation(line: 68, column: 28, scope: !1373)
!1378 = !DILocation(line: 69, column: 77, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !86, line: 68, column: 45)
!1380 = distinct !DILexicalBlock(scope: !1373, file: !86, line: 68, column: 28)
!1381 = !DILocation(line: 70, column: 77, scope: !1379)
!1382 = !DILocation(line: 71, column: 17, scope: !1379)
!1383 = !DILocation(line: 72, column: 77, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !86, line: 71, column: 45)
!1385 = distinct !DILexicalBlock(scope: !1380, file: !86, line: 71, column: 28)
!1386 = !DILocation(line: 73, column: 77, scope: !1384)
!1387 = !DILocation(line: 74, column: 17, scope: !1384)
!1388 = !DILocation(line: 75, column: 79, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !86, line: 74, column: 45)
!1390 = distinct !DILexicalBlock(scope: !1385, file: !86, line: 74, column: 28)
!1391 = !DILocation(line: 76, column: 79, scope: !1389)
!1392 = !DILocation(line: 77, column: 17, scope: !1389)
!1393 = !DILocation(line: 78, column: 79, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !86, line: 77, column: 45)
!1395 = distinct !DILexicalBlock(scope: !1390, file: !86, line: 77, column: 28)
!1396 = !DILocation(line: 79, column: 79, scope: !1394)
!1397 = !DILocation(line: 80, column: 17, scope: !1394)
!1398 = !DILocation(line: 81, column: 79, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !86, line: 80, column: 45)
!1400 = distinct !DILexicalBlock(scope: !1395, file: !86, line: 80, column: 28)
!1401 = !DILocation(line: 82, column: 79, scope: !1399)
!1402 = !DILocation(line: 83, column: 17, scope: !1399)
!1403 = !DILocation(line: 85, column: 17, scope: !1370)
!1404 = !DILocation(line: 86, column: 13, scope: !1370)
!1405 = !DILocation(line: 88, column: 21, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1365, file: !86, line: 86, column: 20)
!1407 = !DILocation(line: 89, column: 72, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !86, line: 88, column: 38)
!1409 = distinct !DILexicalBlock(scope: !1406, file: !86, line: 88, column: 21)
!1410 = !DILocation(line: 89, column: 66, scope: !1408)
!1411 = !DILocation(line: 90, column: 17, scope: !1408)
!1412 = !DILocation(line: 90, column: 28, scope: !1409)
!1413 = !DILocation(line: 91, column: 77, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !86, line: 90, column: 45)
!1415 = distinct !DILexicalBlock(scope: !1409, file: !86, line: 90, column: 28)
!1416 = !DILocation(line: 92, column: 17, scope: !1414)
!1417 = !DILocation(line: 93, column: 77, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !86, line: 92, column: 45)
!1419 = distinct !DILexicalBlock(scope: !1415, file: !86, line: 92, column: 28)
!1420 = !DILocation(line: 94, column: 17, scope: !1418)
!1421 = !DILocation(line: 95, column: 79, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !86, line: 94, column: 45)
!1423 = distinct !DILexicalBlock(scope: !1419, file: !86, line: 94, column: 28)
!1424 = !DILocation(line: 96, column: 17, scope: !1422)
!1425 = !DILocation(line: 97, column: 79, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !86, line: 96, column: 45)
!1427 = distinct !DILexicalBlock(scope: !1423, file: !86, line: 96, column: 28)
!1428 = !DILocation(line: 98, column: 17, scope: !1426)
!1429 = !DILocation(line: 99, column: 79, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !86, line: 98, column: 45)
!1431 = distinct !DILexicalBlock(scope: !1427, file: !86, line: 98, column: 28)
!1432 = !DILocation(line: 100, column: 17, scope: !1430)
!1433 = !DILocation(line: 103, column: 17, scope: !1406)
!1434 = !DILocation(line: 109, column: 27, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1366, file: !86, line: 109, column: 17)
!1436 = !DILocation(line: 0, scope: !1435)
!1437 = !DILocation(line: 109, column: 17, scope: !1366)
!1438 = !DILocation(line: 110, column: 21, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1435, file: !86, line: 109, column: 33)
!1440 = !DILocation(line: 111, column: 73, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !86, line: 110, column: 36)
!1442 = distinct !DILexicalBlock(scope: !1439, file: !86, line: 110, column: 21)
!1443 = !DILocation(line: 111, column: 69, scope: !1441)
!1444 = !DILocation(line: 111, column: 66, scope: !1441)
!1445 = !DILocation(line: 112, column: 17, scope: !1441)
!1446 = !DILocation(line: 113, column: 79, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1442, file: !86, line: 112, column: 24)
!1448 = !DILocation(line: 114, column: 79, scope: !1447)
!1449 = !DILocation(line: 117, column: 17, scope: !1439)
!1450 = !DILocation(line: 118, column: 13, scope: !1439)
!1451 = !DILocation(line: 120, column: 21, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1435, file: !86, line: 118, column: 20)
!1453 = !DILocation(line: 121, column: 72, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !86, line: 120, column: 36)
!1455 = distinct !DILexicalBlock(scope: !1452, file: !86, line: 120, column: 21)
!1456 = !DILocation(line: 121, column: 66, scope: !1454)
!1457 = !DILocation(line: 122, column: 17, scope: !1454)
!1458 = !DILocation(line: 123, column: 79, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1455, file: !86, line: 122, column: 24)
!1460 = !DILocation(line: 126, column: 17, scope: !1452)
!1461 = !DILocation(line: 133, column: 1, scope: !1350)
!1462 = distinct !DISubprogram(name: "halGPO_Write", scope: !86, file: !86, line: 136, type: !1351, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1463)
!1463 = !{!1464, !1465, !1466, !1467}
!1464 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1462, file: !86, line: 136, type: !80)
!1465 = !DILocalVariable(name: "writeValue", arg: 2, scope: !1462, file: !86, line: 136, type: !413)
!1466 = !DILocalVariable(name: "no", scope: !1462, file: !86, line: 138, type: !1358)
!1467 = !DILocalVariable(name: "remainder", scope: !1462, file: !86, line: 139, type: !1358)
!1468 = !DILocation(line: 0, scope: !1462)
!1469 = !DILocation(line: 140, column: 19, scope: !1462)
!1470 = !DILocation(line: 141, column: 17, scope: !1462)
!1471 = !DILocation(line: 142, column: 5, scope: !1462)
!1472 = !DILocation(line: 145, column: 17, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !86, line: 145, column: 17)
!1474 = distinct !DILexicalBlock(scope: !1462, file: !86, line: 142, column: 17)
!1475 = !DILocation(line: 0, scope: !1473)
!1476 = !DILocation(line: 145, column: 17, scope: !1474)
!1477 = !DILocation(line: 146, column: 17, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1473, file: !86, line: 145, column: 29)
!1479 = !DILocation(line: 147, column: 13, scope: !1478)
!1480 = !DILocation(line: 148, column: 17, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1473, file: !86, line: 147, column: 20)
!1482 = !DILocation(line: 153, column: 17, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1474, file: !86, line: 153, column: 17)
!1484 = !DILocation(line: 0, scope: !1483)
!1485 = !DILocation(line: 153, column: 17, scope: !1474)
!1486 = !DILocation(line: 154, column: 17, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1483, file: !86, line: 153, column: 29)
!1488 = !DILocation(line: 155, column: 13, scope: !1487)
!1489 = !DILocation(line: 156, column: 17, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1483, file: !86, line: 155, column: 20)
!1491 = !DILocation(line: 163, column: 1, scope: !1462)
!1492 = distinct !DISubprogram(name: "halgetGPIO_DOUT", scope: !86, file: !86, line: 169, type: !1493, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1495)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!413, !80}
!1495 = !{!1496, !1497, !1498, !1499}
!1496 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1492, file: !86, line: 169, type: !80)
!1497 = !DILocalVariable(name: "no", scope: !1492, file: !86, line: 171, type: !1358)
!1498 = !DILocalVariable(name: "remainder", scope: !1492, file: !86, line: 172, type: !1358)
!1499 = !DILocalVariable(name: "dout", scope: !1492, file: !86, line: 175, type: !413)
!1500 = !DILocation(line: 0, scope: !1492)
!1501 = !DILocation(line: 173, column: 19, scope: !1492)
!1502 = !DILocation(line: 174, column: 17, scope: !1492)
!1503 = !DILocation(line: 177, column: 5, scope: !1492)
!1504 = !DILocation(line: 183, column: 13, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1492, file: !86, line: 177, column: 17)
!1506 = !DILocation(line: 0, scope: !1505)
!1507 = !DILocation(line: 187, column: 5, scope: !1492)
!1508 = !DILocation(line: 188, column: 1, scope: !1492)
!1509 = distinct !DISubprogram(name: "halgetGPIO_DIN", scope: !86, file: !86, line: 189, type: !1493, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1510)
!1510 = !{!1511, !1512, !1513, !1514}
!1511 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1509, file: !86, line: 189, type: !80)
!1512 = !DILocalVariable(name: "no", scope: !1509, file: !86, line: 191, type: !1358)
!1513 = !DILocalVariable(name: "remainder", scope: !1509, file: !86, line: 192, type: !1358)
!1514 = !DILocalVariable(name: "din", scope: !1509, file: !86, line: 195, type: !413)
!1515 = !DILocation(line: 0, scope: !1509)
!1516 = !DILocation(line: 193, column: 19, scope: !1509)
!1517 = !DILocation(line: 194, column: 17, scope: !1509)
!1518 = !DILocation(line: 196, column: 5, scope: !1509)
!1519 = !DILocation(line: 203, column: 13, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1509, file: !86, line: 196, column: 17)
!1521 = !DILocation(line: 0, scope: !1520)
!1522 = !DILocation(line: 208, column: 5, scope: !1509)
!1523 = !DILocation(line: 209, column: 1, scope: !1509)
!1524 = distinct !DISubprogram(name: "halgetGPIO_OutEnable", scope: !86, file: !86, line: 210, type: !1493, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1525)
!1525 = !{!1526, !1527, !1528, !1529}
!1526 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1524, file: !86, line: 210, type: !80)
!1527 = !DILocalVariable(name: "no", scope: !1524, file: !86, line: 212, type: !1358)
!1528 = !DILocalVariable(name: "remainder", scope: !1524, file: !86, line: 213, type: !1358)
!1529 = !DILocalVariable(name: "outEnable", scope: !1524, file: !86, line: 216, type: !413)
!1530 = !DILocation(line: 0, scope: !1524)
!1531 = !DILocation(line: 214, column: 19, scope: !1524)
!1532 = !DILocation(line: 215, column: 17, scope: !1524)
!1533 = !DILocation(line: 218, column: 5, scope: !1524)
!1534 = !DILocation(line: 224, column: 13, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1524, file: !86, line: 218, column: 17)
!1536 = !DILocation(line: 0, scope: !1535)
!1537 = !DILocation(line: 228, column: 5, scope: !1524)
!1538 = !DILocation(line: 229, column: 1, scope: !1524)
!1539 = distinct !DISubprogram(name: "halGPIO_PullUp_SET", scope: !86, file: !86, line: 232, type: !1540, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1542)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!1353, !80}
!1542 = !{!1543, !1544, !1545}
!1543 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1539, file: !86, line: 232, type: !80)
!1544 = !DILocalVariable(name: "no", scope: !1539, file: !86, line: 234, type: !1358)
!1545 = !DILocalVariable(name: "remainder", scope: !1539, file: !86, line: 235, type: !1358)
!1546 = !DILocation(line: 0, scope: !1539)
!1547 = !DILocation(line: 236, column: 19, scope: !1539)
!1548 = !DILocation(line: 237, column: 17, scope: !1539)
!1549 = !DILocation(line: 238, column: 5, scope: !1539)
!1550 = !DILocation(line: 239, column: 5, scope: !1539)
!1551 = !DILocation(line: 241, column: 27, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !86, line: 241, column: 17)
!1553 = distinct !DILexicalBlock(scope: !1539, file: !86, line: 239, column: 17)
!1554 = !DILocation(line: 241, column: 17, scope: !1553)
!1555 = !DILocation(line: 241, column: 17, scope: !1552)
!1556 = !DILocation(line: 242, column: 17, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1552, file: !86, line: 241, column: 34)
!1558 = !DILocation(line: 243, column: 13, scope: !1557)
!1559 = !DILocation(line: 243, column: 24, scope: !1552)
!1560 = !DILocation(line: 244, column: 73, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !86, line: 243, column: 41)
!1562 = distinct !DILexicalBlock(scope: !1552, file: !86, line: 243, column: 24)
!1563 = !DILocation(line: 245, column: 73, scope: !1561)
!1564 = !DILocation(line: 246, column: 13, scope: !1561)
!1565 = !DILocation(line: 247, column: 73, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !86, line: 246, column: 41)
!1567 = distinct !DILexicalBlock(scope: !1562, file: !86, line: 246, column: 24)
!1568 = !DILocation(line: 248, column: 73, scope: !1566)
!1569 = !DILocation(line: 249, column: 13, scope: !1566)
!1570 = !DILocation(line: 250, column: 75, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !86, line: 249, column: 41)
!1572 = distinct !DILexicalBlock(scope: !1567, file: !86, line: 249, column: 24)
!1573 = !DILocation(line: 251, column: 75, scope: !1571)
!1574 = !DILocation(line: 252, column: 13, scope: !1571)
!1575 = !DILocation(line: 253, column: 75, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !86, line: 252, column: 41)
!1577 = distinct !DILexicalBlock(scope: !1572, file: !86, line: 252, column: 24)
!1578 = !DILocation(line: 254, column: 75, scope: !1576)
!1579 = !DILocation(line: 255, column: 13, scope: !1576)
!1580 = !DILocation(line: 256, column: 75, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !86, line: 255, column: 41)
!1582 = distinct !DILexicalBlock(scope: !1577, file: !86, line: 255, column: 24)
!1583 = !DILocation(line: 257, column: 75, scope: !1581)
!1584 = !DILocation(line: 258, column: 13, scope: !1581)
!1585 = !DILocation(line: 261, column: 18, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1553, file: !86, line: 261, column: 17)
!1587 = !DILocation(line: 261, column: 17, scope: !1553)
!1588 = !DILocation(line: 262, column: 75, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1586, file: !86, line: 261, column: 29)
!1590 = !DILocation(line: 263, column: 75, scope: !1589)
!1591 = !DILocation(line: 264, column: 13, scope: !1589)
!1592 = !DILocation(line: 265, column: 17, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1586, file: !86, line: 264, column: 20)
!1594 = !DILocation(line: 272, column: 1, scope: !1539)
!1595 = distinct !DISubprogram(name: "halGPIO_PullDown_RESET", scope: !86, file: !86, line: 359, type: !1540, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1596)
!1596 = !{!1597, !1598, !1599}
!1597 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1595, file: !86, line: 359, type: !80)
!1598 = !DILocalVariable(name: "no", scope: !1595, file: !86, line: 362, type: !1358)
!1599 = !DILocalVariable(name: "remainder", scope: !1595, file: !86, line: 363, type: !1358)
!1600 = !DILocation(line: 0, scope: !1595)
!1601 = !DILocation(line: 364, column: 19, scope: !1595)
!1602 = !DILocation(line: 365, column: 17, scope: !1595)
!1603 = !DILocation(line: 367, column: 5, scope: !1595)
!1604 = !DILocation(line: 369, column: 27, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !86, line: 369, column: 17)
!1606 = distinct !DILexicalBlock(scope: !1595, file: !86, line: 367, column: 17)
!1607 = !DILocation(line: 369, column: 17, scope: !1606)
!1608 = !DILocation(line: 369, column: 17, scope: !1605)
!1609 = !DILocation(line: 370, column: 17, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1605, file: !86, line: 369, column: 34)
!1611 = !DILocation(line: 371, column: 13, scope: !1610)
!1612 = !DILocation(line: 371, column: 24, scope: !1605)
!1613 = !DILocation(line: 372, column: 73, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !86, line: 371, column: 41)
!1615 = distinct !DILexicalBlock(scope: !1605, file: !86, line: 371, column: 24)
!1616 = !DILocation(line: 373, column: 73, scope: !1614)
!1617 = !DILocation(line: 374, column: 13, scope: !1614)
!1618 = !DILocation(line: 375, column: 73, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !86, line: 374, column: 41)
!1620 = distinct !DILexicalBlock(scope: !1615, file: !86, line: 374, column: 24)
!1621 = !DILocation(line: 376, column: 73, scope: !1619)
!1622 = !DILocation(line: 377, column: 13, scope: !1619)
!1623 = !DILocation(line: 378, column: 75, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !86, line: 377, column: 41)
!1625 = distinct !DILexicalBlock(scope: !1620, file: !86, line: 377, column: 24)
!1626 = !DILocation(line: 379, column: 75, scope: !1624)
!1627 = !DILocation(line: 380, column: 13, scope: !1624)
!1628 = !DILocation(line: 381, column: 75, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !86, line: 380, column: 41)
!1630 = distinct !DILexicalBlock(scope: !1625, file: !86, line: 380, column: 24)
!1631 = !DILocation(line: 382, column: 75, scope: !1629)
!1632 = !DILocation(line: 383, column: 13, scope: !1629)
!1633 = !DILocation(line: 384, column: 75, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !86, line: 383, column: 41)
!1635 = distinct !DILexicalBlock(scope: !1630, file: !86, line: 383, column: 24)
!1636 = !DILocation(line: 385, column: 75, scope: !1634)
!1637 = !DILocation(line: 386, column: 13, scope: !1634)
!1638 = !DILocation(line: 389, column: 18, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1606, file: !86, line: 389, column: 17)
!1640 = !DILocation(line: 389, column: 17, scope: !1606)
!1641 = !DILocation(line: 390, column: 75, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1639, file: !86, line: 389, column: 29)
!1643 = !DILocation(line: 391, column: 75, scope: !1642)
!1644 = !DILocation(line: 392, column: 13, scope: !1642)
!1645 = !DILocation(line: 393, column: 17, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1639, file: !86, line: 392, column: 20)
!1647 = !DILocation(line: 401, column: 1, scope: !1595)
!1648 = distinct !DISubprogram(name: "halGPIO_PullUp_RESET", scope: !86, file: !86, line: 274, type: !1540, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1649)
!1649 = !{!1650, !1651, !1652}
!1650 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1648, file: !86, line: 274, type: !80)
!1651 = !DILocalVariable(name: "no", scope: !1648, file: !86, line: 276, type: !1358)
!1652 = !DILocalVariable(name: "remainder", scope: !1648, file: !86, line: 277, type: !1358)
!1653 = !DILocation(line: 0, scope: !1648)
!1654 = !DILocation(line: 278, column: 19, scope: !1648)
!1655 = !DILocation(line: 279, column: 17, scope: !1648)
!1656 = !DILocation(line: 281, column: 5, scope: !1648)
!1657 = !DILocation(line: 283, column: 27, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !86, line: 283, column: 17)
!1659 = distinct !DILexicalBlock(scope: !1648, file: !86, line: 281, column: 17)
!1660 = !DILocation(line: 283, column: 17, scope: !1659)
!1661 = !DILocation(line: 283, column: 17, scope: !1658)
!1662 = !DILocation(line: 284, column: 17, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1658, file: !86, line: 283, column: 34)
!1664 = !DILocation(line: 285, column: 13, scope: !1663)
!1665 = !DILocation(line: 285, column: 24, scope: !1658)
!1666 = !DILocation(line: 286, column: 73, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !86, line: 285, column: 41)
!1668 = distinct !DILexicalBlock(scope: !1658, file: !86, line: 285, column: 24)
!1669 = !DILocation(line: 287, column: 73, scope: !1667)
!1670 = !DILocation(line: 288, column: 13, scope: !1667)
!1671 = !DILocation(line: 289, column: 73, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !86, line: 288, column: 41)
!1673 = distinct !DILexicalBlock(scope: !1668, file: !86, line: 288, column: 24)
!1674 = !DILocation(line: 290, column: 73, scope: !1672)
!1675 = !DILocation(line: 291, column: 13, scope: !1672)
!1676 = !DILocation(line: 292, column: 75, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !86, line: 291, column: 41)
!1678 = distinct !DILexicalBlock(scope: !1673, file: !86, line: 291, column: 24)
!1679 = !DILocation(line: 293, column: 75, scope: !1677)
!1680 = !DILocation(line: 294, column: 13, scope: !1677)
!1681 = !DILocation(line: 295, column: 75, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !86, line: 294, column: 41)
!1683 = distinct !DILexicalBlock(scope: !1678, file: !86, line: 294, column: 24)
!1684 = !DILocation(line: 296, column: 75, scope: !1682)
!1685 = !DILocation(line: 297, column: 13, scope: !1682)
!1686 = !DILocation(line: 298, column: 75, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !86, line: 297, column: 41)
!1688 = distinct !DILexicalBlock(scope: !1683, file: !86, line: 297, column: 24)
!1689 = !DILocation(line: 299, column: 75, scope: !1687)
!1690 = !DILocation(line: 300, column: 13, scope: !1687)
!1691 = !DILocation(line: 303, column: 18, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1659, file: !86, line: 303, column: 17)
!1693 = !DILocation(line: 303, column: 17, scope: !1659)
!1694 = !DILocation(line: 304, column: 75, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1692, file: !86, line: 303, column: 29)
!1696 = !DILocation(line: 305, column: 75, scope: !1695)
!1697 = !DILocation(line: 306, column: 13, scope: !1695)
!1698 = !DILocation(line: 307, column: 17, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1692, file: !86, line: 306, column: 20)
!1700 = !DILocation(line: 314, column: 1, scope: !1648)
!1701 = distinct !DISubprogram(name: "halGPIO_PullDown_SET", scope: !86, file: !86, line: 316, type: !1540, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1702)
!1702 = !{!1703, !1704, !1705}
!1703 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1701, file: !86, line: 316, type: !80)
!1704 = !DILocalVariable(name: "no", scope: !1701, file: !86, line: 318, type: !1358)
!1705 = !DILocalVariable(name: "remainder", scope: !1701, file: !86, line: 319, type: !1358)
!1706 = !DILocation(line: 0, scope: !1701)
!1707 = !DILocation(line: 320, column: 19, scope: !1701)
!1708 = !DILocation(line: 321, column: 17, scope: !1701)
!1709 = !DILocation(line: 322, column: 5, scope: !1701)
!1710 = !DILocation(line: 323, column: 5, scope: !1701)
!1711 = !DILocation(line: 325, column: 27, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !86, line: 325, column: 17)
!1713 = distinct !DILexicalBlock(scope: !1701, file: !86, line: 323, column: 17)
!1714 = !DILocation(line: 325, column: 17, scope: !1713)
!1715 = !DILocation(line: 325, column: 17, scope: !1712)
!1716 = !DILocation(line: 326, column: 17, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1712, file: !86, line: 325, column: 34)
!1718 = !DILocation(line: 327, column: 13, scope: !1717)
!1719 = !DILocation(line: 327, column: 24, scope: !1712)
!1720 = !DILocation(line: 328, column: 73, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !86, line: 327, column: 41)
!1722 = distinct !DILexicalBlock(scope: !1712, file: !86, line: 327, column: 24)
!1723 = !DILocation(line: 329, column: 73, scope: !1721)
!1724 = !DILocation(line: 330, column: 13, scope: !1721)
!1725 = !DILocation(line: 331, column: 73, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !86, line: 330, column: 41)
!1727 = distinct !DILexicalBlock(scope: !1722, file: !86, line: 330, column: 24)
!1728 = !DILocation(line: 332, column: 73, scope: !1726)
!1729 = !DILocation(line: 333, column: 13, scope: !1726)
!1730 = !DILocation(line: 334, column: 75, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !86, line: 333, column: 41)
!1732 = distinct !DILexicalBlock(scope: !1727, file: !86, line: 333, column: 24)
!1733 = !DILocation(line: 335, column: 75, scope: !1731)
!1734 = !DILocation(line: 336, column: 13, scope: !1731)
!1735 = !DILocation(line: 337, column: 75, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !86, line: 336, column: 41)
!1737 = distinct !DILexicalBlock(scope: !1732, file: !86, line: 336, column: 24)
!1738 = !DILocation(line: 338, column: 75, scope: !1736)
!1739 = !DILocation(line: 339, column: 13, scope: !1736)
!1740 = !DILocation(line: 340, column: 75, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !86, line: 339, column: 41)
!1742 = distinct !DILexicalBlock(scope: !1737, file: !86, line: 339, column: 24)
!1743 = !DILocation(line: 341, column: 75, scope: !1741)
!1744 = !DILocation(line: 342, column: 13, scope: !1741)
!1745 = !DILocation(line: 345, column: 18, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1713, file: !86, line: 345, column: 17)
!1747 = !DILocation(line: 345, column: 17, scope: !1713)
!1748 = !DILocation(line: 346, column: 75, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1746, file: !86, line: 345, column: 29)
!1750 = !DILocation(line: 347, column: 75, scope: !1749)
!1751 = !DILocation(line: 348, column: 13, scope: !1749)
!1752 = !DILocation(line: 349, column: 17, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1746, file: !86, line: 348, column: 20)
!1754 = !DILocation(line: 357, column: 1, scope: !1701)
!1755 = distinct !DISubprogram(name: "halGPIO_SetDriving", scope: !86, file: !86, line: 404, type: !1351, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1756)
!1756 = !{!1757, !1758, !1759, !1760}
!1757 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1755, file: !86, line: 404, type: !80)
!1758 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1755, file: !86, line: 404, type: !413)
!1759 = !DILocalVariable(name: "no", scope: !1755, file: !86, line: 406, type: !1358)
!1760 = !DILocalVariable(name: "remainder", scope: !1755, file: !86, line: 407, type: !1358)
!1761 = !DILocation(line: 0, scope: !1755)
!1762 = !DILocation(line: 408, column: 19, scope: !1755)
!1763 = !DILocation(line: 409, column: 17, scope: !1755)
!1764 = !DILocation(line: 411, column: 5, scope: !1755)
!1765 = !DILocation(line: 413, column: 84, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1755, file: !86, line: 411, column: 17)
!1767 = !DILocation(line: 413, column: 70, scope: !1766)
!1768 = !DILocation(line: 413, column: 64, scope: !1766)
!1769 = !DILocation(line: 413, column: 61, scope: !1766)
!1770 = !DILocation(line: 414, column: 79, scope: !1766)
!1771 = !DILocation(line: 414, column: 83, scope: !1766)
!1772 = !DILocation(line: 414, column: 88, scope: !1766)
!1773 = !DILocation(line: 414, column: 61, scope: !1766)
!1774 = !DILocation(line: 415, column: 13, scope: !1766)
!1775 = !DILocation(line: 417, column: 27, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1766, file: !86, line: 417, column: 17)
!1777 = !DILocation(line: 417, column: 17, scope: !1766)
!1778 = !DILocation(line: 418, column: 88, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1776, file: !86, line: 417, column: 33)
!1780 = !DILocation(line: 418, column: 74, scope: !1779)
!1781 = !DILocation(line: 418, column: 68, scope: !1779)
!1782 = !DILocation(line: 418, column: 65, scope: !1779)
!1783 = !DILocation(line: 419, column: 83, scope: !1779)
!1784 = !DILocation(line: 419, column: 87, scope: !1779)
!1785 = !DILocation(line: 419, column: 92, scope: !1779)
!1786 = !DILocation(line: 419, column: 65, scope: !1779)
!1787 = !DILocation(line: 420, column: 13, scope: !1779)
!1788 = !DILocation(line: 420, column: 24, scope: !1776)
!1789 = !DILocation(line: 421, column: 73, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !86, line: 420, column: 41)
!1791 = distinct !DILexicalBlock(scope: !1776, file: !86, line: 420, column: 24)
!1792 = !DILocation(line: 422, column: 91, scope: !1790)
!1793 = !DILocation(line: 422, column: 100, scope: !1790)
!1794 = !DILocation(line: 422, column: 73, scope: !1790)
!1795 = !DILocation(line: 423, column: 73, scope: !1790)
!1796 = !DILocation(line: 424, column: 13, scope: !1790)
!1797 = !DILocation(line: 425, column: 73, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !86, line: 424, column: 41)
!1799 = distinct !DILexicalBlock(scope: !1791, file: !86, line: 424, column: 24)
!1800 = !DILocation(line: 426, column: 91, scope: !1798)
!1801 = !DILocation(line: 426, column: 100, scope: !1798)
!1802 = !DILocation(line: 426, column: 73, scope: !1798)
!1803 = !DILocation(line: 427, column: 73, scope: !1798)
!1804 = !DILocation(line: 428, column: 13, scope: !1798)
!1805 = !DILocation(line: 429, column: 75, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !86, line: 428, column: 41)
!1807 = distinct !DILexicalBlock(scope: !1799, file: !86, line: 428, column: 24)
!1808 = !DILocation(line: 430, column: 93, scope: !1806)
!1809 = !DILocation(line: 430, column: 102, scope: !1806)
!1810 = !DILocation(line: 430, column: 75, scope: !1806)
!1811 = !DILocation(line: 431, column: 75, scope: !1806)
!1812 = !DILocation(line: 432, column: 13, scope: !1806)
!1813 = !DILocation(line: 433, column: 75, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !86, line: 432, column: 41)
!1815 = distinct !DILexicalBlock(scope: !1807, file: !86, line: 432, column: 24)
!1816 = !DILocation(line: 434, column: 93, scope: !1814)
!1817 = !DILocation(line: 434, column: 102, scope: !1814)
!1818 = !DILocation(line: 434, column: 75, scope: !1814)
!1819 = !DILocation(line: 435, column: 75, scope: !1814)
!1820 = !DILocation(line: 436, column: 13, scope: !1814)
!1821 = !DILocation(line: 437, column: 75, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !86, line: 436, column: 41)
!1823 = distinct !DILexicalBlock(scope: !1815, file: !86, line: 436, column: 24)
!1824 = !DILocation(line: 438, column: 93, scope: !1822)
!1825 = !DILocation(line: 438, column: 102, scope: !1822)
!1826 = !DILocation(line: 438, column: 75, scope: !1822)
!1827 = !DILocation(line: 439, column: 75, scope: !1822)
!1828 = !DILocation(line: 440, column: 13, scope: !1822)
!1829 = !DILocation(line: 443, column: 18, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1766, file: !86, line: 443, column: 17)
!1831 = !DILocation(line: 443, column: 17, scope: !1766)
!1832 = !DILocation(line: 444, column: 75, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1830, file: !86, line: 443, column: 29)
!1834 = !DILocation(line: 445, column: 93, scope: !1833)
!1835 = !DILocation(line: 445, column: 102, scope: !1833)
!1836 = !DILocation(line: 445, column: 75, scope: !1833)
!1837 = !DILocation(line: 446, column: 75, scope: !1833)
!1838 = !DILocation(line: 447, column: 13, scope: !1833)
!1839 = !DILocation(line: 448, column: 88, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1830, file: !86, line: 447, column: 20)
!1841 = !DILocation(line: 448, column: 74, scope: !1840)
!1842 = !DILocation(line: 448, column: 68, scope: !1840)
!1843 = !DILocation(line: 448, column: 65, scope: !1840)
!1844 = !DILocation(line: 449, column: 83, scope: !1840)
!1845 = !DILocation(line: 449, column: 87, scope: !1840)
!1846 = !DILocation(line: 449, column: 92, scope: !1840)
!1847 = !DILocation(line: 449, column: 65, scope: !1840)
!1848 = !DILocation(line: 453, column: 84, scope: !1766)
!1849 = !DILocation(line: 453, column: 70, scope: !1766)
!1850 = !DILocation(line: 453, column: 64, scope: !1766)
!1851 = !DILocation(line: 453, column: 61, scope: !1766)
!1852 = !DILocation(line: 454, column: 79, scope: !1766)
!1853 = !DILocation(line: 454, column: 83, scope: !1766)
!1854 = !DILocation(line: 454, column: 88, scope: !1766)
!1855 = !DILocation(line: 454, column: 61, scope: !1766)
!1856 = !DILocation(line: 455, column: 13, scope: !1766)
!1857 = !DILocation(line: 460, column: 1, scope: !1755)
!1858 = distinct !DISubprogram(name: "halGPIO_GetDriving", scope: !86, file: !86, line: 463, type: !1859, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1862)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!1353, !80, !1861}
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 32)
!1862 = !{!1863, !1864, !1865, !1866, !1867}
!1863 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1858, file: !86, line: 463, type: !80)
!1864 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1858, file: !86, line: 463, type: !1861)
!1865 = !DILocalVariable(name: "no", scope: !1858, file: !86, line: 465, type: !1358)
!1866 = !DILocalVariable(name: "remainder", scope: !1858, file: !86, line: 466, type: !1358)
!1867 = !DILocalVariable(name: "temp", scope: !1858, file: !86, line: 467, type: !80)
!1868 = !DILocation(line: 0, scope: !1858)
!1869 = !DILocation(line: 468, column: 19, scope: !1858)
!1870 = !DILocation(line: 469, column: 17, scope: !1858)
!1871 = !DILocation(line: 471, column: 5, scope: !1858)
!1872 = !DILocation(line: 473, column: 20, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1858, file: !86, line: 471, column: 17)
!1874 = !DILocation(line: 474, column: 40, scope: !1873)
!1875 = !DILocation(line: 474, column: 26, scope: !1873)
!1876 = !DILocation(line: 474, column: 18, scope: !1873)
!1877 = !DILocation(line: 475, column: 40, scope: !1873)
!1878 = !DILocation(line: 475, column: 29, scope: !1873)
!1879 = !DILocation(line: 476, column: 13, scope: !1873)
!1880 = !DILocation(line: 478, column: 27, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1873, file: !86, line: 478, column: 17)
!1882 = !DILocation(line: 478, column: 17, scope: !1873)
!1883 = !DILocation(line: 479, column: 24, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1881, file: !86, line: 478, column: 33)
!1885 = !DILocation(line: 480, column: 44, scope: !1884)
!1886 = !DILocation(line: 480, column: 30, scope: !1884)
!1887 = !DILocation(line: 480, column: 22, scope: !1884)
!1888 = !DILocation(line: 481, column: 44, scope: !1884)
!1889 = !DILocation(line: 481, column: 33, scope: !1884)
!1890 = !DILocation(line: 482, column: 13, scope: !1884)
!1891 = !DILocation(line: 482, column: 24, scope: !1881)
!1892 = !DILocation(line: 483, column: 24, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !86, line: 482, column: 41)
!1894 = distinct !DILexicalBlock(scope: !1881, file: !86, line: 482, column: 24)
!1895 = !DILocation(line: 485, column: 53, scope: !1893)
!1896 = !DILocation(line: 485, column: 33, scope: !1893)
!1897 = !DILocation(line: 486, column: 13, scope: !1893)
!1898 = !DILocation(line: 487, column: 24, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !86, line: 486, column: 41)
!1900 = distinct !DILexicalBlock(scope: !1894, file: !86, line: 486, column: 24)
!1901 = !DILocation(line: 489, column: 53, scope: !1899)
!1902 = !DILocation(line: 489, column: 33, scope: !1899)
!1903 = !DILocation(line: 490, column: 13, scope: !1899)
!1904 = !DILocation(line: 491, column: 24, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !86, line: 490, column: 41)
!1906 = distinct !DILexicalBlock(scope: !1900, file: !86, line: 490, column: 24)
!1907 = !DILocation(line: 493, column: 53, scope: !1905)
!1908 = !DILocation(line: 493, column: 33, scope: !1905)
!1909 = !DILocation(line: 494, column: 13, scope: !1905)
!1910 = !DILocation(line: 495, column: 24, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !86, line: 494, column: 41)
!1912 = distinct !DILexicalBlock(scope: !1906, file: !86, line: 494, column: 24)
!1913 = !DILocation(line: 497, column: 53, scope: !1911)
!1914 = !DILocation(line: 497, column: 33, scope: !1911)
!1915 = !DILocation(line: 498, column: 13, scope: !1911)
!1916 = !DILocation(line: 499, column: 24, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !86, line: 498, column: 41)
!1918 = distinct !DILexicalBlock(scope: !1912, file: !86, line: 498, column: 24)
!1919 = !DILocation(line: 501, column: 53, scope: !1917)
!1920 = !DILocation(line: 501, column: 33, scope: !1917)
!1921 = !DILocation(line: 502, column: 13, scope: !1917)
!1922 = !DILocation(line: 505, column: 18, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1873, file: !86, line: 505, column: 17)
!1924 = !DILocation(line: 505, column: 17, scope: !1873)
!1925 = !DILocation(line: 506, column: 24, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1923, file: !86, line: 505, column: 29)
!1927 = !DILocation(line: 508, column: 53, scope: !1926)
!1928 = !DILocation(line: 508, column: 33, scope: !1926)
!1929 = !DILocation(line: 509, column: 13, scope: !1926)
!1930 = !DILocation(line: 510, column: 24, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1923, file: !86, line: 509, column: 20)
!1932 = !DILocation(line: 511, column: 44, scope: !1931)
!1933 = !DILocation(line: 511, column: 30, scope: !1931)
!1934 = !DILocation(line: 511, column: 22, scope: !1931)
!1935 = !DILocation(line: 512, column: 44, scope: !1931)
!1936 = !DILocation(line: 512, column: 33, scope: !1931)
!1937 = !DILocation(line: 516, column: 20, scope: !1873)
!1938 = !DILocation(line: 517, column: 40, scope: !1873)
!1939 = !DILocation(line: 517, column: 26, scope: !1873)
!1940 = !DILocation(line: 517, column: 18, scope: !1873)
!1941 = !DILocation(line: 518, column: 40, scope: !1873)
!1942 = !DILocation(line: 518, column: 29, scope: !1873)
!1943 = !DILocation(line: 519, column: 13, scope: !1873)
!1944 = !DILocation(line: 0, scope: !1873)
!1945 = !DILocation(line: 524, column: 1, scope: !1858)
!1946 = distinct !DISubprogram(name: "topPAD_Control_GPIO", scope: !86, file: !86, line: 526, type: !1947, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1950)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{null, !80, !1949}
!1949 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_TOP_PAD_CONTROL_T", file: !89, line: 1212, baseType: !88)
!1950 = !{!1951, !1952, !1953, !1954}
!1951 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1946, file: !86, line: 526, type: !80)
!1952 = !DILocalVariable(name: "ePadControl", arg: 2, scope: !1946, file: !86, line: 526, type: !1949)
!1953 = !DILocalVariable(name: "no", scope: !1946, file: !86, line: 529, type: !1358)
!1954 = !DILocalVariable(name: "remainder", scope: !1946, file: !86, line: 530, type: !1358)
!1955 = !DILocation(line: 0, scope: !1946)
!1956 = !DILocation(line: 531, column: 19, scope: !1946)
!1957 = !DILocation(line: 532, column: 17, scope: !1946)
!1958 = !DILocation(line: 534, column: 9, scope: !1946)
!1959 = !DILocation(line: 536, column: 9, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !86, line: 534, column: 45)
!1961 = distinct !DILexicalBlock(scope: !1946, file: !86, line: 534, column: 9)
!1962 = !DILocation(line: 538, column: 56, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1960, file: !86, line: 536, column: 21)
!1964 = !DILocation(line: 538, column: 53, scope: !1963)
!1965 = !DILocation(line: 538, column: 47, scope: !1963)
!1966 = !DILocation(line: 539, column: 17, scope: !1963)
!1967 = !DILocation(line: 541, column: 56, scope: !1963)
!1968 = !DILocation(line: 541, column: 53, scope: !1963)
!1969 = !DILocation(line: 541, column: 47, scope: !1963)
!1970 = !DILocation(line: 542, column: 17, scope: !1963)
!1971 = !DILocation(line: 548, column: 9, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !86, line: 547, column: 51)
!1973 = distinct !DILexicalBlock(scope: !1961, file: !86, line: 547, column: 16)
!1974 = !DILocation(line: 550, column: 57, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1972, file: !86, line: 548, column: 21)
!1976 = !DILocation(line: 550, column: 54, scope: !1975)
!1977 = !DILocation(line: 550, column: 50, scope: !1975)
!1978 = !DILocation(line: 550, column: 47, scope: !1975)
!1979 = !DILocation(line: 551, column: 17, scope: !1975)
!1980 = !DILocation(line: 553, column: 57, scope: !1975)
!1981 = !DILocation(line: 553, column: 54, scope: !1975)
!1982 = !DILocation(line: 553, column: 50, scope: !1975)
!1983 = !DILocation(line: 553, column: 47, scope: !1975)
!1984 = !DILocation(line: 554, column: 17, scope: !1975)
!1985 = !DILocation(line: 560, column: 1, scope: !1946)
!1986 = distinct !DISubprogram(name: "drvGPIO_IDX_EINT_WIC_LISR", scope: !86, file: !86, line: 567, type: !565, scopeLine: 568, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1987)
!1987 = !{!1988, !1989, !1990}
!1988 = !DILocalVariable(name: "irq_number", arg: 1, scope: !1986, file: !86, line: 567, type: !515)
!1989 = !DILocalVariable(name: "i", scope: !1986, file: !86, line: 569, type: !204)
!1990 = !DILocalVariable(name: "pin_number", scope: !1986, file: !86, line: 570, type: !204)
!1991 = !DILocation(line: 0, scope: !1986)
!1992 = !DILocation(line: 572, column: 19, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !86, line: 572, column: 5)
!1994 = distinct !DILexicalBlock(scope: !1986, file: !86, line: 572, column: 5)
!1995 = !DILocation(line: 572, column: 5, scope: !1994)
!1996 = !DILocation(line: 573, column: 32, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !86, line: 573, column: 13)
!1998 = distinct !DILexicalBlock(scope: !1993, file: !86, line: 572, column: 46)
!1999 = !DILocation(line: 573, column: 43, scope: !1997)
!2000 = !DILocation(line: 573, column: 13, scope: !1998)
!2001 = !DILocation(line: 574, column: 45, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1997, file: !86, line: 573, column: 58)
!2003 = !DILocation(line: 575, column: 13, scope: !2002)
!2004 = !DILocation(line: 577, column: 38, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1998, file: !86, line: 577, column: 13)
!2006 = !DILocation(line: 577, column: 13, scope: !1998)
!2007 = !DILocation(line: 578, column: 13, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2005, file: !86, line: 577, column: 44)
!2009 = !DILocation(line: 579, column: 13, scope: !2008)
!2010 = !DILocation(line: 572, column: 42, scope: !1993)
!2011 = distinct !{!2011, !1995, !2012}
!2012 = !DILocation(line: 581, column: 5, scope: !1994)
!2013 = !DILocation(line: 583, column: 23, scope: !1986)
!2014 = !DILocation(line: 583, column: 5, scope: !1986)
!2015 = !DILocation(line: 584, column: 1, scope: !1986)
!2016 = distinct !DISubprogram(name: "halRegGPInterrupt", scope: !86, file: !86, line: 587, type: !2017, scopeLine: 595, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2019)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!1353, !80, !413, !413, !413, !413, !413, !413, !319}
!2019 = !{!2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035}
!2020 = !DILocalVariable(name: "pad_name", arg: 1, scope: !2016, file: !86, line: 587, type: !80)
!2021 = !DILocalVariable(name: "edgeLevelTrig", arg: 2, scope: !2016, file: !86, line: 588, type: !413)
!2022 = !DILocalVariable(name: "debounceEnable", arg: 3, scope: !2016, file: !86, line: 589, type: !413)
!2023 = !DILocalVariable(name: "polarity", arg: 4, scope: !2016, file: !86, line: 590, type: !413)
!2024 = !DILocalVariable(name: "dual", arg: 5, scope: !2016, file: !86, line: 591, type: !413)
!2025 = !DILocalVariable(name: "prescaler", arg: 6, scope: !2016, file: !86, line: 592, type: !413)
!2026 = !DILocalVariable(name: "u1PrescalerCount", arg: 7, scope: !2016, file: !86, line: 593, type: !413)
!2027 = !DILocalVariable(name: "USER_GPI_Handler", arg: 8, scope: !2016, file: !86, line: 594, type: !319)
!2028 = !DILocalVariable(name: "i", scope: !2016, file: !86, line: 596, type: !204)
!2029 = !DILocalVariable(name: "irq_number", scope: !2016, file: !86, line: 597, type: !204)
!2030 = !DILocalVariable(name: "priority_number", scope: !2016, file: !86, line: 598, type: !204)
!2031 = !DILocalVariable(name: "int_index", scope: !2016, file: !86, line: 599, type: !204)
!2032 = !DILocalVariable(name: "wdata", scope: !2016, file: !86, line: 600, type: !204)
!2033 = !DILocalVariable(name: "rdata", scope: !2016, file: !86, line: 601, type: !204)
!2034 = !DILocalVariable(name: "reg_index", scope: !2016, file: !86, line: 602, type: !204)
!2035 = !DILocalVariable(name: "reg_shift", scope: !2016, file: !86, line: 603, type: !204)
!2036 = !DILocation(line: 0, scope: !2016)
!2037 = !DILocation(line: 605, column: 19, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !86, line: 605, column: 5)
!2039 = distinct !DILexicalBlock(scope: !2016, file: !86, line: 605, column: 5)
!2040 = !DILocation(line: 605, column: 5, scope: !2039)
!2041 = !DILocation(line: 606, column: 32, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !86, line: 606, column: 13)
!2043 = distinct !DILexicalBlock(scope: !2038, file: !86, line: 605, column: 46)
!2044 = !DILocation(line: 606, column: 41, scope: !2042)
!2045 = !DILocation(line: 606, column: 13, scope: !2043)
!2046 = !DILocation(line: 607, column: 50, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2042, file: !86, line: 606, column: 54)
!2048 = !DILocation(line: 608, column: 50, scope: !2047)
!2049 = !DILocation(line: 609, column: 13, scope: !2047)
!2050 = !DILocation(line: 611, column: 38, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2043, file: !86, line: 611, column: 13)
!2052 = !DILocation(line: 611, column: 13, scope: !2043)
!2053 = !DILocation(line: 612, column: 13, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2051, file: !86, line: 611, column: 44)
!2055 = !DILocation(line: 613, column: 13, scope: !2054)
!2056 = !DILocation(line: 605, column: 42, scope: !2038)
!2057 = distinct !{!2057, !2040, !2058}
!2058 = !DILocation(line: 615, column: 5, scope: !2039)
!2059 = !DILocation(line: 617, column: 5, scope: !2016)
!2060 = !DILocation(line: 618, column: 5, scope: !2016)
!2061 = !DILocation(line: 621, column: 27, scope: !2016)
!2062 = !DILocation(line: 622, column: 27, scope: !2016)
!2063 = !DILocation(line: 623, column: 13, scope: !2016)
!2064 = !DILocation(line: 624, column: 17, scope: !2016)
!2065 = !DILocation(line: 624, column: 14, scope: !2016)
!2066 = !DILocation(line: 624, column: 11, scope: !2016)
!2067 = !DILocation(line: 625, column: 15, scope: !2016)
!2068 = !DILocation(line: 625, column: 28, scope: !2016)
!2069 = !DILocation(line: 625, column: 11, scope: !2016)
!2070 = !DILocation(line: 626, column: 48, scope: !2016)
!2071 = !DILocation(line: 628, column: 28, scope: !2016)
!2072 = !DILocation(line: 630, column: 13, scope: !2016)
!2073 = !DILocation(line: 630, column: 33, scope: !2016)
!2074 = !DILocation(line: 630, column: 42, scope: !2016)
!2075 = !DILocation(line: 630, column: 50, scope: !2016)
!2076 = !DILocation(line: 630, column: 54, scope: !2016)
!2077 = !DILocation(line: 630, column: 62, scope: !2016)
!2078 = !DILocation(line: 630, column: 70, scope: !2016)
!2079 = !DILocation(line: 630, column: 78, scope: !2016)
!2080 = !DILocation(line: 630, column: 92, scope: !2016)
!2081 = !DILocation(line: 630, column: 30, scope: !2016)
!2082 = !DILocation(line: 630, column: 47, scope: !2016)
!2083 = !DILocation(line: 630, column: 59, scope: !2016)
!2084 = !DILocation(line: 630, column: 75, scope: !2016)
!2085 = !DILocation(line: 631, column: 5, scope: !2016)
!2086 = !DILocation(line: 631, column: 48, scope: !2016)
!2087 = !DILocation(line: 632, column: 5, scope: !2016)
!2088 = !DILocation(line: 641, column: 5, scope: !2016)
!2089 = !DILocation(line: 643, column: 46, scope: !2016)
!2090 = !DILocation(line: 644, column: 5, scope: !2016)
!2091 = !DILocation(line: 645, column: 5, scope: !2016)
!2092 = !DILocation(line: 647, column: 5, scope: !2016)
!2093 = !DILocation(line: 648, column: 1, scope: !2016)
!2094 = distinct !DISubprogram(name: "NVIC_DisableIRQ", scope: !210, file: !210, line: 1507, type: !2095, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2097)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{null, !61}
!2097 = !{!2098}
!2098 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2094, file: !210, line: 1507, type: !61)
!2099 = !DILocation(line: 0, scope: !2094)
!2100 = !DILocation(line: 1509, column: 65, scope: !2094)
!2101 = !DILocation(line: 1509, column: 44, scope: !2094)
!2102 = !DILocation(line: 1509, column: 32, scope: !2094)
!2103 = !DILocation(line: 1509, column: 3, scope: !2094)
!2104 = !DILocation(line: 1509, column: 39, scope: !2094)
!2105 = !DILocation(line: 1510, column: 1, scope: !2094)
!2106 = distinct !DISubprogram(name: "NVIC_ClearPendingIRQ", scope: !210, file: !210, line: 1547, type: !2095, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2107)
!2107 = !{!2108}
!2108 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2106, file: !210, line: 1547, type: !61)
!2109 = !DILocation(line: 0, scope: !2106)
!2110 = !DILocation(line: 1549, column: 65, scope: !2106)
!2111 = !DILocation(line: 1549, column: 44, scope: !2106)
!2112 = !DILocation(line: 1549, column: 32, scope: !2106)
!2113 = !DILocation(line: 1549, column: 3, scope: !2106)
!2114 = !DILocation(line: 1549, column: 39, scope: !2106)
!2115 = !DILocation(line: 1550, column: 1, scope: !2106)
!2116 = distinct !DISubprogram(name: "NVIC_SetPriority", scope: !210, file: !210, line: 1577, type: !2117, scopeLine: 1578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2119)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{null, !61, !204}
!2119 = !{!2120, !2121}
!2120 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2116, file: !210, line: 1577, type: !61)
!2121 = !DILocalVariable(name: "priority", arg: 2, scope: !2116, file: !210, line: 1577, type: !204)
!2122 = !DILocation(line: 0, scope: !2116)
!2123 = !DILocation(line: 1579, column: 11, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2116, file: !210, line: 1579, column: 6)
!2125 = !DILocation(line: 0, scope: !2124)
!2126 = !DILocation(line: 1579, column: 6, scope: !2116)
!2127 = !DILocation(line: 1583, column: 1, scope: !2116)
!2128 = distinct !DISubprogram(name: "halRegGPInterrupt_set_triggermode", scope: !86, file: !86, line: 651, type: !2129, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2131)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!1353, !80, !413, !413, !413}
!2131 = !{!2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142}
!2132 = !DILocalVariable(name: "pad_name", arg: 1, scope: !2128, file: !86, line: 651, type: !80)
!2133 = !DILocalVariable(name: "edgeLevelTrig", arg: 2, scope: !2128, file: !86, line: 651, type: !413)
!2134 = !DILocalVariable(name: "polarity", arg: 3, scope: !2128, file: !86, line: 651, type: !413)
!2135 = !DILocalVariable(name: "dual", arg: 4, scope: !2128, file: !86, line: 651, type: !413)
!2136 = !DILocalVariable(name: "i", scope: !2128, file: !86, line: 654, type: !204)
!2137 = !DILocalVariable(name: "irq_number", scope: !2128, file: !86, line: 655, type: !204)
!2138 = !DILocalVariable(name: "int_index", scope: !2128, file: !86, line: 656, type: !204)
!2139 = !DILocalVariable(name: "wdata", scope: !2128, file: !86, line: 657, type: !204)
!2140 = !DILocalVariable(name: "rdata", scope: !2128, file: !86, line: 658, type: !204)
!2141 = !DILocalVariable(name: "reg_index", scope: !2128, file: !86, line: 659, type: !204)
!2142 = !DILocalVariable(name: "reg_shift", scope: !2128, file: !86, line: 660, type: !204)
!2143 = !DILocation(line: 0, scope: !2128)
!2144 = !DILocation(line: 662, column: 19, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !86, line: 662, column: 5)
!2146 = distinct !DILexicalBlock(scope: !2128, file: !86, line: 662, column: 5)
!2147 = !DILocation(line: 662, column: 5, scope: !2146)
!2148 = !DILocation(line: 663, column: 32, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !86, line: 663, column: 13)
!2150 = distinct !DILexicalBlock(scope: !2145, file: !86, line: 662, column: 46)
!2151 = !DILocation(line: 663, column: 41, scope: !2149)
!2152 = !DILocation(line: 663, column: 13, scope: !2150)
!2153 = !DILocation(line: 664, column: 50, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2149, file: !86, line: 663, column: 54)
!2155 = !DILocation(line: 665, column: 13, scope: !2154)
!2156 = !DILocation(line: 667, column: 38, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2150, file: !86, line: 667, column: 13)
!2158 = !DILocation(line: 667, column: 13, scope: !2150)
!2159 = !DILocation(line: 668, column: 13, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2157, file: !86, line: 667, column: 44)
!2161 = !DILocation(line: 669, column: 13, scope: !2160)
!2162 = !DILocation(line: 662, column: 42, scope: !2145)
!2163 = distinct !{!2163, !2147, !2164}
!2164 = !DILocation(line: 671, column: 5, scope: !2146)
!2165 = !DILocation(line: 673, column: 5, scope: !2128)
!2166 = !DILocation(line: 676, column: 27, scope: !2128)
!2167 = !DILocation(line: 677, column: 27, scope: !2128)
!2168 = !DILocation(line: 678, column: 13, scope: !2128)
!2169 = !DILocation(line: 679, column: 17, scope: !2128)
!2170 = !DILocation(line: 679, column: 14, scope: !2128)
!2171 = !DILocation(line: 679, column: 11, scope: !2128)
!2172 = !DILocation(line: 680, column: 14, scope: !2128)
!2173 = !DILocation(line: 680, column: 27, scope: !2128)
!2174 = !DILocation(line: 680, column: 11, scope: !2128)
!2175 = !DILocation(line: 681, column: 48, scope: !2128)
!2176 = !DILocation(line: 683, column: 14, scope: !2128)
!2177 = !DILocation(line: 683, column: 18, scope: !2128)
!2178 = !DILocation(line: 683, column: 26, scope: !2128)
!2179 = !DILocation(line: 683, column: 34, scope: !2128)
!2180 = !DILocation(line: 683, column: 23, scope: !2128)
!2181 = !DILocation(line: 684, column: 28, scope: !2128)
!2182 = !DILocation(line: 685, column: 5, scope: !2128)
!2183 = !DILocation(line: 685, column: 48, scope: !2128)
!2184 = !DILocation(line: 686, column: 5, scope: !2128)
!2185 = !DILocation(line: 688, column: 5, scope: !2128)
!2186 = !DILocation(line: 690, column: 5, scope: !2128)
!2187 = !DILocation(line: 691, column: 1, scope: !2128)
!2188 = distinct !DISubprogram(name: "NVIC_EnableIRQ", scope: !210, file: !210, line: 1494, type: !2095, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2189)
!2189 = !{!2190}
!2190 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2188, file: !210, line: 1494, type: !61)
!2191 = !DILocation(line: 0, scope: !2188)
!2192 = !DILocation(line: 1497, column: 91, scope: !2188)
!2193 = !DILocation(line: 1497, column: 61, scope: !2188)
!2194 = !DILocation(line: 1497, column: 40, scope: !2188)
!2195 = !DILocation(line: 1497, column: 3, scope: !2188)
!2196 = !DILocation(line: 1497, column: 46, scope: !2188)
!2197 = !DILocation(line: 1498, column: 1, scope: !2188)
!2198 = distinct !DISubprogram(name: "halRegGPInterrupt_set_debounce", scope: !86, file: !86, line: 694, type: !2199, scopeLine: 695, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2201)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!1353, !80, !413, !413, !236}
!2201 = !{!2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209}
!2202 = !DILocalVariable(name: "pad_name", arg: 1, scope: !2198, file: !86, line: 694, type: !80)
!2203 = !DILocalVariable(name: "debounceEnable", arg: 2, scope: !2198, file: !86, line: 694, type: !413)
!2204 = !DILocalVariable(name: "prescaler", arg: 3, scope: !2198, file: !86, line: 694, type: !413)
!2205 = !DILocalVariable(name: "u1PrescalerCount", arg: 4, scope: !2198, file: !86, line: 694, type: !236)
!2206 = !DILocalVariable(name: "i", scope: !2198, file: !86, line: 697, type: !204)
!2207 = !DILocalVariable(name: "irq_number", scope: !2198, file: !86, line: 698, type: !204)
!2208 = !DILocalVariable(name: "int_index", scope: !2198, file: !86, line: 699, type: !204)
!2209 = !DILocalVariable(name: "wdata", scope: !2198, file: !86, line: 700, type: !204)
!2210 = !DILocation(line: 0, scope: !2198)
!2211 = !DILocation(line: 702, column: 19, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !86, line: 702, column: 5)
!2213 = distinct !DILexicalBlock(scope: !2198, file: !86, line: 702, column: 5)
!2214 = !DILocation(line: 702, column: 5, scope: !2213)
!2215 = !DILocation(line: 703, column: 32, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !86, line: 703, column: 13)
!2217 = distinct !DILexicalBlock(scope: !2212, file: !86, line: 702, column: 46)
!2218 = !DILocation(line: 703, column: 41, scope: !2216)
!2219 = !DILocation(line: 703, column: 13, scope: !2217)
!2220 = !DILocation(line: 704, column: 50, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2216, file: !86, line: 703, column: 54)
!2222 = !DILocation(line: 705, column: 13, scope: !2221)
!2223 = !DILocation(line: 707, column: 38, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2217, file: !86, line: 707, column: 13)
!2225 = !DILocation(line: 707, column: 13, scope: !2217)
!2226 = !DILocation(line: 708, column: 13, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2224, file: !86, line: 707, column: 44)
!2228 = !DILocation(line: 709, column: 13, scope: !2227)
!2229 = !DILocation(line: 702, column: 42, scope: !2212)
!2230 = distinct !{!2230, !2214, !2231}
!2231 = !DILocation(line: 711, column: 5, scope: !2213)
!2232 = !DILocation(line: 713, column: 5, scope: !2198)
!2233 = !DILocation(line: 715, column: 13, scope: !2198)
!2234 = !DILocation(line: 715, column: 33, scope: !2198)
!2235 = !DILocation(line: 715, column: 42, scope: !2198)
!2236 = !DILocation(line: 715, column: 53, scope: !2198)
!2237 = !DILocation(line: 715, column: 67, scope: !2198)
!2238 = !DILocation(line: 715, column: 30, scope: !2198)
!2239 = !DILocation(line: 715, column: 47, scope: !2198)
!2240 = !DILocation(line: 716, column: 28, scope: !2198)
!2241 = !DILocation(line: 717, column: 5, scope: !2198)
!2242 = !DILocation(line: 717, column: 48, scope: !2198)
!2243 = !DILocation(line: 718, column: 5, scope: !2198)
!2244 = !DILocation(line: 719, column: 5, scope: !2198)
!2245 = !DILocation(line: 722, column: 5, scope: !2198)
!2246 = !DILocation(line: 723, column: 1, scope: !2198)
!2247 = distinct !DISubprogram(name: "halRegGPInterrupt_mask", scope: !86, file: !86, line: 726, type: !1540, scopeLine: 727, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2248)
!2248 = !{!2249, !2250, !2251}
!2249 = !DILocalVariable(name: "pad_name", arg: 1, scope: !2247, file: !86, line: 726, type: !80)
!2250 = !DILocalVariable(name: "i", scope: !2247, file: !86, line: 728, type: !204)
!2251 = !DILocalVariable(name: "irq_number", scope: !2247, file: !86, line: 729, type: !204)
!2252 = !DILocation(line: 0, scope: !2247)
!2253 = !DILocation(line: 731, column: 19, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2255, file: !86, line: 731, column: 5)
!2255 = distinct !DILexicalBlock(scope: !2247, file: !86, line: 731, column: 5)
!2256 = !DILocation(line: 731, column: 5, scope: !2255)
!2257 = !DILocation(line: 732, column: 32, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !86, line: 732, column: 13)
!2259 = distinct !DILexicalBlock(scope: !2254, file: !86, line: 731, column: 46)
!2260 = !DILocation(line: 732, column: 41, scope: !2258)
!2261 = !DILocation(line: 732, column: 13, scope: !2259)
!2262 = !DILocation(line: 733, column: 45, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2258, file: !86, line: 732, column: 54)
!2264 = !DILocation(line: 734, column: 13, scope: !2263)
!2265 = !DILocation(line: 736, column: 38, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2259, file: !86, line: 736, column: 13)
!2267 = !DILocation(line: 736, column: 13, scope: !2259)
!2268 = !DILocation(line: 737, column: 13, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2266, file: !86, line: 736, column: 44)
!2270 = !DILocation(line: 738, column: 13, scope: !2269)
!2271 = !DILocation(line: 731, column: 42, scope: !2254)
!2272 = distinct !{!2272, !2256, !2273}
!2273 = !DILocation(line: 740, column: 5, scope: !2255)
!2274 = !DILocation(line: 742, column: 5, scope: !2247)
!2275 = !DILocation(line: 744, column: 5, scope: !2247)
!2276 = !DILocation(line: 745, column: 1, scope: !2247)
!2277 = distinct !DISubprogram(name: "halRegGPInterrupt_unmask", scope: !86, file: !86, line: 747, type: !1540, scopeLine: 748, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2278)
!2278 = !{!2279, !2280, !2281}
!2279 = !DILocalVariable(name: "pad_name", arg: 1, scope: !2277, file: !86, line: 747, type: !80)
!2280 = !DILocalVariable(name: "i", scope: !2277, file: !86, line: 749, type: !204)
!2281 = !DILocalVariable(name: "irq_number", scope: !2277, file: !86, line: 750, type: !204)
!2282 = !DILocation(line: 0, scope: !2277)
!2283 = !DILocation(line: 752, column: 19, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !86, line: 752, column: 5)
!2285 = distinct !DILexicalBlock(scope: !2277, file: !86, line: 752, column: 5)
!2286 = !DILocation(line: 752, column: 5, scope: !2285)
!2287 = !DILocation(line: 753, column: 32, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !86, line: 753, column: 13)
!2289 = distinct !DILexicalBlock(scope: !2284, file: !86, line: 752, column: 46)
!2290 = !DILocation(line: 753, column: 41, scope: !2288)
!2291 = !DILocation(line: 753, column: 13, scope: !2289)
!2292 = !DILocation(line: 754, column: 45, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2288, file: !86, line: 753, column: 54)
!2294 = !DILocation(line: 755, column: 13, scope: !2293)
!2295 = !DILocation(line: 757, column: 38, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2289, file: !86, line: 757, column: 13)
!2297 = !DILocation(line: 757, column: 13, scope: !2289)
!2298 = !DILocation(line: 758, column: 13, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2296, file: !86, line: 757, column: 44)
!2300 = !DILocation(line: 759, column: 13, scope: !2299)
!2301 = !DILocation(line: 752, column: 42, scope: !2284)
!2302 = distinct !{!2302, !2286, !2303}
!2303 = !DILocation(line: 761, column: 5, scope: !2285)
!2304 = !DILocation(line: 763, column: 5, scope: !2277)
!2305 = !DILocation(line: 765, column: 5, scope: !2277)
!2306 = !DILocation(line: 766, column: 1, scope: !2277)
!2307 = distinct !DISubprogram(name: "halRegGP_set_software_trigger", scope: !86, file: !86, line: 773, type: !1540, scopeLine: 774, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2308)
!2308 = !{!2309, !2310, !2311}
!2309 = !DILocalVariable(name: "pad_name", arg: 1, scope: !2307, file: !86, line: 773, type: !80)
!2310 = !DILocalVariable(name: "i", scope: !2307, file: !86, line: 776, type: !204)
!2311 = !DILocalVariable(name: "irq_number", scope: !2307, file: !86, line: 777, type: !204)
!2312 = !DILocation(line: 0, scope: !2307)
!2313 = !DILocation(line: 779, column: 19, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !86, line: 779, column: 5)
!2315 = distinct !DILexicalBlock(scope: !2307, file: !86, line: 779, column: 5)
!2316 = !DILocation(line: 779, column: 5, scope: !2315)
!2317 = !DILocation(line: 780, column: 32, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !86, line: 780, column: 13)
!2319 = distinct !DILexicalBlock(scope: !2314, file: !86, line: 779, column: 46)
!2320 = !DILocation(line: 780, column: 41, scope: !2318)
!2321 = !DILocation(line: 780, column: 13, scope: !2319)
!2322 = !DILocation(line: 781, column: 45, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2318, file: !86, line: 780, column: 54)
!2324 = !DILocation(line: 782, column: 13, scope: !2323)
!2325 = !DILocation(line: 784, column: 38, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2319, file: !86, line: 784, column: 13)
!2327 = !DILocation(line: 784, column: 13, scope: !2319)
!2328 = !DILocation(line: 785, column: 13, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2326, file: !86, line: 784, column: 44)
!2330 = !DILocation(line: 786, column: 13, scope: !2329)
!2331 = !DILocation(line: 779, column: 42, scope: !2314)
!2332 = distinct !{!2332, !2316, !2333}
!2333 = !DILocation(line: 788, column: 5, scope: !2315)
!2334 = !DILocation(line: 791, column: 5, scope: !2307)
!2335 = !DILocation(line: 793, column: 5, scope: !2307)
!2336 = !DILocation(line: 795, column: 1, scope: !2307)
!2337 = distinct !DISubprogram(name: "software_trigger_irq", scope: !86, file: !86, line: 768, type: !2338, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2340)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{null, !80}
!2340 = !{!2341}
!2341 = !DILocalVariable(name: "irq_number", arg: 1, scope: !2337, file: !86, line: 768, type: !80)
!2342 = !DILocation(line: 0, scope: !2337)
!2343 = !DILocation(line: 770, column: 54, scope: !2337)
!2344 = !DILocation(line: 770, column: 16, scope: !2337)
!2345 = !DILocation(line: 771, column: 1, scope: !2337)
!2346 = distinct !DISubprogram(name: "halRegGP_clear_software_trigger", scope: !86, file: !86, line: 797, type: !1540, scopeLine: 798, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2347)
!2347 = !{!2348, !2349, !2350}
!2348 = !DILocalVariable(name: "pad_name", arg: 1, scope: !2346, file: !86, line: 797, type: !80)
!2349 = !DILocalVariable(name: "i", scope: !2346, file: !86, line: 799, type: !204)
!2350 = !DILocalVariable(name: "irq_number", scope: !2346, file: !86, line: 800, type: !204)
!2351 = !DILocation(line: 0, scope: !2346)
!2352 = !DILocation(line: 802, column: 19, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !86, line: 802, column: 5)
!2354 = distinct !DILexicalBlock(scope: !2346, file: !86, line: 802, column: 5)
!2355 = !DILocation(line: 802, column: 5, scope: !2354)
!2356 = !DILocation(line: 803, column: 32, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !86, line: 803, column: 13)
!2358 = distinct !DILexicalBlock(scope: !2353, file: !86, line: 802, column: 46)
!2359 = !DILocation(line: 803, column: 41, scope: !2357)
!2360 = !DILocation(line: 803, column: 13, scope: !2358)
!2361 = !DILocation(line: 804, column: 45, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2357, file: !86, line: 803, column: 54)
!2363 = !DILocation(line: 805, column: 13, scope: !2362)
!2364 = !DILocation(line: 807, column: 38, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2358, file: !86, line: 807, column: 13)
!2366 = !DILocation(line: 807, column: 13, scope: !2358)
!2367 = !DILocation(line: 808, column: 13, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2365, file: !86, line: 807, column: 44)
!2369 = !DILocation(line: 809, column: 13, scope: !2368)
!2370 = !DILocation(line: 802, column: 42, scope: !2353)
!2371 = distinct !{!2371, !2355, !2372}
!2372 = !DILocation(line: 811, column: 5, scope: !2354)
!2373 = !DILocation(line: 813, column: 5, scope: !2346)
!2374 = !DILocation(line: 815, column: 5, scope: !2346)
!2375 = !DILocation(line: 816, column: 1, scope: !2346)
!2376 = distinct !DISubprogram(name: "halPinmuxTopOnPadFunc", scope: !1025, file: !1025, line: 85, type: !2377, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !2380)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!2379, !203, !413}
!2379 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID", file: !6, line: 79, baseType: null)
!2380 = !{!2381, !2382, !2383}
!2381 = !DILocalVariable(name: "ePadIndex", arg: 1, scope: !2376, file: !1025, line: 85, type: !203)
!2382 = !DILocalVariable(name: "ucFunc", arg: 2, scope: !2376, file: !1025, line: 85, type: !413)
!2383 = !DILocalVariable(name: "temp", scope: !2376, file: !1025, line: 87, type: !204)
!2384 = !DILocation(line: 0, scope: !2376)
!2385 = !DILocation(line: 88, column: 5, scope: !2376)
!2386 = !DILocation(line: 91, column: 20, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2376, file: !1025, line: 88, column: 24)
!2388 = !DILocation(line: 92, column: 18, scope: !2387)
!2389 = !DILocation(line: 93, column: 66, scope: !2387)
!2390 = !DILocation(line: 93, column: 63, scope: !2387)
!2391 = !DILocation(line: 93, column: 56, scope: !2387)
!2392 = !DILocation(line: 94, column: 13, scope: !2387)
!2393 = !DILocation(line: 97, column: 20, scope: !2387)
!2394 = !DILocation(line: 98, column: 18, scope: !2387)
!2395 = !DILocation(line: 99, column: 67, scope: !2387)
!2396 = !DILocation(line: 99, column: 74, scope: !2387)
!2397 = !DILocation(line: 99, column: 64, scope: !2387)
!2398 = !DILocation(line: 99, column: 56, scope: !2387)
!2399 = !DILocation(line: 100, column: 13, scope: !2387)
!2400 = !DILocation(line: 103, column: 20, scope: !2387)
!2401 = !DILocation(line: 104, column: 18, scope: !2387)
!2402 = !DILocation(line: 105, column: 67, scope: !2387)
!2403 = !DILocation(line: 105, column: 74, scope: !2387)
!2404 = !DILocation(line: 105, column: 64, scope: !2387)
!2405 = !DILocation(line: 105, column: 56, scope: !2387)
!2406 = !DILocation(line: 106, column: 13, scope: !2387)
!2407 = !DILocation(line: 109, column: 20, scope: !2387)
!2408 = !DILocation(line: 110, column: 18, scope: !2387)
!2409 = !DILocation(line: 111, column: 67, scope: !2387)
!2410 = !DILocation(line: 111, column: 74, scope: !2387)
!2411 = !DILocation(line: 111, column: 64, scope: !2387)
!2412 = !DILocation(line: 111, column: 56, scope: !2387)
!2413 = !DILocation(line: 112, column: 13, scope: !2387)
!2414 = !DILocation(line: 115, column: 20, scope: !2387)
!2415 = !DILocation(line: 116, column: 18, scope: !2387)
!2416 = !DILocation(line: 117, column: 67, scope: !2387)
!2417 = !DILocation(line: 117, column: 74, scope: !2387)
!2418 = !DILocation(line: 117, column: 64, scope: !2387)
!2419 = !DILocation(line: 117, column: 56, scope: !2387)
!2420 = !DILocation(line: 118, column: 13, scope: !2387)
!2421 = !DILocation(line: 121, column: 20, scope: !2387)
!2422 = !DILocation(line: 122, column: 18, scope: !2387)
!2423 = !DILocation(line: 123, column: 67, scope: !2387)
!2424 = !DILocation(line: 123, column: 74, scope: !2387)
!2425 = !DILocation(line: 123, column: 64, scope: !2387)
!2426 = !DILocation(line: 123, column: 56, scope: !2387)
!2427 = !DILocation(line: 124, column: 13, scope: !2387)
!2428 = !DILocation(line: 127, column: 20, scope: !2387)
!2429 = !DILocation(line: 128, column: 18, scope: !2387)
!2430 = !DILocation(line: 129, column: 67, scope: !2387)
!2431 = !DILocation(line: 129, column: 74, scope: !2387)
!2432 = !DILocation(line: 129, column: 64, scope: !2387)
!2433 = !DILocation(line: 129, column: 56, scope: !2387)
!2434 = !DILocation(line: 130, column: 13, scope: !2387)
!2435 = !DILocation(line: 133, column: 20, scope: !2387)
!2436 = !DILocation(line: 134, column: 18, scope: !2387)
!2437 = !DILocation(line: 135, column: 67, scope: !2387)
!2438 = !DILocation(line: 135, column: 74, scope: !2387)
!2439 = !DILocation(line: 135, column: 64, scope: !2387)
!2440 = !DILocation(line: 135, column: 56, scope: !2387)
!2441 = !DILocation(line: 136, column: 13, scope: !2387)
!2442 = !DILocation(line: 139, column: 20, scope: !2387)
!2443 = !DILocation(line: 140, column: 18, scope: !2387)
!2444 = !DILocation(line: 141, column: 67, scope: !2387)
!2445 = !DILocation(line: 141, column: 64, scope: !2387)
!2446 = !DILocation(line: 141, column: 56, scope: !2387)
!2447 = !DILocation(line: 142, column: 13, scope: !2387)
!2448 = !DILocation(line: 145, column: 20, scope: !2387)
!2449 = !DILocation(line: 146, column: 18, scope: !2387)
!2450 = !DILocation(line: 147, column: 67, scope: !2387)
!2451 = !DILocation(line: 147, column: 74, scope: !2387)
!2452 = !DILocation(line: 147, column: 64, scope: !2387)
!2453 = !DILocation(line: 147, column: 56, scope: !2387)
!2454 = !DILocation(line: 148, column: 13, scope: !2387)
!2455 = !DILocation(line: 151, column: 20, scope: !2387)
!2456 = !DILocation(line: 152, column: 18, scope: !2387)
!2457 = !DILocation(line: 153, column: 67, scope: !2387)
!2458 = !DILocation(line: 153, column: 74, scope: !2387)
!2459 = !DILocation(line: 153, column: 64, scope: !2387)
!2460 = !DILocation(line: 153, column: 56, scope: !2387)
!2461 = !DILocation(line: 154, column: 13, scope: !2387)
!2462 = !DILocation(line: 157, column: 20, scope: !2387)
!2463 = !DILocation(line: 158, column: 18, scope: !2387)
!2464 = !DILocation(line: 159, column: 67, scope: !2387)
!2465 = !DILocation(line: 159, column: 74, scope: !2387)
!2466 = !DILocation(line: 159, column: 64, scope: !2387)
!2467 = !DILocation(line: 159, column: 56, scope: !2387)
!2468 = !DILocation(line: 160, column: 29, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2387, file: !1025, line: 160, column: 17)
!2470 = !DILocation(line: 161, column: 17, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2469, file: !1025, line: 160, column: 60)
!2472 = !DILocation(line: 162, column: 13, scope: !2471)
!2473 = !DILocation(line: 166, column: 20, scope: !2387)
!2474 = !DILocation(line: 167, column: 18, scope: !2387)
!2475 = !DILocation(line: 168, column: 67, scope: !2387)
!2476 = !DILocation(line: 168, column: 74, scope: !2387)
!2477 = !DILocation(line: 168, column: 64, scope: !2387)
!2478 = !DILocation(line: 168, column: 56, scope: !2387)
!2479 = !DILocation(line: 169, column: 29, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2387, file: !1025, line: 169, column: 17)
!2481 = !DILocation(line: 170, column: 17, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2480, file: !1025, line: 169, column: 45)
!2483 = !DILocation(line: 171, column: 13, scope: !2482)
!2484 = !DILocation(line: 175, column: 20, scope: !2387)
!2485 = !DILocation(line: 176, column: 18, scope: !2387)
!2486 = !DILocation(line: 177, column: 67, scope: !2387)
!2487 = !DILocation(line: 177, column: 74, scope: !2387)
!2488 = !DILocation(line: 177, column: 64, scope: !2387)
!2489 = !DILocation(line: 177, column: 56, scope: !2387)
!2490 = !DILocation(line: 178, column: 19, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2387, file: !1025, line: 178, column: 17)
!2492 = !DILocation(line: 178, column: 17, scope: !2387)
!2493 = !DILocation(line: 179, column: 17, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2491, file: !1025, line: 178, column: 30)
!2495 = !DILocation(line: 180, column: 13, scope: !2494)
!2496 = !DILocation(line: 184, column: 20, scope: !2387)
!2497 = !DILocation(line: 185, column: 18, scope: !2387)
!2498 = !DILocation(line: 186, column: 67, scope: !2387)
!2499 = !DILocation(line: 186, column: 74, scope: !2387)
!2500 = !DILocation(line: 186, column: 64, scope: !2387)
!2501 = !DILocation(line: 186, column: 56, scope: !2387)
!2502 = !DILocation(line: 187, column: 29, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2387, file: !1025, line: 187, column: 17)
!2504 = !DILocation(line: 188, column: 17, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2503, file: !1025, line: 187, column: 45)
!2506 = !DILocation(line: 189, column: 13, scope: !2505)
!2507 = !DILocation(line: 193, column: 20, scope: !2387)
!2508 = !DILocation(line: 194, column: 18, scope: !2387)
!2509 = !DILocation(line: 195, column: 67, scope: !2387)
!2510 = !DILocation(line: 195, column: 74, scope: !2387)
!2511 = !DILocation(line: 195, column: 64, scope: !2387)
!2512 = !DILocation(line: 195, column: 56, scope: !2387)
!2513 = !DILocation(line: 196, column: 29, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2387, file: !1025, line: 196, column: 17)
!2515 = !DILocation(line: 197, column: 17, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2514, file: !1025, line: 196, column: 45)
!2517 = !DILocation(line: 198, column: 13, scope: !2516)
!2518 = !DILocation(line: 202, column: 20, scope: !2387)
!2519 = !DILocation(line: 203, column: 18, scope: !2387)
!2520 = !DILocation(line: 204, column: 67, scope: !2387)
!2521 = !DILocation(line: 204, column: 64, scope: !2387)
!2522 = !DILocation(line: 204, column: 56, scope: !2387)
!2523 = !DILocation(line: 205, column: 29, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2387, file: !1025, line: 205, column: 17)
!2525 = !DILocation(line: 206, column: 17, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2524, file: !1025, line: 205, column: 45)
!2527 = !DILocation(line: 207, column: 13, scope: !2526)
!2528 = !DILocation(line: 211, column: 20, scope: !2387)
!2529 = !DILocation(line: 212, column: 18, scope: !2387)
!2530 = !DILocation(line: 213, column: 67, scope: !2387)
!2531 = !DILocation(line: 213, column: 74, scope: !2387)
!2532 = !DILocation(line: 213, column: 64, scope: !2387)
!2533 = !DILocation(line: 213, column: 56, scope: !2387)
!2534 = !DILocation(line: 214, column: 13, scope: !2387)
!2535 = !DILocation(line: 217, column: 20, scope: !2387)
!2536 = !DILocation(line: 218, column: 18, scope: !2387)
!2537 = !DILocation(line: 219, column: 67, scope: !2387)
!2538 = !DILocation(line: 219, column: 74, scope: !2387)
!2539 = !DILocation(line: 219, column: 64, scope: !2387)
!2540 = !DILocation(line: 219, column: 56, scope: !2387)
!2541 = !DILocation(line: 220, column: 13, scope: !2387)
!2542 = !DILocation(line: 223, column: 20, scope: !2387)
!2543 = !DILocation(line: 224, column: 18, scope: !2387)
!2544 = !DILocation(line: 225, column: 67, scope: !2387)
!2545 = !DILocation(line: 225, column: 74, scope: !2387)
!2546 = !DILocation(line: 225, column: 64, scope: !2387)
!2547 = !DILocation(line: 225, column: 56, scope: !2387)
!2548 = !DILocation(line: 226, column: 13, scope: !2387)
!2549 = !DILocation(line: 229, column: 20, scope: !2387)
!2550 = !DILocation(line: 230, column: 18, scope: !2387)
!2551 = !DILocation(line: 231, column: 67, scope: !2387)
!2552 = !DILocation(line: 231, column: 74, scope: !2387)
!2553 = !DILocation(line: 231, column: 64, scope: !2387)
!2554 = !DILocation(line: 231, column: 56, scope: !2387)
!2555 = !DILocation(line: 232, column: 13, scope: !2387)
!2556 = !DILocation(line: 235, column: 20, scope: !2387)
!2557 = !DILocation(line: 236, column: 18, scope: !2387)
!2558 = !DILocation(line: 237, column: 66, scope: !2387)
!2559 = !DILocation(line: 237, column: 73, scope: !2387)
!2560 = !DILocation(line: 237, column: 63, scope: !2387)
!2561 = !DILocation(line: 237, column: 56, scope: !2387)
!2562 = !DILocation(line: 238, column: 13, scope: !2387)
!2563 = !DILocation(line: 241, column: 20, scope: !2387)
!2564 = !DILocation(line: 242, column: 18, scope: !2387)
!2565 = !DILocation(line: 243, column: 67, scope: !2387)
!2566 = !DILocation(line: 243, column: 74, scope: !2387)
!2567 = !DILocation(line: 243, column: 64, scope: !2387)
!2568 = !DILocation(line: 243, column: 56, scope: !2387)
!2569 = !DILocation(line: 244, column: 13, scope: !2387)
!2570 = !DILocation(line: 247, column: 20, scope: !2387)
!2571 = !DILocation(line: 248, column: 18, scope: !2387)
!2572 = !DILocation(line: 249, column: 67, scope: !2387)
!2573 = !DILocation(line: 249, column: 74, scope: !2387)
!2574 = !DILocation(line: 249, column: 64, scope: !2387)
!2575 = !DILocation(line: 249, column: 56, scope: !2387)
!2576 = !DILocation(line: 250, column: 13, scope: !2387)
!2577 = !DILocation(line: 253, column: 20, scope: !2387)
!2578 = !DILocation(line: 254, column: 18, scope: !2387)
!2579 = !DILocation(line: 255, column: 67, scope: !2387)
!2580 = !DILocation(line: 255, column: 74, scope: !2387)
!2581 = !DILocation(line: 255, column: 64, scope: !2387)
!2582 = !DILocation(line: 255, column: 56, scope: !2387)
!2583 = !DILocation(line: 256, column: 13, scope: !2387)
!2584 = !DILocation(line: 259, column: 20, scope: !2387)
!2585 = !DILocation(line: 260, column: 18, scope: !2387)
!2586 = !DILocation(line: 261, column: 67, scope: !2387)
!2587 = !DILocation(line: 261, column: 74, scope: !2387)
!2588 = !DILocation(line: 261, column: 64, scope: !2387)
!2589 = !DILocation(line: 261, column: 56, scope: !2387)
!2590 = !DILocation(line: 262, column: 13, scope: !2387)
!2591 = !DILocation(line: 265, column: 20, scope: !2387)
!2592 = !DILocation(line: 266, column: 18, scope: !2387)
!2593 = !DILocation(line: 267, column: 67, scope: !2387)
!2594 = !DILocation(line: 267, column: 74, scope: !2387)
!2595 = !DILocation(line: 267, column: 64, scope: !2387)
!2596 = !DILocation(line: 267, column: 56, scope: !2387)
!2597 = !DILocation(line: 268, column: 13, scope: !2387)
!2598 = !DILocation(line: 271, column: 20, scope: !2387)
!2599 = !DILocation(line: 272, column: 18, scope: !2387)
!2600 = !DILocation(line: 273, column: 67, scope: !2387)
!2601 = !DILocation(line: 273, column: 74, scope: !2387)
!2602 = !DILocation(line: 273, column: 64, scope: !2387)
!2603 = !DILocation(line: 273, column: 56, scope: !2387)
!2604 = !DILocation(line: 274, column: 13, scope: !2387)
!2605 = !DILocation(line: 278, column: 1, scope: !2376)
!2606 = distinct !DISubprogram(name: "gpio_direction", scope: !325, file: !325, line: 107, type: !2607, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !324, retainedNodes: !2609)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!285, !202, !1145}
!2609 = !{!2610, !2611}
!2610 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2606, file: !325, line: 107, type: !202)
!2611 = !DILocalVariable(name: "direction", arg: 2, scope: !2606, file: !325, line: 107, type: !1145)
!2612 = !DILocation(line: 0, scope: !2606)
!2613 = !DILocation(line: 109, column: 45, scope: !2606)
!2614 = !DILocation(line: 109, column: 12, scope: !2606)
!2615 = !DILocation(line: 109, column: 5, scope: !2606)
!2616 = distinct !DISubprogram(name: "gpio_write", scope: !325, file: !325, line: 113, type: !2617, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !324, retainedNodes: !2619)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!285, !202, !236}
!2619 = !{!2620, !2621}
!2620 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2616, file: !325, line: 113, type: !202)
!2621 = !DILocalVariable(name: "data", arg: 2, scope: !2616, file: !325, line: 113, type: !236)
!2622 = !DILocation(line: 0, scope: !2616)
!2623 = !DILocation(line: 115, column: 12, scope: !2616)
!2624 = !DILocation(line: 115, column: 5, scope: !2616)
!2625 = distinct !DISubprogram(name: "gpio_int", scope: !325, file: !325, line: 120, type: !2626, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !324, retainedNodes: !2632)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!285, !202, !2628, !2629, !2630, !2631, !465, !236, !319}
!2628 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_NVIC_SENSE_T", file: !328, line: 72, baseType: !332)
!2629 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_DEBOUNCE_EN_T", file: !328, line: 77, baseType: !336)
!2630 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_DEBOUNCE_POL_T", file: !328, line: 82, baseType: !340)
!2631 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_DEBOUNCE_DUAL_T", file: !328, line: 87, baseType: !344)
!2632 = !{!2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640}
!2633 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2625, file: !325, line: 120, type: !202)
!2634 = !DILocalVariable(name: "edgeLevelTrig", arg: 2, scope: !2625, file: !325, line: 121, type: !2628)
!2635 = !DILocalVariable(name: "debounceEnable", arg: 3, scope: !2625, file: !325, line: 122, type: !2629)
!2636 = !DILocalVariable(name: "polarity", arg: 4, scope: !2625, file: !325, line: 123, type: !2630)
!2637 = !DILocalVariable(name: "dual", arg: 5, scope: !2625, file: !325, line: 124, type: !2631)
!2638 = !DILocalVariable(name: "prescaler", arg: 6, scope: !2625, file: !325, line: 125, type: !465)
!2639 = !DILocalVariable(name: "u1PrescalerCount", arg: 7, scope: !2625, file: !325, line: 126, type: !236)
!2640 = !DILocalVariable(name: "callback", arg: 8, scope: !2625, file: !325, line: 127, type: !319)
!2641 = !DILocation(line: 0, scope: !2625)
!2642 = !DILocation(line: 129, column: 41, scope: !2625)
!2643 = !DILocation(line: 129, column: 56, scope: !2625)
!2644 = !DILocation(line: 129, column: 73, scope: !2625)
!2645 = !DILocation(line: 129, column: 84, scope: !2625)
!2646 = !DILocation(line: 129, column: 91, scope: !2625)
!2647 = !DILocation(line: 129, column: 12, scope: !2625)
!2648 = !DILocation(line: 129, column: 5, scope: !2625)
!2649 = distinct !DISubprogram(name: "eint_set_trigger_mode", scope: !325, file: !325, line: 132, type: !2650, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !324, retainedNodes: !2652)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{!285, !202, !2628, !2630, !2631}
!2652 = !{!2653, !2654, !2655, !2656}
!2653 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2649, file: !325, line: 132, type: !202)
!2654 = !DILocalVariable(name: "edgeLevelTrig", arg: 2, scope: !2649, file: !325, line: 133, type: !2628)
!2655 = !DILocalVariable(name: "polarity", arg: 3, scope: !2649, file: !325, line: 134, type: !2630)
!2656 = !DILocalVariable(name: "dual", arg: 4, scope: !2649, file: !325, line: 135, type: !2631)
!2657 = !DILocation(line: 0, scope: !2649)
!2658 = !DILocation(line: 137, column: 56, scope: !2649)
!2659 = !DILocation(line: 137, column: 71, scope: !2649)
!2660 = !DILocation(line: 137, column: 81, scope: !2649)
!2661 = !DILocation(line: 137, column: 12, scope: !2649)
!2662 = !DILocation(line: 137, column: 5, scope: !2649)
!2663 = distinct !DISubprogram(name: "eint_set_debounce", scope: !325, file: !325, line: 140, type: !2664, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !324, retainedNodes: !2666)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{!285, !202, !2629, !465, !236}
!2666 = !{!2667, !2668, !2669, !2670}
!2667 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2663, file: !325, line: 140, type: !202)
!2668 = !DILocalVariable(name: "debounceEnable", arg: 2, scope: !2663, file: !325, line: 141, type: !2629)
!2669 = !DILocalVariable(name: "prescaler", arg: 3, scope: !2663, file: !325, line: 142, type: !465)
!2670 = !DILocalVariable(name: "u1PrescalerCount", arg: 4, scope: !2663, file: !325, line: 143, type: !236)
!2671 = !DILocation(line: 0, scope: !2663)
!2672 = !DILocation(line: 145, column: 53, scope: !2663)
!2673 = !DILocation(line: 145, column: 69, scope: !2663)
!2674 = !DILocation(line: 145, column: 12, scope: !2663)
!2675 = !DILocation(line: 145, column: 5, scope: !2663)
!2676 = distinct !DISubprogram(name: "eint_set_mask", scope: !325, file: !325, line: 148, type: !2677, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !324, retainedNodes: !2679)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!285, !202}
!2679 = !{!2680}
!2680 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2676, file: !325, line: 148, type: !202)
!2681 = !DILocation(line: 0, scope: !2676)
!2682 = !DILocation(line: 150, column: 12, scope: !2676)
!2683 = !DILocation(line: 150, column: 5, scope: !2676)
!2684 = distinct !DISubprogram(name: "eint_set_unmask", scope: !325, file: !325, line: 153, type: !2677, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !324, retainedNodes: !2685)
!2685 = !{!2686}
!2686 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2684, file: !325, line: 153, type: !202)
!2687 = !DILocation(line: 0, scope: !2684)
!2688 = !DILocation(line: 155, column: 12, scope: !2684)
!2689 = !DILocation(line: 155, column: 5, scope: !2684)
!2690 = distinct !DISubprogram(name: "eint_set_software_trigger", scope: !325, file: !325, line: 158, type: !2677, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !324, retainedNodes: !2691)
!2691 = !{!2692}
!2692 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2690, file: !325, line: 158, type: !202)
!2693 = !DILocation(line: 0, scope: !2690)
!2694 = !DILocation(line: 160, column: 12, scope: !2690)
!2695 = !DILocation(line: 160, column: 5, scope: !2690)
!2696 = distinct !DISubprogram(name: "eint_clear_software_trigger", scope: !325, file: !325, line: 163, type: !2677, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !324, retainedNodes: !2697)
!2697 = !{!2698}
!2698 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2696, file: !325, line: 163, type: !202)
!2699 = !DILocation(line: 0, scope: !2696)
!2700 = !DILocation(line: 165, column: 12, scope: !2696)
!2701 = !DILocation(line: 165, column: 5, scope: !2696)
!2702 = distinct !DISubprogram(name: "gpio_get_status", scope: !325, file: !325, line: 169, type: !2703, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !324, retainedNodes: !2712)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!2705, !202}
!2705 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_status", file: !328, line: 67, baseType: !2706)
!2706 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !328, line: 62, size: 64, elements: !2707)
!2707 = !{!2708, !2709, !2710, !2711}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PIN", scope: !2706, file: !328, line: 63, baseType: !204, size: 32)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OUTEN", scope: !2706, file: !328, line: 64, baseType: !236, size: 8, offset: 32)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "GPI_DIN", scope: !2706, file: !328, line: 65, baseType: !236, size: 8, offset: 40)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "GPO_DOUT", scope: !2706, file: !328, line: 66, baseType: !236, size: 8, offset: 48)
!2712 = !{!2713, !2714}
!2713 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2702, file: !325, line: 169, type: !202)
!2714 = !DILocalVariable(name: "p", scope: !2702, file: !325, line: 171, type: !2705)
!2715 = !DILocation(line: 0, scope: !2702)
!2716 = !DILocation(line: 171, column: 17, scope: !2702)
!2717 = !DILocation(line: 172, column: 7, scope: !2702)
!2718 = !DILocation(line: 172, column: 16, scope: !2702)
!2719 = !DILocation(line: 173, column: 20, scope: !2702)
!2720 = !DILocation(line: 173, column: 7, scope: !2702)
!2721 = !DILocation(line: 173, column: 18, scope: !2702)
!2722 = !DILocation(line: 174, column: 17, scope: !2702)
!2723 = !DILocation(line: 174, column: 7, scope: !2702)
!2724 = !DILocation(line: 174, column: 15, scope: !2702)
!2725 = !DILocation(line: 175, column: 18, scope: !2702)
!2726 = !DILocation(line: 175, column: 7, scope: !2702)
!2727 = !DILocation(line: 175, column: 16, scope: !2702)
!2728 = !DILocation(line: 176, column: 5, scope: !2702)
!2729 = distinct !DISubprogram(name: "gpio_PullUp", scope: !325, file: !325, line: 179, type: !2677, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !324, retainedNodes: !2730)
!2730 = !{!2731, !2732}
!2731 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2729, file: !325, line: 179, type: !202)
!2732 = !DILocalVariable(name: "ret", scope: !2729, file: !325, line: 181, type: !1353)
!2733 = !DILocation(line: 0, scope: !2729)
!2734 = !DILocation(line: 182, column: 5, scope: !2729)
!2735 = !DILocation(line: 183, column: 11, scope: !2729)
!2736 = !DILocation(line: 184, column: 5, scope: !2729)
!2737 = distinct !DISubprogram(name: "gpio_PullDown", scope: !325, file: !325, line: 187, type: !2677, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !324, retainedNodes: !2738)
!2738 = !{!2739, !2740}
!2739 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2737, file: !325, line: 187, type: !202)
!2740 = !DILocalVariable(name: "ret", scope: !2737, file: !325, line: 189, type: !1353)
!2741 = !DILocation(line: 0, scope: !2737)
!2742 = !DILocation(line: 190, column: 5, scope: !2737)
!2743 = !DILocation(line: 191, column: 11, scope: !2737)
!2744 = !DILocation(line: 192, column: 5, scope: !2737)
!2745 = distinct !DISubprogram(name: "gpio_PullDisable", scope: !325, file: !325, line: 194, type: !2677, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !324, retainedNodes: !2746)
!2746 = !{!2747, !2748}
!2747 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2745, file: !325, line: 194, type: !202)
!2748 = !DILocalVariable(name: "ret", scope: !2745, file: !325, line: 196, type: !1353)
!2749 = !DILocation(line: 0, scope: !2745)
!2750 = !DILocation(line: 197, column: 5, scope: !2745)
!2751 = !DILocation(line: 198, column: 11, scope: !2745)
!2752 = !DILocation(line: 199, column: 11, scope: !2745)
!2753 = !DILocation(line: 200, column: 5, scope: !2745)
!2754 = distinct !DISubprogram(name: "gpio_SetDriving", scope: !325, file: !325, line: 202, type: !2617, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !324, retainedNodes: !2755)
!2755 = !{!2756, !2757, !2758}
!2756 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2754, file: !325, line: 202, type: !202)
!2757 = !DILocalVariable(name: "driving", arg: 2, scope: !2754, file: !325, line: 202, type: !236)
!2758 = !DILocalVariable(name: "ret", scope: !2754, file: !325, line: 204, type: !1353)
!2759 = !DILocation(line: 0, scope: !2754)
!2760 = !DILocation(line: 205, column: 11, scope: !2754)
!2761 = !DILocation(line: 206, column: 5, scope: !2754)
!2762 = distinct !DISubprogram(name: "gpio_GetDriving", scope: !325, file: !325, line: 209, type: !2763, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !324, retainedNodes: !2765)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!285, !202, !722}
!2765 = !{!2766, !2767, !2768}
!2766 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2762, file: !325, line: 209, type: !202)
!2767 = !DILocalVariable(name: "driving", arg: 2, scope: !2762, file: !325, line: 209, type: !722)
!2768 = !DILocalVariable(name: "ret", scope: !2762, file: !325, line: 211, type: !1353)
!2769 = !DILocation(line: 0, scope: !2762)
!2770 = !DILocation(line: 212, column: 11, scope: !2762)
!2771 = !DILocation(line: 213, column: 5, scope: !2762)
!2772 = distinct !DISubprogram(name: "gpio_backup_all_registers", scope: !325, file: !325, line: 216, type: !75, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !324, retainedNodes: !2773)
!2773 = !{!2774}
!2774 = !DILocalVariable(name: "i", scope: !2772, file: !325, line: 218, type: !204)
!2775 = !DILocation(line: 0, scope: !2772)
!2776 = !DILocation(line: 220, column: 5, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2772, file: !325, line: 220, column: 5)
!2778 = !DILocation(line: 221, column: 40, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !325, line: 220, column: 78)
!2780 = distinct !DILexicalBlock(scope: !2777, file: !325, line: 220, column: 5)
!2781 = !DILocation(line: 221, column: 29, scope: !2779)
!2782 = !DILocation(line: 221, column: 38, scope: !2779)
!2783 = !DILocation(line: 220, column: 74, scope: !2780)
!2784 = !DILocation(line: 220, column: 15, scope: !2780)
!2785 = distinct !{!2785, !2776, !2786}
!2786 = !DILocation(line: 222, column: 5, scope: !2777)
!2787 = !DILocation(line: 224, column: 1, scope: !2772)
!2788 = distinct !DISubprogram(name: "gpio_restore_all_registers", scope: !325, file: !325, line: 226, type: !75, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !324, retainedNodes: !2789)
!2789 = !{!2790}
!2790 = !DILocalVariable(name: "i", scope: !2788, file: !325, line: 228, type: !204)
!2791 = !DILocation(line: 0, scope: !2788)
!2792 = !DILocation(line: 230, column: 5, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2788, file: !325, line: 230, column: 5)
!2794 = !DILocation(line: 231, column: 71, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2796, file: !325, line: 230, column: 78)
!2796 = distinct !DILexicalBlock(scope: !2793, file: !325, line: 230, column: 5)
!2797 = !DILocation(line: 231, column: 9, scope: !2795)
!2798 = !DILocation(line: 231, column: 49, scope: !2795)
!2799 = !DILocation(line: 230, column: 74, scope: !2796)
!2800 = !DILocation(line: 230, column: 15, scope: !2796)
!2801 = distinct !{!2801, !2792, !2802}
!2802 = !DILocation(line: 233, column: 5, scope: !2793)
!2803 = !DILocation(line: 234, column: 1, scope: !2788)
!2804 = distinct !DISubprogram(name: "NVIC_SetupVectorTable", scope: !1029, file: !1029, line: 47, type: !2805, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1028, retainedNodes: !2807)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{null, !204}
!2807 = !{!2808}
!2808 = !DILocalVariable(name: "addr", arg: 1, scope: !2804, file: !1029, line: 47, type: !204)
!2809 = !DILocation(line: 0, scope: !2804)
!2810 = !DILocation(line: 49, column: 15, scope: !2804)
!2811 = !DILocation(line: 51, column: 5, scope: !2804)
!2812 = !{i64 2624}
!2813 = !DILocation(line: 52, column: 5, scope: !2804)
!2814 = !{i64 2651}
!2815 = !DILocation(line: 53, column: 1, scope: !2804)
!2816 = distinct !DISubprogram(name: "NVIC_SWInt", scope: !1029, file: !1029, line: 56, type: !2817, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1028, retainedNodes: !2819)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{null, !7}
!2819 = !{!2820}
!2820 = !DILocalVariable(name: "source", arg: 1, scope: !2816, file: !1029, line: 56, type: !7)
!2821 = !DILocation(line: 0, scope: !2816)
!2822 = !DILocation(line: 58, column: 16, scope: !2816)
!2823 = !DILocation(line: 59, column: 1, scope: !2816)
!2824 = distinct !DISubprogram(name: "save_and_set_interrupt_mask", scope: !1029, file: !1029, line: 61, type: !2825, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1028, retainedNodes: !2827)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!204}
!2827 = !{!2828}
!2828 = !DILocalVariable(name: "mask", scope: !2824, file: !1029, line: 63, type: !204)
!2829 = !DILocation(line: 470, column: 3, scope: !2830, inlinedAt: !2834)
!2830 = distinct !DISubprogram(name: "__get_PRIMASK", scope: !2831, file: !2831, line: 466, type: !2825, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1028, retainedNodes: !2832)
!2831 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmFunc.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
!2832 = !{!2833}
!2833 = !DILocalVariable(name: "result", scope: !2830, file: !2831, line: 468, type: !204)
!2834 = distinct !DILocation(line: 64, column: 5, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2824, file: !1029, line: 64, column: 5)
!2836 = !{i64 302173}
!2837 = !DILocation(line: 0, scope: !2830, inlinedAt: !2834)
!2838 = !DILocation(line: 0, scope: !2824)
!2839 = !DILocation(line: 330, column: 3, scope: !2840, inlinedAt: !2841)
!2840 = distinct !DISubprogram(name: "__disable_irq", scope: !2831, file: !2831, line: 328, type: !75, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1028, retainedNodes: !1344)
!2841 = distinct !DILocation(line: 64, column: 5, scope: !2835)
!2842 = !{i64 298837}
!2843 = !DILocation(line: 65, column: 5, scope: !2824)
!2844 = distinct !DISubprogram(name: "restore_interrupt_mask", scope: !1029, file: !1029, line: 68, type: !2805, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1028, retainedNodes: !2845)
!2845 = !{!2846}
!2846 = !DILocalVariable(name: "mask", arg: 1, scope: !2844, file: !1029, line: 68, type: !204)
!2847 = !DILocation(line: 0, scope: !2844)
!2848 = !DILocalVariable(name: "priMask", arg: 1, scope: !2849, file: !2831, line: 481, type: !204)
!2849 = distinct !DISubprogram(name: "__set_PRIMASK", scope: !2831, file: !2831, line: 481, type: !2805, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1028, retainedNodes: !2850)
!2850 = !{!2848}
!2851 = !DILocation(line: 0, scope: !2849, inlinedAt: !2852)
!2852 = distinct !DILocation(line: 70, column: 5, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2844, file: !1029, line: 70, column: 5)
!2854 = !DILocation(line: 483, column: 3, scope: !2849, inlinedAt: !2852)
!2855 = !{i64 302491}
!2856 = !DILocation(line: 71, column: 1, scope: !2844)
!2857 = distinct !DISubprogram(name: "pinmux_config", scope: !1074, file: !1074, line: 54, type: !2858, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1073, retainedNodes: !2860)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{!285, !202, !204}
!2860 = !{!2861, !2862, !2863}
!2861 = !DILocalVariable(name: "gpio_index", arg: 1, scope: !2857, file: !1074, line: 54, type: !202)
!2862 = !DILocalVariable(name: "function", arg: 2, scope: !2857, file: !1074, line: 54, type: !204)
!2863 = !DILocalVariable(name: "ePadIndex", scope: !2857, file: !1074, line: 56, type: !203)
!2864 = !DILocation(line: 0, scope: !2857)
!2865 = !DILocation(line: 60, column: 5, scope: !2857)
!2866 = !DILocation(line: 205, column: 38, scope: !2857)
!2867 = !DILocation(line: 205, column: 5, scope: !2857)
!2868 = !DILocation(line: 207, column: 5, scope: !2857)
!2869 = !DILocation(line: 208, column: 1, scope: !2857)
!2870 = distinct !DISubprogram(name: "get_current_count", scope: !1077, file: !1077, line: 56, type: !2825, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !1344)
!2871 = !DILocation(line: 58, column: 12, scope: !2870)
!2872 = !DILocation(line: 58, column: 5, scope: !2870)
!2873 = distinct !DISubprogram(name: "delay_time", scope: !1077, file: !1077, line: 62, type: !1202, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !2874)
!2874 = !{!2875, !2876, !2877}
!2875 = !DILocalVariable(name: "count", arg: 1, scope: !2873, file: !1077, line: 62, type: !60)
!2876 = !DILocalVariable(name: "end_count", scope: !2873, file: !1077, line: 64, type: !60)
!2877 = !DILocalVariable(name: "current", scope: !2873, file: !1077, line: 64, type: !60)
!2878 = !DILocation(line: 0, scope: !2873)
!2879 = !DILocation(line: 66, column: 17, scope: !2873)
!2880 = !DILocation(line: 66, column: 37, scope: !2873)
!2881 = !DILocation(line: 66, column: 45, scope: !2873)
!2882 = !DILocation(line: 67, column: 15, scope: !2873)
!2883 = !DILocation(line: 68, column: 12, scope: !2873)
!2884 = !DILocation(line: 68, column: 5, scope: !2873)
!2885 = !DILocation(line: 69, column: 19, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2873, file: !1077, line: 68, column: 45)
!2887 = distinct !{!2887, !2884, !2888}
!2888 = !DILocation(line: 70, column: 5, scope: !2873)
!2889 = !DILocation(line: 72, column: 1, scope: !2873)
!2890 = distinct !DISubprogram(name: "delay_time_for_gpt4", scope: !1077, file: !1077, line: 75, type: !1202, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !2891)
!2891 = !{!2892, !2893, !2894}
!2892 = !DILocalVariable(name: "count", arg: 1, scope: !2890, file: !1077, line: 75, type: !60)
!2893 = !DILocalVariable(name: "end_count", scope: !2890, file: !1077, line: 77, type: !60)
!2894 = !DILocalVariable(name: "current", scope: !2890, file: !1077, line: 77, type: !60)
!2895 = !DILocation(line: 0, scope: !2890)
!2896 = !DILocation(line: 79, column: 17, scope: !2890)
!2897 = !DILocation(line: 79, column: 42, scope: !2890)
!2898 = !DILocation(line: 79, column: 50, scope: !2890)
!2899 = !DILocation(line: 80, column: 15, scope: !2890)
!2900 = !DILocation(line: 81, column: 12, scope: !2890)
!2901 = !DILocation(line: 81, column: 5, scope: !2890)
!2902 = !DILocation(line: 82, column: 19, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2890, file: !1077, line: 81, column: 45)
!2904 = distinct !{!2904, !2901, !2905}
!2905 = !DILocation(line: 83, column: 5, scope: !2890)
!2906 = !DILocation(line: 85, column: 1, scope: !2890)
!2907 = distinct !DISubprogram(name: "get_current_gpt4_count", scope: !1077, file: !1077, line: 95, type: !2825, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !1344)
!2908 = !DILocation(line: 97, column: 13, scope: !2907)
!2909 = !DILocation(line: 97, column: 5, scope: !2907)
!2910 = distinct !DISubprogram(name: "delay_ms", scope: !1077, file: !1077, line: 107, type: !2805, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !2911)
!2911 = !{!2912, !2913}
!2912 = !DILocalVariable(name: "ms", arg: 1, scope: !2910, file: !1077, line: 107, type: !204)
!2913 = !DILocalVariable(name: "count", scope: !2910, file: !1077, line: 109, type: !204)
!2914 = !DILocation(line: 0, scope: !2910)
!2915 = !DILocation(line: 111, column: 17, scope: !2910)
!2916 = !DILocation(line: 112, column: 17, scope: !2910)
!2917 = !DILocation(line: 112, column: 23, scope: !2910)
!2918 = !DILocation(line: 112, column: 11, scope: !2910)
!2919 = !DILocation(line: 113, column: 17, scope: !2910)
!2920 = !DILocation(line: 113, column: 23, scope: !2910)
!2921 = !DILocation(line: 113, column: 11, scope: !2910)
!2922 = !DILocation(line: 114, column: 17, scope: !2910)
!2923 = !DILocation(line: 114, column: 23, scope: !2910)
!2924 = !DILocation(line: 114, column: 11, scope: !2910)
!2925 = !DILocation(line: 115, column: 5, scope: !2910)
!2926 = !DILocation(line: 116, column: 1, scope: !2910)
!2927 = distinct !DISubprogram(name: "delay_us", scope: !1077, file: !1077, line: 120, type: !2805, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !2928)
!2928 = !{!2929, !2930, !2931}
!2929 = !DILocalVariable(name: "us", arg: 1, scope: !2927, file: !1077, line: 120, type: !204)
!2930 = !DILocalVariable(name: "count", scope: !2927, file: !1077, line: 122, type: !204)
!2931 = !DILocalVariable(name: "ticks_per_us", scope: !2927, file: !1077, line: 123, type: !204)
!2932 = !DILocation(line: 0, scope: !2927)
!2933 = !DILocation(line: 125, column: 20, scope: !2927)
!2934 = !DILocation(line: 125, column: 39, scope: !2927)
!2935 = !DILocation(line: 126, column: 26, scope: !2927)
!2936 = !DILocation(line: 128, column: 5, scope: !2927)
!2937 = !DILocation(line: 129, column: 1, scope: !2927)
!2938 = distinct !DISubprogram(name: "drvTMR_init", scope: !1077, file: !1077, line: 133, type: !2939, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !2941)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{null, !204, !204, !477, !74}
!2941 = !{!2942, !2943, !2944, !2945}
!2942 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2938, file: !1077, line: 133, type: !204)
!2943 = !DILocalVariable(name: "countValue", arg: 2, scope: !2938, file: !1077, line: 133, type: !204)
!2944 = !DILocalVariable(name: "autoRepeat", arg: 3, scope: !2938, file: !1077, line: 133, type: !477)
!2945 = !DILocalVariable(name: "TMR_Callback", arg: 4, scope: !2938, file: !1077, line: 133, type: !74)
!2946 = !DILocation(line: 0, scope: !2938)
!2947 = !DILocation(line: 136, column: 5, scope: !2938)
!2948 = !DILocation(line: 138, column: 18, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2938, file: !1077, line: 138, column: 9)
!2950 = !DILocation(line: 138, column: 9, scope: !2938)
!2951 = !DILocation(line: 139, column: 30, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2949, file: !1077, line: 138, column: 27)
!2953 = !DILocation(line: 141, column: 5, scope: !2952)
!2954 = !DILocation(line: 142, column: 30, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2949, file: !1077, line: 141, column: 12)
!2956 = !DILocation(line: 0, scope: !2949)
!2957 = !DILocation(line: 146, column: 5, scope: !2938)
!2958 = !DILocation(line: 147, column: 1, scope: !2938)
!2959 = distinct !DISubprogram(name: "TMR_Start", scope: !1077, file: !1077, line: 149, type: !2805, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !2960)
!2960 = !{!2961}
!2961 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2959, file: !1077, line: 149, type: !204)
!2962 = !DILocation(line: 0, scope: !2959)
!2963 = !DILocation(line: 151, column: 5, scope: !2959)
!2964 = !DILocation(line: 152, column: 1, scope: !2959)
!2965 = distinct !DISubprogram(name: "TMR_Stop", scope: !1077, file: !1077, line: 154, type: !2805, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !2966)
!2966 = !{!2967}
!2967 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2965, file: !1077, line: 154, type: !204)
!2968 = !DILocation(line: 0, scope: !2965)
!2969 = !DILocation(line: 156, column: 5, scope: !2965)
!2970 = !DILocation(line: 157, column: 1, scope: !2965)
!2971 = distinct !DISubprogram(name: "drvGPT2Init", scope: !1077, file: !1077, line: 160, type: !75, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !1344)
!2972 = !DILocation(line: 162, column: 5, scope: !2971)
!2973 = !DILocation(line: 163, column: 1, scope: !2971)
!2974 = distinct !DISubprogram(name: "drvGPT4Init", scope: !1077, file: !1077, line: 165, type: !75, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !1344)
!2975 = !DILocation(line: 167, column: 5, scope: !2974)
!2976 = !DILocation(line: 168, column: 1, scope: !2974)
!2977 = distinct !DISubprogram(name: "clear_TMR_INT_status_bit", scope: !1077, file: !1077, line: 170, type: !2805, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !2978)
!2978 = !{!2979}
!2979 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2977, file: !1077, line: 170, type: !204)
!2980 = !DILocation(line: 0, scope: !2977)
!2981 = !DILocation(line: 172, column: 9, scope: !2977)
!2982 = !DILocation(line: 177, column: 5, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2984, file: !1077, line: 175, column: 27)
!2984 = distinct !DILexicalBlock(scope: !2977, file: !1077, line: 175, column: 9)
!2985 = !DILocation(line: 178, column: 1, scope: !2977)
!2986 = distinct !DISubprogram(name: "top_xtal_init", scope: !371, file: !371, line: 52, type: !75, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !2987)
!2987 = !{!2988, !2989}
!2988 = !DILocalVariable(name: "u4RegVal", scope: !2986, file: !371, line: 54, type: !204)
!2989 = !DILocalVariable(name: "reg", scope: !2986, file: !371, line: 55, type: !912)
!2990 = !DILocation(line: 0, scope: !2986)
!2991 = !DILocation(line: 55, column: 25, scope: !2986)
!2992 = !DILocation(line: 56, column: 16, scope: !2986)
!2993 = !DILocation(line: 56, column: 23, scope: !2986)
!2994 = !DILocation(line: 58, column: 16, scope: !2986)
!2995 = !DILocation(line: 61, column: 5, scope: !2986)
!2996 = !DILocation(line: 59, column: 14, scope: !2986)
!2997 = !DILocation(line: 0, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2986, file: !371, line: 61, column: 18)
!2999 = !DILocation(line: 87, column: 38, scope: !2986)
!3000 = !DILocation(line: 88, column: 21, scope: !2986)
!3001 = !DILocation(line: 88, column: 19, scope: !2986)
!3002 = !DILocation(line: 89, column: 5, scope: !2986)
!3003 = !DILocation(line: 90, column: 17, scope: !2986)
!3004 = !DILocation(line: 90, column: 33, scope: !2986)
!3005 = !DILocation(line: 90, column: 5, scope: !2986)
!3006 = !DILocation(line: 91, column: 1, scope: !2986)
!3007 = distinct !DISubprogram(name: "top_xtal_freq_get", scope: !371, file: !371, line: 98, type: !2825, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1344)
!3008 = !DILocation(line: 100, column: 12, scope: !3007)
!3009 = !DILocation(line: 100, column: 5, scope: !3007)
!3010 = distinct !DISubprogram(name: "top_mcu_freq_get", scope: !371, file: !371, line: 108, type: !2825, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1344)
!3011 = !DILocation(line: 110, column: 12, scope: !3010)
!3012 = !DILocation(line: 110, column: 5, scope: !3010)
!3013 = distinct !DISubprogram(name: "cmnPLL1ON", scope: !371, file: !371, line: 118, type: !75, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !3014)
!3014 = !{!3015, !3016}
!3015 = !DILocalVariable(name: "reg", scope: !3013, file: !371, line: 120, type: !215)
!3016 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !3013, file: !371, line: 121, type: !375)
!3017 = !DILocation(line: 120, column: 5, scope: !3013)
!3018 = !DILocation(line: 120, column: 23, scope: !3013)
!3019 = !DILocation(line: 0, scope: !3013)
!3020 = !DILocation(line: 123, column: 11, scope: !3013)
!3021 = !DILocation(line: 123, column: 9, scope: !3013)
!3022 = !DILocation(line: 124, column: 12, scope: !3013)
!3023 = !DILocation(line: 124, column: 16, scope: !3013)
!3024 = !DILocation(line: 124, column: 39, scope: !3013)
!3025 = !DILocation(line: 124, column: 9, scope: !3013)
!3026 = !DILocation(line: 126, column: 9, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3013, file: !371, line: 126, column: 9)
!3028 = !DILocation(line: 126, column: 13, scope: !3027)
!3029 = !DILocation(line: 126, column: 9, scope: !3013)
!3030 = !DILocation(line: 127, column: 15, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3027, file: !371, line: 126, column: 47)
!3032 = !DILocation(line: 127, column: 13, scope: !3031)
!3033 = !DILocation(line: 128, column: 15, scope: !3031)
!3034 = !DILocation(line: 128, column: 19, scope: !3031)
!3035 = !DILocation(line: 128, column: 13, scope: !3031)
!3036 = !DILocation(line: 129, column: 15, scope: !3031)
!3037 = !DILocation(line: 129, column: 19, scope: !3031)
!3038 = !DILocation(line: 129, column: 13, scope: !3031)
!3039 = !DILocation(line: 130, column: 46, scope: !3031)
!3040 = !DILocation(line: 130, column: 9, scope: !3031)
!3041 = !DILocation(line: 132, column: 9, scope: !3031)
!3042 = !DILocation(line: 133, column: 19, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3031, file: !371, line: 132, column: 12)
!3044 = !DILocation(line: 133, column: 17, scope: !3043)
!3045 = !DILocation(line: 134, column: 19, scope: !3043)
!3046 = !DILocation(line: 134, column: 23, scope: !3043)
!3047 = !DILocation(line: 134, column: 17, scope: !3043)
!3048 = !DILocation(line: 135, column: 19, scope: !3031)
!3049 = !DILocation(line: 135, column: 18, scope: !3031)
!3050 = !DILocation(line: 135, column: 9, scope: !3043)
!3051 = distinct !{!3051, !3041, !3052}
!3052 = !DILocation(line: 135, column: 22, scope: !3031)
!3053 = !DILocation(line: 138, column: 1, scope: !3013)
!3054 = distinct !DISubprogram(name: "cmnReadRegister32", scope: !3055, file: !3055, line: 176, type: !3056, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !3060)
!3055 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/system_mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/eint_edge_falling/GCC")
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!204, !3058}
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 32)
!3059 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3060 = !{!3061}
!3061 = !DILocalVariable(name: "Register", arg: 1, scope: !3054, file: !3055, line: 176, type: !3058)
!3062 = !DILocation(line: 0, scope: !3054)
!3063 = !DILocation(line: 178, column: 13, scope: !3054)
!3064 = !DILocation(line: 178, column: 12, scope: !3054)
!3065 = !DILocation(line: 178, column: 5, scope: !3054)
!3066 = distinct !DISubprogram(name: "cmnWriteRegister32", scope: !3055, file: !3055, line: 171, type: !3067, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !3069)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{null, !3058, !204}
!3069 = !{!3070, !3071}
!3070 = !DILocalVariable(name: "Register", arg: 1, scope: !3066, file: !3055, line: 171, type: !3058)
!3071 = !DILocalVariable(name: "Value", arg: 2, scope: !3066, file: !3055, line: 171, type: !204)
!3072 = !DILocation(line: 0, scope: !3066)
!3073 = !DILocation(line: 173, column: 6, scope: !3066)
!3074 = !DILocation(line: 173, column: 36, scope: !3066)
!3075 = !DILocation(line: 174, column: 1, scope: !3066)
!3076 = distinct !DISubprogram(name: "cmnPLL1ON_PLL2ON", scope: !371, file: !371, line: 145, type: !3077, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !3079)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{null, !236}
!3079 = !{!3080, !3081, !3082}
!3080 = !DILocalVariable(name: "fg960M", arg: 1, scope: !3076, file: !371, line: 145, type: !236)
!3081 = !DILocalVariable(name: "reg", scope: !3076, file: !371, line: 147, type: !215)
!3082 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !3076, file: !371, line: 148, type: !375)
!3083 = !DILocation(line: 0, scope: !3076)
!3084 = !DILocation(line: 147, column: 5, scope: !3076)
!3085 = !DILocation(line: 147, column: 23, scope: !3076)
!3086 = !DILocation(line: 150, column: 11, scope: !3076)
!3087 = !DILocation(line: 150, column: 9, scope: !3076)
!3088 = !DILocation(line: 151, column: 12, scope: !3076)
!3089 = !DILocation(line: 151, column: 16, scope: !3076)
!3090 = !DILocation(line: 151, column: 39, scope: !3076)
!3091 = !DILocation(line: 151, column: 9, scope: !3076)
!3092 = !DILocation(line: 153, column: 9, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3076, file: !371, line: 153, column: 9)
!3094 = !DILocation(line: 153, column: 13, scope: !3093)
!3095 = !DILocation(line: 153, column: 9, scope: !3076)
!3096 = !DILocation(line: 154, column: 15, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3093, file: !371, line: 153, column: 45)
!3098 = !DILocation(line: 154, column: 13, scope: !3097)
!3099 = !DILocation(line: 155, column: 15, scope: !3097)
!3100 = !DILocation(line: 155, column: 19, scope: !3097)
!3101 = !DILocation(line: 155, column: 13, scope: !3097)
!3102 = !DILocation(line: 156, column: 15, scope: !3097)
!3103 = !DILocation(line: 156, column: 19, scope: !3097)
!3104 = !DILocation(line: 156, column: 13, scope: !3097)
!3105 = !DILocation(line: 157, column: 15, scope: !3097)
!3106 = !DILocation(line: 157, column: 13, scope: !3097)
!3107 = !DILocation(line: 158, column: 46, scope: !3097)
!3108 = !DILocation(line: 158, column: 9, scope: !3097)
!3109 = !DILocation(line: 160, column: 15, scope: !3097)
!3110 = !DILocation(line: 160, column: 13, scope: !3097)
!3111 = !DILocation(line: 161, column: 15, scope: !3097)
!3112 = !DILocation(line: 161, column: 19, scope: !3097)
!3113 = !DILocation(line: 161, column: 13, scope: !3097)
!3114 = !DILocation(line: 162, column: 15, scope: !3097)
!3115 = !DILocation(line: 162, column: 19, scope: !3097)
!3116 = !DILocation(line: 162, column: 13, scope: !3097)
!3117 = !DILocation(line: 163, column: 15, scope: !3097)
!3118 = !DILocation(line: 163, column: 19, scope: !3097)
!3119 = !DILocation(line: 163, column: 13, scope: !3097)
!3120 = !DILocation(line: 164, column: 46, scope: !3097)
!3121 = !DILocation(line: 164, column: 9, scope: !3097)
!3122 = !DILocation(line: 166, column: 9, scope: !3097)
!3123 = !DILocation(line: 167, column: 19, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3097, file: !371, line: 166, column: 12)
!3125 = !DILocation(line: 167, column: 17, scope: !3124)
!3126 = !DILocation(line: 168, column: 19, scope: !3124)
!3127 = !DILocation(line: 168, column: 23, scope: !3124)
!3128 = !DILocation(line: 168, column: 17, scope: !3124)
!3129 = !DILocation(line: 169, column: 19, scope: !3097)
!3130 = !DILocation(line: 169, column: 18, scope: !3097)
!3131 = !DILocation(line: 169, column: 9, scope: !3124)
!3132 = distinct !{!3132, !3122, !3133}
!3133 = !DILocation(line: 169, column: 22, scope: !3097)
!3134 = !DILocation(line: 171, column: 15, scope: !3097)
!3135 = !DILocation(line: 171, column: 13, scope: !3097)
!3136 = !DILocation(line: 172, column: 15, scope: !3097)
!3137 = !DILocation(line: 172, column: 19, scope: !3097)
!3138 = !DILocation(line: 172, column: 13, scope: !3097)
!3139 = !DILocation(line: 173, column: 15, scope: !3097)
!3140 = !DILocation(line: 173, column: 19, scope: !3097)
!3141 = !DILocation(line: 173, column: 13, scope: !3097)
!3142 = !DILocation(line: 174, column: 5, scope: !3097)
!3143 = !DILocation(line: 176, column: 11, scope: !3076)
!3144 = !DILocation(line: 176, column: 9, scope: !3076)
!3145 = !DILocation(line: 177, column: 9, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3076, file: !371, line: 177, column: 9)
!3147 = !DILocation(line: 0, scope: !3146)
!3148 = !DILocation(line: 177, column: 9, scope: !3076)
!3149 = !DILocation(line: 178, column: 19, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3146, file: !371, line: 177, column: 17)
!3151 = !DILocation(line: 178, column: 13, scope: !3150)
!3152 = !DILocation(line: 179, column: 5, scope: !3150)
!3153 = !DILocation(line: 180, column: 13, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3146, file: !371, line: 179, column: 12)
!3155 = !DILocation(line: 182, column: 42, scope: !3076)
!3156 = !DILocation(line: 182, column: 5, scope: !3076)
!3157 = !DILocation(line: 184, column: 1, scope: !3076)
!3158 = distinct !DISubprogram(name: "cmnPLL1OFF_PLL2OFF", scope: !371, file: !371, line: 191, type: !75, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !3159)
!3159 = !{!3160, !3161}
!3160 = !DILocalVariable(name: "reg", scope: !3158, file: !371, line: 193, type: !215)
!3161 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !3158, file: !371, line: 194, type: !375)
!3162 = !DILocation(line: 193, column: 5, scope: !3158)
!3163 = !DILocation(line: 193, column: 23, scope: !3158)
!3164 = !DILocation(line: 0, scope: !3158)
!3165 = !DILocation(line: 196, column: 11, scope: !3158)
!3166 = !DILocation(line: 196, column: 9, scope: !3158)
!3167 = !DILocation(line: 197, column: 11, scope: !3158)
!3168 = !DILocation(line: 197, column: 15, scope: !3158)
!3169 = !DILocation(line: 197, column: 9, scope: !3158)
!3170 = !DILocation(line: 198, column: 11, scope: !3158)
!3171 = !DILocation(line: 198, column: 15, scope: !3158)
!3172 = !DILocation(line: 198, column: 9, scope: !3158)
!3173 = !DILocation(line: 199, column: 11, scope: !3158)
!3174 = !DILocation(line: 199, column: 9, scope: !3158)
!3175 = !DILocation(line: 200, column: 42, scope: !3158)
!3176 = !DILocation(line: 200, column: 5, scope: !3158)
!3177 = !DILocation(line: 202, column: 11, scope: !3158)
!3178 = !DILocation(line: 202, column: 9, scope: !3158)
!3179 = !DILocation(line: 203, column: 11, scope: !3158)
!3180 = !DILocation(line: 203, column: 15, scope: !3158)
!3181 = !DILocation(line: 203, column: 9, scope: !3158)
!3182 = !DILocation(line: 204, column: 11, scope: !3158)
!3183 = !DILocation(line: 204, column: 15, scope: !3158)
!3184 = !DILocation(line: 204, column: 9, scope: !3158)
!3185 = !DILocation(line: 205, column: 11, scope: !3158)
!3186 = !DILocation(line: 205, column: 9, scope: !3158)
!3187 = !DILocation(line: 206, column: 42, scope: !3158)
!3188 = !DILocation(line: 206, column: 5, scope: !3158)
!3189 = !DILocation(line: 209, column: 1, scope: !3158)
!3190 = distinct !DISubprogram(name: "cmnCpuClkConfigureToXtal", scope: !371, file: !371, line: 216, type: !75, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !3191)
!3191 = !{!3192, !3193}
!3192 = !DILocalVariable(name: "reg", scope: !3190, file: !371, line: 218, type: !215)
!3193 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !3190, file: !371, line: 219, type: !375)
!3194 = !DILocation(line: 218, column: 5, scope: !3190)
!3195 = !DILocation(line: 218, column: 23, scope: !3190)
!3196 = !DILocation(line: 0, scope: !3190)
!3197 = !DILocation(line: 222, column: 11, scope: !3190)
!3198 = !DILocation(line: 222, column: 9, scope: !3190)
!3199 = !DILocation(line: 223, column: 11, scope: !3190)
!3200 = !DILocation(line: 223, column: 15, scope: !3190)
!3201 = !DILocation(line: 223, column: 9, scope: !3190)
!3202 = !DILocation(line: 224, column: 11, scope: !3190)
!3203 = !DILocation(line: 224, column: 9, scope: !3190)
!3204 = !DILocation(line: 225, column: 39, scope: !3190)
!3205 = !DILocation(line: 225, column: 5, scope: !3190)
!3206 = !DILocation(line: 228, column: 11, scope: !3190)
!3207 = !DILocation(line: 228, column: 9, scope: !3190)
!3208 = !DILocation(line: 229, column: 11, scope: !3190)
!3209 = !DILocation(line: 229, column: 15, scope: !3190)
!3210 = !DILocation(line: 229, column: 9, scope: !3190)
!3211 = !DILocation(line: 230, column: 11, scope: !3190)
!3212 = !DILocation(line: 230, column: 9, scope: !3190)
!3213 = !DILocation(line: 231, column: 39, scope: !3190)
!3214 = !DILocation(line: 231, column: 5, scope: !3190)
!3215 = !DILocation(line: 233, column: 5, scope: !3190)
!3216 = !DILocation(line: 233, column: 12, scope: !3190)
!3217 = !DILocation(line: 233, column: 19, scope: !3190)
!3218 = !DILocation(line: 233, column: 16, scope: !3190)
!3219 = distinct !{!3219, !3215, !3220}
!3220 = !DILocation(line: 233, column: 52, scope: !3190)
!3221 = !DILocation(line: 235, column: 21, scope: !3190)
!3222 = !DILocation(line: 235, column: 19, scope: !3190)
!3223 = !DILocation(line: 236, column: 5, scope: !3190)
!3224 = !DILocation(line: 237, column: 17, scope: !3190)
!3225 = !DILocation(line: 237, column: 33, scope: !3190)
!3226 = !DILocation(line: 237, column: 5, scope: !3190)
!3227 = !DILocation(line: 239, column: 1, scope: !3190)
!3228 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo192M", scope: !371, file: !371, line: 246, type: !75, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !3229)
!3229 = !{!3230, !3231}
!3230 = !DILocalVariable(name: "reg", scope: !3228, file: !371, line: 248, type: !215)
!3231 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !3228, file: !371, line: 249, type: !375)
!3232 = !DILocation(line: 248, column: 5, scope: !3228)
!3233 = !DILocation(line: 248, column: 23, scope: !3228)
!3234 = !DILocation(line: 0, scope: !3228)
!3235 = !DILocation(line: 252, column: 5, scope: !3228)
!3236 = !DILocation(line: 255, column: 11, scope: !3228)
!3237 = !DILocation(line: 255, column: 9, scope: !3228)
!3238 = !DILocation(line: 256, column: 11, scope: !3228)
!3239 = !DILocation(line: 256, column: 15, scope: !3228)
!3240 = !DILocation(line: 256, column: 9, scope: !3228)
!3241 = !DILocation(line: 257, column: 11, scope: !3228)
!3242 = !DILocation(line: 257, column: 15, scope: !3228)
!3243 = !DILocation(line: 257, column: 9, scope: !3228)
!3244 = !DILocation(line: 258, column: 39, scope: !3228)
!3245 = !DILocation(line: 258, column: 5, scope: !3228)
!3246 = !DILocation(line: 260, column: 5, scope: !3228)
!3247 = !DILocation(line: 260, column: 12, scope: !3228)
!3248 = !DILocation(line: 260, column: 19, scope: !3228)
!3249 = !DILocation(line: 260, column: 16, scope: !3228)
!3250 = distinct !{!3250, !3246, !3251}
!3251 = !DILocation(line: 260, column: 52, scope: !3228)
!3252 = !DILocation(line: 263, column: 11, scope: !3228)
!3253 = !DILocation(line: 263, column: 9, scope: !3228)
!3254 = !DILocation(line: 264, column: 11, scope: !3228)
!3255 = !DILocation(line: 264, column: 15, scope: !3228)
!3256 = !DILocation(line: 264, column: 9, scope: !3228)
!3257 = !DILocation(line: 265, column: 11, scope: !3228)
!3258 = !DILocation(line: 265, column: 15, scope: !3228)
!3259 = !DILocation(line: 265, column: 9, scope: !3228)
!3260 = !DILocation(line: 266, column: 39, scope: !3228)
!3261 = !DILocation(line: 266, column: 5, scope: !3228)
!3262 = !DILocation(line: 269, column: 11, scope: !3228)
!3263 = !DILocation(line: 269, column: 9, scope: !3228)
!3264 = !DILocation(line: 270, column: 11, scope: !3228)
!3265 = !DILocation(line: 270, column: 15, scope: !3228)
!3266 = !DILocation(line: 270, column: 9, scope: !3228)
!3267 = !DILocation(line: 271, column: 11, scope: !3228)
!3268 = !DILocation(line: 271, column: 15, scope: !3228)
!3269 = !DILocation(line: 271, column: 9, scope: !3228)
!3270 = !DILocation(line: 272, column: 39, scope: !3228)
!3271 = !DILocation(line: 272, column: 5, scope: !3228)
!3272 = !DILocation(line: 273, column: 19, scope: !3228)
!3273 = !DILocation(line: 274, column: 5, scope: !3228)
!3274 = !DILocation(line: 275, column: 17, scope: !3228)
!3275 = !DILocation(line: 275, column: 33, scope: !3228)
!3276 = !DILocation(line: 275, column: 5, scope: !3228)
!3277 = !DILocation(line: 277, column: 1, scope: !3228)
!3278 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo160M", scope: !371, file: !371, line: 284, type: !75, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !3279)
!3279 = !{!3280, !3281}
!3280 = !DILocalVariable(name: "reg", scope: !3278, file: !371, line: 286, type: !215)
!3281 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !3278, file: !371, line: 287, type: !375)
!3282 = !DILocation(line: 286, column: 5, scope: !3278)
!3283 = !DILocation(line: 286, column: 23, scope: !3278)
!3284 = !DILocation(line: 0, scope: !3278)
!3285 = !DILocation(line: 290, column: 5, scope: !3278)
!3286 = !DILocation(line: 293, column: 11, scope: !3278)
!3287 = !DILocation(line: 293, column: 9, scope: !3278)
!3288 = !DILocation(line: 294, column: 11, scope: !3278)
!3289 = !DILocation(line: 294, column: 15, scope: !3278)
!3290 = !DILocation(line: 294, column: 9, scope: !3278)
!3291 = !DILocation(line: 295, column: 11, scope: !3278)
!3292 = !DILocation(line: 295, column: 15, scope: !3278)
!3293 = !DILocation(line: 295, column: 9, scope: !3278)
!3294 = !DILocation(line: 296, column: 39, scope: !3278)
!3295 = !DILocation(line: 296, column: 5, scope: !3278)
!3296 = !DILocation(line: 298, column: 5, scope: !3278)
!3297 = !DILocation(line: 298, column: 12, scope: !3278)
!3298 = !DILocation(line: 298, column: 19, scope: !3278)
!3299 = !DILocation(line: 298, column: 16, scope: !3278)
!3300 = distinct !{!3300, !3296, !3301}
!3301 = !DILocation(line: 298, column: 52, scope: !3278)
!3302 = !DILocation(line: 301, column: 11, scope: !3278)
!3303 = !DILocation(line: 301, column: 9, scope: !3278)
!3304 = !DILocation(line: 302, column: 11, scope: !3278)
!3305 = !DILocation(line: 302, column: 15, scope: !3278)
!3306 = !DILocation(line: 302, column: 9, scope: !3278)
!3307 = !DILocation(line: 303, column: 11, scope: !3278)
!3308 = !DILocation(line: 303, column: 15, scope: !3278)
!3309 = !DILocation(line: 303, column: 9, scope: !3278)
!3310 = !DILocation(line: 304, column: 39, scope: !3278)
!3311 = !DILocation(line: 304, column: 5, scope: !3278)
!3312 = !DILocation(line: 307, column: 11, scope: !3278)
!3313 = !DILocation(line: 307, column: 9, scope: !3278)
!3314 = !DILocation(line: 308, column: 11, scope: !3278)
!3315 = !DILocation(line: 308, column: 15, scope: !3278)
!3316 = !DILocation(line: 308, column: 9, scope: !3278)
!3317 = !DILocation(line: 309, column: 11, scope: !3278)
!3318 = !DILocation(line: 309, column: 15, scope: !3278)
!3319 = !DILocation(line: 309, column: 9, scope: !3278)
!3320 = !DILocation(line: 310, column: 39, scope: !3278)
!3321 = !DILocation(line: 310, column: 5, scope: !3278)
!3322 = !DILocation(line: 311, column: 19, scope: !3278)
!3323 = !DILocation(line: 312, column: 5, scope: !3278)
!3324 = !DILocation(line: 313, column: 17, scope: !3278)
!3325 = !DILocation(line: 313, column: 33, scope: !3278)
!3326 = !DILocation(line: 313, column: 5, scope: !3278)
!3327 = !DILocation(line: 315, column: 1, scope: !3278)
!3328 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo64M", scope: !371, file: !371, line: 323, type: !75, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !3329)
!3329 = !{!3330, !3331}
!3330 = !DILocalVariable(name: "reg", scope: !3328, file: !371, line: 325, type: !215)
!3331 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !3328, file: !371, line: 326, type: !375)
!3332 = !DILocation(line: 325, column: 5, scope: !3328)
!3333 = !DILocation(line: 325, column: 23, scope: !3328)
!3334 = !DILocation(line: 0, scope: !3328)
!3335 = !DILocation(line: 329, column: 5, scope: !3328)
!3336 = !DILocation(line: 332, column: 11, scope: !3328)
!3337 = !DILocation(line: 332, column: 9, scope: !3328)
!3338 = !DILocation(line: 333, column: 11, scope: !3328)
!3339 = !DILocation(line: 333, column: 15, scope: !3328)
!3340 = !DILocation(line: 333, column: 9, scope: !3328)
!3341 = !DILocation(line: 334, column: 11, scope: !3328)
!3342 = !DILocation(line: 334, column: 9, scope: !3328)
!3343 = !DILocation(line: 335, column: 39, scope: !3328)
!3344 = !DILocation(line: 335, column: 5, scope: !3328)
!3345 = !DILocation(line: 337, column: 5, scope: !3328)
!3346 = !DILocation(line: 337, column: 12, scope: !3328)
!3347 = !DILocation(line: 337, column: 19, scope: !3328)
!3348 = !DILocation(line: 337, column: 16, scope: !3328)
!3349 = distinct !{!3349, !3345, !3350}
!3350 = !DILocation(line: 337, column: 52, scope: !3328)
!3351 = !DILocation(line: 340, column: 11, scope: !3328)
!3352 = !DILocation(line: 340, column: 9, scope: !3328)
!3353 = !DILocation(line: 341, column: 11, scope: !3328)
!3354 = !DILocation(line: 341, column: 15, scope: !3328)
!3355 = !DILocation(line: 341, column: 9, scope: !3328)
!3356 = !DILocation(line: 342, column: 11, scope: !3328)
!3357 = !DILocation(line: 342, column: 15, scope: !3328)
!3358 = !DILocation(line: 342, column: 9, scope: !3328)
!3359 = !DILocation(line: 343, column: 39, scope: !3328)
!3360 = !DILocation(line: 343, column: 5, scope: !3328)
!3361 = !DILocation(line: 344, column: 19, scope: !3328)
!3362 = !DILocation(line: 345, column: 5, scope: !3328)
!3363 = !DILocation(line: 346, column: 17, scope: !3328)
!3364 = !DILocation(line: 346, column: 33, scope: !3328)
!3365 = !DILocation(line: 346, column: 5, scope: !3328)
!3366 = !DILocation(line: 348, column: 1, scope: !3328)
!3367 = distinct !DISubprogram(name: "cmnSerialFlashClkConfToXtal", scope: !371, file: !371, line: 353, type: !75, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !3368)
!3368 = !{!3369, !3370}
!3369 = !DILocalVariable(name: "reg", scope: !3367, file: !371, line: 355, type: !79)
!3370 = !DILocalVariable(name: "pTopCfgHclk", scope: !3367, file: !371, line: 356, type: !376)
!3371 = !DILocation(line: 355, column: 5, scope: !3367)
!3372 = !DILocation(line: 355, column: 21, scope: !3367)
!3373 = !DILocation(line: 0, scope: !3367)
!3374 = !DILocation(line: 358, column: 11, scope: !3367)
!3375 = !DILocation(line: 358, column: 9, scope: !3367)
!3376 = !DILocation(line: 359, column: 11, scope: !3367)
!3377 = !DILocation(line: 359, column: 15, scope: !3367)
!3378 = !DILocation(line: 359, column: 9, scope: !3367)
!3379 = !DILocation(line: 360, column: 11, scope: !3367)
!3380 = !DILocation(line: 360, column: 9, scope: !3367)
!3381 = !DILocation(line: 361, column: 37, scope: !3367)
!3382 = !DILocation(line: 361, column: 5, scope: !3367)
!3383 = !DILocation(line: 362, column: 1, scope: !3367)
!3384 = distinct !DISubprogram(name: "getc", scope: !383, file: !383, line: 68, type: !3385, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3387)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!13}
!3387 = !{!3388}
!3388 = !DILocalVariable(name: "rc", scope: !3384, file: !383, line: 71, type: !13)
!3389 = !DILocation(line: 71, column: 14, scope: !3384)
!3390 = !DILocation(line: 0, scope: !3384)
!3391 = !DILocation(line: 72, column: 5, scope: !3384)
!3392 = distinct !DISubprogram(name: "getc_nowait", scope: !383, file: !383, line: 80, type: !3385, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3393)
!3393 = !{!3394}
!3394 = !DILocalVariable(name: "c", scope: !3392, file: !383, line: 82, type: !674)
!3395 = !DILocation(line: 84, column: 9, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3392, file: !383, line: 84, column: 9)
!3397 = !DILocation(line: 84, column: 40, scope: !3396)
!3398 = !DILocation(line: 84, column: 9, scope: !3392)
!3399 = !DILocation(line: 85, column: 13, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3396, file: !383, line: 84, column: 47)
!3401 = !DILocation(line: 86, column: 16, scope: !3400)
!3402 = !DILocation(line: 0, scope: !3392)
!3403 = !DILocation(line: 86, column: 9, scope: !3400)
!3404 = !DILocation(line: 0, scope: !3396)
!3405 = !DILocation(line: 90, column: 1, scope: !3392)
!3406 = distinct !DISubprogram(name: "uart_output_char", scope: !383, file: !383, line: 93, type: !3407, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3410)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{null, !3409, !238}
!3409 = !DIDerivedType(tag: DW_TAG_typedef, name: "UART_PORT", file: !386, line: 75, baseType: !385)
!3410 = !{!3411, !3412, !3413}
!3411 = !DILocalVariable(name: "port_no", arg: 1, scope: !3406, file: !383, line: 93, type: !3409)
!3412 = !DILocalVariable(name: "c", arg: 2, scope: !3406, file: !383, line: 93, type: !238)
!3413 = !DILocalVariable(name: "base", scope: !3406, file: !383, line: 95, type: !7)
!3414 = !DILocation(line: 0, scope: !3406)
!3415 = !DILocation(line: 95, column: 25, scope: !3406)
!3416 = !DILocation(line: 97, column: 5, scope: !3406)
!3417 = !DILocation(line: 97, column: 14, scope: !3406)
!3418 = !DILocation(line: 97, column: 42, scope: !3406)
!3419 = !DILocation(line: 97, column: 12, scope: !3406)
!3420 = distinct !{!3420, !3416, !3421}
!3421 = !DILocation(line: 98, column: 9, scope: !3406)
!3422 = !DILocation(line: 99, column: 35, scope: !3406)
!3423 = !DILocation(line: 99, column: 5, scope: !3406)
!3424 = !DILocation(line: 99, column: 33, scope: !3406)
!3425 = !DILocation(line: 102, column: 1, scope: !3406)
!3426 = distinct !DISubprogram(name: "uart_input_char", scope: !383, file: !383, line: 106, type: !3427, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3429)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!236, !3409}
!3429 = !{!3430, !3431, !3432}
!3430 = !DILocalVariable(name: "port_no", arg: 1, scope: !3426, file: !383, line: 106, type: !3409)
!3431 = !DILocalVariable(name: "base", scope: !3426, file: !383, line: 108, type: !7)
!3432 = !DILocalVariable(name: "c", scope: !3426, file: !383, line: 109, type: !674)
!3433 = !DILocation(line: 0, scope: !3426)
!3434 = !DILocation(line: 108, column: 25, scope: !3426)
!3435 = !DILocation(line: 111, column: 5, scope: !3426)
!3436 = !DILocation(line: 111, column: 14, scope: !3426)
!3437 = !DILocation(line: 111, column: 42, scope: !3426)
!3438 = !DILocation(line: 111, column: 12, scope: !3426)
!3439 = distinct !{!3439, !3435, !3440}
!3440 = !DILocation(line: 112, column: 9, scope: !3426)
!3441 = !DILocation(line: 114, column: 9, scope: !3426)
!3442 = !DILocation(line: 116, column: 5, scope: !3426)
!3443 = distinct !DISubprogram(name: "uart_input_char_unblocking", scope: !383, file: !383, line: 120, type: !3444, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3446)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!204, !3409}
!3446 = !{!3447, !3448, !3449}
!3447 = !DILocalVariable(name: "port_no", arg: 1, scope: !3443, file: !383, line: 120, type: !3409)
!3448 = !DILocalVariable(name: "base", scope: !3443, file: !383, line: 122, type: !7)
!3449 = !DILocalVariable(name: "c", scope: !3443, file: !383, line: 123, type: !674)
!3450 = !DILocation(line: 0, scope: !3443)
!3451 = !DILocation(line: 122, column: 25, scope: !3443)
!3452 = !DILocation(line: 125, column: 9, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3443, file: !383, line: 125, column: 9)
!3454 = !DILocation(line: 125, column: 37, scope: !3453)
!3455 = !DILocation(line: 125, column: 9, scope: !3443)
!3456 = !DILocation(line: 126, column: 13, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3453, file: !383, line: 125, column: 44)
!3458 = !DILocation(line: 127, column: 16, scope: !3457)
!3459 = !DILocation(line: 127, column: 9, scope: !3457)
!3460 = !DILocation(line: 0, scope: !3453)
!3461 = !DILocation(line: 131, column: 1, scope: !3443)
!3462 = distinct !DISubprogram(name: "halUART_HWInit", scope: !383, file: !383, line: 136, type: !3463, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3465)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{null, !3409}
!3465 = !{!3466}
!3466 = !DILocalVariable(name: "u_port", arg: 1, scope: !3462, file: !383, line: 136, type: !3409)
!3467 = !DILocation(line: 0, scope: !3462)
!3468 = !DILocation(line: 139, column: 5, scope: !3462)
!3469 = !DILocation(line: 140, column: 9, scope: !3462)
!3470 = !DILocation(line: 153, column: 5, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3472, file: !383, line: 147, column: 38)
!3472 = distinct !DILexicalBlock(scope: !3473, file: !383, line: 147, column: 16)
!3473 = distinct !DILexicalBlock(scope: !3462, file: !383, line: 140, column: 9)
!3474 = !DILocation(line: 0, scope: !3473)
!3475 = !DILocation(line: 155, column: 1, scope: !3462)
!3476 = distinct !DISubprogram(name: "halUART_SetFormat", scope: !383, file: !383, line: 158, type: !3477, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3481)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{null, !3409, !204, !3479, !3479, !3479}
!3479 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !205, line: 36, baseType: !3480)
!3480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !207, line: 57, baseType: !412)
!3481 = !{!3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3497, !3498}
!3482 = !DILocalVariable(name: "u_port", arg: 1, scope: !3476, file: !383, line: 158, type: !3409)
!3483 = !DILocalVariable(name: "baudrate", arg: 2, scope: !3476, file: !383, line: 158, type: !204)
!3484 = !DILocalVariable(name: "databit", arg: 3, scope: !3476, file: !383, line: 158, type: !3479)
!3485 = !DILocalVariable(name: "parity", arg: 4, scope: !3476, file: !383, line: 158, type: !3479)
!3486 = !DILocalVariable(name: "stopbit", arg: 5, scope: !3476, file: !383, line: 158, type: !3479)
!3487 = !DILocalVariable(name: "control_word", scope: !3476, file: !383, line: 160, type: !3479)
!3488 = !DILocalVariable(name: "UART_BASE", scope: !3476, file: !383, line: 161, type: !204)
!3489 = !DILocalVariable(name: "data", scope: !3476, file: !383, line: 162, type: !204)
!3490 = !DILocalVariable(name: "uart_lcr", scope: !3476, file: !383, line: 162, type: !204)
!3491 = !DILocalVariable(name: "high_speed_div", scope: !3476, file: !383, line: 162, type: !204)
!3492 = !DILocalVariable(name: "sample_count", scope: !3476, file: !383, line: 162, type: !204)
!3493 = !DILocalVariable(name: "sample_point", scope: !3476, file: !383, line: 162, type: !204)
!3494 = !DILocalVariable(name: "fraction", scope: !3476, file: !383, line: 162, type: !204)
!3495 = !DILocalVariable(name: "fraction_L_mapping", scope: !3476, file: !383, line: 163, type: !3496)
!3496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3479, size: 176, elements: !1017)
!3497 = !DILocalVariable(name: "fraction_M_mapping", scope: !3476, file: !383, line: 164, type: !3496)
!3498 = !DILocalVariable(name: "status", scope: !3476, file: !383, line: 165, type: !285)
!3499 = !DILocation(line: 0, scope: !3476)
!3500 = !DILocation(line: 163, column: 15, scope: !3476)
!3501 = !DILocation(line: 164, column: 15, scope: !3476)
!3502 = !DILocation(line: 166, column: 20, scope: !3476)
!3503 = !DILocation(line: 166, column: 18, scope: !3476)
!3504 = !DILocation(line: 168, column: 9, scope: !3476)
!3505 = !DILocation(line: 176, column: 5, scope: !3476)
!3506 = !DILocation(line: 176, column: 44, scope: !3476)
!3507 = !DILocation(line: 177, column: 16, scope: !3476)
!3508 = !DILocation(line: 178, column: 50, scope: !3476)
!3509 = !DILocation(line: 178, column: 38, scope: !3476)
!3510 = !DILocation(line: 179, column: 12, scope: !3476)
!3511 = !DILocation(line: 179, column: 25, scope: !3476)
!3512 = !DILocation(line: 180, column: 28, scope: !3476)
!3513 = !DILocation(line: 180, column: 34, scope: !3476)
!3514 = !DILocation(line: 182, column: 29, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3476, file: !383, line: 181, column: 5)
!3516 = !DILocation(line: 182, column: 46, scope: !3515)
!3517 = !DILocation(line: 183, column: 26, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3515, file: !383, line: 183, column: 13)
!3519 = !DILocation(line: 183, column: 13, scope: !3515)
!3520 = !DILocation(line: 192, column: 30, scope: !3476)
!3521 = !DILocation(line: 192, column: 35, scope: !3476)
!3522 = !DILocation(line: 192, column: 46, scope: !3476)
!3523 = !DILocation(line: 192, column: 74, scope: !3476)
!3524 = !DILocation(line: 192, column: 53, scope: !3476)
!3525 = !DILocation(line: 192, column: 80, scope: !3476)
!3526 = !DILocation(line: 193, column: 56, scope: !3476)
!3527 = !DILocation(line: 193, column: 5, scope: !3476)
!3528 = !DILocation(line: 193, column: 38, scope: !3476)
!3529 = !DILocation(line: 194, column: 57, scope: !3476)
!3530 = !DILocation(line: 194, column: 63, scope: !3476)
!3531 = !DILocation(line: 194, column: 5, scope: !3476)
!3532 = !DILocation(line: 194, column: 38, scope: !3476)
!3533 = !DILocation(line: 195, column: 5, scope: !3476)
!3534 = !DILocation(line: 195, column: 45, scope: !3476)
!3535 = !DILocation(line: 196, column: 5, scope: !3476)
!3536 = !DILocation(line: 196, column: 47, scope: !3476)
!3537 = !DILocation(line: 197, column: 46, scope: !3476)
!3538 = !DILocation(line: 197, column: 5, scope: !3476)
!3539 = !DILocation(line: 197, column: 44, scope: !3476)
!3540 = !DILocation(line: 198, column: 46, scope: !3476)
!3541 = !DILocation(line: 198, column: 5, scope: !3476)
!3542 = !DILocation(line: 198, column: 44, scope: !3476)
!3543 = !DILocation(line: 199, column: 38, scope: !3476)
!3544 = !DILocation(line: 200, column: 5, scope: !3476)
!3545 = !DILocation(line: 200, column: 38, scope: !3476)
!3546 = !DILocation(line: 202, column: 20, scope: !3476)
!3547 = !DILocation(line: 203, column: 18, scope: !3476)
!3548 = !DILocation(line: 205, column: 18, scope: !3476)
!3549 = !DILocation(line: 207, column: 18, scope: !3476)
!3550 = !DILocation(line: 208, column: 18, scope: !3476)
!3551 = !DILocation(line: 209, column: 5, scope: !3476)
!3552 = !DILocation(line: 213, column: 1, scope: !3476)
!3553 = distinct !DISubprogram(name: "halUART_Get_VFIFO_Length", scope: !383, file: !383, line: 215, type: !3554, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3557)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{null, !3409, !285, !3556}
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 32)
!3557 = !{!3558, !3559, !3560}
!3558 = !DILocalVariable(name: "u_port", arg: 1, scope: !3553, file: !383, line: 215, type: !3409)
!3559 = !DILocalVariable(name: "is_rx", arg: 2, scope: !3553, file: !383, line: 215, type: !285)
!3560 = !DILocalVariable(name: "length", arg: 3, scope: !3553, file: !383, line: 215, type: !3556)
!3561 = !DILocation(line: 0, scope: !3553)
!3562 = !DILocation(line: 217, column: 16, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3553, file: !383, line: 217, column: 9)
!3564 = !DILocation(line: 0, scope: !3563)
!3565 = !DILocation(line: 217, column: 9, scope: !3553)
!3566 = !DILocation(line: 218, column: 13, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3563, file: !383, line: 217, column: 31)
!3568 = !DILocation(line: 219, column: 23, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3570, file: !383, line: 218, column: 20)
!3570 = distinct !DILexicalBlock(scope: !3567, file: !383, line: 218, column: 13)
!3571 = !DILocation(line: 220, column: 9, scope: !3569)
!3572 = !DILocation(line: 221, column: 23, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3570, file: !383, line: 220, column: 16)
!3574 = !DILocation(line: 221, column: 21, scope: !3573)
!3575 = !DILocation(line: 222, column: 24, scope: !3573)
!3576 = !DILocation(line: 222, column: 21, scope: !3573)
!3577 = !DILocation(line: 225, column: 13, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3563, file: !383, line: 224, column: 12)
!3579 = !DILocation(line: 226, column: 23, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3581, file: !383, line: 225, column: 20)
!3581 = distinct !DILexicalBlock(scope: !3578, file: !383, line: 225, column: 13)
!3582 = !DILocation(line: 227, column: 9, scope: !3580)
!3583 = !DILocation(line: 228, column: 23, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !3581, file: !383, line: 227, column: 16)
!3585 = !DILocation(line: 228, column: 21, scope: !3584)
!3586 = !DILocation(line: 229, column: 24, scope: !3584)
!3587 = !DILocation(line: 229, column: 21, scope: !3584)
!3588 = !DILocation(line: 233, column: 5, scope: !3553)
!3589 = distinct !DISubprogram(name: "halUART_Read_VFIFO_Data", scope: !383, file: !383, line: 236, type: !3590, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3592)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{null, !3409, !722, !204}
!3592 = !{!3593, !3594, !3595, !3596}
!3593 = !DILocalVariable(name: "u_port", arg: 1, scope: !3589, file: !383, line: 236, type: !3409)
!3594 = !DILocalVariable(name: "data", arg: 2, scope: !3589, file: !383, line: 236, type: !722)
!3595 = !DILocalVariable(name: "length", arg: 3, scope: !3589, file: !383, line: 236, type: !204)
!3596 = !DILocalVariable(name: "idx", scope: !3589, file: !383, line: 238, type: !80)
!3597 = !DILocation(line: 0, scope: !3589)
!3598 = !DILocation(line: 239, column: 23, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3600, file: !383, line: 239, column: 5)
!3600 = distinct !DILexicalBlock(scope: !3589, file: !383, line: 239, column: 5)
!3601 = !DILocation(line: 239, column: 5, scope: !3600)
!3602 = !DILocation(line: 240, column: 13, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3599, file: !383, line: 239, column: 40)
!3604 = !DILocation(line: 244, column: 9, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3606, file: !383, line: 242, column: 42)
!3606 = distinct !DILexicalBlock(scope: !3607, file: !383, line: 242, column: 20)
!3607 = distinct !DILexicalBlock(scope: !3603, file: !383, line: 240, column: 13)
!3608 = !DILocation(line: 0, scope: !3607)
!3609 = !DILocation(line: 239, column: 36, scope: !3599)
!3610 = distinct !{!3610, !3601, !3611}
!3611 = !DILocation(line: 246, column: 5, scope: !3600)
!3612 = !DILocation(line: 249, column: 1, scope: !3589)
!3613 = distinct !DISubprogram(name: "halUART_Write_VFIFO_Data", scope: !383, file: !383, line: 251, type: !3614, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3618)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{null, !3409, !3616, !204}
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 32)
!3617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!3618 = !{!3619, !3620, !3621, !3622}
!3619 = !DILocalVariable(name: "u_port", arg: 1, scope: !3613, file: !383, line: 251, type: !3409)
!3620 = !DILocalVariable(name: "data", arg: 2, scope: !3613, file: !383, line: 251, type: !3616)
!3621 = !DILocalVariable(name: "length", arg: 3, scope: !3613, file: !383, line: 251, type: !204)
!3622 = !DILocalVariable(name: "idx", scope: !3613, file: !383, line: 253, type: !80)
!3623 = !DILocation(line: 0, scope: !3613)
!3624 = !DILocation(line: 254, column: 23, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3626, file: !383, line: 254, column: 5)
!3626 = distinct !DILexicalBlock(scope: !3613, file: !383, line: 254, column: 5)
!3627 = !DILocation(line: 254, column: 5, scope: !3626)
!3628 = !DILocation(line: 255, column: 13, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3625, file: !383, line: 254, column: 40)
!3630 = !DILocation(line: 256, column: 61, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3632, file: !383, line: 255, column: 35)
!3632 = distinct !DILexicalBlock(scope: !3629, file: !383, line: 255, column: 13)
!3633 = !DILocation(line: 256, column: 59, scope: !3631)
!3634 = !DILocation(line: 257, column: 9, scope: !3631)
!3635 = !DILocation(line: 258, column: 61, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3637, file: !383, line: 257, column: 42)
!3637 = distinct !DILexicalBlock(scope: !3632, file: !383, line: 257, column: 20)
!3638 = !DILocation(line: 258, column: 59, scope: !3636)
!3639 = !DILocation(line: 259, column: 9, scope: !3636)
!3640 = !DILocation(line: 254, column: 36, scope: !3625)
!3641 = distinct !{!3641, !3627, !3642}
!3642 = !DILocation(line: 261, column: 5, scope: !3626)
!3643 = !DILocation(line: 264, column: 1, scope: !3613)
!3644 = distinct !DISubprogram(name: "halUART_Tx_VFIFO_Initialize", scope: !383, file: !383, line: 266, type: !3645, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3647)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{null, !3409, !722, !204, !204}
!3647 = !{!3648, !3649, !3650, !3651}
!3648 = !DILocalVariable(name: "u_port", arg: 1, scope: !3644, file: !383, line: 266, type: !3409)
!3649 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !3644, file: !383, line: 266, type: !722)
!3650 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !3644, file: !383, line: 266, type: !204)
!3651 = !DILocalVariable(name: "threshold", arg: 4, scope: !3644, file: !383, line: 266, type: !204)
!3652 = !DILocation(line: 0, scope: !3644)
!3653 = !DILocation(line: 268, column: 9, scope: !3644)
!3654 = !DILocation(line: 274, column: 5, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3656, file: !383, line: 271, column: 38)
!3656 = distinct !DILexicalBlock(scope: !3657, file: !383, line: 271, column: 16)
!3657 = distinct !DILexicalBlock(scope: !3644, file: !383, line: 268, column: 9)
!3658 = !DILocation(line: 0, scope: !3657)
!3659 = !DILocation(line: 276, column: 1, scope: !3644)
!3660 = distinct !DISubprogram(name: "halUART_Rx_VFIFO_Initialize", scope: !383, file: !383, line: 278, type: !3661, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3663)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{null, !3409, !722, !204, !204, !204, !204}
!3663 = !{!3664, !3665, !3666, !3667, !3668, !3669}
!3664 = !DILocalVariable(name: "u_port", arg: 1, scope: !3660, file: !383, line: 278, type: !3409)
!3665 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !3660, file: !383, line: 278, type: !722)
!3666 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !3660, file: !383, line: 278, type: !204)
!3667 = !DILocalVariable(name: "alert_length", arg: 4, scope: !3660, file: !383, line: 278, type: !204)
!3668 = !DILocalVariable(name: "threshold", arg: 5, scope: !3660, file: !383, line: 278, type: !204)
!3669 = !DILocalVariable(name: "timeout", arg: 6, scope: !3660, file: !383, line: 278, type: !204)
!3670 = !DILocation(line: 0, scope: !3660)
!3671 = !DILocation(line: 280, column: 9, scope: !3660)
!3672 = !DILocation(line: 286, column: 5, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3674, file: !383, line: 283, column: 38)
!3674 = distinct !DILexicalBlock(scope: !3675, file: !383, line: 283, column: 16)
!3675 = distinct !DILexicalBlock(scope: !3660, file: !383, line: 280, column: 9)
!3676 = !DILocation(line: 0, scope: !3675)
!3677 = !DILocation(line: 288, column: 1, scope: !3660)
!3678 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_Callback", scope: !383, file: !383, line: 290, type: !3679, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3681)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{null, !3409, !681}
!3681 = !{!3682, !3683}
!3682 = !DILocalVariable(name: "u_port", arg: 1, scope: !3678, file: !383, line: 290, type: !3409)
!3683 = !DILocalVariable(name: "func", arg: 2, scope: !3678, file: !383, line: 290, type: !681)
!3684 = !DILocation(line: 0, scope: !3678)
!3685 = !DILocation(line: 292, column: 9, scope: !3678)
!3686 = !DILocation(line: 296, column: 5, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3688, file: !383, line: 294, column: 38)
!3688 = distinct !DILexicalBlock(scope: !3689, file: !383, line: 294, column: 16)
!3689 = distinct !DILexicalBlock(scope: !3678, file: !383, line: 292, column: 9)
!3690 = !DILocation(line: 0, scope: !3689)
!3691 = !DILocation(line: 298, column: 1, scope: !3678)
!3692 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_TO_Callback", scope: !383, file: !383, line: 300, type: !3679, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3693)
!3693 = !{!3694, !3695}
!3694 = !DILocalVariable(name: "u_port", arg: 1, scope: !3692, file: !383, line: 300, type: !3409)
!3695 = !DILocalVariable(name: "func", arg: 2, scope: !3692, file: !383, line: 300, type: !681)
!3696 = !DILocation(line: 0, scope: !3692)
!3697 = !DILocation(line: 302, column: 9, scope: !3692)
!3698 = !DILocation(line: 306, column: 5, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3700, file: !383, line: 304, column: 38)
!3700 = distinct !DILexicalBlock(scope: !3701, file: !383, line: 304, column: 16)
!3701 = distinct !DILexicalBlock(scope: !3692, file: !383, line: 302, column: 9)
!3702 = !DILocation(line: 0, scope: !3701)
!3703 = !DILocation(line: 308, column: 1, scope: !3692)
!3704 = distinct !DISubprogram(name: "uart_set_hardware_flowcontrol", scope: !383, file: !383, line: 310, type: !3463, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3705)
!3705 = !{!3706, !3707, !3708, !3709}
!3706 = !DILocalVariable(name: "u_port", arg: 1, scope: !3704, file: !383, line: 310, type: !3409)
!3707 = !DILocalVariable(name: "base", scope: !3704, file: !383, line: 312, type: !7)
!3708 = !DILocalVariable(name: "EFR", scope: !3704, file: !383, line: 313, type: !3479)
!3709 = !DILocalVariable(name: "LCR", scope: !3704, file: !383, line: 313, type: !3479)
!3710 = !DILocation(line: 0, scope: !3704)
!3711 = !DILocation(line: 312, column: 25, scope: !3704)
!3712 = !DILocation(line: 315, column: 11, scope: !3704)
!3713 = !DILocation(line: 317, column: 33, scope: !3704)
!3714 = !DILocation(line: 318, column: 11, scope: !3704)
!3715 = !DILocation(line: 320, column: 35, scope: !3704)
!3716 = !DILocation(line: 320, column: 33, scope: !3704)
!3717 = !DILocation(line: 322, column: 5, scope: !3704)
!3718 = !DILocation(line: 322, column: 39, scope: !3704)
!3719 = !DILocation(line: 324, column: 33, scope: !3704)
!3720 = !DILocation(line: 325, column: 5, scope: !3704)
!3721 = !DILocation(line: 325, column: 33, scope: !3704)
!3722 = !DILocation(line: 327, column: 35, scope: !3704)
!3723 = !DILocation(line: 327, column: 33, scope: !3704)
!3724 = !DILocation(line: 328, column: 1, scope: !3704)
!3725 = distinct !DISubprogram(name: "uart_set_software_flowcontrol", scope: !383, file: !383, line: 330, type: !3726, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3728)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{null, !3409, !236, !236, !236}
!3728 = !{!3729, !3730, !3731, !3732, !3733, !3734, !3735}
!3729 = !DILocalVariable(name: "u_port", arg: 1, scope: !3725, file: !383, line: 330, type: !3409)
!3730 = !DILocalVariable(name: "xon", arg: 2, scope: !3725, file: !383, line: 330, type: !236)
!3731 = !DILocalVariable(name: "xoff", arg: 3, scope: !3725, file: !383, line: 330, type: !236)
!3732 = !DILocalVariable(name: "escape_character", arg: 4, scope: !3725, file: !383, line: 330, type: !236)
!3733 = !DILocalVariable(name: "base", scope: !3725, file: !383, line: 332, type: !7)
!3734 = !DILocalVariable(name: "EFR", scope: !3725, file: !383, line: 333, type: !3479)
!3735 = !DILocalVariable(name: "LCR", scope: !3725, file: !383, line: 333, type: !3479)
!3736 = !DILocation(line: 0, scope: !3725)
!3737 = !DILocation(line: 332, column: 25, scope: !3725)
!3738 = !DILocation(line: 335, column: 11, scope: !3725)
!3739 = !DILocation(line: 337, column: 33, scope: !3725)
!3740 = !DILocation(line: 338, column: 36, scope: !3725)
!3741 = !DILocation(line: 338, column: 5, scope: !3725)
!3742 = !DILocation(line: 338, column: 34, scope: !3725)
!3743 = !DILocation(line: 339, column: 5, scope: !3725)
!3744 = !DILocation(line: 339, column: 34, scope: !3725)
!3745 = !DILocation(line: 340, column: 37, scope: !3725)
!3746 = !DILocation(line: 340, column: 5, scope: !3725)
!3747 = !DILocation(line: 340, column: 35, scope: !3725)
!3748 = !DILocation(line: 341, column: 5, scope: !3725)
!3749 = !DILocation(line: 341, column: 35, scope: !3725)
!3750 = !DILocation(line: 343, column: 11, scope: !3725)
!3751 = !DILocation(line: 345, column: 35, scope: !3725)
!3752 = !DILocation(line: 345, column: 33, scope: !3725)
!3753 = !DILocation(line: 347, column: 35, scope: !3725)
!3754 = !DILocation(line: 347, column: 33, scope: !3725)
!3755 = !DILocation(line: 349, column: 43, scope: !3725)
!3756 = !DILocation(line: 349, column: 5, scope: !3725)
!3757 = !DILocation(line: 349, column: 41, scope: !3725)
!3758 = !DILocation(line: 350, column: 5, scope: !3725)
!3759 = !DILocation(line: 350, column: 39, scope: !3725)
!3760 = !DILocation(line: 351, column: 1, scope: !3725)
!3761 = distinct !DISubprogram(name: "uart_disable_flowcontrol", scope: !383, file: !383, line: 353, type: !3463, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3762)
!3762 = !{!3763, !3764, !3765}
!3763 = !DILocalVariable(name: "u_port", arg: 1, scope: !3761, file: !383, line: 353, type: !3409)
!3764 = !DILocalVariable(name: "base", scope: !3761, file: !383, line: 355, type: !7)
!3765 = !DILocalVariable(name: "LCR", scope: !3761, file: !383, line: 356, type: !3479)
!3766 = !DILocation(line: 0, scope: !3761)
!3767 = !DILocation(line: 355, column: 25, scope: !3761)
!3768 = !DILocation(line: 358, column: 11, scope: !3761)
!3769 = !DILocation(line: 360, column: 33, scope: !3761)
!3770 = !DILocation(line: 362, column: 5, scope: !3761)
!3771 = !DILocation(line: 362, column: 33, scope: !3761)
!3772 = !DILocation(line: 364, column: 33, scope: !3761)
!3773 = !DILocation(line: 366, column: 35, scope: !3761)
!3774 = !DILocation(line: 366, column: 33, scope: !3761)
!3775 = !DILocation(line: 367, column: 1, scope: !3761)
!3776 = distinct !DISubprogram(name: "uart_reset_default_value", scope: !383, file: !383, line: 436, type: !3463, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3777)
!3777 = !{!3778, !3779}
!3778 = !DILocalVariable(name: "u_port", arg: 1, scope: !3776, file: !383, line: 436, type: !3409)
!3779 = !DILocalVariable(name: "base", scope: !3776, file: !383, line: 438, type: !7)
!3780 = !DILocation(line: 0, scope: !3776)
!3781 = !DILocation(line: 438, column: 25, scope: !3776)
!3782 = !DILocation(line: 440, column: 5, scope: !3776)
!3783 = !DILocation(line: 440, column: 33, scope: !3776)
!3784 = !DILocation(line: 441, column: 5, scope: !3776)
!3785 = !DILocation(line: 441, column: 33, scope: !3776)
!3786 = !DILocation(line: 442, column: 5, scope: !3776)
!3787 = !DILocation(line: 442, column: 34, scope: !3776)
!3788 = !DILocation(line: 443, column: 5, scope: !3776)
!3789 = !DILocation(line: 443, column: 35, scope: !3776)
!3790 = !DILocation(line: 445, column: 33, scope: !3776)
!3791 = !DILocation(line: 446, column: 5, scope: !3776)
!3792 = !DILocation(line: 446, column: 33, scope: !3776)
!3793 = !DILocation(line: 447, column: 5, scope: !3776)
!3794 = !DILocation(line: 447, column: 33, scope: !3776)
!3795 = !DILocation(line: 449, column: 33, scope: !3776)
!3796 = !DILocation(line: 450, column: 33, scope: !3776)
!3797 = !DILocation(line: 451, column: 33, scope: !3776)
!3798 = !DILocation(line: 453, column: 33, scope: !3776)
!3799 = !DILocation(line: 454, column: 33, scope: !3776)
!3800 = !DILocation(line: 455, column: 33, scope: !3776)
!3801 = !DILocation(line: 457, column: 33, scope: !3776)
!3802 = !DILocation(line: 458, column: 5, scope: !3776)
!3803 = !DILocation(line: 458, column: 33, scope: !3776)
!3804 = !DILocation(line: 459, column: 5, scope: !3776)
!3805 = !DILocation(line: 459, column: 39, scope: !3776)
!3806 = !DILocation(line: 460, column: 5, scope: !3776)
!3807 = !DILocation(line: 460, column: 40, scope: !3776)
!3808 = !DILocation(line: 461, column: 5, scope: !3776)
!3809 = !DILocation(line: 461, column: 42, scope: !3776)
!3810 = !DILocation(line: 462, column: 5, scope: !3776)
!3811 = !DILocation(line: 462, column: 42, scope: !3776)
!3812 = !DILocation(line: 463, column: 5, scope: !3776)
!3813 = !DILocation(line: 463, column: 35, scope: !3776)
!3814 = !DILocation(line: 464, column: 5, scope: !3776)
!3815 = !DILocation(line: 464, column: 41, scope: !3776)
!3816 = !DILocation(line: 465, column: 5, scope: !3776)
!3817 = !DILocation(line: 465, column: 39, scope: !3776)
!3818 = !DILocation(line: 466, column: 5, scope: !3776)
!3819 = !DILocation(line: 466, column: 38, scope: !3776)
!3820 = !DILocation(line: 467, column: 5, scope: !3776)
!3821 = !DILocation(line: 467, column: 42, scope: !3776)
!3822 = !DILocation(line: 468, column: 5, scope: !3776)
!3823 = !DILocation(line: 468, column: 45, scope: !3776)
!3824 = !DILocation(line: 469, column: 5, scope: !3776)
!3825 = !DILocation(line: 469, column: 39, scope: !3776)
!3826 = !DILocation(line: 470, column: 5, scope: !3776)
!3827 = !DILocation(line: 470, column: 39, scope: !3776)
!3828 = !DILocation(line: 471, column: 5, scope: !3776)
!3829 = !DILocation(line: 471, column: 42, scope: !3776)
!3830 = !DILocation(line: 472, column: 1, scope: !3776)
!3831 = distinct !DISubprogram(name: "uart_query_empty", scope: !383, file: !383, line: 474, type: !3463, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3832)
!3832 = !{!3833, !3834}
!3833 = !DILocalVariable(name: "u_port", arg: 1, scope: !3831, file: !383, line: 474, type: !3409)
!3834 = !DILocalVariable(name: "base", scope: !3831, file: !383, line: 476, type: !7)
!3835 = !DILocation(line: 0, scope: !3831)
!3836 = !DILocation(line: 476, column: 25, scope: !3831)
!3837 = !DILocation(line: 478, column: 5, scope: !3831)
!3838 = !DILocation(line: 478, column: 14, scope: !3831)
!3839 = !DILocation(line: 478, column: 42, scope: !3831)
!3840 = !DILocation(line: 478, column: 12, scope: !3831)
!3841 = distinct !{!3841, !3837, !3842}
!3842 = !DILocation(line: 478, column: 50, scope: !3831)
!3843 = !DILocation(line: 479, column: 1, scope: !3831)
!3844 = distinct !DISubprogram(name: "log_hal_fatal_internal", scope: !1080, file: !1080, line: 64, type: !3845, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1079, retainedNodes: !3847)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{null, !841, !13, !841, null}
!3847 = !{!3848, !3849, !3850, !3851, !3860}
!3848 = !DILocalVariable(name: "func", arg: 1, scope: !3844, file: !1080, line: 64, type: !841)
!3849 = !DILocalVariable(name: "line", arg: 2, scope: !3844, file: !1080, line: 64, type: !13)
!3850 = !DILocalVariable(name: "message", arg: 3, scope: !3844, file: !1080, line: 64, type: !841)
!3851 = !DILocalVariable(name: "ap", scope: !3844, file: !1080, line: 66, type: !3852)
!3852 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3853, line: 46, baseType: !3854)
!3853 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/stdio.h", directory: "/home/mjshen/RTOSExploration")
!3854 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3855, line: 32, baseType: !3856)
!3855 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stdarg.h", directory: "")
!3856 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1080, baseType: !3857)
!3857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !3858)
!3858 = !{!3859}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !3857, file: !1080, line: 66, baseType: !464, size: 32)
!3860 = !DILocalVariable(name: "mask", scope: !3844, file: !1080, line: 68, type: !204)
!3861 = !DILocation(line: 0, scope: !3844)
!3862 = !DILocation(line: 66, column: 5, scope: !3844)
!3863 = !DILocation(line: 66, column: 13, scope: !3844)
!3864 = !DILocation(line: 68, column: 5, scope: !3844)
!3865 = !DILocation(line: 69, column: 5, scope: !3844)
!3866 = !DILocation(line: 71, column: 5, scope: !3844)
!3867 = !DILocation(line: 72, column: 5, scope: !3844)
!3868 = !DILocation(line: 73, column: 5, scope: !3844)
!3869 = !DILocation(line: 75, column: 37, scope: !3844)
!3870 = !DILocation(line: 75, column: 5, scope: !3844)
!3871 = !DILocation(line: 77, column: 1, scope: !3844)
!3872 = distinct !DISubprogram(name: "log_hal_error_internal", scope: !1080, file: !1080, line: 78, type: !3845, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1079, retainedNodes: !3873)
!3873 = !{!3874, !3875, !3876, !3877, !3878}
!3874 = !DILocalVariable(name: "func", arg: 1, scope: !3872, file: !1080, line: 78, type: !841)
!3875 = !DILocalVariable(name: "line", arg: 2, scope: !3872, file: !1080, line: 78, type: !13)
!3876 = !DILocalVariable(name: "message", arg: 3, scope: !3872, file: !1080, line: 78, type: !841)
!3877 = !DILocalVariable(name: "ap", scope: !3872, file: !1080, line: 80, type: !3852)
!3878 = !DILocalVariable(name: "mask", scope: !3872, file: !1080, line: 82, type: !204)
!3879 = !DILocation(line: 0, scope: !3872)
!3880 = !DILocation(line: 80, column: 5, scope: !3872)
!3881 = !DILocation(line: 80, column: 13, scope: !3872)
!3882 = !DILocation(line: 82, column: 5, scope: !3872)
!3883 = !DILocation(line: 83, column: 5, scope: !3872)
!3884 = !DILocation(line: 85, column: 5, scope: !3872)
!3885 = !DILocation(line: 86, column: 5, scope: !3872)
!3886 = !DILocation(line: 87, column: 5, scope: !3872)
!3887 = !DILocation(line: 89, column: 37, scope: !3872)
!3888 = !DILocation(line: 89, column: 5, scope: !3872)
!3889 = !DILocation(line: 91, column: 1, scope: !3872)
!3890 = distinct !DISubprogram(name: "log_hal_warning_internal", scope: !1080, file: !1080, line: 92, type: !3845, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1079, retainedNodes: !3891)
!3891 = !{!3892, !3893, !3894, !3895, !3896}
!3892 = !DILocalVariable(name: "func", arg: 1, scope: !3890, file: !1080, line: 92, type: !841)
!3893 = !DILocalVariable(name: "line", arg: 2, scope: !3890, file: !1080, line: 92, type: !13)
!3894 = !DILocalVariable(name: "message", arg: 3, scope: !3890, file: !1080, line: 92, type: !841)
!3895 = !DILocalVariable(name: "ap", scope: !3890, file: !1080, line: 94, type: !3852)
!3896 = !DILocalVariable(name: "mask", scope: !3890, file: !1080, line: 96, type: !204)
!3897 = !DILocation(line: 0, scope: !3890)
!3898 = !DILocation(line: 94, column: 5, scope: !3890)
!3899 = !DILocation(line: 94, column: 13, scope: !3890)
!3900 = !DILocation(line: 96, column: 5, scope: !3890)
!3901 = !DILocation(line: 97, column: 5, scope: !3890)
!3902 = !DILocation(line: 99, column: 5, scope: !3890)
!3903 = !DILocation(line: 100, column: 5, scope: !3890)
!3904 = !DILocation(line: 101, column: 5, scope: !3890)
!3905 = !DILocation(line: 103, column: 37, scope: !3890)
!3906 = !DILocation(line: 103, column: 5, scope: !3890)
!3907 = !DILocation(line: 105, column: 1, scope: !3890)
!3908 = distinct !DISubprogram(name: "log_hal_info_internal", scope: !1080, file: !1080, line: 106, type: !3845, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1079, retainedNodes: !3909)
!3909 = !{!3910, !3911, !3912, !3913, !3914}
!3910 = !DILocalVariable(name: "func", arg: 1, scope: !3908, file: !1080, line: 106, type: !841)
!3911 = !DILocalVariable(name: "line", arg: 2, scope: !3908, file: !1080, line: 106, type: !13)
!3912 = !DILocalVariable(name: "message", arg: 3, scope: !3908, file: !1080, line: 106, type: !841)
!3913 = !DILocalVariable(name: "ap", scope: !3908, file: !1080, line: 108, type: !3852)
!3914 = !DILocalVariable(name: "mask", scope: !3908, file: !1080, line: 110, type: !204)
!3915 = !DILocation(line: 0, scope: !3908)
!3916 = !DILocation(line: 108, column: 5, scope: !3908)
!3917 = !DILocation(line: 108, column: 13, scope: !3908)
!3918 = !DILocation(line: 110, column: 5, scope: !3908)
!3919 = !DILocation(line: 111, column: 5, scope: !3908)
!3920 = !DILocation(line: 113, column: 5, scope: !3908)
!3921 = !DILocation(line: 114, column: 5, scope: !3908)
!3922 = !DILocation(line: 115, column: 5, scope: !3908)
!3923 = !DILocation(line: 117, column: 37, scope: !3908)
!3924 = !DILocation(line: 117, column: 5, scope: !3908)
!3925 = !DILocation(line: 119, column: 1, scope: !3908)
!3926 = distinct !DISubprogram(name: "log_hal_dump_internal", scope: !1080, file: !1080, line: 121, type: !3927, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1079, retainedNodes: !3931)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{null, !841, !13, !841, !3929, !13, null}
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 32)
!3930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3931 = !{!3932, !3933, !3934, !3935, !3936}
!3932 = !DILocalVariable(name: "func", arg: 1, scope: !3926, file: !1080, line: 121, type: !841)
!3933 = !DILocalVariable(name: "line", arg: 2, scope: !3926, file: !1080, line: 121, type: !13)
!3934 = !DILocalVariable(name: "message", arg: 3, scope: !3926, file: !1080, line: 121, type: !841)
!3935 = !DILocalVariable(name: "data", arg: 4, scope: !3926, file: !1080, line: 121, type: !3929)
!3936 = !DILocalVariable(name: "length", arg: 5, scope: !3926, file: !1080, line: 121, type: !13)
!3937 = !DILocation(line: 0, scope: !3926)
!3938 = !DILocation(line: 123, column: 1, scope: !3926)
!3939 = distinct !DISubprogram(name: "hal_eint_mask", scope: !420, file: !420, line: 228, type: !3940, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !3943)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{!3942, !497}
!3942 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_eint_status_t", file: !450, line: 209, baseType: !449)
!3943 = !{!3944, !3945}
!3944 = !DILocalVariable(name: "eint_number", arg: 1, scope: !3939, file: !420, line: 228, type: !497)
!3945 = !DILocalVariable(name: "gpio_pin", scope: !3939, file: !420, line: 230, type: !202)
!3946 = !DILocation(line: 0, scope: !3939)
!3947 = !DILocation(line: 230, column: 5, scope: !3939)
!3948 = !DILocation(line: 231, column: 14, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3939, file: !420, line: 231, column: 9)
!3950 = !DILocation(line: 231, column: 11, scope: !3949)
!3951 = !DILocation(line: 231, column: 9, scope: !3939)
!3952 = !DILocation(line: 232, column: 9, scope: !3953)
!3953 = distinct !DILexicalBlock(scope: !3949, file: !420, line: 231, column: 65)
!3954 = !DILocation(line: 233, column: 9, scope: !3953)
!3955 = !DILocation(line: 235, column: 19, scope: !3939)
!3956 = !DILocation(line: 235, column: 5, scope: !3939)
!3957 = !DILocation(line: 236, column: 5, scope: !3939)
!3958 = !DILocation(line: 236, column: 33, scope: !3939)
!3959 = !DILocation(line: 237, column: 5, scope: !3939)
!3960 = !DILocation(line: 238, column: 1, scope: !3939)
!3961 = distinct !DISubprogram(name: "hal_eint_convert_for_gpio", scope: !420, file: !420, line: 101, type: !3962, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !3965)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!285, !497, !3964}
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 32)
!3965 = !{!3966, !3967, !3968, !3969}
!3966 = !DILocalVariable(name: "eint_number", arg: 1, scope: !3961, file: !420, line: 101, type: !497)
!3967 = !DILocalVariable(name: "gpio_pin", arg: 2, scope: !3961, file: !420, line: 101, type: !3964)
!3968 = !DILocalVariable(name: "count", scope: !3961, file: !420, line: 103, type: !204)
!3969 = !DILocalVariable(name: "index", scope: !3961, file: !420, line: 104, type: !204)
!3970 = !DILocation(line: 0, scope: !3961)
!3971 = !DILocation(line: 105, column: 5, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3961, file: !420, line: 105, column: 5)
!3973 = !DILocation(line: 106, column: 36, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3975, file: !420, line: 106, column: 13)
!3975 = distinct !DILexicalBlock(scope: !3976, file: !420, line: 105, column: 45)
!3976 = distinct !DILexicalBlock(scope: !3972, file: !420, line: 105, column: 5)
!3977 = !DILocation(line: 106, column: 48, scope: !3974)
!3978 = !DILocation(line: 106, column: 13, scope: !3975)
!3979 = !DILocation(line: 107, column: 48, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !3974, file: !420, line: 106, column: 64)
!3981 = !DILocation(line: 107, column: 23, scope: !3980)
!3982 = !DILocation(line: 108, column: 13, scope: !3980)
!3983 = !DILocation(line: 105, column: 41, scope: !3976)
!3984 = !DILocation(line: 105, column: 27, scope: !3976)
!3985 = distinct !{!3985, !3971, !3986}
!3986 = !DILocation(line: 110, column: 5, scope: !3972)
!3987 = !DILocation(line: 112, column: 1, scope: !3961)
!3988 = distinct !DISubprogram(name: "hal_eint_unmask", scope: !420, file: !420, line: 240, type: !3940, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !3989)
!3989 = !{!3990, !3991}
!3990 = !DILocalVariable(name: "eint_number", arg: 1, scope: !3988, file: !420, line: 240, type: !497)
!3991 = !DILocalVariable(name: "gpio_pin", scope: !3988, file: !420, line: 242, type: !202)
!3992 = !DILocation(line: 0, scope: !3988)
!3993 = !DILocation(line: 242, column: 5, scope: !3988)
!3994 = !DILocation(line: 243, column: 14, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3988, file: !420, line: 243, column: 9)
!3996 = !DILocation(line: 243, column: 11, scope: !3995)
!3997 = !DILocation(line: 243, column: 9, scope: !3988)
!3998 = !DILocation(line: 244, column: 9, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3995, file: !420, line: 243, column: 65)
!4000 = !DILocation(line: 245, column: 9, scope: !3999)
!4001 = !DILocation(line: 247, column: 22, scope: !3988)
!4002 = !DILocation(line: 247, column: 6, scope: !3988)
!4003 = !DILocation(line: 248, column: 6, scope: !3988)
!4004 = !DILocation(line: 248, column: 34, scope: !3988)
!4005 = !DILocation(line: 249, column: 6, scope: !3988)
!4006 = !DILocation(line: 250, column: 1, scope: !3988)
!4007 = distinct !DISubprogram(name: "hal_eint_init", scope: !420, file: !420, line: 253, type: !4008, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !4018)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{!3942, !497, !4010}
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 32)
!4011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4012)
!4012 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_eint_config_t", file: !450, line: 225, baseType: !4013)
!4013 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !450, line: 222, size: 64, elements: !4014)
!4014 = !{!4015, !4017}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_mode", scope: !4013, file: !450, line: 223, baseType: !4016, size: 32)
!4016 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_eint_trigger_mode_t", file: !450, line: 200, baseType: !456)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "debounce_time", scope: !4013, file: !450, line: 224, baseType: !204, size: 32, offset: 32)
!4018 = !{!4019, !4020, !4021, !4022, !4023}
!4019 = !DILocalVariable(name: "eint_number", arg: 1, scope: !4007, file: !420, line: 253, type: !497)
!4020 = !DILocalVariable(name: "eint_config", arg: 2, scope: !4007, file: !420, line: 253, type: !4010)
!4021 = !DILocalVariable(name: "gpio_pin", scope: !4007, file: !420, line: 255, type: !202)
!4022 = !DILocalVariable(name: "ret_status", scope: !4007, file: !420, line: 256, type: !3942)
!4023 = !DILocalVariable(name: "callback_context", scope: !4024, file: !420, line: 278, type: !4026)
!4024 = distinct !DILexicalBlock(scope: !4025, file: !420, line: 277, column: 10)
!4025 = distinct !DILexicalBlock(scope: !4007, file: !420, line: 266, column: 9)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 32)
!4027 = !DILocation(line: 0, scope: !4007)
!4028 = !DILocation(line: 255, column: 5, scope: !4007)
!4029 = !DILocation(line: 257, column: 14, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !4007, file: !420, line: 257, column: 9)
!4031 = !DILocation(line: 257, column: 11, scope: !4030)
!4032 = !DILocation(line: 257, column: 9, scope: !4007)
!4033 = !DILocation(line: 258, column: 9, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4030, file: !420, line: 257, column: 65)
!4035 = !DILocation(line: 259, column: 9, scope: !4034)
!4036 = !DILocation(line: 261, column: 14, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !4007, file: !420, line: 261, column: 9)
!4038 = !DILocation(line: 261, column: 9, scope: !4007)
!4039 = !DILocation(line: 262, column: 9, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4037, file: !420, line: 261, column: 30)
!4041 = !DILocation(line: 263, column: 9, scope: !4040)
!4042 = !DILocation(line: 266, column: 9, scope: !4025)
!4043 = !DILocation(line: 266, column: 50, scope: !4025)
!4044 = !DILocation(line: 0, scope: !4025)
!4045 = !DILocation(line: 266, column: 9, scope: !4007)
!4046 = !DILocation(line: 267, column: 23, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !4025, file: !420, line: 266, column: 59)
!4048 = !DILocation(line: 268, column: 25, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4047, file: !420, line: 268, column: 14)
!4050 = !DILocation(line: 268, column: 14, scope: !4047)
!4051 = !DILocation(line: 272, column: 23, scope: !4047)
!4052 = !DILocation(line: 273, column: 25, scope: !4053)
!4053 = distinct !DILexicalBlock(scope: !4047, file: !420, line: 273, column: 14)
!4054 = !DILocation(line: 273, column: 14, scope: !4047)
!4055 = !DILocation(line: 278, column: 83, scope: !4024)
!4056 = !DILocation(line: 0, scope: !4024)
!4057 = !DILocation(line: 279, column: 17, scope: !4024)
!4058 = !DILocation(line: 279, column: 10, scope: !4024)
!4059 = !DILocation(line: 281, column: 23, scope: !4024)
!4060 = !DILocation(line: 282, column: 25, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !4024, file: !420, line: 282, column: 14)
!4062 = !DILocation(line: 282, column: 14, scope: !4024)
!4063 = !DILocation(line: 286, column: 23, scope: !4024)
!4064 = !DILocation(line: 287, column: 25, scope: !4065)
!4065 = distinct !DILexicalBlock(scope: !4024, file: !420, line: 287, column: 14)
!4066 = !DILocation(line: 292, column: 5, scope: !4007)
!4067 = !DILocation(line: 294, column: 1, scope: !4007)
!4068 = distinct !DISubprogram(name: "hal_eint_apply_config", scope: !420, file: !420, line: 158, type: !4069, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !4071)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!3942, !202, !4010}
!4071 = !{!4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079}
!4072 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4068, file: !420, line: 158, type: !202)
!4073 = !DILocalVariable(name: "eint_config", arg: 2, scope: !4068, file: !420, line: 159, type: !4010)
!4074 = !DILocalVariable(name: "sample_count", scope: !4068, file: !420, line: 161, type: !204)
!4075 = !DILocalVariable(name: "ret_value", scope: !4068, file: !420, line: 162, type: !285)
!4076 = !DILocalVariable(name: "trigger_mode", scope: !4068, file: !420, line: 163, type: !2628)
!4077 = !DILocalVariable(name: "trigger_polarity", scope: !4068, file: !420, line: 164, type: !2630)
!4078 = !DILocalVariable(name: "sample_rate", scope: !4068, file: !420, line: 165, type: !465)
!4079 = !DILocalVariable(name: "dual_edge", scope: !4068, file: !420, line: 166, type: !2631)
!4080 = !DILocation(line: 0, scope: !4068)
!4081 = !DILocation(line: 161, column: 5, scope: !4068)
!4082 = !DILocation(line: 165, column: 5, scope: !4068)
!4083 = !DILocation(line: 169, column: 26, scope: !4068)
!4084 = !DILocation(line: 169, column: 5, scope: !4068)
!4085 = !DILocation(line: 200, column: 52, scope: !4068)
!4086 = !DILocation(line: 200, column: 5, scope: !4068)
!4087 = !DILocation(line: 203, column: 9, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !4068, file: !420, line: 203, column: 9)
!4089 = !DILocation(line: 203, column: 22, scope: !4088)
!4090 = !DILocation(line: 0, scope: !4088)
!4091 = !DILocation(line: 203, column: 9, scope: !4068)
!4092 = !DILocation(line: 204, column: 21, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4088, file: !420, line: 203, column: 28)
!4094 = !DILocation(line: 212, column: 9, scope: !4093)
!4095 = !DILocation(line: 213, column: 5, scope: !4093)
!4096 = !DILocation(line: 220, column: 30, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4088, file: !420, line: 213, column: 12)
!4098 = !DILocation(line: 214, column: 21, scope: !4097)
!4099 = !DILocation(line: 224, column: 12, scope: !4068)
!4100 = !DILocation(line: 224, column: 5, scope: !4068)
!4101 = !DILocation(line: 225, column: 1, scope: !4068)
!4102 = distinct !DISubprogram(name: "get_index_from_gpio_pin", scope: !420, file: !420, line: 90, type: !4103, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !4105)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!204, !202}
!4105 = !{!4106, !4107}
!4106 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4102, file: !420, line: 90, type: !202)
!4107 = !DILocalVariable(name: "index", scope: !4102, file: !420, line: 92, type: !204)
!4108 = !DILocation(line: 0, scope: !4102)
!4109 = !DILocation(line: 93, column: 5, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !4102, file: !420, line: 93, column: 5)
!4111 = !DILocation(line: 94, column: 36, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4113, file: !420, line: 94, column: 13)
!4113 = distinct !DILexicalBlock(scope: !4114, file: !420, line: 93, column: 58)
!4114 = distinct !DILexicalBlock(scope: !4110, file: !420, line: 93, column: 5)
!4115 = !DILocation(line: 94, column: 45, scope: !4112)
!4116 = !DILocation(line: 94, column: 13, scope: !4113)
!4117 = !DILocation(line: 93, column: 54, scope: !4114)
!4118 = !DILocation(line: 93, column: 27, scope: !4114)
!4119 = distinct !{!4119, !4109, !4120}
!4120 = !DILocation(line: 97, column: 5, scope: !4110)
!4121 = !DILocation(line: 99, column: 1, scope: !4102)
!4122 = distinct !DISubprogram(name: "hal_eint_calc_debounce_parameters", scope: !420, file: !420, line: 114, type: !4123, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !4126)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{null, !204, !4125, !3556}
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 32)
!4126 = !{!4127, !4128, !4129, !4130, !4131}
!4127 = !DILocalVariable(name: "debounce_time", arg: 1, scope: !4122, file: !420, line: 114, type: !204)
!4128 = !DILocalVariable(name: "sample_rate", arg: 2, scope: !4122, file: !420, line: 115, type: !4125)
!4129 = !DILocalVariable(name: "sample_count", arg: 3, scope: !4122, file: !420, line: 116, type: !3556)
!4130 = !DILocalVariable(name: "threshold", scope: !4122, file: !420, line: 124, type: !469)
!4131 = !DILocalVariable(name: "target_count", scope: !4122, file: !420, line: 125, type: !204)
!4132 = !DILocation(line: 0, scope: !4122)
!4133 = !DILocation(line: 126, column: 39, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !4122, file: !420, line: 126, column: 9)
!4135 = !DILocation(line: 126, column: 44, scope: !4134)
!4136 = !DILocation(line: 126, column: 9, scope: !4122)
!4137 = !DILocation(line: 127, column: 22, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !4134, file: !420, line: 126, column: 58)
!4139 = !DILocation(line: 128, column: 5, scope: !4138)
!4140 = !DILocation(line: 128, column: 46, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4134, file: !420, line: 128, column: 16)
!4142 = !DILocation(line: 128, column: 51, scope: !4141)
!4143 = !DILocation(line: 128, column: 16, scope: !4134)
!4144 = !DILocation(line: 129, column: 22, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4141, file: !420, line: 128, column: 65)
!4146 = !DILocation(line: 130, column: 5, scope: !4145)
!4147 = !DILocation(line: 130, column: 46, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4141, file: !420, line: 130, column: 16)
!4149 = !DILocation(line: 130, column: 51, scope: !4148)
!4150 = !DILocation(line: 130, column: 16, scope: !4141)
!4151 = !DILocation(line: 131, column: 22, scope: !4152)
!4152 = distinct !DILexicalBlock(scope: !4148, file: !420, line: 130, column: 65)
!4153 = !DILocation(line: 132, column: 5, scope: !4152)
!4154 = !DILocation(line: 132, column: 51, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4148, file: !420, line: 132, column: 16)
!4156 = !DILocation(line: 132, column: 16, scope: !4148)
!4157 = !DILocation(line: 133, column: 22, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4155, file: !420, line: 132, column: 65)
!4159 = !DILocation(line: 134, column: 5, scope: !4158)
!4160 = !DILocation(line: 134, column: 51, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4155, file: !420, line: 134, column: 16)
!4162 = !DILocation(line: 134, column: 16, scope: !4155)
!4163 = !DILocation(line: 134, column: 46, scope: !4161)
!4164 = !DILocation(line: 135, column: 22, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4161, file: !420, line: 134, column: 65)
!4166 = !DILocation(line: 136, column: 5, scope: !4165)
!4167 = !DILocation(line: 136, column: 51, scope: !4168)
!4168 = distinct !DILexicalBlock(scope: !4161, file: !420, line: 136, column: 16)
!4169 = !DILocation(line: 136, column: 16, scope: !4161)
!4170 = !DILocation(line: 136, column: 46, scope: !4168)
!4171 = !DILocation(line: 137, column: 22, scope: !4172)
!4172 = distinct !DILexicalBlock(scope: !4168, file: !420, line: 136, column: 65)
!4173 = !DILocation(line: 138, column: 5, scope: !4172)
!4174 = !DILocation(line: 138, column: 51, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !4168, file: !420, line: 138, column: 16)
!4176 = !DILocation(line: 138, column: 16, scope: !4168)
!4177 = !DILocation(line: 138, column: 46, scope: !4175)
!4178 = !DILocation(line: 139, column: 22, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4175, file: !420, line: 138, column: 65)
!4180 = !DILocation(line: 141, column: 22, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4175, file: !420, line: 140, column: 12)
!4182 = !DILocation(line: 142, column: 39, scope: !4181)
!4183 = !DILocation(line: 143, column: 3, scope: !4181)
!4184 = !DILocation(line: 147, column: 1, scope: !4122)
!4185 = distinct !DISubprogram(name: "hal_eint_isr", scope: !420, file: !420, line: 149, type: !320, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !4186)
!4186 = !{!4187, !4188}
!4187 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !4185, file: !420, line: 149, type: !202)
!4188 = !DILocalVariable(name: "callback_context", scope: !4185, file: !420, line: 151, type: !4026)
!4189 = !DILocation(line: 0, scope: !4185)
!4190 = !DILocation(line: 151, column: 78, scope: !4185)
!4191 = !DILocation(line: 152, column: 36, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4185, file: !420, line: 152, column: 9)
!4193 = !{i8 0, i8 2}
!4194 = !DILocation(line: 153, column: 13, scope: !4192)
!4195 = !DILocation(line: 153, column: 43, scope: !4192)
!4196 = !DILocation(line: 153, column: 22, scope: !4192)
!4197 = !DILocation(line: 152, column: 9, scope: !4185)
!4198 = !DILocation(line: 154, column: 54, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4192, file: !420, line: 153, column: 54)
!4200 = !DILocation(line: 154, column: 9, scope: !4199)
!4201 = !DILocation(line: 155, column: 5, scope: !4199)
!4202 = !DILocation(line: 156, column: 1, scope: !4185)
!4203 = distinct !DISubprogram(name: "hal_eint_deinit", scope: !420, file: !420, line: 296, type: !3940, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !4204)
!4204 = !{!4205, !4206, !4207, !4208}
!4205 = !DILocalVariable(name: "eint_number", arg: 1, scope: !4203, file: !420, line: 296, type: !497)
!4206 = !DILocalVariable(name: "gpio_pin", scope: !4203, file: !420, line: 298, type: !202)
!4207 = !DILocalVariable(name: "ret_status", scope: !4203, file: !420, line: 299, type: !3942)
!4208 = !DILocalVariable(name: "callback_context", scope: !4203, file: !420, line: 311, type: !4026)
!4209 = !DILocation(line: 0, scope: !4203)
!4210 = !DILocation(line: 298, column: 5, scope: !4203)
!4211 = !DILocation(line: 301, column: 14, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4203, file: !420, line: 301, column: 9)
!4213 = !DILocation(line: 301, column: 11, scope: !4212)
!4214 = !DILocation(line: 301, column: 9, scope: !4203)
!4215 = !DILocation(line: 302, column: 9, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4212, file: !420, line: 301, column: 65)
!4217 = !DILocation(line: 303, column: 9, scope: !4216)
!4218 = !DILocation(line: 306, column: 18, scope: !4203)
!4219 = !DILocation(line: 307, column: 20, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4203, file: !420, line: 307, column: 9)
!4221 = !DILocation(line: 307, column: 9, scope: !4203)
!4222 = !DILocation(line: 311, column: 102, scope: !4203)
!4223 = !DILocation(line: 311, column: 78, scope: !4203)
!4224 = !DILocation(line: 312, column: 12, scope: !4203)
!4225 = !DILocation(line: 312, column: 5, scope: !4203)
!4226 = !DILocation(line: 313, column: 5, scope: !4203)
!4227 = !DILocation(line: 313, column: 46, scope: !4203)
!4228 = !DILocation(line: 316, column: 1, scope: !4203)
!4229 = distinct !DISubprogram(name: "hal_eint_register_callback", scope: !420, file: !420, line: 319, type: !4230, scopeLine: 322, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !4232)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{!3942, !497, !479, !464}
!4232 = !{!4233, !4234, !4235, !4236, !4237, !4238}
!4233 = !DILocalVariable(name: "eint_number", arg: 1, scope: !4229, file: !420, line: 319, type: !497)
!4234 = !DILocalVariable(name: "callback", arg: 2, scope: !4229, file: !420, line: 320, type: !479)
!4235 = !DILocalVariable(name: "user_data", arg: 3, scope: !4229, file: !420, line: 321, type: !464)
!4236 = !DILocalVariable(name: "gpio_pin", scope: !4229, file: !420, line: 323, type: !202)
!4237 = !DILocalVariable(name: "ret_status", scope: !4229, file: !420, line: 324, type: !3942)
!4238 = !DILocalVariable(name: "callback_context", scope: !4229, file: !420, line: 330, type: !4026)
!4239 = !DILocation(line: 0, scope: !4229)
!4240 = !DILocation(line: 323, column: 5, scope: !4229)
!4241 = !DILocation(line: 326, column: 14, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4229, file: !420, line: 326, column: 9)
!4243 = !DILocation(line: 326, column: 11, scope: !4242)
!4244 = !DILocation(line: 326, column: 9, scope: !4229)
!4245 = !DILocation(line: 327, column: 9, scope: !4246)
!4246 = distinct !DILexicalBlock(scope: !4242, file: !420, line: 326, column: 65)
!4247 = !DILocation(line: 328, column: 9, scope: !4246)
!4248 = !DILocation(line: 330, column: 102, scope: !4229)
!4249 = !DILocation(line: 330, column: 78, scope: !4229)
!4250 = !DILocation(line: 331, column: 23, scope: !4229)
!4251 = !DILocation(line: 331, column: 32, scope: !4229)
!4252 = !DILocation(line: 332, column: 23, scope: !4229)
!4253 = !DILocation(line: 332, column: 33, scope: !4229)
!4254 = !DILocation(line: 333, column: 23, scope: !4229)
!4255 = !DILocation(line: 333, column: 40, scope: !4229)
!4256 = !DILocation(line: 335, column: 5, scope: !4229)
!4257 = !DILocation(line: 335, column: 46, scope: !4229)
!4258 = !DILocation(line: 337, column: 9, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4229, file: !420, line: 337, column: 9)
!4260 = !DILocation(line: 337, column: 37, scope: !4259)
!4261 = !DILocation(line: 337, column: 9, scope: !4229)
!4262 = !DILocation(line: 338, column: 22, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4259, file: !420, line: 337, column: 46)
!4264 = !DILocation(line: 339, column: 24, scope: !4265)
!4265 = distinct !DILexicalBlock(scope: !4263, file: !420, line: 339, column: 13)
!4266 = !DILocation(line: 339, column: 13, scope: !4263)
!4267 = !DILocation(line: 345, column: 5, scope: !4229)
!4268 = !DILocation(line: 347, column: 1, scope: !4229)
!4269 = distinct !DISubprogram(name: "hal_eint_set_trigger_mode", scope: !420, file: !420, line: 349, type: !4270, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !4272)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{!3942, !497, !4016}
!4272 = !{!4273, !4274, !4275, !4276, !4279, !4280}
!4273 = !DILocalVariable(name: "eint_number", arg: 1, scope: !4269, file: !420, line: 349, type: !497)
!4274 = !DILocalVariable(name: "trigger_mode", arg: 2, scope: !4269, file: !420, line: 349, type: !4016)
!4275 = !DILocalVariable(name: "gpio_pin", scope: !4269, file: !420, line: 351, type: !202)
!4276 = !DILocalVariable(name: "trigger", scope: !4277, file: !420, line: 356, type: !2628)
!4277 = distinct !DILexicalBlock(scope: !4278, file: !420, line: 355, column: 12)
!4278 = distinct !DILexicalBlock(scope: !4269, file: !420, line: 352, column: 9)
!4279 = !DILocalVariable(name: "pol", scope: !4277, file: !420, line: 357, type: !2630)
!4280 = !DILocalVariable(name: "dual_en", scope: !4277, file: !420, line: 358, type: !2631)
!4281 = !DILocation(line: 0, scope: !4269)
!4282 = !DILocation(line: 351, column: 5, scope: !4269)
!4283 = !DILocation(line: 352, column: 14, scope: !4278)
!4284 = !DILocation(line: 352, column: 11, scope: !4278)
!4285 = !DILocation(line: 352, column: 9, scope: !4269)
!4286 = !DILocation(line: 353, column: 9, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4278, file: !420, line: 352, column: 65)
!4288 = !DILocation(line: 354, column: 9, scope: !4287)
!4289 = !DILocation(line: 360, column: 9, scope: !4277)
!4290 = !DILocation(line: 0, scope: !4277)
!4291 = !DILocation(line: 395, column: 31, scope: !4277)
!4292 = !DILocation(line: 395, column: 9, scope: !4277)
!4293 = !DILocation(line: 400, column: 1, scope: !4269)
!4294 = distinct !DISubprogram(name: "hal_eint_set_debounce_count", scope: !420, file: !420, line: 403, type: !4295, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !4297)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!3942, !497, !204}
!4297 = !{!4298, !4299, !4300, !4301}
!4298 = !DILocalVariable(name: "eint_number", arg: 1, scope: !4294, file: !420, line: 403, type: !497)
!4299 = !DILocalVariable(name: "count", arg: 2, scope: !4294, file: !420, line: 403, type: !204)
!4300 = !DILocalVariable(name: "gpio_pin", scope: !4294, file: !420, line: 405, type: !202)
!4301 = !DILocalVariable(name: "debounce_en", scope: !4294, file: !420, line: 406, type: !2629)
!4302 = !DILocation(line: 0, scope: !4294)
!4303 = !DILocation(line: 405, column: 5, scope: !4294)
!4304 = !DILocation(line: 408, column: 14, scope: !4305)
!4305 = distinct !DILexicalBlock(scope: !4294, file: !420, line: 408, column: 9)
!4306 = !DILocation(line: 408, column: 11, scope: !4305)
!4307 = !DILocation(line: 408, column: 9, scope: !4294)
!4308 = !DILocation(line: 409, column: 9, scope: !4309)
!4309 = distinct !DILexicalBlock(scope: !4305, file: !420, line: 408, column: 65)
!4310 = !DILocation(line: 410, column: 9, scope: !4309)
!4311 = !DILocation(line: 413, column: 15, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4294, file: !420, line: 413, column: 9)
!4313 = !DILocation(line: 420, column: 23, scope: !4294)
!4314 = !DILocation(line: 420, column: 76, scope: !4294)
!4315 = !DILocation(line: 420, column: 5, scope: !4294)
!4316 = !DILocation(line: 421, column: 5, scope: !4294)
!4317 = !DILocation(line: 422, column: 1, scope: !4294)
!4318 = distinct !DISubprogram(name: "hal_eint_set_debounce_time", scope: !420, file: !420, line: 424, type: !4295, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !4319)
!4319 = !{!4320, !4321, !4322, !4323, !4324, !4325}
!4320 = !DILocalVariable(name: "eint_number", arg: 1, scope: !4318, file: !420, line: 424, type: !497)
!4321 = !DILocalVariable(name: "time_ms", arg: 2, scope: !4318, file: !420, line: 424, type: !204)
!4322 = !DILocalVariable(name: "gpio_pin", scope: !4318, file: !420, line: 426, type: !202)
!4323 = !DILocalVariable(name: "sample_count", scope: !4318, file: !420, line: 427, type: !204)
!4324 = !DILocalVariable(name: "sample_rate", scope: !4318, file: !420, line: 428, type: !465)
!4325 = !DILocalVariable(name: "debounce_en", scope: !4318, file: !420, line: 429, type: !2629)
!4326 = !DILocation(line: 0, scope: !4318)
!4327 = !DILocation(line: 426, column: 5, scope: !4318)
!4328 = !DILocation(line: 427, column: 5, scope: !4318)
!4329 = !DILocation(line: 428, column: 5, scope: !4318)
!4330 = !DILocation(line: 430, column: 14, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4318, file: !420, line: 430, column: 9)
!4332 = !DILocation(line: 430, column: 11, scope: !4331)
!4333 = !DILocation(line: 430, column: 9, scope: !4318)
!4334 = !DILocation(line: 431, column: 9, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4331, file: !420, line: 430, column: 65)
!4336 = !DILocation(line: 432, column: 9, scope: !4335)
!4337 = !DILocation(line: 448, column: 5, scope: !4318)
!4338 = !DILocation(line: 450, column: 17, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4318, file: !420, line: 450, column: 9)
!4340 = !DILocation(line: 455, column: 23, scope: !4318)
!4341 = !DILocation(line: 455, column: 46, scope: !4318)
!4342 = !DILocation(line: 455, column: 59, scope: !4318)
!4343 = !DILocation(line: 455, column: 5, scope: !4318)
!4344 = !DILocation(line: 456, column: 5, scope: !4318)
!4345 = !DILocation(line: 457, column: 1, scope: !4318)
!4346 = distinct !DISubprogram(name: "hal_eint_set_software_trigger", scope: !420, file: !420, line: 460, type: !3940, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !4347)
!4347 = !{!4348, !4349}
!4348 = !DILocalVariable(name: "eint_number", arg: 1, scope: !4346, file: !420, line: 460, type: !497)
!4349 = !DILocalVariable(name: "gpio_pin", scope: !4346, file: !420, line: 462, type: !202)
!4350 = !DILocation(line: 0, scope: !4346)
!4351 = !DILocation(line: 462, column: 5, scope: !4346)
!4352 = !DILocation(line: 463, column: 14, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4346, file: !420, line: 463, column: 9)
!4354 = !DILocation(line: 463, column: 11, scope: !4353)
!4355 = !DILocation(line: 463, column: 9, scope: !4346)
!4356 = !DILocation(line: 464, column: 9, scope: !4357)
!4357 = distinct !DILexicalBlock(scope: !4353, file: !420, line: 463, column: 65)
!4358 = !DILocation(line: 465, column: 9, scope: !4357)
!4359 = !DILocation(line: 467, column: 31, scope: !4346)
!4360 = !DILocation(line: 467, column: 5, scope: !4346)
!4361 = !DILocation(line: 468, column: 5, scope: !4346)
!4362 = !DILocation(line: 469, column: 1, scope: !4346)
!4363 = distinct !DISubprogram(name: "hal_eint_clear_software_trigger", scope: !420, file: !420, line: 471, type: !3940, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !4364)
!4364 = !{!4365, !4366}
!4365 = !DILocalVariable(name: "eint_number", arg: 1, scope: !4363, file: !420, line: 471, type: !497)
!4366 = !DILocalVariable(name: "gpio_pin", scope: !4363, file: !420, line: 473, type: !202)
!4367 = !DILocation(line: 0, scope: !4363)
!4368 = !DILocation(line: 473, column: 5, scope: !4363)
!4369 = !DILocation(line: 474, column: 14, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4363, file: !420, line: 474, column: 9)
!4371 = !DILocation(line: 474, column: 11, scope: !4370)
!4372 = !DILocation(line: 474, column: 9, scope: !4363)
!4373 = !DILocation(line: 475, column: 9, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !4370, file: !420, line: 474, column: 65)
!4375 = !DILocation(line: 476, column: 9, scope: !4374)
!4376 = !DILocation(line: 478, column: 33, scope: !4363)
!4377 = !DILocation(line: 478, column: 5, scope: !4363)
!4378 = !DILocation(line: 479, column: 5, scope: !4363)
!4379 = !DILocation(line: 480, column: 1, scope: !4363)
!4380 = distinct !DISubprogram(name: "hal_nvic_init", scope: !504, file: !504, line: 60, type: !4381, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !1344)
!4381 = !DISubroutineType(types: !4382)
!4382 = !{!4383}
!4383 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_status_t", file: !507, line: 158, baseType: !506)
!4384 = !DILocation(line: 62, column: 5, scope: !4380)
!4385 = distinct !DISubprogram(name: "hal_nvic_enable_irq", scope: !504, file: !504, line: 65, type: !4386, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4388)
!4386 = !DISubroutineType(types: !4387)
!4387 = !{!4383, !515}
!4388 = !{!4389, !4390}
!4389 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4385, file: !504, line: 65, type: !515)
!4390 = !DILocalVariable(name: "status", scope: !4385, file: !504, line: 67, type: !4383)
!4391 = !DILocation(line: 0, scope: !4385)
!4392 = !DILocation(line: 69, column: 40, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !4385, file: !504, line: 69, column: 9)
!4394 = !DILocation(line: 73, column: 9, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4393, file: !504, line: 72, column: 12)
!4396 = !DILocation(line: 77, column: 5, scope: !4385)
!4397 = !DILocation(line: 78, column: 1, scope: !4385)
!4398 = distinct !DISubprogram(name: "NVIC_EnableIRQ", scope: !210, file: !210, line: 1494, type: !2095, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4399)
!4399 = !{!4400}
!4400 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4398, file: !210, line: 1494, type: !61)
!4401 = !DILocation(line: 0, scope: !4398)
!4402 = !DILocation(line: 1497, column: 91, scope: !4398)
!4403 = !DILocation(line: 1497, column: 61, scope: !4398)
!4404 = !DILocation(line: 1497, column: 40, scope: !4398)
!4405 = !DILocation(line: 1497, column: 3, scope: !4398)
!4406 = !DILocation(line: 1497, column: 46, scope: !4398)
!4407 = !DILocation(line: 1498, column: 1, scope: !4398)
!4408 = distinct !DISubprogram(name: "hal_nvic_disable_irq", scope: !504, file: !504, line: 80, type: !4386, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4409)
!4409 = !{!4410, !4411}
!4410 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4408, file: !504, line: 80, type: !515)
!4411 = !DILocalVariable(name: "status", scope: !4408, file: !504, line: 82, type: !4383)
!4412 = !DILocation(line: 0, scope: !4408)
!4413 = !DILocation(line: 84, column: 40, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4408, file: !504, line: 84, column: 9)
!4415 = !DILocation(line: 88, column: 9, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4414, file: !504, line: 87, column: 12)
!4417 = !DILocation(line: 92, column: 5, scope: !4408)
!4418 = !DILocation(line: 93, column: 1, scope: !4408)
!4419 = distinct !DISubprogram(name: "NVIC_DisableIRQ", scope: !210, file: !210, line: 1507, type: !2095, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4420)
!4420 = !{!4421}
!4421 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4419, file: !210, line: 1507, type: !61)
!4422 = !DILocation(line: 0, scope: !4419)
!4423 = !DILocation(line: 1509, column: 65, scope: !4419)
!4424 = !DILocation(line: 1509, column: 44, scope: !4419)
!4425 = !DILocation(line: 1509, column: 32, scope: !4419)
!4426 = !DILocation(line: 1509, column: 3, scope: !4419)
!4427 = !DILocation(line: 1509, column: 39, scope: !4419)
!4428 = !DILocation(line: 1510, column: 1, scope: !4419)
!4429 = distinct !DISubprogram(name: "hal_nvic_get_pending_irq", scope: !504, file: !504, line: 95, type: !4430, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4432)
!4430 = !DISubroutineType(types: !4431)
!4431 = !{!204, !515}
!4432 = !{!4433, !4434}
!4433 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4429, file: !504, line: 95, type: !515)
!4434 = !DILocalVariable(name: "ret", scope: !4429, file: !504, line: 97, type: !204)
!4435 = !DILocation(line: 0, scope: !4429)
!4436 = !DILocation(line: 99, column: 40, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4429, file: !504, line: 99, column: 9)
!4438 = !DILocation(line: 102, column: 15, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4437, file: !504, line: 101, column: 12)
!4440 = !DILocation(line: 105, column: 5, scope: !4429)
!4441 = !DILocation(line: 106, column: 1, scope: !4429)
!4442 = distinct !DISubprogram(name: "NVIC_GetPendingIRQ", scope: !210, file: !210, line: 1523, type: !4443, scopeLine: 1524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4445)
!4443 = !DISubroutineType(types: !4444)
!4444 = !{!204, !61}
!4445 = !{!4446}
!4446 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4442, file: !210, line: 1523, type: !61)
!4447 = !DILocation(line: 0, scope: !4442)
!4448 = !DILocation(line: 1525, column: 51, scope: !4442)
!4449 = !DILocation(line: 1525, column: 23, scope: !4442)
!4450 = !DILocation(line: 1525, column: 83, scope: !4442)
!4451 = !DILocation(line: 1525, column: 22, scope: !4442)
!4452 = !DILocation(line: 1525, column: 3, scope: !4442)
!4453 = distinct !DISubprogram(name: "hal_nvic_set_pending_irq", scope: !504, file: !504, line: 108, type: !4386, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4454)
!4454 = !{!4455, !4456}
!4455 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4453, file: !504, line: 108, type: !515)
!4456 = !DILocalVariable(name: "status", scope: !4453, file: !504, line: 110, type: !4383)
!4457 = !DILocation(line: 0, scope: !4453)
!4458 = !DILocation(line: 112, column: 40, scope: !4459)
!4459 = distinct !DILexicalBlock(scope: !4453, file: !504, line: 112, column: 9)
!4460 = !DILocation(line: 116, column: 9, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4459, file: !504, line: 115, column: 12)
!4462 = !DILocation(line: 120, column: 5, scope: !4453)
!4463 = !DILocation(line: 121, column: 1, scope: !4453)
!4464 = distinct !DISubprogram(name: "NVIC_SetPendingIRQ", scope: !210, file: !210, line: 1535, type: !2095, scopeLine: 1536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4465)
!4465 = !{!4466}
!4466 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4464, file: !210, line: 1535, type: !61)
!4467 = !DILocation(line: 0, scope: !4464)
!4468 = !DILocation(line: 1537, column: 65, scope: !4464)
!4469 = !DILocation(line: 1537, column: 44, scope: !4464)
!4470 = !DILocation(line: 1537, column: 32, scope: !4464)
!4471 = !DILocation(line: 1537, column: 3, scope: !4464)
!4472 = !DILocation(line: 1537, column: 39, scope: !4464)
!4473 = !DILocation(line: 1538, column: 1, scope: !4464)
!4474 = distinct !DISubprogram(name: "hal_nvic_clear_pending_irq", scope: !504, file: !504, line: 123, type: !4386, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4475)
!4475 = !{!4476, !4477}
!4476 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4474, file: !504, line: 123, type: !515)
!4477 = !DILocalVariable(name: "status", scope: !4474, file: !504, line: 125, type: !4383)
!4478 = !DILocation(line: 0, scope: !4474)
!4479 = !DILocation(line: 127, column: 40, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4474, file: !504, line: 127, column: 9)
!4481 = !DILocation(line: 131, column: 9, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !4480, file: !504, line: 130, column: 12)
!4483 = !DILocation(line: 135, column: 5, scope: !4474)
!4484 = !DILocation(line: 136, column: 1, scope: !4474)
!4485 = distinct !DISubprogram(name: "NVIC_ClearPendingIRQ", scope: !210, file: !210, line: 1547, type: !2095, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4486)
!4486 = !{!4487}
!4487 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4485, file: !210, line: 1547, type: !61)
!4488 = !DILocation(line: 0, scope: !4485)
!4489 = !DILocation(line: 1549, column: 65, scope: !4485)
!4490 = !DILocation(line: 1549, column: 44, scope: !4485)
!4491 = !DILocation(line: 1549, column: 32, scope: !4485)
!4492 = !DILocation(line: 1549, column: 3, scope: !4485)
!4493 = !DILocation(line: 1549, column: 39, scope: !4485)
!4494 = !DILocation(line: 1550, column: 1, scope: !4485)
!4495 = distinct !DISubprogram(name: "hal_nvic_set_priority", scope: !504, file: !504, line: 138, type: !4496, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4498)
!4496 = !DISubroutineType(types: !4497)
!4497 = !{!4383, !515, !204}
!4498 = !{!4499, !4500, !4501}
!4499 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4495, file: !504, line: 138, type: !515)
!4500 = !DILocalVariable(name: "priority", arg: 2, scope: !4495, file: !504, line: 138, type: !204)
!4501 = !DILocalVariable(name: "status", scope: !4495, file: !504, line: 140, type: !4383)
!4502 = !DILocation(line: 0, scope: !4495)
!4503 = !DILocation(line: 142, column: 40, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4495, file: !504, line: 142, column: 9)
!4505 = !DILocation(line: 146, column: 9, scope: !4506)
!4506 = distinct !DILexicalBlock(scope: !4504, file: !504, line: 145, column: 12)
!4507 = !DILocation(line: 150, column: 5, scope: !4495)
!4508 = !DILocation(line: 151, column: 1, scope: !4495)
!4509 = distinct !DISubprogram(name: "NVIC_SetPriority", scope: !210, file: !210, line: 1577, type: !2117, scopeLine: 1578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4510)
!4510 = !{!4511, !4512}
!4511 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4509, file: !210, line: 1577, type: !61)
!4512 = !DILocalVariable(name: "priority", arg: 2, scope: !4509, file: !210, line: 1577, type: !204)
!4513 = !DILocation(line: 0, scope: !4509)
!4514 = !DILocation(line: 1582, column: 34, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4516, file: !210, line: 1581, column: 8)
!4516 = distinct !DILexicalBlock(scope: !4509, file: !210, line: 1579, column: 6)
!4517 = !DILocation(line: 1582, column: 5, scope: !4515)
!4518 = !DILocation(line: 1582, column: 32, scope: !4515)
!4519 = !DILocation(line: 1583, column: 1, scope: !4509)
!4520 = distinct !DISubprogram(name: "hal_nvic_get_priority", scope: !504, file: !504, line: 153, type: !4430, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4521)
!4521 = !{!4522, !4523}
!4522 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4520, file: !504, line: 153, type: !515)
!4523 = !DILocalVariable(name: "ret", scope: !4520, file: !504, line: 155, type: !204)
!4524 = !DILocation(line: 0, scope: !4520)
!4525 = !DILocation(line: 157, column: 40, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4520, file: !504, line: 157, column: 9)
!4527 = !DILocation(line: 160, column: 15, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4526, file: !504, line: 159, column: 12)
!4529 = !DILocation(line: 163, column: 5, scope: !4520)
!4530 = !DILocation(line: 164, column: 1, scope: !4520)
!4531 = distinct !DISubprogram(name: "NVIC_GetPriority", scope: !210, file: !210, line: 1597, type: !4443, scopeLine: 1598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4532)
!4532 = !{!4533}
!4533 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4531, file: !210, line: 1597, type: !61)
!4534 = !DILocation(line: 0, scope: !4531)
!4535 = !DILocation(line: 1603, column: 23, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4537, file: !210, line: 1602, column: 8)
!4537 = distinct !DILexicalBlock(scope: !4531, file: !210, line: 1600, column: 6)
!4538 = !DILocation(line: 1603, column: 60, scope: !4536)
!4539 = !DILocation(line: 1604, column: 1, scope: !4531)
!4540 = distinct !DISubprogram(name: "Flash_ReturnReady", scope: !504, file: !504, line: 173, type: !75, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !1344)
!4541 = !DILocation(line: 175, column: 1, scope: !4540)
!4542 = distinct !DISubprogram(name: "isrC_main", scope: !504, file: !504, line: 178, type: !4381, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4543)
!4543 = !{!4544, !4545}
!4544 = !DILocalVariable(name: "status", scope: !4542, file: !504, line: 180, type: !4383)
!4545 = !DILocalVariable(name: "irq_number", scope: !4542, file: !504, line: 181, type: !515)
!4546 = !DILocation(line: 0, scope: !4542)
!4547 = !DILocation(line: 188, column: 34, scope: !4542)
!4548 = !DILocation(line: 189, column: 24, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !4542, file: !504, line: 189, column: 9)
!4550 = !DILocation(line: 192, column: 48, scope: !4551)
!4551 = distinct !DILexicalBlock(scope: !4549, file: !504, line: 192, column: 16)
!4552 = !DILocation(line: 192, column: 62, scope: !4551)
!4553 = !DILocation(line: 192, column: 16, scope: !4549)
!4554 = !DILocation(line: 194, column: 9, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4551, file: !504, line: 192, column: 71)
!4556 = !DILocation(line: 195, column: 9, scope: !4555)
!4557 = !DILocation(line: 197, column: 55, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4551, file: !504, line: 196, column: 12)
!4559 = !DILocation(line: 197, column: 41, scope: !4558)
!4560 = !DILocation(line: 197, column: 53, scope: !4558)
!4561 = !DILocation(line: 198, column: 41, scope: !4558)
!4562 = !DILocation(line: 198, column: 9, scope: !4558)
!4563 = !DILocation(line: 202, column: 5, scope: !4542)
!4564 = !DILocation(line: 203, column: 1, scope: !4542)
!4565 = distinct !DISubprogram(name: "get_current_irq", scope: !504, file: !504, line: 166, type: !2825, scopeLine: 167, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4566)
!4566 = !{!4567}
!4567 = !DILocalVariable(name: "irq_num", scope: !4565, file: !504, line: 168, type: !204)
!4568 = !DILocation(line: 168, column: 31, scope: !4565)
!4569 = !DILocation(line: 168, column: 36, scope: !4565)
!4570 = !DILocation(line: 0, scope: !4565)
!4571 = !DILocation(line: 169, column: 21, scope: !4565)
!4572 = !DILocation(line: 169, column: 5, scope: !4565)
!4573 = distinct !DISubprogram(name: "get_pending_irq", scope: !504, file: !504, line: 55, type: !2825, scopeLine: 56, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !1344)
!4574 = !DILocation(line: 57, column: 19, scope: !4573)
!4575 = !DILocation(line: 57, column: 51, scope: !4573)
!4576 = !DILocation(line: 57, column: 5, scope: !4573)
!4577 = distinct !DISubprogram(name: "hal_nvic_register_isr_handler", scope: !504, file: !504, line: 205, type: !4578, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4581)
!4578 = !DISubroutineType(types: !4579)
!4579 = !{!4383, !515, !4580}
!4580 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_isr_t", file: !507, line: 175, baseType: !564)
!4581 = !{!4582, !4583, !4584}
!4582 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4577, file: !504, line: 205, type: !515)
!4583 = !DILocalVariable(name: "callback", arg: 2, scope: !4577, file: !504, line: 205, type: !4580)
!4584 = !DILocalVariable(name: "mask", scope: !4577, file: !504, line: 207, type: !204)
!4585 = !DILocation(line: 0, scope: !4577)
!4586 = !DILocation(line: 209, column: 24, scope: !4587)
!4587 = distinct !DILexicalBlock(scope: !4577, file: !504, line: 209, column: 9)
!4588 = !DILocation(line: 213, column: 12, scope: !4577)
!4589 = !DILocation(line: 214, column: 5, scope: !4577)
!4590 = !DILocation(line: 215, column: 37, scope: !4577)
!4591 = !DILocation(line: 215, column: 51, scope: !4577)
!4592 = !DILocation(line: 216, column: 37, scope: !4577)
!4593 = !DILocation(line: 216, column: 49, scope: !4577)
!4594 = !DILocation(line: 217, column: 5, scope: !4577)
!4595 = !DILocation(line: 219, column: 5, scope: !4577)
!4596 = !DILocation(line: 220, column: 1, scope: !4577)
!4597 = distinct !DISubprogram(name: "hal_nvic_save_and_set_interrupt_mask", scope: !504, file: !504, line: 222, type: !4598, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4600)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{!4383, !3556}
!4600 = !{!4601}
!4601 = !DILocalVariable(name: "mask", arg: 1, scope: !4597, file: !504, line: 222, type: !3556)
!4602 = !DILocation(line: 0, scope: !4597)
!4603 = !DILocation(line: 224, column: 13, scope: !4597)
!4604 = !DILocation(line: 224, column: 11, scope: !4597)
!4605 = !DILocation(line: 225, column: 5, scope: !4597)
!4606 = distinct !DISubprogram(name: "hal_nvic_restore_interrupt_mask", scope: !504, file: !504, line: 228, type: !4607, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4609)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{!4383, !204}
!4609 = !{!4610}
!4610 = !DILocalVariable(name: "mask", arg: 1, scope: !4606, file: !504, line: 228, type: !204)
!4611 = !DILocation(line: 0, scope: !4606)
!4612 = !DILocation(line: 230, column: 5, scope: !4606)
!4613 = !DILocation(line: 231, column: 5, scope: !4606)
!4614 = distinct !DISubprogram(name: "hal_pinmux_set_function", scope: !1082, file: !1082, line: 50, type: !4615, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1081, retainedNodes: !4619)
!4615 = !DISubroutineType(types: !4616)
!4616 = !{!4617, !4618, !236}
!4617 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_pinmux_status_t", file: !1085, line: 238, baseType: !1084)
!4618 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_pin_t", file: !423, line: 281, baseType: !1091)
!4619 = !{!4620, !4621, !4622}
!4620 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4614, file: !1082, line: 50, type: !4618)
!4621 = !DILocalVariable(name: "function_index", arg: 2, scope: !4614, file: !1082, line: 50, type: !236)
!4622 = !DILocalVariable(name: "ret_value", scope: !4614, file: !1082, line: 52, type: !285)
!4623 = !DILocation(line: 0, scope: !4614)
!4624 = !DILocation(line: 53, column: 18, scope: !4625)
!4625 = distinct !DILexicalBlock(scope: !4614, file: !1082, line: 53, column: 9)
!4626 = !DILocation(line: 53, column: 9, scope: !4614)
!4627 = !DILocation(line: 57, column: 24, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4614, file: !1082, line: 57, column: 9)
!4629 = !DILocation(line: 57, column: 9, scope: !4614)
!4630 = !DILocation(line: 57, column: 9, scope: !4628)
!4631 = !DILocation(line: 60, column: 17, scope: !4614)
!4632 = !DILocation(line: 61, column: 12, scope: !4614)
!4633 = !DILocation(line: 61, column: 5, scope: !4614)
!4634 = !DILocation(line: 62, column: 1, scope: !4614)
!4635 = distinct !DISubprogram(name: "hal_gpio_init", scope: !1082, file: !1082, line: 64, type: !4636, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1081, retainedNodes: !4639)
!4636 = !DISubroutineType(types: !4637)
!4637 = !{!4638, !4618}
!4638 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_status_t", file: !1085, line: 229, baseType: !1122)
!4639 = !{!4640}
!4640 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4635, file: !1082, line: 64, type: !4618)
!4641 = !DILocation(line: 0, scope: !4635)
!4642 = !DILocation(line: 66, column: 5, scope: !4635)
!4643 = distinct !DISubprogram(name: "hal_gpio_deinit", scope: !1082, file: !1082, line: 69, type: !4636, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1081, retainedNodes: !4644)
!4644 = !{!4645}
!4645 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4643, file: !1082, line: 69, type: !4618)
!4646 = !DILocation(line: 0, scope: !4643)
!4647 = !DILocation(line: 71, column: 5, scope: !4643)
!4648 = distinct !DISubprogram(name: "hal_gpio_get_input", scope: !1082, file: !1082, line: 74, type: !4649, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1081, retainedNodes: !4652)
!4649 = !DISubroutineType(types: !4650)
!4650 = !{!4638, !4618, !4651}
!4651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 32)
!4652 = !{!4653, !4654, !4655}
!4653 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4648, file: !1082, line: 74, type: !4618)
!4654 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !4648, file: !1082, line: 74, type: !4651)
!4655 = !DILocalVariable(name: "status", scope: !4648, file: !1082, line: 76, type: !4656)
!4656 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_status", file: !328, line: 67, baseType: !4657)
!4657 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !328, line: 62, size: 64, elements: !4658)
!4658 = !{!4659, !4660, !4661, !4662}
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PIN", scope: !4657, file: !328, line: 63, baseType: !204, size: 32)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OUTEN", scope: !4657, file: !328, line: 64, baseType: !236, size: 8, offset: 32)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "GPI_DIN", scope: !4657, file: !328, line: 65, baseType: !236, size: 8, offset: 40)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "GPO_DOUT", scope: !4657, file: !328, line: 66, baseType: !236, size: 8, offset: 48)
!4663 = !DILocation(line: 0, scope: !4648)
!4664 = !DILocation(line: 77, column: 14, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !4648, file: !1082, line: 77, column: 9)
!4666 = !DILocation(line: 77, column: 9, scope: !4648)
!4667 = !DILocation(line: 81, column: 18, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4648, file: !1082, line: 81, column: 9)
!4669 = !DILocation(line: 81, column: 9, scope: !4648)
!4670 = !DILocation(line: 85, column: 14, scope: !4648)
!4671 = !DILocation(line: 86, column: 18, scope: !4648)
!4672 = !DILocation(line: 86, column: 16, scope: !4648)
!4673 = !DILocation(line: 87, column: 5, scope: !4648)
!4674 = !DILocation(line: 88, column: 1, scope: !4648)
!4675 = distinct !DISubprogram(name: "hal_gpio_set_output", scope: !1082, file: !1082, line: 90, type: !4676, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1081, retainedNodes: !4678)
!4676 = !DISubroutineType(types: !4677)
!4677 = !{!4638, !4618, !1143}
!4678 = !{!4679, !4680, !4681}
!4679 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4675, file: !1082, line: 90, type: !4618)
!4680 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !4675, file: !1082, line: 90, type: !1143)
!4681 = !DILocalVariable(name: "ret_value", scope: !4675, file: !1082, line: 92, type: !285)
!4682 = !DILocation(line: 0, scope: !4675)
!4683 = !DILocation(line: 93, column: 18, scope: !4684)
!4684 = distinct !DILexicalBlock(scope: !4675, file: !1082, line: 93, column: 9)
!4685 = !DILocation(line: 93, column: 9, scope: !4675)
!4686 = !DILocation(line: 97, column: 60, scope: !4675)
!4687 = !DILocation(line: 97, column: 17, scope: !4675)
!4688 = !DILocation(line: 98, column: 12, scope: !4675)
!4689 = !DILocation(line: 98, column: 5, scope: !4675)
!4690 = !DILocation(line: 99, column: 1, scope: !4675)
!4691 = distinct !DISubprogram(name: "hal_gpio_get_output", scope: !1082, file: !1082, line: 101, type: !4649, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1081, retainedNodes: !4692)
!4692 = !{!4693, !4694, !4695}
!4693 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4691, file: !1082, line: 101, type: !4618)
!4694 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !4691, file: !1082, line: 101, type: !4651)
!4695 = !DILocalVariable(name: "status", scope: !4691, file: !1082, line: 103, type: !4656)
!4696 = !DILocation(line: 0, scope: !4691)
!4697 = !DILocation(line: 104, column: 18, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4691, file: !1082, line: 104, column: 9)
!4699 = !DILocation(line: 104, column: 9, scope: !4691)
!4700 = !DILocation(line: 108, column: 14, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4691, file: !1082, line: 108, column: 9)
!4702 = !DILocation(line: 108, column: 9, scope: !4691)
!4703 = !DILocation(line: 112, column: 14, scope: !4691)
!4704 = !DILocation(line: 113, column: 18, scope: !4691)
!4705 = !DILocation(line: 113, column: 16, scope: !4691)
!4706 = !DILocation(line: 114, column: 5, scope: !4691)
!4707 = !DILocation(line: 115, column: 1, scope: !4691)
!4708 = distinct !DISubprogram(name: "hal_gpio_set_direction", scope: !1082, file: !1082, line: 117, type: !4709, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1081, retainedNodes: !4712)
!4709 = !DISubroutineType(types: !4710)
!4710 = !{!4638, !4618, !4711}
!4711 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_direction_t", file: !1085, line: 213, baseType: !1132)
!4712 = !{!4713, !4714, !4715}
!4713 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4708, file: !1082, line: 117, type: !4618)
!4714 = !DILocalVariable(name: "direction", arg: 2, scope: !4708, file: !1082, line: 117, type: !4711)
!4715 = !DILocalVariable(name: "ret_value", scope: !4708, file: !1082, line: 119, type: !285)
!4716 = !DILocation(line: 0, scope: !4708)
!4717 = !DILocation(line: 120, column: 18, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4708, file: !1082, line: 120, column: 9)
!4719 = !DILocation(line: 120, column: 9, scope: !4708)
!4720 = !DILocation(line: 123, column: 17, scope: !4708)
!4721 = !DILocation(line: 125, column: 12, scope: !4708)
!4722 = !DILocation(line: 125, column: 5, scope: !4708)
!4723 = !DILocation(line: 126, column: 1, scope: !4708)
!4724 = distinct !DISubprogram(name: "hal_gpio_get_direction", scope: !1082, file: !1082, line: 128, type: !4725, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1081, retainedNodes: !4728)
!4725 = !DISubroutineType(types: !4726)
!4726 = !{!4638, !4618, !4727}
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4711, size: 32)
!4728 = !{!4729, !4730, !4731}
!4729 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4724, file: !1082, line: 128, type: !4618)
!4730 = !DILocalVariable(name: "direction", arg: 2, scope: !4724, file: !1082, line: 128, type: !4727)
!4731 = !DILocalVariable(name: "status", scope: !4724, file: !1082, line: 131, type: !4656)
!4732 = !DILocation(line: 0, scope: !4724)
!4733 = !DILocation(line: 132, column: 18, scope: !4734)
!4734 = distinct !DILexicalBlock(scope: !4724, file: !1082, line: 132, column: 9)
!4735 = !DILocation(line: 132, column: 9, scope: !4724)
!4736 = !DILocation(line: 136, column: 14, scope: !4737)
!4737 = distinct !DILexicalBlock(scope: !4724, file: !1082, line: 136, column: 9)
!4738 = !DILocation(line: 136, column: 9, scope: !4724)
!4739 = !DILocation(line: 140, column: 14, scope: !4724)
!4740 = !DILocation(line: 141, column: 18, scope: !4724)
!4741 = !DILocation(line: 141, column: 16, scope: !4724)
!4742 = !DILocation(line: 142, column: 5, scope: !4724)
!4743 = !DILocation(line: 143, column: 1, scope: !4724)
!4744 = distinct !DISubprogram(name: "hal_gpio_toggle_pin", scope: !1082, file: !1082, line: 146, type: !4636, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1081, retainedNodes: !4745)
!4745 = !{!4746, !4747}
!4746 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4744, file: !1082, line: 146, type: !4618)
!4747 = !DILocalVariable(name: "status", scope: !4744, file: !1082, line: 148, type: !4656)
!4748 = !DILocation(line: 0, scope: !4744)
!4749 = !DILocation(line: 149, column: 18, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4744, file: !1082, line: 149, column: 9)
!4751 = !DILocation(line: 149, column: 9, scope: !4744)
!4752 = !DILocation(line: 153, column: 14, scope: !4744)
!4753 = !DILocation(line: 154, column: 76, scope: !4744)
!4754 = !DILocation(line: 154, column: 12, scope: !4744)
!4755 = !DILocation(line: 154, column: 5, scope: !4744)
!4756 = !DILocation(line: 155, column: 1, scope: !4744)
!4757 = distinct !DISubprogram(name: "hal_gpio_pull_up", scope: !1082, file: !1082, line: 157, type: !4636, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1081, retainedNodes: !4758)
!4758 = !{!4759, !4760}
!4759 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4757, file: !1082, line: 157, type: !4618)
!4760 = !DILocalVariable(name: "ret_value", scope: !4757, file: !1082, line: 159, type: !285)
!4761 = !DILocation(line: 0, scope: !4757)
!4762 = !DILocation(line: 160, column: 18, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4757, file: !1082, line: 160, column: 9)
!4764 = !DILocation(line: 160, column: 9, scope: !4757)
!4765 = !DILocation(line: 164, column: 17, scope: !4757)
!4766 = !DILocation(line: 165, column: 19, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4757, file: !1082, line: 165, column: 9)
!4768 = !DILocation(line: 165, column: 9, scope: !4757)
!4769 = !DILocation(line: 168, column: 17, scope: !4757)
!4770 = !DILocation(line: 169, column: 12, scope: !4757)
!4771 = !DILocation(line: 169, column: 5, scope: !4757)
!4772 = !DILocation(line: 170, column: 1, scope: !4757)
!4773 = distinct !DISubprogram(name: "hal_gpio_pull_down", scope: !1082, file: !1082, line: 172, type: !4636, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1081, retainedNodes: !4774)
!4774 = !{!4775, !4776}
!4775 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4773, file: !1082, line: 172, type: !4618)
!4776 = !DILocalVariable(name: "ret_value", scope: !4773, file: !1082, line: 174, type: !285)
!4777 = !DILocation(line: 0, scope: !4773)
!4778 = !DILocation(line: 175, column: 18, scope: !4779)
!4779 = distinct !DILexicalBlock(scope: !4773, file: !1082, line: 175, column: 9)
!4780 = !DILocation(line: 175, column: 9, scope: !4773)
!4781 = !DILocation(line: 179, column: 17, scope: !4773)
!4782 = !DILocation(line: 180, column: 19, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4773, file: !1082, line: 180, column: 9)
!4784 = !DILocation(line: 180, column: 9, scope: !4773)
!4785 = !DILocation(line: 183, column: 17, scope: !4773)
!4786 = !DILocation(line: 184, column: 12, scope: !4773)
!4787 = !DILocation(line: 184, column: 5, scope: !4773)
!4788 = !DILocation(line: 185, column: 1, scope: !4773)
!4789 = distinct !DISubprogram(name: "hal_gpio_disable_pull", scope: !1082, file: !1082, line: 187, type: !4636, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1081, retainedNodes: !4790)
!4790 = !{!4791, !4792}
!4791 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4789, file: !1082, line: 187, type: !4618)
!4792 = !DILocalVariable(name: "ret_value", scope: !4789, file: !1082, line: 189, type: !285)
!4793 = !DILocation(line: 0, scope: !4789)
!4794 = !DILocation(line: 191, column: 18, scope: !4795)
!4795 = distinct !DILexicalBlock(scope: !4789, file: !1082, line: 191, column: 9)
!4796 = !DILocation(line: 191, column: 9, scope: !4789)
!4797 = !DILocation(line: 195, column: 17, scope: !4789)
!4798 = !DILocation(line: 196, column: 12, scope: !4789)
!4799 = !DILocation(line: 196, column: 5, scope: !4789)
!4800 = !DILocation(line: 197, column: 1, scope: !4789)
!4801 = distinct !DISubprogram(name: "hal_gpio_set_driving_current", scope: !1082, file: !1082, line: 200, type: !4802, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1081, retainedNodes: !4804)
!4802 = !DISubroutineType(types: !4803)
!4803 = !{!4638, !4618, !1144}
!4804 = !{!4805, !4806, !4807}
!4805 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4801, file: !1082, line: 200, type: !4618)
!4806 = !DILocalVariable(name: "driving", arg: 2, scope: !4801, file: !1082, line: 200, type: !1144)
!4807 = !DILocalVariable(name: "ret_value", scope: !4801, file: !1082, line: 202, type: !285)
!4808 = !DILocation(line: 0, scope: !4801)
!4809 = !DILocation(line: 204, column: 18, scope: !4810)
!4810 = distinct !DILexicalBlock(scope: !4801, file: !1082, line: 204, column: 9)
!4811 = !DILocation(line: 204, column: 9, scope: !4801)
!4812 = !DILocation(line: 208, column: 64, scope: !4801)
!4813 = !DILocation(line: 208, column: 17, scope: !4801)
!4814 = !DILocation(line: 210, column: 12, scope: !4801)
!4815 = !DILocation(line: 210, column: 5, scope: !4801)
!4816 = !DILocation(line: 211, column: 1, scope: !4801)
!4817 = distinct !DISubprogram(name: "hal_gpio_get_driving_current", scope: !1082, file: !1082, line: 214, type: !4818, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1081, retainedNodes: !4821)
!4818 = !DISubroutineType(types: !4819)
!4819 = !{!4638, !4618, !4820}
!4820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 32)
!4821 = !{!4822, !4823, !4824, !4825}
!4822 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4817, file: !1082, line: 214, type: !4618)
!4823 = !DILocalVariable(name: "driving", arg: 2, scope: !4817, file: !1082, line: 214, type: !4820)
!4824 = !DILocalVariable(name: "ret_value", scope: !4817, file: !1082, line: 216, type: !285)
!4825 = !DILocalVariable(name: "value", scope: !4817, file: !1082, line: 217, type: !236)
!4826 = !DILocation(line: 0, scope: !4817)
!4827 = !DILocation(line: 217, column: 5, scope: !4817)
!4828 = !DILocation(line: 219, column: 18, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4817, file: !1082, line: 219, column: 9)
!4830 = !DILocation(line: 219, column: 9, scope: !4817)
!4831 = !DILocation(line: 223, column: 17, scope: !4817)
!4832 = !DILocation(line: 225, column: 44, scope: !4817)
!4833 = !DILocation(line: 225, column: 16, scope: !4817)
!4834 = !DILocation(line: 225, column: 14, scope: !4817)
!4835 = !DILocation(line: 227, column: 12, scope: !4817)
!4836 = !DILocation(line: 227, column: 5, scope: !4817)
!4837 = !DILocation(line: 228, column: 1, scope: !4817)
!4838 = distinct !DISubprogram(name: "hal_gpt_init", scope: !573, file: !573, line: 82, type: !4839, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !4843)
!4839 = !DISubroutineType(types: !4840)
!4840 = !{!4841, !4842}
!4841 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_status_t", file: !576, line: 393, baseType: !575)
!4842 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_port_t", file: !423, line: 663, baseType: !583)
!4843 = !{!4844}
!4844 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4838, file: !573, line: 82, type: !4842)
!4845 = !DILocation(line: 0, scope: !4838)
!4846 = !DILocation(line: 84, column: 9, scope: !4847)
!4847 = distinct !DILexicalBlock(scope: !4838, file: !573, line: 84, column: 9)
!4848 = !DILocation(line: 84, column: 33, scope: !4847)
!4849 = !DILocation(line: 84, column: 9, scope: !4838)
!4850 = !DILocation(line: 88, column: 9, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4838, file: !573, line: 88, column: 9)
!4852 = !DILocation(line: 88, column: 9, scope: !4838)
!4853 = !DILocation(line: 89, column: 9, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4851, file: !573, line: 88, column: 50)
!4855 = !DILocation(line: 90, column: 9, scope: !4854)
!4856 = !DILocation(line: 92, column: 12, scope: !4838)
!4857 = !DILocation(line: 92, column: 5, scope: !4838)
!4858 = !DILocation(line: 96, column: 43, scope: !4838)
!4859 = !DILocation(line: 98, column: 5, scope: !4838)
!4860 = !DILocation(line: 99, column: 1, scope: !4838)
!4861 = distinct !DISubprogram(name: "hal_gpt_is_port_valid", scope: !573, file: !573, line: 63, type: !4862, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !4864)
!4862 = !DISubroutineType(types: !4863)
!4863 = !{!477, !4842}
!4864 = !{!4865}
!4865 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4861, file: !573, line: 63, type: !4842)
!4866 = !DILocation(line: 0, scope: !4861)
!4867 = !DILocation(line: 65, column: 19, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4861, file: !573, line: 65, column: 9)
!4869 = !DILocation(line: 65, column: 34, scope: !4868)
!4870 = !DILocation(line: 70, column: 1, scope: !4861)
!4871 = distinct !DISubprogram(name: "hal_gpt_deinit", scope: !573, file: !573, line: 101, type: !4839, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !4872)
!4872 = !{!4873}
!4873 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4871, file: !573, line: 101, type: !4842)
!4874 = !DILocation(line: 0, scope: !4871)
!4875 = !DILocation(line: 103, column: 9, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !4871, file: !573, line: 103, column: 9)
!4877 = !DILocation(line: 103, column: 9, scope: !4871)
!4878 = !DILocation(line: 104, column: 9, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4876, file: !573, line: 103, column: 50)
!4880 = !DILocation(line: 105, column: 9, scope: !4879)
!4881 = !DILocation(line: 108, column: 9, scope: !4882)
!4882 = distinct !DILexicalBlock(scope: !4871, file: !573, line: 108, column: 9)
!4883 = !DILocation(line: 108, column: 33, scope: !4882)
!4884 = !DILocation(line: 108, column: 48, scope: !4882)
!4885 = !DILocation(line: 108, column: 9, scope: !4871)
!4886 = !DILocation(line: 109, column: 9, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4882, file: !573, line: 108, column: 68)
!4888 = !DILocation(line: 110, column: 9, scope: !4887)
!4889 = !DILocation(line: 113, column: 12, scope: !4871)
!4890 = !DILocation(line: 113, column: 5, scope: !4871)
!4891 = !DILocation(line: 116, column: 29, scope: !4871)
!4892 = !DILocation(line: 116, column: 43, scope: !4871)
!4893 = !DILocation(line: 117, column: 5, scope: !4871)
!4894 = !DILocation(line: 118, column: 1, scope: !4871)
!4895 = distinct !DISubprogram(name: "hal_gpt_get_free_run_count", scope: !573, file: !573, line: 120, type: !4896, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !4899)
!4896 = !DISubroutineType(types: !4897)
!4897 = !{!4841, !4898, !3556}
!4898 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_clock_source_t", file: !423, line: 674, baseType: !594)
!4899 = !{!4900, !4901}
!4900 = !DILocalVariable(name: "clock_source", arg: 1, scope: !4895, file: !573, line: 120, type: !4898)
!4901 = !DILocalVariable(name: "count", arg: 2, scope: !4895, file: !573, line: 120, type: !3556)
!4902 = !DILocation(line: 0, scope: !4895)
!4903 = !DILocation(line: 122, column: 9, scope: !4895)
!4904 = !DILocation(line: 123, column: 50, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4906, file: !573, line: 123, column: 13)
!4906 = distinct !DILexicalBlock(scope: !4907, file: !573, line: 122, column: 51)
!4907 = distinct !DILexicalBlock(scope: !4895, file: !573, line: 122, column: 9)
!4908 = !DILocation(line: 123, column: 65, scope: !4905)
!4909 = !DILocation(line: 123, column: 13, scope: !4906)
!4910 = !DILocation(line: 124, column: 13, scope: !4911)
!4911 = distinct !DILexicalBlock(scope: !4905, file: !573, line: 123, column: 86)
!4912 = !DILocation(line: 125, column: 9, scope: !4911)
!4913 = !DILocation(line: 126, column: 18, scope: !4906)
!4914 = !DILocation(line: 126, column: 16, scope: !4906)
!4915 = !DILocation(line: 127, column: 49, scope: !4906)
!4916 = !DILocation(line: 128, column: 5, scope: !4906)
!4917 = !DILocation(line: 129, column: 50, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4919, file: !573, line: 129, column: 13)
!4919 = distinct !DILexicalBlock(scope: !4920, file: !573, line: 128, column: 57)
!4920 = distinct !DILexicalBlock(scope: !4907, file: !573, line: 128, column: 16)
!4921 = !DILocation(line: 129, column: 65, scope: !4918)
!4922 = !DILocation(line: 129, column: 13, scope: !4919)
!4923 = !DILocation(line: 130, column: 13, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4918, file: !573, line: 129, column: 86)
!4925 = !DILocation(line: 131, column: 9, scope: !4924)
!4926 = !DILocation(line: 132, column: 18, scope: !4919)
!4927 = !DILocation(line: 132, column: 46, scope: !4919)
!4928 = !DILocation(line: 132, column: 65, scope: !4919)
!4929 = !DILocation(line: 132, column: 43, scope: !4919)
!4930 = !DILocation(line: 132, column: 16, scope: !4919)
!4931 = !DILocation(line: 133, column: 49, scope: !4919)
!4932 = !DILocation(line: 134, column: 5, scope: !4919)
!4933 = !DILocation(line: 135, column: 50, scope: !4934)
!4934 = distinct !DILexicalBlock(scope: !4935, file: !573, line: 135, column: 13)
!4935 = distinct !DILexicalBlock(scope: !4936, file: !573, line: 134, column: 58)
!4936 = distinct !DILexicalBlock(scope: !4920, file: !573, line: 134, column: 16)
!4937 = !DILocation(line: 135, column: 65, scope: !4934)
!4938 = !DILocation(line: 135, column: 13, scope: !4935)
!4939 = !DILocation(line: 136, column: 13, scope: !4940)
!4940 = distinct !DILexicalBlock(scope: !4934, file: !573, line: 135, column: 86)
!4941 = !DILocation(line: 137, column: 9, scope: !4940)
!4942 = !DILocation(line: 138, column: 18, scope: !4935)
!4943 = !DILocation(line: 138, column: 16, scope: !4935)
!4944 = !DILocation(line: 139, column: 49, scope: !4935)
!4945 = !DILocation(line: 141, column: 9, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4936, file: !573, line: 140, column: 11)
!4947 = !DILocation(line: 142, column: 9, scope: !4946)
!4948 = !DILocation(line: 146, column: 1, scope: !4895)
!4949 = distinct !DISubprogram(name: "hal_gpt_get_duration_count", scope: !573, file: !573, line: 148, type: !4950, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !4952)
!4950 = !DISubroutineType(types: !4951)
!4951 = !{!4841, !204, !204, !3556}
!4952 = !{!4953, !4954, !4955}
!4953 = !DILocalVariable(name: "start_count", arg: 1, scope: !4949, file: !573, line: 148, type: !204)
!4954 = !DILocalVariable(name: "end_count", arg: 2, scope: !4949, file: !573, line: 148, type: !204)
!4955 = !DILocalVariable(name: "duration_count", arg: 3, scope: !4949, file: !573, line: 148, type: !3556)
!4956 = !DILocation(line: 0, scope: !4949)
!4957 = !DILocation(line: 150, column: 24, scope: !4958)
!4958 = distinct !DILexicalBlock(scope: !4949, file: !573, line: 150, column: 9)
!4959 = !DILocation(line: 150, column: 9, scope: !4949)
!4960 = !DILocation(line: 0, scope: !4961)
!4961 = distinct !DILexicalBlock(scope: !4949, file: !573, line: 154, column: 9)
!4962 = !DILocation(line: 160, column: 5, scope: !4949)
!4963 = !DILocation(line: 161, column: 1, scope: !4949)
!4964 = distinct !DISubprogram(name: "hal_gpt_get_running_status", scope: !573, file: !573, line: 163, type: !4965, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !4968)
!4965 = !DISubroutineType(types: !4966)
!4966 = !{!4841, !4842, !4967}
!4967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 32)
!4968 = !{!4969, !4970}
!4969 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4964, file: !573, line: 163, type: !4842)
!4970 = !DILocalVariable(name: "running_status", arg: 2, scope: !4964, file: !573, line: 164, type: !4967)
!4971 = !DILocation(line: 0, scope: !4964)
!4972 = !DILocation(line: 166, column: 18, scope: !4973)
!4973 = distinct !DILexicalBlock(scope: !4964, file: !573, line: 166, column: 9)
!4974 = !DILocation(line: 166, column: 9, scope: !4964)
!4975 = !DILocation(line: 167, column: 9, scope: !4976)
!4976 = distinct !DILexicalBlock(scope: !4973, file: !573, line: 166, column: 34)
!4977 = !DILocation(line: 168, column: 9, scope: !4976)
!4978 = !DILocation(line: 170, column: 47, scope: !4964)
!4979 = !DILocation(line: 170, column: 21, scope: !4964)
!4980 = !DILocation(line: 171, column: 5, scope: !4964)
!4981 = !DILocation(line: 172, column: 1, scope: !4964)
!4982 = distinct !DISubprogram(name: "hal_gpt_register_callback", scope: !573, file: !573, line: 174, type: !4983, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !4985)
!4983 = !DISubroutineType(types: !4984)
!4984 = !{!4841, !4842, !616, !464}
!4985 = !{!4986, !4987, !4988}
!4986 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4982, file: !573, line: 174, type: !4842)
!4987 = !DILocalVariable(name: "callback", arg: 2, scope: !4982, file: !573, line: 175, type: !616)
!4988 = !DILocalVariable(name: "user_data", arg: 3, scope: !4982, file: !573, line: 176, type: !464)
!4989 = !DILocation(line: 0, scope: !4982)
!4990 = !DILocation(line: 178, column: 9, scope: !4991)
!4991 = distinct !DILexicalBlock(scope: !4982, file: !573, line: 178, column: 9)
!4992 = !DILocation(line: 178, column: 9, scope: !4982)
!4993 = !DILocation(line: 179, column: 9, scope: !4994)
!4994 = distinct !DILexicalBlock(scope: !4991, file: !573, line: 178, column: 50)
!4995 = !DILocation(line: 180, column: 9, scope: !4994)
!4996 = !DILocation(line: 182, column: 33, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !4982, file: !573, line: 182, column: 9)
!4998 = !DILocation(line: 182, column: 47, scope: !4997)
!4999 = !DILocation(line: 182, column: 9, scope: !4982)
!5000 = !DILocation(line: 185, column: 18, scope: !5001)
!5001 = distinct !DILexicalBlock(scope: !4982, file: !573, line: 185, column: 9)
!5002 = !DILocation(line: 185, column: 9, scope: !4982)
!5003 = !DILocation(line: 188, column: 46, scope: !4982)
!5004 = !DILocation(line: 188, column: 56, scope: !4982)
!5005 = !DILocation(line: 189, column: 46, scope: !4982)
!5006 = !DILocation(line: 189, column: 56, scope: !4982)
!5007 = !DILocation(line: 190, column: 5, scope: !4982)
!5008 = !DILocation(line: 191, column: 1, scope: !4982)
!5009 = distinct !DISubprogram(name: "hal_gpt_start_timer_ms", scope: !573, file: !573, line: 218, type: !5010, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !5013)
!5010 = !DISubroutineType(types: !5011)
!5011 = !{!4841, !4842, !204, !5012}
!5012 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_timer_type_t", file: !576, line: 383, baseType: !599)
!5013 = !{!5014, !5015, !5016}
!5014 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !5009, file: !573, line: 218, type: !4842)
!5015 = !DILocalVariable(name: "timeout_time_ms", arg: 2, scope: !5009, file: !573, line: 218, type: !204)
!5016 = !DILocalVariable(name: "timer_type", arg: 3, scope: !5009, file: !573, line: 218, type: !5012)
!5017 = !DILocation(line: 0, scope: !5009)
!5018 = !DILocation(line: 220, column: 9, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !5009, file: !573, line: 220, column: 9)
!5020 = !DILocation(line: 220, column: 9, scope: !5009)
!5021 = !DILocation(line: 221, column: 9, scope: !5022)
!5022 = distinct !DILexicalBlock(scope: !5019, file: !573, line: 220, column: 50)
!5023 = !DILocation(line: 222, column: 9, scope: !5022)
!5024 = !DILocation(line: 225, column: 33, scope: !5025)
!5025 = distinct !DILexicalBlock(scope: !5009, file: !573, line: 225, column: 9)
!5026 = !DILocation(line: 225, column: 47, scope: !5025)
!5027 = !DILocation(line: 225, column: 9, scope: !5009)
!5028 = !DILocation(line: 229, column: 25, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !5009, file: !573, line: 229, column: 9)
!5030 = !DILocation(line: 229, column: 9, scope: !5009)
!5031 = !DILocation(line: 234, column: 17, scope: !5009)
!5032 = !DILocation(line: 235, column: 17, scope: !5009)
!5033 = !DILocation(line: 236, column: 17, scope: !5009)
!5034 = !DILocation(line: 233, column: 5, scope: !5009)
!5035 = !DILocation(line: 237, column: 5, scope: !5009)
!5036 = !DILocation(line: 238, column: 29, scope: !5009)
!5037 = !DILocation(line: 238, column: 44, scope: !5009)
!5038 = !DILocation(line: 239, column: 5, scope: !5009)
!5039 = !DILocation(line: 240, column: 1, scope: !5009)
!5040 = distinct !DISubprogram(name: "hal_gpt_translate_timeout_time", scope: !573, file: !573, line: 72, type: !5041, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !5043)
!5041 = !DISubroutineType(types: !5042)
!5042 = !{!204, !204}
!5043 = !{!5044}
!5044 = !DILocalVariable(name: "mili_seconds", arg: 1, scope: !5040, file: !573, line: 72, type: !204)
!5045 = !DILocation(line: 0, scope: !5040)
!5046 = !DILocation(line: 74, column: 37, scope: !5040)
!5047 = !DILocation(line: 74, column: 47, scope: !5040)
!5048 = !DILocation(line: 74, column: 63, scope: !5040)
!5049 = !DILocation(line: 74, column: 42, scope: !5040)
!5050 = !DILocation(line: 74, column: 73, scope: !5040)
!5051 = !DILocation(line: 74, column: 89, scope: !5040)
!5052 = !DILocation(line: 74, column: 68, scope: !5040)
!5053 = !DILocation(line: 74, column: 100, scope: !5040)
!5054 = !DILocation(line: 74, column: 116, scope: !5040)
!5055 = !DILocation(line: 74, column: 95, scope: !5040)
!5056 = !DILocation(line: 74, column: 5, scope: !5040)
!5057 = distinct !DISubprogram(name: "hal_gpt_translate_type", scope: !573, file: !573, line: 77, type: !5058, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !5060)
!5058 = !DISubroutineType(types: !5059)
!5059 = !{!477, !5012}
!5060 = !{!5061}
!5061 = !DILocalVariable(name: "type", arg: 1, scope: !5057, file: !573, line: 77, type: !5012)
!5062 = !DILocation(line: 0, scope: !5057)
!5063 = !DILocation(line: 79, column: 38, scope: !5057)
!5064 = !DILocation(line: 79, column: 5, scope: !5057)
!5065 = distinct !DISubprogram(name: "hal_gpt_map_callback", scope: !573, file: !573, line: 213, type: !5066, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !5069)
!5066 = !DISubroutineType(types: !5067)
!5067 = !{!5068, !4842}
!5068 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_internal_callback_t", file: !573, line: 211, baseType: !74)
!5069 = !{!5070}
!5070 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !5065, file: !573, line: 213, type: !4842)
!5071 = !DILocation(line: 0, scope: !5065)
!5072 = !DILocation(line: 215, column: 23, scope: !5065)
!5073 = !DILocation(line: 215, column: 12, scope: !5065)
!5074 = !DILocation(line: 215, column: 5, scope: !5065)
!5075 = distinct !DISubprogram(name: "hal_gpt_callback0", scope: !573, file: !573, line: 193, type: !75, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !5076)
!5076 = !{!5077}
!5077 = !DILocalVariable(name: "context", scope: !5075, file: !573, line: 195, type: !5078)
!5078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 32)
!5079 = !DILocation(line: 196, column: 26, scope: !5080)
!5080 = distinct !DILexicalBlock(scope: !5075, file: !573, line: 196, column: 9)
!5081 = !DILocation(line: 196, column: 14, scope: !5080)
!5082 = !DILocation(line: 196, column: 9, scope: !5075)
!5083 = !DILocation(line: 197, column: 36, scope: !5084)
!5084 = distinct !DILexicalBlock(scope: !5080, file: !573, line: 196, column: 36)
!5085 = !DILocation(line: 197, column: 9, scope: !5084)
!5086 = !DILocation(line: 198, column: 5, scope: !5084)
!5087 = !DILocation(line: 199, column: 45, scope: !5075)
!5088 = !DILocation(line: 200, column: 1, scope: !5075)
!5089 = distinct !DISubprogram(name: "hal_gpt_callback1", scope: !573, file: !573, line: 202, type: !75, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !5090)
!5090 = !{!5091}
!5091 = !DILocalVariable(name: "context", scope: !5089, file: !573, line: 204, type: !5078)
!5092 = !DILocation(line: 205, column: 26, scope: !5093)
!5093 = distinct !DILexicalBlock(scope: !5089, file: !573, line: 205, column: 9)
!5094 = !DILocation(line: 205, column: 14, scope: !5093)
!5095 = !DILocation(line: 205, column: 9, scope: !5089)
!5096 = !DILocation(line: 206, column: 36, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !5093, file: !573, line: 205, column: 36)
!5098 = !DILocation(line: 206, column: 9, scope: !5097)
!5099 = !DILocation(line: 207, column: 5, scope: !5097)
!5100 = !DILocation(line: 208, column: 45, scope: !5089)
!5101 = !DILocation(line: 209, column: 1, scope: !5089)
!5102 = distinct !DISubprogram(name: "hal_gpt_stop_timer", scope: !573, file: !573, line: 242, type: !4839, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !5103)
!5103 = !{!5104}
!5104 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !5102, file: !573, line: 242, type: !4842)
!5105 = !DILocation(line: 0, scope: !5102)
!5106 = !DILocation(line: 244, column: 9, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !5102, file: !573, line: 244, column: 9)
!5108 = !DILocation(line: 244, column: 9, scope: !5102)
!5109 = !DILocation(line: 245, column: 9, scope: !5110)
!5110 = distinct !DILexicalBlock(scope: !5107, file: !573, line: 244, column: 50)
!5111 = !DILocation(line: 246, column: 9, scope: !5110)
!5112 = !DILocation(line: 248, column: 5, scope: !5102)
!5113 = !DILocation(line: 249, column: 29, scope: !5102)
!5114 = !DILocation(line: 249, column: 44, scope: !5102)
!5115 = !DILocation(line: 250, column: 5, scope: !5102)
!5116 = !DILocation(line: 251, column: 1, scope: !5102)
!5117 = distinct !DISubprogram(name: "hal_gpt_delay_ms", scope: !573, file: !573, line: 253, type: !5118, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !5120)
!5118 = !DISubroutineType(types: !5119)
!5119 = !{!4841, !204}
!5120 = !{!5121}
!5121 = !DILocalVariable(name: "ms", arg: 1, scope: !5117, file: !573, line: 253, type: !204)
!5122 = !DILocation(line: 0, scope: !5117)
!5123 = !DILocation(line: 255, column: 46, scope: !5124)
!5124 = distinct !DILexicalBlock(scope: !5117, file: !573, line: 255, column: 9)
!5125 = !DILocation(line: 255, column: 61, scope: !5124)
!5126 = !DILocation(line: 255, column: 9, scope: !5117)
!5127 = !DILocation(line: 256, column: 9, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !5124, file: !573, line: 255, column: 82)
!5129 = !DILocation(line: 257, column: 5, scope: !5128)
!5130 = !DILocation(line: 258, column: 5, scope: !5117)
!5131 = !DILocation(line: 259, column: 57, scope: !5117)
!5132 = !DILocation(line: 260, column: 5, scope: !5117)
!5133 = distinct !DISubprogram(name: "hal_gpt_delay_us", scope: !573, file: !573, line: 264, type: !5118, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !5134)
!5134 = !{!5135}
!5135 = !DILocalVariable(name: "us", arg: 1, scope: !5133, file: !573, line: 264, type: !204)
!5136 = !DILocation(line: 0, scope: !5133)
!5137 = !DILocation(line: 266, column: 46, scope: !5138)
!5138 = distinct !DILexicalBlock(scope: !5133, file: !573, line: 266, column: 9)
!5139 = !DILocation(line: 266, column: 61, scope: !5138)
!5140 = !DILocation(line: 266, column: 9, scope: !5133)
!5141 = !DILocation(line: 267, column: 9, scope: !5142)
!5142 = distinct !DILexicalBlock(scope: !5138, file: !573, line: 266, column: 82)
!5143 = !DILocation(line: 268, column: 5, scope: !5142)
!5144 = !DILocation(line: 269, column: 5, scope: !5133)
!5145 = !DILocation(line: 270, column: 57, scope: !5133)
!5146 = !DILocation(line: 271, column: 5, scope: !5133)
!5147 = distinct !DISubprogram(name: "hal_uart_init", scope: !622, file: !622, line: 234, type: !5148, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5152)
!5148 = !DISubroutineType(types: !5149)
!5149 = !{!5150, !682, !5151}
!5150 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_status_t", file: !625, line: 351, baseType: !624)
!5151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 32)
!5152 = !{!5153, !5154}
!5153 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5147, file: !622, line: 234, type: !682)
!5154 = !DILocalVariable(name: "uart_config", arg: 2, scope: !5147, file: !622, line: 234, type: !5151)
!5155 = !DILocation(line: 0, scope: !5147)
!5156 = !DILocation(line: 236, column: 10, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5147, file: !622, line: 236, column: 9)
!5158 = !DILocation(line: 236, column: 9, scope: !5147)
!5159 = !DILocation(line: 239, column: 41, scope: !5160)
!5160 = distinct !DILexicalBlock(scope: !5147, file: !622, line: 239, column: 9)
!5161 = !DILocation(line: 239, column: 9, scope: !5147)
!5162 = !DILocation(line: 242, column: 5, scope: !5147)
!5163 = !DILocation(line: 243, column: 45, scope: !5147)
!5164 = !DILocation(line: 243, column: 12, scope: !5147)
!5165 = !DILocation(line: 244, column: 12, scope: !5147)
!5166 = !DILocation(line: 243, column: 5, scope: !5147)
!5167 = !DILocation(line: 245, column: 58, scope: !5147)
!5168 = !DILocation(line: 246, column: 30, scope: !5147)
!5169 = !{i32 0, i32 2}
!5170 = !DILocation(line: 246, column: 5, scope: !5147)
!5171 = !DILocation(line: 247, column: 5, scope: !5147)
!5172 = !DILocation(line: 249, column: 31, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !5147, file: !622, line: 249, column: 9)
!5174 = !DILocation(line: 249, column: 28, scope: !5173)
!5175 = !DILocation(line: 261, column: 1, scope: !5147)
!5176 = distinct !DISubprogram(name: "hal_uart_is_config_valid", scope: !622, file: !622, line: 93, type: !5177, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5181)
!5177 = !DISubroutineType(types: !5178)
!5178 = !{!477, !682, !5179}
!5179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5180, size: 32)
!5180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !693)
!5181 = !{!5182, !5183}
!5182 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5176, file: !622, line: 93, type: !682)
!5183 = !DILocalVariable(name: "uart_config", arg: 2, scope: !5176, file: !622, line: 93, type: !5179)
!5184 = !DILocation(line: 0, scope: !5176)
!5185 = !DILocation(line: 95, column: 10, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5176, file: !622, line: 95, column: 9)
!5187 = !DILocation(line: 95, column: 9, scope: !5176)
!5188 = !DILocation(line: 101, column: 23, scope: !5189)
!5189 = distinct !DILexicalBlock(scope: !5176, file: !622, line: 101, column: 9)
!5190 = !DILocation(line: 101, column: 32, scope: !5189)
!5191 = !DILocation(line: 101, column: 60, scope: !5189)
!5192 = !DILocation(line: 102, column: 27, scope: !5189)
!5193 = !DILocation(line: 102, column: 34, scope: !5189)
!5194 = !DILocation(line: 102, column: 58, scope: !5189)
!5195 = !DILocation(line: 103, column: 27, scope: !5189)
!5196 = !DILocation(line: 103, column: 36, scope: !5189)
!5197 = !DILocation(line: 103, column: 59, scope: !5189)
!5198 = !DILocation(line: 104, column: 27, scope: !5189)
!5199 = !DILocation(line: 104, column: 39, scope: !5189)
!5200 = !DILocation(line: 101, column: 9, scope: !5176)
!5201 = !DILocation(line: 109, column: 1, scope: !5176)
!5202 = distinct !DISubprogram(name: "hal_uart_translate_port", scope: !622, file: !622, line: 139, type: !5203, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5205)
!5203 = !DISubroutineType(types: !5204)
!5204 = !{!3409, !682}
!5205 = !{!5206}
!5206 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5202, file: !622, line: 139, type: !682)
!5207 = !DILocation(line: 0, scope: !5202)
!5208 = !DILocation(line: 141, column: 24, scope: !5202)
!5209 = !DILocation(line: 141, column: 12, scope: !5202)
!5210 = !DILocation(line: 141, column: 5, scope: !5202)
!5211 = distinct !DISubprogram(name: "hal_uart_set_format", scope: !622, file: !622, line: 593, type: !5212, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5214)
!5212 = !DISubroutineType(types: !5213)
!5213 = !{!5150, !682, !5179}
!5214 = !{!5215, !5216}
!5215 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5211, file: !622, line: 593, type: !682)
!5216 = !DILocalVariable(name: "config", arg: 2, scope: !5211, file: !622, line: 593, type: !5179)
!5217 = !DILocation(line: 0, scope: !5211)
!5218 = !DILocation(line: 595, column: 10, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5211, file: !622, line: 595, column: 9)
!5220 = !DILocation(line: 595, column: 9, scope: !5211)
!5221 = !DILocation(line: 598, column: 45, scope: !5211)
!5222 = !DILocation(line: 598, column: 12, scope: !5211)
!5223 = !DILocation(line: 598, column: 59, scope: !5211)
!5224 = !DILocation(line: 598, column: 5, scope: !5211)
!5225 = !DILocation(line: 599, column: 23, scope: !5211)
!5226 = !DILocation(line: 600, column: 59, scope: !5211)
!5227 = !DILocation(line: 600, column: 23, scope: !5211)
!5228 = !DILocation(line: 601, column: 62, scope: !5211)
!5229 = !DILocation(line: 601, column: 23, scope: !5211)
!5230 = !DILocation(line: 602, column: 57, scope: !5211)
!5231 = !DILocation(line: 602, column: 23, scope: !5211)
!5232 = !DILocation(line: 603, column: 58, scope: !5211)
!5233 = !DILocation(line: 603, column: 23, scope: !5211)
!5234 = !DILocation(line: 599, column: 5, scope: !5211)
!5235 = !DILocation(line: 604, column: 5, scope: !5211)
!5236 = !DILocation(line: 605, column: 1, scope: !5211)
!5237 = distinct !DISubprogram(name: "hal_uart_translate_baudrate", scope: !622, file: !622, line: 145, type: !5238, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5240)
!5238 = !DISubroutineType(types: !5239)
!5239 = !{!204, !697}
!5240 = !{!5241, !5242}
!5241 = !DILocalVariable(name: "bandrate", arg: 1, scope: !5237, file: !622, line: 145, type: !697)
!5242 = !DILocalVariable(name: "baudrate_tbl", scope: !5237, file: !622, line: 147, type: !5243)
!5243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 416, elements: !5244)
!5244 = !{!5245}
!5245 = !DISubrange(count: 13)
!5246 = !DILocation(line: 0, scope: !5237)
!5247 = !DILocation(line: 147, column: 14, scope: !5237)
!5248 = !DILocation(line: 151, column: 12, scope: !5237)
!5249 = !DILocation(line: 151, column: 5, scope: !5237)
!5250 = distinct !DISubprogram(name: "hal_uart_translate_word_length", scope: !622, file: !622, line: 155, type: !5251, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5253)
!5251 = !DISubroutineType(types: !5252)
!5252 = !{!3479, !699}
!5253 = !{!5254, !5255}
!5254 = !DILocalVariable(name: "word_length", arg: 1, scope: !5250, file: !622, line: 155, type: !699)
!5255 = !DILocalVariable(name: "databit_tbl", scope: !5250, file: !622, line: 157, type: !5256)
!5256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3479, size: 64, elements: !276)
!5257 = !DILocation(line: 0, scope: !5250)
!5258 = !DILocation(line: 157, column: 14, scope: !5250)
!5259 = !DILocation(line: 160, column: 12, scope: !5250)
!5260 = !DILocation(line: 160, column: 5, scope: !5250)
!5261 = distinct !DISubprogram(name: "hal_uart_translate_parity", scope: !622, file: !622, line: 164, type: !5262, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5264)
!5262 = !DISubroutineType(types: !5263)
!5263 = !{!3479, !703}
!5264 = !{!5265, !5266}
!5265 = !DILocalVariable(name: "parity", arg: 1, scope: !5261, file: !622, line: 164, type: !703)
!5266 = !DILocalVariable(name: "parity_tbl", scope: !5261, file: !622, line: 166, type: !5267)
!5267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3479, size: 80, elements: !280)
!5268 = !DILocation(line: 0, scope: !5261)
!5269 = !DILocation(line: 166, column: 14, scope: !5261)
!5270 = !DILocation(line: 169, column: 12, scope: !5261)
!5271 = !DILocation(line: 169, column: 5, scope: !5261)
!5272 = distinct !DISubprogram(name: "hal_uart_translate_stopbit", scope: !622, file: !622, line: 173, type: !5273, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5275)
!5273 = !DISubroutineType(types: !5274)
!5274 = !{!3479, !701}
!5275 = !{!5276, !5277}
!5276 = !DILocalVariable(name: "stopbit", arg: 1, scope: !5272, file: !622, line: 173, type: !701)
!5277 = !DILocalVariable(name: "stopbit_tbl", scope: !5272, file: !622, line: 175, type: !5278)
!5278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3479, size: 48, elements: !859)
!5279 = !DILocation(line: 0, scope: !5272)
!5280 = !DILocation(line: 175, column: 14, scope: !5272)
!5281 = !DILocation(line: 178, column: 12, scope: !5272)
!5282 = !DILocation(line: 178, column: 5, scope: !5272)
!5283 = distinct !DISubprogram(name: "hal_uart_is_port_valid", scope: !622, file: !622, line: 87, type: !5284, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5286)
!5284 = !DISubroutineType(types: !5285)
!5285 = !{!477, !682}
!5286 = !{!5287}
!5287 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5283, file: !622, line: 87, type: !682)
!5288 = !DILocation(line: 0, scope: !5283)
!5289 = !DILocation(line: 89, column: 23, scope: !5283)
!5290 = !DILocation(line: 89, column: 5, scope: !5283)
!5291 = distinct !DISubprogram(name: "hal_uart_deinit", scope: !622, file: !622, line: 264, type: !5292, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5294)
!5292 = !DISubroutineType(types: !5293)
!5293 = !{!5150, !682}
!5294 = !{!5295}
!5295 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5291, file: !622, line: 264, type: !682)
!5296 = !DILocation(line: 0, scope: !5291)
!5297 = !DILocation(line: 266, column: 10, scope: !5298)
!5298 = distinct !DILexicalBlock(scope: !5291, file: !622, line: 266, column: 9)
!5299 = !DILocation(line: 266, column: 9, scope: !5291)
!5300 = !DILocation(line: 269, column: 41, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5291, file: !622, line: 269, column: 9)
!5302 = !DILocation(line: 269, column: 62, scope: !5301)
!5303 = !DILocation(line: 269, column: 9, scope: !5291)
!5304 = !DILocation(line: 272, column: 5, scope: !5291)
!5305 = !DILocation(line: 275, column: 22, scope: !5291)
!5306 = !DILocation(line: 275, column: 5, scope: !5291)
!5307 = !DILocation(line: 284, column: 5, scope: !5291)
!5308 = !DILocation(line: 286, column: 5, scope: !5291)
!5309 = !DILocation(line: 287, column: 1, scope: !5291)
!5310 = distinct !DISubprogram(name: "hal_uart_put_char", scope: !622, file: !622, line: 290, type: !5311, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5313)
!5311 = !DISubroutineType(types: !5312)
!5312 = !{null, !682, !674}
!5313 = !{!5314, !5315, !5316}
!5314 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5310, file: !622, line: 290, type: !682)
!5315 = !DILocalVariable(name: "byte", arg: 2, scope: !5310, file: !622, line: 290, type: !674)
!5316 = !DILocalVariable(name: "int_no", scope: !5310, file: !622, line: 292, type: !3409)
!5317 = !DILocation(line: 0, scope: !5310)
!5318 = !DILocation(line: 292, column: 26, scope: !5310)
!5319 = !DILocation(line: 294, column: 16, scope: !5320)
!5320 = distinct !DILexicalBlock(scope: !5310, file: !622, line: 294, column: 9)
!5321 = !DILocation(line: 294, column: 9, scope: !5310)
!5322 = !DILocation(line: 295, column: 9, scope: !5323)
!5323 = distinct !DILexicalBlock(scope: !5320, file: !622, line: 294, column: 34)
!5324 = !DILocation(line: 296, column: 5, scope: !5323)
!5325 = !DILocation(line: 299, column: 1, scope: !5310)
!5326 = distinct !DISubprogram(name: "hal_uart_send_polling", scope: !622, file: !622, line: 302, type: !5327, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5329)
!5327 = !DISubroutineType(types: !5328)
!5328 = !{!204, !682, !3616, !204}
!5329 = !{!5330, !5331, !5332, !5333, !5334}
!5330 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5326, file: !622, line: 302, type: !682)
!5331 = !DILocalVariable(name: "data", arg: 2, scope: !5326, file: !622, line: 302, type: !3616)
!5332 = !DILocalVariable(name: "size", arg: 3, scope: !5326, file: !622, line: 302, type: !204)
!5333 = !DILocalVariable(name: "int_no", scope: !5326, file: !622, line: 304, type: !3409)
!5334 = !DILocalVariable(name: "index", scope: !5326, file: !622, line: 305, type: !204)
!5335 = !DILocation(line: 0, scope: !5326)
!5336 = !DILocation(line: 304, column: 26, scope: !5326)
!5337 = !DILocation(line: 307, column: 14, scope: !5338)
!5338 = distinct !DILexicalBlock(scope: !5326, file: !622, line: 307, column: 9)
!5339 = !DILocation(line: 307, column: 9, scope: !5326)
!5340 = !DILocation(line: 313, column: 53, scope: !5341)
!5341 = distinct !DILexicalBlock(scope: !5342, file: !622, line: 312, column: 48)
!5342 = distinct !DILexicalBlock(scope: !5343, file: !622, line: 312, column: 9)
!5343 = distinct !DILexicalBlock(scope: !5344, file: !622, line: 312, column: 9)
!5344 = distinct !DILexicalBlock(scope: !5345, file: !622, line: 311, column: 33)
!5345 = distinct !DILexicalBlock(scope: !5326, file: !622, line: 311, column: 9)
!5346 = !DILocation(line: 313, column: 13, scope: !5341)
!5347 = !DILocation(line: 312, column: 44, scope: !5342)
!5348 = !DILocation(line: 312, column: 31, scope: !5342)
!5349 = !DILocation(line: 312, column: 9, scope: !5343)
!5350 = distinct !{!5350, !5349, !5351}
!5351 = !DILocation(line: 314, column: 9, scope: !5343)
!5352 = !DILocation(line: 318, column: 1, scope: !5326)
!5353 = distinct !DISubprogram(name: "hal_uart_send_dma", scope: !622, file: !622, line: 320, type: !5327, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5354)
!5354 = !{!5355, !5356, !5357, !5358, !5359, !5360}
!5355 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5353, file: !622, line: 320, type: !682)
!5356 = !DILocalVariable(name: "data", arg: 2, scope: !5353, file: !622, line: 320, type: !3616)
!5357 = !DILocalVariable(name: "size", arg: 3, scope: !5353, file: !622, line: 320, type: !204)
!5358 = !DILocalVariable(name: "actual_space", scope: !5353, file: !622, line: 322, type: !204)
!5359 = !DILocalVariable(name: "send_size", scope: !5353, file: !622, line: 322, type: !204)
!5360 = !DILocalVariable(name: "ch", scope: !5353, file: !622, line: 323, type: !5361)
!5361 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_VFIFO_CHANNEL", file: !392, line: 144, baseType: !391)
!5362 = !DILocation(line: 0, scope: !5353)
!5363 = !DILocation(line: 322, column: 5, scope: !5353)
!5364 = !DILocation(line: 328, column: 10, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5353, file: !622, line: 328, column: 9)
!5366 = !DILocation(line: 328, column: 9, scope: !5353)
!5367 = !DILocation(line: 332, column: 15, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5353, file: !622, line: 332, column: 9)
!5369 = !DILocation(line: 332, column: 24, scope: !5368)
!5370 = !DILocation(line: 335, column: 42, scope: !5371)
!5371 = distinct !DILexicalBlock(scope: !5353, file: !622, line: 335, column: 9)
!5372 = !DILocation(line: 335, column: 9, scope: !5353)
!5373 = !DILocation(line: 349, column: 30, scope: !5353)
!5374 = !DILocation(line: 349, column: 5, scope: !5353)
!5375 = !DILocation(line: 350, column: 9, scope: !5376)
!5376 = distinct !DILexicalBlock(scope: !5353, file: !622, line: 350, column: 9)
!5377 = !DILocation(line: 350, column: 22, scope: !5376)
!5378 = !DILocation(line: 355, column: 5, scope: !5353)
!5379 = !DILocation(line: 357, column: 22, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5353, file: !622, line: 357, column: 9)
!5381 = !DILocation(line: 357, column: 19, scope: !5380)
!5382 = !DILocation(line: 357, column: 9, scope: !5353)
!5383 = !DILocation(line: 358, column: 14, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5380, file: !622, line: 357, column: 36)
!5385 = !{i32 14, i32 18}
!5386 = !DILocation(line: 359, column: 9, scope: !5384)
!5387 = !DILocation(line: 360, column: 5, scope: !5384)
!5388 = !DILocation(line: 362, column: 1, scope: !5353)
!5389 = distinct !DISubprogram(name: "uart_channel_to_dma_channel", scope: !622, file: !622, line: 191, type: !5390, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5392)
!5390 = !DISubroutineType(types: !5391)
!5391 = !{!5361, !3409, !477}
!5392 = !{!5393, !5394, !5395}
!5393 = !DILocalVariable(name: "port", arg: 1, scope: !5389, file: !622, line: 191, type: !3409)
!5394 = !DILocalVariable(name: "is_rx", arg: 2, scope: !5389, file: !622, line: 191, type: !477)
!5395 = !DILocalVariable(name: "ch", scope: !5389, file: !622, line: 193, type: !5361)
!5396 = !DILocation(line: 0, scope: !5389)
!5397 = !DILocation(line: 195, column: 14, scope: !5398)
!5398 = distinct !DILexicalBlock(scope: !5389, file: !622, line: 195, column: 9)
!5399 = !DILocation(line: 195, column: 9, scope: !5389)
!5400 = !DILocation(line: 209, column: 5, scope: !5389)
!5401 = distinct !DISubprogram(name: "hal_uart_get_char", scope: !622, file: !622, line: 365, type: !5402, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5404)
!5402 = !DISubroutineType(types: !5403)
!5403 = !{!674, !682}
!5404 = !{!5405, !5406}
!5405 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5401, file: !622, line: 365, type: !682)
!5406 = !DILocalVariable(name: "int_no", scope: !5401, file: !622, line: 367, type: !3409)
!5407 = !DILocation(line: 0, scope: !5401)
!5408 = !DILocation(line: 367, column: 26, scope: !5401)
!5409 = !DILocation(line: 369, column: 16, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5401, file: !622, line: 369, column: 9)
!5411 = !DILocation(line: 369, column: 9, scope: !5401)
!5412 = !DILocation(line: 370, column: 22, scope: !5413)
!5413 = distinct !DILexicalBlock(scope: !5410, file: !622, line: 369, column: 33)
!5414 = !DILocation(line: 370, column: 9, scope: !5413)
!5415 = !DILocation(line: 0, scope: !5410)
!5416 = !DILocation(line: 375, column: 1, scope: !5401)
!5417 = distinct !DISubprogram(name: "hal_uart_get_char_unblocking", scope: !622, file: !622, line: 377, type: !5418, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5420)
!5418 = !DISubroutineType(types: !5419)
!5419 = !{!204, !682}
!5420 = !{!5421, !5422}
!5421 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5417, file: !622, line: 377, type: !682)
!5422 = !DILocalVariable(name: "int_no", scope: !5417, file: !622, line: 379, type: !3409)
!5423 = !DILocation(line: 0, scope: !5417)
!5424 = !DILocation(line: 379, column: 26, scope: !5417)
!5425 = !DILocation(line: 381, column: 16, scope: !5426)
!5426 = distinct !DILexicalBlock(scope: !5417, file: !622, line: 381, column: 9)
!5427 = !DILocation(line: 381, column: 9, scope: !5417)
!5428 = !DILocation(line: 382, column: 16, scope: !5429)
!5429 = distinct !DILexicalBlock(scope: !5426, file: !622, line: 381, column: 33)
!5430 = !DILocation(line: 382, column: 9, scope: !5429)
!5431 = !DILocation(line: 0, scope: !5426)
!5432 = !DILocation(line: 387, column: 1, scope: !5417)
!5433 = distinct !DISubprogram(name: "hal_uart_receive_polling", scope: !622, file: !622, line: 390, type: !5434, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5436)
!5434 = !DISubroutineType(types: !5435)
!5435 = !{!204, !682, !722, !204}
!5436 = !{!5437, !5438, !5439, !5440, !5441}
!5437 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5433, file: !622, line: 390, type: !682)
!5438 = !DILocalVariable(name: "buffer", arg: 2, scope: !5433, file: !622, line: 390, type: !722)
!5439 = !DILocalVariable(name: "size", arg: 3, scope: !5433, file: !622, line: 390, type: !204)
!5440 = !DILocalVariable(name: "int_no", scope: !5433, file: !622, line: 392, type: !3409)
!5441 = !DILocalVariable(name: "index", scope: !5433, file: !622, line: 393, type: !204)
!5442 = !DILocation(line: 0, scope: !5433)
!5443 = !DILocation(line: 392, column: 26, scope: !5433)
!5444 = !DILocation(line: 395, column: 16, scope: !5445)
!5445 = distinct !DILexicalBlock(scope: !5433, file: !622, line: 395, column: 9)
!5446 = !DILocation(line: 395, column: 9, scope: !5433)
!5447 = !DILocation(line: 401, column: 38, scope: !5448)
!5448 = distinct !DILexicalBlock(scope: !5449, file: !622, line: 400, column: 48)
!5449 = distinct !DILexicalBlock(scope: !5450, file: !622, line: 400, column: 9)
!5450 = distinct !DILexicalBlock(scope: !5451, file: !622, line: 400, column: 9)
!5451 = distinct !DILexicalBlock(scope: !5452, file: !622, line: 399, column: 33)
!5452 = distinct !DILexicalBlock(scope: !5433, file: !622, line: 399, column: 9)
!5453 = !DILocation(line: 401, column: 13, scope: !5448)
!5454 = !DILocation(line: 401, column: 27, scope: !5448)
!5455 = !DILocation(line: 400, column: 44, scope: !5449)
!5456 = !DILocation(line: 400, column: 31, scope: !5449)
!5457 = !DILocation(line: 400, column: 9, scope: !5450)
!5458 = distinct !{!5458, !5457, !5459}
!5459 = !DILocation(line: 402, column: 9, scope: !5450)
!5460 = !DILocation(line: 406, column: 1, scope: !5433)
!5461 = distinct !DISubprogram(name: "hal_uart_receive_dma", scope: !622, file: !622, line: 408, type: !5434, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5462)
!5462 = !{!5463, !5464, !5465, !5466, !5467, !5468}
!5463 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5461, file: !622, line: 408, type: !682)
!5464 = !DILocalVariable(name: "buffer", arg: 2, scope: !5461, file: !622, line: 408, type: !722)
!5465 = !DILocalVariable(name: "size", arg: 3, scope: !5461, file: !622, line: 408, type: !204)
!5466 = !DILocalVariable(name: "actual_size", scope: !5461, file: !622, line: 410, type: !204)
!5467 = !DILocalVariable(name: "receive_size", scope: !5461, file: !622, line: 410, type: !204)
!5468 = !DILocalVariable(name: "ch", scope: !5461, file: !622, line: 411, type: !5361)
!5469 = !DILocation(line: 0, scope: !5461)
!5470 = !DILocation(line: 410, column: 5, scope: !5461)
!5471 = !DILocation(line: 413, column: 10, scope: !5472)
!5472 = distinct !DILexicalBlock(scope: !5461, file: !622, line: 413, column: 9)
!5473 = !DILocation(line: 413, column: 9, scope: !5461)
!5474 = !DILocation(line: 417, column: 17, scope: !5475)
!5475 = distinct !DILexicalBlock(scope: !5461, file: !622, line: 417, column: 9)
!5476 = !DILocation(line: 417, column: 26, scope: !5475)
!5477 = !DILocation(line: 421, column: 30, scope: !5461)
!5478 = !DILocation(line: 421, column: 5, scope: !5461)
!5479 = !DILocation(line: 422, column: 9, scope: !5480)
!5480 = distinct !DILexicalBlock(scope: !5461, file: !622, line: 422, column: 9)
!5481 = !DILocation(line: 422, column: 21, scope: !5480)
!5482 = !DILocation(line: 427, column: 5, scope: !5461)
!5483 = !DILocation(line: 429, column: 25, scope: !5484)
!5484 = distinct !DILexicalBlock(scope: !5461, file: !622, line: 429, column: 9)
!5485 = !DILocation(line: 429, column: 22, scope: !5484)
!5486 = !DILocation(line: 429, column: 9, scope: !5461)
!5487 = !DILocation(line: 430, column: 14, scope: !5488)
!5488 = distinct !DILexicalBlock(scope: !5484, file: !622, line: 429, column: 38)
!5489 = !DILocation(line: 431, column: 9, scope: !5488)
!5490 = !DILocation(line: 432, column: 5, scope: !5488)
!5491 = !DILocation(line: 435, column: 1, scope: !5461)
!5492 = distinct !DISubprogram(name: "hal_uart_get_available_send_space", scope: !622, file: !622, line: 438, type: !5418, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5493)
!5493 = !{!5494, !5495}
!5494 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5492, file: !622, line: 438, type: !682)
!5495 = !DILocalVariable(name: "length", scope: !5492, file: !622, line: 440, type: !204)
!5496 = !DILocation(line: 0, scope: !5492)
!5497 = !DILocation(line: 440, column: 5, scope: !5492)
!5498 = !DILocation(line: 440, column: 14, scope: !5492)
!5499 = !DILocation(line: 442, column: 10, scope: !5500)
!5500 = distinct !DILexicalBlock(scope: !5492, file: !622, line: 442, column: 9)
!5501 = !DILocation(line: 442, column: 9, scope: !5492)
!5502 = !DILocation(line: 446, column: 30, scope: !5492)
!5503 = !DILocation(line: 446, column: 5, scope: !5492)
!5504 = !DILocation(line: 447, column: 12, scope: !5492)
!5505 = !DILocation(line: 447, column: 5, scope: !5492)
!5506 = !DILocation(line: 448, column: 1, scope: !5492)
!5507 = distinct !DISubprogram(name: "hal_uart_get_available_receive_bytes", scope: !622, file: !622, line: 451, type: !5418, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5508)
!5508 = !{!5509, !5510}
!5509 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5507, file: !622, line: 451, type: !682)
!5510 = !DILocalVariable(name: "length", scope: !5507, file: !622, line: 453, type: !204)
!5511 = !DILocation(line: 0, scope: !5507)
!5512 = !DILocation(line: 453, column: 5, scope: !5507)
!5513 = !DILocation(line: 453, column: 14, scope: !5507)
!5514 = !DILocation(line: 455, column: 10, scope: !5515)
!5515 = distinct !DILexicalBlock(scope: !5507, file: !622, line: 455, column: 9)
!5516 = !DILocation(line: 455, column: 9, scope: !5507)
!5517 = !DILocation(line: 459, column: 30, scope: !5507)
!5518 = !DILocation(line: 459, column: 5, scope: !5507)
!5519 = !DILocation(line: 461, column: 12, scope: !5507)
!5520 = !DILocation(line: 461, column: 5, scope: !5507)
!5521 = !DILocation(line: 462, column: 1, scope: !5507)
!5522 = distinct !DISubprogram(name: "hal_uart_register_callback", scope: !622, file: !622, line: 543, type: !5523, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5525)
!5523 = !DISubroutineType(types: !5524)
!5524 = !{!5150, !682, !710, !464}
!5525 = !{!5526, !5527, !5528, !5529}
!5526 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5522, file: !622, line: 543, type: !682)
!5527 = !DILocalVariable(name: "user_callback", arg: 2, scope: !5522, file: !622, line: 544, type: !710)
!5528 = !DILocalVariable(name: "user_data", arg: 3, scope: !5522, file: !622, line: 545, type: !464)
!5529 = !DILocalVariable(name: "ch", scope: !5522, file: !622, line: 547, type: !5361)
!5530 = !DILocation(line: 0, scope: !5522)
!5531 = !DILocation(line: 549, column: 10, scope: !5532)
!5532 = distinct !DILexicalBlock(scope: !5522, file: !622, line: 549, column: 9)
!5533 = !DILocation(line: 549, column: 9, scope: !5522)
!5534 = !DILocation(line: 556, column: 53, scope: !5522)
!5535 = !DILocation(line: 556, column: 62, scope: !5522)
!5536 = !DILocation(line: 557, column: 53, scope: !5522)
!5537 = !DILocation(line: 557, column: 63, scope: !5522)
!5538 = !DILocation(line: 558, column: 37, scope: !5522)
!5539 = !DILocation(line: 558, column: 54, scope: !5522)
!5540 = !DILocation(line: 560, column: 39, scope: !5522)
!5541 = !DILocation(line: 561, column: 39, scope: !5522)
!5542 = !DILocation(line: 560, column: 5, scope: !5522)
!5543 = !DILocation(line: 562, column: 5, scope: !5522)
!5544 = !DILocation(line: 564, column: 44, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5522, file: !622, line: 564, column: 9)
!5546 = !DILocation(line: 564, column: 9, scope: !5522)
!5547 = !DILocation(line: 565, column: 9, scope: !5548)
!5548 = distinct !DILexicalBlock(scope: !5545, file: !622, line: 564, column: 59)
!5549 = !DILocation(line: 566, column: 5, scope: !5548)
!5550 = !DILocation(line: 567, column: 9, scope: !5551)
!5551 = distinct !DILexicalBlock(scope: !5545, file: !622, line: 566, column: 12)
!5552 = !DILocation(line: 569, column: 10, scope: !5522)
!5553 = !DILocation(line: 570, column: 5, scope: !5522)
!5554 = !DILocation(line: 578, column: 5, scope: !5522)
!5555 = !DILocation(line: 579, column: 1, scope: !5522)
!5556 = !DILocation(line: 0, scope: !678)
!5557 = !DILocation(line: 539, column: 12, scope: !678)
!5558 = !DILocation(line: 539, column: 5, scope: !678)
!5559 = distinct !DISubprogram(name: "hal_uart_send_callback0", scope: !622, file: !622, line: 511, type: !75, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5560)
!5560 = !{!5561}
!5561 = !DILocalVariable(name: "callback_context", scope: !5562, file: !622, line: 514, type: !5564)
!5562 = distinct !DILexicalBlock(scope: !5563, file: !622, line: 513, column: 60)
!5563 = distinct !DILexicalBlock(scope: !5559, file: !622, line: 513, column: 9)
!5564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 32)
!5565 = !DILocation(line: 513, column: 42, scope: !5563)
!5566 = !DILocation(line: 513, column: 9, scope: !5559)
!5567 = !DILocation(line: 515, column: 39, scope: !5568)
!5568 = distinct !DILexicalBlock(scope: !5562, file: !622, line: 515, column: 13)
!5569 = !DILocation(line: 515, column: 18, scope: !5568)
!5570 = !DILocation(line: 515, column: 13, scope: !5562)
!5571 = !DILocation(line: 516, column: 89, scope: !5572)
!5572 = distinct !DILexicalBlock(scope: !5568, file: !622, line: 515, column: 49)
!5573 = !DILocation(line: 516, column: 13, scope: !5572)
!5574 = !DILocation(line: 517, column: 9, scope: !5572)
!5575 = !DILocation(line: 519, column: 32, scope: !5559)
!5576 = !DILocation(line: 519, column: 5, scope: !5559)
!5577 = !DILocation(line: 520, column: 1, scope: !5559)
!5578 = distinct !DISubprogram(name: "hal_uart_send_callback1", scope: !622, file: !622, line: 523, type: !75, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5579)
!5579 = !{!5580}
!5580 = !DILocalVariable(name: "callback_context", scope: !5581, file: !622, line: 526, type: !5564)
!5581 = distinct !DILexicalBlock(scope: !5582, file: !622, line: 525, column: 60)
!5582 = distinct !DILexicalBlock(scope: !5578, file: !622, line: 525, column: 9)
!5583 = !DILocation(line: 525, column: 42, scope: !5582)
!5584 = !DILocation(line: 525, column: 9, scope: !5578)
!5585 = !DILocation(line: 527, column: 39, scope: !5586)
!5586 = distinct !DILexicalBlock(scope: !5581, file: !622, line: 527, column: 13)
!5587 = !DILocation(line: 527, column: 18, scope: !5586)
!5588 = !DILocation(line: 527, column: 13, scope: !5581)
!5589 = !DILocation(line: 528, column: 89, scope: !5590)
!5590 = distinct !DILexicalBlock(scope: !5586, file: !622, line: 527, column: 49)
!5591 = !DILocation(line: 528, column: 13, scope: !5590)
!5592 = !DILocation(line: 529, column: 9, scope: !5590)
!5593 = !DILocation(line: 531, column: 32, scope: !5578)
!5594 = !DILocation(line: 531, column: 5, scope: !5578)
!5595 = !DILocation(line: 532, column: 1, scope: !5578)
!5596 = distinct !DISubprogram(name: "hal_uart_check_irq_disable", scope: !622, file: !622, line: 464, type: !5597, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5599)
!5597 = !DISubroutineType(types: !5598)
!5598 = !{null, !3409, !477}
!5599 = !{!5600, !5601, !5602, !5603, !5604, !5606}
!5600 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5596, file: !622, line: 464, type: !3409)
!5601 = !DILocalVariable(name: "is_rx", arg: 2, scope: !5596, file: !622, line: 464, type: !477)
!5602 = !DILocalVariable(name: "avail_size", scope: !5596, file: !622, line: 466, type: !204)
!5603 = !DILocalVariable(name: "avail_space", scope: !5596, file: !622, line: 466, type: !204)
!5604 = !DILocalVariable(name: "dma_config", scope: !5596, file: !622, line: 467, type: !5605)
!5605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 32)
!5606 = !DILocalVariable(name: "ch", scope: !5596, file: !622, line: 468, type: !5361)
!5607 = !DILocation(line: 0, scope: !5596)
!5608 = !DILocation(line: 466, column: 5, scope: !5596)
!5609 = !DILocation(line: 471, column: 9, scope: !5596)
!5610 = !DILocation(line: 472, column: 9, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5612, file: !622, line: 471, column: 16)
!5612 = distinct !DILexicalBlock(scope: !5596, file: !622, line: 471, column: 9)
!5613 = !DILocation(line: 473, column: 13, scope: !5614)
!5614 = distinct !DILexicalBlock(scope: !5611, file: !622, line: 473, column: 13)
!5615 = !DILocation(line: 473, column: 39, scope: !5614)
!5616 = !DILocation(line: 473, column: 24, scope: !5614)
!5617 = !DILocation(line: 473, column: 13, scope: !5611)
!5618 = !DILocation(line: 478, column: 9, scope: !5619)
!5619 = distinct !DILexicalBlock(scope: !5612, file: !622, line: 477, column: 12)
!5620 = !DILocation(line: 479, column: 13, scope: !5621)
!5621 = distinct !DILexicalBlock(scope: !5619, file: !622, line: 479, column: 13)
!5622 = !DILocation(line: 479, column: 40, scope: !5621)
!5623 = !DILocation(line: 479, column: 77, scope: !5621)
!5624 = !DILocation(line: 479, column: 63, scope: !5621)
!5625 = !DILocation(line: 479, column: 25, scope: !5621)
!5626 = !DILocation(line: 479, column: 13, scope: !5619)
!5627 = !DILocation(line: 0, scope: !5612)
!5628 = !DILocation(line: 484, column: 1, scope: !5596)
!5629 = distinct !DISubprogram(name: "hal_uart_receive_callback0", scope: !622, file: !622, line: 486, type: !75, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5630)
!5630 = !{!5631}
!5631 = !DILocalVariable(name: "callback_context", scope: !5632, file: !622, line: 490, type: !5564)
!5632 = distinct !DILexicalBlock(scope: !5633, file: !622, line: 489, column: 70)
!5633 = distinct !DILexicalBlock(scope: !5629, file: !622, line: 488, column: 9)
!5634 = !DILocation(line: 488, column: 43, scope: !5633)
!5635 = !DILocation(line: 488, column: 61, scope: !5633)
!5636 = !DILocation(line: 489, column: 14, scope: !5633)
!5637 = !DILocation(line: 489, column: 63, scope: !5633)
!5638 = !DILocation(line: 488, column: 9, scope: !5629)
!5639 = !DILocation(line: 491, column: 39, scope: !5640)
!5640 = distinct !DILexicalBlock(scope: !5632, file: !622, line: 491, column: 13)
!5641 = !DILocation(line: 491, column: 18, scope: !5640)
!5642 = !DILocation(line: 491, column: 13, scope: !5632)
!5643 = !DILocation(line: 492, column: 88, scope: !5644)
!5644 = distinct !DILexicalBlock(scope: !5640, file: !622, line: 491, column: 49)
!5645 = !DILocation(line: 492, column: 13, scope: !5644)
!5646 = !DILocation(line: 493, column: 9, scope: !5644)
!5647 = !DILocation(line: 495, column: 32, scope: !5629)
!5648 = !DILocation(line: 495, column: 5, scope: !5629)
!5649 = !DILocation(line: 496, column: 1, scope: !5629)
!5650 = distinct !DISubprogram(name: "hal_uart_receive_callback1", scope: !622, file: !622, line: 499, type: !75, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5651)
!5651 = !{!5652}
!5652 = !DILocalVariable(name: "callback_context", scope: !5653, file: !622, line: 503, type: !5564)
!5653 = distinct !DILexicalBlock(scope: !5654, file: !622, line: 502, column: 70)
!5654 = distinct !DILexicalBlock(scope: !5650, file: !622, line: 501, column: 9)
!5655 = !DILocation(line: 501, column: 43, scope: !5654)
!5656 = !DILocation(line: 501, column: 61, scope: !5654)
!5657 = !DILocation(line: 502, column: 14, scope: !5654)
!5658 = !DILocation(line: 502, column: 63, scope: !5654)
!5659 = !DILocation(line: 501, column: 9, scope: !5650)
!5660 = !DILocation(line: 504, column: 39, scope: !5661)
!5661 = distinct !DILexicalBlock(scope: !5653, file: !622, line: 504, column: 13)
!5662 = !DILocation(line: 504, column: 18, scope: !5661)
!5663 = !DILocation(line: 504, column: 13, scope: !5653)
!5664 = !DILocation(line: 505, column: 88, scope: !5665)
!5665 = distinct !DILexicalBlock(scope: !5661, file: !622, line: 504, column: 49)
!5666 = !DILocation(line: 505, column: 13, scope: !5665)
!5667 = !DILocation(line: 506, column: 9, scope: !5665)
!5668 = !DILocation(line: 508, column: 32, scope: !5650)
!5669 = !DILocation(line: 508, column: 5, scope: !5650)
!5670 = !DILocation(line: 509, column: 1, scope: !5650)
!5671 = distinct !DISubprogram(name: "hal_uart_set_baudrate", scope: !622, file: !622, line: 582, type: !5672, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5674)
!5672 = !DISubroutineType(types: !5673)
!5673 = !{!5150, !682, !697}
!5674 = !{!5675, !5676}
!5675 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5671, file: !622, line: 582, type: !682)
!5676 = !DILocalVariable(name: "baudrate", arg: 2, scope: !5671, file: !622, line: 582, type: !697)
!5677 = !DILocation(line: 0, scope: !5671)
!5678 = !DILocation(line: 584, column: 11, scope: !5679)
!5679 = distinct !DILexicalBlock(scope: !5671, file: !622, line: 584, column: 9)
!5680 = !DILocation(line: 584, column: 46, scope: !5679)
!5681 = !DILocation(line: 588, column: 37, scope: !5671)
!5682 = !DILocation(line: 588, column: 50, scope: !5671)
!5683 = !DILocation(line: 588, column: 59, scope: !5671)
!5684 = !DILocation(line: 589, column: 12, scope: !5671)
!5685 = !DILocation(line: 589, column: 5, scope: !5671)
!5686 = !DILocation(line: 590, column: 1, scope: !5671)
!5687 = distinct !DISubprogram(name: "hal_uart_set_dma", scope: !622, file: !622, line: 608, type: !5688, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5692)
!5688 = !DISubroutineType(types: !5689)
!5689 = !{!5150, !682, !5690}
!5690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5691, size: 32)
!5691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !718)
!5692 = !{!5693, !5694}
!5693 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5687, file: !622, line: 608, type: !682)
!5694 = !DILocalVariable(name: "uart_dma_config", arg: 2, scope: !5687, file: !622, line: 608, type: !5690)
!5695 = !DILocation(line: 0, scope: !5687)
!5696 = !DILocation(line: 610, column: 10, scope: !5697)
!5697 = distinct !DILexicalBlock(scope: !5687, file: !622, line: 610, column: 9)
!5698 = !DILocation(line: 610, column: 9, scope: !5687)
!5699 = !DILocation(line: 614, column: 10, scope: !5700)
!5700 = distinct !DILexicalBlock(scope: !5687, file: !622, line: 614, column: 9)
!5701 = !DILocation(line: 614, column: 9, scope: !5687)
!5702 = !DILocation(line: 618, column: 37, scope: !5687)
!5703 = !DILocation(line: 618, column: 56, scope: !5687)
!5704 = !DILocation(line: 619, column: 45, scope: !5687)
!5705 = !DILocation(line: 619, column: 12, scope: !5687)
!5706 = !DILocation(line: 620, column: 12, scope: !5687)
!5707 = !DILocation(line: 619, column: 5, scope: !5687)
!5708 = !DILocation(line: 621, column: 5, scope: !5687)
!5709 = !DILocation(line: 622, column: 5, scope: !5687)
!5710 = !DILocation(line: 623, column: 33, scope: !5687)
!5711 = !DILocation(line: 624, column: 50, scope: !5687)
!5712 = !DILocation(line: 625, column: 50, scope: !5687)
!5713 = !DILocation(line: 626, column: 50, scope: !5687)
!5714 = !DILocation(line: 627, column: 50, scope: !5687)
!5715 = !DILocation(line: 628, column: 33, scope: !5687)
!5716 = !DILocation(line: 623, column: 5, scope: !5687)
!5717 = !DILocation(line: 630, column: 50, scope: !5687)
!5718 = !DILocation(line: 631, column: 50, scope: !5687)
!5719 = !DILocation(line: 632, column: 50, scope: !5687)
!5720 = !DILocation(line: 629, column: 5, scope: !5687)
!5721 = !DILocation(line: 634, column: 5, scope: !5687)
!5722 = !DILocation(line: 635, column: 1, scope: !5687)
!5723 = distinct !DISubprogram(name: "hal_uart_is_dma_config_valid", scope: !622, file: !622, line: 112, type: !5724, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5726)
!5724 = !DISubroutineType(types: !5725)
!5725 = !{!477, !5690}
!5726 = !{!5727}
!5727 = !DILocalVariable(name: "dma_config", arg: 1, scope: !5723, file: !622, line: 112, type: !5690)
!5728 = !DILocation(line: 0, scope: !5723)
!5729 = !DILocation(line: 114, column: 14, scope: !5730)
!5730 = distinct !DILexicalBlock(scope: !5723, file: !622, line: 114, column: 9)
!5731 = !DILocation(line: 114, column: 9, scope: !5723)
!5732 = !DILocation(line: 117, column: 29, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5723, file: !622, line: 117, column: 9)
!5734 = !DILocation(line: 117, column: 14, scope: !5733)
!5735 = !DILocation(line: 117, column: 9, scope: !5723)
!5736 = !DILocation(line: 120, column: 21, scope: !5737)
!5737 = distinct !DILexicalBlock(scope: !5723, file: !622, line: 120, column: 9)
!5738 = !DILocation(line: 120, column: 61, scope: !5737)
!5739 = !DILocation(line: 120, column: 47, scope: !5737)
!5740 = !DILocation(line: 120, column: 9, scope: !5723)
!5741 = !DILocation(line: 123, column: 61, scope: !5742)
!5742 = distinct !DILexicalBlock(scope: !5723, file: !622, line: 123, column: 9)
!5743 = !DILocation(line: 123, column: 47, scope: !5742)
!5744 = !DILocation(line: 123, column: 9, scope: !5723)
!5745 = !DILocation(line: 126, column: 29, scope: !5746)
!5746 = distinct !DILexicalBlock(scope: !5723, file: !622, line: 126, column: 9)
!5747 = !DILocation(line: 126, column: 14, scope: !5746)
!5748 = !DILocation(line: 126, column: 9, scope: !5723)
!5749 = !DILocation(line: 129, column: 21, scope: !5750)
!5750 = distinct !DILexicalBlock(scope: !5723, file: !622, line: 129, column: 9)
!5751 = !DILocation(line: 129, column: 58, scope: !5750)
!5752 = !DILocation(line: 129, column: 44, scope: !5750)
!5753 = !DILocation(line: 129, column: 9, scope: !5723)
!5754 = !DILocation(line: 136, column: 1, scope: !5723)
!5755 = distinct !DISubprogram(name: "hal_uart_translate_timeout", scope: !622, file: !622, line: 182, type: !5041, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5756)
!5756 = !{!5757, !5758}
!5757 = !DILocalVariable(name: "timeout_us", arg: 1, scope: !5755, file: !622, line: 182, type: !204)
!5758 = !DILocalVariable(name: "ticks_per_us", scope: !5755, file: !622, line: 184, type: !204)
!5759 = !DILocation(line: 0, scope: !5755)
!5760 = !DILocation(line: 186, column: 20, scope: !5755)
!5761 = !DILocation(line: 186, column: 39, scope: !5755)
!5762 = !DILocation(line: 188, column: 25, scope: !5755)
!5763 = !DILocation(line: 188, column: 5, scope: !5755)
!5764 = distinct !DISubprogram(name: "hal_uart_set_hardware_flowcontrol", scope: !622, file: !622, line: 637, type: !5292, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5765)
!5765 = !{!5766, !5767}
!5766 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5764, file: !622, line: 637, type: !682)
!5767 = !DILocalVariable(name: "int_no", scope: !5764, file: !622, line: 639, type: !3409)
!5768 = !DILocation(line: 0, scope: !5764)
!5769 = !DILocation(line: 641, column: 10, scope: !5770)
!5770 = distinct !DILexicalBlock(scope: !5764, file: !622, line: 641, column: 9)
!5771 = !DILocation(line: 641, column: 9, scope: !5764)
!5772 = !DILocation(line: 645, column: 14, scope: !5764)
!5773 = !DILocation(line: 646, column: 5, scope: !5764)
!5774 = !DILocation(line: 648, column: 5, scope: !5764)
!5775 = !DILocation(line: 649, column: 1, scope: !5764)
!5776 = distinct !DISubprogram(name: "hal_uart_set_software_flowcontrol", scope: !622, file: !622, line: 651, type: !5777, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5779)
!5777 = !DISubroutineType(types: !5778)
!5778 = !{!5150, !682, !236, !236, !236}
!5779 = !{!5780, !5781, !5782, !5783, !5784}
!5780 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5776, file: !622, line: 651, type: !682)
!5781 = !DILocalVariable(name: "xon", arg: 2, scope: !5776, file: !622, line: 652, type: !236)
!5782 = !DILocalVariable(name: "xoff", arg: 3, scope: !5776, file: !622, line: 653, type: !236)
!5783 = !DILocalVariable(name: "escape_character", arg: 4, scope: !5776, file: !622, line: 654, type: !236)
!5784 = !DILocalVariable(name: "int_no", scope: !5776, file: !622, line: 656, type: !3409)
!5785 = !DILocation(line: 0, scope: !5776)
!5786 = !DILocation(line: 658, column: 10, scope: !5787)
!5787 = distinct !DILexicalBlock(scope: !5776, file: !622, line: 658, column: 9)
!5788 = !DILocation(line: 658, column: 9, scope: !5776)
!5789 = !DILocation(line: 662, column: 14, scope: !5776)
!5790 = !DILocation(line: 663, column: 5, scope: !5776)
!5791 = !DILocation(line: 665, column: 5, scope: !5776)
!5792 = !DILocation(line: 666, column: 1, scope: !5776)
!5793 = distinct !DISubprogram(name: "hal_uart_disable_flowcontrol", scope: !622, file: !622, line: 668, type: !5292, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5794)
!5794 = !{!5795, !5796}
!5795 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5793, file: !622, line: 668, type: !682)
!5796 = !DILocalVariable(name: "int_no", scope: !5793, file: !622, line: 670, type: !3409)
!5797 = !DILocation(line: 0, scope: !5793)
!5798 = !DILocation(line: 672, column: 10, scope: !5799)
!5799 = distinct !DILexicalBlock(scope: !5793, file: !622, line: 672, column: 9)
!5800 = !DILocation(line: 672, column: 9, scope: !5793)
!5801 = !DILocation(line: 676, column: 14, scope: !5793)
!5802 = !DILocation(line: 677, column: 5, scope: !5793)
!5803 = !DILocation(line: 679, column: 5, scope: !5793)
!5804 = !DILocation(line: 680, column: 1, scope: !5793)
!5805 = distinct !DISubprogram(name: "hal_uart_set_dma_timeout", scope: !622, file: !622, line: 683, type: !5806, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5808)
!5806 = !DISubroutineType(types: !5807)
!5807 = !{!5150, !682, !204}
!5808 = !{!5809, !5810}
!5809 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5805, file: !622, line: 683, type: !682)
!5810 = !DILocalVariable(name: "timeout", arg: 2, scope: !5805, file: !622, line: 683, type: !204)
!5811 = !DILocation(line: 0, scope: !5805)
!5812 = !DILocation(line: 685, column: 10, scope: !5813)
!5813 = distinct !DILexicalBlock(scope: !5805, file: !622, line: 685, column: 9)
!5814 = !DILocation(line: 685, column: 9, scope: !5805)
!5815 = !DILocation(line: 689, column: 19, scope: !5816)
!5816 = distinct !DILexicalBlock(scope: !5805, file: !622, line: 689, column: 9)
!5817 = !DILocation(line: 0, scope: !5816)
!5818 = !DILocation(line: 696, column: 1, scope: !5805)
!5819 = distinct !DISubprogram(name: "__io_putchar", scope: !1147, file: !1147, line: 55, type: !5820, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1146, retainedNodes: !5822)
!5820 = !DISubroutineType(types: !5821)
!5821 = !{!13, !13}
!5822 = !{!5823}
!5823 = !DILocalVariable(name: "ch", arg: 1, scope: !5819, file: !1147, line: 55, type: !13)
!5824 = !DILocation(line: 0, scope: !5819)
!5825 = !DILocation(line: 62, column: 35, scope: !5819)
!5826 = !DILocation(line: 62, column: 5, scope: !5819)
!5827 = !DILocation(line: 63, column: 5, scope: !5819)
!5828 = distinct !DISubprogram(name: "main", scope: !1147, file: !1147, line: 187, type: !3385, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1146, retainedNodes: !1344)
!5829 = !DILocation(line: 190, column: 5, scope: !5828)
!5830 = !DILocation(line: 192, column: 5, scope: !5828)
!5831 = !DILocation(line: 195, column: 5, scope: !5828)
!5832 = !DILocation(line: 319, column: 3, scope: !5833, inlinedAt: !5834)
!5833 = distinct !DISubprogram(name: "__enable_irq", scope: !2831, file: !2831, line: 317, type: !75, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1146, retainedNodes: !1344)
!5834 = distinct !DILocation(line: 198, column: 5, scope: !5828)
!5835 = !{i64 512525}
!5836 = !DILocation(line: 496, column: 3, scope: !5837, inlinedAt: !5838)
!5837 = distinct !DISubprogram(name: "__enable_fault_irq", scope: !2831, file: !2831, line: 494, type: !75, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1146, retainedNodes: !1344)
!5838 = distinct !DILocation(line: 199, column: 5, scope: !5828)
!5839 = !{i64 516800}
!5840 = !DILocation(line: 202, column: 5, scope: !5828)
!5841 = !DILocation(line: 203, column: 5, scope: !5828)
!5842 = !DILocation(line: 204, column: 5, scope: !5828)
!5843 = !DILocation(line: 205, column: 5, scope: !5828)
!5844 = !DILocation(line: 207, column: 5, scope: !5828)
!5845 = !DILocation(line: 209, column: 5, scope: !5828)
!5846 = distinct !{!5846, !5845, !5847}
!5847 = !DILocation(line: 209, column: 14, scope: !5828)
!5848 = distinct !DISubprogram(name: "SystemClock_Config", scope: !1147, file: !1147, line: 93, type: !75, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1146, retainedNodes: !1344)
!5849 = !DILocation(line: 95, column: 5, scope: !5848)
!5850 = !DILocation(line: 96, column: 1, scope: !5848)
!5851 = distinct !DISubprogram(name: "prvSetupHardware", scope: !1147, file: !1147, line: 103, type: !75, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1146, retainedNodes: !1344)
!5852 = !DILocation(line: 106, column: 5, scope: !5851)
!5853 = !DILocation(line: 107, column: 1, scope: !5851)
!5854 = distinct !DISubprogram(name: "eint_sample", scope: !1147, file: !1147, line: 138, type: !75, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1146, retainedNodes: !5855)
!5855 = !{!5856}
!5856 = !DILocalVariable(name: "eint_config", scope: !5854, file: !1147, line: 140, type: !5857)
!5857 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_eint_config_t", file: !450, line: 225, baseType: !5858)
!5858 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !450, line: 222, size: 64, elements: !5859)
!5859 = !{!5860, !5861}
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_mode", scope: !5858, file: !450, line: 223, baseType: !4016, size: 32)
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "debounce_time", scope: !5858, file: !450, line: 224, baseType: !204, size: 32, offset: 32)
!5862 = !DILocation(line: 140, column: 5, scope: !5854)
!5863 = !DILocation(line: 140, column: 23, scope: !5854)
!5864 = !DILocation(line: 144, column: 5, scope: !5854)
!5865 = !DILocation(line: 146, column: 5, scope: !5854)
!5866 = !DILocation(line: 149, column: 5, scope: !5854)
!5867 = !DILocation(line: 152, column: 5, scope: !5854)
!5868 = !DILocation(line: 153, column: 5, scope: !5854)
!5869 = !DILocation(line: 164, column: 17, scope: !5854)
!5870 = !DILocation(line: 164, column: 30, scope: !5854)
!5871 = !DILocation(line: 167, column: 17, scope: !5854)
!5872 = !DILocation(line: 167, column: 31, scope: !5854)
!5873 = !DILocation(line: 172, column: 5, scope: !5854)
!5874 = !DILocation(line: 175, column: 5, scope: !5854)
!5875 = !DILocation(line: 176, column: 5, scope: !5854)
!5876 = !DILocation(line: 181, column: 5, scope: !5854)
!5877 = !DILocation(line: 184, column: 5, scope: !5854)
!5878 = !DILocation(line: 185, column: 1, scope: !5854)
!5879 = distinct !DISubprogram(name: "eint_irq_handler", scope: !1147, file: !1147, line: 114, type: !481, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1146, retainedNodes: !5880)
!5880 = !{!5881}
!5881 = !DILocalVariable(name: "data", arg: 1, scope: !5879, file: !1147, line: 114, type: !464)
!5882 = !DILocation(line: 0, scope: !5879)
!5883 = !DILocation(line: 119, column: 5, scope: !5879)
!5884 = !DILocation(line: 124, column: 5, scope: !5879)
!5885 = !DILocation(line: 129, column: 5, scope: !5879)
!5886 = !DILocation(line: 131, column: 1, scope: !5879)
!5887 = distinct !DISubprogram(name: "log_uart_init", scope: !1147, file: !1147, line: 71, type: !75, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1146, retainedNodes: !5888)
!5888 = !{!5889}
!5889 = !DILocalVariable(name: "uart_config", scope: !5887, file: !1147, line: 73, type: !5890)
!5890 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !625, line: 378, baseType: !5891)
!5891 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !625, line: 373, size: 128, elements: !5892)
!5892 = !{!5893, !5894, !5895, !5896}
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !5891, file: !625, line: 374, baseType: !697, size: 32)
!5894 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !5891, file: !625, line: 375, baseType: !699, size: 32, offset: 32)
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !5891, file: !625, line: 376, baseType: !701, size: 32, offset: 64)
!5896 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !5891, file: !625, line: 377, baseType: !703, size: 32, offset: 96)
!5897 = !DILocation(line: 73, column: 5, scope: !5887)
!5898 = !DILocation(line: 73, column: 23, scope: !5887)
!5899 = !DILocation(line: 75, column: 5, scope: !5887)
!5900 = !DILocation(line: 76, column: 5, scope: !5887)
!5901 = !DILocation(line: 77, column: 5, scope: !5887)
!5902 = !DILocation(line: 78, column: 5, scope: !5887)
!5903 = !DILocation(line: 80, column: 17, scope: !5887)
!5904 = !DILocation(line: 80, column: 26, scope: !5887)
!5905 = !DILocation(line: 81, column: 17, scope: !5887)
!5906 = !DILocation(line: 81, column: 29, scope: !5887)
!5907 = !DILocation(line: 82, column: 17, scope: !5887)
!5908 = !DILocation(line: 82, column: 26, scope: !5887)
!5909 = !DILocation(line: 83, column: 17, scope: !5887)
!5910 = !DILocation(line: 83, column: 24, scope: !5887)
!5911 = !DILocation(line: 84, column: 5, scope: !5887)
!5912 = !DILocation(line: 86, column: 1, scope: !5887)
!5913 = distinct !DISubprogram(name: "SysTick_Set", scope: !732, file: !732, line: 70, type: !5041, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !5914)
!5914 = !{!5915, !5916}
!5915 = !DILocalVariable(name: "ticks", arg: 1, scope: !5913, file: !732, line: 70, type: !204)
!5916 = !DILocalVariable(name: "val", scope: !5913, file: !732, line: 72, type: !204)
!5917 = !DILocation(line: 0, scope: !5913)
!5918 = !DILocation(line: 74, column: 16, scope: !5919)
!5919 = distinct !DILexicalBlock(scope: !5913, file: !732, line: 74, column: 9)
!5920 = !DILocation(line: 74, column: 21, scope: !5919)
!5921 = !DILocation(line: 74, column: 9, scope: !5913)
!5922 = !DILocation(line: 78, column: 20, scope: !5913)
!5923 = !DILocation(line: 80, column: 19, scope: !5913)
!5924 = !DILocation(line: 83, column: 20, scope: !5913)
!5925 = !DILocation(line: 84, column: 20, scope: !5913)
!5926 = !DILocation(line: 86, column: 19, scope: !5913)
!5927 = !DILocation(line: 88, column: 5, scope: !5913)
!5928 = !DILocation(line: 89, column: 1, scope: !5913)
!5929 = distinct !DISubprogram(name: "SysInitStatus_Set", scope: !732, file: !732, line: 98, type: !75, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !1344)
!5930 = !DILocation(line: 100, column: 28, scope: !5929)
!5931 = !DILocation(line: 101, column: 1, scope: !5929)
!5932 = distinct !DISubprogram(name: "SysInitStatus_Query", scope: !732, file: !732, line: 110, type: !2825, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !1344)
!5933 = !DILocation(line: 112, column: 12, scope: !5932)
!5934 = !DILocation(line: 112, column: 5, scope: !5932)
!5935 = distinct !DISubprogram(name: "SystemCoreClockUpdate", scope: !732, file: !732, line: 122, type: !75, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !1344)
!5936 = !DILocation(line: 124, column: 23, scope: !5935)
!5937 = !DILocation(line: 124, column: 21, scope: !5935)
!5938 = !DILocation(line: 125, column: 1, scope: !5935)
!5939 = distinct !DISubprogram(name: "SystemInit", scope: !732, file: !732, line: 136, type: !75, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !1344)
!5940 = !DILocation(line: 140, column: 16, scope: !5939)
!5941 = !DILocation(line: 144, column: 16, scope: !5939)
!5942 = !DILocation(line: 147, column: 16, scope: !5939)
!5943 = !DILocation(line: 150, column: 1, scope: !5939)
!5944 = distinct !DISubprogram(name: "CachePreInit", scope: !732, file: !732, line: 158, type: !75, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !1344)
!5945 = !DILocation(line: 161, column: 22, scope: !5944)
!5946 = !DILocation(line: 164, column: 21, scope: !5944)
!5947 = !DILocation(line: 167, column: 21, scope: !5944)
!5948 = !DILocation(line: 170, column: 29, scope: !5944)
!5949 = !DILocation(line: 171, column: 33, scope: !5944)
!5950 = !DILocation(line: 173, column: 28, scope: !5944)
!5951 = !DILocation(line: 178, column: 30, scope: !5944)
!5952 = !DILocation(line: 192, column: 1, scope: !5944)
!5953 = distinct !DISubprogram(name: "_close", scope: !802, file: !802, line: 11, type: !5820, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !5954)
!5954 = !{!5955}
!5955 = !DILocalVariable(name: "file", arg: 1, scope: !5953, file: !802, line: 11, type: !13)
!5956 = !DILocation(line: 0, scope: !5953)
!5957 = !DILocation(line: 13, column: 5, scope: !5953)
!5958 = distinct !DISubprogram(name: "_fstat", scope: !802, file: !802, line: 16, type: !5959, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !6007)
!5959 = !DISubroutineType(types: !5960)
!5960 = !{!13, !13, !5961}
!5961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5962, size: 32)
!5962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !5963, line: 27, size: 704, elements: !5964)
!5963 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/stat.h", directory: "/home/mjshen/RTOSExploration")
!5964 = !{!5965, !5968, !5971, !5974, !5977, !5980, !5983, !5984, !5987, !5997, !5998, !5999, !6002, !6005}
!5965 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !5962, file: !5963, line: 29, baseType: !5966, size: 16)
!5966 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !806, line: 161, baseType: !5967)
!5967 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !848, line: 56, baseType: !823)
!5968 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !5962, file: !5963, line: 30, baseType: !5969, size: 16, offset: 16)
!5969 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !806, line: 139, baseType: !5970)
!5970 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !848, line: 75, baseType: !412)
!5971 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !5962, file: !5963, line: 31, baseType: !5972, size: 32, offset: 32)
!5972 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !806, line: 189, baseType: !5973)
!5973 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !848, line: 90, baseType: !206)
!5974 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !5962, file: !5963, line: 32, baseType: !5975, size: 16, offset: 64)
!5975 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !806, line: 194, baseType: !5976)
!5976 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !848, line: 209, baseType: !412)
!5977 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !5962, file: !5963, line: 33, baseType: !5978, size: 16, offset: 80)
!5978 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !806, line: 165, baseType: !5979)
!5979 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !848, line: 60, baseType: !412)
!5980 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !5962, file: !5963, line: 34, baseType: !5981, size: 16, offset: 96)
!5981 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !806, line: 169, baseType: !5982)
!5982 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !848, line: 63, baseType: !412)
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !5962, file: !5963, line: 35, baseType: !5966, size: 16, offset: 112)
!5984 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5962, file: !5963, line: 36, baseType: !5985, size: 32, offset: 128)
!5985 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !806, line: 157, baseType: !5986)
!5986 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !848, line: 102, baseType: !866)
!5987 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !5962, file: !5963, line: 42, baseType: !5988, size: 128, offset: 192)
!5988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !5989, line: 47, size: 128, elements: !5990)
!5989 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timespec.h", directory: "/home/mjshen/RTOSExploration")
!5990 = !{!5991, !5996}
!5991 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5988, file: !5989, line: 48, baseType: !5992, size: 64)
!5992 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !5993, line: 42, baseType: !5994)
!5993 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timeval.h", directory: "/home/mjshen/RTOSExploration")
!5994 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !207, line: 200, baseType: !5995)
!5995 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!5996 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5988, file: !5989, line: 49, baseType: !849, size: 32, offset: 64)
!5997 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !5962, file: !5963, line: 43, baseType: !5988, size: 128, offset: 320)
!5998 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !5962, file: !5963, line: 44, baseType: !5988, size: 128, offset: 448)
!5999 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !5962, file: !5963, line: 45, baseType: !6000, size: 32, offset: 576)
!6000 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !806, line: 102, baseType: !6001)
!6001 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !848, line: 34, baseType: !849)
!6002 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !5962, file: !5963, line: 46, baseType: !6003, size: 32, offset: 608)
!6003 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !806, line: 97, baseType: !6004)
!6004 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !848, line: 30, baseType: !849)
!6005 = !DIDerivedType(tag: DW_TAG_member, name: "st_spare4", scope: !5962, file: !5963, line: 48, baseType: !6006, size: 64, offset: 640)
!6006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !849, size: 64, elements: !270)
!6007 = !{!6008, !6009}
!6008 = !DILocalVariable(name: "file", arg: 1, scope: !5958, file: !802, line: 16, type: !13)
!6009 = !DILocalVariable(name: "st", arg: 2, scope: !5958, file: !802, line: 16, type: !5961)
!6010 = !DILocation(line: 0, scope: !5958)
!6011 = !DILocation(line: 18, column: 5, scope: !5958)
!6012 = distinct !DISubprogram(name: "_isatty", scope: !802, file: !802, line: 22, type: !5820, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !6013)
!6013 = !{!6014}
!6014 = !DILocalVariable(name: "file", arg: 1, scope: !6012, file: !802, line: 22, type: !13)
!6015 = !DILocation(line: 0, scope: !6012)
!6016 = !DILocation(line: 24, column: 5, scope: !6012)
!6017 = distinct !DISubprogram(name: "_lseek", scope: !802, file: !802, line: 27, type: !6018, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !6020)
!6018 = !DISubroutineType(types: !6019)
!6019 = !{!13, !13, !13, !13}
!6020 = !{!6021, !6022, !6023}
!6021 = !DILocalVariable(name: "file", arg: 1, scope: !6017, file: !802, line: 27, type: !13)
!6022 = !DILocalVariable(name: "ptr", arg: 2, scope: !6017, file: !802, line: 27, type: !13)
!6023 = !DILocalVariable(name: "dir", arg: 3, scope: !6017, file: !802, line: 27, type: !13)
!6024 = !DILocation(line: 0, scope: !6017)
!6025 = !DILocation(line: 29, column: 5, scope: !6017)
!6026 = distinct !DISubprogram(name: "_open", scope: !802, file: !802, line: 32, type: !6027, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !6029)
!6027 = !DISubroutineType(types: !6028)
!6028 = !{!13, !841, !13, !13}
!6029 = !{!6030, !6031, !6032}
!6030 = !DILocalVariable(name: "name", arg: 1, scope: !6026, file: !802, line: 32, type: !841)
!6031 = !DILocalVariable(name: "flags", arg: 2, scope: !6026, file: !802, line: 32, type: !13)
!6032 = !DILocalVariable(name: "mode", arg: 3, scope: !6026, file: !802, line: 32, type: !13)
!6033 = !DILocation(line: 0, scope: !6026)
!6034 = !DILocation(line: 34, column: 5, scope: !6026)
!6035 = distinct !DISubprogram(name: "_read", scope: !802, file: !802, line: 37, type: !6036, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !6038)
!6036 = !DISubroutineType(types: !6037)
!6037 = !{!13, !13, !807, !13}
!6038 = !{!6039, !6040, !6041}
!6039 = !DILocalVariable(name: "file", arg: 1, scope: !6035, file: !802, line: 37, type: !13)
!6040 = !DILocalVariable(name: "ptr", arg: 2, scope: !6035, file: !802, line: 37, type: !807)
!6041 = !DILocalVariable(name: "len", arg: 3, scope: !6035, file: !802, line: 37, type: !13)
!6042 = !DILocation(line: 0, scope: !6035)
!6043 = !DILocation(line: 39, column: 5, scope: !6035)
!6044 = distinct !DISubprogram(name: "_write", scope: !802, file: !802, line: 52, type: !6036, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !6045)
!6045 = !{!6046, !6047, !6048, !6049}
!6046 = !DILocalVariable(name: "file", arg: 1, scope: !6044, file: !802, line: 52, type: !13)
!6047 = !DILocalVariable(name: "ptr", arg: 2, scope: !6044, file: !802, line: 52, type: !807)
!6048 = !DILocalVariable(name: "len", arg: 3, scope: !6044, file: !802, line: 52, type: !13)
!6049 = !DILocalVariable(name: "i", scope: !6044, file: !802, line: 54, type: !13)
!6050 = !DILocation(line: 0, scope: !6044)
!6051 = !DILocation(line: 56, column: 19, scope: !6052)
!6052 = distinct !DILexicalBlock(scope: !6053, file: !802, line: 56, column: 5)
!6053 = distinct !DILexicalBlock(scope: !6044, file: !802, line: 56, column: 5)
!6054 = !DILocation(line: 56, column: 5, scope: !6053)
!6055 = !DILocation(line: 57, column: 26, scope: !6056)
!6056 = distinct !DILexicalBlock(scope: !6052, file: !802, line: 56, column: 31)
!6057 = !DILocation(line: 57, column: 22, scope: !6056)
!6058 = !DILocation(line: 57, column: 9, scope: !6056)
!6059 = !DILocation(line: 56, column: 27, scope: !6052)
!6060 = distinct !{!6060, !6054, !6061}
!6061 = !DILocation(line: 58, column: 5, scope: !6053)
!6062 = !DILocation(line: 60, column: 5, scope: !6044)
!6063 = !DILocation(line: 0, scope: !801)
!6064 = !DILocation(line: 70, column: 5, scope: !801)
!6065 = !{i64 1109}
!6066 = !DILocation(line: 72, column: 14, scope: !6067)
!6067 = distinct !DILexicalBlock(scope: !801, file: !802, line: 72, column: 9)
!6068 = !DILocation(line: 72, column: 11, scope: !6067)
!6069 = !DILocation(line: 72, column: 9, scope: !801)
!6070 = !DILocation(line: 78, column: 32, scope: !6071)
!6071 = distinct !DILexicalBlock(scope: !801, file: !802, line: 78, column: 9)
!6072 = !DILocation(line: 78, column: 15, scope: !6071)
!6073 = !DILocation(line: 89, column: 1, scope: !801)
!6074 = !DILocation(line: 78, column: 9, scope: !801)
!6075 = distinct !DISubprogram(name: "_exit", scope: !802, file: !802, line: 91, type: !951, scopeLine: 92, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !6076)
!6076 = !{!6077}
!6077 = !DILocalVariable(name: "__status", arg: 1, scope: !6075, file: !802, line: 91, type: !13)
!6078 = !DILocation(line: 0, scope: !6075)
!6079 = !DILocation(line: 93, column: 5, scope: !6075)
!6080 = !DILocation(line: 94, column: 5, scope: !6075)
!6081 = distinct !{!6081, !6080, !6082}
!6082 = !DILocation(line: 96, column: 5, scope: !6075)
!6083 = distinct !DISubprogram(name: "_kill", scope: !802, file: !802, line: 100, type: !6084, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !6086)
!6084 = !DISubroutineType(types: !6085)
!6085 = !{!13, !13, !13}
!6086 = !{!6087, !6088}
!6087 = !DILocalVariable(name: "pid", arg: 1, scope: !6083, file: !802, line: 100, type: !13)
!6088 = !DILocalVariable(name: "sig", arg: 2, scope: !6083, file: !802, line: 100, type: !13)
!6089 = !DILocation(line: 0, scope: !6083)
!6090 = !DILocation(line: 102, column: 5, scope: !6083)
!6091 = !DILocation(line: 103, column: 5, scope: !6083)
!6092 = distinct !DISubprogram(name: "_getpid", scope: !802, file: !802, line: 107, type: !6093, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !1344)
!6093 = !DISubroutineType(types: !6094)
!6094 = !{!6095}
!6095 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !806, line: 174, baseType: !6096)
!6096 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !848, line: 52, baseType: !13)
!6097 = !DILocation(line: 109, column: 5, scope: !6092)
!6098 = !DILocation(line: 110, column: 5, scope: !6092)
