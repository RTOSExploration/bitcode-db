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
@irq_num = internal unnamed_addr global i1 false, align 4, !dbg !729
@.str.3.45 = private unnamed_addr constant [30 x i8] c"\0D\0A ---eint_example begin---\0D\0A\00", align 1
@.str.4.46 = private unnamed_addr constant [36 x i8] c"\0D\0A ---eint_example finished!!!---\0D\0A\00", align 1
@.str.5.47 = private unnamed_addr constant [25 x i8] c"\0D\0A Received eint: %d !\0D\0A\00", align 1
@SystemCoreClock = dso_local local_unnamed_addr global i32 40000000, align 4, !dbg !773
@System_Initialize_Done = internal global i32 0, align 4, !dbg !841
@_sbrk_r.heap_end = internal unnamed_addr global i8* null, align 4, !dbg !843
@end = external dso_local global i8, align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"_exit\0A\00", align 1
@.str.1.55 = private unnamed_addr constant [10 x i8] c"_kill %d\0A\00", align 1
@.str.2.56 = private unnamed_addr constant [9 x i8] c"_getpid\0A\00", align 1
@build_date_time_str = dso_local local_unnamed_addr global [31 x i8] c"2022/12/13 08:07:02 GMT +00:00\00", align 1, !dbg !1052
@sw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"SDK_V4.6.1\00", align 1, !dbg !1057
@hw_verno_str = dso_local local_unnamed_addr global [15 x i8] c"linkit7697_hdk\00", align 1, !dbg !1063

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_ResetTimer(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 !dbg !1167 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1171, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i32 %1, metadata !1172, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i1 %2, metadata !1173, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1174
  %4 = icmp ugt i32 %0, 1, !dbg !1175
  br i1 %4, label %5, label %8, !dbg !1177

5:                                                ; preds = %3
  %6 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 75) #15, !dbg !1178
  br label %7, !dbg !1178

7:                                                ; preds = %5, %7
  br label %7, !dbg !1178, !llvm.loop !1180

8:                                                ; preds = %3
  switch i32 %0, label %21 [
    i32 0, label %9
    i32 1, label %15
  ], !dbg !1181

9:                                                ; preds = %8
  store volatile i32 %1, i32* inttoptr (i32 -2096824300 to i32*), align 4, !dbg !1182
  %10 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1185
  br i1 %2, label %11, label %13, !dbg !1187

11:                                               ; preds = %9
  %12 = or i32 %10, 2, !dbg !1188
  store volatile i32 %12, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1188
  br label %21, !dbg !1190

13:                                               ; preds = %9
  %14 = and i32 %10, -3, !dbg !1191
  store volatile i32 %14, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1191
  br label %21

15:                                               ; preds = %8
  store volatile i32 %1, i32* inttoptr (i32 -2096824284 to i32*), align 4, !dbg !1193
  %16 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1196
  br i1 %2, label %17, label %19, !dbg !1198

17:                                               ; preds = %15
  %18 = or i32 %16, 2, !dbg !1199
  store volatile i32 %18, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1199
  br label %21, !dbg !1201

19:                                               ; preds = %15
  %20 = and i32 %16, -3, !dbg !1202
  store volatile i32 %20, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1202
  br label %21

21:                                               ; preds = %8, %19, %17, %11, %13
  ret void, !dbg !1204
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_Start(i32 noundef %0) local_unnamed_addr #0 !dbg !1205 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1209, metadata !DIExpression()), !dbg !1210
  switch i32 %0, label %2 [
    i32 0, label %5
    i32 1, label %9
    i32 4, label %13
  ], !dbg !1211

2:                                                ; preds = %1
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 96) #15, !dbg !1212
  br label %4, !dbg !1212

4:                                                ; preds = %2, %4
  br label %4, !dbg !1212, !llvm.loop !1215

5:                                                ; preds = %1
  %6 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1216
  %7 = or i32 %6, 1, !dbg !1216
  store volatile i32 %7, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1216
  %8 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #15, !dbg !1219
  br label %16, !dbg !1220

9:                                                ; preds = %1
  %10 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1221
  %11 = or i32 %10, 1, !dbg !1221
  store volatile i32 %11, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1221
  %12 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #15, !dbg !1224
  br label %16, !dbg !1225

13:                                               ; preds = %1
  %14 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1226
  %15 = or i32 %14, 1, !dbg !1226
  store volatile i32 %15, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1226
  br label %16, !dbg !1229

16:                                               ; preds = %9, %13, %5
  ret void, !dbg !1230
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @GPT_Stop(i32 noundef %0) local_unnamed_addr #3 !dbg !1231 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1233, metadata !DIExpression()), !dbg !1234
  switch i32 %0, label %18 [
    i32 0, label %2
    i32 1, label %7
    i32 2, label %12
    i32 4, label %15
  ], !dbg !1235

2:                                                ; preds = %1
  %3 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1236
  %4 = and i32 %3, -2, !dbg !1236
  store volatile i32 %4, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1236
  %5 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1239
  %6 = and i32 %5, -2, !dbg !1239
  store volatile i32 %6, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1239
  store volatile i32 1, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1240
  br label %18, !dbg !1241

7:                                                ; preds = %1
  %8 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1242
  %9 = and i32 %8, -3, !dbg !1242
  store volatile i32 %9, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1242
  %10 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1245
  %11 = and i32 %10, -2, !dbg !1245
  store volatile i32 %11, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1245
  store volatile i32 2, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1246
  br label %18, !dbg !1247

12:                                               ; preds = %1
  %13 = load volatile i32, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1248
  %14 = and i32 %13, -2, !dbg !1248
  store volatile i32 %14, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1248
  br label %18, !dbg !1251

15:                                               ; preds = %1
  %16 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1252
  %17 = and i32 %16, -2, !dbg !1252
  store volatile i32 %17, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1252
  br label %18, !dbg !1255

18:                                               ; preds = %1, %7, %15, %12, %2
  ret void, !dbg !1256
}

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_INT_Handler(i32 %0) #0 !dbg !1257 {
  call void @llvm.dbg.value(metadata i32 undef, metadata !1259, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i32 undef, metadata !1259, metadata !DIExpression()), !dbg !1261
  %2 = load volatile i32, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1262
  %3 = and i32 %2, 65535, !dbg !1263
  call void @llvm.dbg.value(metadata i32 %2, metadata !1260, metadata !DIExpression()), !dbg !1261
  store volatile i32 %3, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1264
  %4 = and i32 %2, 1, !dbg !1265
  %5 = icmp eq i32 %4, 0, !dbg !1265
  br i1 %5, label %6, label %9, !dbg !1267

6:                                                ; preds = %1
  %7 = and i32 %2, 2, !dbg !1268
  %8 = icmp eq i32 %7, 0, !dbg !1268
  br i1 %8, label %13, label %9, !dbg !1270

9:                                                ; preds = %6, %1
  %10 = phi i32 [ 0, %1 ], [ 1, %6 ]
  %11 = phi void ()** [ @GPTTimer.0, %1 ], [ @GPTTimer.1, %6 ]
  tail call void @clear_TMR_INT_status_bit(i32 noundef %10) #15, !dbg !1271
  %12 = load void ()*, void ()** %11, align 4, !dbg !1271
  tail call void %12() #15, !dbg !1271
  br label %13, !dbg !1272

13:                                               ; preds = %9, %6
  ret void, !dbg !1272
}

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_init(i32 noundef %0, i32 noundef %1, void ()* noundef %2) local_unnamed_addr #0 !dbg !1273 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1277, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata i32 %1, metadata !1278, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata void ()* %2, metadata !1279, metadata !DIExpression()), !dbg !1280
  switch i32 %0, label %4 [
    i32 4, label %7
    i32 2, label %7
    i32 1, label %7
    i32 0, label %7
  ], !dbg !1281

4:                                                ; preds = %3
  %5 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 149) #15, !dbg !1282
  br label %6, !dbg !1282

6:                                                ; preds = %4, %6
  br label %6, !dbg !1282, !llvm.loop !1285

7:                                                ; preds = %3, %3, %3, %3
  %8 = icmp ult i32 %0, 2, !dbg !1286
  br i1 %8, label %9, label %13, !dbg !1287

9:                                                ; preds = %7
  %10 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 24, void (i32)* noundef nonnull @GPT_INT_Handler) #15, !dbg !1289
  %11 = tail call i32 @hal_nvic_set_priority(i32 noundef 24, i32 noundef 5) #15, !dbg !1291
  %12 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #15, !dbg !1292
  br label %13, !dbg !1293

13:                                               ; preds = %7, %9
  switch i32 %0, label %36 [
    i32 0, label %14
    i32 1, label %20
    i32 2, label %26
    i32 4, label %31
  ], !dbg !1294

14:                                               ; preds = %13
  store void ()* %2, void ()** @GPTTimer.0, align 4, !dbg !1295
  %15 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1298
  %16 = or i32 %15, 1, !dbg !1298
  store volatile i32 %16, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1298
  %17 = shl i32 %1, 2, !dbg !1299
  %18 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1300
  %19 = or i32 %18, %17, !dbg !1300
  store volatile i32 %19, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1300
  br label %36, !dbg !1301

20:                                               ; preds = %13
  store void ()* %2, void ()** @GPTTimer.1, align 4, !dbg !1302
  %21 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1305
  %22 = or i32 %21, 2, !dbg !1305
  store volatile i32 %22, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1305
  %23 = shl i32 %1, 2, !dbg !1306
  %24 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1307
  %25 = or i32 %24, %23, !dbg !1307
  store volatile i32 %25, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1307
  br label %36, !dbg !1308

26:                                               ; preds = %13
  %27 = shl i32 %1, 1, !dbg !1309
  %28 = or i32 %27, 1, !dbg !1312
  %29 = load volatile i32, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1313
  %30 = or i32 %29, %28, !dbg !1313
  store volatile i32 %30, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1313
  br label %36, !dbg !1314

31:                                               ; preds = %13
  %32 = shl i32 %1, 1, !dbg !1315
  %33 = or i32 %32, 1, !dbg !1318
  %34 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1319
  %35 = or i32 %34, %33, !dbg !1319
  store volatile i32 %35, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1319
  store volatile i32 0, i32* inttoptr (i32 -2096824220 to i32*), align 4, !dbg !1320
  br label %36, !dbg !1321

36:                                               ; preds = %13, %20, %31, %26, %14
  ret void, !dbg !1322
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @GPT_return_current_count(i32 noundef %0) local_unnamed_addr #0 !dbg !1323 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1327, metadata !DIExpression()), !dbg !1329
  switch i32 %0, label %2 [
    i32 0, label %8
    i32 1, label %5
    i32 2, label %6
    i32 4, label %7
  ], !dbg !1330

2:                                                ; preds = %1
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i32 0, i32 0), i32 noundef 177) #15, !dbg !1331
  br label %4, !dbg !1331

4:                                                ; preds = %4, %2
  br label %4, !dbg !1331, !llvm.loop !1334

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !1328, metadata !DIExpression()), !dbg !1329
  br label %8, !dbg !1335

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !1328, metadata !DIExpression()), !dbg !1329
  br label %8, !dbg !1339

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !1328, metadata !DIExpression()), !dbg !1329
  br label %8, !dbg !1342

8:                                                ; preds = %1, %5, %7, %6
  %9 = phi i32* [ inttoptr (i32 -2096824252 to i32*), %5 ], [ inttoptr (i32 -2096824268 to i32*), %6 ], [ inttoptr (i32 -2096824216 to i32*), %7 ], [ inttoptr (i32 -2096824256 to i32*), %1 ]
  %10 = load volatile i32, i32* %9, align 4, !dbg !1345
  call void @llvm.dbg.value(metadata i32 %10, metadata !1328, metadata !DIExpression()), !dbg !1329
  ret i32 %10, !dbg !1346
}

; Function Attrs: noinline nounwind optsize
define dso_local void @CM4_GPT2Init() local_unnamed_addr #0 !dbg !1347 {
  tail call void @GPT_init(i32 noundef 2, i32 noundef 1, void ()* noundef null) #16, !dbg !1349
  ret void, !dbg !1350
}

; Function Attrs: noinline nounwind optsize
define dso_local void @CM4_GPT4Init() local_unnamed_addr #0 !dbg !1351 {
  tail call void @GPT_init(i32 noundef 4, i32 noundef 1, void ()* noundef null) #16, !dbg !1352
  ret void, !dbg !1353
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_ConfDirection(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1354 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1359, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.value(metadata i8 %1, metadata !1360, metadata !DIExpression()), !dbg !1364
  %3 = lshr i32 %0, 5, !dbg !1365
  call void @llvm.dbg.value(metadata i32 %3, metadata !1361, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1364
  %4 = trunc i32 %0 to i16, !dbg !1366
  %5 = and i16 %4, 31, !dbg !1366
  call void @llvm.dbg.value(metadata i16 %4, metadata !1363, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1364
  %6 = trunc i32 %3 to i16, !dbg !1367
  switch i16 %6, label %97 [
    i16 0, label %7
    i16 1, label %70
  ], !dbg !1367

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 1, !dbg !1368
  %9 = zext i16 %5 to i32, !dbg !1371
  %10 = icmp ult i16 %5, 27, !dbg !1371
  br i1 %8, label %11, label %46, !dbg !1372

11:                                               ; preds = %7
  br i1 %10, label %12, label %17, !dbg !1373

12:                                               ; preds = %11
  %13 = shl nuw i32 1, %9, !dbg !1375
  %14 = xor i32 %13, -1, !dbg !1378
  %15 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1379
  %16 = and i32 %15, %14, !dbg !1379
  store volatile i32 %16, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1379
  br label %44, !dbg !1380

17:                                               ; preds = %11
  %18 = trunc i32 %0 to i5, !dbg !1381
  switch i5 %18, label %39 [
    i5 -5, label %19
    i5 -4, label %24
    i5 -3, label %29
    i5 -2, label %34
  ], !dbg !1381

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1382
  %21 = and i32 %20, -3, !dbg !1382
  store volatile i32 %21, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1382
  %22 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1385
  %23 = or i32 %22, 2048, !dbg !1385
  store volatile i32 %23, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1385
  br label %44, !dbg !1386

24:                                               ; preds = %17
  %25 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1387
  %26 = and i32 %25, -3, !dbg !1387
  store volatile i32 %26, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1387
  %27 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1390
  %28 = or i32 %27, 2048, !dbg !1390
  store volatile i32 %28, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1390
  br label %44, !dbg !1391

29:                                               ; preds = %17
  %30 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1392
  %31 = and i32 %30, -3, !dbg !1392
  store volatile i32 %31, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1392
  %32 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1395
  %33 = or i32 %32, 2048, !dbg !1395
  store volatile i32 %33, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1395
  br label %44, !dbg !1396

34:                                               ; preds = %17
  %35 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1397
  %36 = and i32 %35, -3, !dbg !1397
  store volatile i32 %36, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1397
  %37 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1400
  %38 = or i32 %37, 2048, !dbg !1400
  store volatile i32 %38, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1400
  br label %44, !dbg !1401

39:                                               ; preds = %17
  %40 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1402
  %41 = and i32 %40, -3, !dbg !1402
  store volatile i32 %41, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1402
  %42 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1405
  %43 = or i32 %42, 2048, !dbg !1405
  store volatile i32 %43, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1405
  br label %44, !dbg !1406

44:                                               ; preds = %19, %29, %39, %34, %24, %12
  %45 = shl nuw i32 1, %9, !dbg !1407
  store volatile i32 %45, i32* inttoptr (i32 -2097106796 to i32*), align 4, !dbg !1407
  br label %97, !dbg !1408

46:                                               ; preds = %7
  br i1 %10, label %47, label %51, !dbg !1409

47:                                               ; preds = %46
  %48 = shl nuw i32 1, %9, !dbg !1411
  %49 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1414
  %50 = or i32 %49, %48, !dbg !1414
  store volatile i32 %50, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1414
  br label %68, !dbg !1415

51:                                               ; preds = %46
  %52 = trunc i32 %0 to i5, !dbg !1416
  switch i5 %52, label %65 [
    i5 -5, label %53
    i5 -4, label %56
    i5 -3, label %59
    i5 -2, label %62
  ], !dbg !1416

53:                                               ; preds = %51
  %54 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1417
  %55 = or i32 %54, 2050, !dbg !1417
  store volatile i32 %55, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1417
  br label %68, !dbg !1420

56:                                               ; preds = %51
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1421
  %58 = or i32 %57, 2050, !dbg !1421
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1421
  br label %68, !dbg !1424

59:                                               ; preds = %51
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1425
  %61 = or i32 %60, 2050, !dbg !1425
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1425
  br label %68, !dbg !1428

62:                                               ; preds = %51
  %63 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1429
  %64 = or i32 %63, 2050, !dbg !1429
  store volatile i32 %64, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1429
  br label %68, !dbg !1432

65:                                               ; preds = %51
  %66 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1433
  %67 = or i32 %66, 2050, !dbg !1433
  store volatile i32 %67, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1433
  br label %68, !dbg !1436

68:                                               ; preds = %53, %59, %65, %62, %56, %47
  %69 = shl nuw i32 1, %9, !dbg !1437
  store volatile i32 %69, i32* inttoptr (i32 -2097106792 to i32*), align 8, !dbg !1437
  br label %97

70:                                               ; preds = %2
  %71 = icmp eq i8 %1, 1, !dbg !1438
  %72 = zext i16 %5 to i32, !dbg !1440
  %73 = icmp eq i16 %5, 0, !dbg !1440
  br i1 %71, label %74, label %87, !dbg !1441

74:                                               ; preds = %70
  br i1 %73, label %80, label %75, !dbg !1442

75:                                               ; preds = %74
  %76 = shl nuw i32 1, %72, !dbg !1444
  %77 = xor i32 %76, -1, !dbg !1447
  %78 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1448
  %79 = and i32 %78, %77, !dbg !1448
  store volatile i32 %79, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1448
  br label %85, !dbg !1449

80:                                               ; preds = %74
  %81 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1450
  %82 = and i32 %81, -3, !dbg !1450
  store volatile i32 %82, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1450
  %83 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1452
  %84 = or i32 %83, 2048, !dbg !1452
  store volatile i32 %84, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1452
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i32 [ 1, %80 ], [ %76, %75 ], !dbg !1453
  store volatile i32 %86, i32* inttoptr (i32 -2097106780 to i32*), align 4, !dbg !1453
  br label %97, !dbg !1454

87:                                               ; preds = %70
  br i1 %73, label %92, label %88, !dbg !1455

88:                                               ; preds = %87
  %89 = shl nuw i32 1, %72, !dbg !1457
  %90 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1460
  %91 = or i32 %90, %89, !dbg !1460
  store volatile i32 %91, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1460
  br label %95, !dbg !1461

92:                                               ; preds = %87
  %93 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1462
  %94 = or i32 %93, 2050, !dbg !1462
  store volatile i32 %94, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1462
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi i32 [ 1, %92 ], [ %89, %88 ], !dbg !1464
  store volatile i32 %96, i32* inttoptr (i32 -2097106776 to i32*), align 8, !dbg !1464
  br label %97

97:                                               ; preds = %68, %44, %95, %85, %2
  %98 = phi i32 [ -1, %2 ], [ 0, %85 ], [ 0, %95 ], [ 0, %44 ], [ 0, %68 ], !dbg !1364
  ret i32 %98, !dbg !1465
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPO_Write(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1466 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1468, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i8 %1, metadata !1469, metadata !DIExpression()), !dbg !1472
  %3 = lshr i32 %0, 5, !dbg !1473
  call void @llvm.dbg.value(metadata i32 %3, metadata !1470, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1472
  %4 = trunc i32 %0 to i16, !dbg !1474
  %5 = and i16 %4, 31, !dbg !1474
  call void @llvm.dbg.value(metadata i16 %5, metadata !1471, metadata !DIExpression()), !dbg !1472
  %6 = trunc i32 %3 to i16, !dbg !1475
  switch i16 %6, label %19 [
    i16 0, label %7
    i16 1, label %13
  ], !dbg !1475

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 0, !dbg !1476
  %9 = zext i16 %5 to i32, !dbg !1479
  %10 = shl nuw i32 1, %9, !dbg !1479
  br i1 %8, label %12, label %11, !dbg !1480

11:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106844 to i32*), align 4, !dbg !1481
  br label %19, !dbg !1483

12:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106840 to i32*), align 8, !dbg !1484
  br label %19

13:                                               ; preds = %2
  %14 = icmp eq i8 %1, 0, !dbg !1486
  %15 = zext i16 %5 to i32, !dbg !1488
  %16 = shl nuw i32 1, %15, !dbg !1488
  br i1 %14, label %18, label %17, !dbg !1489

17:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106828 to i32*), align 4, !dbg !1490
  br label %19, !dbg !1492

18:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106824 to i32*), align 8, !dbg !1493
  br label %19

19:                                               ; preds = %12, %11, %18, %17, %2
  %20 = phi i32 [ -1, %2 ], [ 0, %17 ], [ 0, %18 ], [ 0, %11 ], [ 0, %12 ], !dbg !1472
  ret i32 %20, !dbg !1495
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DOUT(i32 noundef %0) local_unnamed_addr #4 !dbg !1496 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1500, metadata !DIExpression()), !dbg !1504
  %2 = lshr i32 %0, 5, !dbg !1505
  call void @llvm.dbg.value(metadata i32 %2, metadata !1501, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1504
  %3 = and i32 %0, 31, !dbg !1506
  call void @llvm.dbg.value(metadata i32 %0, metadata !1502, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1504
  call void @llvm.dbg.value(metadata i8 0, metadata !1503, metadata !DIExpression()), !dbg !1504
  %4 = trunc i32 %2 to i16, !dbg !1507
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1507

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1503, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1504
  br label %6, !dbg !1508

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106832 to i32*), %5 ], [ inttoptr (i32 -2097106848 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1510
  %9 = lshr i32 %8, %3, !dbg !1510
  %10 = trunc i32 %9 to i8, !dbg !1510
  %11 = and i8 %10, 1, !dbg !1510
  call void @llvm.dbg.value(metadata i8 %11, metadata !1503, metadata !DIExpression()), !dbg !1504
  br label %12, !dbg !1511

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1504
  ret i8 %13, !dbg !1512
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DIN(i32 noundef %0) local_unnamed_addr #4 !dbg !1513 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1515, metadata !DIExpression()), !dbg !1519
  %2 = lshr i32 %0, 5, !dbg !1520
  call void @llvm.dbg.value(metadata i32 %2, metadata !1516, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1519
  %3 = and i32 %0, 31, !dbg !1521
  call void @llvm.dbg.value(metadata i32 %0, metadata !1517, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1519
  call void @llvm.dbg.value(metadata i8 0, metadata !1518, metadata !DIExpression()), !dbg !1519
  %4 = trunc i32 %2 to i16, !dbg !1522
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1522

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1518, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1519
  br label %6, !dbg !1523

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106748 to i32*), %5 ], [ inttoptr (i32 -2097106752 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 4, !dbg !1525
  %9 = lshr i32 %8, %3, !dbg !1525
  %10 = trunc i32 %9 to i8, !dbg !1525
  %11 = and i8 %10, 1, !dbg !1525
  call void @llvm.dbg.value(metadata i8 %11, metadata !1518, metadata !DIExpression()), !dbg !1519
  br label %12, !dbg !1526

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1519
  ret i8 %13, !dbg !1527
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_OutEnable(i32 noundef %0) local_unnamed_addr #4 !dbg !1528 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1530, metadata !DIExpression()), !dbg !1534
  %2 = lshr i32 %0, 5, !dbg !1535
  call void @llvm.dbg.value(metadata i32 %2, metadata !1531, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1534
  %3 = and i32 %0, 31, !dbg !1536
  call void @llvm.dbg.value(metadata i32 %0, metadata !1532, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1534
  call void @llvm.dbg.value(metadata i8 0, metadata !1533, metadata !DIExpression()), !dbg !1534
  %4 = trunc i32 %2 to i16, !dbg !1537
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1537

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1533, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1534
  br label %6, !dbg !1538

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106784 to i32*), %5 ], [ inttoptr (i32 -2097106800 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1540
  %9 = lshr i32 %8, %3, !dbg !1540
  %10 = trunc i32 %9 to i8, !dbg !1540
  %11 = and i8 %10, 1, !dbg !1540
  call void @llvm.dbg.value(metadata i8 %11, metadata !1533, metadata !DIExpression()), !dbg !1534
  br label %12, !dbg !1541

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1534
  ret i8 %13, !dbg !1542
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_SET(i32 noundef %0) local_unnamed_addr #3 !dbg !1543 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1547, metadata !DIExpression()), !dbg !1550
  %2 = lshr i32 %0, 5, !dbg !1551
  call void @llvm.dbg.value(metadata i32 %2, metadata !1548, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1550
  %3 = trunc i32 %0 to i16, !dbg !1552
  %4 = and i16 %3, 31, !dbg !1552
  call void @llvm.dbg.value(metadata i16 %3, metadata !1549, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1550
  %5 = tail call i32 @halGPIO_PullDown_RESET(i32 noundef %0) #16, !dbg !1553
  %6 = trunc i32 %2 to i16, !dbg !1554
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1554

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1555
  br i1 %8, label %9, label %12, !dbg !1558

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1559
  %11 = shl nuw nsw i32 1, %10, !dbg !1560
  store volatile i32 %11, i32* inttoptr (i32 -2097106940 to i32*), align 4, !dbg !1560
  br label %49, !dbg !1562

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1563
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1563

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1564
  %16 = and i32 %15, -29, !dbg !1564
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1564
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1567
  %18 = or i32 %17, 2052, !dbg !1567
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1567
  br label %49, !dbg !1568

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1569
  %21 = and i32 %20, -29, !dbg !1569
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1569
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1572
  %23 = or i32 %22, 2052, !dbg !1572
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1572
  br label %49, !dbg !1573

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1574
  %26 = and i32 %25, -29, !dbg !1574
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1574
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1577
  %28 = or i32 %27, 2052, !dbg !1577
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1577
  br label %49, !dbg !1578

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1579
  %31 = and i32 %30, -29, !dbg !1579
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1579
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1582
  %33 = or i32 %32, 2052, !dbg !1582
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1582
  br label %49, !dbg !1583

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1584
  %36 = and i32 %35, -29, !dbg !1584
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1584
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1587
  %38 = or i32 %37, 2052, !dbg !1587
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1587
  br label %49, !dbg !1588

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1589
  br i1 %40, label %41, label %46, !dbg !1591

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1592
  %43 = and i32 %42, -29, !dbg !1592
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1592
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1594
  %45 = or i32 %44, 2052, !dbg !1594
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1594
  br label %49, !dbg !1595

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1596
  %48 = shl nuw i32 1, %47, !dbg !1596
  store volatile i32 %48, i32* inttoptr (i32 -2097106924 to i32*), align 4, !dbg !1596
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1550
  ret i32 %50, !dbg !1598
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_RESET(i32 noundef %0) local_unnamed_addr #3 !dbg !1599 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1601, metadata !DIExpression()), !dbg !1604
  %2 = lshr i32 %0, 5, !dbg !1605
  call void @llvm.dbg.value(metadata i32 %2, metadata !1602, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1604
  %3 = trunc i32 %0 to i16, !dbg !1606
  %4 = and i16 %3, 31, !dbg !1606
  call void @llvm.dbg.value(metadata i16 %3, metadata !1603, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1604
  %5 = trunc i32 %2 to i16, !dbg !1607
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1607

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1608
  br i1 %7, label %8, label %11, !dbg !1611

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1612
  %10 = shl nuw nsw i32 1, %9, !dbg !1613
  store volatile i32 %10, i32* inttoptr (i32 -2097106888 to i32*), align 8, !dbg !1613
  br label %48, !dbg !1615

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1616
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1616

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1617
  %15 = and i32 %14, -29, !dbg !1617
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1617
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1620
  %17 = or i32 %16, 2048, !dbg !1620
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1620
  br label %48, !dbg !1621

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1622
  %20 = and i32 %19, -29, !dbg !1622
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1622
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1625
  %22 = or i32 %21, 2048, !dbg !1625
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1625
  br label %48, !dbg !1626

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1627
  %25 = and i32 %24, -29, !dbg !1627
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1627
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1630
  %27 = or i32 %26, 2048, !dbg !1630
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1630
  br label %48, !dbg !1631

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1632
  %30 = and i32 %29, -29, !dbg !1632
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1632
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1635
  %32 = or i32 %31, 2048, !dbg !1635
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1635
  br label %48, !dbg !1636

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1637
  %35 = and i32 %34, -29, !dbg !1637
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1637
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1640
  %37 = or i32 %36, 2048, !dbg !1640
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1640
  br label %48, !dbg !1641

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1642
  br i1 %39, label %40, label %45, !dbg !1644

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1645
  %42 = and i32 %41, -29, !dbg !1645
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1645
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1647
  %44 = or i32 %43, 2048, !dbg !1647
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1647
  br label %48, !dbg !1648

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1649
  %47 = shl nuw i32 1, %46, !dbg !1649
  store volatile i32 %47, i32* inttoptr (i32 -2097106872 to i32*), align 8, !dbg !1649
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1604
  ret i32 %49, !dbg !1651
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_RESET(i32 noundef %0) local_unnamed_addr #3 !dbg !1652 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1654, metadata !DIExpression()), !dbg !1657
  %2 = lshr i32 %0, 5, !dbg !1658
  call void @llvm.dbg.value(metadata i32 %2, metadata !1655, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1657
  %3 = trunc i32 %0 to i16, !dbg !1659
  %4 = and i16 %3, 31, !dbg !1659
  call void @llvm.dbg.value(metadata i16 %3, metadata !1656, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1657
  %5 = trunc i32 %2 to i16, !dbg !1660
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1660

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1661
  br i1 %7, label %8, label %11, !dbg !1664

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1665
  %10 = shl nuw nsw i32 1, %9, !dbg !1666
  store volatile i32 %10, i32* inttoptr (i32 -2097106936 to i32*), align 8, !dbg !1666
  br label %48, !dbg !1668

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1669
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1669

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1670
  %15 = and i32 %14, -29, !dbg !1670
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1670
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1673
  %17 = or i32 %16, 2048, !dbg !1673
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1673
  br label %48, !dbg !1674

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1675
  %20 = and i32 %19, -29, !dbg !1675
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1675
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1678
  %22 = or i32 %21, 2048, !dbg !1678
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1678
  br label %48, !dbg !1679

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1680
  %25 = and i32 %24, -29, !dbg !1680
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1680
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1683
  %27 = or i32 %26, 2048, !dbg !1683
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1683
  br label %48, !dbg !1684

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1685
  %30 = and i32 %29, -29, !dbg !1685
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1685
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1688
  %32 = or i32 %31, 2048, !dbg !1688
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1688
  br label %48, !dbg !1689

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1690
  %35 = and i32 %34, -29, !dbg !1690
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1690
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1693
  %37 = or i32 %36, 2048, !dbg !1693
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1693
  br label %48, !dbg !1694

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1695
  br i1 %39, label %40, label %45, !dbg !1697

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1698
  %42 = and i32 %41, -29, !dbg !1698
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1698
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1700
  %44 = or i32 %43, 2048, !dbg !1700
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1700
  br label %48, !dbg !1701

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1702
  %47 = shl nuw i32 1, %46, !dbg !1702
  store volatile i32 %47, i32* inttoptr (i32 -2097106920 to i32*), align 8, !dbg !1702
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1657
  ret i32 %49, !dbg !1704
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_SET(i32 noundef %0) local_unnamed_addr #3 !dbg !1705 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1707, metadata !DIExpression()), !dbg !1710
  %2 = lshr i32 %0, 5, !dbg !1711
  call void @llvm.dbg.value(metadata i32 %2, metadata !1708, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1710
  %3 = trunc i32 %0 to i16, !dbg !1712
  %4 = and i16 %3, 31, !dbg !1712
  call void @llvm.dbg.value(metadata i16 %3, metadata !1709, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1710
  %5 = tail call i32 @halGPIO_PullUp_RESET(i32 noundef %0) #16, !dbg !1713
  %6 = trunc i32 %2 to i16, !dbg !1714
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1714

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1715
  br i1 %8, label %9, label %12, !dbg !1718

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1719
  %11 = shl nuw nsw i32 1, %10, !dbg !1720
  store volatile i32 %11, i32* inttoptr (i32 -2097106892 to i32*), align 4, !dbg !1720
  br label %49, !dbg !1722

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1723
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1723

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1724
  %16 = and i32 %15, -29, !dbg !1724
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1724
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1727
  %18 = or i32 %17, 2068, !dbg !1727
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1727
  br label %49, !dbg !1728

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1729
  %21 = and i32 %20, -29, !dbg !1729
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1729
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1732
  %23 = or i32 %22, 2068, !dbg !1732
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1732
  br label %49, !dbg !1733

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1734
  %26 = and i32 %25, -29, !dbg !1734
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1734
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1737
  %28 = or i32 %27, 2068, !dbg !1737
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1737
  br label %49, !dbg !1738

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1739
  %31 = and i32 %30, -29, !dbg !1739
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1739
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1742
  %33 = or i32 %32, 2068, !dbg !1742
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1742
  br label %49, !dbg !1743

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1744
  %36 = and i32 %35, -29, !dbg !1744
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1744
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1747
  %38 = or i32 %37, 2068, !dbg !1747
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1747
  br label %49, !dbg !1748

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1749
  br i1 %40, label %41, label %46, !dbg !1751

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1752
  %43 = and i32 %42, -29, !dbg !1752
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1752
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1754
  %45 = or i32 %44, 2068, !dbg !1754
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1754
  br label %49, !dbg !1755

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1756
  %48 = shl nuw i32 1, %47, !dbg !1756
  store volatile i32 %48, i32* inttoptr (i32 -2097106876 to i32*), align 4, !dbg !1756
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1710
  ret i32 %50, !dbg !1758
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_SetDriving(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1759 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1761, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %1, metadata !1762, metadata !DIExpression()), !dbg !1765
  %3 = lshr i32 %0, 4, !dbg !1766
  call void @llvm.dbg.value(metadata i32 %3, metadata !1763, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1765
  %4 = trunc i32 %0 to i16, !dbg !1767
  %5 = and i16 %4, 15, !dbg !1767
  call void @llvm.dbg.value(metadata i16 %4, metadata !1764, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1765
  %6 = trunc i32 %3 to i16, !dbg !1768
  switch i16 %6, label %131 [
    i16 0, label %7
    i16 1, label %20
    i16 2, label %92
    i16 3, label %118
  ], !dbg !1768

7:                                                ; preds = %2
  %8 = shl nuw nsw i16 %5, 1, !dbg !1769
  %9 = zext i16 %8 to i32, !dbg !1769
  %10 = shl nuw i32 3, %9, !dbg !1771
  %11 = xor i32 %10, -1, !dbg !1772
  %12 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1773
  %13 = and i32 %12, %11, !dbg !1773
  store volatile i32 %13, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1773
  %14 = lshr i8 %1, 2, !dbg !1774
  %15 = zext i8 %14 to i32, !dbg !1774
  %16 = add nsw i32 %15, -1, !dbg !1775
  %17 = shl i32 %16, %9, !dbg !1776
  %18 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1777
  %19 = or i32 %18, %17, !dbg !1777
  store volatile i32 %19, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1777
  br label %131, !dbg !1778

20:                                               ; preds = %2
  %21 = icmp ult i16 %5, 11, !dbg !1779
  br i1 %21, label %22, label %35, !dbg !1781

22:                                               ; preds = %20
  %23 = shl nuw nsw i16 %5, 1, !dbg !1782
  %24 = zext i16 %23 to i32, !dbg !1782
  %25 = shl nuw nsw i32 3, %24, !dbg !1784
  %26 = xor i32 %25, -1, !dbg !1785
  %27 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1786
  %28 = and i32 %27, %26, !dbg !1786
  store volatile i32 %28, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1786
  %29 = lshr i8 %1, 2, !dbg !1787
  %30 = zext i8 %29 to i32, !dbg !1787
  %31 = add nsw i32 %30, -1, !dbg !1788
  %32 = shl nsw i32 %31, %24, !dbg !1789
  %33 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1790
  %34 = or i32 %33, %32, !dbg !1790
  store volatile i32 %34, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1790
  br label %131, !dbg !1791

35:                                               ; preds = %20
  %36 = trunc i32 %0 to i4, !dbg !1792
  switch i4 %36, label %81 [
    i4 -5, label %37
    i4 -4, label %48
    i4 -3, label %59
    i4 -2, label %70
  ], !dbg !1792

37:                                               ; preds = %35
  %38 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1793
  %39 = and i32 %38, -449, !dbg !1793
  store volatile i32 %39, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1793
  %40 = lshr i8 %1, 1, !dbg !1796
  %41 = zext i8 %40 to i32, !dbg !1796
  %42 = shl nuw nsw i32 %41, 6, !dbg !1797
  %43 = add nsw i32 %42, -64, !dbg !1797
  %44 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1798
  %45 = or i32 %44, %43, !dbg !1798
  store volatile i32 %45, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1798
  %46 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1799
  %47 = or i32 %46, 2048, !dbg !1799
  store volatile i32 %47, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1799
  br label %131, !dbg !1800

48:                                               ; preds = %35
  %49 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1801
  %50 = and i32 %49, -449, !dbg !1801
  store volatile i32 %50, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1801
  %51 = lshr i8 %1, 1, !dbg !1804
  %52 = zext i8 %51 to i32, !dbg !1804
  %53 = shl nuw nsw i32 %52, 6, !dbg !1805
  %54 = add nsw i32 %53, -64, !dbg !1805
  %55 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1806
  %56 = or i32 %55, %54, !dbg !1806
  store volatile i32 %56, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1806
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1807
  %58 = or i32 %57, 2048, !dbg !1807
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1807
  br label %131, !dbg !1808

59:                                               ; preds = %35
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1809
  %61 = and i32 %60, -449, !dbg !1809
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1809
  %62 = lshr i8 %1, 1, !dbg !1812
  %63 = zext i8 %62 to i32, !dbg !1812
  %64 = shl nuw nsw i32 %63, 6, !dbg !1813
  %65 = add nsw i32 %64, -64, !dbg !1813
  %66 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1814
  %67 = or i32 %66, %65, !dbg !1814
  store volatile i32 %67, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1814
  %68 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1815
  %69 = or i32 %68, 2048, !dbg !1815
  store volatile i32 %69, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1815
  br label %131, !dbg !1816

70:                                               ; preds = %35
  %71 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1817
  %72 = and i32 %71, -449, !dbg !1817
  store volatile i32 %72, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1817
  %73 = lshr i8 %1, 1, !dbg !1820
  %74 = zext i8 %73 to i32, !dbg !1820
  %75 = shl nuw nsw i32 %74, 6, !dbg !1821
  %76 = add nsw i32 %75, -64, !dbg !1821
  %77 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1822
  %78 = or i32 %77, %76, !dbg !1822
  store volatile i32 %78, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1822
  %79 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1823
  %80 = or i32 %79, 2048, !dbg !1823
  store volatile i32 %80, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1823
  br label %131, !dbg !1824

81:                                               ; preds = %35
  %82 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1825
  %83 = and i32 %82, -449, !dbg !1825
  store volatile i32 %83, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1825
  %84 = lshr i8 %1, 1, !dbg !1828
  %85 = zext i8 %84 to i32, !dbg !1828
  %86 = shl nuw nsw i32 %85, 6, !dbg !1829
  %87 = add nsw i32 %86, -64, !dbg !1829
  %88 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1830
  %89 = or i32 %88, %87, !dbg !1830
  store volatile i32 %89, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1830
  %90 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1831
  %91 = or i32 %90, 2048, !dbg !1831
  store volatile i32 %91, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1831
  br label %131, !dbg !1832

92:                                               ; preds = %2
  %93 = icmp eq i16 %5, 0, !dbg !1833
  br i1 %93, label %94, label %105, !dbg !1835

94:                                               ; preds = %92
  %95 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1836
  %96 = and i32 %95, -449, !dbg !1836
  store volatile i32 %96, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1836
  %97 = lshr i8 %1, 1, !dbg !1838
  %98 = zext i8 %97 to i32, !dbg !1838
  %99 = shl nuw nsw i32 %98, 6, !dbg !1839
  %100 = add nsw i32 %99, -64, !dbg !1839
  %101 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1840
  %102 = or i32 %101, %100, !dbg !1840
  store volatile i32 %102, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1840
  %103 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1841
  %104 = or i32 %103, 2048, !dbg !1841
  store volatile i32 %104, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1841
  br label %131, !dbg !1842

105:                                              ; preds = %92
  %106 = shl nuw nsw i16 %5, 1, !dbg !1843
  %107 = zext i16 %106 to i32, !dbg !1843
  %108 = shl nuw i32 3, %107, !dbg !1845
  %109 = xor i32 %108, -1, !dbg !1846
  %110 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1847
  %111 = and i32 %110, %109, !dbg !1847
  store volatile i32 %111, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1847
  %112 = lshr i8 %1, 2, !dbg !1848
  %113 = zext i8 %112 to i32, !dbg !1848
  %114 = add nsw i32 %113, -1, !dbg !1849
  %115 = shl i32 %114, %107, !dbg !1850
  %116 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1851
  %117 = or i32 %116, %115, !dbg !1851
  store volatile i32 %117, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1851
  br label %131

118:                                              ; preds = %2
  %119 = shl nuw nsw i16 %5, 1, !dbg !1852
  %120 = zext i16 %119 to i32, !dbg !1852
  %121 = shl nuw i32 3, %120, !dbg !1853
  %122 = xor i32 %121, -1, !dbg !1854
  %123 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1855
  %124 = and i32 %123, %122, !dbg !1855
  store volatile i32 %124, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1855
  %125 = lshr i8 %1, 2, !dbg !1856
  %126 = zext i8 %125 to i32, !dbg !1856
  %127 = add nsw i32 %126, -1, !dbg !1857
  %128 = shl i32 %127, %120, !dbg !1858
  %129 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1859
  %130 = or i32 %129, %128, !dbg !1859
  store volatile i32 %130, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1859
  br label %131, !dbg !1860

131:                                              ; preds = %7, %118, %37, %59, %81, %70, %48, %22, %105, %94, %2
  %132 = phi i32 [ -1, %2 ], [ 0, %94 ], [ 0, %105 ], [ 0, %22 ], [ 0, %48 ], [ 0, %70 ], [ 0, %81 ], [ 0, %59 ], [ 0, %37 ], [ 0, %118 ], [ 0, %7 ], !dbg !1765
  ret i32 %132, !dbg !1861
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @halGPIO_GetDriving(i32 noundef %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #4 !dbg !1862 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1867, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i8* %1, metadata !1868, metadata !DIExpression()), !dbg !1872
  %3 = lshr i32 %0, 4, !dbg !1873
  call void @llvm.dbg.value(metadata i32 %3, metadata !1869, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1872
  %4 = trunc i32 %0 to i16, !dbg !1874
  %5 = and i16 %4, 15, !dbg !1874
  call void @llvm.dbg.value(metadata i16 %4, metadata !1870, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1872
  %6 = trunc i32 %3 to i16, !dbg !1875
  switch i16 %6, label %91 [
    i16 0, label %7
    i16 1, label %17
    i16 2, label %61
    i16 3, label %79
  ], !dbg !1875

7:                                                ; preds = %2
  %8 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1876
  call void @llvm.dbg.value(metadata i32 %8, metadata !1871, metadata !DIExpression()), !dbg !1872
  %9 = shl nuw nsw i16 %5, 1, !dbg !1878
  %10 = zext i16 %9 to i32, !dbg !1878
  %11 = shl nuw i32 3, %10, !dbg !1879
  %12 = and i32 %8, %11, !dbg !1880
  call void @llvm.dbg.value(metadata i32 %12, metadata !1871, metadata !DIExpression()), !dbg !1872
  %13 = lshr i32 %12, %10, !dbg !1881
  %14 = trunc i32 %13 to i8, !dbg !1882
  %15 = shl i8 %14, 2, !dbg !1882
  %16 = add i8 %15, 4, !dbg !1882
  br label %89, !dbg !1883

17:                                               ; preds = %2
  %18 = icmp ult i16 %5, 11, !dbg !1884
  br i1 %18, label %19, label %29, !dbg !1886

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1887
  call void @llvm.dbg.value(metadata i32 %20, metadata !1871, metadata !DIExpression()), !dbg !1872
  %21 = shl nuw nsw i16 %5, 1, !dbg !1889
  %22 = zext i16 %21 to i32, !dbg !1889
  %23 = shl nuw nsw i32 3, %22, !dbg !1890
  %24 = and i32 %20, %23, !dbg !1891
  call void @llvm.dbg.value(metadata i32 %24, metadata !1871, metadata !DIExpression()), !dbg !1872
  %25 = lshr i32 %24, %22, !dbg !1892
  %26 = trunc i32 %25 to i8, !dbg !1893
  %27 = shl i8 %26, 2, !dbg !1893
  %28 = add i8 %27, 4, !dbg !1893
  br label %89, !dbg !1894

29:                                               ; preds = %17
  %30 = trunc i32 %0 to i4, !dbg !1895
  switch i4 %30, label %55 [
    i4 -5, label %31
    i4 -4, label %37
    i4 -3, label %43
    i4 -2, label %49
  ], !dbg !1895

31:                                               ; preds = %29
  %32 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1896
  call void @llvm.dbg.value(metadata i32 %32, metadata !1871, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i32 %32, metadata !1871, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1872
  %33 = lshr i32 %32, 5, !dbg !1899
  %34 = trunc i32 %33 to i8, !dbg !1900
  %35 = and i8 %34, 14, !dbg !1900
  %36 = add nuw nsw i8 %35, 2, !dbg !1900
  br label %89, !dbg !1901

37:                                               ; preds = %29
  %38 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1902
  call void @llvm.dbg.value(metadata i32 %38, metadata !1871, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i32 %38, metadata !1871, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1872
  %39 = lshr i32 %38, 5, !dbg !1905
  %40 = trunc i32 %39 to i8, !dbg !1906
  %41 = and i8 %40, 14, !dbg !1906
  %42 = add nuw nsw i8 %41, 2, !dbg !1906
  br label %89, !dbg !1907

43:                                               ; preds = %29
  %44 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1908
  call void @llvm.dbg.value(metadata i32 %44, metadata !1871, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i32 %44, metadata !1871, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1872
  %45 = lshr i32 %44, 5, !dbg !1911
  %46 = trunc i32 %45 to i8, !dbg !1912
  %47 = and i8 %46, 14, !dbg !1912
  %48 = add nuw nsw i8 %47, 2, !dbg !1912
  br label %89, !dbg !1913

49:                                               ; preds = %29
  %50 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1914
  call void @llvm.dbg.value(metadata i32 %50, metadata !1871, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i32 %50, metadata !1871, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1872
  %51 = lshr i32 %50, 5, !dbg !1917
  %52 = trunc i32 %51 to i8, !dbg !1918
  %53 = and i8 %52, 14, !dbg !1918
  %54 = add nuw nsw i8 %53, 2, !dbg !1918
  br label %89, !dbg !1919

55:                                               ; preds = %29
  %56 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1920
  call void @llvm.dbg.value(metadata i32 %56, metadata !1871, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i32 %56, metadata !1871, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1872
  %57 = lshr i32 %56, 5, !dbg !1923
  %58 = trunc i32 %57 to i8, !dbg !1924
  %59 = and i8 %58, 14, !dbg !1924
  %60 = add nuw nsw i8 %59, 2, !dbg !1924
  br label %89, !dbg !1925

61:                                               ; preds = %2
  %62 = icmp eq i16 %5, 0, !dbg !1926
  br i1 %62, label %63, label %69, !dbg !1928

63:                                               ; preds = %61
  %64 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1929
  call void @llvm.dbg.value(metadata i32 %64, metadata !1871, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i32 %64, metadata !1871, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1872
  %65 = lshr i32 %64, 5, !dbg !1931
  %66 = trunc i32 %65 to i8, !dbg !1932
  %67 = and i8 %66, 14, !dbg !1932
  %68 = add nuw nsw i8 %67, 2, !dbg !1932
  br label %89, !dbg !1933

69:                                               ; preds = %61
  %70 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1934
  call void @llvm.dbg.value(metadata i32 %70, metadata !1871, metadata !DIExpression()), !dbg !1872
  %71 = shl nuw nsw i16 %5, 1, !dbg !1936
  %72 = zext i16 %71 to i32, !dbg !1936
  %73 = shl nuw i32 3, %72, !dbg !1937
  %74 = and i32 %70, %73, !dbg !1938
  call void @llvm.dbg.value(metadata i32 %74, metadata !1871, metadata !DIExpression()), !dbg !1872
  %75 = lshr i32 %74, %72, !dbg !1939
  %76 = trunc i32 %75 to i8, !dbg !1940
  %77 = shl i8 %76, 2, !dbg !1940
  %78 = add i8 %77, 4, !dbg !1940
  br label %89

79:                                               ; preds = %2
  %80 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1941
  call void @llvm.dbg.value(metadata i32 %80, metadata !1871, metadata !DIExpression()), !dbg !1872
  %81 = shl nuw nsw i16 %5, 1, !dbg !1942
  %82 = zext i16 %81 to i32, !dbg !1942
  %83 = shl nuw i32 3, %82, !dbg !1943
  %84 = and i32 %80, %83, !dbg !1944
  call void @llvm.dbg.value(metadata i32 %84, metadata !1871, metadata !DIExpression()), !dbg !1872
  %85 = lshr i32 %84, %82, !dbg !1945
  %86 = trunc i32 %85 to i8, !dbg !1946
  %87 = shl i8 %86, 2, !dbg !1946
  %88 = add i8 %87, 4, !dbg !1946
  br label %89, !dbg !1947

89:                                               ; preds = %63, %69, %19, %37, %49, %55, %43, %31, %79, %7
  %90 = phi i8 [ %16, %7 ], [ %88, %79 ], [ %36, %31 ], [ %48, %43 ], [ %60, %55 ], [ %54, %49 ], [ %42, %37 ], [ %28, %19 ], [ %78, %69 ], [ %68, %63 ]
  store i8 %90, i8* %1, align 1, !dbg !1948
  br label %91, !dbg !1949

91:                                               ; preds = %89, %2
  %92 = phi i32 [ -1, %2 ], [ 0, %89 ], !dbg !1872
  ret i32 %92, !dbg !1949
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !1950 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1955, metadata !DIExpression()), !dbg !1959
  call void @llvm.dbg.value(metadata i32 %1, metadata !1956, metadata !DIExpression()), !dbg !1959
  %3 = lshr i32 %0, 5, !dbg !1960
  call void @llvm.dbg.value(metadata i32 %3, metadata !1957, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1959
  %4 = trunc i32 %0 to i16, !dbg !1961
  %5 = and i16 %4, 31, !dbg !1961
  call void @llvm.dbg.value(metadata i16 %5, metadata !1958, metadata !DIExpression()), !dbg !1959
  switch i32 %1, label %32 [
    i32 1, label %6
    i32 0, label %18
  ], !dbg !1962

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 %3, metadata !1957, metadata !DIExpression()), !dbg !1959
  %7 = trunc i32 %3 to i16, !dbg !1963
  switch i16 %7, label %32 [
    i16 0, label %8
    i16 1, label %13
  ], !dbg !1963

8:                                                ; preds = %6
  %9 = zext i16 %5 to i32, !dbg !1966
  %10 = shl nuw i32 1, %9, !dbg !1968
  %11 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1969
  %12 = or i32 %11, %10, !dbg !1969
  store volatile i32 %12, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1969
  br label %32, !dbg !1970

13:                                               ; preds = %6
  %14 = zext i16 %5 to i32, !dbg !1971
  %15 = shl nuw i32 1, %14, !dbg !1972
  %16 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1973
  %17 = or i32 %16, %15, !dbg !1973
  store volatile i32 %17, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1973
  br label %32, !dbg !1974

18:                                               ; preds = %2
  %19 = trunc i32 %3 to i16, !dbg !1975
  switch i16 %19, label %32 [
    i16 0, label %20
    i16 1, label %26
  ], !dbg !1975

20:                                               ; preds = %18
  %21 = zext i16 %5 to i32, !dbg !1978
  %22 = shl nuw i32 1, %21, !dbg !1980
  %23 = xor i32 %22, -1, !dbg !1981
  %24 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1982
  %25 = and i32 %24, %23, !dbg !1982
  store volatile i32 %25, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1982
  br label %32, !dbg !1983

26:                                               ; preds = %18
  %27 = zext i16 %5 to i32, !dbg !1984
  %28 = shl nuw i32 1, %27, !dbg !1985
  %29 = xor i32 %28, -1, !dbg !1986
  %30 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1987
  %31 = and i32 %30, %29, !dbg !1987
  store volatile i32 %31, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1987
  br label %32, !dbg !1988

32:                                               ; preds = %2, %18, %26, %20, %8, %13, %6
  ret void, !dbg !1989
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvGPIO_IDX_EINT_WIC_LISR(i32 noundef %0) #0 !dbg !1990 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1992, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i32 255, metadata !1994, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i32 0, metadata !1993, metadata !DIExpression()), !dbg !1995
  %2 = load i32, i32* @hal_eint_count_max, align 4
  call void @llvm.dbg.value(metadata i32 0, metadata !1993, metadata !DIExpression()), !dbg !1995
  %3 = icmp eq i32 %2, 0, !dbg !1996
  br i1 %3, label %21, label %4, !dbg !1999

4:                                                ; preds = %1
  %5 = add i32 %2, -1
  call void @llvm.dbg.value(metadata i32 0, metadata !1993, metadata !DIExpression()), !dbg !1995
  %6 = load i32, i32* getelementptr inbounds ([23 x %struct.hal_eint_gpio_map_t], [23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table, i32 0, i32 0, i32 2), align 4, !dbg !2000
  %7 = icmp eq i32 %6, %0, !dbg !2003
  br i1 %7, label %8, label %12, !dbg !2004

8:                                                ; preds = %16, %4
  %9 = phi i32 [ 0, %4 ], [ %17, %16 ]
  %10 = getelementptr inbounds [0 x %struct.hal_eint_gpio_map_t], [0 x %struct.hal_eint_gpio_map_t]* bitcast ([23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table to [0 x %struct.hal_eint_gpio_map_t]*), i32 0, i32 %9, i32 1, !dbg !2005
  %11 = load i32, i32* %10, align 4, !dbg !2005
  call void @llvm.dbg.value(metadata i32 %11, metadata !1994, metadata !DIExpression()), !dbg !1995
  br label %21, !dbg !2007

12:                                               ; preds = %4, %16
  %13 = phi i32 [ %17, %16 ], [ 0, %4 ]
  call void @llvm.dbg.value(metadata i32 %13, metadata !1993, metadata !DIExpression()), !dbg !1995
  %14 = icmp eq i32 %5, %13, !dbg !2008
  br i1 %14, label %15, label %16, !dbg !2010

15:                                               ; preds = %12
  tail call void (i8*, i32, i8*, ...) @log_hal_info_internal(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.drvGPIO_IDX_EINT_WIC_LISR, i32 0, i32 0), i32 noundef 578, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i32 0, i32 0), i32 noundef %0) #15, !dbg !2011
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1.3, i32 0, i32 0), i32 noundef 579, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.drvGPIO_IDX_EINT_WIC_LISR, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.4, i32 0, i32 0)) #17, !dbg !2013
  unreachable, !dbg !2013

16:                                               ; preds = %12
  %17 = add nuw i32 %13, 1, !dbg !2014
  call void @llvm.dbg.value(metadata i32 %17, metadata !1993, metadata !DIExpression()), !dbg !1995
  %18 = getelementptr inbounds [0 x %struct.hal_eint_gpio_map_t], [0 x %struct.hal_eint_gpio_map_t]* bitcast ([23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table to [0 x %struct.hal_eint_gpio_map_t]*), i32 0, i32 %17, i32 2, !dbg !2000
  %19 = load i32, i32* %18, align 4, !dbg !2000
  %20 = icmp eq i32 %19, %0, !dbg !2003
  br i1 %20, label %8, label %12, !dbg !2004, !llvm.loop !2015

21:                                               ; preds = %1, %8
  %22 = phi i32 [ %11, %8 ], [ 255, %1 ], !dbg !1995
  call void @llvm.dbg.value(metadata i32 %22, metadata !1994, metadata !DIExpression()), !dbg !1995
  %23 = load void (i32)*, void (i32)** @LISR.0, align 4, !dbg !2017
  tail call void %23(i32 noundef %22) #15, !dbg !2018
  ret void, !dbg !2019
}

; Function Attrs: noreturn optsize
declare dso_local void @__assert_func(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize
define dso_local i32 @halRegGPInterrupt(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6, void (i32)* noundef %7) local_unnamed_addr #0 !dbg !2020 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2024, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i8 %1, metadata !2025, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i8 %2, metadata !2026, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i8 %3, metadata !2027, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i8 %4, metadata !2028, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i8 %5, metadata !2029, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i8 %6, metadata !2030, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata void (i32)* %7, metadata !2031, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i32 255, metadata !2033, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i32 255, metadata !2034, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i32 0, metadata !2036, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i32 0, metadata !2037, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i32 0, metadata !2032, metadata !DIExpression()), !dbg !2040
  %9 = load i32, i32* @hal_eint_count_max, align 4
  call void @llvm.dbg.value(metadata i32 0, metadata !2032, metadata !DIExpression()), !dbg !2040
  %10 = icmp eq i32 %9, 0, !dbg !2041
  br i1 %10, label %30, label %11, !dbg !2044

11:                                               ; preds = %8
  %12 = add i32 %9, -1
  call void @llvm.dbg.value(metadata i32 0, metadata !2032, metadata !DIExpression()), !dbg !2040
  %13 = load i32, i32* getelementptr inbounds ([23 x %struct.hal_eint_gpio_map_t], [23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table, i32 0, i32 0, i32 1), align 4, !dbg !2045
  %14 = icmp eq i32 %13, %0, !dbg !2048
  br i1 %14, label %15, label %21, !dbg !2049

15:                                               ; preds = %25, %11
  %16 = phi i32 [ 0, %11 ], [ %26, %25 ]
  %17 = getelementptr inbounds [0 x %struct.hal_eint_gpio_map_t], [0 x %struct.hal_eint_gpio_map_t]* bitcast ([23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table to [0 x %struct.hal_eint_gpio_map_t]*), i32 0, i32 %16, i32 2, !dbg !2050
  %18 = load i32, i32* %17, align 4, !dbg !2050
  call void @llvm.dbg.value(metadata i32 %18, metadata !2033, metadata !DIExpression()), !dbg !2040
  %19 = getelementptr inbounds [0 x %struct.hal_eint_gpio_map_t], [0 x %struct.hal_eint_gpio_map_t]* bitcast ([23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table to [0 x %struct.hal_eint_gpio_map_t]*), i32 0, i32 %16, i32 3, !dbg !2052
  %20 = load i32, i32* %19, align 4, !dbg !2052
  call void @llvm.dbg.value(metadata i32 %20, metadata !2034, metadata !DIExpression()), !dbg !2040
  br label %30, !dbg !2053

21:                                               ; preds = %11, %25
  %22 = phi i32 [ %26, %25 ], [ 0, %11 ]
  call void @llvm.dbg.value(metadata i32 %22, metadata !2032, metadata !DIExpression()), !dbg !2040
  %23 = icmp eq i32 %12, %22, !dbg !2054
  br i1 %23, label %24, label %25, !dbg !2056

24:                                               ; preds = %21
  tail call void (i8*, i32, i8*, ...) @log_hal_info_internal(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.halRegGPInterrupt, i32 0, i32 0), i32 noundef 612, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0), i32 noundef %0) #15, !dbg !2057
  br label %60, !dbg !2059

25:                                               ; preds = %21
  %26 = add nuw i32 %22, 1, !dbg !2060
  call void @llvm.dbg.value(metadata i32 %26, metadata !2032, metadata !DIExpression()), !dbg !2040
  %27 = getelementptr inbounds [0 x %struct.hal_eint_gpio_map_t], [0 x %struct.hal_eint_gpio_map_t]* bitcast ([23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table to [0 x %struct.hal_eint_gpio_map_t]*), i32 0, i32 %26, i32 1, !dbg !2045
  %28 = load i32, i32* %27, align 4, !dbg !2045
  %29 = icmp eq i32 %28, %0, !dbg !2048
  br i1 %29, label %15, label %21, !dbg !2049, !llvm.loop !2061

30:                                               ; preds = %8, %15
  %31 = phi i32 [ %20, %15 ], [ 255, %8 ], !dbg !2040
  %32 = phi i32 [ %18, %15 ], [ 255, %8 ], !dbg !2040
  call void @llvm.dbg.value(metadata i32 %32, metadata !2033, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i32 %31, metadata !2034, metadata !DIExpression()), !dbg !2040
  tail call fastcc void @NVIC_DisableIRQ(i32 noundef %32) #16, !dbg !2063
  tail call void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext 3) #15, !dbg !2064
  %33 = lshr i32 %32, 5, !dbg !2065
  call void @llvm.dbg.value(metadata i32 %33, metadata !2038, metadata !DIExpression()), !dbg !2040
  %34 = and i32 %32, 31, !dbg !2066
  call void @llvm.dbg.value(metadata i32 %34, metadata !2039, metadata !DIExpression()), !dbg !2040
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* inttoptr (i32 -2097102336 to [4 x i32]*), i32 0, i32 %33, !dbg !2067
  %36 = load volatile i32, i32* %35, align 4, !dbg !2067
  call void @llvm.dbg.value(metadata i32 %36, metadata !2037, metadata !DIExpression()), !dbg !2040
  %37 = shl nuw i32 1, %34, !dbg !2068
  %38 = xor i32 %37, -1, !dbg !2069
  %39 = and i32 %36, %38, !dbg !2070
  call void @llvm.dbg.value(metadata i32 %39, metadata !2037, metadata !DIExpression()), !dbg !2040
  %40 = zext i8 %1 to i32, !dbg !2071
  %41 = shl i32 %40, %34, !dbg !2072
  %42 = or i32 %39, %41, !dbg !2073
  call void @llvm.dbg.value(metadata i32 %42, metadata !2037, metadata !DIExpression()), !dbg !2040
  store volatile i32 %42, i32* %35, align 4, !dbg !2074
  %43 = add i32 %32, -30, !dbg !2075
  call void @llvm.dbg.value(metadata i32 %43, metadata !2035, metadata !DIExpression()), !dbg !2040
  %44 = zext i8 %6 to i32, !dbg !2076
  %45 = zext i8 %5 to i32, !dbg !2077
  %46 = shl nuw nsw i32 %45, 4, !dbg !2078
  %47 = zext i8 %4 to i32, !dbg !2079
  %48 = shl nuw nsw i32 %47, 7, !dbg !2080
  %49 = zext i8 %3 to i32, !dbg !2081
  %50 = shl nuw nsw i32 %49, 8, !dbg !2082
  %51 = zext i8 %2 to i32, !dbg !2083
  %52 = shl nuw nsw i32 %51, 9, !dbg !2084
  %53 = add nuw nsw i32 %50, %52, !dbg !2085
  %54 = add nuw nsw i32 %53, %48, !dbg !2086
  %55 = add nuw nsw i32 %54, %44, !dbg !2087
  %56 = add nuw nsw i32 %55, %46, !dbg !2088
  call void @llvm.dbg.value(metadata i32 %56, metadata !2036, metadata !DIExpression()), !dbg !2040
  %57 = getelementptr inbounds [66 x i32], [66 x i32]* inttoptr (i32 -2097102848 to [66 x i32]*), i32 0, i32 %43, !dbg !2089
  store volatile i32 %56, i32* %57, align 4, !dbg !2090
  %58 = tail call i32 @hal_gpt_delay_us(i32 noundef 100) #15, !dbg !2091
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %32) #16, !dbg !2092
  store void (i32)* %7, void (i32)** @LISR.0, align 4, !dbg !2093
  %59 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef %32, void (i32)* noundef nonnull @drvGPIO_IDX_EINT_WIC_LISR) #15, !dbg !2094
  tail call fastcc void @NVIC_SetPriority(i32 noundef %32, i32 noundef %31) #16, !dbg !2095
  br label %60, !dbg !2096

60:                                               ; preds = %30, %24
  %61 = phi i32 [ 0, %30 ], [ -1, %24 ], !dbg !2040
  ret i32 %61, !dbg !2097
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_DisableIRQ(i32 noundef %0) unnamed_addr #3 !dbg !2098 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2102, metadata !DIExpression()), !dbg !2103
  %2 = and i32 %0, 31, !dbg !2104
  %3 = shl nuw i32 1, %2, !dbg !2105
  %4 = lshr i32 %0, 5, !dbg !2106
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813184 to [8 x i32]*), i32 0, i32 %4, !dbg !2107
  store volatile i32 %3, i32* %5, align 4, !dbg !2108
  ret void, !dbg !2109
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) unnamed_addr #3 !dbg !2110 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2112, metadata !DIExpression()), !dbg !2113
  %2 = and i32 %0, 31, !dbg !2114
  %3 = shl nuw i32 1, %2, !dbg !2115
  %4 = lshr i32 %0, 5, !dbg !2116
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812928 to [8 x i32]*), i32 0, i32 %4, !dbg !2117
  store volatile i32 %3, i32* %5, align 4, !dbg !2118
  ret void, !dbg !2119
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) unnamed_addr #3 !dbg !2120 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2124, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i32 %1, metadata !2125, metadata !DIExpression()), !dbg !2126
  %3 = icmp slt i32 %0, 0, !dbg !2127
  %4 = trunc i32 %1 to i8, !dbg !2129
  %5 = shl i8 %4, 5, !dbg !2129
  %6 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !2130
  %7 = and i32 %0, 15, !dbg !2130
  %8 = add nsw i32 %7, -4, !dbg !2130
  %9 = getelementptr inbounds [12 x i8], [12 x i8]* inttoptr (i32 -536810216 to [12 x i8]*), i32 0, i32 %8, !dbg !2130
  %10 = select i1 %3, i8* %9, i8* %6, !dbg !2130
  store volatile i8 %5, i8* %10, align 1, !dbg !2129
  ret void, !dbg !2131
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @halRegGPInterrupt_set_triggermode(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 !dbg !2132 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2136, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i8 %1, metadata !2137, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i8 %2, metadata !2138, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i8 %3, metadata !2139, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i32 255, metadata !2141, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i32 0, metadata !2140, metadata !DIExpression()), !dbg !2147
  %5 = load i32, i32* @hal_eint_count_max, align 4
  call void @llvm.dbg.value(metadata i32 0, metadata !2140, metadata !DIExpression()), !dbg !2147
  %6 = icmp eq i32 %5, 0, !dbg !2148
  br i1 %6, label %24, label %7, !dbg !2151

7:                                                ; preds = %4
  %8 = add i32 %5, -1
  call void @llvm.dbg.value(metadata i32 0, metadata !2140, metadata !DIExpression()), !dbg !2147
  %9 = load i32, i32* getelementptr inbounds ([23 x %struct.hal_eint_gpio_map_t], [23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table, i32 0, i32 0, i32 1), align 4, !dbg !2152
  %10 = icmp eq i32 %9, %0, !dbg !2155
  br i1 %10, label %11, label %15, !dbg !2156

11:                                               ; preds = %19, %7
  %12 = phi i32 [ 0, %7 ], [ %20, %19 ]
  %13 = getelementptr inbounds [0 x %struct.hal_eint_gpio_map_t], [0 x %struct.hal_eint_gpio_map_t]* bitcast ([23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table to [0 x %struct.hal_eint_gpio_map_t]*), i32 0, i32 %12, i32 2, !dbg !2157
  %14 = load i32, i32* %13, align 4, !dbg !2157
  call void @llvm.dbg.value(metadata i32 %14, metadata !2141, metadata !DIExpression()), !dbg !2147
  br label %24, !dbg !2159

15:                                               ; preds = %7, %19
  %16 = phi i32 [ %20, %19 ], [ 0, %7 ]
  call void @llvm.dbg.value(metadata i32 %16, metadata !2140, metadata !DIExpression()), !dbg !2147
  %17 = icmp eq i32 %8, %16, !dbg !2160
  br i1 %17, label %18, label %19, !dbg !2162

18:                                               ; preds = %15
  tail call void (i8*, i32, i8*, ...) @log_hal_info_internal(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__FUNCTION__.halRegGPInterrupt_set_triggermode, i32 0, i32 0), i32 noundef 668, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i32 0, i32 0), i32 noundef %0) #15, !dbg !2163
  br label %44, !dbg !2165

19:                                               ; preds = %15
  %20 = add nuw i32 %16, 1, !dbg !2166
  call void @llvm.dbg.value(metadata i32 %20, metadata !2140, metadata !DIExpression()), !dbg !2147
  %21 = getelementptr inbounds [0 x %struct.hal_eint_gpio_map_t], [0 x %struct.hal_eint_gpio_map_t]* bitcast ([23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table to [0 x %struct.hal_eint_gpio_map_t]*), i32 0, i32 %20, i32 1, !dbg !2152
  %22 = load i32, i32* %21, align 4, !dbg !2152
  %23 = icmp eq i32 %22, %0, !dbg !2155
  br i1 %23, label %11, label %15, !dbg !2156, !llvm.loop !2167

24:                                               ; preds = %4, %11
  %25 = phi i32 [ %14, %11 ], [ 255, %4 ], !dbg !2147
  call void @llvm.dbg.value(metadata i32 %25, metadata !2141, metadata !DIExpression()), !dbg !2147
  tail call fastcc void @NVIC_DisableIRQ(i32 noundef %25) #16, !dbg !2169
  %26 = lshr i32 %25, 5, !dbg !2170
  call void @llvm.dbg.value(metadata i32 %26, metadata !2145, metadata !DIExpression()), !dbg !2147
  %27 = and i32 %25, 31, !dbg !2171
  call void @llvm.dbg.value(metadata i32 %27, metadata !2146, metadata !DIExpression()), !dbg !2147
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* inttoptr (i32 -2097102336 to [4 x i32]*), i32 0, i32 %26, !dbg !2172
  %29 = load volatile i32, i32* %28, align 4, !dbg !2172
  call void @llvm.dbg.value(metadata i32 %29, metadata !2144, metadata !DIExpression()), !dbg !2147
  %30 = shl nuw i32 1, %27, !dbg !2173
  %31 = xor i32 %30, -1, !dbg !2174
  %32 = and i32 %29, %31, !dbg !2175
  call void @llvm.dbg.value(metadata i32 %32, metadata !2144, metadata !DIExpression()), !dbg !2147
  %33 = zext i8 %1 to i32, !dbg !2176
  %34 = shl i32 %33, %27, !dbg !2177
  %35 = or i32 %32, %34, !dbg !2178
  call void @llvm.dbg.value(metadata i32 %35, metadata !2144, metadata !DIExpression()), !dbg !2147
  store volatile i32 %35, i32* %28, align 4, !dbg !2179
  %36 = zext i8 %3 to i32, !dbg !2180
  %37 = shl nuw nsw i32 %36, 7, !dbg !2181
  %38 = zext i8 %2 to i32, !dbg !2182
  %39 = shl nuw nsw i32 %38, 8, !dbg !2183
  %40 = add nuw nsw i32 %37, %39, !dbg !2184
  call void @llvm.dbg.value(metadata i32 %40, metadata !2143, metadata !DIExpression()), !dbg !2147
  %41 = add i32 %25, -30, !dbg !2185
  call void @llvm.dbg.value(metadata i32 %41, metadata !2142, metadata !DIExpression()), !dbg !2147
  %42 = getelementptr inbounds [66 x i32], [66 x i32]* inttoptr (i32 -2097102848 to [66 x i32]*), i32 0, i32 %41, !dbg !2186
  store volatile i32 %40, i32* %42, align 4, !dbg !2187
  tail call fastcc void @NVIC_EnableIRQ(i32 noundef %25) #16, !dbg !2188
  %43 = tail call i32 @hal_gpt_delay_us(i32 noundef 100) #15, !dbg !2189
  br label %44, !dbg !2190

44:                                               ; preds = %24, %18
  %45 = phi i32 [ 0, %24 ], [ -1, %18 ], !dbg !2147
  ret i32 %45, !dbg !2191
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_EnableIRQ(i32 noundef %0) unnamed_addr #3 !dbg !2192 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2194, metadata !DIExpression()), !dbg !2195
  %2 = and i32 %0, 31, !dbg !2196
  %3 = shl nuw i32 1, %2, !dbg !2197
  %4 = lshr i32 %0, 5, !dbg !2198
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813312 to [8 x i32]*), i32 0, i32 %4, !dbg !2199
  store volatile i32 %3, i32* %5, align 4, !dbg !2200
  ret void, !dbg !2201
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @halRegGPInterrupt_set_debounce(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 !dbg !2202 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2206, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata i8 %1, metadata !2207, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata i8 %2, metadata !2208, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata i8 %3, metadata !2209, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata i32 255, metadata !2211, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata i32 0, metadata !2210, metadata !DIExpression()), !dbg !2214
  %5 = load i32, i32* @hal_eint_count_max, align 4
  call void @llvm.dbg.value(metadata i32 0, metadata !2210, metadata !DIExpression()), !dbg !2214
  %6 = icmp eq i32 %5, 0, !dbg !2215
  br i1 %6, label %24, label %7, !dbg !2218

7:                                                ; preds = %4
  %8 = add i32 %5, -1
  call void @llvm.dbg.value(metadata i32 0, metadata !2210, metadata !DIExpression()), !dbg !2214
  %9 = load i32, i32* getelementptr inbounds ([23 x %struct.hal_eint_gpio_map_t], [23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table, i32 0, i32 0, i32 1), align 4, !dbg !2219
  %10 = icmp eq i32 %9, %0, !dbg !2222
  br i1 %10, label %11, label %15, !dbg !2223

11:                                               ; preds = %19, %7
  %12 = phi i32 [ 0, %7 ], [ %20, %19 ]
  %13 = getelementptr inbounds [0 x %struct.hal_eint_gpio_map_t], [0 x %struct.hal_eint_gpio_map_t]* bitcast ([23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table to [0 x %struct.hal_eint_gpio_map_t]*), i32 0, i32 %12, i32 2, !dbg !2224
  %14 = load i32, i32* %13, align 4, !dbg !2224
  call void @llvm.dbg.value(metadata i32 %14, metadata !2211, metadata !DIExpression()), !dbg !2214
  br label %24, !dbg !2226

15:                                               ; preds = %7, %19
  %16 = phi i32 [ %20, %19 ], [ 0, %7 ]
  call void @llvm.dbg.value(metadata i32 %16, metadata !2210, metadata !DIExpression()), !dbg !2214
  %17 = icmp eq i32 %8, %16, !dbg !2227
  br i1 %17, label %18, label %19, !dbg !2229

18:                                               ; preds = %15
  tail call void (i8*, i32, i8*, ...) @log_hal_info_internal(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @__FUNCTION__.halRegGPInterrupt_set_debounce, i32 0, i32 0), i32 noundef 708, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i32 0, i32 0), i32 noundef %0) #15, !dbg !2230
  br label %36, !dbg !2232

19:                                               ; preds = %15
  %20 = add nuw i32 %16, 1, !dbg !2233
  call void @llvm.dbg.value(metadata i32 %20, metadata !2210, metadata !DIExpression()), !dbg !2214
  %21 = getelementptr inbounds [0 x %struct.hal_eint_gpio_map_t], [0 x %struct.hal_eint_gpio_map_t]* bitcast ([23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table to [0 x %struct.hal_eint_gpio_map_t]*), i32 0, i32 %20, i32 1, !dbg !2219
  %22 = load i32, i32* %21, align 4, !dbg !2219
  %23 = icmp eq i32 %22, %0, !dbg !2222
  br i1 %23, label %11, label %15, !dbg !2223, !llvm.loop !2234

24:                                               ; preds = %4, %11
  %25 = phi i32 [ %14, %11 ], [ 255, %4 ], !dbg !2214
  call void @llvm.dbg.value(metadata i32 %25, metadata !2211, metadata !DIExpression()), !dbg !2214
  tail call fastcc void @NVIC_DisableIRQ(i32 noundef %25) #16, !dbg !2236
  %26 = zext i8 %3 to i32, !dbg !2237
  %27 = zext i8 %2 to i32, !dbg !2238
  %28 = shl nuw nsw i32 %27, 4, !dbg !2239
  %29 = zext i8 %1 to i32, !dbg !2240
  %30 = shl nuw nsw i32 %29, 9, !dbg !2241
  %31 = or i32 %30, %26, !dbg !2242
  %32 = add nuw nsw i32 %31, %28, !dbg !2243
  call void @llvm.dbg.value(metadata i32 %32, metadata !2213, metadata !DIExpression()), !dbg !2214
  %33 = add i32 %25, -30, !dbg !2244
  call void @llvm.dbg.value(metadata i32 %33, metadata !2212, metadata !DIExpression()), !dbg !2214
  %34 = getelementptr inbounds [66 x i32], [66 x i32]* inttoptr (i32 -2097102848 to [66 x i32]*), i32 0, i32 %33, !dbg !2245
  store volatile i32 %32, i32* %34, align 4, !dbg !2246
  tail call fastcc void @NVIC_EnableIRQ(i32 noundef %25) #16, !dbg !2247
  %35 = tail call i32 @hal_gpt_delay_us(i32 noundef 100) #15, !dbg !2248
  br label %36, !dbg !2249

36:                                               ; preds = %24, %18
  %37 = phi i32 [ 0, %24 ], [ -1, %18 ], !dbg !2214
  ret i32 %37, !dbg !2250
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @halRegGPInterrupt_mask(i32 noundef %0) local_unnamed_addr #0 !dbg !2251 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2253, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.value(metadata i32 255, metadata !2255, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.value(metadata i32 0, metadata !2254, metadata !DIExpression()), !dbg !2256
  %2 = load i32, i32* @hal_eint_count_max, align 4
  call void @llvm.dbg.value(metadata i32 0, metadata !2254, metadata !DIExpression()), !dbg !2256
  %3 = icmp eq i32 %2, 0, !dbg !2257
  br i1 %3, label %21, label %4, !dbg !2260

4:                                                ; preds = %1
  %5 = add i32 %2, -1
  call void @llvm.dbg.value(metadata i32 0, metadata !2254, metadata !DIExpression()), !dbg !2256
  %6 = load i32, i32* getelementptr inbounds ([23 x %struct.hal_eint_gpio_map_t], [23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table, i32 0, i32 0, i32 1), align 4, !dbg !2261
  %7 = icmp eq i32 %6, %0, !dbg !2264
  br i1 %7, label %8, label %12, !dbg !2265

8:                                                ; preds = %16, %4
  %9 = phi i32 [ 0, %4 ], [ %17, %16 ]
  %10 = getelementptr inbounds [0 x %struct.hal_eint_gpio_map_t], [0 x %struct.hal_eint_gpio_map_t]* bitcast ([23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table to [0 x %struct.hal_eint_gpio_map_t]*), i32 0, i32 %9, i32 2, !dbg !2266
  %11 = load i32, i32* %10, align 4, !dbg !2266
  call void @llvm.dbg.value(metadata i32 %11, metadata !2255, metadata !DIExpression()), !dbg !2256
  br label %21, !dbg !2268

12:                                               ; preds = %4, %16
  %13 = phi i32 [ %17, %16 ], [ 0, %4 ]
  call void @llvm.dbg.value(metadata i32 %13, metadata !2254, metadata !DIExpression()), !dbg !2256
  %14 = icmp eq i32 %5, %13, !dbg !2269
  br i1 %14, label %15, label %16, !dbg !2271

15:                                               ; preds = %12
  tail call void (i8*, i32, i8*, ...) @log_hal_info_internal(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.halRegGPInterrupt_mask, i32 0, i32 0), i32 noundef 737, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i32 0, i32 0), i32 noundef %0) #15, !dbg !2272
  br label %23, !dbg !2274

16:                                               ; preds = %12
  %17 = add nuw i32 %13, 1, !dbg !2275
  call void @llvm.dbg.value(metadata i32 %17, metadata !2254, metadata !DIExpression()), !dbg !2256
  %18 = getelementptr inbounds [0 x %struct.hal_eint_gpio_map_t], [0 x %struct.hal_eint_gpio_map_t]* bitcast ([23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table to [0 x %struct.hal_eint_gpio_map_t]*), i32 0, i32 %17, i32 1, !dbg !2261
  %19 = load i32, i32* %18, align 4, !dbg !2261
  %20 = icmp eq i32 %19, %0, !dbg !2264
  br i1 %20, label %8, label %12, !dbg !2265, !llvm.loop !2276

21:                                               ; preds = %1, %8
  %22 = phi i32 [ %11, %8 ], [ 255, %1 ], !dbg !2256
  call void @llvm.dbg.value(metadata i32 %22, metadata !2255, metadata !DIExpression()), !dbg !2256
  tail call fastcc void @NVIC_DisableIRQ(i32 noundef %22) #16, !dbg !2278
  br label %23, !dbg !2279

23:                                               ; preds = %21, %15
  %24 = phi i32 [ 0, %21 ], [ -1, %15 ], !dbg !2256
  ret i32 %24, !dbg !2280
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @halRegGPInterrupt_unmask(i32 noundef %0) local_unnamed_addr #0 !dbg !2281 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2283, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i32 255, metadata !2285, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i32 0, metadata !2284, metadata !DIExpression()), !dbg !2286
  %2 = load i32, i32* @hal_eint_count_max, align 4
  call void @llvm.dbg.value(metadata i32 0, metadata !2284, metadata !DIExpression()), !dbg !2286
  %3 = icmp eq i32 %2, 0, !dbg !2287
  br i1 %3, label %21, label %4, !dbg !2290

4:                                                ; preds = %1
  %5 = add i32 %2, -1
  call void @llvm.dbg.value(metadata i32 0, metadata !2284, metadata !DIExpression()), !dbg !2286
  %6 = load i32, i32* getelementptr inbounds ([23 x %struct.hal_eint_gpio_map_t], [23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table, i32 0, i32 0, i32 1), align 4, !dbg !2291
  %7 = icmp eq i32 %6, %0, !dbg !2294
  br i1 %7, label %8, label %12, !dbg !2295

8:                                                ; preds = %16, %4
  %9 = phi i32 [ 0, %4 ], [ %17, %16 ]
  %10 = getelementptr inbounds [0 x %struct.hal_eint_gpio_map_t], [0 x %struct.hal_eint_gpio_map_t]* bitcast ([23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table to [0 x %struct.hal_eint_gpio_map_t]*), i32 0, i32 %9, i32 2, !dbg !2296
  %11 = load i32, i32* %10, align 4, !dbg !2296
  call void @llvm.dbg.value(metadata i32 %11, metadata !2285, metadata !DIExpression()), !dbg !2286
  br label %21, !dbg !2298

12:                                               ; preds = %4, %16
  %13 = phi i32 [ %17, %16 ], [ 0, %4 ]
  call void @llvm.dbg.value(metadata i32 %13, metadata !2284, metadata !DIExpression()), !dbg !2286
  %14 = icmp eq i32 %5, %13, !dbg !2299
  br i1 %14, label %15, label %16, !dbg !2301

15:                                               ; preds = %12
  tail call void (i8*, i32, i8*, ...) @log_hal_info_internal(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.halRegGPInterrupt_unmask, i32 0, i32 0), i32 noundef 758, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i32 0, i32 0), i32 noundef %0) #15, !dbg !2302
  br label %23, !dbg !2304

16:                                               ; preds = %12
  %17 = add nuw i32 %13, 1, !dbg !2305
  call void @llvm.dbg.value(metadata i32 %17, metadata !2284, metadata !DIExpression()), !dbg !2286
  %18 = getelementptr inbounds [0 x %struct.hal_eint_gpio_map_t], [0 x %struct.hal_eint_gpio_map_t]* bitcast ([23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table to [0 x %struct.hal_eint_gpio_map_t]*), i32 0, i32 %17, i32 1, !dbg !2291
  %19 = load i32, i32* %18, align 4, !dbg !2291
  %20 = icmp eq i32 %19, %0, !dbg !2294
  br i1 %20, label %8, label %12, !dbg !2295, !llvm.loop !2306

21:                                               ; preds = %1, %8
  %22 = phi i32 [ %11, %8 ], [ 255, %1 ], !dbg !2286
  call void @llvm.dbg.value(metadata i32 %22, metadata !2285, metadata !DIExpression()), !dbg !2286
  tail call fastcc void @NVIC_EnableIRQ(i32 noundef %22) #16, !dbg !2308
  br label %23, !dbg !2309

23:                                               ; preds = %21, %15
  %24 = phi i32 [ 0, %21 ], [ -1, %15 ], !dbg !2286
  ret i32 %24, !dbg !2310
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @halRegGP_set_software_trigger(i32 noundef %0) local_unnamed_addr #0 !dbg !2311 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2313, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i32 255, metadata !2315, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i32 0, metadata !2314, metadata !DIExpression()), !dbg !2316
  %2 = load i32, i32* @hal_eint_count_max, align 4
  call void @llvm.dbg.value(metadata i32 0, metadata !2314, metadata !DIExpression()), !dbg !2316
  %3 = icmp eq i32 %2, 0, !dbg !2317
  br i1 %3, label %21, label %4, !dbg !2320

4:                                                ; preds = %1
  %5 = add i32 %2, -1
  call void @llvm.dbg.value(metadata i32 0, metadata !2314, metadata !DIExpression()), !dbg !2316
  %6 = load i32, i32* getelementptr inbounds ([23 x %struct.hal_eint_gpio_map_t], [23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table, i32 0, i32 0, i32 1), align 4, !dbg !2321
  %7 = icmp eq i32 %6, %0, !dbg !2324
  br i1 %7, label %8, label %12, !dbg !2325

8:                                                ; preds = %16, %4
  %9 = phi i32 [ 0, %4 ], [ %17, %16 ]
  %10 = getelementptr inbounds [0 x %struct.hal_eint_gpio_map_t], [0 x %struct.hal_eint_gpio_map_t]* bitcast ([23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table to [0 x %struct.hal_eint_gpio_map_t]*), i32 0, i32 %9, i32 2, !dbg !2326
  %11 = load i32, i32* %10, align 4, !dbg !2326
  call void @llvm.dbg.value(metadata i32 %11, metadata !2315, metadata !DIExpression()), !dbg !2316
  br label %21, !dbg !2328

12:                                               ; preds = %4, %16
  %13 = phi i32 [ %17, %16 ], [ 0, %4 ]
  call void @llvm.dbg.value(metadata i32 %13, metadata !2314, metadata !DIExpression()), !dbg !2316
  %14 = icmp eq i32 %5, %13, !dbg !2329
  br i1 %14, label %15, label %16, !dbg !2331

15:                                               ; preds = %12
  tail call void (i8*, i32, i8*, ...) @log_hal_info_internal(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__FUNCTION__.halRegGP_set_software_trigger, i32 0, i32 0), i32 noundef 785, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i32 0, i32 0), i32 noundef %0) #15, !dbg !2332
  br label %23, !dbg !2334

16:                                               ; preds = %12
  %17 = add nuw i32 %13, 1, !dbg !2335
  call void @llvm.dbg.value(metadata i32 %17, metadata !2314, metadata !DIExpression()), !dbg !2316
  %18 = getelementptr inbounds [0 x %struct.hal_eint_gpio_map_t], [0 x %struct.hal_eint_gpio_map_t]* bitcast ([23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table to [0 x %struct.hal_eint_gpio_map_t]*), i32 0, i32 %17, i32 1, !dbg !2321
  %19 = load i32, i32* %18, align 4, !dbg !2321
  %20 = icmp eq i32 %19, %0, !dbg !2324
  br i1 %20, label %8, label %12, !dbg !2325, !llvm.loop !2336

21:                                               ; preds = %1, %8
  %22 = phi i32 [ %11, %8 ], [ 255, %1 ], !dbg !2316
  call void @llvm.dbg.value(metadata i32 %22, metadata !2315, metadata !DIExpression()), !dbg !2316
  tail call fastcc void @software_trigger_irq(i32 noundef %22) #16, !dbg !2338
  br label %23, !dbg !2339

23:                                               ; preds = %21, %15
  %24 = phi i32 [ 0, %21 ], [ -1, %15 ], !dbg !2316
  ret i32 %24, !dbg !2340
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @software_trigger_irq(i32 noundef %0) unnamed_addr #3 !dbg !2341 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2345, metadata !DIExpression()), !dbg !2346
  %2 = and i32 %0, 511, !dbg !2347
  store volatile i32 %2, i32* inttoptr (i32 -536809728 to i32*), align 256, !dbg !2348
  ret void, !dbg !2349
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @halRegGP_clear_software_trigger(i32 noundef %0) local_unnamed_addr #0 !dbg !2350 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2352, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i32 255, metadata !2354, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i32 0, metadata !2353, metadata !DIExpression()), !dbg !2355
  %2 = load i32, i32* @hal_eint_count_max, align 4
  call void @llvm.dbg.value(metadata i32 0, metadata !2353, metadata !DIExpression()), !dbg !2355
  %3 = icmp eq i32 %2, 0, !dbg !2356
  br i1 %3, label %21, label %4, !dbg !2359

4:                                                ; preds = %1
  %5 = add i32 %2, -1
  call void @llvm.dbg.value(metadata i32 0, metadata !2353, metadata !DIExpression()), !dbg !2355
  %6 = load i32, i32* getelementptr inbounds ([23 x %struct.hal_eint_gpio_map_t], [23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table, i32 0, i32 0, i32 1), align 4, !dbg !2360
  %7 = icmp eq i32 %6, %0, !dbg !2363
  br i1 %7, label %8, label %12, !dbg !2364

8:                                                ; preds = %16, %4
  %9 = phi i32 [ 0, %4 ], [ %17, %16 ]
  %10 = getelementptr inbounds [0 x %struct.hal_eint_gpio_map_t], [0 x %struct.hal_eint_gpio_map_t]* bitcast ([23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table to [0 x %struct.hal_eint_gpio_map_t]*), i32 0, i32 %9, i32 2, !dbg !2365
  %11 = load i32, i32* %10, align 4, !dbg !2365
  call void @llvm.dbg.value(metadata i32 %11, metadata !2354, metadata !DIExpression()), !dbg !2355
  br label %21, !dbg !2367

12:                                               ; preds = %4, %16
  %13 = phi i32 [ %17, %16 ], [ 0, %4 ]
  call void @llvm.dbg.value(metadata i32 %13, metadata !2353, metadata !DIExpression()), !dbg !2355
  %14 = icmp eq i32 %5, %13, !dbg !2368
  br i1 %14, label %15, label %16, !dbg !2370

15:                                               ; preds = %12
  tail call void (i8*, i32, i8*, ...) @log_hal_info_internal(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__FUNCTION__.halRegGP_clear_software_trigger, i32 0, i32 0), i32 noundef 808, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i32 0, i32 0), i32 noundef %0) #15, !dbg !2371
  br label %23, !dbg !2373

16:                                               ; preds = %12
  %17 = add nuw i32 %13, 1, !dbg !2374
  call void @llvm.dbg.value(metadata i32 %17, metadata !2353, metadata !DIExpression()), !dbg !2355
  %18 = getelementptr inbounds [0 x %struct.hal_eint_gpio_map_t], [0 x %struct.hal_eint_gpio_map_t]* bitcast ([23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table to [0 x %struct.hal_eint_gpio_map_t]*), i32 0, i32 %17, i32 1, !dbg !2360
  %19 = load i32, i32* %18, align 4, !dbg !2360
  %20 = icmp eq i32 %19, %0, !dbg !2363
  br i1 %20, label %8, label %12, !dbg !2364, !llvm.loop !2375

21:                                               ; preds = %1, %8
  %22 = phi i32 [ %11, %8 ], [ 255, %1 ], !dbg !2355
  call void @llvm.dbg.value(metadata i32 %22, metadata !2354, metadata !DIExpression()), !dbg !2355
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %22) #16, !dbg !2377
  br label %23, !dbg !2378

23:                                               ; preds = %21, %15
  %24 = phi i32 [ 0, %21 ], [ -1, %15 ], !dbg !2355
  ret i32 %24, !dbg !2379
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !2380 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2385, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 %1, metadata !2386, metadata !DIExpression()), !dbg !2388
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
  ], !dbg !2389

3:                                                ; preds = %2
  %4 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2390
  call void @llvm.dbg.value(metadata i32 %4, metadata !2387, metadata !DIExpression()), !dbg !2388
  %5 = and i32 %4, -16, !dbg !2392
  call void @llvm.dbg.value(metadata i32 %5, metadata !2387, metadata !DIExpression()), !dbg !2388
  %6 = zext i8 %1 to i32, !dbg !2393
  %7 = or i32 %5, %6, !dbg !2394
  store volatile i32 %7, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2395
  br label %187, !dbg !2396

8:                                                ; preds = %2
  %9 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2397
  call void @llvm.dbg.value(metadata i32 %9, metadata !2387, metadata !DIExpression()), !dbg !2388
  %10 = and i32 %9, -241, !dbg !2398
  call void @llvm.dbg.value(metadata i32 %10, metadata !2387, metadata !DIExpression()), !dbg !2388
  %11 = zext i8 %1 to i32, !dbg !2399
  %12 = shl nuw nsw i32 %11, 4, !dbg !2400
  %13 = or i32 %10, %12, !dbg !2401
  store volatile i32 %13, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2402
  br label %187, !dbg !2403

14:                                               ; preds = %2
  %15 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2404
  call void @llvm.dbg.value(metadata i32 %15, metadata !2387, metadata !DIExpression()), !dbg !2388
  %16 = and i32 %15, -3841, !dbg !2405
  call void @llvm.dbg.value(metadata i32 %16, metadata !2387, metadata !DIExpression()), !dbg !2388
  %17 = zext i8 %1 to i32, !dbg !2406
  %18 = shl nuw nsw i32 %17, 8, !dbg !2407
  %19 = or i32 %16, %18, !dbg !2408
  store volatile i32 %19, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2409
  br label %187, !dbg !2410

20:                                               ; preds = %2
  %21 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2411
  call void @llvm.dbg.value(metadata i32 %21, metadata !2387, metadata !DIExpression()), !dbg !2388
  %22 = and i32 %21, -61441, !dbg !2412
  call void @llvm.dbg.value(metadata i32 %22, metadata !2387, metadata !DIExpression()), !dbg !2388
  %23 = zext i8 %1 to i32, !dbg !2413
  %24 = shl nuw nsw i32 %23, 12, !dbg !2414
  %25 = or i32 %22, %24, !dbg !2415
  store volatile i32 %25, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2416
  br label %187, !dbg !2417

26:                                               ; preds = %2
  %27 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2418
  call void @llvm.dbg.value(metadata i32 %27, metadata !2387, metadata !DIExpression()), !dbg !2388
  %28 = and i32 %27, -983041, !dbg !2419
  call void @llvm.dbg.value(metadata i32 %28, metadata !2387, metadata !DIExpression()), !dbg !2388
  %29 = zext i8 %1 to i32, !dbg !2420
  %30 = shl nuw nsw i32 %29, 16, !dbg !2421
  %31 = or i32 %28, %30, !dbg !2422
  store volatile i32 %31, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2423
  br label %187, !dbg !2424

32:                                               ; preds = %2
  %33 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2425
  call void @llvm.dbg.value(metadata i32 %33, metadata !2387, metadata !DIExpression()), !dbg !2388
  %34 = and i32 %33, -15728641, !dbg !2426
  call void @llvm.dbg.value(metadata i32 %34, metadata !2387, metadata !DIExpression()), !dbg !2388
  %35 = zext i8 %1 to i32, !dbg !2427
  %36 = shl nuw nsw i32 %35, 20, !dbg !2428
  %37 = or i32 %34, %36, !dbg !2429
  store volatile i32 %37, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2430
  br label %187, !dbg !2431

38:                                               ; preds = %2
  %39 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2432
  call void @llvm.dbg.value(metadata i32 %39, metadata !2387, metadata !DIExpression()), !dbg !2388
  %40 = and i32 %39, -251658241, !dbg !2433
  call void @llvm.dbg.value(metadata i32 %40, metadata !2387, metadata !DIExpression()), !dbg !2388
  %41 = zext i8 %1 to i32, !dbg !2434
  %42 = shl nuw i32 %41, 24, !dbg !2435
  %43 = or i32 %40, %42, !dbg !2436
  store volatile i32 %43, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2437
  br label %187, !dbg !2438

44:                                               ; preds = %2
  %45 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2439
  call void @llvm.dbg.value(metadata i32 %45, metadata !2387, metadata !DIExpression()), !dbg !2388
  %46 = and i32 %45, 268435455, !dbg !2440
  call void @llvm.dbg.value(metadata i32 %46, metadata !2387, metadata !DIExpression()), !dbg !2388
  %47 = zext i8 %1 to i32, !dbg !2441
  %48 = shl i32 %47, 28, !dbg !2442
  %49 = or i32 %46, %48, !dbg !2443
  store volatile i32 %49, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !2444
  br label %187, !dbg !2445

50:                                               ; preds = %2
  %51 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2446
  call void @llvm.dbg.value(metadata i32 %51, metadata !2387, metadata !DIExpression()), !dbg !2388
  %52 = and i32 %51, -16, !dbg !2447
  call void @llvm.dbg.value(metadata i32 %52, metadata !2387, metadata !DIExpression()), !dbg !2388
  %53 = zext i8 %1 to i32, !dbg !2448
  %54 = or i32 %52, %53, !dbg !2449
  store volatile i32 %54, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2450
  br label %187, !dbg !2451

55:                                               ; preds = %2
  %56 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2452
  call void @llvm.dbg.value(metadata i32 %56, metadata !2387, metadata !DIExpression()), !dbg !2388
  %57 = and i32 %56, -241, !dbg !2453
  call void @llvm.dbg.value(metadata i32 %57, metadata !2387, metadata !DIExpression()), !dbg !2388
  %58 = zext i8 %1 to i32, !dbg !2454
  %59 = shl nuw nsw i32 %58, 4, !dbg !2455
  %60 = or i32 %57, %59, !dbg !2456
  store volatile i32 %60, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2457
  br label %187, !dbg !2458

61:                                               ; preds = %2
  %62 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2459
  call void @llvm.dbg.value(metadata i32 %62, metadata !2387, metadata !DIExpression()), !dbg !2388
  %63 = and i32 %62, -3841, !dbg !2460
  call void @llvm.dbg.value(metadata i32 %63, metadata !2387, metadata !DIExpression()), !dbg !2388
  %64 = zext i8 %1 to i32, !dbg !2461
  %65 = shl nuw nsw i32 %64, 8, !dbg !2462
  %66 = or i32 %63, %65, !dbg !2463
  store volatile i32 %66, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2464
  br label %187, !dbg !2465

67:                                               ; preds = %2
  %68 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2466
  call void @llvm.dbg.value(metadata i32 %68, metadata !2387, metadata !DIExpression()), !dbg !2388
  %69 = and i32 %68, -61441, !dbg !2467
  call void @llvm.dbg.value(metadata i32 %69, metadata !2387, metadata !DIExpression()), !dbg !2388
  %70 = zext i8 %1 to i32, !dbg !2468
  %71 = shl nuw nsw i32 %70, 12, !dbg !2469
  %72 = or i32 %69, %71, !dbg !2470
  store volatile i32 %72, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2471
  switch i8 %1, label %187 [
    i8 5, label %73
    i8 4, label %73
    i8 2, label %73
  ], !dbg !2472

73:                                               ; preds = %67, %67, %67
  %74 = tail call i32 @halGPIO_ConfDirection(i32 noundef 27, i8 noundef zeroext 0) #15, !dbg !2474
  br label %187, !dbg !2476

75:                                               ; preds = %2
  %76 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2477
  call void @llvm.dbg.value(metadata i32 %76, metadata !2387, metadata !DIExpression()), !dbg !2388
  %77 = and i32 %76, -983041, !dbg !2478
  call void @llvm.dbg.value(metadata i32 %77, metadata !2387, metadata !DIExpression()), !dbg !2388
  %78 = zext i8 %1 to i32, !dbg !2479
  %79 = shl nuw nsw i32 %78, 16, !dbg !2480
  %80 = or i32 %77, %79, !dbg !2481
  store volatile i32 %80, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2482
  %81 = and i8 %1, -2, !dbg !2483
  %82 = icmp eq i8 %81, 4, !dbg !2483
  br i1 %82, label %83, label %187, !dbg !2483

83:                                               ; preds = %75
  %84 = tail call i32 @halGPIO_ConfDirection(i32 noundef 28, i8 noundef zeroext 0) #15, !dbg !2485
  br label %187, !dbg !2487

85:                                               ; preds = %2
  %86 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2488
  call void @llvm.dbg.value(metadata i32 %86, metadata !2387, metadata !DIExpression()), !dbg !2388
  %87 = and i32 %86, -15728641, !dbg !2489
  call void @llvm.dbg.value(metadata i32 %87, metadata !2387, metadata !DIExpression()), !dbg !2388
  %88 = zext i8 %1 to i32, !dbg !2490
  %89 = shl nuw nsw i32 %88, 20, !dbg !2491
  %90 = or i32 %87, %89, !dbg !2492
  store volatile i32 %90, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2493
  %91 = icmp eq i8 %1, 6, !dbg !2494
  br i1 %91, label %92, label %187, !dbg !2496

92:                                               ; preds = %85
  %93 = tail call i32 @halGPIO_ConfDirection(i32 noundef 29, i8 noundef zeroext 0) #15, !dbg !2497
  br label %187, !dbg !2499

94:                                               ; preds = %2
  %95 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2500
  call void @llvm.dbg.value(metadata i32 %95, metadata !2387, metadata !DIExpression()), !dbg !2388
  %96 = and i32 %95, -251658241, !dbg !2501
  call void @llvm.dbg.value(metadata i32 %96, metadata !2387, metadata !DIExpression()), !dbg !2388
  %97 = zext i8 %1 to i32, !dbg !2502
  %98 = shl nuw i32 %97, 24, !dbg !2503
  %99 = or i32 %96, %98, !dbg !2504
  store volatile i32 %99, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2505
  switch i8 %1, label %187 [
    i8 7, label %100
    i8 4, label %100
  ], !dbg !2506

100:                                              ; preds = %94, %94
  %101 = tail call i32 @halGPIO_ConfDirection(i32 noundef 30, i8 noundef zeroext 0) #15, !dbg !2508
  br label %187, !dbg !2510

102:                                              ; preds = %2
  %103 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2511
  call void @llvm.dbg.value(metadata i32 %103, metadata !2387, metadata !DIExpression()), !dbg !2388
  %104 = and i32 %103, 268435455, !dbg !2512
  call void @llvm.dbg.value(metadata i32 %104, metadata !2387, metadata !DIExpression()), !dbg !2388
  %105 = zext i8 %1 to i32, !dbg !2513
  %106 = shl i32 %105, 28, !dbg !2514
  %107 = or i32 %104, %106, !dbg !2515
  store volatile i32 %107, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !2516
  %108 = and i8 %1, -3, !dbg !2517
  %109 = icmp eq i8 %108, 4, !dbg !2517
  br i1 %109, label %110, label %187, !dbg !2517

110:                                              ; preds = %102
  %111 = tail call i32 @halGPIO_ConfDirection(i32 noundef 31, i8 noundef zeroext 0) #15, !dbg !2519
  br label %187, !dbg !2521

112:                                              ; preds = %2
  %113 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2522
  call void @llvm.dbg.value(metadata i32 %113, metadata !2387, metadata !DIExpression()), !dbg !2388
  %114 = and i32 %113, -16, !dbg !2523
  call void @llvm.dbg.value(metadata i32 %114, metadata !2387, metadata !DIExpression()), !dbg !2388
  %115 = zext i8 %1 to i32, !dbg !2524
  %116 = or i32 %114, %115, !dbg !2525
  store volatile i32 %116, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2526
  %117 = and i8 %1, -3, !dbg !2527
  %118 = icmp eq i8 %117, 4, !dbg !2527
  br i1 %118, label %119, label %187, !dbg !2527

119:                                              ; preds = %112
  %120 = tail call i32 @halGPIO_ConfDirection(i32 noundef 32, i8 noundef zeroext 0) #15, !dbg !2529
  br label %187, !dbg !2531

121:                                              ; preds = %2
  %122 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2532
  call void @llvm.dbg.value(metadata i32 %122, metadata !2387, metadata !DIExpression()), !dbg !2388
  %123 = and i32 %122, -241, !dbg !2533
  call void @llvm.dbg.value(metadata i32 %123, metadata !2387, metadata !DIExpression()), !dbg !2388
  %124 = zext i8 %1 to i32, !dbg !2534
  %125 = shl nuw nsw i32 %124, 4, !dbg !2535
  %126 = or i32 %123, %125, !dbg !2536
  store volatile i32 %126, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2537
  br label %187, !dbg !2538

127:                                              ; preds = %2
  %128 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2539
  call void @llvm.dbg.value(metadata i32 %128, metadata !2387, metadata !DIExpression()), !dbg !2388
  %129 = and i32 %128, -3841, !dbg !2540
  call void @llvm.dbg.value(metadata i32 %129, metadata !2387, metadata !DIExpression()), !dbg !2388
  %130 = zext i8 %1 to i32, !dbg !2541
  %131 = shl nuw nsw i32 %130, 8, !dbg !2542
  %132 = or i32 %129, %131, !dbg !2543
  store volatile i32 %132, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2544
  br label %187, !dbg !2545

133:                                              ; preds = %2
  %134 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2546
  call void @llvm.dbg.value(metadata i32 %134, metadata !2387, metadata !DIExpression()), !dbg !2388
  %135 = and i32 %134, -61441, !dbg !2547
  call void @llvm.dbg.value(metadata i32 %135, metadata !2387, metadata !DIExpression()), !dbg !2388
  %136 = zext i8 %1 to i32, !dbg !2548
  %137 = shl nuw nsw i32 %136, 12, !dbg !2549
  %138 = or i32 %135, %137, !dbg !2550
  store volatile i32 %138, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2551
  br label %187, !dbg !2552

139:                                              ; preds = %2
  %140 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2553
  call void @llvm.dbg.value(metadata i32 %140, metadata !2387, metadata !DIExpression()), !dbg !2388
  %141 = and i32 %140, -983041, !dbg !2554
  call void @llvm.dbg.value(metadata i32 %141, metadata !2387, metadata !DIExpression()), !dbg !2388
  %142 = zext i8 %1 to i32, !dbg !2555
  %143 = shl nuw nsw i32 %142, 16, !dbg !2556
  %144 = or i32 %141, %143, !dbg !2557
  store volatile i32 %144, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2558
  br label %187, !dbg !2559

145:                                              ; preds = %2
  %146 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2560
  call void @llvm.dbg.value(metadata i32 %146, metadata !2387, metadata !DIExpression()), !dbg !2388
  %147 = and i32 %146, -15728641, !dbg !2561
  call void @llvm.dbg.value(metadata i32 %147, metadata !2387, metadata !DIExpression()), !dbg !2388
  %148 = zext i8 %1 to i32, !dbg !2562
  %149 = shl nuw nsw i32 %148, 20, !dbg !2563
  %150 = or i32 %147, %149, !dbg !2564
  store volatile i32 %150, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2565
  br label %187, !dbg !2566

151:                                              ; preds = %2
  %152 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2567
  call void @llvm.dbg.value(metadata i32 %152, metadata !2387, metadata !DIExpression()), !dbg !2388
  %153 = and i32 %152, -251658241, !dbg !2568
  call void @llvm.dbg.value(metadata i32 %153, metadata !2387, metadata !DIExpression()), !dbg !2388
  %154 = zext i8 %1 to i32, !dbg !2569
  %155 = shl nuw i32 %154, 24, !dbg !2570
  %156 = or i32 %153, %155, !dbg !2571
  store volatile i32 %156, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2572
  br label %187, !dbg !2573

157:                                              ; preds = %2
  %158 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2574
  call void @llvm.dbg.value(metadata i32 %158, metadata !2387, metadata !DIExpression()), !dbg !2388
  %159 = and i32 %158, 268435455, !dbg !2575
  call void @llvm.dbg.value(metadata i32 %159, metadata !2387, metadata !DIExpression()), !dbg !2388
  %160 = zext i8 %1 to i32, !dbg !2576
  %161 = shl i32 %160, 28, !dbg !2577
  %162 = or i32 %159, %161, !dbg !2578
  store volatile i32 %162, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !2579
  br label %187, !dbg !2580

163:                                              ; preds = %2
  %164 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2581
  call void @llvm.dbg.value(metadata i32 %164, metadata !2387, metadata !DIExpression()), !dbg !2388
  %165 = and i32 %164, -241, !dbg !2582
  call void @llvm.dbg.value(metadata i32 %165, metadata !2387, metadata !DIExpression()), !dbg !2388
  %166 = zext i8 %1 to i32, !dbg !2583
  %167 = shl nuw nsw i32 %166, 4, !dbg !2584
  %168 = or i32 %165, %167, !dbg !2585
  store volatile i32 %168, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2586
  br label %187, !dbg !2587

169:                                              ; preds = %2
  %170 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2588
  call void @llvm.dbg.value(metadata i32 %170, metadata !2387, metadata !DIExpression()), !dbg !2388
  %171 = and i32 %170, -3841, !dbg !2589
  call void @llvm.dbg.value(metadata i32 %171, metadata !2387, metadata !DIExpression()), !dbg !2388
  %172 = zext i8 %1 to i32, !dbg !2590
  %173 = shl nuw nsw i32 %172, 8, !dbg !2591
  %174 = or i32 %171, %173, !dbg !2592
  store volatile i32 %174, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2593
  br label %187, !dbg !2594

175:                                              ; preds = %2
  %176 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2595
  call void @llvm.dbg.value(metadata i32 %176, metadata !2387, metadata !DIExpression()), !dbg !2388
  %177 = and i32 %176, -61441, !dbg !2596
  call void @llvm.dbg.value(metadata i32 %177, metadata !2387, metadata !DIExpression()), !dbg !2388
  %178 = zext i8 %1 to i32, !dbg !2597
  %179 = shl nuw nsw i32 %178, 12, !dbg !2598
  %180 = or i32 %177, %179, !dbg !2599
  store volatile i32 %180, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2600
  br label %187, !dbg !2601

181:                                              ; preds = %2
  %182 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2602
  call void @llvm.dbg.value(metadata i32 %182, metadata !2387, metadata !DIExpression()), !dbg !2388
  %183 = and i32 %182, -983041, !dbg !2603
  call void @llvm.dbg.value(metadata i32 %183, metadata !2387, metadata !DIExpression()), !dbg !2388
  %184 = zext i8 %1 to i32, !dbg !2604
  %185 = shl nuw nsw i32 %184, 16, !dbg !2605
  %186 = or i32 %183, %185, !dbg !2606
  store volatile i32 %186, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !2607
  br label %187, !dbg !2608

187:                                              ; preds = %94, %67, %2, %119, %112, %110, %102, %100, %85, %92, %83, %75, %73, %181, %175, %169, %163, %157, %151, %145, %139, %133, %127, %121, %61, %55, %50, %44, %38, %32, %26, %20, %14, %8, %3
  ret void, !dbg !2609
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_direction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !2610 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2614, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i32 %1, metadata !2615, metadata !DIExpression()), !dbg !2616
  %3 = trunc i32 %1 to i8, !dbg !2617
  %4 = tail call i32 @halGPIO_ConfDirection(i32 noundef %0, i8 noundef zeroext %3) #15, !dbg !2618
  ret i32 %4, !dbg !2619
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_write(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !2620 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2624, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i8 %1, metadata !2625, metadata !DIExpression()), !dbg !2626
  %3 = tail call i32 @halGPO_Write(i32 noundef %0, i8 noundef zeroext %1) #15, !dbg !2627
  ret i32 %3, !dbg !2628
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_int(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8 noundef zeroext %6, void (i32)* noundef %7) local_unnamed_addr #0 !dbg !2629 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2637, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i32 %1, metadata !2638, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i32 %2, metadata !2639, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i32 %3, metadata !2640, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i32 %4, metadata !2641, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i32 %5, metadata !2642, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i8 %6, metadata !2643, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata void (i32)* %7, metadata !2644, metadata !DIExpression()), !dbg !2645
  %9 = trunc i32 %1 to i8, !dbg !2646
  %10 = trunc i32 %2 to i8, !dbg !2647
  %11 = trunc i32 %3 to i8, !dbg !2648
  %12 = trunc i32 %4 to i8, !dbg !2649
  %13 = trunc i32 %5 to i8, !dbg !2650
  %14 = tail call i32 @halRegGPInterrupt(i32 noundef %0, i8 noundef zeroext %9, i8 noundef zeroext %10, i8 noundef zeroext %11, i8 noundef zeroext %12, i8 noundef zeroext %13, i8 noundef zeroext %6, void (i32)* noundef %7) #15, !dbg !2651
  ret i32 %14, !dbg !2652
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @eint_set_trigger_mode(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !dbg !2653 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2657, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i32 %1, metadata !2658, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i32 %2, metadata !2659, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i32 %3, metadata !2660, metadata !DIExpression()), !dbg !2661
  %5 = trunc i32 %1 to i8, !dbg !2662
  %6 = trunc i32 %2 to i8, !dbg !2663
  %7 = trunc i32 %3 to i8, !dbg !2664
  %8 = tail call i32 @halRegGPInterrupt_set_triggermode(i32 noundef %0, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7) #15, !dbg !2665
  ret i32 %8, !dbg !2666
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @eint_set_debounce(i32 noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 !dbg !2667 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2671, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i32 %1, metadata !2672, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i32 %2, metadata !2673, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8 %3, metadata !2674, metadata !DIExpression()), !dbg !2675
  %5 = trunc i32 %1 to i8, !dbg !2676
  %6 = trunc i32 %2 to i8, !dbg !2677
  %7 = tail call i32 @halRegGPInterrupt_set_debounce(i32 noundef %0, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %3) #15, !dbg !2678
  ret i32 %7, !dbg !2679
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @eint_set_mask(i32 noundef %0) local_unnamed_addr #0 !dbg !2680 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2684, metadata !DIExpression()), !dbg !2685
  %2 = tail call i32 @halRegGPInterrupt_mask(i32 noundef %0) #15, !dbg !2686
  ret i32 %2, !dbg !2687
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @eint_set_unmask(i32 noundef %0) local_unnamed_addr #0 !dbg !2688 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2690, metadata !DIExpression()), !dbg !2691
  %2 = tail call i32 @halRegGPInterrupt_unmask(i32 noundef %0) #15, !dbg !2692
  ret i32 %2, !dbg !2693
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @eint_set_software_trigger(i32 noundef %0) local_unnamed_addr #0 !dbg !2694 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2696, metadata !DIExpression()), !dbg !2697
  %2 = tail call i32 @halRegGP_set_software_trigger(i32 noundef %0) #15, !dbg !2698
  ret i32 %2, !dbg !2699
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @eint_clear_software_trigger(i32 noundef %0) local_unnamed_addr #0 !dbg !2700 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2702, metadata !DIExpression()), !dbg !2703
  %2 = tail call i32 @halRegGP_clear_software_trigger(i32 noundef %0) #15, !dbg !2704
  ret i32 %2, !dbg !2705
}

; Function Attrs: noinline nounwind optsize
define dso_local void @gpio_get_status(%struct.gpio_status* noalias nocapture writeonly sret(%struct.gpio_status) align 4 %0, i32 noundef %1) local_unnamed_addr #0 !dbg !2706 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !2717, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.declare(metadata %struct.gpio_status* %0, metadata !2718, metadata !DIExpression()), !dbg !2720
  %3 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %0, i32 0, i32 0, !dbg !2721
  store i32 %1, i32* %3, align 4, !dbg !2722
  %4 = tail call zeroext i8 @halgetGPIO_OutEnable(i32 noundef %1) #15, !dbg !2723
  %5 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %0, i32 0, i32 1, !dbg !2724
  store i8 %4, i8* %5, align 4, !dbg !2725
  %6 = tail call zeroext i8 @halgetGPIO_DIN(i32 noundef %1) #15, !dbg !2726
  %7 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %0, i32 0, i32 2, !dbg !2727
  store i8 %6, i8* %7, align 1, !dbg !2728
  %8 = tail call zeroext i8 @halgetGPIO_DOUT(i32 noundef %1) #15, !dbg !2729
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %0, i32 0, i32 3, !dbg !2730
  store i8 %8, i8* %9, align 2, !dbg !2731
  ret void, !dbg !2732
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_PullUp(i32 noundef %0) local_unnamed_addr #0 !dbg !2733 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2735, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i32 0, metadata !2736, metadata !DIExpression()), !dbg !2737
  tail call void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef 1) #15, !dbg !2738
  %2 = tail call i32 @halGPIO_PullUp_SET(i32 noundef %0) #15, !dbg !2739
  call void @llvm.dbg.value(metadata i32 %2, metadata !2736, metadata !DIExpression()), !dbg !2737
  ret i32 %2, !dbg !2740
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_PullDown(i32 noundef %0) local_unnamed_addr #0 !dbg !2741 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2743, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i32 0, metadata !2744, metadata !DIExpression()), !dbg !2745
  tail call void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef 1) #15, !dbg !2746
  %2 = tail call i32 @halGPIO_PullDown_SET(i32 noundef %0) #15, !dbg !2747
  call void @llvm.dbg.value(metadata i32 %2, metadata !2744, metadata !DIExpression()), !dbg !2745
  ret i32 %2, !dbg !2748
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_PullDisable(i32 noundef %0) local_unnamed_addr #0 !dbg !2749 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2751, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i32 0, metadata !2752, metadata !DIExpression()), !dbg !2753
  tail call void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef 1) #15, !dbg !2754
  %2 = tail call i32 @halGPIO_PullDown_RESET(i32 noundef %0) #15, !dbg !2755
  call void @llvm.dbg.value(metadata i32 %2, metadata !2752, metadata !DIExpression()), !dbg !2753
  %3 = tail call i32 @halGPIO_PullUp_RESET(i32 noundef %0) #15, !dbg !2756
  call void @llvm.dbg.value(metadata i32 %3, metadata !2752, metadata !DIExpression()), !dbg !2753
  ret i32 %3, !dbg !2757
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_SetDriving(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !2758 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2760, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata i8 %1, metadata !2761, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.value(metadata i32 0, metadata !2762, metadata !DIExpression()), !dbg !2763
  %3 = tail call i32 @halGPIO_SetDriving(i32 noundef %0, i8 noundef zeroext %1) #15, !dbg !2764
  call void @llvm.dbg.value(metadata i32 %3, metadata !2762, metadata !DIExpression()), !dbg !2763
  ret i32 %3, !dbg !2765
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_GetDriving(i32 noundef %0, i8* noundef %1) local_unnamed_addr #0 !dbg !2766 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2770, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i8* %1, metadata !2771, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i32 0, metadata !2772, metadata !DIExpression()), !dbg !2773
  %3 = tail call i32 @halGPIO_GetDriving(i32 noundef %0, i8* noundef %1) #15, !dbg !2774
  call void @llvm.dbg.value(metadata i32 %3, metadata !2772, metadata !DIExpression()), !dbg !2773
  ret i32 %3, !dbg !2775
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @gpio_backup_all_registers() local_unnamed_addr #3 !dbg !2776 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2778, metadata !DIExpression()), !dbg !2779
  br label %1, !dbg !2780

1:                                                ; preds = %0, %1
  %2 = phi i32 [ 0, %0 ], [ %8, %1 ]
  call void @llvm.dbg.value(metadata i32 %2, metadata !2778, metadata !DIExpression()), !dbg !2779
  %3 = getelementptr inbounds [22 x %struct.gpio_backup_restore_t], [22 x %struct.gpio_backup_restore_t]* @gpio_bakup_table, i32 0, i32 %2, i32 1, !dbg !2782
  %4 = load i32, i32* %3, align 4, !dbg !2782
  %5 = inttoptr i32 %4 to i32*, !dbg !2782
  %6 = load volatile i32, i32* %5, align 4, !dbg !2782
  %7 = getelementptr inbounds [22 x %struct.gpio_backup_restore_t], [22 x %struct.gpio_backup_restore_t]* @gpio_bakup_table, i32 0, i32 %2, i32 0, !dbg !2785
  store i32 %6, i32* %7, align 4, !dbg !2786
  %8 = add nuw nsw i32 %2, 1, !dbg !2787
  call void @llvm.dbg.value(metadata i32 %8, metadata !2778, metadata !DIExpression()), !dbg !2779
  %9 = icmp eq i32 %8, 22, !dbg !2788
  br i1 %9, label %10, label %1, !dbg !2780, !llvm.loop !2789

10:                                               ; preds = %1
  ret void, !dbg !2791
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @gpio_restore_all_registers() local_unnamed_addr #3 !dbg !2792 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2794, metadata !DIExpression()), !dbg !2795
  br label %1, !dbg !2796

1:                                                ; preds = %0, %1
  %2 = phi i32 [ 0, %0 ], [ %8, %1 ]
  call void @llvm.dbg.value(metadata i32 %2, metadata !2794, metadata !DIExpression()), !dbg !2795
  %3 = getelementptr inbounds [22 x %struct.gpio_backup_restore_t], [22 x %struct.gpio_backup_restore_t]* @gpio_bakup_table, i32 0, i32 %2, i32 0, !dbg !2798
  %4 = load i32, i32* %3, align 4, !dbg !2798
  %5 = getelementptr inbounds [22 x %struct.gpio_backup_restore_t], [22 x %struct.gpio_backup_restore_t]* @gpio_bakup_table, i32 0, i32 %2, i32 1, !dbg !2801
  %6 = load i32, i32* %5, align 4, !dbg !2801
  %7 = inttoptr i32 %6 to i32*, !dbg !2801
  store volatile i32 %4, i32* %7, align 4, !dbg !2802
  %8 = add nuw nsw i32 %2, 1, !dbg !2803
  call void @llvm.dbg.value(metadata i32 %8, metadata !2794, metadata !DIExpression()), !dbg !2795
  %9 = icmp eq i32 %8, 22, !dbg !2804
  br i1 %9, label %10, label %1, !dbg !2796, !llvm.loop !2805

10:                                               ; preds = %1
  ret void, !dbg !2807
}

; Function Attrs: noinline nounwind optsize
define dso_local void @NVIC_SetupVectorTable(i32 noundef %0) local_unnamed_addr #0 !dbg !2808 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2812, metadata !DIExpression()), !dbg !2813
  store volatile i32 %0, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !2814
  tail call void asm sideeffect "dsb", ""() #18, !dbg !2815, !srcloc !2816
  tail call void asm sideeffect "isb", ""() #18, !dbg !2817, !srcloc !2818
  ret void, !dbg !2819
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @NVIC_SWInt(i32 noundef %0) local_unnamed_addr #3 !dbg !2820 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2824, metadata !DIExpression()), !dbg !2825
  store volatile i32 %0, i32* inttoptr (i32 -536809728 to i32*), align 256, !dbg !2826
  ret void, !dbg !2827
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @save_and_set_interrupt_mask() local_unnamed_addr #0 section ".ramTEXT" !dbg !2828 {
  %1 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #18, !dbg !2833, !srcloc !2840
  call void @llvm.dbg.value(metadata i32 %1, metadata !2837, metadata !DIExpression()) #18, !dbg !2841
  call void @llvm.dbg.value(metadata i32 %1, metadata !2832, metadata !DIExpression()), !dbg !2842
  tail call void asm sideeffect "cpsid i", "~{memory}"() #18, !dbg !2843, !srcloc !2846
  ret i32 %1, !dbg !2847
}

; Function Attrs: noinline nounwind optsize
define dso_local void @restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #0 section ".ramTEXT" !dbg !2848 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2850, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i32 %0, metadata !2852, metadata !DIExpression()) #18, !dbg !2855
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %0) #18, !dbg !2858, !srcloc !2859
  ret void, !dbg !2860
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @pinmux_config(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !2861 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2865, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i32 %1, metadata !2866, metadata !DIExpression()), !dbg !2868
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
  ], !dbg !2869

3:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  call void @llvm.dbg.value(metadata i32 %0, metadata !2867, metadata !DIExpression()), !dbg !2868
  %4 = trunc i32 %1 to i8, !dbg !2870
  tail call void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %4) #15, !dbg !2871
  br label %5, !dbg !2872

5:                                                ; preds = %2, %3
  %6 = phi i32 [ 0, %3 ], [ -1, %2 ], !dbg !2868
  ret i32 %6, !dbg !2873
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @get_current_count() local_unnamed_addr #0 !dbg !2874 {
  %1 = tail call i32 @GPT_return_current_count(i32 noundef 2) #15, !dbg !2875
  ret i32 %1, !dbg !2876
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_time(i32 noundef %0) local_unnamed_addr #0 !dbg !2877 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2879, metadata !DIExpression()), !dbg !2882
  %2 = tail call i32 @get_current_count() #16, !dbg !2883
  %3 = add i32 %2, %0, !dbg !2884
  %4 = xor i32 %3, -1, !dbg !2885
  call void @llvm.dbg.value(metadata i32 %3, metadata !2880, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2882
  %5 = tail call i32 @get_current_count() #16, !dbg !2886
  call void @llvm.dbg.value(metadata i32 %5, metadata !2881, metadata !DIExpression()), !dbg !2882
  %6 = add i32 %5, %4, !dbg !2887
  %7 = icmp slt i32 %6, 0, !dbg !2887
  br i1 %7, label %8, label %12, !dbg !2888

8:                                                ; preds = %1, %8
  %9 = tail call i32 @get_current_count() #16, !dbg !2889
  call void @llvm.dbg.value(metadata i32 %9, metadata !2881, metadata !DIExpression()), !dbg !2882
  %10 = add i32 %9, %4, !dbg !2887
  %11 = icmp slt i32 %10, 0, !dbg !2887
  br i1 %11, label %8, label %12, !dbg !2888, !llvm.loop !2891

12:                                               ; preds = %8, %1
  ret void, !dbg !2893
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_time_for_gpt4(i32 noundef %0) local_unnamed_addr #0 !dbg !2894 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2896, metadata !DIExpression()), !dbg !2899
  %2 = tail call i32 @get_current_gpt4_count() #16, !dbg !2900
  %3 = add i32 %2, %0, !dbg !2901
  %4 = xor i32 %3, -1, !dbg !2902
  call void @llvm.dbg.value(metadata i32 %3, metadata !2897, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2899
  %5 = tail call i32 @get_current_gpt4_count() #16, !dbg !2903
  call void @llvm.dbg.value(metadata i32 %5, metadata !2898, metadata !DIExpression()), !dbg !2899
  %6 = add i32 %5, %4, !dbg !2904
  %7 = icmp slt i32 %6, 0, !dbg !2904
  br i1 %7, label %8, label %12, !dbg !2905

8:                                                ; preds = %1, %8
  %9 = tail call i32 @get_current_gpt4_count() #16, !dbg !2906
  call void @llvm.dbg.value(metadata i32 %9, metadata !2898, metadata !DIExpression()), !dbg !2899
  %10 = add i32 %9, %4, !dbg !2904
  %11 = icmp slt i32 %10, 0, !dbg !2904
  br i1 %11, label %8, label %12, !dbg !2905, !llvm.loop !2908

12:                                               ; preds = %8, %1
  ret void, !dbg !2910
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @get_current_gpt4_count() local_unnamed_addr #0 !dbg !2911 {
  %1 = tail call i32 @GPT_return_current_count(i32 noundef 4) #15, !dbg !2912
  ret i32 %1, !dbg !2913
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_ms(i32 noundef %0) local_unnamed_addr #0 !dbg !2914 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2916, metadata !DIExpression()), !dbg !2918
  %2 = shl i32 %0, 5, !dbg !2919
  call void @llvm.dbg.value(metadata i32 %2, metadata !2917, metadata !DIExpression()), !dbg !2918
  %3 = mul i32 %0, 7, !dbg !2920
  %4 = udiv i32 %3, 10, !dbg !2921
  %5 = add i32 %4, %2, !dbg !2922
  call void @llvm.dbg.value(metadata i32 %5, metadata !2917, metadata !DIExpression()), !dbg !2918
  %6 = mul i32 %0, 6, !dbg !2923
  %7 = udiv i32 %6, 100, !dbg !2924
  %8 = add i32 %5, %7, !dbg !2925
  call void @llvm.dbg.value(metadata i32 %8, metadata !2917, metadata !DIExpression()), !dbg !2918
  %9 = shl i32 %0, 3, !dbg !2926
  %10 = udiv i32 %9, 1000, !dbg !2927
  %11 = add i32 %8, %10, !dbg !2928
  call void @llvm.dbg.value(metadata i32 %11, metadata !2917, metadata !DIExpression()), !dbg !2918
  tail call void @delay_time(i32 noundef %11) #16, !dbg !2929
  ret void, !dbg !2930
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_us(i32 noundef %0) local_unnamed_addr #0 !dbg !2931 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2933, metadata !DIExpression()), !dbg !2936
  %2 = tail call i32 @top_mcu_freq_get() #15, !dbg !2937
  %3 = udiv i32 %2, 1000000, !dbg !2938
  call void @llvm.dbg.value(metadata i32 %3, metadata !2935, metadata !DIExpression()), !dbg !2936
  %4 = mul i32 %3, %0, !dbg !2939
  call void @llvm.dbg.value(metadata i32 %4, metadata !2934, metadata !DIExpression()), !dbg !2936
  tail call void @delay_time_for_gpt4(i32 noundef %4) #16, !dbg !2940
  ret void, !dbg !2941
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvTMR_init(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, void ()* noundef %3) local_unnamed_addr #0 !dbg !2942 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2946, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i32 %1, metadata !2947, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i1 %2, metadata !2948, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2950
  call void @llvm.dbg.value(metadata void ()* %3, metadata !2949, metadata !DIExpression()), !dbg !2950
  tail call void @GPT_Stop(i32 noundef %0) #15, !dbg !2951
  %5 = icmp eq i32 %0, 0, !dbg !2952
  br i1 %5, label %6, label %7, !dbg !2954

6:                                                ; preds = %4
  store volatile i32 0, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !2955
  br label %8, !dbg !2957

7:                                                ; preds = %4
  store volatile i32 0, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !2958
  br label %8

8:                                                ; preds = %7, %6
  %9 = phi i32 [ %0, %7 ], [ 0, %6 ]
  tail call void @GPT_init(i32 noundef %9, i32 noundef 1, void ()* noundef %3) #15, !dbg !2960
  tail call void @GPT_ResetTimer(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) #15, !dbg !2961
  ret void, !dbg !2962
}

; Function Attrs: noinline nounwind optsize
define dso_local void @TMR_Start(i32 noundef %0) local_unnamed_addr #0 !dbg !2963 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2965, metadata !DIExpression()), !dbg !2966
  tail call void @GPT_Start(i32 noundef %0) #15, !dbg !2967
  ret void, !dbg !2968
}

; Function Attrs: noinline nounwind optsize
define dso_local void @TMR_Stop(i32 noundef %0) local_unnamed_addr #0 !dbg !2969 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2971, metadata !DIExpression()), !dbg !2972
  tail call void @GPT_Stop(i32 noundef %0) #15, !dbg !2973
  ret void, !dbg !2974
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvGPT2Init() local_unnamed_addr #0 !dbg !2975 {
  tail call void @CM4_GPT2Init() #15, !dbg !2976
  ret void, !dbg !2977
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvGPT4Init() local_unnamed_addr #0 !dbg !2978 {
  tail call void @CM4_GPT4Init() #15, !dbg !2979
  ret void, !dbg !2980
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @clear_TMR_INT_status_bit(i32 noundef %0) local_unnamed_addr #3 !dbg !2981 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2983, metadata !DIExpression()), !dbg !2984
  switch i32 %0, label %5 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !2985

2:                                                ; preds = %1
  br label %3, !dbg !2986

3:                                                ; preds = %1, %2
  %4 = phi i32 [ 2, %2 ], [ 1, %1 ]
  store volatile i32 %4, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !2984
  br label %5, !dbg !2989

5:                                                ; preds = %3, %1
  ret void, !dbg !2989
}

; Function Attrs: noinline nounwind optsize
define dso_local void @top_xtal_init() local_unnamed_addr #0 !dbg !2990 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2992, metadata !DIExpression()), !dbg !2994
  %1 = load volatile i32, i32* inttoptr (i32 -2097118784 to i32*), align 64, !dbg !2995
  call void @llvm.dbg.value(metadata i32 %1, metadata !2993, metadata !DIExpression()), !dbg !2994
  %2 = lshr i32 %1, 13, !dbg !2996
  %3 = and i32 %2, 7, !dbg !2997
  call void @llvm.dbg.value(metadata i32 %3, metadata !2993, metadata !DIExpression()), !dbg !2994
  %4 = load volatile i32, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2998
  call void @llvm.dbg.value(metadata i32 %4, metadata !2992, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata i32 %4, metadata !2992, metadata !DIExpression(DW_OP_constu, 18446744073709549568, DW_OP_and, DW_OP_stack_value)), !dbg !2994
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init, i32 0, i32 %3, !dbg !2999
  %6 = load i32, i32* %5, align 4, !dbg !2999
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init.1, i32 0, i32 %3, !dbg !2999
  %8 = load i32, i32* %7, align 4, !dbg !2999
  %9 = and i32 %4, -2048, !dbg !3000
  call void @llvm.dbg.value(metadata i32 %9, metadata !2992, metadata !DIExpression()), !dbg !2994
  store i32 %6, i32* @gXtalFreq, align 4, !dbg !3001
  %10 = or i32 %9, %8, !dbg !3001
  call void @llvm.dbg.value(metadata i32 %10, metadata !2992, metadata !DIExpression()), !dbg !2994
  store volatile i32 %10, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !3003
  %11 = load i32, i32* @gXtalFreq, align 4, !dbg !3004
  store i32 %11, i32* @gCpuFrequency, align 4, !dbg !3005
  tail call void @SystemCoreClockUpdate() #15, !dbg !3006
  %12 = load i32, i32* @SystemCoreClock, align 4, !dbg !3007
  %13 = udiv i32 %12, 1000, !dbg !3008
  %14 = tail call i32 @SysTick_Set(i32 noundef %13) #15, !dbg !3009
  ret void, !dbg !3010
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_xtal_freq_get() local_unnamed_addr #6 !dbg !3011 {
  %1 = load i32, i32* @gXtalFreq, align 4, !dbg !3012
  ret i32 %1, !dbg !3013
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_mcu_freq_get() local_unnamed_addr #6 !dbg !3014 {
  %1 = load i32, i32* @gCpuFrequency, align 4, !dbg !3015
  ret i32 %1, !dbg !3016
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON() local_unnamed_addr #7 !dbg !3017 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3021
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3021
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3019, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !3020, metadata !DIExpression()), !dbg !3023
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3024
  store volatile i32 %3, i32* %1, align 4, !dbg !3025
  %4 = load volatile i32, i32* %1, align 4, !dbg !3026
  %5 = lshr i32 %4, 28, !dbg !3027
  %6 = and i32 %5, 3, !dbg !3028
  store volatile i32 %6, i32* %1, align 4, !dbg !3029
  %7 = load volatile i32, i32* %1, align 4, !dbg !3030
  %8 = icmp eq i32 %7, 0, !dbg !3032
  br i1 %8, label %9, label %22, !dbg !3033

9:                                                ; preds = %0
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3034
  store volatile i32 %10, i32* %1, align 4, !dbg !3036
  %11 = load volatile i32, i32* %1, align 4, !dbg !3037
  %12 = and i32 %11, -16777217, !dbg !3038
  store volatile i32 %12, i32* %1, align 4, !dbg !3039
  %13 = load volatile i32, i32* %1, align 4, !dbg !3040
  %14 = or i32 %13, 536870912, !dbg !3041
  store volatile i32 %14, i32* %1, align 4, !dbg !3042
  %15 = load volatile i32, i32* %1, align 4, !dbg !3043
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %15) #16, !dbg !3044
  br label %16, !dbg !3045

16:                                               ; preds = %16, %9
  %17 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3046
  store volatile i32 %17, i32* %1, align 4, !dbg !3048
  %18 = load volatile i32, i32* %1, align 4, !dbg !3049
  %19 = and i32 %18, 134217728, !dbg !3050
  store volatile i32 %19, i32* %1, align 4, !dbg !3051
  %20 = load volatile i32, i32* %1, align 4, !dbg !3052
  %21 = icmp eq i32 %20, 0, !dbg !3053
  br i1 %21, label %16, label %22, !dbg !3054, !llvm.loop !3055

22:                                               ; preds = %16, %0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3057
  ret void, !dbg !3057
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #8

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @cmnReadRegister32(i8* noundef %0) unnamed_addr #4 !dbg !3058 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3065, metadata !DIExpression()), !dbg !3066
  %2 = bitcast i8* %0 to i32*, !dbg !3067
  %3 = load volatile i32, i32* %2, align 4, !dbg !3068
  ret i32 %3, !dbg !3069
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @cmnWriteRegister32(i8* noundef %0, i32 noundef %1) unnamed_addr #3 !dbg !3070 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3074, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata i32 %1, metadata !3075, metadata !DIExpression()), !dbg !3076
  %3 = bitcast i8* %0 to i32*, !dbg !3077
  store volatile i32 %1, i32* %3, align 4, !dbg !3078
  ret void, !dbg !3079
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #8

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON_PLL2ON(i8 noundef zeroext %0) local_unnamed_addr #7 !dbg !3080 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8 %0, metadata !3084, metadata !DIExpression()), !dbg !3087
  %3 = bitcast i32* %2 to i8*, !dbg !3088
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !3088
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3085, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !3086, metadata !DIExpression()), !dbg !3087
  %4 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3090
  store volatile i32 %4, i32* %2, align 4, !dbg !3091
  %5 = load volatile i32, i32* %2, align 4, !dbg !3092
  %6 = lshr i32 %5, 28, !dbg !3093
  %7 = and i32 %6, 3, !dbg !3094
  store volatile i32 %7, i32* %2, align 4, !dbg !3095
  %8 = load volatile i32, i32* %2, align 4, !dbg !3096
  %9 = icmp eq i32 %8, 3, !dbg !3098
  br i1 %9, label %38, label %10, !dbg !3099

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3100
  store volatile i32 %11, i32* %2, align 4, !dbg !3102
  %12 = load volatile i32, i32* %2, align 4, !dbg !3103
  %13 = and i32 %12, -262145, !dbg !3104
  store volatile i32 %13, i32* %2, align 4, !dbg !3105
  %14 = load volatile i32, i32* %2, align 4, !dbg !3106
  %15 = and i32 %14, -16777217, !dbg !3107
  store volatile i32 %15, i32* %2, align 4, !dbg !3108
  %16 = load volatile i32, i32* %2, align 4, !dbg !3109
  store volatile i32 %16, i32* %2, align 4, !dbg !3110
  %17 = load volatile i32, i32* %2, align 4, !dbg !3111
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %17) #16, !dbg !3112
  %18 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3113
  store volatile i32 %18, i32* %2, align 4, !dbg !3114
  %19 = load volatile i32, i32* %2, align 4, !dbg !3115
  %20 = and i32 %19, -805306369, !dbg !3116
  store volatile i32 %20, i32* %2, align 4, !dbg !3117
  %21 = load volatile i32, i32* %2, align 4, !dbg !3118
  %22 = and i32 %21, -16777217, !dbg !3119
  store volatile i32 %22, i32* %2, align 4, !dbg !3120
  %23 = load volatile i32, i32* %2, align 4, !dbg !3121
  %24 = or i32 %23, 805306368, !dbg !3122
  store volatile i32 %24, i32* %2, align 4, !dbg !3123
  %25 = load volatile i32, i32* %2, align 4, !dbg !3124
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %25) #16, !dbg !3125
  br label %26, !dbg !3126

26:                                               ; preds = %26, %10
  %27 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3127
  store volatile i32 %27, i32* %2, align 4, !dbg !3129
  %28 = load volatile i32, i32* %2, align 4, !dbg !3130
  %29 = and i32 %28, 67108864, !dbg !3131
  store volatile i32 %29, i32* %2, align 4, !dbg !3132
  %30 = load volatile i32, i32* %2, align 4, !dbg !3133
  %31 = icmp eq i32 %30, 0, !dbg !3134
  br i1 %31, label %26, label %32, !dbg !3135, !llvm.loop !3136

32:                                               ; preds = %26
  %33 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3138
  store volatile i32 %33, i32* %2, align 4, !dbg !3139
  %34 = load volatile i32, i32* %2, align 4, !dbg !3140
  %35 = and i32 %34, -262145, !dbg !3141
  store volatile i32 %35, i32* %2, align 4, !dbg !3142
  %36 = load volatile i32, i32* %2, align 4, !dbg !3143
  %37 = and i32 %36, -16777217, !dbg !3144
  store volatile i32 %37, i32* %2, align 4, !dbg !3145
  br label %38, !dbg !3146

38:                                               ; preds = %32, %1
  %39 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3147
  store volatile i32 %39, i32* %2, align 4, !dbg !3148
  %40 = icmp eq i8 %0, 0, !dbg !3149
  %41 = load volatile i32, i32* %2, align 4, !dbg !3151
  br i1 %40, label %44, label %42, !dbg !3152

42:                                               ; preds = %38
  %43 = or i32 %41, 262144, !dbg !3153
  store volatile i32 %43, i32* %2, align 4, !dbg !3155
  br label %45, !dbg !3156

44:                                               ; preds = %38
  store volatile i32 %41, i32* %2, align 4, !dbg !3157
  br label %45

45:                                               ; preds = %44, %42
  %46 = load volatile i32, i32* %2, align 4, !dbg !3159
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %46) #16, !dbg !3160
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !3161
  ret void, !dbg !3161
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1OFF_PLL2OFF() local_unnamed_addr #7 !dbg !3162 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3166
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3166
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3164, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !3165, metadata !DIExpression()), !dbg !3168
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3169
  store volatile i32 %3, i32* %1, align 4, !dbg !3170
  %4 = load volatile i32, i32* %1, align 4, !dbg !3171
  %5 = and i32 %4, -805306369, !dbg !3172
  store volatile i32 %5, i32* %1, align 4, !dbg !3173
  %6 = load volatile i32, i32* %1, align 4, !dbg !3174
  %7 = and i32 %6, -16777217, !dbg !3175
  store volatile i32 %7, i32* %1, align 4, !dbg !3176
  %8 = load volatile i32, i32* %1, align 4, !dbg !3177
  store volatile i32 %8, i32* %1, align 4, !dbg !3178
  %9 = load volatile i32, i32* %1, align 4, !dbg !3179
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %9) #16, !dbg !3180
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3181
  store volatile i32 %10, i32* %1, align 4, !dbg !3182
  %11 = load volatile i32, i32* %1, align 4, !dbg !3183
  %12 = and i32 %11, -262145, !dbg !3184
  store volatile i32 %12, i32* %1, align 4, !dbg !3185
  %13 = load volatile i32, i32* %1, align 4, !dbg !3186
  %14 = and i32 %13, -16777217, !dbg !3187
  store volatile i32 %14, i32* %1, align 4, !dbg !3188
  %15 = load volatile i32, i32* %1, align 4, !dbg !3189
  store volatile i32 %15, i32* %1, align 4, !dbg !3190
  %16 = load volatile i32, i32* %1, align 4, !dbg !3191
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %16) #16, !dbg !3192
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3193
  ret void, !dbg !3193
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureToXtal() local_unnamed_addr #0 !dbg !3194 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3198
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3198
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3196, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !3197, metadata !DIExpression()), !dbg !3200
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3201
  store volatile i32 %3, i32* %1, align 4, !dbg !3202
  %4 = load volatile i32, i32* %1, align 4, !dbg !3203
  %5 = and i32 %4, -8, !dbg !3204
  store volatile i32 %5, i32* %1, align 4, !dbg !3205
  %6 = load volatile i32, i32* %1, align 4, !dbg !3206
  store volatile i32 %6, i32* %1, align 4, !dbg !3207
  %7 = load volatile i32, i32* %1, align 4, !dbg !3208
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #16, !dbg !3209
  %8 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3210
  store volatile i32 %8, i32* %1, align 4, !dbg !3211
  %9 = load volatile i32, i32* %1, align 4, !dbg !3212
  %10 = and i32 %9, -49153, !dbg !3213
  store volatile i32 %10, i32* %1, align 4, !dbg !3214
  %11 = load volatile i32, i32* %1, align 4, !dbg !3215
  store volatile i32 %11, i32* %1, align 4, !dbg !3216
  %12 = load volatile i32, i32* %1, align 4, !dbg !3217
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %12) #16, !dbg !3218
  br label %13, !dbg !3219

13:                                               ; preds = %13, %0
  %14 = load volatile i32, i32* %1, align 4, !dbg !3220
  %15 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3221
  %16 = icmp eq i32 %14, %15, !dbg !3222
  br i1 %16, label %17, label %13, !dbg !3219, !llvm.loop !3223

17:                                               ; preds = %13
  %18 = tail call i32 @top_xtal_freq_get() #16, !dbg !3225
  store i32 %18, i32* @gCpuFrequency, align 4, !dbg !3226
  tail call void @SystemCoreClockUpdate() #15, !dbg !3227
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !3228
  %20 = udiv i32 %19, 1000, !dbg !3229
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #15, !dbg !3230
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3231
  ret void, !dbg !3231
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo192M() local_unnamed_addr #0 !dbg !3232 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3236
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3236
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3234, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !3235, metadata !DIExpression()), !dbg !3238
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 1) #16, !dbg !3239
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3240
  store volatile i32 %3, i32* %1, align 4, !dbg !3241
  %4 = load volatile i32, i32* %1, align 4, !dbg !3242
  %5 = and i32 %4, -49153, !dbg !3243
  store volatile i32 %5, i32* %1, align 4, !dbg !3244
  %6 = load volatile i32, i32* %1, align 4, !dbg !3245
  %7 = or i32 %6, 16384, !dbg !3246
  store volatile i32 %7, i32* %1, align 4, !dbg !3247
  %8 = load volatile i32, i32* %1, align 4, !dbg !3248
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #16, !dbg !3249
  br label %9, !dbg !3250

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !3251
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3252
  %12 = icmp eq i32 %10, %11, !dbg !3253
  br i1 %12, label %13, label %9, !dbg !3250, !llvm.loop !3254

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3256
  store volatile i32 %14, i32* %1, align 4, !dbg !3257
  %15 = load volatile i32, i32* %1, align 4, !dbg !3258
  %16 = and i32 %15, -1009, !dbg !3259
  store volatile i32 %16, i32* %1, align 4, !dbg !3260
  %17 = load volatile i32, i32* %1, align 4, !dbg !3261
  %18 = or i32 %17, 128, !dbg !3262
  store volatile i32 %18, i32* %1, align 4, !dbg !3263
  %19 = load volatile i32, i32* %1, align 4, !dbg !3264
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #16, !dbg !3265
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3266
  store volatile i32 %20, i32* %1, align 4, !dbg !3267
  %21 = load volatile i32, i32* %1, align 4, !dbg !3268
  %22 = and i32 %21, -8, !dbg !3269
  store volatile i32 %22, i32* %1, align 4, !dbg !3270
  %23 = load volatile i32, i32* %1, align 4, !dbg !3271
  %24 = or i32 %23, 4, !dbg !3272
  store volatile i32 %24, i32* %1, align 4, !dbg !3273
  %25 = load volatile i32, i32* %1, align 4, !dbg !3274
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #16, !dbg !3275
  store i32 192000000, i32* @gCpuFrequency, align 4, !dbg !3276
  tail call void @SystemCoreClockUpdate() #15, !dbg !3277
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !3278
  %27 = udiv i32 %26, 1000, !dbg !3279
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #15, !dbg !3280
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3281
  ret void, !dbg !3281
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo160M() local_unnamed_addr #0 !dbg !3282 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3286
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3286
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3284, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !3285, metadata !DIExpression()), !dbg !3288
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 0) #16, !dbg !3289
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3290
  store volatile i32 %3, i32* %1, align 4, !dbg !3291
  %4 = load volatile i32, i32* %1, align 4, !dbg !3292
  %5 = and i32 %4, -49153, !dbg !3293
  store volatile i32 %5, i32* %1, align 4, !dbg !3294
  %6 = load volatile i32, i32* %1, align 4, !dbg !3295
  %7 = or i32 %6, 32768, !dbg !3296
  store volatile i32 %7, i32* %1, align 4, !dbg !3297
  %8 = load volatile i32, i32* %1, align 4, !dbg !3298
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #16, !dbg !3299
  br label %9, !dbg !3300

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !3301
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3302
  %12 = icmp eq i32 %10, %11, !dbg !3303
  br i1 %12, label %13, label %9, !dbg !3300, !llvm.loop !3304

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3306
  store volatile i32 %14, i32* %1, align 4, !dbg !3307
  %15 = load volatile i32, i32* %1, align 4, !dbg !3308
  %16 = and i32 %15, -1009, !dbg !3309
  store volatile i32 %16, i32* %1, align 4, !dbg !3310
  %17 = load volatile i32, i32* %1, align 4, !dbg !3311
  %18 = or i32 %17, 32, !dbg !3312
  store volatile i32 %18, i32* %1, align 4, !dbg !3313
  %19 = load volatile i32, i32* %1, align 4, !dbg !3314
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #16, !dbg !3315
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3316
  store volatile i32 %20, i32* %1, align 4, !dbg !3317
  %21 = load volatile i32, i32* %1, align 4, !dbg !3318
  %22 = and i32 %21, -8, !dbg !3319
  store volatile i32 %22, i32* %1, align 4, !dbg !3320
  %23 = load volatile i32, i32* %1, align 4, !dbg !3321
  %24 = or i32 %23, 4, !dbg !3322
  store volatile i32 %24, i32* %1, align 4, !dbg !3323
  %25 = load volatile i32, i32* %1, align 4, !dbg !3324
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #16, !dbg !3325
  store i32 160000000, i32* @gCpuFrequency, align 4, !dbg !3326
  tail call void @SystemCoreClockUpdate() #15, !dbg !3327
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !3328
  %27 = udiv i32 %26, 1000, !dbg !3329
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #15, !dbg !3330
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3331
  ret void, !dbg !3331
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo64M() local_unnamed_addr #0 !dbg !3332 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3336
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3336
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3334, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !3335, metadata !DIExpression()), !dbg !3338
  tail call void @cmnPLL1ON() #16, !dbg !3339
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3340
  store volatile i32 %3, i32* %1, align 4, !dbg !3341
  %4 = load volatile i32, i32* %1, align 4, !dbg !3342
  %5 = and i32 %4, -49153, !dbg !3343
  store volatile i32 %5, i32* %1, align 4, !dbg !3344
  %6 = load volatile i32, i32* %1, align 4, !dbg !3345
  store volatile i32 %6, i32* %1, align 4, !dbg !3346
  %7 = load volatile i32, i32* %1, align 4, !dbg !3347
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #16, !dbg !3348
  br label %8, !dbg !3349

8:                                                ; preds = %8, %0
  %9 = load volatile i32, i32* %1, align 4, !dbg !3350
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3351
  %11 = icmp eq i32 %9, %10, !dbg !3352
  br i1 %11, label %12, label %8, !dbg !3349, !llvm.loop !3353

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3355
  store volatile i32 %13, i32* %1, align 4, !dbg !3356
  %14 = load volatile i32, i32* %1, align 4, !dbg !3357
  %15 = and i32 %14, -8, !dbg !3358
  store volatile i32 %15, i32* %1, align 4, !dbg !3359
  %16 = load volatile i32, i32* %1, align 4, !dbg !3360
  %17 = or i32 %16, 2, !dbg !3361
  store volatile i32 %17, i32* %1, align 4, !dbg !3362
  %18 = load volatile i32, i32* %1, align 4, !dbg !3363
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %18) #16, !dbg !3364
  store i32 64000000, i32* @gCpuFrequency, align 4, !dbg !3365
  tail call void @SystemCoreClockUpdate() #15, !dbg !3366
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !3367
  %20 = udiv i32 %19, 1000, !dbg !3368
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #15, !dbg !3369
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3370
  ret void, !dbg !3370
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnSerialFlashClkConfToXtal() local_unnamed_addr #7 section ".ramTEXT" !dbg !3371 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3375
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3375
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3373, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118796 to i32*), metadata !3374, metadata !DIExpression()), !dbg !3377
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*)) #16, !dbg !3378
  store volatile i32 %3, i32* %1, align 4, !dbg !3379
  %4 = load volatile i32, i32* %1, align 4, !dbg !3380
  %5 = and i32 %4, -24577, !dbg !3381
  store volatile i32 %5, i32* %1, align 4, !dbg !3382
  %6 = load volatile i32, i32* %1, align 4, !dbg !3383
  store volatile i32 %6, i32* %1, align 4, !dbg !3384
  %7 = load volatile i32, i32* %1, align 4, !dbg !3385
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*), i32 noundef %7) #16, !dbg !3386
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3387
  ret void, !dbg !3387
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc() local_unnamed_addr #4 !dbg !3388 {
  %1 = tail call i32 @getc_nowait() #16, !dbg !3393
  call void @llvm.dbg.value(metadata i32 %1, metadata !3392, metadata !DIExpression()), !dbg !3394
  ret i32 %1, !dbg !3395
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc_nowait() local_unnamed_addr #4 !dbg !3396 {
  %1 = load volatile i32, i32* inttoptr (i32 -2096955372 to i32*), align 4, !dbg !3399
  %2 = and i32 %1, 1, !dbg !3401
  %3 = icmp eq i32 %2, 0, !dbg !3401
  br i1 %3, label %7, label %4, !dbg !3402

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 -2096955392 to i32*), align 65536, !dbg !3403
  %6 = and i32 %5, 255, !dbg !3405
  call void @llvm.dbg.value(metadata i32 %5, metadata !3398, metadata !DIExpression()), !dbg !3406
  br label %7, !dbg !3407

7:                                                ; preds = %0, %4
  %8 = phi i32 [ %6, %4 ], [ -1, %0 ], !dbg !3408
  ret i32 %8, !dbg !3409
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_output_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !3410 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3415, metadata !DIExpression()), !dbg !3418
  call void @llvm.dbg.value(metadata i8 %1, metadata !3416, metadata !DIExpression()), !dbg !3418
  %3 = icmp eq i32 %0, 0, !dbg !3419
  %4 = select i1 %3, i32 -2096955392, i32 -2096889856, !dbg !3419
  call void @llvm.dbg.value(metadata i32 %4, metadata !3417, metadata !DIExpression()), !dbg !3418
  %5 = or i32 %4, 20
  %6 = inttoptr i32 %5 to i32*
  br label %7, !dbg !3420

7:                                                ; preds = %7, %2
  %8 = load volatile i32, i32* %6, align 4, !dbg !3421
  %9 = and i32 %8, 32, !dbg !3422
  %10 = icmp eq i32 %9, 0, !dbg !3423
  br i1 %10, label %7, label %11, !dbg !3420, !llvm.loop !3424

11:                                               ; preds = %7
  %12 = zext i8 %1 to i32, !dbg !3426
  %13 = inttoptr i32 %4 to i32*, !dbg !3427
  store volatile i32 %12, i32* %13, align 65536, !dbg !3428
  ret void, !dbg !3429
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @uart_input_char(i32 noundef %0) local_unnamed_addr #3 !dbg !3430 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3434, metadata !DIExpression()), !dbg !3437
  %2 = icmp eq i32 %0, 0, !dbg !3438
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3438
  call void @llvm.dbg.value(metadata i32 %3, metadata !3435, metadata !DIExpression()), !dbg !3437
  %4 = or i32 %3, 20
  %5 = inttoptr i32 %4 to i32*
  br label %6, !dbg !3439

6:                                                ; preds = %6, %1
  %7 = load volatile i32, i32* %5, align 4, !dbg !3440
  %8 = and i32 %7, 1, !dbg !3441
  %9 = icmp eq i32 %8, 0, !dbg !3442
  br i1 %9, label %6, label %10, !dbg !3439, !llvm.loop !3443

10:                                               ; preds = %6
  %11 = inttoptr i32 %3 to i32*, !dbg !3445
  %12 = load volatile i32, i32* %11, align 65536, !dbg !3445
  %13 = trunc i32 %12 to i8, !dbg !3445
  call void @llvm.dbg.value(metadata i8 %13, metadata !3436, metadata !DIExpression()), !dbg !3437
  ret i8 %13, !dbg !3446
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @uart_input_char_unblocking(i32 noundef %0) local_unnamed_addr #4 !dbg !3447 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3451, metadata !DIExpression()), !dbg !3454
  %2 = icmp eq i32 %0, 0, !dbg !3455
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3455
  call void @llvm.dbg.value(metadata i32 %3, metadata !3452, metadata !DIExpression()), !dbg !3454
  %4 = or i32 %3, 20, !dbg !3456
  %5 = inttoptr i32 %4 to i32*, !dbg !3456
  %6 = load volatile i32, i32* %5, align 4, !dbg !3456
  %7 = and i32 %6, 1, !dbg !3458
  %8 = icmp eq i32 %7, 0, !dbg !3458
  br i1 %8, label %13, label %9, !dbg !3459

9:                                                ; preds = %1
  %10 = inttoptr i32 %3 to i32*, !dbg !3460
  %11 = load volatile i32, i32* %10, align 65536, !dbg !3460
  %12 = and i32 %11, 255, !dbg !3462
  call void @llvm.dbg.value(metadata i32 %11, metadata !3453, metadata !DIExpression()), !dbg !3454
  br label %13, !dbg !3463

13:                                               ; preds = %1, %9
  %14 = phi i32 [ %12, %9 ], [ -1, %1 ], !dbg !3464
  ret i32 %14, !dbg !3465
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_HWInit(i32 noundef %0) local_unnamed_addr #0 !dbg !3466 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3470, metadata !DIExpression()), !dbg !3471
  tail call void @halUART_SetFormat(i32 noundef %0, i32 noundef 115200, i16 noundef zeroext 3, i16 noundef zeroext 0, i16 noundef zeroext 0) #16, !dbg !3472
  switch i32 %0, label %7 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !3473

2:                                                ; preds = %1
  br label %3, !dbg !3474

3:                                                ; preds = %1, %2
  %4 = phi i32* [ inttoptr (i32 -2096889780 to i32*), %2 ], [ inttoptr (i32 -2096955316 to i32*), %1 ]
  %5 = load volatile i32, i32* %4, align 4, !dbg !3478
  %6 = or i32 %5, 1, !dbg !3478
  store volatile i32 %6, i32* %4, align 4, !dbg !3478
  br label %7, !dbg !3479

7:                                                ; preds = %3, %1
  ret void, !dbg !3479
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_SetFormat(i32 noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #0 !dbg !3480 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3486, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i32 %1, metadata !3487, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i16 %2, metadata !3488, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i16 %3, metadata !3489, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i16 %4, metadata !3490, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i32 -2096955392, metadata !3492, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, metadata !3499, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, metadata !3501, metadata !DIExpression()), !dbg !3505
  call void @llvm.dbg.value(metadata i32 0, metadata !3502, metadata !DIExpression()), !dbg !3503
  %6 = tail call i32 @top_xtal_freq_get() #15, !dbg !3506
  store i32 %6, i32* @gUartClkFreq, align 4, !dbg !3507
  %7 = icmp eq i32 %0, 1, !dbg !3508
  %8 = select i1 %7, i32 -2096889856, i32 -2096955392, !dbg !3508
  call void @llvm.dbg.value(metadata i32 %8, metadata !3492, metadata !DIExpression()), !dbg !3503
  %9 = or i32 %8, 36, !dbg !3509
  %10 = inttoptr i32 %9 to i32*, !dbg !3509
  store volatile i32 3, i32* %10, align 4, !dbg !3510
  %11 = or i32 %8, 12, !dbg !3511
  %12 = inttoptr i32 %11 to i32*, !dbg !3511
  %13 = load volatile i32, i32* %12, align 4, !dbg !3511
  call void @llvm.dbg.value(metadata i32 %13, metadata !3494, metadata !DIExpression()), !dbg !3503
  %14 = or i32 %13, 128, !dbg !3512
  store volatile i32 %14, i32* %12, align 4, !dbg !3513
  %15 = load i32, i32* @gUartClkFreq, align 4, !dbg !3514
  %16 = udiv i32 %15, %1, !dbg !3515
  call void @llvm.dbg.value(metadata i32 %16, metadata !3493, metadata !DIExpression()), !dbg !3503
  %17 = lshr i32 %16, 8, !dbg !3516
  %18 = add nuw nsw i32 %17, 1, !dbg !3517
  call void @llvm.dbg.value(metadata i32 %18, metadata !3495, metadata !DIExpression()), !dbg !3503
  %19 = udiv i32 %16, %18, !dbg !3518
  %20 = add i32 %19, -1, !dbg !3520
  call void @llvm.dbg.value(metadata i32 %20, metadata !3496, metadata !DIExpression()), !dbg !3503
  %21 = icmp eq i32 %20, 3, !dbg !3521
  %22 = lshr i32 %20, 1, !dbg !3523
  %23 = add nsw i32 %22, -1, !dbg !3523
  %24 = select i1 %21, i32 0, i32 %23, !dbg !3523
  call void @llvm.dbg.value(metadata i32 %24, metadata !3497, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i32 undef, metadata !3502, metadata !DIExpression()), !dbg !3503
  %25 = mul i32 %15, 10, !dbg !3524
  %26 = udiv i32 %25, %1, !dbg !3525
  %27 = udiv i32 %26, %16, !dbg !3526
  %28 = mul i32 %19, -10, !dbg !3527
  %29 = add i32 %27, %28, !dbg !3528
  %30 = urem i32 %29, 10, !dbg !3529
  call void @llvm.dbg.value(metadata i32 %30, metadata !3498, metadata !DIExpression()), !dbg !3503
  %31 = and i32 %18, 255, !dbg !3530
  %32 = inttoptr i32 %8 to i32*, !dbg !3531
  store volatile i32 %31, i32* %32, align 65536, !dbg !3532
  %33 = lshr i32 %18, 8, !dbg !3533
  %34 = and i32 %33, 255, !dbg !3534
  %35 = or i32 %8, 4, !dbg !3535
  %36 = inttoptr i32 %35 to i32*, !dbg !3535
  store volatile i32 %34, i32* %36, align 4, !dbg !3536
  %37 = or i32 %8, 40, !dbg !3537
  %38 = inttoptr i32 %37 to i32*, !dbg !3537
  store volatile i32 %20, i32* %38, align 8, !dbg !3538
  %39 = or i32 %8, 44, !dbg !3539
  %40 = inttoptr i32 %39 to i32*, !dbg !3539
  store volatile i32 %24, i32* %40, align 4, !dbg !3540
  %41 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, i32 0, i32 %30, !dbg !3541
  %42 = load i16, i16* %41, align 2, !dbg !3541
  %43 = zext i16 %42 to i32, !dbg !3541
  %44 = or i32 %8, 88, !dbg !3542
  %45 = inttoptr i32 %44 to i32*, !dbg !3542
  store volatile i32 %43, i32* %45, align 8, !dbg !3543
  %46 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, i32 0, i32 %30, !dbg !3544
  %47 = load i16, i16* %46, align 2, !dbg !3544
  %48 = zext i16 %47 to i32, !dbg !3544
  %49 = or i32 %8, 84, !dbg !3545
  %50 = inttoptr i32 %49 to i32*, !dbg !3545
  store volatile i32 %48, i32* %50, align 4, !dbg !3546
  store volatile i32 %13, i32* %12, align 4, !dbg !3547
  %51 = or i32 %8, 8, !dbg !3548
  %52 = inttoptr i32 %51 to i32*, !dbg !3548
  store volatile i32 71, i32* %52, align 8, !dbg !3549
  %53 = inttoptr i32 %11 to i16*, !dbg !3550
  %54 = load volatile i16, i16* %53, align 4, !dbg !3550
  call void @llvm.dbg.value(metadata i16 %54, metadata !3491, metadata !DIExpression()), !dbg !3503
  %55 = and i16 %54, -64, !dbg !3551
  call void @llvm.dbg.value(metadata i16 %54, metadata !3491, metadata !DIExpression(DW_OP_constu, 18446744073709551608, DW_OP_and, DW_OP_stack_value)), !dbg !3503
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %2), metadata !3491, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3503
  %56 = and i16 %2, -61, !dbg !3552
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %56), metadata !3491, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3503
  call void @llvm.dbg.value(metadata !DIArgList(i16 %55, i16 %4, i16 %56), metadata !3491, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3503
  %57 = and i16 %4, -57, !dbg !3553
  call void @llvm.dbg.value(metadata i16 undef, metadata !3491, metadata !DIExpression()), !dbg !3503
  %58 = or i16 %56, %3, !dbg !3552
  %59 = or i16 %58, %57, !dbg !3553
  %60 = or i16 %59, %55, !dbg !3554
  call void @llvm.dbg.value(metadata i16 %60, metadata !3491, metadata !DIExpression()), !dbg !3503
  store volatile i16 %60, i16* %53, align 4, !dbg !3555
  ret void, !dbg !3556
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) local_unnamed_addr #4 !dbg !3557 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3562, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i32 %1, metadata !3563, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i32* %2, metadata !3564, metadata !DIExpression()), !dbg !3565
  %4 = icmp eq i32 %0, 0, !dbg !3566
  %5 = icmp eq i32 %1, 0, !dbg !3568
  br i1 %4, label %6, label %16, !dbg !3569

6:                                                ; preds = %3
  br i1 %5, label %10, label %7, !dbg !3570

7:                                                ; preds = %6
  %8 = load volatile i16, i16* inttoptr (i32 -2097082568 to i16*), align 8, !dbg !3572
  %9 = zext i16 %8 to i32, !dbg !3572
  br label %26, !dbg !3575

10:                                               ; preds = %6
  %11 = load volatile i16, i16* inttoptr (i32 -2097082812 to i16*), align 4, !dbg !3576
  %12 = zext i16 %11 to i32, !dbg !3576
  store i32 %12, i32* %2, align 4, !dbg !3578
  %13 = load volatile i16, i16* inttoptr (i32 -2097082824 to i16*), align 8, !dbg !3579
  %14 = zext i16 %13 to i32, !dbg !3579
  %15 = sub nsw i32 %12, %14, !dbg !3580
  br label %26

16:                                               ; preds = %3
  br i1 %5, label %20, label %17, !dbg !3581

17:                                               ; preds = %16
  %18 = load volatile i16, i16* inttoptr (i32 -2097082056 to i16*), align 8, !dbg !3583
  %19 = zext i16 %18 to i32, !dbg !3583
  br label %26, !dbg !3586

20:                                               ; preds = %16
  %21 = load volatile i16, i16* inttoptr (i32 -2097082300 to i16*), align 4, !dbg !3587
  %22 = zext i16 %21 to i32, !dbg !3587
  store i32 %22, i32* %2, align 4, !dbg !3589
  %23 = load volatile i16, i16* inttoptr (i32 -2097082312 to i16*), align 8, !dbg !3590
  %24 = zext i16 %23 to i32, !dbg !3590
  %25 = sub nsw i32 %22, %24, !dbg !3591
  br label %26

26:                                               ; preds = %17, %20, %7, %10
  %27 = phi i32 [ %19, %17 ], [ %25, %20 ], [ %9, %7 ], [ %15, %10 ]
  store i32 %27, i32* %2, align 4, !dbg !3568
  ret void, !dbg !3592
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Read_VFIFO_Data(i32 noundef %0, i8* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !3593 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3597, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i8* %1, metadata !3598, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i32 %2, metadata !3599, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i32 0, metadata !3600, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i32 0, metadata !3600, metadata !DIExpression()), !dbg !3601
  %4 = icmp eq i32 %2, 0, !dbg !3602
  br i1 %4, label %15, label %5, !dbg !3605

5:                                                ; preds = %3, %12
  %6 = phi i32 [ %13, %12 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3600, metadata !DIExpression()), !dbg !3601
  switch i32 %0, label %12 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !3606

7:                                                ; preds = %5
  br label %8, !dbg !3608

8:                                                ; preds = %5, %7
  %9 = phi i8* [ inttoptr (i32 2030044416 to i8*), %7 ], [ inttoptr (i32 2030043904 to i8*), %5 ]
  %10 = load volatile i8, i8* %9, align 256, !dbg !3612
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3612
  store i8 %10, i8* %11, align 1, !dbg !3612
  br label %12, !dbg !3613

12:                                               ; preds = %8, %5
  %13 = add nuw i32 %6, 1, !dbg !3613
  call void @llvm.dbg.value(metadata i32 %13, metadata !3600, metadata !DIExpression()), !dbg !3601
  %14 = icmp eq i32 %13, %2, !dbg !3602
  br i1 %14, label %15, label %5, !dbg !3605, !llvm.loop !3614

15:                                               ; preds = %12, %3
  ret void, !dbg !3616
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Write_VFIFO_Data(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !3617 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3623, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata i8* %1, metadata !3624, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata i32 %2, metadata !3625, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata i32 0, metadata !3626, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata i32 0, metadata !3626, metadata !DIExpression()), !dbg !3627
  %4 = icmp eq i32 %2, 0, !dbg !3628
  br i1 %4, label %16, label %5, !dbg !3631

5:                                                ; preds = %3, %13
  %6 = phi i32 [ %14, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3626, metadata !DIExpression()), !dbg !3627
  switch i32 %0, label %13 [
    i32 0, label %7
    i32 1, label %10
  ], !dbg !3632

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3634
  %9 = load i8, i8* %8, align 1, !dbg !3634
  store volatile i8 %9, i8* inttoptr (i32 2030043648 to i8*), align 512, !dbg !3637
  br label %13, !dbg !3638

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3639
  %12 = load i8, i8* %11, align 1, !dbg !3639
  store volatile i8 %12, i8* inttoptr (i32 2030044160 to i8*), align 1024, !dbg !3642
  br label %13, !dbg !3643

13:                                               ; preds = %5, %7, %10
  %14 = add nuw i32 %6, 1, !dbg !3644
  call void @llvm.dbg.value(metadata i32 %14, metadata !3626, metadata !DIExpression()), !dbg !3627
  %15 = icmp eq i32 %14, %2, !dbg !3628
  br i1 %15, label %16, label %5, !dbg !3631, !llvm.loop !3645

16:                                               ; preds = %13, %3
  ret void, !dbg !3647
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Tx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !dbg !3648 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3652, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i8* %1, metadata !3653, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i32 %2, metadata !3654, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i32 %3, metadata !3655, metadata !DIExpression()), !dbg !3656
  switch i32 %0, label %9 [
    i32 0, label %6
    i32 1, label %5
  ], !dbg !3657

5:                                                ; preds = %4
  br label %6, !dbg !3658

6:                                                ; preds = %4, %5
  %7 = phi i32 [ 16, %5 ], [ 14, %4 ]
  %8 = ptrtoint i8* %1 to i32, !dbg !3662
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %8, i32 noundef %2, i32 noundef %7, i32 noundef 0, i32 noundef %3, i32 noundef 0) #15, !dbg !3662
  tail call void @DMA_Vfifo_Flush(i32 noundef %7) #15, !dbg !3662
  br label %9, !dbg !3663

9:                                                ; preds = %6, %4
  ret void, !dbg !3663
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_SetAdrs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Flush(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Rx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 !dbg !3664 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3668, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i8* %1, metadata !3669, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i32 %2, metadata !3670, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i32 %3, metadata !3671, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i32 %4, metadata !3672, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i32 %5, metadata !3673, metadata !DIExpression()), !dbg !3674
  switch i32 %0, label %11 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !3675

7:                                                ; preds = %6
  br label %8, !dbg !3676

8:                                                ; preds = %6, %7
  %9 = phi i32 [ 17, %7 ], [ 15, %6 ]
  %10 = ptrtoint i8* %1 to i32, !dbg !3680
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %10, i32 noundef %2, i32 noundef %9, i32 noundef %3, i32 noundef %4, i32 noundef %5) #15, !dbg !3680
  tail call void @DMA_Vfifo_Flush(i32 noundef %9) #15, !dbg !3680
  br label %11, !dbg !3681

11:                                               ; preds = %8, %6
  ret void, !dbg !3681
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #0 !dbg !3682 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3686, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata void ()* %1, metadata !3687, metadata !DIExpression()), !dbg !3688
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !3689

3:                                                ; preds = %2
  br label %4, !dbg !3690

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef %5, void ()* noundef %1) #15, !dbg !3694
  br label %6, !dbg !3695

6:                                                ; preds = %4, %2
  ret void, !dbg !3695
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #0 !dbg !3696 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3698, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata void ()* %1, metadata !3699, metadata !DIExpression()), !dbg !3700
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !3701

3:                                                ; preds = %2
  br label %4, !dbg !3702

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_TO_Callback(i32 noundef %5, void ()* noundef %1) #15, !dbg !3706
  br label %6, !dbg !3707

6:                                                ; preds = %4, %2
  ret void, !dbg !3707
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_TO_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !3708 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3710, metadata !DIExpression()), !dbg !3714
  %2 = icmp eq i32 %0, 0, !dbg !3715
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3715
  call void @llvm.dbg.value(metadata i32 %3, metadata !3711, metadata !DIExpression()), !dbg !3714
  %4 = or i32 %3, 12, !dbg !3716
  %5 = inttoptr i32 %4 to i32*, !dbg !3716
  %6 = load volatile i32, i32* %5, align 4, !dbg !3716
  call void @llvm.dbg.value(metadata i32 %6, metadata !3713, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3714
  store volatile i32 191, i32* %5, align 4, !dbg !3717
  %7 = or i32 %3, 8, !dbg !3718
  %8 = inttoptr i32 %7 to i32*, !dbg !3718
  %9 = load volatile i32, i32* %8, align 8, !dbg !3718
  call void @llvm.dbg.value(metadata i32 %9, metadata !3712, metadata !DIExpression()), !dbg !3714
  %10 = and i32 %9, 65327, !dbg !3719
  %11 = or i32 %10, 208, !dbg !3719
  call void @llvm.dbg.value(metadata i32 %9, metadata !3712, metadata !DIExpression(DW_OP_constu, 208, DW_OP_or, DW_OP_stack_value)), !dbg !3714
  store volatile i32 %11, i32* %8, align 8, !dbg !3720
  %12 = or i32 %3, 68, !dbg !3721
  %13 = inttoptr i32 %12 to i32*, !dbg !3721
  store volatile i32 0, i32* %13, align 4, !dbg !3722
  store volatile i32 0, i32* %5, align 4, !dbg !3723
  %14 = or i32 %3, 16, !dbg !3724
  %15 = inttoptr i32 %14 to i32*, !dbg !3724
  store volatile i32 2, i32* %15, align 16, !dbg !3725
  %16 = and i32 %6, 65535, !dbg !3726
  store volatile i32 %16, i32* %5, align 4, !dbg !3727
  ret void, !dbg !3728
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 !dbg !3729 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3733, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i8 %1, metadata !3734, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i8 %2, metadata !3735, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i8 %3, metadata !3736, metadata !DIExpression()), !dbg !3740
  %5 = icmp eq i32 %0, 0, !dbg !3741
  %6 = select i1 %5, i32 -2096955392, i32 -2096889856, !dbg !3741
  call void @llvm.dbg.value(metadata i32 %6, metadata !3737, metadata !DIExpression()), !dbg !3740
  %7 = or i32 %6, 12, !dbg !3742
  %8 = inttoptr i32 %7 to i32*, !dbg !3742
  %9 = load volatile i32, i32* %8, align 4, !dbg !3742
  call void @llvm.dbg.value(metadata i32 %9, metadata !3739, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3740
  store volatile i32 191, i32* %8, align 4, !dbg !3743
  %10 = zext i8 %1 to i32, !dbg !3744
  %11 = or i32 %6, 16, !dbg !3745
  %12 = inttoptr i32 %11 to i32*, !dbg !3745
  store volatile i32 %10, i32* %12, align 16, !dbg !3746
  %13 = or i32 %6, 20, !dbg !3747
  %14 = inttoptr i32 %13 to i32*, !dbg !3747
  store volatile i32 %10, i32* %14, align 4, !dbg !3748
  %15 = zext i8 %2 to i32, !dbg !3749
  %16 = or i32 %6, 24, !dbg !3750
  %17 = inttoptr i32 %16 to i32*, !dbg !3750
  store volatile i32 %15, i32* %17, align 8, !dbg !3751
  %18 = or i32 %6, 28, !dbg !3752
  %19 = inttoptr i32 %18 to i32*, !dbg !3752
  store volatile i32 %15, i32* %19, align 4, !dbg !3753
  %20 = or i32 %6, 8, !dbg !3754
  %21 = inttoptr i32 %20 to i32*, !dbg !3754
  %22 = load volatile i32, i32* %21, align 8, !dbg !3754
  call void @llvm.dbg.value(metadata i32 %22, metadata !3738, metadata !DIExpression()), !dbg !3740
  %23 = and i32 %22, 65525, !dbg !3755
  %24 = or i32 %23, 10, !dbg !3755
  call void @llvm.dbg.value(metadata i32 %22, metadata !3738, metadata !DIExpression(DW_OP_constu, 10, DW_OP_or, DW_OP_stack_value)), !dbg !3740
  store volatile i32 %24, i32* %21, align 8, !dbg !3756
  %25 = and i32 %9, 65535, !dbg !3757
  store volatile i32 %25, i32* %8, align 4, !dbg !3758
  %26 = zext i8 %3 to i32, !dbg !3759
  %27 = or i32 %6, 64, !dbg !3760
  %28 = inttoptr i32 %27 to i32*, !dbg !3760
  store volatile i32 %26, i32* %28, align 64, !dbg !3761
  %29 = or i32 %6, 68, !dbg !3762
  %30 = inttoptr i32 %29 to i32*, !dbg !3762
  store volatile i32 1, i32* %30, align 4, !dbg !3763
  ret void, !dbg !3764
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !3765 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3767, metadata !DIExpression()), !dbg !3770
  %2 = icmp eq i32 %0, 0, !dbg !3771
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3771
  call void @llvm.dbg.value(metadata i32 %3, metadata !3768, metadata !DIExpression()), !dbg !3770
  %4 = or i32 %3, 12, !dbg !3772
  %5 = inttoptr i32 %4 to i32*, !dbg !3772
  %6 = load volatile i32, i32* %5, align 4, !dbg !3772
  call void @llvm.dbg.value(metadata i32 %6, metadata !3769, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3770
  store volatile i32 191, i32* %5, align 4, !dbg !3773
  %7 = or i32 %3, 8, !dbg !3774
  %8 = inttoptr i32 %7 to i32*, !dbg !3774
  store volatile i32 0, i32* %8, align 8, !dbg !3775
  store volatile i32 0, i32* %5, align 4, !dbg !3776
  %9 = and i32 %6, 65535, !dbg !3777
  store volatile i32 %9, i32* %5, align 4, !dbg !3778
  ret void, !dbg !3779
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_reset_default_value(i32 noundef %0) local_unnamed_addr #3 !dbg !3780 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3782, metadata !DIExpression()), !dbg !3784
  %2 = icmp eq i32 %0, 0, !dbg !3785
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3785
  call void @llvm.dbg.value(metadata i32 %3, metadata !3783, metadata !DIExpression()), !dbg !3784
  %4 = or i32 %3, 12, !dbg !3786
  %5 = inttoptr i32 %4 to i32*, !dbg !3786
  store volatile i32 191, i32* %5, align 4, !dbg !3787
  %6 = or i32 %3, 8, !dbg !3788
  %7 = inttoptr i32 %6 to i32*, !dbg !3788
  store volatile i32 16, i32* %7, align 8, !dbg !3789
  %8 = or i32 %3, 16, !dbg !3790
  %9 = inttoptr i32 %8 to i32*, !dbg !3790
  store volatile i32 0, i32* %9, align 16, !dbg !3791
  %10 = or i32 %3, 24, !dbg !3792
  %11 = inttoptr i32 %10 to i32*, !dbg !3792
  store volatile i32 0, i32* %11, align 8, !dbg !3793
  store volatile i32 128, i32* %5, align 4, !dbg !3794
  %12 = inttoptr i32 %3 to i32*, !dbg !3795
  store volatile i32 0, i32* %12, align 65536, !dbg !3796
  %13 = or i32 %3, 4, !dbg !3797
  %14 = inttoptr i32 %13 to i32*, !dbg !3797
  store volatile i32 0, i32* %14, align 4, !dbg !3798
  store volatile i32 0, i32* %5, align 4, !dbg !3799
  store volatile i32 0, i32* %14, align 4, !dbg !3800
  store volatile i32 0, i32* %7, align 8, !dbg !3801
  store volatile i32 191, i32* %5, align 4, !dbg !3802
  store volatile i32 0, i32* %7, align 8, !dbg !3803
  store volatile i32 0, i32* %5, align 4, !dbg !3804
  store volatile i32 0, i32* %9, align 16, !dbg !3805
  %15 = or i32 %3, 28, !dbg !3806
  %16 = inttoptr i32 %15 to i32*, !dbg !3806
  store volatile i32 0, i32* %16, align 4, !dbg !3807
  %17 = or i32 %3, 36, !dbg !3808
  %18 = inttoptr i32 %17 to i32*, !dbg !3808
  store volatile i32 0, i32* %18, align 4, !dbg !3809
  %19 = or i32 %3, 40, !dbg !3810
  %20 = inttoptr i32 %19 to i32*, !dbg !3810
  store volatile i32 0, i32* %20, align 8, !dbg !3811
  %21 = or i32 %3, 44, !dbg !3812
  %22 = inttoptr i32 %21 to i32*, !dbg !3812
  store volatile i32 0, i32* %22, align 4, !dbg !3813
  %23 = or i32 %3, 52, !dbg !3814
  %24 = inttoptr i32 %23 to i32*, !dbg !3814
  store volatile i32 0, i32* %24, align 4, !dbg !3815
  %25 = or i32 %3, 60, !dbg !3816
  %26 = inttoptr i32 %25 to i32*, !dbg !3816
  store volatile i32 0, i32* %26, align 4, !dbg !3817
  %27 = or i32 %3, 64, !dbg !3818
  %28 = inttoptr i32 %27 to i32*, !dbg !3818
  store volatile i32 0, i32* %28, align 64, !dbg !3819
  %29 = or i32 %3, 68, !dbg !3820
  %30 = inttoptr i32 %29 to i32*, !dbg !3820
  store volatile i32 0, i32* %30, align 4, !dbg !3821
  %31 = or i32 %3, 72, !dbg !3822
  %32 = inttoptr i32 %31 to i32*, !dbg !3822
  store volatile i32 0, i32* %32, align 8, !dbg !3823
  %33 = or i32 %3, 76, !dbg !3824
  %34 = inttoptr i32 %33 to i32*, !dbg !3824
  store volatile i32 0, i32* %34, align 4, !dbg !3825
  %35 = or i32 %3, 80, !dbg !3826
  %36 = inttoptr i32 %35 to i32*, !dbg !3826
  store volatile i32 0, i32* %36, align 16, !dbg !3827
  %37 = or i32 %3, 84, !dbg !3828
  %38 = inttoptr i32 %37 to i32*, !dbg !3828
  store volatile i32 0, i32* %38, align 4, !dbg !3829
  %39 = or i32 %3, 88, !dbg !3830
  %40 = inttoptr i32 %39 to i32*, !dbg !3830
  store volatile i32 0, i32* %40, align 8, !dbg !3831
  %41 = or i32 %3, 96, !dbg !3832
  %42 = inttoptr i32 %41 to i32*, !dbg !3832
  store volatile i32 0, i32* %42, align 32, !dbg !3833
  ret void, !dbg !3834
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_query_empty(i32 noundef %0) local_unnamed_addr #3 !dbg !3835 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3837, metadata !DIExpression()), !dbg !3839
  %2 = icmp eq i32 %0, 0, !dbg !3840
  call void @llvm.dbg.value(metadata i32 undef, metadata !3838, metadata !DIExpression()), !dbg !3839
  %3 = select i1 %2, i32 -2096955372, i32 -2096889836
  %4 = inttoptr i32 %3 to i32*
  br label %5, !dbg !3841

5:                                                ; preds = %5, %1
  %6 = load volatile i32, i32* %4, align 4, !dbg !3842
  %7 = and i32 %6, 64, !dbg !3843
  %8 = icmp eq i32 %7, 0, !dbg !3844
  br i1 %8, label %5, label %9, !dbg !3841, !llvm.loop !3845

9:                                                ; preds = %5
  ret void, !dbg !3847
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_fatal_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3848 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3852, metadata !DIExpression()), !dbg !3865
  call void @llvm.dbg.value(metadata i32 %1, metadata !3853, metadata !DIExpression()), !dbg !3865
  call void @llvm.dbg.value(metadata i8* %2, metadata !3854, metadata !DIExpression()), !dbg !3865
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3866
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3866
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3855, metadata !DIExpression()), !dbg !3867
  %7 = bitcast i32* %5 to i8*, !dbg !3868
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #18, !dbg !3868
  call void @llvm.dbg.value(metadata i32* %5, metadata !3864, metadata !DIExpression(DW_OP_deref)), !dbg !3865
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #15, !dbg !3869
  call void @llvm.va_start(i8* nonnull %6), !dbg !3870
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3871
  %10 = load i32, i32* %9, align 4, !dbg !3871
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3871
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #15, !dbg !3871
  call void @llvm.va_end(i8* nonnull %6), !dbg !3872
  %13 = load i32, i32* %5, align 4, !dbg !3873
  call void @llvm.dbg.value(metadata i32 %13, metadata !3864, metadata !DIExpression()), !dbg !3865
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #15, !dbg !3874
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #18, !dbg !3875
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3875
  ret void, !dbg !3875
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #9

; Function Attrs: optsize
declare dso_local i32 @vprintf(i8* noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #9

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_error_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3876 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3878, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata i32 %1, metadata !3879, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata i8* %2, metadata !3880, metadata !DIExpression()), !dbg !3883
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3884
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3884
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3881, metadata !DIExpression()), !dbg !3885
  %7 = bitcast i32* %5 to i8*, !dbg !3886
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #18, !dbg !3886
  call void @llvm.dbg.value(metadata i32* %5, metadata !3882, metadata !DIExpression(DW_OP_deref)), !dbg !3883
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #15, !dbg !3887
  call void @llvm.va_start(i8* nonnull %6), !dbg !3888
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3889
  %10 = load i32, i32* %9, align 4, !dbg !3889
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3889
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #15, !dbg !3889
  call void @llvm.va_end(i8* nonnull %6), !dbg !3890
  %13 = load i32, i32* %5, align 4, !dbg !3891
  call void @llvm.dbg.value(metadata i32 %13, metadata !3882, metadata !DIExpression()), !dbg !3883
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #15, !dbg !3892
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #18, !dbg !3893
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3893
  ret void, !dbg !3893
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_warning_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3894 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3896, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata i32 %1, metadata !3897, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata i8* %2, metadata !3898, metadata !DIExpression()), !dbg !3901
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3902
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3902
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3899, metadata !DIExpression()), !dbg !3903
  %7 = bitcast i32* %5 to i8*, !dbg !3904
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #18, !dbg !3904
  call void @llvm.dbg.value(metadata i32* %5, metadata !3900, metadata !DIExpression(DW_OP_deref)), !dbg !3901
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #15, !dbg !3905
  call void @llvm.va_start(i8* nonnull %6), !dbg !3906
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3907
  %10 = load i32, i32* %9, align 4, !dbg !3907
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3907
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #15, !dbg !3907
  call void @llvm.va_end(i8* nonnull %6), !dbg !3908
  %13 = load i32, i32* %5, align 4, !dbg !3909
  call void @llvm.dbg.value(metadata i32 %13, metadata !3900, metadata !DIExpression()), !dbg !3901
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #15, !dbg !3910
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #18, !dbg !3911
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3911
  ret void, !dbg !3911
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_info_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !3912 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3914, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.value(metadata i32 %1, metadata !3915, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.value(metadata i8* %2, metadata !3916, metadata !DIExpression()), !dbg !3919
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3920
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3920
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3917, metadata !DIExpression()), !dbg !3921
  %7 = bitcast i32* %5 to i8*, !dbg !3922
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #18, !dbg !3922
  call void @llvm.dbg.value(metadata i32* %5, metadata !3918, metadata !DIExpression(DW_OP_deref)), !dbg !3919
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #15, !dbg !3923
  call void @llvm.va_start(i8* nonnull %6), !dbg !3924
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3925
  %10 = load i32, i32* %9, align 4, !dbg !3925
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3925
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #15, !dbg !3925
  call void @llvm.va_end(i8* nonnull %6), !dbg !3926
  %13 = load i32, i32* %5, align 4, !dbg !3927
  call void @llvm.dbg.value(metadata i32 %13, metadata !3918, metadata !DIExpression()), !dbg !3919
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #15, !dbg !3928
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #18, !dbg !3929
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3929
  ret void, !dbg !3929
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @log_hal_dump_internal(i8* nocapture noundef %0, i32 noundef %1, i8* nocapture noundef %2, i8* nocapture noundef %3, i32 noundef %4, ...) local_unnamed_addr #10 !dbg !3930 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3936, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata i32 %1, metadata !3937, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata i8* %2, metadata !3938, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata i8* %3, metadata !3939, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata i32 %4, metadata !3940, metadata !DIExpression()), !dbg !3941
  ret void, !dbg !3942
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_eint_mask(i32 noundef %0) local_unnamed_addr #0 !dbg !3943 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3948, metadata !DIExpression()), !dbg !3950
  %3 = bitcast i32* %2 to i8*, !dbg !3951
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #18, !dbg !3951
  call void @llvm.dbg.value(metadata i32* %2, metadata !3949, metadata !DIExpression(DW_OP_deref)), !dbg !3950
  %4 = call fastcc i32 @hal_eint_convert_for_gpio(i32 noundef %0, i32* noundef nonnull %2) #16, !dbg !3952
  %5 = icmp eq i32 %4, 0, !dbg !3954
  br i1 %5, label %7, label %6, !dbg !3955

6:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.hal_eint_mask, i32 0, i32 0), i32 noundef 232, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0)) #15, !dbg !3956
  br label %11, !dbg !3958

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4, !dbg !3959
  call void @llvm.dbg.value(metadata i32 %8, metadata !3949, metadata !DIExpression()), !dbg !3950
  %9 = tail call i32 @eint_set_mask(i32 noundef %8) #15, !dbg !3960
  %10 = getelementptr inbounds [23 x i32], [23 x i32]* @is_eint_masked, i32 0, i32 %0, !dbg !3961
  store i32 1, i32* %10, align 4, !dbg !3962
  br label %11, !dbg !3963

11:                                               ; preds = %7, %6
  %12 = phi i32 [ -1, %6 ], [ 0, %7 ], !dbg !3950
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #18, !dbg !3964
  ret i32 %12, !dbg !3964
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize writeonly
define internal fastcc i32 @hal_eint_convert_for_gpio(i32 noundef %0, i32* nocapture noundef writeonly %1) unnamed_addr #11 !dbg !3965 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3970, metadata !DIExpression()), !dbg !3974
  call void @llvm.dbg.value(metadata i32* %1, metadata !3971, metadata !DIExpression()), !dbg !3974
  call void @llvm.dbg.value(metadata i32 23, metadata !3972, metadata !DIExpression()), !dbg !3974
  call void @llvm.dbg.value(metadata i32 0, metadata !3973, metadata !DIExpression()), !dbg !3974
  call void @llvm.dbg.value(metadata i32 0, metadata !3973, metadata !DIExpression()), !dbg !3974
  br label %3, !dbg !3975

3:                                                ; preds = %2, %11
  %4 = phi i32 [ 0, %2 ], [ %12, %11 ]
  call void @llvm.dbg.value(metadata i32 %4, metadata !3973, metadata !DIExpression()), !dbg !3974
  %5 = getelementptr inbounds [23 x %struct.hal_eint_gpio_map_t], [23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table, i32 0, i32 %4, i32 0, !dbg !3977
  %6 = load i32, i32* %5, align 4, !dbg !3977
  %7 = icmp eq i32 %6, %0, !dbg !3981
  br i1 %7, label %8, label %11, !dbg !3982

8:                                                ; preds = %3
  %9 = getelementptr inbounds [23 x %struct.hal_eint_gpio_map_t], [23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table, i32 0, i32 %4, i32 1, !dbg !3983
  %10 = load i32, i32* %9, align 4, !dbg !3983
  store i32 %10, i32* %1, align 4, !dbg !3985
  br label %14, !dbg !3986

11:                                               ; preds = %3
  %12 = add nuw nsw i32 %4, 1, !dbg !3987
  call void @llvm.dbg.value(metadata i32 %12, metadata !3973, metadata !DIExpression()), !dbg !3974
  %13 = icmp eq i32 %12, 23, !dbg !3988
  br i1 %13, label %14, label %3, !dbg !3975, !llvm.loop !3989

14:                                               ; preds = %11, %8
  %15 = phi i32 [ 0, %8 ], [ -1, %11 ], !dbg !3974
  ret i32 %15, !dbg !3991
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_eint_unmask(i32 noundef %0) local_unnamed_addr #0 !dbg !3992 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3994, metadata !DIExpression()), !dbg !3996
  %3 = bitcast i32* %2 to i8*, !dbg !3997
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #18, !dbg !3997
  call void @llvm.dbg.value(metadata i32* %2, metadata !3995, metadata !DIExpression(DW_OP_deref)), !dbg !3996
  %4 = call fastcc i32 @hal_eint_convert_for_gpio(i32 noundef %0, i32* noundef nonnull %2) #16, !dbg !3998
  %5 = icmp eq i32 %4, 0, !dbg !4000
  br i1 %5, label %7, label %6, !dbg !4001

6:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.hal_eint_unmask, i32 0, i32 0), i32 noundef 244, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0)) #15, !dbg !4002
  br label %11, !dbg !4004

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4, !dbg !4005
  call void @llvm.dbg.value(metadata i32 %8, metadata !3995, metadata !DIExpression()), !dbg !3996
  %9 = tail call i32 @eint_set_unmask(i32 noundef %8) #15, !dbg !4006
  %10 = getelementptr inbounds [23 x i32], [23 x i32]* @is_eint_masked, i32 0, i32 %0, !dbg !4007
  store i32 0, i32* %10, align 4, !dbg !4008
  br label %11, !dbg !4009

11:                                               ; preds = %7, %6
  %12 = phi i32 [ -1, %6 ], [ 0, %7 ], !dbg !3996
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #18, !dbg !4010
  ret i32 %12, !dbg !4010
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_eint_init(i32 noundef %0, %struct.gpio_backup_restore_t* noundef readonly %1) local_unnamed_addr #0 !dbg !4011 {
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4023, metadata !DIExpression()), !dbg !4031
  call void @llvm.dbg.value(metadata %struct.gpio_backup_restore_t* %1, metadata !4024, metadata !DIExpression()), !dbg !4031
  %4 = bitcast i32* %3 to i8*, !dbg !4032
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #18, !dbg !4032
  call void @llvm.dbg.value(metadata i32* %3, metadata !4025, metadata !DIExpression(DW_OP_deref)), !dbg !4031
  %5 = call fastcc i32 @hal_eint_convert_for_gpio(i32 noundef %0, i32* noundef nonnull %3) #16, !dbg !4033
  %6 = icmp eq i32 %5, 0, !dbg !4035
  br i1 %6, label %8, label %7, !dbg !4036

7:                                                ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.hal_eint_init, i32 0, i32 0), i32 noundef 258, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0)) #15, !dbg !4037
  br label %32, !dbg !4039

8:                                                ; preds = %2
  %9 = icmp eq %struct.gpio_backup_restore_t* %1, null, !dbg !4040
  br i1 %9, label %10, label %11, !dbg !4042

10:                                               ; preds = %8
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.hal_eint_init, i32 0, i32 0), i32 noundef 262, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1.18, i32 0, i32 0)) #15, !dbg !4043
  br label %32, !dbg !4045

11:                                               ; preds = %8
  %12 = getelementptr inbounds [23 x i32], [23 x i32]* @is_eint_callback_registered, i32 0, i32 %0, !dbg !4046
  %13 = load i32, i32* %12, align 4, !dbg !4046
  %14 = icmp eq i32 %13, 1, !dbg !4047
  %15 = load i32, i32* %3, align 4, !dbg !4048
  call void @llvm.dbg.value(metadata i32 %15, metadata !4025, metadata !DIExpression()), !dbg !4031
  call void @llvm.dbg.value(metadata i32 %15, metadata !4025, metadata !DIExpression()), !dbg !4031
  br i1 %14, label %16, label %22, !dbg !4049

16:                                               ; preds = %11
  %17 = tail call fastcc i32 @hal_eint_apply_config(i32 noundef %15, %struct.gpio_backup_restore_t* noundef nonnull %1) #16, !dbg !4050
  call void @llvm.dbg.value(metadata i32 %17, metadata !4026, metadata !DIExpression()), !dbg !4031
  %18 = icmp eq i32 %17, 0, !dbg !4052
  br i1 %18, label %19, label %32, !dbg !4054

19:                                               ; preds = %16
  %20 = tail call i32 @hal_eint_unmask(i32 noundef %0) #16, !dbg !4055
  call void @llvm.dbg.value(metadata i32 %20, metadata !4026, metadata !DIExpression()), !dbg !4031
  %21 = icmp eq i32 %20, 0, !dbg !4056
  br i1 %21, label %31, label %32, !dbg !4058

22:                                               ; preds = %11
  %23 = tail call fastcc i32 @get_index_from_gpio_pin(i32 noundef %15) #16, !dbg !4059
  call void @llvm.dbg.value(metadata !DIArgList([23 x %struct.hal_eint_callback_context_t]* @g_eint_callback_context, i32 %23), metadata !4027, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 12, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4060
  %24 = getelementptr inbounds [23 x %struct.hal_eint_callback_context_t], [23 x %struct.hal_eint_callback_context_t]* @g_eint_callback_context, i32 0, i32 %23, i32 0, !dbg !4061
  %25 = tail call i8* @memset(i8* noundef nonnull %24, i32 noundef 0, i32 noundef 12) #15, !dbg !4062
  call void @llvm.dbg.value(metadata i32 %15, metadata !4025, metadata !DIExpression()), !dbg !4031
  %26 = tail call fastcc i32 @hal_eint_apply_config(i32 noundef %15, %struct.gpio_backup_restore_t* noundef nonnull %1) #16, !dbg !4063
  call void @llvm.dbg.value(metadata i32 %26, metadata !4026, metadata !DIExpression()), !dbg !4031
  %27 = icmp eq i32 %26, 0, !dbg !4064
  br i1 %27, label %28, label %32, !dbg !4066

28:                                               ; preds = %22
  %29 = tail call i32 @hal_eint_mask(i32 noundef %0) #16, !dbg !4067
  call void @llvm.dbg.value(metadata i32 %29, metadata !4026, metadata !DIExpression()), !dbg !4031
  %30 = icmp eq i32 %29, 0, !dbg !4068
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %19
  br label %32, !dbg !4070

32:                                               ; preds = %22, %19, %16, %28, %31, %10, %7
  %33 = phi i32 [ -1, %7 ], [ -2, %10 ], [ 0, %31 ], [ -1, %28 ], [ -1, %16 ], [ %20, %19 ], [ %26, %22 ], !dbg !4031
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #18, !dbg !4071
  ret i32 %33, !dbg !4071
}

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @hal_eint_apply_config(i32 noundef %0, %struct.gpio_backup_restore_t* nocapture noundef readonly %1) unnamed_addr #0 !dbg !4072 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4076, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata %struct.gpio_backup_restore_t* %1, metadata !4077, metadata !DIExpression()), !dbg !4084
  %5 = bitcast i32* %3 to i8*, !dbg !4085
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #18, !dbg !4085
  %6 = bitcast i32* %4 to i8*, !dbg !4086
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #18, !dbg !4086
  call void @llvm.dbg.value(metadata i32 0, metadata !4083, metadata !DIExpression()), !dbg !4084
  %7 = getelementptr inbounds %struct.gpio_backup_restore_t, %struct.gpio_backup_restore_t* %1, i32 0, i32 0, !dbg !4087
  %8 = load i32, i32* %7, align 4, !dbg !4087
  %9 = icmp ult i32 %8, 5, !dbg !4088
  br i1 %9, label %10, label %30, !dbg !4088

10:                                               ; preds = %2
  %11 = getelementptr inbounds [5 x i32], [5 x i32]* @switch.table.hal_eint_apply_config, i32 0, i32 %8, !dbg !4088
  %12 = load i32, i32* %11, align 4, !dbg !4088
  %13 = getelementptr inbounds [5 x i32], [5 x i32]* @switch.table.hal_eint_set_trigger_mode.5, i32 0, i32 %8, !dbg !4088
  %14 = load i32, i32* %13, align 4, !dbg !4088
  %15 = getelementptr inbounds [5 x i32], [5 x i32]* @switch.table.hal_eint_set_trigger_mode.6, i32 0, i32 %8, !dbg !4088
  %16 = load i32, i32* %15, align 4, !dbg !4088
  call void @llvm.dbg.value(metadata i32 %16, metadata !4083, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i32 %14, metadata !4081, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i32 %12, metadata !4080, metadata !DIExpression()), !dbg !4084
  %17 = getelementptr inbounds %struct.gpio_backup_restore_t, %struct.gpio_backup_restore_t* %1, i32 0, i32 1, !dbg !4089
  %18 = load i32, i32* %17, align 4, !dbg !4089
  call void @llvm.dbg.value(metadata i32* %3, metadata !4078, metadata !DIExpression(DW_OP_deref)), !dbg !4084
  call void @llvm.dbg.value(metadata i32* %4, metadata !4082, metadata !DIExpression(DW_OP_deref)), !dbg !4084
  call fastcc void @hal_eint_calc_debounce_parameters(i32 noundef %18, i32* noundef nonnull %4, i32* noundef nonnull %3) #16, !dbg !4090
  %19 = load i32, i32* %3, align 4, !dbg !4091
  call void @llvm.dbg.value(metadata i32 %19, metadata !4078, metadata !DIExpression()), !dbg !4084
  %20 = icmp eq i32 %19, 0, !dbg !4093
  %21 = load i32, i32* %4, align 4, !dbg !4094
  call void @llvm.dbg.value(metadata i32 %21, metadata !4082, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i32 %21, metadata !4082, metadata !DIExpression()), !dbg !4084
  br i1 %20, label %22, label %24, !dbg !4095

22:                                               ; preds = %10
  %23 = tail call i32 @gpio_int(i32 noundef %0, i32 noundef %12, i32 noundef 0, i32 noundef %14, i32 noundef %16, i32 noundef %21, i8 noundef zeroext 0, void (i32)* noundef nonnull @hal_eint_isr) #15, !dbg !4096
  call void @llvm.dbg.value(metadata i32 %23, metadata !4079, metadata !DIExpression()), !dbg !4084
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.hal_eint_apply_config, i32 0, i32 0), i32 noundef 212, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2.19, i32 0, i32 0)) #15, !dbg !4098
  br label %27, !dbg !4099

24:                                               ; preds = %10
  %25 = trunc i32 %19 to i8, !dbg !4100
  %26 = tail call i32 @gpio_int(i32 noundef %0, i32 noundef %12, i32 noundef 1, i32 noundef %14, i32 noundef %16, i32 noundef %21, i8 noundef zeroext %25, void (i32)* noundef nonnull @hal_eint_isr) #15, !dbg !4102
  call void @llvm.dbg.value(metadata i32 %26, metadata !4079, metadata !DIExpression()), !dbg !4084
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi i32 [ %23, %22 ], [ %26, %24 ], !dbg !4094
  call void @llvm.dbg.value(metadata i32 %28, metadata !4079, metadata !DIExpression()), !dbg !4084
  %29 = ashr i32 %28, 31, !dbg !4103
  br label %30, !dbg !4104

30:                                               ; preds = %2, %27
  %31 = phi i32 [ %29, %27 ], [ -1, %2 ], !dbg !4084
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #18, !dbg !4105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #18, !dbg !4105
  ret i32 %31, !dbg !4105
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize readnone
define internal fastcc i32 @get_index_from_gpio_pin(i32 noundef %0) unnamed_addr #12 !dbg !4106 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4110, metadata !DIExpression()), !dbg !4112
  call void @llvm.dbg.value(metadata i32 0, metadata !4111, metadata !DIExpression()), !dbg !4112
  call void @llvm.dbg.value(metadata i32 0, metadata !4111, metadata !DIExpression()), !dbg !4112
  br label %2, !dbg !4113

2:                                                ; preds = %1, %7
  %3 = phi i32 [ 0, %1 ], [ %8, %7 ]
  call void @llvm.dbg.value(metadata i32 %3, metadata !4111, metadata !DIExpression()), !dbg !4112
  %4 = getelementptr inbounds [23 x %struct.hal_eint_gpio_map_t], [23 x %struct.hal_eint_gpio_map_t]* @eint_gpio_table, i32 0, i32 %3, i32 1, !dbg !4115
  %5 = load i32, i32* %4, align 4, !dbg !4115
  %6 = icmp eq i32 %5, %0, !dbg !4119
  br i1 %6, label %10, label %7, !dbg !4120

7:                                                ; preds = %2
  %8 = add nuw nsw i32 %3, 1, !dbg !4121
  call void @llvm.dbg.value(metadata i32 %8, metadata !4111, metadata !DIExpression()), !dbg !4112
  %9 = icmp eq i32 %8, 23, !dbg !4122
  br i1 %9, label %10, label %2, !dbg !4113, !llvm.loop !4123

10:                                               ; preds = %7, %2
  %11 = phi i32 [ %3, %2 ], [ -1, %7 ], !dbg !4112
  ret i32 %11, !dbg !4125
}

; Function Attrs: optsize
declare dso_local i8* @memset(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define internal fastcc void @hal_eint_calc_debounce_parameters(i32 noundef %0, i32* nocapture noundef writeonly %1, i32* nocapture noundef writeonly %2) unnamed_addr #13 !dbg !4126 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4131, metadata !DIExpression()), !dbg !4136
  call void @llvm.dbg.value(metadata i32* %1, metadata !4132, metadata !DIExpression()), !dbg !4136
  call void @llvm.dbg.value(metadata i32* %2, metadata !4133, metadata !DIExpression()), !dbg !4136
  call void @llvm.dbg.value(metadata i32 10, metadata !4134, metadata !DIExpression()), !dbg !4136
  call void @llvm.dbg.value(metadata i32 0, metadata !4135, metadata !DIExpression()), !dbg !4136
  %4 = shl i32 %0, 3, !dbg !4137
  call void @llvm.dbg.value(metadata i32 %4, metadata !4135, metadata !DIExpression()), !dbg !4136
  %5 = icmp ult i32 %4, 11, !dbg !4139
  br i1 %5, label %6, label %7, !dbg !4140

6:                                                ; preds = %3
  store i32 0, i32* %1, align 4, !dbg !4141
  br label %32, !dbg !4143

7:                                                ; preds = %3
  %8 = shl i32 %0, 2, !dbg !4144
  call void @llvm.dbg.value(metadata i32 %8, metadata !4135, metadata !DIExpression()), !dbg !4136
  %9 = icmp ult i32 %8, 11, !dbg !4146
  br i1 %9, label %10, label %11, !dbg !4147

10:                                               ; preds = %7
  store i32 1, i32* %1, align 4, !dbg !4148
  br label %32, !dbg !4150

11:                                               ; preds = %7
  %12 = shl i32 %0, 1, !dbg !4151
  call void @llvm.dbg.value(metadata i32 %12, metadata !4135, metadata !DIExpression()), !dbg !4136
  %13 = icmp ult i32 %12, 11, !dbg !4153
  br i1 %13, label %14, label %15, !dbg !4154

14:                                               ; preds = %11
  store i32 2, i32* %1, align 4, !dbg !4155
  br label %32, !dbg !4157

15:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i32 %0, metadata !4135, metadata !DIExpression()), !dbg !4136
  %16 = icmp ult i32 %0, 11, !dbg !4158
  br i1 %16, label %17, label %18, !dbg !4160

17:                                               ; preds = %15
  store i32 3, i32* %1, align 4, !dbg !4161
  br label %32, !dbg !4163

18:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i32 %0, metadata !4135, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shr, DW_OP_stack_value)), !dbg !4136
  %19 = icmp ult i32 %0, 22, !dbg !4164
  br i1 %19, label %20, label %22, !dbg !4166

20:                                               ; preds = %18
  %21 = lshr i32 %0, 1, !dbg !4167
  call void @llvm.dbg.value(metadata i32 %21, metadata !4135, metadata !DIExpression()), !dbg !4136
  store i32 4, i32* %1, align 4, !dbg !4168
  br label %32, !dbg !4170

22:                                               ; preds = %18
  call void @llvm.dbg.value(metadata i32 %0, metadata !4135, metadata !DIExpression(DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value)), !dbg !4136
  %23 = icmp ult i32 %0, 44, !dbg !4171
  br i1 %23, label %24, label %26, !dbg !4173

24:                                               ; preds = %22
  %25 = lshr i32 %0, 2, !dbg !4174
  call void @llvm.dbg.value(metadata i32 %25, metadata !4135, metadata !DIExpression()), !dbg !4136
  store i32 5, i32* %1, align 4, !dbg !4175
  br label %32, !dbg !4177

26:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i32 %0, metadata !4135, metadata !DIExpression(DW_OP_constu, 3, DW_OP_shr, DW_OP_stack_value)), !dbg !4136
  %27 = icmp ult i32 %0, 88, !dbg !4178
  br i1 %27, label %28, label %30, !dbg !4180

28:                                               ; preds = %26
  %29 = lshr i32 %0, 3, !dbg !4181
  call void @llvm.dbg.value(metadata i32 %29, metadata !4135, metadata !DIExpression()), !dbg !4136
  store i32 6, i32* %1, align 4, !dbg !4182
  br label %32

30:                                               ; preds = %26
  store i32 7, i32* %1, align 4, !dbg !4184
  %31 = lshr i32 %0, 4, !dbg !4186
  br label %32, !dbg !4187

32:                                               ; preds = %6, %14, %20, %28, %24, %17, %10, %30
  %33 = phi i32 [ %31, %30 ], [ %4, %6 ], [ %8, %10 ], [ %12, %14 ], [ %0, %17 ], [ %21, %20 ], [ %25, %24 ], [ %29, %28 ], !dbg !4136
  store i32 %33, i32* %2, align 4, !dbg !4136
  ret void, !dbg !4188
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_eint_isr(i32 noundef %0) #0 !dbg !4189 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4191, metadata !DIExpression()), !dbg !4193
  %2 = tail call fastcc i32 @get_index_from_gpio_pin(i32 noundef %0) #16, !dbg !4194
  call void @llvm.dbg.value(metadata !DIArgList([23 x %struct.hal_eint_callback_context_t]* @g_eint_callback_context, i32 %2), metadata !4192, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 12, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4193
  %3 = getelementptr inbounds [23 x %struct.hal_eint_callback_context_t], [23 x %struct.hal_eint_callback_context_t]* @g_eint_callback_context, i32 0, i32 %2, i32 0, !dbg !4195
  %4 = load i8, i8* %3, align 4, !dbg !4195, !range !4197
  %5 = icmp eq i8 %4, 0, !dbg !4195
  br i1 %5, label %13, label %6, !dbg !4198

6:                                                ; preds = %1
  %7 = getelementptr inbounds [23 x %struct.hal_eint_callback_context_t], [23 x %struct.hal_eint_callback_context_t]* @g_eint_callback_context, i32 0, i32 %2, i32 1, !dbg !4199
  %8 = load void (i8*)*, void (i8*)** %7, align 4, !dbg !4199
  %9 = icmp eq void (i8*)* %8, null, !dbg !4200
  br i1 %9, label %13, label %10, !dbg !4201

10:                                               ; preds = %6
  %11 = getelementptr inbounds [23 x %struct.hal_eint_callback_context_t], [23 x %struct.hal_eint_callback_context_t]* @g_eint_callback_context, i32 0, i32 %2, i32 2, !dbg !4202
  %12 = load i8*, i8** %11, align 4, !dbg !4202
  tail call void %8(i8* noundef %12) #15, !dbg !4204
  br label %13, !dbg !4205

13:                                               ; preds = %10, %6, %1
  ret void, !dbg !4206
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_eint_deinit(i32 noundef %0) local_unnamed_addr #0 !dbg !4207 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4209, metadata !DIExpression()), !dbg !4213
  %3 = bitcast i32* %2 to i8*, !dbg !4214
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #18, !dbg !4214
  call void @llvm.dbg.value(metadata i32* %2, metadata !4210, metadata !DIExpression(DW_OP_deref)), !dbg !4213
  %4 = call fastcc i32 @hal_eint_convert_for_gpio(i32 noundef %0, i32* noundef nonnull %2) #16, !dbg !4215
  %5 = icmp eq i32 %4, 0, !dbg !4217
  br i1 %5, label %7, label %6, !dbg !4218

6:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.hal_eint_deinit, i32 0, i32 0), i32 noundef 302, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0)) #15, !dbg !4219
  br label %16, !dbg !4221

7:                                                ; preds = %1
  %8 = tail call i32 @hal_eint_mask(i32 noundef %0) #16, !dbg !4222
  call void @llvm.dbg.value(metadata i32 %8, metadata !4211, metadata !DIExpression()), !dbg !4213
  %9 = icmp eq i32 %8, 0, !dbg !4223
  br i1 %9, label %10, label %16, !dbg !4225

10:                                               ; preds = %7
  %11 = load i32, i32* %2, align 4, !dbg !4226
  call void @llvm.dbg.value(metadata i32 %11, metadata !4210, metadata !DIExpression()), !dbg !4213
  %12 = tail call fastcc i32 @get_index_from_gpio_pin(i32 noundef %11) #16, !dbg !4227
  call void @llvm.dbg.value(metadata !DIArgList([23 x %struct.hal_eint_callback_context_t]* @g_eint_callback_context, i32 %12), metadata !4212, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 12, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4213
  %13 = getelementptr inbounds [23 x %struct.hal_eint_callback_context_t], [23 x %struct.hal_eint_callback_context_t]* @g_eint_callback_context, i32 0, i32 %12, i32 0, !dbg !4228
  %14 = tail call i8* @memset(i8* noundef nonnull %13, i32 noundef 0, i32 noundef 12) #15, !dbg !4229
  %15 = getelementptr inbounds [23 x i32], [23 x i32]* @is_eint_callback_registered, i32 0, i32 %0, !dbg !4230
  store i32 0, i32* %15, align 4, !dbg !4231
  br label %16

16:                                               ; preds = %7, %10, %6
  %17 = phi i32 [ -1, %6 ], [ 0, %10 ], [ %8, %7 ], !dbg !4213
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #18, !dbg !4232
  ret i32 %17, !dbg !4232
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_eint_register_callback(i32 noundef %0, void (i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #0 !dbg !4233 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4237, metadata !DIExpression()), !dbg !4243
  call void @llvm.dbg.value(metadata void (i8*)* %1, metadata !4238, metadata !DIExpression()), !dbg !4243
  call void @llvm.dbg.value(metadata i8* %2, metadata !4239, metadata !DIExpression()), !dbg !4243
  %5 = bitcast i32* %4 to i8*, !dbg !4244
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #18, !dbg !4244
  call void @llvm.dbg.value(metadata i32* %4, metadata !4240, metadata !DIExpression(DW_OP_deref)), !dbg !4243
  %6 = call fastcc i32 @hal_eint_convert_for_gpio(i32 noundef %0, i32* noundef nonnull %4) #16, !dbg !4245
  %7 = icmp eq i32 %6, 0, !dbg !4247
  br i1 %7, label %9, label %8, !dbg !4248

8:                                                ; preds = %3
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.hal_eint_register_callback, i32 0, i32 0), i32 noundef 327, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0)) #15, !dbg !4249
  br label %23, !dbg !4251

9:                                                ; preds = %3
  %10 = load i32, i32* %4, align 4, !dbg !4252
  call void @llvm.dbg.value(metadata i32 %10, metadata !4240, metadata !DIExpression()), !dbg !4243
  %11 = tail call fastcc i32 @get_index_from_gpio_pin(i32 noundef %10) #16, !dbg !4253
  call void @llvm.dbg.value(metadata !DIArgList([23 x %struct.hal_eint_callback_context_t]* @g_eint_callback_context, i32 %11), metadata !4242, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 12, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4243
  %12 = getelementptr inbounds [23 x %struct.hal_eint_callback_context_t], [23 x %struct.hal_eint_callback_context_t]* @g_eint_callback_context, i32 0, i32 %11, i32 1, !dbg !4254
  store void (i8*)* %1, void (i8*)** %12, align 4, !dbg !4255
  %13 = getelementptr inbounds [23 x %struct.hal_eint_callback_context_t], [23 x %struct.hal_eint_callback_context_t]* @g_eint_callback_context, i32 0, i32 %11, i32 2, !dbg !4256
  store i8* %2, i8** %13, align 4, !dbg !4257
  %14 = getelementptr inbounds [23 x %struct.hal_eint_callback_context_t], [23 x %struct.hal_eint_callback_context_t]* @g_eint_callback_context, i32 0, i32 %11, i32 0, !dbg !4258
  store i8 1, i8* %14, align 4, !dbg !4259
  %15 = getelementptr inbounds [23 x i32], [23 x i32]* @is_eint_callback_registered, i32 0, i32 %0, !dbg !4260
  store i32 1, i32* %15, align 4, !dbg !4261
  %16 = getelementptr inbounds [23 x i32], [23 x i32]* @is_eint_masked, i32 0, i32 %0, !dbg !4262
  %17 = load i32, i32* %16, align 4, !dbg !4262
  %18 = icmp eq i32 %17, 1, !dbg !4264
  br i1 %18, label %19, label %22, !dbg !4265

19:                                               ; preds = %9
  %20 = tail call i32 @hal_eint_unmask(i32 noundef %0) #16, !dbg !4266
  call void @llvm.dbg.value(metadata i32 %20, metadata !4241, metadata !DIExpression()), !dbg !4243
  %21 = icmp eq i32 %20, 0, !dbg !4268
  br i1 %21, label %22, label %23, !dbg !4270

22:                                               ; preds = %19, %9
  br label %23, !dbg !4271

23:                                               ; preds = %22, %19, %8
  %24 = phi i32 [ -1, %8 ], [ 0, %22 ], [ %20, %19 ], !dbg !4243
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #18, !dbg !4272
  ret i32 %24, !dbg !4272
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_eint_set_trigger_mode(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4273 {
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4277, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.value(metadata i32 %1, metadata !4278, metadata !DIExpression()), !dbg !4285
  %4 = bitcast i32* %3 to i8*, !dbg !4286
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #18, !dbg !4286
  call void @llvm.dbg.value(metadata i32* %3, metadata !4279, metadata !DIExpression(DW_OP_deref)), !dbg !4285
  %5 = call fastcc i32 @hal_eint_convert_for_gpio(i32 noundef %0, i32* noundef nonnull %3) #16, !dbg !4287
  %6 = icmp eq i32 %5, 0, !dbg !4288
  br i1 %6, label %8, label %7, !dbg !4289

7:                                                ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.hal_eint_set_trigger_mode, i32 0, i32 0), i32 noundef 353, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0)) #15, !dbg !4290
  br label %19, !dbg !4292

8:                                                ; preds = %2
  %9 = icmp ult i32 %1, 5, !dbg !4293
  br i1 %9, label %10, label %19, !dbg !4293

10:                                               ; preds = %8
  %11 = getelementptr inbounds [5 x i32], [5 x i32]* @switch.table.hal_eint_set_trigger_mode, i32 0, i32 %1, !dbg !4293
  %12 = load i32, i32* %11, align 4, !dbg !4293
  %13 = getelementptr inbounds [5 x i32], [5 x i32]* @switch.table.hal_eint_set_trigger_mode.5, i32 0, i32 %1, !dbg !4293
  %14 = load i32, i32* %13, align 4, !dbg !4293
  %15 = getelementptr inbounds [5 x i32], [5 x i32]* @switch.table.hal_eint_set_trigger_mode.6, i32 0, i32 %1, !dbg !4293
  %16 = load i32, i32* %15, align 4, !dbg !4293
  call void @llvm.dbg.value(metadata i32 %16, metadata !4284, metadata !DIExpression()), !dbg !4294
  call void @llvm.dbg.value(metadata i32 %14, metadata !4283, metadata !DIExpression()), !dbg !4294
  call void @llvm.dbg.value(metadata i32 %12, metadata !4280, metadata !DIExpression()), !dbg !4294
  %17 = load i32, i32* %3, align 4, !dbg !4295
  call void @llvm.dbg.value(metadata i32 %17, metadata !4279, metadata !DIExpression()), !dbg !4285
  %18 = tail call i32 @eint_set_trigger_mode(i32 noundef %17, i32 noundef %12, i32 noundef %14, i32 noundef %16) #15, !dbg !4296
  br label %19

19:                                               ; preds = %8, %10, %7
  %20 = phi i32 [ -1, %7 ], [ 0, %10 ], [ -1, %8 ], !dbg !4285
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #18, !dbg !4297
  ret i32 %20, !dbg !4297
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_eint_set_debounce_count(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4298 {
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4302, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.value(metadata i32 %1, metadata !4303, metadata !DIExpression()), !dbg !4306
  %4 = bitcast i32* %3 to i8*, !dbg !4307
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #18, !dbg !4307
  call void @llvm.dbg.value(metadata i32* %3, metadata !4304, metadata !DIExpression(DW_OP_deref)), !dbg !4306
  %5 = call fastcc i32 @hal_eint_convert_for_gpio(i32 noundef %0, i32* noundef nonnull %3) #16, !dbg !4308
  %6 = icmp eq i32 %5, 0, !dbg !4310
  br i1 %6, label %8, label %7, !dbg !4311

7:                                                ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.hal_eint_set_debounce_count, i32 0, i32 0), i32 noundef 409, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0)) #15, !dbg !4312
  br label %14, !dbg !4314

8:                                                ; preds = %2
  %9 = icmp ne i32 %1, 0, !dbg !4315
  %10 = zext i1 %9 to i32
  call void @llvm.dbg.value(metadata i32 %10, metadata !4305, metadata !DIExpression()), !dbg !4306
  %11 = load i32, i32* %3, align 4, !dbg !4317
  call void @llvm.dbg.value(metadata i32 %11, metadata !4304, metadata !DIExpression()), !dbg !4306
  %12 = trunc i32 %1 to i8, !dbg !4318
  %13 = tail call i32 @eint_set_debounce(i32 noundef %11, i32 noundef %10, i32 noundef 0, i8 noundef zeroext %12) #15, !dbg !4319
  br label %14, !dbg !4320

14:                                               ; preds = %8, %7
  %15 = phi i32 [ -1, %7 ], [ 0, %8 ], !dbg !4306
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #18, !dbg !4321
  ret i32 %15, !dbg !4321
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_eint_set_debounce_time(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4322 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4324, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i32 %1, metadata !4325, metadata !DIExpression()), !dbg !4330
  %6 = bitcast i32* %3 to i8*, !dbg !4331
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #18, !dbg !4331
  %7 = bitcast i32* %4 to i8*, !dbg !4332
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #18, !dbg !4332
  %8 = bitcast i32* %5 to i8*, !dbg !4333
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #18, !dbg !4333
  call void @llvm.dbg.value(metadata i32* %3, metadata !4326, metadata !DIExpression(DW_OP_deref)), !dbg !4330
  %9 = call fastcc i32 @hal_eint_convert_for_gpio(i32 noundef %0, i32* noundef nonnull %3) #16, !dbg !4334
  %10 = icmp eq i32 %9, 0, !dbg !4336
  br i1 %10, label %12, label %11, !dbg !4337

11:                                               ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.hal_eint_set_debounce_time, i32 0, i32 0), i32 noundef 431, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0)) #15, !dbg !4338
  br label %20, !dbg !4340

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32* %4, metadata !4327, metadata !DIExpression(DW_OP_deref)), !dbg !4330
  call void @llvm.dbg.value(metadata i32* %5, metadata !4328, metadata !DIExpression(DW_OP_deref)), !dbg !4330
  call fastcc void @hal_eint_calc_debounce_parameters(i32 noundef %1, i32* noundef nonnull %5, i32* noundef nonnull %4) #16, !dbg !4341
  %13 = icmp ne i32 %1, 0, !dbg !4342
  %14 = zext i1 %13 to i32
  call void @llvm.dbg.value(metadata i32 %14, metadata !4329, metadata !DIExpression()), !dbg !4330
  %15 = load i32, i32* %3, align 4, !dbg !4344
  call void @llvm.dbg.value(metadata i32 %15, metadata !4326, metadata !DIExpression()), !dbg !4330
  %16 = load i32, i32* %5, align 4, !dbg !4345
  call void @llvm.dbg.value(metadata i32 %16, metadata !4328, metadata !DIExpression()), !dbg !4330
  %17 = load i32, i32* %4, align 4, !dbg !4346
  call void @llvm.dbg.value(metadata i32 %17, metadata !4327, metadata !DIExpression()), !dbg !4330
  %18 = trunc i32 %17 to i8, !dbg !4346
  %19 = tail call i32 @eint_set_debounce(i32 noundef %15, i32 noundef %14, i32 noundef %16, i8 noundef zeroext %18) #15, !dbg !4347
  br label %20, !dbg !4348

20:                                               ; preds = %12, %11
  %21 = phi i32 [ -1, %11 ], [ 0, %12 ], !dbg !4330
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #18, !dbg !4349
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #18, !dbg !4349
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #18, !dbg !4349
  ret i32 %21, !dbg !4349
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_eint_set_software_trigger(i32 noundef %0) local_unnamed_addr #0 !dbg !4350 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4352, metadata !DIExpression()), !dbg !4354
  %3 = bitcast i32* %2 to i8*, !dbg !4355
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #18, !dbg !4355
  call void @llvm.dbg.value(metadata i32* %2, metadata !4353, metadata !DIExpression(DW_OP_deref)), !dbg !4354
  %4 = call fastcc i32 @hal_eint_convert_for_gpio(i32 noundef %0, i32* noundef nonnull %2) #16, !dbg !4356
  %5 = icmp eq i32 %4, 0, !dbg !4358
  br i1 %5, label %7, label %6, !dbg !4359

6:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__FUNCTION__.hal_eint_set_software_trigger, i32 0, i32 0), i32 noundef 464, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0)) #15, !dbg !4360
  br label %10, !dbg !4362

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4, !dbg !4363
  call void @llvm.dbg.value(metadata i32 %8, metadata !4353, metadata !DIExpression()), !dbg !4354
  %9 = tail call i32 @eint_set_software_trigger(i32 noundef %8) #15, !dbg !4364
  br label %10, !dbg !4365

10:                                               ; preds = %7, %6
  %11 = phi i32 [ -1, %6 ], [ 0, %7 ], !dbg !4354
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #18, !dbg !4366
  ret i32 %11, !dbg !4366
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_eint_clear_software_trigger(i32 noundef %0) local_unnamed_addr #0 !dbg !4367 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4369, metadata !DIExpression()), !dbg !4371
  %3 = bitcast i32* %2 to i8*, !dbg !4372
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #18, !dbg !4372
  call void @llvm.dbg.value(metadata i32* %2, metadata !4370, metadata !DIExpression(DW_OP_deref)), !dbg !4371
  %4 = call fastcc i32 @hal_eint_convert_for_gpio(i32 noundef %0, i32* noundef nonnull %2) #16, !dbg !4373
  %5 = icmp eq i32 %4, 0, !dbg !4375
  br i1 %5, label %7, label %6, !dbg !4376

6:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__FUNCTION__.hal_eint_clear_software_trigger, i32 0, i32 0), i32 noundef 475, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0)) #15, !dbg !4377
  br label %10, !dbg !4379

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4, !dbg !4380
  call void @llvm.dbg.value(metadata i32 %8, metadata !4370, metadata !DIExpression()), !dbg !4371
  %9 = tail call i32 @eint_clear_software_trigger(i32 noundef %8) #15, !dbg !4381
  br label %10, !dbg !4382

10:                                               ; preds = %7, %6
  %11 = phi i32 [ -1, %6 ], [ 0, %7 ], !dbg !4371
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #18, !dbg !4383
  ret i32 %11, !dbg !4383
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_nvic_init() local_unnamed_addr #10 !dbg !4384 {
  ret i32 0, !dbg !4388
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_enable_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !4389 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4393, metadata !DIExpression()), !dbg !4395
  call void @llvm.dbg.value(metadata i32 -1, metadata !4394, metadata !DIExpression()), !dbg !4395
  %2 = icmp ugt i32 %0, 95, !dbg !4396
  br i1 %2, label %4, label %3, !dbg !4396

3:                                                ; preds = %1
  tail call fastcc void @NVIC_EnableIRQ.22(i32 noundef %0) #16, !dbg !4398
  call void @llvm.dbg.value(metadata i32 0, metadata !4394, metadata !DIExpression()), !dbg !4395
  br label %4, !dbg !4400

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !4395
  ret i32 %5, !dbg !4401
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_EnableIRQ.22(i32 noundef %0) unnamed_addr #3 !dbg !4402 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4404, metadata !DIExpression()), !dbg !4405
  %2 = and i32 %0, 31, !dbg !4406
  %3 = shl nuw i32 1, %2, !dbg !4407
  %4 = lshr i32 %0, 5, !dbg !4408
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813312 to [8 x i32]*), i32 0, i32 %4, !dbg !4409
  store volatile i32 %3, i32* %5, align 4, !dbg !4410
  ret void, !dbg !4411
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_disable_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !4412 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4414, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i32 -1, metadata !4415, metadata !DIExpression()), !dbg !4416
  %2 = icmp ugt i32 %0, 95, !dbg !4417
  br i1 %2, label %4, label %3, !dbg !4417

3:                                                ; preds = %1
  tail call fastcc void @NVIC_DisableIRQ.23(i32 noundef %0) #16, !dbg !4419
  call void @llvm.dbg.value(metadata i32 0, metadata !4415, metadata !DIExpression()), !dbg !4416
  br label %4, !dbg !4421

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !4416
  ret i32 %5, !dbg !4422
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_DisableIRQ.23(i32 noundef %0) unnamed_addr #3 !dbg !4423 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4425, metadata !DIExpression()), !dbg !4426
  %2 = and i32 %0, 31, !dbg !4427
  %3 = shl nuw i32 1, %2, !dbg !4428
  %4 = lshr i32 %0, 5, !dbg !4429
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813184 to [8 x i32]*), i32 0, i32 %4, !dbg !4430
  store volatile i32 %3, i32* %5, align 4, !dbg !4431
  ret void, !dbg !4432
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_pending_irq(i32 noundef %0) local_unnamed_addr #4 !dbg !4433 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4437, metadata !DIExpression()), !dbg !4439
  call void @llvm.dbg.value(metadata i32 255, metadata !4438, metadata !DIExpression()), !dbg !4439
  %2 = icmp ugt i32 %0, 95, !dbg !4440
  br i1 %2, label %5, label %3, !dbg !4440

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) #16, !dbg !4442
  call void @llvm.dbg.value(metadata i32 %4, metadata !4438, metadata !DIExpression()), !dbg !4439
  br label %5, !dbg !4444

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 255, %1 ], !dbg !4439
  ret i32 %6, !dbg !4445
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) unnamed_addr #4 !dbg !4446 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4450, metadata !DIExpression()), !dbg !4451
  %2 = lshr i32 %0, 5, !dbg !4452
  %3 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %2, !dbg !4453
  %4 = load volatile i32, i32* %3, align 4, !dbg !4453
  %5 = and i32 %0, 31, !dbg !4454
  %6 = lshr i32 %4, %5, !dbg !4455
  %7 = and i32 %6, 1, !dbg !4455
  ret i32 %7, !dbg !4456
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_pending_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !4457 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4459, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.value(metadata i32 -1, metadata !4460, metadata !DIExpression()), !dbg !4461
  %2 = icmp ugt i32 %0, 95, !dbg !4462
  br i1 %2, label %4, label %3, !dbg !4462

3:                                                ; preds = %1
  tail call fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) #16, !dbg !4464
  call void @llvm.dbg.value(metadata i32 0, metadata !4460, metadata !DIExpression()), !dbg !4461
  br label %4, !dbg !4466

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !4461
  ret i32 %5, !dbg !4467
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) unnamed_addr #3 !dbg !4468 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4470, metadata !DIExpression()), !dbg !4471
  %2 = and i32 %0, 31, !dbg !4472
  %3 = shl nuw i32 1, %2, !dbg !4473
  %4 = lshr i32 %0, 5, !dbg !4474
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %4, !dbg !4475
  store volatile i32 %3, i32* %5, align 4, !dbg !4476
  ret void, !dbg !4477
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_clear_pending_irq(i32 noundef %0) local_unnamed_addr #3 !dbg !4478 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4480, metadata !DIExpression()), !dbg !4482
  call void @llvm.dbg.value(metadata i32 -1, metadata !4481, metadata !DIExpression()), !dbg !4482
  %2 = icmp ugt i32 %0, 95, !dbg !4483
  br i1 %2, label %4, label %3, !dbg !4483

3:                                                ; preds = %1
  tail call fastcc void @NVIC_ClearPendingIRQ.24(i32 noundef %0) #16, !dbg !4485
  call void @llvm.dbg.value(metadata i32 0, metadata !4481, metadata !DIExpression()), !dbg !4482
  br label %4, !dbg !4487

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !4482
  ret i32 %5, !dbg !4488
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_ClearPendingIRQ.24(i32 noundef %0) unnamed_addr #3 !dbg !4489 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4491, metadata !DIExpression()), !dbg !4492
  %2 = and i32 %0, 31, !dbg !4493
  %3 = shl nuw i32 1, %2, !dbg !4494
  %4 = lshr i32 %0, 5, !dbg !4495
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812928 to [8 x i32]*), i32 0, i32 %4, !dbg !4496
  store volatile i32 %3, i32* %5, align 4, !dbg !4497
  ret void, !dbg !4498
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_priority(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4499 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4503, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.value(metadata i32 %1, metadata !4504, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.value(metadata i32 -1, metadata !4505, metadata !DIExpression()), !dbg !4506
  %3 = icmp ugt i32 %0, 95, !dbg !4507
  br i1 %3, label %5, label %4, !dbg !4507

4:                                                ; preds = %2
  tail call fastcc void @NVIC_SetPriority.27(i32 noundef %0, i32 noundef %1) #16, !dbg !4509
  call void @llvm.dbg.value(metadata i32 0, metadata !4505, metadata !DIExpression()), !dbg !4506
  br label %5, !dbg !4511

5:                                                ; preds = %2, %4
  %6 = phi i32 [ 0, %4 ], [ -3, %2 ], !dbg !4506
  ret i32 %6, !dbg !4512
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPriority.27(i32 noundef %0, i32 noundef %1) unnamed_addr #3 !dbg !4513 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4515, metadata !DIExpression()), !dbg !4517
  call void @llvm.dbg.value(metadata i32 %1, metadata !4516, metadata !DIExpression()), !dbg !4517
  %3 = trunc i32 %1 to i8, !dbg !4518
  %4 = shl i8 %3, 5, !dbg !4518
  %5 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !4521
  store volatile i8 %4, i8* %5, align 1, !dbg !4522
  ret void, !dbg !4523
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_priority(i32 noundef %0) local_unnamed_addr #4 !dbg !4524 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4526, metadata !DIExpression()), !dbg !4528
  call void @llvm.dbg.value(metadata i32 68, metadata !4527, metadata !DIExpression()), !dbg !4528
  %2 = icmp ugt i32 %0, 95, !dbg !4529
  br i1 %2, label %5, label %3, !dbg !4529

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPriority(i32 noundef %0) #16, !dbg !4531
  call void @llvm.dbg.value(metadata i32 %4, metadata !4527, metadata !DIExpression()), !dbg !4528
  br label %5, !dbg !4533

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 68, %1 ], !dbg !4528
  ret i32 %6, !dbg !4534
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPriority(i32 noundef %0) unnamed_addr #4 !dbg !4535 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4537, metadata !DIExpression()), !dbg !4538
  %2 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !4539
  %3 = load volatile i8, i8* %2, align 1, !dbg !4539
  %4 = lshr i8 %3, 5, !dbg !4542
  %5 = zext i8 %4 to i32, !dbg !4542
  ret i32 %5, !dbg !4543
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @Flash_ReturnReady() local_unnamed_addr #10 !dbg !4544 {
  ret void, !dbg !4545
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @isrC_main() local_unnamed_addr #0 section ".ramTEXT" !dbg !4546 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !4548, metadata !DIExpression()), !dbg !4550
  %1 = tail call fastcc i32 @get_current_irq() #16, !dbg !4551
  call void @llvm.dbg.value(metadata i32 %1, metadata !4549, metadata !DIExpression()), !dbg !4550
  %2 = icmp ugt i32 %1, 95, !dbg !4552
  br i1 %2, label %12, label %3, !dbg !4552

3:                                                ; preds = %0
  %4 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 0, !dbg !4554
  %5 = load void (i32)*, void (i32)** %4, align 4, !dbg !4554
  %6 = icmp eq void (i32)* %5, null, !dbg !4556
  br i1 %6, label %7, label %8, !dbg !4557

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 -4, metadata !4548, metadata !DIExpression()), !dbg !4550
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.isrC_main, i32 0, i32 0), i32 noundef 194, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i32 0, i32 0)) #15, !dbg !4558
  br label %12, !dbg !4560

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @get_pending_irq() #16, !dbg !4561
  %10 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 1, !dbg !4563
  store i32 %9, i32* %10, align 4, !dbg !4564
  %11 = load void (i32)*, void (i32)** %4, align 4, !dbg !4565
  tail call void %11(i32 noundef %1) #15, !dbg !4566
  call void @llvm.dbg.value(metadata i32 0, metadata !4548, metadata !DIExpression()), !dbg !4550
  br label %12, !dbg !4567

12:                                               ; preds = %0, %8, %7
  %13 = phi i32 [ -4, %7 ], [ 0, %8 ], [ -3, %0 ], !dbg !4550
  ret i32 %13, !dbg !4568
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_current_irq() unnamed_addr #4 !dbg !4569 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !4572
  %2 = and i32 %1, 511, !dbg !4573
  call void @llvm.dbg.value(metadata i32 %2, metadata !4571, metadata !DIExpression()), !dbg !4574
  %3 = add nsw i32 %2, -16, !dbg !4575
  ret i32 %3, !dbg !4576
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_pending_irq() unnamed_addr #4 !dbg !4577 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !4578
  %2 = lshr i32 %1, 22, !dbg !4579
  %3 = and i32 %2, 1, !dbg !4579
  ret i32 %3, !dbg !4580
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_register_isr_handler(i32 noundef %0, void (i32)* noundef %1) local_unnamed_addr #0 !dbg !4581 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4586, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata void (i32)* %1, metadata !4587, metadata !DIExpression()), !dbg !4589
  %3 = icmp ugt i32 %0, 95, !dbg !4590
  %4 = icmp eq void (i32)* %1, null
  %5 = or i1 %3, %4, !dbg !4590
  br i1 %5, label %10, label %6, !dbg !4590

6:                                                ; preds = %2
  %7 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !4592
  call void @llvm.dbg.value(metadata i32 %7, metadata !4588, metadata !DIExpression()), !dbg !4589
  tail call fastcc void @NVIC_ClearPendingIRQ.24(i32 noundef %0) #16, !dbg !4593
  %8 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 0, !dbg !4594
  store void (i32)* %1, void (i32)** %8, align 4, !dbg !4595
  %9 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 1, !dbg !4596
  store i32 0, i32* %9, align 4, !dbg !4597
  tail call void @restore_interrupt_mask(i32 noundef %7) #15, !dbg !4598
  br label %10, !dbg !4599

10:                                               ; preds = %2, %6
  %11 = phi i32 [ 0, %6 ], [ -2, %2 ], !dbg !4589
  ret i32 %11, !dbg !4600
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_save_and_set_interrupt_mask(i32* nocapture noundef writeonly %0) local_unnamed_addr #0 !dbg !4601 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4605, metadata !DIExpression()), !dbg !4606
  %2 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !4607
  store i32 %2, i32* %0, align 4, !dbg !4608
  ret i32 0, !dbg !4609
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #0 !dbg !4610 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4614, metadata !DIExpression()), !dbg !4615
  tail call void @restore_interrupt_mask(i32 noundef %0) #15, !dbg !4616
  ret i32 0, !dbg !4617
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pinmux_set_function(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !4618 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4624, metadata !DIExpression()), !dbg !4627
  call void @llvm.dbg.value(metadata i8 %1, metadata !4625, metadata !DIExpression()), !dbg !4627
  %3 = icmp ugt i32 %0, 60, !dbg !4628
  br i1 %3, label %11, label %4, !dbg !4630

4:                                                ; preds = %2
  %5 = icmp ugt i8 %1, 15, !dbg !4631
  br i1 %5, label %11, label %6, !dbg !4633

6:                                                ; preds = %4
  %7 = zext i8 %1 to i32, !dbg !4634
  %8 = tail call i32 @pinmux_config(i32 noundef %0, i32 noundef %7) #15, !dbg !4635
  call void @llvm.dbg.value(metadata i32 %8, metadata !4626, metadata !DIExpression()), !dbg !4627
  %9 = icmp slt i32 %8, 0, !dbg !4636
  %10 = select i1 %9, i32 -3, i32 0, !dbg !4636
  br label %11, !dbg !4637

11:                                               ; preds = %4, %2, %6
  %12 = phi i32 [ %10, %6 ], [ -2, %2 ], [ -1, %4 ], !dbg !4627
  ret i32 %12, !dbg !4638
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_init(i32 noundef %0) local_unnamed_addr #10 !dbg !4639 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4644, metadata !DIExpression()), !dbg !4645
  ret i32 0, !dbg !4646
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_deinit(i32 noundef %0) local_unnamed_addr #10 !dbg !4647 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4649, metadata !DIExpression()), !dbg !4650
  ret i32 0, !dbg !4651
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_input(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #0 !dbg !4652 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4657, metadata !DIExpression()), !dbg !4667
  call void @llvm.dbg.value(metadata i32* %1, metadata !4658, metadata !DIExpression()), !dbg !4667
  %4 = icmp eq i32* %1, null, !dbg !4668
  br i1 %4, label %12, label %5, !dbg !4670

5:                                                ; preds = %2
  %6 = icmp ugt i32 %0, 60, !dbg !4671
  br i1 %6, label %12, label %7, !dbg !4673

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !4674
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #18, !dbg !4674
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #15, !dbg !4674
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 2, !dbg !4674
  %10 = load i8, i8* %9, align 1, !dbg !4674
  call void @llvm.dbg.value(metadata i8 %10, metadata !4659, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !4667
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #18, !dbg !4674
  %11 = zext i8 %10 to i32, !dbg !4675
  store i32 %11, i32* %1, align 4, !dbg !4676
  br label %12, !dbg !4677

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -1, %2 ], [ -2, %5 ], !dbg !4667
  ret i32 %13, !dbg !4678
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4679 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4683, metadata !DIExpression()), !dbg !4686
  call void @llvm.dbg.value(metadata i32 %1, metadata !4684, metadata !DIExpression()), !dbg !4686
  %3 = icmp ugt i32 %0, 60, !dbg !4687
  br i1 %3, label %9, label %4, !dbg !4689

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !4690
  %6 = tail call i32 @gpio_write(i32 noundef %0, i8 noundef zeroext %5) #15, !dbg !4691
  call void @llvm.dbg.value(metadata i32 %6, metadata !4685, metadata !DIExpression()), !dbg !4686
  %7 = icmp slt i32 %6, 0, !dbg !4692
  %8 = select i1 %7, i32 -3, i32 0, !dbg !4692
  br label %9, !dbg !4693

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !4686
  ret i32 %10, !dbg !4694
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_output(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #0 !dbg !4695 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4697, metadata !DIExpression()), !dbg !4700
  call void @llvm.dbg.value(metadata i32* %1, metadata !4698, metadata !DIExpression()), !dbg !4700
  %4 = icmp ugt i32 %0, 60, !dbg !4701
  br i1 %4, label %12, label %5, !dbg !4703

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !4704
  br i1 %6, label %12, label %7, !dbg !4706

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !4707
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #18, !dbg !4707
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #15, !dbg !4707
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 3, !dbg !4707
  %10 = load i8, i8* %9, align 2, !dbg !4707
  call void @llvm.dbg.value(metadata i8 %10, metadata !4699, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !4700
  call void @llvm.dbg.value(metadata i8 undef, metadata !4699, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !4700
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #18, !dbg !4707
  %11 = zext i8 %10 to i32, !dbg !4708
  store i32 %11, i32* %1, align 4, !dbg !4709
  br label %12, !dbg !4710

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !4700
  ret i32 %13, !dbg !4711
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_direction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4712 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4717, metadata !DIExpression()), !dbg !4720
  call void @llvm.dbg.value(metadata i32 %1, metadata !4718, metadata !DIExpression()), !dbg !4720
  %3 = icmp ugt i32 %0, 60, !dbg !4721
  br i1 %3, label %8, label %4, !dbg !4723

4:                                                ; preds = %2
  %5 = tail call i32 @gpio_direction(i32 noundef %0, i32 noundef %1) #15, !dbg !4724
  call void @llvm.dbg.value(metadata i32 %5, metadata !4719, metadata !DIExpression()), !dbg !4720
  %6 = icmp slt i32 %5, 0, !dbg !4725
  %7 = select i1 %6, i32 -3, i32 0, !dbg !4725
  br label %8, !dbg !4726

8:                                                ; preds = %2, %4
  %9 = phi i32 [ %7, %4 ], [ -2, %2 ], !dbg !4720
  ret i32 %9, !dbg !4727
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_direction(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #0 !dbg !4728 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4733, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata i32* %1, metadata !4734, metadata !DIExpression()), !dbg !4736
  %4 = icmp ugt i32 %0, 60, !dbg !4737
  br i1 %4, label %13, label %5, !dbg !4739

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !4740
  br i1 %6, label %13, label %7, !dbg !4742

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !4743
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #18, !dbg !4743
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #15, !dbg !4743
  call void @llvm.dbg.value(metadata i32 undef, metadata !4735, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4736
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 1, !dbg !4743
  %10 = load i8, i8* %9, align 4, !dbg !4743
  call void @llvm.dbg.value(metadata i8 %10, metadata !4735, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !4736
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #18, !dbg !4743
  %11 = icmp ne i8 %10, 0, !dbg !4744
  %12 = zext i1 %11 to i32, !dbg !4744
  store i32 %12, i32* %1, align 4, !dbg !4745
  br label %13, !dbg !4746

13:                                               ; preds = %5, %2, %7
  %14 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !4736
  ret i32 %14, !dbg !4747
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_toggle_pin(i32 noundef %0) local_unnamed_addr #0 !dbg !4748 {
  %2 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4750, metadata !DIExpression()), !dbg !4752
  %3 = icmp ugt i32 %0, 60, !dbg !4753
  br i1 %3, label %11, label %4, !dbg !4755

4:                                                ; preds = %1
  %5 = bitcast %struct.gpio_status* %2 to i8*, !dbg !4756
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #18, !dbg !4756
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %2, i32 noundef %0) #15, !dbg !4756
  %6 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %2, i32 0, i32 3, !dbg !4756
  %7 = load i8, i8* %6, align 2, !dbg !4756
  call void @llvm.dbg.value(metadata i8 %7, metadata !4751, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !4752
  call void @llvm.dbg.value(metadata i8 undef, metadata !4751, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !4752
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #18, !dbg !4756
  %8 = xor i8 %7, 1, !dbg !4757
  %9 = zext i8 %8 to i32, !dbg !4757
  %10 = call i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %9) #16, !dbg !4758
  br label %11, !dbg !4759

11:                                               ; preds = %1, %4
  %12 = phi i32 [ %10, %4 ], [ -2, %1 ], !dbg !4752
  ret i32 %12, !dbg !4760
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_up(i32 noundef %0) local_unnamed_addr #0 !dbg !4761 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4763, metadata !DIExpression()), !dbg !4765
  %2 = icmp ugt i32 %0, 60, !dbg !4766
  br i1 %2, label %10, label %3, !dbg !4768

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #15, !dbg !4769
  call void @llvm.dbg.value(metadata i32 %4, metadata !4764, metadata !DIExpression()), !dbg !4765
  %5 = icmp slt i32 %4, 0, !dbg !4770
  br i1 %5, label %10, label %6, !dbg !4772

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullUp(i32 noundef %0) #15, !dbg !4773
  call void @llvm.dbg.value(metadata i32 %7, metadata !4764, metadata !DIExpression()), !dbg !4765
  %8 = icmp slt i32 %7, 0, !dbg !4774
  %9 = select i1 %8, i32 -3, i32 0, !dbg !4774
  br label %10, !dbg !4775

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !4765
  ret i32 %11, !dbg !4776
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_down(i32 noundef %0) local_unnamed_addr #0 !dbg !4777 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4779, metadata !DIExpression()), !dbg !4781
  %2 = icmp ugt i32 %0, 60, !dbg !4782
  br i1 %2, label %10, label %3, !dbg !4784

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #15, !dbg !4785
  call void @llvm.dbg.value(metadata i32 %4, metadata !4780, metadata !DIExpression()), !dbg !4781
  %5 = icmp slt i32 %4, 0, !dbg !4786
  br i1 %5, label %10, label %6, !dbg !4788

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullDown(i32 noundef %0) #15, !dbg !4789
  call void @llvm.dbg.value(metadata i32 %7, metadata !4780, metadata !DIExpression()), !dbg !4781
  %8 = icmp slt i32 %7, 0, !dbg !4790
  %9 = select i1 %8, i32 -3, i32 0, !dbg !4790
  br label %10, !dbg !4791

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !4781
  ret i32 %11, !dbg !4792
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_disable_pull(i32 noundef %0) local_unnamed_addr #0 !dbg !4793 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4795, metadata !DIExpression()), !dbg !4797
  %2 = icmp ugt i32 %0, 60, !dbg !4798
  br i1 %2, label %7, label %3, !dbg !4800

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #15, !dbg !4801
  call void @llvm.dbg.value(metadata i32 %4, metadata !4796, metadata !DIExpression()), !dbg !4797
  %5 = icmp slt i32 %4, 0, !dbg !4802
  %6 = select i1 %5, i32 -3, i32 0, !dbg !4802
  br label %7, !dbg !4803

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ -2, %1 ], !dbg !4797
  ret i32 %8, !dbg !4804
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_driving_current(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4805 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4809, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata i32 %1, metadata !4810, metadata !DIExpression()), !dbg !4812
  %3 = icmp ugt i32 %0, 60, !dbg !4813
  br i1 %3, label %9, label %4, !dbg !4815

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !4816
  %6 = tail call i32 @gpio_SetDriving(i32 noundef %0, i8 noundef zeroext %5) #15, !dbg !4817
  call void @llvm.dbg.value(metadata i32 %6, metadata !4811, metadata !DIExpression()), !dbg !4812
  %7 = icmp slt i32 %6, 0, !dbg !4818
  %8 = select i1 %7, i32 -3, i32 0, !dbg !4818
  br label %9, !dbg !4819

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !4812
  ret i32 %10, !dbg !4820
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_driving_current(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !4821 {
  %3 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4826, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.value(metadata i32* %1, metadata !4827, metadata !DIExpression()), !dbg !4830
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #18, !dbg !4831
  %4 = icmp ugt i32 %0, 60, !dbg !4832
  br i1 %4, label %11, label %5, !dbg !4834

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4829, metadata !DIExpression(DW_OP_deref)), !dbg !4830
  %6 = call i32 @gpio_GetDriving(i32 noundef %0, i8* noundef nonnull %3) #15, !dbg !4835
  call void @llvm.dbg.value(metadata i32 %6, metadata !4828, metadata !DIExpression()), !dbg !4830
  %7 = load i8, i8* %3, align 1, !dbg !4836
  call void @llvm.dbg.value(metadata i8 %7, metadata !4829, metadata !DIExpression()), !dbg !4830
  %8 = zext i8 %7 to i32, !dbg !4837
  store i32 %8, i32* %1, align 4, !dbg !4838
  %9 = icmp slt i32 %6, 0, !dbg !4839
  %10 = select i1 %9, i32 -3, i32 0, !dbg !4839
  br label %11, !dbg !4840

11:                                               ; preds = %2, %5
  %12 = phi i32 [ %10, %5 ], [ -2, %2 ], !dbg !4830
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #18, !dbg !4841
  ret i32 %12, !dbg !4841
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_init(i32 noundef %0) local_unnamed_addr #0 !dbg !4842 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4848, metadata !DIExpression()), !dbg !4849
  %2 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, !dbg !4850
  %3 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !4852
  %4 = load i8, i8* %3, align 4, !dbg !4852, !range !4197
  %5 = icmp eq i8 %4, 0, !dbg !4852
  br i1 %5, label %6, label %12, !dbg !4853

6:                                                ; preds = %1
  %7 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #16, !dbg !4854
  br i1 %7, label %9, label %8, !dbg !4856

8:                                                ; preds = %6
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.hal_gpt_init, i32 0, i32 0), i32 noundef 89, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), i32 noundef %0) #15, !dbg !4857
  br label %12, !dbg !4859

9:                                                ; preds = %6
  %10 = bitcast %struct.hal_gpt_context_t* %2 to i8*, !dbg !4860
  %11 = tail call i8* @memset(i8* noundef nonnull %10, i32 noundef 0, i32 noundef 16) #15, !dbg !4861
  store i8 1, i8* %3, align 4, !dbg !4862
  br label %12, !dbg !4863

12:                                               ; preds = %1, %9, %8
  %13 = phi i32 [ -2, %8 ], [ 0, %9 ], [ -3, %1 ], !dbg !4849
  ret i32 %13, !dbg !4864
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) unnamed_addr #10 !dbg !4865 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4869, metadata !DIExpression()), !dbg !4870
  %2 = icmp ult i32 %0, 5, !dbg !4871
  %3 = icmp ne i32 %0, 2
  %4 = and i1 %2, %3, !dbg !4873
  ret i1 %4, !dbg !4874
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_deinit(i32 noundef %0) local_unnamed_addr #0 !dbg !4875 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4877, metadata !DIExpression()), !dbg !4878
  %2 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #16, !dbg !4879
  br i1 %2, label %4, label %3, !dbg !4881

3:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.hal_gpt_deinit, i32 0, i32 0), i32 noundef 104, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), i32 noundef %0) #15, !dbg !4882
  br label %14, !dbg !4884

4:                                                ; preds = %1
  %5 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, !dbg !4885
  %6 = getelementptr inbounds %struct.hal_gpt_context_t, %struct.hal_gpt_context_t* %5, i32 0, i32 0, !dbg !4887
  %7 = load i32, i32* %6, align 4, !dbg !4887
  %8 = icmp eq i32 %7, 0, !dbg !4888
  br i1 %8, label %10, label %9, !dbg !4889

9:                                                ; preds = %4
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.hal_gpt_deinit, i32 0, i32 0), i32 noundef 109, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1.36, i32 0, i32 0), i32 noundef %0) #15, !dbg !4890
  br label %14, !dbg !4892

10:                                               ; preds = %4
  %11 = bitcast %struct.hal_gpt_context_t* %5 to i8*, !dbg !4893
  %12 = tail call i8* @memset(i8* noundef nonnull %11, i32 noundef 0, i32 noundef 16) #15, !dbg !4894
  %13 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !4895
  store i8 0, i8* %13, align 4, !dbg !4896
  br label %14, !dbg !4897

14:                                               ; preds = %10, %9, %3
  %15 = phi i32 [ -2, %3 ], [ -3, %9 ], [ 0, %10 ], !dbg !4878
  ret i32 %15, !dbg !4898
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_get_free_run_count(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !4899 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4904, metadata !DIExpression()), !dbg !4906
  call void @llvm.dbg.value(metadata i32* %1, metadata !4905, metadata !DIExpression()), !dbg !4906
  switch i32 %0, label %24 [
    i32 0, label %3
    i32 1, label %9
    i32 2, label %18
  ], !dbg !4907

3:                                                ; preds = %2
  %4 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !4908
  %5 = icmp eq i32 %4, 1, !dbg !4912
  br i1 %5, label %7, label %6, !dbg !4913

6:                                                ; preds = %3
  tail call void @CM4_GPT2Init() #15, !dbg !4914
  br label %7, !dbg !4916

7:                                                ; preds = %6, %3
  %8 = tail call i32 @get_current_count() #15, !dbg !4917
  store i32 %8, i32* %1, align 4, !dbg !4918
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !4919
  br label %25, !dbg !4920

9:                                                ; preds = %2
  %10 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !4921
  %11 = icmp eq i32 %10, 1, !dbg !4925
  br i1 %11, label %13, label %12, !dbg !4926

12:                                               ; preds = %9
  tail call void @CM4_GPT4Init() #15, !dbg !4927
  br label %13, !dbg !4929

13:                                               ; preds = %12, %9
  %14 = tail call i32 @get_current_gpt4_count() #15, !dbg !4930
  %15 = tail call i32 @top_mcu_freq_get() #15, !dbg !4931
  %16 = udiv i32 %15, 1000000, !dbg !4932
  %17 = udiv i32 %14, %16, !dbg !4933
  store i32 %17, i32* %1, align 4, !dbg !4934
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !4935
  br label %25, !dbg !4936

18:                                               ; preds = %2
  %19 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !4937
  %20 = icmp eq i32 %19, 1, !dbg !4941
  br i1 %20, label %22, label %21, !dbg !4942

21:                                               ; preds = %18
  tail call void @CM4_GPT4Init() #15, !dbg !4943
  br label %22, !dbg !4945

22:                                               ; preds = %21, %18
  %23 = tail call i32 @get_current_gpt4_count() #15, !dbg !4946
  store i32 %23, i32* %1, align 4, !dbg !4947
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !4948
  br label %25

24:                                               ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.hal_gpt_get_free_run_count, i32 0, i32 0), i32 noundef 141, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2.37, i32 0, i32 0), i32 noundef %0) #15, !dbg !4949
  br label %25, !dbg !4951

25:                                               ; preds = %7, %22, %13, %24
  %26 = phi i32 [ -1, %24 ], [ 0, %13 ], [ 0, %22 ], [ 0, %7 ], !dbg !4906
  ret i32 %26, !dbg !4952
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local i32 @hal_gpt_get_duration_count(i32 noundef %0, i32 noundef %1, i32* noundef writeonly %2) local_unnamed_addr #13 !dbg !4953 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4957, metadata !DIExpression()), !dbg !4960
  call void @llvm.dbg.value(metadata i32 %1, metadata !4958, metadata !DIExpression()), !dbg !4960
  call void @llvm.dbg.value(metadata i32* %2, metadata !4959, metadata !DIExpression()), !dbg !4960
  %4 = icmp eq i32* %2, null, !dbg !4961
  br i1 %4, label %7, label %5, !dbg !4963

5:                                                ; preds = %3
  %6 = sub i32 %1, %0, !dbg !4964
  store i32 %6, i32* %2, align 4, !dbg !4964
  br label %7, !dbg !4966

7:                                                ; preds = %3, %5
  %8 = phi i32 [ 0, %5 ], [ -1, %3 ], !dbg !4960
  ret i32 %8, !dbg !4967
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_get_running_status(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !4968 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4973, metadata !DIExpression()), !dbg !4975
  call void @llvm.dbg.value(metadata i32* %1, metadata !4974, metadata !DIExpression()), !dbg !4975
  %3 = icmp ugt i32 %0, 4, !dbg !4976
  br i1 %3, label %4, label %5, !dbg !4978

4:                                                ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.hal_gpt_get_running_status, i32 0, i32 0), i32 noundef 167, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3.38, i32 0, i32 0), i32 noundef %0) #15, !dbg !4979
  br label %8, !dbg !4981

5:                                                ; preds = %2
  %6 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 0, !dbg !4982
  %7 = load i32, i32* %6, align 4, !dbg !4982
  store i32 %7, i32* %1, align 4, !dbg !4983
  br label %8, !dbg !4984

8:                                                ; preds = %5, %4
  %9 = phi i32 [ -2, %4 ], [ 0, %5 ], !dbg !4975
  ret i32 %9, !dbg !4985
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_register_callback(i32 noundef %0, void (i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #0 !dbg !4986 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4990, metadata !DIExpression()), !dbg !4993
  call void @llvm.dbg.value(metadata void (i8*)* %1, metadata !4991, metadata !DIExpression()), !dbg !4993
  call void @llvm.dbg.value(metadata i8* %2, metadata !4992, metadata !DIExpression()), !dbg !4993
  %4 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #16, !dbg !4994
  br i1 %4, label %6, label %5, !dbg !4996

5:                                                ; preds = %3
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.hal_gpt_register_callback, i32 0, i32 0), i32 noundef 179, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4.39, i32 0, i32 0), i32 noundef %0) #15, !dbg !4997
  br label %15, !dbg !4999

6:                                                ; preds = %3
  %7 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !5000
  %8 = load i8, i8* %7, align 4, !dbg !5000, !range !4197
  %9 = icmp eq i8 %8, 1, !dbg !5002
  br i1 %9, label %10, label %15, !dbg !5003

10:                                               ; preds = %6
  %11 = icmp eq void (i8*)* %1, null, !dbg !5004
  br i1 %11, label %15, label %12, !dbg !5006

12:                                               ; preds = %10
  %13 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 1, i32 0, !dbg !5007
  store void (i8*)* %1, void (i8*)** %13, align 4, !dbg !5008
  %14 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 1, i32 1, !dbg !5009
  store i8* %2, i8** %14, align 4, !dbg !5010
  br label %15, !dbg !5011

15:                                               ; preds = %10, %6, %12, %5
  %16 = phi i32 [ -2, %5 ], [ 0, %12 ], [ -3, %6 ], [ -1, %10 ], !dbg !4993
  ret i32 %16, !dbg !5012
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_start_timer_ms(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !5013 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5018, metadata !DIExpression()), !dbg !5021
  call void @llvm.dbg.value(metadata i32 %1, metadata !5019, metadata !DIExpression()), !dbg !5021
  call void @llvm.dbg.value(metadata i32 %2, metadata !5020, metadata !DIExpression()), !dbg !5021
  %4 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #16, !dbg !5022
  br i1 %4, label %6, label %5, !dbg !5024

5:                                                ; preds = %3
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.hal_gpt_start_timer_ms, i32 0, i32 0), i32 noundef 221, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4.39, i32 0, i32 0), i32 noundef %0) #15, !dbg !5025
  br label %17, !dbg !5027

6:                                                ; preds = %3
  %7 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !5028
  %8 = load i8, i8* %7, align 4, !dbg !5028, !range !4197
  %9 = icmp eq i8 %8, 1, !dbg !5030
  br i1 %9, label %10, label %17, !dbg !5031

10:                                               ; preds = %6
  %11 = icmp ugt i32 %1, 130150523, !dbg !5032
  br i1 %11, label %17, label %12, !dbg !5034

12:                                               ; preds = %10
  %13 = tail call fastcc i32 @hal_gpt_translate_timeout_time(i32 noundef %1) #16, !dbg !5035
  %14 = tail call fastcc zeroext i1 @hal_gpt_translate_type(i32 noundef %2) #16, !dbg !5036
  %15 = tail call fastcc void ()* @hal_gpt_map_callback(i32 noundef %0) #16, !dbg !5037
  tail call void @drvTMR_init(i32 noundef %0, i32 noundef %13, i1 noundef zeroext %14, void ()* noundef nonnull %15) #15, !dbg !5038
  tail call void @TMR_Start(i32 noundef %0) #15, !dbg !5039
  %16 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 0, !dbg !5040
  store i32 1, i32* %16, align 4, !dbg !5041
  br label %17, !dbg !5042

17:                                               ; preds = %10, %6, %12, %5
  %18 = phi i32 [ -2, %5 ], [ 0, %12 ], [ -3, %6 ], [ -1, %10 ], !dbg !5021
  ret i32 %18, !dbg !5043
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_gpt_translate_timeout_time(i32 noundef %0) unnamed_addr #10 !dbg !5044 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5048, metadata !DIExpression()), !dbg !5049
  %2 = shl i32 %0, 5, !dbg !5050
  %3 = mul i32 %0, 7, !dbg !5051
  %4 = udiv i32 %3, 10, !dbg !5052
  %5 = add i32 %4, %2, !dbg !5053
  %6 = mul i32 %0, 6, !dbg !5054
  %7 = udiv i32 %6, 100, !dbg !5055
  %8 = add i32 %5, %7, !dbg !5056
  %9 = shl i32 %0, 3, !dbg !5057
  %10 = udiv i32 %9, 1000, !dbg !5058
  %11 = add i32 %8, %10, !dbg !5059
  ret i32 %11, !dbg !5060
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_gpt_translate_type(i32 noundef %0) unnamed_addr #10 !dbg !5061 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5065, metadata !DIExpression()), !dbg !5066
  %2 = icmp eq i32 %0, 1, !dbg !5067
  ret i1 %2, !dbg !5068
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc nonnull void ()* @hal_gpt_map_callback(i32 noundef %0) unnamed_addr #10 !dbg !5069 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5074, metadata !DIExpression()), !dbg !5075
  %2 = icmp eq i32 %0, 0, !dbg !5076
  %3 = select i1 %2, void ()* @hal_gpt_callback0, void ()* @hal_gpt_callback1, !dbg !5077
  ret void ()* %3, !dbg !5078
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_gpt_callback0() #0 !dbg !5079 {
  %1 = load void (i8*)*, void (i8*)** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 0, i32 1, i32 0), align 4, !dbg !5083
  %2 = icmp eq void (i8*)* %1, null, !dbg !5085
  br i1 %2, label %5, label %3, !dbg !5086

3:                                                ; preds = %0
  %4 = load i8*, i8** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 0, i32 1, i32 1), align 4, !dbg !5087
  tail call void %1(i8* noundef %4) #15, !dbg !5089
  br label %5, !dbg !5090

5:                                                ; preds = %3, %0
  store i32 0, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 0, i32 0), align 4, !dbg !5091
  ret void, !dbg !5092
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_gpt_callback1() #0 !dbg !5093 {
  %1 = load void (i8*)*, void (i8*)** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 1, i32 1, i32 0), align 4, !dbg !5096
  %2 = icmp eq void (i8*)* %1, null, !dbg !5098
  br i1 %2, label %5, label %3, !dbg !5099

3:                                                ; preds = %0
  %4 = load i8*, i8** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 1, i32 1, i32 1), align 4, !dbg !5100
  tail call void %1(i8* noundef %4) #15, !dbg !5102
  br label %5, !dbg !5103

5:                                                ; preds = %3, %0
  store i32 0, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 1, i32 0), align 4, !dbg !5104
  ret void, !dbg !5105
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_stop_timer(i32 noundef %0) local_unnamed_addr #0 !dbg !5106 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5108, metadata !DIExpression()), !dbg !5109
  %2 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #16, !dbg !5110
  br i1 %2, label %4, label %3, !dbg !5112

3:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.hal_gpt_stop_timer, i32 0, i32 0), i32 noundef 245, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4.39, i32 0, i32 0), i32 noundef %0) #15, !dbg !5113
  br label %6, !dbg !5115

4:                                                ; preds = %1
  tail call void @TMR_Stop(i32 noundef %0) #15, !dbg !5116
  %5 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 0, !dbg !5117
  store i32 0, i32* %5, align 4, !dbg !5118
  br label %6, !dbg !5119

6:                                                ; preds = %4, %3
  %7 = phi i32 [ -2, %3 ], [ 0, %4 ], !dbg !5109
  ret i32 %7, !dbg !5120
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_delay_ms(i32 noundef %0) local_unnamed_addr #0 !dbg !5121 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5125, metadata !DIExpression()), !dbg !5126
  %2 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !5127
  %3 = icmp eq i32 %2, 1, !dbg !5129
  br i1 %3, label %5, label %4, !dbg !5130

4:                                                ; preds = %1
  tail call void @CM4_GPT2Init() #15, !dbg !5131
  br label %5, !dbg !5133

5:                                                ; preds = %4, %1
  tail call void @delay_ms(i32 noundef %0) #15, !dbg !5134
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !5135
  ret i32 0, !dbg !5136
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_delay_us(i32 noundef %0) local_unnamed_addr #0 !dbg !5137 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5139, metadata !DIExpression()), !dbg !5140
  %2 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !5141
  %3 = icmp eq i32 %2, 1, !dbg !5143
  br i1 %3, label %5, label %4, !dbg !5144

4:                                                ; preds = %1
  tail call void @CM4_GPT4Init() #15, !dbg !5145
  br label %5, !dbg !5147

5:                                                ; preds = %4, %1
  tail call void @delay_us(i32 noundef %0) #15, !dbg !5148
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !5149
  ret i32 0, !dbg !5150
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_init(i32 noundef %0, %struct.hal_eint_gpio_map_t* noundef %1) local_unnamed_addr #0 !dbg !5151 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5157, metadata !DIExpression()), !dbg !5159
  call void @llvm.dbg.value(metadata %struct.hal_eint_gpio_map_t* %1, metadata !5158, metadata !DIExpression()), !dbg !5159
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_eint_gpio_map_t* noundef %1) #16, !dbg !5160
  br i1 %3, label %4, label %18, !dbg !5162

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !5163
  %6 = load i8, i8* %5, align 4, !dbg !5163, !range !4197
  %7 = icmp eq i8 %6, 0, !dbg !5163
  br i1 %7, label %8, label %18, !dbg !5165

8:                                                ; preds = %4
  %9 = tail call i8* @memset(i8* noundef nonnull %5, i32 noundef 0, i32 noundef 64) #15, !dbg !5166
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !5167
  %11 = bitcast %struct.hal_eint_gpio_map_t* %10 to i8*, !dbg !5168
  %12 = bitcast %struct.hal_eint_gpio_map_t* %1 to i8*, !dbg !5169
  %13 = tail call i8* @memcpy(i8* noundef nonnull %11, i8* noundef %12, i32 noundef 16) #15, !dbg !5170
  store i8 1, i8* %5, align 4, !dbg !5171
  %14 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #16, !dbg !5172, !range !5173
  tail call void @uart_reset_default_value(i32 noundef %14) #15, !dbg !5174
  tail call void @halUART_HWInit(i32 noundef %14) #15, !dbg !5175
  %15 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_eint_gpio_map_t* noundef %1) #16, !dbg !5176
  %16 = icmp eq i32 %15, 0, !dbg !5178
  %17 = select i1 %16, i32 0, i32 -4, !dbg !5159
  br label %18, !dbg !5159

18:                                               ; preds = %8, %4, %2
  %19 = phi i32 [ -4, %2 ], [ -3, %4 ], [ %17, %8 ], !dbg !5159
  ret i32 %19, !dbg !5179
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_eint_gpio_map_t* noundef readonly %1) unnamed_addr #6 !dbg !5180 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5186, metadata !DIExpression()), !dbg !5188
  call void @llvm.dbg.value(metadata %struct.hal_eint_gpio_map_t* %1, metadata !5187, metadata !DIExpression()), !dbg !5188
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5189
  %4 = icmp ne %struct.hal_eint_gpio_map_t* %1, null
  %5 = and i1 %4, %3, !dbg !5191
  br i1 %5, label %6, label %22, !dbg !5191

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hal_eint_gpio_map_t, %struct.hal_eint_gpio_map_t* %1, i32 0, i32 0, !dbg !5192
  %8 = load i32, i32* %7, align 4, !dbg !5192
  %9 = icmp ugt i32 %8, 12, !dbg !5194
  br i1 %9, label %22, label %10, !dbg !5195

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hal_eint_gpio_map_t, %struct.hal_eint_gpio_map_t* %1, i32 0, i32 3, !dbg !5196
  %12 = load i32, i32* %11, align 4, !dbg !5196
  %13 = icmp ugt i32 %12, 2, !dbg !5197
  br i1 %13, label %22, label %14, !dbg !5198

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hal_eint_gpio_map_t, %struct.hal_eint_gpio_map_t* %1, i32 0, i32 2, !dbg !5199
  %16 = load i32, i32* %15, align 4, !dbg !5199
  %17 = icmp ugt i32 %16, 1, !dbg !5200
  br i1 %17, label %22, label %18, !dbg !5201

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hal_eint_gpio_map_t, %struct.hal_eint_gpio_map_t* %1, i32 0, i32 1, !dbg !5202
  %20 = load i32, i32* %19, align 4, !dbg !5202
  %21 = icmp ult i32 %20, 4, !dbg !5203
  br label %22, !dbg !5204

22:                                               ; preds = %18, %6, %10, %14, %2
  %23 = phi i1 [ false, %2 ], [ false, %14 ], [ false, %10 ], [ false, %6 ], [ %21, %18 ], !dbg !5188
  ret i1 %23, !dbg !5205
}

; Function Attrs: optsize
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_port(i32 noundef %0) unnamed_addr #10 !dbg !5206 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5210, metadata !DIExpression()), !dbg !5211
  %2 = icmp ne i32 %0, 0, !dbg !5212
  %3 = zext i1 %2 to i32, !dbg !5213
  ret i32 %3, !dbg !5214
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_eint_gpio_map_t* noundef %1) local_unnamed_addr #0 !dbg !5215 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5219, metadata !DIExpression()), !dbg !5221
  call void @llvm.dbg.value(metadata %struct.hal_eint_gpio_map_t* %1, metadata !5220, metadata !DIExpression()), !dbg !5221
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_eint_gpio_map_t* noundef %1) #16, !dbg !5222
  br i1 %3, label %4, label %22, !dbg !5224

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !5225
  %6 = bitcast %struct.hal_eint_gpio_map_t* %5 to i8*, !dbg !5226
  %7 = bitcast %struct.hal_eint_gpio_map_t* %1 to i8*, !dbg !5227
  %8 = tail call i8* @memcpy(i8* noundef nonnull %6, i8* noundef %7, i32 noundef 16) #15, !dbg !5228
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #16, !dbg !5229
  %10 = getelementptr inbounds %struct.hal_eint_gpio_map_t, %struct.hal_eint_gpio_map_t* %1, i32 0, i32 0, !dbg !5230
  %11 = load i32, i32* %10, align 4, !dbg !5230
  %12 = tail call fastcc i32 @hal_uart_translate_baudrate(i32 noundef %11) #16, !dbg !5231
  %13 = getelementptr inbounds %struct.hal_eint_gpio_map_t, %struct.hal_eint_gpio_map_t* %1, i32 0, i32 1, !dbg !5232
  %14 = load i32, i32* %13, align 4, !dbg !5232
  %15 = tail call fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %14) #16, !dbg !5233
  %16 = getelementptr inbounds %struct.hal_eint_gpio_map_t, %struct.hal_eint_gpio_map_t* %1, i32 0, i32 3, !dbg !5234
  %17 = load i32, i32* %16, align 4, !dbg !5234
  %18 = tail call fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %17) #16, !dbg !5235
  %19 = getelementptr inbounds %struct.hal_eint_gpio_map_t, %struct.hal_eint_gpio_map_t* %1, i32 0, i32 2, !dbg !5236
  %20 = load i32, i32* %19, align 4, !dbg !5236
  %21 = tail call fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %20) #16, !dbg !5237
  tail call void @halUART_SetFormat(i32 noundef %9, i32 noundef %12, i16 noundef zeroext %15, i16 noundef zeroext %18, i16 noundef zeroext %21) #15, !dbg !5238
  br label %22, !dbg !5239

22:                                               ; preds = %2, %4
  %23 = phi i32 [ 0, %4 ], [ -4, %2 ], !dbg !5221
  ret i32 %23, !dbg !5240
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_baudrate(i32 noundef %0) unnamed_addr #10 !dbg !5241 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5245, metadata !DIExpression()), !dbg !5250
  call void @llvm.dbg.declare(metadata [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, metadata !5246, metadata !DIExpression()), !dbg !5251
  %2 = getelementptr inbounds [13 x i32], [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, i32 0, i32 %0, !dbg !5252
  %3 = load i32, i32* %2, align 4, !dbg !5252
  ret i32 %3, !dbg !5253
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %0) unnamed_addr #10 !dbg !5254 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5258, metadata !DIExpression()), !dbg !5261
  call void @llvm.dbg.declare(metadata [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, metadata !5259, metadata !DIExpression()), !dbg !5262
  %2 = getelementptr inbounds [4 x i16], [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, i32 0, i32 %0, !dbg !5263
  %3 = load i16, i16* %2, align 2, !dbg !5263
  ret i16 %3, !dbg !5264
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %0) unnamed_addr #10 !dbg !5265 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5269, metadata !DIExpression()), !dbg !5272
  call void @llvm.dbg.declare(metadata [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, metadata !5270, metadata !DIExpression()), !dbg !5273
  %2 = getelementptr inbounds [5 x i16], [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, i32 0, i32 %0, !dbg !5274
  %3 = load i16, i16* %2, align 2, !dbg !5274
  ret i16 %3, !dbg !5275
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %0) unnamed_addr #10 !dbg !5276 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5280, metadata !DIExpression()), !dbg !5283
  call void @llvm.dbg.declare(metadata [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, metadata !5281, metadata !DIExpression()), !dbg !5284
  %2 = getelementptr inbounds [3 x i16], [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, i32 0, i32 %0, !dbg !5285
  %3 = load i16, i16* %2, align 2, !dbg !5285
  ret i16 %3, !dbg !5286
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) unnamed_addr #10 !dbg !5287 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5291, metadata !DIExpression()), !dbg !5292
  %2 = icmp ult i32 %0, 2, !dbg !5293
  ret i1 %2, !dbg !5294
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_deinit(i32 noundef %0) local_unnamed_addr #0 !dbg !5295 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5299, metadata !DIExpression()), !dbg !5300
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5301
  br i1 %2, label %3, label %10, !dbg !5303

3:                                                ; preds = %1
  %4 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !5304
  %5 = load i8, i8* %4, align 4, !dbg !5304, !range !4197
  %6 = icmp eq i8 %5, 0, !dbg !5306
  br i1 %6, label %10, label %7, !dbg !5307

7:                                                ; preds = %3
  %8 = tail call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i32 noundef 64) #15, !dbg !5308
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #16, !dbg !5309, !range !5173
  tail call void @uart_query_empty(i32 noundef %9) #15, !dbg !5310
  tail call void @uart_reset_default_value(i32 noundef %9) #15, !dbg !5311
  br label %10, !dbg !5312

10:                                               ; preds = %3, %1, %7
  %11 = phi i32 [ 0, %7 ], [ -4, %1 ], [ -2, %3 ], !dbg !5300
  ret i32 %11, !dbg !5313
}

; Function Attrs: noinline nounwind optsize
define dso_local void @hal_uart_put_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !5314 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5318, metadata !DIExpression()), !dbg !5321
  call void @llvm.dbg.value(metadata i8 %1, metadata !5319, metadata !DIExpression()), !dbg !5321
  %3 = icmp eq i32 %0, 0, !dbg !5322
  %4 = icmp eq i32 %0, 1, !dbg !5322
  %5 = select i1 %4, i32 1, i32 2, !dbg !5322
  %6 = select i1 %3, i32 0, i32 %5, !dbg !5322
  call void @llvm.dbg.value(metadata i32 %6, metadata !5320, metadata !DIExpression()), !dbg !5321
  %7 = icmp eq i32 %6, 2, !dbg !5323
  br i1 %7, label %9, label %8, !dbg !5325

8:                                                ; preds = %2
  tail call void @uart_output_char(i32 noundef %6, i8 noundef zeroext %1) #15, !dbg !5326
  br label %9, !dbg !5328

9:                                                ; preds = %2, %8
  ret void, !dbg !5329
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_polling(i32 noundef %0, i8* noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !5330 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5334, metadata !DIExpression()), !dbg !5339
  call void @llvm.dbg.value(metadata i8* %1, metadata !5335, metadata !DIExpression()), !dbg !5339
  call void @llvm.dbg.value(metadata i32 %2, metadata !5336, metadata !DIExpression()), !dbg !5339
  %4 = icmp eq i32 %0, 0, !dbg !5340
  %5 = icmp eq i32 %0, 1, !dbg !5340
  %6 = select i1 %5, i32 1, i32 2, !dbg !5340
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5340
  call void @llvm.dbg.value(metadata i32 %7, metadata !5337, metadata !DIExpression()), !dbg !5339
  %8 = icmp eq i8* %1, null, !dbg !5341
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !5343
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !5343
  call void @llvm.dbg.value(metadata i32 0, metadata !5338, metadata !DIExpression()), !dbg !5339
  br i1 %12, label %19, label %13, !dbg !5343

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !5338, metadata !DIExpression()), !dbg !5339
  %15 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !5344
  %16 = load i8, i8* %15, align 1, !dbg !5344
  tail call void @uart_output_char(i32 noundef %7, i8 noundef zeroext %16) #15, !dbg !5350
  %17 = add nuw i32 %14, 1, !dbg !5351
  call void @llvm.dbg.value(metadata i32 %17, metadata !5338, metadata !DIExpression()), !dbg !5339
  %18 = icmp eq i32 %17, %2, !dbg !5352
  br i1 %18, label %19, label %13, !dbg !5353, !llvm.loop !5354

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !5339
  ret i32 %20, !dbg !5356
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !5357 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5359, metadata !DIExpression()), !dbg !5366
  call void @llvm.dbg.value(metadata i8* %1, metadata !5360, metadata !DIExpression()), !dbg !5366
  call void @llvm.dbg.value(metadata i32 %2, metadata !5361, metadata !DIExpression()), !dbg !5366
  %5 = bitcast i32* %4 to i8*, !dbg !5367
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #18, !dbg !5367
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5368
  br i1 %6, label %7, label %24, !dbg !5370

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !5371
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !5373
  br i1 %10, label %24, label %11, !dbg !5373

11:                                               ; preds = %7
  %12 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !5374
  %13 = load i8, i8* %12, align 4, !dbg !5374, !range !4197
  %14 = icmp eq i8 %13, 0, !dbg !5374
  br i1 %14, label %24, label %15, !dbg !5376

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #16, !dbg !5377, !range !5173
  call void @llvm.dbg.value(metadata i32* %4, metadata !5362, metadata !DIExpression(DW_OP_deref)), !dbg !5366
  call void @halUART_Get_VFIFO_Length(i32 noundef %16, i32 noundef 0, i32* noundef nonnull %4) #15, !dbg !5378
  %17 = load i32, i32* %4, align 4, !dbg !5379
  call void @llvm.dbg.value(metadata i32 %17, metadata !5362, metadata !DIExpression()), !dbg !5366
  %18 = icmp ult i32 %17, %2, !dbg !5381
  %19 = select i1 %18, i32 %17, i32 %2
  call void @llvm.dbg.value(metadata i32 %19, metadata !5363, metadata !DIExpression()), !dbg !5366
  call void @halUART_Write_VFIFO_Data(i32 noundef %16, i8* noundef nonnull %1, i32 noundef %19) #15, !dbg !5382
  %20 = load i32, i32* %4, align 4, !dbg !5383
  call void @llvm.dbg.value(metadata i32 %20, metadata !5362, metadata !DIExpression()), !dbg !5366
  %21 = icmp eq i32 %19, %20, !dbg !5385
  br i1 %21, label %22, label %24, !dbg !5386

22:                                               ; preds = %15
  %23 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %16, i1 noundef zeroext false) #16, !dbg !5387, !range !5389
  call void @llvm.dbg.value(metadata i32 %23, metadata !5364, metadata !DIExpression()), !dbg !5366
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %23) #15, !dbg !5390
  br label %24, !dbg !5391

24:                                               ; preds = %15, %22, %11, %7, %3
  %25 = phi i32 [ 0, %3 ], [ 0, %7 ], [ 0, %11 ], [ %19, %22 ], [ %19, %15 ], !dbg !5366
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #18, !dbg !5392
  ret i32 %25, !dbg !5392
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #10 !dbg !5393 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5397, metadata !DIExpression()), !dbg !5400
  call void @llvm.dbg.value(metadata i1 %1, metadata !5398, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5400
  %3 = icmp eq i32 %0, 0, !dbg !5401
  %4 = select i1 %1, i32 15, i32 14, !dbg !5403
  %5 = select i1 %1, i32 17, i32 16, !dbg !5403
  %6 = select i1 %3, i32 %4, i32 %5, !dbg !5403
  call void @llvm.dbg.value(metadata i32 %6, metadata !5399, metadata !DIExpression()), !dbg !5400
  ret i32 %6, !dbg !5404
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_enable_interrupt(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @hal_uart_get_char(i32 noundef %0) local_unnamed_addr #0 !dbg !5405 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5409, metadata !DIExpression()), !dbg !5411
  %2 = icmp eq i32 %0, 0, !dbg !5412
  %3 = icmp eq i32 %0, 1, !dbg !5412
  %4 = select i1 %3, i32 1, i32 2, !dbg !5412
  %5 = select i1 %2, i32 0, i32 %4, !dbg !5412
  call void @llvm.dbg.value(metadata i32 %5, metadata !5410, metadata !DIExpression()), !dbg !5411
  %6 = icmp ult i32 %5, 2, !dbg !5413
  br i1 %6, label %7, label %9, !dbg !5415

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @uart_input_char(i32 noundef %5) #15, !dbg !5416
  br label %9, !dbg !5418

9:                                                ; preds = %1, %7
  %10 = phi i8 [ %8, %7 ], [ 0, %1 ], !dbg !5419
  ret i8 %10, !dbg !5420
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_char_unblocking(i32 noundef %0) local_unnamed_addr #0 !dbg !5421 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5425, metadata !DIExpression()), !dbg !5427
  %2 = icmp eq i32 %0, 0, !dbg !5428
  %3 = icmp eq i32 %0, 1, !dbg !5428
  %4 = select i1 %3, i32 1, i32 2, !dbg !5428
  %5 = select i1 %2, i32 0, i32 %4, !dbg !5428
  call void @llvm.dbg.value(metadata i32 %5, metadata !5426, metadata !DIExpression()), !dbg !5427
  %6 = icmp ult i32 %5, 2, !dbg !5429
  br i1 %6, label %7, label %9, !dbg !5431

7:                                                ; preds = %1
  %8 = tail call i32 @uart_input_char_unblocking(i32 noundef %5) #15, !dbg !5432
  br label %9, !dbg !5434

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ], !dbg !5435
  ret i32 %10, !dbg !5436
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_polling(i32 noundef %0, i8* noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !5437 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5441, metadata !DIExpression()), !dbg !5446
  call void @llvm.dbg.value(metadata i8* %1, metadata !5442, metadata !DIExpression()), !dbg !5446
  call void @llvm.dbg.value(metadata i32 %2, metadata !5443, metadata !DIExpression()), !dbg !5446
  %4 = icmp eq i32 %0, 0, !dbg !5447
  %5 = icmp eq i32 %0, 1, !dbg !5447
  %6 = select i1 %5, i32 1, i32 2, !dbg !5447
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5447
  call void @llvm.dbg.value(metadata i32 %7, metadata !5444, metadata !DIExpression()), !dbg !5446
  %8 = icmp eq i8* %1, null, !dbg !5448
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !5450
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !5450
  call void @llvm.dbg.value(metadata i32 0, metadata !5445, metadata !DIExpression()), !dbg !5446
  br i1 %12, label %19, label %13, !dbg !5450

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !5445, metadata !DIExpression()), !dbg !5446
  %15 = tail call zeroext i8 @uart_input_char(i32 noundef %7) #15, !dbg !5451
  %16 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !5457
  store i8 %15, i8* %16, align 1, !dbg !5458
  %17 = add nuw i32 %14, 1, !dbg !5459
  call void @llvm.dbg.value(metadata i32 %17, metadata !5445, metadata !DIExpression()), !dbg !5446
  %18 = icmp eq i32 %17, %2, !dbg !5460
  br i1 %18, label %19, label %13, !dbg !5461, !llvm.loop !5462

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !5446
  ret i32 %20, !dbg !5464
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !5465 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5467, metadata !DIExpression()), !dbg !5473
  call void @llvm.dbg.value(metadata i8* %1, metadata !5468, metadata !DIExpression()), !dbg !5473
  call void @llvm.dbg.value(metadata i32 %2, metadata !5469, metadata !DIExpression()), !dbg !5473
  %5 = bitcast i32* %4 to i8*, !dbg !5474
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #18, !dbg !5474
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5475
  br i1 %6, label %7, label %20, !dbg !5477

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !5478
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !5480
  br i1 %10, label %20, label %11, !dbg !5480

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #16, !dbg !5481, !range !5173
  call void @llvm.dbg.value(metadata i32* %4, metadata !5470, metadata !DIExpression(DW_OP_deref)), !dbg !5473
  call void @halUART_Get_VFIFO_Length(i32 noundef %12, i32 noundef 1, i32* noundef nonnull %4) #15, !dbg !5482
  %13 = load i32, i32* %4, align 4, !dbg !5483
  call void @llvm.dbg.value(metadata i32 %13, metadata !5470, metadata !DIExpression()), !dbg !5473
  %14 = icmp ult i32 %13, %2, !dbg !5485
  %15 = select i1 %14, i32 %13, i32 %2
  call void @llvm.dbg.value(metadata i32 %15, metadata !5471, metadata !DIExpression()), !dbg !5473
  call void @halUART_Read_VFIFO_Data(i32 noundef %12, i8* noundef nonnull %1, i32 noundef %15) #15, !dbg !5486
  %16 = load i32, i32* %4, align 4, !dbg !5487
  call void @llvm.dbg.value(metadata i32 %16, metadata !5470, metadata !DIExpression()), !dbg !5473
  %17 = icmp eq i32 %15, %16, !dbg !5489
  br i1 %17, label %18, label %20, !dbg !5490

18:                                               ; preds = %11
  %19 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %12, i1 noundef zeroext true) #16, !dbg !5491, !range !5389
  call void @llvm.dbg.value(metadata i32 %19, metadata !5472, metadata !DIExpression()), !dbg !5473
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %19) #15, !dbg !5493
  br label %20, !dbg !5494

20:                                               ; preds = %11, %18, %7, %3
  %21 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %15, %18 ], [ %15, %11 ], !dbg !5473
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #18, !dbg !5495
  ret i32 %21, !dbg !5495
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_send_space(i32 noundef %0) local_unnamed_addr #0 !dbg !5496 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5498, metadata !DIExpression()), !dbg !5500
  %3 = bitcast i32* %2 to i8*, !dbg !5501
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #18, !dbg !5501
  call void @llvm.dbg.value(metadata i32 0, metadata !5499, metadata !DIExpression()), !dbg !5500
  store i32 0, i32* %2, align 4, !dbg !5502
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5503
  br i1 %4, label %5, label %8, !dbg !5505

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #16, !dbg !5506, !range !5173
  call void @llvm.dbg.value(metadata i32* %2, metadata !5499, metadata !DIExpression(DW_OP_deref)), !dbg !5500
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 0, i32* noundef nonnull %2) #15, !dbg !5507
  %7 = load i32, i32* %2, align 4, !dbg !5508
  call void @llvm.dbg.value(metadata i32 %7, metadata !5499, metadata !DIExpression()), !dbg !5500
  br label %8, !dbg !5509

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !5500
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #18, !dbg !5510
  ret i32 %9, !dbg !5510
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_receive_bytes(i32 noundef %0) local_unnamed_addr #0 !dbg !5511 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5513, metadata !DIExpression()), !dbg !5515
  %3 = bitcast i32* %2 to i8*, !dbg !5516
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #18, !dbg !5516
  call void @llvm.dbg.value(metadata i32 0, metadata !5514, metadata !DIExpression()), !dbg !5515
  store i32 0, i32* %2, align 4, !dbg !5517
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5518
  br i1 %4, label %5, label %8, !dbg !5520

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #16, !dbg !5521, !range !5173
  call void @llvm.dbg.value(metadata i32* %2, metadata !5514, metadata !DIExpression(DW_OP_deref)), !dbg !5515
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 1, i32* noundef nonnull %2) #15, !dbg !5522
  %7 = load i32, i32* %2, align 4, !dbg !5523
  call void @llvm.dbg.value(metadata i32 %7, metadata !5514, metadata !DIExpression()), !dbg !5515
  br label %8, !dbg !5524

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !5515
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #18, !dbg !5525
  ret i32 %9, !dbg !5525
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_register_callback(i32 noundef %0, void (i32, i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #0 !dbg !5526 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5530, metadata !DIExpression()), !dbg !5534
  call void @llvm.dbg.value(metadata void (i32, i8*)* %1, metadata !5531, metadata !DIExpression()), !dbg !5534
  call void @llvm.dbg.value(metadata i8* %2, metadata !5532, metadata !DIExpression()), !dbg !5534
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5535
  %5 = icmp ne void (i32, i8*)* %1, null
  %6 = and i1 %5, %4, !dbg !5537
  br i1 %6, label %7, label %18, !dbg !5537

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 0, !dbg !5538
  store void (i32, i8*)* %1, void (i32, i8*)** %8, align 4, !dbg !5539
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 1, !dbg !5540
  store i8* %2, i8** %9, align 4, !dbg !5541
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 2, !dbg !5542
  store i8 1, i8* %10, align 4, !dbg !5543
  %11 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #16, !dbg !5544
  %12 = tail call fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) #16, !dbg !5545
  tail call void @halUART_VDMA_Rx_Register_Callback(i32 noundef %11, void ()* noundef %12) #15, !dbg !5546
  tail call void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %11, void ()* noundef %12) #15, !dbg !5547
  %13 = icmp eq i32 %11, 0, !dbg !5548
  br i1 %13, label %14, label %15, !dbg !5550

14:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 14, void ()* noundef nonnull @hal_uart_send_callback0) #15, !dbg !5551
  br label %16, !dbg !5553

15:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 16, void ()* noundef nonnull @hal_uart_send_callback1) #15, !dbg !5554
  br label %16

16:                                               ; preds = %15, %14
  %17 = tail call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %11, i1 noundef zeroext false) #16, !dbg !5556, !range !5389
  call void @llvm.dbg.value(metadata i32 %17, metadata !5533, metadata !DIExpression()), !dbg !5534
  tail call void @DMA_Vfifo_enable_interrupt(i32 noundef %17) #15, !dbg !5557
  br label %18, !dbg !5558

18:                                               ; preds = %3, %16
  %19 = phi i32 [ 0, %16 ], [ -4, %3 ], !dbg !5534
  ret i32 %19, !dbg !5559
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) unnamed_addr #10 !dbg !678 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !684, metadata !DIExpression()), !dbg !5560
  %2 = getelementptr inbounds [2 x void ()*], [2 x void ()*]* @hal_uart_map_receive_callback.func_tbl, i32 0, i32 %0, !dbg !5561
  %3 = load void ()*, void ()** %2, align 4, !dbg !5561
  ret void ()* %3, !dbg !5562
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback0() #0 !dbg !5563 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !5569, !range !4197
  %2 = icmp eq i8 %1, 0, !dbg !5569
  br i1 %2, label %8, label %3, !dbg !5570

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !5571
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !5573
  br i1 %5, label %8, label %6, !dbg !5574

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !5575
  tail call void %4(i32 noundef 2, i8* noundef %7) #15, !dbg !5577
  br label %8, !dbg !5578

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #16, !dbg !5579, !range !5173
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #16, !dbg !5580
  ret void, !dbg !5581
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback1() #0 !dbg !5582 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !5587, !range !4197
  %2 = icmp eq i8 %1, 0, !dbg !5587
  br i1 %2, label %8, label %3, !dbg !5588

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !5589
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !5591
  br i1 %5, label %8, label %6, !dbg !5592

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !5593
  tail call void %4(i32 noundef 2, i8* noundef %7) #15, !dbg !5595
  br label %8, !dbg !5596

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #16, !dbg !5597, !range !5173
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #16, !dbg !5598
  ret void, !dbg !5599
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @hal_uart_check_irq_disable(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #0 !dbg !5600 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5604, metadata !DIExpression()), !dbg !5611
  call void @llvm.dbg.value(metadata i1 %1, metadata !5605, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5611
  %5 = bitcast i32* %3 to i8*, !dbg !5612
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #18, !dbg !5612
  %6 = bitcast i32* %4 to i8*, !dbg !5612
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #18, !dbg !5612
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !5608, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !5611
  br i1 %1, label %7, label %12, !dbg !5613

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !5608, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !5611
  call void @llvm.dbg.value(metadata i32* %3, metadata !5606, metadata !DIExpression(DW_OP_deref)), !dbg !5611
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 1, i32* noundef nonnull %3) #15, !dbg !5614
  %8 = load i32, i32* %3, align 4, !dbg !5617
  call void @llvm.dbg.value(metadata i32 %8, metadata !5606, metadata !DIExpression()), !dbg !5611
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 5, !dbg !5619
  %10 = load i32, i32* %9, align 4, !dbg !5619
  %11 = icmp ult i32 %8, %10, !dbg !5620
  br i1 %11, label %22, label %20, !dbg !5621

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32* %4, metadata !5607, metadata !DIExpression(DW_OP_deref)), !dbg !5611
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 0, i32* noundef nonnull %4) #15, !dbg !5622
  %13 = load i32, i32* %4, align 4, !dbg !5624
  call void @llvm.dbg.value(metadata i32 %13, metadata !5607, metadata !DIExpression()), !dbg !5611
  %14 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 1, !dbg !5626
  %15 = load i32, i32* %14, align 4, !dbg !5626
  %16 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 2, !dbg !5627
  %17 = load i32, i32* %16, align 4, !dbg !5627
  %18 = sub i32 %15, %17, !dbg !5628
  %19 = icmp ult i32 %13, %18, !dbg !5629
  br i1 %19, label %22, label %20, !dbg !5630

20:                                               ; preds = %12, %7
  %21 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) #16, !dbg !5631, !range !5389
  call void @DMA_Vfifo_disable_interrupt(i32 noundef %21) #15, !dbg !5631
  br label %22, !dbg !5632

22:                                               ; preds = %20, %12, %7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #18, !dbg !5632
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #18, !dbg !5632
  ret void, !dbg !5632
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_disable_interrupt(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback0() #0 !dbg !5633 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !5638, !range !4197
  %2 = icmp eq i8 %1, 0, !dbg !5638
  br i1 %2, label %11, label %3, !dbg !5639

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 0) #16, !dbg !5640
  %5 = icmp eq i32 %4, 0, !dbg !5641
  br i1 %5, label %11, label %6, !dbg !5642

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !5643
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !5645
  br i1 %8, label %11, label %9, !dbg !5646

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !5647
  tail call void %7(i32 noundef 1, i8* noundef %10) #15, !dbg !5649
  br label %11, !dbg !5650

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #16, !dbg !5651, !range !5173
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #16, !dbg !5652
  ret void, !dbg !5653
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback1() #0 !dbg !5654 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !5659, !range !4197
  %2 = icmp eq i8 %1, 0, !dbg !5659
  br i1 %2, label %11, label %3, !dbg !5660

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 1) #16, !dbg !5661
  %5 = icmp eq i32 %4, 0, !dbg !5662
  br i1 %5, label %11, label %6, !dbg !5663

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !5664
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !5666
  br i1 %8, label %11, label %9, !dbg !5667

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !5668
  tail call void %7(i32 noundef 1, i8* noundef %10) #15, !dbg !5670
  br label %11, !dbg !5671

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #16, !dbg !5672, !range !5173
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #16, !dbg !5673
  ret void, !dbg !5674
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_baudrate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !5675 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5679, metadata !DIExpression()), !dbg !5681
  call void @llvm.dbg.value(metadata i32 %1, metadata !5680, metadata !DIExpression()), !dbg !5681
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5682
  %4 = icmp ult i32 %1, 13
  %5 = and i1 %4, %3, !dbg !5684
  br i1 %5, label %6, label %10, !dbg !5684

6:                                                ; preds = %2
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !5685
  %8 = getelementptr inbounds %struct.hal_eint_gpio_map_t, %struct.hal_eint_gpio_map_t* %7, i32 0, i32 0, !dbg !5686
  store i32 %1, i32* %8, align 4, !dbg !5687
  %9 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_eint_gpio_map_t* noundef nonnull %7) #16, !dbg !5688
  br label %10, !dbg !5689

10:                                               ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ -4, %2 ], !dbg !5681
  ret i32 %11, !dbg !5690
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma(i32 noundef %0, %struct.hal_uart_dma_config_t* noundef %1) local_unnamed_addr #0 !dbg !5691 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5697, metadata !DIExpression()), !dbg !5699
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %1, metadata !5698, metadata !DIExpression()), !dbg !5699
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5700
  br i1 %3, label %4, label %28, !dbg !5702

4:                                                ; preds = %2
  %5 = tail call fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef %1) #16, !dbg !5703
  br i1 %5, label %6, label %28, !dbg !5705

6:                                                ; preds = %4
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !5706
  store i8 1, i8* %7, align 4, !dbg !5707
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, !dbg !5708
  %9 = bitcast %struct.hal_uart_dma_config_t* %8 to i8*, !dbg !5709
  %10 = bitcast %struct.hal_uart_dma_config_t* %1 to i8*, !dbg !5710
  %11 = tail call i8* @memcpy(i8* noundef nonnull %9, i8* noundef %10, i32 noundef 28) #15, !dbg !5711
  tail call void @DMA_Init() #15, !dbg !5712
  tail call void @DMA_Vfifo_init() #15, !dbg !5713
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #16, !dbg !5714
  %13 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 3, !dbg !5715
  %14 = load i8*, i8** %13, align 4, !dbg !5715
  %15 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 4, !dbg !5716
  %16 = load i32, i32* %15, align 4, !dbg !5716
  %17 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 6, !dbg !5717
  %18 = load i32, i32* %17, align 4, !dbg !5717
  %19 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 5, !dbg !5718
  %20 = load i32, i32* %19, align 4, !dbg !5718
  %21 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef 5000) #16, !dbg !5719
  tail call void @halUART_Rx_VFIFO_Initialize(i32 noundef %12, i8* noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %21) #15, !dbg !5720
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 0, !dbg !5721
  %23 = load i8*, i8** %22, align 4, !dbg !5721
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 1, !dbg !5722
  %25 = load i32, i32* %24, align 4, !dbg !5722
  %26 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 2, !dbg !5723
  %27 = load i32, i32* %26, align 4, !dbg !5723
  tail call void @halUART_Tx_VFIFO_Initialize(i32 noundef %12, i8* noundef %23, i32 noundef %25, i32 noundef %27) #15, !dbg !5724
  br label %28, !dbg !5725

28:                                               ; preds = %4, %2, %6
  %29 = phi i32 [ 0, %6 ], [ -4, %2 ], [ -4, %4 ], !dbg !5699
  ret i32 %29, !dbg !5726
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef readonly %0) unnamed_addr #6 !dbg !5727 {
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %0, metadata !5731, metadata !DIExpression()), !dbg !5732
  %2 = icmp eq %struct.hal_uart_dma_config_t* %0, null, !dbg !5733
  br i1 %2, label %27, label %3, !dbg !5735

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 3, !dbg !5736
  %5 = load i8*, i8** %4, align 4, !dbg !5736
  %6 = icmp eq i8* %5, null, !dbg !5738
  br i1 %6, label %27, label %7, !dbg !5739

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 4, !dbg !5740
  %9 = load i32, i32* %8, align 4, !dbg !5740
  %10 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 5, !dbg !5742
  %11 = load i32, i32* %10, align 4, !dbg !5742
  %12 = icmp ult i32 %9, %11, !dbg !5743
  br i1 %12, label %27, label %13, !dbg !5744

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 6, !dbg !5745
  %15 = load i32, i32* %14, align 4, !dbg !5745
  %16 = icmp ult i32 %9, %15, !dbg !5747
  br i1 %16, label %27, label %17, !dbg !5748

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 0, !dbg !5749
  %19 = load i8*, i8** %18, align 4, !dbg !5749
  %20 = icmp eq i8* %19, null, !dbg !5751
  br i1 %20, label %27, label %21, !dbg !5752

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 1, !dbg !5753
  %23 = load i32, i32* %22, align 4, !dbg !5753
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 2, !dbg !5755
  %25 = load i32, i32* %24, align 4, !dbg !5755
  %26 = icmp uge i32 %23, %25, !dbg !5756
  br label %27, !dbg !5757

27:                                               ; preds = %21, %17, %13, %7, %3, %1
  %28 = phi i1 [ false, %1 ], [ false, %3 ], [ false, %7 ], [ false, %13 ], [ false, %17 ], [ %26, %21 ], !dbg !5732
  ret i1 %28, !dbg !5758
}

; Function Attrs: optsize
declare dso_local void @DMA_Init() local_unnamed_addr #2

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_init() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @hal_uart_translate_timeout(i32 noundef %0) unnamed_addr #0 !dbg !5759 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5761, metadata !DIExpression()), !dbg !5763
  %2 = tail call i32 @top_mcu_freq_get() #15, !dbg !5764
  %3 = udiv i32 %2, 1000000, !dbg !5765
  call void @llvm.dbg.value(metadata i32 %3, metadata !5762, metadata !DIExpression()), !dbg !5763
  %4 = mul i32 %3, %0, !dbg !5766
  ret i32 %4, !dbg !5767
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !5768 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5770, metadata !DIExpression()), !dbg !5772
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5773
  br i1 %2, label %3, label %8, !dbg !5775

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !5776
  %5 = icmp eq i32 %0, 1, !dbg !5776
  %6 = select i1 %5, i32 1, i32 2, !dbg !5776
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5776
  call void @llvm.dbg.value(metadata i32 %7, metadata !5771, metadata !DIExpression()), !dbg !5772
  tail call void @uart_set_hardware_flowcontrol(i32 noundef %7) #15, !dbg !5777
  br label %8, !dbg !5778

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !5772
  ret i32 %9, !dbg !5779
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 !dbg !5780 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5784, metadata !DIExpression()), !dbg !5789
  call void @llvm.dbg.value(metadata i8 %1, metadata !5785, metadata !DIExpression()), !dbg !5789
  call void @llvm.dbg.value(metadata i8 %2, metadata !5786, metadata !DIExpression()), !dbg !5789
  call void @llvm.dbg.value(metadata i8 %3, metadata !5787, metadata !DIExpression()), !dbg !5789
  %5 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5790
  br i1 %5, label %6, label %11, !dbg !5792

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 0, !dbg !5793
  %8 = icmp eq i32 %0, 1, !dbg !5793
  %9 = select i1 %8, i32 1, i32 2, !dbg !5793
  %10 = select i1 %7, i32 0, i32 %9, !dbg !5793
  call void @llvm.dbg.value(metadata i32 %10, metadata !5788, metadata !DIExpression()), !dbg !5789
  tail call void @uart_set_software_flowcontrol(i32 noundef %10, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #15, !dbg !5794
  br label %11, !dbg !5795

11:                                               ; preds = %4, %6
  %12 = phi i32 [ 0, %6 ], [ -4, %4 ], !dbg !5789
  ret i32 %12, !dbg !5796
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !5797 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5799, metadata !DIExpression()), !dbg !5801
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5802
  br i1 %2, label %3, label %8, !dbg !5804

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !5805
  %5 = icmp eq i32 %0, 1, !dbg !5805
  %6 = select i1 %5, i32 1, i32 2, !dbg !5805
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5805
  call void @llvm.dbg.value(metadata i32 %7, metadata !5800, metadata !DIExpression()), !dbg !5801
  tail call void @uart_disable_flowcontrol(i32 noundef %7) #15, !dbg !5806
  br label %8, !dbg !5807

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !5801
  ret i32 %9, !dbg !5808
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma_timeout(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !5809 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5813, metadata !DIExpression()), !dbg !5815
  call void @llvm.dbg.value(metadata i32 %1, metadata !5814, metadata !DIExpression()), !dbg !5815
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5816
  br i1 %3, label %4, label %8, !dbg !5818

4:                                                ; preds = %2
  %5 = icmp eq i32 %0, 0, !dbg !5819
  %6 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef %1) #16, !dbg !5821
  %7 = select i1 %5, i32 15, i32 17
  tail call void @DMA_Vfifo_Set_timeout(i32 noundef %7, i32 noundef %6) #15, !dbg !5821
  br label %8, !dbg !5822

8:                                                ; preds = %4, %2
  %9 = phi i32 [ -4, %2 ], [ 0, %4 ], !dbg !5815
  ret i32 %9, !dbg !5822
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Set_timeout(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @__io_putchar(i32 noundef returned %0) local_unnamed_addr #0 !dbg !5823 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5827, metadata !DIExpression()), !dbg !5828
  %2 = trunc i32 %0 to i8, !dbg !5829
  tail call void @hal_uart_put_char(i32 noundef 0, i8 noundef zeroext %2) #15, !dbg !5830
  ret i32 %0, !dbg !5831
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local i32 @main() local_unnamed_addr #14 !dbg !5832 {
  tail call fastcc void @SystemClock_Config() #16, !dbg !5833
  tail call void @SystemCoreClockUpdate() #15, !dbg !5834
  tail call fastcc void @prvSetupHardware() #16, !dbg !5835
  tail call void asm sideeffect "cpsie i", "~{memory}"() #18, !dbg !5836, !srcloc !5839
  tail call void asm sideeffect "cpsie f", "~{memory}"() #18, !dbg !5840, !srcloc !5843
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0)) #15, !dbg !5844
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.43, i32 0, i32 0)) #15, !dbg !5845
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.44, i32 0, i32 0)) #15, !dbg !5846
  %4 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0)) #15, !dbg !5847
  tail call fastcc void @eint_sample() #16, !dbg !5848
  br label %5, !dbg !5849

5:                                                ; preds = %0, %5
  br label %5, !dbg !5849, !llvm.loop !5850
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @SystemClock_Config() unnamed_addr #0 !dbg !5852 {
  tail call void @top_xtal_init() #15, !dbg !5853
  ret void, !dbg !5854
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvSetupHardware() unnamed_addr #0 !dbg !5855 {
  tail call fastcc void @log_uart_init() #16, !dbg !5856
  ret void, !dbg !5857
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @eint_sample() unnamed_addr #0 !dbg !5858 {
  %1 = alloca %struct.gpio_backup_restore_t, align 4
  %2 = bitcast %struct.gpio_backup_restore_t* %1 to i8*, !dbg !5866
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #18, !dbg !5866
  call void @llvm.dbg.declare(metadata %struct.gpio_backup_restore_t* %1, metadata !5860, metadata !DIExpression()), !dbg !5867
  store i1 true, i1* @irq_num, align 4, !dbg !5868
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3.45, i32 0, i32 0)) #15, !dbg !5869
  %4 = tail call i32 @hal_gpio_init(i32 noundef 37) #15, !dbg !5870
  %5 = tail call i32 @hal_pinmux_set_function(i32 noundef 37, i8 noundef zeroext 3) #15, !dbg !5871
  %6 = tail call i32 @hal_gpio_set_direction(i32 noundef 37, i32 noundef 0) #15, !dbg !5872
  %7 = tail call i32 @hal_gpio_disable_pull(i32 noundef 37) #15, !dbg !5873
  %8 = getelementptr inbounds %struct.gpio_backup_restore_t, %struct.gpio_backup_restore_t* %1, i32 0, i32 0, !dbg !5874
  store i32 3, i32* %8, align 4, !dbg !5875
  %9 = getelementptr inbounds %struct.gpio_backup_restore_t, %struct.gpio_backup_restore_t* %1, i32 0, i32 1, !dbg !5876
  store i32 5, i32* %9, align 4, !dbg !5877
  %10 = load i1, i1* @irq_num, align 4, !dbg !5878
  %11 = select i1 %10, i32 20, i32 0, !dbg !5878
  %12 = tail call i32 @hal_eint_mask(i32 noundef %11) #15, !dbg !5879
  %13 = load i1, i1* @irq_num, align 4, !dbg !5880
  %14 = select i1 %13, i32 20, i32 0, !dbg !5880
  %15 = call i32 @hal_eint_init(i32 noundef %14, %struct.gpio_backup_restore_t* noundef nonnull %1) #15, !dbg !5881
  %16 = load i1, i1* @irq_num, align 4, !dbg !5882
  %17 = select i1 %16, i32 20, i32 0, !dbg !5882
  %18 = call i32 @hal_eint_register_callback(i32 noundef %17, void (i8*)* noundef nonnull @eint_irq_handler, i8* noundef null) #15, !dbg !5883
  %19 = load i1, i1* @irq_num, align 4, !dbg !5884
  %20 = select i1 %19, i32 20, i32 0, !dbg !5884
  %21 = call i32 @hal_eint_unmask(i32 noundef %20) #15, !dbg !5885
  %22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4.46, i32 0, i32 0)) #15, !dbg !5886
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #18, !dbg !5887
  ret void, !dbg !5887
}

; Function Attrs: noinline nounwind optsize
define internal void @eint_irq_handler(i8* nocapture noundef readnone %0) #0 !dbg !5888 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5890, metadata !DIExpression()), !dbg !5891
  %2 = load i1, i1* @irq_num, align 4, !dbg !5892
  %3 = select i1 %2, i32 20, i32 0, !dbg !5892
  %4 = tail call i32 @hal_eint_mask(i32 noundef %3) #15, !dbg !5893
  %5 = load i1, i1* @irq_num, align 4, !dbg !5894
  %6 = select i1 %5, i32 20, i32 0, !dbg !5894
  %7 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5.47, i32 0, i32 0), i32 noundef %6) #15, !dbg !5895
  %8 = load i1, i1* @irq_num, align 4, !dbg !5896
  %9 = select i1 %8, i32 20, i32 0, !dbg !5896
  %10 = tail call i32 @hal_eint_unmask(i32 noundef %9) #15, !dbg !5897
  ret void, !dbg !5898
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @log_uart_init() unnamed_addr #0 !dbg !5899 {
  %1 = alloca %struct.hal_eint_gpio_map_t, align 4
  %2 = bitcast %struct.hal_eint_gpio_map_t* %1 to i8*, !dbg !5909
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #18, !dbg !5909
  call void @llvm.dbg.declare(metadata %struct.hal_eint_gpio_map_t* %1, metadata !5901, metadata !DIExpression()), !dbg !5910
  %3 = tail call i32 @hal_pinmux_set_function(i32 noundef 0, i8 noundef zeroext 7) #15, !dbg !5911
  %4 = tail call i32 @hal_pinmux_set_function(i32 noundef 1, i8 noundef zeroext 7) #15, !dbg !5912
  %5 = tail call i32 @hal_pinmux_set_function(i32 noundef 2, i8 noundef zeroext 7) #15, !dbg !5913
  %6 = tail call i32 @hal_pinmux_set_function(i32 noundef 3, i8 noundef zeroext 7) #15, !dbg !5914
  %7 = getelementptr inbounds %struct.hal_eint_gpio_map_t, %struct.hal_eint_gpio_map_t* %1, i32 0, i32 0, !dbg !5915
  store i32 9, i32* %7, align 4, !dbg !5916
  %8 = getelementptr inbounds %struct.hal_eint_gpio_map_t, %struct.hal_eint_gpio_map_t* %1, i32 0, i32 1, !dbg !5917
  store i32 3, i32* %8, align 4, !dbg !5918
  %9 = getelementptr inbounds %struct.hal_eint_gpio_map_t, %struct.hal_eint_gpio_map_t* %1, i32 0, i32 2, !dbg !5919
  store i32 0, i32* %9, align 4, !dbg !5920
  %10 = getelementptr inbounds %struct.hal_eint_gpio_map_t, %struct.hal_eint_gpio_map_t* %1, i32 0, i32 3, !dbg !5921
  store i32 0, i32* %10, align 4, !dbg !5922
  %11 = call i32 @hal_uart_init(i32 noundef 0, %struct.hal_eint_gpio_map_t* noundef nonnull %1) #15, !dbg !5923
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #18, !dbg !5924
  ret void, !dbg !5924
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @SysTick_Set(i32 noundef %0) local_unnamed_addr #3 !dbg !5925 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5927, metadata !DIExpression()), !dbg !5929
  %2 = add i32 %0, -1, !dbg !5930
  %3 = icmp ugt i32 %2, 16777215, !dbg !5932
  br i1 %3, label %8, label %4, !dbg !5933

4:                                                ; preds = %1
  %5 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5934
  call void @llvm.dbg.value(metadata i32 %5, metadata !5928, metadata !DIExpression()), !dbg !5929
  %6 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5935
  %7 = and i32 %6, -4, !dbg !5935
  store volatile i32 %7, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5935
  store volatile i32 %2, i32* inttoptr (i32 -536813548 to i32*), align 4, !dbg !5936
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !dbg !5937
  store volatile i32 %5, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5938
  br label %8, !dbg !5939

8:                                                ; preds = %1, %4
  %9 = phi i32 [ 0, %4 ], [ 1, %1 ], !dbg !5929
  ret i32 %9, !dbg !5940
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SysInitStatus_Set() local_unnamed_addr #3 !dbg !5941 {
  store volatile i32 1, i32* @System_Initialize_Done, align 4, !dbg !5942
  ret void, !dbg !5943
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @SysInitStatus_Query() local_unnamed_addr #4 !dbg !5944 {
  %1 = load volatile i32, i32* @System_Initialize_Done, align 4, !dbg !5945
  ret i32 %1, !dbg !5946
}

; Function Attrs: noinline nounwind optsize
define dso_local void @SystemCoreClockUpdate() local_unnamed_addr #0 !dbg !5947 {
  %1 = tail call i32 @top_mcu_freq_get() #15, !dbg !5948
  store i32 %1, i32* @SystemCoreClock, align 4, !dbg !5949
  ret void, !dbg !5950
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SystemInit() local_unnamed_addr #3 !dbg !5951 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !5952
  %2 = or i32 %1, 15728640, !dbg !5952
  store volatile i32 %2, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !5952
  store volatile i32 536870912, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !5953
  %3 = load volatile i32, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !5954
  %4 = or i32 %3, 458752, !dbg !5954
  store volatile i32 %4, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !5954
  ret void, !dbg !5955
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @CachePreInit() local_unnamed_addr #3 !dbg !5956 {
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !5957
  store volatile i32 19, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !5958
  store volatile i32 3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !5959
  store volatile i32 268931328, i32* inttoptr (i32 22282240 to i32*), align 262144, !dbg !5960
  store volatile i32 270950400, i32* inttoptr (i32 22282304 to i32*), align 64, !dbg !5961
  store volatile i32 1, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !5962
  store volatile i32 781, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !5963
  ret void, !dbg !5964
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_close(i32 noundef %0) local_unnamed_addr #10 !dbg !5965 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5967, metadata !DIExpression()), !dbg !5968
  ret i32 0, !dbg !5969
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_fstat(i32 noundef %0, %struct.stat* nocapture noundef readnone %1) local_unnamed_addr #10 !dbg !5970 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6020, metadata !DIExpression()), !dbg !6022
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !6021, metadata !DIExpression()), !dbg !6022
  ret i32 0, !dbg !6023
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_isatty(i32 noundef %0) local_unnamed_addr #10 !dbg !6024 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6026, metadata !DIExpression()), !dbg !6027
  ret i32 1, !dbg !6028
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_lseek(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !6029 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6033, metadata !DIExpression()), !dbg !6036
  call void @llvm.dbg.value(metadata i32 %1, metadata !6034, metadata !DIExpression()), !dbg !6036
  call void @llvm.dbg.value(metadata i32 %2, metadata !6035, metadata !DIExpression()), !dbg !6036
  ret i32 0, !dbg !6037
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_open(i8* nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !6038 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !6042, metadata !DIExpression()), !dbg !6045
  call void @llvm.dbg.value(metadata i32 %1, metadata !6043, metadata !DIExpression()), !dbg !6045
  call void @llvm.dbg.value(metadata i32 %2, metadata !6044, metadata !DIExpression()), !dbg !6045
  ret i32 -1, !dbg !6046
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_read(i32 noundef %0, i8* nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #10 !dbg !6047 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6051, metadata !DIExpression()), !dbg !6054
  call void @llvm.dbg.value(metadata i8* %1, metadata !6052, metadata !DIExpression()), !dbg !6054
  call void @llvm.dbg.value(metadata i32 %2, metadata !6053, metadata !DIExpression()), !dbg !6054
  ret i32 0, !dbg !6055
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_write(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef returned %2) local_unnamed_addr #0 !dbg !6056 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6058, metadata !DIExpression()), !dbg !6062
  call void @llvm.dbg.value(metadata i8* %1, metadata !6059, metadata !DIExpression()), !dbg !6062
  call void @llvm.dbg.value(metadata i32 %2, metadata !6060, metadata !DIExpression()), !dbg !6062
  call void @llvm.dbg.value(metadata i32 0, metadata !6061, metadata !DIExpression()), !dbg !6062
  %4 = icmp sgt i32 %2, 0, !dbg !6063
  br i1 %4, label %5, label %14, !dbg !6066

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %12, %5 ], [ 0, %3 ]
  %7 = phi i8* [ %8, %5 ], [ %1, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !6061, metadata !DIExpression()), !dbg !6062
  call void @llvm.dbg.value(metadata i8* %7, metadata !6059, metadata !DIExpression()), !dbg !6062
  %8 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !6067
  call void @llvm.dbg.value(metadata i8* %8, metadata !6059, metadata !DIExpression()), !dbg !6062
  %9 = load i8, i8* %7, align 1, !dbg !6069
  %10 = zext i8 %9 to i32, !dbg !6069
  %11 = tail call i32 @__io_putchar(i32 noundef %10) #15, !dbg !6070
  %12 = add nuw nsw i32 %6, 1, !dbg !6071
  call void @llvm.dbg.value(metadata i32 %12, metadata !6061, metadata !DIExpression()), !dbg !6062
  %13 = icmp eq i32 %12, %2, !dbg !6063
  br i1 %13, label %14, label %5, !dbg !6066, !llvm.loop !6072

14:                                               ; preds = %5, %3
  ret i32 %2, !dbg !6074
}

; Function Attrs: noinline nounwind optsize
define dso_local i8* @_sbrk_r(%struct._reent* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #0 !dbg !845 {
  call void @llvm.dbg.value(metadata %struct._reent* %0, metadata !1048, metadata !DIExpression()), !dbg !6075
  call void @llvm.dbg.value(metadata i32 %1, metadata !1049, metadata !DIExpression()), !dbg !6075
  %3 = tail call i8* asm sideeffect "MRS $0, msp\0A", "=r"() #18, !dbg !6076, !srcloc !6077
  call void @llvm.dbg.value(metadata i8* %3, metadata !1051, metadata !DIExpression()), !dbg !6075
  %4 = load i8*, i8** @_sbrk_r.heap_end, align 4, !dbg !6078
  %5 = icmp eq i8* %4, null, !dbg !6080
  %6 = select i1 %5, i8* @end, i8* %4, !dbg !6081
  call void @llvm.dbg.value(metadata i8* %6, metadata !1050, metadata !DIExpression()), !dbg !6075
  %7 = getelementptr inbounds i8, i8* %6, i32 %1, !dbg !6082
  %8 = icmp ult i8* %3, %7, !dbg !6084
  %9 = xor i1 %8, true, !dbg !6085
  %10 = or i1 %5, %9, !dbg !6085
  br i1 %10, label %11, label %13, !dbg !6085

11:                                               ; preds = %2
  %12 = select i1 %8, i8* %6, i8* %7, !dbg !6086
  store i8* %12, i8** @_sbrk_r.heap_end, align 4, !dbg !6085
  br label %13, !dbg !6085

13:                                               ; preds = %2, %11
  %14 = select i1 %8, i8* inttoptr (i32 -1 to i8*), i8* %6, !dbg !6086
  ret i8* %14, !dbg !6085
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local void @_exit(i32 noundef %0) local_unnamed_addr #14 !dbg !6087 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6089, metadata !DIExpression()), !dbg !6090
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0)) #15, !dbg !6091
  br label %3, !dbg !6092

3:                                                ; preds = %1, %3
  br label %3, !dbg !6092, !llvm.loop !6093
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_kill(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !6095 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6099, metadata !DIExpression()), !dbg !6101
  call void @llvm.dbg.value(metadata i32 %1, metadata !6100, metadata !DIExpression()), !dbg !6101
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.55, i32 0, i32 0), i32 noundef %1) #15, !dbg !6102
  ret i32 -1, !dbg !6103
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_getpid() local_unnamed_addr #0 !dbg !6104 {
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.56, i32 0, i32 0)) #15, !dbg !6109
  ret i32 0, !dbg !6110
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

!llvm.dbg.cu = !{!2, !85, !1071, !324, !1075, !1120, !1123, !370, !382, !1126, !419, !503, !1128, !572, !621, !731, !775, !1043, !1054}
!llvm.ident = !{!1157, !1157, !1157, !1157, !1157, !1157, !1157, !1157, !1157, !1157, !1157, !1157, !1157, !1157, !1157, !1157, !1157, !1157, !1157}
!llvm.module.flags = !{!1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g_u4ClkCnt1ms", scope: !2, file: !3, line: 71, type: !79, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !57, globals: !62, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/gpt.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 121, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/type_def.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "KAL_FALSE", value: 0)
!10 = !DIEnumerator(name: "KAL_TRUE", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IRQn", file: !12, line: 47, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
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
!66 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/gpt.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
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
!86 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_gpio_7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
!87 = !{!88, !11, !93, !124}
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !89, line: 1209, baseType: !7, size: 32, elements: !90)
!89 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_gpio_7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
!90 = !{!91, !92}
!91 = !DIEnumerator(name: "ePAD_CONTROL_BY_N9", value: 0)
!92 = !DIEnumerator(name: "ePAD_CONTROL_BY_CM4", value: 1)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !94, line: 55, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
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
!125 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
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
!210 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cm4.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
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
!325 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/low_hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
!326 = !{!93, !327, !332, !336, !340, !344, !348, !88}
!327 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !328, line: 57, baseType: !7, size: 32, elements: !329)
!328 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/low_hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
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
!371 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/top.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
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
!383 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
!384 = !{!385, !391}
!385 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !386, line: 71, baseType: !7, size: 32, elements: !387)
!386 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
!387 = !{!388, !389, !390}
!388 = !DIEnumerator(name: "UART_PORT0", value: 0)
!389 = !DIEnumerator(name: "UART_PORT1", value: 1)
!390 = !DIEnumerator(name: "UART_MAX_PORT", value: 2)
!391 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !392, line: 129, baseType: !7, size: 32, elements: !393)
!392 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/dma_sw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
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
!420 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_eint.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
!421 = !{!422, !93, !449, !456, !332, !340, !344, !336, !348}
!422 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !423, line: 605, baseType: !7, size: 32, elements: !424)
!423 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_platform.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
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
!450 = !DIFile(filename: "../../../../../driver/chip/inc/hal_eint.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
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
!504 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
!505 = !{!506, !11}
!506 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !507, line: 152, baseType: !13, size: 32, elements: !508)
!507 = !DIFile(filename: "../../../../../driver/chip/inc/hal_nvic.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
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
!573 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gpt.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
!574 = !{!575, !583, !590, !594, !599}
!575 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !576, line: 387, baseType: !13, size: 32, elements: !577)
!576 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpt.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
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
!622 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
!623 = !{!624, !632, !637, !653, !659, !663, !385, !391, !668}
!624 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !625, line: 345, baseType: !13, size: 32, elements: !626)
!625 = !DIFile(filename: "../../../../../driver/chip/inc/hal_uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
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
!729 = !DIGlobalVariableExpression(var: !730, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 20, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!730 = distinct !DIGlobalVariable(name: "irq_num", scope: !731, file: !732, line: 50, type: !497, isLocal: true, isDefinition: true)
!731 = distinct !DICompileUnit(language: DW_LANG_C99, file: !732, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !733, retainedTypes: !770, globals: !771, splitDebugInlining: false, nameTableKind: None)
!732 = !DIFile(filename: "../../../../../project/linkit7697_hdk/hal_examples/eint_edge_falling/src/main.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
!733 = !{!632, !637, !653, !659, !663, !734, !456, !422, !765}
!734 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !423, line: 249, baseType: !7, size: 32, elements: !735)
!735 = !{!736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764}
!736 = !DIEnumerator(name: "HAL_GPIO_0", value: 0)
!737 = !DIEnumerator(name: "HAL_GPIO_1", value: 1)
!738 = !DIEnumerator(name: "HAL_GPIO_2", value: 2)
!739 = !DIEnumerator(name: "HAL_GPIO_3", value: 3)
!740 = !DIEnumerator(name: "HAL_GPIO_4", value: 4)
!741 = !DIEnumerator(name: "HAL_GPIO_5", value: 5)
!742 = !DIEnumerator(name: "HAL_GPIO_6", value: 6)
!743 = !DIEnumerator(name: "HAL_GPIO_7", value: 7)
!744 = !DIEnumerator(name: "HAL_GPIO_24", value: 24)
!745 = !DIEnumerator(name: "HAL_GPIO_25", value: 25)
!746 = !DIEnumerator(name: "HAL_GPIO_26", value: 26)
!747 = !DIEnumerator(name: "HAL_GPIO_27", value: 27)
!748 = !DIEnumerator(name: "HAL_GPIO_28", value: 28)
!749 = !DIEnumerator(name: "HAL_GPIO_29", value: 29)
!750 = !DIEnumerator(name: "HAL_GPIO_30", value: 30)
!751 = !DIEnumerator(name: "HAL_GPIO_31", value: 31)
!752 = !DIEnumerator(name: "HAL_GPIO_32", value: 32)
!753 = !DIEnumerator(name: "HAL_GPIO_33", value: 33)
!754 = !DIEnumerator(name: "HAL_GPIO_34", value: 34)
!755 = !DIEnumerator(name: "HAL_GPIO_35", value: 35)
!756 = !DIEnumerator(name: "HAL_GPIO_36", value: 36)
!757 = !DIEnumerator(name: "HAL_GPIO_37", value: 37)
!758 = !DIEnumerator(name: "HAL_GPIO_38", value: 38)
!759 = !DIEnumerator(name: "HAL_GPIO_39", value: 39)
!760 = !DIEnumerator(name: "HAL_GPIO_57", value: 57)
!761 = !DIEnumerator(name: "HAL_GPIO_58", value: 58)
!762 = !DIEnumerator(name: "HAL_GPIO_59", value: 59)
!763 = !DIEnumerator(name: "HAL_GPIO_60", value: 60)
!764 = !DIEnumerator(name: "HAL_GPIO_MAX", value: 61)
!765 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !766, line: 210, baseType: !7, size: 32, elements: !767)
!766 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
!767 = !{!768, !769}
!768 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_INPUT", value: 0)
!769 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_OUTPUT", value: 1)
!770 = !{!464}
!771 = !{!772}
!772 = !DIGlobalVariableExpression(var: !730, expr: !DIExpression())
!773 = !DIGlobalVariableExpression(var: !774, expr: !DIExpression())
!774 = distinct !DIGlobalVariable(name: "SystemCoreClock", scope: !775, file: !776, line: 59, type: !204, isLocal: false, isDefinition: true)
!775 = distinct !DICompileUnit(language: DW_LANG_C99, file: !776, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !777, globals: !840, splitDebugInlining: false, nameTableKind: None)
!776 = !DIFile(filename: "../../../../../project/linkit7697_hdk/hal_examples/eint_edge_falling/src/system_mt7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
!777 = !{!778, !786, !811}
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 32)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysTick_Type", file: !210, line: 656, baseType: !780)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 650, size: 128, elements: !781)
!781 = !{!782, !783, !784, !785}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "CTRL", scope: !780, file: !210, line: 652, baseType: !215, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "LOAD", scope: !780, file: !210, line: 653, baseType: !215, size: 32, offset: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "VAL", scope: !780, file: !210, line: 654, baseType: !215, size: 32, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "CALIB", scope: !780, file: !210, line: 655, baseType: !251, size: 32, offset: 96)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 32)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !210, line: 418, baseType: !788)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 395, size: 1120, elements: !789)
!789 = !{!790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !788, file: !210, line: 397, baseType: !251, size: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !788, file: !210, line: 398, baseType: !215, size: 32, offset: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !788, file: !210, line: 399, baseType: !215, size: 32, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !788, file: !210, line: 400, baseType: !215, size: 32, offset: 96)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !788, file: !210, line: 401, baseType: !215, size: 32, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !788, file: !210, line: 402, baseType: !215, size: 32, offset: 160)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !788, file: !210, line: 403, baseType: !258, size: 96, offset: 192)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !788, file: !210, line: 404, baseType: !215, size: 32, offset: 288)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !788, file: !210, line: 405, baseType: !215, size: 32, offset: 320)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !788, file: !210, line: 406, baseType: !215, size: 32, offset: 352)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !788, file: !210, line: 407, baseType: !215, size: 32, offset: 384)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !788, file: !210, line: 408, baseType: !215, size: 32, offset: 416)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !788, file: !210, line: 409, baseType: !215, size: 32, offset: 448)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !788, file: !210, line: 410, baseType: !215, size: 32, offset: 480)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !788, file: !210, line: 411, baseType: !269, size: 64, offset: 512)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !788, file: !210, line: 412, baseType: !251, size: 32, offset: 576)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !788, file: !210, line: 413, baseType: !251, size: 32, offset: 608)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !788, file: !210, line: 414, baseType: !275, size: 128, offset: 640)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !788, file: !210, line: 415, baseType: !279, size: 160, offset: 768)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !788, file: !210, line: 416, baseType: !283, size: 160, offset: 928)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !788, file: !210, line: 417, baseType: !215, size: 32, offset: 1088)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 32)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "CACHE_REGISTER_T", file: !813, line: 72, baseType: !814)
!813 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_hw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !813, line: 56, size: 525312, elements: !815)
!815 = !{!816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !830, !831, !835, !839}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CON", scope: !814, file: !813, line: 57, baseType: !215, size: 32)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_OP", scope: !814, file: !813, line: 58, baseType: !215, size: 32, offset: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0L", scope: !814, file: !813, line: 59, baseType: !215, size: 32, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0U", scope: !814, file: !813, line: 60, baseType: !215, size: 32, offset: 96)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0L", scope: !814, file: !813, line: 61, baseType: !215, size: 32, offset: 128)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0U", scope: !814, file: !813, line: 62, baseType: !215, size: 32, offset: 160)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1L", scope: !814, file: !813, line: 63, baseType: !215, size: 32, offset: 192)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1U", scope: !814, file: !813, line: 64, baseType: !215, size: 32, offset: 224)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1L", scope: !814, file: !813, line: 65, baseType: !215, size: 32, offset: 256)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1U", scope: !814, file: !813, line: 66, baseType: !215, size: 32, offset: 288)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !814, file: !813, line: 67, baseType: !827, size: 32, offset: 320)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 32, elements: !828)
!828 = !{!829}
!829 = !DISubrange(count: 1)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_REGION_EN", scope: !814, file: !813, line: 68, baseType: !215, size: 32, offset: 352)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !814, file: !813, line: 69, baseType: !832, size: 523904, offset: 384)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 523904, elements: !833)
!833 = !{!834}
!834 = !DISubrange(count: 16372)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_ENTRY_N", scope: !814, file: !813, line: 70, baseType: !836, size: 512, offset: 524288)
!836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 512, elements: !837)
!837 = !{!838}
!838 = !DISubrange(count: 16)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_END_ENTRY_N", scope: !814, file: !813, line: 71, baseType: !836, size: 512, offset: 524800)
!840 = !{!773, !841}
!841 = !DIGlobalVariableExpression(var: !842, expr: !DIExpression())
!842 = distinct !DIGlobalVariable(name: "System_Initialize_Done", scope: !775, file: !776, line: 61, type: !215, isLocal: true, isDefinition: true)
!843 = !DIGlobalVariableExpression(var: !844, expr: !DIExpression())
!844 = distinct !DIGlobalVariable(name: "heap_end", scope: !845, file: !846, line: 66, type: !851, isLocal: true, isDefinition: true)
!845 = distinct !DISubprogram(name: "_sbrk_r", scope: !846, file: !846, line: 63, type: !847, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1043, retainedNodes: !1047)
!846 = !DIFile(filename: "../../../../../project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC/syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
!847 = !DISubroutineType(types: !848)
!848 = !{!849, !852, !1042}
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !850, line: 123, baseType: !851)
!850 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/types.h", directory: "/home/mjshen/RTOSExploration")
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 32)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 32)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !854, line: 377, size: 1920, elements: !855)
!854 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/reent.h", directory: "/home/mjshen/RTOSExploration")
!855 = !{!856, !857, !931, !932, !933, !934, !935, !936, !937, !940, !961, !965, !966, !967, !968, !978, !991, !992, !997, !1016, !1017, !1024, !1025, !1041}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !853, file: !854, line: 381, baseType: !13, size: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !853, file: !854, line: 386, baseType: !858, size: 32, offset: 32)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 32)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !854, line: 292, baseType: !860)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !854, line: 186, size: 832, elements: !861)
!861 = !{!862, !864, !865, !866, !868, !869, !874, !875, !876, !877, !881, !887, !894, !898, !899, !900, !901, !905, !907, !908, !909, !911, !917, !930}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !860, file: !854, line: 187, baseType: !863, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !860, file: !854, line: 188, baseType: !13, size: 32, offset: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !860, file: !854, line: 189, baseType: !13, size: 32, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !860, file: !854, line: 190, baseType: !867, size: 16, offset: 96)
!867 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !860, file: !854, line: 191, baseType: !867, size: 16, offset: 112)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !860, file: !854, line: 192, baseType: !870, size: 64, offset: 128)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !854, line: 122, size: 64, elements: !871)
!871 = !{!872, !873}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !870, file: !854, line: 123, baseType: !863, size: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !870, file: !854, line: 124, baseType: !13, size: 32, offset: 32)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !860, file: !854, line: 193, baseType: !13, size: 32, offset: 192)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !860, file: !854, line: 196, baseType: !852, size: 32, offset: 224)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !860, file: !854, line: 200, baseType: !464, size: 32, offset: 256)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !860, file: !854, line: 202, baseType: !878, size: 32, offset: 288)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 32)
!879 = !DISubroutineType(types: !880)
!880 = !{!13, !852, !464, !851, !13}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !860, file: !854, line: 204, baseType: !882, size: 32, offset: 320)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 32)
!883 = !DISubroutineType(types: !884)
!884 = !{!13, !852, !464, !885, !13}
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 32)
!886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !674)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !860, file: !854, line: 207, baseType: !888, size: 32, offset: 352)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 32)
!889 = !DISubroutineType(types: !890)
!890 = !{!891, !852, !464, !891, !13}
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !892, line: 116, baseType: !893)
!892 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_types.h", directory: "/home/mjshen/RTOSExploration")
!893 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !860, file: !854, line: 208, baseType: !895, size: 32, offset: 384)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 32)
!896 = !DISubroutineType(types: !897)
!897 = !{!13, !852, !464}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !860, file: !854, line: 211, baseType: !870, size: 64, offset: 416)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !860, file: !854, line: 212, baseType: !863, size: 32, offset: 480)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !860, file: !854, line: 213, baseType: !13, size: 32, offset: 512)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !860, file: !854, line: 216, baseType: !902, size: 24, offset: 544)
!902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 24, elements: !903)
!903 = !{!904}
!904 = !DISubrange(count: 3)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !860, file: !854, line: 217, baseType: !906, size: 8, offset: 568)
!906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 8, elements: !828)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !860, file: !854, line: 220, baseType: !870, size: 64, offset: 576)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !860, file: !854, line: 223, baseType: !13, size: 32, offset: 640)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !860, file: !854, line: 224, baseType: !910, size: 32, offset: 672)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !892, line: 46, baseType: !893)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !860, file: !854, line: 231, baseType: !912, size: 32, offset: 704)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !854, line: 35, baseType: !913)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_T", file: !914, line: 34, baseType: !915)
!914 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/lock.h", directory: "/home/mjshen/RTOSExploration")
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 32)
!916 = !DICompositeType(tag: DW_TAG_structure_type, name: "__lock", file: !914, line: 33, flags: DIFlagFwdDecl)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !860, file: !854, line: 233, baseType: !918, size: 64, offset: 736)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !892, line: 170, baseType: !919)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !892, line: 162, size: 64, elements: !920)
!920 = !{!921, !922}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !919, file: !892, line: 164, baseType: !13, size: 32)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !919, file: !892, line: 169, baseType: !923, size: 32, offset: 32)
!923 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !919, file: !892, line: 165, size: 32, elements: !924)
!924 = !{!925, !928}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !923, file: !892, line: 167, baseType: !926, size: 32)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !927, line: 116, baseType: !13)
!927 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "")
!928 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !923, file: !892, line: 168, baseType: !929, size: 32)
!929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 32, elements: !276)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !860, file: !854, line: 234, baseType: !13, size: 32, offset: 800)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !853, file: !854, line: 386, baseType: !858, size: 32, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !853, file: !854, line: 386, baseType: !858, size: 32, offset: 96)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !853, file: !854, line: 388, baseType: !13, size: 32, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !853, file: !854, line: 390, baseType: !851, size: 32, offset: 160)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !853, file: !854, line: 392, baseType: !13, size: 32, offset: 192)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !853, file: !854, line: 394, baseType: !13, size: 32, offset: 224)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !853, file: !854, line: 395, baseType: !938, size: 32, offset: 256)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 32)
!939 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !854, line: 45, flags: DIFlagFwdDecl)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_mp", scope: !853, file: !854, line: 397, baseType: !941, size: 32, offset: 288)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 32)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mprec", file: !854, line: 349, size: 128, elements: !943)
!943 = !{!944, !957, !958, !959}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !942, file: !854, line: 352, baseType: !945, size: 32)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 32)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !854, line: 52, size: 192, elements: !947)
!947 = !{!948, !949, !950, !951, !952, !953}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !946, file: !854, line: 54, baseType: !945, size: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !946, file: !854, line: 55, baseType: !13, size: 32, offset: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !946, file: !854, line: 55, baseType: !13, size: 32, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !946, file: !854, line: 55, baseType: !13, size: 32, offset: 96)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !946, file: !854, line: 55, baseType: !13, size: 32, offset: 128)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !946, file: !854, line: 56, baseType: !954, size: 32, offset: 160)
!954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !955, size: 32, elements: !828)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !854, line: 22, baseType: !956)
!956 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !942, file: !854, line: 353, baseType: !13, size: 32, offset: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !942, file: !854, line: 354, baseType: !945, size: 32, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !942, file: !854, line: 355, baseType: !960, size: 32, offset: 96)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !853, file: !854, line: 399, baseType: !962, size: 32, offset: 320)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 32)
!963 = !DISubroutineType(types: !964)
!964 = !{null, !852}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !853, file: !854, line: 401, baseType: !13, size: 32, offset: 352)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !853, file: !854, line: 404, baseType: !13, size: 32, offset: 384)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !853, file: !854, line: 405, baseType: !851, size: 32, offset: 416)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !853, file: !854, line: 407, baseType: !969, size: 32, offset: 448)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 32)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !854, line: 324, size: 192, elements: !971)
!971 = !{!972, !974, !975, !976}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !970, file: !854, line: 325, baseType: !973, size: 48)
!973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 48, elements: !903)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !970, file: !854, line: 326, baseType: !973, size: 48, offset: 48)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !970, file: !854, line: 327, baseType: !412, size: 16, offset: 96)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !970, file: !854, line: 330, baseType: !977, size: 64, offset: 128)
!977 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !853, file: !854, line: 408, baseType: !979, size: 32, offset: 480)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 32)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !854, line: 60, size: 288, elements: !981)
!981 = !{!982, !983, !984, !985, !986, !987, !988, !989, !990}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !980, file: !854, line: 62, baseType: !13, size: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !980, file: !854, line: 63, baseType: !13, size: 32, offset: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !980, file: !854, line: 64, baseType: !13, size: 32, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !980, file: !854, line: 65, baseType: !13, size: 32, offset: 96)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !980, file: !854, line: 66, baseType: !13, size: 32, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !980, file: !854, line: 67, baseType: !13, size: 32, offset: 160)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !980, file: !854, line: 68, baseType: !13, size: 32, offset: 192)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !980, file: !854, line: 69, baseType: !13, size: 32, offset: 224)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !980, file: !854, line: 70, baseType: !13, size: 32, offset: 256)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !853, file: !854, line: 409, baseType: !851, size: 32, offset: 512)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !853, file: !854, line: 412, baseType: !993, size: 32, offset: 544)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 32)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 32)
!995 = !DISubroutineType(types: !996)
!996 = !{null, !13}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !853, file: !854, line: 416, baseType: !998, size: 32, offset: 576)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 32)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !854, line: 90, size: 1120, elements: !1000)
!1000 = !{!1001, !1002, !1003, !1007}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !999, file: !854, line: 91, baseType: !998, size: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !999, file: !854, line: 92, baseType: !13, size: 32, offset: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !999, file: !854, line: 93, baseType: !1004, size: 1024, offset: 64)
!1004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 1024, elements: !1005)
!1005 = !{!1006}
!1006 = !DISubrange(count: 32)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args_ptr", scope: !999, file: !854, line: 94, baseType: !1008, size: 32, offset: 1088)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 32)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !854, line: 79, size: 2112, elements: !1010)
!1010 = !{!1011, !1013, !1014, !1015}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !1009, file: !854, line: 80, baseType: !1012, size: 1024)
!1012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 1024, elements: !1005)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !1009, file: !854, line: 81, baseType: !1012, size: 1024, offset: 1024)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !1009, file: !854, line: 83, baseType: !955, size: 32, offset: 2048)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !1009, file: !854, line: 86, baseType: !955, size: 32, offset: 2080)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !853, file: !854, line: 417, baseType: !999, size: 1120, offset: 608)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !853, file: !854, line: 420, baseType: !1018, size: 96, offset: 1728)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !854, line: 296, size: 96, elements: !1019)
!1019 = !{!1020, !1022, !1023}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1018, file: !854, line: 298, baseType: !1021, size: 32)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 32)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !1018, file: !854, line: 299, baseType: !13, size: 32, offset: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !1018, file: !854, line: 300, baseType: !858, size: 32, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !853, file: !854, line: 421, baseType: !858, size: 32, offset: 1824)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_misc", scope: !853, file: !854, line: 422, baseType: !1026, size: 32, offset: 1856)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 32)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_misc_reent", file: !854, line: 359, size: 640, elements: !1028)
!1028 = !{!1029, !1030, !1031, !1032, !1033, !1035, !1036, !1037, !1038, !1039, !1040}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !1027, file: !854, line: 362, baseType: !851, size: 32)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !1027, file: !854, line: 363, baseType: !918, size: 64, offset: 32)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !1027, file: !854, line: 364, baseType: !918, size: 64, offset: 96)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !1027, file: !854, line: 365, baseType: !918, size: 64, offset: 160)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !1027, file: !854, line: 366, baseType: !1034, size: 64, offset: 224)
!1034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !674, size: 64, elements: !216)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !1027, file: !854, line: 367, baseType: !13, size: 32, offset: 288)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !1027, file: !854, line: 368, baseType: !918, size: 64, offset: 320)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !1027, file: !854, line: 369, baseType: !918, size: 64, offset: 384)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !1027, file: !854, line: 370, baseType: !918, size: 64, offset: 448)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !1027, file: !854, line: 371, baseType: !918, size: 64, offset: 512)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !1027, file: !854, line: 372, baseType: !918, size: 64, offset: 576)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !853, file: !854, line: 423, baseType: !851, size: 32, offset: 1888)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !927, line: 46, baseType: !7)
!1043 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1044, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1045, globals: !1046, splitDebugInlining: false, nameTableKind: None)
!1044 = !DIFile(filename: "syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
!1045 = !{!851, !849}
!1046 = !{!843}
!1047 = !{!1048, !1049, !1050, !1051}
!1048 = !DILocalVariable(name: "r", arg: 1, scope: !845, file: !846, line: 63, type: !852)
!1049 = !DILocalVariable(name: "nbytes", arg: 2, scope: !845, file: !846, line: 63, type: !1042)
!1050 = !DILocalVariable(name: "prev_heap_end", scope: !845, file: !846, line: 67, type: !851)
!1051 = !DILocalVariable(name: "stack", scope: !845, file: !846, line: 68, type: !851)
!1052 = !DIGlobalVariableExpression(var: !1053, expr: !DIExpression())
!1053 = distinct !DIGlobalVariable(name: "build_date_time_str", scope: !1054, file: !1059, line: 4, type: !1068, isLocal: false, isDefinition: true)
!1054 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1055, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1056, splitDebugInlining: false, nameTableKind: None)
!1055 = !DIFile(filename: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC/Build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
!1056 = !{!1052, !1057, !1063}
!1057 = !DIGlobalVariableExpression(var: !1058, expr: !DIExpression())
!1058 = distinct !DIGlobalVariable(name: "sw_verno_str", scope: !1054, file: !1059, line: 5, type: !1060, isLocal: false, isDefinition: true)
!1059 = !DIFile(filename: "Build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
!1060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !674, size: 88, elements: !1061)
!1061 = !{!1062}
!1062 = !DISubrange(count: 11)
!1063 = !DIGlobalVariableExpression(var: !1064, expr: !DIExpression())
!1064 = distinct !DIGlobalVariable(name: "hw_verno_str", scope: !1054, file: !1059, line: 6, type: !1065, isLocal: false, isDefinition: true)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !674, size: 120, elements: !1066)
!1066 = !{!1067}
!1067 = !DISubrange(count: 15)
!1068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !674, size: 248, elements: !1069)
!1069 = !{!1070}
!1070 = !DISubrange(count: 31)
!1071 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1072, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1073, retainedTypes: !1074, splitDebugInlining: false, nameTableKind: None)
!1072 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
!1073 = !{!124}
!1074 = !{!58, !80}
!1075 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1076, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1077, splitDebugInlining: false, nameTableKind: None)
!1076 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
!1077 = !{!1078, !1103}
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 32)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !210, line: 418, baseType: !1080)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 395, size: 1120, elements: !1081)
!1081 = !{!1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !1080, file: !210, line: 397, baseType: !251, size: 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !1080, file: !210, line: 398, baseType: !215, size: 32, offset: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !1080, file: !210, line: 399, baseType: !215, size: 32, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !1080, file: !210, line: 400, baseType: !215, size: 32, offset: 96)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !1080, file: !210, line: 401, baseType: !215, size: 32, offset: 128)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !1080, file: !210, line: 402, baseType: !215, size: 32, offset: 160)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !1080, file: !210, line: 403, baseType: !258, size: 96, offset: 192)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !1080, file: !210, line: 404, baseType: !215, size: 32, offset: 288)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !1080, file: !210, line: 405, baseType: !215, size: 32, offset: 320)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !1080, file: !210, line: 406, baseType: !215, size: 32, offset: 352)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !1080, file: !210, line: 407, baseType: !215, size: 32, offset: 384)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !1080, file: !210, line: 408, baseType: !215, size: 32, offset: 416)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !1080, file: !210, line: 409, baseType: !215, size: 32, offset: 448)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !1080, file: !210, line: 410, baseType: !215, size: 32, offset: 480)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !1080, file: !210, line: 411, baseType: !269, size: 64, offset: 512)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !1080, file: !210, line: 412, baseType: !251, size: 32, offset: 576)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !1080, file: !210, line: 413, baseType: !251, size: 32, offset: 608)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !1080, file: !210, line: 414, baseType: !275, size: 128, offset: 640)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !1080, file: !210, line: 415, baseType: !279, size: 160, offset: 768)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !1080, file: !210, line: 416, baseType: !283, size: 160, offset: 928)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !1080, file: !210, line: 417, baseType: !215, size: 32, offset: 1088)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 32)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !210, line: 378, baseType: !1105)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 363, size: 28704, elements: !1106)
!1106 = !{!1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !1105, file: !210, line: 365, baseType: !214, size: 256)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !1105, file: !210, line: 366, baseType: !219, size: 768, offset: 256)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !1105, file: !210, line: 367, baseType: !214, size: 256, offset: 1024)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !1105, file: !210, line: 368, baseType: !219, size: 768, offset: 1280)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !1105, file: !210, line: 369, baseType: !214, size: 256, offset: 2048)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !1105, file: !210, line: 370, baseType: !219, size: 768, offset: 2304)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !1105, file: !210, line: 371, baseType: !214, size: 256, offset: 3072)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !1105, file: !210, line: 372, baseType: !219, size: 768, offset: 3328)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !1105, file: !210, line: 373, baseType: !214, size: 256, offset: 4096)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !1105, file: !210, line: 374, baseType: !230, size: 1792, offset: 4352)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !1105, file: !210, line: 375, baseType: !234, size: 1920, offset: 6144)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !1105, file: !210, line: 376, baseType: !242, size: 20608, offset: 8064)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !1105, file: !210, line: 377, baseType: !215, size: 32, offset: 28672)
!1120 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1121, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1122, splitDebugInlining: false, nameTableKind: None)
!1121 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
!1122 = !{!93, !124}
!1123 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1124, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1125, splitDebugInlining: false, nameTableKind: None)
!1124 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/timer.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
!1125 = !{!893, !58}
!1126 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1127, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1127 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_log.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
!1128 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1129, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1130, retainedTypes: !1153, splitDebugInlining: false, nameTableKind: None)
!1129 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
!1130 = !{!1131, !734, !93, !1137, !1143, !765, !1147, !327}
!1131 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !766, line: 233, baseType: !13, size: 32, elements: !1132)
!1132 = !{!1133, !1134, !1135, !1136}
!1133 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR", value: -3)
!1134 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR_PORT", value: -2)
!1135 = !DIEnumerator(name: "HAL_PINMUX_STATUS_INVALID_FUNCTION", value: -1)
!1136 = !DIEnumerator(name: "HAL_PINMUX_STATUS_OK", value: 0)
!1137 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !766, line: 224, baseType: !13, size: 32, elements: !1138)
!1138 = !{!1139, !1140, !1141, !1142}
!1139 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR", value: -3)
!1140 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR_PIN", value: -2)
!1141 = !DIEnumerator(name: "HAL_GPIO_STATUS_INVALID_PARAMETER", value: -1)
!1142 = !DIEnumerator(name: "HAL_GPIO_STATUS_OK", value: 0)
!1143 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !766, line: 217, baseType: !7, size: 32, elements: !1144)
!1144 = !{!1145, !1146}
!1145 = !DIEnumerator(name: "HAL_GPIO_DATA_LOW", value: 0)
!1146 = !DIEnumerator(name: "HAL_GPIO_DATA_HIGH", value: 1)
!1147 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !766, line: 242, baseType: !7, size: 32, elements: !1148)
!1148 = !{!1149, !1150, !1151, !1152}
!1149 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_4MA", value: 0)
!1150 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_8MA", value: 1)
!1151 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_12MA", value: 2)
!1152 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_16MA", value: 3)
!1153 = !{!202, !464, !1154, !236, !1155, !1156}
!1154 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_data_t", file: !766, line: 220, baseType: !1143)
!1155 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_driving_current_t", file: !766, line: 247, baseType: !1147)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_DIR_T", file: !328, line: 60, baseType: !327)
!1157 = !{!"Ubuntu clang version 14.0.6"}
!1158 = !{i32 7, !"Dwarf Version", i32 2}
!1159 = !{i32 2, !"Debug Info Version", i32 3}
!1160 = !{i32 1, !"wchar_size", i32 4}
!1161 = !{i32 1, !"min_enum_size", i32 4}
!1162 = !{i32 1, !"branch-target-enforcement", i32 0}
!1163 = !{i32 1, !"sign-return-address", i32 0}
!1164 = !{i32 1, !"sign-return-address-all", i32 0}
!1165 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!1166 = !{i32 7, !"frame-pointer", i32 2}
!1167 = distinct !DISubprogram(name: "GPT_ResetTimer", scope: !3, file: !3, line: 73, type: !1168, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1170)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{null, !60, !60, !477}
!1170 = !{!1171, !1172, !1173}
!1171 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1167, file: !3, line: 73, type: !60)
!1172 = !DILocalVariable(name: "countValue", arg: 2, scope: !1167, file: !3, line: 73, type: !60)
!1173 = !DILocalVariable(name: "autoRepeat", arg: 3, scope: !1167, file: !3, line: 73, type: !477)
!1174 = !DILocation(line: 0, scope: !1167)
!1175 = !DILocation(line: 75, column: 5, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 75, column: 5)
!1177 = !DILocation(line: 75, column: 5, scope: !1167)
!1178 = !DILocation(line: 75, column: 5, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 75, column: 5)
!1180 = distinct !{!1180, !1178, !1178}
!1181 = !DILocation(line: 77, column: 9, scope: !1167)
!1182 = !DILocation(line: 78, column: 30, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 77, column: 24)
!1184 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 77, column: 9)
!1185 = !DILocation(line: 0, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 79, column: 13)
!1187 = !DILocation(line: 79, column: 13, scope: !1183)
!1188 = !DILocation(line: 80, column: 34, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 79, column: 37)
!1190 = !DILocation(line: 81, column: 9, scope: !1189)
!1191 = !DILocation(line: 82, column: 34, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 81, column: 16)
!1193 = !DILocation(line: 85, column: 30, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 84, column: 31)
!1195 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 84, column: 16)
!1196 = !DILocation(line: 0, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 86, column: 13)
!1198 = !DILocation(line: 86, column: 13, scope: !1194)
!1199 = !DILocation(line: 87, column: 34, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 86, column: 37)
!1201 = !DILocation(line: 88, column: 9, scope: !1200)
!1202 = !DILocation(line: 89, column: 34, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 88, column: 16)
!1204 = !DILocation(line: 92, column: 1, scope: !1167)
!1205 = distinct !DISubprogram(name: "GPT_Start", scope: !3, file: !3, line: 94, type: !1206, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1208)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{null, !60}
!1208 = !{!1209}
!1209 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1205, file: !3, line: 94, type: !60)
!1210 = !DILocation(line: 0, scope: !1205)
!1211 = !DILocation(line: 96, column: 5, scope: !1205)
!1212 = !DILocation(line: 96, column: 5, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 96, column: 5)
!1214 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 96, column: 5)
!1215 = distinct !{!1215, !1212, !1212}
!1216 = !DILocation(line: 99, column: 30, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 98, column: 24)
!1218 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 98, column: 9)
!1219 = !DILocation(line: 100, column: 9, scope: !1217)
!1220 = !DILocation(line: 101, column: 5, scope: !1217)
!1221 = !DILocation(line: 102, column: 30, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 101, column: 31)
!1223 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 101, column: 16)
!1224 = !DILocation(line: 103, column: 9, scope: !1222)
!1225 = !DILocation(line: 104, column: 5, scope: !1222)
!1226 = !DILocation(line: 105, column: 30, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 104, column: 31)
!1228 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 104, column: 16)
!1229 = !DILocation(line: 106, column: 5, scope: !1227)
!1230 = !DILocation(line: 108, column: 1, scope: !1205)
!1231 = distinct !DISubprogram(name: "GPT_Stop", scope: !3, file: !3, line: 110, type: !1206, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1232)
!1232 = !{!1233}
!1233 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1231, file: !3, line: 110, type: !60)
!1234 = !DILocation(line: 0, scope: !1231)
!1235 = !DILocation(line: 112, column: 9, scope: !1231)
!1236 = !DILocation(line: 113, column: 30, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 112, column: 24)
!1238 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 112, column: 9)
!1239 = !DILocation(line: 114, column: 30, scope: !1237)
!1240 = !DILocation(line: 115, column: 31, scope: !1237)
!1241 = !DILocation(line: 117, column: 5, scope: !1237)
!1242 = !DILocation(line: 118, column: 30, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 117, column: 31)
!1244 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 117, column: 16)
!1245 = !DILocation(line: 119, column: 30, scope: !1243)
!1246 = !DILocation(line: 120, column: 31, scope: !1243)
!1247 = !DILocation(line: 121, column: 5, scope: !1243)
!1248 = !DILocation(line: 122, column: 30, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 121, column: 31)
!1250 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 121, column: 16)
!1251 = !DILocation(line: 123, column: 5, scope: !1249)
!1252 = !DILocation(line: 124, column: 30, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 123, column: 31)
!1254 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 123, column: 16)
!1255 = !DILocation(line: 125, column: 5, scope: !1253)
!1256 = !DILocation(line: 128, column: 1, scope: !1231)
!1257 = distinct !DISubprogram(name: "GPT_INT_Handler", scope: !3, file: !3, line: 130, type: !565, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1258)
!1258 = !{!1259, !1260}
!1259 = !DILocalVariable(name: "irq_number", arg: 1, scope: !1257, file: !3, line: 130, type: !515)
!1260 = !DILocalVariable(name: "GPT_Status", scope: !1257, file: !3, line: 132, type: !411)
!1261 = !DILocation(line: 0, scope: !1257)
!1262 = !DILocation(line: 135, column: 18, scope: !1257)
!1263 = !DILocation(line: 136, column: 26, scope: !1257)
!1264 = !DILocation(line: 136, column: 24, scope: !1257)
!1265 = !DILocation(line: 138, column: 20, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 138, column: 9)
!1267 = !DILocation(line: 138, column: 9, scope: !1257)
!1268 = !DILocation(line: 141, column: 27, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 141, column: 16)
!1270 = !DILocation(line: 141, column: 16, scope: !1266)
!1271 = !DILocation(line: 0, scope: !1266)
!1272 = !DILocation(line: 145, column: 1, scope: !1257)
!1273 = distinct !DISubprogram(name: "GPT_init", scope: !3, file: !3, line: 147, type: !1274, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1276)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{null, !60, !60, !74}
!1276 = !{!1277, !1278, !1279}
!1277 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1273, file: !3, line: 147, type: !60)
!1278 = !DILocalVariable(name: "speed_32us", arg: 2, scope: !1273, file: !3, line: 147, type: !60)
!1279 = !DILocalVariable(name: "GPT_Callback", arg: 3, scope: !1273, file: !3, line: 147, type: !74)
!1280 = !DILocation(line: 0, scope: !1273)
!1281 = !DILocation(line: 149, column: 5, scope: !1273)
!1282 = !DILocation(line: 149, column: 5, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 149, column: 5)
!1284 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 149, column: 5)
!1285 = distinct !{!1285, !1282, !1282}
!1286 = !DILocation(line: 149, column: 5, scope: !1284)
!1287 = !DILocation(line: 151, column: 23, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 151, column: 9)
!1289 = !DILocation(line: 152, column: 9, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 151, column: 41)
!1291 = !DILocation(line: 153, column: 9, scope: !1290)
!1292 = !DILocation(line: 154, column: 9, scope: !1290)
!1293 = !DILocation(line: 155, column: 5, scope: !1290)
!1294 = !DILocation(line: 157, column: 9, scope: !1273)
!1295 = !DILocation(line: 158, column: 37, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 157, column: 24)
!1297 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 157, column: 9)
!1298 = !DILocation(line: 159, column: 30, scope: !1296)
!1299 = !DILocation(line: 160, column: 45, scope: !1296)
!1300 = !DILocation(line: 160, column: 30, scope: !1296)
!1301 = !DILocation(line: 161, column: 5, scope: !1296)
!1302 = !DILocation(line: 162, column: 37, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 161, column: 31)
!1304 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 161, column: 16)
!1305 = !DILocation(line: 163, column: 30, scope: !1303)
!1306 = !DILocation(line: 164, column: 45, scope: !1303)
!1307 = !DILocation(line: 164, column: 30, scope: !1303)
!1308 = !DILocation(line: 165, column: 5, scope: !1303)
!1309 = !DILocation(line: 166, column: 59, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 165, column: 31)
!1311 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 165, column: 16)
!1312 = !DILocation(line: 166, column: 45, scope: !1310)
!1313 = !DILocation(line: 166, column: 30, scope: !1310)
!1314 = !DILocation(line: 167, column: 5, scope: !1310)
!1315 = !DILocation(line: 168, column: 59, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 167, column: 31)
!1317 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 167, column: 16)
!1318 = !DILocation(line: 168, column: 45, scope: !1316)
!1319 = !DILocation(line: 168, column: 30, scope: !1316)
!1320 = !DILocation(line: 169, column: 30, scope: !1316)
!1321 = !DILocation(line: 170, column: 5, scope: !1316)
!1322 = !DILocation(line: 171, column: 1, scope: !1273)
!1323 = distinct !DISubprogram(name: "GPT_return_current_count", scope: !3, file: !3, line: 173, type: !1324, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1326)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!60, !60}
!1326 = !{!1327, !1328}
!1327 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1323, file: !3, line: 173, type: !60)
!1328 = !DILocalVariable(name: "current_count", scope: !1323, file: !3, line: 175, type: !60)
!1329 = !DILocation(line: 0, scope: !1323)
!1330 = !DILocation(line: 177, column: 5, scope: !1323)
!1331 = !DILocation(line: 177, column: 5, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 177, column: 5)
!1333 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 177, column: 5)
!1334 = distinct !{!1334, !1331, !1331}
!1335 = !DILocation(line: 183, column: 5, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 181, column: 31)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 181, column: 16)
!1338 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 179, column: 9)
!1339 = !DILocation(line: 185, column: 5, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 183, column: 31)
!1341 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 183, column: 16)
!1342 = !DILocation(line: 187, column: 5, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 185, column: 31)
!1344 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 185, column: 16)
!1345 = !DILocation(line: 0, scope: !1338)
!1346 = !DILocation(line: 189, column: 5, scope: !1323)
!1347 = distinct !DISubprogram(name: "CM4_GPT2Init", scope: !3, file: !3, line: 193, type: !75, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1348)
!1348 = !{}
!1349 = !DILocation(line: 195, column: 5, scope: !1347)
!1350 = !DILocation(line: 196, column: 1, scope: !1347)
!1351 = distinct !DISubprogram(name: "CM4_GPT4Init", scope: !3, file: !3, line: 198, type: !75, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1348)
!1352 = !DILocation(line: 200, column: 5, scope: !1351)
!1353 = !DILocation(line: 201, column: 1, scope: !1351)
!1354 = distinct !DISubprogram(name: "halGPIO_ConfDirection", scope: !86, file: !86, line: 54, type: !1355, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1358)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!1357, !80, !413}
!1357 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !6, line: 56, baseType: !13)
!1358 = !{!1359, !1360, !1361, !1363}
!1359 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1354, file: !86, line: 54, type: !80)
!1360 = !DILocalVariable(name: "outEnable", arg: 2, scope: !1354, file: !86, line: 54, type: !413)
!1361 = !DILocalVariable(name: "no", scope: !1354, file: !86, line: 57, type: !1362)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !6, line: 60, baseType: !412)
!1363 = !DILocalVariable(name: "remainder", scope: !1354, file: !86, line: 58, type: !1362)
!1364 = !DILocation(line: 0, scope: !1354)
!1365 = !DILocation(line: 59, column: 19, scope: !1354)
!1366 = !DILocation(line: 60, column: 17, scope: !1354)
!1367 = !DILocation(line: 61, column: 5, scope: !1354)
!1368 = !DILocation(line: 65, column: 27, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !86, line: 65, column: 17)
!1370 = distinct !DILexicalBlock(scope: !1354, file: !86, line: 61, column: 17)
!1371 = !DILocation(line: 0, scope: !1369)
!1372 = !DILocation(line: 65, column: 17, scope: !1370)
!1373 = !DILocation(line: 66, column: 21, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1369, file: !86, line: 65, column: 33)
!1375 = !DILocation(line: 67, column: 73, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !86, line: 66, column: 38)
!1377 = distinct !DILexicalBlock(scope: !1374, file: !86, line: 66, column: 21)
!1378 = !DILocation(line: 67, column: 69, scope: !1376)
!1379 = !DILocation(line: 67, column: 66, scope: !1376)
!1380 = !DILocation(line: 68, column: 17, scope: !1376)
!1381 = !DILocation(line: 68, column: 28, scope: !1377)
!1382 = !DILocation(line: 69, column: 77, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !86, line: 68, column: 45)
!1384 = distinct !DILexicalBlock(scope: !1377, file: !86, line: 68, column: 28)
!1385 = !DILocation(line: 70, column: 77, scope: !1383)
!1386 = !DILocation(line: 71, column: 17, scope: !1383)
!1387 = !DILocation(line: 72, column: 77, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !86, line: 71, column: 45)
!1389 = distinct !DILexicalBlock(scope: !1384, file: !86, line: 71, column: 28)
!1390 = !DILocation(line: 73, column: 77, scope: !1388)
!1391 = !DILocation(line: 74, column: 17, scope: !1388)
!1392 = !DILocation(line: 75, column: 79, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !86, line: 74, column: 45)
!1394 = distinct !DILexicalBlock(scope: !1389, file: !86, line: 74, column: 28)
!1395 = !DILocation(line: 76, column: 79, scope: !1393)
!1396 = !DILocation(line: 77, column: 17, scope: !1393)
!1397 = !DILocation(line: 78, column: 79, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !86, line: 77, column: 45)
!1399 = distinct !DILexicalBlock(scope: !1394, file: !86, line: 77, column: 28)
!1400 = !DILocation(line: 79, column: 79, scope: !1398)
!1401 = !DILocation(line: 80, column: 17, scope: !1398)
!1402 = !DILocation(line: 81, column: 79, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !86, line: 80, column: 45)
!1404 = distinct !DILexicalBlock(scope: !1399, file: !86, line: 80, column: 28)
!1405 = !DILocation(line: 82, column: 79, scope: !1403)
!1406 = !DILocation(line: 83, column: 17, scope: !1403)
!1407 = !DILocation(line: 85, column: 17, scope: !1374)
!1408 = !DILocation(line: 86, column: 13, scope: !1374)
!1409 = !DILocation(line: 88, column: 21, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1369, file: !86, line: 86, column: 20)
!1411 = !DILocation(line: 89, column: 72, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !86, line: 88, column: 38)
!1413 = distinct !DILexicalBlock(scope: !1410, file: !86, line: 88, column: 21)
!1414 = !DILocation(line: 89, column: 66, scope: !1412)
!1415 = !DILocation(line: 90, column: 17, scope: !1412)
!1416 = !DILocation(line: 90, column: 28, scope: !1413)
!1417 = !DILocation(line: 91, column: 77, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !86, line: 90, column: 45)
!1419 = distinct !DILexicalBlock(scope: !1413, file: !86, line: 90, column: 28)
!1420 = !DILocation(line: 92, column: 17, scope: !1418)
!1421 = !DILocation(line: 93, column: 77, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !86, line: 92, column: 45)
!1423 = distinct !DILexicalBlock(scope: !1419, file: !86, line: 92, column: 28)
!1424 = !DILocation(line: 94, column: 17, scope: !1422)
!1425 = !DILocation(line: 95, column: 79, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !86, line: 94, column: 45)
!1427 = distinct !DILexicalBlock(scope: !1423, file: !86, line: 94, column: 28)
!1428 = !DILocation(line: 96, column: 17, scope: !1426)
!1429 = !DILocation(line: 97, column: 79, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !86, line: 96, column: 45)
!1431 = distinct !DILexicalBlock(scope: !1427, file: !86, line: 96, column: 28)
!1432 = !DILocation(line: 98, column: 17, scope: !1430)
!1433 = !DILocation(line: 99, column: 79, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !86, line: 98, column: 45)
!1435 = distinct !DILexicalBlock(scope: !1431, file: !86, line: 98, column: 28)
!1436 = !DILocation(line: 100, column: 17, scope: !1434)
!1437 = !DILocation(line: 103, column: 17, scope: !1410)
!1438 = !DILocation(line: 109, column: 27, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1370, file: !86, line: 109, column: 17)
!1440 = !DILocation(line: 0, scope: !1439)
!1441 = !DILocation(line: 109, column: 17, scope: !1370)
!1442 = !DILocation(line: 110, column: 21, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1439, file: !86, line: 109, column: 33)
!1444 = !DILocation(line: 111, column: 73, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !86, line: 110, column: 36)
!1446 = distinct !DILexicalBlock(scope: !1443, file: !86, line: 110, column: 21)
!1447 = !DILocation(line: 111, column: 69, scope: !1445)
!1448 = !DILocation(line: 111, column: 66, scope: !1445)
!1449 = !DILocation(line: 112, column: 17, scope: !1445)
!1450 = !DILocation(line: 113, column: 79, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1446, file: !86, line: 112, column: 24)
!1452 = !DILocation(line: 114, column: 79, scope: !1451)
!1453 = !DILocation(line: 117, column: 17, scope: !1443)
!1454 = !DILocation(line: 118, column: 13, scope: !1443)
!1455 = !DILocation(line: 120, column: 21, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1439, file: !86, line: 118, column: 20)
!1457 = !DILocation(line: 121, column: 72, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !86, line: 120, column: 36)
!1459 = distinct !DILexicalBlock(scope: !1456, file: !86, line: 120, column: 21)
!1460 = !DILocation(line: 121, column: 66, scope: !1458)
!1461 = !DILocation(line: 122, column: 17, scope: !1458)
!1462 = !DILocation(line: 123, column: 79, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1459, file: !86, line: 122, column: 24)
!1464 = !DILocation(line: 126, column: 17, scope: !1456)
!1465 = !DILocation(line: 133, column: 1, scope: !1354)
!1466 = distinct !DISubprogram(name: "halGPO_Write", scope: !86, file: !86, line: 136, type: !1355, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1467)
!1467 = !{!1468, !1469, !1470, !1471}
!1468 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1466, file: !86, line: 136, type: !80)
!1469 = !DILocalVariable(name: "writeValue", arg: 2, scope: !1466, file: !86, line: 136, type: !413)
!1470 = !DILocalVariable(name: "no", scope: !1466, file: !86, line: 138, type: !1362)
!1471 = !DILocalVariable(name: "remainder", scope: !1466, file: !86, line: 139, type: !1362)
!1472 = !DILocation(line: 0, scope: !1466)
!1473 = !DILocation(line: 140, column: 19, scope: !1466)
!1474 = !DILocation(line: 141, column: 17, scope: !1466)
!1475 = !DILocation(line: 142, column: 5, scope: !1466)
!1476 = !DILocation(line: 145, column: 17, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !86, line: 145, column: 17)
!1478 = distinct !DILexicalBlock(scope: !1466, file: !86, line: 142, column: 17)
!1479 = !DILocation(line: 0, scope: !1477)
!1480 = !DILocation(line: 145, column: 17, scope: !1478)
!1481 = !DILocation(line: 146, column: 17, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1477, file: !86, line: 145, column: 29)
!1483 = !DILocation(line: 147, column: 13, scope: !1482)
!1484 = !DILocation(line: 148, column: 17, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1477, file: !86, line: 147, column: 20)
!1486 = !DILocation(line: 153, column: 17, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1478, file: !86, line: 153, column: 17)
!1488 = !DILocation(line: 0, scope: !1487)
!1489 = !DILocation(line: 153, column: 17, scope: !1478)
!1490 = !DILocation(line: 154, column: 17, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1487, file: !86, line: 153, column: 29)
!1492 = !DILocation(line: 155, column: 13, scope: !1491)
!1493 = !DILocation(line: 156, column: 17, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1487, file: !86, line: 155, column: 20)
!1495 = !DILocation(line: 163, column: 1, scope: !1466)
!1496 = distinct !DISubprogram(name: "halgetGPIO_DOUT", scope: !86, file: !86, line: 169, type: !1497, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1499)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!413, !80}
!1499 = !{!1500, !1501, !1502, !1503}
!1500 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1496, file: !86, line: 169, type: !80)
!1501 = !DILocalVariable(name: "no", scope: !1496, file: !86, line: 171, type: !1362)
!1502 = !DILocalVariable(name: "remainder", scope: !1496, file: !86, line: 172, type: !1362)
!1503 = !DILocalVariable(name: "dout", scope: !1496, file: !86, line: 175, type: !413)
!1504 = !DILocation(line: 0, scope: !1496)
!1505 = !DILocation(line: 173, column: 19, scope: !1496)
!1506 = !DILocation(line: 174, column: 17, scope: !1496)
!1507 = !DILocation(line: 177, column: 5, scope: !1496)
!1508 = !DILocation(line: 183, column: 13, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1496, file: !86, line: 177, column: 17)
!1510 = !DILocation(line: 0, scope: !1509)
!1511 = !DILocation(line: 187, column: 5, scope: !1496)
!1512 = !DILocation(line: 188, column: 1, scope: !1496)
!1513 = distinct !DISubprogram(name: "halgetGPIO_DIN", scope: !86, file: !86, line: 189, type: !1497, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1514)
!1514 = !{!1515, !1516, !1517, !1518}
!1515 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1513, file: !86, line: 189, type: !80)
!1516 = !DILocalVariable(name: "no", scope: !1513, file: !86, line: 191, type: !1362)
!1517 = !DILocalVariable(name: "remainder", scope: !1513, file: !86, line: 192, type: !1362)
!1518 = !DILocalVariable(name: "din", scope: !1513, file: !86, line: 195, type: !413)
!1519 = !DILocation(line: 0, scope: !1513)
!1520 = !DILocation(line: 193, column: 19, scope: !1513)
!1521 = !DILocation(line: 194, column: 17, scope: !1513)
!1522 = !DILocation(line: 196, column: 5, scope: !1513)
!1523 = !DILocation(line: 203, column: 13, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1513, file: !86, line: 196, column: 17)
!1525 = !DILocation(line: 0, scope: !1524)
!1526 = !DILocation(line: 208, column: 5, scope: !1513)
!1527 = !DILocation(line: 209, column: 1, scope: !1513)
!1528 = distinct !DISubprogram(name: "halgetGPIO_OutEnable", scope: !86, file: !86, line: 210, type: !1497, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1529)
!1529 = !{!1530, !1531, !1532, !1533}
!1530 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1528, file: !86, line: 210, type: !80)
!1531 = !DILocalVariable(name: "no", scope: !1528, file: !86, line: 212, type: !1362)
!1532 = !DILocalVariable(name: "remainder", scope: !1528, file: !86, line: 213, type: !1362)
!1533 = !DILocalVariable(name: "outEnable", scope: !1528, file: !86, line: 216, type: !413)
!1534 = !DILocation(line: 0, scope: !1528)
!1535 = !DILocation(line: 214, column: 19, scope: !1528)
!1536 = !DILocation(line: 215, column: 17, scope: !1528)
!1537 = !DILocation(line: 218, column: 5, scope: !1528)
!1538 = !DILocation(line: 224, column: 13, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1528, file: !86, line: 218, column: 17)
!1540 = !DILocation(line: 0, scope: !1539)
!1541 = !DILocation(line: 228, column: 5, scope: !1528)
!1542 = !DILocation(line: 229, column: 1, scope: !1528)
!1543 = distinct !DISubprogram(name: "halGPIO_PullUp_SET", scope: !86, file: !86, line: 232, type: !1544, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1546)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!1357, !80}
!1546 = !{!1547, !1548, !1549}
!1547 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1543, file: !86, line: 232, type: !80)
!1548 = !DILocalVariable(name: "no", scope: !1543, file: !86, line: 234, type: !1362)
!1549 = !DILocalVariable(name: "remainder", scope: !1543, file: !86, line: 235, type: !1362)
!1550 = !DILocation(line: 0, scope: !1543)
!1551 = !DILocation(line: 236, column: 19, scope: !1543)
!1552 = !DILocation(line: 237, column: 17, scope: !1543)
!1553 = !DILocation(line: 238, column: 5, scope: !1543)
!1554 = !DILocation(line: 239, column: 5, scope: !1543)
!1555 = !DILocation(line: 241, column: 27, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !86, line: 241, column: 17)
!1557 = distinct !DILexicalBlock(scope: !1543, file: !86, line: 239, column: 17)
!1558 = !DILocation(line: 241, column: 17, scope: !1557)
!1559 = !DILocation(line: 241, column: 17, scope: !1556)
!1560 = !DILocation(line: 242, column: 17, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1556, file: !86, line: 241, column: 34)
!1562 = !DILocation(line: 243, column: 13, scope: !1561)
!1563 = !DILocation(line: 243, column: 24, scope: !1556)
!1564 = !DILocation(line: 244, column: 73, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !86, line: 243, column: 41)
!1566 = distinct !DILexicalBlock(scope: !1556, file: !86, line: 243, column: 24)
!1567 = !DILocation(line: 245, column: 73, scope: !1565)
!1568 = !DILocation(line: 246, column: 13, scope: !1565)
!1569 = !DILocation(line: 247, column: 73, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !86, line: 246, column: 41)
!1571 = distinct !DILexicalBlock(scope: !1566, file: !86, line: 246, column: 24)
!1572 = !DILocation(line: 248, column: 73, scope: !1570)
!1573 = !DILocation(line: 249, column: 13, scope: !1570)
!1574 = !DILocation(line: 250, column: 75, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !86, line: 249, column: 41)
!1576 = distinct !DILexicalBlock(scope: !1571, file: !86, line: 249, column: 24)
!1577 = !DILocation(line: 251, column: 75, scope: !1575)
!1578 = !DILocation(line: 252, column: 13, scope: !1575)
!1579 = !DILocation(line: 253, column: 75, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !86, line: 252, column: 41)
!1581 = distinct !DILexicalBlock(scope: !1576, file: !86, line: 252, column: 24)
!1582 = !DILocation(line: 254, column: 75, scope: !1580)
!1583 = !DILocation(line: 255, column: 13, scope: !1580)
!1584 = !DILocation(line: 256, column: 75, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !86, line: 255, column: 41)
!1586 = distinct !DILexicalBlock(scope: !1581, file: !86, line: 255, column: 24)
!1587 = !DILocation(line: 257, column: 75, scope: !1585)
!1588 = !DILocation(line: 258, column: 13, scope: !1585)
!1589 = !DILocation(line: 261, column: 18, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1557, file: !86, line: 261, column: 17)
!1591 = !DILocation(line: 261, column: 17, scope: !1557)
!1592 = !DILocation(line: 262, column: 75, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1590, file: !86, line: 261, column: 29)
!1594 = !DILocation(line: 263, column: 75, scope: !1593)
!1595 = !DILocation(line: 264, column: 13, scope: !1593)
!1596 = !DILocation(line: 265, column: 17, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1590, file: !86, line: 264, column: 20)
!1598 = !DILocation(line: 272, column: 1, scope: !1543)
!1599 = distinct !DISubprogram(name: "halGPIO_PullDown_RESET", scope: !86, file: !86, line: 359, type: !1544, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1600)
!1600 = !{!1601, !1602, !1603}
!1601 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1599, file: !86, line: 359, type: !80)
!1602 = !DILocalVariable(name: "no", scope: !1599, file: !86, line: 362, type: !1362)
!1603 = !DILocalVariable(name: "remainder", scope: !1599, file: !86, line: 363, type: !1362)
!1604 = !DILocation(line: 0, scope: !1599)
!1605 = !DILocation(line: 364, column: 19, scope: !1599)
!1606 = !DILocation(line: 365, column: 17, scope: !1599)
!1607 = !DILocation(line: 367, column: 5, scope: !1599)
!1608 = !DILocation(line: 369, column: 27, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !86, line: 369, column: 17)
!1610 = distinct !DILexicalBlock(scope: !1599, file: !86, line: 367, column: 17)
!1611 = !DILocation(line: 369, column: 17, scope: !1610)
!1612 = !DILocation(line: 369, column: 17, scope: !1609)
!1613 = !DILocation(line: 370, column: 17, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1609, file: !86, line: 369, column: 34)
!1615 = !DILocation(line: 371, column: 13, scope: !1614)
!1616 = !DILocation(line: 371, column: 24, scope: !1609)
!1617 = !DILocation(line: 372, column: 73, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !86, line: 371, column: 41)
!1619 = distinct !DILexicalBlock(scope: !1609, file: !86, line: 371, column: 24)
!1620 = !DILocation(line: 373, column: 73, scope: !1618)
!1621 = !DILocation(line: 374, column: 13, scope: !1618)
!1622 = !DILocation(line: 375, column: 73, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !86, line: 374, column: 41)
!1624 = distinct !DILexicalBlock(scope: !1619, file: !86, line: 374, column: 24)
!1625 = !DILocation(line: 376, column: 73, scope: !1623)
!1626 = !DILocation(line: 377, column: 13, scope: !1623)
!1627 = !DILocation(line: 378, column: 75, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !86, line: 377, column: 41)
!1629 = distinct !DILexicalBlock(scope: !1624, file: !86, line: 377, column: 24)
!1630 = !DILocation(line: 379, column: 75, scope: !1628)
!1631 = !DILocation(line: 380, column: 13, scope: !1628)
!1632 = !DILocation(line: 381, column: 75, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !86, line: 380, column: 41)
!1634 = distinct !DILexicalBlock(scope: !1629, file: !86, line: 380, column: 24)
!1635 = !DILocation(line: 382, column: 75, scope: !1633)
!1636 = !DILocation(line: 383, column: 13, scope: !1633)
!1637 = !DILocation(line: 384, column: 75, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !86, line: 383, column: 41)
!1639 = distinct !DILexicalBlock(scope: !1634, file: !86, line: 383, column: 24)
!1640 = !DILocation(line: 385, column: 75, scope: !1638)
!1641 = !DILocation(line: 386, column: 13, scope: !1638)
!1642 = !DILocation(line: 389, column: 18, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1610, file: !86, line: 389, column: 17)
!1644 = !DILocation(line: 389, column: 17, scope: !1610)
!1645 = !DILocation(line: 390, column: 75, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1643, file: !86, line: 389, column: 29)
!1647 = !DILocation(line: 391, column: 75, scope: !1646)
!1648 = !DILocation(line: 392, column: 13, scope: !1646)
!1649 = !DILocation(line: 393, column: 17, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1643, file: !86, line: 392, column: 20)
!1651 = !DILocation(line: 401, column: 1, scope: !1599)
!1652 = distinct !DISubprogram(name: "halGPIO_PullUp_RESET", scope: !86, file: !86, line: 274, type: !1544, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1653)
!1653 = !{!1654, !1655, !1656}
!1654 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1652, file: !86, line: 274, type: !80)
!1655 = !DILocalVariable(name: "no", scope: !1652, file: !86, line: 276, type: !1362)
!1656 = !DILocalVariable(name: "remainder", scope: !1652, file: !86, line: 277, type: !1362)
!1657 = !DILocation(line: 0, scope: !1652)
!1658 = !DILocation(line: 278, column: 19, scope: !1652)
!1659 = !DILocation(line: 279, column: 17, scope: !1652)
!1660 = !DILocation(line: 281, column: 5, scope: !1652)
!1661 = !DILocation(line: 283, column: 27, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !86, line: 283, column: 17)
!1663 = distinct !DILexicalBlock(scope: !1652, file: !86, line: 281, column: 17)
!1664 = !DILocation(line: 283, column: 17, scope: !1663)
!1665 = !DILocation(line: 283, column: 17, scope: !1662)
!1666 = !DILocation(line: 284, column: 17, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1662, file: !86, line: 283, column: 34)
!1668 = !DILocation(line: 285, column: 13, scope: !1667)
!1669 = !DILocation(line: 285, column: 24, scope: !1662)
!1670 = !DILocation(line: 286, column: 73, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !86, line: 285, column: 41)
!1672 = distinct !DILexicalBlock(scope: !1662, file: !86, line: 285, column: 24)
!1673 = !DILocation(line: 287, column: 73, scope: !1671)
!1674 = !DILocation(line: 288, column: 13, scope: !1671)
!1675 = !DILocation(line: 289, column: 73, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !86, line: 288, column: 41)
!1677 = distinct !DILexicalBlock(scope: !1672, file: !86, line: 288, column: 24)
!1678 = !DILocation(line: 290, column: 73, scope: !1676)
!1679 = !DILocation(line: 291, column: 13, scope: !1676)
!1680 = !DILocation(line: 292, column: 75, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !86, line: 291, column: 41)
!1682 = distinct !DILexicalBlock(scope: !1677, file: !86, line: 291, column: 24)
!1683 = !DILocation(line: 293, column: 75, scope: !1681)
!1684 = !DILocation(line: 294, column: 13, scope: !1681)
!1685 = !DILocation(line: 295, column: 75, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !86, line: 294, column: 41)
!1687 = distinct !DILexicalBlock(scope: !1682, file: !86, line: 294, column: 24)
!1688 = !DILocation(line: 296, column: 75, scope: !1686)
!1689 = !DILocation(line: 297, column: 13, scope: !1686)
!1690 = !DILocation(line: 298, column: 75, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !86, line: 297, column: 41)
!1692 = distinct !DILexicalBlock(scope: !1687, file: !86, line: 297, column: 24)
!1693 = !DILocation(line: 299, column: 75, scope: !1691)
!1694 = !DILocation(line: 300, column: 13, scope: !1691)
!1695 = !DILocation(line: 303, column: 18, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1663, file: !86, line: 303, column: 17)
!1697 = !DILocation(line: 303, column: 17, scope: !1663)
!1698 = !DILocation(line: 304, column: 75, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1696, file: !86, line: 303, column: 29)
!1700 = !DILocation(line: 305, column: 75, scope: !1699)
!1701 = !DILocation(line: 306, column: 13, scope: !1699)
!1702 = !DILocation(line: 307, column: 17, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1696, file: !86, line: 306, column: 20)
!1704 = !DILocation(line: 314, column: 1, scope: !1652)
!1705 = distinct !DISubprogram(name: "halGPIO_PullDown_SET", scope: !86, file: !86, line: 316, type: !1544, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1706)
!1706 = !{!1707, !1708, !1709}
!1707 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1705, file: !86, line: 316, type: !80)
!1708 = !DILocalVariable(name: "no", scope: !1705, file: !86, line: 318, type: !1362)
!1709 = !DILocalVariable(name: "remainder", scope: !1705, file: !86, line: 319, type: !1362)
!1710 = !DILocation(line: 0, scope: !1705)
!1711 = !DILocation(line: 320, column: 19, scope: !1705)
!1712 = !DILocation(line: 321, column: 17, scope: !1705)
!1713 = !DILocation(line: 322, column: 5, scope: !1705)
!1714 = !DILocation(line: 323, column: 5, scope: !1705)
!1715 = !DILocation(line: 325, column: 27, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !86, line: 325, column: 17)
!1717 = distinct !DILexicalBlock(scope: !1705, file: !86, line: 323, column: 17)
!1718 = !DILocation(line: 325, column: 17, scope: !1717)
!1719 = !DILocation(line: 325, column: 17, scope: !1716)
!1720 = !DILocation(line: 326, column: 17, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1716, file: !86, line: 325, column: 34)
!1722 = !DILocation(line: 327, column: 13, scope: !1721)
!1723 = !DILocation(line: 327, column: 24, scope: !1716)
!1724 = !DILocation(line: 328, column: 73, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !86, line: 327, column: 41)
!1726 = distinct !DILexicalBlock(scope: !1716, file: !86, line: 327, column: 24)
!1727 = !DILocation(line: 329, column: 73, scope: !1725)
!1728 = !DILocation(line: 330, column: 13, scope: !1725)
!1729 = !DILocation(line: 331, column: 73, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !86, line: 330, column: 41)
!1731 = distinct !DILexicalBlock(scope: !1726, file: !86, line: 330, column: 24)
!1732 = !DILocation(line: 332, column: 73, scope: !1730)
!1733 = !DILocation(line: 333, column: 13, scope: !1730)
!1734 = !DILocation(line: 334, column: 75, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !86, line: 333, column: 41)
!1736 = distinct !DILexicalBlock(scope: !1731, file: !86, line: 333, column: 24)
!1737 = !DILocation(line: 335, column: 75, scope: !1735)
!1738 = !DILocation(line: 336, column: 13, scope: !1735)
!1739 = !DILocation(line: 337, column: 75, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !86, line: 336, column: 41)
!1741 = distinct !DILexicalBlock(scope: !1736, file: !86, line: 336, column: 24)
!1742 = !DILocation(line: 338, column: 75, scope: !1740)
!1743 = !DILocation(line: 339, column: 13, scope: !1740)
!1744 = !DILocation(line: 340, column: 75, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !86, line: 339, column: 41)
!1746 = distinct !DILexicalBlock(scope: !1741, file: !86, line: 339, column: 24)
!1747 = !DILocation(line: 341, column: 75, scope: !1745)
!1748 = !DILocation(line: 342, column: 13, scope: !1745)
!1749 = !DILocation(line: 345, column: 18, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1717, file: !86, line: 345, column: 17)
!1751 = !DILocation(line: 345, column: 17, scope: !1717)
!1752 = !DILocation(line: 346, column: 75, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1750, file: !86, line: 345, column: 29)
!1754 = !DILocation(line: 347, column: 75, scope: !1753)
!1755 = !DILocation(line: 348, column: 13, scope: !1753)
!1756 = !DILocation(line: 349, column: 17, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1750, file: !86, line: 348, column: 20)
!1758 = !DILocation(line: 357, column: 1, scope: !1705)
!1759 = distinct !DISubprogram(name: "halGPIO_SetDriving", scope: !86, file: !86, line: 404, type: !1355, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1760)
!1760 = !{!1761, !1762, !1763, !1764}
!1761 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1759, file: !86, line: 404, type: !80)
!1762 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1759, file: !86, line: 404, type: !413)
!1763 = !DILocalVariable(name: "no", scope: !1759, file: !86, line: 406, type: !1362)
!1764 = !DILocalVariable(name: "remainder", scope: !1759, file: !86, line: 407, type: !1362)
!1765 = !DILocation(line: 0, scope: !1759)
!1766 = !DILocation(line: 408, column: 19, scope: !1759)
!1767 = !DILocation(line: 409, column: 17, scope: !1759)
!1768 = !DILocation(line: 411, column: 5, scope: !1759)
!1769 = !DILocation(line: 413, column: 84, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1759, file: !86, line: 411, column: 17)
!1771 = !DILocation(line: 413, column: 70, scope: !1770)
!1772 = !DILocation(line: 413, column: 64, scope: !1770)
!1773 = !DILocation(line: 413, column: 61, scope: !1770)
!1774 = !DILocation(line: 414, column: 79, scope: !1770)
!1775 = !DILocation(line: 414, column: 83, scope: !1770)
!1776 = !DILocation(line: 414, column: 88, scope: !1770)
!1777 = !DILocation(line: 414, column: 61, scope: !1770)
!1778 = !DILocation(line: 415, column: 13, scope: !1770)
!1779 = !DILocation(line: 417, column: 27, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1770, file: !86, line: 417, column: 17)
!1781 = !DILocation(line: 417, column: 17, scope: !1770)
!1782 = !DILocation(line: 418, column: 88, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1780, file: !86, line: 417, column: 33)
!1784 = !DILocation(line: 418, column: 74, scope: !1783)
!1785 = !DILocation(line: 418, column: 68, scope: !1783)
!1786 = !DILocation(line: 418, column: 65, scope: !1783)
!1787 = !DILocation(line: 419, column: 83, scope: !1783)
!1788 = !DILocation(line: 419, column: 87, scope: !1783)
!1789 = !DILocation(line: 419, column: 92, scope: !1783)
!1790 = !DILocation(line: 419, column: 65, scope: !1783)
!1791 = !DILocation(line: 420, column: 13, scope: !1783)
!1792 = !DILocation(line: 420, column: 24, scope: !1780)
!1793 = !DILocation(line: 421, column: 73, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !86, line: 420, column: 41)
!1795 = distinct !DILexicalBlock(scope: !1780, file: !86, line: 420, column: 24)
!1796 = !DILocation(line: 422, column: 91, scope: !1794)
!1797 = !DILocation(line: 422, column: 100, scope: !1794)
!1798 = !DILocation(line: 422, column: 73, scope: !1794)
!1799 = !DILocation(line: 423, column: 73, scope: !1794)
!1800 = !DILocation(line: 424, column: 13, scope: !1794)
!1801 = !DILocation(line: 425, column: 73, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !86, line: 424, column: 41)
!1803 = distinct !DILexicalBlock(scope: !1795, file: !86, line: 424, column: 24)
!1804 = !DILocation(line: 426, column: 91, scope: !1802)
!1805 = !DILocation(line: 426, column: 100, scope: !1802)
!1806 = !DILocation(line: 426, column: 73, scope: !1802)
!1807 = !DILocation(line: 427, column: 73, scope: !1802)
!1808 = !DILocation(line: 428, column: 13, scope: !1802)
!1809 = !DILocation(line: 429, column: 75, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !86, line: 428, column: 41)
!1811 = distinct !DILexicalBlock(scope: !1803, file: !86, line: 428, column: 24)
!1812 = !DILocation(line: 430, column: 93, scope: !1810)
!1813 = !DILocation(line: 430, column: 102, scope: !1810)
!1814 = !DILocation(line: 430, column: 75, scope: !1810)
!1815 = !DILocation(line: 431, column: 75, scope: !1810)
!1816 = !DILocation(line: 432, column: 13, scope: !1810)
!1817 = !DILocation(line: 433, column: 75, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !86, line: 432, column: 41)
!1819 = distinct !DILexicalBlock(scope: !1811, file: !86, line: 432, column: 24)
!1820 = !DILocation(line: 434, column: 93, scope: !1818)
!1821 = !DILocation(line: 434, column: 102, scope: !1818)
!1822 = !DILocation(line: 434, column: 75, scope: !1818)
!1823 = !DILocation(line: 435, column: 75, scope: !1818)
!1824 = !DILocation(line: 436, column: 13, scope: !1818)
!1825 = !DILocation(line: 437, column: 75, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !86, line: 436, column: 41)
!1827 = distinct !DILexicalBlock(scope: !1819, file: !86, line: 436, column: 24)
!1828 = !DILocation(line: 438, column: 93, scope: !1826)
!1829 = !DILocation(line: 438, column: 102, scope: !1826)
!1830 = !DILocation(line: 438, column: 75, scope: !1826)
!1831 = !DILocation(line: 439, column: 75, scope: !1826)
!1832 = !DILocation(line: 440, column: 13, scope: !1826)
!1833 = !DILocation(line: 443, column: 18, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1770, file: !86, line: 443, column: 17)
!1835 = !DILocation(line: 443, column: 17, scope: !1770)
!1836 = !DILocation(line: 444, column: 75, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1834, file: !86, line: 443, column: 29)
!1838 = !DILocation(line: 445, column: 93, scope: !1837)
!1839 = !DILocation(line: 445, column: 102, scope: !1837)
!1840 = !DILocation(line: 445, column: 75, scope: !1837)
!1841 = !DILocation(line: 446, column: 75, scope: !1837)
!1842 = !DILocation(line: 447, column: 13, scope: !1837)
!1843 = !DILocation(line: 448, column: 88, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1834, file: !86, line: 447, column: 20)
!1845 = !DILocation(line: 448, column: 74, scope: !1844)
!1846 = !DILocation(line: 448, column: 68, scope: !1844)
!1847 = !DILocation(line: 448, column: 65, scope: !1844)
!1848 = !DILocation(line: 449, column: 83, scope: !1844)
!1849 = !DILocation(line: 449, column: 87, scope: !1844)
!1850 = !DILocation(line: 449, column: 92, scope: !1844)
!1851 = !DILocation(line: 449, column: 65, scope: !1844)
!1852 = !DILocation(line: 453, column: 84, scope: !1770)
!1853 = !DILocation(line: 453, column: 70, scope: !1770)
!1854 = !DILocation(line: 453, column: 64, scope: !1770)
!1855 = !DILocation(line: 453, column: 61, scope: !1770)
!1856 = !DILocation(line: 454, column: 79, scope: !1770)
!1857 = !DILocation(line: 454, column: 83, scope: !1770)
!1858 = !DILocation(line: 454, column: 88, scope: !1770)
!1859 = !DILocation(line: 454, column: 61, scope: !1770)
!1860 = !DILocation(line: 455, column: 13, scope: !1770)
!1861 = !DILocation(line: 460, column: 1, scope: !1759)
!1862 = distinct !DISubprogram(name: "halGPIO_GetDriving", scope: !86, file: !86, line: 463, type: !1863, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1866)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{!1357, !80, !1865}
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 32)
!1866 = !{!1867, !1868, !1869, !1870, !1871}
!1867 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1862, file: !86, line: 463, type: !80)
!1868 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1862, file: !86, line: 463, type: !1865)
!1869 = !DILocalVariable(name: "no", scope: !1862, file: !86, line: 465, type: !1362)
!1870 = !DILocalVariable(name: "remainder", scope: !1862, file: !86, line: 466, type: !1362)
!1871 = !DILocalVariable(name: "temp", scope: !1862, file: !86, line: 467, type: !80)
!1872 = !DILocation(line: 0, scope: !1862)
!1873 = !DILocation(line: 468, column: 19, scope: !1862)
!1874 = !DILocation(line: 469, column: 17, scope: !1862)
!1875 = !DILocation(line: 471, column: 5, scope: !1862)
!1876 = !DILocation(line: 473, column: 20, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1862, file: !86, line: 471, column: 17)
!1878 = !DILocation(line: 474, column: 40, scope: !1877)
!1879 = !DILocation(line: 474, column: 26, scope: !1877)
!1880 = !DILocation(line: 474, column: 18, scope: !1877)
!1881 = !DILocation(line: 475, column: 40, scope: !1877)
!1882 = !DILocation(line: 475, column: 29, scope: !1877)
!1883 = !DILocation(line: 476, column: 13, scope: !1877)
!1884 = !DILocation(line: 478, column: 27, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1877, file: !86, line: 478, column: 17)
!1886 = !DILocation(line: 478, column: 17, scope: !1877)
!1887 = !DILocation(line: 479, column: 24, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1885, file: !86, line: 478, column: 33)
!1889 = !DILocation(line: 480, column: 44, scope: !1888)
!1890 = !DILocation(line: 480, column: 30, scope: !1888)
!1891 = !DILocation(line: 480, column: 22, scope: !1888)
!1892 = !DILocation(line: 481, column: 44, scope: !1888)
!1893 = !DILocation(line: 481, column: 33, scope: !1888)
!1894 = !DILocation(line: 482, column: 13, scope: !1888)
!1895 = !DILocation(line: 482, column: 24, scope: !1885)
!1896 = !DILocation(line: 483, column: 24, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !86, line: 482, column: 41)
!1898 = distinct !DILexicalBlock(scope: !1885, file: !86, line: 482, column: 24)
!1899 = !DILocation(line: 485, column: 53, scope: !1897)
!1900 = !DILocation(line: 485, column: 33, scope: !1897)
!1901 = !DILocation(line: 486, column: 13, scope: !1897)
!1902 = !DILocation(line: 487, column: 24, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !86, line: 486, column: 41)
!1904 = distinct !DILexicalBlock(scope: !1898, file: !86, line: 486, column: 24)
!1905 = !DILocation(line: 489, column: 53, scope: !1903)
!1906 = !DILocation(line: 489, column: 33, scope: !1903)
!1907 = !DILocation(line: 490, column: 13, scope: !1903)
!1908 = !DILocation(line: 491, column: 24, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !86, line: 490, column: 41)
!1910 = distinct !DILexicalBlock(scope: !1904, file: !86, line: 490, column: 24)
!1911 = !DILocation(line: 493, column: 53, scope: !1909)
!1912 = !DILocation(line: 493, column: 33, scope: !1909)
!1913 = !DILocation(line: 494, column: 13, scope: !1909)
!1914 = !DILocation(line: 495, column: 24, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !86, line: 494, column: 41)
!1916 = distinct !DILexicalBlock(scope: !1910, file: !86, line: 494, column: 24)
!1917 = !DILocation(line: 497, column: 53, scope: !1915)
!1918 = !DILocation(line: 497, column: 33, scope: !1915)
!1919 = !DILocation(line: 498, column: 13, scope: !1915)
!1920 = !DILocation(line: 499, column: 24, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !86, line: 498, column: 41)
!1922 = distinct !DILexicalBlock(scope: !1916, file: !86, line: 498, column: 24)
!1923 = !DILocation(line: 501, column: 53, scope: !1921)
!1924 = !DILocation(line: 501, column: 33, scope: !1921)
!1925 = !DILocation(line: 502, column: 13, scope: !1921)
!1926 = !DILocation(line: 505, column: 18, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1877, file: !86, line: 505, column: 17)
!1928 = !DILocation(line: 505, column: 17, scope: !1877)
!1929 = !DILocation(line: 506, column: 24, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1927, file: !86, line: 505, column: 29)
!1931 = !DILocation(line: 508, column: 53, scope: !1930)
!1932 = !DILocation(line: 508, column: 33, scope: !1930)
!1933 = !DILocation(line: 509, column: 13, scope: !1930)
!1934 = !DILocation(line: 510, column: 24, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1927, file: !86, line: 509, column: 20)
!1936 = !DILocation(line: 511, column: 44, scope: !1935)
!1937 = !DILocation(line: 511, column: 30, scope: !1935)
!1938 = !DILocation(line: 511, column: 22, scope: !1935)
!1939 = !DILocation(line: 512, column: 44, scope: !1935)
!1940 = !DILocation(line: 512, column: 33, scope: !1935)
!1941 = !DILocation(line: 516, column: 20, scope: !1877)
!1942 = !DILocation(line: 517, column: 40, scope: !1877)
!1943 = !DILocation(line: 517, column: 26, scope: !1877)
!1944 = !DILocation(line: 517, column: 18, scope: !1877)
!1945 = !DILocation(line: 518, column: 40, scope: !1877)
!1946 = !DILocation(line: 518, column: 29, scope: !1877)
!1947 = !DILocation(line: 519, column: 13, scope: !1877)
!1948 = !DILocation(line: 0, scope: !1877)
!1949 = !DILocation(line: 524, column: 1, scope: !1862)
!1950 = distinct !DISubprogram(name: "topPAD_Control_GPIO", scope: !86, file: !86, line: 526, type: !1951, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1954)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{null, !80, !1953}
!1953 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_TOP_PAD_CONTROL_T", file: !89, line: 1212, baseType: !88)
!1954 = !{!1955, !1956, !1957, !1958}
!1955 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1950, file: !86, line: 526, type: !80)
!1956 = !DILocalVariable(name: "ePadControl", arg: 2, scope: !1950, file: !86, line: 526, type: !1953)
!1957 = !DILocalVariable(name: "no", scope: !1950, file: !86, line: 529, type: !1362)
!1958 = !DILocalVariable(name: "remainder", scope: !1950, file: !86, line: 530, type: !1362)
!1959 = !DILocation(line: 0, scope: !1950)
!1960 = !DILocation(line: 531, column: 19, scope: !1950)
!1961 = !DILocation(line: 532, column: 17, scope: !1950)
!1962 = !DILocation(line: 534, column: 9, scope: !1950)
!1963 = !DILocation(line: 536, column: 9, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !86, line: 534, column: 45)
!1965 = distinct !DILexicalBlock(scope: !1950, file: !86, line: 534, column: 9)
!1966 = !DILocation(line: 538, column: 56, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1964, file: !86, line: 536, column: 21)
!1968 = !DILocation(line: 538, column: 53, scope: !1967)
!1969 = !DILocation(line: 538, column: 47, scope: !1967)
!1970 = !DILocation(line: 539, column: 17, scope: !1967)
!1971 = !DILocation(line: 541, column: 56, scope: !1967)
!1972 = !DILocation(line: 541, column: 53, scope: !1967)
!1973 = !DILocation(line: 541, column: 47, scope: !1967)
!1974 = !DILocation(line: 542, column: 17, scope: !1967)
!1975 = !DILocation(line: 548, column: 9, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !86, line: 547, column: 51)
!1977 = distinct !DILexicalBlock(scope: !1965, file: !86, line: 547, column: 16)
!1978 = !DILocation(line: 550, column: 57, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1976, file: !86, line: 548, column: 21)
!1980 = !DILocation(line: 550, column: 54, scope: !1979)
!1981 = !DILocation(line: 550, column: 50, scope: !1979)
!1982 = !DILocation(line: 550, column: 47, scope: !1979)
!1983 = !DILocation(line: 551, column: 17, scope: !1979)
!1984 = !DILocation(line: 553, column: 57, scope: !1979)
!1985 = !DILocation(line: 553, column: 54, scope: !1979)
!1986 = !DILocation(line: 553, column: 50, scope: !1979)
!1987 = !DILocation(line: 553, column: 47, scope: !1979)
!1988 = !DILocation(line: 554, column: 17, scope: !1979)
!1989 = !DILocation(line: 560, column: 1, scope: !1950)
!1990 = distinct !DISubprogram(name: "drvGPIO_IDX_EINT_WIC_LISR", scope: !86, file: !86, line: 567, type: !565, scopeLine: 568, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1991)
!1991 = !{!1992, !1993, !1994}
!1992 = !DILocalVariable(name: "irq_number", arg: 1, scope: !1990, file: !86, line: 567, type: !515)
!1993 = !DILocalVariable(name: "i", scope: !1990, file: !86, line: 569, type: !204)
!1994 = !DILocalVariable(name: "pin_number", scope: !1990, file: !86, line: 570, type: !204)
!1995 = !DILocation(line: 0, scope: !1990)
!1996 = !DILocation(line: 572, column: 19, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !86, line: 572, column: 5)
!1998 = distinct !DILexicalBlock(scope: !1990, file: !86, line: 572, column: 5)
!1999 = !DILocation(line: 572, column: 5, scope: !1998)
!2000 = !DILocation(line: 573, column: 32, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !86, line: 573, column: 13)
!2002 = distinct !DILexicalBlock(scope: !1997, file: !86, line: 572, column: 46)
!2003 = !DILocation(line: 573, column: 43, scope: !2001)
!2004 = !DILocation(line: 573, column: 13, scope: !2002)
!2005 = !DILocation(line: 574, column: 45, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2001, file: !86, line: 573, column: 58)
!2007 = !DILocation(line: 575, column: 13, scope: !2006)
!2008 = !DILocation(line: 577, column: 38, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2002, file: !86, line: 577, column: 13)
!2010 = !DILocation(line: 577, column: 13, scope: !2002)
!2011 = !DILocation(line: 578, column: 13, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2009, file: !86, line: 577, column: 44)
!2013 = !DILocation(line: 579, column: 13, scope: !2012)
!2014 = !DILocation(line: 572, column: 42, scope: !1997)
!2015 = distinct !{!2015, !1999, !2016}
!2016 = !DILocation(line: 581, column: 5, scope: !1998)
!2017 = !DILocation(line: 583, column: 23, scope: !1990)
!2018 = !DILocation(line: 583, column: 5, scope: !1990)
!2019 = !DILocation(line: 584, column: 1, scope: !1990)
!2020 = distinct !DISubprogram(name: "halRegGPInterrupt", scope: !86, file: !86, line: 587, type: !2021, scopeLine: 595, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2023)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!1357, !80, !413, !413, !413, !413, !413, !413, !319}
!2023 = !{!2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039}
!2024 = !DILocalVariable(name: "pad_name", arg: 1, scope: !2020, file: !86, line: 587, type: !80)
!2025 = !DILocalVariable(name: "edgeLevelTrig", arg: 2, scope: !2020, file: !86, line: 588, type: !413)
!2026 = !DILocalVariable(name: "debounceEnable", arg: 3, scope: !2020, file: !86, line: 589, type: !413)
!2027 = !DILocalVariable(name: "polarity", arg: 4, scope: !2020, file: !86, line: 590, type: !413)
!2028 = !DILocalVariable(name: "dual", arg: 5, scope: !2020, file: !86, line: 591, type: !413)
!2029 = !DILocalVariable(name: "prescaler", arg: 6, scope: !2020, file: !86, line: 592, type: !413)
!2030 = !DILocalVariable(name: "u1PrescalerCount", arg: 7, scope: !2020, file: !86, line: 593, type: !413)
!2031 = !DILocalVariable(name: "USER_GPI_Handler", arg: 8, scope: !2020, file: !86, line: 594, type: !319)
!2032 = !DILocalVariable(name: "i", scope: !2020, file: !86, line: 596, type: !204)
!2033 = !DILocalVariable(name: "irq_number", scope: !2020, file: !86, line: 597, type: !204)
!2034 = !DILocalVariable(name: "priority_number", scope: !2020, file: !86, line: 598, type: !204)
!2035 = !DILocalVariable(name: "int_index", scope: !2020, file: !86, line: 599, type: !204)
!2036 = !DILocalVariable(name: "wdata", scope: !2020, file: !86, line: 600, type: !204)
!2037 = !DILocalVariable(name: "rdata", scope: !2020, file: !86, line: 601, type: !204)
!2038 = !DILocalVariable(name: "reg_index", scope: !2020, file: !86, line: 602, type: !204)
!2039 = !DILocalVariable(name: "reg_shift", scope: !2020, file: !86, line: 603, type: !204)
!2040 = !DILocation(line: 0, scope: !2020)
!2041 = !DILocation(line: 605, column: 19, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !86, line: 605, column: 5)
!2043 = distinct !DILexicalBlock(scope: !2020, file: !86, line: 605, column: 5)
!2044 = !DILocation(line: 605, column: 5, scope: !2043)
!2045 = !DILocation(line: 606, column: 32, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !86, line: 606, column: 13)
!2047 = distinct !DILexicalBlock(scope: !2042, file: !86, line: 605, column: 46)
!2048 = !DILocation(line: 606, column: 41, scope: !2046)
!2049 = !DILocation(line: 606, column: 13, scope: !2047)
!2050 = !DILocation(line: 607, column: 50, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2046, file: !86, line: 606, column: 54)
!2052 = !DILocation(line: 608, column: 50, scope: !2051)
!2053 = !DILocation(line: 609, column: 13, scope: !2051)
!2054 = !DILocation(line: 611, column: 38, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2047, file: !86, line: 611, column: 13)
!2056 = !DILocation(line: 611, column: 13, scope: !2047)
!2057 = !DILocation(line: 612, column: 13, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2055, file: !86, line: 611, column: 44)
!2059 = !DILocation(line: 613, column: 13, scope: !2058)
!2060 = !DILocation(line: 605, column: 42, scope: !2042)
!2061 = distinct !{!2061, !2044, !2062}
!2062 = !DILocation(line: 615, column: 5, scope: !2043)
!2063 = !DILocation(line: 617, column: 5, scope: !2020)
!2064 = !DILocation(line: 618, column: 5, scope: !2020)
!2065 = !DILocation(line: 621, column: 27, scope: !2020)
!2066 = !DILocation(line: 622, column: 27, scope: !2020)
!2067 = !DILocation(line: 623, column: 13, scope: !2020)
!2068 = !DILocation(line: 624, column: 17, scope: !2020)
!2069 = !DILocation(line: 624, column: 14, scope: !2020)
!2070 = !DILocation(line: 624, column: 11, scope: !2020)
!2071 = !DILocation(line: 625, column: 15, scope: !2020)
!2072 = !DILocation(line: 625, column: 28, scope: !2020)
!2073 = !DILocation(line: 625, column: 11, scope: !2020)
!2074 = !DILocation(line: 626, column: 48, scope: !2020)
!2075 = !DILocation(line: 628, column: 28, scope: !2020)
!2076 = !DILocation(line: 630, column: 13, scope: !2020)
!2077 = !DILocation(line: 630, column: 33, scope: !2020)
!2078 = !DILocation(line: 630, column: 42, scope: !2020)
!2079 = !DILocation(line: 630, column: 50, scope: !2020)
!2080 = !DILocation(line: 630, column: 54, scope: !2020)
!2081 = !DILocation(line: 630, column: 62, scope: !2020)
!2082 = !DILocation(line: 630, column: 70, scope: !2020)
!2083 = !DILocation(line: 630, column: 78, scope: !2020)
!2084 = !DILocation(line: 630, column: 92, scope: !2020)
!2085 = !DILocation(line: 630, column: 30, scope: !2020)
!2086 = !DILocation(line: 630, column: 47, scope: !2020)
!2087 = !DILocation(line: 630, column: 59, scope: !2020)
!2088 = !DILocation(line: 630, column: 75, scope: !2020)
!2089 = !DILocation(line: 631, column: 5, scope: !2020)
!2090 = !DILocation(line: 631, column: 48, scope: !2020)
!2091 = !DILocation(line: 632, column: 5, scope: !2020)
!2092 = !DILocation(line: 641, column: 5, scope: !2020)
!2093 = !DILocation(line: 643, column: 46, scope: !2020)
!2094 = !DILocation(line: 644, column: 5, scope: !2020)
!2095 = !DILocation(line: 645, column: 5, scope: !2020)
!2096 = !DILocation(line: 647, column: 5, scope: !2020)
!2097 = !DILocation(line: 648, column: 1, scope: !2020)
!2098 = distinct !DISubprogram(name: "NVIC_DisableIRQ", scope: !210, file: !210, line: 1507, type: !2099, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2101)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{null, !61}
!2101 = !{!2102}
!2102 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2098, file: !210, line: 1507, type: !61)
!2103 = !DILocation(line: 0, scope: !2098)
!2104 = !DILocation(line: 1509, column: 65, scope: !2098)
!2105 = !DILocation(line: 1509, column: 44, scope: !2098)
!2106 = !DILocation(line: 1509, column: 32, scope: !2098)
!2107 = !DILocation(line: 1509, column: 3, scope: !2098)
!2108 = !DILocation(line: 1509, column: 39, scope: !2098)
!2109 = !DILocation(line: 1510, column: 1, scope: !2098)
!2110 = distinct !DISubprogram(name: "NVIC_ClearPendingIRQ", scope: !210, file: !210, line: 1547, type: !2099, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2111)
!2111 = !{!2112}
!2112 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2110, file: !210, line: 1547, type: !61)
!2113 = !DILocation(line: 0, scope: !2110)
!2114 = !DILocation(line: 1549, column: 65, scope: !2110)
!2115 = !DILocation(line: 1549, column: 44, scope: !2110)
!2116 = !DILocation(line: 1549, column: 32, scope: !2110)
!2117 = !DILocation(line: 1549, column: 3, scope: !2110)
!2118 = !DILocation(line: 1549, column: 39, scope: !2110)
!2119 = !DILocation(line: 1550, column: 1, scope: !2110)
!2120 = distinct !DISubprogram(name: "NVIC_SetPriority", scope: !210, file: !210, line: 1577, type: !2121, scopeLine: 1578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2123)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{null, !61, !204}
!2123 = !{!2124, !2125}
!2124 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2120, file: !210, line: 1577, type: !61)
!2125 = !DILocalVariable(name: "priority", arg: 2, scope: !2120, file: !210, line: 1577, type: !204)
!2126 = !DILocation(line: 0, scope: !2120)
!2127 = !DILocation(line: 1579, column: 11, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2120, file: !210, line: 1579, column: 6)
!2129 = !DILocation(line: 0, scope: !2128)
!2130 = !DILocation(line: 1579, column: 6, scope: !2120)
!2131 = !DILocation(line: 1583, column: 1, scope: !2120)
!2132 = distinct !DISubprogram(name: "halRegGPInterrupt_set_triggermode", scope: !86, file: !86, line: 651, type: !2133, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2135)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!1357, !80, !413, !413, !413}
!2135 = !{!2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146}
!2136 = !DILocalVariable(name: "pad_name", arg: 1, scope: !2132, file: !86, line: 651, type: !80)
!2137 = !DILocalVariable(name: "edgeLevelTrig", arg: 2, scope: !2132, file: !86, line: 651, type: !413)
!2138 = !DILocalVariable(name: "polarity", arg: 3, scope: !2132, file: !86, line: 651, type: !413)
!2139 = !DILocalVariable(name: "dual", arg: 4, scope: !2132, file: !86, line: 651, type: !413)
!2140 = !DILocalVariable(name: "i", scope: !2132, file: !86, line: 654, type: !204)
!2141 = !DILocalVariable(name: "irq_number", scope: !2132, file: !86, line: 655, type: !204)
!2142 = !DILocalVariable(name: "int_index", scope: !2132, file: !86, line: 656, type: !204)
!2143 = !DILocalVariable(name: "wdata", scope: !2132, file: !86, line: 657, type: !204)
!2144 = !DILocalVariable(name: "rdata", scope: !2132, file: !86, line: 658, type: !204)
!2145 = !DILocalVariable(name: "reg_index", scope: !2132, file: !86, line: 659, type: !204)
!2146 = !DILocalVariable(name: "reg_shift", scope: !2132, file: !86, line: 660, type: !204)
!2147 = !DILocation(line: 0, scope: !2132)
!2148 = !DILocation(line: 662, column: 19, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !86, line: 662, column: 5)
!2150 = distinct !DILexicalBlock(scope: !2132, file: !86, line: 662, column: 5)
!2151 = !DILocation(line: 662, column: 5, scope: !2150)
!2152 = !DILocation(line: 663, column: 32, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !86, line: 663, column: 13)
!2154 = distinct !DILexicalBlock(scope: !2149, file: !86, line: 662, column: 46)
!2155 = !DILocation(line: 663, column: 41, scope: !2153)
!2156 = !DILocation(line: 663, column: 13, scope: !2154)
!2157 = !DILocation(line: 664, column: 50, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2153, file: !86, line: 663, column: 54)
!2159 = !DILocation(line: 665, column: 13, scope: !2158)
!2160 = !DILocation(line: 667, column: 38, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2154, file: !86, line: 667, column: 13)
!2162 = !DILocation(line: 667, column: 13, scope: !2154)
!2163 = !DILocation(line: 668, column: 13, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2161, file: !86, line: 667, column: 44)
!2165 = !DILocation(line: 669, column: 13, scope: !2164)
!2166 = !DILocation(line: 662, column: 42, scope: !2149)
!2167 = distinct !{!2167, !2151, !2168}
!2168 = !DILocation(line: 671, column: 5, scope: !2150)
!2169 = !DILocation(line: 673, column: 5, scope: !2132)
!2170 = !DILocation(line: 676, column: 27, scope: !2132)
!2171 = !DILocation(line: 677, column: 27, scope: !2132)
!2172 = !DILocation(line: 678, column: 13, scope: !2132)
!2173 = !DILocation(line: 679, column: 17, scope: !2132)
!2174 = !DILocation(line: 679, column: 14, scope: !2132)
!2175 = !DILocation(line: 679, column: 11, scope: !2132)
!2176 = !DILocation(line: 680, column: 14, scope: !2132)
!2177 = !DILocation(line: 680, column: 27, scope: !2132)
!2178 = !DILocation(line: 680, column: 11, scope: !2132)
!2179 = !DILocation(line: 681, column: 48, scope: !2132)
!2180 = !DILocation(line: 683, column: 14, scope: !2132)
!2181 = !DILocation(line: 683, column: 18, scope: !2132)
!2182 = !DILocation(line: 683, column: 26, scope: !2132)
!2183 = !DILocation(line: 683, column: 34, scope: !2132)
!2184 = !DILocation(line: 683, column: 23, scope: !2132)
!2185 = !DILocation(line: 684, column: 28, scope: !2132)
!2186 = !DILocation(line: 685, column: 5, scope: !2132)
!2187 = !DILocation(line: 685, column: 48, scope: !2132)
!2188 = !DILocation(line: 686, column: 5, scope: !2132)
!2189 = !DILocation(line: 688, column: 5, scope: !2132)
!2190 = !DILocation(line: 690, column: 5, scope: !2132)
!2191 = !DILocation(line: 691, column: 1, scope: !2132)
!2192 = distinct !DISubprogram(name: "NVIC_EnableIRQ", scope: !210, file: !210, line: 1494, type: !2099, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2193)
!2193 = !{!2194}
!2194 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2192, file: !210, line: 1494, type: !61)
!2195 = !DILocation(line: 0, scope: !2192)
!2196 = !DILocation(line: 1497, column: 91, scope: !2192)
!2197 = !DILocation(line: 1497, column: 61, scope: !2192)
!2198 = !DILocation(line: 1497, column: 40, scope: !2192)
!2199 = !DILocation(line: 1497, column: 3, scope: !2192)
!2200 = !DILocation(line: 1497, column: 46, scope: !2192)
!2201 = !DILocation(line: 1498, column: 1, scope: !2192)
!2202 = distinct !DISubprogram(name: "halRegGPInterrupt_set_debounce", scope: !86, file: !86, line: 694, type: !2203, scopeLine: 695, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2205)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!1357, !80, !413, !413, !236}
!2205 = !{!2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213}
!2206 = !DILocalVariable(name: "pad_name", arg: 1, scope: !2202, file: !86, line: 694, type: !80)
!2207 = !DILocalVariable(name: "debounceEnable", arg: 2, scope: !2202, file: !86, line: 694, type: !413)
!2208 = !DILocalVariable(name: "prescaler", arg: 3, scope: !2202, file: !86, line: 694, type: !413)
!2209 = !DILocalVariable(name: "u1PrescalerCount", arg: 4, scope: !2202, file: !86, line: 694, type: !236)
!2210 = !DILocalVariable(name: "i", scope: !2202, file: !86, line: 697, type: !204)
!2211 = !DILocalVariable(name: "irq_number", scope: !2202, file: !86, line: 698, type: !204)
!2212 = !DILocalVariable(name: "int_index", scope: !2202, file: !86, line: 699, type: !204)
!2213 = !DILocalVariable(name: "wdata", scope: !2202, file: !86, line: 700, type: !204)
!2214 = !DILocation(line: 0, scope: !2202)
!2215 = !DILocation(line: 702, column: 19, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !86, line: 702, column: 5)
!2217 = distinct !DILexicalBlock(scope: !2202, file: !86, line: 702, column: 5)
!2218 = !DILocation(line: 702, column: 5, scope: !2217)
!2219 = !DILocation(line: 703, column: 32, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !86, line: 703, column: 13)
!2221 = distinct !DILexicalBlock(scope: !2216, file: !86, line: 702, column: 46)
!2222 = !DILocation(line: 703, column: 41, scope: !2220)
!2223 = !DILocation(line: 703, column: 13, scope: !2221)
!2224 = !DILocation(line: 704, column: 50, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2220, file: !86, line: 703, column: 54)
!2226 = !DILocation(line: 705, column: 13, scope: !2225)
!2227 = !DILocation(line: 707, column: 38, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2221, file: !86, line: 707, column: 13)
!2229 = !DILocation(line: 707, column: 13, scope: !2221)
!2230 = !DILocation(line: 708, column: 13, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2228, file: !86, line: 707, column: 44)
!2232 = !DILocation(line: 709, column: 13, scope: !2231)
!2233 = !DILocation(line: 702, column: 42, scope: !2216)
!2234 = distinct !{!2234, !2218, !2235}
!2235 = !DILocation(line: 711, column: 5, scope: !2217)
!2236 = !DILocation(line: 713, column: 5, scope: !2202)
!2237 = !DILocation(line: 715, column: 13, scope: !2202)
!2238 = !DILocation(line: 715, column: 33, scope: !2202)
!2239 = !DILocation(line: 715, column: 42, scope: !2202)
!2240 = !DILocation(line: 715, column: 53, scope: !2202)
!2241 = !DILocation(line: 715, column: 67, scope: !2202)
!2242 = !DILocation(line: 715, column: 30, scope: !2202)
!2243 = !DILocation(line: 715, column: 47, scope: !2202)
!2244 = !DILocation(line: 716, column: 28, scope: !2202)
!2245 = !DILocation(line: 717, column: 5, scope: !2202)
!2246 = !DILocation(line: 717, column: 48, scope: !2202)
!2247 = !DILocation(line: 718, column: 5, scope: !2202)
!2248 = !DILocation(line: 719, column: 5, scope: !2202)
!2249 = !DILocation(line: 722, column: 5, scope: !2202)
!2250 = !DILocation(line: 723, column: 1, scope: !2202)
!2251 = distinct !DISubprogram(name: "halRegGPInterrupt_mask", scope: !86, file: !86, line: 726, type: !1544, scopeLine: 727, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2252)
!2252 = !{!2253, !2254, !2255}
!2253 = !DILocalVariable(name: "pad_name", arg: 1, scope: !2251, file: !86, line: 726, type: !80)
!2254 = !DILocalVariable(name: "i", scope: !2251, file: !86, line: 728, type: !204)
!2255 = !DILocalVariable(name: "irq_number", scope: !2251, file: !86, line: 729, type: !204)
!2256 = !DILocation(line: 0, scope: !2251)
!2257 = !DILocation(line: 731, column: 19, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !86, line: 731, column: 5)
!2259 = distinct !DILexicalBlock(scope: !2251, file: !86, line: 731, column: 5)
!2260 = !DILocation(line: 731, column: 5, scope: !2259)
!2261 = !DILocation(line: 732, column: 32, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !86, line: 732, column: 13)
!2263 = distinct !DILexicalBlock(scope: !2258, file: !86, line: 731, column: 46)
!2264 = !DILocation(line: 732, column: 41, scope: !2262)
!2265 = !DILocation(line: 732, column: 13, scope: !2263)
!2266 = !DILocation(line: 733, column: 45, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2262, file: !86, line: 732, column: 54)
!2268 = !DILocation(line: 734, column: 13, scope: !2267)
!2269 = !DILocation(line: 736, column: 38, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2263, file: !86, line: 736, column: 13)
!2271 = !DILocation(line: 736, column: 13, scope: !2263)
!2272 = !DILocation(line: 737, column: 13, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2270, file: !86, line: 736, column: 44)
!2274 = !DILocation(line: 738, column: 13, scope: !2273)
!2275 = !DILocation(line: 731, column: 42, scope: !2258)
!2276 = distinct !{!2276, !2260, !2277}
!2277 = !DILocation(line: 740, column: 5, scope: !2259)
!2278 = !DILocation(line: 742, column: 5, scope: !2251)
!2279 = !DILocation(line: 744, column: 5, scope: !2251)
!2280 = !DILocation(line: 745, column: 1, scope: !2251)
!2281 = distinct !DISubprogram(name: "halRegGPInterrupt_unmask", scope: !86, file: !86, line: 747, type: !1544, scopeLine: 748, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2282)
!2282 = !{!2283, !2284, !2285}
!2283 = !DILocalVariable(name: "pad_name", arg: 1, scope: !2281, file: !86, line: 747, type: !80)
!2284 = !DILocalVariable(name: "i", scope: !2281, file: !86, line: 749, type: !204)
!2285 = !DILocalVariable(name: "irq_number", scope: !2281, file: !86, line: 750, type: !204)
!2286 = !DILocation(line: 0, scope: !2281)
!2287 = !DILocation(line: 752, column: 19, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !86, line: 752, column: 5)
!2289 = distinct !DILexicalBlock(scope: !2281, file: !86, line: 752, column: 5)
!2290 = !DILocation(line: 752, column: 5, scope: !2289)
!2291 = !DILocation(line: 753, column: 32, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !86, line: 753, column: 13)
!2293 = distinct !DILexicalBlock(scope: !2288, file: !86, line: 752, column: 46)
!2294 = !DILocation(line: 753, column: 41, scope: !2292)
!2295 = !DILocation(line: 753, column: 13, scope: !2293)
!2296 = !DILocation(line: 754, column: 45, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2292, file: !86, line: 753, column: 54)
!2298 = !DILocation(line: 755, column: 13, scope: !2297)
!2299 = !DILocation(line: 757, column: 38, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2293, file: !86, line: 757, column: 13)
!2301 = !DILocation(line: 757, column: 13, scope: !2293)
!2302 = !DILocation(line: 758, column: 13, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2300, file: !86, line: 757, column: 44)
!2304 = !DILocation(line: 759, column: 13, scope: !2303)
!2305 = !DILocation(line: 752, column: 42, scope: !2288)
!2306 = distinct !{!2306, !2290, !2307}
!2307 = !DILocation(line: 761, column: 5, scope: !2289)
!2308 = !DILocation(line: 763, column: 5, scope: !2281)
!2309 = !DILocation(line: 765, column: 5, scope: !2281)
!2310 = !DILocation(line: 766, column: 1, scope: !2281)
!2311 = distinct !DISubprogram(name: "halRegGP_set_software_trigger", scope: !86, file: !86, line: 773, type: !1544, scopeLine: 774, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2312)
!2312 = !{!2313, !2314, !2315}
!2313 = !DILocalVariable(name: "pad_name", arg: 1, scope: !2311, file: !86, line: 773, type: !80)
!2314 = !DILocalVariable(name: "i", scope: !2311, file: !86, line: 776, type: !204)
!2315 = !DILocalVariable(name: "irq_number", scope: !2311, file: !86, line: 777, type: !204)
!2316 = !DILocation(line: 0, scope: !2311)
!2317 = !DILocation(line: 779, column: 19, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !86, line: 779, column: 5)
!2319 = distinct !DILexicalBlock(scope: !2311, file: !86, line: 779, column: 5)
!2320 = !DILocation(line: 779, column: 5, scope: !2319)
!2321 = !DILocation(line: 780, column: 32, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !86, line: 780, column: 13)
!2323 = distinct !DILexicalBlock(scope: !2318, file: !86, line: 779, column: 46)
!2324 = !DILocation(line: 780, column: 41, scope: !2322)
!2325 = !DILocation(line: 780, column: 13, scope: !2323)
!2326 = !DILocation(line: 781, column: 45, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2322, file: !86, line: 780, column: 54)
!2328 = !DILocation(line: 782, column: 13, scope: !2327)
!2329 = !DILocation(line: 784, column: 38, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2323, file: !86, line: 784, column: 13)
!2331 = !DILocation(line: 784, column: 13, scope: !2323)
!2332 = !DILocation(line: 785, column: 13, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2330, file: !86, line: 784, column: 44)
!2334 = !DILocation(line: 786, column: 13, scope: !2333)
!2335 = !DILocation(line: 779, column: 42, scope: !2318)
!2336 = distinct !{!2336, !2320, !2337}
!2337 = !DILocation(line: 788, column: 5, scope: !2319)
!2338 = !DILocation(line: 791, column: 5, scope: !2311)
!2339 = !DILocation(line: 793, column: 5, scope: !2311)
!2340 = !DILocation(line: 795, column: 1, scope: !2311)
!2341 = distinct !DISubprogram(name: "software_trigger_irq", scope: !86, file: !86, line: 768, type: !2342, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2344)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{null, !80}
!2344 = !{!2345}
!2345 = !DILocalVariable(name: "irq_number", arg: 1, scope: !2341, file: !86, line: 768, type: !80)
!2346 = !DILocation(line: 0, scope: !2341)
!2347 = !DILocation(line: 770, column: 54, scope: !2341)
!2348 = !DILocation(line: 770, column: 16, scope: !2341)
!2349 = !DILocation(line: 771, column: 1, scope: !2341)
!2350 = distinct !DISubprogram(name: "halRegGP_clear_software_trigger", scope: !86, file: !86, line: 797, type: !1544, scopeLine: 798, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2351)
!2351 = !{!2352, !2353, !2354}
!2352 = !DILocalVariable(name: "pad_name", arg: 1, scope: !2350, file: !86, line: 797, type: !80)
!2353 = !DILocalVariable(name: "i", scope: !2350, file: !86, line: 799, type: !204)
!2354 = !DILocalVariable(name: "irq_number", scope: !2350, file: !86, line: 800, type: !204)
!2355 = !DILocation(line: 0, scope: !2350)
!2356 = !DILocation(line: 802, column: 19, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !86, line: 802, column: 5)
!2358 = distinct !DILexicalBlock(scope: !2350, file: !86, line: 802, column: 5)
!2359 = !DILocation(line: 802, column: 5, scope: !2358)
!2360 = !DILocation(line: 803, column: 32, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !86, line: 803, column: 13)
!2362 = distinct !DILexicalBlock(scope: !2357, file: !86, line: 802, column: 46)
!2363 = !DILocation(line: 803, column: 41, scope: !2361)
!2364 = !DILocation(line: 803, column: 13, scope: !2362)
!2365 = !DILocation(line: 804, column: 45, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2361, file: !86, line: 803, column: 54)
!2367 = !DILocation(line: 805, column: 13, scope: !2366)
!2368 = !DILocation(line: 807, column: 38, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2362, file: !86, line: 807, column: 13)
!2370 = !DILocation(line: 807, column: 13, scope: !2362)
!2371 = !DILocation(line: 808, column: 13, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2369, file: !86, line: 807, column: 44)
!2373 = !DILocation(line: 809, column: 13, scope: !2372)
!2374 = !DILocation(line: 802, column: 42, scope: !2357)
!2375 = distinct !{!2375, !2359, !2376}
!2376 = !DILocation(line: 811, column: 5, scope: !2358)
!2377 = !DILocation(line: 813, column: 5, scope: !2350)
!2378 = !DILocation(line: 815, column: 5, scope: !2350)
!2379 = !DILocation(line: 816, column: 1, scope: !2350)
!2380 = distinct !DISubprogram(name: "halPinmuxTopOnPadFunc", scope: !1072, file: !1072, line: 85, type: !2381, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1071, retainedNodes: !2384)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!2383, !203, !413}
!2383 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID", file: !6, line: 79, baseType: null)
!2384 = !{!2385, !2386, !2387}
!2385 = !DILocalVariable(name: "ePadIndex", arg: 1, scope: !2380, file: !1072, line: 85, type: !203)
!2386 = !DILocalVariable(name: "ucFunc", arg: 2, scope: !2380, file: !1072, line: 85, type: !413)
!2387 = !DILocalVariable(name: "temp", scope: !2380, file: !1072, line: 87, type: !204)
!2388 = !DILocation(line: 0, scope: !2380)
!2389 = !DILocation(line: 88, column: 5, scope: !2380)
!2390 = !DILocation(line: 91, column: 20, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2380, file: !1072, line: 88, column: 24)
!2392 = !DILocation(line: 92, column: 18, scope: !2391)
!2393 = !DILocation(line: 93, column: 66, scope: !2391)
!2394 = !DILocation(line: 93, column: 63, scope: !2391)
!2395 = !DILocation(line: 93, column: 56, scope: !2391)
!2396 = !DILocation(line: 94, column: 13, scope: !2391)
!2397 = !DILocation(line: 97, column: 20, scope: !2391)
!2398 = !DILocation(line: 98, column: 18, scope: !2391)
!2399 = !DILocation(line: 99, column: 67, scope: !2391)
!2400 = !DILocation(line: 99, column: 74, scope: !2391)
!2401 = !DILocation(line: 99, column: 64, scope: !2391)
!2402 = !DILocation(line: 99, column: 56, scope: !2391)
!2403 = !DILocation(line: 100, column: 13, scope: !2391)
!2404 = !DILocation(line: 103, column: 20, scope: !2391)
!2405 = !DILocation(line: 104, column: 18, scope: !2391)
!2406 = !DILocation(line: 105, column: 67, scope: !2391)
!2407 = !DILocation(line: 105, column: 74, scope: !2391)
!2408 = !DILocation(line: 105, column: 64, scope: !2391)
!2409 = !DILocation(line: 105, column: 56, scope: !2391)
!2410 = !DILocation(line: 106, column: 13, scope: !2391)
!2411 = !DILocation(line: 109, column: 20, scope: !2391)
!2412 = !DILocation(line: 110, column: 18, scope: !2391)
!2413 = !DILocation(line: 111, column: 67, scope: !2391)
!2414 = !DILocation(line: 111, column: 74, scope: !2391)
!2415 = !DILocation(line: 111, column: 64, scope: !2391)
!2416 = !DILocation(line: 111, column: 56, scope: !2391)
!2417 = !DILocation(line: 112, column: 13, scope: !2391)
!2418 = !DILocation(line: 115, column: 20, scope: !2391)
!2419 = !DILocation(line: 116, column: 18, scope: !2391)
!2420 = !DILocation(line: 117, column: 67, scope: !2391)
!2421 = !DILocation(line: 117, column: 74, scope: !2391)
!2422 = !DILocation(line: 117, column: 64, scope: !2391)
!2423 = !DILocation(line: 117, column: 56, scope: !2391)
!2424 = !DILocation(line: 118, column: 13, scope: !2391)
!2425 = !DILocation(line: 121, column: 20, scope: !2391)
!2426 = !DILocation(line: 122, column: 18, scope: !2391)
!2427 = !DILocation(line: 123, column: 67, scope: !2391)
!2428 = !DILocation(line: 123, column: 74, scope: !2391)
!2429 = !DILocation(line: 123, column: 64, scope: !2391)
!2430 = !DILocation(line: 123, column: 56, scope: !2391)
!2431 = !DILocation(line: 124, column: 13, scope: !2391)
!2432 = !DILocation(line: 127, column: 20, scope: !2391)
!2433 = !DILocation(line: 128, column: 18, scope: !2391)
!2434 = !DILocation(line: 129, column: 67, scope: !2391)
!2435 = !DILocation(line: 129, column: 74, scope: !2391)
!2436 = !DILocation(line: 129, column: 64, scope: !2391)
!2437 = !DILocation(line: 129, column: 56, scope: !2391)
!2438 = !DILocation(line: 130, column: 13, scope: !2391)
!2439 = !DILocation(line: 133, column: 20, scope: !2391)
!2440 = !DILocation(line: 134, column: 18, scope: !2391)
!2441 = !DILocation(line: 135, column: 67, scope: !2391)
!2442 = !DILocation(line: 135, column: 74, scope: !2391)
!2443 = !DILocation(line: 135, column: 64, scope: !2391)
!2444 = !DILocation(line: 135, column: 56, scope: !2391)
!2445 = !DILocation(line: 136, column: 13, scope: !2391)
!2446 = !DILocation(line: 139, column: 20, scope: !2391)
!2447 = !DILocation(line: 140, column: 18, scope: !2391)
!2448 = !DILocation(line: 141, column: 67, scope: !2391)
!2449 = !DILocation(line: 141, column: 64, scope: !2391)
!2450 = !DILocation(line: 141, column: 56, scope: !2391)
!2451 = !DILocation(line: 142, column: 13, scope: !2391)
!2452 = !DILocation(line: 145, column: 20, scope: !2391)
!2453 = !DILocation(line: 146, column: 18, scope: !2391)
!2454 = !DILocation(line: 147, column: 67, scope: !2391)
!2455 = !DILocation(line: 147, column: 74, scope: !2391)
!2456 = !DILocation(line: 147, column: 64, scope: !2391)
!2457 = !DILocation(line: 147, column: 56, scope: !2391)
!2458 = !DILocation(line: 148, column: 13, scope: !2391)
!2459 = !DILocation(line: 151, column: 20, scope: !2391)
!2460 = !DILocation(line: 152, column: 18, scope: !2391)
!2461 = !DILocation(line: 153, column: 67, scope: !2391)
!2462 = !DILocation(line: 153, column: 74, scope: !2391)
!2463 = !DILocation(line: 153, column: 64, scope: !2391)
!2464 = !DILocation(line: 153, column: 56, scope: !2391)
!2465 = !DILocation(line: 154, column: 13, scope: !2391)
!2466 = !DILocation(line: 157, column: 20, scope: !2391)
!2467 = !DILocation(line: 158, column: 18, scope: !2391)
!2468 = !DILocation(line: 159, column: 67, scope: !2391)
!2469 = !DILocation(line: 159, column: 74, scope: !2391)
!2470 = !DILocation(line: 159, column: 64, scope: !2391)
!2471 = !DILocation(line: 159, column: 56, scope: !2391)
!2472 = !DILocation(line: 160, column: 29, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2391, file: !1072, line: 160, column: 17)
!2474 = !DILocation(line: 161, column: 17, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2473, file: !1072, line: 160, column: 60)
!2476 = !DILocation(line: 162, column: 13, scope: !2475)
!2477 = !DILocation(line: 166, column: 20, scope: !2391)
!2478 = !DILocation(line: 167, column: 18, scope: !2391)
!2479 = !DILocation(line: 168, column: 67, scope: !2391)
!2480 = !DILocation(line: 168, column: 74, scope: !2391)
!2481 = !DILocation(line: 168, column: 64, scope: !2391)
!2482 = !DILocation(line: 168, column: 56, scope: !2391)
!2483 = !DILocation(line: 169, column: 29, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2391, file: !1072, line: 169, column: 17)
!2485 = !DILocation(line: 170, column: 17, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2484, file: !1072, line: 169, column: 45)
!2487 = !DILocation(line: 171, column: 13, scope: !2486)
!2488 = !DILocation(line: 175, column: 20, scope: !2391)
!2489 = !DILocation(line: 176, column: 18, scope: !2391)
!2490 = !DILocation(line: 177, column: 67, scope: !2391)
!2491 = !DILocation(line: 177, column: 74, scope: !2391)
!2492 = !DILocation(line: 177, column: 64, scope: !2391)
!2493 = !DILocation(line: 177, column: 56, scope: !2391)
!2494 = !DILocation(line: 178, column: 19, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2391, file: !1072, line: 178, column: 17)
!2496 = !DILocation(line: 178, column: 17, scope: !2391)
!2497 = !DILocation(line: 179, column: 17, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2495, file: !1072, line: 178, column: 30)
!2499 = !DILocation(line: 180, column: 13, scope: !2498)
!2500 = !DILocation(line: 184, column: 20, scope: !2391)
!2501 = !DILocation(line: 185, column: 18, scope: !2391)
!2502 = !DILocation(line: 186, column: 67, scope: !2391)
!2503 = !DILocation(line: 186, column: 74, scope: !2391)
!2504 = !DILocation(line: 186, column: 64, scope: !2391)
!2505 = !DILocation(line: 186, column: 56, scope: !2391)
!2506 = !DILocation(line: 187, column: 29, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2391, file: !1072, line: 187, column: 17)
!2508 = !DILocation(line: 188, column: 17, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2507, file: !1072, line: 187, column: 45)
!2510 = !DILocation(line: 189, column: 13, scope: !2509)
!2511 = !DILocation(line: 193, column: 20, scope: !2391)
!2512 = !DILocation(line: 194, column: 18, scope: !2391)
!2513 = !DILocation(line: 195, column: 67, scope: !2391)
!2514 = !DILocation(line: 195, column: 74, scope: !2391)
!2515 = !DILocation(line: 195, column: 64, scope: !2391)
!2516 = !DILocation(line: 195, column: 56, scope: !2391)
!2517 = !DILocation(line: 196, column: 29, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2391, file: !1072, line: 196, column: 17)
!2519 = !DILocation(line: 197, column: 17, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2518, file: !1072, line: 196, column: 45)
!2521 = !DILocation(line: 198, column: 13, scope: !2520)
!2522 = !DILocation(line: 202, column: 20, scope: !2391)
!2523 = !DILocation(line: 203, column: 18, scope: !2391)
!2524 = !DILocation(line: 204, column: 67, scope: !2391)
!2525 = !DILocation(line: 204, column: 64, scope: !2391)
!2526 = !DILocation(line: 204, column: 56, scope: !2391)
!2527 = !DILocation(line: 205, column: 29, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2391, file: !1072, line: 205, column: 17)
!2529 = !DILocation(line: 206, column: 17, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2528, file: !1072, line: 205, column: 45)
!2531 = !DILocation(line: 207, column: 13, scope: !2530)
!2532 = !DILocation(line: 211, column: 20, scope: !2391)
!2533 = !DILocation(line: 212, column: 18, scope: !2391)
!2534 = !DILocation(line: 213, column: 67, scope: !2391)
!2535 = !DILocation(line: 213, column: 74, scope: !2391)
!2536 = !DILocation(line: 213, column: 64, scope: !2391)
!2537 = !DILocation(line: 213, column: 56, scope: !2391)
!2538 = !DILocation(line: 214, column: 13, scope: !2391)
!2539 = !DILocation(line: 217, column: 20, scope: !2391)
!2540 = !DILocation(line: 218, column: 18, scope: !2391)
!2541 = !DILocation(line: 219, column: 67, scope: !2391)
!2542 = !DILocation(line: 219, column: 74, scope: !2391)
!2543 = !DILocation(line: 219, column: 64, scope: !2391)
!2544 = !DILocation(line: 219, column: 56, scope: !2391)
!2545 = !DILocation(line: 220, column: 13, scope: !2391)
!2546 = !DILocation(line: 223, column: 20, scope: !2391)
!2547 = !DILocation(line: 224, column: 18, scope: !2391)
!2548 = !DILocation(line: 225, column: 67, scope: !2391)
!2549 = !DILocation(line: 225, column: 74, scope: !2391)
!2550 = !DILocation(line: 225, column: 64, scope: !2391)
!2551 = !DILocation(line: 225, column: 56, scope: !2391)
!2552 = !DILocation(line: 226, column: 13, scope: !2391)
!2553 = !DILocation(line: 229, column: 20, scope: !2391)
!2554 = !DILocation(line: 230, column: 18, scope: !2391)
!2555 = !DILocation(line: 231, column: 67, scope: !2391)
!2556 = !DILocation(line: 231, column: 74, scope: !2391)
!2557 = !DILocation(line: 231, column: 64, scope: !2391)
!2558 = !DILocation(line: 231, column: 56, scope: !2391)
!2559 = !DILocation(line: 232, column: 13, scope: !2391)
!2560 = !DILocation(line: 235, column: 20, scope: !2391)
!2561 = !DILocation(line: 236, column: 18, scope: !2391)
!2562 = !DILocation(line: 237, column: 66, scope: !2391)
!2563 = !DILocation(line: 237, column: 73, scope: !2391)
!2564 = !DILocation(line: 237, column: 63, scope: !2391)
!2565 = !DILocation(line: 237, column: 56, scope: !2391)
!2566 = !DILocation(line: 238, column: 13, scope: !2391)
!2567 = !DILocation(line: 241, column: 20, scope: !2391)
!2568 = !DILocation(line: 242, column: 18, scope: !2391)
!2569 = !DILocation(line: 243, column: 67, scope: !2391)
!2570 = !DILocation(line: 243, column: 74, scope: !2391)
!2571 = !DILocation(line: 243, column: 64, scope: !2391)
!2572 = !DILocation(line: 243, column: 56, scope: !2391)
!2573 = !DILocation(line: 244, column: 13, scope: !2391)
!2574 = !DILocation(line: 247, column: 20, scope: !2391)
!2575 = !DILocation(line: 248, column: 18, scope: !2391)
!2576 = !DILocation(line: 249, column: 67, scope: !2391)
!2577 = !DILocation(line: 249, column: 74, scope: !2391)
!2578 = !DILocation(line: 249, column: 64, scope: !2391)
!2579 = !DILocation(line: 249, column: 56, scope: !2391)
!2580 = !DILocation(line: 250, column: 13, scope: !2391)
!2581 = !DILocation(line: 253, column: 20, scope: !2391)
!2582 = !DILocation(line: 254, column: 18, scope: !2391)
!2583 = !DILocation(line: 255, column: 67, scope: !2391)
!2584 = !DILocation(line: 255, column: 74, scope: !2391)
!2585 = !DILocation(line: 255, column: 64, scope: !2391)
!2586 = !DILocation(line: 255, column: 56, scope: !2391)
!2587 = !DILocation(line: 256, column: 13, scope: !2391)
!2588 = !DILocation(line: 259, column: 20, scope: !2391)
!2589 = !DILocation(line: 260, column: 18, scope: !2391)
!2590 = !DILocation(line: 261, column: 67, scope: !2391)
!2591 = !DILocation(line: 261, column: 74, scope: !2391)
!2592 = !DILocation(line: 261, column: 64, scope: !2391)
!2593 = !DILocation(line: 261, column: 56, scope: !2391)
!2594 = !DILocation(line: 262, column: 13, scope: !2391)
!2595 = !DILocation(line: 265, column: 20, scope: !2391)
!2596 = !DILocation(line: 266, column: 18, scope: !2391)
!2597 = !DILocation(line: 267, column: 67, scope: !2391)
!2598 = !DILocation(line: 267, column: 74, scope: !2391)
!2599 = !DILocation(line: 267, column: 64, scope: !2391)
!2600 = !DILocation(line: 267, column: 56, scope: !2391)
!2601 = !DILocation(line: 268, column: 13, scope: !2391)
!2602 = !DILocation(line: 271, column: 20, scope: !2391)
!2603 = !DILocation(line: 272, column: 18, scope: !2391)
!2604 = !DILocation(line: 273, column: 67, scope: !2391)
!2605 = !DILocation(line: 273, column: 74, scope: !2391)
!2606 = !DILocation(line: 273, column: 64, scope: !2391)
!2607 = !DILocation(line: 273, column: 56, scope: !2391)
!2608 = !DILocation(line: 274, column: 13, scope: !2391)
!2609 = !DILocation(line: 278, column: 1, scope: !2380)
!2610 = distinct !DISubprogram(name: "gpio_direction", scope: !325, file: !325, line: 107, type: !2611, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !324, retainedNodes: !2613)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!285, !202, !1156}
!2613 = !{!2614, !2615}
!2614 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2610, file: !325, line: 107, type: !202)
!2615 = !DILocalVariable(name: "direction", arg: 2, scope: !2610, file: !325, line: 107, type: !1156)
!2616 = !DILocation(line: 0, scope: !2610)
!2617 = !DILocation(line: 109, column: 45, scope: !2610)
!2618 = !DILocation(line: 109, column: 12, scope: !2610)
!2619 = !DILocation(line: 109, column: 5, scope: !2610)
!2620 = distinct !DISubprogram(name: "gpio_write", scope: !325, file: !325, line: 113, type: !2621, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !324, retainedNodes: !2623)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!285, !202, !236}
!2623 = !{!2624, !2625}
!2624 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2620, file: !325, line: 113, type: !202)
!2625 = !DILocalVariable(name: "data", arg: 2, scope: !2620, file: !325, line: 113, type: !236)
!2626 = !DILocation(line: 0, scope: !2620)
!2627 = !DILocation(line: 115, column: 12, scope: !2620)
!2628 = !DILocation(line: 115, column: 5, scope: !2620)
!2629 = distinct !DISubprogram(name: "gpio_int", scope: !325, file: !325, line: 120, type: !2630, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !324, retainedNodes: !2636)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{!285, !202, !2632, !2633, !2634, !2635, !465, !236, !319}
!2632 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_NVIC_SENSE_T", file: !328, line: 72, baseType: !332)
!2633 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_DEBOUNCE_EN_T", file: !328, line: 77, baseType: !336)
!2634 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_DEBOUNCE_POL_T", file: !328, line: 82, baseType: !340)
!2635 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_DEBOUNCE_DUAL_T", file: !328, line: 87, baseType: !344)
!2636 = !{!2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644}
!2637 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2629, file: !325, line: 120, type: !202)
!2638 = !DILocalVariable(name: "edgeLevelTrig", arg: 2, scope: !2629, file: !325, line: 121, type: !2632)
!2639 = !DILocalVariable(name: "debounceEnable", arg: 3, scope: !2629, file: !325, line: 122, type: !2633)
!2640 = !DILocalVariable(name: "polarity", arg: 4, scope: !2629, file: !325, line: 123, type: !2634)
!2641 = !DILocalVariable(name: "dual", arg: 5, scope: !2629, file: !325, line: 124, type: !2635)
!2642 = !DILocalVariable(name: "prescaler", arg: 6, scope: !2629, file: !325, line: 125, type: !465)
!2643 = !DILocalVariable(name: "u1PrescalerCount", arg: 7, scope: !2629, file: !325, line: 126, type: !236)
!2644 = !DILocalVariable(name: "callback", arg: 8, scope: !2629, file: !325, line: 127, type: !319)
!2645 = !DILocation(line: 0, scope: !2629)
!2646 = !DILocation(line: 129, column: 41, scope: !2629)
!2647 = !DILocation(line: 129, column: 56, scope: !2629)
!2648 = !DILocation(line: 129, column: 73, scope: !2629)
!2649 = !DILocation(line: 129, column: 84, scope: !2629)
!2650 = !DILocation(line: 129, column: 91, scope: !2629)
!2651 = !DILocation(line: 129, column: 12, scope: !2629)
!2652 = !DILocation(line: 129, column: 5, scope: !2629)
!2653 = distinct !DISubprogram(name: "eint_set_trigger_mode", scope: !325, file: !325, line: 132, type: !2654, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !324, retainedNodes: !2656)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!285, !202, !2632, !2634, !2635}
!2656 = !{!2657, !2658, !2659, !2660}
!2657 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2653, file: !325, line: 132, type: !202)
!2658 = !DILocalVariable(name: "edgeLevelTrig", arg: 2, scope: !2653, file: !325, line: 133, type: !2632)
!2659 = !DILocalVariable(name: "polarity", arg: 3, scope: !2653, file: !325, line: 134, type: !2634)
!2660 = !DILocalVariable(name: "dual", arg: 4, scope: !2653, file: !325, line: 135, type: !2635)
!2661 = !DILocation(line: 0, scope: !2653)
!2662 = !DILocation(line: 137, column: 56, scope: !2653)
!2663 = !DILocation(line: 137, column: 71, scope: !2653)
!2664 = !DILocation(line: 137, column: 81, scope: !2653)
!2665 = !DILocation(line: 137, column: 12, scope: !2653)
!2666 = !DILocation(line: 137, column: 5, scope: !2653)
!2667 = distinct !DISubprogram(name: "eint_set_debounce", scope: !325, file: !325, line: 140, type: !2668, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !324, retainedNodes: !2670)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!285, !202, !2633, !465, !236}
!2670 = !{!2671, !2672, !2673, !2674}
!2671 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2667, file: !325, line: 140, type: !202)
!2672 = !DILocalVariable(name: "debounceEnable", arg: 2, scope: !2667, file: !325, line: 141, type: !2633)
!2673 = !DILocalVariable(name: "prescaler", arg: 3, scope: !2667, file: !325, line: 142, type: !465)
!2674 = !DILocalVariable(name: "u1PrescalerCount", arg: 4, scope: !2667, file: !325, line: 143, type: !236)
!2675 = !DILocation(line: 0, scope: !2667)
!2676 = !DILocation(line: 145, column: 53, scope: !2667)
!2677 = !DILocation(line: 145, column: 69, scope: !2667)
!2678 = !DILocation(line: 145, column: 12, scope: !2667)
!2679 = !DILocation(line: 145, column: 5, scope: !2667)
!2680 = distinct !DISubprogram(name: "eint_set_mask", scope: !325, file: !325, line: 148, type: !2681, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !324, retainedNodes: !2683)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!285, !202}
!2683 = !{!2684}
!2684 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2680, file: !325, line: 148, type: !202)
!2685 = !DILocation(line: 0, scope: !2680)
!2686 = !DILocation(line: 150, column: 12, scope: !2680)
!2687 = !DILocation(line: 150, column: 5, scope: !2680)
!2688 = distinct !DISubprogram(name: "eint_set_unmask", scope: !325, file: !325, line: 153, type: !2681, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !324, retainedNodes: !2689)
!2689 = !{!2690}
!2690 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2688, file: !325, line: 153, type: !202)
!2691 = !DILocation(line: 0, scope: !2688)
!2692 = !DILocation(line: 155, column: 12, scope: !2688)
!2693 = !DILocation(line: 155, column: 5, scope: !2688)
!2694 = distinct !DISubprogram(name: "eint_set_software_trigger", scope: !325, file: !325, line: 158, type: !2681, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !324, retainedNodes: !2695)
!2695 = !{!2696}
!2696 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2694, file: !325, line: 158, type: !202)
!2697 = !DILocation(line: 0, scope: !2694)
!2698 = !DILocation(line: 160, column: 12, scope: !2694)
!2699 = !DILocation(line: 160, column: 5, scope: !2694)
!2700 = distinct !DISubprogram(name: "eint_clear_software_trigger", scope: !325, file: !325, line: 163, type: !2681, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !324, retainedNodes: !2701)
!2701 = !{!2702}
!2702 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2700, file: !325, line: 163, type: !202)
!2703 = !DILocation(line: 0, scope: !2700)
!2704 = !DILocation(line: 165, column: 12, scope: !2700)
!2705 = !DILocation(line: 165, column: 5, scope: !2700)
!2706 = distinct !DISubprogram(name: "gpio_get_status", scope: !325, file: !325, line: 169, type: !2707, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !324, retainedNodes: !2716)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!2709, !202}
!2709 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_status", file: !328, line: 67, baseType: !2710)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !328, line: 62, size: 64, elements: !2711)
!2711 = !{!2712, !2713, !2714, !2715}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PIN", scope: !2710, file: !328, line: 63, baseType: !204, size: 32)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OUTEN", scope: !2710, file: !328, line: 64, baseType: !236, size: 8, offset: 32)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "GPI_DIN", scope: !2710, file: !328, line: 65, baseType: !236, size: 8, offset: 40)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "GPO_DOUT", scope: !2710, file: !328, line: 66, baseType: !236, size: 8, offset: 48)
!2716 = !{!2717, !2718}
!2717 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2706, file: !325, line: 169, type: !202)
!2718 = !DILocalVariable(name: "p", scope: !2706, file: !325, line: 171, type: !2709)
!2719 = !DILocation(line: 0, scope: !2706)
!2720 = !DILocation(line: 171, column: 17, scope: !2706)
!2721 = !DILocation(line: 172, column: 7, scope: !2706)
!2722 = !DILocation(line: 172, column: 16, scope: !2706)
!2723 = !DILocation(line: 173, column: 20, scope: !2706)
!2724 = !DILocation(line: 173, column: 7, scope: !2706)
!2725 = !DILocation(line: 173, column: 18, scope: !2706)
!2726 = !DILocation(line: 174, column: 17, scope: !2706)
!2727 = !DILocation(line: 174, column: 7, scope: !2706)
!2728 = !DILocation(line: 174, column: 15, scope: !2706)
!2729 = !DILocation(line: 175, column: 18, scope: !2706)
!2730 = !DILocation(line: 175, column: 7, scope: !2706)
!2731 = !DILocation(line: 175, column: 16, scope: !2706)
!2732 = !DILocation(line: 176, column: 5, scope: !2706)
!2733 = distinct !DISubprogram(name: "gpio_PullUp", scope: !325, file: !325, line: 179, type: !2681, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !324, retainedNodes: !2734)
!2734 = !{!2735, !2736}
!2735 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2733, file: !325, line: 179, type: !202)
!2736 = !DILocalVariable(name: "ret", scope: !2733, file: !325, line: 181, type: !1357)
!2737 = !DILocation(line: 0, scope: !2733)
!2738 = !DILocation(line: 182, column: 5, scope: !2733)
!2739 = !DILocation(line: 183, column: 11, scope: !2733)
!2740 = !DILocation(line: 184, column: 5, scope: !2733)
!2741 = distinct !DISubprogram(name: "gpio_PullDown", scope: !325, file: !325, line: 187, type: !2681, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !324, retainedNodes: !2742)
!2742 = !{!2743, !2744}
!2743 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2741, file: !325, line: 187, type: !202)
!2744 = !DILocalVariable(name: "ret", scope: !2741, file: !325, line: 189, type: !1357)
!2745 = !DILocation(line: 0, scope: !2741)
!2746 = !DILocation(line: 190, column: 5, scope: !2741)
!2747 = !DILocation(line: 191, column: 11, scope: !2741)
!2748 = !DILocation(line: 192, column: 5, scope: !2741)
!2749 = distinct !DISubprogram(name: "gpio_PullDisable", scope: !325, file: !325, line: 194, type: !2681, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !324, retainedNodes: !2750)
!2750 = !{!2751, !2752}
!2751 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2749, file: !325, line: 194, type: !202)
!2752 = !DILocalVariable(name: "ret", scope: !2749, file: !325, line: 196, type: !1357)
!2753 = !DILocation(line: 0, scope: !2749)
!2754 = !DILocation(line: 197, column: 5, scope: !2749)
!2755 = !DILocation(line: 198, column: 11, scope: !2749)
!2756 = !DILocation(line: 199, column: 11, scope: !2749)
!2757 = !DILocation(line: 200, column: 5, scope: !2749)
!2758 = distinct !DISubprogram(name: "gpio_SetDriving", scope: !325, file: !325, line: 202, type: !2621, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !324, retainedNodes: !2759)
!2759 = !{!2760, !2761, !2762}
!2760 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2758, file: !325, line: 202, type: !202)
!2761 = !DILocalVariable(name: "driving", arg: 2, scope: !2758, file: !325, line: 202, type: !236)
!2762 = !DILocalVariable(name: "ret", scope: !2758, file: !325, line: 204, type: !1357)
!2763 = !DILocation(line: 0, scope: !2758)
!2764 = !DILocation(line: 205, column: 11, scope: !2758)
!2765 = !DILocation(line: 206, column: 5, scope: !2758)
!2766 = distinct !DISubprogram(name: "gpio_GetDriving", scope: !325, file: !325, line: 209, type: !2767, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !324, retainedNodes: !2769)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!285, !202, !722}
!2769 = !{!2770, !2771, !2772}
!2770 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2766, file: !325, line: 209, type: !202)
!2771 = !DILocalVariable(name: "driving", arg: 2, scope: !2766, file: !325, line: 209, type: !722)
!2772 = !DILocalVariable(name: "ret", scope: !2766, file: !325, line: 211, type: !1357)
!2773 = !DILocation(line: 0, scope: !2766)
!2774 = !DILocation(line: 212, column: 11, scope: !2766)
!2775 = !DILocation(line: 213, column: 5, scope: !2766)
!2776 = distinct !DISubprogram(name: "gpio_backup_all_registers", scope: !325, file: !325, line: 216, type: !75, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !324, retainedNodes: !2777)
!2777 = !{!2778}
!2778 = !DILocalVariable(name: "i", scope: !2776, file: !325, line: 218, type: !204)
!2779 = !DILocation(line: 0, scope: !2776)
!2780 = !DILocation(line: 220, column: 5, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2776, file: !325, line: 220, column: 5)
!2782 = !DILocation(line: 221, column: 40, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2784, file: !325, line: 220, column: 78)
!2784 = distinct !DILexicalBlock(scope: !2781, file: !325, line: 220, column: 5)
!2785 = !DILocation(line: 221, column: 29, scope: !2783)
!2786 = !DILocation(line: 221, column: 38, scope: !2783)
!2787 = !DILocation(line: 220, column: 74, scope: !2784)
!2788 = !DILocation(line: 220, column: 15, scope: !2784)
!2789 = distinct !{!2789, !2780, !2790}
!2790 = !DILocation(line: 222, column: 5, scope: !2781)
!2791 = !DILocation(line: 224, column: 1, scope: !2776)
!2792 = distinct !DISubprogram(name: "gpio_restore_all_registers", scope: !325, file: !325, line: 226, type: !75, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !324, retainedNodes: !2793)
!2793 = !{!2794}
!2794 = !DILocalVariable(name: "i", scope: !2792, file: !325, line: 228, type: !204)
!2795 = !DILocation(line: 0, scope: !2792)
!2796 = !DILocation(line: 230, column: 5, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2792, file: !325, line: 230, column: 5)
!2798 = !DILocation(line: 231, column: 71, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2800, file: !325, line: 230, column: 78)
!2800 = distinct !DILexicalBlock(scope: !2797, file: !325, line: 230, column: 5)
!2801 = !DILocation(line: 231, column: 9, scope: !2799)
!2802 = !DILocation(line: 231, column: 49, scope: !2799)
!2803 = !DILocation(line: 230, column: 74, scope: !2800)
!2804 = !DILocation(line: 230, column: 15, scope: !2800)
!2805 = distinct !{!2805, !2796, !2806}
!2806 = !DILocation(line: 233, column: 5, scope: !2797)
!2807 = !DILocation(line: 234, column: 1, scope: !2792)
!2808 = distinct !DISubprogram(name: "NVIC_SetupVectorTable", scope: !1076, file: !1076, line: 47, type: !2809, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1075, retainedNodes: !2811)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{null, !204}
!2811 = !{!2812}
!2812 = !DILocalVariable(name: "addr", arg: 1, scope: !2808, file: !1076, line: 47, type: !204)
!2813 = !DILocation(line: 0, scope: !2808)
!2814 = !DILocation(line: 49, column: 15, scope: !2808)
!2815 = !DILocation(line: 51, column: 5, scope: !2808)
!2816 = !{i64 2624}
!2817 = !DILocation(line: 52, column: 5, scope: !2808)
!2818 = !{i64 2651}
!2819 = !DILocation(line: 53, column: 1, scope: !2808)
!2820 = distinct !DISubprogram(name: "NVIC_SWInt", scope: !1076, file: !1076, line: 56, type: !2821, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1075, retainedNodes: !2823)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{null, !7}
!2823 = !{!2824}
!2824 = !DILocalVariable(name: "source", arg: 1, scope: !2820, file: !1076, line: 56, type: !7)
!2825 = !DILocation(line: 0, scope: !2820)
!2826 = !DILocation(line: 58, column: 16, scope: !2820)
!2827 = !DILocation(line: 59, column: 1, scope: !2820)
!2828 = distinct !DISubprogram(name: "save_and_set_interrupt_mask", scope: !1076, file: !1076, line: 61, type: !2829, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1075, retainedNodes: !2831)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!204}
!2831 = !{!2832}
!2832 = !DILocalVariable(name: "mask", scope: !2828, file: !1076, line: 63, type: !204)
!2833 = !DILocation(line: 470, column: 3, scope: !2834, inlinedAt: !2838)
!2834 = distinct !DISubprogram(name: "__get_PRIMASK", scope: !2835, file: !2835, line: 466, type: !2829, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1075, retainedNodes: !2836)
!2835 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmFunc.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
!2836 = !{!2837}
!2837 = !DILocalVariable(name: "result", scope: !2834, file: !2835, line: 468, type: !204)
!2838 = distinct !DILocation(line: 64, column: 5, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2828, file: !1076, line: 64, column: 5)
!2840 = !{i64 302173}
!2841 = !DILocation(line: 0, scope: !2834, inlinedAt: !2838)
!2842 = !DILocation(line: 0, scope: !2828)
!2843 = !DILocation(line: 330, column: 3, scope: !2844, inlinedAt: !2845)
!2844 = distinct !DISubprogram(name: "__disable_irq", scope: !2835, file: !2835, line: 328, type: !75, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1075, retainedNodes: !1348)
!2845 = distinct !DILocation(line: 64, column: 5, scope: !2839)
!2846 = !{i64 298837}
!2847 = !DILocation(line: 65, column: 5, scope: !2828)
!2848 = distinct !DISubprogram(name: "restore_interrupt_mask", scope: !1076, file: !1076, line: 68, type: !2809, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1075, retainedNodes: !2849)
!2849 = !{!2850}
!2850 = !DILocalVariable(name: "mask", arg: 1, scope: !2848, file: !1076, line: 68, type: !204)
!2851 = !DILocation(line: 0, scope: !2848)
!2852 = !DILocalVariable(name: "priMask", arg: 1, scope: !2853, file: !2835, line: 481, type: !204)
!2853 = distinct !DISubprogram(name: "__set_PRIMASK", scope: !2835, file: !2835, line: 481, type: !2809, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1075, retainedNodes: !2854)
!2854 = !{!2852}
!2855 = !DILocation(line: 0, scope: !2853, inlinedAt: !2856)
!2856 = distinct !DILocation(line: 70, column: 5, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2848, file: !1076, line: 70, column: 5)
!2858 = !DILocation(line: 483, column: 3, scope: !2853, inlinedAt: !2856)
!2859 = !{i64 302491}
!2860 = !DILocation(line: 71, column: 1, scope: !2848)
!2861 = distinct !DISubprogram(name: "pinmux_config", scope: !1121, file: !1121, line: 54, type: !2862, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1120, retainedNodes: !2864)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!285, !202, !204}
!2864 = !{!2865, !2866, !2867}
!2865 = !DILocalVariable(name: "gpio_index", arg: 1, scope: !2861, file: !1121, line: 54, type: !202)
!2866 = !DILocalVariable(name: "function", arg: 2, scope: !2861, file: !1121, line: 54, type: !204)
!2867 = !DILocalVariable(name: "ePadIndex", scope: !2861, file: !1121, line: 56, type: !203)
!2868 = !DILocation(line: 0, scope: !2861)
!2869 = !DILocation(line: 60, column: 5, scope: !2861)
!2870 = !DILocation(line: 205, column: 38, scope: !2861)
!2871 = !DILocation(line: 205, column: 5, scope: !2861)
!2872 = !DILocation(line: 207, column: 5, scope: !2861)
!2873 = !DILocation(line: 208, column: 1, scope: !2861)
!2874 = distinct !DISubprogram(name: "get_current_count", scope: !1124, file: !1124, line: 56, type: !2829, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1123, retainedNodes: !1348)
!2875 = !DILocation(line: 58, column: 12, scope: !2874)
!2876 = !DILocation(line: 58, column: 5, scope: !2874)
!2877 = distinct !DISubprogram(name: "delay_time", scope: !1124, file: !1124, line: 62, type: !1206, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1123, retainedNodes: !2878)
!2878 = !{!2879, !2880, !2881}
!2879 = !DILocalVariable(name: "count", arg: 1, scope: !2877, file: !1124, line: 62, type: !60)
!2880 = !DILocalVariable(name: "end_count", scope: !2877, file: !1124, line: 64, type: !60)
!2881 = !DILocalVariable(name: "current", scope: !2877, file: !1124, line: 64, type: !60)
!2882 = !DILocation(line: 0, scope: !2877)
!2883 = !DILocation(line: 66, column: 17, scope: !2877)
!2884 = !DILocation(line: 66, column: 37, scope: !2877)
!2885 = !DILocation(line: 66, column: 45, scope: !2877)
!2886 = !DILocation(line: 67, column: 15, scope: !2877)
!2887 = !DILocation(line: 68, column: 12, scope: !2877)
!2888 = !DILocation(line: 68, column: 5, scope: !2877)
!2889 = !DILocation(line: 69, column: 19, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2877, file: !1124, line: 68, column: 45)
!2891 = distinct !{!2891, !2888, !2892}
!2892 = !DILocation(line: 70, column: 5, scope: !2877)
!2893 = !DILocation(line: 72, column: 1, scope: !2877)
!2894 = distinct !DISubprogram(name: "delay_time_for_gpt4", scope: !1124, file: !1124, line: 75, type: !1206, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1123, retainedNodes: !2895)
!2895 = !{!2896, !2897, !2898}
!2896 = !DILocalVariable(name: "count", arg: 1, scope: !2894, file: !1124, line: 75, type: !60)
!2897 = !DILocalVariable(name: "end_count", scope: !2894, file: !1124, line: 77, type: !60)
!2898 = !DILocalVariable(name: "current", scope: !2894, file: !1124, line: 77, type: !60)
!2899 = !DILocation(line: 0, scope: !2894)
!2900 = !DILocation(line: 79, column: 17, scope: !2894)
!2901 = !DILocation(line: 79, column: 42, scope: !2894)
!2902 = !DILocation(line: 79, column: 50, scope: !2894)
!2903 = !DILocation(line: 80, column: 15, scope: !2894)
!2904 = !DILocation(line: 81, column: 12, scope: !2894)
!2905 = !DILocation(line: 81, column: 5, scope: !2894)
!2906 = !DILocation(line: 82, column: 19, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2894, file: !1124, line: 81, column: 45)
!2908 = distinct !{!2908, !2905, !2909}
!2909 = !DILocation(line: 83, column: 5, scope: !2894)
!2910 = !DILocation(line: 85, column: 1, scope: !2894)
!2911 = distinct !DISubprogram(name: "get_current_gpt4_count", scope: !1124, file: !1124, line: 95, type: !2829, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1123, retainedNodes: !1348)
!2912 = !DILocation(line: 97, column: 13, scope: !2911)
!2913 = !DILocation(line: 97, column: 5, scope: !2911)
!2914 = distinct !DISubprogram(name: "delay_ms", scope: !1124, file: !1124, line: 107, type: !2809, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1123, retainedNodes: !2915)
!2915 = !{!2916, !2917}
!2916 = !DILocalVariable(name: "ms", arg: 1, scope: !2914, file: !1124, line: 107, type: !204)
!2917 = !DILocalVariable(name: "count", scope: !2914, file: !1124, line: 109, type: !204)
!2918 = !DILocation(line: 0, scope: !2914)
!2919 = !DILocation(line: 111, column: 17, scope: !2914)
!2920 = !DILocation(line: 112, column: 17, scope: !2914)
!2921 = !DILocation(line: 112, column: 23, scope: !2914)
!2922 = !DILocation(line: 112, column: 11, scope: !2914)
!2923 = !DILocation(line: 113, column: 17, scope: !2914)
!2924 = !DILocation(line: 113, column: 23, scope: !2914)
!2925 = !DILocation(line: 113, column: 11, scope: !2914)
!2926 = !DILocation(line: 114, column: 17, scope: !2914)
!2927 = !DILocation(line: 114, column: 23, scope: !2914)
!2928 = !DILocation(line: 114, column: 11, scope: !2914)
!2929 = !DILocation(line: 115, column: 5, scope: !2914)
!2930 = !DILocation(line: 116, column: 1, scope: !2914)
!2931 = distinct !DISubprogram(name: "delay_us", scope: !1124, file: !1124, line: 120, type: !2809, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1123, retainedNodes: !2932)
!2932 = !{!2933, !2934, !2935}
!2933 = !DILocalVariable(name: "us", arg: 1, scope: !2931, file: !1124, line: 120, type: !204)
!2934 = !DILocalVariable(name: "count", scope: !2931, file: !1124, line: 122, type: !204)
!2935 = !DILocalVariable(name: "ticks_per_us", scope: !2931, file: !1124, line: 123, type: !204)
!2936 = !DILocation(line: 0, scope: !2931)
!2937 = !DILocation(line: 125, column: 20, scope: !2931)
!2938 = !DILocation(line: 125, column: 39, scope: !2931)
!2939 = !DILocation(line: 126, column: 26, scope: !2931)
!2940 = !DILocation(line: 128, column: 5, scope: !2931)
!2941 = !DILocation(line: 129, column: 1, scope: !2931)
!2942 = distinct !DISubprogram(name: "drvTMR_init", scope: !1124, file: !1124, line: 133, type: !2943, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1123, retainedNodes: !2945)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{null, !204, !204, !477, !74}
!2945 = !{!2946, !2947, !2948, !2949}
!2946 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2942, file: !1124, line: 133, type: !204)
!2947 = !DILocalVariable(name: "countValue", arg: 2, scope: !2942, file: !1124, line: 133, type: !204)
!2948 = !DILocalVariable(name: "autoRepeat", arg: 3, scope: !2942, file: !1124, line: 133, type: !477)
!2949 = !DILocalVariable(name: "TMR_Callback", arg: 4, scope: !2942, file: !1124, line: 133, type: !74)
!2950 = !DILocation(line: 0, scope: !2942)
!2951 = !DILocation(line: 136, column: 5, scope: !2942)
!2952 = !DILocation(line: 138, column: 18, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2942, file: !1124, line: 138, column: 9)
!2954 = !DILocation(line: 138, column: 9, scope: !2942)
!2955 = !DILocation(line: 139, column: 30, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2953, file: !1124, line: 138, column: 27)
!2957 = !DILocation(line: 141, column: 5, scope: !2956)
!2958 = !DILocation(line: 142, column: 30, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2953, file: !1124, line: 141, column: 12)
!2960 = !DILocation(line: 0, scope: !2953)
!2961 = !DILocation(line: 146, column: 5, scope: !2942)
!2962 = !DILocation(line: 147, column: 1, scope: !2942)
!2963 = distinct !DISubprogram(name: "TMR_Start", scope: !1124, file: !1124, line: 149, type: !2809, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1123, retainedNodes: !2964)
!2964 = !{!2965}
!2965 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2963, file: !1124, line: 149, type: !204)
!2966 = !DILocation(line: 0, scope: !2963)
!2967 = !DILocation(line: 151, column: 5, scope: !2963)
!2968 = !DILocation(line: 152, column: 1, scope: !2963)
!2969 = distinct !DISubprogram(name: "TMR_Stop", scope: !1124, file: !1124, line: 154, type: !2809, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1123, retainedNodes: !2970)
!2970 = !{!2971}
!2971 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2969, file: !1124, line: 154, type: !204)
!2972 = !DILocation(line: 0, scope: !2969)
!2973 = !DILocation(line: 156, column: 5, scope: !2969)
!2974 = !DILocation(line: 157, column: 1, scope: !2969)
!2975 = distinct !DISubprogram(name: "drvGPT2Init", scope: !1124, file: !1124, line: 160, type: !75, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1123, retainedNodes: !1348)
!2976 = !DILocation(line: 162, column: 5, scope: !2975)
!2977 = !DILocation(line: 163, column: 1, scope: !2975)
!2978 = distinct !DISubprogram(name: "drvGPT4Init", scope: !1124, file: !1124, line: 165, type: !75, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1123, retainedNodes: !1348)
!2979 = !DILocation(line: 167, column: 5, scope: !2978)
!2980 = !DILocation(line: 168, column: 1, scope: !2978)
!2981 = distinct !DISubprogram(name: "clear_TMR_INT_status_bit", scope: !1124, file: !1124, line: 170, type: !2809, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1123, retainedNodes: !2982)
!2982 = !{!2983}
!2983 = !DILocalVariable(name: "timerNum", arg: 1, scope: !2981, file: !1124, line: 170, type: !204)
!2984 = !DILocation(line: 0, scope: !2981)
!2985 = !DILocation(line: 172, column: 9, scope: !2981)
!2986 = !DILocation(line: 177, column: 5, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2988, file: !1124, line: 175, column: 27)
!2988 = distinct !DILexicalBlock(scope: !2981, file: !1124, line: 175, column: 9)
!2989 = !DILocation(line: 178, column: 1, scope: !2981)
!2990 = distinct !DISubprogram(name: "top_xtal_init", scope: !371, file: !371, line: 52, type: !75, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !2991)
!2991 = !{!2992, !2993}
!2992 = !DILocalVariable(name: "u4RegVal", scope: !2990, file: !371, line: 54, type: !204)
!2993 = !DILocalVariable(name: "reg", scope: !2990, file: !371, line: 55, type: !956)
!2994 = !DILocation(line: 0, scope: !2990)
!2995 = !DILocation(line: 55, column: 25, scope: !2990)
!2996 = !DILocation(line: 56, column: 16, scope: !2990)
!2997 = !DILocation(line: 56, column: 23, scope: !2990)
!2998 = !DILocation(line: 58, column: 16, scope: !2990)
!2999 = !DILocation(line: 61, column: 5, scope: !2990)
!3000 = !DILocation(line: 59, column: 14, scope: !2990)
!3001 = !DILocation(line: 0, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2990, file: !371, line: 61, column: 18)
!3003 = !DILocation(line: 87, column: 38, scope: !2990)
!3004 = !DILocation(line: 88, column: 21, scope: !2990)
!3005 = !DILocation(line: 88, column: 19, scope: !2990)
!3006 = !DILocation(line: 89, column: 5, scope: !2990)
!3007 = !DILocation(line: 90, column: 17, scope: !2990)
!3008 = !DILocation(line: 90, column: 33, scope: !2990)
!3009 = !DILocation(line: 90, column: 5, scope: !2990)
!3010 = !DILocation(line: 91, column: 1, scope: !2990)
!3011 = distinct !DISubprogram(name: "top_xtal_freq_get", scope: !371, file: !371, line: 98, type: !2829, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1348)
!3012 = !DILocation(line: 100, column: 12, scope: !3011)
!3013 = !DILocation(line: 100, column: 5, scope: !3011)
!3014 = distinct !DISubprogram(name: "top_mcu_freq_get", scope: !371, file: !371, line: 108, type: !2829, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1348)
!3015 = !DILocation(line: 110, column: 12, scope: !3014)
!3016 = !DILocation(line: 110, column: 5, scope: !3014)
!3017 = distinct !DISubprogram(name: "cmnPLL1ON", scope: !371, file: !371, line: 118, type: !75, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !3018)
!3018 = !{!3019, !3020}
!3019 = !DILocalVariable(name: "reg", scope: !3017, file: !371, line: 120, type: !215)
!3020 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !3017, file: !371, line: 121, type: !375)
!3021 = !DILocation(line: 120, column: 5, scope: !3017)
!3022 = !DILocation(line: 120, column: 23, scope: !3017)
!3023 = !DILocation(line: 0, scope: !3017)
!3024 = !DILocation(line: 123, column: 11, scope: !3017)
!3025 = !DILocation(line: 123, column: 9, scope: !3017)
!3026 = !DILocation(line: 124, column: 12, scope: !3017)
!3027 = !DILocation(line: 124, column: 16, scope: !3017)
!3028 = !DILocation(line: 124, column: 39, scope: !3017)
!3029 = !DILocation(line: 124, column: 9, scope: !3017)
!3030 = !DILocation(line: 126, column: 9, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3017, file: !371, line: 126, column: 9)
!3032 = !DILocation(line: 126, column: 13, scope: !3031)
!3033 = !DILocation(line: 126, column: 9, scope: !3017)
!3034 = !DILocation(line: 127, column: 15, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3031, file: !371, line: 126, column: 47)
!3036 = !DILocation(line: 127, column: 13, scope: !3035)
!3037 = !DILocation(line: 128, column: 15, scope: !3035)
!3038 = !DILocation(line: 128, column: 19, scope: !3035)
!3039 = !DILocation(line: 128, column: 13, scope: !3035)
!3040 = !DILocation(line: 129, column: 15, scope: !3035)
!3041 = !DILocation(line: 129, column: 19, scope: !3035)
!3042 = !DILocation(line: 129, column: 13, scope: !3035)
!3043 = !DILocation(line: 130, column: 46, scope: !3035)
!3044 = !DILocation(line: 130, column: 9, scope: !3035)
!3045 = !DILocation(line: 132, column: 9, scope: !3035)
!3046 = !DILocation(line: 133, column: 19, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3035, file: !371, line: 132, column: 12)
!3048 = !DILocation(line: 133, column: 17, scope: !3047)
!3049 = !DILocation(line: 134, column: 19, scope: !3047)
!3050 = !DILocation(line: 134, column: 23, scope: !3047)
!3051 = !DILocation(line: 134, column: 17, scope: !3047)
!3052 = !DILocation(line: 135, column: 19, scope: !3035)
!3053 = !DILocation(line: 135, column: 18, scope: !3035)
!3054 = !DILocation(line: 135, column: 9, scope: !3047)
!3055 = distinct !{!3055, !3045, !3056}
!3056 = !DILocation(line: 135, column: 22, scope: !3035)
!3057 = !DILocation(line: 138, column: 1, scope: !3017)
!3058 = distinct !DISubprogram(name: "cmnReadRegister32", scope: !3059, file: !3059, line: 176, type: !3060, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !3064)
!3059 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/system_mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/eint_edge_falling/GCC")
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!204, !3062}
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 32)
!3063 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3064 = !{!3065}
!3065 = !DILocalVariable(name: "Register", arg: 1, scope: !3058, file: !3059, line: 176, type: !3062)
!3066 = !DILocation(line: 0, scope: !3058)
!3067 = !DILocation(line: 178, column: 13, scope: !3058)
!3068 = !DILocation(line: 178, column: 12, scope: !3058)
!3069 = !DILocation(line: 178, column: 5, scope: !3058)
!3070 = distinct !DISubprogram(name: "cmnWriteRegister32", scope: !3059, file: !3059, line: 171, type: !3071, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !3073)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{null, !3062, !204}
!3073 = !{!3074, !3075}
!3074 = !DILocalVariable(name: "Register", arg: 1, scope: !3070, file: !3059, line: 171, type: !3062)
!3075 = !DILocalVariable(name: "Value", arg: 2, scope: !3070, file: !3059, line: 171, type: !204)
!3076 = !DILocation(line: 0, scope: !3070)
!3077 = !DILocation(line: 173, column: 6, scope: !3070)
!3078 = !DILocation(line: 173, column: 36, scope: !3070)
!3079 = !DILocation(line: 174, column: 1, scope: !3070)
!3080 = distinct !DISubprogram(name: "cmnPLL1ON_PLL2ON", scope: !371, file: !371, line: 145, type: !3081, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !3083)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{null, !236}
!3083 = !{!3084, !3085, !3086}
!3084 = !DILocalVariable(name: "fg960M", arg: 1, scope: !3080, file: !371, line: 145, type: !236)
!3085 = !DILocalVariable(name: "reg", scope: !3080, file: !371, line: 147, type: !215)
!3086 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !3080, file: !371, line: 148, type: !375)
!3087 = !DILocation(line: 0, scope: !3080)
!3088 = !DILocation(line: 147, column: 5, scope: !3080)
!3089 = !DILocation(line: 147, column: 23, scope: !3080)
!3090 = !DILocation(line: 150, column: 11, scope: !3080)
!3091 = !DILocation(line: 150, column: 9, scope: !3080)
!3092 = !DILocation(line: 151, column: 12, scope: !3080)
!3093 = !DILocation(line: 151, column: 16, scope: !3080)
!3094 = !DILocation(line: 151, column: 39, scope: !3080)
!3095 = !DILocation(line: 151, column: 9, scope: !3080)
!3096 = !DILocation(line: 153, column: 9, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3080, file: !371, line: 153, column: 9)
!3098 = !DILocation(line: 153, column: 13, scope: !3097)
!3099 = !DILocation(line: 153, column: 9, scope: !3080)
!3100 = !DILocation(line: 154, column: 15, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3097, file: !371, line: 153, column: 45)
!3102 = !DILocation(line: 154, column: 13, scope: !3101)
!3103 = !DILocation(line: 155, column: 15, scope: !3101)
!3104 = !DILocation(line: 155, column: 19, scope: !3101)
!3105 = !DILocation(line: 155, column: 13, scope: !3101)
!3106 = !DILocation(line: 156, column: 15, scope: !3101)
!3107 = !DILocation(line: 156, column: 19, scope: !3101)
!3108 = !DILocation(line: 156, column: 13, scope: !3101)
!3109 = !DILocation(line: 157, column: 15, scope: !3101)
!3110 = !DILocation(line: 157, column: 13, scope: !3101)
!3111 = !DILocation(line: 158, column: 46, scope: !3101)
!3112 = !DILocation(line: 158, column: 9, scope: !3101)
!3113 = !DILocation(line: 160, column: 15, scope: !3101)
!3114 = !DILocation(line: 160, column: 13, scope: !3101)
!3115 = !DILocation(line: 161, column: 15, scope: !3101)
!3116 = !DILocation(line: 161, column: 19, scope: !3101)
!3117 = !DILocation(line: 161, column: 13, scope: !3101)
!3118 = !DILocation(line: 162, column: 15, scope: !3101)
!3119 = !DILocation(line: 162, column: 19, scope: !3101)
!3120 = !DILocation(line: 162, column: 13, scope: !3101)
!3121 = !DILocation(line: 163, column: 15, scope: !3101)
!3122 = !DILocation(line: 163, column: 19, scope: !3101)
!3123 = !DILocation(line: 163, column: 13, scope: !3101)
!3124 = !DILocation(line: 164, column: 46, scope: !3101)
!3125 = !DILocation(line: 164, column: 9, scope: !3101)
!3126 = !DILocation(line: 166, column: 9, scope: !3101)
!3127 = !DILocation(line: 167, column: 19, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3101, file: !371, line: 166, column: 12)
!3129 = !DILocation(line: 167, column: 17, scope: !3128)
!3130 = !DILocation(line: 168, column: 19, scope: !3128)
!3131 = !DILocation(line: 168, column: 23, scope: !3128)
!3132 = !DILocation(line: 168, column: 17, scope: !3128)
!3133 = !DILocation(line: 169, column: 19, scope: !3101)
!3134 = !DILocation(line: 169, column: 18, scope: !3101)
!3135 = !DILocation(line: 169, column: 9, scope: !3128)
!3136 = distinct !{!3136, !3126, !3137}
!3137 = !DILocation(line: 169, column: 22, scope: !3101)
!3138 = !DILocation(line: 171, column: 15, scope: !3101)
!3139 = !DILocation(line: 171, column: 13, scope: !3101)
!3140 = !DILocation(line: 172, column: 15, scope: !3101)
!3141 = !DILocation(line: 172, column: 19, scope: !3101)
!3142 = !DILocation(line: 172, column: 13, scope: !3101)
!3143 = !DILocation(line: 173, column: 15, scope: !3101)
!3144 = !DILocation(line: 173, column: 19, scope: !3101)
!3145 = !DILocation(line: 173, column: 13, scope: !3101)
!3146 = !DILocation(line: 174, column: 5, scope: !3101)
!3147 = !DILocation(line: 176, column: 11, scope: !3080)
!3148 = !DILocation(line: 176, column: 9, scope: !3080)
!3149 = !DILocation(line: 177, column: 9, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3080, file: !371, line: 177, column: 9)
!3151 = !DILocation(line: 0, scope: !3150)
!3152 = !DILocation(line: 177, column: 9, scope: !3080)
!3153 = !DILocation(line: 178, column: 19, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3150, file: !371, line: 177, column: 17)
!3155 = !DILocation(line: 178, column: 13, scope: !3154)
!3156 = !DILocation(line: 179, column: 5, scope: !3154)
!3157 = !DILocation(line: 180, column: 13, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3150, file: !371, line: 179, column: 12)
!3159 = !DILocation(line: 182, column: 42, scope: !3080)
!3160 = !DILocation(line: 182, column: 5, scope: !3080)
!3161 = !DILocation(line: 184, column: 1, scope: !3080)
!3162 = distinct !DISubprogram(name: "cmnPLL1OFF_PLL2OFF", scope: !371, file: !371, line: 191, type: !75, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !3163)
!3163 = !{!3164, !3165}
!3164 = !DILocalVariable(name: "reg", scope: !3162, file: !371, line: 193, type: !215)
!3165 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !3162, file: !371, line: 194, type: !375)
!3166 = !DILocation(line: 193, column: 5, scope: !3162)
!3167 = !DILocation(line: 193, column: 23, scope: !3162)
!3168 = !DILocation(line: 0, scope: !3162)
!3169 = !DILocation(line: 196, column: 11, scope: !3162)
!3170 = !DILocation(line: 196, column: 9, scope: !3162)
!3171 = !DILocation(line: 197, column: 11, scope: !3162)
!3172 = !DILocation(line: 197, column: 15, scope: !3162)
!3173 = !DILocation(line: 197, column: 9, scope: !3162)
!3174 = !DILocation(line: 198, column: 11, scope: !3162)
!3175 = !DILocation(line: 198, column: 15, scope: !3162)
!3176 = !DILocation(line: 198, column: 9, scope: !3162)
!3177 = !DILocation(line: 199, column: 11, scope: !3162)
!3178 = !DILocation(line: 199, column: 9, scope: !3162)
!3179 = !DILocation(line: 200, column: 42, scope: !3162)
!3180 = !DILocation(line: 200, column: 5, scope: !3162)
!3181 = !DILocation(line: 202, column: 11, scope: !3162)
!3182 = !DILocation(line: 202, column: 9, scope: !3162)
!3183 = !DILocation(line: 203, column: 11, scope: !3162)
!3184 = !DILocation(line: 203, column: 15, scope: !3162)
!3185 = !DILocation(line: 203, column: 9, scope: !3162)
!3186 = !DILocation(line: 204, column: 11, scope: !3162)
!3187 = !DILocation(line: 204, column: 15, scope: !3162)
!3188 = !DILocation(line: 204, column: 9, scope: !3162)
!3189 = !DILocation(line: 205, column: 11, scope: !3162)
!3190 = !DILocation(line: 205, column: 9, scope: !3162)
!3191 = !DILocation(line: 206, column: 42, scope: !3162)
!3192 = !DILocation(line: 206, column: 5, scope: !3162)
!3193 = !DILocation(line: 209, column: 1, scope: !3162)
!3194 = distinct !DISubprogram(name: "cmnCpuClkConfigureToXtal", scope: !371, file: !371, line: 216, type: !75, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !3195)
!3195 = !{!3196, !3197}
!3196 = !DILocalVariable(name: "reg", scope: !3194, file: !371, line: 218, type: !215)
!3197 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !3194, file: !371, line: 219, type: !375)
!3198 = !DILocation(line: 218, column: 5, scope: !3194)
!3199 = !DILocation(line: 218, column: 23, scope: !3194)
!3200 = !DILocation(line: 0, scope: !3194)
!3201 = !DILocation(line: 222, column: 11, scope: !3194)
!3202 = !DILocation(line: 222, column: 9, scope: !3194)
!3203 = !DILocation(line: 223, column: 11, scope: !3194)
!3204 = !DILocation(line: 223, column: 15, scope: !3194)
!3205 = !DILocation(line: 223, column: 9, scope: !3194)
!3206 = !DILocation(line: 224, column: 11, scope: !3194)
!3207 = !DILocation(line: 224, column: 9, scope: !3194)
!3208 = !DILocation(line: 225, column: 39, scope: !3194)
!3209 = !DILocation(line: 225, column: 5, scope: !3194)
!3210 = !DILocation(line: 228, column: 11, scope: !3194)
!3211 = !DILocation(line: 228, column: 9, scope: !3194)
!3212 = !DILocation(line: 229, column: 11, scope: !3194)
!3213 = !DILocation(line: 229, column: 15, scope: !3194)
!3214 = !DILocation(line: 229, column: 9, scope: !3194)
!3215 = !DILocation(line: 230, column: 11, scope: !3194)
!3216 = !DILocation(line: 230, column: 9, scope: !3194)
!3217 = !DILocation(line: 231, column: 39, scope: !3194)
!3218 = !DILocation(line: 231, column: 5, scope: !3194)
!3219 = !DILocation(line: 233, column: 5, scope: !3194)
!3220 = !DILocation(line: 233, column: 12, scope: !3194)
!3221 = !DILocation(line: 233, column: 19, scope: !3194)
!3222 = !DILocation(line: 233, column: 16, scope: !3194)
!3223 = distinct !{!3223, !3219, !3224}
!3224 = !DILocation(line: 233, column: 52, scope: !3194)
!3225 = !DILocation(line: 235, column: 21, scope: !3194)
!3226 = !DILocation(line: 235, column: 19, scope: !3194)
!3227 = !DILocation(line: 236, column: 5, scope: !3194)
!3228 = !DILocation(line: 237, column: 17, scope: !3194)
!3229 = !DILocation(line: 237, column: 33, scope: !3194)
!3230 = !DILocation(line: 237, column: 5, scope: !3194)
!3231 = !DILocation(line: 239, column: 1, scope: !3194)
!3232 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo192M", scope: !371, file: !371, line: 246, type: !75, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !3233)
!3233 = !{!3234, !3235}
!3234 = !DILocalVariable(name: "reg", scope: !3232, file: !371, line: 248, type: !215)
!3235 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !3232, file: !371, line: 249, type: !375)
!3236 = !DILocation(line: 248, column: 5, scope: !3232)
!3237 = !DILocation(line: 248, column: 23, scope: !3232)
!3238 = !DILocation(line: 0, scope: !3232)
!3239 = !DILocation(line: 252, column: 5, scope: !3232)
!3240 = !DILocation(line: 255, column: 11, scope: !3232)
!3241 = !DILocation(line: 255, column: 9, scope: !3232)
!3242 = !DILocation(line: 256, column: 11, scope: !3232)
!3243 = !DILocation(line: 256, column: 15, scope: !3232)
!3244 = !DILocation(line: 256, column: 9, scope: !3232)
!3245 = !DILocation(line: 257, column: 11, scope: !3232)
!3246 = !DILocation(line: 257, column: 15, scope: !3232)
!3247 = !DILocation(line: 257, column: 9, scope: !3232)
!3248 = !DILocation(line: 258, column: 39, scope: !3232)
!3249 = !DILocation(line: 258, column: 5, scope: !3232)
!3250 = !DILocation(line: 260, column: 5, scope: !3232)
!3251 = !DILocation(line: 260, column: 12, scope: !3232)
!3252 = !DILocation(line: 260, column: 19, scope: !3232)
!3253 = !DILocation(line: 260, column: 16, scope: !3232)
!3254 = distinct !{!3254, !3250, !3255}
!3255 = !DILocation(line: 260, column: 52, scope: !3232)
!3256 = !DILocation(line: 263, column: 11, scope: !3232)
!3257 = !DILocation(line: 263, column: 9, scope: !3232)
!3258 = !DILocation(line: 264, column: 11, scope: !3232)
!3259 = !DILocation(line: 264, column: 15, scope: !3232)
!3260 = !DILocation(line: 264, column: 9, scope: !3232)
!3261 = !DILocation(line: 265, column: 11, scope: !3232)
!3262 = !DILocation(line: 265, column: 15, scope: !3232)
!3263 = !DILocation(line: 265, column: 9, scope: !3232)
!3264 = !DILocation(line: 266, column: 39, scope: !3232)
!3265 = !DILocation(line: 266, column: 5, scope: !3232)
!3266 = !DILocation(line: 269, column: 11, scope: !3232)
!3267 = !DILocation(line: 269, column: 9, scope: !3232)
!3268 = !DILocation(line: 270, column: 11, scope: !3232)
!3269 = !DILocation(line: 270, column: 15, scope: !3232)
!3270 = !DILocation(line: 270, column: 9, scope: !3232)
!3271 = !DILocation(line: 271, column: 11, scope: !3232)
!3272 = !DILocation(line: 271, column: 15, scope: !3232)
!3273 = !DILocation(line: 271, column: 9, scope: !3232)
!3274 = !DILocation(line: 272, column: 39, scope: !3232)
!3275 = !DILocation(line: 272, column: 5, scope: !3232)
!3276 = !DILocation(line: 273, column: 19, scope: !3232)
!3277 = !DILocation(line: 274, column: 5, scope: !3232)
!3278 = !DILocation(line: 275, column: 17, scope: !3232)
!3279 = !DILocation(line: 275, column: 33, scope: !3232)
!3280 = !DILocation(line: 275, column: 5, scope: !3232)
!3281 = !DILocation(line: 277, column: 1, scope: !3232)
!3282 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo160M", scope: !371, file: !371, line: 284, type: !75, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !3283)
!3283 = !{!3284, !3285}
!3284 = !DILocalVariable(name: "reg", scope: !3282, file: !371, line: 286, type: !215)
!3285 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !3282, file: !371, line: 287, type: !375)
!3286 = !DILocation(line: 286, column: 5, scope: !3282)
!3287 = !DILocation(line: 286, column: 23, scope: !3282)
!3288 = !DILocation(line: 0, scope: !3282)
!3289 = !DILocation(line: 290, column: 5, scope: !3282)
!3290 = !DILocation(line: 293, column: 11, scope: !3282)
!3291 = !DILocation(line: 293, column: 9, scope: !3282)
!3292 = !DILocation(line: 294, column: 11, scope: !3282)
!3293 = !DILocation(line: 294, column: 15, scope: !3282)
!3294 = !DILocation(line: 294, column: 9, scope: !3282)
!3295 = !DILocation(line: 295, column: 11, scope: !3282)
!3296 = !DILocation(line: 295, column: 15, scope: !3282)
!3297 = !DILocation(line: 295, column: 9, scope: !3282)
!3298 = !DILocation(line: 296, column: 39, scope: !3282)
!3299 = !DILocation(line: 296, column: 5, scope: !3282)
!3300 = !DILocation(line: 298, column: 5, scope: !3282)
!3301 = !DILocation(line: 298, column: 12, scope: !3282)
!3302 = !DILocation(line: 298, column: 19, scope: !3282)
!3303 = !DILocation(line: 298, column: 16, scope: !3282)
!3304 = distinct !{!3304, !3300, !3305}
!3305 = !DILocation(line: 298, column: 52, scope: !3282)
!3306 = !DILocation(line: 301, column: 11, scope: !3282)
!3307 = !DILocation(line: 301, column: 9, scope: !3282)
!3308 = !DILocation(line: 302, column: 11, scope: !3282)
!3309 = !DILocation(line: 302, column: 15, scope: !3282)
!3310 = !DILocation(line: 302, column: 9, scope: !3282)
!3311 = !DILocation(line: 303, column: 11, scope: !3282)
!3312 = !DILocation(line: 303, column: 15, scope: !3282)
!3313 = !DILocation(line: 303, column: 9, scope: !3282)
!3314 = !DILocation(line: 304, column: 39, scope: !3282)
!3315 = !DILocation(line: 304, column: 5, scope: !3282)
!3316 = !DILocation(line: 307, column: 11, scope: !3282)
!3317 = !DILocation(line: 307, column: 9, scope: !3282)
!3318 = !DILocation(line: 308, column: 11, scope: !3282)
!3319 = !DILocation(line: 308, column: 15, scope: !3282)
!3320 = !DILocation(line: 308, column: 9, scope: !3282)
!3321 = !DILocation(line: 309, column: 11, scope: !3282)
!3322 = !DILocation(line: 309, column: 15, scope: !3282)
!3323 = !DILocation(line: 309, column: 9, scope: !3282)
!3324 = !DILocation(line: 310, column: 39, scope: !3282)
!3325 = !DILocation(line: 310, column: 5, scope: !3282)
!3326 = !DILocation(line: 311, column: 19, scope: !3282)
!3327 = !DILocation(line: 312, column: 5, scope: !3282)
!3328 = !DILocation(line: 313, column: 17, scope: !3282)
!3329 = !DILocation(line: 313, column: 33, scope: !3282)
!3330 = !DILocation(line: 313, column: 5, scope: !3282)
!3331 = !DILocation(line: 315, column: 1, scope: !3282)
!3332 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo64M", scope: !371, file: !371, line: 323, type: !75, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !3333)
!3333 = !{!3334, !3335}
!3334 = !DILocalVariable(name: "reg", scope: !3332, file: !371, line: 325, type: !215)
!3335 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !3332, file: !371, line: 326, type: !375)
!3336 = !DILocation(line: 325, column: 5, scope: !3332)
!3337 = !DILocation(line: 325, column: 23, scope: !3332)
!3338 = !DILocation(line: 0, scope: !3332)
!3339 = !DILocation(line: 329, column: 5, scope: !3332)
!3340 = !DILocation(line: 332, column: 11, scope: !3332)
!3341 = !DILocation(line: 332, column: 9, scope: !3332)
!3342 = !DILocation(line: 333, column: 11, scope: !3332)
!3343 = !DILocation(line: 333, column: 15, scope: !3332)
!3344 = !DILocation(line: 333, column: 9, scope: !3332)
!3345 = !DILocation(line: 334, column: 11, scope: !3332)
!3346 = !DILocation(line: 334, column: 9, scope: !3332)
!3347 = !DILocation(line: 335, column: 39, scope: !3332)
!3348 = !DILocation(line: 335, column: 5, scope: !3332)
!3349 = !DILocation(line: 337, column: 5, scope: !3332)
!3350 = !DILocation(line: 337, column: 12, scope: !3332)
!3351 = !DILocation(line: 337, column: 19, scope: !3332)
!3352 = !DILocation(line: 337, column: 16, scope: !3332)
!3353 = distinct !{!3353, !3349, !3354}
!3354 = !DILocation(line: 337, column: 52, scope: !3332)
!3355 = !DILocation(line: 340, column: 11, scope: !3332)
!3356 = !DILocation(line: 340, column: 9, scope: !3332)
!3357 = !DILocation(line: 341, column: 11, scope: !3332)
!3358 = !DILocation(line: 341, column: 15, scope: !3332)
!3359 = !DILocation(line: 341, column: 9, scope: !3332)
!3360 = !DILocation(line: 342, column: 11, scope: !3332)
!3361 = !DILocation(line: 342, column: 15, scope: !3332)
!3362 = !DILocation(line: 342, column: 9, scope: !3332)
!3363 = !DILocation(line: 343, column: 39, scope: !3332)
!3364 = !DILocation(line: 343, column: 5, scope: !3332)
!3365 = !DILocation(line: 344, column: 19, scope: !3332)
!3366 = !DILocation(line: 345, column: 5, scope: !3332)
!3367 = !DILocation(line: 346, column: 17, scope: !3332)
!3368 = !DILocation(line: 346, column: 33, scope: !3332)
!3369 = !DILocation(line: 346, column: 5, scope: !3332)
!3370 = !DILocation(line: 348, column: 1, scope: !3332)
!3371 = distinct !DISubprogram(name: "cmnSerialFlashClkConfToXtal", scope: !371, file: !371, line: 353, type: !75, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !3372)
!3372 = !{!3373, !3374}
!3373 = !DILocalVariable(name: "reg", scope: !3371, file: !371, line: 355, type: !79)
!3374 = !DILocalVariable(name: "pTopCfgHclk", scope: !3371, file: !371, line: 356, type: !376)
!3375 = !DILocation(line: 355, column: 5, scope: !3371)
!3376 = !DILocation(line: 355, column: 21, scope: !3371)
!3377 = !DILocation(line: 0, scope: !3371)
!3378 = !DILocation(line: 358, column: 11, scope: !3371)
!3379 = !DILocation(line: 358, column: 9, scope: !3371)
!3380 = !DILocation(line: 359, column: 11, scope: !3371)
!3381 = !DILocation(line: 359, column: 15, scope: !3371)
!3382 = !DILocation(line: 359, column: 9, scope: !3371)
!3383 = !DILocation(line: 360, column: 11, scope: !3371)
!3384 = !DILocation(line: 360, column: 9, scope: !3371)
!3385 = !DILocation(line: 361, column: 37, scope: !3371)
!3386 = !DILocation(line: 361, column: 5, scope: !3371)
!3387 = !DILocation(line: 362, column: 1, scope: !3371)
!3388 = distinct !DISubprogram(name: "getc", scope: !383, file: !383, line: 68, type: !3389, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3391)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!13}
!3391 = !{!3392}
!3392 = !DILocalVariable(name: "rc", scope: !3388, file: !383, line: 71, type: !13)
!3393 = !DILocation(line: 71, column: 14, scope: !3388)
!3394 = !DILocation(line: 0, scope: !3388)
!3395 = !DILocation(line: 72, column: 5, scope: !3388)
!3396 = distinct !DISubprogram(name: "getc_nowait", scope: !383, file: !383, line: 80, type: !3389, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3397)
!3397 = !{!3398}
!3398 = !DILocalVariable(name: "c", scope: !3396, file: !383, line: 82, type: !674)
!3399 = !DILocation(line: 84, column: 9, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3396, file: !383, line: 84, column: 9)
!3401 = !DILocation(line: 84, column: 40, scope: !3400)
!3402 = !DILocation(line: 84, column: 9, scope: !3396)
!3403 = !DILocation(line: 85, column: 13, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3400, file: !383, line: 84, column: 47)
!3405 = !DILocation(line: 86, column: 16, scope: !3404)
!3406 = !DILocation(line: 0, scope: !3396)
!3407 = !DILocation(line: 86, column: 9, scope: !3404)
!3408 = !DILocation(line: 0, scope: !3400)
!3409 = !DILocation(line: 90, column: 1, scope: !3396)
!3410 = distinct !DISubprogram(name: "uart_output_char", scope: !383, file: !383, line: 93, type: !3411, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3414)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{null, !3413, !238}
!3413 = !DIDerivedType(tag: DW_TAG_typedef, name: "UART_PORT", file: !386, line: 75, baseType: !385)
!3414 = !{!3415, !3416, !3417}
!3415 = !DILocalVariable(name: "port_no", arg: 1, scope: !3410, file: !383, line: 93, type: !3413)
!3416 = !DILocalVariable(name: "c", arg: 2, scope: !3410, file: !383, line: 93, type: !238)
!3417 = !DILocalVariable(name: "base", scope: !3410, file: !383, line: 95, type: !7)
!3418 = !DILocation(line: 0, scope: !3410)
!3419 = !DILocation(line: 95, column: 25, scope: !3410)
!3420 = !DILocation(line: 97, column: 5, scope: !3410)
!3421 = !DILocation(line: 97, column: 14, scope: !3410)
!3422 = !DILocation(line: 97, column: 42, scope: !3410)
!3423 = !DILocation(line: 97, column: 12, scope: !3410)
!3424 = distinct !{!3424, !3420, !3425}
!3425 = !DILocation(line: 98, column: 9, scope: !3410)
!3426 = !DILocation(line: 99, column: 35, scope: !3410)
!3427 = !DILocation(line: 99, column: 5, scope: !3410)
!3428 = !DILocation(line: 99, column: 33, scope: !3410)
!3429 = !DILocation(line: 102, column: 1, scope: !3410)
!3430 = distinct !DISubprogram(name: "uart_input_char", scope: !383, file: !383, line: 106, type: !3431, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3433)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!236, !3413}
!3433 = !{!3434, !3435, !3436}
!3434 = !DILocalVariable(name: "port_no", arg: 1, scope: !3430, file: !383, line: 106, type: !3413)
!3435 = !DILocalVariable(name: "base", scope: !3430, file: !383, line: 108, type: !7)
!3436 = !DILocalVariable(name: "c", scope: !3430, file: !383, line: 109, type: !674)
!3437 = !DILocation(line: 0, scope: !3430)
!3438 = !DILocation(line: 108, column: 25, scope: !3430)
!3439 = !DILocation(line: 111, column: 5, scope: !3430)
!3440 = !DILocation(line: 111, column: 14, scope: !3430)
!3441 = !DILocation(line: 111, column: 42, scope: !3430)
!3442 = !DILocation(line: 111, column: 12, scope: !3430)
!3443 = distinct !{!3443, !3439, !3444}
!3444 = !DILocation(line: 112, column: 9, scope: !3430)
!3445 = !DILocation(line: 114, column: 9, scope: !3430)
!3446 = !DILocation(line: 116, column: 5, scope: !3430)
!3447 = distinct !DISubprogram(name: "uart_input_char_unblocking", scope: !383, file: !383, line: 120, type: !3448, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3450)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!204, !3413}
!3450 = !{!3451, !3452, !3453}
!3451 = !DILocalVariable(name: "port_no", arg: 1, scope: !3447, file: !383, line: 120, type: !3413)
!3452 = !DILocalVariable(name: "base", scope: !3447, file: !383, line: 122, type: !7)
!3453 = !DILocalVariable(name: "c", scope: !3447, file: !383, line: 123, type: !674)
!3454 = !DILocation(line: 0, scope: !3447)
!3455 = !DILocation(line: 122, column: 25, scope: !3447)
!3456 = !DILocation(line: 125, column: 9, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3447, file: !383, line: 125, column: 9)
!3458 = !DILocation(line: 125, column: 37, scope: !3457)
!3459 = !DILocation(line: 125, column: 9, scope: !3447)
!3460 = !DILocation(line: 126, column: 13, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3457, file: !383, line: 125, column: 44)
!3462 = !DILocation(line: 127, column: 16, scope: !3461)
!3463 = !DILocation(line: 127, column: 9, scope: !3461)
!3464 = !DILocation(line: 0, scope: !3457)
!3465 = !DILocation(line: 131, column: 1, scope: !3447)
!3466 = distinct !DISubprogram(name: "halUART_HWInit", scope: !383, file: !383, line: 136, type: !3467, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3469)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{null, !3413}
!3469 = !{!3470}
!3470 = !DILocalVariable(name: "u_port", arg: 1, scope: !3466, file: !383, line: 136, type: !3413)
!3471 = !DILocation(line: 0, scope: !3466)
!3472 = !DILocation(line: 139, column: 5, scope: !3466)
!3473 = !DILocation(line: 140, column: 9, scope: !3466)
!3474 = !DILocation(line: 153, column: 5, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !3476, file: !383, line: 147, column: 38)
!3476 = distinct !DILexicalBlock(scope: !3477, file: !383, line: 147, column: 16)
!3477 = distinct !DILexicalBlock(scope: !3466, file: !383, line: 140, column: 9)
!3478 = !DILocation(line: 0, scope: !3477)
!3479 = !DILocation(line: 155, column: 1, scope: !3466)
!3480 = distinct !DISubprogram(name: "halUART_SetFormat", scope: !383, file: !383, line: 158, type: !3481, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3485)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{null, !3413, !204, !3483, !3483, !3483}
!3483 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !205, line: 36, baseType: !3484)
!3484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !207, line: 57, baseType: !412)
!3485 = !{!3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3501, !3502}
!3486 = !DILocalVariable(name: "u_port", arg: 1, scope: !3480, file: !383, line: 158, type: !3413)
!3487 = !DILocalVariable(name: "baudrate", arg: 2, scope: !3480, file: !383, line: 158, type: !204)
!3488 = !DILocalVariable(name: "databit", arg: 3, scope: !3480, file: !383, line: 158, type: !3483)
!3489 = !DILocalVariable(name: "parity", arg: 4, scope: !3480, file: !383, line: 158, type: !3483)
!3490 = !DILocalVariable(name: "stopbit", arg: 5, scope: !3480, file: !383, line: 158, type: !3483)
!3491 = !DILocalVariable(name: "control_word", scope: !3480, file: !383, line: 160, type: !3483)
!3492 = !DILocalVariable(name: "UART_BASE", scope: !3480, file: !383, line: 161, type: !204)
!3493 = !DILocalVariable(name: "data", scope: !3480, file: !383, line: 162, type: !204)
!3494 = !DILocalVariable(name: "uart_lcr", scope: !3480, file: !383, line: 162, type: !204)
!3495 = !DILocalVariable(name: "high_speed_div", scope: !3480, file: !383, line: 162, type: !204)
!3496 = !DILocalVariable(name: "sample_count", scope: !3480, file: !383, line: 162, type: !204)
!3497 = !DILocalVariable(name: "sample_point", scope: !3480, file: !383, line: 162, type: !204)
!3498 = !DILocalVariable(name: "fraction", scope: !3480, file: !383, line: 162, type: !204)
!3499 = !DILocalVariable(name: "fraction_L_mapping", scope: !3480, file: !383, line: 163, type: !3500)
!3500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3483, size: 176, elements: !1061)
!3501 = !DILocalVariable(name: "fraction_M_mapping", scope: !3480, file: !383, line: 164, type: !3500)
!3502 = !DILocalVariable(name: "status", scope: !3480, file: !383, line: 165, type: !285)
!3503 = !DILocation(line: 0, scope: !3480)
!3504 = !DILocation(line: 163, column: 15, scope: !3480)
!3505 = !DILocation(line: 164, column: 15, scope: !3480)
!3506 = !DILocation(line: 166, column: 20, scope: !3480)
!3507 = !DILocation(line: 166, column: 18, scope: !3480)
!3508 = !DILocation(line: 168, column: 9, scope: !3480)
!3509 = !DILocation(line: 176, column: 5, scope: !3480)
!3510 = !DILocation(line: 176, column: 44, scope: !3480)
!3511 = !DILocation(line: 177, column: 16, scope: !3480)
!3512 = !DILocation(line: 178, column: 50, scope: !3480)
!3513 = !DILocation(line: 178, column: 38, scope: !3480)
!3514 = !DILocation(line: 179, column: 12, scope: !3480)
!3515 = !DILocation(line: 179, column: 25, scope: !3480)
!3516 = !DILocation(line: 180, column: 28, scope: !3480)
!3517 = !DILocation(line: 180, column: 34, scope: !3480)
!3518 = !DILocation(line: 182, column: 29, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3480, file: !383, line: 181, column: 5)
!3520 = !DILocation(line: 182, column: 46, scope: !3519)
!3521 = !DILocation(line: 183, column: 26, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3519, file: !383, line: 183, column: 13)
!3523 = !DILocation(line: 183, column: 13, scope: !3519)
!3524 = !DILocation(line: 192, column: 30, scope: !3480)
!3525 = !DILocation(line: 192, column: 35, scope: !3480)
!3526 = !DILocation(line: 192, column: 46, scope: !3480)
!3527 = !DILocation(line: 192, column: 74, scope: !3480)
!3528 = !DILocation(line: 192, column: 53, scope: !3480)
!3529 = !DILocation(line: 192, column: 80, scope: !3480)
!3530 = !DILocation(line: 193, column: 56, scope: !3480)
!3531 = !DILocation(line: 193, column: 5, scope: !3480)
!3532 = !DILocation(line: 193, column: 38, scope: !3480)
!3533 = !DILocation(line: 194, column: 57, scope: !3480)
!3534 = !DILocation(line: 194, column: 63, scope: !3480)
!3535 = !DILocation(line: 194, column: 5, scope: !3480)
!3536 = !DILocation(line: 194, column: 38, scope: !3480)
!3537 = !DILocation(line: 195, column: 5, scope: !3480)
!3538 = !DILocation(line: 195, column: 45, scope: !3480)
!3539 = !DILocation(line: 196, column: 5, scope: !3480)
!3540 = !DILocation(line: 196, column: 47, scope: !3480)
!3541 = !DILocation(line: 197, column: 46, scope: !3480)
!3542 = !DILocation(line: 197, column: 5, scope: !3480)
!3543 = !DILocation(line: 197, column: 44, scope: !3480)
!3544 = !DILocation(line: 198, column: 46, scope: !3480)
!3545 = !DILocation(line: 198, column: 5, scope: !3480)
!3546 = !DILocation(line: 198, column: 44, scope: !3480)
!3547 = !DILocation(line: 199, column: 38, scope: !3480)
!3548 = !DILocation(line: 200, column: 5, scope: !3480)
!3549 = !DILocation(line: 200, column: 38, scope: !3480)
!3550 = !DILocation(line: 202, column: 20, scope: !3480)
!3551 = !DILocation(line: 203, column: 18, scope: !3480)
!3552 = !DILocation(line: 205, column: 18, scope: !3480)
!3553 = !DILocation(line: 207, column: 18, scope: !3480)
!3554 = !DILocation(line: 208, column: 18, scope: !3480)
!3555 = !DILocation(line: 209, column: 5, scope: !3480)
!3556 = !DILocation(line: 213, column: 1, scope: !3480)
!3557 = distinct !DISubprogram(name: "halUART_Get_VFIFO_Length", scope: !383, file: !383, line: 215, type: !3558, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3561)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{null, !3413, !285, !3560}
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 32)
!3561 = !{!3562, !3563, !3564}
!3562 = !DILocalVariable(name: "u_port", arg: 1, scope: !3557, file: !383, line: 215, type: !3413)
!3563 = !DILocalVariable(name: "is_rx", arg: 2, scope: !3557, file: !383, line: 215, type: !285)
!3564 = !DILocalVariable(name: "length", arg: 3, scope: !3557, file: !383, line: 215, type: !3560)
!3565 = !DILocation(line: 0, scope: !3557)
!3566 = !DILocation(line: 217, column: 16, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3557, file: !383, line: 217, column: 9)
!3568 = !DILocation(line: 0, scope: !3567)
!3569 = !DILocation(line: 217, column: 9, scope: !3557)
!3570 = !DILocation(line: 218, column: 13, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3567, file: !383, line: 217, column: 31)
!3572 = !DILocation(line: 219, column: 23, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3574, file: !383, line: 218, column: 20)
!3574 = distinct !DILexicalBlock(scope: !3571, file: !383, line: 218, column: 13)
!3575 = !DILocation(line: 220, column: 9, scope: !3573)
!3576 = !DILocation(line: 221, column: 23, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3574, file: !383, line: 220, column: 16)
!3578 = !DILocation(line: 221, column: 21, scope: !3577)
!3579 = !DILocation(line: 222, column: 24, scope: !3577)
!3580 = !DILocation(line: 222, column: 21, scope: !3577)
!3581 = !DILocation(line: 225, column: 13, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3567, file: !383, line: 224, column: 12)
!3583 = !DILocation(line: 226, column: 23, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !3585, file: !383, line: 225, column: 20)
!3585 = distinct !DILexicalBlock(scope: !3582, file: !383, line: 225, column: 13)
!3586 = !DILocation(line: 227, column: 9, scope: !3584)
!3587 = !DILocation(line: 228, column: 23, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3585, file: !383, line: 227, column: 16)
!3589 = !DILocation(line: 228, column: 21, scope: !3588)
!3590 = !DILocation(line: 229, column: 24, scope: !3588)
!3591 = !DILocation(line: 229, column: 21, scope: !3588)
!3592 = !DILocation(line: 233, column: 5, scope: !3557)
!3593 = distinct !DISubprogram(name: "halUART_Read_VFIFO_Data", scope: !383, file: !383, line: 236, type: !3594, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3596)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{null, !3413, !722, !204}
!3596 = !{!3597, !3598, !3599, !3600}
!3597 = !DILocalVariable(name: "u_port", arg: 1, scope: !3593, file: !383, line: 236, type: !3413)
!3598 = !DILocalVariable(name: "data", arg: 2, scope: !3593, file: !383, line: 236, type: !722)
!3599 = !DILocalVariable(name: "length", arg: 3, scope: !3593, file: !383, line: 236, type: !204)
!3600 = !DILocalVariable(name: "idx", scope: !3593, file: !383, line: 238, type: !80)
!3601 = !DILocation(line: 0, scope: !3593)
!3602 = !DILocation(line: 239, column: 23, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3604, file: !383, line: 239, column: 5)
!3604 = distinct !DILexicalBlock(scope: !3593, file: !383, line: 239, column: 5)
!3605 = !DILocation(line: 239, column: 5, scope: !3604)
!3606 = !DILocation(line: 240, column: 13, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3603, file: !383, line: 239, column: 40)
!3608 = !DILocation(line: 244, column: 9, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3610, file: !383, line: 242, column: 42)
!3610 = distinct !DILexicalBlock(scope: !3611, file: !383, line: 242, column: 20)
!3611 = distinct !DILexicalBlock(scope: !3607, file: !383, line: 240, column: 13)
!3612 = !DILocation(line: 0, scope: !3611)
!3613 = !DILocation(line: 239, column: 36, scope: !3603)
!3614 = distinct !{!3614, !3605, !3615}
!3615 = !DILocation(line: 246, column: 5, scope: !3604)
!3616 = !DILocation(line: 249, column: 1, scope: !3593)
!3617 = distinct !DISubprogram(name: "halUART_Write_VFIFO_Data", scope: !383, file: !383, line: 251, type: !3618, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3622)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{null, !3413, !3620, !204}
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 32)
!3621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!3622 = !{!3623, !3624, !3625, !3626}
!3623 = !DILocalVariable(name: "u_port", arg: 1, scope: !3617, file: !383, line: 251, type: !3413)
!3624 = !DILocalVariable(name: "data", arg: 2, scope: !3617, file: !383, line: 251, type: !3620)
!3625 = !DILocalVariable(name: "length", arg: 3, scope: !3617, file: !383, line: 251, type: !204)
!3626 = !DILocalVariable(name: "idx", scope: !3617, file: !383, line: 253, type: !80)
!3627 = !DILocation(line: 0, scope: !3617)
!3628 = !DILocation(line: 254, column: 23, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3630, file: !383, line: 254, column: 5)
!3630 = distinct !DILexicalBlock(scope: !3617, file: !383, line: 254, column: 5)
!3631 = !DILocation(line: 254, column: 5, scope: !3630)
!3632 = !DILocation(line: 255, column: 13, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3629, file: !383, line: 254, column: 40)
!3634 = !DILocation(line: 256, column: 61, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3636, file: !383, line: 255, column: 35)
!3636 = distinct !DILexicalBlock(scope: !3633, file: !383, line: 255, column: 13)
!3637 = !DILocation(line: 256, column: 59, scope: !3635)
!3638 = !DILocation(line: 257, column: 9, scope: !3635)
!3639 = !DILocation(line: 258, column: 61, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3641, file: !383, line: 257, column: 42)
!3641 = distinct !DILexicalBlock(scope: !3636, file: !383, line: 257, column: 20)
!3642 = !DILocation(line: 258, column: 59, scope: !3640)
!3643 = !DILocation(line: 259, column: 9, scope: !3640)
!3644 = !DILocation(line: 254, column: 36, scope: !3629)
!3645 = distinct !{!3645, !3631, !3646}
!3646 = !DILocation(line: 261, column: 5, scope: !3630)
!3647 = !DILocation(line: 264, column: 1, scope: !3617)
!3648 = distinct !DISubprogram(name: "halUART_Tx_VFIFO_Initialize", scope: !383, file: !383, line: 266, type: !3649, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3651)
!3649 = !DISubroutineType(types: !3650)
!3650 = !{null, !3413, !722, !204, !204}
!3651 = !{!3652, !3653, !3654, !3655}
!3652 = !DILocalVariable(name: "u_port", arg: 1, scope: !3648, file: !383, line: 266, type: !3413)
!3653 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !3648, file: !383, line: 266, type: !722)
!3654 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !3648, file: !383, line: 266, type: !204)
!3655 = !DILocalVariable(name: "threshold", arg: 4, scope: !3648, file: !383, line: 266, type: !204)
!3656 = !DILocation(line: 0, scope: !3648)
!3657 = !DILocation(line: 268, column: 9, scope: !3648)
!3658 = !DILocation(line: 274, column: 5, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3660, file: !383, line: 271, column: 38)
!3660 = distinct !DILexicalBlock(scope: !3661, file: !383, line: 271, column: 16)
!3661 = distinct !DILexicalBlock(scope: !3648, file: !383, line: 268, column: 9)
!3662 = !DILocation(line: 0, scope: !3661)
!3663 = !DILocation(line: 276, column: 1, scope: !3648)
!3664 = distinct !DISubprogram(name: "halUART_Rx_VFIFO_Initialize", scope: !383, file: !383, line: 278, type: !3665, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3667)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{null, !3413, !722, !204, !204, !204, !204}
!3667 = !{!3668, !3669, !3670, !3671, !3672, !3673}
!3668 = !DILocalVariable(name: "u_port", arg: 1, scope: !3664, file: !383, line: 278, type: !3413)
!3669 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !3664, file: !383, line: 278, type: !722)
!3670 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !3664, file: !383, line: 278, type: !204)
!3671 = !DILocalVariable(name: "alert_length", arg: 4, scope: !3664, file: !383, line: 278, type: !204)
!3672 = !DILocalVariable(name: "threshold", arg: 5, scope: !3664, file: !383, line: 278, type: !204)
!3673 = !DILocalVariable(name: "timeout", arg: 6, scope: !3664, file: !383, line: 278, type: !204)
!3674 = !DILocation(line: 0, scope: !3664)
!3675 = !DILocation(line: 280, column: 9, scope: !3664)
!3676 = !DILocation(line: 286, column: 5, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3678, file: !383, line: 283, column: 38)
!3678 = distinct !DILexicalBlock(scope: !3679, file: !383, line: 283, column: 16)
!3679 = distinct !DILexicalBlock(scope: !3664, file: !383, line: 280, column: 9)
!3680 = !DILocation(line: 0, scope: !3679)
!3681 = !DILocation(line: 288, column: 1, scope: !3664)
!3682 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_Callback", scope: !383, file: !383, line: 290, type: !3683, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3685)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{null, !3413, !681}
!3685 = !{!3686, !3687}
!3686 = !DILocalVariable(name: "u_port", arg: 1, scope: !3682, file: !383, line: 290, type: !3413)
!3687 = !DILocalVariable(name: "func", arg: 2, scope: !3682, file: !383, line: 290, type: !681)
!3688 = !DILocation(line: 0, scope: !3682)
!3689 = !DILocation(line: 292, column: 9, scope: !3682)
!3690 = !DILocation(line: 296, column: 5, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3692, file: !383, line: 294, column: 38)
!3692 = distinct !DILexicalBlock(scope: !3693, file: !383, line: 294, column: 16)
!3693 = distinct !DILexicalBlock(scope: !3682, file: !383, line: 292, column: 9)
!3694 = !DILocation(line: 0, scope: !3693)
!3695 = !DILocation(line: 298, column: 1, scope: !3682)
!3696 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_TO_Callback", scope: !383, file: !383, line: 300, type: !3683, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3697)
!3697 = !{!3698, !3699}
!3698 = !DILocalVariable(name: "u_port", arg: 1, scope: !3696, file: !383, line: 300, type: !3413)
!3699 = !DILocalVariable(name: "func", arg: 2, scope: !3696, file: !383, line: 300, type: !681)
!3700 = !DILocation(line: 0, scope: !3696)
!3701 = !DILocation(line: 302, column: 9, scope: !3696)
!3702 = !DILocation(line: 306, column: 5, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3704, file: !383, line: 304, column: 38)
!3704 = distinct !DILexicalBlock(scope: !3705, file: !383, line: 304, column: 16)
!3705 = distinct !DILexicalBlock(scope: !3696, file: !383, line: 302, column: 9)
!3706 = !DILocation(line: 0, scope: !3705)
!3707 = !DILocation(line: 308, column: 1, scope: !3696)
!3708 = distinct !DISubprogram(name: "uart_set_hardware_flowcontrol", scope: !383, file: !383, line: 310, type: !3467, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3709)
!3709 = !{!3710, !3711, !3712, !3713}
!3710 = !DILocalVariable(name: "u_port", arg: 1, scope: !3708, file: !383, line: 310, type: !3413)
!3711 = !DILocalVariable(name: "base", scope: !3708, file: !383, line: 312, type: !7)
!3712 = !DILocalVariable(name: "EFR", scope: !3708, file: !383, line: 313, type: !3483)
!3713 = !DILocalVariable(name: "LCR", scope: !3708, file: !383, line: 313, type: !3483)
!3714 = !DILocation(line: 0, scope: !3708)
!3715 = !DILocation(line: 312, column: 25, scope: !3708)
!3716 = !DILocation(line: 315, column: 11, scope: !3708)
!3717 = !DILocation(line: 317, column: 33, scope: !3708)
!3718 = !DILocation(line: 318, column: 11, scope: !3708)
!3719 = !DILocation(line: 320, column: 35, scope: !3708)
!3720 = !DILocation(line: 320, column: 33, scope: !3708)
!3721 = !DILocation(line: 322, column: 5, scope: !3708)
!3722 = !DILocation(line: 322, column: 39, scope: !3708)
!3723 = !DILocation(line: 324, column: 33, scope: !3708)
!3724 = !DILocation(line: 325, column: 5, scope: !3708)
!3725 = !DILocation(line: 325, column: 33, scope: !3708)
!3726 = !DILocation(line: 327, column: 35, scope: !3708)
!3727 = !DILocation(line: 327, column: 33, scope: !3708)
!3728 = !DILocation(line: 328, column: 1, scope: !3708)
!3729 = distinct !DISubprogram(name: "uart_set_software_flowcontrol", scope: !383, file: !383, line: 330, type: !3730, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3732)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{null, !3413, !236, !236, !236}
!3732 = !{!3733, !3734, !3735, !3736, !3737, !3738, !3739}
!3733 = !DILocalVariable(name: "u_port", arg: 1, scope: !3729, file: !383, line: 330, type: !3413)
!3734 = !DILocalVariable(name: "xon", arg: 2, scope: !3729, file: !383, line: 330, type: !236)
!3735 = !DILocalVariable(name: "xoff", arg: 3, scope: !3729, file: !383, line: 330, type: !236)
!3736 = !DILocalVariable(name: "escape_character", arg: 4, scope: !3729, file: !383, line: 330, type: !236)
!3737 = !DILocalVariable(name: "base", scope: !3729, file: !383, line: 332, type: !7)
!3738 = !DILocalVariable(name: "EFR", scope: !3729, file: !383, line: 333, type: !3483)
!3739 = !DILocalVariable(name: "LCR", scope: !3729, file: !383, line: 333, type: !3483)
!3740 = !DILocation(line: 0, scope: !3729)
!3741 = !DILocation(line: 332, column: 25, scope: !3729)
!3742 = !DILocation(line: 335, column: 11, scope: !3729)
!3743 = !DILocation(line: 337, column: 33, scope: !3729)
!3744 = !DILocation(line: 338, column: 36, scope: !3729)
!3745 = !DILocation(line: 338, column: 5, scope: !3729)
!3746 = !DILocation(line: 338, column: 34, scope: !3729)
!3747 = !DILocation(line: 339, column: 5, scope: !3729)
!3748 = !DILocation(line: 339, column: 34, scope: !3729)
!3749 = !DILocation(line: 340, column: 37, scope: !3729)
!3750 = !DILocation(line: 340, column: 5, scope: !3729)
!3751 = !DILocation(line: 340, column: 35, scope: !3729)
!3752 = !DILocation(line: 341, column: 5, scope: !3729)
!3753 = !DILocation(line: 341, column: 35, scope: !3729)
!3754 = !DILocation(line: 343, column: 11, scope: !3729)
!3755 = !DILocation(line: 345, column: 35, scope: !3729)
!3756 = !DILocation(line: 345, column: 33, scope: !3729)
!3757 = !DILocation(line: 347, column: 35, scope: !3729)
!3758 = !DILocation(line: 347, column: 33, scope: !3729)
!3759 = !DILocation(line: 349, column: 43, scope: !3729)
!3760 = !DILocation(line: 349, column: 5, scope: !3729)
!3761 = !DILocation(line: 349, column: 41, scope: !3729)
!3762 = !DILocation(line: 350, column: 5, scope: !3729)
!3763 = !DILocation(line: 350, column: 39, scope: !3729)
!3764 = !DILocation(line: 351, column: 1, scope: !3729)
!3765 = distinct !DISubprogram(name: "uart_disable_flowcontrol", scope: !383, file: !383, line: 353, type: !3467, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3766)
!3766 = !{!3767, !3768, !3769}
!3767 = !DILocalVariable(name: "u_port", arg: 1, scope: !3765, file: !383, line: 353, type: !3413)
!3768 = !DILocalVariable(name: "base", scope: !3765, file: !383, line: 355, type: !7)
!3769 = !DILocalVariable(name: "LCR", scope: !3765, file: !383, line: 356, type: !3483)
!3770 = !DILocation(line: 0, scope: !3765)
!3771 = !DILocation(line: 355, column: 25, scope: !3765)
!3772 = !DILocation(line: 358, column: 11, scope: !3765)
!3773 = !DILocation(line: 360, column: 33, scope: !3765)
!3774 = !DILocation(line: 362, column: 5, scope: !3765)
!3775 = !DILocation(line: 362, column: 33, scope: !3765)
!3776 = !DILocation(line: 364, column: 33, scope: !3765)
!3777 = !DILocation(line: 366, column: 35, scope: !3765)
!3778 = !DILocation(line: 366, column: 33, scope: !3765)
!3779 = !DILocation(line: 367, column: 1, scope: !3765)
!3780 = distinct !DISubprogram(name: "uart_reset_default_value", scope: !383, file: !383, line: 436, type: !3467, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3781)
!3781 = !{!3782, !3783}
!3782 = !DILocalVariable(name: "u_port", arg: 1, scope: !3780, file: !383, line: 436, type: !3413)
!3783 = !DILocalVariable(name: "base", scope: !3780, file: !383, line: 438, type: !7)
!3784 = !DILocation(line: 0, scope: !3780)
!3785 = !DILocation(line: 438, column: 25, scope: !3780)
!3786 = !DILocation(line: 440, column: 5, scope: !3780)
!3787 = !DILocation(line: 440, column: 33, scope: !3780)
!3788 = !DILocation(line: 441, column: 5, scope: !3780)
!3789 = !DILocation(line: 441, column: 33, scope: !3780)
!3790 = !DILocation(line: 442, column: 5, scope: !3780)
!3791 = !DILocation(line: 442, column: 34, scope: !3780)
!3792 = !DILocation(line: 443, column: 5, scope: !3780)
!3793 = !DILocation(line: 443, column: 35, scope: !3780)
!3794 = !DILocation(line: 445, column: 33, scope: !3780)
!3795 = !DILocation(line: 446, column: 5, scope: !3780)
!3796 = !DILocation(line: 446, column: 33, scope: !3780)
!3797 = !DILocation(line: 447, column: 5, scope: !3780)
!3798 = !DILocation(line: 447, column: 33, scope: !3780)
!3799 = !DILocation(line: 449, column: 33, scope: !3780)
!3800 = !DILocation(line: 450, column: 33, scope: !3780)
!3801 = !DILocation(line: 451, column: 33, scope: !3780)
!3802 = !DILocation(line: 453, column: 33, scope: !3780)
!3803 = !DILocation(line: 454, column: 33, scope: !3780)
!3804 = !DILocation(line: 455, column: 33, scope: !3780)
!3805 = !DILocation(line: 457, column: 33, scope: !3780)
!3806 = !DILocation(line: 458, column: 5, scope: !3780)
!3807 = !DILocation(line: 458, column: 33, scope: !3780)
!3808 = !DILocation(line: 459, column: 5, scope: !3780)
!3809 = !DILocation(line: 459, column: 39, scope: !3780)
!3810 = !DILocation(line: 460, column: 5, scope: !3780)
!3811 = !DILocation(line: 460, column: 40, scope: !3780)
!3812 = !DILocation(line: 461, column: 5, scope: !3780)
!3813 = !DILocation(line: 461, column: 42, scope: !3780)
!3814 = !DILocation(line: 462, column: 5, scope: !3780)
!3815 = !DILocation(line: 462, column: 42, scope: !3780)
!3816 = !DILocation(line: 463, column: 5, scope: !3780)
!3817 = !DILocation(line: 463, column: 35, scope: !3780)
!3818 = !DILocation(line: 464, column: 5, scope: !3780)
!3819 = !DILocation(line: 464, column: 41, scope: !3780)
!3820 = !DILocation(line: 465, column: 5, scope: !3780)
!3821 = !DILocation(line: 465, column: 39, scope: !3780)
!3822 = !DILocation(line: 466, column: 5, scope: !3780)
!3823 = !DILocation(line: 466, column: 38, scope: !3780)
!3824 = !DILocation(line: 467, column: 5, scope: !3780)
!3825 = !DILocation(line: 467, column: 42, scope: !3780)
!3826 = !DILocation(line: 468, column: 5, scope: !3780)
!3827 = !DILocation(line: 468, column: 45, scope: !3780)
!3828 = !DILocation(line: 469, column: 5, scope: !3780)
!3829 = !DILocation(line: 469, column: 39, scope: !3780)
!3830 = !DILocation(line: 470, column: 5, scope: !3780)
!3831 = !DILocation(line: 470, column: 39, scope: !3780)
!3832 = !DILocation(line: 471, column: 5, scope: !3780)
!3833 = !DILocation(line: 471, column: 42, scope: !3780)
!3834 = !DILocation(line: 472, column: 1, scope: !3780)
!3835 = distinct !DISubprogram(name: "uart_query_empty", scope: !383, file: !383, line: 474, type: !3467, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !3836)
!3836 = !{!3837, !3838}
!3837 = !DILocalVariable(name: "u_port", arg: 1, scope: !3835, file: !383, line: 474, type: !3413)
!3838 = !DILocalVariable(name: "base", scope: !3835, file: !383, line: 476, type: !7)
!3839 = !DILocation(line: 0, scope: !3835)
!3840 = !DILocation(line: 476, column: 25, scope: !3835)
!3841 = !DILocation(line: 478, column: 5, scope: !3835)
!3842 = !DILocation(line: 478, column: 14, scope: !3835)
!3843 = !DILocation(line: 478, column: 42, scope: !3835)
!3844 = !DILocation(line: 478, column: 12, scope: !3835)
!3845 = distinct !{!3845, !3841, !3846}
!3846 = !DILocation(line: 478, column: 50, scope: !3835)
!3847 = !DILocation(line: 479, column: 1, scope: !3835)
!3848 = distinct !DISubprogram(name: "log_hal_fatal_internal", scope: !1127, file: !1127, line: 64, type: !3849, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1126, retainedNodes: !3851)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{null, !885, !13, !885, null}
!3851 = !{!3852, !3853, !3854, !3855, !3864}
!3852 = !DILocalVariable(name: "func", arg: 1, scope: !3848, file: !1127, line: 64, type: !885)
!3853 = !DILocalVariable(name: "line", arg: 2, scope: !3848, file: !1127, line: 64, type: !13)
!3854 = !DILocalVariable(name: "message", arg: 3, scope: !3848, file: !1127, line: 64, type: !885)
!3855 = !DILocalVariable(name: "ap", scope: !3848, file: !1127, line: 66, type: !3856)
!3856 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3857, line: 46, baseType: !3858)
!3857 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/stdio.h", directory: "/home/mjshen/RTOSExploration")
!3858 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3859, line: 32, baseType: !3860)
!3859 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stdarg.h", directory: "")
!3860 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1127, baseType: !3861)
!3861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !3862)
!3862 = !{!3863}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !3861, file: !1127, line: 66, baseType: !464, size: 32)
!3864 = !DILocalVariable(name: "mask", scope: !3848, file: !1127, line: 68, type: !204)
!3865 = !DILocation(line: 0, scope: !3848)
!3866 = !DILocation(line: 66, column: 5, scope: !3848)
!3867 = !DILocation(line: 66, column: 13, scope: !3848)
!3868 = !DILocation(line: 68, column: 5, scope: !3848)
!3869 = !DILocation(line: 69, column: 5, scope: !3848)
!3870 = !DILocation(line: 71, column: 5, scope: !3848)
!3871 = !DILocation(line: 72, column: 5, scope: !3848)
!3872 = !DILocation(line: 73, column: 5, scope: !3848)
!3873 = !DILocation(line: 75, column: 37, scope: !3848)
!3874 = !DILocation(line: 75, column: 5, scope: !3848)
!3875 = !DILocation(line: 77, column: 1, scope: !3848)
!3876 = distinct !DISubprogram(name: "log_hal_error_internal", scope: !1127, file: !1127, line: 78, type: !3849, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1126, retainedNodes: !3877)
!3877 = !{!3878, !3879, !3880, !3881, !3882}
!3878 = !DILocalVariable(name: "func", arg: 1, scope: !3876, file: !1127, line: 78, type: !885)
!3879 = !DILocalVariable(name: "line", arg: 2, scope: !3876, file: !1127, line: 78, type: !13)
!3880 = !DILocalVariable(name: "message", arg: 3, scope: !3876, file: !1127, line: 78, type: !885)
!3881 = !DILocalVariable(name: "ap", scope: !3876, file: !1127, line: 80, type: !3856)
!3882 = !DILocalVariable(name: "mask", scope: !3876, file: !1127, line: 82, type: !204)
!3883 = !DILocation(line: 0, scope: !3876)
!3884 = !DILocation(line: 80, column: 5, scope: !3876)
!3885 = !DILocation(line: 80, column: 13, scope: !3876)
!3886 = !DILocation(line: 82, column: 5, scope: !3876)
!3887 = !DILocation(line: 83, column: 5, scope: !3876)
!3888 = !DILocation(line: 85, column: 5, scope: !3876)
!3889 = !DILocation(line: 86, column: 5, scope: !3876)
!3890 = !DILocation(line: 87, column: 5, scope: !3876)
!3891 = !DILocation(line: 89, column: 37, scope: !3876)
!3892 = !DILocation(line: 89, column: 5, scope: !3876)
!3893 = !DILocation(line: 91, column: 1, scope: !3876)
!3894 = distinct !DISubprogram(name: "log_hal_warning_internal", scope: !1127, file: !1127, line: 92, type: !3849, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1126, retainedNodes: !3895)
!3895 = !{!3896, !3897, !3898, !3899, !3900}
!3896 = !DILocalVariable(name: "func", arg: 1, scope: !3894, file: !1127, line: 92, type: !885)
!3897 = !DILocalVariable(name: "line", arg: 2, scope: !3894, file: !1127, line: 92, type: !13)
!3898 = !DILocalVariable(name: "message", arg: 3, scope: !3894, file: !1127, line: 92, type: !885)
!3899 = !DILocalVariable(name: "ap", scope: !3894, file: !1127, line: 94, type: !3856)
!3900 = !DILocalVariable(name: "mask", scope: !3894, file: !1127, line: 96, type: !204)
!3901 = !DILocation(line: 0, scope: !3894)
!3902 = !DILocation(line: 94, column: 5, scope: !3894)
!3903 = !DILocation(line: 94, column: 13, scope: !3894)
!3904 = !DILocation(line: 96, column: 5, scope: !3894)
!3905 = !DILocation(line: 97, column: 5, scope: !3894)
!3906 = !DILocation(line: 99, column: 5, scope: !3894)
!3907 = !DILocation(line: 100, column: 5, scope: !3894)
!3908 = !DILocation(line: 101, column: 5, scope: !3894)
!3909 = !DILocation(line: 103, column: 37, scope: !3894)
!3910 = !DILocation(line: 103, column: 5, scope: !3894)
!3911 = !DILocation(line: 105, column: 1, scope: !3894)
!3912 = distinct !DISubprogram(name: "log_hal_info_internal", scope: !1127, file: !1127, line: 106, type: !3849, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1126, retainedNodes: !3913)
!3913 = !{!3914, !3915, !3916, !3917, !3918}
!3914 = !DILocalVariable(name: "func", arg: 1, scope: !3912, file: !1127, line: 106, type: !885)
!3915 = !DILocalVariable(name: "line", arg: 2, scope: !3912, file: !1127, line: 106, type: !13)
!3916 = !DILocalVariable(name: "message", arg: 3, scope: !3912, file: !1127, line: 106, type: !885)
!3917 = !DILocalVariable(name: "ap", scope: !3912, file: !1127, line: 108, type: !3856)
!3918 = !DILocalVariable(name: "mask", scope: !3912, file: !1127, line: 110, type: !204)
!3919 = !DILocation(line: 0, scope: !3912)
!3920 = !DILocation(line: 108, column: 5, scope: !3912)
!3921 = !DILocation(line: 108, column: 13, scope: !3912)
!3922 = !DILocation(line: 110, column: 5, scope: !3912)
!3923 = !DILocation(line: 111, column: 5, scope: !3912)
!3924 = !DILocation(line: 113, column: 5, scope: !3912)
!3925 = !DILocation(line: 114, column: 5, scope: !3912)
!3926 = !DILocation(line: 115, column: 5, scope: !3912)
!3927 = !DILocation(line: 117, column: 37, scope: !3912)
!3928 = !DILocation(line: 117, column: 5, scope: !3912)
!3929 = !DILocation(line: 119, column: 1, scope: !3912)
!3930 = distinct !DISubprogram(name: "log_hal_dump_internal", scope: !1127, file: !1127, line: 121, type: !3931, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1126, retainedNodes: !3935)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{null, !885, !13, !885, !3933, !13, null}
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 32)
!3934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3935 = !{!3936, !3937, !3938, !3939, !3940}
!3936 = !DILocalVariable(name: "func", arg: 1, scope: !3930, file: !1127, line: 121, type: !885)
!3937 = !DILocalVariable(name: "line", arg: 2, scope: !3930, file: !1127, line: 121, type: !13)
!3938 = !DILocalVariable(name: "message", arg: 3, scope: !3930, file: !1127, line: 121, type: !885)
!3939 = !DILocalVariable(name: "data", arg: 4, scope: !3930, file: !1127, line: 121, type: !3933)
!3940 = !DILocalVariable(name: "length", arg: 5, scope: !3930, file: !1127, line: 121, type: !13)
!3941 = !DILocation(line: 0, scope: !3930)
!3942 = !DILocation(line: 123, column: 1, scope: !3930)
!3943 = distinct !DISubprogram(name: "hal_eint_mask", scope: !420, file: !420, line: 228, type: !3944, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !3947)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!3946, !497}
!3946 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_eint_status_t", file: !450, line: 209, baseType: !449)
!3947 = !{!3948, !3949}
!3948 = !DILocalVariable(name: "eint_number", arg: 1, scope: !3943, file: !420, line: 228, type: !497)
!3949 = !DILocalVariable(name: "gpio_pin", scope: !3943, file: !420, line: 230, type: !202)
!3950 = !DILocation(line: 0, scope: !3943)
!3951 = !DILocation(line: 230, column: 5, scope: !3943)
!3952 = !DILocation(line: 231, column: 14, scope: !3953)
!3953 = distinct !DILexicalBlock(scope: !3943, file: !420, line: 231, column: 9)
!3954 = !DILocation(line: 231, column: 11, scope: !3953)
!3955 = !DILocation(line: 231, column: 9, scope: !3943)
!3956 = !DILocation(line: 232, column: 9, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3953, file: !420, line: 231, column: 65)
!3958 = !DILocation(line: 233, column: 9, scope: !3957)
!3959 = !DILocation(line: 235, column: 19, scope: !3943)
!3960 = !DILocation(line: 235, column: 5, scope: !3943)
!3961 = !DILocation(line: 236, column: 5, scope: !3943)
!3962 = !DILocation(line: 236, column: 33, scope: !3943)
!3963 = !DILocation(line: 237, column: 5, scope: !3943)
!3964 = !DILocation(line: 238, column: 1, scope: !3943)
!3965 = distinct !DISubprogram(name: "hal_eint_convert_for_gpio", scope: !420, file: !420, line: 101, type: !3966, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !3969)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!285, !497, !3968}
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 32)
!3969 = !{!3970, !3971, !3972, !3973}
!3970 = !DILocalVariable(name: "eint_number", arg: 1, scope: !3965, file: !420, line: 101, type: !497)
!3971 = !DILocalVariable(name: "gpio_pin", arg: 2, scope: !3965, file: !420, line: 101, type: !3968)
!3972 = !DILocalVariable(name: "count", scope: !3965, file: !420, line: 103, type: !204)
!3973 = !DILocalVariable(name: "index", scope: !3965, file: !420, line: 104, type: !204)
!3974 = !DILocation(line: 0, scope: !3965)
!3975 = !DILocation(line: 105, column: 5, scope: !3976)
!3976 = distinct !DILexicalBlock(scope: !3965, file: !420, line: 105, column: 5)
!3977 = !DILocation(line: 106, column: 36, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3979, file: !420, line: 106, column: 13)
!3979 = distinct !DILexicalBlock(scope: !3980, file: !420, line: 105, column: 45)
!3980 = distinct !DILexicalBlock(scope: !3976, file: !420, line: 105, column: 5)
!3981 = !DILocation(line: 106, column: 48, scope: !3978)
!3982 = !DILocation(line: 106, column: 13, scope: !3979)
!3983 = !DILocation(line: 107, column: 48, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3978, file: !420, line: 106, column: 64)
!3985 = !DILocation(line: 107, column: 23, scope: !3984)
!3986 = !DILocation(line: 108, column: 13, scope: !3984)
!3987 = !DILocation(line: 105, column: 41, scope: !3980)
!3988 = !DILocation(line: 105, column: 27, scope: !3980)
!3989 = distinct !{!3989, !3975, !3990}
!3990 = !DILocation(line: 110, column: 5, scope: !3976)
!3991 = !DILocation(line: 112, column: 1, scope: !3965)
!3992 = distinct !DISubprogram(name: "hal_eint_unmask", scope: !420, file: !420, line: 240, type: !3944, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !3993)
!3993 = !{!3994, !3995}
!3994 = !DILocalVariable(name: "eint_number", arg: 1, scope: !3992, file: !420, line: 240, type: !497)
!3995 = !DILocalVariable(name: "gpio_pin", scope: !3992, file: !420, line: 242, type: !202)
!3996 = !DILocation(line: 0, scope: !3992)
!3997 = !DILocation(line: 242, column: 5, scope: !3992)
!3998 = !DILocation(line: 243, column: 14, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3992, file: !420, line: 243, column: 9)
!4000 = !DILocation(line: 243, column: 11, scope: !3999)
!4001 = !DILocation(line: 243, column: 9, scope: !3992)
!4002 = !DILocation(line: 244, column: 9, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !3999, file: !420, line: 243, column: 65)
!4004 = !DILocation(line: 245, column: 9, scope: !4003)
!4005 = !DILocation(line: 247, column: 22, scope: !3992)
!4006 = !DILocation(line: 247, column: 6, scope: !3992)
!4007 = !DILocation(line: 248, column: 6, scope: !3992)
!4008 = !DILocation(line: 248, column: 34, scope: !3992)
!4009 = !DILocation(line: 249, column: 6, scope: !3992)
!4010 = !DILocation(line: 250, column: 1, scope: !3992)
!4011 = distinct !DISubprogram(name: "hal_eint_init", scope: !420, file: !420, line: 253, type: !4012, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !4022)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{!3946, !497, !4014}
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 32)
!4015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4016)
!4016 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_eint_config_t", file: !450, line: 225, baseType: !4017)
!4017 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !450, line: 222, size: 64, elements: !4018)
!4018 = !{!4019, !4021}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_mode", scope: !4017, file: !450, line: 223, baseType: !4020, size: 32)
!4020 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_eint_trigger_mode_t", file: !450, line: 200, baseType: !456)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "debounce_time", scope: !4017, file: !450, line: 224, baseType: !204, size: 32, offset: 32)
!4022 = !{!4023, !4024, !4025, !4026, !4027}
!4023 = !DILocalVariable(name: "eint_number", arg: 1, scope: !4011, file: !420, line: 253, type: !497)
!4024 = !DILocalVariable(name: "eint_config", arg: 2, scope: !4011, file: !420, line: 253, type: !4014)
!4025 = !DILocalVariable(name: "gpio_pin", scope: !4011, file: !420, line: 255, type: !202)
!4026 = !DILocalVariable(name: "ret_status", scope: !4011, file: !420, line: 256, type: !3946)
!4027 = !DILocalVariable(name: "callback_context", scope: !4028, file: !420, line: 278, type: !4030)
!4028 = distinct !DILexicalBlock(scope: !4029, file: !420, line: 277, column: 10)
!4029 = distinct !DILexicalBlock(scope: !4011, file: !420, line: 266, column: 9)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 32)
!4031 = !DILocation(line: 0, scope: !4011)
!4032 = !DILocation(line: 255, column: 5, scope: !4011)
!4033 = !DILocation(line: 257, column: 14, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4011, file: !420, line: 257, column: 9)
!4035 = !DILocation(line: 257, column: 11, scope: !4034)
!4036 = !DILocation(line: 257, column: 9, scope: !4011)
!4037 = !DILocation(line: 258, column: 9, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4034, file: !420, line: 257, column: 65)
!4039 = !DILocation(line: 259, column: 9, scope: !4038)
!4040 = !DILocation(line: 261, column: 14, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !4011, file: !420, line: 261, column: 9)
!4042 = !DILocation(line: 261, column: 9, scope: !4011)
!4043 = !DILocation(line: 262, column: 9, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !4041, file: !420, line: 261, column: 30)
!4045 = !DILocation(line: 263, column: 9, scope: !4044)
!4046 = !DILocation(line: 266, column: 9, scope: !4029)
!4047 = !DILocation(line: 266, column: 50, scope: !4029)
!4048 = !DILocation(line: 0, scope: !4029)
!4049 = !DILocation(line: 266, column: 9, scope: !4011)
!4050 = !DILocation(line: 267, column: 23, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !4029, file: !420, line: 266, column: 59)
!4052 = !DILocation(line: 268, column: 25, scope: !4053)
!4053 = distinct !DILexicalBlock(scope: !4051, file: !420, line: 268, column: 14)
!4054 = !DILocation(line: 268, column: 14, scope: !4051)
!4055 = !DILocation(line: 272, column: 23, scope: !4051)
!4056 = !DILocation(line: 273, column: 25, scope: !4057)
!4057 = distinct !DILexicalBlock(scope: !4051, file: !420, line: 273, column: 14)
!4058 = !DILocation(line: 273, column: 14, scope: !4051)
!4059 = !DILocation(line: 278, column: 83, scope: !4028)
!4060 = !DILocation(line: 0, scope: !4028)
!4061 = !DILocation(line: 279, column: 17, scope: !4028)
!4062 = !DILocation(line: 279, column: 10, scope: !4028)
!4063 = !DILocation(line: 281, column: 23, scope: !4028)
!4064 = !DILocation(line: 282, column: 25, scope: !4065)
!4065 = distinct !DILexicalBlock(scope: !4028, file: !420, line: 282, column: 14)
!4066 = !DILocation(line: 282, column: 14, scope: !4028)
!4067 = !DILocation(line: 286, column: 23, scope: !4028)
!4068 = !DILocation(line: 287, column: 25, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !4028, file: !420, line: 287, column: 14)
!4070 = !DILocation(line: 292, column: 5, scope: !4011)
!4071 = !DILocation(line: 294, column: 1, scope: !4011)
!4072 = distinct !DISubprogram(name: "hal_eint_apply_config", scope: !420, file: !420, line: 158, type: !4073, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !4075)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{!3946, !202, !4014}
!4075 = !{!4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083}
!4076 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4072, file: !420, line: 158, type: !202)
!4077 = !DILocalVariable(name: "eint_config", arg: 2, scope: !4072, file: !420, line: 159, type: !4014)
!4078 = !DILocalVariable(name: "sample_count", scope: !4072, file: !420, line: 161, type: !204)
!4079 = !DILocalVariable(name: "ret_value", scope: !4072, file: !420, line: 162, type: !285)
!4080 = !DILocalVariable(name: "trigger_mode", scope: !4072, file: !420, line: 163, type: !2632)
!4081 = !DILocalVariable(name: "trigger_polarity", scope: !4072, file: !420, line: 164, type: !2634)
!4082 = !DILocalVariable(name: "sample_rate", scope: !4072, file: !420, line: 165, type: !465)
!4083 = !DILocalVariable(name: "dual_edge", scope: !4072, file: !420, line: 166, type: !2635)
!4084 = !DILocation(line: 0, scope: !4072)
!4085 = !DILocation(line: 161, column: 5, scope: !4072)
!4086 = !DILocation(line: 165, column: 5, scope: !4072)
!4087 = !DILocation(line: 169, column: 26, scope: !4072)
!4088 = !DILocation(line: 169, column: 5, scope: !4072)
!4089 = !DILocation(line: 200, column: 52, scope: !4072)
!4090 = !DILocation(line: 200, column: 5, scope: !4072)
!4091 = !DILocation(line: 203, column: 9, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4072, file: !420, line: 203, column: 9)
!4093 = !DILocation(line: 203, column: 22, scope: !4092)
!4094 = !DILocation(line: 0, scope: !4092)
!4095 = !DILocation(line: 203, column: 9, scope: !4072)
!4096 = !DILocation(line: 204, column: 21, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4092, file: !420, line: 203, column: 28)
!4098 = !DILocation(line: 212, column: 9, scope: !4097)
!4099 = !DILocation(line: 213, column: 5, scope: !4097)
!4100 = !DILocation(line: 220, column: 30, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4092, file: !420, line: 213, column: 12)
!4102 = !DILocation(line: 214, column: 21, scope: !4101)
!4103 = !DILocation(line: 224, column: 12, scope: !4072)
!4104 = !DILocation(line: 224, column: 5, scope: !4072)
!4105 = !DILocation(line: 225, column: 1, scope: !4072)
!4106 = distinct !DISubprogram(name: "get_index_from_gpio_pin", scope: !420, file: !420, line: 90, type: !4107, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !4109)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{!204, !202}
!4109 = !{!4110, !4111}
!4110 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4106, file: !420, line: 90, type: !202)
!4111 = !DILocalVariable(name: "index", scope: !4106, file: !420, line: 92, type: !204)
!4112 = !DILocation(line: 0, scope: !4106)
!4113 = !DILocation(line: 93, column: 5, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4106, file: !420, line: 93, column: 5)
!4115 = !DILocation(line: 94, column: 36, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !4117, file: !420, line: 94, column: 13)
!4117 = distinct !DILexicalBlock(scope: !4118, file: !420, line: 93, column: 58)
!4118 = distinct !DILexicalBlock(scope: !4114, file: !420, line: 93, column: 5)
!4119 = !DILocation(line: 94, column: 45, scope: !4116)
!4120 = !DILocation(line: 94, column: 13, scope: !4117)
!4121 = !DILocation(line: 93, column: 54, scope: !4118)
!4122 = !DILocation(line: 93, column: 27, scope: !4118)
!4123 = distinct !{!4123, !4113, !4124}
!4124 = !DILocation(line: 97, column: 5, scope: !4114)
!4125 = !DILocation(line: 99, column: 1, scope: !4106)
!4126 = distinct !DISubprogram(name: "hal_eint_calc_debounce_parameters", scope: !420, file: !420, line: 114, type: !4127, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !4130)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{null, !204, !4129, !3560}
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 32)
!4130 = !{!4131, !4132, !4133, !4134, !4135}
!4131 = !DILocalVariable(name: "debounce_time", arg: 1, scope: !4126, file: !420, line: 114, type: !204)
!4132 = !DILocalVariable(name: "sample_rate", arg: 2, scope: !4126, file: !420, line: 115, type: !4129)
!4133 = !DILocalVariable(name: "sample_count", arg: 3, scope: !4126, file: !420, line: 116, type: !3560)
!4134 = !DILocalVariable(name: "threshold", scope: !4126, file: !420, line: 124, type: !469)
!4135 = !DILocalVariable(name: "target_count", scope: !4126, file: !420, line: 125, type: !204)
!4136 = !DILocation(line: 0, scope: !4126)
!4137 = !DILocation(line: 126, column: 39, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !4126, file: !420, line: 126, column: 9)
!4139 = !DILocation(line: 126, column: 44, scope: !4138)
!4140 = !DILocation(line: 126, column: 9, scope: !4126)
!4141 = !DILocation(line: 127, column: 22, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4138, file: !420, line: 126, column: 58)
!4143 = !DILocation(line: 128, column: 5, scope: !4142)
!4144 = !DILocation(line: 128, column: 46, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4138, file: !420, line: 128, column: 16)
!4146 = !DILocation(line: 128, column: 51, scope: !4145)
!4147 = !DILocation(line: 128, column: 16, scope: !4138)
!4148 = !DILocation(line: 129, column: 22, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4145, file: !420, line: 128, column: 65)
!4150 = !DILocation(line: 130, column: 5, scope: !4149)
!4151 = !DILocation(line: 130, column: 46, scope: !4152)
!4152 = distinct !DILexicalBlock(scope: !4145, file: !420, line: 130, column: 16)
!4153 = !DILocation(line: 130, column: 51, scope: !4152)
!4154 = !DILocation(line: 130, column: 16, scope: !4145)
!4155 = !DILocation(line: 131, column: 22, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4152, file: !420, line: 130, column: 65)
!4157 = !DILocation(line: 132, column: 5, scope: !4156)
!4158 = !DILocation(line: 132, column: 51, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4152, file: !420, line: 132, column: 16)
!4160 = !DILocation(line: 132, column: 16, scope: !4152)
!4161 = !DILocation(line: 133, column: 22, scope: !4162)
!4162 = distinct !DILexicalBlock(scope: !4159, file: !420, line: 132, column: 65)
!4163 = !DILocation(line: 134, column: 5, scope: !4162)
!4164 = !DILocation(line: 134, column: 51, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4159, file: !420, line: 134, column: 16)
!4166 = !DILocation(line: 134, column: 16, scope: !4159)
!4167 = !DILocation(line: 134, column: 46, scope: !4165)
!4168 = !DILocation(line: 135, column: 22, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4165, file: !420, line: 134, column: 65)
!4170 = !DILocation(line: 136, column: 5, scope: !4169)
!4171 = !DILocation(line: 136, column: 51, scope: !4172)
!4172 = distinct !DILexicalBlock(scope: !4165, file: !420, line: 136, column: 16)
!4173 = !DILocation(line: 136, column: 16, scope: !4165)
!4174 = !DILocation(line: 136, column: 46, scope: !4172)
!4175 = !DILocation(line: 137, column: 22, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4172, file: !420, line: 136, column: 65)
!4177 = !DILocation(line: 138, column: 5, scope: !4176)
!4178 = !DILocation(line: 138, column: 51, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4172, file: !420, line: 138, column: 16)
!4180 = !DILocation(line: 138, column: 16, scope: !4172)
!4181 = !DILocation(line: 138, column: 46, scope: !4179)
!4182 = !DILocation(line: 139, column: 22, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4179, file: !420, line: 138, column: 65)
!4184 = !DILocation(line: 141, column: 22, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4179, file: !420, line: 140, column: 12)
!4186 = !DILocation(line: 142, column: 39, scope: !4185)
!4187 = !DILocation(line: 143, column: 3, scope: !4185)
!4188 = !DILocation(line: 147, column: 1, scope: !4126)
!4189 = distinct !DISubprogram(name: "hal_eint_isr", scope: !420, file: !420, line: 149, type: !320, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !4190)
!4190 = !{!4191, !4192}
!4191 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !4189, file: !420, line: 149, type: !202)
!4192 = !DILocalVariable(name: "callback_context", scope: !4189, file: !420, line: 151, type: !4030)
!4193 = !DILocation(line: 0, scope: !4189)
!4194 = !DILocation(line: 151, column: 78, scope: !4189)
!4195 = !DILocation(line: 152, column: 36, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !4189, file: !420, line: 152, column: 9)
!4197 = !{i8 0, i8 2}
!4198 = !DILocation(line: 153, column: 13, scope: !4196)
!4199 = !DILocation(line: 153, column: 43, scope: !4196)
!4200 = !DILocation(line: 153, column: 22, scope: !4196)
!4201 = !DILocation(line: 152, column: 9, scope: !4189)
!4202 = !DILocation(line: 154, column: 54, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4196, file: !420, line: 153, column: 54)
!4204 = !DILocation(line: 154, column: 9, scope: !4203)
!4205 = !DILocation(line: 155, column: 5, scope: !4203)
!4206 = !DILocation(line: 156, column: 1, scope: !4189)
!4207 = distinct !DISubprogram(name: "hal_eint_deinit", scope: !420, file: !420, line: 296, type: !3944, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !4208)
!4208 = !{!4209, !4210, !4211, !4212}
!4209 = !DILocalVariable(name: "eint_number", arg: 1, scope: !4207, file: !420, line: 296, type: !497)
!4210 = !DILocalVariable(name: "gpio_pin", scope: !4207, file: !420, line: 298, type: !202)
!4211 = !DILocalVariable(name: "ret_status", scope: !4207, file: !420, line: 299, type: !3946)
!4212 = !DILocalVariable(name: "callback_context", scope: !4207, file: !420, line: 311, type: !4030)
!4213 = !DILocation(line: 0, scope: !4207)
!4214 = !DILocation(line: 298, column: 5, scope: !4207)
!4215 = !DILocation(line: 301, column: 14, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4207, file: !420, line: 301, column: 9)
!4217 = !DILocation(line: 301, column: 11, scope: !4216)
!4218 = !DILocation(line: 301, column: 9, scope: !4207)
!4219 = !DILocation(line: 302, column: 9, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4216, file: !420, line: 301, column: 65)
!4221 = !DILocation(line: 303, column: 9, scope: !4220)
!4222 = !DILocation(line: 306, column: 18, scope: !4207)
!4223 = !DILocation(line: 307, column: 20, scope: !4224)
!4224 = distinct !DILexicalBlock(scope: !4207, file: !420, line: 307, column: 9)
!4225 = !DILocation(line: 307, column: 9, scope: !4207)
!4226 = !DILocation(line: 311, column: 102, scope: !4207)
!4227 = !DILocation(line: 311, column: 78, scope: !4207)
!4228 = !DILocation(line: 312, column: 12, scope: !4207)
!4229 = !DILocation(line: 312, column: 5, scope: !4207)
!4230 = !DILocation(line: 313, column: 5, scope: !4207)
!4231 = !DILocation(line: 313, column: 46, scope: !4207)
!4232 = !DILocation(line: 316, column: 1, scope: !4207)
!4233 = distinct !DISubprogram(name: "hal_eint_register_callback", scope: !420, file: !420, line: 319, type: !4234, scopeLine: 322, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !4236)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!3946, !497, !479, !464}
!4236 = !{!4237, !4238, !4239, !4240, !4241, !4242}
!4237 = !DILocalVariable(name: "eint_number", arg: 1, scope: !4233, file: !420, line: 319, type: !497)
!4238 = !DILocalVariable(name: "callback", arg: 2, scope: !4233, file: !420, line: 320, type: !479)
!4239 = !DILocalVariable(name: "user_data", arg: 3, scope: !4233, file: !420, line: 321, type: !464)
!4240 = !DILocalVariable(name: "gpio_pin", scope: !4233, file: !420, line: 323, type: !202)
!4241 = !DILocalVariable(name: "ret_status", scope: !4233, file: !420, line: 324, type: !3946)
!4242 = !DILocalVariable(name: "callback_context", scope: !4233, file: !420, line: 330, type: !4030)
!4243 = !DILocation(line: 0, scope: !4233)
!4244 = !DILocation(line: 323, column: 5, scope: !4233)
!4245 = !DILocation(line: 326, column: 14, scope: !4246)
!4246 = distinct !DILexicalBlock(scope: !4233, file: !420, line: 326, column: 9)
!4247 = !DILocation(line: 326, column: 11, scope: !4246)
!4248 = !DILocation(line: 326, column: 9, scope: !4233)
!4249 = !DILocation(line: 327, column: 9, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4246, file: !420, line: 326, column: 65)
!4251 = !DILocation(line: 328, column: 9, scope: !4250)
!4252 = !DILocation(line: 330, column: 102, scope: !4233)
!4253 = !DILocation(line: 330, column: 78, scope: !4233)
!4254 = !DILocation(line: 331, column: 23, scope: !4233)
!4255 = !DILocation(line: 331, column: 32, scope: !4233)
!4256 = !DILocation(line: 332, column: 23, scope: !4233)
!4257 = !DILocation(line: 332, column: 33, scope: !4233)
!4258 = !DILocation(line: 333, column: 23, scope: !4233)
!4259 = !DILocation(line: 333, column: 40, scope: !4233)
!4260 = !DILocation(line: 335, column: 5, scope: !4233)
!4261 = !DILocation(line: 335, column: 46, scope: !4233)
!4262 = !DILocation(line: 337, column: 9, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4233, file: !420, line: 337, column: 9)
!4264 = !DILocation(line: 337, column: 37, scope: !4263)
!4265 = !DILocation(line: 337, column: 9, scope: !4233)
!4266 = !DILocation(line: 338, column: 22, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4263, file: !420, line: 337, column: 46)
!4268 = !DILocation(line: 339, column: 24, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4267, file: !420, line: 339, column: 13)
!4270 = !DILocation(line: 339, column: 13, scope: !4267)
!4271 = !DILocation(line: 345, column: 5, scope: !4233)
!4272 = !DILocation(line: 347, column: 1, scope: !4233)
!4273 = distinct !DISubprogram(name: "hal_eint_set_trigger_mode", scope: !420, file: !420, line: 349, type: !4274, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !4276)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!3946, !497, !4020}
!4276 = !{!4277, !4278, !4279, !4280, !4283, !4284}
!4277 = !DILocalVariable(name: "eint_number", arg: 1, scope: !4273, file: !420, line: 349, type: !497)
!4278 = !DILocalVariable(name: "trigger_mode", arg: 2, scope: !4273, file: !420, line: 349, type: !4020)
!4279 = !DILocalVariable(name: "gpio_pin", scope: !4273, file: !420, line: 351, type: !202)
!4280 = !DILocalVariable(name: "trigger", scope: !4281, file: !420, line: 356, type: !2632)
!4281 = distinct !DILexicalBlock(scope: !4282, file: !420, line: 355, column: 12)
!4282 = distinct !DILexicalBlock(scope: !4273, file: !420, line: 352, column: 9)
!4283 = !DILocalVariable(name: "pol", scope: !4281, file: !420, line: 357, type: !2634)
!4284 = !DILocalVariable(name: "dual_en", scope: !4281, file: !420, line: 358, type: !2635)
!4285 = !DILocation(line: 0, scope: !4273)
!4286 = !DILocation(line: 351, column: 5, scope: !4273)
!4287 = !DILocation(line: 352, column: 14, scope: !4282)
!4288 = !DILocation(line: 352, column: 11, scope: !4282)
!4289 = !DILocation(line: 352, column: 9, scope: !4273)
!4290 = !DILocation(line: 353, column: 9, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4282, file: !420, line: 352, column: 65)
!4292 = !DILocation(line: 354, column: 9, scope: !4291)
!4293 = !DILocation(line: 360, column: 9, scope: !4281)
!4294 = !DILocation(line: 0, scope: !4281)
!4295 = !DILocation(line: 395, column: 31, scope: !4281)
!4296 = !DILocation(line: 395, column: 9, scope: !4281)
!4297 = !DILocation(line: 400, column: 1, scope: !4273)
!4298 = distinct !DISubprogram(name: "hal_eint_set_debounce_count", scope: !420, file: !420, line: 403, type: !4299, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !4301)
!4299 = !DISubroutineType(types: !4300)
!4300 = !{!3946, !497, !204}
!4301 = !{!4302, !4303, !4304, !4305}
!4302 = !DILocalVariable(name: "eint_number", arg: 1, scope: !4298, file: !420, line: 403, type: !497)
!4303 = !DILocalVariable(name: "count", arg: 2, scope: !4298, file: !420, line: 403, type: !204)
!4304 = !DILocalVariable(name: "gpio_pin", scope: !4298, file: !420, line: 405, type: !202)
!4305 = !DILocalVariable(name: "debounce_en", scope: !4298, file: !420, line: 406, type: !2633)
!4306 = !DILocation(line: 0, scope: !4298)
!4307 = !DILocation(line: 405, column: 5, scope: !4298)
!4308 = !DILocation(line: 408, column: 14, scope: !4309)
!4309 = distinct !DILexicalBlock(scope: !4298, file: !420, line: 408, column: 9)
!4310 = !DILocation(line: 408, column: 11, scope: !4309)
!4311 = !DILocation(line: 408, column: 9, scope: !4298)
!4312 = !DILocation(line: 409, column: 9, scope: !4313)
!4313 = distinct !DILexicalBlock(scope: !4309, file: !420, line: 408, column: 65)
!4314 = !DILocation(line: 410, column: 9, scope: !4313)
!4315 = !DILocation(line: 413, column: 15, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4298, file: !420, line: 413, column: 9)
!4317 = !DILocation(line: 420, column: 23, scope: !4298)
!4318 = !DILocation(line: 420, column: 76, scope: !4298)
!4319 = !DILocation(line: 420, column: 5, scope: !4298)
!4320 = !DILocation(line: 421, column: 5, scope: !4298)
!4321 = !DILocation(line: 422, column: 1, scope: !4298)
!4322 = distinct !DISubprogram(name: "hal_eint_set_debounce_time", scope: !420, file: !420, line: 424, type: !4299, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !4323)
!4323 = !{!4324, !4325, !4326, !4327, !4328, !4329}
!4324 = !DILocalVariable(name: "eint_number", arg: 1, scope: !4322, file: !420, line: 424, type: !497)
!4325 = !DILocalVariable(name: "time_ms", arg: 2, scope: !4322, file: !420, line: 424, type: !204)
!4326 = !DILocalVariable(name: "gpio_pin", scope: !4322, file: !420, line: 426, type: !202)
!4327 = !DILocalVariable(name: "sample_count", scope: !4322, file: !420, line: 427, type: !204)
!4328 = !DILocalVariable(name: "sample_rate", scope: !4322, file: !420, line: 428, type: !465)
!4329 = !DILocalVariable(name: "debounce_en", scope: !4322, file: !420, line: 429, type: !2633)
!4330 = !DILocation(line: 0, scope: !4322)
!4331 = !DILocation(line: 426, column: 5, scope: !4322)
!4332 = !DILocation(line: 427, column: 5, scope: !4322)
!4333 = !DILocation(line: 428, column: 5, scope: !4322)
!4334 = !DILocation(line: 430, column: 14, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4322, file: !420, line: 430, column: 9)
!4336 = !DILocation(line: 430, column: 11, scope: !4335)
!4337 = !DILocation(line: 430, column: 9, scope: !4322)
!4338 = !DILocation(line: 431, column: 9, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4335, file: !420, line: 430, column: 65)
!4340 = !DILocation(line: 432, column: 9, scope: !4339)
!4341 = !DILocation(line: 448, column: 5, scope: !4322)
!4342 = !DILocation(line: 450, column: 17, scope: !4343)
!4343 = distinct !DILexicalBlock(scope: !4322, file: !420, line: 450, column: 9)
!4344 = !DILocation(line: 455, column: 23, scope: !4322)
!4345 = !DILocation(line: 455, column: 46, scope: !4322)
!4346 = !DILocation(line: 455, column: 59, scope: !4322)
!4347 = !DILocation(line: 455, column: 5, scope: !4322)
!4348 = !DILocation(line: 456, column: 5, scope: !4322)
!4349 = !DILocation(line: 457, column: 1, scope: !4322)
!4350 = distinct !DISubprogram(name: "hal_eint_set_software_trigger", scope: !420, file: !420, line: 460, type: !3944, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !4351)
!4351 = !{!4352, !4353}
!4352 = !DILocalVariable(name: "eint_number", arg: 1, scope: !4350, file: !420, line: 460, type: !497)
!4353 = !DILocalVariable(name: "gpio_pin", scope: !4350, file: !420, line: 462, type: !202)
!4354 = !DILocation(line: 0, scope: !4350)
!4355 = !DILocation(line: 462, column: 5, scope: !4350)
!4356 = !DILocation(line: 463, column: 14, scope: !4357)
!4357 = distinct !DILexicalBlock(scope: !4350, file: !420, line: 463, column: 9)
!4358 = !DILocation(line: 463, column: 11, scope: !4357)
!4359 = !DILocation(line: 463, column: 9, scope: !4350)
!4360 = !DILocation(line: 464, column: 9, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !4357, file: !420, line: 463, column: 65)
!4362 = !DILocation(line: 465, column: 9, scope: !4361)
!4363 = !DILocation(line: 467, column: 31, scope: !4350)
!4364 = !DILocation(line: 467, column: 5, scope: !4350)
!4365 = !DILocation(line: 468, column: 5, scope: !4350)
!4366 = !DILocation(line: 469, column: 1, scope: !4350)
!4367 = distinct !DISubprogram(name: "hal_eint_clear_software_trigger", scope: !420, file: !420, line: 471, type: !3944, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !4368)
!4368 = !{!4369, !4370}
!4369 = !DILocalVariable(name: "eint_number", arg: 1, scope: !4367, file: !420, line: 471, type: !497)
!4370 = !DILocalVariable(name: "gpio_pin", scope: !4367, file: !420, line: 473, type: !202)
!4371 = !DILocation(line: 0, scope: !4367)
!4372 = !DILocation(line: 473, column: 5, scope: !4367)
!4373 = !DILocation(line: 474, column: 14, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !4367, file: !420, line: 474, column: 9)
!4375 = !DILocation(line: 474, column: 11, scope: !4374)
!4376 = !DILocation(line: 474, column: 9, scope: !4367)
!4377 = !DILocation(line: 475, column: 9, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4374, file: !420, line: 474, column: 65)
!4379 = !DILocation(line: 476, column: 9, scope: !4378)
!4380 = !DILocation(line: 478, column: 33, scope: !4367)
!4381 = !DILocation(line: 478, column: 5, scope: !4367)
!4382 = !DILocation(line: 479, column: 5, scope: !4367)
!4383 = !DILocation(line: 480, column: 1, scope: !4367)
!4384 = distinct !DISubprogram(name: "hal_nvic_init", scope: !504, file: !504, line: 60, type: !4385, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !1348)
!4385 = !DISubroutineType(types: !4386)
!4386 = !{!4387}
!4387 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_status_t", file: !507, line: 158, baseType: !506)
!4388 = !DILocation(line: 62, column: 5, scope: !4384)
!4389 = distinct !DISubprogram(name: "hal_nvic_enable_irq", scope: !504, file: !504, line: 65, type: !4390, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4392)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{!4387, !515}
!4392 = !{!4393, !4394}
!4393 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4389, file: !504, line: 65, type: !515)
!4394 = !DILocalVariable(name: "status", scope: !4389, file: !504, line: 67, type: !4387)
!4395 = !DILocation(line: 0, scope: !4389)
!4396 = !DILocation(line: 69, column: 40, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4389, file: !504, line: 69, column: 9)
!4398 = !DILocation(line: 73, column: 9, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !4397, file: !504, line: 72, column: 12)
!4400 = !DILocation(line: 77, column: 5, scope: !4389)
!4401 = !DILocation(line: 78, column: 1, scope: !4389)
!4402 = distinct !DISubprogram(name: "NVIC_EnableIRQ", scope: !210, file: !210, line: 1494, type: !2099, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4403)
!4403 = !{!4404}
!4404 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4402, file: !210, line: 1494, type: !61)
!4405 = !DILocation(line: 0, scope: !4402)
!4406 = !DILocation(line: 1497, column: 91, scope: !4402)
!4407 = !DILocation(line: 1497, column: 61, scope: !4402)
!4408 = !DILocation(line: 1497, column: 40, scope: !4402)
!4409 = !DILocation(line: 1497, column: 3, scope: !4402)
!4410 = !DILocation(line: 1497, column: 46, scope: !4402)
!4411 = !DILocation(line: 1498, column: 1, scope: !4402)
!4412 = distinct !DISubprogram(name: "hal_nvic_disable_irq", scope: !504, file: !504, line: 80, type: !4390, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4413)
!4413 = !{!4414, !4415}
!4414 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4412, file: !504, line: 80, type: !515)
!4415 = !DILocalVariable(name: "status", scope: !4412, file: !504, line: 82, type: !4387)
!4416 = !DILocation(line: 0, scope: !4412)
!4417 = !DILocation(line: 84, column: 40, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4412, file: !504, line: 84, column: 9)
!4419 = !DILocation(line: 88, column: 9, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4418, file: !504, line: 87, column: 12)
!4421 = !DILocation(line: 92, column: 5, scope: !4412)
!4422 = !DILocation(line: 93, column: 1, scope: !4412)
!4423 = distinct !DISubprogram(name: "NVIC_DisableIRQ", scope: !210, file: !210, line: 1507, type: !2099, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4424)
!4424 = !{!4425}
!4425 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4423, file: !210, line: 1507, type: !61)
!4426 = !DILocation(line: 0, scope: !4423)
!4427 = !DILocation(line: 1509, column: 65, scope: !4423)
!4428 = !DILocation(line: 1509, column: 44, scope: !4423)
!4429 = !DILocation(line: 1509, column: 32, scope: !4423)
!4430 = !DILocation(line: 1509, column: 3, scope: !4423)
!4431 = !DILocation(line: 1509, column: 39, scope: !4423)
!4432 = !DILocation(line: 1510, column: 1, scope: !4423)
!4433 = distinct !DISubprogram(name: "hal_nvic_get_pending_irq", scope: !504, file: !504, line: 95, type: !4434, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4436)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{!204, !515}
!4436 = !{!4437, !4438}
!4437 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4433, file: !504, line: 95, type: !515)
!4438 = !DILocalVariable(name: "ret", scope: !4433, file: !504, line: 97, type: !204)
!4439 = !DILocation(line: 0, scope: !4433)
!4440 = !DILocation(line: 99, column: 40, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4433, file: !504, line: 99, column: 9)
!4442 = !DILocation(line: 102, column: 15, scope: !4443)
!4443 = distinct !DILexicalBlock(scope: !4441, file: !504, line: 101, column: 12)
!4444 = !DILocation(line: 105, column: 5, scope: !4433)
!4445 = !DILocation(line: 106, column: 1, scope: !4433)
!4446 = distinct !DISubprogram(name: "NVIC_GetPendingIRQ", scope: !210, file: !210, line: 1523, type: !4447, scopeLine: 1524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4449)
!4447 = !DISubroutineType(types: !4448)
!4448 = !{!204, !61}
!4449 = !{!4450}
!4450 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4446, file: !210, line: 1523, type: !61)
!4451 = !DILocation(line: 0, scope: !4446)
!4452 = !DILocation(line: 1525, column: 51, scope: !4446)
!4453 = !DILocation(line: 1525, column: 23, scope: !4446)
!4454 = !DILocation(line: 1525, column: 83, scope: !4446)
!4455 = !DILocation(line: 1525, column: 22, scope: !4446)
!4456 = !DILocation(line: 1525, column: 3, scope: !4446)
!4457 = distinct !DISubprogram(name: "hal_nvic_set_pending_irq", scope: !504, file: !504, line: 108, type: !4390, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4458)
!4458 = !{!4459, !4460}
!4459 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4457, file: !504, line: 108, type: !515)
!4460 = !DILocalVariable(name: "status", scope: !4457, file: !504, line: 110, type: !4387)
!4461 = !DILocation(line: 0, scope: !4457)
!4462 = !DILocation(line: 112, column: 40, scope: !4463)
!4463 = distinct !DILexicalBlock(scope: !4457, file: !504, line: 112, column: 9)
!4464 = !DILocation(line: 116, column: 9, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4463, file: !504, line: 115, column: 12)
!4466 = !DILocation(line: 120, column: 5, scope: !4457)
!4467 = !DILocation(line: 121, column: 1, scope: !4457)
!4468 = distinct !DISubprogram(name: "NVIC_SetPendingIRQ", scope: !210, file: !210, line: 1535, type: !2099, scopeLine: 1536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4469)
!4469 = !{!4470}
!4470 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4468, file: !210, line: 1535, type: !61)
!4471 = !DILocation(line: 0, scope: !4468)
!4472 = !DILocation(line: 1537, column: 65, scope: !4468)
!4473 = !DILocation(line: 1537, column: 44, scope: !4468)
!4474 = !DILocation(line: 1537, column: 32, scope: !4468)
!4475 = !DILocation(line: 1537, column: 3, scope: !4468)
!4476 = !DILocation(line: 1537, column: 39, scope: !4468)
!4477 = !DILocation(line: 1538, column: 1, scope: !4468)
!4478 = distinct !DISubprogram(name: "hal_nvic_clear_pending_irq", scope: !504, file: !504, line: 123, type: !4390, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4479)
!4479 = !{!4480, !4481}
!4480 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4478, file: !504, line: 123, type: !515)
!4481 = !DILocalVariable(name: "status", scope: !4478, file: !504, line: 125, type: !4387)
!4482 = !DILocation(line: 0, scope: !4478)
!4483 = !DILocation(line: 127, column: 40, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4478, file: !504, line: 127, column: 9)
!4485 = !DILocation(line: 131, column: 9, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4484, file: !504, line: 130, column: 12)
!4487 = !DILocation(line: 135, column: 5, scope: !4478)
!4488 = !DILocation(line: 136, column: 1, scope: !4478)
!4489 = distinct !DISubprogram(name: "NVIC_ClearPendingIRQ", scope: !210, file: !210, line: 1547, type: !2099, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4490)
!4490 = !{!4491}
!4491 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4489, file: !210, line: 1547, type: !61)
!4492 = !DILocation(line: 0, scope: !4489)
!4493 = !DILocation(line: 1549, column: 65, scope: !4489)
!4494 = !DILocation(line: 1549, column: 44, scope: !4489)
!4495 = !DILocation(line: 1549, column: 32, scope: !4489)
!4496 = !DILocation(line: 1549, column: 3, scope: !4489)
!4497 = !DILocation(line: 1549, column: 39, scope: !4489)
!4498 = !DILocation(line: 1550, column: 1, scope: !4489)
!4499 = distinct !DISubprogram(name: "hal_nvic_set_priority", scope: !504, file: !504, line: 138, type: !4500, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4502)
!4500 = !DISubroutineType(types: !4501)
!4501 = !{!4387, !515, !204}
!4502 = !{!4503, !4504, !4505}
!4503 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4499, file: !504, line: 138, type: !515)
!4504 = !DILocalVariable(name: "priority", arg: 2, scope: !4499, file: !504, line: 138, type: !204)
!4505 = !DILocalVariable(name: "status", scope: !4499, file: !504, line: 140, type: !4387)
!4506 = !DILocation(line: 0, scope: !4499)
!4507 = !DILocation(line: 142, column: 40, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4499, file: !504, line: 142, column: 9)
!4509 = !DILocation(line: 146, column: 9, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4508, file: !504, line: 145, column: 12)
!4511 = !DILocation(line: 150, column: 5, scope: !4499)
!4512 = !DILocation(line: 151, column: 1, scope: !4499)
!4513 = distinct !DISubprogram(name: "NVIC_SetPriority", scope: !210, file: !210, line: 1577, type: !2121, scopeLine: 1578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4514)
!4514 = !{!4515, !4516}
!4515 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4513, file: !210, line: 1577, type: !61)
!4516 = !DILocalVariable(name: "priority", arg: 2, scope: !4513, file: !210, line: 1577, type: !204)
!4517 = !DILocation(line: 0, scope: !4513)
!4518 = !DILocation(line: 1582, column: 34, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4520, file: !210, line: 1581, column: 8)
!4520 = distinct !DILexicalBlock(scope: !4513, file: !210, line: 1579, column: 6)
!4521 = !DILocation(line: 1582, column: 5, scope: !4519)
!4522 = !DILocation(line: 1582, column: 32, scope: !4519)
!4523 = !DILocation(line: 1583, column: 1, scope: !4513)
!4524 = distinct !DISubprogram(name: "hal_nvic_get_priority", scope: !504, file: !504, line: 153, type: !4434, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4525)
!4525 = !{!4526, !4527}
!4526 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4524, file: !504, line: 153, type: !515)
!4527 = !DILocalVariable(name: "ret", scope: !4524, file: !504, line: 155, type: !204)
!4528 = !DILocation(line: 0, scope: !4524)
!4529 = !DILocation(line: 157, column: 40, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4524, file: !504, line: 157, column: 9)
!4531 = !DILocation(line: 160, column: 15, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4530, file: !504, line: 159, column: 12)
!4533 = !DILocation(line: 163, column: 5, scope: !4524)
!4534 = !DILocation(line: 164, column: 1, scope: !4524)
!4535 = distinct !DISubprogram(name: "NVIC_GetPriority", scope: !210, file: !210, line: 1597, type: !4447, scopeLine: 1598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4536)
!4536 = !{!4537}
!4537 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4535, file: !210, line: 1597, type: !61)
!4538 = !DILocation(line: 0, scope: !4535)
!4539 = !DILocation(line: 1603, column: 23, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !4541, file: !210, line: 1602, column: 8)
!4541 = distinct !DILexicalBlock(scope: !4535, file: !210, line: 1600, column: 6)
!4542 = !DILocation(line: 1603, column: 60, scope: !4540)
!4543 = !DILocation(line: 1604, column: 1, scope: !4535)
!4544 = distinct !DISubprogram(name: "Flash_ReturnReady", scope: !504, file: !504, line: 173, type: !75, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !1348)
!4545 = !DILocation(line: 175, column: 1, scope: !4544)
!4546 = distinct !DISubprogram(name: "isrC_main", scope: !504, file: !504, line: 178, type: !4385, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4547)
!4547 = !{!4548, !4549}
!4548 = !DILocalVariable(name: "status", scope: !4546, file: !504, line: 180, type: !4387)
!4549 = !DILocalVariable(name: "irq_number", scope: !4546, file: !504, line: 181, type: !515)
!4550 = !DILocation(line: 0, scope: !4546)
!4551 = !DILocation(line: 188, column: 34, scope: !4546)
!4552 = !DILocation(line: 189, column: 24, scope: !4553)
!4553 = distinct !DILexicalBlock(scope: !4546, file: !504, line: 189, column: 9)
!4554 = !DILocation(line: 192, column: 48, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4553, file: !504, line: 192, column: 16)
!4556 = !DILocation(line: 192, column: 62, scope: !4555)
!4557 = !DILocation(line: 192, column: 16, scope: !4553)
!4558 = !DILocation(line: 194, column: 9, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4555, file: !504, line: 192, column: 71)
!4560 = !DILocation(line: 195, column: 9, scope: !4559)
!4561 = !DILocation(line: 197, column: 55, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4555, file: !504, line: 196, column: 12)
!4563 = !DILocation(line: 197, column: 41, scope: !4562)
!4564 = !DILocation(line: 197, column: 53, scope: !4562)
!4565 = !DILocation(line: 198, column: 41, scope: !4562)
!4566 = !DILocation(line: 198, column: 9, scope: !4562)
!4567 = !DILocation(line: 202, column: 5, scope: !4546)
!4568 = !DILocation(line: 203, column: 1, scope: !4546)
!4569 = distinct !DISubprogram(name: "get_current_irq", scope: !504, file: !504, line: 166, type: !2829, scopeLine: 167, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4570)
!4570 = !{!4571}
!4571 = !DILocalVariable(name: "irq_num", scope: !4569, file: !504, line: 168, type: !204)
!4572 = !DILocation(line: 168, column: 31, scope: !4569)
!4573 = !DILocation(line: 168, column: 36, scope: !4569)
!4574 = !DILocation(line: 0, scope: !4569)
!4575 = !DILocation(line: 169, column: 21, scope: !4569)
!4576 = !DILocation(line: 169, column: 5, scope: !4569)
!4577 = distinct !DISubprogram(name: "get_pending_irq", scope: !504, file: !504, line: 55, type: !2829, scopeLine: 56, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !1348)
!4578 = !DILocation(line: 57, column: 19, scope: !4577)
!4579 = !DILocation(line: 57, column: 51, scope: !4577)
!4580 = !DILocation(line: 57, column: 5, scope: !4577)
!4581 = distinct !DISubprogram(name: "hal_nvic_register_isr_handler", scope: !504, file: !504, line: 205, type: !4582, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4585)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{!4387, !515, !4584}
!4584 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_isr_t", file: !507, line: 175, baseType: !564)
!4585 = !{!4586, !4587, !4588}
!4586 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4581, file: !504, line: 205, type: !515)
!4587 = !DILocalVariable(name: "callback", arg: 2, scope: !4581, file: !504, line: 205, type: !4584)
!4588 = !DILocalVariable(name: "mask", scope: !4581, file: !504, line: 207, type: !204)
!4589 = !DILocation(line: 0, scope: !4581)
!4590 = !DILocation(line: 209, column: 24, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4581, file: !504, line: 209, column: 9)
!4592 = !DILocation(line: 213, column: 12, scope: !4581)
!4593 = !DILocation(line: 214, column: 5, scope: !4581)
!4594 = !DILocation(line: 215, column: 37, scope: !4581)
!4595 = !DILocation(line: 215, column: 51, scope: !4581)
!4596 = !DILocation(line: 216, column: 37, scope: !4581)
!4597 = !DILocation(line: 216, column: 49, scope: !4581)
!4598 = !DILocation(line: 217, column: 5, scope: !4581)
!4599 = !DILocation(line: 219, column: 5, scope: !4581)
!4600 = !DILocation(line: 220, column: 1, scope: !4581)
!4601 = distinct !DISubprogram(name: "hal_nvic_save_and_set_interrupt_mask", scope: !504, file: !504, line: 222, type: !4602, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4604)
!4602 = !DISubroutineType(types: !4603)
!4603 = !{!4387, !3560}
!4604 = !{!4605}
!4605 = !DILocalVariable(name: "mask", arg: 1, scope: !4601, file: !504, line: 222, type: !3560)
!4606 = !DILocation(line: 0, scope: !4601)
!4607 = !DILocation(line: 224, column: 13, scope: !4601)
!4608 = !DILocation(line: 224, column: 11, scope: !4601)
!4609 = !DILocation(line: 225, column: 5, scope: !4601)
!4610 = distinct !DISubprogram(name: "hal_nvic_restore_interrupt_mask", scope: !504, file: !504, line: 228, type: !4611, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4613)
!4611 = !DISubroutineType(types: !4612)
!4612 = !{!4387, !204}
!4613 = !{!4614}
!4614 = !DILocalVariable(name: "mask", arg: 1, scope: !4610, file: !504, line: 228, type: !204)
!4615 = !DILocation(line: 0, scope: !4610)
!4616 = !DILocation(line: 230, column: 5, scope: !4610)
!4617 = !DILocation(line: 231, column: 5, scope: !4610)
!4618 = distinct !DISubprogram(name: "hal_pinmux_set_function", scope: !1129, file: !1129, line: 50, type: !4619, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1128, retainedNodes: !4623)
!4619 = !DISubroutineType(types: !4620)
!4620 = !{!4621, !4622, !236}
!4621 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_pinmux_status_t", file: !766, line: 238, baseType: !1131)
!4622 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_pin_t", file: !423, line: 281, baseType: !734)
!4623 = !{!4624, !4625, !4626}
!4624 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4618, file: !1129, line: 50, type: !4622)
!4625 = !DILocalVariable(name: "function_index", arg: 2, scope: !4618, file: !1129, line: 50, type: !236)
!4626 = !DILocalVariable(name: "ret_value", scope: !4618, file: !1129, line: 52, type: !285)
!4627 = !DILocation(line: 0, scope: !4618)
!4628 = !DILocation(line: 53, column: 18, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4618, file: !1129, line: 53, column: 9)
!4630 = !DILocation(line: 53, column: 9, scope: !4618)
!4631 = !DILocation(line: 57, column: 24, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4618, file: !1129, line: 57, column: 9)
!4633 = !DILocation(line: 57, column: 9, scope: !4618)
!4634 = !DILocation(line: 57, column: 9, scope: !4632)
!4635 = !DILocation(line: 60, column: 17, scope: !4618)
!4636 = !DILocation(line: 61, column: 12, scope: !4618)
!4637 = !DILocation(line: 61, column: 5, scope: !4618)
!4638 = !DILocation(line: 62, column: 1, scope: !4618)
!4639 = distinct !DISubprogram(name: "hal_gpio_init", scope: !1129, file: !1129, line: 64, type: !4640, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1128, retainedNodes: !4643)
!4640 = !DISubroutineType(types: !4641)
!4641 = !{!4642, !4622}
!4642 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_status_t", file: !766, line: 229, baseType: !1137)
!4643 = !{!4644}
!4644 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4639, file: !1129, line: 64, type: !4622)
!4645 = !DILocation(line: 0, scope: !4639)
!4646 = !DILocation(line: 66, column: 5, scope: !4639)
!4647 = distinct !DISubprogram(name: "hal_gpio_deinit", scope: !1129, file: !1129, line: 69, type: !4640, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1128, retainedNodes: !4648)
!4648 = !{!4649}
!4649 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4647, file: !1129, line: 69, type: !4622)
!4650 = !DILocation(line: 0, scope: !4647)
!4651 = !DILocation(line: 71, column: 5, scope: !4647)
!4652 = distinct !DISubprogram(name: "hal_gpio_get_input", scope: !1129, file: !1129, line: 74, type: !4653, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1128, retainedNodes: !4656)
!4653 = !DISubroutineType(types: !4654)
!4654 = !{!4642, !4622, !4655}
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 32)
!4656 = !{!4657, !4658, !4659}
!4657 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4652, file: !1129, line: 74, type: !4622)
!4658 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !4652, file: !1129, line: 74, type: !4655)
!4659 = !DILocalVariable(name: "status", scope: !4652, file: !1129, line: 76, type: !4660)
!4660 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_status", file: !328, line: 67, baseType: !4661)
!4661 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !328, line: 62, size: 64, elements: !4662)
!4662 = !{!4663, !4664, !4665, !4666}
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PIN", scope: !4661, file: !328, line: 63, baseType: !204, size: 32)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OUTEN", scope: !4661, file: !328, line: 64, baseType: !236, size: 8, offset: 32)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "GPI_DIN", scope: !4661, file: !328, line: 65, baseType: !236, size: 8, offset: 40)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "GPO_DOUT", scope: !4661, file: !328, line: 66, baseType: !236, size: 8, offset: 48)
!4667 = !DILocation(line: 0, scope: !4652)
!4668 = !DILocation(line: 77, column: 14, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4652, file: !1129, line: 77, column: 9)
!4670 = !DILocation(line: 77, column: 9, scope: !4652)
!4671 = !DILocation(line: 81, column: 18, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4652, file: !1129, line: 81, column: 9)
!4673 = !DILocation(line: 81, column: 9, scope: !4652)
!4674 = !DILocation(line: 85, column: 14, scope: !4652)
!4675 = !DILocation(line: 86, column: 18, scope: !4652)
!4676 = !DILocation(line: 86, column: 16, scope: !4652)
!4677 = !DILocation(line: 87, column: 5, scope: !4652)
!4678 = !DILocation(line: 88, column: 1, scope: !4652)
!4679 = distinct !DISubprogram(name: "hal_gpio_set_output", scope: !1129, file: !1129, line: 90, type: !4680, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1128, retainedNodes: !4682)
!4680 = !DISubroutineType(types: !4681)
!4681 = !{!4642, !4622, !1154}
!4682 = !{!4683, !4684, !4685}
!4683 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4679, file: !1129, line: 90, type: !4622)
!4684 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !4679, file: !1129, line: 90, type: !1154)
!4685 = !DILocalVariable(name: "ret_value", scope: !4679, file: !1129, line: 92, type: !285)
!4686 = !DILocation(line: 0, scope: !4679)
!4687 = !DILocation(line: 93, column: 18, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4679, file: !1129, line: 93, column: 9)
!4689 = !DILocation(line: 93, column: 9, scope: !4679)
!4690 = !DILocation(line: 97, column: 60, scope: !4679)
!4691 = !DILocation(line: 97, column: 17, scope: !4679)
!4692 = !DILocation(line: 98, column: 12, scope: !4679)
!4693 = !DILocation(line: 98, column: 5, scope: !4679)
!4694 = !DILocation(line: 99, column: 1, scope: !4679)
!4695 = distinct !DISubprogram(name: "hal_gpio_get_output", scope: !1129, file: !1129, line: 101, type: !4653, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1128, retainedNodes: !4696)
!4696 = !{!4697, !4698, !4699}
!4697 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4695, file: !1129, line: 101, type: !4622)
!4698 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !4695, file: !1129, line: 101, type: !4655)
!4699 = !DILocalVariable(name: "status", scope: !4695, file: !1129, line: 103, type: !4660)
!4700 = !DILocation(line: 0, scope: !4695)
!4701 = !DILocation(line: 104, column: 18, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4695, file: !1129, line: 104, column: 9)
!4703 = !DILocation(line: 104, column: 9, scope: !4695)
!4704 = !DILocation(line: 108, column: 14, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4695, file: !1129, line: 108, column: 9)
!4706 = !DILocation(line: 108, column: 9, scope: !4695)
!4707 = !DILocation(line: 112, column: 14, scope: !4695)
!4708 = !DILocation(line: 113, column: 18, scope: !4695)
!4709 = !DILocation(line: 113, column: 16, scope: !4695)
!4710 = !DILocation(line: 114, column: 5, scope: !4695)
!4711 = !DILocation(line: 115, column: 1, scope: !4695)
!4712 = distinct !DISubprogram(name: "hal_gpio_set_direction", scope: !1129, file: !1129, line: 117, type: !4713, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1128, retainedNodes: !4716)
!4713 = !DISubroutineType(types: !4714)
!4714 = !{!4642, !4622, !4715}
!4715 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_direction_t", file: !766, line: 213, baseType: !765)
!4716 = !{!4717, !4718, !4719}
!4717 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4712, file: !1129, line: 117, type: !4622)
!4718 = !DILocalVariable(name: "direction", arg: 2, scope: !4712, file: !1129, line: 117, type: !4715)
!4719 = !DILocalVariable(name: "ret_value", scope: !4712, file: !1129, line: 119, type: !285)
!4720 = !DILocation(line: 0, scope: !4712)
!4721 = !DILocation(line: 120, column: 18, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4712, file: !1129, line: 120, column: 9)
!4723 = !DILocation(line: 120, column: 9, scope: !4712)
!4724 = !DILocation(line: 123, column: 17, scope: !4712)
!4725 = !DILocation(line: 125, column: 12, scope: !4712)
!4726 = !DILocation(line: 125, column: 5, scope: !4712)
!4727 = !DILocation(line: 126, column: 1, scope: !4712)
!4728 = distinct !DISubprogram(name: "hal_gpio_get_direction", scope: !1129, file: !1129, line: 128, type: !4729, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1128, retainedNodes: !4732)
!4729 = !DISubroutineType(types: !4730)
!4730 = !{!4642, !4622, !4731}
!4731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4715, size: 32)
!4732 = !{!4733, !4734, !4735}
!4733 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4728, file: !1129, line: 128, type: !4622)
!4734 = !DILocalVariable(name: "direction", arg: 2, scope: !4728, file: !1129, line: 128, type: !4731)
!4735 = !DILocalVariable(name: "status", scope: !4728, file: !1129, line: 131, type: !4660)
!4736 = !DILocation(line: 0, scope: !4728)
!4737 = !DILocation(line: 132, column: 18, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4728, file: !1129, line: 132, column: 9)
!4739 = !DILocation(line: 132, column: 9, scope: !4728)
!4740 = !DILocation(line: 136, column: 14, scope: !4741)
!4741 = distinct !DILexicalBlock(scope: !4728, file: !1129, line: 136, column: 9)
!4742 = !DILocation(line: 136, column: 9, scope: !4728)
!4743 = !DILocation(line: 140, column: 14, scope: !4728)
!4744 = !DILocation(line: 141, column: 18, scope: !4728)
!4745 = !DILocation(line: 141, column: 16, scope: !4728)
!4746 = !DILocation(line: 142, column: 5, scope: !4728)
!4747 = !DILocation(line: 143, column: 1, scope: !4728)
!4748 = distinct !DISubprogram(name: "hal_gpio_toggle_pin", scope: !1129, file: !1129, line: 146, type: !4640, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1128, retainedNodes: !4749)
!4749 = !{!4750, !4751}
!4750 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4748, file: !1129, line: 146, type: !4622)
!4751 = !DILocalVariable(name: "status", scope: !4748, file: !1129, line: 148, type: !4660)
!4752 = !DILocation(line: 0, scope: !4748)
!4753 = !DILocation(line: 149, column: 18, scope: !4754)
!4754 = distinct !DILexicalBlock(scope: !4748, file: !1129, line: 149, column: 9)
!4755 = !DILocation(line: 149, column: 9, scope: !4748)
!4756 = !DILocation(line: 153, column: 14, scope: !4748)
!4757 = !DILocation(line: 154, column: 76, scope: !4748)
!4758 = !DILocation(line: 154, column: 12, scope: !4748)
!4759 = !DILocation(line: 154, column: 5, scope: !4748)
!4760 = !DILocation(line: 155, column: 1, scope: !4748)
!4761 = distinct !DISubprogram(name: "hal_gpio_pull_up", scope: !1129, file: !1129, line: 157, type: !4640, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1128, retainedNodes: !4762)
!4762 = !{!4763, !4764}
!4763 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4761, file: !1129, line: 157, type: !4622)
!4764 = !DILocalVariable(name: "ret_value", scope: !4761, file: !1129, line: 159, type: !285)
!4765 = !DILocation(line: 0, scope: !4761)
!4766 = !DILocation(line: 160, column: 18, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4761, file: !1129, line: 160, column: 9)
!4768 = !DILocation(line: 160, column: 9, scope: !4761)
!4769 = !DILocation(line: 164, column: 17, scope: !4761)
!4770 = !DILocation(line: 165, column: 19, scope: !4771)
!4771 = distinct !DILexicalBlock(scope: !4761, file: !1129, line: 165, column: 9)
!4772 = !DILocation(line: 165, column: 9, scope: !4761)
!4773 = !DILocation(line: 168, column: 17, scope: !4761)
!4774 = !DILocation(line: 169, column: 12, scope: !4761)
!4775 = !DILocation(line: 169, column: 5, scope: !4761)
!4776 = !DILocation(line: 170, column: 1, scope: !4761)
!4777 = distinct !DISubprogram(name: "hal_gpio_pull_down", scope: !1129, file: !1129, line: 172, type: !4640, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1128, retainedNodes: !4778)
!4778 = !{!4779, !4780}
!4779 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4777, file: !1129, line: 172, type: !4622)
!4780 = !DILocalVariable(name: "ret_value", scope: !4777, file: !1129, line: 174, type: !285)
!4781 = !DILocation(line: 0, scope: !4777)
!4782 = !DILocation(line: 175, column: 18, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4777, file: !1129, line: 175, column: 9)
!4784 = !DILocation(line: 175, column: 9, scope: !4777)
!4785 = !DILocation(line: 179, column: 17, scope: !4777)
!4786 = !DILocation(line: 180, column: 19, scope: !4787)
!4787 = distinct !DILexicalBlock(scope: !4777, file: !1129, line: 180, column: 9)
!4788 = !DILocation(line: 180, column: 9, scope: !4777)
!4789 = !DILocation(line: 183, column: 17, scope: !4777)
!4790 = !DILocation(line: 184, column: 12, scope: !4777)
!4791 = !DILocation(line: 184, column: 5, scope: !4777)
!4792 = !DILocation(line: 185, column: 1, scope: !4777)
!4793 = distinct !DISubprogram(name: "hal_gpio_disable_pull", scope: !1129, file: !1129, line: 187, type: !4640, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1128, retainedNodes: !4794)
!4794 = !{!4795, !4796}
!4795 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4793, file: !1129, line: 187, type: !4622)
!4796 = !DILocalVariable(name: "ret_value", scope: !4793, file: !1129, line: 189, type: !285)
!4797 = !DILocation(line: 0, scope: !4793)
!4798 = !DILocation(line: 191, column: 18, scope: !4799)
!4799 = distinct !DILexicalBlock(scope: !4793, file: !1129, line: 191, column: 9)
!4800 = !DILocation(line: 191, column: 9, scope: !4793)
!4801 = !DILocation(line: 195, column: 17, scope: !4793)
!4802 = !DILocation(line: 196, column: 12, scope: !4793)
!4803 = !DILocation(line: 196, column: 5, scope: !4793)
!4804 = !DILocation(line: 197, column: 1, scope: !4793)
!4805 = distinct !DISubprogram(name: "hal_gpio_set_driving_current", scope: !1129, file: !1129, line: 200, type: !4806, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1128, retainedNodes: !4808)
!4806 = !DISubroutineType(types: !4807)
!4807 = !{!4642, !4622, !1155}
!4808 = !{!4809, !4810, !4811}
!4809 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4805, file: !1129, line: 200, type: !4622)
!4810 = !DILocalVariable(name: "driving", arg: 2, scope: !4805, file: !1129, line: 200, type: !1155)
!4811 = !DILocalVariable(name: "ret_value", scope: !4805, file: !1129, line: 202, type: !285)
!4812 = !DILocation(line: 0, scope: !4805)
!4813 = !DILocation(line: 204, column: 18, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4805, file: !1129, line: 204, column: 9)
!4815 = !DILocation(line: 204, column: 9, scope: !4805)
!4816 = !DILocation(line: 208, column: 64, scope: !4805)
!4817 = !DILocation(line: 208, column: 17, scope: !4805)
!4818 = !DILocation(line: 210, column: 12, scope: !4805)
!4819 = !DILocation(line: 210, column: 5, scope: !4805)
!4820 = !DILocation(line: 211, column: 1, scope: !4805)
!4821 = distinct !DISubprogram(name: "hal_gpio_get_driving_current", scope: !1129, file: !1129, line: 214, type: !4822, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1128, retainedNodes: !4825)
!4822 = !DISubroutineType(types: !4823)
!4823 = !{!4642, !4622, !4824}
!4824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 32)
!4825 = !{!4826, !4827, !4828, !4829}
!4826 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4821, file: !1129, line: 214, type: !4622)
!4827 = !DILocalVariable(name: "driving", arg: 2, scope: !4821, file: !1129, line: 214, type: !4824)
!4828 = !DILocalVariable(name: "ret_value", scope: !4821, file: !1129, line: 216, type: !285)
!4829 = !DILocalVariable(name: "value", scope: !4821, file: !1129, line: 217, type: !236)
!4830 = !DILocation(line: 0, scope: !4821)
!4831 = !DILocation(line: 217, column: 5, scope: !4821)
!4832 = !DILocation(line: 219, column: 18, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4821, file: !1129, line: 219, column: 9)
!4834 = !DILocation(line: 219, column: 9, scope: !4821)
!4835 = !DILocation(line: 223, column: 17, scope: !4821)
!4836 = !DILocation(line: 225, column: 44, scope: !4821)
!4837 = !DILocation(line: 225, column: 16, scope: !4821)
!4838 = !DILocation(line: 225, column: 14, scope: !4821)
!4839 = !DILocation(line: 227, column: 12, scope: !4821)
!4840 = !DILocation(line: 227, column: 5, scope: !4821)
!4841 = !DILocation(line: 228, column: 1, scope: !4821)
!4842 = distinct !DISubprogram(name: "hal_gpt_init", scope: !573, file: !573, line: 82, type: !4843, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !4847)
!4843 = !DISubroutineType(types: !4844)
!4844 = !{!4845, !4846}
!4845 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_status_t", file: !576, line: 393, baseType: !575)
!4846 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_port_t", file: !423, line: 663, baseType: !583)
!4847 = !{!4848}
!4848 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4842, file: !573, line: 82, type: !4846)
!4849 = !DILocation(line: 0, scope: !4842)
!4850 = !DILocation(line: 84, column: 9, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4842, file: !573, line: 84, column: 9)
!4852 = !DILocation(line: 84, column: 33, scope: !4851)
!4853 = !DILocation(line: 84, column: 9, scope: !4842)
!4854 = !DILocation(line: 88, column: 9, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4842, file: !573, line: 88, column: 9)
!4856 = !DILocation(line: 88, column: 9, scope: !4842)
!4857 = !DILocation(line: 89, column: 9, scope: !4858)
!4858 = distinct !DILexicalBlock(scope: !4855, file: !573, line: 88, column: 50)
!4859 = !DILocation(line: 90, column: 9, scope: !4858)
!4860 = !DILocation(line: 92, column: 12, scope: !4842)
!4861 = !DILocation(line: 92, column: 5, scope: !4842)
!4862 = !DILocation(line: 96, column: 43, scope: !4842)
!4863 = !DILocation(line: 98, column: 5, scope: !4842)
!4864 = !DILocation(line: 99, column: 1, scope: !4842)
!4865 = distinct !DISubprogram(name: "hal_gpt_is_port_valid", scope: !573, file: !573, line: 63, type: !4866, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !4868)
!4866 = !DISubroutineType(types: !4867)
!4867 = !{!477, !4846}
!4868 = !{!4869}
!4869 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4865, file: !573, line: 63, type: !4846)
!4870 = !DILocation(line: 0, scope: !4865)
!4871 = !DILocation(line: 65, column: 19, scope: !4872)
!4872 = distinct !DILexicalBlock(scope: !4865, file: !573, line: 65, column: 9)
!4873 = !DILocation(line: 65, column: 34, scope: !4872)
!4874 = !DILocation(line: 70, column: 1, scope: !4865)
!4875 = distinct !DISubprogram(name: "hal_gpt_deinit", scope: !573, file: !573, line: 101, type: !4843, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !4876)
!4876 = !{!4877}
!4877 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4875, file: !573, line: 101, type: !4846)
!4878 = !DILocation(line: 0, scope: !4875)
!4879 = !DILocation(line: 103, column: 9, scope: !4880)
!4880 = distinct !DILexicalBlock(scope: !4875, file: !573, line: 103, column: 9)
!4881 = !DILocation(line: 103, column: 9, scope: !4875)
!4882 = !DILocation(line: 104, column: 9, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4880, file: !573, line: 103, column: 50)
!4884 = !DILocation(line: 105, column: 9, scope: !4883)
!4885 = !DILocation(line: 108, column: 9, scope: !4886)
!4886 = distinct !DILexicalBlock(scope: !4875, file: !573, line: 108, column: 9)
!4887 = !DILocation(line: 108, column: 33, scope: !4886)
!4888 = !DILocation(line: 108, column: 48, scope: !4886)
!4889 = !DILocation(line: 108, column: 9, scope: !4875)
!4890 = !DILocation(line: 109, column: 9, scope: !4891)
!4891 = distinct !DILexicalBlock(scope: !4886, file: !573, line: 108, column: 68)
!4892 = !DILocation(line: 110, column: 9, scope: !4891)
!4893 = !DILocation(line: 113, column: 12, scope: !4875)
!4894 = !DILocation(line: 113, column: 5, scope: !4875)
!4895 = !DILocation(line: 116, column: 29, scope: !4875)
!4896 = !DILocation(line: 116, column: 43, scope: !4875)
!4897 = !DILocation(line: 117, column: 5, scope: !4875)
!4898 = !DILocation(line: 118, column: 1, scope: !4875)
!4899 = distinct !DISubprogram(name: "hal_gpt_get_free_run_count", scope: !573, file: !573, line: 120, type: !4900, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !4903)
!4900 = !DISubroutineType(types: !4901)
!4901 = !{!4845, !4902, !3560}
!4902 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_clock_source_t", file: !423, line: 674, baseType: !594)
!4903 = !{!4904, !4905}
!4904 = !DILocalVariable(name: "clock_source", arg: 1, scope: !4899, file: !573, line: 120, type: !4902)
!4905 = !DILocalVariable(name: "count", arg: 2, scope: !4899, file: !573, line: 120, type: !3560)
!4906 = !DILocation(line: 0, scope: !4899)
!4907 = !DILocation(line: 122, column: 9, scope: !4899)
!4908 = !DILocation(line: 123, column: 50, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4910, file: !573, line: 123, column: 13)
!4910 = distinct !DILexicalBlock(scope: !4911, file: !573, line: 122, column: 51)
!4911 = distinct !DILexicalBlock(scope: !4899, file: !573, line: 122, column: 9)
!4912 = !DILocation(line: 123, column: 65, scope: !4909)
!4913 = !DILocation(line: 123, column: 13, scope: !4910)
!4914 = !DILocation(line: 124, column: 13, scope: !4915)
!4915 = distinct !DILexicalBlock(scope: !4909, file: !573, line: 123, column: 86)
!4916 = !DILocation(line: 125, column: 9, scope: !4915)
!4917 = !DILocation(line: 126, column: 18, scope: !4910)
!4918 = !DILocation(line: 126, column: 16, scope: !4910)
!4919 = !DILocation(line: 127, column: 49, scope: !4910)
!4920 = !DILocation(line: 128, column: 5, scope: !4910)
!4921 = !DILocation(line: 129, column: 50, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4923, file: !573, line: 129, column: 13)
!4923 = distinct !DILexicalBlock(scope: !4924, file: !573, line: 128, column: 57)
!4924 = distinct !DILexicalBlock(scope: !4911, file: !573, line: 128, column: 16)
!4925 = !DILocation(line: 129, column: 65, scope: !4922)
!4926 = !DILocation(line: 129, column: 13, scope: !4923)
!4927 = !DILocation(line: 130, column: 13, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !4922, file: !573, line: 129, column: 86)
!4929 = !DILocation(line: 131, column: 9, scope: !4928)
!4930 = !DILocation(line: 132, column: 18, scope: !4923)
!4931 = !DILocation(line: 132, column: 46, scope: !4923)
!4932 = !DILocation(line: 132, column: 65, scope: !4923)
!4933 = !DILocation(line: 132, column: 43, scope: !4923)
!4934 = !DILocation(line: 132, column: 16, scope: !4923)
!4935 = !DILocation(line: 133, column: 49, scope: !4923)
!4936 = !DILocation(line: 134, column: 5, scope: !4923)
!4937 = !DILocation(line: 135, column: 50, scope: !4938)
!4938 = distinct !DILexicalBlock(scope: !4939, file: !573, line: 135, column: 13)
!4939 = distinct !DILexicalBlock(scope: !4940, file: !573, line: 134, column: 58)
!4940 = distinct !DILexicalBlock(scope: !4924, file: !573, line: 134, column: 16)
!4941 = !DILocation(line: 135, column: 65, scope: !4938)
!4942 = !DILocation(line: 135, column: 13, scope: !4939)
!4943 = !DILocation(line: 136, column: 13, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4938, file: !573, line: 135, column: 86)
!4945 = !DILocation(line: 137, column: 9, scope: !4944)
!4946 = !DILocation(line: 138, column: 18, scope: !4939)
!4947 = !DILocation(line: 138, column: 16, scope: !4939)
!4948 = !DILocation(line: 139, column: 49, scope: !4939)
!4949 = !DILocation(line: 141, column: 9, scope: !4950)
!4950 = distinct !DILexicalBlock(scope: !4940, file: !573, line: 140, column: 11)
!4951 = !DILocation(line: 142, column: 9, scope: !4950)
!4952 = !DILocation(line: 146, column: 1, scope: !4899)
!4953 = distinct !DISubprogram(name: "hal_gpt_get_duration_count", scope: !573, file: !573, line: 148, type: !4954, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !4956)
!4954 = !DISubroutineType(types: !4955)
!4955 = !{!4845, !204, !204, !3560}
!4956 = !{!4957, !4958, !4959}
!4957 = !DILocalVariable(name: "start_count", arg: 1, scope: !4953, file: !573, line: 148, type: !204)
!4958 = !DILocalVariable(name: "end_count", arg: 2, scope: !4953, file: !573, line: 148, type: !204)
!4959 = !DILocalVariable(name: "duration_count", arg: 3, scope: !4953, file: !573, line: 148, type: !3560)
!4960 = !DILocation(line: 0, scope: !4953)
!4961 = !DILocation(line: 150, column: 24, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4953, file: !573, line: 150, column: 9)
!4963 = !DILocation(line: 150, column: 9, scope: !4953)
!4964 = !DILocation(line: 0, scope: !4965)
!4965 = distinct !DILexicalBlock(scope: !4953, file: !573, line: 154, column: 9)
!4966 = !DILocation(line: 160, column: 5, scope: !4953)
!4967 = !DILocation(line: 161, column: 1, scope: !4953)
!4968 = distinct !DISubprogram(name: "hal_gpt_get_running_status", scope: !573, file: !573, line: 163, type: !4969, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !4972)
!4969 = !DISubroutineType(types: !4970)
!4970 = !{!4845, !4846, !4971}
!4971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 32)
!4972 = !{!4973, !4974}
!4973 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4968, file: !573, line: 163, type: !4846)
!4974 = !DILocalVariable(name: "running_status", arg: 2, scope: !4968, file: !573, line: 164, type: !4971)
!4975 = !DILocation(line: 0, scope: !4968)
!4976 = !DILocation(line: 166, column: 18, scope: !4977)
!4977 = distinct !DILexicalBlock(scope: !4968, file: !573, line: 166, column: 9)
!4978 = !DILocation(line: 166, column: 9, scope: !4968)
!4979 = !DILocation(line: 167, column: 9, scope: !4980)
!4980 = distinct !DILexicalBlock(scope: !4977, file: !573, line: 166, column: 34)
!4981 = !DILocation(line: 168, column: 9, scope: !4980)
!4982 = !DILocation(line: 170, column: 47, scope: !4968)
!4983 = !DILocation(line: 170, column: 21, scope: !4968)
!4984 = !DILocation(line: 171, column: 5, scope: !4968)
!4985 = !DILocation(line: 172, column: 1, scope: !4968)
!4986 = distinct !DISubprogram(name: "hal_gpt_register_callback", scope: !573, file: !573, line: 174, type: !4987, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !4989)
!4987 = !DISubroutineType(types: !4988)
!4988 = !{!4845, !4846, !616, !464}
!4989 = !{!4990, !4991, !4992}
!4990 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4986, file: !573, line: 174, type: !4846)
!4991 = !DILocalVariable(name: "callback", arg: 2, scope: !4986, file: !573, line: 175, type: !616)
!4992 = !DILocalVariable(name: "user_data", arg: 3, scope: !4986, file: !573, line: 176, type: !464)
!4993 = !DILocation(line: 0, scope: !4986)
!4994 = !DILocation(line: 178, column: 9, scope: !4995)
!4995 = distinct !DILexicalBlock(scope: !4986, file: !573, line: 178, column: 9)
!4996 = !DILocation(line: 178, column: 9, scope: !4986)
!4997 = !DILocation(line: 179, column: 9, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !4995, file: !573, line: 178, column: 50)
!4999 = !DILocation(line: 180, column: 9, scope: !4998)
!5000 = !DILocation(line: 182, column: 33, scope: !5001)
!5001 = distinct !DILexicalBlock(scope: !4986, file: !573, line: 182, column: 9)
!5002 = !DILocation(line: 182, column: 47, scope: !5001)
!5003 = !DILocation(line: 182, column: 9, scope: !4986)
!5004 = !DILocation(line: 185, column: 18, scope: !5005)
!5005 = distinct !DILexicalBlock(scope: !4986, file: !573, line: 185, column: 9)
!5006 = !DILocation(line: 185, column: 9, scope: !4986)
!5007 = !DILocation(line: 188, column: 46, scope: !4986)
!5008 = !DILocation(line: 188, column: 56, scope: !4986)
!5009 = !DILocation(line: 189, column: 46, scope: !4986)
!5010 = !DILocation(line: 189, column: 56, scope: !4986)
!5011 = !DILocation(line: 190, column: 5, scope: !4986)
!5012 = !DILocation(line: 191, column: 1, scope: !4986)
!5013 = distinct !DISubprogram(name: "hal_gpt_start_timer_ms", scope: !573, file: !573, line: 218, type: !5014, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !5017)
!5014 = !DISubroutineType(types: !5015)
!5015 = !{!4845, !4846, !204, !5016}
!5016 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_timer_type_t", file: !576, line: 383, baseType: !599)
!5017 = !{!5018, !5019, !5020}
!5018 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !5013, file: !573, line: 218, type: !4846)
!5019 = !DILocalVariable(name: "timeout_time_ms", arg: 2, scope: !5013, file: !573, line: 218, type: !204)
!5020 = !DILocalVariable(name: "timer_type", arg: 3, scope: !5013, file: !573, line: 218, type: !5016)
!5021 = !DILocation(line: 0, scope: !5013)
!5022 = !DILocation(line: 220, column: 9, scope: !5023)
!5023 = distinct !DILexicalBlock(scope: !5013, file: !573, line: 220, column: 9)
!5024 = !DILocation(line: 220, column: 9, scope: !5013)
!5025 = !DILocation(line: 221, column: 9, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !5023, file: !573, line: 220, column: 50)
!5027 = !DILocation(line: 222, column: 9, scope: !5026)
!5028 = !DILocation(line: 225, column: 33, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !5013, file: !573, line: 225, column: 9)
!5030 = !DILocation(line: 225, column: 47, scope: !5029)
!5031 = !DILocation(line: 225, column: 9, scope: !5013)
!5032 = !DILocation(line: 229, column: 25, scope: !5033)
!5033 = distinct !DILexicalBlock(scope: !5013, file: !573, line: 229, column: 9)
!5034 = !DILocation(line: 229, column: 9, scope: !5013)
!5035 = !DILocation(line: 234, column: 17, scope: !5013)
!5036 = !DILocation(line: 235, column: 17, scope: !5013)
!5037 = !DILocation(line: 236, column: 17, scope: !5013)
!5038 = !DILocation(line: 233, column: 5, scope: !5013)
!5039 = !DILocation(line: 237, column: 5, scope: !5013)
!5040 = !DILocation(line: 238, column: 29, scope: !5013)
!5041 = !DILocation(line: 238, column: 44, scope: !5013)
!5042 = !DILocation(line: 239, column: 5, scope: !5013)
!5043 = !DILocation(line: 240, column: 1, scope: !5013)
!5044 = distinct !DISubprogram(name: "hal_gpt_translate_timeout_time", scope: !573, file: !573, line: 72, type: !5045, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !5047)
!5045 = !DISubroutineType(types: !5046)
!5046 = !{!204, !204}
!5047 = !{!5048}
!5048 = !DILocalVariable(name: "mili_seconds", arg: 1, scope: !5044, file: !573, line: 72, type: !204)
!5049 = !DILocation(line: 0, scope: !5044)
!5050 = !DILocation(line: 74, column: 37, scope: !5044)
!5051 = !DILocation(line: 74, column: 47, scope: !5044)
!5052 = !DILocation(line: 74, column: 63, scope: !5044)
!5053 = !DILocation(line: 74, column: 42, scope: !5044)
!5054 = !DILocation(line: 74, column: 73, scope: !5044)
!5055 = !DILocation(line: 74, column: 89, scope: !5044)
!5056 = !DILocation(line: 74, column: 68, scope: !5044)
!5057 = !DILocation(line: 74, column: 100, scope: !5044)
!5058 = !DILocation(line: 74, column: 116, scope: !5044)
!5059 = !DILocation(line: 74, column: 95, scope: !5044)
!5060 = !DILocation(line: 74, column: 5, scope: !5044)
!5061 = distinct !DISubprogram(name: "hal_gpt_translate_type", scope: !573, file: !573, line: 77, type: !5062, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !5064)
!5062 = !DISubroutineType(types: !5063)
!5063 = !{!477, !5016}
!5064 = !{!5065}
!5065 = !DILocalVariable(name: "type", arg: 1, scope: !5061, file: !573, line: 77, type: !5016)
!5066 = !DILocation(line: 0, scope: !5061)
!5067 = !DILocation(line: 79, column: 38, scope: !5061)
!5068 = !DILocation(line: 79, column: 5, scope: !5061)
!5069 = distinct !DISubprogram(name: "hal_gpt_map_callback", scope: !573, file: !573, line: 213, type: !5070, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !5073)
!5070 = !DISubroutineType(types: !5071)
!5071 = !{!5072, !4846}
!5072 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_internal_callback_t", file: !573, line: 211, baseType: !74)
!5073 = !{!5074}
!5074 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !5069, file: !573, line: 213, type: !4846)
!5075 = !DILocation(line: 0, scope: !5069)
!5076 = !DILocation(line: 215, column: 23, scope: !5069)
!5077 = !DILocation(line: 215, column: 12, scope: !5069)
!5078 = !DILocation(line: 215, column: 5, scope: !5069)
!5079 = distinct !DISubprogram(name: "hal_gpt_callback0", scope: !573, file: !573, line: 193, type: !75, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !5080)
!5080 = !{!5081}
!5081 = !DILocalVariable(name: "context", scope: !5079, file: !573, line: 195, type: !5082)
!5082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 32)
!5083 = !DILocation(line: 196, column: 26, scope: !5084)
!5084 = distinct !DILexicalBlock(scope: !5079, file: !573, line: 196, column: 9)
!5085 = !DILocation(line: 196, column: 14, scope: !5084)
!5086 = !DILocation(line: 196, column: 9, scope: !5079)
!5087 = !DILocation(line: 197, column: 36, scope: !5088)
!5088 = distinct !DILexicalBlock(scope: !5084, file: !573, line: 196, column: 36)
!5089 = !DILocation(line: 197, column: 9, scope: !5088)
!5090 = !DILocation(line: 198, column: 5, scope: !5088)
!5091 = !DILocation(line: 199, column: 45, scope: !5079)
!5092 = !DILocation(line: 200, column: 1, scope: !5079)
!5093 = distinct !DISubprogram(name: "hal_gpt_callback1", scope: !573, file: !573, line: 202, type: !75, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !5094)
!5094 = !{!5095}
!5095 = !DILocalVariable(name: "context", scope: !5093, file: !573, line: 204, type: !5082)
!5096 = !DILocation(line: 205, column: 26, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !5093, file: !573, line: 205, column: 9)
!5098 = !DILocation(line: 205, column: 14, scope: !5097)
!5099 = !DILocation(line: 205, column: 9, scope: !5093)
!5100 = !DILocation(line: 206, column: 36, scope: !5101)
!5101 = distinct !DILexicalBlock(scope: !5097, file: !573, line: 205, column: 36)
!5102 = !DILocation(line: 206, column: 9, scope: !5101)
!5103 = !DILocation(line: 207, column: 5, scope: !5101)
!5104 = !DILocation(line: 208, column: 45, scope: !5093)
!5105 = !DILocation(line: 209, column: 1, scope: !5093)
!5106 = distinct !DISubprogram(name: "hal_gpt_stop_timer", scope: !573, file: !573, line: 242, type: !4843, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !5107)
!5107 = !{!5108}
!5108 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !5106, file: !573, line: 242, type: !4846)
!5109 = !DILocation(line: 0, scope: !5106)
!5110 = !DILocation(line: 244, column: 9, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5106, file: !573, line: 244, column: 9)
!5112 = !DILocation(line: 244, column: 9, scope: !5106)
!5113 = !DILocation(line: 245, column: 9, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !5111, file: !573, line: 244, column: 50)
!5115 = !DILocation(line: 246, column: 9, scope: !5114)
!5116 = !DILocation(line: 248, column: 5, scope: !5106)
!5117 = !DILocation(line: 249, column: 29, scope: !5106)
!5118 = !DILocation(line: 249, column: 44, scope: !5106)
!5119 = !DILocation(line: 250, column: 5, scope: !5106)
!5120 = !DILocation(line: 251, column: 1, scope: !5106)
!5121 = distinct !DISubprogram(name: "hal_gpt_delay_ms", scope: !573, file: !573, line: 253, type: !5122, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !5124)
!5122 = !DISubroutineType(types: !5123)
!5123 = !{!4845, !204}
!5124 = !{!5125}
!5125 = !DILocalVariable(name: "ms", arg: 1, scope: !5121, file: !573, line: 253, type: !204)
!5126 = !DILocation(line: 0, scope: !5121)
!5127 = !DILocation(line: 255, column: 46, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !5121, file: !573, line: 255, column: 9)
!5129 = !DILocation(line: 255, column: 61, scope: !5128)
!5130 = !DILocation(line: 255, column: 9, scope: !5121)
!5131 = !DILocation(line: 256, column: 9, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5128, file: !573, line: 255, column: 82)
!5133 = !DILocation(line: 257, column: 5, scope: !5132)
!5134 = !DILocation(line: 258, column: 5, scope: !5121)
!5135 = !DILocation(line: 259, column: 57, scope: !5121)
!5136 = !DILocation(line: 260, column: 5, scope: !5121)
!5137 = distinct !DISubprogram(name: "hal_gpt_delay_us", scope: !573, file: !573, line: 264, type: !5122, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !572, retainedNodes: !5138)
!5138 = !{!5139}
!5139 = !DILocalVariable(name: "us", arg: 1, scope: !5137, file: !573, line: 264, type: !204)
!5140 = !DILocation(line: 0, scope: !5137)
!5141 = !DILocation(line: 266, column: 46, scope: !5142)
!5142 = distinct !DILexicalBlock(scope: !5137, file: !573, line: 266, column: 9)
!5143 = !DILocation(line: 266, column: 61, scope: !5142)
!5144 = !DILocation(line: 266, column: 9, scope: !5137)
!5145 = !DILocation(line: 267, column: 9, scope: !5146)
!5146 = distinct !DILexicalBlock(scope: !5142, file: !573, line: 266, column: 82)
!5147 = !DILocation(line: 268, column: 5, scope: !5146)
!5148 = !DILocation(line: 269, column: 5, scope: !5137)
!5149 = !DILocation(line: 270, column: 57, scope: !5137)
!5150 = !DILocation(line: 271, column: 5, scope: !5137)
!5151 = distinct !DISubprogram(name: "hal_uart_init", scope: !622, file: !622, line: 234, type: !5152, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5156)
!5152 = !DISubroutineType(types: !5153)
!5153 = !{!5154, !682, !5155}
!5154 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_status_t", file: !625, line: 351, baseType: !624)
!5155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 32)
!5156 = !{!5157, !5158}
!5157 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5151, file: !622, line: 234, type: !682)
!5158 = !DILocalVariable(name: "uart_config", arg: 2, scope: !5151, file: !622, line: 234, type: !5155)
!5159 = !DILocation(line: 0, scope: !5151)
!5160 = !DILocation(line: 236, column: 10, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !5151, file: !622, line: 236, column: 9)
!5162 = !DILocation(line: 236, column: 9, scope: !5151)
!5163 = !DILocation(line: 239, column: 41, scope: !5164)
!5164 = distinct !DILexicalBlock(scope: !5151, file: !622, line: 239, column: 9)
!5165 = !DILocation(line: 239, column: 9, scope: !5151)
!5166 = !DILocation(line: 242, column: 5, scope: !5151)
!5167 = !DILocation(line: 243, column: 45, scope: !5151)
!5168 = !DILocation(line: 243, column: 12, scope: !5151)
!5169 = !DILocation(line: 244, column: 12, scope: !5151)
!5170 = !DILocation(line: 243, column: 5, scope: !5151)
!5171 = !DILocation(line: 245, column: 58, scope: !5151)
!5172 = !DILocation(line: 246, column: 30, scope: !5151)
!5173 = !{i32 0, i32 2}
!5174 = !DILocation(line: 246, column: 5, scope: !5151)
!5175 = !DILocation(line: 247, column: 5, scope: !5151)
!5176 = !DILocation(line: 249, column: 31, scope: !5177)
!5177 = distinct !DILexicalBlock(scope: !5151, file: !622, line: 249, column: 9)
!5178 = !DILocation(line: 249, column: 28, scope: !5177)
!5179 = !DILocation(line: 261, column: 1, scope: !5151)
!5180 = distinct !DISubprogram(name: "hal_uart_is_config_valid", scope: !622, file: !622, line: 93, type: !5181, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5185)
!5181 = !DISubroutineType(types: !5182)
!5182 = !{!477, !682, !5183}
!5183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5184, size: 32)
!5184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !693)
!5185 = !{!5186, !5187}
!5186 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5180, file: !622, line: 93, type: !682)
!5187 = !DILocalVariable(name: "uart_config", arg: 2, scope: !5180, file: !622, line: 93, type: !5183)
!5188 = !DILocation(line: 0, scope: !5180)
!5189 = !DILocation(line: 95, column: 10, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5180, file: !622, line: 95, column: 9)
!5191 = !DILocation(line: 95, column: 9, scope: !5180)
!5192 = !DILocation(line: 101, column: 23, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5180, file: !622, line: 101, column: 9)
!5194 = !DILocation(line: 101, column: 32, scope: !5193)
!5195 = !DILocation(line: 101, column: 60, scope: !5193)
!5196 = !DILocation(line: 102, column: 27, scope: !5193)
!5197 = !DILocation(line: 102, column: 34, scope: !5193)
!5198 = !DILocation(line: 102, column: 58, scope: !5193)
!5199 = !DILocation(line: 103, column: 27, scope: !5193)
!5200 = !DILocation(line: 103, column: 36, scope: !5193)
!5201 = !DILocation(line: 103, column: 59, scope: !5193)
!5202 = !DILocation(line: 104, column: 27, scope: !5193)
!5203 = !DILocation(line: 104, column: 39, scope: !5193)
!5204 = !DILocation(line: 101, column: 9, scope: !5180)
!5205 = !DILocation(line: 109, column: 1, scope: !5180)
!5206 = distinct !DISubprogram(name: "hal_uart_translate_port", scope: !622, file: !622, line: 139, type: !5207, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5209)
!5207 = !DISubroutineType(types: !5208)
!5208 = !{!3413, !682}
!5209 = !{!5210}
!5210 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5206, file: !622, line: 139, type: !682)
!5211 = !DILocation(line: 0, scope: !5206)
!5212 = !DILocation(line: 141, column: 24, scope: !5206)
!5213 = !DILocation(line: 141, column: 12, scope: !5206)
!5214 = !DILocation(line: 141, column: 5, scope: !5206)
!5215 = distinct !DISubprogram(name: "hal_uart_set_format", scope: !622, file: !622, line: 593, type: !5216, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5218)
!5216 = !DISubroutineType(types: !5217)
!5217 = !{!5154, !682, !5183}
!5218 = !{!5219, !5220}
!5219 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5215, file: !622, line: 593, type: !682)
!5220 = !DILocalVariable(name: "config", arg: 2, scope: !5215, file: !622, line: 593, type: !5183)
!5221 = !DILocation(line: 0, scope: !5215)
!5222 = !DILocation(line: 595, column: 10, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !5215, file: !622, line: 595, column: 9)
!5224 = !DILocation(line: 595, column: 9, scope: !5215)
!5225 = !DILocation(line: 598, column: 45, scope: !5215)
!5226 = !DILocation(line: 598, column: 12, scope: !5215)
!5227 = !DILocation(line: 598, column: 59, scope: !5215)
!5228 = !DILocation(line: 598, column: 5, scope: !5215)
!5229 = !DILocation(line: 599, column: 23, scope: !5215)
!5230 = !DILocation(line: 600, column: 59, scope: !5215)
!5231 = !DILocation(line: 600, column: 23, scope: !5215)
!5232 = !DILocation(line: 601, column: 62, scope: !5215)
!5233 = !DILocation(line: 601, column: 23, scope: !5215)
!5234 = !DILocation(line: 602, column: 57, scope: !5215)
!5235 = !DILocation(line: 602, column: 23, scope: !5215)
!5236 = !DILocation(line: 603, column: 58, scope: !5215)
!5237 = !DILocation(line: 603, column: 23, scope: !5215)
!5238 = !DILocation(line: 599, column: 5, scope: !5215)
!5239 = !DILocation(line: 604, column: 5, scope: !5215)
!5240 = !DILocation(line: 605, column: 1, scope: !5215)
!5241 = distinct !DISubprogram(name: "hal_uart_translate_baudrate", scope: !622, file: !622, line: 145, type: !5242, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5244)
!5242 = !DISubroutineType(types: !5243)
!5243 = !{!204, !697}
!5244 = !{!5245, !5246}
!5245 = !DILocalVariable(name: "bandrate", arg: 1, scope: !5241, file: !622, line: 145, type: !697)
!5246 = !DILocalVariable(name: "baudrate_tbl", scope: !5241, file: !622, line: 147, type: !5247)
!5247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 416, elements: !5248)
!5248 = !{!5249}
!5249 = !DISubrange(count: 13)
!5250 = !DILocation(line: 0, scope: !5241)
!5251 = !DILocation(line: 147, column: 14, scope: !5241)
!5252 = !DILocation(line: 151, column: 12, scope: !5241)
!5253 = !DILocation(line: 151, column: 5, scope: !5241)
!5254 = distinct !DISubprogram(name: "hal_uart_translate_word_length", scope: !622, file: !622, line: 155, type: !5255, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5257)
!5255 = !DISubroutineType(types: !5256)
!5256 = !{!3483, !699}
!5257 = !{!5258, !5259}
!5258 = !DILocalVariable(name: "word_length", arg: 1, scope: !5254, file: !622, line: 155, type: !699)
!5259 = !DILocalVariable(name: "databit_tbl", scope: !5254, file: !622, line: 157, type: !5260)
!5260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3483, size: 64, elements: !276)
!5261 = !DILocation(line: 0, scope: !5254)
!5262 = !DILocation(line: 157, column: 14, scope: !5254)
!5263 = !DILocation(line: 160, column: 12, scope: !5254)
!5264 = !DILocation(line: 160, column: 5, scope: !5254)
!5265 = distinct !DISubprogram(name: "hal_uart_translate_parity", scope: !622, file: !622, line: 164, type: !5266, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5268)
!5266 = !DISubroutineType(types: !5267)
!5267 = !{!3483, !703}
!5268 = !{!5269, !5270}
!5269 = !DILocalVariable(name: "parity", arg: 1, scope: !5265, file: !622, line: 164, type: !703)
!5270 = !DILocalVariable(name: "parity_tbl", scope: !5265, file: !622, line: 166, type: !5271)
!5271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3483, size: 80, elements: !280)
!5272 = !DILocation(line: 0, scope: !5265)
!5273 = !DILocation(line: 166, column: 14, scope: !5265)
!5274 = !DILocation(line: 169, column: 12, scope: !5265)
!5275 = !DILocation(line: 169, column: 5, scope: !5265)
!5276 = distinct !DISubprogram(name: "hal_uart_translate_stopbit", scope: !622, file: !622, line: 173, type: !5277, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5279)
!5277 = !DISubroutineType(types: !5278)
!5278 = !{!3483, !701}
!5279 = !{!5280, !5281}
!5280 = !DILocalVariable(name: "stopbit", arg: 1, scope: !5276, file: !622, line: 173, type: !701)
!5281 = !DILocalVariable(name: "stopbit_tbl", scope: !5276, file: !622, line: 175, type: !5282)
!5282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3483, size: 48, elements: !903)
!5283 = !DILocation(line: 0, scope: !5276)
!5284 = !DILocation(line: 175, column: 14, scope: !5276)
!5285 = !DILocation(line: 178, column: 12, scope: !5276)
!5286 = !DILocation(line: 178, column: 5, scope: !5276)
!5287 = distinct !DISubprogram(name: "hal_uart_is_port_valid", scope: !622, file: !622, line: 87, type: !5288, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5290)
!5288 = !DISubroutineType(types: !5289)
!5289 = !{!477, !682}
!5290 = !{!5291}
!5291 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5287, file: !622, line: 87, type: !682)
!5292 = !DILocation(line: 0, scope: !5287)
!5293 = !DILocation(line: 89, column: 23, scope: !5287)
!5294 = !DILocation(line: 89, column: 5, scope: !5287)
!5295 = distinct !DISubprogram(name: "hal_uart_deinit", scope: !622, file: !622, line: 264, type: !5296, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5298)
!5296 = !DISubroutineType(types: !5297)
!5297 = !{!5154, !682}
!5298 = !{!5299}
!5299 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5295, file: !622, line: 264, type: !682)
!5300 = !DILocation(line: 0, scope: !5295)
!5301 = !DILocation(line: 266, column: 10, scope: !5302)
!5302 = distinct !DILexicalBlock(scope: !5295, file: !622, line: 266, column: 9)
!5303 = !DILocation(line: 266, column: 9, scope: !5295)
!5304 = !DILocation(line: 269, column: 41, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5295, file: !622, line: 269, column: 9)
!5306 = !DILocation(line: 269, column: 62, scope: !5305)
!5307 = !DILocation(line: 269, column: 9, scope: !5295)
!5308 = !DILocation(line: 272, column: 5, scope: !5295)
!5309 = !DILocation(line: 275, column: 22, scope: !5295)
!5310 = !DILocation(line: 275, column: 5, scope: !5295)
!5311 = !DILocation(line: 284, column: 5, scope: !5295)
!5312 = !DILocation(line: 286, column: 5, scope: !5295)
!5313 = !DILocation(line: 287, column: 1, scope: !5295)
!5314 = distinct !DISubprogram(name: "hal_uart_put_char", scope: !622, file: !622, line: 290, type: !5315, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5317)
!5315 = !DISubroutineType(types: !5316)
!5316 = !{null, !682, !674}
!5317 = !{!5318, !5319, !5320}
!5318 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5314, file: !622, line: 290, type: !682)
!5319 = !DILocalVariable(name: "byte", arg: 2, scope: !5314, file: !622, line: 290, type: !674)
!5320 = !DILocalVariable(name: "int_no", scope: !5314, file: !622, line: 292, type: !3413)
!5321 = !DILocation(line: 0, scope: !5314)
!5322 = !DILocation(line: 292, column: 26, scope: !5314)
!5323 = !DILocation(line: 294, column: 16, scope: !5324)
!5324 = distinct !DILexicalBlock(scope: !5314, file: !622, line: 294, column: 9)
!5325 = !DILocation(line: 294, column: 9, scope: !5314)
!5326 = !DILocation(line: 295, column: 9, scope: !5327)
!5327 = distinct !DILexicalBlock(scope: !5324, file: !622, line: 294, column: 34)
!5328 = !DILocation(line: 296, column: 5, scope: !5327)
!5329 = !DILocation(line: 299, column: 1, scope: !5314)
!5330 = distinct !DISubprogram(name: "hal_uart_send_polling", scope: !622, file: !622, line: 302, type: !5331, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5333)
!5331 = !DISubroutineType(types: !5332)
!5332 = !{!204, !682, !3620, !204}
!5333 = !{!5334, !5335, !5336, !5337, !5338}
!5334 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5330, file: !622, line: 302, type: !682)
!5335 = !DILocalVariable(name: "data", arg: 2, scope: !5330, file: !622, line: 302, type: !3620)
!5336 = !DILocalVariable(name: "size", arg: 3, scope: !5330, file: !622, line: 302, type: !204)
!5337 = !DILocalVariable(name: "int_no", scope: !5330, file: !622, line: 304, type: !3413)
!5338 = !DILocalVariable(name: "index", scope: !5330, file: !622, line: 305, type: !204)
!5339 = !DILocation(line: 0, scope: !5330)
!5340 = !DILocation(line: 304, column: 26, scope: !5330)
!5341 = !DILocation(line: 307, column: 14, scope: !5342)
!5342 = distinct !DILexicalBlock(scope: !5330, file: !622, line: 307, column: 9)
!5343 = !DILocation(line: 307, column: 9, scope: !5330)
!5344 = !DILocation(line: 313, column: 53, scope: !5345)
!5345 = distinct !DILexicalBlock(scope: !5346, file: !622, line: 312, column: 48)
!5346 = distinct !DILexicalBlock(scope: !5347, file: !622, line: 312, column: 9)
!5347 = distinct !DILexicalBlock(scope: !5348, file: !622, line: 312, column: 9)
!5348 = distinct !DILexicalBlock(scope: !5349, file: !622, line: 311, column: 33)
!5349 = distinct !DILexicalBlock(scope: !5330, file: !622, line: 311, column: 9)
!5350 = !DILocation(line: 313, column: 13, scope: !5345)
!5351 = !DILocation(line: 312, column: 44, scope: !5346)
!5352 = !DILocation(line: 312, column: 31, scope: !5346)
!5353 = !DILocation(line: 312, column: 9, scope: !5347)
!5354 = distinct !{!5354, !5353, !5355}
!5355 = !DILocation(line: 314, column: 9, scope: !5347)
!5356 = !DILocation(line: 318, column: 1, scope: !5330)
!5357 = distinct !DISubprogram(name: "hal_uart_send_dma", scope: !622, file: !622, line: 320, type: !5331, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5358)
!5358 = !{!5359, !5360, !5361, !5362, !5363, !5364}
!5359 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5357, file: !622, line: 320, type: !682)
!5360 = !DILocalVariable(name: "data", arg: 2, scope: !5357, file: !622, line: 320, type: !3620)
!5361 = !DILocalVariable(name: "size", arg: 3, scope: !5357, file: !622, line: 320, type: !204)
!5362 = !DILocalVariable(name: "actual_space", scope: !5357, file: !622, line: 322, type: !204)
!5363 = !DILocalVariable(name: "send_size", scope: !5357, file: !622, line: 322, type: !204)
!5364 = !DILocalVariable(name: "ch", scope: !5357, file: !622, line: 323, type: !5365)
!5365 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_VFIFO_CHANNEL", file: !392, line: 144, baseType: !391)
!5366 = !DILocation(line: 0, scope: !5357)
!5367 = !DILocation(line: 322, column: 5, scope: !5357)
!5368 = !DILocation(line: 328, column: 10, scope: !5369)
!5369 = distinct !DILexicalBlock(scope: !5357, file: !622, line: 328, column: 9)
!5370 = !DILocation(line: 328, column: 9, scope: !5357)
!5371 = !DILocation(line: 332, column: 15, scope: !5372)
!5372 = distinct !DILexicalBlock(scope: !5357, file: !622, line: 332, column: 9)
!5373 = !DILocation(line: 332, column: 24, scope: !5372)
!5374 = !DILocation(line: 335, column: 42, scope: !5375)
!5375 = distinct !DILexicalBlock(scope: !5357, file: !622, line: 335, column: 9)
!5376 = !DILocation(line: 335, column: 9, scope: !5357)
!5377 = !DILocation(line: 349, column: 30, scope: !5357)
!5378 = !DILocation(line: 349, column: 5, scope: !5357)
!5379 = !DILocation(line: 350, column: 9, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5357, file: !622, line: 350, column: 9)
!5381 = !DILocation(line: 350, column: 22, scope: !5380)
!5382 = !DILocation(line: 355, column: 5, scope: !5357)
!5383 = !DILocation(line: 357, column: 22, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5357, file: !622, line: 357, column: 9)
!5385 = !DILocation(line: 357, column: 19, scope: !5384)
!5386 = !DILocation(line: 357, column: 9, scope: !5357)
!5387 = !DILocation(line: 358, column: 14, scope: !5388)
!5388 = distinct !DILexicalBlock(scope: !5384, file: !622, line: 357, column: 36)
!5389 = !{i32 14, i32 18}
!5390 = !DILocation(line: 359, column: 9, scope: !5388)
!5391 = !DILocation(line: 360, column: 5, scope: !5388)
!5392 = !DILocation(line: 362, column: 1, scope: !5357)
!5393 = distinct !DISubprogram(name: "uart_channel_to_dma_channel", scope: !622, file: !622, line: 191, type: !5394, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5396)
!5394 = !DISubroutineType(types: !5395)
!5395 = !{!5365, !3413, !477}
!5396 = !{!5397, !5398, !5399}
!5397 = !DILocalVariable(name: "port", arg: 1, scope: !5393, file: !622, line: 191, type: !3413)
!5398 = !DILocalVariable(name: "is_rx", arg: 2, scope: !5393, file: !622, line: 191, type: !477)
!5399 = !DILocalVariable(name: "ch", scope: !5393, file: !622, line: 193, type: !5365)
!5400 = !DILocation(line: 0, scope: !5393)
!5401 = !DILocation(line: 195, column: 14, scope: !5402)
!5402 = distinct !DILexicalBlock(scope: !5393, file: !622, line: 195, column: 9)
!5403 = !DILocation(line: 195, column: 9, scope: !5393)
!5404 = !DILocation(line: 209, column: 5, scope: !5393)
!5405 = distinct !DISubprogram(name: "hal_uart_get_char", scope: !622, file: !622, line: 365, type: !5406, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5408)
!5406 = !DISubroutineType(types: !5407)
!5407 = !{!674, !682}
!5408 = !{!5409, !5410}
!5409 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5405, file: !622, line: 365, type: !682)
!5410 = !DILocalVariable(name: "int_no", scope: !5405, file: !622, line: 367, type: !3413)
!5411 = !DILocation(line: 0, scope: !5405)
!5412 = !DILocation(line: 367, column: 26, scope: !5405)
!5413 = !DILocation(line: 369, column: 16, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !5405, file: !622, line: 369, column: 9)
!5415 = !DILocation(line: 369, column: 9, scope: !5405)
!5416 = !DILocation(line: 370, column: 22, scope: !5417)
!5417 = distinct !DILexicalBlock(scope: !5414, file: !622, line: 369, column: 33)
!5418 = !DILocation(line: 370, column: 9, scope: !5417)
!5419 = !DILocation(line: 0, scope: !5414)
!5420 = !DILocation(line: 375, column: 1, scope: !5405)
!5421 = distinct !DISubprogram(name: "hal_uart_get_char_unblocking", scope: !622, file: !622, line: 377, type: !5422, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5424)
!5422 = !DISubroutineType(types: !5423)
!5423 = !{!204, !682}
!5424 = !{!5425, !5426}
!5425 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5421, file: !622, line: 377, type: !682)
!5426 = !DILocalVariable(name: "int_no", scope: !5421, file: !622, line: 379, type: !3413)
!5427 = !DILocation(line: 0, scope: !5421)
!5428 = !DILocation(line: 379, column: 26, scope: !5421)
!5429 = !DILocation(line: 381, column: 16, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !5421, file: !622, line: 381, column: 9)
!5431 = !DILocation(line: 381, column: 9, scope: !5421)
!5432 = !DILocation(line: 382, column: 16, scope: !5433)
!5433 = distinct !DILexicalBlock(scope: !5430, file: !622, line: 381, column: 33)
!5434 = !DILocation(line: 382, column: 9, scope: !5433)
!5435 = !DILocation(line: 0, scope: !5430)
!5436 = !DILocation(line: 387, column: 1, scope: !5421)
!5437 = distinct !DISubprogram(name: "hal_uart_receive_polling", scope: !622, file: !622, line: 390, type: !5438, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5440)
!5438 = !DISubroutineType(types: !5439)
!5439 = !{!204, !682, !722, !204}
!5440 = !{!5441, !5442, !5443, !5444, !5445}
!5441 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5437, file: !622, line: 390, type: !682)
!5442 = !DILocalVariable(name: "buffer", arg: 2, scope: !5437, file: !622, line: 390, type: !722)
!5443 = !DILocalVariable(name: "size", arg: 3, scope: !5437, file: !622, line: 390, type: !204)
!5444 = !DILocalVariable(name: "int_no", scope: !5437, file: !622, line: 392, type: !3413)
!5445 = !DILocalVariable(name: "index", scope: !5437, file: !622, line: 393, type: !204)
!5446 = !DILocation(line: 0, scope: !5437)
!5447 = !DILocation(line: 392, column: 26, scope: !5437)
!5448 = !DILocation(line: 395, column: 16, scope: !5449)
!5449 = distinct !DILexicalBlock(scope: !5437, file: !622, line: 395, column: 9)
!5450 = !DILocation(line: 395, column: 9, scope: !5437)
!5451 = !DILocation(line: 401, column: 38, scope: !5452)
!5452 = distinct !DILexicalBlock(scope: !5453, file: !622, line: 400, column: 48)
!5453 = distinct !DILexicalBlock(scope: !5454, file: !622, line: 400, column: 9)
!5454 = distinct !DILexicalBlock(scope: !5455, file: !622, line: 400, column: 9)
!5455 = distinct !DILexicalBlock(scope: !5456, file: !622, line: 399, column: 33)
!5456 = distinct !DILexicalBlock(scope: !5437, file: !622, line: 399, column: 9)
!5457 = !DILocation(line: 401, column: 13, scope: !5452)
!5458 = !DILocation(line: 401, column: 27, scope: !5452)
!5459 = !DILocation(line: 400, column: 44, scope: !5453)
!5460 = !DILocation(line: 400, column: 31, scope: !5453)
!5461 = !DILocation(line: 400, column: 9, scope: !5454)
!5462 = distinct !{!5462, !5461, !5463}
!5463 = !DILocation(line: 402, column: 9, scope: !5454)
!5464 = !DILocation(line: 406, column: 1, scope: !5437)
!5465 = distinct !DISubprogram(name: "hal_uart_receive_dma", scope: !622, file: !622, line: 408, type: !5438, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5466)
!5466 = !{!5467, !5468, !5469, !5470, !5471, !5472}
!5467 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5465, file: !622, line: 408, type: !682)
!5468 = !DILocalVariable(name: "buffer", arg: 2, scope: !5465, file: !622, line: 408, type: !722)
!5469 = !DILocalVariable(name: "size", arg: 3, scope: !5465, file: !622, line: 408, type: !204)
!5470 = !DILocalVariable(name: "actual_size", scope: !5465, file: !622, line: 410, type: !204)
!5471 = !DILocalVariable(name: "receive_size", scope: !5465, file: !622, line: 410, type: !204)
!5472 = !DILocalVariable(name: "ch", scope: !5465, file: !622, line: 411, type: !5365)
!5473 = !DILocation(line: 0, scope: !5465)
!5474 = !DILocation(line: 410, column: 5, scope: !5465)
!5475 = !DILocation(line: 413, column: 10, scope: !5476)
!5476 = distinct !DILexicalBlock(scope: !5465, file: !622, line: 413, column: 9)
!5477 = !DILocation(line: 413, column: 9, scope: !5465)
!5478 = !DILocation(line: 417, column: 17, scope: !5479)
!5479 = distinct !DILexicalBlock(scope: !5465, file: !622, line: 417, column: 9)
!5480 = !DILocation(line: 417, column: 26, scope: !5479)
!5481 = !DILocation(line: 421, column: 30, scope: !5465)
!5482 = !DILocation(line: 421, column: 5, scope: !5465)
!5483 = !DILocation(line: 422, column: 9, scope: !5484)
!5484 = distinct !DILexicalBlock(scope: !5465, file: !622, line: 422, column: 9)
!5485 = !DILocation(line: 422, column: 21, scope: !5484)
!5486 = !DILocation(line: 427, column: 5, scope: !5465)
!5487 = !DILocation(line: 429, column: 25, scope: !5488)
!5488 = distinct !DILexicalBlock(scope: !5465, file: !622, line: 429, column: 9)
!5489 = !DILocation(line: 429, column: 22, scope: !5488)
!5490 = !DILocation(line: 429, column: 9, scope: !5465)
!5491 = !DILocation(line: 430, column: 14, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !5488, file: !622, line: 429, column: 38)
!5493 = !DILocation(line: 431, column: 9, scope: !5492)
!5494 = !DILocation(line: 432, column: 5, scope: !5492)
!5495 = !DILocation(line: 435, column: 1, scope: !5465)
!5496 = distinct !DISubprogram(name: "hal_uart_get_available_send_space", scope: !622, file: !622, line: 438, type: !5422, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5497)
!5497 = !{!5498, !5499}
!5498 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5496, file: !622, line: 438, type: !682)
!5499 = !DILocalVariable(name: "length", scope: !5496, file: !622, line: 440, type: !204)
!5500 = !DILocation(line: 0, scope: !5496)
!5501 = !DILocation(line: 440, column: 5, scope: !5496)
!5502 = !DILocation(line: 440, column: 14, scope: !5496)
!5503 = !DILocation(line: 442, column: 10, scope: !5504)
!5504 = distinct !DILexicalBlock(scope: !5496, file: !622, line: 442, column: 9)
!5505 = !DILocation(line: 442, column: 9, scope: !5496)
!5506 = !DILocation(line: 446, column: 30, scope: !5496)
!5507 = !DILocation(line: 446, column: 5, scope: !5496)
!5508 = !DILocation(line: 447, column: 12, scope: !5496)
!5509 = !DILocation(line: 447, column: 5, scope: !5496)
!5510 = !DILocation(line: 448, column: 1, scope: !5496)
!5511 = distinct !DISubprogram(name: "hal_uart_get_available_receive_bytes", scope: !622, file: !622, line: 451, type: !5422, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5512)
!5512 = !{!5513, !5514}
!5513 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5511, file: !622, line: 451, type: !682)
!5514 = !DILocalVariable(name: "length", scope: !5511, file: !622, line: 453, type: !204)
!5515 = !DILocation(line: 0, scope: !5511)
!5516 = !DILocation(line: 453, column: 5, scope: !5511)
!5517 = !DILocation(line: 453, column: 14, scope: !5511)
!5518 = !DILocation(line: 455, column: 10, scope: !5519)
!5519 = distinct !DILexicalBlock(scope: !5511, file: !622, line: 455, column: 9)
!5520 = !DILocation(line: 455, column: 9, scope: !5511)
!5521 = !DILocation(line: 459, column: 30, scope: !5511)
!5522 = !DILocation(line: 459, column: 5, scope: !5511)
!5523 = !DILocation(line: 461, column: 12, scope: !5511)
!5524 = !DILocation(line: 461, column: 5, scope: !5511)
!5525 = !DILocation(line: 462, column: 1, scope: !5511)
!5526 = distinct !DISubprogram(name: "hal_uart_register_callback", scope: !622, file: !622, line: 543, type: !5527, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5529)
!5527 = !DISubroutineType(types: !5528)
!5528 = !{!5154, !682, !710, !464}
!5529 = !{!5530, !5531, !5532, !5533}
!5530 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5526, file: !622, line: 543, type: !682)
!5531 = !DILocalVariable(name: "user_callback", arg: 2, scope: !5526, file: !622, line: 544, type: !710)
!5532 = !DILocalVariable(name: "user_data", arg: 3, scope: !5526, file: !622, line: 545, type: !464)
!5533 = !DILocalVariable(name: "ch", scope: !5526, file: !622, line: 547, type: !5365)
!5534 = !DILocation(line: 0, scope: !5526)
!5535 = !DILocation(line: 549, column: 10, scope: !5536)
!5536 = distinct !DILexicalBlock(scope: !5526, file: !622, line: 549, column: 9)
!5537 = !DILocation(line: 549, column: 9, scope: !5526)
!5538 = !DILocation(line: 556, column: 53, scope: !5526)
!5539 = !DILocation(line: 556, column: 62, scope: !5526)
!5540 = !DILocation(line: 557, column: 53, scope: !5526)
!5541 = !DILocation(line: 557, column: 63, scope: !5526)
!5542 = !DILocation(line: 558, column: 37, scope: !5526)
!5543 = !DILocation(line: 558, column: 54, scope: !5526)
!5544 = !DILocation(line: 560, column: 39, scope: !5526)
!5545 = !DILocation(line: 561, column: 39, scope: !5526)
!5546 = !DILocation(line: 560, column: 5, scope: !5526)
!5547 = !DILocation(line: 562, column: 5, scope: !5526)
!5548 = !DILocation(line: 564, column: 44, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5526, file: !622, line: 564, column: 9)
!5550 = !DILocation(line: 564, column: 9, scope: !5526)
!5551 = !DILocation(line: 565, column: 9, scope: !5552)
!5552 = distinct !DILexicalBlock(scope: !5549, file: !622, line: 564, column: 59)
!5553 = !DILocation(line: 566, column: 5, scope: !5552)
!5554 = !DILocation(line: 567, column: 9, scope: !5555)
!5555 = distinct !DILexicalBlock(scope: !5549, file: !622, line: 566, column: 12)
!5556 = !DILocation(line: 569, column: 10, scope: !5526)
!5557 = !DILocation(line: 570, column: 5, scope: !5526)
!5558 = !DILocation(line: 578, column: 5, scope: !5526)
!5559 = !DILocation(line: 579, column: 1, scope: !5526)
!5560 = !DILocation(line: 0, scope: !678)
!5561 = !DILocation(line: 539, column: 12, scope: !678)
!5562 = !DILocation(line: 539, column: 5, scope: !678)
!5563 = distinct !DISubprogram(name: "hal_uart_send_callback0", scope: !622, file: !622, line: 511, type: !75, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5564)
!5564 = !{!5565}
!5565 = !DILocalVariable(name: "callback_context", scope: !5566, file: !622, line: 514, type: !5568)
!5566 = distinct !DILexicalBlock(scope: !5567, file: !622, line: 513, column: 60)
!5567 = distinct !DILexicalBlock(scope: !5563, file: !622, line: 513, column: 9)
!5568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 32)
!5569 = !DILocation(line: 513, column: 42, scope: !5567)
!5570 = !DILocation(line: 513, column: 9, scope: !5563)
!5571 = !DILocation(line: 515, column: 39, scope: !5572)
!5572 = distinct !DILexicalBlock(scope: !5566, file: !622, line: 515, column: 13)
!5573 = !DILocation(line: 515, column: 18, scope: !5572)
!5574 = !DILocation(line: 515, column: 13, scope: !5566)
!5575 = !DILocation(line: 516, column: 89, scope: !5576)
!5576 = distinct !DILexicalBlock(scope: !5572, file: !622, line: 515, column: 49)
!5577 = !DILocation(line: 516, column: 13, scope: !5576)
!5578 = !DILocation(line: 517, column: 9, scope: !5576)
!5579 = !DILocation(line: 519, column: 32, scope: !5563)
!5580 = !DILocation(line: 519, column: 5, scope: !5563)
!5581 = !DILocation(line: 520, column: 1, scope: !5563)
!5582 = distinct !DISubprogram(name: "hal_uart_send_callback1", scope: !622, file: !622, line: 523, type: !75, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5583)
!5583 = !{!5584}
!5584 = !DILocalVariable(name: "callback_context", scope: !5585, file: !622, line: 526, type: !5568)
!5585 = distinct !DILexicalBlock(scope: !5586, file: !622, line: 525, column: 60)
!5586 = distinct !DILexicalBlock(scope: !5582, file: !622, line: 525, column: 9)
!5587 = !DILocation(line: 525, column: 42, scope: !5586)
!5588 = !DILocation(line: 525, column: 9, scope: !5582)
!5589 = !DILocation(line: 527, column: 39, scope: !5590)
!5590 = distinct !DILexicalBlock(scope: !5585, file: !622, line: 527, column: 13)
!5591 = !DILocation(line: 527, column: 18, scope: !5590)
!5592 = !DILocation(line: 527, column: 13, scope: !5585)
!5593 = !DILocation(line: 528, column: 89, scope: !5594)
!5594 = distinct !DILexicalBlock(scope: !5590, file: !622, line: 527, column: 49)
!5595 = !DILocation(line: 528, column: 13, scope: !5594)
!5596 = !DILocation(line: 529, column: 9, scope: !5594)
!5597 = !DILocation(line: 531, column: 32, scope: !5582)
!5598 = !DILocation(line: 531, column: 5, scope: !5582)
!5599 = !DILocation(line: 532, column: 1, scope: !5582)
!5600 = distinct !DISubprogram(name: "hal_uart_check_irq_disable", scope: !622, file: !622, line: 464, type: !5601, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5603)
!5601 = !DISubroutineType(types: !5602)
!5602 = !{null, !3413, !477}
!5603 = !{!5604, !5605, !5606, !5607, !5608, !5610}
!5604 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5600, file: !622, line: 464, type: !3413)
!5605 = !DILocalVariable(name: "is_rx", arg: 2, scope: !5600, file: !622, line: 464, type: !477)
!5606 = !DILocalVariable(name: "avail_size", scope: !5600, file: !622, line: 466, type: !204)
!5607 = !DILocalVariable(name: "avail_space", scope: !5600, file: !622, line: 466, type: !204)
!5608 = !DILocalVariable(name: "dma_config", scope: !5600, file: !622, line: 467, type: !5609)
!5609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 32)
!5610 = !DILocalVariable(name: "ch", scope: !5600, file: !622, line: 468, type: !5365)
!5611 = !DILocation(line: 0, scope: !5600)
!5612 = !DILocation(line: 466, column: 5, scope: !5600)
!5613 = !DILocation(line: 471, column: 9, scope: !5600)
!5614 = !DILocation(line: 472, column: 9, scope: !5615)
!5615 = distinct !DILexicalBlock(scope: !5616, file: !622, line: 471, column: 16)
!5616 = distinct !DILexicalBlock(scope: !5600, file: !622, line: 471, column: 9)
!5617 = !DILocation(line: 473, column: 13, scope: !5618)
!5618 = distinct !DILexicalBlock(scope: !5615, file: !622, line: 473, column: 13)
!5619 = !DILocation(line: 473, column: 39, scope: !5618)
!5620 = !DILocation(line: 473, column: 24, scope: !5618)
!5621 = !DILocation(line: 473, column: 13, scope: !5615)
!5622 = !DILocation(line: 478, column: 9, scope: !5623)
!5623 = distinct !DILexicalBlock(scope: !5616, file: !622, line: 477, column: 12)
!5624 = !DILocation(line: 479, column: 13, scope: !5625)
!5625 = distinct !DILexicalBlock(scope: !5623, file: !622, line: 479, column: 13)
!5626 = !DILocation(line: 479, column: 40, scope: !5625)
!5627 = !DILocation(line: 479, column: 77, scope: !5625)
!5628 = !DILocation(line: 479, column: 63, scope: !5625)
!5629 = !DILocation(line: 479, column: 25, scope: !5625)
!5630 = !DILocation(line: 479, column: 13, scope: !5623)
!5631 = !DILocation(line: 0, scope: !5616)
!5632 = !DILocation(line: 484, column: 1, scope: !5600)
!5633 = distinct !DISubprogram(name: "hal_uart_receive_callback0", scope: !622, file: !622, line: 486, type: !75, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5634)
!5634 = !{!5635}
!5635 = !DILocalVariable(name: "callback_context", scope: !5636, file: !622, line: 490, type: !5568)
!5636 = distinct !DILexicalBlock(scope: !5637, file: !622, line: 489, column: 70)
!5637 = distinct !DILexicalBlock(scope: !5633, file: !622, line: 488, column: 9)
!5638 = !DILocation(line: 488, column: 43, scope: !5637)
!5639 = !DILocation(line: 488, column: 61, scope: !5637)
!5640 = !DILocation(line: 489, column: 14, scope: !5637)
!5641 = !DILocation(line: 489, column: 63, scope: !5637)
!5642 = !DILocation(line: 488, column: 9, scope: !5633)
!5643 = !DILocation(line: 491, column: 39, scope: !5644)
!5644 = distinct !DILexicalBlock(scope: !5636, file: !622, line: 491, column: 13)
!5645 = !DILocation(line: 491, column: 18, scope: !5644)
!5646 = !DILocation(line: 491, column: 13, scope: !5636)
!5647 = !DILocation(line: 492, column: 88, scope: !5648)
!5648 = distinct !DILexicalBlock(scope: !5644, file: !622, line: 491, column: 49)
!5649 = !DILocation(line: 492, column: 13, scope: !5648)
!5650 = !DILocation(line: 493, column: 9, scope: !5648)
!5651 = !DILocation(line: 495, column: 32, scope: !5633)
!5652 = !DILocation(line: 495, column: 5, scope: !5633)
!5653 = !DILocation(line: 496, column: 1, scope: !5633)
!5654 = distinct !DISubprogram(name: "hal_uart_receive_callback1", scope: !622, file: !622, line: 499, type: !75, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5655)
!5655 = !{!5656}
!5656 = !DILocalVariable(name: "callback_context", scope: !5657, file: !622, line: 503, type: !5568)
!5657 = distinct !DILexicalBlock(scope: !5658, file: !622, line: 502, column: 70)
!5658 = distinct !DILexicalBlock(scope: !5654, file: !622, line: 501, column: 9)
!5659 = !DILocation(line: 501, column: 43, scope: !5658)
!5660 = !DILocation(line: 501, column: 61, scope: !5658)
!5661 = !DILocation(line: 502, column: 14, scope: !5658)
!5662 = !DILocation(line: 502, column: 63, scope: !5658)
!5663 = !DILocation(line: 501, column: 9, scope: !5654)
!5664 = !DILocation(line: 504, column: 39, scope: !5665)
!5665 = distinct !DILexicalBlock(scope: !5657, file: !622, line: 504, column: 13)
!5666 = !DILocation(line: 504, column: 18, scope: !5665)
!5667 = !DILocation(line: 504, column: 13, scope: !5657)
!5668 = !DILocation(line: 505, column: 88, scope: !5669)
!5669 = distinct !DILexicalBlock(scope: !5665, file: !622, line: 504, column: 49)
!5670 = !DILocation(line: 505, column: 13, scope: !5669)
!5671 = !DILocation(line: 506, column: 9, scope: !5669)
!5672 = !DILocation(line: 508, column: 32, scope: !5654)
!5673 = !DILocation(line: 508, column: 5, scope: !5654)
!5674 = !DILocation(line: 509, column: 1, scope: !5654)
!5675 = distinct !DISubprogram(name: "hal_uart_set_baudrate", scope: !622, file: !622, line: 582, type: !5676, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5678)
!5676 = !DISubroutineType(types: !5677)
!5677 = !{!5154, !682, !697}
!5678 = !{!5679, !5680}
!5679 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5675, file: !622, line: 582, type: !682)
!5680 = !DILocalVariable(name: "baudrate", arg: 2, scope: !5675, file: !622, line: 582, type: !697)
!5681 = !DILocation(line: 0, scope: !5675)
!5682 = !DILocation(line: 584, column: 11, scope: !5683)
!5683 = distinct !DILexicalBlock(scope: !5675, file: !622, line: 584, column: 9)
!5684 = !DILocation(line: 584, column: 46, scope: !5683)
!5685 = !DILocation(line: 588, column: 37, scope: !5675)
!5686 = !DILocation(line: 588, column: 50, scope: !5675)
!5687 = !DILocation(line: 588, column: 59, scope: !5675)
!5688 = !DILocation(line: 589, column: 12, scope: !5675)
!5689 = !DILocation(line: 589, column: 5, scope: !5675)
!5690 = !DILocation(line: 590, column: 1, scope: !5675)
!5691 = distinct !DISubprogram(name: "hal_uart_set_dma", scope: !622, file: !622, line: 608, type: !5692, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5696)
!5692 = !DISubroutineType(types: !5693)
!5693 = !{!5154, !682, !5694}
!5694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5695, size: 32)
!5695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !718)
!5696 = !{!5697, !5698}
!5697 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5691, file: !622, line: 608, type: !682)
!5698 = !DILocalVariable(name: "uart_dma_config", arg: 2, scope: !5691, file: !622, line: 608, type: !5694)
!5699 = !DILocation(line: 0, scope: !5691)
!5700 = !DILocation(line: 610, column: 10, scope: !5701)
!5701 = distinct !DILexicalBlock(scope: !5691, file: !622, line: 610, column: 9)
!5702 = !DILocation(line: 610, column: 9, scope: !5691)
!5703 = !DILocation(line: 614, column: 10, scope: !5704)
!5704 = distinct !DILexicalBlock(scope: !5691, file: !622, line: 614, column: 9)
!5705 = !DILocation(line: 614, column: 9, scope: !5691)
!5706 = !DILocation(line: 618, column: 37, scope: !5691)
!5707 = !DILocation(line: 618, column: 56, scope: !5691)
!5708 = !DILocation(line: 619, column: 45, scope: !5691)
!5709 = !DILocation(line: 619, column: 12, scope: !5691)
!5710 = !DILocation(line: 620, column: 12, scope: !5691)
!5711 = !DILocation(line: 619, column: 5, scope: !5691)
!5712 = !DILocation(line: 621, column: 5, scope: !5691)
!5713 = !DILocation(line: 622, column: 5, scope: !5691)
!5714 = !DILocation(line: 623, column: 33, scope: !5691)
!5715 = !DILocation(line: 624, column: 50, scope: !5691)
!5716 = !DILocation(line: 625, column: 50, scope: !5691)
!5717 = !DILocation(line: 626, column: 50, scope: !5691)
!5718 = !DILocation(line: 627, column: 50, scope: !5691)
!5719 = !DILocation(line: 628, column: 33, scope: !5691)
!5720 = !DILocation(line: 623, column: 5, scope: !5691)
!5721 = !DILocation(line: 630, column: 50, scope: !5691)
!5722 = !DILocation(line: 631, column: 50, scope: !5691)
!5723 = !DILocation(line: 632, column: 50, scope: !5691)
!5724 = !DILocation(line: 629, column: 5, scope: !5691)
!5725 = !DILocation(line: 634, column: 5, scope: !5691)
!5726 = !DILocation(line: 635, column: 1, scope: !5691)
!5727 = distinct !DISubprogram(name: "hal_uart_is_dma_config_valid", scope: !622, file: !622, line: 112, type: !5728, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5730)
!5728 = !DISubroutineType(types: !5729)
!5729 = !{!477, !5694}
!5730 = !{!5731}
!5731 = !DILocalVariable(name: "dma_config", arg: 1, scope: !5727, file: !622, line: 112, type: !5694)
!5732 = !DILocation(line: 0, scope: !5727)
!5733 = !DILocation(line: 114, column: 14, scope: !5734)
!5734 = distinct !DILexicalBlock(scope: !5727, file: !622, line: 114, column: 9)
!5735 = !DILocation(line: 114, column: 9, scope: !5727)
!5736 = !DILocation(line: 117, column: 29, scope: !5737)
!5737 = distinct !DILexicalBlock(scope: !5727, file: !622, line: 117, column: 9)
!5738 = !DILocation(line: 117, column: 14, scope: !5737)
!5739 = !DILocation(line: 117, column: 9, scope: !5727)
!5740 = !DILocation(line: 120, column: 21, scope: !5741)
!5741 = distinct !DILexicalBlock(scope: !5727, file: !622, line: 120, column: 9)
!5742 = !DILocation(line: 120, column: 61, scope: !5741)
!5743 = !DILocation(line: 120, column: 47, scope: !5741)
!5744 = !DILocation(line: 120, column: 9, scope: !5727)
!5745 = !DILocation(line: 123, column: 61, scope: !5746)
!5746 = distinct !DILexicalBlock(scope: !5727, file: !622, line: 123, column: 9)
!5747 = !DILocation(line: 123, column: 47, scope: !5746)
!5748 = !DILocation(line: 123, column: 9, scope: !5727)
!5749 = !DILocation(line: 126, column: 29, scope: !5750)
!5750 = distinct !DILexicalBlock(scope: !5727, file: !622, line: 126, column: 9)
!5751 = !DILocation(line: 126, column: 14, scope: !5750)
!5752 = !DILocation(line: 126, column: 9, scope: !5727)
!5753 = !DILocation(line: 129, column: 21, scope: !5754)
!5754 = distinct !DILexicalBlock(scope: !5727, file: !622, line: 129, column: 9)
!5755 = !DILocation(line: 129, column: 58, scope: !5754)
!5756 = !DILocation(line: 129, column: 44, scope: !5754)
!5757 = !DILocation(line: 129, column: 9, scope: !5727)
!5758 = !DILocation(line: 136, column: 1, scope: !5727)
!5759 = distinct !DISubprogram(name: "hal_uart_translate_timeout", scope: !622, file: !622, line: 182, type: !5045, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5760)
!5760 = !{!5761, !5762}
!5761 = !DILocalVariable(name: "timeout_us", arg: 1, scope: !5759, file: !622, line: 182, type: !204)
!5762 = !DILocalVariable(name: "ticks_per_us", scope: !5759, file: !622, line: 184, type: !204)
!5763 = !DILocation(line: 0, scope: !5759)
!5764 = !DILocation(line: 186, column: 20, scope: !5759)
!5765 = !DILocation(line: 186, column: 39, scope: !5759)
!5766 = !DILocation(line: 188, column: 25, scope: !5759)
!5767 = !DILocation(line: 188, column: 5, scope: !5759)
!5768 = distinct !DISubprogram(name: "hal_uart_set_hardware_flowcontrol", scope: !622, file: !622, line: 637, type: !5296, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5769)
!5769 = !{!5770, !5771}
!5770 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5768, file: !622, line: 637, type: !682)
!5771 = !DILocalVariable(name: "int_no", scope: !5768, file: !622, line: 639, type: !3413)
!5772 = !DILocation(line: 0, scope: !5768)
!5773 = !DILocation(line: 641, column: 10, scope: !5774)
!5774 = distinct !DILexicalBlock(scope: !5768, file: !622, line: 641, column: 9)
!5775 = !DILocation(line: 641, column: 9, scope: !5768)
!5776 = !DILocation(line: 645, column: 14, scope: !5768)
!5777 = !DILocation(line: 646, column: 5, scope: !5768)
!5778 = !DILocation(line: 648, column: 5, scope: !5768)
!5779 = !DILocation(line: 649, column: 1, scope: !5768)
!5780 = distinct !DISubprogram(name: "hal_uart_set_software_flowcontrol", scope: !622, file: !622, line: 651, type: !5781, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5783)
!5781 = !DISubroutineType(types: !5782)
!5782 = !{!5154, !682, !236, !236, !236}
!5783 = !{!5784, !5785, !5786, !5787, !5788}
!5784 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5780, file: !622, line: 651, type: !682)
!5785 = !DILocalVariable(name: "xon", arg: 2, scope: !5780, file: !622, line: 652, type: !236)
!5786 = !DILocalVariable(name: "xoff", arg: 3, scope: !5780, file: !622, line: 653, type: !236)
!5787 = !DILocalVariable(name: "escape_character", arg: 4, scope: !5780, file: !622, line: 654, type: !236)
!5788 = !DILocalVariable(name: "int_no", scope: !5780, file: !622, line: 656, type: !3413)
!5789 = !DILocation(line: 0, scope: !5780)
!5790 = !DILocation(line: 658, column: 10, scope: !5791)
!5791 = distinct !DILexicalBlock(scope: !5780, file: !622, line: 658, column: 9)
!5792 = !DILocation(line: 658, column: 9, scope: !5780)
!5793 = !DILocation(line: 662, column: 14, scope: !5780)
!5794 = !DILocation(line: 663, column: 5, scope: !5780)
!5795 = !DILocation(line: 665, column: 5, scope: !5780)
!5796 = !DILocation(line: 666, column: 1, scope: !5780)
!5797 = distinct !DISubprogram(name: "hal_uart_disable_flowcontrol", scope: !622, file: !622, line: 668, type: !5296, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5798)
!5798 = !{!5799, !5800}
!5799 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5797, file: !622, line: 668, type: !682)
!5800 = !DILocalVariable(name: "int_no", scope: !5797, file: !622, line: 670, type: !3413)
!5801 = !DILocation(line: 0, scope: !5797)
!5802 = !DILocation(line: 672, column: 10, scope: !5803)
!5803 = distinct !DILexicalBlock(scope: !5797, file: !622, line: 672, column: 9)
!5804 = !DILocation(line: 672, column: 9, scope: !5797)
!5805 = !DILocation(line: 676, column: 14, scope: !5797)
!5806 = !DILocation(line: 677, column: 5, scope: !5797)
!5807 = !DILocation(line: 679, column: 5, scope: !5797)
!5808 = !DILocation(line: 680, column: 1, scope: !5797)
!5809 = distinct !DISubprogram(name: "hal_uart_set_dma_timeout", scope: !622, file: !622, line: 683, type: !5810, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !5812)
!5810 = !DISubroutineType(types: !5811)
!5811 = !{!5154, !682, !204}
!5812 = !{!5813, !5814}
!5813 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5809, file: !622, line: 683, type: !682)
!5814 = !DILocalVariable(name: "timeout", arg: 2, scope: !5809, file: !622, line: 683, type: !204)
!5815 = !DILocation(line: 0, scope: !5809)
!5816 = !DILocation(line: 685, column: 10, scope: !5817)
!5817 = distinct !DILexicalBlock(scope: !5809, file: !622, line: 685, column: 9)
!5818 = !DILocation(line: 685, column: 9, scope: !5809)
!5819 = !DILocation(line: 689, column: 19, scope: !5820)
!5820 = distinct !DILexicalBlock(scope: !5809, file: !622, line: 689, column: 9)
!5821 = !DILocation(line: 0, scope: !5820)
!5822 = !DILocation(line: 696, column: 1, scope: !5809)
!5823 = distinct !DISubprogram(name: "__io_putchar", scope: !732, file: !732, line: 55, type: !5824, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !5826)
!5824 = !DISubroutineType(types: !5825)
!5825 = !{!13, !13}
!5826 = !{!5827}
!5827 = !DILocalVariable(name: "ch", arg: 1, scope: !5823, file: !732, line: 55, type: !13)
!5828 = !DILocation(line: 0, scope: !5823)
!5829 = !DILocation(line: 62, column: 35, scope: !5823)
!5830 = !DILocation(line: 62, column: 5, scope: !5823)
!5831 = !DILocation(line: 63, column: 5, scope: !5823)
!5832 = distinct !DISubprogram(name: "main", scope: !732, file: !732, line: 183, type: !3389, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !1348)
!5833 = !DILocation(line: 186, column: 5, scope: !5832)
!5834 = !DILocation(line: 188, column: 5, scope: !5832)
!5835 = !DILocation(line: 191, column: 5, scope: !5832)
!5836 = !DILocation(line: 319, column: 3, scope: !5837, inlinedAt: !5838)
!5837 = distinct !DISubprogram(name: "__enable_irq", scope: !2835, file: !2835, line: 317, type: !75, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !1348)
!5838 = distinct !DILocation(line: 194, column: 5, scope: !5832)
!5839 = !{i64 512521}
!5840 = !DILocation(line: 496, column: 3, scope: !5841, inlinedAt: !5842)
!5841 = distinct !DISubprogram(name: "__enable_fault_irq", scope: !2835, file: !2835, line: 494, type: !75, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !1348)
!5842 = distinct !DILocation(line: 195, column: 5, scope: !5832)
!5843 = !{i64 516796}
!5844 = !DILocation(line: 198, column: 5, scope: !5832)
!5845 = !DILocation(line: 199, column: 5, scope: !5832)
!5846 = !DILocation(line: 200, column: 5, scope: !5832)
!5847 = !DILocation(line: 201, column: 5, scope: !5832)
!5848 = !DILocation(line: 203, column: 5, scope: !5832)
!5849 = !DILocation(line: 205, column: 5, scope: !5832)
!5850 = distinct !{!5850, !5849, !5851}
!5851 = !DILocation(line: 205, column: 14, scope: !5832)
!5852 = distinct !DISubprogram(name: "SystemClock_Config", scope: !732, file: !732, line: 93, type: !75, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !1348)
!5853 = !DILocation(line: 95, column: 5, scope: !5852)
!5854 = !DILocation(line: 96, column: 1, scope: !5852)
!5855 = distinct !DISubprogram(name: "prvSetupHardware", scope: !732, file: !732, line: 103, type: !75, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !1348)
!5856 = !DILocation(line: 106, column: 5, scope: !5855)
!5857 = !DILocation(line: 107, column: 1, scope: !5855)
!5858 = distinct !DISubprogram(name: "eint_sample", scope: !732, file: !732, line: 138, type: !75, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !5859)
!5859 = !{!5860}
!5860 = !DILocalVariable(name: "eint_config", scope: !5858, file: !732, line: 140, type: !5861)
!5861 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_eint_config_t", file: !450, line: 225, baseType: !5862)
!5862 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !450, line: 222, size: 64, elements: !5863)
!5863 = !{!5864, !5865}
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_mode", scope: !5862, file: !450, line: 223, baseType: !4020, size: 32)
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "debounce_time", scope: !5862, file: !450, line: 224, baseType: !204, size: 32, offset: 32)
!5866 = !DILocation(line: 140, column: 5, scope: !5858)
!5867 = !DILocation(line: 140, column: 23, scope: !5858)
!5868 = !DILocation(line: 142, column: 13, scope: !5858)
!5869 = !DILocation(line: 143, column: 5, scope: !5858)
!5870 = !DILocation(line: 145, column: 5, scope: !5858)
!5871 = !DILocation(line: 147, column: 5, scope: !5858)
!5872 = !DILocation(line: 149, column: 5, scope: !5858)
!5873 = !DILocation(line: 150, column: 5, scope: !5858)
!5874 = !DILocation(line: 161, column: 17, scope: !5858)
!5875 = !DILocation(line: 161, column: 30, scope: !5858)
!5876 = !DILocation(line: 164, column: 17, scope: !5858)
!5877 = !DILocation(line: 164, column: 31, scope: !5858)
!5878 = !DILocation(line: 169, column: 19, scope: !5858)
!5879 = !DILocation(line: 169, column: 5, scope: !5858)
!5880 = !DILocation(line: 171, column: 19, scope: !5858)
!5881 = !DILocation(line: 171, column: 5, scope: !5858)
!5882 = !DILocation(line: 172, column: 32, scope: !5858)
!5883 = !DILocation(line: 172, column: 5, scope: !5858)
!5884 = !DILocation(line: 177, column: 21, scope: !5858)
!5885 = !DILocation(line: 177, column: 5, scope: !5858)
!5886 = !DILocation(line: 180, column: 5, scope: !5858)
!5887 = !DILocation(line: 181, column: 1, scope: !5858)
!5888 = distinct !DISubprogram(name: "eint_irq_handler", scope: !732, file: !732, line: 114, type: !481, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !5889)
!5889 = !{!5890}
!5890 = !DILocalVariable(name: "data", arg: 1, scope: !5888, file: !732, line: 114, type: !464)
!5891 = !DILocation(line: 0, scope: !5888)
!5892 = !DILocation(line: 119, column: 19, scope: !5888)
!5893 = !DILocation(line: 119, column: 5, scope: !5888)
!5894 = !DILocation(line: 124, column: 44, scope: !5888)
!5895 = !DILocation(line: 124, column: 5, scope: !5888)
!5896 = !DILocation(line: 129, column: 21, scope: !5888)
!5897 = !DILocation(line: 129, column: 5, scope: !5888)
!5898 = !DILocation(line: 131, column: 1, scope: !5888)
!5899 = distinct !DISubprogram(name: "log_uart_init", scope: !732, file: !732, line: 71, type: !75, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !5900)
!5900 = !{!5901}
!5901 = !DILocalVariable(name: "uart_config", scope: !5899, file: !732, line: 73, type: !5902)
!5902 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !625, line: 378, baseType: !5903)
!5903 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !625, line: 373, size: 128, elements: !5904)
!5904 = !{!5905, !5906, !5907, !5908}
!5905 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !5903, file: !625, line: 374, baseType: !697, size: 32)
!5906 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !5903, file: !625, line: 375, baseType: !699, size: 32, offset: 32)
!5907 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !5903, file: !625, line: 376, baseType: !701, size: 32, offset: 64)
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !5903, file: !625, line: 377, baseType: !703, size: 32, offset: 96)
!5909 = !DILocation(line: 73, column: 5, scope: !5899)
!5910 = !DILocation(line: 73, column: 23, scope: !5899)
!5911 = !DILocation(line: 75, column: 5, scope: !5899)
!5912 = !DILocation(line: 76, column: 5, scope: !5899)
!5913 = !DILocation(line: 77, column: 5, scope: !5899)
!5914 = !DILocation(line: 78, column: 5, scope: !5899)
!5915 = !DILocation(line: 80, column: 17, scope: !5899)
!5916 = !DILocation(line: 80, column: 26, scope: !5899)
!5917 = !DILocation(line: 81, column: 17, scope: !5899)
!5918 = !DILocation(line: 81, column: 29, scope: !5899)
!5919 = !DILocation(line: 82, column: 17, scope: !5899)
!5920 = !DILocation(line: 82, column: 26, scope: !5899)
!5921 = !DILocation(line: 83, column: 17, scope: !5899)
!5922 = !DILocation(line: 83, column: 24, scope: !5899)
!5923 = !DILocation(line: 84, column: 5, scope: !5899)
!5924 = !DILocation(line: 86, column: 1, scope: !5899)
!5925 = distinct !DISubprogram(name: "SysTick_Set", scope: !776, file: !776, line: 70, type: !5045, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !5926)
!5926 = !{!5927, !5928}
!5927 = !DILocalVariable(name: "ticks", arg: 1, scope: !5925, file: !776, line: 70, type: !204)
!5928 = !DILocalVariable(name: "val", scope: !5925, file: !776, line: 72, type: !204)
!5929 = !DILocation(line: 0, scope: !5925)
!5930 = !DILocation(line: 74, column: 16, scope: !5931)
!5931 = distinct !DILexicalBlock(scope: !5925, file: !776, line: 74, column: 9)
!5932 = !DILocation(line: 74, column: 21, scope: !5931)
!5933 = !DILocation(line: 74, column: 9, scope: !5925)
!5934 = !DILocation(line: 78, column: 20, scope: !5925)
!5935 = !DILocation(line: 80, column: 19, scope: !5925)
!5936 = !DILocation(line: 83, column: 20, scope: !5925)
!5937 = !DILocation(line: 84, column: 20, scope: !5925)
!5938 = !DILocation(line: 86, column: 19, scope: !5925)
!5939 = !DILocation(line: 88, column: 5, scope: !5925)
!5940 = !DILocation(line: 89, column: 1, scope: !5925)
!5941 = distinct !DISubprogram(name: "SysInitStatus_Set", scope: !776, file: !776, line: 98, type: !75, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !1348)
!5942 = !DILocation(line: 100, column: 28, scope: !5941)
!5943 = !DILocation(line: 101, column: 1, scope: !5941)
!5944 = distinct !DISubprogram(name: "SysInitStatus_Query", scope: !776, file: !776, line: 110, type: !2829, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !1348)
!5945 = !DILocation(line: 112, column: 12, scope: !5944)
!5946 = !DILocation(line: 112, column: 5, scope: !5944)
!5947 = distinct !DISubprogram(name: "SystemCoreClockUpdate", scope: !776, file: !776, line: 122, type: !75, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !1348)
!5948 = !DILocation(line: 124, column: 23, scope: !5947)
!5949 = !DILocation(line: 124, column: 21, scope: !5947)
!5950 = !DILocation(line: 125, column: 1, scope: !5947)
!5951 = distinct !DISubprogram(name: "SystemInit", scope: !776, file: !776, line: 136, type: !75, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !1348)
!5952 = !DILocation(line: 140, column: 16, scope: !5951)
!5953 = !DILocation(line: 144, column: 16, scope: !5951)
!5954 = !DILocation(line: 147, column: 16, scope: !5951)
!5955 = !DILocation(line: 150, column: 1, scope: !5951)
!5956 = distinct !DISubprogram(name: "CachePreInit", scope: !776, file: !776, line: 158, type: !75, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !1348)
!5957 = !DILocation(line: 161, column: 22, scope: !5956)
!5958 = !DILocation(line: 164, column: 21, scope: !5956)
!5959 = !DILocation(line: 167, column: 21, scope: !5956)
!5960 = !DILocation(line: 170, column: 29, scope: !5956)
!5961 = !DILocation(line: 171, column: 33, scope: !5956)
!5962 = !DILocation(line: 173, column: 28, scope: !5956)
!5963 = !DILocation(line: 178, column: 30, scope: !5956)
!5964 = !DILocation(line: 192, column: 1, scope: !5956)
!5965 = distinct !DISubprogram(name: "_close", scope: !846, file: !846, line: 11, type: !5824, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1043, retainedNodes: !5966)
!5966 = !{!5967}
!5967 = !DILocalVariable(name: "file", arg: 1, scope: !5965, file: !846, line: 11, type: !13)
!5968 = !DILocation(line: 0, scope: !5965)
!5969 = !DILocation(line: 13, column: 5, scope: !5965)
!5970 = distinct !DISubprogram(name: "_fstat", scope: !846, file: !846, line: 16, type: !5971, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1043, retainedNodes: !6019)
!5971 = !DISubroutineType(types: !5972)
!5972 = !{!13, !13, !5973}
!5973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5974, size: 32)
!5974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !5975, line: 27, size: 704, elements: !5976)
!5975 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/stat.h", directory: "/home/mjshen/RTOSExploration")
!5976 = !{!5977, !5980, !5983, !5986, !5989, !5992, !5995, !5996, !5999, !6009, !6010, !6011, !6014, !6017}
!5977 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !5974, file: !5975, line: 29, baseType: !5978, size: 16)
!5978 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !850, line: 161, baseType: !5979)
!5979 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !892, line: 56, baseType: !867)
!5980 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !5974, file: !5975, line: 30, baseType: !5981, size: 16, offset: 16)
!5981 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !850, line: 139, baseType: !5982)
!5982 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !892, line: 75, baseType: !412)
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !5974, file: !5975, line: 31, baseType: !5984, size: 32, offset: 32)
!5984 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !850, line: 189, baseType: !5985)
!5985 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !892, line: 90, baseType: !206)
!5986 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !5974, file: !5975, line: 32, baseType: !5987, size: 16, offset: 64)
!5987 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !850, line: 194, baseType: !5988)
!5988 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !892, line: 209, baseType: !412)
!5989 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !5974, file: !5975, line: 33, baseType: !5990, size: 16, offset: 80)
!5990 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !850, line: 165, baseType: !5991)
!5991 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !892, line: 60, baseType: !412)
!5992 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !5974, file: !5975, line: 34, baseType: !5993, size: 16, offset: 96)
!5993 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !850, line: 169, baseType: !5994)
!5994 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !892, line: 63, baseType: !412)
!5995 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !5974, file: !5975, line: 35, baseType: !5978, size: 16, offset: 112)
!5996 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5974, file: !5975, line: 36, baseType: !5997, size: 32, offset: 128)
!5997 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !850, line: 157, baseType: !5998)
!5998 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !892, line: 102, baseType: !910)
!5999 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !5974, file: !5975, line: 42, baseType: !6000, size: 128, offset: 192)
!6000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !6001, line: 47, size: 128, elements: !6002)
!6001 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timespec.h", directory: "/home/mjshen/RTOSExploration")
!6002 = !{!6003, !6008}
!6003 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !6000, file: !6001, line: 48, baseType: !6004, size: 64)
!6004 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !6005, line: 42, baseType: !6006)
!6005 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timeval.h", directory: "/home/mjshen/RTOSExploration")
!6006 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !207, line: 200, baseType: !6007)
!6007 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!6008 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !6000, file: !6001, line: 49, baseType: !893, size: 32, offset: 64)
!6009 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !5974, file: !5975, line: 43, baseType: !6000, size: 128, offset: 320)
!6010 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !5974, file: !5975, line: 44, baseType: !6000, size: 128, offset: 448)
!6011 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !5974, file: !5975, line: 45, baseType: !6012, size: 32, offset: 576)
!6012 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !850, line: 102, baseType: !6013)
!6013 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !892, line: 34, baseType: !893)
!6014 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !5974, file: !5975, line: 46, baseType: !6015, size: 32, offset: 608)
!6015 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !850, line: 97, baseType: !6016)
!6016 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !892, line: 30, baseType: !893)
!6017 = !DIDerivedType(tag: DW_TAG_member, name: "st_spare4", scope: !5974, file: !5975, line: 48, baseType: !6018, size: 64, offset: 640)
!6018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !893, size: 64, elements: !270)
!6019 = !{!6020, !6021}
!6020 = !DILocalVariable(name: "file", arg: 1, scope: !5970, file: !846, line: 16, type: !13)
!6021 = !DILocalVariable(name: "st", arg: 2, scope: !5970, file: !846, line: 16, type: !5973)
!6022 = !DILocation(line: 0, scope: !5970)
!6023 = !DILocation(line: 18, column: 5, scope: !5970)
!6024 = distinct !DISubprogram(name: "_isatty", scope: !846, file: !846, line: 22, type: !5824, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1043, retainedNodes: !6025)
!6025 = !{!6026}
!6026 = !DILocalVariable(name: "file", arg: 1, scope: !6024, file: !846, line: 22, type: !13)
!6027 = !DILocation(line: 0, scope: !6024)
!6028 = !DILocation(line: 24, column: 5, scope: !6024)
!6029 = distinct !DISubprogram(name: "_lseek", scope: !846, file: !846, line: 27, type: !6030, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1043, retainedNodes: !6032)
!6030 = !DISubroutineType(types: !6031)
!6031 = !{!13, !13, !13, !13}
!6032 = !{!6033, !6034, !6035}
!6033 = !DILocalVariable(name: "file", arg: 1, scope: !6029, file: !846, line: 27, type: !13)
!6034 = !DILocalVariable(name: "ptr", arg: 2, scope: !6029, file: !846, line: 27, type: !13)
!6035 = !DILocalVariable(name: "dir", arg: 3, scope: !6029, file: !846, line: 27, type: !13)
!6036 = !DILocation(line: 0, scope: !6029)
!6037 = !DILocation(line: 29, column: 5, scope: !6029)
!6038 = distinct !DISubprogram(name: "_open", scope: !846, file: !846, line: 32, type: !6039, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1043, retainedNodes: !6041)
!6039 = !DISubroutineType(types: !6040)
!6040 = !{!13, !885, !13, !13}
!6041 = !{!6042, !6043, !6044}
!6042 = !DILocalVariable(name: "name", arg: 1, scope: !6038, file: !846, line: 32, type: !885)
!6043 = !DILocalVariable(name: "flags", arg: 2, scope: !6038, file: !846, line: 32, type: !13)
!6044 = !DILocalVariable(name: "mode", arg: 3, scope: !6038, file: !846, line: 32, type: !13)
!6045 = !DILocation(line: 0, scope: !6038)
!6046 = !DILocation(line: 34, column: 5, scope: !6038)
!6047 = distinct !DISubprogram(name: "_read", scope: !846, file: !846, line: 37, type: !6048, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1043, retainedNodes: !6050)
!6048 = !DISubroutineType(types: !6049)
!6049 = !{!13, !13, !851, !13}
!6050 = !{!6051, !6052, !6053}
!6051 = !DILocalVariable(name: "file", arg: 1, scope: !6047, file: !846, line: 37, type: !13)
!6052 = !DILocalVariable(name: "ptr", arg: 2, scope: !6047, file: !846, line: 37, type: !851)
!6053 = !DILocalVariable(name: "len", arg: 3, scope: !6047, file: !846, line: 37, type: !13)
!6054 = !DILocation(line: 0, scope: !6047)
!6055 = !DILocation(line: 39, column: 5, scope: !6047)
!6056 = distinct !DISubprogram(name: "_write", scope: !846, file: !846, line: 52, type: !6048, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1043, retainedNodes: !6057)
!6057 = !{!6058, !6059, !6060, !6061}
!6058 = !DILocalVariable(name: "file", arg: 1, scope: !6056, file: !846, line: 52, type: !13)
!6059 = !DILocalVariable(name: "ptr", arg: 2, scope: !6056, file: !846, line: 52, type: !851)
!6060 = !DILocalVariable(name: "len", arg: 3, scope: !6056, file: !846, line: 52, type: !13)
!6061 = !DILocalVariable(name: "i", scope: !6056, file: !846, line: 54, type: !13)
!6062 = !DILocation(line: 0, scope: !6056)
!6063 = !DILocation(line: 56, column: 19, scope: !6064)
!6064 = distinct !DILexicalBlock(scope: !6065, file: !846, line: 56, column: 5)
!6065 = distinct !DILexicalBlock(scope: !6056, file: !846, line: 56, column: 5)
!6066 = !DILocation(line: 56, column: 5, scope: !6065)
!6067 = !DILocation(line: 57, column: 26, scope: !6068)
!6068 = distinct !DILexicalBlock(scope: !6064, file: !846, line: 56, column: 31)
!6069 = !DILocation(line: 57, column: 22, scope: !6068)
!6070 = !DILocation(line: 57, column: 9, scope: !6068)
!6071 = !DILocation(line: 56, column: 27, scope: !6064)
!6072 = distinct !{!6072, !6066, !6073}
!6073 = !DILocation(line: 58, column: 5, scope: !6065)
!6074 = !DILocation(line: 60, column: 5, scope: !6056)
!6075 = !DILocation(line: 0, scope: !845)
!6076 = !DILocation(line: 70, column: 5, scope: !845)
!6077 = !{i64 1109}
!6078 = !DILocation(line: 72, column: 14, scope: !6079)
!6079 = distinct !DILexicalBlock(scope: !845, file: !846, line: 72, column: 9)
!6080 = !DILocation(line: 72, column: 11, scope: !6079)
!6081 = !DILocation(line: 72, column: 9, scope: !845)
!6082 = !DILocation(line: 78, column: 32, scope: !6083)
!6083 = distinct !DILexicalBlock(scope: !845, file: !846, line: 78, column: 9)
!6084 = !DILocation(line: 78, column: 15, scope: !6083)
!6085 = !DILocation(line: 89, column: 1, scope: !845)
!6086 = !DILocation(line: 78, column: 9, scope: !845)
!6087 = distinct !DISubprogram(name: "_exit", scope: !846, file: !846, line: 91, type: !995, scopeLine: 92, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1043, retainedNodes: !6088)
!6088 = !{!6089}
!6089 = !DILocalVariable(name: "__status", arg: 1, scope: !6087, file: !846, line: 91, type: !13)
!6090 = !DILocation(line: 0, scope: !6087)
!6091 = !DILocation(line: 93, column: 5, scope: !6087)
!6092 = !DILocation(line: 94, column: 5, scope: !6087)
!6093 = distinct !{!6093, !6092, !6094}
!6094 = !DILocation(line: 96, column: 5, scope: !6087)
!6095 = distinct !DISubprogram(name: "_kill", scope: !846, file: !846, line: 100, type: !6096, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1043, retainedNodes: !6098)
!6096 = !DISubroutineType(types: !6097)
!6097 = !{!13, !13, !13}
!6098 = !{!6099, !6100}
!6099 = !DILocalVariable(name: "pid", arg: 1, scope: !6095, file: !846, line: 100, type: !13)
!6100 = !DILocalVariable(name: "sig", arg: 2, scope: !6095, file: !846, line: 100, type: !13)
!6101 = !DILocation(line: 0, scope: !6095)
!6102 = !DILocation(line: 102, column: 5, scope: !6095)
!6103 = !DILocation(line: 103, column: 5, scope: !6095)
!6104 = distinct !DISubprogram(name: "_getpid", scope: !846, file: !846, line: 107, type: !6105, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1043, retainedNodes: !1348)
!6105 = !DISubroutineType(types: !6106)
!6106 = !{!6107}
!6107 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !850, line: 174, baseType: !6108)
!6108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !892, line: 52, baseType: !13)
!6109 = !DILocation(line: 109, column: 5, scope: !6104)
!6110 = !DILocation(line: 110, column: 5, scope: !6104)
