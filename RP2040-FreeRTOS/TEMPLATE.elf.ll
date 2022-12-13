; ModuleID = './build/App-Template/TEMPLATE.elf.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv6m-none-unknown-eabi"

%struct.QueueDefinition = type { i8*, i8*, %union.anon.51, %struct.xLIST, %struct.xLIST, i32, i32, i32, i8, i8 }
%union.anon.51 = type { %struct.QueuePointers }
%struct.QueuePointers = type { i8*, i8* }
%struct.xLIST = type { i32, %struct.xLIST_ITEM*, %struct.xMINI_LIST_ITEM }
%struct.xLIST_ITEM = type { i32, %struct.xLIST_ITEM*, %struct.xLIST_ITEM*, i8*, %struct.xLIST* }
%struct.xMINI_LIST_ITEM = type { i32, %struct.xLIST_ITEM*, %struct.xLIST_ITEM* }
%struct.tskTaskControlBlock = type { i32*, %struct.xLIST_ITEM, %struct.xLIST_ITEM, i32, i32*, [16 x i8], [5 x i8*], [3 x i32], [3 x i8] }
%struct.alarm_pool = type { %struct.pheap*, i32*, %struct.alarm_pool_entry*, i8*, i32, i8 }
%struct.pheap = type { %struct.pheap_node*, i1 (i8*, i8, i8)*, i8*, i8, i8, i8, i8 }
%struct.pheap_node = type { i8, i8, i8 }
%struct.alarm_pool_entry = type { i64, i64 (i32, i8*)*, i8* }
%struct.lock_core = type { i32* }
%struct.irq_handler_chain_slot = type { i16, i16, i16, %union.anon, void ()* }
%union.anon = type { i16 }
%struct._binary_info_id_and_int = type { %struct._binary_info_core, i32, i32 }
%struct._binary_info_core = type { i16, i16 }
%struct._binary_info_id_and_string = type { %struct._binary_info_core, i32, i8* }
%struct.mutex = type { %struct.lock_core, i8 }
%struct.stdio_driver = type { void (i8*, i32)*, void ()*, i32 (i8*, i32)*, %struct.stdio_driver*, i8, i8 }
%struct.usbd_class_driver_t = type { void ()*, void (i8)*, i16 (i8, %struct.tusb_desc_interface_t*, i16)*, i1 (i8, i8, %struct.tusb_control_request_t*)*, i1 (i8, i8, i32, i32)*, void (i8)* }
%struct.tusb_desc_interface_t = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.tusb_control_request_t = type { %union.anon.13, i8, i16, i16, i16 }
%union.anon.13 = type { %struct.anon.12 }
%struct.anon.12 = type { i8 }
%struct.tusb_desc_device_t = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.hw_endpoint = type { i8, i8, i8, i8, i32*, i32*, i8*, i8, i16, i16, i8*, i16, i8 }
%struct.osal_queue_def_t = type { %struct.tu_fifo_t, %struct.critical_section }
%struct.tu_fifo_t = type { i8*, i16, i16, i8, i16, i16, i16, i16, %struct.mutex*, %struct.mutex* }
%struct.critical_section = type { i32*, i32 }
%struct.usbd_device_t = type { %struct.anon.12, i8, i8, [16 x i8], [16 x [2 x i8]], [16 x [2 x %struct.anon.12]] }
%struct.usbd_control_xfer_t = type { %struct.tusb_control_request_t, i8*, i16, i16, i1 (i8, i8, %struct.tusb_control_request_t*)* }
%struct.cdcd_interface_t = type { i8, i8, i8, i8, i8, i8, %struct.cdc_line_coding_t, %struct.tu_fifo_t, %struct.tu_fifo_t, [256 x i8], [256 x i8], %struct.mutex, %struct.mutex, [64 x i8], [64 x i8] }
%struct.cdc_line_coding_t = type <{ i32, i8, i8, i8 }>
%struct.pico_unique_board_id_t = type { [8 x i8] }
%struct.QUEUE_REGISTRY_ITEM = type { i8*, %struct.QueueDefinition* }
%struct.iobank0_status_ctrl_hw_t = type { i32, i32 }
%struct.io_irq_ctrl_hw_t = type { [4 x i32], [4 x i32], [4 x i32] }
%struct.repeating_timer = type { i64, %struct.alarm_pool*, i32, {}*, i8* }
%struct.recursive_mutex_t = type { %struct.lock_core, i8, i8 }
%struct.__va_list = type { i8* }
%struct.clock_hw_t = type { i32, i32, i32 }
%struct.pll_hw_t = type { i32, i32, i32, i32 }
%struct.anon = type { i8, i8 }
%struct.out_fct_wrap_type = type { void (i8, i8*)*, i8* }
%struct.stdio_stack_buffer = type { i32, [128 x i8] }
%struct.tusb_desc_endpoint_t = type <{ i8, i8, i8, %struct.anon.12, %union.anon, i8 }>
%struct.dcd_event_t = type { i8, i8, %union.anon.2 }
%union.anon.2 = type { %struct.anon.4 }
%struct.anon.4 = type { i8, i8, i32 }
%struct.tu_fifo_buffer_info_t = type { i16, i16, i8*, i8* }
%struct.tmrTimerQueueMessage = type { i32, %union.anon.62 }
%union.anon.62 = type { %struct.tmrTimerParameters }
%struct.tmrTimerParameters = type { i32, %struct.tmrTimerControl* }
%struct.tmrTimerControl = type { i8*, %struct.xLIST_ITEM, i32, i8*, void (%struct.tmrTimerControl*)*, i8 }

@queue = dso_local global %struct.QueueDefinition* null, align 4
@ms_delay = dso_local local_unnamed_addr constant i32 500, align 4
@gpio_task_handle = dso_local global %struct.tskTaskControlBlock* null, align 4
@pico_task_handle = dso_local global %struct.tskTaskControlBlock* null, align 4
@.str = private unnamed_addr constant [15 x i8] c"PICO LED FLASH\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"GPIO LED FLASH\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"[DEBUG] %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"App: %s %s\0A Build: %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"TEMPLATE\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"1.4.1\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"PICO_LED_TASK\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"GPIO_LED_TASK\00", align 1
@_callbacks = internal unnamed_addr global [2 x void (i32, i32)*] zeroinitializer, align 4
@striped_spin_lock_num = internal unnamed_addr global i8 16, align 1
@claimed = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"Spinlock %d is already claimed\00", align 1
@.str.1.10 = private unnamed_addr constant [27 x i8] c"No spinlocks are available\00", align 1
@nil_time = dso_local local_unnamed_addr constant i64 0, align 8
@default_alarm_pool = internal global %struct.alarm_pool { %struct.pheap* @default_alarm_pool_heap, i32* null, %struct.alarm_pool_entry* getelementptr inbounds ([16 x %struct.alarm_pool_entry], [16 x %struct.alarm_pool_entry]* @default_alarm_pool_entries, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @default_alarm_pool_entry_ids_high, i32 0, i32 0), i32 0, i8 0 }, align 4
@sleep_notifier = internal global %struct.lock_core zeroinitializer, align 4
@pools = internal unnamed_addr global [4 x %struct.alarm_pool*] zeroinitializer, align 4
@default_alarm_pool_heap = internal global %struct.pheap { %struct.pheap_node* getelementptr inbounds ([16 x %struct.pheap_node], [16 x %struct.pheap_node]* @default_alarm_pool_heap_nodes, i32 0, i32 0), i1 (i8*, i8, i8)* null, i8* null, i8 16, i8 0, i8 0, i8 0 }, align 4
@default_alarm_pool_entries = internal global [16 x %struct.alarm_pool_entry] zeroinitializer, align 8
@default_alarm_pool_entry_ids_high = internal global [16 x i8] zeroinitializer, align 1
@default_alarm_pool_heap_nodes = internal global [16 x %struct.pheap_node] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"%lld (hi %02x)\00", align 1
@claimed.14 = internal global i8 0, align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"Hardware alarm %d already claimed\00", align 1
@alarm_callbacks = internal unnamed_addr global [4 x void (i32)*] zeroinitializer, align 4
@timer_callbacks_pending = internal unnamed_addr global i8 0, align 1
@target_hi = internal unnamed_addr global [4 x i32] zeroinitializer, align 4
@.str.51 = private unnamed_addr constant [15 x i8] c"node_count %d\0A\00", align 1
@.str.1.52 = private unnamed_addr constant [21 x i8] c"%d (c=%d s=%d p=%d) \00", align 1
@__preinit_array_start = external dso_local global void ()*, align 4
@__preinit_array_end = external dso_local global void ()*, align 4
@__mutex_array_start = external dso_local global %struct.lock_core, align 4
@__mutex_array_end = external dso_local global %struct.lock_core, align 4
@ram_vector_table = dso_local global [48 x i32] zeroinitializer, section ".ram_vector_table", align 4
@__init_array_start = external dso_local global void ()*, align 4
@__init_array_end = external dso_local global void ()*, align 4
@_sbrk.heap_end = internal unnamed_addr global i8* null, align 4
@end = external dso_local global i8, align 1
@.str.55 = private unnamed_addr constant [47 x i8] c"assertion \22%s\22 failed: file \22%s\22, line %d%s%s\0A\00", align 1
@.str.1.54 = private unnamed_addr constant [13 x i8] c", function: \00", align 1
@.str.2.53 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3.56 = private unnamed_addr constant [14 x i8] c"not supported\00", align 1
@.str.4.59 = private unnamed_addr constant [16 x i8] c"\0A*** PANIC ***\0A\00", align 1
@.str.5.60 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6.61 = private unnamed_addr constant [12 x i8] c"Hard assert\00", align 1
@configured_freq = internal unnamed_addr global [10 x i32] zeroinitializer, align 4
@_resus_callback = internal unnamed_addr global void ()* null, align 4
@gpin0_src = internal unnamed_addr constant [10 x i8] c"\01\01\01\01\01\04\05\04\04\04", align 1
@irq_hander_chain_free_slot_head = internal unnamed_addr global i8 0, align 1
@irq_handler_chain_slots = external dso_local global [4 x %struct.irq_handler_chain_slot], align 4
@load_value = internal unnamed_addr global i32 0, align 4
@lazy_vsnprintf = internal unnamed_addr global i32 (void (i8, i8*, i32, i32)*, i8*, i32, i8*, [1 x i32])* null, align 4
@_ftoa.pow10 = internal unnamed_addr constant [10 x double] [double 1.000000e+00, double 1.000000e+01, double 1.000000e+02, double 1.000000e+03, double 1.000000e+04, double 1.000000e+05, double 1.000000e+06, double 1.000000e+07, double 1.000000e+08, double 1.000000e+09], align 8
@.str.82 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.1.83 = private unnamed_addr constant [5 x i8] c"fni-\00", align 1
@.str.2.85 = private unnamed_addr constant [5 x i8] c"fni+\00", align 1
@.str.3.84 = private unnamed_addr constant [4 x i8] c"fni\00", align 1
@sd_table = dso_local local_unnamed_addr global [64 x i32] zeroinitializer, align 4
@sf_table = dso_local local_unnamed_addr global [64 x i32] zeroinitializer, align 4
@sf_clz_func = weak dso_local local_unnamed_addr global i8* null, align 4
@__StackLimit = external dso_local global i8, align 1
@.str.91 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@llvm.compiler.used = appending global [8 x i8*] [i8* bitcast (%struct._binary_info_core** @__bi_ptr22 to i8*), i8* bitcast (%struct._binary_info_core** @__bi_ptr30 to i8*), i8* bitcast (%struct._binary_info_core** @__bi_ptr38 to i8*), i8* bitcast (%struct._binary_info_core** @__bi_ptr44 to i8*), i8* bitcast (%struct._binary_info_core** @__bi_ptr50 to i8*), i8* bitcast (%struct._binary_info_core** @__bi_ptr75 to i8*), i8* bitcast (%struct._binary_info_core** @__bi_ptr81 to i8*), i8* bitcast (void ()* @vTaskSwitchContext to i8*)], section "llvm.metadata"
@__bi_22 = internal constant %struct._binary_info_id_and_int { %struct._binary_info_core { i16 5, i16 20562 }, i32 1760847326, i32 ptrtoint (i8* @__flash_binary_end to i32) }, section ".reset", align 1
@__bi_ptr22 = internal global %struct._binary_info_core* getelementptr inbounds (%struct._binary_info_id_and_int, %struct._binary_info_id_and_int* @__bi_22, i32 0, i32 0), section ".binary_info.keep.__bi_ptr22", align 4
@__bi_30 = internal constant %struct._binary_info_id_and_string { %struct._binary_info_core { i16 6, i16 20562 }, i32 -1650318764, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i32 0, i32 0) }, section ".reset", align 1
@__bi_ptr30 = internal global %struct._binary_info_core* getelementptr inbounds (%struct._binary_info_id_and_string, %struct._binary_info_id_and_string* @__bi_30, i32 0, i32 0), section ".binary_info.keep.__bi_ptr30", align 4
@__bi_38 = internal constant %struct._binary_info_id_and_string { %struct._binary_info_core { i16 6, i16 20562 }, i32 33758342, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.96, i32 0, i32 0) }, section ".reset", align 1
@__bi_ptr38 = internal global %struct._binary_info_core* getelementptr inbounds (%struct._binary_info_id_and_string, %struct._binary_info_id_and_string* @__bi_38, i32 0, i32 0), section ".binary_info.keep.__bi_ptr38", align 4
@__bi_44 = internal constant %struct._binary_info_id_and_string { %struct._binary_info_core { i16 6, i16 20562 }, i32 -1237516357, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.95, i32 0, i32 0) }, align 1
@__bi_ptr44 = internal global %struct._binary_info_core* getelementptr inbounds (%struct._binary_info_id_and_string, %struct._binary_info_id_and_string* @__bi_44, i32 0, i32 0), section ".binary_info.keep.__bi_ptr44", align 4
@__bi_50 = internal constant %struct._binary_info_id_and_string { %struct._binary_info_core { i16 6, i16 20562 }, i32 1398846379, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.94, i32 0, i32 0) }, section ".reset", align 1
@__bi_ptr50 = internal global %struct._binary_info_core* getelementptr inbounds (%struct._binary_info_id_and_string, %struct._binary_info_id_and_string* @__bi_50, i32 0, i32 0), section ".binary_info.keep.__bi_ptr50", align 4
@__bi_75 = internal constant %struct._binary_info_id_and_string { %struct._binary_info_core { i16 6, i16 20562 }, i32 2139652833, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4.93, i32 0, i32 0) }, align 1
@__bi_ptr75 = internal global %struct._binary_info_core* getelementptr inbounds (%struct._binary_info_id_and_string, %struct._binary_info_id_and_string* @__bi_75, i32 0, i32 0), section ".binary_info.keep.__bi_ptr75", align 4
@__bi_81 = internal constant %struct._binary_info_id_and_string { %struct._binary_info_core { i16 6, i16 20562 }, i32 1115025619, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5.92, i32 0, i32 0) }, align 1
@__bi_ptr81 = internal global %struct._binary_info_core* getelementptr inbounds (%struct._binary_info_id_and_string, %struct._binary_info_id_and_string* @__bi_81, i32 0, i32 0), section ".binary_info.keep.__bi_ptr81", align 4
@__flash_binary_end = external dso_local global i8, align 1
@.str.97 = private unnamed_addr constant [12 x i8] c"Dec 13 2022\00", align 1
@.str.1.96 = private unnamed_addr constant [9 x i8] c"TEMPLATE\00", align 1
@.str.2.95 = private unnamed_addr constant [5 x i8] c"pico\00", align 1
@.str.3.94 = private unnamed_addr constant [6 x i8] c"1.3.1\00", align 1
@.str.4.93 = private unnamed_addr constant [14 x i8] c"boot2_w25q080\00", align 1
@.str.5.92 = private unnamed_addr constant [8 x i8] c"Release\00", align 1
@print_mutex = internal global %struct.mutex zeroinitializer, section ".mutex_array", align 4
@at_the_end_of_time = dso_local local_unnamed_addr constant i64 9223372036854775807, align 8
@drivers = internal unnamed_addr global %struct.stdio_driver* null, align 4
@filter = internal unnamed_addr global %struct.stdio_driver* null, align 4
@stdio_out_chars_crlf.crlf_str = internal constant [2 x i8] c"\0D\0A", align 1
@_resetd_driver = internal constant %struct.usbd_class_driver_t { void ()* @resetd_init, void (i8)* @resetd_reset, i16 (i8, %struct.tusb_desc_interface_t*, i16)* @resetd_open, i1 (i8, i8, %struct.tusb_control_request_t*)* @resetd_control_xfer_cb, i1 (i8, i8, i32, i32)* @resetd_xfer_cb, void (i8)* null }, align 4
@itf_num = internal unnamed_addr global i8 0, align 1
@stdio_usb_mutex = internal global %struct.mutex zeroinitializer, align 4
@stdio_usb = dso_local global %struct.stdio_driver { void (i8*, i32)* @stdio_usb_out_chars, void ()* null, i32 (i8*, i32)* @stdio_usb_in_chars, %struct.stdio_driver* null, i8 0, i8 1 }, align 4
@stdio_usb_init.__bi_93 = internal constant %struct._binary_info_id_and_string { %struct._binary_info_core { i16 6, i16 20562 }, i32 -1577798573, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.108, i32 0, i32 0) }, align 1
@.str.108 = private unnamed_addr constant [19 x i8] c"USB stdin / stdout\00", align 1
@stdio_usb_init.__bi_ptr93 = internal global %struct._binary_info_core* getelementptr inbounds (%struct._binary_info_id_and_string, %struct._binary_info_id_and_string* @stdio_usb_init.__bi_93, i32 0, i32 0), section ".binary_info.__bi_ptr93", align 4
@stdio_usb_out_chars.last_avail_time = internal unnamed_addr global i64 0, align 8
@usbd_desc_device = internal constant %struct.tusb_desc_device_t { i8 18, i8 1, i16 512, i8 -17, i8 2, i8 1, i8 64, i16 11914, i16 10, i16 256, i8 1, i8 2, i8 3, i8 1 }, align 1
@usbd_desc_cfg = internal constant [84 x i8] c"\09\02T\00\03\01\00\80}\08\0B\00\02\02\02\00\00\09\04\00\00\01\02\02\00\04\05$\00 \01\05$\01\00\01\04$\02\02\05$\06\00\01\07\05\81\03\08\00\10\09\04\01\00\02\0A\00\00\00\07\05\02\02@\00\00\07\05\82\02@\00\00\09\04\02\00\00\FF\00\01\05", align 1
@tud_descriptor_string_cb.desc_str = internal global [20 x i16] zeroinitializer, align 2
@usbd_serial_str = internal global [17 x i8] zeroinitializer, align 1
@usbd_desc_str = internal unnamed_addr constant [6 x i8*] [i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.110, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @usbd_serial_str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2.111, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.112, i32 0, i32 0)], align 4
@.str.109 = private unnamed_addr constant [13 x i8] c"Raspberry Pi\00", align 1
@.str.1.110 = private unnamed_addr constant [5 x i8] c"Pico\00", align 1
@.str.2.111 = private unnamed_addr constant [10 x i8] c"Board CDC\00", align 1
@.str.3.112 = private unnamed_addr constant [6 x i8] c"Reset\00", align 1
@hw_endpoints = internal global [16 x [2 x %struct.hw_endpoint]] zeroinitializer, align 4
@.str.113 = private unnamed_addr constant [20 x i8] c"Unhandled IRQ 0x%x\0A\00", align 1
@next_buffer_ptr = internal unnamed_addr global i8* null, align 4
@.str.114 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.1.115 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@ep_dir_string = dso_local global [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1.115, i32 0, i32 0)], align 4
@.str.2.126 = private unnamed_addr constant [31 x i8] c"ep %d %s was already available\00", align 1
@.str.3.132 = private unnamed_addr constant [41 x i8] c"Can't continue xfer on inactive ep %d %s\00", align 1
@_usbd_qdef_buf = dso_local global [192 x i8] zeroinitializer, align 1
@_usbd_qdef = dso_local global %struct.osal_queue_def_t { %struct.tu_fifo_t { i8* getelementptr inbounds ([192 x i8], [192 x i8]* @_usbd_qdef_buf, i32 0, i32 0), i16 16, i16 12, i8 0, i16 -32, i16 31, i16 0, i16 0, %struct.mutex* null, %struct.mutex* null }, %struct.critical_section zeroinitializer }, align 4
@_usbd_dev = internal global %struct.usbd_device_t zeroinitializer, align 1
@_usbd_initialized = internal unnamed_addr global i1 false, align 1
@_ubsd_mutexdef = internal global %struct.mutex zeroinitializer, align 4
@_usbd_mutex = internal unnamed_addr global %struct.mutex* null, align 4
@_usbd_q = internal unnamed_addr global %struct.osal_queue_def_t* null, align 4
@_app_driver_count = internal global i8 0, align 1
@_app_driver = internal unnamed_addr global %struct.usbd_class_driver_t* null, align 4
@_usbd_driver = internal constant [1 x %struct.usbd_class_driver_t] [%struct.usbd_class_driver_t { void ()* @cdcd_init, void (i8)* @cdcd_reset, i16 (i8, %struct.tusb_desc_interface_t*, i16)* @cdcd_open, i1 (i8, i8, %struct.tusb_control_request_t*)* @cdcd_control_xfer_cb, i1 (i8, i8, i32, i32)* @cdcd_xfer_cb, void (i8)* null }], align 4
@_ctrl_xfer = internal global %struct.usbd_control_xfer_t zeroinitializer, align 8
@_usbd_ctrl_buf = internal global [64 x i8] zeroinitializer, align 4
@_cdcd_itf = internal global [1 x %struct.cdcd_interface_t] zeroinitializer, align 4
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_retrieve_unique_id_on_boot, i8* null }]
@retrieved_id = internal global %struct.pico_unique_board_id_t zeroinitializer, align 8
@boot2_copyout_valid = internal unnamed_addr global i1 false, align 1
@boot2_copyout = internal unnamed_addr global [64 x i32] zeroinitializer, align 4
@xQueueRegistry = dso_local global [10 x %struct.QUEUE_REGISTRY_ITEM] zeroinitializer, align 4
@pxCurrentTCB = dso_local global %struct.tskTaskControlBlock* null, align 4
@uxTopUsedPriority = dso_local constant i32 4, align 4
@uxTaskNumber = internal unnamed_addr global i32 0, align 4
@xTasksWaitingTermination = internal global %struct.xLIST zeroinitializer, align 4
@uxDeletedTasksWaitingCleanUp = internal global i32 0, align 4
@uxCurrentNumberOfTasks = internal global i32 0, align 4
@xSchedulerRunning = internal global i32 0, align 4
@xTickCount = internal global i32 0, align 4
@pxReadyTasksLists = internal global [5 x %struct.xLIST] zeroinitializer, align 4
@uxTopReadyPriority = internal global i32 0, align 4
@xSuspendedTaskList = internal global %struct.xLIST zeroinitializer, align 4
@uxSchedulerSuspended = internal global i32 0, align 4
@xYieldPending = internal global i32 0, align 4
@xPendingReadyList = internal global %struct.xLIST zeroinitializer, align 4
@.str.242 = private unnamed_addr constant [5 x i8] c"IDLE\00", align 1
@xIdleTaskHandle = internal global %struct.tskTaskControlBlock* null, align 4
@xNextTaskUnblockTime = internal global i32 0, align 4
@xPendedTicks = internal global i32 0, align 4
@pxDelayedTaskList = internal global %struct.xLIST* null, align 4
@pxOverflowDelayedTaskList = internal global %struct.xLIST* null, align 4
@xNumOfOverflows = internal global i32 0, align 4
@xDelayedTaskList1 = internal global %struct.xLIST zeroinitializer, align 4
@xDelayedTaskList2 = internal global %struct.xLIST zeroinitializer, align 4
@xTimerQueue = internal unnamed_addr global %struct.QueueDefinition* null, align 4
@.str.259 = private unnamed_addr constant [8 x i8] c"Tmr Svc\00", align 1
@xTimerTaskHandle = internal global %struct.tskTaskControlBlock* null, align 4
@pxCurrentTimerList = internal unnamed_addr global %struct.xLIST* null, align 4
@pxOverflowTimerList = internal unnamed_addr global %struct.xLIST* null, align 4
@prvSampleTimeNow.xLastTime = internal unnamed_addr global i32 0, align 4
@xActiveTimerList1 = internal global %struct.xLIST zeroinitializer, align 4
@xActiveTimerList2 = internal global %struct.xLIST zeroinitializer, align 4
@.str.1.260 = private unnamed_addr constant [5 x i8] c"TmrQ\00", align 1
@uxCriticalNesting = internal unnamed_addr global i32 -1431655766, align 4

; Function Attrs: noinline noreturn nounwind
define dso_local void @led_task_pico(i8* nocapture readnone %0) #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %2) #30
  store i8 0, i8* %2, align 1, !tbaa !8
  tail call void @gpio_init(i32 noundef 25) #30
  tail call fastcc void @gpio_set_dir(i32 noundef 25)
  br label %3

3:                                                ; preds = %3, %1
  call void @log_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  store i8 1, i8* %2, align 1, !tbaa !8
  call fastcc void @gpio_put(i32 noundef 25, i1 noundef zeroext true)
  %4 = load volatile %struct.QueueDefinition*, %struct.QueueDefinition** @queue, align 4, !tbaa !11
  %5 = call i32 @xQueueGenericSend(%struct.QueueDefinition* noundef %4, i8* noundef nonnull %2, i32 noundef 0, i32 noundef 0) #30
  call void @vTaskDelay(i32 noundef 500) #30
  store i8 0, i8* %2, align 1, !tbaa !8
  call fastcc void @gpio_put(i32 noundef 25, i1 noundef zeroext false)
  %6 = load volatile %struct.QueueDefinition*, %struct.QueueDefinition** @queue, align 4, !tbaa !11
  %7 = call i32 @xQueueGenericSend(%struct.QueueDefinition* noundef %6, i8* noundef nonnull %2, i32 noundef 0, i32 noundef 0) #30
  call void @vTaskDelay(i32 noundef 500) #30
  br label %3
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree noinline norecurse nounwind
define internal fastcc void @gpio_set_dir(i32 noundef %0) unnamed_addr #2 {
  %2 = shl nuw i32 1, %0
  tail call fastcc void @gpio_set_dir_out_masked(i32 noundef %2)
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @log_debug(i8* noundef %0) local_unnamed_addr #3 {
  %2 = tail call i32 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %3 = add i32 %2, 9
  %4 = tail call noalias i8* @malloc(i32 noundef %3) #31
  %5 = tail call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %4, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* noundef %0)
  %6 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* noundef %4)
  tail call void @free(i8* noundef %4)
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define internal fastcc void @gpio_put(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = shl nuw i32 1, %0
  br i1 %1, label %4, label %5

4:                                                ; preds = %2
  tail call fastcc void @gpio_set_mask(i32 noundef %3)
  br label %6

5:                                                ; preds = %2
  tail call fastcc void @gpio_clr_mask(i32 noundef %3)
  br label %6

6:                                                ; preds = %5, %4
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define internal fastcc void @gpio_set_mask(i32 noundef %0) unnamed_addr #2 {
  store volatile i32 %0, i32* inttoptr (i32 -805306348 to i32*), align 4, !tbaa !13
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define internal fastcc void @gpio_clr_mask(i32 noundef %0) unnamed_addr #2 {
  store volatile i32 %0, i32* inttoptr (i32 -805306344 to i32*), align 8, !tbaa !16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strlen(i8* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare dso_local noalias noundef i8* @malloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @sprintf(i8* noalias nocapture noundef writeonly, i8* nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline norecurse nounwind
define internal fastcc void @gpio_set_dir_out_masked(i32 noundef %0) unnamed_addr #2 {
  store volatile i32 %0, i32* inttoptr (i32 -805306332 to i32*), align 4, !tbaa !17
  ret void
}

; Function Attrs: noinline noreturn nounwind
define dso_local void @led_task_gpio(i8* nocapture readnone %0) #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %2) #30
  store i8 0, i8* %2, align 1, !tbaa !8
  tail call void @gpio_init(i32 noundef 20) #30
  tail call fastcc void @gpio_set_dir(i32 noundef 20)
  br label %3

3:                                                ; preds = %15, %1
  %4 = load volatile %struct.QueueDefinition*, %struct.QueueDefinition** @queue, align 4, !tbaa !11
  %5 = call i32 @xQueueReceive(%struct.QueueDefinition* noundef %4, i8* noundef nonnull %2, i32 noundef -1) #30
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = load i8, i8* %2, align 1, !tbaa !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  call void @log_debug(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0))
  %11 = load i8, i8* %2, align 1, !tbaa !8
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i8 [ %11, %10 ], [ 0, %7 ]
  %14 = icmp ne i8 %13, 1
  call fastcc void @gpio_put(i32 noundef 20, i1 noundef zeroext %14)
  br label %15

15:                                               ; preds = %12, %3
  br label %3
}

; Function Attrs: nofree noinline nounwind
define dso_local void @log_device_info() local_unnamed_addr #8 {
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 noundef 0)
  ret void
}

; Function Attrs: noinline noreturn nounwind
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = tail call zeroext i1 @stdio_usb_init() #30
  %2 = tail call i32 @xTaskCreate(void (i8*)* noundef nonnull @led_task_pico, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i16 noundef zeroext 128, i8* noundef null, i32 noundef 1, %struct.tskTaskControlBlock** noundef nonnull @pico_task_handle) #30
  %3 = tail call i32 @xTaskCreate(void (i8*)* noundef nonnull @led_task_gpio, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i16 noundef zeroext 128, i8* noundef null, i32 noundef 1, %struct.tskTaskControlBlock** noundef nonnull @gpio_task_handle) #30
  %4 = tail call %struct.QueueDefinition* @xQueueGenericCreate(i32 noundef 4, i32 noundef 1, i8 noundef zeroext 0) #30
  store volatile %struct.QueueDefinition* %4, %struct.QueueDefinition** @queue, align 4, !tbaa !11
  tail call void @log_device_info()
  %5 = icmp eq i32 %2, 1
  %6 = icmp eq i32 %3, 1
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  tail call void @vTaskStartScheduler() #30
  br label %9

9:                                                ; preds = %0, %8
  br label %10

10:                                               ; preds = %10, %9
  br label %10
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @gpio_get_pad(i32 noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds [30 x i32], [30 x i32]* inttoptr (i32 1073856516 to [30 x i32]*), i32 0, i32 %0
  %3 = ptrtoint i32* %2 to i32
  %4 = or i32 %3, 8192
  %5 = inttoptr i32 %4 to i32*
  store volatile i32 64, i32* %5, align 4, !tbaa !18
  %6 = getelementptr inbounds [30 x %struct.iobank0_status_ctrl_hw_t], [30 x %struct.iobank0_status_ctrl_hw_t]* inttoptr (i32 1073823744 to [30 x %struct.iobank0_status_ctrl_hw_t]*), i32 0, i32 %0, i32 0
  %7 = load volatile i32, i32* %6, align 8, !tbaa !19
  %8 = lshr i32 %7, 17
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @gpio_set_function(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds [30 x i32], [30 x i32]* inttoptr (i32 1073856516 to [30 x i32]*), i32 0, i32 %0
  %4 = load volatile i32, i32* %3, align 4, !tbaa !18
  %5 = and i32 %4, 192
  %6 = xor i32 %5, 64
  %7 = ptrtoint i32* %3 to i32
  %8 = or i32 %7, 4096
  %9 = inttoptr i32 %8 to i32*
  store volatile i32 %6, i32* %9, align 4, !tbaa !18
  %10 = getelementptr inbounds [30 x %struct.iobank0_status_ctrl_hw_t], [30 x %struct.iobank0_status_ctrl_hw_t]* inttoptr (i32 1073823744 to [30 x %struct.iobank0_status_ctrl_hw_t]*), i32 0, i32 %0, i32 1
  store volatile i32 %1, i32* %10, align 4, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local i32 @gpio_get_function(i32 noundef %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds [30 x %struct.iobank0_status_ctrl_hw_t], [30 x %struct.iobank0_status_ctrl_hw_t]* inttoptr (i32 1073823744 to [30 x %struct.iobank0_status_ctrl_hw_t]*), i32 0, i32 %0, i32 1
  %3 = load volatile i32, i32* %2, align 4, !tbaa !21
  %4 = and i32 %3, 31
  ret i32 %4
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @gpio_set_pulls(i32 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds [30 x i32], [30 x i32]* inttoptr (i32 1073856516 to [30 x i32]*), i32 0, i32 %0
  %5 = select i1 %1, i32 8, i32 0
  %6 = select i1 %2, i32 4, i32 0
  %7 = or i32 %6, %5
  %8 = load volatile i32, i32* %4, align 4, !tbaa !18
  %9 = and i32 %8, 12
  %10 = xor i32 %9, %7
  %11 = ptrtoint i32* %4 to i32
  %12 = or i32 %11, 4096
  %13 = inttoptr i32 %12 to i32*
  store volatile i32 %10, i32* %13, align 4, !tbaa !18
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @gpio_set_irqover(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds [30 x %struct.iobank0_status_ctrl_hw_t], [30 x %struct.iobank0_status_ctrl_hw_t]* inttoptr (i32 1073823744 to [30 x %struct.iobank0_status_ctrl_hw_t]*), i32 0, i32 %0, i32 1
  %4 = shl i32 %1, 28
  %5 = load volatile i32, i32* %3, align 4, !tbaa !18
  %6 = xor i32 %5, %4
  %7 = and i32 %6, 805306368
  %8 = ptrtoint i32* %3 to i32
  %9 = or i32 %8, 4096
  %10 = inttoptr i32 %9 to i32*
  store volatile i32 %7, i32* %10, align 4, !tbaa !18
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @gpio_set_inover(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds [30 x %struct.iobank0_status_ctrl_hw_t], [30 x %struct.iobank0_status_ctrl_hw_t]* inttoptr (i32 1073823744 to [30 x %struct.iobank0_status_ctrl_hw_t]*), i32 0, i32 %0, i32 1
  %4 = shl i32 %1, 16
  %5 = load volatile i32, i32* %3, align 4, !tbaa !18
  %6 = xor i32 %5, %4
  %7 = and i32 %6, 196608
  %8 = ptrtoint i32* %3 to i32
  %9 = or i32 %8, 4096
  %10 = inttoptr i32 %9 to i32*
  store volatile i32 %7, i32* %10, align 4, !tbaa !18
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @gpio_set_outover(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds [30 x %struct.iobank0_status_ctrl_hw_t], [30 x %struct.iobank0_status_ctrl_hw_t]* inttoptr (i32 1073823744 to [30 x %struct.iobank0_status_ctrl_hw_t]*), i32 0, i32 %0, i32 1
  %4 = shl i32 %1, 8
  %5 = load volatile i32, i32* %3, align 4, !tbaa !18
  %6 = xor i32 %5, %4
  %7 = and i32 %6, 768
  %8 = ptrtoint i32* %3 to i32
  %9 = or i32 %8, 4096
  %10 = inttoptr i32 %9 to i32*
  store volatile i32 %7, i32* %10, align 4, !tbaa !18
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @gpio_set_oeover(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds [30 x %struct.iobank0_status_ctrl_hw_t], [30 x %struct.iobank0_status_ctrl_hw_t]* inttoptr (i32 1073823744 to [30 x %struct.iobank0_status_ctrl_hw_t]*), i32 0, i32 %0, i32 1
  %4 = shl i32 %1, 12
  %5 = load volatile i32, i32* %3, align 4, !tbaa !18
  %6 = xor i32 %5, %4
  %7 = and i32 %6, 12288
  %8 = ptrtoint i32* %3 to i32
  %9 = or i32 %8, 4096
  %10 = inttoptr i32 %9 to i32*
  store volatile i32 %7, i32* %10, align 4, !tbaa !18
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @gpio_set_input_hysteresis_enabled(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds [30 x i32], [30 x i32]* inttoptr (i32 1073856516 to [30 x i32]*), i32 0, i32 %0
  %4 = ptrtoint i32* %3 to i32
  %5 = select i1 %1, i32 8192, i32 12288
  %6 = or i32 %5, %4
  %7 = inttoptr i32 %6 to i32*
  store volatile i32 2, i32* %7, align 4, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local zeroext i1 @gpio_is_input_hysteresis_enabled(i32 noundef %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds [30 x i32], [30 x i32]* inttoptr (i32 1073856516 to [30 x i32]*), i32 0, i32 %0
  %3 = load volatile i32, i32* %2, align 4, !tbaa !18
  %4 = and i32 %3, 2
  %5 = icmp ne i32 %4, 0
  ret i1 %5
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @gpio_set_slew_rate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds [30 x i32], [30 x i32]* inttoptr (i32 1073856516 to [30 x i32]*), i32 0, i32 %0
  %4 = load volatile i32, i32* %3, align 4, !tbaa !18
  %5 = xor i32 %4, %1
  %6 = and i32 %5, 1
  %7 = ptrtoint i32* %3 to i32
  %8 = or i32 %7, 4096
  %9 = inttoptr i32 %8 to i32*
  store volatile i32 %6, i32* %9, align 4, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local i32 @gpio_get_slew_rate(i32 noundef %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds [30 x i32], [30 x i32]* inttoptr (i32 1073856516 to [30 x i32]*), i32 0, i32 %0
  %3 = load volatile i32, i32* %2, align 4, !tbaa !18
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @gpio_set_drive_strength(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds [30 x i32], [30 x i32]* inttoptr (i32 1073856516 to [30 x i32]*), i32 0, i32 %0
  %4 = shl i32 %1, 4
  %5 = load volatile i32, i32* %3, align 4, !tbaa !18
  %6 = xor i32 %5, %4
  %7 = and i32 %6, 48
  %8 = ptrtoint i32* %3 to i32
  %9 = or i32 %8, 4096
  %10 = inttoptr i32 %9 to i32*
  store volatile i32 %7, i32* %10, align 4, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local i32 @gpio_get_drive_strength(i32 noundef %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds [30 x i32], [30 x i32]* inttoptr (i32 1073856516 to [30 x i32]*), i32 0, i32 %0
  %3 = load volatile i32, i32* %2, align 4, !tbaa !18
  %4 = lshr i32 %3, 4
  %5 = and i32 %4, 3
  ret i32 %5
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @gpio_set_irq_enabled(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = load i32, i32* inttoptr (i32 -805306368 to i32*), align 268435456, !tbaa !18
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, %struct.io_irq_ctrl_hw_t* inttoptr (i32 1073824000 to %struct.io_irq_ctrl_hw_t*), %struct.io_irq_ctrl_hw_t* inttoptr (i32 1073824048 to %struct.io_irq_ctrl_hw_t*)
  tail call fastcc void @_gpio_set_irq_enabled(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, %struct.io_irq_ctrl_hw_t* noundef nonnull %6)
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define internal fastcc void @_gpio_set_irq_enabled(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, %struct.io_irq_ctrl_hw_t* noundef %3) unnamed_addr #2 {
  tail call void @gpio_acknowledge_irq(i32 noundef %0, i32 noundef %1)
  %5 = lshr i32 %0, 3
  %6 = getelementptr inbounds %struct.io_irq_ctrl_hw_t, %struct.io_irq_ctrl_hw_t* %3, i32 0, i32 0, i32 %5
  %7 = shl i32 %0, 2
  %8 = and i32 %7, 28
  %9 = shl i32 %1, %8
  %10 = ptrtoint i32* %6 to i32
  %11 = select i1 %2, i32 8192, i32 12288
  %12 = or i32 %11, %10
  %13 = inttoptr i32 %12 to i32*
  store volatile i32 %9, i32* %13, align 4, !tbaa !18
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @gpio_acknowledge_irq(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = shl i32 %0, 2
  %4 = and i32 %3, 28
  %5 = shl i32 %1, %4
  %6 = lshr i32 %0, 3
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* inttoptr (i32 1073823984 to [4 x i32]*), i32 0, i32 %6
  store volatile i32 %5, i32* %7, align 4, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @gpio_set_irq_enabled_with_callback(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, void (i32, i32)* noundef %3) local_unnamed_addr #3 {
  tail call void @gpio_set_irq_enabled(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2)
  %5 = load i32, i32* inttoptr (i32 -805306368 to i32*), align 268435456, !tbaa !18
  %6 = getelementptr inbounds [2 x void (i32, i32)*], [2 x void (i32, i32)*]* @_callbacks, i32 0, i32 %5
  store void (i32, i32)* %3, void (i32, i32)** %6, align 4, !tbaa !11
  tail call void @irq_set_exclusive_handler(i32 noundef 13, void ()* noundef nonnull @gpio_irq_handler) #30
  tail call void @irq_set_enabled(i32 noundef 13, i1 noundef zeroext true) #30
  ret void
}

; Function Attrs: noinline nounwind
define internal void @gpio_irq_handler() #3 {
  %1 = load i32, i32* inttoptr (i32 -805306368 to i32*), align 268435456, !tbaa !18
  %2 = icmp eq i32 %1, 0
  %3 = select i1 %2, [4 x i32]* inttoptr (i32 1073824032 to [4 x i32]*), [4 x i32]* inttoptr (i32 1073824080 to [4 x i32]*)
  br label %5

4:                                                ; preds = %21
  ret void

5:                                                ; preds = %0, %21
  %6 = phi i32 [ 0, %0 ], [ %22, %21 ]
  %7 = lshr i32 %6, 3
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i32 0, i32 %7
  %9 = load volatile i32, i32* %8, align 4, !tbaa !18
  %10 = shl nuw nsw i32 %6, 2
  %11 = and i32 %10, 28
  %12 = lshr i32 %9, %11
  %13 = and i32 %12, 15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %5
  tail call void @gpio_acknowledge_irq(i32 noundef %6, i32 noundef %13)
  %16 = load i32, i32* inttoptr (i32 -805306368 to i32*), align 268435456, !tbaa !18
  %17 = getelementptr inbounds [2 x void (i32, i32)*], [2 x void (i32, i32)*]* @_callbacks, i32 0, i32 %16
  %18 = load void (i32, i32)*, void (i32, i32)** %17, align 4, !tbaa !11
  %19 = icmp eq void (i32, i32)* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void %18(i32 noundef %6, i32 noundef %13) #30
  br label %21

21:                                               ; preds = %15, %20, %5
  %22 = add nuw nsw i32 %6, 1
  %23 = icmp eq i32 %22, 30
  br i1 %23, label %4, label %5, !llvm.loop !22
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @gpio_set_dormant_irq_enabled(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
  tail call fastcc void @_gpio_set_irq_enabled(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, %struct.io_irq_ctrl_hw_t* noundef nonnull inttoptr (i32 1073824096 to %struct.io_irq_ctrl_hw_t*))
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @gpio_debug_pins_init() local_unnamed_addr #2 {
  tail call void @gpio_init_mask(i32 noundef 3670016)
  tail call fastcc void @gpio_set_dir_masked()
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @gpio_init_mask(i32 noundef %0) local_unnamed_addr #2 {
  %2 = and i32 %0, 1
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @gpio_init(i32 noundef 0)
  br label %5

5:                                                ; preds = %4, %1
  %6 = and i32 %0, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @gpio_init(i32 noundef 1)
  br label %9

9:                                                ; preds = %8, %5
  %10 = and i32 %0, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @gpio_init(i32 noundef 2)
  br label %13

13:                                               ; preds = %12, %9
  %14 = and i32 %0, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @gpio_init(i32 noundef 3)
  br label %17

17:                                               ; preds = %16, %13
  %18 = and i32 %0, 16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @gpio_init(i32 noundef 4)
  br label %21

21:                                               ; preds = %20, %17
  %22 = and i32 %0, 32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @gpio_init(i32 noundef 5)
  br label %25

25:                                               ; preds = %24, %21
  %26 = and i32 %0, 64
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @gpio_init(i32 noundef 6)
  br label %29

29:                                               ; preds = %28, %25
  %30 = and i32 %0, 128
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void @gpio_init(i32 noundef 7)
  br label %33

33:                                               ; preds = %32, %29
  %34 = and i32 %0, 256
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @gpio_init(i32 noundef 8)
  br label %37

37:                                               ; preds = %36, %33
  %38 = and i32 %0, 512
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void @gpio_init(i32 noundef 9)
  br label %41

41:                                               ; preds = %40, %37
  %42 = and i32 %0, 1024
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  tail call void @gpio_init(i32 noundef 10)
  br label %45

45:                                               ; preds = %44, %41
  %46 = and i32 %0, 2048
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void @gpio_init(i32 noundef 11)
  br label %49

49:                                               ; preds = %48, %45
  %50 = and i32 %0, 4096
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  tail call void @gpio_init(i32 noundef 12)
  br label %53

53:                                               ; preds = %52, %49
  %54 = and i32 %0, 8192
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  tail call void @gpio_init(i32 noundef 13)
  br label %57

57:                                               ; preds = %56, %53
  %58 = and i32 %0, 16384
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  tail call void @gpio_init(i32 noundef 14)
  br label %61

61:                                               ; preds = %60, %57
  %62 = and i32 %0, 32768
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  tail call void @gpio_init(i32 noundef 15)
  br label %65

65:                                               ; preds = %64, %61
  %66 = and i32 %0, 65536
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  tail call void @gpio_init(i32 noundef 16)
  br label %69

69:                                               ; preds = %68, %65
  %70 = and i32 %0, 131072
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  tail call void @gpio_init(i32 noundef 17)
  br label %73

73:                                               ; preds = %72, %69
  %74 = and i32 %0, 262144
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  tail call void @gpio_init(i32 noundef 18)
  br label %77

77:                                               ; preds = %76, %73
  %78 = and i32 %0, 524288
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  tail call void @gpio_init(i32 noundef 19)
  br label %81

81:                                               ; preds = %80, %77
  %82 = and i32 %0, 1048576
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  tail call void @gpio_init(i32 noundef 20)
  br label %85

85:                                               ; preds = %84, %81
  %86 = and i32 %0, 2097152
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %85
  tail call void @gpio_init(i32 noundef 21)
  br label %89

89:                                               ; preds = %88, %85
  %90 = and i32 %0, 4194304
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  tail call void @gpio_init(i32 noundef 22)
  br label %93

93:                                               ; preds = %92, %89
  %94 = and i32 %0, 8388608
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %93
  tail call void @gpio_init(i32 noundef 23)
  br label %97

97:                                               ; preds = %96, %93
  %98 = and i32 %0, 16777216
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  tail call void @gpio_init(i32 noundef 24)
  br label %101

101:                                              ; preds = %100, %97
  %102 = and i32 %0, 33554432
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %101
  tail call void @gpio_init(i32 noundef 25)
  br label %105

105:                                              ; preds = %104, %101
  %106 = and i32 %0, 67108864
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  tail call void @gpio_init(i32 noundef 26)
  br label %109

109:                                              ; preds = %108, %105
  %110 = and i32 %0, 134217728
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %109
  tail call void @gpio_init(i32 noundef 27)
  br label %113

113:                                              ; preds = %112, %109
  %114 = and i32 %0, 268435456
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %113
  tail call void @gpio_init(i32 noundef 28)
  br label %117

117:                                              ; preds = %116, %113
  %118 = and i32 %0, 536870912
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %117
  tail call void @gpio_init(i32 noundef 29)
  br label %121

121:                                              ; preds = %120, %117
  %122 = and i32 %0, 1073741824
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %121
  tail call void @gpio_init(i32 noundef 30)
  br label %125

125:                                              ; preds = %124, %121
  %126 = icmp sgt i32 %0, -1
  br i1 %126, label %128, label %127

127:                                              ; preds = %125
  tail call void @gpio_init(i32 noundef 31)
  br label %128

128:                                              ; preds = %127, %125
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define internal fastcc void @gpio_set_dir_masked() unnamed_addr #2 {
  %1 = load volatile i32, i32* inttoptr (i32 -805306336 to i32*), align 32, !tbaa !24
  %2 = and i32 %1, 3670016
  %3 = xor i32 %2, 3670016
  store volatile i32 %3, i32* inttoptr (i32 -805306324 to i32*), align 4, !tbaa !25
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @gpio_init(i32 noundef %0) local_unnamed_addr #2 {
  %2 = shl nuw i32 1, %0
  store volatile i32 %2, i32* inttoptr (i32 -805306328 to i32*), align 8, !tbaa !26
  store volatile i32 %2, i32* inttoptr (i32 -805306344 to i32*), align 8, !tbaa !16
  tail call void @gpio_set_function(i32 noundef %0, i32 noundef 5)
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @gpio_set_input_enabled(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds [30 x i32], [30 x i32]* inttoptr (i32 1073856516 to [30 x i32]*), i32 0, i32 %0
  %4 = ptrtoint i32* %3 to i32
  %5 = select i1 %1, i32 8192, i32 12288
  %6 = or i32 %5, %4
  %7 = inttoptr i32 %6 to i32*
  store volatile i32 64, i32* %7, align 4, !tbaa !18
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @gpio_deinit(i32 noundef %0) local_unnamed_addr #2 {
  tail call void @gpio_set_function(i32 noundef %0, i32 noundef 31)
  ret void
}

; Function Attrs: noinline nounwind
define dso_local i32 @hw_claim_lock() local_unnamed_addr #3 {
  %1 = tail call i32 asm sideeffect "mrs $0, PRIMASK", "=r"() #30, !srcloc !27
  tail call void asm sideeffect "cpsid i", ""() #30, !srcloc !28
  br label %2

2:                                                ; preds = %11, %0
  %3 = load volatile i32, i32* inttoptr (i32 -805306068 to i32*), align 4, !tbaa !18
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %14, !prof !29, !llvm.loop !30

5:                                                ; preds = %2
  %6 = load volatile i32, i32* inttoptr (i32 -805306068 to i32*), align 4, !tbaa !18
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14, !prof !29, !llvm.loop !30

8:                                                ; preds = %5
  %9 = load volatile i32, i32* inttoptr (i32 -805306068 to i32*), align 4, !tbaa !18
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14, !prof !29, !llvm.loop !30

11:                                               ; preds = %8
  %12 = load volatile i32, i32* inttoptr (i32 -805306068 to i32*), align 4, !tbaa !18
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %2, label %14, !prof !29, !llvm.loop !30

14:                                               ; preds = %11, %8, %5, %2
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !31
  ret i32 %1
}

; Function Attrs: noinline nounwind
define dso_local void @hw_claim_unlock(i32 noundef %0) local_unnamed_addr #3 {
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !31
  store volatile i32 0, i32* inttoptr (i32 -805306068 to i32*), align 4, !tbaa !18
  tail call void asm sideeffect "msr PRIMASK,$0", "r"(i32 %0) #30, !srcloc !32
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define dso_local zeroext i1 @hw_is_claimed(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = lshr i32 %1, 3
  %4 = getelementptr inbounds i8, i8* %0, i32 %3
  %5 = load i8, i8* %4, align 1, !tbaa !8
  %6 = zext i8 %5 to i32
  %7 = and i32 %1, 7
  %8 = shl nuw nsw i32 1, %7
  %9 = and i32 %8, %6
  %10 = icmp ne i32 %9, 0
  ret i1 %10
}

; Function Attrs: noinline nounwind
define dso_local void @hw_claim_or_assert(i8* nocapture noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #3 {
  %4 = tail call i32 @hw_claim_lock()
  %5 = tail call zeroext i1 @hw_is_claimed(i8* noundef %0, i32 noundef %1)
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void (i8*, ...) @panic(i8* noundef %2, i32 noundef %1) #32
  unreachable

7:                                                ; preds = %3
  %8 = and i32 %1, 7
  %9 = shl nuw nsw i32 1, %8
  %10 = lshr i32 %1, 3
  %11 = getelementptr inbounds i8, i8* %0, i32 %10
  %12 = load i8, i8* %11, align 1, !tbaa !8
  %13 = trunc i32 %9 to i8
  %14 = or i8 %12, %13
  store i8 %14, i8* %11, align 1, !tbaa !8
  tail call void @hw_claim_unlock(i32 noundef %4)
  ret void
}

; Function Attrs: noinline nounwind
define dso_local i32 @hw_claim_unused_from_range(i8* nocapture noundef %0, i1 noundef zeroext %1, i32 noundef %2, i32 noundef %3, i8* noundef %4) local_unnamed_addr #3 {
  %6 = tail call i32 @hw_claim_lock()
  %7 = icmp ugt i32 %2, %3
  br i1 %7, label %22, label %8

8:                                                ; preds = %5, %19
  %9 = phi i32 [ %20, %19 ], [ %2, %5 ]
  %10 = tail call zeroext i1 @hw_is_claimed(i8* noundef %0, i32 noundef %9)
  br i1 %10, label %19, label %11

11:                                               ; preds = %8
  %12 = and i32 %9, 7
  %13 = shl nuw nsw i32 1, %12
  %14 = lshr i32 %9, 3
  %15 = getelementptr inbounds i8, i8* %0, i32 %14
  %16 = load i8, i8* %15, align 1, !tbaa !8
  %17 = trunc i32 %13 to i8
  %18 = or i8 %16, %17
  store i8 %18, i8* %15, align 1, !tbaa !8
  br label %22

19:                                               ; preds = %8
  %20 = add i32 %9, 1
  %21 = icmp ugt i32 %20, %3
  br i1 %21, label %22, label %8, !llvm.loop !33

22:                                               ; preds = %19, %5, %11
  %23 = phi i32 [ %9, %11 ], [ -1, %5 ], [ -1, %19 ]
  tail call void @hw_claim_unlock(i32 noundef %6)
  %24 = icmp slt i32 %23, 0
  %25 = and i1 %24, %1
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  tail call void (i8*, ...) @panic(i8* noundef %4) #32
  unreachable

27:                                               ; preds = %22
  ret i32 %23
}

; Function Attrs: noinline nounwind
define dso_local void @hw_claim_clear(i8* nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = tail call i32 @hw_claim_lock()
  %4 = and i32 %1, 7
  %5 = shl nuw nsw i32 1, %4
  %6 = lshr i32 %1, 3
  %7 = getelementptr inbounds i8, i8* %0, i32 %6
  %8 = load i8, i8* %7, align 1, !tbaa !8
  %9 = trunc i32 %5 to i8
  %10 = xor i8 %9, -1
  %11 = and i8 %8, %10
  store i8 %11, i8* %7, align 1, !tbaa !8
  tail call void @hw_claim_unlock(i32 noundef %3)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local zeroext i1 @running_on_fpga() local_unnamed_addr #9 {
  %1 = load volatile i32, i32* inttoptr (i32 1074184192 to i32*), align 16384, !tbaa !18
  %2 = and i32 %1, 2
  %3 = icmp ne i32 %2, 0
  ret i1 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local zeroext i8 @rp2040_chip_version() local_unnamed_addr #9 {
  %1 = load volatile i32, i32* inttoptr (i32 1073741824 to i32*), align 1073741824, !tbaa !18
  %2 = lshr i32 %1, 28
  %3 = trunc i32 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind
define dso_local void @spin_locks_reset() local_unnamed_addr #3 {
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !34
  store volatile i32 0, i32* inttoptr (i32 -805306112 to i32*), align 256, !tbaa !18
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !34
  store volatile i32 0, i32* inttoptr (i32 -805306108 to i32*), align 4, !tbaa !18
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !34
  store volatile i32 0, i32* inttoptr (i32 -805306104 to i32*), align 8, !tbaa !18
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !34
  store volatile i32 0, i32* inttoptr (i32 -805306100 to i32*), align 4, !tbaa !18
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !34
  store volatile i32 0, i32* inttoptr (i32 -805306096 to i32*), align 16, !tbaa !18
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !34
  store volatile i32 0, i32* inttoptr (i32 -805306092 to i32*), align 4, !tbaa !18
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !34
  store volatile i32 0, i32* inttoptr (i32 -805306088 to i32*), align 8, !tbaa !18
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !34
  store volatile i32 0, i32* inttoptr (i32 -805306084 to i32*), align 4, !tbaa !18
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !34
  store volatile i32 0, i32* inttoptr (i32 -805306080 to i32*), align 32, !tbaa !18
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !34
  store volatile i32 0, i32* inttoptr (i32 -805306076 to i32*), align 4, !tbaa !18
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !34
  store volatile i32 0, i32* inttoptr (i32 -805306072 to i32*), align 8, !tbaa !18
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !34
  store volatile i32 0, i32* inttoptr (i32 -805306068 to i32*), align 4, !tbaa !18
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !34
  store volatile i32 0, i32* inttoptr (i32 -805306064 to i32*), align 16, !tbaa !18
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !34
  store volatile i32 0, i32* inttoptr (i32 -805306060 to i32*), align 4, !tbaa !18
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !34
  store volatile i32 0, i32* inttoptr (i32 -805306056 to i32*), align 8, !tbaa !18
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !34
  store volatile i32 0, i32* inttoptr (i32 -805306052 to i32*), align 4, !tbaa !18
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !34
  store volatile i32 0, i32* inttoptr (i32 -805306048 to i32*), align 64, !tbaa !18
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !34
  store volatile i32 0, i32* inttoptr (i32 -805306044 to i32*), align 4, !tbaa !18
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !34
  store volatile i32 0, i32* inttoptr (i32 -805306040 to i32*), align 8, !tbaa !18
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !34
  store volatile i32 0, i32* inttoptr (i32 -805306036 to i32*), align 4, !tbaa !18
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !34
  store volatile i32 0, i32* inttoptr (i32 -805306032 to i32*), align 16, !tbaa !18
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !34
  store volatile i32 0, i32* inttoptr (i32 -805306028 to i32*), align 4, !tbaa !18
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !34
  store volatile i32 0, i32* inttoptr (i32 -805306024 to i32*), align 8, !tbaa !18
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !34
  store volatile i32 0, i32* inttoptr (i32 -805306020 to i32*), align 4, !tbaa !18
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !34
  store volatile i32 0, i32* inttoptr (i32 -805306016 to i32*), align 32, !tbaa !18
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !34
  store volatile i32 0, i32* inttoptr (i32 -805306012 to i32*), align 4, !tbaa !18
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !34
  store volatile i32 0, i32* inttoptr (i32 -805306008 to i32*), align 8, !tbaa !18
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !34
  store volatile i32 0, i32* inttoptr (i32 -805306004 to i32*), align 4, !tbaa !18
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !34
  store volatile i32 0, i32* inttoptr (i32 -805306000 to i32*), align 16, !tbaa !18
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !34
  store volatile i32 0, i32* inttoptr (i32 -805305996 to i32*), align 4, !tbaa !18
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !34
  store volatile i32 0, i32* inttoptr (i32 -805305992 to i32*), align 8, !tbaa !18
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !34
  store volatile i32 0, i32* inttoptr (i32 -805305988 to i32*), align 4, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind
define dso_local i32* @spin_lock_init(i32 noundef %0) local_unnamed_addr #3 {
  %2 = shl i32 %0, 2
  %3 = add i32 %2, -805306112
  %4 = inttoptr i32 %3 to i32*
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !34
  store volatile i32 0, i32* %4, align 4, !tbaa !18
  ret i32* %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn
define dso_local i32 @next_striped_spin_lock_num() local_unnamed_addr #11 {
  %1 = load i8, i8* @striped_spin_lock_num, align 1, !tbaa !8
  %2 = add i8 %1, 1
  %3 = icmp ugt i8 %2, 23
  %4 = select i1 %3, i8 16, i8 %2
  store i8 %4, i8* @striped_spin_lock_num, align 1, !tbaa !8
  %5 = zext i8 %1 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind
define dso_local void @spin_lock_claim(i32 noundef %0) local_unnamed_addr #3 {
  tail call void @hw_claim_or_assert(i8* noundef bitcast (i32* @claimed to i8*), i32 noundef %0, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i32 0, i32 0)) #30
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @spin_lock_claim_mask(i32 noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %10, %1
  ret void

4:                                                ; preds = %1, %10
  %5 = phi i32 [ %11, %10 ], [ 0, %1 ]
  %6 = phi i32 [ %12, %10 ], [ %0, %1 ]
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void @spin_lock_claim(i32 noundef %5)
  br label %10

10:                                               ; preds = %4, %9
  %11 = add nuw nsw i32 %5, 1
  %12 = lshr i32 %6, 1
  %13 = icmp ult i32 %6, 2
  br i1 %13, label %3, label %4, !llvm.loop !35
}

; Function Attrs: noinline nounwind
define dso_local void @spin_lock_unclaim(i32 noundef %0) local_unnamed_addr #3 {
  %2 = shl i32 %0, 2
  %3 = add i32 %2, -805306112
  %4 = inttoptr i32 %3 to i32*
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !34
  store volatile i32 0, i32* %4, align 4, !tbaa !18
  tail call void @hw_claim_clear(i8* noundef bitcast (i32* @claimed to i8*), i32 noundef %0) #30
  ret void
}

; Function Attrs: noinline nounwind
define dso_local i32 @spin_lock_claim_unused(i1 noundef zeroext %0) local_unnamed_addr #3 {
  %2 = tail call i32 @hw_claim_unused_from_range(i8* noundef bitcast (i32* @claimed to i8*), i1 noundef zeroext %0, i32 noundef 24, i32 noundef 31, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1.10, i32 0, i32 0)) #30
  ret i32 %2
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @spin_lock_is_claimed(i32 noundef %0) local_unnamed_addr #3 {
  %2 = tail call zeroext i1 @hw_is_claimed(i8* noundef bitcast (i32* @claimed to i8*), i32 noundef %0) #30
  ret i1 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define dso_local zeroext i1 @timer_pool_entry_comparator(i8* nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #10 {
  %4 = getelementptr i8, i8* %0, i32 8
  %5 = bitcast i8* %4 to %struct.alarm_pool_entry**
  %6 = load %struct.alarm_pool_entry*, %struct.alarm_pool_entry** %5, align 4, !tbaa !36
  %7 = tail call fastcc %struct.alarm_pool_entry* @get_entry(%struct.alarm_pool_entry* %6, i8 noundef zeroext %1)
  %8 = getelementptr inbounds %struct.alarm_pool_entry, %struct.alarm_pool_entry* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8, !tbaa !38
  %10 = tail call fastcc %struct.alarm_pool_entry* @get_entry(%struct.alarm_pool_entry* %6, i8 noundef zeroext %2)
  %11 = getelementptr inbounds %struct.alarm_pool_entry, %struct.alarm_pool_entry* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8, !tbaa !38
  %13 = icmp ult i64 %9, %12
  ret i1 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define internal fastcc nonnull %struct.alarm_pool_entry* @get_entry(%struct.alarm_pool_entry* %0, i8 noundef zeroext %1) unnamed_addr #10 {
  %3 = zext i8 %1 to i32
  %4 = getelementptr inbounds %struct.alarm_pool_entry, %struct.alarm_pool_entry* %0, i32 %3
  %5 = getelementptr inbounds %struct.alarm_pool_entry, %struct.alarm_pool_entry* %4, i32 -1
  ret %struct.alarm_pool_entry* %5
}

; Function Attrs: noinline nounwind
define dso_local void @alarm_pool_init_default() local_unnamed_addr #3 {
  %1 = tail call fastcc zeroext i1 @default_alarm_pool_initialized()
  br i1 %1, label %4, label %2

2:                                                ; preds = %0
  %3 = load %struct.pheap*, %struct.pheap** getelementptr inbounds (%struct.alarm_pool, %struct.alarm_pool* @default_alarm_pool, i32 0, i32 0), align 4, !tbaa !41
  tail call void @ph_post_alloc_init(%struct.pheap* noundef %3, i32 noundef 16, i1 (i8*, i8, i8)* noundef nonnull @timer_pool_entry_comparator, i8* noundef bitcast (%struct.alarm_pool* @default_alarm_pool to i8*)) #30
  tail call fastcc void @alarm_pool_post_alloc_init(%struct.alarm_pool* noundef nonnull @default_alarm_pool, i32 noundef 3)
  br label %4

4:                                                ; preds = %2, %0
  tail call void @lock_init(%struct.lock_core* noundef nonnull @sleep_notifier, i32 noundef 10) #30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define internal fastcc zeroext i1 @default_alarm_pool_initialized() unnamed_addr #10 {
  %1 = load i32*, i32** getelementptr inbounds (%struct.alarm_pool, %struct.alarm_pool* @default_alarm_pool, i32 0, i32 1), align 4, !tbaa !42
  %2 = icmp ne i32* %1, null
  ret i1 %2
}

; Function Attrs: noinline nounwind
define internal fastcc void @alarm_pool_post_alloc_init(%struct.alarm_pool* noundef %0, i32 noundef %1) unnamed_addr #3 {
  tail call void @hardware_alarm_claim(i32 noundef %1) #30
  tail call void @hardware_alarm_cancel(i32 noundef %1) #30
  tail call void @hardware_alarm_set_callback(i32 noundef %1, void (i32)* noundef nonnull @alarm_pool_alarm_callback) #30
  %3 = tail call i32 @next_striped_spin_lock_num() #30
  %4 = shl i32 %3, 2
  %5 = add i32 %4, -805306112
  %6 = inttoptr i32 %5 to i32*
  %7 = getelementptr inbounds %struct.alarm_pool, %struct.alarm_pool* %0, i32 0, i32 1
  store i32* %6, i32** %7, align 4, !tbaa !42
  %8 = trunc i32 %1 to i8
  %9 = getelementptr inbounds %struct.alarm_pool, %struct.alarm_pool* %0, i32 0, i32 5
  store i8 %8, i8* %9, align 4, !tbaa !43
  %10 = getelementptr inbounds [4 x %struct.alarm_pool*], [4 x %struct.alarm_pool*]* @pools, i32 0, i32 %1
  store %struct.alarm_pool* %0, %struct.alarm_pool** %10, align 4, !tbaa !11
  ret void
}

; Function Attrs: noinline nounwind
define internal void @alarm_pool_alarm_callback(i32 noundef %0) #3 {
  %2 = getelementptr inbounds [4 x %struct.alarm_pool*], [4 x %struct.alarm_pool*]* @pools, i32 0, i32 %0
  %3 = load %struct.alarm_pool*, %struct.alarm_pool** %2, align 4, !tbaa !11
  %4 = getelementptr inbounds %struct.alarm_pool, %struct.alarm_pool* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.alarm_pool, %struct.alarm_pool* %3, i32 0, i32 0
  %6 = getelementptr %struct.alarm_pool, %struct.alarm_pool* %3, i32 0, i32 2
  %7 = getelementptr %struct.alarm_pool, %struct.alarm_pool* %3, i32 0, i32 3
  %8 = getelementptr inbounds %struct.alarm_pool, %struct.alarm_pool* %3, i32 0, i32 4
  br label %9

9:                                                ; preds = %104, %1
  %10 = phi i8 [ undef, %1 ], [ %53, %104 ]
  %11 = tail call fastcc i64 @get_absolute_time()
  %12 = load i32*, i32** %4, align 4, !tbaa !42
  %13 = tail call i32 asm sideeffect "mrs $0, PRIMASK", "=r"() #30, !srcloc !44
  tail call void asm sideeffect "cpsid i", ""() #30, !srcloc !45
  br label %14

14:                                               ; preds = %23, %9
  %15 = load volatile i32, i32* %12, align 4, !tbaa !18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %26, !prof !29, !llvm.loop !46

17:                                               ; preds = %14
  %18 = load volatile i32, i32* %12, align 4, !tbaa !18
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26, !prof !29, !llvm.loop !46

20:                                               ; preds = %17
  %21 = load volatile i32, i32* %12, align 4, !tbaa !18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26, !prof !29, !llvm.loop !46

23:                                               ; preds = %20
  %24 = load volatile i32, i32* %12, align 4, !tbaa !18
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %14, label %26, !prof !29, !llvm.loop !46

26:                                               ; preds = %23, %20, %17, %14
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !47
  %27 = load %struct.pheap*, %struct.pheap** %5, align 4, !tbaa !41
  %28 = getelementptr %struct.pheap, %struct.pheap* %27, i32 0, i32 4
  %29 = load i8, i8* %28, align 1, !tbaa !48
  %30 = tail call fastcc zeroext i8 @ph_peek_head(i8 %29)
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %52, label %32

32:                                               ; preds = %26
  %33 = load %struct.alarm_pool_entry*, %struct.alarm_pool_entry** %6, align 4, !tbaa !36
  %34 = tail call fastcc %struct.alarm_pool_entry* @get_entry(%struct.alarm_pool_entry* %33, i8 noundef zeroext %30)
  %35 = getelementptr inbounds %struct.alarm_pool_entry, %struct.alarm_pool_entry* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8, !tbaa !38
  %37 = tail call fastcc i64 @absolute_time_diff_us(i64 noundef %11, i64 noundef %36)
  %38 = icmp slt i64 %37, 1
  br i1 %38, label %39, label %50

39:                                               ; preds = %32
  %40 = tail call zeroext i8 @ph_remove_head(%struct.pheap* noundef nonnull %27, i1 noundef zeroext false) #30
  %41 = load i64, i64* %35, align 8, !tbaa !38
  %42 = getelementptr inbounds %struct.alarm_pool_entry, %struct.alarm_pool_entry* %34, i32 0, i32 1
  %43 = load i64 (i32, i8*)*, i64 (i32, i8*)** %42, align 8, !tbaa !50
  %44 = getelementptr inbounds %struct.alarm_pool_entry, %struct.alarm_pool_entry* %34, i32 0, i32 2
  %45 = load i8*, i8** %44, align 4, !tbaa !51
  %46 = load i8*, i8** %7, align 4, !tbaa !52
  %47 = tail call fastcc i8* @get_entry_id_high(i8* %46, i8 noundef zeroext %30)
  %48 = load i8, i8* %47, align 1, !tbaa !8
  %49 = tail call fastcc i32 @make_public_id(i8 noundef zeroext %48, i8 noundef zeroext %40)
  store i32 %49, i32* %8, align 4, !tbaa !53
  br label %52

50:                                               ; preds = %32
  %51 = tail call zeroext i1 @hardware_alarm_set_target(i32 noundef %0, i64 noundef %36) #30
  br label %52

52:                                               ; preds = %50, %39, %26
  %53 = phi i8 [ %10, %26 ], [ %48, %39 ], [ %10, %50 ]
  %54 = phi i8* [ null, %26 ], [ %45, %39 ], [ null, %50 ]
  %55 = phi i64 [ 0, %26 ], [ %41, %39 ], [ 0, %50 ]
  %56 = phi i64 (i32, i8*)* [ null, %26 ], [ %43, %39 ], [ null, %50 ]
  %57 = phi i1 [ false, %26 ], [ false, %39 ], [ %51, %50 ]
  %58 = load i32*, i32** %4, align 4, !tbaa !42
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !47
  store volatile i32 0, i32* %58, align 4, !tbaa !18
  tail call void asm sideeffect "msr PRIMASK,$0", "r"(i32 %13) #30, !srcloc !54
  %59 = icmp eq i64 (i32, i8*)* %56, null
  br i1 %59, label %103, label %60

60:                                               ; preds = %52
  %61 = tail call fastcc i32 @make_public_id(i8 noundef zeroext %53, i8 noundef zeroext %30)
  %62 = tail call i64 %56(i32 noundef %61, i8* noundef %54) #30
  %63 = load i32*, i32** %4, align 4, !tbaa !42
  %64 = tail call i32 asm sideeffect "mrs $0, PRIMASK", "=r"() #30, !srcloc !44
  tail call void asm sideeffect "cpsid i", ""() #30, !srcloc !45
  br label %65

65:                                               ; preds = %74, %60
  %66 = load volatile i32, i32* %63, align 4, !tbaa !18
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %77, !prof !29, !llvm.loop !46

68:                                               ; preds = %65
  %69 = load volatile i32, i32* %63, align 4, !tbaa !18
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %77, !prof !29, !llvm.loop !46

71:                                               ; preds = %68
  %72 = load volatile i32, i32* %63, align 4, !tbaa !18
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77, !prof !29, !llvm.loop !46

74:                                               ; preds = %71
  %75 = load volatile i32, i32* %63, align 4, !tbaa !18
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %65, label %77, !prof !29, !llvm.loop !46

77:                                               ; preds = %74, %71, %68, %65
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !47
  %78 = icmp slt i64 %62, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %77
  %80 = load i32, i32* %8, align 4, !tbaa !53
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %95, label %82

82:                                               ; preds = %79
  %83 = sub nsw i64 0, %62
  %84 = tail call fastcc i64 @delayed_by_us(i64 noundef %55, i64 noundef %83)
  %85 = tail call fastcc zeroext i8 @add_alarm_under_lock(%struct.alarm_pool* noundef nonnull %3, i64 noundef %84, i64 (i32, i8*)* noundef nonnull %56, i8* noundef %54, i8 noundef zeroext %30, i1 noundef zeroext true, i8* noundef null)
  br label %101

86:                                               ; preds = %77
  %87 = icmp eq i64 %62, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %86
  %89 = load i32, i32* %8, align 4, !tbaa !53
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %88
  %92 = tail call fastcc i64 @get_absolute_time()
  %93 = tail call fastcc i64 @delayed_by_us(i64 noundef %92, i64 noundef %62)
  %94 = tail call fastcc zeroext i8 @add_alarm_under_lock(%struct.alarm_pool* noundef nonnull %3, i64 noundef %93, i64 (i32, i8*)* noundef nonnull %56, i8* noundef %54, i8 noundef zeroext %30, i1 noundef zeroext true, i8* noundef null)
  br label %101

95:                                               ; preds = %79, %88, %86
  %96 = load %struct.pheap*, %struct.pheap** %5, align 4, !tbaa !41
  tail call fastcc void @ph_free_node(%struct.pheap* noundef %96, i8 noundef zeroext %30)
  %97 = load i8*, i8** %7, align 4, !tbaa !52
  %98 = tail call fastcc i8* @get_entry_id_high(i8* %97, i8 noundef zeroext %30)
  %99 = load i8, i8* %98, align 1, !tbaa !8
  %100 = add i8 %99, 1
  store i8 %100, i8* %98, align 1, !tbaa !8
  br label %101

101:                                              ; preds = %91, %95, %82
  store i32 0, i32* %8, align 4, !tbaa !53
  %102 = load i32*, i32** %4, align 4, !tbaa !42
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !47
  store volatile i32 0, i32* %102, align 4, !tbaa !18
  tail call void asm sideeffect "msr PRIMASK,$0", "r"(i32 %64) #30, !srcloc !54
  br label %104

103:                                              ; preds = %52
  br i1 %57, label %104, label %105

104:                                              ; preds = %103, %101
  br label %9, !llvm.loop !55

105:                                              ; preds = %103
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc i64 @get_absolute_time() unnamed_addr #3 {
  %1 = alloca i64, align 8
  %2 = bitcast i64* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #30
  %3 = tail call i64 @time_us_64() #30
  call fastcc void @update_us_since_boot(i64* noundef nonnull %1, i64 noundef %3)
  %4 = load i64, i64* %1, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #30
  ret i64 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define internal fastcc zeroext i8 @ph_peek_head(i8 %0) unnamed_addr #10 {
  ret i8 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn
define internal fastcc i64 @absolute_time_diff_us(i64 noundef %0, i64 noundef %1) unnamed_addr #12 {
  %3 = sub i64 %1, %0
  ret i64 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define internal fastcc nonnull i8* @get_entry_id_high(i8* %0, i8 noundef zeroext %1) unnamed_addr #10 {
  %3 = zext i8 %1 to i32
  %4 = getelementptr inbounds i8, i8* %0, i32 %3
  %5 = getelementptr inbounds i8, i8* %4, i32 -1
  ret i8* %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn
define internal fastcc i32 @make_public_id(i8 noundef zeroext %0, i8 noundef zeroext %1) unnamed_addr #12 {
  %3 = zext i8 %0 to i32
  %4 = shl nuw nsw i32 %3, 8
  %5 = zext i8 %1 to i32
  %6 = or i32 %4, %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn writeonly
define internal fastcc i64 @delayed_by_us(i64 noundef %0, i64 noundef %1) unnamed_addr #13 {
  %3 = alloca i64, align 8
  %4 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #30
  %5 = tail call i64 @llvm.uadd.sat.i64(i64 %0, i64 %1)
  call fastcc void @update_us_since_boot(i64* noundef nonnull %3, i64 noundef %5)
  %6 = load i64, i64* %3, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #30
  ret i64 %6
}

; Function Attrs: noinline nounwind
define internal fastcc zeroext i8 @add_alarm_under_lock(%struct.alarm_pool* nocapture noundef readonly %0, i64 noundef %1, i64 (i32, i8*)* noundef %2, i8* noundef %3, i8 noundef zeroext %4, i1 noundef zeroext %5, i8* noundef writeonly %6) unnamed_addr #3 {
  %8 = icmp eq i8 %4, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.alarm_pool, %struct.alarm_pool* %0, i32 0, i32 0
  %11 = load %struct.pheap*, %struct.pheap** %10, align 4, !tbaa !41
  %12 = tail call fastcc zeroext i8 @ph_new_node(%struct.pheap* noundef %11)
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %40, label %14

14:                                               ; preds = %7, %9
  %15 = phi i8 [ %12, %9 ], [ %4, %7 ]
  %16 = getelementptr %struct.alarm_pool, %struct.alarm_pool* %0, i32 0, i32 2
  %17 = load %struct.alarm_pool_entry*, %struct.alarm_pool_entry** %16, align 4, !tbaa !36
  %18 = tail call fastcc %struct.alarm_pool_entry* @get_entry(%struct.alarm_pool_entry* %17, i8 noundef zeroext %15)
  %19 = getelementptr inbounds %struct.alarm_pool_entry, %struct.alarm_pool_entry* %18, i32 0, i32 0
  store i64 %1, i64* %19, align 8, !tbaa !38
  %20 = getelementptr inbounds %struct.alarm_pool_entry, %struct.alarm_pool_entry* %18, i32 0, i32 1
  store i64 (i32, i8*)* %2, i64 (i32, i8*)** %20, align 8, !tbaa !50
  %21 = getelementptr inbounds %struct.alarm_pool_entry, %struct.alarm_pool_entry* %18, i32 0, i32 2
  store i8* %3, i8** %21, align 4, !tbaa !51
  %22 = getelementptr inbounds %struct.alarm_pool, %struct.alarm_pool* %0, i32 0, i32 0
  %23 = load %struct.pheap*, %struct.pheap** %22, align 4, !tbaa !41
  %24 = tail call fastcc zeroext i8 @ph_insert_node(%struct.pheap* noundef %23, i8 noundef zeroext %15)
  %25 = icmp eq i8 %15, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.alarm_pool, %struct.alarm_pool* %0, i32 0, i32 5
  %28 = load i8, i8* %27, align 4, !tbaa !43
  %29 = zext i8 %28 to i32
  %30 = tail call zeroext i1 @hardware_alarm_set_target(i32 noundef %29, i64 noundef %1) #30
  %31 = zext i1 %30 to i8
  %32 = xor i1 %30, true
  %33 = or i1 %32, %5
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  %35 = load %struct.pheap*, %struct.pheap** %22, align 4, !tbaa !41
  %36 = tail call zeroext i1 @ph_remove_and_free_node(%struct.pheap* noundef %35, i8 noundef zeroext %15) #30
  br label %37

37:                                               ; preds = %26, %34
  %38 = icmp eq i8* %6, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %37
  store i8 %31, i8* %6, align 1, !tbaa !57
  br label %40

40:                                               ; preds = %14, %39, %37, %9
  %41 = phi i8 [ %15, %14 ], [ %15, %39 ], [ %15, %37 ], [ 0, %9 ]
  ret i8 %41
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn
define internal fastcc void @ph_free_node(%struct.pheap* nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.pheap, %struct.pheap* %0, i32 0, i32 6
  %4 = load i8, i8* %3, align 1, !tbaa !59
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr %struct.pheap, %struct.pheap* %0, i32 0, i32 0
  %8 = load %struct.pheap_node*, %struct.pheap_node** %7, align 4, !tbaa !60
  %9 = tail call fastcc %struct.pheap_node* @ph_get_node(%struct.pheap_node* %8, i8 noundef zeroext %4)
  %10 = getelementptr inbounds %struct.pheap_node, %struct.pheap_node* %9, i32 0, i32 1
  store i8 %1, i8* %10, align 1, !tbaa !61
  br label %11

11:                                               ; preds = %6, %2
  store i8 %1, i8* %3, align 1, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define internal fastcc nonnull %struct.pheap_node* @ph_get_node(%struct.pheap_node* %0, i8 noundef zeroext %1) unnamed_addr #10 {
  %3 = zext i8 %1 to i32
  %4 = getelementptr inbounds %struct.pheap_node, %struct.pheap_node* %0, i32 %3
  %5 = getelementptr inbounds %struct.pheap_node, %struct.pheap_node* %4, i32 -1
  ret %struct.pheap_node* %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn
define internal fastcc zeroext i8 @ph_new_node(%struct.pheap* nocapture noundef %0) unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.pheap, %struct.pheap* %0, i32 0, i32 5
  %3 = load i8, i8* %2, align 2, !tbaa !63
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr %struct.pheap, %struct.pheap* %0, i32 0, i32 0
  %7 = load %struct.pheap_node*, %struct.pheap_node** %6, align 4, !tbaa !60
  %8 = tail call fastcc %struct.pheap_node* @ph_get_node(%struct.pheap_node* %7, i8 noundef zeroext %3)
  %9 = getelementptr inbounds %struct.pheap_node, %struct.pheap_node* %8, i32 0, i32 1
  %10 = load i8, i8* %9, align 1, !tbaa !61
  store i8 %10, i8* %2, align 2, !tbaa !63
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.pheap, %struct.pheap* %0, i32 0, i32 6
  store i8 0, i8* %13, align 1, !tbaa !59
  br label %14

14:                                               ; preds = %12, %5
  %15 = getelementptr inbounds %struct.pheap_node, %struct.pheap_node* %8, i32 0, i32 2
  store i8 0, i8* %15, align 1, !tbaa !64
  store i8 0, i8* %9, align 1, !tbaa !61
  %16 = getelementptr inbounds %struct.pheap_node, %struct.pheap_node* %8, i32 0, i32 0
  store i8 0, i8* %16, align 1, !tbaa !65
  br label %17

17:                                               ; preds = %1, %14
  ret i8 %3
}

; Function Attrs: noinline nounwind
define internal fastcc zeroext i8 @ph_insert_node(%struct.pheap* nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #3 {
  %3 = getelementptr %struct.pheap, %struct.pheap* %0, i32 0, i32 0
  %4 = load %struct.pheap_node*, %struct.pheap_node** %3, align 4, !tbaa !60
  %5 = tail call fastcc %struct.pheap_node* @ph_get_node(%struct.pheap_node* %4, i8 noundef zeroext %1)
  %6 = getelementptr inbounds %struct.pheap_node, %struct.pheap_node* %5, i32 0, i32 2
  store i8 0, i8* %6, align 1, !tbaa !64
  %7 = getelementptr inbounds %struct.pheap_node, %struct.pheap_node* %5, i32 0, i32 1
  store i8 0, i8* %7, align 1, !tbaa !61
  %8 = getelementptr inbounds %struct.pheap_node, %struct.pheap_node* %5, i32 0, i32 0
  store i8 0, i8* %8, align 1, !tbaa !65
  %9 = getelementptr inbounds %struct.pheap, %struct.pheap* %0, i32 0, i32 4
  %10 = load i8, i8* %9, align 1, !tbaa !48
  %11 = tail call fastcc zeroext i8 @ph_merge_nodes(%struct.pheap* noundef %0, i8 noundef zeroext %10, i8 noundef zeroext %1)
  store i8 %11, i8* %9, align 1, !tbaa !48
  ret i8 %11
}

; Function Attrs: noinline nounwind
define internal fastcc zeroext i8 @ph_merge_nodes(%struct.pheap* nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #3 {
  %4 = icmp eq i8 %1, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.pheap, %struct.pheap* %0, i32 0, i32 1
  %7 = load i1 (i8*, i8, i8)*, i1 (i8*, i8, i8)** %6, align 4, !tbaa !66
  %8 = getelementptr inbounds %struct.pheap, %struct.pheap* %0, i32 0, i32 2
  %9 = load i8*, i8** %8, align 4, !tbaa !67
  %10 = tail call zeroext i1 %7(i8* noundef %9, i8 noundef zeroext %1, i8 noundef zeroext %2) #30
  %11 = getelementptr %struct.pheap, %struct.pheap* %0, i32 0, i32 0
  %12 = load %struct.pheap_node*, %struct.pheap_node** %11, align 4, !tbaa !60
  br i1 %10, label %13, label %14

13:                                               ; preds = %5
  tail call fastcc void @ph_add_child_node(%struct.pheap_node* %12, i8 noundef zeroext %1, i8 noundef zeroext %2)
  br label %15

14:                                               ; preds = %5
  tail call fastcc void @ph_add_child_node(%struct.pheap_node* %12, i8 noundef zeroext %2, i8 noundef zeroext %1)
  br label %15

15:                                               ; preds = %3, %14, %13
  %16 = phi i8 [ %1, %13 ], [ %2, %14 ], [ %2, %3 ]
  ret i8 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn
define internal fastcc void @ph_add_child_node(%struct.pheap_node* %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #11 {
  %4 = tail call fastcc %struct.pheap_node* @ph_get_node(%struct.pheap_node* %0, i8 noundef zeroext %1)
  %5 = tail call fastcc %struct.pheap_node* @ph_get_node(%struct.pheap_node* %0, i8 noundef zeroext %2)
  %6 = getelementptr inbounds %struct.pheap_node, %struct.pheap_node* %5, i32 0, i32 2
  store i8 %1, i8* %6, align 1, !tbaa !64
  %7 = getelementptr inbounds %struct.pheap_node, %struct.pheap_node* %4, i32 0, i32 0
  %8 = load i8, i8* %7, align 1, !tbaa !65
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.pheap_node, %struct.pheap_node* %5, i32 0, i32 1
  store i8 %8, i8* %11, align 1, !tbaa !61
  br label %12

12:                                               ; preds = %3, %10
  store i8 %2, i8* %7, align 1, !tbaa !65
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.uadd.sat.i64(i64, i64) #14

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly
define internal fastcc void @update_us_since_boot(i64* nocapture noundef writeonly %0, i64 noundef %1) unnamed_addr #15 {
  store i64 %1, i64* %0, align 8, !tbaa !56
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn
define dso_local nonnull %struct.alarm_pool* @alarm_pool_get_default() local_unnamed_addr #12 {
  ret %struct.alarm_pool* @default_alarm_pool
}

; Function Attrs: noinline nounwind
define dso_local %struct.alarm_pool* @alarm_pool_create(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = tail call noalias dereferenceable_or_null(24) i8* @malloc(i32 noundef 24) #31
  %4 = bitcast i8* %3 to %struct.alarm_pool*
  %5 = tail call %struct.pheap* @ph_create(i32 noundef %1, i1 (i8*, i8, i8)* noundef nonnull @timer_pool_entry_comparator, i8* noundef %3) #30
  %6 = getelementptr inbounds %struct.alarm_pool, %struct.alarm_pool* %4, i32 0, i32 0
  store %struct.pheap* %5, %struct.pheap** %6, align 4, !tbaa !41
  %7 = tail call noalias i8* @calloc(i32 noundef %1, i32 noundef 16) #33
  %8 = getelementptr inbounds %struct.alarm_pool, %struct.alarm_pool* %4, i32 0, i32 2
  %9 = bitcast %struct.alarm_pool_entry** %8 to i8**
  store i8* %7, i8** %9, align 4, !tbaa !36
  %10 = tail call noalias i8* @calloc(i32 noundef %1, i32 noundef 1) #33
  %11 = getelementptr inbounds %struct.alarm_pool, %struct.alarm_pool* %4, i32 0, i32 3
  store i8* %10, i8** %11, align 4, !tbaa !52
  tail call fastcc void @alarm_pool_post_alloc_init(%struct.alarm_pool* noundef %4, i32 noundef %0)
  ret %struct.alarm_pool* %4
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0,1)
declare dso_local noalias noundef i8* @calloc(i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: noinline nounwind
define dso_local void @alarm_pool_destroy(%struct.alarm_pool* noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq %struct.alarm_pool* %0, @default_alarm_pool
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.alarm_pool, %struct.alarm_pool* %0, i32 0, i32 5
  %5 = load i8, i8* %4, align 4, !tbaa !43
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds [4 x %struct.alarm_pool*], [4 x %struct.alarm_pool*]* @pools, i32 0, i32 %6
  store %struct.alarm_pool* null, %struct.alarm_pool** %7, align 4, !tbaa !11
  %8 = getelementptr inbounds %struct.alarm_pool, %struct.alarm_pool* %0, i32 0, i32 0
  %9 = load %struct.pheap*, %struct.pheap** %8, align 4, !tbaa !41
  tail call void @ph_destroy(%struct.pheap* noundef %9) #30
  %10 = load i8, i8* %4, align 4, !tbaa !43
  %11 = zext i8 %10 to i32
  tail call void @hardware_alarm_set_callback(i32 noundef %11, void (i32)* noundef null) #30
  %12 = load i8, i8* %4, align 4, !tbaa !43
  %13 = zext i8 %12 to i32
  tail call void @hardware_alarm_unclaim(i32 noundef %13) #30
  %14 = getelementptr inbounds %struct.alarm_pool, %struct.alarm_pool* %0, i32 0, i32 3
  %15 = load i8*, i8** %14, align 4, !tbaa !52
  tail call void @free(i8* noundef %15)
  %16 = getelementptr inbounds %struct.alarm_pool, %struct.alarm_pool* %0, i32 0, i32 2
  %17 = bitcast %struct.alarm_pool_entry** %16 to i8**
  %18 = load i8*, i8** %17, align 4, !tbaa !36
  tail call void @free(i8* noundef %18)
  %19 = bitcast %struct.alarm_pool* %0 to i8*
  tail call void @free(i8* noundef %19)
  br label %20

20:                                               ; preds = %1, %3
  ret void
}

; Function Attrs: noinline nounwind
define dso_local i32 @alarm_pool_add_alarm_at(%struct.alarm_pool* nocapture noundef readonly %0, i64 noundef %1, i64 (i32, i8*)* noundef %2, i8* noundef %3, i1 noundef zeroext %4) local_unnamed_addr #3 {
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %6) #30
  store i8 0, i8* %6, align 1, !tbaa !57
  %7 = getelementptr inbounds %struct.alarm_pool, %struct.alarm_pool* %0, i32 0, i32 1
  %8 = getelementptr %struct.alarm_pool, %struct.alarm_pool* %0, i32 0, i32 3
  br i1 %4, label %37, label %9

9:                                                ; preds = %5
  %10 = load i32*, i32** %7, align 4, !tbaa !42
  %11 = call i32 asm sideeffect "mrs $0, PRIMASK", "=r"() #30, !srcloc !44
  call void asm sideeffect "cpsid i", ""() #30, !srcloc !45
  br label %12

12:                                               ; preds = %21, %9
  %13 = load volatile i32, i32* %10, align 4, !tbaa !18
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24, !prof !29, !llvm.loop !46

15:                                               ; preds = %12
  %16 = load volatile i32, i32* %10, align 4, !tbaa !18
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24, !prof !29, !llvm.loop !46

18:                                               ; preds = %15
  %19 = load volatile i32, i32* %10, align 4, !tbaa !18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24, !prof !29, !llvm.loop !46

21:                                               ; preds = %18
  %22 = load volatile i32, i32* %10, align 4, !tbaa !18
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %12, label %24, !prof !29, !llvm.loop !46

24:                                               ; preds = %21, %18, %15, %12
  call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !47
  %25 = call fastcc zeroext i8 @add_alarm_under_lock(%struct.alarm_pool* noundef %0, i64 noundef %1, i64 (i32, i8*)* noundef %2, i8* noundef %3, i8 noundef zeroext 0, i1 noundef zeroext false, i8* noundef nonnull %6)
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** %8, align 4, !tbaa !52
  %29 = call fastcc i8* @get_entry_id_high(i8* %28, i8 noundef zeroext %25)
  %30 = load i8, i8* %29, align 1, !tbaa !8
  br label %31

31:                                               ; preds = %27, %24
  %32 = phi i8 [ %30, %27 ], [ 0, %24 ]
  %33 = load i32*, i32** %7, align 4, !tbaa !42
  call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !47
  store volatile i32 0, i32* %33, align 4, !tbaa !18
  call void asm sideeffect "msr PRIMASK,$0", "r"(i32 %11) #30, !srcloc !54
  br i1 %26, label %83, label %34

34:                                               ; preds = %31
  %35 = load i8, i8* %6, align 1, !tbaa !57, !range !68
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %66, label %83

37:                                               ; preds = %5, %78
  %38 = phi i64 [ %79, %78 ], [ %1, %5 ]
  %39 = load i32*, i32** %7, align 4, !tbaa !42
  %40 = call i32 asm sideeffect "mrs $0, PRIMASK", "=r"() #30, !srcloc !44
  call void asm sideeffect "cpsid i", ""() #30, !srcloc !45
  br label %41

41:                                               ; preds = %50, %37
  %42 = load volatile i32, i32* %39, align 4, !tbaa !18
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %53, !prof !29, !llvm.loop !46

44:                                               ; preds = %41
  %45 = load volatile i32, i32* %39, align 4, !tbaa !18
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %53, !prof !29, !llvm.loop !46

47:                                               ; preds = %44
  %48 = load volatile i32, i32* %39, align 4, !tbaa !18
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53, !prof !29, !llvm.loop !46

50:                                               ; preds = %47
  %51 = load volatile i32, i32* %39, align 4, !tbaa !18
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %41, label %53, !prof !29, !llvm.loop !46

53:                                               ; preds = %50, %47, %44, %41
  call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !47
  %54 = call fastcc zeroext i8 @add_alarm_under_lock(%struct.alarm_pool* noundef %0, i64 noundef %38, i64 (i32, i8*)* noundef %2, i8* noundef %3, i8 noundef zeroext 0, i1 noundef zeroext false, i8* noundef nonnull %6)
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = load i8*, i8** %8, align 4, !tbaa !52
  %58 = call fastcc i8* @get_entry_id_high(i8* %57, i8 noundef zeroext %54)
  %59 = load i8, i8* %58, align 1, !tbaa !8
  br label %60

60:                                               ; preds = %56, %53
  %61 = phi i8 [ %59, %56 ], [ 0, %53 ]
  %62 = load i32*, i32** %7, align 4, !tbaa !42
  call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !47
  store volatile i32 0, i32* %62, align 4, !tbaa !18
  call void asm sideeffect "msr PRIMASK,$0", "r"(i32 %40) #30, !srcloc !54
  br i1 %55, label %83, label %63

63:                                               ; preds = %60
  %64 = load i8, i8* %6, align 1, !tbaa !57, !range !68
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63, %34
  %67 = phi i8 [ %32, %34 ], [ %61, %63 ]
  %68 = phi i8 [ %25, %34 ], [ %54, %63 ]
  %69 = call fastcc i32 @make_public_id(i8 noundef zeroext %67, i8 noundef zeroext %68)
  br label %83

70:                                               ; preds = %63
  %71 = call i64 %2(i32 noundef 0, i8* noundef %3) #30
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %70
  %74 = icmp slt i64 %71, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %73
  %76 = sub nsw i64 0, %71
  %77 = call fastcc i64 @delayed_by_us(i64 noundef %38, i64 noundef %76)
  br label %78

78:                                               ; preds = %75, %80
  %79 = phi i64 [ %77, %75 ], [ %82, %80 ]
  br label %37

80:                                               ; preds = %73
  %81 = call fastcc i64 @get_absolute_time()
  %82 = call fastcc i64 @delayed_by_us(i64 noundef %81, i64 noundef %71)
  br label %78

83:                                               ; preds = %70, %60, %34, %31, %66
  %84 = phi i32 [ %69, %66 ], [ -1, %31 ], [ 0, %34 ], [ -1, %60 ], [ 0, %70 ]
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %6) #30
  ret i32 %84
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @alarm_pool_cancel_alarm(%struct.alarm_pool* nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.alarm_pool, %struct.alarm_pool* %0, i32 0, i32 1
  %4 = load i32*, i32** %3, align 4, !tbaa !42
  %5 = tail call i32 asm sideeffect "mrs $0, PRIMASK", "=r"() #30, !srcloc !44
  tail call void asm sideeffect "cpsid i", ""() #30, !srcloc !45
  br label %6

6:                                                ; preds = %15, %2
  %7 = load volatile i32, i32* %4, align 4, !tbaa !18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18, !prof !29, !llvm.loop !46

9:                                                ; preds = %6
  %10 = load volatile i32, i32* %4, align 4, !tbaa !18
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18, !prof !29, !llvm.loop !46

12:                                               ; preds = %9
  %13 = load volatile i32, i32* %4, align 4, !tbaa !18
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18, !prof !29, !llvm.loop !46

15:                                               ; preds = %12
  %16 = load volatile i32, i32* %4, align 4, !tbaa !18
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %6, label %18, !prof !29, !llvm.loop !46

18:                                               ; preds = %15, %12, %9, %6
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !47
  %19 = trunc i32 %1 to i8
  %20 = getelementptr inbounds %struct.alarm_pool, %struct.alarm_pool* %0, i32 0, i32 0
  %21 = load %struct.pheap*, %struct.pheap** %20, align 4, !tbaa !41
  %22 = tail call fastcc zeroext i1 @ph_contains_node(%struct.pheap* noundef %21, i8 noundef zeroext %19)
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = lshr i32 %1, 8
  %25 = getelementptr %struct.alarm_pool, %struct.alarm_pool* %0, i32 0, i32 3
  %26 = load i8*, i8** %25, align 4, !tbaa !52
  %27 = tail call fastcc i8* @get_entry_id_high(i8* %26, i8 noundef zeroext %19)
  %28 = load i8, i8* %27, align 1, !tbaa !8
  %29 = trunc i32 %24 to i8
  %30 = icmp eq i8 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %23
  %32 = tail call zeroext i1 @ph_remove_and_free_node(%struct.pheap* noundef %21, i8 noundef zeroext %19) #30
  br label %38

33:                                               ; preds = %18
  %34 = getelementptr inbounds %struct.alarm_pool, %struct.alarm_pool* %0, i32 0, i32 4
  %35 = load i32, i32* %34, align 4, !tbaa !53
  %36 = icmp eq i32 %35, %1
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %34, align 4, !tbaa !53
  br label %38

38:                                               ; preds = %23, %31, %33, %37
  %39 = phi i1 [ false, %37 ], [ false, %33 ], [ %32, %31 ], [ false, %23 ]
  %40 = load i32*, i32** %3, align 4, !tbaa !42
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !47
  store volatile i32 0, i32* %40, align 4, !tbaa !18
  tail call void asm sideeffect "msr PRIMASK,$0", "r"(i32 %5) #30, !srcloc !54
  ret i1 %39
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define internal fastcc zeroext i1 @ph_contains_node(%struct.pheap* nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.pheap, %struct.pheap* %0, i32 0, i32 4
  %4 = load i8, i8* %3, align 1, !tbaa !48
  %5 = icmp eq i8 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr %struct.pheap, %struct.pheap* %0, i32 0, i32 0
  %8 = load %struct.pheap_node*, %struct.pheap_node** %7, align 4, !tbaa !60
  %9 = tail call fastcc %struct.pheap_node* @ph_get_node(%struct.pheap_node* %8, i8 noundef zeroext %1)
  %10 = getelementptr inbounds %struct.pheap_node, %struct.pheap_node* %9, i32 0, i32 2
  %11 = load i8, i8* %10, align 1, !tbaa !64
  %12 = icmp ne i8 %11, 0
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i1 [ true, %2 ], [ %12, %6 ]
  ret i1 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define dso_local i32 @alarm_pool_hardware_alarm_num(%struct.alarm_pool* nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.alarm_pool, %struct.alarm_pool* %0, i32 0, i32 5
  %3 = load i8, i8* %2, align 4, !tbaa !43
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @alarm_pool_add_repeating_timer_us(%struct.alarm_pool* noundef %0, i64 noundef %1, i1 (%struct.repeating_timer*)* noundef %2, i8* noundef %3, %struct.repeating_timer* noundef %4) local_unnamed_addr #3 {
  %6 = icmp eq i64 %1, 0
  %7 = select i1 %6, i64 1, i64 %1
  %8 = getelementptr inbounds %struct.repeating_timer, %struct.repeating_timer* %4, i32 0, i32 1
  store %struct.alarm_pool* %0, %struct.alarm_pool** %8, align 8, !tbaa !69
  %9 = getelementptr inbounds %struct.repeating_timer, %struct.repeating_timer* %4, i32 0, i32 3
  %10 = bitcast {}** %9 to i1 (%struct.repeating_timer*)**
  store i1 (%struct.repeating_timer*)* %2, i1 (%struct.repeating_timer*)** %10, align 8, !tbaa !71
  %11 = getelementptr inbounds %struct.repeating_timer, %struct.repeating_timer* %4, i32 0, i32 0
  store i64 %7, i64* %11, align 8, !tbaa !72
  %12 = getelementptr inbounds %struct.repeating_timer, %struct.repeating_timer* %4, i32 0, i32 4
  store i8* %3, i8** %12, align 4, !tbaa !73
  %13 = tail call i64 @llvm.abs.i64(i64 %7, i1 true)
  %14 = tail call fastcc i64 @make_timeout_time_us(i64 noundef %13)
  %15 = bitcast %struct.repeating_timer* %4 to i8*
  %16 = tail call i32 @alarm_pool_add_alarm_at(%struct.alarm_pool* noundef %0, i64 noundef %14, i64 (i32, i8*)* noundef nonnull @repeating_timer_callback, i8* noundef %15, i1 noundef zeroext true)
  %17 = getelementptr inbounds %struct.repeating_timer, %struct.repeating_timer* %4, i32 0, i32 2
  store i32 %16, i32* %17, align 4, !tbaa !74
  %18 = icmp sgt i32 %16, -1
  ret i1 %18
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #14

; Function Attrs: noinline nounwind
define internal fastcc i64 @make_timeout_time_us(i64 noundef %0) unnamed_addr #3 {
  %2 = tail call fastcc i64 @get_absolute_time()
  %3 = tail call fastcc i64 @delayed_by_us(i64 noundef %2, i64 noundef %0)
  ret i64 %3
}

; Function Attrs: noinline nounwind
define internal i64 @repeating_timer_callback(i32 noundef %0, i8* noundef %1) #3 {
  %3 = bitcast i8* %1 to %struct.repeating_timer*
  %4 = getelementptr inbounds i8, i8* %1, i32 16
  %5 = bitcast i8* %4 to i1 (%struct.repeating_timer*)**
  %6 = load i1 (%struct.repeating_timer*)*, i1 (%struct.repeating_timer*)** %5, align 8, !tbaa !71
  %7 = tail call zeroext i1 %6(%struct.repeating_timer* noundef %3) #30
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = bitcast i8* %1 to i64*
  %10 = load i64, i64* %9, align 8, !tbaa !72
  br label %14

11:                                               ; preds = %2
  %12 = getelementptr inbounds i8, i8* %1, i32 12
  %13 = bitcast i8* %12 to i32*
  store i32 0, i32* %13, align 4, !tbaa !74
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i64 [ %10, %8 ], [ 0, %11 ]
  ret i64 %15
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @cancel_repeating_timer(%struct.repeating_timer* nocapture noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.repeating_timer, %struct.repeating_timer* %0, i32 0, i32 2
  %3 = load i32, i32* %2, align 4, !tbaa !74
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.repeating_timer, %struct.repeating_timer* %0, i32 0, i32 1
  %7 = load %struct.alarm_pool*, %struct.alarm_pool** %6, align 8, !tbaa !69
  %8 = tail call zeroext i1 @alarm_pool_cancel_alarm(%struct.alarm_pool* noundef %7, i32 noundef %3)
  store i32 0, i32* %2, align 4, !tbaa !74
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i1 [ %8, %5 ], [ false, %1 ]
  ret i1 %10
}

; Function Attrs: noinline nounwind
define dso_local void @alarm_pool_dump(%struct.alarm_pool* noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.alarm_pool, %struct.alarm_pool* %0, i32 0, i32 1
  %3 = load i32*, i32** %2, align 4, !tbaa !42
  %4 = tail call i32 asm sideeffect "mrs $0, PRIMASK", "=r"() #30, !srcloc !44
  tail call void asm sideeffect "cpsid i", ""() #30, !srcloc !45
  br label %5

5:                                                ; preds = %14, %1
  %6 = load volatile i32, i32* %3, align 4, !tbaa !18
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17, !prof !29, !llvm.loop !46

8:                                                ; preds = %5
  %9 = load volatile i32, i32* %3, align 4, !tbaa !18
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17, !prof !29, !llvm.loop !46

11:                                               ; preds = %8
  %12 = load volatile i32, i32* %3, align 4, !tbaa !18
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17, !prof !29, !llvm.loop !46

14:                                               ; preds = %11
  %15 = load volatile i32, i32* %3, align 4, !tbaa !18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %5, label %17, !prof !29, !llvm.loop !46

17:                                               ; preds = %14, %11, %8, %5
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !47
  %18 = getelementptr inbounds %struct.alarm_pool, %struct.alarm_pool* %0, i32 0, i32 0
  %19 = load %struct.pheap*, %struct.pheap** %18, align 4, !tbaa !41
  %20 = bitcast %struct.alarm_pool* %0 to i8*
  tail call void @ph_dump(%struct.pheap* noundef %19, void (i8, i8*)* noundef nonnull @alarm_pool_dump_key, i8* noundef %20) #30
  %21 = load i32*, i32** %2, align 4, !tbaa !42
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !47
  store volatile i32 0, i32* %21, align 4, !tbaa !18
  tail call void asm sideeffect "msr PRIMASK,$0", "r"(i32 %4) #30, !srcloc !54
  ret void
}

; Function Attrs: nofree noinline nounwind
define internal void @alarm_pool_dump_key(i8 noundef zeroext %0, i8* nocapture noundef readonly %1) #8 {
  %3 = getelementptr i8, i8* %1, i32 8
  %4 = bitcast i8* %3 to %struct.alarm_pool_entry**
  %5 = load %struct.alarm_pool_entry*, %struct.alarm_pool_entry** %4, align 4, !tbaa !36
  %6 = tail call fastcc %struct.alarm_pool_entry* @get_entry(%struct.alarm_pool_entry* %5, i8 noundef zeroext %0)
  %7 = getelementptr inbounds %struct.alarm_pool_entry, %struct.alarm_pool_entry* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8, !tbaa !38
  %9 = getelementptr i8, i8* %1, i32 12
  %10 = bitcast i8* %9 to i8**
  %11 = load i8*, i8** %10, align 4, !tbaa !52
  %12 = tail call fastcc i8* @get_entry_id_high(i8* %11, i8 noundef zeroext %0)
  %13 = load i8, i8* %12, align 1, !tbaa !8
  %14 = zext i8 %13 to i32
  %15 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i64 noundef %8, i32 noundef %14)
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @sleep_until(i64 noundef %0) local_unnamed_addr #3 {
  %2 = alloca i64, align 8
  %3 = tail call i64 @llvm.usub.sat.i64(i64 %0, i64 6)
  %4 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #30
  call fastcc void @update_us_since_boot(i64* noundef nonnull %2, i64 noundef %3)
  %5 = tail call fastcc i64 @get_absolute_time()
  %6 = load i64, i64* %2, align 8, !tbaa !56
  %7 = tail call fastcc i64 @absolute_time_diff_us(i64 noundef %5, i64 noundef %6)
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %1
  %10 = tail call fastcc i32 @add_alarm_at(i64 noundef %6)
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %32

12:                                               ; preds = %9
  %13 = tail call fastcc zeroext i1 @time_reached(i64 noundef %6)
  br i1 %13, label %32, label %14

14:                                               ; preds = %12, %29
  %15 = load i32*, i32** getelementptr inbounds (%struct.lock_core, %struct.lock_core* @sleep_notifier, i32 0, i32 0), align 4, !tbaa !75
  %16 = tail call i32 asm sideeffect "mrs $0, PRIMASK", "=r"() #30, !srcloc !44
  tail call void asm sideeffect "cpsid i", ""() #30, !srcloc !45
  br label %17

17:                                               ; preds = %26, %14
  %18 = load volatile i32, i32* %15, align 4, !tbaa !18
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %29, !prof !29, !llvm.loop !46

20:                                               ; preds = %17
  %21 = load volatile i32, i32* %15, align 4, !tbaa !18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29, !prof !29, !llvm.loop !46

23:                                               ; preds = %20
  %24 = load volatile i32, i32* %15, align 4, !tbaa !18
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29, !prof !29, !llvm.loop !46

26:                                               ; preds = %23
  %27 = load volatile i32, i32* %15, align 4, !tbaa !18
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %17, label %29, !prof !29, !llvm.loop !46

29:                                               ; preds = %26, %23, %20, %17
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !47
  %30 = load i32*, i32** getelementptr inbounds (%struct.lock_core, %struct.lock_core* @sleep_notifier, i32 0, i32 0), align 4, !tbaa !75
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !47
  store volatile i32 0, i32* %30, align 4, !tbaa !18
  tail call void asm sideeffect "msr PRIMASK,$0", "r"(i32 %16) #30, !srcloc !54
  tail call void asm sideeffect "wfe", ""() #30, !srcloc !77
  %31 = tail call fastcc zeroext i1 @time_reached(i64 noundef %6)
  br i1 %31, label %32, label %14, !llvm.loop !78

32:                                               ; preds = %29, %12, %9, %1
  tail call void @busy_wait_until(i64 noundef %0) #30
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #30
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #14

; Function Attrs: noinline nounwind
define internal fastcc i32 @add_alarm_at(i64 noundef %0) unnamed_addr #3 {
  %2 = tail call i32 @alarm_pool_add_alarm_at(%struct.alarm_pool* noundef nonnull @default_alarm_pool, i64 noundef %0, i64 (i32, i8*)* noundef nonnull @sleep_until_callback, i8* noundef null, i1 noundef zeroext false)
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define internal fastcc zeroext i1 @time_reached(i64 noundef %0) unnamed_addr #9 {
  %2 = lshr i64 %0, 32
  %3 = trunc i64 %2 to i32
  %4 = load volatile i32, i32* inttoptr (i32 1074085924 to i32*), align 4, !tbaa !79
  %5 = icmp ult i32 %4, %3
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = load volatile i32, i32* inttoptr (i32 1074085928 to i32*), align 8, !tbaa !81
  %8 = trunc i64 %0 to i32
  %9 = icmp uge i32 %7, %8
  %10 = icmp ne i32 %4, %3
  %11 = select i1 %9, i1 true, i1 %10
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi i1 [ false, %1 ], [ %11, %6 ]
  ret i1 %13
}

; Function Attrs: noinline nounwind
define internal i64 @sleep_until_callback(i32 noundef %0, i8* nocapture noundef readnone %1) #3 {
  %3 = load i32*, i32** getelementptr inbounds (%struct.lock_core, %struct.lock_core* @sleep_notifier, i32 0, i32 0), align 4, !tbaa !75
  %4 = tail call i32 asm sideeffect "mrs $0, PRIMASK", "=r"() #30, !srcloc !44
  tail call void asm sideeffect "cpsid i", ""() #30, !srcloc !45
  br label %5

5:                                                ; preds = %14, %2
  %6 = load volatile i32, i32* %3, align 4, !tbaa !18
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17, !prof !29, !llvm.loop !46

8:                                                ; preds = %5
  %9 = load volatile i32, i32* %3, align 4, !tbaa !18
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17, !prof !29, !llvm.loop !46

11:                                               ; preds = %8
  %12 = load volatile i32, i32* %3, align 4, !tbaa !18
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17, !prof !29, !llvm.loop !46

14:                                               ; preds = %11
  %15 = load volatile i32, i32* %3, align 4, !tbaa !18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %5, label %17, !prof !29, !llvm.loop !46

17:                                               ; preds = %14, %11, %8, %5
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !47
  %18 = load i32*, i32** getelementptr inbounds (%struct.lock_core, %struct.lock_core* @sleep_notifier, i32 0, i32 0), align 4, !tbaa !75
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !47
  store volatile i32 0, i32* %18, align 4, !tbaa !18
  tail call void asm sideeffect "msr PRIMASK,$0", "r"(i32 %4) #30, !srcloc !54
  tail call void asm sideeffect "sev", ""() #30, !srcloc !82
  ret i64 0
}

; Function Attrs: noinline nounwind
define dso_local void @sleep_us(i64 noundef %0) local_unnamed_addr #3 {
  %2 = tail call fastcc i64 @make_timeout_time_us(i64 noundef %0)
  tail call void @sleep_until(i64 noundef %2)
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @sleep_ms(i32 noundef %0) local_unnamed_addr #3 {
  %2 = zext i32 %0 to i64
  %3 = mul nuw nsw i64 %2, 1000
  tail call void @sleep_us(i64 noundef %3)
  ret void
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @best_effort_wfe_or_timeout(i64 noundef %0) local_unnamed_addr #3 {
  %2 = tail call fastcc i32 @add_alarm_at(i64 noundef %0)
  %3 = icmp slt i32 %2, 1
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void asm sideeffect "wfe", ""() #30, !srcloc !77
  tail call fastcc void @cancel_alarm(i32 noundef %2)
  br label %5

5:                                                ; preds = %1, %4
  %6 = tail call fastcc zeroext i1 @time_reached(i64 noundef %0)
  ret i1 %6
}

; Function Attrs: noinline nounwind
define internal fastcc void @cancel_alarm(i32 noundef %0) unnamed_addr #3 {
  %2 = tail call zeroext i1 @alarm_pool_cancel_alarm(%struct.alarm_pool* noundef nonnull @default_alarm_pool, i32 noundef %0)
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @hardware_alarm_claim(i32 noundef %0) local_unnamed_addr #3 {
  tail call void @hw_claim_or_assert(i8* noundef nonnull @claimed.14, i32 noundef %0, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i32 0, i32 0)) #30
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @hardware_alarm_unclaim(i32 noundef %0) local_unnamed_addr #3 {
  tail call void @hw_claim_clear(i8* noundef nonnull @claimed.14, i32 noundef %0) #30
  ret void
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @hardware_alarm_is_claimed(i32 noundef %0) local_unnamed_addr #3 {
  %2 = tail call zeroext i1 @hw_is_claimed(i8* noundef nonnull @claimed.14, i32 noundef %0) #30
  ret i1 %2
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i64 @time_us_64() local_unnamed_addr #2 {
  %1 = load volatile i32, i32* inttoptr (i32 1074085924 to i32*), align 4, !tbaa !79
  br label %2

2:                                                ; preds = %7, %0
  %3 = phi i32 [ %1, %0 ], [ %9, %7 ]
  %4 = load volatile i32, i32* inttoptr (i32 1074085928 to i32*), align 8, !tbaa !81
  %5 = load volatile i32, i32* inttoptr (i32 1074085924 to i32*), align 4, !tbaa !79
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = load volatile i32, i32* inttoptr (i32 1074085928 to i32*), align 8, !tbaa !81
  %9 = load volatile i32, i32* inttoptr (i32 1074085924 to i32*), align 4, !tbaa !79
  %10 = icmp eq i32 %5, %9
  br i1 %10, label %11, label %2

11:                                               ; preds = %7, %2
  %12 = phi i32 [ %3, %2 ], [ %5, %7 ]
  %13 = phi i32 [ %4, %2 ], [ %8, %7 ]
  %14 = zext i32 %12 to i64
  %15 = shl nuw i64 %14, 32
  %16 = zext i32 %13 to i64
  %17 = or i64 %15, %16
  ret i64 %17
}

; Function Attrs: nofree noinline nounwind
define dso_local void @busy_wait_us_32(i32 noundef %0) local_unnamed_addr #8 {
  %2 = icmp sgt i32 %0, -1
  br i1 %2, label %3, label %21

3:                                                ; preds = %1
  %4 = load volatile i32, i32* inttoptr (i32 1074085928 to i32*), align 8, !tbaa !81
  br label %5

5:                                                ; preds = %17, %3
  %6 = load volatile i32, i32* inttoptr (i32 1074085928 to i32*), align 8, !tbaa !81
  %7 = sub i32 %6, %4
  %8 = icmp ult i32 %7, %0
  br i1 %8, label %9, label %23, !llvm.loop !83

9:                                                ; preds = %5
  %10 = load volatile i32, i32* inttoptr (i32 1074085928 to i32*), align 8, !tbaa !81
  %11 = sub i32 %10, %4
  %12 = icmp ult i32 %11, %0
  br i1 %12, label %13, label %23, !llvm.loop !83

13:                                               ; preds = %9
  %14 = load volatile i32, i32* inttoptr (i32 1074085928 to i32*), align 8, !tbaa !81
  %15 = sub i32 %14, %4
  %16 = icmp ult i32 %15, %0
  br i1 %16, label %17, label %23, !llvm.loop !83

17:                                               ; preds = %13
  %18 = load volatile i32, i32* inttoptr (i32 1074085928 to i32*), align 8, !tbaa !81
  %19 = sub i32 %18, %4
  %20 = icmp ult i32 %19, %0
  br i1 %20, label %5, label %23, !llvm.loop !83

21:                                               ; preds = %1
  %22 = zext i32 %0 to i64
  tail call void @busy_wait_us(i64 noundef %22)
  br label %23

23:                                               ; preds = %5, %9, %13, %17, %21
  ret void
}

; Function Attrs: nofree noinline nounwind
define dso_local void @busy_wait_us(i64 noundef %0) local_unnamed_addr #8 {
  %2 = alloca i64, align 8
  %3 = tail call i64 @time_us_64()
  %4 = tail call i64 @llvm.uadd.sat.i64(i64 %3, i64 %0)
  %5 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #30
  call fastcc void @update_us_since_boot.20(i64* noundef nonnull %2, i64 noundef %4)
  %6 = load i64, i64* %2, align 8, !tbaa !56
  tail call void @busy_wait_until(i64 noundef %6)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly
define internal fastcc void @update_us_since_boot.20(i64* nocapture noundef writeonly %0, i64 noundef %1) unnamed_addr #15 {
  store i64 %1, i64* %0, align 8, !tbaa !56
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @busy_wait_until(i64 noundef %0) local_unnamed_addr #2 {
  %2 = lshr i64 %0, 32
  %3 = trunc i64 %2 to i32
  br label %4

4:                                                ; preds = %13, %1
  %5 = load volatile i32, i32* inttoptr (i32 1074085924 to i32*), align 4, !tbaa !79
  %6 = icmp ult i32 %5, %3
  br i1 %6, label %7, label %16, !llvm.loop !84

7:                                                ; preds = %4
  %8 = load volatile i32, i32* inttoptr (i32 1074085924 to i32*), align 4, !tbaa !79
  %9 = icmp ult i32 %8, %3
  br i1 %9, label %10, label %16, !llvm.loop !84

10:                                               ; preds = %7
  %11 = load volatile i32, i32* inttoptr (i32 1074085924 to i32*), align 4, !tbaa !79
  %12 = icmp ult i32 %11, %3
  br i1 %12, label %13, label %16, !llvm.loop !84

13:                                               ; preds = %10
  %14 = load volatile i32, i32* inttoptr (i32 1074085924 to i32*), align 4, !tbaa !79
  %15 = icmp ult i32 %14, %3
  br i1 %15, label %4, label %16, !llvm.loop !84

16:                                               ; preds = %13, %10, %7, %4
  %17 = phi i32 [ %5, %4 ], [ %8, %7 ], [ %11, %10 ], [ %14, %13 ]
  %18 = icmp eq i32 %17, %3
  br i1 %18, label %19, label %45

19:                                               ; preds = %16
  %20 = trunc i64 %0 to i32
  br label %21

21:                                               ; preds = %42, %19
  %22 = load volatile i32, i32* inttoptr (i32 1074085928 to i32*), align 8, !tbaa !81
  %23 = icmp ult i32 %22, %20
  br i1 %23, label %24, label %45

24:                                               ; preds = %21
  %25 = load volatile i32, i32* inttoptr (i32 1074085924 to i32*), align 4, !tbaa !79
  %26 = icmp eq i32 %25, %3
  br i1 %26, label %27, label %45, !llvm.loop !85

27:                                               ; preds = %24
  %28 = load volatile i32, i32* inttoptr (i32 1074085928 to i32*), align 8, !tbaa !81
  %29 = icmp ult i32 %28, %20
  br i1 %29, label %30, label %45

30:                                               ; preds = %27
  %31 = load volatile i32, i32* inttoptr (i32 1074085924 to i32*), align 4, !tbaa !79
  %32 = icmp eq i32 %31, %3
  br i1 %32, label %33, label %45, !llvm.loop !85

33:                                               ; preds = %30
  %34 = load volatile i32, i32* inttoptr (i32 1074085928 to i32*), align 8, !tbaa !81
  %35 = icmp ult i32 %34, %20
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load volatile i32, i32* inttoptr (i32 1074085924 to i32*), align 4, !tbaa !79
  %38 = icmp eq i32 %37, %3
  br i1 %38, label %39, label %45, !llvm.loop !85

39:                                               ; preds = %36
  %40 = load volatile i32, i32* inttoptr (i32 1074085928 to i32*), align 8, !tbaa !81
  %41 = icmp ult i32 %40, %20
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load volatile i32, i32* inttoptr (i32 1074085924 to i32*), align 4, !tbaa !79
  %44 = icmp eq i32 %43, %3
  br i1 %44, label %21, label %45, !llvm.loop !85

45:                                               ; preds = %21, %24, %27, %30, %33, %36, %39, %42, %16
  ret void
}

; Function Attrs: nofree noinline nounwind
define dso_local void @busy_wait_ms(i32 noundef %0) local_unnamed_addr #8 {
  %2 = icmp ult i32 %0, 2147484
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = mul nuw nsw i32 %0, 1000
  tail call void @busy_wait_us_32(i32 noundef %4)
  br label %8

5:                                                ; preds = %1
  %6 = zext i32 %0 to i64
  %7 = mul nuw nsw i64 %6, 1000
  tail call void @busy_wait_us(i64 noundef %7)
  br label %8

8:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @hardware_alarm_set_callback(i32 noundef %0, void (i32)* noundef %1) local_unnamed_addr #3 {
  %3 = tail call i32 asm sideeffect "mrs $0, PRIMASK", "=r"() #30, !srcloc !86
  tail call void asm sideeffect "cpsid i", ""() #30, !srcloc !87
  br label %4

4:                                                ; preds = %13, %2
  %5 = load volatile i32, i32* inttoptr (i32 -805306072 to i32*), align 8, !tbaa !18
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %16, !prof !29, !llvm.loop !88

7:                                                ; preds = %4
  %8 = load volatile i32, i32* inttoptr (i32 -805306072 to i32*), align 8, !tbaa !18
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16, !prof !29, !llvm.loop !88

10:                                               ; preds = %7
  %11 = load volatile i32, i32* inttoptr (i32 -805306072 to i32*), align 8, !tbaa !18
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16, !prof !29, !llvm.loop !88

13:                                               ; preds = %10
  %14 = load volatile i32, i32* inttoptr (i32 -805306072 to i32*), align 8, !tbaa !18
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %4, label %16, !prof !29, !llvm.loop !88

16:                                               ; preds = %13, %10, %7, %4
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !89
  %17 = icmp eq void (i32)* %1, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %16
  %19 = tail call void ()* @irq_get_vtable_handler(i32 noundef %0) #30
  %20 = icmp eq void ()* %19, @hardware_alarm_irq_handler
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  tail call void @irq_set_exclusive_handler(i32 noundef %0, void ()* noundef nonnull @hardware_alarm_irq_handler) #30
  tail call void @irq_set_enabled(i32 noundef %0, i1 noundef zeroext true) #30
  %22 = shl nuw i32 1, %0
  store volatile i32 %22, i32* inttoptr (i32 1074094136 to i32*), align 8, !tbaa !18
  br label %23

23:                                               ; preds = %21, %18
  %24 = getelementptr inbounds [4 x void (i32)*], [4 x void (i32)*]* @alarm_callbacks, i32 0, i32 %0
  store void (i32)* %1, void (i32)** %24, align 4, !tbaa !11
  br label %32

25:                                               ; preds = %16
  %26 = getelementptr inbounds [4 x void (i32)*], [4 x void (i32)*]* @alarm_callbacks, i32 0, i32 %0
  store void (i32)* null, void (i32)** %26, align 4, !tbaa !11
  %27 = shl nuw i32 1, %0
  %28 = load i8, i8* @timer_callbacks_pending, align 1, !tbaa !8
  %29 = trunc i32 %27 to i8
  %30 = xor i8 %29, -1
  %31 = and i8 %28, %30
  store i8 %31, i8* @timer_callbacks_pending, align 1, !tbaa !8
  tail call void @irq_remove_handler(i32 noundef %0, void ()* noundef nonnull @hardware_alarm_irq_handler) #30
  tail call void @irq_set_enabled(i32 noundef %0, i1 noundef zeroext false) #30
  br label %32

32:                                               ; preds = %25, %23
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !89
  store volatile i32 0, i32* inttoptr (i32 -805306072 to i32*), align 8, !tbaa !18
  tail call void asm sideeffect "msr PRIMASK,$0", "r"(i32 %3) #30, !srcloc !90
  ret void
}

; Function Attrs: noinline nounwind
define internal void @hardware_alarm_irq_handler() #3 {
  %1 = tail call i32 asm sideeffect "mrs $0, ipsr", "=r"() #30, !srcloc !91
  %2 = and i32 %1, 63
  %3 = tail call i32 asm sideeffect "mrs $0, PRIMASK", "=r"() #30, !srcloc !86
  tail call void asm sideeffect "cpsid i", ""() #30, !srcloc !87
  br label %4

4:                                                ; preds = %13, %0
  %5 = load volatile i32, i32* inttoptr (i32 -805306072 to i32*), align 8, !tbaa !18
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %16, !prof !29, !llvm.loop !88

7:                                                ; preds = %4
  %8 = load volatile i32, i32* inttoptr (i32 -805306072 to i32*), align 8, !tbaa !18
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16, !prof !29, !llvm.loop !88

10:                                               ; preds = %7
  %11 = load volatile i32, i32* inttoptr (i32 -805306072 to i32*), align 8, !tbaa !18
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16, !prof !29, !llvm.loop !88

13:                                               ; preds = %10
  %14 = load volatile i32, i32* inttoptr (i32 -805306072 to i32*), align 8, !tbaa !18
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %4, label %16, !prof !29, !llvm.loop !88

16:                                               ; preds = %13, %10, %7, %4
  %17 = add nsw i32 %2, -16
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !89
  %18 = shl nuw i32 1, %17
  store volatile i32 %18, i32* inttoptr (i32 1074085940 to i32*), align 4, !tbaa !92
  %19 = load i8, i8* @timer_callbacks_pending, align 1, !tbaa !8
  %20 = zext i8 %19 to i32
  %21 = and i32 %18, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %16
  %24 = load volatile i32, i32* inttoptr (i32 1074085924 to i32*), align 4, !tbaa !79
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* @target_hi, i32 0, i32 %17
  %26 = load i32, i32* %25, align 4, !tbaa !18
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds [4 x void (i32)*], [4 x void (i32)*]* @alarm_callbacks, i32 0, i32 %17
  %30 = load void (i32)*, void (i32)** %29, align 4, !tbaa !11
  %31 = trunc i32 %18 to i8
  %32 = xor i8 %31, -1
  %33 = and i8 %19, %32
  store i8 %33, i8* @timer_callbacks_pending, align 1, !tbaa !8
  br label %37

34:                                               ; preds = %23
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* inttoptr (i32 1074085904 to [4 x i32]*), i32 0, i32 %17
  %36 = load volatile i32, i32* %35, align 4, !tbaa !18
  store volatile i32 %36, i32* %35, align 4, !tbaa !18
  br label %37

37:                                               ; preds = %28, %34, %16
  %38 = phi void (i32)* [ %30, %28 ], [ null, %34 ], [ null, %16 ]
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !89
  store volatile i32 0, i32* inttoptr (i32 -805306072 to i32*), align 8, !tbaa !18
  tail call void asm sideeffect "msr PRIMASK,$0", "r"(i32 %3) #30, !srcloc !90
  %39 = icmp eq void (i32)* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void %38(i32 noundef %17) #30
  br label %41

41:                                               ; preds = %40, %37
  ret void
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @hardware_alarm_set_target(i32 noundef %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = tail call i64 @time_us_64()
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %40

5:                                                ; preds = %2
  %6 = tail call i32 asm sideeffect "mrs $0, PRIMASK", "=r"() #30, !srcloc !86
  tail call void asm sideeffect "cpsid i", ""() #30, !srcloc !87
  br label %7

7:                                                ; preds = %16, %5
  %8 = load volatile i32, i32* inttoptr (i32 -805306072 to i32*), align 8, !tbaa !18
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19, !prof !29, !llvm.loop !88

10:                                               ; preds = %7
  %11 = load volatile i32, i32* inttoptr (i32 -805306072 to i32*), align 8, !tbaa !18
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19, !prof !29, !llvm.loop !88

13:                                               ; preds = %10
  %14 = load volatile i32, i32* inttoptr (i32 -805306072 to i32*), align 8, !tbaa !18
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19, !prof !29, !llvm.loop !88

16:                                               ; preds = %13
  %17 = load volatile i32, i32* inttoptr (i32 -805306072 to i32*), align 8, !tbaa !18
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %7, label %19, !prof !29, !llvm.loop !88

19:                                               ; preds = %16, %13, %10, %7
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !89
  %20 = load i8, i8* @timer_callbacks_pending, align 1, !tbaa !8
  %21 = shl nuw i32 1, %0
  %22 = trunc i32 %21 to i8
  %23 = or i8 %20, %22
  store i8 %23, i8* @timer_callbacks_pending, align 1, !tbaa !8
  store volatile i32 %21, i32* inttoptr (i32 1074085940 to i32*), align 4, !tbaa !92
  %24 = trunc i64 %1 to i32
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* inttoptr (i32 1074085904 to [4 x i32]*), i32 0, i32 %0
  store volatile i32 %24, i32* %25, align 4, !tbaa !18
  %26 = lshr i64 %1, 32
  %27 = trunc i64 %26 to i32
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* @target_hi, i32 0, i32 %0
  store i32 %27, i32* %28, align 4, !tbaa !18
  %29 = load volatile i32, i32* inttoptr (i32 1074085920 to i32*), align 32, !tbaa !93
  %30 = and i32 %29, %21
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %19
  %33 = tail call i64 @time_us_64()
  %34 = icmp ult i64 %33, %1
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = icmp eq i8 %23, %20
  br i1 %36, label %38, label %37

37:                                               ; preds = %35
  store volatile i32 %21, i32* inttoptr (i32 1074085920 to i32*), align 32, !tbaa !93
  store volatile i32 %21, i32* inttoptr (i32 1074085940 to i32*), align 4, !tbaa !92
  tail call fastcc void @irq_clear(i32 noundef %0)
  store i8 %20, i8* @timer_callbacks_pending, align 1, !tbaa !8
  br label %38

38:                                               ; preds = %32, %37, %35, %19
  %39 = phi i1 [ true, %37 ], [ true, %35 ], [ false, %32 ], [ false, %19 ]
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !89
  store volatile i32 0, i32* inttoptr (i32 -805306072 to i32*), align 8, !tbaa !18
  tail call void asm sideeffect "msr PRIMASK,$0", "r"(i32 %6) #30, !srcloc !90
  br label %40

40:                                               ; preds = %2, %38
  %41 = phi i1 [ %39, %38 ], [ true, %2 ]
  ret i1 %41
}

; Function Attrs: nofree noinline norecurse nounwind
define internal fastcc void @irq_clear(i32 noundef %0) unnamed_addr #2 {
  %2 = and i32 %0, 31
  %3 = shl nuw i32 1, %2
  store volatile i32 %3, i32* inttoptr (i32 -536812928 to i32*), align 128, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @hardware_alarm_cancel(i32 noundef %0) local_unnamed_addr #3 {
  %2 = tail call i32 asm sideeffect "mrs $0, PRIMASK", "=r"() #30, !srcloc !86
  tail call void asm sideeffect "cpsid i", ""() #30, !srcloc !87
  br label %3

3:                                                ; preds = %12, %1
  %4 = load volatile i32, i32* inttoptr (i32 -805306072 to i32*), align 8, !tbaa !18
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15, !prof !29, !llvm.loop !88

6:                                                ; preds = %3
  %7 = load volatile i32, i32* inttoptr (i32 -805306072 to i32*), align 8, !tbaa !18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15, !prof !29, !llvm.loop !88

9:                                                ; preds = %6
  %10 = load volatile i32, i32* inttoptr (i32 -805306072 to i32*), align 8, !tbaa !18
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15, !prof !29, !llvm.loop !88

12:                                               ; preds = %9
  %13 = load volatile i32, i32* inttoptr (i32 -805306072 to i32*), align 8, !tbaa !18
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %3, label %15, !prof !29, !llvm.loop !88

15:                                               ; preds = %12, %9, %6, %3
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !89
  %16 = shl nuw i32 1, %0
  store volatile i32 %16, i32* inttoptr (i32 1074085920 to i32*), align 32, !tbaa !93
  %17 = load i8, i8* @timer_callbacks_pending, align 1, !tbaa !8
  %18 = trunc i32 %16 to i8
  %19 = xor i8 %18, -1
  %20 = and i8 %17, %19
  store i8 %20, i8* @timer_callbacks_pending, align 1, !tbaa !8
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !89
  store volatile i32 0, i32* inttoptr (i32 -805306072 to i32*), align 8, !tbaa !18
  tail call void asm sideeffect "msr PRIMASK,$0", "r"(i32 %2) #30, !srcloc !90
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly
define dso_local void @lock_init(%struct.lock_core* nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #15 {
  %3 = shl i32 %1, 2
  %4 = add i32 %3, -805306112
  %5 = inttoptr i32 %4 to i32*
  %6 = getelementptr inbounds %struct.lock_core, %struct.lock_core* %0, i32 0, i32 0
  store i32* %5, i32** %6, align 4, !tbaa !75
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @mutex_init(%struct.mutex* noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.mutex, %struct.mutex* %0, i32 0, i32 0
  %3 = tail call i32 @next_striped_spin_lock_num() #30
  tail call void @lock_init(%struct.lock_core* noundef %2, i32 noundef %3) #30
  %4 = getelementptr inbounds %struct.mutex, %struct.mutex* %0, i32 0, i32 1
  store i8 -1, i8* %4, align 4, !tbaa !94
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !96
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @recursive_mutex_init(%struct.recursive_mutex_t* noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.recursive_mutex_t, %struct.recursive_mutex_t* %0, i32 0, i32 0
  %3 = tail call i32 @next_striped_spin_lock_num() #30
  tail call void @lock_init(%struct.lock_core* noundef %2, i32 noundef %3) #30
  %4 = getelementptr inbounds %struct.recursive_mutex_t, %struct.recursive_mutex_t* %0, i32 0, i32 1
  store i8 -1, i8* %4, align 4, !tbaa !97
  %5 = getelementptr inbounds %struct.recursive_mutex_t, %struct.recursive_mutex_t* %0, i32 0, i32 2
  store i8 0, i8* %5, align 1, !tbaa !99
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !96
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @mutex_enter_blocking(%struct.mutex* nocapture noundef %0) local_unnamed_addr #3 section ".time_critical.mutex_enter_blocking" {
  %2 = load i32, i32* inttoptr (i32 -805306368 to i32*), align 268435456, !tbaa !18
  %3 = getelementptr inbounds %struct.mutex, %struct.mutex* %0, i32 0, i32 0, i32 0
  %4 = getelementptr inbounds %struct.mutex, %struct.mutex* %0, i32 0, i32 1
  br label %5

5:                                                ; preds = %23, %1
  %6 = load i32*, i32** %3, align 4, !tbaa !100
  %7 = tail call i32 asm sideeffect "mrs $0, PRIMASK", "=r"() #30, !srcloc !101
  tail call void asm sideeffect "cpsid i", ""() #30, !srcloc !102
  br label %8

8:                                                ; preds = %17, %5
  %9 = load volatile i32, i32* %6, align 4, !tbaa !18
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %20, !prof !29, !llvm.loop !103

11:                                               ; preds = %8
  %12 = load volatile i32, i32* %6, align 4, !tbaa !18
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20, !prof !29, !llvm.loop !103

14:                                               ; preds = %11
  %15 = load volatile i32, i32* %6, align 4, !tbaa !18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20, !prof !29, !llvm.loop !103

17:                                               ; preds = %14
  %18 = load volatile i32, i32* %6, align 4, !tbaa !18
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %8, label %20, !prof !29, !llvm.loop !103

20:                                               ; preds = %17, %14, %11, %8
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !96
  %21 = load i8, i8* %4, align 4, !tbaa !94
  %22 = icmp sgt i8 %21, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32*, i32** %3, align 4, !tbaa !100
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !96
  store volatile i32 0, i32* %24, align 4, !tbaa !18
  tail call void asm sideeffect "msr PRIMASK,$0", "r"(i32 %7) #30, !srcloc !104
  tail call void asm sideeffect "wfe", ""() #30, !srcloc !105
  br label %5

25:                                               ; preds = %20
  %26 = trunc i32 %2 to i8
  store i8 %26, i8* %4, align 4, !tbaa !94
  %27 = load i32*, i32** %3, align 4, !tbaa !100
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !96
  store volatile i32 0, i32* %27, align 4, !tbaa !18
  tail call void asm sideeffect "msr PRIMASK,$0", "r"(i32 %7) #30, !srcloc !104
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @recursive_mutex_enter_blocking(%struct.recursive_mutex_t* nocapture noundef %0) local_unnamed_addr #3 section ".time_critical.recursive_mutex_enter_blocking" {
  %2 = load i32, i32* inttoptr (i32 -805306368 to i32*), align 268435456, !tbaa !18
  %3 = getelementptr inbounds %struct.recursive_mutex_t, %struct.recursive_mutex_t* %0, i32 0, i32 0, i32 0
  %4 = getelementptr inbounds %struct.recursive_mutex_t, %struct.recursive_mutex_t* %0, i32 0, i32 1
  %5 = shl i32 %2, 24
  %6 = ashr exact i32 %5, 24
  br label %7

7:                                                ; preds = %34, %1
  %8 = load i32*, i32** %3, align 4, !tbaa !106
  %9 = tail call i32 asm sideeffect "mrs $0, PRIMASK", "=r"() #30, !srcloc !101
  tail call void asm sideeffect "cpsid i", ""() #30, !srcloc !102
  br label %10

10:                                               ; preds = %19, %7
  %11 = load volatile i32, i32* %8, align 4, !tbaa !18
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %22, !prof !29, !llvm.loop !103

13:                                               ; preds = %10
  %14 = load volatile i32, i32* %8, align 4, !tbaa !18
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22, !prof !29, !llvm.loop !103

16:                                               ; preds = %13
  %17 = load volatile i32, i32* %8, align 4, !tbaa !18
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22, !prof !29, !llvm.loop !103

19:                                               ; preds = %16
  %20 = load volatile i32, i32* %8, align 4, !tbaa !18
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %10, label %22, !prof !29, !llvm.loop !103

22:                                               ; preds = %19, %16, %13, %10
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !96
  %23 = load i8, i8* %4, align 4, !tbaa !97
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %6, %24
  %26 = icmp sgt i8 %23, -1
  %27 = and i1 %26, %25
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = trunc i32 %2 to i8
  store i8 %29, i8* %4, align 4, !tbaa !97
  %30 = getelementptr inbounds %struct.recursive_mutex_t, %struct.recursive_mutex_t* %0, i32 0, i32 2
  %31 = load i8, i8* %30, align 1, !tbaa !99
  %32 = add i8 %31, 1
  store i8 %32, i8* %30, align 1, !tbaa !99
  %33 = load i32*, i32** %3, align 4, !tbaa !106
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !96
  store volatile i32 0, i32* %33, align 4, !tbaa !18
  tail call void asm sideeffect "msr PRIMASK,$0", "r"(i32 %9) #30, !srcloc !104
  ret void

34:                                               ; preds = %22
  %35 = load i32*, i32** %3, align 4, !tbaa !106
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !96
  store volatile i32 0, i32* %35, align 4, !tbaa !18
  tail call void asm sideeffect "msr PRIMASK,$0", "r"(i32 %9) #30, !srcloc !104
  tail call void asm sideeffect "wfe", ""() #30, !srcloc !105
  br label %7
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @mutex_try_enter(%struct.mutex* nocapture noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 section ".time_critical.mutex_try_enter" {
  %3 = getelementptr inbounds %struct.mutex, %struct.mutex* %0, i32 0, i32 0, i32 0
  %4 = load i32*, i32** %3, align 4, !tbaa !100
  %5 = tail call i32 asm sideeffect "mrs $0, PRIMASK", "=r"() #30, !srcloc !101
  tail call void asm sideeffect "cpsid i", ""() #30, !srcloc !102
  br label %6

6:                                                ; preds = %15, %2
  %7 = load volatile i32, i32* %4, align 4, !tbaa !18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18, !prof !29, !llvm.loop !103

9:                                                ; preds = %6
  %10 = load volatile i32, i32* %4, align 4, !tbaa !18
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18, !prof !29, !llvm.loop !103

12:                                               ; preds = %9
  %13 = load volatile i32, i32* %4, align 4, !tbaa !18
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18, !prof !29, !llvm.loop !103

15:                                               ; preds = %12
  %16 = load volatile i32, i32* %4, align 4, !tbaa !18
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %6, label %18, !prof !29, !llvm.loop !103

18:                                               ; preds = %15, %12, %9, %6
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !96
  %19 = getelementptr inbounds %struct.mutex, %struct.mutex* %0, i32 0, i32 1
  %20 = load i8, i8* %19, align 4, !tbaa !94
  %21 = sext i8 %20 to i32
  %22 = icmp sgt i8 %20, -1
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* inttoptr (i32 -805306368 to i32*), align 268435456, !tbaa !18
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %19, align 4, !tbaa !94
  br label %29

26:                                               ; preds = %18
  %27 = icmp eq i32* %1, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %26
  store i32 %21, i32* %1, align 4, !tbaa !18
  br label %29

29:                                               ; preds = %26, %28, %23
  %30 = xor i1 %22, true
  %31 = load i32*, i32** %3, align 4, !tbaa !100
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !96
  store volatile i32 0, i32* %31, align 4, !tbaa !18
  tail call void asm sideeffect "msr PRIMASK,$0", "r"(i32 %5) #30, !srcloc !104
  ret i1 %30
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @recursive_mutex_try_enter(%struct.recursive_mutex_t* nocapture noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 section ".time_critical.recursive_mutex_try_enter" {
  %3 = load i32, i32* inttoptr (i32 -805306368 to i32*), align 268435456, !tbaa !18
  %4 = getelementptr inbounds %struct.recursive_mutex_t, %struct.recursive_mutex_t* %0, i32 0, i32 0, i32 0
  %5 = load i32*, i32** %4, align 4, !tbaa !106
  %6 = tail call i32 asm sideeffect "mrs $0, PRIMASK", "=r"() #30, !srcloc !101
  tail call void asm sideeffect "cpsid i", ""() #30, !srcloc !102
  br label %7

7:                                                ; preds = %16, %2
  %8 = load volatile i32, i32* %5, align 4, !tbaa !18
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19, !prof !29, !llvm.loop !103

10:                                               ; preds = %7
  %11 = load volatile i32, i32* %5, align 4, !tbaa !18
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19, !prof !29, !llvm.loop !103

13:                                               ; preds = %10
  %14 = load volatile i32, i32* %5, align 4, !tbaa !18
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19, !prof !29, !llvm.loop !103

16:                                               ; preds = %13
  %17 = load volatile i32, i32* %5, align 4, !tbaa !18
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %7, label %19, !prof !29, !llvm.loop !103

19:                                               ; preds = %16, %13, %10, %7
  %20 = trunc i32 %3 to i8
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !96
  %21 = getelementptr inbounds %struct.recursive_mutex_t, %struct.recursive_mutex_t* %0, i32 0, i32 1
  %22 = load i8, i8* %21, align 4, !tbaa !97
  %23 = sext i8 %22 to i32
  %24 = icmp sgt i8 %22, -1
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = shl i32 %3, 24
  %27 = ashr exact i32 %26, 24
  %28 = icmp eq i32 %27, %23
  br i1 %28, label %29, label %33

29:                                               ; preds = %25, %19
  store i8 %20, i8* %21, align 4, !tbaa !97
  %30 = getelementptr inbounds %struct.recursive_mutex_t, %struct.recursive_mutex_t* %0, i32 0, i32 2
  %31 = load i8, i8* %30, align 1, !tbaa !99
  %32 = add i8 %31, 1
  store i8 %32, i8* %30, align 1, !tbaa !99
  br label %36

33:                                               ; preds = %25
  %34 = icmp eq i32* %1, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %33
  store i32 %23, i32* %1, align 4, !tbaa !18
  br label %36

36:                                               ; preds = %33, %35, %29
  %37 = phi i1 [ true, %29 ], [ false, %35 ], [ false, %33 ]
  %38 = load i32*, i32** %4, align 4, !tbaa !106
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !96
  store volatile i32 0, i32* %38, align 4, !tbaa !18
  tail call void asm sideeffect "msr PRIMASK,$0", "r"(i32 %6) #30, !srcloc !104
  ret i1 %37
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @mutex_enter_timeout_ms(%struct.mutex* nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 section ".time_critical.mutex_enter_timeout_ms" {
  %3 = tail call fastcc i64 @make_timeout_time_ms(i32 noundef %1)
  %4 = tail call zeroext i1 @mutex_enter_block_until(%struct.mutex* noundef %0, i64 noundef %3)
  ret i1 %4
}

; Function Attrs: noinline nounwind
define internal fastcc i64 @make_timeout_time_ms(i32 noundef %0) unnamed_addr #3 {
  %2 = tail call fastcc i64 @get_absolute_time.31()
  %3 = tail call fastcc i64 @delayed_by_ms(i64 noundef %2, i32 noundef %0)
  ret i64 %3
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @mutex_enter_block_until(%struct.mutex* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #3 section ".time_critical.mutex_enter_block_until" {
  %3 = load i32, i32* inttoptr (i32 -805306368 to i32*), align 268435456, !tbaa !18
  %4 = trunc i32 %3 to i8
  %5 = getelementptr inbounds %struct.mutex, %struct.mutex* %0, i32 0, i32 0, i32 0
  %6 = getelementptr inbounds %struct.mutex, %struct.mutex* %0, i32 0, i32 1
  br label %7

7:                                                ; preds = %27, %2
  %8 = load i32*, i32** %5, align 4, !tbaa !100
  %9 = tail call i32 asm sideeffect "mrs $0, PRIMASK", "=r"() #30, !srcloc !101
  tail call void asm sideeffect "cpsid i", ""() #30, !srcloc !102
  br label %10

10:                                               ; preds = %19, %7
  %11 = load volatile i32, i32* %8, align 4, !tbaa !18
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %22, !prof !29, !llvm.loop !103

13:                                               ; preds = %10
  %14 = load volatile i32, i32* %8, align 4, !tbaa !18
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22, !prof !29, !llvm.loop !103

16:                                               ; preds = %13
  %17 = load volatile i32, i32* %8, align 4, !tbaa !18
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22, !prof !29, !llvm.loop !103

19:                                               ; preds = %16
  %20 = load volatile i32, i32* %8, align 4, !tbaa !18
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %10, label %22, !prof !29, !llvm.loop !103

22:                                               ; preds = %19, %16, %13, %10
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !96
  %23 = load i8, i8* %6, align 4, !tbaa !94
  %24 = icmp sgt i8 %23, -1
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  store i8 %4, i8* %6, align 4, !tbaa !94
  %26 = load i32*, i32** %5, align 4, !tbaa !100
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !96
  store volatile i32 0, i32* %26, align 4, !tbaa !18
  tail call void asm sideeffect "msr PRIMASK,$0", "r"(i32 %9) #30, !srcloc !104
  br label %30

27:                                               ; preds = %22
  %28 = load i32*, i32** %5, align 4, !tbaa !100
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !96
  store volatile i32 0, i32* %28, align 4, !tbaa !18
  tail call void asm sideeffect "msr PRIMASK,$0", "r"(i32 %9) #30, !srcloc !104
  %29 = tail call zeroext i1 @best_effort_wfe_or_timeout(i64 noundef %1) #30
  br i1 %29, label %30, label %7

30:                                               ; preds = %27, %25
  %31 = xor i1 %24, true
  ret i1 %31
}

; Function Attrs: noinline nounwind
define internal fastcc i64 @get_absolute_time.31() unnamed_addr #3 {
  %1 = alloca i64, align 8
  %2 = bitcast i64* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #30
  %3 = tail call i64 @time_us_64() #30
  call fastcc void @update_us_since_boot.32(i64* noundef nonnull %1, i64 noundef %3)
  %4 = load i64, i64* %1, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #30
  ret i64 %4
}

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn writeonly
define internal fastcc i64 @delayed_by_ms(i64 noundef %0, i32 noundef %1) unnamed_addr #13 {
  %3 = alloca i64, align 8
  %4 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #30
  %5 = zext i32 %1 to i64
  %6 = mul nuw nsw i64 %5, 1000
  %7 = tail call i64 @llvm.uadd.sat.i64(i64 %0, i64 %6)
  call fastcc void @update_us_since_boot.32(i64* noundef nonnull %3, i64 noundef %7)
  %8 = load i64, i64* %3, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #30
  ret i64 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly
define internal fastcc void @update_us_since_boot.32(i64* nocapture noundef writeonly %0, i64 noundef %1) unnamed_addr #15 {
  store i64 %1, i64* %0, align 8, !tbaa !56
  ret void
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @recursive_mutex_enter_timeout_ms(%struct.recursive_mutex_t* nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 section ".time_critical.recursive_mutex_enter_timeout_ms" {
  %3 = tail call fastcc i64 @make_timeout_time_ms(i32 noundef %1)
  %4 = tail call zeroext i1 @recursive_mutex_enter_block_until(%struct.recursive_mutex_t* noundef %0, i64 noundef %3)
  ret i1 %4
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @recursive_mutex_enter_block_until(%struct.recursive_mutex_t* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #3 section ".time_critical.recursive_mutex_enter_block_until" {
  %3 = load i32, i32* inttoptr (i32 -805306368 to i32*), align 268435456, !tbaa !18
  %4 = trunc i32 %3 to i8
  %5 = getelementptr inbounds %struct.recursive_mutex_t, %struct.recursive_mutex_t* %0, i32 0, i32 0, i32 0
  %6 = getelementptr inbounds %struct.recursive_mutex_t, %struct.recursive_mutex_t* %0, i32 0, i32 1
  %7 = shl i32 %3, 24
  %8 = ashr exact i32 %7, 24
  br label %9

9:                                                ; preds = %35, %2
  %10 = load i32*, i32** %5, align 4, !tbaa !106
  %11 = tail call i32 asm sideeffect "mrs $0, PRIMASK", "=r"() #30, !srcloc !101
  tail call void asm sideeffect "cpsid i", ""() #30, !srcloc !102
  br label %12

12:                                               ; preds = %21, %9
  %13 = load volatile i32, i32* %10, align 4, !tbaa !18
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24, !prof !29, !llvm.loop !103

15:                                               ; preds = %12
  %16 = load volatile i32, i32* %10, align 4, !tbaa !18
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24, !prof !29, !llvm.loop !103

18:                                               ; preds = %15
  %19 = load volatile i32, i32* %10, align 4, !tbaa !18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24, !prof !29, !llvm.loop !103

21:                                               ; preds = %18
  %22 = load volatile i32, i32* %10, align 4, !tbaa !18
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %12, label %24, !prof !29, !llvm.loop !103

24:                                               ; preds = %21, %18, %15, %12
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !96
  %25 = load i8, i8* %6, align 4, !tbaa !97
  %26 = icmp slt i8 %25, 0
  %27 = zext i8 %25 to i32
  %28 = icmp eq i32 %8, %27
  %29 = select i1 %26, i1 true, i1 %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  store i8 %4, i8* %6, align 4, !tbaa !97
  %31 = getelementptr inbounds %struct.recursive_mutex_t, %struct.recursive_mutex_t* %0, i32 0, i32 2
  %32 = load i8, i8* %31, align 1, !tbaa !99
  %33 = add i8 %32, 1
  store i8 %33, i8* %31, align 1, !tbaa !99
  %34 = load i32*, i32** %5, align 4, !tbaa !106
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !96
  store volatile i32 0, i32* %34, align 4, !tbaa !18
  tail call void asm sideeffect "msr PRIMASK,$0", "r"(i32 %11) #30, !srcloc !104
  br label %38

35:                                               ; preds = %24
  %36 = load i32*, i32** %5, align 4, !tbaa !106
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !96
  store volatile i32 0, i32* %36, align 4, !tbaa !18
  tail call void asm sideeffect "msr PRIMASK,$0", "r"(i32 %11) #30, !srcloc !104
  %37 = tail call zeroext i1 @best_effort_wfe_or_timeout(i64 noundef %1) #30
  br i1 %37, label %38, label %9

38:                                               ; preds = %35, %30
  ret i1 %29
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @mutex_enter_timeout_us(%struct.mutex* nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 section ".time_critical.mutex_enter_timeout_us" {
  %3 = zext i32 %1 to i64
  %4 = tail call fastcc i64 @make_timeout_time_us.33(i64 noundef %3)
  %5 = tail call zeroext i1 @mutex_enter_block_until(%struct.mutex* noundef %0, i64 noundef %4)
  ret i1 %5
}

; Function Attrs: noinline nounwind
define internal fastcc i64 @make_timeout_time_us.33(i64 noundef %0) unnamed_addr #3 {
  %2 = tail call fastcc i64 @get_absolute_time.31()
  %3 = tail call fastcc i64 @delayed_by_us.34(i64 noundef %2, i64 noundef %0)
  ret i64 %3
}

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn writeonly
define internal fastcc i64 @delayed_by_us.34(i64 noundef %0, i64 noundef %1) unnamed_addr #13 {
  %3 = alloca i64, align 8
  %4 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #30
  %5 = tail call i64 @llvm.uadd.sat.i64(i64 %0, i64 %1)
  call fastcc void @update_us_since_boot.32(i64* noundef nonnull %3, i64 noundef %5)
  %6 = load i64, i64* %3, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #30
  ret i64 %6
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @recursive_mutex_enter_timeout_us(%struct.recursive_mutex_t* nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 section ".time_critical.recursive_mutex_enter_timeout_us" {
  %3 = zext i32 %1 to i64
  %4 = tail call fastcc i64 @make_timeout_time_us.33(i64 noundef %3)
  %5 = tail call zeroext i1 @recursive_mutex_enter_block_until(%struct.recursive_mutex_t* noundef %0, i64 noundef %4)
  ret i1 %5
}

; Function Attrs: noinline nounwind
define dso_local void @mutex_exit(%struct.mutex* nocapture noundef %0) local_unnamed_addr #3 section ".time_critical.mutex_exit" {
  %2 = getelementptr inbounds %struct.mutex, %struct.mutex* %0, i32 0, i32 0, i32 0
  %3 = load i32*, i32** %2, align 4, !tbaa !100
  %4 = tail call i32 asm sideeffect "mrs $0, PRIMASK", "=r"() #30, !srcloc !101
  tail call void asm sideeffect "cpsid i", ""() #30, !srcloc !102
  br label %5

5:                                                ; preds = %14, %1
  %6 = load volatile i32, i32* %3, align 4, !tbaa !18
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17, !prof !29, !llvm.loop !103

8:                                                ; preds = %5
  %9 = load volatile i32, i32* %3, align 4, !tbaa !18
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17, !prof !29, !llvm.loop !103

11:                                               ; preds = %8
  %12 = load volatile i32, i32* %3, align 4, !tbaa !18
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17, !prof !29, !llvm.loop !103

14:                                               ; preds = %11
  %15 = load volatile i32, i32* %3, align 4, !tbaa !18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %5, label %17, !prof !29, !llvm.loop !103

17:                                               ; preds = %14, %11, %8, %5
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !96
  %18 = getelementptr inbounds %struct.mutex, %struct.mutex* %0, i32 0, i32 1
  store i8 -1, i8* %18, align 4, !tbaa !94
  %19 = load i32*, i32** %2, align 4, !tbaa !100
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !96
  store volatile i32 0, i32* %19, align 4, !tbaa !18
  tail call void asm sideeffect "msr PRIMASK,$0", "r"(i32 %4) #30, !srcloc !104
  tail call void asm sideeffect "sev", ""() #30, !srcloc !107
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @recursive_mutex_exit(%struct.recursive_mutex_t* nocapture noundef %0) local_unnamed_addr #3 section ".time_critical.recursive_mutex_exit" {
  %2 = getelementptr inbounds %struct.recursive_mutex_t, %struct.recursive_mutex_t* %0, i32 0, i32 0, i32 0
  %3 = load i32*, i32** %2, align 4, !tbaa !106
  %4 = tail call i32 asm sideeffect "mrs $0, PRIMASK", "=r"() #30, !srcloc !101
  tail call void asm sideeffect "cpsid i", ""() #30, !srcloc !102
  br label %5

5:                                                ; preds = %14, %1
  %6 = load volatile i32, i32* %3, align 4, !tbaa !18
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17, !prof !29, !llvm.loop !103

8:                                                ; preds = %5
  %9 = load volatile i32, i32* %3, align 4, !tbaa !18
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17, !prof !29, !llvm.loop !103

11:                                               ; preds = %8
  %12 = load volatile i32, i32* %3, align 4, !tbaa !18
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17, !prof !29, !llvm.loop !103

14:                                               ; preds = %11
  %15 = load volatile i32, i32* %3, align 4, !tbaa !18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %5, label %17, !prof !29, !llvm.loop !103

17:                                               ; preds = %14, %11, %8, %5
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !96
  %18 = getelementptr inbounds %struct.recursive_mutex_t, %struct.recursive_mutex_t* %0, i32 0, i32 2
  %19 = load i8, i8* %18, align 1, !tbaa !99
  %20 = add i8 %19, -1
  store i8 %20, i8* %18, align 1, !tbaa !99
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.recursive_mutex_t, %struct.recursive_mutex_t* %0, i32 0, i32 1
  store i8 -1, i8* %23, align 4, !tbaa !97
  %24 = load i32*, i32** %2, align 4, !tbaa !106
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !96
  store volatile i32 0, i32* %24, align 4, !tbaa !18
  tail call void asm sideeffect "msr PRIMASK,$0", "r"(i32 %4) #30, !srcloc !104
  tail call void asm sideeffect "sev", ""() #30, !srcloc !107
  br label %27

25:                                               ; preds = %17
  %26 = load i32*, i32** %2, align 4, !tbaa !106
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !96
  store volatile i32 0, i32* %26, align 4, !tbaa !18
  tail call void asm sideeffect "msr PRIMASK,$0", "r"(i32 %4) #30, !srcloc !104
  br label %27

27:                                               ; preds = %25, %22
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @critical_section_init(%struct.critical_section* nocapture noundef writeonly %0) local_unnamed_addr #3 {
  %2 = tail call i32 @spin_lock_claim_unused(i1 noundef zeroext true) #30
  tail call void @critical_section_init_with_lock_num(%struct.critical_section* noundef %0, i32 noundef %2)
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @critical_section_init_with_lock_num(%struct.critical_section* nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = shl i32 %1, 2
  %4 = add i32 %3, -805306112
  %5 = inttoptr i32 %4 to i32*
  %6 = getelementptr inbounds %struct.critical_section, %struct.critical_section* %0, i32 0, i32 0
  store i32* %5, i32** %6, align 4, !tbaa !108
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !110
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @critical_section_deinit(%struct.critical_section* nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.critical_section, %struct.critical_section* %0, i32 0, i32 0
  %3 = load i32*, i32** %2, align 4, !tbaa !108
  %4 = ptrtoint i32* %3 to i32
  %5 = add i32 %4, 805306112
  %6 = ashr exact i32 %5, 2
  tail call void @spin_lock_unclaim(i32 noundef %6) #30
  ret void
}

; Function Attrs: nofree noinline nounwind
define dso_local noalias %struct.pheap* @ph_create(i32 noundef %0, i1 (i8*, i8, i8)* noundef %1, i8* noundef %2) local_unnamed_addr #8 {
  %4 = tail call noalias dereferenceable_or_null(16) i8* @calloc(i32 noundef 1, i32 noundef 16) #33
  %5 = bitcast i8* %4 to %struct.pheap*
  %6 = tail call noalias i8* @calloc(i32 noundef %0, i32 noundef 3) #33
  %7 = bitcast i8* %4 to i8**
  store i8* %6, i8** %7, align 4, !tbaa !60
  tail call void @ph_post_alloc_init(%struct.pheap* noundef %5, i32 noundef %0, i1 (i8*, i8, i8)* noundef %1, i8* noundef %2)
  ret %struct.pheap* %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind
define dso_local void @ph_post_alloc_init(%struct.pheap* nocapture noundef %0, i32 noundef %1, i1 (i8*, i8, i8)* noundef %2, i8* noundef %3) local_unnamed_addr #17 {
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.pheap, %struct.pheap* %0, i32 0, i32 3
  store i8 %5, i8* %6, align 4, !tbaa !111
  %7 = getelementptr inbounds %struct.pheap, %struct.pheap* %0, i32 0, i32 1
  store i1 (i8*, i8, i8)* %2, i1 (i8*, i8, i8)** %7, align 4, !tbaa !66
  %8 = getelementptr inbounds %struct.pheap, %struct.pheap* %0, i32 0, i32 2
  store i8* %3, i8** %8, align 4, !tbaa !67
  tail call void @ph_clear(%struct.pheap* noundef %0)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind
define dso_local void @ph_clear(%struct.pheap* nocapture noundef %0) local_unnamed_addr #17 {
  %2 = getelementptr inbounds %struct.pheap, %struct.pheap* %0, i32 0, i32 4
  store i8 0, i8* %2, align 1, !tbaa !48
  %3 = getelementptr inbounds %struct.pheap, %struct.pheap* %0, i32 0, i32 5
  store i8 1, i8* %3, align 2, !tbaa !63
  %4 = getelementptr inbounds %struct.pheap, %struct.pheap* %0, i32 0, i32 3
  %5 = load i8, i8* %4, align 4, !tbaa !111
  %6 = getelementptr inbounds %struct.pheap, %struct.pheap* %0, i32 0, i32 6
  store i8 %5, i8* %6, align 1, !tbaa !59
  %7 = icmp ugt i8 %5, 1
  %8 = getelementptr %struct.pheap, %struct.pheap* %0, i32 0, i32 0
  %9 = load %struct.pheap_node*, %struct.pheap_node** %8, align 4, !tbaa !60
  br i1 %7, label %13, label %10

10:                                               ; preds = %13, %1
  %11 = tail call fastcc %struct.pheap_node* @ph_get_node.39(%struct.pheap_node* %9, i8 noundef zeroext %5)
  %12 = getelementptr inbounds %struct.pheap_node, %struct.pheap_node* %11, i32 0, i32 1
  store i8 0, i8* %12, align 1, !tbaa !61
  ret void

13:                                               ; preds = %1, %13
  %14 = phi i8 [ %15, %13 ], [ 1, %1 ]
  %15 = add nuw i8 %14, 1
  %16 = tail call fastcc %struct.pheap_node* @ph_get_node.39(%struct.pheap_node* %9, i8 noundef zeroext %14)
  %17 = getelementptr inbounds %struct.pheap_node, %struct.pheap_node* %16, i32 0, i32 1
  store i8 %15, i8* %17, align 1, !tbaa !61
  %18 = icmp ult i8 %15, %5
  br i1 %18, label %13, label %10, !llvm.loop !112
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define internal fastcc nonnull %struct.pheap_node* @ph_get_node.39(%struct.pheap_node* %0, i8 noundef zeroext %1) unnamed_addr #10 {
  %3 = zext i8 %1 to i32
  %4 = getelementptr inbounds %struct.pheap_node, %struct.pheap_node* %0, i32 %3
  %5 = getelementptr inbounds %struct.pheap_node, %struct.pheap_node* %4, i32 -1
  ret %struct.pheap_node* %5
}

; Function Attrs: mustprogress noinline nounwind willreturn
define dso_local void @ph_destroy(%struct.pheap* nocapture noundef %0) local_unnamed_addr #18 {
  %2 = bitcast %struct.pheap* %0 to i8**
  %3 = load i8*, i8** %2, align 4, !tbaa !60
  tail call void @free(i8* noundef %3)
  %4 = bitcast %struct.pheap* %0 to i8*
  tail call void @free(i8* noundef %4)
  ret void
}

; Function Attrs: noinline nounwind
define dso_local zeroext i8 @ph_merge_two_pass(%struct.pheap* nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #3 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.pheap, %struct.pheap* %0, i32 0, i32 0
  %6 = load %struct.pheap_node*, %struct.pheap_node** %5, align 4, !tbaa !60
  %7 = tail call fastcc %struct.pheap_node* @ph_get_node.39(%struct.pheap_node* %6, i8 noundef zeroext %1)
  %8 = getelementptr inbounds %struct.pheap_node, %struct.pheap_node* %7, i32 0, i32 1
  %9 = load i8, i8* %8, align 1, !tbaa !61
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %4, %2, %13
  %12 = phi i8 [ %21, %13 ], [ %1, %4 ], [ 0, %2 ]
  ret i8 %12

13:                                               ; preds = %4
  %14 = tail call fastcc %struct.pheap_node* @ph_get_node.39(%struct.pheap_node* %6, i8 noundef zeroext %9)
  %15 = getelementptr inbounds %struct.pheap_node, %struct.pheap_node* %14, i32 0, i32 1
  %16 = load i8, i8* %15, align 1, !tbaa !61
  store i8 0, i8* %15, align 1, !tbaa !61
  %17 = tail call fastcc %struct.pheap_node* @ph_get_node.39(%struct.pheap_node* %6, i8 noundef zeroext %1)
  %18 = getelementptr inbounds %struct.pheap_node, %struct.pheap_node* %17, i32 0, i32 1
  store i8 0, i8* %18, align 1, !tbaa !61
  %19 = tail call fastcc zeroext i8 @ph_merge_nodes.42(%struct.pheap* noundef nonnull %0, i8 noundef zeroext %1, i8 noundef zeroext %9)
  %20 = tail call zeroext i8 @ph_merge_two_pass(%struct.pheap* noundef nonnull %0, i8 noundef zeroext %16)
  %21 = tail call fastcc zeroext i8 @ph_merge_nodes.42(%struct.pheap* noundef nonnull %0, i8 noundef zeroext %19, i8 noundef zeroext %20)
  br label %11
}

; Function Attrs: noinline nounwind
define internal fastcc zeroext i8 @ph_merge_nodes.42(%struct.pheap* nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #3 {
  %4 = icmp eq i8 %1, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %3
  %6 = icmp eq i8 %2, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.pheap, %struct.pheap* %0, i32 0, i32 1
  %9 = load i1 (i8*, i8, i8)*, i1 (i8*, i8, i8)** %8, align 4, !tbaa !66
  %10 = getelementptr inbounds %struct.pheap, %struct.pheap* %0, i32 0, i32 2
  %11 = load i8*, i8** %10, align 4, !tbaa !67
  %12 = tail call zeroext i1 %9(i8* noundef %11, i8 noundef zeroext %1, i8 noundef zeroext %2) #30
  %13 = getelementptr %struct.pheap, %struct.pheap* %0, i32 0, i32 0
  %14 = load %struct.pheap_node*, %struct.pheap_node** %13, align 4, !tbaa !60
  br i1 %12, label %15, label %16

15:                                               ; preds = %7
  tail call fastcc void @ph_add_child_node.43(%struct.pheap_node* %14, i8 noundef zeroext %1, i8 noundef zeroext %2)
  br label %17

16:                                               ; preds = %7
  tail call fastcc void @ph_add_child_node.43(%struct.pheap_node* %14, i8 noundef zeroext %2, i8 noundef zeroext %1)
  br label %17

17:                                               ; preds = %5, %3, %16, %15
  %18 = phi i8 [ %1, %15 ], [ %2, %16 ], [ %2, %3 ], [ %1, %5 ]
  ret i8 %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn
define internal fastcc void @ph_add_child_node.43(%struct.pheap_node* %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #11 {
  %4 = tail call fastcc %struct.pheap_node* @ph_get_node.39(%struct.pheap_node* %0, i8 noundef zeroext %1)
  %5 = tail call fastcc %struct.pheap_node* @ph_get_node.39(%struct.pheap_node* %0, i8 noundef zeroext %2)
  %6 = getelementptr inbounds %struct.pheap_node, %struct.pheap_node* %5, i32 0, i32 2
  store i8 %1, i8* %6, align 1, !tbaa !64
  %7 = getelementptr inbounds %struct.pheap_node, %struct.pheap_node* %4, i32 0, i32 0
  %8 = load i8, i8* %7, align 1, !tbaa !65
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.pheap_node, %struct.pheap_node* %5, i32 0, i32 1
  store i8 %8, i8* %11, align 1, !tbaa !61
  br label %12

12:                                               ; preds = %3, %10
  store i8 %2, i8* %7, align 1, !tbaa !65
  ret void
}

; Function Attrs: noinline nounwind
define dso_local zeroext i8 @ph_remove_head(%struct.pheap* nocapture noundef %0, i1 noundef zeroext %1) local_unnamed_addr #3 {
  %3 = getelementptr %struct.pheap, %struct.pheap* %0, i32 0, i32 4
  %4 = load i8, i8* %3, align 1, !tbaa !48
  %5 = tail call fastcc zeroext i8 @ph_peek_head.46(i8 %4)
  %6 = tail call fastcc zeroext i8 @ph_remove_any_head(%struct.pheap* noundef %0, i8 noundef zeroext %5, i1 noundef zeroext %1)
  store i8 %6, i8* %3, align 1, !tbaa !48
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define internal fastcc zeroext i8 @ph_peek_head.46(i8 %0) unnamed_addr #10 {
  ret i8 %0
}

; Function Attrs: noinline nounwind
define internal fastcc zeroext i8 @ph_remove_any_head(%struct.pheap* nocapture noundef %0, i8 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #3 {
  %4 = getelementptr %struct.pheap, %struct.pheap* %0, i32 0, i32 0
  %5 = load %struct.pheap_node*, %struct.pheap_node** %4, align 4, !tbaa !60
  %6 = tail call fastcc %struct.pheap_node* @ph_get_node.39(%struct.pheap_node* %5, i8 noundef zeroext %1)
  %7 = getelementptr inbounds %struct.pheap_node, %struct.pheap_node* %6, i32 0, i32 0
  %8 = load i8, i8* %7, align 1, !tbaa !65
  %9 = tail call zeroext i8 @ph_merge_two_pass(%struct.pheap* noundef %0, i8 noundef zeroext %8)
  br i1 %2, label %10, label %19

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.pheap, %struct.pheap* %0, i32 0, i32 6
  %12 = load i8, i8* %11, align 1, !tbaa !59
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load %struct.pheap_node*, %struct.pheap_node** %4, align 4, !tbaa !60
  %16 = tail call fastcc %struct.pheap_node* @ph_get_node.39(%struct.pheap_node* %15, i8 noundef zeroext %12)
  %17 = getelementptr inbounds %struct.pheap_node, %struct.pheap_node* %16, i32 0, i32 1
  store i8 %1, i8* %17, align 1, !tbaa !61
  br label %18

18:                                               ; preds = %14, %10
  store i8 %1, i8* %11, align 1, !tbaa !59
  br label %19

19:                                               ; preds = %18, %3
  %20 = icmp eq i8 %9, 0
  %21 = load %struct.pheap_node*, %struct.pheap_node** %4, align 4, !tbaa !60
  br i1 %20, label %25, label %22

22:                                               ; preds = %19
  %23 = tail call fastcc %struct.pheap_node* @ph_get_node.39(%struct.pheap_node* %21, i8 noundef zeroext %9)
  %24 = getelementptr inbounds %struct.pheap_node, %struct.pheap_node* %23, i32 0, i32 2
  store i8 0, i8* %24, align 1, !tbaa !64
  br label %25

25:                                               ; preds = %19, %22
  %26 = tail call fastcc %struct.pheap_node* @ph_get_node.39(%struct.pheap_node* %21, i8 noundef zeroext %1)
  %27 = getelementptr inbounds %struct.pheap_node, %struct.pheap_node* %26, i32 0, i32 1
  store i8 0, i8* %27, align 1, !tbaa !61
  ret i8 %9
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @ph_remove_and_free_node(%struct.pheap* nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %42, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.pheap, %struct.pheap* %0, i32 0, i32 4
  %6 = load i8, i8* %5, align 1, !tbaa !48
  %7 = icmp eq i8 %6, %1
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call fastcc void @ph_remove_and_free_head(%struct.pheap* noundef nonnull %0)
  br label %42

9:                                                ; preds = %4
  %10 = getelementptr %struct.pheap, %struct.pheap* %0, i32 0, i32 0
  %11 = load %struct.pheap_node*, %struct.pheap_node** %10, align 4, !tbaa !60
  %12 = tail call fastcc %struct.pheap_node* @ph_get_node.39(%struct.pheap_node* %11, i8 noundef zeroext %1)
  %13 = getelementptr inbounds %struct.pheap_node, %struct.pheap_node* %12, i32 0, i32 2
  %14 = load i8, i8* %13, align 1, !tbaa !64
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %40, label %16

16:                                               ; preds = %9
  %17 = tail call fastcc %struct.pheap_node* @ph_get_node.39(%struct.pheap_node* %11, i8 noundef zeroext %14)
  %18 = getelementptr inbounds %struct.pheap_node, %struct.pheap_node* %17, i32 0, i32 0
  %19 = load i8, i8* %18, align 1, !tbaa !65
  %20 = icmp eq i8 %19, %1
  br i1 %20, label %31, label %21

21:                                               ; preds = %16, %29
  %22 = phi i8 [ %25, %29 ], [ %19, %16 ]
  %23 = tail call fastcc %struct.pheap_node* @ph_get_node.39(%struct.pheap_node* %11, i8 noundef zeroext %22)
  %24 = getelementptr inbounds %struct.pheap_node, %struct.pheap_node* %23, i32 0, i32 1
  %25 = load i8, i8* %24, align 1, !tbaa !61
  %26 = icmp eq i8 %25, %1
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.pheap_node, %struct.pheap_node* %23, i32 0, i32 1
  br label %31

29:                                               ; preds = %21
  %30 = icmp eq i8 %25, 0
  br i1 %30, label %35, label %21, !llvm.loop !113

31:                                               ; preds = %16, %27
  %32 = phi i8* [ %28, %27 ], [ %18, %16 ]
  %33 = getelementptr inbounds %struct.pheap_node, %struct.pheap_node* %12, i32 0, i32 1
  %34 = load i8, i8* %33, align 1, !tbaa !61
  store i8 %34, i8* %32, align 1, !tbaa !8
  br label %35

35:                                               ; preds = %29, %31
  store i8 0, i8* %13, align 1, !tbaa !64
  %36 = getelementptr inbounds %struct.pheap_node, %struct.pheap_node* %12, i32 0, i32 1
  store i8 0, i8* %36, align 1, !tbaa !61
  %37 = tail call fastcc zeroext i8 @ph_remove_any_head(%struct.pheap* noundef %0, i8 noundef zeroext %1, i1 noundef zeroext true)
  %38 = load i8, i8* %5, align 1, !tbaa !48
  %39 = tail call fastcc zeroext i8 @ph_merge_nodes.42(%struct.pheap* noundef %0, i8 noundef zeroext %38, i8 noundef zeroext %37)
  store i8 %39, i8* %5, align 1, !tbaa !48
  br label %40

40:                                               ; preds = %9, %35
  %41 = xor i1 %15, true
  br label %42

42:                                               ; preds = %2, %40, %8
  %43 = phi i1 [ true, %8 ], [ %41, %40 ], [ false, %2 ]
  ret i1 %43
}

; Function Attrs: noinline nounwind
define internal fastcc void @ph_remove_and_free_head(%struct.pheap* nocapture noundef %0) unnamed_addr #3 {
  %2 = tail call zeroext i8 @ph_remove_head(%struct.pheap* noundef %0, i1 noundef zeroext true)
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @ph_dump(%struct.pheap* noundef %0, void (i8, i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.pheap, %struct.pheap* %0, i32 0, i32 4
  %5 = load i8, i8* %4, align 1, !tbaa !48
  %6 = tail call fastcc i32 @ph_dump_node(%struct.pheap* noundef %0, i8 noundef zeroext %5, void (i8, i8*)* noundef %1, i8* noundef %2, i32 noundef 0)
  %7 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0), i32 noundef %6)
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc i32 @ph_dump_node(%struct.pheap* noundef %0, i8 noundef zeroext %1, void (i8, i8*)* noundef %2, i8* noundef %3, i32 noundef %4) unnamed_addr #3 {
  %6 = icmp eq i8 %1, 0
  br i1 %6, label %50, label %7

7:                                                ; preds = %5
  %8 = shl i32 %4, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %33, %7
  %11 = getelementptr %struct.pheap, %struct.pheap* %0, i32 0, i32 0
  %12 = load %struct.pheap_node*, %struct.pheap_node** %11, align 4, !tbaa !60
  %13 = tail call fastcc %struct.pheap_node* @ph_get_node.39(%struct.pheap_node* %12, i8 noundef zeroext %1)
  %14 = zext i8 %1 to i32
  %15 = getelementptr inbounds %struct.pheap_node, %struct.pheap_node* %13, i32 0, i32 0
  %16 = load i8, i8* %15, align 1, !tbaa !65
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds %struct.pheap_node, %struct.pheap_node* %13, i32 0, i32 1
  %19 = load i8, i8* %18, align 1, !tbaa !61
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds %struct.pheap_node, %struct.pheap_node* %13, i32 0, i32 2
  %22 = load i8, i8* %21, align 1, !tbaa !64
  %23 = zext i8 %22 to i32
  %24 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1.52, i32 0, i32 0), i32 noundef %14, i32 noundef %17, i32 noundef %20, i32 noundef %23)
  %25 = icmp eq void (i8, i8*)* %2, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %10
  %27 = tail call i32 @putchar(i32 10)
  %28 = load i8, i8* %15, align 1, !tbaa !65
  %29 = add i32 %4, 1
  %30 = tail call fastcc i32 @ph_dump_node(%struct.pheap* noundef nonnull %0, i8 noundef zeroext %28, void (i8, i8*)* noundef null, i8* noundef %3, i32 noundef %29)
  %31 = load i8, i8* %18, align 1, !tbaa !61
  %32 = tail call fastcc i32 @ph_dump_node(%struct.pheap* noundef nonnull %0, i8 noundef zeroext %31, void (i8, i8*)* noundef null, i8* noundef %3, i32 noundef %4)
  br label %45

33:                                               ; preds = %7, %33
  %34 = phi i32 [ %36, %33 ], [ 0, %7 ]
  %35 = tail call i32 @putchar(i32 noundef 32)
  %36 = add nuw i32 %34, 1
  %37 = icmp eq i32 %36, %8
  br i1 %37, label %10, label %33, !llvm.loop !114

38:                                               ; preds = %10
  tail call void %2(i8 noundef zeroext %1, i8* noundef %3) #30
  %39 = tail call i32 @putchar(i32 10)
  %40 = load i8, i8* %15, align 1, !tbaa !65
  %41 = add i32 %4, 1
  %42 = tail call fastcc i32 @ph_dump_node(%struct.pheap* noundef nonnull %0, i8 noundef zeroext %40, void (i8, i8*)* noundef nonnull %2, i8* noundef %3, i32 noundef %41)
  %43 = load i8, i8* %18, align 1, !tbaa !61
  %44 = tail call fastcc i32 @ph_dump_node(%struct.pheap* noundef nonnull %0, i8 noundef zeroext %43, void (i8, i8*)* noundef nonnull %2, i8* noundef %3, i32 noundef %4)
  br label %45

45:                                               ; preds = %26, %38
  %46 = phi i32 [ %42, %38 ], [ %30, %26 ]
  %47 = phi i32 [ %44, %38 ], [ %32, %26 ]
  %48 = add i32 %46, 1
  %49 = add i32 %48, %47
  br label %50

50:                                               ; preds = %45, %5
  %51 = phi i32 [ %49, %45 ], [ 0, %5 ]
  ret i32 %51
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @putchar(i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind
define dso_local void @runtime_install_stack_guard(i8* noundef %0) local_unnamed_addr #3 {
  %2 = load volatile i32, i32* inttoptr (i32 -536810092 to i32*), align 4, !tbaa !115
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call fastcc void @__breakpoint()
  br label %5

5:                                                ; preds = %4, %1
  %6 = ptrtoint i8* %0 to i32
  %7 = add i32 %6, 31
  %8 = lshr i32 %7, 5
  %9 = and i32 %8, 7
  store volatile i32 5, i32* inttoptr (i32 -536810092 to i32*), align 4, !tbaa !115
  %10 = and i32 %7, -256
  %11 = or i32 %10, 8
  store volatile i32 %11, i32* inttoptr (i32 -536810084 to i32*), align 4, !tbaa !117
  %12 = shl nuw nsw i32 256, %9
  %13 = xor i32 %12, 268500751
  store volatile i32 %13, i32* inttoptr (i32 -536810080 to i32*), align 32, !tbaa !118
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc void @__breakpoint() unnamed_addr #3 {
  tail call void asm sideeffect "bkpt #0", ""() #30, !srcloc !119
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @runtime_init() local_unnamed_addr #3 {
  tail call fastcc void @reset_block()
  tail call fastcc void @unreset_block_wait(i32 noundef 3964926)
  br i1 icmp ult (void ()** @__preinit_array_start, void ()** @__preinit_array_end), label %2, label %1

1:                                                ; preds = %2, %0
  tail call void @clocks_init() #30
  tail call fastcc void @unreset_block_wait(i32 noundef 33554431)
  store volatile i32 64, i32* inttoptr (i32 1073868920 to i32*), align 8, !tbaa !18
  store volatile i32 64, i32* inttoptr (i32 1073868916 to i32*), align 4, !tbaa !18
  store volatile i32 64, i32* inttoptr (i32 1073868912 to i32*), align 16, !tbaa !18
  store volatile i32 64, i32* inttoptr (i32 1073868908 to i32*), align 4, !tbaa !18
  br i1 icmp ult (%struct.lock_core* @__mutex_array_start, %struct.lock_core* @__mutex_array_end), label %10, label %7

2:                                                ; preds = %0, %2
  %3 = phi void ()** [ %5, %2 ], [ @__preinit_array_start, %0 ]
  %4 = load void ()*, void ()** %3, align 4, !tbaa !11
  tail call void %4() #30
  %5 = getelementptr inbounds void ()*, void ()** %3, i32 1
  %6 = icmp ult void ()** %5, @__preinit_array_end
  br i1 %6, label %2, label %1, !llvm.loop !120

7:                                                ; preds = %19, %1
  %8 = load volatile i32, i32* inttoptr (i32 -536810232 to i32*), align 8, !tbaa !121
  %9 = inttoptr i32 %8 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(192) bitcast ([48 x i32]* @ram_vector_table to i8*), i8* noundef nonnull align 4 dereferenceable(192) %9, i32 192, i1 false)
  store volatile i32 ptrtoint ([48 x i32]* @ram_vector_table to i32), i32* inttoptr (i32 -536810232 to i32*), align 8, !tbaa !121
  tail call void @spin_locks_reset() #30
  tail call void @irq_init_priorities() #30
  tail call void @alarm_pool_init_default() #30
  br i1 icmp ult (void ()** @__init_array_start, void ()** @__init_array_end), label %23, label %22

10:                                               ; preds = %1, %19
  %11 = phi %struct.lock_core* [ %20, %19 ], [ @__mutex_array_start, %1 ]
  %12 = getelementptr inbounds %struct.lock_core, %struct.lock_core* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 4, !tbaa !75
  %14 = icmp eq i32* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = bitcast %struct.lock_core* %11 to %struct.recursive_mutex_t*
  tail call void @recursive_mutex_init(%struct.recursive_mutex_t* noundef nonnull %16) #30
  br label %19

17:                                               ; preds = %10
  %18 = bitcast %struct.lock_core* %11 to %struct.mutex*
  tail call void @mutex_init(%struct.mutex* noundef nonnull %18) #30
  br label %19

19:                                               ; preds = %17, %15
  %20 = getelementptr inbounds %struct.lock_core, %struct.lock_core* %11, i32 2
  %21 = icmp ult %struct.lock_core* %20, @__mutex_array_end
  br i1 %21, label %10, label %7, !llvm.loop !122

22:                                               ; preds = %23, %7
  ret void

23:                                               ; preds = %7, %23
  %24 = phi void ()** [ %26, %23 ], [ @__init_array_start, %7 ]
  %25 = load void ()*, void ()** %24, align 4, !tbaa !11
  tail call void %25() #30
  %26 = getelementptr inbounds void ()*, void ()** %24, i32 1
  %27 = icmp ult void ()** %26, @__init_array_end
  br i1 %27, label %23, label %22, !llvm.loop !123
}

; Function Attrs: nofree noinline norecurse nounwind
define internal fastcc void @reset_block() unnamed_addr #2 {
  store volatile i32 -17052225, i32* inttoptr (i32 1073799168 to i32*), align 8192, !tbaa !18
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define internal fastcc void @unreset_block_wait(i32 noundef %0) unnamed_addr #2 {
  store volatile i32 %0, i32* inttoptr (i32 1073803264 to i32*), align 4096, !tbaa !18
  br label %2

2:                                                ; preds = %17, %1
  %3 = load volatile i32, i32* inttoptr (i32 1073790984 to i32*), align 8, !tbaa !124
  %4 = xor i32 %3, -1
  %5 = and i32 %4, %0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %22, label %7, !llvm.loop !126

7:                                                ; preds = %2
  %8 = load volatile i32, i32* inttoptr (i32 1073790984 to i32*), align 8, !tbaa !124
  %9 = xor i32 %8, -1
  %10 = and i32 %9, %0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %22, label %12, !llvm.loop !126

12:                                               ; preds = %7
  %13 = load volatile i32, i32* inttoptr (i32 1073790984 to i32*), align 8, !tbaa !124
  %14 = xor i32 %13, -1
  %15 = and i32 %14, %0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17, !llvm.loop !126

17:                                               ; preds = %12
  %18 = load volatile i32, i32* inttoptr (i32 1073790984 to i32*), align 8, !tbaa !124
  %19 = xor i32 %18, -1
  %20 = and i32 %19, %0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %2, !llvm.loop !126

22:                                               ; preds = %17, %12, %7, %2
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #19

; Function Attrs: noinline noreturn nounwind
define dso_local void @_exit(i32 %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %2
  tail call fastcc void @__breakpoint()
  br label %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn
define dso_local i8* @_sbrk(i32 noundef %0) local_unnamed_addr #11 {
  %2 = load i8*, i8** @_sbrk.heap_end, align 4, !tbaa !11
  %3 = icmp eq i8* %2, null
  %4 = select i1 %3, i8* @end, i8* %2
  %5 = getelementptr inbounds i8, i8* %4, i32 %0
  %6 = icmp ugt i8* %5, @__StackLimit
  %7 = xor i1 %6, true
  %8 = or i1 %3, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = select i1 %6, i8* %4, i8* %5, !prof !29
  store i8* %10, i8** @_sbrk.heap_end, align 4, !tbaa !11
  br label %11

11:                                               ; preds = %1, %9
  %12 = select i1 %6, i8* inttoptr (i32 -1 to i8*), i8* %4, !prof !29
  ret i8* %12
}

; Function Attrs: noinline noreturn nounwind
define dso_local void @exit(i32 noundef %0) local_unnamed_addr #0 {
  tail call void @_exit(i32 undef) #34
  unreachable
}

; Function Attrs: noinline noreturn nounwind
define dso_local void @__assert_func(i8* noundef %0, i32 noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i8* %2, null
  %6 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.53, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.54, i32 0, i32 0)
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.53, i32 0, i32 0), i8* %2
  %8 = tail call zeroext i1 (i8*, ...) @weak_raw_printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.55, i32 0, i32 0), i8* noundef %3, i8* noundef %0, i32 noundef %1, i8* noundef %6, i8* noundef %7) #30
  tail call void @_exit(i32 undef) #34
  unreachable
}

; Function Attrs: noinline noreturn nounwind
define dso_local void @panic_unsupported() local_unnamed_addr #0 {
  tail call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3.56, i32 0, i32 0)) #34
  unreachable
}

; Function Attrs: noinline noreturn nounwind
define dso_local void @panic(i8* noundef %0, ...) local_unnamed_addr #0 {
  %2 = alloca %struct.__va_list, align 4
  %3 = tail call i32 @puts(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.59, i32 0, i32 0))
  %4 = icmp eq i8* %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = bitcast %struct.__va_list* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #30
  call void @llvm.va_start(i8* nonnull %6)
  %7 = bitcast %struct.__va_list* %2 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = insertvalue [1 x i32] poison, i32 %8, 0
  %10 = call zeroext i1 @weak_raw_vprintf(i8* noundef nonnull %0, [1 x i32] %9) #30
  call void @llvm.va_end(i8* nonnull %6)
  %11 = call i32 @puts(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.60, i32 0, i32 0))
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #30
  br label %12

12:                                               ; preds = %5, %1
  call void @_exit(i32 undef) #34
  unreachable
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #20

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #20

; Function Attrs: noinline noreturn nounwind
define dso_local void @hard_assertion_failure() local_unnamed_addr #0 {
  tail call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6.61, i32 0, i32 0)) #34
  unreachable
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @clock_stop(i32 noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds [10 x %struct.clock_hw_t], [10 x %struct.clock_hw_t]* inttoptr (i32 1073774592 to [10 x %struct.clock_hw_t]*), i32 0, i32 %0, i32 0
  %3 = ptrtoint i32* %2 to i32
  %4 = or i32 %3, 12288
  %5 = inttoptr i32 %4 to i32*
  store volatile i32 2048, i32* %5, align 4, !tbaa !18
  %6 = getelementptr inbounds [10 x i32], [10 x i32]* @configured_freq, i32 0, i32 %0
  store i32 0, i32* %6, align 4, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @clock_configure(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
  %6 = icmp ugt i32 %4, %3
  br i1 %6, label %89, label %7

7:                                                ; preds = %5
  %8 = zext i32 %3 to i64
  %9 = shl nuw nsw i64 %8, 8
  %10 = zext i32 %4 to i64
  %11 = udiv i64 %9, %10
  %12 = trunc i64 %11 to i32
  %13 = getelementptr inbounds [10 x %struct.clock_hw_t], [10 x %struct.clock_hw_t]* inttoptr (i32 1073774592 to [10 x %struct.clock_hw_t]*), i32 0, i32 %0
  %14 = getelementptr inbounds [10 x %struct.clock_hw_t], [10 x %struct.clock_hw_t]* inttoptr (i32 1073774592 to [10 x %struct.clock_hw_t]*), i32 0, i32 %0, i32 1
  %15 = load volatile i32, i32* %14, align 4, !tbaa !127
  %16 = icmp ult i32 %15, %12
  br i1 %16, label %17, label %18

17:                                               ; preds = %7
  store volatile i32 %12, i32* %14, align 4, !tbaa !127
  br label %18

18:                                               ; preds = %17, %7
  %19 = tail call fastcc zeroext i1 @has_glitchless_mux(i32 noundef %0)
  %20 = icmp eq i32 %1, 1
  %21 = and i1 %20, %19
  %22 = ptrtoint %struct.clock_hw_t* %13 to i32
  %23 = or i32 %22, 12288
  %24 = inttoptr i32 %23 to i32*
  br i1 %21, label %25, label %43

25:                                               ; preds = %18
  store volatile i32 3, i32* %24, align 4, !tbaa !18
  %26 = getelementptr inbounds [10 x %struct.clock_hw_t], [10 x %struct.clock_hw_t]* inttoptr (i32 1073774592 to [10 x %struct.clock_hw_t]*), i32 0, i32 %0, i32 2
  br label %27

27:                                               ; preds = %39, %25
  %28 = load volatile i32, i32* %26, align 4, !tbaa !124
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %52, !llvm.loop !128

31:                                               ; preds = %27
  %32 = load volatile i32, i32* %26, align 4, !tbaa !124
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %52, !llvm.loop !128

35:                                               ; preds = %31
  %36 = load volatile i32, i32* %26, align 4, !tbaa !124
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %52, !llvm.loop !128

39:                                               ; preds = %35
  %40 = load volatile i32, i32* %26, align 4, !tbaa !124
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %27, label %52, !llvm.loop !128

43:                                               ; preds = %18
  store volatile i32 2048, i32* %24, align 4, !tbaa !18
  %44 = getelementptr inbounds [10 x i32], [10 x i32]* @configured_freq, i32 0, i32 %0
  %45 = load i32, i32* %44, align 4, !tbaa !18
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @configured_freq, i32 0, i32 5), align 4, !tbaa !18
  %49 = udiv i32 %48, %45
  %50 = add i32 %49, 1
  %51 = tail call i32 asm sideeffect ".syntax unified \0A\091: \0A\09subs $0, #1 \0A\09bne 1b", "=r,0"(i32 %50) #30, !srcloc !129
  br label %52

52:                                               ; preds = %27, %31, %35, %39, %43, %47
  %53 = getelementptr inbounds %struct.clock_hw_t, %struct.clock_hw_t* %13, i32 0, i32 0
  %54 = shl i32 %2, 5
  %55 = load volatile i32, i32* %53, align 4, !tbaa !18
  %56 = xor i32 %55, %54
  %57 = and i32 %56, 224
  %58 = or i32 %22, 4096
  %59 = inttoptr i32 %58 to i32*
  store volatile i32 %57, i32* %59, align 4, !tbaa !18
  br i1 %19, label %60, label %82

60:                                               ; preds = %52
  %61 = load volatile i32, i32* %53, align 4, !tbaa !18
  %62 = xor i32 %61, %1
  %63 = and i32 %62, 3
  store volatile i32 %63, i32* %59, align 4, !tbaa !18
  %64 = getelementptr inbounds [10 x %struct.clock_hw_t], [10 x %struct.clock_hw_t]* inttoptr (i32 1073774592 to [10 x %struct.clock_hw_t]*), i32 0, i32 %0, i32 2
  %65 = shl nuw i32 1, %1
  br label %66

66:                                               ; preds = %78, %60
  %67 = load volatile i32, i32* %64, align 4, !tbaa !124
  %68 = and i32 %67, %65
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %82, !llvm.loop !130

70:                                               ; preds = %66
  %71 = load volatile i32, i32* %64, align 4, !tbaa !124
  %72 = and i32 %71, %65
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %82, !llvm.loop !130

74:                                               ; preds = %70
  %75 = load volatile i32, i32* %64, align 4, !tbaa !124
  %76 = and i32 %75, %65
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82, !llvm.loop !130

78:                                               ; preds = %74
  %79 = load volatile i32, i32* %64, align 4, !tbaa !124
  %80 = and i32 %79, %65
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %66, label %82, !llvm.loop !130

82:                                               ; preds = %66, %70, %74, %78, %52
  %83 = or i32 %22, 8192
  %84 = inttoptr i32 %83 to i32*
  store volatile i32 2048, i32* %84, align 4, !tbaa !18
  store volatile i32 %12, i32* %14, align 4, !tbaa !127
  %85 = and i64 %11, 4294967295
  %86 = udiv i64 %9, %85
  %87 = trunc i64 %86 to i32
  %88 = getelementptr inbounds [10 x i32], [10 x i32]* @configured_freq, i32 0, i32 %0
  store i32 %87, i32* %88, align 4, !tbaa !18
  br label %89

89:                                               ; preds = %5, %82
  %90 = xor i1 %6, true
  ret i1 %90
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn
define internal fastcc zeroext i1 @has_glitchless_mux(i32 noundef %0) unnamed_addr #12 {
  %2 = and i32 %0, -2
  %3 = icmp eq i32 %2, 4
  ret i1 %3
}

; Function Attrs: noinline nounwind
define dso_local void @clocks_init() local_unnamed_addr #3 {
  tail call void @watchdog_start_tick(i32 noundef 12) #30
  %1 = tail call zeroext i1 @running_on_fpga() #30
  br i1 %1, label %2, label %3

2:                                                ; preds = %0
  store i32 48000000, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @configured_freq, i32 0, i32 0), align 4, !tbaa !18
  store i32 48000000, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @configured_freq, i32 0, i32 1), align 4, !tbaa !18
  store i32 48000000, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @configured_freq, i32 0, i32 2), align 4, !tbaa !18
  store i32 48000000, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @configured_freq, i32 0, i32 3), align 4, !tbaa !18
  store i32 48000000, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @configured_freq, i32 0, i32 4), align 4, !tbaa !18
  store i32 48000000, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @configured_freq, i32 0, i32 5), align 4, !tbaa !18
  store i32 48000000, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @configured_freq, i32 0, i32 6), align 4, !tbaa !18
  store i32 48000000, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @configured_freq, i32 0, i32 7), align 4, !tbaa !18
  store i32 48000000, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @configured_freq, i32 0, i32 8), align 4, !tbaa !18
  store i32 46875, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @configured_freq, i32 0, i32 9), align 4, !tbaa !18
  br label %36

3:                                                ; preds = %0
  store volatile i32 0, i32* inttoptr (i32 1073774712 to i32*), align 8, !tbaa !131
  tail call void @xosc_init() #30
  store volatile i32 1, i32* inttoptr (i32 1073786940 to i32*), align 4, !tbaa !18
  br label %4

4:                                                ; preds = %13, %3
  %5 = load volatile i32, i32* inttoptr (i32 1073774660 to i32*), align 4, !tbaa !124
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %16, label %7, !llvm.loop !134

7:                                                ; preds = %4
  %8 = load volatile i32, i32* inttoptr (i32 1073774660 to i32*), align 4, !tbaa !124
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %16, label %10, !llvm.loop !134

10:                                               ; preds = %7
  %11 = load volatile i32, i32* inttoptr (i32 1073774660 to i32*), align 4, !tbaa !124
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %16, label %13, !llvm.loop !134

13:                                               ; preds = %10
  %14 = load volatile i32, i32* inttoptr (i32 1073774660 to i32*), align 4, !tbaa !124
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %4, !llvm.loop !134

16:                                               ; preds = %13, %10, %7, %4
  store volatile i32 3, i32* inttoptr (i32 1073786928 to i32*), align 16, !tbaa !18
  br label %17

17:                                               ; preds = %26, %16
  %18 = load volatile i32, i32* inttoptr (i32 1073774648 to i32*), align 8, !tbaa !124
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %29, label %20, !llvm.loop !135

20:                                               ; preds = %17
  %21 = load volatile i32, i32* inttoptr (i32 1073774648 to i32*), align 8, !tbaa !124
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %29, label %23, !llvm.loop !135

23:                                               ; preds = %20
  %24 = load volatile i32, i32* inttoptr (i32 1073774648 to i32*), align 8, !tbaa !124
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %29, label %26, !llvm.loop !135

26:                                               ; preds = %23
  %27 = load volatile i32, i32* inttoptr (i32 1073774648 to i32*), align 8, !tbaa !124
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %17, !llvm.loop !135

29:                                               ; preds = %26, %23, %20, %17
  tail call void @pll_init(%struct.pll_hw_t* noundef nonnull inttoptr (i32 1073905664 to %struct.pll_hw_t*), i32 noundef 1, i32 noundef 1500000000, i32 noundef 6, i32 noundef 2) #30
  tail call void @pll_init(%struct.pll_hw_t* noundef nonnull inttoptr (i32 1073922048 to %struct.pll_hw_t*), i32 noundef 1, i32 noundef 480000000, i32 noundef 5, i32 noundef 2) #30
  %30 = tail call zeroext i1 @clock_configure(i32 noundef 4, i32 noundef 2, i32 noundef 0, i32 noundef 12000000, i32 noundef 12000000)
  %31 = tail call zeroext i1 @clock_configure(i32 noundef 5, i32 noundef 1, i32 noundef 0, i32 noundef 125000000, i32 noundef 125000000)
  %32 = tail call zeroext i1 @clock_configure(i32 noundef 7, i32 noundef 0, i32 noundef 0, i32 noundef 48000000, i32 noundef 48000000)
  %33 = tail call zeroext i1 @clock_configure(i32 noundef 8, i32 noundef 0, i32 noundef 0, i32 noundef 48000000, i32 noundef 48000000)
  %34 = tail call zeroext i1 @clock_configure(i32 noundef 9, i32 noundef 0, i32 noundef 0, i32 noundef 48000000, i32 noundef 46875)
  %35 = tail call zeroext i1 @clock_configure(i32 noundef 6, i32 noundef 0, i32 noundef 0, i32 noundef 125000000, i32 noundef 125000000)
  br label %36

36:                                               ; preds = %29, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define dso_local i32 @clock_get_hz(i32 noundef %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds [10 x i32], [10 x i32]* @configured_freq, i32 0, i32 %0
  %3 = load i32, i32* %2, align 4, !tbaa !18
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly
define dso_local void @clock_set_reported_hz(i32 noundef %0, i32 noundef %1) local_unnamed_addr #15 {
  %3 = getelementptr inbounds [10 x i32], [10 x i32]* @configured_freq, i32 0, i32 %0
  store i32 %1, i32* %3, align 4, !tbaa !18
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @frequency_count_khz(i32 noundef %0) local_unnamed_addr #2 {
  br label %2

2:                                                ; preds = %14, %1
  %3 = load volatile i32, i32* inttoptr (i32 1073774744 to i32*), align 8, !tbaa !136
  %4 = and i32 %3, 256
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %18, label %6, !llvm.loop !137

6:                                                ; preds = %2
  %7 = load volatile i32, i32* inttoptr (i32 1073774744 to i32*), align 8, !tbaa !136
  %8 = and i32 %7, 256
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10, !llvm.loop !137

10:                                               ; preds = %6
  %11 = load volatile i32, i32* inttoptr (i32 1073774744 to i32*), align 8, !tbaa !136
  %12 = and i32 %11, 256
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14, !llvm.loop !137

14:                                               ; preds = %10
  %15 = load volatile i32, i32* inttoptr (i32 1073774744 to i32*), align 8, !tbaa !136
  %16 = and i32 %15, 256
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %2, !llvm.loop !137

18:                                               ; preds = %14, %10, %6, %2
  %19 = tail call i32 @clock_get_hz(i32 noundef 4)
  %20 = udiv i32 %19, 1000
  store volatile i32 %20, i32* inttoptr (i32 1073774720 to i32*), align 128, !tbaa !138
  store volatile i32 10, i32* inttoptr (i32 1073774736 to i32*), align 16, !tbaa !139
  store volatile i32 0, i32* inttoptr (i32 1073774724 to i32*), align 4, !tbaa !140
  store volatile i32 -1, i32* inttoptr (i32 1073774728 to i32*), align 8, !tbaa !141
  store volatile i32 %0, i32* inttoptr (i32 1073774740 to i32*), align 4, !tbaa !142
  br label %21

21:                                               ; preds = %33, %18
  %22 = load volatile i32, i32* inttoptr (i32 1073774744 to i32*), align 8, !tbaa !136
  %23 = and i32 %22, 16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %37, !llvm.loop !143

25:                                               ; preds = %21
  %26 = load volatile i32, i32* inttoptr (i32 1073774744 to i32*), align 8, !tbaa !136
  %27 = and i32 %26, 16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37, !llvm.loop !143

29:                                               ; preds = %25
  %30 = load volatile i32, i32* inttoptr (i32 1073774744 to i32*), align 8, !tbaa !136
  %31 = and i32 %30, 16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37, !llvm.loop !143

33:                                               ; preds = %29
  %34 = load volatile i32, i32* inttoptr (i32 1073774744 to i32*), align 8, !tbaa !136
  %35 = and i32 %34, 16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %21, label %37, !llvm.loop !143

37:                                               ; preds = %33, %29, %25, %21
  %38 = load volatile i32, i32* inttoptr (i32 1073774748 to i32*), align 4, !tbaa !144
  %39 = lshr i32 %38, 5
  ret i32 %39
}

; Function Attrs: noinline nounwind
define dso_local void @clocks_enable_resus(void ()* noundef %0) local_unnamed_addr #3 {
  store void ()* %0, void ()** @_resus_callback, align 4, !tbaa !11
  tail call void @irq_set_exclusive_handler(i32 noundef 17, void ()* noundef nonnull @clocks_irq_handler) #30
  store volatile i32 1, i32* inttoptr (i32 1073774780 to i32*), align 4, !tbaa !145
  tail call void @irq_set_enabled(i32 noundef 17, i1 noundef zeroext true) #30
  store volatile i32 262, i32* inttoptr (i32 1073774712 to i32*), align 8, !tbaa !131
  ret void
}

; Function Attrs: noinline nounwind
define internal void @clocks_irq_handler() #3 {
  %1 = load volatile i32, i32* inttoptr (i32 1073774788 to i32*), align 4, !tbaa !146
  %2 = and i32 %1, 1
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  tail call fastcc void @clocks_handle_resus()
  br label %5

5:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc void @clocks_handle_resus() unnamed_addr #3 {
  %1 = tail call i32 @clock_get_hz(i32 noundef 4)
  %2 = tail call zeroext i1 @clock_configure(i32 noundef 5, i32 noundef 0, i32 noundef 0, i32 noundef %1, i32 noundef %1)
  store volatile i32 65536, i32* inttoptr (i32 1073782904 to i32*), align 8, !tbaa !18
  store volatile i32 65536, i32* inttoptr (i32 1073787000 to i32*), align 8, !tbaa !18
  %3 = load void ()*, void ()** @_resus_callback, align 4, !tbaa !11
  %4 = icmp eq void ()* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  tail call void %3() #30
  br label %6

6:                                                ; preds = %5, %0
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @clock_gpio_init(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = add i32 %0, -23
  %5 = icmp ult i32 %4, 3
  %6 = add i32 %0, -22
  %7 = select i1 %5, i32 %6, i32 0
  %8 = shl i32 %1, 5
  %9 = or i32 %8, 2048
  %10 = getelementptr inbounds [10 x %struct.clock_hw_t], [10 x %struct.clock_hw_t]* inttoptr (i32 1073774592 to [10 x %struct.clock_hw_t]*), i32 0, i32 %7, i32 0
  store volatile i32 %9, i32* %10, align 4, !tbaa !147
  %11 = shl i32 %2, 8
  %12 = getelementptr inbounds [10 x %struct.clock_hw_t], [10 x %struct.clock_hw_t]* inttoptr (i32 1073774592 to [10 x %struct.clock_hw_t]*), i32 0, i32 %7, i32 1
  store volatile i32 %11, i32* %12, align 4, !tbaa !127
  tail call void @gpio_set_function(i32 noundef %0, i32 noundef 8) #30
  ret void
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @clock_configure_gpin(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = icmp eq i32 %1, 22
  %6 = zext i1 %5 to i32
  %7 = getelementptr inbounds [10 x i8], [10 x i8]* @gpin0_src, i32 0, i32 %0
  %8 = load i8, i8* %7, align 1, !tbaa !8
  %9 = tail call fastcc zeroext i1 @has_glitchless_mux(i32 noundef %0)
  %10 = zext i1 %9 to i32
  %11 = zext i8 %8 to i32
  %12 = add nuw nsw i32 %11, %6
  tail call void @gpio_set_function(i32 noundef %1, i32 noundef 8) #30
  %13 = tail call zeroext i1 @clock_configure(i32 noundef %0, i32 noundef %10, i32 noundef %12, i32 noundef %2, i32 noundef %3)
  ret i1 %13
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @irq_set_enabled(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = shl nuw i32 1, %0
  tail call void @irq_set_mask_enabled(i32 noundef %3, i1 noundef zeroext %1)
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @irq_set_mask_enabled(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #2 {
  br i1 %1, label %3, label %4

3:                                                ; preds = %2
  store volatile i32 %0, i32* inttoptr (i32 -536812928 to i32*), align 128, !tbaa !18
  store volatile i32 %0, i32* inttoptr (i32 -536813312 to i32*), align 256, !tbaa !18
  br label %5

4:                                                ; preds = %2
  store volatile i32 %0, i32* inttoptr (i32 -536813184 to i32*), align 128, !tbaa !18
  br label %5

5:                                                ; preds = %4, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local zeroext i1 @irq_is_enabled(i32 noundef %0) local_unnamed_addr #9 {
  %2 = shl nuw i32 1, %0
  %3 = load volatile i32, i32* inttoptr (i32 -536813312 to i32*), align 256, !tbaa !18
  %4 = and i32 %3, %2
  %5 = icmp ne i32 %4, 0
  ret i1 %5
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @irq_set_pending(i32 noundef %0) local_unnamed_addr #2 {
  %2 = shl nuw i32 1, %0
  store volatile i32 %2, i32* inttoptr (i32 -536813056 to i32*), align 512, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local void ()* @irq_get_vtable_handler(i32 noundef %0) local_unnamed_addr #9 {
  %2 = tail call fastcc void ()** @get_vtable()
  %3 = add i32 %0, 16
  %4 = getelementptr inbounds void ()*, void ()** %2, i32 %3
  %5 = load void ()*, void ()** %4, align 4, !tbaa !11
  ret void ()* %5
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define internal fastcc void ()** @get_vtable() unnamed_addr #9 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810232 to i32*), align 8, !tbaa !121
  %2 = inttoptr i32 %1 to void ()**
  ret void ()** %2
}

; Function Attrs: noinline nounwind
define dso_local void @irq_set_exclusive_handler(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #3 {
  %3 = tail call i32 asm sideeffect "mrs $0, PRIMASK", "=r"() #30, !srcloc !148
  tail call void asm sideeffect "cpsid i", ""() #30, !srcloc !149
  br label %4

4:                                                ; preds = %13, %2
  %5 = load volatile i32, i32* inttoptr (i32 -805306076 to i32*), align 4, !tbaa !18
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %16, !prof !29, !llvm.loop !150

7:                                                ; preds = %4
  %8 = load volatile i32, i32* inttoptr (i32 -805306076 to i32*), align 4, !tbaa !18
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16, !prof !29, !llvm.loop !150

10:                                               ; preds = %7
  %11 = load volatile i32, i32* inttoptr (i32 -805306076 to i32*), align 4, !tbaa !18
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16, !prof !29, !llvm.loop !150

13:                                               ; preds = %10
  %14 = load volatile i32, i32* inttoptr (i32 -805306076 to i32*), align 4, !tbaa !18
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %4, label %16, !prof !29, !llvm.loop !150

16:                                               ; preds = %13, %10, %7, %4
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !151
  %17 = tail call void ()* @irq_get_vtable_handler(i32 noundef %0)
  %18 = icmp eq void ()* %17, @__unhandled_user_irq
  %19 = icmp eq void ()* %17, %1
  %20 = or i1 %18, %19
  tail call fastcc void @hard_assert(i1 noundef zeroext %20)
  tail call fastcc void @set_raw_irq_handler_and_unlock(i32 noundef %0, void ()* noundef %1, i32 noundef %3)
  ret void
}

declare dso_local void @__unhandled_user_irq() #21

; Function Attrs: noinline nounwind
define internal fastcc void @hard_assert(i1 noundef zeroext %0) unnamed_addr #3 {
  br i1 %0, label %3, label %2

2:                                                ; preds = %1
  tail call void @hard_assertion_failure() #30
  br label %3

3:                                                ; preds = %2, %1
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc void @set_raw_irq_handler_and_unlock(i32 noundef %0, void ()* noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = tail call fastcc void ()** @get_vtable()
  %5 = add i32 %0, 16
  %6 = getelementptr inbounds void ()*, void ()** %4, i32 %5
  store void ()* %1, void ()** %6, align 4, !tbaa !11
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !151
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !151
  store volatile i32 0, i32* inttoptr (i32 -805306076 to i32*), align 4, !tbaa !18
  tail call void asm sideeffect "msr PRIMASK,$0", "r"(i32 %2) #30, !srcloc !152
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void ()* @irq_get_exclusive_handler(i32 noundef %0) local_unnamed_addr #3 {
  %2 = tail call i32 asm sideeffect "mrs $0, PRIMASK", "=r"() #30, !srcloc !148
  tail call void asm sideeffect "cpsid i", ""() #30, !srcloc !149
  br label %3

3:                                                ; preds = %12, %1
  %4 = load volatile i32, i32* inttoptr (i32 -805306076 to i32*), align 4, !tbaa !18
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15, !prof !29, !llvm.loop !150

6:                                                ; preds = %3
  %7 = load volatile i32, i32* inttoptr (i32 -805306076 to i32*), align 4, !tbaa !18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15, !prof !29, !llvm.loop !150

9:                                                ; preds = %6
  %10 = load volatile i32, i32* inttoptr (i32 -805306076 to i32*), align 4, !tbaa !18
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15, !prof !29, !llvm.loop !150

12:                                               ; preds = %9
  %13 = load volatile i32, i32* inttoptr (i32 -805306076 to i32*), align 4, !tbaa !18
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %3, label %15, !prof !29, !llvm.loop !150

15:                                               ; preds = %12, %9, %6, %3
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !151
  %16 = tail call void ()* @irq_get_vtable_handler(i32 noundef %0)
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !151
  store volatile i32 0, i32* inttoptr (i32 -805306076 to i32*), align 4, !tbaa !18
  tail call void asm sideeffect "msr PRIMASK,$0", "r"(i32 %2) #30, !srcloc !152
  %17 = icmp eq void ()* %16, @__unhandled_user_irq
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = tail call fastcc zeroext i1 @is_shared_irq_raw_handler(void ()* noundef %16)
  %20 = select i1 %19, void ()* null, void ()* %16
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi void ()* [ null, %15 ], [ %20, %18 ]
  ret void ()* %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn
define internal fastcc zeroext i1 @is_shared_irq_raw_handler(void ()* noundef %0) unnamed_addr #12 {
  %2 = ptrtoint void ()* %0 to i32
  %3 = sub i32 %2, ptrtoint ([4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots to i32)
  %4 = icmp ult i32 %3, 48
  ret i1 %4
}

; Function Attrs: noinline nounwind
define dso_local void @irq_add_shared_handler(i32 noundef %0, void ()* noundef %1, i8 noundef zeroext %2) local_unnamed_addr #3 {
  %4 = tail call i32 asm sideeffect "mrs $0, PRIMASK", "=r"() #30, !srcloc !148
  tail call void asm sideeffect "cpsid i", ""() #30, !srcloc !149
  br label %5

5:                                                ; preds = %14, %3
  %6 = load volatile i32, i32* inttoptr (i32 -805306076 to i32*), align 4, !tbaa !18
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17, !prof !29, !llvm.loop !150

8:                                                ; preds = %5
  %9 = load volatile i32, i32* inttoptr (i32 -805306076 to i32*), align 4, !tbaa !18
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17, !prof !29, !llvm.loop !150

11:                                               ; preds = %8
  %12 = load volatile i32, i32* inttoptr (i32 -805306076 to i32*), align 4, !tbaa !18
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17, !prof !29, !llvm.loop !150

14:                                               ; preds = %11
  %15 = load volatile i32, i32* inttoptr (i32 -805306076 to i32*), align 4, !tbaa !18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %5, label %17, !prof !29, !llvm.loop !150

17:                                               ; preds = %14, %11, %8, %5
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !151
  %18 = load i8, i8* @irq_hander_chain_free_slot_head, align 1, !tbaa !8
  %19 = icmp sgt i8 %18, -1
  tail call fastcc void @hard_assert(i1 noundef zeroext %19)
  %20 = load i8, i8* @irq_hander_chain_free_slot_head, align 1, !tbaa !8
  %21 = sext i8 %20 to i32
  %22 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %21
  %23 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %21, i32 3
  %24 = bitcast %union.anon* %23 to i8*
  %25 = load i8, i8* %24, align 2, !tbaa !8
  store i8 %25, i8* @irq_hander_chain_free_slot_head, align 1, !tbaa !8
  %26 = tail call fastcc void ()** @get_vtable()
  %27 = add i32 %0, 16
  %28 = getelementptr inbounds void ()*, void ()** %26, i32 %27
  %29 = load void ()*, void ()** %28, align 4, !tbaa !11
  %30 = tail call fastcc zeroext i1 @is_shared_irq_raw_handler(void ()* noundef %29)
  br i1 %30, label %42, label %31

31:                                               ; preds = %17
  %32 = icmp eq void ()* %29, @__unhandled_user_irq
  tail call fastcc void @hard_assert(i1 noundef zeroext %32)
  %33 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %21, i32 1
  %34 = tail call fastcc zeroext i16 @make_branch(i16* noundef nonnull %33, i8* noundef bitcast (void ()* @irq_handler_chain_first_slot to i8*))
  %35 = getelementptr inbounds %struct.irq_handler_chain_slot, %struct.irq_handler_chain_slot* %22, i32 0, i32 0
  store i16 -24320, i16* %35, align 4, !tbaa.struct !153
  store i16 %34, i16* %33, align 2, !tbaa.struct !156
  %36 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %21, i32 2
  store i16 -17152, i16* %36, align 4, !tbaa.struct !157
  store i8 -1, i8* %24, align 2, !tbaa.struct !158
  %37 = bitcast %struct.irq_handler_chain_slot* %22 to i8*
  %38 = getelementptr inbounds i8, i8* %37, i32 7
  store i8 %2, i8* %38, align 1, !tbaa.struct !159
  %39 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %21, i32 4
  store void ()* %1, void ()** %39, align 4, !tbaa.struct !160
  %40 = tail call fastcc i8* @add_thumb_bit(i8* noundef nonnull %37)
  %41 = bitcast i8* %40 to void ()*
  br label %152

42:                                               ; preds = %17
  %43 = bitcast void ()* %29 to i8*
  %44 = tail call fastcc i8* @remove_thumb_bit(i8* noundef %43)
  %45 = bitcast i8* %44 to %struct.irq_handler_chain_slot*
  %46 = getelementptr inbounds i8, i8* %44, i32 7
  %47 = load i8, i8* %46, align 1, !tbaa !8
  %48 = icmp ugt i8 %47, %2
  br i1 %48, label %49, label %137

49:                                               ; preds = %42
  %50 = getelementptr inbounds i8, i8* %44, i32 6
  %51 = load i8, i8* %50, align 2, !tbaa !8
  %52 = icmp slt i8 %51, 0
  br i1 %52, label %116, label %91

53:                                               ; preds = %91
  %54 = bitcast %union.anon* %95 to i8*
  %55 = load i8, i8* %54, align 2, !tbaa !8
  %56 = icmp slt i8 %55, 0
  br i1 %56, label %114, label %57, !llvm.loop !161

57:                                               ; preds = %53
  %58 = zext i8 %55 to i32
  %59 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %58, i32 3
  %60 = bitcast %union.anon* %59 to %struct.anon*
  %61 = getelementptr inbounds %struct.anon, %struct.anon* %60, i32 0, i32 1
  %62 = load i8, i8* %61, align 1, !tbaa !8
  %63 = icmp ugt i8 %62, %2
  br i1 %63, label %64, label %112, !llvm.loop !161

64:                                               ; preds = %57
  %65 = bitcast %union.anon* %59 to i8*
  %66 = load i8, i8* %65, align 2, !tbaa !8
  %67 = icmp slt i8 %66, 0
  br i1 %67, label %109, label %68, !llvm.loop !161

68:                                               ; preds = %64
  %69 = zext i8 %66 to i32
  %70 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %69, i32 3
  %71 = bitcast %union.anon* %70 to %struct.anon*
  %72 = getelementptr inbounds %struct.anon, %struct.anon* %71, i32 0, i32 1
  %73 = load i8, i8* %72, align 1, !tbaa !8
  %74 = icmp ugt i8 %73, %2
  br i1 %74, label %75, label %106, !llvm.loop !161

75:                                               ; preds = %68
  %76 = bitcast %union.anon* %70 to i8*
  %77 = load i8, i8* %76, align 2, !tbaa !8
  %78 = icmp slt i8 %77, 0
  br i1 %78, label %103, label %79, !llvm.loop !161

79:                                               ; preds = %75
  %80 = zext i8 %77 to i32
  %81 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %80
  %82 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %80, i32 3
  %83 = bitcast %union.anon* %82 to %struct.anon*
  %84 = getelementptr inbounds %struct.anon, %struct.anon* %83, i32 0, i32 1
  %85 = load i8, i8* %84, align 1, !tbaa !8
  %86 = icmp ugt i8 %85, %2
  br i1 %86, label %87, label %100, !llvm.loop !161

87:                                               ; preds = %79
  %88 = bitcast %union.anon* %82 to i8*
  %89 = load i8, i8* %88, align 2, !tbaa !8
  %90 = icmp slt i8 %89, 0
  br i1 %90, label %116, label %91, !llvm.loop !161

91:                                               ; preds = %49, %87
  %92 = phi i8 [ %89, %87 ], [ %51, %49 ]
  %93 = phi %struct.irq_handler_chain_slot* [ %81, %87 ], [ %45, %49 ]
  %94 = zext i8 %92 to i32
  %95 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %94, i32 3
  %96 = bitcast %union.anon* %95 to %struct.anon*
  %97 = getelementptr inbounds %struct.anon, %struct.anon* %96, i32 0, i32 1
  %98 = load i8, i8* %97, align 1, !tbaa !8
  %99 = icmp ugt i8 %98, %2
  br i1 %99, label %53, label %116, !llvm.loop !161

100:                                              ; preds = %79
  %101 = zext i8 %66 to i32
  %102 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %101
  br label %116

103:                                              ; preds = %75
  %104 = zext i8 %66 to i32
  %105 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %104
  br label %116

106:                                              ; preds = %68
  %107 = zext i8 %55 to i32
  %108 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %107
  br label %116

109:                                              ; preds = %64
  %110 = zext i8 %55 to i32
  %111 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %110
  br label %116

112:                                              ; preds = %57
  %113 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %94
  br label %116

114:                                              ; preds = %53
  %115 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %94
  br label %116

116:                                              ; preds = %100, %103, %106, %109, %112, %114, %87, %91, %49
  %117 = phi %struct.irq_handler_chain_slot* [ %45, %49 ], [ %102, %100 ], [ %105, %103 ], [ %108, %106 ], [ %111, %109 ], [ %113, %112 ], [ %115, %114 ], [ %81, %87 ], [ %93, %91 ]
  %118 = getelementptr inbounds %struct.irq_handler_chain_slot, %struct.irq_handler_chain_slot* %117, i32 0, i32 3
  %119 = bitcast %union.anon* %118 to i8*
  %120 = load i8, i8* %119, align 2, !tbaa !8
  %121 = icmp sgt i8 %120, -1
  br i1 %121, label %122, label %127

122:                                              ; preds = %116
  %123 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %21, i32 2
  %124 = getelementptr inbounds %struct.irq_handler_chain_slot, %struct.irq_handler_chain_slot* %117, i32 0, i32 2
  %125 = tail call fastcc i8* @resolve_branch(i16* noundef nonnull %124)
  %126 = tail call fastcc zeroext i16 @make_branch(i16* noundef nonnull %123, i8* noundef nonnull %125)
  br label %127

127:                                              ; preds = %116, %122
  %128 = phi i16 [ %126, %122 ], [ -17152, %116 ]
  %129 = getelementptr inbounds %struct.irq_handler_chain_slot, %struct.irq_handler_chain_slot* %117, i32 0, i32 2
  %130 = bitcast %struct.irq_handler_chain_slot* %22 to i8*
  %131 = tail call fastcc zeroext i16 @make_branch(i16* noundef nonnull %129, i8* noundef nonnull %130)
  store i16 %131, i16* %129, align 4, !tbaa !162
  store i8 %20, i8* %119, align 2, !tbaa !8
  %132 = getelementptr inbounds %struct.irq_handler_chain_slot, %struct.irq_handler_chain_slot* %22, i32 0, i32 0
  store i16 18433, i16* %132, align 4, !tbaa.struct !153
  %133 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %21, i32 1
  store i16 18304, i16* %133, align 2, !tbaa.struct !156
  %134 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %21, i32 2
  store i16 %128, i16* %134, align 4, !tbaa.struct !157
  store i8 %120, i8* %24, align 2, !tbaa.struct !158
  %135 = getelementptr inbounds i8, i8* %130, i32 7
  store i8 %2, i8* %135, align 1, !tbaa.struct !159
  %136 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %21, i32 4
  store void ()* %1, void ()** %136, align 4, !tbaa.struct !160
  br label %152

137:                                              ; preds = %42
  %138 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %21, i32 1
  %139 = tail call fastcc zeroext i16 @make_branch(i16* noundef nonnull %138, i8* noundef bitcast (void ()* @irq_handler_chain_first_slot to i8*))
  %140 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %21, i32 2
  %141 = tail call fastcc zeroext i16 @make_branch(i16* noundef nonnull %140, i8* noundef nonnull %44)
  %142 = tail call fastcc signext i8 @get_slot_index(%struct.irq_handler_chain_slot* noundef nonnull %45)
  %143 = getelementptr inbounds %struct.irq_handler_chain_slot, %struct.irq_handler_chain_slot* %22, i32 0, i32 0
  store i16 -24320, i16* %143, align 4, !tbaa.struct !153
  store i16 %139, i16* %138, align 2, !tbaa.struct !156
  store i16 %141, i16* %140, align 4, !tbaa.struct !157
  store i8 %142, i8* %24, align 2, !tbaa.struct !158
  %144 = bitcast %struct.irq_handler_chain_slot* %22 to i8*
  %145 = getelementptr inbounds i8, i8* %144, i32 7
  store i8 %2, i8* %145, align 1, !tbaa.struct !159
  %146 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %21, i32 4
  store void ()* %1, void ()** %146, align 4, !tbaa.struct !160
  %147 = bitcast i8* %44 to i16*
  store i16 18433, i16* %147, align 4, !tbaa !164
  %148 = getelementptr inbounds i8, i8* %44, i32 2
  %149 = bitcast i8* %148 to i16*
  store i16 18304, i16* %149, align 2, !tbaa !165
  %150 = tail call fastcc i8* @add_thumb_bit(i8* noundef nonnull %144)
  %151 = bitcast i8* %150 to void ()*
  br label %152

152:                                              ; preds = %127, %137, %31
  %153 = phi void ()* [ %41, %31 ], [ %29, %127 ], [ %151, %137 ]
  tail call fastcc void @set_raw_irq_handler_and_unlock(i32 noundef %0, void ()* noundef %153, i32 noundef %4)
  ret void
}

declare dso_local void @irq_handler_chain_first_slot() #21

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn
define internal fastcc zeroext i16 @make_branch(i16* noundef %0, i8* noundef %1) unnamed_addr #12 {
  %3 = ptrtoint i16* %0 to i32
  %4 = ptrtoint i8* %1 to i32
  %5 = sub i32 %4, %3
  %6 = trunc i32 %5 to i16
  %7 = add i16 %6, 4092
  %8 = lshr i16 %7, 1
  %9 = and i16 %8, 2047
  %10 = or i16 %9, -8192
  ret i16 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn
define internal fastcc nonnull i8* @add_thumb_bit(i8* noundef %0) unnamed_addr #12 {
  %2 = ptrtoint i8* %0 to i32
  %3 = or i32 %2, 1
  %4 = inttoptr i32 %3 to i8*
  ret i8* %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn
define internal fastcc i8* @remove_thumb_bit(i8* noundef %0) unnamed_addr #12 {
  %2 = ptrtoint i8* %0 to i32
  %3 = and i32 %2, -2
  %4 = inttoptr i32 %3 to i8*
  ret i8* %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define internal fastcc nonnull i8* @resolve_branch(i16* noundef readonly %0) unnamed_addr #10 {
  %2 = load i16, i16* %0, align 2, !tbaa !154
  %3 = zext i16 %2 to i32
  %4 = shl i32 %3, 21
  %5 = sdiv i32 %4, 2097152
  %6 = getelementptr inbounds i16, i16* %0, i32 2
  %7 = getelementptr inbounds i16, i16* %6, i32 %5
  %8 = bitcast i16* %7 to i8*
  ret i8* %8
}

; Function Attrs: nofree noinline nosync nounwind readnone
define internal fastcc signext i8 @get_slot_index(%struct.irq_handler_chain_slot* noundef readnone %0) unnamed_addr #22 {
  %2 = tail call fastcc signext i8 @slot_diff(%struct.irq_handler_chain_slot* noundef %0)
  ret i8 %2
}

; Function Attrs: nofree noinline nosync nounwind readnone
define internal fastcc signext i8 @slot_diff(%struct.irq_handler_chain_slot* noundef %0) unnamed_addr #22 {
  %2 = tail call { i32, %struct.irq_handler_chain_slot* } asm ".syntax unified\0Asubs $1, $2\0Aadcs $1, $1\0Amuls $0, $1\0Alsrs $0, 20\0A", "=l,=l,l,0,1"(%struct.irq_handler_chain_slot* getelementptr inbounds ([4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 0), i32 43690, %struct.irq_handler_chain_slot* %0) #35, !srcloc !166
  %3 = extractvalue { i32, %struct.irq_handler_chain_slot* } %2, 0
  %4 = trunc i32 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind
define dso_local void @irq_remove_handler(i32 noundef %0, void ()* noundef readnone %1) local_unnamed_addr #3 {
  %3 = tail call i32 asm sideeffect "mrs $0, PRIMASK", "=r"() #30, !srcloc !148
  tail call void asm sideeffect "cpsid i", ""() #30, !srcloc !149
  br label %4

4:                                                ; preds = %13, %2
  %5 = load volatile i32, i32* inttoptr (i32 -805306076 to i32*), align 4, !tbaa !18
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %16, !prof !29, !llvm.loop !150

7:                                                ; preds = %4
  %8 = load volatile i32, i32* inttoptr (i32 -805306076 to i32*), align 4, !tbaa !18
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16, !prof !29, !llvm.loop !150

10:                                               ; preds = %7
  %11 = load volatile i32, i32* inttoptr (i32 -805306076 to i32*), align 4, !tbaa !18
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16, !prof !29, !llvm.loop !150

13:                                               ; preds = %10
  %14 = load volatile i32, i32* inttoptr (i32 -805306076 to i32*), align 4, !tbaa !18
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %4, label %16, !prof !29, !llvm.loop !150

16:                                               ; preds = %13, %10, %7, %4
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !151
  %17 = tail call fastcc void ()** @get_vtable()
  %18 = add i32 %0, 16
  %19 = getelementptr inbounds void ()*, void ()** %17, i32 %18
  %20 = load void ()*, void ()** %19, align 4, !tbaa !11
  %21 = icmp eq void ()* %20, @__unhandled_user_irq
  %22 = icmp eq void ()* %20, %1
  %23 = or i1 %21, %22
  br i1 %23, label %143, label %24

24:                                               ; preds = %16
  %25 = tail call fastcc zeroext i1 @is_shared_irq_raw_handler(void ()* noundef %20)
  br i1 %25, label %26, label %143

26:                                               ; preds = %24
  %27 = tail call zeroext i1 @irq_is_enabled(i32 noundef %0)
  tail call void @irq_set_enabled(i32 noundef %0, i1 noundef zeroext false)
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !151
  %28 = tail call i32 @__get_current_exception() #30
  %29 = icmp eq i32 %28, 0
  %30 = icmp eq i32 %28, %18
  %31 = or i1 %29, %30
  tail call fastcc void @hard_assert(i1 noundef zeroext %31)
  %32 = bitcast void ()* %20 to i8*
  %33 = tail call fastcc i8* @remove_thumb_bit(i8* noundef %32)
  %34 = bitcast i8* %33 to %struct.irq_handler_chain_slot*
  %35 = getelementptr inbounds i8, i8* %33, i32 8
  %36 = bitcast i8* %35 to void ()**
  %37 = load void ()*, void ()** %36, align 4, !tbaa !167
  %38 = icmp eq void ()* %37, %1
  br i1 %38, label %97, label %39

39:                                               ; preds = %26, %75
  %40 = phi %struct.irq_handler_chain_slot* [ %77, %75 ], [ %34, %26 ]
  %41 = getelementptr inbounds %struct.irq_handler_chain_slot, %struct.irq_handler_chain_slot* %40, i32 0, i32 3
  %42 = bitcast %union.anon* %41 to i8*
  %43 = load i8, i8* %42, align 2, !tbaa !8
  %44 = icmp slt i8 %43, 0
  br i1 %44, label %141, label %45

45:                                               ; preds = %39
  %46 = zext i8 %43 to i32
  %47 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %46, i32 4
  %48 = load void ()*, void ()** %47, align 4, !tbaa !167
  %49 = icmp eq void ()* %48, %1
  br i1 %49, label %94, label %50, !llvm.loop !168

50:                                               ; preds = %45
  %51 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %46, i32 3
  %52 = bitcast %union.anon* %51 to i8*
  %53 = load i8, i8* %52, align 2, !tbaa !8
  %54 = icmp slt i8 %53, 0
  br i1 %54, label %141, label %55

55:                                               ; preds = %50
  %56 = zext i8 %53 to i32
  %57 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %56, i32 4
  %58 = load void ()*, void ()** %57, align 4, !tbaa !167
  %59 = icmp eq void ()* %58, %1
  br i1 %59, label %89, label %60, !llvm.loop !168

60:                                               ; preds = %55
  %61 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %56, i32 3
  %62 = bitcast %union.anon* %61 to i8*
  %63 = load i8, i8* %62, align 2, !tbaa !8
  %64 = icmp slt i8 %63, 0
  br i1 %64, label %141, label %65

65:                                               ; preds = %60
  %66 = zext i8 %63 to i32
  %67 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %66, i32 4
  %68 = load void ()*, void ()** %67, align 4, !tbaa !167
  %69 = icmp eq void ()* %68, %1
  br i1 %69, label %84, label %70, !llvm.loop !168

70:                                               ; preds = %65
  %71 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %66, i32 3
  %72 = bitcast %union.anon* %71 to i8*
  %73 = load i8, i8* %72, align 2, !tbaa !8
  %74 = icmp slt i8 %73, 0
  br i1 %74, label %141, label %75

75:                                               ; preds = %70
  %76 = zext i8 %73 to i32
  %77 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %76
  %78 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %76, i32 4
  %79 = load void ()*, void ()** %78, align 4, !tbaa !167
  %80 = icmp eq void ()* %79, %1
  br i1 %80, label %81, label %39, !llvm.loop !168

81:                                               ; preds = %75
  %82 = zext i8 %63 to i32
  %83 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %82
  br label %97

84:                                               ; preds = %65
  %85 = zext i8 %53 to i32
  %86 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %85
  %87 = zext i8 %63 to i32
  %88 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %87
  br label %97

89:                                               ; preds = %55
  %90 = zext i8 %43 to i32
  %91 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %90
  %92 = zext i8 %53 to i32
  %93 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %92
  br label %97

94:                                               ; preds = %45
  %95 = zext i8 %43 to i32
  %96 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %95
  br label %97

97:                                               ; preds = %81, %84, %89, %94, %26
  %98 = phi %struct.irq_handler_chain_slot* [ %34, %26 ], [ %77, %81 ], [ %88, %84 ], [ %93, %89 ], [ %96, %94 ]
  %99 = phi %struct.irq_handler_chain_slot* [ null, %26 ], [ %83, %81 ], [ %86, %84 ], [ %91, %89 ], [ %40, %94 ]
  %100 = getelementptr inbounds %struct.irq_handler_chain_slot, %struct.irq_handler_chain_slot* %98, i32 0, i32 3
  %101 = bitcast %union.anon* %100 to i8*
  %102 = load i8, i8* %101, align 2, !tbaa !8
  %103 = icmp sgt i8 %102, -1
  br i1 %103, label %104, label %128

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.irq_handler_chain_slot, %struct.irq_handler_chain_slot* %98, i32 0, i32 4
  %106 = zext i8 %102 to i32
  %107 = bitcast %union.anon* %100 to %struct.anon*
  %108 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %106, i32 4
  %109 = load void ()*, void ()** %108, align 4, !tbaa !167
  store void ()* %109, void ()** %105, align 4, !tbaa !167
  %110 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %106, i32 3
  %111 = bitcast %union.anon* %110 to %struct.anon*
  %112 = getelementptr inbounds %struct.anon, %struct.anon* %111, i32 0, i32 1
  %113 = load i8, i8* %112, align 1, !tbaa !8
  %114 = getelementptr inbounds %struct.anon, %struct.anon* %107, i32 0, i32 1
  store i8 %113, i8* %114, align 1, !tbaa !8
  %115 = bitcast %union.anon* %110 to i8*
  %116 = load i8, i8* %115, align 2, !tbaa !8
  store i8 %116, i8* %101, align 2, !tbaa !8
  %117 = load i8, i8* %115, align 2, !tbaa !8
  %118 = icmp sgt i8 %117, -1
  br i1 %118, label %119, label %124

119:                                              ; preds = %104
  %120 = getelementptr inbounds %struct.irq_handler_chain_slot, %struct.irq_handler_chain_slot* %98, i32 0, i32 2
  %121 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %106, i32 2
  %122 = tail call fastcc i8* @resolve_branch(i16* noundef nonnull %121)
  %123 = tail call fastcc zeroext i16 @make_branch(i16* noundef nonnull %120, i8* noundef nonnull %122)
  br label %124

124:                                              ; preds = %104, %119
  %125 = phi i16 [ %123, %119 ], [ -17152, %104 ]
  %126 = getelementptr inbounds %struct.irq_handler_chain_slot, %struct.irq_handler_chain_slot* %98, i32 0, i32 2
  store i16 %125, i16* %126, align 4, !tbaa !162
  %127 = load i8, i8* @irq_hander_chain_free_slot_head, align 1, !tbaa !8
  store i8 %127, i8* %115, align 2, !tbaa !8
  store i8 %102, i8* @irq_hander_chain_free_slot_head, align 1, !tbaa !8
  br label %141

128:                                              ; preds = %97
  br i1 %29, label %129, label %139

129:                                              ; preds = %128
  %130 = icmp eq %struct.irq_handler_chain_slot* %99, null
  br i1 %130, label %135, label %131

131:                                              ; preds = %129
  %132 = getelementptr inbounds %struct.irq_handler_chain_slot, %struct.irq_handler_chain_slot* %99, i32 0, i32 3
  %133 = bitcast %union.anon* %132 to i8*
  store i8 -1, i8* %133, align 2, !tbaa !8
  %134 = getelementptr inbounds %struct.irq_handler_chain_slot, %struct.irq_handler_chain_slot* %99, i32 0, i32 2
  store i16 -17152, i16* %134, align 4, !tbaa !162
  br label %135

135:                                              ; preds = %129, %131
  %136 = phi void ()* [ %20, %131 ], [ @__unhandled_user_irq, %129 ]
  %137 = load i8, i8* @irq_hander_chain_free_slot_head, align 1, !tbaa !8
  store i8 %137, i8* %101, align 2, !tbaa !8
  %138 = tail call fastcc signext i8 @get_slot_index(%struct.irq_handler_chain_slot* noundef nonnull %98)
  store i8 %138, i8* @irq_hander_chain_free_slot_head, align 1, !tbaa !8
  br label %141

139:                                              ; preds = %128
  %140 = getelementptr inbounds %struct.irq_handler_chain_slot, %struct.irq_handler_chain_slot* %98, i32 0, i32 2
  tail call fastcc void @insert_branch_and_link(i16* noundef nonnull %140)
  br label %141

141:                                              ; preds = %39, %50, %60, %70, %124, %139, %135
  %142 = phi void ()* [ %20, %124 ], [ %20, %139 ], [ %136, %135 ], [ %20, %70 ], [ %20, %60 ], [ %20, %50 ], [ %20, %39 ]
  tail call void @irq_set_enabled(i32 noundef %0, i1 noundef zeroext %27)
  br label %143

143:                                              ; preds = %16, %24, %141
  %144 = phi void ()* [ %142, %141 ], [ %20, %24 ], [ @__unhandled_user_irq, %16 ]
  tail call fastcc void @set_raw_irq_handler_and_unlock(i32 noundef %0, void ()* noundef %144, i32 noundef %3)
  ret void
}

declare dso_local i32 @__get_current_exception() local_unnamed_addr #21

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly
define internal fastcc void @insert_branch_and_link(i16* noundef %0) unnamed_addr #15 {
  %2 = ptrtoint i16* %0 to i32
  %3 = sub i32 add (i32 ptrtoint (void ()* @irq_handler_chain_remove_tail to i32), i32 -4), %2
  %4 = lshr i32 %3, 12
  %5 = trunc i32 %4 to i16
  %6 = and i16 %5, 2047
  %7 = or i16 %6, -4096
  store i16 %7, i16* %0, align 2, !tbaa !154
  %8 = trunc i32 %3 to i16
  %9 = lshr i16 %8, 1
  %10 = or i16 %9, -2048
  %11 = getelementptr inbounds i16, i16* %0, i32 1
  store i16 %10, i16* %11, align 2, !tbaa !154
  ret void
}

declare dso_local void @irq_handler_chain_remove_tail() #21

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @irq_set_priority(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = add i32 %0, -536812544
  %4 = and i32 %3, -4
  %5 = inttoptr i32 %4 to i32*
  %6 = load volatile i32, i32* %5, align 4, !tbaa !18
  %7 = shl i32 %0, 3
  %8 = and i32 %7, 24
  %9 = shl nuw i32 255, %8
  %10 = xor i32 %9, -1
  %11 = and i32 %6, %10
  %12 = zext i8 %1 to i32
  %13 = shl nuw i32 %12, %8
  %14 = or i32 %11, %13
  store volatile i32 %14, i32* %5, align 4, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local i32 @irq_get_priority(i32 noundef %0) local_unnamed_addr #9 {
  %2 = add i32 %0, -536812544
  %3 = and i32 %2, -4
  %4 = inttoptr i32 %3 to i32*
  %5 = load volatile i32, i32* %4, align 4, !tbaa !18
  %6 = shl i32 %0, 3
  %7 = and i32 %6, 24
  %8 = lshr i32 %5, %7
  %9 = and i32 %8, 255
  ret i32 %9
}

; Function Attrs: noinline nounwind
define dso_local void @irq_add_tail_to_free_list(%struct.irq_handler_chain_slot* noundef %0) local_unnamed_addr #3 {
  %2 = bitcast %struct.irq_handler_chain_slot* %0 to i8*
  %3 = tail call fastcc i8* @add_thumb_bit(i8* noundef %2)
  %4 = tail call i32 @__get_current_exception() #30
  %5 = tail call i32 asm sideeffect "mrs $0, PRIMASK", "=r"() #30, !srcloc !148
  tail call void asm sideeffect "cpsid i", ""() #30, !srcloc !149
  br label %6

6:                                                ; preds = %15, %1
  %7 = load volatile i32, i32* inttoptr (i32 -805306076 to i32*), align 4, !tbaa !18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18, !prof !29, !llvm.loop !150

9:                                                ; preds = %6
  %10 = load volatile i32, i32* inttoptr (i32 -805306076 to i32*), align 4, !tbaa !18
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18, !prof !29, !llvm.loop !150

12:                                               ; preds = %9
  %13 = load volatile i32, i32* inttoptr (i32 -805306076 to i32*), align 4, !tbaa !18
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18, !prof !29, !llvm.loop !150

15:                                               ; preds = %12
  %16 = load volatile i32, i32* inttoptr (i32 -805306076 to i32*), align 4, !tbaa !18
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %6, label %18, !prof !29, !llvm.loop !150

18:                                               ; preds = %15, %12, %9, %6
  %19 = bitcast i8* %3 to void ()*
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !151
  %20 = tail call fastcc signext i8 @get_slot_index(%struct.irq_handler_chain_slot* noundef %0)
  %21 = tail call fastcc void ()** @get_vtable()
  %22 = getelementptr inbounds void ()*, void ()** %21, i32 %4
  %23 = load void ()*, void ()** %22, align 4, !tbaa !11
  %24 = icmp eq void ()* %23, %19
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i8, i8* bitcast (%union.anon* getelementptr inbounds ([4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 0, i32 3) to i8*), align 2, !tbaa !8
  %27 = icmp eq i8 %26, %20
  br i1 %27, label %31, label %36

28:                                               ; preds = %18
  %29 = tail call fastcc void ()** @get_vtable()
  %30 = getelementptr inbounds void ()*, void ()** %29, i32 %4
  store void ()* @__unhandled_user_irq, void ()** %30, align 4, !tbaa !11
  br label %45

31:                                               ; preds = %42, %39, %36, %25
  %32 = phi i32 [ 0, %25 ], [ 1, %36 ], [ 2, %39 ], [ 3, %42 ]
  %33 = phi %union.anon* [ getelementptr inbounds ([4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 0, i32 3), %25 ], [ getelementptr inbounds ([4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 1, i32 3), %36 ], [ getelementptr inbounds ([4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 2, i32 3), %39 ], [ getelementptr inbounds ([4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 3, i32 3), %42 ]
  %34 = bitcast %union.anon* %33 to i8*
  store i8 -1, i8* %34, align 2, !tbaa !8
  %35 = getelementptr inbounds [4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 %32, i32 2
  store i16 -17152, i16* %35, align 4, !tbaa !162
  br label %45

36:                                               ; preds = %25
  %37 = load i8, i8* bitcast (%union.anon* getelementptr inbounds ([4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 1, i32 3) to i8*), align 2, !tbaa !8
  %38 = icmp eq i8 %37, %20
  br i1 %38, label %31, label %39

39:                                               ; preds = %36
  %40 = load i8, i8* bitcast (%union.anon* getelementptr inbounds ([4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 2, i32 3) to i8*), align 2, !tbaa !8
  %41 = icmp eq i8 %40, %20
  br i1 %41, label %31, label %42

42:                                               ; preds = %39
  %43 = load i8, i8* bitcast (%union.anon* getelementptr inbounds ([4 x %struct.irq_handler_chain_slot], [4 x %struct.irq_handler_chain_slot]* @irq_handler_chain_slots, i32 0, i32 3, i32 3) to i8*), align 2, !tbaa !8
  %44 = icmp eq i8 %43, %20
  br i1 %44, label %31, label %45

45:                                               ; preds = %42, %31, %28
  %46 = load i8, i8* @irq_hander_chain_free_slot_head, align 1, !tbaa !8
  %47 = getelementptr inbounds %struct.irq_handler_chain_slot, %struct.irq_handler_chain_slot* %0, i32 0, i32 3
  %48 = bitcast %union.anon* %47 to i8*
  store i8 %46, i8* %48, align 2, !tbaa !8
  store i8 %20, i8* @irq_hander_chain_free_slot_head, align 1, !tbaa !8
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !151
  store volatile i32 0, i32* inttoptr (i32 -805306076 to i32*), align 4, !tbaa !18
  tail call void asm sideeffect "msr PRIMASK,$0", "r"(i32 %5) #30, !srcloc !152
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @irq_init_priorities() local_unnamed_addr #2 {
  store volatile i32 -2139062144, i32* inttoptr (i32 -536812544 to i32*), align 1024, !tbaa !18
  store volatile i32 -2139062144, i32* inttoptr (i32 -536812540 to i32*), align 4, !tbaa !18
  store volatile i32 -2139062144, i32* inttoptr (i32 -536812536 to i32*), align 8, !tbaa !18
  store volatile i32 -2139062144, i32* inttoptr (i32 -536812532 to i32*), align 4, !tbaa !18
  store volatile i32 -2139062144, i32* inttoptr (i32 -536812528 to i32*), align 16, !tbaa !18
  store volatile i32 -2139062144, i32* inttoptr (i32 -536812524 to i32*), align 4, !tbaa !18
  store volatile i32 -2139062144, i32* inttoptr (i32 -536812520 to i32*), align 8, !tbaa !18
  store volatile i32 -2139062144, i32* inttoptr (i32 -536812516 to i32*), align 4, !tbaa !18
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @pll_init(%struct.pll_hw_t* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = udiv i32 12, %1
  %7 = mul nuw nsw i32 %6, 1000000
  %8 = udiv i32 %2, %7
  %9 = shl i32 %3, 16
  %10 = shl i32 %4, 12
  %11 = or i32 %10, %9
  %12 = getelementptr inbounds %struct.pll_hw_t, %struct.pll_hw_t* %0, i32 0, i32 0
  %13 = load volatile i32, i32* %12, align 4, !tbaa !169
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %29, label %15

15:                                               ; preds = %5
  %16 = load volatile i32, i32* %12, align 4, !tbaa !169
  %17 = and i32 %16, 63
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.pll_hw_t, %struct.pll_hw_t* %0, i32 0, i32 2
  %21 = load volatile i32, i32* %20, align 4, !tbaa !171
  %22 = and i32 %21, 4095
  %23 = icmp eq i32 %8, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.pll_hw_t, %struct.pll_hw_t* %0, i32 0, i32 3
  %26 = load volatile i32, i32* %25, align 4, !tbaa !172
  %27 = and i32 %26, 487424
  %28 = icmp eq i32 %11, %27
  br i1 %28, label %51, label %29

29:                                               ; preds = %24, %19, %15, %5
  %30 = icmp eq %struct.pll_hw_t* %0, inttoptr (i32 1073922048 to %struct.pll_hw_t*)
  %31 = select i1 %30, i32 8192, i32 4096
  tail call fastcc void @reset_block.76(i32 noundef %31)
  tail call fastcc void @unreset_block_wait.77(i32 noundef %31)
  store volatile i32 %1, i32* %12, align 4, !tbaa !169
  %32 = getelementptr inbounds %struct.pll_hw_t, %struct.pll_hw_t* %0, i32 0, i32 2
  store volatile i32 %8, i32* %32, align 4, !tbaa !171
  %33 = getelementptr inbounds %struct.pll_hw_t, %struct.pll_hw_t* %0, i32 0, i32 1
  %34 = ptrtoint i32* %33 to i32
  %35 = or i32 %34, 12288
  %36 = inttoptr i32 %35 to i32*
  store volatile i32 33, i32* %36, align 4, !tbaa !18
  br label %37

37:                                               ; preds = %46, %29
  %38 = load volatile i32, i32* %12, align 4, !tbaa !169
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %40, label %49, !llvm.loop !173

40:                                               ; preds = %37
  %41 = load volatile i32, i32* %12, align 4, !tbaa !169
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %43, label %49, !llvm.loop !173

43:                                               ; preds = %40
  %44 = load volatile i32, i32* %12, align 4, !tbaa !169
  %45 = icmp sgt i32 %44, -1
  br i1 %45, label %46, label %49, !llvm.loop !173

46:                                               ; preds = %43
  %47 = load volatile i32, i32* %12, align 4, !tbaa !169
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %37, label %49, !llvm.loop !173

49:                                               ; preds = %46, %43, %40, %37
  %50 = getelementptr inbounds %struct.pll_hw_t, %struct.pll_hw_t* %0, i32 0, i32 3
  store volatile i32 %11, i32* %50, align 4, !tbaa !172
  store volatile i32 8, i32* %36, align 4, !tbaa !18
  br label %51

51:                                               ; preds = %24, %49
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define internal fastcc void @reset_block.76(i32 noundef %0) unnamed_addr #2 {
  store volatile i32 %0, i32* inttoptr (i32 1073799168 to i32*), align 8192, !tbaa !18
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define internal fastcc void @unreset_block_wait.77(i32 noundef %0) unnamed_addr #2 {
  store volatile i32 %0, i32* inttoptr (i32 1073803264 to i32*), align 4096, !tbaa !18
  br label %2

2:                                                ; preds = %17, %1
  %3 = load volatile i32, i32* inttoptr (i32 1073790984 to i32*), align 8, !tbaa !124
  %4 = xor i32 %3, -1
  %5 = and i32 %4, %0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %22, label %7, !llvm.loop !174

7:                                                ; preds = %2
  %8 = load volatile i32, i32* inttoptr (i32 1073790984 to i32*), align 8, !tbaa !124
  %9 = xor i32 %8, -1
  %10 = and i32 %9, %0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %22, label %12, !llvm.loop !174

12:                                               ; preds = %7
  %13 = load volatile i32, i32* inttoptr (i32 1073790984 to i32*), align 8, !tbaa !124
  %14 = xor i32 %13, -1
  %15 = and i32 %14, %0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17, !llvm.loop !174

17:                                               ; preds = %12
  %18 = load volatile i32, i32* inttoptr (i32 1073790984 to i32*), align 8, !tbaa !124
  %19 = xor i32 %18, -1
  %20 = and i32 %19, %0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %2, !llvm.loop !174

22:                                               ; preds = %17, %12, %7, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @pll_deinit(%struct.pll_hw_t* noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.pll_hw_t, %struct.pll_hw_t* %0, i32 0, i32 1
  store volatile i32 45, i32* %2, align 4, !tbaa !175
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @watchdog_start_tick(i32 noundef %0) local_unnamed_addr #2 {
  %2 = or i32 %0, 512
  store volatile i32 %2, i32* inttoptr (i32 1074102316 to i32*), align 4, !tbaa !176
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @watchdog_update() local_unnamed_addr #2 {
  %1 = load i32, i32* @load_value, align 4, !tbaa !18
  store volatile i32 %1, i32* inttoptr (i32 1074102276 to i32*), align 4, !tbaa !178
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local i32 @watchdog_get_count() local_unnamed_addr #9 {
  %1 = load volatile i32, i32* inttoptr (i32 1074102272 to i32*), align 32768, !tbaa !179
  %2 = lshr i32 %1, 1
  %3 = and i32 %2, 8388607
  ret i32 %3
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @_watchdog_enable(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #2 {
  store volatile i32 1073741824, i32* inttoptr (i32 1074114560 to i32*), align 4096, !tbaa !18
  store volatile i32 131068, i32* inttoptr (i32 1073815560 to i32*), align 8, !tbaa !18
  br i1 %1, label %3, label %4

3:                                                ; preds = %2
  store volatile i32 117440512, i32* inttoptr (i32 1074110464 to i32*), align 8192, !tbaa !18
  br label %5

4:                                                ; preds = %2
  store volatile i32 117440512, i32* inttoptr (i32 1074114560 to i32*), align 4096, !tbaa !18
  br label %5

5:                                                ; preds = %4, %3
  %6 = icmp eq i32 %0, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %5
  %8 = mul i32 %0, 2000
  %9 = icmp ult i32 %8, 16777215
  %10 = select i1 %9, i32 %8, i32 16777215
  store i32 %10, i32* @load_value, align 4
  tail call void @watchdog_update()
  br label %11

11:                                               ; preds = %5, %7
  %12 = phi i32 [ 1073741824, %7 ], [ -2147483648, %5 ]
  store volatile i32 %12, i32* inttoptr (i32 1074110464 to i32*), align 8192, !tbaa !18
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @watchdog_enable(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #2 {
  store volatile i32 1790390561, i32* inttoptr (i32 1074102300 to i32*), align 4, !tbaa !18
  tail call void @_watchdog_enable(i32 noundef %0, i1 noundef zeroext %1)
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @watchdog_reboot(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  store volatile i32 1073741824, i32* inttoptr (i32 1074114560 to i32*), align 4096, !tbaa !18
  %4 = icmp eq i32 %0, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = or i32 %0, 1
  store volatile i32 -1341669165, i32* inttoptr (i32 1074102300 to i32*), align 4, !tbaa !18
  %7 = xor i32 %6, 1341669165
  store volatile i32 %7, i32* inttoptr (i32 1074102304 to i32*), align 32, !tbaa !18
  store volatile i32 %1, i32* inttoptr (i32 1074102308 to i32*), align 4, !tbaa !18
  store volatile i32 %6, i32* inttoptr (i32 1074102312 to i32*), align 8, !tbaa !18
  br label %9

8:                                                ; preds = %3
  store volatile i32 0, i32* inttoptr (i32 1074102300 to i32*), align 4, !tbaa !18
  br label %9

9:                                                ; preds = %8, %5
  tail call void @_watchdog_enable(i32 noundef %2, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local zeroext i1 @watchdog_caused_reboot() local_unnamed_addr #9 {
  %1 = load volatile i32, i32* inttoptr (i32 1074102280 to i32*), align 8, !tbaa !180
  %2 = icmp ne i32 %1, 0
  ret i1 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local zeroext i1 @watchdog_enable_caused_reboot() local_unnamed_addr #9 {
  %1 = load volatile i32, i32* inttoptr (i32 1074102280 to i32*), align 8, !tbaa !180
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load volatile i32, i32* inttoptr (i32 1074102300 to i32*), align 4, !tbaa !18
  %5 = icmp eq i32 %4, 1790390561
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi i1 [ false, %0 ], [ %5, %3 ]
  ret i1 %7
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @xosc_init() local_unnamed_addr #2 {
  store volatile i32 2720, i32* inttoptr (i32 1073889280 to i32*), align 16384, !tbaa !181
  store volatile i32 47, i32* inttoptr (i32 1073889292 to i32*), align 4, !tbaa !183
  store volatile i32 16429056, i32* inttoptr (i32 1073897472 to i32*), align 8192, !tbaa !18
  br label %1

1:                                                ; preds = %10, %0
  %2 = load volatile i32, i32* inttoptr (i32 1073889284 to i32*), align 4, !tbaa !184
  %3 = icmp sgt i32 %2, -1
  br i1 %3, label %4, label %13, !llvm.loop !185

4:                                                ; preds = %1
  %5 = load volatile i32, i32* inttoptr (i32 1073889284 to i32*), align 4, !tbaa !184
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %13, !llvm.loop !185

7:                                                ; preds = %4
  %8 = load volatile i32, i32* inttoptr (i32 1073889284 to i32*), align 4, !tbaa !184
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %13, !llvm.loop !185

10:                                               ; preds = %7
  %11 = load volatile i32, i32* inttoptr (i32 1073889284 to i32*), align 4, !tbaa !184
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %1, label %13, !llvm.loop !185

13:                                               ; preds = %10, %7, %4, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @xosc_disable() local_unnamed_addr #2 {
  %1 = load volatile i32, i32* inttoptr (i32 1073889280 to i32*), align 16384, !tbaa !181
  %2 = and i32 %1, -16773121
  %3 = or i32 %2, 13754368
  store volatile i32 %3, i32* inttoptr (i32 1073889280 to i32*), align 16384, !tbaa !181
  br label %4

4:                                                ; preds = %13, %0
  %5 = load volatile i32, i32* inttoptr (i32 1073889284 to i32*), align 4, !tbaa !184
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %16, label %7, !llvm.loop !186

7:                                                ; preds = %4
  %8 = load volatile i32, i32* inttoptr (i32 1073889284 to i32*), align 4, !tbaa !184
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %16, label %10, !llvm.loop !186

10:                                               ; preds = %7
  %11 = load volatile i32, i32* inttoptr (i32 1073889284 to i32*), align 4, !tbaa !184
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %16, label %13, !llvm.loop !186

13:                                               ; preds = %10
  %14 = load volatile i32, i32* inttoptr (i32 1073889284 to i32*), align 4, !tbaa !184
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %4, !llvm.loop !186

16:                                               ; preds = %13, %10, %7, %4
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @xosc_dormant() local_unnamed_addr #2 {
  store volatile i32 1668246881, i32* inttoptr (i32 1073889288 to i32*), align 8, !tbaa !187
  br label %1

1:                                                ; preds = %10, %0
  %2 = load volatile i32, i32* inttoptr (i32 1073889284 to i32*), align 4, !tbaa !184
  %3 = icmp sgt i32 %2, -1
  br i1 %3, label %4, label %13, !llvm.loop !188

4:                                                ; preds = %1
  %5 = load volatile i32, i32* inttoptr (i32 1073889284 to i32*), align 4, !tbaa !184
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %13, !llvm.loop !188

7:                                                ; preds = %4
  %8 = load volatile i32, i32* inttoptr (i32 1073889284 to i32*), align 4, !tbaa !184
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %13, !llvm.loop !188

10:                                               ; preds = %7
  %11 = load volatile i32, i32* inttoptr (i32 1073889284 to i32*), align 4, !tbaa !184
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %1, label %13, !llvm.loop !188

13:                                               ; preds = %10, %7, %4, %1
  ret void
}

; Function Attrs: noinline nounwind
define dso_local i32 @__wrap_sprintf(i8* noundef %0, i8* noundef %1, ...) local_unnamed_addr #3 {
  %3 = alloca %struct.__va_list, align 4
  %4 = bitcast %struct.__va_list* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #30
  call void @llvm.va_start(i8* nonnull %4)
  %5 = bitcast %struct.__va_list* %3 to i32*
  %6 = load i32, i32* %5, align 4
  %7 = insertvalue [1 x i32] poison, i32 %6, 0
  %8 = call i32 @_vsnprintf(void (i8, i8*, i32, i32)* noundef nonnull @_out_buffer, i8* noundef %0, i32 noundef -1, i8* noundef %1, [1 x i32] %7)
  call void @llvm.va_end(i8* nonnull %4)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #30
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly
define internal void @_out_buffer(i8 noundef zeroext %0, i8* nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) #15 {
  %5 = icmp ult i32 %2, %3
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = getelementptr inbounds i8, i8* %1, i32 %2
  store i8 %0, i8* %7, align 1, !tbaa !8
  br label %8

8:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: noinline nounwind
define internal i32 @_vsnprintf(void (i8, i8*, i32, i32)* nocapture noundef readonly %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, [1 x i32] %4) #3 {
  %6 = alloca i8*, align 4
  %7 = extractvalue [1 x i32] %4, 0
  %8 = inttoptr i32 %7 to i8*
  store i8* %3, i8** %6, align 4, !tbaa !11
  store i32 (void (i8, i8*, i32, i32)*, i8*, i32, i8*, [1 x i32])* @_vsnprintf, i32 (void (i8, i8*, i32, i32)*, i8*, i32, i8*, [1 x i32])** @lazy_vsnprintf, align 4, !tbaa !11
  %9 = icmp eq i8* %1, null
  %10 = select i1 %9, void (i8, i8*, i32, i32)* @_out_null, void (i8, i8*, i32, i32)* %0
  br label %11

11:                                               ; preds = %379, %5
  %12 = phi i8* [ %3, %5 ], [ %380, %379 ]
  %13 = phi i32 [ 0, %5 ], [ %381, %379 ]
  %14 = phi i8* [ %8, %5 ], [ %382, %379 ]
  br label %15

15:                                               ; preds = %11, %19
  %16 = phi i8* [ %21, %19 ], [ %12, %11 ]
  %17 = phi i32 [ %20, %19 ], [ %13, %11 ]
  %18 = load i8, i8* %16, align 1, !tbaa !8
  switch i8 %18, label %19 [
    i8 0, label %383
    i8 37, label %22
  ]

19:                                               ; preds = %15
  %20 = add i32 %17, 1
  tail call void %10(i8 noundef zeroext %18, i8* noundef %1, i32 noundef %17, i32 noundef %2) #30
  %21 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %21, i8** %6, align 4, !tbaa !11
  br label %15, !llvm.loop !189

22:                                               ; preds = %15
  %23 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %23, i8** %6, align 4, !tbaa !11
  br label %24

24:                                               ; preds = %31, %22
  %25 = phi i8* [ %23, %22 ], [ %32, %31 ]
  %26 = phi i32 [ 0, %22 ], [ %33, %31 ]
  %27 = load i8, i8* %25, align 1, !tbaa !8
  switch i8 %27, label %46 [
    i8 48, label %28
    i8 45, label %34
    i8 43, label %37
    i8 32, label %40
    i8 35, label %43
  ]

28:                                               ; preds = %24
  %29 = or i32 %26, 1
  %30 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %30, i8** %6, align 4, !tbaa !11
  br label %31

31:                                               ; preds = %28, %34, %37, %40, %43
  %32 = phi i8* [ %30, %28 ], [ %36, %34 ], [ %39, %37 ], [ %42, %40 ], [ %45, %43 ]
  %33 = phi i32 [ %29, %28 ], [ %35, %34 ], [ %38, %37 ], [ %41, %40 ], [ %44, %43 ]
  br label %24, !llvm.loop !190

34:                                               ; preds = %24
  %35 = or i32 %26, 2
  %36 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %36, i8** %6, align 4, !tbaa !11
  br label %31

37:                                               ; preds = %24
  %38 = or i32 %26, 4
  %39 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %39, i8** %6, align 4, !tbaa !11
  br label %31

40:                                               ; preds = %24
  %41 = or i32 %26, 8
  %42 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %42, i8** %6, align 4, !tbaa !11
  br label %31

43:                                               ; preds = %24
  %44 = or i32 %26, 16
  %45 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %45, i8** %6, align 4, !tbaa !11
  br label %31

46:                                               ; preds = %24
  %47 = tail call fastcc zeroext i1 @_is_digit(i8 noundef zeroext %27)
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = call fastcc i32 @_atoi(i8** noundef nonnull %6)
  %50 = load i8*, i8** %6, align 4, !tbaa !11
  br label %63

51:                                               ; preds = %46
  %52 = icmp eq i8 %27, 42
  br i1 %52, label %53, label %69

53:                                               ; preds = %51
  %54 = getelementptr inbounds i8, i8* %14, i32 4
  %55 = bitcast i8* %14 to i32*
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %56, 0
  %58 = or i32 %26, 2
  %59 = sub nsw i32 0, %56
  %60 = select i1 %57, i32 %59, i32 %56
  %61 = select i1 %57, i32 %58, i32 %26
  %62 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %62, i8** %6, align 4, !tbaa !11
  br label %63

63:                                               ; preds = %48, %53
  %64 = phi i8* [ %62, %53 ], [ %50, %48 ]
  %65 = phi i32 [ %60, %53 ], [ %49, %48 ]
  %66 = phi i32 [ %61, %53 ], [ %26, %48 ]
  %67 = phi i8* [ %54, %53 ], [ %14, %48 ]
  %68 = load i8, i8* %64, align 1, !tbaa !8
  br label %69

69:                                               ; preds = %63, %51
  %70 = phi i8 [ %68, %63 ], [ %27, %51 ]
  %71 = phi i8* [ %64, %63 ], [ %25, %51 ]
  %72 = phi i32 [ %65, %63 ], [ 0, %51 ]
  %73 = phi i32 [ %66, %63 ], [ %26, %51 ]
  %74 = phi i8* [ %67, %63 ], [ %14, %51 ]
  %75 = icmp eq i8 %70, 46
  br i1 %75, label %76, label %93

76:                                               ; preds = %69
  %77 = or i32 %73, 1024
  %78 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %78, i8** %6, align 4, !tbaa !11
  %79 = load i8, i8* %78, align 1, !tbaa !8
  %80 = tail call fastcc zeroext i1 @_is_digit(i8 noundef zeroext %79)
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = call fastcc i32 @_atoi(i8** noundef nonnull %6)
  %83 = load i8*, i8** %6, align 4, !tbaa !11
  br label %93

84:                                               ; preds = %76
  %85 = icmp eq i8 %79, 42
  br i1 %85, label %86, label %93

86:                                               ; preds = %84
  %87 = getelementptr inbounds i8, i8* %74, i32 4
  %88 = bitcast i8* %74 to i32*
  %89 = load i32, i32* %88, align 4
  %90 = icmp sgt i32 %89, 0
  %91 = select i1 %90, i32 %89, i32 0
  %92 = getelementptr inbounds i8, i8* %71, i32 2
  store i8* %92, i8** %6, align 4, !tbaa !11
  br label %93

93:                                               ; preds = %81, %86, %84, %69
  %94 = phi i8* [ %83, %81 ], [ %92, %86 ], [ %78, %84 ], [ %71, %69 ]
  %95 = phi i32 [ %82, %81 ], [ %91, %86 ], [ 0, %84 ], [ 0, %69 ]
  %96 = phi i32 [ %77, %81 ], [ %77, %86 ], [ %77, %84 ], [ %73, %69 ]
  %97 = phi i8* [ %74, %81 ], [ %87, %86 ], [ %74, %84 ], [ %74, %69 ]
  %98 = load i8, i8* %94, align 1, !tbaa !8
  %99 = zext i8 %98 to i32
  %100 = add nsw i32 %99, -104
  %101 = tail call i32 @llvm.fshl.i32(i32 %100, i32 %100, i32 31)
  switch i32 %101, label %131 [
    i32 2, label %102
    i32 0, label %110
    i32 6, label %118
    i32 1, label %121
    i32 9, label %124
  ]

102:                                              ; preds = %93
  %103 = or i32 %96, 256
  %104 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %104, i8** %6, align 4, !tbaa !11
  %105 = load i8, i8* %104, align 1, !tbaa !8
  %106 = icmp eq i8 %105, 108
  br i1 %106, label %107, label %131

107:                                              ; preds = %102
  %108 = or i32 %96, 768
  %109 = getelementptr inbounds i8, i8* %94, i32 2
  store i8* %109, i8** %6, align 4, !tbaa !11
  br label %127

110:                                              ; preds = %93
  %111 = or i32 %96, 128
  %112 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %112, i8** %6, align 4, !tbaa !11
  %113 = load i8, i8* %112, align 1, !tbaa !8
  %114 = icmp eq i8 %113, 104
  br i1 %114, label %115, label %131

115:                                              ; preds = %110
  %116 = or i32 %96, 192
  %117 = getelementptr inbounds i8, i8* %94, i32 2
  store i8* %117, i8** %6, align 4, !tbaa !11
  br label %127

118:                                              ; preds = %93
  %119 = or i32 %96, 256
  %120 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %120, i8** %6, align 4, !tbaa !11
  br label %127

121:                                              ; preds = %93
  %122 = or i32 %96, 512
  %123 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %123, i8** %6, align 4, !tbaa !11
  br label %127

124:                                              ; preds = %93
  %125 = or i32 %96, 256
  %126 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %126, i8** %6, align 4, !tbaa !11
  br label %127

127:                                              ; preds = %118, %121, %124, %107, %115
  %128 = phi i8* [ %109, %107 ], [ %117, %115 ], [ %120, %118 ], [ %123, %121 ], [ %126, %124 ]
  %129 = phi i32 [ %108, %107 ], [ %116, %115 ], [ %119, %118 ], [ %122, %121 ], [ %125, %124 ]
  %130 = load i8, i8* %128, align 1, !tbaa !8
  br label %131

131:                                              ; preds = %127, %93, %110, %102
  %132 = phi i8 [ %130, %127 ], [ %98, %93 ], [ %113, %110 ], [ %105, %102 ]
  %133 = phi i8* [ %128, %127 ], [ %94, %93 ], [ %112, %110 ], [ %104, %102 ]
  %134 = phi i32 [ %129, %127 ], [ %96, %93 ], [ %111, %110 ], [ %103, %102 ]
  switch i8 %132, label %376 [
    i8 37, label %373
    i8 112, label %365
    i8 115, label %307
    i8 99, label %274
    i8 117, label %136
    i8 105, label %136
    i8 100, label %136
    i8 102, label %244
    i8 70, label %244
    i8 98, label %135
    i8 120, label %138
    i8 88, label %138
    i8 111, label %144
    i8 103, label %257
    i8 71, label %257
    i8 69, label %259
    i8 101, label %259
  ]

135:                                              ; preds = %131
  br label %144

136:                                              ; preds = %131, %131, %131
  %137 = and i32 %134, -17
  br label %138

138:                                              ; preds = %131, %131, %136
  %139 = phi i32 [ 10, %136 ], [ 16, %131 ], [ 16, %131 ]
  %140 = phi i32 [ %137, %136 ], [ %134, %131 ], [ %134, %131 ]
  %141 = icmp eq i8 %132, 88
  %142 = or i32 %140, 32
  %143 = select i1 %141, i32 %142, i32 %140
  switch i8 %132, label %144 [
    i8 105, label %148
    i8 100, label %148
  ]

144:                                              ; preds = %131, %135, %138
  %145 = phi i32 [ %143, %138 ], [ %134, %135 ], [ %134, %131 ]
  %146 = phi i32 [ %139, %138 ], [ 2, %135 ], [ 8, %131 ]
  %147 = and i32 %145, -13
  br label %148

148:                                              ; preds = %138, %138, %144
  %149 = phi i32 [ %146, %144 ], [ %139, %138 ], [ %139, %138 ]
  %150 = phi i32 [ %147, %144 ], [ %143, %138 ], [ %143, %138 ]
  %151 = and i32 %150, 1024
  %152 = icmp eq i32 %151, 0
  %153 = and i32 %150, -2
  %154 = select i1 %152, i32 %150, i32 %153
  switch i8 %132, label %201 [
    i8 105, label %155
    i8 100, label %155
  ]

155:                                              ; preds = %148, %148
  %156 = and i32 %154, 512
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %170, label %158

158:                                              ; preds = %155
  %159 = ptrtoint i8* %97 to i32
  %160 = add i32 %159, 7
  %161 = and i32 %160, -8
  %162 = inttoptr i32 %161 to i8*
  %163 = getelementptr inbounds i8, i8* %162, i32 8
  %164 = inttoptr i32 %161 to i64*
  %165 = load i64, i64* %164, align 8
  %166 = tail call i64 @llvm.abs.i64(i64 %165, i1 true)
  %167 = icmp slt i64 %165, 0
  %168 = zext i32 %149 to i64
  %169 = tail call fastcc i32 @_ntoa_long_long(void (i8, i8*, i32, i32)* noundef %10, i8* noundef %1, i32 noundef %17, i32 noundef %2, i64 noundef %166, i1 noundef zeroext %167, i64 noundef %168, i32 noundef %95, i32 noundef %72, i32 noundef %154)
  br label %240

170:                                              ; preds = %155
  %171 = and i32 %154, 256
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %180, label %173

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, i8* %97, i32 4
  %175 = bitcast i8* %97 to i32*
  %176 = load i32, i32* %175, align 4
  %177 = tail call i32 @llvm.abs.i32(i32 %176, i1 true)
  %178 = icmp slt i32 %176, 0
  %179 = tail call fastcc i32 @_ntoa_long(void (i8, i8*, i32, i32)* noundef %10, i8* noundef %1, i32 noundef %17, i32 noundef %2, i32 noundef %177, i1 noundef zeroext %178, i32 noundef %149, i32 noundef %95, i32 noundef %72, i32 noundef %154)
  br label %240

180:                                              ; preds = %170
  %181 = and i32 %154, 64
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %187, label %183

183:                                              ; preds = %180
  %184 = bitcast i8* %97 to i32*
  %185 = load i32, i32* %184, align 4
  %186 = and i32 %185, 255
  br label %195

187:                                              ; preds = %180
  %188 = and i32 %154, 128
  %189 = icmp eq i32 %188, 0
  %190 = bitcast i8* %97 to i32*
  %191 = load i32, i32* %190, align 4
  br i1 %189, label %195, label %192

192:                                              ; preds = %187
  %193 = shl i32 %191, 16
  %194 = ashr exact i32 %193, 16
  br label %195

195:                                              ; preds = %187, %192, %183
  %196 = phi i32 [ %186, %183 ], [ %194, %192 ], [ %191, %187 ]
  %197 = getelementptr inbounds i8, i8* %97, i32 4
  %198 = tail call i32 @llvm.abs.i32(i32 %196, i1 true)
  %199 = icmp slt i32 %196, 0
  %200 = tail call fastcc i32 @_ntoa_long(void (i8, i8*, i32, i32)* noundef %10, i8* noundef %1, i32 noundef %17, i32 noundef %2, i32 noundef %198, i1 noundef zeroext %199, i32 noundef %149, i32 noundef %95, i32 noundef %72, i32 noundef %154)
  br label %240

201:                                              ; preds = %148
  %202 = and i32 %154, 512
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %214, label %204

204:                                              ; preds = %201
  %205 = ptrtoint i8* %97 to i32
  %206 = add i32 %205, 7
  %207 = and i32 %206, -8
  %208 = inttoptr i32 %207 to i8*
  %209 = getelementptr inbounds i8, i8* %208, i32 8
  %210 = inttoptr i32 %207 to i64*
  %211 = load i64, i64* %210, align 8
  %212 = zext i32 %149 to i64
  %213 = tail call fastcc i32 @_ntoa_long_long(void (i8, i8*, i32, i32)* noundef %10, i8* noundef %1, i32 noundef %17, i32 noundef %2, i64 noundef %211, i1 noundef zeroext false, i64 noundef %212, i32 noundef %95, i32 noundef %72, i32 noundef %154)
  br label %240

214:                                              ; preds = %201
  %215 = and i32 %154, 256
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %222, label %217

217:                                              ; preds = %214
  %218 = getelementptr inbounds i8, i8* %97, i32 4
  %219 = bitcast i8* %97 to i32*
  %220 = load i32, i32* %219, align 4
  %221 = tail call fastcc i32 @_ntoa_long(void (i8, i8*, i32, i32)* noundef %10, i8* noundef %1, i32 noundef %17, i32 noundef %2, i32 noundef %220, i1 noundef zeroext false, i32 noundef %149, i32 noundef %95, i32 noundef %72, i32 noundef %154)
  br label %240

222:                                              ; preds = %214
  %223 = and i32 %154, 64
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %229, label %225

225:                                              ; preds = %222
  %226 = bitcast i8* %97 to i32*
  %227 = load i32, i32* %226, align 4
  %228 = and i32 %227, 255
  br label %236

229:                                              ; preds = %222
  %230 = and i32 %154, 128
  %231 = icmp eq i32 %230, 0
  %232 = bitcast i8* %97 to i32*
  %233 = load i32, i32* %232, align 4
  %234 = and i32 %233, 65535
  %235 = select i1 %231, i32 %233, i32 %234
  br label %236

236:                                              ; preds = %229, %225
  %237 = phi i32 [ %228, %225 ], [ %235, %229 ]
  %238 = getelementptr inbounds i8, i8* %97, i32 4
  %239 = tail call fastcc i32 @_ntoa_long(void (i8, i8*, i32, i32)* noundef %10, i8* noundef %1, i32 noundef %17, i32 noundef %2, i32 noundef %237, i1 noundef zeroext false, i32 noundef %149, i32 noundef %95, i32 noundef %72, i32 noundef %154)
  br label %240

240:                                              ; preds = %204, %236, %217, %158, %195, %173
  %241 = phi i32 [ %169, %158 ], [ %179, %173 ], [ %200, %195 ], [ %213, %204 ], [ %221, %217 ], [ %239, %236 ]
  %242 = phi i8* [ %163, %158 ], [ %174, %173 ], [ %197, %195 ], [ %209, %204 ], [ %218, %217 ], [ %238, %236 ]
  %243 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %243, i8** %6, align 4, !tbaa !11
  br label %379

244:                                              ; preds = %131, %131
  %245 = icmp eq i8 %132, 70
  %246 = or i32 %134, 32
  %247 = select i1 %245, i32 %246, i32 %134
  %248 = ptrtoint i8* %97 to i32
  %249 = add i32 %248, 7
  %250 = and i32 %249, -8
  %251 = inttoptr i32 %250 to i8*
  %252 = getelementptr inbounds i8, i8* %251, i32 8
  %253 = inttoptr i32 %250 to double*
  %254 = load double, double* %253, align 8
  %255 = tail call fastcc i32 @_ftoa(void (i8, i8*, i32, i32)* noundef %10, i8* noundef %1, i32 noundef %17, i32 noundef %2, double noundef %254, i32 noundef %95, i32 noundef %72, i32 noundef %247)
  %256 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %256, i8** %6, align 4, !tbaa !11
  br label %379

257:                                              ; preds = %131, %131
  %258 = or i32 %134, 2048
  br label %259

259:                                              ; preds = %131, %131, %257
  %260 = phi i32 [ %258, %257 ], [ %134, %131 ], [ %134, %131 ]
  switch i8 %132, label %263 [
    i8 69, label %261
    i8 71, label %261
  ]

261:                                              ; preds = %259, %259
  %262 = or i32 %260, 32
  br label %263

263:                                              ; preds = %259, %261
  %264 = phi i32 [ %262, %261 ], [ %260, %259 ]
  %265 = ptrtoint i8* %97 to i32
  %266 = add i32 %265, 7
  %267 = and i32 %266, -8
  %268 = inttoptr i32 %267 to i8*
  %269 = getelementptr inbounds i8, i8* %268, i32 8
  %270 = inttoptr i32 %267 to double*
  %271 = load double, double* %270, align 8
  %272 = tail call fastcc i32 @_etoa(void (i8, i8*, i32, i32)* noundef %10, i8* noundef %1, i32 noundef %17, i32 noundef %2, double noundef %271, i32 noundef %95, i32 noundef %72, i32 noundef %264)
  %273 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %273, i8** %6, align 4, !tbaa !11
  br label %379

274:                                              ; preds = %131
  %275 = and i32 %134, 2
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %287

277:                                              ; preds = %274
  %278 = icmp ugt i32 %72, 1
  br i1 %278, label %279, label %287

279:                                              ; preds = %277
  %280 = add i32 %72, 1
  br label %281

281:                                              ; preds = %279, %281
  %282 = phi i32 [ %285, %281 ], [ 2, %279 ]
  %283 = phi i32 [ %284, %281 ], [ %17, %279 ]
  %284 = add i32 %283, 1
  tail call void %10(i8 noundef zeroext 32, i8* noundef %1, i32 noundef %283, i32 noundef %2) #30
  %285 = add i32 %282, 1
  %286 = icmp eq i32 %282, %72
  br i1 %286, label %287, label %281, !llvm.loop !191

287:                                              ; preds = %281, %277, %274
  %288 = phi i32 [ %17, %274 ], [ %17, %277 ], [ %284, %281 ]
  %289 = phi i32 [ 1, %274 ], [ 2, %277 ], [ %280, %281 ]
  %290 = getelementptr inbounds i8, i8* %97, i32 4
  %291 = bitcast i8* %97 to i32*
  %292 = load i32, i32* %291, align 4
  %293 = trunc i32 %292 to i8
  %294 = add i32 %288, 1
  tail call void %10(i8 noundef zeroext %293, i8* noundef %1, i32 noundef %288, i32 noundef %2) #30
  %295 = xor i1 %276, true
  %296 = icmp ult i32 %289, %72
  %297 = select i1 %295, i1 %296, i1 false
  br i1 %297, label %298, label %304

298:                                              ; preds = %287, %298
  %299 = phi i32 [ %301, %298 ], [ %289, %287 ]
  %300 = phi i32 [ %302, %298 ], [ %294, %287 ]
  %301 = add i32 %299, 1
  %302 = add i32 %300, 1
  tail call void %10(i8 noundef zeroext 32, i8* noundef %1, i32 noundef %300, i32 noundef %2) #30
  %303 = icmp eq i32 %301, %72
  br i1 %303, label %304, label %298, !llvm.loop !192

304:                                              ; preds = %298, %287
  %305 = phi i32 [ %294, %287 ], [ %302, %298 ]
  %306 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %306, i8** %6, align 4, !tbaa !11
  br label %379

307:                                              ; preds = %131
  %308 = getelementptr inbounds i8, i8* %97, i32 4
  %309 = bitcast i8* %97 to i8**
  %310 = load i8*, i8** %309, align 4
  %311 = icmp eq i32 %95, 0
  %312 = select i1 %311, i32 -1, i32 %95
  %313 = tail call fastcc i32 @_strnlen_s(i8* noundef %310, i32 noundef %312)
  %314 = and i32 %134, 1024
  %315 = icmp eq i32 %314, 0
  %316 = icmp ult i32 %313, %95
  %317 = select i1 %315, i1 true, i1 %316
  %318 = select i1 %317, i32 %313, i32 %95
  %319 = and i32 %134, 2
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %332

321:                                              ; preds = %307
  %322 = add i32 %318, 1
  %323 = icmp ult i32 %318, %72
  br i1 %323, label %324, label %332

324:                                              ; preds = %321
  %325 = add i32 %72, 1
  br label %326

326:                                              ; preds = %324, %326
  %327 = phi i32 [ %330, %326 ], [ %322, %324 ]
  %328 = phi i32 [ %329, %326 ], [ %17, %324 ]
  %329 = add i32 %328, 1
  tail call void %10(i8 noundef zeroext 32, i8* noundef %1, i32 noundef %328, i32 noundef %2) #30
  %330 = add i32 %327, 1
  %331 = icmp eq i32 %327, %72
  br i1 %331, label %332, label %326, !llvm.loop !193

332:                                              ; preds = %326, %321, %307
  %333 = phi i32 [ %17, %307 ], [ %17, %321 ], [ %329, %326 ]
  %334 = phi i32 [ %318, %307 ], [ %322, %321 ], [ %325, %326 ]
  %335 = load i8, i8* %310, align 1, !tbaa !8
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %351, label %337

337:                                              ; preds = %332, %345
  %338 = phi i8 [ %349, %345 ], [ %335, %332 ]
  %339 = phi i8* [ %347, %345 ], [ %310, %332 ]
  %340 = phi i32 [ %346, %345 ], [ %95, %332 ]
  %341 = phi i32 [ %348, %345 ], [ %333, %332 ]
  br i1 %315, label %345, label %342

342:                                              ; preds = %337
  %343 = add i32 %340, -1
  %344 = icmp eq i32 %340, 0
  br i1 %344, label %351, label %345

345:                                              ; preds = %337, %342
  %346 = phi i32 [ %343, %342 ], [ %340, %337 ]
  %347 = getelementptr inbounds i8, i8* %339, i32 1
  %348 = add i32 %341, 1
  tail call void %10(i8 noundef zeroext %338, i8* noundef %1, i32 noundef %341, i32 noundef %2) #30
  %349 = load i8, i8* %347, align 1, !tbaa !8
  %350 = icmp eq i8 %349, 0
  br i1 %350, label %351, label %337, !llvm.loop !194

351:                                              ; preds = %342, %345, %332
  %352 = phi i32 [ %333, %332 ], [ %348, %345 ], [ %341, %342 ]
  %353 = xor i1 %320, true
  %354 = icmp ult i32 %334, %72
  %355 = select i1 %353, i1 %354, i1 false
  br i1 %355, label %356, label %362

356:                                              ; preds = %351, %356
  %357 = phi i32 [ %359, %356 ], [ %334, %351 ]
  %358 = phi i32 [ %360, %356 ], [ %352, %351 ]
  %359 = add i32 %357, 1
  %360 = add i32 %358, 1
  tail call void %10(i8 noundef zeroext 32, i8* noundef %1, i32 noundef %358, i32 noundef %2) #30
  %361 = icmp eq i32 %359, %72
  br i1 %361, label %362, label %356, !llvm.loop !195

362:                                              ; preds = %356, %351
  %363 = phi i32 [ %352, %351 ], [ %360, %356 ]
  %364 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %364, i8** %6, align 4, !tbaa !11
  br label %379

365:                                              ; preds = %131
  %366 = or i32 %134, 33
  %367 = getelementptr inbounds i8, i8* %97, i32 4
  %368 = bitcast i8* %97 to i8**
  %369 = load i8*, i8** %368, align 4
  %370 = ptrtoint i8* %369 to i32
  %371 = tail call fastcc i32 @_ntoa_long(void (i8, i8*, i32, i32)* noundef %10, i8* noundef %1, i32 noundef %17, i32 noundef %2, i32 noundef %370, i1 noundef zeroext false, i32 noundef 16, i32 noundef %95, i32 noundef 8, i32 noundef %366)
  %372 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %372, i8** %6, align 4, !tbaa !11
  br label %379

373:                                              ; preds = %131
  %374 = add i32 %17, 1
  tail call void %10(i8 noundef zeroext 37, i8* noundef %1, i32 noundef %17, i32 noundef %2) #30
  %375 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %375, i8** %6, align 4, !tbaa !11
  br label %379

376:                                              ; preds = %131
  %377 = add i32 %17, 1
  tail call void %10(i8 noundef zeroext %132, i8* noundef %1, i32 noundef %17, i32 noundef %2) #30
  %378 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %378, i8** %6, align 4, !tbaa !11
  br label %379

379:                                              ; preds = %376, %373, %365, %362, %304, %263, %244, %240
  %380 = phi i8* [ %378, %376 ], [ %375, %373 ], [ %372, %365 ], [ %364, %362 ], [ %306, %304 ], [ %273, %263 ], [ %256, %244 ], [ %243, %240 ]
  %381 = phi i32 [ %377, %376 ], [ %374, %373 ], [ %371, %365 ], [ %363, %362 ], [ %305, %304 ], [ %272, %263 ], [ %255, %244 ], [ %241, %240 ]
  %382 = phi i8* [ %97, %376 ], [ %97, %373 ], [ %367, %365 ], [ %308, %362 ], [ %290, %304 ], [ %269, %263 ], [ %252, %244 ], [ %242, %240 ]
  br label %11, !llvm.loop !189

383:                                              ; preds = %15
  %384 = icmp ult i32 %17, %2
  %385 = add i32 %2, -1
  %386 = select i1 %384, i32 %17, i32 %385
  tail call void %10(i8 noundef zeroext 0, i8* noundef %1, i32 noundef %386, i32 noundef %2) #30
  ret i32 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn
define internal void @_out_null(i8 noundef zeroext %0, i8* nocapture noundef %1, i32 noundef %2, i32 noundef %3) #12 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn
define internal fastcc zeroext i1 @_is_digit(i8 noundef zeroext %0) unnamed_addr #12 {
  %2 = add i8 %0, -48
  %3 = icmp ult i8 %2, 10
  ret i1 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind
define internal fastcc i32 @_atoi(i8** nocapture noundef %0) unnamed_addr #17 {
  %2 = load i8*, i8** %0, align 4, !tbaa !11
  %3 = load i8, i8* %2, align 1, !tbaa !8
  %4 = tail call fastcc zeroext i1 @_is_digit(i8 noundef zeroext %3)
  br i1 %4, label %5, label %16

5:                                                ; preds = %1, %5
  %6 = phi i8* [ %9, %5 ], [ %2, %1 ]
  %7 = phi i32 [ %13, %5 ], [ 0, %1 ]
  %8 = mul i32 %7, 10
  %9 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %9, i8** %0, align 4, !tbaa !11
  %10 = load i8, i8* %6, align 1, !tbaa !8
  %11 = zext i8 %10 to i32
  %12 = add i32 %8, -48
  %13 = add i32 %12, %11
  %14 = load i8, i8* %9, align 1, !tbaa !8
  %15 = tail call fastcc zeroext i1 @_is_digit(i8 noundef zeroext %14)
  br i1 %15, label %5, label %16, !llvm.loop !196

16:                                               ; preds = %5, %1
  %17 = phi i32 [ 0, %1 ], [ %13, %5 ]
  ret i32 %17
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #14

; Function Attrs: noinline nounwind
define internal fastcc i32 @_ntoa_long_long(void (i8, i8*, i32, i32)* nocapture noundef readonly %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i1 noundef zeroext %5, i64 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) unnamed_addr #3 {
  %11 = alloca [32 x i8], align 1
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %12) #30
  %13 = icmp ne i64 %4, 0
  %14 = and i32 %9, -17
  %15 = select i1 %13, i32 %9, i32 %14
  %16 = and i32 %15, 1024
  %17 = icmp eq i32 %16, 0
  %18 = or i1 %13, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %10
  %20 = and i32 %15, 32
  %21 = xor i32 %20, 97
  %22 = add nuw nsw i32 %21, 246
  br label %23

23:                                               ; preds = %19, %23
  %24 = phi i32 [ %36, %23 ], [ 0, %19 ]
  %25 = phi i64 [ %27, %23 ], [ %4, %19 ]
  %26 = freeze i64 %25
  %27 = udiv i64 %26, %6
  %28 = mul i64 %27, %6
  %29 = sub i64 %26, %28
  %30 = trunc i64 %29 to i32
  %31 = and i32 %30, 254
  %32 = icmp ult i32 %31, 10
  %33 = select i1 %32, i32 48, i32 %22
  %34 = add i32 %33, %30
  %35 = trunc i32 %34 to i8
  %36 = add nuw nsw i32 %24, 1
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i32 0, i32 %24
  store i8 %35, i8* %37, align 1, !tbaa !8
  %38 = icmp uge i64 %25, %6
  %39 = icmp ult i32 %24, 31
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %23, label %41, !llvm.loop !197

41:                                               ; preds = %23, %10
  %42 = phi i32 [ 0, %10 ], [ %36, %23 ]
  %43 = trunc i64 %6 to i32
  %44 = call fastcc i32 @_ntoa_format(void (i8, i8*, i32, i32)* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i8* noundef nonnull %12, i32 noundef %42, i1 noundef zeroext %5, i32 noundef %43, i32 noundef %7, i32 noundef %8, i32 noundef %15)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %12) #30
  ret i32 %44
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #14

; Function Attrs: noinline nounwind
define internal fastcc i32 @_ntoa_long(void (i8, i8*, i32, i32)* nocapture noundef readonly %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) unnamed_addr #3 {
  %11 = alloca [32 x i8], align 1
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %12) #30
  %13 = icmp ne i32 %4, 0
  %14 = and i32 %9, -17
  %15 = select i1 %13, i32 %9, i32 %14
  %16 = and i32 %15, 1024
  %17 = icmp eq i32 %16, 0
  %18 = or i1 %13, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %10
  %20 = and i32 %15, 32
  %21 = xor i32 %20, 97
  %22 = add nuw nsw i32 %21, 246
  br label %23

23:                                               ; preds = %19, %23
  %24 = phi i32 [ %35, %23 ], [ 0, %19 ]
  %25 = phi i32 [ %27, %23 ], [ %4, %19 ]
  %26 = freeze i32 %25
  %27 = udiv i32 %26, %6
  %28 = mul i32 %27, %6
  %29 = sub i32 %26, %28
  %30 = and i32 %29, 254
  %31 = icmp ult i32 %30, 10
  %32 = select i1 %31, i32 48, i32 %22
  %33 = add i32 %29, %32
  %34 = trunc i32 %33 to i8
  %35 = add nuw nsw i32 %24, 1
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i32 0, i32 %24
  store i8 %34, i8* %36, align 1, !tbaa !8
  %37 = icmp uge i32 %25, %6
  %38 = icmp ult i32 %24, 31
  %39 = select i1 %37, i1 %38, i1 false
  br i1 %39, label %23, label %40, !llvm.loop !198

40:                                               ; preds = %23, %10
  %41 = phi i32 [ 0, %10 ], [ %35, %23 ]
  %42 = call fastcc i32 @_ntoa_format(void (i8, i8*, i32, i32)* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i8* noundef nonnull %12, i32 noundef %41, i1 noundef zeroext %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %15)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %12) #30
  ret i32 %42
}

; Function Attrs: noinline nounwind
define internal fastcc i32 @_ftoa(void (i8, i8*, i32, i32)* nocapture noundef readonly %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #3 {
  %9 = alloca [32 x i8], align 1
  %10 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 0
  %11 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %11) #30
  %12 = fcmp uno double %4, 0.000000e+00
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = tail call fastcc i32 @_out_rev(void (i8, i8*, i32, i32)* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i32 0, i32 0), i32 noundef 3, i32 noundef %6, i32 noundef %7)
  br label %253

15:                                               ; preds = %8
  %16 = fcmp olt double %4, 0xFFEFFFFFFFFFFFFF
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = tail call fastcc i32 @_out_rev(void (i8, i8*, i32, i32)* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.83, i32 0, i32 0), i32 noundef 4, i32 noundef %6, i32 noundef %7)
  br label %253

19:                                               ; preds = %15
  %20 = fcmp ogt double %4, 0x7FEFFFFFFFFFFFFF
  br i1 %20, label %21, label %27

21:                                               ; preds = %19
  %22 = and i32 %7, 4
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.84, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.85, i32 0, i32 0)
  %25 = select i1 %23, i32 3, i32 4
  %26 = tail call fastcc i32 @_out_rev(void (i8, i8*, i32, i32)* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i8* noundef %24, i32 noundef %25, i32 noundef %6, i32 noundef %7)
  br label %253

27:                                               ; preds = %19
  %28 = fcmp ogt double %4, 1.000000e+09
  %29 = fcmp olt double %4, -1.000000e+09
  %30 = or i1 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = tail call fastcc i32 @_etoa(void (i8, i8*, i32, i32)* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7)
  br label %253

33:                                               ; preds = %27
  %34 = fcmp olt double %4, 0.000000e+00
  %35 = fsub double 0.000000e+00, %4
  %36 = select i1 %34, double %35, double %4
  %37 = and i32 %7, 1024
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 6, i32 %5
  %40 = icmp ugt i32 %39, 9
  br i1 %40, label %41, label %70

41:                                               ; preds = %33
  %42 = add i32 %39, -10
  %43 = call i32 @llvm.umin.i32(i32 %42, i32 31)
  %44 = add nuw nsw i32 %43, 1
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 %10, i8 48, i32 %44, i1 false), !tbaa !8
  %45 = add nuw nsw i32 %43, 1
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %43, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %41
  %49 = and i32 %45, 62
  br label %50

50:                                               ; preds = %50, %48
  %51 = phi i32 [ 0, %48 ], [ %54, %50 ]
  %52 = phi i32 [ %39, %48 ], [ %55, %50 ]
  %53 = phi i32 [ 0, %48 ], [ %56, %50 ]
  %54 = add nuw nsw i32 %51, 2
  %55 = add i32 %52, -2
  %56 = add i32 %53, 2
  %57 = icmp eq i32 %56, %49
  br i1 %57, label %58, label %50, !llvm.loop !199

58:                                               ; preds = %50
  %59 = or i32 %51, 1
  br label %60

60:                                               ; preds = %58, %41
  %61 = phi i32 [ undef, %41 ], [ %59, %58 ]
  %62 = phi i32 [ undef, %41 ], [ %55, %58 ]
  %63 = phi i32 [ 0, %41 ], [ %54, %58 ]
  %64 = phi i32 [ %39, %41 ], [ %55, %58 ]
  %65 = icmp eq i32 %46, 0
  %66 = add i32 %64, -1
  %67 = select i1 %65, i32 %61, i32 %63
  %68 = select i1 %65, i32 %62, i32 %66
  %69 = icmp ult i32 %67, 31
  br label %70

70:                                               ; preds = %60, %33
  %71 = phi i32 [ %39, %33 ], [ %68, %60 ]
  %72 = phi i32 [ 0, %33 ], [ %44, %60 ]
  %73 = phi i1 [ true, %33 ], [ %69, %60 ]
  %74 = fptosi double %36 to i32
  %75 = sitofp i32 %74 to double
  %76 = fsub double %36, %75
  %77 = getelementptr inbounds [10 x double], [10 x double]* @_ftoa.pow10, i32 0, i32 %71
  %78 = load double, double* %77, align 8, !tbaa !200
  %79 = fmul double %76, %78
  %80 = fptoui double %79 to i32
  %81 = uitofp i32 %80 to double
  %82 = fsub double %79, %81
  %83 = fcmp ogt double %82, 5.000000e-01
  br i1 %83, label %84, label %90

84:                                               ; preds = %70
  %85 = add i32 %80, 1
  %86 = uitofp i32 %85 to double
  %87 = fcmp ugt double %78, %86
  br i1 %87, label %99, label %88

88:                                               ; preds = %84
  %89 = add nsw i32 %74, 1
  br label %99

90:                                               ; preds = %70
  %91 = fcmp olt double %82, 5.000000e-01
  br i1 %91, label %99, label %92

92:                                               ; preds = %90
  %93 = icmp eq i32 %80, 0
  %94 = and i32 %80, 1
  %95 = icmp ne i32 %94, 0
  %96 = or i1 %93, %95
  %97 = zext i1 %96 to i32
  %98 = add i32 %97, %80
  br label %99

99:                                               ; preds = %92, %90, %84, %88
  %100 = phi i32 [ %89, %88 ], [ %74, %84 ], [ %74, %90 ], [ %74, %92 ]
  %101 = phi i32 [ 0, %88 ], [ %85, %84 ], [ %80, %90 ], [ %98, %92 ]
  %102 = icmp eq i32 %71, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %99
  %104 = sitofp i32 %100 to double
  %105 = fsub double %36, %104
  %106 = fcmp ueq double %105, 5.000000e-01
  %107 = and i32 %100, 1
  %108 = icmp ne i32 %107, 0
  %109 = select i1 %106, i1 %108, i1 false
  %110 = zext i1 %109 to i32
  %111 = add nsw i32 %100, %110
  br label %157

112:                                              ; preds = %99
  br i1 %73, label %113, label %209

113:                                              ; preds = %112, %113
  %114 = phi i32 [ %124, %113 ], [ %72, %112 ]
  %115 = phi i32 [ %119, %113 ], [ %101, %112 ]
  %116 = phi i32 [ %117, %113 ], [ %71, %112 ]
  %117 = add i32 %116, -1
  %118 = freeze i32 %115
  %119 = udiv i32 %118, 10
  %120 = mul i32 %119, 10
  %121 = sub i32 %118, %120
  %122 = trunc i32 %121 to i8
  %123 = or i8 %122, 48
  %124 = add nuw nsw i32 %114, 1
  %125 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %114
  store i8 %123, i8* %125, align 1, !tbaa !8
  %126 = icmp ugt i32 %115, 9
  %127 = icmp ult i32 %114, 31
  %128 = select i1 %126, i1 %127, i1 false
  br i1 %128, label %113, label %129, !llvm.loop !202

129:                                              ; preds = %113
  %130 = icmp ult i32 %114, 31
  %131 = xor i1 %130, true
  %132 = icmp eq i32 %117, 0
  %133 = select i1 %131, i1 true, i1 %132
  br i1 %133, label %151, label %134

134:                                              ; preds = %129, %143
  %135 = phi i32 [ %144, %143 ], [ %117, %129 ]
  %136 = phi i32 [ %145, %143 ], [ %124, %129 ]
  %137 = add i32 %136, 1
  %138 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %136
  store i8 48, i8* %138, align 1, !tbaa !8
  %139 = icmp ult i32 %137, 32
  %140 = xor i1 %139, true
  %141 = icmp eq i32 %135, 1
  %142 = select i1 %140, i1 true, i1 %141
  br i1 %142, label %151, label %143, !llvm.loop !203

143:                                              ; preds = %134
  %144 = add i32 %135, -2
  %145 = add i32 %136, 2
  %146 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %137
  store i8 48, i8* %146, align 1, !tbaa !8
  %147 = icmp ult i32 %145, 32
  %148 = xor i1 %147, true
  %149 = icmp eq i32 %144, 0
  %150 = select i1 %148, i1 true, i1 %149
  br i1 %150, label %151, label %134, !llvm.loop !203

151:                                              ; preds = %134, %143, %129
  %152 = phi i32 [ %124, %129 ], [ %137, %134 ], [ %145, %143 ]
  %153 = phi i1 [ %130, %129 ], [ %139, %134 ], [ %147, %143 ]
  br i1 %153, label %154, label %209

154:                                              ; preds = %151
  %155 = add nuw nsw i32 %152, 1
  %156 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %152
  store i8 46, i8* %156, align 1, !tbaa !8
  br label %157

157:                                              ; preds = %103, %154
  %158 = phi i32 [ %155, %154 ], [ %72, %103 ]
  %159 = phi i32 [ %100, %154 ], [ %111, %103 ]
  %160 = icmp ult i32 %158, 32
  br i1 %160, label %161, label %209

161:                                              ; preds = %157, %198
  %162 = phi i32 [ %202, %198 ], [ %158, %157 ]
  %163 = phi i32 [ %204, %198 ], [ %159, %157 ]
  %164 = freeze i32 %163
  %165 = sdiv i32 %164, 10
  %166 = mul i32 %165, 10
  %167 = sub i32 %164, %166
  %168 = trunc i32 %167 to i8
  %169 = add nsw i8 %168, 48
  %170 = add nuw nsw i32 %162, 1
  %171 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %162
  store i8 %169, i8* %171, align 1, !tbaa !8
  %172 = add i32 %163, -10
  %173 = icmp ult i32 %172, -19
  %174 = icmp ult i32 %162, 31
  %175 = select i1 %173, i1 %174, i1 false
  br i1 %175, label %176, label %209, !llvm.loop !204

176:                                              ; preds = %161
  %177 = srem i32 %165, 10
  %178 = trunc i32 %177 to i8
  %179 = add nsw i8 %178, 48
  %180 = add nuw nsw i32 %162, 2
  %181 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %170
  store i8 %179, i8* %181, align 1, !tbaa !8
  %182 = sdiv i32 %163, 100
  %183 = add nsw i32 %165, -10
  %184 = icmp ult i32 %183, -19
  %185 = icmp ult i32 %162, 30
  %186 = select i1 %184, i1 %185, i1 false
  br i1 %186, label %187, label %209, !llvm.loop !204

187:                                              ; preds = %176
  %188 = srem i32 %182, 10
  %189 = trunc i32 %188 to i8
  %190 = add nsw i8 %189, 48
  %191 = add nuw nsw i32 %162, 3
  %192 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %180
  store i8 %190, i8* %192, align 1, !tbaa !8
  %193 = sdiv i32 %163, 1000
  %194 = add nsw i32 %182, -10
  %195 = icmp ult i32 %194, -19
  %196 = icmp ult i32 %162, 29
  %197 = select i1 %195, i1 %196, i1 false
  br i1 %197, label %198, label %209, !llvm.loop !204

198:                                              ; preds = %187
  %199 = srem i32 %193, 10
  %200 = trunc i32 %199 to i8
  %201 = add nsw i8 %200, 48
  %202 = add nuw nsw i32 %162, 4
  %203 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %191
  store i8 %201, i8* %203, align 1, !tbaa !8
  %204 = sdiv i32 %163, 10000
  %205 = add nsw i32 %193, -10
  %206 = icmp ult i32 %205, -19
  %207 = icmp ult i32 %162, 28
  %208 = select i1 %206, i1 %207, i1 false
  br i1 %208, label %161, label %209, !llvm.loop !204

209:                                              ; preds = %161, %176, %187, %198, %112, %151, %157
  %210 = phi i32 [ 32, %157 ], [ %152, %151 ], [ 32, %112 ], [ %170, %161 ], [ %180, %176 ], [ %191, %187 ], [ %202, %198 ]
  %211 = and i32 %7, 3
  %212 = icmp eq i32 %211, 1
  br i1 %212, label %213, label %235

213:                                              ; preds = %209
  %214 = icmp eq i32 %6, 0
  br i1 %214, label %221, label %215

215:                                              ; preds = %213
  %216 = and i32 %7, 12
  %217 = icmp ne i32 %216, 0
  %218 = or i1 %34, %217
  %219 = sext i1 %218 to i32
  %220 = add i32 %219, %6
  br label %221

221:                                              ; preds = %215, %213
  %222 = phi i32 [ 0, %213 ], [ %220, %215 ]
  %223 = icmp ult i32 %210, %222
  %224 = icmp ult i32 %210, 32
  %225 = and i1 %223, %224
  br i1 %225, label %226, label %235

226:                                              ; preds = %221
  %227 = getelementptr [32 x i8], [32 x i8]* %9, i32 0, i32 %210
  %228 = xor i32 %210, -1
  %229 = add i32 %222, %228
  %230 = sub nuw nsw i32 31, %210
  %231 = call i32 @llvm.umin.i32(i32 %229, i32 %230)
  %232 = add nuw i32 %231, 1
  call void @llvm.memset.p0i8.i32(i8* align 1 %227, i8 48, i32 %232, i1 false), !tbaa !8
  %233 = add i32 %210, %231
  %234 = add i32 %233, 1
  br label %235

235:                                              ; preds = %226, %221, %209
  %236 = phi i32 [ %6, %209 ], [ %222, %221 ], [ %222, %226 ]
  %237 = phi i32 [ %210, %209 ], [ %210, %221 ], [ %234, %226 ]
  %238 = icmp ult i32 %237, 32
  br i1 %238, label %239, label %250

239:                                              ; preds = %235
  br i1 %34, label %246, label %240

240:                                              ; preds = %239
  %241 = and i32 %7, 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %240
  %244 = and i32 %7, 8
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %250, label %246

246:                                              ; preds = %243, %240, %239
  %247 = phi i8 [ 45, %239 ], [ 43, %240 ], [ 32, %243 ]
  %248 = add nuw nsw i32 %237, 1
  %249 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i32 0, i32 %237
  store i8 %247, i8* %249, align 1, !tbaa !8
  br label %250

250:                                              ; preds = %246, %243, %235
  %251 = phi i32 [ %237, %243 ], [ %237, %235 ], [ %248, %246 ]
  %252 = call fastcc i32 @_out_rev(void (i8, i8*, i32, i32)* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i8* noundef nonnull %11, i32 noundef %251, i32 noundef %236, i32 noundef %7)
  br label %253

253:                                              ; preds = %250, %31, %21, %17, %13
  %254 = phi i32 [ %14, %13 ], [ %18, %17 ], [ %26, %21 ], [ %32, %31 ], [ %252, %250 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %11) #30
  ret i32 %254
}

; Function Attrs: noinline nounwind
define internal fastcc i32 @_etoa(void (i8, i8*, i32, i32)* nocapture noundef readonly %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #3 {
  %9 = fcmp uno double %4, 0.000000e+00
  %10 = fcmp ogt double %4, 0x7FEFFFFFFFFFFFFF
  %11 = or i1 %9, %10
  %12 = fcmp olt double %4, 0xFFEFFFFFFFFFFFFF
  %13 = or i1 %12, %11
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = tail call fastcc i32 @_ftoa(void (i8, i8*, i32, i32)* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7)
  br label %131

16:                                               ; preds = %8
  %17 = fcmp olt double %4, 0.000000e+00
  %18 = fneg double %4
  %19 = select i1 %17, double %18, double %4
  %20 = and i32 %7, 1024
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 6, i32 %5
  %23 = bitcast double %19 to i64
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %70, label %25

25:                                               ; preds = %16
  %26 = lshr i64 %23, 52
  %27 = trunc i64 %26 to i32
  %28 = and i32 %27, 2047
  %29 = add nsw i32 %28, -1023
  %30 = and i64 %23, 4503599627370495
  %31 = or i64 %30, 4607182418800017408
  %32 = sitofp i32 %29 to double
  %33 = tail call double @llvm.fmuladd.f64(double %32, double 0x3FD34413509F79FB, double 0x3FC68A288B60C8B3)
  %34 = bitcast i64 %31 to double
  %35 = fadd double %34, -1.500000e+00
  %36 = tail call double @llvm.fmuladd.f64(double %35, double 0x3FD287A7636F4361, double %33)
  %37 = fptosi double %36 to i32
  %38 = sitofp i32 %37 to double
  %39 = tail call double @llvm.fmuladd.f64(double %38, double 0x400A934F0979A371, double 5.000000e-01)
  %40 = fptosi double %39 to i32
  %41 = sitofp i32 %40 to double
  %42 = fmul double %41, 0xBFE62E42FEFA39EF
  %43 = tail call double @llvm.fmuladd.f64(double %38, double 0x40026BB1BBB55516, double %42)
  %44 = fmul double %43, %43
  %45 = add nsw i32 %40, 1023
  %46 = zext i32 %45 to i64
  %47 = shl i64 %46, 52
  %48 = fmul double %43, 2.000000e+00
  %49 = fsub double 2.000000e+00, %43
  %50 = fdiv double %44, 1.400000e+01
  %51 = fadd double %50, 1.000000e+01
  %52 = fdiv double %44, %51
  %53 = fadd double %52, 6.000000e+00
  %54 = fdiv double %44, %53
  %55 = fadd double %49, %54
  %56 = fdiv double %48, %55
  %57 = fadd double %56, 1.000000e+00
  %58 = bitcast i64 %47 to double
  %59 = fmul double %57, %58
  %60 = fcmp olt double %19, %59
  %61 = fdiv double %59, 1.000000e+01
  %62 = select i1 %60, double %61, double %59
  %63 = sext i1 %60 to i32
  %64 = add nsw i32 %63, %37
  %65 = add i32 %64, 99
  %66 = icmp ult i32 %65, 199
  %67 = select i1 %66, i32 4, i32 5
  %68 = and i32 %7, 2048
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %94, label %73

70:                                               ; preds = %16
  %71 = and i32 %7, 2048
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %94, label %80

73:                                               ; preds = %25
  %74 = bitcast double %62 to i64
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = fcmp oge double %19, 1.000000e-04
  %78 = fcmp olt double %19, 1.000000e+06
  %79 = and i1 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %70, %76, %73
  %81 = phi double [ %62, %76 ], [ 0.000000e+00, %73 ], [ 0.000000e+00, %70 ]
  %82 = phi i32 [ %64, %76 ], [ %64, %73 ], [ 0, %70 ]
  %83 = icmp sgt i32 %22, %82
  %84 = xor i32 %82, -1
  %85 = add i32 %22, %84
  %86 = select i1 %83, i32 %85, i32 0
  %87 = or i32 %7, 1024
  br label %94

88:                                               ; preds = %76
  %89 = icmp eq i32 %22, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %88
  %91 = xor i1 %21, true
  %92 = sext i1 %91 to i32
  %93 = add i32 %22, %92
  br label %94

94:                                               ; preds = %70, %90, %80, %88, %25
  %95 = phi double [ %81, %80 ], [ %62, %88 ], [ %62, %25 ], [ %62, %90 ], [ 0.000000e+00, %70 ]
  %96 = phi i32 [ %87, %80 ], [ %7, %88 ], [ %7, %25 ], [ %7, %90 ], [ %7, %70 ]
  %97 = phi i32 [ 0, %80 ], [ %64, %88 ], [ %64, %25 ], [ %64, %90 ], [ 0, %70 ]
  %98 = phi i32 [ %86, %80 ], [ 0, %88 ], [ %22, %25 ], [ %93, %90 ], [ %22, %70 ]
  %99 = phi i32 [ 0, %80 ], [ %67, %88 ], [ %67, %25 ], [ %67, %90 ], [ 4, %70 ]
  %100 = tail call i32 @llvm.usub.sat.i32(i32 %6, i32 %99)
  %101 = and i32 %96, 2
  %102 = icmp ne i32 %101, 0
  %103 = icmp ne i32 %99, 0
  %104 = select i1 %102, i1 %103, i1 false
  %105 = select i1 %104, i32 0, i32 %100
  %106 = icmp eq i32 %97, 0
  %107 = select i1 %106, double 1.000000e+00, double %95
  %108 = fdiv double %19, %107
  %109 = fneg double %108
  %110 = select i1 %17, double %109, double %108
  %111 = and i32 %96, -2049
  %112 = tail call fastcc i32 @_ftoa(void (i8, i8*, i32, i32)* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, double noundef %110, i32 noundef %98, i32 noundef %105, i32 noundef %111)
  br i1 %103, label %113, label %131

113:                                              ; preds = %94
  %114 = trunc i32 %96 to i8
  %115 = and i8 %114, 32
  %116 = xor i8 %115, 101
  %117 = add i32 %112, 1
  tail call void %0(i8 noundef zeroext %116, i8* noundef %1, i32 noundef %112, i32 noundef %3) #30
  %118 = icmp slt i32 %97, 0
  %119 = sub nsw i32 0, %97
  %120 = select i1 %118, i32 %119, i32 %97
  %121 = add nsw i32 %99, -1
  %122 = tail call fastcc i32 @_ntoa_long(void (i8, i8*, i32, i32)* noundef %0, i8* noundef %1, i32 noundef %117, i32 noundef %3, i32 noundef %120, i1 noundef zeroext %118, i32 noundef 10, i32 noundef 0, i32 noundef %121, i32 noundef 5)
  %123 = sub i32 %122, %2
  %124 = icmp ult i32 %123, %6
  %125 = select i1 %102, i1 %124, i1 false
  br i1 %125, label %126, label %131

126:                                              ; preds = %113, %126
  %127 = phi i32 [ %128, %126 ], [ %122, %113 ]
  %128 = add i32 %127, 1
  tail call void %0(i8 noundef zeroext 32, i8* noundef %1, i32 noundef %127, i32 noundef %3) #30
  %129 = sub i32 %128, %2
  %130 = icmp ult i32 %129, %6
  br i1 %130, label %126, label %131, !llvm.loop !205

131:                                              ; preds = %126, %94, %113, %14
  %132 = phi i32 [ %15, %14 ], [ %122, %113 ], [ %112, %94 ], [ %128, %126 ]
  ret i32 %132
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly
define internal fastcc i32 @_strnlen_s(i8* noundef %0, i32 noundef %1) unnamed_addr #23 {
  %3 = load i8, i8* %0, align 1, !tbaa !8
  %4 = icmp eq i8 %3, 0
  %5 = icmp eq i32 %1, 0
  %6 = or i1 %4, %5
  br i1 %6, label %40, label %7

7:                                                ; preds = %2, %27
  %8 = phi i8* [ %29, %27 ], [ %0, %2 ]
  %9 = phi i32 [ %28, %27 ], [ %1, %2 ]
  %10 = getelementptr inbounds i8, i8* %8, i32 1
  %11 = load i8, i8* %10, align 1, !tbaa !8
  %12 = icmp eq i8 %11, 0
  %13 = icmp eq i32 %9, 1
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %38, label %15, !llvm.loop !206

15:                                               ; preds = %7
  %16 = getelementptr inbounds i8, i8* %8, i32 2
  %17 = load i8, i8* %16, align 1, !tbaa !8
  %18 = icmp eq i8 %17, 0
  %19 = icmp eq i32 %9, 2
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %36, label %21, !llvm.loop !206

21:                                               ; preds = %15
  %22 = getelementptr inbounds i8, i8* %8, i32 3
  %23 = load i8, i8* %22, align 1, !tbaa !8
  %24 = icmp eq i8 %23, 0
  %25 = icmp eq i32 %9, 3
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %34, label %27, !llvm.loop !206

27:                                               ; preds = %21
  %28 = add i32 %9, -4
  %29 = getelementptr inbounds i8, i8* %8, i32 4
  %30 = load i8, i8* %29, align 1, !tbaa !8
  %31 = icmp eq i8 %30, 0
  %32 = icmp eq i32 %28, 0
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %40, label %7, !llvm.loop !206

34:                                               ; preds = %21
  %35 = getelementptr inbounds i8, i8* %8, i32 3
  br label %40

36:                                               ; preds = %15
  %37 = getelementptr inbounds i8, i8* %8, i32 2
  br label %40

38:                                               ; preds = %7
  %39 = getelementptr inbounds i8, i8* %8, i32 1
  br label %40

40:                                               ; preds = %34, %36, %38, %27, %2
  %41 = phi i8* [ %0, %2 ], [ %35, %34 ], [ %37, %36 ], [ %39, %38 ], [ %29, %27 ]
  %42 = ptrtoint i8* %41 to i32
  %43 = ptrtoint i8* %0 to i32
  %44 = sub i32 %42, %43
  ret i32 %44
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #14

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #14

; Function Attrs: noinline nounwind
define internal fastcc i32 @_out_rev(void (i8, i8*, i32, i32)* nocapture noundef readonly %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i8* nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #3 {
  %9 = and i32 %7, 2
  %10 = icmp ne i32 %9, 0
  %11 = and i32 %7, 3
  %12 = icmp eq i32 %11, 0
  %13 = icmp ult i32 %5, %6
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %8, %15
  %16 = phi i32 [ %19, %15 ], [ %5, %8 ]
  %17 = phi i32 [ %18, %15 ], [ %2, %8 ]
  %18 = add i32 %17, 1
  tail call void %0(i8 noundef zeroext 32, i8* noundef %1, i32 noundef %17, i32 noundef %3) #30
  %19 = add i32 %16, 1
  %20 = icmp eq i32 %19, %6
  br i1 %20, label %21, label %15, !llvm.loop !207

21:                                               ; preds = %15, %8
  %22 = phi i32 [ %2, %8 ], [ %18, %15 ]
  %23 = icmp eq i32 %5, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %21, %24
  %25 = phi i32 [ %30, %24 ], [ %22, %21 ]
  %26 = phi i32 [ %27, %24 ], [ %5, %21 ]
  %27 = add i32 %26, -1
  %28 = getelementptr inbounds i8, i8* %4, i32 %27
  %29 = load i8, i8* %28, align 1, !tbaa !8
  %30 = add i32 %25, 1
  tail call void %0(i8 noundef zeroext %29, i8* noundef %1, i32 noundef %25, i32 noundef %3) #30
  %31 = icmp eq i32 %27, 0
  br i1 %31, label %32, label %24, !llvm.loop !208

32:                                               ; preds = %24, %21
  %33 = phi i32 [ %22, %21 ], [ %30, %24 ]
  %34 = sub i32 %33, %2
  %35 = icmp ult i32 %34, %6
  %36 = and i1 %10, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %32, %37
  %38 = phi i32 [ %39, %37 ], [ %33, %32 ]
  %39 = add i32 %38, 1
  tail call void %0(i8 noundef zeroext 32, i8* noundef %1, i32 noundef %38, i32 noundef %3) #30
  %40 = sub i32 %39, %2
  %41 = icmp ult i32 %40, %6
  br i1 %41, label %37, label %42, !llvm.loop !209

42:                                               ; preds = %37, %32
  %43 = phi i32 [ %33, %32 ], [ %39, %37 ]
  ret i32 %43
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #24

; Function Attrs: noinline nounwind
define internal fastcc i32 @_ntoa_format(void (i8, i8*, i32, i32)* nocapture noundef readonly %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i8* nocapture noundef %4, i32 noundef %5, i1 noundef zeroext %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) unnamed_addr #3 {
  %12 = and i32 %10, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %56

14:                                               ; preds = %11
  %15 = icmp eq i32 %9, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %14
  %17 = and i32 %10, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = and i32 %10, 12
  %21 = icmp ne i32 %20, 0
  %22 = or i1 %21, %6
  %23 = sext i1 %22 to i32
  %24 = add i32 %23, %9
  br label %25

25:                                               ; preds = %19, %16, %14
  %26 = phi i32 [ %9, %16 ], [ 0, %14 ], [ %24, %19 ]
  %27 = icmp ult i32 %5, %8
  %28 = icmp ult i32 %5, 32
  %29 = and i1 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = getelementptr i8, i8* %4, i32 %5
  %32 = xor i32 %5, -1
  %33 = add i32 %32, %8
  %34 = sub nuw nsw i32 31, %5
  %35 = call i32 @llvm.umin.i32(i32 %33, i32 %34)
  %36 = add nuw nsw i32 %35, 1
  call void @llvm.memset.p0i8.i32(i8* align 1 %31, i8 48, i32 %36, i1 false), !tbaa !8
  %37 = add nuw nsw i32 %35, %5
  %38 = add nuw nsw i32 %37, 1
  br label %39

39:                                               ; preds = %30, %25
  %40 = phi i32 [ %5, %25 ], [ %38, %30 ]
  %41 = and i32 %10, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %39
  %44 = icmp ult i32 %40, %26
  %45 = icmp ult i32 %40, 32
  %46 = and i1 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = getelementptr i8, i8* %4, i32 %40
  %49 = xor i32 %40, -1
  %50 = add i32 %26, %49
  %51 = sub nuw nsw i32 31, %40
  %52 = call i32 @llvm.umin.i32(i32 %50, i32 %51)
  %53 = add nuw i32 %52, 1
  call void @llvm.memset.p0i8.i32(i8* align 1 %48, i8 48, i32 %53, i1 false), !tbaa !8
  %54 = add i32 %40, %52
  %55 = add i32 %54, 1
  br label %56

56:                                               ; preds = %47, %39, %43, %11
  %57 = phi i32 [ %9, %11 ], [ %26, %43 ], [ %26, %39 ], [ %26, %47 ]
  %58 = phi i32 [ %5, %11 ], [ %40, %43 ], [ %40, %39 ], [ %55, %47 ]
  %59 = and i32 %10, 16
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %102, label %61

61:                                               ; preds = %56
  %62 = and i32 %10, 1024
  %63 = icmp eq i32 %62, 0
  %64 = icmp ne i32 %58, 0
  %65 = select i1 %63, i1 %64, i1 false
  br i1 %65, label %66, label %77

66:                                               ; preds = %61
  %67 = icmp eq i32 %58, %8
  %68 = icmp eq i32 %58, %57
  %69 = or i1 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = add i32 %58, -1
  %72 = icmp ne i32 %71, 0
  %73 = icmp eq i32 %7, 16
  %74 = and i1 %73, %72
  %75 = add i32 %58, -2
  %76 = select i1 %74, i32 %75, i32 %71
  br label %77

77:                                               ; preds = %70, %66, %61
  %78 = phi i32 [ %58, %61 ], [ %58, %66 ], [ %76, %70 ]
  %79 = icmp eq i32 %7, 16
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = and i32 %10, 32
  %82 = icmp eq i32 %81, 0
  %83 = icmp ult i32 %78, 32
  %84 = select i1 %82, i1 %83, i1 false
  br i1 %84, label %92, label %85

85:                                               ; preds = %80
  %86 = icmp ne i32 %81, 0
  %87 = select i1 %86, i1 %83, i1 false
  br i1 %87, label %92, label %96

88:                                               ; preds = %77
  %89 = icmp eq i32 %7, 2
  %90 = icmp ult i32 %78, 32
  %91 = select i1 %89, i1 %90, i1 false
  br i1 %91, label %92, label %96

92:                                               ; preds = %88, %85, %80
  %93 = phi i8 [ 120, %80 ], [ 88, %85 ], [ 98, %88 ]
  %94 = add nuw nsw i32 %78, 1
  %95 = getelementptr inbounds i8, i8* %4, i32 %78
  store i8 %93, i8* %95, align 1, !tbaa !8
  br label %96

96:                                               ; preds = %92, %85, %88
  %97 = phi i32 [ %78, %88 ], [ %78, %85 ], [ %94, %92 ]
  %98 = icmp ult i32 %97, 32
  br i1 %98, label %99, label %116

99:                                               ; preds = %96
  %100 = add nuw nsw i32 %97, 1
  %101 = getelementptr inbounds i8, i8* %4, i32 %97
  store i8 48, i8* %101, align 1, !tbaa !8
  br label %102

102:                                              ; preds = %99, %56
  %103 = phi i32 [ %100, %99 ], [ %58, %56 ]
  %104 = icmp ult i32 %103, 32
  br i1 %104, label %105, label %116

105:                                              ; preds = %102
  br i1 %6, label %112, label %106

106:                                              ; preds = %105
  %107 = and i32 %10, 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = and i32 %10, 8
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %109, %106, %105
  %113 = phi i8 [ 45, %105 ], [ 43, %106 ], [ 32, %109 ]
  %114 = add nuw nsw i32 %103, 1
  %115 = getelementptr inbounds i8, i8* %4, i32 %103
  store i8 %113, i8* %115, align 1, !tbaa !8
  br label %116

116:                                              ; preds = %112, %96, %109, %102
  %117 = phi i32 [ %103, %109 ], [ %103, %102 ], [ %97, %96 ], [ %114, %112 ]
  %118 = tail call fastcc i32 @_out_rev(void (i8, i8*, i32, i32)* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i8* noundef %4, i32 noundef %117, i32 noundef %57, i32 noundef %10)
  ret i32 %118
}

; Function Attrs: noinline nounwind
define dso_local i32 @__wrap_snprintf(i8* noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 {
  %4 = alloca %struct.__va_list, align 4
  %5 = bitcast %struct.__va_list* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #30
  call void @llvm.va_start(i8* nonnull %5)
  %6 = bitcast %struct.__va_list* %4 to i32*
  %7 = load i32, i32* %6, align 4
  %8 = insertvalue [1 x i32] poison, i32 %7, 0
  %9 = call i32 @_vsnprintf(void (i8, i8*, i32, i32)* noundef nonnull @_out_buffer, i8* noundef %0, i32 noundef %1, i8* noundef %2, [1 x i32] %8)
  call void @llvm.va_end(i8* nonnull %5)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #30
  ret i32 %9
}

; Function Attrs: noinline nounwind
define dso_local i32 @__wrap_vsnprintf(i8* noundef %0, i32 noundef %1, i8* noundef %2, [1 x i32] %3) local_unnamed_addr #3 {
  %5 = tail call i32 @_vsnprintf(void (i8, i8*, i32, i32)* noundef nonnull @_out_buffer, i8* noundef %0, i32 noundef %1, i8* noundef %2, [1 x i32] %3)
  ret i32 %5
}

; Function Attrs: noinline nounwind
define dso_local i32 @vfctprintf(void (i8, i8*)* noundef %0, i8* noundef %1, i8* noundef %2, [1 x i32] %3) local_unnamed_addr #3 {
  %5 = alloca %struct.out_fct_wrap_type, align 4
  %6 = bitcast %struct.out_fct_wrap_type* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #30
  %7 = getelementptr inbounds %struct.out_fct_wrap_type, %struct.out_fct_wrap_type* %5, i32 0, i32 0
  store void (i8, i8*)* %0, void (i8, i8*)** %7, align 4, !tbaa !210
  %8 = getelementptr inbounds %struct.out_fct_wrap_type, %struct.out_fct_wrap_type* %5, i32 0, i32 1
  store i8* %1, i8** %8, align 4, !tbaa !212
  %9 = call i32 @_vsnprintf(void (i8, i8*, i32, i32)* noundef nonnull @_out_fct, i8* noundef nonnull %6, i32 noundef -1, i8* noundef %2, [1 x i32] %3)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #30
  ret i32 %9
}

; Function Attrs: noinline nounwind
define internal void @_out_fct(i8 noundef zeroext %0, i8* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #3 {
  %5 = icmp eq i8 %0, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %4
  %7 = bitcast i8* %1 to void (i8, i8*)**
  %8 = load void (i8, i8*)*, void (i8, i8*)** %7, align 4, !tbaa !210
  %9 = getelementptr inbounds i8, i8* %1, i32 4
  %10 = bitcast i8* %9 to i8**
  %11 = load i8*, i8** %10, align 4, !tbaa !212
  tail call void %8(i8 noundef zeroext %0, i8* noundef %11) #30
  br label %12

12:                                               ; preds = %6, %4
  ret void
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @weak_raw_printf(i8* noundef %0, ...) local_unnamed_addr #3 {
  %2 = alloca %struct.__va_list, align 4
  %3 = bitcast %struct.__va_list* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #30
  call void @llvm.va_start(i8* nonnull %3)
  %4 = bitcast %struct.__va_list* %2 to i32*
  %5 = load i32, i32* %4, align 4
  %6 = insertvalue [1 x i32] poison, i32 %5, 0
  %7 = call zeroext i1 @weak_raw_vprintf(i8* noundef %0, [1 x i32] %6)
  call void @llvm.va_end(i8* nonnull %3)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #30
  ret i1 %7
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @weak_raw_vprintf(i8* noundef %0, [1 x i32] %1) local_unnamed_addr #3 {
  %3 = alloca [1 x i8], align 1
  %4 = load i32 (void (i8, i8*, i32, i32)*, i8*, i32, i8*, [1 x i32])*, i32 (void (i8, i8*, i32, i32)*, i8*, i32, i8*, [1 x i32])** @lazy_vsnprintf, align 4, !tbaa !11
  %5 = icmp eq i32 (void (i8, i8*, i32, i32)*, i8*, i32, i8*, [1 x i32])* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds [1 x i8], [1 x i8]* %3, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %7) #30
  %8 = call i32 @_vsnprintf(void (i8, i8*, i32, i32)* noundef nonnull @_out_char, i8* noundef nonnull %7, i32 noundef -1, i8* noundef %0, [1 x i32] %1), !callees !213
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %7) #30
  br label %11

9:                                                ; preds = %2
  %10 = tail call i32 @puts(i8* noundef nonnull dereferenceable(1) %0)
  br label %11

11:                                               ; preds = %9, %6
  %12 = xor i1 %5, true
  ret i1 %12
}

; Function Attrs: nofree noinline nounwind
define internal void @_out_char(i8 noundef zeroext %0, i8* nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3) #8 {
  %5 = icmp eq i8 %0, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  tail call fastcc void @_putchar(i8 noundef zeroext %0)
  br label %7

7:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: nofree noinline nounwind
define internal fastcc void @_putchar(i8 noundef zeroext %0) unnamed_addr #8 {
  %2 = zext i8 %0 to i32
  %3 = tail call i32 @putchar(i32 noundef %2)
  ret void
}

; Function Attrs: noinline nounwind
define dso_local i8* @rom_func_lookup(i32 noundef %0) local_unnamed_addr #3 {
  %2 = load i16, i16* inttoptr (i32 24 to i16*), align 8, !tbaa !154
  %3 = zext i16 %2 to i32
  %4 = inttoptr i32 %3 to i8* (i16*, i32)*
  %5 = load i16, i16* inttoptr (i32 20 to i16*), align 4, !tbaa !154
  %6 = zext i16 %5 to i32
  %7 = inttoptr i32 %6 to i16*
  %8 = tail call i8* %4(i16* noundef %7, i32 noundef %0) #30
  ret i8* %8
}

; Function Attrs: noinline nounwind
define dso_local i8* @rom_data_lookup(i32 noundef %0) local_unnamed_addr #3 {
  %2 = load i16, i16* inttoptr (i32 24 to i16*), align 8, !tbaa !154
  %3 = zext i16 %2 to i32
  %4 = inttoptr i32 %3 to i8* (i16*, i32)*
  %5 = load i16, i16* inttoptr (i32 22 to i16*), align 2, !tbaa !154
  %6 = zext i16 %5 to i32
  %7 = inttoptr i32 %6 to i16*
  %8 = tail call i8* %4(i16* noundef %7, i32 noundef %0) #30
  ret i8* %8
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @rom_funcs_lookup(i32* nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %6, %2
  %5 = phi i1 [ true, %2 ], [ %14, %6 ]
  ret i1 %5

6:                                                ; preds = %2, %6
  %7 = phi i32 [ %15, %6 ], [ 0, %2 ]
  %8 = phi i1 [ %14, %6 ], [ true, %2 ]
  %9 = getelementptr inbounds i32, i32* %0, i32 %7
  %10 = load i32, i32* %9, align 4, !tbaa !18
  %11 = tail call i8* @rom_func_lookup(i32 noundef %10)
  %12 = ptrtoint i8* %11 to i32
  store i32 %12, i32* %9, align 4, !tbaa !18
  %13 = icmp ne i8* %11, null
  %14 = select i1 %13, i1 %8, i1 false
  %15 = add nuw i32 %7, 1
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %4, label %6, !llvm.loop !214
}

; Function Attrs: noinline nounwind
define dso_local void @__aeabi_double_init() local_unnamed_addr #3 {
  %1 = tail call fastcc zeroext i8 @rp2040_rom_version()
  switch i8 %1, label %3 [
    i8 1, label %2
    i8 0, label %6
  ]

2:                                                ; preds = %0
  store i32 ptrtoint (void ()* @double_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sd_table, i32 0, i32 0), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @double_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sd_table, i32 0, i32 1), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @double_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sd_table, i32 0, i32 2), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @double_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sd_table, i32 0, i32 3), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @double_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sd_table, i32 0, i32 4), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @double_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sd_table, i32 0, i32 5), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @double_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sd_table, i32 0, i32 6), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @double_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sd_table, i32 0, i32 7), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @double_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sd_table, i32 0, i32 8), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @double_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sd_table, i32 0, i32 9), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @double_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sd_table, i32 0, i32 10), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @double_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sd_table, i32 0, i32 11), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @double_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sd_table, i32 0, i32 12), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @double_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sd_table, i32 0, i32 13), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @double_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sd_table, i32 0, i32 14), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @double_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sd_table, i32 0, i32 15), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @double_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sd_table, i32 0, i32 16), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @double_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sd_table, i32 0, i32 17), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @double_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sd_table, i32 0, i32 19), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @double_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sd_table, i32 0, i32 20), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @double_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sd_table, i32 0, i32 21), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @double_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sd_table, i32 0, i32 22), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @double_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sd_table, i32 0, i32 23), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @double_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sd_table, i32 0, i32 24), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @double_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sd_table, i32 0, i32 25), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @double_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sd_table, i32 0, i32 26), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @double_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sd_table, i32 0, i32 27), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @double_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sd_table, i32 0, i32 28), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @double_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sd_table, i32 0, i32 29), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @double_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sd_table, i32 0, i32 30), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @double_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sd_table, i32 0, i32 31), align 4, !tbaa !18
  br label %6

3:                                                ; preds = %0
  %4 = tail call i8* @rom_data_lookup(i32 noundef 17491) #30
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(128) bitcast ([64 x i32]* @sd_table to i8*), i8* noundef nonnull align 1 dereferenceable(128) %4, i32 128, i1 false)
  %5 = icmp eq i8 %1, 2
  br i1 %5, label %6, label %7

6:                                                ; preds = %0, %2, %3
  store i32 ptrtoint (void ()* @double_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sd_table, i32 0, i32 18), align 4, !tbaa !18
  br label %7

7:                                                ; preds = %6, %3
  %8 = tail call i8* @rom_func_lookup(i32 noundef 13132) #30
  store i8* %8, i8** @sf_clz_func, align 4, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define internal fastcc zeroext i8 @rp2040_rom_version() unnamed_addr #10 {
  %1 = load i8, i8* inttoptr (i32 19 to i8*), align 1, !tbaa !8
  ret i8 %1
}

declare dso_local void @double_table_shim_on_use_helper() #21

; Function Attrs: noinline nounwind
define dso_local void @__aeabi_float_init() local_unnamed_addr #3 {
  %1 = tail call fastcc zeroext i8 @rp2040_rom_version.90()
  %2 = tail call i8* @rom_data_lookup(i32 noundef 18003) #30
  switch i8 %1, label %4 [
    i8 1, label %3
    i8 0, label %5
  ]

3:                                                ; preds = %0
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(84) bitcast ([64 x i32]* @sf_table to i8*), i8* noundef nonnull align 1 dereferenceable(84) %2, i32 84, i1 false)
  store i32 ptrtoint (void ()* @float_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sf_table, i32 0, i32 21), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @float_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sf_table, i32 0, i32 22), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @float_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sf_table, i32 0, i32 23), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @float_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sf_table, i32 0, i32 24), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @float_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sf_table, i32 0, i32 25), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @float_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sf_table, i32 0, i32 26), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @float_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sf_table, i32 0, i32 27), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @float_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sf_table, i32 0, i32 28), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @float_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sf_table, i32 0, i32 29), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @float_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sf_table, i32 0, i32 30), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @float_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sf_table, i32 0, i32 31), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @float_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sf_table, i32 0, i32 8), align 4, !tbaa !18
  store i32 ptrtoint (void ()* @float_table_shim_on_use_helper to i32), i32* getelementptr inbounds ([64 x i32], [64 x i32]* @sf_table, i32 0, i32 7), align 4, !tbaa !18
  br label %5

4:                                                ; preds = %0
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(128) bitcast ([64 x i32]* @sf_table to i8*), i8* noundef nonnull align 1 dereferenceable(128) %2, i32 128, i1 false)
  br label %5

5:                                                ; preds = %0, %3, %4
  %6 = tail call i8* @rom_func_lookup(i32 noundef 13132) #30
  store i8* %6, i8** @sf_clz_func, align 4, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define internal fastcc zeroext i8 @rp2040_rom_version.90() unnamed_addr #10 {
  %1 = load i8, i8* inttoptr (i32 19 to i8*), align 1, !tbaa !8
  ret i8 %1
}

declare dso_local void @float_table_shim_on_use_helper() #21

; Function Attrs: noinline nounwind
define dso_local i8* @__wrap_malloc(i32 noundef %0) local_unnamed_addr #3 {
  %2 = tail call i8* @__real_malloc(i32 noundef %0) #30
  tail call fastcc void @check_alloc(i8* noundef %2, i32 noundef %0)
  ret i8* %2
}

declare dso_local i8* @__real_malloc(i32 noundef) local_unnamed_addr #21

; Function Attrs: noinline nounwind
define internal fastcc void @check_alloc(i8* noundef readnone %0, i32 noundef %1) unnamed_addr #3 {
  %3 = icmp eq i8* %0, null
  %4 = getelementptr inbounds i8, i8* %0, i32 %1
  %5 = icmp ugt i8* %4, @__StackLimit
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.91, i32 0, i32 0)) #32
  unreachable

8:                                                ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind
define dso_local i8* @__wrap_calloc(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = tail call i8* @__real_calloc(i32 noundef %0, i32 noundef %1) #30
  tail call fastcc void @check_alloc(i8* noundef %3, i32 noundef %1)
  ret i8* %3
}

declare dso_local i8* @__real_calloc(i32 noundef, i32 noundef) local_unnamed_addr #21

; Function Attrs: noinline nounwind
define dso_local void @__wrap_free(i8* noundef %0) local_unnamed_addr #3 {
  tail call void @__real_free(i8* noundef %0) #30
  ret void
}

declare dso_local void @__real_free(i8* noundef) local_unnamed_addr #21

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @stdout_serialize_begin() local_unnamed_addr #3 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* inttoptr (i32 -805306368 to i32*), align 268435456, !tbaa !18
  %3 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #30
  %4 = call zeroext i1 @mutex_try_enter(%struct.mutex* noundef nonnull @print_mutex, i32* noundef nonnull %1) #30
  br i1 %4, label %11, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* %1, align 4, !tbaa !18
  %7 = shl i32 %2, 24
  %8 = ashr exact i32 %7, 24
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  call void @mutex_enter_blocking(%struct.mutex* noundef nonnull @print_mutex) #30
  br label %11

11:                                               ; preds = %0, %10, %5
  %12 = phi i1 [ false, %5 ], [ true, %10 ], [ true, %0 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #30
  ret i1 %12
}

; Function Attrs: noinline nounwind
define dso_local void @stdout_serialize_end() local_unnamed_addr #3 {
  tail call void @mutex_exit(%struct.mutex* noundef nonnull @print_mutex) #30
  ret void
}

; Function Attrs: noinline nounwind
define dso_local i32 @__wrap_putchar(i32 noundef returned %0) local_unnamed_addr #3 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %2) #30
  %3 = trunc i32 %0 to i8
  store i8 %3, i8* %2, align 1, !tbaa !8
  call fastcc void @stdio_put_string(i8* noundef nonnull %2, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %2) #30
  ret i32 %0
}

; Function Attrs: noinline nounwind
define internal fastcc void @stdio_put_string(i8* noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #3 {
  %5 = alloca i8, align 1
  %6 = tail call zeroext i1 @stdout_serialize_begin()
  %7 = icmp eq i32 %1, -1
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call i32 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i32 [ %9, %8 ], [ %1, %4 ]
  %12 = select i1 %3, void (%struct.stdio_driver*, i8*, i32)* @stdio_out_chars_no_crlf, void (%struct.stdio_driver*, i8*, i32)* @stdio_out_chars_crlf
  %13 = load %struct.stdio_driver*, %struct.stdio_driver** @drivers, align 4, !tbaa !11
  %14 = icmp eq %struct.stdio_driver* %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %10
  br i1 %2, label %16, label %32

16:                                               ; preds = %15, %27
  %17 = phi %struct.stdio_driver* [ %29, %27 ], [ %13, %15 ]
  %18 = getelementptr inbounds %struct.stdio_driver, %struct.stdio_driver* %17, i32 0, i32 0
  %19 = load void (i8*, i32)*, void (i8*, i32)** %18, align 4, !tbaa !215
  %20 = icmp eq void (i8*, i32)* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load %struct.stdio_driver*, %struct.stdio_driver** @filter, align 4, !tbaa !11
  %23 = icmp eq %struct.stdio_driver* %22, null
  %24 = icmp eq %struct.stdio_driver* %22, %17
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  call void %12(%struct.stdio_driver* noundef nonnull %17, i8* noundef %0, i32 noundef %11) #30, !callees !217
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %5) #30
  store i8 10, i8* %5, align 1, !tbaa !8
  call void %12(%struct.stdio_driver* noundef nonnull %17, i8* noundef nonnull %5, i32 noundef 1) #30, !callees !217
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #30
  br label %27

27:                                               ; preds = %26, %21, %16
  %28 = getelementptr inbounds %struct.stdio_driver, %struct.stdio_driver* %17, i32 0, i32 3
  %29 = load %struct.stdio_driver*, %struct.stdio_driver** %28, align 4, !tbaa !11
  %30 = icmp eq %struct.stdio_driver* %29, null
  br i1 %30, label %31, label %16, !llvm.loop !218

31:                                               ; preds = %43, %27, %10
  br i1 %6, label %47, label %48

32:                                               ; preds = %15, %43
  %33 = phi %struct.stdio_driver* [ %45, %43 ], [ %13, %15 ]
  %34 = getelementptr inbounds %struct.stdio_driver, %struct.stdio_driver* %33, i32 0, i32 0
  %35 = load void (i8*, i32)*, void (i8*, i32)** %34, align 4, !tbaa !215
  %36 = icmp eq void (i8*, i32)* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = load %struct.stdio_driver*, %struct.stdio_driver** @filter, align 4, !tbaa !11
  %39 = icmp eq %struct.stdio_driver* %38, null
  %40 = icmp eq %struct.stdio_driver* %38, %33
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  call void %12(%struct.stdio_driver* noundef nonnull %33, i8* noundef %0, i32 noundef %11) #30, !callees !217
  br label %43

43:                                               ; preds = %42, %37, %32
  %44 = getelementptr inbounds %struct.stdio_driver, %struct.stdio_driver* %33, i32 0, i32 3
  %45 = load %struct.stdio_driver*, %struct.stdio_driver** %44, align 4, !tbaa !11
  %46 = icmp eq %struct.stdio_driver* %45, null
  br i1 %46, label %31, label %32, !llvm.loop !218

47:                                               ; preds = %31
  call void @stdout_serialize_end()
  br label %48

48:                                               ; preds = %47, %31
  ret void
}

; Function Attrs: noinline nounwind
define internal void @stdio_out_chars_no_crlf(%struct.stdio_driver* nocapture noundef readonly %0, i8* noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.stdio_driver, %struct.stdio_driver* %0, i32 0, i32 0
  %5 = load void (i8*, i32)*, void (i8*, i32)** %4, align 4, !tbaa !215
  tail call void %5(i8* noundef %1, i32 noundef %2) #30
  ret void
}

; Function Attrs: noinline nounwind
define internal void @stdio_out_chars_crlf(%struct.stdio_driver* nocapture noundef %0, i8* noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.stdio_driver, %struct.stdio_driver* %0, i32 0, i32 5
  %5 = load i8, i8* %4, align 1, !tbaa !219, !range !68
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %3
  %8 = icmp sgt i32 %2, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.stdio_driver, %struct.stdio_driver* %0, i32 0, i32 0
  %11 = getelementptr inbounds %struct.stdio_driver, %struct.stdio_driver* %0, i32 0, i32 4
  %12 = load i8, i8* %11, align 4, !tbaa !220, !range !68
  %13 = icmp eq i8 %12, 0
  %14 = load i8, i8* %1, align 1, !tbaa !8
  %15 = icmp eq i8 %14, 10
  %16 = select i1 %15, i1 %13, i1 false
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = load void (i8*, i32)*, void (i8*, i32)** %10, align 4, !tbaa !215
  tail call void %18(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @stdio_out_chars_crlf.crlf_str, i32 0, i32 0), i32 noundef 2) #30
  br label %19

19:                                               ; preds = %17, %9
  %20 = phi i32 [ 1, %17 ], [ 0, %9 ]
  %21 = icmp eq i32 %2, 1
  br i1 %21, label %25, label %28

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.stdio_driver, %struct.stdio_driver* %0, i32 0, i32 0
  %24 = load void (i8*, i32)*, void (i8*, i32)** %23, align 4, !tbaa !215
  tail call void %24(i8* noundef %1, i32 noundef %2) #30
  br label %67

25:                                               ; preds = %50, %19, %7
  %26 = phi i32 [ 0, %7 ], [ %20, %19 ], [ %52, %50 ]
  %27 = icmp slt i32 %26, %2
  br i1 %27, label %54, label %59

28:                                               ; preds = %19, %50
  %29 = phi i32 [ %52, %50 ], [ %20, %19 ]
  %30 = phi i32 [ %51, %50 ], [ 1, %19 ]
  %31 = add nsw i32 %30, -1
  %32 = getelementptr inbounds i8, i8* %1, i32 %31
  %33 = load i8, i8* %32, align 1, !tbaa !8
  %34 = icmp ne i8 %33, 13
  %35 = getelementptr inbounds i8, i8* %1, i32 %30
  %36 = load i8, i8* %35, align 1, !tbaa !8
  %37 = icmp eq i8 %36, 10
  %38 = select i1 %37, i1 %34, i1 false
  br i1 %38, label %41, label %39

39:                                               ; preds = %28
  %40 = add nuw nsw i32 %30, 1
  br label %50

41:                                               ; preds = %28
  %42 = icmp sgt i32 %30, %29
  br i1 %42, label %43, label %47

43:                                               ; preds = %41
  %44 = load void (i8*, i32)*, void (i8*, i32)** %10, align 4, !tbaa !215
  %45 = getelementptr inbounds i8, i8* %1, i32 %29
  %46 = sub nsw i32 %30, %29
  tail call void %44(i8* noundef nonnull %45, i32 noundef %46) #30
  br label %47

47:                                               ; preds = %43, %41
  %48 = load void (i8*, i32)*, void (i8*, i32)** %10, align 4, !tbaa !215
  tail call void %48(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @stdio_out_chars_crlf.crlf_str, i32 0, i32 0), i32 noundef 2) #30
  %49 = add nuw nsw i32 %30, 1
  br label %50

50:                                               ; preds = %39, %47
  %51 = phi i32 [ %40, %39 ], [ %49, %47 ]
  %52 = phi i32 [ %29, %39 ], [ %49, %47 ]
  %53 = icmp eq i32 %51, %2
  br i1 %53, label %25, label %28, !llvm.loop !221

54:                                               ; preds = %25
  %55 = getelementptr inbounds %struct.stdio_driver, %struct.stdio_driver* %0, i32 0, i32 0
  %56 = load void (i8*, i32)*, void (i8*, i32)** %55, align 4, !tbaa !215
  %57 = getelementptr inbounds i8, i8* %1, i32 %26
  %58 = sub nsw i32 %2, %26
  tail call void %56(i8* noundef %57, i32 noundef %58) #30
  br label %59

59:                                               ; preds = %54, %25
  br i1 %8, label %60, label %67

60:                                               ; preds = %59
  %61 = add nsw i32 %2, -1
  %62 = getelementptr inbounds i8, i8* %1, i32 %61
  %63 = load i8, i8* %62, align 1, !tbaa !8
  %64 = icmp eq i8 %63, 13
  %65 = getelementptr inbounds %struct.stdio_driver, %struct.stdio_driver* %0, i32 0, i32 4
  %66 = zext i1 %64 to i8
  store i8 %66, i8* %65, align 4, !tbaa !220
  br label %67

67:                                               ; preds = %59, %60, %22
  ret void
}

; Function Attrs: noinline nounwind
define dso_local i32 @__wrap_puts(i8* noundef %0) local_unnamed_addr #3 {
  %2 = tail call i32 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  tail call fastcc void @stdio_put_string(i8* noundef %0, i32 noundef %2, i1 noundef zeroext true, i1 noundef zeroext false)
  tail call void @stdio_flush()
  ret i32 %2
}

; Function Attrs: noinline nounwind
define dso_local void @stdio_flush() local_unnamed_addr #3 {
  %1 = load %struct.stdio_driver*, %struct.stdio_driver** @drivers, align 4, !tbaa !11
  %2 = icmp eq %struct.stdio_driver* %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %10, %0
  ret void

4:                                                ; preds = %0, %10
  %5 = phi %struct.stdio_driver* [ %12, %10 ], [ %1, %0 ]
  %6 = getelementptr inbounds %struct.stdio_driver, %struct.stdio_driver* %5, i32 0, i32 1
  %7 = load void ()*, void ()** %6, align 4, !tbaa !223
  %8 = icmp eq void ()* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void %7() #30
  br label %10

10:                                               ; preds = %4, %9
  %11 = getelementptr inbounds %struct.stdio_driver, %struct.stdio_driver* %5, i32 0, i32 3
  %12 = load %struct.stdio_driver*, %struct.stdio_driver** %11, align 4, !tbaa !11
  %13 = icmp eq %struct.stdio_driver* %12, null
  br i1 %13, label %3, label %4, !llvm.loop !224
}

; Function Attrs: noinline nounwind
define dso_local i32 @putchar_raw(i32 noundef returned %0) local_unnamed_addr #3 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %2) #30
  %3 = trunc i32 %0 to i8
  store i8 %3, i8* %2, align 1, !tbaa !8
  call fastcc void @stdio_put_string(i8* noundef nonnull %2, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %2) #30
  ret i32 %0
}

; Function Attrs: noinline nounwind
define dso_local i32 @puts_raw(i8* noundef %0) local_unnamed_addr #3 {
  %2 = tail call i32 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  tail call fastcc void @stdio_put_string(i8* noundef %0, i32 noundef %2, i1 noundef zeroext true, i1 noundef zeroext true)
  tail call void @stdio_flush()
  ret i32 %2
}

; Function Attrs: noinline nounwind
define dso_local i32 @_read(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = icmp eq i32 %0, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = load i64, i64* @at_the_end_of_time, align 8, !tbaa !56
  %7 = tail call fastcc i32 @stdio_get_until(i8* noundef %1, i32 noundef %2, i64 noundef %6)
  br label %8

8:                                                ; preds = %3, %5
  %9 = phi i32 [ %7, %5 ], [ -1, %3 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind
define internal fastcc i32 @stdio_get_until(i8* noundef %0, i32 noundef %1, i64 noundef %2) unnamed_addr #3 {
  br label %4

4:                                                ; preds = %28, %3
  %5 = load %struct.stdio_driver*, %struct.stdio_driver** @drivers, align 4, !tbaa !11
  %6 = icmp eq %struct.stdio_driver* %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %4
  %8 = load %struct.stdio_driver*, %struct.stdio_driver** @filter, align 4, !tbaa !11
  br label %9

9:                                                ; preds = %7, %23
  %10 = phi %struct.stdio_driver* [ %24, %23 ], [ %8, %7 ]
  %11 = phi %struct.stdio_driver* [ %26, %23 ], [ %5, %7 ]
  %12 = icmp eq %struct.stdio_driver* %10, null
  %13 = icmp eq %struct.stdio_driver* %10, %11
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.stdio_driver, %struct.stdio_driver* %11, i32 0, i32 2
  %17 = load i32 (i8*, i32)*, i32 (i8*, i32)** %16, align 4, !tbaa !225
  %18 = icmp eq i32 (i8*, i32)* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = tail call i32 %17(i8* noundef %0, i32 noundef %1) #30
  %21 = icmp sgt i32 %20, 0
  %22 = load %struct.stdio_driver*, %struct.stdio_driver** @filter, align 4, !tbaa !11
  br i1 %21, label %30, label %23

23:                                               ; preds = %9, %15, %19
  %24 = phi %struct.stdio_driver* [ %10, %9 ], [ %10, %15 ], [ %22, %19 ]
  %25 = getelementptr inbounds %struct.stdio_driver, %struct.stdio_driver* %11, i32 0, i32 3
  %26 = load %struct.stdio_driver*, %struct.stdio_driver** %25, align 4, !tbaa !11
  %27 = icmp eq %struct.stdio_driver* %26, null
  br i1 %27, label %28, label %9, !llvm.loop !226

28:                                               ; preds = %23, %4
  tail call void @busy_wait_us(i64 noundef 1) #30
  %29 = tail call fastcc zeroext i1 @time_reached.98(i64 noundef %2)
  br i1 %29, label %30, label %4, !llvm.loop !227

30:                                               ; preds = %28, %19
  %31 = phi i32 [ %20, %19 ], [ -1, %28 ]
  ret i32 %31
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define internal fastcc zeroext i1 @time_reached.98(i64 noundef %0) unnamed_addr #9 {
  %2 = lshr i64 %0, 32
  %3 = trunc i64 %2 to i32
  %4 = load volatile i32, i32* inttoptr (i32 1074085924 to i32*), align 4, !tbaa !79
  %5 = icmp ult i32 %4, %3
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = load volatile i32, i32* inttoptr (i32 1074085928 to i32*), align 8, !tbaa !81
  %8 = trunc i64 %0 to i32
  %9 = icmp uge i32 %7, %8
  %10 = icmp ne i32 %4, %3
  %11 = select i1 %9, i1 true, i1 %10
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi i1 [ false, %1 ], [ %11, %6 ]
  ret i1 %13
}

; Function Attrs: noinline nounwind
define dso_local i32 @_write(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = icmp eq i32 %0, 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call fastcc void @stdio_put_string(i8* noundef %1, i32 noundef %2, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %6

6:                                                ; preds = %3, %5
  %7 = phi i32 [ %2, %5 ], [ -1, %3 ]
  ret i32 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind
define dso_local void @stdio_set_driver_enabled(%struct.stdio_driver* noundef %0, i1 noundef zeroext %1) local_unnamed_addr #17 {
  %3 = load %struct.stdio_driver*, %struct.stdio_driver** @drivers, align 4, !tbaa !11
  %4 = icmp eq %struct.stdio_driver* %3, null
  br i1 %4, label %53, label %5

5:                                                ; preds = %2
  %6 = icmp eq %struct.stdio_driver* %3, %0
  br i1 %6, label %40, label %7

7:                                                ; preds = %5, %30
  %8 = phi %struct.stdio_driver* [ %28, %30 ], [ %3, %5 ]
  %9 = getelementptr inbounds %struct.stdio_driver, %struct.stdio_driver* %8, i32 0, i32 3
  %10 = load %struct.stdio_driver*, %struct.stdio_driver** %9, align 4, !tbaa !11
  %11 = icmp eq %struct.stdio_driver* %10, null
  br i1 %11, label %51, label %12, !llvm.loop !228

12:                                               ; preds = %7
  %13 = icmp eq %struct.stdio_driver* %10, %0
  br i1 %13, label %38, label %14, !llvm.loop !228

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.stdio_driver, %struct.stdio_driver* %10, i32 0, i32 3
  %16 = load %struct.stdio_driver*, %struct.stdio_driver** %15, align 4, !tbaa !11
  %17 = icmp eq %struct.stdio_driver* %16, null
  br i1 %17, label %49, label %18, !llvm.loop !228

18:                                               ; preds = %14
  %19 = icmp eq %struct.stdio_driver* %16, %0
  br i1 %19, label %36, label %20, !llvm.loop !228

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.stdio_driver, %struct.stdio_driver* %16, i32 0, i32 3
  %22 = load %struct.stdio_driver*, %struct.stdio_driver** %21, align 4, !tbaa !11
  %23 = icmp eq %struct.stdio_driver* %22, null
  br i1 %23, label %47, label %24, !llvm.loop !228

24:                                               ; preds = %20
  %25 = icmp eq %struct.stdio_driver* %22, %0
  br i1 %25, label %34, label %26, !llvm.loop !228

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.stdio_driver, %struct.stdio_driver* %22, i32 0, i32 3
  %28 = load %struct.stdio_driver*, %struct.stdio_driver** %27, align 4, !tbaa !11
  %29 = icmp eq %struct.stdio_driver* %28, null
  br i1 %29, label %45, label %30, !llvm.loop !228

30:                                               ; preds = %26
  %31 = icmp eq %struct.stdio_driver* %28, %0
  br i1 %31, label %32, label %7, !llvm.loop !228

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.stdio_driver, %struct.stdio_driver* %22, i32 0, i32 3
  br label %40

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.stdio_driver, %struct.stdio_driver* %16, i32 0, i32 3
  br label %40

36:                                               ; preds = %18
  %37 = getelementptr inbounds %struct.stdio_driver, %struct.stdio_driver* %10, i32 0, i32 3
  br label %40

38:                                               ; preds = %12
  %39 = getelementptr inbounds %struct.stdio_driver, %struct.stdio_driver* %8, i32 0, i32 3
  br label %40

40:                                               ; preds = %32, %34, %36, %38, %5
  %41 = phi %struct.stdio_driver** [ @drivers, %5 ], [ %33, %32 ], [ %35, %34 ], [ %37, %36 ], [ %39, %38 ]
  br i1 %1, label %56, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.stdio_driver, %struct.stdio_driver* %0, i32 0, i32 3
  %44 = load %struct.stdio_driver*, %struct.stdio_driver** %43, align 4, !tbaa !229
  store %struct.stdio_driver* %44, %struct.stdio_driver** %41, align 4, !tbaa !11
  store %struct.stdio_driver* null, %struct.stdio_driver** %43, align 4, !tbaa !229
  br label %56

45:                                               ; preds = %26
  %46 = getelementptr inbounds %struct.stdio_driver, %struct.stdio_driver* %22, i32 0, i32 3
  br label %53

47:                                               ; preds = %20
  %48 = getelementptr inbounds %struct.stdio_driver, %struct.stdio_driver* %16, i32 0, i32 3
  br label %53

49:                                               ; preds = %14
  %50 = getelementptr inbounds %struct.stdio_driver, %struct.stdio_driver* %10, i32 0, i32 3
  br label %53

51:                                               ; preds = %7
  %52 = getelementptr inbounds %struct.stdio_driver, %struct.stdio_driver* %8, i32 0, i32 3
  br label %53

53:                                               ; preds = %45, %47, %49, %51, %2
  %54 = phi %struct.stdio_driver** [ @drivers, %2 ], [ %46, %45 ], [ %48, %47 ], [ %50, %49 ], [ %52, %51 ]
  br i1 %1, label %55, label %56

55:                                               ; preds = %53
  store %struct.stdio_driver* %0, %struct.stdio_driver** %54, align 4, !tbaa !11
  br label %56

56:                                               ; preds = %53, %55, %40, %42
  ret void
}

; Function Attrs: noinline nounwind
define dso_local i32 @__wrap_vprintf(i8* noundef %0, [1 x i32] %1) local_unnamed_addr #3 {
  %3 = alloca %struct.stdio_stack_buffer, align 4
  %4 = tail call zeroext i1 @stdout_serialize_begin()
  %5 = bitcast %struct.stdio_stack_buffer* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 132, i8* nonnull %5) #30
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(132) %5, i8 0, i32 132, i1 false)
  %6 = call i32 @vfctprintf(void (i8, i8*)* noundef nonnull @stdio_buffered_printer, i8* noundef nonnull %5, i8* noundef %0, [1 x i32] %1) #30
  call fastcc void @stdio_stack_buffer_flush(%struct.stdio_stack_buffer* noundef nonnull %3)
  call void @stdio_flush()
  br i1 %4, label %7, label %8

7:                                                ; preds = %2
  call void @stdout_serialize_end()
  br label %8

8:                                                ; preds = %7, %2
  call void @llvm.lifetime.end.p0i8(i64 132, i8* nonnull %5) #30
  ret i32 %6
}

; Function Attrs: noinline nounwind
define internal void @stdio_buffered_printer(i8 noundef zeroext %0, i8* noundef %1) #3 {
  %3 = bitcast i8* %1 to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !230
  %5 = icmp eq i32 %4, 128
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = bitcast i8* %1 to %struct.stdio_stack_buffer*
  tail call fastcc void @stdio_stack_buffer_flush(%struct.stdio_stack_buffer* noundef %7)
  %8 = load i32, i32* %3, align 4, !tbaa !230
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ %8, %6 ], [ %4, %2 ]
  %11 = getelementptr inbounds i8, i8* %1, i32 4
  %12 = add nsw i32 %10, 1
  store i32 %12, i32* %3, align 4, !tbaa !230
  %13 = getelementptr inbounds i8, i8* %11, i32 %10
  store i8 %0, i8* %13, align 1, !tbaa !8
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc void @stdio_stack_buffer_flush(%struct.stdio_stack_buffer* noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.stdio_stack_buffer, %struct.stdio_stack_buffer* %0, i32 0, i32 0
  %3 = load i32, i32* %2, align 4, !tbaa !230
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = load %struct.stdio_driver*, %struct.stdio_driver** @drivers, align 4, !tbaa !11
  %7 = icmp eq %struct.stdio_driver* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.stdio_stack_buffer, %struct.stdio_stack_buffer* %0, i32 0, i32 1, i32 0
  br label %11

10:                                               ; preds = %23, %5
  store i32 0, i32* %2, align 4, !tbaa !230
  br label %27

11:                                               ; preds = %8, %23
  %12 = phi %struct.stdio_driver* [ %6, %8 ], [ %25, %23 ]
  %13 = getelementptr inbounds %struct.stdio_driver, %struct.stdio_driver* %12, i32 0, i32 0
  %14 = load void (i8*, i32)*, void (i8*, i32)** %13, align 4, !tbaa !215
  %15 = icmp eq void (i8*, i32)* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %11
  %17 = load %struct.stdio_driver*, %struct.stdio_driver** @filter, align 4, !tbaa !11
  %18 = icmp eq %struct.stdio_driver* %17, null
  %19 = icmp eq %struct.stdio_driver* %17, %12
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %2, align 4, !tbaa !230
  tail call void @stdio_out_chars_crlf(%struct.stdio_driver* noundef nonnull %12, i8* noundef nonnull %9, i32 noundef %22)
  br label %23

23:                                               ; preds = %16, %11, %21
  %24 = getelementptr inbounds %struct.stdio_driver, %struct.stdio_driver* %12, i32 0, i32 3
  %25 = load %struct.stdio_driver*, %struct.stdio_driver** %24, align 4, !tbaa !11
  %26 = icmp eq %struct.stdio_driver* %25, null
  br i1 %26, label %10, label %11, !llvm.loop !232

27:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: nofree noinline nounwind
define dso_local i32 @__wrap_printf(i8* nocapture noundef readonly %0, ...) local_unnamed_addr #8 {
  %2 = alloca %struct.__va_list, align 4
  %3 = bitcast %struct.__va_list* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #30
  call void @llvm.va_start(i8* nonnull %3)
  %4 = bitcast %struct.__va_list* %2 to i32*
  %5 = load i32, i32* %4, align 4
  %6 = insertvalue [1 x i32] poison, i32 %5, 0
  %7 = call i32 @vprintf(i8* noundef %0, [1 x i32] %6)
  call void @llvm.va_end(i8* nonnull %3)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #30
  ret i32 %7
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @vprintf(i8* nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind
define dso_local void @stdio_init_all() local_unnamed_addr #3 {
  tail call void @stdio_uart_init() #30
  %1 = tail call zeroext i1 @stdio_usb_init() #30
  ret void
}

declare dso_local void @stdio_uart_init() local_unnamed_addr #21

; Function Attrs: noinline nounwind
define dso_local i32 @__wrap_getchar() local_unnamed_addr #3 {
  %1 = alloca [1 x i8], align 1
  %2 = getelementptr inbounds [1 x i8], [1 x i8]* %1, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %2) #30
  %3 = load i64, i64* @at_the_end_of_time, align 8, !tbaa !56
  %4 = call fastcc i32 @stdio_get_until(i8* noundef nonnull %2, i32 noundef 1, i64 noundef %3)
  %5 = icmp slt i32 %4, 0
  %6 = load i8, i8* %2, align 1
  %7 = zext i8 %6 to i32
  %8 = select i1 %5, i32 %4, i32 %7
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %2) #30
  ret i32 %8
}

; Function Attrs: noinline nounwind
define dso_local i32 @getchar_timeout_us(i32 noundef %0) local_unnamed_addr #3 {
  %2 = alloca [1 x i8], align 1
  %3 = getelementptr inbounds [1 x i8], [1 x i8]* %2, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #30
  %4 = zext i32 %0 to i64
  %5 = tail call fastcc i64 @make_timeout_time_us.99(i64 noundef %4)
  %6 = call fastcc i32 @stdio_get_until(i8* noundef nonnull %3, i32 noundef 1, i64 noundef %5)
  %7 = icmp slt i32 %6, 0
  %8 = load i8, i8* %3, align 1
  %9 = zext i8 %8 to i32
  %10 = select i1 %7, i32 %6, i32 %9
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #30
  ret i32 %10
}

; Function Attrs: noinline nounwind
define internal fastcc i64 @make_timeout_time_us.99(i64 noundef %0) unnamed_addr #3 {
  %2 = tail call fastcc i64 @get_absolute_time.100()
  %3 = tail call fastcc i64 @delayed_by_us.101(i64 noundef %2, i64 noundef %0)
  ret i64 %3
}

; Function Attrs: noinline nounwind
define internal fastcc i64 @get_absolute_time.100() unnamed_addr #3 {
  %1 = alloca i64, align 8
  %2 = bitcast i64* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #30
  %3 = tail call i64 @time_us_64() #30
  call fastcc void @update_us_since_boot.102(i64* noundef nonnull %1, i64 noundef %3)
  %4 = load i64, i64* %1, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #30
  ret i64 %4
}

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn writeonly
define internal fastcc i64 @delayed_by_us.101(i64 noundef %0, i64 noundef %1) unnamed_addr #13 {
  %3 = alloca i64, align 8
  %4 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #30
  %5 = tail call i64 @llvm.uadd.sat.i64(i64 %0, i64 %1)
  call fastcc void @update_us_since_boot.102(i64* noundef nonnull %3, i64 noundef %5)
  %6 = load i64, i64* %3, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #30
  ret i64 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly
define internal fastcc void @update_us_since_boot.102(i64* nocapture noundef writeonly %0, i64 noundef %1) unnamed_addr #15 {
  store i64 %1, i64* %0, align 8, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly
define dso_local void @stdio_filter_driver(%struct.stdio_driver* noundef %0) local_unnamed_addr #15 {
  store %struct.stdio_driver* %0, %struct.stdio_driver** @filter, align 4, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn
define dso_local void @stdio_set_translate_crlf(%struct.stdio_driver* nocapture noundef %0, i1 noundef zeroext %1) local_unnamed_addr #11 {
  br i1 %1, label %3, label %9

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.stdio_driver, %struct.stdio_driver* %0, i32 0, i32 5
  %5 = load i8, i8* %4, align 1, !tbaa !219, !range !68
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.stdio_driver, %struct.stdio_driver* %0, i32 0, i32 4
  store i8 0, i8* %8, align 4, !tbaa !220
  br label %9

9:                                                ; preds = %7, %3, %2
  %10 = zext i1 %1 to i8
  %11 = getelementptr inbounds %struct.stdio_driver, %struct.stdio_driver* %0, i32 0, i32 5
  store i8 %10, i8* %11, align 1, !tbaa !219
  ret void
}

; Function Attrs: noinline nounwind
define weak dso_local %struct.usbd_class_driver_t* @usbd_app_driver_get_cb(i8* noundef %0) #3 {
  store i8 1, i8* %0, align 1, !tbaa !8
  ret %struct.usbd_class_driver_t* @_resetd_driver
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn
define internal void @resetd_init() #12 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly
define internal void @resetd_reset(i8 noundef zeroext %0) #15 {
  store i8 0, i8* @itf_num, align 1, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn
define internal zeroext i16 @resetd_open(i8 noundef zeroext %0, %struct.tusb_desc_interface_t* nocapture noundef readonly %1, i16 noundef zeroext %2) #11 {
  %4 = getelementptr inbounds %struct.tusb_desc_interface_t, %struct.tusb_desc_interface_t* %1, i32 0, i32 5
  %5 = load i8, i8* %4, align 1, !tbaa !233
  %6 = icmp eq i8 %5, -1
  br i1 %6, label %7, label %20

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tusb_desc_interface_t, %struct.tusb_desc_interface_t* %1, i32 0, i32 6
  %9 = load i8, i8* %8, align 1, !tbaa !235
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tusb_desc_interface_t, %struct.tusb_desc_interface_t* %1, i32 0, i32 7
  %13 = load i8, i8* %12, align 1, !tbaa !236
  %14 = icmp eq i8 %13, 1
  %15 = icmp ugt i16 %2, 8
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.tusb_desc_interface_t, %struct.tusb_desc_interface_t* %1, i32 0, i32 2
  %19 = load i8, i8* %18, align 1, !tbaa !237
  store i8 %19, i8* @itf_num, align 1, !tbaa !8
  br label %20

20:                                               ; preds = %17, %3, %7, %11
  %21 = phi i16 [ 0, %11 ], [ 0, %7 ], [ 0, %3 ], [ 9, %17 ]
  ret i16 %21
}

; Function Attrs: noinline nounwind
define internal zeroext i1 @resetd_control_xfer_cb(i8 noundef zeroext %0, i8 noundef zeroext %1, %struct.tusb_control_request_t* nocapture noundef readonly %2) #3 {
  %4 = icmp eq i8 %1, 0
  br i1 %4, label %5, label %26

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.tusb_control_request_t, %struct.tusb_control_request_t* %2, i32 0, i32 3
  %7 = load i16, i16* %6, align 1, !tbaa !238
  %8 = load i8, i8* @itf_num, align 1, !tbaa !8
  %9 = zext i8 %8 to i16
  %10 = icmp eq i16 %7, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.tusb_control_request_t, %struct.tusb_control_request_t* %2, i32 0, i32 1
  %13 = load i8, i8* %12, align 1, !tbaa !240
  switch i8 %13, label %26 [
    i8 1, label %14
    i8 2, label %25
  ]

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.tusb_control_request_t, %struct.tusb_control_request_t* %2, i32 0, i32 2
  %16 = load i16, i16* %15, align 1, !tbaa !241
  %17 = zext i16 %16 to i32
  %18 = and i32 %17, 256
  %19 = icmp eq i32 %18, 0
  %20 = lshr i32 %17, 9
  %21 = shl nuw i32 1, %20
  %22 = select i1 %19, i32 0, i32 %21
  %23 = and i16 %16, 127
  %24 = zext i16 %23 to i32
  tail call fastcc void @reset_usb_boot(i32 noundef %22, i32 noundef %24) #34
  unreachable

25:                                               ; preds = %11
  tail call void @watchdog_reboot(i32 noundef 0, i32 noundef 0, i32 noundef 100) #30
  br label %26

26:                                               ; preds = %5, %11, %3, %25
  %27 = phi i1 [ true, %25 ], [ true, %3 ], [ false, %11 ], [ false, %5 ]
  ret i1 %27
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn
define internal zeroext i1 @resetd_xfer_cb(i8 noundef zeroext %0, i8 noundef zeroext %1, i32 noundef %2, i32 noundef %3) #12 {
  ret i1 true
}

; Function Attrs: noinline noreturn nounwind
define internal fastcc void @reset_usb_boot(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call i8* @rom_func_lookup(i32 noundef 16981) #30
  %4 = bitcast i8* %3 to void (i32, i32)*
  tail call void %4(i32 noundef %0, i32 noundef %1) #32
  unreachable
}

; Function Attrs: noinline nounwind
define weak dso_local void @tud_cdc_line_coding_cb(i8 noundef zeroext %0, %struct.cdc_line_coding_t* noundef %1) #3 {
  %3 = getelementptr inbounds %struct.cdc_line_coding_t, %struct.cdc_line_coding_t* %1, i32 0, i32 0
  %4 = load i32, i32* %3, align 1, !tbaa !242
  %5 = icmp eq i32 %4, 1200
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call fastcc void @reset_usb_boot(i32 noundef 0, i32 noundef 0) #34
  unreachable

7:                                                ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind
define internal void @stdio_usb_out_chars(i8* noundef %0, i32 noundef %1) #3 {
  %3 = alloca i32, align 4
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #30
  %5 = call zeroext i1 @mutex_try_enter(%struct.mutex* noundef nonnull @stdio_usb_mutex, i32* noundef nonnull %3) #30
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load i32, i32* %3, align 4, !tbaa !18
  %8 = load i32, i32* inttoptr (i32 -805306368 to i32*), align 268435456, !tbaa !18
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %42, label %10

10:                                               ; preds = %6
  call void @mutex_enter_blocking(%struct.mutex* noundef nonnull @stdio_usb_mutex) #30
  br label %11

11:                                               ; preds = %10, %2
  %12 = call fastcc zeroext i1 @tud_cdc_connected()
  br i1 %12, label %13, label %40

13:                                               ; preds = %11
  %14 = icmp sgt i32 %1, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %13, %37
  %16 = phi i32 [ %38, %37 ], [ 0, %13 ]
  %17 = sub nsw i32 %1, %16
  %18 = call fastcc i32 @tud_cdc_write_available()
  %19 = icmp sgt i32 %17, %18
  %20 = select i1 %19, i32 %18, i32 %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds i8, i8* %0, i32 %16
  %24 = call fastcc i32 @tud_cdc_write(i8* noundef %23, i32 noundef %20)
  call void @tud_task() #30
  call fastcc void @tud_cdc_write_flush()
  %25 = add nsw i32 %24, %16
  %26 = call i64 @time_us_64() #30
  store i64 %26, i64* @stdio_usb_out_chars.last_avail_time, align 8, !tbaa !56
  br label %37

27:                                               ; preds = %15
  call void @tud_task() #30
  call fastcc void @tud_cdc_write_flush()
  %28 = call fastcc zeroext i1 @tud_cdc_connected()
  br i1 %28, label %29, label %41

29:                                               ; preds = %27
  %30 = call fastcc i32 @tud_cdc_write_available()
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = call i64 @time_us_64() #30
  %34 = load i64, i64* @stdio_usb_out_chars.last_avail_time, align 8, !tbaa !56
  %35 = add i64 %34, 500000
  %36 = icmp ugt i64 %33, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %22, %32, %29
  %38 = phi i32 [ %25, %22 ], [ %16, %29 ], [ %16, %32 ]
  %39 = icmp slt i32 %38, %1
  br i1 %39, label %15, label %41, !llvm.loop !244

40:                                               ; preds = %11
  store i64 0, i64* @stdio_usb_out_chars.last_avail_time, align 8, !tbaa !56
  br label %41

41:                                               ; preds = %37, %32, %27, %13, %40
  call void @mutex_exit(%struct.mutex* noundef nonnull @stdio_usb_mutex) #30
  br label %42

42:                                               ; preds = %6, %41
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #30
  ret void
}

; Function Attrs: noinline nounwind
define dso_local i32 @stdio_usb_in_chars(i8* noundef %0, i32 noundef %1) #3 {
  %3 = alloca i32, align 4
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #30
  %5 = call zeroext i1 @mutex_try_enter(%struct.mutex* noundef nonnull @stdio_usb_mutex, i32* noundef nonnull %3) #30
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load i32, i32* %3, align 4, !tbaa !18
  %8 = load i32, i32* inttoptr (i32 -805306368 to i32*), align 268435456, !tbaa !18
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %22, label %10

10:                                               ; preds = %6
  call void @mutex_enter_blocking(%struct.mutex* noundef nonnull @stdio_usb_mutex) #30
  br label %11

11:                                               ; preds = %10, %2
  %12 = call fastcc zeroext i1 @tud_cdc_connected()
  br i1 %12, label %13, label %20

13:                                               ; preds = %11
  %14 = call fastcc i32 @tud_cdc_available()
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = call fastcc i32 @tud_cdc_read(i8* noundef %0, i32 noundef %1)
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 -3, i32 %17
  br label %20

20:                                               ; preds = %16, %13, %11
  %21 = phi i32 [ %19, %16 ], [ -3, %13 ], [ -3, %11 ]
  call void @mutex_exit(%struct.mutex* noundef nonnull @stdio_usb_mutex) #30
  br label %22

22:                                               ; preds = %6, %20
  %23 = phi i32 [ %21, %20 ], [ -3, %6 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #30
  ret i32 %23
}

; Function Attrs: noinline nounwind
define internal fastcc zeroext i1 @tud_cdc_connected() unnamed_addr #3 {
  %1 = tail call zeroext i1 @tud_cdc_n_connected(i8 noundef zeroext 0) #30
  ret i1 %1
}

; Function Attrs: noinline nounwind
define internal fastcc i32 @tud_cdc_available() unnamed_addr #3 {
  %1 = tail call i32 @tud_cdc_n_available(i8 noundef zeroext 0) #30
  ret i32 %1
}

; Function Attrs: noinline nounwind
define internal fastcc i32 @tud_cdc_read(i8* noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = tail call i32 @tud_cdc_n_read(i8 noundef zeroext 0, i8* noundef %0, i32 noundef %1) #30
  ret i32 %3
}

; Function Attrs: noinline nounwind
define internal fastcc i32 @tud_cdc_write_available() unnamed_addr #3 {
  %1 = tail call i32 @tud_cdc_n_write_available(i8 noundef zeroext 0) #30
  ret i32 %1
}

; Function Attrs: noinline nounwind
define internal fastcc i32 @tud_cdc_write(i8* noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = tail call i32 @tud_cdc_n_write(i8 noundef zeroext 0, i8* noundef %0, i32 noundef %1) #30
  ret i32 %3
}

; Function Attrs: noinline nounwind
define internal fastcc void @tud_cdc_write_flush() unnamed_addr #3 {
  %1 = tail call i32 @tud_cdc_n_write_flush(i8 noundef zeroext 0) #30
  ret void
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @stdio_usb_init() local_unnamed_addr #3 {
  %1 = load volatile i8, i8* bitcast (%struct._binary_info_core** @stdio_usb_init.__bi_ptr93 to i8*), align 4, !tbaa !8
  %2 = tail call zeroext i1 @tusb_init() #30
  tail call void @irq_set_exclusive_handler(i32 noundef 31, void ()* noundef nonnull @low_priority_worker_irq) #30
  tail call void @irq_set_enabled(i32 noundef 31, i1 noundef zeroext true) #30
  tail call void @mutex_init(%struct.mutex* noundef nonnull @stdio_usb_mutex) #30
  %3 = tail call fastcc i32 @add_alarm_in_us()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  tail call void @stdio_set_driver_enabled(%struct.stdio_driver* noundef nonnull @stdio_usb, i1 noundef zeroext true) #30
  br label %6

6:                                                ; preds = %5, %0
  ret i1 %4
}

; Function Attrs: noinline nounwind
define internal void @low_priority_worker_irq() #3 {
  %1 = tail call zeroext i1 @mutex_try_enter(%struct.mutex* noundef nonnull @stdio_usb_mutex, i32* noundef null) #30
  br i1 %1, label %2, label %3

2:                                                ; preds = %0
  tail call void @tud_task() #30
  tail call void @mutex_exit(%struct.mutex* noundef nonnull @stdio_usb_mutex) #30
  br label %3

3:                                                ; preds = %2, %0
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc i32 @add_alarm_in_us() unnamed_addr #3 {
  %1 = tail call %struct.alarm_pool* @alarm_pool_get_default() #30
  %2 = tail call fastcc i32 @alarm_pool_add_alarm_in_us(%struct.alarm_pool* noundef %1)
  ret i32 %2
}

; Function Attrs: noinline nounwind
define internal fastcc i32 @alarm_pool_add_alarm_in_us(%struct.alarm_pool* noundef %0) unnamed_addr #3 {
  %2 = tail call fastcc i64 @get_absolute_time.105()
  %3 = tail call fastcc i64 @delayed_by_us.106(i64 noundef %2)
  %4 = tail call i32 @alarm_pool_add_alarm_at(%struct.alarm_pool* noundef %0, i64 noundef %3, i64 (i32, i8*)* noundef nonnull @timer_task, i8* noundef null, i1 noundef zeroext true) #30
  ret i32 %4
}

; Function Attrs: noinline nounwind
define internal fastcc i64 @get_absolute_time.105() unnamed_addr #3 {
  %1 = alloca i64, align 8
  %2 = bitcast i64* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #30
  %3 = tail call i64 @time_us_64() #30
  call fastcc void @update_us_since_boot.107(i64* noundef nonnull %1, i64 noundef %3)
  %4 = load i64, i64* %1, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #30
  ret i64 %4
}

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn writeonly
define internal fastcc i64 @delayed_by_us.106(i64 noundef %0) unnamed_addr #13 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #30
  %4 = add i64 %0, 1000
  %5 = icmp ugt i64 %0, -1001
  %6 = select i1 %5, i64 -1, i64 %4
  call fastcc void @update_us_since_boot.107(i64* noundef nonnull %2, i64 noundef %6)
  %7 = load i64, i64* %2, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #30
  ret i64 %7
}

; Function Attrs: noinline nounwind
define internal i64 @timer_task(i32 noundef %0, i8* nocapture noundef readnone %1) #3 {
  tail call void @irq_set_pending(i32 noundef 31) #30
  ret i64 1000
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly
define internal fastcc void @update_us_since_boot.107(i64* nocapture noundef writeonly %0, i64 noundef %1) unnamed_addr #15 {
  store i64 %1, i64* %0, align 8, !tbaa !56
  ret void
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @stdio_usb_connected() local_unnamed_addr #3 {
  %1 = tail call fastcc zeroext i1 @tud_cdc_connected()
  ret i1 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn
define dso_local i8* @tud_descriptor_device_cb() local_unnamed_addr #12 {
  ret i8* getelementptr inbounds (%struct.tusb_desc_device_t, %struct.tusb_desc_device_t* @usbd_desc_device, i32 0, i32 0)
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn
define dso_local i8* @tud_descriptor_configuration_cb(i8 noundef zeroext %0) local_unnamed_addr #12 {
  ret i8* getelementptr inbounds ([84 x i8], [84 x i8]* @usbd_desc_cfg, i32 0, i32 0)
}

; Function Attrs: noinline nounwind
define dso_local i16* @tud_descriptor_string_cb(i8 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #3 {
  %3 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @usbd_serial_str, i32 0, i32 0), align 1, !tbaa !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @pico_get_unique_board_id_string(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @usbd_serial_str, i32 0, i32 0), i32 noundef 17) #30
  br label %6

6:                                                ; preds = %5, %2
  %7 = zext i8 %0 to i32
  %8 = icmp eq i8 %0, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store i16 1033, i16* getelementptr inbounds ([20 x i16], [20 x i16]* @tud_descriptor_string_cb.desc_str, i32 0, i32 1), align 2, !tbaa !154
  br label %109

10:                                               ; preds = %6
  %11 = icmp ugt i8 %0, 5
  br i1 %11, label %113, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds [6 x i8*], [6 x i8*]* @usbd_desc_str, i32 0, i32 %7
  %14 = load i8*, i8** %13, align 4, !tbaa !11
  %15 = load i8, i8* %14, align 1, !tbaa !8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %109, label %17

17:                                               ; preds = %12
  %18 = zext i8 %15 to i16
  store i16 %18, i16* getelementptr inbounds ([20 x i16], [20 x i16]* @tud_descriptor_string_cb.desc_str, i32 0, i32 1), align 2, !tbaa !154
  %19 = getelementptr inbounds i8, i8* %14, i32 1
  %20 = load i8, i8* %19, align 1, !tbaa !8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %109, label %22

22:                                               ; preds = %17
  %23 = zext i8 %20 to i16
  store i16 %23, i16* getelementptr inbounds ([20 x i16], [20 x i16]* @tud_descriptor_string_cb.desc_str, i32 0, i32 2), align 2, !tbaa !154
  %24 = getelementptr inbounds i8, i8* %14, i32 2
  %25 = load i8, i8* %24, align 1, !tbaa !8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %109, label %27

27:                                               ; preds = %22
  %28 = zext i8 %25 to i16
  store i16 %28, i16* getelementptr inbounds ([20 x i16], [20 x i16]* @tud_descriptor_string_cb.desc_str, i32 0, i32 3), align 2, !tbaa !154
  %29 = getelementptr inbounds i8, i8* %14, i32 3
  %30 = load i8, i8* %29, align 1, !tbaa !8
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %109, label %32

32:                                               ; preds = %27
  %33 = zext i8 %30 to i16
  store i16 %33, i16* getelementptr inbounds ([20 x i16], [20 x i16]* @tud_descriptor_string_cb.desc_str, i32 0, i32 4), align 2, !tbaa !154
  %34 = getelementptr inbounds i8, i8* %14, i32 4
  %35 = load i8, i8* %34, align 1, !tbaa !8
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %109, label %37

37:                                               ; preds = %32
  %38 = zext i8 %35 to i16
  store i16 %38, i16* getelementptr inbounds ([20 x i16], [20 x i16]* @tud_descriptor_string_cb.desc_str, i32 0, i32 5), align 2, !tbaa !154
  %39 = getelementptr inbounds i8, i8* %14, i32 5
  %40 = load i8, i8* %39, align 1, !tbaa !8
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %109, label %42

42:                                               ; preds = %37
  %43 = zext i8 %40 to i16
  store i16 %43, i16* getelementptr inbounds ([20 x i16], [20 x i16]* @tud_descriptor_string_cb.desc_str, i32 0, i32 6), align 2, !tbaa !154
  %44 = getelementptr inbounds i8, i8* %14, i32 6
  %45 = load i8, i8* %44, align 1, !tbaa !8
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %109, label %47

47:                                               ; preds = %42
  %48 = zext i8 %45 to i16
  store i16 %48, i16* getelementptr inbounds ([20 x i16], [20 x i16]* @tud_descriptor_string_cb.desc_str, i32 0, i32 7), align 2, !tbaa !154
  %49 = getelementptr inbounds i8, i8* %14, i32 7
  %50 = load i8, i8* %49, align 1, !tbaa !8
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %109, label %52

52:                                               ; preds = %47
  %53 = zext i8 %50 to i16
  store i16 %53, i16* getelementptr inbounds ([20 x i16], [20 x i16]* @tud_descriptor_string_cb.desc_str, i32 0, i32 8), align 2, !tbaa !154
  %54 = getelementptr inbounds i8, i8* %14, i32 8
  %55 = load i8, i8* %54, align 1, !tbaa !8
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %109, label %57

57:                                               ; preds = %52
  %58 = zext i8 %55 to i16
  store i16 %58, i16* getelementptr inbounds ([20 x i16], [20 x i16]* @tud_descriptor_string_cb.desc_str, i32 0, i32 9), align 2, !tbaa !154
  %59 = getelementptr inbounds i8, i8* %14, i32 9
  %60 = load i8, i8* %59, align 1, !tbaa !8
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %109, label %62

62:                                               ; preds = %57
  %63 = zext i8 %60 to i16
  store i16 %63, i16* getelementptr inbounds ([20 x i16], [20 x i16]* @tud_descriptor_string_cb.desc_str, i32 0, i32 10), align 2, !tbaa !154
  %64 = getelementptr inbounds i8, i8* %14, i32 10
  %65 = load i8, i8* %64, align 1, !tbaa !8
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %109, label %67

67:                                               ; preds = %62
  %68 = zext i8 %65 to i16
  store i16 %68, i16* getelementptr inbounds ([20 x i16], [20 x i16]* @tud_descriptor_string_cb.desc_str, i32 0, i32 11), align 2, !tbaa !154
  %69 = getelementptr inbounds i8, i8* %14, i32 11
  %70 = load i8, i8* %69, align 1, !tbaa !8
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %109, label %72

72:                                               ; preds = %67
  %73 = zext i8 %70 to i16
  store i16 %73, i16* getelementptr inbounds ([20 x i16], [20 x i16]* @tud_descriptor_string_cb.desc_str, i32 0, i32 12), align 2, !tbaa !154
  %74 = getelementptr inbounds i8, i8* %14, i32 12
  %75 = load i8, i8* %74, align 1, !tbaa !8
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %109, label %77

77:                                               ; preds = %72
  %78 = zext i8 %75 to i16
  store i16 %78, i16* getelementptr inbounds ([20 x i16], [20 x i16]* @tud_descriptor_string_cb.desc_str, i32 0, i32 13), align 2, !tbaa !154
  %79 = getelementptr inbounds i8, i8* %14, i32 13
  %80 = load i8, i8* %79, align 1, !tbaa !8
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %109, label %82

82:                                               ; preds = %77
  %83 = zext i8 %80 to i16
  store i16 %83, i16* getelementptr inbounds ([20 x i16], [20 x i16]* @tud_descriptor_string_cb.desc_str, i32 0, i32 14), align 2, !tbaa !154
  %84 = getelementptr inbounds i8, i8* %14, i32 14
  %85 = load i8, i8* %84, align 1, !tbaa !8
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %109, label %87

87:                                               ; preds = %82
  %88 = zext i8 %85 to i16
  store i16 %88, i16* getelementptr inbounds ([20 x i16], [20 x i16]* @tud_descriptor_string_cb.desc_str, i32 0, i32 15), align 2, !tbaa !154
  %89 = getelementptr inbounds i8, i8* %14, i32 15
  %90 = load i8, i8* %89, align 1, !tbaa !8
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %109, label %92

92:                                               ; preds = %87
  %93 = zext i8 %90 to i16
  store i16 %93, i16* getelementptr inbounds ([20 x i16], [20 x i16]* @tud_descriptor_string_cb.desc_str, i32 0, i32 16), align 2, !tbaa !154
  %94 = getelementptr inbounds i8, i8* %14, i32 16
  %95 = load i8, i8* %94, align 1, !tbaa !8
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %109, label %97

97:                                               ; preds = %92
  %98 = zext i8 %95 to i16
  store i16 %98, i16* getelementptr inbounds ([20 x i16], [20 x i16]* @tud_descriptor_string_cb.desc_str, i32 0, i32 17), align 2, !tbaa !154
  %99 = getelementptr inbounds i8, i8* %14, i32 17
  %100 = load i8, i8* %99, align 1, !tbaa !8
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %97
  %103 = zext i8 %100 to i16
  store i16 %103, i16* getelementptr inbounds ([20 x i16], [20 x i16]* @tud_descriptor_string_cb.desc_str, i32 0, i32 18), align 2, !tbaa !154
  %104 = getelementptr inbounds i8, i8* %14, i32 18
  %105 = load i8, i8* %104, align 1, !tbaa !8
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %102
  %108 = zext i8 %105 to i16
  store i16 %108, i16* getelementptr inbounds ([20 x i16], [20 x i16]* @tud_descriptor_string_cb.desc_str, i32 0, i32 19), align 2, !tbaa !154
  br label %109

109:                                              ; preds = %12, %17, %22, %27, %32, %37, %42, %47, %52, %57, %62, %67, %72, %77, %82, %87, %92, %97, %102, %107, %9
  %110 = phi i8 [ 4, %9 ], [ 2, %12 ], [ 4, %17 ], [ 6, %22 ], [ 8, %27 ], [ 10, %32 ], [ 12, %37 ], [ 14, %42 ], [ 16, %47 ], [ 18, %52 ], [ 20, %57 ], [ 22, %62 ], [ 24, %67 ], [ 26, %72 ], [ 28, %77 ], [ 30, %82 ], [ 32, %87 ], [ 34, %92 ], [ 36, %97 ], [ 38, %102 ], [ 40, %107 ]
  %111 = zext i8 %110 to i16
  %112 = or i16 %111, 768
  store i16 %112, i16* getelementptr inbounds ([20 x i16], [20 x i16]* @tud_descriptor_string_cb.desc_str, i32 0, i32 0), align 2, !tbaa !154
  br label %113

113:                                              ; preds = %10, %109
  %114 = phi i16* [ getelementptr inbounds ([20 x i16], [20 x i16]* @tud_descriptor_string_cb.desc_str, i32 0, i32 0), %109 ], [ null, %10 ]
  ret i16* %114
}

; Function Attrs: noinline nounwind
define dso_local void @dcd_init(i8 noundef zeroext %0) local_unnamed_addr #3 {
  tail call void @rp2040_usb_init() #30
  store volatile i32 12, i32* inttoptr (i32 1343291512 to i32*), align 8, !tbaa !245
  tail call void @irq_set_exclusive_handler(i32 noundef 5, void ()* noundef nonnull @dcd_rp2040_irq) #30
  tail call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(64) getelementptr inbounds ([16 x [2 x %struct.hw_endpoint]], [16 x [2 x %struct.hw_endpoint]]* @hw_endpoints, i32 0, i32 0, i32 0, i32 0), i8 0, i32 64, i1 false)
  tail call fastcc void @hw_endpoint_init(i8 noundef zeroext 0, i16 noundef zeroext 64, i8 noundef zeroext 0)
  tail call fastcc void @hw_endpoint_init(i8 noundef zeroext -128, i16 noundef zeroext 64, i8 noundef zeroext 0)
  tail call fastcc void @reset_non_control_endpoints()
  store volatile i32 1, i32* inttoptr (i32 1343291456 to i32*), align 64, !tbaa !247
  store volatile i32 536870912, i32* inttoptr (i32 1343291468 to i32*), align 4, !tbaa !248
  store volatile i32 118800, i32* inttoptr (i32 1343291536 to i32*), align 16, !tbaa !249
  tail call void @dcd_connect(i8 noundef zeroext %0)
  ret void
}

; Function Attrs: noinline nounwind
define internal void @dcd_rp2040_irq() #3 {
  %1 = load volatile i32, i32* inttoptr (i32 1343291544 to i32*), align 8, !tbaa !250
  %2 = and i32 %1, 65536
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  tail call fastcc void @reset_ep0_pid()
  tail call void @dcd_event_setup_received(i8 noundef zeroext 0, i8* noundef nonnull inttoptr (i32 1343225856 to i8*), i1 noundef zeroext true) #30
  store volatile i32 131072, i32* inttoptr (i32 1343303760 to i32*), align 16, !tbaa !251
  br label %5

5:                                                ; preds = %4, %0
  %6 = phi i32 [ 65536, %4 ], [ 0, %0 ]
  %7 = and i32 %1, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = or i32 %6, 16
  tail call fastcc void @hw_handle_buff_status()
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi i32 [ %10, %9 ], [ %6, %5 ]
  %13 = and i32 %1, 4096
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = or i32 %12, 4096
  store volatile i32 0, i32* inttoptr (i32 1343291392 to i32*), align 65536, !tbaa !252
  tail call fastcc void @reset_non_control_endpoints()
  tail call void @dcd_event_bus_reset(i8 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext true) #30
  store volatile i32 524288, i32* inttoptr (i32 1343303760 to i32*), align 16, !tbaa !251
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i32 [ %16, %15 ], [ %12, %11 ]
  %19 = and i32 %1, 16384
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = or i32 %18, 16384
  tail call void @dcd_event_bus_signal(i8 noundef zeroext 0, i32 noundef 4, i1 noundef zeroext true) #30
  store volatile i32 16, i32* inttoptr (i32 1343303760 to i32*), align 16, !tbaa !251
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i32 [ %22, %21 ], [ %18, %17 ]
  %25 = and i32 %1, 32768
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = or i32 %24, 32768
  tail call void @dcd_event_bus_signal(i8 noundef zeroext 0, i32 noundef 5, i1 noundef zeroext true) #30
  store volatile i32 2048, i32* inttoptr (i32 1343303760 to i32*), align 16, !tbaa !251
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi i32 [ %28, %27 ], [ %24, %23 ]
  %31 = xor i32 %30, %1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.113, i32 0, i32 0), i32 noundef %31) #32
  unreachable

34:                                               ; preds = %29
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define internal fastcc void @hw_endpoint_init(i8 noundef zeroext %0, i16 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #2 {
  %4 = tail call fastcc %struct.hw_endpoint* @hw_endpoint_get_by_addr(i8 noundef zeroext %0)
  %5 = tail call fastcc zeroext i8 @tu_edpt_number(i8 noundef zeroext %0)
  %6 = tail call fastcc i32 @tu_edpt_dir(i8 noundef zeroext %0)
  %7 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %4, i32 0, i32 2
  store i8 %0, i8* %7, align 2, !tbaa !253
  %8 = icmp eq i32 %6, 0
  %9 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %4, i32 0, i32 1
  %10 = zext i1 %8 to i8
  store i8 %10, i8* %9, align 1, !tbaa !255
  %11 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %4, i32 0, i32 3
  store i8 0, i8* %11, align 1, !tbaa !256
  %12 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %4, i32 0, i32 11
  store i16 %1, i16* %12, align 4, !tbaa !257
  %13 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %4, i32 0, i32 12
  store i8 %2, i8* %13, align 2, !tbaa !258
  %14 = icmp eq i32 %6, 1
  %15 = zext i8 %5 to i32
  br i1 %14, label %16, label %20

16:                                               ; preds = %3
  %17 = getelementptr inbounds [16 x %struct.iobank0_status_ctrl_hw_t], [16 x %struct.iobank0_status_ctrl_hw_t]* inttoptr (i32 1343225984 to [16 x %struct.iobank0_status_ctrl_hw_t]*), i32 0, i32 %15, i32 0
  %18 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %4, i32 0, i32 5
  store i32* %17, i32** %18, align 4, !tbaa !259
  store volatile i32 0, i32* %17, align 8, !tbaa !18
  %19 = icmp eq i8 %5, 0
  br i1 %19, label %24, label %27

20:                                               ; preds = %3
  %21 = getelementptr inbounds [16 x %struct.iobank0_status_ctrl_hw_t], [16 x %struct.iobank0_status_ctrl_hw_t]* inttoptr (i32 1343225984 to [16 x %struct.iobank0_status_ctrl_hw_t]*), i32 0, i32 %15, i32 1
  %22 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %4, i32 0, i32 5
  store i32* %21, i32** %22, align 4, !tbaa !259
  store volatile i32 0, i32* %21, align 4, !tbaa !18
  %23 = icmp eq i8 %5, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20, %16
  %25 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %4, i32 0, i32 4
  store i32* null, i32** %25, align 4, !tbaa !260
  %26 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %4, i32 0, i32 6
  store i8* inttoptr (i32 1343226112 to i8*), i8** %26, align 4, !tbaa !261
  br label %36

27:                                               ; preds = %16
  %28 = add nsw i32 %15, -1
  %29 = getelementptr inbounds [15 x %struct.iobank0_status_ctrl_hw_t], [15 x %struct.iobank0_status_ctrl_hw_t]* inttoptr (i32 1343225864 to [15 x %struct.iobank0_status_ctrl_hw_t]*), i32 0, i32 %28, i32 0
  br label %33

30:                                               ; preds = %20
  %31 = add nsw i32 %15, -1
  %32 = getelementptr inbounds [15 x %struct.iobank0_status_ctrl_hw_t], [15 x %struct.iobank0_status_ctrl_hw_t]* inttoptr (i32 1343225864 to [15 x %struct.iobank0_status_ctrl_hw_t]*), i32 0, i32 %31, i32 1
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi i32* [ %32, %30 ], [ %29, %27 ]
  %35 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %4, i32 0, i32 4
  store i32* %34, i32** %35, align 4, !tbaa !260
  tail call fastcc void @_hw_endpoint_alloc(%struct.hw_endpoint* noundef nonnull %4, i8 noundef zeroext %2)
  br label %36

36:                                               ; preds = %33, %24
  ret void
}

; Function Attrs: nofree noinline nounwind
define internal fastcc void @reset_non_control_endpoints() unnamed_addr #8 {
  store volatile i32 0, i32* inttoptr (i32 1343225864 to i32*), align 8, !tbaa !262
  store volatile i32 0, i32* inttoptr (i32 1343225868 to i32*), align 4, !tbaa !264
  store volatile i32 0, i32* inttoptr (i32 1343225872 to i32*), align 16, !tbaa !262
  store volatile i32 0, i32* inttoptr (i32 1343225876 to i32*), align 4, !tbaa !264
  store volatile i32 0, i32* inttoptr (i32 1343225880 to i32*), align 8, !tbaa !262
  store volatile i32 0, i32* inttoptr (i32 1343225884 to i32*), align 4, !tbaa !264
  store volatile i32 0, i32* inttoptr (i32 1343225888 to i32*), align 32, !tbaa !262
  store volatile i32 0, i32* inttoptr (i32 1343225892 to i32*), align 4, !tbaa !264
  store volatile i32 0, i32* inttoptr (i32 1343225896 to i32*), align 8, !tbaa !262
  store volatile i32 0, i32* inttoptr (i32 1343225900 to i32*), align 4, !tbaa !264
  store volatile i32 0, i32* inttoptr (i32 1343225904 to i32*), align 16, !tbaa !262
  store volatile i32 0, i32* inttoptr (i32 1343225908 to i32*), align 4, !tbaa !264
  store volatile i32 0, i32* inttoptr (i32 1343225912 to i32*), align 8, !tbaa !262
  store volatile i32 0, i32* inttoptr (i32 1343225916 to i32*), align 4, !tbaa !264
  store volatile i32 0, i32* inttoptr (i32 1343225920 to i32*), align 64, !tbaa !262
  store volatile i32 0, i32* inttoptr (i32 1343225924 to i32*), align 4, !tbaa !264
  store volatile i32 0, i32* inttoptr (i32 1343225928 to i32*), align 8, !tbaa !262
  store volatile i32 0, i32* inttoptr (i32 1343225932 to i32*), align 4, !tbaa !264
  store volatile i32 0, i32* inttoptr (i32 1343225936 to i32*), align 16, !tbaa !262
  store volatile i32 0, i32* inttoptr (i32 1343225940 to i32*), align 4, !tbaa !264
  store volatile i32 0, i32* inttoptr (i32 1343225944 to i32*), align 8, !tbaa !262
  store volatile i32 0, i32* inttoptr (i32 1343225948 to i32*), align 4, !tbaa !264
  store volatile i32 0, i32* inttoptr (i32 1343225952 to i32*), align 32, !tbaa !262
  store volatile i32 0, i32* inttoptr (i32 1343225956 to i32*), align 4, !tbaa !264
  store volatile i32 0, i32* inttoptr (i32 1343225960 to i32*), align 8, !tbaa !262
  store volatile i32 0, i32* inttoptr (i32 1343225964 to i32*), align 4, !tbaa !264
  store volatile i32 0, i32* inttoptr (i32 1343225968 to i32*), align 16, !tbaa !262
  store volatile i32 0, i32* inttoptr (i32 1343225972 to i32*), align 4, !tbaa !264
  store volatile i32 0, i32* inttoptr (i32 1343225976 to i32*), align 8, !tbaa !262
  store volatile i32 0, i32* inttoptr (i32 1343225980 to i32*), align 4, !tbaa !264
  tail call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(960) getelementptr inbounds ([16 x [2 x %struct.hw_endpoint]], [16 x [2 x %struct.hw_endpoint]]* @hw_endpoints, i32 0, i32 1, i32 0, i32 0), i8 0, i32 960, i1 false)
  store i8* inttoptr (i32 1343226240 to i8*), i8** @next_buffer_ptr, align 4, !tbaa !11
  ret void
}

; Function Attrs: noinline nounwind
define weak dso_local void @dcd_connect(i8 noundef zeroext %0) #3 {
  store volatile i32 65536, i32* inttoptr (i32 1343299660 to i32*), align 4, !tbaa !248
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn
define internal fastcc nonnull %struct.hw_endpoint* @hw_endpoint_get_by_addr(i8 noundef zeroext %0) unnamed_addr #12 {
  %2 = tail call fastcc zeroext i8 @tu_edpt_number(i8 noundef zeroext %0)
  %3 = tail call fastcc i32 @tu_edpt_dir(i8 noundef zeroext %0), !range !265
  %4 = tail call fastcc %struct.hw_endpoint* @hw_endpoint_get_by_num(i8 noundef zeroext %2, i32 noundef %3)
  ret %struct.hw_endpoint* %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn
define internal fastcc zeroext i8 @tu_edpt_number(i8 noundef zeroext %0) unnamed_addr #12 {
  %2 = and i8 %0, 127
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn
define internal fastcc i32 @tu_edpt_dir(i8 noundef zeroext %0) unnamed_addr #12 {
  %2 = lshr i8 %0, 7
  %3 = zext i8 %2 to i32
  ret i32 %3
}

; Function Attrs: nofree noinline norecurse nounwind
define internal fastcc void @_hw_endpoint_alloc(%struct.hw_endpoint* nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %0, i32 0, i32 11
  %4 = load i16, i16* %3, align 4, !tbaa !257
  %5 = zext i16 %4 to i32
  %6 = add nuw nsw i32 %5, 63
  %7 = and i32 %6, 131008
  %8 = icmp eq i8 %1, 2
  %9 = shl nuw nsw i32 %6, 1
  %10 = and i32 %9, 262016
  %11 = select i1 %8, i32 %10, i32 %7
  %12 = zext i8 %1 to i32
  %13 = load i8*, i8** @next_buffer_ptr, align 4, !tbaa !11
  %14 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %0, i32 0, i32 6
  store i8* %13, i8** %14, align 4, !tbaa !261
  %15 = getelementptr inbounds i8, i8* %13, i32 %11
  store i8* %15, i8** @next_buffer_ptr, align 4, !tbaa !11
  %16 = tail call fastcc i32 @hw_data_offset(i8* noundef %13)
  %17 = shl i32 %12, 26
  %18 = or i32 %17, %16
  %19 = or i32 %18, -2147483648
  %20 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %0, i32 0, i32 4
  %21 = load i32*, i32** %20, align 4, !tbaa !260
  store volatile i32 %19, i32* %21, align 4, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn
define internal fastcc i32 @hw_data_offset(i8* noundef %0) unnamed_addr #12 {
  %2 = ptrtoint i8* %0 to i32
  %3 = xor i32 %2, 1343225856
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn
define internal fastcc nonnull %struct.hw_endpoint* @hw_endpoint_get_by_num(i8 noundef zeroext %0, i32 noundef %1) unnamed_addr #12 {
  %3 = zext i8 %0 to i32
  %4 = getelementptr inbounds [16 x [2 x %struct.hw_endpoint]], [16 x [2 x %struct.hw_endpoint]]* @hw_endpoints, i32 0, i32 %3, i32 %1
  ret %struct.hw_endpoint* %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind writeonly
define internal fastcc void @reset_ep0_pid() unnamed_addr #25 {
  %1 = tail call fastcc %struct.hw_endpoint* @hw_endpoint_get_by_addr(i8 noundef zeroext 0)
  %2 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %1, i32 0, i32 3
  store i8 1, i8* %2, align 1, !tbaa !256
  %3 = tail call fastcc %struct.hw_endpoint* @hw_endpoint_get_by_addr(i8 noundef zeroext -128)
  %4 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %3, i32 0, i32 3
  store i8 1, i8* %4, align 1, !tbaa !256
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc void @hw_handle_buff_status() unnamed_addr #3 {
  %1 = load volatile i32, i32* inttoptr (i32 1343291480 to i32*), align 8, !tbaa !266
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %26, %0
  ret void

4:                                                ; preds = %0, %26
  %5 = phi i32 [ %27, %26 ], [ %1, %0 ]
  %6 = phi i32 [ %28, %26 ], [ 1, %0 ]
  %7 = phi i8 [ %29, %26 ], [ 0, %0 ]
  %8 = and i32 %5, %6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %4
  store volatile i32 %6, i32* inttoptr (i32 1343303768 to i32*), align 8, !tbaa !266
  %11 = lshr i8 %7, 1
  %12 = and i8 %7, 1
  %13 = xor i8 %12, 1
  %14 = zext i8 %13 to i32
  %15 = tail call fastcc %struct.hw_endpoint* @hw_endpoint_get_by_num(i8 noundef zeroext %11, i32 noundef %14)
  %16 = tail call zeroext i1 @hw_endpoint_xfer_continue(%struct.hw_endpoint* noundef nonnull %15) #30
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %15, i32 0, i32 2
  %19 = load i8, i8* %18, align 2, !tbaa !253
  %20 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %15, i32 0, i32 9
  %21 = load i16, i16* %20, align 4, !tbaa !267
  %22 = zext i16 %21 to i32
  tail call void @dcd_event_xfer_complete(i8 noundef zeroext 0, i8 noundef zeroext %19, i32 noundef %22, i8 noundef zeroext 0, i1 noundef zeroext true) #30
  tail call void @hw_endpoint_reset_transfer(%struct.hw_endpoint* noundef nonnull %15) #30
  br label %23

23:                                               ; preds = %17, %10
  %24 = xor i32 %6, -1
  %25 = and i32 %5, %24
  br label %26

26:                                               ; preds = %23, %4
  %27 = phi i32 [ %25, %23 ], [ %5, %4 ]
  %28 = shl i32 %6, 1
  %29 = add nuw nsw i8 %7, 1
  %30 = icmp ne i32 %27, 0
  %31 = icmp ult i8 %7, 31
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %4, label %3, !llvm.loop !268
}

; Function Attrs: noinline nounwind
define dso_local void @dcd_int_enable(i8 noundef zeroext %0) local_unnamed_addr #3 {
  tail call void @irq_set_enabled(i32 noundef 5, i1 noundef zeroext true) #30
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @dcd_int_disable(i8 noundef zeroext %0) local_unnamed_addr #3 {
  tail call void @irq_set_enabled(i32 noundef 5, i1 noundef zeroext false) #30
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @dcd_set_address(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #3 {
  tail call fastcc void @hw_endpoint_xfer(i8 noundef zeroext -128, i8* noundef null, i16 noundef zeroext 0)
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc void @hw_endpoint_xfer(i8 noundef zeroext %0, i8* noundef %1, i16 noundef zeroext %2) unnamed_addr #3 {
  %4 = tail call fastcc %struct.hw_endpoint* @hw_endpoint_get_by_addr(i8 noundef zeroext %0)
  tail call void @hw_endpoint_xfer_start(%struct.hw_endpoint* noundef nonnull %4, i8* noundef %1, i16 noundef zeroext %2) #30
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @dcd_remote_wakeup(i8 noundef zeroext %0) local_unnamed_addr #2 {
  store volatile i32 4096, i32* inttoptr (i32 1343299660 to i32*), align 4, !tbaa !248
  ret void
}

; Function Attrs: noinline nounwind
define weak dso_local void @dcd_disconnect(i8 noundef zeroext %0) #3 {
  store volatile i32 65536, i32* inttoptr (i32 1343303756 to i32*), align 4, !tbaa !248
  ret void
}

; Function Attrs: noinline nounwind
define weak dso_local void @dcd_edpt0_status_complete(i8 noundef zeroext %0, %struct.tusb_control_request_t* noundef %1) #3 {
  %3 = getelementptr inbounds %struct.tusb_control_request_t, %struct.tusb_control_request_t* %1, i32 0, i32 0, i32 0, i32 0
  %4 = load i8, i8* %3, align 1
  %5 = and i8 %4, 127
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tusb_control_request_t, %struct.tusb_control_request_t* %1, i32 0, i32 1
  %9 = load i8, i8* %8, align 1, !tbaa !240
  %10 = icmp eq i8 %9, 5
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tusb_control_request_t, %struct.tusb_control_request_t* %1, i32 0, i32 2
  %13 = load i16, i16* %12, align 1, !tbaa !241
  %14 = and i16 %13, 255
  %15 = zext i16 %14 to i32
  store volatile i32 %15, i32* inttoptr (i32 1343291392 to i32*), align 65536, !tbaa !252
  br label %16

16:                                               ; preds = %11, %7, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local zeroext i1 @dcd_edpt_open(i8 noundef zeroext %0, %struct.tusb_desc_endpoint_t* nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.tusb_desc_endpoint_t, %struct.tusb_desc_endpoint_t* %1, i32 0, i32 2
  %4 = load i8, i8* %3, align 1, !tbaa !269
  %5 = getelementptr inbounds %struct.tusb_desc_endpoint_t, %struct.tusb_desc_endpoint_t* %1, i32 0, i32 4, i32 0
  %6 = load i16, i16* %5, align 1
  %7 = and i16 %6, 2047
  %8 = getelementptr inbounds %struct.tusb_desc_endpoint_t, %struct.tusb_desc_endpoint_t* %1, i32 0, i32 3, i32 0
  %9 = load i8, i8* %8, align 1
  %10 = and i8 %9, 3
  tail call fastcc void @hw_endpoint_init(i8 noundef zeroext %4, i16 noundef zeroext %7, i8 noundef zeroext %10)
  ret i1 true
}

; Function Attrs: nofree noinline nounwind
define dso_local void @dcd_edpt_close_all(i8 noundef zeroext %0) local_unnamed_addr #8 {
  tail call fastcc void @reset_non_control_endpoints()
  ret void
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @dcd_edpt_xfer(i8 noundef zeroext %0, i8 noundef zeroext %1, i8* noundef %2, i16 noundef zeroext %3) local_unnamed_addr #3 {
  tail call fastcc void @hw_endpoint_xfer(i8 noundef zeroext %1, i8* noundef %2, i16 noundef zeroext %3)
  ret i1 true
}

; Function Attrs: noinline nounwind
define dso_local void @dcd_edpt_stall(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #3 {
  %3 = tail call fastcc zeroext i8 @tu_edpt_number(i8 noundef zeroext %1)
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @tu_edpt_dir(i8 noundef zeroext %1)
  %7 = icmp eq i32 %6, 1
  %8 = select i1 %7, i32 1, i32 2
  store volatile i32 %8, i32* inttoptr (i32 1343299688 to i32*), align 8, !tbaa !273
  br label %9

9:                                                ; preds = %5, %2
  %10 = tail call fastcc %struct.hw_endpoint* @hw_endpoint_get_by_addr(i8 noundef zeroext %1)
  tail call fastcc void @_hw_endpoint_buffer_control_set_value32(%struct.hw_endpoint* noundef nonnull %10)
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc void @_hw_endpoint_buffer_control_set_value32(%struct.hw_endpoint* noundef %0) unnamed_addr #3 {
  tail call void @_hw_endpoint_buffer_control_update32(%struct.hw_endpoint* noundef %0, i32 noundef 0, i32 noundef 2048) #30
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @dcd_edpt_clear_stall(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #3 {
  %3 = tail call fastcc zeroext i8 @tu_edpt_number(i8 noundef zeroext %1)
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc %struct.hw_endpoint* @hw_endpoint_get_by_addr(i8 noundef zeroext %1)
  %7 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %6, i32 0, i32 3
  store i8 0, i8* %7, align 1, !tbaa !256
  tail call fastcc void @_hw_endpoint_buffer_control_clear_mask32(%struct.hw_endpoint* noundef nonnull %6)
  br label %8

8:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc void @_hw_endpoint_buffer_control_clear_mask32(%struct.hw_endpoint* noundef %0) unnamed_addr #3 {
  tail call void @_hw_endpoint_buffer_control_update32(%struct.hw_endpoint* noundef %0, i32 noundef -2049, i32 noundef 0) #30
  ret void
}

; Function Attrs: noinline nounwind
define weak dso_local void @dcd_edpt_close(i8 noundef zeroext %0, i8 noundef zeroext %1) #3 {
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @dcd_int_handler(i8 noundef zeroext %0) local_unnamed_addr #3 {
  tail call void @dcd_rp2040_irq()
  ret void
}

; Function Attrs: nofree noinline nounwind
define dso_local void @rp2040_usb_init() local_unnamed_addr #8 {
  tail call fastcc void @reset_block.118()
  tail call fastcc void @unreset_block_wait.119()
  tail call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 65536 dereferenceable(156) inttoptr (i32 1343291392 to i8*), i8 0, i32 156, i1 false)
  tail call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1048576 dereferenceable(4096) inttoptr (i32 1343225856 to i8*), i8 0, i32 4096, i1 false)
  store volatile i32 9, i32* inttoptr (i32 1343291508 to i32*), align 4, !tbaa !274
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define internal fastcc void @reset_block.118() unnamed_addr #2 {
  store volatile i32 16777216, i32* inttoptr (i32 1073799168 to i32*), align 8192, !tbaa !18
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define internal fastcc void @unreset_block_wait.119() unnamed_addr #2 {
  store volatile i32 16777216, i32* inttoptr (i32 1073803264 to i32*), align 4096, !tbaa !18
  br label %1

1:                                                ; preds = %13, %0
  %2 = load volatile i32, i32* inttoptr (i32 1073790984 to i32*), align 8, !tbaa !124
  %3 = and i32 %2, 16777216
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %17, !llvm.loop !275

5:                                                ; preds = %1
  %6 = load volatile i32, i32* inttoptr (i32 1073790984 to i32*), align 8, !tbaa !124
  %7 = and i32 %6, 16777216
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17, !llvm.loop !275

9:                                                ; preds = %5
  %10 = load volatile i32, i32* inttoptr (i32 1073790984 to i32*), align 8, !tbaa !124
  %11 = and i32 %10, 16777216
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17, !llvm.loop !275

13:                                               ; preds = %9
  %14 = load volatile i32, i32* inttoptr (i32 1073790984 to i32*), align 8, !tbaa !124
  %15 = and i32 %14, 16777216
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %1, label %17, !llvm.loop !275

17:                                               ; preds = %13, %9, %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly
define dso_local void @hw_endpoint_reset_transfer(%struct.hw_endpoint* nocapture noundef writeonly %0) local_unnamed_addr #15 {
  %2 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %0, i32 0, i32 7
  store i8 0, i8* %2, align 4, !tbaa !276
  %3 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %0, i32 0, i32 8
  store i16 0, i16* %3, align 2, !tbaa !277
  %4 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %0, i32 0, i32 9
  store i16 0, i16* %4, align 4, !tbaa !267
  %5 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %0, i32 0, i32 10
  store i8* null, i8** %5, align 4, !tbaa !278
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @_hw_endpoint_buffer_control_update32(%struct.hw_endpoint* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %0, i32 0, i32 5
  %7 = load i32*, i32** %6, align 4, !tbaa !259
  %8 = load volatile i32, i32* %7, align 4, !tbaa !18
  %9 = and i32 %8, %1
  br label %10

10:                                               ; preds = %5, %3
  %11 = phi i32 [ %9, %5 ], [ 0, %3 ]
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %33, label %13

13:                                               ; preds = %10
  %14 = or i32 %11, %2
  %15 = and i32 %2, 1024
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %0, i32 0, i32 5
  %19 = load i32*, i32** %18, align 4, !tbaa !259
  %20 = load volatile i32, i32* %19, align 4, !tbaa !18
  %21 = and i32 %20, 1024
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %0, i32 0, i32 2
  %25 = load i8, i8* %24, align 2, !tbaa !253
  %26 = tail call fastcc zeroext i8 @tu_edpt_number.124(i8 noundef zeroext %25)
  %27 = zext i8 %26 to i32
  %28 = tail call fastcc i32 @tu_edpt_dir.125(i8 noundef zeroext %25)
  %29 = getelementptr inbounds [2 x i8*], [2 x i8*]* @ep_dir_string, i32 0, i32 %28
  %30 = load i8*, i8** %29, align 4, !tbaa !11
  tail call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2.126, i32 0, i32 0), i32 noundef %27, i8* noundef %30) #32
  unreachable

31:                                               ; preds = %17
  %32 = and i32 %14, -1025
  store volatile i32 %32, i32* %19, align 4, !tbaa !18
  tail call void asm sideeffect "b 1f\0A1: b 1f\0A1: b 1f\0A1: b 1f\0A1: b 1f\0A1: b 1f\0A1:\0A", "~{memory}"() #30, !srcloc !279
  br label %33

33:                                               ; preds = %13, %31, %10
  %34 = phi i32 [ %14, %31 ], [ %14, %13 ], [ %11, %10 ]
  %35 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %0, i32 0, i32 5
  %36 = load i32*, i32** %35, align 4, !tbaa !259
  store volatile i32 %34, i32* %36, align 4, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn
define internal fastcc zeroext i8 @tu_edpt_number.124(i8 noundef zeroext %0) unnamed_addr #12 {
  %2 = and i8 %0, 127
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn
define internal fastcc i32 @tu_edpt_dir.125(i8 noundef zeroext %0) unnamed_addr #12 {
  %2 = lshr i8 %0, 7
  %3 = zext i8 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind
define dso_local void @hw_endpoint_xfer_start(%struct.hw_endpoint* nocapture noundef %0, i8* noundef %1, i16 noundef zeroext %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %0, i32 0, i32 7
  %5 = load i8, i8* %4, align 4, !tbaa !276, !range !68
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @hw_endpoint_reset_transfer(%struct.hw_endpoint* noundef nonnull %0)
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %0, i32 0, i32 8
  store i16 %2, i16* %9, align 2, !tbaa !277
  %10 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %0, i32 0, i32 9
  store i16 0, i16* %10, align 4, !tbaa !267
  store i8 1, i8* %4, align 4, !tbaa !276
  %11 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %0, i32 0, i32 10
  store i8* %1, i8** %11, align 4, !tbaa !278
  tail call fastcc void @_hw_endpoint_start_next_buffer(%struct.hw_endpoint* noundef nonnull %0)
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc void @_hw_endpoint_start_next_buffer(%struct.hw_endpoint* nocapture noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %0, i32 0, i32 4
  %3 = load i32*, i32** %2, align 4, !tbaa !260
  %4 = load volatile i32, i32* %3, align 4, !tbaa !18
  %5 = tail call fastcc i32 @prepare_ep_buffer(%struct.hw_endpoint* noundef %0, i8 noundef zeroext 0)
  %6 = or i32 %5, 4096
  %7 = load volatile i32, i32* inttoptr (i32 1343291456 to i32*), align 64, !tbaa !247
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %0, i32 0, i32 2
  %12 = load i8, i8* %11, align 2, !tbaa !253
  %13 = tail call fastcc i32 @tu_edpt_dir.125(i8 noundef zeroext %12)
  %14 = icmp eq i32 %13, 0
  br label %15

15:                                               ; preds = %10, %1
  %16 = phi i1 [ false, %1 ], [ %14, %10 ]
  %17 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %0, i32 0, i32 8
  %18 = load i16, i16* %17, align 2, !tbaa !277
  %19 = icmp eq i16 %18, 0
  %20 = select i1 %19, i1 true, i1 %16
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = tail call fastcc i32 @prepare_ep_buffer(%struct.hw_endpoint* noundef nonnull %0, i8 noundef zeroext 1)
  %23 = or i32 %22, %6
  br label %24

24:                                               ; preds = %15, %21
  %25 = phi i32 [ 1342177280, %21 ], [ 536870912, %15 ]
  %26 = phi i32 [ %23, %21 ], [ %6, %15 ]
  %27 = and i32 %4, -1879048193
  %28 = or i32 %27, %25
  %29 = load i32*, i32** %2, align 4, !tbaa !260
  store volatile i32 %28, i32* %29, align 4, !tbaa !18
  tail call fastcc void @_hw_endpoint_buffer_control_set_value32.129(%struct.hw_endpoint* noundef nonnull %0, i32 noundef %26)
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn
define internal fastcc i32 @prepare_ep_buffer(%struct.hw_endpoint* nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #26 {
  %3 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %0, i32 0, i32 8
  %4 = load i16, i16* %3, align 2, !tbaa !277
  %5 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %0, i32 0, i32 11
  %6 = load i16, i16* %5, align 4, !tbaa !257
  %7 = icmp ult i16 %4, %6
  %8 = select i1 %7, i16 %4, i16 %6
  %9 = zext i16 %8 to i32
  %10 = sub i16 %4, %8
  store i16 %10, i16* %3, align 2, !tbaa !277
  %11 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %0, i32 0, i32 3
  %12 = load i8, i8* %11, align 1, !tbaa !256
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %13, i32 0, i32 8192
  %15 = or i32 %14, %9
  %16 = or i32 %15, 1024
  %17 = xor i8 %12, 1
  store i8 %17, i8* %11, align 1, !tbaa !256
  %18 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %0, i32 0, i32 1
  %19 = load i8, i8* %18, align 1, !tbaa !255, !range !68
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %0, i32 0, i32 6
  %23 = load i8*, i8** %22, align 4, !tbaa !261
  %24 = zext i8 %1 to i32
  %25 = shl nuw nsw i32 %24, 6
  %26 = getelementptr inbounds i8, i8* %23, i32 %25
  %27 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %0, i32 0, i32 10
  %28 = load i8*, i8** %27, align 4, !tbaa !278
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %26, i8* align 1 %28, i32 %9, i1 false)
  %29 = load i8*, i8** %27, align 4, !tbaa !278
  %30 = getelementptr inbounds i8, i8* %29, i32 %9
  store i8* %30, i8** %27, align 4, !tbaa !278
  %31 = or i32 %15, 33792
  %32 = load i16, i16* %3, align 2, !tbaa !277
  br label %33

33:                                               ; preds = %21, %2
  %34 = phi i16 [ %10, %2 ], [ %32, %21 ]
  %35 = phi i32 [ %16, %2 ], [ %31, %21 ]
  %36 = icmp eq i16 %34, 0
  %37 = or i32 %35, 16384
  %38 = select i1 %36, i32 %37, i32 %35
  %39 = icmp eq i8 %1, 0
  %40 = shl i32 %38, 16
  %41 = select i1 %39, i32 %38, i32 %40
  ret i32 %41
}

; Function Attrs: noinline nounwind
define internal fastcc void @_hw_endpoint_buffer_control_set_value32.129(%struct.hw_endpoint* nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  tail call void @_hw_endpoint_buffer_control_update32(%struct.hw_endpoint* noundef %0, i32 noundef 0, i32 noundef %1)
  ret void
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @hw_endpoint_xfer_continue(%struct.hw_endpoint* nocapture noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %0, i32 0, i32 7
  %3 = load i8, i8* %2, align 4, !tbaa !276, !range !68
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %0, i32 0, i32 2
  %7 = load i8, i8* %6, align 2, !tbaa !253
  %8 = tail call fastcc zeroext i8 @tu_edpt_number.124(i8 noundef zeroext %7)
  %9 = zext i8 %8 to i32
  tail call void (i8*, ...) @panic(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3.132, i32 0, i32 0), i32 noundef %9, i8** noundef getelementptr inbounds ([2 x i8*], [2 x i8*]* @ep_dir_string, i32 0, i32 0)) #32
  unreachable

10:                                               ; preds = %1
  tail call fastcc void @_hw_endpoint_xfer_sync(%struct.hw_endpoint* noundef nonnull %0)
  %11 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %0, i32 0, i32 8
  %12 = load i16, i16* %11, align 2, !tbaa !277
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call fastcc void @_hw_endpoint_start_next_buffer(%struct.hw_endpoint* noundef nonnull %0)
  br label %15

15:                                               ; preds = %10, %14
  ret i1 %13
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn
define internal fastcc void @_hw_endpoint_xfer_sync(%struct.hw_endpoint* nocapture noundef %0) unnamed_addr #27 {
  %2 = getelementptr %struct.hw_endpoint, %struct.hw_endpoint* %0, i32 0, i32 5
  %3 = load i32*, i32** %2, align 4, !tbaa !259
  %4 = tail call fastcc i32 @_hw_endpoint_buffer_control_get_value32(i32* %3)
  %5 = tail call fastcc zeroext i16 @sync_ep_buffer(%struct.hw_endpoint* noundef %0, i8 noundef zeroext 0)
  %6 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %0, i32 0, i32 4
  %7 = load i32*, i32** %6, align 4, !tbaa !260
  %8 = load volatile i32, i32* %7, align 4, !tbaa !18
  %9 = and i32 %8, 1073741824
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %0, i32 0, i32 11
  %13 = load i16, i16* %12, align 4, !tbaa !257
  %14 = icmp eq i16 %5, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = tail call fastcc zeroext i16 @sync_ep_buffer(%struct.hw_endpoint* noundef nonnull %0, i8 noundef zeroext 1)
  br label %17

17:                                               ; preds = %15, %11, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define internal fastcc i32 @_hw_endpoint_buffer_control_get_value32(i32* %0) unnamed_addr #9 {
  %2 = load volatile i32, i32* %0, align 4, !tbaa !18
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn
define internal fastcc zeroext i16 @sync_ep_buffer(%struct.hw_endpoint* nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #27 {
  %3 = getelementptr %struct.hw_endpoint, %struct.hw_endpoint* %0, i32 0, i32 5
  %4 = load i32*, i32** %3, align 4, !tbaa !259
  %5 = tail call fastcc i32 @_hw_endpoint_buffer_control_get_value32(i32* %4)
  %6 = icmp eq i8 %1, 0
  %7 = lshr i32 %5, 16
  %8 = select i1 %6, i32 %5, i32 %7
  %9 = trunc i32 %8 to i16
  %10 = and i16 %9, 1023
  %11 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %0, i32 0, i32 1
  %12 = load i8, i8* %11, align 1, !tbaa !255, !range !68
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %0, i32 0, i32 9
  %16 = load i16, i16* %15, align 4, !tbaa !267
  %17 = add i16 %16, %10
  store i16 %17, i16* %15, align 4, !tbaa !267
  br label %32

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %0, i32 0, i32 10
  %20 = load i8*, i8** %19, align 4, !tbaa !278
  %21 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %0, i32 0, i32 6
  %22 = load i8*, i8** %21, align 4, !tbaa !261
  %23 = zext i8 %1 to i32
  %24 = shl nuw nsw i32 %23, 6
  %25 = getelementptr inbounds i8, i8* %22, i32 %24
  %26 = zext i16 %10 to i32
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %20, i8* align 1 %25, i32 %26, i1 false)
  %27 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %0, i32 0, i32 9
  %28 = load i16, i16* %27, align 4, !tbaa !267
  %29 = add i16 %28, %10
  store i16 %29, i16* %27, align 4, !tbaa !267
  %30 = load i8*, i8** %19, align 4, !tbaa !278
  %31 = getelementptr inbounds i8, i8* %30, i32 %26
  store i8* %31, i8** %19, align 4, !tbaa !278
  br label %32

32:                                               ; preds = %18, %14
  %33 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %0, i32 0, i32 11
  %34 = load i16, i16* %33, align 4, !tbaa !257
  %35 = icmp ult i16 %10, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.hw_endpoint, %struct.hw_endpoint* %0, i32 0, i32 8
  store i16 0, i16* %37, align 2, !tbaa !277
  br label %38

38:                                               ; preds = %36, %32
  ret i16 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define dso_local i32 @tud_speed_get() local_unnamed_addr #10 {
  %1 = load i8, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 2), align 1, !tbaa !280
  %2 = zext i8 %1 to i32
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local zeroext i1 @tud_connected() local_unnamed_addr #9 {
  %1 = load volatile i8, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 0, i32 0), align 1
  %2 = and i8 %1, 1
  %3 = icmp ne i8 %2, 0
  ret i1 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local zeroext i1 @tud_mounted() local_unnamed_addr #9 {
  %1 = load volatile i8, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 1), align 1, !tbaa !283
  %2 = icmp ne i8 %1, 0
  ret i1 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local zeroext i1 @tud_suspended() local_unnamed_addr #9 {
  %1 = load volatile i8, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 0, i32 0), align 1
  %2 = and i8 %1, 4
  %3 = icmp ne i8 %2, 0
  ret i1 %3
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @tud_remote_wakeup() local_unnamed_addr #3 {
  %1 = load volatile i8, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 0, i32 0), align 1
  %2 = and i8 %1, 28
  %3 = icmp eq i8 %2, 28
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  tail call void @dcd_remote_wakeup(i8 noundef zeroext 0) #30
  br label %5

5:                                                ; preds = %0, %4
  ret i1 %3
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @tud_disconnect() local_unnamed_addr #3 {
  br i1 true, label %1, label %2

1:                                                ; preds = %0
  tail call void @dcd_disconnect(i8 noundef zeroext 0) #30
  br label %2

2:                                                ; preds = %0, %1
  ret i1 true
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @tud_connect() local_unnamed_addr #3 {
  br i1 true, label %1, label %2

1:                                                ; preds = %0
  tail call void @dcd_connect(i8 noundef zeroext 0) #30
  br label %2

2:                                                ; preds = %0, %1
  ret i1 true
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define dso_local zeroext i1 @tud_inited() local_unnamed_addr #10 {
  %1 = load i1, i1* @_usbd_initialized, align 1
  ret i1 %1
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @tud_init(i8 noundef zeroext %0) local_unnamed_addr #3 {
  %2 = load i1, i1* @_usbd_initialized, align 1
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  tail call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(83) getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 0, i32 0), i8 0, i32 83, i1 false)
  tail call fastcc void @osal_mutex_create()
  store %struct.mutex* @_ubsd_mutexdef, %struct.mutex** @_usbd_mutex, align 4, !tbaa !11
  tail call fastcc void @osal_queue_create()
  store %struct.osal_queue_def_t* @_usbd_qdef, %struct.osal_queue_def_t** @_usbd_q, align 4, !tbaa !11
  br i1 true, label %5, label %4

4:                                                ; preds = %5, %3
  br label %8

5:                                                ; preds = %3
  %6 = tail call %struct.usbd_class_driver_t* @usbd_app_driver_get_cb(i8* noundef nonnull @_app_driver_count) #30
  store %struct.usbd_class_driver_t* %6, %struct.usbd_class_driver_t** @_app_driver, align 4, !tbaa !11
  br label %4

7:                                                ; preds = %8
  tail call void @dcd_init(i8 noundef zeroext %0) #30
  tail call void @dcd_int_enable(i8 noundef zeroext %0) #30
  store i1 true, i1* @_usbd_initialized, align 1
  br label %16

8:                                                ; preds = %4, %8
  %9 = phi i8 [ %13, %8 ], [ 0, %4 ]
  %10 = tail call fastcc %struct.usbd_class_driver_t* @get_driver(i8 noundef zeroext %9)
  %11 = getelementptr inbounds %struct.usbd_class_driver_t, %struct.usbd_class_driver_t* %10, i32 0, i32 0
  %12 = load void ()*, void ()** %11, align 4, !tbaa !284
  tail call void %12() #30
  %13 = add i8 %9, 1
  %14 = load i8, i8* @_app_driver_count, align 1, !tbaa !8
  %15 = icmp ult i8 %14, %13
  br i1 %15, label %7, label %8, !llvm.loop !286

16:                                               ; preds = %1, %7
  ret i1 true
}

; Function Attrs: noinline nounwind
define internal fastcc void @osal_mutex_create() unnamed_addr #3 {
  tail call void @mutex_init(%struct.mutex* noundef nonnull @_ubsd_mutexdef) #30
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc void @osal_queue_create() unnamed_addr #3 {
  tail call void @critical_section_init(%struct.critical_section* noundef getelementptr inbounds (%struct.osal_queue_def_t, %struct.osal_queue_def_t* @_usbd_qdef, i32 0, i32 1)) #30
  %1 = tail call zeroext i1 @tu_fifo_clear(%struct.tu_fifo_t* noundef getelementptr inbounds (%struct.osal_queue_def_t, %struct.osal_queue_def_t* @_usbd_qdef, i32 0, i32 0)) #30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define internal fastcc %struct.usbd_class_driver_t* @get_driver(i8 noundef zeroext %0) unnamed_addr #10 {
  br i1 true, label %2, label %11

2:                                                ; preds = %1
  %3 = load i8, i8* @_app_driver_count, align 1, !tbaa !8
  %4 = icmp ugt i8 %3, %0
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = zext i8 %0 to i32
  %7 = load %struct.usbd_class_driver_t*, %struct.usbd_class_driver_t** @_app_driver, align 4, !tbaa !11
  %8 = getelementptr inbounds %struct.usbd_class_driver_t, %struct.usbd_class_driver_t* %7, i32 %6
  br label %15

9:                                                ; preds = %2
  %10 = sub i8 %0, %3
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi i8 [ %10, %9 ], [ %0, %1 ]
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %13, %struct.usbd_class_driver_t* getelementptr inbounds ([1 x %struct.usbd_class_driver_t], [1 x %struct.usbd_class_driver_t]* @_usbd_driver, i32 0, i32 0), %struct.usbd_class_driver_t* null
  br label %15

15:                                               ; preds = %11, %5
  %16 = phi %struct.usbd_class_driver_t* [ %8, %5 ], [ %14, %11 ]
  ret %struct.usbd_class_driver_t* %16
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @tud_task_event_ready() local_unnamed_addr #3 {
  %1 = tail call zeroext i1 @tusb_inited() #30
  br i1 %1, label %2, label %6

2:                                                ; preds = %0
  %3 = load %struct.osal_queue_def_t*, %struct.osal_queue_def_t** @_usbd_q, align 4, !tbaa !11
  %4 = tail call fastcc zeroext i1 @osal_queue_empty(%struct.osal_queue_def_t* noundef %3)
  %5 = xor i1 %4, true
  br label %6

6:                                                ; preds = %0, %2
  %7 = phi i1 [ %5, %2 ], [ false, %0 ]
  ret i1 %7
}

; Function Attrs: noinline nounwind
define internal fastcc zeroext i1 @osal_queue_empty(%struct.osal_queue_def_t* noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.osal_queue_def_t, %struct.osal_queue_def_t* %0, i32 0, i32 0
  %3 = tail call zeroext i1 @tu_fifo_empty(%struct.tu_fifo_t* noundef %2) #30
  ret i1 %3
}

; Function Attrs: noinline nounwind
define dso_local void @tud_task() local_unnamed_addr #3 {
  %1 = alloca %struct.dcd_event_t, align 4
  %2 = tail call zeroext i1 @tusb_inited() #30
  br i1 %2, label %3, label %108

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.dcd_event_t, %struct.dcd_event_t* %1, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %4) #30
  %5 = load %struct.osal_queue_def_t*, %struct.osal_queue_def_t** @_usbd_q, align 4, !tbaa !11
  %6 = call fastcc zeroext i1 @osal_queue_receive(%struct.osal_queue_def_t* noundef %5, i8* noundef nonnull %4)
  br i1 %6, label %7, label %104

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dcd_event_t, %struct.dcd_event_t* %1, i32 0, i32 1
  %9 = getelementptr inbounds %struct.dcd_event_t, %struct.dcd_event_t* %1, i32 0, i32 2
  %10 = bitcast %union.anon.2* %9 to void (i8*)**
  %11 = getelementptr inbounds %struct.dcd_event_t, %struct.dcd_event_t* %1, i32 0, i32 2, i32 0, i32 2
  %12 = bitcast i32* %11 to i8**
  %13 = getelementptr inbounds %struct.dcd_event_t, %struct.dcd_event_t* %1, i32 0, i32 2, i32 0, i32 0
  %14 = getelementptr inbounds %struct.dcd_event_t, %struct.dcd_event_t* %1, i32 0, i32 2, i32 0, i32 1
  %15 = bitcast %union.anon.2* %9 to %struct.tusb_control_request_t*
  %16 = bitcast %union.anon.2* %9 to i32*
  br label %17

17:                                               ; preds = %7, %105
  %18 = load i8, i8* %8, align 1, !tbaa !287
  switch i8 %18, label %105 [
    i8 1, label %19
    i8 2, label %23
    i8 6, label %26
    i8 7, label %42
    i8 4, label %73
    i8 5, label %81
    i8 3, label %87
    i8 8, label %99
  ]

19:                                               ; preds = %17
  %20 = load i8, i8* %4, align 4, !tbaa !289
  call fastcc void @usbd_reset(i8 noundef zeroext %20)
  %21 = load i32, i32* %16, align 4, !tbaa !8
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 2), align 1, !tbaa !280
  br label %105

23:                                               ; preds = %17
  %24 = load i8, i8* %4, align 4, !tbaa !289
  call fastcc void @usbd_reset(i8 noundef zeroext %24)
  br i1 icmp ne (void ()* @tud_umount_cb, void ()* null), label %25, label %105

25:                                               ; preds = %23
  call void @tud_umount_cb() #30
  br label %105

26:                                               ; preds = %17
  %27 = load volatile i8, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 0, i32 0), align 1
  %28 = or i8 %27, 1
  store volatile i8 %28, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 0, i32 0), align 1
  %29 = load volatile i8, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 5, i32 0, i32 0, i32 0), align 1
  %30 = and i8 %29, -2
  store volatile i8 %30, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 5, i32 0, i32 0, i32 0), align 1
  %31 = load volatile i8, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 5, i32 0, i32 0, i32 0), align 1
  %32 = and i8 %31, -5
  store volatile i8 %32, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 5, i32 0, i32 0, i32 0), align 1
  %33 = load volatile i8, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 5, i32 0, i32 1, i32 0), align 1
  %34 = and i8 %33, -2
  store volatile i8 %34, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 5, i32 0, i32 1, i32 0), align 1
  %35 = load volatile i8, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 5, i32 0, i32 1, i32 0), align 1
  %36 = and i8 %35, -5
  store volatile i8 %36, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 5, i32 0, i32 1, i32 0), align 1
  %37 = load i8, i8* %4, align 4, !tbaa !289
  %38 = call fastcc zeroext i1 @process_control_request(i8 noundef zeroext %37, %struct.tusb_control_request_t* noundef nonnull %15)
  br i1 %38, label %105, label %39

39:                                               ; preds = %26
  %40 = load i8, i8* %4, align 4, !tbaa !289
  call void @dcd_edpt_stall(i8 noundef zeroext %40, i8 noundef zeroext 0) #30
  %41 = load i8, i8* %4, align 4, !tbaa !289
  call void @dcd_edpt_stall(i8 noundef zeroext %41, i8 noundef zeroext -128) #30
  br label %105

42:                                               ; preds = %17
  %43 = load i8, i8* %13, align 4, !tbaa !8
  %44 = call fastcc zeroext i8 @tu_edpt_number.135(i8 noundef zeroext %43)
  %45 = call fastcc i32 @tu_edpt_dir.136(i8 noundef zeroext %43)
  %46 = zext i8 %44 to i32
  %47 = and i32 %45, 255
  %48 = getelementptr inbounds %struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 5, i32 %46, i32 %47, i32 0
  %49 = load volatile i8, i8* %48, align 1
  %50 = and i8 %49, -2
  store volatile i8 %50, i8* %48, align 1
  %51 = load volatile i8, i8* %48, align 1
  %52 = and i8 %51, -5
  store volatile i8 %52, i8* %48, align 1
  %53 = icmp eq i8 %44, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %42
  %55 = load i8, i8* %4, align 4, !tbaa !289
  %56 = load i8, i8* %14, align 1, !tbaa !8
  %57 = zext i8 %56 to i32
  %58 = load i32, i32* %11, align 4, !tbaa !8
  %59 = call zeroext i1 @usbd_control_xfer_cb(i8 noundef zeroext %55, i8 noundef zeroext %43, i32 noundef %57, i32 noundef %58) #30
  br label %105

60:                                               ; preds = %42
  %61 = getelementptr inbounds %struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 4, i32 %46, i32 %47
  %62 = load i8, i8* %61, align 1, !tbaa !8
  %63 = call fastcc %struct.usbd_class_driver_t* @get_driver(i8 noundef zeroext %62)
  %64 = icmp eq %struct.usbd_class_driver_t* %63, null
  br i1 %64, label %104, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.usbd_class_driver_t, %struct.usbd_class_driver_t* %63, i32 0, i32 4
  %67 = load i1 (i8, i8, i32, i32)*, i1 (i8, i8, i32, i32)** %66, align 4, !tbaa !290
  %68 = load i8, i8* %4, align 4, !tbaa !289
  %69 = load i8, i8* %14, align 1, !tbaa !8
  %70 = zext i8 %69 to i32
  %71 = load i32, i32* %11, align 4, !tbaa !8
  %72 = call zeroext i1 %67(i8 noundef zeroext %68, i8 noundef zeroext %43, i32 noundef %70, i32 noundef %71) #30
  br label %105

73:                                               ; preds = %17
  %74 = load volatile i8, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 0, i32 0), align 1
  %75 = and i8 %74, 1
  %76 = icmp eq i8 %75, 0
  %77 = or i1 %76, icmp eq (void (i1)* @tud_suspend_cb, void (i1)* null)
  br i1 %77, label %105, label %78

78:                                               ; preds = %73
  %79 = and i8 %74, 8
  %80 = icmp ne i8 %79, 0
  call void @tud_suspend_cb(i1 noundef zeroext %80) #30
  br label %105

81:                                               ; preds = %17
  %82 = load volatile i8, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 0, i32 0), align 1
  %83 = and i8 %82, 1
  %84 = icmp eq i8 %83, 0
  %85 = or i1 %84, icmp eq (void ()* @tud_resume_cb, void ()* null)
  br i1 %85, label %105, label %86

86:                                               ; preds = %81
  call void @tud_resume_cb() #30
  br label %105

87:                                               ; preds = %17, %95
  %88 = phi i8 [ %96, %95 ], [ 0, %17 ]
  %89 = call fastcc %struct.usbd_class_driver_t* @get_driver(i8 noundef zeroext %88)
  %90 = getelementptr inbounds %struct.usbd_class_driver_t, %struct.usbd_class_driver_t* %89, i32 0, i32 5
  %91 = load void (i8)*, void (i8)** %90, align 4, !tbaa !291
  %92 = icmp eq void (i8)* %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %87
  %94 = load i8, i8* %4, align 4, !tbaa !289
  call void %91(i8 noundef zeroext %94) #30
  br label %95

95:                                               ; preds = %93, %87
  %96 = add i8 %88, 1
  %97 = load i8, i8* @_app_driver_count, align 1, !tbaa !8
  %98 = icmp ult i8 %97, %96
  br i1 %98, label %105, label %87, !llvm.loop !292

99:                                               ; preds = %17
  %100 = load void (i8*)*, void (i8*)** %10, align 4, !tbaa !8
  %101 = icmp eq void (i8*)* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i8*, i8** %12, align 4, !tbaa !8
  call void %100(i8* noundef %103) #30
  br label %105

104:                                              ; preds = %60, %105, %3
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %4) #30
  br label %108

105:                                              ; preds = %95, %54, %65, %19, %25, %23, %39, %26, %78, %86, %102, %99, %17, %73, %81
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %4) #30
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %4) #30
  %106 = load %struct.osal_queue_def_t*, %struct.osal_queue_def_t** @_usbd_q, align 4, !tbaa !11
  %107 = call fastcc zeroext i1 @osal_queue_receive(%struct.osal_queue_def_t* noundef %106, i8* noundef nonnull %4)
  br i1 %107, label %17, label %104

108:                                              ; preds = %104, %0
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc zeroext i1 @osal_queue_receive(%struct.osal_queue_def_t* noundef %0, i8* noundef %1) unnamed_addr #3 {
  tail call fastcc void @_osal_q_lock(%struct.osal_queue_def_t* noundef %0)
  %3 = getelementptr inbounds %struct.osal_queue_def_t, %struct.osal_queue_def_t* %0, i32 0, i32 0
  %4 = tail call zeroext i1 @tu_fifo_read(%struct.tu_fifo_t* noundef %3, i8* noundef %1) #30
  tail call fastcc void @_osal_q_unlock(%struct.osal_queue_def_t* noundef %0)
  ret i1 %4
}

; Function Attrs: noinline nounwind
define internal fastcc void @usbd_reset(i8 noundef zeroext %0) unnamed_addr #3 {
  tail call fastcc void @configuration_reset(i8 noundef zeroext %0)
  tail call void @usbd_control_reset() #30
  ret void
}

declare extern_weak dso_local void @tud_umount_cb() #21

; Function Attrs: noinline nounwind
define internal fastcc zeroext i1 @process_control_request(i8 noundef zeroext %0, %struct.tusb_control_request_t* noundef %1) unnamed_addr #3 {
  %3 = alloca i8, align 1
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  tail call void @usbd_control_set_complete_callback(i1 (i8, i8, %struct.tusb_control_request_t*)* noundef null) #30
  %7 = getelementptr inbounds %struct.tusb_control_request_t, %struct.tusb_control_request_t* %1, i32 0, i32 0, i32 0, i32 0
  %8 = load i8, i8* %7, align 1
  %9 = lshr i8 %8, 5
  %10 = trunc i8 %9 to i2
  switch i2 %10, label %14 [
    i2 -1, label %166
    i2 -2, label %11
  ]

11:                                               ; preds = %2
  br i1 icmp ne (i1 (i8, i8, %struct.tusb_control_request_t*)* @tud_vendor_control_xfer_cb, i1 (i8, i8, %struct.tusb_control_request_t*)* null), label %12, label %166

12:                                               ; preds = %11
  tail call void @usbd_control_set_complete_callback(i1 (i8, i8, %struct.tusb_control_request_t*)* noundef @tud_vendor_control_xfer_cb) #30
  %13 = tail call zeroext i1 @tud_vendor_control_xfer_cb(i8 noundef zeroext %0, i8 noundef zeroext 0, %struct.tusb_control_request_t* noundef nonnull %1) #30
  br label %166

14:                                               ; preds = %2
  %15 = and i8 %8, 31
  %16 = zext i8 %15 to i32
  switch i32 %16, label %166 [
    i32 0, label %17
    i32 1, label %91
    i32 2, label %121
  ]

17:                                               ; preds = %14
  %18 = and i8 %8, 96
  %19 = icmp eq i8 %18, 32
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.tusb_control_request_t, %struct.tusb_control_request_t* %1, i32 0, i32 3
  %22 = load i16, i16* %21, align 1, !tbaa !238
  %23 = and i16 %22, 240
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %166

25:                                               ; preds = %20
  %26 = and i16 %22, 255
  %27 = zext i16 %26 to i32
  %28 = getelementptr inbounds %struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 3, i32 %27
  %29 = load i8, i8* %28, align 1, !tbaa !8
  %30 = tail call fastcc %struct.usbd_class_driver_t* @get_driver(i8 noundef zeroext %29)
  %31 = icmp eq %struct.usbd_class_driver_t* %30, null
  br i1 %31, label %166, label %32

32:                                               ; preds = %25
  %33 = tail call fastcc zeroext i1 @invoke_class_control(i8 noundef zeroext %0, %struct.usbd_class_driver_t* noundef nonnull %30, %struct.tusb_control_request_t* noundef nonnull %1)
  br label %166

34:                                               ; preds = %17
  %35 = getelementptr inbounds %struct.tusb_control_request_t, %struct.tusb_control_request_t* %1, i32 0, i32 1
  %36 = load i8, i8* %35, align 1, !tbaa !240
  switch i8 %36, label %166 [
    i8 5, label %37
    i8 8, label %43
    i8 9, label %46
    i8 6, label %63
    i8 3, label %65
    i8 1, label %73
    i8 0, label %81
  ]

37:                                               ; preds = %34
  tail call void @usbd_control_set_request(%struct.tusb_control_request_t* noundef nonnull %1) #30
  %38 = getelementptr inbounds %struct.tusb_control_request_t, %struct.tusb_control_request_t* %1, i32 0, i32 2
  %39 = load i16, i16* %38, align 1, !tbaa !241
  %40 = trunc i16 %39 to i8
  tail call void @dcd_set_address(i8 noundef zeroext %0, i8 noundef zeroext %40) #30
  %41 = load volatile i8, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 0, i32 0), align 1
  %42 = or i8 %41, 2
  store volatile i8 %42, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 0, i32 0), align 1
  br label %165

43:                                               ; preds = %34
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #30
  %44 = load volatile i8, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 1), align 1, !tbaa !283
  store i8 %44, i8* %3, align 1, !tbaa !8
  %45 = call zeroext i1 @tud_control_xfer(i8 noundef zeroext %0, %struct.tusb_control_request_t* noundef nonnull %1, i8* noundef nonnull %3, i16 noundef zeroext 1) #30
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #30
  br label %165

46:                                               ; preds = %34
  %47 = getelementptr inbounds %struct.tusb_control_request_t, %struct.tusb_control_request_t* %1, i32 0, i32 2
  %48 = load i16, i16* %47, align 1, !tbaa !241
  %49 = trunc i16 %48 to i8
  %50 = load volatile i8, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 1), align 1, !tbaa !283
  %51 = icmp eq i8 %50, %49
  br i1 %51, label %61, label %52

52:                                               ; preds = %46
  %53 = load volatile i8, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 1), align 1, !tbaa !283
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  tail call void @dcd_edpt_close_all(i8 noundef zeroext %0) #30
  %56 = load i8, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 2), align 1, !tbaa !280
  tail call fastcc void @configuration_reset(i8 noundef zeroext %0)
  store i8 %56, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 2), align 1, !tbaa !280
  br label %57

57:                                               ; preds = %55, %52
  %58 = icmp eq i8 %49, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %57
  %60 = tail call fastcc zeroext i1 @process_set_config(i8 noundef zeroext %0, i8 noundef zeroext %49)
  br i1 %60, label %61, label %166

61:                                               ; preds = %46, %59, %57
  store volatile i8 %49, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 1), align 1, !tbaa !283
  %62 = tail call zeroext i1 @tud_control_status(i8 noundef zeroext %0, %struct.tusb_control_request_t* noundef nonnull %1) #30
  br label %165

63:                                               ; preds = %34
  %64 = tail call fastcc zeroext i1 @process_get_descriptor(i8 noundef zeroext %0, %struct.tusb_control_request_t* noundef nonnull %1)
  br i1 %64, label %165, label %166

65:                                               ; preds = %34
  %66 = getelementptr inbounds %struct.tusb_control_request_t, %struct.tusb_control_request_t* %1, i32 0, i32 2
  %67 = load i16, i16* %66, align 1, !tbaa !241
  %68 = icmp eq i16 %67, 1
  br i1 %68, label %69, label %166

69:                                               ; preds = %65
  %70 = load i8, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 0, i32 0), align 1
  %71 = or i8 %70, 8
  store i8 %71, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 0, i32 0), align 1
  %72 = tail call zeroext i1 @tud_control_status(i8 noundef zeroext %0, %struct.tusb_control_request_t* noundef nonnull %1) #30
  br label %165

73:                                               ; preds = %34
  %74 = getelementptr inbounds %struct.tusb_control_request_t, %struct.tusb_control_request_t* %1, i32 0, i32 2
  %75 = load i16, i16* %74, align 1, !tbaa !241
  %76 = icmp eq i16 %75, 1
  br i1 %76, label %77, label %166

77:                                               ; preds = %73
  %78 = load i8, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 0, i32 0), align 1
  %79 = and i8 %78, -9
  store i8 %79, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 0, i32 0), align 1
  %80 = tail call zeroext i1 @tud_control_status(i8 noundef zeroext %0, %struct.tusb_control_request_t* noundef nonnull %1) #30
  br label %165

81:                                               ; preds = %34
  %82 = bitcast i16* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %82) #30
  %83 = load i8, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 0, i32 0), align 1
  %84 = lshr i8 %83, 5
  %85 = and i8 %84, 1
  %86 = lshr i8 %83, 2
  %87 = and i8 %86, 2
  %88 = or i8 %85, %87
  %89 = zext i8 %88 to i16
  store i16 %89, i16* %4, align 2, !tbaa !154
  %90 = call zeroext i1 @tud_control_xfer(i8 noundef zeroext %0, %struct.tusb_control_request_t* noundef nonnull %1, i8* noundef nonnull %82, i16 noundef zeroext 2) #30
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %82) #30
  br label %165

91:                                               ; preds = %14
  %92 = getelementptr inbounds %struct.tusb_control_request_t, %struct.tusb_control_request_t* %1, i32 0, i32 3
  %93 = load i16, i16* %92, align 1, !tbaa !238
  %94 = and i16 %93, 240
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %96, label %166

96:                                               ; preds = %91
  %97 = and i16 %93, 255
  %98 = zext i16 %97 to i32
  %99 = getelementptr inbounds %struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 3, i32 %98
  %100 = load i8, i8* %99, align 1, !tbaa !8
  %101 = tail call fastcc %struct.usbd_class_driver_t* @get_driver(i8 noundef zeroext %100)
  %102 = icmp eq %struct.usbd_class_driver_t* %101, null
  br i1 %102, label %166, label %103

103:                                              ; preds = %96
  %104 = tail call fastcc zeroext i1 @invoke_class_control(i8 noundef zeroext %0, %struct.usbd_class_driver_t* noundef nonnull %101, %struct.tusb_control_request_t* noundef nonnull %1)
  br i1 %104, label %165, label %105

105:                                              ; preds = %103
  %106 = load i8, i8* %7, align 1
  %107 = and i8 %106, 96
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %166

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.tusb_control_request_t, %struct.tusb_control_request_t* %1, i32 0, i32 1
  %111 = load i8, i8* %110, align 1, !tbaa !240
  %112 = and i8 %111, -2
  %113 = icmp eq i8 %112, 10
  br i1 %113, label %114, label %166

114:                                              ; preds = %109
  tail call void @usbd_control_set_complete_callback(i1 (i8, i8, %struct.tusb_control_request_t*)* noundef null) #30
  %115 = load i8, i8* %110, align 1, !tbaa !240
  %116 = icmp eq i8 %115, 10
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %5) #30
  store i8 0, i8* %5, align 1, !tbaa !8
  %118 = call zeroext i1 @tud_control_xfer(i8 noundef zeroext %0, %struct.tusb_control_request_t* noundef nonnull %1, i8* noundef nonnull %5, i16 noundef zeroext 1) #30
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #30
  br label %165

119:                                              ; preds = %114
  %120 = tail call zeroext i1 @tud_control_status(i8 noundef zeroext %0, %struct.tusb_control_request_t* noundef nonnull %1) #30
  br label %165

121:                                              ; preds = %14
  %122 = getelementptr inbounds %struct.tusb_control_request_t, %struct.tusb_control_request_t* %1, i32 0, i32 3
  %123 = load i16, i16* %122, align 1, !tbaa !238
  %124 = trunc i16 %123 to i8
  %125 = tail call fastcc zeroext i8 @tu_edpt_number.135(i8 noundef zeroext %124)
  %126 = icmp ult i8 %125, 16
  br i1 %126, label %127, label %166

127:                                              ; preds = %121
  %128 = tail call fastcc i32 @tu_edpt_dir.136(i8 noundef zeroext %124)
  %129 = zext i8 %125 to i32
  %130 = and i32 %128, 255
  %131 = getelementptr inbounds %struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 4, i32 %129, i32 %130
  %132 = load i8, i8* %131, align 1, !tbaa !8
  %133 = tail call fastcc %struct.usbd_class_driver_t* @get_driver(i8 noundef zeroext %132)
  %134 = and i8 %8, 96
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %127
  %137 = icmp eq %struct.usbd_class_driver_t* %133, null
  br i1 %137, label %166, label %138

138:                                              ; preds = %136
  %139 = tail call fastcc zeroext i1 @invoke_class_control(i8 noundef zeroext %0, %struct.usbd_class_driver_t* noundef nonnull %133, %struct.tusb_control_request_t* noundef nonnull %1)
  br label %166

140:                                              ; preds = %127
  %141 = getelementptr inbounds %struct.tusb_control_request_t, %struct.tusb_control_request_t* %1, i32 0, i32 1
  %142 = load i8, i8* %141, align 1, !tbaa !240
  switch i8 %142, label %166 [
    i8 0, label %143
    i8 1, label %148
    i8 3, label %148
  ]

143:                                              ; preds = %140
  %144 = bitcast i16* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %144) #30
  %145 = tail call zeroext i1 @usbd_edpt_stalled(i8 zeroext undef, i8 noundef zeroext %124)
  %146 = zext i1 %145 to i16
  store i16 %146, i16* %6, align 2, !tbaa !154
  %147 = call zeroext i1 @tud_control_xfer(i8 noundef zeroext %0, %struct.tusb_control_request_t* noundef nonnull %1, i8* noundef nonnull %144, i16 noundef zeroext 2) #30
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %144) #30
  br label %165

148:                                              ; preds = %140, %140
  %149 = getelementptr inbounds %struct.tusb_control_request_t, %struct.tusb_control_request_t* %1, i32 0, i32 2
  %150 = load i16, i16* %149, align 1, !tbaa !241
  %151 = icmp eq i16 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %148
  %153 = icmp eq i8 %142, 1
  br i1 %153, label %154, label %155

154:                                              ; preds = %152
  tail call void @usbd_edpt_clear_stall(i8 noundef zeroext %0, i8 noundef zeroext %124)
  br label %156

155:                                              ; preds = %152
  tail call void @usbd_edpt_stall(i8 noundef zeroext %0, i8 noundef zeroext %124)
  br label %156

156:                                              ; preds = %154, %155, %148
  %157 = icmp eq %struct.usbd_class_driver_t* %133, null
  br i1 %157, label %165, label %158

158:                                              ; preds = %156
  %159 = tail call fastcc zeroext i1 @invoke_class_control(i8 noundef zeroext %0, %struct.usbd_class_driver_t* noundef nonnull %133, %struct.tusb_control_request_t* noundef nonnull %1)
  tail call void @usbd_control_set_complete_callback(i1 (i8, i8, %struct.tusb_control_request_t*)* noundef null) #30
  %160 = load volatile i8, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 5, i32 0, i32 1, i32 0), align 1
  %161 = and i8 %160, 1
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %158
  %164 = tail call zeroext i1 @tud_control_status(i8 noundef zeroext %0, %struct.tusb_control_request_t* noundef nonnull %1) #30
  br label %165

165:                                              ; preds = %156, %163, %158, %143, %103, %117, %119, %61, %37, %43, %69, %77, %81, %63
  br label %166

166:                                              ; preds = %109, %105, %96, %91, %121, %140, %136, %138, %59, %14, %34, %73, %65, %63, %20, %25, %32, %11, %2, %165, %12
  %167 = phi i1 [ %13, %12 ], [ true, %165 ], [ false, %2 ], [ false, %11 ], [ false, %20 ], [ %33, %32 ], [ false, %25 ], [ false, %63 ], [ false, %65 ], [ false, %73 ], [ false, %34 ], [ false, %14 ], [ false, %59 ], [ false, %121 ], [ %139, %138 ], [ false, %136 ], [ false, %140 ], [ false, %91 ], [ false, %96 ], [ false, %105 ], [ false, %109 ]
  ret i1 %167
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn
define internal fastcc zeroext i8 @tu_edpt_number.135(i8 noundef zeroext %0) unnamed_addr #12 {
  %2 = and i8 %0, 127
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn
define internal fastcc i32 @tu_edpt_dir.136(i8 noundef zeroext %0) unnamed_addr #12 {
  %2 = lshr i8 %0, 7
  %3 = zext i8 %2 to i32
  ret i32 %3
}

declare extern_weak dso_local void @tud_suspend_cb(i1 noundef zeroext) #21

declare extern_weak dso_local void @tud_resume_cb() #21

declare extern_weak dso_local zeroext i1 @tud_vendor_control_xfer_cb(i8 noundef zeroext, i8 noundef zeroext, %struct.tusb_control_request_t* noundef) #21

; Function Attrs: noinline nounwind
define internal fastcc zeroext i1 @invoke_class_control(i8 noundef zeroext %0, %struct.usbd_class_driver_t* nocapture noundef readonly %1, %struct.tusb_control_request_t* noundef %2) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.usbd_class_driver_t, %struct.usbd_class_driver_t* %1, i32 0, i32 3
  %5 = load i1 (i8, i8, %struct.tusb_control_request_t*)*, i1 (i8, i8, %struct.tusb_control_request_t*)** %4, align 4, !tbaa !293
  tail call void @usbd_control_set_complete_callback(i1 (i8, i8, %struct.tusb_control_request_t*)* noundef %5) #30
  %6 = load i1 (i8, i8, %struct.tusb_control_request_t*)*, i1 (i8, i8, %struct.tusb_control_request_t*)** %4, align 4, !tbaa !293
  %7 = tail call zeroext i1 %6(i8 noundef zeroext %0, i8 noundef zeroext 0, %struct.tusb_control_request_t* noundef %2) #30
  ret i1 %7
}

; Function Attrs: noinline nounwind
define internal fastcc void @configuration_reset(i8 noundef zeroext %0) unnamed_addr #3 {
  br label %3

2:                                                ; preds = %3
  tail call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(83) getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 0, i32 0), i8 0, i32 83, i1 false)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(48) getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 3, i32 0), i8 -1, i64 48, i1 false)
  ret void

3:                                                ; preds = %1, %3
  %4 = phi i8 [ 0, %1 ], [ %8, %3 ]
  %5 = tail call fastcc %struct.usbd_class_driver_t* @get_driver(i8 noundef zeroext %4)
  %6 = getelementptr inbounds %struct.usbd_class_driver_t, %struct.usbd_class_driver_t* %5, i32 0, i32 1
  %7 = load void (i8)*, void (i8)** %6, align 4, !tbaa !294
  tail call void %7(i8 noundef zeroext %0) #30
  %8 = add i8 %4, 1
  %9 = load i8, i8* @_app_driver_count, align 1, !tbaa !8
  %10 = icmp ult i8 %9, %8
  br i1 %10, label %2, label %3, !llvm.loop !295
}

; Function Attrs: noinline nounwind
define internal fastcc zeroext i1 @process_set_config(i8 noundef zeroext %0, i8 noundef zeroext %1) unnamed_addr #3 {
  %3 = add i8 %1, -1
  %4 = tail call i8* @tud_descriptor_configuration_cb(i8 noundef zeroext %3) #30
  %5 = icmp eq i8* %4, null
  br i1 %5, label %127, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, i8* %4, i32 1
  %8 = load i8, i8* %7, align 1, !tbaa !296
  %9 = icmp eq i8 %8, 2
  br i1 %9, label %10, label %127

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, i8* %4, i32 7
  %12 = load i8, i8* %11, align 1, !tbaa !298
  %13 = load i8, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 0, i32 0), align 1
  %14 = lshr i8 %12, 1
  %15 = and i8 %14, 16
  %16 = and i8 %13, -49
  %17 = or i8 %16, %15
  %18 = and i8 %14, 32
  %19 = or i8 %17, %18
  store i8 %19, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 0, i32 0), align 1
  %20 = getelementptr inbounds i8, i8* %4, i32 9
  %21 = getelementptr inbounds i8, i8* %4, i32 2
  %22 = bitcast i8* %21 to i16*
  %23 = load i16, i16* %22, align 1, !tbaa !299
  %24 = zext i16 %23 to i32
  %25 = getelementptr inbounds i8, i8* %4, i32 %24
  %26 = ptrtoint i8* %25 to i32
  br label %27

27:                                               ; preds = %120, %10
  %28 = phi i8* [ %20, %10 ], [ %123, %120 ]
  %29 = icmp ult i8* %28, %25
  br i1 %29, label %30, label %125

30:                                               ; preds = %27
  %31 = getelementptr i8, i8* %28, i32 1
  %32 = load i8, i8* %31, align 1, !tbaa !8
  %33 = tail call fastcc zeroext i8 @tu_desc_type(i8 %32)
  %34 = icmp eq i8 %33, 11
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = getelementptr inbounds i8, i8* %28, i32 3
  %37 = load i8, i8* %36, align 1, !tbaa !300
  %38 = tail call fastcc i8* @tu_desc_next(i8* noundef nonnull %28)
  %39 = getelementptr i8, i8* %38, i32 1
  %40 = load i8, i8* %39, align 1, !tbaa !8
  br label %41

41:                                               ; preds = %30, %35
  %42 = phi i8 [ %40, %35 ], [ %32, %30 ]
  %43 = phi i8 [ %37, %35 ], [ 1, %30 ]
  %44 = phi i8* [ %38, %35 ], [ %28, %30 ]
  %45 = tail call fastcc zeroext i8 @tu_desc_type(i8 %42)
  %46 = icmp eq i8 %45, 4
  br i1 %46, label %47, label %127

47:                                               ; preds = %41
  %48 = bitcast i8* %44 to %struct.tusb_desc_interface_t*
  %49 = ptrtoint i8* %44 to i32
  %50 = sub i32 %26, %49
  %51 = trunc i32 %50 to i16
  %52 = and i32 %50, 65535
  br label %53

53:                                               ; preds = %47, %116
  %54 = phi i8 [ 0, %47 ], [ %117, %116 ]
  %55 = tail call fastcc %struct.usbd_class_driver_t* @get_driver(i8 noundef zeroext %54)
  %56 = getelementptr inbounds %struct.usbd_class_driver_t, %struct.usbd_class_driver_t* %55, i32 0, i32 2
  %57 = load i16 (i8, %struct.tusb_desc_interface_t*, i16)*, i16 (i8, %struct.tusb_desc_interface_t*, i16)** %56, align 4, !tbaa !302
  %58 = tail call zeroext i16 %57(i8 noundef zeroext %0, %struct.tusb_desc_interface_t* noundef %48, i16 noundef zeroext %51) #30
  %59 = zext i16 %58 to i32
  %60 = icmp ult i16 %58, 9
  %61 = icmp ult i32 %52, %59
  %62 = select i1 %60, i1 true, i1 %61
  br i1 %62, label %116, label %63

63:                                               ; preds = %53
  switch i8 %43, label %69 [
    i8 1, label %64
    i8 0, label %113
  ]

64:                                               ; preds = %63
  %65 = getelementptr inbounds %struct.usbd_class_driver_t, %struct.usbd_class_driver_t* %55, i32 0, i32 2
  %66 = load i16 (i8, %struct.tusb_desc_interface_t*, i16)*, i16 (i8, %struct.tusb_desc_interface_t*, i16)** %65, align 4, !tbaa !302
  %67 = icmp eq i16 (i8, %struct.tusb_desc_interface_t*, i16)* %66, @cdcd_open
  %68 = select i1 %67, i8 2, i8 1
  br label %69

69:                                               ; preds = %63, %64
  %70 = phi i8 [ %68, %64 ], [ %43, %63 ]
  %71 = getelementptr inbounds i8, i8* %44, i32 2
  br label %72

72:                                               ; preds = %110, %69
  %73 = phi i8 [ 0, %69 ], [ %111, %110 ]
  %74 = load i8, i8* %71, align 1, !tbaa !237
  %75 = add i8 %74, %73
  %76 = zext i8 %75 to i32
  %77 = getelementptr inbounds %struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 3, i32 %76
  %78 = load i8, i8* %77, align 1, !tbaa !8
  %79 = icmp eq i8 %78, -1
  br i1 %79, label %80, label %127

80:                                               ; preds = %72
  store i8 %54, i8* %77, align 1, !tbaa !8
  %81 = or i8 %73, 1
  %82 = icmp ult i8 %81, %70
  br i1 %82, label %83, label %113, !llvm.loop !303

83:                                               ; preds = %80
  %84 = load i8, i8* %71, align 1, !tbaa !237
  %85 = add i8 %84, %81
  %86 = zext i8 %85 to i32
  %87 = getelementptr inbounds %struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 3, i32 %86
  %88 = load i8, i8* %87, align 1, !tbaa !8
  %89 = icmp eq i8 %88, -1
  br i1 %89, label %90, label %127

90:                                               ; preds = %83
  store i8 %54, i8* %87, align 1, !tbaa !8
  %91 = or i8 %73, 2
  %92 = icmp ult i8 %91, %70
  br i1 %92, label %93, label %113, !llvm.loop !303

93:                                               ; preds = %90
  %94 = load i8, i8* %71, align 1, !tbaa !237
  %95 = add i8 %94, %91
  %96 = zext i8 %95 to i32
  %97 = getelementptr inbounds %struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 3, i32 %96
  %98 = load i8, i8* %97, align 1, !tbaa !8
  %99 = icmp eq i8 %98, -1
  br i1 %99, label %100, label %127

100:                                              ; preds = %93
  store i8 %54, i8* %97, align 1, !tbaa !8
  %101 = or i8 %73, 3
  %102 = icmp ult i8 %101, %70
  br i1 %102, label %103, label %113, !llvm.loop !303

103:                                              ; preds = %100
  %104 = load i8, i8* %71, align 1, !tbaa !237
  %105 = add i8 %104, %101
  %106 = zext i8 %105 to i32
  %107 = getelementptr inbounds %struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 3, i32 %106
  %108 = load i8, i8* %107, align 1, !tbaa !8
  %109 = icmp eq i8 %108, -1
  br i1 %109, label %110, label %127

110:                                              ; preds = %103
  store i8 %54, i8* %107, align 1, !tbaa !8
  %111 = add nuw i8 %73, 4
  %112 = icmp ult i8 %111, %70
  br i1 %112, label %72, label %113, !llvm.loop !303

113:                                              ; preds = %80, %90, %100, %110, %63
  tail call void @tu_edpt_bind_driver([2 x i8]* noundef getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 4, i32 0), %struct.tusb_desc_interface_t* noundef %48, i16 noundef zeroext %58, i8 noundef zeroext %54) #30
  %114 = getelementptr inbounds i8, i8* %44, i32 %59
  %115 = load i8, i8* @_app_driver_count, align 1, !tbaa !8
  br label %120

116:                                              ; preds = %53
  %117 = add i8 %54, 1
  %118 = load i8, i8* @_app_driver_count, align 1, !tbaa !8
  %119 = icmp ult i8 %118, %117
  br i1 %119, label %120, label %53, !llvm.loop !304

120:                                              ; preds = %116, %113
  %121 = phi i8 [ %115, %113 ], [ %118, %116 ]
  %122 = phi i8 [ %54, %113 ], [ %117, %116 ]
  %123 = phi i8* [ %114, %113 ], [ %44, %116 ]
  %124 = icmp ult i8 %121, %122
  br i1 %124, label %127, label %27

125:                                              ; preds = %27
  br i1 icmp ne (void ()* @tud_mount_cb, void ()* null), label %126, label %127

126:                                              ; preds = %125
  tail call void @tud_mount_cb() #30
  br label %127

127:                                              ; preds = %41, %120, %72, %83, %93, %103, %126, %125, %2, %6
  %128 = phi i1 [ false, %6 ], [ false, %2 ], [ true, %125 ], [ true, %126 ], [ false, %103 ], [ false, %93 ], [ false, %83 ], [ false, %72 ], [ false, %120 ], [ false, %41 ]
  ret i1 %128
}

; Function Attrs: noinline nounwind
define internal fastcc zeroext i1 @process_get_descriptor(i8 noundef zeroext %0, %struct.tusb_control_request_t* noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.tusb_control_request_t, %struct.tusb_control_request_t* %1, i32 0, i32 2
  %4 = load i16, i16* %3, align 1, !tbaa !241
  %5 = lshr i16 %4, 8
  %6 = trunc i16 %5 to i8
  %7 = trunc i16 %4 to i8
  switch i8 %6, label %49 [
    i8 1, label %8
    i8 15, label %11
    i8 6, label %41
    i8 3, label %31
    i8 2, label %18
    i8 7, label %20
  ]

8:                                                ; preds = %2
  %9 = tail call i8* @tud_descriptor_device_cb() #30
  %10 = tail call zeroext i1 @tud_control_xfer(i8 noundef zeroext %0, %struct.tusb_control_request_t* noundef nonnull %1, i8* noundef %9, i16 noundef zeroext 18) #30
  br label %49

11:                                               ; preds = %2
  br i1 icmp ne (i8* ()* @tud_descriptor_bos_cb, i8* ()* null), label %12, label %49

12:                                               ; preds = %11
  %13 = tail call i8* @tud_descriptor_bos_cb() #30
  %14 = getelementptr inbounds i8, i8* %13, i32 2
  %15 = bitcast i8* %14 to i16*
  %16 = load i16, i16* %15, align 1, !tbaa !305
  %17 = tail call zeroext i1 @tud_control_xfer(i8 noundef zeroext %0, %struct.tusb_control_request_t* noundef nonnull %1, i8* noundef %13, i16 noundef zeroext %16) #30
  br label %49

18:                                               ; preds = %2
  %19 = tail call i8* @tud_descriptor_configuration_cb(i8 noundef zeroext %7) #30
  br label %23

20:                                               ; preds = %2
  br i1 icmp ne (i8* (i8)* @tud_descriptor_other_speed_configuration_cb, i8* (i8)* null), label %21, label %49

21:                                               ; preds = %20
  %22 = tail call i8* @tud_descriptor_other_speed_configuration_cb(i8 noundef zeroext %7) #30
  br label %23

23:                                               ; preds = %18, %21
  %24 = phi i8* [ %19, %18 ], [ %22, %21 ]
  %25 = icmp eq i8* %24, null
  br i1 %25, label %49, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds i8, i8* %24, i32 2
  %28 = bitcast i8* %27 to i16*
  %29 = load i16, i16* %28, align 1, !tbaa !305
  %30 = tail call zeroext i1 @tud_control_xfer(i8 noundef zeroext %0, %struct.tusb_control_request_t* noundef nonnull %1, i8* noundef nonnull %24, i16 noundef zeroext %29) #30
  br label %49

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.tusb_control_request_t, %struct.tusb_control_request_t* %1, i32 0, i32 3
  %33 = load i16, i16* %32, align 1, !tbaa !238
  %34 = tail call i16* @tud_descriptor_string_cb(i8 noundef zeroext %7, i16 noundef zeroext %33) #30
  %35 = bitcast i16* %34 to i8*
  %36 = icmp eq i16* %34, null
  br i1 %36, label %49, label %37

37:                                               ; preds = %31
  %38 = load i8, i8* %35, align 1, !tbaa !8
  %39 = zext i8 %38 to i16
  %40 = tail call zeroext i1 @tud_control_xfer(i8 noundef zeroext %0, %struct.tusb_control_request_t* noundef nonnull %1, i8* noundef nonnull %35, i16 noundef zeroext %39) #30
  br label %49

41:                                               ; preds = %2
  br i1 icmp ne (i8* ()* @tud_descriptor_device_qualifier_cb, i8* ()* null), label %42, label %49

42:                                               ; preds = %41
  %43 = tail call i8* @tud_descriptor_device_qualifier_cb() #30
  %44 = icmp eq i8* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load i8, i8* %43, align 1, !tbaa !8
  %47 = zext i8 %46 to i16
  %48 = tail call zeroext i1 @tud_control_xfer(i8 noundef zeroext %0, %struct.tusb_control_request_t* noundef nonnull %1, i8* noundef nonnull %43, i16 noundef zeroext %47) #30
  br label %49

49:                                               ; preds = %2, %45, %42, %41, %37, %31, %26, %20, %23, %11, %12, %8
  %50 = phi i1 [ %17, %12 ], [ %10, %8 ], [ false, %11 ], [ %30, %26 ], [ false, %20 ], [ false, %23 ], [ %40, %37 ], [ false, %31 ], [ false, %41 ], [ %48, %45 ], [ false, %42 ], [ false, %2 ]
  ret i1 %50
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local zeroext i1 @usbd_edpt_stalled(i8 zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #9 {
  %3 = tail call fastcc zeroext i8 @tu_edpt_number.135(i8 noundef zeroext %1)
  %4 = tail call fastcc i32 @tu_edpt_dir.136(i8 noundef zeroext %1)
  %5 = zext i8 %3 to i32
  %6 = and i32 %4, 255
  %7 = getelementptr inbounds %struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 5, i32 %5, i32 %6, i32 0
  %8 = load volatile i8, i8* %7, align 1
  %9 = and i8 %8, 2
  %10 = icmp ne i8 %9, 0
  ret i1 %10
}

; Function Attrs: noinline nounwind
define dso_local void @usbd_edpt_clear_stall(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #3 {
  %3 = tail call fastcc zeroext i8 @tu_edpt_number.135(i8 noundef zeroext %1)
  %4 = tail call fastcc i32 @tu_edpt_dir.136(i8 noundef zeroext %1)
  %5 = zext i8 %3 to i32
  %6 = and i32 %4, 255
  %7 = getelementptr inbounds %struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 5, i32 %5, i32 %6, i32 0
  %8 = load volatile i8, i8* %7, align 1
  %9 = and i8 %8, 2
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  tail call void @dcd_edpt_clear_stall(i8 noundef zeroext %0, i8 noundef zeroext %1) #30
  %12 = load volatile i8, i8* %7, align 1
  %13 = and i8 %12, -3
  store volatile i8 %13, i8* %7, align 1
  %14 = load volatile i8, i8* %7, align 1
  %15 = and i8 %14, -2
  store volatile i8 %15, i8* %7, align 1
  br label %16

16:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @usbd_edpt_stall(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #3 {
  %3 = tail call fastcc zeroext i8 @tu_edpt_number.135(i8 noundef zeroext %1)
  %4 = tail call fastcc i32 @tu_edpt_dir.136(i8 noundef zeroext %1)
  %5 = zext i8 %3 to i32
  %6 = and i32 %4, 255
  %7 = getelementptr inbounds %struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 5, i32 %5, i32 %6, i32 0
  %8 = load volatile i8, i8* %7, align 1
  %9 = and i8 %8, 2
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  tail call void @dcd_edpt_stall(i8 noundef zeroext %0, i8 noundef zeroext %1) #30
  %12 = load volatile i8, i8* %7, align 1
  %13 = or i8 %12, 2
  store volatile i8 %13, i8* %7, align 1
  %14 = load volatile i8, i8* %7, align 1
  %15 = or i8 %14, 1
  store volatile i8 %15, i8* %7, align 1
  br label %16

16:                                               ; preds = %11, %2
  ret void
}

declare extern_weak dso_local i8* @tud_descriptor_bos_cb() #21

declare extern_weak dso_local i8* @tud_descriptor_other_speed_configuration_cb(i8 noundef zeroext) #21

declare extern_weak dso_local i8* @tud_descriptor_device_qualifier_cb() #21

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define internal fastcc zeroext i8 @tu_desc_type(i8 %0) unnamed_addr #10 {
  ret i8 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define internal fastcc i8* @tu_desc_next(i8* noundef readonly %0) unnamed_addr #10 {
  %2 = load i8, i8* %0, align 1, !tbaa !8
  %3 = zext i8 %2 to i32
  %4 = getelementptr inbounds i8, i8* %0, i32 %3
  ret i8* %4
}

declare extern_weak dso_local void @tud_mount_cb() #21

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: noinline nounwind
define internal fastcc void @_osal_q_lock(%struct.osal_queue_def_t* nocapture noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.osal_queue_def_t, %struct.osal_queue_def_t* %0, i32 0, i32 1
  tail call fastcc void @critical_section_enter_blocking(%struct.critical_section* noundef nonnull %2)
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc void @_osal_q_unlock(%struct.osal_queue_def_t* nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.osal_queue_def_t, %struct.osal_queue_def_t* %0, i32 0, i32 1, i32 0
  %3 = load i32*, i32** %2, align 4, !tbaa !108
  %4 = getelementptr %struct.osal_queue_def_t, %struct.osal_queue_def_t* %0, i32 0, i32 1, i32 1
  %5 = load i32, i32* %4, align 4, !tbaa !307
  tail call fastcc void @critical_section_exit(i32* %3, i32 %5)
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc void @critical_section_exit(i32* %0, i32 %1) unnamed_addr #3 {
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !308
  store volatile i32 0, i32* %0, align 4, !tbaa !18
  tail call void asm sideeffect "msr PRIMASK,$0", "r"(i32 %1) #30, !srcloc !309
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc void @critical_section_enter_blocking(%struct.critical_section* nocapture noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.critical_section, %struct.critical_section* %0, i32 0, i32 0
  %3 = load i32*, i32** %2, align 4, !tbaa !108
  %4 = tail call i32 asm sideeffect "mrs $0, PRIMASK", "=r"() #30, !srcloc !310
  tail call void asm sideeffect "cpsid i", ""() #30, !srcloc !311
  br label %5

5:                                                ; preds = %14, %1
  %6 = load volatile i32, i32* %3, align 4, !tbaa !18
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17, !prof !29, !llvm.loop !312

8:                                                ; preds = %5
  %9 = load volatile i32, i32* %3, align 4, !tbaa !18
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17, !prof !29, !llvm.loop !312

11:                                               ; preds = %8
  %12 = load volatile i32, i32* %3, align 4, !tbaa !18
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17, !prof !29, !llvm.loop !312

14:                                               ; preds = %11
  %15 = load volatile i32, i32* %3, align 4, !tbaa !18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %5, label %17, !prof !29, !llvm.loop !312

17:                                               ; preds = %14, %11, %8, %5
  tail call void asm sideeffect "dmb", "~{memory}"() #30, !srcloc !308
  %18 = getelementptr inbounds %struct.critical_section, %struct.critical_section* %0, i32 0, i32 1
  store i32 %4, i32* %18, align 4, !tbaa !307
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @dcd_event_handler(%struct.dcd_event_t* noundef %0, i1 noundef zeroext %1) local_unnamed_addr #3 {
  %3 = alloca %struct.dcd_event_t, align 4
  %4 = getelementptr inbounds %struct.dcd_event_t, %struct.dcd_event_t* %0, i32 0, i32 1
  %5 = load i8, i8* %4, align 1, !tbaa !287
  switch i8 %5, label %47 [
    i8 2, label %6
    i8 4, label %15
    i8 5, label %24
    i8 3, label %33
  ]

6:                                                ; preds = %2
  %7 = load volatile i8, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 0, i32 0), align 1
  %8 = and i8 %7, -2
  store volatile i8 %8, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 0, i32 0), align 1
  %9 = load volatile i8, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 0, i32 0), align 1
  %10 = and i8 %9, -3
  store volatile i8 %10, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 0, i32 0), align 1
  store volatile i8 0, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 1), align 1, !tbaa !283
  %11 = load volatile i8, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 0, i32 0), align 1
  %12 = and i8 %11, -5
  store volatile i8 %12, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 0, i32 0), align 1
  %13 = load %struct.osal_queue_def_t*, %struct.osal_queue_def_t** @_usbd_q, align 4, !tbaa !11
  %14 = getelementptr %struct.dcd_event_t, %struct.dcd_event_t* %0, i32 0, i32 0
  tail call fastcc void @osal_queue_send(%struct.osal_queue_def_t* noundef %13, i8* noundef %14, i1 noundef zeroext %1)
  br label %50

15:                                               ; preds = %2
  %16 = load volatile i8, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 0, i32 0), align 1
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %50, label %19

19:                                               ; preds = %15
  %20 = load volatile i8, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 0, i32 0), align 1
  %21 = or i8 %20, 4
  store volatile i8 %21, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 0, i32 0), align 1
  %22 = load %struct.osal_queue_def_t*, %struct.osal_queue_def_t** @_usbd_q, align 4, !tbaa !11
  %23 = getelementptr %struct.dcd_event_t, %struct.dcd_event_t* %0, i32 0, i32 0
  tail call fastcc void @osal_queue_send(%struct.osal_queue_def_t* noundef %22, i8* noundef %23, i1 noundef zeroext %1)
  br label %50

24:                                               ; preds = %2
  %25 = load volatile i8, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 0, i32 0), align 1
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %50, label %28

28:                                               ; preds = %24
  %29 = load volatile i8, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 0, i32 0), align 1
  %30 = and i8 %29, -5
  store volatile i8 %30, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 0, i32 0), align 1
  %31 = load %struct.osal_queue_def_t*, %struct.osal_queue_def_t** @_usbd_q, align 4, !tbaa !11
  %32 = getelementptr %struct.dcd_event_t, %struct.dcd_event_t* %0, i32 0, i32 0
  tail call fastcc void @osal_queue_send(%struct.osal_queue_def_t* noundef %31, i8* noundef %32, i1 noundef zeroext %1)
  br label %50

33:                                               ; preds = %2
  %34 = load volatile i8, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 0, i32 0), align 1
  %35 = and i8 %34, 4
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %33
  %38 = load volatile i8, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 0, i32 0), align 1
  %39 = and i8 %38, -5
  store volatile i8 %39, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 0, i32 0), align 1
  %40 = getelementptr inbounds %struct.dcd_event_t, %struct.dcd_event_t* %3, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %40) #30
  %41 = getelementptr inbounds %struct.dcd_event_t, %struct.dcd_event_t* %0, i32 0, i32 0
  %42 = load i8, i8* %41, align 4, !tbaa !289
  store i8 %42, i8* %40, align 4, !tbaa !289
  %43 = getelementptr inbounds %struct.dcd_event_t, %struct.dcd_event_t* %3, i32 0, i32 1
  store i8 5, i8* %43, align 1, !tbaa !287
  %44 = getelementptr inbounds %struct.dcd_event_t, %struct.dcd_event_t* %3, i32 0, i32 2, i32 0, i32 0
  %45 = bitcast i8* %44 to i64*
  store i64 0, i64* %45, align 4
  %46 = load %struct.osal_queue_def_t*, %struct.osal_queue_def_t** @_usbd_q, align 4, !tbaa !11
  call fastcc void @osal_queue_send(%struct.osal_queue_def_t* noundef %46, i8* noundef nonnull %40, i1 noundef zeroext %1)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %40) #30
  br label %50

47:                                               ; preds = %2
  %48 = load %struct.osal_queue_def_t*, %struct.osal_queue_def_t** @_usbd_q, align 4, !tbaa !11
  %49 = getelementptr %struct.dcd_event_t, %struct.dcd_event_t* %0, i32 0, i32 0
  tail call fastcc void @osal_queue_send(%struct.osal_queue_def_t* noundef %48, i8* noundef %49, i1 noundef zeroext %1)
  br label %50

50:                                               ; preds = %33, %37, %24, %28, %15, %19, %47, %6
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc void @osal_queue_send(%struct.osal_queue_def_t* noundef %0, i8* noundef %1, i1 noundef zeroext %2) unnamed_addr #3 {
  tail call fastcc void @_osal_q_lock(%struct.osal_queue_def_t* noundef %0)
  %4 = getelementptr inbounds %struct.osal_queue_def_t, %struct.osal_queue_def_t* %0, i32 0, i32 0
  %5 = tail call zeroext i1 @tu_fifo_write(%struct.tu_fifo_t* noundef %4, i8* noundef %1) #30
  tail call fastcc void @_osal_q_unlock(%struct.osal_queue_def_t* noundef %0)
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @dcd_event_bus_signal(i8 noundef zeroext %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 {
  %4 = alloca %struct.dcd_event_t, align 4
  %5 = getelementptr inbounds %struct.dcd_event_t, %struct.dcd_event_t* %4, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %5) #30
  store i8 %0, i8* %5, align 4, !tbaa !289
  %6 = getelementptr inbounds %struct.dcd_event_t, %struct.dcd_event_t* %4, i32 0, i32 1
  %7 = trunc i32 %1 to i8
  store i8 %7, i8* %6, align 1, !tbaa !287
  %8 = getelementptr inbounds %struct.dcd_event_t, %struct.dcd_event_t* %4, i32 0, i32 2, i32 0, i32 0
  %9 = bitcast i8* %8 to i64*
  store i64 0, i64* %9, align 4
  call void @dcd_event_handler(%struct.dcd_event_t* noundef nonnull %4, i1 noundef zeroext %2)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %5) #30
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @dcd_event_bus_reset(i8 noundef zeroext %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 {
  %4 = alloca %struct.dcd_event_t, align 4
  %5 = getelementptr inbounds %struct.dcd_event_t, %struct.dcd_event_t* %4, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %5) #30
  store i8 %0, i8* %5, align 4, !tbaa !289
  %6 = getelementptr inbounds %struct.dcd_event_t, %struct.dcd_event_t* %4, i32 0, i32 1
  store i8 1, i8* %6, align 1, !tbaa !287
  %7 = getelementptr inbounds %struct.dcd_event_t, %struct.dcd_event_t* %4, i32 0, i32 2
  %8 = bitcast %union.anon.2* %7 to i64*
  store i64 0, i64* %8, align 4
  %9 = bitcast %union.anon.2* %7 to i32*
  store i32 %1, i32* %9, align 4, !tbaa !8
  call void @dcd_event_handler(%struct.dcd_event_t* noundef nonnull %4, i1 noundef zeroext %2)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %5) #30
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @dcd_event_setup_received(i8 noundef zeroext %0, i8* nocapture noundef readonly %1, i1 noundef zeroext %2) local_unnamed_addr #3 {
  %4 = alloca %struct.dcd_event_t, align 4
  %5 = getelementptr inbounds %struct.dcd_event_t, %struct.dcd_event_t* %4, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %5) #30
  store i8 %0, i8* %5, align 4, !tbaa !289
  %6 = getelementptr inbounds %struct.dcd_event_t, %struct.dcd_event_t* %4, i32 0, i32 1
  store i8 6, i8* %6, align 1, !tbaa !287
  %7 = getelementptr inbounds %struct.dcd_event_t, %struct.dcd_event_t* %4, i32 0, i32 2
  %8 = bitcast %union.anon.2* %7 to i64*
  %9 = bitcast i8* %1 to i64*
  %10 = load i64, i64* %9, align 1
  store i64 %10, i64* %8, align 4
  call void @dcd_event_handler(%struct.dcd_event_t* noundef nonnull %4, i1 noundef zeroext %2)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %5) #30
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @dcd_event_xfer_complete(i8 noundef zeroext %0, i8 noundef zeroext %1, i32 noundef %2, i8 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #3 {
  %6 = alloca %struct.dcd_event_t, align 4
  %7 = getelementptr inbounds %struct.dcd_event_t, %struct.dcd_event_t* %6, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %7) #30
  store i8 %0, i8* %7, align 4, !tbaa !289
  %8 = getelementptr inbounds %struct.dcd_event_t, %struct.dcd_event_t* %6, i32 0, i32 1
  store i8 7, i8* %8, align 1, !tbaa !287
  %9 = getelementptr inbounds %struct.dcd_event_t, %struct.dcd_event_t* %6, i32 0, i32 2
  %10 = bitcast %union.anon.2* %9 to i64*
  store i64 0, i64* %10, align 4
  %11 = getelementptr inbounds %union.anon.2, %union.anon.2* %9, i32 0, i32 0, i32 0
  store i8 %1, i8* %11, align 4, !tbaa !8
  %12 = getelementptr inbounds %struct.dcd_event_t, %struct.dcd_event_t* %6, i32 0, i32 2, i32 0, i32 2
  store i32 %2, i32* %12, align 4, !tbaa !8
  %13 = getelementptr inbounds %struct.dcd_event_t, %struct.dcd_event_t* %6, i32 0, i32 2, i32 0, i32 1
  store i8 %3, i8* %13, align 1, !tbaa !8
  call void @dcd_event_handler(%struct.dcd_event_t* noundef nonnull %6, i1 noundef zeroext %4)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %7) #30
  ret void
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @usbd_open_edpt_pair(i8 noundef zeroext %0, i8* noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8* nocapture noundef writeonly %4, i8* nocapture noundef writeonly %5) local_unnamed_addr #3 {
  %7 = zext i8 %2 to i32
  %8 = icmp eq i8 %2, 0
  br i1 %8, label %32, label %9

9:                                                ; preds = %6, %23
  %10 = phi i32 [ %30, %23 ], [ 0, %6 ]
  %11 = phi i8* [ %29, %23 ], [ %1, %6 ]
  %12 = bitcast i8* %11 to %struct.tusb_desc_endpoint_t*
  %13 = getelementptr inbounds i8, i8* %11, i32 1
  %14 = load i8, i8* %13, align 1, !tbaa !313
  %15 = icmp eq i8 %14, 5
  br i1 %15, label %16, label %32

16:                                               ; preds = %9
  %17 = getelementptr inbounds i8, i8* %11, i32 3
  %18 = load i8, i8* %17, align 1
  %19 = and i8 %18, 3
  %20 = icmp eq i8 %19, %3
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = tail call zeroext i1 @usbd_edpt_open(i8 noundef zeroext %0, %struct.tusb_desc_endpoint_t* noundef nonnull %12)
  br i1 %22, label %23, label %32

23:                                               ; preds = %21
  %24 = getelementptr inbounds i8, i8* %11, i32 2
  %25 = load i8, i8* %24, align 1, !tbaa !269
  %26 = tail call fastcc i32 @tu_edpt_dir.136(i8 noundef zeroext %25)
  %27 = icmp eq i32 %26, 1
  %28 = select i1 %27, i8* %5, i8* %4
  store i8 %25, i8* %28, align 1, !tbaa !8
  %29 = tail call fastcc i8* @tu_desc_next(i8* noundef nonnull %11)
  %30 = add nuw nsw i32 %10, 1
  %31 = icmp eq i32 %30, %7
  br i1 %31, label %32, label %9, !llvm.loop !314

32:                                               ; preds = %23, %16, %9, %21, %6
  %33 = phi i1 [ true, %6 ], [ false, %21 ], [ false, %9 ], [ false, %16 ], [ true, %23 ]
  ret i1 %33
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @usbd_edpt_open(i8 noundef zeroext %0, %struct.tusb_desc_endpoint_t* noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.tusb_desc_endpoint_t, %struct.tusb_desc_endpoint_t* %1, i32 0, i32 2
  %4 = load i8, i8* %3, align 1, !tbaa !269
  %5 = tail call fastcc zeroext i8 @tu_edpt_number.135(i8 noundef zeroext %4)
  %6 = icmp ult i8 %5, 16
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load i8, i8* getelementptr inbounds (%struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 2), align 1, !tbaa !280
  %9 = zext i8 %8 to i32
  %10 = tail call zeroext i1 @tu_edpt_validate(%struct.tusb_desc_endpoint_t* noundef nonnull %1, i32 noundef %9) #30
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call zeroext i1 @dcd_edpt_open(i8 noundef zeroext %0, %struct.tusb_desc_endpoint_t* noundef nonnull %1) #30
  br label %13

13:                                               ; preds = %7, %2, %11
  %14 = phi i1 [ %12, %11 ], [ false, %2 ], [ false, %7 ]
  ret i1 %14
}

; Function Attrs: noinline nounwind
define dso_local void @usbd_defer_func(void (i8*)* noundef %0, i8* noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 {
  %4 = alloca %struct.dcd_event_t, align 4
  %5 = getelementptr inbounds %struct.dcd_event_t, %struct.dcd_event_t* %4, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %5) #30
  %6 = bitcast %struct.dcd_event_t* %4 to i32*
  store i32 2048, i32* %6, align 4
  %7 = getelementptr inbounds %struct.dcd_event_t, %struct.dcd_event_t* %4, i32 0, i32 2
  %8 = bitcast %union.anon.2* %7 to void (i8*)**
  store void (i8*)* %0, void (i8*)** %8, align 4, !tbaa !8
  %9 = getelementptr inbounds %struct.dcd_event_t, %struct.dcd_event_t* %4, i32 0, i32 2, i32 0, i32 2
  %10 = bitcast i32* %9 to i8**
  store i8* %1, i8** %10, align 4, !tbaa !8
  call void @dcd_event_handler(%struct.dcd_event_t* noundef nonnull %4, i1 noundef zeroext %2)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %5) #30
  ret void
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @usbd_edpt_claim(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #3 {
  %3 = tail call fastcc zeroext i8 @tu_edpt_number.135(i8 noundef zeroext %1)
  %4 = tail call fastcc i32 @tu_edpt_dir.136(i8 noundef zeroext %1)
  %5 = zext i8 %3 to i32
  %6 = and i32 %4, 255
  %7 = getelementptr inbounds %struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 5, i32 %5, i32 %6, i32 0
  %8 = load volatile i8, i8* %7, align 1
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %2
  %12 = load volatile i8, i8* %7, align 1
  %13 = and i8 %12, 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = load %struct.mutex*, %struct.mutex** @_usbd_mutex, align 4, !tbaa !11
  tail call fastcc void @osal_mutex_lock(%struct.mutex* noundef %16)
  %17 = load volatile i8, i8* %7, align 1
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load volatile i8, i8* %7, align 1
  %22 = and i8 %21, 4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load volatile i8, i8* %7, align 1
  %26 = or i8 %25, 4
  store volatile i8 %26, i8* %7, align 1
  br label %27

27:                                               ; preds = %15, %24, %20
  %28 = phi i1 [ true, %24 ], [ false, %20 ], [ false, %15 ]
  %29 = load %struct.mutex*, %struct.mutex** @_usbd_mutex, align 4, !tbaa !11
  tail call fastcc void @osal_mutex_unlock(%struct.mutex* noundef %29)
  br label %30

30:                                               ; preds = %2, %11, %27
  %31 = phi i1 [ %28, %27 ], [ false, %11 ], [ false, %2 ]
  ret i1 %31
}

; Function Attrs: noinline nounwind
define internal fastcc void @osal_mutex_lock(%struct.mutex* noundef %0) unnamed_addr #3 {
  %2 = tail call zeroext i1 @mutex_enter_timeout_ms(%struct.mutex* noundef %0, i32 noundef -1) #30
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc void @osal_mutex_unlock(%struct.mutex* noundef %0) unnamed_addr #3 {
  tail call void @mutex_exit(%struct.mutex* noundef %0) #30
  ret void
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @usbd_edpt_release(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #3 {
  %3 = tail call fastcc zeroext i8 @tu_edpt_number.135(i8 noundef zeroext %1)
  %4 = tail call fastcc i32 @tu_edpt_dir.136(i8 noundef zeroext %1)
  %5 = load %struct.mutex*, %struct.mutex** @_usbd_mutex, align 4, !tbaa !11
  tail call fastcc void @osal_mutex_lock(%struct.mutex* noundef %5)
  %6 = zext i8 %3 to i32
  %7 = and i32 %4, 255
  %8 = getelementptr inbounds %struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 5, i32 %6, i32 %7, i32 0
  %9 = load volatile i8, i8* %8, align 1
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load volatile i8, i8* %8, align 1
  %14 = and i8 %13, 4
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load volatile i8, i8* %8, align 1
  %18 = and i8 %17, -5
  store volatile i8 %18, i8* %8, align 1
  br label %19

19:                                               ; preds = %2, %16, %12
  %20 = phi i1 [ true, %16 ], [ false, %12 ], [ false, %2 ]
  %21 = load %struct.mutex*, %struct.mutex** @_usbd_mutex, align 4, !tbaa !11
  tail call fastcc void @osal_mutex_unlock(%struct.mutex* noundef %21)
  ret i1 %20
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @usbd_edpt_xfer(i8 noundef zeroext %0, i8 noundef zeroext %1, i8* noundef %2, i16 noundef zeroext %3) local_unnamed_addr #3 {
  %5 = tail call fastcc zeroext i8 @tu_edpt_number.135(i8 noundef zeroext %1)
  %6 = tail call fastcc i32 @tu_edpt_dir.136(i8 noundef zeroext %1)
  %7 = zext i8 %5 to i32
  %8 = and i32 %6, 255
  %9 = getelementptr inbounds %struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 5, i32 %7, i32 %8, i32 0
  %10 = load volatile i8, i8* %9, align 1
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %4
  %14 = load volatile i8, i8* %9, align 1
  %15 = or i8 %14, 1
  store volatile i8 %15, i8* %9, align 1
  %16 = tail call zeroext i1 @dcd_edpt_xfer(i8 noundef zeroext %0, i8 noundef zeroext %1, i8* noundef %2, i16 noundef zeroext %3) #30
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = load volatile i8, i8* %9, align 1
  %19 = and i8 %18, -2
  store volatile i8 %19, i8* %9, align 1
  %20 = load volatile i8, i8* %9, align 1
  %21 = and i8 %20, -5
  store volatile i8 %21, i8* %9, align 1
  br label %22

22:                                               ; preds = %13, %4, %17
  %23 = phi i1 [ false, %17 ], [ false, %4 ], [ true, %13 ]
  ret i1 %23
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @usbd_edpt_xfer_fifo(i8 noundef zeroext %0, i8 noundef zeroext %1, %struct.tu_fifo_t* noundef %2, i16 noundef zeroext %3) local_unnamed_addr #3 {
  %5 = tail call fastcc zeroext i8 @tu_edpt_number.135(i8 noundef zeroext %1)
  %6 = tail call fastcc i32 @tu_edpt_dir.136(i8 noundef zeroext %1)
  %7 = zext i8 %5 to i32
  %8 = and i32 %6, 255
  %9 = getelementptr inbounds %struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 5, i32 %7, i32 %8, i32 0
  %10 = load volatile i8, i8* %9, align 1
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %4
  %14 = load volatile i8, i8* %9, align 1
  %15 = or i8 %14, 1
  store volatile i8 %15, i8* %9, align 1
  %16 = tail call zeroext i1 @dcd_edpt_xfer_fifo(i8 noundef zeroext %0, i8 noundef zeroext %1, %struct.tu_fifo_t* noundef %2, i16 noundef zeroext %3) #30
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = load volatile i8, i8* %9, align 1
  %19 = and i8 %18, -2
  store volatile i8 %19, i8* %9, align 1
  %20 = load volatile i8, i8* %9, align 1
  %21 = and i8 %20, -5
  store volatile i8 %21, i8* %9, align 1
  br label %22

22:                                               ; preds = %13, %4, %17
  %23 = phi i1 [ false, %17 ], [ false, %4 ], [ true, %13 ]
  ret i1 %23
}

declare extern_weak dso_local zeroext i1 @dcd_edpt_xfer_fifo(i8 noundef zeroext, i8 noundef zeroext, %struct.tu_fifo_t* noundef, i16 noundef zeroext) local_unnamed_addr #21

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local zeroext i1 @usbd_edpt_busy(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #9 {
  %3 = tail call fastcc zeroext i8 @tu_edpt_number.135(i8 noundef zeroext %1)
  %4 = tail call fastcc i32 @tu_edpt_dir.136(i8 noundef zeroext %1)
  %5 = zext i8 %3 to i32
  %6 = and i32 %4, 255
  %7 = getelementptr inbounds %struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 5, i32 %5, i32 %6, i32 0
  %8 = load volatile i8, i8* %7, align 1
  %9 = and i8 %8, 1
  %10 = icmp ne i8 %9, 0
  ret i1 %10
}

; Function Attrs: noinline nounwind
define dso_local void @usbd_edpt_close(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #3 {
  br i1 true, label %3, label %15

3:                                                ; preds = %2
  %4 = tail call fastcc zeroext i8 @tu_edpt_number.135(i8 noundef zeroext %1)
  %5 = tail call fastcc i32 @tu_edpt_dir.136(i8 noundef zeroext %1)
  tail call void @dcd_edpt_close(i8 noundef zeroext %0, i8 noundef zeroext %1) #30
  %6 = zext i8 %4 to i32
  %7 = and i32 %5, 255
  %8 = getelementptr inbounds %struct.usbd_device_t, %struct.usbd_device_t* @_usbd_dev, i32 0, i32 5, i32 %6, i32 %7, i32 0
  %9 = load volatile i8, i8* %8, align 1
  %10 = and i8 %9, -3
  store volatile i8 %10, i8* %8, align 1
  %11 = load volatile i8, i8* %8, align 1
  %12 = and i8 %11, -2
  store volatile i8 %12, i8* %8, align 1
  %13 = load volatile i8, i8* %8, align 1
  %14 = and i8 %13, -5
  store volatile i8 %14, i8* %8, align 1
  br label %15

15:                                               ; preds = %2, %3
  ret void
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @tud_control_status(i8 noundef zeroext %0, %struct.tusb_control_request_t* nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = bitcast %struct.tusb_control_request_t* %1 to i64*
  %4 = load i64, i64* %3, align 1
  store i64 %4, i64* bitcast (%struct.usbd_control_xfer_t* @_ctrl_xfer to i64*), align 8
  %5 = getelementptr %struct.tusb_control_request_t, %struct.tusb_control_request_t* %1, i32 0, i32 0, i32 0, i32 0
  store i64 0, i64* bitcast (i8** getelementptr inbounds (%struct.usbd_control_xfer_t, %struct.usbd_control_xfer_t* @_ctrl_xfer, i32 0, i32 1) to i64*), align 8
  %6 = load i8, i8* %5, align 1
  %7 = tail call fastcc zeroext i1 @_status_stage_xact(i8 noundef zeroext %0, i8 %6)
  ret i1 %7
}

; Function Attrs: noinline nounwind
define internal fastcc zeroext i1 @_status_stage_xact(i8 noundef zeroext %0, i8 %1) unnamed_addr #3 {
  %3 = and i8 %1, -128
  %4 = xor i8 %3, -128
  %5 = tail call zeroext i1 @usbd_edpt_xfer(i8 noundef zeroext %0, i8 noundef zeroext %4, i8* noundef null, i16 noundef zeroext 0) #30
  ret i1 %5
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @tud_control_xfer(i8 noundef zeroext %0, %struct.tusb_control_request_t* nocapture noundef readonly %1, i8* noundef %2, i16 noundef zeroext %3) local_unnamed_addr #3 {
  %5 = bitcast %struct.tusb_control_request_t* %1 to i64*
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%struct.usbd_control_xfer_t* @_ctrl_xfer to i64*), align 8
  store i8* %2, i8** getelementptr inbounds (%struct.usbd_control_xfer_t, %struct.usbd_control_xfer_t* @_ctrl_xfer, i32 0, i32 1), align 8, !tbaa !315
  store i16 0, i16* getelementptr inbounds (%struct.usbd_control_xfer_t, %struct.usbd_control_xfer_t* @_ctrl_xfer, i32 0, i32 3), align 2, !tbaa !317
  %7 = getelementptr inbounds %struct.tusb_control_request_t, %struct.tusb_control_request_t* %1, i32 0, i32 4
  %8 = load i16, i16* %7, align 1, !tbaa !318
  %9 = icmp ugt i16 %8, %3
  %10 = select i1 %9, i16 %3, i16 %8
  store i16 %10, i16* getelementptr inbounds (%struct.usbd_control_xfer_t, %struct.usbd_control_xfer_t* @_ctrl_xfer, i32 0, i32 2), align 4, !tbaa !319
  %11 = icmp eq i16 %8, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %4
  %13 = icmp eq i16 %10, 0
  %14 = icmp ne i8* %2, null
  %15 = or i1 %14, %13
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = tail call fastcc zeroext i1 @_data_stage_xact(i8 noundef zeroext %0)
  br i1 %17, label %22, label %23

18:                                               ; preds = %4
  %19 = getelementptr %struct.tusb_control_request_t, %struct.tusb_control_request_t* %1, i32 0, i32 0, i32 0, i32 0
  %20 = load i8, i8* %19, align 1
  %21 = tail call fastcc zeroext i1 @_status_stage_xact(i8 noundef zeroext %0, i8 %20)
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %16
  br label %23

23:                                               ; preds = %18, %16, %12, %22
  %24 = phi i1 [ true, %22 ], [ false, %12 ], [ false, %16 ], [ false, %18 ]
  ret i1 %24
}

; Function Attrs: noinline nounwind
define internal fastcc zeroext i1 @_data_stage_xact(i8 noundef zeroext %0) unnamed_addr #3 {
  %2 = load i16, i16* getelementptr inbounds (%struct.usbd_control_xfer_t, %struct.usbd_control_xfer_t* @_ctrl_xfer, i32 0, i32 2), align 4, !tbaa !319
  %3 = load i16, i16* getelementptr inbounds (%struct.usbd_control_xfer_t, %struct.usbd_control_xfer_t* @_ctrl_xfer, i32 0, i32 3), align 2, !tbaa !317
  %4 = sub i16 %2, %3
  %5 = icmp ult i16 %4, 64
  %6 = select i1 %5, i16 %4, i16 64
  %7 = load i8, i8* getelementptr inbounds (%struct.usbd_control_xfer_t, %struct.usbd_control_xfer_t* @_ctrl_xfer, i32 0, i32 0, i32 0, i32 0, i32 0), align 8
  %8 = icmp slt i8 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = icmp eq i16 %6, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %9
  %12 = load i8*, i8** getelementptr inbounds (%struct.usbd_control_xfer_t, %struct.usbd_control_xfer_t* @_ctrl_xfer, i32 0, i32 1), align 8, !tbaa !315
  %13 = zext i16 %6 to i32
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 getelementptr inbounds ([64 x i8], [64 x i8]* @_usbd_ctrl_buf, i32 0, i32 0), i8* align 1 %12, i32 %13, i1 false)
  br label %14

14:                                               ; preds = %9, %11, %1
  %15 = phi i8 [ -128, %11 ], [ -128, %9 ], [ 0, %1 ]
  %16 = icmp eq i16 %6, 0
  %17 = select i1 %16, i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @_usbd_ctrl_buf, i32 0, i32 0)
  %18 = tail call zeroext i1 @usbd_edpt_xfer(i8 noundef zeroext %0, i8 noundef zeroext %15, i8* noundef %17, i16 noundef zeroext %6) #30
  ret i1 %18
}

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn writeonly
define dso_local void @usbd_control_reset() local_unnamed_addr #13 {
  tail call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 8 dereferenceable(20) getelementptr inbounds (%struct.usbd_control_xfer_t, %struct.usbd_control_xfer_t* @_ctrl_xfer, i32 0, i32 0, i32 0, i32 0, i32 0), i8 0, i32 20, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly
define dso_local void @usbd_control_set_complete_callback(i1 (i8, i8, %struct.tusb_control_request_t*)* noundef %0) local_unnamed_addr #15 {
  store i1 (i8, i8, %struct.tusb_control_request_t*)* %0, i1 (i8, i8, %struct.tusb_control_request_t*)** getelementptr inbounds (%struct.usbd_control_xfer_t, %struct.usbd_control_xfer_t* @_ctrl_xfer, i32 0, i32 4), align 8, !tbaa !320
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn
define dso_local void @usbd_control_set_request(%struct.tusb_control_request_t* nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = bitcast %struct.tusb_control_request_t* %0 to i64*
  %3 = load i64, i64* %2, align 1
  store i64 %3, i64* bitcast (%struct.usbd_control_xfer_t* @_ctrl_xfer to i64*), align 8
  store i64 0, i64* bitcast (i8** getelementptr inbounds (%struct.usbd_control_xfer_t, %struct.usbd_control_xfer_t* @_ctrl_xfer, i32 0, i32 1) to i64*), align 8
  ret void
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @usbd_control_xfer_cb(i8 noundef zeroext %0, i8 noundef zeroext %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = tail call fastcc i32 @tu_edpt_dir.157(i8 noundef zeroext %1)
  %6 = load i8, i8* getelementptr inbounds (%struct.usbd_control_xfer_t, %struct.usbd_control_xfer_t* @_ctrl_xfer, i32 0, i32 0, i32 0, i32 0, i32 0), align 8
  %7 = lshr i8 %6, 7
  %8 = zext i8 %7 to i32
  %9 = icmp eq i32 %5, %8
  br i1 %9, label %19, label %10

10:                                               ; preds = %4
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %12, label %47

12:                                               ; preds = %10
  br i1 true, label %13, label %14

13:                                               ; preds = %12
  tail call void @dcd_edpt0_status_complete(i8 noundef zeroext %0, %struct.tusb_control_request_t* noundef getelementptr inbounds (%struct.usbd_control_xfer_t, %struct.usbd_control_xfer_t* @_ctrl_xfer, i32 0, i32 0)) #30
  br label %14

14:                                               ; preds = %13, %12
  %15 = load i1 (i8, i8, %struct.tusb_control_request_t*)*, i1 (i8, i8, %struct.tusb_control_request_t*)** getelementptr inbounds (%struct.usbd_control_xfer_t, %struct.usbd_control_xfer_t* @_ctrl_xfer, i32 0, i32 4), align 8, !tbaa !320
  %16 = icmp eq i1 (i8, i8, %struct.tusb_control_request_t*)* %15, null
  br i1 %16, label %47, label %17

17:                                               ; preds = %14
  %18 = tail call zeroext i1 %15(i8 noundef zeroext %0, i8 noundef zeroext 2, %struct.tusb_control_request_t* noundef getelementptr inbounds (%struct.usbd_control_xfer_t, %struct.usbd_control_xfer_t* @_ctrl_xfer, i32 0, i32 0)) #30
  br label %47

19:                                               ; preds = %4
  %20 = icmp sgt i8 %6, -1
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  %22 = load i8*, i8** getelementptr inbounds (%struct.usbd_control_xfer_t, %struct.usbd_control_xfer_t* @_ctrl_xfer, i32 0, i32 1), align 8, !tbaa !315
  %23 = icmp eq i8* %22, null
  br i1 %23, label %47, label %24

24:                                               ; preds = %21
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 1 %22, i8* align 4 getelementptr inbounds ([64 x i8], [64 x i8]* @_usbd_ctrl_buf, i32 0, i32 0), i32 %3, i1 false)
  br label %25

25:                                               ; preds = %24, %19
  %26 = load i16, i16* getelementptr inbounds (%struct.usbd_control_xfer_t, %struct.usbd_control_xfer_t* @_ctrl_xfer, i32 0, i32 3), align 2, !tbaa !317
  %27 = trunc i32 %3 to i16
  %28 = add i16 %26, %27
  store i16 %28, i16* getelementptr inbounds (%struct.usbd_control_xfer_t, %struct.usbd_control_xfer_t* @_ctrl_xfer, i32 0, i32 3), align 2, !tbaa !317
  %29 = load i8*, i8** getelementptr inbounds (%struct.usbd_control_xfer_t, %struct.usbd_control_xfer_t* @_ctrl_xfer, i32 0, i32 1), align 8, !tbaa !315
  %30 = getelementptr inbounds i8, i8* %29, i32 %3
  store i8* %30, i8** getelementptr inbounds (%struct.usbd_control_xfer_t, %struct.usbd_control_xfer_t* @_ctrl_xfer, i32 0, i32 1), align 8, !tbaa !315
  %31 = load i16, i16* getelementptr inbounds (%struct.usbd_control_xfer_t, %struct.usbd_control_xfer_t* @_ctrl_xfer, i32 0, i32 0, i32 4), align 2, !tbaa !321
  %32 = icmp eq i16 %31, %28
  %33 = icmp ult i32 %3, 64
  %34 = or i1 %33, %32
  br i1 %34, label %35, label %44

35:                                               ; preds = %25
  %36 = load i1 (i8, i8, %struct.tusb_control_request_t*)*, i1 (i8, i8, %struct.tusb_control_request_t*)** getelementptr inbounds (%struct.usbd_control_xfer_t, %struct.usbd_control_xfer_t* @_ctrl_xfer, i32 0, i32 4), align 8, !tbaa !320
  %37 = icmp eq i1 (i8, i8, %struct.tusb_control_request_t*)* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = tail call zeroext i1 %36(i8 noundef zeroext %0, i8 noundef zeroext 1, %struct.tusb_control_request_t* noundef getelementptr inbounds (%struct.usbd_control_xfer_t, %struct.usbd_control_xfer_t* @_ctrl_xfer, i32 0, i32 0)) #30
  br i1 %39, label %40, label %43

40:                                               ; preds = %35, %38
  %41 = load i8, i8* getelementptr inbounds (%struct.usbd_control_xfer_t, %struct.usbd_control_xfer_t* @_ctrl_xfer, i32 0, i32 0, i32 0, i32 0, i32 0), align 8
  %42 = tail call fastcc zeroext i1 @_status_stage_xact(i8 noundef zeroext %0, i8 %41)
  br i1 %42, label %46, label %47

43:                                               ; preds = %38
  tail call void @dcd_edpt_stall(i8 noundef zeroext %0, i8 noundef zeroext 0) #30
  tail call void @dcd_edpt_stall(i8 noundef zeroext %0, i8 noundef zeroext -128) #30
  br label %46

44:                                               ; preds = %25
  %45 = tail call fastcc zeroext i1 @_data_stage_xact(i8 noundef zeroext %0)
  br i1 %45, label %46, label %47

46:                                               ; preds = %40, %43, %44
  br label %47

47:                                               ; preds = %40, %44, %21, %14, %17, %10, %46
  %48 = phi i1 [ true, %46 ], [ false, %10 ], [ true, %17 ], [ true, %14 ], [ false, %21 ], [ false, %44 ], [ false, %40 ]
  ret i1 %48
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn
define internal fastcc i32 @tu_edpt_dir.157(i8 noundef zeroext %0) unnamed_addr #12 {
  %2 = lshr i8 %0, 7
  %3 = zext i8 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @tud_cdc_n_connected(i8 noundef zeroext %0) local_unnamed_addr #3 {
  %2 = tail call zeroext i1 @tud_mounted() #30
  br i1 %2, label %3, label %11

3:                                                ; preds = %1
  %4 = tail call zeroext i1 @tud_suspended() #30
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = zext i8 %0 to i32
  %7 = getelementptr inbounds [1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 %6, i32 4
  %8 = load i8, i8* %7, align 4, !tbaa !322
  %9 = and i8 %8, 1
  %10 = icmp ne i8 %9, 0
  br label %11

11:                                               ; preds = %1, %5, %3
  %12 = phi i1 [ false, %3 ], [ %10, %5 ], [ false, %1 ]
  ret i1 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define dso_local zeroext i8 @tud_cdc_n_get_line_state(i8 noundef zeroext %0) local_unnamed_addr #10 {
  %2 = zext i8 %0 to i32
  %3 = getelementptr inbounds [1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 %2, i32 4
  %4 = load i8, i8* %3, align 4, !tbaa !322
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn
define dso_local void @tud_cdc_n_get_line_coding(i8 noundef zeroext %0, %struct.cdc_line_coding_t* nocapture noundef writeonly %1) local_unnamed_addr #26 {
  %3 = zext i8 %0 to i32
  %4 = getelementptr inbounds [1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 %3, i32 6
  %5 = bitcast %struct.cdc_line_coding_t* %1 to i8*
  %6 = bitcast %struct.cdc_line_coding_t* %4 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(7) %5, i8* noundef nonnull align 2 dereferenceable(7) %6, i32 7, i1 false), !tbaa.struct !325
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly
define dso_local void @tud_cdc_n_set_wanted_char(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #15 {
  %3 = zext i8 %0 to i32
  %4 = getelementptr inbounds [1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 %3, i32 5
  store i8 %1, i8* %4, align 1, !tbaa !326
  ret void
}

; Function Attrs: noinline nounwind
define dso_local i32 @tud_cdc_n_available(i8 noundef zeroext %0) local_unnamed_addr #3 {
  %2 = zext i8 %0 to i32
  %3 = getelementptr inbounds [1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 %2, i32 7
  %4 = tail call zeroext i16 @tu_fifo_count(%struct.tu_fifo_t* noundef nonnull %3) #30
  %5 = zext i16 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind
define dso_local i32 @tud_cdc_n_read(i8 noundef zeroext %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = zext i8 %0 to i32
  %5 = getelementptr inbounds [1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 %4
  %6 = getelementptr inbounds [1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 %4, i32 7
  %7 = trunc i32 %2 to i16
  %8 = tail call zeroext i16 @tu_fifo_read_n(%struct.tu_fifo_t* noundef nonnull %6, i8* noundef %1, i16 noundef zeroext %7) #30
  %9 = zext i16 %8 to i32
  tail call fastcc void @_prep_out_transaction(%struct.cdcd_interface_t* noundef nonnull %5)
  ret i32 %9
}

; Function Attrs: noinline nounwind
define internal fastcc void @_prep_out_transaction(%struct.cdcd_interface_t* noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.cdcd_interface_t, %struct.cdcd_interface_t* %0, i32 0, i32 7
  %3 = tail call zeroext i16 @tu_fifo_remaining(%struct.tu_fifo_t* noundef nonnull %2) #30
  %4 = icmp ugt i16 %3, 63
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cdcd_interface_t, %struct.cdcd_interface_t* %0, i32 0, i32 3
  %7 = load i8, i8* %6, align 1, !tbaa !327
  %8 = tail call zeroext i1 @usbd_edpt_claim(i8 noundef zeroext 0, i8 noundef zeroext %7) #30
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = tail call zeroext i16 @tu_fifo_remaining(%struct.tu_fifo_t* noundef nonnull %2) #30
  %11 = icmp ugt i16 %10, 63
  %12 = load i8, i8* %6, align 1, !tbaa !327
  br i1 %11, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.cdcd_interface_t, %struct.cdcd_interface_t* %0, i32 0, i32 13, i32 0
  %15 = tail call zeroext i1 @usbd_edpt_xfer(i8 noundef zeroext 0, i8 noundef zeroext %12, i8* noundef nonnull %14, i16 noundef zeroext 64) #30
  br label %18

16:                                               ; preds = %9
  %17 = tail call zeroext i1 @usbd_edpt_release(i8 noundef zeroext 0, i8 noundef zeroext %12) #30
  br label %18

18:                                               ; preds = %13, %16, %5, %1
  ret void
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @tud_cdc_n_peek(i8 noundef zeroext %0, i8* noundef %1) local_unnamed_addr #3 {
  %3 = zext i8 %0 to i32
  %4 = getelementptr inbounds [1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 %3, i32 7
  %5 = tail call zeroext i1 @tu_fifo_peek(%struct.tu_fifo_t* noundef nonnull %4, i8* noundef %1) #30
  ret i1 %5
}

; Function Attrs: noinline nounwind
define dso_local void @tud_cdc_n_read_flush(i8 noundef zeroext %0) local_unnamed_addr #3 {
  %2 = zext i8 %0 to i32
  %3 = getelementptr inbounds [1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 %2
  %4 = getelementptr inbounds [1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 %2, i32 7
  %5 = tail call zeroext i1 @tu_fifo_clear(%struct.tu_fifo_t* noundef nonnull %4) #30
  tail call fastcc void @_prep_out_transaction(%struct.cdcd_interface_t* noundef nonnull %3)
  ret void
}

; Function Attrs: noinline nounwind
define dso_local i32 @tud_cdc_n_write(i8 noundef zeroext %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = zext i8 %0 to i32
  %5 = getelementptr inbounds [1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 %4, i32 8
  %6 = trunc i32 %2 to i16
  %7 = tail call zeroext i16 @tu_fifo_write_n(%struct.tu_fifo_t* noundef nonnull %5, i8* noundef %1, i16 noundef zeroext %6) #30
  %8 = tail call zeroext i16 @tu_fifo_count(%struct.tu_fifo_t* noundef nonnull %5) #30
  %9 = icmp ugt i16 %8, 63
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = tail call i32 @tud_cdc_n_write_flush(i8 noundef zeroext %0)
  br label %12

12:                                               ; preds = %10, %3
  %13 = zext i16 %7 to i32
  ret i32 %13
}

; Function Attrs: noinline nounwind
define dso_local i32 @tud_cdc_n_write_flush(i8 noundef zeroext %0) local_unnamed_addr #3 {
  %2 = zext i8 %0 to i32
  %3 = tail call zeroext i1 @tud_mounted() #30
  br i1 %3, label %4, label %25

4:                                                ; preds = %1
  %5 = tail call zeroext i1 @tud_suspended() #30
  br i1 %5, label %25, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds [1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 %2, i32 8
  %8 = tail call zeroext i16 @tu_fifo_count(%struct.tu_fifo_t* noundef nonnull %7) #30
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds [1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 %2, i32 2
  %12 = load i8, i8* %11, align 2, !tbaa !328
  %13 = tail call zeroext i1 @usbd_edpt_claim(i8 noundef zeroext 0, i8 noundef zeroext %12) #30
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = getelementptr inbounds [1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 %2, i32 14, i32 0
  %16 = tail call zeroext i16 @tu_fifo_read_n(%struct.tu_fifo_t* noundef nonnull %7, i8* noundef nonnull %15, i16 noundef zeroext 64) #30
  %17 = icmp eq i16 %16, 0
  %18 = load i8, i8* %11, align 2, !tbaa !328
  br i1 %17, label %23, label %19

19:                                               ; preds = %14
  %20 = tail call zeroext i1 @usbd_edpt_xfer(i8 noundef zeroext 0, i8 noundef zeroext %18, i8* noundef nonnull %15, i16 noundef zeroext %16) #30
  %21 = zext i16 %16 to i32
  %22 = select i1 %20, i32 %21, i32 0
  br label %25

23:                                               ; preds = %14
  %24 = tail call zeroext i1 @usbd_edpt_release(i8 noundef zeroext 0, i8 noundef zeroext %18) #30
  br label %25

25:                                               ; preds = %1, %19, %10, %23, %6, %4
  %26 = phi i32 [ 0, %4 ], [ 0, %6 ], [ 0, %10 ], [ 0, %23 ], [ %22, %19 ], [ 0, %1 ]
  ret i32 %26
}

; Function Attrs: noinline nounwind
define dso_local i32 @tud_cdc_n_write_available(i8 noundef zeroext %0) local_unnamed_addr #3 {
  %2 = zext i8 %0 to i32
  %3 = getelementptr inbounds [1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 %2, i32 8
  %4 = tail call zeroext i16 @tu_fifo_remaining(%struct.tu_fifo_t* noundef nonnull %3) #30
  %5 = zext i16 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @tud_cdc_n_write_clear(i8 noundef zeroext %0) local_unnamed_addr #3 {
  %2 = zext i8 %0 to i32
  %3 = getelementptr inbounds [1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 %2, i32 8
  %4 = tail call zeroext i1 @tu_fifo_clear(%struct.tu_fifo_t* noundef nonnull %3) #30
  ret i1 %4
}

; Function Attrs: noinline nounwind
define dso_local void @cdcd_init() #3 {
  tail call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(728) getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 0), i8 0, i32 728, i1 false)
  store i8 -1, i8* getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 5), align 1, !tbaa !326
  store i32 115200, i32* getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 6, i32 0), align 2, !tbaa !329
  store i8 0, i8* getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 6, i32 2), align 1, !tbaa !330
  store i8 8, i8* getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 6, i32 3), align 4, !tbaa !331
  %1 = tail call zeroext i1 @tu_fifo_config(%struct.tu_fifo_t* noundef getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 7), i8* noundef getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 9, i32 0), i16 noundef zeroext 256, i16 noundef zeroext 1, i1 noundef zeroext false) #30
  %2 = tail call zeroext i1 @tu_fifo_config(%struct.tu_fifo_t* noundef getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 8), i8* noundef getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 10, i32 0), i16 noundef zeroext 256, i16 noundef zeroext 1, i1 noundef zeroext true) #30
  %3 = tail call fastcc %struct.mutex* @osal_mutex_create.172(%struct.mutex* noundef getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 11))
  store %struct.mutex* null, %struct.mutex** getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 7, i32 8), align 4, !tbaa !332
  store %struct.mutex* getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 11), %struct.mutex** getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 7, i32 9), align 4, !tbaa !333
  %4 = tail call fastcc %struct.mutex* @osal_mutex_create.172(%struct.mutex* noundef getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 12))
  store %struct.mutex* getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 12), %struct.mutex** getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 8, i32 8), align 4, !tbaa !332
  store %struct.mutex* null, %struct.mutex** getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 8, i32 9), align 4, !tbaa !333
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.mutex* @osal_mutex_create.172(%struct.mutex* noundef returned %0) unnamed_addr #3 {
  tail call void @mutex_init(%struct.mutex* noundef %0) #30
  ret %struct.mutex* %0
}

; Function Attrs: noinline nounwind
define dso_local void @cdcd_reset(i8 noundef zeroext %0) #3 {
  tail call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(5) getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 0), i8 0, i32 5, i1 false)
  %2 = tail call zeroext i1 @tu_fifo_clear(%struct.tu_fifo_t* noundef getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 7)) #30
  %3 = tail call zeroext i1 @tu_fifo_clear(%struct.tu_fifo_t* noundef getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 8)) #30
  %4 = tail call zeroext i1 @tu_fifo_set_overwritable(%struct.tu_fifo_t* noundef getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 8), i1 noundef zeroext true) #30
  ret void
}

; Function Attrs: noinline nounwind
define dso_local zeroext i16 @cdcd_open(i8 noundef zeroext %0, %struct.tusb_desc_interface_t* noundef %1, i16 noundef zeroext %2) #3 {
  %4 = getelementptr inbounds %struct.tusb_desc_interface_t, %struct.tusb_desc_interface_t* %1, i32 0, i32 5
  %5 = load i8, i8* %4, align 1, !tbaa !233
  %6 = icmp eq i8 %5, 2
  br i1 %6, label %7, label %77

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tusb_desc_interface_t, %struct.tusb_desc_interface_t* %1, i32 0, i32 6
  %9 = load i8, i8* %8, align 1, !tbaa !235
  %10 = icmp eq i8 %9, 2
  %11 = load i8, i8* getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 2), align 2
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %77

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.tusb_desc_interface_t, %struct.tusb_desc_interface_t* %1, i32 0, i32 2
  %16 = load i8, i8* %15, align 1, !tbaa !237
  store i8 %16, i8* getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 0), align 4, !tbaa !334
  %17 = getelementptr %struct.tusb_desc_interface_t, %struct.tusb_desc_interface_t* %1, i32 0, i32 0
  %18 = tail call fastcc i8* @tu_desc_next.177(i8* noundef %17)
  %19 = getelementptr i8, i8* %18, i32 1
  %20 = load i8, i8* %19, align 1, !tbaa !8
  %21 = tail call fastcc zeroext i8 @tu_desc_type.178(i8 %20)
  %22 = icmp eq i8 %21, 36
  %23 = icmp ugt i16 %2, 8
  %24 = and i1 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %14, %25
  %26 = phi i8* [ %32, %25 ], [ %18, %14 ]
  %27 = phi i16 [ %31, %25 ], [ 9, %14 ]
  %28 = load i8, i8* %26, align 1, !tbaa !8
  %29 = tail call fastcc zeroext i8 @tu_desc_len(i8 %28)
  %30 = zext i8 %29 to i16
  %31 = add i16 %27, %30
  %32 = tail call fastcc i8* @tu_desc_next.177(i8* noundef nonnull %26)
  %33 = getelementptr i8, i8* %32, i32 1
  %34 = load i8, i8* %33, align 1, !tbaa !8
  %35 = tail call fastcc zeroext i8 @tu_desc_type.178(i8 %34)
  %36 = icmp eq i8 %35, 36
  %37 = icmp ule i16 %31, %2
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %25, label %39, !llvm.loop !335

39:                                               ; preds = %25, %14
  %40 = phi i16 [ 9, %14 ], [ %31, %25 ]
  %41 = phi i8* [ %18, %14 ], [ %32, %25 ]
  %42 = phi i8 [ %21, %14 ], [ %35, %25 ]
  %43 = icmp eq i8 %42, 5
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = bitcast i8* %41 to %struct.tusb_desc_endpoint_t*
  %46 = tail call zeroext i1 @usbd_edpt_open(i8 noundef zeroext %0, %struct.tusb_desc_endpoint_t* noundef %45) #30
  br i1 %46, label %47, label %77

47:                                               ; preds = %44
  %48 = getelementptr inbounds i8, i8* %41, i32 2
  %49 = load i8, i8* %48, align 1, !tbaa !269
  store i8 %49, i8* getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 1), align 1, !tbaa !336
  %50 = load i8, i8* %41, align 1, !tbaa !8
  %51 = tail call fastcc zeroext i8 @tu_desc_len(i8 %50)
  %52 = zext i8 %51 to i16
  %53 = add i16 %40, %52
  %54 = tail call fastcc i8* @tu_desc_next.177(i8* noundef nonnull %41)
  br label %55

55:                                               ; preds = %47, %39
  %56 = phi i16 [ %40, %39 ], [ %53, %47 ]
  %57 = phi i8* [ %41, %39 ], [ %54, %47 ]
  %58 = getelementptr i8, i8* %57, i32 1
  %59 = load i8, i8* %58, align 1, !tbaa !8
  %60 = tail call fastcc zeroext i8 @tu_desc_type.178(i8 %59)
  %61 = icmp eq i8 %60, 4
  br i1 %61, label %62, label %75

62:                                               ; preds = %55
  %63 = getelementptr inbounds i8, i8* %57, i32 5
  %64 = load i8, i8* %63, align 1, !tbaa !233
  %65 = icmp eq i8 %64, 10
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load i8, i8* %57, align 1, !tbaa !8
  %68 = tail call fastcc zeroext i8 @tu_desc_len(i8 %67)
  %69 = tail call fastcc i8* @tu_desc_next.177(i8* noundef nonnull %57)
  %70 = tail call zeroext i1 @usbd_open_edpt_pair(i8 noundef zeroext %0, i8* noundef %69, i8 noundef zeroext 2, i8 noundef zeroext 2, i8* noundef nonnull getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 3), i8* noundef nonnull getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 2)) #30
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = zext i8 %68 to i16
  %73 = add i16 %56, 14
  %74 = add i16 %73, %72
  br label %75

75:                                               ; preds = %71, %62, %55
  %76 = phi i16 [ %74, %71 ], [ %56, %62 ], [ %56, %55 ]
  tail call fastcc void @_prep_out_transaction(%struct.cdcd_interface_t* noundef getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0))
  br label %77

77:                                               ; preds = %44, %66, %75, %3, %7
  %78 = phi i16 [ 0, %7 ], [ 0, %3 ], [ %76, %75 ], [ 0, %66 ], [ 0, %44 ]
  ret i16 %78
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define internal fastcc i8* @tu_desc_next.177(i8* noundef readonly %0) unnamed_addr #10 {
  %2 = load i8, i8* %0, align 1, !tbaa !8
  %3 = zext i8 %2 to i32
  %4 = getelementptr inbounds i8, i8* %0, i32 %3
  ret i8* %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define internal fastcc zeroext i8 @tu_desc_type.178(i8 %0) unnamed_addr #10 {
  ret i8 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define internal fastcc zeroext i8 @tu_desc_len(i8 %0) unnamed_addr #10 {
  ret i8 %0
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @cdcd_control_xfer_cb(i8 noundef zeroext %0, i8 noundef zeroext %1, %struct.tusb_control_request_t* noundef %2) #3 {
  %4 = getelementptr inbounds %struct.tusb_control_request_t, %struct.tusb_control_request_t* %2, i32 0, i32 0, i32 0, i32 0
  %5 = load i8, i8* %4, align 1
  %6 = and i8 %5, 96
  %7 = icmp eq i8 %6, 32
  br i1 %7, label %8, label %54

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.tusb_control_request_t, %struct.tusb_control_request_t* %2, i32 0, i32 3
  %10 = load i16, i16* %9, align 1, !tbaa !238
  %11 = load i8, i8* getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 0), align 4, !tbaa !334
  %12 = zext i8 %11 to i16
  %13 = icmp eq i16 %10, %12
  br i1 %13, label %14, label %54

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.tusb_control_request_t, %struct.tusb_control_request_t* %2, i32 0, i32 1
  %16 = load i8, i8* %15, align 1, !tbaa !240
  switch i8 %16, label %54 [
    i8 32, label %17
    i8 33, label %25
    i8 34, label %29
    i8 35, label %44
  ]

17:                                               ; preds = %14
  %18 = icmp eq i8 %1, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = tail call zeroext i1 @tud_control_xfer(i8 noundef zeroext %0, %struct.tusb_control_request_t* noundef nonnull %2, i8* noundef nonnull bitcast (%struct.cdc_line_coding_t* getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 6) to i8*), i16 noundef zeroext 7) #30
  br label %54

21:                                               ; preds = %17
  %22 = icmp ne i8 %1, 2
  %23 = or i1 %22, false
  br i1 %23, label %54, label %24

24:                                               ; preds = %21
  tail call void @tud_cdc_line_coding_cb(i8 noundef zeroext 0, %struct.cdc_line_coding_t* noundef nonnull getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 6)) #30
  br label %54

25:                                               ; preds = %14
  %26 = icmp eq i8 %1, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %25
  %28 = tail call zeroext i1 @tud_control_xfer(i8 noundef zeroext %0, %struct.tusb_control_request_t* noundef nonnull %2, i8* noundef nonnull bitcast (%struct.cdc_line_coding_t* getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 6) to i8*), i16 noundef zeroext 7) #30
  br label %54

29:                                               ; preds = %14
  switch i8 %1, label %54 [
    i8 0, label %30
    i8 2, label %32
  ]

30:                                               ; preds = %29
  %31 = tail call zeroext i1 @tud_control_status(i8 noundef zeroext %0, %struct.tusb_control_request_t* noundef nonnull %2) #30
  br label %54

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.tusb_control_request_t, %struct.tusb_control_request_t* %2, i32 0, i32 2
  %34 = load i16, i16* %33, align 1, !tbaa !241
  %35 = zext i16 %34 to i32
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  %38 = trunc i16 %34 to i8
  store i8 %38, i8* getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 4), align 4, !tbaa !322
  %39 = xor i1 %37, true
  %40 = tail call zeroext i1 @tu_fifo_set_overwritable(%struct.tu_fifo_t* noundef nonnull getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 8), i1 noundef zeroext %39) #30
  br i1 icmp ne (void (i8, i1, i1)* @tud_cdc_line_state_cb, void (i8, i1, i1)* null), label %41, label %54

41:                                               ; preds = %32
  %42 = and i32 %35, 2
  %43 = icmp ne i32 %42, 0
  tail call void @tud_cdc_line_state_cb(i8 noundef zeroext 0, i1 noundef zeroext %37, i1 noundef zeroext %43) #30
  br label %54

44:                                               ; preds = %14
  %45 = icmp eq i8 %1, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %44
  %47 = tail call zeroext i1 @tud_control_status(i8 noundef zeroext %0, %struct.tusb_control_request_t* noundef nonnull %2) #30
  br label %54

48:                                               ; preds = %44
  %49 = icmp ne i8 %1, 2
  %50 = or i1 %49, icmp eq (void (i8, i16)* @tud_cdc_send_break_cb, void (i8, i16)* null)
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.tusb_control_request_t, %struct.tusb_control_request_t* %2, i32 0, i32 2
  %53 = load i16, i16* %52, align 1, !tbaa !241
  tail call void @tud_cdc_send_break_cb(i8 noundef zeroext 0, i16 noundef zeroext %53) #30
  br label %54

54:                                               ; preds = %8, %14, %32, %41, %29, %48, %21, %46, %51, %30, %25, %27, %19, %24, %3
  %55 = phi i1 [ false, %3 ], [ false, %14 ], [ true, %32 ], [ true, %41 ], [ true, %29 ], [ true, %48 ], [ true, %21 ], [ true, %46 ], [ true, %51 ], [ true, %30 ], [ true, %25 ], [ true, %27 ], [ true, %19 ], [ true, %24 ], [ false, %8 ]
  ret i1 %55
}

declare extern_weak dso_local void @tud_cdc_line_state_cb(i8 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) #21

declare extern_weak dso_local void @tud_cdc_send_break_cb(i8 noundef zeroext, i16 noundef zeroext) #21

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @cdcd_xfer_cb(i8 noundef zeroext %0, i8 noundef zeroext %1, i32 noundef %2, i32 noundef %3) #3 {
  %5 = load i8, i8* getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 3), align 1
  %6 = icmp eq i8 %5, %1
  %7 = load i8, i8* getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 2), align 2
  %8 = icmp eq i8 %7, %1
  %9 = or i1 %8, %6
  br i1 %9, label %10, label %62

10:                                               ; preds = %4
  br i1 %6, label %11, label %40

11:                                               ; preds = %10
  %12 = trunc i32 %3 to i16
  %13 = tail call zeroext i16 @tu_fifo_write_n(%struct.tu_fifo_t* noundef getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 7), i8* noundef getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 13, i32 0), i16 noundef zeroext %12) #30
  %14 = load i8, i8* getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 5), align 1
  %15 = icmp ne i8 %14, -1
  %16 = select i1 icmp eq (void (i8, i8)* @tud_cdc_rx_wanted_cb, void (i8, i8)* null), i1 false, i1 %15
  %17 = icmp ne i32 %3, 0
  %18 = and i1 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %11, %32
  %20 = phi i8 [ %33, %32 ], [ %14, %11 ]
  %21 = phi i32 [ %30, %32 ], [ 0, %11 ]
  %22 = getelementptr inbounds [1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 13, i32 %21
  %23 = load i8, i8* %22, align 1, !tbaa !8
  %24 = icmp eq i8 %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = tail call zeroext i1 @tu_fifo_empty(%struct.tu_fifo_t* noundef getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 7)) #30
  br i1 %26, label %29, label %27

27:                                               ; preds = %25
  %28 = load i8, i8* getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 5), align 1, !tbaa !326
  tail call void @tud_cdc_rx_wanted_cb(i8 noundef zeroext 0, i8 noundef zeroext %28) #30
  br label %29

29:                                               ; preds = %19, %25, %27
  %30 = add nuw i32 %21, 1
  %31 = icmp eq i32 %30, %3
  br i1 %31, label %34, label %32, !llvm.loop !337

32:                                               ; preds = %29
  %33 = load i8, i8* getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 5), align 1, !tbaa !326
  br label %19

34:                                               ; preds = %29, %11
  br i1 icmp ne (void (i8)* @tud_cdc_rx_cb, void (i8)* null), label %35, label %38

35:                                               ; preds = %34
  %36 = tail call zeroext i1 @tu_fifo_empty(%struct.tu_fifo_t* noundef getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 7)) #30
  br i1 %36, label %38, label %37

37:                                               ; preds = %35
  tail call void @tud_cdc_rx_cb(i8 noundef zeroext 0) #30
  br label %38

38:                                               ; preds = %37, %35, %34
  tail call fastcc void @_prep_out_transaction(%struct.cdcd_interface_t* noundef getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0))
  %39 = load i8, i8* getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 2), align 2, !tbaa !328
  br label %40

40:                                               ; preds = %38, %10
  %41 = phi i8 [ %39, %38 ], [ %7, %10 ]
  %42 = icmp eq i8 %41, %1
  br i1 %42, label %43, label %62

43:                                               ; preds = %40
  br i1 icmp ne (void (i8)* @tud_cdc_tx_complete_cb, void (i8)* null), label %44, label %45

44:                                               ; preds = %43
  tail call void @tud_cdc_tx_complete_cb(i8 noundef zeroext 0) #30
  br label %45

45:                                               ; preds = %44, %43
  %46 = tail call i32 @tud_cdc_n_write_flush(i8 noundef zeroext 0)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %45
  %49 = tail call zeroext i16 @tu_fifo_count(%struct.tu_fifo_t* noundef getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 8)) #30
  %50 = icmp eq i16 %49, 0
  %51 = icmp ne i32 %3, 0
  %52 = and i1 %51, %50
  %53 = and i32 %3, 63
  %54 = icmp eq i32 %53, 0
  %55 = and i1 %54, %52
  br i1 %55, label %56, label %62

56:                                               ; preds = %48
  %57 = load i8, i8* getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 2), align 2, !tbaa !328
  %58 = tail call zeroext i1 @usbd_edpt_claim(i8 noundef zeroext %0, i8 noundef zeroext %57) #30
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i8, i8* getelementptr inbounds ([1 x %struct.cdcd_interface_t], [1 x %struct.cdcd_interface_t]* @_cdcd_itf, i32 0, i32 0, i32 2), align 2, !tbaa !328
  %61 = tail call zeroext i1 @usbd_edpt_xfer(i8 noundef zeroext %0, i8 noundef zeroext %60, i8* noundef null, i16 noundef zeroext 0) #30
  br label %62

62:                                               ; preds = %4, %40, %48, %59, %56, %45
  ret i1 %9
}

declare extern_weak dso_local void @tud_cdc_rx_wanted_cb(i8 noundef zeroext, i8 noundef zeroext) #21

declare extern_weak dso_local void @tud_cdc_rx_cb(i8 noundef zeroext) #21

declare extern_weak dso_local void @tud_cdc_tx_complete_cb(i8 noundef zeroext) #21

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @tusb_init() local_unnamed_addr #3 {
  %1 = tail call zeroext i1 @tud_init(i8 noundef zeroext 0) #30
  ret i1 %1
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @tusb_inited() local_unnamed_addr #3 {
  %1 = tail call zeroext i1 @tud_inited() #30
  ret i1 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define dso_local zeroext i1 @tu_edpt_validate(%struct.tusb_desc_endpoint_t* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.tusb_desc_endpoint_t, %struct.tusb_desc_endpoint_t* %0, i32 0, i32 4, i32 0
  %4 = load i16, i16* %3, align 1
  %5 = and i16 %4, 2047
  %6 = getelementptr inbounds %struct.tusb_desc_endpoint_t, %struct.tusb_desc_endpoint_t* %0, i32 0, i32 3, i32 0
  %7 = load i8, i8* %6, align 1
  %8 = and i8 %7, 3
  %9 = zext i8 %8 to i32
  switch i32 %9, label %27 [
    i32 1, label %10
    i32 2, label %15
    i32 3, label %21
  ]

10:                                               ; preds = %2
  %11 = icmp eq i32 %1, 2
  %12 = zext i16 %5 to i32
  %13 = select i1 %11, i32 1024, i32 1023
  %14 = icmp ult i32 %13, %12
  br i1 %14, label %27, label %26

15:                                               ; preds = %2
  %16 = icmp eq i32 %1, 2
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = icmp eq i16 %5, 512
  br i1 %18, label %26, label %27

19:                                               ; preds = %15
  %20 = icmp ult i16 %5, 65
  br i1 %20, label %26, label %27

21:                                               ; preds = %2
  %22 = icmp eq i32 %1, 2
  %23 = zext i16 %5 to i32
  %24 = select i1 %22, i32 1024, i32 64
  %25 = icmp ult i32 %24, %23
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %17, %19, %10
  br label %27

27:                                               ; preds = %2, %19, %17, %10, %21, %26
  %28 = phi i1 [ true, %26 ], [ false, %21 ], [ false, %10 ], [ false, %17 ], [ false, %19 ], [ false, %2 ]
  ret i1 %28
}

; Function Attrs: nofree noinline norecurse nosync nounwind
define dso_local void @tu_edpt_bind_driver([2 x i8]* nocapture noundef writeonly %0, %struct.tusb_desc_interface_t* noundef readonly %1, i16 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #17 {
  %5 = zext i16 %2 to i32
  %6 = icmp eq i16 %2, 0
  br i1 %6, label %31, label %7

7:                                                ; preds = %4
  %8 = getelementptr %struct.tusb_desc_interface_t, %struct.tusb_desc_interface_t* %1, i32 0, i32 0
  br label %9

9:                                                ; preds = %7, %23
  %10 = phi i32 [ %29, %23 ], [ 0, %7 ]
  %11 = phi i8* [ %28, %23 ], [ %8, %7 ]
  %12 = getelementptr i8, i8* %11, i32 1
  %13 = load i8, i8* %12, align 1, !tbaa !8
  %14 = tail call fastcc zeroext i8 @tu_desc_type.191(i8 %13)
  %15 = icmp eq i8 %14, 5
  br i1 %15, label %16, label %23

16:                                               ; preds = %9
  %17 = getelementptr inbounds i8, i8* %11, i32 2
  %18 = load i8, i8* %17, align 1, !tbaa !269
  %19 = tail call fastcc zeroext i8 @tu_edpt_number.192(i8 noundef zeroext %18)
  %20 = zext i8 %19 to i32
  %21 = tail call fastcc i32 @tu_edpt_dir.193(i8 noundef zeroext %18)
  %22 = getelementptr inbounds [2 x i8], [2 x i8]* %0, i32 %20, i32 %21
  store i8 %3, i8* %22, align 1, !tbaa !8
  br label %23

23:                                               ; preds = %16, %9
  %24 = load i8, i8* %11, align 1, !tbaa !8
  %25 = tail call fastcc zeroext i8 @tu_desc_len.194(i8 %24)
  %26 = zext i8 %25 to i32
  %27 = add nuw nsw i32 %10, %26
  %28 = tail call fastcc i8* @tu_desc_next.195(i8* noundef nonnull %11)
  %29 = and i32 %27, 65535
  %30 = icmp ult i32 %29, %5
  br i1 %30, label %9, label %31, !llvm.loop !338

31:                                               ; preds = %23, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define internal fastcc zeroext i8 @tu_desc_type.191(i8 %0) unnamed_addr #10 {
  ret i8 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn
define internal fastcc zeroext i8 @tu_edpt_number.192(i8 noundef zeroext %0) unnamed_addr #12 {
  %2 = and i8 %0, 127
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn
define internal fastcc i32 @tu_edpt_dir.193(i8 noundef zeroext %0) unnamed_addr #12 {
  %2 = lshr i8 %0, 7
  %3 = zext i8 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define internal fastcc zeroext i8 @tu_desc_len.194(i8 %0) unnamed_addr #10 {
  ret i8 %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define internal fastcc i8* @tu_desc_next.195(i8* noundef readonly %0) unnamed_addr #10 {
  %2 = load i8, i8* %0, align 1, !tbaa !8
  %3 = zext i8 %2 to i32
  %4 = getelementptr inbounds i8, i8* %0, i32 %3
  ret i8* %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly
define dso_local zeroext i16 @tu_desc_get_interface_total_len(%struct.tusb_desc_interface_t* noundef readonly %0, i8 noundef zeroext %1, i16 noundef zeroext %2) local_unnamed_addr #23 {
  %4 = getelementptr %struct.tusb_desc_interface_t, %struct.tusb_desc_interface_t* %0, i32 0, i32 0
  %5 = icmp eq i8 %1, 0
  br i1 %5, label %39, label %6

6:                                                ; preds = %3
  %7 = load i8, i8* %4, align 1, !tbaa !8
  %8 = tail call fastcc zeroext i8 @tu_desc_len.194(i8 %7)
  %9 = zext i8 %8 to i16
  br label %10

10:                                               ; preds = %6, %35
  %11 = phi i8 [ %1, %6 ], [ %14, %35 ]
  %12 = phi i16 [ 0, %6 ], [ %37, %35 ]
  %13 = phi i8* [ %4, %6 ], [ %36, %35 ]
  %14 = add i8 %11, -1
  %15 = add i16 %12, %9
  %16 = tail call fastcc i8* @tu_desc_next.195(i8* noundef %13)
  %17 = icmp ult i16 %15, %2
  br i1 %17, label %18, label %35

18:                                               ; preds = %10, %28
  %19 = phi i16 [ %32, %28 ], [ %15, %10 ]
  %20 = phi i8* [ %33, %28 ], [ %16, %10 ]
  %21 = getelementptr i8, i8* %20, i32 1
  %22 = load i8, i8* %21, align 1, !tbaa !8
  %23 = tail call fastcc zeroext i8 @tu_desc_type.191(i8 %22)
  switch i8 %23, label %28 [
    i8 11, label %39
    i8 4, label %24
  ]

24:                                               ; preds = %18
  %25 = getelementptr inbounds i8, i8* %20, i32 3
  %26 = load i8, i8* %25, align 1, !tbaa !339
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %18, %24
  %29 = load i8, i8* %20, align 1, !tbaa !8
  %30 = tail call fastcc zeroext i8 @tu_desc_len.194(i8 %29)
  %31 = zext i8 %30 to i16
  %32 = add i16 %19, %31
  %33 = tail call fastcc i8* @tu_desc_next.195(i8* noundef nonnull %20)
  %34 = icmp ult i16 %32, %2
  br i1 %34, label %18, label %35, !llvm.loop !340

35:                                               ; preds = %28, %24, %10
  %36 = phi i8* [ %16, %10 ], [ %20, %24 ], [ %33, %28 ]
  %37 = phi i16 [ %15, %10 ], [ %19, %24 ], [ %32, %28 ]
  %38 = icmp eq i8 %14, 0
  br i1 %38, label %39, label %10, !llvm.loop !341

39:                                               ; preds = %35, %18, %3
  %40 = phi i16 [ 0, %3 ], [ %19, %18 ], [ %37, %35 ]
  ret i16 %40
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @tu_fifo_config(%struct.tu_fifo_t* noundef %0, i8* noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #3 {
  %6 = icmp ugt i16 %2, -32768
  br i1 %6, label %26, label %7

7:                                                ; preds = %5
  %8 = zext i1 %4 to i8
  %9 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 8
  %10 = load %struct.mutex*, %struct.mutex** %9, align 4, !tbaa !332
  tail call fastcc void @_ff_lock(%struct.mutex* noundef %10)
  %11 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 9
  %12 = load %struct.mutex*, %struct.mutex** %11, align 4, !tbaa !333
  tail call fastcc void @_ff_lock(%struct.mutex* noundef %12)
  %13 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 0
  store i8* %1, i8** %13, align 4, !tbaa !342
  %14 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 1
  store i16 %2, i16* %14, align 4, !tbaa !343
  %15 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 2
  store i16 %3, i16* %15, align 2, !tbaa !344
  %16 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 3
  store i8 %8, i8* %16, align 4, !tbaa !345
  %17 = shl i16 %2, 1
  %18 = add i16 %17, -1
  %19 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 5
  store i16 %18, i16* %19, align 4, !tbaa !346
  %20 = sub i16 0, %17
  %21 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 4
  store i16 %20, i16* %21, align 2, !tbaa !347
  %22 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 6
  store volatile i16 0, i16* %22, align 2, !tbaa !348
  %23 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 7
  store volatile i16 0, i16* %23, align 4, !tbaa !349
  %24 = load %struct.mutex*, %struct.mutex** %9, align 4, !tbaa !332
  tail call fastcc void @_ff_unlock(%struct.mutex* noundef %24)
  %25 = load %struct.mutex*, %struct.mutex** %11, align 4, !tbaa !333
  tail call fastcc void @_ff_unlock(%struct.mutex* noundef %25)
  br label %26

26:                                               ; preds = %5, %7
  %27 = xor i1 %6, true
  ret i1 %27
}

; Function Attrs: noinline nounwind
define internal fastcc void @_ff_lock(%struct.mutex* noundef %0) unnamed_addr #3 {
  %2 = icmp eq %struct.mutex* %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call fastcc void @osal_mutex_lock.199(%struct.mutex* noundef nonnull %0)
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc void @_ff_unlock(%struct.mutex* noundef %0) unnamed_addr #3 {
  %2 = icmp eq %struct.mutex* %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call fastcc void @osal_mutex_unlock.198(%struct.mutex* noundef nonnull %0)
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc void @osal_mutex_unlock.198(%struct.mutex* noundef %0) unnamed_addr #3 {
  tail call void @mutex_exit(%struct.mutex* noundef %0) #30
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc void @osal_mutex_lock.199(%struct.mutex* noundef %0) unnamed_addr #3 {
  %2 = tail call zeroext i1 @mutex_enter_timeout_ms(%struct.mutex* noundef %0, i32 noundef -1) #30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local zeroext i16 @tu_fifo_count(%struct.tu_fifo_t* noundef %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 6
  %3 = load volatile i16, i16* %2, align 2, !tbaa !348
  %4 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 7
  %5 = load volatile i16, i16* %4, align 4, !tbaa !349
  %6 = tail call fastcc zeroext i16 @_tu_fifo_count(%struct.tu_fifo_t* noundef %0, i16 noundef zeroext %3, i16 noundef zeroext %5)
  %7 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 1
  %8 = load i16, i16* %7, align 4, !tbaa !343
  %9 = icmp ult i16 %6, %8
  %10 = select i1 %9, i16 %6, i16 %8
  ret i16 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define internal fastcc zeroext i16 @_tu_fifo_count(%struct.tu_fifo_t* nocapture noundef readonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #10 {
  %4 = sub i16 %1, %2
  %5 = icmp ult i16 %1, %2
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 4
  %8 = load i16, i16* %7, align 2, !tbaa !347
  %9 = sub i16 %4, %8
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi i16 [ %9, %6 ], [ %4, %3 ]
  ret i16 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local zeroext i1 @tu_fifo_empty(%struct.tu_fifo_t* noundef %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 6
  %3 = load volatile i16, i16* %2, align 2, !tbaa !348
  %4 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 7
  %5 = load volatile i16, i16* %4, align 4, !tbaa !349
  %6 = tail call fastcc zeroext i1 @_tu_fifo_empty(i16 noundef zeroext %3, i16 noundef zeroext %5)
  ret i1 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn
define internal fastcc zeroext i1 @_tu_fifo_empty(i16 noundef zeroext %0, i16 noundef zeroext %1) unnamed_addr #12 {
  %3 = icmp eq i16 %0, %1
  ret i1 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local zeroext i1 @tu_fifo_full(%struct.tu_fifo_t* noundef %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 6
  %3 = load volatile i16, i16* %2, align 2, !tbaa !348
  %4 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 7
  %5 = load volatile i16, i16* %4, align 4, !tbaa !349
  %6 = tail call fastcc zeroext i1 @_tu_fifo_full(%struct.tu_fifo_t* noundef %0, i16 noundef zeroext %3, i16 noundef zeroext %5)
  ret i1 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define internal fastcc zeroext i1 @_tu_fifo_full(%struct.tu_fifo_t* nocapture noundef readonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #10 {
  %4 = tail call fastcc zeroext i16 @_tu_fifo_count(%struct.tu_fifo_t* noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2)
  %5 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 1
  %6 = load i16, i16* %5, align 4, !tbaa !343
  %7 = icmp eq i16 %4, %6
  ret i1 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local zeroext i16 @tu_fifo_remaining(%struct.tu_fifo_t* noundef %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 6
  %3 = load volatile i16, i16* %2, align 2, !tbaa !348
  %4 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 7
  %5 = load volatile i16, i16* %4, align 4, !tbaa !349
  %6 = tail call fastcc zeroext i16 @_tu_fifo_remaining(%struct.tu_fifo_t* noundef %0, i16 noundef zeroext %3, i16 noundef zeroext %5)
  ret i16 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define internal fastcc zeroext i16 @_tu_fifo_remaining(%struct.tu_fifo_t* nocapture noundef readonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #10 {
  %4 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 1
  %5 = load i16, i16* %4, align 4, !tbaa !343
  %6 = tail call fastcc zeroext i16 @_tu_fifo_count(%struct.tu_fifo_t* noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2)
  %7 = sub i16 %5, %6
  ret i16 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local zeroext i1 @tu_fifo_overflowed(%struct.tu_fifo_t* noundef %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 6
  %3 = load volatile i16, i16* %2, align 2, !tbaa !348
  %4 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 7
  %5 = load volatile i16, i16* %4, align 4, !tbaa !349
  %6 = tail call fastcc zeroext i1 @_tu_fifo_overflowed(%struct.tu_fifo_t* noundef %0, i16 noundef zeroext %3, i16 noundef zeroext %5)
  ret i1 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define internal fastcc zeroext i1 @_tu_fifo_overflowed(%struct.tu_fifo_t* nocapture noundef readonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #10 {
  %4 = tail call fastcc zeroext i16 @_tu_fifo_count(%struct.tu_fifo_t* noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2)
  %5 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 1
  %6 = load i16, i16* %5, align 4, !tbaa !343
  %7 = icmp ugt i16 %4, %6
  ret i1 %7
}

; Function Attrs: noinline nounwind
define dso_local void @tu_fifo_correct_read_pointer(%struct.tu_fifo_t* noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 9
  %3 = load %struct.mutex*, %struct.mutex** %2, align 4, !tbaa !333
  tail call fastcc void @_ff_lock(%struct.mutex* noundef %3)
  %4 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 6
  %5 = load volatile i16, i16* %4, align 2, !tbaa !348
  tail call fastcc void @_tu_fifo_correct_read_pointer(%struct.tu_fifo_t* noundef %0, i16 noundef zeroext %5)
  %6 = load %struct.mutex*, %struct.mutex** %2, align 4, !tbaa !333
  tail call fastcc void @_ff_unlock(%struct.mutex* noundef %6)
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define internal fastcc void @_tu_fifo_correct_read_pointer(%struct.tu_fifo_t* noundef %0, i16 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 1
  %4 = load i16, i16* %3, align 4, !tbaa !343
  %5 = tail call fastcc zeroext i16 @backward_pointer(%struct.tu_fifo_t* noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %4)
  %6 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 7
  store volatile i16 %5, i16* %6, align 4, !tbaa !349
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define internal fastcc zeroext i16 @backward_pointer(%struct.tu_fifo_t* nocapture noundef readonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #10 {
  %4 = zext i16 %1 to i32
  %5 = zext i16 %2 to i32
  %6 = sub nsw i32 %4, %5
  %7 = and i32 %6, 65535
  %8 = icmp ugt i32 %7, %4
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 5
  %11 = load i16, i16* %10, align 4, !tbaa !346
  %12 = zext i16 %11 to i32
  %13 = icmp ugt i32 %7, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %9, %3
  %15 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 4
  %16 = load i16, i16* %15, align 2, !tbaa !347
  %17 = zext i16 %16 to i32
  %18 = sub nsw i32 %6, %17
  br label %19

19:                                               ; preds = %9, %14
  %20 = phi i32 [ %18, %14 ], [ %6, %9 ]
  %21 = trunc i32 %20 to i16
  ret i16 %21
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @tu_fifo_read(%struct.tu_fifo_t* noundef %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 9
  %4 = load %struct.mutex*, %struct.mutex** %3, align 4, !tbaa !333
  tail call fastcc void @_ff_lock(%struct.mutex* noundef %4)
  %5 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 6
  %6 = load volatile i16, i16* %5, align 2, !tbaa !348
  %7 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 7
  %8 = load volatile i16, i16* %7, align 4, !tbaa !349
  %9 = tail call fastcc zeroext i1 @_tu_fifo_peek(%struct.tu_fifo_t* noundef %0, i8* noundef %1, i16 noundef zeroext %6, i16 noundef zeroext %8)
  %10 = load volatile i16, i16* %7, align 4, !tbaa !349
  %11 = zext i1 %9 to i16
  %12 = tail call fastcc zeroext i16 @advance_pointer(%struct.tu_fifo_t* noundef %0, i16 noundef zeroext %10, i16 noundef zeroext %11)
  store volatile i16 %12, i16* %7, align 4, !tbaa !349
  %13 = load %struct.mutex*, %struct.mutex** %3, align 4, !tbaa !333
  tail call fastcc void @_ff_unlock(%struct.mutex* noundef %13)
  ret i1 %9
}

; Function Attrs: nofree noinline nounwind
define internal fastcc zeroext i1 @_tu_fifo_peek(%struct.tu_fifo_t* noundef %0, i8* nocapture noundef writeonly %1, i16 noundef zeroext %2, i16 noundef zeroext %3) unnamed_addr #8 {
  %5 = tail call fastcc zeroext i16 @_tu_fifo_count(%struct.tu_fifo_t* noundef %0, i16 noundef zeroext %2, i16 noundef zeroext %3)
  %6 = getelementptr %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 1
  %7 = load i16, i16* %6, align 4, !tbaa !343
  %8 = icmp ugt i16 %5, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  tail call fastcc void @_tu_fifo_correct_read_pointer(%struct.tu_fifo_t* noundef nonnull %0, i16 noundef zeroext %2)
  %10 = load i16, i16* %6, align 4, !tbaa !343
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi i16 [ %10, %9 ], [ %7, %4 ]
  %13 = phi i16 [ %10, %9 ], [ %5, %4 ]
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = tail call fastcc zeroext i16 @get_relative_pointer(i16 %12, i16 noundef zeroext %3)
  %17 = getelementptr %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 0
  %18 = load i8*, i8** %17, align 4, !tbaa !342
  %19 = getelementptr %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 2
  %20 = load i16, i16* %19, align 2, !tbaa !344
  tail call fastcc void @_ff_pull(i8* %18, i16 %20, i8* noundef %1, i16 noundef zeroext %16)
  br label %21

21:                                               ; preds = %11, %15
  %22 = xor i1 %14, true
  ret i1 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define internal fastcc zeroext i16 @advance_pointer(%struct.tu_fifo_t* nocapture noundef readonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #10 {
  %4 = zext i16 %1 to i32
  %5 = zext i16 %2 to i32
  %6 = add nuw nsw i32 %5, %4
  %7 = and i32 %6, 65535
  %8 = icmp ult i32 %7, %4
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 5
  %11 = load i16, i16* %10, align 4, !tbaa !346
  %12 = zext i16 %11 to i32
  %13 = icmp ugt i32 %7, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %9, %3
  %15 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 4
  %16 = load i16, i16* %15, align 2, !tbaa !347
  %17 = zext i16 %16 to i32
  %18 = add nuw nsw i32 %6, %17
  br label %19

19:                                               ; preds = %9, %14
  %20 = phi i32 [ %18, %14 ], [ %6, %9 ]
  %21 = trunc i32 %20 to i16
  ret i16 %21
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly
define internal fastcc zeroext i16 @get_relative_pointer(i16 %0, i16 noundef zeroext %1) unnamed_addr #23 {
  %3 = tail call fastcc zeroext i16 @_ff_mod(i16 noundef zeroext %1, i16 noundef zeroext %0)
  ret i16 %3
}

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn
define internal fastcc void @_ff_pull(i8* %0, i16 %1, i8* nocapture noundef writeonly %2, i16 noundef zeroext %3) unnamed_addr #26 {
  %5 = zext i16 %3 to i32
  %6 = zext i16 %1 to i32
  %7 = mul nuw nsw i32 %5, %6
  %8 = getelementptr inbounds i8, i8* %0, i32 %7
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %2, i8* align 1 %8, i32 %6, i1 false)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone
define internal fastcc zeroext i16 @_ff_mod(i16 noundef zeroext %0, i16 noundef zeroext %1) unnamed_addr #28 {
  br label %3

3:                                                ; preds = %13, %2
  %4 = phi i16 [ %0, %2 ], [ %15, %13 ]
  %5 = icmp ult i16 %4, %1
  %6 = sub i16 %4, %1
  br i1 %5, label %16, label %7, !llvm.loop !350

7:                                                ; preds = %3
  %8 = icmp ult i16 %6, %1
  %9 = sub i16 %6, %1
  br i1 %8, label %16, label %10, !llvm.loop !350

10:                                               ; preds = %7
  %11 = icmp ult i16 %9, %1
  %12 = sub i16 %9, %1
  br i1 %11, label %16, label %13, !llvm.loop !350

13:                                               ; preds = %10
  %14 = icmp ult i16 %12, %1
  %15 = sub i16 %12, %1
  br i1 %14, label %16, label %3, !llvm.loop !350

16:                                               ; preds = %13, %10, %7, %3
  %17 = phi i16 [ %4, %3 ], [ %6, %7 ], [ %9, %10 ], [ %12, %13 ]
  ret i16 %17
}

; Function Attrs: noinline nounwind
define dso_local zeroext i16 @tu_fifo_read_n(%struct.tu_fifo_t* noundef %0, i8* noundef %1, i16 noundef zeroext %2) local_unnamed_addr #3 {
  %4 = tail call fastcc zeroext i16 @_tu_fifo_read_n(%struct.tu_fifo_t* noundef %0, i8* noundef %1, i16 noundef zeroext %2, i32 noundef 0)
  ret i16 %4
}

; Function Attrs: noinline nounwind
define internal fastcc zeroext i16 @_tu_fifo_read_n(%struct.tu_fifo_t* noundef %0, i8* noundef %1, i16 noundef zeroext %2, i32 noundef %3) unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 9
  %6 = load %struct.mutex*, %struct.mutex** %5, align 4, !tbaa !333
  tail call fastcc void @_ff_lock(%struct.mutex* noundef %6)
  %7 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 6
  %8 = load volatile i16, i16* %7, align 2, !tbaa !348
  %9 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 7
  %10 = load volatile i16, i16* %9, align 4, !tbaa !349
  %11 = tail call fastcc zeroext i16 @_tu_fifo_peek_n(%struct.tu_fifo_t* noundef %0, i8* noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %8, i16 noundef zeroext %10, i32 noundef %3)
  %12 = load volatile i16, i16* %9, align 4, !tbaa !349
  %13 = tail call fastcc zeroext i16 @advance_pointer(%struct.tu_fifo_t* noundef %0, i16 noundef zeroext %12, i16 noundef zeroext %11)
  store volatile i16 %13, i16* %9, align 4, !tbaa !349
  %14 = load %struct.mutex*, %struct.mutex** %5, align 4, !tbaa !333
  tail call fastcc void @_ff_unlock(%struct.mutex* noundef %14)
  ret i16 %11
}

; Function Attrs: nofree noinline nounwind
define internal fastcc zeroext i16 @_tu_fifo_peek_n(%struct.tu_fifo_t* noundef %0, i8* noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, i32 noundef %5) unnamed_addr #8 {
  %7 = tail call fastcc zeroext i16 @_tu_fifo_count(%struct.tu_fifo_t* noundef %0, i16 noundef zeroext %3, i16 noundef zeroext %4)
  %8 = getelementptr %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 1
  %9 = load i16, i16* %8, align 4, !tbaa !343
  %10 = icmp ugt i16 %7, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  tail call fastcc void @_tu_fifo_correct_read_pointer(%struct.tu_fifo_t* noundef nonnull %0, i16 noundef zeroext %3)
  %12 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 7
  %13 = load volatile i16, i16* %12, align 4, !tbaa !349
  %14 = load i16, i16* %8, align 4, !tbaa !343
  br label %15

15:                                               ; preds = %11, %6
  %16 = phi i16 [ %14, %11 ], [ %9, %6 ]
  %17 = phi i16 [ %13, %11 ], [ %4, %6 ]
  %18 = phi i16 [ %14, %11 ], [ %7, %6 ]
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = icmp ult i16 %18, %2
  %22 = select i1 %21, i16 %18, i16 %2
  %23 = tail call fastcc zeroext i16 @get_relative_pointer(i16 %16, i16 noundef zeroext %17)
  tail call fastcc void @_ff_pull_n(%struct.tu_fifo_t* noundef nonnull %0, i8* noundef %1, i16 noundef zeroext %22, i16 noundef zeroext %23, i32 noundef %5)
  br label %24

24:                                               ; preds = %15, %20
  %25 = phi i16 [ %22, %20 ], [ 0, %15 ]
  ret i16 %25
}

; Function Attrs: nofree noinline nounwind
define internal fastcc void @_ff_pull_n(%struct.tu_fifo_t* nocapture noundef readonly %0, i8* noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i32 noundef %4) unnamed_addr #8 {
  %6 = alloca i32, align 4
  %7 = bitcast i32* %6 to i8*
  %8 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 1
  %9 = load i16, i16* %8, align 4, !tbaa !343
  %10 = zext i16 %3 to i32
  %11 = sub i16 %9, %3
  %12 = zext i16 %2 to i32
  %13 = sub i16 %2, %11
  %14 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 2
  %15 = load i16, i16* %14, align 2, !tbaa !344
  %16 = zext i16 %15 to i32
  %17 = mul i16 %11, %15
  %18 = mul i16 %13, %15
  %19 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 0
  %20 = load i8*, i8** %19, align 4, !tbaa !342
  %21 = mul nuw nsw i32 %16, %10
  %22 = getelementptr inbounds i8, i8* %20, i32 %21
  switch i32 %4, label %79 [
    i32 0, label %23
    i32 1, label %32
  ]

23:                                               ; preds = %5
  %24 = icmp ult i16 %11, %2
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %26 = mul nuw nsw i32 %16, %12
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %1, i8* align 1 %22, i32 %26, i1 false)
  br label %79

27:                                               ; preds = %23
  %28 = zext i16 %17 to i32
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %1, i8* align 1 %22, i32 %28, i1 false)
  %29 = getelementptr inbounds i8, i8* %1, i32 %28
  %30 = load i8*, i8** %19, align 4, !tbaa !342
  %31 = zext i16 %18 to i32
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %29, i8* align 1 %30, i32 %31, i1 false)
  br label %79

32:                                               ; preds = %5
  %33 = icmp ult i16 %11, %2
  br i1 %33, label %36, label %34

34:                                               ; preds = %32
  %35 = mul i16 %15, %2
  tail call fastcc void @_ff_pull_const_addr(i8* noundef %1, i8* noundef %22, i16 noundef zeroext %35)
  br label %79

36:                                               ; preds = %32
  %37 = and i16 %17, -4
  tail call fastcc void @_ff_pull_const_addr(i8* noundef %1, i8* noundef %22, i16 noundef zeroext %37)
  %38 = bitcast i8* %1 to i32*
  %39 = trunc i16 %17 to i8
  %40 = and i8 %39, 3
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %72, label %42

42:                                               ; preds = %36
  %43 = zext i16 %37 to i32
  %44 = getelementptr i8, i8* %22, i32 %43
  %45 = sub nuw nsw i8 4, %40
  %46 = zext i8 %45 to i16
  %47 = icmp ult i16 %18, %46
  %48 = select i1 %47, i16 %18, i16 %46
  %49 = trunc i16 %48 to i8
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #30
  store i32 0, i32* %6, align 4, !tbaa !18
  %50 = zext i16 %9 to i32
  %51 = zext i16 %3 to i32
  %52 = sub nsw i32 %50, %51
  %53 = zext i16 %15 to i32
  %54 = mul i32 %52, %53
  %55 = and i32 %54, 3
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 %7, i8* align 1 %44, i32 %55, i1 false), !tbaa !8
  %56 = sub i16 %18, %48
  %57 = load i8*, i8** %19, align 4, !tbaa !342
  %58 = icmp eq i8 %49, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %42
  %60 = add nsw i8 %40, -1
  %61 = zext i8 %60 to i32
  %62 = add nuw nsw i32 %61, 1
  %63 = getelementptr i8, i8* %7, i32 %62
  %64 = zext i16 %48 to i32
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %63, i8* align 1 %57, i32 %64, i1 false), !tbaa !8
  %65 = add nsw i8 %49, -1
  %66 = zext i8 %65 to i32
  %67 = add nuw nsw i32 %66, 1
  %68 = getelementptr i8, i8* %57, i32 %67
  br label %69

69:                                               ; preds = %59, %42
  %70 = phi i8* [ %57, %42 ], [ %68, %59 ]
  %71 = load i32, i32* %6, align 4, !tbaa !18
  store volatile i32 %71, i32* %38, align 4, !tbaa !18
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #30
  br label %74

72:                                               ; preds = %36
  %73 = load i8*, i8** %19, align 4, !tbaa !342
  br label %74

74:                                               ; preds = %72, %69
  %75 = phi i8* [ %70, %69 ], [ %73, %72 ]
  %76 = phi i16 [ %56, %69 ], [ %18, %72 ]
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  tail call fastcc void @_ff_pull_const_addr(i8* noundef %1, i8* noundef %75, i16 noundef zeroext %76)
  br label %79

79:                                               ; preds = %74, %78, %5, %34, %25, %27
  ret void
}

; Function Attrs: nofree noinline nounwind
define internal fastcc void @_ff_pull_const_addr(i8* noundef %0, i8* nocapture noundef readonly %1, i16 noundef zeroext %2) unnamed_addr #8 {
  %4 = alloca i32, align 4
  %5 = bitcast i8* %0 to i32*
  %6 = icmp ult i16 %2, 4
  br i1 %6, label %51, label %7

7:                                                ; preds = %3
  %8 = lshr i16 %2, 2
  %9 = add nsw i16 %8, -1
  %10 = and i16 %8, 3
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %7
  %13 = add nsw i16 %8, -1
  %14 = bitcast i8* %1 to i32*
  %15 = load i32, i32* %14, align 1, !tbaa !351
  store volatile i32 %15, i32* %5, align 4, !tbaa !18
  %16 = getelementptr inbounds i8, i8* %1, i32 4
  %17 = icmp eq i16 %10, 1
  br i1 %17, label %29, label %18

18:                                               ; preds = %12
  %19 = add nsw i16 %8, -2
  %20 = bitcast i8* %16 to i32*
  %21 = load i32, i32* %20, align 1, !tbaa !351
  store volatile i32 %21, i32* %5, align 4, !tbaa !18
  %22 = getelementptr inbounds i8, i8* %1, i32 8
  %23 = icmp eq i16 %10, 2
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = add nsw i16 %8, -3
  %26 = bitcast i8* %22 to i32*
  %27 = load i32, i32* %26, align 1, !tbaa !351
  store volatile i32 %27, i32* %5, align 4, !tbaa !18
  %28 = getelementptr inbounds i8, i8* %1, i32 12
  br label %29

29:                                               ; preds = %12, %18, %24, %7
  %30 = phi i8* [ undef, %7 ], [ %16, %12 ], [ %22, %18 ], [ %28, %24 ]
  %31 = phi i8* [ %1, %7 ], [ %16, %12 ], [ %22, %18 ], [ %28, %24 ]
  %32 = phi i16 [ %8, %7 ], [ %13, %12 ], [ %19, %18 ], [ %25, %24 ]
  %33 = icmp ult i16 %9, 3
  br i1 %33, label %51, label %34

34:                                               ; preds = %29, %34
  %35 = phi i8* [ %49, %34 ], [ %31, %29 ]
  %36 = phi i16 [ %46, %34 ], [ %32, %29 ]
  %37 = bitcast i8* %35 to i32*
  %38 = load i32, i32* %37, align 1, !tbaa !351
  store volatile i32 %38, i32* %5, align 4, !tbaa !18
  %39 = getelementptr inbounds i8, i8* %35, i32 4
  %40 = bitcast i8* %39 to i32*
  %41 = load i32, i32* %40, align 1, !tbaa !351
  store volatile i32 %41, i32* %5, align 4, !tbaa !18
  %42 = getelementptr inbounds i8, i8* %35, i32 8
  %43 = bitcast i8* %42 to i32*
  %44 = load i32, i32* %43, align 1, !tbaa !351
  store volatile i32 %44, i32* %5, align 4, !tbaa !18
  %45 = getelementptr inbounds i8, i8* %35, i32 12
  %46 = add nsw i16 %36, -4
  %47 = bitcast i8* %45 to i32*
  %48 = load i32, i32* %47, align 1, !tbaa !351
  store volatile i32 %48, i32* %5, align 4, !tbaa !18
  %49 = getelementptr inbounds i8, i8* %35, i32 16
  %50 = icmp eq i16 %46, 0
  br i1 %50, label %51, label %34, !llvm.loop !353

51:                                               ; preds = %29, %34, %3
  %52 = phi i8* [ %1, %3 ], [ %30, %29 ], [ %49, %34 ]
  %53 = trunc i16 %2 to i8
  %54 = and i8 %53, 3
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %57)
  store i32 0, i32* %4, align 4, !tbaa !18
  %58 = zext i8 %54 to i32
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 %57, i8* align 1 %52, i32 %58, i1 false)
  %59 = load i32, i32* %4, align 4, !tbaa !18
  store volatile i32 %59, i32* %5, align 4, !tbaa !18
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %57)
  br label %60

60:                                               ; preds = %56, %51
  ret void
}

; Function Attrs: noinline nounwind
define dso_local zeroext i16 @tu_fifo_read_n_const_addr_full_words(%struct.tu_fifo_t* noundef %0, i8* noundef %1, i16 noundef zeroext %2) local_unnamed_addr #3 {
  %4 = tail call fastcc zeroext i16 @_tu_fifo_read_n(%struct.tu_fifo_t* noundef %0, i8* noundef %1, i16 noundef zeroext %2, i32 noundef 1)
  ret i16 %4
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @tu_fifo_peek(%struct.tu_fifo_t* noundef %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 9
  %4 = load %struct.mutex*, %struct.mutex** %3, align 4, !tbaa !333
  tail call fastcc void @_ff_lock(%struct.mutex* noundef %4)
  %5 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 6
  %6 = load volatile i16, i16* %5, align 2, !tbaa !348
  %7 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 7
  %8 = load volatile i16, i16* %7, align 4, !tbaa !349
  %9 = tail call fastcc zeroext i1 @_tu_fifo_peek(%struct.tu_fifo_t* noundef %0, i8* noundef %1, i16 noundef zeroext %6, i16 noundef zeroext %8)
  %10 = load %struct.mutex*, %struct.mutex** %3, align 4, !tbaa !333
  tail call fastcc void @_ff_unlock(%struct.mutex* noundef %10)
  ret i1 %9
}

; Function Attrs: noinline nounwind
define dso_local zeroext i16 @tu_fifo_peek_n(%struct.tu_fifo_t* noundef %0, i8* noundef %1, i16 noundef zeroext %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 9
  %5 = load %struct.mutex*, %struct.mutex** %4, align 4, !tbaa !333
  tail call fastcc void @_ff_lock(%struct.mutex* noundef %5)
  %6 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 6
  %7 = load volatile i16, i16* %6, align 2, !tbaa !348
  %8 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 7
  %9 = load volatile i16, i16* %8, align 4, !tbaa !349
  %10 = tail call fastcc zeroext i16 @_tu_fifo_peek_n(%struct.tu_fifo_t* noundef %0, i8* noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %7, i16 noundef zeroext %9, i32 noundef 0)
  %11 = icmp ne i16 %10, 0
  %12 = load %struct.mutex*, %struct.mutex** %4, align 4, !tbaa !333
  tail call fastcc void @_ff_unlock(%struct.mutex* noundef %12)
  %13 = zext i1 %11 to i16
  ret i16 %13
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @tu_fifo_write(%struct.tu_fifo_t* noundef %0, i8* nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 8
  %4 = load %struct.mutex*, %struct.mutex** %3, align 4, !tbaa !332
  tail call fastcc void @_ff_lock(%struct.mutex* noundef %4)
  %5 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 6
  %6 = load volatile i16, i16* %5, align 2, !tbaa !348
  %7 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 7
  %8 = load volatile i16, i16* %7, align 4, !tbaa !349
  %9 = tail call fastcc zeroext i1 @_tu_fifo_full(%struct.tu_fifo_t* noundef %0, i16 noundef zeroext %6, i16 noundef zeroext %8)
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 3
  %12 = load i8, i8* %11, align 4, !tbaa !345, !range !68
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %10, %2
  %15 = getelementptr %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 1
  %16 = load i16, i16* %15, align 4, !tbaa !343
  %17 = tail call fastcc zeroext i16 @get_relative_pointer(i16 %16, i16 noundef zeroext %6)
  %18 = getelementptr %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 0
  %19 = load i8*, i8** %18, align 4, !tbaa !342
  %20 = getelementptr %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 2
  %21 = load i16, i16* %20, align 2, !tbaa !344
  tail call fastcc void @_ff_push(i8* %19, i16 %21, i8* noundef %1, i16 noundef zeroext %17)
  %22 = tail call fastcc zeroext i16 @advance_pointer(%struct.tu_fifo_t* noundef nonnull %0, i16 noundef zeroext %6, i16 noundef zeroext 1)
  store volatile i16 %22, i16* %5, align 2, !tbaa !348
  %23 = load %struct.mutex*, %struct.mutex** %3, align 4, !tbaa !332
  tail call fastcc void @_ff_unlock(%struct.mutex* noundef %23)
  br label %24

24:                                               ; preds = %10, %14
  %25 = phi i1 [ true, %14 ], [ false, %10 ]
  ret i1 %25
}

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn
define internal fastcc void @_ff_push(i8* %0, i16 %1, i8* nocapture noundef readonly %2, i16 noundef zeroext %3) unnamed_addr #26 {
  %5 = zext i16 %3 to i32
  %6 = zext i16 %1 to i32
  %7 = mul nuw nsw i32 %5, %6
  %8 = getelementptr inbounds i8, i8* %0, i32 %7
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %8, i8* align 1 %2, i32 %6, i1 false)
  ret void
}

; Function Attrs: noinline nounwind
define dso_local zeroext i16 @tu_fifo_write_n(%struct.tu_fifo_t* noundef %0, i8* noundef %1, i16 noundef zeroext %2) local_unnamed_addr #3 {
  %4 = tail call fastcc zeroext i16 @_tu_fifo_write_n(%struct.tu_fifo_t* noundef %0, i8* noundef %1, i16 noundef zeroext %2, i32 noundef 0)
  ret i16 %4
}

; Function Attrs: noinline nounwind
define internal fastcc zeroext i16 @_tu_fifo_write_n(%struct.tu_fifo_t* noundef %0, i8* noundef %1, i16 noundef zeroext %2, i32 noundef %3) unnamed_addr #3 {
  %5 = zext i16 %2 to i32
  %6 = icmp eq i16 %2, 0
  br i1 %6, label %43, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 8
  %9 = load %struct.mutex*, %struct.mutex** %8, align 4, !tbaa !332
  tail call fastcc void @_ff_lock(%struct.mutex* noundef %9)
  %10 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 6
  %11 = load volatile i16, i16* %10, align 2, !tbaa !348
  %12 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 7
  %13 = load volatile i16, i16* %12, align 4, !tbaa !349
  %14 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 3
  %15 = load i8, i8* %14, align 4, !tbaa !345, !range !68
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %7
  %18 = tail call fastcc zeroext i16 @_tu_fifo_remaining(%struct.tu_fifo_t* noundef nonnull %0, i16 noundef zeroext %11, i16 noundef zeroext %13)
  %19 = icmp ugt i16 %18, %2
  %20 = select i1 %19, i16 %2, i16 %18
  %21 = getelementptr %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 1
  %22 = load i16, i16* %21, align 4, !tbaa !343
  br label %35

23:                                               ; preds = %7
  %24 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 1
  %25 = load i16, i16* %24, align 4, !tbaa !343
  %26 = icmp ugt i16 %25, %2
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = zext i16 %25 to i32
  %29 = sub nsw i32 %5, %28
  %30 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 2
  %31 = load i16, i16* %30, align 2, !tbaa !344
  %32 = zext i16 %31 to i32
  %33 = mul nsw i32 %29, %32
  %34 = getelementptr inbounds i8, i8* %1, i32 %33
  br label %35

35:                                               ; preds = %23, %27, %17
  %36 = phi i16 [ %25, %27 ], [ %25, %23 ], [ %22, %17 ]
  %37 = phi i16 [ %13, %27 ], [ %11, %23 ], [ %11, %17 ]
  %38 = phi i16 [ %25, %27 ], [ %2, %23 ], [ %20, %17 ]
  %39 = phi i8* [ %34, %27 ], [ %1, %23 ], [ %1, %17 ]
  %40 = tail call fastcc zeroext i16 @get_relative_pointer(i16 %36, i16 noundef zeroext %37)
  tail call fastcc void @_ff_push_n(%struct.tu_fifo_t* noundef nonnull %0, i8* noundef %39, i16 noundef zeroext %38, i16 noundef zeroext %40, i32 noundef %3)
  %41 = tail call fastcc zeroext i16 @advance_pointer(%struct.tu_fifo_t* noundef nonnull %0, i16 noundef zeroext %37, i16 noundef zeroext %38)
  store volatile i16 %41, i16* %10, align 2, !tbaa !348
  %42 = load %struct.mutex*, %struct.mutex** %8, align 4, !tbaa !332
  tail call fastcc void @_ff_unlock(%struct.mutex* noundef %42)
  br label %43

43:                                               ; preds = %4, %35
  %44 = phi i16 [ %38, %35 ], [ 0, %4 ]
  ret i16 %44
}

; Function Attrs: nofree noinline nounwind
define internal fastcc void @_ff_push_n(%struct.tu_fifo_t* nocapture noundef readonly %0, i8* noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i32 noundef %4) unnamed_addr #8 {
  %6 = alloca i32, align 4
  %7 = bitcast i32* %6 to i8*
  %8 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 1
  %9 = load i16, i16* %8, align 4, !tbaa !343
  %10 = zext i16 %3 to i32
  %11 = sub i16 %9, %3
  %12 = zext i16 %2 to i32
  %13 = sub i16 %2, %11
  %14 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 2
  %15 = load i16, i16* %14, align 2, !tbaa !344
  %16 = zext i16 %15 to i32
  %17 = mul i16 %11, %15
  %18 = mul i16 %13, %15
  %19 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 0
  %20 = load i8*, i8** %19, align 4, !tbaa !342
  %21 = mul nuw nsw i32 %16, %10
  %22 = getelementptr inbounds i8, i8* %20, i32 %21
  switch i32 %4, label %79 [
    i32 0, label %23
    i32 1, label %32
  ]

23:                                               ; preds = %5
  %24 = icmp ult i16 %11, %2
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %26 = mul nuw nsw i32 %16, %12
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %22, i8* align 1 %1, i32 %26, i1 false)
  br label %79

27:                                               ; preds = %23
  %28 = zext i16 %17 to i32
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %22, i8* align 1 %1, i32 %28, i1 false)
  %29 = load i8*, i8** %19, align 4, !tbaa !342
  %30 = getelementptr inbounds i8, i8* %1, i32 %28
  %31 = zext i16 %18 to i32
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %29, i8* align 1 %30, i32 %31, i1 false)
  br label %79

32:                                               ; preds = %5
  %33 = icmp ult i16 %11, %2
  br i1 %33, label %36, label %34

34:                                               ; preds = %32
  %35 = mul i16 %15, %2
  tail call fastcc void @_ff_push_const_addr(i8* noundef %22, i8* noundef %1, i16 noundef zeroext %35)
  br label %79

36:                                               ; preds = %32
  %37 = and i16 %17, -4
  tail call fastcc void @_ff_push_const_addr(i8* noundef %22, i8* noundef %1, i16 noundef zeroext %37)
  %38 = trunc i16 %17 to i8
  %39 = and i8 %38, 3
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %72, label %41

41:                                               ; preds = %36
  %42 = bitcast i8* %1 to i32*
  %43 = zext i16 %37 to i32
  %44 = getelementptr i8, i8* %22, i32 %43
  %45 = sub nuw nsw i8 4, %39
  %46 = zext i8 %45 to i16
  %47 = icmp ult i16 %18, %46
  %48 = select i1 %47, i16 %18, i16 %46
  %49 = trunc i16 %48 to i8
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #30
  %50 = load volatile i32, i32* %42, align 4, !tbaa !18
  store i32 %50, i32* %6, align 4, !tbaa !18
  %51 = zext i16 %9 to i32
  %52 = zext i16 %3 to i32
  %53 = sub nsw i32 %51, %52
  %54 = zext i16 %15 to i32
  %55 = mul i32 %53, %54
  %56 = and i32 %55, 3
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %44, i8* nonnull align 4 %7, i32 %56, i1 false), !tbaa !8
  %57 = sub i16 %18, %48
  %58 = load i8*, i8** %19, align 4, !tbaa !342
  %59 = icmp eq i8 %49, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %41
  %61 = add nsw i8 %39, -1
  %62 = zext i8 %61 to i32
  %63 = add nuw nsw i32 %62, 1
  %64 = getelementptr i8, i8* %7, i32 %63
  %65 = zext i16 %48 to i32
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %58, i8* align 1 %64, i32 %65, i1 false), !tbaa !8
  %66 = add nsw i8 %49, -1
  %67 = zext i8 %66 to i32
  %68 = add nuw nsw i32 %67, 1
  %69 = getelementptr i8, i8* %58, i32 %68
  br label %70

70:                                               ; preds = %60, %41
  %71 = phi i8* [ %58, %41 ], [ %69, %60 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #30
  br label %74

72:                                               ; preds = %36
  %73 = load i8*, i8** %19, align 4, !tbaa !342
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i8* [ %71, %70 ], [ %73, %72 ]
  %76 = phi i16 [ %57, %70 ], [ %18, %72 ]
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  tail call fastcc void @_ff_push_const_addr(i8* noundef %75, i8* noundef %1, i16 noundef zeroext %76)
  br label %79

79:                                               ; preds = %74, %78, %34, %25, %27, %5
  ret void
}

; Function Attrs: nofree noinline nounwind
define internal fastcc void @_ff_push_const_addr(i8* nocapture noundef writeonly %0, i8* noundef %1, i16 noundef zeroext %2) unnamed_addr #8 {
  %4 = alloca i32, align 4
  %5 = bitcast i8* %1 to i32*
  %6 = icmp ult i16 %2, 4
  br i1 %6, label %51, label %7

7:                                                ; preds = %3
  %8 = lshr i16 %2, 2
  %9 = add nsw i16 %8, -1
  %10 = and i16 %8, 3
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %7
  %13 = add nsw i16 %8, -1
  %14 = load volatile i32, i32* %5, align 4, !tbaa !18
  %15 = bitcast i8* %0 to i32*
  store i32 %14, i32* %15, align 1, !tbaa !351
  %16 = getelementptr inbounds i8, i8* %0, i32 4
  %17 = icmp eq i16 %10, 1
  br i1 %17, label %29, label %18

18:                                               ; preds = %12
  %19 = add nsw i16 %8, -2
  %20 = load volatile i32, i32* %5, align 4, !tbaa !18
  %21 = bitcast i8* %16 to i32*
  store i32 %20, i32* %21, align 1, !tbaa !351
  %22 = getelementptr inbounds i8, i8* %0, i32 8
  %23 = icmp eq i16 %10, 2
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = add nsw i16 %8, -3
  %26 = load volatile i32, i32* %5, align 4, !tbaa !18
  %27 = bitcast i8* %22 to i32*
  store i32 %26, i32* %27, align 1, !tbaa !351
  %28 = getelementptr inbounds i8, i8* %0, i32 12
  br label %29

29:                                               ; preds = %12, %18, %24, %7
  %30 = phi i8* [ undef, %7 ], [ %16, %12 ], [ %22, %18 ], [ %28, %24 ]
  %31 = phi i8* [ %0, %7 ], [ %16, %12 ], [ %22, %18 ], [ %28, %24 ]
  %32 = phi i16 [ %8, %7 ], [ %13, %12 ], [ %19, %18 ], [ %25, %24 ]
  %33 = icmp ult i16 %9, 3
  br i1 %33, label %51, label %34

34:                                               ; preds = %29, %34
  %35 = phi i8* [ %49, %34 ], [ %31, %29 ]
  %36 = phi i16 [ %46, %34 ], [ %32, %29 ]
  %37 = load volatile i32, i32* %5, align 4, !tbaa !18
  %38 = bitcast i8* %35 to i32*
  store i32 %37, i32* %38, align 1, !tbaa !351
  %39 = getelementptr inbounds i8, i8* %35, i32 4
  %40 = load volatile i32, i32* %5, align 4, !tbaa !18
  %41 = bitcast i8* %39 to i32*
  store i32 %40, i32* %41, align 1, !tbaa !351
  %42 = getelementptr inbounds i8, i8* %35, i32 8
  %43 = load volatile i32, i32* %5, align 4, !tbaa !18
  %44 = bitcast i8* %42 to i32*
  store i32 %43, i32* %44, align 1, !tbaa !351
  %45 = getelementptr inbounds i8, i8* %35, i32 12
  %46 = add nsw i16 %36, -4
  %47 = load volatile i32, i32* %5, align 4, !tbaa !18
  %48 = bitcast i8* %45 to i32*
  store i32 %47, i32* %48, align 1, !tbaa !351
  %49 = getelementptr inbounds i8, i8* %35, i32 16
  %50 = icmp eq i16 %46, 0
  br i1 %50, label %51, label %34, !llvm.loop !354

51:                                               ; preds = %29, %34, %3
  %52 = phi i8* [ %0, %3 ], [ %30, %29 ], [ %49, %34 ]
  %53 = trunc i16 %2 to i8
  %54 = and i8 %53, 3
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %57)
  %58 = load volatile i32, i32* %5, align 4, !tbaa !18
  store i32 %58, i32* %4, align 4, !tbaa !18
  %59 = zext i8 %54 to i32
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %52, i8* nonnull align 4 %57, i32 %59, i1 false)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %57)
  br label %60

60:                                               ; preds = %56, %51
  ret void
}

; Function Attrs: noinline nounwind
define dso_local zeroext i16 @tu_fifo_write_n_const_addr_full_words(%struct.tu_fifo_t* noundef %0, i8* noundef %1, i16 noundef zeroext %2) local_unnamed_addr #3 {
  %4 = tail call fastcc zeroext i16 @_tu_fifo_write_n(%struct.tu_fifo_t* noundef %0, i8* noundef %1, i16 noundef zeroext %2, i32 noundef 1)
  ret i16 %4
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @tu_fifo_clear(%struct.tu_fifo_t* noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 8
  %3 = load %struct.mutex*, %struct.mutex** %2, align 4, !tbaa !332
  tail call fastcc void @_ff_lock(%struct.mutex* noundef %3)
  %4 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 9
  %5 = load %struct.mutex*, %struct.mutex** %4, align 4, !tbaa !333
  tail call fastcc void @_ff_lock(%struct.mutex* noundef %5)
  %6 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 6
  store volatile i16 0, i16* %6, align 2, !tbaa !348
  %7 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 7
  store volatile i16 0, i16* %7, align 4, !tbaa !349
  %8 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 1
  %9 = load i16, i16* %8, align 4, !tbaa !343
  %10 = shl i16 %9, 1
  %11 = add i16 %10, -1
  %12 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 5
  store i16 %11, i16* %12, align 4, !tbaa !346
  %13 = sub i16 0, %10
  %14 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 4
  store i16 %13, i16* %14, align 2, !tbaa !347
  %15 = load %struct.mutex*, %struct.mutex** %2, align 4, !tbaa !332
  tail call fastcc void @_ff_unlock(%struct.mutex* noundef %15)
  %16 = load %struct.mutex*, %struct.mutex** %4, align 4, !tbaa !333
  tail call fastcc void @_ff_unlock(%struct.mutex* noundef %16)
  ret i1 true
}

; Function Attrs: noinline nounwind
define dso_local zeroext i1 @tu_fifo_set_overwritable(%struct.tu_fifo_t* nocapture noundef %0, i1 noundef zeroext %1) local_unnamed_addr #3 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 8
  %5 = load %struct.mutex*, %struct.mutex** %4, align 4, !tbaa !332
  tail call fastcc void @_ff_lock(%struct.mutex* noundef %5)
  %6 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 9
  %7 = load %struct.mutex*, %struct.mutex** %6, align 4, !tbaa !333
  tail call fastcc void @_ff_lock(%struct.mutex* noundef %7)
  %8 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 3
  store i8 %3, i8* %8, align 4, !tbaa !345
  %9 = load %struct.mutex*, %struct.mutex** %4, align 4, !tbaa !332
  tail call fastcc void @_ff_unlock(%struct.mutex* noundef %9)
  %10 = load %struct.mutex*, %struct.mutex** %6, align 4, !tbaa !333
  tail call fastcc void @_ff_unlock(%struct.mutex* noundef %10)
  ret i1 true
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @tu_fifo_advance_write_pointer(%struct.tu_fifo_t* noundef %0, i16 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 6
  %4 = load volatile i16, i16* %3, align 2, !tbaa !348
  %5 = tail call fastcc zeroext i16 @advance_pointer(%struct.tu_fifo_t* noundef %0, i16 noundef zeroext %4, i16 noundef zeroext %1)
  store volatile i16 %5, i16* %3, align 2, !tbaa !348
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @tu_fifo_advance_read_pointer(%struct.tu_fifo_t* noundef %0, i16 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 7
  %4 = load volatile i16, i16* %3, align 4, !tbaa !349
  %5 = tail call fastcc zeroext i16 @advance_pointer(%struct.tu_fifo_t* noundef %0, i16 noundef zeroext %4, i16 noundef zeroext %1)
  store volatile i16 %5, i16* %3, align 4, !tbaa !349
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @tu_fifo_get_read_info(%struct.tu_fifo_t* noundef %0, %struct.tu_fifo_buffer_info_t* nocapture noundef writeonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 6
  %4 = load volatile i16, i16* %3, align 2, !tbaa !348
  %5 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 7
  %6 = load volatile i16, i16* %5, align 4, !tbaa !349
  %7 = tail call fastcc zeroext i16 @_tu_fifo_count(%struct.tu_fifo_t* noundef %0, i16 noundef zeroext %4, i16 noundef zeroext %6)
  %8 = getelementptr %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 1
  %9 = load i16, i16* %8, align 4, !tbaa !343
  %10 = icmp ugt i16 %7, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 9
  %13 = load %struct.mutex*, %struct.mutex** %12, align 4, !tbaa !333
  tail call fastcc void @_ff_lock(%struct.mutex* noundef %13)
  tail call fastcc void @_tu_fifo_correct_read_pointer(%struct.tu_fifo_t* noundef nonnull %0, i16 noundef zeroext %4)
  %14 = load %struct.mutex*, %struct.mutex** %12, align 4, !tbaa !333
  tail call fastcc void @_ff_unlock(%struct.mutex* noundef %14)
  %15 = load volatile i16, i16* %5, align 4, !tbaa !349
  %16 = load i16, i16* %8, align 4, !tbaa !343
  br label %17

17:                                               ; preds = %11, %2
  %18 = phi i16 [ %16, %11 ], [ %9, %2 ]
  %19 = phi i16 [ %15, %11 ], [ %6, %2 ]
  %20 = phi i16 [ %16, %11 ], [ %7, %2 ]
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = bitcast %struct.tu_fifo_buffer_info_t* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %23, i8 0, i64 12, i1 false)
  br label %43

24:                                               ; preds = %17
  %25 = tail call fastcc zeroext i16 @get_relative_pointer(i16 %18, i16 noundef zeroext %4)
  %26 = tail call fastcc zeroext i16 @get_relative_pointer(i16 %18, i16 noundef zeroext %19)
  %27 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 0
  %28 = load i8*, i8** %27, align 4, !tbaa !342
  %29 = zext i16 %26 to i32
  %30 = getelementptr inbounds i8, i8* %28, i32 %29
  %31 = getelementptr inbounds %struct.tu_fifo_buffer_info_t, %struct.tu_fifo_buffer_info_t* %1, i32 0, i32 2
  store i8* %30, i8** %31, align 4, !tbaa !355
  %32 = icmp ugt i16 %25, %26
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.tu_fifo_buffer_info_t, %struct.tu_fifo_buffer_info_t* %1, i32 0, i32 0
  store i16 %20, i16* %34, align 4, !tbaa !357
  %35 = getelementptr inbounds %struct.tu_fifo_buffer_info_t, %struct.tu_fifo_buffer_info_t* %1, i32 0, i32 1
  store i16 0, i16* %35, align 2, !tbaa !358
  %36 = getelementptr inbounds %struct.tu_fifo_buffer_info_t, %struct.tu_fifo_buffer_info_t* %1, i32 0, i32 3
  store i8* null, i8** %36, align 4, !tbaa !359
  br label %43

37:                                               ; preds = %24
  %38 = sub i16 %18, %26
  %39 = getelementptr inbounds %struct.tu_fifo_buffer_info_t, %struct.tu_fifo_buffer_info_t* %1, i32 0, i32 0
  store i16 %38, i16* %39, align 4, !tbaa !357
  %40 = sub i16 %20, %38
  %41 = getelementptr inbounds %struct.tu_fifo_buffer_info_t, %struct.tu_fifo_buffer_info_t* %1, i32 0, i32 1
  store i16 %40, i16* %41, align 2, !tbaa !358
  %42 = getelementptr inbounds %struct.tu_fifo_buffer_info_t, %struct.tu_fifo_buffer_info_t* %1, i32 0, i32 3
  store i8* %28, i8** %42, align 4, !tbaa !359
  br label %43

43:                                               ; preds = %33, %37, %22
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @tu_fifo_get_write_info(%struct.tu_fifo_t* noundef %0, %struct.tu_fifo_buffer_info_t* nocapture noundef writeonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 6
  %4 = load volatile i16, i16* %3, align 2, !tbaa !348
  %5 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 7
  %6 = load volatile i16, i16* %5, align 4, !tbaa !349
  %7 = tail call fastcc zeroext i16 @_tu_fifo_remaining(%struct.tu_fifo_t* noundef %0, i16 noundef zeroext %4, i16 noundef zeroext %6)
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = bitcast %struct.tu_fifo_buffer_info_t* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %10, i8 0, i64 12, i1 false)
  br label %33

11:                                               ; preds = %2
  %12 = getelementptr %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 1
  %13 = load i16, i16* %12, align 4, !tbaa !343
  %14 = tail call fastcc zeroext i16 @get_relative_pointer(i16 %13, i16 noundef zeroext %4)
  %15 = tail call fastcc zeroext i16 @get_relative_pointer(i16 %13, i16 noundef zeroext %6)
  %16 = getelementptr inbounds %struct.tu_fifo_t, %struct.tu_fifo_t* %0, i32 0, i32 0
  %17 = load i8*, i8** %16, align 4, !tbaa !342
  %18 = zext i16 %14 to i32
  %19 = getelementptr inbounds i8, i8* %17, i32 %18
  %20 = getelementptr inbounds %struct.tu_fifo_buffer_info_t, %struct.tu_fifo_buffer_info_t* %1, i32 0, i32 2
  store i8* %19, i8** %20, align 4, !tbaa !355
  %21 = icmp ugt i16 %15, %14
  br i1 %21, label %22, label %27

22:                                               ; preds = %11
  %23 = sub i16 %15, %14
  %24 = getelementptr inbounds %struct.tu_fifo_buffer_info_t, %struct.tu_fifo_buffer_info_t* %1, i32 0, i32 0
  store i16 %23, i16* %24, align 4, !tbaa !357
  %25 = getelementptr inbounds %struct.tu_fifo_buffer_info_t, %struct.tu_fifo_buffer_info_t* %1, i32 0, i32 1
  store i16 0, i16* %25, align 2, !tbaa !358
  %26 = getelementptr inbounds %struct.tu_fifo_buffer_info_t, %struct.tu_fifo_buffer_info_t* %1, i32 0, i32 3
  store i8* null, i8** %26, align 4, !tbaa !359
  br label %33

27:                                               ; preds = %11
  %28 = sub i16 %13, %14
  %29 = getelementptr inbounds %struct.tu_fifo_buffer_info_t, %struct.tu_fifo_buffer_info_t* %1, i32 0, i32 0
  store i16 %28, i16* %29, align 4, !tbaa !357
  %30 = sub i16 %7, %28
  %31 = getelementptr inbounds %struct.tu_fifo_buffer_info_t, %struct.tu_fifo_buffer_info_t* %1, i32 0, i32 1
  store i16 %30, i16* %31, align 2, !tbaa !358
  %32 = getelementptr inbounds %struct.tu_fifo_buffer_info_t, %struct.tu_fifo_buffer_info_t* %1, i32 0, i32 3
  store i8* %17, i8** %32, align 4, !tbaa !359
  br label %33

33:                                               ; preds = %22, %27, %9
  ret void
}

; Function Attrs: noinline nounwind
define internal void @_retrieve_unique_id_on_boot() #3 {
  tail call void @flash_get_unique_id(i8* noundef getelementptr inbounds (%struct.pico_unique_board_id_t, %struct.pico_unique_board_id_t* @retrieved_id, i32 0, i32 0, i32 0)) #30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn
define dso_local void @pico_get_unique_board_id(%struct.pico_unique_board_id_t* nocapture noundef writeonly %0) local_unnamed_addr #11 {
  %2 = bitcast %struct.pico_unique_board_id_t* %0 to i64*
  %3 = load i64, i64* bitcast (%struct.pico_unique_board_id_t* @retrieved_id to i64*), align 8, !tbaa !8
  store i64 %3, i64* %2, align 1, !tbaa !8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind
define dso_local void @pico_get_unique_board_id_string(i8* nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #17 {
  %3 = icmp eq i32 %1, 1
  br i1 %3, label %113, label %4

4:                                                ; preds = %2
  %5 = add i32 %1, -2
  %6 = call i32 @llvm.umin.i32(i32 %5, i32 15)
  %7 = add nuw nsw i32 %6, 1
  %8 = add nuw nsw i32 %6, 1
  %9 = and i32 %8, 3
  %10 = icmp ult i32 %6, 3
  br i1 %10, label %58, label %11

11:                                               ; preds = %4
  %12 = and i32 %8, 28
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi i32 [ 0, %11 ], [ %55, %13 ]
  %15 = phi i32 [ 0, %11 ], [ %56, %13 ]
  %16 = lshr exact i32 %14, 1
  %17 = getelementptr inbounds %struct.pico_unique_board_id_t, %struct.pico_unique_board_id_t* @retrieved_id, i32 0, i32 0, i32 %16
  %18 = load i8, i8* %17, align 2, !tbaa !8
  %19 = lshr i8 %18, 4
  %20 = icmp ult i8 %18, -96
  %21 = or i8 %19, 48
  %22 = add nuw nsw i8 %19, 55
  %23 = select i1 %20, i8 %21, i8 %22
  %24 = getelementptr inbounds i8, i8* %0, i32 %14
  store i8 %23, i8* %24, align 1, !tbaa !8
  %25 = or i32 %14, 1
  %26 = lshr exact i32 %14, 1
  %27 = getelementptr inbounds %struct.pico_unique_board_id_t, %struct.pico_unique_board_id_t* @retrieved_id, i32 0, i32 0, i32 %26
  %28 = load i8, i8* %27, align 2, !tbaa !8
  %29 = and i8 %28, 15
  %30 = icmp ult i8 %29, 10
  %31 = or i8 %29, 48
  %32 = add nuw nsw i8 %29, 55
  %33 = select i1 %30, i8 %31, i8 %32
  %34 = getelementptr inbounds i8, i8* %0, i32 %25
  store i8 %33, i8* %34, align 1, !tbaa !8
  %35 = or i32 %14, 2
  %36 = lshr exact i32 %35, 1
  %37 = getelementptr inbounds %struct.pico_unique_board_id_t, %struct.pico_unique_board_id_t* @retrieved_id, i32 0, i32 0, i32 %36
  %38 = load i8, i8* %37, align 1, !tbaa !8
  %39 = lshr i8 %38, 4
  %40 = icmp ult i8 %38, -96
  %41 = or i8 %39, 48
  %42 = add nuw nsw i8 %39, 55
  %43 = select i1 %40, i8 %41, i8 %42
  %44 = getelementptr inbounds i8, i8* %0, i32 %35
  store i8 %43, i8* %44, align 1, !tbaa !8
  %45 = or i32 %14, 3
  %46 = lshr exact i32 %35, 1
  %47 = getelementptr inbounds %struct.pico_unique_board_id_t, %struct.pico_unique_board_id_t* @retrieved_id, i32 0, i32 0, i32 %46
  %48 = load i8, i8* %47, align 1, !tbaa !8
  %49 = and i8 %48, 15
  %50 = icmp ult i8 %49, 10
  %51 = or i8 %49, 48
  %52 = add nuw nsw i8 %49, 55
  %53 = select i1 %50, i8 %51, i8 %52
  %54 = getelementptr inbounds i8, i8* %0, i32 %45
  store i8 %53, i8* %54, align 1, !tbaa !8
  %55 = add nuw nsw i32 %14, 4
  %56 = add i32 %15, 4
  %57 = icmp eq i32 %56, %12
  br i1 %57, label %58, label %13, !llvm.loop !360

58:                                               ; preds = %13, %4
  %59 = phi i32 [ 0, %4 ], [ %55, %13 ]
  %60 = icmp eq i32 %9, 0
  br i1 %60, label %113, label %61

61:                                               ; preds = %58
  %62 = lshr i32 %59, 1
  %63 = getelementptr inbounds %struct.pico_unique_board_id_t, %struct.pico_unique_board_id_t* @retrieved_id, i32 0, i32 0, i32 %62
  %64 = load i8, i8* %63, align 1, !tbaa !8
  %65 = zext i8 %64 to i32
  %66 = shl nuw nsw i32 %59, 2
  %67 = and i32 %66, 4
  %68 = xor i32 %67, 4
  %69 = lshr i32 %65, %68
  %70 = and i32 %69, 15
  %71 = icmp ult i32 %70, 10
  %72 = or i32 %70, 48
  %73 = add nuw nsw i32 %70, 55
  %74 = select i1 %71, i32 %72, i32 %73
  %75 = trunc i32 %74 to i8
  %76 = getelementptr inbounds i8, i8* %0, i32 %59
  store i8 %75, i8* %76, align 1, !tbaa !8
  %77 = add nuw nsw i32 %59, 1
  %78 = icmp eq i32 %9, 1
  br i1 %78, label %113, label %79

79:                                               ; preds = %61
  %80 = lshr i32 %77, 1
  %81 = getelementptr inbounds %struct.pico_unique_board_id_t, %struct.pico_unique_board_id_t* @retrieved_id, i32 0, i32 0, i32 %80
  %82 = load i8, i8* %81, align 1, !tbaa !8
  %83 = zext i8 %82 to i32
  %84 = shl nuw nsw i32 %77, 2
  %85 = and i32 %84, 4
  %86 = xor i32 %85, 4
  %87 = lshr i32 %83, %86
  %88 = and i32 %87, 15
  %89 = icmp ult i32 %88, 10
  %90 = or i32 %88, 48
  %91 = add nuw nsw i32 %88, 55
  %92 = select i1 %89, i32 %90, i32 %91
  %93 = trunc i32 %92 to i8
  %94 = getelementptr inbounds i8, i8* %0, i32 %77
  store i8 %93, i8* %94, align 1, !tbaa !8
  %95 = add nuw nsw i32 %59, 2
  %96 = icmp eq i32 %9, 2
  br i1 %96, label %113, label %97

97:                                               ; preds = %79
  %98 = lshr i32 %95, 1
  %99 = getelementptr inbounds %struct.pico_unique_board_id_t, %struct.pico_unique_board_id_t* @retrieved_id, i32 0, i32 0, i32 %98
  %100 = load i8, i8* %99, align 1, !tbaa !8
  %101 = zext i8 %100 to i32
  %102 = shl nuw nsw i32 %95, 2
  %103 = and i32 %102, 4
  %104 = xor i32 %103, 4
  %105 = lshr i32 %101, %104
  %106 = and i32 %105, 15
  %107 = icmp ult i32 %106, 10
  %108 = or i32 %106, 48
  %109 = add nuw nsw i32 %106, 55
  %110 = select i1 %107, i32 %108, i32 %109
  %111 = trunc i32 %110 to i8
  %112 = getelementptr inbounds i8, i8* %0, i32 %95
  store i8 %111, i8* %112, align 1, !tbaa !8
  br label %113

113:                                              ; preds = %58, %97, %79, %61, %2
  %114 = phi i32 [ 0, %2 ], [ %7, %61 ], [ %7, %79 ], [ %7, %97 ], [ %7, %58 ]
  %115 = getelementptr inbounds i8, i8* %0, i32 %114
  store i8 0, i8* %115, align 1, !tbaa !8
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @flash_range_erase(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 section ".time_critical.flash_range_erase" {
  %3 = add i32 %1, %0
  %4 = icmp ult i32 %3, 2097153
  tail call fastcc void @hard_assert.222(i1 noundef zeroext %4)
  %5 = load i16, i16* inttoptr (i32 24 to i16*), align 8, !tbaa !154
  %6 = zext i16 %5 to i32
  %7 = inttoptr i32 %6 to i8* (i16*, i32)*
  %8 = load i16, i16* inttoptr (i32 20 to i16*), align 4, !tbaa !154
  %9 = zext i16 %8 to i32
  %10 = inttoptr i32 %9 to i16*
  %11 = tail call i8* %7(i16* noundef %10, i32 noundef 17993) #30
  %12 = bitcast i8* %11 to void ()*
  %13 = load i16, i16* inttoptr (i32 24 to i16*), align 8, !tbaa !154
  %14 = zext i16 %13 to i32
  %15 = inttoptr i32 %14 to i8* (i16*, i32)*
  %16 = load i16, i16* inttoptr (i32 20 to i16*), align 4, !tbaa !154
  %17 = zext i16 %16 to i32
  %18 = inttoptr i32 %17 to i16*
  %19 = tail call i8* %15(i16* noundef %18, i32 noundef 22597) #30
  %20 = bitcast i8* %19 to void ()*
  %21 = load i16, i16* inttoptr (i32 24 to i16*), align 8, !tbaa !154
  %22 = zext i16 %21 to i32
  %23 = inttoptr i32 %22 to i8* (i16*, i32)*
  %24 = load i16, i16* inttoptr (i32 20 to i16*), align 4, !tbaa !154
  %25 = zext i16 %24 to i32
  %26 = inttoptr i32 %25 to i16*
  %27 = tail call i8* %23(i16* noundef %26, i32 noundef 17746) #30
  %28 = bitcast i8* %27 to void (i32, i32, i32, i8)*
  %29 = load i16, i16* inttoptr (i32 24 to i16*), align 8, !tbaa !154
  %30 = zext i16 %29 to i32
  %31 = inttoptr i32 %30 to i8* (i16*, i32)*
  %32 = load i16, i16* inttoptr (i32 20 to i16*), align 4, !tbaa !154
  %33 = zext i16 %32 to i32
  %34 = inttoptr i32 %33 to i16*
  %35 = tail call i8* %31(i16* noundef %34, i32 noundef 17222) #30
  %36 = bitcast i8* %35 to void ()*
  tail call fastcc void @flash_init_boot2_copyout()
  tail call void asm sideeffect "", "~{memory}"() #30, !srcloc !361
  tail call void %12() #30
  tail call void %20() #30
  tail call void %28(i32 noundef %0, i32 noundef %1, i32 noundef 65536, i8 noundef zeroext -40) #30
  tail call void %36() #30
  tail call fastcc void @flash_enable_xip_via_boot2()
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc void @hard_assert.222(i1 noundef zeroext %0) unnamed_addr #3 {
  br i1 %0, label %3, label %2

2:                                                ; preds = %1
  tail call void @hard_assertion_failure() #30
  br label %3

3:                                                ; preds = %2, %1
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc void @flash_init_boot2_copyout() unnamed_addr #3 section ".time_critical.flash_init_boot2_copyout" {
  %1 = load i1, i1* @boot2_copyout_valid, align 1
  br i1 %1, label %70, label %3

2:                                                ; preds = %3
  tail call void asm sideeffect "", "~{memory}"() #30, !srcloc !361
  store i1 true, i1* @boot2_copyout_valid, align 1
  br label %70

3:                                                ; preds = %0, %3
  %4 = phi i32 [ %68, %3 ], [ 0, %0 ]
  %5 = getelementptr inbounds i32, i32* inttoptr (i32 268435456 to i32*), i32 %4
  %6 = load i32, i32* %5, align 64, !tbaa !18
  %7 = getelementptr inbounds [64 x i32], [64 x i32]* @boot2_copyout, i32 0, i32 %4
  store i32 %6, i32* %7, align 4, !tbaa !18
  %8 = or i32 %4, 1
  %9 = getelementptr inbounds i32, i32* inttoptr (i32 268435456 to i32*), i32 %8
  %10 = load i32, i32* %9, align 4, !tbaa !18
  %11 = getelementptr inbounds [64 x i32], [64 x i32]* @boot2_copyout, i32 0, i32 %8
  store i32 %10, i32* %11, align 4, !tbaa !18
  %12 = or i32 %4, 2
  %13 = getelementptr inbounds i32, i32* inttoptr (i32 268435456 to i32*), i32 %12
  %14 = load i32, i32* %13, align 8, !tbaa !18
  %15 = getelementptr inbounds [64 x i32], [64 x i32]* @boot2_copyout, i32 0, i32 %12
  store i32 %14, i32* %15, align 4, !tbaa !18
  %16 = or i32 %4, 3
  %17 = getelementptr inbounds i32, i32* inttoptr (i32 268435456 to i32*), i32 %16
  %18 = load i32, i32* %17, align 4, !tbaa !18
  %19 = getelementptr inbounds [64 x i32], [64 x i32]* @boot2_copyout, i32 0, i32 %16
  store i32 %18, i32* %19, align 4, !tbaa !18
  %20 = or i32 %4, 4
  %21 = getelementptr inbounds i32, i32* inttoptr (i32 268435456 to i32*), i32 %20
  %22 = load i32, i32* %21, align 16, !tbaa !18
  %23 = getelementptr inbounds [64 x i32], [64 x i32]* @boot2_copyout, i32 0, i32 %20
  store i32 %22, i32* %23, align 4, !tbaa !18
  %24 = or i32 %4, 5
  %25 = getelementptr inbounds i32, i32* inttoptr (i32 268435456 to i32*), i32 %24
  %26 = load i32, i32* %25, align 4, !tbaa !18
  %27 = getelementptr inbounds [64 x i32], [64 x i32]* @boot2_copyout, i32 0, i32 %24
  store i32 %26, i32* %27, align 4, !tbaa !18
  %28 = or i32 %4, 6
  %29 = getelementptr inbounds i32, i32* inttoptr (i32 268435456 to i32*), i32 %28
  %30 = load i32, i32* %29, align 8, !tbaa !18
  %31 = getelementptr inbounds [64 x i32], [64 x i32]* @boot2_copyout, i32 0, i32 %28
  store i32 %30, i32* %31, align 4, !tbaa !18
  %32 = or i32 %4, 7
  %33 = getelementptr inbounds i32, i32* inttoptr (i32 268435456 to i32*), i32 %32
  %34 = load i32, i32* %33, align 4, !tbaa !18
  %35 = getelementptr inbounds [64 x i32], [64 x i32]* @boot2_copyout, i32 0, i32 %32
  store i32 %34, i32* %35, align 4, !tbaa !18
  %36 = or i32 %4, 8
  %37 = getelementptr inbounds i32, i32* inttoptr (i32 268435456 to i32*), i32 %36
  %38 = load i32, i32* %37, align 32, !tbaa !18
  %39 = getelementptr inbounds [64 x i32], [64 x i32]* @boot2_copyout, i32 0, i32 %36
  store i32 %38, i32* %39, align 4, !tbaa !18
  %40 = or i32 %4, 9
  %41 = getelementptr inbounds i32, i32* inttoptr (i32 268435456 to i32*), i32 %40
  %42 = load i32, i32* %41, align 4, !tbaa !18
  %43 = getelementptr inbounds [64 x i32], [64 x i32]* @boot2_copyout, i32 0, i32 %40
  store i32 %42, i32* %43, align 4, !tbaa !18
  %44 = or i32 %4, 10
  %45 = getelementptr inbounds i32, i32* inttoptr (i32 268435456 to i32*), i32 %44
  %46 = load i32, i32* %45, align 8, !tbaa !18
  %47 = getelementptr inbounds [64 x i32], [64 x i32]* @boot2_copyout, i32 0, i32 %44
  store i32 %46, i32* %47, align 4, !tbaa !18
  %48 = or i32 %4, 11
  %49 = getelementptr inbounds i32, i32* inttoptr (i32 268435456 to i32*), i32 %48
  %50 = load i32, i32* %49, align 4, !tbaa !18
  %51 = getelementptr inbounds [64 x i32], [64 x i32]* @boot2_copyout, i32 0, i32 %48
  store i32 %50, i32* %51, align 4, !tbaa !18
  %52 = or i32 %4, 12
  %53 = getelementptr inbounds i32, i32* inttoptr (i32 268435456 to i32*), i32 %52
  %54 = load i32, i32* %53, align 16, !tbaa !18
  %55 = getelementptr inbounds [64 x i32], [64 x i32]* @boot2_copyout, i32 0, i32 %52
  store i32 %54, i32* %55, align 4, !tbaa !18
  %56 = or i32 %4, 13
  %57 = getelementptr inbounds i32, i32* inttoptr (i32 268435456 to i32*), i32 %56
  %58 = load i32, i32* %57, align 4, !tbaa !18
  %59 = getelementptr inbounds [64 x i32], [64 x i32]* @boot2_copyout, i32 0, i32 %56
  store i32 %58, i32* %59, align 4, !tbaa !18
  %60 = or i32 %4, 14
  %61 = getelementptr inbounds i32, i32* inttoptr (i32 268435456 to i32*), i32 %60
  %62 = load i32, i32* %61, align 8, !tbaa !18
  %63 = getelementptr inbounds [64 x i32], [64 x i32]* @boot2_copyout, i32 0, i32 %60
  store i32 %62, i32* %63, align 4, !tbaa !18
  %64 = or i32 %4, 15
  %65 = getelementptr inbounds i32, i32* inttoptr (i32 268435456 to i32*), i32 %64
  %66 = load i32, i32* %65, align 4, !tbaa !18
  %67 = getelementptr inbounds [64 x i32], [64 x i32]* @boot2_copyout, i32 0, i32 %64
  store i32 %66, i32* %67, align 4, !tbaa !18
  %68 = add nuw nsw i32 %4, 16
  %69 = icmp eq i32 %68, 64
  br i1 %69, label %2, label %3, !llvm.loop !362

70:                                               ; preds = %0, %2
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc void @flash_enable_xip_via_boot2() unnamed_addr #3 section ".time_critical.flash_enable_xip_via_boot2" {
  tail call void bitcast (i8* getelementptr (i8, i8* bitcast ([64 x i32]* @boot2_copyout to i8*), i32 1) to void ()*)() #30
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @flash_range_program(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 section ".time_critical.flash_range_program" {
  %4 = add i32 %2, %0
  %5 = icmp ult i32 %4, 2097153
  tail call fastcc void @hard_assert.222(i1 noundef zeroext %5)
  %6 = load i16, i16* inttoptr (i32 24 to i16*), align 8, !tbaa !154
  %7 = zext i16 %6 to i32
  %8 = inttoptr i32 %7 to i8* (i16*, i32)*
  %9 = load i16, i16* inttoptr (i32 20 to i16*), align 4, !tbaa !154
  %10 = zext i16 %9 to i32
  %11 = inttoptr i32 %10 to i16*
  %12 = tail call i8* %8(i16* noundef %11, i32 noundef 17993) #30
  %13 = bitcast i8* %12 to void ()*
  %14 = load i16, i16* inttoptr (i32 24 to i16*), align 8, !tbaa !154
  %15 = zext i16 %14 to i32
  %16 = inttoptr i32 %15 to i8* (i16*, i32)*
  %17 = load i16, i16* inttoptr (i32 20 to i16*), align 4, !tbaa !154
  %18 = zext i16 %17 to i32
  %19 = inttoptr i32 %18 to i16*
  %20 = tail call i8* %16(i16* noundef %19, i32 noundef 22597) #30
  %21 = bitcast i8* %20 to void ()*
  %22 = load i16, i16* inttoptr (i32 24 to i16*), align 8, !tbaa !154
  %23 = zext i16 %22 to i32
  %24 = inttoptr i32 %23 to i8* (i16*, i32)*
  %25 = load i16, i16* inttoptr (i32 20 to i16*), align 4, !tbaa !154
  %26 = zext i16 %25 to i32
  %27 = inttoptr i32 %26 to i16*
  %28 = tail call i8* %24(i16* noundef %27, i32 noundef 20562) #30
  %29 = bitcast i8* %28 to void (i32, i8*, i32)*
  %30 = load i16, i16* inttoptr (i32 24 to i16*), align 8, !tbaa !154
  %31 = zext i16 %30 to i32
  %32 = inttoptr i32 %31 to i8* (i16*, i32)*
  %33 = load i16, i16* inttoptr (i32 20 to i16*), align 4, !tbaa !154
  %34 = zext i16 %33 to i32
  %35 = inttoptr i32 %34 to i16*
  %36 = tail call i8* %32(i16* noundef %35, i32 noundef 17222) #30
  %37 = bitcast i8* %36 to void ()*
  tail call fastcc void @flash_init_boot2_copyout()
  tail call void asm sideeffect "", "~{memory}"() #30, !srcloc !361
  tail call void %13() #30
  tail call void %21() #30
  tail call void %29(i32 noundef %0, i8* noundef %1, i32 noundef %2) #30
  tail call void %37() #30
  tail call fastcc void @flash_enable_xip_via_boot2()
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @flash_do_cmd(i8* nocapture noundef readonly %0, i8* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 section ".time_critical.flash_do_cmd" {
  %4 = load i16, i16* inttoptr (i32 24 to i16*), align 8, !tbaa !154
  %5 = zext i16 %4 to i32
  %6 = inttoptr i32 %5 to i8* (i16*, i32)*
  %7 = load i16, i16* inttoptr (i32 20 to i16*), align 4, !tbaa !154
  %8 = zext i16 %7 to i32
  %9 = inttoptr i32 %8 to i16*
  %10 = tail call i8* %6(i16* noundef %9, i32 noundef 17993) #30
  %11 = bitcast i8* %10 to void ()*
  %12 = load i16, i16* inttoptr (i32 24 to i16*), align 8, !tbaa !154
  %13 = zext i16 %12 to i32
  %14 = inttoptr i32 %13 to i8* (i16*, i32)*
  %15 = load i16, i16* inttoptr (i32 20 to i16*), align 4, !tbaa !154
  %16 = zext i16 %15 to i32
  %17 = inttoptr i32 %16 to i16*
  %18 = tail call i8* %14(i16* noundef %17, i32 noundef 22597) #30
  %19 = bitcast i8* %18 to void ()*
  %20 = load i16, i16* inttoptr (i32 24 to i16*), align 8, !tbaa !154
  %21 = zext i16 %20 to i32
  %22 = inttoptr i32 %21 to i8* (i16*, i32)*
  %23 = load i16, i16* inttoptr (i32 20 to i16*), align 4, !tbaa !154
  %24 = zext i16 %23 to i32
  %25 = inttoptr i32 %24 to i16*
  %26 = tail call i8* %22(i16* noundef %25, i32 noundef 17222) #30
  tail call fastcc void @flash_init_boot2_copyout()
  tail call void asm sideeffect "", "~{memory}"() #30, !srcloc !361
  tail call void %11() #30
  tail call void %19() #30
  tail call fastcc void @flash_cs_force(i1 noundef zeroext false)
  %27 = icmp eq i32 %2, 0
  br i1 %27, label %64, label %28

28:                                               ; preds = %3, %58
  %29 = phi i1 [ %62, %58 ], [ true, %3 ]
  %30 = phi i1 [ %61, %58 ], [ true, %3 ]
  %31 = phi i8* [ %51, %58 ], [ %0, %3 ]
  %32 = phi i8* [ %60, %58 ], [ %1, %3 ]
  %33 = phi i32 [ %50, %58 ], [ %2, %3 ]
  %34 = phi i32 [ %59, %58 ], [ %2, %3 ]
  %35 = load volatile i32, i32* inttoptr (i32 402653224 to i32*), align 8, !tbaa !363
  %36 = and i32 %35, 2
  %37 = icmp ne i32 %36, 0
  %38 = and i32 %35, 8
  %39 = icmp ne i32 %38, 0
  %40 = select i1 %37, i1 %30, i1 false
  %41 = sub i32 %34, %33
  %42 = icmp ult i32 %41, 14
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %49

44:                                               ; preds = %28
  %45 = getelementptr inbounds i8, i8* %31, i32 1
  %46 = load i8, i8* %31, align 1, !tbaa !8
  %47 = zext i8 %46 to i32
  store volatile i32 %47, i32* inttoptr (i32 402653280 to i32*), align 32, !tbaa !365
  %48 = add i32 %33, -1
  br label %49

49:                                               ; preds = %44, %28
  %50 = phi i32 [ %48, %44 ], [ %33, %28 ]
  %51 = phi i8* [ %45, %44 ], [ %31, %28 ]
  %52 = select i1 %39, i1 %29, i1 false
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load volatile i32, i32* inttoptr (i32 402653280 to i32*), align 32, !tbaa !365
  %55 = trunc i32 %54 to i8
  %56 = getelementptr inbounds i8, i8* %32, i32 1
  store i8 %55, i8* %32, align 1, !tbaa !8
  %57 = add i32 %34, -1
  br label %58

58:                                               ; preds = %53, %49
  %59 = phi i32 [ %57, %53 ], [ %34, %49 ]
  %60 = phi i8* [ %56, %53 ], [ %32, %49 ]
  %61 = icmp ne i32 %50, 0
  %62 = icmp ne i32 %59, 0
  %63 = select i1 %61, i1 true, i1 %62
  br i1 %63, label %28, label %64, !llvm.loop !366

64:                                               ; preds = %58, %3
  %65 = bitcast i8* %26 to void ()*
  tail call fastcc void @flash_cs_force(i1 noundef zeroext true)
  tail call void %65() #30
  tail call fastcc void @flash_enable_xip_via_boot2()
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define internal fastcc void @flash_cs_force(i1 noundef zeroext %0) unnamed_addr #2 section ".time_critical.flash_cs_force" {
  %2 = select i1 %0, i32 768, i32 512
  %3 = load volatile i32, i32* inttoptr (i32 1073840140 to i32*), align 4, !tbaa !18
  %4 = and i32 %3, 768
  %5 = xor i32 %4, %2
  store volatile i32 %5, i32* inttoptr (i32 1073844236 to i32*), align 4, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @flash_get_unique_id(i8* nocapture noundef writeonly %0) local_unnamed_addr #3 {
  %2 = alloca [13 x i8], align 1
  %3 = alloca [13 x i8], align 1
  %4 = getelementptr inbounds [13 x i8], [13 x i8]* %2, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 13, i8* nonnull %4) #30
  %5 = getelementptr inbounds [13 x i8], [13 x i8]* %2, i32 0, i32 1
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(13) %5, i8 0, i32 12, i1 false)
  %6 = getelementptr inbounds [13 x i8], [13 x i8]* %3, i32 0, i32 0
  call void @llvm.lifetime.start.p0i8(i64 13, i8* nonnull %6) #30
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(13) %6, i8 0, i32 13, i1 false)
  store i8 75, i8* %4, align 1, !tbaa !8
  call void @flash_do_cmd(i8* noundef nonnull %4, i8* noundef nonnull %6, i32 noundef 13)
  %7 = getelementptr inbounds [13 x i8], [13 x i8]* %3, i32 0, i32 5
  %8 = bitcast i8* %7 to i64*
  %9 = bitcast i8* %0 to i64*
  %10 = load i64, i64* %8, align 1, !tbaa !8
  store i64 %10, i64* %9, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0i8(i64 13, i8* nonnull %6) #30
  call void @llvm.lifetime.end.p0i8(i64 13, i8* nonnull %4) #30
  ret void
}

; Function Attrs: noinline nounwind
define dso_local i32 @xQueueGenericReset(%struct.QueueDefinition* noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq %struct.QueueDefinition* %0, null
  br i1 %3, label %42, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 6
  %6 = load i32, i32* %5, align 4, !tbaa !367
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %42, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 7
  %10 = load i32, i32* %9, align 4, !tbaa !372
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 %10)
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %42, label %13

13:                                               ; preds = %8
  tail call void @vPortEnterCritical() #30
  %14 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 0
  %15 = load i8*, i8** %14, align 4, !tbaa !373
  %16 = load i32, i32* %5, align 4, !tbaa !367
  %17 = load i32, i32* %9, align 4, !tbaa !372
  %18 = mul i32 %17, %16
  %19 = getelementptr inbounds i8, i8* %15, i32 %18
  %20 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2, i32 0, i32 0
  store i8* %19, i8** %20, align 4, !tbaa !8
  %21 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5
  store volatile i32 0, i32* %21, align 4, !tbaa !374
  %22 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 1
  store i8* %15, i8** %22, align 4, !tbaa !375
  %23 = add i32 %16, -1
  %24 = mul i32 %23, %17
  %25 = getelementptr inbounds i8, i8* %15, i32 %24
  %26 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2, i32 0, i32 1
  store i8* %25, i8** %26, align 4, !tbaa !8
  %27 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 8
  store volatile i8 -1, i8* %27, align 4, !tbaa !376
  %28 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 9
  store volatile i8 -1, i8* %28, align 1, !tbaa !377
  %29 = icmp eq i32 %1, 0
  %30 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 3
  br i1 %29, label %31, label %39

31:                                               ; preds = %13
  %32 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %30, i32 0, i32 0
  %33 = load volatile i32, i32* %32, align 4, !tbaa !378
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = tail call i32 @xTaskRemoveFromEventList(%struct.xLIST* noundef nonnull %30) #30
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  tail call void @vPortYield() #30
  br label %41

39:                                               ; preds = %13
  tail call void @vListInitialise(%struct.xLIST* noundef nonnull %30) #30
  %40 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 4
  tail call void @vListInitialise(%struct.xLIST* noundef nonnull %40) #30
  br label %41

41:                                               ; preds = %35, %38, %31, %39
  tail call void @vPortExitCritical() #30
  br label %42

42:                                               ; preds = %2, %4, %8, %41
  %43 = phi i32 [ 1, %41 ], [ 0, %8 ], [ 0, %4 ], [ 0, %2 ]
  ret i32 %43
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #14

; Function Attrs: noinline nounwind
define dso_local %struct.QueueDefinition* @xQueueGenericCreate(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #3 {
  %4 = icmp eq i32 %0, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %3
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %0, i32 %1)
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %18, label %8

8:                                                ; preds = %5
  %9 = mul i32 %1, %0
  %10 = icmp ult i32 %9, -72
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = add nuw i32 %9, 72
  %13 = tail call i8* @pvPortMalloc(i32 noundef %12) #30
  %14 = bitcast i8* %13 to %struct.QueueDefinition*
  %15 = icmp eq i8* %13, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, i8* %13, i32 72
  tail call fastcc void @prvInitialiseNewQueue(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %17, %struct.QueueDefinition* noundef nonnull %14)
  br label %18

18:                                               ; preds = %3, %5, %8, %16, %11
  %19 = phi %struct.QueueDefinition* [ %14, %16 ], [ null, %11 ], [ null, %8 ], [ null, %5 ], [ null, %3 ]
  ret %struct.QueueDefinition* %19
}

; Function Attrs: noinline nounwind
define internal fastcc void @prvInitialiseNewQueue(i32 noundef %0, i32 noundef %1, i8* noundef %2, %struct.QueueDefinition* noundef %3) unnamed_addr #3 {
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = bitcast %struct.QueueDefinition* %3 to %struct.QueueDefinition**
  store %struct.QueueDefinition* %3, %struct.QueueDefinition** %7, align 4, !tbaa !373
  br label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %3, i32 0, i32 0
  store i8* %2, i8** %9, align 4, !tbaa !373
  br label %10

10:                                               ; preds = %8, %6
  %11 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %3, i32 0, i32 6
  store i32 %0, i32* %11, align 4, !tbaa !367
  %12 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %3, i32 0, i32 7
  store i32 %1, i32* %12, align 4, !tbaa !372
  %13 = tail call i32 @xQueueGenericReset(%struct.QueueDefinition* noundef nonnull %3, i32 noundef 1)
  ret void
}

; Function Attrs: noinline nounwind
define dso_local i32 @xQueueGenericSend(%struct.QueueDefinition* noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iobank0_status_ctrl_hw_t, align 4
  store i32 %2, i32* %5, align 4, !tbaa !18
  %7 = bitcast %struct.iobank0_status_ctrl_hw_t* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #30
  call void @vPortEnterCritical() #30
  %8 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5
  %9 = load volatile i32, i32* %8, align 4, !tbaa !374
  %10 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 6
  %11 = load i32, i32* %10, align 4, !tbaa !367
  %12 = icmp ult i32 %9, %11
  %13 = icmp eq i32 %3, 2
  %14 = or i1 %13, %12
  br i1 %14, label %20, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 8
  %17 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 9
  %18 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 3
  %19 = icmp eq i32 %2, 0
  br i1 %19, label %30, label %31

20:                                               ; preds = %55, %4
  call fastcc void @prvCopyDataToQueue(%struct.QueueDefinition* noundef nonnull %0, i8* noundef %1, i32 noundef %3)
  %21 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 4
  %22 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %21, i32 0, i32 0
  %23 = load volatile i32, i32* %22, align 4, !tbaa !379
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = call i32 @xTaskRemoveFromEventList(%struct.xLIST* noundef nonnull %21) #30
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  call void @vPortYield() #30
  br label %29

29:                                               ; preds = %20, %28, %25
  call void @vPortExitCritical() #30
  br label %62

30:                                               ; preds = %59, %15
  call void @vPortExitCritical() #30
  br label %62

31:                                               ; preds = %15
  call void @vTaskInternalSetTimeOutState(%struct.iobank0_status_ctrl_hw_t* noundef nonnull %6) #30
  br label %32

32:                                               ; preds = %59, %31
  call void @vPortExitCritical() #30
  call void @vTaskSuspendAll() #30
  call void @vPortEnterCritical() #30
  %33 = load volatile i8, i8* %16, align 4, !tbaa !376
  %34 = icmp eq i8 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store volatile i8 0, i8* %16, align 4, !tbaa !376
  br label %36

36:                                               ; preds = %35, %32
  %37 = load volatile i8, i8* %17, align 1, !tbaa !377
  %38 = icmp eq i8 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store volatile i8 0, i8* %17, align 1, !tbaa !377
  br label %40

40:                                               ; preds = %39, %36
  call void @vPortExitCritical() #30
  %41 = call i32 @xTaskCheckForTimeOut(%struct.iobank0_status_ctrl_hw_t* noundef nonnull %6, i32* noundef nonnull %5) #30
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = call fastcc i32 @prvIsQueueFull(%struct.QueueDefinition* noundef nonnull %0)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %5, align 4, !tbaa !18
  call void @vTaskPlaceOnEventList(%struct.xLIST* noundef nonnull %18, i32 noundef %47) #30
  call fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef nonnull %0)
  %48 = call i32 @xTaskResumeAll() #30
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  call void @vPortYield() #30
  br label %55

51:                                               ; preds = %43
  call fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef nonnull %0)
  %52 = call i32 @xTaskResumeAll() #30
  br label %55

53:                                               ; preds = %40
  call fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef nonnull %0)
  %54 = call i32 @xTaskResumeAll() #30
  br label %62

55:                                               ; preds = %51, %50, %46
  call void @vPortEnterCritical() #30
  %56 = load volatile i32, i32* %8, align 4, !tbaa !374
  %57 = load i32, i32* %10, align 4, !tbaa !367
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %20, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %5, align 4, !tbaa !18
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %30, label %32

62:                                               ; preds = %53, %30, %29
  %63 = phi i32 [ 1, %29 ], [ 0, %30 ], [ 0, %53 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #30
  ret i32 %63
}

; Function Attrs: nofree noinline nounwind
define internal fastcc void @prvCopyDataToQueue(%struct.QueueDefinition* noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5
  %5 = load volatile i32, i32* %4, align 4, !tbaa !374
  %6 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 7
  %7 = load i32, i32* %6, align 4, !tbaa !372
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %43, label %9

9:                                                ; preds = %3
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 1
  %13 = load i8*, i8** %12, align 4, !tbaa !375
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %13, i8* align 1 %1, i32 %7, i1 false)
  %14 = load i32, i32* %6, align 4, !tbaa !372
  %15 = load i8*, i8** %12, align 4, !tbaa !375
  %16 = getelementptr inbounds i8, i8* %15, i32 %14
  store i8* %16, i8** %12, align 4, !tbaa !375
  %17 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2, i32 0, i32 0
  %18 = load i8*, i8** %17, align 4, !tbaa !8
  %19 = icmp ult i8* %16, %18
  br i1 %19, label %43, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 0
  %22 = load i8*, i8** %21, align 4, !tbaa !373
  store i8* %22, i8** %12, align 4, !tbaa !375
  br label %43

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2, i32 0, i32 1
  %25 = load i8*, i8** %24, align 4, !tbaa !8
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %25, i8* align 1 %1, i32 %7, i1 false)
  %26 = load i32, i32* %6, align 4, !tbaa !372
  %27 = load i8*, i8** %24, align 4, !tbaa !8
  %28 = sub i32 0, %26
  %29 = getelementptr inbounds i8, i8* %27, i32 %28
  store i8* %29, i8** %24, align 4, !tbaa !8
  %30 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 0
  %31 = load i8*, i8** %30, align 4, !tbaa !373
  %32 = icmp ult i8* %29, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2, i32 0, i32 0
  %35 = load i8*, i8** %34, align 4, !tbaa !8
  %36 = getelementptr inbounds i8, i8* %35, i32 %28
  store i8* %36, i8** %24, align 4, !tbaa !8
  br label %37

37:                                               ; preds = %23, %33
  %38 = icmp eq i32 %2, 2
  %39 = icmp ne i32 %5, 0
  %40 = select i1 %38, i1 %39, i1 false
  %41 = sext i1 %40 to i32
  %42 = add i32 %5, %41
  br label %43

43:                                               ; preds = %37, %11, %20, %3
  %44 = phi i32 [ %5, %3 ], [ %5, %20 ], [ %5, %11 ], [ %42, %37 ]
  %45 = add i32 %44, 1
  store volatile i32 %45, i32* %4, align 4, !tbaa !374
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc i32 @prvIsQueueFull(%struct.QueueDefinition* noundef %0) unnamed_addr #3 {
  tail call void @vPortEnterCritical() #30
  %2 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5
  %3 = load volatile i32, i32* %2, align 4, !tbaa !374
  %4 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 6
  %5 = load i32, i32* %4, align 4, !tbaa !367
  %6 = icmp eq i32 %3, %5
  %7 = zext i1 %6 to i32
  tail call void @vPortExitCritical() #30
  ret i32 %7
}

; Function Attrs: noinline nounwind
define internal fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef %0) unnamed_addr #3 {
  tail call void @vPortEnterCritical() #30
  %2 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 9
  %3 = load volatile i8, i8* %2, align 1, !tbaa !377
  %4 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 4
  %5 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %4, i32 0, i32 0
  %6 = icmp sgt i8 %3, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1, %15
  %8 = phi i8 [ %16, %15 ], [ %3, %1 ]
  %9 = load volatile i32, i32* %5, align 4, !tbaa !379
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @xTaskRemoveFromEventList(%struct.xLIST* noundef nonnull %4) #30
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @vTaskMissedYield() #30
  br label %15

15:                                               ; preds = %14, %11
  %16 = add nsw i8 %8, -1
  %17 = icmp sgt i8 %8, 1
  br i1 %17, label %7, label %18, !llvm.loop !380

18:                                               ; preds = %15, %7, %1
  store volatile i8 -1, i8* %2, align 1, !tbaa !377
  tail call void @vPortExitCritical() #30
  tail call void @vPortEnterCritical() #30
  %19 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 8
  %20 = load volatile i8, i8* %19, align 4, !tbaa !376
  %21 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 3
  %22 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %21, i32 0, i32 0
  %23 = icmp sgt i8 %20, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %18, %32
  %25 = phi i8 [ %33, %32 ], [ %20, %18 ]
  %26 = load volatile i32, i32* %22, align 4, !tbaa !378
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = tail call i32 @xTaskRemoveFromEventList(%struct.xLIST* noundef nonnull %21) #30
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  tail call void @vTaskMissedYield() #30
  br label %32

32:                                               ; preds = %28, %31
  %33 = add nsw i8 %25, -1
  %34 = icmp sgt i8 %25, 1
  br i1 %34, label %24, label %35, !llvm.loop !381

35:                                               ; preds = %32, %24, %18
  store volatile i8 -1, i8* %19, align 4, !tbaa !376
  tail call void @vPortExitCritical() #30
  ret void
}

; Function Attrs: noinline nounwind
define dso_local i32 @xQueueGenericSendFromISR(%struct.QueueDefinition* noundef %0, i8* nocapture noundef readonly %1, i32* noundef writeonly %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = tail call i32 @ulSetInterruptMaskFromISR() #30
  %6 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5
  %7 = load volatile i32, i32* %6, align 4, !tbaa !374
  %8 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 6
  %9 = load i32, i32* %8, align 4, !tbaa !367
  %10 = icmp ult i32 %7, %9
  %11 = icmp eq i32 %3, 2
  %12 = or i1 %11, %10
  br i1 %12, label %13, label %35

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 9
  %15 = load volatile i8, i8* %14, align 1, !tbaa !377
  %16 = load volatile i32, i32* %6, align 4, !tbaa !374
  tail call fastcc void @prvCopyDataToQueue(%struct.QueueDefinition* noundef nonnull %0, i8* noundef %1, i32 noundef %3)
  %17 = icmp eq i8 %15, -1
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 4
  %20 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %19, i32 0, i32 0
  %21 = load volatile i32, i32* %20, align 4, !tbaa !379
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %18
  %24 = tail call i32 @xTaskRemoveFromEventList(%struct.xLIST* noundef nonnull %19) #30
  %25 = icmp ne i32 %24, 0
  %26 = icmp ne i32* %2, null
  %27 = and i1 %26, %25
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  store i32 1, i32* %2, align 4, !tbaa !382
  br label %35

29:                                               ; preds = %13
  %30 = sext i8 %15 to i32
  %31 = tail call i32 @uxTaskGetNumberOfTasks() #30
  %32 = icmp ugt i32 %31, %30
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = add nuw i8 %15, 1
  store volatile i8 %34, i8* %14, align 1, !tbaa !377
  br label %35

35:                                               ; preds = %4, %18, %28, %23, %33, %29
  %36 = phi i32 [ 1, %29 ], [ 1, %33 ], [ 1, %23 ], [ 1, %28 ], [ 1, %18 ], [ 0, %4 ]
  tail call void @vClearInterruptMaskFromISR(i32 noundef %5) #30
  ret i32 %36
}

; Function Attrs: noinline nounwind
define dso_local i32 @xQueueGiveFromISR(%struct.QueueDefinition* noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 {
  %3 = tail call i32 @ulSetInterruptMaskFromISR() #30
  %4 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5
  %5 = load volatile i32, i32* %4, align 4, !tbaa !374
  %6 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 6
  %7 = load i32, i32* %6, align 4, !tbaa !367
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %9, label %31

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 9
  %11 = load volatile i8, i8* %10, align 1, !tbaa !377
  %12 = add nuw i32 %5, 1
  store volatile i32 %12, i32* %4, align 4, !tbaa !374
  %13 = icmp eq i8 %11, -1
  br i1 %13, label %14, label %25

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 4
  %16 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %15, i32 0, i32 0
  %17 = load volatile i32, i32* %16, align 4, !tbaa !379
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %14
  %20 = tail call i32 @xTaskRemoveFromEventList(%struct.xLIST* noundef nonnull %15) #30
  %21 = icmp ne i32 %20, 0
  %22 = icmp ne i32* %1, null
  %23 = and i1 %22, %21
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  store i32 1, i32* %1, align 4, !tbaa !382
  br label %31

25:                                               ; preds = %9
  %26 = sext i8 %11 to i32
  %27 = tail call i32 @uxTaskGetNumberOfTasks() #30
  %28 = icmp ugt i32 %27, %26
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = add nuw i8 %11, 1
  store volatile i8 %30, i8* %10, align 1, !tbaa !377
  br label %31

31:                                               ; preds = %2, %14, %24, %19, %29, %25
  %32 = phi i32 [ 1, %25 ], [ 1, %29 ], [ 1, %19 ], [ 1, %24 ], [ 1, %14 ], [ 0, %2 ]
  tail call void @vClearInterruptMaskFromISR(i32 noundef %3) #30
  ret i32 %32
}

; Function Attrs: noinline nounwind
define dso_local i32 @xQueueReceive(%struct.QueueDefinition* noundef %0, i8* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iobank0_status_ctrl_hw_t, align 4
  store i32 %2, i32* %4, align 4, !tbaa !18
  %6 = bitcast %struct.iobank0_status_ctrl_hw_t* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #30
  call void @vPortEnterCritical() #30
  %7 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5
  %8 = load volatile i32, i32* %7, align 4, !tbaa !374
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 8
  %12 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 9
  %13 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 4
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %58, label %26

15:                                               ; preds = %52, %3
  %16 = phi i32 [ %8, %3 ], [ %53, %52 ]
  call fastcc void @prvCopyDataFromQueue(%struct.QueueDefinition* noundef nonnull %0, i8* noundef %1)
  %17 = add i32 %16, -1
  store volatile i32 %17, i32* %7, align 4, !tbaa !374
  %18 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 3
  %19 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %18, i32 0, i32 0
  %20 = load volatile i32, i32* %19, align 4, !tbaa !378
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %58, label %22

22:                                               ; preds = %15
  %23 = call i32 @xTaskRemoveFromEventList(%struct.xLIST* noundef nonnull %18) #30
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %58, label %25

25:                                               ; preds = %22
  call void @vPortYield() #30
  br label %58

26:                                               ; preds = %10
  call void @vTaskInternalSetTimeOutState(%struct.iobank0_status_ctrl_hw_t* noundef nonnull %5) #30
  br label %27

27:                                               ; preds = %55, %26
  call void @vPortExitCritical() #30
  call void @vTaskSuspendAll() #30
  call void @vPortEnterCritical() #30
  %28 = load volatile i8, i8* %11, align 4, !tbaa !376
  %29 = icmp eq i8 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store volatile i8 0, i8* %11, align 4, !tbaa !376
  br label %31

31:                                               ; preds = %30, %27
  %32 = load volatile i8, i8* %12, align 1, !tbaa !377
  %33 = icmp eq i8 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store volatile i8 0, i8* %12, align 1, !tbaa !377
  br label %35

35:                                               ; preds = %34, %31
  call void @vPortExitCritical() #30
  %36 = call i32 @xTaskCheckForTimeOut(%struct.iobank0_status_ctrl_hw_t* noundef nonnull %5, i32* noundef nonnull %4) #30
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = call fastcc i32 @prvIsQueueEmpty(%struct.QueueDefinition* noundef nonnull %0)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %4, align 4, !tbaa !18
  call void @vTaskPlaceOnEventList(%struct.xLIST* noundef nonnull %13, i32 noundef %42) #30
  call fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef nonnull %0)
  %43 = call i32 @xTaskResumeAll() #30
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  call void @vPortYield() #30
  br label %52

46:                                               ; preds = %38
  call fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef nonnull %0)
  %47 = call i32 @xTaskResumeAll() #30
  br label %52

48:                                               ; preds = %35
  call fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef nonnull %0)
  %49 = call i32 @xTaskResumeAll() #30
  %50 = call fastcc i32 @prvIsQueueEmpty(%struct.QueueDefinition* noundef nonnull %0)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %48, %46, %41, %45
  call void @vPortEnterCritical() #30
  %53 = load volatile i32, i32* %7, align 4, !tbaa !374
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %15

55:                                               ; preds = %52
  %56 = load i32, i32* %4, align 4, !tbaa !18
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %27

58:                                               ; preds = %55, %10, %22, %25, %15
  %59 = phi i32 [ 1, %15 ], [ 1, %25 ], [ 1, %22 ], [ 0, %10 ], [ 0, %55 ]
  call void @vPortExitCritical() #30
  br label %60

60:                                               ; preds = %48, %58
  %61 = phi i32 [ %59, %58 ], [ 0, %48 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #30
  ret i32 %61
}

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn
define internal fastcc void @prvCopyDataFromQueue(%struct.QueueDefinition* nocapture noundef %0, i8* nocapture noundef writeonly %1) unnamed_addr #26 {
  %3 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 7
  %4 = load i32, i32* %3, align 4, !tbaa !372
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2, i32 0, i32 1
  %8 = load i8*, i8** %7, align 4, !tbaa !8
  %9 = getelementptr inbounds i8, i8* %8, i32 %4
  store i8* %9, i8** %7, align 4, !tbaa !8
  %10 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2, i32 0, i32 0
  %11 = load i8*, i8** %10, align 4, !tbaa !8
  %12 = icmp ult i8* %9, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 0
  %15 = load i8*, i8** %14, align 4, !tbaa !373
  store i8* %15, i8** %7, align 4, !tbaa !8
  br label %16

16:                                               ; preds = %6, %13
  %17 = phi i8* [ %9, %6 ], [ %15, %13 ]
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %1, i8* align 1 %17, i32 %4, i1 false)
  br label %18

18:                                               ; preds = %16, %2
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc i32 @prvIsQueueEmpty(%struct.QueueDefinition* noundef %0) unnamed_addr #3 {
  tail call void @vPortEnterCritical() #30
  %2 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5
  %3 = load volatile i32, i32* %2, align 4, !tbaa !374
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i32
  tail call void @vPortExitCritical() #30
  ret i32 %5
}

; Function Attrs: noinline nounwind
define dso_local i32 @xQueueSemaphoreTake(%struct.QueueDefinition* noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iobank0_status_ctrl_hw_t, align 4
  store i32 %1, i32* %3, align 4, !tbaa !18
  %5 = bitcast %struct.iobank0_status_ctrl_hw_t* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #30
  call void @vPortEnterCritical() #30
  %6 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5
  %7 = load volatile i32, i32* %6, align 4, !tbaa !374
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 8
  %11 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 9
  %12 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 4
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %57, label %25

14:                                               ; preds = %51, %2
  %15 = phi i32 [ %7, %2 ], [ %52, %51 ]
  %16 = add i32 %15, -1
  store volatile i32 %16, i32* %6, align 4, !tbaa !374
  %17 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 3
  %18 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %17, i32 0, i32 0
  %19 = load volatile i32, i32* %18, align 4, !tbaa !378
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %57, label %21

21:                                               ; preds = %14
  %22 = call i32 @xTaskRemoveFromEventList(%struct.xLIST* noundef nonnull %17) #30
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %57, label %24

24:                                               ; preds = %21
  call void @vPortYield() #30
  br label %57

25:                                               ; preds = %9
  call void @vTaskInternalSetTimeOutState(%struct.iobank0_status_ctrl_hw_t* noundef nonnull %4) #30
  br label %26

26:                                               ; preds = %54, %25
  call void @vPortExitCritical() #30
  call void @vTaskSuspendAll() #30
  call void @vPortEnterCritical() #30
  %27 = load volatile i8, i8* %10, align 4, !tbaa !376
  %28 = icmp eq i8 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store volatile i8 0, i8* %10, align 4, !tbaa !376
  br label %30

30:                                               ; preds = %29, %26
  %31 = load volatile i8, i8* %11, align 1, !tbaa !377
  %32 = icmp eq i8 %31, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store volatile i8 0, i8* %11, align 1, !tbaa !377
  br label %34

34:                                               ; preds = %33, %30
  call void @vPortExitCritical() #30
  %35 = call i32 @xTaskCheckForTimeOut(%struct.iobank0_status_ctrl_hw_t* noundef nonnull %4, i32* noundef nonnull %3) #30
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = call fastcc i32 @prvIsQueueEmpty(%struct.QueueDefinition* noundef nonnull %0)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %3, align 4, !tbaa !18
  call void @vTaskPlaceOnEventList(%struct.xLIST* noundef nonnull %12, i32 noundef %41) #30
  call fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef nonnull %0)
  %42 = call i32 @xTaskResumeAll() #30
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  call void @vPortYield() #30
  br label %51

45:                                               ; preds = %37
  call fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef nonnull %0)
  %46 = call i32 @xTaskResumeAll() #30
  br label %51

47:                                               ; preds = %34
  call fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef nonnull %0)
  %48 = call i32 @xTaskResumeAll() #30
  %49 = call fastcc i32 @prvIsQueueEmpty(%struct.QueueDefinition* noundef nonnull %0)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %47, %45, %40, %44
  call void @vPortEnterCritical() #30
  %52 = load volatile i32, i32* %6, align 4, !tbaa !374
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %14

54:                                               ; preds = %51
  %55 = load i32, i32* %3, align 4, !tbaa !18
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %26

57:                                               ; preds = %54, %9, %21, %24, %14
  %58 = phi i32 [ 1, %14 ], [ 1, %24 ], [ 1, %21 ], [ 0, %9 ], [ 0, %54 ]
  call void @vPortExitCritical() #30
  br label %59

59:                                               ; preds = %47, %57
  %60 = phi i32 [ %58, %57 ], [ 0, %47 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #30
  ret i32 %60
}

; Function Attrs: noinline nounwind
define dso_local i32 @xQueuePeek(%struct.QueueDefinition* noundef %0, i8* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iobank0_status_ctrl_hw_t, align 4
  store i32 %2, i32* %4, align 4, !tbaa !18
  %6 = bitcast %struct.iobank0_status_ctrl_hw_t* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #30
  call void @vPortEnterCritical() #30
  %7 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5
  %8 = load volatile i32, i32* %7, align 4, !tbaa !374
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 8
  %12 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 9
  %13 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 4
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %58, label %26

15:                                               ; preds = %52, %3
  %16 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2, i32 0, i32 1
  %17 = load i8*, i8** %16, align 4, !tbaa !8
  call fastcc void @prvCopyDataFromQueue(%struct.QueueDefinition* noundef nonnull %0, i8* noundef %1)
  store i8* %17, i8** %16, align 4, !tbaa !8
  %18 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 4
  %19 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %18, i32 0, i32 0
  %20 = load volatile i32, i32* %19, align 4, !tbaa !379
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %58, label %22

22:                                               ; preds = %15
  %23 = call i32 @xTaskRemoveFromEventList(%struct.xLIST* noundef nonnull %18) #30
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %58, label %25

25:                                               ; preds = %22
  call void @vPortYield() #30
  br label %58

26:                                               ; preds = %10
  call void @vTaskInternalSetTimeOutState(%struct.iobank0_status_ctrl_hw_t* noundef nonnull %5) #30
  br label %27

27:                                               ; preds = %55, %26
  call void @vPortExitCritical() #30
  call void @vTaskSuspendAll() #30
  call void @vPortEnterCritical() #30
  %28 = load volatile i8, i8* %11, align 4, !tbaa !376
  %29 = icmp eq i8 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store volatile i8 0, i8* %11, align 4, !tbaa !376
  br label %31

31:                                               ; preds = %30, %27
  %32 = load volatile i8, i8* %12, align 1, !tbaa !377
  %33 = icmp eq i8 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store volatile i8 0, i8* %12, align 1, !tbaa !377
  br label %35

35:                                               ; preds = %34, %31
  call void @vPortExitCritical() #30
  %36 = call i32 @xTaskCheckForTimeOut(%struct.iobank0_status_ctrl_hw_t* noundef nonnull %5, i32* noundef nonnull %4) #30
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = call fastcc i32 @prvIsQueueEmpty(%struct.QueueDefinition* noundef nonnull %0)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %4, align 4, !tbaa !18
  call void @vTaskPlaceOnEventList(%struct.xLIST* noundef nonnull %13, i32 noundef %42) #30
  call fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef nonnull %0)
  %43 = call i32 @xTaskResumeAll() #30
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  call void @vPortYield() #30
  br label %52

46:                                               ; preds = %38
  call fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef nonnull %0)
  %47 = call i32 @xTaskResumeAll() #30
  br label %52

48:                                               ; preds = %35
  call fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef nonnull %0)
  %49 = call i32 @xTaskResumeAll() #30
  %50 = call fastcc i32 @prvIsQueueEmpty(%struct.QueueDefinition* noundef nonnull %0)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %48, %46, %41, %45
  call void @vPortEnterCritical() #30
  %53 = load volatile i32, i32* %7, align 4, !tbaa !374
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %15

55:                                               ; preds = %52
  %56 = load i32, i32* %4, align 4, !tbaa !18
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %27

58:                                               ; preds = %55, %10, %22, %25, %15
  %59 = phi i32 [ 1, %15 ], [ 1, %25 ], [ 1, %22 ], [ 0, %10 ], [ 0, %55 ]
  call void @vPortExitCritical() #30
  br label %60

60:                                               ; preds = %48, %58
  %61 = phi i32 [ %59, %58 ], [ 0, %48 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #30
  ret i32 %61
}

; Function Attrs: noinline nounwind
define dso_local i32 @xQueueReceiveFromISR(%struct.QueueDefinition* noundef %0, i8* nocapture noundef writeonly %1, i32* noundef writeonly %2) local_unnamed_addr #3 {
  %4 = tail call i32 @ulSetInterruptMaskFromISR() #30
  %5 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5
  %6 = load volatile i32, i32* %5, align 4, !tbaa !374
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 8
  %10 = load volatile i8, i8* %9, align 4, !tbaa !376
  tail call fastcc void @prvCopyDataFromQueue(%struct.QueueDefinition* noundef nonnull %0, i8* noundef %1)
  %11 = add i32 %6, -1
  store volatile i32 %11, i32* %5, align 4, !tbaa !374
  %12 = icmp eq i8 %10, -1
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 3
  %15 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %14, i32 0, i32 0
  %16 = load volatile i32, i32* %15, align 4, !tbaa !378
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %13
  %19 = tail call i32 @xTaskRemoveFromEventList(%struct.xLIST* noundef nonnull %14) #30
  %20 = icmp ne i32 %19, 0
  %21 = icmp ne i32* %2, null
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  store i32 1, i32* %2, align 4, !tbaa !382
  br label %30

24:                                               ; preds = %8
  %25 = sext i8 %10 to i32
  %26 = tail call i32 @uxTaskGetNumberOfTasks() #30
  %27 = icmp ugt i32 %26, %25
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = add nuw i8 %10, 1
  store volatile i8 %29, i8* %9, align 4, !tbaa !376
  br label %30

30:                                               ; preds = %3, %13, %23, %18, %28, %24
  %31 = phi i32 [ 1, %24 ], [ 1, %28 ], [ 1, %18 ], [ 1, %23 ], [ 1, %13 ], [ 0, %3 ]
  tail call void @vClearInterruptMaskFromISR(i32 noundef %4) #30
  ret i32 %31
}

; Function Attrs: noinline nounwind
define dso_local i32 @xQueuePeekFromISR(%struct.QueueDefinition* noundef %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #3 {
  %3 = tail call i32 @ulSetInterruptMaskFromISR() #30
  %4 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5
  %5 = load volatile i32, i32* %4, align 4, !tbaa !374
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 2, i32 0, i32 1
  %9 = load i8*, i8** %8, align 4, !tbaa !8
  tail call fastcc void @prvCopyDataFromQueue(%struct.QueueDefinition* noundef nonnull %0, i8* noundef %1)
  store i8* %9, i8** %8, align 4, !tbaa !8
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi i32 [ 1, %7 ], [ 0, %2 ]
  tail call void @vClearInterruptMaskFromISR(i32 noundef %3) #30
  ret i32 %11
}

; Function Attrs: noinline nounwind
define dso_local i32 @uxQueueMessagesWaiting(%struct.QueueDefinition* noundef %0) local_unnamed_addr #3 {
  tail call void @vPortEnterCritical() #30
  %2 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5
  %3 = load volatile i32, i32* %2, align 4, !tbaa !374
  tail call void @vPortExitCritical() #30
  ret i32 %3
}

; Function Attrs: noinline nounwind
define dso_local i32 @uxQueueSpacesAvailable(%struct.QueueDefinition* noundef %0) local_unnamed_addr #3 {
  tail call void @vPortEnterCritical() #30
  %2 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 6
  %3 = load i32, i32* %2, align 4, !tbaa !367
  %4 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5
  %5 = load volatile i32, i32* %4, align 4, !tbaa !374
  %6 = sub i32 %3, %5
  tail call void @vPortExitCritical() #30
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local i32 @uxQueueMessagesWaitingFromISR(%struct.QueueDefinition* noundef %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5
  %3 = load volatile i32, i32* %2, align 4, !tbaa !374
  ret i32 %3
}

; Function Attrs: noinline nounwind
define dso_local void @vQueueDelete(%struct.QueueDefinition* noundef %0) local_unnamed_addr #3 {
  tail call void @vQueueUnregisterQueue(%struct.QueueDefinition* noundef %0)
  %2 = bitcast %struct.QueueDefinition* %0 to i8*
  tail call void @vPortFree(i8* noundef %2) #30
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind
define dso_local void @vQueueUnregisterQueue(%struct.QueueDefinition* noundef readnone %0) local_unnamed_addr #17 {
  %2 = load %struct.QueueDefinition*, %struct.QueueDefinition** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 0, i32 1), align 4, !tbaa !383
  %3 = icmp eq %struct.QueueDefinition* %2, %0
  br i1 %3, label %4, label %8

4:                                                ; preds = %32, %29, %26, %23, %20, %17, %14, %11, %8, %1
  %5 = phi i32 [ 0, %1 ], [ 1, %8 ], [ 2, %11 ], [ 3, %14 ], [ 4, %17 ], [ 5, %20 ], [ 6, %23 ], [ 7, %26 ], [ 8, %29 ], [ 9, %32 ]
  %6 = phi %struct.QueueDefinition** [ getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 0, i32 1), %1 ], [ getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 1, i32 1), %8 ], [ getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 2, i32 1), %11 ], [ getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 3, i32 1), %14 ], [ getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 4, i32 1), %17 ], [ getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 5, i32 1), %20 ], [ getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 6, i32 1), %23 ], [ getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 7, i32 1), %26 ], [ getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 8, i32 1), %29 ], [ getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 9, i32 1), %32 ]
  %7 = getelementptr inbounds [10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 %5, i32 0
  store i8* null, i8** %7, align 4, !tbaa !385
  store %struct.QueueDefinition* null, %struct.QueueDefinition** %6, align 4, !tbaa !383
  br label %35

8:                                                ; preds = %1
  %9 = load %struct.QueueDefinition*, %struct.QueueDefinition** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 1, i32 1), align 4, !tbaa !383
  %10 = icmp eq %struct.QueueDefinition* %9, %0
  br i1 %10, label %4, label %11

11:                                               ; preds = %8
  %12 = load %struct.QueueDefinition*, %struct.QueueDefinition** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 2, i32 1), align 4, !tbaa !383
  %13 = icmp eq %struct.QueueDefinition* %12, %0
  br i1 %13, label %4, label %14

14:                                               ; preds = %11
  %15 = load %struct.QueueDefinition*, %struct.QueueDefinition** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 3, i32 1), align 4, !tbaa !383
  %16 = icmp eq %struct.QueueDefinition* %15, %0
  br i1 %16, label %4, label %17

17:                                               ; preds = %14
  %18 = load %struct.QueueDefinition*, %struct.QueueDefinition** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 4, i32 1), align 4, !tbaa !383
  %19 = icmp eq %struct.QueueDefinition* %18, %0
  br i1 %19, label %4, label %20

20:                                               ; preds = %17
  %21 = load %struct.QueueDefinition*, %struct.QueueDefinition** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 5, i32 1), align 4, !tbaa !383
  %22 = icmp eq %struct.QueueDefinition* %21, %0
  br i1 %22, label %4, label %23

23:                                               ; preds = %20
  %24 = load %struct.QueueDefinition*, %struct.QueueDefinition** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 6, i32 1), align 4, !tbaa !383
  %25 = icmp eq %struct.QueueDefinition* %24, %0
  br i1 %25, label %4, label %26

26:                                               ; preds = %23
  %27 = load %struct.QueueDefinition*, %struct.QueueDefinition** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 7, i32 1), align 4, !tbaa !383
  %28 = icmp eq %struct.QueueDefinition* %27, %0
  br i1 %28, label %4, label %29

29:                                               ; preds = %26
  %30 = load %struct.QueueDefinition*, %struct.QueueDefinition** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 8, i32 1), align 4, !tbaa !383
  %31 = icmp eq %struct.QueueDefinition* %30, %0
  br i1 %31, label %4, label %32

32:                                               ; preds = %29
  %33 = load %struct.QueueDefinition*, %struct.QueueDefinition** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 9, i32 1), align 4, !tbaa !383
  %34 = icmp eq %struct.QueueDefinition* %33, %0
  br i1 %34, label %4, label %35

35:                                               ; preds = %32, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local i32 @xQueueIsQueueEmptyFromISR(%struct.QueueDefinition* noundef %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5
  %3 = load volatile i32, i32* %2, align 4, !tbaa !374
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local i32 @xQueueIsQueueFullFromISR(%struct.QueueDefinition* noundef %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5
  %3 = load volatile i32, i32* %2, align 4, !tbaa !374
  %4 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 6
  %5 = load i32, i32* %4, align 4, !tbaa !367
  %6 = icmp eq i32 %3, %5
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind
define dso_local void @vQueueAddToRegistry(%struct.QueueDefinition* noundef %0, i8* noundef %1) local_unnamed_addr #17 {
  %3 = icmp eq i8* %1, null
  br i1 %3, label %84, label %4

4:                                                ; preds = %2
  %5 = load %struct.QueueDefinition*, %struct.QueueDefinition** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 0, i32 1), align 4, !tbaa !383
  %6 = icmp eq %struct.QueueDefinition* %5, %0
  br i1 %6, label %80, label %7

7:                                                ; preds = %4
  %8 = load %struct.QueueDefinition*, %struct.QueueDefinition** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 1, i32 1), align 4, !tbaa !383
  %9 = icmp eq %struct.QueueDefinition* %8, %0
  br i1 %9, label %80, label %10

10:                                               ; preds = %7
  %11 = load i8*, i8** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 0, i32 0), align 4, !tbaa !385
  %12 = icmp eq i8* %11, null
  %13 = load i8*, i8** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 1, i32 0), align 4
  %14 = icmp eq i8* %13, null
  %15 = select i1 %14, %struct.QUEUE_REGISTRY_ITEM* getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 1), %struct.QUEUE_REGISTRY_ITEM* null
  %16 = select i1 %12, %struct.QUEUE_REGISTRY_ITEM* getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 0), %struct.QUEUE_REGISTRY_ITEM* %15
  %17 = load %struct.QueueDefinition*, %struct.QueueDefinition** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 2, i32 1), align 4, !tbaa !383
  %18 = icmp eq %struct.QueueDefinition* %17, %0
  br i1 %18, label %80, label %19

19:                                               ; preds = %10
  %20 = icmp eq %struct.QUEUE_REGISTRY_ITEM* %16, null
  %21 = load i8*, i8** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 2, i32 0), align 4
  %22 = icmp eq i8* %21, null
  %23 = select i1 %22, %struct.QUEUE_REGISTRY_ITEM* getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 2), %struct.QUEUE_REGISTRY_ITEM* null
  %24 = select i1 %20, %struct.QUEUE_REGISTRY_ITEM* %23, %struct.QUEUE_REGISTRY_ITEM* %16
  %25 = load %struct.QueueDefinition*, %struct.QueueDefinition** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 3, i32 1), align 4, !tbaa !383
  %26 = icmp eq %struct.QueueDefinition* %25, %0
  br i1 %26, label %80, label %27

27:                                               ; preds = %19
  %28 = icmp eq %struct.QUEUE_REGISTRY_ITEM* %24, null
  %29 = load i8*, i8** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 3, i32 0), align 4
  %30 = icmp eq i8* %29, null
  %31 = select i1 %30, %struct.QUEUE_REGISTRY_ITEM* getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 3), %struct.QUEUE_REGISTRY_ITEM* null
  %32 = select i1 %28, %struct.QUEUE_REGISTRY_ITEM* %31, %struct.QUEUE_REGISTRY_ITEM* %24
  %33 = load %struct.QueueDefinition*, %struct.QueueDefinition** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 4, i32 1), align 4, !tbaa !383
  %34 = icmp eq %struct.QueueDefinition* %33, %0
  br i1 %34, label %80, label %35

35:                                               ; preds = %27
  %36 = icmp eq %struct.QUEUE_REGISTRY_ITEM* %32, null
  %37 = load i8*, i8** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 4, i32 0), align 4
  %38 = icmp eq i8* %37, null
  %39 = select i1 %38, %struct.QUEUE_REGISTRY_ITEM* getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 4), %struct.QUEUE_REGISTRY_ITEM* null
  %40 = select i1 %36, %struct.QUEUE_REGISTRY_ITEM* %39, %struct.QUEUE_REGISTRY_ITEM* %32
  %41 = load %struct.QueueDefinition*, %struct.QueueDefinition** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 5, i32 1), align 4, !tbaa !383
  %42 = icmp eq %struct.QueueDefinition* %41, %0
  br i1 %42, label %80, label %43

43:                                               ; preds = %35
  %44 = icmp eq %struct.QUEUE_REGISTRY_ITEM* %40, null
  %45 = load i8*, i8** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 5, i32 0), align 4
  %46 = icmp eq i8* %45, null
  %47 = select i1 %46, %struct.QUEUE_REGISTRY_ITEM* getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 5), %struct.QUEUE_REGISTRY_ITEM* null
  %48 = select i1 %44, %struct.QUEUE_REGISTRY_ITEM* %47, %struct.QUEUE_REGISTRY_ITEM* %40
  %49 = load %struct.QueueDefinition*, %struct.QueueDefinition** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 6, i32 1), align 4, !tbaa !383
  %50 = icmp eq %struct.QueueDefinition* %49, %0
  br i1 %50, label %80, label %51

51:                                               ; preds = %43
  %52 = icmp eq %struct.QUEUE_REGISTRY_ITEM* %48, null
  %53 = load i8*, i8** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 6, i32 0), align 4
  %54 = icmp eq i8* %53, null
  %55 = select i1 %54, %struct.QUEUE_REGISTRY_ITEM* getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 6), %struct.QUEUE_REGISTRY_ITEM* null
  %56 = select i1 %52, %struct.QUEUE_REGISTRY_ITEM* %55, %struct.QUEUE_REGISTRY_ITEM* %48
  %57 = load %struct.QueueDefinition*, %struct.QueueDefinition** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 7, i32 1), align 4, !tbaa !383
  %58 = icmp eq %struct.QueueDefinition* %57, %0
  br i1 %58, label %80, label %59

59:                                               ; preds = %51
  %60 = icmp eq %struct.QUEUE_REGISTRY_ITEM* %56, null
  %61 = load i8*, i8** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 7, i32 0), align 4
  %62 = icmp eq i8* %61, null
  %63 = select i1 %62, %struct.QUEUE_REGISTRY_ITEM* getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 7), %struct.QUEUE_REGISTRY_ITEM* null
  %64 = select i1 %60, %struct.QUEUE_REGISTRY_ITEM* %63, %struct.QUEUE_REGISTRY_ITEM* %56
  %65 = load %struct.QueueDefinition*, %struct.QueueDefinition** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 8, i32 1), align 4, !tbaa !383
  %66 = icmp eq %struct.QueueDefinition* %65, %0
  br i1 %66, label %80, label %67

67:                                               ; preds = %59
  %68 = icmp eq %struct.QUEUE_REGISTRY_ITEM* %64, null
  %69 = load i8*, i8** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 8, i32 0), align 4
  %70 = icmp eq i8* %69, null
  %71 = select i1 %70, %struct.QUEUE_REGISTRY_ITEM* getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 8), %struct.QUEUE_REGISTRY_ITEM* null
  %72 = select i1 %68, %struct.QUEUE_REGISTRY_ITEM* %71, %struct.QUEUE_REGISTRY_ITEM* %64
  %73 = load %struct.QueueDefinition*, %struct.QueueDefinition** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 9, i32 1), align 4, !tbaa !383
  %74 = icmp eq %struct.QueueDefinition* %73, %0
  br i1 %74, label %80, label %75

75:                                               ; preds = %67
  %76 = icmp eq %struct.QUEUE_REGISTRY_ITEM* %72, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %75
  %78 = load i8*, i8** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 9, i32 0), align 4, !tbaa !385
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %77, %75, %4, %7, %10, %19, %27, %35, %43, %51, %59, %67
  %81 = phi %struct.QUEUE_REGISTRY_ITEM* [ getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 0), %4 ], [ getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 1), %7 ], [ getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 2), %10 ], [ getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 3), %19 ], [ getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 4), %27 ], [ getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 5), %35 ], [ getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 6), %43 ], [ getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 7), %51 ], [ getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 8), %59 ], [ getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 9), %67 ], [ %72, %75 ], [ getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 9), %77 ]
  %82 = getelementptr inbounds %struct.QUEUE_REGISTRY_ITEM, %struct.QUEUE_REGISTRY_ITEM* %81, i32 0, i32 0
  store i8* %1, i8** %82, align 4, !tbaa !385
  %83 = getelementptr inbounds %struct.QUEUE_REGISTRY_ITEM, %struct.QUEUE_REGISTRY_ITEM* %81, i32 0, i32 1
  store %struct.QueueDefinition* %0, %struct.QueueDefinition** %83, align 4, !tbaa !383
  br label %84

84:                                               ; preds = %77, %2, %80
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly
define dso_local i8* @pcQueueGetName(%struct.QueueDefinition* noundef readnone %0) local_unnamed_addr #23 {
  %2 = load %struct.QueueDefinition*, %struct.QueueDefinition** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 0, i32 1), align 4, !tbaa !383
  %3 = icmp eq %struct.QueueDefinition* %2, %0
  br i1 %3, label %4, label %8

4:                                                ; preds = %32, %29, %26, %23, %20, %17, %14, %11, %8, %1
  %5 = phi i32 [ 0, %1 ], [ 1, %8 ], [ 2, %11 ], [ 3, %14 ], [ 4, %17 ], [ 5, %20 ], [ 6, %23 ], [ 7, %26 ], [ 8, %29 ], [ 9, %32 ]
  %6 = getelementptr inbounds [10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 %5, i32 0
  %7 = load i8*, i8** %6, align 4, !tbaa !385
  br label %35

8:                                                ; preds = %1
  %9 = load %struct.QueueDefinition*, %struct.QueueDefinition** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 1, i32 1), align 4, !tbaa !383
  %10 = icmp eq %struct.QueueDefinition* %9, %0
  br i1 %10, label %4, label %11

11:                                               ; preds = %8
  %12 = load %struct.QueueDefinition*, %struct.QueueDefinition** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 2, i32 1), align 4, !tbaa !383
  %13 = icmp eq %struct.QueueDefinition* %12, %0
  br i1 %13, label %4, label %14

14:                                               ; preds = %11
  %15 = load %struct.QueueDefinition*, %struct.QueueDefinition** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 3, i32 1), align 4, !tbaa !383
  %16 = icmp eq %struct.QueueDefinition* %15, %0
  br i1 %16, label %4, label %17

17:                                               ; preds = %14
  %18 = load %struct.QueueDefinition*, %struct.QueueDefinition** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 4, i32 1), align 4, !tbaa !383
  %19 = icmp eq %struct.QueueDefinition* %18, %0
  br i1 %19, label %4, label %20

20:                                               ; preds = %17
  %21 = load %struct.QueueDefinition*, %struct.QueueDefinition** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 5, i32 1), align 4, !tbaa !383
  %22 = icmp eq %struct.QueueDefinition* %21, %0
  br i1 %22, label %4, label %23

23:                                               ; preds = %20
  %24 = load %struct.QueueDefinition*, %struct.QueueDefinition** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 6, i32 1), align 4, !tbaa !383
  %25 = icmp eq %struct.QueueDefinition* %24, %0
  br i1 %25, label %4, label %26

26:                                               ; preds = %23
  %27 = load %struct.QueueDefinition*, %struct.QueueDefinition** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 7, i32 1), align 4, !tbaa !383
  %28 = icmp eq %struct.QueueDefinition* %27, %0
  br i1 %28, label %4, label %29

29:                                               ; preds = %26
  %30 = load %struct.QueueDefinition*, %struct.QueueDefinition** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 8, i32 1), align 4, !tbaa !383
  %31 = icmp eq %struct.QueueDefinition* %30, %0
  br i1 %31, label %4, label %32

32:                                               ; preds = %29
  %33 = load %struct.QueueDefinition*, %struct.QueueDefinition** getelementptr inbounds ([10 x %struct.QUEUE_REGISTRY_ITEM], [10 x %struct.QUEUE_REGISTRY_ITEM]* @xQueueRegistry, i32 0, i32 9, i32 1), align 4, !tbaa !383
  %34 = icmp eq %struct.QueueDefinition* %33, %0
  br i1 %34, label %4, label %35

35:                                               ; preds = %32, %4
  %36 = phi i8* [ %7, %4 ], [ null, %32 ]
  ret i8* %36
}

; Function Attrs: noinline nounwind
define dso_local void @vQueueWaitForMessageRestricted(%struct.QueueDefinition* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  tail call void @vPortEnterCritical() #30
  %4 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 8
  %5 = load volatile i8, i8* %4, align 4, !tbaa !376
  %6 = icmp eq i8 %5, -1
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store volatile i8 0, i8* %4, align 4, !tbaa !376
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 9
  %10 = load volatile i8, i8* %9, align 1, !tbaa !377
  %11 = icmp eq i8 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store volatile i8 0, i8* %9, align 1, !tbaa !377
  br label %13

13:                                               ; preds = %12, %8
  tail call void @vPortExitCritical() #30
  %14 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 5
  %15 = load volatile i32, i32* %14, align 4, !tbaa !374
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.QueueDefinition, %struct.QueueDefinition* %0, i32 0, i32 4
  tail call void @vTaskPlaceOnEventListRestricted(%struct.xLIST* noundef nonnull %18, i32 noundef %1, i32 noundef %2) #30
  br label %19

19:                                               ; preds = %13, %17
  tail call fastcc void @prvUnlockQueue(%struct.QueueDefinition* noundef nonnull %0)
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @vTaskSwitchContext() #2 {
  %1 = load volatile i32, i32* @uxSchedulerSuspended, align 4, !tbaa !382
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  store volatile i32 1, i32* @xYieldPending, align 4, !tbaa !382
  br label %44

4:                                                ; preds = %0
  store volatile i32 0, i32* @xYieldPending, align 4, !tbaa !382
  %5 = load volatile i32, i32* @uxTopReadyPriority, align 4, !tbaa !382
  br label %6

6:                                                ; preds = %22, %4
  %7 = phi i32 [ %5, %4 ], [ %26, %22 ]
  %8 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %7, i32 0
  %9 = load volatile i32, i32* %8, align 4, !tbaa !386
  %10 = icmp eq i32 %9, 0
  %11 = add i32 %7, -1
  br i1 %10, label %12, label %27, !llvm.loop !387

12:                                               ; preds = %6
  %13 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %11, i32 0
  %14 = load volatile i32, i32* %13, align 4, !tbaa !386
  %15 = icmp eq i32 %14, 0
  %16 = add i32 %7, -2
  br i1 %15, label %17, label %27, !llvm.loop !387

17:                                               ; preds = %12
  %18 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %16, i32 0
  %19 = load volatile i32, i32* %18, align 4, !tbaa !386
  %20 = icmp eq i32 %19, 0
  %21 = add i32 %7, -3
  br i1 %20, label %22, label %27, !llvm.loop !387

22:                                               ; preds = %17
  %23 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %21, i32 0
  %24 = load volatile i32, i32* %23, align 4, !tbaa !386
  %25 = icmp eq i32 %24, 0
  %26 = add i32 %7, -4
  br i1 %25, label %6, label %27, !llvm.loop !387

27:                                               ; preds = %22, %17, %12, %6
  %28 = phi i32 [ %7, %6 ], [ %11, %12 ], [ %16, %17 ], [ %21, %22 ]
  %29 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %28, i32 1
  %30 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %29, align 4, !tbaa !388
  %31 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %30, i32 0, i32 1
  %32 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %31, align 4, !tbaa !389
  store %struct.xLIST_ITEM* %32, %struct.xLIST_ITEM** %29, align 4, !tbaa !388
  %33 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %28, i32 2
  %34 = bitcast %struct.xMINI_LIST_ITEM* %33 to %struct.xLIST_ITEM*
  %35 = icmp eq %struct.xLIST_ITEM* %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %32, i32 0, i32 1
  %38 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %37, align 4, !tbaa !389
  store %struct.xLIST_ITEM* %38, %struct.xLIST_ITEM** %29, align 4, !tbaa !388
  br label %39

39:                                               ; preds = %36, %27
  %40 = phi %struct.xLIST_ITEM* [ %38, %36 ], [ %32, %27 ]
  %41 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %40, i32 0, i32 3
  %42 = bitcast i8** %41 to %struct.tskTaskControlBlock**
  %43 = load %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** %42, align 4, !tbaa !391
  store volatile %struct.tskTaskControlBlock* %43, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  store volatile i32 %28, i32* @uxTopReadyPriority, align 4, !tbaa !382
  br label %44

44:                                               ; preds = %39, %3
  ret void
}

; Function Attrs: noinline nounwind
define dso_local i32 @xTaskCreate(void (i8*)* noundef %0, i8* noundef %1, i16 noundef zeroext %2, i8* noundef %3, i32 noundef %4, %struct.tskTaskControlBlock** noundef %5) local_unnamed_addr #3 {
  %7 = zext i16 %2 to i32
  %8 = shl nuw nsw i32 %7, 2
  %9 = tail call i8* @pvPortMalloc(i32 noundef %8) #30
  %10 = icmp eq i8* %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %6
  %12 = tail call i8* @pvPortMalloc(i32 noundef 104) #30
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call void @vPortFree(i8* noundef nonnull %9) #30
  br label %19

15:                                               ; preds = %11
  %16 = bitcast i8* %12 to %struct.tskTaskControlBlock*
  tail call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(104) %12, i8 0, i32 104, i1 false)
  %17 = getelementptr inbounds i8, i8* %12, i32 48
  %18 = bitcast i8* %17 to i8**
  store i8* %9, i8** %18, align 4, !tbaa !392
  tail call fastcc void @prvInitialiseNewTask(void (i8*)* noundef %0, i8* noundef %1, i32 noundef %7, i8* noundef %3, i32 noundef %4, %struct.tskTaskControlBlock** noundef %5, %struct.tskTaskControlBlock* noundef nonnull %16)
  tail call fastcc void @prvAddNewTaskToReadyList(%struct.tskTaskControlBlock* noundef nonnull %16)
  br label %19

19:                                               ; preds = %6, %14, %15
  %20 = phi i32 [ 1, %15 ], [ -1, %14 ], [ -1, %6 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind
define internal fastcc void @prvInitialiseNewTask(void (i8*)* noundef %0, i8* noundef readonly %1, i32 noundef %2, i8* noundef %3, i32 noundef %4, %struct.tskTaskControlBlock** noundef writeonly %5, %struct.tskTaskControlBlock* noundef %6) unnamed_addr #3 {
  %8 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 4
  %9 = load i32*, i32** %8, align 4, !tbaa !392
  %10 = add i32 %2, -1
  %11 = getelementptr inbounds i32, i32* %9, i32 %10
  %12 = ptrtoint i32* %11 to i32
  %13 = and i32 %12, -8
  %14 = inttoptr i32 %13 to i32*
  %15 = icmp eq i8* %1, null
  br i1 %15, label %111, label %16

16:                                               ; preds = %7
  %17 = load i8, i8* %1, align 1, !tbaa !8
  %18 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 5, i32 0
  store i8 %17, i8* %18, align 1, !tbaa !8
  %19 = load i8, i8* %1, align 1, !tbaa !8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %109, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds i8, i8* %1, i32 1
  %23 = load i8, i8* %22, align 1, !tbaa !8
  %24 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 5, i32 1
  store i8 %23, i8* %24, align 1, !tbaa !8
  %25 = load i8, i8* %22, align 1, !tbaa !8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %109, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds i8, i8* %1, i32 2
  %29 = load i8, i8* %28, align 1, !tbaa !8
  %30 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 5, i32 2
  store i8 %29, i8* %30, align 1, !tbaa !8
  %31 = load i8, i8* %28, align 1, !tbaa !8
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %109, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds i8, i8* %1, i32 3
  %35 = load i8, i8* %34, align 1, !tbaa !8
  %36 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 5, i32 3
  store i8 %35, i8* %36, align 1, !tbaa !8
  %37 = load i8, i8* %34, align 1, !tbaa !8
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %109, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds i8, i8* %1, i32 4
  %41 = load i8, i8* %40, align 1, !tbaa !8
  %42 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 5, i32 4
  store i8 %41, i8* %42, align 1, !tbaa !8
  %43 = load i8, i8* %40, align 1, !tbaa !8
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %109, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds i8, i8* %1, i32 5
  %47 = load i8, i8* %46, align 1, !tbaa !8
  %48 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 5, i32 5
  store i8 %47, i8* %48, align 1, !tbaa !8
  %49 = load i8, i8* %46, align 1, !tbaa !8
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %109, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds i8, i8* %1, i32 6
  %53 = load i8, i8* %52, align 1, !tbaa !8
  %54 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 5, i32 6
  store i8 %53, i8* %54, align 1, !tbaa !8
  %55 = load i8, i8* %52, align 1, !tbaa !8
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %109, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds i8, i8* %1, i32 7
  %59 = load i8, i8* %58, align 1, !tbaa !8
  %60 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 5, i32 7
  store i8 %59, i8* %60, align 1, !tbaa !8
  %61 = load i8, i8* %58, align 1, !tbaa !8
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %109, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds i8, i8* %1, i32 8
  %65 = load i8, i8* %64, align 1, !tbaa !8
  %66 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 5, i32 8
  store i8 %65, i8* %66, align 1, !tbaa !8
  %67 = load i8, i8* %64, align 1, !tbaa !8
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %109, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds i8, i8* %1, i32 9
  %71 = load i8, i8* %70, align 1, !tbaa !8
  %72 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 5, i32 9
  store i8 %71, i8* %72, align 1, !tbaa !8
  %73 = load i8, i8* %70, align 1, !tbaa !8
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %109, label %75

75:                                               ; preds = %69
  %76 = getelementptr inbounds i8, i8* %1, i32 10
  %77 = load i8, i8* %76, align 1, !tbaa !8
  %78 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 5, i32 10
  store i8 %77, i8* %78, align 1, !tbaa !8
  %79 = load i8, i8* %76, align 1, !tbaa !8
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %109, label %81

81:                                               ; preds = %75
  %82 = getelementptr inbounds i8, i8* %1, i32 11
  %83 = load i8, i8* %82, align 1, !tbaa !8
  %84 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 5, i32 11
  store i8 %83, i8* %84, align 1, !tbaa !8
  %85 = load i8, i8* %82, align 1, !tbaa !8
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %109, label %87

87:                                               ; preds = %81
  %88 = getelementptr inbounds i8, i8* %1, i32 12
  %89 = load i8, i8* %88, align 1, !tbaa !8
  %90 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 5, i32 12
  store i8 %89, i8* %90, align 1, !tbaa !8
  %91 = load i8, i8* %88, align 1, !tbaa !8
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %109, label %93

93:                                               ; preds = %87
  %94 = getelementptr inbounds i8, i8* %1, i32 13
  %95 = load i8, i8* %94, align 1, !tbaa !8
  %96 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 5, i32 13
  store i8 %95, i8* %96, align 1, !tbaa !8
  %97 = load i8, i8* %94, align 1, !tbaa !8
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %109, label %99

99:                                               ; preds = %93
  %100 = getelementptr inbounds i8, i8* %1, i32 14
  %101 = load i8, i8* %100, align 1, !tbaa !8
  %102 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 5, i32 14
  store i8 %101, i8* %102, align 1, !tbaa !8
  %103 = load i8, i8* %100, align 1, !tbaa !8
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %99
  %106 = getelementptr inbounds i8, i8* %1, i32 15
  %107 = load i8, i8* %106, align 1, !tbaa !8
  %108 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 5, i32 15
  store i8 %107, i8* %108, align 1, !tbaa !8
  br label %109

109:                                              ; preds = %105, %99, %93, %87, %81, %75, %69, %63, %57, %51, %45, %39, %33, %27, %21, %16
  %110 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 5, i32 15
  store i8 0, i8* %110, align 1, !tbaa !8
  br label %111

111:                                              ; preds = %7, %109
  %112 = icmp ult i32 %4, 4
  %113 = select i1 %112, i32 %4, i32 4
  %114 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 3
  store i32 %113, i32* %114, align 4, !tbaa !394
  %115 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 1
  tail call void @vListInitialiseItem(%struct.xLIST_ITEM* noundef nonnull %115) #30
  %116 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 2
  tail call void @vListInitialiseItem(%struct.xLIST_ITEM* noundef nonnull %116) #30
  %117 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 1, i32 3
  %118 = bitcast i8** %117 to %struct.tskTaskControlBlock**
  store %struct.tskTaskControlBlock* %6, %struct.tskTaskControlBlock** %118, align 4, !tbaa !395
  %119 = sub nuw nsw i32 5, %113
  %120 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %116, i32 0, i32 0
  store i32 %119, i32* %120, align 4, !tbaa !396
  %121 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 2, i32 3
  %122 = bitcast i8** %121 to %struct.tskTaskControlBlock**
  store %struct.tskTaskControlBlock* %6, %struct.tskTaskControlBlock** %122, align 4, !tbaa !397
  %123 = tail call i32* @pxPortInitialiseStack(i32* noundef %14, void (i8*)* noundef %0, i8* noundef %3) #30
  %124 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 0
  store i32* %123, i32** %124, align 4, !tbaa !398
  %125 = icmp eq %struct.tskTaskControlBlock** %5, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %111
  store %struct.tskTaskControlBlock* %6, %struct.tskTaskControlBlock** %5, align 4, !tbaa !11
  br label %127

127:                                              ; preds = %111, %126
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc void @prvAddNewTaskToReadyList(%struct.tskTaskControlBlock* noundef %0) unnamed_addr #3 {
  tail call void @vPortEnterCritical() #30
  %2 = load volatile i32, i32* @uxCurrentNumberOfTasks, align 4, !tbaa !382
  %3 = add i32 %2, 1
  store volatile i32 %3, i32* @uxCurrentNumberOfTasks, align 4, !tbaa !382
  %4 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %5 = icmp eq %struct.tskTaskControlBlock* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  store volatile %struct.tskTaskControlBlock* %0, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %7 = load volatile i32, i32* @uxCurrentNumberOfTasks, align 4, !tbaa !382
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  tail call fastcc void @prvInitialiseTaskLists()
  br label %21

10:                                               ; preds = %1
  %11 = load volatile i32, i32* @xSchedulerRunning, align 4, !tbaa !382
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %15 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4, !tbaa !394
  %17 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 3
  %18 = load i32, i32* %17, align 4, !tbaa !394
  %19 = icmp ugt i32 %16, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  store volatile %struct.tskTaskControlBlock* %0, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  br label %21

21:                                               ; preds = %13, %20, %10, %9, %6
  %22 = load i32, i32* @uxTaskNumber, align 4, !tbaa !382
  %23 = add i32 %22, 1
  store i32 %23, i32* @uxTaskNumber, align 4, !tbaa !382
  %24 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 3
  %25 = load i32, i32* %24, align 4, !tbaa !394
  %26 = load volatile i32, i32* @uxTopReadyPriority, align 4, !tbaa !382
  %27 = icmp ugt i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store volatile i32 %25, i32* @uxTopReadyPriority, align 4, !tbaa !382
  br label %29

29:                                               ; preds = %28, %21
  %30 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %25, i32 1
  %31 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %30, align 4, !tbaa !388
  %32 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1
  %33 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1, i32 1
  store %struct.xLIST_ITEM* %31, %struct.xLIST_ITEM** %33, align 4, !tbaa !399
  %34 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %31, i32 0, i32 2
  %35 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %34, align 4, !tbaa !400
  %36 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1, i32 2
  store %struct.xLIST_ITEM* %35, %struct.xLIST_ITEM** %36, align 4, !tbaa !401
  %37 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %34, align 4, !tbaa !400
  %38 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %37, i32 0, i32 1
  store %struct.xLIST_ITEM* %32, %struct.xLIST_ITEM** %38, align 4, !tbaa !389
  store %struct.xLIST_ITEM* %32, %struct.xLIST_ITEM** %34, align 4, !tbaa !400
  %39 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %25
  %40 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1, i32 4
  store %struct.xLIST* %39, %struct.xLIST** %40, align 4, !tbaa !402
  %41 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %25, i32 0
  %42 = load volatile i32, i32* %41, align 4, !tbaa !386
  %43 = add i32 %42, 1
  store volatile i32 %43, i32* %41, align 4, !tbaa !386
  tail call void @vPortExitCritical() #30
  %44 = load volatile i32, i32* @xSchedulerRunning, align 4, !tbaa !382
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %29
  %47 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %48 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4, !tbaa !394
  %50 = load i32, i32* %24, align 4, !tbaa !394
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  tail call void @vPortYield() #30
  br label %53

53:                                               ; preds = %29, %52, %46
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc void @prvInitialiseTaskLists() unnamed_addr #3 {
  tail call void @vListInitialise(%struct.xLIST* noundef nonnull getelementptr inbounds ([5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 0)) #30
  tail call void @vListInitialise(%struct.xLIST* noundef nonnull getelementptr inbounds ([5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 1)) #30
  tail call void @vListInitialise(%struct.xLIST* noundef nonnull getelementptr inbounds ([5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 2)) #30
  tail call void @vListInitialise(%struct.xLIST* noundef nonnull getelementptr inbounds ([5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 3)) #30
  tail call void @vListInitialise(%struct.xLIST* noundef nonnull getelementptr inbounds ([5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 4)) #30
  tail call void @vListInitialise(%struct.xLIST* noundef nonnull @xDelayedTaskList1) #30
  tail call void @vListInitialise(%struct.xLIST* noundef nonnull @xDelayedTaskList2) #30
  tail call void @vListInitialise(%struct.xLIST* noundef nonnull @xPendingReadyList) #30
  tail call void @vListInitialise(%struct.xLIST* noundef nonnull @xTasksWaitingTermination) #30
  tail call void @vListInitialise(%struct.xLIST* noundef nonnull @xSuspendedTaskList) #30
  store volatile %struct.xLIST* @xDelayedTaskList1, %struct.xLIST** @pxDelayedTaskList, align 4, !tbaa !11
  store volatile %struct.xLIST* @xDelayedTaskList2, %struct.xLIST** @pxOverflowDelayedTaskList, align 4, !tbaa !11
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @vTaskDelete(%struct.tskTaskControlBlock* noundef %0) local_unnamed_addr #3 {
  tail call void @vPortEnterCritical() #30
  %2 = icmp eq %struct.tskTaskControlBlock* %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi %struct.tskTaskControlBlock* [ %4, %3 ], [ %0, %1 ]
  %7 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 1
  %8 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %7) #30
  %9 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 2, i32 4
  %10 = load %struct.xLIST*, %struct.xLIST** %9, align 4, !tbaa !403
  %11 = icmp eq %struct.xLIST* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 2
  %14 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %13) #30
  br label %15

15:                                               ; preds = %5, %12
  %16 = load i32, i32* @uxTaskNumber, align 4, !tbaa !382
  %17 = add i32 %16, 1
  store i32 %17, i32* @uxTaskNumber, align 4, !tbaa !382
  %18 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %19 = icmp eq %struct.tskTaskControlBlock* %6, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull @xTasksWaitingTermination, %struct.xLIST_ITEM* noundef nonnull %7) #30
  %21 = load volatile i32, i32* @uxDeletedTasksWaitingCleanUp, align 4, !tbaa !382
  %22 = add i32 %21, 1
  store volatile i32 %22, i32* @uxDeletedTasksWaitingCleanUp, align 4, !tbaa !382
  br label %26

23:                                               ; preds = %15
  %24 = load volatile i32, i32* @uxCurrentNumberOfTasks, align 4, !tbaa !382
  %25 = add i32 %24, -1
  store volatile i32 %25, i32* @uxCurrentNumberOfTasks, align 4, !tbaa !382
  tail call fastcc void @prvResetNextTaskUnblockTime()
  br label %26

26:                                               ; preds = %23, %20
  tail call void @vPortExitCritical() #30
  %27 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %28 = icmp eq %struct.tskTaskControlBlock* %6, %27
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call fastcc void @prvDeleteTCB(%struct.tskTaskControlBlock* noundef nonnull %6)
  br label %30

30:                                               ; preds = %29, %26
  %31 = load volatile i32, i32* @xSchedulerRunning, align 4, !tbaa !382
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %35 = icmp eq %struct.tskTaskControlBlock* %6, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  tail call void @vPortYield() #30
  br label %37

37:                                               ; preds = %36, %33, %30
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define internal fastcc void @prvResetNextTaskUnblockTime() unnamed_addr #2 {
  %1 = load volatile %struct.xLIST*, %struct.xLIST** @pxDelayedTaskList, align 4, !tbaa !11
  %2 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %1, i32 0, i32 0
  %3 = load volatile i32, i32* %2, align 4, !tbaa !386
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %0
  %6 = load volatile %struct.xLIST*, %struct.xLIST** @pxDelayedTaskList, align 4, !tbaa !11
  %7 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %6, i32 0, i32 2, i32 1
  %8 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %7, align 4, !tbaa !404
  %9 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4, !tbaa !405
  br label %11

11:                                               ; preds = %0, %5
  %12 = phi i32 [ %10, %5 ], [ -1, %0 ]
  store volatile i32 %12, i32* @xNextTaskUnblockTime, align 4, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc void @prvDeleteTCB(%struct.tskTaskControlBlock* noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 4
  %3 = bitcast i32** %2 to i8**
  %4 = load i8*, i8** %3, align 4, !tbaa !392
  tail call void @vPortFree(i8* noundef %4) #30
  %5 = bitcast %struct.tskTaskControlBlock* %0 to i8*
  tail call void @vPortFree(i8* noundef %5) #30
  ret void
}

; Function Attrs: noinline nounwind
define dso_local i32 @xTaskDelayUntil(i32* nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  tail call void @vTaskSuspendAll()
  %3 = load volatile i32, i32* @xTickCount, align 4, !tbaa !18
  %4 = load i32, i32* %0, align 4, !tbaa !18
  %5 = add i32 %4, %1
  %6 = icmp ult i32 %3, %4
  %7 = icmp ult i32 %5, %4
  %8 = icmp ugt i32 %5, %3
  br i1 %6, label %9, label %11

9:                                                ; preds = %2
  %10 = select i1 %7, i1 %8, i1 false
  store i32 %5, i32* %0, align 4, !tbaa !18
  br i1 %10, label %13, label %15

11:                                               ; preds = %2
  %12 = select i1 %7, i1 true, i1 %8
  store i32 %5, i32* %0, align 4, !tbaa !18
  br i1 %12, label %13, label %15

13:                                               ; preds = %9, %11
  %14 = sub i32 %5, %3
  tail call fastcc void @prvAddCurrentTaskToDelayedList(i32 noundef %14, i32 noundef 0)
  br label %15

15:                                               ; preds = %9, %11, %13
  %16 = phi i32 [ 0, %9 ], [ 0, %11 ], [ 1, %13 ]
  %17 = tail call i32 @xTaskResumeAll()
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @vPortYield() #30
  br label %20

20:                                               ; preds = %15, %19
  ret i32 %16
}

; Function Attrs: noinline nounwind
define dso_local void @vTaskSuspendAll() local_unnamed_addr #3 {
  %1 = load volatile i32, i32* @uxSchedulerSuspended, align 4, !tbaa !382
  %2 = add i32 %1, 1
  store volatile i32 %2, i32* @uxSchedulerSuspended, align 4, !tbaa !382
  tail call void asm sideeffect "", "~{memory}"() #30, !srcloc !406
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc void @prvAddCurrentTaskToDelayedList(i32 noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = load volatile i32, i32* @xTickCount, align 4, !tbaa !18
  %4 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %5 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %4, i32 0, i32 1
  %6 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %5) #30
  %7 = icmp eq i32 %0, -1
  %8 = icmp ne i32 %1, 0
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** getelementptr inbounds (%struct.xLIST, %struct.xLIST* @xSuspendedTaskList, i32 0, i32 1), align 4, !tbaa !388
  %12 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %13 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %12, i32 0, i32 1, i32 1
  store %struct.xLIST_ITEM* %11, %struct.xLIST_ITEM** %13, align 4, !tbaa !399
  %14 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %11, i32 0, i32 2
  %15 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %14, align 4, !tbaa !400
  %16 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %17 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %16, i32 0, i32 1, i32 2
  store %struct.xLIST_ITEM* %15, %struct.xLIST_ITEM** %17, align 4, !tbaa !401
  %18 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %19 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %18, i32 0, i32 1
  %20 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %14, align 4, !tbaa !400
  %21 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %20, i32 0, i32 1
  store %struct.xLIST_ITEM* %19, %struct.xLIST_ITEM** %21, align 4, !tbaa !389
  %22 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %23 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %22, i32 0, i32 1
  store %struct.xLIST_ITEM* %23, %struct.xLIST_ITEM** %14, align 4, !tbaa !400
  %24 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %25 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %24, i32 0, i32 1, i32 4
  store %struct.xLIST* @xSuspendedTaskList, %struct.xLIST** %25, align 4, !tbaa !402
  %26 = load volatile i32, i32* getelementptr inbounds (%struct.xLIST, %struct.xLIST* @xSuspendedTaskList, i32 0, i32 0), align 4, !tbaa !386
  %27 = add i32 %26, 1
  store volatile i32 %27, i32* getelementptr inbounds (%struct.xLIST, %struct.xLIST* @xSuspendedTaskList, i32 0, i32 0), align 4, !tbaa !386
  br label %44

28:                                               ; preds = %2
  %29 = add i32 %3, %0
  %30 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %31 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %30, i32 0, i32 1, i32 0
  store i32 %29, i32* %31, align 4, !tbaa !407
  %32 = icmp ult i32 %29, %3
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load volatile %struct.xLIST*, %struct.xLIST** @pxOverflowDelayedTaskList, align 4, !tbaa !11
  %35 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %36 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %35, i32 0, i32 1
  tail call void @vListInsert(%struct.xLIST* noundef %34, %struct.xLIST_ITEM* noundef nonnull %36) #30
  br label %44

37:                                               ; preds = %28
  %38 = load volatile %struct.xLIST*, %struct.xLIST** @pxDelayedTaskList, align 4, !tbaa !11
  %39 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %40 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %39, i32 0, i32 1
  tail call void @vListInsert(%struct.xLIST* noundef %38, %struct.xLIST_ITEM* noundef nonnull %40) #30
  %41 = load volatile i32, i32* @xNextTaskUnblockTime, align 4, !tbaa !18
  %42 = icmp ult i32 %29, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store volatile i32 %29, i32* @xNextTaskUnblockTime, align 4, !tbaa !18
  br label %44

44:                                               ; preds = %33, %37, %43, %10
  ret void
}

; Function Attrs: noinline nounwind
define dso_local i32 @xTaskResumeAll() local_unnamed_addr #3 {
  tail call void @vPortEnterCritical() #30
  %1 = load volatile i32, i32* @uxSchedulerSuspended, align 4, !tbaa !382
  %2 = add i32 %1, -1
  store volatile i32 %2, i32* @uxSchedulerSuspended, align 4, !tbaa !382
  %3 = load volatile i32, i32* @uxSchedulerSuspended, align 4, !tbaa !382
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %93

5:                                                ; preds = %0
  %6 = load volatile i32, i32* @uxCurrentNumberOfTasks, align 4, !tbaa !382
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %93, label %8

8:                                                ; preds = %5
  %9 = load volatile i32, i32* getelementptr inbounds (%struct.xLIST, %struct.xLIST* @xPendingReadyList, i32 0, i32 0), align 4, !tbaa !386
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %77, label %11

11:                                               ; preds = %8, %73
  %12 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** getelementptr inbounds (%struct.xLIST, %struct.xLIST* @xPendingReadyList, i32 0, i32 2, i32 1), align 4, !tbaa !404
  %13 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %12, i32 0, i32 3
  %14 = bitcast i8** %13 to %struct.tskTaskControlBlock**
  %15 = load %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** %14, align 4, !tbaa !391
  %16 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %15, i32 0, i32 2, i32 4
  %18 = load %struct.xLIST*, %struct.xLIST** %17, align 4, !tbaa !403
  %19 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %15, i32 0, i32 2, i32 2
  %20 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %19, align 4, !tbaa !408
  %21 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %15, i32 0, i32 2, i32 1
  %22 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %21, align 4, !tbaa !409
  %23 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %22, i32 0, i32 2
  store %struct.xLIST_ITEM* %20, %struct.xLIST_ITEM** %23, align 4, !tbaa !400
  %24 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %19, align 4, !tbaa !408
  %25 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %24, i32 0, i32 1
  store %struct.xLIST_ITEM* %22, %struct.xLIST_ITEM** %25, align 4, !tbaa !389
  %26 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %18, i32 0, i32 1
  %27 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %26, align 4, !tbaa !388
  %28 = icmp eq %struct.xLIST_ITEM* %27, %16
  br i1 %28, label %29, label %30

29:                                               ; preds = %11
  store %struct.xLIST_ITEM* %24, %struct.xLIST_ITEM** %26, align 4, !tbaa !388
  br label %30

30:                                               ; preds = %29, %11
  store %struct.xLIST* null, %struct.xLIST** %17, align 4, !tbaa !403
  %31 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %18, i32 0, i32 0
  %32 = load volatile i32, i32* %31, align 4, !tbaa !386
  %33 = add i32 %32, -1
  store volatile i32 %33, i32* %31, align 4, !tbaa !386
  tail call void asm sideeffect "", "~{memory}"() #30, !srcloc !410
  %34 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %15, i32 0, i32 1
  %35 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %15, i32 0, i32 1, i32 4
  %36 = load %struct.xLIST*, %struct.xLIST** %35, align 4, !tbaa !402
  %37 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %15, i32 0, i32 1, i32 2
  %38 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %37, align 4, !tbaa !401
  %39 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %15, i32 0, i32 1, i32 1
  %40 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %39, align 4, !tbaa !399
  %41 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %40, i32 0, i32 2
  store %struct.xLIST_ITEM* %38, %struct.xLIST_ITEM** %41, align 4, !tbaa !400
  %42 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %37, align 4, !tbaa !401
  %43 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %42, i32 0, i32 1
  store %struct.xLIST_ITEM* %40, %struct.xLIST_ITEM** %43, align 4, !tbaa !389
  %44 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %36, i32 0, i32 1
  %45 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %44, align 4, !tbaa !388
  %46 = icmp eq %struct.xLIST_ITEM* %45, %34
  br i1 %46, label %47, label %48

47:                                               ; preds = %30
  store %struct.xLIST_ITEM* %42, %struct.xLIST_ITEM** %44, align 4, !tbaa !388
  br label %48

48:                                               ; preds = %47, %30
  %49 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %36, i32 0, i32 0
  %50 = load volatile i32, i32* %49, align 4, !tbaa !386
  %51 = add i32 %50, -1
  store volatile i32 %51, i32* %49, align 4, !tbaa !386
  %52 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %15, i32 0, i32 3
  %53 = load i32, i32* %52, align 4, !tbaa !394
  %54 = load volatile i32, i32* @uxTopReadyPriority, align 4, !tbaa !382
  %55 = icmp ugt i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store volatile i32 %53, i32* @uxTopReadyPriority, align 4, !tbaa !382
  br label %57

57:                                               ; preds = %56, %48
  %58 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %53, i32 1
  %59 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %58, align 4, !tbaa !388
  store %struct.xLIST_ITEM* %59, %struct.xLIST_ITEM** %39, align 4, !tbaa !399
  %60 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %59, i32 0, i32 2
  %61 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %60, align 4, !tbaa !400
  store %struct.xLIST_ITEM* %61, %struct.xLIST_ITEM** %37, align 4, !tbaa !401
  %62 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %60, align 4, !tbaa !400
  %63 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %62, i32 0, i32 1
  store %struct.xLIST_ITEM* %34, %struct.xLIST_ITEM** %63, align 4, !tbaa !389
  store %struct.xLIST_ITEM* %34, %struct.xLIST_ITEM** %60, align 4, !tbaa !400
  %64 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %53
  store %struct.xLIST* %64, %struct.xLIST** %35, align 4, !tbaa !402
  %65 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %53, i32 0
  %66 = load volatile i32, i32* %65, align 4, !tbaa !386
  %67 = add i32 %66, 1
  store volatile i32 %67, i32* %65, align 4, !tbaa !386
  %68 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %69 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4, !tbaa !394
  %71 = icmp ult i32 %53, %70
  br i1 %71, label %73, label %72

72:                                               ; preds = %57
  store volatile i32 1, i32* @xYieldPending, align 4, !tbaa !382
  br label %73

73:                                               ; preds = %57, %72
  %74 = load volatile i32, i32* getelementptr inbounds (%struct.xLIST, %struct.xLIST* @xPendingReadyList, i32 0, i32 0), align 4, !tbaa !386
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %11, !llvm.loop !411

76:                                               ; preds = %73
  tail call fastcc void @prvResetNextTaskUnblockTime()
  br label %77

77:                                               ; preds = %8, %76
  %78 = load volatile i32, i32* @xPendedTicks, align 4, !tbaa !18
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %77, %85
  %81 = phi i32 [ %86, %85 ], [ %78, %77 ]
  %82 = tail call i32 @xTaskIncrementTick()
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  store volatile i32 1, i32* @xYieldPending, align 4, !tbaa !382
  br label %85

85:                                               ; preds = %80, %84
  %86 = add i32 %81, -1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %80, !llvm.loop !412

88:                                               ; preds = %85
  store volatile i32 0, i32* @xPendedTicks, align 4, !tbaa !18
  br label %89

89:                                               ; preds = %77, %88
  %90 = load volatile i32, i32* @xYieldPending, align 4, !tbaa !382
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  tail call void @vPortYield() #30
  br label %93

93:                                               ; preds = %0, %5, %89, %92
  %94 = phi i32 [ 1, %92 ], [ 0, %89 ], [ 0, %5 ], [ 0, %0 ]
  tail call void @vPortExitCritical() #30
  ret i32 %94
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @xTaskIncrementTick() local_unnamed_addr #2 {
  %1 = load volatile i32, i32* @uxSchedulerSuspended, align 4, !tbaa !382
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %111

3:                                                ; preds = %0
  %4 = load volatile i32, i32* @xTickCount, align 4, !tbaa !18
  %5 = add i32 %4, 1
  store volatile i32 %5, i32* @xTickCount, align 4, !tbaa !18
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = load volatile %struct.xLIST*, %struct.xLIST** @pxDelayedTaskList, align 4, !tbaa !11
  %9 = load volatile %struct.xLIST*, %struct.xLIST** @pxOverflowDelayedTaskList, align 4, !tbaa !11
  store volatile %struct.xLIST* %9, %struct.xLIST** @pxDelayedTaskList, align 4, !tbaa !11
  store volatile %struct.xLIST* %8, %struct.xLIST** @pxOverflowDelayedTaskList, align 4, !tbaa !11
  %10 = load volatile i32, i32* @xNumOfOverflows, align 4, !tbaa !382
  %11 = add nsw i32 %10, 1
  store volatile i32 %11, i32* @xNumOfOverflows, align 4, !tbaa !382
  tail call fastcc void @prvResetNextTaskUnblockTime()
  br label %12

12:                                               ; preds = %3, %7
  %13 = load volatile i32, i32* @xNextTaskUnblockTime, align 4, !tbaa !18
  %14 = icmp ult i32 %5, %13
  br i1 %14, label %99, label %15

15:                                               ; preds = %12
  %16 = load volatile %struct.xLIST*, %struct.xLIST** @pxDelayedTaskList, align 4, !tbaa !11
  %17 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %16, i32 0, i32 0
  %18 = load volatile i32, i32* %17, align 4, !tbaa !386
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %96, label %20

20:                                               ; preds = %15, %76
  %21 = phi i32 [ %91, %76 ], [ 0, %15 ]
  %22 = load volatile %struct.xLIST*, %struct.xLIST** @pxDelayedTaskList, align 4, !tbaa !11
  %23 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %22, i32 0, i32 2, i32 1
  %24 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %23, align 4, !tbaa !404
  %25 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %24, i32 0, i32 3
  %26 = bitcast i8** %25 to %struct.tskTaskControlBlock**
  %27 = load %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** %26, align 4, !tbaa !391
  %28 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4, !tbaa !407
  %31 = icmp ult i32 %5, %30
  br i1 %31, label %96, label %32

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %27, i32 0, i32 1, i32 4
  %34 = load %struct.xLIST*, %struct.xLIST** %33, align 4, !tbaa !402
  %35 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %27, i32 0, i32 1, i32 2
  %36 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %35, align 4, !tbaa !401
  %37 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %27, i32 0, i32 1, i32 1
  %38 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %37, align 4, !tbaa !399
  %39 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %38, i32 0, i32 2
  store %struct.xLIST_ITEM* %36, %struct.xLIST_ITEM** %39, align 4, !tbaa !400
  %40 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %35, align 4, !tbaa !401
  %41 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %40, i32 0, i32 1
  store %struct.xLIST_ITEM* %38, %struct.xLIST_ITEM** %41, align 4, !tbaa !389
  %42 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %34, i32 0, i32 1
  %43 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %42, align 4, !tbaa !388
  %44 = icmp eq %struct.xLIST_ITEM* %43, %28
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  store %struct.xLIST_ITEM* %40, %struct.xLIST_ITEM** %42, align 4, !tbaa !388
  br label %46

46:                                               ; preds = %45, %32
  %47 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %34, i32 0, i32 0
  %48 = load volatile i32, i32* %47, align 4, !tbaa !386
  %49 = add i32 %48, -1
  store volatile i32 %49, i32* %47, align 4, !tbaa !386
  %50 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %27, i32 0, i32 2, i32 4
  %51 = load %struct.xLIST*, %struct.xLIST** %50, align 4, !tbaa !403
  %52 = icmp eq %struct.xLIST* %51, null
  br i1 %52, label %70, label %53

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %27, i32 0, i32 2
  %55 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %27, i32 0, i32 2, i32 2
  %56 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %55, align 4, !tbaa !408
  %57 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %27, i32 0, i32 2, i32 1
  %58 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %57, align 4, !tbaa !409
  %59 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %58, i32 0, i32 2
  store %struct.xLIST_ITEM* %56, %struct.xLIST_ITEM** %59, align 4, !tbaa !400
  %60 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %55, align 4, !tbaa !408
  %61 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %60, i32 0, i32 1
  store %struct.xLIST_ITEM* %58, %struct.xLIST_ITEM** %61, align 4, !tbaa !389
  %62 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %51, i32 0, i32 1
  %63 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %62, align 4, !tbaa !388
  %64 = icmp eq %struct.xLIST_ITEM* %63, %54
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  store %struct.xLIST_ITEM* %60, %struct.xLIST_ITEM** %62, align 4, !tbaa !388
  br label %66

66:                                               ; preds = %65, %53
  store %struct.xLIST* null, %struct.xLIST** %50, align 4, !tbaa !403
  %67 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %51, i32 0, i32 0
  %68 = load volatile i32, i32* %67, align 4, !tbaa !386
  %69 = add i32 %68, -1
  store volatile i32 %69, i32* %67, align 4, !tbaa !386
  br label %70

70:                                               ; preds = %46, %66
  %71 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %27, i32 0, i32 3
  %72 = load i32, i32* %71, align 4, !tbaa !394
  %73 = load volatile i32, i32* @uxTopReadyPriority, align 4, !tbaa !382
  %74 = icmp ugt i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store volatile i32 %72, i32* @uxTopReadyPriority, align 4, !tbaa !382
  br label %76

76:                                               ; preds = %75, %70
  %77 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %72, i32 1
  %78 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %77, align 4, !tbaa !388
  store %struct.xLIST_ITEM* %78, %struct.xLIST_ITEM** %37, align 4, !tbaa !399
  %79 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %78, i32 0, i32 2
  %80 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %79, align 4, !tbaa !400
  store %struct.xLIST_ITEM* %80, %struct.xLIST_ITEM** %35, align 4, !tbaa !401
  %81 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %79, align 4, !tbaa !400
  %82 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %81, i32 0, i32 1
  store %struct.xLIST_ITEM* %28, %struct.xLIST_ITEM** %82, align 4, !tbaa !389
  store %struct.xLIST_ITEM* %28, %struct.xLIST_ITEM** %79, align 4, !tbaa !400
  %83 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %72
  store %struct.xLIST* %83, %struct.xLIST** %33, align 4, !tbaa !402
  %84 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %72, i32 0
  %85 = load volatile i32, i32* %84, align 4, !tbaa !386
  %86 = add i32 %85, 1
  store volatile i32 %86, i32* %84, align 4, !tbaa !386
  %87 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %88 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4, !tbaa !394
  %90 = icmp ult i32 %72, %89
  %91 = select i1 %90, i32 %21, i32 1
  %92 = load volatile %struct.xLIST*, %struct.xLIST** @pxDelayedTaskList, align 4, !tbaa !11
  %93 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %92, i32 0, i32 0
  %94 = load volatile i32, i32* %93, align 4, !tbaa !386
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %20

96:                                               ; preds = %20, %76, %15
  %97 = phi i32 [ -1, %15 ], [ -1, %76 ], [ %30, %20 ]
  %98 = phi i32 [ 0, %15 ], [ %91, %76 ], [ %21, %20 ]
  store volatile i32 %97, i32* @xNextTaskUnblockTime, align 4, !tbaa !18
  br label %99

99:                                               ; preds = %96, %12
  %100 = phi i32 [ 0, %12 ], [ %98, %96 ]
  %101 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %102 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4, !tbaa !394
  %104 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %103, i32 0
  %105 = load volatile i32, i32* %104, align 4, !tbaa !386
  %106 = icmp ugt i32 %105, 1
  %107 = select i1 %106, i32 1, i32 %100
  %108 = load volatile i32, i32* @xYieldPending, align 4, !tbaa !382
  %109 = icmp eq i32 %108, 0
  %110 = select i1 %109, i32 %107, i32 1
  br label %114

111:                                              ; preds = %0
  %112 = load volatile i32, i32* @xPendedTicks, align 4, !tbaa !18
  %113 = add i32 %112, 1
  store volatile i32 %113, i32* @xPendedTicks, align 4, !tbaa !18
  br label %114

114:                                              ; preds = %111, %99
  %115 = phi i32 [ %110, %99 ], [ 0, %111 ]
  ret i32 %115
}

; Function Attrs: noinline nounwind
define dso_local void @vTaskDelay(i32 noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  tail call void @vTaskSuspendAll()
  tail call fastcc void @prvAddCurrentTaskToDelayedList(i32 noundef %0, i32 noundef 0)
  %4 = tail call i32 @xTaskResumeAll()
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1, %3
  tail call void @vPortYield() #30
  br label %7

7:                                                ; preds = %3, %6
  ret void
}

; Function Attrs: noinline nounwind
define dso_local i32 @uxTaskPriorityGet(%struct.tskTaskControlBlock* noundef readonly %0) local_unnamed_addr #3 {
  tail call void @vPortEnterCritical() #30
  %2 = icmp eq %struct.tskTaskControlBlock* %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi %struct.tskTaskControlBlock* [ %4, %3 ], [ %0, %1 ]
  %7 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4, !tbaa !394
  tail call void @vPortExitCritical() #30
  ret i32 %8
}

; Function Attrs: noinline nounwind
define dso_local i32 @uxTaskPriorityGetFromISR(%struct.tskTaskControlBlock* noundef readonly %0) local_unnamed_addr #3 {
  %2 = tail call i32 @ulSetInterruptMaskFromISR() #30
  %3 = icmp eq %struct.tskTaskControlBlock* %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi %struct.tskTaskControlBlock* [ %5, %4 ], [ %0, %1 ]
  %8 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4, !tbaa !394
  tail call void @vClearInterruptMaskFromISR(i32 noundef %2) #30
  ret i32 %9
}

; Function Attrs: noinline nounwind
define dso_local void @vTaskPrioritySet(%struct.tskTaskControlBlock* noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp ult i32 %1, 4
  %4 = select i1 %3, i32 %1, i32 4
  tail call void @vPortEnterCritical() #30
  %5 = icmp eq %struct.tskTaskControlBlock* %0, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi %struct.tskTaskControlBlock* [ %7, %6 ], [ %0, %2 ]
  %10 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4, !tbaa !394
  %12 = icmp eq i32 %11, %4
  br i1 %12, label %59, label %13

13:                                               ; preds = %8
  %14 = icmp ugt i32 %4, %11
  %15 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  br i1 %14, label %16, label %23

16:                                               ; preds = %13
  %17 = icmp eq %struct.tskTaskControlBlock* %9, %15
  br i1 %17, label %25, label %18

18:                                               ; preds = %16
  %19 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %20 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4, !tbaa !394
  %22 = icmp ult i32 %4, %21
  br label %25

23:                                               ; preds = %13
  %24 = icmp ne %struct.tskTaskControlBlock* %9, %15
  br label %25

25:                                               ; preds = %23, %18, %16
  %26 = phi i1 [ true, %16 ], [ %22, %18 ], [ %24, %23 ]
  store i32 %4, i32* %10, align 4, !tbaa !394
  %27 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %9, i32 0, i32 2, i32 0
  %28 = load i32, i32* %27, align 4, !tbaa !396
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = sub nuw nsw i32 5, %4
  store i32 %31, i32* %27, align 4, !tbaa !396
  br label %32

32:                                               ; preds = %25, %30
  %33 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %9, i32 0, i32 1
  %34 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %9, i32 0, i32 1, i32 4
  %35 = load %struct.xLIST*, %struct.xLIST** %34, align 4, !tbaa !402
  %36 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %11
  %37 = icmp eq %struct.xLIST* %35, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %32
  %39 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %33) #30
  %40 = load i32, i32* %10, align 4, !tbaa !394
  %41 = load volatile i32, i32* @uxTopReadyPriority, align 4, !tbaa !382
  %42 = icmp ugt i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store volatile i32 %40, i32* @uxTopReadyPriority, align 4, !tbaa !382
  br label %44

44:                                               ; preds = %43, %38
  %45 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %40, i32 1
  %46 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %45, align 4, !tbaa !388
  %47 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %9, i32 0, i32 1, i32 1
  store %struct.xLIST_ITEM* %46, %struct.xLIST_ITEM** %47, align 4, !tbaa !399
  %48 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %46, i32 0, i32 2
  %49 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %48, align 4, !tbaa !400
  %50 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %9, i32 0, i32 1, i32 2
  store %struct.xLIST_ITEM* %49, %struct.xLIST_ITEM** %50, align 4, !tbaa !401
  %51 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %48, align 4, !tbaa !400
  %52 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %51, i32 0, i32 1
  store %struct.xLIST_ITEM* %33, %struct.xLIST_ITEM** %52, align 4, !tbaa !389
  store %struct.xLIST_ITEM* %33, %struct.xLIST_ITEM** %48, align 4, !tbaa !400
  %53 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %40
  store %struct.xLIST* %53, %struct.xLIST** %34, align 4, !tbaa !402
  %54 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %40, i32 0
  %55 = load volatile i32, i32* %54, align 4, !tbaa !386
  %56 = add i32 %55, 1
  store volatile i32 %56, i32* %54, align 4, !tbaa !386
  br label %57

57:                                               ; preds = %32, %44
  br i1 %26, label %59, label %58

58:                                               ; preds = %57
  tail call void @vPortYield() #30
  br label %59

59:                                               ; preds = %58, %57, %8
  tail call void @vPortExitCritical() #30
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @vTaskSuspend(%struct.tskTaskControlBlock* noundef %0) local_unnamed_addr #3 {
  tail call void @vPortEnterCritical() #30
  %2 = icmp eq %struct.tskTaskControlBlock* %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi %struct.tskTaskControlBlock* [ %4, %3 ], [ %0, %1 ]
  %7 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 1
  %8 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %7) #30
  %9 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 2, i32 4
  %10 = load %struct.xLIST*, %struct.xLIST** %9, align 4, !tbaa !403
  %11 = icmp eq %struct.xLIST* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 2
  %14 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %13) #30
  br label %15

15:                                               ; preds = %5, %12
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull @xSuspendedTaskList, %struct.xLIST_ITEM* noundef nonnull %7) #30
  %16 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 8, i32 0
  %17 = load volatile i8, i8* %16, align 1, !tbaa !8
  %18 = icmp eq i8 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store volatile i8 0, i8* %16, align 1, !tbaa !8
  br label %20

20:                                               ; preds = %15, %19
  %21 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 8, i32 1
  %22 = load volatile i8, i8* %21, align 1, !tbaa !8
  %23 = icmp eq i8 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store volatile i8 0, i8* %21, align 1, !tbaa !8
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 8, i32 2
  %27 = load volatile i8, i8* %26, align 1, !tbaa !8
  %28 = icmp eq i8 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store volatile i8 0, i8* %26, align 1, !tbaa !8
  br label %30

30:                                               ; preds = %29, %25
  tail call void @vPortExitCritical() #30
  %31 = load volatile i32, i32* @xSchedulerRunning, align 4, !tbaa !382
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call void @vPortEnterCritical() #30
  tail call fastcc void @prvResetNextTaskUnblockTime()
  tail call void @vPortExitCritical() #30
  br label %34

34:                                               ; preds = %30, %33
  %35 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %36 = icmp eq %struct.tskTaskControlBlock* %6, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load volatile i32, i32* @xSchedulerRunning, align 4, !tbaa !382
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void @vPortYield() #30
  br label %47

41:                                               ; preds = %37
  %42 = load volatile i32, i32* getelementptr inbounds (%struct.xLIST, %struct.xLIST* @xSuspendedTaskList, i32 0, i32 0), align 4, !tbaa !386
  %43 = load volatile i32, i32* @uxCurrentNumberOfTasks, align 4, !tbaa !382
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store volatile %struct.tskTaskControlBlock* null, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  br label %47

46:                                               ; preds = %41
  tail call void @vTaskSwitchContext()
  br label %47

47:                                               ; preds = %34, %40, %46, %45
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @vTaskResume(%struct.tskTaskControlBlock* noundef %0) local_unnamed_addr #3 {
  %2 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %3 = icmp ne %struct.tskTaskControlBlock* %2, %0
  %4 = icmp ne %struct.tskTaskControlBlock* %0, null
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %37

6:                                                ; preds = %1
  tail call void @vPortEnterCritical() #30
  %7 = tail call fastcc i32 @prvTaskIsTaskSuspended(%struct.tskTaskControlBlock* noundef nonnull %0)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %36, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1
  %11 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %10) #30
  %12 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 3
  %13 = load i32, i32* %12, align 4, !tbaa !394
  %14 = load volatile i32, i32* @uxTopReadyPriority, align 4, !tbaa !382
  %15 = icmp ugt i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store volatile i32 %13, i32* @uxTopReadyPriority, align 4, !tbaa !382
  br label %17

17:                                               ; preds = %16, %9
  %18 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %13, i32 1
  %19 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %18, align 4, !tbaa !388
  %20 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1, i32 1
  store %struct.xLIST_ITEM* %19, %struct.xLIST_ITEM** %20, align 4, !tbaa !399
  %21 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %19, i32 0, i32 2
  %22 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %21, align 4, !tbaa !400
  %23 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1, i32 2
  store %struct.xLIST_ITEM* %22, %struct.xLIST_ITEM** %23, align 4, !tbaa !401
  %24 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %21, align 4, !tbaa !400
  %25 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %24, i32 0, i32 1
  store %struct.xLIST_ITEM* %10, %struct.xLIST_ITEM** %25, align 4, !tbaa !389
  store %struct.xLIST_ITEM* %10, %struct.xLIST_ITEM** %21, align 4, !tbaa !400
  %26 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %13
  %27 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1, i32 4
  store %struct.xLIST* %26, %struct.xLIST** %27, align 4, !tbaa !402
  %28 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %13, i32 0
  %29 = load volatile i32, i32* %28, align 4, !tbaa !386
  %30 = add i32 %29, 1
  store volatile i32 %30, i32* %28, align 4, !tbaa !386
  %31 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %32 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4, !tbaa !394
  %34 = icmp ult i32 %13, %33
  br i1 %34, label %36, label %35

35:                                               ; preds = %17
  tail call void @vPortYield() #30
  br label %36

36:                                               ; preds = %6, %35, %17
  tail call void @vPortExitCritical() #30
  br label %37

37:                                               ; preds = %1, %36
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define internal fastcc i32 @prvTaskIsTaskSuspended(%struct.tskTaskControlBlock* nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1, i32 4
  %3 = load %struct.xLIST*, %struct.xLIST** %2, align 4, !tbaa !402
  %4 = icmp eq %struct.xLIST* %3, @xSuspendedTaskList
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 2, i32 4
  %7 = load %struct.xLIST*, %struct.xLIST** %6, align 4, !tbaa !403
  %8 = icmp eq %struct.xLIST* %7, null
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ 0, %1 ], [ %9, %5 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind
define dso_local i32 @xTaskResumeFromISR(%struct.tskTaskControlBlock* noundef %0) local_unnamed_addr #3 {
  %2 = tail call i32 @ulSetInterruptMaskFromISR() #30
  %3 = tail call fastcc i32 @prvTaskIsTaskSuspended(%struct.tskTaskControlBlock* noundef %0)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %40, label %5

5:                                                ; preds = %1
  %6 = load volatile i32, i32* @uxSchedulerSuspended, align 4, !tbaa !382
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %38

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 3
  %10 = load i32, i32* %9, align 4, !tbaa !394
  %11 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %12 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4, !tbaa !394
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  store volatile i32 1, i32* @xYieldPending, align 4, !tbaa !382
  br label %16

16:                                               ; preds = %8, %15
  %17 = phi i32 [ 1, %15 ], [ 0, %8 ]
  %18 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1
  %19 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %18) #30
  %20 = load i32, i32* %9, align 4, !tbaa !394
  %21 = load volatile i32, i32* @uxTopReadyPriority, align 4, !tbaa !382
  %22 = icmp ugt i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store volatile i32 %20, i32* @uxTopReadyPriority, align 4, !tbaa !382
  br label %24

24:                                               ; preds = %23, %16
  %25 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %20, i32 1
  %26 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %25, align 4, !tbaa !388
  %27 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1, i32 1
  store %struct.xLIST_ITEM* %26, %struct.xLIST_ITEM** %27, align 4, !tbaa !399
  %28 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %26, i32 0, i32 2
  %29 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %28, align 4, !tbaa !400
  %30 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1, i32 2
  store %struct.xLIST_ITEM* %29, %struct.xLIST_ITEM** %30, align 4, !tbaa !401
  %31 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %28, align 4, !tbaa !400
  %32 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %31, i32 0, i32 1
  store %struct.xLIST_ITEM* %18, %struct.xLIST_ITEM** %32, align 4, !tbaa !389
  store %struct.xLIST_ITEM* %18, %struct.xLIST_ITEM** %28, align 4, !tbaa !400
  %33 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %20
  %34 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1, i32 4
  store %struct.xLIST* %33, %struct.xLIST** %34, align 4, !tbaa !402
  %35 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %20, i32 0
  %36 = load volatile i32, i32* %35, align 4, !tbaa !386
  %37 = add i32 %36, 1
  store volatile i32 %37, i32* %35, align 4, !tbaa !386
  br label %40

38:                                               ; preds = %5
  %39 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 2
  tail call void @vListInsertEnd(%struct.xLIST* noundef nonnull @xPendingReadyList, %struct.xLIST_ITEM* noundef nonnull %39) #30
  br label %40

40:                                               ; preds = %1, %24, %38
  %41 = phi i32 [ %17, %24 ], [ 0, %38 ], [ 0, %1 ]
  tail call void @vClearInterruptMaskFromISR(i32 noundef %2) #30
  ret i32 %41
}

; Function Attrs: noinline nounwind
define dso_local void @vTaskStartScheduler() local_unnamed_addr #3 {
  %1 = tail call i32 @xTaskCreate(void (i8*)* noundef nonnull @prvIdleTask, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.242, i32 0, i32 0), i16 noundef zeroext 128, i8* noundef null, i32 noundef 0, %struct.tskTaskControlBlock** noundef nonnull @xIdleTaskHandle)
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = tail call i32 @xTimerCreateTimerTask() #30
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  tail call void asm sideeffect " cpsid i ", "~{memory}"() #30, !srcloc !413
  store volatile i32 -1, i32* @xNextTaskUnblockTime, align 4, !tbaa !18
  store volatile i32 1, i32* @xSchedulerRunning, align 4, !tbaa !382
  store volatile i32 0, i32* @xTickCount, align 4, !tbaa !18
  %7 = tail call i32 @xPortStartScheduler() #30
  br label %8

8:                                                ; preds = %0, %3, %6
  %9 = load volatile i32, i32* @uxTopUsedPriority, align 4, !tbaa !382
  ret void
}

; Function Attrs: noinline noreturn nounwind
define internal void @prvIdleTask(i8* nocapture noundef readnone %0) #0 {
  br label %2

2:                                                ; preds = %5, %1
  tail call fastcc void @prvCheckTasksWaitingTermination()
  %3 = load volatile i32, i32* getelementptr inbounds ([5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 0, i32 0), align 4, !tbaa !386
  %4 = icmp ugt i32 %3, 1
  br i1 %4, label %6, label %5

5:                                                ; preds = %2, %6
  br label %2

6:                                                ; preds = %2
  tail call void @vPortYield() #30
  br label %5
}

; Function Attrs: noinline nounwind
define internal fastcc void @prvCheckTasksWaitingTermination() unnamed_addr #3 {
  %1 = load volatile i32, i32* @uxDeletedTasksWaitingCleanUp, align 4, !tbaa !382
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %16, label %3

3:                                                ; preds = %0, %3
  tail call void @vPortEnterCritical() #30
  %4 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** getelementptr inbounds (%struct.xLIST, %struct.xLIST* @xTasksWaitingTermination, i32 0, i32 2, i32 1), align 4, !tbaa !404
  %5 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %4, i32 0, i32 3
  %6 = bitcast i8** %5 to %struct.tskTaskControlBlock**
  %7 = load %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** %6, align 4, !tbaa !391
  %8 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %7, i32 0, i32 1
  %9 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %8) #30
  %10 = load volatile i32, i32* @uxCurrentNumberOfTasks, align 4, !tbaa !382
  %11 = add i32 %10, -1
  store volatile i32 %11, i32* @uxCurrentNumberOfTasks, align 4, !tbaa !382
  %12 = load volatile i32, i32* @uxDeletedTasksWaitingCleanUp, align 4, !tbaa !382
  %13 = add i32 %12, -1
  store volatile i32 %13, i32* @uxDeletedTasksWaitingCleanUp, align 4, !tbaa !382
  tail call void @vPortExitCritical() #30
  tail call fastcc void @prvDeleteTCB(%struct.tskTaskControlBlock* noundef %7)
  %14 = load volatile i32, i32* @uxDeletedTasksWaitingCleanUp, align 4, !tbaa !382
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %3, !llvm.loop !414

16:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @vTaskEndScheduler() local_unnamed_addr #3 {
  tail call void asm sideeffect " cpsid i ", "~{memory}"() #30, !srcloc !415
  store volatile i32 0, i32* @xSchedulerRunning, align 4, !tbaa !382
  tail call void @vPortEndScheduler() #30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local i32 @xTaskGetTickCount() local_unnamed_addr #9 {
  %1 = load volatile i32, i32* @xTickCount, align 4, !tbaa !18
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local i32 @xTaskGetTickCountFromISR() local_unnamed_addr #9 {
  %1 = load volatile i32, i32* @xTickCount, align 4, !tbaa !18
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local i32 @uxTaskGetNumberOfTasks() local_unnamed_addr #9 {
  %1 = load volatile i32, i32* @uxCurrentNumberOfTasks, align 4, !tbaa !382
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local nonnull i8* @pcTaskGetName(%struct.tskTaskControlBlock* noundef readnone %0) local_unnamed_addr #9 {
  %2 = icmp eq %struct.tskTaskControlBlock* %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi %struct.tskTaskControlBlock* [ %4, %3 ], [ %0, %1 ]
  %7 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 5, i32 0
  ret i8* %7
}

; Function Attrs: noinline nounwind
define dso_local i32 @xTaskCatchUpTicks(i32 noundef %0) local_unnamed_addr #3 {
  tail call void @vTaskSuspendAll()
  tail call void @vPortEnterCritical() #30
  %2 = load volatile i32, i32* @xPendedTicks, align 4, !tbaa !18
  %3 = add i32 %2, %0
  store volatile i32 %3, i32* @xPendedTicks, align 4, !tbaa !18
  tail call void @vPortExitCritical() #30
  %4 = tail call i32 @xTaskResumeAll()
  ret i32 %4
}

; Function Attrs: noinline nounwind
define dso_local void @vTaskPlaceOnEventList(%struct.xLIST* noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %4 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %3, i32 0, i32 2
  tail call void @vListInsert(%struct.xLIST* noundef %0, %struct.xLIST_ITEM* noundef nonnull %4) #30
  tail call fastcc void @prvAddCurrentTaskToDelayedList(i32 noundef %1, i32 noundef 1)
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @vTaskPlaceOnUnorderedEventList(%struct.xLIST* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = or i32 %1, -2147483648
  %5 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %6 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %5, i32 0, i32 2, i32 0
  store i32 %4, i32* %6, align 4, !tbaa !396
  %7 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %0, i32 0, i32 1
  %8 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %7, align 4, !tbaa !388
  %9 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %10 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %9, i32 0, i32 2, i32 1
  store %struct.xLIST_ITEM* %8, %struct.xLIST_ITEM** %10, align 4, !tbaa !409
  %11 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %8, i32 0, i32 2
  %12 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %11, align 4, !tbaa !400
  %13 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %14 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %13, i32 0, i32 2, i32 2
  store %struct.xLIST_ITEM* %12, %struct.xLIST_ITEM** %14, align 4, !tbaa !408
  %15 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %16 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %15, i32 0, i32 2
  %17 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %11, align 4, !tbaa !400
  %18 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %17, i32 0, i32 1
  store %struct.xLIST_ITEM* %16, %struct.xLIST_ITEM** %18, align 4, !tbaa !389
  %19 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %20 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %19, i32 0, i32 2
  store %struct.xLIST_ITEM* %20, %struct.xLIST_ITEM** %11, align 4, !tbaa !400
  %21 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %22 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %21, i32 0, i32 2, i32 4
  store %struct.xLIST* %0, %struct.xLIST** %22, align 4, !tbaa !403
  %23 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %0, i32 0, i32 0
  %24 = load volatile i32, i32* %23, align 4, !tbaa !386
  %25 = add i32 %24, 1
  store volatile i32 %25, i32* %23, align 4, !tbaa !386
  tail call fastcc void @prvAddCurrentTaskToDelayedList(i32 noundef %2, i32 noundef 1)
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @vTaskPlaceOnEventListRestricted(%struct.xLIST* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %0, i32 0, i32 1
  %5 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %4, align 4, !tbaa !388
  %6 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %7 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 2, i32 1
  store %struct.xLIST_ITEM* %5, %struct.xLIST_ITEM** %7, align 4, !tbaa !409
  %8 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %5, i32 0, i32 2
  %9 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %8, align 4, !tbaa !400
  %10 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %11 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %10, i32 0, i32 2, i32 2
  store %struct.xLIST_ITEM* %9, %struct.xLIST_ITEM** %11, align 4, !tbaa !408
  %12 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %13 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %12, i32 0, i32 2
  %14 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %8, align 4, !tbaa !400
  %15 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %14, i32 0, i32 1
  store %struct.xLIST_ITEM* %13, %struct.xLIST_ITEM** %15, align 4, !tbaa !389
  %16 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %17 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %16, i32 0, i32 2
  store %struct.xLIST_ITEM* %17, %struct.xLIST_ITEM** %8, align 4, !tbaa !400
  %18 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %19 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %18, i32 0, i32 2, i32 4
  store %struct.xLIST* %0, %struct.xLIST** %19, align 4, !tbaa !403
  %20 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %0, i32 0, i32 0
  %21 = load volatile i32, i32* %20, align 4, !tbaa !386
  %22 = add i32 %21, 1
  store volatile i32 %22, i32* %20, align 4, !tbaa !386
  %23 = icmp eq i32 %2, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  tail call fastcc void @prvAddCurrentTaskToDelayedList(i32 noundef %1, i32 noundef 0)
  br label %26

25:                                               ; preds = %3
  tail call fastcc void @prvAddCurrentTaskToDelayedList(i32 noundef -1, i32 noundef %2)
  br label %26

26:                                               ; preds = %24, %25
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @xTaskRemoveFromEventList(%struct.xLIST* nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %0, i32 0, i32 2, i32 1
  %3 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %2, align 4, !tbaa !404
  %4 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %3, i32 0, i32 3
  %5 = bitcast i8** %4 to %struct.tskTaskControlBlock**
  %6 = load %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** %5, align 4, !tbaa !391
  %7 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 2, i32 4
  %9 = load %struct.xLIST*, %struct.xLIST** %8, align 4, !tbaa !403
  %10 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 2, i32 2
  %11 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %10, align 4, !tbaa !408
  %12 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 2, i32 1
  %13 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %12, align 4, !tbaa !409
  %14 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %13, i32 0, i32 2
  store %struct.xLIST_ITEM* %11, %struct.xLIST_ITEM** %14, align 4, !tbaa !400
  %15 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %10, align 4, !tbaa !408
  %16 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %15, i32 0, i32 1
  store %struct.xLIST_ITEM* %13, %struct.xLIST_ITEM** %16, align 4, !tbaa !389
  %17 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %9, i32 0, i32 1
  %18 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %17, align 4, !tbaa !388
  %19 = icmp eq %struct.xLIST_ITEM* %18, %7
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store %struct.xLIST_ITEM* %15, %struct.xLIST_ITEM** %17, align 4, !tbaa !388
  br label %21

21:                                               ; preds = %20, %1
  store %struct.xLIST* null, %struct.xLIST** %8, align 4, !tbaa !403
  %22 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %9, i32 0, i32 0
  %23 = load volatile i32, i32* %22, align 4, !tbaa !386
  %24 = add i32 %23, -1
  store volatile i32 %24, i32* %22, align 4, !tbaa !386
  %25 = load volatile i32, i32* @uxSchedulerSuspended, align 4, !tbaa !382
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %62

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 1
  %29 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 1, i32 4
  %30 = load %struct.xLIST*, %struct.xLIST** %29, align 4, !tbaa !402
  %31 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 1, i32 2
  %32 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %31, align 4, !tbaa !401
  %33 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 1, i32 1
  %34 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %33, align 4, !tbaa !399
  %35 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %34, i32 0, i32 2
  store %struct.xLIST_ITEM* %32, %struct.xLIST_ITEM** %35, align 4, !tbaa !400
  %36 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %31, align 4, !tbaa !401
  %37 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %36, i32 0, i32 1
  store %struct.xLIST_ITEM* %34, %struct.xLIST_ITEM** %37, align 4, !tbaa !389
  %38 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %30, i32 0, i32 1
  %39 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %38, align 4, !tbaa !388
  %40 = icmp eq %struct.xLIST_ITEM* %39, %28
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  store %struct.xLIST_ITEM* %36, %struct.xLIST_ITEM** %38, align 4, !tbaa !388
  br label %42

42:                                               ; preds = %41, %27
  %43 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %30, i32 0, i32 0
  %44 = load volatile i32, i32* %43, align 4, !tbaa !386
  %45 = add i32 %44, -1
  store volatile i32 %45, i32* %43, align 4, !tbaa !386
  %46 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 3
  %47 = load i32, i32* %46, align 4, !tbaa !394
  %48 = load volatile i32, i32* @uxTopReadyPriority, align 4, !tbaa !382
  %49 = icmp ugt i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store volatile i32 %47, i32* @uxTopReadyPriority, align 4, !tbaa !382
  br label %51

51:                                               ; preds = %50, %42
  %52 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %47, i32 1
  %53 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %52, align 4, !tbaa !388
  store %struct.xLIST_ITEM* %53, %struct.xLIST_ITEM** %33, align 4, !tbaa !399
  %54 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %53, i32 0, i32 2
  %55 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %54, align 4, !tbaa !400
  store %struct.xLIST_ITEM* %55, %struct.xLIST_ITEM** %31, align 4, !tbaa !401
  %56 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %54, align 4, !tbaa !400
  %57 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %56, i32 0, i32 1
  store %struct.xLIST_ITEM* %28, %struct.xLIST_ITEM** %57, align 4, !tbaa !389
  store %struct.xLIST_ITEM* %28, %struct.xLIST_ITEM** %54, align 4, !tbaa !400
  %58 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %47
  store %struct.xLIST* %58, %struct.xLIST** %29, align 4, !tbaa !402
  %59 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %47, i32 0
  %60 = load volatile i32, i32* %59, align 4, !tbaa !386
  %61 = add i32 %60, 1
  store volatile i32 %61, i32* %59, align 4, !tbaa !386
  br label %72

62:                                               ; preds = %21
  %63 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** getelementptr inbounds (%struct.xLIST, %struct.xLIST* @xPendingReadyList, i32 0, i32 1), align 4, !tbaa !388
  store %struct.xLIST_ITEM* %63, %struct.xLIST_ITEM** %12, align 4, !tbaa !409
  %64 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %63, i32 0, i32 2
  %65 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %64, align 4, !tbaa !400
  store %struct.xLIST_ITEM* %65, %struct.xLIST_ITEM** %10, align 4, !tbaa !408
  %66 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %64, align 4, !tbaa !400
  %67 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %66, i32 0, i32 1
  store %struct.xLIST_ITEM* %7, %struct.xLIST_ITEM** %67, align 4, !tbaa !389
  store %struct.xLIST_ITEM* %7, %struct.xLIST_ITEM** %64, align 4, !tbaa !400
  store %struct.xLIST* @xPendingReadyList, %struct.xLIST** %8, align 4, !tbaa !403
  %68 = load volatile i32, i32* getelementptr inbounds (%struct.xLIST, %struct.xLIST* @xPendingReadyList, i32 0, i32 0), align 4, !tbaa !386
  %69 = add i32 %68, 1
  store volatile i32 %69, i32* getelementptr inbounds (%struct.xLIST, %struct.xLIST* @xPendingReadyList, i32 0, i32 0), align 4, !tbaa !386
  %70 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 3
  %71 = load i32, i32* %70, align 4, !tbaa !394
  br label %72

72:                                               ; preds = %62, %51
  %73 = phi i32 [ %71, %62 ], [ %47, %51 ]
  %74 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %75 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4, !tbaa !394
  %77 = icmp ugt i32 %73, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store volatile i32 1, i32* @xYieldPending, align 4, !tbaa !382
  br label %79

79:                                               ; preds = %72, %78
  %80 = phi i32 [ 1, %78 ], [ 0, %72 ]
  ret i32 %80
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @vTaskRemoveFromUnorderedEventList(%struct.xLIST_ITEM* noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = or i32 %1, -2147483648
  %4 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %0, i32 0, i32 0
  store i32 %3, i32* %4, align 4, !tbaa !405
  %5 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %0, i32 0, i32 3
  %6 = bitcast i8** %5 to %struct.tskTaskControlBlock**
  %7 = load %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** %6, align 4, !tbaa !391
  %8 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %0, i32 0, i32 4
  %9 = load %struct.xLIST*, %struct.xLIST** %8, align 4, !tbaa !416
  %10 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %0, i32 0, i32 2
  %11 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %10, align 4, !tbaa !400
  %12 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %0, i32 0, i32 1
  %13 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %12, align 4, !tbaa !389
  %14 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %13, i32 0, i32 2
  store %struct.xLIST_ITEM* %11, %struct.xLIST_ITEM** %14, align 4, !tbaa !400
  %15 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %10, align 4, !tbaa !400
  %16 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %15, i32 0, i32 1
  store %struct.xLIST_ITEM* %13, %struct.xLIST_ITEM** %16, align 4, !tbaa !389
  %17 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %9, i32 0, i32 1
  %18 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %17, align 4, !tbaa !388
  %19 = icmp eq %struct.xLIST_ITEM* %18, %0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store %struct.xLIST_ITEM* %15, %struct.xLIST_ITEM** %17, align 4, !tbaa !388
  br label %21

21:                                               ; preds = %20, %2
  store %struct.xLIST* null, %struct.xLIST** %8, align 4, !tbaa !416
  %22 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %9, i32 0, i32 0
  %23 = load volatile i32, i32* %22, align 4, !tbaa !386
  %24 = add i32 %23, -1
  store volatile i32 %24, i32* %22, align 4, !tbaa !386
  %25 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %7, i32 0, i32 1
  %26 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %7, i32 0, i32 1, i32 4
  %27 = load %struct.xLIST*, %struct.xLIST** %26, align 4, !tbaa !402
  %28 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %7, i32 0, i32 1, i32 2
  %29 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %28, align 4, !tbaa !401
  %30 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %7, i32 0, i32 1, i32 1
  %31 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %30, align 4, !tbaa !399
  %32 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %31, i32 0, i32 2
  store %struct.xLIST_ITEM* %29, %struct.xLIST_ITEM** %32, align 4, !tbaa !400
  %33 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %28, align 4, !tbaa !401
  %34 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %33, i32 0, i32 1
  store %struct.xLIST_ITEM* %31, %struct.xLIST_ITEM** %34, align 4, !tbaa !389
  %35 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %27, i32 0, i32 1
  %36 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %35, align 4, !tbaa !388
  %37 = icmp eq %struct.xLIST_ITEM* %36, %25
  br i1 %37, label %38, label %39

38:                                               ; preds = %21
  store %struct.xLIST_ITEM* %33, %struct.xLIST_ITEM** %35, align 4, !tbaa !388
  br label %39

39:                                               ; preds = %38, %21
  %40 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %27, i32 0, i32 0
  %41 = load volatile i32, i32* %40, align 4, !tbaa !386
  %42 = add i32 %41, -1
  store volatile i32 %42, i32* %40, align 4, !tbaa !386
  %43 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %7, i32 0, i32 3
  %44 = load i32, i32* %43, align 4, !tbaa !394
  %45 = load volatile i32, i32* @uxTopReadyPriority, align 4, !tbaa !382
  %46 = icmp ugt i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store volatile i32 %44, i32* @uxTopReadyPriority, align 4, !tbaa !382
  br label %48

48:                                               ; preds = %47, %39
  %49 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %44, i32 1
  %50 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %49, align 4, !tbaa !388
  store %struct.xLIST_ITEM* %50, %struct.xLIST_ITEM** %30, align 4, !tbaa !399
  %51 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %50, i32 0, i32 2
  %52 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %51, align 4, !tbaa !400
  store %struct.xLIST_ITEM* %52, %struct.xLIST_ITEM** %28, align 4, !tbaa !401
  %53 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %51, align 4, !tbaa !400
  %54 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %53, i32 0, i32 1
  store %struct.xLIST_ITEM* %25, %struct.xLIST_ITEM** %54, align 4, !tbaa !389
  store %struct.xLIST_ITEM* %25, %struct.xLIST_ITEM** %51, align 4, !tbaa !400
  %55 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %44
  store %struct.xLIST* %55, %struct.xLIST** %26, align 4, !tbaa !402
  %56 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %44, i32 0
  %57 = load volatile i32, i32* %56, align 4, !tbaa !386
  %58 = add i32 %57, 1
  store volatile i32 %58, i32* %56, align 4, !tbaa !386
  %59 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %60 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4, !tbaa !394
  %62 = icmp ugt i32 %44, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %48
  store volatile i32 1, i32* @xYieldPending, align 4, !tbaa !382
  br label %64

64:                                               ; preds = %63, %48
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @vTaskSetTimeOutState(%struct.iobank0_status_ctrl_hw_t* nocapture noundef writeonly %0) local_unnamed_addr #3 {
  tail call void @vPortEnterCritical() #30
  %2 = load volatile i32, i32* @xNumOfOverflows, align 4, !tbaa !382
  %3 = getelementptr inbounds %struct.iobank0_status_ctrl_hw_t, %struct.iobank0_status_ctrl_hw_t* %0, i32 0, i32 0
  store i32 %2, i32* %3, align 4, !tbaa !417
  %4 = load volatile i32, i32* @xTickCount, align 4, !tbaa !18
  %5 = getelementptr inbounds %struct.iobank0_status_ctrl_hw_t, %struct.iobank0_status_ctrl_hw_t* %0, i32 0, i32 1
  store i32 %4, i32* %5, align 4, !tbaa !419
  tail call void @vPortExitCritical() #30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local void @vTaskInternalSetTimeOutState(%struct.iobank0_status_ctrl_hw_t* nocapture noundef writeonly %0) local_unnamed_addr #9 {
  %2 = load volatile i32, i32* @xNumOfOverflows, align 4, !tbaa !382
  %3 = getelementptr inbounds %struct.iobank0_status_ctrl_hw_t, %struct.iobank0_status_ctrl_hw_t* %0, i32 0, i32 0
  store i32 %2, i32* %3, align 4, !tbaa !417
  %4 = load volatile i32, i32* @xTickCount, align 4, !tbaa !18
  %5 = getelementptr inbounds %struct.iobank0_status_ctrl_hw_t, %struct.iobank0_status_ctrl_hw_t* %0, i32 0, i32 1
  store i32 %4, i32* %5, align 4, !tbaa !419
  ret void
}

; Function Attrs: noinline nounwind
define dso_local i32 @xTaskCheckForTimeOut(%struct.iobank0_status_ctrl_hw_t* nocapture noundef %0, i32* nocapture noundef %1) local_unnamed_addr #3 {
  tail call void @vPortEnterCritical() #30
  %3 = load volatile i32, i32* @xTickCount, align 4, !tbaa !18
  %4 = getelementptr inbounds %struct.iobank0_status_ctrl_hw_t, %struct.iobank0_status_ctrl_hw_t* %0, i32 0, i32 1
  %5 = load i32, i32* %4, align 4, !tbaa !419
  %6 = sub i32 %3, %5
  %7 = load i32, i32* %1, align 4, !tbaa !18
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %22, label %9

9:                                                ; preds = %2
  %10 = load volatile i32, i32* @xNumOfOverflows, align 4, !tbaa !382
  %11 = getelementptr inbounds %struct.iobank0_status_ctrl_hw_t, %struct.iobank0_status_ctrl_hw_t* %0, i32 0, i32 0
  %12 = load i32, i32* %11, align 4, !tbaa !417
  %13 = icmp eq i32 %10, %12
  %14 = icmp ult i32 %3, %5
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  store i32 0, i32* %1, align 4, !tbaa !18
  br label %22

17:                                               ; preds = %9
  %18 = icmp ugt i32 %7, %6
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = sub i32 %7, %6
  store i32 %20, i32* %1, align 4, !tbaa !18
  tail call void @vTaskInternalSetTimeOutState(%struct.iobank0_status_ctrl_hw_t* noundef nonnull %0)
  br label %22

21:                                               ; preds = %17
  store i32 0, i32* %1, align 4, !tbaa !18
  br label %22

22:                                               ; preds = %2, %16, %21, %19
  %23 = phi i32 [ 1, %16 ], [ 0, %19 ], [ 1, %21 ], [ 0, %2 ]
  tail call void @vPortExitCritical() #30
  ret i32 %23
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @vTaskMissedYield() local_unnamed_addr #2 {
  store volatile i32 1, i32* @xYieldPending, align 4, !tbaa !382
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local void @vTaskSetThreadLocalStoragePointer(%struct.tskTaskControlBlock* noundef writeonly %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #9 {
  %4 = icmp slt i32 %1, 5
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = icmp eq %struct.tskTaskControlBlock* %0, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  %8 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  br label %9

9:                                                ; preds = %5, %7
  %10 = phi %struct.tskTaskControlBlock* [ %8, %7 ], [ %0, %5 ]
  %11 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %10, i32 0, i32 6, i32 %1
  store i8* %2, i8** %11, align 4, !tbaa !11
  br label %12

12:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local i8* @pvTaskGetThreadLocalStoragePointer(%struct.tskTaskControlBlock* noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = icmp slt i32 %1, 5
  br i1 %3, label %4, label %12

4:                                                ; preds = %2
  %5 = icmp eq %struct.tskTaskControlBlock* %0, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  br label %8

8:                                                ; preds = %4, %6
  %9 = phi %struct.tskTaskControlBlock* [ %7, %6 ], [ %0, %4 ]
  %10 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %9, i32 0, i32 6, i32 %1
  %11 = load i8*, i8** %10, align 4, !tbaa !11
  br label %12

12:                                               ; preds = %2, %8
  %13 = phi i8* [ %11, %8 ], [ null, %2 ]
  ret i8* %13
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local %struct.tskTaskControlBlock* @xTaskGetCurrentTaskHandle() local_unnamed_addr #9 {
  %1 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  ret %struct.tskTaskControlBlock* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local i32 @xTaskGetSchedulerState() local_unnamed_addr #9 {
  %1 = load volatile i32, i32* @xSchedulerRunning, align 4, !tbaa !382
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = load volatile i32, i32* @uxSchedulerSuspended, align 4, !tbaa !382
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 2, i32 0
  br label %7

7:                                                ; preds = %3, %0
  %8 = phi i32 [ 1, %0 ], [ %6, %3 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local i32 @uxTaskResetEventItemValue() local_unnamed_addr #9 {
  %1 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %2 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %1, i32 0, i32 2, i32 0
  %3 = load i32, i32* %2, align 4, !tbaa !396
  %4 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %5 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4, !tbaa !394
  %7 = sub i32 5, %6
  %8 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %9 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %8, i32 0, i32 2, i32 0
  store i32 %7, i32* %9, align 4, !tbaa !396
  ret i32 %3
}

; Function Attrs: noinline nounwind
define dso_local i32 @ulTaskGenericNotifyTake(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  tail call void @vPortEnterCritical() #30
  %4 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %5 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %4, i32 0, i32 7, i32 %0
  %6 = load volatile i32, i32* %5, align 4, !tbaa !18
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %10 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %9, i32 0, i32 8, i32 %0
  store volatile i8 1, i8* %10, align 1, !tbaa !8
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call fastcc void @prvAddCurrentTaskToDelayedList(i32 noundef %2, i32 noundef 1)
  tail call void @vPortYield() #30
  br label %13

13:                                               ; preds = %3, %12, %8
  tail call void @vPortExitCritical() #30
  tail call void @vPortEnterCritical() #30
  %14 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %15 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %14, i32 0, i32 7, i32 %0
  %16 = load volatile i32, i32* %15, align 4, !tbaa !18
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = icmp eq i32 %1, 0
  %20 = add i32 %16, -1
  %21 = select i1 %19, i32 %20, i32 0
  %22 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %23 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %22, i32 0, i32 7, i32 %0
  store volatile i32 %21, i32* %23, align 4, !tbaa !18
  br label %24

24:                                               ; preds = %18, %13
  %25 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %26 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %25, i32 0, i32 8, i32 %0
  store volatile i8 0, i8* %26, align 1, !tbaa !8
  tail call void @vPortExitCritical() #30
  ret i32 %16
}

; Function Attrs: noinline nounwind
define dso_local i32 @xTaskGenericNotifyWait(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32* noundef writeonly %3, i32 noundef %4) local_unnamed_addr #3 {
  tail call void @vPortEnterCritical() #30
  %6 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %7 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %6, i32 0, i32 8, i32 %0
  %8 = load volatile i8, i8* %7, align 1, !tbaa !8
  %9 = icmp eq i8 %8, 2
  br i1 %9, label %20, label %10

10:                                               ; preds = %5
  %11 = xor i32 %1, -1
  %12 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %13 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %12, i32 0, i32 7, i32 %0
  %14 = load volatile i32, i32* %13, align 4, !tbaa !18
  %15 = and i32 %14, %11
  store volatile i32 %15, i32* %13, align 4, !tbaa !18
  %16 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %17 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %16, i32 0, i32 8, i32 %0
  store volatile i8 1, i8* %17, align 1, !tbaa !8
  %18 = icmp eq i32 %4, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  tail call fastcc void @prvAddCurrentTaskToDelayedList(i32 noundef %4, i32 noundef 1)
  tail call void @vPortYield() #30
  br label %20

20:                                               ; preds = %5, %19, %10
  tail call void @vPortExitCritical() #30
  tail call void @vPortEnterCritical() #30
  %21 = icmp eq i32* %3, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %20
  %23 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %24 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %23, i32 0, i32 7, i32 %0
  %25 = load volatile i32, i32* %24, align 4, !tbaa !18
  store i32 %25, i32* %3, align 4, !tbaa !18
  br label %26

26:                                               ; preds = %22, %20
  %27 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %28 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %27, i32 0, i32 8, i32 %0
  %29 = load volatile i8, i8* %28, align 1, !tbaa !8
  %30 = icmp eq i8 %29, 2
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = xor i32 %2, -1
  %33 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %34 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %33, i32 0, i32 7, i32 %0
  %35 = load volatile i32, i32* %34, align 4, !tbaa !18
  %36 = and i32 %35, %32
  store volatile i32 %36, i32* %34, align 4, !tbaa !18
  br label %37

37:                                               ; preds = %26, %31
  %38 = phi i32 [ 1, %31 ], [ 0, %26 ]
  %39 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %40 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %39, i32 0, i32 8, i32 %0
  store volatile i8 0, i8* %40, align 1, !tbaa !8
  tail call void @vPortExitCritical() #30
  ret i32 %38
}

; Function Attrs: noinline nounwind
define dso_local i32 @xTaskGenericNotify(%struct.tskTaskControlBlock* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32* noundef writeonly %4) local_unnamed_addr #3 {
  tail call void @vPortEnterCritical() #30
  %6 = icmp eq i32* %4, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 7, i32 %1
  %9 = load volatile i32, i32* %8, align 4, !tbaa !18
  store i32 %9, i32* %4, align 4, !tbaa !18
  br label %10

10:                                               ; preds = %7, %5
  %11 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 8, i32 %1
  %12 = load volatile i8, i8* %11, align 1, !tbaa !8
  store volatile i8 2, i8* %11, align 1, !tbaa !8
  switch i32 %3, label %27 [
    i32 1, label %13
    i32 2, label %17
    i32 3, label %21
    i32 4, label %23
  ]

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 7, i32 %1
  %15 = load volatile i32, i32* %14, align 4, !tbaa !18
  %16 = or i32 %15, %2
  store volatile i32 %16, i32* %14, align 4, !tbaa !18
  br label %27

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 7, i32 %1
  %19 = load volatile i32, i32* %18, align 4, !tbaa !18
  %20 = add i32 %19, 1
  store volatile i32 %20, i32* %18, align 4, !tbaa !18
  br label %27

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 7, i32 %1
  store volatile i32 %2, i32* %22, align 4, !tbaa !18
  br label %27

23:                                               ; preds = %10
  %24 = icmp eq i8 %12, 2
  br i1 %24, label %69, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 7, i32 %1
  store volatile i32 %2, i32* %26, align 4, !tbaa !18
  br label %27

27:                                               ; preds = %10, %25, %21, %17, %13
  %28 = icmp eq i8 %12, 1
  br i1 %28, label %29, label %69

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1
  %31 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1, i32 4
  %32 = load %struct.xLIST*, %struct.xLIST** %31, align 4, !tbaa !402
  %33 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1, i32 2
  %34 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %33, align 4, !tbaa !401
  %35 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1, i32 1
  %36 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %35, align 4, !tbaa !399
  %37 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %36, i32 0, i32 2
  store %struct.xLIST_ITEM* %34, %struct.xLIST_ITEM** %37, align 4, !tbaa !400
  %38 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %33, align 4, !tbaa !401
  %39 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %38, i32 0, i32 1
  store %struct.xLIST_ITEM* %36, %struct.xLIST_ITEM** %39, align 4, !tbaa !389
  %40 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %32, i32 0, i32 1
  %41 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %40, align 4, !tbaa !388
  %42 = icmp eq %struct.xLIST_ITEM* %41, %30
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  store %struct.xLIST_ITEM* %38, %struct.xLIST_ITEM** %40, align 4, !tbaa !388
  br label %44

44:                                               ; preds = %43, %29
  %45 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %32, i32 0, i32 0
  %46 = load volatile i32, i32* %45, align 4, !tbaa !386
  %47 = add i32 %46, -1
  store volatile i32 %47, i32* %45, align 4, !tbaa !386
  %48 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 3
  %49 = load i32, i32* %48, align 4, !tbaa !394
  %50 = load volatile i32, i32* @uxTopReadyPriority, align 4, !tbaa !382
  %51 = icmp ugt i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store volatile i32 %49, i32* @uxTopReadyPriority, align 4, !tbaa !382
  br label %53

53:                                               ; preds = %52, %44
  %54 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %49, i32 1
  %55 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %54, align 4, !tbaa !388
  store %struct.xLIST_ITEM* %55, %struct.xLIST_ITEM** %35, align 4, !tbaa !399
  %56 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %55, i32 0, i32 2
  %57 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %56, align 4, !tbaa !400
  store %struct.xLIST_ITEM* %57, %struct.xLIST_ITEM** %33, align 4, !tbaa !401
  %58 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %56, align 4, !tbaa !400
  %59 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %58, i32 0, i32 1
  store %struct.xLIST_ITEM* %30, %struct.xLIST_ITEM** %59, align 4, !tbaa !389
  store %struct.xLIST_ITEM* %30, %struct.xLIST_ITEM** %56, align 4, !tbaa !400
  %60 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %49
  store %struct.xLIST* %60, %struct.xLIST** %31, align 4, !tbaa !402
  %61 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %49, i32 0
  %62 = load volatile i32, i32* %61, align 4, !tbaa !386
  %63 = add i32 %62, 1
  store volatile i32 %63, i32* %61, align 4, !tbaa !386
  %64 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %65 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4, !tbaa !394
  %67 = icmp ugt i32 %49, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %53
  tail call void @vPortYield() #30
  br label %69

69:                                               ; preds = %23, %27, %68, %53
  %70 = phi i32 [ 1, %27 ], [ 1, %68 ], [ 1, %53 ], [ 0, %23 ]
  tail call void @vPortExitCritical() #30
  ret i32 %70
}

; Function Attrs: noinline nounwind
define dso_local i32 @xTaskGenericNotifyFromISR(%struct.tskTaskControlBlock* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32* noundef writeonly %4, i32* noundef writeonly %5) local_unnamed_addr #3 {
  %7 = tail call i32 @ulSetInterruptMaskFromISR() #30
  %8 = icmp eq i32* %4, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 7, i32 %1
  %11 = load volatile i32, i32* %10, align 4, !tbaa !18
  store i32 %11, i32* %4, align 4, !tbaa !18
  br label %12

12:                                               ; preds = %9, %6
  %13 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 8, i32 %1
  %14 = load volatile i8, i8* %13, align 1, !tbaa !8
  store volatile i8 2, i8* %13, align 1, !tbaa !8
  switch i32 %3, label %29 [
    i32 1, label %15
    i32 2, label %19
    i32 3, label %23
    i32 4, label %25
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 7, i32 %1
  %17 = load volatile i32, i32* %16, align 4, !tbaa !18
  %18 = or i32 %17, %2
  store volatile i32 %18, i32* %16, align 4, !tbaa !18
  br label %29

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 7, i32 %1
  %21 = load volatile i32, i32* %20, align 4, !tbaa !18
  %22 = add i32 %21, 1
  store volatile i32 %22, i32* %20, align 4, !tbaa !18
  br label %29

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 7, i32 %1
  store volatile i32 %2, i32* %24, align 4, !tbaa !18
  br label %29

25:                                               ; preds = %12
  %26 = icmp eq i8 %14, 2
  br i1 %26, label %93, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 7, i32 %1
  store volatile i32 %2, i32* %28, align 4, !tbaa !18
  br label %29

29:                                               ; preds = %12, %27, %23, %19, %15
  %30 = icmp eq i8 %14, 1
  br i1 %30, label %31, label %93

31:                                               ; preds = %29
  %32 = load volatile i32, i32* @uxSchedulerSuspended, align 4, !tbaa !382
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %69

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1
  %36 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1, i32 4
  %37 = load %struct.xLIST*, %struct.xLIST** %36, align 4, !tbaa !402
  %38 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1, i32 2
  %39 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %38, align 4, !tbaa !401
  %40 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1, i32 1
  %41 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %40, align 4, !tbaa !399
  %42 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %41, i32 0, i32 2
  store %struct.xLIST_ITEM* %39, %struct.xLIST_ITEM** %42, align 4, !tbaa !400
  %43 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %38, align 4, !tbaa !401
  %44 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %43, i32 0, i32 1
  store %struct.xLIST_ITEM* %41, %struct.xLIST_ITEM** %44, align 4, !tbaa !389
  %45 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %37, i32 0, i32 1
  %46 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %45, align 4, !tbaa !388
  %47 = icmp eq %struct.xLIST_ITEM* %46, %35
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  store %struct.xLIST_ITEM* %43, %struct.xLIST_ITEM** %45, align 4, !tbaa !388
  br label %49

49:                                               ; preds = %48, %34
  %50 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %37, i32 0, i32 0
  %51 = load volatile i32, i32* %50, align 4, !tbaa !386
  %52 = add i32 %51, -1
  store volatile i32 %52, i32* %50, align 4, !tbaa !386
  %53 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 3
  %54 = load i32, i32* %53, align 4, !tbaa !394
  %55 = load volatile i32, i32* @uxTopReadyPriority, align 4, !tbaa !382
  %56 = icmp ugt i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store volatile i32 %54, i32* @uxTopReadyPriority, align 4, !tbaa !382
  br label %58

58:                                               ; preds = %57, %49
  %59 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %54, i32 1
  %60 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %59, align 4, !tbaa !388
  store %struct.xLIST_ITEM* %60, %struct.xLIST_ITEM** %40, align 4, !tbaa !399
  %61 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %60, i32 0, i32 2
  %62 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %61, align 4, !tbaa !400
  store %struct.xLIST_ITEM* %62, %struct.xLIST_ITEM** %38, align 4, !tbaa !401
  %63 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %61, align 4, !tbaa !400
  %64 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %63, i32 0, i32 1
  store %struct.xLIST_ITEM* %35, %struct.xLIST_ITEM** %64, align 4, !tbaa !389
  store %struct.xLIST_ITEM* %35, %struct.xLIST_ITEM** %61, align 4, !tbaa !400
  %65 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %54
  store %struct.xLIST* %65, %struct.xLIST** %36, align 4, !tbaa !402
  %66 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %54, i32 0
  %67 = load volatile i32, i32* %66, align 4, !tbaa !386
  %68 = add i32 %67, 1
  store volatile i32 %68, i32* %66, align 4, !tbaa !386
  br label %83

69:                                               ; preds = %31
  %70 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** getelementptr inbounds (%struct.xLIST, %struct.xLIST* @xPendingReadyList, i32 0, i32 1), align 4, !tbaa !388
  %71 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 2
  %72 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 2, i32 1
  store %struct.xLIST_ITEM* %70, %struct.xLIST_ITEM** %72, align 4, !tbaa !409
  %73 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %70, i32 0, i32 2
  %74 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %73, align 4, !tbaa !400
  %75 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 2, i32 2
  store %struct.xLIST_ITEM* %74, %struct.xLIST_ITEM** %75, align 4, !tbaa !408
  %76 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %73, align 4, !tbaa !400
  %77 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %76, i32 0, i32 1
  store %struct.xLIST_ITEM* %71, %struct.xLIST_ITEM** %77, align 4, !tbaa !389
  store %struct.xLIST_ITEM* %71, %struct.xLIST_ITEM** %73, align 4, !tbaa !400
  %78 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 2, i32 4
  store %struct.xLIST* @xPendingReadyList, %struct.xLIST** %78, align 4, !tbaa !403
  %79 = load volatile i32, i32* getelementptr inbounds (%struct.xLIST, %struct.xLIST* @xPendingReadyList, i32 0, i32 0), align 4, !tbaa !386
  %80 = add i32 %79, 1
  store volatile i32 %80, i32* getelementptr inbounds (%struct.xLIST, %struct.xLIST* @xPendingReadyList, i32 0, i32 0), align 4, !tbaa !386
  %81 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 3
  %82 = load i32, i32* %81, align 4, !tbaa !394
  br label %83

83:                                               ; preds = %69, %58
  %84 = phi i32 [ %82, %69 ], [ %54, %58 ]
  %85 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %86 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4, !tbaa !394
  %88 = icmp ugt i32 %84, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = icmp eq i32* %5, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %89
  store i32 1, i32* %5, align 4, !tbaa !382
  br label %92

92:                                               ; preds = %91, %89
  store volatile i32 1, i32* @xYieldPending, align 4, !tbaa !382
  br label %93

93:                                               ; preds = %25, %92, %83, %29
  %94 = phi i32 [ 1, %92 ], [ 1, %83 ], [ 1, %29 ], [ 0, %25 ]
  tail call void @vClearInterruptMaskFromISR(i32 noundef %7) #30
  ret i32 %94
}

; Function Attrs: noinline nounwind
define dso_local void @vTaskGenericNotifyGiveFromISR(%struct.tskTaskControlBlock* noundef %0, i32 noundef %1, i32* noundef writeonly %2) local_unnamed_addr #3 {
  %4 = tail call i32 @ulSetInterruptMaskFromISR() #30
  %5 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 8, i32 %1
  %6 = load volatile i8, i8* %5, align 1, !tbaa !8
  store volatile i8 2, i8* %5, align 1, !tbaa !8
  %7 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 7, i32 %1
  %8 = load volatile i32, i32* %7, align 4, !tbaa !18
  %9 = add i32 %8, 1
  store volatile i32 %9, i32* %7, align 4, !tbaa !18
  %10 = icmp eq i8 %6, 1
  br i1 %10, label %11, label %73

11:                                               ; preds = %3
  %12 = load volatile i32, i32* @uxSchedulerSuspended, align 4, !tbaa !382
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %49

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1
  %16 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1, i32 4
  %17 = load %struct.xLIST*, %struct.xLIST** %16, align 4, !tbaa !402
  %18 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1, i32 2
  %19 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %18, align 4, !tbaa !401
  %20 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 1, i32 1
  %21 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %20, align 4, !tbaa !399
  %22 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %21, i32 0, i32 2
  store %struct.xLIST_ITEM* %19, %struct.xLIST_ITEM** %22, align 4, !tbaa !400
  %23 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %18, align 4, !tbaa !401
  %24 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %23, i32 0, i32 1
  store %struct.xLIST_ITEM* %21, %struct.xLIST_ITEM** %24, align 4, !tbaa !389
  %25 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %17, i32 0, i32 1
  %26 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %25, align 4, !tbaa !388
  %27 = icmp eq %struct.xLIST_ITEM* %26, %15
  br i1 %27, label %28, label %29

28:                                               ; preds = %14
  store %struct.xLIST_ITEM* %23, %struct.xLIST_ITEM** %25, align 4, !tbaa !388
  br label %29

29:                                               ; preds = %28, %14
  %30 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %17, i32 0, i32 0
  %31 = load volatile i32, i32* %30, align 4, !tbaa !386
  %32 = add i32 %31, -1
  store volatile i32 %32, i32* %30, align 4, !tbaa !386
  %33 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 3
  %34 = load i32, i32* %33, align 4, !tbaa !394
  %35 = load volatile i32, i32* @uxTopReadyPriority, align 4, !tbaa !382
  %36 = icmp ugt i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store volatile i32 %34, i32* @uxTopReadyPriority, align 4, !tbaa !382
  br label %38

38:                                               ; preds = %37, %29
  %39 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %34, i32 1
  %40 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %39, align 4, !tbaa !388
  store %struct.xLIST_ITEM* %40, %struct.xLIST_ITEM** %20, align 4, !tbaa !399
  %41 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %40, i32 0, i32 2
  %42 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %41, align 4, !tbaa !400
  store %struct.xLIST_ITEM* %42, %struct.xLIST_ITEM** %18, align 4, !tbaa !401
  %43 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %41, align 4, !tbaa !400
  %44 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %43, i32 0, i32 1
  store %struct.xLIST_ITEM* %15, %struct.xLIST_ITEM** %44, align 4, !tbaa !389
  store %struct.xLIST_ITEM* %15, %struct.xLIST_ITEM** %41, align 4, !tbaa !400
  %45 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %34
  store %struct.xLIST* %45, %struct.xLIST** %16, align 4, !tbaa !402
  %46 = getelementptr inbounds [5 x %struct.xLIST], [5 x %struct.xLIST]* @pxReadyTasksLists, i32 0, i32 %34, i32 0
  %47 = load volatile i32, i32* %46, align 4, !tbaa !386
  %48 = add i32 %47, 1
  store volatile i32 %48, i32* %46, align 4, !tbaa !386
  br label %63

49:                                               ; preds = %11
  %50 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** getelementptr inbounds (%struct.xLIST, %struct.xLIST* @xPendingReadyList, i32 0, i32 1), align 4, !tbaa !388
  %51 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 2
  %52 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 2, i32 1
  store %struct.xLIST_ITEM* %50, %struct.xLIST_ITEM** %52, align 4, !tbaa !409
  %53 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %50, i32 0, i32 2
  %54 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %53, align 4, !tbaa !400
  %55 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 2, i32 2
  store %struct.xLIST_ITEM* %54, %struct.xLIST_ITEM** %55, align 4, !tbaa !408
  %56 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %53, align 4, !tbaa !400
  %57 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %56, i32 0, i32 1
  store %struct.xLIST_ITEM* %51, %struct.xLIST_ITEM** %57, align 4, !tbaa !389
  store %struct.xLIST_ITEM* %51, %struct.xLIST_ITEM** %53, align 4, !tbaa !400
  %58 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 2, i32 4
  store %struct.xLIST* @xPendingReadyList, %struct.xLIST** %58, align 4, !tbaa !403
  %59 = load volatile i32, i32* getelementptr inbounds (%struct.xLIST, %struct.xLIST* @xPendingReadyList, i32 0, i32 0), align 4, !tbaa !386
  %60 = add i32 %59, 1
  store volatile i32 %60, i32* getelementptr inbounds (%struct.xLIST, %struct.xLIST* @xPendingReadyList, i32 0, i32 0), align 4, !tbaa !386
  %61 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %0, i32 0, i32 3
  %62 = load i32, i32* %61, align 4, !tbaa !394
  br label %63

63:                                               ; preds = %49, %38
  %64 = phi i32 [ %62, %49 ], [ %34, %38 ]
  %65 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  %66 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4, !tbaa !394
  %68 = icmp ugt i32 %64, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = icmp eq i32* %2, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %69
  store i32 1, i32* %2, align 4, !tbaa !382
  br label %72

72:                                               ; preds = %71, %69
  store volatile i32 1, i32* @xYieldPending, align 4, !tbaa !382
  br label %73

73:                                               ; preds = %72, %63, %3
  tail call void @vClearInterruptMaskFromISR(i32 noundef %4) #30
  ret void
}

; Function Attrs: noinline nounwind
define dso_local i32 @xTaskGenericNotifyStateClear(%struct.tskTaskControlBlock* noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq %struct.tskTaskControlBlock* %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi %struct.tskTaskControlBlock* [ %5, %4 ], [ %0, %2 ]
  tail call void @vPortEnterCritical() #30
  %8 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %7, i32 0, i32 8, i32 %1
  %9 = load volatile i8, i8* %8, align 1, !tbaa !8
  %10 = icmp eq i8 %9, 2
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  store volatile i8 0, i8* %8, align 1, !tbaa !8
  br label %12

12:                                               ; preds = %6, %11
  %13 = phi i32 [ 1, %11 ], [ 0, %6 ]
  tail call void @vPortExitCritical() #30
  ret i32 %13
}

; Function Attrs: noinline nounwind
define dso_local i32 @ulTaskGenericNotifyValueClear(%struct.tskTaskControlBlock* noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = icmp eq %struct.tskTaskControlBlock* %0, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = load volatile %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @pxCurrentTCB, align 4, !tbaa !11
  br label %7

7:                                                ; preds = %3, %5
  %8 = phi %struct.tskTaskControlBlock* [ %6, %5 ], [ %0, %3 ]
  tail call void @vPortEnterCritical() #30
  %9 = getelementptr inbounds %struct.tskTaskControlBlock, %struct.tskTaskControlBlock* %8, i32 0, i32 7, i32 %1
  %10 = load volatile i32, i32* %9, align 4, !tbaa !18
  %11 = xor i32 %2, -1
  %12 = load volatile i32, i32* %9, align 4, !tbaa !18
  %13 = and i32 %12, %11
  store volatile i32 %13, i32* %9, align 4, !tbaa !18
  tail call void @vPortExitCritical() #30
  ret i32 %10
}

; Function Attrs: noinline nounwind
define dso_local i32 @xTimerCreateTimerTask() local_unnamed_addr #3 {
  tail call fastcc void @prvCheckForValidListAndQueue()
  %1 = load %struct.QueueDefinition*, %struct.QueueDefinition** @xTimerQueue, align 4, !tbaa !11
  %2 = icmp eq %struct.QueueDefinition* %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @xTaskCreate(void (i8*)* noundef nonnull @prvTimerTask, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.259, i32 0, i32 0), i16 noundef zeroext 256, i8* noundef null, i32 noundef 3, %struct.tskTaskControlBlock** noundef nonnull @xTimerTaskHandle) #30
  br label %5

5:                                                ; preds = %0, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %0 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind
define internal fastcc void @prvCheckForValidListAndQueue() unnamed_addr #3 {
  tail call void @vPortEnterCritical() #30
  %1 = load %struct.QueueDefinition*, %struct.QueueDefinition** @xTimerQueue, align 4, !tbaa !11
  %2 = icmp eq %struct.QueueDefinition* %1, null
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  tail call void @vListInitialise(%struct.xLIST* noundef nonnull @xActiveTimerList1) #30
  tail call void @vListInitialise(%struct.xLIST* noundef nonnull @xActiveTimerList2) #30
  store %struct.xLIST* @xActiveTimerList1, %struct.xLIST** @pxCurrentTimerList, align 4, !tbaa !11
  store %struct.xLIST* @xActiveTimerList2, %struct.xLIST** @pxOverflowTimerList, align 4, !tbaa !11
  %4 = tail call %struct.QueueDefinition* @xQueueGenericCreate(i32 noundef 10, i32 noundef 12, i8 noundef zeroext 0) #30
  store %struct.QueueDefinition* %4, %struct.QueueDefinition** @xTimerQueue, align 4, !tbaa !11
  %5 = icmp eq %struct.QueueDefinition* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @vQueueAddToRegistry(%struct.QueueDefinition* noundef nonnull %4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.260, i32 0, i32 0)) #30
  br label %7

7:                                                ; preds = %0, %6, %3
  tail call void @vPortExitCritical() #30
  ret void
}

; Function Attrs: noinline noreturn nounwind
define internal void @prvTimerTask(i8* nocapture noundef readnone %0) #0 {
  %2 = alloca i32, align 4
  %3 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #30
  br label %4

4:                                                ; preds = %4, %1
  %5 = call fastcc i32 @prvGetNextExpireTime(i32* noundef nonnull %2)
  %6 = load i32, i32* %2, align 4, !tbaa !382
  tail call fastcc void @prvProcessTimerOrBlockTask(i32 noundef %5, i32 noundef %6)
  tail call fastcc void @prvProcessReceivedCommands()
  br label %4
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define internal fastcc i32 @prvGetNextExpireTime(i32* nocapture noundef writeonly %0) unnamed_addr #9 {
  %2 = load %struct.xLIST*, %struct.xLIST** @pxCurrentTimerList, align 4, !tbaa !11
  %3 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %2, i32 0, i32 0
  %4 = load volatile i32, i32* %3, align 4, !tbaa !386
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  store i32 %6, i32* %0, align 4, !tbaa !382
  br i1 %5, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %2, i32 0, i32 2, i32 1
  %9 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %8, align 4, !tbaa !404
  %10 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4, !tbaa !405
  br label %12

12:                                               ; preds = %1, %7
  %13 = phi i32 [ %11, %7 ], [ 0, %1 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind
define internal fastcc void @prvProcessTimerOrBlockTask(i32 noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = alloca i32, align 4
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #30
  tail call void @vTaskSuspendAll() #30
  %5 = call fastcc i32 @prvSampleTimeNow(i32* noundef nonnull %3)
  %6 = load i32, i32* %3, align 4, !tbaa !382
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %2
  %9 = icmp ne i32 %1, 0
  %10 = icmp ult i32 %5, %0
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @xTaskResumeAll() #30
  tail call fastcc void @prvProcessExpiredTimer(i32 noundef %0, i32 noundef %5)
  br label %31

14:                                               ; preds = %8
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %14
  %17 = load %struct.xLIST*, %struct.xLIST** @pxOverflowTimerList, align 4, !tbaa !11
  %18 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %17, i32 0, i32 0
  %19 = load volatile i32, i32* %18, align 4, !tbaa !386
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  br label %22

22:                                               ; preds = %16, %14
  %23 = phi i32 [ %21, %16 ], [ 0, %14 ]
  %24 = load %struct.QueueDefinition*, %struct.QueueDefinition** @xTimerQueue, align 4, !tbaa !11
  %25 = sub i32 %0, %5
  tail call void @vQueueWaitForMessageRestricted(%struct.QueueDefinition* noundef %24, i32 noundef %25, i32 noundef %23) #30
  %26 = tail call i32 @xTaskResumeAll() #30
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  tail call void @vPortYield() #30
  br label %31

29:                                               ; preds = %2
  %30 = tail call i32 @xTaskResumeAll() #30
  br label %31

31:                                               ; preds = %12, %22, %28, %29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #30
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc void @prvProcessReceivedCommands() unnamed_addr #3 {
  %1 = alloca %struct.tmrTimerQueueMessage, align 4
  %2 = alloca i32, align 4
  %3 = bitcast %struct.tmrTimerQueueMessage* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %3) #30
  %4 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #30
  %5 = load %struct.QueueDefinition*, %struct.QueueDefinition** @xTimerQueue, align 4, !tbaa !11
  %6 = call i32 @xQueueReceive(%struct.QueueDefinition* noundef %5, i8* noundef nonnull %3, i32 noundef 0) #30
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %74, label %8

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.tmrTimerQueueMessage, %struct.tmrTimerQueueMessage* %1, i32 0, i32 0
  %10 = getelementptr inbounds %struct.tmrTimerQueueMessage, %struct.tmrTimerQueueMessage* %1, i32 0, i32 1, i32 0, i32 1
  %11 = getelementptr inbounds %struct.tmrTimerQueueMessage, %struct.tmrTimerQueueMessage* %1, i32 0, i32 1, i32 0, i32 0
  br label %12

12:                                               ; preds = %8, %70
  %13 = load i32, i32* %9, align 4, !tbaa !420
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %70

15:                                               ; preds = %12
  %16 = load %struct.tmrTimerControl*, %struct.tmrTimerControl** %10, align 4, !tbaa !8
  %17 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %16, i32 0, i32 1, i32 4
  %18 = load %struct.xLIST*, %struct.xLIST** %17, align 4, !tbaa !422
  %19 = icmp eq %struct.xLIST* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %16, i32 0, i32 1
  %22 = call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %21) #30
  br label %23

23:                                               ; preds = %15, %20
  %24 = call fastcc i32 @prvSampleTimeNow(i32* noundef nonnull %2)
  %25 = load i32, i32* %9, align 4, !tbaa !420
  switch i32 %25, label %70 [
    i32 1, label %26
    i32 6, label %26
    i32 2, label %26
    i32 7, label %26
    i32 3, label %49
    i32 8, label %49
    i32 4, label %53
    i32 9, label %53
    i32 5, label %61
  ]

26:                                               ; preds = %23, %23, %23, %23
  %27 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %16, i32 0, i32 5
  %28 = load i8, i8* %27, align 4, !tbaa !424
  %29 = or i8 %28, 1
  store i8 %29, i8* %27, align 4, !tbaa !424
  %30 = load i32, i32* %11, align 4, !tbaa !8
  %31 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %16, i32 0, i32 2
  %32 = load i32, i32* %31, align 4, !tbaa !425
  %33 = add i32 %32, %30
  %34 = call fastcc i32 @prvInsertTimerInActiveList(%struct.tmrTimerControl* noundef nonnull %16, i32 noundef %33, i32 noundef %24, i32 noundef %30)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %70, label %36

36:                                               ; preds = %26
  %37 = load i8, i8* %27, align 4, !tbaa !424
  %38 = and i8 %37, 4
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %11, align 4, !tbaa !8
  %42 = load i32, i32* %31, align 4, !tbaa !425
  %43 = add i32 %42, %41
  call fastcc void @prvReloadTimer(%struct.tmrTimerControl* noundef nonnull %16, i32 noundef %43, i32 noundef %24)
  br label %46

44:                                               ; preds = %36
  %45 = and i8 %37, -2
  store i8 %45, i8* %27, align 4, !tbaa !424
  br label %46

46:                                               ; preds = %44, %40
  %47 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %16, i32 0, i32 4
  %48 = load void (%struct.tmrTimerControl*)*, void (%struct.tmrTimerControl*)** %47, align 4, !tbaa !426
  call void %48(%struct.tmrTimerControl* noundef nonnull %16) #30
  br label %70

49:                                               ; preds = %23, %23
  %50 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %16, i32 0, i32 5
  %51 = load i8, i8* %50, align 4, !tbaa !424
  %52 = and i8 %51, -2
  store i8 %52, i8* %50, align 4, !tbaa !424
  br label %70

53:                                               ; preds = %23, %23
  %54 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %16, i32 0, i32 5
  %55 = load i8, i8* %54, align 4, !tbaa !424
  %56 = or i8 %55, 1
  store i8 %56, i8* %54, align 4, !tbaa !424
  %57 = load i32, i32* %11, align 4, !tbaa !8
  %58 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %16, i32 0, i32 2
  store i32 %57, i32* %58, align 4, !tbaa !425
  %59 = add i32 %57, %24
  %60 = call fastcc i32 @prvInsertTimerInActiveList(%struct.tmrTimerControl* noundef nonnull %16, i32 noundef %59, i32 noundef %24, i32 noundef %24)
  br label %70

61:                                               ; preds = %23
  %62 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %16, i32 0, i32 5
  %63 = load i8, i8* %62, align 4, !tbaa !424
  %64 = and i8 %63, 2
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = bitcast %struct.tmrTimerControl* %16 to i8*
  call void @vPortFree(i8* noundef %67) #30
  br label %70

68:                                               ; preds = %61
  %69 = and i8 %63, -2
  store i8 %69, i8* %62, align 4, !tbaa !424
  br label %70

70:                                               ; preds = %49, %53, %26, %46, %68, %66, %23, %12
  %71 = load %struct.QueueDefinition*, %struct.QueueDefinition** @xTimerQueue, align 4, !tbaa !11
  %72 = call i32 @xQueueReceive(%struct.QueueDefinition* noundef %71, i8* noundef nonnull %3, i32 noundef 0) #30
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %12, !llvm.loop !427

74:                                               ; preds = %70, %0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #30
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %3) #30
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc i32 @prvSampleTimeNow(i32* nocapture noundef writeonly %0) unnamed_addr #3 {
  %2 = tail call i32 @xTaskGetTickCount() #30
  %3 = load i32, i32* @prvSampleTimeNow.xLastTime, align 4, !tbaa !18
  %4 = icmp ult i32 %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call fastcc void @prvSwitchTimerLists()
  br label %6

6:                                                ; preds = %1, %5
  %7 = phi i32 [ 1, %5 ], [ 0, %1 ]
  store i32 %7, i32* %0, align 4, !tbaa !382
  store i32 %2, i32* @prvSampleTimeNow.xLastTime, align 4, !tbaa !18
  ret i32 %2
}

; Function Attrs: noinline nounwind
define internal fastcc i32 @prvInsertTimerInActiveList(%struct.tmrTimerControl* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %0, i32 0, i32 1
  %6 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %5, i32 0, i32 0
  store i32 %1, i32* %6, align 4, !tbaa !428
  %7 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %0, i32 0, i32 1, i32 3
  %8 = bitcast i8** %7 to %struct.tmrTimerControl**
  store %struct.tmrTimerControl* %0, %struct.tmrTimerControl** %8, align 4, !tbaa !429
  %9 = icmp ugt i32 %1, %2
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = sub i32 %2, %3
  %12 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %0, i32 0, i32 2
  %13 = load i32, i32* %12, align 4, !tbaa !425
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %19, label %22

15:                                               ; preds = %4
  %16 = icmp uge i32 %2, %3
  %17 = icmp ult i32 %1, %3
  %18 = or i1 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %10
  %20 = phi %struct.xLIST** [ @pxOverflowTimerList, %10 ], [ @pxCurrentTimerList, %15 ]
  %21 = load %struct.xLIST*, %struct.xLIST** %20, align 4, !tbaa !11
  tail call void @vListInsert(%struct.xLIST* noundef %21, %struct.xLIST_ITEM* noundef nonnull %5) #30
  br label %22

22:                                               ; preds = %19, %15, %10
  %23 = phi i32 [ 1, %10 ], [ 1, %15 ], [ 0, %19 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind
define internal fastcc void @prvReloadTimer(%struct.tmrTimerControl* noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %0, i32 0, i32 2
  %5 = load i32, i32* %4, align 4, !tbaa !425
  %6 = add i32 %5, %1
  %7 = tail call fastcc i32 @prvInsertTimerInActiveList(%struct.tmrTimerControl* noundef %0, i32 noundef %6, i32 noundef %2, i32 noundef %1)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %0, i32 0, i32 4
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i32 [ %1, %9 ], [ %14, %11 ]
  %13 = load i32, i32* %4, align 4, !tbaa !425
  %14 = add i32 %13, %12
  %15 = load void (%struct.tmrTimerControl*)*, void (%struct.tmrTimerControl*)** %10, align 4, !tbaa !426
  tail call void %15(%struct.tmrTimerControl* noundef nonnull %0) #30
  %16 = load i32, i32* %4, align 4, !tbaa !425
  %17 = add i32 %16, %14
  %18 = tail call fastcc i32 @prvInsertTimerInActiveList(%struct.tmrTimerControl* noundef nonnull %0, i32 noundef %17, i32 noundef %2, i32 noundef %14)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %11, !llvm.loop !430

20:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc void @prvSwitchTimerLists() unnamed_addr #3 {
  %1 = load %struct.xLIST*, %struct.xLIST** @pxCurrentTimerList, align 4, !tbaa !11
  %2 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %1, i32 0, i32 0
  %3 = load volatile i32, i32* %2, align 4, !tbaa !386
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %0, %5
  %6 = phi %struct.xLIST* [ %11, %5 ], [ %1, %0 ]
  %7 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %6, i32 0, i32 2, i32 1
  %8 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %7, align 4, !tbaa !404
  %9 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4, !tbaa !405
  tail call fastcc void @prvProcessExpiredTimer(i32 noundef %10, i32 noundef -1)
  %11 = load %struct.xLIST*, %struct.xLIST** @pxCurrentTimerList, align 4, !tbaa !11
  %12 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %11, i32 0, i32 0
  %13 = load volatile i32, i32* %12, align 4, !tbaa !386
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %5, !llvm.loop !431

15:                                               ; preds = %5, %0
  %16 = phi %struct.xLIST* [ %1, %0 ], [ %11, %5 ]
  %17 = load %struct.xLIST*, %struct.xLIST** @pxOverflowTimerList, align 4, !tbaa !11
  store %struct.xLIST* %17, %struct.xLIST** @pxCurrentTimerList, align 4, !tbaa !11
  store %struct.xLIST* %16, %struct.xLIST** @pxOverflowTimerList, align 4, !tbaa !11
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc void @prvProcessExpiredTimer(i32 noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = load %struct.xLIST*, %struct.xLIST** @pxCurrentTimerList, align 4, !tbaa !11
  %4 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %3, i32 0, i32 2, i32 1
  %5 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %4, align 4, !tbaa !404
  %6 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %5, i32 0, i32 3
  %7 = bitcast i8** %6 to %struct.tmrTimerControl**
  %8 = load %struct.tmrTimerControl*, %struct.tmrTimerControl** %7, align 4, !tbaa !391
  %9 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %8, i32 0, i32 1
  %10 = tail call i32 @uxListRemove(%struct.xLIST_ITEM* noundef nonnull %9) #30
  %11 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %8, i32 0, i32 5
  %12 = load i8, i8* %11, align 4, !tbaa !424
  %13 = and i8 %12, 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  tail call fastcc void @prvReloadTimer(%struct.tmrTimerControl* noundef nonnull %8, i32 noundef %0, i32 noundef %1)
  br label %18

16:                                               ; preds = %2
  %17 = and i8 %12, -2
  store i8 %17, i8* %11, align 4, !tbaa !424
  br label %18

18:                                               ; preds = %16, %15
  %19 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %8, i32 0, i32 4
  %20 = load void (%struct.tmrTimerControl*)*, void (%struct.tmrTimerControl*)** %19, align 4, !tbaa !426
  tail call void %20(%struct.tmrTimerControl* noundef nonnull %8) #30
  ret void
}

; Function Attrs: noinline nounwind
define dso_local %struct.tmrTimerControl* @xTimerCreate(i8* noundef %0, i32 noundef %1, i32 noundef %2, i8* noundef %3, void (%struct.tmrTimerControl*)* noundef %4) local_unnamed_addr #3 {
  %6 = tail call i8* @pvPortMalloc(i32 noundef 40) #30
  %7 = bitcast i8* %6 to %struct.tmrTimerControl*
  %8 = icmp eq i8* %6, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds i8, i8* %6, i32 36
  store i8 0, i8* %10, align 4, !tbaa !424
  tail call fastcc void @prvInitialiseNewTimer(i8* noundef %0, i32 noundef %1, i32 noundef %2, i8* noundef %3, void (%struct.tmrTimerControl*)* noundef %4, %struct.tmrTimerControl* noundef nonnull %7)
  br label %11

11:                                               ; preds = %9, %5
  ret %struct.tmrTimerControl* %7
}

; Function Attrs: noinline nounwind
define internal fastcc void @prvInitialiseNewTimer(i8* noundef %0, i32 noundef %1, i32 noundef %2, i8* noundef %3, void (%struct.tmrTimerControl*)* noundef %4, %struct.tmrTimerControl* noundef %5) unnamed_addr #3 {
  tail call fastcc void @prvCheckForValidListAndQueue()
  %7 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %5, i32 0, i32 0
  store i8* %0, i8** %7, align 4, !tbaa !432
  %8 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %5, i32 0, i32 2
  store i32 %1, i32* %8, align 4, !tbaa !425
  %9 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %5, i32 0, i32 3
  store i8* %3, i8** %9, align 4, !tbaa !433
  %10 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %5, i32 0, i32 4
  store void (%struct.tmrTimerControl*)* %4, void (%struct.tmrTimerControl*)** %10, align 4, !tbaa !426
  %11 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %5, i32 0, i32 1
  tail call void @vListInitialiseItem(%struct.xLIST_ITEM* noundef nonnull %11) #30
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %5, i32 0, i32 5
  %15 = load i8, i8* %14, align 4, !tbaa !424
  %16 = or i8 %15, 4
  store i8 %16, i8* %14, align 4, !tbaa !424
  br label %17

17:                                               ; preds = %13, %6
  ret void
}

; Function Attrs: noinline nounwind
define dso_local i32 @xTimerGenericCommand(%struct.tmrTimerControl* noundef %0, i32 noundef %1, i32 noundef %2, i32* noundef %3, i32 noundef %4) local_unnamed_addr #3 {
  %6 = alloca %struct.tmrTimerQueueMessage, align 4
  %7 = bitcast %struct.tmrTimerQueueMessage* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %7) #30
  %8 = load %struct.QueueDefinition*, %struct.QueueDefinition** @xTimerQueue, align 4, !tbaa !11
  %9 = icmp eq %struct.QueueDefinition* %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tmrTimerQueueMessage, %struct.tmrTimerQueueMessage* %6, i32 0, i32 0
  store i32 %1, i32* %11, align 4, !tbaa !420
  %12 = getelementptr inbounds %struct.tmrTimerQueueMessage, %struct.tmrTimerQueueMessage* %6, i32 0, i32 1, i32 0, i32 0
  store i32 %2, i32* %12, align 4, !tbaa !8
  %13 = getelementptr inbounds %struct.tmrTimerQueueMessage, %struct.tmrTimerQueueMessage* %6, i32 0, i32 1, i32 0, i32 1
  store %struct.tmrTimerControl* %0, %struct.tmrTimerControl** %13, align 4, !tbaa !8
  %14 = icmp slt i32 %1, 6
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = tail call i32 @xTaskGetSchedulerState() #30
  %17 = icmp eq i32 %16, 2
  %18 = load %struct.QueueDefinition*, %struct.QueueDefinition** @xTimerQueue, align 4, !tbaa !11
  br i1 %17, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 @xQueueGenericSend(%struct.QueueDefinition* noundef %18, i8* noundef nonnull %7, i32 noundef %4, i32 noundef 0) #30
  br label %25

21:                                               ; preds = %15
  %22 = call i32 @xQueueGenericSend(%struct.QueueDefinition* noundef %18, i8* noundef nonnull %7, i32 noundef 0, i32 noundef 0) #30
  br label %25

23:                                               ; preds = %10
  %24 = call i32 @xQueueGenericSendFromISR(%struct.QueueDefinition* noundef nonnull %8, i8* noundef nonnull %7, i32* noundef %3, i32 noundef 0) #30
  br label %25

25:                                               ; preds = %5, %23, %21, %19
  %26 = phi i32 [ %20, %19 ], [ %22, %21 ], [ %24, %23 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %7) #30
  ret i32 %26
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define dso_local %struct.tskTaskControlBlock* @xTimerGetTimerDaemonTaskHandle() local_unnamed_addr #10 {
  %1 = load %struct.tskTaskControlBlock*, %struct.tskTaskControlBlock** @xTimerTaskHandle, align 4, !tbaa !11
  ret %struct.tskTaskControlBlock* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define dso_local i32 @xTimerGetPeriod(%struct.tmrTimerControl* nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %0, i32 0, i32 2
  %3 = load i32, i32* %2, align 4, !tbaa !425
  ret i32 %3
}

; Function Attrs: noinline nounwind
define dso_local void @vTimerSetReloadMode(%struct.tmrTimerControl* nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  tail call void @vPortEnterCritical() #30
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %0, i32 0, i32 5
  %5 = load i8, i8* %4, align 4, !tbaa !424
  %6 = and i8 %5, -5
  %7 = select i1 %3, i8 0, i8 4
  %8 = or i8 %6, %7
  store i8 %8, i8* %4, align 4, !tbaa !424
  tail call void @vPortExitCritical() #30
  ret void
}

; Function Attrs: noinline nounwind
define dso_local i32 @xTimerGetReloadMode(%struct.tmrTimerControl* nocapture noundef readonly %0) local_unnamed_addr #3 {
  tail call void @vPortEnterCritical() #30
  %2 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %0, i32 0, i32 5
  %3 = load i8, i8* %2, align 4, !tbaa !424
  %4 = lshr i8 %3, 2
  %5 = and i8 %4, 1
  %6 = zext i8 %5 to i32
  tail call void @vPortExitCritical() #30
  ret i32 %6
}

; Function Attrs: noinline nounwind
define dso_local i32 @uxTimerGetReloadMode(%struct.tmrTimerControl* nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = tail call i32 @xTimerGetReloadMode(%struct.tmrTimerControl* noundef %0)
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define dso_local i32 @xTimerGetExpiryTime(%struct.tmrTimerControl* nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %0, i32 0, i32 1, i32 0
  %3 = load i32, i32* %2, align 4, !tbaa !428
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define dso_local i8* @pcTimerGetName(%struct.tmrTimerControl* nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %0, i32 0, i32 0
  %3 = load i8*, i8** %2, align 4, !tbaa !432
  ret i8* %3
}

; Function Attrs: noinline nounwind
define dso_local i32 @xTimerIsTimerActive(%struct.tmrTimerControl* nocapture noundef readonly %0) local_unnamed_addr #3 {
  tail call void @vPortEnterCritical() #30
  %2 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %0, i32 0, i32 5
  %3 = load i8, i8* %2, align 4, !tbaa !424
  %4 = and i8 %3, 1
  %5 = zext i8 %4 to i32
  tail call void @vPortExitCritical() #30
  ret i32 %5
}

; Function Attrs: noinline nounwind
define dso_local i8* @pvTimerGetTimerID(%struct.tmrTimerControl* nocapture noundef readonly %0) local_unnamed_addr #3 {
  tail call void @vPortEnterCritical() #30
  %2 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %0, i32 0, i32 3
  %3 = load i8*, i8** %2, align 4, !tbaa !433
  tail call void @vPortExitCritical() #30
  ret i8* %3
}

; Function Attrs: noinline nounwind
define dso_local void @vTimerSetTimerID(%struct.tmrTimerControl* nocapture noundef writeonly %0, i8* noundef %1) local_unnamed_addr #3 {
  tail call void @vPortEnterCritical() #30
  %3 = getelementptr inbounds %struct.tmrTimerControl, %struct.tmrTimerControl* %0, i32 0, i32 3
  store i8* %1, i8** %3, align 4, !tbaa !433
  tail call void @vPortExitCritical() #30
  ret void
}

; Function Attrs: noinline nounwind
define dso_local noalias i8* @pvPortMalloc(i32 noundef %0) local_unnamed_addr #3 {
  tail call void @vTaskSuspendAll() #30
  %2 = tail call noalias i8* @malloc(i32 noundef %0) #31
  %3 = tail call i32 @xTaskResumeAll() #30
  ret i8* %2
}

; Function Attrs: noinline nounwind
define dso_local void @vPortFree(i8* noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  tail call void @vTaskSuspendAll() #30
  tail call void @free(i8* noundef nonnull %0)
  %4 = tail call i32 @xTaskResumeAll() #30
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly
define dso_local nonnull i32* @pxPortInitialiseStack(i32* noundef writeonly %0, void (i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #15 {
  %4 = getelementptr inbounds i32, i32* %0, i32 -1
  store i32 16777216, i32* %4, align 4, !tbaa !18
  %5 = getelementptr inbounds i32, i32* %0, i32 -2
  %6 = ptrtoint void (i8*)* %1 to i32
  store i32 %6, i32* %5, align 4, !tbaa !18
  %7 = getelementptr inbounds i32, i32* %0, i32 -3
  store i32 ptrtoint (void ()* @prvTaskExitError to i32), i32* %7, align 4, !tbaa !18
  %8 = getelementptr inbounds i32, i32* %0, i32 -8
  %9 = ptrtoint i8* %2 to i32
  store i32 %9, i32* %8, align 4, !tbaa !18
  %10 = getelementptr inbounds i32, i32* %0, i32 -16
  ret i32* %10
}

; Function Attrs: noinline nounwind
define internal void @prvTaskExitError() #3 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2)
  store volatile i32 0, i32* %1, align 4, !tbaa !18
  tail call void asm sideeffect " cpsid i ", "~{memory}"() #30, !srcloc !434
  br label %3

3:                                                ; preds = %12, %0
  %4 = load volatile i32, i32* %1, align 4, !tbaa !18
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15, !llvm.loop !435

6:                                                ; preds = %3
  %7 = load volatile i32, i32* %1, align 4, !tbaa !18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15, !llvm.loop !435

9:                                                ; preds = %6
  %10 = load volatile i32, i32* %1, align 4, !tbaa !18
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15, !llvm.loop !435

12:                                               ; preds = %9
  %13 = load volatile i32, i32* %1, align 4, !tbaa !18
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %3, label %15, !llvm.loop !435

15:                                               ; preds = %12, %9, %6, %3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn
define dso_local void @isr_svcall() local_unnamed_addr #12 {
  ret void
}

; Function Attrs: noinline nounwind
define dso_local i32 @xPortStartScheduler() local_unnamed_addr #3 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810208 to i32*), align 32, !tbaa !18
  %2 = or i32 %1, 16711680
  store volatile i32 %2, i32* inttoptr (i32 -536810208 to i32*), align 32, !tbaa !18
  %3 = load volatile i32, i32* inttoptr (i32 -536810208 to i32*), align 32, !tbaa !18
  %4 = or i32 %3, -16777216
  store volatile i32 %4, i32* inttoptr (i32 -536810208 to i32*), align 32, !tbaa !18
  tail call void @vPortSetupTimerInterrupt()
  store i32 0, i32* @uxCriticalNesting, align 4, !tbaa !382
  tail call void @vPortStartFirstTask()
  tail call void @vTaskSwitchContext() #30
  tail call void @prvTaskExitError()
  ret i32 0
}

; Function Attrs: noinline nounwind
define weak dso_local void @vPortSetupTimerInterrupt() local_unnamed_addr #3 {
  store volatile i32 0, i32* inttoptr (i32 -536813552 to i32*), align 16, !tbaa !18
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !tbaa !18
  store volatile i32 132999, i32* inttoptr (i32 -536813548 to i32*), align 4, !tbaa !18
  store volatile i32 7, i32* inttoptr (i32 -536813552 to i32*), align 16, !tbaa !18
  ret void
}

; Function Attrs: naked noinline nounwind
define internal void @vPortStartFirstTask() #29 {
  tail call void asm sideeffect "\09.syntax unified\09\09\09\09\0A\09ldr  r2, pxCurrentTCBConst2\09\0A\09ldr  r3, [r2]\09\09\09\09\0A\09ldr  r0, [r3]\09\09\09\09\0A\09adds r0, #32\09\09\09\09\09\0A\09msr  psp, r0\09\09\09\09\09\0A\09movs r0, #2\09\09\09\09\09\0A\09msr  CONTROL, r0\09\09\09\09\0A\09isb\09\09\09\09\09\09\09\0A\09pop  {r0-r5}\09\09\09\09\09\0A\09mov  lr, r5\09\09\09\09\09\0A\09pop  {r3}\09\09\09\09\09\0A\09pop  {r2}\09\09\09\09\09\0A\09cpsie i\09\09\09\09\09\09\0A\09bx   r3\09\09\09\09\09\09\0A\09\09\09\09\09\09\09\09\0A\09.align 4\09\09\09\09\09\0ApxCurrentTCBConst2: .word pxCurrentTCB\09  ", ""() #30, !srcloc !436
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn
define dso_local void @vPortEndScheduler() local_unnamed_addr #12 {
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @vPortYield() local_unnamed_addr #3 {
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !tbaa !18
  tail call void asm sideeffect "dsb", "~{memory}"() #30, !srcloc !437
  tail call void asm sideeffect "isb", ""() #30, !srcloc !438
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @vPortEnterCritical() local_unnamed_addr #3 {
  tail call void asm sideeffect " cpsid i ", "~{memory}"() #30, !srcloc !439
  %1 = load i32, i32* @uxCriticalNesting, align 4, !tbaa !382
  %2 = add i32 %1, 1
  store i32 %2, i32* @uxCriticalNesting, align 4, !tbaa !382
  tail call void asm sideeffect "dsb", "~{memory}"() #30, !srcloc !440
  tail call void asm sideeffect "isb", ""() #30, !srcloc !441
  ret void
}

; Function Attrs: noinline nounwind
define dso_local void @vPortExitCritical() local_unnamed_addr #3 {
  %1 = load i32, i32* @uxCriticalNesting, align 4, !tbaa !382
  %2 = add i32 %1, -1
  store i32 %2, i32* @uxCriticalNesting, align 4, !tbaa !382
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  tail call void asm sideeffect " cpsie i ", "~{memory}"() #30, !srcloc !442
  br label %5

5:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: naked noinline nounwind
define dso_local i32 @ulSetInterruptMaskFromISR() #29 {
  tail call void asm sideeffect " mrs r0, PRIMASK\09\0A cpsid i\09\09\09\0A bx lr\09\09\09\09  ", "~{memory}"() #30, !srcloc !443
  unreachable
}

; Function Attrs: naked noinline nounwind
define dso_local void @vClearInterruptMaskFromISR(i32 noundef %0) #29 {
  tail call void asm sideeffect " msr PRIMASK, r0\09\0A bx lr\09\09\09\09  ", "~{memory}"() #30, !srcloc !444
  unreachable
}

; Function Attrs: naked noinline nounwind
define dso_local void @isr_pendsv() #29 {
  tail call void asm sideeffect "\09.syntax unified\09\09\09\09\09\09\0A\09mrs r0, psp\09\09\09\09\09\09\09\0A\09\09\09\09\09\09\09\09\09\09\0A\09ldr\09r3, pxCurrentTCBConst\09\09\09\0A\09ldr\09r2, [r3]\09\09\09\09\09\09\0A\09\09\09\09\09\09\09\09\09\09\0A\09subs r0, r0, #32\09\09\09\09\09\0A\09str r0, [r2]\09\09\09\09\09\09\0A\09stmia r0!, {r4-r7}\09\09\09\09\09\0A \09mov r4, r8\09\09\09\09\09\09\09\0A \09mov r5, r9\09\09\09\09\09\09\09\0A \09mov r6, r10\09\09\09\09\09\09\09\0A \09mov r7, r11\09\09\09\09\09\09\09\0A \09stmia r0!, {r4-r7}\09\09\09\09\09\0A\09\09\09\09\09\09\09\09\09\09\0A\09push {r3, r14}\09\09\09\09\09\09\0A\09cpsid i\09\09\09\09\09\09\09\09\0A\09bl vTaskSwitchContext\09\09\09\09\0A\09cpsie i\09\09\09\09\09\09\09\09\0A\09pop {r2, r3}\09\09\09\09\09\09\0A\09\09\09\09\09\09\09\09\09\09\0A\09ldr r1, [r2]\09\09\09\09\09\09\0A\09ldr r0, [r1]\09\09\09\09\09\09\0A\09adds r0, r0, #16\09\09\09\09\09\0A\09ldmia r0!, {r4-r7}\09\09\09\09\09\0A \09mov r8, r4\09\09\09\09\09\09\09\0A \09mov r9, r5\09\09\09\09\09\09\09\0A \09mov r10, r6\09\09\09\09\09\09\09\0A \09mov r11, r7\09\09\09\09\09\09\09\0A\09\09\09\09\09\09\09\09\09\09\0A\09msr psp, r0\09\09\09\09\09\09\09\0A\09\09\09\09\09\09\09\09\09\09\0A\09subs r0, r0, #32\09\09\09\09\09\0A \09ldmia r0!, {r4-r7}\09\09\09\09\09\0A\09\09\09\09\09\09\09\09\09\09\0A\09bx r3\09\09\09\09\09\09\09\09\0A\09\09\09\09\09\09\09\09\09\09\0A\09.align 4\09\09\09\09\09\09\09\0ApxCurrentTCBConst: .word pxCurrentTCB\09  ", ""() #30, !srcloc !445
  unreachable
}

; Function Attrs: noinline nounwind
define dso_local void @isr_systick() local_unnamed_addr #3 {
  %1 = tail call i32 @ulSetInterruptMaskFromISR()
  %2 = tail call i32 @xTaskIncrementTick() #30
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  store volatile i32 268435456, i32* inttoptr (i32 -536810236 to i32*), align 4, !tbaa !18
  br label %5

5:                                                ; preds = %4, %0
  tail call void @vClearInterruptMaskFromISR(i32 noundef %1)
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @vListInitialise(%struct.xLIST* noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %0, i32 0, i32 1
  %4 = bitcast %struct.xLIST_ITEM** %3 to %struct.xMINI_LIST_ITEM**
  store %struct.xMINI_LIST_ITEM* %2, %struct.xMINI_LIST_ITEM** %4, align 4, !tbaa !388
  %5 = getelementptr inbounds %struct.xMINI_LIST_ITEM, %struct.xMINI_LIST_ITEM* %2, i32 0, i32 0
  store i32 -1, i32* %5, align 4, !tbaa !446
  %6 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %0, i32 0, i32 2, i32 1
  %7 = bitcast %struct.xLIST_ITEM** %6 to %struct.xMINI_LIST_ITEM**
  store %struct.xMINI_LIST_ITEM* %2, %struct.xMINI_LIST_ITEM** %7, align 4, !tbaa !404
  %8 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %0, i32 0, i32 2, i32 2
  %9 = bitcast %struct.xLIST_ITEM** %8 to %struct.xMINI_LIST_ITEM**
  store %struct.xMINI_LIST_ITEM* %2, %struct.xMINI_LIST_ITEM** %9, align 4, !tbaa !447
  %10 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %0, i32 0, i32 0
  store volatile i32 0, i32* %10, align 4, !tbaa !386
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly
define dso_local void @vListInitialiseItem(%struct.xLIST_ITEM* nocapture noundef writeonly %0) local_unnamed_addr #15 {
  %2 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %0, i32 0, i32 4
  store %struct.xLIST* null, %struct.xLIST** %2, align 4, !tbaa !416
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @vListInsertEnd(%struct.xLIST* noundef %0, %struct.xLIST_ITEM* noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %0, i32 0, i32 1
  %4 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %3, align 4, !tbaa !388
  %5 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %1, i32 0, i32 1
  store %struct.xLIST_ITEM* %4, %struct.xLIST_ITEM** %5, align 4, !tbaa !389
  %6 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %4, i32 0, i32 2
  %7 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %6, align 4, !tbaa !400
  %8 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %1, i32 0, i32 2
  store %struct.xLIST_ITEM* %7, %struct.xLIST_ITEM** %8, align 4, !tbaa !400
  %9 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %6, align 4, !tbaa !400
  %10 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %9, i32 0, i32 1
  store %struct.xLIST_ITEM* %1, %struct.xLIST_ITEM** %10, align 4, !tbaa !389
  store %struct.xLIST_ITEM* %1, %struct.xLIST_ITEM** %6, align 4, !tbaa !400
  %11 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %1, i32 0, i32 4
  store %struct.xLIST* %0, %struct.xLIST** %11, align 4, !tbaa !416
  %12 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %0, i32 0, i32 0
  %13 = load volatile i32, i32* %12, align 4, !tbaa !386
  %14 = add i32 %13, 1
  store volatile i32 %14, i32* %12, align 4, !tbaa !386
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @vListInsert(%struct.xLIST* noundef %0, %struct.xLIST_ITEM* noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %1, i32 0, i32 0
  %4 = load i32, i32* %3, align 4, !tbaa !405
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %0, i32 0, i32 2, i32 2
  %8 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %7, align 4, !tbaa !447
  %9 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %8, i32 0, i32 1
  %10 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %9, align 4, !tbaa !389
  br label %27

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %0, i32 0, i32 2
  %13 = bitcast %struct.xMINI_LIST_ITEM* %12 to %struct.xLIST_ITEM*
  br label %14

14:                                               ; preds = %21, %11
  %15 = phi %struct.xLIST_ITEM* [ %13, %11 ], [ %23, %21 ]
  %16 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %15, i32 0, i32 1
  %17 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %16, align 4, !tbaa !389
  %18 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4, !tbaa !405
  %20 = icmp ugt i32 %19, %4
  br i1 %20, label %27, label %21, !llvm.loop !448

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %17, i32 0, i32 1
  %23 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %22, align 4, !tbaa !389
  %24 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4, !tbaa !405
  %26 = icmp ugt i32 %25, %4
  br i1 %26, label %27, label %14, !llvm.loop !448

27:                                               ; preds = %14, %21, %6
  %28 = phi %struct.xLIST_ITEM* [ %10, %6 ], [ %17, %14 ], [ %23, %21 ]
  %29 = phi %struct.xLIST_ITEM* [ %8, %6 ], [ %15, %14 ], [ %17, %21 ]
  %30 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %1, i32 0, i32 1
  store %struct.xLIST_ITEM* %28, %struct.xLIST_ITEM** %31, align 4, !tbaa !389
  %32 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %28, i32 0, i32 2
  store %struct.xLIST_ITEM* %1, %struct.xLIST_ITEM** %32, align 4, !tbaa !400
  %33 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %1, i32 0, i32 2
  store %struct.xLIST_ITEM* %29, %struct.xLIST_ITEM** %33, align 4, !tbaa !400
  store %struct.xLIST_ITEM* %1, %struct.xLIST_ITEM** %30, align 4, !tbaa !389
  %34 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %1, i32 0, i32 4
  store %struct.xLIST* %0, %struct.xLIST** %34, align 4, !tbaa !416
  %35 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %0, i32 0, i32 0
  %36 = load volatile i32, i32* %35, align 4, !tbaa !386
  %37 = add i32 %36, 1
  store volatile i32 %37, i32* %35, align 4, !tbaa !386
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @uxListRemove(%struct.xLIST_ITEM* noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %0, i32 0, i32 4
  %3 = load %struct.xLIST*, %struct.xLIST** %2, align 4, !tbaa !416
  %4 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %0, i32 0, i32 2
  %5 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %4, align 4, !tbaa !400
  %6 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %0, i32 0, i32 1
  %7 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %6, align 4, !tbaa !389
  %8 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %7, i32 0, i32 2
  store %struct.xLIST_ITEM* %5, %struct.xLIST_ITEM** %8, align 4, !tbaa !400
  %9 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %4, align 4, !tbaa !400
  %10 = getelementptr inbounds %struct.xLIST_ITEM, %struct.xLIST_ITEM* %9, i32 0, i32 1
  store %struct.xLIST_ITEM* %7, %struct.xLIST_ITEM** %10, align 4, !tbaa !389
  %11 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %3, i32 0, i32 1
  %12 = load %struct.xLIST_ITEM*, %struct.xLIST_ITEM** %11, align 4, !tbaa !388
  %13 = icmp eq %struct.xLIST_ITEM* %12, %0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.xLIST_ITEM* %9, %struct.xLIST_ITEM** %11, align 4, !tbaa !388
  br label %15

15:                                               ; preds = %1, %14
  store %struct.xLIST* null, %struct.xLIST** %2, align 4, !tbaa !416
  %16 = getelementptr inbounds %struct.xLIST, %struct.xLIST* %3, i32 0, i32 0
  %17 = load volatile i32, i32* %16, align 4, !tbaa !386
  %18 = add i32 %17, -1
  store volatile i32 %18, i32* %16, align 4, !tbaa !386
  %19 = load volatile i32, i32* %16, align 4, !tbaa !386
  ret i32 %19
}

attributes #0 = { noinline noreturn nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0plus" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { nofree noinline norecurse nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0plus" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0plus" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0plus" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0plus" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0plus" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0plus" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0plus" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree noinline norecurse nounwind willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0plus" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind readonly willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0plus" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0plus" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind readnone willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0plus" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { mustprogress nofree noinline nosync nounwind willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0plus" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0plus" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0plus" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nofree noinline norecurse nosync nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0plus" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { mustprogress noinline nounwind willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0plus" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { argmemonly nofree nounwind willreturn }
attributes #20 = { nofree nosync nounwind willreturn }
attributes #21 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0plus" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #22 = { nofree noinline nosync nounwind readnone "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0plus" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #23 = { nofree noinline norecurse nosync nounwind readonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0plus" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #24 = { argmemonly nofree nounwind willreturn writeonly }
attributes #25 = { nofree noinline norecurse nosync nounwind writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0plus" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #26 = { mustprogress nofree noinline nosync nounwind willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0plus" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #27 = { mustprogress nofree noinline nounwind willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0plus" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #28 = { nofree noinline norecurse nosync nounwind readnone "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0plus" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #29 = { naked noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0plus" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #30 = { nounwind }
attributes #31 = { allocsize(0) }
attributes #32 = { noreturn nounwind }
attributes #33 = { allocsize(0,1) }
attributes #34 = { noreturn }
attributes #35 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}

!0 = !{!"Ubuntu clang version 14.0.6"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 1, !"branch-target-enforcement", i32 0}
!4 = !{i32 1, !"sign-return-address", i32 0}
!5 = !{i32 1, !"sign-return-address-all", i32 0}
!6 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!9, !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = !{!14, !15, i64 20}
!14 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !15, i64 52, !15, i64 56, !15, i64 60, !15, i64 64, !15, i64 68, !15, i64 72, !15, i64 76, !15, i64 80, !15, i64 84, !15, i64 88, !15, i64 92, !15, i64 96, !15, i64 100, !15, i64 104, !15, i64 108, !15, i64 112, !15, i64 116, !15, i64 120, !15, i64 124, !9, i64 128}
!15 = !{!"int", !9, i64 0}
!16 = !{!14, !15, i64 24}
!17 = !{!14, !15, i64 36}
!18 = !{!15, !15, i64 0}
!19 = !{!20, !15, i64 0}
!20 = !{!"", !15, i64 0, !15, i64 4}
!21 = !{!20, !15, i64 4}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!14, !15, i64 32}
!25 = !{!14, !15, i64 44}
!26 = !{!14, !15, i64 40}
!27 = !{i64 195986}
!28 = !{i64 196044}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = distinct !{!30, !23}
!31 = !{i64 193940}
!32 = !{i64 196327}
!33 = distinct !{!33, !23}
!34 = !{i64 21457}
!35 = distinct !{!35, !23}
!36 = !{!37, !12, i64 8}
!37 = !{!"alarm_pool", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !15, i64 16, !9, i64 20}
!38 = !{!39, !40, i64 0}
!39 = !{!"alarm_pool_entry", !40, i64 0, !12, i64 8, !12, i64 12}
!40 = !{!"long long", !9, i64 0}
!41 = !{!37, !12, i64 0}
!42 = !{!37, !12, i64 4}
!43 = !{!37, !9, i64 20}
!44 = !{i64 467583}
!45 = !{i64 467641}
!46 = distinct !{!46, !23}
!47 = !{i64 465537}
!48 = !{!49, !9, i64 13}
!49 = !{!"pheap", !12, i64 0, !12, i64 4, !12, i64 8, !9, i64 12, !9, i64 13, !9, i64 14, !9, i64 15}
!50 = !{!39, !12, i64 8}
!51 = !{!39, !12, i64 12}
!52 = !{!37, !12, i64 12}
!53 = !{!37, !15, i64 16}
!54 = !{i64 467924}
!55 = distinct !{!55, !23}
!56 = !{!40, !40, i64 0}
!57 = !{!58, !58, i64 0}
!58 = !{!"_Bool", !9, i64 0}
!59 = !{!49, !9, i64 15}
!60 = !{!49, !12, i64 0}
!61 = !{!62, !9, i64 1}
!62 = !{!"pheap_node", !9, i64 0, !9, i64 1, !9, i64 2}
!63 = !{!49, !9, i64 14}
!64 = !{!62, !9, i64 2}
!65 = !{!62, !9, i64 0}
!66 = !{!49, !12, i64 4}
!67 = !{!49, !12, i64 8}
!68 = !{i8 0, i8 2}
!69 = !{!70, !12, i64 8}
!70 = !{!"repeating_timer", !40, i64 0, !12, i64 8, !15, i64 12, !12, i64 16, !12, i64 20}
!71 = !{!70, !12, i64 16}
!72 = !{!70, !40, i64 0}
!73 = !{!70, !12, i64 20}
!74 = !{!70, !15, i64 12}
!75 = !{!76, !12, i64 0}
!76 = !{!"lock_core", !12, i64 0}
!77 = !{i64 464949}
!78 = distinct !{!78, !23}
!79 = !{!80, !15, i64 36}
!80 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !9, i64 16, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !15, i64 52, !15, i64 56, !15, i64 60, !15, i64 64}
!81 = !{!80, !15, i64 40}
!82 = !{i64 464631}
!83 = distinct !{!83, !23}
!84 = distinct !{!84, !23}
!85 = distinct !{!85, !23}
!86 = !{i64 309448}
!87 = !{i64 309506}
!88 = distinct !{!88, !23}
!89 = !{i64 307402}
!90 = !{i64 309789}
!91 = !{i64 3126}
!92 = !{!80, !15, i64 52}
!93 = !{!80, !15, i64 32}
!94 = !{!95, !9, i64 4}
!95 = !{!"mutex", !76, i64 0, !9, i64 4}
!96 = !{i64 286533}
!97 = !{!98, !9, i64 4}
!98 = !{!"", !76, i64 0, !9, i64 4, !9, i64 5}
!99 = !{!98, !9, i64 5}
!100 = !{!95, !12, i64 0}
!101 = !{i64 288579}
!102 = !{i64 288637}
!103 = distinct !{!103, !23}
!104 = !{i64 288920}
!105 = !{i64 285945}
!106 = !{!98, !12, i64 0}
!107 = !{i64 285627}
!108 = !{!109, !12, i64 0}
!109 = !{!"critical_section", !12, i64 0, !15, i64 4}
!110 = !{i64 272898}
!111 = !{!49, !9, i64 12}
!112 = distinct !{!112, !23}
!113 = distinct !{!113, !23}
!114 = distinct !{!114, !23}
!115 = !{!116, !15, i64 4}
!116 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16}
!117 = !{!116, !15, i64 12}
!118 = !{!116, !15, i64 16}
!119 = !{i64 296368}
!120 = distinct !{!120, !23}
!121 = !{!116, !15, i64 8}
!122 = distinct !{!122, !23}
!123 = distinct !{!123, !23}
!124 = !{!125, !15, i64 8}
!125 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8}
!126 = distinct !{!126, !23}
!127 = !{!125, !15, i64 4}
!128 = distinct !{!128, !23}
!129 = !{i64 3307, i64 3326, i64 3352, i64 3387}
!130 = distinct !{!130, !23}
!131 = !{!132, !15, i64 120}
!132 = !{!"", !9, i64 0, !20, i64 120, !133, i64 128, !15, i64 160, !15, i64 164, !15, i64 168, !15, i64 172, !15, i64 176, !15, i64 180, !15, i64 184, !15, i64 188, !15, i64 192, !15, i64 196}
!133 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28}
!134 = distinct !{!134, !23}
!135 = distinct !{!135, !23}
!136 = !{!133, !15, i64 24}
!137 = distinct !{!137, !23}
!138 = !{!133, !15, i64 0}
!139 = !{!133, !15, i64 16}
!140 = !{!133, !15, i64 4}
!141 = !{!133, !15, i64 8}
!142 = !{!133, !15, i64 20}
!143 = distinct !{!143, !23}
!144 = !{!133, !15, i64 28}
!145 = !{!132, !15, i64 188}
!146 = !{!132, !15, i64 196}
!147 = !{!125, !15, i64 0}
!148 = !{i64 377849}
!149 = !{i64 377907}
!150 = distinct !{!150, !23}
!151 = !{i64 375803}
!152 = !{i64 378190}
!153 = !{i64 0, i64 2, !154, i64 2, i64 2, !154, i64 4, i64 2, !154, i64 6, i64 1, !8, i64 7, i64 1, !8, i64 6, i64 2, !154, i64 8, i64 4, !11}
!154 = !{!155, !155, i64 0}
!155 = !{!"short", !9, i64 0}
!156 = !{i64 0, i64 2, !154, i64 2, i64 2, !154, i64 4, i64 1, !8, i64 5, i64 1, !8, i64 4, i64 2, !154, i64 6, i64 4, !11}
!157 = !{i64 0, i64 2, !154, i64 2, i64 1, !8, i64 3, i64 1, !8, i64 2, i64 2, !154, i64 4, i64 4, !11}
!158 = !{i64 0, i64 1, !8, i64 1, i64 1, !8, i64 0, i64 2, !154, i64 2, i64 4, !11}
!159 = !{i64 0, i64 1, !8, i64 0, i64 1, !154, i64 1, i64 4, !11}
!160 = !{i64 0, i64 4, !11}
!161 = distinct !{!161, !23}
!162 = !{!163, !155, i64 4}
!163 = !{!"irq_handler_chain_slot", !155, i64 0, !155, i64 2, !155, i64 4, !9, i64 6, !12, i64 8}
!164 = !{!163, !155, i64 0}
!165 = !{!163, !155, i64 2}
!166 = !{i64 5621, i64 5651, i64 5676, i64 5743, i64 5768}
!167 = !{!163, !12, i64 8}
!168 = distinct !{!168, !23}
!169 = !{!170, !15, i64 0}
!170 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!171 = !{!170, !15, i64 8}
!172 = !{!170, !15, i64 12}
!173 = distinct !{!173, !23}
!174 = distinct !{!174, !23}
!175 = !{!170, !15, i64 4}
!176 = !{!177, !15, i64 44}
!177 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8, !9, i64 12, !15, i64 44}
!178 = !{!177, !15, i64 4}
!179 = !{!177, !15, i64 0}
!180 = !{!177, !15, i64 8}
!181 = !{!182, !15, i64 0}
!182 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !9, i64 16, !15, i64 28}
!183 = !{!182, !15, i64 12}
!184 = !{!182, !15, i64 4}
!185 = distinct !{!185, !23}
!186 = distinct !{!186, !23}
!187 = !{!182, !15, i64 8}
!188 = distinct !{!188, !23}
!189 = distinct !{!189, !23}
!190 = distinct !{!190, !23}
!191 = distinct !{!191, !23}
!192 = distinct !{!192, !23}
!193 = distinct !{!193, !23}
!194 = distinct !{!194, !23}
!195 = distinct !{!195, !23}
!196 = distinct !{!196, !23}
!197 = distinct !{!197, !23}
!198 = distinct !{!198, !23}
!199 = distinct !{!199, !23}
!200 = !{!201, !201, i64 0}
!201 = !{!"double", !9, i64 0}
!202 = distinct !{!202, !23}
!203 = distinct !{!203, !23}
!204 = distinct !{!204, !23}
!205 = distinct !{!205, !23}
!206 = distinct !{!206, !23}
!207 = distinct !{!207, !23}
!208 = distinct !{!208, !23}
!209 = distinct !{!209, !23}
!210 = !{!211, !12, i64 0}
!211 = !{!"", !12, i64 0, !12, i64 4}
!212 = !{!211, !12, i64 4}
!213 = !{i32 (void (i8, i8*, i32, i32)*, i8*, i32, i8*, [1 x i32])* @_vsnprintf}
!214 = distinct !{!214, !23}
!215 = !{!216, !12, i64 0}
!216 = !{!"stdio_driver", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !58, i64 16, !58, i64 17}
!217 = !{void (%struct.stdio_driver*, i8*, i32)* @stdio_out_chars_crlf, void (%struct.stdio_driver*, i8*, i32)* @stdio_out_chars_no_crlf}
!218 = distinct !{!218, !23}
!219 = !{!216, !58, i64 17}
!220 = !{!216, !58, i64 16}
!221 = distinct !{!221, !23, !222}
!222 = !{!"llvm.loop.peeled.count", i32 1}
!223 = !{!216, !12, i64 4}
!224 = distinct !{!224, !23}
!225 = !{!216, !12, i64 8}
!226 = distinct !{!226, !23}
!227 = distinct !{!227, !23}
!228 = distinct !{!228, !23}
!229 = !{!216, !12, i64 12}
!230 = !{!231, !15, i64 0}
!231 = !{!"stdio_stack_buffer", !15, i64 0, !9, i64 4}
!232 = distinct !{!232, !23}
!233 = !{!234, !9, i64 5}
!234 = !{!"", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7, !9, i64 8}
!235 = !{!234, !9, i64 6}
!236 = !{!234, !9, i64 7}
!237 = !{!234, !9, i64 2}
!238 = !{!239, !155, i64 4}
!239 = !{!"", !9, i64 0, !9, i64 1, !155, i64 2, !155, i64 4, !155, i64 6}
!240 = !{!239, !9, i64 1}
!241 = !{!239, !155, i64 2}
!242 = !{!243, !15, i64 0}
!243 = !{!"", !15, i64 0, !9, i64 4, !9, i64 5, !9, i64 6}
!244 = distinct !{!244, !23}
!245 = !{!246, !15, i64 120}
!246 = !{!"", !15, i64 0, !9, i64 4, !15, i64 64, !15, i64 68, !15, i64 72, !15, i64 76, !15, i64 80, !15, i64 84, !15, i64 88, !15, i64 92, !15, i64 96, !15, i64 100, !15, i64 104, !15, i64 108, !15, i64 112, !15, i64 116, !15, i64 120, !15, i64 124, !15, i64 128, !15, i64 132, !15, i64 136, !15, i64 140, !15, i64 144, !15, i64 148, !15, i64 152}
!247 = !{!246, !15, i64 64}
!248 = !{!246, !15, i64 76}
!249 = !{!246, !15, i64 144}
!250 = !{!246, !15, i64 152}
!251 = !{!246, !15, i64 80}
!252 = !{!246, !15, i64 0}
!253 = !{!254, !9, i64 2}
!254 = !{!"hw_endpoint", !58, i64 0, !58, i64 1, !9, i64 2, !9, i64 3, !12, i64 4, !12, i64 8, !12, i64 12, !58, i64 16, !155, i64 18, !155, i64 20, !12, i64 24, !155, i64 28, !9, i64 30}
!255 = !{!254, !58, i64 1}
!256 = !{!254, !9, i64 3}
!257 = !{!254, !155, i64 28}
!258 = !{!254, !9, i64 30}
!259 = !{!254, !12, i64 8}
!260 = !{!254, !12, i64 4}
!261 = !{!254, !12, i64 12}
!262 = !{!263, !15, i64 0}
!263 = !{!"usb_device_dpram_ep_ctrl", !15, i64 0, !15, i64 4}
!264 = !{!263, !15, i64 4}
!265 = !{i32 0, i32 2}
!266 = !{!246, !15, i64 88}
!267 = !{!254, !155, i64 20}
!268 = distinct !{!268, !23}
!269 = !{!270, !9, i64 2}
!270 = !{!"", !9, i64 0, !9, i64 1, !9, i64 2, !271, i64 3, !272, i64 4, !9, i64 6}
!271 = !{!"", !9, i64 0, !9, i64 0, !9, i64 0}
!272 = !{!"", !155, i64 0, !155, i64 1, !155, i64 1}
!273 = !{!246, !15, i64 104}
!274 = !{!246, !15, i64 116}
!275 = distinct !{!275, !23}
!276 = !{!254, !58, i64 16}
!277 = !{!254, !155, i64 18}
!278 = !{!254, !12, i64 24}
!279 = !{i64 3444, i64 3474, i64 3506, i64 3538, i64 3570, i64 3602, i64 3634}
!280 = !{!281, !9, i64 2}
!281 = !{!"", !282, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !9, i64 19, !9, i64 51}
!282 = !{!"", !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0, !9, i64 0}
!283 = !{!281, !9, i64 1}
!284 = !{!285, !12, i64 0}
!285 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!286 = distinct !{!286, !23}
!287 = !{!288, !9, i64 1}
!288 = !{!"", !9, i64 0, !9, i64 1, !9, i64 4}
!289 = !{!288, !9, i64 0}
!290 = !{!285, !12, i64 16}
!291 = !{!285, !12, i64 20}
!292 = distinct !{!292, !23}
!293 = !{!285, !12, i64 12}
!294 = !{!285, !12, i64 4}
!295 = distinct !{!295, !23}
!296 = !{!297, !9, i64 1}
!297 = !{!"", !9, i64 0, !9, i64 1, !155, i64 2, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7, !9, i64 8}
!298 = !{!297, !9, i64 7}
!299 = !{!297, !155, i64 2}
!300 = !{!301, !9, i64 3}
!301 = !{!"", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7}
!302 = !{!285, !12, i64 8}
!303 = distinct !{!303, !23}
!304 = distinct !{!304, !23}
!305 = !{!306, !155, i64 0}
!306 = !{!"", !155, i64 0}
!307 = !{!109, !15, i64 4}
!308 = !{i64 548810}
!309 = !{i64 551197}
!310 = !{i64 550856}
!311 = !{i64 550914}
!312 = distinct !{!312, !23}
!313 = !{!270, !9, i64 1}
!314 = distinct !{!314, !23}
!315 = !{!316, !12, i64 8}
!316 = !{!"", !239, i64 0, !12, i64 8, !155, i64 12, !155, i64 14, !12, i64 16}
!317 = !{!316, !155, i64 14}
!318 = !{!239, !155, i64 6}
!319 = !{!316, !155, i64 12}
!320 = !{!316, !12, i64 16}
!321 = !{!316, !155, i64 6}
!322 = !{!323, !9, i64 4}
!323 = !{!"", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !9, i64 4, !9, i64 5, !243, i64 6, !324, i64 16, !324, i64 44, !9, i64 72, !9, i64 328, !95, i64 584, !95, i64 592, !9, i64 600, !9, i64 664}
!324 = !{!"", !12, i64 0, !155, i64 4, !155, i64 6, !58, i64 8, !155, i64 10, !155, i64 12, !155, i64 14, !155, i64 16, !12, i64 20, !12, i64 24}
!325 = !{i64 0, i64 4, !18, i64 4, i64 1, !8, i64 5, i64 1, !8, i64 6, i64 1, !8}
!326 = !{!323, !9, i64 5}
!327 = !{!323, !9, i64 3}
!328 = !{!323, !9, i64 2}
!329 = !{!323, !15, i64 6}
!330 = !{!323, !9, i64 11}
!331 = !{!323, !9, i64 12}
!332 = !{!324, !12, i64 20}
!333 = !{!324, !12, i64 24}
!334 = !{!323, !9, i64 0}
!335 = distinct !{!335, !23}
!336 = !{!323, !9, i64 1}
!337 = distinct !{!337, !23}
!338 = distinct !{!338, !23}
!339 = !{!234, !9, i64 3}
!340 = distinct !{!340, !23}
!341 = distinct !{!341, !23}
!342 = !{!324, !12, i64 0}
!343 = !{!324, !155, i64 4}
!344 = !{!324, !155, i64 6}
!345 = !{!324, !58, i64 8}
!346 = !{!324, !155, i64 12}
!347 = !{!324, !155, i64 10}
!348 = !{!324, !155, i64 14}
!349 = !{!324, !155, i64 16}
!350 = distinct !{!350, !23}
!351 = !{!352, !15, i64 0}
!352 = !{!"", !15, i64 0}
!353 = distinct !{!353, !23}
!354 = distinct !{!354, !23}
!355 = !{!356, !12, i64 4}
!356 = !{!"", !155, i64 0, !155, i64 2, !12, i64 4, !12, i64 8}
!357 = !{!356, !155, i64 0}
!358 = !{!356, !155, i64 2}
!359 = !{!356, !12, i64 8}
!360 = distinct !{!360, !23}
!361 = !{i64 157207}
!362 = distinct !{!362, !23}
!363 = !{!364, !15, i64 40}
!364 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !15, i64 52, !15, i64 56, !15, i64 60, !15, i64 64, !15, i64 68, !15, i64 72, !15, i64 76, !15, i64 80, !15, i64 84, !15, i64 88, !15, i64 92, !15, i64 96, !9, i64 100, !15, i64 240, !15, i64 244, !15, i64 248}
!365 = !{!364, !15, i64 96}
!366 = distinct !{!366, !23}
!367 = !{!368, !370, i64 60}
!368 = !{!"QueueDefinition", !12, i64 0, !12, i64 4, !9, i64 8, !369, i64 16, !369, i64 36, !370, i64 56, !370, i64 60, !370, i64 64, !9, i64 68, !9, i64 69}
!369 = !{!"xLIST", !370, i64 0, !12, i64 4, !371, i64 8}
!370 = !{!"long", !9, i64 0}
!371 = !{!"xMINI_LIST_ITEM", !15, i64 0, !12, i64 4, !12, i64 8}
!372 = !{!368, !370, i64 64}
!373 = !{!368, !12, i64 0}
!374 = !{!368, !370, i64 56}
!375 = !{!368, !12, i64 4}
!376 = !{!368, !9, i64 68}
!377 = !{!368, !9, i64 69}
!378 = !{!368, !370, i64 16}
!379 = !{!368, !370, i64 36}
!380 = distinct !{!380, !23}
!381 = distinct !{!381, !23}
!382 = !{!370, !370, i64 0}
!383 = !{!384, !12, i64 4}
!384 = !{!"QUEUE_REGISTRY_ITEM", !12, i64 0, !12, i64 4}
!385 = !{!384, !12, i64 0}
!386 = !{!369, !370, i64 0}
!387 = distinct !{!387, !23}
!388 = !{!369, !12, i64 4}
!389 = !{!390, !12, i64 4}
!390 = !{!"xLIST_ITEM", !15, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16}
!391 = !{!390, !12, i64 12}
!392 = !{!393, !12, i64 48}
!393 = !{!"tskTaskControlBlock", !12, i64 0, !390, i64 4, !390, i64 24, !370, i64 44, !12, i64 48, !9, i64 52, !9, i64 68, !9, i64 88, !9, i64 100}
!394 = !{!393, !370, i64 44}
!395 = !{!393, !12, i64 16}
!396 = !{!393, !15, i64 24}
!397 = !{!393, !12, i64 36}
!398 = !{!393, !12, i64 0}
!399 = !{!393, !12, i64 8}
!400 = !{!390, !12, i64 8}
!401 = !{!393, !12, i64 12}
!402 = !{!393, !12, i64 20}
!403 = !{!393, !12, i64 40}
!404 = !{!369, !12, i64 12}
!405 = !{!390, !15, i64 0}
!406 = !{i64 2148287989}
!407 = !{!393, !15, i64 4}
!408 = !{!393, !12, i64 32}
!409 = !{!393, !12, i64 28}
!410 = !{i64 2148289805}
!411 = distinct !{!411, !23}
!412 = distinct !{!412, !23}
!413 = !{i64 2148287827}
!414 = distinct !{!414, !23}
!415 = !{i64 2148287924}
!416 = !{!390, !12, i64 16}
!417 = !{!418, !370, i64 0}
!418 = !{!"xTIME_OUT", !370, i64 0, !15, i64 4}
!419 = !{!418, !15, i64 4}
!420 = !{!421, !370, i64 0}
!421 = !{!"tmrTimerQueueMessage", !370, i64 0, !9, i64 4}
!422 = !{!423, !12, i64 20}
!423 = !{!"tmrTimerControl", !12, i64 0, !390, i64 4, !15, i64 24, !12, i64 28, !12, i64 32, !9, i64 36}
!424 = !{!423, !9, i64 36}
!425 = !{!423, !15, i64 24}
!426 = !{!423, !12, i64 32}
!427 = distinct !{!427, !23}
!428 = !{!423, !15, i64 4}
!429 = !{!423, !12, i64 16}
!430 = distinct !{!430, !23}
!431 = distinct !{!431, !23}
!432 = !{!423, !12, i64 0}
!433 = !{!423, !12, i64 28}
!434 = !{i64 2147861033}
!435 = distinct !{!435, !23}
!436 = !{i64 8297, i64 8332, i64 8413, i64 8445, i64 8539, i64 8605, i64 8695, i64 8756, i64 8791, i64 8816, i64 8901, i64 8954, i64 9017, i64 9073, i64 9168, i64 9246, i64 9268, i64 9296}
!437 = !{i64 11133}
!438 = !{i64 11177}
!439 = !{i64 2147861334}
!440 = !{i64 11371}
!441 = !{i64 11415}
!442 = !{i64 2147861378}
!443 = !{i64 11827, i64 11859, i64 11884}
!444 = !{i64 12116, i64 12148}
!445 = !{i64 12377, i64 12414, i64 12447, i64 12471, i64 12556, i64 12589, i64 12613, i64 12698, i64 12763, i64 12864, i64 12928, i64 12961, i64 12995, i64 13029, i64 13068, i64 13092, i64 13127, i64 13157, i64 13197, i64 13227, i64 13306, i64 13330, i64 13363, i64 13458, i64 13527, i64 13594, i64 13627, i64 13660, i64 13694, i64 13728, i64 13752, i64 13834, i64 13858, i64 13966, i64 14030, i64 14054, i64 14082, i64 14106, i64 14136}
!446 = !{!369, !15, i64 8}
!447 = !{!369, !12, i64 16}
!448 = distinct !{!448, !23}
