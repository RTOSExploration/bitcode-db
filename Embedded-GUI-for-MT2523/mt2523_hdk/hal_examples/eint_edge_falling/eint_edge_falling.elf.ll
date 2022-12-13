; ModuleID = './Build/eint_edge_falling.elf.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7em-none-unknown-eabihf"

%struct.GPT_REGISTER_T = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.GPT_REGISTER_GLOABL_T = type { i32, i32, i32 }
%struct.gpt_context_t = type { i32, %struct.gpt_callback_context_t, i8, i8 }
%struct.gpt_callback_context_t = type { void (i8*)*, i8* }
%struct.gpt_sw_context_t = type { [32 x %struct.gpt_sw_timer_t], i32, i32, i32, i32, i8, i8, i8 }
%struct.gpt_sw_timer_t = type { %struct.gpt_callback_context_t, i32, i8, i8 }
%struct.GPIO_REGISTER_T = type { [2 x %struct.GPIO_DIR_REGISTER_T], [224 x i8], [2 x %struct.GPIO_DIR_REGISTER_T], [224 x i8], [2 x %struct.GPIO_DIR_REGISTER_T], [224 x i8], [2 x %struct.GPIO_DIR_REGISTER_T], [224 x i8], [2 x %struct.GPIO_DIN_REGISTER_T], [224 x i8], [2 x %struct.GPIO_DIR_REGISTER_T], [224 x i8], [2 x %struct.GPIO_DIR_REGISTER_T], [224 x i8], [2 x %struct.GPIO_DIR_REGISTER_T], [224 x i8], [4 x %struct.GPIO_DIR_REGISTER_T], [192 x i8], [2 x %struct.GPIO_DIR_REGISTER_T], [224 x i8], [2 x %struct.GPIO_DIR_REGISTER_T], [224 x i8], [2 x %struct.GPIO_DIR_REGISTER_T], [2 x %struct.GPIO_DIR_REGISTER_T], [192 x i8], [7 x %struct.GPIO_DIR_REGISTER_T], [144 x i8], [4 x %struct.GPIO_DIR_REGISTER_T], [192 x i8], [6 x %struct.GPIO_DIN_REGISTER_T] }
%struct.GPIO_DIN_REGISTER_T = type { i32, [12 x i8] }
%struct.GPIO_DIR_REGISTER_T = type { i32, i32, i32, [4 x i8] }
%struct.uart_callback_t = type { void (i32, i8*)*, i8* }
%struct.hal_uart_dma_config_t = type { i8*, i32, i32, i8*, i32, i32, i32 }
%struct.uart_dma_callback_data_t = type { i8, i32 }
%struct.UART_REGISTER_T = type { %union.anon, %union.anon, %union.anon, i32, %union.anon, %union.anon, i32, %union.anon, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon = type { i32 }
%struct.EINT_REGISTER_T = type { i32, i32, i32, i32, i32, [3 x i32], i32, i32, i32, i32, i32, [3 x i32], i32, i32, i32, i32, i32, [3 x i32], i32, i32, i32, i32, i32, [3 x i32], i32, i32, i32, i32, i32, [3 x i32], i32, i32, i32, i32, i32, [3 x i32], i32, [15 x i32], [64 x %struct.EINT_CON_REGISTER_T] }
%struct.EINT_CON_REGISTER_T = type { %union.EINT_CON_T }
%union.EINT_CON_T = type { %union.anon }
%struct.nvic_function_t = type { void (i32)*, i32 }
%struct.EMI_SETTINGS = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.EMI_REGISTER_T = type { [96 x i8], i32, [12 x i8], i32, [20 x i8], i32, [4 x i8], i32, [60 x i8], i32, [4 x i8], i32, [4 x i8], i32, [20 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [28 x i8], i32, [4 x i8], i32, [12 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [12 x i8], i32, [4 x i8], i32, [4 x i8], i32, [20 x i8], i32, [4 x i8], i32, [92 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [60 x i8], i32, [124 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [20 x i8], i32, [20 x i8], i32 }
%struct.hal_uart_config_t = type { i32, i32, i32, i32 }
%struct.vdma_config_t = type { i32, i32 }
%struct.__va_list = type { i8* }
%struct.stat = type { i16, i16, i32, i16, i16, i16, i16, i32, %struct.timespec, %struct.timespec, %struct.timespec, i32, i32, [2 x i32] }
%struct.timespec = type { i64, i32 }
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, i8*, i32, i32, %struct.__locale_t*, %struct._mprec*, void (%struct._reent*)*, i32, i32, i8*, %struct._rand48*, %struct.GPT_REGISTER_T*, i8*, void (i32)**, %struct._atexit*, %struct._atexit, %struct._glue, %struct.__sFILE*, %struct._misc_reent*, i8* }
%struct.__locale_t = type opaque
%struct._mprec = type { %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint** }
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%struct._rand48 = type { [3 x i16], [3 x i16], i16, i64 }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args* }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, %struct._reent*, i8*, i32 (%struct._reent*, i8*, i8*, i32)*, i32 (%struct._reent*, i8*, i8*, i32)*, i32 (%struct._reent*, i8*, i32, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i32, %struct.__lock*, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct.__lock = type opaque
%struct._mbstate_t = type { i32, %union.anon }
%struct._misc_reent = type { i8*, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t, [8 x i8], i32, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t }

@gp_gpt = dso_local local_unnamed_addr global [6 x %struct.GPT_REGISTER_T*] [%struct.GPT_REGISTER_T* inttoptr (i32 -1575747568 to %struct.GPT_REGISTER_T*), %struct.GPT_REGISTER_T* inttoptr (i32 -1575747520 to %struct.GPT_REGISTER_T*), %struct.GPT_REGISTER_T* inttoptr (i32 -1575747472 to %struct.GPT_REGISTER_T*), %struct.GPT_REGISTER_T* inttoptr (i32 -1575747424 to %struct.GPT_REGISTER_T*), %struct.GPT_REGISTER_T* inttoptr (i32 -1575747376 to %struct.GPT_REGISTER_T*), %struct.GPT_REGISTER_T* inttoptr (i32 -1575747328 to %struct.GPT_REGISTER_T*)], section ".tcm_rwdata", align 4, !dbg !0
@gp_gpt_glb = dso_local local_unnamed_addr global %struct.GPT_REGISTER_GLOABL_T* inttoptr (i32 -1575747584 to %struct.GPT_REGISTER_GLOABL_T*), align 4, !dbg !196
@gpt_get_lfosc_clock.flag = internal unnamed_addr global i1 false, section ".tcm_rwdata", align 1, !dbg !260
@gpt_clock_source = dso_local local_unnamed_addr global i32 0, section ".tcm_zidata", align 4, !dbg !257
@g_gpt_context = dso_local global [6 x %struct.gpt_context_t] zeroinitializer, section ".tcm_zidata", align 4, !dbg !212
@gpt_sw_context = dso_local local_unnamed_addr global %struct.gpt_sw_context_t zeroinitializer, align 4, !dbg !234
@__const.is_pin_with_pullsel.pin_number_with_pullsel = private unnamed_addr constant [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 10], align 4
@gpio_register_base = dso_local local_unnamed_addr global %struct.GPIO_REGISTER_T* inttoptr (i32 -1576927232 to %struct.GPIO_REGISTER_T*), align 4, !dbg !261
@g_uart_hwstatus = internal global [4 x i32] zeroinitializer, align 4, !dbg !544
@.str = private unnamed_addr constant [49 x i8] c"../../../../../driver/chip/mt2523/src/hal_uart.c\00", align 1
@__func__.uart_receive_handler = private unnamed_addr constant [21 x i8] c"uart_receive_handler\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@g_uart_callback = internal unnamed_addr global [4 x %struct.uart_callback_t] zeroinitializer, align 4, !dbg !655
@g_uart_dma_config = internal unnamed_addr global [4 x %struct.hal_uart_dma_config_t] zeroinitializer, align 4, !dbg !673
@__func__.uart_send_handler = private unnamed_addr constant [18 x i8] c"uart_send_handler\00", align 1
@__func__.uart_error_handler = private unnamed_addr constant [19 x i8] c"uart_error_handler\00", align 1
@g_uart_baudrate_map = internal unnamed_addr constant [13 x i32] [i32 110, i32 300, i32 1200, i32 2400, i32 4800, i32 9600, i32 19200, i32 38400, i32 57600, i32 115200, i32 230400, i32 460800, i32 921600], align 4, !dbg !687
@g_uart_global_data_initialized = internal unnamed_addr global i1 false, align 1, !dbg !698
@__func__.hal_uart_init = private unnamed_addr constant [14 x i8] c"hal_uart_init\00", align 1
@__func__.hal_uart_deinit = private unnamed_addr constant [16 x i8] c"hal_uart_deinit\00", align 1
@__func__.hal_uart_send_dma = private unnamed_addr constant [18 x i8] c"hal_uart_send_dma\00", align 1
@__func__.hal_uart_receive_dma = private unnamed_addr constant [21 x i8] c"hal_uart_receive_dma\00", align 1
@g_uart_dma_callback_data = internal global [8 x %struct.uart_dma_callback_data_t] zeroinitializer, align 4, !dbg !668
@__func__.hal_uart_register_callback = private unnamed_addr constant [27 x i8] c"hal_uart_register_callback\00", align 1
@__func__.hal_uart_get_available_send_space = private unnamed_addr constant [34 x i8] c"hal_uart_get_available_send_space\00", align 1
@__func__.hal_uart_get_available_receive_bytes = private unnamed_addr constant [37 x i8] c"hal_uart_get_available_receive_bytes\00", align 1
@__func__.hal_uart_set_dma = private unnamed_addr constant [17 x i8] c"hal_uart_set_dma\00", align 1
@__func__.uart_start_dma_transmission = private unnamed_addr constant [28 x i8] c"uart_start_dma_transmission\00", align 1
@__const.uart_set_baudrate.fraction_L_mapping = private unnamed_addr constant [10 x i32] [i32 0, i32 0, i32 32, i32 144, i32 168, i32 84, i32 108, i32 186, i32 246, i32 254], align 4
@g_uart_regbase = dso_local local_unnamed_addr constant [4 x %struct.UART_REGISTER_T*] [%struct.UART_REGISTER_T* inttoptr (i32 -1609760768 to %struct.UART_REGISTER_T*), %struct.UART_REGISTER_T* inttoptr (i32 -1609695232 to %struct.UART_REGISTER_T*), %struct.UART_REGISTER_T* inttoptr (i32 -1609629696 to %struct.UART_REGISTER_T*), %struct.UART_REGISTER_T* inttoptr (i32 -1609564160 to %struct.UART_REGISTER_T*)], align 4, !dbg !699
@g_uart_port_to_pdn = dso_local local_unnamed_addr constant [4 x i32] [i32 45, i32 46, i32 47, i32 48], align 4, !dbg !771
@g_uart_port_to_irq_num = dso_local local_unnamed_addr constant [4 x i32] [i32 29, i32 30, i32 31, i32 32], align 4, !dbg !776
@.str.79 = private unnamed_addr constant [67 x i8] c"../../../../../driver/chip/mt2523/src/hal_uart_internal_platform.c\00", align 1
@__func__.uart_interrupt_handler = private unnamed_addr constant [23 x i8] c"uart_interrupt_handler\00", align 1
@.str.1.80 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@switch.table.uart_dma_channel_to_callback_data = private unnamed_addr constant [8 x i8] c"\00\01\00\01\00\01\00\01", align 1
@switch.table.uart_dma_channel_to_callback_data.2 = private unnamed_addr constant [8 x i32] [i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0], align 4
@EINT_REGISTER = dso_local local_unnamed_addr global %struct.EINT_REGISTER_T* inttoptr (i32 -1576860928 to %struct.EINT_REGISTER_T*), section ".tcm_rwdata", align 4, !dbg !784
@hal_eint_init.ini_state = internal unnamed_addr global i1 false, align 4, !dbg !947
@eint_function_table = internal unnamed_addr global [32 x %struct.gpt_callback_context_t] zeroinitializer, align 4, !dbg !869
@__FUNCTION__.hal_eint_isr = private unnamed_addr constant [13 x i8] c"hal_eint_isr\00", align 1
@.str.81 = private unnamed_addr constant [35 x i8] c"ERROR: no EINT interrupt handler!\0A\00", align 1
@hal_nvic_init.priority_set = internal unnamed_addr global i1 false, align 4, !dbg !948
@defualt_irq_priority = internal unnamed_addr constant [64 x i32] [i32 5, i32 68, i32 7, i32 8, i32 68, i32 68, i32 68, i32 68, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 68, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 68, i32 68, i32 43, i32 44, i32 26, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68], align 4, !dbg !1034
@nvic_function_table = dso_local local_unnamed_addr global [64 x %struct.nvic_function_t] zeroinitializer, align 4, !dbg !1026
@__FUNCTION__.isrC_main = private unnamed_addr constant [10 x i8] c"isrC_main\00", align 1
@.str.86 = private unnamed_addr constant [25 x i8] c"ERROR: no IRQ handler! \0A\00", align 1
@emi_settings = dso_local local_unnamed_addr global [1 x %struct.EMI_SETTINGS] [%struct.EMI_SETTINGS { i32 16, i32 0, i32 16384, i32 -1608118272, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 131074, i32 131074 }], section ".tcm_rwdata", align 4, !dbg !1039
@__EMI_CurSR0 = dso_local local_unnamed_addr global i32 0, section ".tcm_rwdata", align 4, !dbg !1052
@__EMI_CurSR1 = dso_local local_unnamed_addr global i32 0, section ".tcm_rwdata", align 4, !dbg !1054
@__EMI_CurSR2 = dso_local local_unnamed_addr global i32 0, section ".tcm_rwdata", align 4, !dbg !1056
@emi_register = dso_local local_unnamed_addr global %struct.EMI_REGISTER_T* inttoptr (i32 -1610285056 to %struct.EMI_REGISTER_T*), section ".tcm_rwdata", align 4, !dbg !1058
@EMI_GENA_VAL = dso_local local_unnamed_addr global i32 0, section ".tcm_zidata", align 4, !dbg !1161
@EMI_RDCT_VAL = dso_local local_unnamed_addr global i32 0, section ".tcm_zidata", align 4, !dbg !1163
@EMI_DSRAM_VAL = dso_local local_unnamed_addr global i32 0, section ".tcm_zidata", align 4, !dbg !1165
@EMI_MSRAM_VAL = dso_local local_unnamed_addr global i32 0, section ".tcm_zidata", align 4, !dbg !1167
@EMI_IDL_C_VAL = dso_local local_unnamed_addr global i32 0, section ".tcm_zidata", align 4, !dbg !1169
@EMI_IDL_D_VAL = dso_local local_unnamed_addr global i32 0, section ".tcm_zidata", align 4, !dbg !1171
@EMI_IDL_E_VAL = dso_local local_unnamed_addr global i32 0, section ".tcm_zidata", align 4, !dbg !1173
@EMI_ODL_C_VAL = dso_local local_unnamed_addr global i32 0, section ".tcm_zidata", align 4, !dbg !1175
@EMI_ODL_D_VAL = dso_local local_unnamed_addr global i32 0, section ".tcm_zidata", align 4, !dbg !1177
@EMI_ODL_E_VAL = dso_local local_unnamed_addr global i32 0, section ".tcm_zidata", align 4, !dbg !1179
@EMI_ODL_F_VAL = dso_local local_unnamed_addr global i32 0, section ".tcm_zidata", align 4, !dbg !1181
@EMI_IO_A_VAL = dso_local local_unnamed_addr global i32 0, section ".tcm_zidata", align 4, !dbg !1183
@EMI_IO_B_VAL = dso_local local_unnamed_addr global i32 0, section ".tcm_zidata", align 4, !dbg !1185
@__const.TestCase_MBIST.mbist_data = private unnamed_addr constant [2 x i32] [i32 23205, i32 65535], align 4
@emi_register_backup = dso_local global %struct.EMI_REGISTER_T zeroinitializer, section ".tcm_zidata", align 4, !dbg !1187
@dvfs_dma_runing_status = dso_local local_unnamed_addr global i32 0, section ".tcm_rwdata", align 4, !dbg !1159
@cm_freq_state = dso_local local_unnamed_addr global i32 1, section ".tcm_rwdata", align 4, !dbg !1208
@.str.102 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.1.103 = private unnamed_addr constant [20 x i8] c"welcome to main()\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"pls add your own code from here\0D\0A\00", align 1
@irq_num = internal unnamed_addr global i1 false, align 4, !dbg !1221
@.str.3 = private unnamed_addr constant [30 x i8] c"\0D\0A ---eint_example begin---\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"\0D\0A ---eint_example finished!!!---\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"\0D\0A Received eint: %d !\0D\0A\00", align 1
@_sbrk_r.heap_end = internal unnamed_addr global i8* null, align 4, !dbg !1229
@end = external dso_local global i8, align 1
@System_Initialize_Done = internal global i32 0, align 4, !dbg !1437
@SystemCoreClock = dso_local local_unnamed_addr global i32 0, align 4, !dbg !1552
@build_date_time_str = dso_local local_unnamed_addr global [31 x i8] c"2022/12/13 07:59:37 GMT +00:00\00", align 1, !dbg !1554
@sw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"SDK_V4.6.1\00", align 1, !dbg !1559
@hw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"mt2523_hdk\00", align 1, !dbg !1565

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_init(i32 noundef %0) local_unnamed_addr #0 !dbg !1681 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1687, metadata !DIExpression()), !dbg !1688
  %2 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #18, !dbg !1689
  br i1 %2, label %3, label %26, !dbg !1691

3:                                                ; preds = %1
  %4 = getelementptr inbounds [6 x %struct.gpt_context_t], [6 x %struct.gpt_context_t]* @g_gpt_context, i32 0, i32 %0, !dbg !1692
  %5 = getelementptr inbounds %struct.gpt_context_t, %struct.gpt_context_t* %4, i32 0, i32 0, !dbg !1694
  %6 = load i32, i32* %5, align 4, !dbg !1694
  %7 = icmp eq i32 %6, 1, !dbg !1695
  br i1 %7, label %26, label %8, !dbg !1696

8:                                                ; preds = %3
  %9 = getelementptr inbounds [6 x %struct.gpt_context_t], [6 x %struct.gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !1697
  %10 = load i8, i8* %9, align 4, !dbg !1697, !range !1698
  %11 = icmp eq i8 %10, 0, !dbg !1697
  br i1 %11, label %12, label %26, !dbg !1699

12:                                               ; preds = %8
  %13 = bitcast %struct.gpt_context_t* %4 to i8*, !dbg !1700
  %14 = tail call i8* @memset(i8* noundef nonnull %13, i32 noundef 0, i32 noundef 16) #19, !dbg !1701
  tail call void @gpt_open_clock_source() #19, !dbg !1702
  store i8 1, i8* %9, align 4, !dbg !1703
  %15 = getelementptr inbounds [6 x %struct.GPT_REGISTER_T*], [6 x %struct.GPT_REGISTER_T*]* @gp_gpt, i32 0, i32 %0, !dbg !1704
  %16 = load %struct.GPT_REGISTER_T*, %struct.GPT_REGISTER_T** %15, align 4, !dbg !1704
  %17 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %16, i32 0, i32 2, !dbg !1705
  %18 = load volatile i32, i32* %17, align 4, !dbg !1706
  %19 = and i32 %18, -2, !dbg !1706
  store volatile i32 %19, i32* %17, align 4, !dbg !1706
  %20 = shl nuw i32 1, %0, !dbg !1707
  %21 = xor i32 %20, -1, !dbg !1708
  %22 = load %struct.GPT_REGISTER_GLOABL_T*, %struct.GPT_REGISTER_GLOABL_T** @gp_gpt_glb, align 4, !dbg !1709
  %23 = getelementptr inbounds %struct.GPT_REGISTER_GLOABL_T, %struct.GPT_REGISTER_GLOABL_T* %22, i32 0, i32 2, !dbg !1710
  %24 = load volatile i32, i32* %23, align 4, !dbg !1711
  %25 = and i32 %24, %21, !dbg !1711
  store volatile i32 %25, i32* %23, align 4, !dbg !1711
  br label %26, !dbg !1712

26:                                               ; preds = %3, %8, %1, %12
  %27 = phi i32 [ 0, %12 ], [ -2, %1 ], [ -4, %8 ], [ -4, %3 ], !dbg !1688
  ret i32 %27, !dbg !1713
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) unnamed_addr #2 !dbg !1714 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1718, metadata !DIExpression()), !dbg !1719
  %2 = load i8, i8* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 7), align 2, !dbg !1720, !range !1698
  %3 = icmp ne i8 %2, 0, !dbg !1722
  %4 = icmp ne i32 %0, 3
  %5 = icmp ult i32 %0, 4
  %6 = or i1 %4, %3, !dbg !1723
  %7 = and i1 %5, %6, !dbg !1723
  ret i1 %7, !dbg !1724
}

; Function Attrs: optsize
declare dso_local i8* @memset(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_deinit(i32 noundef %0) local_unnamed_addr #0 !dbg !1725 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1727, metadata !DIExpression()), !dbg !1728
  %2 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #18, !dbg !1729
  br i1 %2, label %3, label %14, !dbg !1731

3:                                                ; preds = %1
  %4 = getelementptr inbounds [6 x %struct.gpt_context_t], [6 x %struct.gpt_context_t]* @g_gpt_context, i32 0, i32 %0, !dbg !1732
  %5 = getelementptr inbounds %struct.gpt_context_t, %struct.gpt_context_t* %4, i32 0, i32 0, !dbg !1734
  %6 = load i32, i32* %5, align 4, !dbg !1734
  %7 = icmp eq i32 %6, 1, !dbg !1735
  br i1 %7, label %14, label %8, !dbg !1736

8:                                                ; preds = %3
  %9 = bitcast %struct.gpt_context_t* %4 to i8*, !dbg !1737
  %10 = tail call i8* @memset(i8* noundef nonnull %9, i32 noundef 0, i32 noundef 16) #19, !dbg !1738
  %11 = getelementptr inbounds [6 x %struct.gpt_context_t], [6 x %struct.gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !1739
  store i8 0, i8* %11, align 4, !dbg !1740
  %12 = getelementptr inbounds [6 x %struct.GPT_REGISTER_T*], [6 x %struct.GPT_REGISTER_T*]* @gp_gpt, i32 0, i32 %0, !dbg !1741
  %13 = load %struct.GPT_REGISTER_T*, %struct.GPT_REGISTER_T** %12, align 4, !dbg !1741
  tail call void @gpt_reset_default_timer(%struct.GPT_REGISTER_T* noundef %13) #19, !dbg !1742
  br label %14, !dbg !1743

14:                                               ; preds = %3, %1, %8
  %15 = phi i32 [ 0, %8 ], [ -2, %1 ], [ -3, %3 ], !dbg !1728
  ret i32 %15, !dbg !1744
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_get_free_run_count(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #0 section ".tcm_code" !dbg !1745 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1751, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i32* %1, metadata !1752, metadata !DIExpression()), !dbg !1753
  switch i32 %0, label %22 [
    i32 0, label %3
    i32 1, label %11
  ], !dbg !1754

3:                                                ; preds = %2
  %4 = load i32, i32* getelementptr inbounds ([6 x %struct.gpt_context_t], [6 x %struct.gpt_context_t]* @g_gpt_context, i32 0, i32 5, i32 0), align 4, !dbg !1755
  %5 = icmp eq i32 %4, 1, !dbg !1759
  br i1 %5, label %8, label %6, !dbg !1760

6:                                                ; preds = %3
  %7 = load %struct.GPT_REGISTER_T*, %struct.GPT_REGISTER_T** getelementptr inbounds ([6 x %struct.GPT_REGISTER_T*], [6 x %struct.GPT_REGISTER_T*]* @gp_gpt, i32 0, i32 5), align 4, !dbg !1761
  tail call void @gpt_start_free_run_timer(%struct.GPT_REGISTER_T* noundef %7, i32 noundef 16, i32 noundef 0) #19, !dbg !1763
  store i32 1, i32* getelementptr inbounds ([6 x %struct.gpt_context_t], [6 x %struct.gpt_context_t]* @g_gpt_context, i32 0, i32 5, i32 0), align 4, !dbg !1764
  br label %8, !dbg !1765

8:                                                ; preds = %6, %3
  %9 = load %struct.GPT_REGISTER_T*, %struct.GPT_REGISTER_T** getelementptr inbounds ([6 x %struct.GPT_REGISTER_T*], [6 x %struct.GPT_REGISTER_T*]* @gp_gpt, i32 0, i32 5), align 4, !dbg !1766
  %10 = tail call i32 @gpt_current_count(%struct.GPT_REGISTER_T* noundef %9) #19, !dbg !1767
  br label %20, !dbg !1768

11:                                               ; preds = %2
  %12 = load i32, i32* getelementptr inbounds ([6 x %struct.gpt_context_t], [6 x %struct.gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !1769
  %13 = icmp eq i32 %12, 1, !dbg !1773
  br i1 %13, label %16, label %14, !dbg !1774

14:                                               ; preds = %11
  %15 = load %struct.GPT_REGISTER_T*, %struct.GPT_REGISTER_T** getelementptr inbounds ([6 x %struct.GPT_REGISTER_T*], [6 x %struct.GPT_REGISTER_T*]* @gp_gpt, i32 0, i32 4), align 4, !dbg !1775
  tail call void @gpt_start_free_run_timer(%struct.GPT_REGISTER_T* noundef %15, i32 noundef 0, i32 noundef 12) #19, !dbg !1777
  store i32 1, i32* getelementptr inbounds ([6 x %struct.gpt_context_t], [6 x %struct.gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !1778
  br label %16, !dbg !1779

16:                                               ; preds = %14, %11
  %17 = load %struct.GPT_REGISTER_T*, %struct.GPT_REGISTER_T** getelementptr inbounds ([6 x %struct.GPT_REGISTER_T*], [6 x %struct.GPT_REGISTER_T*]* @gp_gpt, i32 0, i32 4), align 4, !dbg !1780
  %18 = tail call i32 @gpt_current_count(%struct.GPT_REGISTER_T* noundef %17) #19, !dbg !1781
  %19 = tail call i32 @gpt_clock_calibrate_count_to_us(i32 noundef %18) #19, !dbg !1782
  br label %20

20:                                               ; preds = %16, %8
  %21 = phi i32 [ %19, %16 ], [ %10, %8 ], !dbg !1783
  store i32 %21, i32* %1, align 4, !dbg !1783
  br label %22, !dbg !1784

22:                                               ; preds = %2, %20
  %23 = phi i32 [ 0, %20 ], [ -1, %2 ], !dbg !1753
  ret i32 %23, !dbg !1785
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local i32 @hal_gpt_get_duration_count(i32 noundef %0, i32 noundef %1, i32* noundef writeonly %2) local_unnamed_addr #4 section ".tcm_code" !dbg !1786 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1790, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i32 %1, metadata !1791, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i32* %2, metadata !1792, metadata !DIExpression()), !dbg !1793
  %4 = icmp eq i32* %2, null, !dbg !1794
  br i1 %4, label %7, label %5, !dbg !1796

5:                                                ; preds = %3
  %6 = sub i32 %1, %0, !dbg !1797
  store i32 %6, i32* %2, align 4, !dbg !1797
  br label %7, !dbg !1799

7:                                                ; preds = %3, %5
  %8 = phi i32 [ 0, %5 ], [ -1, %3 ], !dbg !1793
  ret i32 %8, !dbg !1800
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn
define dso_local i32 @hal_gpt_get_running_status(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #5 !dbg !1801 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1806, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i32* %1, metadata !1807, metadata !DIExpression()), !dbg !1808
  %3 = icmp ugt i32 %0, 5, !dbg !1809
  br i1 %3, label %7, label %4, !dbg !1811

4:                                                ; preds = %2
  %5 = getelementptr inbounds [6 x %struct.gpt_context_t], [6 x %struct.gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 0, !dbg !1812
  %6 = load i32, i32* %5, align 4, !dbg !1812
  store i32 %6, i32* %1, align 4, !dbg !1813
  br label %7, !dbg !1814

7:                                                ; preds = %2, %4
  %8 = phi i32 [ 0, %4 ], [ -2, %2 ], !dbg !1808
  ret i32 %8, !dbg !1815
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_register_callback(i32 noundef %0, void (i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #0 !dbg !1816 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1820, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata void (i8*)* %1, metadata !1821, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i8* %2, metadata !1822, metadata !DIExpression()), !dbg !1823
  %4 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #18, !dbg !1824
  br i1 %4, label %5, label %18, !dbg !1826

5:                                                ; preds = %3
  %6 = getelementptr inbounds [6 x %struct.gpt_context_t], [6 x %struct.gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 0, !dbg !1827
  %7 = load i32, i32* %6, align 4, !dbg !1827
  %8 = icmp eq i32 %7, 1, !dbg !1829
  br i1 %8, label %18, label %9, !dbg !1830

9:                                                ; preds = %5
  %10 = getelementptr inbounds [6 x %struct.gpt_context_t], [6 x %struct.gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !1831
  %11 = load i8, i8* %10, align 4, !dbg !1831, !range !1698
  %12 = icmp eq i8 %11, 1, !dbg !1832
  br i1 %12, label %13, label %18, !dbg !1833

13:                                               ; preds = %9
  %14 = icmp eq void (i8*)* %1, null, !dbg !1834
  br i1 %14, label %18, label %15, !dbg !1836

15:                                               ; preds = %13
  %16 = getelementptr inbounds [6 x %struct.gpt_context_t], [6 x %struct.gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 1, i32 0, !dbg !1837
  store void (i8*)* %1, void (i8*)** %16, align 4, !dbg !1838
  %17 = getelementptr inbounds [6 x %struct.gpt_context_t], [6 x %struct.gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 1, i32 1, !dbg !1839
  store i8* %2, i8** %17, align 4, !dbg !1840
  tail call void @gpt_nvic_register() #19, !dbg !1841
  br label %18, !dbg !1842

18:                                               ; preds = %13, %5, %9, %3, %15
  %19 = phi i32 [ 0, %15 ], [ -2, %3 ], [ -3, %9 ], [ -3, %5 ], [ -1, %13 ], !dbg !1823
  ret i32 %19, !dbg !1843
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_start_timer_ms(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !1844 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1849, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i32 %1, metadata !1850, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i32 %2, metadata !1851, metadata !DIExpression()), !dbg !1853
  %5 = bitcast i32* %4 to i8*, !dbg !1854
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5), !dbg !1854
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1852, metadata !DIExpression()), !dbg !1855
  %6 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #18, !dbg !1856
  br i1 %6, label %7, label %51, !dbg !1858

7:                                                ; preds = %3
  %8 = getelementptr inbounds [6 x %struct.gpt_context_t], [6 x %struct.gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 0, !dbg !1859
  %9 = load i32, i32* %8, align 4, !dbg !1859
  %10 = icmp eq i32 %9, 1, !dbg !1861
  br i1 %10, label %51, label %11, !dbg !1862

11:                                               ; preds = %7
  %12 = getelementptr inbounds [6 x %struct.gpt_context_t], [6 x %struct.gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !1863
  %13 = load i8, i8* %12, align 4, !dbg !1863, !range !1698
  %14 = icmp eq i8 %13, 1, !dbg !1864
  br i1 %14, label %15, label %51, !dbg !1865

15:                                               ; preds = %11
  %16 = icmp ugt i32 %1, 130150523, !dbg !1866
  br i1 %16, label %51, label %17, !dbg !1868

17:                                               ; preds = %15
  %18 = tail call i32 @save_and_set_interrupt_mask() #19, !dbg !1869
  store volatile i32 %18, i32* %4, align 4, !dbg !1870
  tail call void @gpt_open_clock_source() #19, !dbg !1871
  %19 = getelementptr inbounds [6 x %struct.GPT_REGISTER_T*], [6 x %struct.GPT_REGISTER_T*]* @gp_gpt, i32 0, i32 %0, !dbg !1872
  %20 = load %struct.GPT_REGISTER_T*, %struct.GPT_REGISTER_T** %19, align 4, !dbg !1872
  %21 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %20, i32 0, i32 2, !dbg !1873
  %22 = load volatile i32, i32* %21, align 4, !dbg !1874
  %23 = and i32 %22, -2, !dbg !1874
  store volatile i32 %23, i32* %21, align 4, !dbg !1874
  %24 = load %struct.GPT_REGISTER_T*, %struct.GPT_REGISTER_T** %19, align 4, !dbg !1875
  %25 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %24, i32 0, i32 0, !dbg !1876
  %26 = load volatile i32, i32* %25, align 4, !dbg !1877
  %27 = and i32 %26, -2, !dbg !1877
  store volatile i32 %27, i32* %25, align 4, !dbg !1877
  %28 = load %struct.GPT_REGISTER_T*, %struct.GPT_REGISTER_T** %19, align 4, !dbg !1878
  %29 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %28, i32 0, i32 1, !dbg !1879
  store volatile i32 16, i32* %29, align 4, !dbg !1880
  %30 = tail call i32 @gpt_convert_ms_to_32k_count(i32 noundef %1) #19, !dbg !1881
  %31 = load %struct.GPT_REGISTER_T*, %struct.GPT_REGISTER_T** %19, align 4, !dbg !1882
  %32 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %31, i32 0, i32 6, !dbg !1883
  store volatile i32 %30, i32* %32, align 4, !dbg !1884
  %33 = load %struct.GPT_REGISTER_T*, %struct.GPT_REGISTER_T** %19, align 4, !dbg !1885
  %34 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %33, i32 0, i32 4, !dbg !1886
  store volatile i32 1, i32* %34, align 4, !dbg !1887
  %35 = shl i32 %2, 4, !dbg !1888
  %36 = or i32 %35, 2, !dbg !1889
  %37 = load %struct.GPT_REGISTER_T*, %struct.GPT_REGISTER_T** %19, align 4, !dbg !1890
  %38 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %37, i32 0, i32 0, !dbg !1891
  store volatile i32 %36, i32* %38, align 4, !dbg !1892
  %39 = load %struct.GPT_REGISTER_T*, %struct.GPT_REGISTER_T** %19, align 4
  %40 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %39, i32 0, i32 5
  br label %41, !dbg !1893

41:                                               ; preds = %41, %17
  %42 = load volatile i32, i32* %40, align 4, !dbg !1894
  %43 = icmp eq i32 %42, 0, !dbg !1893
  br i1 %43, label %44, label %41, !dbg !1893, !llvm.loop !1895

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %39, i32 0, i32 0, !dbg !1897
  %46 = load volatile i32, i32* %45, align 4, !dbg !1898
  %47 = or i32 %46, 1, !dbg !1898
  store volatile i32 %47, i32* %45, align 4, !dbg !1898
  %48 = load %struct.GPT_REGISTER_T*, %struct.GPT_REGISTER_T** %19, align 4, !dbg !1899
  %49 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %48, i32 0, i32 2, !dbg !1900
  store volatile i32 1, i32* %49, align 4, !dbg !1901
  store i32 1, i32* %8, align 4, !dbg !1902
  %50 = load volatile i32, i32* %4, align 4, !dbg !1903
  tail call void @restore_interrupt_mask(i32 noundef %50) #19, !dbg !1904
  br label %51, !dbg !1905

51:                                               ; preds = %15, %7, %11, %3, %44
  %52 = phi i32 [ 0, %44 ], [ -2, %3 ], [ -4, %11 ], [ -4, %7 ], [ -1, %15 ], !dbg !1853
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5), !dbg !1906
  ret i32 %52, !dbg !1906
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_delay_ms(i32 noundef %0) local_unnamed_addr #0 section ".tcm_code" !dbg !1907 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1911, metadata !DIExpression()), !dbg !1912
  %2 = load i32, i32* getelementptr inbounds ([6 x %struct.gpt_context_t], [6 x %struct.gpt_context_t]* @g_gpt_context, i32 0, i32 5, i32 0), align 4, !dbg !1913
  %3 = icmp eq i32 %2, 1, !dbg !1915
  br i1 %3, label %6, label %4, !dbg !1916

4:                                                ; preds = %1
  %5 = load %struct.GPT_REGISTER_T*, %struct.GPT_REGISTER_T** getelementptr inbounds ([6 x %struct.GPT_REGISTER_T*], [6 x %struct.GPT_REGISTER_T*]* @gp_gpt, i32 0, i32 5), align 4, !dbg !1917
  tail call void @gpt_start_free_run_timer(%struct.GPT_REGISTER_T* noundef %5, i32 noundef 16, i32 noundef 0) #19, !dbg !1919
  store i32 1, i32* getelementptr inbounds ([6 x %struct.gpt_context_t], [6 x %struct.gpt_context_t]* @g_gpt_context, i32 0, i32 5, i32 0), align 4, !dbg !1920
  br label %6, !dbg !1921

6:                                                ; preds = %4, %1
  %7 = load %struct.GPT_REGISTER_T*, %struct.GPT_REGISTER_T** getelementptr inbounds ([6 x %struct.GPT_REGISTER_T*], [6 x %struct.GPT_REGISTER_T*]* @gp_gpt, i32 0, i32 5), align 4, !dbg !1922
  %8 = tail call i32 @gpt_convert_ms_to_32k_count(i32 noundef %0) #19, !dbg !1923
  tail call void @gpt_delay_time(%struct.GPT_REGISTER_T* noundef %7, i32 noundef %8) #19, !dbg !1924
  ret i32 0, !dbg !1925
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_start_timer_us(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !1926 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1928, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i32 %1, metadata !1929, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i32 %2, metadata !1930, metadata !DIExpression()), !dbg !1932
  %5 = bitcast i32* %4 to i8*, !dbg !1933
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5), !dbg !1933
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1931, metadata !DIExpression()), !dbg !1934
  %6 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #18, !dbg !1935
  br i1 %6, label %7, label %50, !dbg !1937

7:                                                ; preds = %3
  %8 = getelementptr inbounds [6 x %struct.gpt_context_t], [6 x %struct.gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 0, !dbg !1938
  %9 = load i32, i32* %8, align 4, !dbg !1938
  %10 = icmp eq i32 %9, 1, !dbg !1940
  br i1 %10, label %50, label %11, !dbg !1941

11:                                               ; preds = %7
  %12 = getelementptr inbounds [6 x %struct.gpt_context_t], [6 x %struct.gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !1942
  %13 = load i8, i8* %12, align 4, !dbg !1942, !range !1698
  %14 = icmp eq i8 %13, 1, !dbg !1943
  br i1 %14, label %15, label %50, !dbg !1944

15:                                               ; preds = %11
  %16 = getelementptr inbounds [6 x %struct.gpt_context_t], [6 x %struct.gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 3, !dbg !1945
  store i8 1, i8* %16, align 1, !dbg !1946
  %17 = tail call i32 @save_and_set_interrupt_mask() #19, !dbg !1947
  store volatile i32 %17, i32* %4, align 4, !dbg !1948
  tail call void @gpt_open_clock_source() #19, !dbg !1949
  %18 = getelementptr inbounds [6 x %struct.GPT_REGISTER_T*], [6 x %struct.GPT_REGISTER_T*]* @gp_gpt, i32 0, i32 %0, !dbg !1950
  %19 = load %struct.GPT_REGISTER_T*, %struct.GPT_REGISTER_T** %18, align 4, !dbg !1950
  %20 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %19, i32 0, i32 2, !dbg !1951
  %21 = load volatile i32, i32* %20, align 4, !dbg !1952
  %22 = and i32 %21, -2, !dbg !1952
  store volatile i32 %22, i32* %20, align 4, !dbg !1952
  %23 = load %struct.GPT_REGISTER_T*, %struct.GPT_REGISTER_T** %18, align 4, !dbg !1953
  %24 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %23, i32 0, i32 0, !dbg !1954
  %25 = load volatile i32, i32* %24, align 4, !dbg !1955
  %26 = and i32 %25, -2, !dbg !1955
  store volatile i32 %26, i32* %24, align 4, !dbg !1955
  %27 = load %struct.GPT_REGISTER_T*, %struct.GPT_REGISTER_T** %18, align 4, !dbg !1956
  %28 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %27, i32 0, i32 1, !dbg !1957
  store volatile i32 12, i32* %28, align 4, !dbg !1958
  %29 = tail call i32 @gpt_clock_calibrate_us_to_count(i32 noundef %1) #19, !dbg !1959
  %30 = load %struct.GPT_REGISTER_T*, %struct.GPT_REGISTER_T** %18, align 4, !dbg !1960
  %31 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %30, i32 0, i32 6, !dbg !1961
  store volatile i32 %29, i32* %31, align 4, !dbg !1962
  %32 = load %struct.GPT_REGISTER_T*, %struct.GPT_REGISTER_T** %18, align 4, !dbg !1963
  %33 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %32, i32 0, i32 4, !dbg !1964
  store volatile i32 1, i32* %33, align 4, !dbg !1965
  %34 = shl i32 %2, 4, !dbg !1966
  %35 = or i32 %34, 2, !dbg !1967
  %36 = load %struct.GPT_REGISTER_T*, %struct.GPT_REGISTER_T** %18, align 4, !dbg !1968
  %37 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %36, i32 0, i32 0, !dbg !1969
  store volatile i32 %35, i32* %37, align 4, !dbg !1970
  %38 = load %struct.GPT_REGISTER_T*, %struct.GPT_REGISTER_T** %18, align 4
  %39 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %38, i32 0, i32 5
  br label %40, !dbg !1971

40:                                               ; preds = %40, %15
  %41 = load volatile i32, i32* %39, align 4, !dbg !1972
  %42 = icmp eq i32 %41, 0, !dbg !1971
  br i1 %42, label %43, label %40, !dbg !1971, !llvm.loop !1973

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %38, i32 0, i32 0, !dbg !1975
  %45 = load volatile i32, i32* %44, align 4, !dbg !1976
  %46 = or i32 %45, 1, !dbg !1976
  store volatile i32 %46, i32* %44, align 4, !dbg !1976
  %47 = load %struct.GPT_REGISTER_T*, %struct.GPT_REGISTER_T** %18, align 4, !dbg !1977
  %48 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %47, i32 0, i32 2, !dbg !1978
  store volatile i32 1, i32* %48, align 4, !dbg !1979
  %49 = load volatile i32, i32* %4, align 4, !dbg !1980
  tail call void @restore_interrupt_mask(i32 noundef %49) #19, !dbg !1981
  store i32 1, i32* %8, align 4, !dbg !1982
  br label %50, !dbg !1983

50:                                               ; preds = %7, %11, %3, %43
  %51 = phi i32 [ 0, %43 ], [ -2, %3 ], [ -4, %11 ], [ -4, %7 ], !dbg !1932
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5), !dbg !1984
  ret i32 %51, !dbg !1984
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_delay_us(i32 noundef %0) local_unnamed_addr #0 section ".tcm_code" !dbg !1985 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1987, metadata !DIExpression()), !dbg !1988
  %2 = load i32, i32* getelementptr inbounds ([6 x %struct.gpt_context_t], [6 x %struct.gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !1989
  %3 = icmp eq i32 %2, 1, !dbg !1991
  br i1 %3, label %6, label %4, !dbg !1992

4:                                                ; preds = %1
  %5 = load %struct.GPT_REGISTER_T*, %struct.GPT_REGISTER_T** getelementptr inbounds ([6 x %struct.GPT_REGISTER_T*], [6 x %struct.GPT_REGISTER_T*]* @gp_gpt, i32 0, i32 4), align 4, !dbg !1993
  tail call void @gpt_start_free_run_timer(%struct.GPT_REGISTER_T* noundef %5, i32 noundef 0, i32 noundef 12) #19, !dbg !1995
  store i32 1, i32* getelementptr inbounds ([6 x %struct.gpt_context_t], [6 x %struct.gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !1996
  br label %6, !dbg !1997

6:                                                ; preds = %4, %1
  %7 = load %struct.GPT_REGISTER_T*, %struct.GPT_REGISTER_T** getelementptr inbounds ([6 x %struct.GPT_REGISTER_T*], [6 x %struct.GPT_REGISTER_T*]* @gp_gpt, i32 0, i32 4), align 4, !dbg !1998
  %8 = tail call i32 @gpt_clock_calibrate_us_to_count(i32 noundef %0) #19, !dbg !1999
  tail call void @gpt_delay_time(%struct.GPT_REGISTER_T* noundef %7, i32 noundef %8) #19, !dbg !2000
  ret i32 0, !dbg !2001
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_stop_timer(i32 noundef %0) local_unnamed_addr #0 !dbg !2002 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !2004, metadata !DIExpression()), !dbg !2006
  %3 = bitcast i32* %2 to i8*, !dbg !2007
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !2007
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2005, metadata !DIExpression()), !dbg !2008
  %4 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #18, !dbg !2009
  br i1 %4, label %5, label %24, !dbg !2011

5:                                                ; preds = %1
  %6 = tail call i32 @save_and_set_interrupt_mask() #19, !dbg !2012
  store volatile i32 %6, i32* %2, align 4, !dbg !2013
  %7 = getelementptr inbounds [6 x %struct.GPT_REGISTER_T*], [6 x %struct.GPT_REGISTER_T*]* @gp_gpt, i32 0, i32 %0, !dbg !2014
  %8 = load %struct.GPT_REGISTER_T*, %struct.GPT_REGISTER_T** %7, align 4, !dbg !2014
  %9 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %8, i32 0, i32 2, !dbg !2015
  %10 = load volatile i32, i32* %9, align 4, !dbg !2016
  %11 = and i32 %10, -2, !dbg !2016
  store volatile i32 %11, i32* %9, align 4, !dbg !2016
  %12 = load %struct.GPT_REGISTER_T*, %struct.GPT_REGISTER_T** %7, align 4, !dbg !2017
  %13 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %12, i32 0, i32 0, !dbg !2018
  %14 = load volatile i32, i32* %13, align 4, !dbg !2019
  %15 = and i32 %14, -2, !dbg !2019
  store volatile i32 %15, i32* %13, align 4, !dbg !2019
  %16 = load %struct.GPT_REGISTER_T*, %struct.GPT_REGISTER_T** %7, align 4, !dbg !2020
  %17 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %16, i32 0, i32 4, !dbg !2021
  store volatile i32 1, i32* %17, align 4, !dbg !2022
  %18 = getelementptr inbounds [6 x %struct.gpt_context_t], [6 x %struct.gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 0, !dbg !2023
  store i32 0, i32* %18, align 4, !dbg !2024
  %19 = load volatile i32, i32* %2, align 4, !dbg !2025
  tail call void @restore_interrupt_mask(i32 noundef %19) #19, !dbg !2026
  %20 = getelementptr inbounds [6 x %struct.gpt_context_t], [6 x %struct.gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 3, !dbg !2027
  %21 = load i8, i8* %20, align 1, !dbg !2027, !range !1698
  %22 = icmp eq i8 %21, 0, !dbg !2027
  br i1 %22, label %24, label %23, !dbg !2029

23:                                               ; preds = %5
  store i8 0, i8* %20, align 1, !dbg !2030
  br label %24, !dbg !2032

24:                                               ; preds = %5, %23, %1
  %25 = phi i32 [ -2, %1 ], [ 0, %23 ], [ 0, %5 ], !dbg !2006
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !2033
  ret i32 %25, !dbg !2033
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_sw_get_timer(i32* noundef writeonly %0) local_unnamed_addr #0 !dbg !2034 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !2038, metadata !DIExpression()), !dbg !2041
  %2 = load i32, i32* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 3), align 4, !dbg !2042
  %3 = icmp ugt i32 %2, 31, !dbg !2044
  br i1 %3, label %13, label %4, !dbg !2045

4:                                                ; preds = %1
  %5 = icmp eq i32* %0, null, !dbg !2046
  br i1 %5, label %13, label %6, !dbg !2048

6:                                                ; preds = %4
  %7 = tail call i32 @save_and_set_interrupt_mask() #19, !dbg !2049
  call void @llvm.dbg.value(metadata i32 %7, metadata !2040, metadata !DIExpression()), !dbg !2041
  %8 = tail call i32 @gpt_sw_get_free_timer() #19, !dbg !2050
  call void @llvm.dbg.value(metadata i32 %8, metadata !2039, metadata !DIExpression()), !dbg !2041
  %9 = or i32 %8, -559087616, !dbg !2051
  store i32 %9, i32* %0, align 4, !dbg !2052
  %10 = getelementptr inbounds %struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 0, i32 %8, i32 2, !dbg !2053
  store i8 1, i8* %10, align 4, !dbg !2054
  %11 = load i32, i32* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 3), align 4, !dbg !2055
  %12 = add i32 %11, 1, !dbg !2055
  store i32 %12, i32* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 3), align 4, !dbg !2055
  tail call void @restore_interrupt_mask(i32 noundef %7) #19, !dbg !2056
  br label %13, !dbg !2057

13:                                               ; preds = %4, %1, %6
  %14 = phi i32 [ 0, %6 ], [ -3, %1 ], [ -1, %4 ], !dbg !2041
  ret i32 %14, !dbg !2058
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local i32 @hal_gpt_sw_free_timer(i32 noundef %0) local_unnamed_addr #7 !dbg !2059 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !2061, metadata !DIExpression()), !dbg !2063
  %3 = bitcast i32* %2 to i8*, !dbg !2064
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !2064
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2062, metadata !DIExpression()), !dbg !2065
  %4 = and i32 %0, -559087616, !dbg !2066
  %5 = icmp eq i32 %4, -559087616, !dbg !2068
  br i1 %5, label %6, label %24, !dbg !2069

6:                                                ; preds = %1
  %7 = and i32 %0, 65535, !dbg !2070
  store volatile i32 %7, i32* %2, align 4, !dbg !2071
  %8 = load i32, i32* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 3), align 4, !dbg !2072
  %9 = icmp eq i32 %8, 0, !dbg !2074
  br i1 %9, label %24, label %10, !dbg !2075

10:                                               ; preds = %6
  %11 = load volatile i32, i32* %2, align 4, !dbg !2076
  %12 = getelementptr inbounds %struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 0, i32 %11, i32 3, !dbg !2078
  %13 = load i8, i8* %12, align 1, !dbg !2078, !range !1698
  %14 = icmp eq i8 %13, 0, !dbg !2078
  br i1 %14, label %15, label %24, !dbg !2079

15:                                               ; preds = %10
  %16 = load volatile i32, i32* %2, align 4, !dbg !2080
  %17 = getelementptr inbounds %struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 0, i32 %16, i32 2, !dbg !2082
  %18 = load i8, i8* %17, align 4, !dbg !2082, !range !1698
  %19 = icmp eq i8 %18, 1, !dbg !2083
  br i1 %19, label %20, label %24, !dbg !2084

20:                                               ; preds = %15
  %21 = load volatile i32, i32* %2, align 4, !dbg !2085
  %22 = getelementptr inbounds %struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 0, i32 %21, i32 2, !dbg !2086
  store i8 0, i8* %22, align 4, !dbg !2087
  %23 = add i32 %8, -1, !dbg !2088
  store i32 %23, i32* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 3), align 4, !dbg !2088
  br label %24, !dbg !2089

24:                                               ; preds = %15, %10, %6, %1, %20
  %25 = phi i32 [ 0, %20 ], [ -1, %1 ], [ -3, %6 ], [ -3, %10 ], [ -3, %15 ], !dbg !2063
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !2090
  ret i32 %25, !dbg !2090
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_sw_start_timer_ms(i32 noundef %0, i32 noundef %1, void (i8*)* noundef %2, i8* noundef %3) local_unnamed_addr #0 !dbg !2091 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2095, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 %1, metadata !2096, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata void (i8*)* %2, metadata !2097, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i8* %3, metadata !2098, metadata !DIExpression()), !dbg !2102
  %5 = and i32 %0, -559087616, !dbg !2103
  %6 = icmp ne i32 %5, -559087616, !dbg !2105
  %7 = icmp eq void (i8*)* %2, null
  %8 = or i1 %6, %7, !dbg !2106
  call void @llvm.dbg.value(metadata i32 %0, metadata !2101, metadata !DIExpression(DW_OP_constu, 65535, DW_OP_and, DW_OP_stack_value)), !dbg !2102
  br i1 %8, label %44, label %9, !dbg !2106

9:                                                ; preds = %4
  %10 = and i32 %0, 65535, !dbg !2107
  call void @llvm.dbg.value(metadata i32 %10, metadata !2101, metadata !DIExpression()), !dbg !2102
  %11 = getelementptr inbounds %struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 0, i32 %10, i32 3, !dbg !2108
  %12 = load i8, i8* %11, align 1, !dbg !2108, !range !1698
  %13 = icmp eq i8 %12, 0, !dbg !2108
  br i1 %13, label %14, label %44, !dbg !2110

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 0, i32 %10, i32 2, !dbg !2111
  %16 = load i8, i8* %15, align 4, !dbg !2111, !range !1698
  %17 = icmp eq i8 %16, 1, !dbg !2113
  br i1 %17, label %18, label %44, !dbg !2114

18:                                               ; preds = %14
  %19 = icmp ugt i32 %1, 130150523, !dbg !2115
  br i1 %19, label %44, label %20, !dbg !2117

20:                                               ; preds = %18
  %21 = tail call i32 @save_and_set_interrupt_mask() #19, !dbg !2118
  call void @llvm.dbg.value(metadata i32 %21, metadata !2100, metadata !DIExpression()), !dbg !2102
  store i8 1, i8* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 7), align 2, !dbg !2119
  %22 = load i8, i8* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 5), align 4, !dbg !2120, !range !1698
  %23 = icmp eq i8 %22, 0, !dbg !2122
  br i1 %23, label %24, label %27, !dbg !2123

24:                                               ; preds = %20
  %25 = tail call i32 @hal_gpt_init(i32 noundef 3) #18, !dbg !2124
  %26 = tail call i32 @hal_gpt_register_callback(i32 noundef 3, void (i8*)* noundef nonnull @gpt_sw_handler, i8* noundef null) #18, !dbg !2126
  store i8 1, i8* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 5), align 4, !dbg !2127
  br label %27, !dbg !2128

27:                                               ; preds = %24, %20
  %28 = tail call i32 @hal_gpt_stop_timer(i32 noundef 3) #18, !dbg !2129
  %29 = load i8, i8* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 6), align 1, !dbg !2130, !range !1698
  %30 = icmp eq i8 %29, 0, !dbg !2132
  br i1 %30, label %31, label %34, !dbg !2133

31:                                               ; preds = %27
  %32 = load %struct.GPT_REGISTER_T*, %struct.GPT_REGISTER_T** getelementptr inbounds ([6 x %struct.GPT_REGISTER_T*], [6 x %struct.GPT_REGISTER_T*]* @gp_gpt, i32 0, i32 3), align 4, !dbg !2134
  %33 = tail call i32 @gpt_sw_get_current_time_ms(%struct.GPT_REGISTER_T* noundef %32) #19, !dbg !2136
  call void @llvm.dbg.value(metadata i32 %33, metadata !2099, metadata !DIExpression()), !dbg !2102
  br label %34, !dbg !2137

34:                                               ; preds = %27, %31
  %35 = phi i32 [ %33, %31 ], [ 0, %27 ], !dbg !2138
  call void @llvm.dbg.value(metadata i32 %35, metadata !2099, metadata !DIExpression()), !dbg !2102
  %36 = load i32, i32* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 1), align 4, !dbg !2139
  %37 = add i32 %36, %35, !dbg !2139
  store i32 %37, i32* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 1), align 4, !dbg !2139
  %38 = load i32, i32* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 4), align 4, !dbg !2140
  %39 = add i32 %38, 1, !dbg !2140
  store i32 %39, i32* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 4), align 4, !dbg !2140
  store i8 1, i8* %11, align 1, !dbg !2141
  %40 = add i32 %37, %1, !dbg !2142
  %41 = getelementptr inbounds %struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 0, i32 %10, i32 1, !dbg !2143
  store i32 %40, i32* %41, align 4, !dbg !2144
  %42 = getelementptr inbounds %struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 0, i32 %10, i32 0, i32 0, !dbg !2145
  store void (i8*)* %2, void (i8*)** %42, align 4, !dbg !2146
  %43 = getelementptr inbounds %struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 0, i32 %10, i32 0, i32 1, !dbg !2147
  store i8* %3, i8** %43, align 4, !dbg !2148
  tail call void @gpt_sw_start_timer() #19, !dbg !2149
  store i8 0, i8* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 7), align 2, !dbg !2150
  tail call void @restore_interrupt_mask(i32 noundef %21) #19, !dbg !2151
  br label %44, !dbg !2152

44:                                               ; preds = %18, %14, %9, %4, %34
  %45 = phi i32 [ 0, %34 ], [ -1, %4 ], [ -3, %9 ], [ -3, %14 ], [ -1, %18 ], !dbg !2102
  ret i32 %45, !dbg !2153
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_sw_stop_timer_ms(i32 noundef %0) local_unnamed_addr #0 !dbg !2154 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2156, metadata !DIExpression()), !dbg !2160
  %2 = and i32 %0, -559087616, !dbg !2161
  %3 = icmp eq i32 %2, -559087616, !dbg !2163
  br i1 %3, label %4, label %31, !dbg !2164

4:                                                ; preds = %1
  %5 = and i32 %0, 65535, !dbg !2165
  call void @llvm.dbg.value(metadata i32 %5, metadata !2159, metadata !DIExpression()), !dbg !2160
  %6 = getelementptr inbounds %struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 0, i32 %5, i32 3, !dbg !2166
  %7 = load i8, i8* %6, align 1, !dbg !2166, !range !1698
  %8 = icmp eq i8 %7, 1, !dbg !2168
  br i1 %8, label %9, label %31, !dbg !2169

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 0, i32 %5, i32 2, !dbg !2170
  %11 = load i8, i8* %10, align 4, !dbg !2170, !range !1698
  %12 = icmp eq i8 %11, 1, !dbg !2172
  br i1 %12, label %13, label %31, !dbg !2173

13:                                               ; preds = %9
  %14 = tail call i32 @save_and_set_interrupt_mask() #19, !dbg !2174
  call void @llvm.dbg.value(metadata i32 %14, metadata !2158, metadata !DIExpression()), !dbg !2160
  store i8 1, i8* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 7), align 2, !dbg !2175
  %15 = tail call i32 @hal_gpt_stop_timer(i32 noundef 3) #18, !dbg !2176
  store i8 0, i8* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 7), align 2, !dbg !2177
  %16 = load i8, i8* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 6), align 1, !dbg !2178, !range !1698
  %17 = icmp eq i8 %16, 0, !dbg !2180
  br i1 %17, label %18, label %21, !dbg !2181

18:                                               ; preds = %13
  %19 = load %struct.GPT_REGISTER_T*, %struct.GPT_REGISTER_T** getelementptr inbounds ([6 x %struct.GPT_REGISTER_T*], [6 x %struct.GPT_REGISTER_T*]* @gp_gpt, i32 0, i32 3), align 4, !dbg !2182
  %20 = tail call i32 @gpt_sw_get_current_time_ms(%struct.GPT_REGISTER_T* noundef %19) #19, !dbg !2184
  call void @llvm.dbg.value(metadata i32 %20, metadata !2157, metadata !DIExpression()), !dbg !2160
  br label %21, !dbg !2185

21:                                               ; preds = %13, %18
  %22 = phi i32 [ %20, %18 ], [ 0, %13 ], !dbg !2186
  call void @llvm.dbg.value(metadata i32 %22, metadata !2157, metadata !DIExpression()), !dbg !2160
  %23 = load i32, i32* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 1), align 4, !dbg !2187
  %24 = add i32 %23, %22, !dbg !2187
  store i32 %24, i32* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 1), align 4, !dbg !2187
  %25 = load i32, i32* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 4), align 4, !dbg !2188
  %26 = add i32 %25, -1, !dbg !2188
  store i32 %26, i32* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 4), align 4, !dbg !2188
  store i8 0, i8* %6, align 1, !dbg !2189
  %27 = load i32, i32* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 4), align 4, !dbg !2190
  %28 = icmp eq i32 %27, 0, !dbg !2192
  br i1 %28, label %30, label %29, !dbg !2193

29:                                               ; preds = %21
  tail call void @gpt_sw_start_timer() #19, !dbg !2194
  br label %30, !dbg !2196

30:                                               ; preds = %21, %29
  store i8 0, i8* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 7), align 2, !dbg !2197
  tail call void @restore_interrupt_mask(i32 noundef %14) #19, !dbg !2198
  br label %31, !dbg !2199

31:                                               ; preds = %9, %4, %1, %30
  %32 = phi i32 [ 0, %30 ], [ -1, %1 ], [ -3, %4 ], [ -3, %9 ], !dbg !2160
  ret i32 %32, !dbg !2200
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_sw_get_remaining_time_ms(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !2201 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2205, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i32* %1, metadata !2206, metadata !DIExpression()), !dbg !2210
  %3 = and i32 %0, -559087616, !dbg !2211
  %4 = icmp eq i32 %3, -559087616, !dbg !2213
  br i1 %4, label %5, label %20, !dbg !2214

5:                                                ; preds = %2
  %6 = and i32 %0, 65535, !dbg !2215
  call void @llvm.dbg.value(metadata i32 %6, metadata !2209, metadata !DIExpression()), !dbg !2210
  %7 = getelementptr inbounds %struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 0, i32 %6, i32 2, !dbg !2216
  %8 = load i8, i8* %7, align 4, !dbg !2216, !range !1698
  %9 = icmp eq i8 %8, 1, !dbg !2218
  br i1 %9, label %10, label %20, !dbg !2219

10:                                               ; preds = %5
  %11 = tail call i32 @save_and_set_interrupt_mask() #19, !dbg !2220
  call void @llvm.dbg.value(metadata i32 %11, metadata !2208, metadata !DIExpression()), !dbg !2210
  %12 = load i32, i32* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 1), align 4, !dbg !2221
  %13 = load %struct.GPT_REGISTER_T*, %struct.GPT_REGISTER_T** getelementptr inbounds ([6 x %struct.GPT_REGISTER_T*], [6 x %struct.GPT_REGISTER_T*]* @gp_gpt, i32 0, i32 3), align 4, !dbg !2222
  %14 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %13, i32 0, i32 5, !dbg !2223
  %15 = load volatile i32, i32* %14, align 4, !dbg !2223
  %16 = add i32 %15, %12, !dbg !2224
  call void @llvm.dbg.value(metadata i32 %16, metadata !2207, metadata !DIExpression()), !dbg !2210
  %17 = getelementptr inbounds %struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 0, i32 %6, i32 1, !dbg !2225
  %18 = load i32, i32* %17, align 4, !dbg !2225
  %19 = tail call i32 @llvm.usub.sat.i32(i32 %18, i32 %16), !dbg !2227
  store i32 %19, i32* %1, align 4, !dbg !2228
  tail call void @restore_interrupt_mask(i32 noundef %11) #19, !dbg !2229
  br label %20, !dbg !2230

20:                                               ; preds = %5, %2, %10
  %21 = phi i32 [ 0, %10 ], [ -1, %2 ], [ -3, %5 ], !dbg !2210
  ret i32 %21, !dbg !2231
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @gpt_calibrate_algorithm(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 section ".tcm_code" !dbg !2232 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2236, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i32 %1, metadata !2237, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i32 %2, metadata !2238, metadata !DIExpression()), !dbg !2243
  %4 = and i32 %0, 65535, !dbg !2244
  %5 = mul i32 %4, %1, !dbg !2245
  call void @llvm.dbg.value(metadata i32 %5, metadata !2239, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2243
  %6 = lshr i32 %0, 16, !dbg !2246
  %7 = mul i32 %6, %1, !dbg !2247
  call void @llvm.dbg.value(metadata i32 %7, metadata !2239, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !2243
  %8 = and i32 %5, 65535, !dbg !2248
  call void @llvm.dbg.value(metadata i32 %8, metadata !2241, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2243
  %9 = lshr i32 %5, 16, !dbg !2249
  %10 = add i32 %9, %7, !dbg !2250
  call void @llvm.dbg.value(metadata i32 %10, metadata !2241, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !2243
  %11 = udiv i32 %10, %2, !dbg !2251
  call void @llvm.dbg.value(metadata i32 %11, metadata !2242, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !2243
  %12 = mul i32 %11, %2
  %13 = sub i32 %10, %12
  %14 = shl i32 %13, 16, !dbg !2252
  %15 = or i32 %14, %8, !dbg !2253
  %16 = udiv i32 %15, %2, !dbg !2254
  call void @llvm.dbg.value(metadata i32 %16, metadata !2242, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2243
  %17 = shl i32 %11, 16, !dbg !2255
  %18 = add i32 %16, %17, !dbg !2256
  ret i32 %18, !dbg !2257
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @gpt_current_count(%struct.GPT_REGISTER_T* noundef %0) local_unnamed_addr #9 section ".tcm_code" !dbg !2258 {
  call void @llvm.dbg.value(metadata %struct.GPT_REGISTER_T* %0, metadata !2262, metadata !DIExpression()), !dbg !2263
  %2 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %0, i32 0, i32 5, !dbg !2264
  %3 = load volatile i32, i32* %2, align 4, !dbg !2264
  ret i32 %3, !dbg !2265
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @gpt_convert_ms_to_32k_count(i32 noundef %0) local_unnamed_addr #8 section ".tcm_code" !dbg !2266 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2270, metadata !DIExpression()), !dbg !2271
  %2 = shl i32 %0, 5, !dbg !2272
  %3 = mul i32 %0, 7, !dbg !2273
  %4 = udiv i32 %3, 10, !dbg !2274
  %5 = add i32 %4, %2, !dbg !2275
  %6 = mul i32 %0, 6, !dbg !2276
  %7 = udiv i32 %6, 100, !dbg !2277
  %8 = add i32 %5, %7, !dbg !2278
  %9 = shl i32 %0, 3, !dbg !2279
  %10 = udiv i32 %9, 1000, !dbg !2280
  %11 = add i32 %8, %10, !dbg !2281
  ret i32 %11, !dbg !2282
}

; Function Attrs: noinline nounwind optsize
define dso_local void @gpt_get_lfosc_clock() local_unnamed_addr #0 section ".tcm_code" !dbg !207 {
  %1 = load i1, i1* @gpt_get_lfosc_clock.flag, align 1, !dbg !2283
  br i1 %1, label %10, label %2, !dbg !2285

2:                                                ; preds = %0
  %3 = tail call zeroext i1 @is_clk_use_lfosc() #19, !dbg !2286
  br i1 %3, label %4, label %6, !dbg !2289

4:                                                ; preds = %2
  %5 = tail call i32 @clock_get_freq_lfosc() #19, !dbg !2290
  store i32 %5, i32* @gpt_clock_source, align 4, !dbg !2292
  switch i32 %5, label %8 [
    i32 26000, label %6
    i32 0, label %6
  ], !dbg !2293

6:                                                ; preds = %2, %4, %4
  %7 = phi i1 [ false, %4 ], [ false, %4 ], [ true, %2 ]
  store i32 26000, i32* @gpt_clock_source, align 4, !dbg !2295
  br label %8, !dbg !2295

8:                                                ; preds = %6, %4
  %9 = phi i1 [ true, %4 ], [ %7, %6 ]
  store i1 %9, i1* @gpt_get_lfosc_clock.flag, align 1, !dbg !2295
  br label %10, !dbg !2296

10:                                               ; preds = %8, %0
  ret void, !dbg !2296
}

; Function Attrs: optsize
declare dso_local i32 @clock_get_freq_lfosc() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize
define dso_local void @gpt_open_clock_source() local_unnamed_addr #0 section ".tcm_code" !dbg !2297 {
  %1 = tail call zeroext i1 @hal_clock_is_enabled(i32 noundef 66) #19, !dbg !2298
  br i1 %1, label %4, label %2, !dbg !2300

2:                                                ; preds = %0
  %3 = tail call i32 @hal_clock_enable(i32 noundef 66) #19, !dbg !2301
  br label %4, !dbg !2303

4:                                                ; preds = %2, %0
  ret void, !dbg !2304
}

; Function Attrs: optsize
declare dso_local zeroext i1 @hal_clock_is_enabled(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare dso_local i32 @hal_clock_enable(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpt_clock_calibrate_us_to_count(i32 noundef %0) local_unnamed_addr #0 section ".tcm_code" !dbg !2305 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2307, metadata !DIExpression()), !dbg !2308
  tail call void @gpt_get_lfosc_clock() #18, !dbg !2309
  %2 = tail call zeroext i1 @is_clk_use_lfosc() #19, !dbg !2310
  br i1 %2, label %3, label %6, !dbg !2312

3:                                                ; preds = %1
  %4 = load i32, i32* @gpt_clock_source, align 4, !dbg !2313
  %5 = tail call i32 @gpt_calibrate_algorithm(i32 noundef %0, i32 noundef %4, i32 noundef 26000) #18, !dbg !2315
  br label %6, !dbg !2316

6:                                                ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ %0, %1 ], !dbg !2317
  ret i32 %7, !dbg !2318
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpt_clock_calibrate_count_to_us(i32 noundef %0) local_unnamed_addr #0 section ".tcm_code" !dbg !2319 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2321, metadata !DIExpression()), !dbg !2322
  tail call void @gpt_get_lfosc_clock() #18, !dbg !2323
  %2 = tail call zeroext i1 @is_clk_use_lfosc() #19, !dbg !2324
  br i1 %2, label %3, label %6, !dbg !2326

3:                                                ; preds = %1
  %4 = load i32, i32* @gpt_clock_source, align 4, !dbg !2327
  %5 = tail call i32 @gpt_calibrate_algorithm(i32 noundef %0, i32 noundef 26000, i32 noundef %4) #18, !dbg !2329
  br label %6, !dbg !2330

6:                                                ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ %0, %1 ], !dbg !2331
  ret i32 %7, !dbg !2332
}

; Function Attrs: noinline nounwind optsize
define dso_local void @gpt_start_free_run_timer(%struct.GPT_REGISTER_T* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 section ".tcm_code" !dbg !2333 {
  call void @llvm.dbg.value(metadata %struct.GPT_REGISTER_T* %0, metadata !2337, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i32 %1, metadata !2338, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i32 %2, metadata !2339, metadata !DIExpression()), !dbg !2340
  tail call void @gpt_open_clock_source() #18, !dbg !2341
  %4 = or i32 %2, %1, !dbg !2342
  %5 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %0, i32 0, i32 1, !dbg !2343
  store volatile i32 %4, i32* %5, align 4, !dbg !2344
  %6 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %0, i32 0, i32 0, !dbg !2345
  store volatile i32 49, i32* %6, align 4, !dbg !2346
  ret void, !dbg !2347
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @gpt_delay_time(%struct.GPT_REGISTER_T* noundef %0, i32 noundef %1) local_unnamed_addr #10 section ".tcm_code" !dbg !2348 {
  call void @llvm.dbg.value(metadata %struct.GPT_REGISTER_T* %0, metadata !2352, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i32 %1, metadata !2353, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i32 0, metadata !2354, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i32 0, metadata !2355, metadata !DIExpression()), !dbg !2356
  %3 = tail call i32 @gpt_current_count(%struct.GPT_REGISTER_T* noundef %0) #18, !dbg !2357
  call void @llvm.dbg.value(metadata i32 %3, metadata !2355, metadata !DIExpression()), !dbg !2356
  %4 = add i32 %1, 1, !dbg !2358
  %5 = add i32 %4, %3, !dbg !2359
  call void @llvm.dbg.value(metadata i32 %5, metadata !2354, metadata !DIExpression()), !dbg !2356
  %6 = icmp ugt i32 %5, %3, !dbg !2360
  br i1 %6, label %7, label %10, !dbg !2362

7:                                                ; preds = %2, %7
  %8 = tail call i32 @gpt_current_count(%struct.GPT_REGISTER_T* noundef %0) #18, !dbg !2363
  %9 = icmp ult i32 %8, %5, !dbg !2365
  br i1 %9, label %7, label %16, !dbg !2366, !llvm.loop !2367

10:                                               ; preds = %2, %10
  %11 = tail call i32 @gpt_current_count(%struct.GPT_REGISTER_T* noundef %0) #18, !dbg !2369
  %12 = icmp ult i32 %11, %3, !dbg !2371
  br i1 %12, label %13, label %10, !dbg !2372, !llvm.loop !2373

13:                                               ; preds = %10, %13
  %14 = tail call i32 @gpt_current_count(%struct.GPT_REGISTER_T* noundef %0) #18, !dbg !2375
  %15 = icmp ult i32 %14, %5, !dbg !2376
  br i1 %15, label %13, label %16, !dbg !2377, !llvm.loop !2378

16:                                               ; preds = %13, %7
  ret void, !dbg !2380
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @gpt_reset_default_timer(%struct.GPT_REGISTER_T* noundef %0) local_unnamed_addr #10 !dbg !2381 {
  call void @llvm.dbg.value(metadata %struct.GPT_REGISTER_T* %0, metadata !2385, metadata !DIExpression()), !dbg !2386
  %2 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %0, i32 0, i32 2, !dbg !2387
  store volatile i32 0, i32* %2, align 4, !dbg !2388
  %3 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %0, i32 0, i32 0, !dbg !2389
  store volatile i32 0, i32* %3, align 4, !dbg !2390
  %4 = load volatile i32, i32* %3, align 4, !dbg !2391
  %5 = or i32 %4, 2, !dbg !2391
  store volatile i32 %5, i32* %3, align 4, !dbg !2391
  %6 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %0, i32 0, i32 5
  br label %7, !dbg !2392

7:                                                ; preds = %7, %1
  %8 = load volatile i32, i32* %6, align 4, !dbg !2393
  %9 = icmp eq i32 %8, 0, !dbg !2392
  br i1 %9, label %10, label %7, !dbg !2392, !llvm.loop !2394

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %0, i32 0, i32 1, !dbg !2396
  store volatile i32 16, i32* %11, align 4, !dbg !2397
  %12 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %0, i32 0, i32 4, !dbg !2398
  store volatile i32 1, i32* %12, align 4, !dbg !2399
  %13 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %0, i32 0, i32 6, !dbg !2400
  store volatile i32 -1, i32* %13, align 4, !dbg !2401
  %14 = icmp eq %struct.GPT_REGISTER_T* %0, inttoptr (i32 -1575747328 to %struct.GPT_REGISTER_T*), !dbg !2402
  br i1 %14, label %15, label %16, !dbg !2404

15:                                               ; preds = %10
  store volatile i32 0, i32* inttoptr (i32 -1575747296 to i32*), align 32, !dbg !2405
  br label %16, !dbg !2407

16:                                               ; preds = %15, %10
  ret void, !dbg !2408
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local i32 @gpt_save_and_mask_interrupt(%struct.GPT_REGISTER_T* noundef %0) local_unnamed_addr #7 !dbg !2409 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.GPT_REGISTER_T* %0, metadata !2411, metadata !DIExpression()), !dbg !2413
  %3 = bitcast i32* %2 to i8*, !dbg !2414
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !2414
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2412, metadata !DIExpression()), !dbg !2415
  %4 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %0, i32 0, i32 2, !dbg !2416
  %5 = load volatile i32, i32* %4, align 4, !dbg !2416
  store volatile i32 %5, i32* %2, align 4, !dbg !2417
  %6 = load volatile i32, i32* %4, align 4, !dbg !2418
  %7 = and i32 %6, -2, !dbg !2418
  store volatile i32 %7, i32* %4, align 4, !dbg !2418
  %8 = load volatile i32, i32* %2, align 4, !dbg !2419
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !2420
  ret i32 %8, !dbg !2421
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @gpt_restore_interrupt(%struct.GPT_REGISTER_T* noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !2422 {
  call void @llvm.dbg.value(metadata %struct.GPT_REGISTER_T* %0, metadata !2426, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i32 %1, metadata !2427, metadata !DIExpression()), !dbg !2428
  %3 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %0, i32 0, i32 2, !dbg !2429
  store volatile i32 %1, i32* %3, align 4, !dbg !2430
  ret void, !dbg !2431
}

; Function Attrs: noinline nounwind optsize
define dso_local void @gpt_interrupt_handler(i32 %0) #0 !dbg !2432 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 undef, metadata !2434, metadata !DIExpression()), !dbg !2439
  %5 = bitcast i32* %2 to i8*, !dbg !2440
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5), !dbg !2440
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2436, metadata !DIExpression()), !dbg !2441
  %6 = bitcast i32* %3 to i8*, !dbg !2442
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6), !dbg !2442
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2437, metadata !DIExpression()), !dbg !2443
  %7 = bitcast i32* %4 to i8*, !dbg !2444
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7), !dbg !2444
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2438, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i32 undef, metadata !2434, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i32 0, metadata !2435, metadata !DIExpression()), !dbg !2439
  br label %8, !dbg !2446

8:                                                ; preds = %1, %33
  %9 = phi i32 [ 0, %1 ], [ %36, %33 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !2435, metadata !DIExpression()), !dbg !2439
  %10 = getelementptr inbounds [6 x %struct.GPT_REGISTER_T*], [6 x %struct.GPT_REGISTER_T*]* @gp_gpt, i32 0, i32 %9, !dbg !2448
  %11 = load %struct.GPT_REGISTER_T*, %struct.GPT_REGISTER_T** %10, align 4, !dbg !2448
  %12 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %11, i32 0, i32 3, !dbg !2451
  %13 = load volatile i32, i32* %12, align 4, !dbg !2451
  store volatile i32 %13, i32* %3, align 4, !dbg !2452
  %14 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %11, i32 0, i32 2, !dbg !2453
  %15 = load volatile i32, i32* %14, align 4, !dbg !2453
  store volatile i32 %15, i32* %4, align 4, !dbg !2454
  %16 = tail call i32 @gpt_save_and_mask_interrupt(%struct.GPT_REGISTER_T* noundef %11) #18, !dbg !2455
  store volatile i32 %16, i32* %2, align 4, !dbg !2456
  %17 = load %struct.GPT_REGISTER_T*, %struct.GPT_REGISTER_T** %10, align 4, !dbg !2457
  %18 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %17, i32 0, i32 4, !dbg !2458
  store volatile i32 1, i32* %18, align 4, !dbg !2459
  %19 = load volatile i32, i32* %3, align 4, !dbg !2460
  %20 = and i32 %19, 1, !dbg !2462
  %21 = icmp eq i32 %20, 0, !dbg !2462
  br i1 %21, label %33, label %22, !dbg !2463

22:                                               ; preds = %8
  %23 = load volatile i32, i32* %4, align 4, !dbg !2464
  %24 = and i32 %23, 1, !dbg !2465
  %25 = icmp eq i32 %24, 0, !dbg !2465
  br i1 %25, label %33, label %26, !dbg !2466

26:                                               ; preds = %22
  %27 = getelementptr inbounds [6 x %struct.gpt_context_t], [6 x %struct.gpt_context_t]* @g_gpt_context, i32 0, i32 %9, i32 1, i32 0, !dbg !2467
  %28 = load void (i8*)*, void (i8*)** %27, align 4, !dbg !2467
  %29 = icmp eq void (i8*)* %28, null, !dbg !2470
  br i1 %29, label %33, label %30, !dbg !2471

30:                                               ; preds = %26
  %31 = getelementptr inbounds [6 x %struct.gpt_context_t], [6 x %struct.gpt_context_t]* @g_gpt_context, i32 0, i32 %9, i32 1, i32 1, !dbg !2472
  %32 = load i8*, i8** %31, align 4, !dbg !2472
  tail call void %28(i8* noundef %32) #19, !dbg !2474
  br label %33, !dbg !2475

33:                                               ; preds = %26, %30, %22, %8
  %34 = load %struct.GPT_REGISTER_T*, %struct.GPT_REGISTER_T** %10, align 4, !dbg !2476
  %35 = load volatile i32, i32* %2, align 4, !dbg !2477
  tail call void @gpt_restore_interrupt(%struct.GPT_REGISTER_T* noundef %34, i32 noundef %35) #18, !dbg !2478
  %36 = add nuw nsw i32 %9, 1, !dbg !2479
  call void @llvm.dbg.value(metadata i32 %36, metadata !2435, metadata !DIExpression()), !dbg !2439
  %37 = icmp eq i32 %36, 6, !dbg !2480
  br i1 %37, label %38, label %8, !dbg !2446, !llvm.loop !2481

38:                                               ; preds = %33
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7), !dbg !2483
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6), !dbg !2483
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5), !dbg !2483
  ret void, !dbg !2483
}

; Function Attrs: noinline nounwind optsize
define dso_local void @gpt_nvic_register() local_unnamed_addr #0 !dbg !2484 {
  %1 = tail call i32 @hal_nvic_disable_irq(i32 noundef 11) #19, !dbg !2485
  %2 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 11, void (i32)* noundef nonnull @gpt_interrupt_handler) #19, !dbg !2486
  %3 = tail call i32 @hal_nvic_enable_irq(i32 noundef 11) #19, !dbg !2487
  ret void, !dbg !2488
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local i32 @gpt_sw_get_current_time_ms(%struct.GPT_REGISTER_T* noundef %0) local_unnamed_addr #7 !dbg !2489 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.GPT_REGISTER_T* %0, metadata !2491, metadata !DIExpression()), !dbg !2496
  %3 = bitcast i32* %2 to i8*, !dbg !2497
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !2497
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2492, metadata !DIExpression()), !dbg !2498
  %4 = tail call i32 @gpt_current_count(%struct.GPT_REGISTER_T* noundef %0) #18, !dbg !2499
  call void @llvm.dbg.value(metadata i32 %4, metadata !2493, metadata !DIExpression()), !dbg !2496
  %5 = lshr i32 %4, 15, !dbg !2500
  call void @llvm.dbg.value(metadata i32 %5, metadata !2494, metadata !DIExpression()), !dbg !2496
  %6 = and i32 %4, 32767, !dbg !2501
  %7 = mul nuw nsw i32 %6, 1000, !dbg !2502
  %8 = add nuw nsw i32 %7, 16384, !dbg !2503
  %9 = lshr i32 %8, 15, !dbg !2504
  call void @llvm.dbg.value(metadata i32 %9, metadata !2495, metadata !DIExpression()), !dbg !2496
  %10 = mul nuw nsw i32 %5, 1000, !dbg !2505
  %11 = add nuw nsw i32 %9, %10, !dbg !2506
  store volatile i32 %11, i32* %2, align 4, !dbg !2507
  %12 = load %struct.GPT_REGISTER_T*, %struct.GPT_REGISTER_T** getelementptr inbounds ([6 x %struct.GPT_REGISTER_T*], [6 x %struct.GPT_REGISTER_T*]* @gp_gpt, i32 0, i32 3), align 4, !dbg !2508
  %13 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %12, i32 0, i32 0, !dbg !2509
  %14 = load volatile i32, i32* %13, align 4, !dbg !2510
  %15 = or i32 %14, 2, !dbg !2510
  store volatile i32 %15, i32* %13, align 4, !dbg !2510
  %16 = load %struct.GPT_REGISTER_T*, %struct.GPT_REGISTER_T** getelementptr inbounds ([6 x %struct.GPT_REGISTER_T*], [6 x %struct.GPT_REGISTER_T*]* @gp_gpt, i32 0, i32 3), align 4
  %17 = getelementptr inbounds %struct.GPT_REGISTER_T, %struct.GPT_REGISTER_T* %16, i32 0, i32 5
  br label %18, !dbg !2511

18:                                               ; preds = %18, %1
  %19 = load volatile i32, i32* %17, align 4, !dbg !2512
  %20 = icmp eq i32 %19, 0, !dbg !2511
  br i1 %20, label %21, label %18, !dbg !2511, !llvm.loop !2513

21:                                               ; preds = %18
  %22 = load volatile i32, i32* %2, align 4, !dbg !2515
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !2516
  ret i32 %22, !dbg !2517
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize readonly
define dso_local i32 @gpt_sw_get_free_timer() local_unnamed_addr #11 !dbg !2518 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2522, metadata !DIExpression()), !dbg !2523
  br label %1, !dbg !2524

1:                                                ; preds = %0, %6
  %2 = phi i32 [ 0, %0 ], [ %7, %6 ]
  call void @llvm.dbg.value(metadata i32 %2, metadata !2522, metadata !DIExpression()), !dbg !2523
  %3 = getelementptr inbounds %struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 0, i32 %2, i32 2, !dbg !2526
  %4 = load i8, i8* %3, align 4, !dbg !2526, !range !1698
  %5 = icmp eq i8 %4, 1, !dbg !2530
  br i1 %5, label %6, label %9, !dbg !2531

6:                                                ; preds = %1
  %7 = add nuw nsw i32 %2, 1, !dbg !2532
  call void @llvm.dbg.value(metadata i32 %7, metadata !2522, metadata !DIExpression()), !dbg !2523
  %8 = icmp eq i32 %7, 32, !dbg !2533
  br i1 %8, label %9, label %1, !dbg !2524, !llvm.loop !2534

9:                                                ; preds = %6, %1
  %10 = phi i32 [ %2, %1 ], [ 32, %6 ], !dbg !2523
  ret i32 %10, !dbg !2536
}

; Function Attrs: noinline nounwind optsize
define dso_local void @gpt_sw_start_timer() local_unnamed_addr #0 !dbg !2537 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = bitcast i32* %1 to i8*, !dbg !2541
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #20, !dbg !2541
  %4 = bitcast i32* %2 to i8*, !dbg !2541
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #20, !dbg !2541
  %5 = load i8, i8* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 6), align 1, !dbg !2542, !range !1698
  %6 = icmp eq i8 %5, 0, !dbg !2542
  br i1 %6, label %7, label %11, !dbg !2544

7:                                                ; preds = %0
  call void @llvm.dbg.value(metadata i32* %1, metadata !2539, metadata !DIExpression(DW_OP_deref)), !dbg !2545
  call void @llvm.dbg.value(metadata i32* %2, metadata !2540, metadata !DIExpression(DW_OP_deref)), !dbg !2545
  call void @gpt_sw_get_minimum_left_time_ms(i32* noundef nonnull %1, i32* noundef nonnull %2) #18, !dbg !2546
  %8 = load i32, i32* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 1), align 4, !dbg !2547
  store i32 %8, i32* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 2), align 4, !dbg !2548
  store i8 1, i8* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 7), align 2, !dbg !2549
  %9 = load i32, i32* %1, align 4, !dbg !2550
  call void @llvm.dbg.value(metadata i32 %9, metadata !2539, metadata !DIExpression()), !dbg !2545
  %10 = tail call i32 @hal_gpt_start_timer_ms(i32 noundef 3, i32 noundef %9, i32 noundef 0) #19, !dbg !2551
  store i8 0, i8* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 7), align 2, !dbg !2552
  br label %11, !dbg !2553

11:                                               ; preds = %0, %7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #20, !dbg !2553
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #20, !dbg !2553
  ret void, !dbg !2553
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize
define dso_local void @gpt_sw_get_minimum_left_time_ms(i32* nocapture noundef writeonly %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #12 !dbg !2554 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !2558, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i32* %1, metadata !2559, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i32 -1, metadata !2561, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i32 0, metadata !2560, metadata !DIExpression()), !dbg !2563
  br label %3, !dbg !2564

3:                                                ; preds = %2, %13
  %4 = phi i32 [ 0, %2 ], [ %15, %13 ]
  %5 = phi i32 [ -1, %2 ], [ %14, %13 ]
  call void @llvm.dbg.value(metadata i32 %4, metadata !2560, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i32 %5, metadata !2561, metadata !DIExpression()), !dbg !2563
  %6 = getelementptr inbounds %struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 0, i32 %4, i32 3, !dbg !2566
  %7 = load i8, i8* %6, align 1, !dbg !2566, !range !1698
  %8 = icmp eq i8 %7, 0, !dbg !2566
  br i1 %8, label %13, label %9, !dbg !2570

9:                                                ; preds = %3
  %10 = tail call i32 @gpt_sw_absolute_value(i32 noundef %4) #18, !dbg !2571
  call void @llvm.dbg.value(metadata i32 %10, metadata !2562, metadata !DIExpression()), !dbg !2563
  %11 = icmp ult i32 %10, %5, !dbg !2573
  br i1 %11, label %12, label %13, !dbg !2575

12:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i32 %10, metadata !2561, metadata !DIExpression()), !dbg !2563
  store i32 %4, i32* %1, align 4, !dbg !2576
  br label %13, !dbg !2578

13:                                               ; preds = %3, %12, %9
  %14 = phi i32 [ %10, %12 ], [ %5, %9 ], [ %5, %3 ], !dbg !2563
  call void @llvm.dbg.value(metadata i32 %14, metadata !2561, metadata !DIExpression()), !dbg !2563
  %15 = add nuw nsw i32 %4, 1, !dbg !2579
  call void @llvm.dbg.value(metadata i32 %15, metadata !2560, metadata !DIExpression()), !dbg !2563
  %16 = icmp eq i32 %15, 32, !dbg !2580
  br i1 %16, label %17, label %3, !dbg !2564, !llvm.loop !2581

17:                                               ; preds = %13
  store i32 %14, i32* %0, align 4, !dbg !2583
  ret void, !dbg !2584
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @gpt_sw_absolute_value(i32 noundef %0) local_unnamed_addr #2 !dbg !2585 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2587, metadata !DIExpression()), !dbg !2591
  %2 = getelementptr inbounds %struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 0, i32 %0, i32 1, !dbg !2592
  %3 = load i32, i32* %2, align 4, !dbg !2592
  %4 = load i32, i32* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 2), align 4, !dbg !2592
  %5 = sub i32 %3, %4, !dbg !2592
  call void @llvm.dbg.value(metadata i32 %5, metadata !2588, metadata !DIExpression()), !dbg !2591
  %6 = load i32, i32* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 1), align 4, !dbg !2593
  %7 = sub i32 %6, %4, !dbg !2593
  call void @llvm.dbg.value(metadata i32 %7, metadata !2589, metadata !DIExpression()), !dbg !2591
  %8 = icmp ugt i32 %5, %7, !dbg !2594
  %9 = sub i32 %3, %6
  %10 = select i1 %8, i32 %9, i32 0, !dbg !2596
  call void @llvm.dbg.value(metadata i32 %10, metadata !2590, metadata !DIExpression()), !dbg !2591
  ret i32 %10, !dbg !2597
}

; Function Attrs: noinline nounwind optsize
define dso_local void @gpt_sw_handler(i8* nocapture noundef readnone %0) #0 !dbg !2598 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2600, metadata !DIExpression()), !dbg !2604
  %4 = bitcast i32* %2 to i8*, !dbg !2605
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4), !dbg !2605
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2602, metadata !DIExpression()), !dbg !2606
  %5 = bitcast i32* %3 to i8*, !dbg !2607
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5), !dbg !2607
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2603, metadata !DIExpression()), !dbg !2608
  %6 = load i32, i32* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 3), align 4, !dbg !2609
  %7 = icmp eq i32 %6, 0, !dbg !2611
  br i1 %7, label %38, label %8, !dbg !2612

8:                                                ; preds = %1
  store i8 1, i8* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 7), align 2, !dbg !2613
  %9 = tail call i32 @hal_gpt_stop_timer(i32 noundef 3) #19, !dbg !2615
  store i8 0, i8* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 7), align 2, !dbg !2616
  %10 = load %struct.GPT_REGISTER_T*, %struct.GPT_REGISTER_T** getelementptr inbounds ([6 x %struct.GPT_REGISTER_T*], [6 x %struct.GPT_REGISTER_T*]* @gp_gpt, i32 0, i32 3), align 4, !dbg !2617
  %11 = tail call i32 @gpt_sw_get_current_time_ms(%struct.GPT_REGISTER_T* noundef %10) #18, !dbg !2618
  store volatile i32 %11, i32* %2, align 4, !dbg !2619
  %12 = load volatile i32, i32* %2, align 4, !dbg !2620
  %13 = load i32, i32* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 1), align 4, !dbg !2621
  %14 = add i32 %13, %12, !dbg !2621
  store i32 %14, i32* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 1), align 4, !dbg !2621
  store i8 1, i8* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 6), align 1, !dbg !2622
  call void @llvm.dbg.value(metadata i32 0, metadata !2601, metadata !DIExpression()), !dbg !2604
  br label %15, !dbg !2623

15:                                               ; preds = %8, %31
  %16 = phi i32 [ 0, %8 ], [ %32, %31 ]
  call void @llvm.dbg.value(metadata i32 %16, metadata !2601, metadata !DIExpression()), !dbg !2604
  %17 = getelementptr inbounds %struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 0, i32 %16, i32 3, !dbg !2625
  %18 = load i8, i8* %17, align 1, !dbg !2625, !range !1698
  %19 = icmp eq i8 %18, 0, !dbg !2625
  br i1 %19, label %31, label %20, !dbg !2629

20:                                               ; preds = %15
  %21 = tail call i32 @gpt_sw_absolute_value(i32 noundef %16) #18, !dbg !2630
  store volatile i32 %21, i32* %3, align 4, !dbg !2632
  %22 = load volatile i32, i32* %3, align 4, !dbg !2633
  %23 = icmp eq i32 %22, 0, !dbg !2635
  br i1 %23, label %24, label %31, !dbg !2636

24:                                               ; preds = %20
  store i8 0, i8* %17, align 1, !dbg !2637
  %25 = load i32, i32* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 4), align 4, !dbg !2639
  %26 = add i32 %25, -1, !dbg !2639
  store i32 %26, i32* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 4), align 4, !dbg !2639
  %27 = getelementptr inbounds %struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 0, i32 %16, i32 0, i32 0, !dbg !2640
  %28 = load void (i8*)*, void (i8*)** %27, align 4, !dbg !2640
  %29 = getelementptr inbounds %struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 0, i32 %16, i32 0, i32 1, !dbg !2641
  %30 = load i8*, i8** %29, align 4, !dbg !2641
  tail call void %28(i8* noundef %30) #19, !dbg !2642
  br label %31, !dbg !2643

31:                                               ; preds = %15, %24, %20
  %32 = add nuw nsw i32 %16, 1, !dbg !2644
  call void @llvm.dbg.value(metadata i32 %32, metadata !2601, metadata !DIExpression()), !dbg !2604
  %33 = icmp eq i32 %32, 32, !dbg !2645
  br i1 %33, label %34, label %15, !dbg !2623, !llvm.loop !2646

34:                                               ; preds = %31
  store i8 0, i8* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 6), align 1, !dbg !2648
  %35 = load i32, i32* getelementptr inbounds (%struct.gpt_sw_context_t, %struct.gpt_sw_context_t* @gpt_sw_context, i32 0, i32 4), align 4, !dbg !2649
  %36 = icmp eq i32 %35, 0, !dbg !2651
  br i1 %36, label %38, label %37, !dbg !2652

37:                                               ; preds = %34
  tail call void @gpt_sw_start_timer() #18, !dbg !2653
  br label %38, !dbg !2655

38:                                               ; preds = %34, %37, %1
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5), !dbg !2656
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4), !dbg !2656
  ret void, !dbg !2656
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize readnone
define dso_local i32 @is_pin_with_pullsel(i32 noundef %0) local_unnamed_addr #13 !dbg !2657 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2662, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.declare(metadata [5 x i32]* @__const.is_pin_with_pullsel.pin_number_with_pullsel, metadata !2664, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i32 0, metadata !2663, metadata !DIExpression()), !dbg !2665
  br label %5, !dbg !2667

2:                                                ; preds = %5
  %3 = add nuw nsw i32 %6, 1, !dbg !2669
  call void @llvm.dbg.value(metadata i32 %3, metadata !2663, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i32 %6, metadata !2663, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2665
  %4 = icmp eq i32 %3, 5, !dbg !2671
  br i1 %4, label %10, label %5, !dbg !2667, !llvm.loop !2672

5:                                                ; preds = %1, %2
  %6 = phi i32 [ 0, %1 ], [ %3, %2 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !2663, metadata !DIExpression()), !dbg !2665
  %7 = getelementptr inbounds [5 x i32], [5 x i32]* @__const.is_pin_with_pullsel.pin_number_with_pullsel, i32 0, i32 %6, !dbg !2674
  %8 = load i32, i32* %7, align 4, !dbg !2674
  %9 = icmp eq i32 %8, %0, !dbg !2677
  call void @llvm.dbg.value(metadata i32 %6, metadata !2663, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2665
  br i1 %9, label %10, label %2, !dbg !2678

10:                                               ; preds = %2, %5
  %11 = phi i32 [ 1, %5 ], [ 0, %2 ], !dbg !2665
  ret i32 %11, !dbg !2679
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_init(i32 noundef %0) local_unnamed_addr #8 !dbg !2680 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2685, metadata !DIExpression()), !dbg !2686
  ret i32 0, !dbg !2687
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_deinit(i32 noundef %0) local_unnamed_addr #8 !dbg !2688 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2690, metadata !DIExpression()), !dbg !2691
  ret i32 0, !dbg !2692
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_gpio_set_direction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !2693 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2697, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i32 %1, metadata !2698, metadata !DIExpression()), !dbg !2701
  %3 = icmp ugt i32 %0, 48, !dbg !2702
  br i1 %3, label %13, label %4, !dbg !2704

4:                                                ; preds = %2
  %5 = lshr i32 %0, 5, !dbg !2705
  call void @llvm.dbg.value(metadata i32 %5, metadata !2699, metadata !DIExpression()), !dbg !2701
  %6 = and i32 %0, 31, !dbg !2706
  call void @llvm.dbg.value(metadata i32 %6, metadata !2700, metadata !DIExpression()), !dbg !2701
  %7 = icmp eq i32 %1, 0, !dbg !2707
  %8 = shl nuw i32 1, %6, !dbg !2709
  %9 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !2709
  %10 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %9, i32 0, i32 0, i32 %5, i32 2, !dbg !2710
  %11 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %9, i32 0, i32 0, i32 %5, i32 1, !dbg !2710
  %12 = select i1 %7, i32* %10, i32* %11, !dbg !2710
  store volatile i32 %8, i32* %12, align 4, !dbg !2709
  br label %13, !dbg !2711

13:                                               ; preds = %4, %2
  %14 = phi i32 [ -2, %2 ], [ 0, %4 ], !dbg !2701
  ret i32 %14, !dbg !2711
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_gpio_get_direction(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #9 !dbg !2712 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2717, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i32* %1, metadata !2718, metadata !DIExpression()), !dbg !2722
  %3 = icmp ugt i32 %0, 48, !dbg !2723
  br i1 %3, label %15, label %4, !dbg !2725

4:                                                ; preds = %2
  %5 = icmp eq i32* %1, null, !dbg !2726
  br i1 %5, label %15, label %6, !dbg !2728

6:                                                ; preds = %4
  %7 = lshr i32 %0, 5, !dbg !2729
  call void @llvm.dbg.value(metadata i32 %7, metadata !2719, metadata !DIExpression()), !dbg !2722
  %8 = and i32 %0, 31, !dbg !2730
  call void @llvm.dbg.value(metadata i32 %8, metadata !2720, metadata !DIExpression()), !dbg !2722
  %9 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !2731
  %10 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %9, i32 0, i32 0, i32 %7, i32 0, !dbg !2732
  %11 = load volatile i32, i32* %10, align 4, !dbg !2732
  call void @llvm.dbg.value(metadata i32 %11, metadata !2721, metadata !DIExpression()), !dbg !2722
  %12 = shl nuw i32 1, %8, !dbg !2733
  %13 = and i32 %11, %12, !dbg !2734
  call void @llvm.dbg.value(metadata i32 %13, metadata !2721, metadata !DIExpression()), !dbg !2722
  %14 = lshr i32 %13, %8, !dbg !2735
  store i32 %14, i32* %1, align 4, !dbg !2736
  br label %15, !dbg !2737

15:                                               ; preds = %4, %2, %6
  %16 = phi i32 [ 0, %6 ], [ -2, %2 ], [ -1, %4 ], !dbg !2722
  ret i32 %16, !dbg !2738
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pinmux_set_function(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !2739 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2744, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i8 %1, metadata !2745, metadata !DIExpression()), !dbg !2749
  %3 = icmp ugt i32 %0, 48, !dbg !2750
  br i1 %3, label %18, label %4, !dbg !2752

4:                                                ; preds = %2
  %5 = icmp ugt i8 %1, 15, !dbg !2753
  br i1 %5, label %18, label %6, !dbg !2755

6:                                                ; preds = %4
  %7 = zext i8 %1 to i32, !dbg !2756
  %8 = lshr i32 %0, 3, !dbg !2757
  call void @llvm.dbg.value(metadata i32 %8, metadata !2746, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i32 %0, metadata !2747, metadata !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_stack_value)), !dbg !2749
  %9 = tail call i32 @save_and_set_interrupt_mask() #19, !dbg !2758
  call void @llvm.dbg.value(metadata i32 %9, metadata !2748, metadata !DIExpression()), !dbg !2749
  %10 = shl nuw nsw i32 %0, 2, !dbg !2759
  %11 = and i32 %10, 28, !dbg !2759
  %12 = shl nuw i32 15, %11, !dbg !2760
  %13 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !2761
  %14 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %13, i32 0, i32 25, i32 %8, i32 2, !dbg !2762
  store volatile i32 %12, i32* %14, align 4, !dbg !2763
  %15 = shl nuw i32 %7, %11, !dbg !2764
  %16 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !2765
  %17 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %16, i32 0, i32 25, i32 %8, i32 1, !dbg !2766
  store volatile i32 %15, i32* %17, align 4, !dbg !2767
  tail call void @restore_interrupt_mask(i32 noundef %9) #19, !dbg !2768
  br label %18, !dbg !2769

18:                                               ; preds = %4, %2, %6
  %19 = phi i32 [ 0, %6 ], [ -2, %2 ], [ -1, %4 ], !dbg !2749
  ret i32 %19, !dbg !2770
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_gpio_get_input(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #9 !dbg !2771 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2776, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i32* %1, metadata !2777, metadata !DIExpression()), !dbg !2781
  %3 = icmp ugt i32 %0, 48, !dbg !2782
  br i1 %3, label %15, label %4, !dbg !2784

4:                                                ; preds = %2
  %5 = icmp eq i32* %1, null, !dbg !2785
  br i1 %5, label %15, label %6, !dbg !2787

6:                                                ; preds = %4
  %7 = lshr i32 %0, 5, !dbg !2788
  call void @llvm.dbg.value(metadata i32 %7, metadata !2778, metadata !DIExpression()), !dbg !2781
  %8 = and i32 %0, 31, !dbg !2789
  call void @llvm.dbg.value(metadata i32 %8, metadata !2779, metadata !DIExpression()), !dbg !2781
  %9 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !2790
  %10 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %9, i32 0, i32 8, i32 %7, i32 0, !dbg !2791
  %11 = load volatile i32, i32* %10, align 4, !dbg !2791
  call void @llvm.dbg.value(metadata i32 %11, metadata !2780, metadata !DIExpression()), !dbg !2781
  %12 = shl nuw i32 1, %8, !dbg !2792
  %13 = and i32 %11, %12, !dbg !2793
  call void @llvm.dbg.value(metadata i32 %13, metadata !2780, metadata !DIExpression()), !dbg !2781
  %14 = lshr i32 %13, %8, !dbg !2794
  store i32 %14, i32* %1, align 4, !dbg !2795
  br label %15, !dbg !2796

15:                                               ; preds = %4, %2, %6
  %16 = phi i32 [ 0, %6 ], [ -2, %2 ], [ -1, %4 ], !dbg !2781
  ret i32 %16, !dbg !2797
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !2798 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2802, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i32 %1, metadata !2803, metadata !DIExpression()), !dbg !2806
  %3 = icmp ugt i32 %0, 48, !dbg !2807
  br i1 %3, label %13, label %4, !dbg !2809

4:                                                ; preds = %2
  %5 = lshr i32 %0, 5, !dbg !2810
  call void @llvm.dbg.value(metadata i32 %5, metadata !2804, metadata !DIExpression()), !dbg !2806
  %6 = and i32 %0, 31, !dbg !2811
  call void @llvm.dbg.value(metadata i32 %6, metadata !2805, metadata !DIExpression()), !dbg !2806
  %7 = icmp eq i32 %1, 0, !dbg !2812
  %8 = shl nuw i32 1, %6, !dbg !2814
  %9 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !2814
  %10 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %9, i32 0, i32 6, i32 %5, i32 1, !dbg !2815
  %11 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %9, i32 0, i32 6, i32 %5, i32 2, !dbg !2815
  %12 = select i1 %7, i32* %11, i32* %10, !dbg !2815
  store volatile i32 %8, i32* %12, align 4, !dbg !2814
  br label %13, !dbg !2816

13:                                               ; preds = %4, %2
  %14 = phi i32 [ -2, %2 ], [ 0, %4 ], !dbg !2806
  ret i32 %14, !dbg !2816
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_gpio_get_output(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #9 !dbg !2817 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2819, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i32* %1, metadata !2820, metadata !DIExpression()), !dbg !2824
  %3 = icmp ugt i32 %0, 48, !dbg !2825
  br i1 %3, label %15, label %4, !dbg !2827

4:                                                ; preds = %2
  %5 = icmp eq i32* %1, null, !dbg !2828
  br i1 %5, label %15, label %6, !dbg !2830

6:                                                ; preds = %4
  %7 = lshr i32 %0, 5, !dbg !2831
  call void @llvm.dbg.value(metadata i32 %7, metadata !2821, metadata !DIExpression()), !dbg !2824
  %8 = and i32 %0, 31, !dbg !2832
  call void @llvm.dbg.value(metadata i32 %8, metadata !2822, metadata !DIExpression()), !dbg !2824
  %9 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !2833
  %10 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %9, i32 0, i32 6, i32 %7, i32 0, !dbg !2834
  %11 = load volatile i32, i32* %10, align 4, !dbg !2834
  call void @llvm.dbg.value(metadata i32 %11, metadata !2823, metadata !DIExpression()), !dbg !2824
  %12 = shl nuw i32 1, %8, !dbg !2835
  %13 = and i32 %11, %12, !dbg !2836
  call void @llvm.dbg.value(metadata i32 %13, metadata !2823, metadata !DIExpression()), !dbg !2824
  %14 = lshr i32 %13, %8, !dbg !2837
  store i32 %14, i32* %1, align 4, !dbg !2838
  br label %15, !dbg !2839

15:                                               ; preds = %4, %2, %6
  %16 = phi i32 [ 0, %6 ], [ -2, %2 ], [ -1, %4 ], !dbg !2824
  ret i32 %16, !dbg !2840
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_gpio_toggle_pin(i32 noundef %0) local_unnamed_addr #10 !dbg !2841 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2843, metadata !DIExpression()), !dbg !2847
  %2 = icmp ugt i32 %0, 48, !dbg !2848
  br i1 %2, label %16, label %3, !dbg !2850

3:                                                ; preds = %1
  %4 = lshr i32 %0, 5, !dbg !2851
  call void @llvm.dbg.value(metadata i32 %4, metadata !2844, metadata !DIExpression()), !dbg !2847
  %5 = and i32 %0, 31, !dbg !2852
  call void @llvm.dbg.value(metadata i32 %5, metadata !2845, metadata !DIExpression()), !dbg !2847
  %6 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !2853
  %7 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %6, i32 0, i32 6, i32 %4, i32 0, !dbg !2854
  %8 = load volatile i32, i32* %7, align 4, !dbg !2854
  call void @llvm.dbg.value(metadata i32 %8, metadata !2846, metadata !DIExpression()), !dbg !2847
  %9 = shl nuw i32 1, %5, !dbg !2855
  %10 = and i32 %8, %9, !dbg !2856
  call void @llvm.dbg.value(metadata i32 %10, metadata !2846, metadata !DIExpression()), !dbg !2847
  %11 = lshr i32 %10, %5, !dbg !2857
  %12 = icmp eq i32 %11, 0, !dbg !2857
  %13 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %6, i32 0, i32 6, i32 %4, i32 2, !dbg !2859
  %14 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %6, i32 0, i32 6, i32 %4, i32 1, !dbg !2859
  %15 = select i1 %12, i32* %14, i32* %13, !dbg !2859
  store volatile i32 %9, i32* %15, align 4, !dbg !2860
  br label %16, !dbg !2861

16:                                               ; preds = %3, %1
  %17 = phi i32 [ -2, %1 ], [ 0, %3 ], !dbg !2847
  ret i32 %17, !dbg !2861
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_gpio_enable_inversion(i32 noundef %0) local_unnamed_addr #10 !dbg !2862 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2864, metadata !DIExpression()), !dbg !2867
  %2 = icmp ugt i32 %0, 48, !dbg !2868
  br i1 %2, label %9, label %3, !dbg !2870

3:                                                ; preds = %1
  %4 = lshr i32 %0, 5, !dbg !2871
  call void @llvm.dbg.value(metadata i32 %4, metadata !2865, metadata !DIExpression()), !dbg !2867
  %5 = and i32 %0, 31, !dbg !2872
  call void @llvm.dbg.value(metadata i32 %5, metadata !2866, metadata !DIExpression()), !dbg !2867
  %6 = shl nuw i32 1, %5, !dbg !2873
  %7 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !2874
  %8 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %7, i32 0, i32 4, i32 %4, i32 1, !dbg !2875
  store volatile i32 %6, i32* %8, align 4, !dbg !2876
  br label %9, !dbg !2877

9:                                                ; preds = %1, %3
  %10 = phi i32 [ 0, %3 ], [ -2, %1 ], !dbg !2867
  ret i32 %10, !dbg !2878
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_gpio_disable_inversion(i32 noundef %0) local_unnamed_addr #10 !dbg !2879 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2881, metadata !DIExpression()), !dbg !2884
  %2 = icmp ugt i32 %0, 48, !dbg !2885
  br i1 %2, label %9, label %3, !dbg !2887

3:                                                ; preds = %1
  %4 = lshr i32 %0, 5, !dbg !2888
  call void @llvm.dbg.value(metadata i32 %4, metadata !2882, metadata !DIExpression()), !dbg !2884
  %5 = and i32 %0, 31, !dbg !2889
  call void @llvm.dbg.value(metadata i32 %5, metadata !2883, metadata !DIExpression()), !dbg !2884
  %6 = shl nuw i32 1, %5, !dbg !2890
  %7 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !2891
  %8 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %7, i32 0, i32 4, i32 %4, i32 2, !dbg !2892
  store volatile i32 %6, i32* %8, align 4, !dbg !2893
  br label %9, !dbg !2894

9:                                                ; preds = %1, %3
  %10 = phi i32 [ 0, %3 ], [ -2, %1 ], !dbg !2884
  ret i32 %10, !dbg !2895
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_gpio_pull_up(i32 noundef %0) local_unnamed_addr #10 !dbg !2896 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2898, metadata !DIExpression()), !dbg !2901
  %2 = icmp ugt i32 %0, 48, !dbg !2902
  br i1 %2, label %14, label %3, !dbg !2904

3:                                                ; preds = %1
  %4 = tail call i32 @is_pin_with_pullsel(i32 noundef %0) #18, !dbg !2905
  %5 = icmp eq i32 %4, 0, !dbg !2905
  br i1 %5, label %14, label %6, !dbg !2906

6:                                                ; preds = %3
  %7 = lshr i32 %0, 5, !dbg !2907
  call void @llvm.dbg.value(metadata i32 %7, metadata !2899, metadata !DIExpression()), !dbg !2901
  %8 = and i32 %0, 31, !dbg !2908
  call void @llvm.dbg.value(metadata i32 %8, metadata !2900, metadata !DIExpression()), !dbg !2901
  %9 = shl nuw i32 1, %8, !dbg !2909
  %10 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !2910
  %11 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %10, i32 0, i32 2, i32 %7, i32 1, !dbg !2911
  store volatile i32 %9, i32* %11, align 4, !dbg !2912
  %12 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !2913
  %13 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %12, i32 0, i32 10, i32 %7, i32 1, !dbg !2914
  store volatile i32 %9, i32* %13, align 4, !dbg !2915
  br label %14, !dbg !2916

14:                                               ; preds = %1, %3, %6
  %15 = phi i32 [ 0, %6 ], [ -2, %3 ], [ -2, %1 ], !dbg !2901
  ret i32 %15, !dbg !2917
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_gpio_pull_down(i32 noundef %0) local_unnamed_addr #10 !dbg !2918 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2920, metadata !DIExpression()), !dbg !2923
  %2 = icmp ugt i32 %0, 48, !dbg !2924
  br i1 %2, label %14, label %3, !dbg !2926

3:                                                ; preds = %1
  %4 = tail call i32 @is_pin_with_pullsel(i32 noundef %0) #18, !dbg !2927
  %5 = icmp eq i32 %4, 0, !dbg !2927
  br i1 %5, label %14, label %6, !dbg !2928

6:                                                ; preds = %3
  %7 = lshr i32 %0, 5, !dbg !2929
  call void @llvm.dbg.value(metadata i32 %7, metadata !2921, metadata !DIExpression()), !dbg !2923
  %8 = and i32 %0, 31, !dbg !2930
  call void @llvm.dbg.value(metadata i32 %8, metadata !2922, metadata !DIExpression()), !dbg !2923
  %9 = shl nuw i32 1, %8, !dbg !2931
  %10 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !2932
  %11 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %10, i32 0, i32 2, i32 %7, i32 1, !dbg !2933
  store volatile i32 %9, i32* %11, align 4, !dbg !2934
  %12 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !2935
  %13 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %12, i32 0, i32 10, i32 %7, i32 2, !dbg !2936
  store volatile i32 %9, i32* %13, align 4, !dbg !2937
  br label %14, !dbg !2938

14:                                               ; preds = %1, %3, %6
  %15 = phi i32 [ 0, %6 ], [ -2, %3 ], [ -2, %1 ], !dbg !2923
  ret i32 %15, !dbg !2939
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_gpio_disable_pull(i32 noundef %0) local_unnamed_addr #10 !dbg !2940 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2942, metadata !DIExpression()), !dbg !2945
  %2 = icmp ugt i32 %0, 48, !dbg !2946
  br i1 %2, label %12, label %3, !dbg !2948

3:                                                ; preds = %1
  %4 = tail call i32 @is_pin_with_pullsel(i32 noundef %0) #18, !dbg !2949
  %5 = icmp eq i32 %4, 0, !dbg !2949
  br i1 %5, label %12, label %6, !dbg !2950

6:                                                ; preds = %3
  %7 = lshr i32 %0, 5, !dbg !2951
  call void @llvm.dbg.value(metadata i32 %7, metadata !2943, metadata !DIExpression()), !dbg !2945
  %8 = and i32 %0, 31, !dbg !2952
  call void @llvm.dbg.value(metadata i32 %8, metadata !2944, metadata !DIExpression()), !dbg !2945
  %9 = shl nuw i32 1, %8, !dbg !2953
  %10 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !2954
  %11 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %10, i32 0, i32 2, i32 %7, i32 2, !dbg !2955
  store volatile i32 %9, i32* %11, align 4, !dbg !2956
  br label %12, !dbg !2957

12:                                               ; preds = %1, %3, %6
  %13 = phi i32 [ 0, %6 ], [ -2, %3 ], [ -2, %1 ], !dbg !2945
  ret i32 %13, !dbg !2958
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_gpio_set_clockout(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !2959 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2965, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i32 %1, metadata !2966, metadata !DIExpression()), !dbg !2967
  %3 = icmp ugt i32 %0, 5, !dbg !2968
  br i1 %3, label %7, label %4, !dbg !2970

4:                                                ; preds = %2
  %5 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !2971
  %6 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %5, i32 0, i32 29, i32 %0, i32 0, !dbg !2972
  store volatile i32 %1, i32* %6, align 4, !dbg !2973
  br label %7, !dbg !2974

7:                                                ; preds = %2, %4
  %8 = phi i32 [ 0, %4 ], [ -1, %2 ], !dbg !2967
  ret i32 %8, !dbg !2975
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_gpio_set_pupd_register(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #10 !dbg !2976 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2980, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i8 %1, metadata !2981, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i8 %2, metadata !2982, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i8 %3, metadata !2983, metadata !DIExpression()), !dbg !2986
  %5 = icmp ugt i32 %0, 48, !dbg !2987
  br i1 %5, label %30, label %6, !dbg !2989

6:                                                ; preds = %4
  %7 = tail call i32 @is_pin_with_pullsel(i32 noundef %0) #18, !dbg !2990
  %8 = icmp eq i32 %7, 0, !dbg !2990
  br i1 %8, label %9, label %30, !dbg !2991

9:                                                ; preds = %6
  %10 = lshr i32 %0, 5, !dbg !2992
  call void @llvm.dbg.value(metadata i32 %10, metadata !2984, metadata !DIExpression()), !dbg !2986
  %11 = and i32 %0, 31, !dbg !2993
  call void @llvm.dbg.value(metadata i32 %11, metadata !2985, metadata !DIExpression()), !dbg !2986
  %12 = icmp eq i8 %1, 0, !dbg !2994
  %13 = shl nuw i32 1, %11, !dbg !2996
  %14 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !2996
  %15 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %14, i32 0, i32 20, i32 %10, i32 2, !dbg !2997
  %16 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %14, i32 0, i32 20, i32 %10, i32 1, !dbg !2997
  %17 = select i1 %12, i32* %15, i32* %16, !dbg !2997
  store volatile i32 %13, i32* %17, align 4, !dbg !2996
  %18 = icmp eq i8 %2, 0, !dbg !2998
  %19 = shl nuw i32 1, %11, !dbg !3000
  %20 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !3000
  %21 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %20, i32 0, i32 22, i32 %10, i32 2, !dbg !3001
  %22 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %20, i32 0, i32 22, i32 %10, i32 1, !dbg !3001
  %23 = select i1 %18, i32* %21, i32* %22, !dbg !3001
  store volatile i32 %19, i32* %23, align 4, !dbg !3000
  %24 = icmp eq i8 %3, 0, !dbg !3002
  %25 = shl nuw i32 1, %11, !dbg !3004
  %26 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !3004
  %27 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %26, i32 0, i32 23, i32 %10, i32 1, !dbg !3005
  %28 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %26, i32 0, i32 23, i32 %10, i32 2, !dbg !3005
  %29 = select i1 %24, i32* %28, i32* %27, !dbg !3005
  store volatile i32 %25, i32* %29, align 4, !dbg !3004
  br label %30, !dbg !3006

30:                                               ; preds = %9, %4, %6
  %31 = phi i32 [ -2, %6 ], [ -2, %4 ], [ 0, %9 ], !dbg !2986
  ret i32 %31, !dbg !3006
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_gpio_set_high_impedance(i32 noundef %0) local_unnamed_addr #10 !dbg !3007 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3009, metadata !DIExpression()), !dbg !3016
  %2 = icmp ugt i32 %0, 48, !dbg !3017
  br i1 %2, label %40, label %3, !dbg !3019

3:                                                ; preds = %1
  %4 = lshr i32 %0, 5, !dbg !3020
  call void @llvm.dbg.value(metadata i32 %4, metadata !3010, metadata !DIExpression()), !dbg !3016
  %5 = and i32 %0, 31, !dbg !3021
  call void @llvm.dbg.value(metadata i32 %5, metadata !3013, metadata !DIExpression()), !dbg !3016
  %6 = lshr i32 %0, 4, !dbg !3022
  call void @llvm.dbg.value(metadata i32 %6, metadata !3011, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i32 %0, metadata !3014, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !3016
  %7 = lshr i32 %0, 3, !dbg !3023
  call void @llvm.dbg.value(metadata i32 %7, metadata !3012, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i32 %0, metadata !3015, metadata !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_stack_value)), !dbg !3016
  %8 = shl nuw nsw i32 %0, 2, !dbg !3024
  %9 = and i32 %8, 28, !dbg !3024
  %10 = shl nuw i32 15, %9, !dbg !3025
  %11 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !3026
  %12 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %11, i32 0, i32 25, i32 %7, i32 2, !dbg !3027
  store volatile i32 %10, i32* %12, align 4, !dbg !3028
  %13 = shl nuw i32 1, %5, !dbg !3029
  %14 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !3030
  %15 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %14, i32 0, i32 0, i32 %4, i32 2, !dbg !3031
  store volatile i32 %13, i32* %15, align 4, !dbg !3032
  %16 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !3033
  %17 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %16, i32 0, i32 18, i32 %4, i32 2, !dbg !3034
  store volatile i32 %13, i32* %17, align 4, !dbg !3035
  %18 = tail call i32 @is_pin_with_pullsel(i32 noundef %0) #18, !dbg !3036
  %19 = icmp eq i32 %18, 0, !dbg !3036
  %20 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !3038
  br i1 %19, label %23, label %21, !dbg !3039

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %20, i32 0, i32 2, i32 %4, i32 2, !dbg !3040
  br label %29, !dbg !3042

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %20, i32 0, i32 20, i32 %4, i32 2, !dbg !3043
  store volatile i32 %13, i32* %24, align 4, !dbg !3045
  %25 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !3046
  %26 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %25, i32 0, i32 22, i32 %4, i32 2, !dbg !3047
  store volatile i32 %13, i32* %26, align 4, !dbg !3048
  %27 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !3049
  %28 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %27, i32 0, i32 23, i32 %4, i32 2, !dbg !3050
  br label %29

29:                                               ; preds = %23, %21
  %30 = phi i32* [ %28, %23 ], [ %22, %21 ]
  store volatile i32 %13, i32* %30, align 4, !dbg !3038
  %31 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !3051
  %32 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %31, i32 0, i32 12, i32 %4, i32 2, !dbg !3052
  store volatile i32 %13, i32* %32, align 4, !dbg !3053
  %33 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !3054
  %34 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %33, i32 0, i32 14, i32 %4, i32 2, !dbg !3055
  store volatile i32 %13, i32* %34, align 4, !dbg !3056
  %35 = shl nuw nsw i32 %0, 1, !dbg !3057
  %36 = and i32 %35, 30, !dbg !3057
  %37 = shl nuw i32 3, %36, !dbg !3058
  %38 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !3059
  %39 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %38, i32 0, i32 27, i32 %6, i32 2, !dbg !3060
  store volatile i32 %37, i32* %39, align 4, !dbg !3061
  br label %40, !dbg !3062

40:                                               ; preds = %1, %29
  %41 = phi i32 [ 0, %29 ], [ -2, %1 ], !dbg !3016
  ret i32 %41, !dbg !3063
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_gpio_clear_high_impedance(i32 noundef %0) local_unnamed_addr #10 !dbg !3064 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3066, metadata !DIExpression()), !dbg !3071
  %2 = icmp ugt i32 %0, 48, !dbg !3072
  br i1 %2, label %34, label %3, !dbg !3074

3:                                                ; preds = %1
  %4 = lshr i32 %0, 5, !dbg !3075
  call void @llvm.dbg.value(metadata i32 %4, metadata !3067, metadata !DIExpression()), !dbg !3071
  %5 = and i32 %0, 31, !dbg !3076
  call void @llvm.dbg.value(metadata i32 %5, metadata !3069, metadata !DIExpression()), !dbg !3071
  %6 = lshr i32 %0, 3, !dbg !3077
  call void @llvm.dbg.value(metadata i32 %6, metadata !3068, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i32 %0, metadata !3070, metadata !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_stack_value)), !dbg !3071
  %7 = shl nuw nsw i32 %0, 2, !dbg !3078
  %8 = and i32 %7, 28, !dbg !3078
  %9 = shl nuw i32 15, %8, !dbg !3079
  %10 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !3080
  %11 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %10, i32 0, i32 25, i32 %6, i32 2, !dbg !3081
  store volatile i32 %9, i32* %11, align 4, !dbg !3082
  %12 = shl nuw i32 1, %5, !dbg !3083
  %13 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !3084
  %14 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %13, i32 0, i32 0, i32 %4, i32 2, !dbg !3085
  store volatile i32 %12, i32* %14, align 4, !dbg !3086
  %15 = tail call i32 @is_pin_with_pullsel(i32 noundef %0) #18, !dbg !3087
  %16 = icmp eq i32 %15, 0, !dbg !3087
  %17 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !3089
  br i1 %16, label %22, label %18, !dbg !3090

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %17, i32 0, i32 2, i32 %4, i32 1, !dbg !3091
  store volatile i32 %12, i32* %19, align 4, !dbg !3093
  %20 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !3094
  %21 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %20, i32 0, i32 10, i32 %4, i32 2, !dbg !3095
  br label %28, !dbg !3096

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %17, i32 0, i32 20, i32 %4, i32 1, !dbg !3097
  store volatile i32 %12, i32* %23, align 4, !dbg !3099
  %24 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !3100
  %25 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %24, i32 0, i32 22, i32 %4, i32 1, !dbg !3101
  store volatile i32 %12, i32* %25, align 4, !dbg !3102
  %26 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !3103
  %27 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %26, i32 0, i32 23, i32 %4, i32 1, !dbg !3104
  br label %28

28:                                               ; preds = %22, %18
  %29 = phi i32* [ %27, %22 ], [ %21, %18 ]
  store volatile i32 %12, i32* %29, align 4, !dbg !3089
  %30 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !3105
  %31 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %30, i32 0, i32 18, i32 %4, i32 1, !dbg !3106
  store volatile i32 %12, i32* %31, align 4, !dbg !3107
  %32 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !3108
  %33 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %32, i32 0, i32 14, i32 %4, i32 1, !dbg !3109
  store volatile i32 %12, i32* %33, align 4, !dbg !3110
  br label %34, !dbg !3111

34:                                               ; preds = %1, %28
  %35 = phi i32 [ 0, %28 ], [ -2, %1 ], !dbg !3071
  ret i32 %35, !dbg !3112
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_gpio_set_driving_current(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !3113 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3117, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i32 %1, metadata !3118, metadata !DIExpression()), !dbg !3121
  %3 = icmp ugt i32 %0, 48, !dbg !3122
  br i1 %3, label %14, label %4, !dbg !3124

4:                                                ; preds = %2
  %5 = lshr i32 %0, 4, !dbg !3125
  call void @llvm.dbg.value(metadata i32 %5, metadata !3119, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i32 %0, metadata !3120, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !3121
  %6 = shl nuw nsw i32 %0, 1, !dbg !3126
  %7 = and i32 %6, 30, !dbg !3126
  %8 = shl nuw i32 3, %7, !dbg !3127
  %9 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !3128
  %10 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %9, i32 0, i32 16, i32 %5, i32 2, !dbg !3129
  store volatile i32 %8, i32* %10, align 4, !dbg !3130
  %11 = shl i32 %1, %7, !dbg !3131
  %12 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !3132
  %13 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %12, i32 0, i32 16, i32 %5, i32 1, !dbg !3133
  store volatile i32 %11, i32* %13, align 4, !dbg !3134
  br label %14, !dbg !3135

14:                                               ; preds = %2, %4
  %15 = phi i32 [ 0, %4 ], [ -2, %2 ], !dbg !3121
  ret i32 %15, !dbg !3136
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_gpio_get_driving_current(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #9 !dbg !3137 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3142, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i32* %1, metadata !3143, metadata !DIExpression()), !dbg !3147
  %3 = icmp ugt i32 %0, 48, !dbg !3148
  br i1 %3, label %18, label %4, !dbg !3150

4:                                                ; preds = %2
  %5 = icmp eq i32* %1, null, !dbg !3151
  br i1 %5, label %18, label %6, !dbg !3153

6:                                                ; preds = %4
  %7 = lshr i32 %0, 4, !dbg !3154
  call void @llvm.dbg.value(metadata i32 %7, metadata !3144, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i32 %0, metadata !3145, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !3147
  %8 = load %struct.GPIO_REGISTER_T*, %struct.GPIO_REGISTER_T** @gpio_register_base, align 4, !dbg !3155
  %9 = getelementptr inbounds %struct.GPIO_REGISTER_T, %struct.GPIO_REGISTER_T* %8, i32 0, i32 16, i32 %7, i32 0, !dbg !3156
  %10 = load volatile i32, i32* %9, align 4, !dbg !3156
  call void @llvm.dbg.value(metadata i32 %10, metadata !3146, metadata !DIExpression()), !dbg !3147
  %11 = shl nuw nsw i32 %0, 1, !dbg !3157
  %12 = and i32 %11, 30, !dbg !3157
  %13 = shl nuw i32 3, %12, !dbg !3158
  %14 = and i32 %10, %13, !dbg !3159
  call void @llvm.dbg.value(metadata i32 %14, metadata !3146, metadata !DIExpression()), !dbg !3147
  %15 = lshr i32 %14, %12, !dbg !3160
  call void @llvm.dbg.value(metadata i32 %15, metadata !3146, metadata !DIExpression()), !dbg !3147
  %16 = shl i32 %15, 2, !dbg !3161
  %17 = add i32 %16, 4, !dbg !3161
  store i32 %17, i32* %1, align 4, !dbg !3162
  br label %18, !dbg !3163

18:                                               ; preds = %4, %2, %6
  %19 = phi i32 [ 0, %6 ], [ -2, %2 ], [ -1, %4 ], !dbg !3147
  ret i32 %19, !dbg !3164
}

; Function Attrs: noinline nounwind optsize
define dso_local void @uart_receive_handler(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 !dbg !3165 {
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3169, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i1 %1, metadata !3170, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3234
  %4 = bitcast i32* %3 to i8*, !dbg !3235
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #20, !dbg !3235
  %5 = getelementptr inbounds [4 x i32], [4 x i32]* @g_uart_hwstatus, i32 0, i32 %0, !dbg !3236
  %6 = load volatile i32, i32* %5, align 4, !dbg !3236
  %7 = icmp eq i32 %6, 2, !dbg !3238
  br i1 %7, label %9, label %8, !dbg !3239

8:                                                ; preds = %2
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 156, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.uart_receive_handler, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !3240
  unreachable, !dbg !3240

9:                                                ; preds = %2
  %10 = getelementptr inbounds [0 x %struct.UART_REGISTER_T*], [0 x %struct.UART_REGISTER_T*]* bitcast ([4 x %struct.UART_REGISTER_T*]* @g_uart_regbase to [0 x %struct.UART_REGISTER_T*]*), i32 0, i32 %0, !dbg !3242
  %11 = load %struct.UART_REGISTER_T*, %struct.UART_REGISTER_T** %10, align 4, !dbg !3242
  call void @llvm.dbg.value(metadata %struct.UART_REGISTER_T* %11, metadata !3176, metadata !DIExpression()), !dbg !3234
  %12 = tail call i32 @uart_port_to_dma_channel(i32 noundef %0, i32 noundef 1) #19, !dbg !3243
  call void @llvm.dbg.value(metadata i32 %12, metadata !3171, metadata !DIExpression()), !dbg !3234
  br i1 %1, label %13, label %14, !dbg !3244

13:                                               ; preds = %9
  tail call void @uart_clear_timeout_interrupt(%struct.UART_REGISTER_T* noundef %11) #19, !dbg !3245
  br label %14, !dbg !3248

14:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32* %3, metadata !3173, metadata !DIExpression(DW_OP_deref)), !dbg !3234
  %15 = call i32 @vdma_get_available_receive_bytes(i32 noundef %12, i32* noundef nonnull %3) #19, !dbg !3249
  call void @llvm.dbg.value(metadata i32 %15, metadata !3232, metadata !DIExpression()), !dbg !3234
  %16 = icmp eq i32 %15, 0, !dbg !3250
  br i1 %16, label %18, label %17, !dbg !3252

17:                                               ; preds = %14
  call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 169, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.uart_receive_handler, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !3253
  unreachable, !dbg !3253

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4, !dbg !3255
  call void @llvm.dbg.value(metadata i32 %19, metadata !3173, metadata !DIExpression()), !dbg !3234
  %20 = icmp eq i32 %19, 0, !dbg !3257
  br i1 %20, label %43, label %21, !dbg !3258

21:                                               ; preds = %18
  %22 = getelementptr inbounds [4 x %struct.uart_callback_t], [4 x %struct.uart_callback_t]* @g_uart_callback, i32 0, i32 %0, i32 0, !dbg !3259
  %23 = load void (i32, i8*)*, void (i32, i8*)** %22, align 4, !dbg !3259
  call void @llvm.dbg.value(metadata void (i32, i8*)* %23, metadata !3174, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i8* undef, metadata !3175, metadata !DIExpression()), !dbg !3234
  %24 = icmp eq void (i32, i8*)* %23, null, !dbg !3260
  br i1 %24, label %25, label %26, !dbg !3262

25:                                               ; preds = %21
  call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 179, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.uart_receive_handler, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !3263
  unreachable, !dbg !3263

26:                                               ; preds = %21
  %27 = getelementptr inbounds [4 x %struct.uart_callback_t], [4 x %struct.uart_callback_t]* @g_uart_callback, i32 0, i32 %0, i32 1, !dbg !3265
  %28 = load i8*, i8** %27, align 4, !dbg !3265
  call void @llvm.dbg.value(metadata i8* %28, metadata !3175, metadata !DIExpression()), !dbg !3234
  %29 = call i32 @vdma_disable_interrupt(i32 noundef %12) #19, !dbg !3266
  call void %23(i32 noundef 1, i8* noundef %28) #19, !dbg !3267
  %30 = call i32 @vdma_enable_interrupt(i32 noundef %12) #19, !dbg !3268
  call void @llvm.dbg.value(metadata i32* %3, metadata !3173, metadata !DIExpression(DW_OP_deref)), !dbg !3234
  %31 = call i32 @vdma_get_available_receive_bytes(i32 noundef %12, i32* noundef nonnull %3) #19, !dbg !3269
  call void @llvm.dbg.value(metadata i32 %31, metadata !3232, metadata !DIExpression()), !dbg !3234
  %32 = icmp eq i32 %31, 0, !dbg !3270
  br i1 %32, label %34, label %33, !dbg !3272

33:                                               ; preds = %26
  call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 189, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.uart_receive_handler, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !3273
  unreachable, !dbg !3273

34:                                               ; preds = %26
  %35 = load i32, i32* %3, align 4, !dbg !3275
  call void @llvm.dbg.value(metadata i32 %35, metadata !3173, metadata !DIExpression()), !dbg !3234
  %36 = getelementptr inbounds [4 x %struct.hal_uart_dma_config_t], [4 x %struct.hal_uart_dma_config_t]* @g_uart_dma_config, i32 0, i32 %0, i32 5, !dbg !3277
  %37 = load i32, i32* %36, align 4, !dbg !3277
  %38 = icmp ult i32 %35, %37, !dbg !3278
  br i1 %38, label %43, label %39, !dbg !3279

39:                                               ; preds = %34
  %40 = call i32 @vdma_disable_interrupt(i32 noundef %12) #19, !dbg !3280
  call void @llvm.dbg.value(metadata i32 %40, metadata !3232, metadata !DIExpression()), !dbg !3234
  %41 = icmp eq i32 %40, 0, !dbg !3282
  br i1 %41, label %43, label %42, !dbg !3284

42:                                               ; preds = %39
  call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 195, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.uart_receive_handler, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !3285
  unreachable, !dbg !3285

43:                                               ; preds = %34, %39, %18
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #20, !dbg !3287
  ret void, !dbg !3287
}

; Function Attrs: noreturn optsize
declare dso_local void @__assert_func(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #14

; Function Attrs: optsize
declare dso_local i32 @vdma_get_available_receive_bytes(i32 noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare dso_local i32 @vdma_disable_interrupt(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare dso_local i32 @vdma_enable_interrupt(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize
define dso_local void @uart_send_handler(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 !dbg !3288 {
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3290, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i1 %1, metadata !3291, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3298
  %4 = bitcast i32* %3 to i8*, !dbg !3299
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #20, !dbg !3299
  %5 = getelementptr inbounds [4 x i32], [4 x i32]* @g_uart_hwstatus, i32 0, i32 %0, !dbg !3300
  %6 = load volatile i32, i32* %5, align 4, !dbg !3300
  %7 = icmp eq i32 %6, 2, !dbg !3302
  br i1 %7, label %9, label %8, !dbg !3303

8:                                                ; preds = %2
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 222, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.uart_send_handler, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !3304
  unreachable, !dbg !3304

9:                                                ; preds = %2
  %10 = tail call i32 @uart_port_to_dma_channel(i32 noundef %0, i32 noundef 0) #19, !dbg !3306
  call void @llvm.dbg.value(metadata i32 %10, metadata !3292, metadata !DIExpression()), !dbg !3298
  br i1 %1, label %36, label %11, !dbg !3307

11:                                               ; preds = %9
  %12 = getelementptr inbounds [4 x %struct.uart_callback_t], [4 x %struct.uart_callback_t]* @g_uart_callback, i32 0, i32 %0, i32 0, !dbg !3308
  %13 = load void (i32, i8*)*, void (i32, i8*)** %12, align 4, !dbg !3308
  call void @llvm.dbg.value(metadata void (i32, i8*)* %13, metadata !3296, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i8* undef, metadata !3297, metadata !DIExpression()), !dbg !3298
  %14 = icmp eq void (i32, i8*)* %13, null, !dbg !3311
  br i1 %14, label %15, label %16, !dbg !3313

15:                                               ; preds = %11
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 256, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.uart_send_handler, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !3314
  unreachable, !dbg !3314

16:                                               ; preds = %11
  %17 = getelementptr inbounds [4 x %struct.uart_callback_t], [4 x %struct.uart_callback_t]* @g_uart_callback, i32 0, i32 %0, i32 1, !dbg !3316
  %18 = load i8*, i8** %17, align 4, !dbg !3316
  call void @llvm.dbg.value(metadata i8* %18, metadata !3297, metadata !DIExpression()), !dbg !3298
  %19 = tail call i32 @vdma_disable_interrupt(i32 noundef %10) #19, !dbg !3317
  tail call void %13(i32 noundef 2, i8* noundef %18) #19, !dbg !3318
  %20 = tail call i32 @vdma_enable_interrupt(i32 noundef %10) #19, !dbg !3319
  call void @llvm.dbg.value(metadata i32* %3, metadata !3295, metadata !DIExpression(DW_OP_deref)), !dbg !3298
  %21 = call i32 @vdma_get_available_send_space(i32 noundef %10, i32* noundef nonnull %3) #19, !dbg !3320
  call void @llvm.dbg.value(metadata i32 %21, metadata !3293, metadata !DIExpression()), !dbg !3298
  %22 = icmp eq i32 %21, 0, !dbg !3321
  br i1 %22, label %24, label %23, !dbg !3323

23:                                               ; preds = %16
  call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 266, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.uart_send_handler, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !3324
  unreachable, !dbg !3324

24:                                               ; preds = %16
  %25 = getelementptr inbounds [4 x %struct.hal_uart_dma_config_t], [4 x %struct.hal_uart_dma_config_t]* @g_uart_dma_config, i32 0, i32 %0, i32 1, !dbg !3326
  %26 = load i32, i32* %25, align 4, !dbg !3326
  %27 = getelementptr inbounds [4 x %struct.hal_uart_dma_config_t], [4 x %struct.hal_uart_dma_config_t]* @g_uart_dma_config, i32 0, i32 %0, i32 2, !dbg !3327
  %28 = load i32, i32* %27, align 4, !dbg !3327
  %29 = sub i32 %26, %28, !dbg !3328
  call void @llvm.dbg.value(metadata i32 %29, metadata !3294, metadata !DIExpression()), !dbg !3298
  %30 = load i32, i32* %3, align 4, !dbg !3329
  call void @llvm.dbg.value(metadata i32 %30, metadata !3295, metadata !DIExpression()), !dbg !3298
  %31 = icmp ult i32 %30, %29, !dbg !3331
  br i1 %31, label %36, label %32, !dbg !3332

32:                                               ; preds = %24
  %33 = call i32 @vdma_disable_interrupt(i32 noundef %10) #19, !dbg !3333
  call void @llvm.dbg.value(metadata i32 %33, metadata !3293, metadata !DIExpression()), !dbg !3298
  %34 = icmp eq i32 %33, 0, !dbg !3335
  br i1 %34, label %36, label %35, !dbg !3337

35:                                               ; preds = %32
  call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 274, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.uart_send_handler, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !3338
  unreachable, !dbg !3338

36:                                               ; preds = %24, %32, %9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #20, !dbg !3340
  ret void, !dbg !3340
}

; Function Attrs: optsize
declare dso_local i32 @vdma_get_available_send_space(i32 noundef, i32* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize
define dso_local void @uart_error_handler(i32 noundef %0) local_unnamed_addr #0 !dbg !3341 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3345, metadata !DIExpression()), !dbg !3349
  %2 = getelementptr inbounds [0 x %struct.UART_REGISTER_T*], [0 x %struct.UART_REGISTER_T*]* bitcast ([4 x %struct.UART_REGISTER_T*]* @g_uart_regbase to [0 x %struct.UART_REGISTER_T*]*), i32 0, i32 %0, !dbg !3350
  %3 = load %struct.UART_REGISTER_T*, %struct.UART_REGISTER_T** %2, align 4, !dbg !3350
  call void @llvm.dbg.value(metadata %struct.UART_REGISTER_T* %3, metadata !3346, metadata !DIExpression()), !dbg !3349
  %4 = tail call i32 @uart_verify_error(%struct.UART_REGISTER_T* noundef %3) #19, !dbg !3351
  %5 = icmp eq i32 %4, 0, !dbg !3351
  br i1 %5, label %6, label %14, !dbg !3353

6:                                                ; preds = %1
  tail call void @uart_purge_fifo(%struct.UART_REGISTER_T* noundef %3, i32 noundef 1) #19, !dbg !3354
  tail call void @uart_purge_fifo(%struct.UART_REGISTER_T* noundef %3, i32 noundef 0) #19, !dbg !3356
  %7 = getelementptr inbounds [4 x %struct.uart_callback_t], [4 x %struct.uart_callback_t]* @g_uart_callback, i32 0, i32 %0, i32 0, !dbg !3357
  %8 = load void (i32, i8*)*, void (i32, i8*)** %7, align 4, !dbg !3357
  call void @llvm.dbg.value(metadata void (i32, i8*)* %8, metadata !3347, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i8* undef, metadata !3348, metadata !DIExpression()), !dbg !3349
  %9 = icmp eq void (i32, i8*)* %8, null, !dbg !3358
  br i1 %9, label %10, label %11, !dbg !3360

10:                                               ; preds = %6
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 296, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.uart_error_handler, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !3361
  unreachable, !dbg !3361

11:                                               ; preds = %6
  %12 = getelementptr inbounds [4 x %struct.uart_callback_t], [4 x %struct.uart_callback_t]* @g_uart_callback, i32 0, i32 %0, i32 1, !dbg !3363
  %13 = load i8*, i8** %12, align 4, !dbg !3363
  call void @llvm.dbg.value(metadata i8* %13, metadata !3348, metadata !DIExpression()), !dbg !3349
  tail call void %8(i32 noundef -1, i8* noundef %13) #19, !dbg !3364
  br label %14, !dbg !3365

14:                                               ; preds = %11, %1
  ret void, !dbg !3366
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_baudrate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !3367 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3373, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata i32 %1, metadata !3374, metadata !DIExpression()), !dbg !3378
  %3 = tail call fastcc zeroext i1 @uart_port_is_valid(i32 noundef %0) #18, !dbg !3379
  br i1 %3, label %4, label %16, !dbg !3381

4:                                                ; preds = %2
  %5 = tail call fastcc zeroext i1 @uart_baudrate_is_valid(i32 noundef %1) #18, !dbg !3382
  br i1 %5, label %6, label %16, !dbg !3383

6:                                                ; preds = %4
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* @g_uart_hwstatus, i32 0, i32 %0, !dbg !3384
  %8 = load volatile i32, i32* %7, align 4, !dbg !3384
  %9 = icmp eq i32 %8, 0, !dbg !3386
  br i1 %9, label %16, label %10, !dbg !3387

10:                                               ; preds = %6
  %11 = tail call i32 @save_and_set_interrupt_mask() #19, !dbg !3388
  call void @llvm.dbg.value(metadata i32 %11, metadata !3376, metadata !DIExpression()), !dbg !3378
  tail call void @restore_interrupt_mask(i32 noundef %11) #19, !dbg !3389
  %12 = getelementptr inbounds [0 x %struct.UART_REGISTER_T*], [0 x %struct.UART_REGISTER_T*]* bitcast ([4 x %struct.UART_REGISTER_T*]* @g_uart_regbase to [0 x %struct.UART_REGISTER_T*]*), i32 0, i32 %0, !dbg !3390
  %13 = load %struct.UART_REGISTER_T*, %struct.UART_REGISTER_T** %12, align 4, !dbg !3390
  call void @llvm.dbg.value(metadata %struct.UART_REGISTER_T* %13, metadata !3377, metadata !DIExpression()), !dbg !3378
  %14 = getelementptr inbounds [13 x i32], [13 x i32]* @g_uart_baudrate_map, i32 0, i32 %1, !dbg !3391
  %15 = load i32, i32* %14, align 4, !dbg !3391
  call void @llvm.dbg.value(metadata i32 %15, metadata !3375, metadata !DIExpression()), !dbg !3378
  tail call void @uart_set_baudrate(%struct.UART_REGISTER_T* noundef %13, i32 noundef %15) #19, !dbg !3392
  br label %16, !dbg !3393

16:                                               ; preds = %6, %2, %4, %10
  %17 = phi i32 [ 0, %10 ], [ -4, %4 ], [ -4, %2 ], [ -2, %6 ], !dbg !3378
  ret i32 %17, !dbg !3394
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @uart_port_is_valid(i32 noundef %0) unnamed_addr #8 !dbg !3395 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3399, metadata !DIExpression()), !dbg !3400
  %2 = icmp ult i32 %0, 4, !dbg !3401
  ret i1 %2, !dbg !3402
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @uart_baudrate_is_valid(i32 noundef %0) unnamed_addr #8 !dbg !3403 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3407, metadata !DIExpression()), !dbg !3408
  %2 = icmp ult i32 %0, 13, !dbg !3409
  ret i1 %2, !dbg !3410
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* nocapture noundef readonly %1) local_unnamed_addr #0 !dbg !3411 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3427, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !3428, metadata !DIExpression()), !dbg !3431
  %3 = tail call fastcc zeroext i1 @uart_port_is_valid(i32 noundef %0) #18, !dbg !3432
  br i1 %3, label %4, label %23, !dbg !3434

4:                                                ; preds = %2
  %5 = tail call fastcc zeroext i1 @uart_config_is_valid(%struct.hal_uart_config_t* noundef %1) #18, !dbg !3435
  br i1 %5, label %6, label %23, !dbg !3436

6:                                                ; preds = %4
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* @g_uart_hwstatus, i32 0, i32 %0, !dbg !3437
  %8 = load volatile i32, i32* %7, align 4, !dbg !3437
  %9 = icmp eq i32 %8, 0, !dbg !3439
  br i1 %9, label %23, label %10, !dbg !3440

10:                                               ; preds = %6
  %11 = tail call i32 @save_and_set_interrupt_mask() #19, !dbg !3441
  call void @llvm.dbg.value(metadata i32 %11, metadata !3429, metadata !DIExpression()), !dbg !3431
  tail call void @restore_interrupt_mask(i32 noundef %11) #19, !dbg !3442
  %12 = getelementptr inbounds [0 x %struct.UART_REGISTER_T*], [0 x %struct.UART_REGISTER_T*]* bitcast ([4 x %struct.UART_REGISTER_T*]* @g_uart_regbase to [0 x %struct.UART_REGISTER_T*]*), i32 0, i32 %0, !dbg !3443
  %13 = load %struct.UART_REGISTER_T*, %struct.UART_REGISTER_T** %12, align 4, !dbg !3443
  call void @llvm.dbg.value(metadata %struct.UART_REGISTER_T* %13, metadata !3430, metadata !DIExpression()), !dbg !3431
  %14 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !3444
  %15 = load i32, i32* %14, align 4, !dbg !3444
  %16 = tail call i32 @hal_uart_set_baudrate(i32 noundef %0, i32 noundef %15) #18, !dbg !3445
  %17 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !3446
  %18 = load i32, i32* %17, align 4, !dbg !3446
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !3447
  %20 = load i32, i32* %19, align 4, !dbg !3447
  %21 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !3448
  %22 = load i32, i32* %21, align 4, !dbg !3448
  tail call void @uart_set_format(%struct.UART_REGISTER_T* noundef %13, i32 noundef %18, i32 noundef %20, i32 noundef %22) #19, !dbg !3449
  br label %23, !dbg !3450

23:                                               ; preds = %6, %2, %4, %10
  %24 = phi i32 [ 0, %10 ], [ -4, %4 ], [ -4, %2 ], [ -2, %6 ], !dbg !3431
  ret i32 %24, !dbg !3451
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @uart_config_is_valid(%struct.hal_uart_config_t* nocapture noundef readonly %0) unnamed_addr #2 !dbg !3452 {
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %0, metadata !3456, metadata !DIExpression()), !dbg !3457
  %2 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %0, i32 0, i32 0, !dbg !3458
  %3 = load i32, i32* %2, align 4, !dbg !3458
  %4 = icmp ult i32 %3, 13, !dbg !3459
  br i1 %4, label %5, label %17, !dbg !3460

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %0, i32 0, i32 1, !dbg !3461
  %7 = load i32, i32* %6, align 4, !dbg !3461
  %8 = icmp ult i32 %7, 4, !dbg !3462
  br i1 %8, label %9, label %17, !dbg !3463

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %0, i32 0, i32 2, !dbg !3464
  %11 = load i32, i32* %10, align 4, !dbg !3464
  %12 = icmp ult i32 %11, 2, !dbg !3465
  br i1 %12, label %13, label %17, !dbg !3466

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %0, i32 0, i32 3, !dbg !3467
  %15 = load i32, i32* %14, align 4, !dbg !3467
  %16 = icmp ult i32 %15, 3, !dbg !3468
  br label %17

17:                                               ; preds = %13, %9, %5, %1
  %18 = phi i1 [ false, %9 ], [ false, %5 ], [ false, %1 ], [ %16, %13 ], !dbg !3457
  ret i1 %18, !dbg !3469
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_init(i32 noundef %0, %struct.hal_uart_config_t* nocapture noundef readonly %1) local_unnamed_addr #0 !dbg !3470 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3475, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !3476, metadata !DIExpression()), !dbg !3483
  %3 = tail call fastcc zeroext i1 @uart_port_is_valid(i32 noundef %0) #18, !dbg !3484
  br i1 %3, label %4, label %41, !dbg !3486

4:                                                ; preds = %2
  %5 = tail call fastcc zeroext i1 @uart_config_is_valid(%struct.hal_uart_config_t* noundef %1) #18, !dbg !3487
  br i1 %5, label %6, label %41, !dbg !3488

6:                                                ; preds = %4
  %7 = tail call i32 @save_and_set_interrupt_mask() #19, !dbg !3489
  call void @llvm.dbg.value(metadata i32 %7, metadata !3480, metadata !DIExpression()), !dbg !3483
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* @g_uart_hwstatus, i32 0, i32 %0, !dbg !3490
  %9 = load volatile i32, i32* %8, align 4, !dbg !3490
  %10 = icmp eq i32 %9, 0, !dbg !3492
  br i1 %10, label %12, label %11, !dbg !3493

11:                                               ; preds = %6
  tail call void @restore_interrupt_mask(i32 noundef %7) #19, !dbg !3494
  br label %41, !dbg !3496

12:                                               ; preds = %6
  %13 = load i1, i1* @g_uart_global_data_initialized, align 1, !dbg !3497
  br i1 %13, label %22, label %14, !dbg !3499

14:                                               ; preds = %12, %14
  %15 = phi i32 [ %19, %14 ], [ 0, %12 ]
  call void @llvm.dbg.value(metadata i32 %15, metadata !3478, metadata !DIExpression()), !dbg !3483
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* @g_uart_hwstatus, i32 0, i32 %15, !dbg !3500
  store volatile i32 0, i32* %16, align 4, !dbg !3505
  %17 = getelementptr inbounds [4 x %struct.uart_callback_t], [4 x %struct.uart_callback_t]* @g_uart_callback, i32 0, i32 %15, i32 1, !dbg !3506
  store i8* null, i8** %17, align 4, !dbg !3507
  %18 = getelementptr inbounds [4 x %struct.uart_callback_t], [4 x %struct.uart_callback_t]* @g_uart_callback, i32 0, i32 %15, i32 0, !dbg !3508
  store void (i32, i8*)* null, void (i32, i8*)** %18, align 4, !dbg !3509
  %19 = add nuw nsw i32 %15, 1, !dbg !3510
  call void @llvm.dbg.value(metadata i32 %19, metadata !3478, metadata !DIExpression()), !dbg !3483
  %20 = icmp eq i32 %19, 4, !dbg !3511
  br i1 %20, label %21, label %14, !dbg !3512, !llvm.loop !3513

21:                                               ; preds = %14
  store i1 true, i1* @g_uart_global_data_initialized, align 1, !dbg !3515
  br label %22, !dbg !3516

22:                                               ; preds = %21, %12
  store volatile i32 1, i32* %8, align 4, !dbg !3517
  tail call void @restore_interrupt_mask(i32 noundef %7) #19, !dbg !3518
  %23 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([4 x i32]* @g_uart_port_to_pdn to [0 x i32]*), i32 0, i32 %0, !dbg !3519
  %24 = load i32, i32* %23, align 4, !dbg !3519
  %25 = tail call i32 @hal_clock_enable(i32 noundef %24) #19, !dbg !3520
  call void @llvm.dbg.value(metadata i32 %25, metadata !3481, metadata !DIExpression()), !dbg !3483
  %26 = icmp eq i32 %25, 0, !dbg !3521
  br i1 %26, label %28, label %27, !dbg !3523

27:                                               ; preds = %22
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 526, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.hal_uart_init, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !3524
  unreachable, !dbg !3524

28:                                               ; preds = %22
  %29 = getelementptr inbounds [0 x %struct.UART_REGISTER_T*], [0 x %struct.UART_REGISTER_T*]* bitcast ([4 x %struct.UART_REGISTER_T*]* @g_uart_regbase to [0 x %struct.UART_REGISTER_T*]*), i32 0, i32 %0, !dbg !3526
  %30 = load %struct.UART_REGISTER_T*, %struct.UART_REGISTER_T** %29, align 4, !dbg !3526
  call void @llvm.dbg.value(metadata %struct.UART_REGISTER_T* %30, metadata !3477, metadata !DIExpression()), !dbg !3483
  tail call void @uart_reset_default_value(%struct.UART_REGISTER_T* noundef %30) #19, !dbg !3527
  %31 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !3528
  %32 = load i32, i32* %31, align 4, !dbg !3528
  %33 = getelementptr inbounds [13 x i32], [13 x i32]* @g_uart_baudrate_map, i32 0, i32 %32, !dbg !3529
  %34 = load i32, i32* %33, align 4, !dbg !3529
  call void @llvm.dbg.value(metadata i32 %34, metadata !3479, metadata !DIExpression()), !dbg !3483
  tail call void @uart_set_baudrate(%struct.UART_REGISTER_T* noundef %30, i32 noundef %34) #19, !dbg !3530
  %35 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !3531
  %36 = load i32, i32* %35, align 4, !dbg !3531
  %37 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !3532
  %38 = load i32, i32* %37, align 4, !dbg !3532
  %39 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !3533
  %40 = load i32, i32* %39, align 4, !dbg !3533
  tail call void @uart_set_format(%struct.UART_REGISTER_T* noundef %30, i32 noundef %36, i32 noundef %38, i32 noundef %40) #19, !dbg !3534
  tail call void @uart_set_fifo(%struct.UART_REGISTER_T* noundef %30) #19, !dbg !3535
  br label %41, !dbg !3536

41:                                               ; preds = %2, %4, %28, %11
  %42 = phi i32 [ -3, %11 ], [ 0, %28 ], [ -4, %4 ], [ -4, %2 ], !dbg !3483
  ret i32 %42, !dbg !3537
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_deinit(i32 noundef %0) local_unnamed_addr #0 !dbg !3538 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3542, metadata !DIExpression()), !dbg !3549
  %2 = tail call fastcc zeroext i1 @uart_port_is_valid(i32 noundef %0) #18, !dbg !3550
  br i1 %2, label %3, label %54, !dbg !3552

3:                                                ; preds = %1
  %4 = tail call i32 @save_and_set_interrupt_mask() #19, !dbg !3553
  call void @llvm.dbg.value(metadata i32 %4, metadata !3546, metadata !DIExpression()), !dbg !3549
  %5 = getelementptr inbounds [4 x i32], [4 x i32]* @g_uart_hwstatus, i32 0, i32 %0, !dbg !3554
  %6 = load volatile i32, i32* %5, align 4, !dbg !3554
  %7 = icmp eq i32 %6, 0, !dbg !3556
  br i1 %7, label %52, label %8, !dbg !3557

8:                                                ; preds = %3
  %9 = getelementptr inbounds [0 x %struct.UART_REGISTER_T*], [0 x %struct.UART_REGISTER_T*]* bitcast ([4 x %struct.UART_REGISTER_T*]* @g_uart_regbase to [0 x %struct.UART_REGISTER_T*]*), i32 0, i32 %0, !dbg !3558
  %10 = load %struct.UART_REGISTER_T*, %struct.UART_REGISTER_T** %9, align 4, !dbg !3558
  call void @llvm.dbg.value(metadata %struct.UART_REGISTER_T* %10, metadata !3543, metadata !DIExpression()), !dbg !3549
  tail call void @uart_query_empty(%struct.UART_REGISTER_T* noundef %10) #19, !dbg !3559
  %11 = load volatile i32, i32* %5, align 4, !dbg !3560
  %12 = icmp eq i32 %11, 2, !dbg !3562
  br i1 %12, label %13, label %43, !dbg !3563

13:                                               ; preds = %8
  %14 = tail call i32 @uart_port_to_dma_channel(i32 noundef %0, i32 noundef 0) #19, !dbg !3564
  call void @llvm.dbg.value(metadata i32 %14, metadata !3544, metadata !DIExpression()), !dbg !3549
  %15 = tail call i32 @uart_port_to_dma_channel(i32 noundef %0, i32 noundef 1) #19, !dbg !3566
  call void @llvm.dbg.value(metadata i32 %15, metadata !3545, metadata !DIExpression()), !dbg !3549
  %16 = tail call i32 @vdma_disable_interrupt(i32 noundef %14) #19, !dbg !3567
  call void @llvm.dbg.value(metadata i32 %16, metadata !3547, metadata !DIExpression()), !dbg !3549
  %17 = icmp eq i32 %16, 0, !dbg !3568
  br i1 %17, label %19, label %18, !dbg !3570

18:                                               ; preds = %13
  tail call void @restore_interrupt_mask(i32 noundef %4) #19, !dbg !3571
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 575, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.hal_uart_deinit, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !3573
  unreachable, !dbg !3573

19:                                               ; preds = %13
  %20 = tail call i32 @vdma_disable_interrupt(i32 noundef %15) #19, !dbg !3574
  call void @llvm.dbg.value(metadata i32 %20, metadata !3547, metadata !DIExpression()), !dbg !3549
  %21 = icmp eq i32 %20, 0, !dbg !3575
  br i1 %21, label %23, label %22, !dbg !3577

22:                                               ; preds = %19
  tail call void @restore_interrupt_mask(i32 noundef %4) #19, !dbg !3578
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 581, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.hal_uart_deinit, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !3580
  unreachable, !dbg !3580

23:                                               ; preds = %19
  %24 = tail call i32 @vdma_stop(i32 noundef %14) #19, !dbg !3581
  call void @llvm.dbg.value(metadata i32 %24, metadata !3547, metadata !DIExpression()), !dbg !3549
  %25 = icmp eq i32 %24, 0, !dbg !3582
  br i1 %25, label %27, label %26, !dbg !3584

26:                                               ; preds = %23
  tail call void @restore_interrupt_mask(i32 noundef %4) #19, !dbg !3585
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 587, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.hal_uart_deinit, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !3587
  unreachable, !dbg !3587

27:                                               ; preds = %23
  %28 = tail call i32 @vdma_stop(i32 noundef %15) #19, !dbg !3588
  call void @llvm.dbg.value(metadata i32 %28, metadata !3547, metadata !DIExpression()), !dbg !3549
  %29 = icmp eq i32 %28, 0, !dbg !3589
  br i1 %29, label %31, label %30, !dbg !3591

30:                                               ; preds = %27
  tail call void @restore_interrupt_mask(i32 noundef %4) #19, !dbg !3592
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 593, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.hal_uart_deinit, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !3594
  unreachable, !dbg !3594

31:                                               ; preds = %27
  %32 = tail call i32 @vdma_deinit(i32 noundef %14) #19, !dbg !3595
  call void @llvm.dbg.value(metadata i32 %32, metadata !3547, metadata !DIExpression()), !dbg !3549
  %33 = icmp eq i32 %32, 0, !dbg !3596
  br i1 %33, label %35, label %34, !dbg !3598

34:                                               ; preds = %31
  tail call void @restore_interrupt_mask(i32 noundef %4) #19, !dbg !3599
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 599, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.hal_uart_deinit, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !3601
  unreachable, !dbg !3601

35:                                               ; preds = %31
  %36 = tail call i32 @vdma_deinit(i32 noundef %15) #19, !dbg !3602
  call void @llvm.dbg.value(metadata i32 %36, metadata !3547, metadata !DIExpression()), !dbg !3549
  %37 = icmp eq i32 %36, 0, !dbg !3603
  br i1 %37, label %39, label %38, !dbg !3605

38:                                               ; preds = %35
  tail call void @restore_interrupt_mask(i32 noundef %4) #19, !dbg !3606
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 605, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.hal_uart_deinit, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !3608
  unreachable, !dbg !3608

39:                                               ; preds = %35
  %40 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([4 x i32]* @g_uart_port_to_irq_num to [0 x i32]*), i32 0, i32 %0, !dbg !3609
  %41 = load i32, i32* %40, align 4, !dbg !3609
  %42 = tail call i32 @hal_nvic_disable_irq(i32 noundef %41) #19, !dbg !3610
  br label %43, !dbg !3611

43:                                               ; preds = %39, %8
  tail call void @uart_reset_default_value(%struct.UART_REGISTER_T* noundef %10) #19, !dbg !3612
  %44 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([4 x i32]* @g_uart_port_to_pdn to [0 x i32]*), i32 0, i32 %0, !dbg !3613
  %45 = load i32, i32* %44, align 4, !dbg !3613
  %46 = tail call i32 @hal_clock_disable(i32 noundef %45) #19, !dbg !3614
  call void @llvm.dbg.value(metadata i32 %46, metadata !3548, metadata !DIExpression()), !dbg !3549
  %47 = icmp eq i32 %46, 0, !dbg !3615
  br i1 %47, label %49, label %48, !dbg !3617

48:                                               ; preds = %43
  tail call void @restore_interrupt_mask(i32 noundef %4) #19, !dbg !3618
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 614, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.hal_uart_deinit, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !3620
  unreachable, !dbg !3620

49:                                               ; preds = %43
  %50 = getelementptr inbounds [4 x %struct.uart_callback_t], [4 x %struct.uart_callback_t]* @g_uart_callback, i32 0, i32 %0, i32 0, !dbg !3621
  store void (i32, i8*)* null, void (i32, i8*)** %50, align 4, !dbg !3622
  %51 = getelementptr inbounds [4 x %struct.uart_callback_t], [4 x %struct.uart_callback_t]* @g_uart_callback, i32 0, i32 %0, i32 1, !dbg !3623
  store i8* null, i8** %51, align 4, !dbg !3624
  store volatile i32 0, i32* %5, align 4, !dbg !3625
  br label %52, !dbg !3626

52:                                               ; preds = %3, %49
  %53 = phi i32 [ 0, %49 ], [ -2, %3 ]
  tail call void @restore_interrupt_mask(i32 noundef %4) #19, !dbg !3549
  br label %54, !dbg !3627

54:                                               ; preds = %52, %1
  %55 = phi i32 [ -4, %1 ], [ %53, %52 ], !dbg !3549
  ret i32 %55, !dbg !3627
}

; Function Attrs: optsize
declare dso_local i32 @vdma_stop(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare dso_local i32 @vdma_deinit(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare dso_local i32 @hal_clock_disable(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize
define dso_local void @hal_uart_put_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !3628 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3632, metadata !DIExpression()), !dbg !3635
  call void @llvm.dbg.value(metadata i8 %1, metadata !3633, metadata !DIExpression()), !dbg !3635
  %3 = tail call fastcc zeroext i1 @uart_port_is_valid(i32 noundef %0) #18, !dbg !3636
  br i1 %3, label %4, label %11, !dbg !3638

4:                                                ; preds = %2
  %5 = getelementptr inbounds [4 x i32], [4 x i32]* @g_uart_hwstatus, i32 0, i32 %0, !dbg !3639
  %6 = load volatile i32, i32* %5, align 4, !dbg !3639
  %7 = icmp eq i32 %6, 1, !dbg !3641
  br i1 %7, label %8, label %11, !dbg !3642

8:                                                ; preds = %4
  %9 = getelementptr inbounds [0 x %struct.UART_REGISTER_T*], [0 x %struct.UART_REGISTER_T*]* bitcast ([4 x %struct.UART_REGISTER_T*]* @g_uart_regbase to [0 x %struct.UART_REGISTER_T*]*), i32 0, i32 %0, !dbg !3643
  %10 = load %struct.UART_REGISTER_T*, %struct.UART_REGISTER_T** %9, align 4, !dbg !3643
  call void @llvm.dbg.value(metadata %struct.UART_REGISTER_T* %10, metadata !3634, metadata !DIExpression()), !dbg !3635
  tail call void @uart_put_char_block(%struct.UART_REGISTER_T* noundef %10, i8 noundef zeroext %1) #19, !dbg !3644
  br label %11, !dbg !3645

11:                                               ; preds = %4, %2, %8
  ret void, !dbg !3645
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_polling(i32 noundef %0, i8* noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !3646 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3652, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i8* %1, metadata !3653, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i32 %2, metadata !3654, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i32 0, metadata !3655, metadata !DIExpression()), !dbg !3656
  %4 = tail call fastcc zeroext i1 @uart_port_is_valid(i32 noundef %0) #18, !dbg !3657
  %5 = icmp ne i8* %1, null
  %6 = and i1 %5, %4, !dbg !3659
  br i1 %6, label %7, label %20, !dbg !3659

7:                                                ; preds = %3
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* @g_uart_hwstatus, i32 0, i32 %0, !dbg !3660
  %9 = load volatile i32, i32* %8, align 4, !dbg !3660
  %10 = icmp ne i32 %9, 1, !dbg !3662
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !3663
  call void @llvm.dbg.value(metadata i32 0, metadata !3655, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i8* %1, metadata !3653, metadata !DIExpression()), !dbg !3656
  br i1 %12, label %20, label %13, !dbg !3663

13:                                               ; preds = %7, %13
  %14 = phi i32 [ %18, %13 ], [ 0, %7 ]
  %15 = phi i8* [ %17, %13 ], [ %1, %7 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !3655, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i8* %15, metadata !3653, metadata !DIExpression()), !dbg !3656
  %16 = load i8, i8* %15, align 1, !dbg !3664
  tail call void @hal_uart_put_char(i32 noundef %0, i8 noundef zeroext %16) #18, !dbg !3668
  %17 = getelementptr inbounds i8, i8* %15, i32 1, !dbg !3669
  call void @llvm.dbg.value(metadata i8* %17, metadata !3653, metadata !DIExpression()), !dbg !3656
  %18 = add nuw i32 %14, 1, !dbg !3670
  call void @llvm.dbg.value(metadata i32 %18, metadata !3655, metadata !DIExpression()), !dbg !3656
  %19 = icmp eq i32 %18, %2, !dbg !3671
  br i1 %19, label %20, label %13, !dbg !3672, !llvm.loop !3673

20:                                               ; preds = %13, %7, %3
  %21 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %2, %13 ], !dbg !3656
  ret i32 %21, !dbg !3675
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_dma(i32 noundef %0, i8* noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !3676 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3678, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata i8* %1, metadata !3679, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata i32 %2, metadata !3680, metadata !DIExpression()), !dbg !3686
  %5 = bitcast i32* %4 to i8*, !dbg !3687
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #20, !dbg !3687
  %6 = tail call fastcc zeroext i1 @uart_port_is_valid(i32 noundef %0) #18, !dbg !3688
  %7 = xor i1 %6, true, !dbg !3690
  %8 = icmp eq i8* %1, null
  %9 = or i1 %8, %7, !dbg !3690
  %10 = icmp eq i32 %2, 0
  %11 = or i1 %10, %9, !dbg !3690
  br i1 %11, label %45, label %12, !dbg !3690

12:                                               ; preds = %3
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* @g_uart_hwstatus, i32 0, i32 %0, !dbg !3691
  %14 = load volatile i32, i32* %13, align 4, !dbg !3691
  %15 = icmp eq i32 %14, 2, !dbg !3693
  br i1 %15, label %16, label %45, !dbg !3694

16:                                               ; preds = %12
  %17 = tail call i32 @uart_port_to_dma_channel(i32 noundef %0, i32 noundef 0) #19, !dbg !3695
  call void @llvm.dbg.value(metadata i32 %17, metadata !3681, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata i32* %4, metadata !3684, metadata !DIExpression(DW_OP_deref)), !dbg !3686
  %18 = call i32 @vdma_get_available_send_space(i32 noundef %17, i32* noundef nonnull %4) #19, !dbg !3696
  call void @llvm.dbg.value(metadata i32 %18, metadata !3685, metadata !DIExpression()), !dbg !3686
  %19 = icmp eq i32 %18, 0, !dbg !3697
  br i1 %19, label %21, label %20, !dbg !3699

20:                                               ; preds = %16
  call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 708, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.hal_uart_send_dma, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !3700
  unreachable, !dbg !3700

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4, !dbg !3702
  call void @llvm.dbg.value(metadata i32 %22, metadata !3684, metadata !DIExpression()), !dbg !3686
  %23 = icmp ult i32 %22, %2, !dbg !3704
  %24 = select i1 %23, i32 %22, i32 %2
  call void @llvm.dbg.value(metadata i32 %24, metadata !3683, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata i32 0, metadata !3682, metadata !DIExpression()), !dbg !3686
  %25 = icmp eq i32 %24, 0, !dbg !3705
  br i1 %25, label %38, label %28, !dbg !3708

26:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i32 %34, metadata !3682, metadata !DIExpression()), !dbg !3686
  %27 = icmp eq i32 %34, %24, !dbg !3705
  br i1 %27, label %36, label %28, !dbg !3708, !llvm.loop !3709

28:                                               ; preds = %21, %26
  %29 = phi i32 [ %34, %26 ], [ 0, %21 ]
  call void @llvm.dbg.value(metadata i32 %29, metadata !3682, metadata !DIExpression()), !dbg !3686
  %30 = getelementptr inbounds i8, i8* %1, i32 %29, !dbg !3711
  %31 = load i8, i8* %30, align 1, !dbg !3711
  %32 = call i32 @vdma_push_data(i32 noundef %17, i8 noundef zeroext %31) #19, !dbg !3713
  call void @llvm.dbg.value(metadata i32 %32, metadata !3685, metadata !DIExpression()), !dbg !3686
  %33 = icmp eq i32 %32, 0, !dbg !3714
  %34 = add nuw i32 %29, 1, !dbg !3716
  call void @llvm.dbg.value(metadata i32 %34, metadata !3682, metadata !DIExpression()), !dbg !3686
  br i1 %33, label %26, label %35, !dbg !3717

35:                                               ; preds = %28
  call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 720, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.hal_uart_send_dma, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !3718
  unreachable, !dbg !3718

36:                                               ; preds = %26
  %37 = load i32, i32* %4, align 4, !dbg !3720
  br label %38, !dbg !3720

38:                                               ; preds = %36, %21
  %39 = phi i32 [ %37, %36 ], [ %22, %21 ], !dbg !3720
  call void @llvm.dbg.value(metadata i32 %39, metadata !3684, metadata !DIExpression()), !dbg !3686
  %40 = icmp eq i32 %24, %39, !dbg !3722
  br i1 %40, label %41, label %45, !dbg !3723

41:                                               ; preds = %38
  %42 = call i32 @vdma_enable_interrupt(i32 noundef %17) #19, !dbg !3724
  call void @llvm.dbg.value(metadata i32 %42, metadata !3685, metadata !DIExpression()), !dbg !3686
  %43 = icmp eq i32 %42, 0, !dbg !3726
  br i1 %43, label %45, label %44, !dbg !3728

44:                                               ; preds = %41
  call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 731, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.hal_uart_send_dma, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !3729
  unreachable, !dbg !3729

45:                                               ; preds = %38, %41, %12, %3
  %46 = phi i32 [ 0, %3 ], [ 0, %12 ], [ %24, %41 ], [ %24, %38 ], !dbg !3686
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #20, !dbg !3731
  ret i32 %46, !dbg !3731
}

; Function Attrs: optsize
declare dso_local i32 @vdma_push_data(i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @hal_uart_get_char(i32 noundef %0) local_unnamed_addr #0 !dbg !3732 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3736, metadata !DIExpression()), !dbg !3739
  %2 = tail call fastcc zeroext i1 @uart_port_is_valid(i32 noundef %0) #18, !dbg !3740
  br i1 %2, label %3, label %11, !dbg !3742

3:                                                ; preds = %1
  %4 = getelementptr inbounds [4 x i32], [4 x i32]* @g_uart_hwstatus, i32 0, i32 %0, !dbg !3743
  %5 = load volatile i32, i32* %4, align 4, !dbg !3743
  %6 = icmp eq i32 %5, 1, !dbg !3745
  br i1 %6, label %7, label %11, !dbg !3746

7:                                                ; preds = %3
  %8 = getelementptr inbounds [0 x %struct.UART_REGISTER_T*], [0 x %struct.UART_REGISTER_T*]* bitcast ([4 x %struct.UART_REGISTER_T*]* @g_uart_regbase to [0 x %struct.UART_REGISTER_T*]*), i32 0, i32 %0, !dbg !3747
  %9 = load %struct.UART_REGISTER_T*, %struct.UART_REGISTER_T** %8, align 4, !dbg !3747
  call void @llvm.dbg.value(metadata %struct.UART_REGISTER_T* %9, metadata !3738, metadata !DIExpression()), !dbg !3739
  %10 = tail call zeroext i8 @uart_get_char_block(%struct.UART_REGISTER_T* noundef %9) #19, !dbg !3748
  call void @llvm.dbg.value(metadata i8 %10, metadata !3737, metadata !DIExpression()), !dbg !3739
  br label %11, !dbg !3749

11:                                               ; preds = %3, %1, %7
  %12 = phi i8 [ %10, %7 ], [ 0, %1 ], [ 0, %3 ], !dbg !3739
  ret i8 %12, !dbg !3750
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_char_unblocking(i32 noundef %0) local_unnamed_addr #0 !dbg !3751 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3755, metadata !DIExpression()), !dbg !3758
  %2 = tail call fastcc zeroext i1 @uart_port_is_valid(i32 noundef %0) #18, !dbg !3759
  br i1 %2, label %3, label %11, !dbg !3761

3:                                                ; preds = %1
  %4 = getelementptr inbounds [4 x i32], [4 x i32]* @g_uart_hwstatus, i32 0, i32 %0, !dbg !3762
  %5 = load volatile i32, i32* %4, align 4, !dbg !3762
  %6 = icmp eq i32 %5, 1, !dbg !3764
  br i1 %6, label %7, label %11, !dbg !3765

7:                                                ; preds = %3
  %8 = getelementptr inbounds [0 x %struct.UART_REGISTER_T*], [0 x %struct.UART_REGISTER_T*]* bitcast ([4 x %struct.UART_REGISTER_T*]* @g_uart_regbase to [0 x %struct.UART_REGISTER_T*]*), i32 0, i32 %0, !dbg !3766
  %9 = load %struct.UART_REGISTER_T*, %struct.UART_REGISTER_T** %8, align 4, !dbg !3766
  call void @llvm.dbg.value(metadata %struct.UART_REGISTER_T* %9, metadata !3757, metadata !DIExpression()), !dbg !3758
  %10 = tail call i32 @uart_get_char_unblocking(%struct.UART_REGISTER_T* noundef %9) #19, !dbg !3767
  call void @llvm.dbg.value(metadata i32 %10, metadata !3756, metadata !DIExpression()), !dbg !3758
  br label %11, !dbg !3768

11:                                               ; preds = %3, %1, %7
  %12 = phi i32 [ %10, %7 ], [ 0, %1 ], [ 0, %3 ], !dbg !3758
  ret i32 %12, !dbg !3769
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_polling(i32 noundef %0, i8* noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !3770 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3774, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i8* %1, metadata !3775, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i32 %2, metadata !3776, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i8* %1, metadata !3778, metadata !DIExpression()), !dbg !3779
  %4 = tail call fastcc zeroext i1 @uart_port_is_valid(i32 noundef %0) #18, !dbg !3780
  %5 = icmp ne i8* %1, null
  %6 = and i1 %5, %4, !dbg !3782
  br i1 %6, label %7, label %19, !dbg !3782

7:                                                ; preds = %3
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* @g_uart_hwstatus, i32 0, i32 %0, !dbg !3783
  %9 = load volatile i32, i32* %8, align 4, !dbg !3783
  %10 = icmp ne i32 %9, 1, !dbg !3785
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !3786
  call void @llvm.dbg.value(metadata i32 0, metadata !3777, metadata !DIExpression()), !dbg !3779
  br i1 %12, label %19, label %13, !dbg !3786

13:                                               ; preds = %7, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %7 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !3777, metadata !DIExpression()), !dbg !3779
  %15 = tail call zeroext i8 @hal_uart_get_char(i32 noundef %0) #18, !dbg !3787
  %16 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !3791
  store i8 %15, i8* %16, align 1, !dbg !3792
  %17 = add nuw i32 %14, 1, !dbg !3793
  call void @llvm.dbg.value(metadata i32 %17, metadata !3777, metadata !DIExpression()), !dbg !3779
  %18 = icmp eq i32 %17, %2, !dbg !3794
  br i1 %18, label %19, label %13, !dbg !3795, !llvm.loop !3796

19:                                               ; preds = %13, %7, %3
  %20 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %2, %13 ], !dbg !3779
  ret i32 %20, !dbg !3798
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !3799 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3801, metadata !DIExpression()), !dbg !3809
  call void @llvm.dbg.value(metadata i8* %1, metadata !3802, metadata !DIExpression()), !dbg !3809
  call void @llvm.dbg.value(metadata i32 %2, metadata !3803, metadata !DIExpression()), !dbg !3809
  %5 = bitcast i32* %4 to i8*, !dbg !3810
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #20, !dbg !3810
  %6 = tail call fastcc zeroext i1 @uart_port_is_valid(i32 noundef %0) #18, !dbg !3811
  %7 = xor i1 %6, true, !dbg !3813
  %8 = icmp eq i8* %1, null
  %9 = or i1 %8, %7, !dbg !3813
  %10 = icmp eq i32 %2, 0
  %11 = or i1 %10, %9, !dbg !3813
  br i1 %11, label %44, label %12, !dbg !3813

12:                                               ; preds = %3
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* @g_uart_hwstatus, i32 0, i32 %0, !dbg !3814
  %14 = load volatile i32, i32* %13, align 4, !dbg !3814
  %15 = icmp eq i32 %14, 2, !dbg !3816
  br i1 %15, label %16, label %44, !dbg !3817

16:                                               ; preds = %12
  %17 = tail call i32 @uart_port_to_dma_channel(i32 noundef %0, i32 noundef 1) #19, !dbg !3818
  call void @llvm.dbg.value(metadata i32 %17, metadata !3804, metadata !DIExpression()), !dbg !3809
  call void @llvm.dbg.value(metadata i32* %4, metadata !3806, metadata !DIExpression(DW_OP_deref)), !dbg !3809
  %18 = call i32 @vdma_get_available_receive_bytes(i32 noundef %17, i32* noundef nonnull %4) #19, !dbg !3819
  call void @llvm.dbg.value(metadata i32 %18, metadata !3808, metadata !DIExpression()), !dbg !3809
  %19 = icmp eq i32 %18, 0, !dbg !3820
  br i1 %19, label %21, label %20, !dbg !3822

20:                                               ; preds = %16
  call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 821, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.hal_uart_receive_dma, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !3823
  unreachable, !dbg !3823

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4, !dbg !3825
  call void @llvm.dbg.value(metadata i32 %22, metadata !3806, metadata !DIExpression()), !dbg !3809
  %23 = icmp ult i32 %22, %2, !dbg !3827
  %24 = select i1 %23, i32 %22, i32 %2
  call void @llvm.dbg.value(metadata i32 %24, metadata !3805, metadata !DIExpression()), !dbg !3809
  call void @llvm.dbg.value(metadata i32 0, metadata !3807, metadata !DIExpression()), !dbg !3809
  %25 = icmp eq i32 %24, 0, !dbg !3828
  br i1 %25, label %37, label %28, !dbg !3831

26:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i32 %33, metadata !3807, metadata !DIExpression()), !dbg !3809
  %27 = icmp eq i32 %33, %24, !dbg !3828
  br i1 %27, label %35, label %28, !dbg !3831, !llvm.loop !3832

28:                                               ; preds = %21, %26
  %29 = phi i32 [ %33, %26 ], [ 0, %21 ]
  call void @llvm.dbg.value(metadata i32 %29, metadata !3807, metadata !DIExpression()), !dbg !3809
  %30 = getelementptr inbounds i8, i8* %1, i32 %29, !dbg !3834
  %31 = call i32 @vdma_pop_data(i32 noundef %17, i8* noundef %30) #19, !dbg !3836
  call void @llvm.dbg.value(metadata i32 %31, metadata !3808, metadata !DIExpression()), !dbg !3809
  %32 = icmp eq i32 %31, 0, !dbg !3837
  %33 = add nuw i32 %29, 1, !dbg !3839
  call void @llvm.dbg.value(metadata i32 %33, metadata !3807, metadata !DIExpression()), !dbg !3809
  br i1 %32, label %26, label %34, !dbg !3840

34:                                               ; preds = %28
  call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 833, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.hal_uart_receive_dma, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !3841
  unreachable, !dbg !3841

35:                                               ; preds = %26
  %36 = load i32, i32* %4, align 4, !dbg !3843
  br label %37, !dbg !3843

37:                                               ; preds = %35, %21
  %38 = phi i32 [ %36, %35 ], [ %22, %21 ], !dbg !3843
  call void @llvm.dbg.value(metadata i32 %38, metadata !3806, metadata !DIExpression()), !dbg !3809
  %39 = icmp eq i32 %24, %38, !dbg !3845
  br i1 %39, label %40, label %44, !dbg !3846

40:                                               ; preds = %37
  %41 = call i32 @vdma_enable_interrupt(i32 noundef %17) #19, !dbg !3847
  call void @llvm.dbg.value(metadata i32 %41, metadata !3808, metadata !DIExpression()), !dbg !3809
  %42 = icmp eq i32 %41, 0, !dbg !3849
  br i1 %42, label %44, label %43, !dbg !3851

43:                                               ; preds = %40
  call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 844, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.hal_uart_receive_dma, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !3852
  unreachable, !dbg !3852

44:                                               ; preds = %37, %40, %12, %3
  %45 = phi i32 [ 0, %3 ], [ 0, %12 ], [ %24, %40 ], [ %24, %37 ], !dbg !3809
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #20, !dbg !3854
  ret i32 %45, !dbg !3854
}

; Function Attrs: optsize
declare dso_local i32 @vdma_pop_data(i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_register_callback(i32 noundef %0, void (i32, i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #0 !dbg !3855 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3859, metadata !DIExpression()), !dbg !3867
  call void @llvm.dbg.value(metadata void (i32, i8*)* %1, metadata !3860, metadata !DIExpression()), !dbg !3867
  call void @llvm.dbg.value(metadata i8* %2, metadata !3861, metadata !DIExpression()), !dbg !3867
  %4 = tail call fastcc zeroext i1 @uart_port_is_valid(i32 noundef %0) #18, !dbg !3868
  %5 = icmp ne void (i32, i8*)* %1, null
  %6 = and i1 %5, %4, !dbg !3870
  br i1 %6, label %7, label %39, !dbg !3870

7:                                                ; preds = %3
  %8 = tail call i32 @save_and_set_interrupt_mask() #19, !dbg !3871
  call void @llvm.dbg.value(metadata i32 %8, metadata !3864, metadata !DIExpression()), !dbg !3867
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* @g_uart_hwstatus, i32 0, i32 %0, !dbg !3872
  %10 = load volatile i32, i32* %9, align 4, !dbg !3872
  %11 = icmp eq i32 %10, 1, !dbg !3874
  br i1 %11, label %12, label %37, !dbg !3875

12:                                               ; preds = %7
  %13 = tail call i32 @uart_port_to_dma_channel(i32 noundef %0, i32 noundef 0) #19, !dbg !3876
  call void @llvm.dbg.value(metadata i32 %13, metadata !3862, metadata !DIExpression()), !dbg !3867
  %14 = tail call i32 @uart_port_to_dma_channel(i32 noundef %0, i32 noundef 1) #19, !dbg !3877
  call void @llvm.dbg.value(metadata i32 %14, metadata !3863, metadata !DIExpression()), !dbg !3867
  %15 = getelementptr inbounds [4 x %struct.uart_callback_t], [4 x %struct.uart_callback_t]* @g_uart_callback, i32 0, i32 %0, i32 0, !dbg !3878
  store void (i32, i8*)* %1, void (i32, i8*)** %15, align 4, !dbg !3879
  %16 = getelementptr inbounds [4 x %struct.uart_callback_t], [4 x %struct.uart_callback_t]* @g_uart_callback, i32 0, i32 %0, i32 1, !dbg !3880
  store i8* %2, i8** %16, align 4, !dbg !3881
  %17 = shl i32 %0, 1, !dbg !3882
  %18 = getelementptr inbounds [8 x %struct.uart_dma_callback_data_t], [8 x %struct.uart_dma_callback_data_t]* @g_uart_dma_callback_data, i32 0, i32 %17, !dbg !3883
  tail call void @uart_dma_channel_to_callback_data(i32 noundef %13, %struct.uart_dma_callback_data_t* noundef nonnull %18) #19, !dbg !3884
  %19 = getelementptr %struct.uart_dma_callback_data_t, %struct.uart_dma_callback_data_t* %18, i32 0, i32 0, !dbg !3885
  %20 = tail call i32 @vdma_register_callback(i32 noundef %13, void (i32, i8*)* noundef nonnull @uart_dma_callback_handler, i8* noundef nonnull %19) #19, !dbg !3886
  call void @llvm.dbg.value(metadata i32 %20, metadata !3865, metadata !DIExpression()), !dbg !3867
  %21 = icmp eq i32 %20, 0, !dbg !3887
  br i1 %21, label %23, label %22, !dbg !3889

22:                                               ; preds = %12
  tail call void @restore_interrupt_mask(i32 noundef %8) #19, !dbg !3890
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 921, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.hal_uart_register_callback, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !3892
  unreachable, !dbg !3892

23:                                               ; preds = %12
  %24 = or i32 %17, 1, !dbg !3893
  %25 = getelementptr inbounds [8 x %struct.uart_dma_callback_data_t], [8 x %struct.uart_dma_callback_data_t]* @g_uart_dma_callback_data, i32 0, i32 %24, !dbg !3894
  tail call void @uart_dma_channel_to_callback_data(i32 noundef %14, %struct.uart_dma_callback_data_t* noundef nonnull %25) #19, !dbg !3895
  %26 = getelementptr %struct.uart_dma_callback_data_t, %struct.uart_dma_callback_data_t* %25, i32 0, i32 0, !dbg !3896
  %27 = tail call i32 @vdma_register_callback(i32 noundef %14, void (i32, i8*)* noundef nonnull @uart_dma_callback_handler, i8* noundef nonnull %26) #19, !dbg !3897
  call void @llvm.dbg.value(metadata i32 %27, metadata !3865, metadata !DIExpression()), !dbg !3867
  %28 = icmp eq i32 %27, 0, !dbg !3898
  br i1 %28, label %30, label %29, !dbg !3900

29:                                               ; preds = %23
  tail call void @restore_interrupt_mask(i32 noundef %8) #19, !dbg !3901
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 928, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.hal_uart_register_callback, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !3903
  unreachable, !dbg !3903

30:                                               ; preds = %23
  %31 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([4 x i32]* @g_uart_port_to_irq_num to [0 x i32]*), i32 0, i32 %0, !dbg !3904
  %32 = load i32, i32* %31, align 4, !dbg !3904
  %33 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef %32, void (i32)* noundef nonnull @uart_interrupt_handler) #19, !dbg !3905
  call void @llvm.dbg.value(metadata i32 %33, metadata !3866, metadata !DIExpression()), !dbg !3867
  %34 = icmp eq i32 %33, 0, !dbg !3906
  br i1 %34, label %36, label %35, !dbg !3908

35:                                               ; preds = %30
  tail call void @restore_interrupt_mask(i32 noundef %8) #19, !dbg !3909
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 934, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.hal_uart_register_callback, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !3911
  unreachable, !dbg !3911

36:                                               ; preds = %30
  tail call fastcc void @uart_start_dma_transmission(i32 noundef %0) #18, !dbg !3912
  store volatile i32 2, i32* %9, align 4, !dbg !3913
  br label %37, !dbg !3914

37:                                               ; preds = %7, %36
  %38 = phi i32 [ 0, %36 ], [ -2, %7 ]
  tail call void @restore_interrupt_mask(i32 noundef %8) #19, !dbg !3867
  br label %39, !dbg !3915

39:                                               ; preds = %37, %3
  %40 = phi i32 [ -4, %3 ], [ %38, %37 ], !dbg !3867
  ret i32 %40, !dbg !3915
}

; Function Attrs: noinline nounwind optsize
define internal void @uart_dma_callback_handler(i32 noundef %0, i8* nocapture noundef readonly %1) #0 !dbg !3916 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3921, metadata !DIExpression()), !dbg !3924
  call void @llvm.dbg.value(metadata i8* %1, metadata !3922, metadata !DIExpression()), !dbg !3924
  call void @llvm.dbg.value(metadata i8* %1, metadata !3923, metadata !DIExpression()), !dbg !3924
  %3 = load i8, i8* %1, align 4, !dbg !3925, !range !1698
  %4 = icmp eq i8 %3, 0, !dbg !3925
  %5 = getelementptr inbounds i8, i8* %1, i32 4, !dbg !3927
  %6 = bitcast i8* %5 to i32*, !dbg !3927
  %7 = load i32, i32* %6, align 4, !dbg !3927
  br i1 %4, label %9, label %8, !dbg !3928

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %1, metadata !3923, metadata !DIExpression()), !dbg !3924
  tail call void @uart_receive_handler(i32 noundef %7, i1 noundef zeroext false) #18, !dbg !3929
  br label %10, !dbg !3931

9:                                                ; preds = %2
  tail call void @uart_send_handler(i32 noundef %7, i1 noundef zeroext false) #18, !dbg !3932
  br label %10

10:                                               ; preds = %9, %8
  ret void, !dbg !3934
}

; Function Attrs: optsize
declare dso_local i32 @vdma_register_callback(i32 noundef, void (i32, i8*)* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize
define internal fastcc void @uart_start_dma_transmission(i32 noundef %0) unnamed_addr #0 !dbg !3935 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3937, metadata !DIExpression()), !dbg !3942
  %2 = getelementptr inbounds [0 x %struct.UART_REGISTER_T*], [0 x %struct.UART_REGISTER_T*]* bitcast ([4 x %struct.UART_REGISTER_T*]* @g_uart_regbase to [0 x %struct.UART_REGISTER_T*]*), i32 0, i32 %0, !dbg !3943
  %3 = load %struct.UART_REGISTER_T*, %struct.UART_REGISTER_T** %2, align 4, !dbg !3943
  call void @llvm.dbg.value(metadata %struct.UART_REGISTER_T* %3, metadata !3938, metadata !DIExpression()), !dbg !3942
  %4 = tail call i32 @uart_port_to_dma_channel(i32 noundef %0, i32 noundef 0) #19, !dbg !3944
  call void @llvm.dbg.value(metadata i32 %4, metadata !3939, metadata !DIExpression()), !dbg !3942
  %5 = tail call i32 @uart_port_to_dma_channel(i32 noundef %0, i32 noundef 1) #19, !dbg !3945
  call void @llvm.dbg.value(metadata i32 %5, metadata !3940, metadata !DIExpression()), !dbg !3942
  tail call void @uart_unmask_receive_interrupt(%struct.UART_REGISTER_T* noundef %3) #19, !dbg !3946
  %6 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([4 x i32]* @g_uart_port_to_irq_num to [0 x i32]*), i32 0, i32 %0, !dbg !3947
  %7 = load i32, i32* %6, align 4, !dbg !3947
  %8 = tail call i32 @hal_nvic_enable_irq(i32 noundef %7) #19, !dbg !3948
  %9 = tail call i32 @vdma_enable_interrupt(i32 noundef %4) #19, !dbg !3949
  call void @llvm.dbg.value(metadata i32 %9, metadata !3941, metadata !DIExpression()), !dbg !3942
  %10 = icmp eq i32 %9, 0, !dbg !3950
  br i1 %10, label %12, label %11, !dbg !3952

11:                                               ; preds = %1
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 870, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.uart_start_dma_transmission, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !3953
  unreachable, !dbg !3953

12:                                               ; preds = %1
  %13 = tail call i32 @vdma_enable_interrupt(i32 noundef %5) #19, !dbg !3955
  call void @llvm.dbg.value(metadata i32 %13, metadata !3941, metadata !DIExpression()), !dbg !3942
  %14 = icmp eq i32 %13, 0, !dbg !3956
  br i1 %14, label %16, label %15, !dbg !3958

15:                                               ; preds = %12
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 875, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.uart_start_dma_transmission, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !3959
  unreachable, !dbg !3959

16:                                               ; preds = %12
  %17 = tail call i32 @vdma_start(i32 noundef %4) #19, !dbg !3961
  call void @llvm.dbg.value(metadata i32 %17, metadata !3941, metadata !DIExpression()), !dbg !3942
  %18 = icmp eq i32 %17, 0, !dbg !3962
  br i1 %18, label %20, label %19, !dbg !3964

19:                                               ; preds = %16
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 880, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.uart_start_dma_transmission, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !3965
  unreachable, !dbg !3965

20:                                               ; preds = %16
  %21 = tail call i32 @vdma_start(i32 noundef %5) #19, !dbg !3967
  call void @llvm.dbg.value(metadata i32 %21, metadata !3941, metadata !DIExpression()), !dbg !3942
  %22 = icmp eq i32 %21, 0, !dbg !3968
  br i1 %22, label %24, label %23, !dbg !3970

23:                                               ; preds = %20
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 885, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.uart_start_dma_transmission, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !3971
  unreachable, !dbg !3971

24:                                               ; preds = %20
  tail call void @uart_enable_dma(%struct.UART_REGISTER_T* noundef %3) #19, !dbg !3973
  ret void, !dbg !3974
}

; Function Attrs: optsize
declare dso_local i32 @vdma_start(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_send_space(i32 noundef %0) local_unnamed_addr #0 !dbg !3975 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3977, metadata !DIExpression()), !dbg !3981
  %3 = bitcast i32* %2 to i8*, !dbg !3982
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #20, !dbg !3982
  %4 = tail call fastcc zeroext i1 @uart_port_is_valid(i32 noundef %0) #18, !dbg !3983
  br i1 %4, label %5, label %16, !dbg !3985

5:                                                ; preds = %1
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* @g_uart_hwstatus, i32 0, i32 %0, !dbg !3986
  %7 = load volatile i32, i32* %6, align 4, !dbg !3986
  %8 = icmp eq i32 %7, 2, !dbg !3988
  br i1 %8, label %9, label %16, !dbg !3989

9:                                                ; preds = %5
  %10 = tail call i32 @uart_port_to_dma_channel(i32 noundef %0, i32 noundef 0) #19, !dbg !3990
  call void @llvm.dbg.value(metadata i32 %10, metadata !3978, metadata !DIExpression()), !dbg !3981
  call void @llvm.dbg.value(metadata i32* %2, metadata !3979, metadata !DIExpression(DW_OP_deref)), !dbg !3981
  %11 = call i32 @vdma_get_available_send_space(i32 noundef %10, i32* noundef nonnull %2) #19, !dbg !3991
  call void @llvm.dbg.value(metadata i32 %11, metadata !3980, metadata !DIExpression()), !dbg !3981
  %12 = icmp eq i32 %11, 0, !dbg !3992
  br i1 %12, label %14, label %13, !dbg !3994

13:                                               ; preds = %9
  call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 964, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.hal_uart_get_available_send_space, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !3995
  unreachable, !dbg !3995

14:                                               ; preds = %9
  %15 = load i32, i32* %2, align 4, !dbg !3997
  call void @llvm.dbg.value(metadata i32 %15, metadata !3979, metadata !DIExpression()), !dbg !3981
  br label %16, !dbg !3998

16:                                               ; preds = %5, %1, %14
  %17 = phi i32 [ %15, %14 ], [ 0, %1 ], [ 0, %5 ], !dbg !3981
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #20, !dbg !3999
  ret i32 %17, !dbg !3999
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_receive_bytes(i32 noundef %0) local_unnamed_addr #0 !dbg !4000 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4002, metadata !DIExpression()), !dbg !4006
  %3 = bitcast i32* %2 to i8*, !dbg !4007
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #20, !dbg !4007
  %4 = tail call fastcc zeroext i1 @uart_port_is_valid(i32 noundef %0) #18, !dbg !4008
  br i1 %4, label %5, label %16, !dbg !4010

5:                                                ; preds = %1
  %6 = getelementptr inbounds [4 x i32], [4 x i32]* @g_uart_hwstatus, i32 0, i32 %0, !dbg !4011
  %7 = load volatile i32, i32* %6, align 4, !dbg !4011
  %8 = icmp eq i32 %7, 2, !dbg !4013
  br i1 %8, label %9, label %16, !dbg !4014

9:                                                ; preds = %5
  %10 = tail call i32 @uart_port_to_dma_channel(i32 noundef %0, i32 noundef 1) #19, !dbg !4015
  call void @llvm.dbg.value(metadata i32 %10, metadata !4003, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i32* %2, metadata !4004, metadata !DIExpression(DW_OP_deref)), !dbg !4006
  %11 = call i32 @vdma_get_available_receive_bytes(i32 noundef %10, i32* noundef nonnull %2) #19, !dbg !4016
  call void @llvm.dbg.value(metadata i32 %11, metadata !4005, metadata !DIExpression()), !dbg !4006
  %12 = icmp eq i32 %11, 0, !dbg !4017
  br i1 %12, label %14, label %13, !dbg !4019

13:                                               ; preds = %9
  call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 988, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @__func__.hal_uart_get_available_receive_bytes, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !4020
  unreachable, !dbg !4020

14:                                               ; preds = %9
  %15 = load i32, i32* %2, align 4, !dbg !4022
  call void @llvm.dbg.value(metadata i32 %15, metadata !4004, metadata !DIExpression()), !dbg !4006
  br label %16, !dbg !4023

16:                                               ; preds = %5, %1, %14
  %17 = phi i32 [ %15, %14 ], [ 0, %1 ], [ 0, %5 ], !dbg !4006
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #20, !dbg !4024
  ret i32 %17, !dbg !4024
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !4025 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4027, metadata !DIExpression()), !dbg !4029
  %2 = tail call fastcc zeroext i1 @uart_port_is_valid(i32 noundef %0) #18, !dbg !4030
  br i1 %2, label %3, label %10, !dbg !4032

3:                                                ; preds = %1
  %4 = getelementptr inbounds [4 x i32], [4 x i32]* @g_uart_hwstatus, i32 0, i32 %0, !dbg !4033
  %5 = load volatile i32, i32* %4, align 4, !dbg !4033
  %6 = icmp eq i32 %5, 0, !dbg !4035
  br i1 %6, label %10, label %7, !dbg !4036

7:                                                ; preds = %3
  %8 = getelementptr inbounds [0 x %struct.UART_REGISTER_T*], [0 x %struct.UART_REGISTER_T*]* bitcast ([4 x %struct.UART_REGISTER_T*]* @g_uart_regbase to [0 x %struct.UART_REGISTER_T*]*), i32 0, i32 %0, !dbg !4037
  %9 = load %struct.UART_REGISTER_T*, %struct.UART_REGISTER_T** %8, align 4, !dbg !4037
  call void @llvm.dbg.value(metadata %struct.UART_REGISTER_T* %9, metadata !4028, metadata !DIExpression()), !dbg !4029
  tail call void @uart_set_hardware_flowcontrol(%struct.UART_REGISTER_T* noundef %9) #19, !dbg !4038
  br label %10, !dbg !4039

10:                                               ; preds = %3, %1, %7
  %11 = phi i32 [ 0, %7 ], [ -4, %1 ], [ -2, %3 ], !dbg !4029
  ret i32 %11, !dbg !4040
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 !dbg !4041 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4045, metadata !DIExpression()), !dbg !4050
  call void @llvm.dbg.value(metadata i8 %1, metadata !4046, metadata !DIExpression()), !dbg !4050
  call void @llvm.dbg.value(metadata i8 %2, metadata !4047, metadata !DIExpression()), !dbg !4050
  call void @llvm.dbg.value(metadata i8 %3, metadata !4048, metadata !DIExpression()), !dbg !4050
  %5 = tail call fastcc zeroext i1 @uart_port_is_valid(i32 noundef %0) #18, !dbg !4051
  br i1 %5, label %6, label %13, !dbg !4053

6:                                                ; preds = %4
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* @g_uart_hwstatus, i32 0, i32 %0, !dbg !4054
  %8 = load volatile i32, i32* %7, align 4, !dbg !4054
  %9 = icmp eq i32 %8, 0, !dbg !4056
  br i1 %9, label %13, label %10, !dbg !4057

10:                                               ; preds = %6
  %11 = getelementptr inbounds [0 x %struct.UART_REGISTER_T*], [0 x %struct.UART_REGISTER_T*]* bitcast ([4 x %struct.UART_REGISTER_T*]* @g_uart_regbase to [0 x %struct.UART_REGISTER_T*]*), i32 0, i32 %0, !dbg !4058
  %12 = load %struct.UART_REGISTER_T*, %struct.UART_REGISTER_T** %11, align 4, !dbg !4058
  call void @llvm.dbg.value(metadata %struct.UART_REGISTER_T* %12, metadata !4049, metadata !DIExpression()), !dbg !4050
  tail call void @uart_set_software_flowcontrol(%struct.UART_REGISTER_T* noundef %12, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #19, !dbg !4059
  br label %13, !dbg !4060

13:                                               ; preds = %6, %4, %10
  %14 = phi i32 [ 0, %10 ], [ -4, %4 ], [ -2, %6 ], !dbg !4050
  ret i32 %14, !dbg !4061
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !4062 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4064, metadata !DIExpression()), !dbg !4066
  %2 = tail call fastcc zeroext i1 @uart_port_is_valid(i32 noundef %0) #18, !dbg !4067
  br i1 %2, label %3, label %10, !dbg !4069

3:                                                ; preds = %1
  %4 = getelementptr inbounds [4 x i32], [4 x i32]* @g_uart_hwstatus, i32 0, i32 %0, !dbg !4070
  %5 = load volatile i32, i32* %4, align 4, !dbg !4070
  %6 = icmp eq i32 %5, 0, !dbg !4072
  br i1 %6, label %10, label %7, !dbg !4073

7:                                                ; preds = %3
  %8 = getelementptr inbounds [0 x %struct.UART_REGISTER_T*], [0 x %struct.UART_REGISTER_T*]* bitcast ([4 x %struct.UART_REGISTER_T*]* @g_uart_regbase to [0 x %struct.UART_REGISTER_T*]*), i32 0, i32 %0, !dbg !4074
  %9 = load %struct.UART_REGISTER_T*, %struct.UART_REGISTER_T** %8, align 4, !dbg !4074
  call void @llvm.dbg.value(metadata %struct.UART_REGISTER_T* %9, metadata !4065, metadata !DIExpression()), !dbg !4066
  tail call void @uart_disable_flowcontrol(%struct.UART_REGISTER_T* noundef %9) #19, !dbg !4075
  br label %10, !dbg !4076

10:                                               ; preds = %3, %1, %7
  %11 = phi i32 [ 0, %7 ], [ -4, %1 ], [ -2, %3 ], !dbg !4066
  ret i32 %11, !dbg !4077
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma(i32 noundef %0, %struct.hal_uart_dma_config_t* nocapture noundef readonly %1) local_unnamed_addr #0 !dbg !4078 {
  %3 = alloca %struct.vdma_config_t, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4084, metadata !DIExpression()), !dbg !4096
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %1, metadata !4085, metadata !DIExpression()), !dbg !4096
  %4 = bitcast %struct.vdma_config_t* %3 to i8*, !dbg !4097
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #20, !dbg !4097
  call void @llvm.dbg.declare(metadata %struct.vdma_config_t* %3, metadata !4087, metadata !DIExpression()), !dbg !4098
  %5 = tail call fastcc zeroext i1 @uart_port_is_valid(i32 noundef %0) #18, !dbg !4099
  br i1 %5, label %6, label %101, !dbg !4101

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 0, !dbg !4102
  %8 = load i8*, i8** %7, align 4, !dbg !4102
  %9 = icmp eq i8* %8, null, !dbg !4104
  br i1 %9, label %101, label %10, !dbg !4105

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 3, !dbg !4106
  %12 = load i8*, i8** %11, align 4, !dbg !4106
  %13 = icmp eq i8* %12, null, !dbg !4107
  br i1 %13, label %101, label %14, !dbg !4108

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 1, !dbg !4109
  %16 = load i32, i32* %15, align 4, !dbg !4109
  %17 = icmp ugt i32 %16, 131071, !dbg !4111
  br i1 %17, label %101, label %18, !dbg !4112

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 2, !dbg !4113
  %20 = load i32, i32* %19, align 4, !dbg !4113
  %21 = icmp ugt i32 %20, 131071, !dbg !4114
  %22 = icmp ugt i32 %20, %16
  %23 = select i1 %21, i1 true, i1 %22, !dbg !4115
  br i1 %23, label %101, label %24, !dbg !4115

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 4, !dbg !4116
  %26 = load i32, i32* %25, align 4, !dbg !4116
  %27 = icmp ugt i32 %26, 131071, !dbg !4118
  br i1 %27, label %101, label %28, !dbg !4119

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 5, !dbg !4120
  %30 = load i32, i32* %29, align 4, !dbg !4120
  %31 = icmp ugt i32 %30, 131071, !dbg !4121
  br i1 %31, label %101, label %32, !dbg !4122

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 6, !dbg !4123
  %34 = load i32, i32* %33, align 4, !dbg !4123
  %35 = icmp ugt i32 %34, 131071, !dbg !4124
  %36 = icmp ugt i32 %30, %26
  %37 = select i1 %35, i1 true, i1 %36, !dbg !4125
  %38 = icmp ugt i32 %34, %26
  %39 = select i1 %37, i1 true, i1 %38, !dbg !4125
  br i1 %39, label %101, label %40, !dbg !4125

40:                                               ; preds = %32
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* @g_uart_hwstatus, i32 0, i32 %0, !dbg !4126
  %42 = load volatile i32, i32* %41, align 4, !dbg !4126
  %43 = icmp eq i32 %42, 1, !dbg !4128
  br i1 %43, label %44, label %101, !dbg !4129

44:                                               ; preds = %40
  %45 = tail call i32 @uart_port_to_dma_channel(i32 noundef %0, i32 noundef 0) #19, !dbg !4130
  call void @llvm.dbg.value(metadata i32 %45, metadata !4093, metadata !DIExpression()), !dbg !4096
  %46 = tail call i32 @uart_port_to_dma_channel(i32 noundef %0, i32 noundef 1) #19, !dbg !4131
  call void @llvm.dbg.value(metadata i32 %46, metadata !4094, metadata !DIExpression()), !dbg !4096
  %47 = tail call i32 @vdma_init(i32 noundef %45) #19, !dbg !4132
  call void @llvm.dbg.value(metadata i32 %47, metadata !4095, metadata !DIExpression()), !dbg !4096
  %48 = icmp eq i32 %47, 0, !dbg !4133
  br i1 %48, label %50, label %49, !dbg !4135

49:                                               ; preds = %44
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 1107, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.hal_uart_set_dma, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !4136
  unreachable, !dbg !4136

50:                                               ; preds = %44
  %51 = load i8*, i8** %7, align 4, !dbg !4138
  %52 = ptrtoint i8* %51 to i32, !dbg !4139
  %53 = getelementptr inbounds %struct.vdma_config_t, %struct.vdma_config_t* %3, i32 0, i32 0, !dbg !4140
  store i32 %52, i32* %53, align 4, !dbg !4141
  %54 = load i32, i32* %15, align 4, !dbg !4142
  %55 = getelementptr inbounds %struct.vdma_config_t, %struct.vdma_config_t* %3, i32 0, i32 1, !dbg !4143
  store i32 %54, i32* %55, align 4, !dbg !4144
  %56 = call i32 @vdma_configure(i32 noundef %45, %struct.vdma_config_t* noundef nonnull %3) #19, !dbg !4145
  call void @llvm.dbg.value(metadata i32 %56, metadata !4095, metadata !DIExpression()), !dbg !4096
  %57 = icmp eq i32 %56, 0, !dbg !4146
  br i1 %57, label %59, label %58, !dbg !4148

58:                                               ; preds = %50
  call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 1114, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.hal_uart_set_dma, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !4149
  unreachable, !dbg !4149

59:                                               ; preds = %50
  %60 = load i32, i32* %19, align 4, !dbg !4151
  %61 = call i32 @vdma_set_threshold(i32 noundef %45, i32 noundef %60) #19, !dbg !4152
  call void @llvm.dbg.value(metadata i32 %61, metadata !4095, metadata !DIExpression()), !dbg !4096
  %62 = icmp eq i32 %61, 0, !dbg !4153
  br i1 %62, label %64, label %63, !dbg !4155

63:                                               ; preds = %59
  call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 1119, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.hal_uart_set_dma, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !4156
  unreachable, !dbg !4156

64:                                               ; preds = %59
  %65 = call i32 @vdma_init(i32 noundef %46) #19, !dbg !4158
  call void @llvm.dbg.value(metadata i32 %65, metadata !4095, metadata !DIExpression()), !dbg !4096
  %66 = icmp eq i32 %65, 0, !dbg !4159
  br i1 %66, label %68, label %67, !dbg !4161

67:                                               ; preds = %64
  call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 1125, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.hal_uart_set_dma, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !4162
  unreachable, !dbg !4162

68:                                               ; preds = %64
  %69 = load i8*, i8** %11, align 4, !dbg !4164
  %70 = ptrtoint i8* %69 to i32, !dbg !4165
  store i32 %70, i32* %53, align 4, !dbg !4166
  %71 = load i32, i32* %25, align 4, !dbg !4167
  store i32 %71, i32* %55, align 4, !dbg !4168
  %72 = call i32 @vdma_configure(i32 noundef %46, %struct.vdma_config_t* noundef nonnull %3) #19, !dbg !4169
  call void @llvm.dbg.value(metadata i32 %72, metadata !4095, metadata !DIExpression()), !dbg !4096
  %73 = icmp eq i32 %72, 0, !dbg !4170
  br i1 %73, label %75, label %74, !dbg !4172

74:                                               ; preds = %68
  call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 1132, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.hal_uart_set_dma, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !4173
  unreachable, !dbg !4173

75:                                               ; preds = %68
  %76 = load i32, i32* %29, align 4, !dbg !4175
  %77 = call i32 @vdma_set_threshold(i32 noundef %46, i32 noundef %76) #19, !dbg !4176
  call void @llvm.dbg.value(metadata i32 %77, metadata !4095, metadata !DIExpression()), !dbg !4096
  %78 = icmp eq i32 %77, 0, !dbg !4177
  br i1 %78, label %80, label %79, !dbg !4179

79:                                               ; preds = %75
  call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 1137, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.hal_uart_set_dma, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !4180
  unreachable, !dbg !4180

80:                                               ; preds = %75
  %81 = load i32, i32* %33, align 4, !dbg !4182
  %82 = call i32 @vdma_set_alert_length(i32 noundef %46, i32 noundef %81) #19, !dbg !4183
  call void @llvm.dbg.value(metadata i32 %82, metadata !4095, metadata !DIExpression()), !dbg !4096
  %83 = icmp eq i32 %82, 0, !dbg !4184
  br i1 %83, label %85, label %84, !dbg !4186

84:                                               ; preds = %80
  call void @__assert_func(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i32 0, i32 0), i32 noundef 1142, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.hal_uart_set_dma, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #21, !dbg !4187
  unreachable, !dbg !4187

85:                                               ; preds = %80
  %86 = call i32 @save_and_set_interrupt_mask() #19, !dbg !4189
  call void @llvm.dbg.value(metadata i32 %86, metadata !4086, metadata !DIExpression()), !dbg !4096
  %87 = load i8*, i8** %7, align 4, !dbg !4190
  %88 = getelementptr inbounds [4 x %struct.hal_uart_dma_config_t], [4 x %struct.hal_uart_dma_config_t]* @g_uart_dma_config, i32 0, i32 %0, i32 0, !dbg !4191
  store i8* %87, i8** %88, align 4, !dbg !4192
  %89 = load i32, i32* %15, align 4, !dbg !4193
  %90 = getelementptr inbounds [4 x %struct.hal_uart_dma_config_t], [4 x %struct.hal_uart_dma_config_t]* @g_uart_dma_config, i32 0, i32 %0, i32 1, !dbg !4194
  store i32 %89, i32* %90, align 4, !dbg !4195
  %91 = load i32, i32* %19, align 4, !dbg !4196
  %92 = getelementptr inbounds [4 x %struct.hal_uart_dma_config_t], [4 x %struct.hal_uart_dma_config_t]* @g_uart_dma_config, i32 0, i32 %0, i32 2, !dbg !4197
  store i32 %91, i32* %92, align 4, !dbg !4198
  %93 = load i32, i32* %33, align 4, !dbg !4199
  %94 = getelementptr inbounds [4 x %struct.hal_uart_dma_config_t], [4 x %struct.hal_uart_dma_config_t]* @g_uart_dma_config, i32 0, i32 %0, i32 6, !dbg !4200
  store i32 %93, i32* %94, align 4, !dbg !4201
  %95 = load i8*, i8** %11, align 4, !dbg !4202
  %96 = getelementptr inbounds [4 x %struct.hal_uart_dma_config_t], [4 x %struct.hal_uart_dma_config_t]* @g_uart_dma_config, i32 0, i32 %0, i32 3, !dbg !4203
  store i8* %95, i8** %96, align 4, !dbg !4204
  %97 = load i32, i32* %25, align 4, !dbg !4205
  %98 = getelementptr inbounds [4 x %struct.hal_uart_dma_config_t], [4 x %struct.hal_uart_dma_config_t]* @g_uart_dma_config, i32 0, i32 %0, i32 4, !dbg !4206
  store i32 %97, i32* %98, align 4, !dbg !4207
  %99 = load i32, i32* %29, align 4, !dbg !4208
  %100 = getelementptr inbounds [4 x %struct.hal_uart_dma_config_t], [4 x %struct.hal_uart_dma_config_t]* @g_uart_dma_config, i32 0, i32 %0, i32 5, !dbg !4209
  store i32 %99, i32* %100, align 4, !dbg !4210
  call void @restore_interrupt_mask(i32 noundef %86) #19, !dbg !4211
  br label %101, !dbg !4212

101:                                              ; preds = %40, %24, %28, %32, %14, %18, %6, %10, %2, %85
  %102 = phi i32 [ 0, %85 ], [ -4, %2 ], [ -4, %10 ], [ -4, %6 ], [ -4, %18 ], [ -4, %14 ], [ -4, %32 ], [ -4, %28 ], [ -4, %24 ], [ -2, %40 ], !dbg !4096
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #20, !dbg !4213
  ret i32 %102, !dbg !4213
}

; Function Attrs: optsize
declare dso_local i32 @vdma_init(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare dso_local i32 @vdma_configure(i32 noundef, %struct.vdma_config_t* noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare dso_local i32 @vdma_set_threshold(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare dso_local i32 @vdma_set_alert_length(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize
define dso_local void @uart_set_baudrate(%struct.UART_REGISTER_T* noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4214 {
  %3 = alloca [10 x i32], align 4
  call void @llvm.dbg.value(metadata %struct.UART_REGISTER_T* %0, metadata !4273, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.value(metadata i32 %1, metadata !4274, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.declare(metadata [10 x i32]* @__const.uart_set_baudrate.fraction_L_mapping, metadata !4283, metadata !DIExpression()), !dbg !4289
  %4 = bitcast [10 x i32]* %3 to i8*, !dbg !4290
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #20, !dbg !4290
  call void @llvm.dbg.declare(metadata [10 x i32]* %3, metadata !4287, metadata !DIExpression()), !dbg !4291
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(40) %4, i8 0, i32 20, i1 false), !dbg !4291
  %5 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i32 0, i32 5, !dbg !4291
  store i32 1, i32* %5, align 4, !dbg !4291
  %6 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i32 0, i32 6, !dbg !4291
  store i32 1, i32* %6, align 4, !dbg !4291
  %7 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i32 0, i32 7, !dbg !4291
  store i32 1, i32* %7, align 4, !dbg !4291
  %8 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i32 0, i32 8, !dbg !4291
  store i32 1, i32* %8, align 4, !dbg !4291
  %9 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i32 0, i32 9, !dbg !4291
  store i32 1, i32* %9, align 4, !dbg !4291
  %10 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 13, !dbg !4292
  store volatile i32 0, i32* %10, align 4, !dbg !4293
  %11 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 21, !dbg !4294
  store volatile i32 0, i32* %11, align 4, !dbg !4295
  %12 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 22, !dbg !4296
  store volatile i32 0, i32* %12, align 4, !dbg !4297
  %13 = tail call zeroext i1 @is_clk_use_lfosc() #19, !dbg !4298
  br i1 %13, label %14, label %17, !dbg !4300

14:                                               ; preds = %2
  %15 = tail call i32 @clock_get_freq_lfosc() #19, !dbg !4301
  %16 = mul i32 %15, 1000, !dbg !4303
  call void @llvm.dbg.value(metadata i32 %16, metadata !4275, metadata !DIExpression()), !dbg !4288
  br label %17, !dbg !4304

17:                                               ; preds = %2, %14
  %18 = phi i32 [ %16, %14 ], [ 26000000, %2 ], !dbg !4305
  call void @llvm.dbg.value(metadata i32 %18, metadata !4275, metadata !DIExpression()), !dbg !4288
  %19 = shl i32 %1, 8, !dbg !4306
  %20 = udiv i32 %18, %19, !dbg !4307
  call void @llvm.dbg.value(metadata i32 %20, metadata !4276, metadata !DIExpression()), !dbg !4288
  %21 = mul i32 %18, 10, !dbg !4308
  %22 = udiv i32 %21, %19, !dbg !4309
  %23 = urem i32 %22, 10, !dbg !4310
  call void @llvm.dbg.value(metadata i32 %23, metadata !4277, metadata !DIExpression()), !dbg !4288
  %24 = icmp ne i32 %23, 0, !dbg !4311
  %25 = icmp ugt i32 %19, %18
  %26 = select i1 %24, i1 true, i1 %25, !dbg !4313
  %27 = zext i1 %26 to i32, !dbg !4313
  %28 = add i32 %20, %27, !dbg !4313
  call void @llvm.dbg.value(metadata i32 %28, metadata !4276, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.value(metadata i32 %28, metadata !4279, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.value(metadata i32 undef, metadata !4280, metadata !DIExpression()), !dbg !4288
  br label %29, !dbg !4314

29:                                               ; preds = %29, %17
  %30 = phi i32 [ %28, %17 ], [ %34, %29 ], !dbg !4288
  %31 = mul i32 %30, %1, !dbg !4288
  %32 = udiv i32 %18, %31, !dbg !4288
  call void @llvm.dbg.value(metadata i32 %32, metadata !4280, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.value(metadata i32 %30, metadata !4279, metadata !DIExpression()), !dbg !4288
  %33 = icmp ugt i32 %32, 256, !dbg !4315
  %34 = add i32 %30, 1, !dbg !4316
  call void @llvm.dbg.value(metadata i32 %34, metadata !4279, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.value(metadata i32 undef, metadata !4280, metadata !DIExpression()), !dbg !4288
  br i1 %33, label %29, label %35, !dbg !4314, !llvm.loop !4318

35:                                               ; preds = %29
  %36 = udiv i32 %21, %31, !dbg !4320
  %37 = urem i32 %36, 10, !dbg !4321
  call void @llvm.dbg.value(metadata i32 %37, metadata !4278, metadata !DIExpression()), !dbg !4288
  %38 = add nsw i32 %32, -1, !dbg !4322
  call void @llvm.dbg.value(metadata i32 %38, metadata !4280, metadata !DIExpression()), !dbg !4288
  %39 = add nsw i32 %32, -2, !dbg !4323
  %40 = lshr i32 %39, 1, !dbg !4324
  call void @llvm.dbg.value(metadata i32 %40, metadata !4281, metadata !DIExpression()), !dbg !4288
  %41 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 9, !dbg !4325
  store volatile i32 3, i32* %41, align 4, !dbg !4326
  %42 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 3, !dbg !4327
  %43 = load volatile i32, i32* %42, align 4, !dbg !4327
  call void @llvm.dbg.value(metadata i32 %43, metadata !4282, metadata !DIExpression()), !dbg !4288
  %44 = or i32 %43, 128, !dbg !4328
  store volatile i32 %44, i32* %42, align 4, !dbg !4329
  %45 = and i32 %30, 255, !dbg !4330
  %46 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 0, i32 0, !dbg !4331
  store volatile i32 %45, i32* %46, align 4, !dbg !4332
  %47 = lshr i32 %30, 8, !dbg !4333
  %48 = and i32 %47, 255, !dbg !4334
  %49 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 1, i32 0, !dbg !4335
  store volatile i32 %48, i32* %49, align 4, !dbg !4336
  store volatile i32 %43, i32* %42, align 4, !dbg !4337
  %50 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 10, !dbg !4338
  store volatile i32 %38, i32* %50, align 4, !dbg !4339
  %51 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 11, !dbg !4340
  store volatile i32 %40, i32* %51, align 4, !dbg !4341
  %52 = getelementptr inbounds [10 x i32], [10 x i32]* @__const.uart_set_baudrate.fraction_L_mapping, i32 0, i32 %37, !dbg !4342
  %53 = load i32, i32* %52, align 4, !dbg !4342
  store volatile i32 %53, i32* %11, align 4, !dbg !4343
  %54 = getelementptr inbounds [10 x i32], [10 x i32]* %3, i32 0, i32 %37, !dbg !4344
  %55 = load i32, i32* %54, align 4, !dbg !4344
  store volatile i32 %55, i32* %12, align 4, !dbg !4345
  %56 = icmp ugt i32 %1, 2999999, !dbg !4346
  br i1 %56, label %57, label %59, !dbg !4348

57:                                               ; preds = %35
  %58 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 15, !dbg !4349
  store volatile i32 18, i32* %58, align 4, !dbg !4351
  br label %59, !dbg !4352

59:                                               ; preds = %57, %35
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #20, !dbg !4353
  ret void, !dbg !4353
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #15

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_format(%struct.UART_REGISTER_T* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !4354 {
  call void @llvm.dbg.value(metadata %struct.UART_REGISTER_T* %0, metadata !4358, metadata !DIExpression()), !dbg !4365
  call void @llvm.dbg.value(metadata i32 %1, metadata !4359, metadata !DIExpression()), !dbg !4365
  call void @llvm.dbg.value(metadata i32 %2, metadata !4360, metadata !DIExpression()), !dbg !4365
  call void @llvm.dbg.value(metadata i32 %3, metadata !4361, metadata !DIExpression()), !dbg !4365
  %5 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 3, !dbg !4366
  %6 = load volatile i32, i32* %5, align 4, !dbg !4366
  call void @llvm.dbg.value(metadata i32 %6, metadata !4362, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4365
  store volatile i32 128, i32* %5, align 4, !dbg !4367
  %7 = trunc i32 %6 to i16, !dbg !4368
  %8 = and i16 %7, -4, !dbg !4368
  call void @llvm.dbg.value(metadata i16 %7, metadata !4362, metadata !DIExpression(DW_OP_constu, 18446744073709551612, DW_OP_and, DW_OP_stack_value)), !dbg !4365
  switch i32 %1, label %15 [
    i32 3, label %13
    i32 1, label %9
    i32 2, label %11
  ], !dbg !4369

9:                                                ; preds = %4
  %10 = or i16 %8, 1, !dbg !4370
  call void @llvm.dbg.value(metadata i16 %10, metadata !4362, metadata !DIExpression()), !dbg !4365
  br label %15, !dbg !4372

11:                                               ; preds = %4
  %12 = or i16 %8, 2, !dbg !4373
  call void @llvm.dbg.value(metadata i16 %12, metadata !4362, metadata !DIExpression()), !dbg !4365
  br label %15, !dbg !4374

13:                                               ; preds = %4
  %14 = or i16 %7, 3, !dbg !4375
  call void @llvm.dbg.value(metadata i16 %14, metadata !4362, metadata !DIExpression()), !dbg !4365
  br label %15, !dbg !4376

15:                                               ; preds = %4, %13, %11, %9
  %16 = phi i16 [ %14, %13 ], [ %12, %11 ], [ %10, %9 ], [ %8, %4 ], !dbg !4365
  call void @llvm.dbg.value(metadata i16 %16, metadata !4362, metadata !DIExpression()), !dbg !4365
  %17 = and i16 %16, -61, !dbg !4377
  call void @llvm.dbg.value(metadata i16 %16, metadata !4362, metadata !DIExpression(DW_OP_constu, 18446744073709551611, DW_OP_and, DW_OP_stack_value)), !dbg !4365
  %18 = icmp eq i32 %2, 1, !dbg !4378
  %19 = select i1 %18, i16 4, i16 0, !dbg !4378
  %20 = or i16 %17, %19, !dbg !4378
  call void @llvm.dbg.value(metadata !DIArgList(i16 %17, i16 %19), metadata !4362, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !4365
  call void @llvm.dbg.value(metadata i16 %20, metadata !4362, metadata !DIExpression()), !dbg !4365
  %21 = icmp eq i32 %3, 2, !dbg !4379
  %22 = or i16 %20, 16, !dbg !4379
  %23 = select i1 %21, i16 %22, i16 %20, !dbg !4379
  call void @llvm.dbg.value(metadata i16 %23, metadata !4362, metadata !DIExpression()), !dbg !4365
  %24 = zext i16 %23 to i32, !dbg !4380
  store volatile i32 %24, i32* %5, align 4, !dbg !4381
  ret void, !dbg !4382
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_put_char_block(%struct.UART_REGISTER_T* noundef %0, i8 noundef zeroext %1) local_unnamed_addr #10 !dbg !4383 {
  call void @llvm.dbg.value(metadata %struct.UART_REGISTER_T* %0, metadata !4387, metadata !DIExpression()), !dbg !4390
  call void @llvm.dbg.value(metadata i8 %1, metadata !4388, metadata !DIExpression()), !dbg !4390
  %3 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 5, i32 0
  br label %4, !dbg !4391

4:                                                ; preds = %4, %2
  %5 = load volatile i32, i32* %3, align 4, !dbg !4392
  call void @llvm.dbg.value(metadata i32 %5, metadata !4389, metadata !DIExpression()), !dbg !4390
  %6 = and i32 %5, 32, !dbg !4394
  %7 = icmp eq i32 %6, 0, !dbg !4394
  br i1 %7, label %4, label %8, !dbg !4396, !llvm.loop !4397

8:                                                ; preds = %4
  %9 = zext i8 %1 to i32, !dbg !4399
  %10 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 0, i32 0, !dbg !4401
  store volatile i32 %9, i32* %10, align 4, !dbg !4402
  ret void, !dbg !4403
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @uart_get_char_block(%struct.UART_REGISTER_T* noundef %0) local_unnamed_addr #10 !dbg !4404 {
  call void @llvm.dbg.value(metadata %struct.UART_REGISTER_T* %0, metadata !4408, metadata !DIExpression()), !dbg !4411
  %2 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 5, i32 0
  br label %3, !dbg !4412

3:                                                ; preds = %3, %1
  %4 = load volatile i32, i32* %2, align 4, !dbg !4413
  call void @llvm.dbg.value(metadata i32 %4, metadata !4409, metadata !DIExpression()), !dbg !4411
  %5 = and i32 %4, 1, !dbg !4415
  %6 = icmp eq i32 %5, 0, !dbg !4415
  br i1 %6, label %3, label %7, !dbg !4417, !llvm.loop !4418

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 0, i32 0, !dbg !4420
  %9 = load volatile i32, i32* %8, align 4, !dbg !4420
  %10 = trunc i32 %9 to i8, !dbg !4422
  call void @llvm.dbg.value(metadata i8 %10, metadata !4410, metadata !DIExpression()), !dbg !4411
  ret i8 %10, !dbg !4423
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @uart_get_char_unblocking(%struct.UART_REGISTER_T* noundef %0) local_unnamed_addr #9 !dbg !4424 {
  call void @llvm.dbg.value(metadata %struct.UART_REGISTER_T* %0, metadata !4428, metadata !DIExpression()), !dbg !4431
  %2 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 5, i32 0, !dbg !4432
  %3 = load volatile i32, i32* %2, align 4, !dbg !4432
  call void @llvm.dbg.value(metadata i32 %3, metadata !4429, metadata !DIExpression()), !dbg !4431
  %4 = and i32 %3, 1, !dbg !4433
  %5 = icmp eq i32 %4, 0, !dbg !4433
  br i1 %5, label %9, label %6, !dbg !4435

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 0, i32 0, !dbg !4436
  %8 = load volatile i32, i32* %7, align 4, !dbg !4436
  call void @llvm.dbg.value(metadata i32 %8, metadata !4430, metadata !DIExpression()), !dbg !4431
  br label %9, !dbg !4438

9:                                                ; preds = %1, %6
  %10 = phi i32 [ %8, %6 ], [ -1, %1 ], !dbg !4439
  call void @llvm.dbg.value(metadata i32 %10, metadata !4430, metadata !DIExpression()), !dbg !4431
  ret i32 %10, !dbg !4440
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_hardware_flowcontrol(%struct.UART_REGISTER_T* noundef %0) local_unnamed_addr #10 !dbg !4441 {
  call void @llvm.dbg.value(metadata %struct.UART_REGISTER_T* %0, metadata !4445, metadata !DIExpression()), !dbg !4448
  %2 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 3, !dbg !4449
  %3 = load volatile i32, i32* %2, align 4, !dbg !4449
  call void @llvm.dbg.value(metadata i32 %3, metadata !4447, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4448
  store volatile i32 191, i32* %2, align 4, !dbg !4450
  %4 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 2, i32 0, !dbg !4451
  %5 = load volatile i32, i32* %4, align 4, !dbg !4451
  call void @llvm.dbg.value(metadata i32 %5, metadata !4446, metadata !DIExpression()), !dbg !4448
  %6 = and i32 %5, 65343, !dbg !4452
  %7 = or i32 %6, 192, !dbg !4452
  call void @llvm.dbg.value(metadata i32 %5, metadata !4446, metadata !DIExpression(DW_OP_constu, 192, DW_OP_or, DW_OP_stack_value)), !dbg !4448
  store volatile i32 %7, i32* %4, align 4, !dbg !4453
  %8 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 17, !dbg !4454
  store volatile i32 0, i32* %8, align 4, !dbg !4455
  store volatile i32 0, i32* %2, align 4, !dbg !4456
  %9 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 4, i32 0, !dbg !4457
  store volatile i32 2, i32* %9, align 4, !dbg !4458
  %10 = and i32 %3, 65535, !dbg !4459
  store volatile i32 %10, i32* %2, align 4, !dbg !4460
  ret void, !dbg !4461
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_software_flowcontrol(%struct.UART_REGISTER_T* noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #10 !dbg !4462 {
  call void @llvm.dbg.value(metadata %struct.UART_REGISTER_T* %0, metadata !4466, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i8 %1, metadata !4467, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i8 %2, metadata !4468, metadata !DIExpression()), !dbg !4472
  call void @llvm.dbg.value(metadata i8 %3, metadata !4469, metadata !DIExpression()), !dbg !4472
  %5 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 3, !dbg !4473
  %6 = load volatile i32, i32* %5, align 4, !dbg !4473
  call void @llvm.dbg.value(metadata i32 %6, metadata !4471, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4472
  store volatile i32 191, i32* %5, align 4, !dbg !4474
  %7 = zext i8 %1 to i32, !dbg !4475
  %8 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 4, i32 0, !dbg !4476
  store volatile i32 %7, i32* %8, align 4, !dbg !4477
  %9 = zext i8 %2 to i32, !dbg !4478
  %10 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 6, !dbg !4479
  store volatile i32 %9, i32* %10, align 4, !dbg !4480
  %11 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 2, i32 0, !dbg !4481
  %12 = load volatile i32, i32* %11, align 4, !dbg !4481
  call void @llvm.dbg.value(metadata i32 %12, metadata !4470, metadata !DIExpression()), !dbg !4472
  %13 = and i32 %12, 65509, !dbg !4482
  %14 = or i32 %13, 26, !dbg !4482
  call void @llvm.dbg.value(metadata i32 %12, metadata !4470, metadata !DIExpression(DW_OP_constu, 26, DW_OP_or, DW_OP_stack_value)), !dbg !4472
  store volatile i32 %14, i32* %11, align 4, !dbg !4483
  %15 = zext i8 %3 to i32, !dbg !4484
  %16 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 16, !dbg !4485
  store volatile i32 %15, i32* %16, align 4, !dbg !4486
  %17 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 17, !dbg !4487
  store volatile i32 1, i32* %17, align 4, !dbg !4488
  %18 = and i32 %6, 65535, !dbg !4489
  store volatile i32 %18, i32* %5, align 4, !dbg !4490
  ret void, !dbg !4491
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_disable_flowcontrol(%struct.UART_REGISTER_T* noundef %0) local_unnamed_addr #10 !dbg !4492 {
  call void @llvm.dbg.value(metadata %struct.UART_REGISTER_T* %0, metadata !4494, metadata !DIExpression()), !dbg !4496
  %2 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 3, !dbg !4497
  %3 = load volatile i32, i32* %2, align 4, !dbg !4497
  call void @llvm.dbg.value(metadata i32 %3, metadata !4495, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4496
  store volatile i32 191, i32* %2, align 4, !dbg !4498
  %4 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 2, i32 0, !dbg !4499
  store volatile i32 0, i32* %4, align 4, !dbg !4500
  store volatile i32 0, i32* %2, align 4, !dbg !4501
  %5 = and i32 %3, 65535, !dbg !4502
  store volatile i32 %5, i32* %2, align 4, !dbg !4503
  ret void, !dbg !4504
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_fifo(%struct.UART_REGISTER_T* noundef %0) local_unnamed_addr #10 !dbg !4505 {
  call void @llvm.dbg.value(metadata %struct.UART_REGISTER_T* %0, metadata !4507, metadata !DIExpression()), !dbg !4510
  %2 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 3, !dbg !4511
  %3 = load volatile i32, i32* %2, align 4, !dbg !4511
  call void @llvm.dbg.value(metadata i32 %3, metadata !4509, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4510
  store volatile i32 191, i32* %2, align 4, !dbg !4512
  %4 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 2, i32 0, !dbg !4513
  %5 = load volatile i32, i32* %4, align 4, !dbg !4513
  call void @llvm.dbg.value(metadata i32 %5, metadata !4508, metadata !DIExpression()), !dbg !4510
  %6 = and i32 %5, 65519, !dbg !4514
  %7 = or i32 %6, 16, !dbg !4514
  call void @llvm.dbg.value(metadata i32 %5, metadata !4508, metadata !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value)), !dbg !4510
  store volatile i32 %7, i32* %4, align 4, !dbg !4515
  store volatile i32 0, i32* %2, align 4, !dbg !4516
  store volatile i32 135, i32* %4, align 4, !dbg !4517
  %8 = and i32 %3, 65535, !dbg !4518
  store volatile i32 %8, i32* %2, align 4, !dbg !4519
  ret void, !dbg !4520
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_unmask_receive_interrupt(%struct.UART_REGISTER_T* noundef %0) local_unnamed_addr #10 !dbg !4521 {
  call void @llvm.dbg.value(metadata %struct.UART_REGISTER_T* %0, metadata !4523, metadata !DIExpression()), !dbg !4526
  %2 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 3, !dbg !4527
  %3 = load volatile i32, i32* %2, align 4, !dbg !4527
  call void @llvm.dbg.value(metadata i32 %3, metadata !4525, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4526
  %4 = load volatile i32, i32* %2, align 4, !dbg !4528
  %5 = and i32 %4, -129, !dbg !4528
  store volatile i32 %5, i32* %2, align 4, !dbg !4528
  %6 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 1, i32 0, !dbg !4529
  %7 = load volatile i32, i32* %6, align 4, !dbg !4529
  call void @llvm.dbg.value(metadata i32 %7, metadata !4524, metadata !DIExpression()), !dbg !4526
  %8 = and i32 %7, 65530, !dbg !4530
  %9 = or i32 %8, 5, !dbg !4530
  call void @llvm.dbg.value(metadata i32 %7, metadata !4524, metadata !DIExpression(DW_OP_constu, 5, DW_OP_or, DW_OP_stack_value)), !dbg !4526
  store volatile i32 %9, i32* %6, align 4, !dbg !4531
  %10 = and i32 %3, 65535, !dbg !4532
  %11 = load volatile i32, i32* %2, align 4, !dbg !4533
  %12 = and i32 %10, %11, !dbg !4533
  store volatile i32 %12, i32* %2, align 4, !dbg !4533
  ret void, !dbg !4534
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_purge_fifo(%struct.UART_REGISTER_T* noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !4535 {
  call void @llvm.dbg.value(metadata %struct.UART_REGISTER_T* %0, metadata !4539, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.value(metadata i32 %1, metadata !4540, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.value(metadata i16 145, metadata !4541, metadata !DIExpression()), !dbg !4542
  %3 = icmp eq i32 %1, 0, !dbg !4543
  %4 = select i1 %3, i32 149, i32 147
  call void @llvm.dbg.value(metadata i16 undef, metadata !4541, metadata !DIExpression()), !dbg !4542
  %5 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 2, i32 0, !dbg !4545
  store volatile i32 %4, i32* %5, align 4, !dbg !4546
  ret void, !dbg !4547
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @uart_query_interrupt_type(%struct.UART_REGISTER_T* noundef %0) local_unnamed_addr #9 !dbg !4548 {
  call void @llvm.dbg.value(metadata %struct.UART_REGISTER_T* %0, metadata !4553, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.value(metadata i32 0, metadata !4556, metadata !DIExpression()), !dbg !4557
  %2 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 2, i32 0, !dbg !4558
  %3 = load volatile i32, i32* %2, align 4, !dbg !4558
  call void @llvm.dbg.value(metadata i32 %3, metadata !4554, metadata !DIExpression()), !dbg !4557
  %4 = and i32 %3, 1, !dbg !4559
  %5 = icmp eq i32 %4, 0, !dbg !4559
  br i1 %5, label %6, label %16, !dbg !4561

6:                                                ; preds = %1
  %7 = and i32 %3, 63, !dbg !4562
  switch i32 %7, label %16 [
    i32 12, label %8
    i32 6, label %9
    i32 2, label %15
  ], !dbg !4563

8:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i32 2, metadata !4556, metadata !DIExpression()), !dbg !4557
  br label %16, !dbg !4564

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 5, i32 0, !dbg !4566
  %11 = load volatile i32, i32* %10, align 4, !dbg !4566
  call void @llvm.dbg.value(metadata i32 %11, metadata !4555, metadata !DIExpression()), !dbg !4557
  %12 = and i32 %11, 16, !dbg !4567
  %13 = icmp eq i32 %12, 0, !dbg !4567
  %14 = select i1 %13, i32 1, i32 3
  br label %16

15:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 5, metadata !4556, metadata !DIExpression()), !dbg !4557
  br label %16, !dbg !4569

16:                                               ; preds = %8, %15, %6, %9, %1
  %17 = phi i32 [ 0, %1 ], [ 0, %6 ], [ 5, %15 ], [ 2, %8 ], [ %14, %9 ], !dbg !4557
  ret i32 %17, !dbg !4570
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @uart_verify_error(%struct.UART_REGISTER_T* noundef %0) local_unnamed_addr #9 !dbg !4571 {
  call void @llvm.dbg.value(metadata %struct.UART_REGISTER_T* %0, metadata !4575, metadata !DIExpression()), !dbg !4578
  call void @llvm.dbg.value(metadata i32 0, metadata !4577, metadata !DIExpression()), !dbg !4578
  %2 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 5, i32 0, !dbg !4579
  %3 = load volatile i32, i32* %2, align 4, !dbg !4579
  call void @llvm.dbg.value(metadata i32 %3, metadata !4576, metadata !DIExpression()), !dbg !4578
  %4 = and i32 %3, 14, !dbg !4580
  %5 = icmp eq i32 %4, 0, !dbg !4580
  %6 = sext i1 %5 to i32, !dbg !4582
  call void @llvm.dbg.value(metadata i32 %6, metadata !4577, metadata !DIExpression()), !dbg !4578
  ret i32 %6, !dbg !4583
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local void @uart_clear_timeout_interrupt(%struct.UART_REGISTER_T* noundef %0) local_unnamed_addr #9 !dbg !4584 {
  call void @llvm.dbg.value(metadata %struct.UART_REGISTER_T* %0, metadata !4586, metadata !DIExpression()), !dbg !4588
  %2 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 19, !dbg !4589
  %3 = load volatile i32, i32* %2, align 4, !dbg !4589
  call void @llvm.dbg.value(metadata i32 %3, metadata !4587, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4588
  call void @llvm.dbg.value(metadata i32 %3, metadata !4587, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4588
  ret void, !dbg !4590
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_reset_default_value(%struct.UART_REGISTER_T* noundef %0) local_unnamed_addr #10 !dbg !4591 {
  call void @llvm.dbg.value(metadata %struct.UART_REGISTER_T* %0, metadata !4593, metadata !DIExpression()), !dbg !4594
  %2 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 3, !dbg !4595
  store volatile i32 191, i32* %2, align 4, !dbg !4596
  %3 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 2, i32 0, !dbg !4597
  store volatile i32 16, i32* %3, align 4, !dbg !4598
  %4 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 4, i32 0, !dbg !4599
  store volatile i32 0, i32* %4, align 4, !dbg !4600
  %5 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 6, !dbg !4601
  store volatile i32 0, i32* %5, align 4, !dbg !4602
  store volatile i32 128, i32* %2, align 4, !dbg !4603
  %6 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 0, i32 0, !dbg !4604
  store volatile i32 0, i32* %6, align 4, !dbg !4605
  %7 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 1, i32 0, !dbg !4606
  store volatile i32 0, i32* %7, align 4, !dbg !4607
  store volatile i32 0, i32* %2, align 4, !dbg !4608
  store volatile i32 0, i32* %7, align 4, !dbg !4609
  store volatile i32 0, i32* %3, align 4, !dbg !4610
  store volatile i32 191, i32* %2, align 4, !dbg !4611
  store volatile i32 0, i32* %3, align 4, !dbg !4612
  store volatile i32 0, i32* %2, align 4, !dbg !4613
  store volatile i32 0, i32* %4, align 4, !dbg !4614
  %8 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 7, i32 0, !dbg !4615
  store volatile i32 0, i32* %8, align 4, !dbg !4616
  %9 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 8, !dbg !4617
  store volatile i32 0, i32* %9, align 4, !dbg !4618
  %10 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 9, !dbg !4619
  store volatile i32 0, i32* %10, align 4, !dbg !4620
  %11 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 10, !dbg !4621
  store volatile i32 0, i32* %11, align 4, !dbg !4622
  %12 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 11, !dbg !4623
  store volatile i32 0, i32* %12, align 4, !dbg !4624
  %13 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 13, !dbg !4625
  store volatile i32 0, i32* %13, align 4, !dbg !4626
  %14 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 14, !dbg !4627
  store volatile i32 0, i32* %14, align 4, !dbg !4628
  %15 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 15, !dbg !4629
  store volatile i32 0, i32* %15, align 4, !dbg !4630
  %16 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 16, !dbg !4631
  store volatile i32 0, i32* %16, align 4, !dbg !4632
  %17 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 17, !dbg !4633
  store volatile i32 0, i32* %17, align 4, !dbg !4634
  %18 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 18, !dbg !4635
  store volatile i32 0, i32* %18, align 4, !dbg !4636
  %19 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 19, !dbg !4637
  store volatile i32 0, i32* %19, align 4, !dbg !4638
  store volatile i32 0, i32* %13, align 4, !dbg !4639
  %20 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 21, !dbg !4640
  store volatile i32 0, i32* %20, align 4, !dbg !4641
  %21 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 22, !dbg !4642
  store volatile i32 0, i32* %21, align 4, !dbg !4643
  ret void, !dbg !4644
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_query_empty(%struct.UART_REGISTER_T* noundef %0) local_unnamed_addr #10 !dbg !4645 {
  call void @llvm.dbg.value(metadata %struct.UART_REGISTER_T* %0, metadata !4647, metadata !DIExpression()), !dbg !4648
  %2 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 5, i32 0
  br label %3, !dbg !4649

3:                                                ; preds = %3, %1
  %4 = load volatile i32, i32* %2, align 4, !dbg !4650
  %5 = and i32 %4, 64, !dbg !4651
  %6 = icmp eq i32 %5, 0, !dbg !4652
  br i1 %6, label %3, label %7, !dbg !4649, !llvm.loop !4653

7:                                                ; preds = %3
  ret void, !dbg !4655
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @uart_port_to_dma_channel(i32 noundef %0, i32 noundef %1) local_unnamed_addr #8 !dbg !4656 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4660, metadata !DIExpression()), !dbg !4663
  call void @llvm.dbg.value(metadata i32 %1, metadata !4661, metadata !DIExpression()), !dbg !4663
  call void @llvm.dbg.value(metadata i32 15, metadata !4662, metadata !DIExpression()), !dbg !4663
  switch i32 %0, label %15 [
    i32 0, label %3
    i32 1, label %6
    i32 2, label %9
    i32 3, label %12
  ], !dbg !4664

3:                                                ; preds = %2
  %4 = icmp eq i32 %1, 0, !dbg !4665
  %5 = select i1 %4, i32 14, i32 15
  br label %15

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 0, !dbg !4668
  %8 = select i1 %7, i32 8, i32 9
  br label %15

9:                                                ; preds = %2
  %10 = icmp eq i32 %1, 0, !dbg !4670
  %11 = select i1 %10, i32 10, i32 11
  br label %15

12:                                               ; preds = %2
  %13 = icmp eq i32 %1, 0, !dbg !4672
  %14 = select i1 %13, i32 12, i32 13
  br label %15

15:                                               ; preds = %12, %9, %6, %3, %2
  %16 = phi i32 [ 15, %2 ], [ %5, %3 ], [ %8, %6 ], [ %11, %9 ], [ %14, %12 ], !dbg !4663
  call void @llvm.dbg.value(metadata i32 %16, metadata !4662, metadata !DIExpression()), !dbg !4663
  ret i32 %16, !dbg !4674
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local void @uart_dma_channel_to_callback_data(i32 noundef %0, %struct.uart_dma_callback_data_t* nocapture noundef writeonly %1) local_unnamed_addr #4 !dbg !4675 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4685, metadata !DIExpression()), !dbg !4687
  call void @llvm.dbg.value(metadata %struct.uart_dma_callback_data_t* %1, metadata !4686, metadata !DIExpression()), !dbg !4687
  %3 = add i32 %0, -8, !dbg !4688
  %4 = icmp ult i32 %3, 8, !dbg !4688
  br i1 %4, label %5, label %12, !dbg !4688

5:                                                ; preds = %2
  %6 = getelementptr inbounds [8 x i8], [8 x i8]* @switch.table.uart_dma_channel_to_callback_data, i32 0, i32 %3, !dbg !4688
  %7 = load i8, i8* %6, align 1, !dbg !4688
  %8 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.uart_dma_channel_to_callback_data.2, i32 0, i32 %3, !dbg !4688
  %9 = load i32, i32* %8, align 4, !dbg !4688
  %10 = getelementptr inbounds %struct.uart_dma_callback_data_t, %struct.uart_dma_callback_data_t* %1, i32 0, i32 0, !dbg !4689
  store i8 %7, i8* %10, align 4, !dbg !4689
  %11 = getelementptr inbounds %struct.uart_dma_callback_data_t, %struct.uart_dma_callback_data_t* %1, i32 0, i32 1, !dbg !4689
  store i32 %9, i32* %11, align 4, !dbg !4689
  br label %12, !dbg !4691

12:                                               ; preds = %2, %5
  ret void, !dbg !4691
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_enable_dma(%struct.UART_REGISTER_T* noundef %0) local_unnamed_addr #10 !dbg !4692 {
  call void @llvm.dbg.value(metadata %struct.UART_REGISTER_T* %0, metadata !4696, metadata !DIExpression()), !dbg !4697
  %2 = getelementptr inbounds %struct.UART_REGISTER_T, %struct.UART_REGISTER_T* %0, i32 0, i32 19, !dbg !4698
  store volatile i32 3, i32* %2, align 4, !dbg !4699
  ret void, !dbg !4700
}

; Function Attrs: noinline nounwind optsize
define dso_local void @uart_interrupt_handler(i32 noundef %0) #0 !dbg !4701 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4703, metadata !DIExpression()), !dbg !4707
  call void @llvm.dbg.value(metadata %struct.UART_REGISTER_T* inttoptr (i32 -1609760768 to %struct.UART_REGISTER_T*), metadata !4706, metadata !DIExpression()), !dbg !4707
  %2 = add i32 %0, -30, !dbg !4708
  %3 = icmp ult i32 %2, 3, !dbg !4708
  %4 = add i32 %0, -29
  %5 = select i1 %3, i32 %4, i32 0, !dbg !4708
  call void @llvm.dbg.value(metadata i32 %5, metadata !4704, metadata !DIExpression()), !dbg !4707
  %6 = getelementptr inbounds [4 x %struct.UART_REGISTER_T*], [4 x %struct.UART_REGISTER_T*]* @g_uart_regbase, i32 0, i32 %5, !dbg !4709
  %7 = load %struct.UART_REGISTER_T*, %struct.UART_REGISTER_T** %6, align 4, !dbg !4709
  call void @llvm.dbg.value(metadata %struct.UART_REGISTER_T* %7, metadata !4706, metadata !DIExpression()), !dbg !4707
  %8 = tail call i32 @uart_query_interrupt_type(%struct.UART_REGISTER_T* noundef %7) #19, !dbg !4710
  call void @llvm.dbg.value(metadata i32 %8, metadata !4705, metadata !DIExpression()), !dbg !4707
  switch i32 %8, label %12 [
    i32 2, label %9
    i32 1, label %10
    i32 4, label %13
    i32 0, label %13
    i32 3, label %11
  ], !dbg !4711

9:                                                ; preds = %1
  tail call void @uart_receive_handler(i32 noundef %5, i1 noundef zeroext true) #19, !dbg !4712
  br label %13, !dbg !4714

10:                                               ; preds = %1
  tail call void @uart_error_handler(i32 noundef %5) #19, !dbg !4715
  br label %13, !dbg !4716

11:                                               ; preds = %1
  tail call void @uart_purge_fifo(%struct.UART_REGISTER_T* noundef %7, i32 noundef 1) #19, !dbg !4717
  br label %13, !dbg !4718

12:                                               ; preds = %1
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.79, i32 0, i32 0), i32 noundef 276, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.uart_interrupt_handler, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.80, i32 0, i32 0)) #21, !dbg !4719
  unreachable, !dbg !4719

13:                                               ; preds = %11, %1, %1, %10, %9
  ret void, !dbg !4720
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @eint_ack_interrupt(i32 noundef %0) local_unnamed_addr #10 !dbg !4721 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4725, metadata !DIExpression()), !dbg !4726
  %2 = shl nuw i32 1, %0, !dbg !4727
  %3 = load %struct.EINT_REGISTER_T*, %struct.EINT_REGISTER_T** @EINT_REGISTER, align 4, !dbg !4728
  %4 = getelementptr inbounds %struct.EINT_REGISTER_T, %struct.EINT_REGISTER_T* %3, i32 0, i32 2, !dbg !4729
  store volatile i32 %2, i32* %4, align 4, !dbg !4730
  ret void, !dbg !4731
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_eint_init(i32 noundef %0, %struct.vdma_config_t* noundef readonly %1) local_unnamed_addr #0 !dbg !852 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !865, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata %struct.vdma_config_t* %1, metadata !866, metadata !DIExpression()), !dbg !4732
  %3 = load i1, i1* @hal_eint_init.ini_state, align 4, !dbg !4733
  br i1 %3, label %7, label %4, !dbg !4735

4:                                                ; preds = %2
  %5 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 12, void (i32)* noundef nonnull @hal_eint_isr) #19, !dbg !4736
  %6 = tail call i32 @hal_nvic_enable_irq(i32 noundef 12) #19, !dbg !4738
  store i1 true, i1* @hal_eint_init.ini_state, align 4, !dbg !4739
  br label %7, !dbg !4740

7:                                                ; preds = %4, %2
  %8 = icmp ugt i32 %0, 31, !dbg !4741
  %9 = icmp eq %struct.vdma_config_t* %1, null
  %10 = or i1 %8, %9, !dbg !4743
  br i1 %10, label %22, label %11, !dbg !4743

11:                                               ; preds = %7
  %12 = tail call i32 @save_and_set_interrupt_mask() #19, !dbg !4744
  call void @llvm.dbg.value(metadata i32 %12, metadata !868, metadata !DIExpression()), !dbg !4732
  %13 = getelementptr inbounds [32 x %struct.gpt_callback_context_t], [32 x %struct.gpt_callback_context_t]* @eint_function_table, i32 0, i32 %0, i32 0, !dbg !4745
  store void (i8*)* null, void (i8*)** %13, align 4, !dbg !4746
  %14 = getelementptr inbounds [32 x %struct.gpt_callback_context_t], [32 x %struct.gpt_callback_context_t]* @eint_function_table, i32 0, i32 %0, i32 1, !dbg !4747
  store i8* null, i8** %14, align 4, !dbg !4748
  %15 = getelementptr inbounds %struct.vdma_config_t, %struct.vdma_config_t* %1, i32 0, i32 0, !dbg !4749
  %16 = load i32, i32* %15, align 4, !dbg !4749
  %17 = tail call i32 @hal_eint_set_trigger_mode(i32 noundef %0, i32 noundef %16) #18, !dbg !4750
  call void @llvm.dbg.value(metadata i32 %17, metadata !867, metadata !DIExpression()), !dbg !4732
  %18 = getelementptr inbounds %struct.vdma_config_t, %struct.vdma_config_t* %1, i32 0, i32 1, !dbg !4751
  %19 = load i32, i32* %18, align 4, !dbg !4751
  %20 = tail call i32 @hal_eint_set_debounce_time(i32 noundef %0, i32 noundef %19) #18, !dbg !4752
  %21 = or i32 %20, %17, !dbg !4753
  call void @llvm.dbg.value(metadata i32 %21, metadata !867, metadata !DIExpression()), !dbg !4732
  tail call void @eint_ack_interrupt(i32 noundef %0) #18, !dbg !4754
  tail call fastcc void @eint_enable_domain(i32 noundef %0) #18, !dbg !4755
  tail call void @restore_interrupt_mask(i32 noundef %12) #19, !dbg !4756
  br label %22, !dbg !4757

22:                                               ; preds = %7, %11
  %23 = phi i32 [ %21, %11 ], [ -2, %7 ], !dbg !4732
  ret i32 %23, !dbg !4758
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_eint_isr(i32 noundef %0) #0 !dbg !4759 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4761, metadata !DIExpression()), !dbg !4764
  call void @llvm.dbg.value(metadata i32 0, metadata !4763, metadata !DIExpression()), !dbg !4764
  %2 = tail call fastcc i32 @eint_get_status() #18, !dbg !4765
  call void @llvm.dbg.value(metadata i32 %2, metadata !4762, metadata !DIExpression()), !dbg !4764
  %3 = icmp eq i32 %2, 0, !dbg !4766
  br i1 %3, label %21, label %4, !dbg !4768

4:                                                ; preds = %1, %18
  %5 = phi i32 [ %19, %18 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !4763, metadata !DIExpression()), !dbg !4764
  %6 = shl nuw i32 1, %5, !dbg !4769
  %7 = and i32 %6, %2, !dbg !4774
  %8 = icmp eq i32 %7, 0, !dbg !4774
  br i1 %8, label %18, label %9, !dbg !4775

9:                                                ; preds = %4
  %10 = tail call i32 @hal_eint_mask(i32 noundef %5) #18, !dbg !4776
  tail call void @eint_ack_interrupt(i32 noundef %5) #18, !dbg !4778
  %11 = getelementptr inbounds [32 x %struct.gpt_callback_context_t], [32 x %struct.gpt_callback_context_t]* @eint_function_table, i32 0, i32 %5, i32 0, !dbg !4779
  %12 = load void (i8*)*, void (i8*)** %11, align 4, !dbg !4779
  %13 = icmp eq void (i8*)* %12, null, !dbg !4781
  br i1 %13, label %17, label %14, !dbg !4782

14:                                               ; preds = %9
  %15 = getelementptr inbounds [32 x %struct.gpt_callback_context_t], [32 x %struct.gpt_callback_context_t]* @eint_function_table, i32 0, i32 %5, i32 1, !dbg !4783
  %16 = load i8*, i8** %15, align 4, !dbg !4783
  tail call void %12(i8* noundef %16) #19, !dbg !4785
  br label %18, !dbg !4786

17:                                               ; preds = %9
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.hal_eint_isr, i32 0, i32 0), i32 noundef 421, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.81, i32 0, i32 0)) #19, !dbg !4787
  br label %18

18:                                               ; preds = %4, %17, %14
  %19 = add nuw nsw i32 %5, 1, !dbg !4789
  call void @llvm.dbg.value(metadata i32 %19, metadata !4763, metadata !DIExpression()), !dbg !4764
  %20 = icmp eq i32 %19, 32, !dbg !4790
  br i1 %20, label %21, label %4, !dbg !4791, !llvm.loop !4792

21:                                               ; preds = %18, %1
  ret void, !dbg !4794
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_eint_set_trigger_mode(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4795 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4799, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.value(metadata i32 %1, metadata !4800, metadata !DIExpression()), !dbg !4802
  %3 = icmp ugt i32 %0, 31, !dbg !4803
  br i1 %3, label %53, label %4, !dbg !4805

4:                                                ; preds = %2
  %5 = tail call i32 @save_and_set_interrupt_mask() #19, !dbg !4806
  call void @llvm.dbg.value(metadata i32 %5, metadata !4801, metadata !DIExpression()), !dbg !4802
  switch i32 %1, label %51 [
    i32 0, label %6
    i32 1, label %15
    i32 2, label %24
    i32 3, label %33
    i32 4, label %42
  ], !dbg !4807

6:                                                ; preds = %4
  %7 = shl nuw i32 1, %0, !dbg !4808
  %8 = load %struct.EINT_REGISTER_T*, %struct.EINT_REGISTER_T** @EINT_REGISTER, align 4, !dbg !4811
  %9 = getelementptr inbounds %struct.EINT_REGISTER_T, %struct.EINT_REGISTER_T* %8, i32 0, i32 20, !dbg !4812
  %10 = load volatile i32, i32* %9, align 4, !dbg !4813
  %11 = or i32 %10, %7, !dbg !4813
  store volatile i32 %11, i32* %9, align 4, !dbg !4813
  %12 = getelementptr inbounds %struct.EINT_REGISTER_T, %struct.EINT_REGISTER_T* %8, i32 0, i32 38, i32 %0, i32 0, i32 0, i32 0, !dbg !4814
  %13 = load volatile i32, i32* %12, align 4, !dbg !4815
  %14 = and i32 %13, -2049, !dbg !4815
  store volatile i32 %14, i32* %12, align 4, !dbg !4815
  br label %51, !dbg !4816

15:                                               ; preds = %4
  %16 = shl nuw i32 1, %0, !dbg !4817
  %17 = load %struct.EINT_REGISTER_T*, %struct.EINT_REGISTER_T** @EINT_REGISTER, align 4, !dbg !4820
  %18 = getelementptr inbounds %struct.EINT_REGISTER_T, %struct.EINT_REGISTER_T* %17, i32 0, i32 20, !dbg !4821
  %19 = load volatile i32, i32* %18, align 4, !dbg !4822
  %20 = or i32 %19, %16, !dbg !4822
  store volatile i32 %20, i32* %18, align 4, !dbg !4822
  %21 = getelementptr inbounds %struct.EINT_REGISTER_T, %struct.EINT_REGISTER_T* %17, i32 0, i32 38, i32 %0, i32 0, i32 0, i32 0, !dbg !4823
  %22 = load volatile i32, i32* %21, align 4, !dbg !4824
  %23 = or i32 %22, 2048, !dbg !4824
  store volatile i32 %23, i32* %21, align 4, !dbg !4824
  br label %51, !dbg !4825

24:                                               ; preds = %4
  %25 = shl nuw i32 1, %0, !dbg !4826
  %26 = load %struct.EINT_REGISTER_T*, %struct.EINT_REGISTER_T** @EINT_REGISTER, align 4, !dbg !4829
  %27 = getelementptr inbounds %struct.EINT_REGISTER_T, %struct.EINT_REGISTER_T* %26, i32 0, i32 22, !dbg !4830
  %28 = load volatile i32, i32* %27, align 4, !dbg !4831
  %29 = or i32 %28, %25, !dbg !4831
  store volatile i32 %29, i32* %27, align 4, !dbg !4831
  %30 = getelementptr inbounds %struct.EINT_REGISTER_T, %struct.EINT_REGISTER_T* %26, i32 0, i32 38, i32 %0, i32 0, i32 0, i32 0, !dbg !4832
  %31 = load volatile i32, i32* %30, align 4, !dbg !4833
  %32 = and i32 %31, -2049, !dbg !4833
  store volatile i32 %32, i32* %30, align 4, !dbg !4833
  br label %51, !dbg !4834

33:                                               ; preds = %4
  %34 = shl nuw i32 1, %0, !dbg !4835
  %35 = load %struct.EINT_REGISTER_T*, %struct.EINT_REGISTER_T** @EINT_REGISTER, align 4, !dbg !4838
  %36 = getelementptr inbounds %struct.EINT_REGISTER_T, %struct.EINT_REGISTER_T* %35, i32 0, i32 22, !dbg !4839
  %37 = load volatile i32, i32* %36, align 4, !dbg !4840
  %38 = or i32 %37, %34, !dbg !4840
  store volatile i32 %38, i32* %36, align 4, !dbg !4840
  %39 = getelementptr inbounds %struct.EINT_REGISTER_T, %struct.EINT_REGISTER_T* %35, i32 0, i32 38, i32 %0, i32 0, i32 0, i32 0, !dbg !4841
  %40 = load volatile i32, i32* %39, align 4, !dbg !4842
  %41 = or i32 %40, 2048, !dbg !4842
  store volatile i32 %41, i32* %39, align 4, !dbg !4842
  br label %51, !dbg !4843

42:                                               ; preds = %4
  %43 = shl nuw i32 1, %0, !dbg !4844
  %44 = load %struct.EINT_REGISTER_T*, %struct.EINT_REGISTER_T** @EINT_REGISTER, align 4, !dbg !4847
  %45 = getelementptr inbounds %struct.EINT_REGISTER_T, %struct.EINT_REGISTER_T* %44, i32 0, i32 22, !dbg !4848
  %46 = load volatile i32, i32* %45, align 4, !dbg !4849
  %47 = or i32 %46, %43, !dbg !4849
  store volatile i32 %47, i32* %45, align 4, !dbg !4849
  %48 = getelementptr inbounds %struct.EINT_REGISTER_T, %struct.EINT_REGISTER_T* %44, i32 0, i32 26, !dbg !4850
  %49 = load volatile i32, i32* %48, align 4, !dbg !4851
  %50 = or i32 %49, %43, !dbg !4851
  store volatile i32 %50, i32* %48, align 4, !dbg !4851
  br label %51

51:                                               ; preds = %6, %24, %42, %33, %15, %4
  %52 = phi i32 [ -2, %4 ], [ 0, %15 ], [ 0, %33 ], [ 0, %42 ], [ 0, %24 ], [ 0, %6 ]
  tail call void @restore_interrupt_mask(i32 noundef %5) #19, !dbg !4802
  br label %53, !dbg !4852

53:                                               ; preds = %51, %2
  %54 = phi i32 [ -2, %2 ], [ %52, %51 ], !dbg !4802
  ret i32 %54, !dbg !4852
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_eint_set_debounce_time(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !4853 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4857, metadata !DIExpression()), !dbg !4862
  call void @llvm.dbg.value(metadata i32 %1, metadata !4858, metadata !DIExpression()), !dbg !4862
  %3 = icmp ugt i32 %0, 31, !dbg !4863
  br i1 %3, label %25, label %4, !dbg !4865

4:                                                ; preds = %2
  %5 = tail call fastcc i32 @eint_caculate_debounce_time(i32 noundef %1) #18, !dbg !4866
  call void @llvm.dbg.value(metadata i32 %5, metadata !4860, metadata !DIExpression()), !dbg !4862
  %6 = tail call i32 @save_and_set_interrupt_mask() #19, !dbg !4867
  call void @llvm.dbg.value(metadata i32 %6, metadata !4859, metadata !DIExpression()), !dbg !4862
  %7 = load %struct.EINT_REGISTER_T*, %struct.EINT_REGISTER_T** @EINT_REGISTER, align 4, !dbg !4868
  %8 = getelementptr inbounds %struct.EINT_REGISTER_T, %struct.EINT_REGISTER_T* %7, i32 0, i32 38, i32 %0, i32 0, i32 0, i32 0, !dbg !4869
  %9 = load volatile i32, i32* %8, align 4, !dbg !4869
  call void @llvm.dbg.value(metadata i32 %9, metadata !4861, metadata !DIExpression()), !dbg !4862
  %10 = and i32 %9, -2048, !dbg !4870
  call void @llvm.dbg.value(metadata i32 %10, metadata !4861, metadata !DIExpression()), !dbg !4862
  %11 = or i32 %10, %5, !dbg !4871
  call void @llvm.dbg.value(metadata i32 %11, metadata !4861, metadata !DIExpression()), !dbg !4862
  %12 = icmp eq i32 %1, 0, !dbg !4872
  br i1 %12, label %13, label %15, !dbg !4874

13:                                               ; preds = %4
  %14 = and i32 %11, -32769, !dbg !4875
  call void @llvm.dbg.value(metadata i32 %14, metadata !4861, metadata !DIExpression()), !dbg !4862
  store volatile i32 %14, i32* %8, align 4, !dbg !4877
  br label %24, !dbg !4878

15:                                               ; preds = %4
  %16 = and i32 %11, -2048, !dbg !4879
  store volatile i32 %16, i32* %8, align 4, !dbg !4881
  %17 = tail call i32 @hal_gpt_delay_us(i32 noundef 125) #19, !dbg !4882
  %18 = load %struct.EINT_REGISTER_T*, %struct.EINT_REGISTER_T** @EINT_REGISTER, align 4, !dbg !4883
  %19 = getelementptr inbounds %struct.EINT_REGISTER_T, %struct.EINT_REGISTER_T* %18, i32 0, i32 38, i32 %0, i32 0, i32 0, i32 0, !dbg !4884
  store volatile i32 %11, i32* %19, align 4, !dbg !4885
  %20 = load %struct.EINT_REGISTER_T*, %struct.EINT_REGISTER_T** @EINT_REGISTER, align 4, !dbg !4886
  %21 = getelementptr inbounds %struct.EINT_REGISTER_T, %struct.EINT_REGISTER_T* %20, i32 0, i32 38, i32 %0, i32 0, i32 0, i32 0, !dbg !4887
  %22 = load volatile i32, i32* %21, align 4, !dbg !4888
  %23 = or i32 %22, -2147483648, !dbg !4888
  store volatile i32 %23, i32* %21, align 4, !dbg !4888
  br label %24

24:                                               ; preds = %15, %13
  tail call void @restore_interrupt_mask(i32 noundef %6) #19, !dbg !4889
  br label %25, !dbg !4890

25:                                               ; preds = %2, %24
  %26 = phi i32 [ 0, %24 ], [ -2, %2 ], !dbg !4862
  ret i32 %26, !dbg !4891
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @eint_enable_domain(i32 noundef %0) unnamed_addr #10 !dbg !4892 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4897, metadata !DIExpression()), !dbg !4899
  call void @llvm.dbg.value(metadata i32 1, metadata !4898, metadata !DIExpression()), !dbg !4899
  %2 = shl nuw i32 1, %0, !dbg !4900
  %3 = load %struct.EINT_REGISTER_T*, %struct.EINT_REGISTER_T** @EINT_REGISTER, align 4, !dbg !4903
  %4 = getelementptr inbounds %struct.EINT_REGISTER_T, %struct.EINT_REGISTER_T* %3, i32 0, i32 36, !dbg !4904
  %5 = load volatile i32, i32* %4, align 4, !dbg !4905
  %6 = or i32 %5, %2, !dbg !4905
  store volatile i32 %6, i32* %4, align 4, !dbg !4905
  ret void, !dbg !4906
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @eint_caculate_debounce_time(i32 noundef %0) unnamed_addr #8 !dbg !4907 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4909, metadata !DIExpression()), !dbg !4912
  %2 = icmp eq i32 %0, 0, !dbg !4913
  br i1 %2, label %47, label %3, !dbg !4915

3:                                                ; preds = %1
  %4 = icmp ult i32 %0, 63, !dbg !4916
  br i1 %4, label %5, label %7, !dbg !4918

5:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 0, metadata !4910, metadata !DIExpression()), !dbg !4912
  %6 = mul nuw nsw i32 %0, 33, !dbg !4919
  call void @llvm.dbg.value(metadata i32 %6, metadata !4911, metadata !DIExpression()), !dbg !4912
  br label %47, !dbg !4921

7:                                                ; preds = %3
  %8 = icmp ult i32 %0, 126, !dbg !4922
  br i1 %8, label %9, label %12, !dbg !4924

9:                                                ; preds = %7
  call void @llvm.dbg.value(metadata i32 1, metadata !4910, metadata !DIExpression()), !dbg !4912
  %10 = shl nuw nsw i32 %0, 4, !dbg !4925
  %11 = lshr i32 %0, 1, !dbg !4927
  call void @llvm.dbg.value(metadata i32 undef, metadata !4911, metadata !DIExpression()), !dbg !4912
  br label %41, !dbg !4928

12:                                               ; preds = %7
  %13 = icmp ult i32 %0, 251, !dbg !4929
  br i1 %13, label %14, label %17, !dbg !4931

14:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i32 2, metadata !4910, metadata !DIExpression()), !dbg !4912
  %15 = shl nuw nsw i32 %0, 3, !dbg !4932
  %16 = lshr i32 %0, 2, !dbg !4934
  call void @llvm.dbg.value(metadata i32 %45, metadata !4911, metadata !DIExpression()), !dbg !4912
  br label %41, !dbg !4935

17:                                               ; preds = %12
  %18 = icmp ult i32 %0, 501, !dbg !4936
  br i1 %18, label %19, label %22, !dbg !4938

19:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i32 3, metadata !4910, metadata !DIExpression()), !dbg !4912
  %20 = shl nuw nsw i32 %0, 2, !dbg !4939
  %21 = lshr i32 %0, 3, !dbg !4941
  call void @llvm.dbg.value(metadata i32 undef, metadata !4911, metadata !DIExpression()), !dbg !4912
  br label %41, !dbg !4942

22:                                               ; preds = %17
  %23 = icmp ult i32 %0, 1001, !dbg !4943
  br i1 %23, label %24, label %27, !dbg !4945

24:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i32 4, metadata !4910, metadata !DIExpression()), !dbg !4912
  %25 = shl nuw nsw i32 %0, 1, !dbg !4946
  %26 = lshr i32 %0, 4, !dbg !4948
  call void @llvm.dbg.value(metadata i32 undef, metadata !4911, metadata !DIExpression()), !dbg !4912
  br label %41, !dbg !4949

27:                                               ; preds = %22
  %28 = icmp ult i32 %0, 2001, !dbg !4950
  br i1 %28, label %29, label %31, !dbg !4952

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !4910, metadata !DIExpression()), !dbg !4912
  %30 = lshr i32 %0, 5, !dbg !4953
  call void @llvm.dbg.value(metadata i32 undef, metadata !4911, metadata !DIExpression()), !dbg !4912
  br label %41, !dbg !4955

31:                                               ; preds = %27
  %32 = icmp ult i32 %0, 4001, !dbg !4956
  br i1 %32, label %33, label %36, !dbg !4958

33:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i32 6, metadata !4910, metadata !DIExpression()), !dbg !4912
  %34 = lshr i32 %0, 1, !dbg !4959
  %35 = lshr i32 %0, 6, !dbg !4961
  call void @llvm.dbg.value(metadata i32 undef, metadata !4911, metadata !DIExpression()), !dbg !4912
  br label %41, !dbg !4962

36:                                               ; preds = %31
  %37 = icmp ult i32 %0, 8001, !dbg !4963
  br i1 %37, label %38, label %50, !dbg !4965

38:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i32 7, metadata !4910, metadata !DIExpression()), !dbg !4912
  %39 = lshr i32 %0, 2, !dbg !4966
  %40 = lshr i32 %0, 7, !dbg !4968
  call void @llvm.dbg.value(metadata i32 undef, metadata !4911, metadata !DIExpression()), !dbg !4912
  br label %41, !dbg !4969

41:                                               ; preds = %14, %24, %33, %38, %29, %19, %9
  %42 = phi i32 [ %16, %14 ], [ %26, %24 ], [ %35, %33 ], [ %40, %38 ], [ %0, %29 ], [ %21, %19 ], [ %11, %9 ]
  %43 = phi i32 [ %15, %14 ], [ %25, %24 ], [ %34, %33 ], [ %39, %38 ], [ %30, %29 ], [ %20, %19 ], [ %10, %9 ]
  %44 = phi i32 [ 8192, %14 ], [ 16384, %24 ], [ 24576, %33 ], [ 28672, %38 ], [ 20480, %29 ], [ 12288, %19 ], [ 4096, %9 ], !dbg !4970
  %45 = add nuw nsw i32 %43, %42, !dbg !4971
  call void @llvm.dbg.value(metadata i32 %45, metadata !4911, metadata !DIExpression()), !dbg !4912
  call void @llvm.dbg.value(metadata i32 %44, metadata !4910, metadata !DIExpression()), !dbg !4912
  %46 = icmp ult i32 %45, 2047, !dbg !4972
  br i1 %46, label %47, label %50, !dbg !4972

47:                                               ; preds = %1, %5, %41
  %48 = phi i32 [ %45, %41 ], [ 0, %1 ], [ %6, %5 ]
  %49 = phi i32 [ %44, %41 ], [ 0, %1 ], [ 0, %5 ]
  br label %50, !dbg !4972

50:                                               ; preds = %36, %41, %47
  %51 = phi i32 [ %49, %47 ], [ %44, %41 ], [ 28672, %36 ]
  %52 = phi i32 [ %48, %47 ], [ 2047, %41 ], [ 2047, %36 ]
  call void @llvm.dbg.value(metadata i32 %52, metadata !4911, metadata !DIExpression()), !dbg !4912
  %53 = or i32 %51, %52, !dbg !4973
  %54 = or i32 %53, 32768, !dbg !4973
  call void @llvm.dbg.value(metadata i32 %54, metadata !4911, metadata !DIExpression()), !dbg !4912
  ret i32 %54, !dbg !4974
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @eint_get_status() unnamed_addr #9 !dbg !4975 {
  %1 = load %struct.EINT_REGISTER_T*, %struct.EINT_REGISTER_T** @EINT_REGISTER, align 4, !dbg !4976
  %2 = getelementptr inbounds %struct.EINT_REGISTER_T, %struct.EINT_REGISTER_T* %1, i32 0, i32 0, !dbg !4977
  %3 = load volatile i32, i32* %2, align 4, !dbg !4977
  ret i32 %3, !dbg !4978
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_eint_mask(i32 noundef %0) local_unnamed_addr #0 !dbg !4979 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4983, metadata !DIExpression()), !dbg !4985
  %2 = icmp ugt i32 %0, 31, !dbg !4986
  br i1 %2, label %11, label %3, !dbg !4988

3:                                                ; preds = %1
  %4 = tail call i32 @save_and_set_interrupt_mask() #19, !dbg !4989
  call void @llvm.dbg.value(metadata i32 %4, metadata !4984, metadata !DIExpression()), !dbg !4985
  %5 = shl nuw i32 1, %0, !dbg !4990
  %6 = load %struct.EINT_REGISTER_T*, %struct.EINT_REGISTER_T** @EINT_REGISTER, align 4, !dbg !4991
  %7 = getelementptr inbounds %struct.EINT_REGISTER_T, %struct.EINT_REGISTER_T* %6, i32 0, i32 8, !dbg !4992
  %8 = load volatile i32, i32* %7, align 4, !dbg !4993
  %9 = or i32 %8, %5, !dbg !4993
  store volatile i32 %9, i32* %7, align 4, !dbg !4993
  %10 = tail call i32 @eint_mask_wakeup_source(i32 noundef %0) #18, !dbg !4994
  tail call void @restore_interrupt_mask(i32 noundef %4) #19, !dbg !4995
  br label %11, !dbg !4996

11:                                               ; preds = %1, %3
  %12 = phi i32 [ 0, %3 ], [ -2, %1 ], !dbg !4985
  ret i32 %12, !dbg !4997
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @eint_mask_wakeup_source(i32 noundef %0) local_unnamed_addr #0 !dbg !4998 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5000, metadata !DIExpression()), !dbg !5002
  %2 = icmp ugt i32 %0, 31, !dbg !5003
  br i1 %2, label %10, label %3, !dbg !5005

3:                                                ; preds = %1
  %4 = tail call i32 @save_and_set_interrupt_mask() #19, !dbg !5006
  call void @llvm.dbg.value(metadata i32 %4, metadata !5001, metadata !DIExpression()), !dbg !5002
  %5 = shl nuw i32 1, %0, !dbg !5007
  %6 = load %struct.EINT_REGISTER_T*, %struct.EINT_REGISTER_T** @EINT_REGISTER, align 4, !dbg !5008
  %7 = getelementptr inbounds %struct.EINT_REGISTER_T, %struct.EINT_REGISTER_T* %6, i32 0, i32 14, !dbg !5009
  %8 = load volatile i32, i32* %7, align 4, !dbg !5010
  %9 = or i32 %8, %5, !dbg !5010
  store volatile i32 %9, i32* %7, align 4, !dbg !5010
  tail call void @restore_interrupt_mask(i32 noundef %4) #19, !dbg !5011
  br label %10, !dbg !5012

10:                                               ; preds = %1, %3
  %11 = phi i32 [ 0, %3 ], [ -2, %1 ], !dbg !5002
  ret i32 %11, !dbg !5013
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_eint_deinit(i32 noundef %0) local_unnamed_addr #0 !dbg !5014 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5016, metadata !DIExpression()), !dbg !5018
  %2 = icmp ugt i32 %0, 31, !dbg !5019
  br i1 %2, label %8, label %3, !dbg !5021

3:                                                ; preds = %1
  %4 = tail call i32 @save_and_set_interrupt_mask() #19, !dbg !5022
  call void @llvm.dbg.value(metadata i32 %4, metadata !5017, metadata !DIExpression()), !dbg !5018
  %5 = getelementptr inbounds [32 x %struct.gpt_callback_context_t], [32 x %struct.gpt_callback_context_t]* @eint_function_table, i32 0, i32 %0, i32 0, !dbg !5023
  store void (i8*)* null, void (i8*)** %5, align 4, !dbg !5024
  %6 = getelementptr inbounds [32 x %struct.gpt_callback_context_t], [32 x %struct.gpt_callback_context_t]* @eint_function_table, i32 0, i32 %0, i32 1, !dbg !5025
  store i8* null, i8** %6, align 4, !dbg !5026
  tail call void @eint_ack_interrupt(i32 noundef %0) #18, !dbg !5027
  %7 = tail call i32 @hal_eint_mask(i32 noundef %0) #18, !dbg !5028
  tail call void @restore_interrupt_mask(i32 noundef %4) #19, !dbg !5029
  br label %8, !dbg !5030

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !5018
  ret i32 %9, !dbg !5031
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_eint_register_callback(i32 noundef %0, void (i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #0 !dbg !5032 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5037, metadata !DIExpression()), !dbg !5041
  call void @llvm.dbg.value(metadata void (i8*)* %1, metadata !5038, metadata !DIExpression()), !dbg !5041
  call void @llvm.dbg.value(metadata i8* %2, metadata !5039, metadata !DIExpression()), !dbg !5041
  %4 = icmp ugt i32 %0, 31, !dbg !5042
  %5 = icmp eq void (i8*)* %1, null
  %6 = or i1 %4, %5, !dbg !5044
  br i1 %6, label %11, label %7, !dbg !5044

7:                                                ; preds = %3
  %8 = tail call i32 @save_and_set_interrupt_mask() #19, !dbg !5045
  call void @llvm.dbg.value(metadata i32 %8, metadata !5040, metadata !DIExpression()), !dbg !5041
  %9 = getelementptr inbounds [32 x %struct.gpt_callback_context_t], [32 x %struct.gpt_callback_context_t]* @eint_function_table, i32 0, i32 %0, i32 0, !dbg !5046
  store void (i8*)* %1, void (i8*)** %9, align 4, !dbg !5047
  %10 = getelementptr inbounds [32 x %struct.gpt_callback_context_t], [32 x %struct.gpt_callback_context_t]* @eint_function_table, i32 0, i32 %0, i32 1, !dbg !5048
  store i8* %2, i8** %10, align 4, !dbg !5049
  tail call void @restore_interrupt_mask(i32 noundef %8) #19, !dbg !5050
  br label %11, !dbg !5051

11:                                               ; preds = %3, %7
  %12 = phi i32 [ 0, %7 ], [ -2, %3 ], !dbg !5041
  ret i32 %12, !dbg !5052
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_eint_set_debounce_count(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !5053 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5055, metadata !DIExpression()), !dbg !5060
  call void @llvm.dbg.value(metadata i32 %1, metadata !5056, metadata !DIExpression()), !dbg !5060
  %3 = icmp ult i32 %0, 32, !dbg !5061
  %4 = icmp ult i32 %1, 2048
  %5 = and i1 %3, %4, !dbg !5063
  br i1 %5, label %6, label %31, !dbg !5063

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 0, metadata !5059, metadata !DIExpression()), !dbg !5060
  %7 = tail call i32 @save_and_set_interrupt_mask() #19, !dbg !5064
  call void @llvm.dbg.value(metadata i32 %7, metadata !5057, metadata !DIExpression()), !dbg !5060
  %8 = load %struct.EINT_REGISTER_T*, %struct.EINT_REGISTER_T** @EINT_REGISTER, align 4, !dbg !5065
  %9 = getelementptr inbounds %struct.EINT_REGISTER_T, %struct.EINT_REGISTER_T* %8, i32 0, i32 38, i32 %0, i32 0, i32 0, i32 0, !dbg !5066
  %10 = load volatile i32, i32* %9, align 4, !dbg !5066
  call void @llvm.dbg.value(metadata i32 %10, metadata !5058, metadata !DIExpression()), !dbg !5060
  %11 = and i32 %10, -2048, !dbg !5067
  call void @llvm.dbg.value(metadata i32 %11, metadata !5058, metadata !DIExpression()), !dbg !5060
  %12 = or i32 %11, %1, !dbg !5068
  call void @llvm.dbg.value(metadata i32 %12, metadata !5058, metadata !DIExpression()), !dbg !5060
  tail call void @restore_interrupt_mask(i32 noundef %7) #19, !dbg !5069
  %13 = icmp eq i32 %1, 0, !dbg !5070
  br i1 %13, label %14, label %18, !dbg !5072

14:                                               ; preds = %6
  %15 = and i32 %12, -32769, !dbg !5073
  call void @llvm.dbg.value(metadata i32 %15, metadata !5058, metadata !DIExpression()), !dbg !5060
  %16 = load %struct.EINT_REGISTER_T*, %struct.EINT_REGISTER_T** @EINT_REGISTER, align 4, !dbg !5075
  %17 = getelementptr inbounds %struct.EINT_REGISTER_T, %struct.EINT_REGISTER_T* %16, i32 0, i32 38, i32 %0, i32 0, i32 0, i32 0, !dbg !5076
  store volatile i32 %15, i32* %17, align 4, !dbg !5077
  br label %31, !dbg !5078

18:                                               ; preds = %6
  %19 = and i32 %12, -2048, !dbg !5079
  %20 = load %struct.EINT_REGISTER_T*, %struct.EINT_REGISTER_T** @EINT_REGISTER, align 4, !dbg !5081
  %21 = getelementptr inbounds %struct.EINT_REGISTER_T, %struct.EINT_REGISTER_T* %20, i32 0, i32 38, i32 %0, i32 0, i32 0, i32 0, !dbg !5082
  store volatile i32 %19, i32* %21, align 4, !dbg !5083
  %22 = tail call i32 @hal_gpt_delay_us(i32 noundef 125) #19, !dbg !5084
  call void @llvm.dbg.value(metadata i32 %12, metadata !5058, metadata !DIExpression(DW_OP_constu, 32768, DW_OP_or, DW_OP_stack_value)), !dbg !5060
  %23 = and i32 %12, -61441, !dbg !5085
  %24 = or i32 %23, 32768, !dbg !5085
  call void @llvm.dbg.value(metadata i32 %24, metadata !5058, metadata !DIExpression()), !dbg !5060
  %25 = load %struct.EINT_REGISTER_T*, %struct.EINT_REGISTER_T** @EINT_REGISTER, align 4, !dbg !5086
  %26 = getelementptr inbounds %struct.EINT_REGISTER_T, %struct.EINT_REGISTER_T* %25, i32 0, i32 38, i32 %0, i32 0, i32 0, i32 0, !dbg !5087
  store volatile i32 %24, i32* %26, align 4, !dbg !5088
  %27 = load %struct.EINT_REGISTER_T*, %struct.EINT_REGISTER_T** @EINT_REGISTER, align 4, !dbg !5089
  %28 = getelementptr inbounds %struct.EINT_REGISTER_T, %struct.EINT_REGISTER_T* %27, i32 0, i32 38, i32 %0, i32 0, i32 0, i32 0, !dbg !5090
  %29 = load volatile i32, i32* %28, align 4, !dbg !5091
  %30 = or i32 %29, -2147483648, !dbg !5091
  store volatile i32 %30, i32* %28, align 4, !dbg !5091
  br label %31

31:                                               ; preds = %14, %18, %2
  %32 = phi i32 [ -2, %2 ], [ 0, %18 ], [ 0, %14 ], !dbg !5060
  ret i32 %32, !dbg !5092
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_eint_set_software_trigger(i32 noundef %0) local_unnamed_addr #0 !dbg !5093 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5095, metadata !DIExpression()), !dbg !5097
  %2 = icmp ugt i32 %0, 31, !dbg !5098
  br i1 %2, label %10, label %3, !dbg !5100

3:                                                ; preds = %1
  %4 = tail call i32 @save_and_set_interrupt_mask() #19, !dbg !5101
  call void @llvm.dbg.value(metadata i32 %4, metadata !5096, metadata !DIExpression()), !dbg !5097
  %5 = shl nuw i32 1, %0, !dbg !5102
  %6 = load %struct.EINT_REGISTER_T*, %struct.EINT_REGISTER_T** @EINT_REGISTER, align 4, !dbg !5103
  %7 = getelementptr inbounds %struct.EINT_REGISTER_T, %struct.EINT_REGISTER_T* %6, i32 0, i32 32, !dbg !5104
  %8 = load volatile i32, i32* %7, align 4, !dbg !5105
  %9 = or i32 %8, %5, !dbg !5105
  store volatile i32 %9, i32* %7, align 4, !dbg !5105
  tail call void @restore_interrupt_mask(i32 noundef %4) #19, !dbg !5106
  br label %10, !dbg !5107

10:                                               ; preds = %1, %3
  %11 = phi i32 [ 0, %3 ], [ -2, %1 ], !dbg !5097
  ret i32 %11, !dbg !5108
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_eint_clear_software_trigger(i32 noundef %0) local_unnamed_addr #0 !dbg !5109 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5111, metadata !DIExpression()), !dbg !5113
  %2 = icmp ugt i32 %0, 31, !dbg !5114
  br i1 %2, label %10, label %3, !dbg !5116

3:                                                ; preds = %1
  %4 = tail call i32 @save_and_set_interrupt_mask() #19, !dbg !5117
  call void @llvm.dbg.value(metadata i32 %4, metadata !5112, metadata !DIExpression()), !dbg !5113
  %5 = shl nuw i32 1, %0, !dbg !5118
  %6 = load %struct.EINT_REGISTER_T*, %struct.EINT_REGISTER_T** @EINT_REGISTER, align 4, !dbg !5119
  %7 = getelementptr inbounds %struct.EINT_REGISTER_T, %struct.EINT_REGISTER_T* %6, i32 0, i32 34, !dbg !5120
  %8 = load volatile i32, i32* %7, align 4, !dbg !5121
  %9 = or i32 %8, %5, !dbg !5121
  store volatile i32 %9, i32* %7, align 4, !dbg !5121
  tail call void @restore_interrupt_mask(i32 noundef %4) #19, !dbg !5122
  br label %10, !dbg !5123

10:                                               ; preds = %1, %3
  %11 = phi i32 [ 0, %3 ], [ -1, %1 ], !dbg !5113
  ret i32 %11, !dbg !5124
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @eint_unmask_wakeup_source(i32 noundef %0) local_unnamed_addr #0 !dbg !5125 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5127, metadata !DIExpression()), !dbg !5129
  %2 = icmp ugt i32 %0, 31, !dbg !5130
  br i1 %2, label %10, label %3, !dbg !5132

3:                                                ; preds = %1
  %4 = tail call i32 @save_and_set_interrupt_mask() #19, !dbg !5133
  call void @llvm.dbg.value(metadata i32 %4, metadata !5128, metadata !DIExpression()), !dbg !5129
  %5 = shl nuw i32 1, %0, !dbg !5134
  %6 = load %struct.EINT_REGISTER_T*, %struct.EINT_REGISTER_T** @EINT_REGISTER, align 4, !dbg !5135
  %7 = getelementptr inbounds %struct.EINT_REGISTER_T, %struct.EINT_REGISTER_T* %6, i32 0, i32 16, !dbg !5136
  %8 = load volatile i32, i32* %7, align 4, !dbg !5137
  %9 = or i32 %8, %5, !dbg !5137
  store volatile i32 %9, i32* %7, align 4, !dbg !5137
  tail call void @restore_interrupt_mask(i32 noundef %4) #19, !dbg !5138
  br label %10, !dbg !5139

10:                                               ; preds = %1, %3
  %11 = phi i32 [ 0, %3 ], [ -2, %1 ], !dbg !5129
  ret i32 %11, !dbg !5140
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_eint_unmask(i32 noundef %0) local_unnamed_addr #0 !dbg !5141 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5143, metadata !DIExpression()), !dbg !5145
  %2 = icmp ugt i32 %0, 31, !dbg !5146
  br i1 %2, label %11, label %3, !dbg !5148

3:                                                ; preds = %1
  %4 = tail call i32 @save_and_set_interrupt_mask() #19, !dbg !5149
  call void @llvm.dbg.value(metadata i32 %4, metadata !5144, metadata !DIExpression()), !dbg !5145
  %5 = shl nuw i32 1, %0, !dbg !5150
  %6 = load %struct.EINT_REGISTER_T*, %struct.EINT_REGISTER_T** @EINT_REGISTER, align 4, !dbg !5151
  %7 = getelementptr inbounds %struct.EINT_REGISTER_T, %struct.EINT_REGISTER_T* %6, i32 0, i32 10, !dbg !5152
  %8 = load volatile i32, i32* %7, align 4, !dbg !5153
  %9 = or i32 %8, %5, !dbg !5153
  store volatile i32 %9, i32* %7, align 4, !dbg !5153
  %10 = tail call i32 @eint_unmask_wakeup_source(i32 noundef %0) #18, !dbg !5154
  tail call void @restore_interrupt_mask(i32 noundef %4) #19, !dbg !5155
  br label %11, !dbg !5156

11:                                               ; preds = %1, %3
  %12 = phi i32 [ 0, %3 ], [ -2, %1 ], !dbg !5145
  ret i32 %12, !dbg !5157
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_init() local_unnamed_addr #10 !dbg !950 {
  %1 = load i1, i1* @hal_nvic_init.priority_set, align 4, !dbg !5158
  br i1 %1, label %9, label %2, !dbg !5160

2:                                                ; preds = %0, %2
  %3 = phi i32 [ %6, %2 ], [ 0, %0 ]
  call void @llvm.dbg.value(metadata i32 %3, metadata !1038, metadata !DIExpression()), !dbg !5161
  %4 = getelementptr inbounds [64 x i32], [64 x i32]* @defualt_irq_priority, i32 0, i32 %3, !dbg !5162
  %5 = load i32, i32* %4, align 4, !dbg !5162
  tail call fastcc void @NVIC_SetPriority(i32 noundef %3, i32 noundef %5) #18, !dbg !5167
  %6 = add nuw nsw i32 %3, 1, !dbg !5168
  call void @llvm.dbg.value(metadata i32 %6, metadata !1038, metadata !DIExpression()), !dbg !5161
  %7 = icmp eq i32 %6, 64, !dbg !5169
  br i1 %7, label %8, label %2, !dbg !5170, !llvm.loop !5171

8:                                                ; preds = %2
  store i1 true, i1* @hal_nvic_init.priority_set, align 4, !dbg !5173
  br label %9, !dbg !5174

9:                                                ; preds = %8, %0
  ret i32 0, !dbg !5175
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) unnamed_addr #10 !dbg !5176 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5180, metadata !DIExpression()), !dbg !5182
  call void @llvm.dbg.value(metadata i32 %1, metadata !5181, metadata !DIExpression()), !dbg !5182
  %3 = trunc i32 %1 to i8, !dbg !5183
  %4 = shl i8 %3, 2, !dbg !5183
  %5 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !5186
  store volatile i8 %4, i8* %5, align 1, !dbg !5187
  ret void, !dbg !5188
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_enable_irq(i32 noundef %0) local_unnamed_addr #10 !dbg !5189 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5193, metadata !DIExpression()), !dbg !5195
  call void @llvm.dbg.value(metadata i32 -1, metadata !5194, metadata !DIExpression()), !dbg !5195
  %2 = icmp ugt i32 %0, 63, !dbg !5196
  br i1 %2, label %4, label %3, !dbg !5196

3:                                                ; preds = %1
  tail call fastcc void @NVIC_EnableIRQ(i32 noundef %0) #18, !dbg !5198
  call void @llvm.dbg.value(metadata i32 0, metadata !5194, metadata !DIExpression()), !dbg !5195
  br label %4, !dbg !5200

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !5195
  ret i32 %5, !dbg !5201
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_EnableIRQ(i32 noundef %0) unnamed_addr #10 !dbg !5202 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5206, metadata !DIExpression()), !dbg !5207
  %2 = and i32 %0, 31, !dbg !5208
  %3 = shl nuw i32 1, %2, !dbg !5209
  %4 = lshr i32 %0, 5, !dbg !5210
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813312 to [8 x i32]*), i32 0, i32 %4, !dbg !5211
  store volatile i32 %3, i32* %5, align 4, !dbg !5212
  ret void, !dbg !5213
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_disable_irq(i32 noundef %0) local_unnamed_addr #10 !dbg !5214 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5216, metadata !DIExpression()), !dbg !5218
  call void @llvm.dbg.value(metadata i32 -1, metadata !5217, metadata !DIExpression()), !dbg !5218
  %2 = icmp ugt i32 %0, 63, !dbg !5219
  br i1 %2, label %4, label %3, !dbg !5219

3:                                                ; preds = %1
  tail call fastcc void @NVIC_DisableIRQ(i32 noundef %0) #18, !dbg !5221
  call void @llvm.dbg.value(metadata i32 0, metadata !5217, metadata !DIExpression()), !dbg !5218
  br label %4, !dbg !5223

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !5218
  ret i32 %5, !dbg !5224
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_DisableIRQ(i32 noundef %0) unnamed_addr #10 !dbg !5225 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5227, metadata !DIExpression()), !dbg !5228
  %2 = and i32 %0, 31, !dbg !5229
  %3 = shl nuw i32 1, %2, !dbg !5230
  %4 = lshr i32 %0, 5, !dbg !5231
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813184 to [8 x i32]*), i32 0, i32 %4, !dbg !5232
  store volatile i32 %3, i32* %5, align 4, !dbg !5233
  ret void, !dbg !5234
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_pending_irq(i32 noundef %0) local_unnamed_addr #9 !dbg !5235 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5239, metadata !DIExpression()), !dbg !5241
  call void @llvm.dbg.value(metadata i32 255, metadata !5240, metadata !DIExpression()), !dbg !5241
  %2 = icmp ugt i32 %0, 63, !dbg !5242
  br i1 %2, label %5, label %3, !dbg !5242

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) #18, !dbg !5244
  call void @llvm.dbg.value(metadata i32 %4, metadata !5240, metadata !DIExpression()), !dbg !5241
  br label %5, !dbg !5246

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 255, %1 ], !dbg !5241
  ret i32 %6, !dbg !5247
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) unnamed_addr #9 !dbg !5248 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5252, metadata !DIExpression()), !dbg !5253
  %2 = lshr i32 %0, 5, !dbg !5254
  %3 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %2, !dbg !5255
  %4 = load volatile i32, i32* %3, align 4, !dbg !5255
  %5 = and i32 %0, 31, !dbg !5256
  %6 = lshr i32 %4, %5, !dbg !5257
  %7 = and i32 %6, 1, !dbg !5257
  ret i32 %7, !dbg !5258
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_pending_irq(i32 noundef %0) local_unnamed_addr #10 !dbg !5259 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5261, metadata !DIExpression()), !dbg !5263
  call void @llvm.dbg.value(metadata i32 -1, metadata !5262, metadata !DIExpression()), !dbg !5263
  %2 = icmp ugt i32 %0, 63, !dbg !5264
  br i1 %2, label %4, label %3, !dbg !5264

3:                                                ; preds = %1
  tail call fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) #18, !dbg !5266
  call void @llvm.dbg.value(metadata i32 0, metadata !5262, metadata !DIExpression()), !dbg !5263
  br label %4, !dbg !5268

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !5263
  ret i32 %5, !dbg !5269
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) unnamed_addr #10 !dbg !5270 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5272, metadata !DIExpression()), !dbg !5273
  %2 = and i32 %0, 31, !dbg !5274
  %3 = shl nuw i32 1, %2, !dbg !5275
  %4 = lshr i32 %0, 5, !dbg !5276
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %4, !dbg !5277
  store volatile i32 %3, i32* %5, align 4, !dbg !5278
  ret void, !dbg !5279
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_clear_pending_irq(i32 noundef %0) local_unnamed_addr #10 !dbg !5280 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5282, metadata !DIExpression()), !dbg !5284
  call void @llvm.dbg.value(metadata i32 -1, metadata !5283, metadata !DIExpression()), !dbg !5284
  %2 = icmp ugt i32 %0, 63, !dbg !5285
  br i1 %2, label %4, label %3, !dbg !5285

3:                                                ; preds = %1
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #18, !dbg !5287
  call void @llvm.dbg.value(metadata i32 0, metadata !5283, metadata !DIExpression()), !dbg !5284
  br label %4, !dbg !5289

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !5284
  ret i32 %5, !dbg !5290
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) unnamed_addr #10 !dbg !5291 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5293, metadata !DIExpression()), !dbg !5294
  %2 = and i32 %0, 31, !dbg !5295
  %3 = shl nuw i32 1, %2, !dbg !5296
  %4 = lshr i32 %0, 5, !dbg !5297
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812928 to [8 x i32]*), i32 0, i32 %4, !dbg !5298
  store volatile i32 %3, i32* %5, align 4, !dbg !5299
  ret void, !dbg !5300
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_priority(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !5301 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5305, metadata !DIExpression()), !dbg !5308
  call void @llvm.dbg.value(metadata i32 %1, metadata !5306, metadata !DIExpression()), !dbg !5308
  call void @llvm.dbg.value(metadata i32 -1, metadata !5307, metadata !DIExpression()), !dbg !5308
  %3 = icmp ugt i32 %0, 63, !dbg !5309
  br i1 %3, label %5, label %4, !dbg !5309

4:                                                ; preds = %2
  tail call fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) #18, !dbg !5311
  call void @llvm.dbg.value(metadata i32 0, metadata !5307, metadata !DIExpression()), !dbg !5308
  br label %5, !dbg !5313

5:                                                ; preds = %2, %4
  %6 = phi i32 [ 0, %4 ], [ -3, %2 ], !dbg !5308
  ret i32 %6, !dbg !5314
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_priority(i32 noundef %0) local_unnamed_addr #9 !dbg !5315 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5317, metadata !DIExpression()), !dbg !5319
  call void @llvm.dbg.value(metadata i32 68, metadata !5318, metadata !DIExpression()), !dbg !5319
  %2 = icmp ugt i32 %0, 63, !dbg !5320
  br i1 %2, label %5, label %3, !dbg !5320

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPriority(i32 noundef %0) #18, !dbg !5322
  call void @llvm.dbg.value(metadata i32 %4, metadata !5318, metadata !DIExpression()), !dbg !5319
  br label %5, !dbg !5324

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 68, %1 ], !dbg !5319
  ret i32 %6, !dbg !5325
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPriority(i32 noundef %0) unnamed_addr #9 !dbg !5326 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5328, metadata !DIExpression()), !dbg !5329
  %2 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !5330
  %3 = load volatile i8, i8* %2, align 1, !dbg !5330
  %4 = lshr i8 %3, 2, !dbg !5333
  %5 = zext i8 %4 to i32, !dbg !5333
  ret i32 %5, !dbg !5334
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @isrC_main() local_unnamed_addr #0 section ".tcm_code" !dbg !5335 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !5337, metadata !DIExpression()), !dbg !5339
  tail call void @Flash_ReturnReady() #19, !dbg !5340
  %1 = tail call fastcc i32 @get_current_irq() #18, !dbg !5341
  call void @llvm.dbg.value(metadata i32 %1, metadata !5338, metadata !DIExpression()), !dbg !5339
  %2 = icmp ugt i32 %1, 63, !dbg !5342
  br i1 %2, label %12, label %3, !dbg !5342

3:                                                ; preds = %0
  %4 = getelementptr inbounds [64 x %struct.nvic_function_t], [64 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 0, !dbg !5344
  %5 = load void (i32)*, void (i32)** %4, align 4, !dbg !5344
  %6 = icmp eq void (i32)* %5, null, !dbg !5346
  br i1 %6, label %7, label %8, !dbg !5347

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 -4, metadata !5337, metadata !DIExpression()), !dbg !5339
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.isrC_main, i32 0, i32 0), i32 noundef 261, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.86, i32 0, i32 0)) #19, !dbg !5348
  br label %12, !dbg !5350

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @get_pending_irq() #18, !dbg !5351
  %10 = getelementptr inbounds [64 x %struct.nvic_function_t], [64 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 1, !dbg !5353
  store i32 %9, i32* %10, align 4, !dbg !5354
  %11 = load void (i32)*, void (i32)** %4, align 4, !dbg !5355
  tail call void %11(i32 noundef %1) #19, !dbg !5356
  call void @llvm.dbg.value(metadata i32 0, metadata !5337, metadata !DIExpression()), !dbg !5339
  br label %12, !dbg !5357

12:                                               ; preds = %0, %8, %7
  %13 = phi i32 [ -4, %7 ], [ 0, %8 ], [ -3, %0 ], !dbg !5339
  ret i32 %13, !dbg !5358
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_current_irq() unnamed_addr #9 !dbg !5359 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !5362
  %2 = and i32 %1, 511, !dbg !5363
  call void @llvm.dbg.value(metadata i32 %2, metadata !5361, metadata !DIExpression()), !dbg !5364
  %3 = add nsw i32 %2, -16, !dbg !5365
  ret i32 %3, !dbg !5366
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_pending_irq() unnamed_addr #9 !dbg !5367 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !5368
  %2 = lshr i32 %1, 22, !dbg !5369
  %3 = and i32 %2, 1, !dbg !5369
  ret i32 %3, !dbg !5370
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_register_isr_handler(i32 noundef %0, void (i32)* noundef %1) local_unnamed_addr #0 !dbg !5371 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5375, metadata !DIExpression()), !dbg !5378
  call void @llvm.dbg.value(metadata void (i32)* %1, metadata !5376, metadata !DIExpression()), !dbg !5378
  %3 = icmp ugt i32 %0, 63, !dbg !5379
  %4 = icmp eq void (i32)* %1, null
  %5 = or i1 %3, %4, !dbg !5379
  br i1 %5, label %10, label %6, !dbg !5379

6:                                                ; preds = %2
  %7 = tail call i32 @save_and_set_interrupt_mask() #19, !dbg !5381
  call void @llvm.dbg.value(metadata i32 %7, metadata !5377, metadata !DIExpression()), !dbg !5378
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #18, !dbg !5382
  %8 = getelementptr inbounds [64 x %struct.nvic_function_t], [64 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 0, !dbg !5383
  store void (i32)* %1, void (i32)** %8, align 4, !dbg !5384
  %9 = getelementptr inbounds [64 x %struct.nvic_function_t], [64 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 1, !dbg !5385
  store i32 0, i32* %9, align 4, !dbg !5386
  tail call void @restore_interrupt_mask(i32 noundef %7) #19, !dbg !5387
  br label %10, !dbg !5388

10:                                               ; preds = %2, %6
  %11 = phi i32 [ 0, %6 ], [ -2, %2 ], !dbg !5378
  ret i32 %11, !dbg !5389
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_save_and_set_interrupt_mask(i32* nocapture noundef writeonly %0) local_unnamed_addr #0 !dbg !5390 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !5394, metadata !DIExpression()), !dbg !5395
  %2 = tail call i32 @save_and_set_interrupt_mask() #19, !dbg !5396
  store i32 %2, i32* %0, align 4, !dbg !5397
  ret i32 0, !dbg !5398
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #0 !dbg !5399 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5403, metadata !DIExpression()), !dbg !5404
  tail call void @restore_interrupt_mask(i32 noundef %0) #19, !dbg !5405
  ret i32 0, !dbg !5406
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @save_and_set_interrupt_mask() local_unnamed_addr #0 section ".tcm_code" !dbg !5407 {
  %1 = tail call i32 asm sideeffect "MRS $0, basepri_max", "=r"() #20, !dbg !5411, !srcloc !5417
  call void @llvm.dbg.value(metadata i32 %1, metadata !5415, metadata !DIExpression()) #20, !dbg !5418
  call void @llvm.dbg.value(metadata i32 %1, metadata !5409, metadata !DIExpression()), !dbg !5419
  call void @llvm.dbg.value(metadata i32 1, metadata !5410, metadata !DIExpression()), !dbg !5419
  call void @llvm.dbg.value(metadata i32 4, metadata !5420, metadata !DIExpression()) #20, !dbg !5423
  tail call void asm sideeffect "MSR basepri, $0", "r,~{memory}"(i32 4) #20, !dbg !5425, !srcloc !5426
  tail call void asm sideeffect "dmb", ""() #20, !dbg !5427, !srcloc !5431
  tail call void asm sideeffect "isb", ""() #20, !dbg !5432, !srcloc !5435
  ret i32 %1, !dbg !5436
}

; Function Attrs: noinline nounwind optsize
define dso_local void @restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #0 section ".tcm_code" !dbg !5437 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5439, metadata !DIExpression()), !dbg !5440
  call void @llvm.dbg.value(metadata i32 %0, metadata !5420, metadata !DIExpression()) #20, !dbg !5441
  tail call void asm sideeffect "MSR basepri, $0", "r,~{memory}"(i32 %0) #20, !dbg !5443, !srcloc !5426
  tail call void asm sideeffect "dmb", ""() #20, !dbg !5444, !srcloc !5431
  tail call void asm sideeffect "isb", ""() #20, !dbg !5446, !srcloc !5435
  ret void, !dbg !5448
}

; Function Attrs: noinline nounwind optsize
define dso_local void @nvic_mask_all_interrupt() local_unnamed_addr #0 !dbg !5449 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #18, !dbg !5453
  call void @llvm.dbg.value(metadata i32 %1, metadata !5452, metadata !DIExpression()), !dbg !5454
  call void @llvm.dbg.value(metadata i32 0, metadata !5451, metadata !DIExpression()), !dbg !5454
  br label %2, !dbg !5455

2:                                                ; preds = %0, %2
  %3 = phi i32 [ 0, %0 ], [ %4, %2 ]
  call void @llvm.dbg.value(metadata i32 %3, metadata !5451, metadata !DIExpression()), !dbg !5454
  tail call fastcc void @NVIC_DisableIRQ.93(i32 noundef %3) #18, !dbg !5457
  %4 = add nuw nsw i32 %3, 1, !dbg !5460
  call void @llvm.dbg.value(metadata i32 %4, metadata !5451, metadata !DIExpression()), !dbg !5454
  %5 = icmp eq i32 %4, 64, !dbg !5461
  br i1 %5, label %6, label %2, !dbg !5455, !llvm.loop !5462

6:                                                ; preds = %2
  tail call void @restore_interrupt_mask(i32 noundef %1) #18, !dbg !5464
  ret void, !dbg !5465
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_DisableIRQ.93(i32 noundef %0) unnamed_addr #10 !dbg !5466 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5468, metadata !DIExpression()), !dbg !5469
  %2 = and i32 %0, 31, !dbg !5470
  %3 = shl nuw i32 1, %2, !dbg !5471
  %4 = lshr i32 %0, 5, !dbg !5472
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813184 to [8 x i32]*), i32 0, i32 %4, !dbg !5473
  store volatile i32 %3, i32* %5, align 4, !dbg !5474
  ret void, !dbg !5475
}

; Function Attrs: noinline nounwind optsize
define dso_local void @nvic_unmask_all_interrupt() local_unnamed_addr #0 !dbg !5476 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #18, !dbg !5480
  call void @llvm.dbg.value(metadata i32 %1, metadata !5479, metadata !DIExpression()), !dbg !5481
  call void @llvm.dbg.value(metadata i32 0, metadata !5478, metadata !DIExpression()), !dbg !5481
  br label %2, !dbg !5482

2:                                                ; preds = %0, %2
  %3 = phi i32 [ 0, %0 ], [ %4, %2 ]
  call void @llvm.dbg.value(metadata i32 %3, metadata !5478, metadata !DIExpression()), !dbg !5481
  tail call fastcc void @NVIC_EnableIRQ.94(i32 noundef %3) #18, !dbg !5484
  %4 = add nuw nsw i32 %3, 1, !dbg !5487
  call void @llvm.dbg.value(metadata i32 %4, metadata !5478, metadata !DIExpression()), !dbg !5481
  %5 = icmp eq i32 %4, 64, !dbg !5488
  br i1 %5, label %6, label %2, !dbg !5482, !llvm.loop !5489

6:                                                ; preds = %2
  tail call void @restore_interrupt_mask(i32 noundef %1) #18, !dbg !5491
  ret void, !dbg !5492
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_EnableIRQ.94(i32 noundef %0) unnamed_addr #10 !dbg !5493 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5495, metadata !DIExpression()), !dbg !5496
  %2 = and i32 %0, 31, !dbg !5497
  %3 = shl nuw i32 1, %2, !dbg !5498
  %4 = lshr i32 %0, 5, !dbg !5499
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813312 to [8 x i32]*), i32 0, i32 %4, !dbg !5500
  store volatile i32 %3, i32* %5, align 4, !dbg !5501
  ret void, !dbg !5502
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @nvic_clear_all_pending_interrupt() local_unnamed_addr #10 !dbg !5503 {
  call void @llvm.dbg.value(metadata i32 0, metadata !5505, metadata !DIExpression()), !dbg !5506
  br label %1, !dbg !5507

1:                                                ; preds = %0, %1
  %2 = phi i32 [ 0, %0 ], [ %3, %1 ]
  call void @llvm.dbg.value(metadata i32 %2, metadata !5505, metadata !DIExpression()), !dbg !5506
  tail call fastcc void @NVIC_ClearPendingIRQ.95(i32 noundef %2) #18, !dbg !5509
  %3 = add nuw nsw i32 %2, 1, !dbg !5512
  call void @llvm.dbg.value(metadata i32 %3, metadata !5505, metadata !DIExpression()), !dbg !5506
  %4 = icmp eq i32 %3, 64, !dbg !5513
  br i1 %4, label %5, label %1, !dbg !5507, !llvm.loop !5514

5:                                                ; preds = %1
  ret void, !dbg !5516
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_ClearPendingIRQ.95(i32 noundef %0) unnamed_addr #10 !dbg !5517 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5519, metadata !DIExpression()), !dbg !5520
  %2 = and i32 %0, 31, !dbg !5521
  %3 = shl nuw i32 1, %2, !dbg !5522
  %4 = lshr i32 %0, 5, !dbg !5523
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812928 to [8 x i32]*), i32 0, i32 %4, !dbg !5524
  store volatile i32 %3, i32* %5, align 4, !dbg !5525
  ret void, !dbg !5526
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @nvic_irq_software_trigger(i32 noundef %0) local_unnamed_addr #0 !dbg !5527 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5529, metadata !DIExpression()), !dbg !5530
  %2 = icmp ugt i32 %0, 63, !dbg !5531
  br i1 %2, label %4, label %3, !dbg !5531

3:                                                ; preds = %1
  tail call fastcc void @software_trigger_irq(i32 noundef %0) #18, !dbg !5533
  br label %4, !dbg !5534

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -2, %1 ], !dbg !5530
  ret i32 %5, !dbg !5535
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @software_trigger_irq(i32 noundef %0) unnamed_addr #0 !dbg !5536 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5538, metadata !DIExpression()), !dbg !5539
  %2 = and i32 %0, 511, !dbg !5540
  store volatile i32 %2, i32* inttoptr (i32 -536809728 to i32*), align 256, !dbg !5541
  tail call void asm sideeffect "dsb", ""() #20, !dbg !5542, !srcloc !5545
  ret void, !dbg !5546
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_query_exception_number() local_unnamed_addr #9 !dbg !5547 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !5548
  %2 = and i32 %1, 511, !dbg !5549
  ret i32 %2, !dbg !5550
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @SFI_Dev_WorkingFrequencyQuery() local_unnamed_addr #8 !dbg !5551 {
  ret i32 0, !dbg !5555
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @SFI_Dev_WorkingVoltageQuery() local_unnamed_addr #8 !dbg !5556 {
  ret i32 0, !dbg !5560
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local zeroext i1 @SFI_Dev_GetUniqueID(i8* nocapture noundef readnone %0) local_unnamed_addr #8 !dbg !5561 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5565, metadata !DIExpression()), !dbg !5566
  ret i1 true, !dbg !5567
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @SF_DAL_DEV_Enter_DPD() local_unnamed_addr #8 section ".tcm_code" !dbg !5568 {
  ret void, !dbg !5569
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @SF_DAL_DEV_Leave_DPD() local_unnamed_addr #8 section ".tcm_code" !dbg !5570 {
  ret void, !dbg !5571
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @SF_DAL_DEV_SWITCH_TO_LOW_FQ() local_unnamed_addr #8 section ".ram_code" !dbg !5572 {
  ret void, !dbg !5573
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @SF_DAL_DEV_SWITCH_TO_HIGH_FQ() local_unnamed_addr #8 section ".ram_code" !dbg !5574 {
  ret void, !dbg !5575
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @Flash_ReturnReady() local_unnamed_addr #8 !dbg !5576 {
  ret void, !dbg !5577
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_error_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !5578 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !5582, metadata !DIExpression()), !dbg !5595
  call void @llvm.dbg.value(metadata i32 %1, metadata !5583, metadata !DIExpression()), !dbg !5595
  call void @llvm.dbg.value(metadata i8* %2, metadata !5584, metadata !DIExpression()), !dbg !5595
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !5596
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #20, !dbg !5596
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !5585, metadata !DIExpression()), !dbg !5597
  %7 = bitcast i32* %5 to i8*, !dbg !5598
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #20, !dbg !5598
  call void @llvm.dbg.value(metadata i32* %5, metadata !5594, metadata !DIExpression(DW_OP_deref)), !dbg !5595
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #19, !dbg !5599
  call void @llvm.va_start(i8* nonnull %6), !dbg !5600
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !5601
  %10 = load i32, i32* %9, align 4, !dbg !5601
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !5601
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #19, !dbg !5601
  call void @llvm.va_end(i8* nonnull %6), !dbg !5602
  %13 = load i32, i32* %5, align 4, !dbg !5603
  call void @llvm.dbg.value(metadata i32 %13, metadata !5594, metadata !DIExpression()), !dbg !5595
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #19, !dbg !5604
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #20, !dbg !5605
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #20, !dbg !5605
  ret void, !dbg !5605
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #16

; Function Attrs: optsize
declare dso_local i32 @vprintf(i8* noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #16

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_warning_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !5606 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !5608, metadata !DIExpression()), !dbg !5613
  call void @llvm.dbg.value(metadata i32 %1, metadata !5609, metadata !DIExpression()), !dbg !5613
  call void @llvm.dbg.value(metadata i8* %2, metadata !5610, metadata !DIExpression()), !dbg !5613
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !5614
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #20, !dbg !5614
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !5611, metadata !DIExpression()), !dbg !5615
  %7 = bitcast i32* %5 to i8*, !dbg !5616
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #20, !dbg !5616
  call void @llvm.dbg.value(metadata i32* %5, metadata !5612, metadata !DIExpression(DW_OP_deref)), !dbg !5613
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #19, !dbg !5617
  call void @llvm.va_start(i8* nonnull %6), !dbg !5618
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !5619
  %10 = load i32, i32* %9, align 4, !dbg !5619
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !5619
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #19, !dbg !5619
  call void @llvm.va_end(i8* nonnull %6), !dbg !5620
  %13 = load i32, i32* %5, align 4, !dbg !5621
  call void @llvm.dbg.value(metadata i32 %13, metadata !5612, metadata !DIExpression()), !dbg !5613
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #19, !dbg !5622
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #20, !dbg !5623
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #20, !dbg !5623
  ret void, !dbg !5623
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_info_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !5624 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !5626, metadata !DIExpression()), !dbg !5631
  call void @llvm.dbg.value(metadata i32 %1, metadata !5627, metadata !DIExpression()), !dbg !5631
  call void @llvm.dbg.value(metadata i8* %2, metadata !5628, metadata !DIExpression()), !dbg !5631
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !5632
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #20, !dbg !5632
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !5629, metadata !DIExpression()), !dbg !5633
  %7 = bitcast i32* %5 to i8*, !dbg !5634
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #20, !dbg !5634
  call void @llvm.dbg.value(metadata i32* %5, metadata !5630, metadata !DIExpression(DW_OP_deref)), !dbg !5631
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #19, !dbg !5635
  call void @llvm.va_start(i8* nonnull %6), !dbg !5636
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !5637
  %10 = load i32, i32* %9, align 4, !dbg !5637
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !5637
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #19, !dbg !5637
  call void @llvm.va_end(i8* nonnull %6), !dbg !5638
  %13 = load i32, i32* %5, align 4, !dbg !5639
  call void @llvm.dbg.value(metadata i32 %13, metadata !5630, metadata !DIExpression()), !dbg !5631
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #19, !dbg !5640
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #20, !dbg !5641
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #20, !dbg !5641
  ret void, !dbg !5641
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @log_hal_dump_internal(i8* nocapture noundef %0, i32 noundef %1, i8* nocapture noundef %2, i8* nocapture noundef %3, i32 noundef %4, ...) local_unnamed_addr #8 !dbg !5642 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5648, metadata !DIExpression()), !dbg !5653
  call void @llvm.dbg.value(metadata i32 %1, metadata !5649, metadata !DIExpression()), !dbg !5653
  call void @llvm.dbg.value(metadata i8* %2, metadata !5650, metadata !DIExpression()), !dbg !5653
  call void @llvm.dbg.value(metadata i8* %3, metadata !5651, metadata !DIExpression()), !dbg !5653
  call void @llvm.dbg.value(metadata i32 %4, metadata !5652, metadata !DIExpression()), !dbg !5653
  ret void, !dbg !5654
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @__EMI_GetSR(i32 noundef %0) local_unnamed_addr #10 section ".tcm_code" !dbg !5655 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5657, metadata !DIExpression()), !dbg !5659
  %2 = shl i32 %0, 20, !dbg !5660
  %3 = load %struct.EMI_REGISTER_T*, %struct.EMI_REGISTER_T** @emi_register, align 4, !dbg !5661
  %4 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %3, i32 0, i32 33, !dbg !5662
  store volatile i32 %2, i32* %4, align 4, !dbg !5663
  %5 = load volatile i32, i32* %4, align 4, !dbg !5664
  %6 = or i32 %5, 65536, !dbg !5665
  store volatile i32 %6, i32* %4, align 4, !dbg !5666
  br label %7, !dbg !5667

7:                                                ; preds = %7, %1
  %8 = load volatile i32, i32* %4, align 4, !dbg !5668
  %9 = and i32 %8, 1, !dbg !5669
  %10 = icmp eq i32 %9, 0, !dbg !5670
  br i1 %10, label %7, label %11, !dbg !5667, !llvm.loop !5671

11:                                               ; preds = %7
  %12 = load volatile i32, i32* %4, align 4, !dbg !5673
  %13 = lshr i32 %12, 8, !dbg !5674
  %14 = and i32 %13, 255, !dbg !5674
  call void @llvm.dbg.value(metadata i32 %14, metadata !5658, metadata !DIExpression()), !dbg !5659
  ret i32 %14, !dbg !5675
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @__EMI_SetSR(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 section ".tcm_code" !dbg !5676 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5680, metadata !DIExpression()), !dbg !5682
  call void @llvm.dbg.value(metadata i32 %1, metadata !5681, metadata !DIExpression()), !dbg !5682
  call void @llvm.dbg.value(metadata i32 %1, metadata !5681, metadata !DIExpression(DW_OP_constu, 255, DW_OP_and, DW_OP_stack_value)), !dbg !5682
  %3 = shl i32 %1, 24, !dbg !5683
  %4 = shl i32 %0, 20, !dbg !5684
  %5 = or i32 %4, %3, !dbg !5685
  %6 = or i32 %5, 131072, !dbg !5685
  %7 = load %struct.EMI_REGISTER_T*, %struct.EMI_REGISTER_T** @emi_register, align 4, !dbg !5686
  %8 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %7, i32 0, i32 33, !dbg !5687
  store volatile i32 %6, i32* %8, align 4, !dbg !5688
  %9 = load volatile i32, i32* %8, align 4, !dbg !5689
  %10 = or i32 %9, 65536, !dbg !5690
  store volatile i32 %10, i32* %8, align 4, !dbg !5691
  br label %11, !dbg !5692

11:                                               ; preds = %11, %2
  %12 = load volatile i32, i32* %8, align 4, !dbg !5693
  %13 = and i32 %12, 1, !dbg !5694
  %14 = icmp eq i32 %13, 0, !dbg !5695
  br i1 %14, label %11, label %15, !dbg !5692, !llvm.loop !5696

15:                                               ; preds = %11
  ret void, !dbg !5698
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn
define dso_local void @__EMI_SetRegValfromCMCP() local_unnamed_addr #5 section ".tcm_code" !dbg !5699 {
  %1 = load i32, i32* getelementptr inbounds ([1 x %struct.EMI_SETTINGS], [1 x %struct.EMI_SETTINGS]* @emi_settings, i32 0, i32 0, i32 0), align 4, !dbg !5700
  store i32 %1, i32* @EMI_GENA_VAL, align 4, !dbg !5701
  %2 = load i32, i32* getelementptr inbounds ([1 x %struct.EMI_SETTINGS], [1 x %struct.EMI_SETTINGS]* @emi_settings, i32 0, i32 0, i32 1), align 4, !dbg !5702
  store i32 %2, i32* @EMI_RDCT_VAL, align 4, !dbg !5703
  %3 = load i32, i32* getelementptr inbounds ([1 x %struct.EMI_SETTINGS], [1 x %struct.EMI_SETTINGS]* @emi_settings, i32 0, i32 0, i32 2), align 4, !dbg !5704
  store i32 %3, i32* @EMI_DSRAM_VAL, align 4, !dbg !5705
  %4 = load i32, i32* getelementptr inbounds ([1 x %struct.EMI_SETTINGS], [1 x %struct.EMI_SETTINGS]* @emi_settings, i32 0, i32 0, i32 3), align 4, !dbg !5706
  store i32 %4, i32* @EMI_MSRAM_VAL, align 4, !dbg !5707
  %5 = load i32, i32* getelementptr inbounds ([1 x %struct.EMI_SETTINGS], [1 x %struct.EMI_SETTINGS]* @emi_settings, i32 0, i32 0, i32 4), align 4, !dbg !5708
  store i32 %5, i32* @EMI_IDL_C_VAL, align 4, !dbg !5709
  %6 = load i32, i32* getelementptr inbounds ([1 x %struct.EMI_SETTINGS], [1 x %struct.EMI_SETTINGS]* @emi_settings, i32 0, i32 0, i32 5), align 4, !dbg !5710
  store i32 %6, i32* @EMI_IDL_D_VAL, align 4, !dbg !5711
  %7 = load i32, i32* getelementptr inbounds ([1 x %struct.EMI_SETTINGS], [1 x %struct.EMI_SETTINGS]* @emi_settings, i32 0, i32 0, i32 6), align 4, !dbg !5712
  store i32 %7, i32* @EMI_IDL_E_VAL, align 4, !dbg !5713
  %8 = load i32, i32* getelementptr inbounds ([1 x %struct.EMI_SETTINGS], [1 x %struct.EMI_SETTINGS]* @emi_settings, i32 0, i32 0, i32 7), align 4, !dbg !5714
  store i32 %8, i32* @EMI_ODL_C_VAL, align 4, !dbg !5715
  %9 = load i32, i32* getelementptr inbounds ([1 x %struct.EMI_SETTINGS], [1 x %struct.EMI_SETTINGS]* @emi_settings, i32 0, i32 0, i32 8), align 4, !dbg !5716
  store i32 %9, i32* @EMI_ODL_D_VAL, align 4, !dbg !5717
  %10 = load i32, i32* getelementptr inbounds ([1 x %struct.EMI_SETTINGS], [1 x %struct.EMI_SETTINGS]* @emi_settings, i32 0, i32 0, i32 9), align 4, !dbg !5718
  store i32 %10, i32* @EMI_ODL_E_VAL, align 4, !dbg !5719
  %11 = load i32, i32* getelementptr inbounds ([1 x %struct.EMI_SETTINGS], [1 x %struct.EMI_SETTINGS]* @emi_settings, i32 0, i32 0, i32 10), align 4, !dbg !5720
  store i32 %11, i32* @EMI_ODL_F_VAL, align 4, !dbg !5721
  %12 = load i32, i32* getelementptr inbounds ([1 x %struct.EMI_SETTINGS], [1 x %struct.EMI_SETTINGS]* @emi_settings, i32 0, i32 0, i32 11), align 4, !dbg !5722
  store i32 %12, i32* @EMI_IO_A_VAL, align 4, !dbg !5723
  %13 = load i32, i32* getelementptr inbounds ([1 x %struct.EMI_SETTINGS], [1 x %struct.EMI_SETTINGS]* @emi_settings, i32 0, i32 0, i32 12), align 4, !dbg !5724
  store i32 %13, i32* @EMI_IO_B_VAL, align 4, !dbg !5725
  ret void, !dbg !5726
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @__EMI_EnableBandwidthLimiter() local_unnamed_addr #10 section ".tcm_code" !dbg !5727 {
  %1 = load %struct.EMI_REGISTER_T*, %struct.EMI_REGISTER_T** @emi_register, align 4, !dbg !5730
  %2 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 35, !dbg !5731
  store volatile i32 21553, i32* %2, align 4, !dbg !5732
  %3 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 37, !dbg !5733
  store volatile i32 20489, i32* %3, align 4, !dbg !5734
  %4 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 39, !dbg !5735
  store volatile i32 20550, i32* %4, align 4, !dbg !5736
  ret i32 0, !dbg !5737
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @TestCase_MBIST() local_unnamed_addr #10 section ".tcm_code" !dbg !5738 {
  call void @llvm.dbg.declare(metadata [2 x i32]* @__const.TestCase_MBIST.mbist_data, metadata !5744, metadata !DIExpression()), !dbg !5748
  call void @llvm.dbg.value(metadata i32 0, metadata !5742, metadata !DIExpression()), !dbg !5749
  call void @llvm.dbg.value(metadata i32 16384, metadata !5743, metadata !DIExpression()), !dbg !5749
  %1 = load %struct.EMI_REGISTER_T*, %struct.EMI_REGISTER_T** @emi_register, align 4, !dbg !5750
  %2 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 65, !dbg !5751
  store volatile i32 0, i32* %2, align 4, !dbg !5752
  call void @llvm.dbg.value(metadata i32 0, metadata !5746, metadata !DIExpression()), !dbg !5749
  %3 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 67
  %4 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 71
  call void @llvm.dbg.value(metadata i32 0, metadata !5746, metadata !DIExpression()), !dbg !5749
  br label %5, !dbg !5753

5:                                                ; preds = %0, %34
  %6 = phi i32 [ 0, %0 ], [ %35, %34 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !5746, metadata !DIExpression()), !dbg !5749
  %7 = shl i32 %6, 12
  call void @llvm.dbg.value(metadata i32 0, metadata !5745, metadata !DIExpression()), !dbg !5749
  br label %8, !dbg !5755

8:                                                ; preds = %5, %31
  %9 = phi i32 [ 0, %5 ], [ %32, %31 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !5745, metadata !DIExpression()), !dbg !5749
  call void @llvm.dbg.value(metadata i32 0, metadata !5747, metadata !DIExpression()), !dbg !5749
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* @__const.TestCase_MBIST.mbist_data, i32 0, i32 %9
  br label %13, !dbg !5759

11:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 undef, metadata !5747, metadata !DIExpression()), !dbg !5749
  %12 = icmp eq i32 %30, 2, !dbg !5763
  br i1 %12, label %31, label %13, !dbg !5759, !llvm.loop !5765

13:                                               ; preds = %8, %11
  %14 = phi i32 [ 0, %8 ], [ %30, %11 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !5747, metadata !DIExpression()), !dbg !5749
  store volatile i32 0, i32* %2, align 4, !dbg !5767
  store volatile i32 63, i32* %3, align 4, !dbg !5769
  %15 = load i32, i32* %10, align 4, !dbg !5770
  %16 = shl i32 %15, 16, !dbg !5771
  %17 = shl nuw nsw i32 %14, 13, !dbg !5772
  %18 = or i32 %17, %7, !dbg !5773
  %19 = or i32 %18, %16, !dbg !5774
  store volatile i32 %19, i32* %2, align 4, !dbg !5775
  %20 = load volatile i32, i32* %2, align 4, !dbg !5776
  %21 = or i32 %20, 805, !dbg !5776
  store volatile i32 %21, i32* %2, align 4, !dbg !5776
  br label %22, !dbg !5777

22:                                               ; preds = %22, %13
  %23 = load volatile i32, i32* %4, align 4, !dbg !5778
  %24 = and i32 %23, 2, !dbg !5779
  %25 = icmp eq i32 %24, 0, !dbg !5780
  br i1 %25, label %22, label %26, !dbg !5777, !llvm.loop !5781

26:                                               ; preds = %22
  %27 = load volatile i32, i32* %4, align 4, !dbg !5783
  %28 = and i32 %27, 1, !dbg !5785
  %29 = icmp eq i32 %28, 0, !dbg !5786
  %30 = add nuw nsw i32 %14, 1, !dbg !5787
  call void @llvm.dbg.value(metadata i32 %30, metadata !5747, metadata !DIExpression()), !dbg !5749
  br i1 %29, label %11, label %37, !dbg !5788

31:                                               ; preds = %11
  %32 = add nuw nsw i32 %9, 1, !dbg !5789
  call void @llvm.dbg.value(metadata i32 %32, metadata !5745, metadata !DIExpression()), !dbg !5749
  %33 = icmp eq i32 %32, 2, !dbg !5790
  br i1 %33, label %34, label %8, !dbg !5755, !llvm.loop !5791

34:                                               ; preds = %31
  %35 = add nuw nsw i32 %6, 1, !dbg !5793
  call void @llvm.dbg.value(metadata i32 %35, metadata !5746, metadata !DIExpression()), !dbg !5749
  %36 = icmp eq i32 %35, 2, !dbg !5794
  br i1 %36, label %37, label %5, !dbg !5753, !llvm.loop !5795

37:                                               ; preds = %34, %26
  %38 = phi i32 [ -1, %26 ], [ 0, %34 ], !dbg !5749
  store volatile i32 0, i32* %2, align 4, !dbg !5749
  ret i32 %38, !dbg !5797
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @__EMI_DataAutoTrackingMbistTest() local_unnamed_addr #10 section ".tcm_code" !dbg !5798 {
  %1 = tail call i32 @TestCase_MBIST() #18, !dbg !5799
  %2 = icmp ne i32 %1, 0, !dbg !5801
  %3 = sext i1 %2 to i32, !dbg !5802
  ret i32 %3, !dbg !5803
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @__EMI_EnableDataAutoTracking() local_unnamed_addr #10 section ".tcm_code" !dbg !5804 {
  call void @llvm.dbg.value(metadata i32 31, metadata !5806, metadata !DIExpression()), !dbg !5808
  call void @llvm.dbg.value(metadata i32 0, metadata !5807, metadata !DIExpression()), !dbg !5808
  %1 = load %struct.EMI_REGISTER_T*, %struct.EMI_REGISTER_T** @emi_register, align 4, !dbg !5809
  %2 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 7, !dbg !5810
  store volatile i32 0, i32* %2, align 4, !dbg !5811
  %3 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 9, !dbg !5812
  store volatile i32 0, i32* %3, align 4, !dbg !5813
  %4 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 11, !dbg !5814
  store volatile i32 0, i32* %4, align 4, !dbg !5815
  %5 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 13, !dbg !5816
  store volatile i32 0, i32* %5, align 4, !dbg !5817
  call void @llvm.dbg.value(metadata i32 31, metadata !5806, metadata !DIExpression()), !dbg !5808
  %6 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 9, !dbg !5818
  store volatile i32 522133279, i32* %6, align 4, !dbg !5822
  %7 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 11, !dbg !5823
  store volatile i32 522133279, i32* %7, align 4, !dbg !5824
  %8 = tail call i32 @__EMI_DataAutoTrackingMbistTest() #18, !dbg !5825
  %9 = icmp eq i32 %8, 0, !dbg !5827
  call void @llvm.dbg.value(metadata i32 31, metadata !5806, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5808
  br i1 %9, label %36, label %10, !dbg !5828

10:                                               ; preds = %0, %13
  %11 = phi i32 [ %14, %13 ], [ 31, %0 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !5806, metadata !DIExpression()), !dbg !5808
  call void @llvm.dbg.value(metadata i32 %11, metadata !5806, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5808
  call void @llvm.dbg.value(metadata i32 %11, metadata !5806, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5808
  %12 = icmp eq i32 %11, 0, !dbg !5829
  br i1 %12, label %26, label %13, !dbg !5830, !llvm.loop !5831

13:                                               ; preds = %10
  %14 = add nsw i32 %11, -1, !dbg !5833
  call void @llvm.dbg.value(metadata i32 %14, metadata !5806, metadata !DIExpression()), !dbg !5808
  %15 = load %struct.EMI_REGISTER_T*, %struct.EMI_REGISTER_T** @emi_register, align 4, !dbg !5834
  %16 = shl i32 %14, 24, !dbg !5835
  %17 = shl i32 %14, 16, !dbg !5836
  %18 = shl i32 %14, 8, !dbg !5837
  %19 = or i32 %17, %14, !dbg !5838
  %20 = or i32 %19, %16, !dbg !5839
  %21 = or i32 %20, %18, !dbg !5840
  %22 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %15, i32 0, i32 9, !dbg !5818
  store volatile i32 %21, i32* %22, align 4, !dbg !5822
  %23 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %15, i32 0, i32 11, !dbg !5823
  store volatile i32 %21, i32* %23, align 4, !dbg !5824
  %24 = tail call i32 @__EMI_DataAutoTrackingMbistTest() #18, !dbg !5825
  %25 = icmp eq i32 %24, 0, !dbg !5827
  call void @llvm.dbg.value(metadata i32 %14, metadata !5806, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !5808
  br i1 %25, label %36, label %10, !dbg !5828

26:                                               ; preds = %10, %26
  %27 = phi i32 [ %33, %26 ], [ 1, %10 ]
  call void @llvm.dbg.value(metadata i32 %27, metadata !5807, metadata !DIExpression()), !dbg !5808
  %28 = shl nuw nsw i32 %27, 16, !dbg !5841
  %29 = load %struct.EMI_REGISTER_T*, %struct.EMI_REGISTER_T** @emi_register, align 4, !dbg !5847
  %30 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %29, i32 0, i32 13, !dbg !5848
  store volatile i32 %28, i32* %30, align 4, !dbg !5849
  %31 = tail call i32 @__EMI_DataAutoTrackingMbistTest() #18, !dbg !5850
  %32 = icmp eq i32 %31, 0, !dbg !5852
  call void @llvm.dbg.value(metadata i32 %27, metadata !5807, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !5808
  %33 = add nuw nsw i32 %27, 1
  %34 = icmp eq i32 %33, 32
  %35 = select i1 %32, i1 true, i1 %34, !dbg !5853
  call void @llvm.dbg.value(metadata i32 %33, metadata !5807, metadata !DIExpression()), !dbg !5808
  call void @llvm.dbg.value(metadata i32 %27, metadata !5807, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !5808
  br i1 %35, label %36, label %26, !dbg !5853, !llvm.loop !5854

36:                                               ; preds = %13, %26, %0
  ret void, !dbg !5857
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @EMI_PowerOn_Init() local_unnamed_addr #10 section ".tcm_code" !dbg !5858 {
  store volatile i32 0, i32* inttoptr (i32 -1575944184 to i32*), align 8, !dbg !5859
  %1 = load %struct.EMI_REGISTER_T*, %struct.EMI_REGISTER_T** @emi_register, align 4, !dbg !5860
  %2 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 27, !dbg !5861
  store volatile i32 1, i32* %2, align 4, !dbg !5862
  br label %3, !dbg !5863

3:                                                ; preds = %3, %0
  %4 = load volatile i32, i32* %2, align 4, !dbg !5864
  %5 = and i32 %4, 2, !dbg !5865
  %6 = icmp eq i32 %5, 0, !dbg !5865
  br i1 %6, label %3, label %7, !dbg !5863, !llvm.loop !5866

7:                                                ; preds = %3
  store volatile i32 0, i32* %2, align 4, !dbg !5868
  br label %8, !dbg !5869

8:                                                ; preds = %8, %7
  %9 = load volatile i32, i32* %2, align 4, !dbg !5870
  %10 = and i32 %9, 2, !dbg !5871
  %11 = icmp eq i32 %10, 0, !dbg !5871
  br i1 %11, label %12, label %8, !dbg !5869, !llvm.loop !5872

12:                                               ; preds = %8
  store volatile i32 1515870810, i32* null, align 2147483648, !dbg !5874
  store volatile i32 1515870810, i32* inttoptr (i32 4 to i32*), align 4, !dbg !5875
  %13 = load %struct.EMI_REGISTER_T*, %struct.EMI_REGISTER_T** @emi_register, align 4
  %14 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %13, i32 0, i32 33
  br label %15, !dbg !5876

15:                                               ; preds = %15, %12
  %16 = load volatile i32, i32* %14, align 4, !dbg !5877
  %17 = and i32 %16, 1, !dbg !5878
  %18 = icmp eq i32 %17, 0, !dbg !5879
  br i1 %18, label %15, label %19, !dbg !5876, !llvm.loop !5880

19:                                               ; preds = %15
  tail call void @__EMI_SetSR(i32 noundef 0, i32 noundef 15) #18, !dbg !5882
  tail call void @__EMI_SetSR(i32 noundef 4, i32 noundef 8) #18, !dbg !5883
  %20 = load %struct.EMI_REGISTER_T*, %struct.EMI_REGISTER_T** @emi_register, align 4
  %21 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %20, i32 0, i32 33
  br label %22, !dbg !5884

22:                                               ; preds = %22, %19
  %23 = load volatile i32, i32* %21, align 4, !dbg !5885
  %24 = and i32 %23, 1, !dbg !5886
  %25 = icmp eq i32 %24, 0, !dbg !5887
  br i1 %25, label %22, label %26, !dbg !5884, !llvm.loop !5888

26:                                               ; preds = %22
  %27 = load volatile i32, i32* inttoptr (i32 -1577058296 to i32*), align 8, !dbg !5890
  %28 = icmp eq i32 %27, 9507, !dbg !5892
  br i1 %28, label %29, label %37, !dbg !5893

29:                                               ; preds = %26
  %30 = load volatile i32, i32* inttoptr (i32 -1576664700 to i32*), align 4, !dbg !5894
  %31 = and i32 %30, 15, !dbg !5897
  %32 = icmp eq i32 %31, 2, !dbg !5898
  %33 = load volatile i32, i32* inttoptr (i32 -1602224060 to i32*), align 4, !dbg !5899
  %34 = and i32 %33, -128, !dbg !5899
  %35 = select i1 %32, i32 1, i32 7
  %36 = or i32 %34, %35, !dbg !5899
  store volatile i32 %36, i32* inttoptr (i32 -1602224060 to i32*), align 4, !dbg !5899
  br label %37, !dbg !5900

37:                                               ; preds = %29, %26
  ret void, !dbg !5900
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local signext i8 @custom_setEMI() local_unnamed_addr #10 section ".tcm_code" !dbg !5901 {
  tail call void @EMI_PowerOn_Init() #18, !dbg !5907
  tail call void @__EMI_SetRegValfromCMCP() #18, !dbg !5908
  %1 = tail call i32 @__EMI_GetSR(i32 noundef 0) #18, !dbg !5909
  store i32 %1, i32* @__EMI_CurSR0, align 4, !dbg !5910
  %2 = tail call i32 @__EMI_GetSR(i32 noundef 1) #18, !dbg !5911
  store i32 %2, i32* @__EMI_CurSR1, align 4, !dbg !5912
  %3 = tail call i32 @__EMI_GetSR(i32 noundef 2) #18, !dbg !5913
  store i32 %3, i32* @__EMI_CurSR2, align 4, !dbg !5914
  ret i8 0, !dbg !5915
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local signext i8 @custom_setAdvEMI() local_unnamed_addr #10 section ".tcm_code" !dbg !5916 {
  %1 = load i32, i32* @EMI_IO_A_VAL, align 4, !dbg !5917
  %2 = load %struct.EMI_REGISTER_T*, %struct.EMI_REGISTER_T** @emi_register, align 4, !dbg !5918
  %3 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %2, i32 0, i32 23, !dbg !5919
  store volatile i32 %1, i32* %3, align 4, !dbg !5920
  %4 = load i32, i32* @EMI_IO_B_VAL, align 4, !dbg !5921
  %5 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %2, i32 0, i32 25, !dbg !5922
  store volatile i32 %4, i32* %5, align 4, !dbg !5923
  %6 = load i32, i32* @EMI_GENA_VAL, align 4, !dbg !5924
  %7 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %2, i32 0, i32 3, !dbg !5925
  store volatile i32 %6, i32* %7, align 4, !dbg !5926
  %8 = load i32, i32* @EMI_RDCT_VAL, align 4, !dbg !5927
  %9 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %2, i32 0, i32 5, !dbg !5928
  store volatile i32 %8, i32* %9, align 4, !dbg !5929
  %10 = load i32, i32* @EMI_DSRAM_VAL, align 4, !dbg !5930
  %11 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %2, i32 0, i32 29, !dbg !5931
  store volatile i32 %10, i32* %11, align 4, !dbg !5932
  %12 = load i32, i32* @EMI_MSRAM_VAL, align 4, !dbg !5933
  %13 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %2, i32 0, i32 31, !dbg !5934
  store volatile i32 %12, i32* %13, align 4, !dbg !5935
  %14 = load i32, i32* @EMI_IDL_C_VAL, align 4, !dbg !5936
  %15 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %2, i32 0, i32 9, !dbg !5937
  store volatile i32 %14, i32* %15, align 4, !dbg !5938
  %16 = load i32, i32* @EMI_IDL_D_VAL, align 4, !dbg !5939
  %17 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %2, i32 0, i32 11, !dbg !5940
  store volatile i32 %16, i32* %17, align 4, !dbg !5941
  %18 = load i32, i32* @EMI_IDL_E_VAL, align 4, !dbg !5942
  %19 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %2, i32 0, i32 13, !dbg !5943
  store volatile i32 %18, i32* %19, align 4, !dbg !5944
  %20 = load i32, i32* @EMI_ODL_C_VAL, align 4, !dbg !5945
  %21 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %2, i32 0, i32 15, !dbg !5946
  store volatile i32 %20, i32* %21, align 4, !dbg !5947
  %22 = load i32, i32* @EMI_ODL_D_VAL, align 4, !dbg !5948
  %23 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %2, i32 0, i32 17, !dbg !5949
  store volatile i32 %22, i32* %23, align 4, !dbg !5950
  %24 = load i32, i32* @EMI_ODL_E_VAL, align 4, !dbg !5951
  %25 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %2, i32 0, i32 19, !dbg !5952
  store volatile i32 %24, i32* %25, align 4, !dbg !5953
  %26 = load i32, i32* @EMI_ODL_F_VAL, align 4, !dbg !5954
  %27 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %2, i32 0, i32 21, !dbg !5955
  store volatile i32 %26, i32* %27, align 4, !dbg !5956
  tail call void @__EMI_EnableDataAutoTracking() #18, !dbg !5957
  %28 = load %struct.EMI_REGISTER_T*, %struct.EMI_REGISTER_T** @emi_register, align 4, !dbg !5958
  %29 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %28, i32 0, i32 7, !dbg !5959
  store volatile i32 806289408, i32* %29, align 4, !dbg !5960
  br label %30, !dbg !5961

30:                                               ; preds = %30, %0
  %31 = load volatile i32, i32* %29, align 4, !dbg !5962
  %32 = and i32 %31, 128, !dbg !5963
  %33 = icmp eq i32 %32, 0, !dbg !5963
  br i1 %33, label %30, label %34, !dbg !5961, !llvm.loop !5964

34:                                               ; preds = %30
  store volatile i32 1880031232, i32* %29, align 4, !dbg !5966
  br label %35, !dbg !5967

35:                                               ; preds = %35, %34
  %36 = load volatile i32, i32* %29, align 4, !dbg !5968
  %37 = and i32 %36, 128, !dbg !5969
  %38 = icmp eq i32 %37, 0, !dbg !5969
  br i1 %38, label %39, label %35, !dbg !5967, !llvm.loop !5970

39:                                               ; preds = %35
  store volatile i32 269418496, i32* %29, align 4, !dbg !5972
  %40 = tail call i32 @__EMI_EnableBandwidthLimiter() #18, !dbg !5973
  ret i8 0, !dbg !5974
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @EMI_Setting_Save() local_unnamed_addr #10 section ".tcm_code" !dbg !5975 {
  %1 = load %struct.EMI_REGISTER_T*, %struct.EMI_REGISTER_T** @emi_register, align 4, !dbg !5976
  %2 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 1, !dbg !5977
  %3 = load volatile i32, i32* %2, align 4, !dbg !5977
  store volatile i32 %3, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 1), align 4, !dbg !5978
  %4 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 3, !dbg !5979
  %5 = load volatile i32, i32* %4, align 4, !dbg !5979
  store volatile i32 %5, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 3), align 4, !dbg !5980
  %6 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 5, !dbg !5981
  %7 = load volatile i32, i32* %6, align 4, !dbg !5981
  store volatile i32 %7, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 5), align 4, !dbg !5982
  %8 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 9, !dbg !5983
  %9 = load volatile i32, i32* %8, align 4, !dbg !5983
  store volatile i32 %9, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 9), align 4, !dbg !5984
  %10 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 11, !dbg !5985
  %11 = load volatile i32, i32* %10, align 4, !dbg !5985
  store volatile i32 %11, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 11), align 4, !dbg !5986
  %12 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 13, !dbg !5987
  %13 = load volatile i32, i32* %12, align 4, !dbg !5987
  store volatile i32 %13, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 13), align 4, !dbg !5988
  %14 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 15, !dbg !5989
  %15 = load volatile i32, i32* %14, align 4, !dbg !5989
  store volatile i32 %15, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 15), align 4, !dbg !5990
  %16 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 17, !dbg !5991
  %17 = load volatile i32, i32* %16, align 4, !dbg !5991
  store volatile i32 %17, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 17), align 4, !dbg !5992
  %18 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 19, !dbg !5993
  %19 = load volatile i32, i32* %18, align 4, !dbg !5993
  store volatile i32 %19, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 19), align 4, !dbg !5994
  %20 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 21, !dbg !5995
  %21 = load volatile i32, i32* %20, align 4, !dbg !5995
  store volatile i32 %21, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 21), align 4, !dbg !5996
  %22 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 23, !dbg !5997
  %23 = load volatile i32, i32* %22, align 4, !dbg !5997
  store volatile i32 %23, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 23), align 4, !dbg !5998
  %24 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 25, !dbg !5999
  %25 = load volatile i32, i32* %24, align 4, !dbg !5999
  store volatile i32 %25, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 25), align 4, !dbg !6000
  %26 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 29, !dbg !6001
  %27 = load volatile i32, i32* %26, align 4, !dbg !6001
  store volatile i32 %27, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 29), align 4, !dbg !6002
  %28 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 31, !dbg !6003
  %29 = load volatile i32, i32* %28, align 4, !dbg !6003
  store volatile i32 %29, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 31), align 4, !dbg !6004
  %30 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 35, !dbg !6005
  %31 = load volatile i32, i32* %30, align 4, !dbg !6005
  store volatile i32 %31, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 35), align 4, !dbg !6006
  %32 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 37, !dbg !6007
  %33 = load volatile i32, i32* %32, align 4, !dbg !6007
  store volatile i32 %33, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 37), align 4, !dbg !6008
  %34 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 39, !dbg !6009
  %35 = load volatile i32, i32* %34, align 4, !dbg !6009
  store volatile i32 %35, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 39), align 4, !dbg !6010
  %36 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 41, !dbg !6011
  %37 = load volatile i32, i32* %36, align 4, !dbg !6011
  store volatile i32 %37, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 41), align 4, !dbg !6012
  %38 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 43, !dbg !6013
  %39 = load volatile i32, i32* %38, align 4, !dbg !6013
  store volatile i32 %39, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 43), align 4, !dbg !6014
  %40 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 45, !dbg !6015
  %41 = load volatile i32, i32* %40, align 4, !dbg !6015
  store volatile i32 %41, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 45), align 4, !dbg !6016
  ret void, !dbg !6017
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @EMI_Setting_restore() local_unnamed_addr #10 section ".tcm_code" !dbg !6018 {
  %1 = load %struct.EMI_REGISTER_T*, %struct.EMI_REGISTER_T** @emi_register, align 4
  %2 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 1
  br label %3, !dbg !6019

3:                                                ; preds = %3, %0
  %4 = load volatile i32, i32* %2, align 4, !dbg !6020
  %5 = and i32 %4, 17, !dbg !6021
  %6 = icmp eq i32 %5, 17, !dbg !6022
  br i1 %6, label %7, label %3, !dbg !6019, !llvm.loop !6023

7:                                                ; preds = %3
  %8 = load volatile i32, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 45), align 4, !dbg !6025
  %9 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 45, !dbg !6026
  store volatile i32 %8, i32* %9, align 4, !dbg !6027
  %10 = load volatile i32, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 43), align 4, !dbg !6028
  %11 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 43, !dbg !6029
  store volatile i32 %10, i32* %11, align 4, !dbg !6030
  %12 = load volatile i32, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 41), align 4, !dbg !6031
  %13 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 41, !dbg !6032
  store volatile i32 %12, i32* %13, align 4, !dbg !6033
  %14 = load volatile i32, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 39), align 4, !dbg !6034
  %15 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 39, !dbg !6035
  store volatile i32 %14, i32* %15, align 4, !dbg !6036
  %16 = load volatile i32, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 37), align 4, !dbg !6037
  %17 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 37, !dbg !6038
  store volatile i32 %16, i32* %17, align 4, !dbg !6039
  %18 = load volatile i32, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 35), align 4, !dbg !6040
  %19 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 35, !dbg !6041
  store volatile i32 %18, i32* %19, align 4, !dbg !6042
  %20 = load volatile i32, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 31), align 4, !dbg !6043
  %21 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 31, !dbg !6044
  store volatile i32 %20, i32* %21, align 4, !dbg !6045
  %22 = load volatile i32, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 29), align 4, !dbg !6046
  %23 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 29, !dbg !6047
  store volatile i32 %22, i32* %23, align 4, !dbg !6048
  %24 = load volatile i32, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 25), align 4, !dbg !6049
  %25 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 25, !dbg !6050
  store volatile i32 %24, i32* %25, align 4, !dbg !6051
  %26 = load volatile i32, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 23), align 4, !dbg !6052
  %27 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 23, !dbg !6053
  store volatile i32 %26, i32* %27, align 4, !dbg !6054
  %28 = load volatile i32, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 21), align 4, !dbg !6055
  %29 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 21, !dbg !6056
  store volatile i32 %28, i32* %29, align 4, !dbg !6057
  %30 = load volatile i32, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 19), align 4, !dbg !6058
  %31 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 19, !dbg !6059
  store volatile i32 %30, i32* %31, align 4, !dbg !6060
  %32 = load volatile i32, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 17), align 4, !dbg !6061
  %33 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 17, !dbg !6062
  store volatile i32 %32, i32* %33, align 4, !dbg !6063
  %34 = load volatile i32, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 15), align 4, !dbg !6064
  %35 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 15, !dbg !6065
  store volatile i32 %34, i32* %35, align 4, !dbg !6066
  %36 = load volatile i32, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 13), align 4, !dbg !6067
  %37 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 13, !dbg !6068
  store volatile i32 %36, i32* %37, align 4, !dbg !6069
  %38 = load volatile i32, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 11), align 4, !dbg !6070
  %39 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 11, !dbg !6071
  store volatile i32 %38, i32* %39, align 4, !dbg !6072
  %40 = load volatile i32, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 9), align 4, !dbg !6073
  %41 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 9, !dbg !6074
  store volatile i32 %40, i32* %41, align 4, !dbg !6075
  %42 = load volatile i32, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 5), align 4, !dbg !6076
  %43 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 5, !dbg !6077
  store volatile i32 %42, i32* %43, align 4, !dbg !6078
  %44 = load volatile i32, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 3), align 4, !dbg !6079
  %45 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 3, !dbg !6080
  store volatile i32 %44, i32* %45, align 4, !dbg !6081
  ret void, !dbg !6082
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @mtk_psram_half_sleep_exit() local_unnamed_addr #10 section ".tcm_code" !dbg !6083 {
  %1 = load %struct.EMI_REGISTER_T*, %struct.EMI_REGISTER_T** @emi_register, align 4, !dbg !6084
  %2 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 25, !dbg !6085
  %3 = load volatile i32, i32* %2, align 4, !dbg !6085
  %4 = and i32 %3, -2097185, !dbg !6086
  store volatile i32 %4, i32* %2, align 4, !dbg !6087
  %5 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 27, !dbg !6088
  store volatile i32 1, i32* %5, align 4, !dbg !6089
  br label %6, !dbg !6090

6:                                                ; preds = %6, %0
  %7 = load volatile i32, i32* %5, align 4, !dbg !6091
  %8 = and i32 %7, 2, !dbg !6092
  %9 = icmp eq i32 %8, 0, !dbg !6092
  br i1 %9, label %6, label %10, !dbg !6090, !llvm.loop !6093

10:                                               ; preds = %6
  store volatile i32 0, i32* %5, align 4, !dbg !6095
  br label %11, !dbg !6096

11:                                               ; preds = %11, %10
  %12 = load volatile i32, i32* %5, align 4, !dbg !6097
  %13 = and i32 %12, 2, !dbg !6098
  %14 = icmp eq i32 %13, 0, !dbg !6098
  br i1 %14, label %15, label %11, !dbg !6096, !llvm.loop !6099

15:                                               ; preds = %11
  tail call void @EMI_Setting_restore() #18, !dbg !6101
  %16 = load %struct.EMI_REGISTER_T*, %struct.EMI_REGISTER_T** @emi_register, align 4, !dbg !6102
  %17 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %16, i32 0, i32 7, !dbg !6103
  store volatile i32 806289408, i32* %17, align 4, !dbg !6104
  br label %18, !dbg !6105

18:                                               ; preds = %18, %15
  %19 = load volatile i32, i32* %17, align 4, !dbg !6106
  %20 = and i32 %19, 128, !dbg !6107
  %21 = icmp eq i32 %20, 0, !dbg !6107
  br i1 %21, label %18, label %22, !dbg !6105, !llvm.loop !6108

22:                                               ; preds = %18
  store volatile i32 1880031232, i32* %17, align 4, !dbg !6110
  br label %23, !dbg !6111

23:                                               ; preds = %23, %22
  %24 = load volatile i32, i32* %17, align 4, !dbg !6112
  %25 = and i32 %24, 128, !dbg !6113
  %26 = icmp eq i32 %25, 0, !dbg !6113
  br i1 %26, label %27, label %23, !dbg !6111, !llvm.loop !6114

27:                                               ; preds = %23
  store volatile i32 269418496, i32* %17, align 4, !dbg !6116
  %28 = load volatile i32, i32* getelementptr inbounds (%struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* @emi_register_backup, i32 0, i32 1), align 4, !dbg !6117
  %29 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %16, i32 0, i32 1, !dbg !6118
  store volatile i32 %28, i32* %29, align 4, !dbg !6119
  ret void, !dbg !6120
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @mtk_psram_half_sleep_enter() local_unnamed_addr #10 section ".tcm_code" !dbg !6121 {
  tail call void @EMI_Setting_Save() #18, !dbg !6122
  %1 = load %struct.EMI_REGISTER_T*, %struct.EMI_REGISTER_T** @emi_register, align 4
  %2 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 1
  br label %3, !dbg !6123

3:                                                ; preds = %3, %0
  %4 = load volatile i32, i32* %2, align 4, !dbg !6124
  %5 = and i32 %4, 17, !dbg !6125
  %6 = icmp eq i32 %5, 17, !dbg !6126
  br i1 %6, label %7, label %3, !dbg !6123, !llvm.loop !6127

7:                                                ; preds = %3
  %8 = load volatile i32, i32* %2, align 4, !dbg !6129
  %9 = or i32 %8, 1792, !dbg !6130
  store volatile i32 %9, i32* %2, align 4, !dbg !6131
  %10 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 33, !dbg !6132
  store volatile i32 -261685248, i32* %10, align 4, !dbg !6133
  br label %11, !dbg !6134

11:                                               ; preds = %11, %7
  %12 = load volatile i32, i32* %10, align 4, !dbg !6135
  %13 = and i32 %12, 1, !dbg !6136
  %14 = icmp eq i32 %13, 0, !dbg !6137
  br i1 %14, label %11, label %15, !dbg !6134, !llvm.loop !6138

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 7, !dbg !6140
  store volatile i32 0, i32* %16, align 4, !dbg !6141
  %17 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 27
  br label %18, !dbg !6142

18:                                               ; preds = %18, %15
  %19 = load volatile i32, i32* %17, align 4, !dbg !6143
  %20 = and i32 %19, 16, !dbg !6144
  %21 = icmp eq i32 %20, 0, !dbg !6144
  br i1 %21, label %18, label %22, !dbg !6142, !llvm.loop !6145

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 25, !dbg !6147
  %24 = load volatile i32, i32* %23, align 4, !dbg !6147
  %25 = or i32 %24, 2097184, !dbg !6148
  store volatile i32 %25, i32* %23, align 4, !dbg !6149
  ret void, !dbg !6150
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local i32 @EMI_DynamicClockSwitch(i32 noundef %0) local_unnamed_addr #7 section ".tcm_code" !dbg !6151 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !6156, metadata !DIExpression()), !dbg !6158
  %3 = bitcast i32* %2 to i8*, !dbg !6159
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !6159
  call void @llvm.dbg.declare(metadata i32* %2, metadata !6157, metadata !DIExpression()), !dbg !6160
  switch i32 %0, label %24 [
    i32 0, label %4
    i32 1, label %25
  ], !dbg !6161

4:                                                ; preds = %1
  %5 = load %struct.EMI_REGISTER_T*, %struct.EMI_REGISTER_T** @emi_register, align 4, !dbg !6162
  %6 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %5, i32 0, i32 7, !dbg !6165
  store volatile i32 0, i32* %6, align 4, !dbg !6166
  store volatile i32 806289408, i32* %6, align 4, !dbg !6167
  br label %7, !dbg !6168

7:                                                ; preds = %7, %4
  %8 = load volatile i32, i32* %6, align 4, !dbg !6169
  %9 = and i32 %8, 128, !dbg !6170
  %10 = icmp eq i32 %9, 0, !dbg !6170
  br i1 %10, label %7, label %11, !dbg !6168, !llvm.loop !6171

11:                                               ; preds = %7
  store volatile i32 1880031232, i32* %6, align 4, !dbg !6173
  br label %12, !dbg !6174

12:                                               ; preds = %12, %11
  %13 = load volatile i32, i32* %6, align 4, !dbg !6175
  %14 = and i32 %13, 128, !dbg !6176
  %15 = icmp eq i32 %14, 0, !dbg !6176
  br i1 %15, label %16, label %12, !dbg !6174, !llvm.loop !6177

16:                                               ; preds = %12
  store volatile i32 269418496, i32* %6, align 4, !dbg !6179
  store volatile i32 0, i32* %2, align 4, !dbg !6180
  %17 = load volatile i32, i32* %2, align 4, !dbg !6182
  %18 = icmp ult i32 %17, 255, !dbg !6184
  br i1 %18, label %19, label %25, !dbg !6185

19:                                               ; preds = %16, %19
  %20 = load volatile i32, i32* %2, align 4, !dbg !6186
  %21 = add i32 %20, 1, !dbg !6186
  store volatile i32 %21, i32* %2, align 4, !dbg !6186
  %22 = load volatile i32, i32* %2, align 4, !dbg !6182
  %23 = icmp ult i32 %22, 255, !dbg !6184
  br i1 %23, label %19, label %25, !dbg !6185, !llvm.loop !6187

24:                                               ; preds = %1
  br label %25, !dbg !6189

25:                                               ; preds = %19, %16, %1, %24
  %26 = phi i32 [ -1, %24 ], [ 0, %1 ], [ 0, %16 ], [ 0, %19 ], !dbg !6158
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !6192
  ret i32 %26, !dbg !6192
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @emi_mask_master() local_unnamed_addr #10 section ".tcm_code" !dbg !6193 {
  %1 = load %struct.EMI_REGISTER_T*, %struct.EMI_REGISTER_T** @emi_register, align 4, !dbg !6194
  %2 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 1, !dbg !6195
  %3 = load volatile i32, i32* %2, align 4, !dbg !6195
  %4 = or i32 %3, 1792, !dbg !6196
  store volatile i32 %4, i32* %2, align 4, !dbg !6197
  ret void, !dbg !6198
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @emi_unmask_master() local_unnamed_addr #10 section ".tcm_code" !dbg !6199 {
  %1 = load %struct.EMI_REGISTER_T*, %struct.EMI_REGISTER_T** @emi_register, align 4, !dbg !6200
  %2 = getelementptr inbounds %struct.EMI_REGISTER_T, %struct.EMI_REGISTER_T* %1, i32 0, i32 1, !dbg !6201
  %3 = load volatile i32, i32* %2, align 4, !dbg !6201
  %4 = and i32 %3, -1793, !dbg !6202
  store volatile i32 %4, i32* %2, align 4, !dbg !6203
  ret void, !dbg !6204
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local zeroext i1 @is_clk_use_lfosc() local_unnamed_addr #8 section ".tcm_code" !dbg !6205 {
  ret i1 false, !dbg !6208
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local zeroext i1 @is_clk_use_mpll() local_unnamed_addr #8 section ".tcm_code" !dbg !6209 {
  ret i1 false, !dbg !6210
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cm_bus_clk_208m() local_unnamed_addr #0 section ".tcm_code" !dbg !6211 {
  tail call void @cm_bus_clk_208m_mpll_hfosc() #19, !dbg !6212
  ret void, !dbg !6215
}

; Function Attrs: optsize
declare dso_local void @cm_bus_clk_208m_mpll_hfosc() local_unnamed_addr #3 section ".tcm_code"

; Function Attrs: noinline nounwind optsize
define dso_local void @cm_bus_clk_104m() local_unnamed_addr #0 section ".tcm_code" !dbg !6216 {
  tail call void @cm_bus_clk_104m_hfosc_hfosc() #19, !dbg !6217
  ret void, !dbg !6220
}

; Function Attrs: optsize
declare dso_local void @cm_bus_clk_104m_hfosc_hfosc() local_unnamed_addr #3 section ".tcm_code"

; Function Attrs: noinline nounwind optsize
define dso_local void @cm_bus_clk_26m() local_unnamed_addr #0 section ".tcm_code" !dbg !6221 {
  tail call void @cm_bus_clk_26m_dcxo_dcxo() #19, !dbg !6222
  ret void, !dbg !6225
}

; Function Attrs: optsize
declare dso_local void @cm_bus_clk_26m_dcxo_dcxo() local_unnamed_addr #3 section ".tcm_code"

; Function Attrs: noinline nounwind optsize
define dso_local void @peri_clk_26m() local_unnamed_addr #0 section ".tcm_code" !dbg !6226 {
  tail call void @peri_26m_dcxo() #19, !dbg !6227
  ret void, !dbg !6230
}

; Function Attrs: optsize
declare dso_local void @peri_26m_dcxo() local_unnamed_addr #3 section ".tcm_code"

; Function Attrs: noinline nounwind optsize
define dso_local i32 @__io_putchar(i32 noundef returned %0) local_unnamed_addr #0 !dbg !6231 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6235, metadata !DIExpression()), !dbg !6236
  %2 = trunc i32 %0 to i8, !dbg !6237
  tail call void @hal_uart_put_char(i32 noundef 2, i8 noundef zeroext %2) #19, !dbg !6238
  ret i32 %0, !dbg !6239
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local i32 @main() local_unnamed_addr #17 !dbg !6240 {
  tail call fastcc void @SystemClock_Config() #18, !dbg !6241
  tail call void @SystemCoreClockUpdate() #19, !dbg !6242
  tail call fastcc void @prvSetupHardware() #18, !dbg !6243
  tail call void asm sideeffect "cpsie i", "~{memory}"() #20, !dbg !6244, !srcloc !6247
  tail call void asm sideeffect "cpsie f", "~{memory}"() #20, !dbg !6248, !srcloc !6251
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.102, i32 0, i32 0)) #19, !dbg !6252
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.103, i32 0, i32 0)) #19, !dbg !6253
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0)) #19, !dbg !6254
  %4 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.102, i32 0, i32 0)) #19, !dbg !6255
  tail call fastcc void @eint_sample() #18, !dbg !6256
  br label %5, !dbg !6257

5:                                                ; preds = %0, %5
  br label %5, !dbg !6257, !llvm.loop !6258
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @SystemClock_Config() unnamed_addr #0 !dbg !6260 {
  %1 = tail call i32 @hal_clock_init() #19, !dbg !6261
  ret void, !dbg !6262
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvSetupHardware() unnamed_addr #0 !dbg !6263 {
  tail call fastcc void @log_uart_init() #18, !dbg !6264
  %1 = tail call i32 @hal_nvic_init() #19, !dbg !6265
  ret void, !dbg !6266
}

; Function Attrs: optsize
declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize
define internal fastcc void @eint_sample() unnamed_addr #0 !dbg !6267 {
  %1 = alloca %struct.vdma_config_t, align 4
  %2 = bitcast %struct.vdma_config_t* %1 to i8*, !dbg !6275
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #20, !dbg !6275
  call void @llvm.dbg.declare(metadata %struct.vdma_config_t* %1, metadata !6269, metadata !DIExpression()), !dbg !6276
  store i1 true, i1* @irq_num, align 4, !dbg !6277
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0)) #19, !dbg !6278
  %4 = tail call i32 @hal_gpio_init(i32 noundef 4) #19, !dbg !6279
  %5 = tail call i32 @hal_pinmux_set_function(i32 noundef 4, i8 noundef zeroext 1) #19, !dbg !6280
  %6 = tail call i32 @hal_gpio_set_direction(i32 noundef 4, i32 noundef 0) #19, !dbg !6281
  %7 = tail call i32 @hal_gpio_disable_pull(i32 noundef 4) #19, !dbg !6282
  %8 = getelementptr inbounds %struct.vdma_config_t, %struct.vdma_config_t* %1, i32 0, i32 0, !dbg !6283
  store i32 2, i32* %8, align 4, !dbg !6284
  %9 = getelementptr inbounds %struct.vdma_config_t, %struct.vdma_config_t* %1, i32 0, i32 1, !dbg !6285
  store i32 5, i32* %9, align 4, !dbg !6286
  %10 = load i1, i1* @irq_num, align 4, !dbg !6287
  %11 = select i1 %10, i32 3, i32 0, !dbg !6287
  %12 = tail call i32 @hal_eint_mask(i32 noundef %11) #19, !dbg !6288
  %13 = load i1, i1* @irq_num, align 4, !dbg !6289
  %14 = select i1 %13, i32 3, i32 0, !dbg !6289
  %15 = call i32 @hal_eint_init(i32 noundef %14, %struct.vdma_config_t* noundef nonnull %1) #19, !dbg !6290
  %16 = load i1, i1* @irq_num, align 4, !dbg !6291
  %17 = select i1 %16, i32 3, i32 0, !dbg !6291
  %18 = call i32 @hal_eint_register_callback(i32 noundef %17, void (i8*)* noundef nonnull @eint_irq_handler, i8* noundef null) #19, !dbg !6292
  %19 = load i1, i1* @irq_num, align 4, !dbg !6293
  %20 = select i1 %19, i32 3, i32 0, !dbg !6293
  %21 = call i32 @hal_eint_unmask(i32 noundef %20) #19, !dbg !6294
  %22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i32 0, i32 0)) #19, !dbg !6295
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #20, !dbg !6296
  ret void, !dbg !6296
}

; Function Attrs: noinline nounwind optsize
define internal void @eint_irq_handler(i8* nocapture noundef readnone %0) #0 !dbg !6297 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !6299, metadata !DIExpression()), !dbg !6300
  %2 = load i1, i1* @irq_num, align 4, !dbg !6301
  %3 = select i1 %2, i32 3, i32 0, !dbg !6301
  %4 = tail call i32 @hal_eint_mask(i32 noundef %3) #19, !dbg !6302
  %5 = load i1, i1* @irq_num, align 4, !dbg !6303
  %6 = select i1 %5, i32 3, i32 0, !dbg !6303
  %7 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), i32 noundef %6) #19, !dbg !6304
  %8 = load i1, i1* @irq_num, align 4, !dbg !6305
  %9 = select i1 %8, i32 3, i32 0, !dbg !6305
  %10 = tail call i32 @hal_eint_unmask(i32 noundef %9) #19, !dbg !6306
  ret void, !dbg !6307
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @log_uart_init() unnamed_addr #0 !dbg !6308 {
  %1 = alloca %struct.hal_uart_config_t, align 4
  %2 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !6318
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #20, !dbg !6318
  call void @llvm.dbg.declare(metadata %struct.hal_uart_config_t* %1, metadata !6310, metadata !DIExpression()), !dbg !6319
  %3 = tail call i32 @hal_gpio_init(i32 noundef 0) #19, !dbg !6320
  %4 = tail call i32 @hal_gpio_init(i32 noundef 1) #19, !dbg !6321
  %5 = tail call i32 @hal_pinmux_set_function(i32 noundef 0, i8 noundef zeroext 3) #19, !dbg !6322
  %6 = tail call i32 @hal_pinmux_set_function(i32 noundef 1, i8 noundef zeroext 3) #19, !dbg !6323
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !6324
  store i32 9, i32* %7, align 4, !dbg !6325
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !6326
  store i32 3, i32* %8, align 4, !dbg !6327
  %9 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !6328
  store i32 0, i32* %9, align 4, !dbg !6329
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !6330
  store i32 0, i32* %10, align 4, !dbg !6331
  %11 = call i32 @hal_uart_init(i32 noundef 2, %struct.hal_uart_config_t* noundef nonnull %1) #19, !dbg !6332
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #20, !dbg !6333
  ret void, !dbg !6333
}

; Function Attrs: optsize
declare dso_local i32 @hal_clock_init() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_close(i32 noundef %0) local_unnamed_addr #8 !dbg !6334 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6336, metadata !DIExpression()), !dbg !6337
  ret i32 0, !dbg !6338
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_fstat(i32 noundef %0, %struct.stat* nocapture noundef readnone %1) local_unnamed_addr #8 !dbg !6339 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6389, metadata !DIExpression()), !dbg !6391
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !6390, metadata !DIExpression()), !dbg !6391
  ret i32 0, !dbg !6392
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_isatty(i32 noundef %0) local_unnamed_addr #8 !dbg !6393 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6395, metadata !DIExpression()), !dbg !6396
  ret i32 1, !dbg !6397
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_lseek(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 !dbg !6398 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6402, metadata !DIExpression()), !dbg !6405
  call void @llvm.dbg.value(metadata i32 %1, metadata !6403, metadata !DIExpression()), !dbg !6405
  call void @llvm.dbg.value(metadata i32 %2, metadata !6404, metadata !DIExpression()), !dbg !6405
  ret i32 0, !dbg !6406
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_open(i8* nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 !dbg !6407 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !6411, metadata !DIExpression()), !dbg !6414
  call void @llvm.dbg.value(metadata i32 %1, metadata !6412, metadata !DIExpression()), !dbg !6414
  call void @llvm.dbg.value(metadata i32 %2, metadata !6413, metadata !DIExpression()), !dbg !6414
  ret i32 -1, !dbg !6415
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_read(i32 noundef %0, i8* nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #8 !dbg !6416 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6420, metadata !DIExpression()), !dbg !6423
  call void @llvm.dbg.value(metadata i8* %1, metadata !6421, metadata !DIExpression()), !dbg !6423
  call void @llvm.dbg.value(metadata i32 %2, metadata !6422, metadata !DIExpression()), !dbg !6423
  ret i32 0, !dbg !6424
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_getpid() local_unnamed_addr #8 !dbg !6425 {
  ret i32 1, !dbg !6426
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_kill(i32 noundef %0, i32 noundef %1) local_unnamed_addr #8 !dbg !6427 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6431, metadata !DIExpression()), !dbg !6433
  call void @llvm.dbg.value(metadata i32 %1, metadata !6432, metadata !DIExpression()), !dbg !6433
  ret i32 -1, !dbg !6434
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_exit(i32 noundef %0) local_unnamed_addr #8 !dbg !6435 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6437, metadata !DIExpression()), !dbg !6438
  ret i32 -1, !dbg !6439
}

; Function Attrs: noinline nounwind optsize
define dso_local i8* @_sbrk_r(%struct._reent* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #0 !dbg !1231 {
  call void @llvm.dbg.value(metadata %struct._reent* %0, metadata !1433, metadata !DIExpression()), !dbg !6440
  call void @llvm.dbg.value(metadata i32 %1, metadata !1434, metadata !DIExpression()), !dbg !6440
  %3 = tail call i8* asm sideeffect "MRS $0, msp\0A", "=r"() #20, !dbg !6441, !srcloc !6442
  call void @llvm.dbg.value(metadata i8* %3, metadata !1436, metadata !DIExpression()), !dbg !6440
  %4 = load i8*, i8** @_sbrk_r.heap_end, align 4, !dbg !6443
  %5 = icmp eq i8* %4, null, !dbg !6445
  %6 = select i1 %5, i8* @end, i8* %4, !dbg !6446
  call void @llvm.dbg.value(metadata i8* %6, metadata !1435, metadata !DIExpression()), !dbg !6440
  %7 = getelementptr inbounds i8, i8* %6, i32 %1, !dbg !6447
  %8 = icmp ult i8* %3, %7, !dbg !6449
  %9 = xor i1 %8, true, !dbg !6450
  %10 = or i1 %5, %9, !dbg !6450
  br i1 %10, label %11, label %13, !dbg !6450

11:                                               ; preds = %2
  %12 = select i1 %8, i8* %6, i8* %7, !dbg !6451
  store i8* %12, i8** @_sbrk_r.heap_end, align 4, !dbg !6450
  br label %13, !dbg !6450

13:                                               ; preds = %2, %11
  %14 = select i1 %8, i8* inttoptr (i32 -1 to i8*), i8* %6, !dbg !6451
  ret i8* %14, !dbg !6450
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_write(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef returned %2) local_unnamed_addr #0 !dbg !6452 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6454, metadata !DIExpression()), !dbg !6458
  call void @llvm.dbg.value(metadata i8* %1, metadata !6455, metadata !DIExpression()), !dbg !6458
  call void @llvm.dbg.value(metadata i32 %2, metadata !6456, metadata !DIExpression()), !dbg !6458
  call void @llvm.dbg.value(metadata i32 0, metadata !6457, metadata !DIExpression()), !dbg !6458
  %4 = icmp sgt i32 %2, 0, !dbg !6459
  br i1 %4, label %5, label %14, !dbg !6462

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %12, %5 ], [ 0, %3 ]
  %7 = phi i8* [ %8, %5 ], [ %1, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !6457, metadata !DIExpression()), !dbg !6458
  call void @llvm.dbg.value(metadata i8* %7, metadata !6455, metadata !DIExpression()), !dbg !6458
  %8 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !6463
  call void @llvm.dbg.value(metadata i8* %8, metadata !6455, metadata !DIExpression()), !dbg !6458
  %9 = load i8, i8* %7, align 1, !dbg !6465
  %10 = zext i8 %9 to i32, !dbg !6465
  %11 = tail call i32 @__io_putchar(i32 noundef %10) #19, !dbg !6466
  %12 = add nuw nsw i32 %6, 1, !dbg !6467
  call void @llvm.dbg.value(metadata i32 %12, metadata !6457, metadata !DIExpression()), !dbg !6458
  %13 = icmp eq i32 %12, %2, !dbg !6459
  br i1 %13, label %14, label %5, !dbg !6462, !llvm.loop !6468

14:                                               ; preds = %5, %3
  ret i32 %2, !dbg !6470
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @SysTick_Set(i32 noundef %0) local_unnamed_addr #10 !dbg !6471 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6473, metadata !DIExpression()), !dbg !6475
  %2 = add i32 %0, -1, !dbg !6476
  %3 = icmp ugt i32 %2, 16777215, !dbg !6478
  br i1 %3, label %8, label %4, !dbg !6479

4:                                                ; preds = %1
  %5 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !6480
  call void @llvm.dbg.value(metadata i32 %5, metadata !6474, metadata !DIExpression()), !dbg !6475
  %6 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !6481
  %7 = and i32 %6, -4, !dbg !6481
  store volatile i32 %7, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !6481
  store volatile i32 %2, i32* inttoptr (i32 -536813548 to i32*), align 4, !dbg !6482
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !dbg !6483
  store volatile i32 %5, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !6484
  br label %8, !dbg !6485

8:                                                ; preds = %1, %4
  %9 = phi i32 [ 0, %4 ], [ 1, %1 ], !dbg !6475
  ret i32 %9, !dbg !6486
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SysInitStatus_Set() local_unnamed_addr #10 !dbg !6487 {
  store volatile i32 1, i32* @System_Initialize_Done, align 4, !dbg !6488
  ret void, !dbg !6489
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @SysInitStatus_Query() local_unnamed_addr #9 !dbg !6490 {
  %1 = load volatile i32, i32* @System_Initialize_Done, align 4, !dbg !6491
  ret i32 %1, !dbg !6492
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local void @SystemCoreClockUpdate() local_unnamed_addr #9 !dbg !6493 {
  %1 = load volatile i32, i32* inttoptr (i32 -1576992508 to i32*), align 4, !dbg !6496
  %2 = lshr i32 %1, 3, !dbg !6497
  %3 = and i32 %2, 15, !dbg !6497
  call void @llvm.dbg.value(metadata i32 %3, metadata !6495, metadata !DIExpression()), !dbg !6498
  switch i32 %3, label %6 [
    i32 8, label %5
    i32 6, label %5
    i32 2, label %4
    i32 3, label %4
    i32 4, label %4
    i32 5, label %9
    i32 7, label %9
  ], !dbg !6499

4:                                                ; preds = %0, %0, %0
  br label %6, !dbg !6500

5:                                                ; preds = %0, %0
  br label %9, !dbg !6502

6:                                                ; preds = %0, %4
  %7 = phi i32 [ 104000000, %4 ], [ 26000000, %0 ]
  store i32 %7, i32* @SystemCoreClock, align 4, !dbg !6503
  %8 = load volatile i32, i32* inttoptr (i32 -1576665024 to i32*), align 64, !dbg !6504
  br label %15, !dbg !6506

9:                                                ; preds = %0, %0, %5
  %10 = phi i32 [ 156000000, %5 ], [ 208000000, %0 ], [ 208000000, %0 ]
  store i32 %10, i32* @SystemCoreClock, align 4, !dbg !6503
  %11 = load volatile i32, i32* inttoptr (i32 -1576665024 to i32*), align 64, !dbg !6504
  %12 = and i32 %11, 1024, !dbg !6507
  %13 = icmp eq i32 %12, 0, !dbg !6507
  br i1 %13, label %15, label %14, !dbg !6506

14:                                               ; preds = %9
  store i32 104000000, i32* @SystemCoreClock, align 4, !dbg !6508
  br label %15, !dbg !6510

15:                                               ; preds = %6, %14, %9
  ret void, !dbg !6511
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SystemInit() local_unnamed_addr #10 !dbg !6512 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !6513
  %2 = or i32 %1, 15728640, !dbg !6513
  store volatile i32 %2, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !6513
  store volatile i32 0, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !6514
  %3 = load volatile i32, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !6515
  %4 = or i32 %3, 458752, !dbg !6515
  store volatile i32 %4, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !6515
  ret void, !dbg !6516
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @CachePreInit() local_unnamed_addr #10 !dbg !6517 {
  store volatile i32 0, i32* inttoptr (i32 -1601699840 to i32*), align 524288, !dbg !6518
  store volatile i32 19, i32* inttoptr (i32 -1601699836 to i32*), align 4, !dbg !6519
  store volatile i32 3, i32* inttoptr (i32 -1601699836 to i32*), align 4, !dbg !6520
  store volatile i32 134283520, i32* inttoptr (i32 -1601634304 to i32*), align 65536, !dbg !6521
  store volatile i32 138280960, i32* inttoptr (i32 -1601634240 to i32*), align 64, !dbg !6522
  store volatile i32 1, i32* inttoptr (i32 -1601699796 to i32*), align 4, !dbg !6523
  store volatile i32 781, i32* inttoptr (i32 -1601699840 to i32*), align 524288, !dbg !6524
  ret void, !dbg !6525
}

attributes #0 = { noinline nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #3 = { optsize "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #6 = { argmemonly nofree nosync nounwind willreturn }
attributes #7 = { nofree noinline nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #9 = { mustprogress nofree noinline norecurse nounwind optsize willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #10 = { nofree noinline norecurse nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize readonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize readnone "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #14 = { noreturn optsize "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #15 = { argmemonly nofree nounwind willreturn writeonly }
attributes #16 = { nofree nosync nounwind willreturn }
attributes #17 = { noinline noreturn nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #18 = { nobuiltin optsize "no-builtins" }
attributes #19 = { nobuiltin nounwind optsize "no-builtins" }
attributes #20 = { nounwind }
attributes #21 = { nobuiltin noreturn nounwind optsize "no-builtins" }

!llvm.dbg.cu = !{!1568, !2, !263, !546, !1601, !701, !786, !955, !1605, !1651, !1667, !1669, !1041, !1210, !1223, !1428, !1439, !1556}
!llvm.ident = !{!1671, !1671, !1671, !1671, !1671, !1671, !1671, !1671, !1671, !1671, !1671, !1671, !1671, !1671, !1671, !1671, !1671, !1671}
!llvm.module.flags = !{!1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "gp_gpt", scope: !2, file: !3, line: 48, type: !259, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !174, globals: !195, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../../../../../driver/chip/mt2523/src/hal_gpt_internal.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC")
!4 = !{!5, !66, !71, !77, !156, !165, !170}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 1170, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../../../../../driver/chip/mt2523/inc/hal_platform.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65}
!9 = !DIEnumerator(name: "HAL_CLOCK_CG_BT_26M", value: 9)
!10 = !DIEnumerator(name: "HAL_CLOCK_CG_CAMINF48M", value: 10)
!11 = !DIEnumerator(name: "HAL_CLOCK_CG_BT_BUSCK", value: 13)
!12 = !DIEnumerator(name: "HAL_CLOCK_CG_BT_N9", value: 15)
!13 = !DIEnumerator(name: "HAL_CLOCK_CG_BUS", value: 20)
!14 = !DIEnumerator(name: "HAL_CLOCK_CG_CM", value: 21)
!15 = !DIEnumerator(name: "HAL_CLOCK_CG_BSI", value: 23)
!16 = !DIEnumerator(name: "HAL_CLOCK_CG_SEJ", value: 32)
!17 = !DIEnumerator(name: "HAL_CLOCK_CG_DMA", value: 33)
!18 = !DIEnumerator(name: "HAL_CLOCK_CG_USB48M", value: 34)
!19 = !DIEnumerator(name: "HAL_CLOCK_CG_MSDC0", value: 35)
!20 = !DIEnumerator(name: "HAL_CLOCK_CG_I2C_D2D", value: 38)
!21 = !DIEnumerator(name: "HAL_CLOCK_CG_I2C2", value: 39)
!22 = !DIEnumerator(name: "HAL_CLOCK_CG_CM4_OSTIMER", value: 42)
!23 = !DIEnumerator(name: "HAL_CLOCK_CG_DMA_AO", value: 44)
!24 = !DIEnumerator(name: "HAL_CLOCK_CG_UART0", value: 45)
!25 = !DIEnumerator(name: "HAL_CLOCK_CG_UART1", value: 46)
!26 = !DIEnumerator(name: "HAL_CLOCK_CG_UART2", value: 47)
!27 = !DIEnumerator(name: "HAL_CLOCK_CG_UART3", value: 48)
!28 = !DIEnumerator(name: "HAL_CLOCK_CG_SPISLV", value: 51)
!29 = !DIEnumerator(name: "HAL_CLOCK_CG_SPI0", value: 52)
!30 = !DIEnumerator(name: "HAL_CLOCK_CG_SPI1", value: 53)
!31 = !DIEnumerator(name: "HAL_CLOCK_CG_SPI2", value: 54)
!32 = !DIEnumerator(name: "HAL_CLOCK_CG_SPI3", value: 55)
!33 = !DIEnumerator(name: "HAL_CLOCK_CG_PWM0", value: 64)
!34 = !DIEnumerator(name: "HAL_CLOCK_CG_BTIF", value: 65)
!35 = !DIEnumerator(name: "HAL_CLOCK_CG_GPTIMER", value: 66)
!36 = !DIEnumerator(name: "HAL_CLOCK_CG_GPCOUNTER", value: 67)
!37 = !DIEnumerator(name: "HAL_CLOCK_CG_PWM1", value: 68)
!38 = !DIEnumerator(name: "HAL_CLOCK_CG_EFUSE", value: 70)
!39 = !DIEnumerator(name: "HAL_CLOCK_CG_LPM", value: 71)
!40 = !DIEnumerator(name: "HAL_CLOCK_CG_CM_SYSROM", value: 72)
!41 = !DIEnumerator(name: "HAL_CLOCK_CG_SFC", value: 73)
!42 = !DIEnumerator(name: "HAL_CLOCK_CG_MSDC1", value: 74)
!43 = !DIEnumerator(name: "HAL_CLOCK_CG_USB_DMA", value: 76)
!44 = !DIEnumerator(name: "HAL_CLOCK_CG_USB_BUS", value: 77)
!45 = !DIEnumerator(name: "HAL_CLOCK_CG_DISP_PWM", value: 78)
!46 = !DIEnumerator(name: "HAL_CLOCK_CG_TRNG", value: 80)
!47 = !DIEnumerator(name: "HAL_CLOCK_CG_PWM2", value: 83)
!48 = !DIEnumerator(name: "HAL_CLOCK_CG_PWM3", value: 84)
!49 = !DIEnumerator(name: "HAL_CLOCK_CG_PWM4", value: 85)
!50 = !DIEnumerator(name: "HAL_CLOCK_CG_PWM5", value: 86)
!51 = !DIEnumerator(name: "HAL_CLOCK_CG_LCD", value: 96)
!52 = !DIEnumerator(name: "HAL_CLOCK_CG_RESEIZER", value: 97)
!53 = !DIEnumerator(name: "HAL_CLOCK_CG_ROTDMA", value: 98)
!54 = !DIEnumerator(name: "HAL_CLOCK_CG_CAM_BCLK", value: 99)
!55 = !DIEnumerator(name: "HAL_CLOCK_CG_PAD2CAM", value: 100)
!56 = !DIEnumerator(name: "HAL_CLOCK_CG_G2D", value: 101)
!57 = !DIEnumerator(name: "HAL_CLOCK_CG_MM_COLOR", value: 102)
!58 = !DIEnumerator(name: "HAL_CLOCK_CG_AAL", value: 103)
!59 = !DIEnumerator(name: "HAL_CLOCK_CG_DSI0", value: 104)
!60 = !DIEnumerator(name: "HAL_CLOCK_CG_LCD_APB", value: 105)
!61 = !DIEnumerator(name: "HAL_CLOCK_CG_AUXADC", value: 130)
!62 = !DIEnumerator(name: "HAL_CLOCK_CG_GPDAC", value: 134)
!63 = !DIEnumerator(name: "HAL_CLOCK_CG_SENSOR_DMA", value: 136)
!64 = !DIEnumerator(name: "HAL_CLOCK_CG_I2C1", value: 137)
!65 = !DIEnumerator(name: "HAL_CLOCK_CG_I2C0", value: 138)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !67, line: 82, baseType: !7, size: 32, elements: !68)
!67 = !DIFile(filename: "../../../../../driver/chip/mt2523/inc/hal_gpt_internal.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC")
!68 = !{!69, !70}
!69 = !DIEnumerator(name: "GPT_CLOCK_UNGATE", value: 0)
!70 = !DIEnumerator(name: "GPT_CLOCK_GATE", value: 64)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !67, line: 75, baseType: !7, size: 32, elements: !72)
!72 = !{!73, !74, !75, !76}
!73 = !DIEnumerator(name: "GPT_MODE_ONE_SHOT", value: 0)
!74 = !DIEnumerator(name: "GPT_MODE_REPEAT", value: 16)
!75 = !DIEnumerator(name: "GPT_MODE_KEEP_GO", value: 32)
!76 = !DIEnumerator(name: "GPT_MODE_FREE_RUN", value: 48)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IRQn", file: !78, line: 44, baseType: !79, size: 32, elements: !80)
!78 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt2523/Include/mt2523.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC")
!79 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!80 = !{!81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155}
!81 = !DIEnumerator(name: "Reset_IRQn", value: -15)
!82 = !DIEnumerator(name: "NonMaskableInt_IRQn", value: -14)
!83 = !DIEnumerator(name: "HardFault_IRQn", value: -13)
!84 = !DIEnumerator(name: "MemoryManagement_IRQn", value: -12)
!85 = !DIEnumerator(name: "BusFault_IRQn", value: -11)
!86 = !DIEnumerator(name: "UsageFault_IRQn", value: -10)
!87 = !DIEnumerator(name: "SVC_IRQn", value: -5)
!88 = !DIEnumerator(name: "DebugMonitor_IRQn", value: -4)
!89 = !DIEnumerator(name: "PendSV_IRQn", value: -2)
!90 = !DIEnumerator(name: "SysTick_IRQn", value: -1)
!91 = !DIEnumerator(name: "OSTimer_IRQn", value: 0)
!92 = !DIEnumerator(name: "Reserved1_IRQn", value: 1)
!93 = !DIEnumerator(name: "MD_TOPSM_IRQn", value: 2)
!94 = !DIEnumerator(name: "CM4_TOPSM_IRQn", value: 3)
!95 = !DIEnumerator(name: "Reserved2_IRQn", value: 4)
!96 = !DIEnumerator(name: "Reserved3_IRQn", value: 5)
!97 = !DIEnumerator(name: "Reserved4_IRQn", value: 6)
!98 = !DIEnumerator(name: "Reserved5_IRQn", value: 7)
!99 = !DIEnumerator(name: "ACCDET_IRQn", value: 8)
!100 = !DIEnumerator(name: "RTC_IRQn", value: 9)
!101 = !DIEnumerator(name: "KP_IRQn", value: 10)
!102 = !DIEnumerator(name: "GPTimer_IRQn", value: 11)
!103 = !DIEnumerator(name: "EINT_IRQn", value: 12)
!104 = !DIEnumerator(name: "LCD_IRQn", value: 13)
!105 = !DIEnumerator(name: "LCD_AAL_IRQn", value: 14)
!106 = !DIEnumerator(name: "DSI_IRQn", value: 15)
!107 = !DIEnumerator(name: "RESIZE_IRQn", value: 16)
!108 = !DIEnumerator(name: "G2D_IRQn", value: 17)
!109 = !DIEnumerator(name: "CAM_IRQn", value: 18)
!110 = !DIEnumerator(name: "ROT_DMA_IRQn", value: 19)
!111 = !DIEnumerator(name: "SCAM_IRQn", value: 20)
!112 = !DIEnumerator(name: "DMA_IRQn", value: 21)
!113 = !DIEnumerator(name: "DMA_AO_IRQn", value: 22)
!114 = !DIEnumerator(name: "I2C_DUAL_IRQn", value: 23)
!115 = !DIEnumerator(name: "I2C0_IRQn", value: 24)
!116 = !DIEnumerator(name: "I2C1_IRQn", value: 25)
!117 = !DIEnumerator(name: "I2C2_IRQn", value: 26)
!118 = !DIEnumerator(name: "Reserved6_IRQn", value: 27)
!119 = !DIEnumerator(name: "GPCounter_IRQn", value: 28)
!120 = !DIEnumerator(name: "UART0_IRQn", value: 29)
!121 = !DIEnumerator(name: "UART1_IRQn", value: 30)
!122 = !DIEnumerator(name: "UART2_IRQn", value: 31)
!123 = !DIEnumerator(name: "UART3_IRQn", value: 32)
!124 = !DIEnumerator(name: "USB20_IRQn", value: 33)
!125 = !DIEnumerator(name: "MSDC0_IRQn", value: 34)
!126 = !DIEnumerator(name: "MSDC1_IRQn", value: 35)
!127 = !DIEnumerator(name: "Reserved7_IRQn", value: 36)
!128 = !DIEnumerator(name: "Reserved8_IRQn", value: 37)
!129 = !DIEnumerator(name: "SF_IRQn", value: 38)
!130 = !DIEnumerator(name: "DSP22CPU_IRQn", value: 39)
!131 = !DIEnumerator(name: "SensorDMA_IRQn", value: 40)
!132 = !DIEnumerator(name: "RGU_IRQn", value: 41)
!133 = !DIEnumerator(name: "SPI_SLV_IRQn", value: 42)
!134 = !DIEnumerator(name: "SPI_MST0_IRQn", value: 43)
!135 = !DIEnumerator(name: "SPI_MST1_IRQn", value: 44)
!136 = !DIEnumerator(name: "SPI_MST2_IRQn", value: 45)
!137 = !DIEnumerator(name: "SPI_MST3_IRQn", value: 46)
!138 = !DIEnumerator(name: "TRNG_IRQn", value: 47)
!139 = !DIEnumerator(name: "BT_TIMCON_IRQn", value: 48)
!140 = !DIEnumerator(name: "BTIF_IRQn", value: 49)
!141 = !DIEnumerator(name: "Reserved9_IRQn", value: 50)
!142 = !DIEnumerator(name: "Reserved10_IRQn", value: 51)
!143 = !DIEnumerator(name: "LISR0_IRQn", value: 52)
!144 = !DIEnumerator(name: "LISR1_IRQn", value: 53)
!145 = !DIEnumerator(name: "LISR2_IRQn", value: 54)
!146 = !DIEnumerator(name: "LISR3_IRQn", value: 55)
!147 = !DIEnumerator(name: "PSI_RISE_IRQn", value: 56)
!148 = !DIEnumerator(name: "PSI_FALL_IRQn", value: 57)
!149 = !DIEnumerator(name: "Reserved11_IRQn", value: 58)
!150 = !DIEnumerator(name: "Reserved12_IRQn", value: 59)
!151 = !DIEnumerator(name: "Reserved13_IRQn", value: 60)
!152 = !DIEnumerator(name: "Reserved14_IRQn", value: 61)
!153 = !DIEnumerator(name: "Reserved15_IRQn", value: 62)
!154 = !DIEnumerator(name: "Reserved16_IRQn", value: 63)
!155 = !DIEnumerator(name: "IRQ_NUMBER_MAX", value: 64)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 846, baseType: !7, size: 32, elements: !157)
!157 = !{!158, !159, !160, !161, !162, !163, !164}
!158 = !DIEnumerator(name: "HAL_GPT_0", value: 0)
!159 = !DIEnumerator(name: "HAL_GPT_1", value: 1)
!160 = !DIEnumerator(name: "HAL_GPT_2", value: 2)
!161 = !DIEnumerator(name: "HAL_GPT_3", value: 3)
!162 = !DIEnumerator(name: "HAL_GPT_4", value: 4)
!163 = !DIEnumerator(name: "HAL_GPT_5", value: 5)
!164 = !DIEnumerator(name: "HAL_GPT_MAX_PORT", value: 6)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !166, line: 380, baseType: !7, size: 32, elements: !167)
!166 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpt.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC")
!167 = !{!168, !169}
!168 = !DIEnumerator(name: "HAL_GPT_TIMER_TYPE_ONE_SHOT", value: 0)
!169 = !DIEnumerator(name: "HAL_GPT_TIMER_TYPE_REPEAT", value: 1)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !166, line: 397, baseType: !7, size: 32, elements: !171)
!171 = !{!172, !173}
!172 = !DIEnumerator(name: "HAL_GPT_STOPPED", value: 0)
!173 = !DIEnumerator(name: "HAL_GPT_RUNNING", value: 1)
!174 = !{!175, !179, !194}
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !176, line: 48, baseType: !177)
!176 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_stdint.h", directory: "/home/mjshen/RTOSExploration")
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !178, line: 79, baseType: !7)
!178 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/machine/_default_types.h", directory: "/home/mjshen/RTOSExploration")
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPT_REGISTER_T", file: !78, line: 1272, baseType: !181)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 1262, size: 288, elements: !182)
!182 = !{!183, !185, !186, !187, !189, !190, !191, !192, !193}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "GPT_CON", scope: !181, file: !78, line: 1263, baseType: !184, size: 32)
!184 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !175)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "GPT_CLK", scope: !181, file: !78, line: 1264, baseType: !184, size: 32, offset: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "GPT_IRQ_EN", scope: !181, file: !78, line: 1265, baseType: !184, size: 32, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "GPT_IRQ_STA", scope: !181, file: !78, line: 1266, baseType: !188, size: 32, offset: 96)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "GPT_IRQ_ACK", scope: !181, file: !78, line: 1267, baseType: !184, size: 32, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "GPT_COUNT", scope: !181, file: !78, line: 1268, baseType: !184, size: 32, offset: 160)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "GPT_COMPARE", scope: !181, file: !78, line: 1269, baseType: !184, size: 32, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "GPT_COUNTH", scope: !181, file: !78, line: 1270, baseType: !184, size: 32, offset: 224)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "GPT_COMPAREH", scope: !181, file: !78, line: 1271, baseType: !184, size: 32, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!195 = !{!0, !196, !205, !212, !234, !257}
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "gp_gpt_glb", scope: !2, file: !3, line: 49, type: !198, isLocal: false, isDefinition: true)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPT_REGISTER_GLOABL_T", file: !78, line: 1260, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 1256, size: 96, elements: !201)
!201 = !{!202, !203, !204}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "GPT_IRQSTA", scope: !200, file: !78, line: 1257, baseType: !188, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "GPT_IRQMSK0", scope: !200, file: !78, line: 1258, baseType: !184, size: 32, offset: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "GPT_IRQMSK1", scope: !200, file: !78, line: 1259, baseType: !184, size: 32, offset: 64)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "flag", scope: !207, file: !3, line: 88, type: !211, isLocal: true, isDefinition: true)
!207 = distinct !DISubprogram(name: "gpt_get_lfosc_clock", scope: !3, file: !3, line: 86, type: !208, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !210)
!208 = !DISubroutineType(types: !209)
!209 = !{null}
!210 = !{}
!211 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(name: "g_gpt_context", scope: !2, file: !3, line: 51, type: !214, isLocal: false, isDefinition: true)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 768, elements: !232)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpt_context_t", file: !67, line: 116, baseType: !216)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !67, line: 111, size: 128, elements: !217)
!217 = !{!218, !220, !230, !231}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "running_status", scope: !216, file: !67, line: 112, baseType: !219, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_running_status_t", file: !166, line: 400, baseType: !170)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "callback_context", scope: !216, file: !67, line: 113, baseType: !221, size: 64, offset: 32)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpt_callback_context_t", file: !67, line: 109, baseType: !222)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !67, line: 106, size: 64, elements: !223)
!223 = !{!224, !229}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !222, file: !67, line: 107, baseType: !225, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_callback_t", file: !166, line: 371, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 32)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !194}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !222, file: !67, line: 108, baseType: !194, size: 32, offset: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "has_initilized", scope: !216, file: !67, line: 114, baseType: !211, size: 8, offset: 96)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "is_gpt_locked_sleep", scope: !216, file: !67, line: 115, baseType: !211, size: 8, offset: 104)
!232 = !{!233}
!233 = !DISubrange(count: 6)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(name: "gpt_sw_context", scope: !2, file: !3, line: 52, type: !236, isLocal: false, isDefinition: true)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpt_sw_context_t", file: !67, line: 134, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !67, line: 125, size: 4256, elements: !238)
!238 = !{!239, !250, !251, !252, !253, !254, !255, !256}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !237, file: !67, line: 126, baseType: !240, size: 4096)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 4096, elements: !248)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpt_sw_timer_t", file: !67, line: 123, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !67, line: 118, size: 128, elements: !243)
!243 = !{!244, !245, !246, !247}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "callback_context", scope: !242, file: !67, line: 119, baseType: !221, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "time_out_ms", scope: !242, file: !67, line: 120, baseType: !175, size: 32, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "is_used", scope: !242, file: !67, line: 121, baseType: !211, size: 8, offset: 96)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "is_running", scope: !242, file: !67, line: 122, baseType: !211, size: 8, offset: 104)
!248 = !{!249}
!249 = !DISubrange(count: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "absolute_time", scope: !237, file: !67, line: 127, baseType: !175, size: 32, offset: 4096)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "last_absolute_time", scope: !237, file: !67, line: 128, baseType: !175, size: 32, offset: 4128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "used_timer_count", scope: !237, file: !67, line: 129, baseType: !175, size: 32, offset: 4160)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "running_timer_count", scope: !237, file: !67, line: 130, baseType: !175, size: 32, offset: 4192)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "is_first_init", scope: !237, file: !67, line: 131, baseType: !211, size: 8, offset: 4224)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "is_start_from_isr", scope: !237, file: !67, line: 132, baseType: !211, size: 8, offset: 4232)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "is_sw_gpt", scope: !237, file: !67, line: 133, baseType: !211, size: 8, offset: 4240)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(name: "gpt_clock_source", scope: !2, file: !3, line: 53, type: !175, isLocal: false, isDefinition: true)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 192, elements: !232)
!260 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(name: "gpio_register_base", scope: !263, file: !264, line: 64, type: !364, isLocal: false, isDefinition: true)
!263 = distinct !DICompileUnit(language: DW_LANG_C99, file: !264, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !265, retainedTypes: !359, globals: !363, splitDebugInlining: false, nameTableKind: None)
!264 = !DIFile(filename: "../../../../../driver/chip/mt2523/src/hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC")
!265 = !{!266, !318, !325, !329, !335, !339, !348, !353}
!266 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 339, baseType: !7, size: 32, elements: !267)
!267 = !{!268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317}
!268 = !DIEnumerator(name: "HAL_GPIO_0", value: 0)
!269 = !DIEnumerator(name: "HAL_GPIO_1", value: 1)
!270 = !DIEnumerator(name: "HAL_GPIO_2", value: 2)
!271 = !DIEnumerator(name: "HAL_GPIO_3", value: 3)
!272 = !DIEnumerator(name: "HAL_GPIO_4", value: 4)
!273 = !DIEnumerator(name: "HAL_GPIO_5", value: 5)
!274 = !DIEnumerator(name: "HAL_GPIO_6", value: 6)
!275 = !DIEnumerator(name: "HAL_GPIO_7", value: 7)
!276 = !DIEnumerator(name: "HAL_GPIO_8", value: 8)
!277 = !DIEnumerator(name: "HAL_GPIO_9", value: 9)
!278 = !DIEnumerator(name: "HAL_GPIO_10", value: 10)
!279 = !DIEnumerator(name: "HAL_GPIO_11", value: 11)
!280 = !DIEnumerator(name: "HAL_GPIO_12", value: 12)
!281 = !DIEnumerator(name: "HAL_GPIO_13", value: 13)
!282 = !DIEnumerator(name: "HAL_GPIO_14", value: 14)
!283 = !DIEnumerator(name: "HAL_GPIO_15", value: 15)
!284 = !DIEnumerator(name: "HAL_GPIO_16", value: 16)
!285 = !DIEnumerator(name: "HAL_GPIO_17", value: 17)
!286 = !DIEnumerator(name: "HAL_GPIO_18", value: 18)
!287 = !DIEnumerator(name: "HAL_GPIO_19", value: 19)
!288 = !DIEnumerator(name: "HAL_GPIO_20", value: 20)
!289 = !DIEnumerator(name: "HAL_GPIO_21", value: 21)
!290 = !DIEnumerator(name: "HAL_GPIO_22", value: 22)
!291 = !DIEnumerator(name: "HAL_GPIO_23", value: 23)
!292 = !DIEnumerator(name: "HAL_GPIO_24", value: 24)
!293 = !DIEnumerator(name: "HAL_GPIO_25", value: 25)
!294 = !DIEnumerator(name: "HAL_GPIO_26", value: 26)
!295 = !DIEnumerator(name: "HAL_GPIO_27", value: 27)
!296 = !DIEnumerator(name: "HAL_GPIO_28", value: 28)
!297 = !DIEnumerator(name: "HAL_GPIO_29", value: 29)
!298 = !DIEnumerator(name: "HAL_GPIO_30", value: 30)
!299 = !DIEnumerator(name: "HAL_GPIO_31", value: 31)
!300 = !DIEnumerator(name: "HAL_GPIO_32", value: 32)
!301 = !DIEnumerator(name: "HAL_GPIO_33", value: 33)
!302 = !DIEnumerator(name: "HAL_GPIO_34", value: 34)
!303 = !DIEnumerator(name: "HAL_GPIO_35", value: 35)
!304 = !DIEnumerator(name: "HAL_GPIO_36", value: 36)
!305 = !DIEnumerator(name: "HAL_GPIO_37", value: 37)
!306 = !DIEnumerator(name: "HAL_GPIO_38", value: 38)
!307 = !DIEnumerator(name: "HAL_GPIO_39", value: 39)
!308 = !DIEnumerator(name: "HAL_GPIO_40", value: 40)
!309 = !DIEnumerator(name: "HAL_GPIO_41", value: 41)
!310 = !DIEnumerator(name: "HAL_GPIO_42", value: 42)
!311 = !DIEnumerator(name: "HAL_GPIO_43", value: 43)
!312 = !DIEnumerator(name: "HAL_GPIO_44", value: 44)
!313 = !DIEnumerator(name: "HAL_GPIO_45", value: 45)
!314 = !DIEnumerator(name: "HAL_GPIO_46", value: 46)
!315 = !DIEnumerator(name: "HAL_GPIO_47", value: 47)
!316 = !DIEnumerator(name: "HAL_GPIO_48", value: 48)
!317 = !DIEnumerator(name: "HAL_GPIO_MAX", value: 49)
!318 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !319, line: 224, baseType: !79, size: 32, elements: !320)
!319 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC")
!320 = !{!321, !322, !323, !324}
!321 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR", value: -3)
!322 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR_PIN", value: -2)
!323 = !DIEnumerator(name: "HAL_GPIO_STATUS_INVALID_PARAMETER", value: -1)
!324 = !DIEnumerator(name: "HAL_GPIO_STATUS_OK", value: 0)
!325 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !319, line: 210, baseType: !7, size: 32, elements: !326)
!326 = !{!327, !328}
!327 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_INPUT", value: 0)
!328 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_OUTPUT", value: 1)
!329 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !319, line: 233, baseType: !79, size: 32, elements: !330)
!330 = !{!331, !332, !333, !334}
!331 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR", value: -3)
!332 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR_PORT", value: -2)
!333 = !DIEnumerator(name: "HAL_PINMUX_STATUS_INVALID_FUNCTION", value: -1)
!334 = !DIEnumerator(name: "HAL_PINMUX_STATUS_OK", value: 0)
!335 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !319, line: 217, baseType: !7, size: 32, elements: !336)
!336 = !{!337, !338}
!337 = !DIEnumerator(name: "HAL_GPIO_DATA_LOW", value: 0)
!338 = !DIEnumerator(name: "HAL_GPIO_DATA_HIGH", value: 1)
!339 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 415, baseType: !7, size: 32, elements: !340)
!340 = !{!341, !342, !343, !344, !345, !346, !347}
!341 = !DIEnumerator(name: "HAL_GPIO_CLOCK_0", value: 0)
!342 = !DIEnumerator(name: "HAL_GPIO_CLOCK_1", value: 1)
!343 = !DIEnumerator(name: "HAL_GPIO_CLOCK_2", value: 2)
!344 = !DIEnumerator(name: "HAL_GPIO_CLOCK_3", value: 3)
!345 = !DIEnumerator(name: "HAL_GPIO_CLOCK_4", value: 4)
!346 = !DIEnumerator(name: "HAL_GPIO_CLOCK_5", value: 5)
!347 = !DIEnumerator(name: "HAL_GPIO_CLOCK_MAX", value: 6)
!348 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 427, baseType: !7, size: 32, elements: !349)
!349 = !{!350, !351, !352}
!350 = !DIEnumerator(name: "HAL_GPIO_CLOCK_MODE_26M", value: 1)
!351 = !DIEnumerator(name: "HAL_GPIO_CLOCK_MODE_32K", value: 4)
!352 = !DIEnumerator(name: "HAL_GPIO_CLOCK_MODE_MAX", value: 5)
!353 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !319, line: 242, baseType: !7, size: 32, elements: !354)
!354 = !{!355, !356, !357, !358}
!355 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_4MA", value: 0)
!356 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_8MA", value: 1)
!357 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_12MA", value: 2)
!358 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_16MA", value: 3)
!359 = !{!194, !360, !361, !362}
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_direction_t", file: !319, line: 213, baseType: !325)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_data_t", file: !319, line: 220, baseType: !335)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_driving_current_t", file: !319, line: 247, baseType: !353)
!363 = !{!261}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPIO_REGISTER_T", file: !78, line: 1554, baseType: !366)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 1522, size: 29440, elements: !367)
!367 = !{!368, !385, !389, !398, !399, !408, !409, !418, !419, !429, !430, !439, !440, !449, !450, !459, !460, !469, !473, !482, !483, !492, !493, !502, !511, !512, !523, !527, !536, !537}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_DIR_REGISTER", scope: !366, file: !78, line: 1523, baseType: !369, size: 256)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 256, elements: !383)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPIO_DIR_REGISTER_T", file: !78, line: 1400, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 1395, size: 128, elements: !372)
!372 = !{!373, !374, !375, !376}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_DIR", scope: !371, file: !78, line: 1396, baseType: !184, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_DIR_SET", scope: !371, file: !78, line: 1397, baseType: !184, size: 32, offset: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_DIR_CLR", scope: !371, file: !78, line: 1398, baseType: !184, size: 32, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OFFSET", scope: !371, file: !78, line: 1399, baseType: !377, size: 32, offset: 96)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 32, elements: !381)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !176, line: 24, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !178, line: 43, baseType: !380)
!380 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!381 = !{!382}
!382 = !DISubrange(count: 4)
!383 = !{!384}
!384 = !DISubrange(count: 2)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OFFSET1", scope: !366, file: !78, line: 1524, baseType: !386, size: 1792, offset: 256)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 1792, elements: !387)
!387 = !{!388}
!388 = !DISubrange(count: 224)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PULLEN_REGISTER", scope: !366, file: !78, line: 1525, baseType: !390, size: 256, offset: 2048)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 256, elements: !383)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPIO_PULLEN_REGISTER_T", file: !78, line: 1409, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 1404, size: 128, elements: !393)
!393 = !{!394, !395, !396, !397}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PULLEN", scope: !392, file: !78, line: 1405, baseType: !184, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PULLEN_SET", scope: !392, file: !78, line: 1406, baseType: !184, size: 32, offset: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PULLEN_CLR", scope: !392, file: !78, line: 1407, baseType: !184, size: 32, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OFFSET", scope: !392, file: !78, line: 1408, baseType: !377, size: 32, offset: 96)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OFFSET2", scope: !366, file: !78, line: 1526, baseType: !386, size: 1792, offset: 2304)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_DINV_REGISTER", scope: !366, file: !78, line: 1527, baseType: !400, size: 256, offset: 4096)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, size: 256, elements: !383)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPIO_DINV_REGISTER_T", file: !78, line: 1417, baseType: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 1412, size: 128, elements: !403)
!403 = !{!404, !405, !406, !407}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_DINV", scope: !402, file: !78, line: 1413, baseType: !184, size: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_DINV_SET", scope: !402, file: !78, line: 1414, baseType: !184, size: 32, offset: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_DINV_CLR", scope: !402, file: !78, line: 1415, baseType: !184, size: 32, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OFFSET", scope: !402, file: !78, line: 1416, baseType: !377, size: 32, offset: 96)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OFFSET3", scope: !366, file: !78, line: 1528, baseType: !386, size: 1792, offset: 4352)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_DOUT_REGISTER", scope: !366, file: !78, line: 1529, baseType: !410, size: 256, offset: 6144)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 256, elements: !383)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPIO_DOUT_REGISTER_T", file: !78, line: 1426, baseType: !412)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 1421, size: 128, elements: !413)
!413 = !{!414, !415, !416, !417}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_DOUT", scope: !412, file: !78, line: 1422, baseType: !184, size: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_DOUT_SET", scope: !412, file: !78, line: 1423, baseType: !184, size: 32, offset: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_DOUT_CLR", scope: !412, file: !78, line: 1424, baseType: !184, size: 32, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OFFSET", scope: !412, file: !78, line: 1425, baseType: !377, size: 32, offset: 96)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OFFSET4", scope: !366, file: !78, line: 1530, baseType: !386, size: 1792, offset: 6400)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_DIN_REGISTER", scope: !366, file: !78, line: 1531, baseType: !420, size: 256, offset: 8192)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 256, elements: !383)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPIO_DIN_REGISTER_T", file: !78, line: 1432, baseType: !422)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 1429, size: 128, elements: !423)
!423 = !{!424, !425}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_DIN", scope: !422, file: !78, line: 1430, baseType: !184, size: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OFFSET", scope: !422, file: !78, line: 1431, baseType: !426, size: 96, offset: 32)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 96, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 12)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OFFSET5", scope: !366, file: !78, line: 1532, baseType: !386, size: 1792, offset: 8448)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PULLSEL_REGISTER", scope: !366, file: !78, line: 1533, baseType: !431, size: 256, offset: 10240)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 256, elements: !383)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPIO_PULLSEL_REGISTER_T", file: !78, line: 1440, baseType: !433)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 1435, size: 128, elements: !434)
!434 = !{!435, !436, !437, !438}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PULLSEL", scope: !433, file: !78, line: 1436, baseType: !184, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PULLSEL_SET", scope: !433, file: !78, line: 1437, baseType: !184, size: 32, offset: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PULLSEL_CLR", scope: !433, file: !78, line: 1438, baseType: !184, size: 32, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OFFSET", scope: !433, file: !78, line: 1439, baseType: !377, size: 32, offset: 96)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OFFSET6", scope: !366, file: !78, line: 1534, baseType: !386, size: 1792, offset: 10496)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_SMT_REGISTER", scope: !366, file: !78, line: 1535, baseType: !441, size: 256, offset: 12288)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 256, elements: !383)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPIO_SMT_REGISTER_T", file: !78, line: 1448, baseType: !443)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 1443, size: 128, elements: !444)
!444 = !{!445, !446, !447, !448}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_SMT", scope: !443, file: !78, line: 1444, baseType: !184, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_SMT_SET", scope: !443, file: !78, line: 1445, baseType: !184, size: 32, offset: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_SMT_CLR", scope: !443, file: !78, line: 1446, baseType: !184, size: 32, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OFFSET", scope: !443, file: !78, line: 1447, baseType: !377, size: 32, offset: 96)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OFFSET7", scope: !366, file: !78, line: 1536, baseType: !386, size: 1792, offset: 12544)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_SR_REGISTER", scope: !366, file: !78, line: 1537, baseType: !451, size: 256, offset: 14336)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 256, elements: !383)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPIO_SR_REGISTER_T", file: !78, line: 1455, baseType: !453)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 1450, size: 128, elements: !454)
!454 = !{!455, !456, !457, !458}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_SR", scope: !453, file: !78, line: 1451, baseType: !184, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_SR_SET", scope: !453, file: !78, line: 1452, baseType: !184, size: 32, offset: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_SR_CLR", scope: !453, file: !78, line: 1453, baseType: !184, size: 32, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OFFSET", scope: !453, file: !78, line: 1454, baseType: !377, size: 32, offset: 96)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OFFSET8", scope: !366, file: !78, line: 1538, baseType: !386, size: 1792, offset: 14592)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_DRV_REGISTER", scope: !366, file: !78, line: 1539, baseType: !461, size: 512, offset: 16384)
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 512, elements: !381)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPIO_DRV_REGISTER_T", file: !78, line: 1463, baseType: !463)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 1458, size: 128, elements: !464)
!464 = !{!465, !466, !467, !468}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_DRV", scope: !463, file: !78, line: 1459, baseType: !184, size: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_DRV_SET", scope: !463, file: !78, line: 1460, baseType: !184, size: 32, offset: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_DRV_CLR", scope: !463, file: !78, line: 1461, baseType: !184, size: 32, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OFFSET", scope: !463, file: !78, line: 1462, baseType: !377, size: 32, offset: 96)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OFFSET9", scope: !366, file: !78, line: 1540, baseType: !470, size: 1536, offset: 16896)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 1536, elements: !471)
!471 = !{!472}
!472 = !DISubrange(count: 192)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_IES_REGISTER", scope: !366, file: !78, line: 1541, baseType: !474, size: 256, offset: 18432)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, size: 256, elements: !383)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPIO_IES_REGISTER_T", file: !78, line: 1471, baseType: !476)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 1466, size: 128, elements: !477)
!477 = !{!478, !479, !480, !481}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_IES", scope: !476, file: !78, line: 1467, baseType: !184, size: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_IES_SET", scope: !476, file: !78, line: 1468, baseType: !184, size: 32, offset: 32)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_IES_CLR", scope: !476, file: !78, line: 1469, baseType: !184, size: 32, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OFFSET", scope: !476, file: !78, line: 1470, baseType: !377, size: 32, offset: 96)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OFFSET10", scope: !366, file: !78, line: 1542, baseType: !386, size: 1792, offset: 18688)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PUPD_REGISTER", scope: !366, file: !78, line: 1543, baseType: !484, size: 256, offset: 20480)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 256, elements: !383)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPIO_PUPD_REGISTER_T", file: !78, line: 1480, baseType: !486)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 1475, size: 128, elements: !487)
!487 = !{!488, !489, !490, !491}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PUPD", scope: !486, file: !78, line: 1476, baseType: !184, size: 32)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PUPD_SET", scope: !486, file: !78, line: 1477, baseType: !184, size: 32, offset: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PUPD_CLR", scope: !486, file: !78, line: 1478, baseType: !184, size: 32, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OFFSET", scope: !486, file: !78, line: 1479, baseType: !377, size: 32, offset: 96)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OFFSET11", scope: !366, file: !78, line: 1544, baseType: !386, size: 1792, offset: 20736)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_RESEN0_REGISTER", scope: !366, file: !78, line: 1545, baseType: !494, size: 256, offset: 22528)
!494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 256, elements: !383)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPIO_RESEN0_REGISTER_T", file: !78, line: 1489, baseType: !496)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 1484, size: 128, elements: !497)
!497 = !{!498, !499, !500, !501}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_RESEN0", scope: !496, file: !78, line: 1485, baseType: !184, size: 32)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_RESEN0_SET", scope: !496, file: !78, line: 1486, baseType: !184, size: 32, offset: 32)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_RESEN0_CLR", scope: !496, file: !78, line: 1487, baseType: !184, size: 32, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OFFSET", scope: !496, file: !78, line: 1488, baseType: !377, size: 32, offset: 96)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_RESEN1_REGISTER", scope: !366, file: !78, line: 1546, baseType: !503, size: 256, offset: 22784)
!503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !504, size: 256, elements: !383)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPIO_RESEN1_REGISTER_T", file: !78, line: 1497, baseType: !505)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 1492, size: 128, elements: !506)
!506 = !{!507, !508, !509, !510}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_RESEN1", scope: !505, file: !78, line: 1493, baseType: !184, size: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_RESEN1_SET", scope: !505, file: !78, line: 1494, baseType: !184, size: 32, offset: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_RESEN1_CLR", scope: !505, file: !78, line: 1495, baseType: !184, size: 32, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OFFSET", scope: !505, file: !78, line: 1496, baseType: !377, size: 32, offset: 96)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OFFSET12", scope: !366, file: !78, line: 1547, baseType: !470, size: 1536, offset: 23040)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_MODE_REGISTER", scope: !366, file: !78, line: 1548, baseType: !513, size: 896, offset: 24576)
!513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !514, size: 896, elements: !521)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPIO_MODE_REGISTER_T", file: !78, line: 1505, baseType: !515)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 1500, size: 128, elements: !516)
!516 = !{!517, !518, !519, !520}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_MODE", scope: !515, file: !78, line: 1501, baseType: !184, size: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_MODE_SET", scope: !515, file: !78, line: 1502, baseType: !184, size: 32, offset: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_MODE_CLR", scope: !515, file: !78, line: 1503, baseType: !184, size: 32, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OFFSET", scope: !515, file: !78, line: 1504, baseType: !377, size: 32, offset: 96)
!521 = !{!522}
!522 = !DISubrange(count: 7)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OFFSET13", scope: !366, file: !78, line: 1549, baseType: !524, size: 1152, offset: 25472)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 1152, elements: !525)
!525 = !{!526}
!526 = !DISubrange(count: 144)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_TDSEL_REGISTER", scope: !366, file: !78, line: 1550, baseType: !528, size: 512, offset: 26624)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !529, size: 512, elements: !381)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPIO_TDSEL_REGISTER_T", file: !78, line: 1513, baseType: !530)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 1508, size: 128, elements: !531)
!531 = !{!532, !533, !534, !535}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_TDSEL", scope: !530, file: !78, line: 1509, baseType: !184, size: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_TDSEL_SET", scope: !530, file: !78, line: 1510, baseType: !184, size: 32, offset: 32)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_TDSEL_CLR", scope: !530, file: !78, line: 1511, baseType: !184, size: 32, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OFFSET", scope: !530, file: !78, line: 1512, baseType: !377, size: 32, offset: 96)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OFFSET14", scope: !366, file: !78, line: 1551, baseType: !470, size: 1536, offset: 27136)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_CLKOUT_REGISTER", scope: !366, file: !78, line: 1552, baseType: !538, size: 768, offset: 28672)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !539, size: 768, elements: !232)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPIO_CLKOUT_REGISTER_T", file: !78, line: 1519, baseType: !540)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 1516, size: 128, elements: !541)
!541 = !{!542, !543}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_CLKOUT", scope: !540, file: !78, line: 1517, baseType: !184, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OFFSET", scope: !540, file: !78, line: 1518, baseType: !426, size: 96, offset: 32)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(name: "g_uart_hwstatus", scope: !546, file: !547, line: 101, type: !695, isLocal: true, isDefinition: true)
!546 = distinct !DICompileUnit(language: DW_LANG_C99, file: !547, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !548, retainedTypes: !645, globals: !654, splitDebugInlining: false, nameTableKind: None)
!547 = !DIFile(filename: "../../../../../driver/chip/mt2523/src/hal_uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC")
!548 = !{!549, !556, !571, !577, !583, !588, !595, !611, !617, !621, !626, !633, !641}
!549 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 180, baseType: !7, size: 32, elements: !550)
!550 = !{!551, !552, !553, !554, !555}
!551 = !DIEnumerator(name: "HAL_UART_0", value: 0)
!552 = !DIEnumerator(name: "HAL_UART_1", value: 1)
!553 = !DIEnumerator(name: "HAL_UART_2", value: 2)
!554 = !DIEnumerator(name: "HAL_UART_3", value: 3)
!555 = !DIEnumerator(name: "HAL_UART_MAX", value: 4)
!556 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !557, line: 189, baseType: !7, size: 32, elements: !558)
!557 = !DIFile(filename: "../../../../../driver/chip/mt2523/inc/hal_pdma_internal.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC")
!558 = !{!559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570}
!559 = !DIEnumerator(name: "VDMA_START_CHANNEL", value: 8)
!560 = !DIEnumerator(name: "VDMA_UART1TX", value: 8)
!561 = !DIEnumerator(name: "VDMA_UART1RX", value: 9)
!562 = !DIEnumerator(name: "VDMA_UART2TX", value: 10)
!563 = !DIEnumerator(name: "VDMA_UART2RX", value: 11)
!564 = !DIEnumerator(name: "VDMA_UART3TX", value: 12)
!565 = !DIEnumerator(name: "VDMA_UART3RX", value: 13)
!566 = !DIEnumerator(name: "VDMA_UART0TX", value: 14)
!567 = !DIEnumerator(name: "VDMA_UART0RX", value: 15)
!568 = !DIEnumerator(name: "VDMA_BTIFTX", value: 16)
!569 = !DIEnumerator(name: "VDMA_BTIFRX", value: 17)
!570 = !DIEnumerator(name: "VDMA_END_CHANNEL", value: 18)
!571 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !572, line: 355, baseType: !79, size: 32, elements: !573)
!572 = !DIFile(filename: "../../../../../driver/chip/inc/hal_uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC")
!573 = !{!574, !575, !576}
!574 = !DIEnumerator(name: "HAL_UART_EVENT_TRANSACTION_ERROR", value: -1)
!575 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_READ", value: 1)
!576 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_WRITE", value: 2)
!577 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !557, line: 206, baseType: !79, size: 32, elements: !578)
!578 = !{!579, !580, !581, !582}
!579 = !DIEnumerator(name: "VDMA_ERROR", value: -3)
!580 = !DIEnumerator(name: "VDMA_ERROR_CHANNEL", value: -2)
!581 = !DIEnumerator(name: "VDMA_INVALID_PARAMETER", value: -1)
!582 = !DIEnumerator(name: "VDMA_OK", value: 0)
!583 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !547, line: 65, baseType: !7, size: 32, elements: !584)
!584 = !{!585, !586, !587}
!585 = !DIEnumerator(name: "UART_HWSTATUS_UNINITIALIZED", value: 0)
!586 = !DIEnumerator(name: "UART_HWSTATUS_POLL_INITIALIZED", value: 1)
!587 = !DIEnumerator(name: "UART_HWSTATUS_DMA_INITIALIZED", value: 2)
!588 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !572, line: 345, baseType: !79, size: 32, elements: !589)
!589 = !{!590, !591, !592, !593, !594}
!590 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_PARAMETER", value: -4)
!591 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_BUSY", value: -3)
!592 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_UNINITIALIZED", value: -2)
!593 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR", value: -1)
!594 = !DIEnumerator(name: "HAL_UART_STATUS_OK", value: 0)
!595 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !572, line: 302, baseType: !7, size: 32, elements: !596)
!596 = !{!597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610}
!597 = !DIEnumerator(name: "HAL_UART_BAUDRATE_110", value: 0)
!598 = !DIEnumerator(name: "HAL_UART_BAUDRATE_300", value: 1)
!599 = !DIEnumerator(name: "HAL_UART_BAUDRATE_1200", value: 2)
!600 = !DIEnumerator(name: "HAL_UART_BAUDRATE_2400", value: 3)
!601 = !DIEnumerator(name: "HAL_UART_BAUDRATE_4800", value: 4)
!602 = !DIEnumerator(name: "HAL_UART_BAUDRATE_9600", value: 5)
!603 = !DIEnumerator(name: "HAL_UART_BAUDRATE_19200", value: 6)
!604 = !DIEnumerator(name: "HAL_UART_BAUDRATE_38400", value: 7)
!605 = !DIEnumerator(name: "HAL_UART_BAUDRATE_57600", value: 8)
!606 = !DIEnumerator(name: "HAL_UART_BAUDRATE_115200", value: 9)
!607 = !DIEnumerator(name: "HAL_UART_BAUDRATE_230400", value: 10)
!608 = !DIEnumerator(name: "HAL_UART_BAUDRATE_460800", value: 11)
!609 = !DIEnumerator(name: "HAL_UART_BAUDRATE_921600", value: 12)
!610 = !DIEnumerator(name: "HAL_UART_BAUDRATE_MAX", value: 13)
!611 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !572, line: 321, baseType: !7, size: 32, elements: !612)
!612 = !{!613, !614, !615, !616}
!613 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_5", value: 0)
!614 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_6", value: 1)
!615 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_7", value: 2)
!616 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_8", value: 3)
!617 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !572, line: 330, baseType: !7, size: 32, elements: !618)
!618 = !{!619, !620}
!619 = !DIEnumerator(name: "HAL_UART_STOP_BIT_1", value: 0)
!620 = !DIEnumerator(name: "HAL_UART_STOP_BIT_2", value: 1)
!621 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !572, line: 337, baseType: !7, size: 32, elements: !622)
!622 = !{!623, !624, !625}
!623 = !DIEnumerator(name: "HAL_UART_PARITY_NONE", value: 0)
!624 = !DIEnumerator(name: "HAL_UART_PARITY_ODD", value: 1)
!625 = !DIEnumerator(name: "HAL_UART_PARITY_EVEN", value: 2)
!626 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !627, line: 101, baseType: !79, size: 32, elements: !628)
!627 = !DIFile(filename: "../../../../../driver/chip/inc/hal_clock.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC")
!628 = !{!629, !630, !631, !632}
!629 = !DIEnumerator(name: "HAL_CLOCK_STATUS_UNINITIALIZED", value: -3)
!630 = !DIEnumerator(name: "HAL_CLOCK_STATUS_INVALID_PARAMETER", value: -2)
!631 = !DIEnumerator(name: "HAL_CLOCK_STATUS_ERROR", value: -1)
!632 = !DIEnumerator(name: "HAL_CLOCK_STATUS_OK", value: 0)
!633 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !634, line: 152, baseType: !79, size: 32, elements: !635)
!634 = !DIFile(filename: "../../../../../driver/chip/inc/hal_nvic.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC")
!635 = !{!636, !637, !638, !639, !640}
!636 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_NO_ISR", value: -4)
!637 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_IRQ_NUMBER", value: -3)
!638 = !DIEnumerator(name: "HAL_NVIC_STATUS_INVALID_PARAMETER", value: -2)
!639 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR", value: -1)
!640 = !DIEnumerator(name: "HAL_NVIC_STATUS_OK", value: 0)
!641 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !557, line: 222, baseType: !79, size: 32, elements: !642)
!642 = !{!643, !644}
!643 = !DIEnumerator(name: "VDMA_EVENT_TRANSACTION_ERROR", value: -1)
!644 = !DIEnumerator(name: "VDMA_EVENT_TRANSACTION_SUCCESS", value: 0)
!645 = !{!194, !175, !646}
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 32)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "uart_dma_callback_data_t", file: !648, line: 96, baseType: !649)
!648 = !DIFile(filename: "../../../../../driver/chip/mt2523/inc/hal_uart_internal.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC")
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !648, line: 93, size: 64, elements: !650)
!650 = !{!651, !652}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "is_rx", scope: !649, file: !648, line: 94, baseType: !211, size: 8)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "uart_port", scope: !649, file: !648, line: 95, baseType: !653, size: 32, offset: 32)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_port_t", file: !6, line: 186, baseType: !549)
!654 = !{!544, !655, !668, !673, !687, !693}
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(name: "g_uart_callback", scope: !546, file: !547, line: 102, type: !657, isLocal: true, isDefinition: true)
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !658, size: 256, elements: !381)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "uart_callback_t", file: !547, line: 74, baseType: !659)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !547, line: 71, size: 64, elements: !660)
!660 = !{!661, !667}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !659, file: !547, line: 72, baseType: !662, size: 32)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_t", file: !572, line: 410, baseType: !663)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 32)
!664 = !DISubroutineType(types: !665)
!665 = !{null, !666, !194}
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_event_t", file: !572, line: 359, baseType: !571)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !659, file: !547, line: 73, baseType: !194, size: 32, offset: 32)
!668 = !DIGlobalVariableExpression(var: !669, expr: !DIExpression())
!669 = distinct !DIGlobalVariable(name: "g_uart_dma_callback_data", scope: !546, file: !547, line: 103, type: !670, isLocal: true, isDefinition: true)
!670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 512, elements: !671)
!671 = !{!672}
!672 = !DISubrange(count: 8)
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(name: "g_uart_dma_config", scope: !546, file: !547, line: 104, type: !675, isLocal: true, isDefinition: true)
!675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !676, size: 896, elements: !381)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_dma_config_t", file: !572, line: 390, baseType: !677)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !572, line: 382, size: 224, elements: !678)
!678 = !{!679, !681, !682, !683, !684, !685, !686}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer", scope: !677, file: !572, line: 383, baseType: !680, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer_size", scope: !677, file: !572, line: 384, baseType: !175, size: 32, offset: 32)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_threshold_size", scope: !677, file: !572, line: 385, baseType: !175, size: 32, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer", scope: !677, file: !572, line: 386, baseType: !680, size: 32, offset: 96)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer_size", scope: !677, file: !572, line: 387, baseType: !175, size: 32, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_threshold_size", scope: !677, file: !572, line: 388, baseType: !175, size: 32, offset: 160)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_alert_size", scope: !677, file: !572, line: 389, baseType: !175, size: 32, offset: 192)
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(name: "g_uart_baudrate_map", scope: !546, file: !547, line: 105, type: !689, isLocal: true, isDefinition: true)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !690, size: 416, elements: !691)
!690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!691 = !{!692}
!692 = !DISubrange(count: 13)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(name: "g_uart_global_data_initialized", scope: !546, file: !547, line: 90, type: !211, isLocal: true, isDefinition: true)
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !696, size: 128, elements: !381)
!696 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !697)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "uart_hwstatus_t", file: !547, line: 69, baseType: !583)
!698 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(name: "g_uart_regbase", scope: !701, file: !702, line: 53, type: !782, isLocal: false, isDefinition: true)
!701 = distinct !DICompileUnit(language: DW_LANG_C99, file: !702, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !703, retainedTypes: !714, globals: !770, splitDebugInlining: false, nameTableKind: None)
!702 = !DIFile(filename: "../../../../../driver/chip/mt2523/src/hal_uart_internal_platform.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC")
!703 = !{!5, !77, !556, !549, !704}
!704 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !648, line: 46, baseType: !7, size: 32, elements: !705)
!705 = !{!706, !707, !708, !709, !710, !711, !712, !713}
!706 = !DIEnumerator(name: "UART_INTERRUPT_NONE", value: 0)
!707 = !DIEnumerator(name: "UART_INTERRUPT_RECEIVE_ERROR", value: 1)
!708 = !DIEnumerator(name: "UART_INTERRUPT_RECEIVE_TIMEOUT", value: 2)
!709 = !DIEnumerator(name: "UART_INTERRUPT_RECEIVE_BREAK", value: 3)
!710 = !DIEnumerator(name: "UART_INTERRUPT_RECEIVE_AVAILABLE", value: 4)
!711 = !DIEnumerator(name: "UART_INTERRUPT_SEND_AVAILABLE", value: 5)
!712 = !DIEnumerator(name: "UART_INTERRUPT_SOFTWARE_FLOWCONTROL", value: 6)
!713 = !DIEnumerator(name: "UART_INTERRUPT_HARDWARE_FLOWCONTROL", value: 7)
!714 = !{!715}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 32)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "UART_REGISTER_T", file: !78, line: 588, baseType: !717)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 542, size: 800, elements: !718)
!718 = !{!719, !725, !730, !736, !737, !742, !747, !748, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "RBR_THR_DLL", scope: !717, file: !78, line: 547, baseType: !720, size: 32)
!720 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !717, file: !78, line: 543, size: 32, elements: !721)
!721 = !{!722, !723, !724}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "RBR", scope: !720, file: !78, line: 544, baseType: !188, size: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "THR", scope: !720, file: !78, line: 545, baseType: !184, size: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "DLL", scope: !720, file: !78, line: 546, baseType: !184, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "IER_DLM", scope: !717, file: !78, line: 551, baseType: !726, size: 32, offset: 32)
!726 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !717, file: !78, line: 548, size: 32, elements: !727)
!727 = !{!728, !729}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "IER", scope: !726, file: !78, line: 549, baseType: !184, size: 32)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "DLM", scope: !726, file: !78, line: 550, baseType: !184, size: 32)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "IIR_FCR_EFR", scope: !717, file: !78, line: 556, baseType: !731, size: 32, offset: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !717, file: !78, line: 552, size: 32, elements: !732)
!732 = !{!733, !734, !735}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "IIR", scope: !731, file: !78, line: 553, baseType: !188, size: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "FCR", scope: !731, file: !78, line: 554, baseType: !184, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "EFR", scope: !731, file: !78, line: 555, baseType: !184, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "LCR", scope: !717, file: !78, line: 557, baseType: !184, size: 32, offset: 96)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "MCR_XON1", scope: !717, file: !78, line: 561, baseType: !738, size: 32, offset: 128)
!738 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !717, file: !78, line: 558, size: 32, elements: !739)
!739 = !{!740, !741}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "MCR", scope: !738, file: !78, line: 559, baseType: !184, size: 32)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "XON1", scope: !738, file: !78, line: 560, baseType: !184, size: 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "LSR_XON2", scope: !717, file: !78, line: 565, baseType: !743, size: 32, offset: 160)
!743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !717, file: !78, line: 562, size: 32, elements: !744)
!744 = !{!745, !746}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "LSR", scope: !743, file: !78, line: 563, baseType: !188, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "XON2", scope: !743, file: !78, line: 564, baseType: !184, size: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "XOFF1", scope: !717, file: !78, line: 566, baseType: !184, size: 32, offset: 192)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "SCR_XOFF2", scope: !717, file: !78, line: 570, baseType: !749, size: 32, offset: 224)
!749 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !717, file: !78, line: 567, size: 32, elements: !750)
!750 = !{!751, !752}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !749, file: !78, line: 568, baseType: !184, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "XOFF2", scope: !749, file: !78, line: 569, baseType: !184, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "AUTOBAUD_EN", scope: !717, file: !78, line: 571, baseType: !184, size: 32, offset: 256)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "HIGHSPEED", scope: !717, file: !78, line: 572, baseType: !184, size: 32, offset: 288)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "SAMPLE_COUNT", scope: !717, file: !78, line: 573, baseType: !184, size: 32, offset: 320)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "SAMPLE_POINT", scope: !717, file: !78, line: 574, baseType: !184, size: 32, offset: 352)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "AUTOBAUD_REG", scope: !717, file: !78, line: 575, baseType: !188, size: 32, offset: 384)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "RATEFIX_AD", scope: !717, file: !78, line: 576, baseType: !184, size: 32, offset: 416)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "AUTOBAUDSAMPLE", scope: !717, file: !78, line: 577, baseType: !184, size: 32, offset: 448)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "GUARD", scope: !717, file: !78, line: 578, baseType: !184, size: 32, offset: 480)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "ESCAPE_DAT", scope: !717, file: !78, line: 579, baseType: !184, size: 32, offset: 512)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "ESCAPE_EN", scope: !717, file: !78, line: 580, baseType: !184, size: 32, offset: 544)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "SLEEP_EN", scope: !717, file: !78, line: 581, baseType: !184, size: 32, offset: 576)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "DMA_EN", scope: !717, file: !78, line: 582, baseType: !184, size: 32, offset: 608)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "RXTRI_AD", scope: !717, file: !78, line: 583, baseType: !184, size: 32, offset: 640)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "FRACDIV_L", scope: !717, file: !78, line: 584, baseType: !184, size: 32, offset: 672)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "FRACDIV_M", scope: !717, file: !78, line: 585, baseType: !184, size: 32, offset: 704)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "FCR_RD", scope: !717, file: !78, line: 586, baseType: !188, size: 32, offset: 736)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "TX_ACTIVE_EN", scope: !717, file: !78, line: 587, baseType: !184, size: 32, offset: 768)
!770 = !{!699, !771, !776}
!771 = !DIGlobalVariableExpression(var: !772, expr: !DIExpression())
!772 = distinct !DIGlobalVariable(name: "g_uart_port_to_pdn", scope: !701, file: !702, line: 54, type: !773, isLocal: false, isDefinition: true)
!773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !774, size: 128, elements: !381)
!774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !775)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_clock_cg_id", file: !6, line: 1237, baseType: !5)
!776 = !DIGlobalVariableExpression(var: !777, expr: !DIExpression())
!777 = distinct !DIGlobalVariable(name: "g_uart_port_to_irq_num", scope: !701, file: !702, line: 55, type: !778, isLocal: false, isDefinition: true)
!778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !779, size: 128, elements: !381)
!779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !780)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_irq_t", file: !78, line: 125, baseType: !781)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRQn_Type", file: !78, line: 123, baseType: !77)
!782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !783, size: 128, elements: !381)
!783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !715)
!784 = !DIGlobalVariableExpression(var: !785, expr: !DIExpression())
!785 = distinct !DIGlobalVariable(name: "EINT_REGISTER", scope: !786, file: !787, line: 55, type: !877, isLocal: false, isDefinition: true)
!786 = distinct !DICompileUnit(language: DW_LANG_C99, file: !787, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !788, retainedTypes: !843, globals: !849, splitDebugInlining: false, nameTableKind: None)
!787 = !DIFile(filename: "../../../../../driver/chip/mt2523/src/hal_eint.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC")
!788 = !{!789, !796, !831, !77, !838}
!789 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !790, line: 204, baseType: !79, size: 32, elements: !791)
!790 = !DIFile(filename: "../../../../../driver/chip/inc/hal_eint.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC")
!791 = !{!792, !793, !794, !795}
!792 = !DIEnumerator(name: "HAL_EINT_STATUS_ERROR_EINT_NUMBER", value: -3)
!793 = !DIEnumerator(name: "HAL_EINT_STATUS_INVALID_PARAMETER", value: -2)
!794 = !DIEnumerator(name: "HAL_EINT_STATUS_ERROR", value: -1)
!795 = !DIEnumerator(name: "HAL_EINT_STATUS_OK", value: 0)
!796 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 787, baseType: !7, size: 32, elements: !797)
!797 = !{!798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830}
!798 = !DIEnumerator(name: "HAL_EINT_NUMBER_0", value: 0)
!799 = !DIEnumerator(name: "HAL_EINT_NUMBER_1", value: 1)
!800 = !DIEnumerator(name: "HAL_EINT_NUMBER_2", value: 2)
!801 = !DIEnumerator(name: "HAL_EINT_NUMBER_3", value: 3)
!802 = !DIEnumerator(name: "HAL_EINT_NUMBER_4", value: 4)
!803 = !DIEnumerator(name: "HAL_EINT_NUMBER_5", value: 5)
!804 = !DIEnumerator(name: "HAL_EINT_NUMBER_6", value: 6)
!805 = !DIEnumerator(name: "HAL_EINT_NUMBER_7", value: 7)
!806 = !DIEnumerator(name: "HAL_EINT_NUMBER_8", value: 8)
!807 = !DIEnumerator(name: "HAL_EINT_NUMBER_9", value: 9)
!808 = !DIEnumerator(name: "HAL_EINT_NUMBER_10", value: 10)
!809 = !DIEnumerator(name: "HAL_EINT_NUMBER_11", value: 11)
!810 = !DIEnumerator(name: "HAL_EINT_NUMBER_12", value: 12)
!811 = !DIEnumerator(name: "HAL_EINT_NUMBER_13", value: 13)
!812 = !DIEnumerator(name: "HAL_EINT_NUMBER_14", value: 14)
!813 = !DIEnumerator(name: "HAL_EINT_NUMBER_15", value: 15)
!814 = !DIEnumerator(name: "HAL_EINT_NUMBER_16", value: 16)
!815 = !DIEnumerator(name: "HAL_EINT_NUMBER_17", value: 17)
!816 = !DIEnumerator(name: "HAL_EINT_NUMBER_18", value: 18)
!817 = !DIEnumerator(name: "HAL_EINT_NUMBER_19", value: 19)
!818 = !DIEnumerator(name: "HAL_EINT_KEYPAD", value: 20)
!819 = !DIEnumerator(name: "HAL_EINT_UART_0_RX", value: 21)
!820 = !DIEnumerator(name: "HAL_EINT_UART_1_RX", value: 22)
!821 = !DIEnumerator(name: "HAL_EINT_UART_2_RX", value: 23)
!822 = !DIEnumerator(name: "HAL_EINT_UART_3_RX", value: 24)
!823 = !DIEnumerator(name: "HAL_EINT_BTSYS", value: 25)
!824 = !DIEnumerator(name: "HAL_EINT_BTSYS_BTIF", value: 26)
!825 = !DIEnumerator(name: "HAL_EINT_USB", value: 27)
!826 = !DIEnumerator(name: "HAL_EINT_ACCDET", value: 28)
!827 = !DIEnumerator(name: "HAL_EINT_RTC", value: 29)
!828 = !DIEnumerator(name: "HAL_EINT_PMIC", value: 30)
!829 = !DIEnumerator(name: "HAL_EINT_GPCOUNTER", value: 31)
!830 = !DIEnumerator(name: "HAL_EINT_NUMBER_MAX", value: 32)
!831 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !790, line: 194, baseType: !7, size: 32, elements: !832)
!832 = !{!833, !834, !835, !836, !837}
!833 = !DIEnumerator(name: "HAL_EINT_LEVEL_LOW", value: 0)
!834 = !DIEnumerator(name: "HAL_EINT_LEVEL_HIGH", value: 1)
!835 = !DIEnumerator(name: "HAL_EINT_EDGE_FALLING", value: 2)
!836 = !DIEnumerator(name: "HAL_EINT_EDGE_RISING", value: 3)
!837 = !DIEnumerator(name: "HAL_EINT_EDGE_FALLING_AND_RISING", value: 4)
!838 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !839, line: 59, baseType: !7, size: 32, elements: !840)
!839 = !DIFile(filename: "../../../../../driver/chip/mt2523/inc/hal_eint_internal.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC")
!840 = !{!841, !842}
!841 = !DIEnumerator(name: "EINT_DOMAIN_DISABLE", value: 0)
!842 = !DIEnumerator(name: "EINT_DOMAIN_ENABLE", value: 1)
!843 = !{!844, !194, !848}
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_isr_t", file: !634, line: 175, baseType: !845)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 32)
!846 = !DISubroutineType(types: !847)
!847 = !{null, !780}
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_eint_number_t", file: !6, line: 821, baseType: !796)
!849 = !{!784, !850, !869}
!850 = !DIGlobalVariableExpression(var: !851, expr: !DIExpression())
!851 = distinct !DIGlobalVariable(name: "ini_state", scope: !852, file: !787, line: 134, type: !175, isLocal: true, isDefinition: true)
!852 = distinct !DISubprogram(name: "hal_eint_init", scope: !787, file: !787, line: 130, type: !853, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !864)
!853 = !DISubroutineType(types: !854)
!854 = !{!855, !848, !856}
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_eint_status_t", file: !790, line: 209, baseType: !789)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 32)
!857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !858)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_eint_config_t", file: !790, line: 225, baseType: !859)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !790, line: 222, size: 64, elements: !860)
!860 = !{!861, !863}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_mode", scope: !859, file: !790, line: 223, baseType: !862, size: 32)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_eint_trigger_mode_t", file: !790, line: 200, baseType: !831)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "debounce_time", scope: !859, file: !790, line: 224, baseType: !175, size: 32, offset: 32)
!864 = !{!865, !866, !867, !868}
!865 = !DILocalVariable(name: "eint_number", arg: 1, scope: !852, file: !787, line: 130, type: !848)
!866 = !DILocalVariable(name: "eint_config", arg: 2, scope: !852, file: !787, line: 130, type: !856)
!867 = !DILocalVariable(name: "status", scope: !852, file: !787, line: 132, type: !855)
!868 = !DILocalVariable(name: "mask", scope: !852, file: !787, line: 133, type: !175)
!869 = !DIGlobalVariableExpression(var: !870, expr: !DIExpression())
!870 = distinct !DIGlobalVariable(name: "eint_function_table", scope: !786, file: !787, line: 56, type: !871, isLocal: true, isDefinition: true)
!871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !872, size: 2048, elements: !248)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "eint_function_t", file: !839, line: 44, baseType: !873)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !839, line: 41, size: 64, elements: !874)
!874 = !{!875, !876}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "eint_callback", scope: !873, file: !839, line: 42, baseType: !226, size: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !873, file: !839, line: 43, baseType: !194, size: 32, offset: 32)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 32)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "EINT_REGISTER_T", file: !78, line: 2305, baseType: !879)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 2264, size: 4096, elements: !880)
!880 = !{!881, !882, !883, !884, !885, !886, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !925}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "EINT_STA", scope: !879, file: !78, line: 2265, baseType: !188, size: 32)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !879, file: !78, line: 2266, baseType: !175, size: 32, offset: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "EITN_INTACK", scope: !879, file: !78, line: 2267, baseType: !184, size: 32, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !879, file: !78, line: 2268, baseType: !175, size: 32, offset: 96)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "EINT_EEVT", scope: !879, file: !78, line: 2269, baseType: !188, size: 32, offset: 128)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !879, file: !78, line: 2270, baseType: !887, size: 96, offset: 160)
!887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 96, elements: !888)
!888 = !{!889}
!889 = !DISubrange(count: 3)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "EINT_MASK", scope: !879, file: !78, line: 2271, baseType: !188, size: 32, offset: 256)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !879, file: !78, line: 2272, baseType: !175, size: 32, offset: 288)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "EINT_MASK_SET", scope: !879, file: !78, line: 2273, baseType: !184, size: 32, offset: 320)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !879, file: !78, line: 2274, baseType: !175, size: 32, offset: 352)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "EINT_MASK_CLR", scope: !879, file: !78, line: 2275, baseType: !184, size: 32, offset: 384)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !879, file: !78, line: 2276, baseType: !887, size: 96, offset: 416)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "EINT_WAKEUP_MASK", scope: !879, file: !78, line: 2277, baseType: !188, size: 32, offset: 512)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED6", scope: !879, file: !78, line: 2278, baseType: !175, size: 32, offset: 544)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "EINT_WAKEUP_MASK_SET", scope: !879, file: !78, line: 2280, baseType: !184, size: 32, offset: 576)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED7", scope: !879, file: !78, line: 2281, baseType: !175, size: 32, offset: 608)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "EINT_WAKEUP_MASK_CLR", scope: !879, file: !78, line: 2282, baseType: !184, size: 32, offset: 640)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED8", scope: !879, file: !78, line: 2283, baseType: !887, size: 96, offset: 672)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "EINT_SENS", scope: !879, file: !78, line: 2284, baseType: !188, size: 32, offset: 768)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED9", scope: !879, file: !78, line: 2285, baseType: !175, size: 32, offset: 800)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "EINT_SENS_SET", scope: !879, file: !78, line: 2286, baseType: !184, size: 32, offset: 832)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED10", scope: !879, file: !78, line: 2287, baseType: !175, size: 32, offset: 864)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "EINT_SENS_CLR", scope: !879, file: !78, line: 2288, baseType: !184, size: 32, offset: 896)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED11", scope: !879, file: !78, line: 2289, baseType: !887, size: 96, offset: 928)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "EINT_DUALEDGE_SENS", scope: !879, file: !78, line: 2290, baseType: !188, size: 32, offset: 1024)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED12", scope: !879, file: !78, line: 2291, baseType: !175, size: 32, offset: 1056)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "EINT_DUALEDGE_SENS_SET", scope: !879, file: !78, line: 2292, baseType: !184, size: 32, offset: 1088)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED13", scope: !879, file: !78, line: 2293, baseType: !175, size: 32, offset: 1120)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "EINT_DUALEDGE_SENS_CLR", scope: !879, file: !78, line: 2294, baseType: !184, size: 32, offset: 1152)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED14", scope: !879, file: !78, line: 2295, baseType: !887, size: 96, offset: 1184)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "EINT_SOFT", scope: !879, file: !78, line: 2296, baseType: !188, size: 32, offset: 1280)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED15", scope: !879, file: !78, line: 2297, baseType: !175, size: 32, offset: 1312)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "EINT_SOFT_SET", scope: !879, file: !78, line: 2298, baseType: !184, size: 32, offset: 1344)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED16", scope: !879, file: !78, line: 2299, baseType: !175, size: 32, offset: 1376)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "EINT_SOFT_CLR", scope: !879, file: !78, line: 2300, baseType: !184, size: 32, offset: 1408)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED17", scope: !879, file: !78, line: 2301, baseType: !887, size: 96, offset: 1440)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "EINT_DOMEN", scope: !879, file: !78, line: 2302, baseType: !184, size: 32, offset: 1536)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED18", scope: !879, file: !78, line: 2303, baseType: !922, size: 480, offset: 1568)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 480, elements: !923)
!923 = !{!924}
!924 = !DISubrange(count: 15)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "EINT_CON", scope: !879, file: !78, line: 2304, baseType: !926, size: 2048, offset: 2048)
!926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !927, size: 2048, elements: !945)
!927 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !928)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "EINT_CON_REGISTER_T", file: !78, line: 2261, baseType: !929)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 2259, size: 32, elements: !930)
!930 = !{!931}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "CON_REGISTER", scope: !929, file: !78, line: 2260, baseType: !932, size: 32)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "EINT_CON_T", file: !78, line: 2257, baseType: !933)
!933 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !78, line: 2246, size: 32, elements: !934)
!934 = !{!935, !944}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "EINT_CON_B", scope: !933, file: !78, line: 2255, baseType: !936, size: 32)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !933, file: !78, line: 2247, size: 32, elements: !937)
!937 = !{!938, !939, !940, !941, !942, !943}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "EINT_CNT", scope: !936, file: !78, line: 2248, baseType: !175, size: 10, flags: DIFlagBitField, extraData: i64 0)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "EINT_POL", scope: !936, file: !78, line: 2250, baseType: !175, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "EINT_PRESCALER", scope: !936, file: !78, line: 2251, baseType: !175, size: 4, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "EINT_EN", scope: !936, file: !78, line: 2252, baseType: !175, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !936, file: !78, line: 2253, baseType: !175, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "RSTDBC", scope: !936, file: !78, line: 2254, baseType: !175, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "EINT_CON_W", scope: !933, file: !78, line: 2256, baseType: !175, size: 32)
!945 = !{!946}
!946 = !DISubrange(count: 64)
!947 = !DIGlobalVariableExpression(var: !851, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!948 = !DIGlobalVariableExpression(var: !949, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!949 = distinct !DIGlobalVariable(name: "priority_set", scope: !950, file: !951, line: 128, type: !175, isLocal: true, isDefinition: true)
!950 = distinct !DISubprogram(name: "hal_nvic_init", scope: !951, file: !951, line: 126, type: !952, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !955, retainedNodes: !1037)
!951 = !DIFile(filename: "../../../../../driver/chip/mt2523/src/hal_nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC")
!952 = !DISubroutineType(types: !953)
!953 = !{!954}
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_status_t", file: !634, line: 158, baseType: !633)
!955 = distinct !DICompileUnit(language: DW_LANG_C99, file: !951, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !956, retainedTypes: !957, globals: !1024, splitDebugInlining: false, nameTableKind: None)
!956 = !{!633, !77}
!957 = !{!780, !194, !958, !175, !992, !1022}
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 32)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !960, line: 418, baseType: !961)
!960 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cm4.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC")
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !960, line: 395, size: 1120, elements: !962)
!962 = !{!963, !964, !965, !966, !967, !968, !969, !972, !973, !974, !975, !976, !977, !978, !979, !981, !982, !983, !985, !989, !991}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !961, file: !960, line: 397, baseType: !188, size: 32)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !961, file: !960, line: 398, baseType: !184, size: 32, offset: 32)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !961, file: !960, line: 399, baseType: !184, size: 32, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !961, file: !960, line: 400, baseType: !184, size: 32, offset: 96)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !961, file: !960, line: 401, baseType: !184, size: 32, offset: 128)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !961, file: !960, line: 402, baseType: !184, size: 32, offset: 160)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !961, file: !960, line: 403, baseType: !970, size: 96, offset: 192)
!970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !971, size: 96, elements: !427)
!971 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !378)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !961, file: !960, line: 404, baseType: !184, size: 32, offset: 288)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !961, file: !960, line: 405, baseType: !184, size: 32, offset: 320)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !961, file: !960, line: 406, baseType: !184, size: 32, offset: 352)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !961, file: !960, line: 407, baseType: !184, size: 32, offset: 384)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !961, file: !960, line: 408, baseType: !184, size: 32, offset: 416)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !961, file: !960, line: 409, baseType: !184, size: 32, offset: 448)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !961, file: !960, line: 410, baseType: !184, size: 32, offset: 480)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !961, file: !960, line: 411, baseType: !980, size: 64, offset: 512)
!980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 64, elements: !383)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !961, file: !960, line: 412, baseType: !188, size: 32, offset: 576)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !961, file: !960, line: 413, baseType: !188, size: 32, offset: 608)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !961, file: !960, line: 414, baseType: !984, size: 128, offset: 640)
!984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 128, elements: !381)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !961, file: !960, line: 415, baseType: !986, size: 160, offset: 768)
!986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 160, elements: !987)
!987 = !{!988}
!988 = !DISubrange(count: 5)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !961, file: !960, line: 416, baseType: !990, size: 160, offset: 928)
!990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 160, elements: !987)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !961, file: !960, line: 417, baseType: !184, size: 32, offset: 1088)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 32)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !960, line: 378, baseType: !994)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !960, line: 363, size: 28704, elements: !995)
!995 = !{!996, !998, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1013, !1017, !1021}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !994, file: !960, line: 365, baseType: !997, size: 256)
!997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 256, elements: !671)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !994, file: !960, line: 366, baseType: !999, size: 768, offset: 256)
!999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 768, elements: !1000)
!1000 = !{!1001}
!1001 = !DISubrange(count: 24)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !994, file: !960, line: 367, baseType: !997, size: 256, offset: 1024)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !994, file: !960, line: 368, baseType: !999, size: 768, offset: 1280)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !994, file: !960, line: 369, baseType: !997, size: 256, offset: 2048)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !994, file: !960, line: 370, baseType: !999, size: 768, offset: 2304)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !994, file: !960, line: 371, baseType: !997, size: 256, offset: 3072)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !994, file: !960, line: 372, baseType: !999, size: 768, offset: 3328)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !994, file: !960, line: 373, baseType: !997, size: 256, offset: 4096)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !994, file: !960, line: 374, baseType: !1010, size: 1792, offset: 4352)
!1010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 1792, elements: !1011)
!1011 = !{!1012}
!1012 = !DISubrange(count: 56)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !994, file: !960, line: 375, baseType: !1014, size: 1920, offset: 6144)
!1014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !971, size: 1920, elements: !1015)
!1015 = !{!1016}
!1016 = !DISubrange(count: 240)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !994, file: !960, line: 376, baseType: !1018, size: 20608, offset: 8064)
!1018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 20608, elements: !1019)
!1019 = !{!1020}
!1020 = !DISubrange(count: 644)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !994, file: !960, line: 377, baseType: !184, size: 32, offset: 28672)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !176, line: 44, baseType: !1023)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !178, line: 77, baseType: !79)
!1024 = !{!1025, !1026, !1034}
!1025 = !DIGlobalVariableExpression(var: !949, expr: !DIExpression())
!1026 = !DIGlobalVariableExpression(var: !1027, expr: !DIExpression())
!1027 = distinct !DIGlobalVariable(name: "nvic_function_table", scope: !955, file: !951, line: 119, type: !1028, isLocal: false, isDefinition: true)
!1028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1029, size: 4096, elements: !945)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "nvic_function_t", file: !951, line: 50, baseType: !1030)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !951, line: 47, size: 64, elements: !1031)
!1031 = !{!1032, !1033}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "nvic_callback", scope: !1030, file: !951, line: 48, baseType: !845, size: 32)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pending", scope: !1030, file: !951, line: 49, baseType: !175, size: 32, offset: 32)
!1034 = !DIGlobalVariableExpression(var: !1035, expr: !DIExpression())
!1035 = distinct !DIGlobalVariable(name: "defualt_irq_priority", scope: !955, file: !951, line: 52, type: !1036, isLocal: true, isDefinition: true)
!1036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !690, size: 2048, elements: !945)
!1037 = !{!1038}
!1038 = !DILocalVariable(name: "i", scope: !950, file: !951, line: 129, type: !175)
!1039 = !DIGlobalVariableExpression(var: !1040, expr: !DIExpression())
!1040 = distinct !DIGlobalVariable(name: "emi_settings", scope: !1041, file: !1042, line: 44, type: !1189, isLocal: false, isDefinition: true)
!1041 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1042, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1043, retainedTypes: !1049, globals: !1051, splitDebugInlining: false, nameTableKind: None)
!1042 = !DIFile(filename: "../../../../../driver/chip/mt2523/src/hal_emi.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC")
!1043 = !{!1044}
!1044 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "emi_clock_enum_t", file: !1045, line: 40, baseType: !7, size: 32, elements: !1046)
!1045 = !DIFile(filename: "../../../../../driver/chip/mt2523/inc/hal_emi_internal.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC")
!1046 = !{!1047, !1048}
!1047 = !DIEnumerator(name: "EMI_CLK_LOW_TO_HIGH", value: 0)
!1048 = !DIEnumerator(name: "EMI_CLK_HIGH_TO_LOW", value: 1)
!1049 = !{!1050}
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 32)
!1051 = !{!1039, !1052, !1054, !1056, !1058, !1159, !1161, !1163, !1165, !1167, !1169, !1171, !1173, !1175, !1177, !1179, !1181, !1183, !1185, !1187}
!1052 = !DIGlobalVariableExpression(var: !1053, expr: !DIExpression())
!1053 = distinct !DIGlobalVariable(name: "__EMI_CurSR0", scope: !1041, file: !1042, line: 65, type: !175, isLocal: false, isDefinition: true)
!1054 = !DIGlobalVariableExpression(var: !1055, expr: !DIExpression())
!1055 = distinct !DIGlobalVariable(name: "__EMI_CurSR1", scope: !1041, file: !1042, line: 66, type: !175, isLocal: false, isDefinition: true)
!1056 = !DIGlobalVariableExpression(var: !1057, expr: !DIExpression())
!1057 = distinct !DIGlobalVariable(name: "__EMI_CurSR2", scope: !1041, file: !1042, line: 67, type: !175, isLocal: false, isDefinition: true)
!1058 = !DIGlobalVariableExpression(var: !1059, expr: !DIExpression())
!1059 = distinct !DIGlobalVariable(name: "emi_register", scope: !1041, file: !1042, line: 83, type: !1060, isLocal: false, isDefinition: true)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 32)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "EMI_REGISTER_T", file: !78, line: 2524, baseType: !1062)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 2447, size: 6752, elements: !1063)
!1063 = !{!1064, !1068, !1069, !1070, !1071, !1075, !1076, !1078, !1079, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !1062, file: !78, line: 2448, baseType: !1065, size: 768)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !971, size: 768, elements: !1066)
!1066 = !{!1067}
!1067 = !DISubrange(count: 96)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_CONM", scope: !1062, file: !78, line: 2449, baseType: !184, size: 32, offset: 768)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !1062, file: !78, line: 2450, baseType: !970, size: 96, offset: 800)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_GENA", scope: !1062, file: !78, line: 2451, baseType: !184, size: 32, offset: 896)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !1062, file: !78, line: 2452, baseType: !1072, size: 160, offset: 928)
!1072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !971, size: 160, elements: !1073)
!1073 = !{!1074}
!1074 = !DISubrange(count: 20)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_RDCT", scope: !1062, file: !78, line: 2453, baseType: !184, size: 32, offset: 1088)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !1062, file: !78, line: 2454, baseType: !1077, size: 32, offset: 1120)
!1077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !971, size: 32, elements: !381)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_DLLV", scope: !1062, file: !78, line: 2455, baseType: !184, size: 32, offset: 1152)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !1062, file: !78, line: 2456, baseType: !1080, size: 480, offset: 1184)
!1080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !971, size: 480, elements: !1081)
!1081 = !{!1082}
!1082 = !DISubrange(count: 60)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_IDLC", scope: !1062, file: !78, line: 2457, baseType: !184, size: 32, offset: 1664)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED6", scope: !1062, file: !78, line: 2458, baseType: !1077, size: 32, offset: 1696)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_IDLD", scope: !1062, file: !78, line: 2459, baseType: !184, size: 32, offset: 1728)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED7", scope: !1062, file: !78, line: 2460, baseType: !1077, size: 32, offset: 1760)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_IDLE", scope: !1062, file: !78, line: 2461, baseType: !184, size: 32, offset: 1792)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED8", scope: !1062, file: !78, line: 2462, baseType: !1072, size: 160, offset: 1824)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_ODLC", scope: !1062, file: !78, line: 2463, baseType: !184, size: 32, offset: 1984)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED9", scope: !1062, file: !78, line: 2464, baseType: !1077, size: 32, offset: 2016)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_ODLD", scope: !1062, file: !78, line: 2465, baseType: !184, size: 32, offset: 2048)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED10", scope: !1062, file: !78, line: 2466, baseType: !1077, size: 32, offset: 2080)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_ODLE", scope: !1062, file: !78, line: 2467, baseType: !184, size: 32, offset: 2112)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED11", scope: !1062, file: !78, line: 2468, baseType: !1077, size: 32, offset: 2144)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_ODLF", scope: !1062, file: !78, line: 2469, baseType: !184, size: 32, offset: 2176)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED12", scope: !1062, file: !78, line: 2470, baseType: !1097, size: 224, offset: 2208)
!1097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !971, size: 224, elements: !1098)
!1098 = !{!1099}
!1099 = !DISubrange(count: 28)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_IOA", scope: !1062, file: !78, line: 2471, baseType: !184, size: 32, offset: 2432)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED13", scope: !1062, file: !78, line: 2472, baseType: !1077, size: 32, offset: 2464)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_IOB", scope: !1062, file: !78, line: 2473, baseType: !184, size: 32, offset: 2496)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED14", scope: !1062, file: !78, line: 2474, baseType: !970, size: 96, offset: 2528)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_HFSLP", scope: !1062, file: !78, line: 2475, baseType: !184, size: 32, offset: 2624)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED15", scope: !1062, file: !78, line: 2476, baseType: !1077, size: 32, offset: 2656)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_DSRAM", scope: !1062, file: !78, line: 2477, baseType: !184, size: 32, offset: 2688)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED16", scope: !1062, file: !78, line: 2478, baseType: !1077, size: 32, offset: 2720)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_MSRAM", scope: !1062, file: !78, line: 2479, baseType: !184, size: 32, offset: 2752)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED17", scope: !1062, file: !78, line: 2480, baseType: !1077, size: 32, offset: 2784)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_MREG_RW", scope: !1062, file: !78, line: 2481, baseType: !184, size: 32, offset: 2816)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED18", scope: !1062, file: !78, line: 2482, baseType: !970, size: 96, offset: 2848)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_ARBA", scope: !1062, file: !78, line: 2483, baseType: !184, size: 32, offset: 2944)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED19", scope: !1062, file: !78, line: 2484, baseType: !1077, size: 32, offset: 2976)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_ARBB", scope: !1062, file: !78, line: 2485, baseType: !184, size: 32, offset: 3008)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED20", scope: !1062, file: !78, line: 2486, baseType: !1077, size: 32, offset: 3040)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_ARBC", scope: !1062, file: !78, line: 2487, baseType: !184, size: 32, offset: 3072)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED21", scope: !1062, file: !78, line: 2488, baseType: !1072, size: 160, offset: 3104)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_SLCT", scope: !1062, file: !78, line: 2489, baseType: !184, size: 32, offset: 3264)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED22", scope: !1062, file: !78, line: 2490, baseType: !1077, size: 32, offset: 3296)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_ABCT", scope: !1062, file: !78, line: 2491, baseType: !184, size: 32, offset: 3328)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED23", scope: !1062, file: !78, line: 2492, baseType: !1122, size: 736, offset: 3360)
!1122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !971, size: 736, elements: !1123)
!1123 = !{!1124}
!1124 = !DISubrange(count: 92)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_BMEN", scope: !1062, file: !78, line: 2493, baseType: !184, size: 32, offset: 4096)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED24", scope: !1062, file: !78, line: 2494, baseType: !1077, size: 32, offset: 4128)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_BCNT", scope: !1062, file: !78, line: 2495, baseType: !184, size: 32, offset: 4160)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED25", scope: !1062, file: !78, line: 2496, baseType: !1077, size: 32, offset: 4192)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_TACT", scope: !1062, file: !78, line: 2497, baseType: !184, size: 32, offset: 4224)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED26", scope: !1062, file: !78, line: 2498, baseType: !1077, size: 32, offset: 4256)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_TSCT", scope: !1062, file: !78, line: 2499, baseType: !184, size: 32, offset: 4288)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED27", scope: !1062, file: !78, line: 2500, baseType: !1077, size: 32, offset: 4320)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_WACT", scope: !1062, file: !78, line: 2501, baseType: !184, size: 32, offset: 4352)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED28", scope: !1062, file: !78, line: 2502, baseType: !1077, size: 32, offset: 4384)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_WSCT", scope: !1062, file: !78, line: 2503, baseType: !184, size: 32, offset: 4416)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED29", scope: !1062, file: !78, line: 2504, baseType: !1077, size: 32, offset: 4448)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_BACT", scope: !1062, file: !78, line: 2505, baseType: !184, size: 32, offset: 4480)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED30", scope: !1062, file: !78, line: 2506, baseType: !1077, size: 32, offset: 4512)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_BSCT0", scope: !1062, file: !78, line: 2507, baseType: !184, size: 32, offset: 4544)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED31", scope: !1062, file: !78, line: 2508, baseType: !1077, size: 32, offset: 4576)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_BSCT1", scope: !1062, file: !78, line: 2509, baseType: !184, size: 32, offset: 4608)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED32", scope: !1062, file: !78, line: 2510, baseType: !1080, size: 480, offset: 4640)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_TTYPE1", scope: !1062, file: !78, line: 2511, baseType: !184, size: 32, offset: 5120)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED33", scope: !1062, file: !78, line: 2512, baseType: !1145, size: 992, offset: 5152)
!1145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !971, size: 992, elements: !1146)
!1146 = !{!1147}
!1147 = !DISubrange(count: 124)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_MBISTA", scope: !1062, file: !78, line: 2513, baseType: !184, size: 32, offset: 6144)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED34", scope: !1062, file: !78, line: 2514, baseType: !1077, size: 32, offset: 6176)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_MBISTB", scope: !1062, file: !78, line: 2515, baseType: !184, size: 32, offset: 6208)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED35", scope: !1062, file: !78, line: 2516, baseType: !1077, size: 32, offset: 6240)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_MBISTC", scope: !1062, file: !78, line: 2517, baseType: !184, size: 32, offset: 6272)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED36", scope: !1062, file: !78, line: 2518, baseType: !1077, size: 32, offset: 6304)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_MBISTD", scope: !1062, file: !78, line: 2519, baseType: !184, size: 32, offset: 6336)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED37", scope: !1062, file: !78, line: 2520, baseType: !1072, size: 160, offset: 6368)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_TEST", scope: !1062, file: !78, line: 2521, baseType: !184, size: 32, offset: 6528)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED38", scope: !1062, file: !78, line: 2522, baseType: !1072, size: 160, offset: 6560)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_VENDER_INFO", scope: !1062, file: !78, line: 2523, baseType: !184, size: 32, offset: 6720)
!1159 = !DIGlobalVariableExpression(var: !1160, expr: !DIExpression())
!1160 = distinct !DIGlobalVariable(name: "dvfs_dma_runing_status", scope: !1041, file: !1042, line: 485, type: !184, isLocal: false, isDefinition: true)
!1161 = !DIGlobalVariableExpression(var: !1162, expr: !DIExpression())
!1162 = distinct !DIGlobalVariable(name: "EMI_GENA_VAL", scope: !1041, file: !1042, line: 68, type: !175, isLocal: false, isDefinition: true)
!1163 = !DIGlobalVariableExpression(var: !1164, expr: !DIExpression())
!1164 = distinct !DIGlobalVariable(name: "EMI_RDCT_VAL", scope: !1041, file: !1042, line: 69, type: !175, isLocal: false, isDefinition: true)
!1165 = !DIGlobalVariableExpression(var: !1166, expr: !DIExpression())
!1166 = distinct !DIGlobalVariable(name: "EMI_DSRAM_VAL", scope: !1041, file: !1042, line: 70, type: !175, isLocal: false, isDefinition: true)
!1167 = !DIGlobalVariableExpression(var: !1168, expr: !DIExpression())
!1168 = distinct !DIGlobalVariable(name: "EMI_MSRAM_VAL", scope: !1041, file: !1042, line: 71, type: !175, isLocal: false, isDefinition: true)
!1169 = !DIGlobalVariableExpression(var: !1170, expr: !DIExpression())
!1170 = distinct !DIGlobalVariable(name: "EMI_IDL_C_VAL", scope: !1041, file: !1042, line: 72, type: !175, isLocal: false, isDefinition: true)
!1171 = !DIGlobalVariableExpression(var: !1172, expr: !DIExpression())
!1172 = distinct !DIGlobalVariable(name: "EMI_IDL_D_VAL", scope: !1041, file: !1042, line: 73, type: !175, isLocal: false, isDefinition: true)
!1173 = !DIGlobalVariableExpression(var: !1174, expr: !DIExpression())
!1174 = distinct !DIGlobalVariable(name: "EMI_IDL_E_VAL", scope: !1041, file: !1042, line: 74, type: !175, isLocal: false, isDefinition: true)
!1175 = !DIGlobalVariableExpression(var: !1176, expr: !DIExpression())
!1176 = distinct !DIGlobalVariable(name: "EMI_ODL_C_VAL", scope: !1041, file: !1042, line: 75, type: !175, isLocal: false, isDefinition: true)
!1177 = !DIGlobalVariableExpression(var: !1178, expr: !DIExpression())
!1178 = distinct !DIGlobalVariable(name: "EMI_ODL_D_VAL", scope: !1041, file: !1042, line: 76, type: !175, isLocal: false, isDefinition: true)
!1179 = !DIGlobalVariableExpression(var: !1180, expr: !DIExpression())
!1180 = distinct !DIGlobalVariable(name: "EMI_ODL_E_VAL", scope: !1041, file: !1042, line: 77, type: !175, isLocal: false, isDefinition: true)
!1181 = !DIGlobalVariableExpression(var: !1182, expr: !DIExpression())
!1182 = distinct !DIGlobalVariable(name: "EMI_ODL_F_VAL", scope: !1041, file: !1042, line: 78, type: !175, isLocal: false, isDefinition: true)
!1183 = !DIGlobalVariableExpression(var: !1184, expr: !DIExpression())
!1184 = distinct !DIGlobalVariable(name: "EMI_IO_A_VAL", scope: !1041, file: !1042, line: 79, type: !175, isLocal: false, isDefinition: true)
!1185 = !DIGlobalVariableExpression(var: !1186, expr: !DIExpression())
!1186 = distinct !DIGlobalVariable(name: "EMI_IO_B_VAL", scope: !1041, file: !1042, line: 80, type: !175, isLocal: false, isDefinition: true)
!1187 = !DIGlobalVariableExpression(var: !1188, expr: !DIExpression())
!1188 = distinct !DIGlobalVariable(name: "emi_register_backup", scope: !1041, file: !1042, line: 84, type: !1061, isLocal: false, isDefinition: true)
!1189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1190, size: 416, elements: !1206)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "EMI_SETTINGS", file: !1045, line: 60, baseType: !1191)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1045, line: 45, size: 416, elements: !1192)
!1192 = !{!1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_GENA_VAL", scope: !1191, file: !1045, line: 46, baseType: !175, size: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_RDCT_VAL", scope: !1191, file: !1045, line: 47, baseType: !175, size: 32, offset: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_DSRAM_VAL", scope: !1191, file: !1045, line: 48, baseType: !175, size: 32, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_MSRAM_VAL", scope: !1191, file: !1045, line: 49, baseType: !175, size: 32, offset: 96)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_IDL_C_VAL", scope: !1191, file: !1045, line: 50, baseType: !175, size: 32, offset: 128)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_IDL_D_VAL", scope: !1191, file: !1045, line: 51, baseType: !175, size: 32, offset: 160)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_IDL_E_VAL", scope: !1191, file: !1045, line: 52, baseType: !175, size: 32, offset: 192)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_ODL_C_VAL", scope: !1191, file: !1045, line: 53, baseType: !175, size: 32, offset: 224)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_ODL_D_VAL", scope: !1191, file: !1045, line: 54, baseType: !175, size: 32, offset: 256)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_ODL_E_VAL", scope: !1191, file: !1045, line: 55, baseType: !175, size: 32, offset: 288)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_ODL_F_VAL", scope: !1191, file: !1045, line: 56, baseType: !175, size: 32, offset: 320)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_IO_A_VAL", scope: !1191, file: !1045, line: 57, baseType: !175, size: 32, offset: 352)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "EMI_IO_B_VAL", scope: !1191, file: !1045, line: 58, baseType: !175, size: 32, offset: 384)
!1206 = !{!1207}
!1207 = !DISubrange(count: 1)
!1208 = !DIGlobalVariableExpression(var: !1209, expr: !DIExpression())
!1209 = distinct !DIGlobalVariable(name: "cm_freq_state", scope: !1210, file: !1211, line: 48, type: !1220, isLocal: false, isDefinition: true)
!1210 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1211, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1212, globals: !1219, splitDebugInlining: false, nameTableKind: None)
!1211 = !DIFile(filename: "../../../../../driver/chip/mt2523/src/hal_clock_internal.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC")
!1212 = !{!1213}
!1213 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1214, line: 100, baseType: !7, size: 32, elements: !1215)
!1214 = !DIFile(filename: "../../../../../driver/chip/mt2523/inc/hal_clock_platform_mt2523.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC")
!1215 = !{!1216, !1217, !1218}
!1216 = !DIEnumerator(name: "CM_208M_STA", value: 0)
!1217 = !DIEnumerator(name: "CM_104M_STA", value: 1)
!1218 = !DIEnumerator(name: "CM_26M_STA", value: 2)
!1219 = !{!1208}
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "clock_cm_freq_state_id", file: !1214, line: 104, baseType: !1213)
!1221 = !DIGlobalVariableExpression(var: !1222, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 3, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1222 = distinct !DIGlobalVariable(name: "irq_num", scope: !1223, file: !1224, line: 48, type: !848, isLocal: true, isDefinition: true)
!1223 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1224, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1225, retainedTypes: !1226, globals: !1227, splitDebugInlining: false, nameTableKind: None)
!1224 = !DIFile(filename: "../../../../../project/mt2523_hdk/hal_examples/eint_edge_falling/src/main.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC")
!1225 = !{!549, !595, !611, !617, !621, !266, !831, !796, !325}
!1226 = !{!194}
!1227 = !{!1228}
!1228 = !DIGlobalVariableExpression(var: !1222, expr: !DIExpression())
!1229 = !DIGlobalVariableExpression(var: !1230, expr: !DIExpression())
!1230 = distinct !DIGlobalVariable(name: "heap_end", scope: !1231, file: !1232, line: 69, type: !1237, isLocal: true, isDefinition: true)
!1231 = distinct !DISubprogram(name: "_sbrk_r", scope: !1232, file: !1232, line: 66, type: !1233, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1428, retainedNodes: !1432)
!1232 = !DIFile(filename: "../../../../../project/mt2523_hdk/hal_examples/eint_edge_falling/GCC/syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC")
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!1235, !1239, !1427}
!1235 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !1236, line: 123, baseType: !1237)
!1236 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/types.h", directory: "/home/mjshen/RTOSExploration")
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 32)
!1238 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 32)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !1241, line: 377, size: 1920, elements: !1242)
!1241 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/reent.h", directory: "/home/mjshen/RTOSExploration")
!1242 = !{!1243, !1244, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1325, !1346, !1350, !1351, !1352, !1353, !1364, !1377, !1378, !1383, !1401, !1402, !1409, !1410, !1426}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !1240, file: !1241, line: 381, baseType: !79, size: 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !1240, file: !1241, line: 386, baseType: !1245, size: 32, offset: 32)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 32)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !1241, line: 292, baseType: !1247)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !1241, line: 186, size: 832, elements: !1248)
!1248 = !{!1249, !1251, !1252, !1253, !1255, !1256, !1261, !1262, !1263, !1264, !1268, !1274, !1281, !1285, !1286, !1287, !1288, !1290, !1292, !1293, !1294, !1296, !1302, !1315}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !1247, file: !1241, line: 187, baseType: !1250, size: 32)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !1247, file: !1241, line: 188, baseType: !79, size: 32, offset: 32)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !1247, file: !1241, line: 189, baseType: !79, size: 32, offset: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1247, file: !1241, line: 190, baseType: !1254, size: 16, offset: 96)
!1254 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !1247, file: !1241, line: 191, baseType: !1254, size: 16, offset: 112)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !1247, file: !1241, line: 192, baseType: !1257, size: 64, offset: 128)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !1241, line: 122, size: 64, elements: !1258)
!1258 = !{!1259, !1260}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !1257, file: !1241, line: 123, baseType: !1250, size: 32)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !1257, file: !1241, line: 124, baseType: !79, size: 32, offset: 32)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !1247, file: !1241, line: 193, baseType: !79, size: 32, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1247, file: !1241, line: 196, baseType: !1239, size: 32, offset: 224)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !1247, file: !1241, line: 200, baseType: !194, size: 32, offset: 256)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !1247, file: !1241, line: 202, baseType: !1265, size: 32, offset: 288)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 32)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!79, !1239, !194, !1237, !79}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !1247, file: !1241, line: 204, baseType: !1269, size: 32, offset: 320)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 32)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!79, !1239, !194, !1272, !79}
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 32)
!1273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1238)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !1247, file: !1241, line: 207, baseType: !1275, size: 32, offset: 352)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 32)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!1278, !1239, !194, !1278, !79}
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !1279, line: 116, baseType: !1280)
!1279 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_types.h", directory: "/home/mjshen/RTOSExploration")
!1280 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !1247, file: !1241, line: 208, baseType: !1282, size: 32, offset: 384)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 32)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!79, !1239, !194}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !1247, file: !1241, line: 211, baseType: !1257, size: 64, offset: 416)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !1247, file: !1241, line: 212, baseType: !1250, size: 32, offset: 480)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !1247, file: !1241, line: 213, baseType: !79, size: 32, offset: 512)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !1247, file: !1241, line: 216, baseType: !1289, size: 24, offset: 544)
!1289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 24, elements: !888)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !1247, file: !1241, line: 217, baseType: !1291, size: 8, offset: 568)
!1291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 8, elements: !1206)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !1247, file: !1241, line: 220, baseType: !1257, size: 64, offset: 576)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !1247, file: !1241, line: 223, baseType: !79, size: 32, offset: 640)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1247, file: !1241, line: 224, baseType: !1295, size: 32, offset: 672)
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !1279, line: 46, baseType: !1280)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1247, file: !1241, line: 231, baseType: !1297, size: 32, offset: 704)
!1297 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !1241, line: 35, baseType: !1298)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_T", file: !1299, line: 34, baseType: !1300)
!1299 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/lock.h", directory: "/home/mjshen/RTOSExploration")
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 32)
!1301 = !DICompositeType(tag: DW_TAG_structure_type, name: "__lock", file: !1299, line: 33, flags: DIFlagFwdDecl)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !1247, file: !1241, line: 233, baseType: !1303, size: 64, offset: 736)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !1279, line: 170, baseType: !1304)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1279, line: 162, size: 64, elements: !1305)
!1305 = !{!1306, !1307}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1304, file: !1279, line: 164, baseType: !79, size: 32)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1304, file: !1279, line: 169, baseType: !1308, size: 32, offset: 32)
!1308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1304, file: !1279, line: 165, size: 32, elements: !1309)
!1309 = !{!1310, !1313}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1308, file: !1279, line: 167, baseType: !1311, size: 32)
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1312, line: 116, baseType: !79)
!1312 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "")
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1308, file: !1279, line: 168, baseType: !1314, size: 32)
!1314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 32, elements: !381)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1247, file: !1241, line: 234, baseType: !79, size: 32, offset: 800)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !1240, file: !1241, line: 386, baseType: !1245, size: 32, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !1240, file: !1241, line: 386, baseType: !1245, size: 32, offset: 96)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !1240, file: !1241, line: 388, baseType: !79, size: 32, offset: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !1240, file: !1241, line: 390, baseType: !1237, size: 32, offset: 160)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !1240, file: !1241, line: 392, baseType: !79, size: 32, offset: 192)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !1240, file: !1241, line: 394, baseType: !79, size: 32, offset: 224)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !1240, file: !1241, line: 395, baseType: !1323, size: 32, offset: 256)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 32)
!1324 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !1241, line: 45, flags: DIFlagFwdDecl)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "_mp", scope: !1240, file: !1241, line: 397, baseType: !1326, size: 32, offset: 288)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 32)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mprec", file: !1241, line: 349, size: 128, elements: !1328)
!1328 = !{!1329, !1342, !1343, !1344}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !1327, file: !1241, line: 352, baseType: !1330, size: 32)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 32)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !1241, line: 52, size: 192, elements: !1332)
!1332 = !{!1333, !1334, !1335, !1336, !1337, !1338}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1331, file: !1241, line: 54, baseType: !1330, size: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !1331, file: !1241, line: 55, baseType: !79, size: 32, offset: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !1331, file: !1241, line: 55, baseType: !79, size: 32, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !1331, file: !1241, line: 55, baseType: !79, size: 32, offset: 96)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !1331, file: !1241, line: 55, baseType: !79, size: 32, offset: 128)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !1331, file: !1241, line: 56, baseType: !1339, size: 32, offset: 160)
!1339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1340, size: 32, elements: !1206)
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !1241, line: 22, baseType: !1341)
!1341 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !1327, file: !1241, line: 353, baseType: !79, size: 32, offset: 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !1327, file: !1241, line: 354, baseType: !1330, size: 32, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !1327, file: !1241, line: 355, baseType: !1345, size: 32, offset: 96)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !1240, file: !1241, line: 399, baseType: !1347, size: 32, offset: 320)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 32)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{null, !1239}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !1240, file: !1241, line: 401, baseType: !79, size: 32, offset: 352)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !1240, file: !1241, line: 404, baseType: !79, size: 32, offset: 384)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !1240, file: !1241, line: 405, baseType: !1237, size: 32, offset: 416)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !1240, file: !1241, line: 407, baseType: !1354, size: 32, offset: 448)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 32)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !1241, line: 324, size: 192, elements: !1356)
!1356 = !{!1357, !1360, !1361, !1362}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !1355, file: !1241, line: 325, baseType: !1358, size: 48)
!1358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1359, size: 48, elements: !888)
!1359 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !1355, file: !1241, line: 326, baseType: !1358, size: 48, offset: 48)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !1355, file: !1241, line: 327, baseType: !1359, size: 16, offset: 96)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !1355, file: !1241, line: 330, baseType: !1363, size: 64, offset: 128)
!1363 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !1240, file: !1241, line: 408, baseType: !1365, size: 32, offset: 480)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 32)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !1241, line: 60, size: 288, elements: !1367)
!1367 = !{!1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !1366, file: !1241, line: 62, baseType: !79, size: 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !1366, file: !1241, line: 63, baseType: !79, size: 32, offset: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !1366, file: !1241, line: 64, baseType: !79, size: 32, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !1366, file: !1241, line: 65, baseType: !79, size: 32, offset: 96)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !1366, file: !1241, line: 66, baseType: !79, size: 32, offset: 128)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !1366, file: !1241, line: 67, baseType: !79, size: 32, offset: 160)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !1366, file: !1241, line: 68, baseType: !79, size: 32, offset: 192)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !1366, file: !1241, line: 69, baseType: !79, size: 32, offset: 224)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !1366, file: !1241, line: 70, baseType: !79, size: 32, offset: 256)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !1240, file: !1241, line: 409, baseType: !1237, size: 32, offset: 512)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !1240, file: !1241, line: 412, baseType: !1379, size: 32, offset: 544)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 32)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 32)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{null, !79}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !1240, file: !1241, line: 416, baseType: !1384, size: 32, offset: 576)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 32)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !1241, line: 90, size: 1120, elements: !1386)
!1386 = !{!1387, !1388, !1389, !1392}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1385, file: !1241, line: 91, baseType: !1384, size: 32)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !1385, file: !1241, line: 92, baseType: !79, size: 32, offset: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !1385, file: !1241, line: 93, baseType: !1390, size: 1024, offset: 64)
!1390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1391, size: 1024, elements: !248)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 32)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args_ptr", scope: !1385, file: !1241, line: 94, baseType: !1393, size: 32, offset: 1088)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 32)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !1241, line: 79, size: 2112, elements: !1395)
!1395 = !{!1396, !1398, !1399, !1400}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !1394, file: !1241, line: 80, baseType: !1397, size: 1024)
!1397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 1024, elements: !248)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !1394, file: !1241, line: 81, baseType: !1397, size: 1024, offset: 1024)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !1394, file: !1241, line: 83, baseType: !1340, size: 32, offset: 2048)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !1394, file: !1241, line: 86, baseType: !1340, size: 32, offset: 2080)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !1240, file: !1241, line: 417, baseType: !1385, size: 1120, offset: 608)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !1240, file: !1241, line: 420, baseType: !1403, size: 96, offset: 1728)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !1241, line: 296, size: 96, elements: !1404)
!1404 = !{!1405, !1407, !1408}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1403, file: !1241, line: 298, baseType: !1406, size: 32)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !1403, file: !1241, line: 299, baseType: !79, size: 32, offset: 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !1403, file: !1241, line: 300, baseType: !1245, size: 32, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !1240, file: !1241, line: 421, baseType: !1245, size: 32, offset: 1824)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "_misc", scope: !1240, file: !1241, line: 422, baseType: !1411, size: 32, offset: 1856)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 32)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_misc_reent", file: !1241, line: 359, size: 640, elements: !1413)
!1413 = !{!1414, !1415, !1416, !1417, !1418, !1420, !1421, !1422, !1423, !1424, !1425}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !1412, file: !1241, line: 362, baseType: !1237, size: 32)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !1412, file: !1241, line: 363, baseType: !1303, size: 64, offset: 32)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !1412, file: !1241, line: 364, baseType: !1303, size: 64, offset: 96)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !1412, file: !1241, line: 365, baseType: !1303, size: 64, offset: 160)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !1412, file: !1241, line: 366, baseType: !1419, size: 64, offset: 224)
!1419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1238, size: 64, elements: !671)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !1412, file: !1241, line: 367, baseType: !79, size: 32, offset: 288)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !1412, file: !1241, line: 368, baseType: !1303, size: 64, offset: 320)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !1412, file: !1241, line: 369, baseType: !1303, size: 64, offset: 384)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !1412, file: !1241, line: 370, baseType: !1303, size: 64, offset: 448)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !1412, file: !1241, line: 371, baseType: !1303, size: 64, offset: 512)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !1412, file: !1241, line: 372, baseType: !1303, size: 64, offset: 576)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !1240, file: !1241, line: 423, baseType: !1237, size: 32, offset: 1888)
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1312, line: 46, baseType: !7)
!1428 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1429, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1430, globals: !1431, splitDebugInlining: false, nameTableKind: None)
!1429 = !DIFile(filename: "syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC")
!1430 = !{!1237, !1235}
!1431 = !{!1229}
!1432 = !{!1433, !1434, !1435, !1436}
!1433 = !DILocalVariable(name: "r", arg: 1, scope: !1231, file: !1232, line: 66, type: !1239)
!1434 = !DILocalVariable(name: "nbytes", arg: 2, scope: !1231, file: !1232, line: 66, type: !1427)
!1435 = !DILocalVariable(name: "prev_heap_end", scope: !1231, file: !1232, line: 70, type: !1237)
!1436 = !DILocalVariable(name: "stack", scope: !1231, file: !1232, line: 71, type: !1237)
!1437 = !DIGlobalVariableExpression(var: !1438, expr: !DIExpression())
!1438 = distinct !DIGlobalVariable(name: "System_Initialize_Done", scope: !1439, file: !1440, line: 52, type: !184, isLocal: true, isDefinition: true)
!1439 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1440, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1441, globals: !1551, splitDebugInlining: false, nameTableKind: None)
!1440 = !DIFile(filename: "../../../../../project/mt2523_hdk/hal_examples/eint_edge_falling/src/system_mt2523.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC")
!1441 = !{!1442, !1450, !175, !1495, !1500, !1525}
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 32)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysTick_Type", file: !960, line: 656, baseType: !1444)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !960, line: 650, size: 128, elements: !1445)
!1445 = !{!1446, !1447, !1448, !1449}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "CTRL", scope: !1444, file: !960, line: 652, baseType: !184, size: 32)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "LOAD", scope: !1444, file: !960, line: 653, baseType: !184, size: 32, offset: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "VAL", scope: !1444, file: !960, line: 654, baseType: !184, size: 32, offset: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "CALIB", scope: !1444, file: !960, line: 655, baseType: !188, size: 32, offset: 96)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 32)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONFIGSYS_REGISTER_T", file: !78, line: 1952, baseType: !1452)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 1921, size: 8288, elements: !1453)
!1453 = !{!1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1464, !1465, !1469, !1470, !1472, !1473, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1492, !1493, !1494}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "CLK_CONDA", scope: !1452, file: !78, line: 1922, baseType: !184, size: 32)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "CLK_CONDB", scope: !1452, file: !78, line: 1923, baseType: !184, size: 32, offset: 32)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "CLK_CONDC", scope: !1452, file: !78, line: 1924, baseType: !184, size: 32, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "CLK_CONDD", scope: !1452, file: !78, line: 1925, baseType: !184, size: 32, offset: 96)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "reserver1", scope: !1452, file: !78, line: 1926, baseType: !184, size: 32, offset: 128)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "CLK_CONDF", scope: !1452, file: !78, line: 1927, baseType: !184, size: 32, offset: 160)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "CLK_CONDG", scope: !1452, file: !78, line: 1928, baseType: !184, size: 32, offset: 192)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "CLK_CONDH", scope: !1452, file: !78, line: 1929, baseType: !184, size: 32, offset: 224)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "reserver2", scope: !1452, file: !78, line: 1930, baseType: !1463, size: 768, offset: 256)
!1463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 768, elements: !1000)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "CLK_SOURCE_SEL", scope: !1452, file: !78, line: 1931, baseType: !184, size: 32, offset: 1024)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "reserver3", scope: !1452, file: !78, line: 1932, baseType: !1466, size: 992, offset: 1056)
!1466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 992, elements: !1467)
!1467 = !{!1468}
!1468 = !DISubrange(count: 31)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "SLEEP_COND", scope: !1452, file: !78, line: 1933, baseType: !184, size: 32, offset: 2048)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "reserver4", scope: !1452, file: !78, line: 1934, baseType: !1471, size: 416, offset: 2080)
!1471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 416, elements: !691)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "TOP_DEBUG", scope: !1452, file: !78, line: 1935, baseType: !184, size: 32, offset: 2496)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "reserver5", scope: !1452, file: !78, line: 1936, baseType: !1474, size: 1568, offset: 2528)
!1474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 1568, elements: !1475)
!1475 = !{!1476}
!1476 = !DISubrange(count: 49)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "PDN_COND0", scope: !1452, file: !78, line: 1937, baseType: !188, size: 32, offset: 4096)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "PDN_COND1", scope: !1452, file: !78, line: 1938, baseType: !188, size: 32, offset: 4128)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "PDN_COND2", scope: !1452, file: !78, line: 1939, baseType: !188, size: 32, offset: 4160)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "reserver6", scope: !1452, file: !78, line: 1940, baseType: !184, size: 32, offset: 4192)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "PDN_SETD0", scope: !1452, file: !78, line: 1941, baseType: !184, size: 32, offset: 4224)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "PDN_SETD1", scope: !1452, file: !78, line: 1942, baseType: !184, size: 32, offset: 4256)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "PDN_SETD2", scope: !1452, file: !78, line: 1943, baseType: !184, size: 32, offset: 4288)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "reserver7", scope: !1452, file: !78, line: 1944, baseType: !184, size: 32, offset: 4320)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "PDN_CLRD0", scope: !1452, file: !78, line: 1945, baseType: !184, size: 32, offset: 4352)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "PDN_CLRD1", scope: !1452, file: !78, line: 1946, baseType: !184, size: 32, offset: 4384)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "PDN_CLRD2", scope: !1452, file: !78, line: 1947, baseType: !184, size: 32, offset: 4416)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "reserver8", scope: !1452, file: !78, line: 1948, baseType: !1489, size: 3744, offset: 4448)
!1489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 3744, elements: !1490)
!1490 = !{!1491}
!1491 = !DISubrange(count: 117)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "LPM_CON", scope: !1452, file: !78, line: 1949, baseType: !184, size: 32, offset: 8192)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "reserver9", scope: !1452, file: !78, line: 1950, baseType: !184, size: 32, offset: 8224)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "LPM_L2H_CNT", scope: !1452, file: !78, line: 1951, baseType: !188, size: 32, offset: 8256)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 32)
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "EFUSE_REGISTER_T", file: !78, line: 2158, baseType: !1497)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 2156, size: 32, elements: !1498)
!1498 = !{!1499}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "EFUSE_CPU_104M", scope: !1497, file: !78, line: 2157, baseType: !184, size: 32)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 32)
!1501 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !960, line: 418, baseType: !1502)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !960, line: 395, size: 1120, elements: !1503)
!1503 = !{!1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !1502, file: !960, line: 397, baseType: !188, size: 32)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !1502, file: !960, line: 398, baseType: !184, size: 32, offset: 32)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !1502, file: !960, line: 399, baseType: !184, size: 32, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !1502, file: !960, line: 400, baseType: !184, size: 32, offset: 96)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !1502, file: !960, line: 401, baseType: !184, size: 32, offset: 128)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !1502, file: !960, line: 402, baseType: !184, size: 32, offset: 160)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !1502, file: !960, line: 403, baseType: !970, size: 96, offset: 192)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !1502, file: !960, line: 404, baseType: !184, size: 32, offset: 288)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !1502, file: !960, line: 405, baseType: !184, size: 32, offset: 320)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !1502, file: !960, line: 406, baseType: !184, size: 32, offset: 352)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !1502, file: !960, line: 407, baseType: !184, size: 32, offset: 384)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !1502, file: !960, line: 408, baseType: !184, size: 32, offset: 416)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !1502, file: !960, line: 409, baseType: !184, size: 32, offset: 448)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !1502, file: !960, line: 410, baseType: !184, size: 32, offset: 480)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !1502, file: !960, line: 411, baseType: !980, size: 64, offset: 512)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !1502, file: !960, line: 412, baseType: !188, size: 32, offset: 576)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !1502, file: !960, line: 413, baseType: !188, size: 32, offset: 608)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !1502, file: !960, line: 414, baseType: !984, size: 128, offset: 640)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !1502, file: !960, line: 415, baseType: !986, size: 160, offset: 768)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !1502, file: !960, line: 416, baseType: !990, size: 160, offset: 928)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !1502, file: !960, line: 417, baseType: !184, size: 32, offset: 1088)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 32)
!1526 = !DIDerivedType(tag: DW_TAG_typedef, name: "CACHE_REGISTER_T", file: !78, line: 276, baseType: !1527)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 260, size: 525312, elements: !1528)
!1528 = !{!1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1541, !1542, !1546, !1550}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CON", scope: !1527, file: !78, line: 261, baseType: !184, size: 32)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_OP", scope: !1527, file: !78, line: 262, baseType: !184, size: 32, offset: 32)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0L", scope: !1527, file: !78, line: 263, baseType: !184, size: 32, offset: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0U", scope: !1527, file: !78, line: 264, baseType: !184, size: 32, offset: 96)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0L", scope: !1527, file: !78, line: 265, baseType: !184, size: 32, offset: 128)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0U", scope: !1527, file: !78, line: 266, baseType: !184, size: 32, offset: 160)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1L", scope: !1527, file: !78, line: 267, baseType: !184, size: 32, offset: 192)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1U", scope: !1527, file: !78, line: 268, baseType: !184, size: 32, offset: 224)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1L", scope: !1527, file: !78, line: 269, baseType: !184, size: 32, offset: 256)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1U", scope: !1527, file: !78, line: 270, baseType: !184, size: 32, offset: 288)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !1527, file: !78, line: 271, baseType: !1540, size: 32, offset: 320)
!1540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 32, elements: !1206)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_REGION_EN", scope: !1527, file: !78, line: 272, baseType: !184, size: 32, offset: 352)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !1527, file: !78, line: 273, baseType: !1543, size: 523904, offset: 384)
!1543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 523904, elements: !1544)
!1544 = !{!1545}
!1545 = !DISubrange(count: 16372)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_ENTRY_N", scope: !1527, file: !78, line: 274, baseType: !1547, size: 512, offset: 524288)
!1547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 512, elements: !1548)
!1548 = !{!1549}
!1549 = !DISubrange(count: 16)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_END_ENTRY_N", scope: !1527, file: !78, line: 275, baseType: !1547, size: 512, offset: 524800)
!1551 = !{!1552, !1437}
!1552 = !DIGlobalVariableExpression(var: !1553, expr: !DIExpression())
!1553 = distinct !DIGlobalVariable(name: "SystemCoreClock", scope: !1439, file: !1440, line: 50, type: !175, isLocal: false, isDefinition: true)
!1554 = !DIGlobalVariableExpression(var: !1555, expr: !DIExpression())
!1555 = distinct !DIGlobalVariable(name: "build_date_time_str", scope: !1556, file: !1561, line: 4, type: !1567, isLocal: false, isDefinition: true)
!1556 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1557, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1558, splitDebugInlining: false, nameTableKind: None)
!1557 = !DIFile(filename: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC/Build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC")
!1558 = !{!1554, !1559, !1565}
!1559 = !DIGlobalVariableExpression(var: !1560, expr: !DIExpression())
!1560 = distinct !DIGlobalVariable(name: "sw_verno_str", scope: !1556, file: !1561, line: 5, type: !1562, isLocal: false, isDefinition: true)
!1561 = !DIFile(filename: "Build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC")
!1562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1238, size: 88, elements: !1563)
!1563 = !{!1564}
!1564 = !DISubrange(count: 11)
!1565 = !DIGlobalVariableExpression(var: !1566, expr: !DIExpression())
!1566 = distinct !DIGlobalVariable(name: "hw_verno_str", scope: !1556, file: !1561, line: 6, type: !1562, isLocal: false, isDefinition: true)
!1567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1238, size: 248, elements: !1467)
!1568 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1569, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1570, retainedTypes: !1600, splitDebugInlining: false, nameTableKind: None)
!1569 = !DIFile(filename: "../../../../../driver/chip/mt2523/src/hal_gpt.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC")
!1570 = !{!1571, !156, !170, !1578, !1582, !165, !66}
!1571 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !166, line: 387, baseType: !79, size: 32, elements: !1572)
!1572 = !{!1573, !1574, !1575, !1576, !1577}
!1573 = !DIEnumerator(name: "HAL_GPT_STATUS_ERROR_PORT_USED", value: -4)
!1574 = !DIEnumerator(name: "HAL_GPT_STATUS_ERROR", value: -3)
!1575 = !DIEnumerator(name: "HAL_GPT_STATUS_ERROR_PORT", value: -2)
!1576 = !DIEnumerator(name: "HAL_GPT_STATUS_INVALID_PARAMETER", value: -1)
!1577 = !DIEnumerator(name: "HAL_GPT_STATUS_OK", value: 0)
!1578 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 857, baseType: !7, size: 32, elements: !1579)
!1579 = !{!1580, !1581}
!1580 = !DIEnumerator(name: "HAL_GPT_CLOCK_SOURCE_32K", value: 0)
!1581 = !DIEnumerator(name: "HAL_GPT_CLOCK_SOURCE_1M", value: 1)
!1582 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !67, line: 87, baseType: !7, size: 32, elements: !1583)
!1583 = !{!1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599}
!1584 = !DIEnumerator(name: "GPT_DIVIDE_1", value: 0)
!1585 = !DIEnumerator(name: "GPT_DIVIDE_2", value: 1)
!1586 = !DIEnumerator(name: "GPT_DIVIDE_3", value: 2)
!1587 = !DIEnumerator(name: "GPT_DIVIDE_4", value: 3)
!1588 = !DIEnumerator(name: "GPT_DIVIDE_5", value: 4)
!1589 = !DIEnumerator(name: "GPT_DIVIDE_6", value: 5)
!1590 = !DIEnumerator(name: "GPT_DIVIDE_7", value: 6)
!1591 = !DIEnumerator(name: "GPT_DIVIDE_8", value: 7)
!1592 = !DIEnumerator(name: "GPT_DIVIDE_9", value: 8)
!1593 = !DIEnumerator(name: "GPT_DIVIDE_10", value: 9)
!1594 = !DIEnumerator(name: "GPT_DIVIDE_11", value: 10)
!1595 = !DIEnumerator(name: "GPT_DIVIDE_12", value: 11)
!1596 = !DIEnumerator(name: "GPT_DIVIDE_13", value: 12)
!1597 = !DIEnumerator(name: "GPT_DIVIDE_16", value: 13)
!1598 = !DIEnumerator(name: "GPT_DIVIDE_32", value: 14)
!1599 = !DIEnumerator(name: "GPT_DIVIDE_64", value: 15)
!1600 = !{!175, !194, !225}
!1601 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1602, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1603, retainedTypes: !1604, splitDebugInlining: false, nameTableKind: None)
!1602 = !DIFile(filename: "../../../../../driver/chip/mt2523/src/hal_uart_internal.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC")
!1603 = !{!611, !617, !621, !704}
!1604 = !{!378}
!1605 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1606, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1607, retainedTypes: !1608, splitDebugInlining: false, nameTableKind: None)
!1606 = !DIFile(filename: "../../../../../driver/chip/mt2523/src/hal_nvic_internal.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC")
!1607 = !{!77, !633}
!1608 = !{!780, !1609, !175, !1634, !1022}
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 32)
!1610 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !960, line: 418, baseType: !1611)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !960, line: 395, size: 1120, elements: !1612)
!1612 = !{!1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !1611, file: !960, line: 397, baseType: !188, size: 32)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !1611, file: !960, line: 398, baseType: !184, size: 32, offset: 32)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !1611, file: !960, line: 399, baseType: !184, size: 32, offset: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !1611, file: !960, line: 400, baseType: !184, size: 32, offset: 96)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !1611, file: !960, line: 401, baseType: !184, size: 32, offset: 128)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !1611, file: !960, line: 402, baseType: !184, size: 32, offset: 160)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !1611, file: !960, line: 403, baseType: !970, size: 96, offset: 192)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !1611, file: !960, line: 404, baseType: !184, size: 32, offset: 288)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !1611, file: !960, line: 405, baseType: !184, size: 32, offset: 320)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !1611, file: !960, line: 406, baseType: !184, size: 32, offset: 352)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !1611, file: !960, line: 407, baseType: !184, size: 32, offset: 384)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !1611, file: !960, line: 408, baseType: !184, size: 32, offset: 416)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !1611, file: !960, line: 409, baseType: !184, size: 32, offset: 448)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !1611, file: !960, line: 410, baseType: !184, size: 32, offset: 480)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !1611, file: !960, line: 411, baseType: !980, size: 64, offset: 512)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !1611, file: !960, line: 412, baseType: !188, size: 32, offset: 576)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !1611, file: !960, line: 413, baseType: !188, size: 32, offset: 608)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !1611, file: !960, line: 414, baseType: !984, size: 128, offset: 640)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !1611, file: !960, line: 415, baseType: !986, size: 160, offset: 768)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !1611, file: !960, line: 416, baseType: !990, size: 160, offset: 928)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !1611, file: !960, line: 417, baseType: !184, size: 32, offset: 1088)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 32)
!1635 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !960, line: 378, baseType: !1636)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !960, line: 363, size: 28704, elements: !1637)
!1637 = !{!1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !1636, file: !960, line: 365, baseType: !997, size: 256)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !1636, file: !960, line: 366, baseType: !999, size: 768, offset: 256)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !1636, file: !960, line: 367, baseType: !997, size: 256, offset: 1024)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !1636, file: !960, line: 368, baseType: !999, size: 768, offset: 1280)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !1636, file: !960, line: 369, baseType: !997, size: 256, offset: 2048)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !1636, file: !960, line: 370, baseType: !999, size: 768, offset: 2304)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !1636, file: !960, line: 371, baseType: !997, size: 256, offset: 3072)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !1636, file: !960, line: 372, baseType: !999, size: 768, offset: 3328)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !1636, file: !960, line: 373, baseType: !997, size: 256, offset: 4096)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !1636, file: !960, line: 374, baseType: !1010, size: 1792, offset: 4352)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !1636, file: !960, line: 375, baseType: !1014, size: 1920, offset: 6144)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !1636, file: !960, line: 376, baseType: !1018, size: 20608, offset: 8064)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !1636, file: !960, line: 377, baseType: !184, size: 32, offset: 28672)
!1651 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1652, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1653, splitDebugInlining: false, nameTableKind: None)
!1652 = !DIFile(filename: "../../../../../driver/chip/mt2523/src/hal_flash_mtd_common.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC")
!1653 = !{!1654, !1662}
!1654 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "sfi_clock_enum_t", file: !1655, line: 51, baseType: !7, size: 32, elements: !1656)
!1655 = !DIFile(filename: "../../../../../driver/chip/mt2523/inc/hal_flash_sfi_release.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC")
!1656 = !{!1657, !1658, !1659, !1660, !1661}
!1657 = !DIEnumerator(name: "SFI_CLK_UNKNOWN", value: 0)
!1658 = !DIEnumerator(name: "SFI_CLK_78MHZ", value: 78)
!1659 = !DIEnumerator(name: "SFI_CLK_104MHZ", value: 104)
!1660 = !DIEnumerator(name: "SFI_CLK_130MHZ", value: 130)
!1661 = !DIEnumerator(name: "SFI_CLK_166MHZ", value: 166)
!1662 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "sfi_voltage_enum_t", file: !1655, line: 62, baseType: !7, size: 32, elements: !1663)
!1663 = !{!1664, !1665, !1666}
!1664 = !DIEnumerator(name: "SFI_Voltage_UNKNOWN", value: 0)
!1665 = !DIEnumerator(name: "SFI_Voltage_18", value: 18)
!1666 = !DIEnumerator(name: "SFI_Voltage_30", value: 30)
!1667 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1668, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1668 = !DIFile(filename: "../../../../../driver/chip/mt2523/src/hal_flash_mtd_dal.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC")
!1669 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1670, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1670 = !DIFile(filename: "../../../../../driver/chip/mt2523/src/hal_log.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC")
!1671 = !{!"Ubuntu clang version 14.0.6"}
!1672 = !{i32 7, !"Dwarf Version", i32 2}
!1673 = !{i32 2, !"Debug Info Version", i32 3}
!1674 = !{i32 1, !"wchar_size", i32 4}
!1675 = !{i32 1, !"min_enum_size", i32 4}
!1676 = !{i32 1, !"branch-target-enforcement", i32 0}
!1677 = !{i32 1, !"sign-return-address", i32 0}
!1678 = !{i32 1, !"sign-return-address-all", i32 0}
!1679 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!1680 = !{i32 7, !"frame-pointer", i32 2}
!1681 = distinct !DISubprogram(name: "hal_gpt_init", scope: !1569, file: !1569, line: 95, type: !1682, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1568, retainedNodes: !1686)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!1684, !1685}
!1684 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_status_t", file: !166, line: 393, baseType: !1571)
!1685 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_port_t", file: !6, line: 854, baseType: !156)
!1686 = !{!1687}
!1687 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !1681, file: !1569, line: 95, type: !1685)
!1688 = !DILocation(line: 0, scope: !1681)
!1689 = !DILocation(line: 98, column: 9, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1681, file: !1569, line: 98, column: 9)
!1691 = !DILocation(line: 98, column: 9, scope: !1681)
!1692 = !DILocation(line: 102, column: 10, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1681, file: !1569, line: 102, column: 9)
!1694 = !DILocation(line: 102, column: 34, scope: !1693)
!1695 = !DILocation(line: 102, column: 49, scope: !1693)
!1696 = !DILocation(line: 102, column: 69, scope: !1693)
!1697 = !DILocation(line: 103, column: 38, scope: !1693)
!1698 = !{i8 0, i8 2}
!1699 = !DILocation(line: 102, column: 9, scope: !1681)
!1700 = !DILocation(line: 109, column: 12, scope: !1681)
!1701 = !DILocation(line: 109, column: 5, scope: !1681)
!1702 = !DILocation(line: 112, column: 5, scope: !1681)
!1703 = !DILocation(line: 115, column: 44, scope: !1681)
!1704 = !DILocation(line: 118, column: 5, scope: !1681)
!1705 = !DILocation(line: 118, column: 23, scope: !1681)
!1706 = !DILocation(line: 118, column: 35, scope: !1681)
!1707 = !DILocation(line: 121, column: 42, scope: !1681)
!1708 = !DILocation(line: 121, column: 38, scope: !1681)
!1709 = !DILocation(line: 121, column: 5, scope: !1681)
!1710 = !DILocation(line: 121, column: 17, scope: !1681)
!1711 = !DILocation(line: 121, column: 35, scope: !1681)
!1712 = !DILocation(line: 129, column: 5, scope: !1681)
!1713 = !DILocation(line: 131, column: 1, scope: !1681)
!1714 = distinct !DISubprogram(name: "hal_gpt_is_port_valid", scope: !1569, file: !1569, line: 81, type: !1715, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1568, retainedNodes: !1717)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!211, !1685}
!1717 = !{!1718}
!1718 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !1714, file: !1569, line: 81, type: !1685)
!1719 = !DILocation(line: 0, scope: !1714)
!1720 = !DILocation(line: 84, column: 25, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1714, file: !1569, line: 84, column: 9)
!1722 = !DILocation(line: 84, column: 35, scope: !1721)
!1723 = !DILocation(line: 84, column: 45, scope: !1721)
!1724 = !DILocation(line: 93, column: 1, scope: !1714)
!1725 = distinct !DISubprogram(name: "hal_gpt_deinit", scope: !1569, file: !1569, line: 133, type: !1682, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1568, retainedNodes: !1726)
!1726 = !{!1727}
!1727 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !1725, file: !1569, line: 133, type: !1685)
!1728 = !DILocation(line: 0, scope: !1725)
!1729 = !DILocation(line: 136, column: 9, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1725, file: !1569, line: 136, column: 9)
!1731 = !DILocation(line: 136, column: 9, scope: !1725)
!1732 = !DILocation(line: 140, column: 9, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1725, file: !1569, line: 140, column: 9)
!1734 = !DILocation(line: 140, column: 33, scope: !1733)
!1735 = !DILocation(line: 140, column: 48, scope: !1733)
!1736 = !DILocation(line: 140, column: 9, scope: !1725)
!1737 = !DILocation(line: 146, column: 12, scope: !1725)
!1738 = !DILocation(line: 146, column: 5, scope: !1725)
!1739 = !DILocation(line: 149, column: 29, scope: !1725)
!1740 = !DILocation(line: 149, column: 44, scope: !1725)
!1741 = !DILocation(line: 151, column: 29, scope: !1725)
!1742 = !DILocation(line: 151, column: 5, scope: !1725)
!1743 = !DILocation(line: 159, column: 5, scope: !1725)
!1744 = !DILocation(line: 160, column: 1, scope: !1725)
!1745 = distinct !DISubprogram(name: "hal_gpt_get_free_run_count", scope: !1569, file: !1569, line: 163, type: !1746, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1568, retainedNodes: !1750)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!1684, !1748, !1749}
!1748 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_clock_source_t", file: !6, line: 860, baseType: !1578)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 32)
!1750 = !{!1751, !1752}
!1751 = !DILocalVariable(name: "clock_source", arg: 1, scope: !1745, file: !1569, line: 163, type: !1748)
!1752 = !DILocalVariable(name: "count", arg: 2, scope: !1745, file: !1569, line: 163, type: !1749)
!1753 = !DILocation(line: 0, scope: !1745)
!1754 = !DILocation(line: 166, column: 9, scope: !1745)
!1755 = !DILocation(line: 167, column: 44, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !1569, line: 167, column: 13)
!1757 = distinct !DILexicalBlock(scope: !1758, file: !1569, line: 166, column: 51)
!1758 = distinct !DILexicalBlock(scope: !1745, file: !1569, line: 166, column: 9)
!1759 = !DILocation(line: 167, column: 59, scope: !1756)
!1760 = !DILocation(line: 167, column: 13, scope: !1757)
!1761 = !DILocation(line: 170, column: 38, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1756, file: !1569, line: 167, column: 79)
!1763 = !DILocation(line: 170, column: 13, scope: !1762)
!1764 = !DILocation(line: 172, column: 59, scope: !1762)
!1765 = !DILocation(line: 173, column: 9, scope: !1762)
!1766 = !DILocation(line: 175, column: 36, scope: !1757)
!1767 = !DILocation(line: 175, column: 18, scope: !1757)
!1768 = !DILocation(line: 177, column: 5, scope: !1757)
!1769 = !DILocation(line: 179, column: 44, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !1569, line: 179, column: 13)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !1569, line: 178, column: 55)
!1772 = distinct !DILexicalBlock(scope: !1758, file: !1569, line: 178, column: 14)
!1773 = !DILocation(line: 179, column: 59, scope: !1770)
!1774 = !DILocation(line: 179, column: 13, scope: !1771)
!1775 = !DILocation(line: 182, column: 38, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1770, file: !1569, line: 179, column: 79)
!1777 = !DILocation(line: 182, column: 13, scope: !1776)
!1778 = !DILocation(line: 184, column: 59, scope: !1776)
!1779 = !DILocation(line: 186, column: 9, scope: !1776)
!1780 = !DILocation(line: 188, column: 68, scope: !1771)
!1781 = !DILocation(line: 188, column: 50, scope: !1771)
!1782 = !DILocation(line: 188, column: 18, scope: !1771)
!1783 = !DILocation(line: 0, scope: !1758)
!1784 = !DILocation(line: 193, column: 5, scope: !1745)
!1785 = !DILocation(line: 194, column: 1, scope: !1745)
!1786 = distinct !DISubprogram(name: "hal_gpt_get_duration_count", scope: !1569, file: !1569, line: 196, type: !1787, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1568, retainedNodes: !1789)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!1684, !175, !175, !1749}
!1789 = !{!1790, !1791, !1792}
!1790 = !DILocalVariable(name: "start_count", arg: 1, scope: !1786, file: !1569, line: 196, type: !175)
!1791 = !DILocalVariable(name: "end_count", arg: 2, scope: !1786, file: !1569, line: 196, type: !175)
!1792 = !DILocalVariable(name: "duration_count", arg: 3, scope: !1786, file: !1569, line: 196, type: !1749)
!1793 = !DILocation(line: 0, scope: !1786)
!1794 = !DILocation(line: 198, column: 24, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1786, file: !1569, line: 198, column: 9)
!1796 = !DILocation(line: 198, column: 9, scope: !1786)
!1797 = !DILocation(line: 0, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1786, file: !1569, line: 202, column: 9)
!1799 = !DILocation(line: 208, column: 5, scope: !1786)
!1800 = !DILocation(line: 209, column: 1, scope: !1786)
!1801 = distinct !DISubprogram(name: "hal_gpt_get_running_status", scope: !1569, file: !1569, line: 211, type: !1802, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1568, retainedNodes: !1805)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!1684, !1685, !1804}
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 32)
!1805 = !{!1806, !1807}
!1806 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !1801, file: !1569, line: 211, type: !1685)
!1807 = !DILocalVariable(name: "running_status", arg: 2, scope: !1801, file: !1569, line: 211, type: !1804)
!1808 = !DILocation(line: 0, scope: !1801)
!1809 = !DILocation(line: 213, column: 18, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1801, file: !1569, line: 213, column: 9)
!1811 = !DILocation(line: 213, column: 9, scope: !1801)
!1812 = !DILocation(line: 217, column: 47, scope: !1801)
!1813 = !DILocation(line: 217, column: 21, scope: !1801)
!1814 = !DILocation(line: 219, column: 5, scope: !1801)
!1815 = !DILocation(line: 220, column: 1, scope: !1801)
!1816 = distinct !DISubprogram(name: "hal_gpt_register_callback", scope: !1569, file: !1569, line: 222, type: !1817, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1568, retainedNodes: !1819)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!1684, !1685, !225, !194}
!1819 = !{!1820, !1821, !1822}
!1820 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !1816, file: !1569, line: 222, type: !1685)
!1821 = !DILocalVariable(name: "callback", arg: 2, scope: !1816, file: !1569, line: 223, type: !225)
!1822 = !DILocalVariable(name: "user_data", arg: 3, scope: !1816, file: !1569, line: 224, type: !194)
!1823 = !DILocation(line: 0, scope: !1816)
!1824 = !DILocation(line: 227, column: 9, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1816, file: !1569, line: 227, column: 9)
!1826 = !DILocation(line: 227, column: 9, scope: !1816)
!1827 = !DILocation(line: 231, column: 34, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1816, file: !1569, line: 231, column: 9)
!1829 = !DILocation(line: 231, column: 49, scope: !1828)
!1830 = !DILocation(line: 231, column: 69, scope: !1828)
!1831 = !DILocation(line: 232, column: 38, scope: !1828)
!1832 = !DILocation(line: 232, column: 53, scope: !1828)
!1833 = !DILocation(line: 231, column: 9, scope: !1816)
!1834 = !DILocation(line: 237, column: 18, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1816, file: !1569, line: 237, column: 9)
!1836 = !DILocation(line: 237, column: 9, scope: !1816)
!1837 = !DILocation(line: 245, column: 46, scope: !1816)
!1838 = !DILocation(line: 245, column: 56, scope: !1816)
!1839 = !DILocation(line: 246, column: 46, scope: !1816)
!1840 = !DILocation(line: 246, column: 56, scope: !1816)
!1841 = !DILocation(line: 248, column: 5, scope: !1816)
!1842 = !DILocation(line: 250, column: 5, scope: !1816)
!1843 = !DILocation(line: 252, column: 1, scope: !1816)
!1844 = distinct !DISubprogram(name: "hal_gpt_start_timer_ms", scope: !1569, file: !1569, line: 256, type: !1845, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1568, retainedNodes: !1848)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!1684, !1685, !175, !1847}
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_timer_type_t", file: !166, line: 383, baseType: !165)
!1848 = !{!1849, !1850, !1851, !1852}
!1849 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !1844, file: !1569, line: 256, type: !1685)
!1850 = !DILocalVariable(name: "timeout_time_ms", arg: 2, scope: !1844, file: !1569, line: 256, type: !175)
!1851 = !DILocalVariable(name: "timer_type", arg: 3, scope: !1844, file: !1569, line: 256, type: !1847)
!1852 = !DILocalVariable(name: "mask", scope: !1844, file: !1569, line: 259, type: !184)
!1853 = !DILocation(line: 0, scope: !1844)
!1854 = !DILocation(line: 259, column: 5, scope: !1844)
!1855 = !DILocation(line: 259, column: 23, scope: !1844)
!1856 = !DILocation(line: 261, column: 9, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1844, file: !1569, line: 261, column: 9)
!1858 = !DILocation(line: 261, column: 9, scope: !1844)
!1859 = !DILocation(line: 265, column: 34, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1844, file: !1569, line: 265, column: 9)
!1861 = !DILocation(line: 265, column: 49, scope: !1860)
!1862 = !DILocation(line: 266, column: 13, scope: !1860)
!1863 = !DILocation(line: 266, column: 41, scope: !1860)
!1864 = !DILocation(line: 266, column: 56, scope: !1860)
!1865 = !DILocation(line: 265, column: 9, scope: !1844)
!1866 = !DILocation(line: 271, column: 25, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1844, file: !1569, line: 271, column: 9)
!1868 = !DILocation(line: 271, column: 9, scope: !1844)
!1869 = !DILocation(line: 282, column: 12, scope: !1844)
!1870 = !DILocation(line: 282, column: 10, scope: !1844)
!1871 = !DILocation(line: 284, column: 5, scope: !1844)
!1872 = !DILocation(line: 286, column: 5, scope: !1844)
!1873 = !DILocation(line: 286, column: 23, scope: !1844)
!1874 = !DILocation(line: 286, column: 34, scope: !1844)
!1875 = !DILocation(line: 287, column: 5, scope: !1844)
!1876 = !DILocation(line: 287, column: 23, scope: !1844)
!1877 = !DILocation(line: 287, column: 34, scope: !1844)
!1878 = !DILocation(line: 290, column: 5, scope: !1844)
!1879 = !DILocation(line: 290, column: 23, scope: !1844)
!1880 = !DILocation(line: 290, column: 37, scope: !1844)
!1881 = !DILocation(line: 291, column: 39, scope: !1844)
!1882 = !DILocation(line: 291, column: 5, scope: !1844)
!1883 = !DILocation(line: 291, column: 23, scope: !1844)
!1884 = !DILocation(line: 291, column: 37, scope: !1844)
!1885 = !DILocation(line: 292, column: 5, scope: !1844)
!1886 = !DILocation(line: 292, column: 23, scope: !1844)
!1887 = !DILocation(line: 292, column: 37, scope: !1844)
!1888 = !DILocation(line: 297, column: 47, scope: !1844)
!1889 = !DILocation(line: 298, column: 33, scope: !1844)
!1890 = !DILocation(line: 296, column: 5, scope: !1844)
!1891 = !DILocation(line: 296, column: 23, scope: !1844)
!1892 = !DILocation(line: 296, column: 31, scope: !1844)
!1893 = !DILocation(line: 300, column: 5, scope: !1844)
!1894 = !DILocation(line: 300, column: 29, scope: !1844)
!1895 = distinct !{!1895, !1893, !1896}
!1896 = !DILocation(line: 300, column: 39, scope: !1844)
!1897 = !DILocation(line: 301, column: 23, scope: !1844)
!1898 = !DILocation(line: 301, column: 33, scope: !1844)
!1899 = !DILocation(line: 302, column: 5, scope: !1844)
!1900 = !DILocation(line: 302, column: 23, scope: !1844)
!1901 = !DILocation(line: 302, column: 34, scope: !1844)
!1902 = !DILocation(line: 303, column: 44, scope: !1844)
!1903 = !DILocation(line: 305, column: 28, scope: !1844)
!1904 = !DILocation(line: 305, column: 5, scope: !1844)
!1905 = !DILocation(line: 306, column: 5, scope: !1844)
!1906 = !DILocation(line: 307, column: 1, scope: !1844)
!1907 = distinct !DISubprogram(name: "hal_gpt_delay_ms", scope: !1569, file: !1569, line: 310, type: !1908, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1568, retainedNodes: !1910)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!1684, !175}
!1910 = !{!1911}
!1911 = !DILocalVariable(name: "ms", arg: 1, scope: !1907, file: !1569, line: 310, type: !175)
!1912 = !DILocation(line: 0, scope: !1907)
!1913 = !DILocation(line: 313, column: 40, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1907, file: !1569, line: 313, column: 9)
!1915 = !DILocation(line: 313, column: 55, scope: !1914)
!1916 = !DILocation(line: 313, column: 9, scope: !1907)
!1917 = !DILocation(line: 316, column: 34, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1914, file: !1569, line: 313, column: 75)
!1919 = !DILocation(line: 316, column: 9, scope: !1918)
!1920 = !DILocation(line: 317, column: 55, scope: !1918)
!1921 = !DILocation(line: 318, column: 5, scope: !1918)
!1922 = !DILocation(line: 320, column: 20, scope: !1907)
!1923 = !DILocation(line: 320, column: 45, scope: !1907)
!1924 = !DILocation(line: 320, column: 5, scope: !1907)
!1925 = !DILocation(line: 322, column: 5, scope: !1907)
!1926 = distinct !DISubprogram(name: "hal_gpt_start_timer_us", scope: !1569, file: !1569, line: 327, type: !1845, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1568, retainedNodes: !1927)
!1927 = !{!1928, !1929, !1930, !1931}
!1928 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !1926, file: !1569, line: 327, type: !1685)
!1929 = !DILocalVariable(name: "timeout_time_us", arg: 2, scope: !1926, file: !1569, line: 327, type: !175)
!1930 = !DILocalVariable(name: "timer_type", arg: 3, scope: !1926, file: !1569, line: 327, type: !1847)
!1931 = !DILocalVariable(name: "mask", scope: !1926, file: !1569, line: 329, type: !184)
!1932 = !DILocation(line: 0, scope: !1926)
!1933 = !DILocation(line: 329, column: 5, scope: !1926)
!1934 = !DILocation(line: 329, column: 23, scope: !1926)
!1935 = !DILocation(line: 331, column: 9, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1926, file: !1569, line: 331, column: 9)
!1937 = !DILocation(line: 331, column: 9, scope: !1926)
!1938 = !DILocation(line: 336, column: 34, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1926, file: !1569, line: 336, column: 9)
!1940 = !DILocation(line: 336, column: 49, scope: !1939)
!1941 = !DILocation(line: 337, column: 13, scope: !1939)
!1942 = !DILocation(line: 337, column: 41, scope: !1939)
!1943 = !DILocation(line: 337, column: 56, scope: !1939)
!1944 = !DILocation(line: 336, column: 9, scope: !1926)
!1945 = !DILocation(line: 349, column: 29, scope: !1926)
!1946 = !DILocation(line: 349, column: 49, scope: !1926)
!1947 = !DILocation(line: 351, column: 12, scope: !1926)
!1948 = !DILocation(line: 351, column: 10, scope: !1926)
!1949 = !DILocation(line: 353, column: 5, scope: !1926)
!1950 = !DILocation(line: 355, column: 5, scope: !1926)
!1951 = !DILocation(line: 355, column: 23, scope: !1926)
!1952 = !DILocation(line: 355, column: 34, scope: !1926)
!1953 = !DILocation(line: 356, column: 5, scope: !1926)
!1954 = !DILocation(line: 356, column: 23, scope: !1926)
!1955 = !DILocation(line: 356, column: 34, scope: !1926)
!1956 = !DILocation(line: 359, column: 5, scope: !1926)
!1957 = !DILocation(line: 359, column: 23, scope: !1926)
!1958 = !DILocation(line: 359, column: 37, scope: !1926)
!1959 = !DILocation(line: 360, column: 39, scope: !1926)
!1960 = !DILocation(line: 360, column: 5, scope: !1926)
!1961 = !DILocation(line: 360, column: 23, scope: !1926)
!1962 = !DILocation(line: 360, column: 37, scope: !1926)
!1963 = !DILocation(line: 361, column: 5, scope: !1926)
!1964 = !DILocation(line: 361, column: 23, scope: !1926)
!1965 = !DILocation(line: 361, column: 37, scope: !1926)
!1966 = !DILocation(line: 366, column: 47, scope: !1926)
!1967 = !DILocation(line: 367, column: 33, scope: !1926)
!1968 = !DILocation(line: 365, column: 5, scope: !1926)
!1969 = !DILocation(line: 365, column: 23, scope: !1926)
!1970 = !DILocation(line: 365, column: 31, scope: !1926)
!1971 = !DILocation(line: 369, column: 5, scope: !1926)
!1972 = !DILocation(line: 369, column: 29, scope: !1926)
!1973 = distinct !{!1973, !1971, !1974}
!1974 = !DILocation(line: 369, column: 39, scope: !1926)
!1975 = !DILocation(line: 370, column: 23, scope: !1926)
!1976 = !DILocation(line: 370, column: 33, scope: !1926)
!1977 = !DILocation(line: 371, column: 5, scope: !1926)
!1978 = !DILocation(line: 371, column: 23, scope: !1926)
!1979 = !DILocation(line: 371, column: 34, scope: !1926)
!1980 = !DILocation(line: 373, column: 28, scope: !1926)
!1981 = !DILocation(line: 373, column: 5, scope: !1926)
!1982 = !DILocation(line: 375, column: 44, scope: !1926)
!1983 = !DILocation(line: 377, column: 5, scope: !1926)
!1984 = !DILocation(line: 378, column: 1, scope: !1926)
!1985 = distinct !DISubprogram(name: "hal_gpt_delay_us", scope: !1569, file: !1569, line: 382, type: !1908, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1568, retainedNodes: !1986)
!1986 = !{!1987}
!1987 = !DILocalVariable(name: "us", arg: 1, scope: !1985, file: !1569, line: 382, type: !175)
!1988 = !DILocation(line: 0, scope: !1985)
!1989 = !DILocation(line: 385, column: 40, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1985, file: !1569, line: 385, column: 9)
!1991 = !DILocation(line: 385, column: 55, scope: !1990)
!1992 = !DILocation(line: 385, column: 9, scope: !1985)
!1993 = !DILocation(line: 388, column: 34, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1990, file: !1569, line: 385, column: 75)
!1995 = !DILocation(line: 388, column: 9, scope: !1994)
!1996 = !DILocation(line: 390, column: 55, scope: !1994)
!1997 = !DILocation(line: 391, column: 5, scope: !1994)
!1998 = !DILocation(line: 392, column: 20, scope: !1985)
!1999 = !DILocation(line: 392, column: 45, scope: !1985)
!2000 = !DILocation(line: 392, column: 5, scope: !1985)
!2001 = !DILocation(line: 394, column: 5, scope: !1985)
!2002 = distinct !DISubprogram(name: "hal_gpt_stop_timer", scope: !1569, file: !1569, line: 398, type: !1682, scopeLine: 399, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1568, retainedNodes: !2003)
!2003 = !{!2004, !2005}
!2004 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !2002, file: !1569, line: 398, type: !1685)
!2005 = !DILocalVariable(name: "mask", scope: !2002, file: !1569, line: 400, type: !184)
!2006 = !DILocation(line: 0, scope: !2002)
!2007 = !DILocation(line: 400, column: 5, scope: !2002)
!2008 = !DILocation(line: 400, column: 23, scope: !2002)
!2009 = !DILocation(line: 402, column: 9, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2002, file: !1569, line: 402, column: 9)
!2011 = !DILocation(line: 402, column: 9, scope: !2002)
!2012 = !DILocation(line: 413, column: 12, scope: !2002)
!2013 = !DILocation(line: 413, column: 10, scope: !2002)
!2014 = !DILocation(line: 415, column: 5, scope: !2002)
!2015 = !DILocation(line: 415, column: 23, scope: !2002)
!2016 = !DILocation(line: 415, column: 34, scope: !2002)
!2017 = !DILocation(line: 418, column: 5, scope: !2002)
!2018 = !DILocation(line: 418, column: 23, scope: !2002)
!2019 = !DILocation(line: 418, column: 34, scope: !2002)
!2020 = !DILocation(line: 420, column: 5, scope: !2002)
!2021 = !DILocation(line: 420, column: 23, scope: !2002)
!2022 = !DILocation(line: 420, column: 35, scope: !2002)
!2023 = !DILocation(line: 422, column: 29, scope: !2002)
!2024 = !DILocation(line: 422, column: 44, scope: !2002)
!2025 = !DILocation(line: 423, column: 28, scope: !2002)
!2026 = !DILocation(line: 423, column: 5, scope: !2002)
!2027 = !DILocation(line: 425, column: 33, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2002, file: !1569, line: 425, column: 9)
!2029 = !DILocation(line: 425, column: 9, scope: !2002)
!2030 = !DILocation(line: 427, column: 53, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2028, file: !1569, line: 425, column: 62)
!2032 = !DILocation(line: 428, column: 5, scope: !2031)
!2033 = !DILocation(line: 430, column: 1, scope: !2002)
!2034 = distinct !DISubprogram(name: "hal_gpt_sw_get_timer", scope: !1569, file: !1569, line: 434, type: !2035, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1568, retainedNodes: !2037)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!1684, !1749}
!2037 = !{!2038, !2039, !2040}
!2038 = !DILocalVariable(name: "handle", arg: 1, scope: !2034, file: !1569, line: 434, type: !1749)
!2039 = !DILocalVariable(name: "timer", scope: !2034, file: !1569, line: 436, type: !175)
!2040 = !DILocalVariable(name: "mask", scope: !2034, file: !1569, line: 437, type: !175)
!2041 = !DILocation(line: 0, scope: !2034)
!2042 = !DILocation(line: 439, column: 24, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2034, file: !1569, line: 439, column: 9)
!2044 = !DILocation(line: 439, column: 41, scope: !2043)
!2045 = !DILocation(line: 439, column: 9, scope: !2034)
!2046 = !DILocation(line: 443, column: 16, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2034, file: !1569, line: 443, column: 9)
!2048 = !DILocation(line: 443, column: 9, scope: !2034)
!2049 = !DILocation(line: 448, column: 12, scope: !2034)
!2050 = !DILocation(line: 450, column: 15, scope: !2034)
!2051 = !DILocation(line: 451, column: 21, scope: !2034)
!2052 = !DILocation(line: 451, column: 13, scope: !2034)
!2053 = !DILocation(line: 452, column: 33, scope: !2034)
!2054 = !DILocation(line: 452, column: 41, scope: !2034)
!2055 = !DILocation(line: 453, column: 36, scope: !2034)
!2056 = !DILocation(line: 455, column: 5, scope: !2034)
!2057 = !DILocation(line: 456, column: 5, scope: !2034)
!2058 = !DILocation(line: 457, column: 1, scope: !2034)
!2059 = distinct !DISubprogram(name: "hal_gpt_sw_free_timer", scope: !1569, file: !1569, line: 459, type: !1908, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1568, retainedNodes: !2060)
!2060 = !{!2061, !2062}
!2061 = !DILocalVariable(name: "handle", arg: 1, scope: !2059, file: !1569, line: 459, type: !175)
!2062 = !DILocalVariable(name: "timer", scope: !2059, file: !1569, line: 461, type: !184)
!2063 = !DILocation(line: 0, scope: !2059)
!2064 = !DILocation(line: 461, column: 5, scope: !2059)
!2065 = !DILocation(line: 461, column: 23, scope: !2059)
!2066 = !DILocation(line: 463, column: 17, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2059, file: !1569, line: 463, column: 9)
!2068 = !DILocation(line: 463, column: 37, scope: !2067)
!2069 = !DILocation(line: 463, column: 9, scope: !2059)
!2070 = !DILocation(line: 467, column: 20, scope: !2059)
!2071 = !DILocation(line: 467, column: 11, scope: !2059)
!2072 = !DILocation(line: 469, column: 24, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2059, file: !1569, line: 469, column: 9)
!2074 = !DILocation(line: 469, column: 41, scope: !2073)
!2075 = !DILocation(line: 469, column: 9, scope: !2059)
!2076 = !DILocation(line: 473, column: 30, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2059, file: !1569, line: 473, column: 9)
!2078 = !DILocation(line: 473, column: 37, scope: !2077)
!2079 = !DILocation(line: 473, column: 9, scope: !2059)
!2080 = !DILocation(line: 477, column: 30, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2059, file: !1569, line: 477, column: 9)
!2082 = !DILocation(line: 477, column: 37, scope: !2081)
!2083 = !DILocation(line: 477, column: 45, scope: !2081)
!2084 = !DILocation(line: 477, column: 9, scope: !2059)
!2085 = !DILocation(line: 481, column: 26, scope: !2059)
!2086 = !DILocation(line: 481, column: 33, scope: !2059)
!2087 = !DILocation(line: 481, column: 41, scope: !2059)
!2088 = !DILocation(line: 482, column: 36, scope: !2059)
!2089 = !DILocation(line: 484, column: 5, scope: !2059)
!2090 = !DILocation(line: 485, column: 1, scope: !2059)
!2091 = distinct !DISubprogram(name: "hal_gpt_sw_start_timer_ms", scope: !1569, file: !1569, line: 487, type: !2092, scopeLine: 488, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1568, retainedNodes: !2094)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!1684, !175, !175, !225, !194}
!2094 = !{!2095, !2096, !2097, !2098, !2099, !2100, !2101}
!2095 = !DILocalVariable(name: "handle", arg: 1, scope: !2091, file: !1569, line: 487, type: !175)
!2096 = !DILocalVariable(name: "timeout_time_ms", arg: 2, scope: !2091, file: !1569, line: 487, type: !175)
!2097 = !DILocalVariable(name: "callback", arg: 3, scope: !2091, file: !1569, line: 487, type: !225)
!2098 = !DILocalVariable(name: "user_data", arg: 4, scope: !2091, file: !1569, line: 487, type: !194)
!2099 = !DILocalVariable(name: "current_time", scope: !2091, file: !1569, line: 489, type: !175)
!2100 = !DILocalVariable(name: "mask", scope: !2091, file: !1569, line: 490, type: !175)
!2101 = !DILocalVariable(name: "timer", scope: !2091, file: !1569, line: 491, type: !175)
!2102 = !DILocation(line: 0, scope: !2091)
!2103 = !DILocation(line: 493, column: 17, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2091, file: !1569, line: 493, column: 9)
!2105 = !DILocation(line: 493, column: 37, scope: !2104)
!2106 = !DILocation(line: 493, column: 9, scope: !2091)
!2107 = !DILocation(line: 497, column: 20, scope: !2091)
!2108 = !DILocation(line: 503, column: 37, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2091, file: !1569, line: 503, column: 9)
!2110 = !DILocation(line: 503, column: 9, scope: !2091)
!2111 = !DILocation(line: 507, column: 37, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2091, file: !1569, line: 507, column: 9)
!2113 = !DILocation(line: 507, column: 45, scope: !2112)
!2114 = !DILocation(line: 507, column: 9, scope: !2091)
!2115 = !DILocation(line: 511, column: 25, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2091, file: !1569, line: 511, column: 9)
!2117 = !DILocation(line: 511, column: 9, scope: !2091)
!2118 = !DILocation(line: 516, column: 12, scope: !2091)
!2119 = !DILocation(line: 519, column: 30, scope: !2091)
!2120 = !DILocation(line: 521, column: 24, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2091, file: !1569, line: 521, column: 9)
!2122 = !DILocation(line: 521, column: 38, scope: !2121)
!2123 = !DILocation(line: 521, column: 9, scope: !2091)
!2124 = !DILocation(line: 522, column: 9, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2121, file: !1569, line: 521, column: 48)
!2126 = !DILocation(line: 523, column: 9, scope: !2125)
!2127 = !DILocation(line: 524, column: 38, scope: !2125)
!2128 = !DILocation(line: 525, column: 5, scope: !2125)
!2129 = !DILocation(line: 526, column: 5, scope: !2091)
!2130 = !DILocation(line: 528, column: 23, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2091, file: !1569, line: 528, column: 8)
!2132 = !DILocation(line: 528, column: 41, scope: !2131)
!2133 = !DILocation(line: 528, column: 8, scope: !2091)
!2134 = !DILocation(line: 529, column: 51, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2131, file: !1569, line: 528, column: 51)
!2136 = !DILocation(line: 529, column: 24, scope: !2135)
!2137 = !DILocation(line: 530, column: 5, scope: !2135)
!2138 = !DILocation(line: 0, scope: !2131)
!2139 = !DILocation(line: 534, column: 34, scope: !2091)
!2140 = !DILocation(line: 535, column: 39, scope: !2091)
!2141 = !DILocation(line: 537, column: 49, scope: !2091)
!2142 = !DILocation(line: 538, column: 80, scope: !2091)
!2143 = !DILocation(line: 538, column: 33, scope: !2091)
!2144 = !DILocation(line: 538, column: 49, scope: !2091)
!2145 = !DILocation(line: 539, column: 50, scope: !2091)
!2146 = !DILocation(line: 539, column: 61, scope: !2091)
!2147 = !DILocation(line: 540, column: 50, scope: !2091)
!2148 = !DILocation(line: 540, column: 61, scope: !2091)
!2149 = !DILocation(line: 542, column: 5, scope: !2091)
!2150 = !DILocation(line: 546, column: 30, scope: !2091)
!2151 = !DILocation(line: 548, column: 5, scope: !2091)
!2152 = !DILocation(line: 550, column: 5, scope: !2091)
!2153 = !DILocation(line: 551, column: 1, scope: !2091)
!2154 = distinct !DISubprogram(name: "hal_gpt_sw_stop_timer_ms", scope: !1569, file: !1569, line: 553, type: !1908, scopeLine: 554, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1568, retainedNodes: !2155)
!2155 = !{!2156, !2157, !2158, !2159}
!2156 = !DILocalVariable(name: "handle", arg: 1, scope: !2154, file: !1569, line: 553, type: !175)
!2157 = !DILocalVariable(name: "current_time", scope: !2154, file: !1569, line: 555, type: !175)
!2158 = !DILocalVariable(name: "mask", scope: !2154, file: !1569, line: 556, type: !175)
!2159 = !DILocalVariable(name: "timer", scope: !2154, file: !1569, line: 557, type: !175)
!2160 = !DILocation(line: 0, scope: !2154)
!2161 = !DILocation(line: 559, column: 17, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2154, file: !1569, line: 559, column: 9)
!2163 = !DILocation(line: 559, column: 37, scope: !2162)
!2164 = !DILocation(line: 559, column: 9, scope: !2154)
!2165 = !DILocation(line: 563, column: 20, scope: !2154)
!2166 = !DILocation(line: 565, column: 37, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2154, file: !1569, line: 565, column: 9)
!2168 = !DILocation(line: 565, column: 48, scope: !2167)
!2169 = !DILocation(line: 565, column: 9, scope: !2154)
!2170 = !DILocation(line: 569, column: 37, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2154, file: !1569, line: 569, column: 9)
!2172 = !DILocation(line: 569, column: 45, scope: !2171)
!2173 = !DILocation(line: 569, column: 9, scope: !2154)
!2174 = !DILocation(line: 574, column: 12, scope: !2154)
!2175 = !DILocation(line: 577, column: 30, scope: !2154)
!2176 = !DILocation(line: 578, column: 5, scope: !2154)
!2177 = !DILocation(line: 579, column: 30, scope: !2154)
!2178 = !DILocation(line: 581, column: 23, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2154, file: !1569, line: 581, column: 8)
!2180 = !DILocation(line: 581, column: 41, scope: !2179)
!2181 = !DILocation(line: 581, column: 8, scope: !2154)
!2182 = !DILocation(line: 582, column: 51, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2179, file: !1569, line: 581, column: 51)
!2184 = !DILocation(line: 582, column: 24, scope: !2183)
!2185 = !DILocation(line: 583, column: 5, scope: !2183)
!2186 = !DILocation(line: 0, scope: !2179)
!2187 = !DILocation(line: 587, column: 34, scope: !2154)
!2188 = !DILocation(line: 588, column: 39, scope: !2154)
!2189 = !DILocation(line: 590, column: 44, scope: !2154)
!2190 = !DILocation(line: 592, column: 24, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2154, file: !1569, line: 592, column: 9)
!2192 = !DILocation(line: 592, column: 44, scope: !2191)
!2193 = !DILocation(line: 592, column: 9, scope: !2154)
!2194 = !DILocation(line: 593, column: 9, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2191, file: !1569, line: 592, column: 50)
!2196 = !DILocation(line: 594, column: 5, scope: !2195)
!2197 = !DILocation(line: 598, column: 30, scope: !2154)
!2198 = !DILocation(line: 599, column: 5, scope: !2154)
!2199 = !DILocation(line: 601, column: 5, scope: !2154)
!2200 = !DILocation(line: 603, column: 1, scope: !2154)
!2201 = distinct !DISubprogram(name: "hal_gpt_sw_get_remaining_time_ms", scope: !1569, file: !1569, line: 605, type: !2202, scopeLine: 606, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1568, retainedNodes: !2204)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{!1684, !175, !1749}
!2204 = !{!2205, !2206, !2207, !2208, !2209}
!2205 = !DILocalVariable(name: "handle", arg: 1, scope: !2201, file: !1569, line: 605, type: !175)
!2206 = !DILocalVariable(name: "remaing_time", arg: 2, scope: !2201, file: !1569, line: 605, type: !1749)
!2207 = !DILocalVariable(name: "current_time", scope: !2201, file: !1569, line: 607, type: !175)
!2208 = !DILocalVariable(name: "mask", scope: !2201, file: !1569, line: 608, type: !175)
!2209 = !DILocalVariable(name: "timer", scope: !2201, file: !1569, line: 609, type: !175)
!2210 = !DILocation(line: 0, scope: !2201)
!2211 = !DILocation(line: 611, column: 17, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2201, file: !1569, line: 611, column: 9)
!2213 = !DILocation(line: 611, column: 37, scope: !2212)
!2214 = !DILocation(line: 611, column: 9, scope: !2201)
!2215 = !DILocation(line: 615, column: 20, scope: !2201)
!2216 = !DILocation(line: 617, column: 37, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2201, file: !1569, line: 617, column: 9)
!2218 = !DILocation(line: 617, column: 45, scope: !2217)
!2219 = !DILocation(line: 617, column: 9, scope: !2201)
!2220 = !DILocation(line: 622, column: 12, scope: !2201)
!2221 = !DILocation(line: 624, column: 35, scope: !2201)
!2222 = !DILocation(line: 624, column: 51, scope: !2201)
!2223 = !DILocation(line: 624, column: 76, scope: !2201)
!2224 = !DILocation(line: 624, column: 49, scope: !2201)
!2225 = !DILocation(line: 626, column: 37, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2201, file: !1569, line: 626, column: 9)
!2227 = !DILocation(line: 626, column: 9, scope: !2201)
!2228 = !DILocation(line: 0, scope: !2226)
!2229 = !DILocation(line: 632, column: 5, scope: !2201)
!2230 = !DILocation(line: 634, column: 5, scope: !2201)
!2231 = !DILocation(line: 636, column: 1, scope: !2201)
!2232 = distinct !DISubprogram(name: "gpt_calibrate_algorithm", scope: !3, file: !3, line: 56, type: !2233, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2235)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!175, !175, !175, !175}
!2235 = !{!2236, !2237, !2238, !2239, !2241, !2242}
!2236 = !DILocalVariable(name: "mul1", arg: 1, scope: !2232, file: !3, line: 56, type: !175)
!2237 = !DILocalVariable(name: "mul2", arg: 2, scope: !2232, file: !3, line: 56, type: !175)
!2238 = !DILocalVariable(name: "div", arg: 3, scope: !2232, file: !3, line: 56, type: !175)
!2239 = !DILocalVariable(name: "data1", scope: !2232, file: !3, line: 58, type: !2240)
!2240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 64, elements: !383)
!2241 = !DILocalVariable(name: "data2", scope: !2232, file: !3, line: 59, type: !2240)
!2242 = !DILocalVariable(name: "result", scope: !2232, file: !3, line: 60, type: !2240)
!2243 = !DILocation(line: 0, scope: !2232)
!2244 = !DILocation(line: 63, column: 22, scope: !2232)
!2245 = !DILocation(line: 63, column: 32, scope: !2232)
!2246 = !DILocation(line: 64, column: 23, scope: !2232)
!2247 = !DILocation(line: 64, column: 40, scope: !2232)
!2248 = !DILocation(line: 66, column: 27, scope: !2232)
!2249 = !DILocation(line: 67, column: 27, scope: !2232)
!2250 = !DILocation(line: 67, column: 44, scope: !2232)
!2251 = !DILocation(line: 69, column: 26, scope: !2232)
!2252 = !DILocation(line: 70, column: 36, scope: !2232)
!2253 = !DILocation(line: 70, column: 43, scope: !2232)
!2254 = !DILocation(line: 70, column: 55, scope: !2232)
!2255 = !DILocation(line: 72, column: 34, scope: !2232)
!2256 = !DILocation(line: 72, column: 41, scope: !2232)
!2257 = !DILocation(line: 72, column: 5, scope: !2232)
!2258 = distinct !DISubprogram(name: "gpt_current_count", scope: !3, file: !3, line: 75, type: !2259, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2261)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!175, !179}
!2261 = !{!2262}
!2262 = !DILocalVariable(name: "gpt", arg: 1, scope: !2258, file: !3, line: 75, type: !179)
!2263 = !DILocation(line: 0, scope: !2258)
!2264 = !DILocation(line: 77, column: 17, scope: !2258)
!2265 = !DILocation(line: 77, column: 5, scope: !2258)
!2266 = distinct !DISubprogram(name: "gpt_convert_ms_to_32k_count", scope: !3, file: !3, line: 81, type: !2267, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2269)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{!175, !175}
!2269 = !{!2270}
!2270 = !DILocalVariable(name: "ms", arg: 1, scope: !2266, file: !3, line: 81, type: !175)
!2271 = !DILocation(line: 0, scope: !2266)
!2272 = !DILocation(line: 83, column: 27, scope: !2266)
!2273 = !DILocation(line: 83, column: 37, scope: !2266)
!2274 = !DILocation(line: 83, column: 43, scope: !2266)
!2275 = !DILocation(line: 83, column: 32, scope: !2266)
!2276 = !DILocation(line: 83, column: 53, scope: !2266)
!2277 = !DILocation(line: 83, column: 59, scope: !2266)
!2278 = !DILocation(line: 83, column: 48, scope: !2266)
!2279 = !DILocation(line: 83, column: 70, scope: !2266)
!2280 = !DILocation(line: 83, column: 76, scope: !2266)
!2281 = !DILocation(line: 83, column: 65, scope: !2266)
!2282 = !DILocation(line: 83, column: 5, scope: !2266)
!2283 = !DILocation(line: 90, column: 9, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !207, file: !3, line: 90, column: 9)
!2285 = !DILocation(line: 90, column: 9, scope: !207)
!2286 = !DILocation(line: 91, column: 13, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !3, line: 91, column: 13)
!2288 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 90, column: 24)
!2289 = !DILocation(line: 91, column: 13, scope: !2288)
!2290 = !DILocation(line: 92, column: 32, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2287, file: !3, line: 91, column: 41)
!2292 = !DILocation(line: 92, column: 30, scope: !2291)
!2293 = !DILocation(line: 93, column: 41, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 93, column: 17)
!2295 = !DILocation(line: 0, scope: !2287)
!2296 = !DILocation(line: 105, column: 1, scope: !207)
!2297 = distinct !DISubprogram(name: "gpt_open_clock_source", scope: !3, file: !3, line: 107, type: !208, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !210)
!2298 = !DILocation(line: 109, column: 9, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2297, file: !3, line: 109, column: 9)
!2300 = !DILocation(line: 109, column: 9, scope: !2297)
!2301 = !DILocation(line: 110, column: 9, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2299, file: !3, line: 109, column: 61)
!2303 = !DILocation(line: 111, column: 5, scope: !2302)
!2304 = !DILocation(line: 112, column: 1, scope: !2297)
!2305 = distinct !DISubprogram(name: "gpt_clock_calibrate_us_to_count", scope: !3, file: !3, line: 114, type: !2267, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2306)
!2306 = !{!2307}
!2307 = !DILocalVariable(name: "time_us", arg: 1, scope: !2305, file: !3, line: 114, type: !175)
!2308 = !DILocation(line: 0, scope: !2305)
!2309 = !DILocation(line: 116, column: 5, scope: !2305)
!2310 = !DILocation(line: 118, column: 9, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2305, file: !3, line: 118, column: 9)
!2312 = !DILocation(line: 118, column: 9, scope: !2305)
!2313 = !DILocation(line: 120, column: 49, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2311, file: !3, line: 118, column: 37)
!2315 = !DILocation(line: 120, column: 16, scope: !2314)
!2316 = !DILocation(line: 120, column: 9, scope: !2314)
!2317 = !DILocation(line: 0, scope: !2311)
!2318 = !DILocation(line: 125, column: 1, scope: !2305)
!2319 = distinct !DISubprogram(name: "gpt_clock_calibrate_count_to_us", scope: !3, file: !3, line: 127, type: !2267, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2320)
!2320 = !{!2321}
!2321 = !DILocalVariable(name: "count", arg: 1, scope: !2319, file: !3, line: 127, type: !175)
!2322 = !DILocation(line: 0, scope: !2319)
!2323 = !DILocation(line: 129, column: 5, scope: !2319)
!2324 = !DILocation(line: 131, column: 9, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2319, file: !3, line: 131, column: 9)
!2326 = !DILocation(line: 131, column: 9, scope: !2319)
!2327 = !DILocation(line: 133, column: 69, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2325, file: !3, line: 131, column: 37)
!2329 = !DILocation(line: 133, column: 16, scope: !2328)
!2330 = !DILocation(line: 133, column: 9, scope: !2328)
!2331 = !DILocation(line: 0, scope: !2325)
!2332 = !DILocation(line: 138, column: 1, scope: !2319)
!2333 = distinct !DISubprogram(name: "gpt_start_free_run_timer", scope: !3, file: !3, line: 141, type: !2334, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2336)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{null, !179, !175, !175}
!2336 = !{!2337, !2338, !2339}
!2337 = !DILocalVariable(name: "gpt", arg: 1, scope: !2333, file: !3, line: 141, type: !179)
!2338 = !DILocalVariable(name: "clock_source", arg: 2, scope: !2333, file: !3, line: 141, type: !175)
!2339 = !DILocalVariable(name: "divide", arg: 3, scope: !2333, file: !3, line: 141, type: !175)
!2340 = !DILocation(line: 0, scope: !2333)
!2341 = !DILocation(line: 143, column: 5, scope: !2333)
!2342 = !DILocation(line: 145, column: 33, scope: !2333)
!2343 = !DILocation(line: 145, column: 10, scope: !2333)
!2344 = !DILocation(line: 145, column: 18, scope: !2333)
!2345 = !DILocation(line: 148, column: 10, scope: !2333)
!2346 = !DILocation(line: 148, column: 18, scope: !2333)
!2347 = !DILocation(line: 149, column: 1, scope: !2333)
!2348 = distinct !DISubprogram(name: "gpt_delay_time", scope: !3, file: !3, line: 151, type: !2349, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2351)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{null, !179, !690}
!2351 = !{!2352, !2353, !2354, !2355}
!2352 = !DILocalVariable(name: "gpt", arg: 1, scope: !2348, file: !3, line: 151, type: !179)
!2353 = !DILocalVariable(name: "count", arg: 2, scope: !2348, file: !3, line: 151, type: !690)
!2354 = !DILocalVariable(name: "end_count", scope: !2348, file: !3, line: 153, type: !175)
!2355 = !DILocalVariable(name: "current", scope: !2348, file: !3, line: 153, type: !175)
!2356 = !DILocation(line: 0, scope: !2348)
!2357 = !DILocation(line: 155, column: 17, scope: !2348)
!2358 = !DILocation(line: 156, column: 25, scope: !2348)
!2359 = !DILocation(line: 156, column: 33, scope: !2348)
!2360 = !DILocation(line: 159, column: 19, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2348, file: !3, line: 159, column: 9)
!2362 = !DILocation(line: 159, column: 9, scope: !2348)
!2363 = !DILocation(line: 160, column: 16, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2361, file: !3, line: 159, column: 30)
!2365 = !DILocation(line: 160, column: 39, scope: !2364)
!2366 = !DILocation(line: 160, column: 9, scope: !2364)
!2367 = distinct !{!2367, !2366, !2368}
!2368 = !DILocation(line: 160, column: 51, scope: !2364)
!2369 = !DILocation(line: 162, column: 16, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2361, file: !3, line: 161, column: 12)
!2371 = !DILocation(line: 162, column: 39, scope: !2370)
!2372 = !DILocation(line: 162, column: 9, scope: !2370)
!2373 = distinct !{!2373, !2372, !2374}
!2374 = !DILocation(line: 162, column: 50, scope: !2370)
!2375 = !DILocation(line: 163, column: 16, scope: !2370)
!2376 = !DILocation(line: 163, column: 39, scope: !2370)
!2377 = !DILocation(line: 163, column: 9, scope: !2370)
!2378 = distinct !{!2378, !2377, !2379}
!2379 = !DILocation(line: 163, column: 51, scope: !2370)
!2380 = !DILocation(line: 165, column: 1, scope: !2348)
!2381 = distinct !DISubprogram(name: "gpt_reset_default_timer", scope: !3, file: !3, line: 166, type: !2382, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2384)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{null, !179}
!2384 = !{!2385}
!2385 = !DILocalVariable(name: "gpt", arg: 1, scope: !2381, file: !3, line: 166, type: !179)
!2386 = !DILocation(line: 0, scope: !2381)
!2387 = !DILocation(line: 168, column: 10, scope: !2381)
!2388 = !DILocation(line: 168, column: 22, scope: !2381)
!2389 = !DILocation(line: 169, column: 10, scope: !2381)
!2390 = !DILocation(line: 169, column: 22, scope: !2381)
!2391 = !DILocation(line: 170, column: 21, scope: !2381)
!2392 = !DILocation(line: 171, column: 5, scope: !2381)
!2393 = !DILocation(line: 171, column: 16, scope: !2381)
!2394 = distinct !{!2394, !2392, !2395}
!2395 = !DILocation(line: 171, column: 26, scope: !2381)
!2396 = !DILocation(line: 172, column: 10, scope: !2381)
!2397 = !DILocation(line: 172, column: 22, scope: !2381)
!2398 = !DILocation(line: 173, column: 10, scope: !2381)
!2399 = !DILocation(line: 173, column: 22, scope: !2381)
!2400 = !DILocation(line: 174, column: 10, scope: !2381)
!2401 = !DILocation(line: 174, column: 22, scope: !2381)
!2402 = !DILocation(line: 176, column: 13, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2381, file: !3, line: 176, column: 9)
!2404 = !DILocation(line: 176, column: 9, scope: !2381)
!2405 = !DILocation(line: 177, column: 27, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2403, file: !3, line: 176, column: 22)
!2407 = !DILocation(line: 178, column: 5, scope: !2406)
!2408 = !DILocation(line: 179, column: 1, scope: !2381)
!2409 = distinct !DISubprogram(name: "gpt_save_and_mask_interrupt", scope: !3, file: !3, line: 181, type: !2259, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2410)
!2410 = !{!2411, !2412}
!2411 = !DILocalVariable(name: "gpt", arg: 1, scope: !2409, file: !3, line: 181, type: !179)
!2412 = !DILocalVariable(name: "mask", scope: !2409, file: !3, line: 183, type: !184)
!2413 = !DILocation(line: 0, scope: !2409)
!2414 = !DILocation(line: 183, column: 5, scope: !2409)
!2415 = !DILocation(line: 183, column: 23, scope: !2409)
!2416 = !DILocation(line: 185, column: 17, scope: !2409)
!2417 = !DILocation(line: 185, column: 10, scope: !2409)
!2418 = !DILocation(line: 187, column: 22, scope: !2409)
!2419 = !DILocation(line: 189, column: 12, scope: !2409)
!2420 = !DILocation(line: 190, column: 1, scope: !2409)
!2421 = !DILocation(line: 189, column: 5, scope: !2409)
!2422 = distinct !DISubprogram(name: "gpt_restore_interrupt", scope: !3, file: !3, line: 192, type: !2423, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2425)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{null, !179, !175}
!2425 = !{!2426, !2427}
!2426 = !DILocalVariable(name: "gpt", arg: 1, scope: !2422, file: !3, line: 192, type: !179)
!2427 = !DILocalVariable(name: "mask", arg: 2, scope: !2422, file: !3, line: 192, type: !175)
!2428 = !DILocation(line: 0, scope: !2422)
!2429 = !DILocation(line: 194, column: 10, scope: !2422)
!2430 = !DILocation(line: 194, column: 21, scope: !2422)
!2431 = !DILocation(line: 195, column: 1, scope: !2422)
!2432 = distinct !DISubprogram(name: "gpt_interrupt_handler", scope: !3, file: !3, line: 197, type: !846, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2433)
!2433 = !{!2434, !2435, !2436, !2437, !2438}
!2434 = !DILocalVariable(name: "irq_number", arg: 1, scope: !2432, file: !3, line: 197, type: !780)
!2435 = !DILocalVariable(name: "i", scope: !2432, file: !3, line: 199, type: !175)
!2436 = !DILocalVariable(name: "mask", scope: !2432, file: !3, line: 200, type: !184)
!2437 = !DILocalVariable(name: "state", scope: !2432, file: !3, line: 201, type: !184)
!2438 = !DILocalVariable(name: "enable", scope: !2432, file: !3, line: 202, type: !184)
!2439 = !DILocation(line: 0, scope: !2432)
!2440 = !DILocation(line: 200, column: 5, scope: !2432)
!2441 = !DILocation(line: 200, column: 23, scope: !2432)
!2442 = !DILocation(line: 201, column: 5, scope: !2432)
!2443 = !DILocation(line: 201, column: 23, scope: !2432)
!2444 = !DILocation(line: 202, column: 5, scope: !2432)
!2445 = !DILocation(line: 202, column: 23, scope: !2432)
!2446 = !DILocation(line: 207, column: 5, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 207, column: 5)
!2448 = !DILocation(line: 209, column: 18, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 207, column: 44)
!2450 = distinct !DILexicalBlock(scope: !2447, file: !3, line: 207, column: 5)
!2451 = !DILocation(line: 209, column: 29, scope: !2449)
!2452 = !DILocation(line: 209, column: 16, scope: !2449)
!2453 = !DILocation(line: 210, column: 29, scope: !2449)
!2454 = !DILocation(line: 210, column: 16, scope: !2449)
!2455 = !DILocation(line: 212, column: 16, scope: !2449)
!2456 = !DILocation(line: 212, column: 14, scope: !2449)
!2457 = !DILocation(line: 214, column: 9, scope: !2449)
!2458 = !DILocation(line: 214, column: 20, scope: !2449)
!2459 = !DILocation(line: 214, column: 32, scope: !2449)
!2460 = !DILocation(line: 216, column: 14, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2449, file: !3, line: 216, column: 13)
!2462 = !DILocation(line: 216, column: 20, scope: !2461)
!2463 = !DILocation(line: 216, column: 40, scope: !2461)
!2464 = !DILocation(line: 216, column: 44, scope: !2461)
!2465 = !DILocation(line: 216, column: 51, scope: !2461)
!2466 = !DILocation(line: 216, column: 13, scope: !2449)
!2467 = !DILocation(line: 224, column: 51, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2469, file: !3, line: 224, column: 17)
!2469 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 216, column: 70)
!2470 = !DILocation(line: 224, column: 60, scope: !2468)
!2471 = !DILocation(line: 224, column: 17, scope: !2469)
!2472 = !DILocation(line: 225, column: 94, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 224, column: 69)
!2474 = !DILocation(line: 225, column: 17, scope: !2473)
!2475 = !DILocation(line: 226, column: 13, scope: !2473)
!2476 = !DILocation(line: 229, column: 31, scope: !2449)
!2477 = !DILocation(line: 229, column: 42, scope: !2449)
!2478 = !DILocation(line: 229, column: 9, scope: !2449)
!2479 = !DILocation(line: 207, column: 40, scope: !2450)
!2480 = !DILocation(line: 207, column: 19, scope: !2450)
!2481 = distinct !{!2481, !2446, !2482}
!2482 = !DILocation(line: 231, column: 5, scope: !2447)
!2483 = !DILocation(line: 233, column: 1, scope: !2432)
!2484 = distinct !DISubprogram(name: "gpt_nvic_register", scope: !3, file: !3, line: 236, type: !208, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !210)
!2485 = !DILocation(line: 238, column: 5, scope: !2484)
!2486 = !DILocation(line: 239, column: 5, scope: !2484)
!2487 = !DILocation(line: 240, column: 5, scope: !2484)
!2488 = !DILocation(line: 241, column: 1, scope: !2484)
!2489 = distinct !DISubprogram(name: "gpt_sw_get_current_time_ms", scope: !3, file: !3, line: 242, type: !2259, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2490)
!2490 = !{!2491, !2492, !2493, !2494, !2495}
!2491 = !DILocalVariable(name: "gpt", arg: 1, scope: !2489, file: !3, line: 242, type: !179)
!2492 = !DILocalVariable(name: "time", scope: !2489, file: !3, line: 244, type: !184)
!2493 = !DILocalVariable(name: "count", scope: !2489, file: !3, line: 245, type: !175)
!2494 = !DILocalVariable(name: "time_s", scope: !2489, file: !3, line: 245, type: !175)
!2495 = !DILocalVariable(name: "time_ms", scope: !2489, file: !3, line: 245, type: !175)
!2496 = !DILocation(line: 0, scope: !2489)
!2497 = !DILocation(line: 244, column: 5, scope: !2489)
!2498 = !DILocation(line: 244, column: 23, scope: !2489)
!2499 = !DILocation(line: 247, column: 13, scope: !2489)
!2500 = !DILocation(line: 248, column: 20, scope: !2489)
!2501 = !DILocation(line: 249, column: 23, scope: !2489)
!2502 = !DILocation(line: 249, column: 32, scope: !2489)
!2503 = !DILocation(line: 249, column: 39, scope: !2489)
!2504 = !DILocation(line: 249, column: 48, scope: !2489)
!2505 = !DILocation(line: 250, column: 19, scope: !2489)
!2506 = !DILocation(line: 250, column: 26, scope: !2489)
!2507 = !DILocation(line: 250, column: 10, scope: !2489)
!2508 = !DILocation(line: 253, column: 5, scope: !2489)
!2509 = !DILocation(line: 253, column: 30, scope: !2489)
!2510 = !DILocation(line: 253, column: 38, scope: !2489)
!2511 = !DILocation(line: 254, column: 5, scope: !2489)
!2512 = !DILocation(line: 254, column: 36, scope: !2489)
!2513 = distinct !{!2513, !2511, !2514}
!2514 = !DILocation(line: 254, column: 46, scope: !2489)
!2515 = !DILocation(line: 255, column: 12, scope: !2489)
!2516 = !DILocation(line: 256, column: 1, scope: !2489)
!2517 = !DILocation(line: 255, column: 5, scope: !2489)
!2518 = distinct !DISubprogram(name: "gpt_sw_get_free_timer", scope: !3, file: !3, line: 258, type: !2519, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2521)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!175}
!2521 = !{!2522}
!2522 = !DILocalVariable(name: "i", scope: !2518, file: !3, line: 260, type: !175)
!2523 = !DILocation(line: 0, scope: !2518)
!2524 = !DILocation(line: 262, column: 5, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 262, column: 5)
!2526 = !DILocation(line: 263, column: 37, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2528, file: !3, line: 263, column: 13)
!2528 = distinct !DILexicalBlock(scope: !2529, file: !3, line: 262, column: 45)
!2529 = distinct !DILexicalBlock(scope: !2525, file: !3, line: 262, column: 5)
!2530 = !DILocation(line: 263, column: 45, scope: !2527)
!2531 = !DILocation(line: 263, column: 13, scope: !2528)
!2532 = !DILocation(line: 262, column: 41, scope: !2529)
!2533 = !DILocation(line: 262, column: 19, scope: !2529)
!2534 = distinct !{!2534, !2524, !2535}
!2535 = !DILocation(line: 266, column: 5, scope: !2525)
!2536 = !DILocation(line: 269, column: 1, scope: !2518)
!2537 = distinct !DISubprogram(name: "gpt_sw_start_timer", scope: !3, file: !3, line: 271, type: !208, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2538)
!2538 = !{!2539, !2540}
!2539 = !DILocalVariable(name: "minimum_time", scope: !2537, file: !3, line: 273, type: !175)
!2540 = !DILocalVariable(name: "current_timer", scope: !2537, file: !3, line: 273, type: !175)
!2541 = !DILocation(line: 273, column: 5, scope: !2537)
!2542 = !DILocation(line: 275, column: 24, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2537, file: !3, line: 275, column: 9)
!2544 = !DILocation(line: 275, column: 9, scope: !2537)
!2545 = !DILocation(line: 0, scope: !2537)
!2546 = !DILocation(line: 279, column: 5, scope: !2537)
!2547 = !DILocation(line: 282, column: 56, scope: !2537)
!2548 = !DILocation(line: 282, column: 39, scope: !2537)
!2549 = !DILocation(line: 284, column: 30, scope: !2537)
!2550 = !DILocation(line: 285, column: 45, scope: !2537)
!2551 = !DILocation(line: 285, column: 5, scope: !2537)
!2552 = !DILocation(line: 286, column: 30, scope: !2537)
!2553 = !DILocation(line: 287, column: 1, scope: !2537)
!2554 = distinct !DISubprogram(name: "gpt_sw_get_minimum_left_time_ms", scope: !3, file: !3, line: 308, type: !2555, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2557)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{null, !1749, !1749}
!2557 = !{!2558, !2559, !2560, !2561, !2562}
!2558 = !DILocalVariable(name: "minimum_time", arg: 1, scope: !2554, file: !3, line: 308, type: !1749)
!2559 = !DILocalVariable(name: "number", arg: 2, scope: !2554, file: !3, line: 308, type: !1749)
!2560 = !DILocalVariable(name: "i", scope: !2554, file: !3, line: 310, type: !175)
!2561 = !DILocalVariable(name: "minimum", scope: !2554, file: !3, line: 311, type: !175)
!2562 = !DILocalVariable(name: "data", scope: !2554, file: !3, line: 312, type: !175)
!2563 = !DILocation(line: 0, scope: !2554)
!2564 = !DILocation(line: 314, column: 5, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 314, column: 5)
!2566 = !DILocation(line: 315, column: 37, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !3, line: 315, column: 13)
!2568 = distinct !DILexicalBlock(scope: !2569, file: !3, line: 314, column: 45)
!2569 = distinct !DILexicalBlock(scope: !2565, file: !3, line: 314, column: 5)
!2570 = !DILocation(line: 315, column: 13, scope: !2568)
!2571 = !DILocation(line: 316, column: 20, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 315, column: 57)
!2573 = !DILocation(line: 318, column: 22, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2572, file: !3, line: 318, column: 17)
!2575 = !DILocation(line: 318, column: 17, scope: !2572)
!2576 = !DILocation(line: 320, column: 25, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 318, column: 33)
!2578 = !DILocation(line: 321, column: 13, scope: !2577)
!2579 = !DILocation(line: 314, column: 41, scope: !2569)
!2580 = !DILocation(line: 314, column: 19, scope: !2569)
!2581 = distinct !{!2581, !2564, !2582}
!2582 = !DILocation(line: 323, column: 5, scope: !2565)
!2583 = !DILocation(line: 325, column: 19, scope: !2554)
!2584 = !DILocation(line: 326, column: 1, scope: !2554)
!2585 = distinct !DISubprogram(name: "gpt_sw_absolute_value", scope: !3, file: !3, line: 289, type: !2267, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2586)
!2586 = !{!2587, !2588, !2589, !2590}
!2587 = !DILocalVariable(name: "timer_number", arg: 1, scope: !2585, file: !3, line: 289, type: !175)
!2588 = !DILocalVariable(name: "time_out_delta", scope: !2585, file: !3, line: 291, type: !175)
!2589 = !DILocalVariable(name: "current_delta", scope: !2585, file: !3, line: 292, type: !175)
!2590 = !DILocalVariable(name: "ret_value", scope: !2585, file: !3, line: 293, type: !175)
!2591 = !DILocation(line: 0, scope: !2585)
!2592 = !DILocation(line: 295, column: 22, scope: !2585)
!2593 = !DILocation(line: 296, column: 22, scope: !2585)
!2594 = !DILocation(line: 298, column: 24, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 298, column: 9)
!2596 = !DILocation(line: 298, column: 9, scope: !2585)
!2597 = !DILocation(line: 306, column: 5, scope: !2585)
!2598 = distinct !DISubprogram(name: "gpt_sw_handler", scope: !3, file: !3, line: 329, type: !227, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2599)
!2599 = !{!2600, !2601, !2602, !2603}
!2600 = !DILocalVariable(name: "parameter", arg: 1, scope: !2598, file: !3, line: 329, type: !194)
!2601 = !DILocalVariable(name: "i", scope: !2598, file: !3, line: 331, type: !175)
!2602 = !DILocalVariable(name: "time_ms", scope: !2598, file: !3, line: 332, type: !184)
!2603 = !DILocalVariable(name: "data", scope: !2598, file: !3, line: 333, type: !184)
!2604 = !DILocation(line: 0, scope: !2598)
!2605 = !DILocation(line: 332, column: 5, scope: !2598)
!2606 = !DILocation(line: 332, column: 23, scope: !2598)
!2607 = !DILocation(line: 333, column: 5, scope: !2598)
!2608 = !DILocation(line: 333, column: 23, scope: !2598)
!2609 = !DILocation(line: 336, column: 24, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2598, file: !3, line: 336, column: 9)
!2611 = !DILocation(line: 336, column: 41, scope: !2610)
!2612 = !DILocation(line: 336, column: 9, scope: !2598)
!2613 = !DILocation(line: 338, column: 34, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2610, file: !3, line: 336, column: 47)
!2615 = !DILocation(line: 339, column: 9, scope: !2614)
!2616 = !DILocation(line: 340, column: 34, scope: !2614)
!2617 = !DILocation(line: 342, column: 46, scope: !2614)
!2618 = !DILocation(line: 342, column: 19, scope: !2614)
!2619 = !DILocation(line: 342, column: 17, scope: !2614)
!2620 = !DILocation(line: 344, column: 41, scope: !2614)
!2621 = !DILocation(line: 344, column: 38, scope: !2614)
!2622 = !DILocation(line: 345, column: 42, scope: !2614)
!2623 = !DILocation(line: 347, column: 9, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2614, file: !3, line: 347, column: 9)
!2625 = !DILocation(line: 348, column: 41, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2627, file: !3, line: 348, column: 17)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !3, line: 347, column: 49)
!2628 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 347, column: 9)
!2629 = !DILocation(line: 348, column: 17, scope: !2627)
!2630 = !DILocation(line: 350, column: 24, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2626, file: !3, line: 348, column: 61)
!2632 = !DILocation(line: 350, column: 22, scope: !2631)
!2633 = !DILocation(line: 352, column: 21, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2631, file: !3, line: 352, column: 21)
!2635 = !DILocation(line: 352, column: 26, scope: !2634)
!2636 = !DILocation(line: 352, column: 21, scope: !2631)
!2637 = !DILocation(line: 353, column: 56, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2634, file: !3, line: 352, column: 32)
!2639 = !DILocation(line: 354, column: 55, scope: !2638)
!2640 = !DILocation(line: 356, column: 62, scope: !2638)
!2641 = !DILocation(line: 356, column: 112, scope: !2638)
!2642 = !DILocation(line: 356, column: 21, scope: !2638)
!2643 = !DILocation(line: 357, column: 17, scope: !2638)
!2644 = !DILocation(line: 347, column: 45, scope: !2628)
!2645 = !DILocation(line: 347, column: 23, scope: !2628)
!2646 = distinct !{!2646, !2623, !2647}
!2647 = !DILocation(line: 360, column: 9, scope: !2624)
!2648 = !DILocation(line: 362, column: 42, scope: !2614)
!2649 = !DILocation(line: 364, column: 28, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2614, file: !3, line: 364, column: 13)
!2651 = !DILocation(line: 364, column: 48, scope: !2650)
!2652 = !DILocation(line: 364, column: 13, scope: !2614)
!2653 = !DILocation(line: 365, column: 13, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2650, file: !3, line: 364, column: 54)
!2655 = !DILocation(line: 366, column: 9, scope: !2654)
!2656 = !DILocation(line: 369, column: 1, scope: !2598)
!2657 = distinct !DISubprogram(name: "is_pin_with_pullsel", scope: !264, file: !264, line: 50, type: !2658, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !263, retainedNodes: !2661)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!175, !2660}
!2660 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_pin_t", file: !6, line: 390, baseType: !266)
!2661 = !{!2662, !2663, !2664}
!2662 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !2657, file: !264, line: 50, type: !2660)
!2663 = !DILocalVariable(name: "i", scope: !2657, file: !264, line: 52, type: !175)
!2664 = !DILocalVariable(name: "pin_number_with_pullsel", scope: !2657, file: !264, line: 53, type: !990)
!2665 = !DILocation(line: 0, scope: !2657)
!2666 = !DILocation(line: 53, column: 14, scope: !2657)
!2667 = !DILocation(line: 55, column: 5, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2657, file: !264, line: 55, column: 5)
!2669 = !DILocation(line: 55, column: 25, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2668, file: !264, line: 55, column: 5)
!2671 = !DILocation(line: 55, column: 19, scope: !2670)
!2672 = distinct !{!2672, !2667, !2673}
!2673 = !DILocation(line: 59, column: 5, scope: !2668)
!2674 = !DILocation(line: 56, column: 13, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2676, file: !264, line: 56, column: 13)
!2676 = distinct !DILexicalBlock(scope: !2670, file: !264, line: 55, column: 29)
!2677 = !DILocation(line: 56, column: 40, scope: !2675)
!2678 = !DILocation(line: 56, column: 13, scope: !2676)
!2679 = !DILocation(line: 61, column: 1, scope: !2657)
!2680 = distinct !DISubprogram(name: "hal_gpio_init", scope: !264, file: !264, line: 66, type: !2681, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !263, retainedNodes: !2684)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!2683, !2660}
!2683 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_status_t", file: !319, line: 229, baseType: !318)
!2684 = !{!2685}
!2685 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !2680, file: !264, line: 66, type: !2660)
!2686 = !DILocation(line: 0, scope: !2680)
!2687 = !DILocation(line: 68, column: 5, scope: !2680)
!2688 = distinct !DISubprogram(name: "hal_gpio_deinit", scope: !264, file: !264, line: 72, type: !2681, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !263, retainedNodes: !2689)
!2689 = !{!2690}
!2690 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !2688, file: !264, line: 72, type: !2660)
!2691 = !DILocation(line: 0, scope: !2688)
!2692 = !DILocation(line: 74, column: 5, scope: !2688)
!2693 = distinct !DISubprogram(name: "hal_gpio_set_direction", scope: !264, file: !264, line: 79, type: !2694, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !263, retainedNodes: !2696)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!2683, !2660, !360}
!2696 = !{!2697, !2698, !2699, !2700}
!2697 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !2693, file: !264, line: 79, type: !2660)
!2698 = !DILocalVariable(name: "gpio_direction", arg: 2, scope: !2693, file: !264, line: 79, type: !360)
!2699 = !DILocalVariable(name: "no", scope: !2693, file: !264, line: 81, type: !175)
!2700 = !DILocalVariable(name: "remainder", scope: !2693, file: !264, line: 82, type: !175)
!2701 = !DILocation(line: 0, scope: !2693)
!2702 = !DILocation(line: 84, column: 18, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2693, file: !264, line: 84, column: 9)
!2704 = !DILocation(line: 84, column: 9, scope: !2693)
!2705 = !DILocation(line: 89, column: 19, scope: !2693)
!2706 = !DILocation(line: 92, column: 26, scope: !2693)
!2707 = !DILocation(line: 94, column: 24, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2693, file: !264, line: 94, column: 9)
!2709 = !DILocation(line: 0, scope: !2708)
!2710 = !DILocation(line: 94, column: 9, scope: !2693)
!2711 = !DILocation(line: 101, column: 1, scope: !2693)
!2712 = distinct !DISubprogram(name: "hal_gpio_get_direction", scope: !264, file: !264, line: 105, type: !2713, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !263, retainedNodes: !2716)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!2683, !2660, !2715}
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 32)
!2716 = !{!2717, !2718, !2719, !2720, !2721}
!2717 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !2712, file: !264, line: 105, type: !2660)
!2718 = !DILocalVariable(name: "gpio_direction", arg: 2, scope: !2712, file: !264, line: 105, type: !2715)
!2719 = !DILocalVariable(name: "no", scope: !2712, file: !264, line: 107, type: !175)
!2720 = !DILocalVariable(name: "remainder", scope: !2712, file: !264, line: 108, type: !175)
!2721 = !DILocalVariable(name: "temp", scope: !2712, file: !264, line: 109, type: !175)
!2722 = !DILocation(line: 0, scope: !2712)
!2723 = !DILocation(line: 111, column: 18, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2712, file: !264, line: 111, column: 9)
!2725 = !DILocation(line: 111, column: 9, scope: !2712)
!2726 = !DILocation(line: 115, column: 14, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2712, file: !264, line: 115, column: 9)
!2728 = !DILocation(line: 115, column: 9, scope: !2712)
!2729 = !DILocation(line: 120, column: 19, scope: !2712)
!2730 = !DILocation(line: 123, column: 26, scope: !2712)
!2731 = !DILocation(line: 125, column: 12, scope: !2712)
!2732 = !DILocation(line: 125, column: 54, scope: !2712)
!2733 = !DILocation(line: 126, column: 45, scope: !2712)
!2734 = !DILocation(line: 126, column: 17, scope: !2712)
!2735 = !DILocation(line: 127, column: 51, scope: !2712)
!2736 = !DILocation(line: 127, column: 21, scope: !2712)
!2737 = !DILocation(line: 128, column: 5, scope: !2712)
!2738 = !DILocation(line: 130, column: 1, scope: !2712)
!2739 = distinct !DISubprogram(name: "hal_pinmux_set_function", scope: !264, file: !264, line: 134, type: !2740, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !263, retainedNodes: !2743)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!2742, !2660, !378}
!2742 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_pinmux_status_t", file: !319, line: 238, baseType: !329)
!2743 = !{!2744, !2745, !2746, !2747, !2748}
!2744 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !2739, file: !264, line: 134, type: !2660)
!2745 = !DILocalVariable(name: "function_index", arg: 2, scope: !2739, file: !264, line: 134, type: !378)
!2746 = !DILocalVariable(name: "no", scope: !2739, file: !264, line: 136, type: !175)
!2747 = !DILocalVariable(name: "remainder", scope: !2739, file: !264, line: 137, type: !175)
!2748 = !DILocalVariable(name: "irq_status", scope: !2739, file: !264, line: 138, type: !175)
!2749 = !DILocation(line: 0, scope: !2739)
!2750 = !DILocation(line: 140, column: 18, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2739, file: !264, line: 140, column: 9)
!2752 = !DILocation(line: 140, column: 9, scope: !2739)
!2753 = !DILocation(line: 145, column: 24, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2739, file: !264, line: 145, column: 9)
!2755 = !DILocation(line: 145, column: 9, scope: !2739)
!2756 = !DILocation(line: 145, column: 9, scope: !2754)
!2757 = !DILocation(line: 150, column: 19, scope: !2739)
!2758 = !DILocation(line: 156, column: 18, scope: !2739)
!2759 = !DILocation(line: 157, column: 105, scope: !2739)
!2760 = !DILocation(line: 157, column: 91, scope: !2739)
!2761 = !DILocation(line: 157, column: 5, scope: !2739)
!2762 = !DILocation(line: 157, column: 48, scope: !2739)
!2763 = !DILocation(line: 157, column: 62, scope: !2739)
!2764 = !DILocation(line: 158, column: 80, scope: !2739)
!2765 = !DILocation(line: 158, column: 5, scope: !2739)
!2766 = !DILocation(line: 158, column: 48, scope: !2739)
!2767 = !DILocation(line: 158, column: 62, scope: !2739)
!2768 = !DILocation(line: 159, column: 5, scope: !2739)
!2769 = !DILocation(line: 160, column: 5, scope: !2739)
!2770 = !DILocation(line: 162, column: 1, scope: !2739)
!2771 = distinct !DISubprogram(name: "hal_gpio_get_input", scope: !264, file: !264, line: 166, type: !2772, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !263, retainedNodes: !2775)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!2683, !2660, !2774}
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 32)
!2775 = !{!2776, !2777, !2778, !2779, !2780}
!2776 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !2771, file: !264, line: 166, type: !2660)
!2777 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !2771, file: !264, line: 166, type: !2774)
!2778 = !DILocalVariable(name: "no", scope: !2771, file: !264, line: 168, type: !175)
!2779 = !DILocalVariable(name: "remainder", scope: !2771, file: !264, line: 169, type: !175)
!2780 = !DILocalVariable(name: "temp", scope: !2771, file: !264, line: 170, type: !175)
!2781 = !DILocation(line: 0, scope: !2771)
!2782 = !DILocation(line: 172, column: 18, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2771, file: !264, line: 172, column: 9)
!2784 = !DILocation(line: 172, column: 9, scope: !2771)
!2785 = !DILocation(line: 176, column: 14, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2771, file: !264, line: 176, column: 9)
!2787 = !DILocation(line: 176, column: 9, scope: !2771)
!2788 = !DILocation(line: 181, column: 19, scope: !2771)
!2789 = !DILocation(line: 184, column: 26, scope: !2771)
!2790 = !DILocation(line: 186, column: 12, scope: !2771)
!2791 = !DILocation(line: 186, column: 54, scope: !2771)
!2792 = !DILocation(line: 187, column: 45, scope: !2771)
!2793 = !DILocation(line: 187, column: 17, scope: !2771)
!2794 = !DILocation(line: 188, column: 41, scope: !2771)
!2795 = !DILocation(line: 188, column: 16, scope: !2771)
!2796 = !DILocation(line: 189, column: 5, scope: !2771)
!2797 = !DILocation(line: 191, column: 1, scope: !2771)
!2798 = distinct !DISubprogram(name: "hal_gpio_set_output", scope: !264, file: !264, line: 195, type: !2799, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !263, retainedNodes: !2801)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!2683, !2660, !361}
!2801 = !{!2802, !2803, !2804, !2805}
!2802 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !2798, file: !264, line: 195, type: !2660)
!2803 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !2798, file: !264, line: 195, type: !361)
!2804 = !DILocalVariable(name: "no", scope: !2798, file: !264, line: 197, type: !175)
!2805 = !DILocalVariable(name: "remainder", scope: !2798, file: !264, line: 198, type: !175)
!2806 = !DILocation(line: 0, scope: !2798)
!2807 = !DILocation(line: 200, column: 18, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2798, file: !264, line: 200, column: 9)
!2809 = !DILocation(line: 200, column: 9, scope: !2798)
!2810 = !DILocation(line: 205, column: 19, scope: !2798)
!2811 = !DILocation(line: 208, column: 26, scope: !2798)
!2812 = !DILocation(line: 210, column: 9, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2798, file: !264, line: 210, column: 9)
!2814 = !DILocation(line: 0, scope: !2813)
!2815 = !DILocation(line: 210, column: 9, scope: !2798)
!2816 = !DILocation(line: 216, column: 1, scope: !2798)
!2817 = distinct !DISubprogram(name: "hal_gpio_get_output", scope: !264, file: !264, line: 220, type: !2772, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !263, retainedNodes: !2818)
!2818 = !{!2819, !2820, !2821, !2822, !2823}
!2819 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !2817, file: !264, line: 220, type: !2660)
!2820 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !2817, file: !264, line: 220, type: !2774)
!2821 = !DILocalVariable(name: "no", scope: !2817, file: !264, line: 222, type: !175)
!2822 = !DILocalVariable(name: "remainder", scope: !2817, file: !264, line: 223, type: !175)
!2823 = !DILocalVariable(name: "temp", scope: !2817, file: !264, line: 224, type: !175)
!2824 = !DILocation(line: 0, scope: !2817)
!2825 = !DILocation(line: 226, column: 18, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2817, file: !264, line: 226, column: 9)
!2827 = !DILocation(line: 226, column: 9, scope: !2817)
!2828 = !DILocation(line: 230, column: 14, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2817, file: !264, line: 230, column: 9)
!2830 = !DILocation(line: 230, column: 9, scope: !2817)
!2831 = !DILocation(line: 235, column: 19, scope: !2817)
!2832 = !DILocation(line: 238, column: 26, scope: !2817)
!2833 = !DILocation(line: 240, column: 12, scope: !2817)
!2834 = !DILocation(line: 240, column: 55, scope: !2817)
!2835 = !DILocation(line: 241, column: 45, scope: !2817)
!2836 = !DILocation(line: 241, column: 17, scope: !2817)
!2837 = !DILocation(line: 242, column: 41, scope: !2817)
!2838 = !DILocation(line: 242, column: 16, scope: !2817)
!2839 = !DILocation(line: 243, column: 5, scope: !2817)
!2840 = !DILocation(line: 245, column: 1, scope: !2817)
!2841 = distinct !DISubprogram(name: "hal_gpio_toggle_pin", scope: !264, file: !264, line: 249, type: !2681, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !263, retainedNodes: !2842)
!2842 = !{!2843, !2844, !2845, !2846}
!2843 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !2841, file: !264, line: 249, type: !2660)
!2844 = !DILocalVariable(name: "no", scope: !2841, file: !264, line: 251, type: !175)
!2845 = !DILocalVariable(name: "remainder", scope: !2841, file: !264, line: 252, type: !175)
!2846 = !DILocalVariable(name: "temp", scope: !2841, file: !264, line: 253, type: !175)
!2847 = !DILocation(line: 0, scope: !2841)
!2848 = !DILocation(line: 255, column: 18, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2841, file: !264, line: 255, column: 9)
!2850 = !DILocation(line: 255, column: 9, scope: !2841)
!2851 = !DILocation(line: 260, column: 19, scope: !2841)
!2852 = !DILocation(line: 263, column: 26, scope: !2841)
!2853 = !DILocation(line: 265, column: 12, scope: !2841)
!2854 = !DILocation(line: 265, column: 55, scope: !2841)
!2855 = !DILocation(line: 266, column: 45, scope: !2841)
!2856 = !DILocation(line: 266, column: 17, scope: !2841)
!2857 = !DILocation(line: 267, column: 15, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2841, file: !264, line: 267, column: 9)
!2859 = !DILocation(line: 267, column: 9, scope: !2841)
!2860 = !DILocation(line: 0, scope: !2858)
!2861 = !DILocation(line: 273, column: 1, scope: !2841)
!2862 = distinct !DISubprogram(name: "hal_gpio_enable_inversion", scope: !264, file: !264, line: 278, type: !2681, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !263, retainedNodes: !2863)
!2863 = !{!2864, !2865, !2866}
!2864 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !2862, file: !264, line: 278, type: !2660)
!2865 = !DILocalVariable(name: "no", scope: !2862, file: !264, line: 280, type: !175)
!2866 = !DILocalVariable(name: "remainder", scope: !2862, file: !264, line: 281, type: !175)
!2867 = !DILocation(line: 0, scope: !2862)
!2868 = !DILocation(line: 283, column: 18, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2862, file: !264, line: 283, column: 9)
!2870 = !DILocation(line: 283, column: 9, scope: !2862)
!2871 = !DILocation(line: 288, column: 19, scope: !2862)
!2872 = !DILocation(line: 291, column: 26, scope: !2862)
!2873 = !DILocation(line: 293, column: 90, scope: !2862)
!2874 = !DILocation(line: 293, column: 5, scope: !2862)
!2875 = !DILocation(line: 293, column: 48, scope: !2862)
!2876 = !DILocation(line: 293, column: 62, scope: !2862)
!2877 = !DILocation(line: 294, column: 5, scope: !2862)
!2878 = !DILocation(line: 295, column: 1, scope: !2862)
!2879 = distinct !DISubprogram(name: "hal_gpio_disable_inversion", scope: !264, file: !264, line: 299, type: !2681, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !263, retainedNodes: !2880)
!2880 = !{!2881, !2882, !2883}
!2881 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !2879, file: !264, line: 299, type: !2660)
!2882 = !DILocalVariable(name: "no", scope: !2879, file: !264, line: 301, type: !175)
!2883 = !DILocalVariable(name: "remainder", scope: !2879, file: !264, line: 302, type: !175)
!2884 = !DILocation(line: 0, scope: !2879)
!2885 = !DILocation(line: 304, column: 18, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2879, file: !264, line: 304, column: 9)
!2887 = !DILocation(line: 304, column: 9, scope: !2879)
!2888 = !DILocation(line: 309, column: 19, scope: !2879)
!2889 = !DILocation(line: 312, column: 26, scope: !2879)
!2890 = !DILocation(line: 314, column: 90, scope: !2879)
!2891 = !DILocation(line: 314, column: 5, scope: !2879)
!2892 = !DILocation(line: 314, column: 48, scope: !2879)
!2893 = !DILocation(line: 314, column: 62, scope: !2879)
!2894 = !DILocation(line: 315, column: 5, scope: !2879)
!2895 = !DILocation(line: 316, column: 1, scope: !2879)
!2896 = distinct !DISubprogram(name: "hal_gpio_pull_up", scope: !264, file: !264, line: 321, type: !2681, scopeLine: 322, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !263, retainedNodes: !2897)
!2897 = !{!2898, !2899, !2900}
!2898 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !2896, file: !264, line: 321, type: !2660)
!2899 = !DILocalVariable(name: "no", scope: !2896, file: !264, line: 323, type: !175)
!2900 = !DILocalVariable(name: "remainder", scope: !2896, file: !264, line: 324, type: !175)
!2901 = !DILocation(line: 0, scope: !2896)
!2902 = !DILocation(line: 326, column: 19, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2896, file: !264, line: 326, column: 9)
!2904 = !DILocation(line: 326, column: 36, scope: !2903)
!2905 = !DILocation(line: 326, column: 41, scope: !2903)
!2906 = !DILocation(line: 326, column: 9, scope: !2896)
!2907 = !DILocation(line: 331, column: 19, scope: !2896)
!2908 = !DILocation(line: 334, column: 26, scope: !2896)
!2909 = !DILocation(line: 336, column: 94, scope: !2896)
!2910 = !DILocation(line: 336, column: 5, scope: !2896)
!2911 = !DILocation(line: 336, column: 50, scope: !2896)
!2912 = !DILocation(line: 336, column: 66, scope: !2896)
!2913 = !DILocation(line: 337, column: 5, scope: !2896)
!2914 = !DILocation(line: 337, column: 51, scope: !2896)
!2915 = !DILocation(line: 337, column: 68, scope: !2896)
!2916 = !DILocation(line: 338, column: 5, scope: !2896)
!2917 = !DILocation(line: 339, column: 1, scope: !2896)
!2918 = distinct !DISubprogram(name: "hal_gpio_pull_down", scope: !264, file: !264, line: 343, type: !2681, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !263, retainedNodes: !2919)
!2919 = !{!2920, !2921, !2922}
!2920 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !2918, file: !264, line: 343, type: !2660)
!2921 = !DILocalVariable(name: "no", scope: !2918, file: !264, line: 345, type: !175)
!2922 = !DILocalVariable(name: "remainder", scope: !2918, file: !264, line: 346, type: !175)
!2923 = !DILocation(line: 0, scope: !2918)
!2924 = !DILocation(line: 348, column: 19, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2918, file: !264, line: 348, column: 9)
!2926 = !DILocation(line: 348, column: 36, scope: !2925)
!2927 = !DILocation(line: 348, column: 41, scope: !2925)
!2928 = !DILocation(line: 348, column: 9, scope: !2918)
!2929 = !DILocation(line: 353, column: 19, scope: !2918)
!2930 = !DILocation(line: 356, column: 26, scope: !2918)
!2931 = !DILocation(line: 358, column: 94, scope: !2918)
!2932 = !DILocation(line: 358, column: 5, scope: !2918)
!2933 = !DILocation(line: 358, column: 50, scope: !2918)
!2934 = !DILocation(line: 358, column: 66, scope: !2918)
!2935 = !DILocation(line: 359, column: 5, scope: !2918)
!2936 = !DILocation(line: 359, column: 51, scope: !2918)
!2937 = !DILocation(line: 359, column: 68, scope: !2918)
!2938 = !DILocation(line: 360, column: 5, scope: !2918)
!2939 = !DILocation(line: 361, column: 1, scope: !2918)
!2940 = distinct !DISubprogram(name: "hal_gpio_disable_pull", scope: !264, file: !264, line: 365, type: !2681, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !263, retainedNodes: !2941)
!2941 = !{!2942, !2943, !2944}
!2942 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !2940, file: !264, line: 365, type: !2660)
!2943 = !DILocalVariable(name: "no", scope: !2940, file: !264, line: 367, type: !175)
!2944 = !DILocalVariable(name: "remainder", scope: !2940, file: !264, line: 368, type: !175)
!2945 = !DILocation(line: 0, scope: !2940)
!2946 = !DILocation(line: 370, column: 19, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2940, file: !264, line: 370, column: 9)
!2948 = !DILocation(line: 370, column: 36, scope: !2947)
!2949 = !DILocation(line: 370, column: 41, scope: !2947)
!2950 = !DILocation(line: 370, column: 9, scope: !2940)
!2951 = !DILocation(line: 375, column: 19, scope: !2940)
!2952 = !DILocation(line: 378, column: 26, scope: !2940)
!2953 = !DILocation(line: 380, column: 94, scope: !2940)
!2954 = !DILocation(line: 380, column: 5, scope: !2940)
!2955 = !DILocation(line: 380, column: 50, scope: !2940)
!2956 = !DILocation(line: 380, column: 66, scope: !2940)
!2957 = !DILocation(line: 381, column: 5, scope: !2940)
!2958 = !DILocation(line: 382, column: 1, scope: !2940)
!2959 = distinct !DISubprogram(name: "hal_gpio_set_clockout", scope: !264, file: !264, line: 387, type: !2960, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !263, retainedNodes: !2964)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!2683, !2962, !2963}
!2962 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_clock_t", file: !6, line: 423, baseType: !339)
!2963 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_clock_mode_t", file: !6, line: 431, baseType: !348)
!2964 = !{!2965, !2966}
!2965 = !DILocalVariable(name: "gpio_clock_num", arg: 1, scope: !2959, file: !264, line: 387, type: !2962)
!2966 = !DILocalVariable(name: "clock_mode", arg: 2, scope: !2959, file: !264, line: 387, type: !2963)
!2967 = !DILocation(line: 0, scope: !2959)
!2968 = !DILocation(line: 390, column: 24, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2959, file: !264, line: 390, column: 9)
!2970 = !DILocation(line: 390, column: 9, scope: !2959)
!2971 = !DILocation(line: 394, column: 5, scope: !2959)
!2972 = !DILocation(line: 394, column: 62, scope: !2959)
!2973 = !DILocation(line: 394, column: 74, scope: !2959)
!2974 = !DILocation(line: 395, column: 5, scope: !2959)
!2975 = !DILocation(line: 396, column: 1, scope: !2959)
!2976 = distinct !DISubprogram(name: "hal_gpio_set_pupd_register", scope: !264, file: !264, line: 403, type: !2977, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !263, retainedNodes: !2979)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!2683, !2660, !378, !378, !378}
!2979 = !{!2980, !2981, !2982, !2983, !2984, !2985}
!2980 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !2976, file: !264, line: 403, type: !2660)
!2981 = !DILocalVariable(name: "gpio_pupd", arg: 2, scope: !2976, file: !264, line: 403, type: !378)
!2982 = !DILocalVariable(name: "gpio_r0", arg: 3, scope: !2976, file: !264, line: 403, type: !378)
!2983 = !DILocalVariable(name: "gpio_r1", arg: 4, scope: !2976, file: !264, line: 403, type: !378)
!2984 = !DILocalVariable(name: "no", scope: !2976, file: !264, line: 405, type: !175)
!2985 = !DILocalVariable(name: "remainder", scope: !2976, file: !264, line: 406, type: !175)
!2986 = !DILocation(line: 0, scope: !2976)
!2987 = !DILocation(line: 408, column: 19, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2976, file: !264, line: 408, column: 9)
!2989 = !DILocation(line: 408, column: 36, scope: !2988)
!2990 = !DILocation(line: 408, column: 40, scope: !2988)
!2991 = !DILocation(line: 408, column: 9, scope: !2976)
!2992 = !DILocation(line: 413, column: 19, scope: !2976)
!2993 = !DILocation(line: 416, column: 26, scope: !2976)
!2994 = !DILocation(line: 418, column: 9, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2976, file: !264, line: 418, column: 9)
!2996 = !DILocation(line: 0, scope: !2995)
!2997 = !DILocation(line: 418, column: 9, scope: !2976)
!2998 = !DILocation(line: 424, column: 9, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2976, file: !264, line: 424, column: 9)
!3000 = !DILocation(line: 0, scope: !2999)
!3001 = !DILocation(line: 424, column: 9, scope: !2976)
!3002 = !DILocation(line: 430, column: 9, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2976, file: !264, line: 430, column: 9)
!3004 = !DILocation(line: 0, scope: !3003)
!3005 = !DILocation(line: 430, column: 9, scope: !2976)
!3006 = !DILocation(line: 436, column: 1, scope: !2976)
!3007 = distinct !DISubprogram(name: "hal_gpio_set_high_impedance", scope: !264, file: !264, line: 441, type: !2681, scopeLine: 442, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !263, retainedNodes: !3008)
!3008 = !{!3009, !3010, !3011, !3012, !3013, !3014, !3015}
!3009 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3007, file: !264, line: 441, type: !2660)
!3010 = !DILocalVariable(name: "no1", scope: !3007, file: !264, line: 443, type: !175)
!3011 = !DILocalVariable(name: "no2", scope: !3007, file: !264, line: 443, type: !175)
!3012 = !DILocalVariable(name: "no3", scope: !3007, file: !264, line: 443, type: !175)
!3013 = !DILocalVariable(name: "remainder1", scope: !3007, file: !264, line: 444, type: !175)
!3014 = !DILocalVariable(name: "remainder2", scope: !3007, file: !264, line: 444, type: !175)
!3015 = !DILocalVariable(name: "remainder3", scope: !3007, file: !264, line: 444, type: !175)
!3016 = !DILocation(line: 0, scope: !3007)
!3017 = !DILocation(line: 446, column: 18, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3007, file: !264, line: 446, column: 9)
!3019 = !DILocation(line: 446, column: 9, scope: !3007)
!3020 = !DILocation(line: 451, column: 20, scope: !3007)
!3021 = !DILocation(line: 454, column: 27, scope: !3007)
!3022 = !DILocation(line: 457, column: 20, scope: !3007)
!3023 = !DILocation(line: 463, column: 20, scope: !3007)
!3024 = !DILocation(line: 469, column: 107, scope: !3007)
!3025 = !DILocation(line: 469, column: 92, scope: !3007)
!3026 = !DILocation(line: 469, column: 5, scope: !3007)
!3027 = !DILocation(line: 469, column: 49, scope: !3007)
!3028 = !DILocation(line: 469, column: 63, scope: !3007)
!3029 = !DILocation(line: 472, column: 89, scope: !3007)
!3030 = !DILocation(line: 472, column: 5, scope: !3007)
!3031 = !DILocation(line: 472, column: 48, scope: !3007)
!3032 = !DILocation(line: 472, column: 61, scope: !3007)
!3033 = !DILocation(line: 475, column: 5, scope: !3007)
!3034 = !DILocation(line: 475, column: 48, scope: !3007)
!3035 = !DILocation(line: 475, column: 61, scope: !3007)
!3036 = !DILocation(line: 478, column: 9, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3007, file: !264, line: 478, column: 9)
!3038 = !DILocation(line: 0, scope: !3037)
!3039 = !DILocation(line: 478, column: 9, scope: !3007)
!3040 = !DILocation(line: 479, column: 55, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3037, file: !264, line: 478, column: 40)
!3042 = !DILocation(line: 480, column: 5, scope: !3041)
!3043 = !DILocation(line: 483, column: 53, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3037, file: !264, line: 482, column: 10)
!3045 = !DILocation(line: 483, column: 67, scope: !3044)
!3046 = !DILocation(line: 484, column: 9, scope: !3044)
!3047 = !DILocation(line: 484, column: 55, scope: !3044)
!3048 = !DILocation(line: 484, column: 71, scope: !3044)
!3049 = !DILocation(line: 485, column: 9, scope: !3044)
!3050 = !DILocation(line: 485, column: 55, scope: !3044)
!3051 = !DILocation(line: 490, column: 5, scope: !3007)
!3052 = !DILocation(line: 490, column: 48, scope: !3007)
!3053 = !DILocation(line: 490, column: 61, scope: !3007)
!3054 = !DILocation(line: 493, column: 5, scope: !3007)
!3055 = !DILocation(line: 493, column: 47, scope: !3007)
!3056 = !DILocation(line: 493, column: 59, scope: !3007)
!3057 = !DILocation(line: 496, column: 108, scope: !3007)
!3058 = !DILocation(line: 496, column: 93, scope: !3007)
!3059 = !DILocation(line: 496, column: 5, scope: !3007)
!3060 = !DILocation(line: 496, column: 50, scope: !3007)
!3061 = !DILocation(line: 496, column: 65, scope: !3007)
!3062 = !DILocation(line: 498, column: 5, scope: !3007)
!3063 = !DILocation(line: 499, column: 1, scope: !3007)
!3064 = distinct !DISubprogram(name: "hal_gpio_clear_high_impedance", scope: !264, file: !264, line: 502, type: !2681, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !263, retainedNodes: !3065)
!3065 = !{!3066, !3067, !3068, !3069, !3070}
!3066 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3064, file: !264, line: 502, type: !2660)
!3067 = !DILocalVariable(name: "no1", scope: !3064, file: !264, line: 504, type: !175)
!3068 = !DILocalVariable(name: "no2", scope: !3064, file: !264, line: 504, type: !175)
!3069 = !DILocalVariable(name: "remainder1", scope: !3064, file: !264, line: 505, type: !175)
!3070 = !DILocalVariable(name: "remainder2", scope: !3064, file: !264, line: 505, type: !175)
!3071 = !DILocation(line: 0, scope: !3064)
!3072 = !DILocation(line: 507, column: 18, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3064, file: !264, line: 507, column: 9)
!3074 = !DILocation(line: 507, column: 9, scope: !3064)
!3075 = !DILocation(line: 512, column: 20, scope: !3064)
!3076 = !DILocation(line: 515, column: 27, scope: !3064)
!3077 = !DILocation(line: 518, column: 20, scope: !3064)
!3078 = !DILocation(line: 524, column: 107, scope: !3064)
!3079 = !DILocation(line: 524, column: 92, scope: !3064)
!3080 = !DILocation(line: 524, column: 5, scope: !3064)
!3081 = !DILocation(line: 524, column: 49, scope: !3064)
!3082 = !DILocation(line: 524, column: 63, scope: !3064)
!3083 = !DILocation(line: 527, column: 89, scope: !3064)
!3084 = !DILocation(line: 527, column: 5, scope: !3064)
!3085 = !DILocation(line: 527, column: 48, scope: !3064)
!3086 = !DILocation(line: 527, column: 61, scope: !3064)
!3087 = !DILocation(line: 530, column: 9, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3064, file: !264, line: 530, column: 9)
!3089 = !DILocation(line: 0, scope: !3088)
!3090 = !DILocation(line: 530, column: 9, scope: !3064)
!3091 = !DILocation(line: 531, column: 55, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3088, file: !264, line: 530, column: 40)
!3093 = !DILocation(line: 531, column: 71, scope: !3092)
!3094 = !DILocation(line: 532, column: 9, scope: !3092)
!3095 = !DILocation(line: 532, column: 56, scope: !3092)
!3096 = !DILocation(line: 533, column: 5, scope: !3092)
!3097 = !DILocation(line: 536, column: 53, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3088, file: !264, line: 535, column: 10)
!3099 = !DILocation(line: 536, column: 67, scope: !3098)
!3100 = !DILocation(line: 537, column: 9, scope: !3098)
!3101 = !DILocation(line: 537, column: 55, scope: !3098)
!3102 = !DILocation(line: 537, column: 71, scope: !3098)
!3103 = !DILocation(line: 538, column: 9, scope: !3098)
!3104 = !DILocation(line: 538, column: 55, scope: !3098)
!3105 = !DILocation(line: 543, column: 5, scope: !3064)
!3106 = !DILocation(line: 543, column: 48, scope: !3064)
!3107 = !DILocation(line: 543, column: 61, scope: !3064)
!3108 = !DILocation(line: 546, column: 5, scope: !3064)
!3109 = !DILocation(line: 546, column: 47, scope: !3064)
!3110 = !DILocation(line: 546, column: 59, scope: !3064)
!3111 = !DILocation(line: 549, column: 5, scope: !3064)
!3112 = !DILocation(line: 550, column: 1, scope: !3064)
!3113 = distinct !DISubprogram(name: "hal_gpio_set_driving_current", scope: !264, file: !264, line: 554, type: !3114, scopeLine: 555, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !263, retainedNodes: !3116)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!2683, !2660, !362}
!3116 = !{!3117, !3118, !3119, !3120}
!3117 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3113, file: !264, line: 554, type: !2660)
!3118 = !DILocalVariable(name: "driving", arg: 2, scope: !3113, file: !264, line: 554, type: !362)
!3119 = !DILocalVariable(name: "no", scope: !3113, file: !264, line: 556, type: !175)
!3120 = !DILocalVariable(name: "remainder", scope: !3113, file: !264, line: 557, type: !175)
!3121 = !DILocation(line: 0, scope: !3113)
!3122 = !DILocation(line: 559, column: 19, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3113, file: !264, line: 559, column: 9)
!3124 = !DILocation(line: 559, column: 9, scope: !3113)
!3125 = !DILocation(line: 564, column: 19, scope: !3113)
!3126 = !DILocation(line: 569, column: 102, scope: !3113)
!3127 = !DILocation(line: 569, column: 88, scope: !3113)
!3128 = !DILocation(line: 569, column: 5, scope: !3113)
!3129 = !DILocation(line: 569, column: 47, scope: !3113)
!3130 = !DILocation(line: 569, column: 60, scope: !3113)
!3131 = !DILocation(line: 570, column: 71, scope: !3113)
!3132 = !DILocation(line: 570, column: 5, scope: !3113)
!3133 = !DILocation(line: 570, column: 47, scope: !3113)
!3134 = !DILocation(line: 570, column: 60, scope: !3113)
!3135 = !DILocation(line: 571, column: 5, scope: !3113)
!3136 = !DILocation(line: 572, column: 1, scope: !3113)
!3137 = distinct !DISubprogram(name: "hal_gpio_get_driving_current", scope: !264, file: !264, line: 575, type: !3138, scopeLine: 576, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !263, retainedNodes: !3141)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!2683, !2660, !3140}
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 32)
!3141 = !{!3142, !3143, !3144, !3145, !3146}
!3142 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3137, file: !264, line: 575, type: !2660)
!3143 = !DILocalVariable(name: "driving", arg: 2, scope: !3137, file: !264, line: 575, type: !3140)
!3144 = !DILocalVariable(name: "no", scope: !3137, file: !264, line: 577, type: !175)
!3145 = !DILocalVariable(name: "remainder", scope: !3137, file: !264, line: 578, type: !175)
!3146 = !DILocalVariable(name: "temp", scope: !3137, file: !264, line: 579, type: !175)
!3147 = !DILocation(line: 0, scope: !3137)
!3148 = !DILocation(line: 581, column: 19, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3137, file: !264, line: 581, column: 9)
!3150 = !DILocation(line: 581, column: 9, scope: !3137)
!3151 = !DILocation(line: 585, column: 14, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3137, file: !264, line: 585, column: 9)
!3153 = !DILocation(line: 585, column: 9, scope: !3137)
!3154 = !DILocation(line: 590, column: 19, scope: !3137)
!3155 = !DILocation(line: 595, column: 12, scope: !3137)
!3156 = !DILocation(line: 595, column: 54, scope: !3137)
!3157 = !DILocation(line: 596, column: 59, scope: !3137)
!3158 = !DILocation(line: 596, column: 45, scope: !3137)
!3159 = !DILocation(line: 596, column: 17, scope: !3137)
!3160 = !DILocation(line: 597, column: 18, scope: !3137)
!3161 = !DILocation(line: 600, column: 56, scope: !3137)
!3162 = !DILocation(line: 600, column: 14, scope: !3137)
!3163 = !DILocation(line: 602, column: 5, scope: !3137)
!3164 = !DILocation(line: 603, column: 1, scope: !3137)
!3165 = distinct !DISubprogram(name: "uart_receive_handler", scope: !547, file: !547, line: 146, type: !3166, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !546, retainedNodes: !3168)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{null, !653, !211}
!3168 = !{!3169, !3170, !3171, !3173, !3174, !3175, !3176, !3232}
!3169 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3165, file: !547, line: 146, type: !653)
!3170 = !DILocalVariable(name: "is_timeout", arg: 2, scope: !3165, file: !547, line: 146, type: !211)
!3171 = !DILocalVariable(name: "channel", scope: !3165, file: !547, line: 148, type: !3172)
!3172 = !DIDerivedType(tag: DW_TAG_typedef, name: "vdma_channel_t", file: !557, line: 203, baseType: !556)
!3173 = !DILocalVariable(name: "avail_bytes", scope: !3165, file: !547, line: 149, type: !175)
!3174 = !DILocalVariable(name: "callback", scope: !3165, file: !547, line: 150, type: !662)
!3175 = !DILocalVariable(name: "arg", scope: !3165, file: !547, line: 151, type: !194)
!3176 = !DILocalVariable(name: "uartx", scope: !3165, file: !547, line: 152, type: !3177)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 32)
!3178 = !DIDerivedType(tag: DW_TAG_typedef, name: "UART_REGISTER_T", file: !78, line: 588, baseType: !3179)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 542, size: 800, elements: !3180)
!3180 = !{!3181, !3187, !3192, !3198, !3199, !3204, !3209, !3210, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "RBR_THR_DLL", scope: !3179, file: !78, line: 547, baseType: !3182, size: 32)
!3182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3179, file: !78, line: 543, size: 32, elements: !3183)
!3183 = !{!3184, !3185, !3186}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "RBR", scope: !3182, file: !78, line: 544, baseType: !188, size: 32)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "THR", scope: !3182, file: !78, line: 545, baseType: !184, size: 32)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "DLL", scope: !3182, file: !78, line: 546, baseType: !184, size: 32)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "IER_DLM", scope: !3179, file: !78, line: 551, baseType: !3188, size: 32, offset: 32)
!3188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3179, file: !78, line: 548, size: 32, elements: !3189)
!3189 = !{!3190, !3191}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "IER", scope: !3188, file: !78, line: 549, baseType: !184, size: 32)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "DLM", scope: !3188, file: !78, line: 550, baseType: !184, size: 32)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "IIR_FCR_EFR", scope: !3179, file: !78, line: 556, baseType: !3193, size: 32, offset: 64)
!3193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3179, file: !78, line: 552, size: 32, elements: !3194)
!3194 = !{!3195, !3196, !3197}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "IIR", scope: !3193, file: !78, line: 553, baseType: !188, size: 32)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "FCR", scope: !3193, file: !78, line: 554, baseType: !184, size: 32)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "EFR", scope: !3193, file: !78, line: 555, baseType: !184, size: 32)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "LCR", scope: !3179, file: !78, line: 557, baseType: !184, size: 32, offset: 96)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "MCR_XON1", scope: !3179, file: !78, line: 561, baseType: !3200, size: 32, offset: 128)
!3200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3179, file: !78, line: 558, size: 32, elements: !3201)
!3201 = !{!3202, !3203}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "MCR", scope: !3200, file: !78, line: 559, baseType: !184, size: 32)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "XON1", scope: !3200, file: !78, line: 560, baseType: !184, size: 32)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "LSR_XON2", scope: !3179, file: !78, line: 565, baseType: !3205, size: 32, offset: 160)
!3205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3179, file: !78, line: 562, size: 32, elements: !3206)
!3206 = !{!3207, !3208}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "LSR", scope: !3205, file: !78, line: 563, baseType: !188, size: 32)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "XON2", scope: !3205, file: !78, line: 564, baseType: !184, size: 32)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "XOFF1", scope: !3179, file: !78, line: 566, baseType: !184, size: 32, offset: 192)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "SCR_XOFF2", scope: !3179, file: !78, line: 570, baseType: !3211, size: 32, offset: 224)
!3211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3179, file: !78, line: 567, size: 32, elements: !3212)
!3212 = !{!3213, !3214}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !3211, file: !78, line: 568, baseType: !184, size: 32)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "XOFF2", scope: !3211, file: !78, line: 569, baseType: !184, size: 32)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "AUTOBAUD_EN", scope: !3179, file: !78, line: 571, baseType: !184, size: 32, offset: 256)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "HIGHSPEED", scope: !3179, file: !78, line: 572, baseType: !184, size: 32, offset: 288)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "SAMPLE_COUNT", scope: !3179, file: !78, line: 573, baseType: !184, size: 32, offset: 320)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "SAMPLE_POINT", scope: !3179, file: !78, line: 574, baseType: !184, size: 32, offset: 352)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "AUTOBAUD_REG", scope: !3179, file: !78, line: 575, baseType: !188, size: 32, offset: 384)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "RATEFIX_AD", scope: !3179, file: !78, line: 576, baseType: !184, size: 32, offset: 416)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "AUTOBAUDSAMPLE", scope: !3179, file: !78, line: 577, baseType: !184, size: 32, offset: 448)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "GUARD", scope: !3179, file: !78, line: 578, baseType: !184, size: 32, offset: 480)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "ESCAPE_DAT", scope: !3179, file: !78, line: 579, baseType: !184, size: 32, offset: 512)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "ESCAPE_EN", scope: !3179, file: !78, line: 580, baseType: !184, size: 32, offset: 544)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "SLEEP_EN", scope: !3179, file: !78, line: 581, baseType: !184, size: 32, offset: 576)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "DMA_EN", scope: !3179, file: !78, line: 582, baseType: !184, size: 32, offset: 608)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "RXTRI_AD", scope: !3179, file: !78, line: 583, baseType: !184, size: 32, offset: 640)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "FRACDIV_L", scope: !3179, file: !78, line: 584, baseType: !184, size: 32, offset: 672)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "FRACDIV_M", scope: !3179, file: !78, line: 585, baseType: !184, size: 32, offset: 704)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "FCR_RD", scope: !3179, file: !78, line: 586, baseType: !188, size: 32, offset: 736)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "TX_ACTIVE_EN", scope: !3179, file: !78, line: 587, baseType: !184, size: 32, offset: 768)
!3232 = !DILocalVariable(name: "status", scope: !3165, file: !547, line: 153, type: !3233)
!3233 = !DIDerivedType(tag: DW_TAG_typedef, name: "vdma_status_t", file: !557, line: 211, baseType: !577)
!3234 = !DILocation(line: 0, scope: !3165)
!3235 = !DILocation(line: 149, column: 5, scope: !3165)
!3236 = !DILocation(line: 155, column: 9, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3165, file: !547, line: 155, column: 9)
!3238 = !DILocation(line: 155, column: 36, scope: !3237)
!3239 = !DILocation(line: 155, column: 9, scope: !3165)
!3240 = !DILocation(line: 156, column: 9, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3237, file: !547, line: 155, column: 70)
!3242 = !DILocation(line: 160, column: 13, scope: !3165)
!3243 = !DILocation(line: 161, column: 15, scope: !3165)
!3244 = !DILocation(line: 163, column: 9, scope: !3165)
!3245 = !DILocation(line: 164, column: 9, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3247, file: !547, line: 163, column: 29)
!3247 = distinct !DILexicalBlock(scope: !3165, file: !547, line: 163, column: 9)
!3248 = !DILocation(line: 165, column: 5, scope: !3246)
!3249 = !DILocation(line: 167, column: 14, scope: !3165)
!3250 = !DILocation(line: 168, column: 16, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3165, file: !547, line: 168, column: 9)
!3252 = !DILocation(line: 168, column: 9, scope: !3165)
!3253 = !DILocation(line: 169, column: 9, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3251, file: !547, line: 168, column: 28)
!3255 = !DILocation(line: 172, column: 9, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3165, file: !547, line: 172, column: 9)
!3257 = !DILocation(line: 172, column: 21, scope: !3256)
!3258 = !DILocation(line: 172, column: 9, scope: !3165)
!3259 = !DILocation(line: 176, column: 43, scope: !3165)
!3260 = !DILocation(line: 178, column: 18, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3165, file: !547, line: 178, column: 9)
!3262 = !DILocation(line: 178, column: 9, scope: !3165)
!3263 = !DILocation(line: 179, column: 9, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3261, file: !547, line: 178, column: 27)
!3265 = !DILocation(line: 177, column: 38, scope: !3165)
!3266 = !DILocation(line: 183, column: 5, scope: !3165)
!3267 = !DILocation(line: 184, column: 5, scope: !3165)
!3268 = !DILocation(line: 185, column: 5, scope: !3165)
!3269 = !DILocation(line: 187, column: 14, scope: !3165)
!3270 = !DILocation(line: 188, column: 16, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3165, file: !547, line: 188, column: 9)
!3272 = !DILocation(line: 188, column: 9, scope: !3165)
!3273 = !DILocation(line: 189, column: 9, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3271, file: !547, line: 188, column: 28)
!3275 = !DILocation(line: 192, column: 9, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3165, file: !547, line: 192, column: 9)
!3277 = !DILocation(line: 192, column: 53, scope: !3276)
!3278 = !DILocation(line: 192, column: 21, scope: !3276)
!3279 = !DILocation(line: 192, column: 9, scope: !3165)
!3280 = !DILocation(line: 193, column: 18, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3276, file: !547, line: 192, column: 83)
!3282 = !DILocation(line: 194, column: 20, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3281, file: !547, line: 194, column: 13)
!3284 = !DILocation(line: 194, column: 13, scope: !3281)
!3285 = !DILocation(line: 195, column: 13, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3283, file: !547, line: 194, column: 32)
!3287 = !DILocation(line: 199, column: 1, scope: !3165)
!3288 = distinct !DISubprogram(name: "uart_send_handler", scope: !547, file: !547, line: 210, type: !3166, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !546, retainedNodes: !3289)
!3289 = !{!3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297}
!3290 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3288, file: !547, line: 210, type: !653)
!3291 = !DILocalVariable(name: "is_send_complete_trigger", arg: 2, scope: !3288, file: !547, line: 210, type: !211)
!3292 = !DILocalVariable(name: "channel", scope: !3288, file: !547, line: 212, type: !3172)
!3293 = !DILocalVariable(name: "status", scope: !3288, file: !547, line: 213, type: !3233)
!3294 = !DILocalVariable(name: "compare_space", scope: !3288, file: !547, line: 214, type: !175)
!3295 = !DILocalVariable(name: "avail_space", scope: !3288, file: !547, line: 214, type: !175)
!3296 = !DILocalVariable(name: "callback", scope: !3288, file: !547, line: 215, type: !662)
!3297 = !DILocalVariable(name: "arg", scope: !3288, file: !547, line: 216, type: !194)
!3298 = !DILocation(line: 0, scope: !3288)
!3299 = !DILocation(line: 214, column: 5, scope: !3288)
!3300 = !DILocation(line: 221, column: 9, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3288, file: !547, line: 221, column: 9)
!3302 = !DILocation(line: 221, column: 36, scope: !3301)
!3303 = !DILocation(line: 221, column: 9, scope: !3288)
!3304 = !DILocation(line: 222, column: 9, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3301, file: !547, line: 221, column: 70)
!3306 = !DILocation(line: 226, column: 15, scope: !3288)
!3307 = !DILocation(line: 228, column: 9, scope: !3288)
!3308 = !DILocation(line: 253, column: 47, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3310, file: !547, line: 252, column: 12)
!3310 = distinct !DILexicalBlock(scope: !3288, file: !547, line: 228, column: 9)
!3311 = !DILocation(line: 255, column: 22, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3309, file: !547, line: 255, column: 13)
!3313 = !DILocation(line: 255, column: 13, scope: !3309)
!3314 = !DILocation(line: 256, column: 13, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3312, file: !547, line: 255, column: 31)
!3316 = !DILocation(line: 254, column: 42, scope: !3309)
!3317 = !DILocation(line: 260, column: 9, scope: !3309)
!3318 = !DILocation(line: 261, column: 9, scope: !3309)
!3319 = !DILocation(line: 262, column: 9, scope: !3309)
!3320 = !DILocation(line: 264, column: 18, scope: !3309)
!3321 = !DILocation(line: 265, column: 20, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3309, file: !547, line: 265, column: 13)
!3323 = !DILocation(line: 265, column: 13, scope: !3309)
!3324 = !DILocation(line: 266, column: 13, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3322, file: !547, line: 265, column: 32)
!3326 = !DILocation(line: 269, column: 54, scope: !3309)
!3327 = !DILocation(line: 270, column: 56, scope: !3309)
!3328 = !DILocation(line: 270, column: 25, scope: !3309)
!3329 = !DILocation(line: 271, column: 13, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3309, file: !547, line: 271, column: 13)
!3331 = !DILocation(line: 271, column: 25, scope: !3330)
!3332 = !DILocation(line: 271, column: 13, scope: !3309)
!3333 = !DILocation(line: 272, column: 22, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3330, file: !547, line: 271, column: 43)
!3335 = !DILocation(line: 273, column: 24, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3334, file: !547, line: 273, column: 17)
!3337 = !DILocation(line: 273, column: 17, scope: !3334)
!3338 = !DILocation(line: 274, column: 17, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3336, file: !547, line: 273, column: 36)
!3340 = !DILocation(line: 279, column: 1, scope: !3288)
!3341 = distinct !DISubprogram(name: "uart_error_handler", scope: !547, file: !547, line: 282, type: !3342, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !546, retainedNodes: !3344)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{null, !653}
!3344 = !{!3345, !3346, !3347, !3348}
!3345 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3341, file: !547, line: 282, type: !653)
!3346 = !DILocalVariable(name: "uartx", scope: !3341, file: !547, line: 284, type: !3177)
!3347 = !DILocalVariable(name: "callback", scope: !3341, file: !547, line: 285, type: !662)
!3348 = !DILocalVariable(name: "arg", scope: !3341, file: !547, line: 286, type: !194)
!3349 = !DILocation(line: 0, scope: !3341)
!3350 = !DILocation(line: 288, column: 13, scope: !3341)
!3351 = !DILocation(line: 290, column: 10, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3341, file: !547, line: 290, column: 9)
!3353 = !DILocation(line: 290, column: 9, scope: !3341)
!3354 = !DILocation(line: 291, column: 9, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3352, file: !547, line: 290, column: 36)
!3356 = !DILocation(line: 292, column: 9, scope: !3355)
!3357 = !DILocation(line: 293, column: 47, scope: !3355)
!3358 = !DILocation(line: 295, column: 22, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3355, file: !547, line: 295, column: 13)
!3360 = !DILocation(line: 295, column: 13, scope: !3355)
!3361 = !DILocation(line: 296, column: 13, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3359, file: !547, line: 295, column: 31)
!3363 = !DILocation(line: 294, column: 42, scope: !3355)
!3364 = !DILocation(line: 299, column: 9, scope: !3355)
!3365 = !DILocation(line: 300, column: 5, scope: !3355)
!3366 = !DILocation(line: 301, column: 1, scope: !3341)
!3367 = distinct !DISubprogram(name: "hal_uart_set_baudrate", scope: !547, file: !547, line: 416, type: !3368, scopeLine: 417, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !546, retainedNodes: !3372)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!3370, !653, !3371}
!3370 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_status_t", file: !572, line: 351, baseType: !588)
!3371 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_baudrate_t", file: !572, line: 317, baseType: !595)
!3372 = !{!3373, !3374, !3375, !3376, !3377}
!3373 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3367, file: !547, line: 416, type: !653)
!3374 = !DILocalVariable(name: "baudrate", arg: 2, scope: !3367, file: !547, line: 416, type: !3371)
!3375 = !DILocalVariable(name: "actual_baudrate", scope: !3367, file: !547, line: 418, type: !175)
!3376 = !DILocalVariable(name: "irq_status", scope: !3367, file: !547, line: 418, type: !175)
!3377 = !DILocalVariable(name: "uartx", scope: !3367, file: !547, line: 419, type: !3177)
!3378 = !DILocation(line: 0, scope: !3367)
!3379 = !DILocation(line: 421, column: 11, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3367, file: !547, line: 421, column: 9)
!3381 = !DILocation(line: 421, column: 42, scope: !3380)
!3382 = !DILocation(line: 422, column: 11, scope: !3380)
!3383 = !DILocation(line: 421, column: 9, scope: !3367)
!3384 = !DILocation(line: 426, column: 9, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3367, file: !547, line: 426, column: 9)
!3386 = !DILocation(line: 426, column: 36, scope: !3385)
!3387 = !DILocation(line: 426, column: 9, scope: !3367)
!3388 = !DILocation(line: 430, column: 18, scope: !3367)
!3389 = !DILocation(line: 434, column: 5, scope: !3367)
!3390 = !DILocation(line: 436, column: 13, scope: !3367)
!3391 = !DILocation(line: 437, column: 23, scope: !3367)
!3392 = !DILocation(line: 439, column: 5, scope: !3367)
!3393 = !DILocation(line: 441, column: 5, scope: !3367)
!3394 = !DILocation(line: 442, column: 1, scope: !3367)
!3395 = distinct !DISubprogram(name: "uart_port_is_valid", scope: !547, file: !547, line: 120, type: !3396, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !546, retainedNodes: !3398)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!211, !653}
!3398 = !{!3399}
!3399 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3395, file: !547, line: 120, type: !653)
!3400 = !DILocation(line: 0, scope: !3395)
!3401 = !DILocation(line: 122, column: 23, scope: !3395)
!3402 = !DILocation(line: 122, column: 5, scope: !3395)
!3403 = distinct !DISubprogram(name: "uart_baudrate_is_valid", scope: !547, file: !547, line: 125, type: !3404, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !546, retainedNodes: !3406)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{!211, !3371}
!3406 = !{!3407}
!3407 = !DILocalVariable(name: "baudrate", arg: 1, scope: !3403, file: !547, line: 125, type: !3371)
!3408 = !DILocation(line: 0, scope: !3403)
!3409 = !DILocation(line: 127, column: 22, scope: !3403)
!3410 = !DILocation(line: 127, column: 5, scope: !3403)
!3411 = distinct !DISubprogram(name: "hal_uart_set_format", scope: !547, file: !547, line: 444, type: !3412, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !546, retainedNodes: !3426)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!3370, !653, !3414}
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 32)
!3415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3416)
!3416 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !572, line: 378, baseType: !3417)
!3417 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !572, line: 373, size: 128, elements: !3418)
!3418 = !{!3419, !3420, !3422, !3424}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !3417, file: !572, line: 374, baseType: !3371, size: 32)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !3417, file: !572, line: 375, baseType: !3421, size: 32, offset: 32)
!3421 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_word_length_t", file: !572, line: 326, baseType: !611)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !3417, file: !572, line: 376, baseType: !3423, size: 32, offset: 64)
!3423 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_stop_bit_t", file: !572, line: 333, baseType: !617)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !3417, file: !572, line: 377, baseType: !3425, size: 32, offset: 96)
!3425 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_parity_t", file: !572, line: 341, baseType: !621)
!3426 = !{!3427, !3428, !3429, !3430}
!3427 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3411, file: !547, line: 444, type: !653)
!3428 = !DILocalVariable(name: "config", arg: 2, scope: !3411, file: !547, line: 445, type: !3414)
!3429 = !DILocalVariable(name: "irq_status", scope: !3411, file: !547, line: 447, type: !175)
!3430 = !DILocalVariable(name: "uartx", scope: !3411, file: !547, line: 448, type: !3177)
!3431 = !DILocation(line: 0, scope: !3411)
!3432 = !DILocation(line: 450, column: 11, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3411, file: !547, line: 450, column: 9)
!3434 = !DILocation(line: 450, column: 42, scope: !3433)
!3435 = !DILocation(line: 451, column: 11, scope: !3433)
!3436 = !DILocation(line: 450, column: 9, scope: !3411)
!3437 = !DILocation(line: 455, column: 9, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3411, file: !547, line: 455, column: 9)
!3439 = !DILocation(line: 455, column: 36, scope: !3438)
!3440 = !DILocation(line: 455, column: 9, scope: !3411)
!3441 = !DILocation(line: 459, column: 18, scope: !3411)
!3442 = !DILocation(line: 466, column: 5, scope: !3411)
!3443 = !DILocation(line: 468, column: 13, scope: !3411)
!3444 = !DILocation(line: 470, column: 46, scope: !3411)
!3445 = !DILocation(line: 470, column: 5, scope: !3411)
!3446 = !DILocation(line: 471, column: 36, scope: !3411)
!3447 = !DILocation(line: 471, column: 57, scope: !3411)
!3448 = !DILocation(line: 471, column: 75, scope: !3411)
!3449 = !DILocation(line: 471, column: 5, scope: !3411)
!3450 = !DILocation(line: 473, column: 5, scope: !3411)
!3451 = !DILocation(line: 474, column: 1, scope: !3411)
!3452 = distinct !DISubprogram(name: "uart_config_is_valid", scope: !547, file: !547, line: 130, type: !3453, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !546, retainedNodes: !3455)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!211, !3414}
!3455 = !{!3456}
!3456 = !DILocalVariable(name: "config", arg: 1, scope: !3452, file: !547, line: 130, type: !3414)
!3457 = !DILocation(line: 0, scope: !3452)
!3458 = !DILocation(line: 132, column: 22, scope: !3452)
!3459 = !DILocation(line: 132, column: 31, scope: !3452)
!3460 = !DILocation(line: 132, column: 56, scope: !3452)
!3461 = !DILocation(line: 133, column: 22, scope: !3452)
!3462 = !DILocation(line: 133, column: 34, scope: !3452)
!3463 = !DILocation(line: 133, column: 61, scope: !3452)
!3464 = !DILocation(line: 134, column: 22, scope: !3452)
!3465 = !DILocation(line: 134, column: 31, scope: !3452)
!3466 = !DILocation(line: 134, column: 55, scope: !3452)
!3467 = !DILocation(line: 135, column: 22, scope: !3452)
!3468 = !DILocation(line: 135, column: 29, scope: !3452)
!3469 = !DILocation(line: 132, column: 5, scope: !3452)
!3470 = distinct !DISubprogram(name: "hal_uart_init", scope: !547, file: !547, line: 476, type: !3471, scopeLine: 477, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !546, retainedNodes: !3474)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!3370, !653, !3473}
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 32)
!3474 = !{!3475, !3476, !3477, !3478, !3479, !3480, !3481}
!3475 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3470, file: !547, line: 476, type: !653)
!3476 = !DILocalVariable(name: "uart_config", arg: 2, scope: !3470, file: !547, line: 476, type: !3473)
!3477 = !DILocalVariable(name: "uartx", scope: !3470, file: !547, line: 478, type: !3177)
!3478 = !DILocalVariable(name: "i", scope: !3470, file: !547, line: 479, type: !175)
!3479 = !DILocalVariable(name: "actual_baudrate", scope: !3470, file: !547, line: 479, type: !175)
!3480 = !DILocalVariable(name: "irq_status", scope: !3470, file: !547, line: 479, type: !175)
!3481 = !DILocalVariable(name: "status", scope: !3470, file: !547, line: 480, type: !3482)
!3482 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_clock_status_t", file: !627, line: 106, baseType: !626)
!3483 = !DILocation(line: 0, scope: !3470)
!3484 = !DILocation(line: 482, column: 11, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3470, file: !547, line: 482, column: 9)
!3486 = !DILocation(line: 482, column: 42, scope: !3485)
!3487 = !DILocation(line: 483, column: 11, scope: !3485)
!3488 = !DILocation(line: 482, column: 9, scope: !3470)
!3489 = !DILocation(line: 487, column: 18, scope: !3470)
!3490 = !DILocation(line: 488, column: 9, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3470, file: !547, line: 488, column: 9)
!3492 = !DILocation(line: 488, column: 36, scope: !3491)
!3493 = !DILocation(line: 488, column: 9, scope: !3470)
!3494 = !DILocation(line: 489, column: 9, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3491, file: !547, line: 488, column: 68)
!3496 = !DILocation(line: 490, column: 9, scope: !3495)
!3497 = !DILocation(line: 502, column: 9, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3470, file: !547, line: 502, column: 9)
!3499 = !DILocation(line: 502, column: 9, scope: !3470)
!3500 = !DILocation(line: 504, column: 13, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3502, file: !547, line: 503, column: 44)
!3502 = distinct !DILexicalBlock(scope: !3503, file: !547, line: 503, column: 9)
!3503 = distinct !DILexicalBlock(scope: !3504, file: !547, line: 503, column: 9)
!3504 = distinct !DILexicalBlock(scope: !3498, file: !547, line: 502, column: 50)
!3505 = !DILocation(line: 504, column: 32, scope: !3501)
!3506 = !DILocation(line: 510, column: 32, scope: !3501)
!3507 = !DILocation(line: 510, column: 36, scope: !3501)
!3508 = !DILocation(line: 511, column: 32, scope: !3501)
!3509 = !DILocation(line: 511, column: 37, scope: !3501)
!3510 = !DILocation(line: 503, column: 40, scope: !3502)
!3511 = !DILocation(line: 503, column: 23, scope: !3502)
!3512 = !DILocation(line: 503, column: 9, scope: !3503)
!3513 = distinct !{!3513, !3512, !3514}
!3514 = !DILocation(line: 512, column: 9, scope: !3503)
!3515 = !DILocation(line: 513, column: 40, scope: !3504)
!3516 = !DILocation(line: 514, column: 5, scope: !3504)
!3517 = !DILocation(line: 521, column: 32, scope: !3470)
!3518 = !DILocation(line: 522, column: 5, scope: !3470)
!3519 = !DILocation(line: 524, column: 31, scope: !3470)
!3520 = !DILocation(line: 524, column: 14, scope: !3470)
!3521 = !DILocation(line: 525, column: 16, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3470, file: !547, line: 525, column: 9)
!3523 = !DILocation(line: 525, column: 9, scope: !3470)
!3524 = !DILocation(line: 526, column: 9, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3522, file: !547, line: 525, column: 40)
!3526 = !DILocation(line: 530, column: 13, scope: !3470)
!3527 = !DILocation(line: 532, column: 5, scope: !3470)
!3528 = !DILocation(line: 533, column: 56, scope: !3470)
!3529 = !DILocation(line: 533, column: 23, scope: !3470)
!3530 = !DILocation(line: 534, column: 5, scope: !3470)
!3531 = !DILocation(line: 535, column: 41, scope: !3470)
!3532 = !DILocation(line: 535, column: 67, scope: !3470)
!3533 = !DILocation(line: 535, column: 90, scope: !3470)
!3534 = !DILocation(line: 535, column: 5, scope: !3470)
!3535 = !DILocation(line: 536, column: 5, scope: !3470)
!3536 = !DILocation(line: 541, column: 5, scope: !3470)
!3537 = !DILocation(line: 542, column: 1, scope: !3470)
!3538 = distinct !DISubprogram(name: "hal_uart_deinit", scope: !547, file: !547, line: 544, type: !3539, scopeLine: 545, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !546, retainedNodes: !3541)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!3370, !653}
!3541 = !{!3542, !3543, !3544, !3545, !3546, !3547, !3548}
!3542 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3538, file: !547, line: 544, type: !653)
!3543 = !DILocalVariable(name: "uartx", scope: !3538, file: !547, line: 546, type: !3177)
!3544 = !DILocalVariable(name: "tx_dma_channel", scope: !3538, file: !547, line: 547, type: !3172)
!3545 = !DILocalVariable(name: "rx_dma_channel", scope: !3538, file: !547, line: 547, type: !3172)
!3546 = !DILocalVariable(name: "irq_status", scope: !3538, file: !547, line: 548, type: !175)
!3547 = !DILocalVariable(name: "status", scope: !3538, file: !547, line: 549, type: !3233)
!3548 = !DILocalVariable(name: "clock_status", scope: !3538, file: !547, line: 550, type: !3482)
!3549 = !DILocation(line: 0, scope: !3538)
!3550 = !DILocation(line: 552, column: 10, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3538, file: !547, line: 552, column: 9)
!3552 = !DILocation(line: 552, column: 9, scope: !3538)
!3553 = !DILocation(line: 556, column: 18, scope: !3538)
!3554 = !DILocation(line: 557, column: 9, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3538, file: !547, line: 557, column: 9)
!3556 = !DILocation(line: 557, column: 36, scope: !3555)
!3557 = !DILocation(line: 557, column: 9, scope: !3538)
!3558 = !DILocation(line: 562, column: 13, scope: !3538)
!3559 = !DILocation(line: 565, column: 5, scope: !3538)
!3560 = !DILocation(line: 568, column: 9, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3538, file: !547, line: 568, column: 9)
!3562 = !DILocation(line: 568, column: 36, scope: !3561)
!3563 = !DILocation(line: 568, column: 9, scope: !3538)
!3564 = !DILocation(line: 569, column: 26, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3561, file: !547, line: 568, column: 70)
!3566 = !DILocation(line: 570, column: 26, scope: !3565)
!3567 = !DILocation(line: 572, column: 18, scope: !3565)
!3568 = !DILocation(line: 573, column: 20, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3565, file: !547, line: 573, column: 13)
!3570 = !DILocation(line: 573, column: 13, scope: !3565)
!3571 = !DILocation(line: 574, column: 13, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3569, file: !547, line: 573, column: 32)
!3573 = !DILocation(line: 575, column: 13, scope: !3572)
!3574 = !DILocation(line: 578, column: 18, scope: !3565)
!3575 = !DILocation(line: 579, column: 20, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3565, file: !547, line: 579, column: 13)
!3577 = !DILocation(line: 579, column: 13, scope: !3565)
!3578 = !DILocation(line: 580, column: 13, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3576, file: !547, line: 579, column: 32)
!3580 = !DILocation(line: 581, column: 13, scope: !3579)
!3581 = !DILocation(line: 584, column: 18, scope: !3565)
!3582 = !DILocation(line: 585, column: 20, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3565, file: !547, line: 585, column: 13)
!3584 = !DILocation(line: 585, column: 13, scope: !3565)
!3585 = !DILocation(line: 586, column: 13, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3583, file: !547, line: 585, column: 32)
!3587 = !DILocation(line: 587, column: 13, scope: !3586)
!3588 = !DILocation(line: 590, column: 18, scope: !3565)
!3589 = !DILocation(line: 591, column: 20, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3565, file: !547, line: 591, column: 13)
!3591 = !DILocation(line: 591, column: 13, scope: !3565)
!3592 = !DILocation(line: 592, column: 13, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3590, file: !547, line: 591, column: 32)
!3594 = !DILocation(line: 593, column: 13, scope: !3593)
!3595 = !DILocation(line: 596, column: 18, scope: !3565)
!3596 = !DILocation(line: 597, column: 20, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3565, file: !547, line: 597, column: 13)
!3598 = !DILocation(line: 597, column: 13, scope: !3565)
!3599 = !DILocation(line: 598, column: 13, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3597, file: !547, line: 597, column: 32)
!3601 = !DILocation(line: 599, column: 13, scope: !3600)
!3602 = !DILocation(line: 602, column: 18, scope: !3565)
!3603 = !DILocation(line: 603, column: 20, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3565, file: !547, line: 603, column: 13)
!3605 = !DILocation(line: 603, column: 13, scope: !3565)
!3606 = !DILocation(line: 604, column: 13, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3604, file: !547, line: 603, column: 32)
!3608 = !DILocation(line: 605, column: 13, scope: !3607)
!3609 = !DILocation(line: 608, column: 30, scope: !3565)
!3610 = !DILocation(line: 608, column: 9, scope: !3565)
!3611 = !DILocation(line: 609, column: 5, scope: !3565)
!3612 = !DILocation(line: 610, column: 5, scope: !3538)
!3613 = !DILocation(line: 611, column: 38, scope: !3538)
!3614 = !DILocation(line: 611, column: 20, scope: !3538)
!3615 = !DILocation(line: 612, column: 22, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3538, file: !547, line: 612, column: 9)
!3617 = !DILocation(line: 612, column: 9, scope: !3538)
!3618 = !DILocation(line: 613, column: 9, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3616, file: !547, line: 612, column: 46)
!3620 = !DILocation(line: 614, column: 9, scope: !3619)
!3621 = !DILocation(line: 618, column: 32, scope: !3538)
!3622 = !DILocation(line: 618, column: 37, scope: !3538)
!3623 = !DILocation(line: 619, column: 32, scope: !3538)
!3624 = !DILocation(line: 619, column: 36, scope: !3538)
!3625 = !DILocation(line: 635, column: 32, scope: !3538)
!3626 = !DILocation(line: 639, column: 5, scope: !3538)
!3627 = !DILocation(line: 640, column: 1, scope: !3538)
!3628 = distinct !DISubprogram(name: "hal_uart_put_char", scope: !547, file: !547, line: 642, type: !3629, scopeLine: 643, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !546, retainedNodes: !3631)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{null, !653, !1238}
!3631 = !{!3632, !3633, !3634}
!3632 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3628, file: !547, line: 642, type: !653)
!3633 = !DILocalVariable(name: "byte", arg: 2, scope: !3628, file: !547, line: 642, type: !1238)
!3634 = !DILocalVariable(name: "uartx", scope: !3628, file: !547, line: 644, type: !3177)
!3635 = !DILocation(line: 0, scope: !3628)
!3636 = !DILocation(line: 646, column: 10, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !3628, file: !547, line: 646, column: 9)
!3638 = !DILocation(line: 646, column: 9, scope: !3628)
!3639 = !DILocation(line: 650, column: 9, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3628, file: !547, line: 650, column: 9)
!3641 = !DILocation(line: 650, column: 36, scope: !3640)
!3642 = !DILocation(line: 650, column: 9, scope: !3628)
!3643 = !DILocation(line: 654, column: 13, scope: !3628)
!3644 = !DILocation(line: 655, column: 5, scope: !3628)
!3645 = !DILocation(line: 656, column: 1, scope: !3628)
!3646 = distinct !DISubprogram(name: "hal_uart_send_polling", scope: !547, file: !547, line: 658, type: !3647, scopeLine: 659, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !546, retainedNodes: !3651)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!175, !653, !3649, !175}
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 32)
!3650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !378)
!3651 = !{!3652, !3653, !3654, !3655}
!3652 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3646, file: !547, line: 658, type: !653)
!3653 = !DILocalVariable(name: "data", arg: 2, scope: !3646, file: !547, line: 658, type: !3649)
!3654 = !DILocalVariable(name: "size", arg: 3, scope: !3646, file: !547, line: 658, type: !175)
!3655 = !DILocalVariable(name: "i", scope: !3646, file: !547, line: 660, type: !175)
!3656 = !DILocation(line: 0, scope: !3646)
!3657 = !DILocation(line: 662, column: 11, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3646, file: !547, line: 662, column: 9)
!3659 = !DILocation(line: 662, column: 42, scope: !3658)
!3660 = !DILocation(line: 666, column: 9, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3646, file: !547, line: 666, column: 9)
!3662 = !DILocation(line: 666, column: 36, scope: !3661)
!3663 = !DILocation(line: 666, column: 9, scope: !3646)
!3664 = !DILocation(line: 671, column: 38, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3666, file: !547, line: 670, column: 32)
!3666 = distinct !DILexicalBlock(scope: !3667, file: !547, line: 670, column: 5)
!3667 = distinct !DILexicalBlock(scope: !3646, file: !547, line: 670, column: 5)
!3668 = !DILocation(line: 671, column: 9, scope: !3665)
!3669 = !DILocation(line: 672, column: 13, scope: !3665)
!3670 = !DILocation(line: 670, column: 28, scope: !3666)
!3671 = !DILocation(line: 670, column: 19, scope: !3666)
!3672 = !DILocation(line: 670, column: 5, scope: !3667)
!3673 = distinct !{!3673, !3672, !3674}
!3674 = !DILocation(line: 673, column: 5, scope: !3667)
!3675 = !DILocation(line: 676, column: 1, scope: !3646)
!3676 = distinct !DISubprogram(name: "hal_uart_send_dma", scope: !547, file: !547, line: 678, type: !3647, scopeLine: 679, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !546, retainedNodes: !3677)
!3677 = !{!3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685}
!3678 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3676, file: !547, line: 678, type: !653)
!3679 = !DILocalVariable(name: "data", arg: 2, scope: !3676, file: !547, line: 678, type: !3649)
!3680 = !DILocalVariable(name: "size", arg: 3, scope: !3676, file: !547, line: 678, type: !175)
!3681 = !DILocalVariable(name: "channel", scope: !3676, file: !547, line: 680, type: !3172)
!3682 = !DILocalVariable(name: "i", scope: !3676, file: !547, line: 681, type: !175)
!3683 = !DILocalVariable(name: "real_count", scope: !3676, file: !547, line: 681, type: !175)
!3684 = !DILocalVariable(name: "avail_space", scope: !3676, file: !547, line: 681, type: !175)
!3685 = !DILocalVariable(name: "status", scope: !3676, file: !547, line: 682, type: !3233)
!3686 = !DILocation(line: 0, scope: !3676)
!3687 = !DILocation(line: 681, column: 5, scope: !3676)
!3688 = !DILocation(line: 687, column: 11, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3676, file: !547, line: 687, column: 9)
!3690 = !DILocation(line: 687, column: 42, scope: !3689)
!3691 = !DILocation(line: 691, column: 9, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3676, file: !547, line: 691, column: 9)
!3693 = !DILocation(line: 691, column: 36, scope: !3692)
!3694 = !DILocation(line: 691, column: 9, scope: !3676)
!3695 = !DILocation(line: 704, column: 15, scope: !3676)
!3696 = !DILocation(line: 706, column: 14, scope: !3676)
!3697 = !DILocation(line: 707, column: 16, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3676, file: !547, line: 707, column: 9)
!3699 = !DILocation(line: 707, column: 9, scope: !3676)
!3700 = !DILocation(line: 708, column: 9, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3698, file: !547, line: 707, column: 28)
!3702 = !DILocation(line: 712, column: 9, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3676, file: !547, line: 712, column: 9)
!3704 = !DILocation(line: 712, column: 21, scope: !3703)
!3705 = !DILocation(line: 717, column: 19, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3707, file: !547, line: 717, column: 5)
!3707 = distinct !DILexicalBlock(scope: !3676, file: !547, line: 717, column: 5)
!3708 = !DILocation(line: 717, column: 5, scope: !3707)
!3709 = distinct !{!3709, !3708, !3710}
!3710 = !DILocation(line: 723, column: 5, scope: !3707)
!3711 = !DILocation(line: 718, column: 42, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3706, file: !547, line: 717, column: 38)
!3713 = !DILocation(line: 718, column: 18, scope: !3712)
!3714 = !DILocation(line: 719, column: 20, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3712, file: !547, line: 719, column: 13)
!3716 = !DILocation(line: 717, column: 34, scope: !3706)
!3717 = !DILocation(line: 719, column: 13, scope: !3712)
!3718 = !DILocation(line: 720, column: 13, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3715, file: !547, line: 719, column: 32)
!3720 = !DILocation(line: 728, column: 23, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3676, file: !547, line: 728, column: 9)
!3722 = !DILocation(line: 728, column: 20, scope: !3721)
!3723 = !DILocation(line: 728, column: 9, scope: !3676)
!3724 = !DILocation(line: 729, column: 18, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3721, file: !547, line: 728, column: 36)
!3726 = !DILocation(line: 730, column: 20, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3725, file: !547, line: 730, column: 13)
!3728 = !DILocation(line: 730, column: 13, scope: !3725)
!3729 = !DILocation(line: 731, column: 13, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3727, file: !547, line: 730, column: 32)
!3731 = !DILocation(line: 737, column: 1, scope: !3676)
!3732 = distinct !DISubprogram(name: "hal_uart_get_char", scope: !547, file: !547, line: 739, type: !3733, scopeLine: 740, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !546, retainedNodes: !3735)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!1238, !653}
!3735 = !{!3736, !3737, !3738}
!3736 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3732, file: !547, line: 739, type: !653)
!3737 = !DILocalVariable(name: "data", scope: !3732, file: !547, line: 741, type: !1238)
!3738 = !DILocalVariable(name: "uartx", scope: !3732, file: !547, line: 742, type: !3177)
!3739 = !DILocation(line: 0, scope: !3732)
!3740 = !DILocation(line: 744, column: 10, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3732, file: !547, line: 744, column: 9)
!3742 = !DILocation(line: 744, column: 9, scope: !3732)
!3743 = !DILocation(line: 748, column: 9, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3732, file: !547, line: 748, column: 9)
!3745 = !DILocation(line: 748, column: 36, scope: !3744)
!3746 = !DILocation(line: 748, column: 9, scope: !3732)
!3747 = !DILocation(line: 752, column: 13, scope: !3732)
!3748 = !DILocation(line: 754, column: 12, scope: !3732)
!3749 = !DILocation(line: 756, column: 5, scope: !3732)
!3750 = !DILocation(line: 757, column: 1, scope: !3732)
!3751 = distinct !DISubprogram(name: "hal_uart_get_char_unblocking", scope: !547, file: !547, line: 759, type: !3752, scopeLine: 760, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !546, retainedNodes: !3754)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!175, !653}
!3754 = !{!3755, !3756, !3757}
!3755 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3751, file: !547, line: 759, type: !653)
!3756 = !DILocalVariable(name: "data", scope: !3751, file: !547, line: 761, type: !175)
!3757 = !DILocalVariable(name: "uartx", scope: !3751, file: !547, line: 762, type: !3177)
!3758 = !DILocation(line: 0, scope: !3751)
!3759 = !DILocation(line: 764, column: 10, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3751, file: !547, line: 764, column: 9)
!3761 = !DILocation(line: 764, column: 9, scope: !3751)
!3762 = !DILocation(line: 768, column: 9, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3751, file: !547, line: 768, column: 9)
!3764 = !DILocation(line: 768, column: 36, scope: !3763)
!3765 = !DILocation(line: 768, column: 9, scope: !3751)
!3766 = !DILocation(line: 772, column: 13, scope: !3751)
!3767 = !DILocation(line: 774, column: 12, scope: !3751)
!3768 = !DILocation(line: 776, column: 5, scope: !3751)
!3769 = !DILocation(line: 777, column: 1, scope: !3751)
!3770 = distinct !DISubprogram(name: "hal_uart_receive_polling", scope: !547, file: !547, line: 779, type: !3771, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !546, retainedNodes: !3773)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{!175, !653, !680, !175}
!3773 = !{!3774, !3775, !3776, !3777, !3778}
!3774 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3770, file: !547, line: 779, type: !653)
!3775 = !DILocalVariable(name: "buffer", arg: 2, scope: !3770, file: !547, line: 779, type: !680)
!3776 = !DILocalVariable(name: "size", arg: 3, scope: !3770, file: !547, line: 779, type: !175)
!3777 = !DILocalVariable(name: "i", scope: !3770, file: !547, line: 781, type: !175)
!3778 = !DILocalVariable(name: "pbuf", scope: !3770, file: !547, line: 782, type: !680)
!3779 = !DILocation(line: 0, scope: !3770)
!3780 = !DILocation(line: 784, column: 11, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3770, file: !547, line: 784, column: 9)
!3782 = !DILocation(line: 784, column: 42, scope: !3781)
!3783 = !DILocation(line: 789, column: 9, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3770, file: !547, line: 789, column: 9)
!3785 = !DILocation(line: 789, column: 36, scope: !3784)
!3786 = !DILocation(line: 789, column: 9, scope: !3770)
!3787 = !DILocation(line: 794, column: 19, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3789, file: !547, line: 793, column: 32)
!3789 = distinct !DILexicalBlock(scope: !3790, file: !547, line: 793, column: 5)
!3790 = distinct !DILexicalBlock(scope: !3770, file: !547, line: 793, column: 5)
!3791 = !DILocation(line: 794, column: 9, scope: !3788)
!3792 = !DILocation(line: 794, column: 17, scope: !3788)
!3793 = !DILocation(line: 793, column: 28, scope: !3789)
!3794 = !DILocation(line: 793, column: 19, scope: !3789)
!3795 = !DILocation(line: 793, column: 5, scope: !3790)
!3796 = distinct !{!3796, !3795, !3797}
!3797 = !DILocation(line: 795, column: 5, scope: !3790)
!3798 = !DILocation(line: 798, column: 1, scope: !3770)
!3799 = distinct !DISubprogram(name: "hal_uart_receive_dma", scope: !547, file: !547, line: 800, type: !3771, scopeLine: 801, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !546, retainedNodes: !3800)
!3800 = !{!3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808}
!3801 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3799, file: !547, line: 800, type: !653)
!3802 = !DILocalVariable(name: "buffer", arg: 2, scope: !3799, file: !547, line: 800, type: !680)
!3803 = !DILocalVariable(name: "size", arg: 3, scope: !3799, file: !547, line: 800, type: !175)
!3804 = !DILocalVariable(name: "channel", scope: !3799, file: !547, line: 802, type: !3172)
!3805 = !DILocalVariable(name: "receive_count", scope: !3799, file: !547, line: 803, type: !175)
!3806 = !DILocalVariable(name: "avail_count", scope: !3799, file: !547, line: 803, type: !175)
!3807 = !DILocalVariable(name: "index", scope: !3799, file: !547, line: 804, type: !175)
!3808 = !DILocalVariable(name: "status", scope: !3799, file: !547, line: 805, type: !3233)
!3809 = !DILocation(line: 0, scope: !3799)
!3810 = !DILocation(line: 803, column: 5, scope: !3799)
!3811 = !DILocation(line: 807, column: 11, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3799, file: !547, line: 807, column: 9)
!3813 = !DILocation(line: 807, column: 42, scope: !3812)
!3814 = !DILocation(line: 813, column: 9, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3799, file: !547, line: 813, column: 9)
!3816 = !DILocation(line: 813, column: 36, scope: !3815)
!3817 = !DILocation(line: 813, column: 9, scope: !3799)
!3818 = !DILocation(line: 817, column: 15, scope: !3799)
!3819 = !DILocation(line: 819, column: 14, scope: !3799)
!3820 = !DILocation(line: 820, column: 16, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3799, file: !547, line: 820, column: 9)
!3822 = !DILocation(line: 820, column: 9, scope: !3799)
!3823 = !DILocation(line: 821, column: 9, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3821, file: !547, line: 820, column: 28)
!3825 = !DILocation(line: 825, column: 9, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3799, file: !547, line: 825, column: 9)
!3827 = !DILocation(line: 825, column: 21, scope: !3826)
!3828 = !DILocation(line: 830, column: 27, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3830, file: !547, line: 830, column: 5)
!3830 = distinct !DILexicalBlock(scope: !3799, file: !547, line: 830, column: 5)
!3831 = !DILocation(line: 830, column: 5, scope: !3830)
!3832 = distinct !{!3832, !3831, !3833}
!3833 = !DILocation(line: 836, column: 5, scope: !3830)
!3834 = !DILocation(line: 831, column: 42, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3829, file: !547, line: 830, column: 53)
!3836 = !DILocation(line: 831, column: 18, scope: !3835)
!3837 = !DILocation(line: 832, column: 20, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !3835, file: !547, line: 832, column: 13)
!3839 = !DILocation(line: 830, column: 49, scope: !3829)
!3840 = !DILocation(line: 832, column: 13, scope: !3835)
!3841 = !DILocation(line: 833, column: 13, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3838, file: !547, line: 832, column: 32)
!3843 = !DILocation(line: 841, column: 26, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3799, file: !547, line: 841, column: 9)
!3845 = !DILocation(line: 841, column: 23, scope: !3844)
!3846 = !DILocation(line: 841, column: 9, scope: !3799)
!3847 = !DILocation(line: 842, column: 18, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3844, file: !547, line: 841, column: 39)
!3849 = !DILocation(line: 843, column: 20, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3848, file: !547, line: 843, column: 13)
!3851 = !DILocation(line: 843, column: 13, scope: !3848)
!3852 = !DILocation(line: 844, column: 13, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3850, file: !547, line: 843, column: 32)
!3854 = !DILocation(line: 850, column: 1, scope: !3799)
!3855 = distinct !DISubprogram(name: "hal_uart_register_callback", scope: !547, file: !547, line: 891, type: !3856, scopeLine: 894, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !546, retainedNodes: !3858)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!3370, !653, !662, !194}
!3858 = !{!3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866}
!3859 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3855, file: !547, line: 891, type: !653)
!3860 = !DILocalVariable(name: "user_callback", arg: 2, scope: !3855, file: !547, line: 892, type: !662)
!3861 = !DILocalVariable(name: "user_data", arg: 3, scope: !3855, file: !547, line: 893, type: !194)
!3862 = !DILocalVariable(name: "tx_dma_channel", scope: !3855, file: !547, line: 895, type: !3172)
!3863 = !DILocalVariable(name: "rx_dma_channel", scope: !3855, file: !547, line: 895, type: !3172)
!3864 = !DILocalVariable(name: "irq_status", scope: !3855, file: !547, line: 896, type: !175)
!3865 = !DILocalVariable(name: "status", scope: !3855, file: !547, line: 897, type: !3233)
!3866 = !DILocalVariable(name: "nvic_status", scope: !3855, file: !547, line: 898, type: !954)
!3867 = !DILocation(line: 0, scope: !3855)
!3868 = !DILocation(line: 900, column: 11, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3855, file: !547, line: 900, column: 9)
!3870 = !DILocation(line: 900, column: 42, scope: !3869)
!3871 = !DILocation(line: 905, column: 18, scope: !3855)
!3872 = !DILocation(line: 906, column: 9, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3855, file: !547, line: 906, column: 9)
!3874 = !DILocation(line: 906, column: 36, scope: !3873)
!3875 = !DILocation(line: 906, column: 9, scope: !3855)
!3876 = !DILocation(line: 911, column: 22, scope: !3855)
!3877 = !DILocation(line: 912, column: 22, scope: !3855)
!3878 = !DILocation(line: 914, column: 32, scope: !3855)
!3879 = !DILocation(line: 914, column: 37, scope: !3855)
!3880 = !DILocation(line: 915, column: 32, scope: !3855)
!3881 = !DILocation(line: 915, column: 36, scope: !3855)
!3882 = !DILocation(line: 917, column: 91, scope: !3855)
!3883 = !DILocation(line: 917, column: 56, scope: !3855)
!3884 = !DILocation(line: 917, column: 5, scope: !3855)
!3885 = !DILocation(line: 918, column: 80, scope: !3855)
!3886 = !DILocation(line: 918, column: 14, scope: !3855)
!3887 = !DILocation(line: 919, column: 16, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3855, file: !547, line: 919, column: 9)
!3889 = !DILocation(line: 919, column: 9, scope: !3855)
!3890 = !DILocation(line: 920, column: 9, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3888, file: !547, line: 919, column: 28)
!3892 = !DILocation(line: 921, column: 9, scope: !3891)
!3893 = !DILocation(line: 924, column: 97, scope: !3855)
!3894 = !DILocation(line: 924, column: 56, scope: !3855)
!3895 = !DILocation(line: 924, column: 5, scope: !3855)
!3896 = !DILocation(line: 925, column: 80, scope: !3855)
!3897 = !DILocation(line: 925, column: 14, scope: !3855)
!3898 = !DILocation(line: 926, column: 16, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3855, file: !547, line: 926, column: 9)
!3900 = !DILocation(line: 926, column: 9, scope: !3855)
!3901 = !DILocation(line: 927, column: 9, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3899, file: !547, line: 926, column: 28)
!3903 = !DILocation(line: 928, column: 9, scope: !3902)
!3904 = !DILocation(line: 931, column: 49, scope: !3855)
!3905 = !DILocation(line: 931, column: 19, scope: !3855)
!3906 = !DILocation(line: 932, column: 21, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3855, file: !547, line: 932, column: 9)
!3908 = !DILocation(line: 932, column: 9, scope: !3855)
!3909 = !DILocation(line: 933, column: 9, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3907, file: !547, line: 932, column: 44)
!3911 = !DILocation(line: 934, column: 9, scope: !3910)
!3912 = !DILocation(line: 938, column: 5, scope: !3855)
!3913 = !DILocation(line: 940, column: 32, scope: !3855)
!3914 = !DILocation(line: 944, column: 5, scope: !3855)
!3915 = !DILocation(line: 945, column: 1, scope: !3855)
!3916 = distinct !DISubprogram(name: "uart_dma_callback_handler", scope: !547, file: !547, line: 303, type: !3917, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !546, retainedNodes: !3920)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{null, !3919, !194}
!3919 = !DIDerivedType(tag: DW_TAG_typedef, name: "vdma_event_t", file: !557, line: 225, baseType: !641)
!3920 = !{!3921, !3922, !3923}
!3921 = !DILocalVariable(name: "event", arg: 1, scope: !3916, file: !547, line: 303, type: !3919)
!3922 = !DILocalVariable(name: "user_data", arg: 2, scope: !3916, file: !547, line: 303, type: !194)
!3923 = !DILocalVariable(name: "callback_data", scope: !3916, file: !547, line: 305, type: !646)
!3924 = !DILocation(line: 0, scope: !3916)
!3925 = !DILocation(line: 307, column: 24, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3916, file: !547, line: 307, column: 9)
!3927 = !DILocation(line: 0, scope: !3926)
!3928 = !DILocation(line: 307, column: 9, scope: !3916)
!3929 = !DILocation(line: 308, column: 9, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !3926, file: !547, line: 307, column: 39)
!3931 = !DILocation(line: 309, column: 5, scope: !3930)
!3932 = !DILocation(line: 310, column: 9, scope: !3933)
!3933 = distinct !DILexicalBlock(scope: !3926, file: !547, line: 309, column: 12)
!3934 = !DILocation(line: 312, column: 1, scope: !3916)
!3935 = distinct !DISubprogram(name: "uart_start_dma_transmission", scope: !547, file: !547, line: 852, type: !3342, scopeLine: 853, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !546, retainedNodes: !3936)
!3936 = !{!3937, !3938, !3939, !3940, !3941}
!3937 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3935, file: !547, line: 852, type: !653)
!3938 = !DILocalVariable(name: "uartx", scope: !3935, file: !547, line: 854, type: !3177)
!3939 = !DILocalVariable(name: "tx_dma_channel", scope: !3935, file: !547, line: 855, type: !3172)
!3940 = !DILocalVariable(name: "rx_dma_channel", scope: !3935, file: !547, line: 855, type: !3172)
!3941 = !DILocalVariable(name: "status", scope: !3935, file: !547, line: 856, type: !3233)
!3942 = !DILocation(line: 0, scope: !3935)
!3943 = !DILocation(line: 858, column: 13, scope: !3935)
!3944 = !DILocation(line: 859, column: 22, scope: !3935)
!3945 = !DILocation(line: 860, column: 22, scope: !3935)
!3946 = !DILocation(line: 866, column: 5, scope: !3935)
!3947 = !DILocation(line: 867, column: 25, scope: !3935)
!3948 = !DILocation(line: 867, column: 5, scope: !3935)
!3949 = !DILocation(line: 868, column: 14, scope: !3935)
!3950 = !DILocation(line: 869, column: 16, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3935, file: !547, line: 869, column: 9)
!3952 = !DILocation(line: 869, column: 9, scope: !3935)
!3953 = !DILocation(line: 870, column: 9, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3951, file: !547, line: 869, column: 28)
!3955 = !DILocation(line: 873, column: 14, scope: !3935)
!3956 = !DILocation(line: 874, column: 16, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3935, file: !547, line: 874, column: 9)
!3958 = !DILocation(line: 874, column: 9, scope: !3935)
!3959 = !DILocation(line: 875, column: 9, scope: !3960)
!3960 = distinct !DILexicalBlock(scope: !3957, file: !547, line: 874, column: 28)
!3961 = !DILocation(line: 878, column: 14, scope: !3935)
!3962 = !DILocation(line: 879, column: 16, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3935, file: !547, line: 879, column: 9)
!3964 = !DILocation(line: 879, column: 9, scope: !3935)
!3965 = !DILocation(line: 880, column: 9, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3963, file: !547, line: 879, column: 28)
!3967 = !DILocation(line: 883, column: 14, scope: !3935)
!3968 = !DILocation(line: 884, column: 16, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3935, file: !547, line: 884, column: 9)
!3970 = !DILocation(line: 884, column: 9, scope: !3935)
!3971 = !DILocation(line: 885, column: 9, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3969, file: !547, line: 884, column: 28)
!3973 = !DILocation(line: 888, column: 5, scope: !3935)
!3974 = !DILocation(line: 889, column: 1, scope: !3935)
!3975 = distinct !DISubprogram(name: "hal_uart_get_available_send_space", scope: !547, file: !547, line: 947, type: !3752, scopeLine: 948, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !546, retainedNodes: !3976)
!3976 = !{!3977, !3978, !3979, !3980}
!3977 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3975, file: !547, line: 947, type: !653)
!3978 = !DILocalVariable(name: "channel", scope: !3975, file: !547, line: 949, type: !3172)
!3979 = !DILocalVariable(name: "roomleft", scope: !3975, file: !547, line: 950, type: !175)
!3980 = !DILocalVariable(name: "status", scope: !3975, file: !547, line: 951, type: !3233)
!3981 = !DILocation(line: 0, scope: !3975)
!3982 = !DILocation(line: 950, column: 5, scope: !3975)
!3983 = !DILocation(line: 953, column: 10, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3975, file: !547, line: 953, column: 9)
!3985 = !DILocation(line: 953, column: 9, scope: !3975)
!3986 = !DILocation(line: 957, column: 9, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3975, file: !547, line: 957, column: 9)
!3988 = !DILocation(line: 957, column: 36, scope: !3987)
!3989 = !DILocation(line: 957, column: 9, scope: !3975)
!3990 = !DILocation(line: 961, column: 15, scope: !3975)
!3991 = !DILocation(line: 962, column: 14, scope: !3975)
!3992 = !DILocation(line: 963, column: 16, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3975, file: !547, line: 963, column: 9)
!3994 = !DILocation(line: 963, column: 9, scope: !3975)
!3995 = !DILocation(line: 964, column: 9, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3993, file: !547, line: 963, column: 28)
!3997 = !DILocation(line: 968, column: 12, scope: !3975)
!3998 = !DILocation(line: 968, column: 5, scope: !3975)
!3999 = !DILocation(line: 969, column: 1, scope: !3975)
!4000 = distinct !DISubprogram(name: "hal_uart_get_available_receive_bytes", scope: !547, file: !547, line: 971, type: !3752, scopeLine: 972, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !546, retainedNodes: !4001)
!4001 = !{!4002, !4003, !4004, !4005}
!4002 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4000, file: !547, line: 971, type: !653)
!4003 = !DILocalVariable(name: "channel", scope: !4000, file: !547, line: 973, type: !3172)
!4004 = !DILocalVariable(name: "avail", scope: !4000, file: !547, line: 974, type: !175)
!4005 = !DILocalVariable(name: "status", scope: !4000, file: !547, line: 975, type: !3233)
!4006 = !DILocation(line: 0, scope: !4000)
!4007 = !DILocation(line: 974, column: 5, scope: !4000)
!4008 = !DILocation(line: 977, column: 10, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !4000, file: !547, line: 977, column: 9)
!4010 = !DILocation(line: 977, column: 9, scope: !4000)
!4011 = !DILocation(line: 981, column: 9, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !4000, file: !547, line: 981, column: 9)
!4013 = !DILocation(line: 981, column: 36, scope: !4012)
!4014 = !DILocation(line: 981, column: 9, scope: !4000)
!4015 = !DILocation(line: 985, column: 15, scope: !4000)
!4016 = !DILocation(line: 986, column: 14, scope: !4000)
!4017 = !DILocation(line: 987, column: 16, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !4000, file: !547, line: 987, column: 9)
!4019 = !DILocation(line: 987, column: 9, scope: !4000)
!4020 = !DILocation(line: 988, column: 9, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !4018, file: !547, line: 987, column: 28)
!4022 = !DILocation(line: 992, column: 12, scope: !4000)
!4023 = !DILocation(line: 992, column: 5, scope: !4000)
!4024 = !DILocation(line: 993, column: 1, scope: !4000)
!4025 = distinct !DISubprogram(name: "hal_uart_set_hardware_flowcontrol", scope: !547, file: !547, line: 995, type: !3539, scopeLine: 996, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !546, retainedNodes: !4026)
!4026 = !{!4027, !4028}
!4027 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4025, file: !547, line: 995, type: !653)
!4028 = !DILocalVariable(name: "uartx", scope: !4025, file: !547, line: 997, type: !3177)
!4029 = !DILocation(line: 0, scope: !4025)
!4030 = !DILocation(line: 999, column: 10, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !4025, file: !547, line: 999, column: 9)
!4032 = !DILocation(line: 999, column: 9, scope: !4025)
!4033 = !DILocation(line: 1003, column: 9, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4025, file: !547, line: 1003, column: 9)
!4035 = !DILocation(line: 1003, column: 36, scope: !4034)
!4036 = !DILocation(line: 1003, column: 9, scope: !4025)
!4037 = !DILocation(line: 1007, column: 13, scope: !4025)
!4038 = !DILocation(line: 1009, column: 5, scope: !4025)
!4039 = !DILocation(line: 1015, column: 5, scope: !4025)
!4040 = !DILocation(line: 1016, column: 1, scope: !4025)
!4041 = distinct !DISubprogram(name: "hal_uart_set_software_flowcontrol", scope: !547, file: !547, line: 1018, type: !4042, scopeLine: 1022, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !546, retainedNodes: !4044)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!3370, !653, !378, !378, !378}
!4044 = !{!4045, !4046, !4047, !4048, !4049}
!4045 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4041, file: !547, line: 1018, type: !653)
!4046 = !DILocalVariable(name: "xon", arg: 2, scope: !4041, file: !547, line: 1019, type: !378)
!4047 = !DILocalVariable(name: "xoff", arg: 3, scope: !4041, file: !547, line: 1020, type: !378)
!4048 = !DILocalVariable(name: "escape_character", arg: 4, scope: !4041, file: !547, line: 1021, type: !378)
!4049 = !DILocalVariable(name: "uartx", scope: !4041, file: !547, line: 1023, type: !3177)
!4050 = !DILocation(line: 0, scope: !4041)
!4051 = !DILocation(line: 1025, column: 10, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4041, file: !547, line: 1025, column: 9)
!4053 = !DILocation(line: 1025, column: 9, scope: !4041)
!4054 = !DILocation(line: 1029, column: 9, scope: !4055)
!4055 = distinct !DILexicalBlock(scope: !4041, file: !547, line: 1029, column: 9)
!4056 = !DILocation(line: 1029, column: 36, scope: !4055)
!4057 = !DILocation(line: 1029, column: 9, scope: !4041)
!4058 = !DILocation(line: 1033, column: 13, scope: !4041)
!4059 = !DILocation(line: 1035, column: 5, scope: !4041)
!4060 = !DILocation(line: 1044, column: 5, scope: !4041)
!4061 = !DILocation(line: 1045, column: 1, scope: !4041)
!4062 = distinct !DISubprogram(name: "hal_uart_disable_flowcontrol", scope: !547, file: !547, line: 1047, type: !3539, scopeLine: 1048, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !546, retainedNodes: !4063)
!4063 = !{!4064, !4065}
!4064 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4062, file: !547, line: 1047, type: !653)
!4065 = !DILocalVariable(name: "uartx", scope: !4062, file: !547, line: 1049, type: !3177)
!4066 = !DILocation(line: 0, scope: !4062)
!4067 = !DILocation(line: 1051, column: 10, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4062, file: !547, line: 1051, column: 9)
!4069 = !DILocation(line: 1051, column: 9, scope: !4062)
!4070 = !DILocation(line: 1055, column: 9, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !4062, file: !547, line: 1055, column: 9)
!4072 = !DILocation(line: 1055, column: 36, scope: !4071)
!4073 = !DILocation(line: 1055, column: 9, scope: !4062)
!4074 = !DILocation(line: 1059, column: 13, scope: !4062)
!4075 = !DILocation(line: 1061, column: 5, scope: !4062)
!4076 = !DILocation(line: 1067, column: 5, scope: !4062)
!4077 = !DILocation(line: 1068, column: 1, scope: !4062)
!4078 = distinct !DISubprogram(name: "hal_uart_set_dma", scope: !547, file: !547, line: 1071, type: !4079, scopeLine: 1072, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !546, retainedNodes: !4083)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!3370, !653, !4081}
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 32)
!4082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !676)
!4083 = !{!4084, !4085, !4086, !4087, !4093, !4094, !4095}
!4084 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4078, file: !547, line: 1071, type: !653)
!4085 = !DILocalVariable(name: "dma_config", arg: 2, scope: !4078, file: !547, line: 1071, type: !4081)
!4086 = !DILocalVariable(name: "irq_status", scope: !4078, file: !547, line: 1073, type: !175)
!4087 = !DILocalVariable(name: "internal_dma_config", scope: !4078, file: !547, line: 1074, type: !4088)
!4088 = !DIDerivedType(tag: DW_TAG_typedef, name: "vdma_config_t", file: !557, line: 283, baseType: !4089)
!4089 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !557, line: 280, size: 64, elements: !4090)
!4090 = !{!4091, !4092}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "base_address", scope: !4089, file: !557, line: 281, baseType: !175, size: 32)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4089, file: !557, line: 282, baseType: !175, size: 32, offset: 32)
!4093 = !DILocalVariable(name: "tx_dma_channel", scope: !4078, file: !547, line: 1075, type: !3172)
!4094 = !DILocalVariable(name: "rx_dma_channel", scope: !4078, file: !547, line: 1075, type: !3172)
!4095 = !DILocalVariable(name: "status", scope: !4078, file: !547, line: 1076, type: !3233)
!4096 = !DILocation(line: 0, scope: !4078)
!4097 = !DILocation(line: 1074, column: 5, scope: !4078)
!4098 = !DILocation(line: 1074, column: 19, scope: !4078)
!4099 = !DILocation(line: 1078, column: 10, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4078, file: !547, line: 1078, column: 9)
!4101 = !DILocation(line: 1078, column: 9, scope: !4078)
!4102 = !DILocation(line: 1081, column: 22, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4078, file: !547, line: 1081, column: 9)
!4104 = !DILocation(line: 1081, column: 40, scope: !4103)
!4105 = !DILocation(line: 1081, column: 49, scope: !4103)
!4106 = !DILocation(line: 1082, column: 22, scope: !4103)
!4107 = !DILocation(line: 1082, column: 43, scope: !4103)
!4108 = !DILocation(line: 1081, column: 9, scope: !4078)
!4109 = !DILocation(line: 1085, column: 22, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !4078, file: !547, line: 1085, column: 9)
!4111 = !DILocation(line: 1085, column: 45, scope: !4110)
!4112 = !DILocation(line: 1085, column: 76, scope: !4110)
!4113 = !DILocation(line: 1086, column: 22, scope: !4110)
!4114 = !DILocation(line: 1086, column: 48, scope: !4110)
!4115 = !DILocation(line: 1086, column: 79, scope: !4110)
!4116 = !DILocation(line: 1090, column: 22, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4078, file: !547, line: 1090, column: 9)
!4118 = !DILocation(line: 1090, column: 48, scope: !4117)
!4119 = !DILocation(line: 1090, column: 79, scope: !4117)
!4120 = !DILocation(line: 1091, column: 22, scope: !4117)
!4121 = !DILocation(line: 1091, column: 51, scope: !4117)
!4122 = !DILocation(line: 1091, column: 82, scope: !4117)
!4123 = !DILocation(line: 1092, column: 22, scope: !4117)
!4124 = !DILocation(line: 1092, column: 47, scope: !4117)
!4125 = !DILocation(line: 1092, column: 78, scope: !4117)
!4126 = !DILocation(line: 1098, column: 9, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4078, file: !547, line: 1098, column: 9)
!4128 = !DILocation(line: 1098, column: 36, scope: !4127)
!4129 = !DILocation(line: 1098, column: 9, scope: !4078)
!4130 = !DILocation(line: 1102, column: 22, scope: !4078)
!4131 = !DILocation(line: 1103, column: 22, scope: !4078)
!4132 = !DILocation(line: 1105, column: 14, scope: !4078)
!4133 = !DILocation(line: 1106, column: 16, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !4078, file: !547, line: 1106, column: 9)
!4135 = !DILocation(line: 1106, column: 9, scope: !4078)
!4136 = !DILocation(line: 1107, column: 9, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4134, file: !547, line: 1106, column: 28)
!4138 = !DILocation(line: 1110, column: 62, scope: !4078)
!4139 = !DILocation(line: 1110, column: 40, scope: !4078)
!4140 = !DILocation(line: 1110, column: 25, scope: !4078)
!4141 = !DILocation(line: 1110, column: 38, scope: !4078)
!4142 = !DILocation(line: 1111, column: 44, scope: !4078)
!4143 = !DILocation(line: 1111, column: 25, scope: !4078)
!4144 = !DILocation(line: 1111, column: 30, scope: !4078)
!4145 = !DILocation(line: 1112, column: 14, scope: !4078)
!4146 = !DILocation(line: 1113, column: 16, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !4078, file: !547, line: 1113, column: 9)
!4148 = !DILocation(line: 1113, column: 9, scope: !4078)
!4149 = !DILocation(line: 1114, column: 9, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4147, file: !547, line: 1113, column: 28)
!4151 = !DILocation(line: 1117, column: 61, scope: !4078)
!4152 = !DILocation(line: 1117, column: 14, scope: !4078)
!4153 = !DILocation(line: 1118, column: 16, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !4078, file: !547, line: 1118, column: 9)
!4155 = !DILocation(line: 1118, column: 9, scope: !4078)
!4156 = !DILocation(line: 1119, column: 9, scope: !4157)
!4157 = distinct !DILexicalBlock(scope: !4154, file: !547, line: 1118, column: 28)
!4158 = !DILocation(line: 1123, column: 14, scope: !4078)
!4159 = !DILocation(line: 1124, column: 16, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4078, file: !547, line: 1124, column: 9)
!4161 = !DILocation(line: 1124, column: 9, scope: !4078)
!4162 = !DILocation(line: 1125, column: 9, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !4160, file: !547, line: 1124, column: 28)
!4164 = !DILocation(line: 1128, column: 62, scope: !4078)
!4165 = !DILocation(line: 1128, column: 40, scope: !4078)
!4166 = !DILocation(line: 1128, column: 38, scope: !4078)
!4167 = !DILocation(line: 1129, column: 44, scope: !4078)
!4168 = !DILocation(line: 1129, column: 30, scope: !4078)
!4169 = !DILocation(line: 1130, column: 14, scope: !4078)
!4170 = !DILocation(line: 1131, column: 16, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4078, file: !547, line: 1131, column: 9)
!4172 = !DILocation(line: 1131, column: 9, scope: !4078)
!4173 = !DILocation(line: 1132, column: 9, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !4171, file: !547, line: 1131, column: 28)
!4175 = !DILocation(line: 1135, column: 61, scope: !4078)
!4176 = !DILocation(line: 1135, column: 14, scope: !4078)
!4177 = !DILocation(line: 1136, column: 16, scope: !4178)
!4178 = distinct !DILexicalBlock(scope: !4078, file: !547, line: 1136, column: 9)
!4179 = !DILocation(line: 1136, column: 9, scope: !4078)
!4180 = !DILocation(line: 1137, column: 9, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4178, file: !547, line: 1136, column: 28)
!4182 = !DILocation(line: 1140, column: 64, scope: !4078)
!4183 = !DILocation(line: 1140, column: 14, scope: !4078)
!4184 = !DILocation(line: 1141, column: 16, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4078, file: !547, line: 1141, column: 9)
!4186 = !DILocation(line: 1141, column: 9, scope: !4078)
!4187 = !DILocation(line: 1142, column: 9, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !4185, file: !547, line: 1141, column: 28)
!4189 = !DILocation(line: 1146, column: 18, scope: !4078)
!4190 = !DILocation(line: 1147, column: 66, scope: !4078)
!4191 = !DILocation(line: 1147, column: 34, scope: !4078)
!4192 = !DILocation(line: 1147, column: 52, scope: !4078)
!4193 = !DILocation(line: 1148, column: 71, scope: !4078)
!4194 = !DILocation(line: 1148, column: 34, scope: !4078)
!4195 = !DILocation(line: 1148, column: 57, scope: !4078)
!4196 = !DILocation(line: 1149, column: 74, scope: !4078)
!4197 = !DILocation(line: 1149, column: 34, scope: !4078)
!4198 = !DILocation(line: 1149, column: 60, scope: !4078)
!4199 = !DILocation(line: 1150, column: 73, scope: !4078)
!4200 = !DILocation(line: 1150, column: 34, scope: !4078)
!4201 = !DILocation(line: 1150, column: 59, scope: !4078)
!4202 = !DILocation(line: 1151, column: 69, scope: !4078)
!4203 = !DILocation(line: 1151, column: 34, scope: !4078)
!4204 = !DILocation(line: 1151, column: 55, scope: !4078)
!4205 = !DILocation(line: 1152, column: 74, scope: !4078)
!4206 = !DILocation(line: 1152, column: 34, scope: !4078)
!4207 = !DILocation(line: 1152, column: 60, scope: !4078)
!4208 = !DILocation(line: 1153, column: 77, scope: !4078)
!4209 = !DILocation(line: 1153, column: 34, scope: !4078)
!4210 = !DILocation(line: 1153, column: 63, scope: !4078)
!4211 = !DILocation(line: 1154, column: 5, scope: !4078)
!4212 = !DILocation(line: 1156, column: 5, scope: !4078)
!4213 = !DILocation(line: 1157, column: 1, scope: !4078)
!4214 = distinct !DISubprogram(name: "uart_set_baudrate", scope: !1602, file: !1602, line: 52, type: !4215, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1601, retainedNodes: !4272)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{null, !4217, !175}
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 32)
!4218 = !DIDerivedType(tag: DW_TAG_typedef, name: "UART_REGISTER_T", file: !78, line: 588, baseType: !4219)
!4219 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 542, size: 800, elements: !4220)
!4220 = !{!4221, !4227, !4232, !4238, !4239, !4244, !4249, !4250, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "RBR_THR_DLL", scope: !4219, file: !78, line: 547, baseType: !4222, size: 32)
!4222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4219, file: !78, line: 543, size: 32, elements: !4223)
!4223 = !{!4224, !4225, !4226}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "RBR", scope: !4222, file: !78, line: 544, baseType: !188, size: 32)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "THR", scope: !4222, file: !78, line: 545, baseType: !184, size: 32)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "DLL", scope: !4222, file: !78, line: 546, baseType: !184, size: 32)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "IER_DLM", scope: !4219, file: !78, line: 551, baseType: !4228, size: 32, offset: 32)
!4228 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4219, file: !78, line: 548, size: 32, elements: !4229)
!4229 = !{!4230, !4231}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "IER", scope: !4228, file: !78, line: 549, baseType: !184, size: 32)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "DLM", scope: !4228, file: !78, line: 550, baseType: !184, size: 32)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "IIR_FCR_EFR", scope: !4219, file: !78, line: 556, baseType: !4233, size: 32, offset: 64)
!4233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4219, file: !78, line: 552, size: 32, elements: !4234)
!4234 = !{!4235, !4236, !4237}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "IIR", scope: !4233, file: !78, line: 553, baseType: !188, size: 32)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "FCR", scope: !4233, file: !78, line: 554, baseType: !184, size: 32)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "EFR", scope: !4233, file: !78, line: 555, baseType: !184, size: 32)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "LCR", scope: !4219, file: !78, line: 557, baseType: !184, size: 32, offset: 96)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "MCR_XON1", scope: !4219, file: !78, line: 561, baseType: !4240, size: 32, offset: 128)
!4240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4219, file: !78, line: 558, size: 32, elements: !4241)
!4241 = !{!4242, !4243}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "MCR", scope: !4240, file: !78, line: 559, baseType: !184, size: 32)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "XON1", scope: !4240, file: !78, line: 560, baseType: !184, size: 32)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "LSR_XON2", scope: !4219, file: !78, line: 565, baseType: !4245, size: 32, offset: 160)
!4245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4219, file: !78, line: 562, size: 32, elements: !4246)
!4246 = !{!4247, !4248}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "LSR", scope: !4245, file: !78, line: 563, baseType: !188, size: 32)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "XON2", scope: !4245, file: !78, line: 564, baseType: !184, size: 32)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "XOFF1", scope: !4219, file: !78, line: 566, baseType: !184, size: 32, offset: 192)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "SCR_XOFF2", scope: !4219, file: !78, line: 570, baseType: !4251, size: 32, offset: 224)
!4251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4219, file: !78, line: 567, size: 32, elements: !4252)
!4252 = !{!4253, !4254}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !4251, file: !78, line: 568, baseType: !184, size: 32)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "XOFF2", scope: !4251, file: !78, line: 569, baseType: !184, size: 32)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "AUTOBAUD_EN", scope: !4219, file: !78, line: 571, baseType: !184, size: 32, offset: 256)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "HIGHSPEED", scope: !4219, file: !78, line: 572, baseType: !184, size: 32, offset: 288)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "SAMPLE_COUNT", scope: !4219, file: !78, line: 573, baseType: !184, size: 32, offset: 320)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "SAMPLE_POINT", scope: !4219, file: !78, line: 574, baseType: !184, size: 32, offset: 352)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "AUTOBAUD_REG", scope: !4219, file: !78, line: 575, baseType: !188, size: 32, offset: 384)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "RATEFIX_AD", scope: !4219, file: !78, line: 576, baseType: !184, size: 32, offset: 416)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "AUTOBAUDSAMPLE", scope: !4219, file: !78, line: 577, baseType: !184, size: 32, offset: 448)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "GUARD", scope: !4219, file: !78, line: 578, baseType: !184, size: 32, offset: 480)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "ESCAPE_DAT", scope: !4219, file: !78, line: 579, baseType: !184, size: 32, offset: 512)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "ESCAPE_EN", scope: !4219, file: !78, line: 580, baseType: !184, size: 32, offset: 544)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "SLEEP_EN", scope: !4219, file: !78, line: 581, baseType: !184, size: 32, offset: 576)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "DMA_EN", scope: !4219, file: !78, line: 582, baseType: !184, size: 32, offset: 608)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "RXTRI_AD", scope: !4219, file: !78, line: 583, baseType: !184, size: 32, offset: 640)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "FRACDIV_L", scope: !4219, file: !78, line: 584, baseType: !184, size: 32, offset: 672)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "FRACDIV_M", scope: !4219, file: !78, line: 585, baseType: !184, size: 32, offset: 704)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "FCR_RD", scope: !4219, file: !78, line: 586, baseType: !188, size: 32, offset: 736)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "TX_ACTIVE_EN", scope: !4219, file: !78, line: 587, baseType: !184, size: 32, offset: 768)
!4272 = !{!4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4287}
!4273 = !DILocalVariable(name: "uartx", arg: 1, scope: !4214, file: !1602, line: 52, type: !4217)
!4274 = !DILocalVariable(name: "actual_baudrate", arg: 2, scope: !4214, file: !1602, line: 52, type: !175)
!4275 = !DILocalVariable(name: "uart_clock", scope: !4214, file: !1602, line: 54, type: !175)
!4276 = !DILocalVariable(name: "integer", scope: !4214, file: !1602, line: 54, type: !175)
!4277 = !DILocalVariable(name: "remainder", scope: !4214, file: !1602, line: 54, type: !175)
!4278 = !DILocalVariable(name: "fraction", scope: !4214, file: !1602, line: 54, type: !175)
!4279 = !DILocalVariable(name: "dll_dlm", scope: !4214, file: !1602, line: 55, type: !175)
!4280 = !DILocalVariable(name: "sample_count", scope: !4214, file: !1602, line: 55, type: !175)
!4281 = !DILocalVariable(name: "sample_point", scope: !4214, file: !1602, line: 55, type: !175)
!4282 = !DILocalVariable(name: "temp_lcr", scope: !4214, file: !1602, line: 55, type: !175)
!4283 = !DILocalVariable(name: "fraction_L_mapping", scope: !4214, file: !1602, line: 56, type: !4284)
!4284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 320, elements: !4285)
!4285 = !{!4286}
!4286 = !DISubrange(count: 10)
!4287 = !DILocalVariable(name: "fraction_M_mapping", scope: !4214, file: !1602, line: 57, type: !4284)
!4288 = !DILocation(line: 0, scope: !4214)
!4289 = !DILocation(line: 56, column: 14, scope: !4214)
!4290 = !DILocation(line: 57, column: 5, scope: !4214)
!4291 = !DILocation(line: 57, column: 14, scope: !4214)
!4292 = !DILocation(line: 59, column: 12, scope: !4214)
!4293 = !DILocation(line: 59, column: 23, scope: !4214)
!4294 = !DILocation(line: 60, column: 12, scope: !4214)
!4295 = !DILocation(line: 60, column: 22, scope: !4214)
!4296 = !DILocation(line: 61, column: 12, scope: !4214)
!4297 = !DILocation(line: 61, column: 22, scope: !4214)
!4298 = !DILocation(line: 63, column: 9, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4214, file: !1602, line: 63, column: 9)
!4300 = !DILocation(line: 63, column: 9, scope: !4214)
!4301 = !DILocation(line: 64, column: 22, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4299, file: !1602, line: 63, column: 37)
!4303 = !DILocation(line: 64, column: 45, scope: !4302)
!4304 = !DILocation(line: 65, column: 5, scope: !4302)
!4305 = !DILocation(line: 0, scope: !4299)
!4306 = !DILocation(line: 69, column: 45, scope: !4214)
!4307 = !DILocation(line: 69, column: 26, scope: !4214)
!4308 = !DILocation(line: 70, column: 30, scope: !4214)
!4309 = !DILocation(line: 70, column: 36, scope: !4214)
!4310 = !DILocation(line: 70, column: 63, scope: !4214)
!4311 = !DILocation(line: 71, column: 20, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4214, file: !1602, line: 71, column: 9)
!4313 = !DILocation(line: 71, column: 26, scope: !4312)
!4314 = !DILocation(line: 77, column: 5, scope: !4214)
!4315 = !DILocation(line: 77, column: 25, scope: !4214)
!4316 = !DILocation(line: 78, column: 16, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4214, file: !1602, line: 77, column: 32)
!4318 = distinct !{!4318, !4314, !4319}
!4319 = !DILocation(line: 80, column: 5, scope: !4214)
!4320 = !DILocation(line: 82, column: 35, scope: !4214)
!4321 = !DILocation(line: 82, column: 66, scope: !4214)
!4322 = !DILocation(line: 84, column: 18, scope: !4214)
!4323 = !DILocation(line: 85, column: 34, scope: !4214)
!4324 = !DILocation(line: 85, column: 39, scope: !4214)
!4325 = !DILocation(line: 87, column: 12, scope: !4214)
!4326 = !DILocation(line: 87, column: 22, scope: !4214)
!4327 = !DILocation(line: 89, column: 23, scope: !4214)
!4328 = !DILocation(line: 90, column: 27, scope: !4214)
!4329 = !DILocation(line: 90, column: 16, scope: !4214)
!4330 = !DILocation(line: 91, column: 38, scope: !4214)
!4331 = !DILocation(line: 91, column: 24, scope: !4214)
!4332 = !DILocation(line: 91, column: 28, scope: !4214)
!4333 = !DILocation(line: 92, column: 35, scope: !4214)
!4334 = !DILocation(line: 92, column: 41, scope: !4214)
!4335 = !DILocation(line: 92, column: 20, scope: !4214)
!4336 = !DILocation(line: 92, column: 24, scope: !4214)
!4337 = !DILocation(line: 93, column: 16, scope: !4214)
!4338 = !DILocation(line: 95, column: 12, scope: !4214)
!4339 = !DILocation(line: 95, column: 25, scope: !4214)
!4340 = !DILocation(line: 96, column: 12, scope: !4214)
!4341 = !DILocation(line: 96, column: 25, scope: !4214)
!4342 = !DILocation(line: 98, column: 24, scope: !4214)
!4343 = !DILocation(line: 98, column: 22, scope: !4214)
!4344 = !DILocation(line: 99, column: 24, scope: !4214)
!4345 = !DILocation(line: 99, column: 22, scope: !4214)
!4346 = !DILocation(line: 101, column: 25, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !4214, file: !1602, line: 101, column: 9)
!4348 = !DILocation(line: 101, column: 9, scope: !4214)
!4349 = !DILocation(line: 102, column: 16, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4347, file: !1602, line: 101, column: 37)
!4351 = !DILocation(line: 102, column: 22, scope: !4350)
!4352 = !DILocation(line: 103, column: 5, scope: !4350)
!4353 = !DILocation(line: 104, column: 1, scope: !4214)
!4354 = distinct !DISubprogram(name: "uart_set_format", scope: !1602, file: !1602, line: 106, type: !4355, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1601, retainedNodes: !4357)
!4355 = !DISubroutineType(types: !4356)
!4356 = !{null, !4217, !3421, !3423, !3425}
!4357 = !{!4358, !4359, !4360, !4361, !4362}
!4358 = !DILocalVariable(name: "uartx", arg: 1, scope: !4354, file: !1602, line: 106, type: !4217)
!4359 = !DILocalVariable(name: "word_length", arg: 2, scope: !4354, file: !1602, line: 107, type: !3421)
!4360 = !DILocalVariable(name: "stop_bit", arg: 3, scope: !4354, file: !1602, line: 108, type: !3423)
!4361 = !DILocalVariable(name: "parity", arg: 4, scope: !4354, file: !1602, line: 109, type: !3425)
!4362 = !DILocalVariable(name: "byte", scope: !4354, file: !1602, line: 111, type: !4363)
!4363 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !176, line: 36, baseType: !4364)
!4364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !178, line: 57, baseType: !1359)
!4365 = !DILocation(line: 0, scope: !4354)
!4366 = !DILocation(line: 114, column: 19, scope: !4354)
!4367 = !DILocation(line: 115, column: 16, scope: !4354)
!4368 = !DILocation(line: 118, column: 10, scope: !4354)
!4369 = !DILocation(line: 119, column: 5, scope: !4354)
!4370 = !DILocation(line: 124, column: 18, scope: !4371)
!4371 = distinct !DILexicalBlock(scope: !4354, file: !1602, line: 119, column: 26)
!4372 = !DILocation(line: 125, column: 13, scope: !4371)
!4373 = !DILocation(line: 127, column: 18, scope: !4371)
!4374 = !DILocation(line: 128, column: 13, scope: !4371)
!4375 = !DILocation(line: 130, column: 18, scope: !4371)
!4376 = !DILocation(line: 131, column: 13, scope: !4371)
!4377 = !DILocation(line: 137, column: 10, scope: !4354)
!4378 = !DILocation(line: 138, column: 5, scope: !4354)
!4379 = !DILocation(line: 151, column: 5, scope: !4354)
!4380 = !DILocation(line: 166, column: 18, scope: !4354)
!4381 = !DILocation(line: 166, column: 16, scope: !4354)
!4382 = !DILocation(line: 167, column: 1, scope: !4354)
!4383 = distinct !DISubprogram(name: "uart_put_char_block", scope: !1602, file: !1602, line: 169, type: !4384, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1601, retainedNodes: !4386)
!4384 = !DISubroutineType(types: !4385)
!4385 = !{null, !4217, !378}
!4386 = !{!4387, !4388, !4389}
!4387 = !DILocalVariable(name: "uartx", arg: 1, scope: !4383, file: !1602, line: 169, type: !4217)
!4388 = !DILocalVariable(name: "byte", arg: 2, scope: !4383, file: !1602, line: 169, type: !378)
!4389 = !DILocalVariable(name: "LSR", scope: !4383, file: !1602, line: 171, type: !4363)
!4390 = !DILocation(line: 0, scope: !4383)
!4391 = !DILocation(line: 173, column: 5, scope: !4383)
!4392 = !DILocation(line: 174, column: 31, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !4383, file: !1602, line: 173, column: 15)
!4394 = !DILocation(line: 175, column: 17, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4393, file: !1602, line: 175, column: 13)
!4396 = !DILocation(line: 175, column: 13, scope: !4393)
!4397 = distinct !{!4397, !4391, !4398}
!4398 = !DILocation(line: 179, column: 5, scope: !4383)
!4399 = !DILocation(line: 176, column: 38, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4395, file: !1602, line: 175, column: 39)
!4401 = !DILocation(line: 176, column: 32, scope: !4400)
!4402 = !DILocation(line: 176, column: 36, scope: !4400)
!4403 = !DILocation(line: 180, column: 1, scope: !4383)
!4404 = distinct !DISubprogram(name: "uart_get_char_block", scope: !1602, file: !1602, line: 182, type: !4405, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1601, retainedNodes: !4407)
!4405 = !DISubroutineType(types: !4406)
!4406 = !{!378, !4217}
!4407 = !{!4408, !4409, !4410}
!4408 = !DILocalVariable(name: "uartx", arg: 1, scope: !4404, file: !1602, line: 182, type: !4217)
!4409 = !DILocalVariable(name: "LSR", scope: !4404, file: !1602, line: 184, type: !4363)
!4410 = !DILocalVariable(name: "byte", scope: !4404, file: !1602, line: 185, type: !378)
!4411 = !DILocation(line: 0, scope: !4404)
!4412 = !DILocation(line: 187, column: 5, scope: !4404)
!4413 = !DILocation(line: 188, column: 31, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4404, file: !1602, line: 187, column: 15)
!4415 = !DILocation(line: 189, column: 17, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4414, file: !1602, line: 189, column: 13)
!4417 = !DILocation(line: 189, column: 13, scope: !4414)
!4418 = distinct !{!4418, !4412, !4419}
!4419 = !DILocation(line: 193, column: 5, scope: !4404)
!4420 = !DILocation(line: 190, column: 48, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4416, file: !1602, line: 189, column: 37)
!4422 = !DILocation(line: 190, column: 20, scope: !4421)
!4423 = !DILocation(line: 195, column: 5, scope: !4404)
!4424 = distinct !DISubprogram(name: "uart_get_char_unblocking", scope: !1602, file: !1602, line: 198, type: !4425, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1601, retainedNodes: !4427)
!4425 = !DISubroutineType(types: !4426)
!4426 = !{!175, !4217}
!4427 = !{!4428, !4429, !4430}
!4428 = !DILocalVariable(name: "uartx", arg: 1, scope: !4424, file: !1602, line: 198, type: !4217)
!4429 = !DILocalVariable(name: "LSR", scope: !4424, file: !1602, line: 200, type: !4363)
!4430 = !DILocalVariable(name: "value", scope: !4424, file: !1602, line: 201, type: !175)
!4431 = !DILocation(line: 0, scope: !4424)
!4432 = !DILocation(line: 203, column: 27, scope: !4424)
!4433 = !DILocation(line: 204, column: 13, scope: !4434)
!4434 = distinct !DILexicalBlock(scope: !4424, file: !1602, line: 204, column: 9)
!4435 = !DILocation(line: 204, column: 9, scope: !4424)
!4436 = !DILocation(line: 205, column: 36, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4434, file: !1602, line: 204, column: 33)
!4438 = !DILocation(line: 206, column: 5, scope: !4437)
!4439 = !DILocation(line: 0, scope: !4434)
!4440 = !DILocation(line: 210, column: 5, scope: !4424)
!4441 = distinct !DISubprogram(name: "uart_set_hardware_flowcontrol", scope: !1602, file: !1602, line: 213, type: !4442, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1601, retainedNodes: !4444)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{null, !4217}
!4444 = !{!4445, !4446, !4447}
!4445 = !DILocalVariable(name: "uartx", arg: 1, scope: !4441, file: !1602, line: 213, type: !4217)
!4446 = !DILocalVariable(name: "EFR", scope: !4441, file: !1602, line: 215, type: !4363)
!4447 = !DILocalVariable(name: "LCR", scope: !4441, file: !1602, line: 215, type: !4363)
!4448 = !DILocation(line: 0, scope: !4441)
!4449 = !DILocation(line: 217, column: 18, scope: !4441)
!4450 = !DILocation(line: 219, column: 16, scope: !4441)
!4451 = !DILocation(line: 220, column: 30, scope: !4441)
!4452 = !DILocation(line: 222, column: 30, scope: !4441)
!4453 = !DILocation(line: 222, column: 28, scope: !4441)
!4454 = !DILocation(line: 223, column: 12, scope: !4441)
!4455 = !DILocation(line: 223, column: 22, scope: !4441)
!4456 = !DILocation(line: 225, column: 16, scope: !4441)
!4457 = !DILocation(line: 226, column: 21, scope: !4441)
!4458 = !DILocation(line: 226, column: 25, scope: !4441)
!4459 = !DILocation(line: 228, column: 18, scope: !4441)
!4460 = !DILocation(line: 228, column: 16, scope: !4441)
!4461 = !DILocation(line: 229, column: 1, scope: !4441)
!4462 = distinct !DISubprogram(name: "uart_set_software_flowcontrol", scope: !1602, file: !1602, line: 231, type: !4463, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1601, retainedNodes: !4465)
!4463 = !DISubroutineType(types: !4464)
!4464 = !{null, !4217, !378, !378, !378}
!4465 = !{!4466, !4467, !4468, !4469, !4470, !4471}
!4466 = !DILocalVariable(name: "uartx", arg: 1, scope: !4462, file: !1602, line: 231, type: !4217)
!4467 = !DILocalVariable(name: "xon", arg: 2, scope: !4462, file: !1602, line: 232, type: !378)
!4468 = !DILocalVariable(name: "xoff", arg: 3, scope: !4462, file: !1602, line: 233, type: !378)
!4469 = !DILocalVariable(name: "escape_character", arg: 4, scope: !4462, file: !1602, line: 234, type: !378)
!4470 = !DILocalVariable(name: "EFR", scope: !4462, file: !1602, line: 236, type: !4363)
!4471 = !DILocalVariable(name: "LCR", scope: !4462, file: !1602, line: 236, type: !4363)
!4472 = !DILocation(line: 0, scope: !4462)
!4473 = !DILocation(line: 238, column: 18, scope: !4462)
!4474 = !DILocation(line: 240, column: 16, scope: !4462)
!4475 = !DILocation(line: 241, column: 28, scope: !4462)
!4476 = !DILocation(line: 241, column: 21, scope: !4462)
!4477 = !DILocation(line: 241, column: 26, scope: !4462)
!4478 = !DILocation(line: 242, column: 20, scope: !4462)
!4479 = !DILocation(line: 242, column: 12, scope: !4462)
!4480 = !DILocation(line: 242, column: 18, scope: !4462)
!4481 = !DILocation(line: 243, column: 30, scope: !4462)
!4482 = !DILocation(line: 245, column: 30, scope: !4462)
!4483 = !DILocation(line: 245, column: 28, scope: !4462)
!4484 = !DILocation(line: 246, column: 25, scope: !4462)
!4485 = !DILocation(line: 246, column: 12, scope: !4462)
!4486 = !DILocation(line: 246, column: 23, scope: !4462)
!4487 = !DILocation(line: 247, column: 12, scope: !4462)
!4488 = !DILocation(line: 247, column: 22, scope: !4462)
!4489 = !DILocation(line: 249, column: 18, scope: !4462)
!4490 = !DILocation(line: 249, column: 16, scope: !4462)
!4491 = !DILocation(line: 250, column: 1, scope: !4462)
!4492 = distinct !DISubprogram(name: "uart_disable_flowcontrol", scope: !1602, file: !1602, line: 252, type: !4442, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1601, retainedNodes: !4493)
!4493 = !{!4494, !4495}
!4494 = !DILocalVariable(name: "uartx", arg: 1, scope: !4492, file: !1602, line: 252, type: !4217)
!4495 = !DILocalVariable(name: "LCR", scope: !4492, file: !1602, line: 254, type: !4363)
!4496 = !DILocation(line: 0, scope: !4492)
!4497 = !DILocation(line: 256, column: 18, scope: !4492)
!4498 = !DILocation(line: 258, column: 16, scope: !4492)
!4499 = !DILocation(line: 259, column: 24, scope: !4492)
!4500 = !DILocation(line: 259, column: 28, scope: !4492)
!4501 = !DILocation(line: 261, column: 16, scope: !4492)
!4502 = !DILocation(line: 262, column: 18, scope: !4492)
!4503 = !DILocation(line: 262, column: 16, scope: !4492)
!4504 = !DILocation(line: 263, column: 1, scope: !4492)
!4505 = distinct !DISubprogram(name: "uart_set_fifo", scope: !1602, file: !1602, line: 265, type: !4442, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1601, retainedNodes: !4506)
!4506 = !{!4507, !4508, !4509}
!4507 = !DILocalVariable(name: "uartx", arg: 1, scope: !4505, file: !1602, line: 265, type: !4217)
!4508 = !DILocalVariable(name: "EFR", scope: !4505, file: !1602, line: 267, type: !4363)
!4509 = !DILocalVariable(name: "LCR", scope: !4505, file: !1602, line: 267, type: !4363)
!4510 = !DILocation(line: 0, scope: !4505)
!4511 = !DILocation(line: 269, column: 18, scope: !4505)
!4512 = !DILocation(line: 271, column: 16, scope: !4505)
!4513 = !DILocation(line: 272, column: 30, scope: !4505)
!4514 = !DILocation(line: 274, column: 30, scope: !4505)
!4515 = !DILocation(line: 274, column: 28, scope: !4505)
!4516 = !DILocation(line: 276, column: 16, scope: !4505)
!4517 = !DILocation(line: 277, column: 28, scope: !4505)
!4518 = !DILocation(line: 283, column: 18, scope: !4505)
!4519 = !DILocation(line: 283, column: 16, scope: !4505)
!4520 = !DILocation(line: 284, column: 1, scope: !4505)
!4521 = distinct !DISubprogram(name: "uart_unmask_receive_interrupt", scope: !1602, file: !1602, line: 307, type: !4442, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1601, retainedNodes: !4522)
!4522 = !{!4523, !4524, !4525}
!4523 = !DILocalVariable(name: "uartx", arg: 1, scope: !4521, file: !1602, line: 307, type: !4217)
!4524 = !DILocalVariable(name: "IER", scope: !4521, file: !1602, line: 309, type: !4363)
!4525 = !DILocalVariable(name: "LCR", scope: !4521, file: !1602, line: 309, type: !4363)
!4526 = !DILocation(line: 0, scope: !4521)
!4527 = !DILocation(line: 311, column: 18, scope: !4521)
!4528 = !DILocation(line: 313, column: 16, scope: !4521)
!4529 = !DILocation(line: 314, column: 26, scope: !4521)
!4530 = !DILocation(line: 316, column: 26, scope: !4521)
!4531 = !DILocation(line: 316, column: 24, scope: !4521)
!4532 = !DILocation(line: 318, column: 19, scope: !4521)
!4533 = !DILocation(line: 318, column: 16, scope: !4521)
!4534 = !DILocation(line: 319, column: 1, scope: !4521)
!4535 = distinct !DISubprogram(name: "uart_purge_fifo", scope: !1602, file: !1602, line: 321, type: !4536, scopeLine: 322, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1601, retainedNodes: !4538)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{null, !4217, !1022}
!4538 = !{!4539, !4540, !4541}
!4539 = !DILocalVariable(name: "uartx", arg: 1, scope: !4535, file: !1602, line: 321, type: !4217)
!4540 = !DILocalVariable(name: "is_rx", arg: 2, scope: !4535, file: !1602, line: 321, type: !1022)
!4541 = !DILocalVariable(name: "FCR", scope: !4535, file: !1602, line: 323, type: !4363)
!4542 = !DILocation(line: 0, scope: !4535)
!4543 = !DILocation(line: 327, column: 9, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !4535, file: !1602, line: 327, column: 9)
!4545 = !DILocation(line: 333, column: 24, scope: !4535)
!4546 = !DILocation(line: 333, column: 28, scope: !4535)
!4547 = !DILocation(line: 334, column: 1, scope: !4535)
!4548 = distinct !DISubprogram(name: "uart_query_interrupt_type", scope: !1602, file: !1602, line: 336, type: !4549, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1601, retainedNodes: !4552)
!4549 = !DISubroutineType(types: !4550)
!4550 = !{!4551, !4217}
!4551 = !DIDerivedType(tag: DW_TAG_typedef, name: "uart_interrupt_type_t", file: !648, line: 55, baseType: !704)
!4552 = !{!4553, !4554, !4555, !4556}
!4553 = !DILocalVariable(name: "uartx", arg: 1, scope: !4548, file: !1602, line: 336, type: !4217)
!4554 = !DILocalVariable(name: "IIR", scope: !4548, file: !1602, line: 338, type: !4363)
!4555 = !DILocalVariable(name: "LSR", scope: !4548, file: !1602, line: 338, type: !4363)
!4556 = !DILocalVariable(name: "type", scope: !4548, file: !1602, line: 339, type: !4551)
!4557 = !DILocation(line: 0, scope: !4548)
!4558 = !DILocation(line: 341, column: 30, scope: !4548)
!4559 = !DILocation(line: 342, column: 13, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4548, file: !1602, line: 342, column: 9)
!4561 = !DILocation(line: 342, column: 9, scope: !4548)
!4562 = !DILocation(line: 346, column: 17, scope: !4548)
!4563 = !DILocation(line: 346, column: 5, scope: !4548)
!4564 = !DILocation(line: 350, column: 13, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4548, file: !1602, line: 346, column: 37)
!4566 = !DILocation(line: 353, column: 35, scope: !4565)
!4567 = !DILocation(line: 354, column: 21, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4565, file: !1602, line: 354, column: 17)
!4569 = !DILocation(line: 363, column: 13, scope: !4565)
!4570 = !DILocation(line: 369, column: 1, scope: !4548)
!4571 = distinct !DISubprogram(name: "uart_verify_error", scope: !1602, file: !1602, line: 371, type: !4572, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1601, retainedNodes: !4574)
!4572 = !DISubroutineType(types: !4573)
!4573 = !{!1022, !4217}
!4574 = !{!4575, !4576, !4577}
!4575 = !DILocalVariable(name: "uartx", arg: 1, scope: !4571, file: !1602, line: 371, type: !4217)
!4576 = !DILocalVariable(name: "LSR", scope: !4571, file: !1602, line: 373, type: !4363)
!4577 = !DILocalVariable(name: "ret", scope: !4571, file: !1602, line: 374, type: !1022)
!4578 = !DILocation(line: 0, scope: !4571)
!4579 = !DILocation(line: 376, column: 27, scope: !4571)
!4580 = !DILocation(line: 377, column: 15, scope: !4581)
!4581 = distinct !DILexicalBlock(scope: !4571, file: !1602, line: 377, column: 9)
!4582 = !DILocation(line: 377, column: 9, scope: !4571)
!4583 = !DILocation(line: 381, column: 5, scope: !4571)
!4584 = distinct !DISubprogram(name: "uart_clear_timeout_interrupt", scope: !1602, file: !1602, line: 384, type: !4442, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1601, retainedNodes: !4585)
!4585 = !{!4586, !4587}
!4586 = !DILocalVariable(name: "uartx", arg: 1, scope: !4584, file: !1602, line: 384, type: !4217)
!4587 = !DILocalVariable(name: "DMA_EN", scope: !4584, file: !1602, line: 386, type: !4363)
!4588 = !DILocation(line: 0, scope: !4584)
!4589 = !DILocation(line: 388, column: 21, scope: !4584)
!4590 = !DILocation(line: 390, column: 1, scope: !4584)
!4591 = distinct !DISubprogram(name: "uart_reset_default_value", scope: !1602, file: !1602, line: 392, type: !4442, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1601, retainedNodes: !4592)
!4592 = !{!4593}
!4593 = !DILocalVariable(name: "uartx", arg: 1, scope: !4591, file: !1602, line: 392, type: !4217)
!4594 = !DILocation(line: 0, scope: !4591)
!4595 = !DILocation(line: 394, column: 12, scope: !4591)
!4596 = !DILocation(line: 394, column: 16, scope: !4591)
!4597 = !DILocation(line: 395, column: 24, scope: !4591)
!4598 = !DILocation(line: 395, column: 28, scope: !4591)
!4599 = !DILocation(line: 396, column: 21, scope: !4591)
!4600 = !DILocation(line: 396, column: 26, scope: !4591)
!4601 = !DILocation(line: 397, column: 12, scope: !4591)
!4602 = !DILocation(line: 397, column: 18, scope: !4591)
!4603 = !DILocation(line: 399, column: 16, scope: !4591)
!4604 = !DILocation(line: 400, column: 24, scope: !4591)
!4605 = !DILocation(line: 400, column: 28, scope: !4591)
!4606 = !DILocation(line: 401, column: 20, scope: !4591)
!4607 = !DILocation(line: 401, column: 24, scope: !4591)
!4608 = !DILocation(line: 403, column: 16, scope: !4591)
!4609 = !DILocation(line: 404, column: 24, scope: !4591)
!4610 = !DILocation(line: 405, column: 28, scope: !4591)
!4611 = !DILocation(line: 407, column: 16, scope: !4591)
!4612 = !DILocation(line: 408, column: 28, scope: !4591)
!4613 = !DILocation(line: 409, column: 16, scope: !4591)
!4614 = !DILocation(line: 411, column: 25, scope: !4591)
!4615 = !DILocation(line: 412, column: 22, scope: !4591)
!4616 = !DILocation(line: 412, column: 26, scope: !4591)
!4617 = !DILocation(line: 413, column: 12, scope: !4591)
!4618 = !DILocation(line: 413, column: 24, scope: !4591)
!4619 = !DILocation(line: 414, column: 12, scope: !4591)
!4620 = !DILocation(line: 414, column: 22, scope: !4591)
!4621 = !DILocation(line: 415, column: 12, scope: !4591)
!4622 = !DILocation(line: 415, column: 25, scope: !4591)
!4623 = !DILocation(line: 416, column: 12, scope: !4591)
!4624 = !DILocation(line: 416, column: 25, scope: !4591)
!4625 = !DILocation(line: 417, column: 12, scope: !4591)
!4626 = !DILocation(line: 417, column: 23, scope: !4591)
!4627 = !DILocation(line: 418, column: 12, scope: !4591)
!4628 = !DILocation(line: 418, column: 27, scope: !4591)
!4629 = !DILocation(line: 419, column: 12, scope: !4591)
!4630 = !DILocation(line: 419, column: 18, scope: !4591)
!4631 = !DILocation(line: 420, column: 12, scope: !4591)
!4632 = !DILocation(line: 420, column: 23, scope: !4591)
!4633 = !DILocation(line: 421, column: 12, scope: !4591)
!4634 = !DILocation(line: 421, column: 22, scope: !4591)
!4635 = !DILocation(line: 422, column: 12, scope: !4591)
!4636 = !DILocation(line: 422, column: 21, scope: !4591)
!4637 = !DILocation(line: 423, column: 12, scope: !4591)
!4638 = !DILocation(line: 423, column: 19, scope: !4591)
!4639 = !DILocation(line: 424, column: 23, scope: !4591)
!4640 = !DILocation(line: 425, column: 12, scope: !4591)
!4641 = !DILocation(line: 425, column: 22, scope: !4591)
!4642 = !DILocation(line: 426, column: 12, scope: !4591)
!4643 = !DILocation(line: 426, column: 22, scope: !4591)
!4644 = !DILocation(line: 427, column: 1, scope: !4591)
!4645 = distinct !DISubprogram(name: "uart_query_empty", scope: !1602, file: !1602, line: 429, type: !4442, scopeLine: 430, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1601, retainedNodes: !4646)
!4646 = !{!4647}
!4647 = !DILocalVariable(name: "uartx", arg: 1, scope: !4645, file: !1602, line: 429, type: !4217)
!4648 = !DILocation(line: 0, scope: !4645)
!4649 = !DILocation(line: 431, column: 5, scope: !4645)
!4650 = !DILocation(line: 431, column: 31, scope: !4645)
!4651 = !DILocation(line: 431, column: 36, scope: !4645)
!4652 = !DILocation(line: 431, column: 12, scope: !4645)
!4653 = distinct !{!4653, !4649, !4654}
!4654 = !DILocation(line: 431, column: 44, scope: !4645)
!4655 = !DILocation(line: 432, column: 1, scope: !4645)
!4656 = distinct !DISubprogram(name: "uart_port_to_dma_channel", scope: !702, file: !702, line: 134, type: !4657, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !4659)
!4657 = !DISubroutineType(types: !4658)
!4658 = !{!3172, !653, !1022}
!4659 = !{!4660, !4661, !4662}
!4660 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4656, file: !702, line: 134, type: !653)
!4661 = !DILocalVariable(name: "is_rx", arg: 2, scope: !4656, file: !702, line: 134, type: !1022)
!4662 = !DILocalVariable(name: "dma_channel", scope: !4656, file: !702, line: 136, type: !3172)
!4663 = !DILocation(line: 0, scope: !4656)
!4664 = !DILocation(line: 138, column: 5, scope: !4656)
!4665 = !DILocation(line: 140, column: 17, scope: !4666)
!4666 = distinct !DILexicalBlock(scope: !4667, file: !702, line: 140, column: 17)
!4667 = distinct !DILexicalBlock(scope: !4656, file: !702, line: 138, column: 24)
!4668 = !DILocation(line: 147, column: 17, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4667, file: !702, line: 147, column: 17)
!4670 = !DILocation(line: 154, column: 17, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4667, file: !702, line: 154, column: 17)
!4672 = !DILocation(line: 161, column: 17, scope: !4673)
!4673 = distinct !DILexicalBlock(scope: !4667, file: !702, line: 161, column: 17)
!4674 = !DILocation(line: 171, column: 5, scope: !4656)
!4675 = distinct !DISubprogram(name: "uart_dma_channel_to_callback_data", scope: !702, file: !702, line: 174, type: !4676, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !4684)
!4676 = !DISubroutineType(types: !4677)
!4677 = !{null, !3172, !4678}
!4678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 32)
!4679 = !DIDerivedType(tag: DW_TAG_typedef, name: "uart_dma_callback_data_t", file: !648, line: 96, baseType: !4680)
!4680 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !648, line: 93, size: 64, elements: !4681)
!4681 = !{!4682, !4683}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "is_rx", scope: !4680, file: !648, line: 94, baseType: !211, size: 8)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "uart_port", scope: !4680, file: !648, line: 95, baseType: !653, size: 32, offset: 32)
!4684 = !{!4685, !4686}
!4685 = !DILocalVariable(name: "dma_channel", arg: 1, scope: !4675, file: !702, line: 174, type: !3172)
!4686 = !DILocalVariable(name: "user_data", arg: 2, scope: !4675, file: !702, line: 174, type: !4678)
!4687 = !DILocation(line: 0, scope: !4675)
!4688 = !DILocation(line: 176, column: 5, scope: !4675)
!4689 = !DILocation(line: 0, scope: !4690)
!4690 = distinct !DILexicalBlock(scope: !4675, file: !702, line: 176, column: 26)
!4691 = !DILocation(line: 212, column: 1, scope: !4675)
!4692 = distinct !DISubprogram(name: "uart_enable_dma", scope: !702, file: !702, line: 214, type: !4693, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !4695)
!4693 = !DISubroutineType(types: !4694)
!4694 = !{null, !715}
!4695 = !{!4696}
!4696 = !DILocalVariable(name: "uartx", arg: 1, scope: !4692, file: !702, line: 214, type: !715)
!4697 = !DILocation(line: 0, scope: !4692)
!4698 = !DILocation(line: 216, column: 12, scope: !4692)
!4699 = !DILocation(line: 216, column: 19, scope: !4692)
!4700 = !DILocation(line: 217, column: 1, scope: !4692)
!4701 = distinct !DISubprogram(name: "uart_interrupt_handler", scope: !702, file: !702, line: 219, type: !846, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !701, retainedNodes: !4702)
!4702 = !{!4703, !4704, !4705, !4706}
!4703 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4701, file: !702, line: 219, type: !780)
!4704 = !DILocalVariable(name: "uart_port", scope: !4701, file: !702, line: 221, type: !653)
!4705 = !DILocalVariable(name: "type", scope: !4701, file: !702, line: 222, type: !4551)
!4706 = !DILocalVariable(name: "uartx", scope: !4701, file: !702, line: 223, type: !715)
!4707 = !DILocation(line: 0, scope: !4701)
!4708 = !DILocation(line: 225, column: 5, scope: !4701)
!4709 = !DILocation(line: 242, column: 13, scope: !4701)
!4710 = !DILocation(line: 243, column: 12, scope: !4701)
!4711 = !DILocation(line: 245, column: 5, scope: !4701)
!4712 = !DILocation(line: 248, column: 13, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4701, file: !702, line: 245, column: 19)
!4714 = !DILocation(line: 249, column: 13, scope: !4713)
!4715 = !DILocation(line: 252, column: 13, scope: !4713)
!4716 = !DILocation(line: 253, column: 13, scope: !4713)
!4717 = !DILocation(line: 263, column: 13, scope: !4713)
!4718 = !DILocation(line: 264, column: 13, scope: !4713)
!4719 = !DILocation(line: 276, column: 13, scope: !4713)
!4720 = !DILocation(line: 278, column: 1, scope: !4701)
!4721 = distinct !DISubprogram(name: "eint_ack_interrupt", scope: !787, file: !787, line: 77, type: !4722, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4724)
!4722 = !DISubroutineType(types: !4723)
!4723 = !{null, !175}
!4724 = !{!4725}
!4725 = !DILocalVariable(name: "eint_number", arg: 1, scope: !4721, file: !787, line: 77, type: !175)
!4726 = !DILocation(line: 0, scope: !4721)
!4727 = !DILocation(line: 79, column: 37, scope: !4721)
!4728 = !DILocation(line: 79, column: 5, scope: !4721)
!4729 = !DILocation(line: 79, column: 20, scope: !4721)
!4730 = !DILocation(line: 79, column: 32, scope: !4721)
!4731 = !DILocation(line: 80, column: 1, scope: !4721)
!4732 = !DILocation(line: 0, scope: !852)
!4733 = !DILocation(line: 136, column: 9, scope: !4734)
!4734 = distinct !DILexicalBlock(scope: !852, file: !787, line: 136, column: 9)
!4735 = !DILocation(line: 136, column: 9, scope: !852)
!4736 = !DILocation(line: 137, column: 9, scope: !4737)
!4737 = distinct !DILexicalBlock(scope: !4734, file: !787, line: 136, column: 25)
!4738 = !DILocation(line: 138, column: 9, scope: !4737)
!4739 = !DILocation(line: 139, column: 19, scope: !4737)
!4740 = !DILocation(line: 140, column: 5, scope: !4737)
!4741 = !DILocation(line: 142, column: 21, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !852, file: !787, line: 142, column: 9)
!4743 = !DILocation(line: 142, column: 44, scope: !4742)
!4744 = !DILocation(line: 146, column: 12, scope: !852)
!4745 = !DILocation(line: 147, column: 38, scope: !852)
!4746 = !DILocation(line: 147, column: 52, scope: !852)
!4747 = !DILocation(line: 148, column: 38, scope: !852)
!4748 = !DILocation(line: 148, column: 48, scope: !852)
!4749 = !DILocation(line: 150, column: 66, scope: !852)
!4750 = !DILocation(line: 150, column: 14, scope: !852)
!4751 = !DILocation(line: 151, column: 68, scope: !852)
!4752 = !DILocation(line: 151, column: 15, scope: !852)
!4753 = !DILocation(line: 151, column: 12, scope: !852)
!4754 = !DILocation(line: 153, column: 5, scope: !852)
!4755 = !DILocation(line: 155, column: 5, scope: !852)
!4756 = !DILocation(line: 156, column: 5, scope: !852)
!4757 = !DILocation(line: 157, column: 5, scope: !852)
!4758 = !DILocation(line: 158, column: 1, scope: !852)
!4759 = distinct !DISubprogram(name: "hal_eint_isr", scope: !787, file: !787, line: 404, type: !4722, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4760)
!4760 = !{!4761, !4762, !4763}
!4761 = !DILocalVariable(name: "index", arg: 1, scope: !4759, file: !787, line: 404, type: !175)
!4762 = !DILocalVariable(name: "status", scope: !4759, file: !787, line: 406, type: !175)
!4763 = !DILocalVariable(name: "eint_index", scope: !4759, file: !787, line: 407, type: !175)
!4764 = !DILocation(line: 0, scope: !4759)
!4765 = !DILocation(line: 409, column: 14, scope: !4759)
!4766 = !DILocation(line: 410, column: 16, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4759, file: !787, line: 410, column: 9)
!4768 = !DILocation(line: 410, column: 9, scope: !4759)
!4769 = !DILocation(line: 415, column: 25, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4771, file: !787, line: 415, column: 13)
!4771 = distinct !DILexicalBlock(scope: !4772, file: !787, line: 414, column: 74)
!4772 = distinct !DILexicalBlock(scope: !4773, file: !787, line: 414, column: 5)
!4773 = distinct !DILexicalBlock(scope: !4759, file: !787, line: 414, column: 5)
!4774 = !DILocation(line: 415, column: 20, scope: !4770)
!4775 = !DILocation(line: 415, column: 13, scope: !4771)
!4776 = !DILocation(line: 416, column: 13, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4770, file: !787, line: 415, column: 41)
!4778 = !DILocation(line: 417, column: 13, scope: !4777)
!4779 = !DILocation(line: 418, column: 49, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4777, file: !787, line: 418, column: 17)
!4781 = !DILocation(line: 418, column: 17, scope: !4780)
!4782 = !DILocation(line: 418, column: 17, scope: !4777)
!4783 = !DILocation(line: 419, column: 95, scope: !4784)
!4784 = distinct !DILexicalBlock(scope: !4780, file: !787, line: 418, column: 64)
!4785 = !DILocation(line: 419, column: 17, scope: !4784)
!4786 = !DILocation(line: 420, column: 13, scope: !4784)
!4787 = !DILocation(line: 421, column: 17, scope: !4788)
!4788 = distinct !DILexicalBlock(scope: !4780, file: !787, line: 420, column: 20)
!4789 = !DILocation(line: 414, column: 70, scope: !4772)
!4790 = !DILocation(line: 414, column: 37, scope: !4772)
!4791 = !DILocation(line: 414, column: 5, scope: !4773)
!4792 = distinct !{!4792, !4791, !4793}
!4793 = !DILocation(line: 424, column: 5, scope: !4773)
!4794 = !DILocation(line: 425, column: 1, scope: !4759)
!4795 = distinct !DISubprogram(name: "hal_eint_set_trigger_mode", scope: !787, file: !787, line: 204, type: !4796, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4798)
!4796 = !DISubroutineType(types: !4797)
!4797 = !{!855, !848, !862}
!4798 = !{!4799, !4800, !4801}
!4799 = !DILocalVariable(name: "eint_number", arg: 1, scope: !4795, file: !787, line: 204, type: !848)
!4800 = !DILocalVariable(name: "trigger_mode", arg: 2, scope: !4795, file: !787, line: 205, type: !862)
!4801 = !DILocalVariable(name: "mask", scope: !4795, file: !787, line: 207, type: !175)
!4802 = !DILocation(line: 0, scope: !4795)
!4803 = !DILocation(line: 209, column: 21, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4795, file: !787, line: 209, column: 9)
!4805 = !DILocation(line: 209, column: 9, scope: !4795)
!4806 = !DILocation(line: 213, column: 12, scope: !4795)
!4807 = !DILocation(line: 214, column: 9, scope: !4795)
!4808 = !DILocation(line: 215, column: 46, scope: !4809)
!4809 = distinct !DILexicalBlock(scope: !4810, file: !787, line: 214, column: 45)
!4810 = distinct !DILexicalBlock(scope: !4795, file: !787, line: 214, column: 9)
!4811 = !DILocation(line: 215, column: 10, scope: !4809)
!4812 = !DILocation(line: 215, column: 25, scope: !4809)
!4813 = !DILocation(line: 215, column: 40, scope: !4809)
!4814 = !DILocation(line: 216, column: 60, scope: !4809)
!4815 = !DILocation(line: 216, column: 72, scope: !4809)
!4816 = !DILocation(line: 217, column: 5, scope: !4809)
!4817 = !DILocation(line: 218, column: 46, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4819, file: !787, line: 217, column: 53)
!4819 = distinct !DILexicalBlock(scope: !4810, file: !787, line: 217, column: 16)
!4820 = !DILocation(line: 218, column: 10, scope: !4818)
!4821 = !DILocation(line: 218, column: 25, scope: !4818)
!4822 = !DILocation(line: 218, column: 40, scope: !4818)
!4823 = !DILocation(line: 219, column: 60, scope: !4818)
!4824 = !DILocation(line: 219, column: 72, scope: !4818)
!4825 = !DILocation(line: 220, column: 5, scope: !4818)
!4826 = !DILocation(line: 221, column: 46, scope: !4827)
!4827 = distinct !DILexicalBlock(scope: !4828, file: !787, line: 220, column: 55)
!4828 = distinct !DILexicalBlock(scope: !4819, file: !787, line: 220, column: 16)
!4829 = !DILocation(line: 221, column: 10, scope: !4827)
!4830 = !DILocation(line: 221, column: 25, scope: !4827)
!4831 = !DILocation(line: 221, column: 40, scope: !4827)
!4832 = !DILocation(line: 222, column: 60, scope: !4827)
!4833 = !DILocation(line: 222, column: 72, scope: !4827)
!4834 = !DILocation(line: 223, column: 5, scope: !4827)
!4835 = !DILocation(line: 224, column: 46, scope: !4836)
!4836 = distinct !DILexicalBlock(scope: !4837, file: !787, line: 223, column: 54)
!4837 = distinct !DILexicalBlock(scope: !4828, file: !787, line: 223, column: 16)
!4838 = !DILocation(line: 224, column: 10, scope: !4836)
!4839 = !DILocation(line: 224, column: 25, scope: !4836)
!4840 = !DILocation(line: 224, column: 40, scope: !4836)
!4841 = !DILocation(line: 225, column: 60, scope: !4836)
!4842 = !DILocation(line: 225, column: 72, scope: !4836)
!4843 = !DILocation(line: 226, column: 5, scope: !4836)
!4844 = !DILocation(line: 228, column: 46, scope: !4845)
!4845 = distinct !DILexicalBlock(scope: !4846, file: !787, line: 226, column: 66)
!4846 = distinct !DILexicalBlock(scope: !4837, file: !787, line: 226, column: 16)
!4847 = !DILocation(line: 228, column: 10, scope: !4845)
!4848 = !DILocation(line: 228, column: 25, scope: !4845)
!4849 = !DILocation(line: 228, column: 40, scope: !4845)
!4850 = !DILocation(line: 229, column: 25, scope: !4845)
!4851 = !DILocation(line: 229, column: 49, scope: !4845)
!4852 = !DILocation(line: 237, column: 1, scope: !4795)
!4853 = distinct !DISubprogram(name: "hal_eint_set_debounce_time", scope: !787, file: !787, line: 239, type: !4854, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4856)
!4854 = !DISubroutineType(types: !4855)
!4855 = !{!855, !848, !175}
!4856 = !{!4857, !4858, !4859, !4860, !4861}
!4857 = !DILocalVariable(name: "eint_number", arg: 1, scope: !4853, file: !787, line: 239, type: !848)
!4858 = !DILocalVariable(name: "time_ms", arg: 2, scope: !4853, file: !787, line: 239, type: !175)
!4859 = !DILocalVariable(name: "mask", scope: !4853, file: !787, line: 241, type: !175)
!4860 = !DILocalVariable(name: "count", scope: !4853, file: !787, line: 241, type: !175)
!4861 = !DILocalVariable(name: "eint_con", scope: !4853, file: !787, line: 241, type: !175)
!4862 = !DILocation(line: 0, scope: !4853)
!4863 = !DILocation(line: 243, column: 21, scope: !4864)
!4864 = distinct !DILexicalBlock(scope: !4853, file: !787, line: 243, column: 9)
!4865 = !DILocation(line: 243, column: 9, scope: !4853)
!4866 = !DILocation(line: 247, column: 13, scope: !4853)
!4867 = !DILocation(line: 248, column: 12, scope: !4853)
!4868 = !DILocation(line: 249, column: 16, scope: !4853)
!4869 = !DILocation(line: 249, column: 66, scope: !4853)
!4870 = !DILocation(line: 250, column: 14, scope: !4853)
!4871 = !DILocation(line: 251, column: 14, scope: !4853)
!4872 = !DILocation(line: 253, column: 17, scope: !4873)
!4873 = distinct !DILexicalBlock(scope: !4853, file: !787, line: 253, column: 9)
!4874 = !DILocation(line: 253, column: 9, scope: !4853)
!4875 = !DILocation(line: 255, column: 18, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !4873, file: !787, line: 253, column: 23)
!4877 = !DILocation(line: 256, column: 70, scope: !4876)
!4878 = !DILocation(line: 258, column: 5, scope: !4876)
!4879 = !DILocation(line: 260, column: 81, scope: !4880)
!4880 = distinct !DILexicalBlock(scope: !4873, file: !787, line: 259, column: 10)
!4881 = !DILocation(line: 260, column: 70, scope: !4880)
!4882 = !DILocation(line: 261, column: 9, scope: !4880)
!4883 = !DILocation(line: 263, column: 9, scope: !4880)
!4884 = !DILocation(line: 263, column: 59, scope: !4880)
!4885 = !DILocation(line: 263, column: 70, scope: !4880)
!4886 = !DILocation(line: 264, column: 9, scope: !4880)
!4887 = !DILocation(line: 264, column: 59, scope: !4880)
!4888 = !DILocation(line: 264, column: 70, scope: !4880)
!4889 = !DILocation(line: 267, column: 5, scope: !4853)
!4890 = !DILocation(line: 269, column: 5, scope: !4853)
!4891 = !DILocation(line: 270, column: 1, scope: !4853)
!4892 = distinct !DISubprogram(name: "eint_enable_domain", scope: !787, file: !787, line: 63, type: !4893, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4896)
!4893 = !DISubroutineType(types: !4894)
!4894 = !{null, !175, !4895}
!4895 = !DIDerivedType(tag: DW_TAG_typedef, name: "eint_domain_status_t", file: !839, line: 62, baseType: !838)
!4896 = !{!4897, !4898}
!4897 = !DILocalVariable(name: "eint_no", arg: 1, scope: !4892, file: !787, line: 63, type: !175)
!4898 = !DILocalVariable(name: "enable", arg: 2, scope: !4892, file: !787, line: 63, type: !4895)
!4899 = !DILocation(line: 0, scope: !4892)
!4900 = !DILocation(line: 68, column: 46, scope: !4901)
!4901 = distinct !DILexicalBlock(scope: !4902, file: !787, line: 67, column: 12)
!4902 = distinct !DILexicalBlock(scope: !4892, file: !787, line: 65, column: 9)
!4903 = !DILocation(line: 68, column: 9, scope: !4901)
!4904 = !DILocation(line: 68, column: 24, scope: !4901)
!4905 = !DILocation(line: 68, column: 35, scope: !4901)
!4906 = !DILocation(line: 70, column: 1, scope: !4892)
!4907 = distinct !DISubprogram(name: "eint_caculate_debounce_time", scope: !787, file: !787, line: 82, type: !2267, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4908)
!4908 = !{!4909, !4910, !4911}
!4909 = !DILocalVariable(name: "ms", arg: 1, scope: !4907, file: !787, line: 82, type: !175)
!4910 = !DILocalVariable(name: "prescaler", scope: !4907, file: !787, line: 84, type: !175)
!4911 = !DILocalVariable(name: "count", scope: !4907, file: !787, line: 85, type: !175)
!4912 = !DILocation(line: 0, scope: !4907)
!4913 = !DILocation(line: 87, column: 12, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !4907, file: !787, line: 87, column: 9)
!4915 = !DILocation(line: 87, column: 9, scope: !4907)
!4916 = !DILocation(line: 91, column: 19, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4914, file: !787, line: 91, column: 16)
!4918 = !DILocation(line: 91, column: 16, scope: !4914)
!4919 = !DILocation(line: 93, column: 27, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4917, file: !787, line: 91, column: 26)
!4921 = !DILocation(line: 94, column: 5, scope: !4920)
!4922 = !DILocation(line: 94, column: 19, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4917, file: !787, line: 94, column: 16)
!4924 = !DILocation(line: 94, column: 16, scope: !4917)
!4925 = !DILocation(line: 96, column: 21, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4923, file: !787, line: 94, column: 27)
!4927 = !DILocation(line: 96, column: 33, scope: !4926)
!4928 = !DILocation(line: 97, column: 5, scope: !4926)
!4929 = !DILocation(line: 97, column: 19, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !4923, file: !787, line: 97, column: 16)
!4931 = !DILocation(line: 97, column: 16, scope: !4923)
!4932 = !DILocation(line: 99, column: 21, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4930, file: !787, line: 97, column: 27)
!4934 = !DILocation(line: 99, column: 33, scope: !4933)
!4935 = !DILocation(line: 100, column: 5, scope: !4933)
!4936 = !DILocation(line: 100, column: 19, scope: !4937)
!4937 = distinct !DILexicalBlock(scope: !4930, file: !787, line: 100, column: 16)
!4938 = !DILocation(line: 100, column: 16, scope: !4930)
!4939 = !DILocation(line: 102, column: 21, scope: !4940)
!4940 = distinct !DILexicalBlock(scope: !4937, file: !787, line: 100, column: 27)
!4941 = !DILocation(line: 102, column: 33, scope: !4940)
!4942 = !DILocation(line: 103, column: 5, scope: !4940)
!4943 = !DILocation(line: 103, column: 19, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4937, file: !787, line: 103, column: 16)
!4945 = !DILocation(line: 103, column: 16, scope: !4937)
!4946 = !DILocation(line: 105, column: 21, scope: !4947)
!4947 = distinct !DILexicalBlock(scope: !4944, file: !787, line: 103, column: 28)
!4948 = !DILocation(line: 105, column: 33, scope: !4947)
!4949 = !DILocation(line: 106, column: 5, scope: !4947)
!4950 = !DILocation(line: 106, column: 19, scope: !4951)
!4951 = distinct !DILexicalBlock(scope: !4944, file: !787, line: 106, column: 16)
!4952 = !DILocation(line: 106, column: 16, scope: !4944)
!4953 = !DILocation(line: 108, column: 26, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4951, file: !787, line: 106, column: 28)
!4955 = !DILocation(line: 109, column: 5, scope: !4954)
!4956 = !DILocation(line: 109, column: 19, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !4951, file: !787, line: 109, column: 16)
!4958 = !DILocation(line: 109, column: 16, scope: !4951)
!4959 = !DILocation(line: 111, column: 21, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4957, file: !787, line: 109, column: 28)
!4961 = !DILocation(line: 111, column: 33, scope: !4960)
!4962 = !DILocation(line: 112, column: 5, scope: !4960)
!4963 = !DILocation(line: 112, column: 19, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4957, file: !787, line: 112, column: 16)
!4965 = !DILocation(line: 112, column: 16, scope: !4957)
!4966 = !DILocation(line: 114, column: 21, scope: !4967)
!4967 = distinct !DILexicalBlock(scope: !4964, file: !787, line: 112, column: 28)
!4968 = !DILocation(line: 114, column: 33, scope: !4967)
!4969 = !DILocation(line: 115, column: 5, scope: !4967)
!4970 = !DILocation(line: 0, scope: !4914)
!4971 = !DILocation(line: 0, scope: !4923)
!4972 = !DILocation(line: 121, column: 9, scope: !4907)
!4973 = !DILocation(line: 125, column: 43, scope: !4907)
!4974 = !DILocation(line: 127, column: 5, scope: !4907)
!4975 = distinct !DISubprogram(name: "eint_get_status", scope: !787, file: !787, line: 72, type: !2519, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !210)
!4976 = !DILocation(line: 74, column: 13, scope: !4975)
!4977 = !DILocation(line: 74, column: 28, scope: !4975)
!4978 = !DILocation(line: 74, column: 5, scope: !4975)
!4979 = distinct !DISubprogram(name: "hal_eint_mask", scope: !787, file: !787, line: 373, type: !4980, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4982)
!4980 = !DISubroutineType(types: !4981)
!4981 = !{!855, !848}
!4982 = !{!4983, !4984}
!4983 = !DILocalVariable(name: "eint_number", arg: 1, scope: !4979, file: !787, line: 373, type: !848)
!4984 = !DILocalVariable(name: "mask", scope: !4979, file: !787, line: 375, type: !175)
!4985 = !DILocation(line: 0, scope: !4979)
!4986 = !DILocation(line: 376, column: 21, scope: !4987)
!4987 = distinct !DILexicalBlock(scope: !4979, file: !787, line: 376, column: 9)
!4988 = !DILocation(line: 376, column: 9, scope: !4979)
!4989 = !DILocation(line: 380, column: 12, scope: !4979)
!4990 = !DILocation(line: 381, column: 40, scope: !4979)
!4991 = !DILocation(line: 381, column: 5, scope: !4979)
!4992 = !DILocation(line: 381, column: 20, scope: !4979)
!4993 = !DILocation(line: 381, column: 34, scope: !4979)
!4994 = !DILocation(line: 382, column: 5, scope: !4979)
!4995 = !DILocation(line: 383, column: 5, scope: !4979)
!4996 = !DILocation(line: 384, column: 5, scope: !4979)
!4997 = !DILocation(line: 385, column: 1, scope: !4979)
!4998 = distinct !DISubprogram(name: "eint_mask_wakeup_source", scope: !787, file: !787, line: 344, type: !4980, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !4999)
!4999 = !{!5000, !5001}
!5000 = !DILocalVariable(name: "eint_number", arg: 1, scope: !4998, file: !787, line: 344, type: !848)
!5001 = !DILocalVariable(name: "mask", scope: !4998, file: !787, line: 346, type: !175)
!5002 = !DILocation(line: 0, scope: !4998)
!5003 = !DILocation(line: 347, column: 21, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !4998, file: !787, line: 347, column: 9)
!5005 = !DILocation(line: 347, column: 9, scope: !4998)
!5006 = !DILocation(line: 351, column: 12, scope: !4998)
!5007 = !DILocation(line: 352, column: 47, scope: !4998)
!5008 = !DILocation(line: 352, column: 5, scope: !4998)
!5009 = !DILocation(line: 352, column: 20, scope: !4998)
!5010 = !DILocation(line: 352, column: 41, scope: !4998)
!5011 = !DILocation(line: 353, column: 5, scope: !4998)
!5012 = !DILocation(line: 354, column: 5, scope: !4998)
!5013 = !DILocation(line: 355, column: 1, scope: !4998)
!5014 = distinct !DISubprogram(name: "hal_eint_deinit", scope: !787, file: !787, line: 160, type: !4980, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !5015)
!5015 = !{!5016, !5017}
!5016 = !DILocalVariable(name: "eint_number", arg: 1, scope: !5014, file: !787, line: 160, type: !848)
!5017 = !DILocalVariable(name: "mask", scope: !5014, file: !787, line: 162, type: !175)
!5018 = !DILocation(line: 0, scope: !5014)
!5019 = !DILocation(line: 164, column: 21, scope: !5020)
!5020 = distinct !DILexicalBlock(scope: !5014, file: !787, line: 164, column: 9)
!5021 = !DILocation(line: 164, column: 9, scope: !5014)
!5022 = !DILocation(line: 168, column: 12, scope: !5014)
!5023 = !DILocation(line: 169, column: 38, scope: !5014)
!5024 = !DILocation(line: 169, column: 52, scope: !5014)
!5025 = !DILocation(line: 170, column: 38, scope: !5014)
!5026 = !DILocation(line: 170, column: 48, scope: !5014)
!5027 = !DILocation(line: 172, column: 5, scope: !5014)
!5028 = !DILocation(line: 173, column: 5, scope: !5014)
!5029 = !DILocation(line: 174, column: 5, scope: !5014)
!5030 = !DILocation(line: 175, column: 5, scope: !5014)
!5031 = !DILocation(line: 176, column: 1, scope: !5014)
!5032 = distinct !DISubprogram(name: "hal_eint_register_callback", scope: !787, file: !787, line: 178, type: !5033, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !5036)
!5033 = !DISubroutineType(types: !5034)
!5034 = !{!855, !848, !5035, !194}
!5035 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_eint_callback_t", file: !790, line: 241, baseType: !226)
!5036 = !{!5037, !5038, !5039, !5040}
!5037 = !DILocalVariable(name: "eint_number", arg: 1, scope: !5032, file: !787, line: 178, type: !848)
!5038 = !DILocalVariable(name: "eint_callback", arg: 2, scope: !5032, file: !787, line: 179, type: !5035)
!5039 = !DILocalVariable(name: "user_data", arg: 3, scope: !5032, file: !787, line: 180, type: !194)
!5040 = !DILocalVariable(name: "mask", scope: !5032, file: !787, line: 182, type: !175)
!5041 = !DILocation(line: 0, scope: !5032)
!5042 = !DILocation(line: 184, column: 21, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !5032, file: !787, line: 184, column: 9)
!5044 = !DILocation(line: 184, column: 44, scope: !5043)
!5045 = !DILocation(line: 188, column: 12, scope: !5032)
!5046 = !DILocation(line: 189, column: 38, scope: !5032)
!5047 = !DILocation(line: 189, column: 52, scope: !5032)
!5048 = !DILocation(line: 190, column: 38, scope: !5032)
!5049 = !DILocation(line: 190, column: 48, scope: !5032)
!5050 = !DILocation(line: 191, column: 5, scope: !5032)
!5051 = !DILocation(line: 192, column: 5, scope: !5032)
!5052 = !DILocation(line: 193, column: 1, scope: !5032)
!5053 = distinct !DISubprogram(name: "hal_eint_set_debounce_count", scope: !787, file: !787, line: 273, type: !4854, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !5054)
!5054 = !{!5055, !5056, !5057, !5058, !5059}
!5055 = !DILocalVariable(name: "eint_number", arg: 1, scope: !5053, file: !787, line: 273, type: !848)
!5056 = !DILocalVariable(name: "count", arg: 2, scope: !5053, file: !787, line: 273, type: !175)
!5057 = !DILocalVariable(name: "mask", scope: !5053, file: !787, line: 275, type: !175)
!5058 = !DILocalVariable(name: "eint_con", scope: !5053, file: !787, line: 275, type: !175)
!5059 = !DILocalVariable(name: "prescaler", scope: !5053, file: !787, line: 276, type: !175)
!5060 = !DILocation(line: 0, scope: !5053)
!5061 = !DILocation(line: 278, column: 21, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !5053, file: !787, line: 278, column: 9)
!5063 = !DILocation(line: 278, column: 9, scope: !5053)
!5064 = !DILocation(line: 289, column: 12, scope: !5053)
!5065 = !DILocation(line: 290, column: 16, scope: !5053)
!5066 = !DILocation(line: 290, column: 66, scope: !5053)
!5067 = !DILocation(line: 291, column: 14, scope: !5053)
!5068 = !DILocation(line: 292, column: 14, scope: !5053)
!5069 = !DILocation(line: 293, column: 5, scope: !5053)
!5070 = !DILocation(line: 295, column: 15, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5053, file: !787, line: 295, column: 9)
!5072 = !DILocation(line: 295, column: 9, scope: !5053)
!5073 = !DILocation(line: 297, column: 18, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5071, file: !787, line: 295, column: 21)
!5075 = !DILocation(line: 298, column: 9, scope: !5074)
!5076 = !DILocation(line: 298, column: 59, scope: !5074)
!5077 = !DILocation(line: 298, column: 70, scope: !5074)
!5078 = !DILocation(line: 300, column: 5, scope: !5074)
!5079 = !DILocation(line: 302, column: 81, scope: !5080)
!5080 = distinct !DILexicalBlock(scope: !5071, file: !787, line: 300, column: 12)
!5081 = !DILocation(line: 302, column: 9, scope: !5080)
!5082 = !DILocation(line: 302, column: 59, scope: !5080)
!5083 = !DILocation(line: 302, column: 70, scope: !5080)
!5084 = !DILocation(line: 303, column: 9, scope: !5080)
!5085 = !DILocation(line: 306, column: 30, scope: !5080)
!5086 = !DILocation(line: 308, column: 9, scope: !5080)
!5087 = !DILocation(line: 308, column: 59, scope: !5080)
!5088 = !DILocation(line: 308, column: 70, scope: !5080)
!5089 = !DILocation(line: 309, column: 9, scope: !5080)
!5090 = !DILocation(line: 309, column: 59, scope: !5080)
!5091 = !DILocation(line: 309, column: 70, scope: !5080)
!5092 = !DILocation(line: 314, column: 1, scope: !5053)
!5093 = distinct !DISubprogram(name: "hal_eint_set_software_trigger", scope: !787, file: !787, line: 316, type: !4980, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !5094)
!5094 = !{!5095, !5096}
!5095 = !DILocalVariable(name: "eint_number", arg: 1, scope: !5093, file: !787, line: 316, type: !848)
!5096 = !DILocalVariable(name: "mask", scope: !5093, file: !787, line: 318, type: !175)
!5097 = !DILocation(line: 0, scope: !5093)
!5098 = !DILocation(line: 320, column: 21, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !5093, file: !787, line: 320, column: 9)
!5100 = !DILocation(line: 320, column: 9, scope: !5093)
!5101 = !DILocation(line: 324, column: 12, scope: !5093)
!5102 = !DILocation(line: 325, column: 40, scope: !5093)
!5103 = !DILocation(line: 325, column: 5, scope: !5093)
!5104 = !DILocation(line: 325, column: 20, scope: !5093)
!5105 = !DILocation(line: 325, column: 34, scope: !5093)
!5106 = !DILocation(line: 326, column: 5, scope: !5093)
!5107 = !DILocation(line: 327, column: 5, scope: !5093)
!5108 = !DILocation(line: 328, column: 1, scope: !5093)
!5109 = distinct !DISubprogram(name: "hal_eint_clear_software_trigger", scope: !787, file: !787, line: 330, type: !4980, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !5110)
!5110 = !{!5111, !5112}
!5111 = !DILocalVariable(name: "eint_number", arg: 1, scope: !5109, file: !787, line: 330, type: !848)
!5112 = !DILocalVariable(name: "mask", scope: !5109, file: !787, line: 332, type: !175)
!5113 = !DILocation(line: 0, scope: !5109)
!5114 = !DILocation(line: 334, column: 21, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5109, file: !787, line: 334, column: 9)
!5116 = !DILocation(line: 334, column: 9, scope: !5109)
!5117 = !DILocation(line: 338, column: 12, scope: !5109)
!5118 = !DILocation(line: 339, column: 40, scope: !5109)
!5119 = !DILocation(line: 339, column: 5, scope: !5109)
!5120 = !DILocation(line: 339, column: 20, scope: !5109)
!5121 = !DILocation(line: 339, column: 34, scope: !5109)
!5122 = !DILocation(line: 340, column: 5, scope: !5109)
!5123 = !DILocation(line: 341, column: 5, scope: !5109)
!5124 = !DILocation(line: 342, column: 1, scope: !5109)
!5125 = distinct !DISubprogram(name: "eint_unmask_wakeup_source", scope: !787, file: !787, line: 357, type: !4980, scopeLine: 358, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !5126)
!5126 = !{!5127, !5128}
!5127 = !DILocalVariable(name: "eint_number", arg: 1, scope: !5125, file: !787, line: 357, type: !848)
!5128 = !DILocalVariable(name: "mask", scope: !5125, file: !787, line: 359, type: !175)
!5129 = !DILocation(line: 0, scope: !5125)
!5130 = !DILocation(line: 361, column: 21, scope: !5131)
!5131 = distinct !DILexicalBlock(scope: !5125, file: !787, line: 361, column: 9)
!5132 = !DILocation(line: 361, column: 9, scope: !5125)
!5133 = !DILocation(line: 365, column: 12, scope: !5125)
!5134 = !DILocation(line: 366, column: 47, scope: !5125)
!5135 = !DILocation(line: 366, column: 5, scope: !5125)
!5136 = !DILocation(line: 366, column: 20, scope: !5125)
!5137 = !DILocation(line: 366, column: 41, scope: !5125)
!5138 = !DILocation(line: 367, column: 5, scope: !5125)
!5139 = !DILocation(line: 368, column: 5, scope: !5125)
!5140 = !DILocation(line: 369, column: 1, scope: !5125)
!5141 = distinct !DISubprogram(name: "hal_eint_unmask", scope: !787, file: !787, line: 387, type: !4980, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !5142)
!5142 = !{!5143, !5144}
!5143 = !DILocalVariable(name: "eint_number", arg: 1, scope: !5141, file: !787, line: 387, type: !848)
!5144 = !DILocalVariable(name: "mask", scope: !5141, file: !787, line: 389, type: !175)
!5145 = !DILocation(line: 0, scope: !5141)
!5146 = !DILocation(line: 391, column: 21, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5141, file: !787, line: 391, column: 9)
!5148 = !DILocation(line: 391, column: 9, scope: !5141)
!5149 = !DILocation(line: 395, column: 12, scope: !5141)
!5150 = !DILocation(line: 396, column: 40, scope: !5141)
!5151 = !DILocation(line: 396, column: 5, scope: !5141)
!5152 = !DILocation(line: 396, column: 20, scope: !5141)
!5153 = !DILocation(line: 396, column: 34, scope: !5141)
!5154 = !DILocation(line: 397, column: 5, scope: !5141)
!5155 = !DILocation(line: 398, column: 5, scope: !5141)
!5156 = !DILocation(line: 399, column: 5, scope: !5141)
!5157 = !DILocation(line: 400, column: 1, scope: !5141)
!5158 = !DILocation(line: 131, column: 9, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !950, file: !951, line: 131, column: 9)
!5160 = !DILocation(line: 131, column: 9, scope: !950)
!5161 = !DILocation(line: 0, scope: !950)
!5162 = !DILocation(line: 134, column: 49, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5164, file: !951, line: 133, column: 46)
!5164 = distinct !DILexicalBlock(scope: !5165, file: !951, line: 133, column: 9)
!5165 = distinct !DILexicalBlock(scope: !5166, file: !951, line: 133, column: 9)
!5166 = distinct !DILexicalBlock(scope: !5159, file: !951, line: 131, column: 28)
!5167 = !DILocation(line: 134, column: 13, scope: !5163)
!5168 = !DILocation(line: 133, column: 42, scope: !5164)
!5169 = !DILocation(line: 133, column: 23, scope: !5164)
!5170 = !DILocation(line: 133, column: 9, scope: !5165)
!5171 = distinct !{!5171, !5170, !5172}
!5172 = !DILocation(line: 135, column: 9, scope: !5165)
!5173 = !DILocation(line: 136, column: 22, scope: !5166)
!5174 = !DILocation(line: 137, column: 5, scope: !5166)
!5175 = !DILocation(line: 138, column: 5, scope: !950)
!5176 = distinct !DISubprogram(name: "NVIC_SetPriority", scope: !960, file: !960, line: 1577, type: !5177, scopeLine: 1578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !955, retainedNodes: !5179)
!5177 = !DISubroutineType(types: !5178)
!5178 = !{null, !781, !175}
!5179 = !{!5180, !5181}
!5180 = !DILocalVariable(name: "IRQn", arg: 1, scope: !5176, file: !960, line: 1577, type: !781)
!5181 = !DILocalVariable(name: "priority", arg: 2, scope: !5176, file: !960, line: 1577, type: !175)
!5182 = !DILocation(line: 0, scope: !5176)
!5183 = !DILocation(line: 1582, column: 34, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !5185, file: !960, line: 1581, column: 8)
!5185 = distinct !DILexicalBlock(scope: !5176, file: !960, line: 1579, column: 6)
!5186 = !DILocation(line: 1582, column: 5, scope: !5184)
!5187 = !DILocation(line: 1582, column: 32, scope: !5184)
!5188 = !DILocation(line: 1583, column: 1, scope: !5176)
!5189 = distinct !DISubprogram(name: "hal_nvic_enable_irq", scope: !951, file: !951, line: 141, type: !5190, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !955, retainedNodes: !5192)
!5190 = !DISubroutineType(types: !5191)
!5191 = !{!954, !780}
!5192 = !{!5193, !5194}
!5193 = !DILocalVariable(name: "irq_number", arg: 1, scope: !5189, file: !951, line: 141, type: !780)
!5194 = !DILocalVariable(name: "status", scope: !5189, file: !951, line: 143, type: !954)
!5195 = !DILocation(line: 0, scope: !5189)
!5196 = !DILocation(line: 145, column: 40, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !5189, file: !951, line: 145, column: 9)
!5198 = !DILocation(line: 149, column: 9, scope: !5199)
!5199 = distinct !DILexicalBlock(scope: !5197, file: !951, line: 148, column: 12)
!5200 = !DILocation(line: 153, column: 5, scope: !5189)
!5201 = !DILocation(line: 154, column: 1, scope: !5189)
!5202 = distinct !DISubprogram(name: "NVIC_EnableIRQ", scope: !960, file: !960, line: 1494, type: !5203, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !955, retainedNodes: !5205)
!5203 = !DISubroutineType(types: !5204)
!5204 = !{null, !781}
!5205 = !{!5206}
!5206 = !DILocalVariable(name: "IRQn", arg: 1, scope: !5202, file: !960, line: 1494, type: !781)
!5207 = !DILocation(line: 0, scope: !5202)
!5208 = !DILocation(line: 1497, column: 91, scope: !5202)
!5209 = !DILocation(line: 1497, column: 61, scope: !5202)
!5210 = !DILocation(line: 1497, column: 40, scope: !5202)
!5211 = !DILocation(line: 1497, column: 3, scope: !5202)
!5212 = !DILocation(line: 1497, column: 46, scope: !5202)
!5213 = !DILocation(line: 1498, column: 1, scope: !5202)
!5214 = distinct !DISubprogram(name: "hal_nvic_disable_irq", scope: !951, file: !951, line: 156, type: !5190, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !955, retainedNodes: !5215)
!5215 = !{!5216, !5217}
!5216 = !DILocalVariable(name: "irq_number", arg: 1, scope: !5214, file: !951, line: 156, type: !780)
!5217 = !DILocalVariable(name: "status", scope: !5214, file: !951, line: 158, type: !954)
!5218 = !DILocation(line: 0, scope: !5214)
!5219 = !DILocation(line: 160, column: 40, scope: !5220)
!5220 = distinct !DILexicalBlock(scope: !5214, file: !951, line: 160, column: 9)
!5221 = !DILocation(line: 164, column: 9, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5220, file: !951, line: 163, column: 12)
!5223 = !DILocation(line: 168, column: 5, scope: !5214)
!5224 = !DILocation(line: 169, column: 1, scope: !5214)
!5225 = distinct !DISubprogram(name: "NVIC_DisableIRQ", scope: !960, file: !960, line: 1507, type: !5203, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !955, retainedNodes: !5226)
!5226 = !{!5227}
!5227 = !DILocalVariable(name: "IRQn", arg: 1, scope: !5225, file: !960, line: 1507, type: !781)
!5228 = !DILocation(line: 0, scope: !5225)
!5229 = !DILocation(line: 1509, column: 65, scope: !5225)
!5230 = !DILocation(line: 1509, column: 44, scope: !5225)
!5231 = !DILocation(line: 1509, column: 32, scope: !5225)
!5232 = !DILocation(line: 1509, column: 3, scope: !5225)
!5233 = !DILocation(line: 1509, column: 39, scope: !5225)
!5234 = !DILocation(line: 1510, column: 1, scope: !5225)
!5235 = distinct !DISubprogram(name: "hal_nvic_get_pending_irq", scope: !951, file: !951, line: 171, type: !5236, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !955, retainedNodes: !5238)
!5236 = !DISubroutineType(types: !5237)
!5237 = !{!175, !780}
!5238 = !{!5239, !5240}
!5239 = !DILocalVariable(name: "irq_number", arg: 1, scope: !5235, file: !951, line: 171, type: !780)
!5240 = !DILocalVariable(name: "ret", scope: !5235, file: !951, line: 173, type: !175)
!5241 = !DILocation(line: 0, scope: !5235)
!5242 = !DILocation(line: 175, column: 40, scope: !5243)
!5243 = distinct !DILexicalBlock(scope: !5235, file: !951, line: 175, column: 9)
!5244 = !DILocation(line: 178, column: 15, scope: !5245)
!5245 = distinct !DILexicalBlock(scope: !5243, file: !951, line: 177, column: 12)
!5246 = !DILocation(line: 181, column: 5, scope: !5235)
!5247 = !DILocation(line: 182, column: 1, scope: !5235)
!5248 = distinct !DISubprogram(name: "NVIC_GetPendingIRQ", scope: !960, file: !960, line: 1523, type: !5249, scopeLine: 1524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !955, retainedNodes: !5251)
!5249 = !DISubroutineType(types: !5250)
!5250 = !{!175, !781}
!5251 = !{!5252}
!5252 = !DILocalVariable(name: "IRQn", arg: 1, scope: !5248, file: !960, line: 1523, type: !781)
!5253 = !DILocation(line: 0, scope: !5248)
!5254 = !DILocation(line: 1525, column: 51, scope: !5248)
!5255 = !DILocation(line: 1525, column: 23, scope: !5248)
!5256 = !DILocation(line: 1525, column: 83, scope: !5248)
!5257 = !DILocation(line: 1525, column: 22, scope: !5248)
!5258 = !DILocation(line: 1525, column: 3, scope: !5248)
!5259 = distinct !DISubprogram(name: "hal_nvic_set_pending_irq", scope: !951, file: !951, line: 184, type: !5190, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !955, retainedNodes: !5260)
!5260 = !{!5261, !5262}
!5261 = !DILocalVariable(name: "irq_number", arg: 1, scope: !5259, file: !951, line: 184, type: !780)
!5262 = !DILocalVariable(name: "status", scope: !5259, file: !951, line: 186, type: !954)
!5263 = !DILocation(line: 0, scope: !5259)
!5264 = !DILocation(line: 188, column: 40, scope: !5265)
!5265 = distinct !DILexicalBlock(scope: !5259, file: !951, line: 188, column: 9)
!5266 = !DILocation(line: 192, column: 9, scope: !5267)
!5267 = distinct !DILexicalBlock(scope: !5265, file: !951, line: 191, column: 12)
!5268 = !DILocation(line: 196, column: 5, scope: !5259)
!5269 = !DILocation(line: 197, column: 1, scope: !5259)
!5270 = distinct !DISubprogram(name: "NVIC_SetPendingIRQ", scope: !960, file: !960, line: 1535, type: !5203, scopeLine: 1536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !955, retainedNodes: !5271)
!5271 = !{!5272}
!5272 = !DILocalVariable(name: "IRQn", arg: 1, scope: !5270, file: !960, line: 1535, type: !781)
!5273 = !DILocation(line: 0, scope: !5270)
!5274 = !DILocation(line: 1537, column: 65, scope: !5270)
!5275 = !DILocation(line: 1537, column: 44, scope: !5270)
!5276 = !DILocation(line: 1537, column: 32, scope: !5270)
!5277 = !DILocation(line: 1537, column: 3, scope: !5270)
!5278 = !DILocation(line: 1537, column: 39, scope: !5270)
!5279 = !DILocation(line: 1538, column: 1, scope: !5270)
!5280 = distinct !DISubprogram(name: "hal_nvic_clear_pending_irq", scope: !951, file: !951, line: 199, type: !5190, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !955, retainedNodes: !5281)
!5281 = !{!5282, !5283}
!5282 = !DILocalVariable(name: "irq_number", arg: 1, scope: !5280, file: !951, line: 199, type: !780)
!5283 = !DILocalVariable(name: "status", scope: !5280, file: !951, line: 201, type: !954)
!5284 = !DILocation(line: 0, scope: !5280)
!5285 = !DILocation(line: 203, column: 40, scope: !5286)
!5286 = distinct !DILexicalBlock(scope: !5280, file: !951, line: 203, column: 9)
!5287 = !DILocation(line: 207, column: 9, scope: !5288)
!5288 = distinct !DILexicalBlock(scope: !5286, file: !951, line: 206, column: 12)
!5289 = !DILocation(line: 211, column: 5, scope: !5280)
!5290 = !DILocation(line: 212, column: 1, scope: !5280)
!5291 = distinct !DISubprogram(name: "NVIC_ClearPendingIRQ", scope: !960, file: !960, line: 1547, type: !5203, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !955, retainedNodes: !5292)
!5292 = !{!5293}
!5293 = !DILocalVariable(name: "IRQn", arg: 1, scope: !5291, file: !960, line: 1547, type: !781)
!5294 = !DILocation(line: 0, scope: !5291)
!5295 = !DILocation(line: 1549, column: 65, scope: !5291)
!5296 = !DILocation(line: 1549, column: 44, scope: !5291)
!5297 = !DILocation(line: 1549, column: 32, scope: !5291)
!5298 = !DILocation(line: 1549, column: 3, scope: !5291)
!5299 = !DILocation(line: 1549, column: 39, scope: !5291)
!5300 = !DILocation(line: 1550, column: 1, scope: !5291)
!5301 = distinct !DISubprogram(name: "hal_nvic_set_priority", scope: !951, file: !951, line: 214, type: !5302, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !955, retainedNodes: !5304)
!5302 = !DISubroutineType(types: !5303)
!5303 = !{!954, !780, !175}
!5304 = !{!5305, !5306, !5307}
!5305 = !DILocalVariable(name: "irq_number", arg: 1, scope: !5301, file: !951, line: 214, type: !780)
!5306 = !DILocalVariable(name: "priority", arg: 2, scope: !5301, file: !951, line: 214, type: !175)
!5307 = !DILocalVariable(name: "status", scope: !5301, file: !951, line: 216, type: !954)
!5308 = !DILocation(line: 0, scope: !5301)
!5309 = !DILocation(line: 218, column: 40, scope: !5310)
!5310 = distinct !DILexicalBlock(scope: !5301, file: !951, line: 218, column: 9)
!5311 = !DILocation(line: 222, column: 9, scope: !5312)
!5312 = distinct !DILexicalBlock(scope: !5310, file: !951, line: 221, column: 12)
!5313 = !DILocation(line: 226, column: 5, scope: !5301)
!5314 = !DILocation(line: 227, column: 1, scope: !5301)
!5315 = distinct !DISubprogram(name: "hal_nvic_get_priority", scope: !951, file: !951, line: 229, type: !5236, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !955, retainedNodes: !5316)
!5316 = !{!5317, !5318}
!5317 = !DILocalVariable(name: "irq_number", arg: 1, scope: !5315, file: !951, line: 229, type: !780)
!5318 = !DILocalVariable(name: "ret", scope: !5315, file: !951, line: 231, type: !175)
!5319 = !DILocation(line: 0, scope: !5315)
!5320 = !DILocation(line: 233, column: 40, scope: !5321)
!5321 = distinct !DILexicalBlock(scope: !5315, file: !951, line: 233, column: 9)
!5322 = !DILocation(line: 236, column: 15, scope: !5323)
!5323 = distinct !DILexicalBlock(scope: !5321, file: !951, line: 235, column: 12)
!5324 = !DILocation(line: 239, column: 5, scope: !5315)
!5325 = !DILocation(line: 240, column: 1, scope: !5315)
!5326 = distinct !DISubprogram(name: "NVIC_GetPriority", scope: !960, file: !960, line: 1597, type: !5249, scopeLine: 1598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !955, retainedNodes: !5327)
!5327 = !{!5328}
!5328 = !DILocalVariable(name: "IRQn", arg: 1, scope: !5326, file: !960, line: 1597, type: !781)
!5329 = !DILocation(line: 0, scope: !5326)
!5330 = !DILocation(line: 1603, column: 23, scope: !5331)
!5331 = distinct !DILexicalBlock(scope: !5332, file: !960, line: 1602, column: 8)
!5332 = distinct !DILexicalBlock(scope: !5326, file: !960, line: 1600, column: 6)
!5333 = !DILocation(line: 1603, column: 60, scope: !5331)
!5334 = !DILocation(line: 1604, column: 1, scope: !5326)
!5335 = distinct !DISubprogram(name: "isrC_main", scope: !951, file: !951, line: 248, type: !952, scopeLine: 249, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !955, retainedNodes: !5336)
!5336 = !{!5337, !5338}
!5337 = !DILocalVariable(name: "status", scope: !5335, file: !951, line: 250, type: !954)
!5338 = !DILocalVariable(name: "irq_number", scope: !5335, file: !951, line: 251, type: !780)
!5339 = !DILocation(line: 0, scope: !5335)
!5340 = !DILocation(line: 253, column: 5, scope: !5335)
!5341 = !DILocation(line: 255, column: 35, scope: !5335)
!5342 = !DILocation(line: 256, column: 40, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !5335, file: !951, line: 256, column: 9)
!5344 = !DILocation(line: 259, column: 48, scope: !5345)
!5345 = distinct !DILexicalBlock(scope: !5343, file: !951, line: 259, column: 16)
!5346 = !DILocation(line: 259, column: 62, scope: !5345)
!5347 = !DILocation(line: 259, column: 16, scope: !5343)
!5348 = !DILocation(line: 261, column: 9, scope: !5349)
!5349 = distinct !DILexicalBlock(scope: !5345, file: !951, line: 259, column: 71)
!5350 = !DILocation(line: 262, column: 9, scope: !5349)
!5351 = !DILocation(line: 264, column: 55, scope: !5352)
!5352 = distinct !DILexicalBlock(scope: !5345, file: !951, line: 263, column: 12)
!5353 = !DILocation(line: 264, column: 41, scope: !5352)
!5354 = !DILocation(line: 264, column: 53, scope: !5352)
!5355 = !DILocation(line: 265, column: 41, scope: !5352)
!5356 = !DILocation(line: 265, column: 9, scope: !5352)
!5357 = !DILocation(line: 269, column: 5, scope: !5335)
!5358 = !DILocation(line: 270, column: 1, scope: !5335)
!5359 = distinct !DISubprogram(name: "get_current_irq", scope: !951, file: !951, line: 242, type: !2519, scopeLine: 243, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !955, retainedNodes: !5360)
!5360 = !{!5361}
!5361 = !DILocalVariable(name: "irq_num", scope: !5359, file: !951, line: 244, type: !175)
!5362 = !DILocation(line: 244, column: 31, scope: !5359)
!5363 = !DILocation(line: 244, column: 36, scope: !5359)
!5364 = !DILocation(line: 0, scope: !5359)
!5365 = !DILocation(line: 245, column: 21, scope: !5359)
!5366 = !DILocation(line: 245, column: 5, scope: !5359)
!5367 = distinct !DISubprogram(name: "get_pending_irq", scope: !951, file: !951, line: 121, type: !2519, scopeLine: 122, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !955, retainedNodes: !210)
!5368 = !DILocation(line: 123, column: 19, scope: !5367)
!5369 = !DILocation(line: 123, column: 51, scope: !5367)
!5370 = !DILocation(line: 123, column: 5, scope: !5367)
!5371 = distinct !DISubprogram(name: "hal_nvic_register_isr_handler", scope: !951, file: !951, line: 272, type: !5372, scopeLine: 273, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !955, retainedNodes: !5374)
!5372 = !DISubroutineType(types: !5373)
!5373 = !{!954, !780, !844}
!5374 = !{!5375, !5376, !5377}
!5375 = !DILocalVariable(name: "irq_number", arg: 1, scope: !5371, file: !951, line: 272, type: !780)
!5376 = !DILocalVariable(name: "callback", arg: 2, scope: !5371, file: !951, line: 272, type: !844)
!5377 = !DILocalVariable(name: "mask", scope: !5371, file: !951, line: 274, type: !175)
!5378 = !DILocation(line: 0, scope: !5371)
!5379 = !DILocation(line: 276, column: 40, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5371, file: !951, line: 276, column: 9)
!5381 = !DILocation(line: 280, column: 12, scope: !5371)
!5382 = !DILocation(line: 281, column: 5, scope: !5371)
!5383 = !DILocation(line: 282, column: 37, scope: !5371)
!5384 = !DILocation(line: 282, column: 51, scope: !5371)
!5385 = !DILocation(line: 283, column: 37, scope: !5371)
!5386 = !DILocation(line: 283, column: 49, scope: !5371)
!5387 = !DILocation(line: 284, column: 5, scope: !5371)
!5388 = !DILocation(line: 286, column: 5, scope: !5371)
!5389 = !DILocation(line: 287, column: 1, scope: !5371)
!5390 = distinct !DISubprogram(name: "hal_nvic_save_and_set_interrupt_mask", scope: !951, file: !951, line: 289, type: !5391, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !955, retainedNodes: !5393)
!5391 = !DISubroutineType(types: !5392)
!5392 = !{!954, !1749}
!5393 = !{!5394}
!5394 = !DILocalVariable(name: "mask", arg: 1, scope: !5390, file: !951, line: 289, type: !1749)
!5395 = !DILocation(line: 0, scope: !5390)
!5396 = !DILocation(line: 291, column: 13, scope: !5390)
!5397 = !DILocation(line: 291, column: 11, scope: !5390)
!5398 = !DILocation(line: 292, column: 5, scope: !5390)
!5399 = distinct !DISubprogram(name: "hal_nvic_restore_interrupt_mask", scope: !951, file: !951, line: 295, type: !5400, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !955, retainedNodes: !5402)
!5400 = !DISubroutineType(types: !5401)
!5401 = !{!954, !175}
!5402 = !{!5403}
!5403 = !DILocalVariable(name: "mask", arg: 1, scope: !5399, file: !951, line: 295, type: !175)
!5404 = !DILocation(line: 0, scope: !5399)
!5405 = !DILocation(line: 297, column: 5, scope: !5399)
!5406 = !DILocation(line: 298, column: 5, scope: !5399)
!5407 = distinct !DISubprogram(name: "save_and_set_interrupt_mask", scope: !1606, file: !1606, line: 51, type: !2519, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1605, retainedNodes: !5408)
!5408 = !{!5409, !5410}
!5409 = !DILocalVariable(name: "mask", scope: !5407, file: !1606, line: 53, type: !175)
!5410 = !DILocalVariable(name: "priority", scope: !5407, file: !1606, line: 55, type: !175)
!5411 = !DILocation(line: 521, column: 3, scope: !5412, inlinedAt: !5416)
!5412 = distinct !DISubprogram(name: "__get_BASEPRI", scope: !5413, file: !5413, line: 517, type: !2519, scopeLine: 518, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1605, retainedNodes: !5414)
!5413 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmFunc.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC")
!5414 = !{!5415}
!5415 = !DILocalVariable(name: "result", scope: !5412, file: !5413, line: 519, type: !175)
!5416 = distinct !DILocation(line: 53, column: 21, scope: !5407)
!5417 = !{i64 457584}
!5418 = !DILocation(line: 0, scope: !5412, inlinedAt: !5416)
!5419 = !DILocation(line: 0, scope: !5407)
!5420 = !DILocalVariable(name: "value", arg: 1, scope: !5421, file: !5413, line: 532, type: !175)
!5421 = distinct !DISubprogram(name: "__set_BASEPRI", scope: !5413, file: !5413, line: 532, type: !4722, scopeLine: 533, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1605, retainedNodes: !5422)
!5422 = !{!5420}
!5423 = !DILocation(line: 0, scope: !5421, inlinedAt: !5424)
!5424 = distinct !DILocation(line: 56, column: 5, scope: !5407)
!5425 = !DILocation(line: 534, column: 3, scope: !5421, inlinedAt: !5424)
!5426 = !{i64 457917}
!5427 = !DILocation(line: 456, column: 3, scope: !5428, inlinedAt: !5430)
!5428 = distinct !DISubprogram(name: "__DMB", scope: !5429, file: !5429, line: 454, type: !208, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1605, retainedNodes: !210)
!5429 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmInstr.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt2523_hdk/hal_examples/eint_edge_falling/GCC")
!5430 = distinct !DILocation(line: 57, column: 5, scope: !5407)
!5431 = !{i64 430673}
!5432 = !DILocation(line: 434, column: 3, scope: !5433, inlinedAt: !5434)
!5433 = distinct !DISubprogram(name: "__ISB", scope: !5429, file: !5429, line: 432, type: !208, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1605, retainedNodes: !210)
!5434 = distinct !DILocation(line: 58, column: 5, scope: !5407)
!5435 = !{i64 430088}
!5436 = !DILocation(line: 59, column: 5, scope: !5407)
!5437 = distinct !DISubprogram(name: "restore_interrupt_mask", scope: !1606, file: !1606, line: 62, type: !4722, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1605, retainedNodes: !5438)
!5438 = !{!5439}
!5439 = !DILocalVariable(name: "mask", arg: 1, scope: !5437, file: !1606, line: 62, type: !175)
!5440 = !DILocation(line: 0, scope: !5437)
!5441 = !DILocation(line: 0, scope: !5421, inlinedAt: !5442)
!5442 = distinct !DILocation(line: 64, column: 5, scope: !5437)
!5443 = !DILocation(line: 534, column: 3, scope: !5421, inlinedAt: !5442)
!5444 = !DILocation(line: 456, column: 3, scope: !5428, inlinedAt: !5445)
!5445 = distinct !DILocation(line: 65, column: 5, scope: !5437)
!5446 = !DILocation(line: 434, column: 3, scope: !5433, inlinedAt: !5447)
!5447 = distinct !DILocation(line: 66, column: 5, scope: !5437)
!5448 = !DILocation(line: 67, column: 1, scope: !5437)
!5449 = distinct !DISubprogram(name: "nvic_mask_all_interrupt", scope: !1606, file: !1606, line: 69, type: !208, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1605, retainedNodes: !5450)
!5450 = !{!5451, !5452}
!5451 = !DILocalVariable(name: "irq_number", scope: !5449, file: !1606, line: 71, type: !780)
!5452 = !DILocalVariable(name: "mask", scope: !5449, file: !1606, line: 72, type: !175)
!5453 = !DILocation(line: 72, column: 21, scope: !5449)
!5454 = !DILocation(line: 0, scope: !5449)
!5455 = !DILocation(line: 73, column: 5, scope: !5456)
!5456 = distinct !DILexicalBlock(scope: !5449, file: !1606, line: 73, column: 5)
!5457 = !DILocation(line: 74, column: 9, scope: !5458)
!5458 = distinct !DILexicalBlock(scope: !5459, file: !1606, line: 73, column: 85)
!5459 = distinct !DILexicalBlock(scope: !5456, file: !1606, line: 73, column: 5)
!5460 = !DILocation(line: 73, column: 81, scope: !5459)
!5461 = !DILocation(line: 73, column: 53, scope: !5459)
!5462 = distinct !{!5462, !5455, !5463}
!5463 = !DILocation(line: 75, column: 5, scope: !5456)
!5464 = !DILocation(line: 76, column: 5, scope: !5449)
!5465 = !DILocation(line: 77, column: 1, scope: !5449)
!5466 = distinct !DISubprogram(name: "NVIC_DisableIRQ", scope: !960, file: !960, line: 1507, type: !5203, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1605, retainedNodes: !5467)
!5467 = !{!5468}
!5468 = !DILocalVariable(name: "IRQn", arg: 1, scope: !5466, file: !960, line: 1507, type: !781)
!5469 = !DILocation(line: 0, scope: !5466)
!5470 = !DILocation(line: 1509, column: 65, scope: !5466)
!5471 = !DILocation(line: 1509, column: 44, scope: !5466)
!5472 = !DILocation(line: 1509, column: 32, scope: !5466)
!5473 = !DILocation(line: 1509, column: 3, scope: !5466)
!5474 = !DILocation(line: 1509, column: 39, scope: !5466)
!5475 = !DILocation(line: 1510, column: 1, scope: !5466)
!5476 = distinct !DISubprogram(name: "nvic_unmask_all_interrupt", scope: !1606, file: !1606, line: 79, type: !208, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1605, retainedNodes: !5477)
!5477 = !{!5478, !5479}
!5478 = !DILocalVariable(name: "irq_number", scope: !5476, file: !1606, line: 81, type: !780)
!5479 = !DILocalVariable(name: "mask", scope: !5476, file: !1606, line: 82, type: !175)
!5480 = !DILocation(line: 82, column: 21, scope: !5476)
!5481 = !DILocation(line: 0, scope: !5476)
!5482 = !DILocation(line: 84, column: 5, scope: !5483)
!5483 = distinct !DILexicalBlock(scope: !5476, file: !1606, line: 84, column: 5)
!5484 = !DILocation(line: 85, column: 9, scope: !5485)
!5485 = distinct !DILexicalBlock(scope: !5486, file: !1606, line: 84, column: 85)
!5486 = distinct !DILexicalBlock(scope: !5483, file: !1606, line: 84, column: 5)
!5487 = !DILocation(line: 84, column: 81, scope: !5486)
!5488 = !DILocation(line: 84, column: 53, scope: !5486)
!5489 = distinct !{!5489, !5482, !5490}
!5490 = !DILocation(line: 86, column: 5, scope: !5483)
!5491 = !DILocation(line: 87, column: 5, scope: !5476)
!5492 = !DILocation(line: 88, column: 1, scope: !5476)
!5493 = distinct !DISubprogram(name: "NVIC_EnableIRQ", scope: !960, file: !960, line: 1494, type: !5203, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1605, retainedNodes: !5494)
!5494 = !{!5495}
!5495 = !DILocalVariable(name: "IRQn", arg: 1, scope: !5493, file: !960, line: 1494, type: !781)
!5496 = !DILocation(line: 0, scope: !5493)
!5497 = !DILocation(line: 1497, column: 91, scope: !5493)
!5498 = !DILocation(line: 1497, column: 61, scope: !5493)
!5499 = !DILocation(line: 1497, column: 40, scope: !5493)
!5500 = !DILocation(line: 1497, column: 3, scope: !5493)
!5501 = !DILocation(line: 1497, column: 46, scope: !5493)
!5502 = !DILocation(line: 1498, column: 1, scope: !5493)
!5503 = distinct !DISubprogram(name: "nvic_clear_all_pending_interrupt", scope: !1606, file: !1606, line: 90, type: !208, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1605, retainedNodes: !5504)
!5504 = !{!5505}
!5505 = !DILocalVariable(name: "irq_number", scope: !5503, file: !1606, line: 92, type: !780)
!5506 = !DILocation(line: 0, scope: !5503)
!5507 = !DILocation(line: 93, column: 5, scope: !5508)
!5508 = distinct !DILexicalBlock(scope: !5503, file: !1606, line: 93, column: 5)
!5509 = !DILocation(line: 94, column: 9, scope: !5510)
!5510 = distinct !DILexicalBlock(scope: !5511, file: !1606, line: 93, column: 85)
!5511 = distinct !DILexicalBlock(scope: !5508, file: !1606, line: 93, column: 5)
!5512 = !DILocation(line: 93, column: 81, scope: !5511)
!5513 = !DILocation(line: 93, column: 53, scope: !5511)
!5514 = distinct !{!5514, !5507, !5515}
!5515 = !DILocation(line: 95, column: 5, scope: !5508)
!5516 = !DILocation(line: 96, column: 1, scope: !5503)
!5517 = distinct !DISubprogram(name: "NVIC_ClearPendingIRQ", scope: !960, file: !960, line: 1547, type: !5203, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1605, retainedNodes: !5518)
!5518 = !{!5519}
!5519 = !DILocalVariable(name: "IRQn", arg: 1, scope: !5517, file: !960, line: 1547, type: !781)
!5520 = !DILocation(line: 0, scope: !5517)
!5521 = !DILocation(line: 1549, column: 65, scope: !5517)
!5522 = !DILocation(line: 1549, column: 44, scope: !5517)
!5523 = !DILocation(line: 1549, column: 32, scope: !5517)
!5524 = !DILocation(line: 1549, column: 3, scope: !5517)
!5525 = !DILocation(line: 1549, column: 39, scope: !5517)
!5526 = !DILocation(line: 1550, column: 1, scope: !5517)
!5527 = distinct !DISubprogram(name: "nvic_irq_software_trigger", scope: !1606, file: !1606, line: 98, type: !5190, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1605, retainedNodes: !5528)
!5528 = !{!5529}
!5529 = !DILocalVariable(name: "irq_number", arg: 1, scope: !5527, file: !1606, line: 98, type: !780)
!5530 = !DILocation(line: 0, scope: !5527)
!5531 = !DILocation(line: 100, column: 24, scope: !5532)
!5532 = distinct !DILexicalBlock(scope: !5527, file: !1606, line: 100, column: 9)
!5533 = !DILocation(line: 104, column: 5, scope: !5527)
!5534 = !DILocation(line: 105, column: 5, scope: !5527)
!5535 = !DILocation(line: 106, column: 1, scope: !5527)
!5536 = distinct !DISubprogram(name: "software_trigger_irq", scope: !1606, file: !1606, line: 45, type: !846, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1605, retainedNodes: !5537)
!5537 = !{!5538}
!5538 = !DILocalVariable(name: "irq_number", arg: 1, scope: !5536, file: !1606, line: 45, type: !780)
!5539 = !DILocation(line: 0, scope: !5536)
!5540 = !DILocation(line: 47, column: 54, scope: !5536)
!5541 = !DILocation(line: 47, column: 16, scope: !5536)
!5542 = !DILocation(line: 445, column: 3, scope: !5543, inlinedAt: !5544)
!5543 = distinct !DISubprogram(name: "__DSB", scope: !5429, file: !5429, line: 443, type: !208, scopeLine: 444, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1605, retainedNodes: !210)
!5544 = distinct !DILocation(line: 48, column: 5, scope: !5536)
!5545 = !{i64 430384}
!5546 = !DILocation(line: 49, column: 1, scope: !5536)
!5547 = distinct !DISubprogram(name: "hal_nvic_query_exception_number", scope: !1606, file: !1606, line: 114, type: !2519, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1605, retainedNodes: !210)
!5548 = !DILocation(line: 116, column: 19, scope: !5547)
!5549 = !DILocation(line: 116, column: 24, scope: !5547)
!5550 = !DILocation(line: 116, column: 5, scope: !5547)
!5551 = distinct !DISubprogram(name: "SFI_Dev_WorkingFrequencyQuery", scope: !1652, file: !1652, line: 709, type: !5552, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1651, retainedNodes: !210)
!5552 = !DISubroutineType(types: !5553)
!5553 = !{!5554}
!5554 = !DIDerivedType(tag: DW_TAG_typedef, name: "sfi_clock_enum", file: !1655, line: 57, baseType: !1654)
!5555 = !DILocation(line: 711, column: 5, scope: !5551)
!5556 = distinct !DISubprogram(name: "SFI_Dev_WorkingVoltageQuery", scope: !1652, file: !1652, line: 714, type: !5557, scopeLine: 715, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1651, retainedNodes: !210)
!5557 = !DISubroutineType(types: !5558)
!5558 = !{!5559}
!5559 = !DIDerivedType(tag: DW_TAG_typedef, name: "sfi_voltage_enum", file: !1655, line: 66, baseType: !1662)
!5560 = !DILocation(line: 716, column: 5, scope: !5556)
!5561 = distinct !DISubprogram(name: "SFI_Dev_GetUniqueID", scope: !1652, file: !1652, line: 718, type: !5562, scopeLine: 719, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1651, retainedNodes: !5564)
!5562 = !DISubroutineType(types: !5563)
!5563 = !{!211, !680}
!5564 = !{!5565}
!5565 = !DILocalVariable(name: "buffer", arg: 1, scope: !5561, file: !1652, line: 718, type: !680)
!5566 = !DILocation(line: 0, scope: !5561)
!5567 = !DILocation(line: 720, column: 5, scope: !5561)
!5568 = distinct !DISubprogram(name: "SF_DAL_DEV_Enter_DPD", scope: !1652, file: !1652, line: 723, type: !208, scopeLine: 724, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1651, retainedNodes: !210)
!5569 = !DILocation(line: 725, column: 1, scope: !5568)
!5570 = distinct !DISubprogram(name: "SF_DAL_DEV_Leave_DPD", scope: !1652, file: !1652, line: 727, type: !208, scopeLine: 728, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1651, retainedNodes: !210)
!5571 = !DILocation(line: 729, column: 1, scope: !5570)
!5572 = distinct !DISubprogram(name: "SF_DAL_DEV_SWITCH_TO_LOW_FQ", scope: !1652, file: !1652, line: 730, type: !208, scopeLine: 731, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1651, retainedNodes: !210)
!5573 = !DILocation(line: 732, column: 1, scope: !5572)
!5574 = distinct !DISubprogram(name: "SF_DAL_DEV_SWITCH_TO_HIGH_FQ", scope: !1652, file: !1652, line: 733, type: !208, scopeLine: 734, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1651, retainedNodes: !210)
!5575 = !DILocation(line: 735, column: 1, scope: !5574)
!5576 = distinct !DISubprogram(name: "Flash_ReturnReady", scope: !1668, file: !1668, line: 4582, type: !208, scopeLine: 4583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1667, retainedNodes: !210)
!5577 = !DILocation(line: 4584, column: 5, scope: !5576)
!5578 = distinct !DISubprogram(name: "log_hal_error_internal", scope: !1670, file: !1670, line: 58, type: !5579, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1669, retainedNodes: !5581)
!5579 = !DISubroutineType(types: !5580)
!5580 = !{null, !1272, !79, !1272, null}
!5581 = !{!5582, !5583, !5584, !5585, !5594}
!5582 = !DILocalVariable(name: "func", arg: 1, scope: !5578, file: !1670, line: 58, type: !1272)
!5583 = !DILocalVariable(name: "line", arg: 2, scope: !5578, file: !1670, line: 58, type: !79)
!5584 = !DILocalVariable(name: "message", arg: 3, scope: !5578, file: !1670, line: 58, type: !1272)
!5585 = !DILocalVariable(name: "ap", scope: !5578, file: !1670, line: 60, type: !5586)
!5586 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !5587, line: 46, baseType: !5588)
!5587 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/stdio.h", directory: "/home/mjshen/RTOSExploration")
!5588 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !5589, line: 32, baseType: !5590)
!5589 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stdarg.h", directory: "")
!5590 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1670, baseType: !5591)
!5591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !5592)
!5592 = !{!5593}
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !5591, file: !1670, line: 60, baseType: !194, size: 32)
!5594 = !DILocalVariable(name: "mask", scope: !5578, file: !1670, line: 62, type: !175)
!5595 = !DILocation(line: 0, scope: !5578)
!5596 = !DILocation(line: 60, column: 5, scope: !5578)
!5597 = !DILocation(line: 60, column: 13, scope: !5578)
!5598 = !DILocation(line: 62, column: 5, scope: !5578)
!5599 = !DILocation(line: 63, column: 5, scope: !5578)
!5600 = !DILocation(line: 65, column: 5, scope: !5578)
!5601 = !DILocation(line: 66, column: 5, scope: !5578)
!5602 = !DILocation(line: 67, column: 5, scope: !5578)
!5603 = !DILocation(line: 69, column: 37, scope: !5578)
!5604 = !DILocation(line: 69, column: 5, scope: !5578)
!5605 = !DILocation(line: 71, column: 1, scope: !5578)
!5606 = distinct !DISubprogram(name: "log_hal_warning_internal", scope: !1670, file: !1670, line: 72, type: !5579, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1669, retainedNodes: !5607)
!5607 = !{!5608, !5609, !5610, !5611, !5612}
!5608 = !DILocalVariable(name: "func", arg: 1, scope: !5606, file: !1670, line: 72, type: !1272)
!5609 = !DILocalVariable(name: "line", arg: 2, scope: !5606, file: !1670, line: 72, type: !79)
!5610 = !DILocalVariable(name: "message", arg: 3, scope: !5606, file: !1670, line: 72, type: !1272)
!5611 = !DILocalVariable(name: "ap", scope: !5606, file: !1670, line: 74, type: !5586)
!5612 = !DILocalVariable(name: "mask", scope: !5606, file: !1670, line: 76, type: !175)
!5613 = !DILocation(line: 0, scope: !5606)
!5614 = !DILocation(line: 74, column: 5, scope: !5606)
!5615 = !DILocation(line: 74, column: 13, scope: !5606)
!5616 = !DILocation(line: 76, column: 5, scope: !5606)
!5617 = !DILocation(line: 77, column: 5, scope: !5606)
!5618 = !DILocation(line: 79, column: 5, scope: !5606)
!5619 = !DILocation(line: 80, column: 5, scope: !5606)
!5620 = !DILocation(line: 81, column: 5, scope: !5606)
!5621 = !DILocation(line: 83, column: 37, scope: !5606)
!5622 = !DILocation(line: 83, column: 5, scope: !5606)
!5623 = !DILocation(line: 85, column: 1, scope: !5606)
!5624 = distinct !DISubprogram(name: "log_hal_info_internal", scope: !1670, file: !1670, line: 86, type: !5579, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1669, retainedNodes: !5625)
!5625 = !{!5626, !5627, !5628, !5629, !5630}
!5626 = !DILocalVariable(name: "func", arg: 1, scope: !5624, file: !1670, line: 86, type: !1272)
!5627 = !DILocalVariable(name: "line", arg: 2, scope: !5624, file: !1670, line: 86, type: !79)
!5628 = !DILocalVariable(name: "message", arg: 3, scope: !5624, file: !1670, line: 86, type: !1272)
!5629 = !DILocalVariable(name: "ap", scope: !5624, file: !1670, line: 88, type: !5586)
!5630 = !DILocalVariable(name: "mask", scope: !5624, file: !1670, line: 90, type: !175)
!5631 = !DILocation(line: 0, scope: !5624)
!5632 = !DILocation(line: 88, column: 5, scope: !5624)
!5633 = !DILocation(line: 88, column: 13, scope: !5624)
!5634 = !DILocation(line: 90, column: 5, scope: !5624)
!5635 = !DILocation(line: 91, column: 5, scope: !5624)
!5636 = !DILocation(line: 93, column: 5, scope: !5624)
!5637 = !DILocation(line: 94, column: 5, scope: !5624)
!5638 = !DILocation(line: 95, column: 5, scope: !5624)
!5639 = !DILocation(line: 97, column: 37, scope: !5624)
!5640 = !DILocation(line: 97, column: 5, scope: !5624)
!5641 = !DILocation(line: 99, column: 1, scope: !5624)
!5642 = distinct !DISubprogram(name: "log_hal_dump_internal", scope: !1670, file: !1670, line: 101, type: !5643, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1669, retainedNodes: !5647)
!5643 = !DISubroutineType(types: !5644)
!5644 = !{null, !1272, !79, !1272, !5645, !79, null}
!5645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5646, size: 32)
!5646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!5647 = !{!5648, !5649, !5650, !5651, !5652}
!5648 = !DILocalVariable(name: "func", arg: 1, scope: !5642, file: !1670, line: 101, type: !1272)
!5649 = !DILocalVariable(name: "line", arg: 2, scope: !5642, file: !1670, line: 101, type: !79)
!5650 = !DILocalVariable(name: "message", arg: 3, scope: !5642, file: !1670, line: 101, type: !1272)
!5651 = !DILocalVariable(name: "data", arg: 4, scope: !5642, file: !1670, line: 101, type: !5645)
!5652 = !DILocalVariable(name: "length", arg: 5, scope: !5642, file: !1670, line: 101, type: !79)
!5653 = !DILocation(line: 0, scope: !5642)
!5654 = !DILocation(line: 103, column: 1, scope: !5642)
!5655 = distinct !DISubprogram(name: "__EMI_GetSR", scope: !1042, file: !1042, line: 87, type: !2267, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !5656)
!5656 = !{!5657, !5658}
!5657 = !DILocalVariable(name: "bank_no", arg: 1, scope: !5655, file: !1042, line: 87, type: !175)
!5658 = !DILocalVariable(name: "value", scope: !5655, file: !1042, line: 89, type: !175)
!5659 = !DILocation(line: 0, scope: !5655)
!5660 = !DILocation(line: 91, column: 41, scope: !5655)
!5661 = !DILocation(line: 91, column: 5, scope: !5655)
!5662 = !DILocation(line: 91, column: 19, scope: !5655)
!5663 = !DILocation(line: 91, column: 31, scope: !5655)
!5664 = !DILocation(line: 92, column: 77, scope: !5655)
!5665 = !DILocation(line: 92, column: 60, scope: !5655)
!5666 = !DILocation(line: 92, column: 31, scope: !5655)
!5667 = !DILocation(line: 94, column: 5, scope: !5655)
!5668 = !DILocation(line: 94, column: 27, scope: !5655)
!5669 = !DILocation(line: 94, column: 39, scope: !5655)
!5670 = !DILocation(line: 94, column: 65, scope: !5655)
!5671 = distinct !{!5671, !5667, !5672}
!5672 = !DILocation(line: 94, column: 70, scope: !5655)
!5673 = !DILocation(line: 96, column: 29, scope: !5655)
!5674 = !DILocation(line: 96, column: 64, scope: !5655)
!5675 = !DILocation(line: 98, column: 5, scope: !5655)
!5676 = distinct !DISubprogram(name: "__EMI_SetSR", scope: !1042, file: !1042, line: 102, type: !5677, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !5679)
!5677 = !DISubroutineType(types: !5678)
!5678 = !{null, !175, !175}
!5679 = !{!5680, !5681}
!5680 = !DILocalVariable(name: "bank_no", arg: 1, scope: !5676, file: !1042, line: 102, type: !175)
!5681 = !DILocalVariable(name: "value", arg: 2, scope: !5676, file: !1042, line: 102, type: !175)
!5682 = !DILocation(line: 0, scope: !5676)
!5683 = !DILocation(line: 106, column: 40, scope: !5676)
!5684 = !DILocation(line: 106, column: 77, scope: !5676)
!5685 = !DILocation(line: 106, column: 102, scope: !5676)
!5686 = !DILocation(line: 106, column: 5, scope: !5676)
!5687 = !DILocation(line: 106, column: 19, scope: !5676)
!5688 = !DILocation(line: 106, column: 31, scope: !5676)
!5689 = !DILocation(line: 107, column: 77, scope: !5676)
!5690 = !DILocation(line: 107, column: 60, scope: !5676)
!5691 = !DILocation(line: 107, column: 31, scope: !5676)
!5692 = !DILocation(line: 109, column: 5, scope: !5676)
!5693 = !DILocation(line: 109, column: 27, scope: !5676)
!5694 = !DILocation(line: 109, column: 39, scope: !5676)
!5695 = !DILocation(line: 109, column: 65, scope: !5676)
!5696 = distinct !{!5696, !5692, !5697}
!5697 = !DILocation(line: 109, column: 70, scope: !5676)
!5698 = !DILocation(line: 111, column: 5, scope: !5676)
!5699 = distinct !DISubprogram(name: "__EMI_SetRegValfromCMCP", scope: !1042, file: !1042, line: 114, type: !208, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !210)
!5700 = !DILocation(line: 117, column: 36, scope: !5699)
!5701 = !DILocation(line: 117, column: 18, scope: !5699)
!5702 = !DILocation(line: 118, column: 37, scope: !5699)
!5703 = !DILocation(line: 118, column: 18, scope: !5699)
!5704 = !DILocation(line: 119, column: 37, scope: !5699)
!5705 = !DILocation(line: 119, column: 19, scope: !5699)
!5706 = !DILocation(line: 120, column: 37, scope: !5699)
!5707 = !DILocation(line: 120, column: 19, scope: !5699)
!5708 = !DILocation(line: 121, column: 37, scope: !5699)
!5709 = !DILocation(line: 121, column: 19, scope: !5699)
!5710 = !DILocation(line: 122, column: 37, scope: !5699)
!5711 = !DILocation(line: 122, column: 19, scope: !5699)
!5712 = !DILocation(line: 123, column: 37, scope: !5699)
!5713 = !DILocation(line: 123, column: 19, scope: !5699)
!5714 = !DILocation(line: 125, column: 37, scope: !5699)
!5715 = !DILocation(line: 125, column: 19, scope: !5699)
!5716 = !DILocation(line: 126, column: 37, scope: !5699)
!5717 = !DILocation(line: 126, column: 19, scope: !5699)
!5718 = !DILocation(line: 127, column: 37, scope: !5699)
!5719 = !DILocation(line: 127, column: 19, scope: !5699)
!5720 = !DILocation(line: 128, column: 37, scope: !5699)
!5721 = !DILocation(line: 128, column: 19, scope: !5699)
!5722 = !DILocation(line: 130, column: 36, scope: !5699)
!5723 = !DILocation(line: 130, column: 18, scope: !5699)
!5724 = !DILocation(line: 131, column: 36, scope: !5699)
!5725 = !DILocation(line: 131, column: 18, scope: !5699)
!5726 = !DILocation(line: 133, column: 5, scope: !5699)
!5727 = distinct !DISubprogram(name: "__EMI_EnableBandwidthLimiter", scope: !1042, file: !1042, line: 140, type: !5728, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !210)
!5728 = !DISubroutineType(types: !5729)
!5729 = !{!79}
!5730 = !DILocation(line: 144, column: 5, scope: !5727)
!5731 = !DILocation(line: 144, column: 19, scope: !5727)
!5732 = !DILocation(line: 144, column: 28, scope: !5727)
!5733 = !DILocation(line: 147, column: 19, scope: !5727)
!5734 = !DILocation(line: 147, column: 28, scope: !5727)
!5735 = !DILocation(line: 150, column: 19, scope: !5727)
!5736 = !DILocation(line: 150, column: 28, scope: !5727)
!5737 = !DILocation(line: 152, column: 5, scope: !5727)
!5738 = distinct !DISubprogram(name: "TestCase_MBIST", scope: !1042, file: !1042, line: 157, type: !5739, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !5741)
!5739 = !DISubroutineType(types: !5740)
!5740 = !{!1022}
!5741 = !{!5742, !5743, !5744, !5745, !5746, !5747}
!5742 = !DILocalVariable(name: "mbist_src", scope: !5738, file: !1042, line: 159, type: !175)
!5743 = !DILocalVariable(name: "mbist_len", scope: !5738, file: !1042, line: 159, type: !175)
!5744 = !DILocalVariable(name: "mbist_data", scope: !5738, file: !1042, line: 159, type: !2240)
!5745 = !DILocalVariable(name: "i", scope: !5738, file: !1042, line: 160, type: !175)
!5746 = !DILocalVariable(name: "bist_data_inv", scope: !5738, file: !1042, line: 160, type: !175)
!5747 = !DILocalVariable(name: "bist_data_random", scope: !5738, file: !1042, line: 160, type: !175)
!5748 = !DILocation(line: 159, column: 36, scope: !5738)
!5749 = !DILocation(line: 0, scope: !5738)
!5750 = !DILocation(line: 165, column: 5, scope: !5738)
!5751 = !DILocation(line: 165, column: 19, scope: !5738)
!5752 = !DILocation(line: 165, column: 30, scope: !5738)
!5753 = !DILocation(line: 166, column: 5, scope: !5754)
!5754 = distinct !DILexicalBlock(scope: !5738, file: !1042, line: 166, column: 5)
!5755 = !DILocation(line: 167, column: 9, scope: !5756)
!5756 = distinct !DILexicalBlock(scope: !5757, file: !1042, line: 167, column: 9)
!5757 = distinct !DILexicalBlock(scope: !5758, file: !1042, line: 166, column: 66)
!5758 = distinct !DILexicalBlock(scope: !5754, file: !1042, line: 166, column: 5)
!5759 = !DILocation(line: 168, column: 13, scope: !5760)
!5760 = distinct !DILexicalBlock(scope: !5761, file: !1042, line: 168, column: 13)
!5761 = distinct !DILexicalBlock(scope: !5762, file: !1042, line: 167, column: 34)
!5762 = distinct !DILexicalBlock(scope: !5756, file: !1042, line: 167, column: 9)
!5763 = !DILocation(line: 168, column: 57, scope: !5764)
!5764 = distinct !DILexicalBlock(scope: !5760, file: !1042, line: 168, column: 13)
!5765 = distinct !{!5765, !5759, !5766}
!5766 = !DILocation(line: 183, column: 13, scope: !5760)
!5767 = !DILocation(line: 170, column: 42, scope: !5768)
!5768 = distinct !DILexicalBlock(scope: !5764, file: !1042, line: 168, column: 83)
!5769 = !DILocation(line: 172, column: 42, scope: !5768)
!5770 = !DILocation(line: 174, column: 45, scope: !5768)
!5771 = !DILocation(line: 174, column: 59, scope: !5768)
!5772 = !DILocation(line: 174, column: 154, scope: !5768)
!5773 = !DILocation(line: 174, column: 87, scope: !5768)
!5774 = !DILocation(line: 174, column: 134, scope: !5768)
!5775 = !DILocation(line: 174, column: 42, scope: !5768)
!5776 = !DILocation(line: 175, column: 42, scope: !5768)
!5777 = !DILocation(line: 177, column: 17, scope: !5768)
!5778 = !DILocation(line: 177, column: 39, scope: !5768)
!5779 = !DILocation(line: 177, column: 50, scope: !5768)
!5780 = !DILocation(line: 177, column: 71, scope: !5768)
!5781 = distinct !{!5781, !5777, !5782}
!5782 = !DILocation(line: 177, column: 78, scope: !5768)
!5783 = !DILocation(line: 179, column: 36, scope: !5784)
!5784 = distinct !DILexicalBlock(scope: !5768, file: !1042, line: 179, column: 21)
!5785 = !DILocation(line: 179, column: 47, scope: !5784)
!5786 = !DILocation(line: 179, column: 69, scope: !5784)
!5787 = !DILocation(line: 168, column: 79, scope: !5764)
!5788 = !DILocation(line: 179, column: 21, scope: !5768)
!5789 = !DILocation(line: 167, column: 30, scope: !5762)
!5790 = !DILocation(line: 167, column: 23, scope: !5762)
!5791 = distinct !{!5791, !5755, !5792}
!5792 = !DILocation(line: 184, column: 9, scope: !5756)
!5793 = !DILocation(line: 166, column: 62, scope: !5758)
!5794 = !DILocation(line: 166, column: 43, scope: !5758)
!5795 = distinct !{!5795, !5753, !5796}
!5796 = !DILocation(line: 185, column: 5, scope: !5754)
!5797 = !DILocation(line: 189, column: 1, scope: !5738)
!5798 = distinct !DISubprogram(name: "__EMI_DataAutoTrackingMbistTest", scope: !1042, file: !1042, line: 190, type: !5739, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !210)
!5799 = !DILocation(line: 192, column: 9, scope: !5800)
!5800 = distinct !DILexicalBlock(scope: !5798, file: !1042, line: 192, column: 9)
!5801 = !DILocation(line: 192, column: 26, scope: !5800)
!5802 = !DILocation(line: 0, scope: !5798)
!5803 = !DILocation(line: 197, column: 1, scope: !5798)
!5804 = distinct !DISubprogram(name: "__EMI_EnableDataAutoTracking", scope: !1042, file: !1042, line: 201, type: !208, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !5805)
!5805 = !{!5806, !5807}
!5806 = !DILocalVariable(name: "dqy_in_del", scope: !5804, file: !1042, line: 203, type: !1022)
!5807 = !DILocalVariable(name: "dqs_in_del", scope: !5804, file: !1042, line: 204, type: !1022)
!5808 = !DILocation(line: 0, scope: !5804)
!5809 = !DILocation(line: 206, column: 5, scope: !5804)
!5810 = !DILocation(line: 206, column: 19, scope: !5804)
!5811 = !DILocation(line: 206, column: 28, scope: !5804)
!5812 = !DILocation(line: 207, column: 19, scope: !5804)
!5813 = !DILocation(line: 207, column: 28, scope: !5804)
!5814 = !DILocation(line: 208, column: 19, scope: !5804)
!5815 = !DILocation(line: 208, column: 28, scope: !5804)
!5816 = !DILocation(line: 209, column: 19, scope: !5804)
!5817 = !DILocation(line: 209, column: 28, scope: !5804)
!5818 = !DILocation(line: 212, column: 23, scope: !5819)
!5819 = distinct !DILexicalBlock(scope: !5820, file: !1042, line: 211, column: 78)
!5820 = distinct !DILexicalBlock(scope: !5821, file: !1042, line: 211, column: 5)
!5821 = distinct !DILexicalBlock(scope: !5804, file: !1042, line: 211, column: 5)
!5822 = !DILocation(line: 212, column: 32, scope: !5819)
!5823 = !DILocation(line: 213, column: 23, scope: !5819)
!5824 = !DILocation(line: 213, column: 32, scope: !5819)
!5825 = !DILocation(line: 215, column: 19, scope: !5826)
!5826 = distinct !DILexicalBlock(scope: !5819, file: !1042, line: 215, column: 13)
!5827 = !DILocation(line: 215, column: 15, scope: !5826)
!5828 = !DILocation(line: 215, column: 13, scope: !5819)
!5829 = !DILocation(line: 211, column: 40, scope: !5820)
!5830 = !DILocation(line: 211, column: 5, scope: !5821)
!5831 = distinct !{!5831, !5830, !5832}
!5832 = !DILocation(line: 218, column: 5, scope: !5821)
!5833 = !DILocation(line: 211, column: 57, scope: !5820)
!5834 = !DILocation(line: 212, column: 9, scope: !5819)
!5835 = !DILocation(line: 212, column: 45, scope: !5819)
!5836 = !DILocation(line: 212, column: 83, scope: !5819)
!5837 = !DILocation(line: 212, column: 121, scope: !5819)
!5838 = !DILocation(line: 212, column: 70, scope: !5819)
!5839 = !DILocation(line: 212, column: 108, scope: !5819)
!5840 = !DILocation(line: 212, column: 146, scope: !5819)
!5841 = !DILocation(line: 222, column: 49, scope: !5842)
!5842 = distinct !DILexicalBlock(scope: !5843, file: !1042, line: 221, column: 84)
!5843 = distinct !DILexicalBlock(scope: !5844, file: !1042, line: 221, column: 9)
!5844 = distinct !DILexicalBlock(scope: !5845, file: !1042, line: 221, column: 9)
!5845 = distinct !DILexicalBlock(scope: !5846, file: !1042, line: 220, column: 25)
!5846 = distinct !DILexicalBlock(scope: !5804, file: !1042, line: 220, column: 9)
!5847 = !DILocation(line: 222, column: 13, scope: !5842)
!5848 = !DILocation(line: 222, column: 27, scope: !5842)
!5849 = !DILocation(line: 222, column: 36, scope: !5842)
!5850 = !DILocation(line: 224, column: 23, scope: !5851)
!5851 = distinct !DILexicalBlock(scope: !5842, file: !1042, line: 224, column: 17)
!5852 = !DILocation(line: 224, column: 19, scope: !5851)
!5853 = !DILocation(line: 224, column: 17, scope: !5842)
!5854 = distinct !{!5854, !5855, !5856}
!5855 = !DILocation(line: 221, column: 9, scope: !5844)
!5856 = !DILocation(line: 227, column: 9, scope: !5844)
!5857 = !DILocation(line: 230, column: 1, scope: !5804)
!5858 = distinct !DISubprogram(name: "EMI_PowerOn_Init", scope: !1042, file: !1042, line: 253, type: !208, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !210)
!5859 = !DILocation(line: 257, column: 26, scope: !5858)
!5860 = !DILocation(line: 259, column: 5, scope: !5858)
!5861 = !DILocation(line: 259, column: 19, scope: !5858)
!5862 = !DILocation(line: 259, column: 29, scope: !5858)
!5863 = !DILocation(line: 260, column: 5, scope: !5858)
!5864 = !DILocation(line: 260, column: 27, scope: !5858)
!5865 = !DILocation(line: 260, column: 93, scope: !5858)
!5866 = distinct !{!5866, !5863, !5867}
!5867 = !DILocation(line: 260, column: 98, scope: !5858)
!5868 = !DILocation(line: 261, column: 29, scope: !5858)
!5869 = !DILocation(line: 262, column: 5, scope: !5858)
!5870 = !DILocation(line: 262, column: 27, scope: !5858)
!5871 = !DILocation(line: 262, column: 93, scope: !5858)
!5872 = distinct !{!5872, !5869, !5873}
!5873 = !DILocation(line: 262, column: 98, scope: !5858)
!5874 = !DILocation(line: 264, column: 42, scope: !5858)
!5875 = !DILocation(line: 265, column: 48, scope: !5858)
!5876 = !DILocation(line: 267, column: 5, scope: !5858)
!5877 = !DILocation(line: 267, column: 27, scope: !5858)
!5878 = !DILocation(line: 267, column: 39, scope: !5858)
!5879 = !DILocation(line: 267, column: 65, scope: !5858)
!5880 = distinct !{!5880, !5876, !5881}
!5881 = !DILocation(line: 267, column: 70, scope: !5858)
!5882 = !DILocation(line: 269, column: 5, scope: !5858)
!5883 = !DILocation(line: 273, column: 8, scope: !5858)
!5884 = !DILocation(line: 275, column: 5, scope: !5858)
!5885 = !DILocation(line: 275, column: 27, scope: !5858)
!5886 = !DILocation(line: 275, column: 39, scope: !5858)
!5887 = !DILocation(line: 275, column: 65, scope: !5858)
!5888 = distinct !{!5888, !5884, !5889}
!5889 = !DILocation(line: 275, column: 70, scope: !5858)
!5890 = !DILocation(line: 278, column: 9, scope: !5891)
!5891 = distinct !DILexicalBlock(scope: !5858, file: !1042, line: 278, column: 9)
!5892 = !DILocation(line: 278, column: 44, scope: !5891)
!5893 = !DILocation(line: 278, column: 9, scope: !5858)
!5894 = !DILocation(line: 279, column: 13, scope: !5895)
!5895 = distinct !DILexicalBlock(scope: !5896, file: !1042, line: 279, column: 12)
!5896 = distinct !DILexicalBlock(scope: !5891, file: !1042, line: 278, column: 55)
!5897 = !DILocation(line: 279, column: 48, scope: !5895)
!5898 = !DILocation(line: 279, column: 56, scope: !5895)
!5899 = !DILocation(line: 0, scope: !5895)
!5900 = !DILocation(line: 288, column: 1, scope: !5858)
!5901 = distinct !DISubprogram(name: "custom_setEMI", scope: !1042, file: !1042, line: 294, type: !5902, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !210)
!5902 = !DISubroutineType(types: !5903)
!5903 = !{!5904}
!5904 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !176, line: 20, baseType: !5905)
!5905 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !178, line: 41, baseType: !5906)
!5906 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!5907 = !DILocation(line: 298, column: 5, scope: !5901)
!5908 = !DILocation(line: 300, column: 5, scope: !5901)
!5909 = !DILocation(line: 302, column: 20, scope: !5901)
!5910 = !DILocation(line: 302, column: 18, scope: !5901)
!5911 = !DILocation(line: 303, column: 20, scope: !5901)
!5912 = !DILocation(line: 303, column: 18, scope: !5901)
!5913 = !DILocation(line: 304, column: 20, scope: !5901)
!5914 = !DILocation(line: 304, column: 18, scope: !5901)
!5915 = !DILocation(line: 307, column: 5, scope: !5901)
!5916 = distinct !DISubprogram(name: "custom_setAdvEMI", scope: !1042, file: !1042, line: 312, type: !5902, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !210)
!5917 = !DILocation(line: 319, column: 29, scope: !5916)
!5918 = !DILocation(line: 319, column: 5, scope: !5916)
!5919 = !DILocation(line: 319, column: 19, scope: !5916)
!5920 = !DILocation(line: 319, column: 27, scope: !5916)
!5921 = !DILocation(line: 320, column: 29, scope: !5916)
!5922 = !DILocation(line: 320, column: 19, scope: !5916)
!5923 = !DILocation(line: 320, column: 27, scope: !5916)
!5924 = !DILocation(line: 322, column: 30, scope: !5916)
!5925 = !DILocation(line: 322, column: 19, scope: !5916)
!5926 = !DILocation(line: 322, column: 28, scope: !5916)
!5927 = !DILocation(line: 324, column: 30, scope: !5916)
!5928 = !DILocation(line: 324, column: 19, scope: !5916)
!5929 = !DILocation(line: 324, column: 28, scope: !5916)
!5930 = !DILocation(line: 326, column: 31, scope: !5916)
!5931 = !DILocation(line: 326, column: 19, scope: !5916)
!5932 = !DILocation(line: 326, column: 29, scope: !5916)
!5933 = !DILocation(line: 327, column: 31, scope: !5916)
!5934 = !DILocation(line: 327, column: 19, scope: !5916)
!5935 = !DILocation(line: 327, column: 29, scope: !5916)
!5936 = !DILocation(line: 332, column: 30, scope: !5916)
!5937 = !DILocation(line: 332, column: 19, scope: !5916)
!5938 = !DILocation(line: 332, column: 28, scope: !5916)
!5939 = !DILocation(line: 333, column: 30, scope: !5916)
!5940 = !DILocation(line: 333, column: 19, scope: !5916)
!5941 = !DILocation(line: 333, column: 28, scope: !5916)
!5942 = !DILocation(line: 334, column: 30, scope: !5916)
!5943 = !DILocation(line: 334, column: 19, scope: !5916)
!5944 = !DILocation(line: 334, column: 28, scope: !5916)
!5945 = !DILocation(line: 336, column: 30, scope: !5916)
!5946 = !DILocation(line: 336, column: 19, scope: !5916)
!5947 = !DILocation(line: 336, column: 28, scope: !5916)
!5948 = !DILocation(line: 337, column: 30, scope: !5916)
!5949 = !DILocation(line: 337, column: 19, scope: !5916)
!5950 = !DILocation(line: 337, column: 28, scope: !5916)
!5951 = !DILocation(line: 338, column: 30, scope: !5916)
!5952 = !DILocation(line: 338, column: 19, scope: !5916)
!5953 = !DILocation(line: 338, column: 28, scope: !5916)
!5954 = !DILocation(line: 339, column: 30, scope: !5916)
!5955 = !DILocation(line: 339, column: 19, scope: !5916)
!5956 = !DILocation(line: 339, column: 28, scope: !5916)
!5957 = !DILocation(line: 341, column: 5, scope: !5916)
!5958 = !DILocation(line: 345, column: 5, scope: !5916)
!5959 = !DILocation(line: 345, column: 19, scope: !5916)
!5960 = !DILocation(line: 345, column: 28, scope: !5916)
!5961 = !DILocation(line: 346, column: 5, scope: !5916)
!5962 = !DILocation(line: 346, column: 28, scope: !5916)
!5963 = !DILocation(line: 346, column: 82, scope: !5916)
!5964 = distinct !{!5964, !5961, !5965}
!5965 = !DILocation(line: 346, column: 87, scope: !5916)
!5966 = !DILocation(line: 347, column: 28, scope: !5916)
!5967 = !DILocation(line: 348, column: 5, scope: !5916)
!5968 = !DILocation(line: 348, column: 28, scope: !5916)
!5969 = !DILocation(line: 348, column: 82, scope: !5916)
!5970 = distinct !{!5970, !5967, !5971}
!5971 = !DILocation(line: 348, column: 87, scope: !5916)
!5972 = !DILocation(line: 349, column: 28, scope: !5916)
!5973 = !DILocation(line: 351, column: 5, scope: !5916)
!5974 = !DILocation(line: 353, column: 5, scope: !5916)
!5975 = distinct !DISubprogram(name: "EMI_Setting_Save", scope: !1042, file: !1042, line: 358, type: !208, scopeLine: 359, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !210)
!5976 = !DILocation(line: 361, column: 36, scope: !5975)
!5977 = !DILocation(line: 361, column: 50, scope: !5975)
!5978 = !DILocation(line: 361, column: 34, scope: !5975)
!5979 = !DILocation(line: 362, column: 50, scope: !5975)
!5980 = !DILocation(line: 362, column: 34, scope: !5975)
!5981 = !DILocation(line: 363, column: 50, scope: !5975)
!5982 = !DILocation(line: 363, column: 34, scope: !5975)
!5983 = !DILocation(line: 364, column: 50, scope: !5975)
!5984 = !DILocation(line: 364, column: 34, scope: !5975)
!5985 = !DILocation(line: 365, column: 50, scope: !5975)
!5986 = !DILocation(line: 365, column: 34, scope: !5975)
!5987 = !DILocation(line: 366, column: 50, scope: !5975)
!5988 = !DILocation(line: 366, column: 34, scope: !5975)
!5989 = !DILocation(line: 367, column: 50, scope: !5975)
!5990 = !DILocation(line: 367, column: 34, scope: !5975)
!5991 = !DILocation(line: 368, column: 50, scope: !5975)
!5992 = !DILocation(line: 368, column: 34, scope: !5975)
!5993 = !DILocation(line: 369, column: 50, scope: !5975)
!5994 = !DILocation(line: 369, column: 34, scope: !5975)
!5995 = !DILocation(line: 370, column: 50, scope: !5975)
!5996 = !DILocation(line: 370, column: 34, scope: !5975)
!5997 = !DILocation(line: 371, column: 50, scope: !5975)
!5998 = !DILocation(line: 371, column: 34, scope: !5975)
!5999 = !DILocation(line: 372, column: 50, scope: !5975)
!6000 = !DILocation(line: 372, column: 34, scope: !5975)
!6001 = !DILocation(line: 373, column: 51, scope: !5975)
!6002 = !DILocation(line: 373, column: 35, scope: !5975)
!6003 = !DILocation(line: 374, column: 51, scope: !5975)
!6004 = !DILocation(line: 374, column: 35, scope: !5975)
!6005 = !DILocation(line: 375, column: 50, scope: !5975)
!6006 = !DILocation(line: 375, column: 34, scope: !5975)
!6007 = !DILocation(line: 376, column: 50, scope: !5975)
!6008 = !DILocation(line: 376, column: 34, scope: !5975)
!6009 = !DILocation(line: 377, column: 50, scope: !5975)
!6010 = !DILocation(line: 377, column: 34, scope: !5975)
!6011 = !DILocation(line: 378, column: 50, scope: !5975)
!6012 = !DILocation(line: 378, column: 34, scope: !5975)
!6013 = !DILocation(line: 379, column: 50, scope: !5975)
!6014 = !DILocation(line: 379, column: 34, scope: !5975)
!6015 = !DILocation(line: 380, column: 50, scope: !5975)
!6016 = !DILocation(line: 380, column: 34, scope: !5975)
!6017 = !DILocation(line: 382, column: 1, scope: !5975)
!6018 = distinct !DISubprogram(name: "EMI_Setting_restore", scope: !1042, file: !1042, line: 384, type: !208, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !210)
!6019 = !DILocation(line: 387, column: 5, scope: !6018)
!6020 = !DILocation(line: 387, column: 27, scope: !6018)
!6021 = !DILocation(line: 387, column: 36, scope: !6018)
!6022 = !DILocation(line: 387, column: 76, scope: !6018)
!6023 = distinct !{!6023, !6019, !6024}
!6024 = !DILocation(line: 387, column: 84, scope: !6018)
!6025 = !DILocation(line: 388, column: 50, scope: !6018)
!6026 = !DILocation(line: 388, column: 19, scope: !6018)
!6027 = !DILocation(line: 388, column: 28, scope: !6018)
!6028 = !DILocation(line: 389, column: 50, scope: !6018)
!6029 = !DILocation(line: 389, column: 19, scope: !6018)
!6030 = !DILocation(line: 389, column: 28, scope: !6018)
!6031 = !DILocation(line: 390, column: 50, scope: !6018)
!6032 = !DILocation(line: 390, column: 19, scope: !6018)
!6033 = !DILocation(line: 390, column: 28, scope: !6018)
!6034 = !DILocation(line: 391, column: 50, scope: !6018)
!6035 = !DILocation(line: 391, column: 19, scope: !6018)
!6036 = !DILocation(line: 391, column: 28, scope: !6018)
!6037 = !DILocation(line: 392, column: 50, scope: !6018)
!6038 = !DILocation(line: 392, column: 19, scope: !6018)
!6039 = !DILocation(line: 392, column: 28, scope: !6018)
!6040 = !DILocation(line: 393, column: 50, scope: !6018)
!6041 = !DILocation(line: 393, column: 19, scope: !6018)
!6042 = !DILocation(line: 393, column: 28, scope: !6018)
!6043 = !DILocation(line: 394, column: 51, scope: !6018)
!6044 = !DILocation(line: 394, column: 19, scope: !6018)
!6045 = !DILocation(line: 394, column: 29, scope: !6018)
!6046 = !DILocation(line: 395, column: 51, scope: !6018)
!6047 = !DILocation(line: 395, column: 19, scope: !6018)
!6048 = !DILocation(line: 395, column: 29, scope: !6018)
!6049 = !DILocation(line: 396, column: 50, scope: !6018)
!6050 = !DILocation(line: 396, column: 19, scope: !6018)
!6051 = !DILocation(line: 396, column: 28, scope: !6018)
!6052 = !DILocation(line: 397, column: 50, scope: !6018)
!6053 = !DILocation(line: 397, column: 19, scope: !6018)
!6054 = !DILocation(line: 397, column: 28, scope: !6018)
!6055 = !DILocation(line: 398, column: 50, scope: !6018)
!6056 = !DILocation(line: 398, column: 19, scope: !6018)
!6057 = !DILocation(line: 398, column: 28, scope: !6018)
!6058 = !DILocation(line: 399, column: 50, scope: !6018)
!6059 = !DILocation(line: 399, column: 19, scope: !6018)
!6060 = !DILocation(line: 399, column: 28, scope: !6018)
!6061 = !DILocation(line: 400, column: 50, scope: !6018)
!6062 = !DILocation(line: 400, column: 19, scope: !6018)
!6063 = !DILocation(line: 400, column: 28, scope: !6018)
!6064 = !DILocation(line: 401, column: 50, scope: !6018)
!6065 = !DILocation(line: 401, column: 19, scope: !6018)
!6066 = !DILocation(line: 401, column: 28, scope: !6018)
!6067 = !DILocation(line: 402, column: 50, scope: !6018)
!6068 = !DILocation(line: 402, column: 19, scope: !6018)
!6069 = !DILocation(line: 402, column: 28, scope: !6018)
!6070 = !DILocation(line: 403, column: 50, scope: !6018)
!6071 = !DILocation(line: 403, column: 19, scope: !6018)
!6072 = !DILocation(line: 403, column: 28, scope: !6018)
!6073 = !DILocation(line: 404, column: 50, scope: !6018)
!6074 = !DILocation(line: 404, column: 19, scope: !6018)
!6075 = !DILocation(line: 404, column: 28, scope: !6018)
!6076 = !DILocation(line: 405, column: 50, scope: !6018)
!6077 = !DILocation(line: 405, column: 19, scope: !6018)
!6078 = !DILocation(line: 405, column: 28, scope: !6018)
!6079 = !DILocation(line: 406, column: 50, scope: !6018)
!6080 = !DILocation(line: 406, column: 19, scope: !6018)
!6081 = !DILocation(line: 406, column: 28, scope: !6018)
!6082 = !DILocation(line: 408, column: 1, scope: !6018)
!6083 = distinct !DISubprogram(name: "mtk_psram_half_sleep_exit", scope: !1042, file: !1042, line: 410, type: !208, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !210)
!6084 = !DILocation(line: 413, column: 29, scope: !6083)
!6085 = !DILocation(line: 413, column: 43, scope: !6083)
!6086 = !DILocation(line: 413, column: 51, scope: !6083)
!6087 = !DILocation(line: 413, column: 27, scope: !6083)
!6088 = !DILocation(line: 416, column: 19, scope: !6083)
!6089 = !DILocation(line: 416, column: 29, scope: !6083)
!6090 = !DILocation(line: 417, column: 5, scope: !6083)
!6091 = !DILocation(line: 417, column: 27, scope: !6083)
!6092 = !DILocation(line: 417, column: 93, scope: !6083)
!6093 = distinct !{!6093, !6090, !6094}
!6094 = !DILocation(line: 417, column: 98, scope: !6083)
!6095 = !DILocation(line: 418, column: 29, scope: !6083)
!6096 = !DILocation(line: 419, column: 5, scope: !6083)
!6097 = !DILocation(line: 419, column: 27, scope: !6083)
!6098 = !DILocation(line: 419, column: 93, scope: !6083)
!6099 = distinct !{!6099, !6096, !6100}
!6100 = !DILocation(line: 419, column: 98, scope: !6083)
!6101 = !DILocation(line: 421, column: 5, scope: !6083)
!6102 = !DILocation(line: 422, column: 5, scope: !6083)
!6103 = !DILocation(line: 422, column: 19, scope: !6083)
!6104 = !DILocation(line: 422, column: 28, scope: !6083)
!6105 = !DILocation(line: 423, column: 5, scope: !6083)
!6106 = !DILocation(line: 423, column: 28, scope: !6083)
!6107 = !DILocation(line: 423, column: 82, scope: !6083)
!6108 = distinct !{!6108, !6105, !6109}
!6109 = !DILocation(line: 423, column: 87, scope: !6083)
!6110 = !DILocation(line: 424, column: 28, scope: !6083)
!6111 = !DILocation(line: 425, column: 5, scope: !6083)
!6112 = !DILocation(line: 425, column: 28, scope: !6083)
!6113 = !DILocation(line: 425, column: 82, scope: !6083)
!6114 = distinct !{!6114, !6111, !6115}
!6115 = !DILocation(line: 425, column: 87, scope: !6083)
!6116 = !DILocation(line: 426, column: 28, scope: !6083)
!6117 = !DILocation(line: 428, column: 50, scope: !6083)
!6118 = !DILocation(line: 428, column: 19, scope: !6083)
!6119 = !DILocation(line: 428, column: 28, scope: !6083)
!6120 = !DILocation(line: 432, column: 1, scope: !6083)
!6121 = distinct !DISubprogram(name: "mtk_psram_half_sleep_enter", scope: !1042, file: !1042, line: 434, type: !208, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !210)
!6122 = !DILocation(line: 437, column: 5, scope: !6121)
!6123 = !DILocation(line: 440, column: 5, scope: !6121)
!6124 = !DILocation(line: 440, column: 27, scope: !6121)
!6125 = !DILocation(line: 440, column: 36, scope: !6121)
!6126 = !DILocation(line: 440, column: 76, scope: !6121)
!6127 = distinct !{!6127, !6123, !6128}
!6128 = !DILocation(line: 440, column: 84, scope: !6121)
!6129 = !DILocation(line: 441, column: 45, scope: !6121)
!6130 = !DILocation(line: 441, column: 54, scope: !6121)
!6131 = !DILocation(line: 441, column: 28, scope: !6121)
!6132 = !DILocation(line: 442, column: 19, scope: !6121)
!6133 = !DILocation(line: 442, column: 31, scope: !6121)
!6134 = !DILocation(line: 443, column: 5, scope: !6121)
!6135 = !DILocation(line: 443, column: 27, scope: !6121)
!6136 = !DILocation(line: 443, column: 39, scope: !6121)
!6137 = !DILocation(line: 443, column: 65, scope: !6121)
!6138 = distinct !{!6138, !6134, !6139}
!6139 = !DILocation(line: 443, column: 70, scope: !6121)
!6140 = !DILocation(line: 444, column: 19, scope: !6121)
!6141 = !DILocation(line: 444, column: 28, scope: !6121)
!6142 = !DILocation(line: 445, column: 5, scope: !6121)
!6143 = !DILocation(line: 445, column: 27, scope: !6121)
!6144 = !DILocation(line: 445, column: 91, scope: !6121)
!6145 = distinct !{!6145, !6142, !6146}
!6146 = !DILocation(line: 445, column: 96, scope: !6121)
!6147 = !DILocation(line: 447, column: 43, scope: !6121)
!6148 = !DILocation(line: 447, column: 51, scope: !6121)
!6149 = !DILocation(line: 447, column: 27, scope: !6121)
!6150 = !DILocation(line: 450, column: 1, scope: !6121)
!6151 = distinct !DISubprogram(name: "EMI_DynamicClockSwitch", scope: !1042, file: !1042, line: 452, type: !6152, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !6155)
!6152 = !DISubroutineType(types: !6153)
!6153 = !{!1022, !6154}
!6154 = !DIDerivedType(tag: DW_TAG_typedef, name: "emi_clock", file: !1045, line: 43, baseType: !1044)
!6155 = !{!6156, !6157}
!6156 = !DILocalVariable(name: "clock", arg: 1, scope: !6151, file: !1042, line: 452, type: !6154)
!6157 = !DILocalVariable(name: "delay", scope: !6151, file: !1042, line: 457, type: !184)
!6158 = !DILocation(line: 0, scope: !6151)
!6159 = !DILocation(line: 457, column: 5, scope: !6151)
!6160 = !DILocation(line: 457, column: 23, scope: !6151)
!6161 = !DILocation(line: 458, column: 9, scope: !6151)
!6162 = !DILocation(line: 465, column: 9, scope: !6163)
!6163 = distinct !DILexicalBlock(scope: !6164, file: !1042, line: 458, column: 39)
!6164 = distinct !DILexicalBlock(scope: !6151, file: !1042, line: 458, column: 9)
!6165 = !DILocation(line: 465, column: 23, scope: !6163)
!6166 = !DILocation(line: 465, column: 32, scope: !6163)
!6167 = !DILocation(line: 466, column: 32, scope: !6163)
!6168 = !DILocation(line: 467, column: 9, scope: !6163)
!6169 = !DILocation(line: 467, column: 32, scope: !6163)
!6170 = !DILocation(line: 467, column: 86, scope: !6163)
!6171 = distinct !{!6171, !6168, !6172}
!6172 = !DILocation(line: 467, column: 91, scope: !6163)
!6173 = !DILocation(line: 468, column: 32, scope: !6163)
!6174 = !DILocation(line: 469, column: 9, scope: !6163)
!6175 = !DILocation(line: 469, column: 32, scope: !6163)
!6176 = !DILocation(line: 469, column: 86, scope: !6163)
!6177 = distinct !{!6177, !6174, !6178}
!6178 = !DILocation(line: 469, column: 91, scope: !6163)
!6179 = !DILocation(line: 470, column: 32, scope: !6163)
!6180 = !DILocation(line: 472, column: 20, scope: !6181)
!6181 = distinct !DILexicalBlock(scope: !6163, file: !1042, line: 472, column: 9)
!6182 = !DILocation(line: 472, column: 25, scope: !6183)
!6183 = distinct !DILexicalBlock(scope: !6181, file: !1042, line: 472, column: 9)
!6184 = !DILocation(line: 472, column: 31, scope: !6183)
!6185 = !DILocation(line: 472, column: 9, scope: !6181)
!6186 = !DILocation(line: 472, column: 44, scope: !6183)
!6187 = distinct !{!6187, !6185, !6188}
!6188 = !DILocation(line: 472, column: 47, scope: !6181)
!6189 = !DILocation(line: 478, column: 9, scope: !6190)
!6190 = distinct !DILexicalBlock(scope: !6191, file: !1042, line: 477, column: 12)
!6191 = distinct !DILexicalBlock(scope: !6164, file: !1042, line: 475, column: 16)
!6192 = !DILocation(line: 483, column: 1, scope: !6151)
!6193 = distinct !DISubprogram(name: "emi_mask_master", scope: !1042, file: !1042, line: 487, type: !208, scopeLine: 488, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !210)
!6194 = !DILocation(line: 490, column: 30, scope: !6193)
!6195 = !DILocation(line: 490, column: 44, scope: !6193)
!6196 = !DILocation(line: 490, column: 53, scope: !6193)
!6197 = !DILocation(line: 490, column: 28, scope: !6193)
!6198 = !DILocation(line: 492, column: 1, scope: !6193)
!6199 = distinct !DISubprogram(name: "emi_unmask_master", scope: !1042, file: !1042, line: 494, type: !208, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !210)
!6200 = !DILocation(line: 497, column: 30, scope: !6199)
!6201 = !DILocation(line: 497, column: 44, scope: !6199)
!6202 = !DILocation(line: 497, column: 53, scope: !6199)
!6203 = !DILocation(line: 497, column: 28, scope: !6199)
!6204 = !DILocation(line: 500, column: 1, scope: !6199)
!6205 = distinct !DISubprogram(name: "is_clk_use_lfosc", scope: !1211, file: !1211, line: 56, type: !6206, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1210, retainedNodes: !210)
!6206 = !DISubroutineType(types: !6207)
!6207 = !{!211}
!6208 = !DILocation(line: 61, column: 5, scope: !6205)
!6209 = distinct !DISubprogram(name: "is_clk_use_mpll", scope: !1211, file: !1211, line: 65, type: !6206, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1210, retainedNodes: !210)
!6210 = !DILocation(line: 70, column: 5, scope: !6209)
!6211 = distinct !DISubprogram(name: "cm_bus_clk_208m", scope: !1211, file: !1211, line: 74, type: !208, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1210, retainedNodes: !210)
!6212 = !DILocation(line: 79, column: 9, scope: !6213)
!6213 = distinct !DILexicalBlock(scope: !6214, file: !1211, line: 78, column: 12)
!6214 = distinct !DILexicalBlock(scope: !6211, file: !1211, line: 76, column: 9)
!6215 = !DILocation(line: 81, column: 1, scope: !6211)
!6216 = distinct !DISubprogram(name: "cm_bus_clk_104m", scope: !1211, file: !1211, line: 83, type: !208, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1210, retainedNodes: !210)
!6217 = !DILocation(line: 88, column: 9, scope: !6218)
!6218 = distinct !DILexicalBlock(scope: !6219, file: !1211, line: 87, column: 12)
!6219 = distinct !DILexicalBlock(scope: !6216, file: !1211, line: 85, column: 9)
!6220 = !DILocation(line: 90, column: 1, scope: !6216)
!6221 = distinct !DISubprogram(name: "cm_bus_clk_26m", scope: !1211, file: !1211, line: 92, type: !208, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1210, retainedNodes: !210)
!6222 = !DILocation(line: 97, column: 9, scope: !6223)
!6223 = distinct !DILexicalBlock(scope: !6224, file: !1211, line: 96, column: 12)
!6224 = distinct !DILexicalBlock(scope: !6221, file: !1211, line: 94, column: 9)
!6225 = !DILocation(line: 99, column: 1, scope: !6221)
!6226 = distinct !DISubprogram(name: "peri_clk_26m", scope: !1211, file: !1211, line: 101, type: !208, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1210, retainedNodes: !210)
!6227 = !DILocation(line: 106, column: 9, scope: !6228)
!6228 = distinct !DILexicalBlock(scope: !6229, file: !1211, line: 105, column: 12)
!6229 = distinct !DILexicalBlock(scope: !6226, file: !1211, line: 103, column: 9)
!6230 = !DILocation(line: 108, column: 1, scope: !6226)
!6231 = distinct !DISubprogram(name: "__io_putchar", scope: !1224, file: !1224, line: 52, type: !6232, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1223, retainedNodes: !6234)
!6232 = !DISubroutineType(types: !6233)
!6233 = !{!79, !79}
!6234 = !{!6235}
!6235 = !DILocalVariable(name: "ch", arg: 1, scope: !6231, file: !1224, line: 52, type: !79)
!6236 = !DILocation(line: 0, scope: !6231)
!6237 = !DILocation(line: 59, column: 35, scope: !6231)
!6238 = !DILocation(line: 59, column: 5, scope: !6231)
!6239 = !DILocation(line: 60, column: 5, scope: !6231)
!6240 = distinct !DISubprogram(name: "main", scope: !1224, file: !1224, line: 188, type: !5728, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1223, retainedNodes: !210)
!6241 = !DILocation(line: 191, column: 5, scope: !6240)
!6242 = !DILocation(line: 193, column: 5, scope: !6240)
!6243 = !DILocation(line: 196, column: 5, scope: !6240)
!6244 = !DILocation(line: 319, column: 3, scope: !6245, inlinedAt: !6246)
!6245 = distinct !DISubprogram(name: "__enable_irq", scope: !5413, file: !5413, line: 317, type: !208, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1223, retainedNodes: !210)
!6246 = distinct !DILocation(line: 199, column: 5, scope: !6240)
!6247 = !{i64 648432}
!6248 = !DILocation(line: 496, column: 3, scope: !6249, inlinedAt: !6250)
!6249 = distinct !DISubprogram(name: "__enable_fault_irq", scope: !5413, file: !5413, line: 494, type: !208, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1223, retainedNodes: !210)
!6250 = distinct !DILocation(line: 200, column: 5, scope: !6240)
!6251 = !{i64 652707}
!6252 = !DILocation(line: 203, column: 5, scope: !6240)
!6253 = !DILocation(line: 204, column: 5, scope: !6240)
!6254 = !DILocation(line: 205, column: 5, scope: !6240)
!6255 = !DILocation(line: 206, column: 5, scope: !6240)
!6256 = !DILocation(line: 208, column: 5, scope: !6240)
!6257 = !DILocation(line: 210, column: 5, scope: !6240)
!6258 = distinct !{!6258, !6257, !6259}
!6259 = !DILocation(line: 210, column: 14, scope: !6240)
!6260 = distinct !DISubprogram(name: "SystemClock_Config", scope: !1224, file: !1224, line: 91, type: !208, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1223, retainedNodes: !210)
!6261 = !DILocation(line: 93, column: 5, scope: !6260)
!6262 = !DILocation(line: 94, column: 1, scope: !6260)
!6263 = distinct !DISubprogram(name: "prvSetupHardware", scope: !1224, file: !1224, line: 100, type: !208, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1223, retainedNodes: !210)
!6264 = !DILocation(line: 103, column: 5, scope: !6263)
!6265 = !DILocation(line: 107, column: 5, scope: !6263)
!6266 = !DILocation(line: 108, column: 1, scope: !6263)
!6267 = distinct !DISubprogram(name: "eint_sample", scope: !1224, file: !1224, line: 139, type: !208, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1223, retainedNodes: !6268)
!6268 = !{!6269}
!6269 = !DILocalVariable(name: "eint_config", scope: !6267, file: !1224, line: 141, type: !6270)
!6270 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_eint_config_t", file: !790, line: 225, baseType: !6271)
!6271 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !790, line: 222, size: 64, elements: !6272)
!6272 = !{!6273, !6274}
!6273 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_mode", scope: !6271, file: !790, line: 223, baseType: !862, size: 32)
!6274 = !DIDerivedType(tag: DW_TAG_member, name: "debounce_time", scope: !6271, file: !790, line: 224, baseType: !175, size: 32, offset: 32)
!6275 = !DILocation(line: 141, column: 5, scope: !6267)
!6276 = !DILocation(line: 141, column: 23, scope: !6267)
!6277 = !DILocation(line: 143, column: 13, scope: !6267)
!6278 = !DILocation(line: 145, column: 5, scope: !6267)
!6279 = !DILocation(line: 147, column: 5, scope: !6267)
!6280 = !DILocation(line: 150, column: 5, scope: !6267)
!6281 = !DILocation(line: 153, column: 5, scope: !6267)
!6282 = !DILocation(line: 154, column: 5, scope: !6267)
!6283 = !DILocation(line: 165, column: 17, scope: !6267)
!6284 = !DILocation(line: 165, column: 30, scope: !6267)
!6285 = !DILocation(line: 168, column: 17, scope: !6267)
!6286 = !DILocation(line: 168, column: 31, scope: !6267)
!6287 = !DILocation(line: 173, column: 19, scope: !6267)
!6288 = !DILocation(line: 173, column: 5, scope: !6267)
!6289 = !DILocation(line: 176, column: 19, scope: !6267)
!6290 = !DILocation(line: 176, column: 5, scope: !6267)
!6291 = !DILocation(line: 177, column: 32, scope: !6267)
!6292 = !DILocation(line: 177, column: 5, scope: !6267)
!6293 = !DILocation(line: 182, column: 21, scope: !6267)
!6294 = !DILocation(line: 182, column: 5, scope: !6267)
!6295 = !DILocation(line: 185, column: 5, scope: !6267)
!6296 = !DILocation(line: 186, column: 1, scope: !6267)
!6297 = distinct !DISubprogram(name: "eint_irq_handler", scope: !1224, file: !1224, line: 115, type: !227, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1223, retainedNodes: !6298)
!6298 = !{!6299}
!6299 = !DILocalVariable(name: "data", arg: 1, scope: !6297, file: !1224, line: 115, type: !194)
!6300 = !DILocation(line: 0, scope: !6297)
!6301 = !DILocation(line: 120, column: 19, scope: !6297)
!6302 = !DILocation(line: 120, column: 5, scope: !6297)
!6303 = !DILocation(line: 125, column: 44, scope: !6297)
!6304 = !DILocation(line: 125, column: 5, scope: !6297)
!6305 = !DILocation(line: 130, column: 21, scope: !6297)
!6306 = !DILocation(line: 130, column: 5, scope: !6297)
!6307 = !DILocation(line: 132, column: 1, scope: !6297)
!6308 = distinct !DISubprogram(name: "log_uart_init", scope: !1224, file: !1224, line: 68, type: !208, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1223, retainedNodes: !6309)
!6309 = !{!6310}
!6310 = !DILocalVariable(name: "uart_config", scope: !6308, file: !1224, line: 70, type: !6311)
!6311 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !572, line: 378, baseType: !6312)
!6312 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !572, line: 373, size: 128, elements: !6313)
!6313 = !{!6314, !6315, !6316, !6317}
!6314 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !6312, file: !572, line: 374, baseType: !3371, size: 32)
!6315 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !6312, file: !572, line: 375, baseType: !3421, size: 32, offset: 32)
!6316 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !6312, file: !572, line: 376, baseType: !3423, size: 32, offset: 64)
!6317 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !6312, file: !572, line: 377, baseType: !3425, size: 32, offset: 96)
!6318 = !DILocation(line: 70, column: 5, scope: !6308)
!6319 = !DILocation(line: 70, column: 23, scope: !6308)
!6320 = !DILocation(line: 73, column: 5, scope: !6308)
!6321 = !DILocation(line: 74, column: 5, scope: !6308)
!6322 = !DILocation(line: 75, column: 5, scope: !6308)
!6323 = !DILocation(line: 76, column: 5, scope: !6308)
!6324 = !DILocation(line: 78, column: 17, scope: !6308)
!6325 = !DILocation(line: 78, column: 26, scope: !6308)
!6326 = !DILocation(line: 79, column: 17, scope: !6308)
!6327 = !DILocation(line: 79, column: 29, scope: !6308)
!6328 = !DILocation(line: 80, column: 17, scope: !6308)
!6329 = !DILocation(line: 80, column: 26, scope: !6308)
!6330 = !DILocation(line: 81, column: 17, scope: !6308)
!6331 = !DILocation(line: 81, column: 24, scope: !6308)
!6332 = !DILocation(line: 83, column: 5, scope: !6308)
!6333 = !DILocation(line: 84, column: 1, scope: !6308)
!6334 = distinct !DISubprogram(name: "_close", scope: !1232, file: !1232, line: 5, type: !6232, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1428, retainedNodes: !6335)
!6335 = !{!6336}
!6336 = !DILocalVariable(name: "file", arg: 1, scope: !6334, file: !1232, line: 5, type: !79)
!6337 = !DILocation(line: 0, scope: !6334)
!6338 = !DILocation(line: 7, column: 5, scope: !6334)
!6339 = distinct !DISubprogram(name: "_fstat", scope: !1232, file: !1232, line: 10, type: !6340, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1428, retainedNodes: !6388)
!6340 = !DISubroutineType(types: !6341)
!6341 = !{!79, !79, !6342}
!6342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6343, size: 32)
!6343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !6344, line: 27, size: 704, elements: !6345)
!6344 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/stat.h", directory: "/home/mjshen/RTOSExploration")
!6345 = !{!6346, !6349, !6352, !6355, !6358, !6361, !6364, !6365, !6368, !6378, !6379, !6380, !6383, !6386}
!6346 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !6343, file: !6344, line: 29, baseType: !6347, size: 16)
!6347 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !1236, line: 161, baseType: !6348)
!6348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1279, line: 56, baseType: !1254)
!6349 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !6343, file: !6344, line: 30, baseType: !6350, size: 16, offset: 16)
!6350 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !1236, line: 139, baseType: !6351)
!6351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1279, line: 75, baseType: !1359)
!6352 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !6343, file: !6344, line: 31, baseType: !6353, size: 32, offset: 32)
!6353 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !1236, line: 189, baseType: !6354)
!6354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1279, line: 90, baseType: !177)
!6355 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !6343, file: !6344, line: 32, baseType: !6356, size: 16, offset: 64)
!6356 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !1236, line: 194, baseType: !6357)
!6357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1279, line: 209, baseType: !1359)
!6358 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !6343, file: !6344, line: 33, baseType: !6359, size: 16, offset: 80)
!6359 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !1236, line: 165, baseType: !6360)
!6360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1279, line: 60, baseType: !1359)
!6361 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !6343, file: !6344, line: 34, baseType: !6362, size: 16, offset: 96)
!6362 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !1236, line: 169, baseType: !6363)
!6363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1279, line: 63, baseType: !1359)
!6364 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !6343, file: !6344, line: 35, baseType: !6347, size: 16, offset: 112)
!6365 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !6343, file: !6344, line: 36, baseType: !6366, size: 32, offset: 128)
!6366 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1236, line: 157, baseType: !6367)
!6367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1279, line: 102, baseType: !1295)
!6368 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !6343, file: !6344, line: 42, baseType: !6369, size: 128, offset: 192)
!6369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !6370, line: 47, size: 128, elements: !6371)
!6370 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timespec.h", directory: "/home/mjshen/RTOSExploration")
!6371 = !{!6372, !6377}
!6372 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !6369, file: !6370, line: 48, baseType: !6373, size: 64)
!6373 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !6374, line: 42, baseType: !6375)
!6374 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timeval.h", directory: "/home/mjshen/RTOSExploration")
!6375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !178, line: 200, baseType: !6376)
!6376 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!6377 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !6369, file: !6370, line: 49, baseType: !1280, size: 32, offset: 64)
!6378 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !6343, file: !6344, line: 43, baseType: !6369, size: 128, offset: 320)
!6379 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !6343, file: !6344, line: 44, baseType: !6369, size: 128, offset: 448)
!6380 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !6343, file: !6344, line: 45, baseType: !6381, size: 32, offset: 576)
!6381 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !1236, line: 102, baseType: !6382)
!6382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1279, line: 34, baseType: !1280)
!6383 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !6343, file: !6344, line: 46, baseType: !6384, size: 32, offset: 608)
!6384 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !1236, line: 97, baseType: !6385)
!6385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1279, line: 30, baseType: !1280)
!6386 = !DIDerivedType(tag: DW_TAG_member, name: "st_spare4", scope: !6343, file: !6344, line: 48, baseType: !6387, size: 64, offset: 640)
!6387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1280, size: 64, elements: !383)
!6388 = !{!6389, !6390}
!6389 = !DILocalVariable(name: "file", arg: 1, scope: !6339, file: !1232, line: 10, type: !79)
!6390 = !DILocalVariable(name: "st", arg: 2, scope: !6339, file: !1232, line: 10, type: !6342)
!6391 = !DILocation(line: 0, scope: !6339)
!6392 = !DILocation(line: 12, column: 5, scope: !6339)
!6393 = distinct !DISubprogram(name: "_isatty", scope: !1232, file: !1232, line: 15, type: !6232, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1428, retainedNodes: !6394)
!6394 = !{!6395}
!6395 = !DILocalVariable(name: "file", arg: 1, scope: !6393, file: !1232, line: 15, type: !79)
!6396 = !DILocation(line: 0, scope: !6393)
!6397 = !DILocation(line: 17, column: 5, scope: !6393)
!6398 = distinct !DISubprogram(name: "_lseek", scope: !1232, file: !1232, line: 20, type: !6399, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1428, retainedNodes: !6401)
!6399 = !DISubroutineType(types: !6400)
!6400 = !{!79, !79, !79, !79}
!6401 = !{!6402, !6403, !6404}
!6402 = !DILocalVariable(name: "file", arg: 1, scope: !6398, file: !1232, line: 20, type: !79)
!6403 = !DILocalVariable(name: "ptr", arg: 2, scope: !6398, file: !1232, line: 20, type: !79)
!6404 = !DILocalVariable(name: "dir", arg: 3, scope: !6398, file: !1232, line: 20, type: !79)
!6405 = !DILocation(line: 0, scope: !6398)
!6406 = !DILocation(line: 22, column: 5, scope: !6398)
!6407 = distinct !DISubprogram(name: "_open", scope: !1232, file: !1232, line: 25, type: !6408, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1428, retainedNodes: !6410)
!6408 = !DISubroutineType(types: !6409)
!6409 = !{!79, !1272, !79, !79}
!6410 = !{!6411, !6412, !6413}
!6411 = !DILocalVariable(name: "name", arg: 1, scope: !6407, file: !1232, line: 25, type: !1272)
!6412 = !DILocalVariable(name: "flags", arg: 2, scope: !6407, file: !1232, line: 25, type: !79)
!6413 = !DILocalVariable(name: "mode", arg: 3, scope: !6407, file: !1232, line: 25, type: !79)
!6414 = !DILocation(line: 0, scope: !6407)
!6415 = !DILocation(line: 27, column: 5, scope: !6407)
!6416 = distinct !DISubprogram(name: "_read", scope: !1232, file: !1232, line: 30, type: !6417, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1428, retainedNodes: !6419)
!6417 = !DISubroutineType(types: !6418)
!6418 = !{!79, !79, !1237, !79}
!6419 = !{!6420, !6421, !6422}
!6420 = !DILocalVariable(name: "file", arg: 1, scope: !6416, file: !1232, line: 30, type: !79)
!6421 = !DILocalVariable(name: "ptr", arg: 2, scope: !6416, file: !1232, line: 30, type: !1237)
!6422 = !DILocalVariable(name: "len", arg: 3, scope: !6416, file: !1232, line: 30, type: !79)
!6423 = !DILocation(line: 0, scope: !6416)
!6424 = !DILocation(line: 32, column: 5, scope: !6416)
!6425 = distinct !DISubprogram(name: "_getpid", scope: !1232, file: !1232, line: 48, type: !5728, scopeLine: 49, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1428, retainedNodes: !210)
!6426 = !DILocation(line: 50, column: 5, scope: !6425)
!6427 = distinct !DISubprogram(name: "_kill", scope: !1232, file: !1232, line: 56, type: !6428, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1428, retainedNodes: !6430)
!6428 = !DISubroutineType(types: !6429)
!6429 = !{!79, !79, !79}
!6430 = !{!6431, !6432}
!6431 = !DILocalVariable(name: "pid", arg: 1, scope: !6427, file: !1232, line: 56, type: !79)
!6432 = !DILocalVariable(name: "sig", arg: 2, scope: !6427, file: !1232, line: 56, type: !79)
!6433 = !DILocation(line: 0, scope: !6427)
!6434 = !DILocation(line: 58, column: 5, scope: !6427)
!6435 = distinct !DISubprogram(name: "_exit", scope: !1232, file: !1232, line: 61, type: !6232, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1428, retainedNodes: !6436)
!6436 = !{!6437}
!6437 = !DILocalVariable(name: "val", arg: 1, scope: !6435, file: !1232, line: 61, type: !79)
!6438 = !DILocation(line: 0, scope: !6435)
!6439 = !DILocation(line: 63, column: 5, scope: !6435)
!6440 = !DILocation(line: 0, scope: !1231)
!6441 = !DILocation(line: 73, column: 5, scope: !1231)
!6442 = !{i64 1127}
!6443 = !DILocation(line: 75, column: 14, scope: !6444)
!6444 = distinct !DILexicalBlock(scope: !1231, file: !1232, line: 75, column: 9)
!6445 = !DILocation(line: 75, column: 11, scope: !6444)
!6446 = !DILocation(line: 75, column: 9, scope: !1231)
!6447 = !DILocation(line: 81, column: 32, scope: !6448)
!6448 = distinct !DILexicalBlock(scope: !1231, file: !1232, line: 81, column: 9)
!6449 = !DILocation(line: 81, column: 15, scope: !6448)
!6450 = !DILocation(line: 92, column: 1, scope: !1231)
!6451 = !DILocation(line: 81, column: 9, scope: !1231)
!6452 = distinct !DISubprogram(name: "_write", scope: !1232, file: !1232, line: 94, type: !6417, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1428, retainedNodes: !6453)
!6453 = !{!6454, !6455, !6456, !6457}
!6454 = !DILocalVariable(name: "file", arg: 1, scope: !6452, file: !1232, line: 94, type: !79)
!6455 = !DILocalVariable(name: "ptr", arg: 2, scope: !6452, file: !1232, line: 94, type: !1237)
!6456 = !DILocalVariable(name: "len", arg: 3, scope: !6452, file: !1232, line: 94, type: !79)
!6457 = !DILocalVariable(name: "DataIdx", scope: !6452, file: !1232, line: 96, type: !79)
!6458 = !DILocation(line: 0, scope: !6452)
!6459 = !DILocation(line: 98, column: 31, scope: !6460)
!6460 = distinct !DILexicalBlock(scope: !6461, file: !1232, line: 98, column: 5)
!6461 = distinct !DILexicalBlock(scope: !6452, file: !1232, line: 98, column: 5)
!6462 = !DILocation(line: 98, column: 5, scope: !6461)
!6463 = !DILocation(line: 99, column: 26, scope: !6464)
!6464 = distinct !DILexicalBlock(scope: !6460, file: !1232, line: 98, column: 49)
!6465 = !DILocation(line: 99, column: 22, scope: !6464)
!6466 = !DILocation(line: 99, column: 9, scope: !6464)
!6467 = !DILocation(line: 98, column: 45, scope: !6460)
!6468 = distinct !{!6468, !6462, !6469}
!6469 = !DILocation(line: 100, column: 5, scope: !6461)
!6470 = !DILocation(line: 101, column: 5, scope: !6452)
!6471 = distinct !DISubprogram(name: "SysTick_Set", scope: !1440, file: !1440, line: 62, type: !2267, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1439, retainedNodes: !6472)
!6472 = !{!6473, !6474}
!6473 = !DILocalVariable(name: "ticks", arg: 1, scope: !6471, file: !1440, line: 62, type: !175)
!6474 = !DILocalVariable(name: "val", scope: !6471, file: !1440, line: 64, type: !175)
!6475 = !DILocation(line: 0, scope: !6471)
!6476 = !DILocation(line: 67, column: 16, scope: !6477)
!6477 = distinct !DILexicalBlock(scope: !6471, file: !1440, line: 67, column: 9)
!6478 = !DILocation(line: 67, column: 21, scope: !6477)
!6479 = !DILocation(line: 67, column: 9, scope: !6471)
!6480 = !DILocation(line: 72, column: 20, scope: !6471)
!6481 = !DILocation(line: 75, column: 19, scope: !6471)
!6482 = !DILocation(line: 79, column: 20, scope: !6471)
!6483 = !DILocation(line: 80, column: 20, scope: !6471)
!6484 = !DILocation(line: 83, column: 19, scope: !6471)
!6485 = !DILocation(line: 85, column: 5, scope: !6471)
!6486 = !DILocation(line: 86, column: 1, scope: !6471)
!6487 = distinct !DISubprogram(name: "SysInitStatus_Set", scope: !1440, file: !1440, line: 95, type: !208, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1439, retainedNodes: !210)
!6488 = !DILocation(line: 97, column: 28, scope: !6487)
!6489 = !DILocation(line: 98, column: 1, scope: !6487)
!6490 = distinct !DISubprogram(name: "SysInitStatus_Query", scope: !1440, file: !1440, line: 107, type: !2519, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1439, retainedNodes: !210)
!6491 = !DILocation(line: 109, column: 12, scope: !6490)
!6492 = !DILocation(line: 109, column: 5, scope: !6490)
!6493 = distinct !DISubprogram(name: "SystemCoreClockUpdate", scope: !1440, file: !1440, line: 119, type: !208, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1439, retainedNodes: !6494)
!6494 = !{!6495}
!6495 = !DILocalVariable(name: "cm_mux_sel", scope: !6493, file: !1440, line: 121, type: !378)
!6496 = !DILocation(line: 121, column: 38, scope: !6493)
!6497 = !DILocation(line: 121, column: 26, scope: !6493)
!6498 = !DILocation(line: 0, scope: !6493)
!6499 = !DILocation(line: 123, column: 5, scope: !6493)
!6500 = !DILocation(line: 132, column: 13, scope: !6501)
!6501 = distinct !DILexicalBlock(scope: !6493, file: !1440, line: 123, column: 25)
!6502 = !DILocation(line: 140, column: 13, scope: !6501)
!6503 = !DILocation(line: 0, scope: !6501)
!6504 = !DILocation(line: 146, column: 26, scope: !6505)
!6505 = distinct !DILexicalBlock(scope: !6493, file: !1440, line: 146, column: 9)
!6506 = !DILocation(line: 146, column: 50, scope: !6505)
!6507 = !DILocation(line: 146, column: 41, scope: !6505)
!6508 = !DILocation(line: 148, column: 25, scope: !6509)
!6509 = distinct !DILexicalBlock(scope: !6505, file: !1440, line: 147, column: 52)
!6510 = !DILocation(line: 149, column: 5, scope: !6509)
!6511 = !DILocation(line: 150, column: 1, scope: !6493)
!6512 = distinct !DISubprogram(name: "SystemInit", scope: !1440, file: !1440, line: 158, type: !208, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1439, retainedNodes: !210)
!6513 = !DILocation(line: 162, column: 16, scope: !6512)
!6514 = !DILocation(line: 166, column: 16, scope: !6512)
!6515 = !DILocation(line: 169, column: 16, scope: !6512)
!6516 = !DILocation(line: 172, column: 1, scope: !6512)
!6517 = distinct !DISubprogram(name: "CachePreInit", scope: !1440, file: !1440, line: 180, type: !208, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1439, retainedNodes: !210)
!6518 = !DILocation(line: 183, column: 22, scope: !6517)
!6519 = !DILocation(line: 186, column: 21, scope: !6517)
!6520 = !DILocation(line: 189, column: 21, scope: !6517)
!6521 = !DILocation(line: 192, column: 29, scope: !6517)
!6522 = !DILocation(line: 193, column: 33, scope: !6517)
!6523 = !DILocation(line: 195, column: 28, scope: !6517)
!6524 = !DILocation(line: 200, column: 30, scope: !6517)
!6525 = !DILocation(line: 214, column: 1, scope: !6517)
