; ModuleID = './build/no_rtos_initialize_system.elf.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7em-none-unknown-eabihf"

%struct.flash_info_t = type { i8*, i8, i32, i32, i32, i8, i8, i8 }
%union.CACHE_CON_Type = type { %struct.anon }
%struct.anon = type { i32 }
%struct.CACHE_ENTRY_Type = type { %union.CACHE_CON_Type, %union.CACHE_CON_Type }
%struct.nvic_function_t = type { void (i32)*, i32 }
%struct.hal_gpt_context_t = type { i32, %struct.hal_gpt_callback_context, i8 }
%struct.hal_gpt_callback_context = type { void (i8*)*, i8* }
%struct.uart_context_t = type { i8, %struct.hal_uart_config_t, i8, %struct.hal_uart_callback_config_t, i8, %struct.hal_uart_dma_config_t }
%struct.hal_uart_config_t = type { i32, i32, i32, i32 }
%struct.hal_uart_callback_config_t = type { void (i32, i8*)*, i8* }
%struct.hal_uart_dma_config_t = type { i8*, i32, i32, i8*, i32, i32, i32 }
%struct.__va_list = type { i8* }
%struct.hal_cache_region_config_t = type { i32, i32 }
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
%struct._mbstate_t = type { i32, %struct.anon }
%struct._misc_reent = type { i8*, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t, [8 x i8], i32, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t }

@NOR_FLASH_BUSY = dso_local local_unnamed_addr global i8 0, align 1, !dbg !0
@NOR_FLASH_SUSPENDED = dso_local local_unnamed_addr global i8 0, align 1, !dbg !67
@.str = private unnamed_addr constant [57 x i8] c"../../../../../driver/chip/mt7687/src/common/flash_sfc.c\00", align 1
@__func__.gpt_get_current_time = private unnamed_addr constant [21 x i8] c"gpt_get_current_time\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@sf_Mutex = internal unnamed_addr global i1 false, align 4, !dbg !80
@__func__.free_sf_lock = private unnamed_addr constant [13 x i8] c"free_sf_lock\00", align 1
@__func__.Flash_ReturnReady = private unnamed_addr constant [18 x i8] c"Flash_ReturnReady\00", align 1
@__func__.SF_DAL_CheckDeviceReady = private unnamed_addr constant [24 x i8] c"SF_DAL_CheckDeviceReady\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"SF_DAL_FLAG_BUSY()\00", align 1
@__func__.SF_DAL_CheckReadyAndResume = private unnamed_addr constant [27 x i8] c"SF_DAL_CheckReadyAndResume\00", align 1
@suspend_time = dso_local local_unnamed_addr global i32 0, align 4, !dbg !72
@resume_suspend_on_ready = dso_local local_unnamed_addr global i32 0, align 4, !dbg !74
@resume_suspend_on_checkready = dso_local local_unnamed_addr global i32 0, align 4, !dbg !76
@g_u4ClkCnt1ms = dso_local local_unnamed_addr global i32 0, align 4, !dbg !81
@.str.3 = private unnamed_addr constant [37 x i8] c"ASSERT, __FILE__ = %s, __LINE__ = %u\00", align 1
@.str.1.4 = private unnamed_addr constant [51 x i8] c"../../../../../driver/chip/mt7687/src/common/gpt.c\00", align 1
@GPTTimer.0 = internal unnamed_addr global void ()* null, align 4, !dbg !160
@GPTTimer.1 = internal unnamed_addr global void ()* null, align 4, !dbg !161
@g_sfc_security_enable = dso_local local_unnamed_addr global i32 0, align 4, !dbg !162
@.str.9 = private unnamed_addr constant [37 x i8] c"ASSERT, __FILE__ = %s, __LINE__ = %u\00", align 1
@.str.1.10 = private unnamed_addr constant [51 x i8] c"../../../../../driver/chip/mt7687/src/common/sfc.c\00", align 1
@switch.table.sfc_direct_read_setup = private unnamed_addr constant [3 x i32] [i32 16, i32 112, i32 113], align 4
@gSFC_max_data_size = dso_local local_unnamed_addr global i32 128, align 4, !dbg !181
@cmdlist_switchqpi_winbond = dso_local constant [12 x i8] c"\01\01\06\01\03\01\00\02\01\018\00", align 1, !dbg !212
@cmdlist_switchspi_winbond = dso_local constant [4 x i8] c"\03\01\FF\00", align 1, !dbg !217
@cmdlist_switchspiq_winbond = dso_local constant [9 x i8] c"\01\01\06\01\03\01\00\02\00", align 1, !dbg !222
@cmdlist_suspend_winbond = dso_local global [4 x i8] c"\01\01u\00", align 1, !dbg !227
@cmdlist_resume_winbond = dso_local global [4 x i8] c"\01\01z\00", align 1, !dbg !230
@cmdlist_switchspiq_mxic = dso_local constant [8 x i8] c"\01\01\06\01\02\01@\00", align 1, !dbg !232
@cmdlist_switchqpi_mxic = dso_local local_unnamed_addr constant [8 x i8] c"\01\01\06\01\02\01@\00", align 1, !dbg !237
@cmdlist_switchspi_mxic = dso_local constant [8 x i8] c"\01\01\06\01\02\01\00\00", align 1, !dbg !239
@cmdlist_switchspiq_gd = dso_local constant [9 x i8] c"\01\01\06\01\03\01\00\02\00", align 1, !dbg !241
@cmdlist_switchqpi_gd = dso_local local_unnamed_addr constant [9 x i8] c"\01\01\06\01\03\01\00\02\00", align 1, !dbg !243
@cmdlist_switchspi_gd = dso_local constant [9 x i8] c"\01\01\06\01\03\01\00\00\00", align 1, !dbg !245
@cmdlist_switchspi_gd25q32c = dso_local constant [8 x i8] c"\01\01\06\01\021\00\00", align 1, !dbg !247
@cmdlist_switchspiq_gd25q32c = dso_local constant [8 x i8] c"\01\01\06\01\021\02\00", align 1, !dbg !249
@cmdlist_switchqpi_gd25q32c = dso_local constant [8 x i8] c"\01\01\06\01\021\02\00", align 1, !dbg !251
@cmdlist_switchspi_micron = dso_local constant [8 x i8] c"\01\01\06\01\02\B1\01\00", align 1, !dbg !253
@cmdlist_switchspiq_micron = dso_local constant [8 x i8] c"\01\01\06\01\02\B1\00\00", align 1, !dbg !255
@cmdlist_switchqpi_micron = dso_local local_unnamed_addr constant [8 x i8] c"\01\01\06\01\02\B1\00\00", align 1, !dbg !257
@cmdlist_flash_reset_spimode = dso_local constant [7 x i8] c"\01\01f\01\01\99\00", align 1, !dbg !259
@cmdlist_flash_reset_qpimode = dso_local constant [7 x i8] c"\03\01f\03\01\99\00", align 1, !dbg !264
@spi_chip_info = dso_local local_unnamed_addr global %struct.flash_info_t* null, align 4, !dbg !266
@gd_write_sr2_1 = dso_local local_unnamed_addr global i32 0, align 4, !dbg !268
@support_flash_id = dso_local local_unnamed_addr global i32 0, align 4, !dbg !270
@gucFlashSFCMode = dso_local local_unnamed_addr global i32 0, align 4, !dbg !70
@chips_data = internal constant [13 x %struct.flash_info_t] [%struct.flash_info_t { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9.23, i32 0, i32 0), i8 -1, i32 -1, i32 4096, i32 256, i8 0, i8 0, i8 0 }, %struct.flash_info_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8 -17, i32 1075183616, i32 16384, i32 256, i8 50, i8 107, i8 -21 }, %struct.flash_info_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8 -17, i32 1075118080, i32 8192, i32 256, i8 50, i8 107, i8 -21 }, %struct.flash_info_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8 -17, i32 1075052544, i32 4096, i32 256, i8 50, i8 107, i8 -21 }, %struct.flash_info_t { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i8 -62, i32 538312704, i32 16384, i32 256, i8 56, i8 107, i8 -21 }, %struct.flash_info_t { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8 -62, i32 538247168, i32 8192, i32 256, i8 56, i8 107, i8 -21 }, %struct.flash_info_t { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8 -62, i32 538247168, i32 8192, i32 256, i8 56, i8 107, i8 -21 }, %struct.flash_info_t { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i8 -62, i32 538181632, i32 4096, i32 256, i8 56, i8 107, i8 -21 }, %struct.flash_info_t { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i8 -62, i32 588578816, i32 8192, i32 256, i8 56, i8 107, i8 -21 }, %struct.flash_info_t { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i8 -56, i32 1075183616, i32 16384, i32 256, i8 50, i8 107, i8 -21 }, %struct.flash_info_t { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i8 -56, i32 1075118080, i32 8192, i32 256, i8 50, i8 107, i8 -21 }, %struct.flash_info_t { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8 -56, i32 1108738048, i32 8192, i32 256, i8 50, i8 107, i8 -21 }, %struct.flash_info_t { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21.24, i32 0, i32 0), i8 32, i32 -1172832256, i32 65536, i32 256, i8 50, i8 107, i8 -21 }], align 4, !dbg !273
@sf_drvier_status = dso_local local_unnamed_addr global i32 -1, align 4, !dbg !64
@__FUNCTION__.flash_check_device = private unnamed_addr constant [19 x i8] c"flash_check_device\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c" Check flash device Failed !! \0A\0D\00", align 1
@.str.1.22 = private unnamed_addr constant [31 x i8] c"spi device id: %x %x %x (%x)\0A\0D\00", align 1
@.str.2.25 = private unnamed_addr constant [37 x i8] c"ASSERT, __FILE__ = %s, __LINE__ = %u\00", align 1
@.str.3.26 = private unnamed_addr constant [57 x i8] c"../../../../../driver/chip/mt7687/src/common/spi_flash.c\00", align 1
@__FUNCTION__.flash_config = private unnamed_addr constant [13 x i8] c"flash_config\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"spi device id: %x %x %x (%x)\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"find flash: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Don't support flash: %s\0A\00", align 1
@__FUNCTION__.flash_init = private unnamed_addr constant [11 x i8] c"flash_init\00", align 1
@__func__.flash_wait_ready = private unnamed_addr constant [17 x i8] c"flash_wait_ready\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@__FUNCTION__.flash_read_sr2 = private unnamed_addr constant [15 x i8] c"flash_read_sr2\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"flash_read_sr2: no init flash !\0A\00", align 1
@__func__.flash_write = private unnamed_addr constant [12 x i8] c"flash_write\00", align 1
@.str.9.23 = private unnamed_addr constant [10 x i8] c"DEF_FLASH\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"W25Q32JV\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"W25Q16DV\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"W25Q80DV\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"MX25L3233F\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"MX25L1635F\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"MX25V1635F\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"MX25V8035F\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"KH25V1635F\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"GD25Q32CSIG\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"GD25Q16CSIG\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"GD25VE32C\00", align 1
@.str.21.24 = private unnamed_addr constant [9 x i8] c"N25Q128A\00", align 1
@gXtalFreq = internal unnamed_addr global i32 0, align 4, !dbg !278
@gCpuFrequency = internal unnamed_addr global i32 0, align 4, !dbg !288
@switch.table.top_xtal_init = private unnamed_addr constant [8 x i32] [i32 20000000, i32 40000000, i32 26000000, i32 52000000, i32 40000000, i32 40000000, i32 40000000, i32 40000000], align 4
@switch.table.top_xtal_init.1 = private unnamed_addr constant [8 x i32] [i32 16, i32 512, i32 64, i32 1024, i32 512, i32 512, i32 512, i32 512], align 4
@.str.53 = private unnamed_addr constant [6 x i8] c"uart0\00", align 1
@.str.1.54 = private unnamed_addr constant [6 x i8] c"uart1\00", align 1
@__const.halUART_SetFormat.fraction_L_mapping = private unnamed_addr constant [11 x i16] [i16 0, i16 16, i16 68, i16 146, i16 41, i16 170, i16 182, i16 219, i16 173, i16 255, i16 255], align 2
@__const.halUART_SetFormat.fraction_M_mapping = private unnamed_addr constant [11 x i16] [i16 0, i16 0, i16 0, i16 0, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 3], align 2
@gUartClkFreq = dso_local local_unnamed_addr global i32 0, align 4, !dbg !290
@g_cache_status = dso_local global i8 0, align 1, !dbg !340
@.str.63 = private unnamed_addr constant [50 x i8] c"../../../../../driver/chip/mt7687/src/hal_cache.c\00", align 1
@__func__.hal_cache_region_config = private unnamed_addr constant [24 x i8] c"hal_cache_region_config\00", align 1
@.str.1.64 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@g_cache_con = dso_local local_unnamed_addr global %union.CACHE_CON_Type zeroinitializer, align 4, !dbg !423
@g_cache_region_en = dso_local local_unnamed_addr global i32 0, align 4, !dbg !428
@g_cache_entry = dso_local local_unnamed_addr global [16 x %struct.CACHE_ENTRY_Type] zeroinitializer, align 4, !dbg !431
@nvic_function_table = dso_local local_unnamed_addr global [96 x %struct.nvic_function_t] zeroinitializer, align 4, !dbg !476
@__FUNCTION__.isrC_main = private unnamed_addr constant [10 x i8] c"isrC_main\00", align 1
@.str.75 = private unnamed_addr constant [25 x i8] c"ERROR: no IRQ handler! \0A\00", align 1
@g_gpt_context = internal global [5 x %struct.hal_gpt_context_t] zeroinitializer, align 4, !dbg !568
@__FUNCTION__.hal_gpt_init = private unnamed_addr constant [13 x i8] c"hal_gpt_init\00", align 1
@.str.82 = private unnamed_addr constant [18 x i8] c"Invalid port: %d.\00", align 1
@__FUNCTION__.hal_gpt_deinit = private unnamed_addr constant [15 x i8] c"hal_gpt_deinit\00", align 1
@.str.1.83 = private unnamed_addr constant [23 x i8] c"Should call  port: %d.\00", align 1
@__FUNCTION__.hal_gpt_get_free_run_count = private unnamed_addr constant [27 x i8] c"hal_gpt_get_free_run_count\00", align 1
@.str.2.86 = private unnamed_addr constant [23 x i8] c"Invalid parameter: %d.\00", align 1
@__FUNCTION__.hal_gpt_get_running_status = private unnamed_addr constant [27 x i8] c"hal_gpt_get_running_status\00", align 1
@.str.3.87 = private unnamed_addr constant [45 x i8] c"Invalid hal_gpt_stop_timer to stop port: %d.\00", align 1
@__FUNCTION__.hal_gpt_register_callback = private unnamed_addr constant [26 x i8] c"hal_gpt_register_callback\00", align 1
@.str.4.88 = private unnamed_addr constant [51 x i8] c"Invalid port: %d. Only port 0 or 1 works as timer.\00", align 1
@__FUNCTION__.hal_gpt_start_timer_ms = private unnamed_addr constant [23 x i8] c"hal_gpt_start_timer_ms\00", align 1
@__FUNCTION__.hal_gpt_stop_timer = private unnamed_addr constant [19 x i8] c"hal_gpt_stop_timer\00", align 1
@g_uart_frist_send_complete_interrupt = internal unnamed_addr global [2 x i8] zeroinitializer, align 1, !dbg !607
@g_uart_context_table = internal global [2 x %struct.uart_context_t] zeroinitializer, align 4, !dbg !663
@g_uart_send_lock_status = internal unnamed_addr global [2 x i8] zeroinitializer, align 1, !dbg !709
@g_uart_sleep_handler = internal unnamed_addr global [2 x i8] zeroinitializer, align 1, !dbg !706
@g_uart_sleep_handler_name = dso_local local_unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.54, i32 0, i32 0)], align 4, !dbg !327
@g_uart_port_to_irq_num = dso_local local_unnamed_addr constant [2 x i32] [i32 0, i32 5], align 4, !dbg !335
@hal_uart_map_receive_callback.func_tbl = internal unnamed_addr constant [2 x void ()*] [void ()* @hal_uart_receive_callback0, void ()* @hal_uart_receive_callback1], align 4, !dbg !712
@__const.hal_uart_translate_baudrate.baudrate_tbl = private unnamed_addr constant [13 x i32] [i32 110, i32 300, i32 1200, i32 2400, i32 4800, i32 9600, i32 19200, i32 38400, i32 57600, i32 115200, i32 230400, i32 460800, i32 921600], align 4
@__const.hal_uart_translate_word_length.databit_tbl = private unnamed_addr constant [4 x i16] [i16 0, i16 1, i16 2, i16 3], align 2
@__const.hal_uart_translate_parity.parity_tbl = private unnamed_addr constant [5 x i16] [i16 0, i16 8, i16 24, i16 0, i16 0], align 2
@__const.hal_uart_translate_stopbit.stopbit_tbl = private unnamed_addr constant [3 x i16] [i16 0, i16 4, i16 4], align 2
@cmdlist_switchqpi_default = dso_local local_unnamed_addr constant [12 x i8] c"\01\01\06\01\03\01\00\02\01\018\00", align 1, !dbg !723
@cmdlist_switchspi_default = dso_local constant [4 x i8] c"\03\01\FF\00", align 1, !dbg !743
@cmdlist_switchspiq_default = dso_local constant [9 x i8] c"\01\01\06\01\03\01\00\02\00", align 1, !dbg !745
@customer_flash_info = dso_local local_unnamed_addr constant %struct.flash_info_t zeroinitializer, align 4, !dbg !747
@__const.gpio_mode_init.mode_temp = private unnamed_addr constant [10 x i32] [i32 -2004322441, i32 -2004318072, i32 -2004318072, i32 -2004596600, i32 -2005464952, i32 -2004318072, i32 -2004318072, i32 -2004457336, i32 -2004318072, i32 8], align 4
@.str.101 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.1.102 = private unnamed_addr constant [20 x i8] c"welcome to main()\0D\0A\00", align 1
@.str.2.103 = private unnamed_addr constant [34 x i8] c"pls add your own code from here\0D\0A\00", align 1
@.str.3.104 = private unnamed_addr constant [31 x i8] c"example project test success.\0A\00", align 1
@SystemCoreClock = dso_local local_unnamed_addr global i32 40000000, align 4, !dbg !749
@System_Initialize_Done = internal global i32 0, align 4, !dbg !807
@_sbrk_r.heap_end = internal unnamed_addr global i8* null, align 4, !dbg !809
@end = external dso_local global i8, align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"_exit\0A\00", align 1
@.str.1.112 = private unnamed_addr constant [10 x i8] c"_kill %d\0A\00", align 1
@.str.2.113 = private unnamed_addr constant [9 x i8] c"_getpid\0A\00", align 1
@build_date_time_str = dso_local local_unnamed_addr global [31 x i8] c"2022/12/13 07:55:47 GMT +00:00\00", align 1, !dbg !1011
@sw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"SDK_V4.6.1\00", align 1, !dbg !1016
@hw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"mt7687_hdk\00", align 1, !dbg !1022

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpt_get_current_time() local_unnamed_addr #0 section ".ramTEXT" !dbg !1093 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !1100
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #13, !dbg !1100
  call void @llvm.dbg.value(metadata i32 0, metadata !1097, metadata !DIExpression()), !dbg !1101
  store i32 0, i32* %1, align 4, !dbg !1102
  call void @llvm.dbg.value(metadata i32* %1, metadata !1097, metadata !DIExpression(DW_OP_deref)), !dbg !1101
  %3 = call i32 @hal_gpt_get_free_run_count(i32 noundef 0, i32* noundef nonnull %1) #14, !dbg !1103
  call void @llvm.dbg.value(metadata i32 %3, metadata !1098, metadata !DIExpression()), !dbg !1101
  %4 = icmp eq i32 %3, 0, !dbg !1104
  br i1 %4, label %6, label %5, !dbg !1106

5:                                                ; preds = %0
  call void @__assert_func(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i32 0, i32 0), i32 noundef 92, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gpt_get_current_time, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #15, !dbg !1107
  unreachable, !dbg !1107

6:                                                ; preds = %0
  %7 = load i32, i32* %1, align 4, !dbg !1109
  call void @llvm.dbg.value(metadata i32 %7, metadata !1097, metadata !DIExpression()), !dbg !1101
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #13, !dbg !1110
  ret i32 %7, !dbg !1111
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: noreturn optsize
declare dso_local void @__assert_func(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local void @SF_DAL_FLAG_BUSY_SET() local_unnamed_addr #4 section ".ramTEXT" !dbg !1112 {
  store i8 1, i8* @NOR_FLASH_BUSY, align 1, !dbg !1114
  ret void, !dbg !1115
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local void @SF_DAL_FLAG_BUSY_CLR() local_unnamed_addr #4 section ".ramTEXT" !dbg !1116 {
  store i8 0, i8* @NOR_FLASH_BUSY, align 1, !dbg !1117
  ret void, !dbg !1118
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local void @SF_DAL_FLAG_SUS_SET() local_unnamed_addr #4 section ".ramTEXT" !dbg !1119 {
  store i8 1, i8* @NOR_FLASH_SUSPENDED, align 1, !dbg !1120
  ret void, !dbg !1121
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local void @SF_DAL_FLAG_SUS_CLR() local_unnamed_addr #4 section ".ramTEXT" !dbg !1122 {
  store i8 0, i8* @NOR_FLASH_SUSPENDED, align 1, !dbg !1123
  ret void, !dbg !1124
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @get_sf_lock() local_unnamed_addr #0 !dbg !1125 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #14, !dbg !1130
  call void @llvm.dbg.value(metadata i32 %1, metadata !1129, metadata !DIExpression()), !dbg !1131
  %2 = load i1, i1* @sf_Mutex, align 4, !dbg !1132
  br i1 %2, label %4, label %3, !dbg !1134

3:                                                ; preds = %0
  store i1 true, i1* @sf_Mutex, align 4, !dbg !1135
  br label %4, !dbg !1137

4:                                                ; preds = %0, %3
  %5 = phi i32 [ 0, %3 ], [ -2, %0 ], !dbg !1138
  tail call void @restore_interrupt_mask(i32 noundef %1) #14, !dbg !1138
  ret i32 %5, !dbg !1139
}

; Function Attrs: noinline nounwind optsize
define dso_local void @free_sf_lock() local_unnamed_addr #0 !dbg !1140 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #14, !dbg !1143
  call void @llvm.dbg.value(metadata i32 %1, metadata !1142, metadata !DIExpression()), !dbg !1144
  %2 = load i1, i1* @sf_Mutex, align 4, !dbg !1145
  br i1 %2, label %3, label %4, !dbg !1147

3:                                                ; preds = %0
  store i1 false, i1* @sf_Mutex, align 4, !dbg !1148
  tail call void @restore_interrupt_mask(i32 noundef %1) #14, !dbg !1150
  ret void, !dbg !1151

4:                                                ; preds = %0
  tail call void @restore_interrupt_mask(i32 noundef %1) #14, !dbg !1152
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i32 0, i32 0), i32 noundef 141, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.free_sf_lock, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #15, !dbg !1154
  unreachable, !dbg !1154
}

; Function Attrs: noinline nounwind optsize
define dso_local void @retrieve_sf_lock() local_unnamed_addr #0 !dbg !1155 {
  br label %1, !dbg !1158

1:                                                ; preds = %1, %0
  %2 = tail call i32 @get_sf_lock() #16, !dbg !1159
  call void @llvm.dbg.value(metadata i32 %2, metadata !1157, metadata !DIExpression()), !dbg !1161
  %3 = icmp eq i32 %2, 0, !dbg !1162
  br i1 %3, label %4, label %1, !dbg !1163, !llvm.loop !1164

4:                                                ; preds = %1
  ret void, !dbg !1166
}

; Function Attrs: noinline nounwind optsize
define dso_local void @release_sf_lock() local_unnamed_addr #0 !dbg !1167 {
  tail call void @free_sf_lock() #16, !dbg !1168
  ret void, !dbg !1169
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @flash_sfc_config(i8 noundef zeroext %0) local_unnamed_addr #0 section ".ramTEXT" !dbg !1170 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1174, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i32 0, metadata !1175, metadata !DIExpression()), !dbg !1177
  tail call fastcc void @sfc_pad_config() #16, !dbg !1178
  %2 = tail call i32 @gpt_get_current_time() #16, !dbg !1179
  %3 = tail call %struct.flash_info_t* @customer_flash_register() #14, !dbg !1180
  %4 = icmp eq %struct.flash_info_t* %3, null, !dbg !1182
  br i1 %4, label %6, label %5, !dbg !1183

5:                                                ; preds = %1
  store i32 255, i32* @support_flash_id, align 4, !dbg !1184
  br label %6, !dbg !1186

6:                                                ; preds = %5, %1
  %7 = tail call i32 @flash_check_device() #14, !dbg !1187
  ret i32 0, !dbg !1188
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @sfc_pad_config() unnamed_addr #5 !dbg !1189 {
  call void @llvm.dbg.value(metadata i32 0, metadata !1191, metadata !DIExpression()), !dbg !1192
  %1 = load volatile i32, i32* inttoptr (i32 135274888 to i32*), align 8, !dbg !1193
  call void @llvm.dbg.value(metadata i32 %1, metadata !1191, metadata !DIExpression()), !dbg !1192
  %2 = or i32 %1, 32256, !dbg !1194
  call void @llvm.dbg.value(metadata i32 %2, metadata !1191, metadata !DIExpression()), !dbg !1192
  store volatile i32 %2, i32* inttoptr (i32 135274888 to i32*), align 8, !dbg !1195
  ret void, !dbg !1196
}

; Function Attrs: noinline nounwind optsize
define dso_local void @hal_flash_direct_read(i8* noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !1197 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1201, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i8* %1, metadata !1202, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata i32 %2, metadata !1203, metadata !DIExpression()), !dbg !1204
  tail call void @retrieve_sf_lock() #16, !dbg !1205
  %4 = tail call i8* @memcpy(i8* noundef %1, i8* noundef %0, i32 noundef %2) #14, !dbg !1206
  tail call void @release_sf_lock() #16, !dbg !1207
  ret void, !dbg !1208
}

; Function Attrs: optsize
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize
define dso_local i32 @flash_sfc_read(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #0 section ".ramTEXT" !dbg !1209 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1213, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i32 %1, metadata !1214, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8* %2, metadata !1215, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i32 0, metadata !1216, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i32 %1, metadata !1217, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i32 0, metadata !1218, metadata !DIExpression()), !dbg !1219
  tail call void @retrieve_sf_lock() #16, !dbg !1220
  call void @llvm.dbg.value(metadata i32 %1, metadata !1217, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i32 %0, metadata !1213, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8* %2, metadata !1215, metadata !DIExpression()), !dbg !1219
  %4 = icmp ugt i32 %1, 127, !dbg !1221
  br i1 %4, label %5, label %19, !dbg !1222

5:                                                ; preds = %3, %14
  %6 = phi i32 [ %17, %14 ], [ %1, %3 ]
  %7 = phi i32 [ %16, %14 ], [ %0, %3 ]
  %8 = phi i8* [ %15, %14 ], [ %2, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !1217, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i32 %7, metadata !1213, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8* %8, metadata !1215, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i32 128, metadata !1218, metadata !DIExpression()), !dbg !1219
  %9 = load i32, i32* @gucFlashSFCMode, align 4, !dbg !1223
  switch i32 %9, label %14 [
    i32 0, label %10
    i32 1, label %12
  ], !dbg !1226

10:                                               ; preds = %5
  %11 = tail call i32 @flash_read(i8* noundef %8, i32 noundef %7, i32 noundef 128) #14, !dbg !1227
  br label %14, !dbg !1229

12:                                               ; preds = %5
  %13 = tail call i32 @flash_fast_read(i8* noundef %8, i32 noundef %7, i32 noundef 128, i32 noundef 1) #14, !dbg !1230
  br label %14, !dbg !1233

14:                                               ; preds = %5, %12, %10
  %15 = getelementptr inbounds i8, i8* %8, i32 128, !dbg !1234
  call void @llvm.dbg.value(metadata i8* %15, metadata !1215, metadata !DIExpression()), !dbg !1219
  %16 = add i32 %7, 128, !dbg !1235
  call void @llvm.dbg.value(metadata i32 %16, metadata !1213, metadata !DIExpression()), !dbg !1219
  %17 = add i32 %6, -128, !dbg !1236
  call void @llvm.dbg.value(metadata i32 %17, metadata !1217, metadata !DIExpression()), !dbg !1219
  %18 = icmp ugt i32 %17, 127, !dbg !1221
  br i1 %18, label %5, label %19, !dbg !1222, !llvm.loop !1237

19:                                               ; preds = %14, %3
  %20 = phi i8* [ %2, %3 ], [ %15, %14 ]
  %21 = phi i32 [ %0, %3 ], [ %16, %14 ]
  %22 = phi i32 [ %1, %3 ], [ %17, %14 ], !dbg !1219
  %23 = load i32, i32* @gucFlashSFCMode, align 4, !dbg !1239
  switch i32 %23, label %28 [
    i32 0, label %24
    i32 1, label %26
  ], !dbg !1241

24:                                               ; preds = %19
  %25 = tail call i32 @flash_read(i8* noundef %20, i32 noundef %21, i32 noundef %22) #14, !dbg !1242
  br label %28, !dbg !1244

26:                                               ; preds = %19
  %27 = tail call i32 @flash_fast_read(i8* noundef %20, i32 noundef %21, i32 noundef %22, i32 noundef 1) #14, !dbg !1245
  br label %28, !dbg !1248

28:                                               ; preds = %19, %26, %24
  store i32 0, i32* @sf_drvier_status, align 4, !dbg !1249
  tail call void @release_sf_lock() #16, !dbg !1250
  ret i32 0, !dbg !1251
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @flash_sfc_write(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #0 !dbg !1252 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1258, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata i32 %1, metadata !1259, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata i8* %2, metadata !1260, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata i32 0, metadata !1261, metadata !DIExpression()), !dbg !1262
  tail call void @retrieve_sf_lock() #16, !dbg !1263
  %4 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !1264
  %5 = tail call i32 @hal_cache_disable() #14, !dbg !1265
  %6 = tail call i32 @flash_write(i8* noundef %2, i32 noundef %0, i32 noundef %1) #14, !dbg !1266
  call void @llvm.dbg.value(metadata i32 %6, metadata !1261, metadata !DIExpression()), !dbg !1262
  store i32 0, i32* @sf_drvier_status, align 4, !dbg !1267
  %7 = tail call i32 @hal_cache_enable() #14, !dbg !1268
  tail call void @release_sf_lock() #16, !dbg !1269
  ret i32 %6, !dbg !1270
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @flash_sfc_erase(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 section ".ramTEXT" !dbg !1271 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1275, metadata !DIExpression()), !dbg !1278
  call void @llvm.dbg.value(metadata i32 %1, metadata !1276, metadata !DIExpression()), !dbg !1278
  call void @llvm.dbg.value(metadata i32 0, metadata !1277, metadata !DIExpression()), !dbg !1278
  tail call void @retrieve_sf_lock() #16, !dbg !1279
  %3 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !1280
  %4 = tail call i32 @hal_cache_disable() #14, !dbg !1281
  %5 = tail call i32 @flash_write_enable() #14, !dbg !1282
  %6 = tail call i32 @flash_unprotect() #14, !dbg !1283
  switch i32 %1, label %22 [
    i32 0, label %7
    i32 1, label %12
    i32 2, label %17
  ], !dbg !1284

7:                                                ; preds = %2
  %8 = and i32 %0, 4095, !dbg !1285
  %9 = icmp eq i32 %8, 0, !dbg !1289
  br i1 %9, label %10, label %22, !dbg !1290

10:                                               ; preds = %7
  %11 = tail call i32 @flash_erase_page(i32 noundef %0) #14, !dbg !1291
  call void @llvm.dbg.value(metadata i32 %11, metadata !1277, metadata !DIExpression()), !dbg !1278
  br label %22, !dbg !1292

12:                                               ; preds = %2
  %13 = and i32 %0, 32767, !dbg !1293
  %14 = icmp eq i32 %13, 0, !dbg !1297
  br i1 %14, label %15, label %22, !dbg !1298

15:                                               ; preds = %12
  %16 = tail call i32 @flash_erase_sector_32k(i32 noundef %0) #14, !dbg !1299
  call void @llvm.dbg.value(metadata i32 %16, metadata !1277, metadata !DIExpression()), !dbg !1278
  br label %22, !dbg !1300

17:                                               ; preds = %2
  %18 = and i32 %0, 65535, !dbg !1301
  %19 = icmp eq i32 %18, 0, !dbg !1305
  br i1 %19, label %20, label %22, !dbg !1306

20:                                               ; preds = %17
  %21 = tail call i32 @flash_erase_sector(i32 noundef %0) #14, !dbg !1307
  call void @llvm.dbg.value(metadata i32 %21, metadata !1277, metadata !DIExpression()), !dbg !1278
  br label %22, !dbg !1308

22:                                               ; preds = %10, %20, %15, %2, %17, %12, %7
  %23 = phi i32 [ -3, %7 ], [ -3, %12 ], [ -3, %17 ], [ %11, %10 ], [ %16, %15 ], [ %21, %20 ], [ 0, %2 ], !dbg !1278
  %24 = tail call i32 @hal_cache_enable() #14, !dbg !1278
  tail call void @release_sf_lock() #16, !dbg !1278
  ret i32 %23, !dbg !1309
}

; Function Attrs: noinline nounwind optsize
define dso_local void @Flash_ReturnReady() local_unnamed_addr #0 section ".ramTEXT" !dbg !1310 {
  %1 = alloca i8, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1) #13, !dbg !1314
  call void @llvm.dbg.value(metadata i8 0, metadata !1312, metadata !DIExpression()), !dbg !1315
  store i8 0, i8* %1, align 1, !dbg !1316
  call void @llvm.dbg.value(metadata i32 0, metadata !1313, metadata !DIExpression()), !dbg !1315
  %2 = tail call i32 @save_and_set_interrupt_mask() #14, !dbg !1317
  call void @llvm.dbg.value(metadata i32 %2, metadata !1313, metadata !DIExpression()), !dbg !1315
  %3 = load i8, i8* @NOR_FLASH_SUSPENDED, align 1, !dbg !1318, !range !1320
  %4 = icmp ne i8 %3, 0, !dbg !1318
  %5 = load i8, i8* @NOR_FLASH_BUSY, align 1
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %4, i1 true, i1 %6, !dbg !1321
  br i1 %7, label %27, label %8, !dbg !1321

8:                                                ; preds = %0
  call void @llvm.dbg.value(metadata i8* %1, metadata !1312, metadata !DIExpression(DW_OP_deref)), !dbg !1315
  %9 = call i32 @flash_read_sr(i8* noundef nonnull %1) #14, !dbg !1322
  %10 = icmp slt i32 %9, 0, !dbg !1325
  br i1 %10, label %11, label %12, !dbg !1326

11:                                               ; preds = %8
  call void @__assert_func(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i32 0, i32 0), i32 noundef 333, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.Flash_ReturnReady, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #15, !dbg !1327
  unreachable, !dbg !1327

12:                                               ; preds = %8
  %13 = load i8, i8* %1, align 1, !dbg !1329
  call void @llvm.dbg.value(metadata i8 %13, metadata !1312, metadata !DIExpression()), !dbg !1315
  %14 = and i8 %13, 1, !dbg !1331
  %15 = icmp eq i8 %14, 0, !dbg !1332
  br i1 %15, label %26, label %16, !dbg !1333

16:                                               ; preds = %12
  call void @flash_suspend_Winbond() #14, !dbg !1334
  br label %17, !dbg !1336

17:                                               ; preds = %21, %16
  call void @llvm.dbg.value(metadata i8* %1, metadata !1312, metadata !DIExpression(DW_OP_deref)), !dbg !1315
  %18 = call i32 @flash_read_sr(i8* noundef nonnull %1) #14, !dbg !1337
  %19 = icmp slt i32 %18, 0, !dbg !1340
  br i1 %19, label %20, label %21, !dbg !1341

20:                                               ; preds = %17
  call void @__assert_func(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i32 0, i32 0), i32 noundef 344, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.Flash_ReturnReady, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #15, !dbg !1342
  unreachable, !dbg !1342

21:                                               ; preds = %17
  %22 = load i8, i8* %1, align 1, !dbg !1344
  call void @llvm.dbg.value(metadata i8 %22, metadata !1312, metadata !DIExpression()), !dbg !1315
  %23 = and i8 %22, 1, !dbg !1346
  %24 = icmp eq i8 %23, 0, !dbg !1347
  br i1 %24, label %25, label %17, !dbg !1348, !llvm.loop !1349

25:                                               ; preds = %21
  call void @SF_DAL_FLAG_SUS_SET() #16, !dbg !1351
  br label %27, !dbg !1352

26:                                               ; preds = %12
  call void @SF_DAL_FLAG_BUSY_CLR() #16, !dbg !1353
  br label %27

27:                                               ; preds = %25, %26, %0
  call void @restore_interrupt_mask(i32 noundef %2) #14, !dbg !1355
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1) #13, !dbg !1356
  ret void, !dbg !1356
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @SF_DAL_CheckDeviceReady(i8* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #0 section ".ramTEXT" !dbg !1357 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !1361, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.value(metadata i32 %1, metadata !1362, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.value(metadata i32 0, metadata !1364, metadata !DIExpression()), !dbg !1372
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #13, !dbg !1373
  call void @llvm.dbg.value(metadata i8 0, metadata !1367, metadata !DIExpression()), !dbg !1372
  store i8 0, i8* %3, align 1, !dbg !1374
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %4) #13, !dbg !1375
  call void @llvm.dbg.value(metadata i8 0, metadata !1368, metadata !DIExpression()), !dbg !1372
  store i8 0, i8* %4, align 1, !dbg !1376
  call void @llvm.dbg.value(metadata i8* %3, metadata !1367, metadata !DIExpression(DW_OP_deref)), !dbg !1372
  %5 = call i32 @flash_read_sr(i8* noundef nonnull %3) #14, !dbg !1377
  %6 = icmp slt i32 %5, 0, !dbg !1379
  br i1 %6, label %7, label %8, !dbg !1380

7:                                                ; preds = %2
  call void @__assert_func(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i32 0, i32 0), i32 noundef 368, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.SF_DAL_CheckDeviceReady, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #15, !dbg !1381
  unreachable, !dbg !1381

8:                                                ; preds = %2
  %9 = load i8, i8* %3, align 1, !dbg !1383
  call void @llvm.dbg.value(metadata i8 %9, metadata !1367, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.value(metadata i8 %9, metadata !1365, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.value(metadata i8* %4, metadata !1368, metadata !DIExpression(DW_OP_deref)), !dbg !1372
  %10 = call i32 @flash_read_sr2(i8* noundef nonnull %4) #14, !dbg !1385
  %11 = icmp slt i32 %10, 0, !dbg !1387
  br i1 %11, label %12, label %13, !dbg !1388

12:                                               ; preds = %8
  call void @__assert_func(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i32 0, i32 0), i32 noundef 374, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.SF_DAL_CheckDeviceReady, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #15, !dbg !1389
  unreachable, !dbg !1389

13:                                               ; preds = %8
  %14 = load i8, i8* %4, align 1, !dbg !1391
  call void @llvm.dbg.value(metadata i8 %14, metadata !1368, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.value(metadata i8 %14, metadata !1366, metadata !DIExpression()), !dbg !1372
  %15 = call i32 @save_and_set_interrupt_mask() #14, !dbg !1393
  call void @llvm.dbg.value(metadata i32 %15, metadata !1364, metadata !DIExpression()), !dbg !1372
  %16 = and i8 %9, 1, !dbg !1394
  %17 = icmp eq i8 %16, 0, !dbg !1395
  br i1 %17, label %18, label %46, !dbg !1396

18:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8 12, metadata !1369, metadata !DIExpression()), !dbg !1397
  %19 = load i32, i32* @support_flash_id, align 4, !dbg !1398
  switch i32 %19, label %28 [
    i32 239, label %20
    i32 200, label %20
    i32 255, label %25
    i32 32, label %24
  ], !dbg !1400

20:                                               ; preds = %18, %18
  call void @llvm.dbg.value(metadata i8 -128, metadata !1369, metadata !DIExpression()), !dbg !1397
  %21 = load i32, i32* @gd_write_sr2_1, align 4, !dbg !1401
  %22 = icmp eq i32 %21, 49, !dbg !1404
  %23 = select i1 %22, i32 132, i32 128, !dbg !1405
  br label %28, !dbg !1405

24:                                               ; preds = %18
  call void @llvm.dbg.value(metadata i8 66, metadata !1369, metadata !DIExpression()), !dbg !1397
  br label %28, !dbg !1406

25:                                               ; preds = %18
  %26 = call zeroext i8 @customer_flash_suspend_bit() #14, !dbg !1410
  call void @llvm.dbg.value(metadata i8 %26, metadata !1369, metadata !DIExpression()), !dbg !1397
  %27 = zext i8 %26 to i32, !dbg !1413
  br label %28, !dbg !1413

28:                                               ; preds = %20, %18, %25, %24
  %29 = phi i32 [ 66, %24 ], [ %27, %25 ], [ %23, %20 ], [ 12, %18 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1369, metadata !DIExpression()), !dbg !1397
  %30 = zext i8 %14 to i32, !dbg !1414
  %31 = and i32 %29, %30, !dbg !1416
  %32 = icmp eq i32 %31, 0, !dbg !1417
  br i1 %32, label %33, label %38, !dbg !1418

33:                                               ; preds = %28
  %34 = icmp ne i32 %29, 0, !dbg !1419
  %35 = load i8, i8* @NOR_FLASH_SUSPENDED, align 1
  %36 = icmp eq i8 %35, 0
  %37 = select i1 %34, i1 true, i1 %36, !dbg !1420
  br i1 %37, label %43, label %38, !dbg !1420

38:                                               ; preds = %33, %28
  %39 = load i8, i8* @NOR_FLASH_BUSY, align 1, !dbg !1421, !range !1320
  %40 = icmp eq i8 %39, 0, !dbg !1421
  br i1 %40, label %41, label %42, !dbg !1421

41:                                               ; preds = %38
  call void @__assert_func(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i32 0, i32 0), i32 noundef 407, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.SF_DAL_CheckDeviceReady, i32 0, i32 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0)) #15, !dbg !1421
  unreachable, !dbg !1421

42:                                               ; preds = %38
  call void @flash_resume_Winbond() #14, !dbg !1423
  call void @llvm.dbg.value(metadata i32 -121, metadata !1363, metadata !DIExpression()), !dbg !1372
  br label %44, !dbg !1424

43:                                               ; preds = %33
  call void @SF_DAL_FLAG_BUSY_CLR() #16, !dbg !1425
  call void @llvm.dbg.value(metadata i32 0, metadata !1363, metadata !DIExpression()), !dbg !1372
  br label %44

44:                                               ; preds = %43, %42
  %45 = phi i32 [ 0, %43 ], [ -121, %42 ]
  call void @SF_DAL_FLAG_SUS_CLR() #16, !dbg !1427
  br label %46, !dbg !1428

46:                                               ; preds = %44, %13
  %47 = phi i32 [ -121, %13 ], [ %45, %44 ], !dbg !1429
  call void @llvm.dbg.value(metadata i32 %47, metadata !1363, metadata !DIExpression()), !dbg !1372
  call void @restore_interrupt_mask(i32 noundef %15) #14, !dbg !1428
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4) #13, !dbg !1430
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #13, !dbg !1430
  ret i32 %47, !dbg !1431
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @SF_DAL_CheckReadyAndResume(i8* nocapture noundef readnone %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 section ".ramTEXT" !dbg !1432 {
  %4 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !1436, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i32 %1, metadata !1437, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %2, metadata !1438, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i32 0, metadata !1440, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i16 0, metadata !1442, metadata !DIExpression()), !dbg !1446
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %4) #13, !dbg !1447
  call void @llvm.dbg.value(metadata i8 0, metadata !1445, metadata !DIExpression()), !dbg !1446
  store i8 0, i8* %4, align 1, !dbg !1448
  call void @llvm.dbg.value(metadata i8* %4, metadata !1445, metadata !DIExpression(DW_OP_deref)), !dbg !1446
  %5 = call i32 @flash_read_sr(i8* noundef nonnull %4) #14, !dbg !1449
  %6 = icmp slt i32 %5, 0, !dbg !1451
  br i1 %6, label %7, label %8, !dbg !1452

7:                                                ; preds = %3
  call void @__assert_func(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i32 0, i32 0), i32 noundef 449, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.SF_DAL_CheckReadyAndResume, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #15, !dbg !1453
  unreachable, !dbg !1453

8:                                                ; preds = %3
  %9 = load i8, i8* %4, align 1, !dbg !1455
  call void @llvm.dbg.value(metadata i8 %9, metadata !1445, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %9, metadata !1442, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1446
  %10 = call i32 @save_and_set_interrupt_mask() #14, !dbg !1457
  call void @llvm.dbg.value(metadata i32 %10, metadata !1439, metadata !DIExpression()), !dbg !1446
  %11 = load i8, i8* @NOR_FLASH_SUSPENDED, align 1, !dbg !1458, !range !1320
  %12 = icmp eq i8 %11, 0, !dbg !1458
  br i1 %12, label %18, label %13, !dbg !1460

13:                                               ; preds = %8
  %14 = load i8, i8* @NOR_FLASH_BUSY, align 1, !dbg !1461, !range !1320
  %15 = icmp eq i8 %14, 0, !dbg !1461
  br i1 %15, label %16, label %17, !dbg !1461

16:                                               ; preds = %13
  call void @__assert_func(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i32 0, i32 0), i32 noundef 458, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.SF_DAL_CheckReadyAndResume, i32 0, i32 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0)) #15, !dbg !1461
  unreachable, !dbg !1461

17:                                               ; preds = %13
  call void @flash_resume_Winbond() #14, !dbg !1463
  call void @SF_DAL_FLAG_SUS_CLR() #16, !dbg !1464
  call void @restore_interrupt_mask(i32 noundef %10) #14, !dbg !1465
  br label %26, !dbg !1466

18:                                               ; preds = %8
  call void @llvm.dbg.value(metadata i8 %9, metadata !1442, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1446
  %19 = and i8 %9, 1, !dbg !1467
  %20 = icmp eq i8 %19, 0, !dbg !1469
  br i1 %20, label %21, label %26, !dbg !1470

21:                                               ; preds = %18
  call void @SF_DAL_FLAG_BUSY_CLR() #16, !dbg !1471
  %22 = inttoptr i32 %1 to i8*, !dbg !1473
  %23 = load volatile i8, i8* %22, align 1, !dbg !1474
  call void @llvm.dbg.value(metadata i8 %23, metadata !1441, metadata !DIExpression()), !dbg !1446
  %24 = icmp eq i8 %23, %2, !dbg !1475
  %25 = select i1 %24, i32 1, i32 -1
  br label %26

26:                                               ; preds = %21, %18, %17
  %27 = phi i32 [ 0, %17 ], [ 0, %18 ], [ %25, %21 ], !dbg !1446
  call void @llvm.dbg.value(metadata i32 %27, metadata !1440, metadata !DIExpression()), !dbg !1446
  call void @restore_interrupt_mask(i32 noundef %10) #14, !dbg !1477
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4) #13, !dbg !1478
  ret i32 %27, !dbg !1479
}

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_ResetTimer(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 !dbg !1480 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1484, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i32 %1, metadata !1485, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i1 %2, metadata !1486, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1487
  %4 = icmp ugt i32 %0, 1, !dbg !1488
  br i1 %4, label %5, label %8, !dbg !1490

5:                                                ; preds = %3
  %6 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1.4, i32 0, i32 0), i32 noundef 75) #14, !dbg !1491
  br label %7, !dbg !1491

7:                                                ; preds = %5, %7
  br label %7, !dbg !1491, !llvm.loop !1493

8:                                                ; preds = %3
  switch i32 %0, label %21 [
    i32 0, label %9
    i32 1, label %15
  ], !dbg !1494

9:                                                ; preds = %8
  store volatile i32 %1, i32* inttoptr (i32 -2096824300 to i32*), align 4, !dbg !1495
  %10 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1498
  br i1 %2, label %11, label %13, !dbg !1500

11:                                               ; preds = %9
  %12 = or i32 %10, 2, !dbg !1501
  store volatile i32 %12, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1501
  br label %21, !dbg !1503

13:                                               ; preds = %9
  %14 = and i32 %10, -3, !dbg !1504
  store volatile i32 %14, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1504
  br label %21

15:                                               ; preds = %8
  store volatile i32 %1, i32* inttoptr (i32 -2096824284 to i32*), align 4, !dbg !1506
  %16 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1509
  br i1 %2, label %17, label %19, !dbg !1511

17:                                               ; preds = %15
  %18 = or i32 %16, 2, !dbg !1512
  store volatile i32 %18, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1512
  br label %21, !dbg !1514

19:                                               ; preds = %15
  %20 = and i32 %16, -3, !dbg !1515
  store volatile i32 %20, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1515
  br label %21

21:                                               ; preds = %8, %19, %17, %11, %13
  ret void, !dbg !1517
}

; Function Attrs: optsize
declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_Start(i32 noundef %0) local_unnamed_addr #0 !dbg !1518 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1522, metadata !DIExpression()), !dbg !1523
  switch i32 %0, label %2 [
    i32 0, label %5
    i32 1, label %9
    i32 4, label %13
  ], !dbg !1524

2:                                                ; preds = %1
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1.4, i32 0, i32 0), i32 noundef 96) #14, !dbg !1525
  br label %4, !dbg !1525

4:                                                ; preds = %2, %4
  br label %4, !dbg !1525, !llvm.loop !1528

5:                                                ; preds = %1
  %6 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1529
  %7 = or i32 %6, 1, !dbg !1529
  store volatile i32 %7, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1529
  %8 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #14, !dbg !1532
  br label %16, !dbg !1533

9:                                                ; preds = %1
  %10 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1534
  %11 = or i32 %10, 1, !dbg !1534
  store volatile i32 %11, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1534
  %12 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #14, !dbg !1537
  br label %16, !dbg !1538

13:                                               ; preds = %1
  %14 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1539
  %15 = or i32 %14, 1, !dbg !1539
  store volatile i32 %15, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1539
  br label %16, !dbg !1542

16:                                               ; preds = %9, %13, %5
  ret void, !dbg !1543
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @GPT_Stop(i32 noundef %0) local_unnamed_addr #5 !dbg !1544 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1546, metadata !DIExpression()), !dbg !1547
  switch i32 %0, label %18 [
    i32 0, label %2
    i32 1, label %7
    i32 2, label %12
    i32 4, label %15
  ], !dbg !1548

2:                                                ; preds = %1
  %3 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1549
  %4 = and i32 %3, -2, !dbg !1549
  store volatile i32 %4, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1549
  %5 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1552
  %6 = and i32 %5, -2, !dbg !1552
  store volatile i32 %6, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1552
  store volatile i32 1, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1553
  br label %18, !dbg !1554

7:                                                ; preds = %1
  %8 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1555
  %9 = and i32 %8, -3, !dbg !1555
  store volatile i32 %9, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1555
  %10 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1558
  %11 = and i32 %10, -2, !dbg !1558
  store volatile i32 %11, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1558
  store volatile i32 2, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1559
  br label %18, !dbg !1560

12:                                               ; preds = %1
  %13 = load volatile i32, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1561
  %14 = and i32 %13, -2, !dbg !1561
  store volatile i32 %14, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1561
  br label %18, !dbg !1564

15:                                               ; preds = %1
  %16 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1565
  %17 = and i32 %16, -2, !dbg !1565
  store volatile i32 %17, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1565
  br label %18, !dbg !1568

18:                                               ; preds = %1, %7, %15, %12, %2
  ret void, !dbg !1569
}

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_INT_Handler(i32 %0) #0 !dbg !1570 {
  call void @llvm.dbg.value(metadata i32 undef, metadata !1572, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.value(metadata i32 undef, metadata !1572, metadata !DIExpression()), !dbg !1574
  %2 = load volatile i32, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1575
  %3 = and i32 %2, 65535, !dbg !1576
  call void @llvm.dbg.value(metadata i32 %2, metadata !1573, metadata !DIExpression()), !dbg !1574
  store volatile i32 %3, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !1577
  %4 = and i32 %2, 1, !dbg !1578
  %5 = icmp eq i32 %4, 0, !dbg !1578
  br i1 %5, label %6, label %9, !dbg !1580

6:                                                ; preds = %1
  %7 = and i32 %2, 2, !dbg !1581
  %8 = icmp eq i32 %7, 0, !dbg !1581
  br i1 %8, label %13, label %9, !dbg !1583

9:                                                ; preds = %6, %1
  %10 = phi i32 [ 0, %1 ], [ 1, %6 ]
  %11 = phi void ()** [ @GPTTimer.0, %1 ], [ @GPTTimer.1, %6 ]
  tail call void @clear_TMR_INT_status_bit(i32 noundef %10) #14, !dbg !1584
  %12 = load void ()*, void ()** %11, align 4, !dbg !1584
  tail call void %12() #14, !dbg !1584
  br label %13, !dbg !1585

13:                                               ; preds = %9, %6
  ret void, !dbg !1585
}

; Function Attrs: noinline nounwind optsize
define dso_local void @GPT_init(i32 noundef %0, i32 noundef %1, void ()* noundef %2) local_unnamed_addr #0 !dbg !1586 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1590, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata i32 %1, metadata !1591, metadata !DIExpression()), !dbg !1593
  call void @llvm.dbg.value(metadata void ()* %2, metadata !1592, metadata !DIExpression()), !dbg !1593
  switch i32 %0, label %4 [
    i32 4, label %7
    i32 2, label %7
    i32 1, label %7
    i32 0, label %7
  ], !dbg !1594

4:                                                ; preds = %3
  %5 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1.4, i32 0, i32 0), i32 noundef 149) #14, !dbg !1595
  br label %6, !dbg !1595

6:                                                ; preds = %4, %6
  br label %6, !dbg !1595, !llvm.loop !1598

7:                                                ; preds = %3, %3, %3, %3
  %8 = icmp ult i32 %0, 2, !dbg !1599
  br i1 %8, label %9, label %13, !dbg !1600

9:                                                ; preds = %7
  %10 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 24, void (i32)* noundef nonnull @GPT_INT_Handler) #14, !dbg !1602
  %11 = tail call i32 @hal_nvic_set_priority(i32 noundef 24, i32 noundef 5) #14, !dbg !1604
  %12 = tail call i32 @hal_nvic_enable_irq(i32 noundef 24) #14, !dbg !1605
  br label %13, !dbg !1606

13:                                               ; preds = %7, %9
  switch i32 %0, label %36 [
    i32 0, label %14
    i32 1, label %20
    i32 2, label %26
    i32 4, label %31
  ], !dbg !1607

14:                                               ; preds = %13
  store void ()* %2, void ()** @GPTTimer.0, align 4, !dbg !1608
  %15 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1611
  %16 = or i32 %15, 1, !dbg !1611
  store volatile i32 %16, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1611
  %17 = shl i32 %1, 2, !dbg !1612
  %18 = load volatile i32, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1613
  %19 = or i32 %18, %17, !dbg !1613
  store volatile i32 %19, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !1613
  br label %36, !dbg !1614

20:                                               ; preds = %13
  store void ()* %2, void ()** @GPTTimer.1, align 4, !dbg !1615
  %21 = load volatile i32, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1618
  %22 = or i32 %21, 2, !dbg !1618
  store volatile i32 %22, i32* inttoptr (i32 -2096824316 to i32*), align 4, !dbg !1618
  %23 = shl i32 %1, 2, !dbg !1619
  %24 = load volatile i32, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1620
  %25 = or i32 %24, %23, !dbg !1620
  store volatile i32 %25, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !1620
  br label %36, !dbg !1621

26:                                               ; preds = %13
  %27 = shl i32 %1, 1, !dbg !1622
  %28 = or i32 %27, 1, !dbg !1625
  %29 = load volatile i32, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1626
  %30 = or i32 %29, %28, !dbg !1626
  store volatile i32 %30, i32* inttoptr (i32 -2096824272 to i32*), align 16, !dbg !1626
  br label %36, !dbg !1627

31:                                               ; preds = %13
  %32 = shl i32 %1, 1, !dbg !1628
  %33 = or i32 %32, 1, !dbg !1631
  %34 = load volatile i32, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1632
  %35 = or i32 %34, %33, !dbg !1632
  store volatile i32 %35, i32* inttoptr (i32 -2096824224 to i32*), align 32, !dbg !1632
  store volatile i32 0, i32* inttoptr (i32 -2096824220 to i32*), align 4, !dbg !1633
  br label %36, !dbg !1634

36:                                               ; preds = %13, %20, %31, %26, %14
  ret void, !dbg !1635
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @GPT_return_current_count(i32 noundef %0) local_unnamed_addr #0 !dbg !1636 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1640, metadata !DIExpression()), !dbg !1642
  switch i32 %0, label %2 [
    i32 0, label %8
    i32 1, label %5
    i32 2, label %6
    i32 4, label %7
  ], !dbg !1643

2:                                                ; preds = %1
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1.4, i32 0, i32 0), i32 noundef 177) #14, !dbg !1644
  br label %4, !dbg !1644

4:                                                ; preds = %4, %2
  br label %4, !dbg !1644, !llvm.loop !1647

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !1641, metadata !DIExpression()), !dbg !1642
  br label %8, !dbg !1648

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !1641, metadata !DIExpression()), !dbg !1642
  br label %8, !dbg !1652

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 undef, metadata !1641, metadata !DIExpression()), !dbg !1642
  br label %8, !dbg !1655

8:                                                ; preds = %1, %5, %7, %6
  %9 = phi i32* [ inttoptr (i32 -2096824252 to i32*), %5 ], [ inttoptr (i32 -2096824268 to i32*), %6 ], [ inttoptr (i32 -2096824216 to i32*), %7 ], [ inttoptr (i32 -2096824256 to i32*), %1 ]
  %10 = load volatile i32, i32* %9, align 4, !dbg !1658
  call void @llvm.dbg.value(metadata i32 %10, metadata !1641, metadata !DIExpression()), !dbg !1642
  ret i32 %10, !dbg !1659
}

; Function Attrs: noinline nounwind optsize
define dso_local void @CM4_GPT2Init() local_unnamed_addr #0 !dbg !1660 {
  tail call void @GPT_init(i32 noundef 2, i32 noundef 1, void ()* noundef null) #16, !dbg !1661
  ret void, !dbg !1662
}

; Function Attrs: noinline nounwind optsize
define dso_local void @CM4_GPT4Init() local_unnamed_addr #0 !dbg !1663 {
  tail call void @GPT_init(i32 noundef 4, i32 noundef 1, void ()* noundef null) #16, !dbg !1664
  ret void, !dbg !1665
}

; Function Attrs: noinline nounwind optsize
define dso_local void @NVIC_SetupVectorTable(i32 noundef %0) local_unnamed_addr #0 !dbg !1666 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1670, metadata !DIExpression()), !dbg !1671
  store volatile i32 %0, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !1672
  tail call void asm sideeffect "dsb", ""() #13, !dbg !1673, !srcloc !1674
  tail call void asm sideeffect "isb", ""() #13, !dbg !1675, !srcloc !1676
  ret void, !dbg !1677
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @NVIC_SWInt(i32 noundef %0) local_unnamed_addr #5 !dbg !1678 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1682, metadata !DIExpression()), !dbg !1683
  store volatile i32 %0, i32* inttoptr (i32 -536809728 to i32*), align 256, !dbg !1684
  ret void, !dbg !1685
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @save_and_set_interrupt_mask() local_unnamed_addr #0 section ".ramTEXT" !dbg !1686 {
  %1 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #13, !dbg !1689, !srcloc !1696
  call void @llvm.dbg.value(metadata i32 %1, metadata !1693, metadata !DIExpression()) #13, !dbg !1697
  call void @llvm.dbg.value(metadata i32 %1, metadata !1688, metadata !DIExpression()), !dbg !1698
  tail call void asm sideeffect "cpsid i", "~{memory}"() #13, !dbg !1699, !srcloc !1702
  ret i32 %1, !dbg !1703
}

; Function Attrs: noinline nounwind optsize
define dso_local void @restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #0 section ".ramTEXT" !dbg !1704 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1706, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i32 %0, metadata !1708, metadata !DIExpression()) #13, !dbg !1711
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %0) #13, !dbg !1714, !srcloc !1715
  ret void, !dbg !1716
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @sfc_GPT_return_current_count() local_unnamed_addr #7 section ".ramTEXT" !dbg !1717 {
  %1 = load volatile i32, i32* inttoptr (i32 -2096824268 to i32*), align 4, !dbg !1722
  call void @llvm.dbg.value(metadata i32 %1, metadata !1721, metadata !DIExpression()), !dbg !1723
  ret i32 %1, !dbg !1724
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @sfc_get_systime() local_unnamed_addr #7 section ".ramTEXT" !dbg !1725 {
  %1 = tail call i32 @sfc_GPT_return_current_count() #16, !dbg !1726
  ret i32 %1, !dbg !1727
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @sfc_delay_time(i32 noundef %0) local_unnamed_addr #5 section ".ramTEXT" !dbg !1728 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1730, metadata !DIExpression()), !dbg !1733
  %2 = tail call i32 @sfc_get_systime() #16, !dbg !1734
  %3 = add i32 %2, %0, !dbg !1735
  %4 = xor i32 %3, -1, !dbg !1736
  call void @llvm.dbg.value(metadata i32 %3, metadata !1731, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1733
  %5 = tail call i32 @sfc_get_systime() #16, !dbg !1737
  call void @llvm.dbg.value(metadata i32 %5, metadata !1732, metadata !DIExpression()), !dbg !1733
  %6 = add i32 %5, %4, !dbg !1738
  %7 = icmp slt i32 %6, 0, !dbg !1738
  br i1 %7, label %8, label %12, !dbg !1739

8:                                                ; preds = %1, %8
  %9 = tail call i32 @sfc_get_systime() #16, !dbg !1740
  call void @llvm.dbg.value(metadata i32 %9, metadata !1732, metadata !DIExpression()), !dbg !1733
  %10 = add i32 %9, %4, !dbg !1738
  %11 = icmp slt i32 %10, 0, !dbg !1738
  br i1 %11, label %8, label %12, !dbg !1739, !llvm.loop !1742

12:                                               ; preds = %8, %1
  ret void, !dbg !1744
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @sfc_delay_ms(i32 noundef %0) local_unnamed_addr #5 section ".ramTEXT" !dbg !1745 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1747, metadata !DIExpression()), !dbg !1748
  %2 = shl i32 %0, 5, !dbg !1749
  tail call void @sfc_delay_time(i32 noundef %2) #16, !dbg !1750
  ret void, !dbg !1751
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @sfc_getMaxGPRamSize() local_unnamed_addr #8 section ".ramTEXT" !dbg !1752 {
  ret i32 128, !dbg !1755
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @sfc_Init(i32 noundef %0) local_unnamed_addr #5 section ".ramTEXT" !dbg !1756 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1758, metadata !DIExpression()), !dbg !1760
  store i32 0, i32* @g_sfc_security_enable, align 4, !dbg !1761
  store volatile i32 65536, i32* inttoptr (i32 -2096693248 to i32*), align 65536, !dbg !1762
  store volatile i32 185300880, i32* inttoptr (i32 -2096693244 to i32*), align 4, !dbg !1763
  store volatile i32 -1296039920, i32* inttoptr (i32 -2096693240 to i32*), align 8, !dbg !1764
  store volatile i32 0, i32* inttoptr (i32 -2096693236 to i32*), align 4, !dbg !1765
  store volatile i32 0, i32* inttoptr (i32 -2096693232 to i32*), align 16, !dbg !1766
  store volatile i32 0, i32* inttoptr (i32 -2096693220 to i32*), align 4, !dbg !1767
  %2 = load volatile i32, i32* inttoptr (i32 -2096693240 to i32*), align 8, !dbg !1768
  call void @llvm.dbg.value(metadata i32 %2, metadata !1759, metadata !DIExpression()), !dbg !1760
  %3 = and i32 %2, -4194305, !dbg !1769
  call void @llvm.dbg.value(metadata i32 %3, metadata !1759, metadata !DIExpression()), !dbg !1760
  store volatile i32 %3, i32* inttoptr (i32 -2096693240 to i32*), align 8, !dbg !1770
  tail call void @sfc_delay_ms(i32 noundef 1) #16, !dbg !1771
  %4 = load volatile i32, i32* inttoptr (i32 -2096693240 to i32*), align 8, !dbg !1772
  call void @llvm.dbg.value(metadata i32 %4, metadata !1759, metadata !DIExpression()), !dbg !1760
  %5 = or i32 %4, 4194304, !dbg !1773
  call void @llvm.dbg.value(metadata i32 %5, metadata !1759, metadata !DIExpression()), !dbg !1760
  store volatile i32 %5, i32* inttoptr (i32 -2096693240 to i32*), align 8, !dbg !1774
  tail call void @sfc_delay_ms(i32 noundef 1) #16, !dbg !1775
  %6 = load volatile i32, i32* inttoptr (i32 -2096693240 to i32*), align 8, !dbg !1776
  call void @llvm.dbg.value(metadata i32 %6, metadata !1759, metadata !DIExpression()), !dbg !1760
  %7 = and i32 %6, -4194305, !dbg !1777
  call void @llvm.dbg.value(metadata i32 %7, metadata !1759, metadata !DIExpression()), !dbg !1760
  store volatile i32 %7, i32* inttoptr (i32 -2096693240 to i32*), align 8, !dbg !1778
  tail call void @sfc_delay_ms(i32 noundef 1) #16, !dbg !1779
  %8 = load volatile i32, i32* inttoptr (i32 -2096693240 to i32*), align 8, !dbg !1780
  call void @llvm.dbg.value(metadata i32 %8, metadata !1759, metadata !DIExpression()), !dbg !1760
  %9 = or i32 %8, 4194304, !dbg !1781
  call void @llvm.dbg.value(metadata i32 %9, metadata !1759, metadata !DIExpression()), !dbg !1760
  store volatile i32 %9, i32* inttoptr (i32 -2096693240 to i32*), align 8, !dbg !1782
  tail call void @sfc_delay_ms(i32 noundef 1) #16, !dbg !1783
  %10 = icmp eq i32 %0, 0, !dbg !1784
  br i1 %10, label %12, label %11, !dbg !1786

11:                                               ; preds = %1
  store i32 1, i32* @g_sfc_security_enable, align 4, !dbg !1787
  store volatile i32 268435456, i32* inttoptr (i32 -2096660480 to i32*), align 32768, !dbg !1789
  store volatile i32 268435456, i32* inttoptr (i32 -2096660476 to i32*), align 4, !dbg !1790
  store volatile i32 3, i32* inttoptr (i32 -2096660472 to i32*), align 8, !dbg !1791
  store volatile i32 0, i32* inttoptr (i32 -2096660472 to i32*), align 8, !dbg !1792
  store volatile i32 135, i32* inttoptr (i32 -2096660468 to i32*), align 4, !dbg !1793
  store volatile i32 0, i32* inttoptr (i32 -2096660468 to i32*), align 4, !dbg !1794
  store volatile i32 69632, i32* inttoptr (i32 -2096660460 to i32*), align 4, !dbg !1795
  br label %12, !dbg !1796

12:                                               ; preds = %11, %1
  ret void, !dbg !1797
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @sfc_GetDirectMode() local_unnamed_addr #7 section ".ramTEXT" !dbg !1798 {
  %1 = load volatile i32, i32* inttoptr (i32 -2096693244 to i32*), align 4, !dbg !1802
  call void @llvm.dbg.value(metadata i32 %1, metadata !1800, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1803
  %2 = load volatile i32, i32* inttoptr (i32 -2096693244 to i32*), align 4, !dbg !1804
  %3 = lshr i32 %2, 4, !dbg !1805
  %4 = and i32 %3, 7, !dbg !1805
  call void @llvm.dbg.value(metadata i32 %4, metadata !1801, metadata !DIExpression()), !dbg !1803
  %5 = icmp ne i32 %4, 7, !dbg !1806
  %6 = and i32 %1, 1
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %5, i1 %7, i1 false, !dbg !1808
  call void @llvm.dbg.value(metadata i32 %6, metadata !1800, metadata !DIExpression()), !dbg !1803
  %9 = icmp ult i32 %4, 2, !dbg !1808
  %10 = zext i1 %9 to i32, !dbg !1808
  %11 = select i1 %8, i32 %10, i32 3, !dbg !1808
  ret i32 %11, !dbg !1809
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @sfc_direct_read_setup(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 section ".ramTEXT" !dbg !1810 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1814, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i32 %1, metadata !1815, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i32 0, metadata !1816, metadata !DIExpression()), !dbg !1817
  %3 = add i32 %1, -1, !dbg !1818
  %4 = icmp ult i32 %3, 3, !dbg !1818
  br i1 %4, label %5, label %8, !dbg !1818

5:                                                ; preds = %2
  %6 = getelementptr inbounds [3 x i32], [3 x i32]* @switch.table.sfc_direct_read_setup, i32 0, i32 %3, !dbg !1818
  %7 = load i32, i32* %6, align 4, !dbg !1818
  br label %8, !dbg !1818

8:                                                ; preds = %5, %2
  %9 = phi i32 [ 0, %2 ], [ %7, %5 ], !dbg !1817
  call void @llvm.dbg.value(metadata i32 %9, metadata !1816, metadata !DIExpression()), !dbg !1817
  %10 = or i32 %9, %0, !dbg !1819
  call void @llvm.dbg.value(metadata i32 %10, metadata !1816, metadata !DIExpression()), !dbg !1817
  store volatile i32 %10, i32* inttoptr (i32 -2096693244 to i32*), align 4, !dbg !1820
  ret void, !dbg !1821
}

; Function Attrs: noinline nounwind optsize
define dso_local void @sfc_Command_List(i8* noundef readonly %0) local_unnamed_addr #0 section ".ramTEXT" !dbg !1822 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1826, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i32 0, metadata !1827, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i32 0, metadata !1829, metadata !DIExpression()), !dbg !1830
  %2 = icmp eq i8* %0, null, !dbg !1831
  br i1 %2, label %25, label %3, !dbg !1833

3:                                                ; preds = %1
  %4 = load volatile i32, i32* inttoptr (i32 -2096693248 to i32*), align 65536, !dbg !1834
  call void @llvm.dbg.value(metadata i32 %4, metadata !1828, metadata !DIExpression()), !dbg !1830
  br label %5, !dbg !1835

5:                                                ; preds = %12, %3
  %6 = phi i32 [ 0, %3 ], [ %23, %12 ], !dbg !1830
  %7 = phi i32 [ 0, %3 ], [ %13, %12 ], !dbg !1830
  call void @llvm.dbg.value(metadata i32 %7, metadata !1829, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i32 %6, metadata !1827, metadata !DIExpression()), !dbg !1830
  %8 = getelementptr inbounds i8, i8* %0, i32 %6, !dbg !1836
  %9 = load i8, i8* %8, align 1, !dbg !1836
  switch i8 %9, label %11 [
    i8 1, label %12
    i8 2, label %12
    i8 3, label %10
  ], !dbg !1838

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i32 1, metadata !1829, metadata !DIExpression()), !dbg !1830
  br label %12, !dbg !1839

11:                                               ; preds = %5
  store volatile i32 %4, i32* inttoptr (i32 -2096693248 to i32*), align 65536, !dbg !1841
  br label %25, !dbg !1842

12:                                               ; preds = %5, %5, %10
  %13 = phi i32 [ 1, %10 ], [ %7, %5 ], [ %7, %5 ], !dbg !1830
  call void @llvm.dbg.value(metadata i32 %13, metadata !1829, metadata !DIExpression()), !dbg !1830
  %14 = add i32 %6, 2, !dbg !1843
  %15 = getelementptr inbounds i8, i8* %0, i32 %14, !dbg !1844
  %16 = add i32 %6, 1, !dbg !1845
  %17 = getelementptr inbounds i8, i8* %0, i32 %16, !dbg !1846
  %18 = load i8, i8* %17, align 1, !dbg !1846
  %19 = zext i8 %18 to i32, !dbg !1846
  %20 = tail call i32 @sfc_transfer(i8* noundef nonnull %15, i32 noundef %19, i8* noundef null, i32 noundef 0, i32 noundef %13) #16, !dbg !1847
  %21 = load i8, i8* %17, align 1, !dbg !1848
  %22 = zext i8 %21 to i32, !dbg !1848
  %23 = add i32 %14, %22, !dbg !1849
  call void @llvm.dbg.value(metadata i32 %23, metadata !1827, metadata !DIExpression()), !dbg !1830
  %24 = tail call i32 @flash_wait_ready(i32 noundef 1) #14, !dbg !1850
  br label %5, !dbg !1835, !llvm.loop !1851

25:                                               ; preds = %1, %11
  ret void, !dbg !1853
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @sfc_transfer(i8* nocapture noundef readonly %0, i32 noundef %1, i8* nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 section ".ramTEXT" !dbg !1854 {
  %6 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1859, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i32 %1, metadata !1860, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %2, metadata !1861, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i32 %3, metadata !1862, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i32 %4, metadata !1863, metadata !DIExpression()), !dbg !1870
  %7 = bitcast i32* %6 to i8*, !dbg !1871
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #13, !dbg !1871
  %8 = add i32 %3, %1, !dbg !1872
  %9 = icmp ugt i32 %8, 160, !dbg !1874
  br i1 %9, label %59, label %10, !dbg !1875

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* inttoptr (i32 -2096691200 to i8*), metadata !1867, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i32 0, metadata !1865, metadata !DIExpression()), !dbg !1870
  %11 = icmp eq i32 %1, 0, !dbg !1876
  br i1 %11, label %41, label %12, !dbg !1879

12:                                               ; preds = %10, %38
  %13 = phi i8* [ %39, %38 ], [ inttoptr (i32 -2096691200 to i8*), %10 ]
  %14 = phi i32 [ %31, %38 ], [ 0, %10 ]
  call void @llvm.dbg.value(metadata i8* %13, metadata !1867, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i32 %14, metadata !1865, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i32 0, metadata !1866, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i32 0, metadata !1864, metadata !DIExpression()), !dbg !1870
  store i32 0, i32* %6, align 4, !dbg !1880
  call void @llvm.dbg.value(metadata i32 0, metadata !1866, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i32 %14, metadata !1865, metadata !DIExpression()), !dbg !1870
  %15 = icmp ult i32 %14, %1, !dbg !1883
  br i1 %15, label %16, label %29, !dbg !1885

16:                                               ; preds = %12, %16
  %17 = phi i32 [ %23, %16 ], [ 0, %12 ]
  %18 = phi i32 [ %22, %16 ], [ %14, %12 ]
  call void @llvm.dbg.value(metadata i32 %17, metadata !1866, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i32 %18, metadata !1865, metadata !DIExpression()), !dbg !1870
  %19 = getelementptr inbounds i8, i8* %0, i32 %18, !dbg !1886
  %20 = load i8, i8* %19, align 1, !dbg !1886
  %21 = getelementptr inbounds i8, i8* %7, i32 %17, !dbg !1888
  store i8 %20, i8* %21, align 1, !dbg !1889
  %22 = add nuw i32 %18, 1, !dbg !1890
  call void @llvm.dbg.value(metadata i32 %22, metadata !1865, metadata !DIExpression()), !dbg !1870
  %23 = add nuw nsw i32 %17, 1, !dbg !1891
  call void @llvm.dbg.value(metadata i32 %23, metadata !1866, metadata !DIExpression()), !dbg !1870
  %24 = icmp ult i32 %22, %1, !dbg !1883
  %25 = icmp ult i32 %17, 3, !dbg !1892
  %26 = select i1 %24, i1 %25, i1 false, !dbg !1892
  br i1 %26, label %16, label %27, !dbg !1885, !llvm.loop !1893

27:                                               ; preds = %16
  %28 = load i32, i32* %6, align 4, !dbg !1895
  br label %29, !dbg !1895

29:                                               ; preds = %27, %12
  %30 = phi i32 [ 0, %12 ], [ %28, %27 ], !dbg !1895
  %31 = phi i32 [ %14, %12 ], [ %22, %27 ], !dbg !1896
  call void @llvm.dbg.value(metadata i32 %30, metadata !1864, metadata !DIExpression()), !dbg !1870
  %32 = bitcast i8* %13 to i32*, !dbg !1895
  store volatile i32 %30, i32* %32, align 4, !dbg !1895
  %33 = icmp eq i32 %31, 4, !dbg !1897
  %34 = load i32, i32* @g_sfc_security_enable, align 4
  %35 = icmp ne i32 %34, 0
  %36 = select i1 %33, i1 %35, i1 false, !dbg !1899
  br i1 %36, label %37, label %38, !dbg !1899

37:                                               ; preds = %29
  store volatile i32 64, i32* inttoptr (i32 -2096660472 to i32*), align 8, !dbg !1900
  store volatile i32 256, i32* inttoptr (i32 -2096660468 to i32*), align 4, !dbg !1902
  br label %38, !dbg !1903

38:                                               ; preds = %29, %37
  %39 = getelementptr inbounds i8, i8* %13, i32 4, !dbg !1904
  call void @llvm.dbg.value(metadata i8* %39, metadata !1867, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i32 %31, metadata !1865, metadata !DIExpression()), !dbg !1870
  %40 = icmp ult i32 %31, %1, !dbg !1876
  br i1 %40, label %12, label %41, !dbg !1879, !llvm.loop !1905

41:                                               ; preds = %38, %10
  %42 = tail call i32 @save_and_set_interrupt_mask() #14, !dbg !1907
  call void @llvm.dbg.value(metadata i32 %42, metadata !1869, metadata !DIExpression()), !dbg !1870
  %43 = load i32, i32* @g_sfc_security_enable, align 4, !dbg !1908
  %44 = icmp eq i32 %43, 0, !dbg !1908
  br i1 %44, label %46, label %45, !dbg !1910

45:                                               ; preds = %41
  store volatile i32 0, i32* inttoptr (i32 -2096660472 to i32*), align 8, !dbg !1911
  store volatile i32 0, i32* inttoptr (i32 -2096660468 to i32*), align 4, !dbg !1913
  br label %46, !dbg !1914

46:                                               ; preds = %45, %41
  store volatile i32 %1, i32* inttoptr (i32 -2096693232 to i32*), align 16, !dbg !1915
  store volatile i32 %3, i32* inttoptr (i32 -2096693228 to i32*), align 4, !dbg !1916
  tail call fastcc void @sfc_MacEnable(i32 noundef %4) #16, !dbg !1917
  tail call fastcc void @sfc_MacWaitReady() #16, !dbg !1918
  tail call void @restore_interrupt_mask(i32 noundef %42) #14, !dbg !1919
  call void @llvm.dbg.value(metadata !DIArgList(i8* inttoptr (i32 -2096691200 to i8*), i32 %1), metadata !1867, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %2, metadata !1861, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i32 0, metadata !1865, metadata !DIExpression()), !dbg !1870
  %47 = icmp eq i32 %3, 0, !dbg !1920
  br i1 %47, label %59, label %48, !dbg !1923

48:                                               ; preds = %46
  %49 = getelementptr inbounds i8, i8* inttoptr (i32 -2096691200 to i8*), i32 %1, !dbg !1924
  call void @llvm.dbg.value(metadata i8* %49, metadata !1867, metadata !DIExpression()), !dbg !1870
  br label %50, !dbg !1923

50:                                               ; preds = %48, %50
  %51 = phi i8* [ %56, %50 ], [ %2, %48 ]
  %52 = phi i8* [ %57, %50 ], [ %49, %48 ]
  %53 = phi i32 [ %55, %50 ], [ 0, %48 ]
  call void @llvm.dbg.value(metadata i8* %51, metadata !1861, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %52, metadata !1867, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i32 %53, metadata !1865, metadata !DIExpression()), !dbg !1870
  %54 = load volatile i8, i8* %52, align 1, !dbg !1925
  store i8 %54, i8* %51, align 1, !dbg !1927
  %55 = add nuw i32 %53, 1, !dbg !1928
  call void @llvm.dbg.value(metadata i32 %55, metadata !1865, metadata !DIExpression()), !dbg !1870
  %56 = getelementptr inbounds i8, i8* %51, i32 1, !dbg !1929
  call void @llvm.dbg.value(metadata i8* %56, metadata !1861, metadata !DIExpression()), !dbg !1870
  %57 = getelementptr inbounds i8, i8* %52, i32 1, !dbg !1930
  call void @llvm.dbg.value(metadata i8* %57, metadata !1867, metadata !DIExpression()), !dbg !1870
  %58 = icmp eq i32 %55, %3, !dbg !1920
  br i1 %58, label %59, label %50, !dbg !1923, !llvm.loop !1931

59:                                               ; preds = %50, %46, %5
  %60 = phi i32 [ -1, %5 ], [ 0, %46 ], [ %3, %50 ], !dbg !1870
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #13, !dbg !1933
  ret i32 %60, !dbg !1933
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @sfc_MacEnable(i32 noundef %0) unnamed_addr #5 section ".ramTEXT" !dbg !1934 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1936, metadata !DIExpression()), !dbg !1938
  %2 = load volatile i32, i32* inttoptr (i32 -2096693248 to i32*), align 65536, !dbg !1939
  call void @llvm.dbg.value(metadata i32 %2, metadata !1937, metadata !DIExpression()), !dbg !1938
  %3 = load volatile i32, i32* inttoptr (i32 -2096693244 to i32*), align 4, !dbg !1940
  %4 = and i32 %3, 1, !dbg !1940
  %5 = or i32 %4, %0, !dbg !1942
  %6 = icmp eq i32 %5, 0, !dbg !1942
  %7 = or i32 %2, 16
  %8 = select i1 %6, i32 %2, i32 %7, !dbg !1942
  call void @llvm.dbg.value(metadata i32 %8, metadata !1937, metadata !DIExpression()), !dbg !1938
  %9 = or i32 %8, 8, !dbg !1943
  call void @llvm.dbg.value(metadata i32 %9, metadata !1937, metadata !DIExpression()), !dbg !1938
  store volatile i32 %9, i32* inttoptr (i32 -2096693248 to i32*), align 65536, !dbg !1944
  ret void, !dbg !1945
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @sfc_MacWaitReady() unnamed_addr #5 section ".ramTEXT" !dbg !1946 {
  tail call fastcc void @sfc_MacTrigger() #16, !dbg !1947
  tail call fastcc void @sfc_MacLeave() #16, !dbg !1948
  ret void, !dbg !1949
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @sfc_MacTrigger() unnamed_addr #5 section ".ramTEXT" !dbg !1950 {
  call void @llvm.dbg.value(metadata i32 0, metadata !1954, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i32 0, metadata !1955, metadata !DIExpression()), !dbg !1956
  %1 = load volatile i32, i32* inttoptr (i32 -2096693248 to i32*), align 65536, !dbg !1957
  call void @llvm.dbg.value(metadata i32 %1, metadata !1954, metadata !DIExpression()), !dbg !1956
  %2 = or i32 %1, 12, !dbg !1958
  call void @llvm.dbg.value(metadata i32 %2, metadata !1954, metadata !DIExpression()), !dbg !1956
  store volatile i32 %2, i32* inttoptr (i32 -2096693248 to i32*), align 65536, !dbg !1959
  br label %3, !dbg !1960

3:                                                ; preds = %3, %0
  %4 = load volatile i32, i32* inttoptr (i32 -2096693248 to i32*), align 65536, !dbg !1961
  %5 = and i32 %4, 2, !dbg !1962
  %6 = icmp eq i32 %5, 0, !dbg !1963
  br i1 %6, label %3, label %7, !dbg !1960, !llvm.loop !1964

7:                                                ; preds = %3, %7
  %8 = load volatile i32, i32* inttoptr (i32 -2096693248 to i32*), align 65536, !dbg !1966
  %9 = and i32 %8, 1, !dbg !1967
  %10 = icmp eq i32 %9, 0, !dbg !1968
  br i1 %10, label %11, label %7, !dbg !1968, !llvm.loop !1969

11:                                               ; preds = %7
  ret void, !dbg !1971
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @sfc_MacLeave() unnamed_addr #5 section ".ramTEXT" !dbg !1972 {
  %1 = load volatile i32, i32* inttoptr (i32 -2096693248 to i32*), align 65536, !dbg !1975
  call void @llvm.dbg.value(metadata i32 %1, metadata !1974, metadata !DIExpression()), !dbg !1976
  %2 = and i32 %1, -268435477, !dbg !1977
  call void @llvm.dbg.value(metadata i32 %2, metadata !1974, metadata !DIExpression()), !dbg !1976
  store volatile i32 %2, i32* inttoptr (i32 -2096693248 to i32*), align 65536, !dbg !1978
  %3 = load volatile i32, i32* inttoptr (i32 -2096693248 to i32*), align 65536, !dbg !1979
  call void @llvm.dbg.value(metadata i32 %3, metadata !1974, metadata !DIExpression()), !dbg !1976
  %4 = and i32 %3, -9, !dbg !1980
  call void @llvm.dbg.value(metadata i32 %4, metadata !1974, metadata !DIExpression()), !dbg !1976
  store volatile i32 %4, i32* inttoptr (i32 -2096693248 to i32*), align 65536, !dbg !1981
  ret void, !dbg !1982
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @sfc_clear_gpram() local_unnamed_addr #5 section ".ramTEXT" !dbg !1983 {
  call void @llvm.dbg.value(metadata i8* inttoptr (i32 -2096691200 to i8*), metadata !1986, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata i32 0, metadata !1985, metadata !DIExpression()), !dbg !1987
  br label %1, !dbg !1988

1:                                                ; preds = %0, %1
  %2 = phi i8* [ inttoptr (i32 -2096691200 to i8*), %0 ], [ %5, %1 ]
  %3 = phi i32 [ 0, %0 ], [ %6, %1 ]
  call void @llvm.dbg.value(metadata i8* %2, metadata !1986, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata i32 %3, metadata !1985, metadata !DIExpression()), !dbg !1987
  %4 = bitcast i8* %2 to i32*, !dbg !1990
  store volatile i32 0, i32* %4, align 4, !dbg !1990
  %5 = getelementptr inbounds i8, i8* %2, i32 4, !dbg !1993
  call void @llvm.dbg.value(metadata i8* %5, metadata !1986, metadata !DIExpression()), !dbg !1987
  %6 = add nuw nsw i32 %3, 1, !dbg !1994
  call void @llvm.dbg.value(metadata i32 %6, metadata !1985, metadata !DIExpression()), !dbg !1987
  %7 = icmp eq i32 %6, 40, !dbg !1995
  br i1 %7, label %8, label %1, !dbg !1988, !llvm.loop !1996

8:                                                ; preds = %1
  ret void, !dbg !1998
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @sfc_read(i8* nocapture noundef readonly %0, i32 noundef %1, i8* nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #0 section ".ramTEXT" !dbg !1999 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2003, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i32 %1, metadata !2004, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i8* %2, metadata !2005, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i32 %3, metadata !2006, metadata !DIExpression()), !dbg !2007
  %5 = tail call i32 @sfc_transfer(i8* noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i32 noundef 0) #16, !dbg !2008
  ret i32 %5, !dbg !2009
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @sfc_write(i8* noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3) local_unnamed_addr #0 section ".ramTEXT" !dbg !2010 {
  %5 = alloca [160 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !2014, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i32 %1, metadata !2015, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8* %2, metadata !2016, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i32 %3, metadata !2017, metadata !DIExpression()), !dbg !2023
  %6 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i32 0, i32 0, !dbg !2024
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %6) #13, !dbg !2024
  call void @llvm.dbg.declare(metadata [160 x i8]* %5, metadata !2018, metadata !DIExpression()), !dbg !2025
  %7 = add i32 %3, %1, !dbg !2026
  call void @llvm.dbg.value(metadata i32 %7, metadata !2022, metadata !DIExpression()), !dbg !2023
  %8 = icmp ugt i32 %7, 159, !dbg !2027
  br i1 %8, label %9, label %12, !dbg !2029

9:                                                ; preds = %4
  %10 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1.10, i32 0, i32 0), i32 noundef 496) #14, !dbg !2030
  br label %11, !dbg !2030

11:                                               ; preds = %11, %9
  br label %11, !dbg !2030, !llvm.loop !2034

12:                                               ; preds = %4
  %13 = call i8* @memcpy(i8* noundef nonnull %6, i8* noundef %0, i32 noundef %1) #14, !dbg !2035
  %14 = icmp ne i8* %2, null, !dbg !2036
  %15 = icmp ne i32 %3, 0
  %16 = and i1 %14, %15, !dbg !2038
  br i1 %16, label %17, label %20, !dbg !2038

17:                                               ; preds = %12
  %18 = getelementptr inbounds [160 x i8], [160 x i8]* %5, i32 0, i32 %1, !dbg !2039
  %19 = call i8* @memcpy(i8* noundef nonnull %18, i8* noundef nonnull %2, i32 noundef %3) #14, !dbg !2041
  br label %20, !dbg !2042

20:                                               ; preds = %17, %12
  %21 = call i32 @sfc_transfer(i8* noundef nonnull %6, i32 noundef %7, i8* noundef null, i32 noundef 0, i32 noundef 0) #16, !dbg !2043
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %6) #13, !dbg !2044
  ret i32 %21, !dbg !2045
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @sfc_security_write_crc(i8* noundef %0, i32 noundef %1) local_unnamed_addr #0 section ".ramTEXT" !dbg !2046 {
  %3 = alloca [160 x i8], align 1
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2050, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i32 %1, metadata !2051, metadata !DIExpression()), !dbg !2055
  %5 = getelementptr inbounds [160 x i8], [160 x i8]* %3, i32 0, i32 0, !dbg !2056
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %5) #13, !dbg !2056
  call void @llvm.dbg.declare(metadata [160 x i8]* %3, metadata !2052, metadata !DIExpression()), !dbg !2057
  %6 = bitcast i32* %4 to i8*, !dbg !2058
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #13, !dbg !2058
  %7 = load volatile i32, i32* inttoptr (i32 -2096660420 to i32*), align 4, !dbg !2059
  call void @llvm.dbg.value(metadata i32 %7, metadata !2053, metadata !DIExpression()), !dbg !2055
  store i32 %7, i32* %4, align 4, !dbg !2060
  %8 = add i32 %1, 4, !dbg !2061
  call void @llvm.dbg.value(metadata i32 %8, metadata !2054, metadata !DIExpression()), !dbg !2055
  %9 = call i8* @memcpy(i8* noundef nonnull %5, i8* noundef %0, i32 noundef %1) #14, !dbg !2062
  %10 = getelementptr inbounds [160 x i8], [160 x i8]* %3, i32 0, i32 %1, !dbg !2063
  call void @llvm.dbg.value(metadata i32* %4, metadata !2053, metadata !DIExpression(DW_OP_deref)), !dbg !2055
  %11 = call i8* @memcpy(i8* noundef nonnull %10, i8* noundef nonnull %6, i32 noundef 4) #14, !dbg !2064
  %12 = call i32 @sfc_transfer(i8* noundef nonnull %5, i32 noundef %8, i8* noundef null, i32 noundef 0, i32 noundef 0) #16, !dbg !2065
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #13, !dbg !2066
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %5) #13, !dbg !2066
  ret i32 %12, !dbg !2067
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @__sfc_write(i8* noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 section ".ramTEXT" !dbg !2068 {
  %6 = alloca [160 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !2070, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i32 %1, metadata !2071, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i8* %2, metadata !2072, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i32 %3, metadata !2073, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i32 %4, metadata !2074, metadata !DIExpression()), !dbg !2077
  %7 = getelementptr inbounds [160 x i8], [160 x i8]* %6, i32 0, i32 0, !dbg !2078
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %7) #13, !dbg !2078
  call void @llvm.dbg.declare(metadata [160 x i8]* %6, metadata !2075, metadata !DIExpression()), !dbg !2079
  %8 = add i32 %3, %1, !dbg !2080
  call void @llvm.dbg.value(metadata i32 %8, metadata !2076, metadata !DIExpression()), !dbg !2077
  %9 = icmp ugt i32 %8, 160, !dbg !2081
  br i1 %9, label %10, label %13, !dbg !2083

10:                                               ; preds = %5
  %11 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0), i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1.10, i32 0, i32 0), i32 noundef 544) #14, !dbg !2084
  br label %12, !dbg !2084

12:                                               ; preds = %12, %10
  br label %12, !dbg !2084, !llvm.loop !2088

13:                                               ; preds = %5
  %14 = call i8* @memcpy(i8* noundef nonnull %7, i8* noundef %0, i32 noundef %1) #14, !dbg !2089
  %15 = icmp ne i8* %2, null, !dbg !2090
  %16 = icmp ne i32 %3, 0
  %17 = and i1 %15, %16, !dbg !2092
  br i1 %17, label %18, label %21, !dbg !2092

18:                                               ; preds = %13
  %19 = getelementptr inbounds [160 x i8], [160 x i8]* %6, i32 0, i32 %1, !dbg !2093
  %20 = call i8* @memcpy(i8* noundef nonnull %19, i8* noundef nonnull %2, i32 noundef %3) #14, !dbg !2095
  br label %21, !dbg !2096

21:                                               ; preds = %18, %13
  %22 = call i32 @sfc_transfer(i8* noundef nonnull %7, i32 noundef %8, i8* noundef null, i32 noundef 0, i32 noundef 0) #16, !dbg !2097
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %7) #13, !dbg !2098
  ret i32 %22, !dbg !2099
}

; Function Attrs: noinline nounwind optsize
define dso_local void @flash_suspend_Winbond() local_unnamed_addr #0 section ".ramTEXT" !dbg !2100 {
  tail call void @sfc_Command_List(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @cmdlist_suspend_winbond, i32 0, i32 0)) #14, !dbg !2101
  ret void, !dbg !2102
}

; Function Attrs: noinline nounwind optsize
define dso_local void @flash_resume_Winbond() local_unnamed_addr #0 section ".ramTEXT" !dbg !2103 {
  tail call void @sfc_Command_List(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @cmdlist_resume_winbond, i32 0, i32 0)) #14, !dbg !2104
  ret void, !dbg !2105
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @flash_check_device() local_unnamed_addr #0 section ".ramTEXT" !dbg !2106 {
  %1 = alloca [5 x i8], align 1
  %2 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i32 0, i32 0, !dbg !2113
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %2) #13, !dbg !2113
  call void @llvm.dbg.declare(metadata [5 x i8]* %1, metadata !2110, metadata !DIExpression()), !dbg !2114
  %3 = call i32 @flash_read_jedec_id(i8* noundef nonnull %2, i32 noundef 3) #16, !dbg !2115
  %4 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i32 0, i32 1, !dbg !2116
  %5 = load i8, i8* %4, align 1, !dbg !2116
  %6 = zext i8 %5 to i32, !dbg !2117
  %7 = shl nuw i32 %6, 24, !dbg !2118
  %8 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i32 0, i32 2, !dbg !2119
  %9 = load i8, i8* %8, align 1, !dbg !2119
  %10 = zext i8 %9 to i32, !dbg !2120
  %11 = shl nuw nsw i32 %10, 16, !dbg !2121
  %12 = or i32 %11, %7, !dbg !2122
  call void @llvm.dbg.value(metadata i32 %12, metadata !2109, metadata !DIExpression()), !dbg !2123
  %13 = call i32 @sfc_GetDirectMode() #14, !dbg !2124
  store i32 %13, i32* @gucFlashSFCMode, align 4, !dbg !2125
  call void @llvm.dbg.value(metadata i32 1, metadata !2108, metadata !DIExpression()), !dbg !2123
  %14 = load i8, i8* %2, align 1
  call void @llvm.dbg.value(metadata i32 1, metadata !2108, metadata !DIExpression()), !dbg !2123
  br label %15, !dbg !2126

15:                                               ; preds = %0, %44
  %16 = phi i32 [ 1, %0 ], [ %45, %44 ]
  call void @llvm.dbg.value(metadata i32 %16, metadata !2108, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata !DIArgList([13 x %struct.flash_info_t]* @chips_data, i32 %16), metadata !2112, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 24, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2123
  %17 = getelementptr inbounds [13 x %struct.flash_info_t], [13 x %struct.flash_info_t]* @chips_data, i32 0, i32 %16, i32 1, !dbg !2128
  %18 = load i8, i8* %17, align 4, !dbg !2128
  %19 = icmp eq i8 %18, %14, !dbg !2132
  br i1 %19, label %20, label %44, !dbg !2133

20:                                               ; preds = %15
  %21 = getelementptr inbounds [13 x %struct.flash_info_t], [13 x %struct.flash_info_t]* @chips_data, i32 0, i32 %16, i32 2, !dbg !2134
  %22 = load i32, i32* %21, align 4, !dbg !2134
  %23 = icmp eq i32 %22, %12, !dbg !2135
  br i1 %23, label %24, label %44, !dbg !2136

24:                                               ; preds = %20
  %25 = getelementptr inbounds [13 x %struct.flash_info_t], [13 x %struct.flash_info_t]* @chips_data, i32 0, i32 %16, !dbg !2137
  store %struct.flash_info_t* %25, %struct.flash_info_t** @spi_chip_info, align 4, !dbg !2138
  %26 = add nsw i32 %16, -4, !dbg !2140
  %27 = icmp ult i32 %26, 5, !dbg !2140
  br i1 %27, label %42, label %28, !dbg !2142

28:                                               ; preds = %24
  %29 = add nsw i32 %16, -1, !dbg !2143
  %30 = icmp ult i32 %29, 3, !dbg !2143
  br i1 %30, label %42, label %31, !dbg !2145

31:                                               ; preds = %28
  %32 = add nsw i32 %16, -9, !dbg !2146
  %33 = icmp ult i32 %32, 3, !dbg !2146
  br i1 %33, label %34, label %40, !dbg !2148

34:                                               ; preds = %31
  %35 = and i32 %16, 2147483639, !dbg !2149
  %36 = icmp eq i32 %35, 1, !dbg !2149
  %37 = icmp eq i32 %16, 11
  %38 = or i1 %37, %36, !dbg !2152
  %39 = select i1 %38, i32 49, i32 1, !dbg !2152
  store i32 %39, i32* @gd_write_sr2_1, align 4, !dbg !2153
  br label %42, !dbg !2154

40:                                               ; preds = %31
  %41 = icmp eq i32 %16, 12, !dbg !2155
  br i1 %41, label %42, label %67, !dbg !2157

42:                                               ; preds = %40, %28, %24, %34
  %43 = phi i32 [ 200, %34 ], [ 194, %24 ], [ 239, %28 ], [ 32, %40 ]
  store i32 %43, i32* @support_flash_id, align 4, !dbg !2158
  br label %67, !dbg !2159

44:                                               ; preds = %15, %20
  %45 = add nuw nsw i32 %16, 1, !dbg !2160
  call void @llvm.dbg.value(metadata i32 %45, metadata !2108, metadata !DIExpression()), !dbg !2123
  %46 = icmp eq i32 %45, 13, !dbg !2161
  br i1 %46, label %47, label %15, !dbg !2126, !llvm.loop !2162

47:                                               ; preds = %44
  store %struct.flash_info_t* getelementptr inbounds ([13 x %struct.flash_info_t], [13 x %struct.flash_info_t]* @chips_data, i32 0, i32 1), %struct.flash_info_t** @spi_chip_info, align 4, !dbg !2164
  %48 = load i32, i32* @support_flash_id, align 4, !dbg !2165
  %49 = icmp eq i32 %48, 255, !dbg !2167
  br i1 %49, label %50, label %67, !dbg !2168

50:                                               ; preds = %47
  %51 = call %struct.flash_info_t* @customer_flash_register() #14, !dbg !2169
  store %struct.flash_info_t* %51, %struct.flash_info_t** @spi_chip_info, align 4, !dbg !2171
  call void @llvm.dbg.value(metadata %struct.flash_info_t* %51, metadata !2112, metadata !DIExpression()), !dbg !2123
  %52 = getelementptr inbounds %struct.flash_info_t, %struct.flash_info_t* %51, i32 0, i32 1, !dbg !2172
  %53 = load i8, i8* %52, align 4, !dbg !2172
  %54 = load i8, i8* %2, align 1, !dbg !2174
  %55 = icmp eq i8 %53, %54, !dbg !2175
  br i1 %55, label %56, label %60, !dbg !2176

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata %struct.flash_info_t* %51, metadata !2112, metadata !DIExpression()), !dbg !2123
  %57 = getelementptr inbounds %struct.flash_info_t, %struct.flash_info_t* %51, i32 0, i32 2, !dbg !2177
  %58 = load i32, i32* %57, align 4, !dbg !2177
  %59 = icmp eq i32 %58, %12, !dbg !2178
  br i1 %59, label %67, label %60, !dbg !2179

60:                                               ; preds = %56, %50
  call void (i8*, i32, i8*, ...) @log_hal_info_internal(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.flash_check_device, i32 0, i32 0), i32 noundef 322, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i32 0, i32 0)) #14, !dbg !2180
  %61 = load i8, i8* %2, align 1, !dbg !2182
  %62 = zext i8 %61 to i32, !dbg !2182
  %63 = load i8, i8* %4, align 1, !dbg !2182
  %64 = zext i8 %63 to i32, !dbg !2182
  %65 = load i8, i8* %8, align 1, !dbg !2182
  %66 = zext i8 %65 to i32, !dbg !2182
  call void (i8*, i32, i8*, ...) @log_hal_info_internal(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.flash_check_device, i32 0, i32 0), i32 noundef 323, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1.22, i32 0, i32 0), i32 noundef %62, i32 noundef %64, i32 noundef %66, i32 noundef %12) #14, !dbg !2182
  br label %67, !dbg !2183

67:                                               ; preds = %47, %60, %56, %40, %42
  %68 = phi i32 [ 0, %42 ], [ 0, %40 ], [ 0, %56 ], [ -1, %60 ], [ -1, %47 ]
  %69 = phi i32 [ 1, %42 ], [ 1, %40 ], [ 1, %56 ], [ 0, %60 ], [ 0, %47 ], !dbg !2123
  store i32 %68, i32* @sf_drvier_status, align 4, !dbg !2123
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %2) #13, !dbg !2184
  ret i32 %69, !dbg !2184
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @flash_read_jedec_id(i8* noundef %0, i32 noundef %1) local_unnamed_addr #0 section ".ramTEXT" !dbg !2185 {
  %3 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !2189, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i32 %1, metadata !2190, metadata !DIExpression()), !dbg !2193
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #13, !dbg !2194
  call void @llvm.dbg.value(metadata i8 -97, metadata !2191, metadata !DIExpression()), !dbg !2193
  store i8 -97, i8* %3, align 1, !dbg !2195
  call void @llvm.dbg.value(metadata i8* %3, metadata !2191, metadata !DIExpression(DW_OP_deref)), !dbg !2193
  %4 = call i32 @sfc_read(i8* noundef nonnull %3, i32 noundef 1, i8* noundef %0, i32 noundef %1) #14, !dbg !2196
  call void @llvm.dbg.value(metadata i32 %4, metadata !2192, metadata !DIExpression()), !dbg !2193
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #13, !dbg !2197
  ret i32 %4, !dbg !2198
}

; Function Attrs: noinline nounwind optsize
define dso_local void @flash_switch_mode(i32 noundef %0) local_unnamed_addr #0 section ".ramTEXT" !dbg !2199 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2203, metadata !DIExpression()), !dbg !2204
  %2 = tail call %struct.flash_info_t* @customer_flash_register() #14, !dbg !2205
  %3 = icmp eq %struct.flash_info_t* %2, null, !dbg !2207
  br i1 %3, label %5, label %4, !dbg !2208

4:                                                ; preds = %1
  store i32 255, i32* @support_flash_id, align 4, !dbg !2209
  br label %5, !dbg !2211

5:                                                ; preds = %4, %1
  %6 = tail call i32 @flash_check_device() #16, !dbg !2212
  tail call fastcc void @flash_Switch_Device_Mode(i32 noundef %0) #16, !dbg !2213
  switch i32 %0, label %14 [
    i32 1, label %7
    i32 2, label %8
    i32 3, label %13
  ], !dbg !2214

7:                                                ; preds = %5
  tail call void @sfc_direct_read_setup(i32 noundef 185298944, i32 noundef 1) #14, !dbg !2215
  br label %17, !dbg !2218

8:                                                ; preds = %5
  %9 = load i32, i32* @support_flash_id, align 4, !dbg !2219
  %10 = icmp eq i32 %9, 32, !dbg !2223
  br i1 %10, label %11, label %12, !dbg !2224

11:                                               ; preds = %8
  tail call void @sfc_direct_read_setup(i32 noundef -335572992, i32 noundef 2) #14, !dbg !2225
  br label %17, !dbg !2227

12:                                               ; preds = %8
  tail call void @sfc_direct_read_setup(i32 noundef -335589376, i32 noundef 2) #14, !dbg !2228
  br label %17

13:                                               ; preds = %5
  tail call void @sfc_direct_read_setup(i32 noundef 201265152, i32 noundef 3) #14, !dbg !2230
  br label %17

14:                                               ; preds = %5
  %15 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.25, i32 0, i32 0), i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3.26, i32 0, i32 0), i32 noundef 352) #14, !dbg !2233
  br label %16, !dbg !2233

16:                                               ; preds = %14, %16
  br label %16, !dbg !2233, !llvm.loop !2237

17:                                               ; preds = %13, %12, %11, %7
  store i32 %0, i32* @gucFlashSFCMode, align 4, !dbg !2238
  ret void, !dbg !2239
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @flash_Switch_Device_Mode(i32 noundef %0) unnamed_addr #0 section ".ramTEXT" !dbg !2240 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2242, metadata !DIExpression()), !dbg !2244
  switch i32 %0, label %29 [
    i32 1, label %2
    i32 2, label %11
    i32 3, label %20
  ], !dbg !2245

2:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @cmdlist_switchspi_winbond, i32 0, i32 0), metadata !2243, metadata !DIExpression()), !dbg !2244
  %3 = load i32, i32* @support_flash_id, align 4, !dbg !2246
  switch i32 %3, label %32 [
    i32 194, label %35
    i32 200, label %4
    i32 32, label %8
    i32 255, label %9
  ], !dbg !2249

4:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @cmdlist_switchspi_gd, i32 0, i32 0), metadata !2243, metadata !DIExpression()), !dbg !2244
  %5 = load i32, i32* @gd_write_sr2_1, align 4, !dbg !2250
  %6 = icmp eq i32 %5, 49, !dbg !2254
  %7 = select i1 %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cmdlist_switchspi_gd25q32c, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @cmdlist_switchspi_gd, i32 0, i32 0), !dbg !2255
  call void @llvm.dbg.value(metadata i8* %7, metadata !2243, metadata !DIExpression()), !dbg !2244
  br label %35, !dbg !2256

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cmdlist_switchspi_micron, i32 0, i32 0), metadata !2243, metadata !DIExpression()), !dbg !2244
  br label %35, !dbg !2257

9:                                                ; preds = %2
  %10 = tail call i8* @customer_switch_spi_mode_command() #14, !dbg !2260
  call void @llvm.dbg.value(metadata i8* %10, metadata !2243, metadata !DIExpression()), !dbg !2244
  br label %35, !dbg !2263

11:                                               ; preds = %1
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @cmdlist_switchspiq_winbond, i32 0, i32 0), metadata !2243, metadata !DIExpression()), !dbg !2244
  %12 = load i32, i32* @support_flash_id, align 4, !dbg !2264
  switch i32 %12, label %33 [
    i32 194, label %35
    i32 200, label %13
    i32 32, label %17
    i32 255, label %18
  ], !dbg !2266

13:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @cmdlist_switchspiq_gd, i32 0, i32 0), metadata !2243, metadata !DIExpression()), !dbg !2244
  %14 = load i32, i32* @gd_write_sr2_1, align 4, !dbg !2267
  %15 = icmp eq i32 %14, 49, !dbg !2271
  %16 = select i1 %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cmdlist_switchspiq_gd25q32c, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @cmdlist_switchspiq_gd, i32 0, i32 0), !dbg !2272
  call void @llvm.dbg.value(metadata i8* %16, metadata !2243, metadata !DIExpression()), !dbg !2244
  br label %35, !dbg !2273

17:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cmdlist_switchspiq_micron, i32 0, i32 0), metadata !2243, metadata !DIExpression()), !dbg !2244
  br label %35, !dbg !2274

18:                                               ; preds = %11
  %19 = tail call i8* @customer_switch_spiq_mode_command() #14, !dbg !2277
  call void @llvm.dbg.value(metadata i8* %19, metadata !2243, metadata !DIExpression()), !dbg !2244
  br label %35, !dbg !2280

20:                                               ; preds = %1
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([12 x i8], [12 x i8]* @cmdlist_switchqpi_winbond, i32 0, i32 0), metadata !2243, metadata !DIExpression()), !dbg !2244
  %21 = load i32, i32* @support_flash_id, align 4, !dbg !2281
  switch i32 %21, label %34 [
    i32 194, label %35
    i32 200, label %22
    i32 32, label %26
    i32 255, label %27
  ], !dbg !2283

22:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @cmdlist_switchspiq_gd, i32 0, i32 0), metadata !2243, metadata !DIExpression()), !dbg !2244
  %23 = load i32, i32* @gd_write_sr2_1, align 4, !dbg !2284
  %24 = icmp eq i32 %23, 49, !dbg !2288
  %25 = select i1 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cmdlist_switchqpi_gd25q32c, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @cmdlist_switchspiq_gd, i32 0, i32 0), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %25, metadata !2243, metadata !DIExpression()), !dbg !2244
  br label %35, !dbg !2290

26:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @cmdlist_switchspiq_micron, i32 0, i32 0), metadata !2243, metadata !DIExpression()), !dbg !2244
  br label %35, !dbg !2291

27:                                               ; preds = %20
  %28 = tail call i8* @customer_switch_spiq_mode_command() #14, !dbg !2294
  call void @llvm.dbg.value(metadata i8* %28, metadata !2243, metadata !DIExpression()), !dbg !2244
  br label %35, !dbg !2297

29:                                               ; preds = %1
  %30 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.25, i32 0, i32 0), i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3.26, i32 0, i32 0), i32 noundef 268) #14, !dbg !2298
  br label %31, !dbg !2298

31:                                               ; preds = %31, %29
  br label %31, !dbg !2298, !llvm.loop !2301

32:                                               ; preds = %2
  br label %35, !dbg !2302

33:                                               ; preds = %11
  br label %35, !dbg !2302

34:                                               ; preds = %20
  br label %35, !dbg !2302

35:                                               ; preds = %20, %34, %11, %33, %2, %32, %26, %27, %22, %17, %18, %13, %8, %9, %4
  %36 = phi i8* [ %25, %22 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @cmdlist_switchspiq_micron, i32 0, i32 0), %26 ], [ %28, %27 ], [ %16, %13 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @cmdlist_switchspiq_micron, i32 0, i32 0), %17 ], [ %19, %18 ], [ %7, %4 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @cmdlist_switchspi_micron, i32 0, i32 0), %8 ], [ %10, %9 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @cmdlist_switchspi_mxic, i32 0, i32 0), %2 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @cmdlist_switchspi_winbond, i32 0, i32 0), %32 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @cmdlist_switchspiq_mxic, i32 0, i32 0), %11 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @cmdlist_switchspiq_winbond, i32 0, i32 0), %33 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @cmdlist_switchspiq_mxic, i32 0, i32 0), %20 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @cmdlist_switchqpi_winbond, i32 0, i32 0), %34 ], !dbg !2303
  call void @llvm.dbg.value(metadata i8* %36, metadata !2243, metadata !DIExpression()), !dbg !2244
  tail call void @sfc_Command_List(i8* noundef %36) #14, !dbg !2302
  ret void, !dbg !2304
}

; Function Attrs: noinline nounwind optsize
define dso_local void @flash_config() local_unnamed_addr #0 section ".ramTEXT" !dbg !2305 {
  %1 = alloca [5 x i8], align 1
  %2 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i32 0, i32 0, !dbg !2311
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %2) #13, !dbg !2311
  call void @llvm.dbg.declare(metadata [5 x i8]* %1, metadata !2309, metadata !DIExpression()), !dbg !2312
  %3 = tail call i32 @sfc_getMaxGPRamSize() #14, !dbg !2313
  store i32 %3, i32* @gSFC_max_data_size, align 4, !dbg !2314
  store %struct.flash_info_t* null, %struct.flash_info_t** @spi_chip_info, align 4, !dbg !2315
  %4 = call i32 @flash_read_jedec_id(i8* noundef nonnull %2, i32 noundef 3) #16, !dbg !2316
  %5 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i32 0, i32 1, !dbg !2317
  %6 = load i8, i8* %5, align 1, !dbg !2317
  %7 = zext i8 %6 to i32, !dbg !2318
  %8 = shl nuw i32 %7, 24, !dbg !2319
  %9 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i32 0, i32 2, !dbg !2320
  %10 = load i8, i8* %9, align 1, !dbg !2320
  %11 = zext i8 %10 to i32, !dbg !2321
  %12 = shl nuw nsw i32 %11, 16, !dbg !2322
  %13 = or i32 %12, %8, !dbg !2323
  call void @llvm.dbg.value(metadata i32 %13, metadata !2308, metadata !DIExpression()), !dbg !2324
  %14 = load i8, i8* %2, align 1, !dbg !2325
  %15 = zext i8 %14 to i32, !dbg !2325
  call void (i8*, i32, i8*, ...) @log_hal_info_internal(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.flash_config, i32 0, i32 0), i32 noundef 385, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0), i32 noundef %15, i32 noundef %7, i32 noundef %11, i32 noundef %13) #14, !dbg !2325
  call void @llvm.dbg.value(metadata i32 1, metadata !2307, metadata !DIExpression()), !dbg !2324
  br label %16, !dbg !2326

16:                                               ; preds = %0, %43
  %17 = phi i32 [ 1, %0 ], [ %44, %43 ]
  call void @llvm.dbg.value(metadata i32 %17, metadata !2307, metadata !DIExpression()), !dbg !2324
  %18 = getelementptr inbounds [13 x %struct.flash_info_t], [13 x %struct.flash_info_t]* @chips_data, i32 0, i32 %17, !dbg !2328
  call void @llvm.dbg.value(metadata %struct.flash_info_t* %18, metadata !2310, metadata !DIExpression()), !dbg !2324
  %19 = getelementptr inbounds [13 x %struct.flash_info_t], [13 x %struct.flash_info_t]* @chips_data, i32 0, i32 %17, i32 1, !dbg !2331
  %20 = load i8, i8* %19, align 4, !dbg !2331
  %21 = load i8, i8* %2, align 1, !dbg !2333
  %22 = icmp eq i8 %20, %21, !dbg !2334
  br i1 %22, label %23, label %43, !dbg !2335

23:                                               ; preds = %16
  %24 = getelementptr inbounds [13 x %struct.flash_info_t], [13 x %struct.flash_info_t]* @chips_data, i32 0, i32 %17, i32 2, !dbg !2336
  %25 = load i32, i32* %24, align 4, !dbg !2336
  %26 = icmp eq i32 %25, %13, !dbg !2337
  br i1 %26, label %27, label %43, !dbg !2338

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.flash_info_t, %struct.flash_info_t* %18, i32 0, i32 0, !dbg !2339
  %29 = load i8*, i8** %28, align 4, !dbg !2339
  call void (i8*, i32, i8*, ...) @log_hal_info_internal(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.flash_config, i32 0, i32 0), i32 noundef 390, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i8* noundef %29) #14, !dbg !2339
  store %struct.flash_info_t* %18, %struct.flash_info_t** @spi_chip_info, align 4, !dbg !2341
  %30 = add nsw i32 %17, -4, !dbg !2342
  %31 = icmp ult i32 %30, 5, !dbg !2342
  br i1 %31, label %41, label %32, !dbg !2344

32:                                               ; preds = %27
  %33 = add nsw i32 %17, -1, !dbg !2345
  %34 = icmp ult i32 %33, 3, !dbg !2345
  br i1 %34, label %41, label %35, !dbg !2347

35:                                               ; preds = %32
  %36 = add nsw i32 %17, -9, !dbg !2348
  %37 = icmp ult i32 %36, 3, !dbg !2348
  br i1 %37, label %41, label %38, !dbg !2350

38:                                               ; preds = %35
  %39 = icmp eq i32 %17, 12, !dbg !2351
  br i1 %39, label %40, label %43, !dbg !2353

40:                                               ; preds = %38
  store i32 32, i32* @support_flash_id, align 4, !dbg !2354
  call void @llvm.dbg.value(metadata i32 %44, metadata !2307, metadata !DIExpression()), !dbg !2324
  br label %66, !dbg !2356

41:                                               ; preds = %35, %32, %27
  %42 = phi i32 [ 194, %27 ], [ 239, %32 ], [ 200, %35 ]
  store i32 %42, i32* @support_flash_id, align 4, !dbg !2357
  br label %43, !dbg !2358

43:                                               ; preds = %41, %16, %23, %38
  %44 = add nuw nsw i32 %17, 1, !dbg !2358
  call void @llvm.dbg.value(metadata i32 %44, metadata !2307, metadata !DIExpression()), !dbg !2324
  %45 = icmp eq i32 %44, 13, !dbg !2359
  br i1 %45, label %46, label %16, !dbg !2326, !llvm.loop !2360

46:                                               ; preds = %43
  %47 = load i32, i32* @support_flash_id, align 4, !dbg !2362
  %48 = icmp eq i32 %47, 255, !dbg !2364
  br i1 %48, label %49, label %66, !dbg !2356

49:                                               ; preds = %46
  %50 = call %struct.flash_info_t* @customer_flash_register() #14, !dbg !2365
  store %struct.flash_info_t* %50, %struct.flash_info_t** @spi_chip_info, align 4, !dbg !2367
  call void @llvm.dbg.value(metadata %struct.flash_info_t* %50, metadata !2310, metadata !DIExpression()), !dbg !2324
  %51 = getelementptr inbounds %struct.flash_info_t, %struct.flash_info_t* %50, i32 0, i32 1, !dbg !2368
  %52 = load i8, i8* %51, align 4, !dbg !2368
  %53 = load i8, i8* %2, align 1, !dbg !2370
  %54 = icmp eq i8 %52, %53, !dbg !2371
  br i1 %54, label %55, label %59, !dbg !2372

55:                                               ; preds = %49
  call void @llvm.dbg.value(metadata %struct.flash_info_t* %50, metadata !2310, metadata !DIExpression()), !dbg !2324
  %56 = getelementptr inbounds %struct.flash_info_t, %struct.flash_info_t* %50, i32 0, i32 2, !dbg !2373
  %57 = load i32, i32* %56, align 4, !dbg !2373
  %58 = icmp eq i32 %57, %13, !dbg !2374
  br i1 %58, label %71, label %59, !dbg !2375

59:                                               ; preds = %55, %49
  call void (i8*, i32, i8*, ...) @log_hal_info_internal(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.flash_config, i32 0, i32 0), i32 noundef 411, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i32 0, i32 0)) #14, !dbg !2376
  %60 = load i8, i8* %2, align 1, !dbg !2378
  %61 = zext i8 %60 to i32, !dbg !2378
  %62 = load i8, i8* %5, align 1, !dbg !2378
  %63 = zext i8 %62 to i32, !dbg !2378
  %64 = load i8, i8* %9, align 1, !dbg !2378
  %65 = zext i8 %64 to i32, !dbg !2378
  call void (i8*, i32, i8*, ...) @log_hal_info_internal(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.flash_config, i32 0, i32 0), i32 noundef 412, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1.22, i32 0, i32 0), i32 noundef %61, i32 noundef %63, i32 noundef %65, i32 noundef %13) #14, !dbg !2378
  br label %66, !dbg !2379

66:                                               ; preds = %40, %59, %46
  %67 = load %struct.flash_info_t*, %struct.flash_info_t** @spi_chip_info, align 4, !dbg !2380
  %68 = icmp eq %struct.flash_info_t* %67, null, !dbg !2380
  br i1 %68, label %69, label %71, !dbg !2382

69:                                               ; preds = %66
  %70 = inttoptr i32 %13 to i8*, !dbg !2383
  call void (i8*, i32, i8*, ...) @log_hal_info_internal(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.flash_config, i32 0, i32 0), i32 noundef 417, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), i8* noundef %70) #14, !dbg !2383
  store %struct.flash_info_t* getelementptr inbounds ([13 x %struct.flash_info_t], [13 x %struct.flash_info_t]* @chips_data, i32 0, i32 1), %struct.flash_info_t** @spi_chip_info, align 4, !dbg !2385
  br label %71, !dbg !2386

71:                                               ; preds = %66, %69, %55
  store i32 0, i32* @sf_drvier_status, align 4, !dbg !2324
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %2) #13, !dbg !2387
  ret void, !dbg !2387
}

; Function Attrs: noinline nounwind optsize
define dso_local void @flash_init(i32 noundef %0) local_unnamed_addr #0 section ".ramTEXT" !dbg !2388 {
  %2 = alloca [5 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !2390, metadata !DIExpression()), !dbg !2395
  %3 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i32 0, i32 0, !dbg !2396
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %3) #13, !dbg !2396
  call void @llvm.dbg.declare(metadata [5 x i8]* %2, metadata !2393, metadata !DIExpression()), !dbg !2397
  tail call void @sfc_Init(i32 noundef %0) #14, !dbg !2398
  %4 = tail call i32 @sfc_getMaxGPRamSize() #14, !dbg !2399
  store i32 %4, i32* @gSFC_max_data_size, align 4, !dbg !2400
  tail call fastcc void @flash_reset() #16, !dbg !2401
  store %struct.flash_info_t* null, %struct.flash_info_t** @spi_chip_info, align 4, !dbg !2402
  %5 = call i32 @flash_read_jedec_id(i8* noundef nonnull %3, i32 noundef 3) #16, !dbg !2403
  %6 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i32 0, i32 1, !dbg !2404
  %7 = load i8, i8* %6, align 1, !dbg !2404
  %8 = zext i8 %7 to i32, !dbg !2405
  %9 = shl nuw i32 %8, 24, !dbg !2406
  %10 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i32 0, i32 2, !dbg !2407
  %11 = load i8, i8* %10, align 1, !dbg !2407
  %12 = zext i8 %11 to i32, !dbg !2408
  %13 = shl nuw nsw i32 %12, 16, !dbg !2409
  %14 = or i32 %13, %9, !dbg !2410
  call void @llvm.dbg.value(metadata i32 %14, metadata !2392, metadata !DIExpression()), !dbg !2395
  %15 = load i8, i8* %3, align 1, !dbg !2411
  %16 = zext i8 %15 to i32, !dbg !2411
  call void (i8*, i32, i8*, ...) @log_hal_info_internal(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__FUNCTION__.flash_init, i32 0, i32 0), i32 noundef 447, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0), i32 noundef %16, i32 noundef %8, i32 noundef %12, i32 noundef %14) #14, !dbg !2411
  call void @llvm.dbg.value(metadata i32 1, metadata !2391, metadata !DIExpression()), !dbg !2395
  br label %17, !dbg !2412

17:                                               ; preds = %1, %31
  %18 = phi i32 [ 1, %1 ], [ %32, %31 ]
  call void @llvm.dbg.value(metadata i32 %18, metadata !2391, metadata !DIExpression()), !dbg !2395
  %19 = getelementptr inbounds [13 x %struct.flash_info_t], [13 x %struct.flash_info_t]* @chips_data, i32 0, i32 %18, !dbg !2414
  call void @llvm.dbg.value(metadata %struct.flash_info_t* %19, metadata !2394, metadata !DIExpression()), !dbg !2395
  %20 = getelementptr inbounds [13 x %struct.flash_info_t], [13 x %struct.flash_info_t]* @chips_data, i32 0, i32 %18, i32 1, !dbg !2417
  %21 = load i8, i8* %20, align 4, !dbg !2417
  %22 = load i8, i8* %3, align 1, !dbg !2419
  %23 = icmp eq i8 %21, %22, !dbg !2420
  br i1 %23, label %24, label %31, !dbg !2421

24:                                               ; preds = %17
  %25 = getelementptr inbounds [13 x %struct.flash_info_t], [13 x %struct.flash_info_t]* @chips_data, i32 0, i32 %18, i32 2, !dbg !2422
  %26 = load i32, i32* %25, align 4, !dbg !2422
  %27 = icmp eq i32 %26, %14, !dbg !2423
  br i1 %27, label %28, label %31, !dbg !2424

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.flash_info_t, %struct.flash_info_t* %19, i32 0, i32 0, !dbg !2425
  %30 = load i8*, i8** %29, align 4, !dbg !2425
  call void (i8*, i32, i8*, ...) @log_hal_info_internal(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__FUNCTION__.flash_init, i32 0, i32 0), i32 noundef 452, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i8* noundef %30) #14, !dbg !2425
  store %struct.flash_info_t* %19, %struct.flash_info_t** @spi_chip_info, align 4, !dbg !2427
  br label %31, !dbg !2428

31:                                               ; preds = %17, %24, %28
  %32 = add nuw nsw i32 %18, 1, !dbg !2429
  call void @llvm.dbg.value(metadata i32 %32, metadata !2391, metadata !DIExpression()), !dbg !2395
  %33 = icmp eq i32 %32, 13, !dbg !2430
  br i1 %33, label %34, label %17, !dbg !2412, !llvm.loop !2431

34:                                               ; preds = %31
  %35 = load %struct.flash_info_t*, %struct.flash_info_t** @spi_chip_info, align 4, !dbg !2433
  %36 = icmp eq %struct.flash_info_t* %35, null, !dbg !2433
  br i1 %36, label %37, label %39, !dbg !2435

37:                                               ; preds = %34
  %38 = inttoptr i32 %14 to i8*, !dbg !2436
  call void (i8*, i32, i8*, ...) @log_hal_info_internal(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @__FUNCTION__.flash_init, i32 0, i32 0), i32 noundef 458, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), i8* noundef %38) #14, !dbg !2436
  store %struct.flash_info_t* getelementptr inbounds ([13 x %struct.flash_info_t], [13 x %struct.flash_info_t]* @chips_data, i32 0, i32 1), %struct.flash_info_t** @spi_chip_info, align 4, !dbg !2438
  br label %39, !dbg !2439

39:                                               ; preds = %37, %34
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %3) #13, !dbg !2440
  ret void, !dbg !2440
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @flash_reset() unnamed_addr #0 section ".ramTEXT" !dbg !2441 {
  tail call void @sfc_Command_List(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @cmdlist_flash_reset_qpimode, i32 0, i32 0)) #14, !dbg !2442
  tail call void @sfc_delay_ms(i32 noundef 1) #14, !dbg !2443
  tail call void @sfc_Command_List(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @cmdlist_flash_reset_spimode, i32 0, i32 0)) #14, !dbg !2444
  tail call void @sfc_delay_ms(i32 noundef 1) #14, !dbg !2445
  ret void, !dbg !2446
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @flash_wait_ready(i32 noundef %0) local_unnamed_addr #0 section ".ramTEXT" !dbg !2447 {
  %2 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !2451, metadata !DIExpression()), !dbg !2454
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %2) #13, !dbg !2455
  call void @llvm.dbg.value(metadata i8 0, metadata !2453, metadata !DIExpression()), !dbg !2454
  store i8 0, i8* %2, align 1, !dbg !2456
  call void @llvm.dbg.value(metadata i32 0, metadata !2452, metadata !DIExpression()), !dbg !2454
  %3 = mul i32 %0, 1000
  %4 = add i32 %3, 1000
  call void @llvm.dbg.value(metadata i32 0, metadata !2452, metadata !DIExpression()), !dbg !2454
  %5 = icmp sgt i32 %4, 0, !dbg !2457
  br i1 %5, label %6, label %18, !dbg !2460

6:                                                ; preds = %1, %15
  %7 = phi i32 [ %16, %15 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !2452, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8* %2, metadata !2453, metadata !DIExpression(DW_OP_deref)), !dbg !2454
  %8 = call i32 @flash_read_sr(i8* noundef nonnull %2) #16, !dbg !2461
  %9 = icmp slt i32 %8, 0, !dbg !2464
  br i1 %9, label %18, label %10, !dbg !2465

10:                                               ; preds = %6
  %11 = load i8, i8* %2, align 1, !dbg !2466
  call void @llvm.dbg.value(metadata i8 %11, metadata !2453, metadata !DIExpression()), !dbg !2454
  %12 = and i8 %11, 1, !dbg !2468
  %13 = icmp eq i8 %12, 0, !dbg !2468
  br i1 %13, label %14, label %15, !dbg !2469

14:                                               ; preds = %10
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %2) #13, !dbg !2470
  ret i32 0, !dbg !2471

15:                                               ; preds = %10
  call void @sfc_delay_ms(i32 noundef 1) #14, !dbg !2473
  %16 = add nuw nsw i32 %7, 1, !dbg !2474
  call void @llvm.dbg.value(metadata i32 %16, metadata !2452, metadata !DIExpression()), !dbg !2454
  %17 = icmp eq i32 %16, %4, !dbg !2457
  br i1 %17, label %18, label %6, !dbg !2460, !llvm.loop !2475

18:                                               ; preds = %15, %6, %1
  call void @__assert_func(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3.26, i32 0, i32 0), i32 noundef 491, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.flash_wait_ready, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)) #15, !dbg !2477
  unreachable, !dbg !2477
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @flash_read_sr(i8* noundef %0) local_unnamed_addr #0 section ".ramTEXT" !dbg !2478 {
  %2 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !2482, metadata !DIExpression()), !dbg !2485
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %2) #13, !dbg !2486
  call void @llvm.dbg.value(metadata i8 5, metadata !2484, metadata !DIExpression()), !dbg !2485
  store i8 5, i8* %2, align 1, !dbg !2487
  call void @llvm.dbg.value(metadata i8* %2, metadata !2484, metadata !DIExpression(DW_OP_deref)), !dbg !2485
  %3 = call i32 @sfc_read(i8* noundef nonnull %2, i32 noundef 1, i8* noundef %0, i32 noundef 1) #14, !dbg !2488
  call void @llvm.dbg.value(metadata i32 %3, metadata !2483, metadata !DIExpression()), !dbg !2485
  %4 = icmp ne i32 %3, 1, !dbg !2489
  %5 = sext i1 %4 to i32, !dbg !2485
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %2) #13, !dbg !2491
  ret i32 %5, !dbg !2491
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @flash_read_manu_id(i8* noundef %0, i32 noundef %1) local_unnamed_addr #0 section ".ramTEXT" !dbg !2492 {
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2494, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i32 %1, metadata !2495, metadata !DIExpression()), !dbg !2498
  %4 = bitcast i32* %3 to i8*, !dbg !2499
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #13, !dbg !2499
  call void @llvm.dbg.value(metadata i32 0, metadata !2496, metadata !DIExpression()), !dbg !2498
  store i32 144, i32* %3, align 4, !dbg !2500
  call void @llvm.dbg.value(metadata i8 undef, metadata !2496, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i32* %3, metadata !2496, metadata !DIExpression(DW_OP_deref)), !dbg !2498
  %5 = call i32 @sfc_read(i8* noundef nonnull %4, i32 noundef 4, i8* noundef %0, i32 noundef %1) #14, !dbg !2501
  call void @llvm.dbg.value(metadata i32 %5, metadata !2497, metadata !DIExpression()), !dbg !2498
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #13, !dbg !2502
  ret i32 %5, !dbg !2503
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @flash_read_manu_id_quad(i8* noundef %0, i32 noundef %1) local_unnamed_addr #0 section ".ramTEXT" !dbg !2504 {
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2506, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i32 %1, metadata !2507, metadata !DIExpression()), !dbg !2510
  %4 = bitcast i32* %3 to i8*, !dbg !2511
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #13, !dbg !2511
  call void @llvm.dbg.value(metadata i32 0, metadata !2508, metadata !DIExpression()), !dbg !2510
  store i32 144, i32* %3, align 4, !dbg !2512
  call void @llvm.dbg.value(metadata i8 undef, metadata !2508, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i32* %3, metadata !2508, metadata !DIExpression(DW_OP_deref)), !dbg !2510
  %5 = call i32 @sfc_read(i8* noundef nonnull %4, i32 noundef 4, i8* noundef %0, i32 noundef %1) #14, !dbg !2513
  call void @llvm.dbg.value(metadata i32 %5, metadata !2509, metadata !DIExpression()), !dbg !2510
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #13, !dbg !2514
  ret i32 %5, !dbg !2515
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @flash_read(i8* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 section ".ramTEXT" !dbg !2516 {
  %4 = alloca [4 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !2520, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i32 %1, metadata !2521, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i32 %2, metadata !2522, metadata !DIExpression()), !dbg !2525
  %5 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i32 0, i32 0, !dbg !2526
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #13, !dbg !2526
  call void @llvm.dbg.declare(metadata [4 x i8]* %4, metadata !2523, metadata !DIExpression()), !dbg !2527
  %6 = icmp eq i32 %2, 0, !dbg !2528
  br i1 %6, label %18, label %7, !dbg !2530

7:                                                ; preds = %3
  %8 = tail call i32 @flash_wait_ready(i32 noundef 1) #16, !dbg !2531
  store i32 1, i32* @sf_drvier_status, align 4, !dbg !2533
  store i8 3, i8* %5, align 1, !dbg !2534
  %9 = lshr i32 %1, 16, !dbg !2535
  %10 = trunc i32 %9 to i8, !dbg !2536
  %11 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i32 0, i32 1, !dbg !2537
  store i8 %10, i8* %11, align 1, !dbg !2538
  %12 = lshr i32 %1, 8, !dbg !2539
  %13 = trunc i32 %12 to i8, !dbg !2540
  %14 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i32 0, i32 2, !dbg !2541
  store i8 %13, i8* %14, align 1, !dbg !2542
  %15 = trunc i32 %1 to i8, !dbg !2543
  %16 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i32 0, i32 3, !dbg !2544
  store i8 %15, i8* %16, align 1, !dbg !2545
  %17 = call i32 @sfc_read(i8* noundef nonnull %5, i32 noundef 4, i8* noundef %0, i32 noundef %2) #14, !dbg !2546
  call void @llvm.dbg.value(metadata i32 %17, metadata !2524, metadata !DIExpression()), !dbg !2525
  br label %18, !dbg !2547

18:                                               ; preds = %3, %7
  %19 = phi i32 [ %17, %7 ], [ 0, %3 ], !dbg !2525
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #13, !dbg !2548
  ret i32 %19, !dbg !2548
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @flash_fast_read(i8* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 section ".ramTEXT" !dbg !2549 {
  %5 = alloca [32 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !2553, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i32 %1, metadata !2554, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i32 %2, metadata !2555, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i32 %3, metadata !2556, metadata !DIExpression()), !dbg !2562
  %6 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i32 0, i32 0, !dbg !2563
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #13, !dbg !2563
  call void @llvm.dbg.declare(metadata [32 x i8]* %5, metadata !2557, metadata !DIExpression()), !dbg !2564
  %7 = icmp eq i32 %2, 0, !dbg !2565
  br i1 %7, label %33, label %8, !dbg !2567

8:                                                ; preds = %4
  %9 = tail call i32 @flash_wait_ready(i32 noundef 1) #16, !dbg !2568
  store i8 11, i8* %6, align 1, !dbg !2570
  %10 = lshr i32 %1, 16, !dbg !2571
  %11 = trunc i32 %10 to i8, !dbg !2572
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i32 0, i32 1, !dbg !2573
  store i8 %11, i8* %12, align 1, !dbg !2574
  %13 = lshr i32 %1, 8, !dbg !2575
  %14 = trunc i32 %13 to i8, !dbg !2576
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i32 0, i32 2, !dbg !2577
  store i8 %14, i8* %15, align 1, !dbg !2578
  %16 = trunc i32 %1 to i8, !dbg !2579
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i32 0, i32 3, !dbg !2580
  store i8 %16, i8* %17, align 1, !dbg !2581
  call void @llvm.dbg.value(metadata i32 4, metadata !2559, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i32 0, metadata !2561, metadata !DIExpression()), !dbg !2562
  %18 = icmp sgt i32 %3, 0, !dbg !2582
  br i1 %18, label %19, label %30, !dbg !2585

19:                                               ; preds = %8
  %20 = add nsw i32 %3, -1, !dbg !2585
  %21 = call i32 @llvm.umin.i32(i32 %20, i32 27), !dbg !2585
  br label %22, !dbg !2585

22:                                               ; preds = %19, %22
  %23 = phi i32 [ %26, %22 ], [ 0, %19 ]
  call void @llvm.dbg.value(metadata i32 %23, metadata !2561, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i32 undef, metadata !2559, metadata !DIExpression()), !dbg !2562
  %24 = add nuw nsw i32 %23, 4, !dbg !2586
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i32 0, i32 %24, !dbg !2588
  store i8 0, i8* %25, align 1, !dbg !2589
  call void @llvm.dbg.value(metadata i32 undef, metadata !2559, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2562
  %26 = add nuw nsw i32 %23, 1, !dbg !2590
  call void @llvm.dbg.value(metadata i32 %26, metadata !2561, metadata !DIExpression()), !dbg !2562
  %27 = icmp eq i32 %23, %21, !dbg !2591
  br i1 %27, label %28, label %22, !dbg !2585, !llvm.loop !2592

28:                                               ; preds = %22
  %29 = add nuw nsw i32 %21, 5, !dbg !2585
  br label %30, !dbg !2594

30:                                               ; preds = %28, %8
  %31 = phi i32 [ 4, %8 ], [ %29, %28 ], !dbg !2562
  %32 = call i32 @sfc_read(i8* noundef nonnull %6, i32 noundef %31, i8* noundef %0, i32 noundef %2) #14, !dbg !2594
  call void @llvm.dbg.value(metadata i32 %32, metadata !2560, metadata !DIExpression()), !dbg !2562
  br label %33, !dbg !2595

33:                                               ; preds = %4, %30
  %34 = phi i32 [ %32, %30 ], [ 0, %4 ], !dbg !2562
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #13, !dbg !2596
  ret i32 %34, !dbg !2596
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: noinline nounwind optsize
define dso_local i32 @flash_read_sr2(i8* noundef %0) local_unnamed_addr #0 section ".ramTEXT" !dbg !2597 {
  %2 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !2599, metadata !DIExpression()), !dbg !2602
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %2) #13, !dbg !2603
  call void @llvm.dbg.value(metadata i8 53, metadata !2601, metadata !DIExpression()), !dbg !2602
  %3 = load i32, i32* @support_flash_id, align 4, !dbg !2604
  switch i32 %3, label %9 [
    i32 239, label %4
    i32 200, label %4
    i32 194, label %5
    i32 32, label %6
    i32 255, label %7
  ], !dbg !2606

4:                                                ; preds = %1, %1
  call void @llvm.dbg.value(metadata i8 53, metadata !2601, metadata !DIExpression()), !dbg !2602
  store i8 53, i8* %2, align 1, !dbg !2607
  br label %10, !dbg !2609

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8 43, metadata !2601, metadata !DIExpression()), !dbg !2602
  store i8 43, i8* %2, align 1, !dbg !2610
  br label %10, !dbg !2613

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8 112, metadata !2601, metadata !DIExpression()), !dbg !2602
  store i8 112, i8* %2, align 1, !dbg !2614
  br label %10, !dbg !2617

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @customer_flash_read_SR2_comand() #14, !dbg !2618
  call void @llvm.dbg.value(metadata i8 %8, metadata !2601, metadata !DIExpression()), !dbg !2602
  store i8 %8, i8* %2, align 1, !dbg !2621
  br label %10, !dbg !2622

9:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_info_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.flash_read_sr2, i32 0, i32 0), i32 noundef 655, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0)) #14, !dbg !2623
  call void @llvm.dbg.value(metadata i8 5, metadata !2601, metadata !DIExpression()), !dbg !2602
  store i8 5, i8* %2, align 1, !dbg !2625
  br label %10

10:                                               ; preds = %5, %7, %9, %6, %4
  call void @llvm.dbg.value(metadata i8* %2, metadata !2601, metadata !DIExpression(DW_OP_deref)), !dbg !2602
  %11 = call i32 @sfc_read(i8* noundef nonnull %2, i32 noundef 1, i8* noundef %0, i32 noundef 1) #14, !dbg !2626
  call void @llvm.dbg.value(metadata i32 %11, metadata !2600, metadata !DIExpression()), !dbg !2602
  %12 = icmp ne i32 %11, 1, !dbg !2627
  %13 = sext i1 %12 to i32, !dbg !2602
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %2) #13, !dbg !2629
  ret i32 %13, !dbg !2629
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @flash_unprotect() local_unnamed_addr #0 section ".ramTEXT" !dbg !2630 {
  %1 = alloca i8, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1) #13, !dbg !2633
  call void @llvm.dbg.value(metadata i8 0, metadata !2632, metadata !DIExpression()), !dbg !2634
  store i8 0, i8* %1, align 1, !dbg !2635
  call void @llvm.dbg.value(metadata i8* %1, metadata !2632, metadata !DIExpression(DW_OP_deref)), !dbg !2634
  %2 = call i32 @flash_read_sr(i8* noundef nonnull %1) #16, !dbg !2636
  %3 = icmp slt i32 %2, 0, !dbg !2638
  br i1 %3, label %9, label %4, !dbg !2639

4:                                                ; preds = %0
  %5 = load i8, i8* %1, align 1, !dbg !2640
  call void @llvm.dbg.value(metadata i8 %5, metadata !2632, metadata !DIExpression()), !dbg !2634
  %6 = and i8 %5, 28, !dbg !2642
  %7 = icmp eq i8 %6, 0, !dbg !2643
  br i1 %7, label %9, label %8, !dbg !2644

8:                                                ; preds = %4
  call void @llvm.dbg.value(metadata i8 0, metadata !2632, metadata !DIExpression()), !dbg !2634
  store i8 0, i8* %1, align 1, !dbg !2645
  call void @llvm.dbg.value(metadata i8* %1, metadata !2632, metadata !DIExpression(DW_OP_deref)), !dbg !2634
  call fastcc void @flash_write_sr(i8* noundef nonnull %1) #16, !dbg !2647
  br label %9, !dbg !2648

9:                                                ; preds = %4, %8, %0
  %10 = phi i32 [ -1, %0 ], [ 0, %8 ], [ 0, %4 ], !dbg !2634
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1) #13, !dbg !2649
  ret i32 %10, !dbg !2649
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @flash_write_sr(i8* noundef %0) unnamed_addr #0 section ".ramTEXT" !dbg !2650 {
  %2 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !2652, metadata !DIExpression()), !dbg !2655
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %2) #13, !dbg !2656
  call void @llvm.dbg.value(metadata i8 1, metadata !2654, metadata !DIExpression()), !dbg !2655
  store i8 1, i8* %2, align 1, !dbg !2657
  call void @llvm.dbg.value(metadata i8* %2, metadata !2654, metadata !DIExpression(DW_OP_deref)), !dbg !2655
  %3 = call i32 @sfc_write(i8* noundef nonnull %2, i32 noundef 1, i8* noundef %0, i32 noundef 1) #14, !dbg !2658
  call void @llvm.dbg.value(metadata i32 %3, metadata !2653, metadata !DIExpression()), !dbg !2655
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %2) #13, !dbg !2659
  ret void, !dbg !2659
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @flash_protect() local_unnamed_addr #0 section ".ramTEXT" !dbg !2660 {
  %1 = alloca i8, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1) #13, !dbg !2663
  call void @llvm.dbg.value(metadata i8 0, metadata !2662, metadata !DIExpression()), !dbg !2664
  store i8 0, i8* %1, align 1, !dbg !2665
  call void @llvm.dbg.value(metadata i8* %1, metadata !2662, metadata !DIExpression(DW_OP_deref)), !dbg !2664
  %2 = call i32 @flash_read_sr(i8* noundef nonnull %1) #16, !dbg !2666
  %3 = icmp slt i32 %2, 0, !dbg !2668
  br i1 %3, label %7, label %4, !dbg !2669

4:                                                ; preds = %0
  %5 = load i8, i8* %1, align 1, !dbg !2670
  call void @llvm.dbg.value(metadata i8 %5, metadata !2662, metadata !DIExpression()), !dbg !2664
  %6 = or i8 %5, 28, !dbg !2670
  call void @llvm.dbg.value(metadata i8 %6, metadata !2662, metadata !DIExpression()), !dbg !2664
  store i8 %6, i8* %1, align 1, !dbg !2670
  call void @llvm.dbg.value(metadata i8* %1, metadata !2662, metadata !DIExpression(DW_OP_deref)), !dbg !2664
  call fastcc void @flash_write_sr(i8* noundef nonnull %1) #16, !dbg !2671
  br label %7, !dbg !2672

7:                                                ; preds = %0, %4
  %8 = phi i32 [ 0, %4 ], [ -1, %0 ], !dbg !2664
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1) #13, !dbg !2673
  ret i32 %8, !dbg !2673
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @flash_write_enable() local_unnamed_addr #0 section ".ramTEXT" !dbg !2674 {
  %1 = alloca i8, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1) #13, !dbg !2677
  call void @llvm.dbg.value(metadata i8 6, metadata !2676, metadata !DIExpression()), !dbg !2678
  store i8 6, i8* %1, align 1, !dbg !2679
  call void @llvm.dbg.value(metadata i8* %1, metadata !2676, metadata !DIExpression(DW_OP_deref)), !dbg !2678
  %2 = call i32 @sfc_write(i8* noundef nonnull %1, i32 noundef 1, i8* noundef null, i32 noundef 0) #14, !dbg !2680
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1) #13, !dbg !2681
  ret i32 %2, !dbg !2682
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @flash_write_disable() local_unnamed_addr #0 section ".ramTEXT" !dbg !2683 {
  %1 = alloca i8, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1) #13, !dbg !2686
  call void @llvm.dbg.value(metadata i8 4, metadata !2685, metadata !DIExpression()), !dbg !2687
  store i8 4, i8* %1, align 1, !dbg !2688
  call void @llvm.dbg.value(metadata i8* %1, metadata !2685, metadata !DIExpression(DW_OP_deref)), !dbg !2687
  %2 = call i32 @sfc_write(i8* noundef nonnull %1, i32 noundef 1, i8* noundef null, i32 noundef 0) #14, !dbg !2689
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1) #13, !dbg !2690
  ret i32 %2, !dbg !2691
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @flash_erase_sector(i32 noundef %0) local_unnamed_addr #0 section ".ramTEXT" !dbg !2692 {
  %2 = alloca [5 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !2696, metadata !DIExpression()), !dbg !2700
  %3 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i32 0, i32 0, !dbg !2701
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %3) #13, !dbg !2701
  call void @llvm.dbg.declare(metadata [5 x i8]* %2, metadata !2697, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i32 0, metadata !2699, metadata !DIExpression()), !dbg !2700
  %4 = tail call i32 @flash_wait_ready(i32 noundef 3) #16, !dbg !2703
  store i32 8, i32* @sf_drvier_status, align 4, !dbg !2705
  br label %5, !dbg !2706

5:                                                ; preds = %5, %1
  %6 = tail call i32 @SF_DAL_CheckDeviceReady(i8* noundef null, i32 noundef 0) #14, !dbg !2707
  call void @llvm.dbg.value(metadata i32 %6, metadata !2699, metadata !DIExpression()), !dbg !2700
  %7 = icmp eq i32 %6, -121, !dbg !2709
  br i1 %7, label %5, label %8, !dbg !2710, !llvm.loop !2711

8:                                                ; preds = %5
  %9 = tail call i32 @save_and_set_interrupt_mask() #14, !dbg !2713
  call void @llvm.dbg.value(metadata i32 %9, metadata !2698, metadata !DIExpression()), !dbg !2700
  store i8 -40, i8* %3, align 1, !dbg !2714
  %10 = lshr i32 %0, 16, !dbg !2715
  %11 = trunc i32 %10 to i8, !dbg !2716
  %12 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i32 0, i32 1, !dbg !2717
  store i8 %11, i8* %12, align 1, !dbg !2718
  %13 = lshr i32 %0, 8, !dbg !2719
  %14 = trunc i32 %13 to i8, !dbg !2720
  %15 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i32 0, i32 2, !dbg !2721
  store i8 %14, i8* %15, align 1, !dbg !2722
  %16 = trunc i32 %0 to i8, !dbg !2723
  %17 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i32 0, i32 3, !dbg !2724
  store i8 %16, i8* %17, align 1, !dbg !2725
  tail call void @SF_DAL_FLAG_BUSY_SET() #14, !dbg !2726
  %18 = call i32 @sfc_write(i8* noundef nonnull %3, i32 noundef 4, i8* noundef null, i32 noundef 0) #14, !dbg !2727
  call void @restore_interrupt_mask(i32 noundef %9) #14, !dbg !2728
  br label %19, !dbg !2729

19:                                               ; preds = %19, %8
  %20 = call i32 @SF_DAL_CheckDeviceReady(i8* noundef null, i32 noundef 0) #14, !dbg !2730
  call void @llvm.dbg.value(metadata i32 %20, metadata !2699, metadata !DIExpression()), !dbg !2700
  %21 = icmp eq i32 %20, -121, !dbg !2732
  br i1 %21, label %19, label %22, !dbg !2733, !llvm.loop !2734

22:                                               ; preds = %19
  %23 = call i32 @flash_write_disable() #16, !dbg !2736
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %3) #13, !dbg !2737
  ret i32 0, !dbg !2737
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @flash_erase_sector_32k(i32 noundef %0) local_unnamed_addr #0 section ".ramTEXT" !dbg !2738 {
  %2 = alloca [5 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !2740, metadata !DIExpression()), !dbg !2744
  %3 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i32 0, i32 0, !dbg !2745
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %3) #13, !dbg !2745
  call void @llvm.dbg.declare(metadata [5 x i8]* %2, metadata !2741, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata i32 0, metadata !2743, metadata !DIExpression()), !dbg !2744
  %4 = tail call i32 @flash_wait_ready(i32 noundef 3) #16, !dbg !2747
  store i32 7, i32* @sf_drvier_status, align 4, !dbg !2749
  br label %5, !dbg !2750

5:                                                ; preds = %5, %1
  %6 = tail call i32 @SF_DAL_CheckDeviceReady(i8* noundef null, i32 noundef 0) #14, !dbg !2751
  call void @llvm.dbg.value(metadata i32 %6, metadata !2743, metadata !DIExpression()), !dbg !2744
  %7 = icmp eq i32 %6, -121, !dbg !2753
  br i1 %7, label %5, label %8, !dbg !2754, !llvm.loop !2755

8:                                                ; preds = %5
  %9 = tail call i32 @save_and_set_interrupt_mask() #14, !dbg !2757
  call void @llvm.dbg.value(metadata i32 %9, metadata !2742, metadata !DIExpression()), !dbg !2744
  store i8 82, i8* %3, align 1, !dbg !2758
  %10 = lshr i32 %0, 16, !dbg !2759
  %11 = trunc i32 %10 to i8, !dbg !2760
  %12 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i32 0, i32 1, !dbg !2761
  store i8 %11, i8* %12, align 1, !dbg !2762
  %13 = lshr i32 %0, 8, !dbg !2763
  %14 = trunc i32 %13 to i8, !dbg !2764
  %15 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i32 0, i32 2, !dbg !2765
  store i8 %14, i8* %15, align 1, !dbg !2766
  %16 = trunc i32 %0 to i8, !dbg !2767
  %17 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i32 0, i32 3, !dbg !2768
  store i8 %16, i8* %17, align 1, !dbg !2769
  tail call void @SF_DAL_FLAG_BUSY_SET() #14, !dbg !2770
  %18 = call i32 @sfc_write(i8* noundef nonnull %3, i32 noundef 4, i8* noundef null, i32 noundef 0) #14, !dbg !2771
  br label %19, !dbg !2772

19:                                               ; preds = %19, %8
  %20 = call i32 @SF_DAL_CheckDeviceReady(i8* noundef null, i32 noundef 0) #14, !dbg !2773
  call void @llvm.dbg.value(metadata i32 %20, metadata !2743, metadata !DIExpression()), !dbg !2744
  %21 = icmp eq i32 %20, -121, !dbg !2775
  br i1 %21, label %19, label %22, !dbg !2776, !llvm.loop !2777

22:                                               ; preds = %19
  call void @restore_interrupt_mask(i32 noundef %9) #14, !dbg !2779
  %23 = call i32 @flash_write_disable() #16, !dbg !2780
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %3) #13, !dbg !2781
  ret i32 0, !dbg !2781
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @flash_erase_page(i32 noundef %0) local_unnamed_addr #0 section ".ramTEXT" !dbg !2782 {
  %2 = alloca [5 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !2784, metadata !DIExpression()), !dbg !2788
  %3 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i32 0, i32 0, !dbg !2789
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %3) #13, !dbg !2789
  call void @llvm.dbg.declare(metadata [5 x i8]* %2, metadata !2785, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i32 0, metadata !2787, metadata !DIExpression()), !dbg !2788
  %4 = tail call i32 @flash_wait_ready(i32 noundef 3) #16, !dbg !2791
  store i32 6, i32* @sf_drvier_status, align 4, !dbg !2793
  br label %5, !dbg !2794

5:                                                ; preds = %5, %1
  %6 = tail call i32 @SF_DAL_CheckDeviceReady(i8* noundef null, i32 noundef 0) #14, !dbg !2795
  call void @llvm.dbg.value(metadata i32 %6, metadata !2787, metadata !DIExpression()), !dbg !2788
  %7 = icmp eq i32 %6, -121, !dbg !2797
  br i1 %7, label %5, label %8, !dbg !2798, !llvm.loop !2799

8:                                                ; preds = %5
  %9 = tail call i32 @save_and_set_interrupt_mask() #14, !dbg !2801
  call void @llvm.dbg.value(metadata i32 %9, metadata !2786, metadata !DIExpression()), !dbg !2788
  store i8 32, i8* %3, align 1, !dbg !2802
  %10 = lshr i32 %0, 16, !dbg !2803
  %11 = trunc i32 %10 to i8, !dbg !2804
  %12 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i32 0, i32 1, !dbg !2805
  store i8 %11, i8* %12, align 1, !dbg !2806
  %13 = lshr i32 %0, 8, !dbg !2807
  %14 = trunc i32 %13 to i8, !dbg !2808
  %15 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i32 0, i32 2, !dbg !2809
  store i8 %14, i8* %15, align 1, !dbg !2810
  %16 = trunc i32 %0 to i8, !dbg !2811
  %17 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i32 0, i32 3, !dbg !2812
  store i8 %16, i8* %17, align 1, !dbg !2813
  tail call void @SF_DAL_FLAG_BUSY_SET() #14, !dbg !2814
  %18 = call i32 @sfc_write(i8* noundef nonnull %3, i32 noundef 4, i8* noundef null, i32 noundef 0) #14, !dbg !2815
  call void @restore_interrupt_mask(i32 noundef %9) #14, !dbg !2816
  br label %19, !dbg !2817

19:                                               ; preds = %19, %8
  %20 = call i32 @SF_DAL_CheckDeviceReady(i8* noundef null, i32 noundef 0) #14, !dbg !2818
  call void @llvm.dbg.value(metadata i32 %20, metadata !2787, metadata !DIExpression()), !dbg !2788
  %21 = icmp eq i32 %20, -121, !dbg !2820
  br i1 %21, label %19, label %22, !dbg !2821, !llvm.loop !2822

22:                                               ; preds = %19
  %23 = call i32 @flash_write_disable() #16, !dbg !2824
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %3) #13, !dbg !2825
  ret i32 0, !dbg !2825
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @flash_erase_chip() local_unnamed_addr #0 section ".ramTEXT" !dbg !2826 {
  %1 = alloca [5 x i8], align 1
  %2 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i32 0, i32 0, !dbg !2829
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %2) #13, !dbg !2829
  call void @llvm.dbg.declare(metadata [5 x i8]* %1, metadata !2828, metadata !DIExpression()), !dbg !2830
  %3 = tail call i32 @flash_wait_ready(i32 noundef 3) #16, !dbg !2831
  store i32 9, i32* @sf_drvier_status, align 4, !dbg !2833
  %4 = tail call i32 @flash_write_enable() #16, !dbg !2834
  %5 = tail call i32 @flash_unprotect() #16, !dbg !2835
  store i8 96, i8* %2, align 1, !dbg !2836
  %6 = call i32 @sfc_write(i8* noundef nonnull %2, i32 noundef 1, i8* noundef null, i32 noundef 0) #14, !dbg !2837
  %7 = call i32 @flash_wait_ready(i32 noundef 30000) #16, !dbg !2838
  %8 = call i32 @flash_write_disable() #16, !dbg !2840
  store i32 0, i32* @sf_drvier_status, align 4, !dbg !2841
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %2) #13, !dbg !2842
  ret i32 0, !dbg !2842
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @flash_erase(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 section ".ramTEXT" !dbg !2843 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2847, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i32 %1, metadata !2848, metadata !DIExpression()), !dbg !2849
  %3 = icmp sgt i32 %1, 0
  call void @llvm.dbg.value(metadata i32 %1, metadata !2848, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i32 %0, metadata !2847, metadata !DIExpression()), !dbg !2849
  br i1 %3, label %4, label %14, !dbg !2850

4:                                                ; preds = %2, %4
  %5 = phi i32 [ %12, %4 ], [ %1, %2 ]
  %6 = phi i32 [ %11, %4 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !2848, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i32 %6, metadata !2847, metadata !DIExpression()), !dbg !2849
  %7 = tail call i32 @flash_erase_page(i32 noundef %6) #16, !dbg !2851
  %8 = load %struct.flash_info_t*, %struct.flash_info_t** @spi_chip_info, align 4, !dbg !2854
  %9 = getelementptr inbounds %struct.flash_info_t, %struct.flash_info_t* %8, i32 0, i32 3, !dbg !2855
  %10 = load i32, i32* %9, align 4, !dbg !2855
  %11 = add i32 %10, %6, !dbg !2856
  call void @llvm.dbg.value(metadata i32 %11, metadata !2847, metadata !DIExpression()), !dbg !2849
  %12 = sub i32 %5, %10, !dbg !2857
  call void @llvm.dbg.value(metadata i32 %12, metadata !2848, metadata !DIExpression()), !dbg !2849
  %13 = icmp sgt i32 %12, 0, !dbg !2858
  br i1 %13, label %4, label %14, !dbg !2859, !llvm.loop !2860

14:                                               ; preds = %4, %2
  ret i32 0, !dbg !2862
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @flash_write(i8* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 section ".ramTEXT" !dbg !2863 {
  %4 = alloca [5 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !2867, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i32 %1, metadata !2868, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i32 %2, metadata !2869, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i32 0, metadata !2872, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i32 0, metadata !2873, metadata !DIExpression()), !dbg !2881
  %5 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i32 0, i32 0, !dbg !2882
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %5) #13, !dbg !2882
  call void @llvm.dbg.declare(metadata [5 x i8]* %4, metadata !2875, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i32 %1, metadata !2878, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i8* %0, metadata !2879, metadata !DIExpression()), !dbg !2881
  %6 = icmp eq i32 %2, 0, !dbg !2884
  br i1 %6, label %86, label %7, !dbg !2886

7:                                                ; preds = %3
  %8 = add i32 %2, %1, !dbg !2887
  %9 = load %struct.flash_info_t*, %struct.flash_info_t** @spi_chip_info, align 4, !dbg !2889
  %10 = getelementptr inbounds %struct.flash_info_t, %struct.flash_info_t* %9, i32 0, i32 3, !dbg !2890
  %11 = load i32, i32* %10, align 4, !dbg !2890
  %12 = getelementptr inbounds %struct.flash_info_t, %struct.flash_info_t* %9, i32 0, i32 4, !dbg !2891
  %13 = load i32, i32* %12, align 4, !dbg !2891
  %14 = mul i32 %13, %11, !dbg !2892
  %15 = icmp ugt i32 %8, %14, !dbg !2893
  br i1 %15, label %86, label %16, !dbg !2894

16:                                               ; preds = %7
  %17 = tail call i32 @flash_wait_ready(i32 noundef 2) #16, !dbg !2895
  br label %18

18:                                               ; preds = %16, %18
  %19 = tail call i32 @SF_DAL_CheckDeviceReady(i8* noundef null, i32 noundef 0) #14, !dbg !2897
  call void @llvm.dbg.value(metadata i32 %19, metadata !2876, metadata !DIExpression()), !dbg !2881
  %20 = icmp eq i32 %19, -121, !dbg !2899
  br i1 %20, label %18, label %21, !dbg !2900, !llvm.loop !2901

21:                                               ; preds = %18
  store i32 3, i32* @sf_drvier_status, align 4, !dbg !2904
  %22 = tail call i32 @sfc_GetDirectMode() #14, !dbg !2905
  call void @llvm.dbg.value(metadata i32 %22, metadata !2874, metadata !DIExpression()), !dbg !2881
  %23 = icmp eq i32 %22, 2, !dbg !2906
  br i1 %23, label %24, label %29, !dbg !2908

24:                                               ; preds = %21
  %25 = load %struct.flash_info_t*, %struct.flash_info_t** @spi_chip_info, align 4, !dbg !2909
  %26 = getelementptr inbounds %struct.flash_info_t, %struct.flash_info_t* %25, i32 0, i32 5, !dbg !2910
  %27 = load i8, i8* %26, align 4, !dbg !2910
  %28 = icmp eq i8 %27, 0, !dbg !2909
  br i1 %28, label %29, label %30, !dbg !2911

29:                                               ; preds = %24, %21
  br label %30

30:                                               ; preds = %24, %29
  %31 = phi i8 [ 2, %29 ], [ %27, %24 ], !dbg !2912
  store i8 %31, i8* %5, align 1, !dbg !2912
  call void @llvm.dbg.value(metadata i32 undef, metadata !2870, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i8* %0, metadata !2879, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i32 %1, metadata !2878, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i32 %2, metadata !2869, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i32 0, metadata !2873, metadata !DIExpression()), !dbg !2881
  %32 = icmp sgt i32 %2, 0, !dbg !2913
  br i1 %32, label %33, label %41, !dbg !2914

33:                                               ; preds = %30
  %34 = load i32, i32* @gSFC_max_data_size, align 4, !dbg !2915
  %35 = urem i32 %1, %34, !dbg !2916
  call void @llvm.dbg.value(metadata i32 %35, metadata !2870, metadata !DIExpression()), !dbg !2881
  %36 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i32 0, i32 1
  %37 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i32 0, i32 2
  %38 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i32 0, i32 3
  %39 = add i32 %1, -1
  %40 = getelementptr inbounds i8, i8* %0, i32 -1
  br label %43, !dbg !2914

41:                                               ; preds = %73, %30
  %42 = phi i32 [ 0, %30 ], [ %74, %73 ], !dbg !2881
  br label %81, !dbg !2917

43:                                               ; preds = %77, %33
  %44 = phi i32 [ %34, %33 ], [ %80, %77 ], !dbg !2918
  %45 = phi i8* [ %0, %33 ], [ %78, %77 ]
  %46 = phi i32 [ %1, %33 ], [ %79, %77 ]
  %47 = phi i32 [ %2, %33 ], [ %75, %77 ]
  %48 = phi i32 [ %35, %33 ], [ 0, %77 ]
  %49 = phi i32 [ 0, %33 ], [ %74, %77 ]
  call void @llvm.dbg.value(metadata i8* %45, metadata !2879, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i32 %46, metadata !2878, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i32 %47, metadata !2869, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i32 %48, metadata !2870, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i32 %49, metadata !2873, metadata !DIExpression()), !dbg !2881
  %50 = sub i32 %44, %48, !dbg !2918
  %51 = icmp ugt i32 %47, %50, !dbg !2918
  %52 = select i1 %51, i32 %50, i32 %47, !dbg !2918
  call void @llvm.dbg.value(metadata i32 %52, metadata !2871, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i32 0, metadata !2870, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i8* %45, metadata !2880, metadata !DIExpression()), !dbg !2881
  %53 = lshr i32 %46, 16, !dbg !2920
  %54 = trunc i32 %53 to i8, !dbg !2921
  store i8 %54, i8* %36, align 1, !dbg !2922
  %55 = lshr i32 %46, 8, !dbg !2923
  %56 = trunc i32 %55 to i8, !dbg !2924
  store i8 %56, i8* %37, align 1, !dbg !2925
  %57 = trunc i32 %46 to i8, !dbg !2926
  store i8 %57, i8* %38, align 1, !dbg !2927
  %58 = call i32 @flash_wait_ready(i32 noundef 3) #16, !dbg !2928
  %59 = call i32 @flash_write_enable() #16, !dbg !2930
  %60 = call i32 @save_and_set_interrupt_mask() #14, !dbg !2931
  call void @llvm.dbg.value(metadata i32 %60, metadata !2877, metadata !DIExpression()), !dbg !2881
  call void @SF_DAL_FLAG_BUSY_SET() #14, !dbg !2932
  %61 = call i32 @sfc_write(i8* noundef nonnull %5, i32 noundef 4, i8* noundef %45, i32 noundef %52) #14, !dbg !2933
  call void @llvm.dbg.value(metadata i32 %61, metadata !2872, metadata !DIExpression()), !dbg !2881
  call void @restore_interrupt_mask(i32 noundef %60) #14, !dbg !2934
  br label %62, !dbg !2935

62:                                               ; preds = %62, %43
  %63 = load i8, i8* %40, align 1, !dbg !2936
  %64 = call i32 @SF_DAL_CheckReadyAndResume(i8* noundef null, i32 noundef %39, i8 noundef zeroext %63) #14, !dbg !2938
  call void @llvm.dbg.value(metadata i32 %64, metadata !2876, metadata !DIExpression()), !dbg !2881
  %65 = icmp eq i32 %64, 0, !dbg !2939
  br i1 %65, label %62, label %66, !dbg !2940, !llvm.loop !2941

66:                                               ; preds = %62
  %67 = icmp sgt i32 %61, 0, !dbg !2943
  br i1 %67, label %68, label %73, !dbg !2945

68:                                               ; preds = %66
  %69 = add nsw i32 %61, %49, !dbg !2946
  call void @llvm.dbg.value(metadata i32 %69, metadata !2873, metadata !DIExpression()), !dbg !2881
  %70 = icmp ult i32 %61, %52, !dbg !2948
  br i1 %70, label %71, label %73, !dbg !2950

71:                                               ; preds = %68
  %72 = call i32 @flash_write_disable() #16, !dbg !2951
  call void @__assert_func(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3.26, i32 0, i32 0), i32 noundef 942, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.flash_write, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)) #15, !dbg !2953
  unreachable, !dbg !2953

73:                                               ; preds = %68, %66
  %74 = phi i32 [ %69, %68 ], [ %49, %66 ], !dbg !2881
  call void @llvm.dbg.value(metadata i32 %74, metadata !2873, metadata !DIExpression()), !dbg !2881
  %75 = sub i32 %47, %52, !dbg !2954
  call void @llvm.dbg.value(metadata i32 %75, metadata !2869, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata !DIArgList(i32 %52, i32 %46), metadata !2878, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !2881
  call void @llvm.dbg.value(metadata !DIArgList(i8* %45, i32 %52), metadata !2879, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2881
  call void @llvm.dbg.value(metadata i32 0, metadata !2870, metadata !DIExpression()), !dbg !2881
  %76 = icmp sgt i32 %75, 0, !dbg !2913
  br i1 %76, label %77, label %41, !dbg !2914, !llvm.loop !2955

77:                                               ; preds = %73
  %78 = getelementptr inbounds i8, i8* %45, i32 %52, !dbg !2957
  call void @llvm.dbg.value(metadata i8* %78, metadata !2879, metadata !DIExpression()), !dbg !2881
  %79 = add i32 %52, %46, !dbg !2958
  call void @llvm.dbg.value(metadata i32 %79, metadata !2878, metadata !DIExpression()), !dbg !2881
  %80 = load i32, i32* @gSFC_max_data_size, align 4, !dbg !2918
  br label %43, !dbg !2914

81:                                               ; preds = %41, %81
  %82 = call i32 @SF_DAL_CheckDeviceReady(i8* noundef null, i32 noundef 0) #14, !dbg !2959
  call void @llvm.dbg.value(metadata i32 %82, metadata !2876, metadata !DIExpression()), !dbg !2881
  %83 = icmp eq i32 %82, -121, !dbg !2961
  br i1 %83, label %81, label %84, !dbg !2962, !llvm.loop !2963

84:                                               ; preds = %81
  %85 = call i32 @flash_write_disable() #16, !dbg !2965
  br label %86, !dbg !2966

86:                                               ; preds = %7, %3, %84
  %87 = phi i32 [ %42, %84 ], [ 0, %3 ], [ -1, %7 ], !dbg !2881
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %5) #13, !dbg !2967
  ret i32 %87, !dbg !2967
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @flash_erase_write_security_crc(i32 noundef %0) local_unnamed_addr #0 section ".ramTEXT" !dbg !2968 {
  %2 = alloca [5 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !2970, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i32 4, metadata !2971, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i32 0, metadata !2972, metadata !DIExpression()), !dbg !2974
  %3 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i32 0, i32 0, !dbg !2975
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %3) #13, !dbg !2975
  call void @llvm.dbg.declare(metadata [5 x i8]* %2, metadata !2973, metadata !DIExpression()), !dbg !2976
  %4 = and i32 %0, 4095, !dbg !2977
  %5 = icmp eq i32 %4, 0, !dbg !2977
  br i1 %5, label %6, label %29, !dbg !2979

6:                                                ; preds = %1
  %7 = add nuw i32 %0, 4, !dbg !2980
  %8 = load %struct.flash_info_t*, %struct.flash_info_t** @spi_chip_info, align 4, !dbg !2982
  %9 = getelementptr inbounds %struct.flash_info_t, %struct.flash_info_t* %8, i32 0, i32 3, !dbg !2983
  %10 = load i32, i32* %9, align 4, !dbg !2983
  %11 = getelementptr inbounds %struct.flash_info_t, %struct.flash_info_t* %8, i32 0, i32 4, !dbg !2984
  %12 = load i32, i32* %11, align 4, !dbg !2984
  %13 = mul i32 %12, %10, !dbg !2985
  %14 = icmp ugt i32 %7, %13, !dbg !2986
  br i1 %14, label %29, label %15, !dbg !2987

15:                                               ; preds = %6
  store i32 5, i32* @sf_drvier_status, align 4, !dbg !2988
  %16 = tail call i32 @flash_wait_ready(i32 noundef 2) #16, !dbg !2989
  %17 = tail call i32 @flash_erase_page(i32 noundef %0) #16, !dbg !2991
  store i8 2, i8* %3, align 1, !dbg !2992
  %18 = lshr i32 %0, 16, !dbg !2993
  %19 = trunc i32 %18 to i8, !dbg !2994
  %20 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i32 0, i32 1, !dbg !2995
  store i8 %19, i8* %20, align 1, !dbg !2996
  %21 = lshr i32 %0, 8, !dbg !2997
  %22 = trunc i32 %21 to i8, !dbg !2998
  %23 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i32 0, i32 2, !dbg !2999
  store i8 %22, i8* %23, align 1, !dbg !3000
  %24 = trunc i32 %0 to i8, !dbg !3001
  %25 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i32 0, i32 3, !dbg !3002
  store i8 %24, i8* %25, align 1, !dbg !3003
  %26 = tail call i32 @flash_write_enable() #16, !dbg !3004
  %27 = tail call i32 @flash_unprotect() #16, !dbg !3005
  %28 = call i32 @sfc_security_write_crc(i8* noundef nonnull %3, i32 noundef 4) #14, !dbg !3006
  call void @llvm.dbg.value(metadata i32 %28, metadata !2972, metadata !DIExpression()), !dbg !2974
  store i32 0, i32* @sf_drvier_status, align 4, !dbg !3007
  br label %29, !dbg !3008

29:                                               ; preds = %6, %1, %15
  %30 = phi i32 [ %28, %15 ], [ -1, %1 ], [ -1, %6 ], !dbg !2974
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %3) #13, !dbg !3009
  ret i32 %30, !dbg !3009
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @flash_erase_write(i8* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 section ".ramTEXT" !dbg !3010 {
  %4 = alloca [4096 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !3012, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i32 %1, metadata !3013, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i32 %2, metadata !3014, metadata !DIExpression()), !dbg !3029
  %5 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i32 0, i32 0, !dbg !3030
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %5) #13, !dbg !3030
  call void @llvm.dbg.declare(metadata [4096 x i8]* %4, metadata !3015, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i32 4096, metadata !3019, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i32 4095, metadata !3020, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i8* %0, metadata !3012, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i32 %1, metadata !3013, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i32 %2, metadata !3014, metadata !DIExpression()), !dbg !3029
  %6 = icmp sgt i32 %2, 0, !dbg !3032
  br i1 %6, label %7, label %43, !dbg !3033

7:                                                ; preds = %3, %37
  %8 = phi i8* [ %40, %37 ], [ %0, %3 ]
  %9 = phi i32 [ %41, %37 ], [ %1, %3 ]
  %10 = phi i32 [ %38, %37 ], [ %2, %3 ]
  call void @llvm.dbg.value(metadata i8* %8, metadata !3012, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i32 %9, metadata !3013, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i32 %10, metadata !3014, metadata !DIExpression()), !dbg !3029
  %11 = and i32 %9, 4095, !dbg !3034
  %12 = icmp ne i32 %11, 0, !dbg !3034
  %13 = icmp ult i32 %10, 4096
  %14 = select i1 %12, i1 true, i1 %13, !dbg !3035
  br i1 %14, label %15, label %30, !dbg !3035

15:                                               ; preds = %7
  %16 = and i32 %9, -4096, !dbg !3036
  call void @llvm.dbg.value(metadata i32 %16, metadata !3025, metadata !DIExpression()), !dbg !3037
  %17 = call i32 @flash_direct_read_nocache(i8* noundef nonnull %5, i32 noundef %16, i32 noundef 4096) #16, !dbg !3038
  %18 = icmp eq i32 %17, 4096, !dbg !3040
  br i1 %18, label %19, label %45, !dbg !3041

19:                                               ; preds = %15
  store i32 4, i32* @sf_drvier_status, align 4, !dbg !3042
  call void @llvm.dbg.value(metadata i32 %11, metadata !3021, metadata !DIExpression()), !dbg !3037
  %20 = sub nuw nsw i32 4096, %11, !dbg !3043
  %21 = icmp ugt i32 %10, %20, !dbg !3043
  %22 = select i1 %21, i32 %20, i32 %10, !dbg !3043
  call void @llvm.dbg.value(metadata i32 %22, metadata !3026, metadata !DIExpression()), !dbg !3037
  %23 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i32 0, i32 %11, !dbg !3044
  %24 = call i8* @memcpy(i8* noundef nonnull %23, i8* noundef %8, i32 noundef %22) #14, !dbg !3045
  %25 = call i32 @flash_erase(i32 noundef %16, i32 noundef 4096) #16, !dbg !3046
  %26 = call i32 @flash_write(i8* noundef nonnull %5, i32 noundef %16, i32 noundef 4096) #16, !dbg !3048
  %27 = icmp eq i32 %26, 4096, !dbg !3050
  br i1 %27, label %28, label %45, !dbg !3051

28:                                               ; preds = %19
  call void @llvm.dbg.value(metadata !DIArgList(i8* %8, i32 %22), metadata !3012, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3029
  call void @llvm.dbg.value(metadata !DIArgList(i32 %9, i32 %22), metadata !3013, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !3029
  %29 = sub nsw i32 %10, %22, !dbg !3052
  call void @llvm.dbg.value(metadata i32 %29, metadata !3014, metadata !DIExpression()), !dbg !3029
  br label %37

30:                                               ; preds = %7
  %31 = and i32 %10, -4096, !dbg !3053
  call void @llvm.dbg.value(metadata i32 %31, metadata !3027, metadata !DIExpression()), !dbg !3054
  %32 = call i32 @flash_erase(i32 noundef %9, i32 noundef %31) #16, !dbg !3055
  %33 = call i32 @flash_write(i8* noundef %8, i32 noundef %9, i32 noundef %31) #16, !dbg !3057
  %34 = icmp eq i32 %33, %31, !dbg !3059
  br i1 %34, label %35, label %43, !dbg !3060

35:                                               ; preds = %30
  call void @llvm.dbg.value(metadata !DIArgList(i8* %8, i32 %31), metadata !3012, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3029
  call void @llvm.dbg.value(metadata !DIArgList(i32 %9, i32 %31), metadata !3013, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !3029
  %36 = and i32 %10, 4095, !dbg !3061
  call void @llvm.dbg.value(metadata i8* %8, metadata !3012, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i32 %9, metadata !3013, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i32 %10, metadata !3014, metadata !DIExpression()), !dbg !3029
  br label %37

37:                                               ; preds = %35, %28
  %38 = phi i32 [ %29, %28 ], [ %36, %35 ]
  %39 = phi i32 [ %22, %28 ], [ %31, %35 ]
  %40 = getelementptr inbounds i8, i8* %8, i32 %39, !dbg !3062
  %41 = add i32 %39, %9, !dbg !3062
  call void @llvm.dbg.value(metadata i8* %40, metadata !3012, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i32 %41, metadata !3013, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i32 %38, metadata !3014, metadata !DIExpression()), !dbg !3029
  %42 = icmp sgt i32 %38, 0, !dbg !3032
  br i1 %42, label %7, label %43, !dbg !3033, !llvm.loop !3063

43:                                               ; preds = %37, %30, %3
  %44 = phi i32 [ 0, %3 ], [ -1, %30 ], [ 0, %37 ]
  store i32 0, i32* @sf_drvier_status, align 4, !dbg !3029
  br label %45, !dbg !3065

45:                                               ; preds = %19, %15, %43
  %46 = phi i32 [ %44, %43 ], [ -2, %15 ], [ -4, %19 ], !dbg !3029
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %5) #13, !dbg !3065
  ret i32 %46, !dbg !3065
}

; Function Attrs: noinline nounwind optsize
declare dso_local i32 @flash_direct_read_nocache(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #0 section ".ramTEXT"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @query_spi_flash_status() local_unnamed_addr #9 section ".ramTEXT" !dbg !3066 {
  %1 = load i32, i32* @sf_drvier_status, align 4, !dbg !3070
  switch i32 %1, label %3 [
    i32 -1, label %7
    i32 0, label %2
  ], !dbg !3072

2:                                                ; preds = %0
  br label %7, !dbg !3073

3:                                                ; preds = %0
  %4 = add i32 %1, -3, !dbg !3076
  %5 = icmp ult i32 %4, 3, !dbg !3076
  %6 = select i1 %5, i32 1, i32 2, !dbg !3078
  br label %7, !dbg !3078

7:                                                ; preds = %3, %0, %2
  %8 = phi i32 [ 0, %2 ], [ %1, %0 ], [ %6, %3 ], !dbg !3079
  ret i32 %8, !dbg !3080
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @get_current_count() local_unnamed_addr #0 !dbg !3081 {
  %1 = tail call i32 @GPT_return_current_count(i32 noundef 2) #14, !dbg !3082
  ret i32 %1, !dbg !3083
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_time(i32 noundef %0) local_unnamed_addr #0 !dbg !3084 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3086, metadata !DIExpression()), !dbg !3089
  %2 = tail call i32 @get_current_count() #16, !dbg !3090
  %3 = add i32 %2, %0, !dbg !3091
  %4 = xor i32 %3, -1, !dbg !3092
  call void @llvm.dbg.value(metadata i32 %3, metadata !3087, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3089
  %5 = tail call i32 @get_current_count() #16, !dbg !3093
  call void @llvm.dbg.value(metadata i32 %5, metadata !3088, metadata !DIExpression()), !dbg !3089
  %6 = add i32 %5, %4, !dbg !3094
  %7 = icmp slt i32 %6, 0, !dbg !3094
  br i1 %7, label %8, label %12, !dbg !3095

8:                                                ; preds = %1, %8
  %9 = tail call i32 @get_current_count() #16, !dbg !3096
  call void @llvm.dbg.value(metadata i32 %9, metadata !3088, metadata !DIExpression()), !dbg !3089
  %10 = add i32 %9, %4, !dbg !3094
  %11 = icmp slt i32 %10, 0, !dbg !3094
  br i1 %11, label %8, label %12, !dbg !3095, !llvm.loop !3098

12:                                               ; preds = %8, %1
  ret void, !dbg !3100
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_time_for_gpt4(i32 noundef %0) local_unnamed_addr #0 !dbg !3101 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3103, metadata !DIExpression()), !dbg !3106
  %2 = tail call i32 @get_current_gpt4_count() #16, !dbg !3107
  %3 = add i32 %2, %0, !dbg !3108
  %4 = xor i32 %3, -1, !dbg !3109
  call void @llvm.dbg.value(metadata i32 %3, metadata !3104, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3106
  %5 = tail call i32 @get_current_gpt4_count() #16, !dbg !3110
  call void @llvm.dbg.value(metadata i32 %5, metadata !3105, metadata !DIExpression()), !dbg !3106
  %6 = add i32 %5, %4, !dbg !3111
  %7 = icmp slt i32 %6, 0, !dbg !3111
  br i1 %7, label %8, label %12, !dbg !3112

8:                                                ; preds = %1, %8
  %9 = tail call i32 @get_current_gpt4_count() #16, !dbg !3113
  call void @llvm.dbg.value(metadata i32 %9, metadata !3105, metadata !DIExpression()), !dbg !3106
  %10 = add i32 %9, %4, !dbg !3111
  %11 = icmp slt i32 %10, 0, !dbg !3111
  br i1 %11, label %8, label %12, !dbg !3112, !llvm.loop !3115

12:                                               ; preds = %8, %1
  ret void, !dbg !3117
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @get_current_gpt4_count() local_unnamed_addr #0 !dbg !3118 {
  %1 = tail call i32 @GPT_return_current_count(i32 noundef 4) #14, !dbg !3119
  ret i32 %1, !dbg !3120
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_ms(i32 noundef %0) local_unnamed_addr #0 !dbg !3121 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3123, metadata !DIExpression()), !dbg !3125
  %2 = shl i32 %0, 5, !dbg !3126
  call void @llvm.dbg.value(metadata i32 %2, metadata !3124, metadata !DIExpression()), !dbg !3125
  %3 = mul i32 %0, 7, !dbg !3127
  %4 = udiv i32 %3, 10, !dbg !3128
  %5 = add i32 %4, %2, !dbg !3129
  call void @llvm.dbg.value(metadata i32 %5, metadata !3124, metadata !DIExpression()), !dbg !3125
  %6 = mul i32 %0, 6, !dbg !3130
  %7 = udiv i32 %6, 100, !dbg !3131
  %8 = add i32 %5, %7, !dbg !3132
  call void @llvm.dbg.value(metadata i32 %8, metadata !3124, metadata !DIExpression()), !dbg !3125
  %9 = shl i32 %0, 3, !dbg !3133
  %10 = udiv i32 %9, 1000, !dbg !3134
  %11 = add i32 %8, %10, !dbg !3135
  call void @llvm.dbg.value(metadata i32 %11, metadata !3124, metadata !DIExpression()), !dbg !3125
  tail call void @delay_time(i32 noundef %11) #16, !dbg !3136
  ret void, !dbg !3137
}

; Function Attrs: noinline nounwind optsize
define dso_local void @delay_us(i32 noundef %0) local_unnamed_addr #0 !dbg !3138 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3140, metadata !DIExpression()), !dbg !3143
  %2 = tail call i32 @top_mcu_freq_get() #14, !dbg !3144
  %3 = udiv i32 %2, 1000000, !dbg !3145
  call void @llvm.dbg.value(metadata i32 %3, metadata !3142, metadata !DIExpression()), !dbg !3143
  %4 = mul i32 %3, %0, !dbg !3146
  call void @llvm.dbg.value(metadata i32 %4, metadata !3141, metadata !DIExpression()), !dbg !3143
  tail call void @delay_time_for_gpt4(i32 noundef %4) #16, !dbg !3147
  ret void, !dbg !3148
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvTMR_init(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, void ()* noundef %3) local_unnamed_addr #0 !dbg !3149 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3153, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i32 %1, metadata !3154, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i1 %2, metadata !3155, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3157
  call void @llvm.dbg.value(metadata void ()* %3, metadata !3156, metadata !DIExpression()), !dbg !3157
  tail call void @GPT_Stop(i32 noundef %0) #14, !dbg !3158
  %5 = icmp eq i32 %0, 0, !dbg !3159
  br i1 %5, label %6, label %7, !dbg !3161

6:                                                ; preds = %4
  store volatile i32 0, i32* inttoptr (i32 -2096824304 to i32*), align 16, !dbg !3162
  br label %8, !dbg !3164

7:                                                ; preds = %4
  store volatile i32 0, i32* inttoptr (i32 -2096824288 to i32*), align 32, !dbg !3165
  br label %8

8:                                                ; preds = %7, %6
  %9 = phi i32 [ %0, %7 ], [ 0, %6 ]
  tail call void @GPT_init(i32 noundef %9, i32 noundef 1, void ()* noundef %3) #14, !dbg !3167
  tail call void @GPT_ResetTimer(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) #14, !dbg !3168
  ret void, !dbg !3169
}

; Function Attrs: noinline nounwind optsize
define dso_local void @TMR_Start(i32 noundef %0) local_unnamed_addr #0 !dbg !3170 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3172, metadata !DIExpression()), !dbg !3173
  tail call void @GPT_Start(i32 noundef %0) #14, !dbg !3174
  ret void, !dbg !3175
}

; Function Attrs: noinline nounwind optsize
define dso_local void @TMR_Stop(i32 noundef %0) local_unnamed_addr #0 !dbg !3176 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3178, metadata !DIExpression()), !dbg !3179
  tail call void @GPT_Stop(i32 noundef %0) #14, !dbg !3180
  ret void, !dbg !3181
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvGPT2Init() local_unnamed_addr #0 !dbg !3182 {
  tail call void @CM4_GPT2Init() #14, !dbg !3183
  ret void, !dbg !3184
}

; Function Attrs: noinline nounwind optsize
define dso_local void @drvGPT4Init() local_unnamed_addr #0 !dbg !3185 {
  tail call void @CM4_GPT4Init() #14, !dbg !3186
  ret void, !dbg !3187
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @clear_TMR_INT_status_bit(i32 noundef %0) local_unnamed_addr #5 !dbg !3188 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3190, metadata !DIExpression()), !dbg !3191
  switch i32 %0, label %5 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !3192

2:                                                ; preds = %1
  br label %3, !dbg !3193

3:                                                ; preds = %1, %2
  %4 = phi i32 [ 2, %2 ], [ 1, %1 ]
  store volatile i32 %4, i32* inttoptr (i32 -2096824320 to i32*), align 65536, !dbg !3191
  br label %5, !dbg !3196

5:                                                ; preds = %3, %1
  ret void, !dbg !3196
}

; Function Attrs: noinline nounwind optsize
define dso_local void @top_xtal_init() local_unnamed_addr #0 !dbg !3197 {
  call void @llvm.dbg.value(metadata i32 0, metadata !3199, metadata !DIExpression()), !dbg !3201
  %1 = load volatile i32, i32* inttoptr (i32 -2097118784 to i32*), align 64, !dbg !3202
  call void @llvm.dbg.value(metadata i32 %1, metadata !3200, metadata !DIExpression()), !dbg !3201
  %2 = lshr i32 %1, 13, !dbg !3203
  %3 = and i32 %2, 7, !dbg !3204
  call void @llvm.dbg.value(metadata i32 %3, metadata !3200, metadata !DIExpression()), !dbg !3201
  %4 = load volatile i32, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !3205
  call void @llvm.dbg.value(metadata i32 %4, metadata !3199, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 %4, metadata !3199, metadata !DIExpression(DW_OP_constu, 18446744073709549568, DW_OP_and, DW_OP_stack_value)), !dbg !3201
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init, i32 0, i32 %3, !dbg !3206
  %6 = load i32, i32* %5, align 4, !dbg !3206
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init.1, i32 0, i32 %3, !dbg !3206
  %8 = load i32, i32* %7, align 4, !dbg !3206
  %9 = and i32 %4, -2048, !dbg !3207
  call void @llvm.dbg.value(metadata i32 %9, metadata !3199, metadata !DIExpression()), !dbg !3201
  store i32 %6, i32* @gXtalFreq, align 4, !dbg !3208
  %10 = or i32 %9, %8, !dbg !3208
  call void @llvm.dbg.value(metadata i32 %10, metadata !3199, metadata !DIExpression()), !dbg !3201
  store volatile i32 %10, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !3210
  %11 = load i32, i32* @gXtalFreq, align 4, !dbg !3211
  store i32 %11, i32* @gCpuFrequency, align 4, !dbg !3212
  tail call void @SystemCoreClockUpdate() #14, !dbg !3213
  %12 = load i32, i32* @SystemCoreClock, align 4, !dbg !3214
  %13 = udiv i32 %12, 1000, !dbg !3215
  %14 = tail call i32 @SysTick_Set(i32 noundef %13) #14, !dbg !3216
  ret void, !dbg !3217
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_xtal_freq_get() local_unnamed_addr #9 !dbg !3218 {
  %1 = load i32, i32* @gXtalFreq, align 4, !dbg !3219
  ret i32 %1, !dbg !3220
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_mcu_freq_get() local_unnamed_addr #9 !dbg !3221 {
  %1 = load i32, i32* @gCpuFrequency, align 4, !dbg !3222
  ret i32 %1, !dbg !3223
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON() local_unnamed_addr #10 !dbg !3224 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3228
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3228
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3226, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !3227, metadata !DIExpression()), !dbg !3230
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3231
  store volatile i32 %3, i32* %1, align 4, !dbg !3232
  %4 = load volatile i32, i32* %1, align 4, !dbg !3233
  %5 = lshr i32 %4, 28, !dbg !3234
  %6 = and i32 %5, 3, !dbg !3235
  store volatile i32 %6, i32* %1, align 4, !dbg !3236
  %7 = load volatile i32, i32* %1, align 4, !dbg !3237
  %8 = icmp eq i32 %7, 0, !dbg !3239
  br i1 %8, label %9, label %22, !dbg !3240

9:                                                ; preds = %0
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3241
  store volatile i32 %10, i32* %1, align 4, !dbg !3243
  %11 = load volatile i32, i32* %1, align 4, !dbg !3244
  %12 = and i32 %11, -16777217, !dbg !3245
  store volatile i32 %12, i32* %1, align 4, !dbg !3246
  %13 = load volatile i32, i32* %1, align 4, !dbg !3247
  %14 = or i32 %13, 536870912, !dbg !3248
  store volatile i32 %14, i32* %1, align 4, !dbg !3249
  %15 = load volatile i32, i32* %1, align 4, !dbg !3250
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %15) #16, !dbg !3251
  br label %16, !dbg !3252

16:                                               ; preds = %16, %9
  %17 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3253
  store volatile i32 %17, i32* %1, align 4, !dbg !3255
  %18 = load volatile i32, i32* %1, align 4, !dbg !3256
  %19 = and i32 %18, 134217728, !dbg !3257
  store volatile i32 %19, i32* %1, align 4, !dbg !3258
  %20 = load volatile i32, i32* %1, align 4, !dbg !3259
  %21 = icmp eq i32 %20, 0, !dbg !3260
  br i1 %21, label %16, label %22, !dbg !3261, !llvm.loop !3262

22:                                               ; preds = %16, %0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3264
  ret void, !dbg !3264
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @cmnReadRegister32(i8* noundef %0) unnamed_addr #7 !dbg !3265 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3272, metadata !DIExpression()), !dbg !3273
  %2 = bitcast i8* %0 to i32*, !dbg !3274
  %3 = load volatile i32, i32* %2, align 4, !dbg !3275
  ret i32 %3, !dbg !3276
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @cmnWriteRegister32(i8* noundef %0, i32 noundef %1) unnamed_addr #5 !dbg !3277 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3281, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i32 %1, metadata !3282, metadata !DIExpression()), !dbg !3283
  %3 = bitcast i8* %0 to i32*, !dbg !3284
  store volatile i32 %1, i32* %3, align 4, !dbg !3285
  ret void, !dbg !3286
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON_PLL2ON(i8 noundef zeroext %0) local_unnamed_addr #10 !dbg !3287 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8 %0, metadata !3291, metadata !DIExpression()), !dbg !3294
  %3 = bitcast i32* %2 to i8*, !dbg !3295
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !3295
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3292, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !3293, metadata !DIExpression()), !dbg !3294
  %4 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3297
  store volatile i32 %4, i32* %2, align 4, !dbg !3298
  %5 = load volatile i32, i32* %2, align 4, !dbg !3299
  %6 = lshr i32 %5, 28, !dbg !3300
  %7 = and i32 %6, 3, !dbg !3301
  store volatile i32 %7, i32* %2, align 4, !dbg !3302
  %8 = load volatile i32, i32* %2, align 4, !dbg !3303
  %9 = icmp eq i32 %8, 3, !dbg !3305
  br i1 %9, label %38, label %10, !dbg !3306

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3307
  store volatile i32 %11, i32* %2, align 4, !dbg !3309
  %12 = load volatile i32, i32* %2, align 4, !dbg !3310
  %13 = and i32 %12, -262145, !dbg !3311
  store volatile i32 %13, i32* %2, align 4, !dbg !3312
  %14 = load volatile i32, i32* %2, align 4, !dbg !3313
  %15 = and i32 %14, -16777217, !dbg !3314
  store volatile i32 %15, i32* %2, align 4, !dbg !3315
  %16 = load volatile i32, i32* %2, align 4, !dbg !3316
  store volatile i32 %16, i32* %2, align 4, !dbg !3317
  %17 = load volatile i32, i32* %2, align 4, !dbg !3318
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %17) #16, !dbg !3319
  %18 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3320
  store volatile i32 %18, i32* %2, align 4, !dbg !3321
  %19 = load volatile i32, i32* %2, align 4, !dbg !3322
  %20 = and i32 %19, -805306369, !dbg !3323
  store volatile i32 %20, i32* %2, align 4, !dbg !3324
  %21 = load volatile i32, i32* %2, align 4, !dbg !3325
  %22 = and i32 %21, -16777217, !dbg !3326
  store volatile i32 %22, i32* %2, align 4, !dbg !3327
  %23 = load volatile i32, i32* %2, align 4, !dbg !3328
  %24 = or i32 %23, 805306368, !dbg !3329
  store volatile i32 %24, i32* %2, align 4, !dbg !3330
  %25 = load volatile i32, i32* %2, align 4, !dbg !3331
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %25) #16, !dbg !3332
  br label %26, !dbg !3333

26:                                               ; preds = %26, %10
  %27 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3334
  store volatile i32 %27, i32* %2, align 4, !dbg !3336
  %28 = load volatile i32, i32* %2, align 4, !dbg !3337
  %29 = and i32 %28, 67108864, !dbg !3338
  store volatile i32 %29, i32* %2, align 4, !dbg !3339
  %30 = load volatile i32, i32* %2, align 4, !dbg !3340
  %31 = icmp eq i32 %30, 0, !dbg !3341
  br i1 %31, label %26, label %32, !dbg !3342, !llvm.loop !3343

32:                                               ; preds = %26
  %33 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3345
  store volatile i32 %33, i32* %2, align 4, !dbg !3346
  %34 = load volatile i32, i32* %2, align 4, !dbg !3347
  %35 = and i32 %34, -262145, !dbg !3348
  store volatile i32 %35, i32* %2, align 4, !dbg !3349
  %36 = load volatile i32, i32* %2, align 4, !dbg !3350
  %37 = and i32 %36, -16777217, !dbg !3351
  store volatile i32 %37, i32* %2, align 4, !dbg !3352
  br label %38, !dbg !3353

38:                                               ; preds = %32, %1
  %39 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3354
  store volatile i32 %39, i32* %2, align 4, !dbg !3355
  %40 = icmp eq i8 %0, 0, !dbg !3356
  %41 = load volatile i32, i32* %2, align 4, !dbg !3358
  br i1 %40, label %44, label %42, !dbg !3359

42:                                               ; preds = %38
  %43 = or i32 %41, 262144, !dbg !3360
  store volatile i32 %43, i32* %2, align 4, !dbg !3362
  br label %45, !dbg !3363

44:                                               ; preds = %38
  store volatile i32 %41, i32* %2, align 4, !dbg !3364
  br label %45

45:                                               ; preds = %44, %42
  %46 = load volatile i32, i32* %2, align 4, !dbg !3366
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %46) #16, !dbg !3367
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !3368
  ret void, !dbg !3368
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1OFF_PLL2OFF() local_unnamed_addr #10 !dbg !3369 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3373
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3373
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3371, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !3372, metadata !DIExpression()), !dbg !3375
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3376
  store volatile i32 %3, i32* %1, align 4, !dbg !3377
  %4 = load volatile i32, i32* %1, align 4, !dbg !3378
  %5 = and i32 %4, -805306369, !dbg !3379
  store volatile i32 %5, i32* %1, align 4, !dbg !3380
  %6 = load volatile i32, i32* %1, align 4, !dbg !3381
  %7 = and i32 %6, -16777217, !dbg !3382
  store volatile i32 %7, i32* %1, align 4, !dbg !3383
  %8 = load volatile i32, i32* %1, align 4, !dbg !3384
  store volatile i32 %8, i32* %1, align 4, !dbg !3385
  %9 = load volatile i32, i32* %1, align 4, !dbg !3386
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %9) #16, !dbg !3387
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #16, !dbg !3388
  store volatile i32 %10, i32* %1, align 4, !dbg !3389
  %11 = load volatile i32, i32* %1, align 4, !dbg !3390
  %12 = and i32 %11, -262145, !dbg !3391
  store volatile i32 %12, i32* %1, align 4, !dbg !3392
  %13 = load volatile i32, i32* %1, align 4, !dbg !3393
  %14 = and i32 %13, -16777217, !dbg !3394
  store volatile i32 %14, i32* %1, align 4, !dbg !3395
  %15 = load volatile i32, i32* %1, align 4, !dbg !3396
  store volatile i32 %15, i32* %1, align 4, !dbg !3397
  %16 = load volatile i32, i32* %1, align 4, !dbg !3398
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %16) #16, !dbg !3399
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3400
  ret void, !dbg !3400
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureToXtal() local_unnamed_addr #0 !dbg !3401 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3405
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3405
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3403, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !3404, metadata !DIExpression()), !dbg !3407
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3408
  store volatile i32 %3, i32* %1, align 4, !dbg !3409
  %4 = load volatile i32, i32* %1, align 4, !dbg !3410
  %5 = and i32 %4, -8, !dbg !3411
  store volatile i32 %5, i32* %1, align 4, !dbg !3412
  %6 = load volatile i32, i32* %1, align 4, !dbg !3413
  store volatile i32 %6, i32* %1, align 4, !dbg !3414
  %7 = load volatile i32, i32* %1, align 4, !dbg !3415
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #16, !dbg !3416
  %8 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3417
  store volatile i32 %8, i32* %1, align 4, !dbg !3418
  %9 = load volatile i32, i32* %1, align 4, !dbg !3419
  %10 = and i32 %9, -49153, !dbg !3420
  store volatile i32 %10, i32* %1, align 4, !dbg !3421
  %11 = load volatile i32, i32* %1, align 4, !dbg !3422
  store volatile i32 %11, i32* %1, align 4, !dbg !3423
  %12 = load volatile i32, i32* %1, align 4, !dbg !3424
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %12) #16, !dbg !3425
  br label %13, !dbg !3426

13:                                               ; preds = %13, %0
  %14 = load volatile i32, i32* %1, align 4, !dbg !3427
  %15 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3428
  %16 = icmp eq i32 %14, %15, !dbg !3429
  br i1 %16, label %17, label %13, !dbg !3426, !llvm.loop !3430

17:                                               ; preds = %13
  %18 = tail call i32 @top_xtal_freq_get() #16, !dbg !3432
  store i32 %18, i32* @gCpuFrequency, align 4, !dbg !3433
  tail call void @SystemCoreClockUpdate() #14, !dbg !3434
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !3435
  %20 = udiv i32 %19, 1000, !dbg !3436
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #14, !dbg !3437
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3438
  ret void, !dbg !3438
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo192M() local_unnamed_addr #0 !dbg !3439 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3443
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3443
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3441, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !3442, metadata !DIExpression()), !dbg !3445
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 1) #16, !dbg !3446
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3447
  store volatile i32 %3, i32* %1, align 4, !dbg !3448
  %4 = load volatile i32, i32* %1, align 4, !dbg !3449
  %5 = and i32 %4, -49153, !dbg !3450
  store volatile i32 %5, i32* %1, align 4, !dbg !3451
  %6 = load volatile i32, i32* %1, align 4, !dbg !3452
  %7 = or i32 %6, 16384, !dbg !3453
  store volatile i32 %7, i32* %1, align 4, !dbg !3454
  %8 = load volatile i32, i32* %1, align 4, !dbg !3455
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #16, !dbg !3456
  br label %9, !dbg !3457

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !3458
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3459
  %12 = icmp eq i32 %10, %11, !dbg !3460
  br i1 %12, label %13, label %9, !dbg !3457, !llvm.loop !3461

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3463
  store volatile i32 %14, i32* %1, align 4, !dbg !3464
  %15 = load volatile i32, i32* %1, align 4, !dbg !3465
  %16 = and i32 %15, -1009, !dbg !3466
  store volatile i32 %16, i32* %1, align 4, !dbg !3467
  %17 = load volatile i32, i32* %1, align 4, !dbg !3468
  %18 = or i32 %17, 128, !dbg !3469
  store volatile i32 %18, i32* %1, align 4, !dbg !3470
  %19 = load volatile i32, i32* %1, align 4, !dbg !3471
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #16, !dbg !3472
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3473
  store volatile i32 %20, i32* %1, align 4, !dbg !3474
  %21 = load volatile i32, i32* %1, align 4, !dbg !3475
  %22 = and i32 %21, -8, !dbg !3476
  store volatile i32 %22, i32* %1, align 4, !dbg !3477
  %23 = load volatile i32, i32* %1, align 4, !dbg !3478
  %24 = or i32 %23, 4, !dbg !3479
  store volatile i32 %24, i32* %1, align 4, !dbg !3480
  %25 = load volatile i32, i32* %1, align 4, !dbg !3481
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #16, !dbg !3482
  store i32 192000000, i32* @gCpuFrequency, align 4, !dbg !3483
  tail call void @SystemCoreClockUpdate() #14, !dbg !3484
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !3485
  %27 = udiv i32 %26, 1000, !dbg !3486
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #14, !dbg !3487
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3488
  ret void, !dbg !3488
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo160M() local_unnamed_addr #0 !dbg !3489 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3493
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3493
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3491, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !3492, metadata !DIExpression()), !dbg !3495
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 0) #16, !dbg !3496
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3497
  store volatile i32 %3, i32* %1, align 4, !dbg !3498
  %4 = load volatile i32, i32* %1, align 4, !dbg !3499
  %5 = and i32 %4, -49153, !dbg !3500
  store volatile i32 %5, i32* %1, align 4, !dbg !3501
  %6 = load volatile i32, i32* %1, align 4, !dbg !3502
  %7 = or i32 %6, 32768, !dbg !3503
  store volatile i32 %7, i32* %1, align 4, !dbg !3504
  %8 = load volatile i32, i32* %1, align 4, !dbg !3505
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #16, !dbg !3506
  br label %9, !dbg !3507

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !3508
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3509
  %12 = icmp eq i32 %10, %11, !dbg !3510
  br i1 %12, label %13, label %9, !dbg !3507, !llvm.loop !3511

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3513
  store volatile i32 %14, i32* %1, align 4, !dbg !3514
  %15 = load volatile i32, i32* %1, align 4, !dbg !3515
  %16 = and i32 %15, -1009, !dbg !3516
  store volatile i32 %16, i32* %1, align 4, !dbg !3517
  %17 = load volatile i32, i32* %1, align 4, !dbg !3518
  %18 = or i32 %17, 32, !dbg !3519
  store volatile i32 %18, i32* %1, align 4, !dbg !3520
  %19 = load volatile i32, i32* %1, align 4, !dbg !3521
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #16, !dbg !3522
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3523
  store volatile i32 %20, i32* %1, align 4, !dbg !3524
  %21 = load volatile i32, i32* %1, align 4, !dbg !3525
  %22 = and i32 %21, -8, !dbg !3526
  store volatile i32 %22, i32* %1, align 4, !dbg !3527
  %23 = load volatile i32, i32* %1, align 4, !dbg !3528
  %24 = or i32 %23, 4, !dbg !3529
  store volatile i32 %24, i32* %1, align 4, !dbg !3530
  %25 = load volatile i32, i32* %1, align 4, !dbg !3531
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #16, !dbg !3532
  store i32 160000000, i32* @gCpuFrequency, align 4, !dbg !3533
  tail call void @SystemCoreClockUpdate() #14, !dbg !3534
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !3535
  %27 = udiv i32 %26, 1000, !dbg !3536
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #14, !dbg !3537
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3538
  ret void, !dbg !3538
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo64M() local_unnamed_addr #0 !dbg !3539 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3543
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3543
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3541, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !3542, metadata !DIExpression()), !dbg !3545
  tail call void @cmnPLL1ON() #16, !dbg !3546
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3547
  store volatile i32 %3, i32* %1, align 4, !dbg !3548
  %4 = load volatile i32, i32* %1, align 4, !dbg !3549
  %5 = and i32 %4, -49153, !dbg !3550
  store volatile i32 %5, i32* %1, align 4, !dbg !3551
  %6 = load volatile i32, i32* %1, align 4, !dbg !3552
  store volatile i32 %6, i32* %1, align 4, !dbg !3553
  %7 = load volatile i32, i32* %1, align 4, !dbg !3554
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #16, !dbg !3555
  br label %8, !dbg !3556

8:                                                ; preds = %8, %0
  %9 = load volatile i32, i32* %1, align 4, !dbg !3557
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3558
  %11 = icmp eq i32 %9, %10, !dbg !3559
  br i1 %11, label %12, label %8, !dbg !3556, !llvm.loop !3560

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #16, !dbg !3562
  store volatile i32 %13, i32* %1, align 4, !dbg !3563
  %14 = load volatile i32, i32* %1, align 4, !dbg !3564
  %15 = and i32 %14, -8, !dbg !3565
  store volatile i32 %15, i32* %1, align 4, !dbg !3566
  %16 = load volatile i32, i32* %1, align 4, !dbg !3567
  %17 = or i32 %16, 2, !dbg !3568
  store volatile i32 %17, i32* %1, align 4, !dbg !3569
  %18 = load volatile i32, i32* %1, align 4, !dbg !3570
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %18) #16, !dbg !3571
  store i32 64000000, i32* @gCpuFrequency, align 4, !dbg !3572
  tail call void @SystemCoreClockUpdate() #14, !dbg !3573
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !3574
  %20 = udiv i32 %19, 1000, !dbg !3575
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #14, !dbg !3576
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3577
  ret void, !dbg !3577
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnSerialFlashClkConfToXtal() local_unnamed_addr #10 section ".ramTEXT" !dbg !3578 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3582
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3582
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3580, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118796 to i32*), metadata !3581, metadata !DIExpression()), !dbg !3584
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*)) #16, !dbg !3585
  store volatile i32 %3, i32* %1, align 4, !dbg !3586
  %4 = load volatile i32, i32* %1, align 4, !dbg !3587
  %5 = and i32 %4, -24577, !dbg !3588
  store volatile i32 %5, i32* %1, align 4, !dbg !3589
  %6 = load volatile i32, i32* %1, align 4, !dbg !3590
  store volatile i32 %6, i32* %1, align 4, !dbg !3591
  %7 = load volatile i32, i32* %1, align 4, !dbg !3592
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*), i32 noundef %7) #16, !dbg !3593
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3594
  ret void, !dbg !3594
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnSerialFlashClkConfTo64M() local_unnamed_addr #10 section ".ramTEXT" !dbg !3595 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !3605
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !3605
  call void @llvm.dbg.declare(metadata i32* %1, metadata !3597, metadata !DIExpression()), !dbg !3606
  store volatile i32 0, i32* %1, align 4, !dbg !3606
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118796 to i32*), metadata !3598, metadata !DIExpression()), !dbg !3607
  tail call void @cmnPLL1ON() #16, !dbg !3608
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*)) #16, !dbg !3609
  store volatile i32 %3, i32* %1, align 4, !dbg !3610
  %4 = load volatile i32, i32* %1, align 4, !dbg !3611
  %5 = and i32 %4, -24577, !dbg !3612
  store volatile i32 %5, i32* %1, align 4, !dbg !3613
  %6 = load volatile i32, i32* %1, align 4, !dbg !3614
  %7 = or i32 %6, 8192, !dbg !3615
  store volatile i32 %7, i32* %1, align 4, !dbg !3616
  %8 = load volatile i32, i32* %1, align 4, !dbg !3617
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*), i32 noundef %8) #16, !dbg !3618
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2096693240 to i32*), metadata !3599, metadata !DIExpression()), !dbg !3619
  %9 = load volatile i32, i32* inttoptr (i32 -2096693240 to i32*), align 8, !dbg !3620
  %10 = and i32 %9, -4, !dbg !3620
  store volatile i32 %10, i32* inttoptr (i32 -2096693240 to i32*), align 8, !dbg !3620
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2096693240 to i32*), metadata !3601, metadata !DIExpression()), !dbg !3621
  %11 = load volatile i32, i32* inttoptr (i32 -2096693240 to i32*), align 8, !dbg !3622
  %12 = or i32 %11, 16, !dbg !3622
  store volatile i32 %12, i32* inttoptr (i32 -2096693240 to i32*), align 8, !dbg !3622
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2096693208 to i32*), metadata !3603, metadata !DIExpression()), !dbg !3623
  %13 = load volatile i32, i32* inttoptr (i32 -2096693208 to i32*), align 8, !dbg !3624
  %14 = and i32 %13, -64, !dbg !3624
  %15 = or i32 %14, 24, !dbg !3624
  store volatile i32 %15, i32* inttoptr (i32 -2096693208 to i32*), align 8, !dbg !3624
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !3625
  ret void, !dbg !3625
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc() local_unnamed_addr #7 !dbg !3626 {
  %1 = tail call i32 @getc_nowait() #16, !dbg !3629
  call void @llvm.dbg.value(metadata i32 %1, metadata !3628, metadata !DIExpression()), !dbg !3630
  ret i32 %1, !dbg !3631
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc_nowait() local_unnamed_addr #7 !dbg !3632 {
  %1 = load volatile i32, i32* inttoptr (i32 -2096955372 to i32*), align 4, !dbg !3635
  %2 = and i32 %1, 1, !dbg !3637
  %3 = icmp eq i32 %2, 0, !dbg !3637
  br i1 %3, label %7, label %4, !dbg !3638

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 -2096955392 to i32*), align 65536, !dbg !3639
  %6 = and i32 %5, 255, !dbg !3641
  call void @llvm.dbg.value(metadata i32 %5, metadata !3634, metadata !DIExpression()), !dbg !3642
  br label %7, !dbg !3643

7:                                                ; preds = %0, %4
  %8 = phi i32 [ %6, %4 ], [ -1, %0 ], !dbg !3644
  ret i32 %8, !dbg !3645
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_output_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #5 !dbg !3646 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3651, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata i8 %1, metadata !3652, metadata !DIExpression()), !dbg !3654
  %3 = icmp eq i32 %0, 0, !dbg !3655
  %4 = select i1 %3, i32 -2096955392, i32 -2096889856, !dbg !3655
  call void @llvm.dbg.value(metadata i32 %4, metadata !3653, metadata !DIExpression()), !dbg !3654
  %5 = or i32 %4, 20
  %6 = inttoptr i32 %5 to i32*
  br label %7, !dbg !3656

7:                                                ; preds = %7, %2
  %8 = load volatile i32, i32* %6, align 4, !dbg !3657
  %9 = and i32 %8, 32, !dbg !3658
  %10 = icmp eq i32 %9, 0, !dbg !3659
  br i1 %10, label %7, label %11, !dbg !3656, !llvm.loop !3660

11:                                               ; preds = %7
  %12 = zext i8 %1 to i32, !dbg !3662
  %13 = inttoptr i32 %4 to i32*, !dbg !3663
  store volatile i32 %12, i32* %13, align 65536, !dbg !3664
  ret void, !dbg !3665
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @uart_input_char(i32 noundef %0) local_unnamed_addr #5 !dbg !3666 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3670, metadata !DIExpression()), !dbg !3673
  %2 = icmp eq i32 %0, 0, !dbg !3674
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3674
  call void @llvm.dbg.value(metadata i32 %3, metadata !3671, metadata !DIExpression()), !dbg !3673
  %4 = or i32 %3, 20
  %5 = inttoptr i32 %4 to i32*
  br label %6, !dbg !3675

6:                                                ; preds = %6, %1
  %7 = load volatile i32, i32* %5, align 4, !dbg !3676
  %8 = and i32 %7, 1, !dbg !3677
  %9 = icmp eq i32 %8, 0, !dbg !3678
  br i1 %9, label %6, label %10, !dbg !3675, !llvm.loop !3679

10:                                               ; preds = %6
  %11 = inttoptr i32 %3 to i32*, !dbg !3681
  %12 = load volatile i32, i32* %11, align 65536, !dbg !3681
  %13 = trunc i32 %12 to i8, !dbg !3681
  call void @llvm.dbg.value(metadata i8 %13, metadata !3672, metadata !DIExpression()), !dbg !3673
  ret i8 %13, !dbg !3682
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @uart_input_char_unblocking(i32 noundef %0) local_unnamed_addr #7 !dbg !3683 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3687, metadata !DIExpression()), !dbg !3690
  %2 = icmp eq i32 %0, 0, !dbg !3691
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3691
  call void @llvm.dbg.value(metadata i32 %3, metadata !3688, metadata !DIExpression()), !dbg !3690
  %4 = or i32 %3, 20, !dbg !3692
  %5 = inttoptr i32 %4 to i32*, !dbg !3692
  %6 = load volatile i32, i32* %5, align 4, !dbg !3692
  %7 = and i32 %6, 1, !dbg !3694
  %8 = icmp eq i32 %7, 0, !dbg !3694
  br i1 %8, label %13, label %9, !dbg !3695

9:                                                ; preds = %1
  %10 = inttoptr i32 %3 to i32*, !dbg !3696
  %11 = load volatile i32, i32* %10, align 65536, !dbg !3696
  %12 = and i32 %11, 255, !dbg !3698
  call void @llvm.dbg.value(metadata i32 %11, metadata !3689, metadata !DIExpression()), !dbg !3690
  br label %13, !dbg !3699

13:                                               ; preds = %1, %9
  %14 = phi i32 [ %12, %9 ], [ -1, %1 ], !dbg !3700
  ret i32 %14, !dbg !3701
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_HWInit(i32 noundef %0) local_unnamed_addr #0 !dbg !3702 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3706, metadata !DIExpression()), !dbg !3707
  tail call void @halUART_SetFormat(i32 noundef %0, i32 noundef 115200, i16 noundef zeroext 3, i16 noundef zeroext 0, i16 noundef zeroext 0) #16, !dbg !3708
  switch i32 %0, label %7 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !3709

2:                                                ; preds = %1
  br label %3, !dbg !3710

3:                                                ; preds = %1, %2
  %4 = phi i32* [ inttoptr (i32 -2096889780 to i32*), %2 ], [ inttoptr (i32 -2096955316 to i32*), %1 ]
  %5 = load volatile i32, i32* %4, align 4, !dbg !3714
  %6 = or i32 %5, 1, !dbg !3714
  store volatile i32 %6, i32* %4, align 4, !dbg !3714
  br label %7, !dbg !3715

7:                                                ; preds = %3, %1
  ret void, !dbg !3715
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_SetFormat(i32 noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #0 !dbg !3716 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3720, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata i32 %1, metadata !3721, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata i16 %2, metadata !3722, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata i16 %3, metadata !3723, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata i16 %4, metadata !3724, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata i32 -2096955392, metadata !3726, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, metadata !3733, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, metadata !3735, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i32 0, metadata !3736, metadata !DIExpression()), !dbg !3737
  %6 = tail call i32 @top_xtal_freq_get() #14, !dbg !3740
  store i32 %6, i32* @gUartClkFreq, align 4, !dbg !3741
  %7 = icmp eq i32 %0, 1, !dbg !3742
  %8 = select i1 %7, i32 -2096889856, i32 -2096955392, !dbg !3742
  call void @llvm.dbg.value(metadata i32 %8, metadata !3726, metadata !DIExpression()), !dbg !3737
  %9 = or i32 %8, 36, !dbg !3743
  %10 = inttoptr i32 %9 to i32*, !dbg !3743
  store volatile i32 3, i32* %10, align 4, !dbg !3744
  %11 = or i32 %8, 12, !dbg !3745
  %12 = inttoptr i32 %11 to i32*, !dbg !3745
  %13 = load volatile i32, i32* %12, align 4, !dbg !3745
  call void @llvm.dbg.value(metadata i32 %13, metadata !3728, metadata !DIExpression()), !dbg !3737
  %14 = or i32 %13, 128, !dbg !3746
  store volatile i32 %14, i32* %12, align 4, !dbg !3747
  %15 = load i32, i32* @gUartClkFreq, align 4, !dbg !3748
  %16 = udiv i32 %15, %1, !dbg !3749
  call void @llvm.dbg.value(metadata i32 %16, metadata !3727, metadata !DIExpression()), !dbg !3737
  %17 = lshr i32 %16, 8, !dbg !3750
  %18 = add nuw nsw i32 %17, 1, !dbg !3751
  call void @llvm.dbg.value(metadata i32 %18, metadata !3729, metadata !DIExpression()), !dbg !3737
  %19 = udiv i32 %16, %18, !dbg !3752
  %20 = add i32 %19, -1, !dbg !3754
  call void @llvm.dbg.value(metadata i32 %20, metadata !3730, metadata !DIExpression()), !dbg !3737
  %21 = icmp eq i32 %20, 3, !dbg !3755
  %22 = lshr i32 %20, 1, !dbg !3757
  %23 = add nsw i32 %22, -1, !dbg !3757
  %24 = select i1 %21, i32 0, i32 %23, !dbg !3757
  call void @llvm.dbg.value(metadata i32 %24, metadata !3731, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata i32 undef, metadata !3736, metadata !DIExpression()), !dbg !3737
  %25 = mul i32 %15, 10, !dbg !3758
  %26 = udiv i32 %25, %1, !dbg !3759
  %27 = udiv i32 %26, %16, !dbg !3760
  %28 = mul i32 %19, -10, !dbg !3761
  %29 = add i32 %27, %28, !dbg !3762
  %30 = urem i32 %29, 10, !dbg !3763
  call void @llvm.dbg.value(metadata i32 %30, metadata !3732, metadata !DIExpression()), !dbg !3737
  %31 = and i32 %18, 255, !dbg !3764
  %32 = inttoptr i32 %8 to i32*, !dbg !3765
  store volatile i32 %31, i32* %32, align 65536, !dbg !3766
  %33 = lshr i32 %18, 8, !dbg !3767
  %34 = and i32 %33, 255, !dbg !3768
  %35 = or i32 %8, 4, !dbg !3769
  %36 = inttoptr i32 %35 to i32*, !dbg !3769
  store volatile i32 %34, i32* %36, align 4, !dbg !3770
  %37 = or i32 %8, 40, !dbg !3771
  %38 = inttoptr i32 %37 to i32*, !dbg !3771
  store volatile i32 %20, i32* %38, align 8, !dbg !3772
  %39 = or i32 %8, 44, !dbg !3773
  %40 = inttoptr i32 %39 to i32*, !dbg !3773
  store volatile i32 %24, i32* %40, align 4, !dbg !3774
  %41 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, i32 0, i32 %30, !dbg !3775
  %42 = load i16, i16* %41, align 2, !dbg !3775
  %43 = zext i16 %42 to i32, !dbg !3775
  %44 = or i32 %8, 88, !dbg !3776
  %45 = inttoptr i32 %44 to i32*, !dbg !3776
  store volatile i32 %43, i32* %45, align 8, !dbg !3777
  %46 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, i32 0, i32 %30, !dbg !3778
  %47 = load i16, i16* %46, align 2, !dbg !3778
  %48 = zext i16 %47 to i32, !dbg !3778
  %49 = or i32 %8, 84, !dbg !3779
  %50 = inttoptr i32 %49 to i32*, !dbg !3779
  store volatile i32 %48, i32* %50, align 4, !dbg !3780
  store volatile i32 %13, i32* %12, align 4, !dbg !3781
  %51 = or i32 %8, 8, !dbg !3782
  %52 = inttoptr i32 %51 to i32*, !dbg !3782
  store volatile i32 71, i32* %52, align 8, !dbg !3783
  %53 = inttoptr i32 %11 to i16*, !dbg !3784
  %54 = load volatile i16, i16* %53, align 4, !dbg !3784
  call void @llvm.dbg.value(metadata i16 %54, metadata !3725, metadata !DIExpression()), !dbg !3737
  %55 = and i16 %54, -64, !dbg !3785
  call void @llvm.dbg.value(metadata i16 %54, metadata !3725, metadata !DIExpression(DW_OP_constu, 18446744073709551608, DW_OP_and, DW_OP_stack_value)), !dbg !3737
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %2), metadata !3725, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3737
  %56 = and i16 %2, -61, !dbg !3786
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %56), metadata !3725, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3737
  call void @llvm.dbg.value(metadata !DIArgList(i16 %55, i16 %4, i16 %56), metadata !3725, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3737
  %57 = and i16 %4, -57, !dbg !3787
  call void @llvm.dbg.value(metadata i16 undef, metadata !3725, metadata !DIExpression()), !dbg !3737
  %58 = or i16 %56, %3, !dbg !3786
  %59 = or i16 %58, %57, !dbg !3787
  %60 = or i16 %59, %55, !dbg !3788
  call void @llvm.dbg.value(metadata i16 %60, metadata !3725, metadata !DIExpression()), !dbg !3737
  store volatile i16 %60, i16* %53, align 4, !dbg !3789
  ret void, !dbg !3790
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) local_unnamed_addr #7 !dbg !3791 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3796, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.value(metadata i32 %1, metadata !3797, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.value(metadata i32* %2, metadata !3798, metadata !DIExpression()), !dbg !3799
  %4 = icmp eq i32 %0, 0, !dbg !3800
  %5 = icmp eq i32 %1, 0, !dbg !3802
  br i1 %4, label %6, label %16, !dbg !3803

6:                                                ; preds = %3
  br i1 %5, label %10, label %7, !dbg !3804

7:                                                ; preds = %6
  %8 = load volatile i16, i16* inttoptr (i32 -2097082568 to i16*), align 8, !dbg !3806
  %9 = zext i16 %8 to i32, !dbg !3806
  br label %26, !dbg !3809

10:                                               ; preds = %6
  %11 = load volatile i16, i16* inttoptr (i32 -2097082812 to i16*), align 4, !dbg !3810
  %12 = zext i16 %11 to i32, !dbg !3810
  store i32 %12, i32* %2, align 4, !dbg !3812
  %13 = load volatile i16, i16* inttoptr (i32 -2097082824 to i16*), align 8, !dbg !3813
  %14 = zext i16 %13 to i32, !dbg !3813
  %15 = sub nsw i32 %12, %14, !dbg !3814
  br label %26

16:                                               ; preds = %3
  br i1 %5, label %20, label %17, !dbg !3815

17:                                               ; preds = %16
  %18 = load volatile i16, i16* inttoptr (i32 -2097082056 to i16*), align 8, !dbg !3817
  %19 = zext i16 %18 to i32, !dbg !3817
  br label %26, !dbg !3820

20:                                               ; preds = %16
  %21 = load volatile i16, i16* inttoptr (i32 -2097082300 to i16*), align 4, !dbg !3821
  %22 = zext i16 %21 to i32, !dbg !3821
  store i32 %22, i32* %2, align 4, !dbg !3823
  %23 = load volatile i16, i16* inttoptr (i32 -2097082312 to i16*), align 8, !dbg !3824
  %24 = zext i16 %23 to i32, !dbg !3824
  %25 = sub nsw i32 %22, %24, !dbg !3825
  br label %26

26:                                               ; preds = %17, %20, %7, %10
  %27 = phi i32 [ %19, %17 ], [ %25, %20 ], [ %9, %7 ], [ %15, %10 ]
  store i32 %27, i32* %2, align 4, !dbg !3802
  ret void, !dbg !3826
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Read_VFIFO_Data(i32 noundef %0, i8* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #5 !dbg !3827 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3831, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i8* %1, metadata !3832, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i32 %2, metadata !3833, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i32 0, metadata !3834, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i32 0, metadata !3834, metadata !DIExpression()), !dbg !3835
  %4 = icmp eq i32 %2, 0, !dbg !3836
  br i1 %4, label %15, label %5, !dbg !3839

5:                                                ; preds = %3, %12
  %6 = phi i32 [ %13, %12 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3834, metadata !DIExpression()), !dbg !3835
  switch i32 %0, label %12 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !3840

7:                                                ; preds = %5
  br label %8, !dbg !3842

8:                                                ; preds = %5, %7
  %9 = phi i8* [ inttoptr (i32 2030044416 to i8*), %7 ], [ inttoptr (i32 2030043904 to i8*), %5 ]
  %10 = load volatile i8, i8* %9, align 256, !dbg !3846
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3846
  store i8 %10, i8* %11, align 1, !dbg !3846
  br label %12, !dbg !3847

12:                                               ; preds = %8, %5
  %13 = add nuw i32 %6, 1, !dbg !3847
  call void @llvm.dbg.value(metadata i32 %13, metadata !3834, metadata !DIExpression()), !dbg !3835
  %14 = icmp eq i32 %13, %2, !dbg !3836
  br i1 %14, label %15, label %5, !dbg !3839, !llvm.loop !3848

15:                                               ; preds = %12, %3
  ret void, !dbg !3850
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Write_VFIFO_Data(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #5 !dbg !3851 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3855, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i8* %1, metadata !3856, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i32 %2, metadata !3857, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i32 0, metadata !3858, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i32 0, metadata !3858, metadata !DIExpression()), !dbg !3859
  %4 = icmp eq i32 %2, 0, !dbg !3860
  br i1 %4, label %16, label %5, !dbg !3863

5:                                                ; preds = %3, %13
  %6 = phi i32 [ %14, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3858, metadata !DIExpression()), !dbg !3859
  switch i32 %0, label %13 [
    i32 0, label %7
    i32 1, label %10
  ], !dbg !3864

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3866
  %9 = load i8, i8* %8, align 1, !dbg !3866
  store volatile i8 %9, i8* inttoptr (i32 2030043648 to i8*), align 512, !dbg !3869
  br label %13, !dbg !3870

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3871
  %12 = load i8, i8* %11, align 1, !dbg !3871
  store volatile i8 %12, i8* inttoptr (i32 2030044160 to i8*), align 1024, !dbg !3874
  br label %13, !dbg !3875

13:                                               ; preds = %5, %7, %10
  %14 = add nuw i32 %6, 1, !dbg !3876
  call void @llvm.dbg.value(metadata i32 %14, metadata !3858, metadata !DIExpression()), !dbg !3859
  %15 = icmp eq i32 %14, %2, !dbg !3860
  br i1 %15, label %16, label %5, !dbg !3863, !llvm.loop !3877

16:                                               ; preds = %13, %3
  ret void, !dbg !3879
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Tx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !dbg !3880 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3884, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata i8* %1, metadata !3885, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata i32 %2, metadata !3886, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata i32 %3, metadata !3887, metadata !DIExpression()), !dbg !3888
  switch i32 %0, label %9 [
    i32 0, label %6
    i32 1, label %5
  ], !dbg !3889

5:                                                ; preds = %4
  br label %6, !dbg !3890

6:                                                ; preds = %4, %5
  %7 = phi i32 [ 16, %5 ], [ 14, %4 ]
  %8 = ptrtoint i8* %1 to i32, !dbg !3894
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %8, i32 noundef %2, i32 noundef %7, i32 noundef 0, i32 noundef %3, i32 noundef 0) #14, !dbg !3894
  tail call void @DMA_Vfifo_Flush(i32 noundef %7) #14, !dbg !3894
  br label %9, !dbg !3895

9:                                                ; preds = %6, %4
  ret void, !dbg !3895
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_SetAdrs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Flush(i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Rx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 !dbg !3896 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3900, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata i8* %1, metadata !3901, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata i32 %2, metadata !3902, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata i32 %3, metadata !3903, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata i32 %4, metadata !3904, metadata !DIExpression()), !dbg !3906
  call void @llvm.dbg.value(metadata i32 %5, metadata !3905, metadata !DIExpression()), !dbg !3906
  switch i32 %0, label %11 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !3907

7:                                                ; preds = %6
  br label %8, !dbg !3908

8:                                                ; preds = %6, %7
  %9 = phi i32 [ 17, %7 ], [ 15, %6 ]
  %10 = ptrtoint i8* %1 to i32, !dbg !3912
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %10, i32 noundef %2, i32 noundef %9, i32 noundef %3, i32 noundef %4, i32 noundef %5) #14, !dbg !3912
  tail call void @DMA_Vfifo_Flush(i32 noundef %9) #14, !dbg !3912
  br label %11, !dbg !3913

11:                                               ; preds = %8, %6
  ret void, !dbg !3913
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #0 !dbg !3914 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3918, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata void ()* %1, metadata !3919, metadata !DIExpression()), !dbg !3920
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !3921

3:                                                ; preds = %2
  br label %4, !dbg !3922

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef %5, void ()* noundef %1) #14, !dbg !3926
  br label %6, !dbg !3927

6:                                                ; preds = %4, %2
  ret void, !dbg !3927
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #0 !dbg !3928 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3930, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata void ()* %1, metadata !3931, metadata !DIExpression()), !dbg !3932
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !3933

3:                                                ; preds = %2
  br label %4, !dbg !3934

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_TO_Callback(i32 noundef %5, void ()* noundef %1) #14, !dbg !3938
  br label %6, !dbg !3939

6:                                                ; preds = %4, %2
  ret void, !dbg !3939
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_TO_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #5 !dbg !3940 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3942, metadata !DIExpression()), !dbg !3946
  %2 = icmp eq i32 %0, 0, !dbg !3947
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3947
  call void @llvm.dbg.value(metadata i32 %3, metadata !3943, metadata !DIExpression()), !dbg !3946
  %4 = or i32 %3, 12, !dbg !3948
  %5 = inttoptr i32 %4 to i32*, !dbg !3948
  %6 = load volatile i32, i32* %5, align 4, !dbg !3948
  call void @llvm.dbg.value(metadata i32 %6, metadata !3945, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3946
  store volatile i32 191, i32* %5, align 4, !dbg !3949
  %7 = or i32 %3, 8, !dbg !3950
  %8 = inttoptr i32 %7 to i32*, !dbg !3950
  %9 = load volatile i32, i32* %8, align 8, !dbg !3950
  call void @llvm.dbg.value(metadata i32 %9, metadata !3944, metadata !DIExpression()), !dbg !3946
  %10 = and i32 %9, 65327, !dbg !3951
  %11 = or i32 %10, 208, !dbg !3951
  call void @llvm.dbg.value(metadata i32 %9, metadata !3944, metadata !DIExpression(DW_OP_constu, 208, DW_OP_or, DW_OP_stack_value)), !dbg !3946
  store volatile i32 %11, i32* %8, align 8, !dbg !3952
  %12 = or i32 %3, 68, !dbg !3953
  %13 = inttoptr i32 %12 to i32*, !dbg !3953
  store volatile i32 0, i32* %13, align 4, !dbg !3954
  store volatile i32 0, i32* %5, align 4, !dbg !3955
  %14 = or i32 %3, 16, !dbg !3956
  %15 = inttoptr i32 %14 to i32*, !dbg !3956
  store volatile i32 2, i32* %15, align 16, !dbg !3957
  %16 = and i32 %6, 65535, !dbg !3958
  store volatile i32 %16, i32* %5, align 4, !dbg !3959
  ret void, !dbg !3960
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #5 !dbg !3961 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3965, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i8 %1, metadata !3966, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i8 %2, metadata !3967, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i8 %3, metadata !3968, metadata !DIExpression()), !dbg !3972
  %5 = icmp eq i32 %0, 0, !dbg !3973
  %6 = select i1 %5, i32 -2096955392, i32 -2096889856, !dbg !3973
  call void @llvm.dbg.value(metadata i32 %6, metadata !3969, metadata !DIExpression()), !dbg !3972
  %7 = or i32 %6, 12, !dbg !3974
  %8 = inttoptr i32 %7 to i32*, !dbg !3974
  %9 = load volatile i32, i32* %8, align 4, !dbg !3974
  call void @llvm.dbg.value(metadata i32 %9, metadata !3971, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3972
  store volatile i32 191, i32* %8, align 4, !dbg !3975
  %10 = zext i8 %1 to i32, !dbg !3976
  %11 = or i32 %6, 16, !dbg !3977
  %12 = inttoptr i32 %11 to i32*, !dbg !3977
  store volatile i32 %10, i32* %12, align 16, !dbg !3978
  %13 = or i32 %6, 20, !dbg !3979
  %14 = inttoptr i32 %13 to i32*, !dbg !3979
  store volatile i32 %10, i32* %14, align 4, !dbg !3980
  %15 = zext i8 %2 to i32, !dbg !3981
  %16 = or i32 %6, 24, !dbg !3982
  %17 = inttoptr i32 %16 to i32*, !dbg !3982
  store volatile i32 %15, i32* %17, align 8, !dbg !3983
  %18 = or i32 %6, 28, !dbg !3984
  %19 = inttoptr i32 %18 to i32*, !dbg !3984
  store volatile i32 %15, i32* %19, align 4, !dbg !3985
  %20 = or i32 %6, 8, !dbg !3986
  %21 = inttoptr i32 %20 to i32*, !dbg !3986
  %22 = load volatile i32, i32* %21, align 8, !dbg !3986
  call void @llvm.dbg.value(metadata i32 %22, metadata !3970, metadata !DIExpression()), !dbg !3972
  %23 = and i32 %22, 65525, !dbg !3987
  %24 = or i32 %23, 10, !dbg !3987
  call void @llvm.dbg.value(metadata i32 %22, metadata !3970, metadata !DIExpression(DW_OP_constu, 10, DW_OP_or, DW_OP_stack_value)), !dbg !3972
  store volatile i32 %24, i32* %21, align 8, !dbg !3988
  %25 = and i32 %9, 65535, !dbg !3989
  store volatile i32 %25, i32* %8, align 4, !dbg !3990
  %26 = zext i8 %3 to i32, !dbg !3991
  %27 = or i32 %6, 64, !dbg !3992
  %28 = inttoptr i32 %27 to i32*, !dbg !3992
  store volatile i32 %26, i32* %28, align 64, !dbg !3993
  %29 = or i32 %6, 68, !dbg !3994
  %30 = inttoptr i32 %29 to i32*, !dbg !3994
  store volatile i32 1, i32* %30, align 4, !dbg !3995
  ret void, !dbg !3996
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #5 !dbg !3997 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3999, metadata !DIExpression()), !dbg !4002
  %2 = icmp eq i32 %0, 0, !dbg !4003
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !4003
  call void @llvm.dbg.value(metadata i32 %3, metadata !4000, metadata !DIExpression()), !dbg !4002
  %4 = or i32 %3, 12, !dbg !4004
  %5 = inttoptr i32 %4 to i32*, !dbg !4004
  %6 = load volatile i32, i32* %5, align 4, !dbg !4004
  call void @llvm.dbg.value(metadata i32 %6, metadata !4001, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4002
  store volatile i32 191, i32* %5, align 4, !dbg !4005
  %7 = or i32 %3, 8, !dbg !4006
  %8 = inttoptr i32 %7 to i32*, !dbg !4006
  store volatile i32 0, i32* %8, align 8, !dbg !4007
  store volatile i32 0, i32* %5, align 4, !dbg !4008
  %9 = and i32 %6, 65535, !dbg !4009
  store volatile i32 %9, i32* %5, align 4, !dbg !4010
  ret void, !dbg !4011
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_sleep_mode(i32 noundef %0) local_unnamed_addr #5 !dbg !4012 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4014, metadata !DIExpression()), !dbg !4016
  %2 = icmp eq i32 %0, 0, !dbg !4017
  call void @llvm.dbg.value(metadata i32 undef, metadata !4015, metadata !DIExpression()), !dbg !4016
  %3 = select i1 %2, i32 -2096955320, i32 -2096889784, !dbg !4018
  %4 = inttoptr i32 %3 to i32*, !dbg !4018
  store volatile i32 1, i32* %4, align 8, !dbg !4019
  ret void, !dbg !4020
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_unmask_send_interrupt(i32 noundef %0) local_unnamed_addr #5 !dbg !4021 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4023, metadata !DIExpression()), !dbg !4027
  %2 = icmp eq i32 %0, 0, !dbg !4028
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !4028
  call void @llvm.dbg.value(metadata i32 %3, metadata !4024, metadata !DIExpression()), !dbg !4027
  %4 = or i32 %3, 12, !dbg !4029
  %5 = inttoptr i32 %4 to i32*, !dbg !4029
  %6 = load volatile i32, i32* %5, align 4, !dbg !4029
  call void @llvm.dbg.value(metadata i32 %6, metadata !4026, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4027
  store volatile i32 0, i32* %5, align 4, !dbg !4030
  %7 = or i32 %3, 4, !dbg !4031
  %8 = inttoptr i32 %7 to i32*, !dbg !4031
  %9 = load volatile i32, i32* %8, align 4, !dbg !4031
  call void @llvm.dbg.value(metadata i32 %9, metadata !4025, metadata !DIExpression()), !dbg !4027
  %10 = and i32 %9, 65533, !dbg !4032
  %11 = or i32 %10, 2, !dbg !4032
  call void @llvm.dbg.value(metadata i32 %9, metadata !4025, metadata !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value)), !dbg !4027
  store volatile i32 %11, i32* %8, align 4, !dbg !4033
  %12 = and i32 %6, 65535, !dbg !4034
  store volatile i32 %12, i32* %5, align 4, !dbg !4035
  %13 = or i32 %3, 72, !dbg !4036
  %14 = inttoptr i32 %13 to i32*, !dbg !4036
  store volatile i32 1, i32* %14, align 8, !dbg !4037
  ret void, !dbg !4038
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_mask_send_interrupt(i32 noundef %0) local_unnamed_addr #5 !dbg !4039 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4041, metadata !DIExpression()), !dbg !4045
  %2 = icmp eq i32 %0, 0, !dbg !4046
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !4046
  call void @llvm.dbg.value(metadata i32 %3, metadata !4042, metadata !DIExpression()), !dbg !4045
  %4 = or i32 %3, 12, !dbg !4047
  %5 = inttoptr i32 %4 to i32*, !dbg !4047
  %6 = load volatile i32, i32* %5, align 4, !dbg !4047
  call void @llvm.dbg.value(metadata i32 %6, metadata !4044, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4045
  store volatile i32 0, i32* %5, align 4, !dbg !4048
  %7 = or i32 %3, 4, !dbg !4049
  %8 = inttoptr i32 %7 to i32*, !dbg !4049
  %9 = load volatile i32, i32* %8, align 4, !dbg !4049
  call void @llvm.dbg.value(metadata i32 %9, metadata !4043, metadata !DIExpression()), !dbg !4045
  %10 = and i32 %9, 65533, !dbg !4050
  call void @llvm.dbg.value(metadata i32 %10, metadata !4043, metadata !DIExpression()), !dbg !4045
  store volatile i32 %10, i32* %8, align 4, !dbg !4051
  %11 = and i32 %6, 65535, !dbg !4052
  store volatile i32 %11, i32* %5, align 4, !dbg !4053
  %12 = or i32 %3, 72, !dbg !4054
  %13 = inttoptr i32 %12 to i32*, !dbg !4054
  store volatile i32 0, i32* %13, align 8, !dbg !4055
  ret void, !dbg !4056
}

; Function Attrs: noinline nounwind optsize
define dso_local void @uart_interrupt_handler(i32 noundef %0) #0 !dbg !4057 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4059, metadata !DIExpression()), !dbg !4063
  %2 = icmp eq i32 %0, 0, !dbg !4064
  %3 = select i1 %2, i32* inttoptr (i32 -2096955384 to i32*), i32* inttoptr (i32 -2096889848 to i32*)
  call void @llvm.dbg.value(metadata i32 undef, metadata !4060, metadata !DIExpression()), !dbg !4063
  call void @llvm.dbg.value(metadata i32 undef, metadata !4061, metadata !DIExpression()), !dbg !4063
  %4 = load volatile i32, i32* %3, align 8, !dbg !4066
  call void @llvm.dbg.value(metadata i32 %4, metadata !4062, metadata !DIExpression()), !dbg !4063
  %5 = and i32 %4, 63, !dbg !4067
  %6 = icmp eq i32 %5, 2, !dbg !4068
  br i1 %6, label %7, label %10, !dbg !4068

7:                                                ; preds = %1
  %8 = xor i1 %2, true
  %9 = zext i1 %8 to i32
  call void @llvm.dbg.value(metadata i32 %9, metadata !4060, metadata !DIExpression()), !dbg !4063
  tail call void @uart_send_handler(i32 noundef %9) #14, !dbg !4069
  br label %10, !dbg !4071

10:                                               ; preds = %1, %7
  ret void, !dbg !4072
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_reset_default_value(i32 noundef %0) local_unnamed_addr #5 !dbg !4073 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4075, metadata !DIExpression()), !dbg !4077
  %2 = icmp eq i32 %0, 0, !dbg !4078
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !4078
  call void @llvm.dbg.value(metadata i32 %3, metadata !4076, metadata !DIExpression()), !dbg !4077
  %4 = or i32 %3, 12, !dbg !4079
  %5 = inttoptr i32 %4 to i32*, !dbg !4079
  store volatile i32 191, i32* %5, align 4, !dbg !4080
  %6 = or i32 %3, 8, !dbg !4081
  %7 = inttoptr i32 %6 to i32*, !dbg !4081
  store volatile i32 16, i32* %7, align 8, !dbg !4082
  %8 = or i32 %3, 16, !dbg !4083
  %9 = inttoptr i32 %8 to i32*, !dbg !4083
  store volatile i32 0, i32* %9, align 16, !dbg !4084
  %10 = or i32 %3, 24, !dbg !4085
  %11 = inttoptr i32 %10 to i32*, !dbg !4085
  store volatile i32 0, i32* %11, align 8, !dbg !4086
  store volatile i32 128, i32* %5, align 4, !dbg !4087
  %12 = inttoptr i32 %3 to i32*, !dbg !4088
  store volatile i32 0, i32* %12, align 65536, !dbg !4089
  %13 = or i32 %3, 4, !dbg !4090
  %14 = inttoptr i32 %13 to i32*, !dbg !4090
  store volatile i32 0, i32* %14, align 4, !dbg !4091
  store volatile i32 0, i32* %5, align 4, !dbg !4092
  store volatile i32 0, i32* %14, align 4, !dbg !4093
  store volatile i32 0, i32* %7, align 8, !dbg !4094
  store volatile i32 191, i32* %5, align 4, !dbg !4095
  store volatile i32 0, i32* %7, align 8, !dbg !4096
  store volatile i32 0, i32* %5, align 4, !dbg !4097
  store volatile i32 0, i32* %9, align 16, !dbg !4098
  %15 = or i32 %3, 28, !dbg !4099
  %16 = inttoptr i32 %15 to i32*, !dbg !4099
  store volatile i32 0, i32* %16, align 4, !dbg !4100
  %17 = or i32 %3, 36, !dbg !4101
  %18 = inttoptr i32 %17 to i32*, !dbg !4101
  store volatile i32 0, i32* %18, align 4, !dbg !4102
  %19 = or i32 %3, 40, !dbg !4103
  %20 = inttoptr i32 %19 to i32*, !dbg !4103
  store volatile i32 0, i32* %20, align 8, !dbg !4104
  %21 = or i32 %3, 44, !dbg !4105
  %22 = inttoptr i32 %21 to i32*, !dbg !4105
  store volatile i32 0, i32* %22, align 4, !dbg !4106
  %23 = or i32 %3, 52, !dbg !4107
  %24 = inttoptr i32 %23 to i32*, !dbg !4107
  store volatile i32 0, i32* %24, align 4, !dbg !4108
  %25 = or i32 %3, 60, !dbg !4109
  %26 = inttoptr i32 %25 to i32*, !dbg !4109
  store volatile i32 0, i32* %26, align 4, !dbg !4110
  %27 = or i32 %3, 64, !dbg !4111
  %28 = inttoptr i32 %27 to i32*, !dbg !4111
  store volatile i32 0, i32* %28, align 64, !dbg !4112
  %29 = or i32 %3, 68, !dbg !4113
  %30 = inttoptr i32 %29 to i32*, !dbg !4113
  store volatile i32 0, i32* %30, align 4, !dbg !4114
  %31 = or i32 %3, 72, !dbg !4115
  %32 = inttoptr i32 %31 to i32*, !dbg !4115
  store volatile i32 0, i32* %32, align 8, !dbg !4116
  %33 = or i32 %3, 76, !dbg !4117
  %34 = inttoptr i32 %33 to i32*, !dbg !4117
  store volatile i32 0, i32* %34, align 4, !dbg !4118
  %35 = or i32 %3, 80, !dbg !4119
  %36 = inttoptr i32 %35 to i32*, !dbg !4119
  store volatile i32 0, i32* %36, align 16, !dbg !4120
  %37 = or i32 %3, 84, !dbg !4121
  %38 = inttoptr i32 %37 to i32*, !dbg !4121
  store volatile i32 0, i32* %38, align 4, !dbg !4122
  %39 = or i32 %3, 88, !dbg !4123
  %40 = inttoptr i32 %39 to i32*, !dbg !4123
  store volatile i32 0, i32* %40, align 8, !dbg !4124
  %41 = or i32 %3, 96, !dbg !4125
  %42 = inttoptr i32 %41 to i32*, !dbg !4125
  store volatile i32 0, i32* %42, align 32, !dbg !4126
  ret void, !dbg !4127
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_query_empty(i32 noundef %0) local_unnamed_addr #5 !dbg !4128 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4130, metadata !DIExpression()), !dbg !4132
  %2 = icmp eq i32 %0, 0, !dbg !4133
  call void @llvm.dbg.value(metadata i32 undef, metadata !4131, metadata !DIExpression()), !dbg !4132
  %3 = select i1 %2, i32 -2096955372, i32 -2096889836
  %4 = inttoptr i32 %3 to i32*
  br label %5, !dbg !4134

5:                                                ; preds = %5, %1
  %6 = load volatile i32, i32* %4, align 4, !dbg !4135
  %7 = and i32 %6, 64, !dbg !4136
  %8 = icmp eq i32 %7, 0, !dbg !4137
  br i1 %8, label %5, label %9, !dbg !4134, !llvm.loop !4138

9:                                                ; preds = %5
  ret void, !dbg !4140
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_fatal_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !4141 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4145, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata i32 %1, metadata !4146, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata i8* %2, metadata !4147, metadata !DIExpression()), !dbg !4158
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !4159
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #13, !dbg !4159
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !4148, metadata !DIExpression()), !dbg !4160
  %7 = bitcast i32* %5 to i8*, !dbg !4161
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #13, !dbg !4161
  call void @llvm.dbg.value(metadata i32* %5, metadata !4157, metadata !DIExpression(DW_OP_deref)), !dbg !4158
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #14, !dbg !4162
  call void @llvm.va_start(i8* nonnull %6), !dbg !4163
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !4164
  %10 = load i32, i32* %9, align 4, !dbg !4164
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !4164
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #14, !dbg !4164
  call void @llvm.va_end(i8* nonnull %6), !dbg !4165
  %13 = load i32, i32* %5, align 4, !dbg !4166
  call void @llvm.dbg.value(metadata i32 %13, metadata !4157, metadata !DIExpression()), !dbg !4158
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #14, !dbg !4167
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #13, !dbg !4168
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #13, !dbg !4168
  ret void, !dbg !4168
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #11

; Function Attrs: optsize
declare dso_local i32 @vprintf(i8* noundef, [1 x i32]) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #11

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_error_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !4169 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4171, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata i32 %1, metadata !4172, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata i8* %2, metadata !4173, metadata !DIExpression()), !dbg !4176
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !4177
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #13, !dbg !4177
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !4174, metadata !DIExpression()), !dbg !4178
  %7 = bitcast i32* %5 to i8*, !dbg !4179
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #13, !dbg !4179
  call void @llvm.dbg.value(metadata i32* %5, metadata !4175, metadata !DIExpression(DW_OP_deref)), !dbg !4176
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #14, !dbg !4180
  call void @llvm.va_start(i8* nonnull %6), !dbg !4181
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !4182
  %10 = load i32, i32* %9, align 4, !dbg !4182
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !4182
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #14, !dbg !4182
  call void @llvm.va_end(i8* nonnull %6), !dbg !4183
  %13 = load i32, i32* %5, align 4, !dbg !4184
  call void @llvm.dbg.value(metadata i32 %13, metadata !4175, metadata !DIExpression()), !dbg !4176
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #14, !dbg !4185
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #13, !dbg !4186
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #13, !dbg !4186
  ret void, !dbg !4186
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_warning_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !4187 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4189, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.value(metadata i32 %1, metadata !4190, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.value(metadata i8* %2, metadata !4191, metadata !DIExpression()), !dbg !4194
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !4195
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #13, !dbg !4195
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !4192, metadata !DIExpression()), !dbg !4196
  %7 = bitcast i32* %5 to i8*, !dbg !4197
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #13, !dbg !4197
  call void @llvm.dbg.value(metadata i32* %5, metadata !4193, metadata !DIExpression(DW_OP_deref)), !dbg !4194
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #14, !dbg !4198
  call void @llvm.va_start(i8* nonnull %6), !dbg !4199
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !4200
  %10 = load i32, i32* %9, align 4, !dbg !4200
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !4200
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #14, !dbg !4200
  call void @llvm.va_end(i8* nonnull %6), !dbg !4201
  %13 = load i32, i32* %5, align 4, !dbg !4202
  call void @llvm.dbg.value(metadata i32 %13, metadata !4193, metadata !DIExpression()), !dbg !4194
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #14, !dbg !4203
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #13, !dbg !4204
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #13, !dbg !4204
  ret void, !dbg !4204
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_info_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #0 !dbg !4205 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !4207, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i32 %1, metadata !4208, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.value(metadata i8* %2, metadata !4209, metadata !DIExpression()), !dbg !4212
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !4213
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #13, !dbg !4213
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !4210, metadata !DIExpression()), !dbg !4214
  %7 = bitcast i32* %5 to i8*, !dbg !4215
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #13, !dbg !4215
  call void @llvm.dbg.value(metadata i32* %5, metadata !4211, metadata !DIExpression(DW_OP_deref)), !dbg !4212
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #14, !dbg !4216
  call void @llvm.va_start(i8* nonnull %6), !dbg !4217
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !4218
  %10 = load i32, i32* %9, align 4, !dbg !4218
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !4218
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #14, !dbg !4218
  call void @llvm.va_end(i8* nonnull %6), !dbg !4219
  %13 = load i32, i32* %5, align 4, !dbg !4220
  call void @llvm.dbg.value(metadata i32 %13, metadata !4211, metadata !DIExpression()), !dbg !4212
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #14, !dbg !4221
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #13, !dbg !4222
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #13, !dbg !4222
  ret void, !dbg !4222
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @log_hal_dump_internal(i8* nocapture noundef %0, i32 noundef %1, i8* nocapture noundef %2, i8* nocapture noundef %3, i32 noundef %4, ...) local_unnamed_addr #8 !dbg !4223 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4229, metadata !DIExpression()), !dbg !4234
  call void @llvm.dbg.value(metadata i32 %1, metadata !4230, metadata !DIExpression()), !dbg !4234
  call void @llvm.dbg.value(metadata i8* %2, metadata !4231, metadata !DIExpression()), !dbg !4234
  call void @llvm.dbg.value(metadata i8* %3, metadata !4232, metadata !DIExpression()), !dbg !4234
  call void @llvm.dbg.value(metadata i32 %4, metadata !4233, metadata !DIExpression()), !dbg !4234
  ret void, !dbg !4235
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_init() local_unnamed_addr #0 !dbg !4236 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #14, !dbg !4244
  call void @llvm.dbg.value(metadata i32 %1, metadata !4243, metadata !DIExpression()), !dbg !4245
  %2 = load volatile i8, i8* @g_cache_status, align 1, !dbg !4246, !range !1320
  %3 = icmp eq i8 %2, 0, !dbg !4246
  br i1 %3, label %5, label %4, !dbg !4248

4:                                                ; preds = %0
  tail call void @restore_interrupt_mask(i32 noundef %1) #14, !dbg !4249
  br label %15, !dbg !4251

5:                                                ; preds = %0
  store volatile i8 1, i8* @g_cache_status, align 1, !dbg !4252
  tail call void @restore_interrupt_mask(i32 noundef %1) #14, !dbg !4254
  %6 = tail call i32 @hal_cache_invalidate_all_cache_lines() #16, !dbg !4255
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4256
  store volatile i32 0, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4257
  store i32 0, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !4258
  store i32 0, i32* @g_cache_region_en, align 4, !dbg !4259
  call void @llvm.dbg.value(metadata i32 0, metadata !4241, metadata !DIExpression()), !dbg !4245
  br label %7, !dbg !4260

7:                                                ; preds = %5, %7
  %8 = phi i32 [ 0, %5 ], [ %13, %7 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !4241, metadata !DIExpression()), !dbg !4245
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %8, !dbg !4262
  store volatile i32 0, i32* %9, align 4, !dbg !4265
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %8, !dbg !4266
  store volatile i32 0, i32* %10, align 4, !dbg !4267
  %11 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %8, i32 0, i32 0, i32 0, !dbg !4268
  store i32 0, i32* %11, align 4, !dbg !4269
  %12 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %8, i32 1, i32 0, i32 0, !dbg !4270
  store i32 0, i32* %12, align 4, !dbg !4271
  %13 = add nuw nsw i32 %8, 1, !dbg !4272
  call void @llvm.dbg.value(metadata i32 %13, metadata !4241, metadata !DIExpression()), !dbg !4245
  %14 = icmp eq i32 %13, 16, !dbg !4273
  br i1 %14, label %15, label %7, !dbg !4260, !llvm.loop !4274

15:                                               ; preds = %7, %4
  %16 = phi i32 [ -6, %4 ], [ 0, %7 ], !dbg !4245
  ret i32 %16, !dbg !4276
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_all_cache_lines() local_unnamed_addr #0 section ".ramTEXT" !dbg !4277 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #14, !dbg !4280
  call void @llvm.dbg.value(metadata i32 %1, metadata !4279, metadata !DIExpression()), !dbg !4281
  %2 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4282
  %3 = and i32 %2, -31, !dbg !4282
  store volatile i32 %3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4282
  %4 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4283
  %5 = or i32 %4, 19, !dbg !4283
  store volatile i32 %5, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4283
  %6 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4284
  %7 = and i32 %6, -31, !dbg !4284
  store volatile i32 %7, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4284
  %8 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4285
  %9 = or i32 %8, 3, !dbg !4285
  store volatile i32 %9, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4285
  tail call void asm sideeffect "isb", ""() #13, !dbg !4286, !srcloc !4290
  tail call void @restore_interrupt_mask(i32 noundef %1) #14, !dbg !4291
  ret i32 0, !dbg !4292
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_deinit() local_unnamed_addr #0 !dbg !4293 {
  %1 = tail call i32 @hal_cache_invalidate_all_cache_lines() #16, !dbg !4296
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4297
  store volatile i32 0, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4298
  store i32 0, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !4299
  store i32 0, i32* @g_cache_region_en, align 4, !dbg !4300
  call void @llvm.dbg.value(metadata i32 0, metadata !4295, metadata !DIExpression()), !dbg !4301
  br label %2, !dbg !4302

2:                                                ; preds = %0, %2
  %3 = phi i32 [ 0, %0 ], [ %8, %2 ]
  call void @llvm.dbg.value(metadata i32 %3, metadata !4295, metadata !DIExpression()), !dbg !4301
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %3, !dbg !4304
  store volatile i32 0, i32* %4, align 4, !dbg !4307
  %5 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %3, !dbg !4308
  store volatile i32 0, i32* %5, align 4, !dbg !4309
  %6 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %3, i32 0, i32 0, i32 0, !dbg !4310
  store i32 0, i32* %6, align 4, !dbg !4311
  %7 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %3, i32 1, i32 0, i32 0, !dbg !4312
  store i32 0, i32* %7, align 4, !dbg !4313
  %8 = add nuw nsw i32 %3, 1, !dbg !4314
  call void @llvm.dbg.value(metadata i32 %8, metadata !4295, metadata !DIExpression()), !dbg !4301
  %9 = icmp eq i32 %8, 16, !dbg !4315
  br i1 %9, label %10, label %2, !dbg !4302, !llvm.loop !4316

10:                                               ; preds = %2
  store volatile i8 0, i8* @g_cache_status, align 1, !dbg !4318
  ret i32 0, !dbg !4319
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_enable() local_unnamed_addr #5 !dbg !4320 {
  %1 = load i32, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !4321
  %2 = and i32 %1, 768, !dbg !4323
  %3 = icmp eq i32 %2, 0, !dbg !4323
  br i1 %3, label %8, label %4, !dbg !4324

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4325
  %6 = or i32 %5, 13, !dbg !4325
  store volatile i32 %6, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4325
  %7 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4326
  store i32 %7, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !4327
  br label %8, !dbg !4328

8:                                                ; preds = %0, %4
  %9 = phi i32 [ 0, %4 ], [ -5, %0 ], !dbg !4329
  ret i32 %9, !dbg !4330
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_disable() local_unnamed_addr #0 !dbg !4331 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #14, !dbg !4334
  call void @llvm.dbg.value(metadata i32 %1, metadata !4333, metadata !DIExpression()), !dbg !4335
  %2 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4336
  %3 = and i32 %2, 1, !dbg !4338
  %4 = icmp eq i32 %3, 0, !dbg !4338
  br i1 %4, label %7, label %5, !dbg !4339

5:                                                ; preds = %0
  %6 = tail call i32 @hal_cache_invalidate_all_cache_lines() #16, !dbg !4340
  br label %7, !dbg !4342

7:                                                ; preds = %5, %0
  %8 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4343
  %9 = and i32 %8, -2, !dbg !4343
  store volatile i32 %9, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4343
  %10 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4344
  store i32 %10, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !4345
  tail call void @restore_interrupt_mask(i32 noundef %1) #14, !dbg !4346
  ret i32 0, !dbg !4347
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_region_enable(i32 noundef %0) local_unnamed_addr #5 !dbg !4348 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4352, metadata !DIExpression()), !dbg !4353
  %2 = icmp ugt i32 %0, 15, !dbg !4354
  br i1 %2, label %13, label %3, !dbg !4356

3:                                                ; preds = %1
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %0, !dbg !4357
  %5 = load volatile i32, i32* %4, align 4, !dbg !4357
  %6 = and i32 %5, 256, !dbg !4359
  %7 = icmp eq i32 %6, 0, !dbg !4359
  br i1 %7, label %13, label %8, !dbg !4360

8:                                                ; preds = %3
  %9 = shl nuw nsw i32 1, %0, !dbg !4361
  %10 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4363
  %11 = or i32 %10, %9, !dbg !4363
  store volatile i32 %11, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4363
  %12 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4364
  store i32 %12, i32* @g_cache_region_en, align 4, !dbg !4365
  br label %13, !dbg !4366

13:                                               ; preds = %3, %1, %8
  %14 = phi i32 [ 0, %8 ], [ -4, %1 ], [ -1, %3 ], !dbg !4353
  ret i32 %14, !dbg !4367
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_region_disable(i32 noundef %0) local_unnamed_addr #5 !dbg !4368 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4370, metadata !DIExpression()), !dbg !4371
  %2 = icmp ugt i32 %0, 15, !dbg !4372
  br i1 %2, label %11, label %3, !dbg !4374

3:                                                ; preds = %1
  %4 = shl nuw nsw i32 1, %0, !dbg !4375
  %5 = xor i32 %4, -1, !dbg !4376
  %6 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4377
  %7 = and i32 %6, %5, !dbg !4377
  store volatile i32 %7, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4377
  %8 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4378
  store i32 %8, i32* @g_cache_region_en, align 4, !dbg !4379
  %9 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 0, i32 0, i32 0, !dbg !4380
  store i32 0, i32* %9, align 4, !dbg !4381
  %10 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 1, i32 0, i32 0, !dbg !4382
  store i32 0, i32* %10, align 4, !dbg !4383
  br label %11, !dbg !4384

11:                                               ; preds = %1, %3
  %12 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !4371
  ret i32 %12, !dbg !4385
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_set_size(i32 noundef %0) local_unnamed_addr #5 !dbg !4386 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4391, metadata !DIExpression()), !dbg !4392
  %2 = icmp ugt i32 %0, 3, !dbg !4393
  br i1 %2, label %13, label %3, !dbg !4395

3:                                                ; preds = %1
  %4 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4396
  %5 = and i32 %4, -769, !dbg !4396
  store volatile i32 %5, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4396
  %6 = shl nuw nsw i32 %0, 8, !dbg !4397
  %7 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4398
  %8 = or i32 %7, %6, !dbg !4398
  store volatile i32 %8, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4398
  %9 = icmp eq i32 %0, 0, !dbg !4399
  br i1 %9, label %10, label %11, !dbg !4401

10:                                               ; preds = %3
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4402
  br label %11, !dbg !4404

11:                                               ; preds = %10, %3
  %12 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4405
  store i32 %12, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !4406
  br label %13, !dbg !4407

13:                                               ; preds = %1, %11
  %14 = phi i32 [ 0, %11 ], [ -5, %1 ], !dbg !4392
  ret i32 %14, !dbg !4408
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_region_config(i32 noundef %0, %struct.hal_cache_region_config_t* noundef readonly %1) local_unnamed_addr #0 !dbg !4409 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4420, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.value(metadata %struct.hal_cache_region_config_t* %1, metadata !4421, metadata !DIExpression()), !dbg !4422
  %3 = icmp ugt i32 %0, 15, !dbg !4423
  br i1 %3, label %30, label %4, !dbg !4425

4:                                                ; preds = %2
  %5 = icmp eq %struct.hal_cache_region_config_t* %1, null, !dbg !4426
  br i1 %5, label %30, label %6, !dbg !4428

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.hal_cache_region_config_t, %struct.hal_cache_region_config_t* %1, i32 0, i32 0, !dbg !4429
  %8 = load i32, i32* %7, align 4, !dbg !4429
  %9 = and i32 %8, 4095, !dbg !4431
  %10 = icmp eq i32 %9, 0, !dbg !4431
  br i1 %10, label %12, label %11, !dbg !4432

11:                                               ; preds = %6
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.63, i32 0, i32 0), i32 noundef 251, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.hal_cache_region_config, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.64, i32 0, i32 0)) #15, !dbg !4433
  unreachable, !dbg !4433

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.hal_cache_region_config_t, %struct.hal_cache_region_config_t* %1, i32 0, i32 1, !dbg !4435
  %14 = load i32, i32* %13, align 4, !dbg !4435
  %15 = and i32 %14, 4095, !dbg !4437
  %16 = icmp eq i32 %15, 0, !dbg !4437
  br i1 %16, label %18, label %17, !dbg !4438

17:                                               ; preds = %12
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.63, i32 0, i32 0), i32 noundef 257, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.hal_cache_region_config, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.64, i32 0, i32 0)) #15, !dbg !4439
  unreachable, !dbg !4439

18:                                               ; preds = %12
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %0, !dbg !4441
  store volatile i32 %8, i32* %19, align 4, !dbg !4442
  %20 = load i32, i32* %7, align 4, !dbg !4443
  %21 = load i32, i32* %13, align 4, !dbg !4444
  %22 = add i32 %21, %20, !dbg !4445
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %0, !dbg !4446
  store volatile i32 %22, i32* %23, align 4, !dbg !4447
  %24 = load volatile i32, i32* %19, align 4, !dbg !4448
  %25 = or i32 %24, 256, !dbg !4448
  store volatile i32 %25, i32* %19, align 4, !dbg !4448
  %26 = load volatile i32, i32* %19, align 4, !dbg !4449
  %27 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 0, i32 0, i32 0, !dbg !4450
  store i32 %26, i32* %27, align 4, !dbg !4451
  %28 = load volatile i32, i32* %23, align 4, !dbg !4452
  %29 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 1, i32 0, i32 0, !dbg !4453
  store i32 %28, i32* %29, align 4, !dbg !4454
  br label %30, !dbg !4455

30:                                               ; preds = %4, %2, %18
  %31 = phi i32 [ 0, %18 ], [ -4, %2 ], [ -7, %4 ], !dbg !4422
  ret i32 %31, !dbg !4456
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_one_cache_line(i32 noundef %0) local_unnamed_addr #0 section ".ramTEXT" !dbg !4457 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4461, metadata !DIExpression()), !dbg !4463
  %2 = and i32 %0, 31, !dbg !4464
  %3 = icmp eq i32 %2, 0, !dbg !4464
  br i1 %3, label %4, label %9, !dbg !4466

4:                                                ; preds = %1
  %5 = tail call i32 @save_and_set_interrupt_mask() #14, !dbg !4467
  call void @llvm.dbg.value(metadata i32 %5, metadata !4462, metadata !DIExpression()), !dbg !4463
  %6 = and i32 %0, -32, !dbg !4468
  store volatile i32 %6, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4469
  %7 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4470
  %8 = or i32 %7, 5, !dbg !4470
  store volatile i32 %8, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4470
  tail call void asm sideeffect "isb", ""() #13, !dbg !4471, !srcloc !4290
  tail call void @restore_interrupt_mask(i32 noundef %5) #14, !dbg !4473
  br label %9, !dbg !4474

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ -7, %1 ], !dbg !4463
  ret i32 %10, !dbg !4475
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_multiple_cache_lines(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 section ".ramTEXT" !dbg !4476 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4480, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i32 %1, metadata !4481, metadata !DIExpression()), !dbg !4484
  %3 = add i32 %1, %0, !dbg !4485
  call void @llvm.dbg.value(metadata i32 %3, metadata !4483, metadata !DIExpression()), !dbg !4484
  %4 = or i32 %1, %0, !dbg !4486
  %5 = and i32 %4, 31, !dbg !4486
  %6 = icmp eq i32 %5, 0, !dbg !4486
  br i1 %6, label %7, label %16, !dbg !4486

7:                                                ; preds = %2
  %8 = tail call i32 @save_and_set_interrupt_mask() #14, !dbg !4488
  call void @llvm.dbg.value(metadata i32 %8, metadata !4482, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i32 %0, metadata !4480, metadata !DIExpression()), !dbg !4484
  %9 = icmp ugt i32 %3, %0, !dbg !4489
  br i1 %9, label %10, label %15, !dbg !4490

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !4480, metadata !DIExpression()), !dbg !4484
  %12 = tail call i32 @hal_cache_invalidate_one_cache_line(i32 noundef %11) #16, !dbg !4491
  %13 = add i32 %11, 32, !dbg !4493
  call void @llvm.dbg.value(metadata i32 %13, metadata !4480, metadata !DIExpression()), !dbg !4484
  %14 = icmp ult i32 %13, %3, !dbg !4489
  br i1 %14, label %10, label %15, !dbg !4490, !llvm.loop !4494

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "isb", ""() #13, !dbg !4496, !srcloc !4290
  tail call void @restore_interrupt_mask(i32 noundef %8) #14, !dbg !4498
  br label %16, !dbg !4499

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 0, %15 ], [ -7, %2 ], !dbg !4484
  ret i32 %17, !dbg !4500
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_one_cache_line(i32 noundef %0) local_unnamed_addr #0 section ".ramTEXT" !dbg !4501 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4503, metadata !DIExpression()), !dbg !4505
  %2 = and i32 %0, 31, !dbg !4506
  %3 = icmp eq i32 %2, 0, !dbg !4506
  br i1 %3, label %4, label %9, !dbg !4508

4:                                                ; preds = %1
  %5 = tail call i32 @save_and_set_interrupt_mask() #14, !dbg !4509
  call void @llvm.dbg.value(metadata i32 %5, metadata !4504, metadata !DIExpression()), !dbg !4505
  %6 = and i32 %0, -32, !dbg !4510
  store volatile i32 %6, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4511
  %7 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4512
  %8 = or i32 %7, 21, !dbg !4512
  store volatile i32 %8, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4512
  tail call void asm sideeffect "isb", ""() #13, !dbg !4513, !srcloc !4290
  tail call void @restore_interrupt_mask(i32 noundef %5) #14, !dbg !4515
  br label %9, !dbg !4516

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ -7, %1 ], !dbg !4505
  ret i32 %10, !dbg !4517
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_multiple_cache_lines(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 section ".ramTEXT" !dbg !4518 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4520, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata i32 %1, metadata !4521, metadata !DIExpression()), !dbg !4524
  %3 = add i32 %1, %0, !dbg !4525
  call void @llvm.dbg.value(metadata i32 %3, metadata !4523, metadata !DIExpression()), !dbg !4524
  %4 = or i32 %1, %0, !dbg !4526
  %5 = and i32 %4, 31, !dbg !4526
  %6 = icmp eq i32 %5, 0, !dbg !4526
  br i1 %6, label %7, label %16, !dbg !4526

7:                                                ; preds = %2
  %8 = tail call i32 @save_and_set_interrupt_mask() #14, !dbg !4528
  call void @llvm.dbg.value(metadata i32 %8, metadata !4522, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata i32 %0, metadata !4520, metadata !DIExpression()), !dbg !4524
  %9 = icmp ugt i32 %3, %0, !dbg !4529
  br i1 %9, label %10, label %15, !dbg !4530

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !4520, metadata !DIExpression()), !dbg !4524
  %12 = tail call i32 @hal_cache_flush_one_cache_line(i32 noundef %11) #16, !dbg !4531
  %13 = add i32 %11, 32, !dbg !4533
  call void @llvm.dbg.value(metadata i32 %13, metadata !4520, metadata !DIExpression()), !dbg !4524
  %14 = icmp ult i32 %13, %3, !dbg !4529
  br i1 %14, label %10, label %15, !dbg !4530, !llvm.loop !4534

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "isb", ""() #13, !dbg !4536, !srcloc !4290
  tail call void @restore_interrupt_mask(i32 noundef %8) #14, !dbg !4538
  br label %16, !dbg !4539

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 0, %15 ], [ -7, %2 ], !dbg !4524
  ret i32 %17, !dbg !4540
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_all_cache_lines() local_unnamed_addr #0 section ".ramTEXT" !dbg !4541 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #14, !dbg !4544
  call void @llvm.dbg.value(metadata i32 %1, metadata !4543, metadata !DIExpression()), !dbg !4545
  %2 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4546
  %3 = and i32 %2, -31, !dbg !4546
  store volatile i32 %3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4546
  %4 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4547
  %5 = or i32 %4, 19, !dbg !4547
  store volatile i32 %5, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4547
  tail call void asm sideeffect "isb", ""() #13, !dbg !4548, !srcloc !4290
  tail call void @restore_interrupt_mask(i32 noundef %1) #14, !dbg !4550
  ret i32 0, !dbg !4551
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i1 @hal_cache_is_cacheable(i32 noundef %0) local_unnamed_addr #5 !dbg !4552 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4556, metadata !DIExpression()), !dbg !4558
  %2 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4559
  %3 = and i32 %2, 8, !dbg !4561
  %4 = icmp eq i32 %3, 0, !dbg !4561
  br i1 %4, label %23, label %5, !dbg !4562

5:                                                ; preds = %1, %20
  %6 = phi i32 [ %21, %20 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !4557, metadata !DIExpression()), !dbg !4558
  %7 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4563
  %8 = shl nuw nsw i32 1, %6, !dbg !4568
  %9 = and i32 %7, %8, !dbg !4569
  %10 = icmp eq i32 %9, 0, !dbg !4569
  br i1 %10, label %20, label %11, !dbg !4570

11:                                               ; preds = %5
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %6, !dbg !4571
  %13 = load volatile i32, i32* %12, align 4, !dbg !4571
  %14 = and i32 %13, -257, !dbg !4574
  %15 = icmp ugt i32 %14, %0, !dbg !4575
  br i1 %15, label %20, label %16, !dbg !4576

16:                                               ; preds = %11
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %6, !dbg !4577
  %18 = load volatile i32, i32* %17, align 4, !dbg !4577
  %19 = icmp ugt i32 %18, %0, !dbg !4578
  br i1 %19, label %23, label %20, !dbg !4579

20:                                               ; preds = %5, %16, %11
  %21 = add nuw nsw i32 %6, 1, !dbg !4580
  call void @llvm.dbg.value(metadata i32 %21, metadata !4557, metadata !DIExpression()), !dbg !4558
  %22 = icmp eq i32 %21, 16, !dbg !4581
  br i1 %22, label %23, label %5, !dbg !4582, !llvm.loop !4583

23:                                               ; preds = %20, %16, %1
  %24 = phi i1 [ false, %1 ], [ false, %20 ], [ true, %16 ], !dbg !4558
  ret i1 %24, !dbg !4585
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_nvic_init() local_unnamed_addr #8 !dbg !4586 {
  ret i32 0, !dbg !4590
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_enable_irq(i32 noundef %0) local_unnamed_addr #5 !dbg !4591 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4595, metadata !DIExpression()), !dbg !4597
  call void @llvm.dbg.value(metadata i32 -1, metadata !4596, metadata !DIExpression()), !dbg !4597
  %2 = icmp ugt i32 %0, 95, !dbg !4598
  br i1 %2, label %4, label %3, !dbg !4598

3:                                                ; preds = %1
  tail call fastcc void @NVIC_EnableIRQ(i32 noundef %0) #16, !dbg !4600
  call void @llvm.dbg.value(metadata i32 0, metadata !4596, metadata !DIExpression()), !dbg !4597
  br label %4, !dbg !4602

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !4597
  ret i32 %5, !dbg !4603
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_EnableIRQ(i32 noundef %0) unnamed_addr #5 !dbg !4604 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4608, metadata !DIExpression()), !dbg !4609
  %2 = and i32 %0, 31, !dbg !4610
  %3 = shl nuw i32 1, %2, !dbg !4611
  %4 = lshr i32 %0, 5, !dbg !4612
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813312 to [8 x i32]*), i32 0, i32 %4, !dbg !4613
  store volatile i32 %3, i32* %5, align 4, !dbg !4614
  ret void, !dbg !4615
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_disable_irq(i32 noundef %0) local_unnamed_addr #5 !dbg !4616 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4618, metadata !DIExpression()), !dbg !4620
  call void @llvm.dbg.value(metadata i32 -1, metadata !4619, metadata !DIExpression()), !dbg !4620
  %2 = icmp ugt i32 %0, 95, !dbg !4621
  br i1 %2, label %4, label %3, !dbg !4621

3:                                                ; preds = %1
  tail call fastcc void @NVIC_DisableIRQ(i32 noundef %0) #16, !dbg !4623
  call void @llvm.dbg.value(metadata i32 0, metadata !4619, metadata !DIExpression()), !dbg !4620
  br label %4, !dbg !4625

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !4620
  ret i32 %5, !dbg !4626
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_DisableIRQ(i32 noundef %0) unnamed_addr #5 !dbg !4627 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4629, metadata !DIExpression()), !dbg !4630
  %2 = and i32 %0, 31, !dbg !4631
  %3 = shl nuw i32 1, %2, !dbg !4632
  %4 = lshr i32 %0, 5, !dbg !4633
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813184 to [8 x i32]*), i32 0, i32 %4, !dbg !4634
  store volatile i32 %3, i32* %5, align 4, !dbg !4635
  ret void, !dbg !4636
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_pending_irq(i32 noundef %0) local_unnamed_addr #7 !dbg !4637 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4641, metadata !DIExpression()), !dbg !4643
  call void @llvm.dbg.value(metadata i32 255, metadata !4642, metadata !DIExpression()), !dbg !4643
  %2 = icmp ugt i32 %0, 95, !dbg !4644
  br i1 %2, label %5, label %3, !dbg !4644

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) #16, !dbg !4646
  call void @llvm.dbg.value(metadata i32 %4, metadata !4642, metadata !DIExpression()), !dbg !4643
  br label %5, !dbg !4648

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 255, %1 ], !dbg !4643
  ret i32 %6, !dbg !4649
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) unnamed_addr #7 !dbg !4650 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4654, metadata !DIExpression()), !dbg !4655
  %2 = lshr i32 %0, 5, !dbg !4656
  %3 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %2, !dbg !4657
  %4 = load volatile i32, i32* %3, align 4, !dbg !4657
  %5 = and i32 %0, 31, !dbg !4658
  %6 = lshr i32 %4, %5, !dbg !4659
  %7 = and i32 %6, 1, !dbg !4659
  ret i32 %7, !dbg !4660
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_pending_irq(i32 noundef %0) local_unnamed_addr #5 !dbg !4661 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4663, metadata !DIExpression()), !dbg !4665
  call void @llvm.dbg.value(metadata i32 -1, metadata !4664, metadata !DIExpression()), !dbg !4665
  %2 = icmp ugt i32 %0, 95, !dbg !4666
  br i1 %2, label %4, label %3, !dbg !4666

3:                                                ; preds = %1
  tail call fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) #16, !dbg !4668
  call void @llvm.dbg.value(metadata i32 0, metadata !4664, metadata !DIExpression()), !dbg !4665
  br label %4, !dbg !4670

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !4665
  ret i32 %5, !dbg !4671
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) unnamed_addr #5 !dbg !4672 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4674, metadata !DIExpression()), !dbg !4675
  %2 = and i32 %0, 31, !dbg !4676
  %3 = shl nuw i32 1, %2, !dbg !4677
  %4 = lshr i32 %0, 5, !dbg !4678
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %4, !dbg !4679
  store volatile i32 %3, i32* %5, align 4, !dbg !4680
  ret void, !dbg !4681
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_clear_pending_irq(i32 noundef %0) local_unnamed_addr #5 !dbg !4682 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4684, metadata !DIExpression()), !dbg !4686
  call void @llvm.dbg.value(metadata i32 -1, metadata !4685, metadata !DIExpression()), !dbg !4686
  %2 = icmp ugt i32 %0, 95, !dbg !4687
  br i1 %2, label %4, label %3, !dbg !4687

3:                                                ; preds = %1
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #16, !dbg !4689
  call void @llvm.dbg.value(metadata i32 0, metadata !4685, metadata !DIExpression()), !dbg !4686
  br label %4, !dbg !4691

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !4686
  ret i32 %5, !dbg !4692
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) unnamed_addr #5 !dbg !4693 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4695, metadata !DIExpression()), !dbg !4696
  %2 = and i32 %0, 31, !dbg !4697
  %3 = shl nuw i32 1, %2, !dbg !4698
  %4 = lshr i32 %0, 5, !dbg !4699
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812928 to [8 x i32]*), i32 0, i32 %4, !dbg !4700
  store volatile i32 %3, i32* %5, align 4, !dbg !4701
  ret void, !dbg !4702
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_priority(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 !dbg !4703 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4707, metadata !DIExpression()), !dbg !4710
  call void @llvm.dbg.value(metadata i32 %1, metadata !4708, metadata !DIExpression()), !dbg !4710
  call void @llvm.dbg.value(metadata i32 -1, metadata !4709, metadata !DIExpression()), !dbg !4710
  %3 = icmp ugt i32 %0, 95, !dbg !4711
  br i1 %3, label %5, label %4, !dbg !4711

4:                                                ; preds = %2
  tail call fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) #16, !dbg !4713
  call void @llvm.dbg.value(metadata i32 0, metadata !4709, metadata !DIExpression()), !dbg !4710
  br label %5, !dbg !4715

5:                                                ; preds = %2, %4
  %6 = phi i32 [ 0, %4 ], [ -3, %2 ], !dbg !4710
  ret i32 %6, !dbg !4716
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) unnamed_addr #5 !dbg !4717 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4721, metadata !DIExpression()), !dbg !4723
  call void @llvm.dbg.value(metadata i32 %1, metadata !4722, metadata !DIExpression()), !dbg !4723
  %3 = trunc i32 %1 to i8, !dbg !4724
  %4 = shl i8 %3, 5, !dbg !4724
  %5 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !4727
  store volatile i8 %4, i8* %5, align 1, !dbg !4728
  ret void, !dbg !4729
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_priority(i32 noundef %0) local_unnamed_addr #7 !dbg !4730 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4732, metadata !DIExpression()), !dbg !4734
  call void @llvm.dbg.value(metadata i32 68, metadata !4733, metadata !DIExpression()), !dbg !4734
  %2 = icmp ugt i32 %0, 95, !dbg !4735
  br i1 %2, label %5, label %3, !dbg !4735

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPriority(i32 noundef %0) #16, !dbg !4737
  call void @llvm.dbg.value(metadata i32 %4, metadata !4733, metadata !DIExpression()), !dbg !4734
  br label %5, !dbg !4739

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 68, %1 ], !dbg !4734
  ret i32 %6, !dbg !4740
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPriority(i32 noundef %0) unnamed_addr #7 !dbg !4741 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4743, metadata !DIExpression()), !dbg !4744
  %2 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !4745
  %3 = load volatile i8, i8* %2, align 1, !dbg !4745
  %4 = lshr i8 %3, 5, !dbg !4748
  %5 = zext i8 %4 to i32, !dbg !4748
  ret i32 %5, !dbg !4749
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @isrC_main() local_unnamed_addr #0 section ".ramTEXT" !dbg !4750 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !4752, metadata !DIExpression()), !dbg !4754
  tail call void @Flash_ReturnReady() #14, !dbg !4755
  %1 = tail call fastcc i32 @get_current_irq() #16, !dbg !4756
  call void @llvm.dbg.value(metadata i32 %1, metadata !4753, metadata !DIExpression()), !dbg !4754
  %2 = icmp ugt i32 %1, 95, !dbg !4757
  br i1 %2, label %12, label %3, !dbg !4757

3:                                                ; preds = %0
  %4 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 0, !dbg !4759
  %5 = load void (i32)*, void (i32)** %4, align 4, !dbg !4759
  %6 = icmp eq void (i32)* %5, null, !dbg !4761
  br i1 %6, label %7, label %8, !dbg !4762

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 -4, metadata !4752, metadata !DIExpression()), !dbg !4754
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.isrC_main, i32 0, i32 0), i32 noundef 194, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.75, i32 0, i32 0)) #14, !dbg !4763
  br label %12, !dbg !4765

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @get_pending_irq() #16, !dbg !4766
  %10 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 1, !dbg !4768
  store i32 %9, i32* %10, align 4, !dbg !4769
  %11 = load void (i32)*, void (i32)** %4, align 4, !dbg !4770
  tail call void %11(i32 noundef %1) #14, !dbg !4771
  call void @llvm.dbg.value(metadata i32 0, metadata !4752, metadata !DIExpression()), !dbg !4754
  br label %12, !dbg !4772

12:                                               ; preds = %0, %8, %7
  %13 = phi i32 [ -4, %7 ], [ 0, %8 ], [ -3, %0 ], !dbg !4754
  ret i32 %13, !dbg !4773
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_current_irq() unnamed_addr #7 !dbg !4774 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !4777
  %2 = and i32 %1, 511, !dbg !4778
  call void @llvm.dbg.value(metadata i32 %2, metadata !4776, metadata !DIExpression()), !dbg !4779
  %3 = add nsw i32 %2, -16, !dbg !4780
  ret i32 %3, !dbg !4781
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_pending_irq() unnamed_addr #7 !dbg !4782 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !4783
  %2 = lshr i32 %1, 22, !dbg !4784
  %3 = and i32 %2, 1, !dbg !4784
  ret i32 %3, !dbg !4785
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_register_isr_handler(i32 noundef %0, void (i32)* noundef %1) local_unnamed_addr #0 !dbg !4786 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4791, metadata !DIExpression()), !dbg !4794
  call void @llvm.dbg.value(metadata void (i32)* %1, metadata !4792, metadata !DIExpression()), !dbg !4794
  %3 = icmp ugt i32 %0, 95, !dbg !4795
  %4 = icmp eq void (i32)* %1, null
  %5 = or i1 %3, %4, !dbg !4795
  br i1 %5, label %10, label %6, !dbg !4795

6:                                                ; preds = %2
  %7 = tail call i32 @save_and_set_interrupt_mask() #14, !dbg !4797
  call void @llvm.dbg.value(metadata i32 %7, metadata !4793, metadata !DIExpression()), !dbg !4794
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #16, !dbg !4798
  %8 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 0, !dbg !4799
  store void (i32)* %1, void (i32)** %8, align 4, !dbg !4800
  %9 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 1, !dbg !4801
  store i32 0, i32* %9, align 4, !dbg !4802
  tail call void @restore_interrupt_mask(i32 noundef %7) #14, !dbg !4803
  br label %10, !dbg !4804

10:                                               ; preds = %2, %6
  %11 = phi i32 [ 0, %6 ], [ -2, %2 ], !dbg !4794
  ret i32 %11, !dbg !4805
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_save_and_set_interrupt_mask(i32* nocapture noundef writeonly %0) local_unnamed_addr #0 !dbg !4806 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4810, metadata !DIExpression()), !dbg !4811
  %2 = tail call i32 @save_and_set_interrupt_mask() #14, !dbg !4812
  store i32 %2, i32* %0, align 4, !dbg !4813
  ret i32 0, !dbg !4814
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #0 !dbg !4815 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4819, metadata !DIExpression()), !dbg !4820
  tail call void @restore_interrupt_mask(i32 noundef %0) #14, !dbg !4821
  ret i32 0, !dbg !4822
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_init(i32 noundef %0) local_unnamed_addr #0 !dbg !4823 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4828, metadata !DIExpression()), !dbg !4829
  %2 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, !dbg !4830
  %3 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !4832
  %4 = load i8, i8* %3, align 4, !dbg !4832, !range !1320
  %5 = icmp eq i8 %4, 0, !dbg !4832
  br i1 %5, label %6, label %12, !dbg !4833

6:                                                ; preds = %1
  %7 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #16, !dbg !4834
  br i1 %7, label %9, label %8, !dbg !4836

8:                                                ; preds = %6
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.hal_gpt_init, i32 0, i32 0), i32 noundef 89, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.82, i32 0, i32 0), i32 noundef %0) #14, !dbg !4837
  br label %12, !dbg !4839

9:                                                ; preds = %6
  %10 = bitcast %struct.hal_gpt_context_t* %2 to i8*, !dbg !4840
  %11 = tail call i8* @memset(i8* noundef nonnull %10, i32 noundef 0, i32 noundef 16) #14, !dbg !4841
  store i8 1, i8* %3, align 4, !dbg !4842
  br label %12, !dbg !4843

12:                                               ; preds = %1, %9, %8
  %13 = phi i32 [ -2, %8 ], [ 0, %9 ], [ -3, %1 ], !dbg !4829
  ret i32 %13, !dbg !4844
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) unnamed_addr #8 !dbg !4845 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4849, metadata !DIExpression()), !dbg !4850
  %2 = icmp ult i32 %0, 5, !dbg !4851
  %3 = icmp ne i32 %0, 2
  %4 = and i1 %2, %3, !dbg !4853
  ret i1 %4, !dbg !4854
}

; Function Attrs: optsize
declare dso_local i8* @memset(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_deinit(i32 noundef %0) local_unnamed_addr #0 !dbg !4855 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4857, metadata !DIExpression()), !dbg !4858
  %2 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #16, !dbg !4859
  br i1 %2, label %4, label %3, !dbg !4861

3:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.hal_gpt_deinit, i32 0, i32 0), i32 noundef 104, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.82, i32 0, i32 0), i32 noundef %0) #14, !dbg !4862
  br label %14, !dbg !4864

4:                                                ; preds = %1
  %5 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, !dbg !4865
  %6 = getelementptr inbounds %struct.hal_gpt_context_t, %struct.hal_gpt_context_t* %5, i32 0, i32 0, !dbg !4867
  %7 = load i32, i32* %6, align 4, !dbg !4867
  %8 = icmp eq i32 %7, 0, !dbg !4868
  br i1 %8, label %10, label %9, !dbg !4869

9:                                                ; preds = %4
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.hal_gpt_deinit, i32 0, i32 0), i32 noundef 109, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1.83, i32 0, i32 0), i32 noundef %0) #14, !dbg !4870
  br label %14, !dbg !4872

10:                                               ; preds = %4
  %11 = bitcast %struct.hal_gpt_context_t* %5 to i8*, !dbg !4873
  %12 = tail call i8* @memset(i8* noundef nonnull %11, i32 noundef 0, i32 noundef 16) #14, !dbg !4874
  %13 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !4875
  store i8 0, i8* %13, align 4, !dbg !4876
  br label %14, !dbg !4877

14:                                               ; preds = %10, %9, %3
  %15 = phi i32 [ -2, %3 ], [ -3, %9 ], [ 0, %10 ], !dbg !4858
  ret i32 %15, !dbg !4878
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_get_free_run_count(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !4879 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4884, metadata !DIExpression()), !dbg !4886
  call void @llvm.dbg.value(metadata i32* %1, metadata !4885, metadata !DIExpression()), !dbg !4886
  switch i32 %0, label %24 [
    i32 0, label %3
    i32 1, label %9
    i32 2, label %18
  ], !dbg !4887

3:                                                ; preds = %2
  %4 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !4888
  %5 = icmp eq i32 %4, 1, !dbg !4892
  br i1 %5, label %7, label %6, !dbg !4893

6:                                                ; preds = %3
  tail call void @CM4_GPT2Init() #14, !dbg !4894
  br label %7, !dbg !4896

7:                                                ; preds = %6, %3
  %8 = tail call i32 @get_current_count() #14, !dbg !4897
  store i32 %8, i32* %1, align 4, !dbg !4898
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !4899
  br label %25, !dbg !4900

9:                                                ; preds = %2
  %10 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !4901
  %11 = icmp eq i32 %10, 1, !dbg !4905
  br i1 %11, label %13, label %12, !dbg !4906

12:                                               ; preds = %9
  tail call void @CM4_GPT4Init() #14, !dbg !4907
  br label %13, !dbg !4909

13:                                               ; preds = %12, %9
  %14 = tail call i32 @get_current_gpt4_count() #14, !dbg !4910
  %15 = tail call i32 @top_mcu_freq_get() #14, !dbg !4911
  %16 = udiv i32 %15, 1000000, !dbg !4912
  %17 = udiv i32 %14, %16, !dbg !4913
  store i32 %17, i32* %1, align 4, !dbg !4914
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !4915
  br label %25, !dbg !4916

18:                                               ; preds = %2
  %19 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !4917
  %20 = icmp eq i32 %19, 1, !dbg !4921
  br i1 %20, label %22, label %21, !dbg !4922

21:                                               ; preds = %18
  tail call void @CM4_GPT4Init() #14, !dbg !4923
  br label %22, !dbg !4925

22:                                               ; preds = %21, %18
  %23 = tail call i32 @get_current_gpt4_count() #14, !dbg !4926
  store i32 %23, i32* %1, align 4, !dbg !4927
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !4928
  br label %25

24:                                               ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.hal_gpt_get_free_run_count, i32 0, i32 0), i32 noundef 141, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2.86, i32 0, i32 0), i32 noundef %0) #14, !dbg !4929
  br label %25, !dbg !4931

25:                                               ; preds = %7, %22, %13, %24
  %26 = phi i32 [ -1, %24 ], [ 0, %13 ], [ 0, %22 ], [ 0, %7 ], !dbg !4886
  ret i32 %26, !dbg !4932
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local i32 @hal_gpt_get_duration_count(i32 noundef %0, i32 noundef %1, i32* noundef writeonly %2) local_unnamed_addr #4 !dbg !4933 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4937, metadata !DIExpression()), !dbg !4940
  call void @llvm.dbg.value(metadata i32 %1, metadata !4938, metadata !DIExpression()), !dbg !4940
  call void @llvm.dbg.value(metadata i32* %2, metadata !4939, metadata !DIExpression()), !dbg !4940
  %4 = icmp eq i32* %2, null, !dbg !4941
  br i1 %4, label %7, label %5, !dbg !4943

5:                                                ; preds = %3
  %6 = sub i32 %1, %0, !dbg !4944
  store i32 %6, i32* %2, align 4, !dbg !4944
  br label %7, !dbg !4946

7:                                                ; preds = %3, %5
  %8 = phi i32 [ 0, %5 ], [ -1, %3 ], !dbg !4940
  ret i32 %8, !dbg !4947
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_get_running_status(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !4948 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4953, metadata !DIExpression()), !dbg !4955
  call void @llvm.dbg.value(metadata i32* %1, metadata !4954, metadata !DIExpression()), !dbg !4955
  %3 = icmp ugt i32 %0, 4, !dbg !4956
  br i1 %3, label %4, label %5, !dbg !4958

4:                                                ; preds = %2
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.hal_gpt_get_running_status, i32 0, i32 0), i32 noundef 167, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3.87, i32 0, i32 0), i32 noundef %0) #14, !dbg !4959
  br label %8, !dbg !4961

5:                                                ; preds = %2
  %6 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 0, !dbg !4962
  %7 = load i32, i32* %6, align 4, !dbg !4962
  store i32 %7, i32* %1, align 4, !dbg !4963
  br label %8, !dbg !4964

8:                                                ; preds = %5, %4
  %9 = phi i32 [ -2, %4 ], [ 0, %5 ], !dbg !4955
  ret i32 %9, !dbg !4965
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_register_callback(i32 noundef %0, void (i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #0 !dbg !4966 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4970, metadata !DIExpression()), !dbg !4973
  call void @llvm.dbg.value(metadata void (i8*)* %1, metadata !4971, metadata !DIExpression()), !dbg !4973
  call void @llvm.dbg.value(metadata i8* %2, metadata !4972, metadata !DIExpression()), !dbg !4973
  %4 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #16, !dbg !4974
  br i1 %4, label %6, label %5, !dbg !4976

5:                                                ; preds = %3
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.hal_gpt_register_callback, i32 0, i32 0), i32 noundef 179, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4.88, i32 0, i32 0), i32 noundef %0) #14, !dbg !4977
  br label %15, !dbg !4979

6:                                                ; preds = %3
  %7 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !4980
  %8 = load i8, i8* %7, align 4, !dbg !4980, !range !1320
  %9 = icmp eq i8 %8, 1, !dbg !4982
  br i1 %9, label %10, label %15, !dbg !4983

10:                                               ; preds = %6
  %11 = icmp eq void (i8*)* %1, null, !dbg !4984
  br i1 %11, label %15, label %12, !dbg !4986

12:                                               ; preds = %10
  %13 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 1, i32 0, !dbg !4987
  store void (i8*)* %1, void (i8*)** %13, align 4, !dbg !4988
  %14 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 1, i32 1, !dbg !4989
  store i8* %2, i8** %14, align 4, !dbg !4990
  br label %15, !dbg !4991

15:                                               ; preds = %10, %6, %12, %5
  %16 = phi i32 [ -2, %5 ], [ 0, %12 ], [ -3, %6 ], [ -1, %10 ], !dbg !4973
  ret i32 %16, !dbg !4992
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_start_timer_ms(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !4993 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4998, metadata !DIExpression()), !dbg !5001
  call void @llvm.dbg.value(metadata i32 %1, metadata !4999, metadata !DIExpression()), !dbg !5001
  call void @llvm.dbg.value(metadata i32 %2, metadata !5000, metadata !DIExpression()), !dbg !5001
  %4 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #16, !dbg !5002
  br i1 %4, label %6, label %5, !dbg !5004

5:                                                ; preds = %3
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.hal_gpt_start_timer_ms, i32 0, i32 0), i32 noundef 221, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4.88, i32 0, i32 0), i32 noundef %0) #14, !dbg !5005
  br label %17, !dbg !5007

6:                                                ; preds = %3
  %7 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 2, !dbg !5008
  %8 = load i8, i8* %7, align 4, !dbg !5008, !range !1320
  %9 = icmp eq i8 %8, 1, !dbg !5010
  br i1 %9, label %10, label %17, !dbg !5011

10:                                               ; preds = %6
  %11 = icmp ugt i32 %1, 130150523, !dbg !5012
  br i1 %11, label %17, label %12, !dbg !5014

12:                                               ; preds = %10
  %13 = tail call fastcc i32 @hal_gpt_translate_timeout_time(i32 noundef %1) #16, !dbg !5015
  %14 = tail call fastcc zeroext i1 @hal_gpt_translate_type(i32 noundef %2) #16, !dbg !5016
  %15 = tail call fastcc void ()* @hal_gpt_map_callback(i32 noundef %0) #16, !dbg !5017
  tail call void @drvTMR_init(i32 noundef %0, i32 noundef %13, i1 noundef zeroext %14, void ()* noundef nonnull %15) #14, !dbg !5018
  tail call void @TMR_Start(i32 noundef %0) #14, !dbg !5019
  %16 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 0, !dbg !5020
  store i32 1, i32* %16, align 4, !dbg !5021
  br label %17, !dbg !5022

17:                                               ; preds = %10, %6, %12, %5
  %18 = phi i32 [ -2, %5 ], [ 0, %12 ], [ -3, %6 ], [ -1, %10 ], !dbg !5001
  ret i32 %18, !dbg !5023
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_gpt_translate_timeout_time(i32 noundef %0) unnamed_addr #8 !dbg !5024 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5028, metadata !DIExpression()), !dbg !5029
  %2 = shl i32 %0, 5, !dbg !5030
  %3 = mul i32 %0, 7, !dbg !5031
  %4 = udiv i32 %3, 10, !dbg !5032
  %5 = add i32 %4, %2, !dbg !5033
  %6 = mul i32 %0, 6, !dbg !5034
  %7 = udiv i32 %6, 100, !dbg !5035
  %8 = add i32 %5, %7, !dbg !5036
  %9 = shl i32 %0, 3, !dbg !5037
  %10 = udiv i32 %9, 1000, !dbg !5038
  %11 = add i32 %8, %10, !dbg !5039
  ret i32 %11, !dbg !5040
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_gpt_translate_type(i32 noundef %0) unnamed_addr #8 !dbg !5041 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5045, metadata !DIExpression()), !dbg !5046
  %2 = icmp eq i32 %0, 1, !dbg !5047
  ret i1 %2, !dbg !5048
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc nonnull void ()* @hal_gpt_map_callback(i32 noundef %0) unnamed_addr #8 !dbg !5049 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5054, metadata !DIExpression()), !dbg !5055
  %2 = icmp eq i32 %0, 0, !dbg !5056
  %3 = select i1 %2, void ()* @hal_gpt_callback0, void ()* @hal_gpt_callback1, !dbg !5057
  ret void ()* %3, !dbg !5058
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_gpt_callback0() #0 !dbg !5059 {
  %1 = load void (i8*)*, void (i8*)** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 0, i32 1, i32 0), align 4, !dbg !5063
  %2 = icmp eq void (i8*)* %1, null, !dbg !5065
  br i1 %2, label %5, label %3, !dbg !5066

3:                                                ; preds = %0
  %4 = load i8*, i8** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 0, i32 1, i32 1), align 4, !dbg !5067
  tail call void %1(i8* noundef %4) #14, !dbg !5069
  br label %5, !dbg !5070

5:                                                ; preds = %3, %0
  store i32 0, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 0, i32 0), align 4, !dbg !5071
  ret void, !dbg !5072
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_gpt_callback1() #0 !dbg !5073 {
  %1 = load void (i8*)*, void (i8*)** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 1, i32 1, i32 0), align 4, !dbg !5076
  %2 = icmp eq void (i8*)* %1, null, !dbg !5078
  br i1 %2, label %5, label %3, !dbg !5079

3:                                                ; preds = %0
  %4 = load i8*, i8** getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 1, i32 1, i32 1), align 4, !dbg !5080
  tail call void %1(i8* noundef %4) #14, !dbg !5082
  br label %5, !dbg !5083

5:                                                ; preds = %3, %0
  store i32 0, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 1, i32 0), align 4, !dbg !5084
  ret void, !dbg !5085
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_stop_timer(i32 noundef %0) local_unnamed_addr #0 !dbg !5086 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5088, metadata !DIExpression()), !dbg !5089
  %2 = tail call fastcc zeroext i1 @hal_gpt_is_port_valid(i32 noundef %0) #16, !dbg !5090
  br i1 %2, label %4, label %3, !dbg !5092

3:                                                ; preds = %1
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.hal_gpt_stop_timer, i32 0, i32 0), i32 noundef 245, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4.88, i32 0, i32 0), i32 noundef %0) #14, !dbg !5093
  br label %6, !dbg !5095

4:                                                ; preds = %1
  tail call void @TMR_Stop(i32 noundef %0) #14, !dbg !5096
  %5 = getelementptr inbounds [5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 %0, i32 0, !dbg !5097
  store i32 0, i32* %5, align 4, !dbg !5098
  br label %6, !dbg !5099

6:                                                ; preds = %4, %3
  %7 = phi i32 [ -2, %3 ], [ 0, %4 ], !dbg !5089
  ret i32 %7, !dbg !5100
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_delay_ms(i32 noundef %0) local_unnamed_addr #0 !dbg !5101 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5105, metadata !DIExpression()), !dbg !5106
  %2 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !5107
  %3 = icmp eq i32 %2, 1, !dbg !5109
  br i1 %3, label %5, label %4, !dbg !5110

4:                                                ; preds = %1
  tail call void @CM4_GPT2Init() #14, !dbg !5111
  br label %5, !dbg !5113

5:                                                ; preds = %4, %1
  tail call void @delay_ms(i32 noundef %0) #14, !dbg !5114
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 2, i32 0), align 4, !dbg !5115
  ret i32 0, !dbg !5116
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpt_delay_us(i32 noundef %0) local_unnamed_addr #0 !dbg !5117 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5119, metadata !DIExpression()), !dbg !5120
  %2 = load i32, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !5121
  %3 = icmp eq i32 %2, 1, !dbg !5123
  br i1 %3, label %5, label %4, !dbg !5124

4:                                                ; preds = %1
  tail call void @CM4_GPT4Init() #14, !dbg !5125
  br label %5, !dbg !5127

5:                                                ; preds = %4, %1
  tail call void @delay_us(i32 noundef %0) #14, !dbg !5128
  store i32 1, i32* getelementptr inbounds ([5 x %struct.hal_gpt_context_t], [5 x %struct.hal_gpt_context_t]* @g_gpt_context, i32 0, i32 4, i32 0), align 4, !dbg !5129
  ret i32 0, !dbg !5130
}

; Function Attrs: noinline nounwind optsize
define dso_local void @uart_send_handler(i32 noundef %0) local_unnamed_addr #0 !dbg !5131 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5133, metadata !DIExpression()), !dbg !5136
  %4 = bitcast i32* %2 to i8*, !dbg !5137
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #13, !dbg !5137
  %5 = bitcast i32* %3 to i8*, !dbg !5138
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #13, !dbg !5138
  %6 = getelementptr inbounds [2 x i8], [2 x i8]* @g_uart_frist_send_complete_interrupt, i32 0, i32 %0, !dbg !5139
  %7 = load i8, i8* %6, align 1, !dbg !5139, !range !1320
  %8 = icmp eq i8 %7, 0, !dbg !5141
  br i1 %8, label %9, label %26, !dbg !5142

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32* %3, metadata !5135, metadata !DIExpression(DW_OP_deref)), !dbg !5136
  %10 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %3) #14, !dbg !5143
  call void @llvm.dbg.value(metadata i32* %2, metadata !5134, metadata !DIExpression(DW_OP_deref)), !dbg !5136
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 0, i32* noundef nonnull %2) #14, !dbg !5145
  %11 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 1, !dbg !5146
  %12 = load i32, i32* %11, align 4, !dbg !5146
  %13 = load i32, i32* %2, align 4, !dbg !5148
  call void @llvm.dbg.value(metadata i32 %13, metadata !5134, metadata !DIExpression()), !dbg !5136
  %14 = icmp eq i32 %12, %13, !dbg !5149
  br i1 %14, label %15, label %23, !dbg !5150

15:                                               ; preds = %9
  %16 = getelementptr inbounds [2 x i8], [2 x i8]* @g_uart_send_lock_status, i32 0, i32 %0, !dbg !5151
  %17 = load i8, i8* %16, align 1, !dbg !5151, !range !1320
  %18 = icmp eq i8 %17, 0, !dbg !5151
  br i1 %18, label %23, label %19, !dbg !5154

19:                                               ; preds = %15
  %20 = getelementptr inbounds [2 x i8], [2 x i8]* @g_uart_sleep_handler, i32 0, i32 %0, !dbg !5155
  %21 = load i8, i8* %20, align 1, !dbg !5155
  %22 = call i32 @hal_sleep_manager_unlock_sleep(i8 noundef zeroext %21) #14, !dbg !5157
  store i8 0, i8* %16, align 1, !dbg !5158
  br label %23, !dbg !5159

23:                                               ; preds = %15, %19, %9
  %24 = load i32, i32* %3, align 4, !dbg !5160
  call void @llvm.dbg.value(metadata i32 %24, metadata !5135, metadata !DIExpression()), !dbg !5136
  %25 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %24) #14, !dbg !5161
  br label %27, !dbg !5162

26:                                               ; preds = %1
  store i8 0, i8* %6, align 1, !dbg !5163
  br label %27

27:                                               ; preds = %26, %23
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #13, !dbg !5165
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #13, !dbg !5165
  ret void, !dbg !5165
}

; Function Attrs: optsize
declare dso_local i32 @hal_sleep_manager_unlock_sleep(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_init(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #0 !dbg !5166 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5172, metadata !DIExpression()), !dbg !5174
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !5173, metadata !DIExpression()), !dbg !5174
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #16, !dbg !5175
  br i1 %3, label %4, label %24, !dbg !5177

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !5178
  %6 = load i8, i8* %5, align 4, !dbg !5178, !range !1320
  %7 = icmp eq i8 %6, 0, !dbg !5178
  br i1 %7, label %8, label %24, !dbg !5180

8:                                                ; preds = %4
  %9 = tail call i8* @memset(i8* noundef nonnull %5, i32 noundef 0, i32 noundef 64) #14, !dbg !5181
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !5182
  %11 = bitcast %struct.hal_uart_config_t* %10 to i8*, !dbg !5183
  %12 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !5184
  %13 = tail call i8* @memcpy(i8* noundef nonnull %11, i8* noundef %12, i32 noundef 16) #14, !dbg !5185
  store i8 1, i8* %5, align 4, !dbg !5186
  %14 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #16, !dbg !5187, !range !5188
  tail call void @uart_reset_default_value(i32 noundef %14) #14, !dbg !5189
  tail call void @halUART_HWInit(i32 noundef %14) #14, !dbg !5190
  %15 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #16, !dbg !5191
  %16 = icmp eq i32 %15, 0, !dbg !5193
  br i1 %16, label %17, label %24, !dbg !5194

17:                                               ; preds = %8
  tail call void @uart_set_sleep_mode(i32 noundef %14) #14, !dbg !5195
  %18 = getelementptr inbounds [2 x i8], [2 x i8]* @g_uart_frist_send_complete_interrupt, i32 0, i32 %0, !dbg !5196
  store i8 0, i8* %18, align 1, !dbg !5197
  %19 = getelementptr inbounds [2 x i8], [2 x i8]* @g_uart_send_lock_status, i32 0, i32 %0, !dbg !5198
  store i8 0, i8* %19, align 1, !dbg !5199
  %20 = getelementptr inbounds [0 x i8*], [0 x i8*]* bitcast ([2 x i8*]* @g_uart_sleep_handler_name to [0 x i8*]*), i32 0, i32 %0, !dbg !5200
  %21 = load i8*, i8** %20, align 4, !dbg !5200
  %22 = tail call zeroext i8 @hal_sleep_manager_set_sleep_handle(i8* noundef %21) #14, !dbg !5201
  %23 = getelementptr inbounds [2 x i8], [2 x i8]* @g_uart_sleep_handler, i32 0, i32 %0, !dbg !5202
  store i8 %22, i8* %23, align 1, !dbg !5203
  br label %24, !dbg !5204

24:                                               ; preds = %8, %4, %2, %17
  %25 = phi i32 [ 0, %17 ], [ -4, %2 ], [ -3, %4 ], [ -4, %8 ], !dbg !5174
  ret i32 %25, !dbg !5205
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef readonly %1) unnamed_addr #9 !dbg !5206 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5212, metadata !DIExpression()), !dbg !5214
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !5213, metadata !DIExpression()), !dbg !5214
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5215
  %4 = icmp ne %struct.hal_uart_config_t* %1, null
  %5 = and i1 %4, %3, !dbg !5217
  br i1 %5, label %6, label %22, !dbg !5217

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !5218
  %8 = load i32, i32* %7, align 4, !dbg !5218
  %9 = icmp ugt i32 %8, 12, !dbg !5220
  br i1 %9, label %22, label %10, !dbg !5221

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !5222
  %12 = load i32, i32* %11, align 4, !dbg !5222
  %13 = icmp ugt i32 %12, 2, !dbg !5223
  br i1 %13, label %22, label %14, !dbg !5224

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !5225
  %16 = load i32, i32* %15, align 4, !dbg !5225
  %17 = icmp ugt i32 %16, 1, !dbg !5226
  br i1 %17, label %22, label %18, !dbg !5227

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !5228
  %20 = load i32, i32* %19, align 4, !dbg !5228
  %21 = icmp ult i32 %20, 4, !dbg !5229
  br label %22, !dbg !5230

22:                                               ; preds = %18, %6, %10, %14, %2
  %23 = phi i1 [ false, %2 ], [ false, %14 ], [ false, %10 ], [ false, %6 ], [ %21, %18 ], !dbg !5214
  ret i1 %23, !dbg !5231
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_port(i32 noundef %0) unnamed_addr #8 !dbg !5232 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5236, metadata !DIExpression()), !dbg !5237
  %2 = icmp ne i32 %0, 0, !dbg !5238
  %3 = zext i1 %2 to i32, !dbg !5239
  ret i32 %3, !dbg !5240
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #0 !dbg !5241 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5245, metadata !DIExpression()), !dbg !5247
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !5246, metadata !DIExpression()), !dbg !5247
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #16, !dbg !5248
  br i1 %3, label %4, label %22, !dbg !5250

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !5251
  %6 = bitcast %struct.hal_uart_config_t* %5 to i8*, !dbg !5252
  %7 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !5253
  %8 = tail call i8* @memcpy(i8* noundef nonnull %6, i8* noundef %7, i32 noundef 16) #14, !dbg !5254
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #16, !dbg !5255
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !5256
  %11 = load i32, i32* %10, align 4, !dbg !5256
  %12 = tail call fastcc i32 @hal_uart_translate_baudrate(i32 noundef %11) #16, !dbg !5257
  %13 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !5258
  %14 = load i32, i32* %13, align 4, !dbg !5258
  %15 = tail call fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %14) #16, !dbg !5259
  %16 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !5260
  %17 = load i32, i32* %16, align 4, !dbg !5260
  %18 = tail call fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %17) #16, !dbg !5261
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !5262
  %20 = load i32, i32* %19, align 4, !dbg !5262
  %21 = tail call fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %20) #16, !dbg !5263
  tail call void @halUART_SetFormat(i32 noundef %9, i32 noundef %12, i16 noundef zeroext %15, i16 noundef zeroext %18, i16 noundef zeroext %21) #14, !dbg !5264
  br label %22, !dbg !5265

22:                                               ; preds = %2, %4
  %23 = phi i32 [ 0, %4 ], [ -4, %2 ], !dbg !5247
  ret i32 %23, !dbg !5266
}

; Function Attrs: optsize
declare dso_local zeroext i8 @hal_sleep_manager_set_sleep_handle(i8* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_baudrate(i32 noundef %0) unnamed_addr #8 !dbg !5267 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5271, metadata !DIExpression()), !dbg !5274
  call void @llvm.dbg.declare(metadata [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, metadata !5272, metadata !DIExpression()), !dbg !5275
  %2 = getelementptr inbounds [13 x i32], [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, i32 0, i32 %0, !dbg !5276
  %3 = load i32, i32* %2, align 4, !dbg !5276
  ret i32 %3, !dbg !5277
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %0) unnamed_addr #8 !dbg !5278 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5282, metadata !DIExpression()), !dbg !5285
  call void @llvm.dbg.declare(metadata [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, metadata !5283, metadata !DIExpression()), !dbg !5286
  %2 = getelementptr inbounds [4 x i16], [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, i32 0, i32 %0, !dbg !5287
  %3 = load i16, i16* %2, align 2, !dbg !5287
  ret i16 %3, !dbg !5288
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %0) unnamed_addr #8 !dbg !5289 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5293, metadata !DIExpression()), !dbg !5296
  call void @llvm.dbg.declare(metadata [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, metadata !5294, metadata !DIExpression()), !dbg !5297
  %2 = getelementptr inbounds [5 x i16], [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, i32 0, i32 %0, !dbg !5298
  %3 = load i16, i16* %2, align 2, !dbg !5298
  ret i16 %3, !dbg !5299
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %0) unnamed_addr #8 !dbg !5300 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5304, metadata !DIExpression()), !dbg !5307
  call void @llvm.dbg.declare(metadata [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, metadata !5305, metadata !DIExpression()), !dbg !5308
  %2 = getelementptr inbounds [3 x i16], [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, i32 0, i32 %0, !dbg !5309
  %3 = load i16, i16* %2, align 2, !dbg !5309
  ret i16 %3, !dbg !5310
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) unnamed_addr #8 !dbg !5311 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5315, metadata !DIExpression()), !dbg !5316
  %2 = icmp ult i32 %0, 2, !dbg !5317
  ret i1 %2, !dbg !5318
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_deinit(i32 noundef %0) local_unnamed_addr #0 !dbg !5319 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5323, metadata !DIExpression()), !dbg !5324
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5325
  br i1 %2, label %3, label %18, !dbg !5327

3:                                                ; preds = %1
  %4 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !5328
  %5 = load i8, i8* %4, align 4, !dbg !5328, !range !1320
  %6 = icmp eq i8 %5, 0, !dbg !5330
  br i1 %6, label %18, label %7, !dbg !5331

7:                                                ; preds = %3
  %8 = tail call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i32 noundef 64) #14, !dbg !5332
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #16, !dbg !5333, !range !5188
  tail call void @uart_query_empty(i32 noundef %9) #14, !dbg !5334
  %10 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([2 x i32]* @g_uart_port_to_irq_num to [0 x i32]*), i32 0, i32 %0, !dbg !5335
  %11 = load i32, i32* %10, align 4, !dbg !5335
  %12 = tail call i32 @hal_nvic_disable_irq(i32 noundef %11) #14, !dbg !5336
  %13 = getelementptr inbounds [2 x i8], [2 x i8]* @g_uart_frist_send_complete_interrupt, i32 0, i32 %0, !dbg !5337
  store i8 0, i8* %13, align 1, !dbg !5338
  %14 = getelementptr inbounds [2 x i8], [2 x i8]* @g_uart_send_lock_status, i32 0, i32 %0, !dbg !5339
  store i8 0, i8* %14, align 1, !dbg !5340
  tail call void @uart_mask_send_interrupt(i32 noundef %9) #14, !dbg !5341
  %15 = getelementptr inbounds [2 x i8], [2 x i8]* @g_uart_sleep_handler, i32 0, i32 %0, !dbg !5342
  %16 = load i8, i8* %15, align 1, !dbg !5342
  %17 = tail call i32 @hal_sleep_manager_release_sleep_handle(i8 noundef zeroext %16) #14, !dbg !5343
  tail call void @uart_reset_default_value(i32 noundef %9) #14, !dbg !5344
  br label %18, !dbg !5345

18:                                               ; preds = %3, %1, %7
  %19 = phi i32 [ 0, %7 ], [ -4, %1 ], [ -2, %3 ], !dbg !5324
  ret i32 %19, !dbg !5346
}

; Function Attrs: optsize
declare dso_local i32 @hal_sleep_manager_release_sleep_handle(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize
define dso_local void @hal_uart_put_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !5347 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5351, metadata !DIExpression()), !dbg !5354
  call void @llvm.dbg.value(metadata i8 %1, metadata !5352, metadata !DIExpression()), !dbg !5354
  %3 = icmp eq i32 %0, 0, !dbg !5355
  %4 = icmp eq i32 %0, 1, !dbg !5355
  %5 = select i1 %4, i32 1, i32 2, !dbg !5355
  %6 = select i1 %3, i32 0, i32 %5, !dbg !5355
  call void @llvm.dbg.value(metadata i32 %6, metadata !5353, metadata !DIExpression()), !dbg !5354
  %7 = icmp eq i32 %6, 2, !dbg !5356
  br i1 %7, label %9, label %8, !dbg !5358

8:                                                ; preds = %2
  tail call void @uart_output_char(i32 noundef %6, i8 noundef zeroext %1) #14, !dbg !5359
  br label %9, !dbg !5361

9:                                                ; preds = %2, %8
  ret void, !dbg !5362
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_polling(i32 noundef %0, i8* noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !5363 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5367, metadata !DIExpression()), !dbg !5372
  call void @llvm.dbg.value(metadata i8* %1, metadata !5368, metadata !DIExpression()), !dbg !5372
  call void @llvm.dbg.value(metadata i32 %2, metadata !5369, metadata !DIExpression()), !dbg !5372
  %4 = icmp eq i32 %0, 0, !dbg !5373
  %5 = icmp eq i32 %0, 1, !dbg !5373
  %6 = select i1 %5, i32 1, i32 2, !dbg !5373
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5373
  call void @llvm.dbg.value(metadata i32 %7, metadata !5370, metadata !DIExpression()), !dbg !5372
  %8 = icmp eq i8* %1, null, !dbg !5374
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !5376
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !5376
  call void @llvm.dbg.value(metadata i32 0, metadata !5371, metadata !DIExpression()), !dbg !5372
  br i1 %12, label %19, label %13, !dbg !5376

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !5371, metadata !DIExpression()), !dbg !5372
  %15 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !5377
  %16 = load i8, i8* %15, align 1, !dbg !5377
  tail call void @uart_output_char(i32 noundef %7, i8 noundef zeroext %16) #14, !dbg !5383
  %17 = add nuw i32 %14, 1, !dbg !5384
  call void @llvm.dbg.value(metadata i32 %17, metadata !5371, metadata !DIExpression()), !dbg !5372
  %18 = icmp eq i32 %17, %2, !dbg !5385
  br i1 %18, label %19, label %13, !dbg !5386, !llvm.loop !5387

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !5372
  ret i32 %20, !dbg !5389
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !5390 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5392, metadata !DIExpression()), !dbg !5400
  call void @llvm.dbg.value(metadata i8* %1, metadata !5393, metadata !DIExpression()), !dbg !5400
  call void @llvm.dbg.value(metadata i32 %2, metadata !5394, metadata !DIExpression()), !dbg !5400
  %6 = bitcast i32* %4 to i8*, !dbg !5401
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #13, !dbg !5401
  %7 = bitcast i32* %5 to i8*, !dbg !5402
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #13, !dbg !5402
  %8 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5403
  br i1 %8, label %9, label %37, !dbg !5405

9:                                                ; preds = %3
  %10 = icmp eq i8* %1, null, !dbg !5406
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !5408
  br i1 %12, label %37, label %13, !dbg !5408

13:                                               ; preds = %9
  %14 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !5409
  %15 = load i8, i8* %14, align 4, !dbg !5409, !range !1320
  %16 = icmp eq i8 %15, 0, !dbg !5409
  br i1 %16, label %37, label %17, !dbg !5411

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i32* %5, metadata !5399, metadata !DIExpression(DW_OP_deref)), !dbg !5400
  %18 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #14, !dbg !5412
  %19 = getelementptr inbounds [2 x i8], [2 x i8]* @g_uart_send_lock_status, i32 0, i32 %0, !dbg !5413
  %20 = load i8, i8* %19, align 1, !dbg !5413, !range !1320
  %21 = icmp eq i8 %20, 0, !dbg !5415
  br i1 %21, label %22, label %26, !dbg !5416

22:                                               ; preds = %17
  %23 = getelementptr inbounds [2 x i8], [2 x i8]* @g_uart_sleep_handler, i32 0, i32 %0, !dbg !5417
  %24 = load i8, i8* %23, align 1, !dbg !5417
  %25 = call i32 @hal_sleep_manager_lock_sleep(i8 noundef zeroext %24) #14, !dbg !5419
  store i8 1, i8* %19, align 1, !dbg !5420
  br label %26, !dbg !5421

26:                                               ; preds = %22, %17
  %27 = load i32, i32* %5, align 4, !dbg !5422
  call void @llvm.dbg.value(metadata i32 %27, metadata !5399, metadata !DIExpression()), !dbg !5400
  %28 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %27) #14, !dbg !5423
  %29 = call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #16, !dbg !5424, !range !5188
  call void @llvm.dbg.value(metadata i32* %4, metadata !5395, metadata !DIExpression(DW_OP_deref)), !dbg !5400
  call void @halUART_Get_VFIFO_Length(i32 noundef %29, i32 noundef 0, i32* noundef nonnull %4) #14, !dbg !5425
  %30 = load i32, i32* %4, align 4, !dbg !5426
  call void @llvm.dbg.value(metadata i32 %30, metadata !5395, metadata !DIExpression()), !dbg !5400
  %31 = icmp ult i32 %30, %2, !dbg !5428
  %32 = select i1 %31, i32 %30, i32 %2
  call void @llvm.dbg.value(metadata i32 %32, metadata !5396, metadata !DIExpression()), !dbg !5400
  call void @halUART_Write_VFIFO_Data(i32 noundef %29, i8* noundef nonnull %1, i32 noundef %32) #14, !dbg !5429
  %33 = load i32, i32* %4, align 4, !dbg !5430
  call void @llvm.dbg.value(metadata i32 %33, metadata !5395, metadata !DIExpression()), !dbg !5400
  %34 = icmp eq i32 %32, %33, !dbg !5432
  br i1 %34, label %35, label %37, !dbg !5433

35:                                               ; preds = %26
  %36 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %29, i1 noundef zeroext false) #16, !dbg !5434, !range !5436
  call void @llvm.dbg.value(metadata i32 %36, metadata !5397, metadata !DIExpression()), !dbg !5400
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %36) #14, !dbg !5437
  br label %37, !dbg !5438

37:                                               ; preds = %26, %35, %13, %9, %3
  %38 = phi i32 [ 0, %3 ], [ 0, %9 ], [ 0, %13 ], [ %32, %35 ], [ %32, %26 ], !dbg !5400
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #13, !dbg !5439
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #13, !dbg !5439
  ret i32 %38, !dbg !5439
}

; Function Attrs: optsize
declare dso_local i32 @hal_sleep_manager_lock_sleep(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #8 !dbg !5440 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5444, metadata !DIExpression()), !dbg !5447
  call void @llvm.dbg.value(metadata i1 %1, metadata !5445, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5447
  %3 = icmp eq i32 %0, 0, !dbg !5448
  %4 = select i1 %1, i32 15, i32 14, !dbg !5450
  %5 = select i1 %1, i32 17, i32 16, !dbg !5450
  %6 = select i1 %3, i32 %4, i32 %5, !dbg !5450
  call void @llvm.dbg.value(metadata i32 %6, metadata !5446, metadata !DIExpression()), !dbg !5447
  ret i32 %6, !dbg !5451
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_enable_interrupt(i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @hal_uart_get_char(i32 noundef %0) local_unnamed_addr #0 !dbg !5452 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5456, metadata !DIExpression()), !dbg !5458
  %2 = icmp eq i32 %0, 0, !dbg !5459
  %3 = icmp eq i32 %0, 1, !dbg !5459
  %4 = select i1 %3, i32 1, i32 2, !dbg !5459
  %5 = select i1 %2, i32 0, i32 %4, !dbg !5459
  call void @llvm.dbg.value(metadata i32 %5, metadata !5457, metadata !DIExpression()), !dbg !5458
  %6 = icmp ult i32 %5, 2, !dbg !5460
  br i1 %6, label %7, label %9, !dbg !5462

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @uart_input_char(i32 noundef %5) #14, !dbg !5463
  br label %9, !dbg !5465

9:                                                ; preds = %1, %7
  %10 = phi i8 [ %8, %7 ], [ 0, %1 ], !dbg !5466
  ret i8 %10, !dbg !5467
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_char_unblocking(i32 noundef %0) local_unnamed_addr #0 !dbg !5468 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5472, metadata !DIExpression()), !dbg !5474
  %2 = icmp eq i32 %0, 0, !dbg !5475
  %3 = icmp eq i32 %0, 1, !dbg !5475
  %4 = select i1 %3, i32 1, i32 2, !dbg !5475
  %5 = select i1 %2, i32 0, i32 %4, !dbg !5475
  call void @llvm.dbg.value(metadata i32 %5, metadata !5473, metadata !DIExpression()), !dbg !5474
  %6 = icmp ult i32 %5, 2, !dbg !5476
  br i1 %6, label %7, label %9, !dbg !5478

7:                                                ; preds = %1
  %8 = tail call i32 @uart_input_char_unblocking(i32 noundef %5) #14, !dbg !5479
  br label %9, !dbg !5481

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ], !dbg !5482
  ret i32 %10, !dbg !5483
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_polling(i32 noundef %0, i8* noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !5484 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5488, metadata !DIExpression()), !dbg !5493
  call void @llvm.dbg.value(metadata i8* %1, metadata !5489, metadata !DIExpression()), !dbg !5493
  call void @llvm.dbg.value(metadata i32 %2, metadata !5490, metadata !DIExpression()), !dbg !5493
  %4 = icmp eq i32 %0, 0, !dbg !5494
  %5 = icmp eq i32 %0, 1, !dbg !5494
  %6 = select i1 %5, i32 1, i32 2, !dbg !5494
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5494
  call void @llvm.dbg.value(metadata i32 %7, metadata !5491, metadata !DIExpression()), !dbg !5493
  %8 = icmp eq i8* %1, null, !dbg !5495
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !5497
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !5497
  call void @llvm.dbg.value(metadata i32 0, metadata !5492, metadata !DIExpression()), !dbg !5493
  br i1 %12, label %19, label %13, !dbg !5497

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !5492, metadata !DIExpression()), !dbg !5493
  %15 = tail call zeroext i8 @uart_input_char(i32 noundef %7) #14, !dbg !5498
  %16 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !5504
  store i8 %15, i8* %16, align 1, !dbg !5505
  %17 = add nuw i32 %14, 1, !dbg !5506
  call void @llvm.dbg.value(metadata i32 %17, metadata !5492, metadata !DIExpression()), !dbg !5493
  %18 = icmp eq i32 %17, %2, !dbg !5507
  br i1 %18, label %19, label %13, !dbg !5508, !llvm.loop !5509

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !5493
  ret i32 %20, !dbg !5511
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #0 !dbg !5512 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5514, metadata !DIExpression()), !dbg !5520
  call void @llvm.dbg.value(metadata i8* %1, metadata !5515, metadata !DIExpression()), !dbg !5520
  call void @llvm.dbg.value(metadata i32 %2, metadata !5516, metadata !DIExpression()), !dbg !5520
  %5 = bitcast i32* %4 to i8*, !dbg !5521
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #13, !dbg !5521
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5522
  br i1 %6, label %7, label %20, !dbg !5524

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !5525
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !5527
  br i1 %10, label %20, label %11, !dbg !5527

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #16, !dbg !5528, !range !5188
  call void @llvm.dbg.value(metadata i32* %4, metadata !5517, metadata !DIExpression(DW_OP_deref)), !dbg !5520
  call void @halUART_Get_VFIFO_Length(i32 noundef %12, i32 noundef 1, i32* noundef nonnull %4) #14, !dbg !5529
  %13 = load i32, i32* %4, align 4, !dbg !5530
  call void @llvm.dbg.value(metadata i32 %13, metadata !5517, metadata !DIExpression()), !dbg !5520
  %14 = icmp ult i32 %13, %2, !dbg !5532
  %15 = select i1 %14, i32 %13, i32 %2
  call void @llvm.dbg.value(metadata i32 %15, metadata !5518, metadata !DIExpression()), !dbg !5520
  call void @halUART_Read_VFIFO_Data(i32 noundef %12, i8* noundef nonnull %1, i32 noundef %15) #14, !dbg !5533
  %16 = load i32, i32* %4, align 4, !dbg !5534
  call void @llvm.dbg.value(metadata i32 %16, metadata !5517, metadata !DIExpression()), !dbg !5520
  %17 = icmp eq i32 %15, %16, !dbg !5536
  br i1 %17, label %18, label %20, !dbg !5537

18:                                               ; preds = %11
  %19 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %12, i1 noundef zeroext true) #16, !dbg !5538, !range !5436
  call void @llvm.dbg.value(metadata i32 %19, metadata !5519, metadata !DIExpression()), !dbg !5520
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %19) #14, !dbg !5540
  br label %20, !dbg !5541

20:                                               ; preds = %11, %18, %7, %3
  %21 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %15, %18 ], [ %15, %11 ], !dbg !5520
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #13, !dbg !5542
  ret i32 %21, !dbg !5542
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_send_space(i32 noundef %0) local_unnamed_addr #0 !dbg !5543 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5545, metadata !DIExpression()), !dbg !5547
  %3 = bitcast i32* %2 to i8*, !dbg !5548
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #13, !dbg !5548
  call void @llvm.dbg.value(metadata i32 0, metadata !5546, metadata !DIExpression()), !dbg !5547
  store i32 0, i32* %2, align 4, !dbg !5549
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5550
  br i1 %4, label %5, label %8, !dbg !5552

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #16, !dbg !5553, !range !5188
  call void @llvm.dbg.value(metadata i32* %2, metadata !5546, metadata !DIExpression(DW_OP_deref)), !dbg !5547
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 0, i32* noundef nonnull %2) #14, !dbg !5554
  %7 = load i32, i32* %2, align 4, !dbg !5555
  call void @llvm.dbg.value(metadata i32 %7, metadata !5546, metadata !DIExpression()), !dbg !5547
  br label %8, !dbg !5556

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !5547
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #13, !dbg !5557
  ret i32 %9, !dbg !5557
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_receive_bytes(i32 noundef %0) local_unnamed_addr #0 !dbg !5558 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5560, metadata !DIExpression()), !dbg !5562
  %3 = bitcast i32* %2 to i8*, !dbg !5563
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #13, !dbg !5563
  call void @llvm.dbg.value(metadata i32 0, metadata !5561, metadata !DIExpression()), !dbg !5562
  store i32 0, i32* %2, align 4, !dbg !5564
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5565
  br i1 %4, label %5, label %8, !dbg !5567

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #16, !dbg !5568, !range !5188
  call void @llvm.dbg.value(metadata i32* %2, metadata !5561, metadata !DIExpression(DW_OP_deref)), !dbg !5562
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 1, i32* noundef nonnull %2) #14, !dbg !5569
  %7 = load i32, i32* %2, align 4, !dbg !5570
  call void @llvm.dbg.value(metadata i32 %7, metadata !5561, metadata !DIExpression()), !dbg !5562
  br label %8, !dbg !5571

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !5562
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #13, !dbg !5572
  ret i32 %9, !dbg !5572
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_register_callback(i32 noundef %0, void (i32, i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #0 !dbg !5573 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5577, metadata !DIExpression()), !dbg !5581
  call void @llvm.dbg.value(metadata void (i32, i8*)* %1, metadata !5578, metadata !DIExpression()), !dbg !5581
  call void @llvm.dbg.value(metadata i8* %2, metadata !5579, metadata !DIExpression()), !dbg !5581
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5582
  %5 = icmp ne void (i32, i8*)* %1, null
  %6 = and i1 %5, %4, !dbg !5584
  br i1 %6, label %7, label %24, !dbg !5584

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 0, !dbg !5585
  store void (i32, i8*)* %1, void (i32, i8*)** %8, align 4, !dbg !5586
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 1, !dbg !5587
  store i8* %2, i8** %9, align 4, !dbg !5588
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 2, !dbg !5589
  store i8 1, i8* %10, align 4, !dbg !5590
  %11 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #16, !dbg !5591
  %12 = tail call fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) #16, !dbg !5592
  tail call void @halUART_VDMA_Rx_Register_Callback(i32 noundef %11, void ()* noundef %12) #14, !dbg !5593
  tail call void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %11, void ()* noundef %12) #14, !dbg !5594
  %13 = icmp eq i32 %11, 0, !dbg !5595
  br i1 %13, label %14, label %15, !dbg !5597

14:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 14, void ()* noundef nonnull @hal_uart_send_callback0) #14, !dbg !5598
  br label %16, !dbg !5600

15:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 16, void ()* noundef nonnull @hal_uart_send_callback1) #14, !dbg !5601
  br label %16

16:                                               ; preds = %15, %14
  %17 = tail call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %11, i1 noundef zeroext false) #16, !dbg !5603, !range !5436
  call void @llvm.dbg.value(metadata i32 %17, metadata !5580, metadata !DIExpression()), !dbg !5581
  tail call void @DMA_Vfifo_enable_interrupt(i32 noundef %17) #14, !dbg !5604
  %18 = getelementptr inbounds [2 x i8], [2 x i8]* @g_uart_frist_send_complete_interrupt, i32 0, i32 %0, !dbg !5605
  store i8 1, i8* %18, align 1, !dbg !5606
  %19 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([2 x i32]* @g_uart_port_to_irq_num to [0 x i32]*), i32 0, i32 %0, !dbg !5607
  %20 = load i32, i32* %19, align 4, !dbg !5607
  %21 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef %20, void (i32)* noundef nonnull @uart_interrupt_handler) #14, !dbg !5608
  tail call void @uart_unmask_send_interrupt(i32 noundef %11) #14, !dbg !5609
  %22 = load i32, i32* %19, align 4, !dbg !5610
  %23 = tail call i32 @hal_nvic_enable_irq(i32 noundef %22) #14, !dbg !5611
  br label %24, !dbg !5612

24:                                               ; preds = %3, %16
  %25 = phi i32 [ 0, %16 ], [ -4, %3 ], !dbg !5581
  ret i32 %25, !dbg !5613
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) unnamed_addr #8 !dbg !714 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !720, metadata !DIExpression()), !dbg !5614
  %2 = getelementptr inbounds [2 x void ()*], [2 x void ()*]* @hal_uart_map_receive_callback.func_tbl, i32 0, i32 %0, !dbg !5615
  %3 = load void ()*, void ()** %2, align 4, !dbg !5615
  ret void ()* %3, !dbg !5616
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback0() #0 !dbg !5617 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !5623, !range !1320
  %2 = icmp eq i8 %1, 0, !dbg !5623
  br i1 %2, label %8, label %3, !dbg !5624

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !5625
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !5627
  br i1 %5, label %8, label %6, !dbg !5628

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !5629
  tail call void %4(i32 noundef 2, i8* noundef %7) #14, !dbg !5631
  br label %8, !dbg !5632

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #16, !dbg !5633, !range !5188
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #16, !dbg !5634
  ret void, !dbg !5635
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback1() #0 !dbg !5636 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !5641, !range !1320
  %2 = icmp eq i8 %1, 0, !dbg !5641
  br i1 %2, label %8, label %3, !dbg !5642

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !5643
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !5645
  br i1 %5, label %8, label %6, !dbg !5646

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !5647
  tail call void %4(i32 noundef 2, i8* noundef %7) #14, !dbg !5649
  br label %8, !dbg !5650

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #16, !dbg !5651, !range !5188
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #16, !dbg !5652
  ret void, !dbg !5653
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @hal_uart_check_irq_disable(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #0 !dbg !5654 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5658, metadata !DIExpression()), !dbg !5665
  call void @llvm.dbg.value(metadata i1 %1, metadata !5659, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5665
  %5 = bitcast i32* %3 to i8*, !dbg !5666
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #13, !dbg !5666
  %6 = bitcast i32* %4 to i8*, !dbg !5666
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #13, !dbg !5666
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !5662, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !5665
  br i1 %1, label %7, label %12, !dbg !5667

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !5662, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !5665
  call void @llvm.dbg.value(metadata i32* %3, metadata !5660, metadata !DIExpression(DW_OP_deref)), !dbg !5665
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 1, i32* noundef nonnull %3) #14, !dbg !5668
  %8 = load i32, i32* %3, align 4, !dbg !5671
  call void @llvm.dbg.value(metadata i32 %8, metadata !5660, metadata !DIExpression()), !dbg !5665
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 5, !dbg !5673
  %10 = load i32, i32* %9, align 4, !dbg !5673
  %11 = icmp ult i32 %8, %10, !dbg !5674
  br i1 %11, label %22, label %20, !dbg !5675

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32* %4, metadata !5661, metadata !DIExpression(DW_OP_deref)), !dbg !5665
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 0, i32* noundef nonnull %4) #14, !dbg !5676
  %13 = load i32, i32* %4, align 4, !dbg !5678
  call void @llvm.dbg.value(metadata i32 %13, metadata !5661, metadata !DIExpression()), !dbg !5665
  %14 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 1, !dbg !5680
  %15 = load i32, i32* %14, align 4, !dbg !5680
  %16 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 2, !dbg !5681
  %17 = load i32, i32* %16, align 4, !dbg !5681
  %18 = sub i32 %15, %17, !dbg !5682
  %19 = icmp ult i32 %13, %18, !dbg !5683
  br i1 %19, label %22, label %20, !dbg !5684

20:                                               ; preds = %12, %7
  %21 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) #16, !dbg !5685, !range !5436
  call void @DMA_Vfifo_disable_interrupt(i32 noundef %21) #14, !dbg !5685
  br label %22, !dbg !5686

22:                                               ; preds = %20, %12, %7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #13, !dbg !5686
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #13, !dbg !5686
  ret void, !dbg !5686
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_disable_interrupt(i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback0() #0 !dbg !5687 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !5692, !range !1320
  %2 = icmp eq i8 %1, 0, !dbg !5692
  br i1 %2, label %11, label %3, !dbg !5693

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 0) #16, !dbg !5694
  %5 = icmp eq i32 %4, 0, !dbg !5695
  br i1 %5, label %11, label %6, !dbg !5696

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !5697
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !5699
  br i1 %8, label %11, label %9, !dbg !5700

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !5701
  tail call void %7(i32 noundef 1, i8* noundef %10) #14, !dbg !5703
  br label %11, !dbg !5704

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #16, !dbg !5705, !range !5188
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #16, !dbg !5706
  ret void, !dbg !5707
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback1() #0 !dbg !5708 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !5713, !range !1320
  %2 = icmp eq i8 %1, 0, !dbg !5713
  br i1 %2, label %11, label %3, !dbg !5714

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 1) #16, !dbg !5715
  %5 = icmp eq i32 %4, 0, !dbg !5716
  br i1 %5, label %11, label %6, !dbg !5717

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !5718
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !5720
  br i1 %8, label %11, label %9, !dbg !5721

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !5722
  tail call void %7(i32 noundef 1, i8* noundef %10) #14, !dbg !5724
  br label %11, !dbg !5725

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #16, !dbg !5726, !range !5188
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #16, !dbg !5727
  ret void, !dbg !5728
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_baudrate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !5729 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5733, metadata !DIExpression()), !dbg !5735
  call void @llvm.dbg.value(metadata i32 %1, metadata !5734, metadata !DIExpression()), !dbg !5735
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5736
  %4 = icmp ult i32 %1, 13
  %5 = and i1 %4, %3, !dbg !5738
  br i1 %5, label %6, label %10, !dbg !5738

6:                                                ; preds = %2
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !5739
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %7, i32 0, i32 0, !dbg !5740
  store i32 %1, i32* %8, align 4, !dbg !5741
  %9 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef nonnull %7) #16, !dbg !5742
  br label %10, !dbg !5743

10:                                               ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ -4, %2 ], !dbg !5735
  ret i32 %11, !dbg !5744
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma(i32 noundef %0, %struct.hal_uart_dma_config_t* noundef %1) local_unnamed_addr #0 !dbg !5745 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5751, metadata !DIExpression()), !dbg !5753
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %1, metadata !5752, metadata !DIExpression()), !dbg !5753
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5754
  br i1 %3, label %4, label %28, !dbg !5756

4:                                                ; preds = %2
  %5 = tail call fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef %1) #16, !dbg !5757
  br i1 %5, label %6, label %28, !dbg !5759

6:                                                ; preds = %4
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !5760
  store i8 1, i8* %7, align 4, !dbg !5761
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, !dbg !5762
  %9 = bitcast %struct.hal_uart_dma_config_t* %8 to i8*, !dbg !5763
  %10 = bitcast %struct.hal_uart_dma_config_t* %1 to i8*, !dbg !5764
  %11 = tail call i8* @memcpy(i8* noundef nonnull %9, i8* noundef %10, i32 noundef 28) #14, !dbg !5765
  tail call void @DMA_Init() #14, !dbg !5766
  tail call void @DMA_Vfifo_init() #14, !dbg !5767
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #16, !dbg !5768
  %13 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 3, !dbg !5769
  %14 = load i8*, i8** %13, align 4, !dbg !5769
  %15 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 4, !dbg !5770
  %16 = load i32, i32* %15, align 4, !dbg !5770
  %17 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 6, !dbg !5771
  %18 = load i32, i32* %17, align 4, !dbg !5771
  %19 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 5, !dbg !5772
  %20 = load i32, i32* %19, align 4, !dbg !5772
  %21 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef 5000) #16, !dbg !5773
  tail call void @halUART_Rx_VFIFO_Initialize(i32 noundef %12, i8* noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %21) #14, !dbg !5774
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 0, !dbg !5775
  %23 = load i8*, i8** %22, align 4, !dbg !5775
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 1, !dbg !5776
  %25 = load i32, i32* %24, align 4, !dbg !5776
  %26 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 2, !dbg !5777
  %27 = load i32, i32* %26, align 4, !dbg !5777
  tail call void @halUART_Tx_VFIFO_Initialize(i32 noundef %12, i8* noundef %23, i32 noundef %25, i32 noundef %27) #14, !dbg !5778
  br label %28, !dbg !5779

28:                                               ; preds = %4, %2, %6
  %29 = phi i32 [ 0, %6 ], [ -4, %2 ], [ -4, %4 ], !dbg !5753
  ret i32 %29, !dbg !5780
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef readonly %0) unnamed_addr #9 !dbg !5781 {
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %0, metadata !5785, metadata !DIExpression()), !dbg !5786
  %2 = icmp eq %struct.hal_uart_dma_config_t* %0, null, !dbg !5787
  br i1 %2, label %27, label %3, !dbg !5789

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 3, !dbg !5790
  %5 = load i8*, i8** %4, align 4, !dbg !5790
  %6 = icmp eq i8* %5, null, !dbg !5792
  br i1 %6, label %27, label %7, !dbg !5793

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 4, !dbg !5794
  %9 = load i32, i32* %8, align 4, !dbg !5794
  %10 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 5, !dbg !5796
  %11 = load i32, i32* %10, align 4, !dbg !5796
  %12 = icmp ult i32 %9, %11, !dbg !5797
  br i1 %12, label %27, label %13, !dbg !5798

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 6, !dbg !5799
  %15 = load i32, i32* %14, align 4, !dbg !5799
  %16 = icmp ult i32 %9, %15, !dbg !5801
  br i1 %16, label %27, label %17, !dbg !5802

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 0, !dbg !5803
  %19 = load i8*, i8** %18, align 4, !dbg !5803
  %20 = icmp eq i8* %19, null, !dbg !5805
  br i1 %20, label %27, label %21, !dbg !5806

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 1, !dbg !5807
  %23 = load i32, i32* %22, align 4, !dbg !5807
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 2, !dbg !5809
  %25 = load i32, i32* %24, align 4, !dbg !5809
  %26 = icmp uge i32 %23, %25, !dbg !5810
  br label %27, !dbg !5811

27:                                               ; preds = %21, %17, %13, %7, %3, %1
  %28 = phi i1 [ false, %1 ], [ false, %3 ], [ false, %7 ], [ false, %13 ], [ false, %17 ], [ %26, %21 ], !dbg !5786
  ret i1 %28, !dbg !5812
}

; Function Attrs: optsize
declare dso_local void @DMA_Init() local_unnamed_addr #6

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_init() local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @hal_uart_translate_timeout(i32 noundef %0) unnamed_addr #0 !dbg !5813 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5815, metadata !DIExpression()), !dbg !5817
  %2 = tail call i32 @top_mcu_freq_get() #14, !dbg !5818
  %3 = udiv i32 %2, 1000000, !dbg !5819
  call void @llvm.dbg.value(metadata i32 %3, metadata !5816, metadata !DIExpression()), !dbg !5817
  %4 = mul i32 %3, %0, !dbg !5820
  ret i32 %4, !dbg !5821
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !5822 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5824, metadata !DIExpression()), !dbg !5826
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5827
  br i1 %2, label %3, label %8, !dbg !5829

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !5830
  %5 = icmp eq i32 %0, 1, !dbg !5830
  %6 = select i1 %5, i32 1, i32 2, !dbg !5830
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5830
  call void @llvm.dbg.value(metadata i32 %7, metadata !5825, metadata !DIExpression()), !dbg !5826
  tail call void @uart_set_hardware_flowcontrol(i32 noundef %7) #14, !dbg !5831
  br label %8, !dbg !5832

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !5826
  ret i32 %9, !dbg !5833
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 !dbg !5834 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5838, metadata !DIExpression()), !dbg !5843
  call void @llvm.dbg.value(metadata i8 %1, metadata !5839, metadata !DIExpression()), !dbg !5843
  call void @llvm.dbg.value(metadata i8 %2, metadata !5840, metadata !DIExpression()), !dbg !5843
  call void @llvm.dbg.value(metadata i8 %3, metadata !5841, metadata !DIExpression()), !dbg !5843
  %5 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5844
  br i1 %5, label %6, label %11, !dbg !5846

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 0, !dbg !5847
  %8 = icmp eq i32 %0, 1, !dbg !5847
  %9 = select i1 %8, i32 1, i32 2, !dbg !5847
  %10 = select i1 %7, i32 0, i32 %9, !dbg !5847
  call void @llvm.dbg.value(metadata i32 %10, metadata !5842, metadata !DIExpression()), !dbg !5843
  tail call void @uart_set_software_flowcontrol(i32 noundef %10, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #14, !dbg !5848
  br label %11, !dbg !5849

11:                                               ; preds = %4, %6
  %12 = phi i32 [ 0, %6 ], [ -4, %4 ], !dbg !5843
  ret i32 %12, !dbg !5850
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !5851 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5853, metadata !DIExpression()), !dbg !5855
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5856
  br i1 %2, label %3, label %8, !dbg !5858

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !5859
  %5 = icmp eq i32 %0, 1, !dbg !5859
  %6 = select i1 %5, i32 1, i32 2, !dbg !5859
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5859
  call void @llvm.dbg.value(metadata i32 %7, metadata !5854, metadata !DIExpression()), !dbg !5855
  tail call void @uart_disable_flowcontrol(i32 noundef %7) #14, !dbg !5860
  br label %8, !dbg !5861

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !5855
  ret i32 %9, !dbg !5862
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma_timeout(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !5863 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5867, metadata !DIExpression()), !dbg !5869
  call void @llvm.dbg.value(metadata i32 %1, metadata !5868, metadata !DIExpression()), !dbg !5869
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #16, !dbg !5870
  br i1 %3, label %4, label %8, !dbg !5872

4:                                                ; preds = %2
  %5 = icmp eq i32 %0, 0, !dbg !5873
  %6 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef %1) #16, !dbg !5875
  %7 = select i1 %5, i32 15, i32 17
  tail call void @DMA_Vfifo_Set_timeout(i32 noundef %7, i32 noundef %6) #14, !dbg !5875
  br label %8, !dbg !5876

8:                                                ; preds = %4, %2
  %9 = phi i32 [ -4, %2 ], [ 0, %4 ], !dbg !5869
  ret i32 %9, !dbg !5876
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Set_timeout(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local zeroext i8 @customer_flash_suspend_bit() local_unnamed_addr #8 !dbg !5877 {
  call void @llvm.dbg.value(metadata i8 5, metadata !5881, metadata !DIExpression()), !dbg !5882
  ret i8 5, !dbg !5883
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i8* @customer_switch_spi_mode_command() local_unnamed_addr #8 !dbg !5884 {
  ret i8* getelementptr inbounds ([4 x i8], [4 x i8]* @cmdlist_switchspi_default, i32 0, i32 0), !dbg !5887
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i8* @customer_switch_spiq_mode_command() local_unnamed_addr #8 !dbg !5888 {
  ret i8* getelementptr inbounds ([9 x i8], [9 x i8]* @cmdlist_switchspiq_default, i32 0, i32 0), !dbg !5889
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local zeroext i8 @customer_flash_read_SR2_comand() local_unnamed_addr #8 !dbg !5890 {
  call void @llvm.dbg.value(metadata i8 5, metadata !5892, metadata !DIExpression()), !dbg !5893
  ret i8 5, !dbg !5894
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local noalias %struct.flash_info_t* @customer_flash_register() local_unnamed_addr #8 !dbg !5895 {
  ret %struct.flash_info_t* null, !dbg !5898
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @gpio_mode_init() local_unnamed_addr #5 !dbg !5899 {
  call void @llvm.dbg.declare(metadata [10 x i32]* @__const.gpio_mode_init.mode_temp, metadata !5902, metadata !DIExpression()), !dbg !5906
  call void @llvm.dbg.value(metadata i32 0, metadata !5901, metadata !DIExpression()), !dbg !5907
  br label %1, !dbg !5908

1:                                                ; preds = %0, %1
  %2 = phi i32 [ 0, %0 ], [ %8, %1 ]
  call void @llvm.dbg.value(metadata i32 %2, metadata !5901, metadata !DIExpression()), !dbg !5907
  %3 = getelementptr inbounds [10 x i32], [10 x i32]* @__const.gpio_mode_init.mode_temp, i32 0, i32 %2, !dbg !5910
  %4 = load i32, i32* %3, align 4, !dbg !5910
  %5 = shl nuw nsw i32 %2, 2, !dbg !5910
  %6 = add nuw nsw i32 %5, -2130563040, !dbg !5910
  %7 = inttoptr i32 %6 to i32*, !dbg !5910
  store volatile i32 %4, i32* %7, align 4, !dbg !5910
  %8 = add nuw nsw i32 %2, 1, !dbg !5913
  call void @llvm.dbg.value(metadata i32 %8, metadata !5901, metadata !DIExpression()), !dbg !5907
  %9 = icmp eq i32 %8, 10, !dbg !5914
  br i1 %9, label %10, label %1, !dbg !5908, !llvm.loop !5915

10:                                               ; preds = %1
  ret void, !dbg !5917
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @gpio_oe_init() local_unnamed_addr #5 !dbg !5918 {
  call void @llvm.dbg.value(metadata i32 0, metadata !5920, metadata !DIExpression()), !dbg !5923
  call void @llvm.dbg.value(metadata i32 0, metadata !5920, metadata !DIExpression()), !dbg !5923
  store volatile i32 -419430160, i32* inttoptr (i32 -2097106800 to i32*), align 16, !dbg !5924
  call void @llvm.dbg.value(metadata i32 1, metadata !5920, metadata !DIExpression()), !dbg !5923
  call void @llvm.dbg.value(metadata i32 1, metadata !5920, metadata !DIExpression()), !dbg !5923
  store volatile i32 100663495, i32* inttoptr (i32 -2097106784 to i32*), align 32, !dbg !5924
  call void @llvm.dbg.value(metadata i32 2, metadata !5920, metadata !DIExpression()), !dbg !5923
  call void @llvm.dbg.value(metadata i32 2, metadata !5920, metadata !DIExpression()), !dbg !5923
  store volatile i32 0, i32* inttoptr (i32 -2097106768 to i32*), align 16, !dbg !5924
  call void @llvm.dbg.value(metadata i32 3, metadata !5920, metadata !DIExpression()), !dbg !5923
  ret void, !dbg !5928
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @gpio_ies_init() local_unnamed_addr #5 !dbg !5929 {
  call void @llvm.dbg.value(metadata i32 0, metadata !5931, metadata !DIExpression()), !dbg !5933
  call void @llvm.dbg.value(metadata i32 0, metadata !5931, metadata !DIExpression()), !dbg !5933
  store volatile i32 419430159, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !5934
  call void @llvm.dbg.value(metadata i32 1, metadata !5931, metadata !DIExpression()), !dbg !5933
  call void @llvm.dbg.value(metadata i32 1, metadata !5931, metadata !DIExpression()), !dbg !5933
  store volatile i32 -100663496, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !5934
  call void @llvm.dbg.value(metadata i32 2, metadata !5931, metadata !DIExpression()), !dbg !5933
  call void @llvm.dbg.value(metadata i32 2, metadata !5931, metadata !DIExpression()), !dbg !5933
  store volatile i32 511, i32* inttoptr (i32 -2097106680 to i32*), align 8, !dbg !5934
  call void @llvm.dbg.value(metadata i32 3, metadata !5931, metadata !DIExpression()), !dbg !5933
  %1 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !5938
  %2 = and i32 %1, -3, !dbg !5938
  store volatile i32 %2, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !5938
  %3 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !5939
  %4 = or i32 %3, 2, !dbg !5939
  store volatile i32 %4, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !5939
  %5 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !5940
  %6 = or i32 %5, 2048, !dbg !5940
  store volatile i32 %6, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !5940
  %7 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !5941
  %8 = and i32 %7, -3, !dbg !5941
  store volatile i32 %8, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !5941
  %9 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !5942
  %10 = or i32 %9, 2, !dbg !5942
  store volatile i32 %10, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !5942
  %11 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !5943
  %12 = or i32 %11, 2048, !dbg !5943
  store volatile i32 %12, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !5943
  %13 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !5944
  %14 = and i32 %13, -3, !dbg !5944
  store volatile i32 %14, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !5944
  %15 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !5945
  store volatile i32 %15, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !5945
  %16 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !5946
  %17 = or i32 %16, 2048, !dbg !5946
  store volatile i32 %17, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !5946
  %18 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !5947
  %19 = and i32 %18, -3, !dbg !5947
  store volatile i32 %19, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !5947
  %20 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !5948
  store volatile i32 %20, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !5948
  %21 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !5949
  %22 = or i32 %21, 2048, !dbg !5949
  store volatile i32 %22, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !5949
  %23 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !5950
  %24 = and i32 %23, -3, !dbg !5950
  store volatile i32 %24, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !5950
  %25 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !5951
  store volatile i32 %25, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !5951
  %26 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !5952
  %27 = or i32 %26, 2048, !dbg !5952
  store volatile i32 %27, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !5952
  %28 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !5953
  %29 = and i32 %28, -3, !dbg !5953
  store volatile i32 %29, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !5953
  %30 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !5954
  store volatile i32 %30, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !5954
  %31 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !5955
  %32 = or i32 %31, 2048, !dbg !5955
  store volatile i32 %32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !5955
  ret void, !dbg !5956
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @gpio_pull_up_init() local_unnamed_addr #5 !dbg !5957 {
  call void @llvm.dbg.value(metadata i32 0, metadata !5959, metadata !DIExpression()), !dbg !5961
  call void @llvm.dbg.value(metadata i32 0, metadata !5959, metadata !DIExpression()), !dbg !5961
  store volatile i32 4, i32* inttoptr (i32 -2097106944 to i32*), align 4096, !dbg !5962
  call void @llvm.dbg.value(metadata i32 1, metadata !5959, metadata !DIExpression()), !dbg !5961
  call void @llvm.dbg.value(metadata i32 1, metadata !5959, metadata !DIExpression()), !dbg !5961
  store volatile i32 16, i32* inttoptr (i32 -2097106928 to i32*), align 16, !dbg !5962
  call void @llvm.dbg.value(metadata i32 2, metadata !5959, metadata !DIExpression()), !dbg !5961
  call void @llvm.dbg.value(metadata i32 2, metadata !5959, metadata !DIExpression()), !dbg !5961
  store volatile i32 0, i32* inttoptr (i32 -2097106912 to i32*), align 32, !dbg !5962
  call void @llvm.dbg.value(metadata i32 3, metadata !5959, metadata !DIExpression()), !dbg !5961
  %1 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !5966
  %2 = and i32 %1, -29, !dbg !5966
  store volatile i32 %2, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !5966
  %3 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !5967
  %4 = and i32 %3, -29, !dbg !5967
  store volatile i32 %4, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !5967
  %5 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !5968
  %6 = and i32 %5, -29, !dbg !5968
  store volatile i32 %6, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !5968
  %7 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !5969
  %8 = and i32 %7, -29, !dbg !5969
  store volatile i32 %8, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !5969
  %9 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !5970
  %10 = and i32 %9, -29, !dbg !5970
  store volatile i32 %10, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !5970
  %11 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !5971
  %12 = and i32 %11, -29, !dbg !5971
  store volatile i32 %12, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !5971
  ret void, !dbg !5972
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @gpio_pull_down_init() local_unnamed_addr #5 !dbg !5973 {
  call void @llvm.dbg.value(metadata i32 0, metadata !5975, metadata !DIExpression()), !dbg !5977
  call void @llvm.dbg.value(metadata i32 0, metadata !5975, metadata !DIExpression()), !dbg !5977
  store volatile i32 16776960, i32* inttoptr (i32 -2097106896 to i32*), align 16, !dbg !5978
  call void @llvm.dbg.value(metadata i32 1, metadata !5975, metadata !DIExpression()), !dbg !5977
  call void @llvm.dbg.value(metadata i32 1, metadata !5975, metadata !DIExpression()), !dbg !5977
  store volatile i32 -100663544, i32* inttoptr (i32 -2097106880 to i32*), align 64, !dbg !5978
  call void @llvm.dbg.value(metadata i32 2, metadata !5975, metadata !DIExpression()), !dbg !5977
  call void @llvm.dbg.value(metadata i32 2, metadata !5975, metadata !DIExpression()), !dbg !5977
  store volatile i32 511, i32* inttoptr (i32 -2097106864 to i32*), align 16, !dbg !5978
  call void @llvm.dbg.value(metadata i32 3, metadata !5975, metadata !DIExpression()), !dbg !5977
  ret void, !dbg !5982
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @gpio_output_init() local_unnamed_addr #5 !dbg !5983 {
  call void @llvm.dbg.value(metadata i32 0, metadata !5985, metadata !DIExpression()), !dbg !5987
  call void @llvm.dbg.value(metadata i32 0, metadata !5985, metadata !DIExpression()), !dbg !5987
  store volatile i32 64, i32* inttoptr (i32 -2097106848 to i32*), align 32, !dbg !5988
  call void @llvm.dbg.value(metadata i32 1, metadata !5985, metadata !DIExpression()), !dbg !5987
  call void @llvm.dbg.value(metadata i32 1, metadata !5985, metadata !DIExpression()), !dbg !5987
  store volatile i32 64, i32* inttoptr (i32 -2097106832 to i32*), align 16, !dbg !5988
  call void @llvm.dbg.value(metadata i32 2, metadata !5985, metadata !DIExpression()), !dbg !5987
  call void @llvm.dbg.value(metadata i32 2, metadata !5985, metadata !DIExpression()), !dbg !5987
  store volatile i32 0, i32* inttoptr (i32 -2097106816 to i32*), align 128, !dbg !5988
  call void @llvm.dbg.value(metadata i32 3, metadata !5985, metadata !DIExpression()), !dbg !5987
  ret void, !dbg !5992
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @bsp_ept_gpio_set_control_by_cm4() local_unnamed_addr #5 !dbg !5993 {
  store volatile i32 -1, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !5994
  store volatile i32 -1, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !5995
  store volatile i32 50397183, i32* inttoptr (i32 -2130571128 to i32*), align 8, !dbg !5996
  ret void, !dbg !5997
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @bsp_ept_gpio_setting_init() local_unnamed_addr #5 !dbg !5998 {
  tail call void @gpio_mode_init() #16, !dbg !5999
  tail call void @gpio_oe_init() #16, !dbg !6000
  tail call void @gpio_ies_init() #16, !dbg !6001
  tail call void @gpio_pull_up_init() #16, !dbg !6002
  tail call void @gpio_pull_down_init() #16, !dbg !6003
  tail call void @gpio_output_init() #16, !dbg !6004
  ret void, !dbg !6005
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @__io_putchar(i32 noundef returned %0) local_unnamed_addr #0 !dbg !6006 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6008, metadata !DIExpression()), !dbg !6009
  %2 = trunc i32 %0 to i8, !dbg !6010
  tail call void @hal_uart_put_char(i32 noundef 0, i8 noundef zeroext %2) #14, !dbg !6011
  ret i32 %0, !dbg !6012
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local i32 @main() local_unnamed_addr #12 !dbg !6013 {
  tail call fastcc void @SystemClock_Config() #16, !dbg !6014
  tail call fastcc void @prvSetupHardware() #16, !dbg !6015
  tail call void asm sideeffect "cpsie i", "~{memory}"() #13, !dbg !6016, !srcloc !6019
  tail call void asm sideeffect "cpsie f", "~{memory}"() #13, !dbg !6020, !srcloc !6023
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i32 0, i32 0)) #14, !dbg !6024
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.102, i32 0, i32 0)) #14, !dbg !6025
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.103, i32 0, i32 0)) #14, !dbg !6026
  %4 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i32 0, i32 0)) #14, !dbg !6027
  %5 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3.104, i32 0, i32 0)) #14, !dbg !6028
  br label %6, !dbg !6029

6:                                                ; preds = %6, %0
  br label %6, !dbg !6030, !llvm.loop !6033
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @SystemClock_Config() unnamed_addr #0 !dbg !6036 {
  tail call void @top_xtal_init() #14, !dbg !6037
  ret void, !dbg !6038
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvSetupHardware() unnamed_addr #0 !dbg !6039 {
  tail call void @bsp_ept_gpio_setting_init() #14, !dbg !6040
  tail call fastcc void @uart_log_init() #16, !dbg !6041
  ret void, !dbg !6042
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @uart_log_init() unnamed_addr #0 !dbg !6043 {
  %1 = alloca %struct.hal_uart_config_t, align 4
  %2 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !6053
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #13, !dbg !6053
  call void @llvm.dbg.declare(metadata %struct.hal_uart_config_t* %1, metadata !6045, metadata !DIExpression()), !dbg !6054
  %3 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !6055
  store i32 9, i32* %3, align 4, !dbg !6056
  %4 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !6057
  store i32 3, i32* %4, align 4, !dbg !6058
  %5 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !6059
  store i32 0, i32* %5, align 4, !dbg !6060
  %6 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !6061
  store i32 0, i32* %6, align 4, !dbg !6062
  %7 = call i32 @hal_uart_init(i32 noundef 0, %struct.hal_uart_config_t* noundef nonnull %1) #14, !dbg !6063
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #13, !dbg !6064
  ret void, !dbg !6064
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @SysTick_Set(i32 noundef %0) local_unnamed_addr #5 !dbg !6065 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6067, metadata !DIExpression()), !dbg !6069
  %2 = add i32 %0, -1, !dbg !6070
  %3 = icmp ugt i32 %2, 16777215, !dbg !6072
  br i1 %3, label %8, label %4, !dbg !6073

4:                                                ; preds = %1
  %5 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !6074
  call void @llvm.dbg.value(metadata i32 %5, metadata !6068, metadata !DIExpression()), !dbg !6069
  %6 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !6075
  %7 = and i32 %6, -4, !dbg !6075
  store volatile i32 %7, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !6075
  store volatile i32 %2, i32* inttoptr (i32 -536813548 to i32*), align 4, !dbg !6076
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !dbg !6077
  store volatile i32 %5, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !6078
  br label %8, !dbg !6079

8:                                                ; preds = %1, %4
  %9 = phi i32 [ 0, %4 ], [ 1, %1 ], !dbg !6069
  ret i32 %9, !dbg !6080
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SysInitStatus_Set() local_unnamed_addr #5 !dbg !6081 {
  store volatile i32 1, i32* @System_Initialize_Done, align 4, !dbg !6082
  ret void, !dbg !6083
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @SysInitStatus_Query() local_unnamed_addr #7 !dbg !6084 {
  %1 = load volatile i32, i32* @System_Initialize_Done, align 4, !dbg !6085
  ret i32 %1, !dbg !6086
}

; Function Attrs: noinline nounwind optsize
define dso_local void @SystemCoreClockUpdate() local_unnamed_addr #0 !dbg !6087 {
  %1 = tail call i32 @top_mcu_freq_get() #14, !dbg !6088
  store i32 %1, i32* @SystemCoreClock, align 4, !dbg !6089
  ret void, !dbg !6090
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SystemInit() local_unnamed_addr #5 !dbg !6091 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !6092
  %2 = or i32 %1, 15728640, !dbg !6092
  store volatile i32 %2, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !6092
  store volatile i32 536870912, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !6093
  %3 = load volatile i32, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !6094
  %4 = or i32 %3, 458752, !dbg !6094
  store volatile i32 %4, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !6094
  ret void, !dbg !6095
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @CachePreInit() local_unnamed_addr #5 !dbg !6096 {
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !6097
  store volatile i32 19, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !6098
  store volatile i32 3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !6099
  store volatile i32 268931328, i32* inttoptr (i32 22282240 to i32*), align 262144, !dbg !6100
  store volatile i32 269713408, i32* inttoptr (i32 22282304 to i32*), align 64, !dbg !6101
  store volatile i32 1, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !6102
  store volatile i32 781, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !6103
  ret void, !dbg !6104
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_close(i32 noundef %0) local_unnamed_addr #8 !dbg !6105 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6107, metadata !DIExpression()), !dbg !6108
  ret i32 0, !dbg !6109
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_fstat(i32 noundef %0, %struct.stat* nocapture noundef readnone %1) local_unnamed_addr #8 !dbg !6110 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6160, metadata !DIExpression()), !dbg !6162
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !6161, metadata !DIExpression()), !dbg !6162
  ret i32 0, !dbg !6163
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_isatty(i32 noundef %0) local_unnamed_addr #8 !dbg !6164 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6166, metadata !DIExpression()), !dbg !6167
  ret i32 1, !dbg !6168
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_lseek(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 !dbg !6169 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6173, metadata !DIExpression()), !dbg !6176
  call void @llvm.dbg.value(metadata i32 %1, metadata !6174, metadata !DIExpression()), !dbg !6176
  call void @llvm.dbg.value(metadata i32 %2, metadata !6175, metadata !DIExpression()), !dbg !6176
  ret i32 0, !dbg !6177
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_open(i8* nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 !dbg !6178 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !6182, metadata !DIExpression()), !dbg !6185
  call void @llvm.dbg.value(metadata i32 %1, metadata !6183, metadata !DIExpression()), !dbg !6185
  call void @llvm.dbg.value(metadata i32 %2, metadata !6184, metadata !DIExpression()), !dbg !6185
  ret i32 -1, !dbg !6186
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_read(i32 noundef %0, i8* nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #8 !dbg !6187 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6191, metadata !DIExpression()), !dbg !6194
  call void @llvm.dbg.value(metadata i8* %1, metadata !6192, metadata !DIExpression()), !dbg !6194
  call void @llvm.dbg.value(metadata i32 %2, metadata !6193, metadata !DIExpression()), !dbg !6194
  ret i32 0, !dbg !6195
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_write(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef returned %2) local_unnamed_addr #0 !dbg !6196 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6198, metadata !DIExpression()), !dbg !6202
  call void @llvm.dbg.value(metadata i8* %1, metadata !6199, metadata !DIExpression()), !dbg !6202
  call void @llvm.dbg.value(metadata i32 %2, metadata !6200, metadata !DIExpression()), !dbg !6202
  call void @llvm.dbg.value(metadata i32 0, metadata !6201, metadata !DIExpression()), !dbg !6202
  %4 = icmp sgt i32 %2, 0, !dbg !6203
  br i1 %4, label %5, label %14, !dbg !6206

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %12, %5 ], [ 0, %3 ]
  %7 = phi i8* [ %8, %5 ], [ %1, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !6201, metadata !DIExpression()), !dbg !6202
  call void @llvm.dbg.value(metadata i8* %7, metadata !6199, metadata !DIExpression()), !dbg !6202
  %8 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !6207
  call void @llvm.dbg.value(metadata i8* %8, metadata !6199, metadata !DIExpression()), !dbg !6202
  %9 = load i8, i8* %7, align 1, !dbg !6209
  %10 = zext i8 %9 to i32, !dbg !6209
  %11 = tail call i32 @__io_putchar(i32 noundef %10) #14, !dbg !6210
  %12 = add nuw nsw i32 %6, 1, !dbg !6211
  call void @llvm.dbg.value(metadata i32 %12, metadata !6201, metadata !DIExpression()), !dbg !6202
  %13 = icmp eq i32 %12, %2, !dbg !6203
  br i1 %13, label %14, label %5, !dbg !6206, !llvm.loop !6212

14:                                               ; preds = %5, %3
  ret i32 %2, !dbg !6214
}

; Function Attrs: noinline nounwind optsize
define dso_local i8* @_sbrk_r(%struct._reent* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #0 !dbg !811 {
  call void @llvm.dbg.value(metadata %struct._reent* %0, metadata !1007, metadata !DIExpression()), !dbg !6215
  call void @llvm.dbg.value(metadata i32 %1, metadata !1008, metadata !DIExpression()), !dbg !6215
  %3 = tail call i8* asm sideeffect "MRS $0, msp\0A", "=r"() #13, !dbg !6216, !srcloc !6217
  call void @llvm.dbg.value(metadata i8* %3, metadata !1010, metadata !DIExpression()), !dbg !6215
  %4 = load i8*, i8** @_sbrk_r.heap_end, align 4, !dbg !6218
  %5 = icmp eq i8* %4, null, !dbg !6220
  %6 = select i1 %5, i8* @end, i8* %4, !dbg !6221
  call void @llvm.dbg.value(metadata i8* %6, metadata !1009, metadata !DIExpression()), !dbg !6215
  %7 = getelementptr inbounds i8, i8* %6, i32 %1, !dbg !6222
  %8 = icmp ult i8* %3, %7, !dbg !6224
  %9 = xor i1 %8, true, !dbg !6225
  %10 = or i1 %5, %9, !dbg !6225
  br i1 %10, label %11, label %13, !dbg !6225

11:                                               ; preds = %2
  %12 = select i1 %8, i8* %6, i8* %7, !dbg !6226
  store i8* %12, i8** @_sbrk_r.heap_end, align 4, !dbg !6225
  br label %13, !dbg !6225

13:                                               ; preds = %2, %11
  %14 = select i1 %8, i8* inttoptr (i32 -1 to i8*), i8* %6, !dbg !6226
  ret i8* %14, !dbg !6225
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local void @_exit(i32 noundef %0) local_unnamed_addr #12 !dbg !6227 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6229, metadata !DIExpression()), !dbg !6230
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.111, i32 0, i32 0)) #14, !dbg !6231
  br label %3, !dbg !6232

3:                                                ; preds = %1, %3
  br label %3, !dbg !6232, !llvm.loop !6233
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_kill(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !6235 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !6239, metadata !DIExpression()), !dbg !6241
  call void @llvm.dbg.value(metadata i32 %1, metadata !6240, metadata !DIExpression()), !dbg !6241
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.112, i32 0, i32 0), i32 noundef %1) #14, !dbg !6242
  ret i32 -1, !dbg !6243
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_getpid() local_unnamed_addr #0 !dbg !6244 {
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.113, i32 0, i32 0)) #14, !dbg !6249
  ret i32 0, !dbg !6250
}

attributes #0 = { noinline nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { noreturn optsize "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #5 = { nofree noinline norecurse nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #6 = { optsize "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #7 = { mustprogress nofree noinline norecurse nounwind optsize willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #10 = { nofree noinline nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #11 = { nofree nosync nounwind willreturn }
attributes #12 = { noinline noreturn nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #13 = { nounwind }
attributes #14 = { nobuiltin nounwind optsize "no-builtins" }
attributes #15 = { nobuiltin noreturn nounwind optsize "no-builtins" }
attributes #16 = { nobuiltin optsize "no-builtins" }

!llvm.dbg.cu = !{!2, !83, !1027, !164, !183, !1072, !280, !292, !1075, !342, !425, !478, !570, !609, !725, !1077, !1080, !751, !1002, !1013}
!llvm.ident = !{!1083, !1083, !1083, !1083, !1083, !1083, !1083, !1083, !1083, !1083, !1083, !1083, !1083, !1083, !1083, !1083, !1083, !1083, !1083, !1083}
!llvm.module.flags = !{!1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "NOR_FLASH_BUSY", scope: !2, file: !3, line: 74, type: !69, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !50, globals: !63, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/flash_sfc.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!4 = !{!5, !20, !28, !35, !44}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 52, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/spi_flash.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19}
!9 = !DIEnumerator(name: "SF_DRV_NOT_READY", value: -1)
!10 = !DIEnumerator(name: "SF_DRV_READY", value: 0)
!11 = !DIEnumerator(name: "SF_DRV_READING", value: 1)
!12 = !DIEnumerator(name: "SF_DRV_DIRECT_READING", value: 2)
!13 = !DIEnumerator(name: "SF_DRV_PROGRAMMING", value: 3)
!14 = !DIEnumerator(name: "SF_DRV_ERASE_WRITE", value: 4)
!15 = !DIEnumerator(name: "SF_DRV_ERASE_WRITE_CRC", value: 5)
!16 = !DIEnumerator(name: "SF_DRV_SECTOR_4K_ERASING", value: 6)
!17 = !DIEnumerator(name: "SF_DRV_SECTOR_32K_ERASING", value: 7)
!18 = !DIEnumerator(name: "SF_DRV_SECTOR_64K_ERASING", value: 8)
!19 = !DIEnumerator(name: "SF_DRV_CHIP_ERASING", value: 9)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 387, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpt.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!22 = !{!23, !24, !25, !26, !27}
!23 = !DIEnumerator(name: "HAL_GPT_STATUS_ERROR_PORT_USED", value: -4)
!24 = !DIEnumerator(name: "HAL_GPT_STATUS_ERROR", value: -3)
!25 = !DIEnumerator(name: "HAL_GPT_STATUS_ERROR_PORT", value: -2)
!26 = !DIEnumerator(name: "HAL_GPT_STATUS_INVALID_PARAMETER", value: -1)
!27 = !DIEnumerator(name: "HAL_GPT_STATUS_OK", value: 0)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !29, line: 666, baseType: !30, size: 32, elements: !31)
!29 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_platform.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!30 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!31 = !{!32, !33, !34}
!32 = !DIEnumerator(name: "HAL_GPT_CLOCK_SOURCE_32K", value: 0)
!33 = !DIEnumerator(name: "HAL_GPT_CLOCK_SOURCE_1M", value: 1)
!34 = !DIEnumerator(name: "HAL_GPT_CLOCK_SOURCE_BUS", value: 2)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 73, baseType: !30, size: 32, elements: !36)
!36 = !{!37, !38, !39, !40, !41, !42, !43}
!37 = !DIEnumerator(name: "SF_TYPE_NONE", value: 0)
!38 = !DIEnumerator(name: "SF_TYPE_MXIC", value: 194)
!39 = !DIEnumerator(name: "SF_TYPE_WINBOND", value: 239)
!40 = !DIEnumerator(name: "SF_TYPE_GD", value: 200)
!41 = !DIEnumerator(name: "SF_TYPE_MICRON", value: 32)
!42 = !DIEnumerator(name: "SF_TYPE_CUSTOMER", value: 255)
!43 = !DIEnumerator(name: "SF_TYPE_COUNT", value: 65535)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !45, line: 123, baseType: !30, size: 32, elements: !46)
!45 = !DIFile(filename: "../../../../../driver/chip/inc/hal_flash.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!46 = !{!47, !48, !49}
!47 = !DIEnumerator(name: "HAL_FLASH_BLOCK_4K", value: 0)
!48 = !DIEnumerator(name: "HAL_FLASH_BLOCK_32K", value: 1)
!49 = !DIEnumerator(name: "HAL_FLASH_BLOCK_64K", value: 2)
!50 = !{!51, !52, !59}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !55, line: 24, baseType: !56)
!55 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_stdint.h", directory: "/home/mjshen/RTOSExploration")
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !57, line: 43, baseType: !58)
!57 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/machine/_default_types.h", directory: "/home/mjshen/RTOSExploration")
!58 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 32)
!60 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !55, line: 48, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !57, line: 79, baseType: !30)
!63 = !{!64, !0, !67, !70, !72, !74, !76, !78}
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "sf_drvier_status", scope: !2, file: !3, line: 72, type: !66, isLocal: false, isDefinition: true)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "SF_DRV_STATE", file: !6, line: 64, baseType: !5)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "NOR_FLASH_SUSPENDED", scope: !2, file: !3, line: 75, type: !69, isLocal: false, isDefinition: true)
!69 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "gucFlashSFCMode", scope: !2, file: !3, line: 77, type: !61, isLocal: false, isDefinition: true)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "suspend_time", scope: !2, file: !3, line: 82, type: !61, isLocal: false, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "resume_suspend_on_ready", scope: !2, file: !3, line: 83, type: !61, isLocal: false, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "resume_suspend_on_checkready", scope: !2, file: !3, line: 84, type: !61, isLocal: false, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "sf_Mutex", scope: !2, file: !3, line: 78, type: !7, isLocal: true, isDefinition: true)
!80 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "g_u4ClkCnt1ms", scope: !83, file: !84, line: 71, type: !158, isLocal: false, isDefinition: true)
!83 = distinct !DICompileUnit(language: DW_LANG_C99, file: !84, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !85, retainedTypes: !136, globals: !141, splitDebugInlining: false, nameTableKind: None)
!84 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/gpt.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!85 = !{!86, !91}
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !87, line: 121, baseType: !30, size: 32, elements: !88)
!87 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/type_def.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!88 = !{!89, !90}
!89 = !DIEnumerator(name: "KAL_FALSE", value: 0)
!90 = !DIEnumerator(name: "KAL_TRUE", value: 1)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IRQn", file: !92, line: 47, baseType: !7, size: 32, elements: !93)
!92 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!93 = !{!94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135}
!94 = !DIEnumerator(name: "Reset_IRQn", value: -15)
!95 = !DIEnumerator(name: "NonMaskableInt_IRQn", value: -14)
!96 = !DIEnumerator(name: "HardFault_IRQn", value: -13)
!97 = !DIEnumerator(name: "MemoryManagement_IRQn", value: -12)
!98 = !DIEnumerator(name: "BusFault_IRQn", value: -11)
!99 = !DIEnumerator(name: "UsageFault_IRQn", value: -10)
!100 = !DIEnumerator(name: "SVC_IRQn", value: -5)
!101 = !DIEnumerator(name: "DebugMonitor_IRQn", value: -4)
!102 = !DIEnumerator(name: "PendSV_IRQn", value: -2)
!103 = !DIEnumerator(name: "SysTick_IRQn", value: -1)
!104 = !DIEnumerator(name: "CM4_UART1_IRQ", value: 0)
!105 = !DIEnumerator(name: "CM4_DMA_IRQ", value: 1)
!106 = !DIEnumerator(name: "CM4_HIF_IRQ", value: 2)
!107 = !DIEnumerator(name: "CM4_I2C1_IRQ", value: 3)
!108 = !DIEnumerator(name: "CM4_I2C2_IRQ", value: 4)
!109 = !DIEnumerator(name: "CM4_UART2_IRQ", value: 5)
!110 = !DIEnumerator(name: "CM4_MTK_CRYPTO_IRQ", value: 6)
!111 = !DIEnumerator(name: "CM4_SF_IRQ", value: 7)
!112 = !DIEnumerator(name: "CM4_EINT_IRQ", value: 8)
!113 = !DIEnumerator(name: "CM4_BTIF_IRQ", value: 9)
!114 = !DIEnumerator(name: "CM4_WDT_IRQ", value: 10)
!115 = !DIEnumerator(name: "CM4_AHB_MON_IRQ", value: 11)
!116 = !DIEnumerator(name: "CM4_SPI_SLAVE_IRQ", value: 12)
!117 = !DIEnumerator(name: "CM4_N9_WDT_IRQ", value: 13)
!118 = !DIEnumerator(name: "CM4_ADC_IRQ", value: 14)
!119 = !DIEnumerator(name: "CM4_IRDA_TX_IRQ", value: 15)
!120 = !DIEnumerator(name: "CM4_IRDA_RX_IRQ", value: 16)
!121 = !DIEnumerator(name: "CM4_USB_VBUS_ON_IRQ", value: 17)
!122 = !DIEnumerator(name: "CM4_USB_VBUS_OFF_IRQ", value: 18)
!123 = !DIEnumerator(name: "CM4_SPIS_CS_WAKEUP_IRQ", value: 19)
!124 = !DIEnumerator(name: "CM4_GPT3_IRQ", value: 20)
!125 = !DIEnumerator(name: "CM4_IRQ21_IRQ", value: 21)
!126 = !DIEnumerator(name: "CM4_AUDIO_IRQ", value: 22)
!127 = !DIEnumerator(name: "CM4_HIF_DMA_IRQ", value: 23)
!128 = !DIEnumerator(name: "CM4_GPT_IRQ", value: 24)
!129 = !DIEnumerator(name: "CM4_ADC_COMP_IRQ", value: 25)
!130 = !DIEnumerator(name: "CM4_AUDIO_WAKE_IRQ", value: 26)
!131 = !DIEnumerator(name: "CM4_SPIM_IRQ", value: 27)
!132 = !DIEnumerator(name: "CM4_USB_IRQ", value: 28)
!133 = !DIEnumerator(name: "CM4_UDMA_IRQ", value: 29)
!134 = !DIEnumerator(name: "CM4_TRNG_IRQ", value: 30)
!135 = !DIEnumerator(name: "IRQ_NUMBER_MAX", value: 96)
!136 = !{!137, !140}
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 32)
!138 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "kal_uint32", file: !87, line: 116, baseType: !30)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRQn_Type", file: !92, line: 95, baseType: !91)
!141 = !{!81, !142}
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "GPTTimer", scope: !83, file: !84, line: 67, type: !144, isLocal: true, isDefinition: true)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPTStruct", file: !145, line: 111, baseType: !146)
!145 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/gpt.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !145, line: 109, size: 96, elements: !147)
!147 = !{!148}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "GPT_FUNC", scope: !146, file: !145, line: 110, baseType: !149, size: 96)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpt_func", file: !145, line: 106, baseType: !150)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !145, line: 102, size: 96, elements: !151)
!151 = !{!152, !156, !157}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "gpt0_func", scope: !150, file: !145, line: 103, baseType: !153, size: 32)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 32)
!154 = !DISubroutineType(types: !155)
!155 = !{null}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "gpt1_func", scope: !150, file: !145, line: 104, baseType: !153, size: 32, offset: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "gpt3_func", scope: !150, file: !145, line: 105, baseType: !153, size: 32, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT32", file: !87, line: 62, baseType: !30)
!160 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression(DW_OP_LLVM_fragment, 0, 32))
!161 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression(DW_OP_LLVM_fragment, 32, 32))
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "g_sfc_security_enable", scope: !164, file: !165, line: 58, type: !30, isLocal: false, isDefinition: true)
!164 = distinct !DICompileUnit(language: DW_LANG_C99, file: !165, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !166, retainedTypes: !173, globals: !180, splitDebugInlining: false, nameTableKind: None)
!165 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/sfc.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!166 = !{!167}
!167 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 45, baseType: !30, size: 32, elements: !168)
!168 = !{!169, !170, !171, !172}
!169 = !DIEnumerator(name: "SF_UNDEF", value: 0)
!170 = !DIEnumerator(name: "SPI", value: 1)
!171 = !DIEnumerator(name: "SPIQ", value: 2)
!172 = !DIEnumerator(name: "QPI", value: 3)
!173 = !{!137, !174, !30, !175, !177, !178}
!174 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !30)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 32)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !58)
!180 = !{!162}
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "gSFC_max_data_size", scope: !183, file: !184, line: 67, type: !30, isLocal: false, isDefinition: true)
!183 = distinct !DICompileUnit(language: DW_LANG_C99, file: !184, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !185, retainedTypes: !192, globals: !211, splitDebugInlining: false, nameTableKind: None)
!184 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/spi_flash.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!185 = !{!35, !5, !167, !186}
!186 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 66, baseType: !7, size: 32, elements: !187)
!187 = !{!188, !189, !190, !191}
!188 = !DIEnumerator(name: "FLASH_NOT_READY", value: -1)
!189 = !DIEnumerator(name: "FLASH_READY", value: 0)
!190 = !DIEnumerator(name: "FLASH_PROGRAMMING", value: 1)
!191 = !DIEnumerator(name: "FLASH_ERASING", value: 2)
!192 = !{!193, !195, !196, !30, !51, !210, !61, !139}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 32)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!195 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chip_info", file: !6, line: 137, size: 192, elements: !199)
!199 = !{!200, !203, !204, !205, !206, !207, !208, !209}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !198, file: !6, line: 138, baseType: !201, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 32)
!202 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !198, file: !6, line: 139, baseType: !58, size: 8, offset: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "jedec_id", scope: !198, file: !6, line: 140, baseType: !195, size: 32, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "page_size", scope: !198, file: !6, line: 141, baseType: !195, size: 32, offset: 96)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "n_pages", scope: !198, file: !6, line: 142, baseType: !30, size: 32, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "quad_program_cmd", scope: !198, file: !6, line: 144, baseType: !58, size: 8, offset: 160)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "quad_read_cmd", scope: !198, file: !6, line: 145, baseType: !58, size: 8, offset: 168)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "qpi_read_cmd", scope: !198, file: !6, line: 146, baseType: !58, size: 8, offset: 176)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 32)
!211 = !{!181, !212, !217, !222, !227, !230, !232, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !264, !266, !268, !270, !273}
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(name: "cmdlist_switchqpi_winbond", scope: !183, file: !184, line: 70, type: !214, isLocal: false, isDefinition: true)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 96, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 12)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "cmdlist_switchspi_winbond", scope: !183, file: !184, line: 73, type: !219, isLocal: false, isDefinition: true)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 32, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 4)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(name: "cmdlist_switchspiq_winbond", scope: !183, file: !184, line: 76, type: !224, isLocal: false, isDefinition: true)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 72, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 9)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(name: "cmdlist_suspend_winbond", scope: !183, file: !184, line: 79, type: !229, isLocal: false, isDefinition: true)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 32, elements: !220)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(name: "cmdlist_resume_winbond", scope: !183, file: !184, line: 82, type: !229, isLocal: false, isDefinition: true)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(name: "cmdlist_switchspiq_mxic", scope: !183, file: !184, line: 87, type: !234, isLocal: false, isDefinition: true)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 64, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 8)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(name: "cmdlist_switchqpi_mxic", scope: !183, file: !184, line: 91, type: !234, isLocal: false, isDefinition: true)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(name: "cmdlist_switchspi_mxic", scope: !183, file: !184, line: 95, type: !234, isLocal: false, isDefinition: true)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(name: "cmdlist_switchspiq_gd", scope: !183, file: !184, line: 100, type: !224, isLocal: false, isDefinition: true)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(name: "cmdlist_switchqpi_gd", scope: !183, file: !184, line: 104, type: !224, isLocal: false, isDefinition: true)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(name: "cmdlist_switchspi_gd", scope: !183, file: !184, line: 108, type: !224, isLocal: false, isDefinition: true)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(name: "cmdlist_switchspi_gd25q32c", scope: !183, file: !184, line: 112, type: !234, isLocal: false, isDefinition: true)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(name: "cmdlist_switchspiq_gd25q32c", scope: !183, file: !184, line: 115, type: !234, isLocal: false, isDefinition: true)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(name: "cmdlist_switchqpi_gd25q32c", scope: !183, file: !184, line: 119, type: !234, isLocal: false, isDefinition: true)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(name: "cmdlist_switchspi_micron", scope: !183, file: !184, line: 123, type: !234, isLocal: false, isDefinition: true)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(name: "cmdlist_switchspiq_micron", scope: !183, file: !184, line: 126, type: !234, isLocal: false, isDefinition: true)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(name: "cmdlist_switchqpi_micron", scope: !183, file: !184, line: 130, type: !234, isLocal: false, isDefinition: true)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(name: "cmdlist_flash_reset_spimode", scope: !183, file: !184, line: 135, type: !261, isLocal: false, isDefinition: true)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 56, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 7)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(name: "cmdlist_flash_reset_qpimode", scope: !183, file: !184, line: 138, type: !261, isLocal: false, isDefinition: true)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(name: "spi_chip_info", scope: !183, file: !184, line: 142, type: !196, isLocal: false, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(name: "gd_write_sr2_1", scope: !183, file: !184, line: 161, type: !7, isLocal: false, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(name: "support_flash_id", scope: !183, file: !184, line: 162, type: !272, isLocal: false, isDefinition: true)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "SF_TYPT", file: !6, line: 81, baseType: !35)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(name: "chips_data", scope: !183, file: !184, line: 144, type: !275, isLocal: true, isDefinition: true)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 2496, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 13)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(name: "gXtalFreq", scope: !280, file: !281, line: 43, type: !61, isLocal: true, isDefinition: true)
!280 = distinct !DICompileUnit(language: DW_LANG_C99, file: !281, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !282, globals: !287, splitDebugInlining: false, nameTableKind: None)
!281 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/top.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!282 = !{!175, !159, !59, !283, !284, !286}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 32)
!285 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int32", file: !87, line: 133, baseType: !30)
!287 = !{!278, !288}
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(name: "gCpuFrequency", scope: !280, file: !281, line: 44, type: !61, isLocal: true, isDefinition: true)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(name: "gUartClkFreq", scope: !292, file: !293, line: 54, type: !61, isLocal: false, isDefinition: true)
!292 = distinct !DICompileUnit(language: DW_LANG_C99, file: !293, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !294, retainedTypes: !318, globals: !326, splitDebugInlining: false, nameTableKind: None)
!293 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!294 = !{!91, !295, !301}
!295 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !296, line: 71, baseType: !30, size: 32, elements: !297)
!296 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!297 = !{!298, !299, !300}
!298 = !DIEnumerator(name: "UART_PORT0", value: 0)
!299 = !DIEnumerator(name: "UART_PORT1", value: 1)
!300 = !DIEnumerator(name: "UART_MAX_PORT", value: 2)
!301 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !302, line: 129, baseType: !30, size: 32, elements: !303)
!302 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/dma_sw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!303 = !{!304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317}
!304 = !DIEnumerator(name: "VDMA_I2S_TX_CH", value: 12)
!305 = !DIEnumerator(name: "VDMA_I2S_RX_CH", value: 13)
!306 = !DIEnumerator(name: "VDMA_UART1TX_CH", value: 14)
!307 = !DIEnumerator(name: "VDMA_UART1RX_CH", value: 15)
!308 = !DIEnumerator(name: "VDMA_UART2TX_CH", value: 16)
!309 = !DIEnumerator(name: "VDMA_UART2RX_CH", value: 17)
!310 = !DIEnumerator(name: "VDMA_BTIF_TX_CH", value: 18)
!311 = !DIEnumerator(name: "VDMA_BTIF_RX_CH", value: 19)
!312 = !DIEnumerator(name: "VDMA_USB_EP2O_CH", value: 20)
!313 = !DIEnumerator(name: "VDMA_USB_EP3I_CH", value: 21)
!314 = !DIEnumerator(name: "VDMA_USB_EP3O_CH", value: 22)
!315 = !DIEnumerator(name: "VDMA_USB_EP4I_CH", value: 23)
!316 = !DIEnumerator(name: "VDMA_USB_EP4O_CH", value: 24)
!317 = !DIEnumerator(name: "VDMA_ADC_RX_CH", value: 25)
!318 = !{!175, !61, !319, !321, !323, !324, !159}
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "kal_uint16", file: !87, line: 113, baseType: !322)
!322 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !87, line: 59, baseType: !58)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 32)
!325 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !323)
!326 = !{!327, !335, !290}
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(name: "g_uart_sleep_handler_name", scope: !292, file: !293, line: 57, type: !329, isLocal: false, isDefinition: true)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 64, elements: !333)
!330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 32)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!333 = !{!334}
!334 = !DISubrange(count: 2)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(name: "g_uart_port_to_irq_num", scope: !292, file: !293, line: 58, type: !337, isLocal: false, isDefinition: true)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 64, elements: !333)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_irq_t", file: !92, line: 97, baseType: !140)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(name: "g_cache_status", scope: !342, file: !343, line: 51, type: !422, isLocal: false, isDefinition: true)
!342 = distinct !DICompileUnit(language: DW_LANG_C99, file: !343, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !344, retainedTypes: !391, globals: !421, splitDebugInlining: false, nameTableKind: None)
!343 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_cache.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!344 = !{!345, !356, !375, !382}
!345 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !346, line: 163, baseType: !7, size: 32, elements: !347)
!346 = !DIFile(filename: "../../../../../driver/chip/inc/hal_cache.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!347 = !{!348, !349, !350, !351, !352, !353, !354, !355}
!348 = !DIEnumerator(name: "HAL_CACHE_STATUS_INVALID_PARAMETER", value: -7)
!349 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_BUSY", value: -6)
!350 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_CACHE_SIZE", value: -5)
!351 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_REGION", value: -4)
!352 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_REGION_ADDRESS", value: -3)
!353 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_REGION_SIZE", value: -2)
!354 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR", value: -1)
!355 = !DIEnumerator(name: "HAL_CACHE_STATUS_OK", value: 0)
!356 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !346, line: 186, baseType: !30, size: 32, elements: !357)
!357 = !{!358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374}
!358 = !DIEnumerator(name: "HAL_CACHE_REGION_0", value: 0)
!359 = !DIEnumerator(name: "HAL_CACHE_REGION_1", value: 1)
!360 = !DIEnumerator(name: "HAL_CACHE_REGION_2", value: 2)
!361 = !DIEnumerator(name: "HAL_CACHE_REGION_3", value: 3)
!362 = !DIEnumerator(name: "HAL_CACHE_REGION_4", value: 4)
!363 = !DIEnumerator(name: "HAL_CACHE_REGION_5", value: 5)
!364 = !DIEnumerator(name: "HAL_CACHE_REGION_6", value: 6)
!365 = !DIEnumerator(name: "HAL_CACHE_REGION_7", value: 7)
!366 = !DIEnumerator(name: "HAL_CACHE_REGION_8", value: 8)
!367 = !DIEnumerator(name: "HAL_CACHE_REGION_9", value: 9)
!368 = !DIEnumerator(name: "HAL_CACHE_REGION_10", value: 10)
!369 = !DIEnumerator(name: "HAL_CACHE_REGION_11", value: 11)
!370 = !DIEnumerator(name: "HAL_CACHE_REGION_12", value: 12)
!371 = !DIEnumerator(name: "HAL_CACHE_REGION_13", value: 13)
!372 = !DIEnumerator(name: "HAL_CACHE_REGION_14", value: 14)
!373 = !DIEnumerator(name: "HAL_CACHE_REGION_15", value: 15)
!374 = !DIEnumerator(name: "HAL_CACHE_REGION_MAX", value: 16)
!375 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !346, line: 176, baseType: !30, size: 32, elements: !376)
!376 = !{!377, !378, !379, !380, !381}
!377 = !DIEnumerator(name: "HAL_CACHE_SIZE_0KB", value: 0)
!378 = !DIEnumerator(name: "HAL_CACHE_SIZE_8KB", value: 1)
!379 = !DIEnumerator(name: "HAL_CACHE_SIZE_16KB", value: 2)
!380 = !DIEnumerator(name: "HAL_CACHE_SIZE_32KB", value: 3)
!381 = !DIEnumerator(name: "HAL_CACHE_SIZE_MAX", value: 4)
!382 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !383, line: 99, baseType: !30, size: 32, elements: !384)
!383 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_internal.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!384 = !{!385, !386, !387, !388, !389, !390}
!385 = !DIEnumerator(name: "CACHE_INVALIDATE_ALL_LINES", value: 1)
!386 = !DIEnumerator(name: "CACHE_INVALIDATE_ONE_LINE_BY_ADDRESS", value: 2)
!387 = !DIEnumerator(name: "CACHE_INVALIDATE_ONE_LINE_BY_SET_WAY", value: 4)
!388 = !DIEnumerator(name: "CACHE_FLUSH_ALL_LINES", value: 9)
!389 = !DIEnumerator(name: "CACHE_FLUSH_ONE_LINE_BY_ADDRESS", value: 10)
!390 = !DIEnumerator(name: "CACHE_FLUSH_ONE_LINE_BY_SET_WAY", value: 12)
!391 = !{!392, !51}
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "CACHE_REGISTER_T", file: !394, line: 72, baseType: !395)
!394 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_hw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !394, line: 56, size: 525312, elements: !396)
!396 = !{!397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !411, !412, !416, !420}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CON", scope: !395, file: !394, line: 57, baseType: !60, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_OP", scope: !395, file: !394, line: 58, baseType: !60, size: 32, offset: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0L", scope: !395, file: !394, line: 59, baseType: !60, size: 32, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0U", scope: !395, file: !394, line: 60, baseType: !60, size: 32, offset: 96)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0L", scope: !395, file: !394, line: 61, baseType: !60, size: 32, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0U", scope: !395, file: !394, line: 62, baseType: !60, size: 32, offset: 160)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1L", scope: !395, file: !394, line: 63, baseType: !60, size: 32, offset: 192)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1U", scope: !395, file: !394, line: 64, baseType: !60, size: 32, offset: 224)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1L", scope: !395, file: !394, line: 65, baseType: !60, size: 32, offset: 256)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1U", scope: !395, file: !394, line: 66, baseType: !60, size: 32, offset: 288)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !395, file: !394, line: 67, baseType: !408, size: 32, offset: 320)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 32, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 1)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_REGION_EN", scope: !395, file: !394, line: 68, baseType: !60, size: 32, offset: 352)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !395, file: !394, line: 69, baseType: !413, size: 523904, offset: 384)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 523904, elements: !414)
!414 = !{!415}
!415 = !DISubrange(count: 16372)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_ENTRY_N", scope: !395, file: !394, line: 70, baseType: !417, size: 512, offset: 524288)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 512, elements: !418)
!418 = !{!419}
!419 = !DISubrange(count: 16)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_END_ENTRY_N", scope: !395, file: !394, line: 71, baseType: !417, size: 512, offset: 524800)
!421 = !{!340}
!422 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !69)
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(name: "g_cache_con", scope: !425, file: !426, line: 48, type: !460, isLocal: false, isDefinition: true)
!425 = distinct !DICompileUnit(language: DW_LANG_C99, file: !426, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !427, splitDebugInlining: false, nameTableKind: None)
!426 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_cache_internal.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!427 = !{!423, !428, !431}
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(name: "g_cache_region_en", scope: !425, file: !426, line: 49, type: !430, isLocal: false, isDefinition: true)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "CACHE_REGION_EN_Type", file: !383, line: 66, baseType: !61)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(name: "g_cache_entry", scope: !425, file: !426, line: 50, type: !433, isLocal: false, isDefinition: true)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 1024, elements: !418)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "CACHE_ENTRY_Type", file: !383, line: 90, baseType: !435)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !383, line: 87, size: 64, elements: !436)
!436 = !{!437, !450}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "cache_entry_n", scope: !435, file: !383, line: 88, baseType: !438, size: 32)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "CACHE_ENTRY_N_Type", file: !383, line: 77, baseType: !439)
!439 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !383, line: 68, size: 32, elements: !440)
!440 = !{!441, !449}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !439, file: !383, line: 75, baseType: !442, size: 32)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !439, file: !383, line: 69, size: 32, elements: !443)
!443 = !{!444, !445, !446, !447, !448}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "_reserved0", scope: !442, file: !383, line: 70, baseType: !61, size: 5, flags: DIFlagBitField, extraData: i64 0)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "ATTR", scope: !442, file: !383, line: 71, baseType: !61, size: 3, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !442, file: !383, line: 72, baseType: !61, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_reserved1", scope: !442, file: !383, line: 73, baseType: !61, size: 3, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "BASEADDR", scope: !442, file: !383, line: 74, baseType: !61, size: 20, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !439, file: !383, line: 76, baseType: !61, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "cache_end_entry_n", scope: !435, file: !383, line: 89, baseType: !451, size: 32, offset: 32)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "CACHE_END_ENTRY_N_Type", file: !383, line: 85, baseType: !452)
!452 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !383, line: 79, size: 32, elements: !453)
!453 = !{!454, !459}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !452, file: !383, line: 83, baseType: !455, size: 32)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !452, file: !383, line: 80, size: 32, elements: !456)
!456 = !{!457, !458}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "_reserved0", scope: !455, file: !383, line: 81, baseType: !61, size: 12, flags: DIFlagBitField, extraData: i64 0)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "BASEADDR", scope: !455, file: !383, line: 82, baseType: !61, size: 20, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !452, file: !383, line: 84, baseType: !61, size: 32)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "CACHE_CON_Type", file: !383, line: 64, baseType: !461)
!461 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !383, line: 51, size: 32, elements: !462)
!462 = !{!463, !475}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !461, file: !383, line: 62, baseType: !464, size: 32)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !461, file: !383, line: 52, size: 32, elements: !465)
!465 = !{!466, !467, !468, !469, !470, !471, !472, !473, !474}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "MCEN", scope: !464, file: !383, line: 53, baseType: !61, size: 1, flags: DIFlagBitField, extraData: i64 0)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "MPEN", scope: !464, file: !383, line: 54, baseType: !61, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "CNTEN0", scope: !464, file: !383, line: 55, baseType: !61, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "CNTEN1", scope: !464, file: !383, line: 56, baseType: !61, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "MPDEFEN", scope: !464, file: !383, line: 57, baseType: !61, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_reserved0", scope: !464, file: !383, line: 58, baseType: !61, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "MDRF", scope: !464, file: !383, line: 59, baseType: !61, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "CACHESIZE", scope: !464, file: !383, line: 60, baseType: !61, size: 2, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_reserved1", scope: !464, file: !383, line: 61, baseType: !61, size: 22, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !461, file: !383, line: 63, baseType: !61, size: 32)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(name: "nvic_function_table", scope: !478, file: !479, line: 53, type: !557, isLocal: false, isDefinition: true)
!478 = distinct !DICompileUnit(language: DW_LANG_C99, file: !479, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !480, retainedTypes: !489, globals: !556, splitDebugInlining: false, nameTableKind: None)
!479 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!480 = !{!481, !91}
!481 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !482, line: 152, baseType: !7, size: 32, elements: !483)
!482 = !DIFile(filename: "../../../../../driver/chip/inc/hal_nvic.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!483 = !{!484, !485, !486, !487, !488}
!484 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_NO_ISR", value: -4)
!485 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_IRQ_NUMBER", value: -3)
!486 = !DIEnumerator(name: "HAL_NVIC_STATUS_INVALID_PARAMETER", value: -2)
!487 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR", value: -1)
!488 = !DIEnumerator(name: "HAL_NVIC_STATUS_OK", value: 0)
!489 = !{!339, !51, !61, !490, !492, !523}
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !55, line: 44, baseType: !491)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !57, line: 77, baseType: !7)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !494, line: 378, baseType: !495)
!494 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cm4.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !494, line: 363, size: 28704, elements: !496)
!496 = !{!497, !499, !503, !504, !505, !506, !507, !508, !509, !510, !514, !518, !522}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !495, file: !494, line: 365, baseType: !498, size: 256)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 256, elements: !235)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !495, file: !494, line: 366, baseType: !500, size: 768, offset: 256)
!500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 768, elements: !501)
!501 = !{!502}
!502 = !DISubrange(count: 24)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !495, file: !494, line: 367, baseType: !498, size: 256, offset: 1024)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !495, file: !494, line: 368, baseType: !500, size: 768, offset: 1280)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !495, file: !494, line: 369, baseType: !498, size: 256, offset: 2048)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !495, file: !494, line: 370, baseType: !500, size: 768, offset: 2304)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !495, file: !494, line: 371, baseType: !498, size: 256, offset: 3072)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !495, file: !494, line: 372, baseType: !500, size: 768, offset: 3328)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !495, file: !494, line: 373, baseType: !498, size: 256, offset: 4096)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !495, file: !494, line: 374, baseType: !511, size: 1792, offset: 4352)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 1792, elements: !512)
!512 = !{!513}
!513 = !DISubrange(count: 56)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !495, file: !494, line: 375, baseType: !515, size: 1920, offset: 6144)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 1920, elements: !516)
!516 = !{!517}
!517 = !DISubrange(count: 240)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !495, file: !494, line: 376, baseType: !519, size: 20608, offset: 8064)
!519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 20608, elements: !520)
!520 = !{!521}
!521 = !DISubrange(count: 644)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !495, file: !494, line: 377, baseType: !60, size: 32, offset: 28672)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 32)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !494, line: 418, baseType: !525)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !494, line: 395, size: 1120, elements: !526)
!526 = !{!527, !529, !530, !531, !532, !533, !534, !536, !537, !538, !539, !540, !541, !542, !543, !545, !546, !547, !549, !553, !555}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !525, file: !494, line: 397, baseType: !528, size: 32)
!528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !525, file: !494, line: 398, baseType: !60, size: 32, offset: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !525, file: !494, line: 399, baseType: !60, size: 32, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !525, file: !494, line: 400, baseType: !60, size: 32, offset: 96)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !525, file: !494, line: 401, baseType: !60, size: 32, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !525, file: !494, line: 402, baseType: !60, size: 32, offset: 160)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !525, file: !494, line: 403, baseType: !535, size: 96, offset: 192)
!535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 96, elements: !215)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !525, file: !494, line: 404, baseType: !60, size: 32, offset: 288)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !525, file: !494, line: 405, baseType: !60, size: 32, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !525, file: !494, line: 406, baseType: !60, size: 32, offset: 352)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !525, file: !494, line: 407, baseType: !60, size: 32, offset: 384)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !525, file: !494, line: 408, baseType: !60, size: 32, offset: 416)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !525, file: !494, line: 409, baseType: !60, size: 32, offset: 448)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !525, file: !494, line: 410, baseType: !60, size: 32, offset: 480)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !525, file: !494, line: 411, baseType: !544, size: 64, offset: 512)
!544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !528, size: 64, elements: !333)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !525, file: !494, line: 412, baseType: !528, size: 32, offset: 576)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !525, file: !494, line: 413, baseType: !528, size: 32, offset: 608)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !525, file: !494, line: 414, baseType: !548, size: 128, offset: 640)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !528, size: 128, elements: !220)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !525, file: !494, line: 415, baseType: !550, size: 160, offset: 768)
!550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !528, size: 160, elements: !551)
!551 = !{!552}
!552 = !DISubrange(count: 5)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !525, file: !494, line: 416, baseType: !554, size: 160, offset: 928)
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 160, elements: !551)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !525, file: !494, line: 417, baseType: !60, size: 32, offset: 1088)
!556 = !{!476}
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !558, size: 6144, elements: !566)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "nvic_function_t", file: !479, line: 50, baseType: !559)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !479, line: 47, size: 64, elements: !560)
!560 = !{!561, !565}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "nvic_callback", scope: !559, file: !479, line: 48, baseType: !562, size: 32)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 32)
!563 = !DISubroutineType(types: !564)
!564 = !{null, !339}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pending", scope: !559, file: !479, line: 49, baseType: !61, size: 32, offset: 32)
!566 = !{!567}
!567 = !DISubrange(count: 96)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(name: "g_gpt_context", scope: !570, file: !571, line: 61, type: !590, isLocal: true, isDefinition: true)
!570 = distinct !DICompileUnit(language: DW_LANG_C99, file: !571, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !572, retainedTypes: !588, globals: !589, splitDebugInlining: false, nameTableKind: None)
!571 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gpt.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!572 = !{!20, !573, !580, !28, !584}
!573 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !29, line: 657, baseType: !30, size: 32, elements: !574)
!574 = !{!575, !576, !577, !578, !579}
!575 = !DIEnumerator(name: "HAL_GPT_0", value: 0)
!576 = !DIEnumerator(name: "HAL_GPT_1", value: 1)
!577 = !DIEnumerator(name: "HAL_GPT_2", value: 2)
!578 = !DIEnumerator(name: "HAL_GPT_4", value: 4)
!579 = !DIEnumerator(name: "HAL_GPT_MAX", value: 5)
!580 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 397, baseType: !30, size: 32, elements: !581)
!581 = !{!582, !583}
!582 = !DIEnumerator(name: "HAL_GPT_STOPPED", value: 0)
!583 = !DIEnumerator(name: "HAL_GPT_RUNNING", value: 1)
!584 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 380, baseType: !30, size: 32, elements: !585)
!585 = !{!586, !587}
!586 = !DIEnumerator(name: "HAL_GPT_TIMER_TYPE_ONE_SHOT", value: 0)
!587 = !DIEnumerator(name: "HAL_GPT_TIMER_TYPE_REPEAT", value: 1)
!588 = !{!51, !61}
!589 = !{!568}
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !591, size: 640, elements: !551)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_context_t", file: !571, line: 55, baseType: !592)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !571, line: 51, size: 128, elements: !593)
!593 = !{!594, !596, !606}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "running_status", scope: !592, file: !571, line: 52, baseType: !595, size: 32)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_running_status_t", file: !21, line: 400, baseType: !580)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "callback_context", scope: !592, file: !571, line: 53, baseType: !597, size: 64, offset: 32)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_callback_context", file: !571, line: 49, baseType: !598)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !571, line: 46, size: 64, elements: !599)
!599 = !{!600, !605}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !598, file: !571, line: 47, baseType: !601, size: 32)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_callback_t", file: !21, line: 371, baseType: !602)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 32)
!603 = !DISubroutineType(types: !604)
!604 = !{null, !51}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !598, file: !571, line: 48, baseType: !51, size: 32, offset: 32)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "has_initlized", scope: !592, file: !571, line: 54, baseType: !69, size: 8, offset: 96)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(name: "g_uart_frist_send_complete_interrupt", scope: !609, file: !610, line: 80, type: !711, isLocal: true, isDefinition: true)
!609 = distinct !DICompileUnit(language: DW_LANG_C99, file: !610, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !611, retainedTypes: !661, globals: !662, splitDebugInlining: false, nameTableKind: None)
!610 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!611 = !{!295, !612, !620, !625, !641, !647, !651, !301, !656}
!612 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !613, line: 345, baseType: !7, size: 32, elements: !614)
!613 = !DIFile(filename: "../../../../../driver/chip/inc/hal_uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!614 = !{!615, !616, !617, !618, !619}
!615 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_PARAMETER", value: -4)
!616 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_BUSY", value: -3)
!617 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_UNINITIALIZED", value: -2)
!618 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR", value: -1)
!619 = !DIEnumerator(name: "HAL_UART_STATUS_OK", value: 0)
!620 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !29, line: 109, baseType: !30, size: 32, elements: !621)
!621 = !{!622, !623, !624}
!622 = !DIEnumerator(name: "HAL_UART_0", value: 0)
!623 = !DIEnumerator(name: "HAL_UART_1", value: 1)
!624 = !DIEnumerator(name: "HAL_UART_MAX", value: 2)
!625 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !613, line: 302, baseType: !30, size: 32, elements: !626)
!626 = !{!627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640}
!627 = !DIEnumerator(name: "HAL_UART_BAUDRATE_110", value: 0)
!628 = !DIEnumerator(name: "HAL_UART_BAUDRATE_300", value: 1)
!629 = !DIEnumerator(name: "HAL_UART_BAUDRATE_1200", value: 2)
!630 = !DIEnumerator(name: "HAL_UART_BAUDRATE_2400", value: 3)
!631 = !DIEnumerator(name: "HAL_UART_BAUDRATE_4800", value: 4)
!632 = !DIEnumerator(name: "HAL_UART_BAUDRATE_9600", value: 5)
!633 = !DIEnumerator(name: "HAL_UART_BAUDRATE_19200", value: 6)
!634 = !DIEnumerator(name: "HAL_UART_BAUDRATE_38400", value: 7)
!635 = !DIEnumerator(name: "HAL_UART_BAUDRATE_57600", value: 8)
!636 = !DIEnumerator(name: "HAL_UART_BAUDRATE_115200", value: 9)
!637 = !DIEnumerator(name: "HAL_UART_BAUDRATE_230400", value: 10)
!638 = !DIEnumerator(name: "HAL_UART_BAUDRATE_460800", value: 11)
!639 = !DIEnumerator(name: "HAL_UART_BAUDRATE_921600", value: 12)
!640 = !DIEnumerator(name: "HAL_UART_BAUDRATE_MAX", value: 13)
!641 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !613, line: 321, baseType: !30, size: 32, elements: !642)
!642 = !{!643, !644, !645, !646}
!643 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_5", value: 0)
!644 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_6", value: 1)
!645 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_7", value: 2)
!646 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_8", value: 3)
!647 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !613, line: 330, baseType: !30, size: 32, elements: !648)
!648 = !{!649, !650}
!649 = !DIEnumerator(name: "HAL_UART_STOP_BIT_1", value: 0)
!650 = !DIEnumerator(name: "HAL_UART_STOP_BIT_2", value: 1)
!651 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !613, line: 337, baseType: !30, size: 32, elements: !652)
!652 = !{!653, !654, !655}
!653 = !DIEnumerator(name: "HAL_UART_PARITY_NONE", value: 0)
!654 = !DIEnumerator(name: "HAL_UART_PARITY_ODD", value: 1)
!655 = !DIEnumerator(name: "HAL_UART_PARITY_EVEN", value: 2)
!656 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !613, line: 355, baseType: !7, size: 32, elements: !657)
!657 = !{!658, !659, !660}
!658 = !DIEnumerator(name: "HAL_UART_EVENT_TRANSACTION_ERROR", value: -1)
!659 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_READ", value: 1)
!660 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_WRITE", value: 2)
!661 = !{!201, !30, !51, !58, !202, !54}
!662 = !{!663, !706, !607, !709, !712}
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(name: "g_uart_context_table", scope: !609, file: !610, line: 77, type: !665, isLocal: true, isDefinition: true)
!665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, size: 1024, elements: !333)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "uart_context_t", file: !610, line: 75, baseType: !667)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !610, line: 68, size: 512, elements: !668)
!668 = !{!669, !670, !682, !683, !694, !695}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config_present", scope: !667, file: !610, line: 69, baseType: !69, size: 8)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config", scope: !667, file: !610, line: 70, baseType: !671, size: 128, offset: 32)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !613, line: 378, baseType: !672)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !613, line: 373, size: 128, elements: !673)
!673 = !{!674, !676, !678, !680}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !672, file: !613, line: 374, baseType: !675, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_baudrate_t", file: !613, line: 317, baseType: !625)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !672, file: !613, line: 375, baseType: !677, size: 32, offset: 32)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_word_length_t", file: !613, line: 326, baseType: !641)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !672, file: !613, line: 376, baseType: !679, size: 32, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_stop_bit_t", file: !613, line: 333, baseType: !647)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !672, file: !613, line: 377, baseType: !681, size: 32, offset: 96)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_parity_t", file: !613, line: 341, baseType: !651)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "callback_present", scope: !667, file: !610, line: 71, baseType: !69, size: 8, offset: 160)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "callback_config", scope: !667, file: !610, line: 72, baseType: !684, size: 64, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_config_t", file: !610, line: 66, baseType: !685)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !610, line: 63, size: 64, elements: !686)
!686 = !{!687, !693}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !685, file: !610, line: 64, baseType: !688, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_t", file: !613, line: 410, baseType: !689)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 32)
!690 = !DISubroutineType(types: !691)
!691 = !{null, !692, !51}
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_event_t", file: !613, line: 359, baseType: !656)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !685, file: !610, line: 65, baseType: !51, size: 32, offset: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config_present", scope: !667, file: !610, line: 73, baseType: !69, size: 8, offset: 256)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config", scope: !667, file: !610, line: 74, baseType: !696, size: 224, offset: 288)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_dma_config_t", file: !613, line: 390, baseType: !697)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !613, line: 382, size: 224, elements: !698)
!698 = !{!699, !700, !701, !702, !703, !704, !705}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer", scope: !697, file: !613, line: 383, baseType: !210, size: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer_size", scope: !697, file: !613, line: 384, baseType: !61, size: 32, offset: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_threshold_size", scope: !697, file: !613, line: 385, baseType: !61, size: 32, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer", scope: !697, file: !613, line: 386, baseType: !210, size: 32, offset: 96)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer_size", scope: !697, file: !613, line: 387, baseType: !61, size: 32, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_threshold_size", scope: !697, file: !613, line: 388, baseType: !61, size: 32, offset: 160)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_alert_size", scope: !697, file: !613, line: 389, baseType: !61, size: 32, offset: 192)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(name: "g_uart_sleep_handler", scope: !609, file: !610, line: 82, type: !708, isLocal: true, isDefinition: true)
!708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 16, elements: !333)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(name: "g_uart_send_lock_status", scope: !609, file: !610, line: 81, type: !711, isLocal: true, isDefinition: true)
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 16, elements: !333)
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression())
!713 = distinct !DIGlobalVariable(name: "func_tbl", scope: !714, file: !610, line: 536, type: !721, isLocal: true, isDefinition: true)
!714 = distinct !DISubprogram(name: "hal_uart_map_receive_callback", scope: !610, file: !610, line: 534, type: !715, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !719)
!715 = !DISubroutineType(types: !716)
!716 = !{!717, !718}
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID_FUNC", file: !302, line: 197, baseType: !153)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_port_t", file: !29, line: 113, baseType: !620)
!719 = !{!720}
!720 = !DILocalVariable(name: "uart_port", arg: 1, scope: !714, file: !610, line: 534, type: !718)
!721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !722, size: 64, elements: !333)
!722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !717)
!723 = !DIGlobalVariableExpression(var: !724, expr: !DIExpression())
!724 = distinct !DIGlobalVariable(name: "cmdlist_switchqpi_default", scope: !725, file: !726, line: 164, type: !214, isLocal: false, isDefinition: true)
!725 = distinct !DICompileUnit(language: DW_LANG_C99, file: !726, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !727, globals: !742, splitDebugInlining: false, nameTableKind: None)
!726 = !DIFile(filename: "../../../../../driver/board/mt76x7_hdk/external_flash/src/bsp_flash_config.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!727 = !{!728, !51}
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 32)
!729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !730)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "flash_info_t", file: !731, line: 48, baseType: !732)
!731 = !DIFile(filename: "../../../../../driver/board/mt76x7_hdk/external_flash/inc/bsp_flash_config.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !731, line: 38, size: 192, elements: !733)
!733 = !{!734, !735, !736, !737, !738, !739, !740, !741}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !732, file: !731, line: 39, baseType: !201, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !732, file: !731, line: 40, baseType: !58, size: 8, offset: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "jedec_id", scope: !732, file: !731, line: 41, baseType: !195, size: 32, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "page_size", scope: !732, file: !731, line: 42, baseType: !195, size: 32, offset: 96)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "n_pages", scope: !732, file: !731, line: 43, baseType: !30, size: 32, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "quad_program_cmd", scope: !732, file: !731, line: 45, baseType: !58, size: 8, offset: 160)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "quad_read_cmd", scope: !732, file: !731, line: 46, baseType: !58, size: 8, offset: 168)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "qpi_read_cmd", scope: !732, file: !731, line: 47, baseType: !58, size: 8, offset: 176)
!742 = !{!723, !743, !745, !747}
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(name: "cmdlist_switchspi_default", scope: !725, file: !726, line: 167, type: !219, isLocal: false, isDefinition: true)
!745 = !DIGlobalVariableExpression(var: !746, expr: !DIExpression())
!746 = distinct !DIGlobalVariable(name: "cmdlist_switchspiq_default", scope: !725, file: !726, line: 170, type: !224, isLocal: false, isDefinition: true)
!747 = !DIGlobalVariableExpression(var: !748, expr: !DIExpression())
!748 = distinct !DIGlobalVariable(name: "customer_flash_info", scope: !725, file: !726, line: 174, type: !729, isLocal: false, isDefinition: true)
!749 = !DIGlobalVariableExpression(var: !750, expr: !DIExpression())
!750 = distinct !DIGlobalVariable(name: "SystemCoreClock", scope: !751, file: !752, line: 59, type: !61, isLocal: false, isDefinition: true)
!751 = distinct !DICompileUnit(language: DW_LANG_C99, file: !752, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !753, globals: !806, splitDebugInlining: false, nameTableKind: None)
!752 = !DIFile(filename: "../../../../../project/mt7687_hdk/templates/no_rtos_initialize_system/src/system_mt7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!753 = !{!754, !762, !787}
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysTick_Type", file: !494, line: 656, baseType: !756)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !494, line: 650, size: 128, elements: !757)
!757 = !{!758, !759, !760, !761}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "CTRL", scope: !756, file: !494, line: 652, baseType: !60, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "LOAD", scope: !756, file: !494, line: 653, baseType: !60, size: 32, offset: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "VAL", scope: !756, file: !494, line: 654, baseType: !60, size: 32, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "CALIB", scope: !756, file: !494, line: 655, baseType: !528, size: 32, offset: 96)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 32)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !494, line: 418, baseType: !764)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !494, line: 395, size: 1120, elements: !765)
!765 = !{!766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !764, file: !494, line: 397, baseType: !528, size: 32)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !764, file: !494, line: 398, baseType: !60, size: 32, offset: 32)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !764, file: !494, line: 399, baseType: !60, size: 32, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !764, file: !494, line: 400, baseType: !60, size: 32, offset: 96)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !764, file: !494, line: 401, baseType: !60, size: 32, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !764, file: !494, line: 402, baseType: !60, size: 32, offset: 160)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !764, file: !494, line: 403, baseType: !535, size: 96, offset: 192)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !764, file: !494, line: 404, baseType: !60, size: 32, offset: 288)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !764, file: !494, line: 405, baseType: !60, size: 32, offset: 320)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !764, file: !494, line: 406, baseType: !60, size: 32, offset: 352)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !764, file: !494, line: 407, baseType: !60, size: 32, offset: 384)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !764, file: !494, line: 408, baseType: !60, size: 32, offset: 416)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !764, file: !494, line: 409, baseType: !60, size: 32, offset: 448)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !764, file: !494, line: 410, baseType: !60, size: 32, offset: 480)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !764, file: !494, line: 411, baseType: !544, size: 64, offset: 512)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !764, file: !494, line: 412, baseType: !528, size: 32, offset: 576)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !764, file: !494, line: 413, baseType: !528, size: 32, offset: 608)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !764, file: !494, line: 414, baseType: !548, size: 128, offset: 640)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !764, file: !494, line: 415, baseType: !550, size: 160, offset: 768)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !764, file: !494, line: 416, baseType: !554, size: 160, offset: 928)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !764, file: !494, line: 417, baseType: !60, size: 32, offset: 1088)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 32)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "CACHE_REGISTER_T", file: !394, line: 72, baseType: !789)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !394, line: 56, size: 525312, elements: !790)
!790 = !{!791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CON", scope: !789, file: !394, line: 57, baseType: !60, size: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_OP", scope: !789, file: !394, line: 58, baseType: !60, size: 32, offset: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0L", scope: !789, file: !394, line: 59, baseType: !60, size: 32, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0U", scope: !789, file: !394, line: 60, baseType: !60, size: 32, offset: 96)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0L", scope: !789, file: !394, line: 61, baseType: !60, size: 32, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0U", scope: !789, file: !394, line: 62, baseType: !60, size: 32, offset: 160)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1L", scope: !789, file: !394, line: 63, baseType: !60, size: 32, offset: 192)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1U", scope: !789, file: !394, line: 64, baseType: !60, size: 32, offset: 224)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1L", scope: !789, file: !394, line: 65, baseType: !60, size: 32, offset: 256)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1U", scope: !789, file: !394, line: 66, baseType: !60, size: 32, offset: 288)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !789, file: !394, line: 67, baseType: !408, size: 32, offset: 320)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_REGION_EN", scope: !789, file: !394, line: 68, baseType: !60, size: 32, offset: 352)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !789, file: !394, line: 69, baseType: !413, size: 523904, offset: 384)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_ENTRY_N", scope: !789, file: !394, line: 70, baseType: !417, size: 512, offset: 524288)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_END_ENTRY_N", scope: !789, file: !394, line: 71, baseType: !417, size: 512, offset: 524800)
!806 = !{!749, !807}
!807 = !DIGlobalVariableExpression(var: !808, expr: !DIExpression())
!808 = distinct !DIGlobalVariable(name: "System_Initialize_Done", scope: !751, file: !752, line: 61, type: !60, isLocal: true, isDefinition: true)
!809 = !DIGlobalVariableExpression(var: !810, expr: !DIExpression())
!810 = distinct !DIGlobalVariable(name: "heap_end", scope: !811, file: !812, line: 101, type: !201, isLocal: true, isDefinition: true)
!811 = distinct !DISubprogram(name: "_sbrk_r", scope: !812, file: !812, line: 98, type: !813, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !1006)
!812 = !DIFile(filename: "../../../../../project/mt7687_hdk/templates/no_rtos_initialize_system/GCC/syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!813 = !DISubroutineType(types: !814)
!814 = !{!815, !817, !1001}
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !816, line: 123, baseType: !201)
!816 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/types.h", directory: "/home/mjshen/RTOSExploration")
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 32)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !819, line: 377, size: 1920, elements: !820)
!819 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/reent.h", directory: "/home/mjshen/RTOSExploration")
!820 = !{!821, !822, !891, !892, !893, !894, !895, !896, !897, !900, !920, !924, !925, !926, !927, !937, !950, !951, !956, !975, !976, !983, !984, !1000}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !818, file: !819, line: 381, baseType: !7, size: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !818, file: !819, line: 386, baseType: !823, size: 32, offset: 32)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 32)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !819, line: 292, baseType: !825)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !819, line: 186, size: 832, elements: !826)
!826 = !{!827, !828, !829, !830, !832, !833, !838, !839, !840, !841, !845, !849, !855, !859, !860, !861, !862, !866, !868, !869, !870, !872, !878, !890}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !825, file: !819, line: 187, baseType: !177, size: 32)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !825, file: !819, line: 188, baseType: !7, size: 32, offset: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !825, file: !819, line: 189, baseType: !7, size: 32, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !825, file: !819, line: 190, baseType: !831, size: 16, offset: 96)
!831 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !825, file: !819, line: 191, baseType: !831, size: 16, offset: 112)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !825, file: !819, line: 192, baseType: !834, size: 64, offset: 128)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !819, line: 122, size: 64, elements: !835)
!835 = !{!836, !837}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !834, file: !819, line: 123, baseType: !177, size: 32)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !834, file: !819, line: 124, baseType: !7, size: 32, offset: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !825, file: !819, line: 193, baseType: !7, size: 32, offset: 192)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !825, file: !819, line: 196, baseType: !817, size: 32, offset: 224)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !825, file: !819, line: 200, baseType: !51, size: 32, offset: 256)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !825, file: !819, line: 202, baseType: !842, size: 32, offset: 288)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 32)
!843 = !DISubroutineType(types: !844)
!844 = !{!7, !817, !51, !201, !7}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !825, file: !819, line: 204, baseType: !846, size: 32, offset: 320)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 32)
!847 = !DISubroutineType(types: !848)
!848 = !{!7, !817, !51, !331, !7}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !825, file: !819, line: 207, baseType: !850, size: 32, offset: 352)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 32)
!851 = !DISubroutineType(types: !852)
!852 = !{!853, !817, !51, !853, !7}
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !854, line: 116, baseType: !174)
!854 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_types.h", directory: "/home/mjshen/RTOSExploration")
!855 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !825, file: !819, line: 208, baseType: !856, size: 32, offset: 384)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 32)
!857 = !DISubroutineType(types: !858)
!858 = !{!7, !817, !51}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !825, file: !819, line: 211, baseType: !834, size: 64, offset: 416)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !825, file: !819, line: 212, baseType: !177, size: 32, offset: 480)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !825, file: !819, line: 213, baseType: !7, size: 32, offset: 512)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !825, file: !819, line: 216, baseType: !863, size: 24, offset: 544)
!863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 24, elements: !864)
!864 = !{!865}
!865 = !DISubrange(count: 3)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !825, file: !819, line: 217, baseType: !867, size: 8, offset: 568)
!867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 8, elements: !409)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !825, file: !819, line: 220, baseType: !834, size: 64, offset: 576)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !825, file: !819, line: 223, baseType: !7, size: 32, offset: 640)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !825, file: !819, line: 224, baseType: !871, size: 32, offset: 672)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !854, line: 46, baseType: !174)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !825, file: !819, line: 231, baseType: !873, size: 32, offset: 704)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !819, line: 35, baseType: !874)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_T", file: !875, line: 34, baseType: !876)
!875 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/lock.h", directory: "/home/mjshen/RTOSExploration")
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 32)
!877 = !DICompositeType(tag: DW_TAG_structure_type, name: "__lock", file: !875, line: 33, flags: DIFlagFwdDecl)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !825, file: !819, line: 233, baseType: !879, size: 64, offset: 736)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !854, line: 170, baseType: !880)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !854, line: 162, size: 64, elements: !881)
!881 = !{!882, !883}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !880, file: !854, line: 164, baseType: !7, size: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !880, file: !854, line: 169, baseType: !884, size: 32, offset: 32)
!884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !880, file: !854, line: 165, size: 32, elements: !885)
!885 = !{!886, !889}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !884, file: !854, line: 167, baseType: !887, size: 32)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !888, line: 116, baseType: !7)
!888 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "")
!889 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !884, file: !854, line: 168, baseType: !229, size: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !825, file: !819, line: 234, baseType: !7, size: 32, offset: 800)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !818, file: !819, line: 386, baseType: !823, size: 32, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !818, file: !819, line: 386, baseType: !823, size: 32, offset: 96)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !818, file: !819, line: 388, baseType: !7, size: 32, offset: 128)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !818, file: !819, line: 390, baseType: !201, size: 32, offset: 160)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !818, file: !819, line: 392, baseType: !7, size: 32, offset: 192)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !818, file: !819, line: 394, baseType: !7, size: 32, offset: 224)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !818, file: !819, line: 395, baseType: !898, size: 32, offset: 256)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 32)
!899 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !819, line: 45, flags: DIFlagFwdDecl)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_mp", scope: !818, file: !819, line: 397, baseType: !901, size: 32, offset: 288)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 32)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mprec", file: !819, line: 349, size: 128, elements: !903)
!903 = !{!904, !916, !917, !918}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !902, file: !819, line: 352, baseType: !905, size: 32)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 32)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !819, line: 52, size: 192, elements: !907)
!907 = !{!908, !909, !910, !911, !912, !913}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !906, file: !819, line: 54, baseType: !905, size: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !906, file: !819, line: 55, baseType: !7, size: 32, offset: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !906, file: !819, line: 55, baseType: !7, size: 32, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !906, file: !819, line: 55, baseType: !7, size: 32, offset: 96)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !906, file: !819, line: 55, baseType: !7, size: 32, offset: 128)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !906, file: !819, line: 56, baseType: !914, size: 32, offset: 160)
!914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !915, size: 32, elements: !409)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !819, line: 22, baseType: !195)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !902, file: !819, line: 353, baseType: !7, size: 32, offset: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !902, file: !819, line: 354, baseType: !905, size: 32, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !902, file: !819, line: 355, baseType: !919, size: 32, offset: 96)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !818, file: !819, line: 399, baseType: !921, size: 32, offset: 320)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 32)
!922 = !DISubroutineType(types: !923)
!923 = !{null, !817}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !818, file: !819, line: 401, baseType: !7, size: 32, offset: 352)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !818, file: !819, line: 404, baseType: !7, size: 32, offset: 384)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !818, file: !819, line: 405, baseType: !201, size: 32, offset: 416)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !818, file: !819, line: 407, baseType: !928, size: 32, offset: 448)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 32)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !819, line: 324, size: 192, elements: !930)
!930 = !{!931, !933, !934, !935}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !929, file: !819, line: 325, baseType: !932, size: 48)
!932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 48, elements: !864)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !929, file: !819, line: 326, baseType: !932, size: 48, offset: 48)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !929, file: !819, line: 327, baseType: !322, size: 16, offset: 96)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !929, file: !819, line: 330, baseType: !936, size: 64, offset: 128)
!936 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !818, file: !819, line: 408, baseType: !938, size: 32, offset: 480)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 32)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !819, line: 60, size: 288, elements: !940)
!940 = !{!941, !942, !943, !944, !945, !946, !947, !948, !949}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !939, file: !819, line: 62, baseType: !7, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !939, file: !819, line: 63, baseType: !7, size: 32, offset: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !939, file: !819, line: 64, baseType: !7, size: 32, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !939, file: !819, line: 65, baseType: !7, size: 32, offset: 96)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !939, file: !819, line: 66, baseType: !7, size: 32, offset: 128)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !939, file: !819, line: 67, baseType: !7, size: 32, offset: 160)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !939, file: !819, line: 68, baseType: !7, size: 32, offset: 192)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !939, file: !819, line: 69, baseType: !7, size: 32, offset: 224)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !939, file: !819, line: 70, baseType: !7, size: 32, offset: 256)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !818, file: !819, line: 409, baseType: !201, size: 32, offset: 512)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !818, file: !819, line: 412, baseType: !952, size: 32, offset: 544)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 32)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 32)
!954 = !DISubroutineType(types: !955)
!955 = !{null, !7}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !818, file: !819, line: 416, baseType: !957, size: 32, offset: 576)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 32)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !819, line: 90, size: 1120, elements: !959)
!959 = !{!960, !961, !962, !966}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !958, file: !819, line: 91, baseType: !957, size: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !958, file: !819, line: 92, baseType: !7, size: 32, offset: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !958, file: !819, line: 93, baseType: !963, size: 1024, offset: 64)
!963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 1024, elements: !964)
!964 = !{!965}
!965 = !DISubrange(count: 32)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args_ptr", scope: !958, file: !819, line: 94, baseType: !967, size: 32, offset: 1088)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 32)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !819, line: 79, size: 2112, elements: !969)
!969 = !{!970, !972, !973, !974}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !968, file: !819, line: 80, baseType: !971, size: 1024)
!971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 1024, elements: !964)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !968, file: !819, line: 81, baseType: !971, size: 1024, offset: 1024)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !968, file: !819, line: 83, baseType: !915, size: 32, offset: 2048)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !968, file: !819, line: 86, baseType: !915, size: 32, offset: 2080)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !818, file: !819, line: 417, baseType: !958, size: 1120, offset: 608)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !818, file: !819, line: 420, baseType: !977, size: 96, offset: 1728)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !819, line: 296, size: 96, elements: !978)
!978 = !{!979, !981, !982}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !977, file: !819, line: 298, baseType: !980, size: 32)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 32)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !977, file: !819, line: 299, baseType: !7, size: 32, offset: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !977, file: !819, line: 300, baseType: !823, size: 32, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !818, file: !819, line: 421, baseType: !823, size: 32, offset: 1824)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_misc", scope: !818, file: !819, line: 422, baseType: !985, size: 32, offset: 1856)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 32)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_misc_reent", file: !819, line: 359, size: 640, elements: !987)
!987 = !{!988, !989, !990, !991, !992, !994, !995, !996, !997, !998, !999}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !986, file: !819, line: 362, baseType: !201, size: 32)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !986, file: !819, line: 363, baseType: !879, size: 64, offset: 32)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !986, file: !819, line: 364, baseType: !879, size: 64, offset: 96)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !986, file: !819, line: 365, baseType: !879, size: 64, offset: 160)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !986, file: !819, line: 366, baseType: !993, size: 64, offset: 224)
!993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 64, elements: !235)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !986, file: !819, line: 367, baseType: !7, size: 32, offset: 288)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !986, file: !819, line: 368, baseType: !879, size: 64, offset: 320)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !986, file: !819, line: 369, baseType: !879, size: 64, offset: 384)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !986, file: !819, line: 370, baseType: !879, size: 64, offset: 448)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !986, file: !819, line: 371, baseType: !879, size: 64, offset: 512)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !986, file: !819, line: 372, baseType: !879, size: 64, offset: 576)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !818, file: !819, line: 423, baseType: !201, size: 32, offset: 1888)
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !888, line: 46, baseType: !30)
!1002 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1003, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1004, globals: !1005, splitDebugInlining: false, nameTableKind: None)
!1003 = !DIFile(filename: "syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!1004 = !{!201, !815}
!1005 = !{!809}
!1006 = !{!1007, !1008, !1009, !1010}
!1007 = !DILocalVariable(name: "r", arg: 1, scope: !811, file: !812, line: 98, type: !817)
!1008 = !DILocalVariable(name: "nbytes", arg: 2, scope: !811, file: !812, line: 98, type: !1001)
!1009 = !DILocalVariable(name: "prev_heap_end", scope: !811, file: !812, line: 102, type: !201)
!1010 = !DILocalVariable(name: "stack", scope: !811, file: !812, line: 103, type: !201)
!1011 = !DIGlobalVariableExpression(var: !1012, expr: !DIExpression())
!1012 = distinct !DIGlobalVariable(name: "build_date_time_str", scope: !1013, file: !1018, line: 4, type: !1024, isLocal: false, isDefinition: true)
!1013 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1014, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1015, splitDebugInlining: false, nameTableKind: None)
!1014 = !DIFile(filename: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC/build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!1015 = !{!1011, !1016, !1022}
!1016 = !DIGlobalVariableExpression(var: !1017, expr: !DIExpression())
!1017 = distinct !DIGlobalVariable(name: "sw_verno_str", scope: !1013, file: !1018, line: 5, type: !1019, isLocal: false, isDefinition: true)
!1018 = !DIFile(filename: "build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!1019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 88, elements: !1020)
!1020 = !{!1021}
!1021 = !DISubrange(count: 11)
!1022 = !DIGlobalVariableExpression(var: !1023, expr: !DIExpression())
!1023 = distinct !DIGlobalVariable(name: "hw_verno_str", scope: !1013, file: !1018, line: 6, type: !1019, isLocal: false, isDefinition: true)
!1024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 248, elements: !1025)
!1025 = !{!1026}
!1026 = !DISubrange(count: 31)
!1027 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1028, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1029, splitDebugInlining: false, nameTableKind: None)
!1028 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!1029 = !{!1030, !1055}
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 32)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !494, line: 418, baseType: !1032)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !494, line: 395, size: 1120, elements: !1033)
!1033 = !{!1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !1032, file: !494, line: 397, baseType: !528, size: 32)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !1032, file: !494, line: 398, baseType: !60, size: 32, offset: 32)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !1032, file: !494, line: 399, baseType: !60, size: 32, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !1032, file: !494, line: 400, baseType: !60, size: 32, offset: 96)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !1032, file: !494, line: 401, baseType: !60, size: 32, offset: 128)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !1032, file: !494, line: 402, baseType: !60, size: 32, offset: 160)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !1032, file: !494, line: 403, baseType: !535, size: 96, offset: 192)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !1032, file: !494, line: 404, baseType: !60, size: 32, offset: 288)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !1032, file: !494, line: 405, baseType: !60, size: 32, offset: 320)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !1032, file: !494, line: 406, baseType: !60, size: 32, offset: 352)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !1032, file: !494, line: 407, baseType: !60, size: 32, offset: 384)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !1032, file: !494, line: 408, baseType: !60, size: 32, offset: 416)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !1032, file: !494, line: 409, baseType: !60, size: 32, offset: 448)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !1032, file: !494, line: 410, baseType: !60, size: 32, offset: 480)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !1032, file: !494, line: 411, baseType: !544, size: 64, offset: 512)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !1032, file: !494, line: 412, baseType: !528, size: 32, offset: 576)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !1032, file: !494, line: 413, baseType: !528, size: 32, offset: 608)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !1032, file: !494, line: 414, baseType: !548, size: 128, offset: 640)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !1032, file: !494, line: 415, baseType: !550, size: 160, offset: 768)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !1032, file: !494, line: 416, baseType: !554, size: 160, offset: 928)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !1032, file: !494, line: 417, baseType: !60, size: 32, offset: 1088)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 32)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !494, line: 378, baseType: !1057)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !494, line: 363, size: 28704, elements: !1058)
!1058 = !{!1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !1057, file: !494, line: 365, baseType: !498, size: 256)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !1057, file: !494, line: 366, baseType: !500, size: 768, offset: 256)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !1057, file: !494, line: 367, baseType: !498, size: 256, offset: 1024)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !1057, file: !494, line: 368, baseType: !500, size: 768, offset: 1280)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !1057, file: !494, line: 369, baseType: !498, size: 256, offset: 2048)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !1057, file: !494, line: 370, baseType: !500, size: 768, offset: 2304)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !1057, file: !494, line: 371, baseType: !498, size: 256, offset: 3072)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !1057, file: !494, line: 372, baseType: !500, size: 768, offset: 3328)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !1057, file: !494, line: 373, baseType: !498, size: 256, offset: 4096)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !1057, file: !494, line: 374, baseType: !511, size: 1792, offset: 4352)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !1057, file: !494, line: 375, baseType: !515, size: 1920, offset: 6144)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !1057, file: !494, line: 376, baseType: !519, size: 20608, offset: 8064)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !1057, file: !494, line: 377, baseType: !60, size: 32, offset: 28672)
!1072 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1073, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1074, splitDebugInlining: false, nameTableKind: None)
!1073 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/timer.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!1074 = !{!174, !137}
!1075 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1076, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1076 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_log.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!1077 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1078, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1079, splitDebugInlining: false, nameTableKind: None)
!1078 = !DIFile(filename: "../../../../../driver/board/mt76x7_hdk/ept/src/bsp_gpio_ept_config.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!1079 = !{!61, !59}
!1080 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1081, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1082, splitDebugInlining: false, nameTableKind: None)
!1081 = !DIFile(filename: "../../../../../project/mt7687_hdk/templates/no_rtos_initialize_system/src/main.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!1082 = !{!620, !625, !641, !647, !651}
!1083 = !{!"Ubuntu clang version 14.0.6"}
!1084 = !{i32 7, !"Dwarf Version", i32 2}
!1085 = !{i32 2, !"Debug Info Version", i32 3}
!1086 = !{i32 1, !"wchar_size", i32 4}
!1087 = !{i32 1, !"min_enum_size", i32 4}
!1088 = !{i32 1, !"branch-target-enforcement", i32 0}
!1089 = !{i32 1, !"sign-return-address", i32 0}
!1090 = !{i32 1, !"sign-return-address-all", i32 0}
!1091 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!1092 = !{i32 7, !"frame-pointer", i32 2}
!1093 = distinct !DISubprogram(name: "gpt_get_current_time", scope: !3, file: !3, line: 86, type: !1094, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1096)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!61}
!1096 = !{!1097, !1098}
!1097 = !DILocalVariable(name: "counter", scope: !1093, file: !3, line: 88, type: !61)
!1098 = !DILocalVariable(name: "ret", scope: !1093, file: !3, line: 89, type: !1099)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_status_t", file: !21, line: 393, baseType: !20)
!1100 = !DILocation(line: 88, column: 5, scope: !1093)
!1101 = !DILocation(line: 0, scope: !1093)
!1102 = !DILocation(line: 88, column: 14, scope: !1093)
!1103 = !DILocation(line: 90, column: 11, scope: !1093)
!1104 = !DILocation(line: 91, column: 13, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 91, column: 9)
!1106 = !DILocation(line: 91, column: 9, scope: !1093)
!1107 = !DILocation(line: 92, column: 9, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 91, column: 35)
!1109 = !DILocation(line: 94, column: 12, scope: !1093)
!1110 = !DILocation(line: 95, column: 1, scope: !1093)
!1111 = !DILocation(line: 94, column: 5, scope: !1093)
!1112 = distinct !DISubprogram(name: "SF_DAL_FLAG_BUSY_SET", scope: !3, file: !3, line: 97, type: !154, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1113)
!1113 = !{}
!1114 = !DILocation(line: 99, column: 20, scope: !1112)
!1115 = !DILocation(line: 100, column: 1, scope: !1112)
!1116 = distinct !DISubprogram(name: "SF_DAL_FLAG_BUSY_CLR", scope: !3, file: !3, line: 101, type: !154, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1113)
!1117 = !DILocation(line: 103, column: 20, scope: !1116)
!1118 = !DILocation(line: 104, column: 1, scope: !1116)
!1119 = distinct !DISubprogram(name: "SF_DAL_FLAG_SUS_SET", scope: !3, file: !3, line: 105, type: !154, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1113)
!1120 = !DILocation(line: 107, column: 25, scope: !1119)
!1121 = !DILocation(line: 108, column: 1, scope: !1119)
!1122 = distinct !DISubprogram(name: "SF_DAL_FLAG_SUS_CLR", scope: !3, file: !3, line: 109, type: !154, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1113)
!1123 = !DILocation(line: 111, column: 25, scope: !1122)
!1124 = !DILocation(line: 112, column: 1, scope: !1122)
!1125 = distinct !DISubprogram(name: "get_sf_lock", scope: !3, file: !3, line: 114, type: !1126, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1128)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!490}
!1128 = !{!1129}
!1129 = !DILocalVariable(name: "savedMask", scope: !1125, file: !3, line: 116, type: !61)
!1130 = !DILocation(line: 117, column: 17, scope: !1125)
!1131 = !DILocation(line: 0, scope: !1125)
!1132 = !DILocation(line: 118, column: 9, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 118, column: 9)
!1134 = !DILocation(line: 118, column: 9, scope: !1125)
!1135 = !DILocation(line: 119, column: 17, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 118, column: 24)
!1137 = !DILocation(line: 121, column: 9, scope: !1136)
!1138 = !DILocation(line: 0, scope: !1133)
!1139 = !DILocation(line: 130, column: 1, scope: !1125)
!1140 = distinct !DISubprogram(name: "free_sf_lock", scope: !3, file: !3, line: 132, type: !154, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1141)
!1141 = !{!1142}
!1142 = !DILocalVariable(name: "savedMask", scope: !1140, file: !3, line: 134, type: !61)
!1143 = !DILocation(line: 135, column: 17, scope: !1140)
!1144 = !DILocation(line: 0, scope: !1140)
!1145 = !DILocation(line: 136, column: 9, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 136, column: 9)
!1147 = !DILocation(line: 136, column: 9, scope: !1140)
!1148 = !DILocation(line: 137, column: 17, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 136, column: 24)
!1150 = !DILocation(line: 138, column: 9, scope: !1149)
!1151 = !DILocation(line: 143, column: 1, scope: !1140)
!1152 = !DILocation(line: 140, column: 9, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 139, column: 12)
!1154 = !DILocation(line: 141, column: 9, scope: !1153)
!1155 = distinct !DISubprogram(name: "retrieve_sf_lock", scope: !3, file: !3, line: 145, type: !154, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1156)
!1156 = !{!1157}
!1157 = !DILocalVariable(name: "Result", scope: !1155, file: !3, line: 147, type: !490)
!1158 = !DILocation(line: 148, column: 5, scope: !1155)
!1159 = !DILocation(line: 149, column: 18, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 148, column: 8)
!1161 = !DILocation(line: 0, scope: !1155)
!1162 = !DILocation(line: 150, column: 21, scope: !1155)
!1163 = !DILocation(line: 150, column: 5, scope: !1160)
!1164 = distinct !{!1164, !1158, !1165}
!1165 = !DILocation(line: 150, column: 25, scope: !1155)
!1166 = !DILocation(line: 151, column: 1, scope: !1155)
!1167 = distinct !DISubprogram(name: "release_sf_lock", scope: !3, file: !3, line: 158, type: !154, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1113)
!1168 = !DILocation(line: 160, column: 5, scope: !1167)
!1169 = !DILocation(line: 161, column: 1, scope: !1167)
!1170 = distinct !DISubprogram(name: "flash_sfc_config", scope: !3, file: !3, line: 186, type: !1171, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1173)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!490, !54}
!1173 = !{!1174, !1175}
!1174 = !DILocalVariable(name: "mode", arg: 1, scope: !1170, file: !3, line: 186, type: !54)
!1175 = !DILocalVariable(name: "ret", scope: !1170, file: !3, line: 188, type: !1176)
!1176 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !87, line: 56, baseType: !7)
!1177 = !DILocation(line: 0, scope: !1170)
!1178 = !DILocation(line: 189, column: 5, scope: !1170)
!1179 = !DILocation(line: 190, column: 5, scope: !1170)
!1180 = !DILocation(line: 191, column: 9, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 191, column: 9)
!1182 = !DILocation(line: 191, column: 35, scope: !1181)
!1183 = !DILocation(line: 191, column: 9, scope: !1170)
!1184 = !DILocation(line: 193, column: 26, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 191, column: 44)
!1186 = !DILocation(line: 194, column: 5, scope: !1185)
!1187 = !DILocation(line: 195, column: 5, scope: !1170)
!1188 = !DILocation(line: 197, column: 5, scope: !1170)
!1189 = distinct !DISubprogram(name: "sfc_pad_config", scope: !3, file: !3, line: 163, type: !154, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1190)
!1190 = !{!1191}
!1191 = !DILocalVariable(name: "pad_io_setting", scope: !1189, file: !3, line: 166, type: !61)
!1192 = !DILocation(line: 0, scope: !1189)
!1193 = !DILocation(line: 168, column: 22, scope: !1189)
!1194 = !DILocation(line: 169, column: 20, scope: !1189)
!1195 = !DILocation(line: 170, column: 39, scope: !1189)
!1196 = !DILocation(line: 185, column: 1, scope: !1189)
!1197 = distinct !DISubprogram(name: "hal_flash_direct_read", scope: !3, file: !3, line: 200, type: !1198, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1200)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{null, !51, !210, !61}
!1200 = !{!1201, !1202, !1203}
!1201 = !DILocalVariable(name: "absolute_address", arg: 1, scope: !1197, file: !3, line: 200, type: !51)
!1202 = !DILocalVariable(name: "buffer", arg: 2, scope: !1197, file: !3, line: 200, type: !210)
!1203 = !DILocalVariable(name: "length", arg: 3, scope: !1197, file: !3, line: 200, type: !61)
!1204 = !DILocation(line: 0, scope: !1197)
!1205 = !DILocation(line: 202, column: 5, scope: !1197)
!1206 = !DILocation(line: 203, column: 5, scope: !1197)
!1207 = !DILocation(line: 204, column: 5, scope: !1197)
!1208 = !DILocation(line: 205, column: 1, scope: !1197)
!1209 = distinct !DISubprogram(name: "flash_sfc_read", scope: !3, file: !3, line: 207, type: !1210, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1212)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!490, !61, !61, !210}
!1212 = !{!1213, !1214, !1215, !1216, !1217, !1218}
!1213 = !DILocalVariable(name: "address", arg: 1, scope: !1209, file: !3, line: 207, type: !61)
!1214 = !DILocalVariable(name: "length", arg: 2, scope: !1209, file: !3, line: 207, type: !61)
!1215 = !DILocalVariable(name: "buffer", arg: 3, scope: !1209, file: !3, line: 207, type: !210)
!1216 = !DILocalVariable(name: "ret", scope: !1209, file: !3, line: 209, type: !1176)
!1217 = !DILocalVariable(name: "u4Redidual", scope: !1209, file: !3, line: 210, type: !159)
!1218 = !DILocalVariable(name: "u4ReadLen", scope: !1209, file: !3, line: 211, type: !159)
!1219 = !DILocation(line: 0, scope: !1209)
!1220 = !DILocation(line: 213, column: 5, scope: !1209)
!1221 = !DILocation(line: 214, column: 31, scope: !1209)
!1222 = !DILocation(line: 214, column: 5, scope: !1209)
!1223 = !DILocation(line: 216, column: 31, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 216, column: 13)
!1225 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 214, column: 46)
!1226 = !DILocation(line: 216, column: 13, scope: !1225)
!1227 = !DILocation(line: 217, column: 13, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 216, column: 48)
!1229 = !DILocation(line: 218, column: 9, scope: !1228)
!1230 = !DILocation(line: 219, column: 13, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 218, column: 55)
!1232 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 218, column: 20)
!1233 = !DILocation(line: 220, column: 9, scope: !1231)
!1234 = !DILocation(line: 222, column: 25, scope: !1225)
!1235 = !DILocation(line: 223, column: 27, scope: !1225)
!1236 = !DILocation(line: 224, column: 33, scope: !1225)
!1237 = distinct !{!1237, !1222, !1238}
!1238 = !DILocation(line: 225, column: 5, scope: !1209)
!1239 = !DILocation(line: 227, column: 27, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 227, column: 9)
!1241 = !DILocation(line: 227, column: 9, scope: !1209)
!1242 = !DILocation(line: 228, column: 9, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 227, column: 44)
!1244 = !DILocation(line: 229, column: 5, scope: !1243)
!1245 = !DILocation(line: 230, column: 9, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 229, column: 51)
!1247 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 229, column: 16)
!1248 = !DILocation(line: 231, column: 5, scope: !1246)
!1249 = !DILocation(line: 232, column: 22, scope: !1209)
!1250 = !DILocation(line: 233, column: 5, scope: !1209)
!1251 = !DILocation(line: 234, column: 5, scope: !1209)
!1252 = distinct !DISubprogram(name: "flash_sfc_write", scope: !3, file: !3, line: 238, type: !1253, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1257)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!490, !61, !61, !1255}
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 32)
!1256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!1257 = !{!1258, !1259, !1260, !1261}
!1258 = !DILocalVariable(name: "address", arg: 1, scope: !1252, file: !3, line: 238, type: !61)
!1259 = !DILocalVariable(name: "length", arg: 2, scope: !1252, file: !3, line: 238, type: !61)
!1260 = !DILocalVariable(name: "buffer", arg: 3, scope: !1252, file: !3, line: 238, type: !1255)
!1261 = !DILocalVariable(name: "ret", scope: !1252, file: !3, line: 240, type: !1176)
!1262 = !DILocation(line: 0, scope: !1252)
!1263 = !DILocation(line: 242, column: 5, scope: !1252)
!1264 = !DILocation(line: 244, column: 5, scope: !1252)
!1265 = !DILocation(line: 245, column: 5, scope: !1252)
!1266 = !DILocation(line: 247, column: 11, scope: !1252)
!1267 = !DILocation(line: 248, column: 22, scope: !1252)
!1268 = !DILocation(line: 250, column: 5, scope: !1252)
!1269 = !DILocation(line: 252, column: 5, scope: !1252)
!1270 = !DILocation(line: 253, column: 5, scope: !1252)
!1271 = distinct !DISubprogram(name: "flash_sfc_erase", scope: !3, file: !3, line: 256, type: !1272, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1274)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!490, !61, !61}
!1274 = !{!1275, !1276, !1277}
!1275 = !DILocalVariable(name: "address", arg: 1, scope: !1271, file: !3, line: 256, type: !61)
!1276 = !DILocalVariable(name: "type", arg: 2, scope: !1271, file: !3, line: 256, type: !61)
!1277 = !DILocalVariable(name: "ret", scope: !1271, file: !3, line: 258, type: !1176)
!1278 = !DILocation(line: 0, scope: !1271)
!1279 = !DILocation(line: 259, column: 5, scope: !1271)
!1280 = !DILocation(line: 261, column: 5, scope: !1271)
!1281 = !DILocation(line: 262, column: 5, scope: !1271)
!1282 = !DILocation(line: 264, column: 5, scope: !1271)
!1283 = !DILocation(line: 265, column: 5, scope: !1271)
!1284 = !DILocation(line: 267, column: 9, scope: !1271)
!1285 = !DILocation(line: 268, column: 22, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 268, column: 13)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 267, column: 37)
!1288 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 267, column: 9)
!1289 = !DILocation(line: 268, column: 31, scope: !1286)
!1290 = !DILocation(line: 268, column: 13, scope: !1287)
!1291 = !DILocation(line: 275, column: 15, scope: !1287)
!1292 = !DILocation(line: 276, column: 5, scope: !1287)
!1293 = !DILocation(line: 277, column: 22, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 277, column: 13)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 276, column: 45)
!1296 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 276, column: 16)
!1297 = !DILocation(line: 277, column: 32, scope: !1294)
!1298 = !DILocation(line: 277, column: 13, scope: !1295)
!1299 = !DILocation(line: 284, column: 15, scope: !1295)
!1300 = !DILocation(line: 285, column: 5, scope: !1295)
!1301 = !DILocation(line: 286, column: 22, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 286, column: 13)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 285, column: 45)
!1304 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 285, column: 16)
!1305 = !DILocation(line: 286, column: 32, scope: !1302)
!1306 = !DILocation(line: 286, column: 13, scope: !1303)
!1307 = !DILocation(line: 293, column: 15, scope: !1303)
!1308 = !DILocation(line: 294, column: 5, scope: !1303)
!1309 = !DILocation(line: 301, column: 1, scope: !1271)
!1310 = distinct !DISubprogram(name: "Flash_ReturnReady", scope: !3, file: !3, line: 304, type: !154, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1311)
!1311 = !{!1312, !1313}
!1312 = !DILocalVariable(name: "sr", scope: !1310, file: !3, line: 306, type: !54)
!1313 = !DILocalVariable(name: "savedMask", scope: !1310, file: !3, line: 307, type: !61)
!1314 = !DILocation(line: 306, column: 5, scope: !1310)
!1315 = !DILocation(line: 0, scope: !1310)
!1316 = !DILocation(line: 306, column: 13, scope: !1310)
!1317 = !DILocation(line: 329, column: 17, scope: !1310)
!1318 = !DILocation(line: 330, column: 11, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 330, column: 9)
!1320 = !{i8 0, i8 2}
!1321 = !DILocation(line: 330, column: 30, scope: !1319)
!1322 = !DILocation(line: 331, column: 13, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 331, column: 13)
!1324 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 330, column: 53)
!1325 = !DILocation(line: 331, column: 32, scope: !1323)
!1326 = !DILocation(line: 331, column: 13, scope: !1324)
!1327 = !DILocation(line: 333, column: 13, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 331, column: 37)
!1329 = !DILocation(line: 337, column: 19, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 337, column: 13)
!1331 = !DILocation(line: 337, column: 22, scope: !1330)
!1332 = !DILocation(line: 337, column: 15, scope: !1330)
!1333 = !DILocation(line: 337, column: 13, scope: !1324)
!1334 = !DILocation(line: 339, column: 13, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 337, column: 44)
!1336 = !DILocation(line: 341, column: 13, scope: !1335)
!1337 = !DILocation(line: 342, column: 21, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 342, column: 21)
!1339 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 341, column: 23)
!1340 = !DILocation(line: 342, column: 40, scope: !1338)
!1341 = !DILocation(line: 342, column: 21, scope: !1339)
!1342 = !DILocation(line: 344, column: 21, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 342, column: 45)
!1344 = !DILocation(line: 346, column: 27, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 346, column: 21)
!1346 = !DILocation(line: 346, column: 30, scope: !1345)
!1347 = !DILocation(line: 346, column: 23, scope: !1345)
!1348 = !DILocation(line: 346, column: 21, scope: !1339)
!1349 = distinct !{!1349, !1336, !1350}
!1350 = !DILocation(line: 349, column: 13, scope: !1335)
!1351 = !DILocation(line: 350, column: 13, scope: !1335)
!1352 = !DILocation(line: 352, column: 9, scope: !1335)
!1353 = !DILocation(line: 353, column: 13, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 352, column: 16)
!1355 = !DILocation(line: 356, column: 5, scope: !1310)
!1356 = !DILocation(line: 357, column: 1, scope: !1310)
!1357 = distinct !DISubprogram(name: "SF_DAL_CheckDeviceReady", scope: !3, file: !3, line: 359, type: !1358, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1360)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!490, !51, !61}
!1360 = !{!1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369}
!1361 = !DILocalVariable(name: "MTDData", arg: 1, scope: !1357, file: !3, line: 359, type: !51)
!1362 = !DILocalVariable(name: "BlockIndex", arg: 2, scope: !1357, file: !3, line: 359, type: !61)
!1363 = !DILocalVariable(name: "result", scope: !1357, file: !3, line: 361, type: !490)
!1364 = !DILocalVariable(name: "savedMask", scope: !1357, file: !3, line: 362, type: !61)
!1365 = !DILocalVariable(name: "status_busy", scope: !1357, file: !3, line: 363, type: !54)
!1366 = !DILocalVariable(name: "status_suspend", scope: !1357, file: !3, line: 363, type: !54)
!1367 = !DILocalVariable(name: "sr", scope: !1357, file: !3, line: 364, type: !54)
!1368 = !DILocalVariable(name: "sr1", scope: !1357, file: !3, line: 365, type: !54)
!1369 = !DILocalVariable(name: "check_status", scope: !1370, file: !3, line: 383, type: !54)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 382, column: 49)
!1371 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 382, column: 9)
!1372 = !DILocation(line: 0, scope: !1357)
!1373 = !DILocation(line: 364, column: 5, scope: !1357)
!1374 = !DILocation(line: 364, column: 13, scope: !1357)
!1375 = !DILocation(line: 365, column: 5, scope: !1357)
!1376 = !DILocation(line: 365, column: 13, scope: !1357)
!1377 = !DILocation(line: 367, column: 9, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 367, column: 9)
!1379 = !DILocation(line: 367, column: 28, scope: !1378)
!1380 = !DILocation(line: 367, column: 9, scope: !1357)
!1381 = !DILocation(line: 368, column: 9, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 367, column: 33)
!1383 = !DILocation(line: 370, column: 23, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 369, column: 12)
!1385 = !DILocation(line: 373, column: 9, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 373, column: 9)
!1387 = !DILocation(line: 373, column: 30, scope: !1386)
!1388 = !DILocation(line: 373, column: 9, scope: !1357)
!1389 = !DILocation(line: 374, column: 9, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 373, column: 35)
!1391 = !DILocation(line: 376, column: 26, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 375, column: 12)
!1393 = !DILocation(line: 380, column: 17, scope: !1357)
!1394 = !DILocation(line: 382, column: 27, scope: !1371)
!1395 = !DILocation(line: 382, column: 11, scope: !1371)
!1396 = !DILocation(line: 382, column: 9, scope: !1357)
!1397 = !DILocation(line: 0, scope: !1370)
!1398 = !DILocation(line: 385, column: 13, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 385, column: 13)
!1400 = !DILocation(line: 385, column: 49, scope: !1399)
!1401 = !DILocation(line: 388, column: 17, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 388, column: 17)
!1403 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 385, column: 84)
!1404 = !DILocation(line: 388, column: 32, scope: !1402)
!1405 = !DILocation(line: 388, column: 17, scope: !1403)
!1406 = !DILocation(line: 399, column: 9, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 396, column: 56)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 396, column: 20)
!1409 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 393, column: 20)
!1410 = !DILocation(line: 401, column: 28, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 399, column: 58)
!1412 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 399, column: 20)
!1413 = !DILocation(line: 402, column: 9, scope: !1411)
!1414 = !DILocation(line: 405, column: 20, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 405, column: 13)
!1416 = !DILocation(line: 405, column: 35, scope: !1415)
!1417 = !DILocation(line: 405, column: 16, scope: !1415)
!1418 = !DILocation(line: 405, column: 52, scope: !1415)
!1419 = !DILocation(line: 406, column: 21, scope: !1415)
!1420 = !DILocation(line: 406, column: 38, scope: !1415)
!1421 = !DILocation(line: 407, column: 13, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 406, column: 61)
!1423 = !DILocation(line: 410, column: 13, scope: !1422)
!1424 = !DILocation(line: 413, column: 9, scope: !1422)
!1425 = !DILocation(line: 414, column: 13, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 413, column: 16)
!1427 = !DILocation(line: 0, scope: !1415)
!1428 = !DILocation(line: 434, column: 5, scope: !1357)
!1429 = !DILocation(line: 0, scope: !1371)
!1430 = !DILocation(line: 436, column: 1, scope: !1357)
!1431 = !DILocation(line: 435, column: 5, scope: !1357)
!1432 = distinct !DISubprogram(name: "SF_DAL_CheckReadyAndResume", scope: !3, file: !3, line: 439, type: !1433, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1435)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!490, !51, !61, !54}
!1435 = !{!1436, !1437, !1438, !1439, !1440, !1441, !1442, !1445}
!1436 = !DILocalVariable(name: "MTDData", arg: 1, scope: !1432, file: !3, line: 439, type: !51)
!1437 = !DILocalVariable(name: "addr", arg: 2, scope: !1432, file: !3, line: 439, type: !61)
!1438 = !DILocalVariable(name: "data", arg: 3, scope: !1432, file: !3, line: 439, type: !54)
!1439 = !DILocalVariable(name: "savedMask", scope: !1432, file: !3, line: 441, type: !61)
!1440 = !DILocalVariable(name: "result", scope: !1432, file: !3, line: 442, type: !490)
!1441 = !DILocalVariable(name: "check_data", scope: !1432, file: !3, line: 443, type: !54)
!1442 = !DILocalVariable(name: "status_busy", scope: !1432, file: !3, line: 444, type: !1443)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !55, line: 36, baseType: !1444)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !57, line: 57, baseType: !322)
!1445 = !DILocalVariable(name: "sr", scope: !1432, file: !3, line: 445, type: !54)
!1446 = !DILocation(line: 0, scope: !1432)
!1447 = !DILocation(line: 445, column: 5, scope: !1432)
!1448 = !DILocation(line: 445, column: 23, scope: !1432)
!1449 = !DILocation(line: 448, column: 9, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 448, column: 9)
!1451 = !DILocation(line: 448, column: 28, scope: !1450)
!1452 = !DILocation(line: 448, column: 9, scope: !1432)
!1453 = !DILocation(line: 449, column: 9, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 448, column: 33)
!1455 = !DILocation(line: 451, column: 23, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 450, column: 12)
!1457 = !DILocation(line: 454, column: 17, scope: !1432)
!1458 = !DILocation(line: 457, column: 9, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 457, column: 9)
!1460 = !DILocation(line: 457, column: 9, scope: !1432)
!1461 = !DILocation(line: 458, column: 9, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 457, column: 28)
!1463 = !DILocation(line: 459, column: 9, scope: !1462)
!1464 = !DILocation(line: 460, column: 9, scope: !1462)
!1465 = !DILocation(line: 461, column: 9, scope: !1462)
!1466 = !DILocation(line: 462, column: 5, scope: !1462)
!1467 = !DILocation(line: 464, column: 33, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 464, column: 15)
!1469 = !DILocation(line: 464, column: 17, scope: !1468)
!1470 = !DILocation(line: 464, column: 15, scope: !1459)
!1471 = !DILocation(line: 465, column: 9, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 464, column: 55)
!1473 = !DILocation(line: 467, column: 23, scope: !1472)
!1474 = !DILocation(line: 467, column: 22, scope: !1472)
!1475 = !DILocation(line: 468, column: 24, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 468, column: 13)
!1477 = !DILocation(line: 474, column: 5, scope: !1432)
!1478 = !DILocation(line: 477, column: 1, scope: !1432)
!1479 = !DILocation(line: 476, column: 5, scope: !1432)
!1480 = distinct !DISubprogram(name: "GPT_ResetTimer", scope: !84, file: !84, line: 73, type: !1481, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !83, retainedNodes: !1483)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{null, !139, !139, !69}
!1483 = !{!1484, !1485, !1486}
!1484 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1480, file: !84, line: 73, type: !139)
!1485 = !DILocalVariable(name: "countValue", arg: 2, scope: !1480, file: !84, line: 73, type: !139)
!1486 = !DILocalVariable(name: "autoRepeat", arg: 3, scope: !1480, file: !84, line: 73, type: !69)
!1487 = !DILocation(line: 0, scope: !1480)
!1488 = !DILocation(line: 75, column: 5, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1480, file: !84, line: 75, column: 5)
!1490 = !DILocation(line: 75, column: 5, scope: !1480)
!1491 = !DILocation(line: 75, column: 5, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1489, file: !84, line: 75, column: 5)
!1493 = distinct !{!1493, !1491, !1491}
!1494 = !DILocation(line: 77, column: 9, scope: !1480)
!1495 = !DILocation(line: 78, column: 30, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !84, line: 77, column: 24)
!1497 = distinct !DILexicalBlock(scope: !1480, file: !84, line: 77, column: 9)
!1498 = !DILocation(line: 0, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1496, file: !84, line: 79, column: 13)
!1500 = !DILocation(line: 79, column: 13, scope: !1496)
!1501 = !DILocation(line: 80, column: 34, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1499, file: !84, line: 79, column: 37)
!1503 = !DILocation(line: 81, column: 9, scope: !1502)
!1504 = !DILocation(line: 82, column: 34, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1499, file: !84, line: 81, column: 16)
!1506 = !DILocation(line: 85, column: 30, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !84, line: 84, column: 31)
!1508 = distinct !DILexicalBlock(scope: !1497, file: !84, line: 84, column: 16)
!1509 = !DILocation(line: 0, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1507, file: !84, line: 86, column: 13)
!1511 = !DILocation(line: 86, column: 13, scope: !1507)
!1512 = !DILocation(line: 87, column: 34, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1510, file: !84, line: 86, column: 37)
!1514 = !DILocation(line: 88, column: 9, scope: !1513)
!1515 = !DILocation(line: 89, column: 34, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1510, file: !84, line: 88, column: 16)
!1517 = !DILocation(line: 92, column: 1, scope: !1480)
!1518 = distinct !DISubprogram(name: "GPT_Start", scope: !84, file: !84, line: 94, type: !1519, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !83, retainedNodes: !1521)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{null, !139}
!1521 = !{!1522}
!1522 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1518, file: !84, line: 94, type: !139)
!1523 = !DILocation(line: 0, scope: !1518)
!1524 = !DILocation(line: 96, column: 5, scope: !1518)
!1525 = !DILocation(line: 96, column: 5, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !84, line: 96, column: 5)
!1527 = distinct !DILexicalBlock(scope: !1518, file: !84, line: 96, column: 5)
!1528 = distinct !{!1528, !1525, !1525}
!1529 = !DILocation(line: 99, column: 30, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !84, line: 98, column: 24)
!1531 = distinct !DILexicalBlock(scope: !1518, file: !84, line: 98, column: 9)
!1532 = !DILocation(line: 100, column: 9, scope: !1530)
!1533 = !DILocation(line: 101, column: 5, scope: !1530)
!1534 = !DILocation(line: 102, column: 30, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !84, line: 101, column: 31)
!1536 = distinct !DILexicalBlock(scope: !1531, file: !84, line: 101, column: 16)
!1537 = !DILocation(line: 103, column: 9, scope: !1535)
!1538 = !DILocation(line: 104, column: 5, scope: !1535)
!1539 = !DILocation(line: 105, column: 30, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !84, line: 104, column: 31)
!1541 = distinct !DILexicalBlock(scope: !1536, file: !84, line: 104, column: 16)
!1542 = !DILocation(line: 106, column: 5, scope: !1540)
!1543 = !DILocation(line: 108, column: 1, scope: !1518)
!1544 = distinct !DISubprogram(name: "GPT_Stop", scope: !84, file: !84, line: 110, type: !1519, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !83, retainedNodes: !1545)
!1545 = !{!1546}
!1546 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1544, file: !84, line: 110, type: !139)
!1547 = !DILocation(line: 0, scope: !1544)
!1548 = !DILocation(line: 112, column: 9, scope: !1544)
!1549 = !DILocation(line: 113, column: 30, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !84, line: 112, column: 24)
!1551 = distinct !DILexicalBlock(scope: !1544, file: !84, line: 112, column: 9)
!1552 = !DILocation(line: 114, column: 30, scope: !1550)
!1553 = !DILocation(line: 115, column: 31, scope: !1550)
!1554 = !DILocation(line: 117, column: 5, scope: !1550)
!1555 = !DILocation(line: 118, column: 30, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !84, line: 117, column: 31)
!1557 = distinct !DILexicalBlock(scope: !1551, file: !84, line: 117, column: 16)
!1558 = !DILocation(line: 119, column: 30, scope: !1556)
!1559 = !DILocation(line: 120, column: 31, scope: !1556)
!1560 = !DILocation(line: 121, column: 5, scope: !1556)
!1561 = !DILocation(line: 122, column: 30, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !84, line: 121, column: 31)
!1563 = distinct !DILexicalBlock(scope: !1557, file: !84, line: 121, column: 16)
!1564 = !DILocation(line: 123, column: 5, scope: !1562)
!1565 = !DILocation(line: 124, column: 30, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !84, line: 123, column: 31)
!1567 = distinct !DILexicalBlock(scope: !1563, file: !84, line: 123, column: 16)
!1568 = !DILocation(line: 125, column: 5, scope: !1566)
!1569 = !DILocation(line: 128, column: 1, scope: !1544)
!1570 = distinct !DISubprogram(name: "GPT_INT_Handler", scope: !84, file: !84, line: 130, type: !563, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !83, retainedNodes: !1571)
!1571 = !{!1572, !1573}
!1572 = !DILocalVariable(name: "irq_number", arg: 1, scope: !1570, file: !84, line: 130, type: !339)
!1573 = !DILocalVariable(name: "GPT_Status", scope: !1570, file: !84, line: 132, type: !321)
!1574 = !DILocation(line: 0, scope: !1570)
!1575 = !DILocation(line: 135, column: 18, scope: !1570)
!1576 = !DILocation(line: 136, column: 26, scope: !1570)
!1577 = !DILocation(line: 136, column: 24, scope: !1570)
!1578 = !DILocation(line: 138, column: 20, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1570, file: !84, line: 138, column: 9)
!1580 = !DILocation(line: 138, column: 9, scope: !1570)
!1581 = !DILocation(line: 141, column: 27, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1579, file: !84, line: 141, column: 16)
!1583 = !DILocation(line: 141, column: 16, scope: !1579)
!1584 = !DILocation(line: 0, scope: !1579)
!1585 = !DILocation(line: 145, column: 1, scope: !1570)
!1586 = distinct !DISubprogram(name: "GPT_init", scope: !84, file: !84, line: 147, type: !1587, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !83, retainedNodes: !1589)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{null, !139, !139, !153}
!1589 = !{!1590, !1591, !1592}
!1590 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1586, file: !84, line: 147, type: !139)
!1591 = !DILocalVariable(name: "speed_32us", arg: 2, scope: !1586, file: !84, line: 147, type: !139)
!1592 = !DILocalVariable(name: "GPT_Callback", arg: 3, scope: !1586, file: !84, line: 147, type: !153)
!1593 = !DILocation(line: 0, scope: !1586)
!1594 = !DILocation(line: 149, column: 5, scope: !1586)
!1595 = !DILocation(line: 149, column: 5, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !84, line: 149, column: 5)
!1597 = distinct !DILexicalBlock(scope: !1586, file: !84, line: 149, column: 5)
!1598 = distinct !{!1598, !1595, !1595}
!1599 = !DILocation(line: 149, column: 5, scope: !1597)
!1600 = !DILocation(line: 151, column: 23, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1586, file: !84, line: 151, column: 9)
!1602 = !DILocation(line: 152, column: 9, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1601, file: !84, line: 151, column: 41)
!1604 = !DILocation(line: 153, column: 9, scope: !1603)
!1605 = !DILocation(line: 154, column: 9, scope: !1603)
!1606 = !DILocation(line: 155, column: 5, scope: !1603)
!1607 = !DILocation(line: 157, column: 9, scope: !1586)
!1608 = !DILocation(line: 158, column: 37, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !84, line: 157, column: 24)
!1610 = distinct !DILexicalBlock(scope: !1586, file: !84, line: 157, column: 9)
!1611 = !DILocation(line: 159, column: 30, scope: !1609)
!1612 = !DILocation(line: 160, column: 45, scope: !1609)
!1613 = !DILocation(line: 160, column: 30, scope: !1609)
!1614 = !DILocation(line: 161, column: 5, scope: !1609)
!1615 = !DILocation(line: 162, column: 37, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !84, line: 161, column: 31)
!1617 = distinct !DILexicalBlock(scope: !1610, file: !84, line: 161, column: 16)
!1618 = !DILocation(line: 163, column: 30, scope: !1616)
!1619 = !DILocation(line: 164, column: 45, scope: !1616)
!1620 = !DILocation(line: 164, column: 30, scope: !1616)
!1621 = !DILocation(line: 165, column: 5, scope: !1616)
!1622 = !DILocation(line: 166, column: 59, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !84, line: 165, column: 31)
!1624 = distinct !DILexicalBlock(scope: !1617, file: !84, line: 165, column: 16)
!1625 = !DILocation(line: 166, column: 45, scope: !1623)
!1626 = !DILocation(line: 166, column: 30, scope: !1623)
!1627 = !DILocation(line: 167, column: 5, scope: !1623)
!1628 = !DILocation(line: 168, column: 59, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !84, line: 167, column: 31)
!1630 = distinct !DILexicalBlock(scope: !1624, file: !84, line: 167, column: 16)
!1631 = !DILocation(line: 168, column: 45, scope: !1629)
!1632 = !DILocation(line: 168, column: 30, scope: !1629)
!1633 = !DILocation(line: 169, column: 30, scope: !1629)
!1634 = !DILocation(line: 170, column: 5, scope: !1629)
!1635 = !DILocation(line: 171, column: 1, scope: !1586)
!1636 = distinct !DISubprogram(name: "GPT_return_current_count", scope: !84, file: !84, line: 173, type: !1637, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !83, retainedNodes: !1639)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!139, !139}
!1639 = !{!1640, !1641}
!1640 = !DILocalVariable(name: "timerNum", arg: 1, scope: !1636, file: !84, line: 173, type: !139)
!1641 = !DILocalVariable(name: "current_count", scope: !1636, file: !84, line: 175, type: !139)
!1642 = !DILocation(line: 0, scope: !1636)
!1643 = !DILocation(line: 177, column: 5, scope: !1636)
!1644 = !DILocation(line: 177, column: 5, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !84, line: 177, column: 5)
!1646 = distinct !DILexicalBlock(scope: !1636, file: !84, line: 177, column: 5)
!1647 = distinct !{!1647, !1644, !1644}
!1648 = !DILocation(line: 183, column: 5, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !84, line: 181, column: 31)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !84, line: 181, column: 16)
!1651 = distinct !DILexicalBlock(scope: !1636, file: !84, line: 179, column: 9)
!1652 = !DILocation(line: 185, column: 5, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1654, file: !84, line: 183, column: 31)
!1654 = distinct !DILexicalBlock(scope: !1650, file: !84, line: 183, column: 16)
!1655 = !DILocation(line: 187, column: 5, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !84, line: 185, column: 31)
!1657 = distinct !DILexicalBlock(scope: !1654, file: !84, line: 185, column: 16)
!1658 = !DILocation(line: 0, scope: !1651)
!1659 = !DILocation(line: 189, column: 5, scope: !1636)
!1660 = distinct !DISubprogram(name: "CM4_GPT2Init", scope: !84, file: !84, line: 193, type: !154, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !83, retainedNodes: !1113)
!1661 = !DILocation(line: 195, column: 5, scope: !1660)
!1662 = !DILocation(line: 196, column: 1, scope: !1660)
!1663 = distinct !DISubprogram(name: "CM4_GPT4Init", scope: !84, file: !84, line: 198, type: !154, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !83, retainedNodes: !1113)
!1664 = !DILocation(line: 200, column: 5, scope: !1663)
!1665 = !DILocation(line: 201, column: 1, scope: !1663)
!1666 = distinct !DISubprogram(name: "NVIC_SetupVectorTable", scope: !1028, file: !1028, line: 47, type: !1667, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !1669)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{null, !61}
!1669 = !{!1670}
!1670 = !DILocalVariable(name: "addr", arg: 1, scope: !1666, file: !1028, line: 47, type: !61)
!1671 = !DILocation(line: 0, scope: !1666)
!1672 = !DILocation(line: 49, column: 15, scope: !1666)
!1673 = !DILocation(line: 51, column: 5, scope: !1666)
!1674 = !{i64 2624}
!1675 = !DILocation(line: 52, column: 5, scope: !1666)
!1676 = !{i64 2651}
!1677 = !DILocation(line: 53, column: 1, scope: !1666)
!1678 = distinct !DISubprogram(name: "NVIC_SWInt", scope: !1028, file: !1028, line: 56, type: !1679, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !1681)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{null, !30}
!1681 = !{!1682}
!1682 = !DILocalVariable(name: "source", arg: 1, scope: !1678, file: !1028, line: 56, type: !30)
!1683 = !DILocation(line: 0, scope: !1678)
!1684 = !DILocation(line: 58, column: 16, scope: !1678)
!1685 = !DILocation(line: 59, column: 1, scope: !1678)
!1686 = distinct !DISubprogram(name: "save_and_set_interrupt_mask", scope: !1028, file: !1028, line: 61, type: !1094, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !1687)
!1687 = !{!1688}
!1688 = !DILocalVariable(name: "mask", scope: !1686, file: !1028, line: 63, type: !61)
!1689 = !DILocation(line: 470, column: 3, scope: !1690, inlinedAt: !1694)
!1690 = distinct !DISubprogram(name: "__get_PRIMASK", scope: !1691, file: !1691, line: 466, type: !1094, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !1692)
!1691 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmFunc.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!1692 = !{!1693}
!1693 = !DILocalVariable(name: "result", scope: !1690, file: !1691, line: 468, type: !61)
!1694 = distinct !DILocation(line: 64, column: 5, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1686, file: !1028, line: 64, column: 5)
!1696 = !{i64 302168}
!1697 = !DILocation(line: 0, scope: !1690, inlinedAt: !1694)
!1698 = !DILocation(line: 0, scope: !1686)
!1699 = !DILocation(line: 330, column: 3, scope: !1700, inlinedAt: !1701)
!1700 = distinct !DISubprogram(name: "__disable_irq", scope: !1691, file: !1691, line: 328, type: !154, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !1113)
!1701 = distinct !DILocation(line: 64, column: 5, scope: !1695)
!1702 = !{i64 298832}
!1703 = !DILocation(line: 65, column: 5, scope: !1686)
!1704 = distinct !DISubprogram(name: "restore_interrupt_mask", scope: !1028, file: !1028, line: 68, type: !1667, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !1705)
!1705 = !{!1706}
!1706 = !DILocalVariable(name: "mask", arg: 1, scope: !1704, file: !1028, line: 68, type: !61)
!1707 = !DILocation(line: 0, scope: !1704)
!1708 = !DILocalVariable(name: "priMask", arg: 1, scope: !1709, file: !1691, line: 481, type: !61)
!1709 = distinct !DISubprogram(name: "__set_PRIMASK", scope: !1691, file: !1691, line: 481, type: !1667, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !1710)
!1710 = !{!1708}
!1711 = !DILocation(line: 0, scope: !1709, inlinedAt: !1712)
!1712 = distinct !DILocation(line: 70, column: 5, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1704, file: !1028, line: 70, column: 5)
!1714 = !DILocation(line: 483, column: 3, scope: !1709, inlinedAt: !1712)
!1715 = !{i64 302486}
!1716 = !DILocation(line: 71, column: 1, scope: !1704)
!1717 = distinct !DISubprogram(name: "sfc_GPT_return_current_count", scope: !165, file: !165, line: 60, type: !1718, scopeLine: 61, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1720)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!139}
!1720 = !{!1721}
!1721 = !DILocalVariable(name: "current_count", scope: !1717, file: !165, line: 62, type: !139)
!1722 = !DILocation(line: 64, column: 21, scope: !1717)
!1723 = !DILocation(line: 0, scope: !1717)
!1724 = !DILocation(line: 66, column: 5, scope: !1717)
!1725 = distinct !DISubprogram(name: "sfc_get_systime", scope: !165, file: !165, line: 69, type: !1718, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1113)
!1726 = !DILocation(line: 71, column: 12, scope: !1725)
!1727 = !DILocation(line: 71, column: 5, scope: !1725)
!1728 = distinct !DISubprogram(name: "sfc_delay_time", scope: !165, file: !165, line: 74, type: !1519, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1729)
!1729 = !{!1730, !1731, !1732}
!1730 = !DILocalVariable(name: "count", arg: 1, scope: !1728, file: !165, line: 74, type: !139)
!1731 = !DILocalVariable(name: "end_count", scope: !1728, file: !165, line: 76, type: !139)
!1732 = !DILocalVariable(name: "current", scope: !1728, file: !165, line: 76, type: !139)
!1733 = !DILocation(line: 0, scope: !1728)
!1734 = !DILocation(line: 78, column: 17, scope: !1728)
!1735 = !DILocation(line: 78, column: 35, scope: !1728)
!1736 = !DILocation(line: 78, column: 43, scope: !1728)
!1737 = !DILocation(line: 79, column: 15, scope: !1728)
!1738 = !DILocation(line: 80, column: 12, scope: !1728)
!1739 = !DILocation(line: 80, column: 5, scope: !1728)
!1740 = !DILocation(line: 81, column: 19, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1728, file: !165, line: 80, column: 49)
!1742 = distinct !{!1742, !1739, !1743}
!1743 = !DILocation(line: 82, column: 5, scope: !1728)
!1744 = !DILocation(line: 83, column: 1, scope: !1728)
!1745 = distinct !DISubprogram(name: "sfc_delay_ms", scope: !165, file: !165, line: 85, type: !1679, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1746)
!1746 = !{!1747}
!1747 = !DILocalVariable(name: "ms", arg: 1, scope: !1745, file: !165, line: 85, type: !30)
!1748 = !DILocation(line: 0, scope: !1745)
!1749 = !DILocation(line: 87, column: 23, scope: !1745)
!1750 = !DILocation(line: 87, column: 5, scope: !1745)
!1751 = !DILocation(line: 88, column: 1, scope: !1745)
!1752 = distinct !DISubprogram(name: "sfc_getMaxGPRamSize", scope: !165, file: !165, line: 90, type: !1753, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1113)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!7}
!1755 = !DILocation(line: 92, column: 5, scope: !1752)
!1756 = distinct !DISubprogram(name: "sfc_Init", scope: !165, file: !165, line: 121, type: !954, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1757)
!1757 = !{!1758, !1759}
!1758 = !DILocalVariable(name: "security_enable", arg: 1, scope: !1756, file: !165, line: 121, type: !7)
!1759 = !DILocalVariable(name: "reg", scope: !1756, file: !165, line: 123, type: !30)
!1760 = !DILocation(line: 0, scope: !1756)
!1761 = !DILocation(line: 125, column: 27, scope: !1756)
!1762 = !DILocation(line: 141, column: 5, scope: !1756)
!1763 = !DILocation(line: 142, column: 5, scope: !1756)
!1764 = !DILocation(line: 143, column: 5, scope: !1756)
!1765 = !DILocation(line: 144, column: 5, scope: !1756)
!1766 = !DILocation(line: 145, column: 5, scope: !1756)
!1767 = !DILocation(line: 147, column: 5, scope: !1756)
!1768 = !DILocation(line: 150, column: 11, scope: !1756)
!1769 = !DILocation(line: 151, column: 9, scope: !1756)
!1770 = !DILocation(line: 152, column: 5, scope: !1756)
!1771 = !DILocation(line: 153, column: 5, scope: !1756)
!1772 = !DILocation(line: 155, column: 11, scope: !1756)
!1773 = !DILocation(line: 156, column: 9, scope: !1756)
!1774 = !DILocation(line: 157, column: 5, scope: !1756)
!1775 = !DILocation(line: 158, column: 5, scope: !1756)
!1776 = !DILocation(line: 160, column: 11, scope: !1756)
!1777 = !DILocation(line: 161, column: 9, scope: !1756)
!1778 = !DILocation(line: 162, column: 5, scope: !1756)
!1779 = !DILocation(line: 163, column: 5, scope: !1756)
!1780 = !DILocation(line: 165, column: 11, scope: !1756)
!1781 = !DILocation(line: 166, column: 9, scope: !1756)
!1782 = !DILocation(line: 167, column: 5, scope: !1756)
!1783 = !DILocation(line: 168, column: 5, scope: !1756)
!1784 = !DILocation(line: 173, column: 9, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1756, file: !165, line: 173, column: 9)
!1786 = !DILocation(line: 173, column: 9, scope: !1756)
!1787 = !DILocation(line: 174, column: 31, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1785, file: !165, line: 173, column: 26)
!1789 = !DILocation(line: 184, column: 9, scope: !1788)
!1790 = !DILocation(line: 185, column: 9, scope: !1788)
!1791 = !DILocation(line: 187, column: 9, scope: !1788)
!1792 = !DILocation(line: 188, column: 9, scope: !1788)
!1793 = !DILocation(line: 189, column: 9, scope: !1788)
!1794 = !DILocation(line: 190, column: 9, scope: !1788)
!1795 = !DILocation(line: 192, column: 9, scope: !1788)
!1796 = !DILocation(line: 193, column: 5, scope: !1788)
!1797 = !DILocation(line: 194, column: 1, scope: !1756)
!1798 = distinct !DISubprogram(name: "sfc_GetDirectMode", scope: !165, file: !165, line: 196, type: !1753, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1799)
!1799 = !{!1800, !1801}
!1800 = !DILocalVariable(name: "qpi_en", scope: !1798, file: !165, line: 198, type: !195)
!1801 = !DILocalVariable(name: "sfc_read_mode", scope: !1798, file: !165, line: 199, type: !195)
!1802 = !DILocation(line: 198, column: 29, scope: !1798)
!1803 = !DILocation(line: 0, scope: !1798)
!1804 = !DILocation(line: 199, column: 36, scope: !1798)
!1805 = !DILocation(line: 199, column: 89, scope: !1798)
!1806 = !DILocation(line: 204, column: 23, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1798, file: !165, line: 204, column: 9)
!1808 = !DILocation(line: 204, column: 9, scope: !1798)
!1809 = !DILocation(line: 218, column: 1, scope: !1798)
!1810 = distinct !DISubprogram(name: "sfc_direct_read_setup", scope: !165, file: !165, line: 221, type: !1811, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1813)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{null, !195, !7}
!1813 = !{!1814, !1815, !1816}
!1814 = !DILocalVariable(name: "reg", arg: 1, scope: !1810, file: !165, line: 221, type: !195)
!1815 = !DILocalVariable(name: "mode", arg: 2, scope: !1810, file: !165, line: 221, type: !7)
!1816 = !DILocalVariable(name: "tmp", scope: !1810, file: !165, line: 223, type: !195)
!1817 = !DILocation(line: 0, scope: !1810)
!1818 = !DILocation(line: 224, column: 5, scope: !1810)
!1819 = !DILocation(line: 236, column: 9, scope: !1810)
!1820 = !DILocation(line: 237, column: 5, scope: !1810)
!1821 = !DILocation(line: 238, column: 1, scope: !1810)
!1822 = distinct !DISubprogram(name: "sfc_Command_List", scope: !165, file: !165, line: 296, type: !1823, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1825)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{null, !193}
!1825 = !{!1826, !1827, !1828, !1829}
!1826 = !DILocalVariable(name: "cmdlist", arg: 1, scope: !1822, file: !165, line: 296, type: !193)
!1827 = !DILocalVariable(name: "i", scope: !1822, file: !165, line: 298, type: !30)
!1828 = !DILocalVariable(name: "val", scope: !1822, file: !165, line: 299, type: !30)
!1829 = !DILocalVariable(name: "force_qpi", scope: !1822, file: !165, line: 299, type: !30)
!1830 = !DILocation(line: 0, scope: !1822)
!1831 = !DILocation(line: 301, column: 10, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1822, file: !165, line: 301, column: 9)
!1833 = !DILocation(line: 301, column: 9, scope: !1822)
!1834 = !DILocation(line: 305, column: 11, scope: !1822)
!1835 = !DILocation(line: 310, column: 5, scope: !1822)
!1836 = !DILocation(line: 311, column: 17, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1822, file: !165, line: 310, column: 17)
!1838 = !DILocation(line: 311, column: 9, scope: !1837)
!1839 = !DILocation(line: 319, column: 17, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1837, file: !165, line: 311, column: 29)
!1841 = !DILocation(line: 321, column: 17, scope: !1840)
!1842 = !DILocation(line: 322, column: 17, scope: !1840)
!1843 = !DILocation(line: 325, column: 33, scope: !1837)
!1844 = !DILocation(line: 325, column: 23, scope: !1837)
!1845 = !DILocation(line: 325, column: 49, scope: !1837)
!1846 = !DILocation(line: 325, column: 39, scope: !1837)
!1847 = !DILocation(line: 325, column: 9, scope: !1837)
!1848 = !DILocation(line: 327, column: 15, scope: !1837)
!1849 = !DILocation(line: 327, column: 11, scope: !1837)
!1850 = !DILocation(line: 329, column: 9, scope: !1837)
!1851 = distinct !{!1851, !1835, !1852}
!1852 = !DILocation(line: 330, column: 5, scope: !1822)
!1853 = !DILocation(line: 331, column: 1, scope: !1822)
!1854 = distinct !DISubprogram(name: "sfc_transfer", scope: !165, file: !165, line: 417, type: !1855, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1858)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!7, !193, !1857, !177, !1857, !30}
!1857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!1858 = !{!1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869}
!1859 = !DILocalVariable(name: "cmd", arg: 1, scope: !1854, file: !165, line: 417, type: !193)
!1860 = !DILocalVariable(name: "cmd_len", arg: 2, scope: !1854, file: !165, line: 417, type: !1857)
!1861 = !DILocalVariable(name: "data", arg: 3, scope: !1854, file: !165, line: 417, type: !177)
!1862 = !DILocalVariable(name: "data_len", arg: 4, scope: !1854, file: !165, line: 417, type: !1857)
!1863 = !DILocalVariable(name: "force_qpi", arg: 5, scope: !1854, file: !165, line: 417, type: !30)
!1864 = !DILocalVariable(name: "tmp", scope: !1854, file: !165, line: 419, type: !30)
!1865 = !DILocalVariable(name: "i", scope: !1854, file: !165, line: 419, type: !30)
!1866 = !DILocalVariable(name: "j", scope: !1854, file: !165, line: 419, type: !30)
!1867 = !DILocalVariable(name: "p_data", scope: !1854, file: !165, line: 420, type: !177)
!1868 = !DILocalVariable(name: "p_tmp", scope: !1854, file: !165, line: 420, type: !177)
!1869 = !DILocalVariable(name: "savedMask", scope: !1854, file: !165, line: 421, type: !30)
!1870 = !DILocation(line: 0, scope: !1854)
!1871 = !DILocation(line: 419, column: 5, scope: !1854)
!1872 = !DILocation(line: 423, column: 18, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1854, file: !165, line: 423, column: 9)
!1874 = !DILocation(line: 423, column: 30, scope: !1873)
!1875 = !DILocation(line: 423, column: 9, scope: !1854)
!1876 = !DILocation(line: 430, column: 19, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !165, line: 430, column: 5)
!1878 = distinct !DILexicalBlock(scope: !1854, file: !165, line: 430, column: 5)
!1879 = !DILocation(line: 430, column: 5, scope: !1878)
!1880 = !DILocation(line: 431, column: 25, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !165, line: 431, column: 9)
!1882 = distinct !DILexicalBlock(scope: !1877, file: !165, line: 430, column: 43)
!1883 = !DILocation(line: 431, column: 32, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1881, file: !165, line: 431, column: 9)
!1885 = !DILocation(line: 431, column: 9, scope: !1881)
!1886 = !DILocation(line: 432, column: 24, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1884, file: !165, line: 431, column: 62)
!1888 = !DILocation(line: 432, column: 13, scope: !1887)
!1889 = !DILocation(line: 432, column: 22, scope: !1887)
!1890 = !DILocation(line: 431, column: 53, scope: !1884)
!1891 = !DILocation(line: 431, column: 58, scope: !1884)
!1892 = !DILocation(line: 431, column: 42, scope: !1884)
!1893 = distinct !{!1893, !1885, !1894}
!1894 = !DILocation(line: 433, column: 9, scope: !1881)
!1895 = !DILocation(line: 434, column: 9, scope: !1882)
!1896 = !DILocation(line: 0, scope: !1878)
!1897 = !DILocation(line: 436, column: 15, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1882, file: !165, line: 436, column: 13)
!1899 = !DILocation(line: 436, column: 20, scope: !1898)
!1900 = !DILocation(line: 437, column: 13, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1898, file: !165, line: 436, column: 46)
!1902 = !DILocation(line: 438, column: 13, scope: !1901)
!1903 = !DILocation(line: 440, column: 9, scope: !1901)
!1904 = !DILocation(line: 430, column: 37, scope: !1877)
!1905 = distinct !{!1905, !1879, !1906}
!1906 = !DILocation(line: 441, column: 5, scope: !1878)
!1907 = !DILocation(line: 443, column: 17, scope: !1854)
!1908 = !DILocation(line: 444, column: 9, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1854, file: !165, line: 444, column: 9)
!1910 = !DILocation(line: 444, column: 9, scope: !1854)
!1911 = !DILocation(line: 445, column: 9, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1909, file: !165, line: 444, column: 32)
!1913 = !DILocation(line: 446, column: 9, scope: !1912)
!1914 = !DILocation(line: 447, column: 5, scope: !1912)
!1915 = !DILocation(line: 449, column: 5, scope: !1854)
!1916 = !DILocation(line: 450, column: 5, scope: !1854)
!1917 = !DILocation(line: 452, column: 5, scope: !1854)
!1918 = !DILocation(line: 453, column: 5, scope: !1854)
!1919 = !DILocation(line: 454, column: 5, scope: !1854)
!1920 = !DILocation(line: 456, column: 76, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !165, line: 456, column: 5)
!1922 = distinct !DILexicalBlock(scope: !1854, file: !165, line: 456, column: 5)
!1923 = !DILocation(line: 456, column: 5, scope: !1922)
!1924 = !DILocation(line: 456, column: 62, scope: !1922)
!1925 = !DILocation(line: 457, column: 17, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1921, file: !165, line: 456, column: 111)
!1927 = !DILocation(line: 457, column: 15, scope: !1926)
!1928 = !DILocation(line: 456, column: 88, scope: !1921)
!1929 = !DILocation(line: 456, column: 93, scope: !1921)
!1930 = !DILocation(line: 456, column: 101, scope: !1921)
!1931 = distinct !{!1931, !1923, !1932}
!1932 = !DILocation(line: 458, column: 5, scope: !1922)
!1933 = !DILocation(line: 461, column: 1, scope: !1854)
!1934 = distinct !DISubprogram(name: "sfc_MacEnable", scope: !165, file: !165, line: 402, type: !954, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1935)
!1935 = !{!1936, !1937}
!1936 = !DILocalVariable(name: "force_qpi", arg: 1, scope: !1934, file: !165, line: 402, type: !7)
!1937 = !DILocalVariable(name: "val", scope: !1934, file: !165, line: 404, type: !195)
!1938 = !DILocation(line: 0, scope: !1934)
!1939 = !DILocation(line: 406, column: 11, scope: !1934)
!1940 = !DILocation(line: 408, column: 9, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1934, file: !165, line: 408, column: 9)
!1942 = !DILocation(line: 408, column: 25, scope: !1941)
!1943 = !DILocation(line: 412, column: 9, scope: !1934)
!1944 = !DILocation(line: 414, column: 5, scope: !1934)
!1945 = !DILocation(line: 415, column: 1, scope: !1934)
!1946 = distinct !DISubprogram(name: "sfc_MacWaitReady", scope: !165, file: !165, line: 384, type: !154, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1113)
!1947 = !DILocation(line: 396, column: 5, scope: !1946)
!1948 = !DILocation(line: 397, column: 5, scope: !1946)
!1949 = !DILocation(line: 399, column: 1, scope: !1946)
!1950 = distinct !DISubprogram(name: "sfc_MacTrigger", scope: !165, file: !165, line: 339, type: !1951, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1953)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!195}
!1953 = !{!1954, !1955}
!1954 = !DILocalVariable(name: "val", scope: !1950, file: !165, line: 341, type: !195)
!1955 = !DILocalVariable(name: "misc_ctl", scope: !1950, file: !165, line: 342, type: !195)
!1956 = !DILocation(line: 0, scope: !1950)
!1957 = !DILocation(line: 344, column: 11, scope: !1950)
!1958 = !DILocation(line: 347, column: 9, scope: !1950)
!1959 = !DILocation(line: 349, column: 5, scope: !1950)
!1960 = !DILocation(line: 352, column: 5, scope: !1950)
!1961 = !DILocation(line: 352, column: 14, scope: !1950)
!1962 = !DILocation(line: 352, column: 44, scope: !1950)
!1963 = !DILocation(line: 352, column: 12, scope: !1950)
!1964 = distinct !{!1964, !1960, !1965}
!1965 = !DILocation(line: 353, column: 9, scope: !1950)
!1966 = !DILocation(line: 354, column: 13, scope: !1950)
!1967 = !DILocation(line: 354, column: 43, scope: !1950)
!1968 = !DILocation(line: 354, column: 5, scope: !1950)
!1969 = distinct !{!1969, !1968, !1970}
!1970 = !DILocation(line: 355, column: 9, scope: !1950)
!1971 = !DILocation(line: 357, column: 5, scope: !1950)
!1972 = distinct !DISubprogram(name: "sfc_MacLeave", scope: !165, file: !165, line: 366, type: !154, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1973)
!1973 = !{!1974}
!1974 = !DILocalVariable(name: "val", scope: !1972, file: !165, line: 368, type: !195)
!1975 = !DILocation(line: 371, column: 11, scope: !1972)
!1976 = !DILocation(line: 0, scope: !1972)
!1977 = !DILocation(line: 372, column: 9, scope: !1972)
!1978 = !DILocation(line: 373, column: 5, scope: !1972)
!1979 = !DILocation(line: 378, column: 11, scope: !1972)
!1980 = !DILocation(line: 379, column: 9, scope: !1972)
!1981 = !DILocation(line: 380, column: 5, scope: !1972)
!1982 = !DILocation(line: 381, column: 1, scope: !1972)
!1983 = distinct !DISubprogram(name: "sfc_clear_gpram", scope: !165, file: !165, line: 463, type: !154, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1984)
!1984 = !{!1985, !1986}
!1985 = !DILocalVariable(name: "i", scope: !1983, file: !165, line: 465, type: !30)
!1986 = !DILocalVariable(name: "p_data", scope: !1983, file: !165, line: 466, type: !177)
!1987 = !DILocation(line: 0, scope: !1983)
!1988 = !DILocation(line: 470, column: 5, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1983, file: !165, line: 470, column: 5)
!1990 = !DILocation(line: 471, column: 9, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !165, line: 470, column: 63)
!1992 = distinct !DILexicalBlock(scope: !1989, file: !165, line: 470, column: 5)
!1993 = !DILocation(line: 470, column: 52, scope: !1992)
!1994 = !DILocation(line: 470, column: 59, scope: !1992)
!1995 = !DILocation(line: 470, column: 19, scope: !1992)
!1996 = distinct !{!1996, !1988, !1997}
!1997 = !DILocation(line: 472, column: 5, scope: !1989)
!1998 = !DILocation(line: 475, column: 1, scope: !1983)
!1999 = distinct !DISubprogram(name: "sfc_read", scope: !165, file: !165, line: 478, type: !2000, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !2002)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!7, !193, !1857, !177, !1857}
!2002 = !{!2003, !2004, !2005, !2006}
!2003 = !DILocalVariable(name: "cmd", arg: 1, scope: !1999, file: !165, line: 478, type: !193)
!2004 = !DILocalVariable(name: "cmd_len", arg: 2, scope: !1999, file: !165, line: 478, type: !1857)
!2005 = !DILocalVariable(name: "data", arg: 3, scope: !1999, file: !165, line: 478, type: !177)
!2006 = !DILocalVariable(name: "data_len", arg: 4, scope: !1999, file: !165, line: 478, type: !1857)
!2007 = !DILocation(line: 0, scope: !1999)
!2008 = !DILocation(line: 480, column: 12, scope: !1999)
!2009 = !DILocation(line: 480, column: 5, scope: !1999)
!2010 = distinct !DISubprogram(name: "sfc_write", scope: !165, file: !165, line: 490, type: !2011, scopeLine: 491, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !2013)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!7, !193, !1857, !193, !1857}
!2013 = !{!2014, !2015, !2016, !2017, !2018, !2022}
!2014 = !DILocalVariable(name: "cmd", arg: 1, scope: !2010, file: !165, line: 490, type: !193)
!2015 = !DILocalVariable(name: "cmd_len", arg: 2, scope: !2010, file: !165, line: 490, type: !1857)
!2016 = !DILocalVariable(name: "data", arg: 3, scope: !2010, file: !165, line: 490, type: !193)
!2017 = !DILocalVariable(name: "data_len", arg: 4, scope: !2010, file: !165, line: 490, type: !1857)
!2018 = !DILocalVariable(name: "tmp", scope: !2010, file: !165, line: 492, type: !2019)
!2019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 1280, elements: !2020)
!2020 = !{!2021}
!2021 = !DISubrange(count: 160)
!2022 = !DILocalVariable(name: "total", scope: !2010, file: !165, line: 493, type: !7)
!2023 = !DILocation(line: 0, scope: !2010)
!2024 = !DILocation(line: 492, column: 5, scope: !2010)
!2025 = !DILocation(line: 492, column: 19, scope: !2010)
!2026 = !DILocation(line: 493, column: 25, scope: !2010)
!2027 = !DILocation(line: 495, column: 15, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2010, file: !165, line: 495, column: 9)
!2029 = !DILocation(line: 495, column: 9, scope: !2010)
!2030 = !DILocation(line: 496, column: 9, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !165, line: 496, column: 9)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !165, line: 496, column: 9)
!2033 = distinct !DILexicalBlock(scope: !2028, file: !165, line: 495, column: 31)
!2034 = distinct !{!2034, !2030, !2030}
!2035 = !DILocation(line: 498, column: 5, scope: !2010)
!2036 = !DILocation(line: 500, column: 9, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2010, file: !165, line: 500, column: 9)
!2038 = !DILocation(line: 500, column: 14, scope: !2037)
!2039 = !DILocation(line: 501, column: 17, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2037, file: !165, line: 500, column: 27)
!2041 = !DILocation(line: 501, column: 9, scope: !2040)
!2042 = !DILocation(line: 502, column: 5, scope: !2040)
!2043 = !DILocation(line: 503, column: 12, scope: !2010)
!2044 = !DILocation(line: 504, column: 1, scope: !2010)
!2045 = !DILocation(line: 503, column: 5, scope: !2010)
!2046 = distinct !DISubprogram(name: "sfc_security_write_crc", scope: !165, file: !165, line: 506, type: !2047, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !2049)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!7, !193, !1857}
!2049 = !{!2050, !2051, !2052, !2053, !2054}
!2050 = !DILocalVariable(name: "cmd", arg: 1, scope: !2046, file: !165, line: 506, type: !193)
!2051 = !DILocalVariable(name: "cmd_len", arg: 2, scope: !2046, file: !165, line: 506, type: !1857)
!2052 = !DILocalVariable(name: "tmp", scope: !2046, file: !165, line: 508, type: !2019)
!2053 = !DILocalVariable(name: "crc", scope: !2046, file: !165, line: 509, type: !195)
!2054 = !DILocalVariable(name: "total", scope: !2046, file: !165, line: 510, type: !7)
!2055 = !DILocation(line: 0, scope: !2046)
!2056 = !DILocation(line: 508, column: 5, scope: !2046)
!2057 = !DILocation(line: 508, column: 19, scope: !2046)
!2058 = !DILocation(line: 509, column: 5, scope: !2046)
!2059 = !DILocation(line: 509, column: 25, scope: !2046)
!2060 = !DILocation(line: 509, column: 19, scope: !2046)
!2061 = !DILocation(line: 510, column: 25, scope: !2046)
!2062 = !DILocation(line: 514, column: 5, scope: !2046)
!2063 = !DILocation(line: 515, column: 13, scope: !2046)
!2064 = !DILocation(line: 515, column: 5, scope: !2046)
!2065 = !DILocation(line: 517, column: 12, scope: !2046)
!2066 = !DILocation(line: 518, column: 1, scope: !2046)
!2067 = !DILocation(line: 517, column: 5, scope: !2046)
!2068 = distinct !DISubprogram(name: "__sfc_write", scope: !165, file: !165, line: 538, type: !1855, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !2069)
!2069 = !{!2070, !2071, !2072, !2073, !2074, !2075, !2076}
!2070 = !DILocalVariable(name: "cmd", arg: 1, scope: !2068, file: !165, line: 538, type: !193)
!2071 = !DILocalVariable(name: "cmd_len", arg: 2, scope: !2068, file: !165, line: 538, type: !1857)
!2072 = !DILocalVariable(name: "data", arg: 3, scope: !2068, file: !165, line: 538, type: !177)
!2073 = !DILocalVariable(name: "data_len", arg: 4, scope: !2068, file: !165, line: 538, type: !1857)
!2074 = !DILocalVariable(name: "security_enable", arg: 5, scope: !2068, file: !165, line: 538, type: !30)
!2075 = !DILocalVariable(name: "tmp", scope: !2068, file: !165, line: 540, type: !2019)
!2076 = !DILocalVariable(name: "total", scope: !2068, file: !165, line: 541, type: !7)
!2077 = !DILocation(line: 0, scope: !2068)
!2078 = !DILocation(line: 540, column: 5, scope: !2068)
!2079 = !DILocation(line: 540, column: 19, scope: !2068)
!2080 = !DILocation(line: 541, column: 25, scope: !2068)
!2081 = !DILocation(line: 543, column: 15, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2068, file: !165, line: 543, column: 9)
!2083 = !DILocation(line: 543, column: 9, scope: !2068)
!2084 = !DILocation(line: 544, column: 9, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !165, line: 544, column: 9)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !165, line: 544, column: 9)
!2087 = distinct !DILexicalBlock(scope: !2082, file: !165, line: 543, column: 30)
!2088 = distinct !{!2088, !2084, !2084}
!2089 = !DILocation(line: 546, column: 5, scope: !2068)
!2090 = !DILocation(line: 548, column: 9, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2068, file: !165, line: 548, column: 9)
!2092 = !DILocation(line: 548, column: 14, scope: !2091)
!2093 = !DILocation(line: 549, column: 17, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2091, file: !165, line: 548, column: 27)
!2095 = !DILocation(line: 549, column: 9, scope: !2094)
!2096 = !DILocation(line: 550, column: 5, scope: !2094)
!2097 = !DILocation(line: 551, column: 12, scope: !2068)
!2098 = !DILocation(line: 552, column: 1, scope: !2068)
!2099 = !DILocation(line: 551, column: 5, scope: !2068)
!2100 = distinct !DISubprogram(name: "flash_suspend_Winbond", scope: !184, file: !184, line: 186, type: !154, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !1113)
!2101 = !DILocation(line: 188, column: 5, scope: !2100)
!2102 = !DILocation(line: 189, column: 5, scope: !2100)
!2103 = distinct !DISubprogram(name: "flash_resume_Winbond", scope: !184, file: !184, line: 195, type: !154, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !1113)
!2104 = !DILocation(line: 197, column: 5, scope: !2103)
!2105 = !DILocation(line: 198, column: 5, scope: !2103)
!2106 = distinct !DISubprogram(name: "flash_check_device", scope: !184, file: !184, line: 276, type: !1753, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !2107)
!2107 = !{!2108, !2109, !2110, !2112}
!2108 = !DILocalVariable(name: "i", scope: !2106, file: !184, line: 278, type: !7)
!2109 = !DILocalVariable(name: "jedec", scope: !2106, file: !184, line: 279, type: !195)
!2110 = !DILocalVariable(name: "buf", scope: !2106, file: !184, line: 280, type: !2111)
!2111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 40, elements: !551)
!2112 = !DILocalVariable(name: "info", scope: !2106, file: !184, line: 281, type: !196)
!2113 = !DILocation(line: 280, column: 5, scope: !2106)
!2114 = !DILocation(line: 280, column: 19, scope: !2106)
!2115 = !DILocation(line: 283, column: 5, scope: !2106)
!2116 = !DILocation(line: 284, column: 45, scope: !2106)
!2117 = !DILocation(line: 284, column: 30, scope: !2106)
!2118 = !DILocation(line: 284, column: 52, scope: !2106)
!2119 = !DILocation(line: 284, column: 77, scope: !2106)
!2120 = !DILocation(line: 284, column: 62, scope: !2106)
!2121 = !DILocation(line: 284, column: 84, scope: !2106)
!2122 = !DILocation(line: 284, column: 59, scope: !2106)
!2123 = !DILocation(line: 0, scope: !2106)
!2124 = !DILocation(line: 286, column: 23, scope: !2106)
!2125 = !DILocation(line: 286, column: 21, scope: !2106)
!2126 = !DILocation(line: 288, column: 5, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2106, file: !184, line: 288, column: 5)
!2128 = !DILocation(line: 290, column: 19, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !184, line: 290, column: 13)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !184, line: 288, column: 70)
!2131 = distinct !DILexicalBlock(scope: !2127, file: !184, line: 288, column: 5)
!2132 = !DILocation(line: 290, column: 22, scope: !2129)
!2133 = !DILocation(line: 290, column: 32, scope: !2129)
!2134 = !DILocation(line: 290, column: 41, scope: !2129)
!2135 = !DILocation(line: 290, column: 50, scope: !2129)
!2136 = !DILocation(line: 290, column: 13, scope: !2130)
!2137 = !DILocation(line: 289, column: 17, scope: !2130)
!2138 = !DILocation(line: 291, column: 27, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2129, file: !184, line: 290, column: 60)
!2140 = !DILocation(line: 292, column: 26, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2139, file: !184, line: 292, column: 17)
!2142 = !DILocation(line: 292, column: 17, scope: !2139)
!2143 = !DILocation(line: 294, column: 33, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2141, file: !184, line: 294, column: 24)
!2145 = !DILocation(line: 294, column: 24, scope: !2141)
!2146 = !DILocation(line: 296, column: 33, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2144, file: !184, line: 296, column: 24)
!2148 = !DILocation(line: 296, column: 24, scope: !2144)
!2149 = !DILocation(line: 298, column: 31, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !184, line: 298, column: 20)
!2151 = distinct !DILexicalBlock(scope: !2147, file: !184, line: 296, column: 48)
!2152 = !DILocation(line: 298, column: 49, scope: !2150)
!2153 = !DILocation(line: 0, scope: !2150)
!2154 = !DILocation(line: 303, column: 13, scope: !2151)
!2155 = !DILocation(line: 303, column: 33, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2147, file: !184, line: 303, column: 24)
!2157 = !DILocation(line: 303, column: 24, scope: !2147)
!2158 = !DILocation(line: 0, scope: !2141)
!2159 = !DILocation(line: 308, column: 30, scope: !2139)
!2160 = !DILocation(line: 288, column: 66, scope: !2131)
!2161 = !DILocation(line: 288, column: 19, scope: !2131)
!2162 = distinct !{!2162, !2126, !2163}
!2163 = !DILocation(line: 311, column: 5, scope: !2127)
!2164 = !DILocation(line: 313, column: 19, scope: !2106)
!2165 = !DILocation(line: 315, column: 9, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2106, file: !184, line: 315, column: 9)
!2167 = !DILocation(line: 315, column: 26, scope: !2166)
!2168 = !DILocation(line: 315, column: 9, scope: !2106)
!2169 = !DILocation(line: 316, column: 51, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2166, file: !184, line: 315, column: 47)
!2171 = !DILocation(line: 316, column: 23, scope: !2170)
!2172 = !DILocation(line: 318, column: 19, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2170, file: !184, line: 318, column: 13)
!2174 = !DILocation(line: 318, column: 25, scope: !2173)
!2175 = !DILocation(line: 318, column: 22, scope: !2173)
!2176 = !DILocation(line: 318, column: 32, scope: !2173)
!2177 = !DILocation(line: 318, column: 41, scope: !2173)
!2178 = !DILocation(line: 318, column: 50, scope: !2173)
!2179 = !DILocation(line: 318, column: 13, scope: !2170)
!2180 = !DILocation(line: 322, column: 13, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2173, file: !184, line: 321, column: 16)
!2182 = !DILocation(line: 323, column: 13, scope: !2181)
!2183 = !DILocation(line: 325, column: 5, scope: !2170)
!2184 = !DILocation(line: 329, column: 1, scope: !2106)
!2185 = distinct !DISubprogram(name: "flash_read_jedec_id", scope: !184, file: !184, line: 495, type: !2186, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !2188)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!7, !177, !7}
!2188 = !{!2189, !2190, !2191, !2192}
!2189 = !DILocalVariable(name: "buf", arg: 1, scope: !2185, file: !184, line: 495, type: !177)
!2190 = !DILocalVariable(name: "buf_size", arg: 2, scope: !2185, file: !184, line: 495, type: !7)
!2191 = !DILocalVariable(name: "code", scope: !2185, file: !184, line: 497, type: !58)
!2192 = !DILocalVariable(name: "rc", scope: !2185, file: !184, line: 498, type: !7)
!2193 = !DILocation(line: 0, scope: !2185)
!2194 = !DILocation(line: 497, column: 5, scope: !2185)
!2195 = !DILocation(line: 499, column: 10, scope: !2185)
!2196 = !DILocation(line: 500, column: 10, scope: !2185)
!2197 = !DILocation(line: 503, column: 1, scope: !2185)
!2198 = !DILocation(line: 502, column: 5, scope: !2185)
!2199 = distinct !DISubprogram(name: "flash_switch_mode", scope: !184, file: !184, line: 331, type: !2200, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !2202)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{null, !195}
!2202 = !{!2203}
!2203 = !DILocalVariable(name: "mode", arg: 1, scope: !2199, file: !184, line: 331, type: !195)
!2204 = !DILocation(line: 0, scope: !2199)
!2205 = !DILocation(line: 333, column: 9, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2199, file: !184, line: 333, column: 9)
!2207 = !DILocation(line: 333, column: 34, scope: !2206)
!2208 = !DILocation(line: 333, column: 9, scope: !2199)
!2209 = !DILocation(line: 335, column: 26, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2206, file: !184, line: 333, column: 43)
!2211 = !DILocation(line: 336, column: 5, scope: !2210)
!2212 = !DILocation(line: 338, column: 5, scope: !2199)
!2213 = !DILocation(line: 339, column: 5, scope: !2199)
!2214 = !DILocation(line: 341, column: 9, scope: !2199)
!2215 = !DILocation(line: 342, column: 9, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !184, line: 341, column: 22)
!2217 = distinct !DILexicalBlock(scope: !2199, file: !184, line: 341, column: 9)
!2218 = !DILocation(line: 343, column: 5, scope: !2216)
!2219 = !DILocation(line: 344, column: 12, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !184, line: 344, column: 12)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !184, line: 343, column: 30)
!2222 = distinct !DILexicalBlock(scope: !2217, file: !184, line: 343, column: 16)
!2223 = !DILocation(line: 344, column: 29, scope: !2220)
!2224 = !DILocation(line: 344, column: 12, scope: !2221)
!2225 = !DILocation(line: 345, column: 13, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2220, file: !184, line: 344, column: 48)
!2227 = !DILocation(line: 346, column: 9, scope: !2226)
!2228 = !DILocation(line: 347, column: 13, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2220, file: !184, line: 346, column: 16)
!2230 = !DILocation(line: 350, column: 9, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !184, line: 349, column: 29)
!2232 = distinct !DILexicalBlock(scope: !2222, file: !184, line: 349, column: 16)
!2233 = !DILocation(line: 352, column: 9, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !184, line: 352, column: 9)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !184, line: 352, column: 9)
!2236 = distinct !DILexicalBlock(scope: !2232, file: !184, line: 351, column: 12)
!2237 = distinct !{!2237, !2233, !2233}
!2238 = !DILocation(line: 354, column: 21, scope: !2199)
!2239 = !DILocation(line: 355, column: 1, scope: !2199)
!2240 = distinct !DISubprogram(name: "flash_Switch_Device_Mode", scope: !184, file: !184, line: 215, type: !1667, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !2241)
!2241 = !{!2242, !2243}
!2242 = !DILocalVariable(name: "mode", arg: 1, scope: !2240, file: !184, line: 215, type: !61)
!2243 = !DILocalVariable(name: "ptr", scope: !2240, file: !184, line: 217, type: !193)
!2244 = !DILocation(line: 0, scope: !2240)
!2245 = !DILocation(line: 220, column: 5, scope: !2240)
!2246 = !DILocation(line: 223, column: 17, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !184, line: 223, column: 17)
!2248 = distinct !DILexicalBlock(scope: !2240, file: !184, line: 220, column: 19)
!2249 = !DILocation(line: 223, column: 17, scope: !2248)
!2250 = !DILocation(line: 227, column: 22, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !184, line: 227, column: 22)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !184, line: 225, column: 55)
!2253 = distinct !DILexicalBlock(scope: !2247, file: !184, line: 225, column: 23)
!2254 = !DILocation(line: 227, column: 37, scope: !2251)
!2255 = !DILocation(line: 227, column: 22, scope: !2252)
!2256 = !DILocation(line: 230, column: 13, scope: !2252)
!2257 = !DILocation(line: 232, column: 13, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !184, line: 230, column: 59)
!2259 = distinct !DILexicalBlock(scope: !2253, file: !184, line: 230, column: 24)
!2260 = !DILocation(line: 233, column: 23, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !184, line: 232, column: 61)
!2262 = distinct !DILexicalBlock(scope: !2259, file: !184, line: 232, column: 24)
!2263 = !DILocation(line: 234, column: 13, scope: !2261)
!2264 = !DILocation(line: 239, column: 17, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2248, file: !184, line: 239, column: 17)
!2266 = !DILocation(line: 239, column: 17, scope: !2248)
!2267 = !DILocation(line: 243, column: 22, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !184, line: 243, column: 22)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !184, line: 241, column: 55)
!2270 = distinct !DILexicalBlock(scope: !2265, file: !184, line: 241, column: 23)
!2271 = !DILocation(line: 243, column: 37, scope: !2268)
!2272 = !DILocation(line: 243, column: 22, scope: !2269)
!2273 = !DILocation(line: 246, column: 13, scope: !2269)
!2274 = !DILocation(line: 248, column: 13, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !184, line: 246, column: 59)
!2276 = distinct !DILexicalBlock(scope: !2270, file: !184, line: 246, column: 24)
!2277 = !DILocation(line: 249, column: 23, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !184, line: 248, column: 61)
!2279 = distinct !DILexicalBlock(scope: !2276, file: !184, line: 248, column: 24)
!2280 = !DILocation(line: 250, column: 13, scope: !2278)
!2281 = !DILocation(line: 254, column: 17, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2248, file: !184, line: 254, column: 17)
!2283 = !DILocation(line: 254, column: 17, scope: !2248)
!2284 = !DILocation(line: 258, column: 22, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !184, line: 258, column: 22)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !184, line: 256, column: 55)
!2287 = distinct !DILexicalBlock(scope: !2282, file: !184, line: 256, column: 23)
!2288 = !DILocation(line: 258, column: 37, scope: !2285)
!2289 = !DILocation(line: 258, column: 22, scope: !2286)
!2290 = !DILocation(line: 261, column: 13, scope: !2286)
!2291 = !DILocation(line: 263, column: 13, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !184, line: 261, column: 59)
!2293 = distinct !DILexicalBlock(scope: !2287, file: !184, line: 261, column: 24)
!2294 = !DILocation(line: 264, column: 23, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !184, line: 263, column: 61)
!2296 = distinct !DILexicalBlock(scope: !2293, file: !184, line: 263, column: 24)
!2297 = !DILocation(line: 265, column: 13, scope: !2295)
!2298 = !DILocation(line: 268, column: 13, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !184, line: 268, column: 13)
!2300 = distinct !DILexicalBlock(scope: !2248, file: !184, line: 268, column: 13)
!2301 = distinct !{!2301, !2298, !2298}
!2302 = !DILocation(line: 272, column: 5, scope: !2240)
!2303 = !DILocation(line: 0, scope: !2248)
!2304 = !DILocation(line: 273, column: 1, scope: !2240)
!2305 = distinct !DISubprogram(name: "flash_config", scope: !184, file: !184, line: 357, type: !154, scopeLine: 358, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !2306)
!2306 = !{!2307, !2308, !2309, !2310}
!2307 = !DILocalVariable(name: "i", scope: !2305, file: !184, line: 360, type: !7)
!2308 = !DILocalVariable(name: "jedec", scope: !2305, file: !184, line: 361, type: !195)
!2309 = !DILocalVariable(name: "buf", scope: !2305, file: !184, line: 362, type: !2111)
!2310 = !DILocalVariable(name: "info", scope: !2305, file: !184, line: 363, type: !196)
!2311 = !DILocation(line: 362, column: 5, scope: !2305)
!2312 = !DILocation(line: 362, column: 19, scope: !2305)
!2313 = !DILocation(line: 377, column: 26, scope: !2305)
!2314 = !DILocation(line: 377, column: 24, scope: !2305)
!2315 = !DILocation(line: 380, column: 19, scope: !2305)
!2316 = !DILocation(line: 382, column: 5, scope: !2305)
!2317 = !DILocation(line: 383, column: 45, scope: !2305)
!2318 = !DILocation(line: 383, column: 30, scope: !2305)
!2319 = !DILocation(line: 383, column: 52, scope: !2305)
!2320 = !DILocation(line: 383, column: 77, scope: !2305)
!2321 = !DILocation(line: 383, column: 62, scope: !2305)
!2322 = !DILocation(line: 383, column: 84, scope: !2305)
!2323 = !DILocation(line: 383, column: 59, scope: !2305)
!2324 = !DILocation(line: 0, scope: !2305)
!2325 = !DILocation(line: 385, column: 5, scope: !2305)
!2326 = !DILocation(line: 387, column: 5, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2305, file: !184, line: 387, column: 5)
!2328 = !DILocation(line: 388, column: 17, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !184, line: 387, column: 70)
!2330 = distinct !DILexicalBlock(scope: !2327, file: !184, line: 387, column: 5)
!2331 = !DILocation(line: 389, column: 19, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2329, file: !184, line: 389, column: 13)
!2333 = !DILocation(line: 389, column: 25, scope: !2332)
!2334 = !DILocation(line: 389, column: 22, scope: !2332)
!2335 = !DILocation(line: 389, column: 32, scope: !2332)
!2336 = !DILocation(line: 389, column: 41, scope: !2332)
!2337 = !DILocation(line: 389, column: 50, scope: !2332)
!2338 = !DILocation(line: 389, column: 13, scope: !2329)
!2339 = !DILocation(line: 390, column: 13, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2332, file: !184, line: 389, column: 60)
!2341 = !DILocation(line: 391, column: 27, scope: !2340)
!2342 = !DILocation(line: 392, column: 26, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2340, file: !184, line: 392, column: 17)
!2344 = !DILocation(line: 392, column: 17, scope: !2340)
!2345 = !DILocation(line: 394, column: 33, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2343, file: !184, line: 394, column: 24)
!2347 = !DILocation(line: 394, column: 24, scope: !2343)
!2348 = !DILocation(line: 396, column: 33, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2346, file: !184, line: 396, column: 24)
!2350 = !DILocation(line: 396, column: 24, scope: !2346)
!2351 = !DILocation(line: 398, column: 33, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2349, file: !184, line: 398, column: 24)
!2353 = !DILocation(line: 398, column: 24, scope: !2349)
!2354 = !DILocation(line: 399, column: 34, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2352, file: !184, line: 398, column: 52)
!2356 = !DILocation(line: 404, column: 9, scope: !2305)
!2357 = !DILocation(line: 0, scope: !2343)
!2358 = !DILocation(line: 387, column: 66, scope: !2330)
!2359 = !DILocation(line: 387, column: 19, scope: !2330)
!2360 = distinct !{!2360, !2326, !2361}
!2361 = !DILocation(line: 402, column: 5, scope: !2327)
!2362 = !DILocation(line: 404, column: 9, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2305, file: !184, line: 404, column: 9)
!2364 = !DILocation(line: 404, column: 26, scope: !2363)
!2365 = !DILocation(line: 405, column: 51, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2363, file: !184, line: 404, column: 47)
!2367 = !DILocation(line: 405, column: 23, scope: !2366)
!2368 = !DILocation(line: 407, column: 19, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2366, file: !184, line: 407, column: 13)
!2370 = !DILocation(line: 407, column: 25, scope: !2369)
!2371 = !DILocation(line: 407, column: 22, scope: !2369)
!2372 = !DILocation(line: 407, column: 32, scope: !2369)
!2373 = !DILocation(line: 407, column: 41, scope: !2369)
!2374 = !DILocation(line: 407, column: 50, scope: !2369)
!2375 = !DILocation(line: 407, column: 13, scope: !2366)
!2376 = !DILocation(line: 411, column: 13, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2369, file: !184, line: 410, column: 16)
!2378 = !DILocation(line: 412, column: 13, scope: !2377)
!2379 = !DILocation(line: 414, column: 5, scope: !2366)
!2380 = !DILocation(line: 416, column: 10, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2305, file: !184, line: 416, column: 9)
!2382 = !DILocation(line: 416, column: 9, scope: !2305)
!2383 = !DILocation(line: 417, column: 9, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2381, file: !184, line: 416, column: 25)
!2385 = !DILocation(line: 419, column: 23, scope: !2384)
!2386 = !DILocation(line: 420, column: 5, scope: !2384)
!2387 = !DILocation(line: 422, column: 1, scope: !2305)
!2388 = distinct !DISubprogram(name: "flash_init", scope: !184, file: !184, line: 425, type: !954, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !2389)
!2389 = !{!2390, !2391, !2392, !2393, !2394}
!2390 = !DILocalVariable(name: "security_enable", arg: 1, scope: !2388, file: !184, line: 425, type: !7)
!2391 = !DILocalVariable(name: "i", scope: !2388, file: !184, line: 427, type: !7)
!2392 = !DILocalVariable(name: "jedec", scope: !2388, file: !184, line: 428, type: !195)
!2393 = !DILocalVariable(name: "buf", scope: !2388, file: !184, line: 429, type: !2111)
!2394 = !DILocalVariable(name: "info", scope: !2388, file: !184, line: 430, type: !196)
!2395 = !DILocation(line: 0, scope: !2388)
!2396 = !DILocation(line: 429, column: 5, scope: !2388)
!2397 = !DILocation(line: 429, column: 19, scope: !2388)
!2398 = !DILocation(line: 436, column: 5, scope: !2388)
!2399 = !DILocation(line: 438, column: 26, scope: !2388)
!2400 = !DILocation(line: 438, column: 24, scope: !2388)
!2401 = !DILocation(line: 440, column: 5, scope: !2388)
!2402 = !DILocation(line: 442, column: 19, scope: !2388)
!2403 = !DILocation(line: 444, column: 5, scope: !2388)
!2404 = !DILocation(line: 445, column: 45, scope: !2388)
!2405 = !DILocation(line: 445, column: 30, scope: !2388)
!2406 = !DILocation(line: 445, column: 52, scope: !2388)
!2407 = !DILocation(line: 445, column: 77, scope: !2388)
!2408 = !DILocation(line: 445, column: 62, scope: !2388)
!2409 = !DILocation(line: 445, column: 84, scope: !2388)
!2410 = !DILocation(line: 445, column: 59, scope: !2388)
!2411 = !DILocation(line: 447, column: 5, scope: !2388)
!2412 = !DILocation(line: 449, column: 5, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2388, file: !184, line: 449, column: 5)
!2414 = !DILocation(line: 450, column: 17, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !184, line: 449, column: 70)
!2416 = distinct !DILexicalBlock(scope: !2413, file: !184, line: 449, column: 5)
!2417 = !DILocation(line: 451, column: 19, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2415, file: !184, line: 451, column: 13)
!2419 = !DILocation(line: 451, column: 25, scope: !2418)
!2420 = !DILocation(line: 451, column: 22, scope: !2418)
!2421 = !DILocation(line: 451, column: 32, scope: !2418)
!2422 = !DILocation(line: 451, column: 41, scope: !2418)
!2423 = !DILocation(line: 451, column: 50, scope: !2418)
!2424 = !DILocation(line: 451, column: 13, scope: !2415)
!2425 = !DILocation(line: 452, column: 13, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2418, file: !184, line: 451, column: 60)
!2427 = !DILocation(line: 453, column: 27, scope: !2426)
!2428 = !DILocation(line: 454, column: 9, scope: !2426)
!2429 = !DILocation(line: 449, column: 66, scope: !2416)
!2430 = !DILocation(line: 449, column: 19, scope: !2416)
!2431 = distinct !{!2431, !2412, !2432}
!2432 = !DILocation(line: 455, column: 5, scope: !2413)
!2433 = !DILocation(line: 457, column: 10, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2388, file: !184, line: 457, column: 9)
!2435 = !DILocation(line: 457, column: 9, scope: !2388)
!2436 = !DILocation(line: 458, column: 9, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2434, file: !184, line: 457, column: 25)
!2438 = !DILocation(line: 460, column: 23, scope: !2437)
!2439 = !DILocation(line: 461, column: 5, scope: !2437)
!2440 = !DILocation(line: 462, column: 1, scope: !2388)
!2441 = distinct !DISubprogram(name: "flash_reset", scope: !184, file: !184, line: 170, type: !154, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !1113)
!2442 = !DILocation(line: 172, column: 5, scope: !2441)
!2443 = !DILocation(line: 173, column: 5, scope: !2441)
!2444 = !DILocation(line: 176, column: 5, scope: !2441)
!2445 = !DILocation(line: 177, column: 5, scope: !2441)
!2446 = !DILocation(line: 179, column: 5, scope: !2441)
!2447 = distinct !DISubprogram(name: "flash_wait_ready", scope: !184, file: !184, line: 469, type: !2448, scopeLine: 470, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !2450)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!7, !7}
!2450 = !{!2451, !2452, !2453}
!2451 = !DILocalVariable(name: "sleep_ms", arg: 1, scope: !2447, file: !184, line: 469, type: !7)
!2452 = !DILocalVariable(name: "count", scope: !2447, file: !184, line: 471, type: !7)
!2453 = !DILocalVariable(name: "sr", scope: !2447, file: !184, line: 472, type: !58)
!2454 = !DILocation(line: 0, scope: !2447)
!2455 = !DILocation(line: 472, column: 5, scope: !2447)
!2456 = !DILocation(line: 472, column: 19, scope: !2447)
!2457 = !DILocation(line: 479, column: 28, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !184, line: 479, column: 5)
!2459 = distinct !DILexicalBlock(scope: !2447, file: !184, line: 479, column: 5)
!2460 = !DILocation(line: 479, column: 5, scope: !2459)
!2461 = !DILocation(line: 480, column: 14, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2463, file: !184, line: 480, column: 13)
!2463 = distinct !DILexicalBlock(scope: !2458, file: !184, line: 479, column: 64)
!2464 = !DILocation(line: 480, column: 34, scope: !2462)
!2465 = !DILocation(line: 480, column: 13, scope: !2463)
!2466 = !DILocation(line: 482, column: 22, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2462, file: !184, line: 482, column: 20)
!2468 = !DILocation(line: 482, column: 25, scope: !2467)
!2469 = !DILocation(line: 482, column: 20, scope: !2462)
!2470 = !DILocation(line: 493, column: 1, scope: !2447)
!2471 = !DILocation(line: 483, column: 13, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2467, file: !184, line: 482, column: 36)
!2473 = !DILocation(line: 486, column: 9, scope: !2463)
!2474 = !DILocation(line: 479, column: 60, scope: !2458)
!2475 = distinct !{!2475, !2460, !2476}
!2476 = !DILocation(line: 488, column: 5, scope: !2459)
!2477 = !DILocation(line: 491, column: 5, scope: !2447)
!2478 = distinct !DISubprogram(name: "flash_read_sr", scope: !184, file: !184, line: 623, type: !2479, scopeLine: 624, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !2481)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!7, !177}
!2481 = !{!2482, !2483, !2484}
!2482 = !DILocalVariable(name: "val", arg: 1, scope: !2478, file: !184, line: 623, type: !177)
!2483 = !DILocalVariable(name: "retval", scope: !2478, file: !184, line: 625, type: !7)
!2484 = !DILocalVariable(name: "code", scope: !2478, file: !184, line: 626, type: !58)
!2485 = !DILocation(line: 0, scope: !2478)
!2486 = !DILocation(line: 626, column: 5, scope: !2478)
!2487 = !DILocation(line: 626, column: 19, scope: !2478)
!2488 = !DILocation(line: 628, column: 14, scope: !2478)
!2489 = !DILocation(line: 629, column: 16, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2478, file: !184, line: 629, column: 9)
!2491 = !DILocation(line: 634, column: 1, scope: !2478)
!2492 = distinct !DISubprogram(name: "flash_read_manu_id", scope: !184, file: !184, line: 505, type: !2186, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !2493)
!2493 = !{!2494, !2495, !2496, !2497}
!2494 = !DILocalVariable(name: "buf", arg: 1, scope: !2492, file: !184, line: 505, type: !177)
!2495 = !DILocalVariable(name: "buf_size", arg: 2, scope: !2492, file: !184, line: 505, type: !7)
!2496 = !DILocalVariable(name: "code", scope: !2492, file: !184, line: 507, type: !229)
!2497 = !DILocalVariable(name: "rc", scope: !2492, file: !184, line: 508, type: !7)
!2498 = !DILocation(line: 0, scope: !2492)
!2499 = !DILocation(line: 507, column: 5, scope: !2492)
!2500 = !DILocation(line: 507, column: 19, scope: !2492)
!2501 = !DILocation(line: 510, column: 10, scope: !2492)
!2502 = !DILocation(line: 513, column: 1, scope: !2492)
!2503 = !DILocation(line: 512, column: 5, scope: !2492)
!2504 = distinct !DISubprogram(name: "flash_read_manu_id_quad", scope: !184, file: !184, line: 515, type: !2186, scopeLine: 516, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !2505)
!2505 = !{!2506, !2507, !2508, !2509}
!2506 = !DILocalVariable(name: "buf", arg: 1, scope: !2504, file: !184, line: 515, type: !177)
!2507 = !DILocalVariable(name: "buf_size", arg: 2, scope: !2504, file: !184, line: 515, type: !7)
!2508 = !DILocalVariable(name: "code", scope: !2504, file: !184, line: 517, type: !229)
!2509 = !DILocalVariable(name: "rc", scope: !2504, file: !184, line: 518, type: !7)
!2510 = !DILocation(line: 0, scope: !2504)
!2511 = !DILocation(line: 517, column: 5, scope: !2504)
!2512 = !DILocation(line: 517, column: 19, scope: !2504)
!2513 = !DILocation(line: 520, column: 10, scope: !2504)
!2514 = !DILocation(line: 523, column: 1, scope: !2504)
!2515 = !DILocation(line: 522, column: 5, scope: !2504)
!2516 = distinct !DISubprogram(name: "flash_read", scope: !184, file: !184, line: 526, type: !2517, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !2519)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!7, !177, !30, !7}
!2519 = !{!2520, !2521, !2522, !2523, !2524}
!2520 = !DILocalVariable(name: "buf", arg: 1, scope: !2516, file: !184, line: 526, type: !177)
!2521 = !DILocalVariable(name: "from", arg: 2, scope: !2516, file: !184, line: 526, type: !30)
!2522 = !DILocalVariable(name: "len", arg: 3, scope: !2516, file: !184, line: 526, type: !7)
!2523 = !DILocalVariable(name: "cmd", scope: !2516, file: !184, line: 528, type: !229)
!2524 = !DILocalVariable(name: "rdlen", scope: !2516, file: !184, line: 529, type: !7)
!2525 = !DILocation(line: 0, scope: !2516)
!2526 = !DILocation(line: 528, column: 5, scope: !2516)
!2527 = !DILocation(line: 528, column: 19, scope: !2516)
!2528 = !DILocation(line: 532, column: 13, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2516, file: !184, line: 532, column: 9)
!2530 = !DILocation(line: 532, column: 9, scope: !2516)
!2531 = !DILocation(line: 537, column: 9, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2516, file: !184, line: 537, column: 9)
!2533 = !DILocation(line: 542, column: 22, scope: !2516)
!2534 = !DILocation(line: 543, column: 12, scope: !2516)
!2535 = !DILocation(line: 544, column: 19, scope: !2516)
!2536 = !DILocation(line: 544, column: 14, scope: !2516)
!2537 = !DILocation(line: 544, column: 5, scope: !2516)
!2538 = !DILocation(line: 544, column: 12, scope: !2516)
!2539 = !DILocation(line: 545, column: 19, scope: !2516)
!2540 = !DILocation(line: 545, column: 14, scope: !2516)
!2541 = !DILocation(line: 545, column: 5, scope: !2516)
!2542 = !DILocation(line: 545, column: 12, scope: !2516)
!2543 = !DILocation(line: 546, column: 14, scope: !2516)
!2544 = !DILocation(line: 546, column: 5, scope: !2516)
!2545 = !DILocation(line: 546, column: 12, scope: !2516)
!2546 = !DILocation(line: 548, column: 13, scope: !2516)
!2547 = !DILocation(line: 553, column: 5, scope: !2516)
!2548 = !DILocation(line: 554, column: 1, scope: !2516)
!2549 = distinct !DISubprogram(name: "flash_fast_read", scope: !184, file: !184, line: 557, type: !2550, scopeLine: 558, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !2552)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!7, !177, !30, !7, !7}
!2552 = !{!2553, !2554, !2555, !2556, !2557, !2559, !2560, !2561}
!2553 = !DILocalVariable(name: "buf", arg: 1, scope: !2549, file: !184, line: 557, type: !177)
!2554 = !DILocalVariable(name: "from", arg: 2, scope: !2549, file: !184, line: 557, type: !30)
!2555 = !DILocalVariable(name: "len", arg: 3, scope: !2549, file: !184, line: 557, type: !7)
!2556 = !DILocalVariable(name: "dummy_cycle", arg: 4, scope: !2549, file: !184, line: 557, type: !7)
!2557 = !DILocalVariable(name: "cmd", scope: !2549, file: !184, line: 559, type: !2558)
!2558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 256, elements: !964)
!2559 = !DILocalVariable(name: "cmd_len", scope: !2549, file: !184, line: 560, type: !7)
!2560 = !DILocalVariable(name: "rdlen", scope: !2549, file: !184, line: 561, type: !7)
!2561 = !DILocalVariable(name: "i", scope: !2549, file: !184, line: 561, type: !7)
!2562 = !DILocation(line: 0, scope: !2549)
!2563 = !DILocation(line: 559, column: 5, scope: !2549)
!2564 = !DILocation(line: 559, column: 19, scope: !2549)
!2565 = !DILocation(line: 564, column: 13, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2549, file: !184, line: 564, column: 9)
!2567 = !DILocation(line: 564, column: 9, scope: !2549)
!2568 = !DILocation(line: 569, column: 9, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2549, file: !184, line: 569, column: 9)
!2570 = !DILocation(line: 574, column: 12, scope: !2549)
!2571 = !DILocation(line: 575, column: 19, scope: !2549)
!2572 = !DILocation(line: 575, column: 14, scope: !2549)
!2573 = !DILocation(line: 575, column: 5, scope: !2549)
!2574 = !DILocation(line: 575, column: 12, scope: !2549)
!2575 = !DILocation(line: 576, column: 19, scope: !2549)
!2576 = !DILocation(line: 576, column: 14, scope: !2549)
!2577 = !DILocation(line: 576, column: 5, scope: !2549)
!2578 = !DILocation(line: 576, column: 12, scope: !2549)
!2579 = !DILocation(line: 577, column: 14, scope: !2549)
!2580 = !DILocation(line: 577, column: 5, scope: !2549)
!2581 = !DILocation(line: 577, column: 12, scope: !2549)
!2582 = !DILocation(line: 580, column: 19, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2584, file: !184, line: 580, column: 5)
!2584 = distinct !DILexicalBlock(scope: !2549, file: !184, line: 580, column: 5)
!2585 = !DILocation(line: 580, column: 5, scope: !2584)
!2586 = !DILocation(line: 581, column: 15, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2583, file: !184, line: 580, column: 62)
!2588 = !DILocation(line: 581, column: 9, scope: !2587)
!2589 = !DILocation(line: 581, column: 20, scope: !2587)
!2590 = !DILocation(line: 580, column: 58, scope: !2583)
!2591 = !DILocation(line: 580, column: 33, scope: !2583)
!2592 = distinct !{!2592, !2585, !2593}
!2593 = !DILocation(line: 583, column: 5, scope: !2584)
!2594 = !DILocation(line: 585, column: 13, scope: !2549)
!2595 = !DILocation(line: 590, column: 5, scope: !2549)
!2596 = !DILocation(line: 591, column: 1, scope: !2549)
!2597 = distinct !DISubprogram(name: "flash_read_sr2", scope: !184, file: !184, line: 636, type: !2479, scopeLine: 637, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !2598)
!2598 = !{!2599, !2600, !2601}
!2599 = !DILocalVariable(name: "val", arg: 1, scope: !2597, file: !184, line: 636, type: !177)
!2600 = !DILocalVariable(name: "retval", scope: !2597, file: !184, line: 638, type: !7)
!2601 = !DILocalVariable(name: "code", scope: !2597, file: !184, line: 639, type: !58)
!2602 = !DILocation(line: 0, scope: !2597)
!2603 = !DILocation(line: 639, column: 5, scope: !2597)
!2604 = !DILocation(line: 641, column: 9, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2597, file: !184, line: 641, column: 9)
!2606 = !DILocation(line: 641, column: 45, scope: !2605)
!2607 = !DILocation(line: 643, column: 14, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2605, file: !184, line: 641, column: 80)
!2609 = !DILocation(line: 644, column: 5, scope: !2608)
!2610 = !DILocation(line: 646, column: 14, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !184, line: 644, column: 50)
!2612 = distinct !DILexicalBlock(scope: !2605, file: !184, line: 644, column: 16)
!2613 = !DILocation(line: 647, column: 5, scope: !2611)
!2614 = !DILocation(line: 649, column: 14, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2616, file: !184, line: 647, column: 52)
!2616 = distinct !DILexicalBlock(scope: !2612, file: !184, line: 647, column: 16)
!2617 = !DILocation(line: 650, column: 5, scope: !2615)
!2618 = !DILocation(line: 652, column: 16, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2620, file: !184, line: 650, column: 54)
!2620 = distinct !DILexicalBlock(scope: !2616, file: !184, line: 650, column: 16)
!2621 = !DILocation(line: 652, column: 14, scope: !2619)
!2622 = !DILocation(line: 653, column: 5, scope: !2619)
!2623 = !DILocation(line: 655, column: 9, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2620, file: !184, line: 654, column: 10)
!2625 = !DILocation(line: 656, column: 14, scope: !2624)
!2626 = !DILocation(line: 659, column: 14, scope: !2597)
!2627 = !DILocation(line: 660, column: 16, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2597, file: !184, line: 660, column: 9)
!2629 = !DILocation(line: 665, column: 1, scope: !2597)
!2630 = distinct !DISubprogram(name: "flash_unprotect", scope: !184, file: !184, line: 667, type: !1753, scopeLine: 668, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !2631)
!2631 = !{!2632}
!2632 = !DILocalVariable(name: "sr", scope: !2630, file: !184, line: 669, type: !58)
!2633 = !DILocation(line: 669, column: 5, scope: !2630)
!2634 = !DILocation(line: 0, scope: !2630)
!2635 = !DILocation(line: 669, column: 19, scope: !2630)
!2636 = !DILocation(line: 671, column: 9, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2630, file: !184, line: 671, column: 9)
!2638 = !DILocation(line: 671, column: 28, scope: !2637)
!2639 = !DILocation(line: 671, column: 9, scope: !2630)
!2640 = !DILocation(line: 676, column: 10, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2630, file: !184, line: 676, column: 9)
!2642 = !DILocation(line: 676, column: 13, scope: !2641)
!2643 = !DILocation(line: 676, column: 43, scope: !2641)
!2644 = !DILocation(line: 676, column: 9, scope: !2630)
!2645 = !DILocation(line: 677, column: 12, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2641, file: !184, line: 676, column: 49)
!2647 = !DILocation(line: 678, column: 9, scope: !2646)
!2648 = !DILocation(line: 679, column: 5, scope: !2646)
!2649 = !DILocation(line: 681, column: 1, scope: !2630)
!2650 = distinct !DISubprogram(name: "flash_write_sr", scope: !184, file: !184, line: 609, type: !2479, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !2651)
!2651 = !{!2652, !2653, !2654}
!2652 = !DILocalVariable(name: "val", arg: 1, scope: !2650, file: !184, line: 609, type: !177)
!2653 = !DILocalVariable(name: "retval", scope: !2650, file: !184, line: 611, type: !7)
!2654 = !DILocalVariable(name: "code", scope: !2650, file: !184, line: 612, type: !58)
!2655 = !DILocation(line: 0, scope: !2650)
!2656 = !DILocation(line: 612, column: 5, scope: !2650)
!2657 = !DILocation(line: 612, column: 20, scope: !2650)
!2658 = !DILocation(line: 614, column: 14, scope: !2650)
!2659 = !DILocation(line: 621, column: 1, scope: !2650)
!2660 = distinct !DISubprogram(name: "flash_protect", scope: !184, file: !184, line: 686, type: !1753, scopeLine: 687, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !2661)
!2661 = !{!2662}
!2662 = !DILocalVariable(name: "sr", scope: !2660, file: !184, line: 688, type: !58)
!2663 = !DILocation(line: 688, column: 5, scope: !2660)
!2664 = !DILocation(line: 0, scope: !2660)
!2665 = !DILocation(line: 688, column: 19, scope: !2660)
!2666 = !DILocation(line: 690, column: 9, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2660, file: !184, line: 690, column: 9)
!2668 = !DILocation(line: 690, column: 28, scope: !2667)
!2669 = !DILocation(line: 690, column: 9, scope: !2660)
!2670 = !DILocation(line: 695, column: 8, scope: !2660)
!2671 = !DILocation(line: 696, column: 5, scope: !2660)
!2672 = !DILocation(line: 697, column: 5, scope: !2660)
!2673 = !DILocation(line: 698, column: 1, scope: !2660)
!2674 = distinct !DISubprogram(name: "flash_write_enable", scope: !184, file: !184, line: 701, type: !1753, scopeLine: 702, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !2675)
!2675 = !{!2676}
!2676 = !DILocalVariable(name: "code", scope: !2674, file: !184, line: 703, type: !58)
!2677 = !DILocation(line: 703, column: 5, scope: !2674)
!2678 = !DILocation(line: 0, scope: !2674)
!2679 = !DILocation(line: 703, column: 19, scope: !2674)
!2680 = !DILocation(line: 704, column: 12, scope: !2674)
!2681 = !DILocation(line: 705, column: 1, scope: !2674)
!2682 = !DILocation(line: 704, column: 5, scope: !2674)
!2683 = distinct !DISubprogram(name: "flash_write_disable", scope: !184, file: !184, line: 707, type: !1753, scopeLine: 708, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !2684)
!2684 = !{!2685}
!2685 = !DILocalVariable(name: "code", scope: !2683, file: !184, line: 709, type: !58)
!2686 = !DILocation(line: 709, column: 5, scope: !2683)
!2687 = !DILocation(line: 0, scope: !2683)
!2688 = !DILocation(line: 709, column: 19, scope: !2683)
!2689 = !DILocation(line: 710, column: 12, scope: !2683)
!2690 = !DILocation(line: 711, column: 1, scope: !2683)
!2691 = !DILocation(line: 710, column: 5, scope: !2683)
!2692 = distinct !DISubprogram(name: "flash_erase_sector", scope: !184, file: !184, line: 713, type: !2693, scopeLine: 714, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !2695)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!7, !30}
!2695 = !{!2696, !2697, !2698, !2699}
!2696 = !DILocalVariable(name: "offset", arg: 1, scope: !2692, file: !184, line: 713, type: !30)
!2697 = !DILocalVariable(name: "buf", scope: !2692, file: !184, line: 715, type: !2111)
!2698 = !DILocalVariable(name: "savedMask", scope: !2692, file: !184, line: 716, type: !61)
!2699 = !DILocalVariable(name: "result", scope: !2692, file: !184, line: 717, type: !490)
!2700 = !DILocation(line: 0, scope: !2692)
!2701 = !DILocation(line: 715, column: 5, scope: !2692)
!2702 = !DILocation(line: 715, column: 19, scope: !2692)
!2703 = !DILocation(line: 720, column: 9, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2692, file: !184, line: 720, column: 9)
!2705 = !DILocation(line: 724, column: 22, scope: !2692)
!2706 = !DILocation(line: 725, column: 5, scope: !2692)
!2707 = !DILocation(line: 726, column: 18, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2692, file: !184, line: 725, column: 8)
!2709 = !DILocation(line: 727, column: 19, scope: !2692)
!2710 = !DILocation(line: 727, column: 5, scope: !2708)
!2711 = distinct !{!2711, !2706, !2712}
!2712 = !DILocation(line: 727, column: 28, scope: !2692)
!2713 = !DILocation(line: 729, column: 17, scope: !2692)
!2714 = !DILocation(line: 732, column: 12, scope: !2692)
!2715 = !DILocation(line: 733, column: 21, scope: !2692)
!2716 = !DILocation(line: 733, column: 14, scope: !2692)
!2717 = !DILocation(line: 733, column: 5, scope: !2692)
!2718 = !DILocation(line: 733, column: 12, scope: !2692)
!2719 = !DILocation(line: 734, column: 21, scope: !2692)
!2720 = !DILocation(line: 734, column: 14, scope: !2692)
!2721 = !DILocation(line: 734, column: 5, scope: !2692)
!2722 = !DILocation(line: 734, column: 12, scope: !2692)
!2723 = !DILocation(line: 735, column: 14, scope: !2692)
!2724 = !DILocation(line: 735, column: 5, scope: !2692)
!2725 = !DILocation(line: 735, column: 12, scope: !2692)
!2726 = !DILocation(line: 736, column: 5, scope: !2692)
!2727 = !DILocation(line: 737, column: 5, scope: !2692)
!2728 = !DILocation(line: 738, column: 5, scope: !2692)
!2729 = !DILocation(line: 740, column: 5, scope: !2692)
!2730 = !DILocation(line: 741, column: 18, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2692, file: !184, line: 740, column: 8)
!2732 = !DILocation(line: 742, column: 19, scope: !2692)
!2733 = !DILocation(line: 742, column: 5, scope: !2731)
!2734 = distinct !{!2734, !2729, !2735}
!2735 = !DILocation(line: 742, column: 28, scope: !2692)
!2736 = !DILocation(line: 744, column: 5, scope: !2692)
!2737 = !DILocation(line: 746, column: 1, scope: !2692)
!2738 = distinct !DISubprogram(name: "flash_erase_sector_32k", scope: !184, file: !184, line: 748, type: !2693, scopeLine: 749, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !2739)
!2739 = !{!2740, !2741, !2742, !2743}
!2740 = !DILocalVariable(name: "offset", arg: 1, scope: !2738, file: !184, line: 748, type: !30)
!2741 = !DILocalVariable(name: "buf", scope: !2738, file: !184, line: 750, type: !2111)
!2742 = !DILocalVariable(name: "savedMask", scope: !2738, file: !184, line: 751, type: !61)
!2743 = !DILocalVariable(name: "result", scope: !2738, file: !184, line: 752, type: !490)
!2744 = !DILocation(line: 0, scope: !2738)
!2745 = !DILocation(line: 750, column: 5, scope: !2738)
!2746 = !DILocation(line: 750, column: 19, scope: !2738)
!2747 = !DILocation(line: 755, column: 9, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2738, file: !184, line: 755, column: 9)
!2749 = !DILocation(line: 759, column: 22, scope: !2738)
!2750 = !DILocation(line: 760, column: 5, scope: !2738)
!2751 = !DILocation(line: 761, column: 18, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2738, file: !184, line: 760, column: 8)
!2753 = !DILocation(line: 762, column: 19, scope: !2738)
!2754 = !DILocation(line: 762, column: 5, scope: !2752)
!2755 = distinct !{!2755, !2750, !2756}
!2756 = !DILocation(line: 762, column: 28, scope: !2738)
!2757 = !DILocation(line: 764, column: 17, scope: !2738)
!2758 = !DILocation(line: 765, column: 12, scope: !2738)
!2759 = !DILocation(line: 766, column: 21, scope: !2738)
!2760 = !DILocation(line: 766, column: 14, scope: !2738)
!2761 = !DILocation(line: 766, column: 5, scope: !2738)
!2762 = !DILocation(line: 766, column: 12, scope: !2738)
!2763 = !DILocation(line: 767, column: 21, scope: !2738)
!2764 = !DILocation(line: 767, column: 14, scope: !2738)
!2765 = !DILocation(line: 767, column: 5, scope: !2738)
!2766 = !DILocation(line: 767, column: 12, scope: !2738)
!2767 = !DILocation(line: 768, column: 14, scope: !2738)
!2768 = !DILocation(line: 768, column: 5, scope: !2738)
!2769 = !DILocation(line: 768, column: 12, scope: !2738)
!2770 = !DILocation(line: 769, column: 5, scope: !2738)
!2771 = !DILocation(line: 770, column: 5, scope: !2738)
!2772 = !DILocation(line: 771, column: 5, scope: !2738)
!2773 = !DILocation(line: 772, column: 18, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2738, file: !184, line: 771, column: 8)
!2775 = !DILocation(line: 773, column: 19, scope: !2738)
!2776 = !DILocation(line: 773, column: 5, scope: !2774)
!2777 = distinct !{!2777, !2772, !2778}
!2778 = !DILocation(line: 773, column: 28, scope: !2738)
!2779 = !DILocation(line: 775, column: 5, scope: !2738)
!2780 = !DILocation(line: 777, column: 5, scope: !2738)
!2781 = !DILocation(line: 779, column: 1, scope: !2738)
!2782 = distinct !DISubprogram(name: "flash_erase_page", scope: !184, file: !184, line: 781, type: !2693, scopeLine: 782, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !2783)
!2783 = !{!2784, !2785, !2786, !2787}
!2784 = !DILocalVariable(name: "offset", arg: 1, scope: !2782, file: !184, line: 781, type: !30)
!2785 = !DILocalVariable(name: "buf", scope: !2782, file: !184, line: 783, type: !2111)
!2786 = !DILocalVariable(name: "savedMask", scope: !2782, file: !184, line: 784, type: !61)
!2787 = !DILocalVariable(name: "result", scope: !2782, file: !184, line: 785, type: !490)
!2788 = !DILocation(line: 0, scope: !2782)
!2789 = !DILocation(line: 783, column: 5, scope: !2782)
!2790 = !DILocation(line: 783, column: 19, scope: !2782)
!2791 = !DILocation(line: 788, column: 9, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2782, file: !184, line: 788, column: 9)
!2793 = !DILocation(line: 792, column: 22, scope: !2782)
!2794 = !DILocation(line: 793, column: 5, scope: !2782)
!2795 = !DILocation(line: 794, column: 18, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2782, file: !184, line: 793, column: 8)
!2797 = !DILocation(line: 795, column: 19, scope: !2782)
!2798 = !DILocation(line: 795, column: 5, scope: !2796)
!2799 = distinct !{!2799, !2794, !2800}
!2800 = !DILocation(line: 795, column: 28, scope: !2782)
!2801 = !DILocation(line: 798, column: 17, scope: !2782)
!2802 = !DILocation(line: 799, column: 12, scope: !2782)
!2803 = !DILocation(line: 800, column: 21, scope: !2782)
!2804 = !DILocation(line: 800, column: 14, scope: !2782)
!2805 = !DILocation(line: 800, column: 5, scope: !2782)
!2806 = !DILocation(line: 800, column: 12, scope: !2782)
!2807 = !DILocation(line: 801, column: 21, scope: !2782)
!2808 = !DILocation(line: 801, column: 14, scope: !2782)
!2809 = !DILocation(line: 801, column: 5, scope: !2782)
!2810 = !DILocation(line: 801, column: 12, scope: !2782)
!2811 = !DILocation(line: 802, column: 14, scope: !2782)
!2812 = !DILocation(line: 802, column: 5, scope: !2782)
!2813 = !DILocation(line: 802, column: 12, scope: !2782)
!2814 = !DILocation(line: 803, column: 5, scope: !2782)
!2815 = !DILocation(line: 805, column: 5, scope: !2782)
!2816 = !DILocation(line: 806, column: 5, scope: !2782)
!2817 = !DILocation(line: 808, column: 5, scope: !2782)
!2818 = !DILocation(line: 809, column: 18, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2782, file: !184, line: 808, column: 8)
!2820 = !DILocation(line: 810, column: 19, scope: !2782)
!2821 = !DILocation(line: 810, column: 5, scope: !2819)
!2822 = distinct !{!2822, !2817, !2823}
!2823 = !DILocation(line: 810, column: 28, scope: !2782)
!2824 = !DILocation(line: 812, column: 5, scope: !2782)
!2825 = !DILocation(line: 814, column: 1, scope: !2782)
!2826 = distinct !DISubprogram(name: "flash_erase_chip", scope: !184, file: !184, line: 816, type: !1753, scopeLine: 817, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !2827)
!2827 = !{!2828}
!2828 = !DILocalVariable(name: "buf", scope: !2826, file: !184, line: 818, type: !2111)
!2829 = !DILocation(line: 818, column: 5, scope: !2826)
!2830 = !DILocation(line: 818, column: 19, scope: !2826)
!2831 = !DILocation(line: 821, column: 9, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2826, file: !184, line: 821, column: 9)
!2833 = !DILocation(line: 825, column: 22, scope: !2826)
!2834 = !DILocation(line: 827, column: 5, scope: !2826)
!2835 = !DILocation(line: 828, column: 5, scope: !2826)
!2836 = !DILocation(line: 830, column: 12, scope: !2826)
!2837 = !DILocation(line: 832, column: 5, scope: !2826)
!2838 = !DILocation(line: 834, column: 9, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2826, file: !184, line: 834, column: 9)
!2840 = !DILocation(line: 838, column: 5, scope: !2826)
!2841 = !DILocation(line: 839, column: 22, scope: !2826)
!2842 = !DILocation(line: 841, column: 1, scope: !2826)
!2843 = distinct !DISubprogram(name: "flash_erase", scope: !184, file: !184, line: 844, type: !2844, scopeLine: 845, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !2846)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!7, !30, !7}
!2846 = !{!2847, !2848}
!2847 = !DILocalVariable(name: "offs", arg: 1, scope: !2843, file: !184, line: 844, type: !30)
!2848 = !DILocalVariable(name: "len", arg: 2, scope: !2843, file: !184, line: 844, type: !7)
!2849 = !DILocation(line: 0, scope: !2843)
!2850 = !DILocation(line: 849, column: 9, scope: !2843)
!2851 = !DILocation(line: 855, column: 13, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2853, file: !184, line: 855, column: 13)
!2853 = distinct !DILexicalBlock(scope: !2843, file: !184, line: 854, column: 21)
!2854 = !DILocation(line: 859, column: 17, scope: !2853)
!2855 = !DILocation(line: 859, column: 32, scope: !2853)
!2856 = !DILocation(line: 859, column: 14, scope: !2853)
!2857 = !DILocation(line: 860, column: 13, scope: !2853)
!2858 = !DILocation(line: 854, column: 16, scope: !2843)
!2859 = !DILocation(line: 854, column: 5, scope: !2843)
!2860 = distinct !{!2860, !2859, !2861}
!2861 = !DILocation(line: 861, column: 5, scope: !2843)
!2862 = !DILocation(line: 864, column: 1, scope: !2843)
!2863 = distinct !DISubprogram(name: "flash_write", scope: !184, file: !184, line: 868, type: !2864, scopeLine: 869, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !2866)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!7, !193, !30, !7}
!2866 = !{!2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880}
!2867 = !DILocalVariable(name: "buf", arg: 1, scope: !2863, file: !184, line: 868, type: !193)
!2868 = !DILocalVariable(name: "to", arg: 2, scope: !2863, file: !184, line: 868, type: !30)
!2869 = !DILocalVariable(name: "len", arg: 3, scope: !2863, file: !184, line: 868, type: !7)
!2870 = !DILocalVariable(name: "page_offset", scope: !2863, file: !184, line: 870, type: !195)
!2871 = !DILocalVariable(name: "page_size", scope: !2863, file: !184, line: 870, type: !195)
!2872 = !DILocalVariable(name: "rc", scope: !2863, file: !184, line: 871, type: !7)
!2873 = !DILocalVariable(name: "retlen", scope: !2863, file: !184, line: 871, type: !7)
!2874 = !DILocalVariable(name: "mode", scope: !2863, file: !184, line: 872, type: !7)
!2875 = !DILocalVariable(name: "cmd", scope: !2863, file: !184, line: 873, type: !2111)
!2876 = !DILocalVariable(name: "result", scope: !2863, file: !184, line: 874, type: !490)
!2877 = !DILocalVariable(name: "savedMask", scope: !2863, file: !184, line: 875, type: !61)
!2878 = !DILocalVariable(name: "To", scope: !2863, file: !184, line: 877, type: !61)
!2879 = !DILocalVariable(name: "Buf", scope: !2863, file: !184, line: 878, type: !1255)
!2880 = !DILocalVariable(name: "p_data_first", scope: !2863, file: !184, line: 879, type: !1255)
!2881 = !DILocation(line: 0, scope: !2863)
!2882 = !DILocation(line: 873, column: 5, scope: !2863)
!2883 = !DILocation(line: 873, column: 19, scope: !2863)
!2884 = !DILocation(line: 882, column: 13, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2863, file: !184, line: 882, column: 9)
!2886 = !DILocation(line: 882, column: 9, scope: !2863)
!2887 = !DILocation(line: 886, column: 12, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2863, file: !184, line: 886, column: 9)
!2889 = !DILocation(line: 886, column: 20, scope: !2888)
!2890 = !DILocation(line: 886, column: 35, scope: !2888)
!2891 = !DILocation(line: 886, column: 62, scope: !2888)
!2892 = !DILocation(line: 886, column: 45, scope: !2888)
!2893 = !DILocation(line: 886, column: 18, scope: !2888)
!2894 = !DILocation(line: 886, column: 9, scope: !2863)
!2895 = !DILocation(line: 891, column: 9, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2863, file: !184, line: 891, column: 9)
!2897 = !DILocation(line: 896, column: 18, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2863, file: !184, line: 895, column: 8)
!2899 = !DILocation(line: 897, column: 19, scope: !2863)
!2900 = !DILocation(line: 897, column: 5, scope: !2898)
!2901 = distinct !{!2901, !2902, !2903}
!2902 = !DILocation(line: 895, column: 5, scope: !2863)
!2903 = !DILocation(line: 897, column: 28, scope: !2863)
!2904 = !DILocation(line: 899, column: 22, scope: !2863)
!2905 = !DILocation(line: 901, column: 12, scope: !2863)
!2906 = !DILocation(line: 903, column: 15, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2863, file: !184, line: 903, column: 9)
!2908 = !DILocation(line: 903, column: 24, scope: !2907)
!2909 = !DILocation(line: 903, column: 27, scope: !2907)
!2910 = !DILocation(line: 903, column: 43, scope: !2907)
!2911 = !DILocation(line: 903, column: 9, scope: !2863)
!2912 = !DILocation(line: 0, scope: !2907)
!2913 = !DILocation(line: 913, column: 16, scope: !2863)
!2914 = !DILocation(line: 913, column: 5, scope: !2863)
!2915 = !DILocation(line: 910, column: 24, scope: !2863)
!2916 = !DILocation(line: 910, column: 22, scope: !2863)
!2917 = !DILocation(line: 952, column: 5, scope: !2863)
!2918 = !DILocation(line: 914, column: 21, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2863, file: !184, line: 913, column: 21)
!2920 = !DILocation(line: 919, column: 21, scope: !2919)
!2921 = !DILocation(line: 919, column: 18, scope: !2919)
!2922 = !DILocation(line: 919, column: 16, scope: !2919)
!2923 = !DILocation(line: 920, column: 21, scope: !2919)
!2924 = !DILocation(line: 920, column: 18, scope: !2919)
!2925 = !DILocation(line: 920, column: 16, scope: !2919)
!2926 = !DILocation(line: 921, column: 18, scope: !2919)
!2927 = !DILocation(line: 921, column: 16, scope: !2919)
!2928 = !DILocation(line: 923, column: 13, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2919, file: !184, line: 923, column: 13)
!2930 = !DILocation(line: 927, column: 9, scope: !2919)
!2931 = !DILocation(line: 928, column: 21, scope: !2919)
!2932 = !DILocation(line: 929, column: 9, scope: !2919)
!2933 = !DILocation(line: 930, column: 14, scope: !2919)
!2934 = !DILocation(line: 931, column: 9, scope: !2919)
!2935 = !DILocation(line: 933, column: 9, scope: !2919)
!2936 = !DILocation(line: 934, column: 86, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2919, file: !184, line: 933, column: 12)
!2938 = !DILocation(line: 934, column: 22, scope: !2937)
!2939 = !DILocation(line: 935, column: 20, scope: !2919)
!2940 = !DILocation(line: 935, column: 9, scope: !2937)
!2941 = distinct !{!2941, !2935, !2942}
!2942 = !DILocation(line: 935, column: 29, scope: !2919)
!2943 = !DILocation(line: 937, column: 16, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2919, file: !184, line: 937, column: 13)
!2945 = !DILocation(line: 937, column: 13, scope: !2919)
!2946 = !DILocation(line: 938, column: 20, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2944, file: !184, line: 937, column: 21)
!2948 = !DILocation(line: 939, column: 20, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2947, file: !184, line: 939, column: 17)
!2950 = !DILocation(line: 939, column: 17, scope: !2947)
!2951 = !DILocation(line: 941, column: 17, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2949, file: !184, line: 939, column: 33)
!2953 = !DILocation(line: 942, column: 17, scope: !2952)
!2954 = !DILocation(line: 947, column: 13, scope: !2919)
!2955 = distinct !{!2955, !2914, !2956}
!2956 = !DILocation(line: 950, column: 5, scope: !2863)
!2957 = !DILocation(line: 949, column: 13, scope: !2919)
!2958 = !DILocation(line: 948, column: 12, scope: !2919)
!2959 = !DILocation(line: 953, column: 18, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2863, file: !184, line: 952, column: 8)
!2961 = !DILocation(line: 954, column: 19, scope: !2863)
!2962 = !DILocation(line: 954, column: 5, scope: !2960)
!2963 = distinct !{!2963, !2917, !2964}
!2964 = !DILocation(line: 954, column: 28, scope: !2863)
!2965 = !DILocation(line: 956, column: 5, scope: !2863)
!2966 = !DILocation(line: 957, column: 5, scope: !2863)
!2967 = !DILocation(line: 958, column: 1, scope: !2863)
!2968 = distinct !DISubprogram(name: "flash_erase_write_security_crc", scope: !184, file: !184, line: 963, type: !2693, scopeLine: 964, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !2969)
!2969 = !{!2970, !2971, !2972, !2973}
!2970 = !DILocalVariable(name: "to", arg: 1, scope: !2968, file: !184, line: 963, type: !30)
!2971 = !DILocalVariable(name: "len", scope: !2968, file: !184, line: 965, type: !7)
!2972 = !DILocalVariable(name: "rc", scope: !2968, file: !184, line: 965, type: !7)
!2973 = !DILocalVariable(name: "cmd", scope: !2968, file: !184, line: 966, type: !2111)
!2974 = !DILocation(line: 0, scope: !2968)
!2975 = !DILocation(line: 966, column: 5, scope: !2968)
!2976 = !DILocation(line: 966, column: 19, scope: !2968)
!2977 = !DILocation(line: 968, column: 12, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2968, file: !184, line: 968, column: 9)
!2979 = !DILocation(line: 968, column: 9, scope: !2968)
!2980 = !DILocation(line: 972, column: 12, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2968, file: !184, line: 972, column: 9)
!2982 = !DILocation(line: 972, column: 20, scope: !2981)
!2983 = !DILocation(line: 972, column: 35, scope: !2981)
!2984 = !DILocation(line: 972, column: 62, scope: !2981)
!2985 = !DILocation(line: 972, column: 45, scope: !2981)
!2986 = !DILocation(line: 972, column: 18, scope: !2981)
!2987 = !DILocation(line: 972, column: 9, scope: !2968)
!2988 = !DILocation(line: 976, column: 22, scope: !2968)
!2989 = !DILocation(line: 979, column: 9, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2968, file: !184, line: 979, column: 9)
!2991 = !DILocation(line: 983, column: 5, scope: !2968)
!2992 = !DILocation(line: 985, column: 12, scope: !2968)
!2993 = !DILocation(line: 986, column: 17, scope: !2968)
!2994 = !DILocation(line: 986, column: 14, scope: !2968)
!2995 = !DILocation(line: 986, column: 5, scope: !2968)
!2996 = !DILocation(line: 986, column: 12, scope: !2968)
!2997 = !DILocation(line: 987, column: 17, scope: !2968)
!2998 = !DILocation(line: 987, column: 14, scope: !2968)
!2999 = !DILocation(line: 987, column: 5, scope: !2968)
!3000 = !DILocation(line: 987, column: 12, scope: !2968)
!3001 = !DILocation(line: 988, column: 14, scope: !2968)
!3002 = !DILocation(line: 988, column: 5, scope: !2968)
!3003 = !DILocation(line: 988, column: 12, scope: !2968)
!3004 = !DILocation(line: 990, column: 5, scope: !2968)
!3005 = !DILocation(line: 991, column: 5, scope: !2968)
!3006 = !DILocation(line: 993, column: 10, scope: !2968)
!3007 = !DILocation(line: 994, column: 22, scope: !2968)
!3008 = !DILocation(line: 995, column: 5, scope: !2968)
!3009 = !DILocation(line: 996, column: 1, scope: !2968)
!3010 = distinct !DISubprogram(name: "flash_erase_write", scope: !184, file: !184, line: 998, type: !2864, scopeLine: 999, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !3011)
!3011 = !{!3012, !3013, !3014, !3015, !3019, !3020, !3021, !3025, !3026, !3027}
!3012 = !DILocalVariable(name: "buf", arg: 1, scope: !3010, file: !184, line: 998, type: !193)
!3013 = !DILocalVariable(name: "offs", arg: 2, scope: !3010, file: !184, line: 998, type: !30)
!3014 = !DILocalVariable(name: "count", arg: 3, scope: !3010, file: !184, line: 998, type: !7)
!3015 = !DILocalVariable(name: "block", scope: !3010, file: !184, line: 1000, type: !3016)
!3016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 32768, elements: !3017)
!3017 = !{!3018}
!3018 = !DISubrange(count: 4096)
!3019 = !DILocalVariable(name: "blocksize", scope: !3010, file: !184, line: 1002, type: !7)
!3020 = !DILocalVariable(name: "blockmask", scope: !3010, file: !184, line: 1003, type: !7)
!3021 = !DILocalVariable(name: "piece", scope: !3022, file: !184, line: 1008, type: !30)
!3022 = distinct !DILexicalBlock(scope: !3023, file: !184, line: 1007, column: 56)
!3023 = distinct !DILexicalBlock(scope: !3024, file: !184, line: 1007, column: 13)
!3024 = distinct !DILexicalBlock(scope: !3010, file: !184, line: 1005, column: 23)
!3025 = !DILocalVariable(name: "blockaddr", scope: !3022, file: !184, line: 1008, type: !30)
!3026 = !DILocalVariable(name: "piece_size", scope: !3022, file: !184, line: 1009, type: !7)
!3027 = !DILocalVariable(name: "aligned_size", scope: !3028, file: !184, line: 1034, type: !30)
!3028 = distinct !DILexicalBlock(scope: !3023, file: !184, line: 1033, column: 16)
!3029 = !DILocation(line: 0, scope: !3010)
!3030 = !DILocation(line: 1000, column: 5, scope: !3010)
!3031 = !DILocation(line: 1000, column: 19, scope: !3010)
!3032 = !DILocation(line: 1005, column: 18, scope: !3010)
!3033 = !DILocation(line: 1005, column: 5, scope: !3010)
!3034 = !DILocation(line: 1007, column: 13, scope: !3023)
!3035 = !DILocation(line: 1007, column: 32, scope: !3023)
!3036 = !DILocation(line: 1011, column: 30, scope: !3022)
!3037 = !DILocation(line: 0, scope: !3022)
!3038 = !DILocation(line: 1013, column: 17, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3022, file: !184, line: 1013, column: 17)
!3040 = !DILocation(line: 1013, column: 72, scope: !3039)
!3041 = !DILocation(line: 1013, column: 17, scope: !3022)
!3042 = !DILocation(line: 1017, column: 30, scope: !3022)
!3043 = !DILocation(line: 1019, column: 26, scope: !3022)
!3044 = !DILocation(line: 1020, column: 26, scope: !3022)
!3045 = !DILocation(line: 1020, column: 13, scope: !3022)
!3046 = !DILocation(line: 1022, column: 17, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3022, file: !184, line: 1022, column: 17)
!3048 = !DILocation(line: 1026, column: 17, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3022, file: !184, line: 1026, column: 17)
!3050 = !DILocation(line: 1026, column: 58, scope: !3049)
!3051 = !DILocation(line: 1026, column: 17, scope: !3022)
!3052 = !DILocation(line: 1032, column: 19, scope: !3022)
!3053 = !DILocation(line: 1034, column: 47, scope: !3028)
!3054 = !DILocation(line: 0, scope: !3028)
!3055 = !DILocation(line: 1036, column: 17, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3028, file: !184, line: 1036, column: 17)
!3057 = !DILocation(line: 1040, column: 17, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3028, file: !184, line: 1040, column: 17)
!3059 = !DILocation(line: 1040, column: 54, scope: !3058)
!3060 = !DILocation(line: 1040, column: 17, scope: !3028)
!3061 = !DILocation(line: 1047, column: 19, scope: !3028)
!3062 = !DILocation(line: 0, scope: !3023)
!3063 = distinct !{!3063, !3033, !3064}
!3064 = !DILocation(line: 1049, column: 5, scope: !3010)
!3065 = !DILocation(line: 1052, column: 1, scope: !3010)
!3066 = distinct !DISubprogram(name: "query_spi_flash_status", scope: !184, file: !184, line: 1055, type: !3067, scopeLine: 1056, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !183, retainedNodes: !1113)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!3069}
!3069 = !DIDerivedType(tag: DW_TAG_typedef, name: "FLASH_DRV_STATE", file: !6, line: 71, baseType: !186)
!3070 = !DILocation(line: 1057, column: 9, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3066, file: !184, line: 1057, column: 9)
!3072 = !DILocation(line: 1057, column: 9, scope: !3066)
!3073 = !DILocation(line: 1062, column: 9, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3075, file: !184, line: 1061, column: 43)
!3075 = distinct !DILexicalBlock(scope: !3066, file: !184, line: 1061, column: 9)
!3076 = !DILocation(line: 1065, column: 48, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3066, file: !184, line: 1065, column: 9)
!3078 = !DILocation(line: 0, scope: !3077)
!3079 = !DILocation(line: 0, scope: !3066)
!3080 = !DILocation(line: 1072, column: 1, scope: !3066)
!3081 = distinct !DISubprogram(name: "get_current_count", scope: !1073, file: !1073, line: 56, type: !1094, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1072, retainedNodes: !1113)
!3082 = !DILocation(line: 58, column: 12, scope: !3081)
!3083 = !DILocation(line: 58, column: 5, scope: !3081)
!3084 = distinct !DISubprogram(name: "delay_time", scope: !1073, file: !1073, line: 62, type: !1519, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1072, retainedNodes: !3085)
!3085 = !{!3086, !3087, !3088}
!3086 = !DILocalVariable(name: "count", arg: 1, scope: !3084, file: !1073, line: 62, type: !139)
!3087 = !DILocalVariable(name: "end_count", scope: !3084, file: !1073, line: 64, type: !139)
!3088 = !DILocalVariable(name: "current", scope: !3084, file: !1073, line: 64, type: !139)
!3089 = !DILocation(line: 0, scope: !3084)
!3090 = !DILocation(line: 66, column: 17, scope: !3084)
!3091 = !DILocation(line: 66, column: 37, scope: !3084)
!3092 = !DILocation(line: 66, column: 45, scope: !3084)
!3093 = !DILocation(line: 67, column: 15, scope: !3084)
!3094 = !DILocation(line: 68, column: 12, scope: !3084)
!3095 = !DILocation(line: 68, column: 5, scope: !3084)
!3096 = !DILocation(line: 69, column: 19, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3084, file: !1073, line: 68, column: 45)
!3098 = distinct !{!3098, !3095, !3099}
!3099 = !DILocation(line: 70, column: 5, scope: !3084)
!3100 = !DILocation(line: 72, column: 1, scope: !3084)
!3101 = distinct !DISubprogram(name: "delay_time_for_gpt4", scope: !1073, file: !1073, line: 75, type: !1519, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1072, retainedNodes: !3102)
!3102 = !{!3103, !3104, !3105}
!3103 = !DILocalVariable(name: "count", arg: 1, scope: !3101, file: !1073, line: 75, type: !139)
!3104 = !DILocalVariable(name: "end_count", scope: !3101, file: !1073, line: 77, type: !139)
!3105 = !DILocalVariable(name: "current", scope: !3101, file: !1073, line: 77, type: !139)
!3106 = !DILocation(line: 0, scope: !3101)
!3107 = !DILocation(line: 79, column: 17, scope: !3101)
!3108 = !DILocation(line: 79, column: 42, scope: !3101)
!3109 = !DILocation(line: 79, column: 50, scope: !3101)
!3110 = !DILocation(line: 80, column: 15, scope: !3101)
!3111 = !DILocation(line: 81, column: 12, scope: !3101)
!3112 = !DILocation(line: 81, column: 5, scope: !3101)
!3113 = !DILocation(line: 82, column: 19, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3101, file: !1073, line: 81, column: 45)
!3115 = distinct !{!3115, !3112, !3116}
!3116 = !DILocation(line: 83, column: 5, scope: !3101)
!3117 = !DILocation(line: 85, column: 1, scope: !3101)
!3118 = distinct !DISubprogram(name: "get_current_gpt4_count", scope: !1073, file: !1073, line: 95, type: !1094, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1072, retainedNodes: !1113)
!3119 = !DILocation(line: 97, column: 13, scope: !3118)
!3120 = !DILocation(line: 97, column: 5, scope: !3118)
!3121 = distinct !DISubprogram(name: "delay_ms", scope: !1073, file: !1073, line: 107, type: !1667, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1072, retainedNodes: !3122)
!3122 = !{!3123, !3124}
!3123 = !DILocalVariable(name: "ms", arg: 1, scope: !3121, file: !1073, line: 107, type: !61)
!3124 = !DILocalVariable(name: "count", scope: !3121, file: !1073, line: 109, type: !61)
!3125 = !DILocation(line: 0, scope: !3121)
!3126 = !DILocation(line: 111, column: 17, scope: !3121)
!3127 = !DILocation(line: 112, column: 17, scope: !3121)
!3128 = !DILocation(line: 112, column: 23, scope: !3121)
!3129 = !DILocation(line: 112, column: 11, scope: !3121)
!3130 = !DILocation(line: 113, column: 17, scope: !3121)
!3131 = !DILocation(line: 113, column: 23, scope: !3121)
!3132 = !DILocation(line: 113, column: 11, scope: !3121)
!3133 = !DILocation(line: 114, column: 17, scope: !3121)
!3134 = !DILocation(line: 114, column: 23, scope: !3121)
!3135 = !DILocation(line: 114, column: 11, scope: !3121)
!3136 = !DILocation(line: 115, column: 5, scope: !3121)
!3137 = !DILocation(line: 116, column: 1, scope: !3121)
!3138 = distinct !DISubprogram(name: "delay_us", scope: !1073, file: !1073, line: 120, type: !1667, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1072, retainedNodes: !3139)
!3139 = !{!3140, !3141, !3142}
!3140 = !DILocalVariable(name: "us", arg: 1, scope: !3138, file: !1073, line: 120, type: !61)
!3141 = !DILocalVariable(name: "count", scope: !3138, file: !1073, line: 122, type: !61)
!3142 = !DILocalVariable(name: "ticks_per_us", scope: !3138, file: !1073, line: 123, type: !61)
!3143 = !DILocation(line: 0, scope: !3138)
!3144 = !DILocation(line: 125, column: 20, scope: !3138)
!3145 = !DILocation(line: 125, column: 39, scope: !3138)
!3146 = !DILocation(line: 126, column: 26, scope: !3138)
!3147 = !DILocation(line: 128, column: 5, scope: !3138)
!3148 = !DILocation(line: 129, column: 1, scope: !3138)
!3149 = distinct !DISubprogram(name: "drvTMR_init", scope: !1073, file: !1073, line: 133, type: !3150, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1072, retainedNodes: !3152)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{null, !61, !61, !69, !153}
!3152 = !{!3153, !3154, !3155, !3156}
!3153 = !DILocalVariable(name: "timerNum", arg: 1, scope: !3149, file: !1073, line: 133, type: !61)
!3154 = !DILocalVariable(name: "countValue", arg: 2, scope: !3149, file: !1073, line: 133, type: !61)
!3155 = !DILocalVariable(name: "autoRepeat", arg: 3, scope: !3149, file: !1073, line: 133, type: !69)
!3156 = !DILocalVariable(name: "TMR_Callback", arg: 4, scope: !3149, file: !1073, line: 133, type: !153)
!3157 = !DILocation(line: 0, scope: !3149)
!3158 = !DILocation(line: 136, column: 5, scope: !3149)
!3159 = !DILocation(line: 138, column: 18, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3149, file: !1073, line: 138, column: 9)
!3161 = !DILocation(line: 138, column: 9, scope: !3149)
!3162 = !DILocation(line: 139, column: 30, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3160, file: !1073, line: 138, column: 27)
!3164 = !DILocation(line: 141, column: 5, scope: !3163)
!3165 = !DILocation(line: 142, column: 30, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3160, file: !1073, line: 141, column: 12)
!3167 = !DILocation(line: 0, scope: !3160)
!3168 = !DILocation(line: 146, column: 5, scope: !3149)
!3169 = !DILocation(line: 147, column: 1, scope: !3149)
!3170 = distinct !DISubprogram(name: "TMR_Start", scope: !1073, file: !1073, line: 149, type: !1667, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1072, retainedNodes: !3171)
!3171 = !{!3172}
!3172 = !DILocalVariable(name: "timerNum", arg: 1, scope: !3170, file: !1073, line: 149, type: !61)
!3173 = !DILocation(line: 0, scope: !3170)
!3174 = !DILocation(line: 151, column: 5, scope: !3170)
!3175 = !DILocation(line: 152, column: 1, scope: !3170)
!3176 = distinct !DISubprogram(name: "TMR_Stop", scope: !1073, file: !1073, line: 154, type: !1667, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1072, retainedNodes: !3177)
!3177 = !{!3178}
!3178 = !DILocalVariable(name: "timerNum", arg: 1, scope: !3176, file: !1073, line: 154, type: !61)
!3179 = !DILocation(line: 0, scope: !3176)
!3180 = !DILocation(line: 156, column: 5, scope: !3176)
!3181 = !DILocation(line: 157, column: 1, scope: !3176)
!3182 = distinct !DISubprogram(name: "drvGPT2Init", scope: !1073, file: !1073, line: 160, type: !154, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1072, retainedNodes: !1113)
!3183 = !DILocation(line: 162, column: 5, scope: !3182)
!3184 = !DILocation(line: 163, column: 1, scope: !3182)
!3185 = distinct !DISubprogram(name: "drvGPT4Init", scope: !1073, file: !1073, line: 165, type: !154, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1072, retainedNodes: !1113)
!3186 = !DILocation(line: 167, column: 5, scope: !3185)
!3187 = !DILocation(line: 168, column: 1, scope: !3185)
!3188 = distinct !DISubprogram(name: "clear_TMR_INT_status_bit", scope: !1073, file: !1073, line: 170, type: !1667, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1072, retainedNodes: !3189)
!3189 = !{!3190}
!3190 = !DILocalVariable(name: "timerNum", arg: 1, scope: !3188, file: !1073, line: 170, type: !61)
!3191 = !DILocation(line: 0, scope: !3188)
!3192 = !DILocation(line: 172, column: 9, scope: !3188)
!3193 = !DILocation(line: 177, column: 5, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3195, file: !1073, line: 175, column: 27)
!3195 = distinct !DILexicalBlock(scope: !3188, file: !1073, line: 175, column: 9)
!3196 = !DILocation(line: 178, column: 1, scope: !3188)
!3197 = distinct !DISubprogram(name: "top_xtal_init", scope: !281, file: !281, line: 52, type: !154, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !3198)
!3198 = !{!3199, !3200}
!3199 = !DILocalVariable(name: "u4RegVal", scope: !3197, file: !281, line: 54, type: !61)
!3200 = !DILocalVariable(name: "reg", scope: !3197, file: !281, line: 55, type: !195)
!3201 = !DILocation(line: 0, scope: !3197)
!3202 = !DILocation(line: 55, column: 25, scope: !3197)
!3203 = !DILocation(line: 56, column: 16, scope: !3197)
!3204 = !DILocation(line: 56, column: 23, scope: !3197)
!3205 = !DILocation(line: 58, column: 16, scope: !3197)
!3206 = !DILocation(line: 61, column: 5, scope: !3197)
!3207 = !DILocation(line: 59, column: 14, scope: !3197)
!3208 = !DILocation(line: 0, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3197, file: !281, line: 61, column: 18)
!3210 = !DILocation(line: 87, column: 38, scope: !3197)
!3211 = !DILocation(line: 88, column: 21, scope: !3197)
!3212 = !DILocation(line: 88, column: 19, scope: !3197)
!3213 = !DILocation(line: 89, column: 5, scope: !3197)
!3214 = !DILocation(line: 90, column: 17, scope: !3197)
!3215 = !DILocation(line: 90, column: 33, scope: !3197)
!3216 = !DILocation(line: 90, column: 5, scope: !3197)
!3217 = !DILocation(line: 91, column: 1, scope: !3197)
!3218 = distinct !DISubprogram(name: "top_xtal_freq_get", scope: !281, file: !281, line: 98, type: !1094, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !1113)
!3219 = !DILocation(line: 100, column: 12, scope: !3218)
!3220 = !DILocation(line: 100, column: 5, scope: !3218)
!3221 = distinct !DISubprogram(name: "top_mcu_freq_get", scope: !281, file: !281, line: 108, type: !1094, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !1113)
!3222 = !DILocation(line: 110, column: 12, scope: !3221)
!3223 = !DILocation(line: 110, column: 5, scope: !3221)
!3224 = distinct !DISubprogram(name: "cmnPLL1ON", scope: !281, file: !281, line: 118, type: !154, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !3225)
!3225 = !{!3226, !3227}
!3226 = !DILocalVariable(name: "reg", scope: !3224, file: !281, line: 120, type: !60)
!3227 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !3224, file: !281, line: 121, type: !59)
!3228 = !DILocation(line: 120, column: 5, scope: !3224)
!3229 = !DILocation(line: 120, column: 23, scope: !3224)
!3230 = !DILocation(line: 0, scope: !3224)
!3231 = !DILocation(line: 123, column: 11, scope: !3224)
!3232 = !DILocation(line: 123, column: 9, scope: !3224)
!3233 = !DILocation(line: 124, column: 12, scope: !3224)
!3234 = !DILocation(line: 124, column: 16, scope: !3224)
!3235 = !DILocation(line: 124, column: 39, scope: !3224)
!3236 = !DILocation(line: 124, column: 9, scope: !3224)
!3237 = !DILocation(line: 126, column: 9, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3224, file: !281, line: 126, column: 9)
!3239 = !DILocation(line: 126, column: 13, scope: !3238)
!3240 = !DILocation(line: 126, column: 9, scope: !3224)
!3241 = !DILocation(line: 127, column: 15, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3238, file: !281, line: 126, column: 47)
!3243 = !DILocation(line: 127, column: 13, scope: !3242)
!3244 = !DILocation(line: 128, column: 15, scope: !3242)
!3245 = !DILocation(line: 128, column: 19, scope: !3242)
!3246 = !DILocation(line: 128, column: 13, scope: !3242)
!3247 = !DILocation(line: 129, column: 15, scope: !3242)
!3248 = !DILocation(line: 129, column: 19, scope: !3242)
!3249 = !DILocation(line: 129, column: 13, scope: !3242)
!3250 = !DILocation(line: 130, column: 46, scope: !3242)
!3251 = !DILocation(line: 130, column: 9, scope: !3242)
!3252 = !DILocation(line: 132, column: 9, scope: !3242)
!3253 = !DILocation(line: 133, column: 19, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3242, file: !281, line: 132, column: 12)
!3255 = !DILocation(line: 133, column: 17, scope: !3254)
!3256 = !DILocation(line: 134, column: 19, scope: !3254)
!3257 = !DILocation(line: 134, column: 23, scope: !3254)
!3258 = !DILocation(line: 134, column: 17, scope: !3254)
!3259 = !DILocation(line: 135, column: 19, scope: !3242)
!3260 = !DILocation(line: 135, column: 18, scope: !3242)
!3261 = !DILocation(line: 135, column: 9, scope: !3254)
!3262 = distinct !{!3262, !3252, !3263}
!3263 = !DILocation(line: 135, column: 22, scope: !3242)
!3264 = !DILocation(line: 138, column: 1, scope: !3224)
!3265 = distinct !DISubprogram(name: "cmnReadRegister32", scope: !3266, file: !3266, line: 176, type: !3267, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !3271)
!3266 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/system_mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!61, !3269}
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 32)
!3270 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3271 = !{!3272}
!3272 = !DILocalVariable(name: "Register", arg: 1, scope: !3265, file: !3266, line: 176, type: !3269)
!3273 = !DILocation(line: 0, scope: !3265)
!3274 = !DILocation(line: 178, column: 13, scope: !3265)
!3275 = !DILocation(line: 178, column: 12, scope: !3265)
!3276 = !DILocation(line: 178, column: 5, scope: !3265)
!3277 = distinct !DISubprogram(name: "cmnWriteRegister32", scope: !3266, file: !3266, line: 171, type: !3278, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !3280)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{null, !3269, !61}
!3280 = !{!3281, !3282}
!3281 = !DILocalVariable(name: "Register", arg: 1, scope: !3277, file: !3266, line: 171, type: !3269)
!3282 = !DILocalVariable(name: "Value", arg: 2, scope: !3277, file: !3266, line: 171, type: !61)
!3283 = !DILocation(line: 0, scope: !3277)
!3284 = !DILocation(line: 173, column: 6, scope: !3277)
!3285 = !DILocation(line: 173, column: 36, scope: !3277)
!3286 = !DILocation(line: 174, column: 1, scope: !3277)
!3287 = distinct !DISubprogram(name: "cmnPLL1ON_PLL2ON", scope: !281, file: !281, line: 145, type: !3288, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !3290)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{null, !54}
!3290 = !{!3291, !3292, !3293}
!3291 = !DILocalVariable(name: "fg960M", arg: 1, scope: !3287, file: !281, line: 145, type: !54)
!3292 = !DILocalVariable(name: "reg", scope: !3287, file: !281, line: 147, type: !60)
!3293 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !3287, file: !281, line: 148, type: !59)
!3294 = !DILocation(line: 0, scope: !3287)
!3295 = !DILocation(line: 147, column: 5, scope: !3287)
!3296 = !DILocation(line: 147, column: 23, scope: !3287)
!3297 = !DILocation(line: 150, column: 11, scope: !3287)
!3298 = !DILocation(line: 150, column: 9, scope: !3287)
!3299 = !DILocation(line: 151, column: 12, scope: !3287)
!3300 = !DILocation(line: 151, column: 16, scope: !3287)
!3301 = !DILocation(line: 151, column: 39, scope: !3287)
!3302 = !DILocation(line: 151, column: 9, scope: !3287)
!3303 = !DILocation(line: 153, column: 9, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3287, file: !281, line: 153, column: 9)
!3305 = !DILocation(line: 153, column: 13, scope: !3304)
!3306 = !DILocation(line: 153, column: 9, scope: !3287)
!3307 = !DILocation(line: 154, column: 15, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3304, file: !281, line: 153, column: 45)
!3309 = !DILocation(line: 154, column: 13, scope: !3308)
!3310 = !DILocation(line: 155, column: 15, scope: !3308)
!3311 = !DILocation(line: 155, column: 19, scope: !3308)
!3312 = !DILocation(line: 155, column: 13, scope: !3308)
!3313 = !DILocation(line: 156, column: 15, scope: !3308)
!3314 = !DILocation(line: 156, column: 19, scope: !3308)
!3315 = !DILocation(line: 156, column: 13, scope: !3308)
!3316 = !DILocation(line: 157, column: 15, scope: !3308)
!3317 = !DILocation(line: 157, column: 13, scope: !3308)
!3318 = !DILocation(line: 158, column: 46, scope: !3308)
!3319 = !DILocation(line: 158, column: 9, scope: !3308)
!3320 = !DILocation(line: 160, column: 15, scope: !3308)
!3321 = !DILocation(line: 160, column: 13, scope: !3308)
!3322 = !DILocation(line: 161, column: 15, scope: !3308)
!3323 = !DILocation(line: 161, column: 19, scope: !3308)
!3324 = !DILocation(line: 161, column: 13, scope: !3308)
!3325 = !DILocation(line: 162, column: 15, scope: !3308)
!3326 = !DILocation(line: 162, column: 19, scope: !3308)
!3327 = !DILocation(line: 162, column: 13, scope: !3308)
!3328 = !DILocation(line: 163, column: 15, scope: !3308)
!3329 = !DILocation(line: 163, column: 19, scope: !3308)
!3330 = !DILocation(line: 163, column: 13, scope: !3308)
!3331 = !DILocation(line: 164, column: 46, scope: !3308)
!3332 = !DILocation(line: 164, column: 9, scope: !3308)
!3333 = !DILocation(line: 166, column: 9, scope: !3308)
!3334 = !DILocation(line: 167, column: 19, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3308, file: !281, line: 166, column: 12)
!3336 = !DILocation(line: 167, column: 17, scope: !3335)
!3337 = !DILocation(line: 168, column: 19, scope: !3335)
!3338 = !DILocation(line: 168, column: 23, scope: !3335)
!3339 = !DILocation(line: 168, column: 17, scope: !3335)
!3340 = !DILocation(line: 169, column: 19, scope: !3308)
!3341 = !DILocation(line: 169, column: 18, scope: !3308)
!3342 = !DILocation(line: 169, column: 9, scope: !3335)
!3343 = distinct !{!3343, !3333, !3344}
!3344 = !DILocation(line: 169, column: 22, scope: !3308)
!3345 = !DILocation(line: 171, column: 15, scope: !3308)
!3346 = !DILocation(line: 171, column: 13, scope: !3308)
!3347 = !DILocation(line: 172, column: 15, scope: !3308)
!3348 = !DILocation(line: 172, column: 19, scope: !3308)
!3349 = !DILocation(line: 172, column: 13, scope: !3308)
!3350 = !DILocation(line: 173, column: 15, scope: !3308)
!3351 = !DILocation(line: 173, column: 19, scope: !3308)
!3352 = !DILocation(line: 173, column: 13, scope: !3308)
!3353 = !DILocation(line: 174, column: 5, scope: !3308)
!3354 = !DILocation(line: 176, column: 11, scope: !3287)
!3355 = !DILocation(line: 176, column: 9, scope: !3287)
!3356 = !DILocation(line: 177, column: 9, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3287, file: !281, line: 177, column: 9)
!3358 = !DILocation(line: 0, scope: !3357)
!3359 = !DILocation(line: 177, column: 9, scope: !3287)
!3360 = !DILocation(line: 178, column: 19, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3357, file: !281, line: 177, column: 17)
!3362 = !DILocation(line: 178, column: 13, scope: !3361)
!3363 = !DILocation(line: 179, column: 5, scope: !3361)
!3364 = !DILocation(line: 180, column: 13, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3357, file: !281, line: 179, column: 12)
!3366 = !DILocation(line: 182, column: 42, scope: !3287)
!3367 = !DILocation(line: 182, column: 5, scope: !3287)
!3368 = !DILocation(line: 184, column: 1, scope: !3287)
!3369 = distinct !DISubprogram(name: "cmnPLL1OFF_PLL2OFF", scope: !281, file: !281, line: 191, type: !154, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !3370)
!3370 = !{!3371, !3372}
!3371 = !DILocalVariable(name: "reg", scope: !3369, file: !281, line: 193, type: !60)
!3372 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !3369, file: !281, line: 194, type: !59)
!3373 = !DILocation(line: 193, column: 5, scope: !3369)
!3374 = !DILocation(line: 193, column: 23, scope: !3369)
!3375 = !DILocation(line: 0, scope: !3369)
!3376 = !DILocation(line: 196, column: 11, scope: !3369)
!3377 = !DILocation(line: 196, column: 9, scope: !3369)
!3378 = !DILocation(line: 197, column: 11, scope: !3369)
!3379 = !DILocation(line: 197, column: 15, scope: !3369)
!3380 = !DILocation(line: 197, column: 9, scope: !3369)
!3381 = !DILocation(line: 198, column: 11, scope: !3369)
!3382 = !DILocation(line: 198, column: 15, scope: !3369)
!3383 = !DILocation(line: 198, column: 9, scope: !3369)
!3384 = !DILocation(line: 199, column: 11, scope: !3369)
!3385 = !DILocation(line: 199, column: 9, scope: !3369)
!3386 = !DILocation(line: 200, column: 42, scope: !3369)
!3387 = !DILocation(line: 200, column: 5, scope: !3369)
!3388 = !DILocation(line: 202, column: 11, scope: !3369)
!3389 = !DILocation(line: 202, column: 9, scope: !3369)
!3390 = !DILocation(line: 203, column: 11, scope: !3369)
!3391 = !DILocation(line: 203, column: 15, scope: !3369)
!3392 = !DILocation(line: 203, column: 9, scope: !3369)
!3393 = !DILocation(line: 204, column: 11, scope: !3369)
!3394 = !DILocation(line: 204, column: 15, scope: !3369)
!3395 = !DILocation(line: 204, column: 9, scope: !3369)
!3396 = !DILocation(line: 205, column: 11, scope: !3369)
!3397 = !DILocation(line: 205, column: 9, scope: !3369)
!3398 = !DILocation(line: 206, column: 42, scope: !3369)
!3399 = !DILocation(line: 206, column: 5, scope: !3369)
!3400 = !DILocation(line: 209, column: 1, scope: !3369)
!3401 = distinct !DISubprogram(name: "cmnCpuClkConfigureToXtal", scope: !281, file: !281, line: 216, type: !154, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !3402)
!3402 = !{!3403, !3404}
!3403 = !DILocalVariable(name: "reg", scope: !3401, file: !281, line: 218, type: !60)
!3404 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !3401, file: !281, line: 219, type: !59)
!3405 = !DILocation(line: 218, column: 5, scope: !3401)
!3406 = !DILocation(line: 218, column: 23, scope: !3401)
!3407 = !DILocation(line: 0, scope: !3401)
!3408 = !DILocation(line: 222, column: 11, scope: !3401)
!3409 = !DILocation(line: 222, column: 9, scope: !3401)
!3410 = !DILocation(line: 223, column: 11, scope: !3401)
!3411 = !DILocation(line: 223, column: 15, scope: !3401)
!3412 = !DILocation(line: 223, column: 9, scope: !3401)
!3413 = !DILocation(line: 224, column: 11, scope: !3401)
!3414 = !DILocation(line: 224, column: 9, scope: !3401)
!3415 = !DILocation(line: 225, column: 39, scope: !3401)
!3416 = !DILocation(line: 225, column: 5, scope: !3401)
!3417 = !DILocation(line: 228, column: 11, scope: !3401)
!3418 = !DILocation(line: 228, column: 9, scope: !3401)
!3419 = !DILocation(line: 229, column: 11, scope: !3401)
!3420 = !DILocation(line: 229, column: 15, scope: !3401)
!3421 = !DILocation(line: 229, column: 9, scope: !3401)
!3422 = !DILocation(line: 230, column: 11, scope: !3401)
!3423 = !DILocation(line: 230, column: 9, scope: !3401)
!3424 = !DILocation(line: 231, column: 39, scope: !3401)
!3425 = !DILocation(line: 231, column: 5, scope: !3401)
!3426 = !DILocation(line: 233, column: 5, scope: !3401)
!3427 = !DILocation(line: 233, column: 12, scope: !3401)
!3428 = !DILocation(line: 233, column: 19, scope: !3401)
!3429 = !DILocation(line: 233, column: 16, scope: !3401)
!3430 = distinct !{!3430, !3426, !3431}
!3431 = !DILocation(line: 233, column: 52, scope: !3401)
!3432 = !DILocation(line: 235, column: 21, scope: !3401)
!3433 = !DILocation(line: 235, column: 19, scope: !3401)
!3434 = !DILocation(line: 236, column: 5, scope: !3401)
!3435 = !DILocation(line: 237, column: 17, scope: !3401)
!3436 = !DILocation(line: 237, column: 33, scope: !3401)
!3437 = !DILocation(line: 237, column: 5, scope: !3401)
!3438 = !DILocation(line: 239, column: 1, scope: !3401)
!3439 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo192M", scope: !281, file: !281, line: 246, type: !154, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !3440)
!3440 = !{!3441, !3442}
!3441 = !DILocalVariable(name: "reg", scope: !3439, file: !281, line: 248, type: !60)
!3442 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !3439, file: !281, line: 249, type: !59)
!3443 = !DILocation(line: 248, column: 5, scope: !3439)
!3444 = !DILocation(line: 248, column: 23, scope: !3439)
!3445 = !DILocation(line: 0, scope: !3439)
!3446 = !DILocation(line: 252, column: 5, scope: !3439)
!3447 = !DILocation(line: 255, column: 11, scope: !3439)
!3448 = !DILocation(line: 255, column: 9, scope: !3439)
!3449 = !DILocation(line: 256, column: 11, scope: !3439)
!3450 = !DILocation(line: 256, column: 15, scope: !3439)
!3451 = !DILocation(line: 256, column: 9, scope: !3439)
!3452 = !DILocation(line: 257, column: 11, scope: !3439)
!3453 = !DILocation(line: 257, column: 15, scope: !3439)
!3454 = !DILocation(line: 257, column: 9, scope: !3439)
!3455 = !DILocation(line: 258, column: 39, scope: !3439)
!3456 = !DILocation(line: 258, column: 5, scope: !3439)
!3457 = !DILocation(line: 260, column: 5, scope: !3439)
!3458 = !DILocation(line: 260, column: 12, scope: !3439)
!3459 = !DILocation(line: 260, column: 19, scope: !3439)
!3460 = !DILocation(line: 260, column: 16, scope: !3439)
!3461 = distinct !{!3461, !3457, !3462}
!3462 = !DILocation(line: 260, column: 52, scope: !3439)
!3463 = !DILocation(line: 263, column: 11, scope: !3439)
!3464 = !DILocation(line: 263, column: 9, scope: !3439)
!3465 = !DILocation(line: 264, column: 11, scope: !3439)
!3466 = !DILocation(line: 264, column: 15, scope: !3439)
!3467 = !DILocation(line: 264, column: 9, scope: !3439)
!3468 = !DILocation(line: 265, column: 11, scope: !3439)
!3469 = !DILocation(line: 265, column: 15, scope: !3439)
!3470 = !DILocation(line: 265, column: 9, scope: !3439)
!3471 = !DILocation(line: 266, column: 39, scope: !3439)
!3472 = !DILocation(line: 266, column: 5, scope: !3439)
!3473 = !DILocation(line: 269, column: 11, scope: !3439)
!3474 = !DILocation(line: 269, column: 9, scope: !3439)
!3475 = !DILocation(line: 270, column: 11, scope: !3439)
!3476 = !DILocation(line: 270, column: 15, scope: !3439)
!3477 = !DILocation(line: 270, column: 9, scope: !3439)
!3478 = !DILocation(line: 271, column: 11, scope: !3439)
!3479 = !DILocation(line: 271, column: 15, scope: !3439)
!3480 = !DILocation(line: 271, column: 9, scope: !3439)
!3481 = !DILocation(line: 272, column: 39, scope: !3439)
!3482 = !DILocation(line: 272, column: 5, scope: !3439)
!3483 = !DILocation(line: 273, column: 19, scope: !3439)
!3484 = !DILocation(line: 274, column: 5, scope: !3439)
!3485 = !DILocation(line: 275, column: 17, scope: !3439)
!3486 = !DILocation(line: 275, column: 33, scope: !3439)
!3487 = !DILocation(line: 275, column: 5, scope: !3439)
!3488 = !DILocation(line: 277, column: 1, scope: !3439)
!3489 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo160M", scope: !281, file: !281, line: 284, type: !154, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !3490)
!3490 = !{!3491, !3492}
!3491 = !DILocalVariable(name: "reg", scope: !3489, file: !281, line: 286, type: !60)
!3492 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !3489, file: !281, line: 287, type: !59)
!3493 = !DILocation(line: 286, column: 5, scope: !3489)
!3494 = !DILocation(line: 286, column: 23, scope: !3489)
!3495 = !DILocation(line: 0, scope: !3489)
!3496 = !DILocation(line: 290, column: 5, scope: !3489)
!3497 = !DILocation(line: 293, column: 11, scope: !3489)
!3498 = !DILocation(line: 293, column: 9, scope: !3489)
!3499 = !DILocation(line: 294, column: 11, scope: !3489)
!3500 = !DILocation(line: 294, column: 15, scope: !3489)
!3501 = !DILocation(line: 294, column: 9, scope: !3489)
!3502 = !DILocation(line: 295, column: 11, scope: !3489)
!3503 = !DILocation(line: 295, column: 15, scope: !3489)
!3504 = !DILocation(line: 295, column: 9, scope: !3489)
!3505 = !DILocation(line: 296, column: 39, scope: !3489)
!3506 = !DILocation(line: 296, column: 5, scope: !3489)
!3507 = !DILocation(line: 298, column: 5, scope: !3489)
!3508 = !DILocation(line: 298, column: 12, scope: !3489)
!3509 = !DILocation(line: 298, column: 19, scope: !3489)
!3510 = !DILocation(line: 298, column: 16, scope: !3489)
!3511 = distinct !{!3511, !3507, !3512}
!3512 = !DILocation(line: 298, column: 52, scope: !3489)
!3513 = !DILocation(line: 301, column: 11, scope: !3489)
!3514 = !DILocation(line: 301, column: 9, scope: !3489)
!3515 = !DILocation(line: 302, column: 11, scope: !3489)
!3516 = !DILocation(line: 302, column: 15, scope: !3489)
!3517 = !DILocation(line: 302, column: 9, scope: !3489)
!3518 = !DILocation(line: 303, column: 11, scope: !3489)
!3519 = !DILocation(line: 303, column: 15, scope: !3489)
!3520 = !DILocation(line: 303, column: 9, scope: !3489)
!3521 = !DILocation(line: 304, column: 39, scope: !3489)
!3522 = !DILocation(line: 304, column: 5, scope: !3489)
!3523 = !DILocation(line: 307, column: 11, scope: !3489)
!3524 = !DILocation(line: 307, column: 9, scope: !3489)
!3525 = !DILocation(line: 308, column: 11, scope: !3489)
!3526 = !DILocation(line: 308, column: 15, scope: !3489)
!3527 = !DILocation(line: 308, column: 9, scope: !3489)
!3528 = !DILocation(line: 309, column: 11, scope: !3489)
!3529 = !DILocation(line: 309, column: 15, scope: !3489)
!3530 = !DILocation(line: 309, column: 9, scope: !3489)
!3531 = !DILocation(line: 310, column: 39, scope: !3489)
!3532 = !DILocation(line: 310, column: 5, scope: !3489)
!3533 = !DILocation(line: 311, column: 19, scope: !3489)
!3534 = !DILocation(line: 312, column: 5, scope: !3489)
!3535 = !DILocation(line: 313, column: 17, scope: !3489)
!3536 = !DILocation(line: 313, column: 33, scope: !3489)
!3537 = !DILocation(line: 313, column: 5, scope: !3489)
!3538 = !DILocation(line: 315, column: 1, scope: !3489)
!3539 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo64M", scope: !281, file: !281, line: 323, type: !154, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !3540)
!3540 = !{!3541, !3542}
!3541 = !DILocalVariable(name: "reg", scope: !3539, file: !281, line: 325, type: !60)
!3542 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !3539, file: !281, line: 326, type: !59)
!3543 = !DILocation(line: 325, column: 5, scope: !3539)
!3544 = !DILocation(line: 325, column: 23, scope: !3539)
!3545 = !DILocation(line: 0, scope: !3539)
!3546 = !DILocation(line: 329, column: 5, scope: !3539)
!3547 = !DILocation(line: 332, column: 11, scope: !3539)
!3548 = !DILocation(line: 332, column: 9, scope: !3539)
!3549 = !DILocation(line: 333, column: 11, scope: !3539)
!3550 = !DILocation(line: 333, column: 15, scope: !3539)
!3551 = !DILocation(line: 333, column: 9, scope: !3539)
!3552 = !DILocation(line: 334, column: 11, scope: !3539)
!3553 = !DILocation(line: 334, column: 9, scope: !3539)
!3554 = !DILocation(line: 335, column: 39, scope: !3539)
!3555 = !DILocation(line: 335, column: 5, scope: !3539)
!3556 = !DILocation(line: 337, column: 5, scope: !3539)
!3557 = !DILocation(line: 337, column: 12, scope: !3539)
!3558 = !DILocation(line: 337, column: 19, scope: !3539)
!3559 = !DILocation(line: 337, column: 16, scope: !3539)
!3560 = distinct !{!3560, !3556, !3561}
!3561 = !DILocation(line: 337, column: 52, scope: !3539)
!3562 = !DILocation(line: 340, column: 11, scope: !3539)
!3563 = !DILocation(line: 340, column: 9, scope: !3539)
!3564 = !DILocation(line: 341, column: 11, scope: !3539)
!3565 = !DILocation(line: 341, column: 15, scope: !3539)
!3566 = !DILocation(line: 341, column: 9, scope: !3539)
!3567 = !DILocation(line: 342, column: 11, scope: !3539)
!3568 = !DILocation(line: 342, column: 15, scope: !3539)
!3569 = !DILocation(line: 342, column: 9, scope: !3539)
!3570 = !DILocation(line: 343, column: 39, scope: !3539)
!3571 = !DILocation(line: 343, column: 5, scope: !3539)
!3572 = !DILocation(line: 344, column: 19, scope: !3539)
!3573 = !DILocation(line: 345, column: 5, scope: !3539)
!3574 = !DILocation(line: 346, column: 17, scope: !3539)
!3575 = !DILocation(line: 346, column: 33, scope: !3539)
!3576 = !DILocation(line: 346, column: 5, scope: !3539)
!3577 = !DILocation(line: 348, column: 1, scope: !3539)
!3578 = distinct !DISubprogram(name: "cmnSerialFlashClkConfToXtal", scope: !281, file: !281, line: 353, type: !154, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !3579)
!3579 = !{!3580, !3581}
!3580 = !DILocalVariable(name: "reg", scope: !3578, file: !281, line: 355, type: !158)
!3581 = !DILocalVariable(name: "pTopCfgHclk", scope: !3578, file: !281, line: 356, type: !283)
!3582 = !DILocation(line: 355, column: 5, scope: !3578)
!3583 = !DILocation(line: 355, column: 21, scope: !3578)
!3584 = !DILocation(line: 0, scope: !3578)
!3585 = !DILocation(line: 358, column: 11, scope: !3578)
!3586 = !DILocation(line: 358, column: 9, scope: !3578)
!3587 = !DILocation(line: 359, column: 11, scope: !3578)
!3588 = !DILocation(line: 359, column: 15, scope: !3578)
!3589 = !DILocation(line: 359, column: 9, scope: !3578)
!3590 = !DILocation(line: 360, column: 11, scope: !3578)
!3591 = !DILocation(line: 360, column: 9, scope: !3578)
!3592 = !DILocation(line: 361, column: 37, scope: !3578)
!3593 = !DILocation(line: 361, column: 5, scope: !3578)
!3594 = !DILocation(line: 362, column: 1, scope: !3578)
!3595 = distinct !DISubprogram(name: "cmnSerialFlashClkConfTo64M", scope: !281, file: !281, line: 368, type: !154, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !3596)
!3596 = !{!3597, !3598, !3599, !3601, !3603}
!3597 = !DILocalVariable(name: "reg", scope: !3595, file: !281, line: 370, type: !158)
!3598 = !DILocalVariable(name: "pTopCfgHclk", scope: !3595, file: !281, line: 371, type: !283)
!3599 = !DILocalVariable(name: "addr", scope: !3600, file: !281, line: 383, type: !284)
!3600 = distinct !DILexicalBlock(scope: !3595, file: !281, line: 383, column: 5)
!3601 = !DILocalVariable(name: "addr", scope: !3602, file: !281, line: 384, type: !284)
!3602 = distinct !DILexicalBlock(scope: !3595, file: !281, line: 384, column: 5)
!3603 = !DILocalVariable(name: "addr", scope: !3604, file: !281, line: 385, type: !284)
!3604 = distinct !DILexicalBlock(scope: !3595, file: !281, line: 385, column: 5)
!3605 = !DILocation(line: 370, column: 5, scope: !3595)
!3606 = !DILocation(line: 370, column: 21, scope: !3595)
!3607 = !DILocation(line: 0, scope: !3595)
!3608 = !DILocation(line: 374, column: 5, scope: !3595)
!3609 = !DILocation(line: 377, column: 11, scope: !3595)
!3610 = !DILocation(line: 377, column: 9, scope: !3595)
!3611 = !DILocation(line: 378, column: 11, scope: !3595)
!3612 = !DILocation(line: 378, column: 15, scope: !3595)
!3613 = !DILocation(line: 378, column: 9, scope: !3595)
!3614 = !DILocation(line: 379, column: 11, scope: !3595)
!3615 = !DILocation(line: 379, column: 15, scope: !3595)
!3616 = !DILocation(line: 379, column: 9, scope: !3595)
!3617 = !DILocation(line: 380, column: 37, scope: !3595)
!3618 = !DILocation(line: 380, column: 5, scope: !3595)
!3619 = !DILocation(line: 0, scope: !3600)
!3620 = !DILocation(line: 383, column: 5, scope: !3600)
!3621 = !DILocation(line: 0, scope: !3602)
!3622 = !DILocation(line: 384, column: 5, scope: !3602)
!3623 = !DILocation(line: 0, scope: !3604)
!3624 = !DILocation(line: 385, column: 5, scope: !3604)
!3625 = !DILocation(line: 388, column: 1, scope: !3595)
!3626 = distinct !DISubprogram(name: "getc", scope: !293, file: !293, line: 68, type: !1753, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !3627)
!3627 = !{!3628}
!3628 = !DILocalVariable(name: "rc", scope: !3626, file: !293, line: 71, type: !7)
!3629 = !DILocation(line: 71, column: 14, scope: !3626)
!3630 = !DILocation(line: 0, scope: !3626)
!3631 = !DILocation(line: 72, column: 5, scope: !3626)
!3632 = distinct !DISubprogram(name: "getc_nowait", scope: !293, file: !293, line: 80, type: !1753, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !3633)
!3633 = !{!3634}
!3634 = !DILocalVariable(name: "c", scope: !3632, file: !293, line: 82, type: !202)
!3635 = !DILocation(line: 84, column: 9, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3632, file: !293, line: 84, column: 9)
!3637 = !DILocation(line: 84, column: 40, scope: !3636)
!3638 = !DILocation(line: 84, column: 9, scope: !3632)
!3639 = !DILocation(line: 85, column: 13, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3636, file: !293, line: 84, column: 47)
!3641 = !DILocation(line: 86, column: 16, scope: !3640)
!3642 = !DILocation(line: 0, scope: !3632)
!3643 = !DILocation(line: 86, column: 9, scope: !3640)
!3644 = !DILocation(line: 0, scope: !3636)
!3645 = !DILocation(line: 90, column: 1, scope: !3632)
!3646 = distinct !DISubprogram(name: "uart_output_char", scope: !293, file: !293, line: 93, type: !3647, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !3650)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{null, !3649, !58}
!3649 = !DIDerivedType(tag: DW_TAG_typedef, name: "UART_PORT", file: !296, line: 75, baseType: !295)
!3650 = !{!3651, !3652, !3653}
!3651 = !DILocalVariable(name: "port_no", arg: 1, scope: !3646, file: !293, line: 93, type: !3649)
!3652 = !DILocalVariable(name: "c", arg: 2, scope: !3646, file: !293, line: 93, type: !58)
!3653 = !DILocalVariable(name: "base", scope: !3646, file: !293, line: 95, type: !30)
!3654 = !DILocation(line: 0, scope: !3646)
!3655 = !DILocation(line: 95, column: 25, scope: !3646)
!3656 = !DILocation(line: 97, column: 5, scope: !3646)
!3657 = !DILocation(line: 97, column: 14, scope: !3646)
!3658 = !DILocation(line: 97, column: 42, scope: !3646)
!3659 = !DILocation(line: 97, column: 12, scope: !3646)
!3660 = distinct !{!3660, !3656, !3661}
!3661 = !DILocation(line: 98, column: 9, scope: !3646)
!3662 = !DILocation(line: 99, column: 35, scope: !3646)
!3663 = !DILocation(line: 99, column: 5, scope: !3646)
!3664 = !DILocation(line: 99, column: 33, scope: !3646)
!3665 = !DILocation(line: 102, column: 1, scope: !3646)
!3666 = distinct !DISubprogram(name: "uart_input_char", scope: !293, file: !293, line: 106, type: !3667, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !3669)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!54, !3649}
!3669 = !{!3670, !3671, !3672}
!3670 = !DILocalVariable(name: "port_no", arg: 1, scope: !3666, file: !293, line: 106, type: !3649)
!3671 = !DILocalVariable(name: "base", scope: !3666, file: !293, line: 108, type: !30)
!3672 = !DILocalVariable(name: "c", scope: !3666, file: !293, line: 109, type: !202)
!3673 = !DILocation(line: 0, scope: !3666)
!3674 = !DILocation(line: 108, column: 25, scope: !3666)
!3675 = !DILocation(line: 111, column: 5, scope: !3666)
!3676 = !DILocation(line: 111, column: 14, scope: !3666)
!3677 = !DILocation(line: 111, column: 42, scope: !3666)
!3678 = !DILocation(line: 111, column: 12, scope: !3666)
!3679 = distinct !{!3679, !3675, !3680}
!3680 = !DILocation(line: 112, column: 9, scope: !3666)
!3681 = !DILocation(line: 114, column: 9, scope: !3666)
!3682 = !DILocation(line: 116, column: 5, scope: !3666)
!3683 = distinct !DISubprogram(name: "uart_input_char_unblocking", scope: !293, file: !293, line: 120, type: !3684, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !3686)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!61, !3649}
!3686 = !{!3687, !3688, !3689}
!3687 = !DILocalVariable(name: "port_no", arg: 1, scope: !3683, file: !293, line: 120, type: !3649)
!3688 = !DILocalVariable(name: "base", scope: !3683, file: !293, line: 122, type: !30)
!3689 = !DILocalVariable(name: "c", scope: !3683, file: !293, line: 123, type: !202)
!3690 = !DILocation(line: 0, scope: !3683)
!3691 = !DILocation(line: 122, column: 25, scope: !3683)
!3692 = !DILocation(line: 125, column: 9, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3683, file: !293, line: 125, column: 9)
!3694 = !DILocation(line: 125, column: 37, scope: !3693)
!3695 = !DILocation(line: 125, column: 9, scope: !3683)
!3696 = !DILocation(line: 126, column: 13, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3693, file: !293, line: 125, column: 44)
!3698 = !DILocation(line: 127, column: 16, scope: !3697)
!3699 = !DILocation(line: 127, column: 9, scope: !3697)
!3700 = !DILocation(line: 0, scope: !3693)
!3701 = !DILocation(line: 131, column: 1, scope: !3683)
!3702 = distinct !DISubprogram(name: "halUART_HWInit", scope: !293, file: !293, line: 136, type: !3703, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !3705)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{null, !3649}
!3705 = !{!3706}
!3706 = !DILocalVariable(name: "u_port", arg: 1, scope: !3702, file: !293, line: 136, type: !3649)
!3707 = !DILocation(line: 0, scope: !3702)
!3708 = !DILocation(line: 139, column: 5, scope: !3702)
!3709 = !DILocation(line: 140, column: 9, scope: !3702)
!3710 = !DILocation(line: 153, column: 5, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3712, file: !293, line: 147, column: 38)
!3712 = distinct !DILexicalBlock(scope: !3713, file: !293, line: 147, column: 16)
!3713 = distinct !DILexicalBlock(scope: !3702, file: !293, line: 140, column: 9)
!3714 = !DILocation(line: 0, scope: !3713)
!3715 = !DILocation(line: 155, column: 1, scope: !3702)
!3716 = distinct !DISubprogram(name: "halUART_SetFormat", scope: !293, file: !293, line: 158, type: !3717, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !3719)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{null, !3649, !61, !1443, !1443, !1443}
!3719 = !{!3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3735, !3736}
!3720 = !DILocalVariable(name: "u_port", arg: 1, scope: !3716, file: !293, line: 158, type: !3649)
!3721 = !DILocalVariable(name: "baudrate", arg: 2, scope: !3716, file: !293, line: 158, type: !61)
!3722 = !DILocalVariable(name: "databit", arg: 3, scope: !3716, file: !293, line: 158, type: !1443)
!3723 = !DILocalVariable(name: "parity", arg: 4, scope: !3716, file: !293, line: 158, type: !1443)
!3724 = !DILocalVariable(name: "stopbit", arg: 5, scope: !3716, file: !293, line: 158, type: !1443)
!3725 = !DILocalVariable(name: "control_word", scope: !3716, file: !293, line: 160, type: !1443)
!3726 = !DILocalVariable(name: "UART_BASE", scope: !3716, file: !293, line: 161, type: !61)
!3727 = !DILocalVariable(name: "data", scope: !3716, file: !293, line: 162, type: !61)
!3728 = !DILocalVariable(name: "uart_lcr", scope: !3716, file: !293, line: 162, type: !61)
!3729 = !DILocalVariable(name: "high_speed_div", scope: !3716, file: !293, line: 162, type: !61)
!3730 = !DILocalVariable(name: "sample_count", scope: !3716, file: !293, line: 162, type: !61)
!3731 = !DILocalVariable(name: "sample_point", scope: !3716, file: !293, line: 162, type: !61)
!3732 = !DILocalVariable(name: "fraction", scope: !3716, file: !293, line: 162, type: !61)
!3733 = !DILocalVariable(name: "fraction_L_mapping", scope: !3716, file: !293, line: 163, type: !3734)
!3734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1443, size: 176, elements: !1020)
!3735 = !DILocalVariable(name: "fraction_M_mapping", scope: !3716, file: !293, line: 164, type: !3734)
!3736 = !DILocalVariable(name: "status", scope: !3716, file: !293, line: 165, type: !490)
!3737 = !DILocation(line: 0, scope: !3716)
!3738 = !DILocation(line: 163, column: 15, scope: !3716)
!3739 = !DILocation(line: 164, column: 15, scope: !3716)
!3740 = !DILocation(line: 166, column: 20, scope: !3716)
!3741 = !DILocation(line: 166, column: 18, scope: !3716)
!3742 = !DILocation(line: 168, column: 9, scope: !3716)
!3743 = !DILocation(line: 176, column: 5, scope: !3716)
!3744 = !DILocation(line: 176, column: 44, scope: !3716)
!3745 = !DILocation(line: 177, column: 16, scope: !3716)
!3746 = !DILocation(line: 178, column: 50, scope: !3716)
!3747 = !DILocation(line: 178, column: 38, scope: !3716)
!3748 = !DILocation(line: 179, column: 12, scope: !3716)
!3749 = !DILocation(line: 179, column: 25, scope: !3716)
!3750 = !DILocation(line: 180, column: 28, scope: !3716)
!3751 = !DILocation(line: 180, column: 34, scope: !3716)
!3752 = !DILocation(line: 182, column: 29, scope: !3753)
!3753 = distinct !DILexicalBlock(scope: !3716, file: !293, line: 181, column: 5)
!3754 = !DILocation(line: 182, column: 46, scope: !3753)
!3755 = !DILocation(line: 183, column: 26, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3753, file: !293, line: 183, column: 13)
!3757 = !DILocation(line: 183, column: 13, scope: !3753)
!3758 = !DILocation(line: 192, column: 30, scope: !3716)
!3759 = !DILocation(line: 192, column: 35, scope: !3716)
!3760 = !DILocation(line: 192, column: 46, scope: !3716)
!3761 = !DILocation(line: 192, column: 74, scope: !3716)
!3762 = !DILocation(line: 192, column: 53, scope: !3716)
!3763 = !DILocation(line: 192, column: 80, scope: !3716)
!3764 = !DILocation(line: 193, column: 56, scope: !3716)
!3765 = !DILocation(line: 193, column: 5, scope: !3716)
!3766 = !DILocation(line: 193, column: 38, scope: !3716)
!3767 = !DILocation(line: 194, column: 57, scope: !3716)
!3768 = !DILocation(line: 194, column: 63, scope: !3716)
!3769 = !DILocation(line: 194, column: 5, scope: !3716)
!3770 = !DILocation(line: 194, column: 38, scope: !3716)
!3771 = !DILocation(line: 195, column: 5, scope: !3716)
!3772 = !DILocation(line: 195, column: 45, scope: !3716)
!3773 = !DILocation(line: 196, column: 5, scope: !3716)
!3774 = !DILocation(line: 196, column: 47, scope: !3716)
!3775 = !DILocation(line: 197, column: 46, scope: !3716)
!3776 = !DILocation(line: 197, column: 5, scope: !3716)
!3777 = !DILocation(line: 197, column: 44, scope: !3716)
!3778 = !DILocation(line: 198, column: 46, scope: !3716)
!3779 = !DILocation(line: 198, column: 5, scope: !3716)
!3780 = !DILocation(line: 198, column: 44, scope: !3716)
!3781 = !DILocation(line: 199, column: 38, scope: !3716)
!3782 = !DILocation(line: 200, column: 5, scope: !3716)
!3783 = !DILocation(line: 200, column: 38, scope: !3716)
!3784 = !DILocation(line: 202, column: 20, scope: !3716)
!3785 = !DILocation(line: 203, column: 18, scope: !3716)
!3786 = !DILocation(line: 205, column: 18, scope: !3716)
!3787 = !DILocation(line: 207, column: 18, scope: !3716)
!3788 = !DILocation(line: 208, column: 18, scope: !3716)
!3789 = !DILocation(line: 209, column: 5, scope: !3716)
!3790 = !DILocation(line: 213, column: 1, scope: !3716)
!3791 = distinct !DISubprogram(name: "halUART_Get_VFIFO_Length", scope: !293, file: !293, line: 215, type: !3792, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !3795)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{null, !3649, !490, !3794}
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 32)
!3795 = !{!3796, !3797, !3798}
!3796 = !DILocalVariable(name: "u_port", arg: 1, scope: !3791, file: !293, line: 215, type: !3649)
!3797 = !DILocalVariable(name: "is_rx", arg: 2, scope: !3791, file: !293, line: 215, type: !490)
!3798 = !DILocalVariable(name: "length", arg: 3, scope: !3791, file: !293, line: 215, type: !3794)
!3799 = !DILocation(line: 0, scope: !3791)
!3800 = !DILocation(line: 217, column: 16, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3791, file: !293, line: 217, column: 9)
!3802 = !DILocation(line: 0, scope: !3801)
!3803 = !DILocation(line: 217, column: 9, scope: !3791)
!3804 = !DILocation(line: 218, column: 13, scope: !3805)
!3805 = distinct !DILexicalBlock(scope: !3801, file: !293, line: 217, column: 31)
!3806 = !DILocation(line: 219, column: 23, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3808, file: !293, line: 218, column: 20)
!3808 = distinct !DILexicalBlock(scope: !3805, file: !293, line: 218, column: 13)
!3809 = !DILocation(line: 220, column: 9, scope: !3807)
!3810 = !DILocation(line: 221, column: 23, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3808, file: !293, line: 220, column: 16)
!3812 = !DILocation(line: 221, column: 21, scope: !3811)
!3813 = !DILocation(line: 222, column: 24, scope: !3811)
!3814 = !DILocation(line: 222, column: 21, scope: !3811)
!3815 = !DILocation(line: 225, column: 13, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3801, file: !293, line: 224, column: 12)
!3817 = !DILocation(line: 226, column: 23, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3819, file: !293, line: 225, column: 20)
!3819 = distinct !DILexicalBlock(scope: !3816, file: !293, line: 225, column: 13)
!3820 = !DILocation(line: 227, column: 9, scope: !3818)
!3821 = !DILocation(line: 228, column: 23, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3819, file: !293, line: 227, column: 16)
!3823 = !DILocation(line: 228, column: 21, scope: !3822)
!3824 = !DILocation(line: 229, column: 24, scope: !3822)
!3825 = !DILocation(line: 229, column: 21, scope: !3822)
!3826 = !DILocation(line: 233, column: 5, scope: !3791)
!3827 = distinct !DISubprogram(name: "halUART_Read_VFIFO_Data", scope: !293, file: !293, line: 236, type: !3828, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !3830)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{null, !3649, !210, !61}
!3830 = !{!3831, !3832, !3833, !3834}
!3831 = !DILocalVariable(name: "u_port", arg: 1, scope: !3827, file: !293, line: 236, type: !3649)
!3832 = !DILocalVariable(name: "data", arg: 2, scope: !3827, file: !293, line: 236, type: !210)
!3833 = !DILocalVariable(name: "length", arg: 3, scope: !3827, file: !293, line: 236, type: !61)
!3834 = !DILocalVariable(name: "idx", scope: !3827, file: !293, line: 238, type: !159)
!3835 = !DILocation(line: 0, scope: !3827)
!3836 = !DILocation(line: 239, column: 23, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3838, file: !293, line: 239, column: 5)
!3838 = distinct !DILexicalBlock(scope: !3827, file: !293, line: 239, column: 5)
!3839 = !DILocation(line: 239, column: 5, scope: !3838)
!3840 = !DILocation(line: 240, column: 13, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3837, file: !293, line: 239, column: 40)
!3842 = !DILocation(line: 244, column: 9, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3844, file: !293, line: 242, column: 42)
!3844 = distinct !DILexicalBlock(scope: !3845, file: !293, line: 242, column: 20)
!3845 = distinct !DILexicalBlock(scope: !3841, file: !293, line: 240, column: 13)
!3846 = !DILocation(line: 0, scope: !3845)
!3847 = !DILocation(line: 239, column: 36, scope: !3837)
!3848 = distinct !{!3848, !3839, !3849}
!3849 = !DILocation(line: 246, column: 5, scope: !3838)
!3850 = !DILocation(line: 249, column: 1, scope: !3827)
!3851 = distinct !DISubprogram(name: "halUART_Write_VFIFO_Data", scope: !293, file: !293, line: 251, type: !3852, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !3854)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{null, !3649, !1255, !61}
!3854 = !{!3855, !3856, !3857, !3858}
!3855 = !DILocalVariable(name: "u_port", arg: 1, scope: !3851, file: !293, line: 251, type: !3649)
!3856 = !DILocalVariable(name: "data", arg: 2, scope: !3851, file: !293, line: 251, type: !1255)
!3857 = !DILocalVariable(name: "length", arg: 3, scope: !3851, file: !293, line: 251, type: !61)
!3858 = !DILocalVariable(name: "idx", scope: !3851, file: !293, line: 253, type: !159)
!3859 = !DILocation(line: 0, scope: !3851)
!3860 = !DILocation(line: 254, column: 23, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3862, file: !293, line: 254, column: 5)
!3862 = distinct !DILexicalBlock(scope: !3851, file: !293, line: 254, column: 5)
!3863 = !DILocation(line: 254, column: 5, scope: !3862)
!3864 = !DILocation(line: 255, column: 13, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3861, file: !293, line: 254, column: 40)
!3866 = !DILocation(line: 256, column: 61, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3868, file: !293, line: 255, column: 35)
!3868 = distinct !DILexicalBlock(scope: !3865, file: !293, line: 255, column: 13)
!3869 = !DILocation(line: 256, column: 59, scope: !3867)
!3870 = !DILocation(line: 257, column: 9, scope: !3867)
!3871 = !DILocation(line: 258, column: 61, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3873, file: !293, line: 257, column: 42)
!3873 = distinct !DILexicalBlock(scope: !3868, file: !293, line: 257, column: 20)
!3874 = !DILocation(line: 258, column: 59, scope: !3872)
!3875 = !DILocation(line: 259, column: 9, scope: !3872)
!3876 = !DILocation(line: 254, column: 36, scope: !3861)
!3877 = distinct !{!3877, !3863, !3878}
!3878 = !DILocation(line: 261, column: 5, scope: !3862)
!3879 = !DILocation(line: 264, column: 1, scope: !3851)
!3880 = distinct !DISubprogram(name: "halUART_Tx_VFIFO_Initialize", scope: !293, file: !293, line: 266, type: !3881, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !3883)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{null, !3649, !210, !61, !61}
!3883 = !{!3884, !3885, !3886, !3887}
!3884 = !DILocalVariable(name: "u_port", arg: 1, scope: !3880, file: !293, line: 266, type: !3649)
!3885 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !3880, file: !293, line: 266, type: !210)
!3886 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !3880, file: !293, line: 266, type: !61)
!3887 = !DILocalVariable(name: "threshold", arg: 4, scope: !3880, file: !293, line: 266, type: !61)
!3888 = !DILocation(line: 0, scope: !3880)
!3889 = !DILocation(line: 268, column: 9, scope: !3880)
!3890 = !DILocation(line: 274, column: 5, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3892, file: !293, line: 271, column: 38)
!3892 = distinct !DILexicalBlock(scope: !3893, file: !293, line: 271, column: 16)
!3893 = distinct !DILexicalBlock(scope: !3880, file: !293, line: 268, column: 9)
!3894 = !DILocation(line: 0, scope: !3893)
!3895 = !DILocation(line: 276, column: 1, scope: !3880)
!3896 = distinct !DISubprogram(name: "halUART_Rx_VFIFO_Initialize", scope: !293, file: !293, line: 278, type: !3897, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !3899)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{null, !3649, !210, !61, !61, !61, !61}
!3899 = !{!3900, !3901, !3902, !3903, !3904, !3905}
!3900 = !DILocalVariable(name: "u_port", arg: 1, scope: !3896, file: !293, line: 278, type: !3649)
!3901 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !3896, file: !293, line: 278, type: !210)
!3902 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !3896, file: !293, line: 278, type: !61)
!3903 = !DILocalVariable(name: "alert_length", arg: 4, scope: !3896, file: !293, line: 278, type: !61)
!3904 = !DILocalVariable(name: "threshold", arg: 5, scope: !3896, file: !293, line: 278, type: !61)
!3905 = !DILocalVariable(name: "timeout", arg: 6, scope: !3896, file: !293, line: 278, type: !61)
!3906 = !DILocation(line: 0, scope: !3896)
!3907 = !DILocation(line: 280, column: 9, scope: !3896)
!3908 = !DILocation(line: 286, column: 5, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !3910, file: !293, line: 283, column: 38)
!3910 = distinct !DILexicalBlock(scope: !3911, file: !293, line: 283, column: 16)
!3911 = distinct !DILexicalBlock(scope: !3896, file: !293, line: 280, column: 9)
!3912 = !DILocation(line: 0, scope: !3911)
!3913 = !DILocation(line: 288, column: 1, scope: !3896)
!3914 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_Callback", scope: !293, file: !293, line: 290, type: !3915, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !3917)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{null, !3649, !717}
!3917 = !{!3918, !3919}
!3918 = !DILocalVariable(name: "u_port", arg: 1, scope: !3914, file: !293, line: 290, type: !3649)
!3919 = !DILocalVariable(name: "func", arg: 2, scope: !3914, file: !293, line: 290, type: !717)
!3920 = !DILocation(line: 0, scope: !3914)
!3921 = !DILocation(line: 292, column: 9, scope: !3914)
!3922 = !DILocation(line: 296, column: 5, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3924, file: !293, line: 294, column: 38)
!3924 = distinct !DILexicalBlock(scope: !3925, file: !293, line: 294, column: 16)
!3925 = distinct !DILexicalBlock(scope: !3914, file: !293, line: 292, column: 9)
!3926 = !DILocation(line: 0, scope: !3925)
!3927 = !DILocation(line: 298, column: 1, scope: !3914)
!3928 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_TO_Callback", scope: !293, file: !293, line: 300, type: !3915, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !3929)
!3929 = !{!3930, !3931}
!3930 = !DILocalVariable(name: "u_port", arg: 1, scope: !3928, file: !293, line: 300, type: !3649)
!3931 = !DILocalVariable(name: "func", arg: 2, scope: !3928, file: !293, line: 300, type: !717)
!3932 = !DILocation(line: 0, scope: !3928)
!3933 = !DILocation(line: 302, column: 9, scope: !3928)
!3934 = !DILocation(line: 306, column: 5, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3936, file: !293, line: 304, column: 38)
!3936 = distinct !DILexicalBlock(scope: !3937, file: !293, line: 304, column: 16)
!3937 = distinct !DILexicalBlock(scope: !3928, file: !293, line: 302, column: 9)
!3938 = !DILocation(line: 0, scope: !3937)
!3939 = !DILocation(line: 308, column: 1, scope: !3928)
!3940 = distinct !DISubprogram(name: "uart_set_hardware_flowcontrol", scope: !293, file: !293, line: 310, type: !3703, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !3941)
!3941 = !{!3942, !3943, !3944, !3945}
!3942 = !DILocalVariable(name: "u_port", arg: 1, scope: !3940, file: !293, line: 310, type: !3649)
!3943 = !DILocalVariable(name: "base", scope: !3940, file: !293, line: 312, type: !30)
!3944 = !DILocalVariable(name: "EFR", scope: !3940, file: !293, line: 313, type: !1443)
!3945 = !DILocalVariable(name: "LCR", scope: !3940, file: !293, line: 313, type: !1443)
!3946 = !DILocation(line: 0, scope: !3940)
!3947 = !DILocation(line: 312, column: 25, scope: !3940)
!3948 = !DILocation(line: 315, column: 11, scope: !3940)
!3949 = !DILocation(line: 317, column: 33, scope: !3940)
!3950 = !DILocation(line: 318, column: 11, scope: !3940)
!3951 = !DILocation(line: 320, column: 35, scope: !3940)
!3952 = !DILocation(line: 320, column: 33, scope: !3940)
!3953 = !DILocation(line: 322, column: 5, scope: !3940)
!3954 = !DILocation(line: 322, column: 39, scope: !3940)
!3955 = !DILocation(line: 324, column: 33, scope: !3940)
!3956 = !DILocation(line: 325, column: 5, scope: !3940)
!3957 = !DILocation(line: 325, column: 33, scope: !3940)
!3958 = !DILocation(line: 327, column: 35, scope: !3940)
!3959 = !DILocation(line: 327, column: 33, scope: !3940)
!3960 = !DILocation(line: 328, column: 1, scope: !3940)
!3961 = distinct !DISubprogram(name: "uart_set_software_flowcontrol", scope: !293, file: !293, line: 330, type: !3962, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !3964)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{null, !3649, !54, !54, !54}
!3964 = !{!3965, !3966, !3967, !3968, !3969, !3970, !3971}
!3965 = !DILocalVariable(name: "u_port", arg: 1, scope: !3961, file: !293, line: 330, type: !3649)
!3966 = !DILocalVariable(name: "xon", arg: 2, scope: !3961, file: !293, line: 330, type: !54)
!3967 = !DILocalVariable(name: "xoff", arg: 3, scope: !3961, file: !293, line: 330, type: !54)
!3968 = !DILocalVariable(name: "escape_character", arg: 4, scope: !3961, file: !293, line: 330, type: !54)
!3969 = !DILocalVariable(name: "base", scope: !3961, file: !293, line: 332, type: !30)
!3970 = !DILocalVariable(name: "EFR", scope: !3961, file: !293, line: 333, type: !1443)
!3971 = !DILocalVariable(name: "LCR", scope: !3961, file: !293, line: 333, type: !1443)
!3972 = !DILocation(line: 0, scope: !3961)
!3973 = !DILocation(line: 332, column: 25, scope: !3961)
!3974 = !DILocation(line: 335, column: 11, scope: !3961)
!3975 = !DILocation(line: 337, column: 33, scope: !3961)
!3976 = !DILocation(line: 338, column: 36, scope: !3961)
!3977 = !DILocation(line: 338, column: 5, scope: !3961)
!3978 = !DILocation(line: 338, column: 34, scope: !3961)
!3979 = !DILocation(line: 339, column: 5, scope: !3961)
!3980 = !DILocation(line: 339, column: 34, scope: !3961)
!3981 = !DILocation(line: 340, column: 37, scope: !3961)
!3982 = !DILocation(line: 340, column: 5, scope: !3961)
!3983 = !DILocation(line: 340, column: 35, scope: !3961)
!3984 = !DILocation(line: 341, column: 5, scope: !3961)
!3985 = !DILocation(line: 341, column: 35, scope: !3961)
!3986 = !DILocation(line: 343, column: 11, scope: !3961)
!3987 = !DILocation(line: 345, column: 35, scope: !3961)
!3988 = !DILocation(line: 345, column: 33, scope: !3961)
!3989 = !DILocation(line: 347, column: 35, scope: !3961)
!3990 = !DILocation(line: 347, column: 33, scope: !3961)
!3991 = !DILocation(line: 349, column: 43, scope: !3961)
!3992 = !DILocation(line: 349, column: 5, scope: !3961)
!3993 = !DILocation(line: 349, column: 41, scope: !3961)
!3994 = !DILocation(line: 350, column: 5, scope: !3961)
!3995 = !DILocation(line: 350, column: 39, scope: !3961)
!3996 = !DILocation(line: 351, column: 1, scope: !3961)
!3997 = distinct !DISubprogram(name: "uart_disable_flowcontrol", scope: !293, file: !293, line: 353, type: !3703, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !3998)
!3998 = !{!3999, !4000, !4001}
!3999 = !DILocalVariable(name: "u_port", arg: 1, scope: !3997, file: !293, line: 353, type: !3649)
!4000 = !DILocalVariable(name: "base", scope: !3997, file: !293, line: 355, type: !30)
!4001 = !DILocalVariable(name: "LCR", scope: !3997, file: !293, line: 356, type: !1443)
!4002 = !DILocation(line: 0, scope: !3997)
!4003 = !DILocation(line: 355, column: 25, scope: !3997)
!4004 = !DILocation(line: 358, column: 11, scope: !3997)
!4005 = !DILocation(line: 360, column: 33, scope: !3997)
!4006 = !DILocation(line: 362, column: 5, scope: !3997)
!4007 = !DILocation(line: 362, column: 33, scope: !3997)
!4008 = !DILocation(line: 364, column: 33, scope: !3997)
!4009 = !DILocation(line: 366, column: 35, scope: !3997)
!4010 = !DILocation(line: 366, column: 33, scope: !3997)
!4011 = !DILocation(line: 367, column: 1, scope: !3997)
!4012 = distinct !DISubprogram(name: "uart_set_sleep_mode", scope: !293, file: !293, line: 370, type: !3703, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !4013)
!4013 = !{!4014, !4015}
!4014 = !DILocalVariable(name: "u_port", arg: 1, scope: !4012, file: !293, line: 370, type: !3649)
!4015 = !DILocalVariable(name: "base", scope: !4012, file: !293, line: 372, type: !30)
!4016 = !DILocation(line: 0, scope: !4012)
!4017 = !DILocation(line: 372, column: 25, scope: !4012)
!4018 = !DILocation(line: 374, column: 5, scope: !4012)
!4019 = !DILocation(line: 374, column: 38, scope: !4012)
!4020 = !DILocation(line: 375, column: 1, scope: !4012)
!4021 = distinct !DISubprogram(name: "uart_unmask_send_interrupt", scope: !293, file: !293, line: 377, type: !3703, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !4022)
!4022 = !{!4023, !4024, !4025, !4026}
!4023 = !DILocalVariable(name: "u_port", arg: 1, scope: !4021, file: !293, line: 377, type: !3649)
!4024 = !DILocalVariable(name: "base", scope: !4021, file: !293, line: 379, type: !30)
!4025 = !DILocalVariable(name: "IER", scope: !4021, file: !293, line: 380, type: !1443)
!4026 = !DILocalVariable(name: "LCR", scope: !4021, file: !293, line: 380, type: !1443)
!4027 = !DILocation(line: 0, scope: !4021)
!4028 = !DILocation(line: 379, column: 25, scope: !4021)
!4029 = !DILocation(line: 382, column: 11, scope: !4021)
!4030 = !DILocation(line: 383, column: 33, scope: !4021)
!4031 = !DILocation(line: 385, column: 11, scope: !4021)
!4032 = !DILocation(line: 387, column: 35, scope: !4021)
!4033 = !DILocation(line: 387, column: 33, scope: !4021)
!4034 = !DILocation(line: 389, column: 35, scope: !4021)
!4035 = !DILocation(line: 389, column: 33, scope: !4021)
!4036 = !DILocation(line: 391, column: 5, scope: !4021)
!4037 = !DILocation(line: 391, column: 38, scope: !4021)
!4038 = !DILocation(line: 392, column: 1, scope: !4021)
!4039 = distinct !DISubprogram(name: "uart_mask_send_interrupt", scope: !293, file: !293, line: 394, type: !3703, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !4040)
!4040 = !{!4041, !4042, !4043, !4044}
!4041 = !DILocalVariable(name: "u_port", arg: 1, scope: !4039, file: !293, line: 394, type: !3649)
!4042 = !DILocalVariable(name: "base", scope: !4039, file: !293, line: 396, type: !30)
!4043 = !DILocalVariable(name: "IER", scope: !4039, file: !293, line: 397, type: !1443)
!4044 = !DILocalVariable(name: "LCR", scope: !4039, file: !293, line: 397, type: !1443)
!4045 = !DILocation(line: 0, scope: !4039)
!4046 = !DILocation(line: 396, column: 25, scope: !4039)
!4047 = !DILocation(line: 399, column: 11, scope: !4039)
!4048 = !DILocation(line: 400, column: 33, scope: !4039)
!4049 = !DILocation(line: 402, column: 11, scope: !4039)
!4050 = !DILocation(line: 403, column: 9, scope: !4039)
!4051 = !DILocation(line: 404, column: 33, scope: !4039)
!4052 = !DILocation(line: 406, column: 35, scope: !4039)
!4053 = !DILocation(line: 406, column: 33, scope: !4039)
!4054 = !DILocation(line: 408, column: 5, scope: !4039)
!4055 = !DILocation(line: 408, column: 38, scope: !4039)
!4056 = !DILocation(line: 409, column: 1, scope: !4039)
!4057 = distinct !DISubprogram(name: "uart_interrupt_handler", scope: !293, file: !293, line: 411, type: !563, scopeLine: 412, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !4058)
!4058 = !{!4059, !4060, !4061, !4062}
!4059 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4057, file: !293, line: 411, type: !339)
!4060 = !DILocalVariable(name: "u_port", scope: !4057, file: !293, line: 413, type: !3649)
!4061 = !DILocalVariable(name: "base", scope: !4057, file: !293, line: 414, type: !30)
!4062 = !DILocalVariable(name: "IIR", scope: !4057, file: !293, line: 415, type: !1443)
!4063 = !DILocation(line: 0, scope: !4057)
!4064 = !DILocation(line: 417, column: 20, scope: !4065)
!4065 = distinct !DILexicalBlock(scope: !4057, file: !293, line: 417, column: 9)
!4066 = !DILocation(line: 425, column: 11, scope: !4057)
!4067 = !DILocation(line: 426, column: 17, scope: !4057)
!4068 = !DILocation(line: 426, column: 5, scope: !4057)
!4069 = !DILocation(line: 428, column: 13, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4057, file: !293, line: 426, column: 25)
!4071 = !DILocation(line: 429, column: 13, scope: !4070)
!4072 = !DILocation(line: 433, column: 1, scope: !4057)
!4073 = distinct !DISubprogram(name: "uart_reset_default_value", scope: !293, file: !293, line: 436, type: !3703, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !4074)
!4074 = !{!4075, !4076}
!4075 = !DILocalVariable(name: "u_port", arg: 1, scope: !4073, file: !293, line: 436, type: !3649)
!4076 = !DILocalVariable(name: "base", scope: !4073, file: !293, line: 438, type: !30)
!4077 = !DILocation(line: 0, scope: !4073)
!4078 = !DILocation(line: 438, column: 25, scope: !4073)
!4079 = !DILocation(line: 440, column: 5, scope: !4073)
!4080 = !DILocation(line: 440, column: 33, scope: !4073)
!4081 = !DILocation(line: 441, column: 5, scope: !4073)
!4082 = !DILocation(line: 441, column: 33, scope: !4073)
!4083 = !DILocation(line: 442, column: 5, scope: !4073)
!4084 = !DILocation(line: 442, column: 34, scope: !4073)
!4085 = !DILocation(line: 443, column: 5, scope: !4073)
!4086 = !DILocation(line: 443, column: 35, scope: !4073)
!4087 = !DILocation(line: 445, column: 33, scope: !4073)
!4088 = !DILocation(line: 446, column: 5, scope: !4073)
!4089 = !DILocation(line: 446, column: 33, scope: !4073)
!4090 = !DILocation(line: 447, column: 5, scope: !4073)
!4091 = !DILocation(line: 447, column: 33, scope: !4073)
!4092 = !DILocation(line: 449, column: 33, scope: !4073)
!4093 = !DILocation(line: 450, column: 33, scope: !4073)
!4094 = !DILocation(line: 451, column: 33, scope: !4073)
!4095 = !DILocation(line: 453, column: 33, scope: !4073)
!4096 = !DILocation(line: 454, column: 33, scope: !4073)
!4097 = !DILocation(line: 455, column: 33, scope: !4073)
!4098 = !DILocation(line: 457, column: 33, scope: !4073)
!4099 = !DILocation(line: 458, column: 5, scope: !4073)
!4100 = !DILocation(line: 458, column: 33, scope: !4073)
!4101 = !DILocation(line: 459, column: 5, scope: !4073)
!4102 = !DILocation(line: 459, column: 39, scope: !4073)
!4103 = !DILocation(line: 460, column: 5, scope: !4073)
!4104 = !DILocation(line: 460, column: 40, scope: !4073)
!4105 = !DILocation(line: 461, column: 5, scope: !4073)
!4106 = !DILocation(line: 461, column: 42, scope: !4073)
!4107 = !DILocation(line: 462, column: 5, scope: !4073)
!4108 = !DILocation(line: 462, column: 42, scope: !4073)
!4109 = !DILocation(line: 463, column: 5, scope: !4073)
!4110 = !DILocation(line: 463, column: 35, scope: !4073)
!4111 = !DILocation(line: 464, column: 5, scope: !4073)
!4112 = !DILocation(line: 464, column: 41, scope: !4073)
!4113 = !DILocation(line: 465, column: 5, scope: !4073)
!4114 = !DILocation(line: 465, column: 39, scope: !4073)
!4115 = !DILocation(line: 466, column: 5, scope: !4073)
!4116 = !DILocation(line: 466, column: 38, scope: !4073)
!4117 = !DILocation(line: 467, column: 5, scope: !4073)
!4118 = !DILocation(line: 467, column: 42, scope: !4073)
!4119 = !DILocation(line: 468, column: 5, scope: !4073)
!4120 = !DILocation(line: 468, column: 45, scope: !4073)
!4121 = !DILocation(line: 469, column: 5, scope: !4073)
!4122 = !DILocation(line: 469, column: 39, scope: !4073)
!4123 = !DILocation(line: 470, column: 5, scope: !4073)
!4124 = !DILocation(line: 470, column: 39, scope: !4073)
!4125 = !DILocation(line: 471, column: 5, scope: !4073)
!4126 = !DILocation(line: 471, column: 42, scope: !4073)
!4127 = !DILocation(line: 472, column: 1, scope: !4073)
!4128 = distinct !DISubprogram(name: "uart_query_empty", scope: !293, file: !293, line: 474, type: !3703, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !292, retainedNodes: !4129)
!4129 = !{!4130, !4131}
!4130 = !DILocalVariable(name: "u_port", arg: 1, scope: !4128, file: !293, line: 474, type: !3649)
!4131 = !DILocalVariable(name: "base", scope: !4128, file: !293, line: 476, type: !30)
!4132 = !DILocation(line: 0, scope: !4128)
!4133 = !DILocation(line: 476, column: 25, scope: !4128)
!4134 = !DILocation(line: 478, column: 5, scope: !4128)
!4135 = !DILocation(line: 478, column: 14, scope: !4128)
!4136 = !DILocation(line: 478, column: 42, scope: !4128)
!4137 = !DILocation(line: 478, column: 12, scope: !4128)
!4138 = distinct !{!4138, !4134, !4139}
!4139 = !DILocation(line: 478, column: 50, scope: !4128)
!4140 = !DILocation(line: 479, column: 1, scope: !4128)
!4141 = distinct !DISubprogram(name: "log_hal_fatal_internal", scope: !1076, file: !1076, line: 64, type: !4142, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1075, retainedNodes: !4144)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{null, !331, !7, !331, null}
!4144 = !{!4145, !4146, !4147, !4148, !4157}
!4145 = !DILocalVariable(name: "func", arg: 1, scope: !4141, file: !1076, line: 64, type: !331)
!4146 = !DILocalVariable(name: "line", arg: 2, scope: !4141, file: !1076, line: 64, type: !7)
!4147 = !DILocalVariable(name: "message", arg: 3, scope: !4141, file: !1076, line: 64, type: !331)
!4148 = !DILocalVariable(name: "ap", scope: !4141, file: !1076, line: 66, type: !4149)
!4149 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !4150, line: 46, baseType: !4151)
!4150 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/stdio.h", directory: "/home/mjshen/RTOSExploration")
!4151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4152, line: 32, baseType: !4153)
!4152 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stdarg.h", directory: "")
!4153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1076, baseType: !4154)
!4154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !4155)
!4155 = !{!4156}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !4154, file: !1076, line: 66, baseType: !51, size: 32)
!4157 = !DILocalVariable(name: "mask", scope: !4141, file: !1076, line: 68, type: !61)
!4158 = !DILocation(line: 0, scope: !4141)
!4159 = !DILocation(line: 66, column: 5, scope: !4141)
!4160 = !DILocation(line: 66, column: 13, scope: !4141)
!4161 = !DILocation(line: 68, column: 5, scope: !4141)
!4162 = !DILocation(line: 69, column: 5, scope: !4141)
!4163 = !DILocation(line: 71, column: 5, scope: !4141)
!4164 = !DILocation(line: 72, column: 5, scope: !4141)
!4165 = !DILocation(line: 73, column: 5, scope: !4141)
!4166 = !DILocation(line: 75, column: 37, scope: !4141)
!4167 = !DILocation(line: 75, column: 5, scope: !4141)
!4168 = !DILocation(line: 77, column: 1, scope: !4141)
!4169 = distinct !DISubprogram(name: "log_hal_error_internal", scope: !1076, file: !1076, line: 78, type: !4142, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1075, retainedNodes: !4170)
!4170 = !{!4171, !4172, !4173, !4174, !4175}
!4171 = !DILocalVariable(name: "func", arg: 1, scope: !4169, file: !1076, line: 78, type: !331)
!4172 = !DILocalVariable(name: "line", arg: 2, scope: !4169, file: !1076, line: 78, type: !7)
!4173 = !DILocalVariable(name: "message", arg: 3, scope: !4169, file: !1076, line: 78, type: !331)
!4174 = !DILocalVariable(name: "ap", scope: !4169, file: !1076, line: 80, type: !4149)
!4175 = !DILocalVariable(name: "mask", scope: !4169, file: !1076, line: 82, type: !61)
!4176 = !DILocation(line: 0, scope: !4169)
!4177 = !DILocation(line: 80, column: 5, scope: !4169)
!4178 = !DILocation(line: 80, column: 13, scope: !4169)
!4179 = !DILocation(line: 82, column: 5, scope: !4169)
!4180 = !DILocation(line: 83, column: 5, scope: !4169)
!4181 = !DILocation(line: 85, column: 5, scope: !4169)
!4182 = !DILocation(line: 86, column: 5, scope: !4169)
!4183 = !DILocation(line: 87, column: 5, scope: !4169)
!4184 = !DILocation(line: 89, column: 37, scope: !4169)
!4185 = !DILocation(line: 89, column: 5, scope: !4169)
!4186 = !DILocation(line: 91, column: 1, scope: !4169)
!4187 = distinct !DISubprogram(name: "log_hal_warning_internal", scope: !1076, file: !1076, line: 92, type: !4142, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1075, retainedNodes: !4188)
!4188 = !{!4189, !4190, !4191, !4192, !4193}
!4189 = !DILocalVariable(name: "func", arg: 1, scope: !4187, file: !1076, line: 92, type: !331)
!4190 = !DILocalVariable(name: "line", arg: 2, scope: !4187, file: !1076, line: 92, type: !7)
!4191 = !DILocalVariable(name: "message", arg: 3, scope: !4187, file: !1076, line: 92, type: !331)
!4192 = !DILocalVariable(name: "ap", scope: !4187, file: !1076, line: 94, type: !4149)
!4193 = !DILocalVariable(name: "mask", scope: !4187, file: !1076, line: 96, type: !61)
!4194 = !DILocation(line: 0, scope: !4187)
!4195 = !DILocation(line: 94, column: 5, scope: !4187)
!4196 = !DILocation(line: 94, column: 13, scope: !4187)
!4197 = !DILocation(line: 96, column: 5, scope: !4187)
!4198 = !DILocation(line: 97, column: 5, scope: !4187)
!4199 = !DILocation(line: 99, column: 5, scope: !4187)
!4200 = !DILocation(line: 100, column: 5, scope: !4187)
!4201 = !DILocation(line: 101, column: 5, scope: !4187)
!4202 = !DILocation(line: 103, column: 37, scope: !4187)
!4203 = !DILocation(line: 103, column: 5, scope: !4187)
!4204 = !DILocation(line: 105, column: 1, scope: !4187)
!4205 = distinct !DISubprogram(name: "log_hal_info_internal", scope: !1076, file: !1076, line: 106, type: !4142, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1075, retainedNodes: !4206)
!4206 = !{!4207, !4208, !4209, !4210, !4211}
!4207 = !DILocalVariable(name: "func", arg: 1, scope: !4205, file: !1076, line: 106, type: !331)
!4208 = !DILocalVariable(name: "line", arg: 2, scope: !4205, file: !1076, line: 106, type: !7)
!4209 = !DILocalVariable(name: "message", arg: 3, scope: !4205, file: !1076, line: 106, type: !331)
!4210 = !DILocalVariable(name: "ap", scope: !4205, file: !1076, line: 108, type: !4149)
!4211 = !DILocalVariable(name: "mask", scope: !4205, file: !1076, line: 110, type: !61)
!4212 = !DILocation(line: 0, scope: !4205)
!4213 = !DILocation(line: 108, column: 5, scope: !4205)
!4214 = !DILocation(line: 108, column: 13, scope: !4205)
!4215 = !DILocation(line: 110, column: 5, scope: !4205)
!4216 = !DILocation(line: 111, column: 5, scope: !4205)
!4217 = !DILocation(line: 113, column: 5, scope: !4205)
!4218 = !DILocation(line: 114, column: 5, scope: !4205)
!4219 = !DILocation(line: 115, column: 5, scope: !4205)
!4220 = !DILocation(line: 117, column: 37, scope: !4205)
!4221 = !DILocation(line: 117, column: 5, scope: !4205)
!4222 = !DILocation(line: 119, column: 1, scope: !4205)
!4223 = distinct !DISubprogram(name: "log_hal_dump_internal", scope: !1076, file: !1076, line: 121, type: !4224, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1075, retainedNodes: !4228)
!4224 = !DISubroutineType(types: !4225)
!4225 = !{null, !331, !7, !331, !4226, !7, null}
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 32)
!4227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4228 = !{!4229, !4230, !4231, !4232, !4233}
!4229 = !DILocalVariable(name: "func", arg: 1, scope: !4223, file: !1076, line: 121, type: !331)
!4230 = !DILocalVariable(name: "line", arg: 2, scope: !4223, file: !1076, line: 121, type: !7)
!4231 = !DILocalVariable(name: "message", arg: 3, scope: !4223, file: !1076, line: 121, type: !331)
!4232 = !DILocalVariable(name: "data", arg: 4, scope: !4223, file: !1076, line: 121, type: !4226)
!4233 = !DILocalVariable(name: "length", arg: 5, scope: !4223, file: !1076, line: 121, type: !7)
!4234 = !DILocation(line: 0, scope: !4223)
!4235 = !DILocation(line: 123, column: 1, scope: !4223)
!4236 = distinct !DISubprogram(name: "hal_cache_init", scope: !343, file: !343, line: 53, type: !4237, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !4240)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!4239}
!4239 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_status_t", file: !346, line: 172, baseType: !345)
!4240 = !{!4241, !4243}
!4241 = !DILocalVariable(name: "region", scope: !4236, file: !343, line: 55, type: !4242)
!4242 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_region_t", file: !346, line: 204, baseType: !356)
!4243 = !DILocalVariable(name: "irq_flag", scope: !4236, file: !343, line: 56, type: !61)
!4244 = !DILocation(line: 59, column: 16, scope: !4236)
!4245 = !DILocation(line: 0, scope: !4236)
!4246 = !DILocation(line: 62, column: 9, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4236, file: !343, line: 62, column: 9)
!4248 = !DILocation(line: 62, column: 9, scope: !4236)
!4249 = !DILocation(line: 64, column: 9, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4247, file: !343, line: 62, column: 39)
!4251 = !DILocation(line: 66, column: 9, scope: !4250)
!4252 = !DILocation(line: 69, column: 24, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4247, file: !343, line: 67, column: 12)
!4254 = !DILocation(line: 72, column: 9, scope: !4253)
!4255 = !DILocation(line: 77, column: 5, scope: !4236)
!4256 = !DILocation(line: 80, column: 22, scope: !4236)
!4257 = !DILocation(line: 81, column: 28, scope: !4236)
!4258 = !DILocation(line: 84, column: 19, scope: !4236)
!4259 = !DILocation(line: 85, column: 23, scope: !4236)
!4260 = !DILocation(line: 88, column: 5, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !4236, file: !343, line: 88, column: 5)
!4262 = !DILocation(line: 90, column: 9, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4264, file: !343, line: 88, column: 81)
!4264 = distinct !DILexicalBlock(scope: !4261, file: !343, line: 88, column: 5)
!4265 = !DILocation(line: 90, column: 38, scope: !4263)
!4266 = !DILocation(line: 91, column: 9, scope: !4263)
!4267 = !DILocation(line: 91, column: 42, scope: !4263)
!4268 = !DILocation(line: 94, column: 45, scope: !4263)
!4269 = !DILocation(line: 94, column: 47, scope: !4263)
!4270 = !DILocation(line: 95, column: 49, scope: !4263)
!4271 = !DILocation(line: 95, column: 51, scope: !4263)
!4272 = !DILocation(line: 88, column: 77, scope: !4264)
!4273 = !DILocation(line: 88, column: 46, scope: !4264)
!4274 = distinct !{!4274, !4260, !4275}
!4275 = !DILocation(line: 96, column: 5, scope: !4261)
!4276 = !DILocation(line: 99, column: 1, scope: !4236)
!4277 = distinct !DISubprogram(name: "hal_cache_invalidate_all_cache_lines", scope: !343, file: !343, line: 327, type: !4237, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !4278)
!4278 = !{!4279}
!4279 = !DILocalVariable(name: "irq_flag", scope: !4277, file: !343, line: 329, type: !61)
!4280 = !DILocation(line: 332, column: 16, scope: !4277)
!4281 = !DILocation(line: 0, scope: !4277)
!4282 = !DILocation(line: 335, column: 21, scope: !4277)
!4283 = !DILocation(line: 336, column: 21, scope: !4277)
!4284 = !DILocation(line: 339, column: 21, scope: !4277)
!4285 = !DILocation(line: 340, column: 21, scope: !4277)
!4286 = !DILocation(line: 434, column: 3, scope: !4287, inlinedAt: !4289)
!4287 = distinct !DISubprogram(name: "__ISB", scope: !4288, file: !4288, line: 432, type: !154, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !1113)
!4288 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmInstr.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/templates/no_rtos_initialize_system/GCC")
!4289 = distinct !DILocation(line: 343, column: 5, scope: !4277)
!4290 = !{i64 296581}
!4291 = !DILocation(line: 346, column: 5, scope: !4277)
!4292 = !DILocation(line: 348, column: 5, scope: !4277)
!4293 = distinct !DISubprogram(name: "hal_cache_deinit", scope: !343, file: !343, line: 101, type: !4237, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !4294)
!4294 = !{!4295}
!4295 = !DILocalVariable(name: "region", scope: !4293, file: !343, line: 103, type: !4242)
!4296 = !DILocation(line: 107, column: 5, scope: !4293)
!4297 = !DILocation(line: 110, column: 22, scope: !4293)
!4298 = !DILocation(line: 111, column: 28, scope: !4293)
!4299 = !DILocation(line: 114, column: 19, scope: !4293)
!4300 = !DILocation(line: 115, column: 23, scope: !4293)
!4301 = !DILocation(line: 0, scope: !4293)
!4302 = !DILocation(line: 118, column: 5, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4293, file: !343, line: 118, column: 5)
!4304 = !DILocation(line: 120, column: 9, scope: !4305)
!4305 = distinct !DILexicalBlock(scope: !4306, file: !343, line: 118, column: 81)
!4306 = distinct !DILexicalBlock(scope: !4303, file: !343, line: 118, column: 5)
!4307 = !DILocation(line: 120, column: 38, scope: !4305)
!4308 = !DILocation(line: 121, column: 9, scope: !4305)
!4309 = !DILocation(line: 121, column: 42, scope: !4305)
!4310 = !DILocation(line: 124, column: 45, scope: !4305)
!4311 = !DILocation(line: 124, column: 47, scope: !4305)
!4312 = !DILocation(line: 125, column: 49, scope: !4305)
!4313 = !DILocation(line: 125, column: 51, scope: !4305)
!4314 = !DILocation(line: 118, column: 77, scope: !4306)
!4315 = !DILocation(line: 118, column: 46, scope: !4306)
!4316 = distinct !{!4316, !4302, !4317}
!4317 = !DILocation(line: 126, column: 5, scope: !4303)
!4318 = !DILocation(line: 129, column: 20, scope: !4293)
!4319 = !DILocation(line: 131, column: 5, scope: !4293)
!4320 = distinct !DISubprogram(name: "hal_cache_enable", scope: !343, file: !343, line: 134, type: !4237, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !1113)
!4321 = !DILocation(line: 137, column: 45, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4320, file: !343, line: 137, column: 9)
!4323 = !DILocation(line: 137, column: 28, scope: !4322)
!4324 = !DILocation(line: 137, column: 9, scope: !4320)
!4325 = !DILocation(line: 142, column: 22, scope: !4320)
!4326 = !DILocation(line: 145, column: 28, scope: !4320)
!4327 = !DILocation(line: 145, column: 19, scope: !4320)
!4328 = !DILocation(line: 147, column: 5, scope: !4320)
!4329 = !DILocation(line: 0, scope: !4320)
!4330 = !DILocation(line: 148, column: 1, scope: !4320)
!4331 = distinct !DISubprogram(name: "hal_cache_disable", scope: !343, file: !343, line: 150, type: !4237, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !4332)
!4332 = !{!4333}
!4333 = !DILocalVariable(name: "irq_flag", scope: !4331, file: !343, line: 152, type: !61)
!4334 = !DILocation(line: 155, column: 16, scope: !4331)
!4335 = !DILocation(line: 0, scope: !4331)
!4336 = !DILocation(line: 158, column: 16, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4331, file: !343, line: 158, column: 9)
!4338 = !DILocation(line: 158, column: 26, scope: !4337)
!4339 = !DILocation(line: 158, column: 9, scope: !4331)
!4340 = !DILocation(line: 160, column: 9, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !4337, file: !343, line: 158, column: 49)
!4342 = !DILocation(line: 161, column: 5, scope: !4341)
!4343 = !DILocation(line: 164, column: 22, scope: !4331)
!4344 = !DILocation(line: 167, column: 28, scope: !4331)
!4345 = !DILocation(line: 167, column: 19, scope: !4331)
!4346 = !DILocation(line: 170, column: 5, scope: !4331)
!4347 = !DILocation(line: 172, column: 5, scope: !4331)
!4348 = distinct !DISubprogram(name: "hal_cache_region_enable", scope: !343, file: !343, line: 175, type: !4349, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !4351)
!4349 = !DISubroutineType(types: !4350)
!4350 = !{!4239, !4242}
!4351 = !{!4352}
!4352 = !DILocalVariable(name: "region", arg: 1, scope: !4348, file: !343, line: 175, type: !4242)
!4353 = !DILocation(line: 0, scope: !4348)
!4354 = !DILocation(line: 178, column: 16, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4348, file: !343, line: 178, column: 9)
!4356 = !DILocation(line: 178, column: 9, scope: !4348)
!4357 = !DILocation(line: 183, column: 9, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4348, file: !343, line: 183, column: 9)
!4359 = !DILocation(line: 183, column: 38, scope: !4358)
!4360 = !DILocation(line: 183, column: 9, scope: !4348)
!4361 = !DILocation(line: 184, column: 38, scope: !4362)
!4362 = distinct !DILexicalBlock(scope: !4358, file: !343, line: 183, column: 62)
!4363 = !DILocation(line: 184, column: 32, scope: !4362)
!4364 = !DILocation(line: 190, column: 32, scope: !4348)
!4365 = !DILocation(line: 190, column: 23, scope: !4348)
!4366 = !DILocation(line: 192, column: 5, scope: !4348)
!4367 = !DILocation(line: 193, column: 1, scope: !4348)
!4368 = distinct !DISubprogram(name: "hal_cache_region_disable", scope: !343, file: !343, line: 195, type: !4349, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !4369)
!4369 = !{!4370}
!4370 = !DILocalVariable(name: "region", arg: 1, scope: !4368, file: !343, line: 195, type: !4242)
!4371 = !DILocation(line: 0, scope: !4368)
!4372 = !DILocation(line: 198, column: 16, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4368, file: !343, line: 198, column: 9)
!4374 = !DILocation(line: 198, column: 9, scope: !4368)
!4375 = !DILocation(line: 203, column: 35, scope: !4368)
!4376 = !DILocation(line: 203, column: 31, scope: !4368)
!4377 = !DILocation(line: 203, column: 28, scope: !4368)
!4378 = !DILocation(line: 206, column: 32, scope: !4368)
!4379 = !DILocation(line: 206, column: 23, scope: !4368)
!4380 = !DILocation(line: 209, column: 41, scope: !4368)
!4381 = !DILocation(line: 209, column: 43, scope: !4368)
!4382 = !DILocation(line: 210, column: 45, scope: !4368)
!4383 = !DILocation(line: 210, column: 47, scope: !4368)
!4384 = !DILocation(line: 212, column: 5, scope: !4368)
!4385 = !DILocation(line: 213, column: 1, scope: !4368)
!4386 = distinct !DISubprogram(name: "hal_cache_set_size", scope: !343, file: !343, line: 215, type: !4387, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !4390)
!4387 = !DISubroutineType(types: !4388)
!4388 = !{!4239, !4389}
!4389 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_size_t", file: !346, line: 182, baseType: !375)
!4390 = !{!4391}
!4391 = !DILocalVariable(name: "cache_size", arg: 1, scope: !4386, file: !343, line: 215, type: !4389)
!4392 = !DILocation(line: 0, scope: !4386)
!4393 = !DILocation(line: 218, column: 20, scope: !4394)
!4394 = distinct !DILexicalBlock(scope: !4386, file: !343, line: 218, column: 9)
!4395 = !DILocation(line: 218, column: 9, scope: !4386)
!4396 = !DILocation(line: 223, column: 22, scope: !4386)
!4397 = !DILocation(line: 224, column: 37, scope: !4386)
!4398 = !DILocation(line: 224, column: 22, scope: !4386)
!4399 = !DILocation(line: 227, column: 20, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4386, file: !343, line: 227, column: 9)
!4401 = !DILocation(line: 227, column: 9, scope: !4386)
!4402 = !DILocation(line: 228, column: 26, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4400, file: !343, line: 227, column: 43)
!4404 = !DILocation(line: 229, column: 5, scope: !4403)
!4405 = !DILocation(line: 232, column: 28, scope: !4386)
!4406 = !DILocation(line: 232, column: 19, scope: !4386)
!4407 = !DILocation(line: 234, column: 5, scope: !4386)
!4408 = !DILocation(line: 235, column: 1, scope: !4386)
!4409 = distinct !DISubprogram(name: "hal_cache_region_config", scope: !343, file: !343, line: 237, type: !4410, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !4419)
!4410 = !DISubroutineType(types: !4411)
!4411 = !{!4239, !4242, !4412}
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 32)
!4413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4414)
!4414 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_region_config_t", file: !346, line: 222, baseType: !4415)
!4415 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !346, line: 219, size: 64, elements: !4416)
!4416 = !{!4417, !4418}
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "cache_region_address", scope: !4415, file: !346, line: 220, baseType: !61, size: 32)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "cache_region_size", scope: !4415, file: !346, line: 221, baseType: !61, size: 32, offset: 32)
!4419 = !{!4420, !4421}
!4420 = !DILocalVariable(name: "region", arg: 1, scope: !4409, file: !343, line: 237, type: !4242)
!4421 = !DILocalVariable(name: "region_config", arg: 2, scope: !4409, file: !343, line: 237, type: !4412)
!4422 = !DILocation(line: 0, scope: !4409)
!4423 = !DILocation(line: 240, column: 16, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !4409, file: !343, line: 240, column: 9)
!4425 = !DILocation(line: 240, column: 9, scope: !4409)
!4426 = !DILocation(line: 245, column: 23, scope: !4427)
!4427 = distinct !DILexicalBlock(scope: !4409, file: !343, line: 245, column: 9)
!4428 = !DILocation(line: 245, column: 9, scope: !4409)
!4429 = !DILocation(line: 250, column: 24, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4409, file: !343, line: 250, column: 9)
!4431 = !DILocation(line: 250, column: 45, scope: !4430)
!4432 = !DILocation(line: 250, column: 9, scope: !4409)
!4433 = !DILocation(line: 251, column: 9, scope: !4434)
!4434 = distinct !DILexicalBlock(scope: !4430, file: !343, line: 250, column: 81)
!4435 = !DILocation(line: 256, column: 24, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4409, file: !343, line: 256, column: 9)
!4437 = !DILocation(line: 256, column: 42, scope: !4436)
!4438 = !DILocation(line: 256, column: 9, scope: !4409)
!4439 = !DILocation(line: 257, column: 9, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4436, file: !343, line: 256, column: 78)
!4441 = !DILocation(line: 262, column: 5, scope: !4409)
!4442 = !DILocation(line: 262, column: 34, scope: !4409)
!4443 = !DILocation(line: 263, column: 55, scope: !4409)
!4444 = !DILocation(line: 263, column: 93, scope: !4409)
!4445 = !DILocation(line: 263, column: 76, scope: !4409)
!4446 = !DILocation(line: 263, column: 5, scope: !4409)
!4447 = !DILocation(line: 263, column: 38, scope: !4409)
!4448 = !DILocation(line: 266, column: 34, scope: !4409)
!4449 = !DILocation(line: 269, column: 45, scope: !4409)
!4450 = !DILocation(line: 269, column: 41, scope: !4409)
!4451 = !DILocation(line: 269, column: 43, scope: !4409)
!4452 = !DILocation(line: 270, column: 49, scope: !4409)
!4453 = !DILocation(line: 270, column: 45, scope: !4409)
!4454 = !DILocation(line: 270, column: 47, scope: !4409)
!4455 = !DILocation(line: 272, column: 5, scope: !4409)
!4456 = !DILocation(line: 273, column: 1, scope: !4409)
!4457 = distinct !DISubprogram(name: "hal_cache_invalidate_one_cache_line", scope: !343, file: !343, line: 275, type: !4458, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !4460)
!4458 = !DISubroutineType(types: !4459)
!4459 = !{!4239, !61}
!4460 = !{!4461, !4462}
!4461 = !DILocalVariable(name: "address", arg: 1, scope: !4457, file: !343, line: 275, type: !61)
!4462 = !DILocalVariable(name: "irq_flag", scope: !4457, file: !343, line: 277, type: !61)
!4463 = !DILocation(line: 0, scope: !4457)
!4464 = !DILocation(line: 280, column: 17, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4457, file: !343, line: 280, column: 9)
!4466 = !DILocation(line: 280, column: 9, scope: !4457)
!4467 = !DILocation(line: 284, column: 16, scope: !4457)
!4468 = !DILocation(line: 287, column: 32, scope: !4457)
!4469 = !DILocation(line: 287, column: 21, scope: !4457)
!4470 = !DILocation(line: 288, column: 21, scope: !4457)
!4471 = !DILocation(line: 434, column: 3, scope: !4287, inlinedAt: !4472)
!4472 = distinct !DILocation(line: 291, column: 5, scope: !4457)
!4473 = !DILocation(line: 294, column: 5, scope: !4457)
!4474 = !DILocation(line: 296, column: 5, scope: !4457)
!4475 = !DILocation(line: 297, column: 1, scope: !4457)
!4476 = distinct !DISubprogram(name: "hal_cache_invalidate_multiple_cache_lines", scope: !343, file: !343, line: 299, type: !4477, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !4479)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{!4239, !61, !61}
!4479 = !{!4480, !4481, !4482, !4483}
!4480 = !DILocalVariable(name: "address", arg: 1, scope: !4476, file: !343, line: 299, type: !61)
!4481 = !DILocalVariable(name: "length", arg: 2, scope: !4476, file: !343, line: 299, type: !61)
!4482 = !DILocalVariable(name: "irq_flag", scope: !4476, file: !343, line: 301, type: !61)
!4483 = !DILocalVariable(name: "end_address", scope: !4476, file: !343, line: 302, type: !61)
!4484 = !DILocation(line: 0, scope: !4476)
!4485 = !DILocation(line: 302, column: 36, scope: !4476)
!4486 = !DILocation(line: 305, column: 47, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4476, file: !343, line: 305, column: 9)
!4488 = !DILocation(line: 310, column: 16, scope: !4476)
!4489 = !DILocation(line: 313, column: 20, scope: !4476)
!4490 = !DILocation(line: 313, column: 5, scope: !4476)
!4491 = !DILocation(line: 314, column: 9, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4476, file: !343, line: 313, column: 35)
!4493 = !DILocation(line: 315, column: 17, scope: !4492)
!4494 = distinct !{!4494, !4490, !4495}
!4495 = !DILocation(line: 316, column: 5, scope: !4476)
!4496 = !DILocation(line: 434, column: 3, scope: !4287, inlinedAt: !4497)
!4497 = distinct !DILocation(line: 319, column: 5, scope: !4476)
!4498 = !DILocation(line: 322, column: 5, scope: !4476)
!4499 = !DILocation(line: 324, column: 5, scope: !4476)
!4500 = !DILocation(line: 325, column: 1, scope: !4476)
!4501 = distinct !DISubprogram(name: "hal_cache_flush_one_cache_line", scope: !343, file: !343, line: 351, type: !4458, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !4502)
!4502 = !{!4503, !4504}
!4503 = !DILocalVariable(name: "address", arg: 1, scope: !4501, file: !343, line: 351, type: !61)
!4504 = !DILocalVariable(name: "irq_flag", scope: !4501, file: !343, line: 353, type: !61)
!4505 = !DILocation(line: 0, scope: !4501)
!4506 = !DILocation(line: 356, column: 17, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4501, file: !343, line: 356, column: 9)
!4508 = !DILocation(line: 356, column: 9, scope: !4501)
!4509 = !DILocation(line: 361, column: 16, scope: !4501)
!4510 = !DILocation(line: 364, column: 32, scope: !4501)
!4511 = !DILocation(line: 364, column: 21, scope: !4501)
!4512 = !DILocation(line: 365, column: 21, scope: !4501)
!4513 = !DILocation(line: 434, column: 3, scope: !4287, inlinedAt: !4514)
!4514 = distinct !DILocation(line: 368, column: 5, scope: !4501)
!4515 = !DILocation(line: 371, column: 5, scope: !4501)
!4516 = !DILocation(line: 373, column: 5, scope: !4501)
!4517 = !DILocation(line: 374, column: 1, scope: !4501)
!4518 = distinct !DISubprogram(name: "hal_cache_flush_multiple_cache_lines", scope: !343, file: !343, line: 376, type: !4477, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !4519)
!4519 = !{!4520, !4521, !4522, !4523}
!4520 = !DILocalVariable(name: "address", arg: 1, scope: !4518, file: !343, line: 376, type: !61)
!4521 = !DILocalVariable(name: "length", arg: 2, scope: !4518, file: !343, line: 376, type: !61)
!4522 = !DILocalVariable(name: "irq_flag", scope: !4518, file: !343, line: 378, type: !61)
!4523 = !DILocalVariable(name: "end_address", scope: !4518, file: !343, line: 379, type: !61)
!4524 = !DILocation(line: 0, scope: !4518)
!4525 = !DILocation(line: 379, column: 36, scope: !4518)
!4526 = !DILocation(line: 382, column: 47, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4518, file: !343, line: 382, column: 9)
!4528 = !DILocation(line: 387, column: 16, scope: !4518)
!4529 = !DILocation(line: 390, column: 20, scope: !4518)
!4530 = !DILocation(line: 390, column: 5, scope: !4518)
!4531 = !DILocation(line: 391, column: 9, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4518, file: !343, line: 390, column: 35)
!4533 = !DILocation(line: 392, column: 17, scope: !4532)
!4534 = distinct !{!4534, !4530, !4535}
!4535 = !DILocation(line: 393, column: 5, scope: !4518)
!4536 = !DILocation(line: 434, column: 3, scope: !4287, inlinedAt: !4537)
!4537 = distinct !DILocation(line: 396, column: 5, scope: !4518)
!4538 = !DILocation(line: 399, column: 5, scope: !4518)
!4539 = !DILocation(line: 401, column: 5, scope: !4518)
!4540 = !DILocation(line: 402, column: 1, scope: !4518)
!4541 = distinct !DISubprogram(name: "hal_cache_flush_all_cache_lines", scope: !343, file: !343, line: 404, type: !4237, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !4542)
!4542 = !{!4543}
!4543 = !DILocalVariable(name: "irq_flag", scope: !4541, file: !343, line: 406, type: !61)
!4544 = !DILocation(line: 409, column: 16, scope: !4541)
!4545 = !DILocation(line: 0, scope: !4541)
!4546 = !DILocation(line: 412, column: 21, scope: !4541)
!4547 = !DILocation(line: 413, column: 21, scope: !4541)
!4548 = !DILocation(line: 434, column: 3, scope: !4287, inlinedAt: !4549)
!4549 = distinct !DILocation(line: 416, column: 5, scope: !4541)
!4550 = !DILocation(line: 419, column: 5, scope: !4541)
!4551 = !DILocation(line: 421, column: 5, scope: !4541)
!4552 = distinct !DISubprogram(name: "hal_cache_is_cacheable", scope: !343, file: !343, line: 424, type: !4553, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !342, retainedNodes: !4555)
!4553 = !DISubroutineType(types: !4554)
!4554 = !{!69, !61}
!4555 = !{!4556, !4557}
!4556 = !DILocalVariable(name: "address", arg: 1, scope: !4552, file: !343, line: 424, type: !61)
!4557 = !DILocalVariable(name: "region", scope: !4552, file: !343, line: 426, type: !4242)
!4558 = !DILocation(line: 0, scope: !4552)
!4559 = !DILocation(line: 429, column: 18, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4552, file: !343, line: 429, column: 9)
!4561 = !DILocation(line: 429, column: 28, scope: !4560)
!4562 = !DILocation(line: 429, column: 9, scope: !4552)
!4563 = !DILocation(line: 435, column: 20, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4565, file: !343, line: 435, column: 13)
!4565 = distinct !DILexicalBlock(scope: !4566, file: !343, line: 433, column: 81)
!4566 = distinct !DILexicalBlock(scope: !4567, file: !343, line: 433, column: 5)
!4567 = distinct !DILexicalBlock(scope: !4552, file: !343, line: 433, column: 5)
!4568 = !DILocation(line: 435, column: 41, scope: !4564)
!4569 = !DILocation(line: 435, column: 36, scope: !4564)
!4570 = !DILocation(line: 435, column: 13, scope: !4565)
!4571 = !DILocation(line: 436, column: 30, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4573, file: !343, line: 436, column: 17)
!4573 = distinct !DILexicalBlock(scope: !4564, file: !343, line: 435, column: 53)
!4574 = !DILocation(line: 436, column: 59, scope: !4572)
!4575 = !DILocation(line: 436, column: 26, scope: !4572)
!4576 = !DILocation(line: 436, column: 85, scope: !4572)
!4577 = !DILocation(line: 436, column: 99, scope: !4572)
!4578 = !DILocation(line: 436, column: 97, scope: !4572)
!4579 = !DILocation(line: 436, column: 17, scope: !4573)
!4580 = !DILocation(line: 433, column: 77, scope: !4566)
!4581 = !DILocation(line: 433, column: 46, scope: !4566)
!4582 = !DILocation(line: 433, column: 5, scope: !4567)
!4583 = distinct !{!4583, !4582, !4584}
!4584 = !DILocation(line: 440, column: 5, scope: !4567)
!4585 = !DILocation(line: 442, column: 1, scope: !4552)
!4586 = distinct !DISubprogram(name: "hal_nvic_init", scope: !479, file: !479, line: 60, type: !4587, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !1113)
!4587 = !DISubroutineType(types: !4588)
!4588 = !{!4589}
!4589 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_status_t", file: !482, line: 158, baseType: !481)
!4590 = !DILocation(line: 62, column: 5, scope: !4586)
!4591 = distinct !DISubprogram(name: "hal_nvic_enable_irq", scope: !479, file: !479, line: 65, type: !4592, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !4594)
!4592 = !DISubroutineType(types: !4593)
!4593 = !{!4589, !339}
!4594 = !{!4595, !4596}
!4595 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4591, file: !479, line: 65, type: !339)
!4596 = !DILocalVariable(name: "status", scope: !4591, file: !479, line: 67, type: !4589)
!4597 = !DILocation(line: 0, scope: !4591)
!4598 = !DILocation(line: 69, column: 40, scope: !4599)
!4599 = distinct !DILexicalBlock(scope: !4591, file: !479, line: 69, column: 9)
!4600 = !DILocation(line: 73, column: 9, scope: !4601)
!4601 = distinct !DILexicalBlock(scope: !4599, file: !479, line: 72, column: 12)
!4602 = !DILocation(line: 77, column: 5, scope: !4591)
!4603 = !DILocation(line: 78, column: 1, scope: !4591)
!4604 = distinct !DISubprogram(name: "NVIC_EnableIRQ", scope: !494, file: !494, line: 1494, type: !4605, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !4607)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{null, !140}
!4607 = !{!4608}
!4608 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4604, file: !494, line: 1494, type: !140)
!4609 = !DILocation(line: 0, scope: !4604)
!4610 = !DILocation(line: 1497, column: 91, scope: !4604)
!4611 = !DILocation(line: 1497, column: 61, scope: !4604)
!4612 = !DILocation(line: 1497, column: 40, scope: !4604)
!4613 = !DILocation(line: 1497, column: 3, scope: !4604)
!4614 = !DILocation(line: 1497, column: 46, scope: !4604)
!4615 = !DILocation(line: 1498, column: 1, scope: !4604)
!4616 = distinct !DISubprogram(name: "hal_nvic_disable_irq", scope: !479, file: !479, line: 80, type: !4592, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !4617)
!4617 = !{!4618, !4619}
!4618 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4616, file: !479, line: 80, type: !339)
!4619 = !DILocalVariable(name: "status", scope: !4616, file: !479, line: 82, type: !4589)
!4620 = !DILocation(line: 0, scope: !4616)
!4621 = !DILocation(line: 84, column: 40, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4616, file: !479, line: 84, column: 9)
!4623 = !DILocation(line: 88, column: 9, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !4622, file: !479, line: 87, column: 12)
!4625 = !DILocation(line: 92, column: 5, scope: !4616)
!4626 = !DILocation(line: 93, column: 1, scope: !4616)
!4627 = distinct !DISubprogram(name: "NVIC_DisableIRQ", scope: !494, file: !494, line: 1507, type: !4605, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !4628)
!4628 = !{!4629}
!4629 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4627, file: !494, line: 1507, type: !140)
!4630 = !DILocation(line: 0, scope: !4627)
!4631 = !DILocation(line: 1509, column: 65, scope: !4627)
!4632 = !DILocation(line: 1509, column: 44, scope: !4627)
!4633 = !DILocation(line: 1509, column: 32, scope: !4627)
!4634 = !DILocation(line: 1509, column: 3, scope: !4627)
!4635 = !DILocation(line: 1509, column: 39, scope: !4627)
!4636 = !DILocation(line: 1510, column: 1, scope: !4627)
!4637 = distinct !DISubprogram(name: "hal_nvic_get_pending_irq", scope: !479, file: !479, line: 95, type: !4638, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !4640)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{!61, !339}
!4640 = !{!4641, !4642}
!4641 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4637, file: !479, line: 95, type: !339)
!4642 = !DILocalVariable(name: "ret", scope: !4637, file: !479, line: 97, type: !61)
!4643 = !DILocation(line: 0, scope: !4637)
!4644 = !DILocation(line: 99, column: 40, scope: !4645)
!4645 = distinct !DILexicalBlock(scope: !4637, file: !479, line: 99, column: 9)
!4646 = !DILocation(line: 102, column: 15, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4645, file: !479, line: 101, column: 12)
!4648 = !DILocation(line: 105, column: 5, scope: !4637)
!4649 = !DILocation(line: 106, column: 1, scope: !4637)
!4650 = distinct !DISubprogram(name: "NVIC_GetPendingIRQ", scope: !494, file: !494, line: 1523, type: !4651, scopeLine: 1524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !4653)
!4651 = !DISubroutineType(types: !4652)
!4652 = !{!61, !140}
!4653 = !{!4654}
!4654 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4650, file: !494, line: 1523, type: !140)
!4655 = !DILocation(line: 0, scope: !4650)
!4656 = !DILocation(line: 1525, column: 51, scope: !4650)
!4657 = !DILocation(line: 1525, column: 23, scope: !4650)
!4658 = !DILocation(line: 1525, column: 83, scope: !4650)
!4659 = !DILocation(line: 1525, column: 22, scope: !4650)
!4660 = !DILocation(line: 1525, column: 3, scope: !4650)
!4661 = distinct !DISubprogram(name: "hal_nvic_set_pending_irq", scope: !479, file: !479, line: 108, type: !4592, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !4662)
!4662 = !{!4663, !4664}
!4663 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4661, file: !479, line: 108, type: !339)
!4664 = !DILocalVariable(name: "status", scope: !4661, file: !479, line: 110, type: !4589)
!4665 = !DILocation(line: 0, scope: !4661)
!4666 = !DILocation(line: 112, column: 40, scope: !4667)
!4667 = distinct !DILexicalBlock(scope: !4661, file: !479, line: 112, column: 9)
!4668 = !DILocation(line: 116, column: 9, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4667, file: !479, line: 115, column: 12)
!4670 = !DILocation(line: 120, column: 5, scope: !4661)
!4671 = !DILocation(line: 121, column: 1, scope: !4661)
!4672 = distinct !DISubprogram(name: "NVIC_SetPendingIRQ", scope: !494, file: !494, line: 1535, type: !4605, scopeLine: 1536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !4673)
!4673 = !{!4674}
!4674 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4672, file: !494, line: 1535, type: !140)
!4675 = !DILocation(line: 0, scope: !4672)
!4676 = !DILocation(line: 1537, column: 65, scope: !4672)
!4677 = !DILocation(line: 1537, column: 44, scope: !4672)
!4678 = !DILocation(line: 1537, column: 32, scope: !4672)
!4679 = !DILocation(line: 1537, column: 3, scope: !4672)
!4680 = !DILocation(line: 1537, column: 39, scope: !4672)
!4681 = !DILocation(line: 1538, column: 1, scope: !4672)
!4682 = distinct !DISubprogram(name: "hal_nvic_clear_pending_irq", scope: !479, file: !479, line: 123, type: !4592, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !4683)
!4683 = !{!4684, !4685}
!4684 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4682, file: !479, line: 123, type: !339)
!4685 = !DILocalVariable(name: "status", scope: !4682, file: !479, line: 125, type: !4589)
!4686 = !DILocation(line: 0, scope: !4682)
!4687 = !DILocation(line: 127, column: 40, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4682, file: !479, line: 127, column: 9)
!4689 = !DILocation(line: 131, column: 9, scope: !4690)
!4690 = distinct !DILexicalBlock(scope: !4688, file: !479, line: 130, column: 12)
!4691 = !DILocation(line: 135, column: 5, scope: !4682)
!4692 = !DILocation(line: 136, column: 1, scope: !4682)
!4693 = distinct !DISubprogram(name: "NVIC_ClearPendingIRQ", scope: !494, file: !494, line: 1547, type: !4605, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !4694)
!4694 = !{!4695}
!4695 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4693, file: !494, line: 1547, type: !140)
!4696 = !DILocation(line: 0, scope: !4693)
!4697 = !DILocation(line: 1549, column: 65, scope: !4693)
!4698 = !DILocation(line: 1549, column: 44, scope: !4693)
!4699 = !DILocation(line: 1549, column: 32, scope: !4693)
!4700 = !DILocation(line: 1549, column: 3, scope: !4693)
!4701 = !DILocation(line: 1549, column: 39, scope: !4693)
!4702 = !DILocation(line: 1550, column: 1, scope: !4693)
!4703 = distinct !DISubprogram(name: "hal_nvic_set_priority", scope: !479, file: !479, line: 138, type: !4704, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !4706)
!4704 = !DISubroutineType(types: !4705)
!4705 = !{!4589, !339, !61}
!4706 = !{!4707, !4708, !4709}
!4707 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4703, file: !479, line: 138, type: !339)
!4708 = !DILocalVariable(name: "priority", arg: 2, scope: !4703, file: !479, line: 138, type: !61)
!4709 = !DILocalVariable(name: "status", scope: !4703, file: !479, line: 140, type: !4589)
!4710 = !DILocation(line: 0, scope: !4703)
!4711 = !DILocation(line: 142, column: 40, scope: !4712)
!4712 = distinct !DILexicalBlock(scope: !4703, file: !479, line: 142, column: 9)
!4713 = !DILocation(line: 146, column: 9, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4712, file: !479, line: 145, column: 12)
!4715 = !DILocation(line: 150, column: 5, scope: !4703)
!4716 = !DILocation(line: 151, column: 1, scope: !4703)
!4717 = distinct !DISubprogram(name: "NVIC_SetPriority", scope: !494, file: !494, line: 1577, type: !4718, scopeLine: 1578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !4720)
!4718 = !DISubroutineType(types: !4719)
!4719 = !{null, !140, !61}
!4720 = !{!4721, !4722}
!4721 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4717, file: !494, line: 1577, type: !140)
!4722 = !DILocalVariable(name: "priority", arg: 2, scope: !4717, file: !494, line: 1577, type: !61)
!4723 = !DILocation(line: 0, scope: !4717)
!4724 = !DILocation(line: 1582, column: 34, scope: !4725)
!4725 = distinct !DILexicalBlock(scope: !4726, file: !494, line: 1581, column: 8)
!4726 = distinct !DILexicalBlock(scope: !4717, file: !494, line: 1579, column: 6)
!4727 = !DILocation(line: 1582, column: 5, scope: !4725)
!4728 = !DILocation(line: 1582, column: 32, scope: !4725)
!4729 = !DILocation(line: 1583, column: 1, scope: !4717)
!4730 = distinct !DISubprogram(name: "hal_nvic_get_priority", scope: !479, file: !479, line: 153, type: !4638, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !4731)
!4731 = !{!4732, !4733}
!4732 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4730, file: !479, line: 153, type: !339)
!4733 = !DILocalVariable(name: "ret", scope: !4730, file: !479, line: 155, type: !61)
!4734 = !DILocation(line: 0, scope: !4730)
!4735 = !DILocation(line: 157, column: 40, scope: !4736)
!4736 = distinct !DILexicalBlock(scope: !4730, file: !479, line: 157, column: 9)
!4737 = !DILocation(line: 160, column: 15, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4736, file: !479, line: 159, column: 12)
!4739 = !DILocation(line: 163, column: 5, scope: !4730)
!4740 = !DILocation(line: 164, column: 1, scope: !4730)
!4741 = distinct !DISubprogram(name: "NVIC_GetPriority", scope: !494, file: !494, line: 1597, type: !4651, scopeLine: 1598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !4742)
!4742 = !{!4743}
!4743 = !DILocalVariable(name: "IRQn", arg: 1, scope: !4741, file: !494, line: 1597, type: !140)
!4744 = !DILocation(line: 0, scope: !4741)
!4745 = !DILocation(line: 1603, column: 23, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !4747, file: !494, line: 1602, column: 8)
!4747 = distinct !DILexicalBlock(scope: !4741, file: !494, line: 1600, column: 6)
!4748 = !DILocation(line: 1603, column: 60, scope: !4746)
!4749 = !DILocation(line: 1604, column: 1, scope: !4741)
!4750 = distinct !DISubprogram(name: "isrC_main", scope: !479, file: !479, line: 178, type: !4587, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !4751)
!4751 = !{!4752, !4753}
!4752 = !DILocalVariable(name: "status", scope: !4750, file: !479, line: 180, type: !4589)
!4753 = !DILocalVariable(name: "irq_number", scope: !4750, file: !479, line: 181, type: !339)
!4754 = !DILocation(line: 0, scope: !4750)
!4755 = !DILocation(line: 185, column: 5, scope: !4750)
!4756 = !DILocation(line: 188, column: 34, scope: !4750)
!4757 = !DILocation(line: 189, column: 24, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4750, file: !479, line: 189, column: 9)
!4759 = !DILocation(line: 192, column: 48, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !4758, file: !479, line: 192, column: 16)
!4761 = !DILocation(line: 192, column: 62, scope: !4760)
!4762 = !DILocation(line: 192, column: 16, scope: !4758)
!4763 = !DILocation(line: 194, column: 9, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4760, file: !479, line: 192, column: 71)
!4765 = !DILocation(line: 195, column: 9, scope: !4764)
!4766 = !DILocation(line: 197, column: 55, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4760, file: !479, line: 196, column: 12)
!4768 = !DILocation(line: 197, column: 41, scope: !4767)
!4769 = !DILocation(line: 197, column: 53, scope: !4767)
!4770 = !DILocation(line: 198, column: 41, scope: !4767)
!4771 = !DILocation(line: 198, column: 9, scope: !4767)
!4772 = !DILocation(line: 202, column: 5, scope: !4750)
!4773 = !DILocation(line: 203, column: 1, scope: !4750)
!4774 = distinct !DISubprogram(name: "get_current_irq", scope: !479, file: !479, line: 166, type: !1094, scopeLine: 167, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !4775)
!4775 = !{!4776}
!4776 = !DILocalVariable(name: "irq_num", scope: !4774, file: !479, line: 168, type: !61)
!4777 = !DILocation(line: 168, column: 31, scope: !4774)
!4778 = !DILocation(line: 168, column: 36, scope: !4774)
!4779 = !DILocation(line: 0, scope: !4774)
!4780 = !DILocation(line: 169, column: 21, scope: !4774)
!4781 = !DILocation(line: 169, column: 5, scope: !4774)
!4782 = distinct !DISubprogram(name: "get_pending_irq", scope: !479, file: !479, line: 55, type: !1094, scopeLine: 56, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !1113)
!4783 = !DILocation(line: 57, column: 19, scope: !4782)
!4784 = !DILocation(line: 57, column: 51, scope: !4782)
!4785 = !DILocation(line: 57, column: 5, scope: !4782)
!4786 = distinct !DISubprogram(name: "hal_nvic_register_isr_handler", scope: !479, file: !479, line: 205, type: !4787, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !4790)
!4787 = !DISubroutineType(types: !4788)
!4788 = !{!4589, !339, !4789}
!4789 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_isr_t", file: !482, line: 175, baseType: !562)
!4790 = !{!4791, !4792, !4793}
!4791 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4786, file: !479, line: 205, type: !339)
!4792 = !DILocalVariable(name: "callback", arg: 2, scope: !4786, file: !479, line: 205, type: !4789)
!4793 = !DILocalVariable(name: "mask", scope: !4786, file: !479, line: 207, type: !61)
!4794 = !DILocation(line: 0, scope: !4786)
!4795 = !DILocation(line: 209, column: 24, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4786, file: !479, line: 209, column: 9)
!4797 = !DILocation(line: 213, column: 12, scope: !4786)
!4798 = !DILocation(line: 214, column: 5, scope: !4786)
!4799 = !DILocation(line: 215, column: 37, scope: !4786)
!4800 = !DILocation(line: 215, column: 51, scope: !4786)
!4801 = !DILocation(line: 216, column: 37, scope: !4786)
!4802 = !DILocation(line: 216, column: 49, scope: !4786)
!4803 = !DILocation(line: 217, column: 5, scope: !4786)
!4804 = !DILocation(line: 219, column: 5, scope: !4786)
!4805 = !DILocation(line: 220, column: 1, scope: !4786)
!4806 = distinct !DISubprogram(name: "hal_nvic_save_and_set_interrupt_mask", scope: !479, file: !479, line: 222, type: !4807, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !4809)
!4807 = !DISubroutineType(types: !4808)
!4808 = !{!4589, !3794}
!4809 = !{!4810}
!4810 = !DILocalVariable(name: "mask", arg: 1, scope: !4806, file: !479, line: 222, type: !3794)
!4811 = !DILocation(line: 0, scope: !4806)
!4812 = !DILocation(line: 224, column: 13, scope: !4806)
!4813 = !DILocation(line: 224, column: 11, scope: !4806)
!4814 = !DILocation(line: 225, column: 5, scope: !4806)
!4815 = distinct !DISubprogram(name: "hal_nvic_restore_interrupt_mask", scope: !479, file: !479, line: 228, type: !4816, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !4818)
!4816 = !DISubroutineType(types: !4817)
!4817 = !{!4589, !61}
!4818 = !{!4819}
!4819 = !DILocalVariable(name: "mask", arg: 1, scope: !4815, file: !479, line: 228, type: !61)
!4820 = !DILocation(line: 0, scope: !4815)
!4821 = !DILocation(line: 230, column: 5, scope: !4815)
!4822 = !DILocation(line: 231, column: 5, scope: !4815)
!4823 = distinct !DISubprogram(name: "hal_gpt_init", scope: !571, file: !571, line: 82, type: !4824, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !4827)
!4824 = !DISubroutineType(types: !4825)
!4825 = !{!1099, !4826}
!4826 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_port_t", file: !29, line: 663, baseType: !573)
!4827 = !{!4828}
!4828 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4823, file: !571, line: 82, type: !4826)
!4829 = !DILocation(line: 0, scope: !4823)
!4830 = !DILocation(line: 84, column: 9, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4823, file: !571, line: 84, column: 9)
!4832 = !DILocation(line: 84, column: 33, scope: !4831)
!4833 = !DILocation(line: 84, column: 9, scope: !4823)
!4834 = !DILocation(line: 88, column: 9, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4823, file: !571, line: 88, column: 9)
!4836 = !DILocation(line: 88, column: 9, scope: !4823)
!4837 = !DILocation(line: 89, column: 9, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !4835, file: !571, line: 88, column: 50)
!4839 = !DILocation(line: 90, column: 9, scope: !4838)
!4840 = !DILocation(line: 92, column: 12, scope: !4823)
!4841 = !DILocation(line: 92, column: 5, scope: !4823)
!4842 = !DILocation(line: 96, column: 43, scope: !4823)
!4843 = !DILocation(line: 98, column: 5, scope: !4823)
!4844 = !DILocation(line: 99, column: 1, scope: !4823)
!4845 = distinct !DISubprogram(name: "hal_gpt_is_port_valid", scope: !571, file: !571, line: 63, type: !4846, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !4848)
!4846 = !DISubroutineType(types: !4847)
!4847 = !{!69, !4826}
!4848 = !{!4849}
!4849 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4845, file: !571, line: 63, type: !4826)
!4850 = !DILocation(line: 0, scope: !4845)
!4851 = !DILocation(line: 65, column: 19, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4845, file: !571, line: 65, column: 9)
!4853 = !DILocation(line: 65, column: 34, scope: !4852)
!4854 = !DILocation(line: 70, column: 1, scope: !4845)
!4855 = distinct !DISubprogram(name: "hal_gpt_deinit", scope: !571, file: !571, line: 101, type: !4824, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !4856)
!4856 = !{!4857}
!4857 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4855, file: !571, line: 101, type: !4826)
!4858 = !DILocation(line: 0, scope: !4855)
!4859 = !DILocation(line: 103, column: 9, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4855, file: !571, line: 103, column: 9)
!4861 = !DILocation(line: 103, column: 9, scope: !4855)
!4862 = !DILocation(line: 104, column: 9, scope: !4863)
!4863 = distinct !DILexicalBlock(scope: !4860, file: !571, line: 103, column: 50)
!4864 = !DILocation(line: 105, column: 9, scope: !4863)
!4865 = !DILocation(line: 108, column: 9, scope: !4866)
!4866 = distinct !DILexicalBlock(scope: !4855, file: !571, line: 108, column: 9)
!4867 = !DILocation(line: 108, column: 33, scope: !4866)
!4868 = !DILocation(line: 108, column: 48, scope: !4866)
!4869 = !DILocation(line: 108, column: 9, scope: !4855)
!4870 = !DILocation(line: 109, column: 9, scope: !4871)
!4871 = distinct !DILexicalBlock(scope: !4866, file: !571, line: 108, column: 68)
!4872 = !DILocation(line: 110, column: 9, scope: !4871)
!4873 = !DILocation(line: 113, column: 12, scope: !4855)
!4874 = !DILocation(line: 113, column: 5, scope: !4855)
!4875 = !DILocation(line: 116, column: 29, scope: !4855)
!4876 = !DILocation(line: 116, column: 43, scope: !4855)
!4877 = !DILocation(line: 117, column: 5, scope: !4855)
!4878 = !DILocation(line: 118, column: 1, scope: !4855)
!4879 = distinct !DISubprogram(name: "hal_gpt_get_free_run_count", scope: !571, file: !571, line: 120, type: !4880, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !4883)
!4880 = !DISubroutineType(types: !4881)
!4881 = !{!1099, !4882, !3794}
!4882 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_clock_source_t", file: !29, line: 674, baseType: !28)
!4883 = !{!4884, !4885}
!4884 = !DILocalVariable(name: "clock_source", arg: 1, scope: !4879, file: !571, line: 120, type: !4882)
!4885 = !DILocalVariable(name: "count", arg: 2, scope: !4879, file: !571, line: 120, type: !3794)
!4886 = !DILocation(line: 0, scope: !4879)
!4887 = !DILocation(line: 122, column: 9, scope: !4879)
!4888 = !DILocation(line: 123, column: 50, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !4890, file: !571, line: 123, column: 13)
!4890 = distinct !DILexicalBlock(scope: !4891, file: !571, line: 122, column: 51)
!4891 = distinct !DILexicalBlock(scope: !4879, file: !571, line: 122, column: 9)
!4892 = !DILocation(line: 123, column: 65, scope: !4889)
!4893 = !DILocation(line: 123, column: 13, scope: !4890)
!4894 = !DILocation(line: 124, column: 13, scope: !4895)
!4895 = distinct !DILexicalBlock(scope: !4889, file: !571, line: 123, column: 86)
!4896 = !DILocation(line: 125, column: 9, scope: !4895)
!4897 = !DILocation(line: 126, column: 18, scope: !4890)
!4898 = !DILocation(line: 126, column: 16, scope: !4890)
!4899 = !DILocation(line: 127, column: 49, scope: !4890)
!4900 = !DILocation(line: 128, column: 5, scope: !4890)
!4901 = !DILocation(line: 129, column: 50, scope: !4902)
!4902 = distinct !DILexicalBlock(scope: !4903, file: !571, line: 129, column: 13)
!4903 = distinct !DILexicalBlock(scope: !4904, file: !571, line: 128, column: 57)
!4904 = distinct !DILexicalBlock(scope: !4891, file: !571, line: 128, column: 16)
!4905 = !DILocation(line: 129, column: 65, scope: !4902)
!4906 = !DILocation(line: 129, column: 13, scope: !4903)
!4907 = !DILocation(line: 130, column: 13, scope: !4908)
!4908 = distinct !DILexicalBlock(scope: !4902, file: !571, line: 129, column: 86)
!4909 = !DILocation(line: 131, column: 9, scope: !4908)
!4910 = !DILocation(line: 132, column: 18, scope: !4903)
!4911 = !DILocation(line: 132, column: 46, scope: !4903)
!4912 = !DILocation(line: 132, column: 65, scope: !4903)
!4913 = !DILocation(line: 132, column: 43, scope: !4903)
!4914 = !DILocation(line: 132, column: 16, scope: !4903)
!4915 = !DILocation(line: 133, column: 49, scope: !4903)
!4916 = !DILocation(line: 134, column: 5, scope: !4903)
!4917 = !DILocation(line: 135, column: 50, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4919, file: !571, line: 135, column: 13)
!4919 = distinct !DILexicalBlock(scope: !4920, file: !571, line: 134, column: 58)
!4920 = distinct !DILexicalBlock(scope: !4904, file: !571, line: 134, column: 16)
!4921 = !DILocation(line: 135, column: 65, scope: !4918)
!4922 = !DILocation(line: 135, column: 13, scope: !4919)
!4923 = !DILocation(line: 136, column: 13, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4918, file: !571, line: 135, column: 86)
!4925 = !DILocation(line: 137, column: 9, scope: !4924)
!4926 = !DILocation(line: 138, column: 18, scope: !4919)
!4927 = !DILocation(line: 138, column: 16, scope: !4919)
!4928 = !DILocation(line: 139, column: 49, scope: !4919)
!4929 = !DILocation(line: 141, column: 9, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !4920, file: !571, line: 140, column: 11)
!4931 = !DILocation(line: 142, column: 9, scope: !4930)
!4932 = !DILocation(line: 146, column: 1, scope: !4879)
!4933 = distinct !DISubprogram(name: "hal_gpt_get_duration_count", scope: !571, file: !571, line: 148, type: !4934, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !4936)
!4934 = !DISubroutineType(types: !4935)
!4935 = !{!1099, !61, !61, !3794}
!4936 = !{!4937, !4938, !4939}
!4937 = !DILocalVariable(name: "start_count", arg: 1, scope: !4933, file: !571, line: 148, type: !61)
!4938 = !DILocalVariable(name: "end_count", arg: 2, scope: !4933, file: !571, line: 148, type: !61)
!4939 = !DILocalVariable(name: "duration_count", arg: 3, scope: !4933, file: !571, line: 148, type: !3794)
!4940 = !DILocation(line: 0, scope: !4933)
!4941 = !DILocation(line: 150, column: 24, scope: !4942)
!4942 = distinct !DILexicalBlock(scope: !4933, file: !571, line: 150, column: 9)
!4943 = !DILocation(line: 150, column: 9, scope: !4933)
!4944 = !DILocation(line: 0, scope: !4945)
!4945 = distinct !DILexicalBlock(scope: !4933, file: !571, line: 154, column: 9)
!4946 = !DILocation(line: 160, column: 5, scope: !4933)
!4947 = !DILocation(line: 161, column: 1, scope: !4933)
!4948 = distinct !DISubprogram(name: "hal_gpt_get_running_status", scope: !571, file: !571, line: 163, type: !4949, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !4952)
!4949 = !DISubroutineType(types: !4950)
!4950 = !{!1099, !4826, !4951}
!4951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 32)
!4952 = !{!4953, !4954}
!4953 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4948, file: !571, line: 163, type: !4826)
!4954 = !DILocalVariable(name: "running_status", arg: 2, scope: !4948, file: !571, line: 164, type: !4951)
!4955 = !DILocation(line: 0, scope: !4948)
!4956 = !DILocation(line: 166, column: 18, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !4948, file: !571, line: 166, column: 9)
!4958 = !DILocation(line: 166, column: 9, scope: !4948)
!4959 = !DILocation(line: 167, column: 9, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4957, file: !571, line: 166, column: 34)
!4961 = !DILocation(line: 168, column: 9, scope: !4960)
!4962 = !DILocation(line: 170, column: 47, scope: !4948)
!4963 = !DILocation(line: 170, column: 21, scope: !4948)
!4964 = !DILocation(line: 171, column: 5, scope: !4948)
!4965 = !DILocation(line: 172, column: 1, scope: !4948)
!4966 = distinct !DISubprogram(name: "hal_gpt_register_callback", scope: !571, file: !571, line: 174, type: !4967, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !4969)
!4967 = !DISubroutineType(types: !4968)
!4968 = !{!1099, !4826, !601, !51}
!4969 = !{!4970, !4971, !4972}
!4970 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4966, file: !571, line: 174, type: !4826)
!4971 = !DILocalVariable(name: "callback", arg: 2, scope: !4966, file: !571, line: 175, type: !601)
!4972 = !DILocalVariable(name: "user_data", arg: 3, scope: !4966, file: !571, line: 176, type: !51)
!4973 = !DILocation(line: 0, scope: !4966)
!4974 = !DILocation(line: 178, column: 9, scope: !4975)
!4975 = distinct !DILexicalBlock(scope: !4966, file: !571, line: 178, column: 9)
!4976 = !DILocation(line: 178, column: 9, scope: !4966)
!4977 = !DILocation(line: 179, column: 9, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4975, file: !571, line: 178, column: 50)
!4979 = !DILocation(line: 180, column: 9, scope: !4978)
!4980 = !DILocation(line: 182, column: 33, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4966, file: !571, line: 182, column: 9)
!4982 = !DILocation(line: 182, column: 47, scope: !4981)
!4983 = !DILocation(line: 182, column: 9, scope: !4966)
!4984 = !DILocation(line: 185, column: 18, scope: !4985)
!4985 = distinct !DILexicalBlock(scope: !4966, file: !571, line: 185, column: 9)
!4986 = !DILocation(line: 185, column: 9, scope: !4966)
!4987 = !DILocation(line: 188, column: 46, scope: !4966)
!4988 = !DILocation(line: 188, column: 56, scope: !4966)
!4989 = !DILocation(line: 189, column: 46, scope: !4966)
!4990 = !DILocation(line: 189, column: 56, scope: !4966)
!4991 = !DILocation(line: 190, column: 5, scope: !4966)
!4992 = !DILocation(line: 191, column: 1, scope: !4966)
!4993 = distinct !DISubprogram(name: "hal_gpt_start_timer_ms", scope: !571, file: !571, line: 218, type: !4994, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !4997)
!4994 = !DISubroutineType(types: !4995)
!4995 = !{!1099, !4826, !61, !4996}
!4996 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_timer_type_t", file: !21, line: 383, baseType: !584)
!4997 = !{!4998, !4999, !5000}
!4998 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !4993, file: !571, line: 218, type: !4826)
!4999 = !DILocalVariable(name: "timeout_time_ms", arg: 2, scope: !4993, file: !571, line: 218, type: !61)
!5000 = !DILocalVariable(name: "timer_type", arg: 3, scope: !4993, file: !571, line: 218, type: !4996)
!5001 = !DILocation(line: 0, scope: !4993)
!5002 = !DILocation(line: 220, column: 9, scope: !5003)
!5003 = distinct !DILexicalBlock(scope: !4993, file: !571, line: 220, column: 9)
!5004 = !DILocation(line: 220, column: 9, scope: !4993)
!5005 = !DILocation(line: 221, column: 9, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !5003, file: !571, line: 220, column: 50)
!5007 = !DILocation(line: 222, column: 9, scope: !5006)
!5008 = !DILocation(line: 225, column: 33, scope: !5009)
!5009 = distinct !DILexicalBlock(scope: !4993, file: !571, line: 225, column: 9)
!5010 = !DILocation(line: 225, column: 47, scope: !5009)
!5011 = !DILocation(line: 225, column: 9, scope: !4993)
!5012 = !DILocation(line: 229, column: 25, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !4993, file: !571, line: 229, column: 9)
!5014 = !DILocation(line: 229, column: 9, scope: !4993)
!5015 = !DILocation(line: 234, column: 17, scope: !4993)
!5016 = !DILocation(line: 235, column: 17, scope: !4993)
!5017 = !DILocation(line: 236, column: 17, scope: !4993)
!5018 = !DILocation(line: 233, column: 5, scope: !4993)
!5019 = !DILocation(line: 237, column: 5, scope: !4993)
!5020 = !DILocation(line: 238, column: 29, scope: !4993)
!5021 = !DILocation(line: 238, column: 44, scope: !4993)
!5022 = !DILocation(line: 239, column: 5, scope: !4993)
!5023 = !DILocation(line: 240, column: 1, scope: !4993)
!5024 = distinct !DISubprogram(name: "hal_gpt_translate_timeout_time", scope: !571, file: !571, line: 72, type: !5025, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !5027)
!5025 = !DISubroutineType(types: !5026)
!5026 = !{!61, !61}
!5027 = !{!5028}
!5028 = !DILocalVariable(name: "mili_seconds", arg: 1, scope: !5024, file: !571, line: 72, type: !61)
!5029 = !DILocation(line: 0, scope: !5024)
!5030 = !DILocation(line: 74, column: 37, scope: !5024)
!5031 = !DILocation(line: 74, column: 47, scope: !5024)
!5032 = !DILocation(line: 74, column: 63, scope: !5024)
!5033 = !DILocation(line: 74, column: 42, scope: !5024)
!5034 = !DILocation(line: 74, column: 73, scope: !5024)
!5035 = !DILocation(line: 74, column: 89, scope: !5024)
!5036 = !DILocation(line: 74, column: 68, scope: !5024)
!5037 = !DILocation(line: 74, column: 100, scope: !5024)
!5038 = !DILocation(line: 74, column: 116, scope: !5024)
!5039 = !DILocation(line: 74, column: 95, scope: !5024)
!5040 = !DILocation(line: 74, column: 5, scope: !5024)
!5041 = distinct !DISubprogram(name: "hal_gpt_translate_type", scope: !571, file: !571, line: 77, type: !5042, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !5044)
!5042 = !DISubroutineType(types: !5043)
!5043 = !{!69, !4996}
!5044 = !{!5045}
!5045 = !DILocalVariable(name: "type", arg: 1, scope: !5041, file: !571, line: 77, type: !4996)
!5046 = !DILocation(line: 0, scope: !5041)
!5047 = !DILocation(line: 79, column: 38, scope: !5041)
!5048 = !DILocation(line: 79, column: 5, scope: !5041)
!5049 = distinct !DISubprogram(name: "hal_gpt_map_callback", scope: !571, file: !571, line: 213, type: !5050, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !5053)
!5050 = !DISubroutineType(types: !5051)
!5051 = !{!5052, !4826}
!5052 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpt_internal_callback_t", file: !571, line: 211, baseType: !153)
!5053 = !{!5054}
!5054 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !5049, file: !571, line: 213, type: !4826)
!5055 = !DILocation(line: 0, scope: !5049)
!5056 = !DILocation(line: 215, column: 23, scope: !5049)
!5057 = !DILocation(line: 215, column: 12, scope: !5049)
!5058 = !DILocation(line: 215, column: 5, scope: !5049)
!5059 = distinct !DISubprogram(name: "hal_gpt_callback0", scope: !571, file: !571, line: 193, type: !154, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !5060)
!5060 = !{!5061}
!5061 = !DILocalVariable(name: "context", scope: !5059, file: !571, line: 195, type: !5062)
!5062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 32)
!5063 = !DILocation(line: 196, column: 26, scope: !5064)
!5064 = distinct !DILexicalBlock(scope: !5059, file: !571, line: 196, column: 9)
!5065 = !DILocation(line: 196, column: 14, scope: !5064)
!5066 = !DILocation(line: 196, column: 9, scope: !5059)
!5067 = !DILocation(line: 197, column: 36, scope: !5068)
!5068 = distinct !DILexicalBlock(scope: !5064, file: !571, line: 196, column: 36)
!5069 = !DILocation(line: 197, column: 9, scope: !5068)
!5070 = !DILocation(line: 198, column: 5, scope: !5068)
!5071 = !DILocation(line: 199, column: 45, scope: !5059)
!5072 = !DILocation(line: 200, column: 1, scope: !5059)
!5073 = distinct !DISubprogram(name: "hal_gpt_callback1", scope: !571, file: !571, line: 202, type: !154, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !5074)
!5074 = !{!5075}
!5075 = !DILocalVariable(name: "context", scope: !5073, file: !571, line: 204, type: !5062)
!5076 = !DILocation(line: 205, column: 26, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !5073, file: !571, line: 205, column: 9)
!5078 = !DILocation(line: 205, column: 14, scope: !5077)
!5079 = !DILocation(line: 205, column: 9, scope: !5073)
!5080 = !DILocation(line: 206, column: 36, scope: !5081)
!5081 = distinct !DILexicalBlock(scope: !5077, file: !571, line: 205, column: 36)
!5082 = !DILocation(line: 206, column: 9, scope: !5081)
!5083 = !DILocation(line: 207, column: 5, scope: !5081)
!5084 = !DILocation(line: 208, column: 45, scope: !5073)
!5085 = !DILocation(line: 209, column: 1, scope: !5073)
!5086 = distinct !DISubprogram(name: "hal_gpt_stop_timer", scope: !571, file: !571, line: 242, type: !4824, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !5087)
!5087 = !{!5088}
!5088 = !DILocalVariable(name: "gpt_port", arg: 1, scope: !5086, file: !571, line: 242, type: !4826)
!5089 = !DILocation(line: 0, scope: !5086)
!5090 = !DILocation(line: 244, column: 9, scope: !5091)
!5091 = distinct !DILexicalBlock(scope: !5086, file: !571, line: 244, column: 9)
!5092 = !DILocation(line: 244, column: 9, scope: !5086)
!5093 = !DILocation(line: 245, column: 9, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !5091, file: !571, line: 244, column: 50)
!5095 = !DILocation(line: 246, column: 9, scope: !5094)
!5096 = !DILocation(line: 248, column: 5, scope: !5086)
!5097 = !DILocation(line: 249, column: 29, scope: !5086)
!5098 = !DILocation(line: 249, column: 44, scope: !5086)
!5099 = !DILocation(line: 250, column: 5, scope: !5086)
!5100 = !DILocation(line: 251, column: 1, scope: !5086)
!5101 = distinct !DISubprogram(name: "hal_gpt_delay_ms", scope: !571, file: !571, line: 253, type: !5102, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !5104)
!5102 = !DISubroutineType(types: !5103)
!5103 = !{!1099, !61}
!5104 = !{!5105}
!5105 = !DILocalVariable(name: "ms", arg: 1, scope: !5101, file: !571, line: 253, type: !61)
!5106 = !DILocation(line: 0, scope: !5101)
!5107 = !DILocation(line: 255, column: 46, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5101, file: !571, line: 255, column: 9)
!5109 = !DILocation(line: 255, column: 61, scope: !5108)
!5110 = !DILocation(line: 255, column: 9, scope: !5101)
!5111 = !DILocation(line: 256, column: 9, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5108, file: !571, line: 255, column: 82)
!5113 = !DILocation(line: 257, column: 5, scope: !5112)
!5114 = !DILocation(line: 258, column: 5, scope: !5101)
!5115 = !DILocation(line: 259, column: 57, scope: !5101)
!5116 = !DILocation(line: 260, column: 5, scope: !5101)
!5117 = distinct !DISubprogram(name: "hal_gpt_delay_us", scope: !571, file: !571, line: 264, type: !5102, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !5118)
!5118 = !{!5119}
!5119 = !DILocalVariable(name: "us", arg: 1, scope: !5117, file: !571, line: 264, type: !61)
!5120 = !DILocation(line: 0, scope: !5117)
!5121 = !DILocation(line: 266, column: 46, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5117, file: !571, line: 266, column: 9)
!5123 = !DILocation(line: 266, column: 61, scope: !5122)
!5124 = !DILocation(line: 266, column: 9, scope: !5117)
!5125 = !DILocation(line: 267, column: 9, scope: !5126)
!5126 = distinct !DILexicalBlock(scope: !5122, file: !571, line: 266, column: 82)
!5127 = !DILocation(line: 268, column: 5, scope: !5126)
!5128 = !DILocation(line: 269, column: 5, scope: !5117)
!5129 = !DILocation(line: 270, column: 57, scope: !5117)
!5130 = !DILocation(line: 271, column: 5, scope: !5117)
!5131 = distinct !DISubprogram(name: "uart_send_handler", scope: !610, file: !610, line: 213, type: !3703, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !5132)
!5132 = !{!5133, !5134, !5135}
!5133 = !DILocalVariable(name: "u_port", arg: 1, scope: !5131, file: !610, line: 213, type: !3649)
!5134 = !DILocalVariable(name: "length", scope: !5131, file: !610, line: 215, type: !61)
!5135 = !DILocalVariable(name: "irq_status", scope: !5131, file: !610, line: 216, type: !61)
!5136 = !DILocation(line: 0, scope: !5131)
!5137 = !DILocation(line: 215, column: 5, scope: !5131)
!5138 = !DILocation(line: 216, column: 5, scope: !5131)
!5139 = !DILocation(line: 218, column: 9, scope: !5140)
!5140 = distinct !DILexicalBlock(scope: !5131, file: !610, line: 218, column: 9)
!5141 = !DILocation(line: 218, column: 54, scope: !5140)
!5142 = !DILocation(line: 218, column: 9, scope: !5131)
!5143 = !DILocation(line: 219, column: 9, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5140, file: !610, line: 218, column: 64)
!5145 = !DILocation(line: 220, column: 9, scope: !5144)
!5146 = !DILocation(line: 221, column: 53, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5144, file: !610, line: 221, column: 13)
!5148 = !DILocation(line: 221, column: 78, scope: !5147)
!5149 = !DILocation(line: 221, column: 85, scope: !5147)
!5150 = !DILocation(line: 221, column: 13, scope: !5144)
!5151 = !DILocation(line: 222, column: 17, scope: !5152)
!5152 = distinct !DILexicalBlock(scope: !5153, file: !610, line: 222, column: 17)
!5153 = distinct !DILexicalBlock(scope: !5147, file: !610, line: 221, column: 91)
!5154 = !DILocation(line: 222, column: 17, scope: !5153)
!5155 = !DILocation(line: 223, column: 48, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !5152, file: !610, line: 222, column: 58)
!5157 = !DILocation(line: 223, column: 17, scope: !5156)
!5158 = !DILocation(line: 224, column: 49, scope: !5156)
!5159 = !DILocation(line: 225, column: 13, scope: !5156)
!5160 = !DILocation(line: 227, column: 41, scope: !5144)
!5161 = !DILocation(line: 227, column: 9, scope: !5144)
!5162 = !DILocation(line: 228, column: 5, scope: !5144)
!5163 = !DILocation(line: 229, column: 54, scope: !5164)
!5164 = distinct !DILexicalBlock(scope: !5140, file: !610, line: 228, column: 12)
!5165 = !DILocation(line: 231, column: 1, scope: !5131)
!5166 = distinct !DISubprogram(name: "hal_uart_init", scope: !610, file: !610, line: 234, type: !5167, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !5171)
!5167 = !DISubroutineType(types: !5168)
!5168 = !{!5169, !718, !5170}
!5169 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_status_t", file: !613, line: 351, baseType: !612)
!5170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 32)
!5171 = !{!5172, !5173}
!5172 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5166, file: !610, line: 234, type: !718)
!5173 = !DILocalVariable(name: "uart_config", arg: 2, scope: !5166, file: !610, line: 234, type: !5170)
!5174 = !DILocation(line: 0, scope: !5166)
!5175 = !DILocation(line: 236, column: 10, scope: !5176)
!5176 = distinct !DILexicalBlock(scope: !5166, file: !610, line: 236, column: 9)
!5177 = !DILocation(line: 236, column: 9, scope: !5166)
!5178 = !DILocation(line: 239, column: 41, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5166, file: !610, line: 239, column: 9)
!5180 = !DILocation(line: 239, column: 9, scope: !5166)
!5181 = !DILocation(line: 242, column: 5, scope: !5166)
!5182 = !DILocation(line: 243, column: 45, scope: !5166)
!5183 = !DILocation(line: 243, column: 12, scope: !5166)
!5184 = !DILocation(line: 244, column: 12, scope: !5166)
!5185 = !DILocation(line: 243, column: 5, scope: !5166)
!5186 = !DILocation(line: 245, column: 58, scope: !5166)
!5187 = !DILocation(line: 246, column: 30, scope: !5166)
!5188 = !{i32 0, i32 2}
!5189 = !DILocation(line: 246, column: 5, scope: !5166)
!5190 = !DILocation(line: 247, column: 5, scope: !5166)
!5191 = !DILocation(line: 249, column: 31, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5166, file: !610, line: 249, column: 9)
!5193 = !DILocation(line: 249, column: 28, scope: !5192)
!5194 = !DILocation(line: 249, column: 9, scope: !5166)
!5195 = !DILocation(line: 254, column: 5, scope: !5166)
!5196 = !DILocation(line: 255, column: 5, scope: !5166)
!5197 = !DILocation(line: 255, column: 53, scope: !5166)
!5198 = !DILocation(line: 256, column: 5, scope: !5166)
!5199 = !DILocation(line: 256, column: 40, scope: !5166)
!5200 = !DILocation(line: 257, column: 82, scope: !5166)
!5201 = !DILocation(line: 257, column: 39, scope: !5166)
!5202 = !DILocation(line: 257, column: 5, scope: !5166)
!5203 = !DILocation(line: 257, column: 37, scope: !5166)
!5204 = !DILocation(line: 260, column: 5, scope: !5166)
!5205 = !DILocation(line: 261, column: 1, scope: !5166)
!5206 = distinct !DISubprogram(name: "hal_uart_is_config_valid", scope: !610, file: !610, line: 93, type: !5207, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !5211)
!5207 = !DISubroutineType(types: !5208)
!5208 = !{!69, !718, !5209}
!5209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5210, size: 32)
!5210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !671)
!5211 = !{!5212, !5213}
!5212 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5206, file: !610, line: 93, type: !718)
!5213 = !DILocalVariable(name: "uart_config", arg: 2, scope: !5206, file: !610, line: 93, type: !5209)
!5214 = !DILocation(line: 0, scope: !5206)
!5215 = !DILocation(line: 95, column: 10, scope: !5216)
!5216 = distinct !DILexicalBlock(scope: !5206, file: !610, line: 95, column: 9)
!5217 = !DILocation(line: 95, column: 9, scope: !5206)
!5218 = !DILocation(line: 101, column: 23, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5206, file: !610, line: 101, column: 9)
!5220 = !DILocation(line: 101, column: 32, scope: !5219)
!5221 = !DILocation(line: 101, column: 60, scope: !5219)
!5222 = !DILocation(line: 102, column: 27, scope: !5219)
!5223 = !DILocation(line: 102, column: 34, scope: !5219)
!5224 = !DILocation(line: 102, column: 58, scope: !5219)
!5225 = !DILocation(line: 103, column: 27, scope: !5219)
!5226 = !DILocation(line: 103, column: 36, scope: !5219)
!5227 = !DILocation(line: 103, column: 59, scope: !5219)
!5228 = !DILocation(line: 104, column: 27, scope: !5219)
!5229 = !DILocation(line: 104, column: 39, scope: !5219)
!5230 = !DILocation(line: 101, column: 9, scope: !5206)
!5231 = !DILocation(line: 109, column: 1, scope: !5206)
!5232 = distinct !DISubprogram(name: "hal_uart_translate_port", scope: !610, file: !610, line: 139, type: !5233, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !5235)
!5233 = !DISubroutineType(types: !5234)
!5234 = !{!3649, !718}
!5235 = !{!5236}
!5236 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5232, file: !610, line: 139, type: !718)
!5237 = !DILocation(line: 0, scope: !5232)
!5238 = !DILocation(line: 141, column: 24, scope: !5232)
!5239 = !DILocation(line: 141, column: 12, scope: !5232)
!5240 = !DILocation(line: 141, column: 5, scope: !5232)
!5241 = distinct !DISubprogram(name: "hal_uart_set_format", scope: !610, file: !610, line: 593, type: !5242, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !5244)
!5242 = !DISubroutineType(types: !5243)
!5243 = !{!5169, !718, !5209}
!5244 = !{!5245, !5246}
!5245 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5241, file: !610, line: 593, type: !718)
!5246 = !DILocalVariable(name: "config", arg: 2, scope: !5241, file: !610, line: 593, type: !5209)
!5247 = !DILocation(line: 0, scope: !5241)
!5248 = !DILocation(line: 595, column: 10, scope: !5249)
!5249 = distinct !DILexicalBlock(scope: !5241, file: !610, line: 595, column: 9)
!5250 = !DILocation(line: 595, column: 9, scope: !5241)
!5251 = !DILocation(line: 598, column: 45, scope: !5241)
!5252 = !DILocation(line: 598, column: 12, scope: !5241)
!5253 = !DILocation(line: 598, column: 59, scope: !5241)
!5254 = !DILocation(line: 598, column: 5, scope: !5241)
!5255 = !DILocation(line: 599, column: 23, scope: !5241)
!5256 = !DILocation(line: 600, column: 59, scope: !5241)
!5257 = !DILocation(line: 600, column: 23, scope: !5241)
!5258 = !DILocation(line: 601, column: 62, scope: !5241)
!5259 = !DILocation(line: 601, column: 23, scope: !5241)
!5260 = !DILocation(line: 602, column: 57, scope: !5241)
!5261 = !DILocation(line: 602, column: 23, scope: !5241)
!5262 = !DILocation(line: 603, column: 58, scope: !5241)
!5263 = !DILocation(line: 603, column: 23, scope: !5241)
!5264 = !DILocation(line: 599, column: 5, scope: !5241)
!5265 = !DILocation(line: 604, column: 5, scope: !5241)
!5266 = !DILocation(line: 605, column: 1, scope: !5241)
!5267 = distinct !DISubprogram(name: "hal_uart_translate_baudrate", scope: !610, file: !610, line: 145, type: !5268, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !5270)
!5268 = !DISubroutineType(types: !5269)
!5269 = !{!61, !675}
!5270 = !{!5271, !5272}
!5271 = !DILocalVariable(name: "bandrate", arg: 1, scope: !5267, file: !610, line: 145, type: !675)
!5272 = !DILocalVariable(name: "baudrate_tbl", scope: !5267, file: !610, line: 147, type: !5273)
!5273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 416, elements: !276)
!5274 = !DILocation(line: 0, scope: !5267)
!5275 = !DILocation(line: 147, column: 14, scope: !5267)
!5276 = !DILocation(line: 151, column: 12, scope: !5267)
!5277 = !DILocation(line: 151, column: 5, scope: !5267)
!5278 = distinct !DISubprogram(name: "hal_uart_translate_word_length", scope: !610, file: !610, line: 155, type: !5279, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !5281)
!5279 = !DISubroutineType(types: !5280)
!5280 = !{!1443, !677}
!5281 = !{!5282, !5283}
!5282 = !DILocalVariable(name: "word_length", arg: 1, scope: !5278, file: !610, line: 155, type: !677)
!5283 = !DILocalVariable(name: "databit_tbl", scope: !5278, file: !610, line: 157, type: !5284)
!5284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1443, size: 64, elements: !220)
!5285 = !DILocation(line: 0, scope: !5278)
!5286 = !DILocation(line: 157, column: 14, scope: !5278)
!5287 = !DILocation(line: 160, column: 12, scope: !5278)
!5288 = !DILocation(line: 160, column: 5, scope: !5278)
!5289 = distinct !DISubprogram(name: "hal_uart_translate_parity", scope: !610, file: !610, line: 164, type: !5290, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !5292)
!5290 = !DISubroutineType(types: !5291)
!5291 = !{!1443, !681}
!5292 = !{!5293, !5294}
!5293 = !DILocalVariable(name: "parity", arg: 1, scope: !5289, file: !610, line: 164, type: !681)
!5294 = !DILocalVariable(name: "parity_tbl", scope: !5289, file: !610, line: 166, type: !5295)
!5295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1443, size: 80, elements: !551)
!5296 = !DILocation(line: 0, scope: !5289)
!5297 = !DILocation(line: 166, column: 14, scope: !5289)
!5298 = !DILocation(line: 169, column: 12, scope: !5289)
!5299 = !DILocation(line: 169, column: 5, scope: !5289)
!5300 = distinct !DISubprogram(name: "hal_uart_translate_stopbit", scope: !610, file: !610, line: 173, type: !5301, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !5303)
!5301 = !DISubroutineType(types: !5302)
!5302 = !{!1443, !679}
!5303 = !{!5304, !5305}
!5304 = !DILocalVariable(name: "stopbit", arg: 1, scope: !5300, file: !610, line: 173, type: !679)
!5305 = !DILocalVariable(name: "stopbit_tbl", scope: !5300, file: !610, line: 175, type: !5306)
!5306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1443, size: 48, elements: !864)
!5307 = !DILocation(line: 0, scope: !5300)
!5308 = !DILocation(line: 175, column: 14, scope: !5300)
!5309 = !DILocation(line: 178, column: 12, scope: !5300)
!5310 = !DILocation(line: 178, column: 5, scope: !5300)
!5311 = distinct !DISubprogram(name: "hal_uart_is_port_valid", scope: !610, file: !610, line: 87, type: !5312, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !5314)
!5312 = !DISubroutineType(types: !5313)
!5313 = !{!69, !718}
!5314 = !{!5315}
!5315 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5311, file: !610, line: 87, type: !718)
!5316 = !DILocation(line: 0, scope: !5311)
!5317 = !DILocation(line: 89, column: 23, scope: !5311)
!5318 = !DILocation(line: 89, column: 5, scope: !5311)
!5319 = distinct !DISubprogram(name: "hal_uart_deinit", scope: !610, file: !610, line: 264, type: !5320, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !5322)
!5320 = !DISubroutineType(types: !5321)
!5321 = !{!5169, !718}
!5322 = !{!5323}
!5323 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5319, file: !610, line: 264, type: !718)
!5324 = !DILocation(line: 0, scope: !5319)
!5325 = !DILocation(line: 266, column: 10, scope: !5326)
!5326 = distinct !DILexicalBlock(scope: !5319, file: !610, line: 266, column: 9)
!5327 = !DILocation(line: 266, column: 9, scope: !5319)
!5328 = !DILocation(line: 269, column: 41, scope: !5329)
!5329 = distinct !DILexicalBlock(scope: !5319, file: !610, line: 269, column: 9)
!5330 = !DILocation(line: 269, column: 62, scope: !5329)
!5331 = !DILocation(line: 269, column: 9, scope: !5319)
!5332 = !DILocation(line: 272, column: 5, scope: !5319)
!5333 = !DILocation(line: 275, column: 22, scope: !5319)
!5334 = !DILocation(line: 275, column: 5, scope: !5319)
!5335 = !DILocation(line: 278, column: 26, scope: !5319)
!5336 = !DILocation(line: 278, column: 5, scope: !5319)
!5337 = !DILocation(line: 279, column: 5, scope: !5319)
!5338 = !DILocation(line: 279, column: 53, scope: !5319)
!5339 = !DILocation(line: 280, column: 5, scope: !5319)
!5340 = !DILocation(line: 280, column: 40, scope: !5319)
!5341 = !DILocation(line: 281, column: 5, scope: !5319)
!5342 = !DILocation(line: 282, column: 44, scope: !5319)
!5343 = !DILocation(line: 282, column: 5, scope: !5319)
!5344 = !DILocation(line: 284, column: 5, scope: !5319)
!5345 = !DILocation(line: 286, column: 5, scope: !5319)
!5346 = !DILocation(line: 287, column: 1, scope: !5319)
!5347 = distinct !DISubprogram(name: "hal_uart_put_char", scope: !610, file: !610, line: 290, type: !5348, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !5350)
!5348 = !DISubroutineType(types: !5349)
!5349 = !{null, !718, !202}
!5350 = !{!5351, !5352, !5353}
!5351 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5347, file: !610, line: 290, type: !718)
!5352 = !DILocalVariable(name: "byte", arg: 2, scope: !5347, file: !610, line: 290, type: !202)
!5353 = !DILocalVariable(name: "int_no", scope: !5347, file: !610, line: 292, type: !3649)
!5354 = !DILocation(line: 0, scope: !5347)
!5355 = !DILocation(line: 292, column: 26, scope: !5347)
!5356 = !DILocation(line: 294, column: 16, scope: !5357)
!5357 = distinct !DILexicalBlock(scope: !5347, file: !610, line: 294, column: 9)
!5358 = !DILocation(line: 294, column: 9, scope: !5347)
!5359 = !DILocation(line: 295, column: 9, scope: !5360)
!5360 = distinct !DILexicalBlock(scope: !5357, file: !610, line: 294, column: 34)
!5361 = !DILocation(line: 296, column: 5, scope: !5360)
!5362 = !DILocation(line: 299, column: 1, scope: !5347)
!5363 = distinct !DISubprogram(name: "hal_uart_send_polling", scope: !610, file: !610, line: 302, type: !5364, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !5366)
!5364 = !DISubroutineType(types: !5365)
!5365 = !{!61, !718, !1255, !61}
!5366 = !{!5367, !5368, !5369, !5370, !5371}
!5367 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5363, file: !610, line: 302, type: !718)
!5368 = !DILocalVariable(name: "data", arg: 2, scope: !5363, file: !610, line: 302, type: !1255)
!5369 = !DILocalVariable(name: "size", arg: 3, scope: !5363, file: !610, line: 302, type: !61)
!5370 = !DILocalVariable(name: "int_no", scope: !5363, file: !610, line: 304, type: !3649)
!5371 = !DILocalVariable(name: "index", scope: !5363, file: !610, line: 305, type: !61)
!5372 = !DILocation(line: 0, scope: !5363)
!5373 = !DILocation(line: 304, column: 26, scope: !5363)
!5374 = !DILocation(line: 307, column: 14, scope: !5375)
!5375 = distinct !DILexicalBlock(scope: !5363, file: !610, line: 307, column: 9)
!5376 = !DILocation(line: 307, column: 9, scope: !5363)
!5377 = !DILocation(line: 313, column: 53, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !5379, file: !610, line: 312, column: 48)
!5379 = distinct !DILexicalBlock(scope: !5380, file: !610, line: 312, column: 9)
!5380 = distinct !DILexicalBlock(scope: !5381, file: !610, line: 312, column: 9)
!5381 = distinct !DILexicalBlock(scope: !5382, file: !610, line: 311, column: 33)
!5382 = distinct !DILexicalBlock(scope: !5363, file: !610, line: 311, column: 9)
!5383 = !DILocation(line: 313, column: 13, scope: !5378)
!5384 = !DILocation(line: 312, column: 44, scope: !5379)
!5385 = !DILocation(line: 312, column: 31, scope: !5379)
!5386 = !DILocation(line: 312, column: 9, scope: !5380)
!5387 = distinct !{!5387, !5386, !5388}
!5388 = !DILocation(line: 314, column: 9, scope: !5380)
!5389 = !DILocation(line: 318, column: 1, scope: !5363)
!5390 = distinct !DISubprogram(name: "hal_uart_send_dma", scope: !610, file: !610, line: 320, type: !5364, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !5391)
!5391 = !{!5392, !5393, !5394, !5395, !5396, !5397, !5399}
!5392 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5390, file: !610, line: 320, type: !718)
!5393 = !DILocalVariable(name: "data", arg: 2, scope: !5390, file: !610, line: 320, type: !1255)
!5394 = !DILocalVariable(name: "size", arg: 3, scope: !5390, file: !610, line: 320, type: !61)
!5395 = !DILocalVariable(name: "actual_space", scope: !5390, file: !610, line: 322, type: !61)
!5396 = !DILocalVariable(name: "send_size", scope: !5390, file: !610, line: 322, type: !61)
!5397 = !DILocalVariable(name: "ch", scope: !5390, file: !610, line: 323, type: !5398)
!5398 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_VFIFO_CHANNEL", file: !302, line: 144, baseType: !301)
!5399 = !DILocalVariable(name: "irq_status", scope: !5390, file: !610, line: 325, type: !61)
!5400 = !DILocation(line: 0, scope: !5390)
!5401 = !DILocation(line: 322, column: 5, scope: !5390)
!5402 = !DILocation(line: 325, column: 5, scope: !5390)
!5403 = !DILocation(line: 328, column: 10, scope: !5404)
!5404 = distinct !DILexicalBlock(scope: !5390, file: !610, line: 328, column: 9)
!5405 = !DILocation(line: 328, column: 9, scope: !5390)
!5406 = !DILocation(line: 332, column: 15, scope: !5407)
!5407 = distinct !DILexicalBlock(scope: !5390, file: !610, line: 332, column: 9)
!5408 = !DILocation(line: 332, column: 24, scope: !5407)
!5409 = !DILocation(line: 335, column: 42, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5390, file: !610, line: 335, column: 9)
!5411 = !DILocation(line: 335, column: 9, scope: !5390)
!5412 = !DILocation(line: 341, column: 5, scope: !5390)
!5413 = !DILocation(line: 342, column: 9, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !5390, file: !610, line: 342, column: 9)
!5415 = !DILocation(line: 342, column: 44, scope: !5414)
!5416 = !DILocation(line: 342, column: 9, scope: !5390)
!5417 = !DILocation(line: 343, column: 38, scope: !5418)
!5418 = distinct !DILexicalBlock(scope: !5414, file: !610, line: 342, column: 54)
!5419 = !DILocation(line: 343, column: 9, scope: !5418)
!5420 = !DILocation(line: 344, column: 44, scope: !5418)
!5421 = !DILocation(line: 345, column: 5, scope: !5418)
!5422 = !DILocation(line: 346, column: 37, scope: !5390)
!5423 = !DILocation(line: 346, column: 5, scope: !5390)
!5424 = !DILocation(line: 349, column: 30, scope: !5390)
!5425 = !DILocation(line: 349, column: 5, scope: !5390)
!5426 = !DILocation(line: 350, column: 9, scope: !5427)
!5427 = distinct !DILexicalBlock(scope: !5390, file: !610, line: 350, column: 9)
!5428 = !DILocation(line: 350, column: 22, scope: !5427)
!5429 = !DILocation(line: 355, column: 5, scope: !5390)
!5430 = !DILocation(line: 357, column: 22, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5390, file: !610, line: 357, column: 9)
!5432 = !DILocation(line: 357, column: 19, scope: !5431)
!5433 = !DILocation(line: 357, column: 9, scope: !5390)
!5434 = !DILocation(line: 358, column: 14, scope: !5435)
!5435 = distinct !DILexicalBlock(scope: !5431, file: !610, line: 357, column: 36)
!5436 = !{i32 14, i32 18}
!5437 = !DILocation(line: 359, column: 9, scope: !5435)
!5438 = !DILocation(line: 360, column: 5, scope: !5435)
!5439 = !DILocation(line: 362, column: 1, scope: !5390)
!5440 = distinct !DISubprogram(name: "uart_channel_to_dma_channel", scope: !610, file: !610, line: 191, type: !5441, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !5443)
!5441 = !DISubroutineType(types: !5442)
!5442 = !{!5398, !3649, !69}
!5443 = !{!5444, !5445, !5446}
!5444 = !DILocalVariable(name: "port", arg: 1, scope: !5440, file: !610, line: 191, type: !3649)
!5445 = !DILocalVariable(name: "is_rx", arg: 2, scope: !5440, file: !610, line: 191, type: !69)
!5446 = !DILocalVariable(name: "ch", scope: !5440, file: !610, line: 193, type: !5398)
!5447 = !DILocation(line: 0, scope: !5440)
!5448 = !DILocation(line: 195, column: 14, scope: !5449)
!5449 = distinct !DILexicalBlock(scope: !5440, file: !610, line: 195, column: 9)
!5450 = !DILocation(line: 195, column: 9, scope: !5440)
!5451 = !DILocation(line: 209, column: 5, scope: !5440)
!5452 = distinct !DISubprogram(name: "hal_uart_get_char", scope: !610, file: !610, line: 365, type: !5453, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !5455)
!5453 = !DISubroutineType(types: !5454)
!5454 = !{!202, !718}
!5455 = !{!5456, !5457}
!5456 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5452, file: !610, line: 365, type: !718)
!5457 = !DILocalVariable(name: "int_no", scope: !5452, file: !610, line: 367, type: !3649)
!5458 = !DILocation(line: 0, scope: !5452)
!5459 = !DILocation(line: 367, column: 26, scope: !5452)
!5460 = !DILocation(line: 369, column: 16, scope: !5461)
!5461 = distinct !DILexicalBlock(scope: !5452, file: !610, line: 369, column: 9)
!5462 = !DILocation(line: 369, column: 9, scope: !5452)
!5463 = !DILocation(line: 370, column: 22, scope: !5464)
!5464 = distinct !DILexicalBlock(scope: !5461, file: !610, line: 369, column: 33)
!5465 = !DILocation(line: 370, column: 9, scope: !5464)
!5466 = !DILocation(line: 0, scope: !5461)
!5467 = !DILocation(line: 375, column: 1, scope: !5452)
!5468 = distinct !DISubprogram(name: "hal_uart_get_char_unblocking", scope: !610, file: !610, line: 377, type: !5469, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !5471)
!5469 = !DISubroutineType(types: !5470)
!5470 = !{!61, !718}
!5471 = !{!5472, !5473}
!5472 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5468, file: !610, line: 377, type: !718)
!5473 = !DILocalVariable(name: "int_no", scope: !5468, file: !610, line: 379, type: !3649)
!5474 = !DILocation(line: 0, scope: !5468)
!5475 = !DILocation(line: 379, column: 26, scope: !5468)
!5476 = !DILocation(line: 381, column: 16, scope: !5477)
!5477 = distinct !DILexicalBlock(scope: !5468, file: !610, line: 381, column: 9)
!5478 = !DILocation(line: 381, column: 9, scope: !5468)
!5479 = !DILocation(line: 382, column: 16, scope: !5480)
!5480 = distinct !DILexicalBlock(scope: !5477, file: !610, line: 381, column: 33)
!5481 = !DILocation(line: 382, column: 9, scope: !5480)
!5482 = !DILocation(line: 0, scope: !5477)
!5483 = !DILocation(line: 387, column: 1, scope: !5468)
!5484 = distinct !DISubprogram(name: "hal_uart_receive_polling", scope: !610, file: !610, line: 390, type: !5485, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !5487)
!5485 = !DISubroutineType(types: !5486)
!5486 = !{!61, !718, !210, !61}
!5487 = !{!5488, !5489, !5490, !5491, !5492}
!5488 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5484, file: !610, line: 390, type: !718)
!5489 = !DILocalVariable(name: "buffer", arg: 2, scope: !5484, file: !610, line: 390, type: !210)
!5490 = !DILocalVariable(name: "size", arg: 3, scope: !5484, file: !610, line: 390, type: !61)
!5491 = !DILocalVariable(name: "int_no", scope: !5484, file: !610, line: 392, type: !3649)
!5492 = !DILocalVariable(name: "index", scope: !5484, file: !610, line: 393, type: !61)
!5493 = !DILocation(line: 0, scope: !5484)
!5494 = !DILocation(line: 392, column: 26, scope: !5484)
!5495 = !DILocation(line: 395, column: 16, scope: !5496)
!5496 = distinct !DILexicalBlock(scope: !5484, file: !610, line: 395, column: 9)
!5497 = !DILocation(line: 395, column: 9, scope: !5484)
!5498 = !DILocation(line: 401, column: 38, scope: !5499)
!5499 = distinct !DILexicalBlock(scope: !5500, file: !610, line: 400, column: 48)
!5500 = distinct !DILexicalBlock(scope: !5501, file: !610, line: 400, column: 9)
!5501 = distinct !DILexicalBlock(scope: !5502, file: !610, line: 400, column: 9)
!5502 = distinct !DILexicalBlock(scope: !5503, file: !610, line: 399, column: 33)
!5503 = distinct !DILexicalBlock(scope: !5484, file: !610, line: 399, column: 9)
!5504 = !DILocation(line: 401, column: 13, scope: !5499)
!5505 = !DILocation(line: 401, column: 27, scope: !5499)
!5506 = !DILocation(line: 400, column: 44, scope: !5500)
!5507 = !DILocation(line: 400, column: 31, scope: !5500)
!5508 = !DILocation(line: 400, column: 9, scope: !5501)
!5509 = distinct !{!5509, !5508, !5510}
!5510 = !DILocation(line: 402, column: 9, scope: !5501)
!5511 = !DILocation(line: 406, column: 1, scope: !5484)
!5512 = distinct !DISubprogram(name: "hal_uart_receive_dma", scope: !610, file: !610, line: 408, type: !5485, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !5513)
!5513 = !{!5514, !5515, !5516, !5517, !5518, !5519}
!5514 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5512, file: !610, line: 408, type: !718)
!5515 = !DILocalVariable(name: "buffer", arg: 2, scope: !5512, file: !610, line: 408, type: !210)
!5516 = !DILocalVariable(name: "size", arg: 3, scope: !5512, file: !610, line: 408, type: !61)
!5517 = !DILocalVariable(name: "actual_size", scope: !5512, file: !610, line: 410, type: !61)
!5518 = !DILocalVariable(name: "receive_size", scope: !5512, file: !610, line: 410, type: !61)
!5519 = !DILocalVariable(name: "ch", scope: !5512, file: !610, line: 411, type: !5398)
!5520 = !DILocation(line: 0, scope: !5512)
!5521 = !DILocation(line: 410, column: 5, scope: !5512)
!5522 = !DILocation(line: 413, column: 10, scope: !5523)
!5523 = distinct !DILexicalBlock(scope: !5512, file: !610, line: 413, column: 9)
!5524 = !DILocation(line: 413, column: 9, scope: !5512)
!5525 = !DILocation(line: 417, column: 17, scope: !5526)
!5526 = distinct !DILexicalBlock(scope: !5512, file: !610, line: 417, column: 9)
!5527 = !DILocation(line: 417, column: 26, scope: !5526)
!5528 = !DILocation(line: 421, column: 30, scope: !5512)
!5529 = !DILocation(line: 421, column: 5, scope: !5512)
!5530 = !DILocation(line: 422, column: 9, scope: !5531)
!5531 = distinct !DILexicalBlock(scope: !5512, file: !610, line: 422, column: 9)
!5532 = !DILocation(line: 422, column: 21, scope: !5531)
!5533 = !DILocation(line: 427, column: 5, scope: !5512)
!5534 = !DILocation(line: 429, column: 25, scope: !5535)
!5535 = distinct !DILexicalBlock(scope: !5512, file: !610, line: 429, column: 9)
!5536 = !DILocation(line: 429, column: 22, scope: !5535)
!5537 = !DILocation(line: 429, column: 9, scope: !5512)
!5538 = !DILocation(line: 430, column: 14, scope: !5539)
!5539 = distinct !DILexicalBlock(scope: !5535, file: !610, line: 429, column: 38)
!5540 = !DILocation(line: 431, column: 9, scope: !5539)
!5541 = !DILocation(line: 432, column: 5, scope: !5539)
!5542 = !DILocation(line: 435, column: 1, scope: !5512)
!5543 = distinct !DISubprogram(name: "hal_uart_get_available_send_space", scope: !610, file: !610, line: 438, type: !5469, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !5544)
!5544 = !{!5545, !5546}
!5545 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5543, file: !610, line: 438, type: !718)
!5546 = !DILocalVariable(name: "length", scope: !5543, file: !610, line: 440, type: !61)
!5547 = !DILocation(line: 0, scope: !5543)
!5548 = !DILocation(line: 440, column: 5, scope: !5543)
!5549 = !DILocation(line: 440, column: 14, scope: !5543)
!5550 = !DILocation(line: 442, column: 10, scope: !5551)
!5551 = distinct !DILexicalBlock(scope: !5543, file: !610, line: 442, column: 9)
!5552 = !DILocation(line: 442, column: 9, scope: !5543)
!5553 = !DILocation(line: 446, column: 30, scope: !5543)
!5554 = !DILocation(line: 446, column: 5, scope: !5543)
!5555 = !DILocation(line: 447, column: 12, scope: !5543)
!5556 = !DILocation(line: 447, column: 5, scope: !5543)
!5557 = !DILocation(line: 448, column: 1, scope: !5543)
!5558 = distinct !DISubprogram(name: "hal_uart_get_available_receive_bytes", scope: !610, file: !610, line: 451, type: !5469, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !5559)
!5559 = !{!5560, !5561}
!5560 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5558, file: !610, line: 451, type: !718)
!5561 = !DILocalVariable(name: "length", scope: !5558, file: !610, line: 453, type: !61)
!5562 = !DILocation(line: 0, scope: !5558)
!5563 = !DILocation(line: 453, column: 5, scope: !5558)
!5564 = !DILocation(line: 453, column: 14, scope: !5558)
!5565 = !DILocation(line: 455, column: 10, scope: !5566)
!5566 = distinct !DILexicalBlock(scope: !5558, file: !610, line: 455, column: 9)
!5567 = !DILocation(line: 455, column: 9, scope: !5558)
!5568 = !DILocation(line: 459, column: 30, scope: !5558)
!5569 = !DILocation(line: 459, column: 5, scope: !5558)
!5570 = !DILocation(line: 461, column: 12, scope: !5558)
!5571 = !DILocation(line: 461, column: 5, scope: !5558)
!5572 = !DILocation(line: 462, column: 1, scope: !5558)
!5573 = distinct !DISubprogram(name: "hal_uart_register_callback", scope: !610, file: !610, line: 543, type: !5574, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !5576)
!5574 = !DISubroutineType(types: !5575)
!5575 = !{!5169, !718, !688, !51}
!5576 = !{!5577, !5578, !5579, !5580}
!5577 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5573, file: !610, line: 543, type: !718)
!5578 = !DILocalVariable(name: "user_callback", arg: 2, scope: !5573, file: !610, line: 544, type: !688)
!5579 = !DILocalVariable(name: "user_data", arg: 3, scope: !5573, file: !610, line: 545, type: !51)
!5580 = !DILocalVariable(name: "ch", scope: !5573, file: !610, line: 547, type: !5398)
!5581 = !DILocation(line: 0, scope: !5573)
!5582 = !DILocation(line: 549, column: 10, scope: !5583)
!5583 = distinct !DILexicalBlock(scope: !5573, file: !610, line: 549, column: 9)
!5584 = !DILocation(line: 549, column: 9, scope: !5573)
!5585 = !DILocation(line: 556, column: 53, scope: !5573)
!5586 = !DILocation(line: 556, column: 62, scope: !5573)
!5587 = !DILocation(line: 557, column: 53, scope: !5573)
!5588 = !DILocation(line: 557, column: 63, scope: !5573)
!5589 = !DILocation(line: 558, column: 37, scope: !5573)
!5590 = !DILocation(line: 558, column: 54, scope: !5573)
!5591 = !DILocation(line: 560, column: 39, scope: !5573)
!5592 = !DILocation(line: 561, column: 39, scope: !5573)
!5593 = !DILocation(line: 560, column: 5, scope: !5573)
!5594 = !DILocation(line: 562, column: 5, scope: !5573)
!5595 = !DILocation(line: 564, column: 44, scope: !5596)
!5596 = distinct !DILexicalBlock(scope: !5573, file: !610, line: 564, column: 9)
!5597 = !DILocation(line: 564, column: 9, scope: !5573)
!5598 = !DILocation(line: 565, column: 9, scope: !5599)
!5599 = distinct !DILexicalBlock(scope: !5596, file: !610, line: 564, column: 59)
!5600 = !DILocation(line: 566, column: 5, scope: !5599)
!5601 = !DILocation(line: 567, column: 9, scope: !5602)
!5602 = distinct !DILexicalBlock(scope: !5596, file: !610, line: 566, column: 12)
!5603 = !DILocation(line: 569, column: 10, scope: !5573)
!5604 = !DILocation(line: 570, column: 5, scope: !5573)
!5605 = !DILocation(line: 572, column: 5, scope: !5573)
!5606 = !DILocation(line: 572, column: 53, scope: !5573)
!5607 = !DILocation(line: 573, column: 35, scope: !5573)
!5608 = !DILocation(line: 573, column: 5, scope: !5573)
!5609 = !DILocation(line: 574, column: 5, scope: !5573)
!5610 = !DILocation(line: 575, column: 25, scope: !5573)
!5611 = !DILocation(line: 575, column: 5, scope: !5573)
!5612 = !DILocation(line: 578, column: 5, scope: !5573)
!5613 = !DILocation(line: 579, column: 1, scope: !5573)
!5614 = !DILocation(line: 0, scope: !714)
!5615 = !DILocation(line: 539, column: 12, scope: !714)
!5616 = !DILocation(line: 539, column: 5, scope: !714)
!5617 = distinct !DISubprogram(name: "hal_uart_send_callback0", scope: !610, file: !610, line: 511, type: !154, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !5618)
!5618 = !{!5619}
!5619 = !DILocalVariable(name: "callback_context", scope: !5620, file: !610, line: 514, type: !5622)
!5620 = distinct !DILexicalBlock(scope: !5621, file: !610, line: 513, column: 60)
!5621 = distinct !DILexicalBlock(scope: !5617, file: !610, line: 513, column: 9)
!5622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 32)
!5623 = !DILocation(line: 513, column: 42, scope: !5621)
!5624 = !DILocation(line: 513, column: 9, scope: !5617)
!5625 = !DILocation(line: 515, column: 39, scope: !5626)
!5626 = distinct !DILexicalBlock(scope: !5620, file: !610, line: 515, column: 13)
!5627 = !DILocation(line: 515, column: 18, scope: !5626)
!5628 = !DILocation(line: 515, column: 13, scope: !5620)
!5629 = !DILocation(line: 516, column: 89, scope: !5630)
!5630 = distinct !DILexicalBlock(scope: !5626, file: !610, line: 515, column: 49)
!5631 = !DILocation(line: 516, column: 13, scope: !5630)
!5632 = !DILocation(line: 517, column: 9, scope: !5630)
!5633 = !DILocation(line: 519, column: 32, scope: !5617)
!5634 = !DILocation(line: 519, column: 5, scope: !5617)
!5635 = !DILocation(line: 520, column: 1, scope: !5617)
!5636 = distinct !DISubprogram(name: "hal_uart_send_callback1", scope: !610, file: !610, line: 523, type: !154, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !5637)
!5637 = !{!5638}
!5638 = !DILocalVariable(name: "callback_context", scope: !5639, file: !610, line: 526, type: !5622)
!5639 = distinct !DILexicalBlock(scope: !5640, file: !610, line: 525, column: 60)
!5640 = distinct !DILexicalBlock(scope: !5636, file: !610, line: 525, column: 9)
!5641 = !DILocation(line: 525, column: 42, scope: !5640)
!5642 = !DILocation(line: 525, column: 9, scope: !5636)
!5643 = !DILocation(line: 527, column: 39, scope: !5644)
!5644 = distinct !DILexicalBlock(scope: !5639, file: !610, line: 527, column: 13)
!5645 = !DILocation(line: 527, column: 18, scope: !5644)
!5646 = !DILocation(line: 527, column: 13, scope: !5639)
!5647 = !DILocation(line: 528, column: 89, scope: !5648)
!5648 = distinct !DILexicalBlock(scope: !5644, file: !610, line: 527, column: 49)
!5649 = !DILocation(line: 528, column: 13, scope: !5648)
!5650 = !DILocation(line: 529, column: 9, scope: !5648)
!5651 = !DILocation(line: 531, column: 32, scope: !5636)
!5652 = !DILocation(line: 531, column: 5, scope: !5636)
!5653 = !DILocation(line: 532, column: 1, scope: !5636)
!5654 = distinct !DISubprogram(name: "hal_uart_check_irq_disable", scope: !610, file: !610, line: 464, type: !5655, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !5657)
!5655 = !DISubroutineType(types: !5656)
!5656 = !{null, !3649, !69}
!5657 = !{!5658, !5659, !5660, !5661, !5662, !5664}
!5658 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5654, file: !610, line: 464, type: !3649)
!5659 = !DILocalVariable(name: "is_rx", arg: 2, scope: !5654, file: !610, line: 464, type: !69)
!5660 = !DILocalVariable(name: "avail_size", scope: !5654, file: !610, line: 466, type: !61)
!5661 = !DILocalVariable(name: "avail_space", scope: !5654, file: !610, line: 466, type: !61)
!5662 = !DILocalVariable(name: "dma_config", scope: !5654, file: !610, line: 467, type: !5663)
!5663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 32)
!5664 = !DILocalVariable(name: "ch", scope: !5654, file: !610, line: 468, type: !5398)
!5665 = !DILocation(line: 0, scope: !5654)
!5666 = !DILocation(line: 466, column: 5, scope: !5654)
!5667 = !DILocation(line: 471, column: 9, scope: !5654)
!5668 = !DILocation(line: 472, column: 9, scope: !5669)
!5669 = distinct !DILexicalBlock(scope: !5670, file: !610, line: 471, column: 16)
!5670 = distinct !DILexicalBlock(scope: !5654, file: !610, line: 471, column: 9)
!5671 = !DILocation(line: 473, column: 13, scope: !5672)
!5672 = distinct !DILexicalBlock(scope: !5669, file: !610, line: 473, column: 13)
!5673 = !DILocation(line: 473, column: 39, scope: !5672)
!5674 = !DILocation(line: 473, column: 24, scope: !5672)
!5675 = !DILocation(line: 473, column: 13, scope: !5669)
!5676 = !DILocation(line: 478, column: 9, scope: !5677)
!5677 = distinct !DILexicalBlock(scope: !5670, file: !610, line: 477, column: 12)
!5678 = !DILocation(line: 479, column: 13, scope: !5679)
!5679 = distinct !DILexicalBlock(scope: !5677, file: !610, line: 479, column: 13)
!5680 = !DILocation(line: 479, column: 40, scope: !5679)
!5681 = !DILocation(line: 479, column: 77, scope: !5679)
!5682 = !DILocation(line: 479, column: 63, scope: !5679)
!5683 = !DILocation(line: 479, column: 25, scope: !5679)
!5684 = !DILocation(line: 479, column: 13, scope: !5677)
!5685 = !DILocation(line: 0, scope: !5670)
!5686 = !DILocation(line: 484, column: 1, scope: !5654)
!5687 = distinct !DISubprogram(name: "hal_uart_receive_callback0", scope: !610, file: !610, line: 486, type: !154, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !5688)
!5688 = !{!5689}
!5689 = !DILocalVariable(name: "callback_context", scope: !5690, file: !610, line: 490, type: !5622)
!5690 = distinct !DILexicalBlock(scope: !5691, file: !610, line: 489, column: 70)
!5691 = distinct !DILexicalBlock(scope: !5687, file: !610, line: 488, column: 9)
!5692 = !DILocation(line: 488, column: 43, scope: !5691)
!5693 = !DILocation(line: 488, column: 61, scope: !5691)
!5694 = !DILocation(line: 489, column: 14, scope: !5691)
!5695 = !DILocation(line: 489, column: 63, scope: !5691)
!5696 = !DILocation(line: 488, column: 9, scope: !5687)
!5697 = !DILocation(line: 491, column: 39, scope: !5698)
!5698 = distinct !DILexicalBlock(scope: !5690, file: !610, line: 491, column: 13)
!5699 = !DILocation(line: 491, column: 18, scope: !5698)
!5700 = !DILocation(line: 491, column: 13, scope: !5690)
!5701 = !DILocation(line: 492, column: 88, scope: !5702)
!5702 = distinct !DILexicalBlock(scope: !5698, file: !610, line: 491, column: 49)
!5703 = !DILocation(line: 492, column: 13, scope: !5702)
!5704 = !DILocation(line: 493, column: 9, scope: !5702)
!5705 = !DILocation(line: 495, column: 32, scope: !5687)
!5706 = !DILocation(line: 495, column: 5, scope: !5687)
!5707 = !DILocation(line: 496, column: 1, scope: !5687)
!5708 = distinct !DISubprogram(name: "hal_uart_receive_callback1", scope: !610, file: !610, line: 499, type: !154, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !5709)
!5709 = !{!5710}
!5710 = !DILocalVariable(name: "callback_context", scope: !5711, file: !610, line: 503, type: !5622)
!5711 = distinct !DILexicalBlock(scope: !5712, file: !610, line: 502, column: 70)
!5712 = distinct !DILexicalBlock(scope: !5708, file: !610, line: 501, column: 9)
!5713 = !DILocation(line: 501, column: 43, scope: !5712)
!5714 = !DILocation(line: 501, column: 61, scope: !5712)
!5715 = !DILocation(line: 502, column: 14, scope: !5712)
!5716 = !DILocation(line: 502, column: 63, scope: !5712)
!5717 = !DILocation(line: 501, column: 9, scope: !5708)
!5718 = !DILocation(line: 504, column: 39, scope: !5719)
!5719 = distinct !DILexicalBlock(scope: !5711, file: !610, line: 504, column: 13)
!5720 = !DILocation(line: 504, column: 18, scope: !5719)
!5721 = !DILocation(line: 504, column: 13, scope: !5711)
!5722 = !DILocation(line: 505, column: 88, scope: !5723)
!5723 = distinct !DILexicalBlock(scope: !5719, file: !610, line: 504, column: 49)
!5724 = !DILocation(line: 505, column: 13, scope: !5723)
!5725 = !DILocation(line: 506, column: 9, scope: !5723)
!5726 = !DILocation(line: 508, column: 32, scope: !5708)
!5727 = !DILocation(line: 508, column: 5, scope: !5708)
!5728 = !DILocation(line: 509, column: 1, scope: !5708)
!5729 = distinct !DISubprogram(name: "hal_uart_set_baudrate", scope: !610, file: !610, line: 582, type: !5730, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !5732)
!5730 = !DISubroutineType(types: !5731)
!5731 = !{!5169, !718, !675}
!5732 = !{!5733, !5734}
!5733 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5729, file: !610, line: 582, type: !718)
!5734 = !DILocalVariable(name: "baudrate", arg: 2, scope: !5729, file: !610, line: 582, type: !675)
!5735 = !DILocation(line: 0, scope: !5729)
!5736 = !DILocation(line: 584, column: 11, scope: !5737)
!5737 = distinct !DILexicalBlock(scope: !5729, file: !610, line: 584, column: 9)
!5738 = !DILocation(line: 584, column: 46, scope: !5737)
!5739 = !DILocation(line: 588, column: 37, scope: !5729)
!5740 = !DILocation(line: 588, column: 50, scope: !5729)
!5741 = !DILocation(line: 588, column: 59, scope: !5729)
!5742 = !DILocation(line: 589, column: 12, scope: !5729)
!5743 = !DILocation(line: 589, column: 5, scope: !5729)
!5744 = !DILocation(line: 590, column: 1, scope: !5729)
!5745 = distinct !DISubprogram(name: "hal_uart_set_dma", scope: !610, file: !610, line: 608, type: !5746, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !5750)
!5746 = !DISubroutineType(types: !5747)
!5747 = !{!5169, !718, !5748}
!5748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5749, size: 32)
!5749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !696)
!5750 = !{!5751, !5752}
!5751 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5745, file: !610, line: 608, type: !718)
!5752 = !DILocalVariable(name: "uart_dma_config", arg: 2, scope: !5745, file: !610, line: 608, type: !5748)
!5753 = !DILocation(line: 0, scope: !5745)
!5754 = !DILocation(line: 610, column: 10, scope: !5755)
!5755 = distinct !DILexicalBlock(scope: !5745, file: !610, line: 610, column: 9)
!5756 = !DILocation(line: 610, column: 9, scope: !5745)
!5757 = !DILocation(line: 614, column: 10, scope: !5758)
!5758 = distinct !DILexicalBlock(scope: !5745, file: !610, line: 614, column: 9)
!5759 = !DILocation(line: 614, column: 9, scope: !5745)
!5760 = !DILocation(line: 618, column: 37, scope: !5745)
!5761 = !DILocation(line: 618, column: 56, scope: !5745)
!5762 = !DILocation(line: 619, column: 45, scope: !5745)
!5763 = !DILocation(line: 619, column: 12, scope: !5745)
!5764 = !DILocation(line: 620, column: 12, scope: !5745)
!5765 = !DILocation(line: 619, column: 5, scope: !5745)
!5766 = !DILocation(line: 621, column: 5, scope: !5745)
!5767 = !DILocation(line: 622, column: 5, scope: !5745)
!5768 = !DILocation(line: 623, column: 33, scope: !5745)
!5769 = !DILocation(line: 624, column: 50, scope: !5745)
!5770 = !DILocation(line: 625, column: 50, scope: !5745)
!5771 = !DILocation(line: 626, column: 50, scope: !5745)
!5772 = !DILocation(line: 627, column: 50, scope: !5745)
!5773 = !DILocation(line: 628, column: 33, scope: !5745)
!5774 = !DILocation(line: 623, column: 5, scope: !5745)
!5775 = !DILocation(line: 630, column: 50, scope: !5745)
!5776 = !DILocation(line: 631, column: 50, scope: !5745)
!5777 = !DILocation(line: 632, column: 50, scope: !5745)
!5778 = !DILocation(line: 629, column: 5, scope: !5745)
!5779 = !DILocation(line: 634, column: 5, scope: !5745)
!5780 = !DILocation(line: 635, column: 1, scope: !5745)
!5781 = distinct !DISubprogram(name: "hal_uart_is_dma_config_valid", scope: !610, file: !610, line: 112, type: !5782, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !5784)
!5782 = !DISubroutineType(types: !5783)
!5783 = !{!69, !5748}
!5784 = !{!5785}
!5785 = !DILocalVariable(name: "dma_config", arg: 1, scope: !5781, file: !610, line: 112, type: !5748)
!5786 = !DILocation(line: 0, scope: !5781)
!5787 = !DILocation(line: 114, column: 14, scope: !5788)
!5788 = distinct !DILexicalBlock(scope: !5781, file: !610, line: 114, column: 9)
!5789 = !DILocation(line: 114, column: 9, scope: !5781)
!5790 = !DILocation(line: 117, column: 29, scope: !5791)
!5791 = distinct !DILexicalBlock(scope: !5781, file: !610, line: 117, column: 9)
!5792 = !DILocation(line: 117, column: 14, scope: !5791)
!5793 = !DILocation(line: 117, column: 9, scope: !5781)
!5794 = !DILocation(line: 120, column: 21, scope: !5795)
!5795 = distinct !DILexicalBlock(scope: !5781, file: !610, line: 120, column: 9)
!5796 = !DILocation(line: 120, column: 61, scope: !5795)
!5797 = !DILocation(line: 120, column: 47, scope: !5795)
!5798 = !DILocation(line: 120, column: 9, scope: !5781)
!5799 = !DILocation(line: 123, column: 61, scope: !5800)
!5800 = distinct !DILexicalBlock(scope: !5781, file: !610, line: 123, column: 9)
!5801 = !DILocation(line: 123, column: 47, scope: !5800)
!5802 = !DILocation(line: 123, column: 9, scope: !5781)
!5803 = !DILocation(line: 126, column: 29, scope: !5804)
!5804 = distinct !DILexicalBlock(scope: !5781, file: !610, line: 126, column: 9)
!5805 = !DILocation(line: 126, column: 14, scope: !5804)
!5806 = !DILocation(line: 126, column: 9, scope: !5781)
!5807 = !DILocation(line: 129, column: 21, scope: !5808)
!5808 = distinct !DILexicalBlock(scope: !5781, file: !610, line: 129, column: 9)
!5809 = !DILocation(line: 129, column: 58, scope: !5808)
!5810 = !DILocation(line: 129, column: 44, scope: !5808)
!5811 = !DILocation(line: 129, column: 9, scope: !5781)
!5812 = !DILocation(line: 136, column: 1, scope: !5781)
!5813 = distinct !DISubprogram(name: "hal_uart_translate_timeout", scope: !610, file: !610, line: 182, type: !5025, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !5814)
!5814 = !{!5815, !5816}
!5815 = !DILocalVariable(name: "timeout_us", arg: 1, scope: !5813, file: !610, line: 182, type: !61)
!5816 = !DILocalVariable(name: "ticks_per_us", scope: !5813, file: !610, line: 184, type: !61)
!5817 = !DILocation(line: 0, scope: !5813)
!5818 = !DILocation(line: 186, column: 20, scope: !5813)
!5819 = !DILocation(line: 186, column: 39, scope: !5813)
!5820 = !DILocation(line: 188, column: 25, scope: !5813)
!5821 = !DILocation(line: 188, column: 5, scope: !5813)
!5822 = distinct !DISubprogram(name: "hal_uart_set_hardware_flowcontrol", scope: !610, file: !610, line: 637, type: !5320, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !5823)
!5823 = !{!5824, !5825}
!5824 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5822, file: !610, line: 637, type: !718)
!5825 = !DILocalVariable(name: "int_no", scope: !5822, file: !610, line: 639, type: !3649)
!5826 = !DILocation(line: 0, scope: !5822)
!5827 = !DILocation(line: 641, column: 10, scope: !5828)
!5828 = distinct !DILexicalBlock(scope: !5822, file: !610, line: 641, column: 9)
!5829 = !DILocation(line: 641, column: 9, scope: !5822)
!5830 = !DILocation(line: 645, column: 14, scope: !5822)
!5831 = !DILocation(line: 646, column: 5, scope: !5822)
!5832 = !DILocation(line: 648, column: 5, scope: !5822)
!5833 = !DILocation(line: 649, column: 1, scope: !5822)
!5834 = distinct !DISubprogram(name: "hal_uart_set_software_flowcontrol", scope: !610, file: !610, line: 651, type: !5835, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !5837)
!5835 = !DISubroutineType(types: !5836)
!5836 = !{!5169, !718, !54, !54, !54}
!5837 = !{!5838, !5839, !5840, !5841, !5842}
!5838 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5834, file: !610, line: 651, type: !718)
!5839 = !DILocalVariable(name: "xon", arg: 2, scope: !5834, file: !610, line: 652, type: !54)
!5840 = !DILocalVariable(name: "xoff", arg: 3, scope: !5834, file: !610, line: 653, type: !54)
!5841 = !DILocalVariable(name: "escape_character", arg: 4, scope: !5834, file: !610, line: 654, type: !54)
!5842 = !DILocalVariable(name: "int_no", scope: !5834, file: !610, line: 656, type: !3649)
!5843 = !DILocation(line: 0, scope: !5834)
!5844 = !DILocation(line: 658, column: 10, scope: !5845)
!5845 = distinct !DILexicalBlock(scope: !5834, file: !610, line: 658, column: 9)
!5846 = !DILocation(line: 658, column: 9, scope: !5834)
!5847 = !DILocation(line: 662, column: 14, scope: !5834)
!5848 = !DILocation(line: 663, column: 5, scope: !5834)
!5849 = !DILocation(line: 665, column: 5, scope: !5834)
!5850 = !DILocation(line: 666, column: 1, scope: !5834)
!5851 = distinct !DISubprogram(name: "hal_uart_disable_flowcontrol", scope: !610, file: !610, line: 668, type: !5320, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !5852)
!5852 = !{!5853, !5854}
!5853 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5851, file: !610, line: 668, type: !718)
!5854 = !DILocalVariable(name: "int_no", scope: !5851, file: !610, line: 670, type: !3649)
!5855 = !DILocation(line: 0, scope: !5851)
!5856 = !DILocation(line: 672, column: 10, scope: !5857)
!5857 = distinct !DILexicalBlock(scope: !5851, file: !610, line: 672, column: 9)
!5858 = !DILocation(line: 672, column: 9, scope: !5851)
!5859 = !DILocation(line: 676, column: 14, scope: !5851)
!5860 = !DILocation(line: 677, column: 5, scope: !5851)
!5861 = !DILocation(line: 679, column: 5, scope: !5851)
!5862 = !DILocation(line: 680, column: 1, scope: !5851)
!5863 = distinct !DISubprogram(name: "hal_uart_set_dma_timeout", scope: !610, file: !610, line: 683, type: !5864, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !609, retainedNodes: !5866)
!5864 = !DISubroutineType(types: !5865)
!5865 = !{!5169, !718, !61}
!5866 = !{!5867, !5868}
!5867 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5863, file: !610, line: 683, type: !718)
!5868 = !DILocalVariable(name: "timeout", arg: 2, scope: !5863, file: !610, line: 683, type: !61)
!5869 = !DILocation(line: 0, scope: !5863)
!5870 = !DILocation(line: 685, column: 10, scope: !5871)
!5871 = distinct !DILexicalBlock(scope: !5863, file: !610, line: 685, column: 9)
!5872 = !DILocation(line: 685, column: 9, scope: !5863)
!5873 = !DILocation(line: 689, column: 19, scope: !5874)
!5874 = distinct !DILexicalBlock(scope: !5863, file: !610, line: 689, column: 9)
!5875 = !DILocation(line: 0, scope: !5874)
!5876 = !DILocation(line: 696, column: 1, scope: !5863)
!5877 = distinct !DISubprogram(name: "customer_flash_suspend_bit", scope: !726, file: !726, line: 178, type: !5878, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !725, retainedNodes: !5880)
!5878 = !DISubroutineType(types: !5879)
!5879 = !{!58}
!5880 = !{!5881}
!5881 = !DILocalVariable(name: "suspend_bit", scope: !5877, file: !726, line: 181, type: !58)
!5882 = !DILocation(line: 0, scope: !5877)
!5883 = !DILocation(line: 182, column: 5, scope: !5877)
!5884 = distinct !DISubprogram(name: "customer_switch_spi_mode_command", scope: !726, file: !726, line: 185, type: !5885, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !725, retainedNodes: !1113)
!5885 = !DISubroutineType(types: !5886)
!5886 = !{!193}
!5887 = !DILocation(line: 188, column: 4, scope: !5884)
!5888 = distinct !DISubprogram(name: "customer_switch_spiq_mode_command", scope: !726, file: !726, line: 191, type: !5885, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !725, retainedNodes: !1113)
!5889 = !DILocation(line: 194, column: 5, scope: !5888)
!5890 = distinct !DISubprogram(name: "customer_flash_read_SR2_comand", scope: !726, file: !726, line: 197, type: !5878, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !725, retainedNodes: !5891)
!5891 = !{!5892}
!5892 = !DILocalVariable(name: "cmd", scope: !5890, file: !726, line: 201, type: !58)
!5893 = !DILocation(line: 0, scope: !5890)
!5894 = !DILocation(line: 202, column: 5, scope: !5890)
!5895 = distinct !DISubprogram(name: "customer_flash_register", scope: !726, file: !726, line: 207, type: !5896, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !725, retainedNodes: !1113)
!5896 = !DISubroutineType(types: !5897)
!5897 = !{!728}
!5898 = !DILocation(line: 209, column: 5, scope: !5895)
!5899 = distinct !DISubprogram(name: "gpio_mode_init", scope: !1078, file: !1078, line: 93, type: !154, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1077, retainedNodes: !5900)
!5900 = !{!5901, !5902}
!5901 = !DILocalVariable(name: "i", scope: !5899, file: !1078, line: 95, type: !61)
!5902 = !DILocalVariable(name: "mode_temp", scope: !5899, file: !1078, line: 98, type: !5903)
!5903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 320, elements: !5904)
!5904 = !{!5905}
!5905 = !DISubrange(count: 10)
!5906 = !DILocation(line: 98, column: 14, scope: !5899)
!5907 = !DILocation(line: 0, scope: !5899)
!5908 = !DILocation(line: 100, column: 5, scope: !5909)
!5909 = distinct !DILexicalBlock(scope: !5899, file: !1078, line: 100, column: 5)
!5910 = !DILocation(line: 101, column: 9, scope: !5911)
!5911 = distinct !DILexicalBlock(scope: !5912, file: !1078, line: 100, column: 50)
!5912 = distinct !DILexicalBlock(scope: !5909, file: !1078, line: 100, column: 5)
!5913 = !DILocation(line: 100, column: 46, scope: !5912)
!5914 = !DILocation(line: 100, column: 19, scope: !5912)
!5915 = distinct !{!5915, !5908, !5916}
!5916 = !DILocation(line: 103, column: 5, scope: !5909)
!5917 = !DILocation(line: 106, column: 1, scope: !5899)
!5918 = distinct !DISubprogram(name: "gpio_oe_init", scope: !1078, file: !1078, line: 114, type: !154, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1077, retainedNodes: !5919)
!5919 = !{!5920, !5921}
!5920 = !DILocalVariable(name: "i", scope: !5918, file: !1078, line: 116, type: !61)
!5921 = !DILocalVariable(name: "oe_temp", scope: !5918, file: !1078, line: 119, type: !5922)
!5922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 96, elements: !864)
!5923 = !DILocation(line: 0, scope: !5918)
!5924 = !DILocation(line: 122, column: 9, scope: !5925)
!5925 = distinct !DILexicalBlock(scope: !5926, file: !1078, line: 121, column: 48)
!5926 = distinct !DILexicalBlock(scope: !5927, file: !1078, line: 121, column: 5)
!5927 = distinct !DILexicalBlock(scope: !5918, file: !1078, line: 121, column: 5)
!5928 = !DILocation(line: 125, column: 1, scope: !5918)
!5929 = distinct !DISubprogram(name: "gpio_ies_init", scope: !1078, file: !1078, line: 133, type: !154, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1077, retainedNodes: !5930)
!5930 = !{!5931, !5932}
!5931 = !DILocalVariable(name: "i", scope: !5929, file: !1078, line: 135, type: !61)
!5932 = !DILocalVariable(name: "ies_temp", scope: !5929, file: !1078, line: 138, type: !5922)
!5933 = !DILocation(line: 0, scope: !5929)
!5934 = !DILocation(line: 141, column: 9, scope: !5935)
!5935 = distinct !DILexicalBlock(scope: !5936, file: !1078, line: 140, column: 49)
!5936 = distinct !DILexicalBlock(scope: !5937, file: !1078, line: 140, column: 5)
!5937 = distinct !DILexicalBlock(scope: !5929, file: !1078, line: 140, column: 5)
!5938 = !DILocation(line: 145, column: 33, scope: !5929)
!5939 = !DILocation(line: 146, column: 33, scope: !5929)
!5940 = !DILocation(line: 147, column: 33, scope: !5929)
!5941 = !DILocation(line: 150, column: 33, scope: !5929)
!5942 = !DILocation(line: 151, column: 33, scope: !5929)
!5943 = !DILocation(line: 152, column: 33, scope: !5929)
!5944 = !DILocation(line: 155, column: 35, scope: !5929)
!5945 = !DILocation(line: 156, column: 35, scope: !5929)
!5946 = !DILocation(line: 157, column: 35, scope: !5929)
!5947 = !DILocation(line: 160, column: 35, scope: !5929)
!5948 = !DILocation(line: 161, column: 35, scope: !5929)
!5949 = !DILocation(line: 162, column: 35, scope: !5929)
!5950 = !DILocation(line: 165, column: 35, scope: !5929)
!5951 = !DILocation(line: 166, column: 35, scope: !5929)
!5952 = !DILocation(line: 167, column: 35, scope: !5929)
!5953 = !DILocation(line: 170, column: 35, scope: !5929)
!5954 = !DILocation(line: 171, column: 35, scope: !5929)
!5955 = !DILocation(line: 172, column: 35, scope: !5929)
!5956 = !DILocation(line: 174, column: 1, scope: !5929)
!5957 = distinct !DISubprogram(name: "gpio_pull_up_init", scope: !1078, file: !1078, line: 182, type: !154, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1077, retainedNodes: !5958)
!5958 = !{!5959, !5960}
!5959 = !DILocalVariable(name: "i", scope: !5957, file: !1078, line: 184, type: !61)
!5960 = !DILocalVariable(name: "pull_up_temp", scope: !5957, file: !1078, line: 187, type: !5922)
!5961 = !DILocation(line: 0, scope: !5957)
!5962 = !DILocation(line: 190, column: 9, scope: !5963)
!5963 = distinct !DILexicalBlock(scope: !5964, file: !1078, line: 189, column: 53)
!5964 = distinct !DILexicalBlock(scope: !5965, file: !1078, line: 189, column: 5)
!5965 = distinct !DILexicalBlock(scope: !5957, file: !1078, line: 189, column: 5)
!5966 = !DILocation(line: 194, column: 33, scope: !5957)
!5967 = !DILocation(line: 202, column: 33, scope: !5957)
!5968 = !DILocation(line: 210, column: 35, scope: !5957)
!5969 = !DILocation(line: 218, column: 35, scope: !5957)
!5970 = !DILocation(line: 226, column: 35, scope: !5957)
!5971 = !DILocation(line: 234, column: 35, scope: !5957)
!5972 = !DILocation(line: 241, column: 1, scope: !5957)
!5973 = distinct !DISubprogram(name: "gpio_pull_down_init", scope: !1078, file: !1078, line: 250, type: !154, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1077, retainedNodes: !5974)
!5974 = !{!5975, !5976}
!5975 = !DILocalVariable(name: "i", scope: !5973, file: !1078, line: 252, type: !61)
!5976 = !DILocalVariable(name: "pull_down_temp", scope: !5973, file: !1078, line: 255, type: !5922)
!5977 = !DILocation(line: 0, scope: !5973)
!5978 = !DILocation(line: 258, column: 9, scope: !5979)
!5979 = distinct !DILexicalBlock(scope: !5980, file: !1078, line: 257, column: 55)
!5980 = distinct !DILexicalBlock(scope: !5981, file: !1078, line: 257, column: 5)
!5981 = distinct !DILexicalBlock(scope: !5973, file: !1078, line: 257, column: 5)
!5982 = !DILocation(line: 261, column: 1, scope: !5973)
!5983 = distinct !DISubprogram(name: "gpio_output_init", scope: !1078, file: !1078, line: 269, type: !154, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1077, retainedNodes: !5984)
!5984 = !{!5985, !5986}
!5985 = !DILocalVariable(name: "i", scope: !5983, file: !1078, line: 271, type: !61)
!5986 = !DILocalVariable(name: "output_temp", scope: !5983, file: !1078, line: 274, type: !5922)
!5987 = !DILocation(line: 0, scope: !5983)
!5988 = !DILocation(line: 277, column: 9, scope: !5989)
!5989 = distinct !DILexicalBlock(scope: !5990, file: !1078, line: 276, column: 52)
!5990 = distinct !DILexicalBlock(scope: !5991, file: !1078, line: 276, column: 5)
!5991 = distinct !DILexicalBlock(scope: !5983, file: !1078, line: 276, column: 5)
!5992 = !DILocation(line: 281, column: 1, scope: !5983)
!5993 = distinct !DISubprogram(name: "bsp_ept_gpio_set_control_by_cm4", scope: !1078, file: !1078, line: 289, type: !154, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1077, retainedNodes: !1113)
!5994 = !DILocation(line: 292, column: 39, scope: !5993)
!5995 = !DILocation(line: 293, column: 39, scope: !5993)
!5996 = !DILocation(line: 294, column: 39, scope: !5993)
!5997 = !DILocation(line: 295, column: 1, scope: !5993)
!5998 = distinct !DISubprogram(name: "bsp_ept_gpio_setting_init", scope: !1078, file: !1078, line: 302, type: !154, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1077, retainedNodes: !1113)
!5999 = !DILocation(line: 304, column: 5, scope: !5998)
!6000 = !DILocation(line: 305, column: 5, scope: !5998)
!6001 = !DILocation(line: 306, column: 5, scope: !5998)
!6002 = !DILocation(line: 307, column: 5, scope: !5998)
!6003 = !DILocation(line: 308, column: 5, scope: !5998)
!6004 = !DILocation(line: 309, column: 5, scope: !5998)
!6005 = !DILocation(line: 310, column: 1, scope: !5998)
!6006 = distinct !DISubprogram(name: "__io_putchar", scope: !1081, file: !1081, line: 57, type: !2448, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1080, retainedNodes: !6007)
!6007 = !{!6008}
!6008 = !DILocalVariable(name: "ch", arg: 1, scope: !6006, file: !1081, line: 57, type: !7)
!6009 = !DILocation(line: 0, scope: !6006)
!6010 = !DILocation(line: 64, column: 35, scope: !6006)
!6011 = !DILocation(line: 64, column: 5, scope: !6006)
!6012 = !DILocation(line: 65, column: 5, scope: !6006)
!6013 = distinct !DISubprogram(name: "main", scope: !1081, file: !1081, line: 97, type: !1753, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1080, retainedNodes: !1113)
!6014 = !DILocation(line: 100, column: 5, scope: !6013)
!6015 = !DILocation(line: 103, column: 5, scope: !6013)
!6016 = !DILocation(line: 319, column: 3, scope: !6017, inlinedAt: !6018)
!6017 = distinct !DISubprogram(name: "__enable_irq", scope: !1691, file: !1691, line: 317, type: !154, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1080, retainedNodes: !1113)
!6018 = distinct !DILocation(line: 106, column: 5, scope: !6013)
!6019 = !{i64 499474}
!6020 = !DILocation(line: 496, column: 3, scope: !6021, inlinedAt: !6022)
!6021 = distinct !DISubprogram(name: "__enable_fault_irq", scope: !1691, file: !1691, line: 494, type: !154, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1080, retainedNodes: !1113)
!6022 = distinct !DILocation(line: 107, column: 5, scope: !6013)
!6023 = !{i64 503749}
!6024 = !DILocation(line: 110, column: 5, scope: !6013)
!6025 = !DILocation(line: 111, column: 5, scope: !6013)
!6026 = !DILocation(line: 112, column: 5, scope: !6013)
!6027 = !DILocation(line: 113, column: 5, scope: !6013)
!6028 = !DILocation(line: 116, column: 5, scope: !6013)
!6029 = !DILocation(line: 118, column: 5, scope: !6013)
!6030 = !DILocation(line: 118, column: 5, scope: !6031)
!6031 = distinct !DILexicalBlock(scope: !6032, file: !1081, line: 118, column: 5)
!6032 = distinct !DILexicalBlock(scope: !6013, file: !1081, line: 118, column: 5)
!6033 = distinct !{!6033, !6034, !6035}
!6034 = !DILocation(line: 118, column: 5, scope: !6032)
!6035 = !DILocation(line: 118, column: 13, scope: !6032)
!6036 = distinct !DISubprogram(name: "SystemClock_Config", scope: !1081, file: !1081, line: 81, type: !154, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1080, retainedNodes: !1113)
!6037 = !DILocation(line: 83, column: 5, scope: !6036)
!6038 = !DILocation(line: 84, column: 1, scope: !6036)
!6039 = distinct !DISubprogram(name: "prvSetupHardware", scope: !1081, file: !1081, line: 86, type: !154, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1080, retainedNodes: !1113)
!6040 = !DILocation(line: 89, column: 5, scope: !6039)
!6041 = !DILocation(line: 92, column: 5, scope: !6039)
!6042 = !DILocation(line: 95, column: 1, scope: !6039)
!6043 = distinct !DISubprogram(name: "uart_log_init", scope: !1081, file: !1081, line: 69, type: !154, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1080, retainedNodes: !6044)
!6044 = !{!6045}
!6045 = !DILocalVariable(name: "uart_config", scope: !6043, file: !1081, line: 71, type: !6046)
!6046 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !613, line: 378, baseType: !6047)
!6047 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !613, line: 373, size: 128, elements: !6048)
!6048 = !{!6049, !6050, !6051, !6052}
!6049 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !6047, file: !613, line: 374, baseType: !675, size: 32)
!6050 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !6047, file: !613, line: 375, baseType: !677, size: 32, offset: 32)
!6051 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !6047, file: !613, line: 376, baseType: !679, size: 32, offset: 64)
!6052 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !6047, file: !613, line: 377, baseType: !681, size: 32, offset: 96)
!6053 = !DILocation(line: 71, column: 5, scope: !6043)
!6054 = !DILocation(line: 71, column: 23, scope: !6043)
!6055 = !DILocation(line: 74, column: 17, scope: !6043)
!6056 = !DILocation(line: 74, column: 26, scope: !6043)
!6057 = !DILocation(line: 75, column: 17, scope: !6043)
!6058 = !DILocation(line: 75, column: 29, scope: !6043)
!6059 = !DILocation(line: 76, column: 17, scope: !6043)
!6060 = !DILocation(line: 76, column: 26, scope: !6043)
!6061 = !DILocation(line: 77, column: 17, scope: !6043)
!6062 = !DILocation(line: 77, column: 24, scope: !6043)
!6063 = !DILocation(line: 78, column: 5, scope: !6043)
!6064 = !DILocation(line: 79, column: 1, scope: !6043)
!6065 = distinct !DISubprogram(name: "SysTick_Set", scope: !752, file: !752, line: 70, type: !5025, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !6066)
!6066 = !{!6067, !6068}
!6067 = !DILocalVariable(name: "ticks", arg: 1, scope: !6065, file: !752, line: 70, type: !61)
!6068 = !DILocalVariable(name: "val", scope: !6065, file: !752, line: 72, type: !61)
!6069 = !DILocation(line: 0, scope: !6065)
!6070 = !DILocation(line: 74, column: 16, scope: !6071)
!6071 = distinct !DILexicalBlock(scope: !6065, file: !752, line: 74, column: 9)
!6072 = !DILocation(line: 74, column: 21, scope: !6071)
!6073 = !DILocation(line: 74, column: 9, scope: !6065)
!6074 = !DILocation(line: 78, column: 20, scope: !6065)
!6075 = !DILocation(line: 80, column: 19, scope: !6065)
!6076 = !DILocation(line: 83, column: 20, scope: !6065)
!6077 = !DILocation(line: 84, column: 20, scope: !6065)
!6078 = !DILocation(line: 86, column: 19, scope: !6065)
!6079 = !DILocation(line: 88, column: 5, scope: !6065)
!6080 = !DILocation(line: 89, column: 1, scope: !6065)
!6081 = distinct !DISubprogram(name: "SysInitStatus_Set", scope: !752, file: !752, line: 98, type: !154, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !1113)
!6082 = !DILocation(line: 100, column: 28, scope: !6081)
!6083 = !DILocation(line: 101, column: 1, scope: !6081)
!6084 = distinct !DISubprogram(name: "SysInitStatus_Query", scope: !752, file: !752, line: 110, type: !1094, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !1113)
!6085 = !DILocation(line: 112, column: 12, scope: !6084)
!6086 = !DILocation(line: 112, column: 5, scope: !6084)
!6087 = distinct !DISubprogram(name: "SystemCoreClockUpdate", scope: !752, file: !752, line: 122, type: !154, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !1113)
!6088 = !DILocation(line: 124, column: 23, scope: !6087)
!6089 = !DILocation(line: 124, column: 21, scope: !6087)
!6090 = !DILocation(line: 125, column: 1, scope: !6087)
!6091 = distinct !DISubprogram(name: "SystemInit", scope: !752, file: !752, line: 136, type: !154, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !1113)
!6092 = !DILocation(line: 140, column: 16, scope: !6091)
!6093 = !DILocation(line: 144, column: 16, scope: !6091)
!6094 = !DILocation(line: 147, column: 16, scope: !6091)
!6095 = !DILocation(line: 150, column: 1, scope: !6091)
!6096 = distinct !DISubprogram(name: "CachePreInit", scope: !752, file: !752, line: 158, type: !154, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !1113)
!6097 = !DILocation(line: 161, column: 22, scope: !6096)
!6098 = !DILocation(line: 164, column: 21, scope: !6096)
!6099 = !DILocation(line: 167, column: 21, scope: !6096)
!6100 = !DILocation(line: 170, column: 29, scope: !6096)
!6101 = !DILocation(line: 171, column: 33, scope: !6096)
!6102 = !DILocation(line: 173, column: 28, scope: !6096)
!6103 = !DILocation(line: 178, column: 30, scope: !6096)
!6104 = !DILocation(line: 192, column: 1, scope: !6096)
!6105 = distinct !DISubprogram(name: "_close", scope: !812, file: !812, line: 45, type: !2448, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !6106)
!6106 = !{!6107}
!6107 = !DILocalVariable(name: "file", arg: 1, scope: !6105, file: !812, line: 45, type: !7)
!6108 = !DILocation(line: 0, scope: !6105)
!6109 = !DILocation(line: 47, column: 5, scope: !6105)
!6110 = distinct !DISubprogram(name: "_fstat", scope: !812, file: !812, line: 50, type: !6111, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !6159)
!6111 = !DISubroutineType(types: !6112)
!6112 = !{!7, !7, !6113}
!6113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6114, size: 32)
!6114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !6115, line: 27, size: 704, elements: !6116)
!6115 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/stat.h", directory: "/home/mjshen/RTOSExploration")
!6116 = !{!6117, !6120, !6123, !6126, !6129, !6132, !6135, !6136, !6139, !6149, !6150, !6151, !6154, !6157}
!6117 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !6114, file: !6115, line: 29, baseType: !6118, size: 16)
!6118 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !816, line: 161, baseType: !6119)
!6119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !854, line: 56, baseType: !831)
!6120 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !6114, file: !6115, line: 30, baseType: !6121, size: 16, offset: 16)
!6121 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !816, line: 139, baseType: !6122)
!6122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !854, line: 75, baseType: !322)
!6123 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !6114, file: !6115, line: 31, baseType: !6124, size: 32, offset: 32)
!6124 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !816, line: 189, baseType: !6125)
!6125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !854, line: 90, baseType: !62)
!6126 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !6114, file: !6115, line: 32, baseType: !6127, size: 16, offset: 64)
!6127 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !816, line: 194, baseType: !6128)
!6128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !854, line: 209, baseType: !322)
!6129 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !6114, file: !6115, line: 33, baseType: !6130, size: 16, offset: 80)
!6130 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !816, line: 165, baseType: !6131)
!6131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !854, line: 60, baseType: !322)
!6132 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !6114, file: !6115, line: 34, baseType: !6133, size: 16, offset: 96)
!6133 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !816, line: 169, baseType: !6134)
!6134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !854, line: 63, baseType: !322)
!6135 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !6114, file: !6115, line: 35, baseType: !6118, size: 16, offset: 112)
!6136 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !6114, file: !6115, line: 36, baseType: !6137, size: 32, offset: 128)
!6137 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !816, line: 157, baseType: !6138)
!6138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !854, line: 102, baseType: !871)
!6139 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !6114, file: !6115, line: 42, baseType: !6140, size: 128, offset: 192)
!6140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !6141, line: 47, size: 128, elements: !6142)
!6141 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timespec.h", directory: "/home/mjshen/RTOSExploration")
!6142 = !{!6143, !6148}
!6143 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !6140, file: !6141, line: 48, baseType: !6144, size: 64)
!6144 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !6145, line: 42, baseType: !6146)
!6145 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timeval.h", directory: "/home/mjshen/RTOSExploration")
!6146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !57, line: 200, baseType: !6147)
!6147 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!6148 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !6140, file: !6141, line: 49, baseType: !174, size: 32, offset: 64)
!6149 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !6114, file: !6115, line: 43, baseType: !6140, size: 128, offset: 320)
!6150 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !6114, file: !6115, line: 44, baseType: !6140, size: 128, offset: 448)
!6151 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !6114, file: !6115, line: 45, baseType: !6152, size: 32, offset: 576)
!6152 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !816, line: 102, baseType: !6153)
!6153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !854, line: 34, baseType: !174)
!6154 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !6114, file: !6115, line: 46, baseType: !6155, size: 32, offset: 608)
!6155 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !816, line: 97, baseType: !6156)
!6156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !854, line: 30, baseType: !174)
!6157 = !DIDerivedType(tag: DW_TAG_member, name: "st_spare4", scope: !6114, file: !6115, line: 48, baseType: !6158, size: 64, offset: 640)
!6158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 64, elements: !333)
!6159 = !{!6160, !6161}
!6160 = !DILocalVariable(name: "file", arg: 1, scope: !6110, file: !812, line: 50, type: !7)
!6161 = !DILocalVariable(name: "st", arg: 2, scope: !6110, file: !812, line: 50, type: !6113)
!6162 = !DILocation(line: 0, scope: !6110)
!6163 = !DILocation(line: 52, column: 5, scope: !6110)
!6164 = distinct !DISubprogram(name: "_isatty", scope: !812, file: !812, line: 56, type: !2448, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !6165)
!6165 = !{!6166}
!6166 = !DILocalVariable(name: "file", arg: 1, scope: !6164, file: !812, line: 56, type: !7)
!6167 = !DILocation(line: 0, scope: !6164)
!6168 = !DILocation(line: 58, column: 5, scope: !6164)
!6169 = distinct !DISubprogram(name: "_lseek", scope: !812, file: !812, line: 61, type: !6170, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !6172)
!6170 = !DISubroutineType(types: !6171)
!6171 = !{!7, !7, !7, !7}
!6172 = !{!6173, !6174, !6175}
!6173 = !DILocalVariable(name: "file", arg: 1, scope: !6169, file: !812, line: 61, type: !7)
!6174 = !DILocalVariable(name: "ptr", arg: 2, scope: !6169, file: !812, line: 61, type: !7)
!6175 = !DILocalVariable(name: "dir", arg: 3, scope: !6169, file: !812, line: 61, type: !7)
!6176 = !DILocation(line: 0, scope: !6169)
!6177 = !DILocation(line: 63, column: 5, scope: !6169)
!6178 = distinct !DISubprogram(name: "_open", scope: !812, file: !812, line: 66, type: !6179, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !6181)
!6179 = !DISubroutineType(types: !6180)
!6180 = !{!7, !331, !7, !7}
!6181 = !{!6182, !6183, !6184}
!6182 = !DILocalVariable(name: "name", arg: 1, scope: !6178, file: !812, line: 66, type: !331)
!6183 = !DILocalVariable(name: "flags", arg: 2, scope: !6178, file: !812, line: 66, type: !7)
!6184 = !DILocalVariable(name: "mode", arg: 3, scope: !6178, file: !812, line: 66, type: !7)
!6185 = !DILocation(line: 0, scope: !6178)
!6186 = !DILocation(line: 68, column: 5, scope: !6178)
!6187 = distinct !DISubprogram(name: "_read", scope: !812, file: !812, line: 71, type: !6188, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !6190)
!6188 = !DISubroutineType(types: !6189)
!6189 = !{!7, !7, !201, !7}
!6190 = !{!6191, !6192, !6193}
!6191 = !DILocalVariable(name: "file", arg: 1, scope: !6187, file: !812, line: 71, type: !7)
!6192 = !DILocalVariable(name: "ptr", arg: 2, scope: !6187, file: !812, line: 71, type: !201)
!6193 = !DILocalVariable(name: "len", arg: 3, scope: !6187, file: !812, line: 71, type: !7)
!6194 = !DILocation(line: 0, scope: !6187)
!6195 = !DILocation(line: 73, column: 5, scope: !6187)
!6196 = distinct !DISubprogram(name: "_write", scope: !812, file: !812, line: 86, type: !6188, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !6197)
!6197 = !{!6198, !6199, !6200, !6201}
!6198 = !DILocalVariable(name: "file", arg: 1, scope: !6196, file: !812, line: 86, type: !7)
!6199 = !DILocalVariable(name: "ptr", arg: 2, scope: !6196, file: !812, line: 86, type: !201)
!6200 = !DILocalVariable(name: "len", arg: 3, scope: !6196, file: !812, line: 86, type: !7)
!6201 = !DILocalVariable(name: "i", scope: !6196, file: !812, line: 88, type: !7)
!6202 = !DILocation(line: 0, scope: !6196)
!6203 = !DILocation(line: 90, column: 19, scope: !6204)
!6204 = distinct !DILexicalBlock(scope: !6205, file: !812, line: 90, column: 5)
!6205 = distinct !DILexicalBlock(scope: !6196, file: !812, line: 90, column: 5)
!6206 = !DILocation(line: 90, column: 5, scope: !6205)
!6207 = !DILocation(line: 91, column: 26, scope: !6208)
!6208 = distinct !DILexicalBlock(scope: !6204, file: !812, line: 90, column: 31)
!6209 = !DILocation(line: 91, column: 22, scope: !6208)
!6210 = !DILocation(line: 91, column: 9, scope: !6208)
!6211 = !DILocation(line: 90, column: 27, scope: !6204)
!6212 = distinct !{!6212, !6206, !6213}
!6213 = !DILocation(line: 92, column: 5, scope: !6205)
!6214 = !DILocation(line: 94, column: 5, scope: !6196)
!6215 = !DILocation(line: 0, scope: !811)
!6216 = !DILocation(line: 105, column: 5, scope: !811)
!6217 = !{i64 3455}
!6218 = !DILocation(line: 107, column: 14, scope: !6219)
!6219 = distinct !DILexicalBlock(scope: !811, file: !812, line: 107, column: 9)
!6220 = !DILocation(line: 107, column: 11, scope: !6219)
!6221 = !DILocation(line: 107, column: 9, scope: !811)
!6222 = !DILocation(line: 113, column: 32, scope: !6223)
!6223 = distinct !DILexicalBlock(scope: !811, file: !812, line: 113, column: 9)
!6224 = !DILocation(line: 113, column: 15, scope: !6223)
!6225 = !DILocation(line: 124, column: 1, scope: !811)
!6226 = !DILocation(line: 113, column: 9, scope: !811)
!6227 = distinct !DISubprogram(name: "_exit", scope: !812, file: !812, line: 126, type: !954, scopeLine: 127, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !6228)
!6228 = !{!6229}
!6229 = !DILocalVariable(name: "__status", arg: 1, scope: !6227, file: !812, line: 126, type: !7)
!6230 = !DILocation(line: 0, scope: !6227)
!6231 = !DILocation(line: 128, column: 5, scope: !6227)
!6232 = !DILocation(line: 129, column: 5, scope: !6227)
!6233 = distinct !{!6233, !6232, !6234}
!6234 = !DILocation(line: 131, column: 5, scope: !6227)
!6235 = distinct !DISubprogram(name: "_kill", scope: !812, file: !812, line: 135, type: !6236, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !6238)
!6236 = !DISubroutineType(types: !6237)
!6237 = !{!7, !7, !7}
!6238 = !{!6239, !6240}
!6239 = !DILocalVariable(name: "pid", arg: 1, scope: !6235, file: !812, line: 135, type: !7)
!6240 = !DILocalVariable(name: "sig", arg: 2, scope: !6235, file: !812, line: 135, type: !7)
!6241 = !DILocation(line: 0, scope: !6235)
!6242 = !DILocation(line: 137, column: 5, scope: !6235)
!6243 = !DILocation(line: 138, column: 5, scope: !6235)
!6244 = distinct !DISubprogram(name: "_getpid", scope: !812, file: !812, line: 142, type: !6245, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !1113)
!6245 = !DISubroutineType(types: !6246)
!6246 = !{!6247}
!6247 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !816, line: 174, baseType: !6248)
!6248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !854, line: 52, baseType: !7)
!6249 = !DILocation(line: 144, column: 5, scope: !6244)
!6250 = !DILocation(line: 145, column: 5, scope: !6244)
