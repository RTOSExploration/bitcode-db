; ModuleID = './examples/serial.elf.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7m-none-unknown-eabi"

%"class.Cicada::Stm32Uart" = type { %"class.Cicada::BufferedSerial", i8, %struct.__UART_HandleTypeDef, %struct.USART_TypeDef*, i16, i16, i32 }
%"class.Cicada::BufferedSerial" = type { %"class.Cicada::IBufferedSerial", %"class.Cicada::LineCircularBuffer", %"class.Cicada::LineCircularBuffer" }
%"class.Cicada::IBufferedSerial" = type { %"class.Cicada::ICommDevice", %"class.Cicada::ICommDevice" }
%"class.Cicada::ICommDevice" = type { i32 (...)** }
%"class.Cicada::LineCircularBuffer" = type { %"class.Cicada::CircularBuffer.base", i16, [2 x i8] }
%"class.Cicada::CircularBuffer.base" = type <{ i32 (...)**, [4 x i8], i64, i64, i64, i64, i8* }>
%struct.__UART_HandleTypeDef = type { %struct.USART_TypeDef*, %struct.USART_TypeDef, i8*, i16, i16, i8*, i16, i16, %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef*, i32, i32, i32, i32 }
%struct.USART_TypeDef = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.__DMA_HandleTypeDef = type { %struct.DMA_Channel_TypeDef*, %struct.USART_TypeDef, i32, i32, i8*, void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)*, i32, %struct.DMA_TypeDef*, i32 }
%struct.DMA_Channel_TypeDef = type { i32, i32, i32, i32 }
%struct.DMA_TypeDef = type { i32, i32 }
%"class.Cicada::Scheduler" = type { i32 ()*, %"class.Cicada::Task"**, %"class.Cicada::Task"** }
%"class.Cicada::Task" = type { i32 (...)**, i16, i32, i8, i32 }
%class.SerialTask = type { %"class.Cicada::Task", %"class.Cicada::IBufferedSerial"*, i32 }
%struct.RCC_OscInitTypeDef = type { i32, i32, i32, i32, i32, i32, i32, %struct.RCC_PLLInitTypeDef }
%struct.RCC_PLLInitTypeDef = type { i32, i32, i32 }
%struct.RCC_ClkInitTypeDef = type { i32, i32, i32, i32, i32 }
%"class.Cicada::CircularBuffer" = type <{ i32 (...)**, [4 x i8], i64, i64, i64, i64, i8*, [4 x i8] }>

$_ZN10SerialTaskC2ERN6Cicada15IBufferedSerialE = comdat any

$_ZN6Cicada4TaskD2Ev = comdat any

$_ZN6Cicada4TaskC2Et = comdat any

$_ZN10SerialTaskD0Ev = comdat any

$_ZN10SerialTask3runEv = comdat any

$_ZN6Cicada4Task8setDelayEt = comdat any

$_ZN6Cicada4TaskD0Ev = comdat any

$_ZNK6Cicada4Task5delayEv = comdat any

$_ZN6Cicada4Task7lastRunEv = comdat any

$_ZN6Cicada4Task10setLastRunEj = comdat any

$_ZNK6Cicada14CircularBufferIcE14bytesAvailableEv = comdat any

$_ZN6Cicada14BufferedSerialD2Ev = comdat any

$_ZN6Cicada14CircularBufferIcED2Ev = comdat any

$_ZN6Cicada15IBufferedSerialD2Ev = comdat any

$_ZN6Cicada7ISerialD2Ev = comdat any

$_ZN6Cicada11ICommDeviceD2Ev = comdat any

$_ZN6Cicada14BufferedSerialD0Ev = comdat any

$_ZThn4_N6Cicada14BufferedSerialD1Ev = comdat any

$_ZThn4_N6Cicada14BufferedSerialD0Ev = comdat any

$_ZNK6Cicada14CircularBufferIcE4sizeEv = comdat any

$_ZN6Cicada18LineCircularBuffer5flushEv = comdat any

$_ZN6Cicada14CircularBufferIcE5flushEv = comdat any

$_ZNK6Cicada18LineCircularBuffer16numBufferedLinesEv = comdat any

$_ZN6Cicada18LineCircularBuffer4pushEc = comdat any

$_ZN6Cicada14CircularBufferIcE4pushEc = comdat any

$_ZN6Cicada14CircularBufferIcE20incrementOrResetHeadERy = comdat any

$_ZN6Cicada18LineCircularBuffer4pullEv = comdat any

$_ZN6Cicada14CircularBufferIcE4pullEv = comdat any

$_ZNK6Cicada14CircularBufferIcE14spaceAvailableEv = comdat any

$_ZN6Cicada15IBufferedSerialC2Ev = comdat any

$_ZN6Cicada18LineCircularBufferC2EPcy = comdat any

$_ZN6Cicada14CircularBufferIcEC2EPcy = comdat any

$_ZN6Cicada18LineCircularBufferD0Ev = comdat any

$_ZN6Cicada18LineCircularBuffer4pushEPKcy = comdat any

$_ZN6Cicada18LineCircularBuffer4pullEPcy = comdat any

$_ZN6Cicada14CircularBufferIcE4readEv = comdat any

$_ZNK6Cicada14CircularBufferIcE7isEmptyEv = comdat any

$_ZNK6Cicada14CircularBufferIcE6isFullEv = comdat any

$_ZN6Cicada14CircularBufferIcED0Ev = comdat any

$_ZN6Cicada14CircularBufferIcE4pushEPKcy = comdat any

$_ZN6Cicada14CircularBufferIcE4pullEPcy = comdat any

$_ZN6Cicada11ICommDeviceC2Ev = comdat any

$_ZN6Cicada7ISerialC2Ev = comdat any

$_ZN6Cicada15IBufferedSerialD0Ev = comdat any

$_ZThn4_N6Cicada15IBufferedSerialD1Ev = comdat any

$_ZThn4_N6Cicada15IBufferedSerialD0Ev = comdat any

$_ZN6Cicada7ISerialD0Ev = comdat any

$_ZN6Cicada11ICommDeviceD0Ev = comdat any

$_ZTV10SerialTask = comdat any

$_ZTS10SerialTask = comdat any

$_ZTSN6Cicada4TaskE = comdat any

$_ZTIN6Cicada4TaskE = comdat any

$_ZTI10SerialTask = comdat any

$_ZTVN6Cicada4TaskE = comdat any

$_ZZN10SerialTask3runEvE10entrypoint = comdat any

$_ZTSN6Cicada15IBufferedSerialE = comdat any

$_ZTSN6Cicada11ICommDeviceE = comdat any

$_ZTIN6Cicada11ICommDeviceE = comdat any

$_ZTSN6Cicada7ISerialE = comdat any

$_ZTIN6Cicada7ISerialE = comdat any

$_ZTIN6Cicada15IBufferedSerialE = comdat any

$_ZTVN6Cicada15IBufferedSerialE = comdat any

$_ZTVN6Cicada11ICommDeviceE = comdat any

$_ZTVN6Cicada7ISerialE = comdat any

$_ZTVN6Cicada18LineCircularBufferE = comdat any

$_ZTSN6Cicada18LineCircularBufferE = comdat any

$_ZTSN6Cicada14CircularBufferIcEE = comdat any

$_ZTIN6Cicada14CircularBufferIcEE = comdat any

$_ZTIN6Cicada18LineCircularBufferE = comdat any

$_ZTVN6Cicada14CircularBufferIcEE = comdat any

@_ZZ17USART2_IRQHandlerE8instance = internal unnamed_addr global %"class.Cicada::Stm32Uart"* null, align 4, !dbg !0
@_ZGVZ17USART2_IRQHandlerE8instance = internal global i32 0, align 4
@_ZTV10SerialTask = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI10SerialTask to i8*), i8* bitcast (%"class.Cicada::Task"* (%"class.Cicada::Task"*)* @_ZN6Cicada4TaskD2Ev to i8*), i8* bitcast (void (%class.SerialTask*)* @_ZN10SerialTaskD0Ev to i8*), i8* bitcast (void (%class.SerialTask*)* @_ZN10SerialTask3runEv to i8*)] }, comdat, align 4
@_ZTS10SerialTask = linkonce_odr dso_local constant [13 x i8] c"10SerialTask\00", comdat, align 1
@_ZTSN6Cicada4TaskE = linkonce_odr dso_local constant [15 x i8] c"N6Cicada4TaskE\00", comdat, align 1
@_ZTIN6Cicada4TaskE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @_ZTSN6Cicada4TaskE, i32 0, i32 0) }, comdat, align 4
@_ZTI10SerialTask = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @_ZTS10SerialTask, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN6Cicada4TaskE to i8*) }, comdat, align 4
@_ZTVN6Cicada4TaskE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTIN6Cicada4TaskE to i8*), i8* bitcast (%"class.Cicada::Task"* (%"class.Cicada::Task"*)* @_ZN6Cicada4TaskD2Ev to i8*), i8* bitcast (void (%"class.Cicada::Task"*)* @_ZN6Cicada4TaskD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 4
@_ZZN10SerialTask3runEvE10entrypoint = linkonce_odr dso_local local_unnamed_addr global i8 0, comdat, align 1, !dbg !199
@.str = private unnamed_addr constant [5 x i8] c"AT\0D\0A\00", align 1
@AHBPrescTable = dso_local local_unnamed_addr constant [16 x i8] c"\00\00\00\00\00\00\00\00\01\02\03\04\06\07\08\09", align 1, !dbg !378
@__const.HAL_RCC_GetSysClockFreq.aPLLMULFactorTable = private unnamed_addr constant [16 x i8] c"\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\10", align 1
@__const.HAL_RCC_GetSysClockFreq.aPredivFactorTable = private unnamed_addr constant [2 x i8] c"\01\02", align 1
@APBPrescTable = dso_local local_unnamed_addr constant [8 x i8] c"\00\00\00\00\01\02\03\04", align 1, !dbg !447
@uwTickPrio = dso_local local_unnamed_addr global i32 16, align 4, !dbg !455
@uwTickFreq = dso_local local_unnamed_addr global i32 1, align 4, !dbg !571
@SystemCoreClock = dso_local local_unnamed_addr global i32 16000000, align 4, !dbg !445
@uwTick = dso_local global i32 0, align 4, !dbg !574
@_ZN6Cicada9Stm32Uart8instanceE = dso_local local_unnamed_addr global [4 x %"class.Cicada::Stm32Uart"*] zeroinitializer, align 4, !dbg !576
@_ZTVN6Cicada9Stm32UartE = dso_local unnamed_addr constant { [26 x i8*], [12 x i8*] } { [26 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN6Cicada9Stm32UartE to i8*), i8* bitcast (%"class.Cicada::Stm32Uart"* (%"class.Cicada::Stm32Uart"*)* @_ZN6Cicada9Stm32UartD2Ev to i8*), i8* bitcast (void (%"class.Cicada::Stm32Uart"*)* @_ZN6Cicada9Stm32UartD0Ev to i8*), i8* bitcast (i64 (%"class.Cicada::BufferedSerial"*)* @_ZNK6Cicada14BufferedSerial14bytesAvailableEv to i8*), i8* bitcast (i64 (%"class.Cicada::BufferedSerial"*)* @_ZNK6Cicada14BufferedSerial14spaceAvailableEv to i8*), i8* bitcast (i1 (%"class.Cicada::Stm32Uart"*)* @_ZNK6Cicada9Stm32Uart20writeBufferProcessedEv to i8*), i8* bitcast (i64 (%"class.Cicada::BufferedSerial"*, i8*, i64)* @_ZN6Cicada14BufferedSerial4readEPhy to i8*), i8* bitcast (i64 (%"class.Cicada::BufferedSerial"*, i8*, i64)* @_ZN6Cicada14BufferedSerial5writeEPKhy to i8*), i8* bitcast (i8 (%"class.Cicada::BufferedSerial"*)* @_ZN6Cicada14BufferedSerial4readEv to i8*), i8* bitcast (i64 (%"class.Cicada::BufferedSerial"*, i8*)* @_ZN6Cicada14BufferedSerial5writeEPKh to i8*), i8* bitcast (void (%"class.Cicada::BufferedSerial"*, i8)* @_ZN6Cicada14BufferedSerial5writeEh to i8*), i8* bitcast (i1 (%"class.Cicada::BufferedSerial"*)* @_ZNK6Cicada14BufferedSerial11canReadLineEv to i8*), i8* bitcast (i64 (%"class.Cicada::BufferedSerial"*, i8*, i64)* @_ZN6Cicada14BufferedSerial8readLineEPhy to i8*), i8* bitcast (void (%"class.Cicada::BufferedSerial"*)* @_ZN6Cicada14BufferedSerial19flushReceiveBuffersEv to i8*), i8* bitcast (i64 (%"class.Cicada::BufferedSerial"*)* @_ZN6Cicada14BufferedSerial14readBufferSizeEv to i8*), i8* bitcast (i64 (%"class.Cicada::BufferedSerial"*)* @_ZN6Cicada14BufferedSerial15writeBufferSizeEv to i8*), i8* bitcast (i1 (%"class.Cicada::Stm32Uart"*)* @_ZN6Cicada9Stm32Uart4openEv to i8*), i8* bitcast (i1 (%"class.Cicada::Stm32Uart"*, i8)* @_ZN6Cicada9Stm32Uart4openEh to i8*), i8* bitcast (i1 (%"class.Cicada::Stm32Uart"*)* @_ZN6Cicada9Stm32Uart6isOpenEv to i8*), i8* bitcast (i1 (%"class.Cicada::Stm32Uart"*, i32, i8)* @_ZN6Cicada9Stm32Uart15setSerialConfigEjh to i8*), i8* bitcast (void (%"class.Cicada::Stm32Uart"*)* @_ZN6Cicada9Stm32Uart5closeEv to i8*), i8* bitcast (i8* (%"class.Cicada::Stm32Uart"*)* @_ZNK6Cicada9Stm32Uart8portNameEv to i8*), i8* bitcast (i1 (%"class.Cicada::Stm32Uart"*, i8*)* @_ZN6Cicada9Stm32Uart7rawReadERh to i8*), i8* bitcast (i1 (%"class.Cicada::Stm32Uart"*, i8)* @_ZN6Cicada9Stm32Uart8rawWriteEh to i8*), i8* bitcast (void (%"class.Cicada::Stm32Uart"*)* @_ZN6Cicada9Stm32Uart13startTransmitEv to i8*)], [12 x i8*] [i8* inttoptr (i32 -4 to i8*), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN6Cicada9Stm32UartE to i8*), i8* bitcast (%"class.Cicada::Stm32Uart"* (%"class.Cicada::Stm32Uart"*)* @_ZThn4_N6Cicada9Stm32UartD1Ev to i8*), i8* bitcast (void (%"class.Cicada::Stm32Uart"*)* @_ZThn4_N6Cicada9Stm32UartD0Ev to i8*), i8* bitcast (i1 (%"class.Cicada::Stm32Uart"*)* @_ZThn4_N6Cicada9Stm32Uart4openEv to i8*), i8* bitcast (i1 (%"class.Cicada::Stm32Uart"*)* @_ZThn4_N6Cicada9Stm32Uart6isOpenEv to i8*), i8* bitcast (i1 (%"class.Cicada::Stm32Uart"*, i32, i8)* @_ZThn4_N6Cicada9Stm32Uart15setSerialConfigEjh to i8*), i8* bitcast (void (%"class.Cicada::Stm32Uart"*)* @_ZThn4_N6Cicada9Stm32Uart5closeEv to i8*), i8* bitcast (i8* (%"class.Cicada::Stm32Uart"*)* @_ZThn4_NK6Cicada9Stm32Uart8portNameEv to i8*), i8* bitcast (i1 (%"class.Cicada::Stm32Uart"*, i8*)* @_ZThn4_N6Cicada9Stm32Uart7rawReadERh to i8*), i8* bitcast (i1 (%"class.Cicada::Stm32Uart"*, i8)* @_ZThn4_N6Cicada9Stm32Uart8rawWriteEh to i8*), i8* bitcast (void (%"class.Cicada::Stm32Uart"*)* @_ZThn4_N6Cicada9Stm32Uart13startTransmitEv to i8*)] }, align 4
@_ZTSN6Cicada9Stm32UartE = dso_local constant [20 x i8] c"N6Cicada9Stm32UartE\00", align 1
@_ZTIN6Cicada9Stm32UartE = dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @_ZTSN6Cicada9Stm32UartE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN6Cicada14BufferedSerialE to i8*) }, align 4
@_ZTVN6Cicada14BufferedSerialE = dso_local unnamed_addr constant { [17 x i8*], [12 x i8*] } { [17 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN6Cicada14BufferedSerialE to i8*), i8* bitcast (%"class.Cicada::BufferedSerial"* (%"class.Cicada::BufferedSerial"*)* @_ZN6Cicada14BufferedSerialD2Ev to i8*), i8* bitcast (void (%"class.Cicada::BufferedSerial"*)* @_ZN6Cicada14BufferedSerialD0Ev to i8*), i8* bitcast (i64 (%"class.Cicada::BufferedSerial"*)* @_ZNK6Cicada14BufferedSerial14bytesAvailableEv to i8*), i8* bitcast (i64 (%"class.Cicada::BufferedSerial"*)* @_ZNK6Cicada14BufferedSerial14spaceAvailableEv to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (i64 (%"class.Cicada::BufferedSerial"*, i8*, i64)* @_ZN6Cicada14BufferedSerial4readEPhy to i8*), i8* bitcast (i64 (%"class.Cicada::BufferedSerial"*, i8*, i64)* @_ZN6Cicada14BufferedSerial5writeEPKhy to i8*), i8* bitcast (i8 (%"class.Cicada::BufferedSerial"*)* @_ZN6Cicada14BufferedSerial4readEv to i8*), i8* bitcast (i64 (%"class.Cicada::BufferedSerial"*, i8*)* @_ZN6Cicada14BufferedSerial5writeEPKh to i8*), i8* bitcast (void (%"class.Cicada::BufferedSerial"*, i8)* @_ZN6Cicada14BufferedSerial5writeEh to i8*), i8* bitcast (i1 (%"class.Cicada::BufferedSerial"*)* @_ZNK6Cicada14BufferedSerial11canReadLineEv to i8*), i8* bitcast (i64 (%"class.Cicada::BufferedSerial"*, i8*, i64)* @_ZN6Cicada14BufferedSerial8readLineEPhy to i8*), i8* bitcast (void (%"class.Cicada::BufferedSerial"*)* @_ZN6Cicada14BufferedSerial19flushReceiveBuffersEv to i8*), i8* bitcast (i64 (%"class.Cicada::BufferedSerial"*)* @_ZN6Cicada14BufferedSerial14readBufferSizeEv to i8*), i8* bitcast (i64 (%"class.Cicada::BufferedSerial"*)* @_ZN6Cicada14BufferedSerial15writeBufferSizeEv to i8*)], [12 x i8*] [i8* inttoptr (i32 -4 to i8*), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN6Cicada14BufferedSerialE to i8*), i8* bitcast (%"class.Cicada::BufferedSerial"* (%"class.Cicada::BufferedSerial"*)* @_ZThn4_N6Cicada14BufferedSerialD1Ev to i8*), i8* bitcast (void (%"class.Cicada::BufferedSerial"*)* @_ZThn4_N6Cicada14BufferedSerialD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, align 4
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTSN6Cicada14BufferedSerialE = dso_local constant [26 x i8] c"N6Cicada14BufferedSerialE\00", align 1
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external dso_local global i8*
@_ZTSN6Cicada15IBufferedSerialE = linkonce_odr dso_local constant [27 x i8] c"N6Cicada15IBufferedSerialE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@_ZTSN6Cicada11ICommDeviceE = linkonce_odr dso_local constant [23 x i8] c"N6Cicada11ICommDeviceE\00", comdat, align 1
@_ZTIN6Cicada11ICommDeviceE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @_ZTSN6Cicada11ICommDeviceE, i32 0, i32 0) }, comdat, align 4
@_ZTSN6Cicada7ISerialE = linkonce_odr dso_local constant [18 x i8] c"N6Cicada7ISerialE\00", comdat, align 1
@_ZTIN6Cicada7ISerialE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @_ZTSN6Cicada7ISerialE, i32 0, i32 0) }, comdat, align 4
@_ZTIN6Cicada15IBufferedSerialE = linkonce_odr dso_local constant { i8*, i8*, i32, i32, i8*, i32, i8*, i32 } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @_ZTSN6Cicada15IBufferedSerialE, i32 0, i32 0), i32 0, i32 2, i8* bitcast ({ i8*, i8* }* @_ZTIN6Cicada11ICommDeviceE to i8*), i32 2, i8* bitcast ({ i8*, i8* }* @_ZTIN6Cicada7ISerialE to i8*), i32 1026 }, comdat, align 4
@_ZTIN6Cicada14BufferedSerialE = dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @_ZTSN6Cicada14BufferedSerialE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i32, i32, i8*, i32, i8*, i32 }* @_ZTIN6Cicada15IBufferedSerialE to i8*) }, align 4
@_ZTVN6Cicada15IBufferedSerialE = linkonce_odr dso_local unnamed_addr constant { [17 x i8*], [12 x i8*] } { [17 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i32, i32, i8*, i32, i8*, i32 }* @_ZTIN6Cicada15IBufferedSerialE to i8*), i8* bitcast (%"class.Cicada::IBufferedSerial"* (%"class.Cicada::IBufferedSerial"*)* @_ZN6Cicada15IBufferedSerialD2Ev to i8*), i8* bitcast (void (%"class.Cicada::IBufferedSerial"*)* @_ZN6Cicada15IBufferedSerialD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)], [12 x i8*] [i8* inttoptr (i32 -4 to i8*), i8* bitcast ({ i8*, i8*, i32, i32, i8*, i32, i8*, i32 }* @_ZTIN6Cicada15IBufferedSerialE to i8*), i8* bitcast (%"class.Cicada::IBufferedSerial"* (%"class.Cicada::IBufferedSerial"*)* @_ZThn4_N6Cicada15IBufferedSerialD1Ev to i8*), i8* bitcast (void (%"class.Cicada::IBufferedSerial"*)* @_ZThn4_N6Cicada15IBufferedSerialD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 4
@_ZTVN6Cicada11ICommDeviceE = linkonce_odr dso_local unnamed_addr constant { [9 x i8*] } { [9 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTIN6Cicada11ICommDeviceE to i8*), i8* bitcast (%"class.Cicada::ICommDevice"* (%"class.Cicada::ICommDevice"*)* @_ZN6Cicada11ICommDeviceD2Ev to i8*), i8* bitcast (void (%"class.Cicada::ICommDevice"*)* @_ZN6Cicada11ICommDeviceD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 4
@_ZTVN6Cicada7ISerialE = linkonce_odr dso_local unnamed_addr constant { [12 x i8*] } { [12 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTIN6Cicada7ISerialE to i8*), i8* bitcast (%"class.Cicada::ICommDevice"* (%"class.Cicada::ICommDevice"*)* @_ZN6Cicada7ISerialD2Ev to i8*), i8* bitcast (void (%"class.Cicada::ICommDevice"*)* @_ZN6Cicada7ISerialD0Ev to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*), i8* bitcast (void ()* @__cxa_pure_virtual to i8*)] }, comdat, align 4
@_ZTVN6Cicada18LineCircularBufferE = linkonce_odr dso_local unnamed_addr constant { [15 x i8*] } { [15 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN6Cicada18LineCircularBufferE to i8*), i8* bitcast (%"class.Cicada::CircularBuffer"* (%"class.Cicada::CircularBuffer"*)* @_ZN6Cicada14CircularBufferIcED2Ev to i8*), i8* bitcast (void (%"class.Cicada::LineCircularBuffer"*)* @_ZN6Cicada18LineCircularBufferD0Ev to i8*), i8* bitcast (i64 (%"class.Cicada::LineCircularBuffer"*, i8*, i64)* @_ZN6Cicada18LineCircularBuffer4pushEPKcy to i8*), i8* bitcast (void (%"class.Cicada::LineCircularBuffer"*, i8)* @_ZN6Cicada18LineCircularBuffer4pushEc to i8*), i8* bitcast (i64 (%"class.Cicada::LineCircularBuffer"*, i8*, i64)* @_ZN6Cicada18LineCircularBuffer4pullEPcy to i8*), i8* bitcast (i8 (%"class.Cicada::LineCircularBuffer"*)* @_ZN6Cicada18LineCircularBuffer4pullEv to i8*), i8* bitcast (i8 (%"class.Cicada::CircularBuffer"*)* @_ZN6Cicada14CircularBufferIcE4readEv to i8*), i8* bitcast (void (%"class.Cicada::LineCircularBuffer"*)* @_ZN6Cicada18LineCircularBuffer5flushEv to i8*), i8* bitcast (i1 (%"class.Cicada::CircularBuffer"*)* @_ZNK6Cicada14CircularBufferIcE7isEmptyEv to i8*), i8* bitcast (i1 (%"class.Cicada::CircularBuffer"*)* @_ZNK6Cicada14CircularBufferIcE6isFullEv to i8*), i8* bitcast (i64 (%"class.Cicada::CircularBuffer"*)* @_ZNK6Cicada14CircularBufferIcE14bytesAvailableEv to i8*), i8* bitcast (i64 (%"class.Cicada::CircularBuffer"*)* @_ZNK6Cicada14CircularBufferIcE14spaceAvailableEv to i8*), i8* bitcast (i64 (%"class.Cicada::CircularBuffer"*)* @_ZNK6Cicada14CircularBufferIcE4sizeEv to i8*)] }, comdat, align 4
@_ZTSN6Cicada18LineCircularBufferE = linkonce_odr dso_local constant [30 x i8] c"N6Cicada18LineCircularBufferE\00", comdat, align 1
@_ZTSN6Cicada14CircularBufferIcEE = linkonce_odr dso_local constant [29 x i8] c"N6Cicada14CircularBufferIcEE\00", comdat, align 1
@_ZTIN6Cicada14CircularBufferIcEE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @_ZTSN6Cicada14CircularBufferIcEE, i32 0, i32 0) }, comdat, align 4
@_ZTIN6Cicada18LineCircularBufferE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @_ZTSN6Cicada18LineCircularBufferE, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTIN6Cicada14CircularBufferIcEE to i8*) }, comdat, align 4
@_ZTVN6Cicada14CircularBufferIcEE = linkonce_odr dso_local unnamed_addr constant { [15 x i8*] } { [15 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTIN6Cicada14CircularBufferIcEE to i8*), i8* bitcast (%"class.Cicada::CircularBuffer"* (%"class.Cicada::CircularBuffer"*)* @_ZN6Cicada14CircularBufferIcED2Ev to i8*), i8* bitcast (void (%"class.Cicada::CircularBuffer"*)* @_ZN6Cicada14CircularBufferIcED0Ev to i8*), i8* bitcast (i64 (%"class.Cicada::CircularBuffer"*, i8*, i64)* @_ZN6Cicada14CircularBufferIcE4pushEPKcy to i8*), i8* bitcast (void (%"class.Cicada::CircularBuffer"*, i8)* @_ZN6Cicada14CircularBufferIcE4pushEc to i8*), i8* bitcast (i64 (%"class.Cicada::CircularBuffer"*, i8*, i64)* @_ZN6Cicada14CircularBufferIcE4pullEPcy to i8*), i8* bitcast (i8 (%"class.Cicada::CircularBuffer"*)* @_ZN6Cicada14CircularBufferIcE4pullEv to i8*), i8* bitcast (i8 (%"class.Cicada::CircularBuffer"*)* @_ZN6Cicada14CircularBufferIcE4readEv to i8*), i8* bitcast (void (%"class.Cicada::CircularBuffer"*)* @_ZN6Cicada14CircularBufferIcE5flushEv to i8*), i8* bitcast (i1 (%"class.Cicada::CircularBuffer"*)* @_ZNK6Cicada14CircularBufferIcE7isEmptyEv to i8*), i8* bitcast (i1 (%"class.Cicada::CircularBuffer"*)* @_ZNK6Cicada14CircularBufferIcE6isFullEv to i8*), i8* bitcast (i64 (%"class.Cicada::CircularBuffer"*)* @_ZNK6Cicada14CircularBufferIcE14bytesAvailableEv to i8*), i8* bitcast (i64 (%"class.Cicada::CircularBuffer"*)* @_ZNK6Cicada14CircularBufferIcE14spaceAvailableEv to i8*), i8* bitcast (i64 (%"class.Cicada::CircularBuffer"*)* @_ZNK6Cicada14CircularBufferIcE4sizeEv to i8*)] }, comdat, align 4

@_ZN6Cicada9SchedulerC1EPFjvEPPNS_4TaskE = dso_local unnamed_addr alias %"class.Cicada::Scheduler"* (%"class.Cicada::Scheduler"*, i32 ()*, %"class.Cicada::Task"**), %"class.Cicada::Scheduler"* (%"class.Cicada::Scheduler"*, i32 ()*, %"class.Cicada::Task"**)* @_ZN6Cicada9SchedulerC2EPFjvEPPNS_4TaskE
@_ZN6Cicada9Stm32UartC1EPcS1_yyP13USART_TypeDefP12GPIO_TypeDeftt = dso_local unnamed_addr alias %"class.Cicada::Stm32Uart"* (%"class.Cicada::Stm32Uart"*, i8*, i8*, i64, i64, %struct.USART_TypeDef*, %struct.USART_TypeDef*, i16, i16), %"class.Cicada::Stm32Uart"* (%"class.Cicada::Stm32Uart"*, i8*, i8*, i64, i64, %struct.USART_TypeDef*, %struct.USART_TypeDef*, i16, i16)* @_ZN6Cicada9Stm32UartC2EPcS1_yyP13USART_TypeDefP12GPIO_TypeDeftt
@_ZN6Cicada9Stm32UartC1EPcS1_yP13USART_TypeDefP12GPIO_TypeDeftt = dso_local unnamed_addr alias %"class.Cicada::Stm32Uart"* (%"class.Cicada::Stm32Uart"*, i8*, i8*, i64, %struct.USART_TypeDef*, %struct.USART_TypeDef*, i16, i16), %"class.Cicada::Stm32Uart"* (%"class.Cicada::Stm32Uart"*, i8*, i8*, i64, %struct.USART_TypeDef*, %struct.USART_TypeDef*, i16, i16)* @_ZN6Cicada9Stm32UartC2EPcS1_yP13USART_TypeDefP12GPIO_TypeDeftt
@_ZN6Cicada9Stm32UartD1Ev = dso_local unnamed_addr alias %"class.Cicada::Stm32Uart"* (%"class.Cicada::Stm32Uart"*), %"class.Cicada::Stm32Uart"* (%"class.Cicada::Stm32Uart"*)* @_ZN6Cicada9Stm32UartD2Ev

; Function Attrs: mustprogress noinline norecurse nounwind
define dso_local noundef i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) local_unnamed_addr #0 !dbg !1225 {
  %3 = alloca [1504 x i8], align 1
  %4 = alloca [1504 x i8], align 1
  %5 = alloca %"class.Cicada::Stm32Uart", align 8
  %6 = alloca %class.SerialTask, align 4
  %7 = alloca [2 x %"class.Cicada::Task"*], align 4
  %8 = alloca %"class.Cicada::Scheduler", align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1230, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8** %1, metadata !1231, metadata !DIExpression()), !dbg !1244
  %9 = call i32 @HAL_Init() #23, !dbg !1245
  call fastcc void @_ZL18SystemClock_Configv(), !dbg !1246
  call void @llvm.dbg.value(metadata i16 1504, metadata !1232, metadata !DIExpression()), !dbg !1244
  %10 = getelementptr inbounds [1504 x i8], [1504 x i8]* %3, i32 0, i32 0, !dbg !1247
  call void @llvm.lifetime.start.p0i8(i64 1504, i8* nonnull %10) #23, !dbg !1247
  call void @llvm.dbg.declare(metadata [1504 x i8]* %3, metadata !1234, metadata !DIExpression()), !dbg !1248
  %11 = getelementptr inbounds [1504 x i8], [1504 x i8]* %4, i32 0, i32 0, !dbg !1249
  call void @llvm.lifetime.start.p0i8(i64 1504, i8* nonnull %11) #23, !dbg !1249
  call void @llvm.dbg.declare(metadata [1504 x i8]* %4, metadata !1238, metadata !DIExpression()), !dbg !1250
  %12 = bitcast %"class.Cicada::Stm32Uart"* %5 to i8*, !dbg !1251
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %12) #23, !dbg !1251
  call void @llvm.dbg.declare(metadata %"class.Cicada::Stm32Uart"* %5, metadata !1239, metadata !DIExpression()), !dbg !1252
  %13 = call noundef %"class.Cicada::Stm32Uart"* @_ZN6Cicada9Stm32UartC1EPcS1_yP13USART_TypeDefP12GPIO_TypeDeftt(%"class.Cicada::Stm32Uart"* noundef nonnull align 8 dereferenceable(192) %5, i8* noundef nonnull %10, i8* noundef nonnull %11, i64 noundef 1504, %struct.USART_TypeDef* noundef nonnull inttoptr (i32 1073759232 to %struct.USART_TypeDef*), %struct.USART_TypeDef* noundef nonnull inttoptr (i32 1073809408 to %struct.USART_TypeDef*), i16 noundef zeroext 4, i16 noundef zeroext 8) #23, !dbg !1252
  %14 = bitcast %class.SerialTask* %6 to i8*, !dbg !1253
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %14) #23, !dbg !1253
  call void @llvm.dbg.declare(metadata %class.SerialTask* %6, metadata !1240, metadata !DIExpression()), !dbg !1254
  %15 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %5, i32 0, i32 0, i32 0, !dbg !1255
  %16 = call noundef %class.SerialTask* @_ZN10SerialTaskC2ERN6Cicada15IBufferedSerialE(%class.SerialTask* noundef nonnull align 4 dereferenceable(28) %6, %"class.Cicada::IBufferedSerial"* noundef nonnull align 4 dereferenceable(8) %15), !dbg !1254
  %17 = bitcast [2 x %"class.Cicada::Task"*]* %7 to i8*, !dbg !1256
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #23, !dbg !1256
  call void @llvm.dbg.declare(metadata [2 x %"class.Cicada::Task"*]* %7, metadata !1241, metadata !DIExpression()), !dbg !1257
  %18 = getelementptr inbounds [2 x %"class.Cicada::Task"*], [2 x %"class.Cicada::Task"*]* %7, i32 0, i32 0, !dbg !1258
  %19 = getelementptr inbounds %class.SerialTask, %class.SerialTask* %6, i32 0, i32 0, !dbg !1259
  store %"class.Cicada::Task"* %19, %"class.Cicada::Task"** %18, align 4, !dbg !1258, !tbaa !1260
  %20 = getelementptr inbounds [2 x %"class.Cicada::Task"*], [2 x %"class.Cicada::Task"*]* %7, i32 0, i32 1, !dbg !1258
  store %"class.Cicada::Task"* null, %"class.Cicada::Task"** %20, align 4, !dbg !1258, !tbaa !1260
  %21 = bitcast %"class.Cicada::Scheduler"* %8 to i8*, !dbg !1264
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %21) #23, !dbg !1264
  call void @llvm.dbg.declare(metadata %"class.Cicada::Scheduler"* %8, metadata !1243, metadata !DIExpression()), !dbg !1265
  %22 = call noundef %"class.Cicada::Scheduler"* @_ZN6Cicada9SchedulerC1EPFjvEPPNS_4TaskE(%"class.Cicada::Scheduler"* noundef nonnull align 4 dereferenceable(12) %8, i32 ()* noundef nonnull @_Z13eTickFunctionv, %"class.Cicada::Task"** noundef nonnull %18) #23, !dbg !1265
  call void @_ZN6Cicada9Scheduler5startEv(%"class.Cicada::Scheduler"* noundef nonnull align 4 dereferenceable(12) %8) #23, !dbg !1266
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %21) #23, !dbg !1267
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #23, !dbg !1267
  %23 = call noundef %"class.Cicada::Task"* @_ZN6Cicada4TaskD2Ev(%"class.Cicada::Task"* noundef nonnull align 4 dereferenceable(28) %19) #23, !dbg !1267
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %14) #23, !dbg !1267
  %24 = call noundef %"class.Cicada::Stm32Uart"* @_ZN6Cicada9Stm32UartD1Ev(%"class.Cicada::Stm32Uart"* noundef nonnull align 8 dereferenceable(192) %5) #23, !dbg !1267
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %12) #23, !dbg !1267
  call void @llvm.lifetime.end.p0i8(i64 1504, i8* nonnull %11) #23, !dbg !1267
  call void @llvm.lifetime.end.p0i8(i64 1504, i8* nonnull %10) #23, !dbg !1267
  ret i32 0, !dbg !1267
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline norecurse nounwind
define internal fastcc void @_ZL18SystemClock_Configv() unnamed_addr #0 !dbg !1268 {
  %1 = alloca %struct.RCC_OscInitTypeDef, align 4
  %2 = alloca %struct.RCC_ClkInitTypeDef, align 4
  %3 = bitcast %struct.RCC_OscInitTypeDef* %1 to i8*, !dbg !1299
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #23, !dbg !1299
  call void @llvm.dbg.declare(metadata %struct.RCC_OscInitTypeDef* %1, metadata !1270, metadata !DIExpression()), !dbg !1300
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(40) %3, i8 0, i32 40, i1 false), !dbg !1300
  %4 = bitcast %struct.RCC_ClkInitTypeDef* %2 to i8*, !dbg !1301
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %4) #23, !dbg !1301
  call void @llvm.dbg.declare(metadata %struct.RCC_ClkInitTypeDef* %2, metadata !1290, metadata !DIExpression()), !dbg !1302
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !dbg !1302
  %5 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %1, i32 0, i32 0, !dbg !1303
  store i32 2, i32* %5, align 4, !dbg !1304, !tbaa !1305
  %6 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %1, i32 0, i32 4, !dbg !1309
  store i32 1, i32* %6, align 4, !dbg !1310, !tbaa !1311
  %7 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %1, i32 0, i32 5, !dbg !1312
  store i32 16, i32* %7, align 4, !dbg !1313, !tbaa !1314
  %8 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %1, i32 0, i32 7, i32 0, !dbg !1315
  store i32 2, i32* %8, align 4, !dbg !1316, !tbaa !1317
  %9 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %1, i32 0, i32 7, i32 1, !dbg !1318
  store i32 0, i32* %9, align 4, !dbg !1319, !tbaa !1320
  %10 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %1, i32 0, i32 7, i32 2, !dbg !1321
  store i32 3670016, i32* %10, align 4, !dbg !1322, !tbaa !1323
  %11 = call i32 @HAL_RCC_OscConfig(%struct.RCC_OscInitTypeDef* noundef nonnull %1) #23, !dbg !1324
  %12 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %2, i32 0, i32 0, !dbg !1325
  store i32 15, i32* %12, align 4, !dbg !1326, !tbaa !1327
  %13 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %2, i32 0, i32 1, !dbg !1329
  store i32 2, i32* %13, align 4, !dbg !1330, !tbaa !1331
  %14 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %2, i32 0, i32 2, !dbg !1332
  store i32 0, i32* %14, align 4, !dbg !1333, !tbaa !1334
  %15 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %2, i32 0, i32 3, !dbg !1335
  store i32 1024, i32* %15, align 4, !dbg !1336, !tbaa !1337
  %16 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %2, i32 0, i32 4, !dbg !1338
  store i32 0, i32* %16, align 4, !dbg !1339, !tbaa !1340
  %17 = call i32 @HAL_RCC_ClockConfig(%struct.RCC_ClkInitTypeDef* noundef nonnull %2, i32 noundef 2) #23, !dbg !1341
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %4) #23, !dbg !1342
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #23, !dbg !1342
  ret void, !dbg !1342
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind
define linkonce_odr dso_local noundef %class.SerialTask* @_ZN10SerialTaskC2ERN6Cicada15IBufferedSerialE(%class.SerialTask* noundef nonnull returned align 4 dereferenceable(28) %0, %"class.Cicada::IBufferedSerial"* noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 !dbg !1343 {
  call void @llvm.dbg.value(metadata %class.SerialTask* %0, metadata !1345, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.value(metadata %"class.Cicada::IBufferedSerial"* %1, metadata !1346, metadata !DIExpression()), !dbg !1347
  %3 = getelementptr inbounds %class.SerialTask, %class.SerialTask* %0, i32 0, i32 0, !dbg !1348
  %4 = call noundef %"class.Cicada::Task"* @_ZN6Cicada4TaskC2Et(%"class.Cicada::Task"* noundef nonnull align 4 dereferenceable(20) %3, i16 noundef zeroext 0), !dbg !1349
  %5 = getelementptr inbounds %class.SerialTask, %class.SerialTask* %0, i32 0, i32 0, i32 0, !dbg !1348
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTV10SerialTask, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %5, align 4, !dbg !1348, !tbaa !1350
  %6 = getelementptr inbounds %class.SerialTask, %class.SerialTask* %0, i32 0, i32 1, !dbg !1352
  store %"class.Cicada::IBufferedSerial"* %1, %"class.Cicada::IBufferedSerial"** %6, align 4, !dbg !1352, !tbaa !1260
  %7 = getelementptr inbounds %class.SerialTask, %class.SerialTask* %0, i32 0, i32 2, !dbg !1353
  store i32 0, i32* %7, align 4, !dbg !1353, !tbaa !1354
  ret %class.SerialTask* %0, !dbg !1356
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind
define linkonce_odr dso_local noundef %"class.Cicada::Task"* @_ZN6Cicada4TaskD2Ev(%"class.Cicada::Task"* noundef nonnull returned align 4 dereferenceable(20) %0) unnamed_addr #3 comdat align 2 !dbg !1357 {
  call void @llvm.dbg.value(metadata %"class.Cicada::Task"* %0, metadata !1359, metadata !DIExpression()), !dbg !1360
  ret %"class.Cicada::Task"* %0, !dbg !1361
}

; Function Attrs: noinline nounwind
define linkonce_odr dso_local noundef %"class.Cicada::Task"* @_ZN6Cicada4TaskC2Et(%"class.Cicada::Task"* noundef nonnull returned align 4 dereferenceable(20) %0, i16 noundef zeroext %1) unnamed_addr #3 comdat align 2 !dbg !1362 {
  call void @llvm.dbg.value(metadata %"class.Cicada::Task"* %0, metadata !1364, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i16 %1, metadata !1365, metadata !DIExpression()), !dbg !1366
  %3 = getelementptr inbounds %"class.Cicada::Task", %"class.Cicada::Task"* %0, i32 0, i32 0, !dbg !1367
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN6Cicada4TaskE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %3, align 4, !dbg !1367, !tbaa !1350
  %4 = getelementptr inbounds %"class.Cicada::Task", %"class.Cicada::Task"* %0, i32 0, i32 1, !dbg !1368
  store i16 %1, i16* %4, align 4, !dbg !1368, !tbaa !1369
  %5 = getelementptr inbounds %"class.Cicada::Task", %"class.Cicada::Task"* %0, i32 0, i32 3, !dbg !1373
  store i8 0, i8* %5, align 4, !dbg !1373, !tbaa !1374
  %6 = getelementptr inbounds %"class.Cicada::Task", %"class.Cicada::Task"* %0, i32 0, i32 4, !dbg !1375
  store i32 0, i32* %6, align 4, !dbg !1375, !tbaa !1376
  ret %"class.Cicada::Task"* %0, !dbg !1377
}

; Function Attrs: noinline nounwind
define linkonce_odr dso_local void @_ZN10SerialTaskD0Ev(%class.SerialTask* noundef nonnull align 4 dereferenceable(28) %0) unnamed_addr #3 comdat align 2 !dbg !1378 {
  call void @llvm.dbg.value(metadata %class.SerialTask* %0, metadata !1381, metadata !DIExpression()), !dbg !1382
  %2 = getelementptr inbounds %class.SerialTask, %class.SerialTask* %0, i32 0, i32 0, !dbg !1383
  %3 = call noundef %"class.Cicada::Task"* @_ZN6Cicada4TaskD2Ev(%"class.Cicada::Task"* noundef nonnull align 4 dereferenceable(28) %2) #23, !dbg !1383
  %4 = bitcast %class.SerialTask* %0 to i8*, !dbg !1383
  call void @_ZdlPv(i8* noundef %4) #24, !dbg !1383
  ret void, !dbg !1383
}

; Function Attrs: mustprogress noinline nounwind
define linkonce_odr dso_local void @_ZN10SerialTask3runEv(%class.SerialTask* noundef nonnull align 4 dereferenceable(28) %0) unnamed_addr #4 comdat align 2 !dbg !201 {
  %2 = alloca [32 x i8], align 1
  call void @llvm.dbg.value(metadata %class.SerialTask* %0, metadata !203, metadata !DIExpression()), !dbg !1384
  %3 = load i8, i8* @_ZZN10SerialTask3runEvE10entrypoint, align 1, !dbg !1385, !tbaa !1386
  switch i8 %3, label %71 [
    i8 0, label %4
    i8 1, label %37
    i8 2, label %56
  ], !dbg !1385

4:                                                ; preds = %1
  %5 = getelementptr inbounds %class.SerialTask, %class.SerialTask* %0, i32 0, i32 1, !dbg !1387
  %6 = bitcast %"class.Cicada::IBufferedSerial"** %5 to i8**, !dbg !1387
  %7 = load i8*, i8** %6, align 4, !dbg !1387, !tbaa !1389
  %8 = getelementptr inbounds i8, i8* %7, i32 4, !dbg !1387
  %9 = bitcast i8* %8 to %"class.Cicada::ICommDevice"*, !dbg !1387
  %10 = bitcast i8* %8 to i1 (%"class.Cicada::ICommDevice"*, i32, i8)***, !dbg !1390
  %11 = load i1 (%"class.Cicada::ICommDevice"*, i32, i8)**, i1 (%"class.Cicada::ICommDevice"*, i32, i8)*** %10, align 4, !dbg !1390, !tbaa !1350
  %12 = getelementptr inbounds i1 (%"class.Cicada::ICommDevice"*, i32, i8)*, i1 (%"class.Cicada::ICommDevice"*, i32, i8)** %11, i32 4, !dbg !1390
  %13 = load i1 (%"class.Cicada::ICommDevice"*, i32, i8)*, i1 (%"class.Cicada::ICommDevice"*, i32, i8)** %12, align 4, !dbg !1390
  %14 = call noundef zeroext i1 %13(%"class.Cicada::ICommDevice"* noundef nonnull align 4 dereferenceable(4) %9, i32 noundef 115200, i8 noundef zeroext 8) #23, !dbg !1390
  %15 = load i8*, i8** %6, align 4, !dbg !1391, !tbaa !1389
  %16 = getelementptr inbounds i8, i8* %15, i32 4, !dbg !1391
  %17 = bitcast i8* %16 to %"class.Cicada::ICommDevice"*, !dbg !1391
  %18 = bitcast i8* %16 to i1 (%"class.Cicada::ICommDevice"*)***, !dbg !1393
  %19 = load i1 (%"class.Cicada::ICommDevice"*)**, i1 (%"class.Cicada::ICommDevice"*)*** %18, align 4, !dbg !1393, !tbaa !1350
  %20 = getelementptr inbounds i1 (%"class.Cicada::ICommDevice"*)*, i1 (%"class.Cicada::ICommDevice"*)** %19, i32 2, !dbg !1393
  %21 = load i1 (%"class.Cicada::ICommDevice"*)*, i1 (%"class.Cicada::ICommDevice"*)** %20, align 4, !dbg !1393
  %22 = call noundef zeroext i1 %21(%"class.Cicada::ICommDevice"* noundef nonnull align 4 dereferenceable(4) %17) #23, !dbg !1393
  %23 = getelementptr inbounds %class.SerialTask, %class.SerialTask* %0, i32 0, i32 2, !dbg !1394
  store i32 0, i32* %23, align 4, !dbg !1395, !tbaa !1354
  br label %24, !dbg !1394

24:                                               ; preds = %56, %4
  %25 = getelementptr inbounds %class.SerialTask, %class.SerialTask* %0, i32 0, i32 2, !dbg !1396
  %26 = load i32, i32* %25, align 4, !dbg !1396, !tbaa !1354
  %27 = icmp slt i32 %26, 100, !dbg !1397
  %28 = getelementptr inbounds %class.SerialTask, %class.SerialTask* %0, i32 0, i32 1, !dbg !1398
  br i1 %27, label %29, label %60, !dbg !1399

29:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), metadata !205, metadata !DIExpression()), !dbg !1400
  %30 = load %"class.Cicada::IBufferedSerial"*, %"class.Cicada::IBufferedSerial"** %28, align 4, !dbg !1401, !tbaa !1389
  %31 = bitcast %"class.Cicada::IBufferedSerial"* %30 to i64 (%"class.Cicada::IBufferedSerial"*, i8*, i64)***, !dbg !1402
  %32 = load i64 (%"class.Cicada::IBufferedSerial"*, i8*, i64)**, i64 (%"class.Cicada::IBufferedSerial"*, i8*, i64)*** %31, align 4, !dbg !1402, !tbaa !1350
  %33 = getelementptr inbounds i64 (%"class.Cicada::IBufferedSerial"*, i8*, i64)*, i64 (%"class.Cicada::IBufferedSerial"*, i8*, i64)** %32, i32 6, !dbg !1402
  %34 = load i64 (%"class.Cicada::IBufferedSerial"*, i8*, i64)*, i64 (%"class.Cicada::IBufferedSerial"*, i8*, i64)** %33, align 4, !dbg !1402
  %35 = call noundef i64 %34(%"class.Cicada::IBufferedSerial"* noundef nonnull align 4 dereferenceable(8) %30, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 noundef 4) #23, !dbg !1402
  %36 = getelementptr inbounds %class.SerialTask, %class.SerialTask* %0, i32 0, i32 0, !dbg !1403
  call void @_ZN6Cicada4Task8setDelayEt(%"class.Cicada::Task"* noundef nonnull align 4 dereferenceable(20) %36, i16 noundef zeroext 100), !dbg !1403
  store i8 1, i8* @_ZZN10SerialTask3runEvE10entrypoint, align 1, !dbg !1403, !tbaa !1386
  br label %37, !dbg !1403

37:                                               ; preds = %1, %29
  %38 = getelementptr inbounds %class.SerialTask, %class.SerialTask* %0, i32 0, i32 1, !dbg !1404
  %39 = bitcast %"class.Cicada::IBufferedSerial"** %38 to %"class.Cicada::ICommDevice"**, !dbg !1404
  %40 = load %"class.Cicada::ICommDevice"*, %"class.Cicada::ICommDevice"** %39, align 4, !dbg !1404, !tbaa !1389
  %41 = bitcast %"class.Cicada::ICommDevice"* %40 to i64 (%"class.Cicada::ICommDevice"*)***, !dbg !1404
  %42 = load i64 (%"class.Cicada::ICommDevice"*)**, i64 (%"class.Cicada::ICommDevice"*)*** %41, align 4, !dbg !1404, !tbaa !1350
  %43 = getelementptr inbounds i64 (%"class.Cicada::ICommDevice"*)*, i64 (%"class.Cicada::ICommDevice"*)** %42, i32 2, !dbg !1404
  %44 = load i64 (%"class.Cicada::ICommDevice"*)*, i64 (%"class.Cicada::ICommDevice"*)** %43, align 4, !dbg !1404
  %45 = call noundef i64 %44(%"class.Cicada::ICommDevice"* noundef nonnull align 4 dereferenceable(4) %40) #23, !dbg !1404
  %46 = icmp eq i64 %45, 0, !dbg !1404
  br i1 %46, label %71, label %47, !dbg !1403

47:                                               ; preds = %37
  %48 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i32 0, i32 0, !dbg !1406
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %48) #23, !dbg !1406
  call void @llvm.dbg.declare(metadata [32 x i8]* %2, metadata !211, metadata !DIExpression()), !dbg !1407
  %49 = load %"class.Cicada::IBufferedSerial"*, %"class.Cicada::IBufferedSerial"** %38, align 4, !dbg !1408, !tbaa !1389
  %50 = bitcast %"class.Cicada::IBufferedSerial"* %49 to i64 (%"class.Cicada::IBufferedSerial"*, i8*, i64)***, !dbg !1409
  %51 = load i64 (%"class.Cicada::IBufferedSerial"*, i8*, i64)**, i64 (%"class.Cicada::IBufferedSerial"*, i8*, i64)*** %50, align 4, !dbg !1409, !tbaa !1350
  %52 = getelementptr inbounds i64 (%"class.Cicada::IBufferedSerial"*, i8*, i64)*, i64 (%"class.Cicada::IBufferedSerial"*, i8*, i64)** %51, i32 5, !dbg !1409
  %53 = load i64 (%"class.Cicada::IBufferedSerial"*, i8*, i64)*, i64 (%"class.Cicada::IBufferedSerial"*, i8*, i64)** %52, align 4, !dbg !1409
  %54 = call noundef i64 %53(%"class.Cicada::IBufferedSerial"* noundef nonnull align 4 dereferenceable(8) %49, i8* noundef nonnull %48, i64 noundef 31) #23, !dbg !1409
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %48) #23, !dbg !1410
  %55 = getelementptr inbounds %class.SerialTask, %class.SerialTask* %0, i32 0, i32 0, !dbg !1411
  call void @_ZN6Cicada4Task8setDelayEt(%"class.Cicada::Task"* noundef nonnull align 4 dereferenceable(20) %55, i16 noundef zeroext 500), !dbg !1411
  br label %69, !dbg !1411

56:                                               ; preds = %1
  %57 = getelementptr inbounds %class.SerialTask, %class.SerialTask* %0, i32 0, i32 2, !dbg !1412
  %58 = load i32, i32* %57, align 4, !dbg !1413, !tbaa !1354
  %59 = add nsw i32 %58, 1, !dbg !1413
  store i32 %59, i32* %57, align 4, !dbg !1413, !tbaa !1354
  br label %24, !dbg !1414, !llvm.loop !1415

60:                                               ; preds = %24
  %61 = bitcast %"class.Cicada::IBufferedSerial"** %28 to i8**, !dbg !1419
  %62 = load i8*, i8** %61, align 4, !dbg !1419, !tbaa !1389
  %63 = getelementptr inbounds i8, i8* %62, i32 4, !dbg !1419
  %64 = bitcast i8* %63 to %"class.Cicada::ICommDevice"*, !dbg !1419
  %65 = bitcast i8* %63 to void (%"class.Cicada::ICommDevice"*)***, !dbg !1420
  %66 = load void (%"class.Cicada::ICommDevice"*)**, void (%"class.Cicada::ICommDevice"*)*** %65, align 4, !dbg !1420, !tbaa !1350
  %67 = getelementptr inbounds void (%"class.Cicada::ICommDevice"*)*, void (%"class.Cicada::ICommDevice"*)** %66, i32 5, !dbg !1420
  %68 = load void (%"class.Cicada::ICommDevice"*)*, void (%"class.Cicada::ICommDevice"*)** %67, align 4, !dbg !1420
  call void %68(%"class.Cicada::ICommDevice"* noundef nonnull align 4 dereferenceable(4) %64) #23, !dbg !1420
  br label %69, !dbg !1421

69:                                               ; preds = %60, %47
  %70 = phi i8 [ 2, %47 ], [ 3, %60 ]
  store i8 %70, i8* @_ZZN10SerialTask3runEvE10entrypoint, align 1, !dbg !1398, !tbaa !1386
  br label %71, !dbg !1422

71:                                               ; preds = %69, %37, %1
  ret void, !dbg !1422
}

; Function Attrs: mustprogress noinline nounwind
define linkonce_odr dso_local void @_ZN6Cicada4Task8setDelayEt(%"class.Cicada::Task"* noundef nonnull align 4 dereferenceable(20) %0, i16 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !dbg !1423 {
  call void @llvm.dbg.value(metadata %"class.Cicada::Task"* %0, metadata !1425, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.value(metadata i16 %1, metadata !1426, metadata !DIExpression()), !dbg !1427
  %3 = getelementptr inbounds %"class.Cicada::Task", %"class.Cicada::Task"* %0, i32 0, i32 1, !dbg !1428
  store i16 %1, i16* %3, align 4, !dbg !1429, !tbaa !1369
  ret void, !dbg !1430
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8* noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind
define linkonce_odr dso_local void @_ZN6Cicada4TaskD0Ev(%"class.Cicada::Task"* noundef nonnull align 4 dereferenceable(20) %0) unnamed_addr #3 comdat align 2 !dbg !1431 {
  call void @llvm.dbg.value(metadata %"class.Cicada::Task"* %0, metadata !1433, metadata !DIExpression()), !dbg !1434
  call void @llvm.trap() #25, !dbg !1435
  unreachable, !dbg !1435
}

declare dso_local void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: mustprogress noinline nounwind
define dso_local void @SysTick_Handler() local_unnamed_addr #4 !dbg !1436 {
  call void @HAL_IncTick() #23, !dbg !1437
  ret void, !dbg !1438
}

; Function Attrs: mustprogress noinline nounwind
define dso_local void @USART2_IRQHandler() local_unnamed_addr #4 !dbg !2 {
  %1 = load atomic i8, i8* bitcast (i32* @_ZGVZ17USART2_IRQHandlerE8instance to i8*) acquire, align 4, !dbg !1439
  %2 = and i8 %1, 1, !dbg !1439
  %3 = icmp eq i8 %2, 0, !dbg !1439
  br i1 %3, label %4, label %9, !dbg !1439, !prof !1440

4:                                                ; preds = %0
  %5 = call i32 @__cxa_guard_acquire(i32* nonnull @_ZGVZ17USART2_IRQHandlerE8instance) #23, !dbg !1439
  %6 = icmp eq i32 %5, 0, !dbg !1439
  br i1 %6, label %9, label %7, !dbg !1439

7:                                                ; preds = %4
  %8 = call noundef %"class.Cicada::Stm32Uart"* @_ZN6Cicada9Stm32Uart11getInstanceEP13USART_TypeDef(%struct.USART_TypeDef* noundef nonnull inttoptr (i32 1073759232 to %struct.USART_TypeDef*)) #23, !dbg !1441
  store %"class.Cicada::Stm32Uart"* %8, %"class.Cicada::Stm32Uart"** @_ZZ17USART2_IRQHandlerE8instance, align 4, !dbg !1439, !tbaa !1260
  call void @__cxa_guard_release(i32* nonnull @_ZGVZ17USART2_IRQHandlerE8instance) #23, !dbg !1439
  br label %9, !dbg !1439

9:                                                ; preds = %7, %4, %0
  %10 = load %"class.Cicada::Stm32Uart"*, %"class.Cicada::Stm32Uart"** @_ZZ17USART2_IRQHandlerE8instance, align 4, !dbg !1442, !tbaa !1260
  call void @_ZN6Cicada9Stm32Uart15handleInterruptEv(%"class.Cicada::Stm32Uart"* noundef nonnull align 8 dereferenceable(192) %10) #23, !dbg !1443
  ret void, !dbg !1444
}

; Function Attrs: nofree nounwind
declare dso_local i32 @__cxa_guard_acquire(i32*) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare dso_local void @__cxa_guard_release(i32*) local_unnamed_addr #8

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @SystemInit() local_unnamed_addr #9 !dbg !1445 {
  %1 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1446, !tbaa !1447
  %2 = or i32 %1, 1, !dbg !1446
  store volatile i32 %2, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1446, !tbaa !1447
  %3 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1452, !tbaa !1453
  %4 = and i32 %3, -117506048, !dbg !1452
  store volatile i32 %4, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1452, !tbaa !1453
  %5 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1454, !tbaa !1447
  %6 = and i32 %5, -17367041, !dbg !1454
  store volatile i32 %6, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1454, !tbaa !1447
  %7 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1455, !tbaa !1447
  %8 = and i32 %7, -262145, !dbg !1455
  store volatile i32 %8, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1455, !tbaa !1447
  %9 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1456, !tbaa !1453
  %10 = and i32 %9, -8323073, !dbg !1456
  store volatile i32 %10, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1456, !tbaa !1453
  store volatile i32 10420224, i32* inttoptr (i32 1073877000 to i32*), align 8, !dbg !1457, !tbaa !1458
  store volatile i32 134217728, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !1459, !tbaa !1460
  ret void, !dbg !1462
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local void @SystemCoreClockUpdate() local_unnamed_addr #10 !dbg !1463 {
  call void @llvm.dbg.value(metadata i32 0, metadata !1465, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i32 0, metadata !1466, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i32 0, metadata !1467, metadata !DIExpression()), !dbg !1468
  %1 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1469, !tbaa !1453
  %2 = and i32 %1, 12, !dbg !1470
  call void @llvm.dbg.value(metadata i32 %2, metadata !1465, metadata !DIExpression()), !dbg !1468
  %3 = icmp eq i32 %2, 8, !dbg !1471
  br i1 %3, label %4, label %22, !dbg !1471

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1472, !tbaa !1453
  call void @llvm.dbg.value(metadata i32 %5, metadata !1466, metadata !DIExpression(DW_OP_constu, 3932160, DW_OP_and, DW_OP_stack_value)), !dbg !1468
  %6 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1474, !tbaa !1453
  %7 = and i32 %6, 65536, !dbg !1475
  call void @llvm.dbg.value(metadata i32 %7, metadata !1467, metadata !DIExpression()), !dbg !1468
  %8 = lshr i32 %5, 18, !dbg !1476
  %9 = and i32 %8, 15, !dbg !1476
  %10 = add nuw nsw i32 %9, 2, !dbg !1477
  call void @llvm.dbg.value(metadata i32 %10, metadata !1466, metadata !DIExpression()), !dbg !1468
  %11 = icmp eq i32 %7, 0, !dbg !1478
  br i1 %11, label %12, label %14, !dbg !1480

12:                                               ; preds = %4
  %13 = mul nuw nsw i32 %10, 4000000, !dbg !1481
  br label %22, !dbg !1483

14:                                               ; preds = %4
  %15 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1484, !tbaa !1453
  %16 = and i32 %15, 131072, !dbg !1487
  %17 = icmp eq i32 %16, 0, !dbg !1488
  br i1 %17, label %20, label %18, !dbg !1489

18:                                               ; preds = %14
  %19 = mul nuw nsw i32 %10, 4000000, !dbg !1490
  br label %22, !dbg !1492

20:                                               ; preds = %14
  %21 = mul nuw nsw i32 %10, 8000000, !dbg !1493
  br label %22

22:                                               ; preds = %0, %12, %20, %18
  %23 = phi i32 [ %13, %12 ], [ %21, %20 ], [ %19, %18 ], [ 8000000, %0 ]
  store i32 %23, i32* @SystemCoreClock, align 4, !dbg !1495, !tbaa !1496
  %24 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1497, !tbaa !1453
  %25 = lshr i32 %24, 4, !dbg !1498
  %26 = and i32 %25, 15, !dbg !1498
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* @AHBPrescTable, i32 0, i32 %26, !dbg !1499
  %28 = load i8, i8* %27, align 1, !dbg !1499, !tbaa !1500
  %29 = zext i8 %28 to i32, !dbg !1499
  call void @llvm.dbg.value(metadata i32 %29, metadata !1465, metadata !DIExpression()), !dbg !1468
  %30 = load i32, i32* @SystemCoreClock, align 4, !dbg !1501, !tbaa !1496
  %31 = lshr i32 %30, %29, !dbg !1501
  store i32 %31, i32* @SystemCoreClock, align 4, !dbg !1501, !tbaa !1496
  ret void, !dbg !1502
}

; Function Attrs: noinline nounwind
define dso_local i32 @HAL_RCC_DeInit() local_unnamed_addr #3 !dbg !1503 {
  %1 = call i32 @HAL_GetTick() #23, !dbg !1509
  call void @llvm.dbg.value(metadata i32 %1, metadata !1508, metadata !DIExpression()), !dbg !1510
  %2 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1511, !tbaa !1447
  %3 = or i32 %2, 1, !dbg !1511
  store volatile i32 %3, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1511, !tbaa !1447
  br label %4, !dbg !1512

4:                                                ; preds = %8, %0
  %5 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1513, !tbaa !1447
  %6 = and i32 %5, 2, !dbg !1513
  %7 = icmp eq i32 %6, 0, !dbg !1514
  br i1 %7, label %8, label %12, !dbg !1512

8:                                                ; preds = %4
  %9 = call i32 @HAL_GetTick() #23, !dbg !1515
  %10 = sub i32 %9, %1, !dbg !1518
  %11 = icmp ugt i32 %10, 2, !dbg !1519
  br i1 %11, label %58, label %4, !dbg !1520, !llvm.loop !1521

12:                                               ; preds = %4
  %13 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1523, !tbaa !1447
  %14 = and i32 %13, -249, !dbg !1523
  %15 = or i32 %14, 128, !dbg !1523
  store volatile i32 %15, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1523, !tbaa !1447
  %16 = call i32 @HAL_GetTick() #23, !dbg !1524
  call void @llvm.dbg.value(metadata i32 %16, metadata !1508, metadata !DIExpression()), !dbg !1510
  store volatile i32 0, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1525, !tbaa !1453
  br label %17, !dbg !1526

17:                                               ; preds = %21, %12
  %18 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1527, !tbaa !1453
  %19 = and i32 %18, 12, !dbg !1527
  %20 = icmp eq i32 %19, 0, !dbg !1528
  br i1 %20, label %25, label %21, !dbg !1526

21:                                               ; preds = %17
  %22 = call i32 @HAL_GetTick() #23, !dbg !1529
  %23 = sub i32 %22, %16, !dbg !1532
  %24 = icmp ugt i32 %23, 5000, !dbg !1533
  br i1 %24, label %58, label %17, !dbg !1534, !llvm.loop !1535

25:                                               ; preds = %17
  store i32 8000000, i32* @SystemCoreClock, align 4, !dbg !1537, !tbaa !1496
  %26 = load i32, i32* @uwTickPrio, align 4, !dbg !1538, !tbaa !1496
  %27 = call i32 @HAL_InitTick(i32 noundef %26) #23, !dbg !1540
  %28 = icmp eq i32 %27, 0, !dbg !1541
  br i1 %28, label %29, label %58, !dbg !1542

29:                                               ; preds = %25
  %30 = call i32 @HAL_GetTick() #23, !dbg !1543
  call void @llvm.dbg.value(metadata i32 %30, metadata !1508, metadata !DIExpression()), !dbg !1510
  %31 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1544, !tbaa !1447
  %32 = and i32 %31, -16777217, !dbg !1544
  store volatile i32 %32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1544, !tbaa !1447
  br label %33, !dbg !1545

33:                                               ; preds = %37, %29
  %34 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1546, !tbaa !1447
  %35 = and i32 %34, 33554432, !dbg !1546
  %36 = icmp eq i32 %35, 0, !dbg !1547
  br i1 %36, label %41, label %37, !dbg !1545

37:                                               ; preds = %33
  %38 = call i32 @HAL_GetTick() #23, !dbg !1548
  %39 = sub i32 %38, %30, !dbg !1551
  %40 = icmp ugt i32 %39, 2, !dbg !1552
  br i1 %40, label %58, label %33, !dbg !1553, !llvm.loop !1554

41:                                               ; preds = %33
  store volatile i32 0, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1556, !tbaa !1453
  %42 = call i32 @HAL_GetTick() #23, !dbg !1557
  call void @llvm.dbg.value(metadata i32 %42, metadata !1508, metadata !DIExpression()), !dbg !1510
  %43 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1558, !tbaa !1447
  %44 = and i32 %43, -589825, !dbg !1558
  store volatile i32 %44, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1558, !tbaa !1447
  br label %45, !dbg !1559

45:                                               ; preds = %49, %41
  %46 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1560, !tbaa !1447
  %47 = and i32 %46, 131072, !dbg !1560
  %48 = icmp eq i32 %47, 0, !dbg !1561
  br i1 %48, label %53, label %49, !dbg !1559

49:                                               ; preds = %45
  %50 = call i32 @HAL_GetTick() #23, !dbg !1562
  %51 = sub i32 %50, %42, !dbg !1565
  %52 = icmp ugt i32 %51, 100, !dbg !1566
  br i1 %52, label %58, label %45, !dbg !1567, !llvm.loop !1568

53:                                               ; preds = %45
  %54 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1570, !tbaa !1447
  %55 = and i32 %54, -262145, !dbg !1570
  store volatile i32 %55, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1570, !tbaa !1447
  %56 = load volatile i32, i32* inttoptr (i32 1073877028 to i32*), align 4, !dbg !1571, !tbaa !1572
  %57 = or i32 %56, 16777216, !dbg !1571
  store volatile i32 %57, i32* inttoptr (i32 1073877028 to i32*), align 4, !dbg !1571, !tbaa !1572
  store volatile i32 0, i32* inttoptr (i32 1073877000 to i32*), align 8, !dbg !1573, !tbaa !1458
  br label %58, !dbg !1574

58:                                               ; preds = %8, %21, %37, %49, %25, %53
  %59 = phi i32 [ 0, %53 ], [ 1, %25 ], [ 3, %49 ], [ 3, %37 ], [ 3, %21 ], [ 3, %8 ], !dbg !1510
  ret i32 %59, !dbg !1575
}

; Function Attrs: noinline nounwind
define dso_local i32 @HAL_RCC_OscConfig(%struct.RCC_OscInitTypeDef* noundef readonly %0) local_unnamed_addr #3 !dbg !1576 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.RCC_OscInitTypeDef* %0, metadata !1598, metadata !DIExpression()), !dbg !1609
  %3 = icmp eq %struct.RCC_OscInitTypeDef* %0, null, !dbg !1610
  br i1 %3, label %298, label %4, !dbg !1612

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 0, !dbg !1613
  %6 = load i32, i32* %5, align 4, !dbg !1613, !tbaa !1615
  %7 = and i32 %6, 1, !dbg !1618
  %8 = icmp eq i32 %7, 0, !dbg !1619
  br i1 %8, label %70, label %9, !dbg !1620

9:                                                ; preds = %4
  %10 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1621, !tbaa !1453
  %11 = and i32 %10, 12, !dbg !1621
  %12 = icmp eq i32 %11, 4, !dbg !1624
  br i1 %12, label %21, label %13, !dbg !1625

13:                                               ; preds = %9
  %14 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1626, !tbaa !1453
  %15 = and i32 %14, 12, !dbg !1626
  %16 = icmp eq i32 %15, 8, !dbg !1627
  br i1 %16, label %17, label %29, !dbg !1628

17:                                               ; preds = %13
  %18 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1629, !tbaa !1453
  %19 = and i32 %18, 65536, !dbg !1629
  %20 = icmp eq i32 %19, 0, !dbg !1630
  br i1 %20, label %29, label %21, !dbg !1631

21:                                               ; preds = %17, %9
  %22 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1632, !tbaa !1447
  %23 = and i32 %22, 131072, !dbg !1632
  %24 = icmp eq i32 %23, 0, !dbg !1635
  br i1 %24, label %70, label %25, !dbg !1636

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 1, !dbg !1637
  %27 = load i32, i32* %26, align 4, !dbg !1637, !tbaa !1638
  %28 = icmp eq i32 %27, 0, !dbg !1639
  br i1 %28, label %298, label %70, !dbg !1640

29:                                               ; preds = %13, %17
  %30 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 1, !dbg !1641
  %31 = load i32, i32* %30, align 4, !dbg !1641, !tbaa !1638
  switch i32 %31, label %45 [
    i32 65536, label %32
    i32 0, label %35
    i32 327680, label %40
  ], !dbg !1645

32:                                               ; preds = %29
  %33 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1646, !tbaa !1447
  %34 = or i32 %33, 65536, !dbg !1646
  br label %50, !dbg !1646

35:                                               ; preds = %29
  %36 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1648, !tbaa !1447
  %37 = and i32 %36, -65537, !dbg !1648
  store volatile i32 %37, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1648, !tbaa !1447
  %38 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1648, !tbaa !1447
  %39 = and i32 %38, -262145, !dbg !1648
  br label %50, !dbg !1648

40:                                               ; preds = %29
  %41 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1651, !tbaa !1447
  %42 = or i32 %41, 262144, !dbg !1651
  store volatile i32 %42, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1651, !tbaa !1447
  %43 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1651, !tbaa !1447
  %44 = or i32 %43, 65536, !dbg !1651
  br label %50, !dbg !1651

45:                                               ; preds = %29
  %46 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1654, !tbaa !1447
  %47 = and i32 %46, -65537, !dbg !1654
  store volatile i32 %47, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1654, !tbaa !1447
  %48 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1654, !tbaa !1447
  %49 = and i32 %48, -262145, !dbg !1654
  br label %50

50:                                               ; preds = %35, %45, %40, %32
  %51 = phi i32 [ %39, %35 ], [ %49, %45 ], [ %44, %40 ], [ %34, %32 ]
  store volatile i32 %51, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1656, !tbaa !1447
  %52 = icmp eq i32 %31, 0, !dbg !1657
  %53 = call i32 @HAL_GetTick() #23, !dbg !1659
  call void @llvm.dbg.value(metadata i32 %53, metadata !1599, metadata !DIExpression()), !dbg !1609
  call void @llvm.dbg.value(metadata i32 %53, metadata !1599, metadata !DIExpression()), !dbg !1609
  br i1 %52, label %62, label %54, !dbg !1660

54:                                               ; preds = %50, %58
  %55 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1661, !tbaa !1447
  %56 = and i32 %55, 131072, !dbg !1661
  %57 = icmp eq i32 %56, 0, !dbg !1663
  br i1 %57, label %58, label %70, !dbg !1664

58:                                               ; preds = %54
  %59 = call i32 @HAL_GetTick() #23, !dbg !1665
  %60 = sub i32 %59, %53, !dbg !1668
  %61 = icmp ugt i32 %60, 100, !dbg !1669
  br i1 %61, label %298, label %54, !dbg !1670, !llvm.loop !1671

62:                                               ; preds = %50, %66
  %63 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1673, !tbaa !1447
  %64 = and i32 %63, 131072, !dbg !1673
  %65 = icmp eq i32 %64, 0, !dbg !1675
  br i1 %65, label %70, label %66, !dbg !1676

66:                                               ; preds = %62
  %67 = call i32 @HAL_GetTick() #23, !dbg !1677
  %68 = sub i32 %67, %53, !dbg !1680
  %69 = icmp ugt i32 %68, 100, !dbg !1681
  br i1 %69, label %298, label %62, !dbg !1682, !llvm.loop !1683

70:                                               ; preds = %54, %62, %25, %21, %4
  %71 = load i32, i32* %5, align 4, !dbg !1685, !tbaa !1615
  %72 = and i32 %71, 2, !dbg !1687
  %73 = icmp eq i32 %72, 0, !dbg !1688
  br i1 %73, label %125, label %74, !dbg !1689

74:                                               ; preds = %70
  %75 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1690, !tbaa !1453
  %76 = and i32 %75, 12, !dbg !1690
  %77 = icmp eq i32 %76, 0, !dbg !1693
  br i1 %77, label %86, label %78, !dbg !1694

78:                                               ; preds = %74
  %79 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1695, !tbaa !1453
  %80 = and i32 %79, 12, !dbg !1695
  %81 = icmp eq i32 %80, 8, !dbg !1696
  br i1 %81, label %82, label %94, !dbg !1697

82:                                               ; preds = %78
  %83 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1698, !tbaa !1453
  %84 = and i32 %83, 65536, !dbg !1698
  %85 = icmp eq i32 %84, 0, !dbg !1699
  br i1 %85, label %86, label %94, !dbg !1700

86:                                               ; preds = %82, %74
  %87 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1701, !tbaa !1447
  %88 = and i32 %87, 2, !dbg !1701
  %89 = icmp eq i32 %88, 0, !dbg !1704
  br i1 %89, label %118, label %90, !dbg !1705

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 4, !dbg !1706
  %92 = load i32, i32* %91, align 4, !dbg !1706, !tbaa !1707
  %93 = icmp eq i32 %92, 1, !dbg !1708
  br i1 %93, label %118, label %298, !dbg !1709

94:                                               ; preds = %82, %78
  %95 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 4, !dbg !1710
  %96 = load i32, i32* %95, align 4, !dbg !1710, !tbaa !1707
  %97 = icmp eq i32 %96, 0, !dbg !1713
  br i1 %97, label %108, label %98, !dbg !1714

98:                                               ; preds = %94
  store volatile i32 1, i32* inttoptr (i32 1111621632 to i32*), align 131072, !dbg !1715, !tbaa !1496
  %99 = call i32 @HAL_GetTick() #23, !dbg !1717
  call void @llvm.dbg.value(metadata i32 %99, metadata !1599, metadata !DIExpression()), !dbg !1609
  br label %100, !dbg !1718

100:                                              ; preds = %104, %98
  %101 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1719, !tbaa !1447
  %102 = and i32 %101, 2, !dbg !1719
  %103 = icmp eq i32 %102, 0, !dbg !1720
  br i1 %103, label %104, label %118, !dbg !1718

104:                                              ; preds = %100
  %105 = call i32 @HAL_GetTick() #23, !dbg !1721
  %106 = sub i32 %105, %99, !dbg !1724
  %107 = icmp ugt i32 %106, 2, !dbg !1725
  br i1 %107, label %298, label %100, !dbg !1726, !llvm.loop !1727

108:                                              ; preds = %94
  store volatile i32 0, i32* inttoptr (i32 1111621632 to i32*), align 131072, !dbg !1729, !tbaa !1496
  %109 = call i32 @HAL_GetTick() #23, !dbg !1731
  call void @llvm.dbg.value(metadata i32 %109, metadata !1599, metadata !DIExpression()), !dbg !1609
  br label %110, !dbg !1732

110:                                              ; preds = %114, %108
  %111 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1733, !tbaa !1447
  %112 = and i32 %111, 2, !dbg !1733
  %113 = icmp eq i32 %112, 0, !dbg !1734
  br i1 %113, label %125, label %114, !dbg !1732

114:                                              ; preds = %110
  %115 = call i32 @HAL_GetTick() #23, !dbg !1735
  %116 = sub i32 %115, %109, !dbg !1738
  %117 = icmp ugt i32 %116, 2, !dbg !1739
  br i1 %117, label %298, label %110, !dbg !1740, !llvm.loop !1741

118:                                              ; preds = %100, %86, %90
  %119 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1743, !tbaa !1447
  %120 = and i32 %119, -249, !dbg !1743
  %121 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 5, !dbg !1743
  %122 = load i32, i32* %121, align 4, !dbg !1743, !tbaa !1744
  %123 = shl i32 %122, 3, !dbg !1743
  %124 = or i32 %123, %120, !dbg !1743
  store volatile i32 %124, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1743, !tbaa !1447
  br label %125, !dbg !1745

125:                                              ; preds = %110, %118, %70
  %126 = load i32, i32* %5, align 4, !dbg !1745, !tbaa !1615
  %127 = and i32 %126, 8, !dbg !1747
  %128 = icmp eq i32 %127, 0, !dbg !1748
  br i1 %128, label %154, label %129, !dbg !1749

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 6, !dbg !1750
  %131 = load i32, i32* %130, align 4, !dbg !1750, !tbaa !1753
  %132 = icmp eq i32 %131, 0, !dbg !1754
  br i1 %132, label %144, label %133, !dbg !1755

133:                                              ; preds = %129
  store volatile i32 1, i32* inttoptr (i32 1111622784 to i32*), align 128, !dbg !1756, !tbaa !1496
  %134 = call i32 @HAL_GetTick() #23, !dbg !1758
  call void @llvm.dbg.value(metadata i32 %134, metadata !1599, metadata !DIExpression()), !dbg !1609
  br label %135, !dbg !1759

135:                                              ; preds = %139, %133
  %136 = load volatile i32, i32* inttoptr (i32 1073877028 to i32*), align 4, !dbg !1760, !tbaa !1572
  %137 = and i32 %136, 2, !dbg !1760
  %138 = icmp eq i32 %137, 0, !dbg !1761
  br i1 %138, label %139, label %143, !dbg !1759

139:                                              ; preds = %135
  %140 = call i32 @HAL_GetTick() #23, !dbg !1762
  %141 = sub i32 %140, %134, !dbg !1765
  %142 = icmp ugt i32 %141, 2, !dbg !1766
  br i1 %142, label %298, label %135, !dbg !1767, !llvm.loop !1768

143:                                              ; preds = %135
  call fastcc void @RCC_Delay(), !dbg !1770
  br label %154, !dbg !1771

144:                                              ; preds = %129
  store volatile i32 0, i32* inttoptr (i32 1111622784 to i32*), align 128, !dbg !1772, !tbaa !1496
  %145 = call i32 @HAL_GetTick() #23, !dbg !1774
  call void @llvm.dbg.value(metadata i32 %145, metadata !1599, metadata !DIExpression()), !dbg !1609
  br label %146, !dbg !1775

146:                                              ; preds = %150, %144
  %147 = load volatile i32, i32* inttoptr (i32 1073877028 to i32*), align 4, !dbg !1776, !tbaa !1572
  %148 = and i32 %147, 2, !dbg !1776
  %149 = icmp eq i32 %148, 0, !dbg !1777
  br i1 %149, label %154, label %150, !dbg !1775

150:                                              ; preds = %146
  %151 = call i32 @HAL_GetTick() #23, !dbg !1778
  %152 = sub i32 %151, %145, !dbg !1781
  %153 = icmp ugt i32 %152, 2, !dbg !1782
  br i1 %153, label %298, label %146, !dbg !1783, !llvm.loop !1784

154:                                              ; preds = %146, %143, %125
  %155 = load i32, i32* %5, align 4, !dbg !1786, !tbaa !1615
  %156 = and i32 %155, 4, !dbg !1787
  %157 = icmp eq i32 %156, 0, !dbg !1788
  br i1 %157, label %231, label %158, !dbg !1789

158:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i32 0, metadata !1601, metadata !DIExpression()), !dbg !1790
  %159 = load volatile i32, i32* inttoptr (i32 1073877020 to i32*), align 4, !dbg !1791, !tbaa !1792
  %160 = and i32 %159, 268435456, !dbg !1791
  %161 = icmp eq i32 %160, 0, !dbg !1791
  br i1 %161, label %162, label %170, !dbg !1793

162:                                              ; preds = %158
  %163 = bitcast i32* %2 to i8*, !dbg !1794
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %163), !dbg !1794
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1605, metadata !DIExpression()), !dbg !1794
  %164 = load volatile i32, i32* inttoptr (i32 1073877020 to i32*), align 4, !dbg !1794, !tbaa !1792
  %165 = or i32 %164, 268435456, !dbg !1794
  store volatile i32 %165, i32* inttoptr (i32 1073877020 to i32*), align 4, !dbg !1794, !tbaa !1792
  %166 = load volatile i32, i32* inttoptr (i32 1073877020 to i32*), align 4, !dbg !1794, !tbaa !1792
  %167 = and i32 %166, 268435456, !dbg !1794
  store volatile i32 %167, i32* %2, align 4, !dbg !1794, !tbaa !1496
  %168 = load volatile i32, i32* %2, align 4, !dbg !1794, !tbaa !1496
  %169 = bitcast i32* %2 to i8*, !dbg !1795
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %169), !dbg !1795
  call void @llvm.dbg.value(metadata i32 1, metadata !1601, metadata !DIExpression()), !dbg !1790
  br label %170, !dbg !1796

170:                                              ; preds = %162, %158
  call void @llvm.dbg.value(metadata i32 undef, metadata !1601, metadata !DIExpression()), !dbg !1790
  %171 = load volatile i32, i32* inttoptr (i32 1073770496 to i32*), align 4096, !dbg !1797, !tbaa !1799
  %172 = and i32 %171, 256, !dbg !1797
  %173 = icmp eq i32 %172, 0, !dbg !1797
  br i1 %173, label %174, label %186, !dbg !1801

174:                                              ; preds = %170
  %175 = load volatile i32, i32* inttoptr (i32 1073770496 to i32*), align 4096, !dbg !1802, !tbaa !1799
  %176 = or i32 %175, 256, !dbg !1802
  store volatile i32 %176, i32* inttoptr (i32 1073770496 to i32*), align 4096, !dbg !1802, !tbaa !1799
  %177 = call i32 @HAL_GetTick() #23, !dbg !1804
  call void @llvm.dbg.value(metadata i32 %177, metadata !1599, metadata !DIExpression()), !dbg !1609
  br label %178, !dbg !1805

178:                                              ; preds = %182, %174
  %179 = load volatile i32, i32* inttoptr (i32 1073770496 to i32*), align 4096, !dbg !1806, !tbaa !1799
  %180 = and i32 %179, 256, !dbg !1806
  %181 = icmp eq i32 %180, 0, !dbg !1806
  br i1 %181, label %182, label %186, !dbg !1805

182:                                              ; preds = %178
  %183 = call i32 @HAL_GetTick() #23, !dbg !1807
  %184 = sub i32 %183, %177, !dbg !1810
  %185 = icmp ugt i32 %184, 100, !dbg !1811
  br i1 %185, label %298, label %178, !dbg !1812, !llvm.loop !1813

186:                                              ; preds = %178, %170
  %187 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 3, !dbg !1815
  %188 = load i32, i32* %187, align 4, !dbg !1815, !tbaa !1818
  switch i32 %188, label %202 [
    i32 1, label %189
    i32 0, label %192
    i32 5, label %197
  ], !dbg !1819

189:                                              ; preds = %186
  %190 = load volatile i32, i32* inttoptr (i32 1073877024 to i32*), align 32, !dbg !1820, !tbaa !1822
  %191 = or i32 %190, 1, !dbg !1820
  br label %207, !dbg !1820

192:                                              ; preds = %186
  %193 = load volatile i32, i32* inttoptr (i32 1073877024 to i32*), align 32, !dbg !1823, !tbaa !1822
  %194 = and i32 %193, -2, !dbg !1823
  store volatile i32 %194, i32* inttoptr (i32 1073877024 to i32*), align 32, !dbg !1823, !tbaa !1822
  %195 = load volatile i32, i32* inttoptr (i32 1073877024 to i32*), align 32, !dbg !1823, !tbaa !1822
  %196 = and i32 %195, -5, !dbg !1823
  br label %207, !dbg !1823

197:                                              ; preds = %186
  %198 = load volatile i32, i32* inttoptr (i32 1073877024 to i32*), align 32, !dbg !1826, !tbaa !1822
  %199 = or i32 %198, 4, !dbg !1826
  store volatile i32 %199, i32* inttoptr (i32 1073877024 to i32*), align 32, !dbg !1826, !tbaa !1822
  %200 = load volatile i32, i32* inttoptr (i32 1073877024 to i32*), align 32, !dbg !1826, !tbaa !1822
  %201 = or i32 %200, 1, !dbg !1826
  br label %207, !dbg !1826

202:                                              ; preds = %186
  %203 = load volatile i32, i32* inttoptr (i32 1073877024 to i32*), align 32, !dbg !1829, !tbaa !1822
  %204 = and i32 %203, -2, !dbg !1829
  store volatile i32 %204, i32* inttoptr (i32 1073877024 to i32*), align 32, !dbg !1829, !tbaa !1822
  %205 = load volatile i32, i32* inttoptr (i32 1073877024 to i32*), align 32, !dbg !1829, !tbaa !1822
  %206 = and i32 %205, -5, !dbg !1829
  br label %207

207:                                              ; preds = %192, %202, %197, %189
  %208 = phi i32 [ %196, %192 ], [ %206, %202 ], [ %201, %197 ], [ %191, %189 ]
  store volatile i32 %208, i32* inttoptr (i32 1073877024 to i32*), align 32, !dbg !1831, !tbaa !1822
  %209 = icmp eq i32 %188, 0, !dbg !1832
  %210 = call i32 @HAL_GetTick() #23, !dbg !1834
  call void @llvm.dbg.value(metadata i32 %210, metadata !1599, metadata !DIExpression()), !dbg !1609
  call void @llvm.dbg.value(metadata i32 %210, metadata !1599, metadata !DIExpression()), !dbg !1609
  br i1 %209, label %219, label %211, !dbg !1835

211:                                              ; preds = %207, %215
  %212 = load volatile i32, i32* inttoptr (i32 1073877024 to i32*), align 32, !dbg !1836, !tbaa !1822
  %213 = and i32 %212, 2, !dbg !1836
  %214 = icmp eq i32 %213, 0, !dbg !1838
  br i1 %214, label %215, label %227, !dbg !1839

215:                                              ; preds = %211
  %216 = call i32 @HAL_GetTick() #23, !dbg !1840
  %217 = sub i32 %216, %210, !dbg !1843
  %218 = icmp ugt i32 %217, 5000, !dbg !1844
  br i1 %218, label %298, label %211, !dbg !1845, !llvm.loop !1846

219:                                              ; preds = %207, %223
  %220 = load volatile i32, i32* inttoptr (i32 1073877024 to i32*), align 32, !dbg !1848, !tbaa !1822
  %221 = and i32 %220, 2, !dbg !1848
  %222 = icmp eq i32 %221, 0, !dbg !1850
  br i1 %222, label %227, label %223, !dbg !1851

223:                                              ; preds = %219
  %224 = call i32 @HAL_GetTick() #23, !dbg !1852
  %225 = sub i32 %224, %210, !dbg !1855
  %226 = icmp ugt i32 %225, 5000, !dbg !1856
  br i1 %226, label %298, label %219, !dbg !1857, !llvm.loop !1858

227:                                              ; preds = %211, %219
  br i1 %161, label %228, label %231, !dbg !1860

228:                                              ; preds = %227
  %229 = load volatile i32, i32* inttoptr (i32 1073877020 to i32*), align 4, !dbg !1861, !tbaa !1792
  %230 = and i32 %229, -268435457, !dbg !1861
  store volatile i32 %230, i32* inttoptr (i32 1073877020 to i32*), align 4, !dbg !1861, !tbaa !1792
  br label %231, !dbg !1864

231:                                              ; preds = %228, %227, %154
  %232 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 7, i32 0, !dbg !1865
  %233 = load i32, i32* %232, align 4, !dbg !1865, !tbaa !1867
  %234 = icmp eq i32 %233, 0, !dbg !1868
  br i1 %234, label %297, label %235, !dbg !1869

235:                                              ; preds = %231
  %236 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1870, !tbaa !1453
  %237 = and i32 %236, 12, !dbg !1870
  %238 = icmp eq i32 %237, 8, !dbg !1873
  br i1 %238, label %284, label %239, !dbg !1874

239:                                              ; preds = %235
  %240 = icmp eq i32 %233, 2, !dbg !1875
  store volatile i32 0, i32* inttoptr (i32 1111621728 to i32*), align 32, !dbg !1878, !tbaa !1496
  %241 = call i32 @HAL_GetTick() #23, !dbg !1878
  call void @llvm.dbg.value(metadata i32 %241, metadata !1599, metadata !DIExpression()), !dbg !1609
  call void @llvm.dbg.value(metadata i32 %241, metadata !1599, metadata !DIExpression()), !dbg !1609
  br i1 %240, label %242, label %276, !dbg !1879

242:                                              ; preds = %239, %246
  %243 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1880, !tbaa !1447
  %244 = and i32 %243, 33554432, !dbg !1880
  %245 = icmp eq i32 %244, 0, !dbg !1882
  br i1 %245, label %250, label %246, !dbg !1883

246:                                              ; preds = %242
  %247 = call i32 @HAL_GetTick() #23, !dbg !1884
  %248 = sub i32 %247, %241, !dbg !1887
  %249 = icmp ugt i32 %248, 2, !dbg !1888
  br i1 %249, label %298, label %242, !dbg !1889, !llvm.loop !1890

250:                                              ; preds = %242
  %251 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 7, i32 1, !dbg !1892
  %252 = load i32, i32* %251, align 4, !dbg !1892, !tbaa !1894
  %253 = icmp eq i32 %252, 65536, !dbg !1895
  br i1 %253, label %254, label %260, !dbg !1896

254:                                              ; preds = %250
  %255 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1897, !tbaa !1453
  %256 = and i32 %255, -131073, !dbg !1897
  %257 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 2, !dbg !1897
  %258 = load i32, i32* %257, align 4, !dbg !1897, !tbaa !1899
  %259 = or i32 %256, %258, !dbg !1897
  store volatile i32 %259, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1897, !tbaa !1453
  br label %260, !dbg !1900

260:                                              ; preds = %254, %250
  %261 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1901, !tbaa !1453
  %262 = and i32 %261, -3997697, !dbg !1901
  %263 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 7, i32 2, !dbg !1901
  %264 = load i32, i32* %263, align 4, !dbg !1901, !tbaa !1902
  %265 = or i32 %264, %252, !dbg !1901
  %266 = or i32 %265, %262, !dbg !1901
  store volatile i32 %266, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1901, !tbaa !1453
  store volatile i32 1, i32* inttoptr (i32 1111621728 to i32*), align 32, !dbg !1903, !tbaa !1496
  %267 = call i32 @HAL_GetTick() #23, !dbg !1904
  call void @llvm.dbg.value(metadata i32 %267, metadata !1599, metadata !DIExpression()), !dbg !1609
  br label %268, !dbg !1905

268:                                              ; preds = %272, %260
  %269 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1906, !tbaa !1447
  %270 = and i32 %269, 33554432, !dbg !1906
  %271 = icmp eq i32 %270, 0, !dbg !1907
  br i1 %271, label %272, label %297, !dbg !1905

272:                                              ; preds = %268
  %273 = call i32 @HAL_GetTick() #23, !dbg !1908
  %274 = sub i32 %273, %267, !dbg !1911
  %275 = icmp ugt i32 %274, 2, !dbg !1912
  br i1 %275, label %298, label %268, !dbg !1913, !llvm.loop !1914

276:                                              ; preds = %239, %280
  %277 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !1916, !tbaa !1447
  %278 = and i32 %277, 33554432, !dbg !1916
  %279 = icmp eq i32 %278, 0, !dbg !1918
  br i1 %279, label %297, label %280, !dbg !1919

280:                                              ; preds = %276
  %281 = call i32 @HAL_GetTick() #23, !dbg !1920
  %282 = sub i32 %281, %241, !dbg !1923
  %283 = icmp ugt i32 %282, 2, !dbg !1924
  br i1 %283, label %298, label %276, !dbg !1925, !llvm.loop !1926

284:                                              ; preds = %235
  %285 = icmp eq i32 %233, 1, !dbg !1928
  br i1 %285, label %298, label %286, !dbg !1931

286:                                              ; preds = %284
  %287 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !1932, !tbaa !1453
  call void @llvm.dbg.value(metadata i32 %287, metadata !1600, metadata !DIExpression()), !dbg !1609
  %288 = and i32 %287, 65536, !dbg !1934
  %289 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 7, i32 1, !dbg !1936
  %290 = load i32, i32* %289, align 4, !dbg !1936, !tbaa !1894
  %291 = icmp eq i32 %288, %290, !dbg !1937
  br i1 %291, label %292, label %298, !dbg !1938

292:                                              ; preds = %286
  %293 = and i32 %287, 3932160, !dbg !1939
  %294 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 7, i32 2, !dbg !1940
  %295 = load i32, i32* %294, align 4, !dbg !1940, !tbaa !1902
  %296 = icmp eq i32 %293, %295, !dbg !1941
  br i1 %296, label %297, label %298, !dbg !1942

297:                                              ; preds = %276, %268, %292, %231
  br label %298, !dbg !1943

298:                                              ; preds = %58, %66, %104, %114, %139, %150, %182, %215, %223, %280, %246, %272, %286, %292, %284, %90, %25, %1, %297
  %299 = phi i32 [ 0, %297 ], [ 1, %1 ], [ 1, %25 ], [ 1, %90 ], [ 1, %284 ], [ 1, %292 ], [ 1, %286 ], [ 3, %272 ], [ 3, %246 ], [ 3, %280 ], [ 3, %223 ], [ 3, %215 ], [ 3, %182 ], [ 3, %150 ], [ 3, %139 ], [ 3, %114 ], [ 3, %104 ], [ 3, %66 ], [ 3, %58 ], !dbg !1609
  ret i32 %299, !dbg !1944
}

; Function Attrs: noinline nounwind
define internal fastcc void @RCC_Delay() unnamed_addr #3 !dbg !1945 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 1, metadata !1949, metadata !DIExpression()), !dbg !1951
  %2 = bitcast i32* %1 to i8*, !dbg !1952
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !1952
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1950, metadata !DIExpression()), !dbg !1953
  %3 = load i32, i32* @SystemCoreClock, align 4, !dbg !1954, !tbaa !1496
  %4 = udiv i32 %3, 8000, !dbg !1955
  store volatile i32 %4, i32* %1, align 4, !dbg !1953, !tbaa !1496
  br label %5, !dbg !1956

5:                                                ; preds = %5, %0
  call void asm sideeffect "nop", ""() #23, !dbg !1957, !srcloc !1959
  %6 = load volatile i32, i32* %1, align 4, !dbg !1960, !tbaa !1496
  %7 = add i32 %6, -1, !dbg !1960
  store volatile i32 %7, i32* %1, align 4, !dbg !1960, !tbaa !1496
  %8 = icmp eq i32 %6, 0, !dbg !1961
  br i1 %8, label %9, label %5, !dbg !1961, !llvm.loop !1962

9:                                                ; preds = %5
  %10 = bitcast i32* %1 to i8*, !dbg !1964
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10), !dbg !1964
  ret void, !dbg !1964
}

; Function Attrs: noinline nounwind
define dso_local i32 @HAL_RCC_ClockConfig(%struct.RCC_ClkInitTypeDef* noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 !dbg !1965 {
  call void @llvm.dbg.value(metadata %struct.RCC_ClkInitTypeDef* %0, metadata !1978, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.value(metadata i32 %1, metadata !1979, metadata !DIExpression()), !dbg !1981
  %3 = icmp eq %struct.RCC_ClkInitTypeDef* %0, null, !dbg !1982
  br i1 %3, label %113, label %4, !dbg !1984

4:                                                ; preds = %2
  %5 = load volatile i32, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !1985, !tbaa !1987
  %6 = and i32 %5, 7, !dbg !1985
  %7 = icmp ult i32 %6, %1, !dbg !1989
  br i1 %7, label %8, label %15, !dbg !1990

8:                                                ; preds = %4
  %9 = load volatile i32, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !1991, !tbaa !1987
  %10 = and i32 %9, -8, !dbg !1991
  %11 = or i32 %10, %1, !dbg !1991
  store volatile i32 %11, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !1991, !tbaa !1987
  %12 = load volatile i32, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !1993, !tbaa !1987
  %13 = and i32 %12, 7, !dbg !1993
  %14 = icmp eq i32 %13, %1, !dbg !1995
  br i1 %14, label %15, label %113, !dbg !1996

15:                                               ; preds = %8, %4
  %16 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %0, i32 0, i32 0, !dbg !1997
  %17 = load i32, i32* %16, align 4, !dbg !1997, !tbaa !1999
  %18 = and i32 %17, 2, !dbg !2001
  %19 = icmp eq i32 %18, 0, !dbg !2002
  br i1 %19, label %38, label %20, !dbg !2003

20:                                               ; preds = %15
  %21 = and i32 %17, 4, !dbg !2004
  %22 = icmp eq i32 %21, 0, !dbg !2007
  br i1 %22, label %26, label %23, !dbg !2008

23:                                               ; preds = %20
  %24 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !2009, !tbaa !1453
  %25 = or i32 %24, 1792, !dbg !2009
  store volatile i32 %25, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !2009, !tbaa !1453
  br label %26, !dbg !2011

26:                                               ; preds = %23, %20
  %27 = and i32 %17, 8, !dbg !2012
  %28 = icmp eq i32 %27, 0, !dbg !2014
  br i1 %28, label %32, label %29, !dbg !2015

29:                                               ; preds = %26
  %30 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !2016, !tbaa !1453
  %31 = or i32 %30, 14336, !dbg !2016
  store volatile i32 %31, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !2016, !tbaa !1453
  br label %32, !dbg !2018

32:                                               ; preds = %29, %26
  %33 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !2019, !tbaa !1453
  %34 = and i32 %33, -241, !dbg !2019
  %35 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %0, i32 0, i32 2, !dbg !2019
  %36 = load i32, i32* %35, align 4, !dbg !2019, !tbaa !2020
  %37 = or i32 %34, %36, !dbg !2019
  store volatile i32 %37, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !2019, !tbaa !1453
  br label %38, !dbg !2021

38:                                               ; preds = %32, %15
  %39 = and i32 %17, 1, !dbg !2022
  %40 = icmp eq i32 %39, 0, !dbg !2024
  br i1 %40, label %71, label %41, !dbg !2025

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %0, i32 0, i32 1, !dbg !2026
  %43 = load i32, i32* %42, align 4, !dbg !2026, !tbaa !2029
  switch i32 %43, label %52 [
    i32 1, label %44
    i32 2, label %48
  ], !dbg !2030

44:                                               ; preds = %41
  %45 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !2031, !tbaa !1447
  %46 = and i32 %45, 131072, !dbg !2031
  %47 = icmp eq i32 %46, 0, !dbg !2034
  br i1 %47, label %113, label %56, !dbg !2035

48:                                               ; preds = %41
  %49 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !2036, !tbaa !1447
  %50 = and i32 %49, 33554432, !dbg !2036
  %51 = icmp eq i32 %50, 0, !dbg !2040
  br i1 %51, label %113, label %56, !dbg !2041

52:                                               ; preds = %41
  %53 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !2042, !tbaa !1447
  %54 = and i32 %53, 2, !dbg !2042
  %55 = icmp eq i32 %54, 0, !dbg !2045
  br i1 %55, label %113, label %56, !dbg !2046

56:                                               ; preds = %48, %52, %44
  %57 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !2047, !tbaa !1453
  %58 = and i32 %57, -4, !dbg !2047
  %59 = or i32 %58, %43, !dbg !2047
  store volatile i32 %59, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !2047, !tbaa !1453
  %60 = call i32 @HAL_GetTick() #23, !dbg !2048
  call void @llvm.dbg.value(metadata i32 %60, metadata !1980, metadata !DIExpression()), !dbg !1981
  br label %61, !dbg !2049

61:                                               ; preds = %67, %56
  %62 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !2050, !tbaa !1453
  %63 = and i32 %62, 12, !dbg !2050
  %64 = load i32, i32* %42, align 4, !dbg !2051, !tbaa !2029
  %65 = shl i32 %64, 2, !dbg !2052
  %66 = icmp eq i32 %63, %65, !dbg !2053
  br i1 %66, label %71, label %67, !dbg !2049

67:                                               ; preds = %61
  %68 = call i32 @HAL_GetTick() #23, !dbg !2054
  %69 = sub i32 %68, %60, !dbg !2057
  %70 = icmp ugt i32 %69, 5000, !dbg !2058
  br i1 %70, label %113, label %61, !dbg !2059, !llvm.loop !2060

71:                                               ; preds = %61, %38
  %72 = load volatile i32, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !2062, !tbaa !1987
  %73 = and i32 %72, 7, !dbg !2062
  %74 = icmp ugt i32 %73, %1, !dbg !2064
  br i1 %74, label %75, label %82, !dbg !2065

75:                                               ; preds = %71
  %76 = load volatile i32, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !2066, !tbaa !1987
  %77 = and i32 %76, -8, !dbg !2066
  %78 = or i32 %77, %1, !dbg !2066
  store volatile i32 %78, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !2066, !tbaa !1987
  %79 = load volatile i32, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !2068, !tbaa !1987
  %80 = and i32 %79, 7, !dbg !2068
  %81 = icmp eq i32 %80, %1, !dbg !2070
  br i1 %81, label %82, label %113, !dbg !2071

82:                                               ; preds = %75, %71
  %83 = load i32, i32* %16, align 4, !dbg !2072, !tbaa !1999
  %84 = and i32 %83, 4, !dbg !2074
  %85 = icmp eq i32 %84, 0, !dbg !2075
  br i1 %85, label %92, label %86, !dbg !2076

86:                                               ; preds = %82
  %87 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !2077, !tbaa !1453
  %88 = and i32 %87, -1793, !dbg !2077
  %89 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %0, i32 0, i32 3, !dbg !2077
  %90 = load i32, i32* %89, align 4, !dbg !2077, !tbaa !2079
  %91 = or i32 %88, %90, !dbg !2077
  store volatile i32 %91, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !2077, !tbaa !1453
  br label %92, !dbg !2080

92:                                               ; preds = %86, %82
  %93 = and i32 %83, 8, !dbg !2081
  %94 = icmp eq i32 %93, 0, !dbg !2083
  br i1 %94, label %102, label %95, !dbg !2084

95:                                               ; preds = %92
  %96 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !2085, !tbaa !1453
  %97 = and i32 %96, -14337, !dbg !2085
  %98 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %0, i32 0, i32 4, !dbg !2085
  %99 = load i32, i32* %98, align 4, !dbg !2085, !tbaa !2087
  %100 = shl i32 %99, 3, !dbg !2085
  %101 = or i32 %100, %97, !dbg !2085
  store volatile i32 %101, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !2085, !tbaa !1453
  br label %102, !dbg !2088

102:                                              ; preds = %95, %92
  %103 = call i32 @HAL_RCC_GetSysClockFreq(), !dbg !2089
  %104 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !2090, !tbaa !1453
  %105 = lshr i32 %104, 4, !dbg !2091
  %106 = and i32 %105, 15, !dbg !2091
  %107 = getelementptr inbounds [16 x i8], [16 x i8]* @AHBPrescTable, i32 0, i32 %106, !dbg !2092
  %108 = load i8, i8* %107, align 1, !dbg !2092, !tbaa !1500
  %109 = zext i8 %108 to i32, !dbg !2092
  %110 = lshr i32 %103, %109, !dbg !2093
  store i32 %110, i32* @SystemCoreClock, align 4, !dbg !2094, !tbaa !1496
  %111 = load i32, i32* @uwTickPrio, align 4, !dbg !2095, !tbaa !1496
  %112 = call i32 @HAL_InitTick(i32 noundef %111) #23, !dbg !2096
  br label %113, !dbg !2097

113:                                              ; preds = %67, %75, %52, %48, %44, %8, %2, %102
  %114 = phi i32 [ 0, %102 ], [ 1, %2 ], [ 1, %8 ], [ 1, %44 ], [ 1, %48 ], [ 1, %52 ], [ 1, %75 ], [ 3, %67 ], !dbg !1981
  ret i32 %114, !dbg !2098
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local i32 @HAL_RCC_GetSysClockFreq() local_unnamed_addr #10 !dbg !2099 {
  call void @llvm.dbg.declare(metadata [16 x i8]* @__const.HAL_RCC_GetSysClockFreq.aPLLMULFactorTable, metadata !2101, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.declare(metadata [2 x i8]* @__const.HAL_RCC_GetSysClockFreq.aPredivFactorTable, metadata !2102, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.value(metadata i32 0, metadata !2104, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i32 0, metadata !2105, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i32 0, metadata !2106, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i32 0, metadata !2107, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i32 0, metadata !2108, metadata !DIExpression()), !dbg !2111
  %1 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !2112, !tbaa !1453
  call void @llvm.dbg.value(metadata i32 %1, metadata !2104, metadata !DIExpression()), !dbg !2111
  %2 = and i32 %1, 12, !dbg !2113
  %3 = icmp eq i32 %2, 8, !dbg !2114
  br i1 %3, label %4, label %23, !dbg !2114

4:                                                ; preds = %0
  %5 = lshr i32 %1, 18, !dbg !2115
  %6 = and i32 %5, 15, !dbg !2115
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* @__const.HAL_RCC_GetSysClockFreq.aPLLMULFactorTable, i32 0, i32 %6, !dbg !2118
  %8 = load i8, i8* %7, align 1, !dbg !2118, !tbaa !1500
  %9 = zext i8 %8 to i32, !dbg !2118
  call void @llvm.dbg.value(metadata i32 %9, metadata !2107, metadata !DIExpression()), !dbg !2111
  %10 = and i32 %1, 65536, !dbg !2119
  %11 = icmp eq i32 %10, 0, !dbg !2121
  br i1 %11, label %21, label %12, !dbg !2122

12:                                               ; preds = %4
  %13 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !2123, !tbaa !1453
  %14 = lshr i32 %13, 17, !dbg !2125
  %15 = and i32 %14, 1, !dbg !2125
  %16 = getelementptr inbounds [2 x i8], [2 x i8]* @__const.HAL_RCC_GetSysClockFreq.aPredivFactorTable, i32 0, i32 %15, !dbg !2126
  %17 = load i8, i8* %16, align 1, !dbg !2126, !tbaa !1500
  %18 = zext i8 %17 to i32, !dbg !2126
  call void @llvm.dbg.value(metadata i32 %18, metadata !2105, metadata !DIExpression()), !dbg !2111
  %19 = mul nuw nsw i32 %9, 8000000, !dbg !2127
  %20 = udiv i32 %19, %18, !dbg !2128
  call void @llvm.dbg.value(metadata i32 %20, metadata !2106, metadata !DIExpression()), !dbg !2111
  br label %23, !dbg !2129

21:                                               ; preds = %4
  %22 = mul nuw nsw i32 %9, 4000000, !dbg !2130
  call void @llvm.dbg.value(metadata i32 %22, metadata !2106, metadata !DIExpression()), !dbg !2111
  br label %23

23:                                               ; preds = %0, %12, %21
  %24 = phi i32 [ %20, %12 ], [ %22, %21 ], [ 8000000, %0 ], !dbg !2132
  call void @llvm.dbg.value(metadata i32 %24, metadata !2108, metadata !DIExpression()), !dbg !2111
  ret i32 %24, !dbg !2133
}

; Function Attrs: noinline nounwind
define dso_local void @HAL_RCC_MCOConfig(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !2134 {
  %4 = alloca %struct.DMA_Channel_TypeDef, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !2138, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.value(metadata i32 %1, metadata !2139, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.value(metadata i32 %2, metadata !2140, metadata !DIExpression()), !dbg !2151
  %6 = bitcast %struct.DMA_Channel_TypeDef* %4 to i8*, !dbg !2152
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #23, !dbg !2152
  call void @llvm.dbg.declare(metadata %struct.DMA_Channel_TypeDef* %4, metadata !2141, metadata !DIExpression()), !dbg !2153
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false), !dbg !2153
  %7 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %4, i32 0, i32 1, !dbg !2154
  store i32 2, i32* %7, align 4, !dbg !2155, !tbaa !2156
  %8 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %4, i32 0, i32 3, !dbg !2158
  store i32 3, i32* %8, align 4, !dbg !2159, !tbaa !2160
  %9 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %4, i32 0, i32 2, !dbg !2161
  store i32 0, i32* %9, align 4, !dbg !2162, !tbaa !2163
  %10 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %4, i32 0, i32 0, !dbg !2164
  store i32 256, i32* %10, align 4, !dbg !2165, !tbaa !2166
  %11 = bitcast i32* %5 to i8*, !dbg !2167
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11), !dbg !2167
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2149, metadata !DIExpression()), !dbg !2167
  %12 = load volatile i32, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !2167, !tbaa !2168
  %13 = or i32 %12, 4, !dbg !2167
  store volatile i32 %13, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !2167, !tbaa !2168
  %14 = load volatile i32, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !2167, !tbaa !2168
  %15 = and i32 %14, 4, !dbg !2167
  store volatile i32 %15, i32* %5, align 4, !dbg !2167, !tbaa !1496
  %16 = load volatile i32, i32* %5, align 4, !dbg !2167, !tbaa !1496
  %17 = bitcast i32* %5 to i8*, !dbg !2169
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17), !dbg !2169
  call void @HAL_GPIO_Init(%struct.USART_TypeDef* noundef nonnull inttoptr (i32 1073809408 to %struct.USART_TypeDef*), %struct.DMA_Channel_TypeDef* noundef nonnull %4) #23, !dbg !2170
  %18 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !2171, !tbaa !1453
  %19 = and i32 %18, -117440513, !dbg !2171
  %20 = or i32 %19, %1, !dbg !2171
  store volatile i32 %20, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !2171, !tbaa !1453
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #23, !dbg !2172
  ret void, !dbg !2172
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @HAL_RCC_EnableCSS() local_unnamed_addr #9 !dbg !2173 {
  store volatile i32 1, i32* inttoptr (i32 1111621708 to i32*), align 4, !dbg !2174, !tbaa !1496
  ret void, !dbg !2175
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @HAL_RCC_DisableCSS() local_unnamed_addr #9 !dbg !2176 {
  store volatile i32 0, i32* inttoptr (i32 1111621708 to i32*), align 4, !dbg !2177, !tbaa !1496
  ret void, !dbg !2178
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define dso_local i32 @HAL_RCC_GetHCLKFreq() local_unnamed_addr #11 !dbg !2179 {
  %1 = load i32, i32* @SystemCoreClock, align 4, !dbg !2180, !tbaa !1496
  ret i32 %1, !dbg !2181
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local i32 @HAL_RCC_GetPCLK1Freq() local_unnamed_addr #10 !dbg !2182 {
  %1 = call i32 @HAL_RCC_GetHCLKFreq(), !dbg !2183
  %2 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !2184, !tbaa !1453
  %3 = lshr i32 %2, 8, !dbg !2185
  %4 = and i32 %3, 7, !dbg !2185
  %5 = getelementptr inbounds [8 x i8], [8 x i8]* @APBPrescTable, i32 0, i32 %4, !dbg !2186
  %6 = load i8, i8* %5, align 1, !dbg !2186, !tbaa !1500
  %7 = zext i8 %6 to i32, !dbg !2186
  %8 = lshr i32 %1, %7, !dbg !2187
  ret i32 %8, !dbg !2188
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local i32 @HAL_RCC_GetPCLK2Freq() local_unnamed_addr #10 !dbg !2189 {
  %1 = call i32 @HAL_RCC_GetHCLKFreq(), !dbg !2190
  %2 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !2191, !tbaa !1453
  %3 = lshr i32 %2, 11, !dbg !2192
  %4 = and i32 %3, 7, !dbg !2192
  %5 = getelementptr inbounds [8 x i8], [8 x i8]* @APBPrescTable, i32 0, i32 %4, !dbg !2193
  %6 = load i8, i8* %5, align 1, !dbg !2193, !tbaa !1500
  %7 = zext i8 %6 to i32, !dbg !2193
  %8 = lshr i32 %1, %7, !dbg !2194
  ret i32 %8, !dbg !2195
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local void @HAL_RCC_GetOscConfig(%struct.RCC_OscInitTypeDef* nocapture noundef writeonly %0) local_unnamed_addr #10 !dbg !2196 {
  call void @llvm.dbg.value(metadata %struct.RCC_OscInitTypeDef* %0, metadata !2200, metadata !DIExpression()), !dbg !2201
  %2 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 0, !dbg !2202
  store i32 15, i32* %2, align 4, !dbg !2203, !tbaa !1615
  %3 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !2204, !tbaa !1447
  %4 = and i32 %3, 262144, !dbg !2206
  %5 = icmp eq i32 %4, 0, !dbg !2207
  br i1 %5, label %8, label %6, !dbg !2208

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 1, !dbg !2209
  store i32 327680, i32* %7, align 4, !dbg !2211, !tbaa !1638
  br label %15, !dbg !2212

8:                                                ; preds = %1
  %9 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !2213, !tbaa !1447
  %10 = and i32 %9, 65536, !dbg !2215
  %11 = icmp eq i32 %10, 0, !dbg !2216
  %12 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 1, !dbg !2217
  br i1 %11, label %14, label %13, !dbg !2218

13:                                               ; preds = %8
  store i32 65536, i32* %12, align 4, !dbg !2219, !tbaa !1638
  br label %15, !dbg !2221

14:                                               ; preds = %8
  store i32 0, i32* %12, align 4, !dbg !2222, !tbaa !1638
  br label %15

15:                                               ; preds = %13, %14, %6
  %16 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !2224, !tbaa !1453
  %17 = and i32 %16, 131072, !dbg !2224
  %18 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 2, !dbg !2225
  store i32 %17, i32* %18, align 4, !dbg !2226, !tbaa !1899
  %19 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !2227, !tbaa !1447
  %20 = and i32 %19, 1, !dbg !2229
  %21 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 4, !dbg !2230
  store i32 %20, i32* %21, align 4, !dbg !2230, !tbaa !1707
  %22 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !2231, !tbaa !1447
  %23 = lshr i32 %22, 3, !dbg !2232
  %24 = and i32 %23, 31, !dbg !2232
  %25 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 5, !dbg !2233
  store i32 %24, i32* %25, align 4, !dbg !2234, !tbaa !1744
  %26 = load volatile i32, i32* inttoptr (i32 1073877024 to i32*), align 32, !dbg !2235, !tbaa !1822
  %27 = and i32 %26, 4, !dbg !2237
  %28 = icmp eq i32 %27, 0, !dbg !2238
  br i1 %28, label %31, label %29, !dbg !2239

29:                                               ; preds = %15
  %30 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 3, !dbg !2240
  store i32 5, i32* %30, align 4, !dbg !2242, !tbaa !1818
  br label %38, !dbg !2243

31:                                               ; preds = %15
  %32 = load volatile i32, i32* inttoptr (i32 1073877024 to i32*), align 32, !dbg !2244, !tbaa !1822
  %33 = and i32 %32, 1, !dbg !2246
  %34 = icmp eq i32 %33, 0, !dbg !2247
  %35 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 3, !dbg !2248
  br i1 %34, label %37, label %36, !dbg !2249

36:                                               ; preds = %31
  store i32 1, i32* %35, align 4, !dbg !2250, !tbaa !1818
  br label %38, !dbg !2252

37:                                               ; preds = %31
  store i32 0, i32* %35, align 4, !dbg !2253, !tbaa !1818
  br label %38

38:                                               ; preds = %36, %37, %29
  %39 = load volatile i32, i32* inttoptr (i32 1073877028 to i32*), align 4, !dbg !2255, !tbaa !1572
  %40 = and i32 %39, 1, !dbg !2257
  %41 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 6, !dbg !2258
  store i32 %40, i32* %41, align 4, !dbg !2258, !tbaa !1753
  %42 = load volatile i32, i32* inttoptr (i32 1073876992 to i32*), align 4096, !dbg !2259, !tbaa !1447
  %43 = and i32 %42, 16777216, !dbg !2261
  %44 = icmp eq i32 %43, 0, !dbg !2262
  %45 = select i1 %44, i32 1, i32 2, !dbg !2263
  %46 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 7, i32 0, !dbg !2264
  store i32 %45, i32* %46, align 4, !dbg !2264, !tbaa !1867
  %47 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !2265, !tbaa !1453
  %48 = and i32 %47, 65536, !dbg !2266
  %49 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 7, i32 1, !dbg !2267
  store i32 %48, i32* %49, align 4, !dbg !2268, !tbaa !1894
  %50 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !2269, !tbaa !1453
  %51 = and i32 %50, 3932160, !dbg !2270
  %52 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 7, i32 2, !dbg !2271
  store i32 %51, i32* %52, align 4, !dbg !2272, !tbaa !1902
  ret void, !dbg !2273
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local void @HAL_RCC_GetClockConfig(%struct.RCC_ClkInitTypeDef* nocapture noundef writeonly %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #10 !dbg !2274 {
  call void @llvm.dbg.value(metadata %struct.RCC_ClkInitTypeDef* %0, metadata !2278, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i32* %1, metadata !2279, metadata !DIExpression()), !dbg !2280
  %3 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %0, i32 0, i32 0, !dbg !2281
  store i32 15, i32* %3, align 4, !dbg !2282, !tbaa !1999
  %4 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !2283, !tbaa !1453
  %5 = and i32 %4, 3, !dbg !2284
  %6 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %0, i32 0, i32 1, !dbg !2285
  store i32 %5, i32* %6, align 4, !dbg !2286, !tbaa !2029
  %7 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !2287, !tbaa !1453
  %8 = and i32 %7, 240, !dbg !2288
  %9 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %0, i32 0, i32 2, !dbg !2289
  store i32 %8, i32* %9, align 4, !dbg !2290, !tbaa !2020
  %10 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !2291, !tbaa !1453
  %11 = and i32 %10, 1792, !dbg !2292
  %12 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %0, i32 0, i32 3, !dbg !2293
  store i32 %11, i32* %12, align 4, !dbg !2294, !tbaa !2079
  %13 = load volatile i32, i32* inttoptr (i32 1073876996 to i32*), align 4, !dbg !2295, !tbaa !1453
  %14 = lshr i32 %13, 3, !dbg !2296
  %15 = and i32 %14, 1792, !dbg !2296
  %16 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %0, i32 0, i32 4, !dbg !2297
  store i32 %15, i32* %16, align 4, !dbg !2298, !tbaa !2087
  %17 = load volatile i32, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !2299, !tbaa !1987
  %18 = and i32 %17, 7, !dbg !2300
  store i32 %18, i32* %1, align 4, !dbg !2301, !tbaa !1496
  ret void, !dbg !2302
}

; Function Attrs: noinline nounwind
define dso_local void @HAL_RCC_NMI_IRQHandler() local_unnamed_addr #3 !dbg !2303 {
  %1 = load volatile i32, i32* inttoptr (i32 1073877000 to i32*), align 8, !dbg !2304, !tbaa !1458
  %2 = and i32 %1, 128, !dbg !2304
  %3 = icmp eq i32 %2, 0, !dbg !2304
  br i1 %3, label %5, label %4, !dbg !2306

4:                                                ; preds = %0
  call void @HAL_RCC_CSSCallback(), !dbg !2307
  store volatile i8 -128, i8* inttoptr (i32 1073877002 to i8*), align 2, !dbg !2309, !tbaa !1500
  br label %5, !dbg !2310

5:                                                ; preds = %4, %0
  ret void, !dbg !2311
}

; Function Attrs: noinline nounwind
define weak dso_local void @HAL_RCC_CSSCallback() local_unnamed_addr #3 !dbg !2312 {
  ret void, !dbg !2313
}

; Function Attrs: noinline nounwind
define dso_local i32 @HAL_Init() local_unnamed_addr #3 !dbg !2314 {
  %1 = load volatile i32, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !2315, !tbaa !1987
  %2 = or i32 %1, 16, !dbg !2315
  store volatile i32 %2, i32* inttoptr (i32 1073881088 to i32*), align 8192, !dbg !2315, !tbaa !1987
  call void @HAL_NVIC_SetPriorityGrouping(i32 noundef 3) #23, !dbg !2316
  %3 = call i32 @HAL_InitTick(i32 noundef 0), !dbg !2317
  call void @HAL_MspInit(), !dbg !2318
  ret i32 0, !dbg !2319
}

; Function Attrs: noinline nounwind
define weak dso_local i32 @HAL_InitTick(i32 noundef %0) local_unnamed_addr #3 !dbg !2320 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2324, metadata !DIExpression()), !dbg !2325
  %2 = load i32, i32* @SystemCoreClock, align 4, !dbg !2326, !tbaa !1496
  %3 = load i32, i32* @uwTickFreq, align 4, !dbg !2328, !tbaa !1500
  %4 = udiv i32 1000, %3, !dbg !2329
  %5 = udiv i32 %2, %4, !dbg !2330
  %6 = call i32 @HAL_SYSTICK_Config(i32 noundef %5) #23, !dbg !2331
  %7 = icmp eq i32 %6, 0, !dbg !2332
  %8 = icmp ult i32 %0, 16
  %9 = and i1 %8, %7, !dbg !2333
  br i1 %9, label %10, label %11, !dbg !2333

10:                                               ; preds = %1
  call void @HAL_NVIC_SetPriority(i32 noundef -1, i32 noundef %0, i32 noundef 0) #23, !dbg !2334
  store i32 %0, i32* @uwTickPrio, align 4, !dbg !2337, !tbaa !1496
  br label %11, !dbg !2338

11:                                               ; preds = %1, %10
  %12 = phi i32 [ 0, %10 ], [ 1, %1 ], !dbg !2325
  ret i32 %12, !dbg !2339
}

; Function Attrs: noinline nounwind
define weak dso_local void @HAL_MspInit() local_unnamed_addr #3 !dbg !2340 {
  ret void, !dbg !2341
}

; Function Attrs: noinline nounwind
define dso_local i32 @HAL_DeInit() local_unnamed_addr #3 !dbg !2342 {
  store volatile i32 -1, i32* inttoptr (i32 1073877004 to i32*), align 4, !dbg !2343, !tbaa !2344
  store volatile i32 0, i32* inttoptr (i32 1073877008 to i32*), align 16, !dbg !2345, !tbaa !2346
  store volatile i32 -1, i32* inttoptr (i32 1073877004 to i32*), align 4, !dbg !2347, !tbaa !2344
  store volatile i32 0, i32* inttoptr (i32 1073877004 to i32*), align 4, !dbg !2348, !tbaa !2344
  call void @HAL_MspDeInit(), !dbg !2349
  ret i32 0, !dbg !2350
}

; Function Attrs: noinline nounwind
define weak dso_local void @HAL_MspDeInit() local_unnamed_addr #3 !dbg !2351 {
  ret void, !dbg !2352
}

; Function Attrs: noinline nounwind
define weak dso_local void @HAL_IncTick() local_unnamed_addr #3 !dbg !2353 {
  %1 = load i32, i32* @uwTickFreq, align 4, !dbg !2354, !tbaa !1500
  %2 = load volatile i32, i32* @uwTick, align 4, !dbg !2355, !tbaa !1496
  %3 = add i32 %2, %1, !dbg !2355
  store volatile i32 %3, i32* @uwTick, align 4, !dbg !2355, !tbaa !1496
  ret void, !dbg !2356
}

; Function Attrs: noinline nounwind
define weak dso_local i32 @HAL_GetTick() local_unnamed_addr #3 !dbg !2357 {
  %1 = load volatile i32, i32* @uwTick, align 4, !dbg !2358, !tbaa !1496
  ret i32 %1, !dbg !2359
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define dso_local i32 @HAL_GetTickPrio() local_unnamed_addr #11 !dbg !2360 {
  %1 = load i32, i32* @uwTickPrio, align 4, !dbg !2361, !tbaa !1496
  ret i32 %1, !dbg !2362
}

; Function Attrs: noinline nounwind
define dso_local i32 @HAL_SetTickFreq(i32 noundef %0) local_unnamed_addr #3 !dbg !2363 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2367, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i32 0, metadata !2368, metadata !DIExpression()), !dbg !2369
  %2 = load i32, i32* @uwTickFreq, align 4, !dbg !2370, !tbaa !1500
  %3 = icmp eq i32 %2, %0, !dbg !2372
  br i1 %3, label %9, label %4, !dbg !2373

4:                                                ; preds = %1
  %5 = load i32, i32* @uwTickPrio, align 4, !dbg !2374, !tbaa !1496
  %6 = call i32 @HAL_InitTick(i32 noundef %5), !dbg !2376
  call void @llvm.dbg.value(metadata i32 %6, metadata !2368, metadata !DIExpression()), !dbg !2369
  %7 = icmp eq i32 %6, 0, !dbg !2377
  br i1 %7, label %8, label %9, !dbg !2379

8:                                                ; preds = %4
  store i32 %0, i32* @uwTickFreq, align 4, !dbg !2380, !tbaa !1500
  br label %9, !dbg !2382

9:                                                ; preds = %4, %8, %1
  %10 = phi i32 [ 0, %8 ], [ %6, %4 ], [ 0, %1 ], !dbg !2369
  call void @llvm.dbg.value(metadata i32 %10, metadata !2368, metadata !DIExpression()), !dbg !2369
  ret i32 %10, !dbg !2383
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define dso_local i32 @HAL_GetTickFreq() local_unnamed_addr #11 !dbg !2384 {
  %1 = load i32, i32* @uwTickFreq, align 4, !dbg !2387, !tbaa !1500
  ret i32 %1, !dbg !2388
}

; Function Attrs: noinline nounwind
define weak dso_local void @HAL_Delay(i32 noundef %0) local_unnamed_addr #3 !dbg !2389 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2391, metadata !DIExpression()), !dbg !2394
  %2 = call i32 @HAL_GetTick(), !dbg !2395
  call void @llvm.dbg.value(metadata i32 %2, metadata !2392, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i32 %0, metadata !2393, metadata !DIExpression()), !dbg !2394
  %3 = icmp eq i32 %0, -1, !dbg !2396
  %4 = load i32, i32* @uwTickFreq, align 4, !dbg !2398
  %5 = add i32 %4, %0, !dbg !2398
  %6 = select i1 %3, i32 -1, i32 %5, !dbg !2398
  call void @llvm.dbg.value(metadata i32 %6, metadata !2393, metadata !DIExpression()), !dbg !2394
  br label %7, !dbg !2399

7:                                                ; preds = %7, %1
  %8 = call i32 @HAL_GetTick(), !dbg !2400
  %9 = sub i32 %8, %2, !dbg !2401
  %10 = icmp ult i32 %9, %6, !dbg !2402
  br i1 %10, label %7, label %11, !dbg !2399, !llvm.loop !2403

11:                                               ; preds = %7
  ret void, !dbg !2405
}

; Function Attrs: noinline nounwind
define weak dso_local void @HAL_SuspendTick() local_unnamed_addr #3 !dbg !2406 {
  %1 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !2407, !tbaa !2166
  %2 = and i32 %1, -3, !dbg !2407
  store volatile i32 %2, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !2407, !tbaa !2166
  ret void, !dbg !2408
}

; Function Attrs: noinline nounwind
define weak dso_local void @HAL_ResumeTick() local_unnamed_addr #3 !dbg !2409 {
  %1 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !2410, !tbaa !2166
  %2 = or i32 %1, 2, !dbg !2410
  store volatile i32 %2, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !2410, !tbaa !2166
  ret void, !dbg !2411
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn
define dso_local i32 @HAL_GetHalVersion() local_unnamed_addr #12 !dbg !2412 {
  ret i32 16843776, !dbg !2413
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local i32 @HAL_GetREVID() local_unnamed_addr #10 !dbg !2414 {
  %1 = load volatile i32, i32* inttoptr (i32 -536600576 to i32*), align 8192, !dbg !2415, !tbaa !1799
  %2 = lshr i32 %1, 16, !dbg !2416
  ret i32 %2, !dbg !2417
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local i32 @HAL_GetDEVID() local_unnamed_addr #10 !dbg !2418 {
  %1 = load volatile i32, i32* inttoptr (i32 -536600576 to i32*), align 8192, !dbg !2419, !tbaa !1799
  %2 = and i32 %1, 4095, !dbg !2420
  ret i32 %2, !dbg !2421
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define dso_local i32 @HAL_GetUIDw0() local_unnamed_addr #11 !dbg !2422 {
  %1 = load i32, i32* inttoptr (i32 536868840 to i32*), align 8, !dbg !2423, !tbaa !1496
  ret i32 %1, !dbg !2424
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define dso_local i32 @HAL_GetUIDw1() local_unnamed_addr #11 !dbg !2425 {
  %1 = load i32, i32* inttoptr (i32 536868844 to i32*), align 4, !dbg !2426, !tbaa !1496
  ret i32 %1, !dbg !2427
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define dso_local i32 @HAL_GetUIDw2() local_unnamed_addr #11 !dbg !2428 {
  %1 = load i32, i32* inttoptr (i32 536868848 to i32*), align 16, !dbg !2429, !tbaa !1496
  ret i32 %1, !dbg !2430
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @HAL_DBGMCU_EnableDBGSleepMode() local_unnamed_addr #9 !dbg !2431 {
  %1 = load volatile i32, i32* inttoptr (i32 -536600572 to i32*), align 4, !dbg !2432, !tbaa !2433
  %2 = or i32 %1, 1, !dbg !2432
  store volatile i32 %2, i32* inttoptr (i32 -536600572 to i32*), align 4, !dbg !2432, !tbaa !2433
  ret void, !dbg !2434
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @HAL_DBGMCU_DisableDBGSleepMode() local_unnamed_addr #9 !dbg !2435 {
  %1 = load volatile i32, i32* inttoptr (i32 -536600572 to i32*), align 4, !dbg !2436, !tbaa !2433
  %2 = and i32 %1, -2, !dbg !2436
  store volatile i32 %2, i32* inttoptr (i32 -536600572 to i32*), align 4, !dbg !2436, !tbaa !2433
  ret void, !dbg !2437
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @HAL_DBGMCU_EnableDBGStopMode() local_unnamed_addr #9 !dbg !2438 {
  %1 = load volatile i32, i32* inttoptr (i32 -536600572 to i32*), align 4, !dbg !2439, !tbaa !2433
  %2 = or i32 %1, 2, !dbg !2439
  store volatile i32 %2, i32* inttoptr (i32 -536600572 to i32*), align 4, !dbg !2439, !tbaa !2433
  ret void, !dbg !2440
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @HAL_DBGMCU_DisableDBGStopMode() local_unnamed_addr #9 !dbg !2441 {
  %1 = load volatile i32, i32* inttoptr (i32 -536600572 to i32*), align 4, !dbg !2442, !tbaa !2433
  %2 = and i32 %1, -3, !dbg !2442
  store volatile i32 %2, i32* inttoptr (i32 -536600572 to i32*), align 4, !dbg !2442, !tbaa !2433
  ret void, !dbg !2443
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @HAL_DBGMCU_EnableDBGStandbyMode() local_unnamed_addr #9 !dbg !2444 {
  %1 = load volatile i32, i32* inttoptr (i32 -536600572 to i32*), align 4, !dbg !2445, !tbaa !2433
  %2 = or i32 %1, 4, !dbg !2445
  store volatile i32 %2, i32* inttoptr (i32 -536600572 to i32*), align 4, !dbg !2445, !tbaa !2433
  ret void, !dbg !2446
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @HAL_DBGMCU_DisableDBGStandbyMode() local_unnamed_addr #9 !dbg !2447 {
  %1 = load volatile i32, i32* inttoptr (i32 -536600572 to i32*), align 4, !dbg !2448, !tbaa !2433
  %2 = and i32 %1, -5, !dbg !2448
  store volatile i32 %2, i32* inttoptr (i32 -536600572 to i32*), align 4, !dbg !2448, !tbaa !2433
  ret void, !dbg !2449
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @HAL_NVIC_SetPriorityGrouping(i32 noundef %0) local_unnamed_addr #9 !dbg !2450 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2452, metadata !DIExpression()), !dbg !2453
  call fastcc void @__NVIC_SetPriorityGrouping(i32 noundef %0), !dbg !2454
  ret void, !dbg !2455
}

; Function Attrs: nofree noinline norecurse nounwind
define internal fastcc void @__NVIC_SetPriorityGrouping(i32 noundef %0) unnamed_addr #9 !dbg !2456 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2458, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i32 %0, metadata !2460, metadata !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_stack_value)), !dbg !2461
  %2 = load volatile i32, i32* inttoptr (i32 -536810228 to i32*), align 4, !dbg !2462, !tbaa !2463
  call void @llvm.dbg.value(metadata i32 %2, metadata !2459, metadata !DIExpression()), !dbg !2461
  %3 = and i32 %2, 63743, !dbg !2464
  call void @llvm.dbg.value(metadata i32 %3, metadata !2459, metadata !DIExpression()), !dbg !2461
  %4 = shl i32 %0, 8, !dbg !2465
  %5 = and i32 %4, 1792, !dbg !2465
  %6 = or i32 %5, %3, !dbg !2466
  %7 = or i32 %6, 100270080, !dbg !2466
  call void @llvm.dbg.value(metadata i32 %7, metadata !2459, metadata !DIExpression()), !dbg !2461
  store volatile i32 %7, i32* inttoptr (i32 -536810228 to i32*), align 4, !dbg !2467, !tbaa !2463
  ret void, !dbg !2468
}

; Function Attrs: nofree noinline nounwind
define dso_local void @HAL_NVIC_SetPriority(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #13 !dbg !2469 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2474, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i32 %1, metadata !2475, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i32 %2, metadata !2476, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i32 0, metadata !2477, metadata !DIExpression()), !dbg !2478
  %4 = call fastcc i32 @__NVIC_GetPriorityGrouping(), !dbg !2479, !range !2480
  call void @llvm.dbg.value(metadata i32 %4, metadata !2477, metadata !DIExpression()), !dbg !2478
  %5 = call fastcc i32 @NVIC_EncodePriority(i32 noundef %4, i32 noundef %1, i32 noundef %2), !dbg !2481
  call fastcc void @__NVIC_SetPriority(i32 noundef %0, i32 noundef %5), !dbg !2482
  ret void, !dbg !2483
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define internal fastcc i32 @__NVIC_GetPriorityGrouping() unnamed_addr #10 !dbg !2484 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810228 to i32*), align 4, !dbg !2485, !tbaa !2463
  %2 = lshr i32 %1, 8, !dbg !2486
  %3 = and i32 %2, 7, !dbg !2486
  ret i32 %3, !dbg !2487
}

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone willreturn
define internal fastcc i32 @NVIC_EncodePriority(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #14 !dbg !2488 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2492, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i32 %1, metadata !2493, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i32 %2, metadata !2494, metadata !DIExpression()), !dbg !2498
  %4 = and i32 %0, 7, !dbg !2499
  call void @llvm.dbg.value(metadata i32 %4, metadata !2495, metadata !DIExpression()), !dbg !2498
  %5 = xor i32 %4, 7, !dbg !2500
  %6 = icmp ult i32 %5, 4, !dbg !2501
  %7 = select i1 %6, i32 %5, i32 4, !dbg !2501
  call void @llvm.dbg.value(metadata i32 %7, metadata !2496, metadata !DIExpression()), !dbg !2498
  %8 = call i32 @llvm.usub.sat.i32(i32 %4, i32 3), !dbg !2502
  call void @llvm.dbg.value(metadata i32 %8, metadata !2497, metadata !DIExpression()), !dbg !2498
  %9 = shl nsw i32 -1, %7, !dbg !2503
  %10 = xor i32 %9, -1, !dbg !2503
  %11 = and i32 %10, %1, !dbg !2504
  %12 = shl i32 %11, %8, !dbg !2505
  %13 = shl nsw i32 -1, %8, !dbg !2506
  %14 = xor i32 %13, -1, !dbg !2506
  %15 = and i32 %14, %2, !dbg !2507
  %16 = or i32 %12, %15, !dbg !2508
  ret i32 %16, !dbg !2509
}

; Function Attrs: nofree noinline norecurse nounwind
define internal fastcc void @__NVIC_SetPriority(i32 noundef %0, i32 noundef %1) unnamed_addr #9 !dbg !2510 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2514, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i32 %1, metadata !2515, metadata !DIExpression()), !dbg !2516
  %3 = trunc i32 %1 to i8, !dbg !2517
  %4 = shl i8 %3, 4, !dbg !2517
  %5 = and i32 %0, 15, !dbg !2519
  %6 = add nsw i32 %5, -4, !dbg !2519
  %7 = getelementptr inbounds [12 x i8], [12 x i8]* inttoptr (i32 -536810216 to [12 x i8]*), i32 0, i32 %6, !dbg !2519
  %8 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !2519
  %9 = icmp slt i32 %0, 0, !dbg !2519
  %10 = select i1 %9, i8* %7, i8* %8, !dbg !2519
  store volatile i8 %4, i8* %10, align 1, !dbg !2517, !tbaa !1500
  ret void, !dbg !2520
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #1

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @HAL_NVIC_EnableIRQ(i32 noundef %0) local_unnamed_addr #9 !dbg !2521 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2525, metadata !DIExpression()), !dbg !2526
  call fastcc void @__NVIC_EnableIRQ(i32 noundef %0), !dbg !2527
  ret void, !dbg !2528
}

; Function Attrs: nofree noinline norecurse nounwind
define internal fastcc void @__NVIC_EnableIRQ(i32 noundef %0) unnamed_addr #9 !dbg !2529 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2531, metadata !DIExpression()), !dbg !2532
  %2 = icmp sgt i32 %0, -1, !dbg !2533
  br i1 %2, label %3, label %8, !dbg !2535

3:                                                ; preds = %1
  %4 = and i32 %0, 31, !dbg !2536
  %5 = shl i32 1, %4, !dbg !2538
  %6 = lshr i32 %0, 5, !dbg !2539
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813312 to [8 x i32]*), i32 0, i32 %6, !dbg !2540
  store volatile i32 %5, i32* %7, align 4, !dbg !2541, !tbaa !1496
  br label %8, !dbg !2542

8:                                                ; preds = %3, %1
  ret void, !dbg !2543
}

; Function Attrs: noinline nounwind
define dso_local void @HAL_NVIC_DisableIRQ(i32 noundef %0) local_unnamed_addr #3 !dbg !2544 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2546, metadata !DIExpression()), !dbg !2547
  call fastcc void @__NVIC_DisableIRQ(i32 noundef %0), !dbg !2548
  ret void, !dbg !2549
}

; Function Attrs: noinline nounwind
define internal fastcc void @__NVIC_DisableIRQ(i32 noundef %0) unnamed_addr #3 !dbg !2550 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2552, metadata !DIExpression()), !dbg !2553
  %2 = icmp sgt i32 %0, -1, !dbg !2554
  br i1 %2, label %3, label %8, !dbg !2556

3:                                                ; preds = %1
  %4 = and i32 %0, 31, !dbg !2557
  %5 = shl i32 1, %4, !dbg !2559
  %6 = lshr i32 %0, 5, !dbg !2560
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813184 to [8 x i32]*), i32 0, i32 %6, !dbg !2561
  store volatile i32 %5, i32* %7, align 4, !dbg !2562, !tbaa !1496
  call void asm sideeffect "dsb 0xF", "~{memory}"() #23, !dbg !2563, !srcloc !2567
  call void asm sideeffect "isb 0xF", "~{memory}"() #23, !dbg !2568, !srcloc !2571
  br label %8, !dbg !2572

8:                                                ; preds = %3, %1
  ret void, !dbg !2573
}

; Function Attrs: noinline noreturn nounwind
define dso_local void @HAL_NVIC_SystemReset() local_unnamed_addr #15 !dbg !2574 {
  call fastcc void @__NVIC_SystemReset() #26, !dbg !2575
  unreachable, !dbg !2575
}

; Function Attrs: noinline noreturn nounwind
define internal fastcc void @__NVIC_SystemReset() unnamed_addr #15 !dbg !2576 {
  call void asm sideeffect "dsb 0xF", "~{memory}"() #23, !dbg !2577, !srcloc !2567
  %1 = load volatile i32, i32* inttoptr (i32 -536810228 to i32*), align 4, !dbg !2579, !tbaa !2463
  %2 = and i32 %1, 1792, !dbg !2580
  %3 = or i32 %2, 100270084, !dbg !2581
  store volatile i32 %3, i32* inttoptr (i32 -536810228 to i32*), align 4, !dbg !2582, !tbaa !2463
  call void asm sideeffect "dsb 0xF", "~{memory}"() #23, !dbg !2583, !srcloc !2567
  br label %4, !dbg !2585

4:                                                ; preds = %4, %0
  call void asm sideeffect "nop", ""() #23, !dbg !2586, !srcloc !2590
  br label %4, !dbg !2591, !llvm.loop !2592
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @HAL_SYSTICK_Config(i32 noundef %0) local_unnamed_addr #9 !dbg !2595 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2599, metadata !DIExpression()), !dbg !2600
  %2 = call fastcc i32 @SysTick_Config(i32 noundef %0), !dbg !2601
  ret i32 %2, !dbg !2602
}

; Function Attrs: nofree noinline norecurse nounwind
define internal fastcc i32 @SysTick_Config(i32 noundef %0) unnamed_addr #9 !dbg !2603 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2605, metadata !DIExpression()), !dbg !2606
  %2 = add i32 %0, -1, !dbg !2607
  %3 = icmp ugt i32 %2, 16777215, !dbg !2609
  br i1 %3, label %5, label %4, !dbg !2610

4:                                                ; preds = %1
  store volatile i32 %2, i32* inttoptr (i32 -536813548 to i32*), align 4, !dbg !2611, !tbaa !2156
  call fastcc void @__NVIC_SetPriority(i32 noundef -1, i32 noundef 15), !dbg !2612
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !dbg !2613, !tbaa !2163
  store volatile i32 7, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !2614, !tbaa !2166
  br label %5, !dbg !2615

5:                                                ; preds = %1, %4
  %6 = phi i32 [ 0, %4 ], [ 1, %1 ], !dbg !2606
  ret i32 %6, !dbg !2616
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local i32 @HAL_NVIC_GetPriorityGrouping() local_unnamed_addr #10 !dbg !2617 {
  %1 = call fastcc i32 @__NVIC_GetPriorityGrouping(), !dbg !2618
  ret i32 %1, !dbg !2619
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn
define dso_local void @HAL_NVIC_GetPriority(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2, i32* nocapture noundef writeonly %3) local_unnamed_addr #16 !dbg !2620 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2624, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i32 %1, metadata !2625, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i32* %2, metadata !2626, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i32* %3, metadata !2627, metadata !DIExpression()), !dbg !2628
  %5 = call fastcc i32 @__NVIC_GetPriority(i32 noundef %0), !dbg !2629, !range !2630
  call fastcc void @NVIC_DecodePriority(i32 noundef %5, i32 noundef %1, i32* noundef %2, i32* noundef %3), !dbg !2631
  ret void, !dbg !2632
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define internal fastcc i32 @__NVIC_GetPriority(i32 noundef %0) unnamed_addr #10 !dbg !2633 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2637, metadata !DIExpression()), !dbg !2638
  %2 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !2639
  %3 = and i32 %0, 15, !dbg !2639
  %4 = add nsw i32 %3, -4, !dbg !2639
  %5 = getelementptr inbounds [12 x i8], [12 x i8]* inttoptr (i32 -536810216 to [12 x i8]*), i32 0, i32 %4, !dbg !2639
  %6 = icmp slt i32 %0, 0, !dbg !2639
  %7 = select i1 %6, i8* %5, i8* %2, !dbg !2639
  %8 = load volatile i8, i8* %7, align 1, !dbg !2640, !tbaa !1500
  %9 = lshr i8 %8, 4, !dbg !2640
  %10 = zext i8 %9 to i32, !dbg !2640
  ret i32 %10, !dbg !2642
}

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn writeonly
define internal fastcc void @NVIC_DecodePriority(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2, i32* nocapture noundef writeonly %3) unnamed_addr #17 !dbg !2643 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2648, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i32 %1, metadata !2649, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i32* %2, metadata !2650, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i32* %3, metadata !2651, metadata !DIExpression()), !dbg !2655
  %5 = and i32 %1, 7, !dbg !2656
  call void @llvm.dbg.value(metadata i32 %5, metadata !2652, metadata !DIExpression()), !dbg !2655
  %6 = xor i32 %5, 7, !dbg !2657
  %7 = icmp ult i32 %6, 4, !dbg !2658
  %8 = select i1 %7, i32 %6, i32 4, !dbg !2658
  call void @llvm.dbg.value(metadata i32 %8, metadata !2653, metadata !DIExpression()), !dbg !2655
  %9 = call i32 @llvm.usub.sat.i32(i32 %5, i32 3), !dbg !2659
  call void @llvm.dbg.value(metadata i32 %9, metadata !2654, metadata !DIExpression()), !dbg !2655
  %10 = lshr i32 %0, %9, !dbg !2660
  %11 = shl nsw i32 -1, %8, !dbg !2661
  %12 = xor i32 %11, -1, !dbg !2661
  %13 = and i32 %10, %12, !dbg !2662
  store i32 %13, i32* %2, align 4, !dbg !2663, !tbaa !1496
  %14 = shl nsw i32 -1, %9, !dbg !2664
  %15 = xor i32 %14, -1, !dbg !2664
  %16 = and i32 %15, %0, !dbg !2665
  store i32 %16, i32* %3, align 4, !dbg !2666, !tbaa !1496
  ret void, !dbg !2667
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @HAL_NVIC_SetPendingIRQ(i32 noundef %0) local_unnamed_addr #9 !dbg !2668 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2670, metadata !DIExpression()), !dbg !2671
  call fastcc void @__NVIC_SetPendingIRQ(i32 noundef %0), !dbg !2672
  ret void, !dbg !2673
}

; Function Attrs: nofree noinline norecurse nounwind
define internal fastcc void @__NVIC_SetPendingIRQ(i32 noundef %0) unnamed_addr #9 !dbg !2674 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2676, metadata !DIExpression()), !dbg !2677
  %2 = icmp sgt i32 %0, -1, !dbg !2678
  br i1 %2, label %3, label %8, !dbg !2680

3:                                                ; preds = %1
  %4 = and i32 %0, 31, !dbg !2681
  %5 = shl i32 1, %4, !dbg !2683
  %6 = lshr i32 %0, 5, !dbg !2684
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %6, !dbg !2685
  store volatile i32 %5, i32* %7, align 4, !dbg !2686, !tbaa !1496
  br label %8, !dbg !2687

8:                                                ; preds = %3, %1
  ret void, !dbg !2688
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local i32 @HAL_NVIC_GetPendingIRQ(i32 noundef %0) local_unnamed_addr #10 !dbg !2689 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2691, metadata !DIExpression()), !dbg !2692
  %2 = call fastcc i32 @__NVIC_GetPendingIRQ(i32 noundef %0), !dbg !2693
  ret i32 %2, !dbg !2694
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define internal fastcc i32 @__NVIC_GetPendingIRQ(i32 noundef %0) unnamed_addr #10 !dbg !2695 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2697, metadata !DIExpression()), !dbg !2698
  %2 = icmp sgt i32 %0, -1, !dbg !2699
  br i1 %2, label %3, label %10, !dbg !2701

3:                                                ; preds = %1
  %4 = lshr i32 %0, 5, !dbg !2702
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %4, !dbg !2704
  %6 = load volatile i32, i32* %5, align 4, !dbg !2704, !tbaa !1496
  %7 = and i32 %0, 31, !dbg !2705
  %8 = lshr i32 %6, %7, !dbg !2706
  %9 = and i32 %8, 1, !dbg !2706
  br label %10, !dbg !2707

10:                                               ; preds = %1, %3
  %11 = phi i32 [ %9, %3 ], [ 0, %1 ], !dbg !2708
  ret i32 %11, !dbg !2709
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @HAL_NVIC_ClearPendingIRQ(i32 noundef %0) local_unnamed_addr #9 !dbg !2710 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2712, metadata !DIExpression()), !dbg !2713
  call fastcc void @__NVIC_ClearPendingIRQ(i32 noundef %0), !dbg !2714
  ret void, !dbg !2715
}

; Function Attrs: nofree noinline norecurse nounwind
define internal fastcc void @__NVIC_ClearPendingIRQ(i32 noundef %0) unnamed_addr #9 !dbg !2716 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2718, metadata !DIExpression()), !dbg !2719
  %2 = icmp sgt i32 %0, -1, !dbg !2720
  br i1 %2, label %3, label %8, !dbg !2722

3:                                                ; preds = %1
  %4 = and i32 %0, 31, !dbg !2723
  %5 = shl i32 1, %4, !dbg !2725
  %6 = lshr i32 %0, 5, !dbg !2726
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812928 to [8 x i32]*), i32 0, i32 %6, !dbg !2727
  store volatile i32 %5, i32* %7, align 4, !dbg !2728, !tbaa !1496
  br label %8, !dbg !2729

8:                                                ; preds = %3, %1
  ret void, !dbg !2730
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local i32 @HAL_NVIC_GetActive(i32 noundef %0) local_unnamed_addr #10 !dbg !2731 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2733, metadata !DIExpression()), !dbg !2734
  %2 = call fastcc i32 @__NVIC_GetActive(i32 noundef %0), !dbg !2735
  ret i32 %2, !dbg !2736
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define internal fastcc i32 @__NVIC_GetActive(i32 noundef %0) unnamed_addr #10 !dbg !2737 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2739, metadata !DIExpression()), !dbg !2740
  %2 = icmp sgt i32 %0, -1, !dbg !2741
  br i1 %2, label %3, label %10, !dbg !2743

3:                                                ; preds = %1
  %4 = lshr i32 %0, 5, !dbg !2744
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812800 to [8 x i32]*), i32 0, i32 %4, !dbg !2746
  %6 = load volatile i32, i32* %5, align 4, !dbg !2746, !tbaa !1496
  %7 = and i32 %0, 31, !dbg !2747
  %8 = lshr i32 %6, %7, !dbg !2748
  %9 = and i32 %8, 1, !dbg !2748
  br label %10, !dbg !2749

10:                                               ; preds = %1, %3
  %11 = phi i32 [ %9, %3 ], [ 0, %1 ], !dbg !2750
  ret i32 %11, !dbg !2751
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @HAL_SYSTICK_CLKSourceConfig(i32 noundef %0) local_unnamed_addr #9 !dbg !2752 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2754, metadata !DIExpression()), !dbg !2755
  %2 = icmp eq i32 %0, 4, !dbg !2756
  %3 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !2758, !tbaa !2166
  %4 = and i32 %3, -5, !dbg !2759
  %5 = select i1 %2, i32 4, i32 0, !dbg !2759
  %6 = or i32 %4, %5, !dbg !2759
  store volatile i32 %6, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !2758, !tbaa !2166
  ret void, !dbg !2760
}

; Function Attrs: noinline nounwind
define dso_local void @HAL_SYSTICK_IRQHandler() local_unnamed_addr #3 !dbg !2761 {
  call void @HAL_SYSTICK_Callback(), !dbg !2762
  ret void, !dbg !2763
}

; Function Attrs: noinline nounwind
define weak dso_local void @HAL_SYSTICK_Callback() local_unnamed_addr #3 !dbg !2764 {
  ret void, !dbg !2765
}

; Function Attrs: nofree noinline nounwind
define dso_local void @HAL_GPIO_Init(%struct.USART_TypeDef* noundef %0, %struct.DMA_Channel_TypeDef* nocapture noundef readonly %1) local_unnamed_addr #13 !dbg !2766 {
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.USART_TypeDef* %0, metadata !2778, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata %struct.DMA_Channel_TypeDef* %1, metadata !2779, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i32 0, metadata !2780, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i32 0, metadata !2784, metadata !DIExpression()), !dbg !2794
  %4 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %1, i32 0, i32 0
  call void @llvm.dbg.value(metadata i32 0, metadata !2780, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i32 0, metadata !2784, metadata !DIExpression()), !dbg !2794
  %5 = load i32, i32* %4, align 4, !dbg !2795, !tbaa !2166
  %6 = icmp eq i32 %5, 0, !dbg !2796
  br i1 %6, label %135, label %7, !dbg !2797

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %1, i32 0, i32 1
  %9 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %1, i32 0, i32 2
  %10 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %0, i32 0, i32 4
  %11 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %0, i32 0, i32 5
  %12 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %1, i32 0, i32 3
  %13 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %1, i32 0, i32 3
  %14 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %1, i32 0, i32 3
  %15 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %1, i32 0, i32 3
  %16 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %0, i32 0, i32 0
  %17 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %0, i32 0, i32 1
  %18 = ptrtoint %struct.USART_TypeDef* %0 to i32
  %19 = icmp eq %struct.USART_TypeDef* %0, inttoptr (i32 1073812480 to %struct.USART_TypeDef*)
  %20 = select i1 %19, i32 3, i32 4
  %21 = bitcast i32* %3 to i8*
  %22 = bitcast i32* %3 to i8*
  br label %23, !dbg !2797

23:                                               ; preds = %7, %129
  %24 = phi i32 [ %5, %7 ], [ %132, %129 ]
  %25 = phi i32 [ 0, %7 ], [ %131, %129 ]
  %26 = phi i32 [ 0, %7 ], [ %130, %129 ]
  call void @llvm.dbg.value(metadata i32 %25, metadata !2780, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i32 %26, metadata !2784, metadata !DIExpression()), !dbg !2794
  %27 = shl i32 1, %25, !dbg !2798
  call void @llvm.dbg.value(metadata i32 %27, metadata !2781, metadata !DIExpression()), !dbg !2794
  %28 = and i32 %24, %27, !dbg !2799
  call void @llvm.dbg.value(metadata i32 %28, metadata !2782, metadata !DIExpression()), !dbg !2794
  %29 = icmp eq i32 %28, %27, !dbg !2800
  br i1 %29, label %30, label %129, !dbg !2801

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4, !dbg !2802, !tbaa !2156
  switch i32 %31, label %48 [
    i32 1, label %32
    i32 17, label %34
    i32 2, label %37
    i32 18, label %40
    i32 0, label %43
    i32 269549568, label %43
    i32 270598144, label %43
    i32 271646720, label %43
    i32 269615104, label %43
    i32 270663680, label %43
    i32 271712256, label %43
    i32 3, label %47
  ], !dbg !2803

32:                                               ; preds = %30
  %33 = load i32, i32* %15, align 4, !dbg !2804, !tbaa !2160
  call void @llvm.dbg.value(metadata i32 %33, metadata !2784, metadata !DIExpression()), !dbg !2794
  br label %48, !dbg !2806

34:                                               ; preds = %30
  %35 = load i32, i32* %14, align 4, !dbg !2807, !tbaa !2160
  %36 = add i32 %35, 4, !dbg !2808
  call void @llvm.dbg.value(metadata i32 %36, metadata !2784, metadata !DIExpression()), !dbg !2794
  br label %48, !dbg !2809

37:                                               ; preds = %30
  %38 = load i32, i32* %13, align 4, !dbg !2810, !tbaa !2160
  %39 = add i32 %38, 8, !dbg !2811
  call void @llvm.dbg.value(metadata i32 %39, metadata !2784, metadata !DIExpression()), !dbg !2794
  br label %48, !dbg !2812

40:                                               ; preds = %30
  %41 = load i32, i32* %12, align 4, !dbg !2813, !tbaa !2160
  %42 = add i32 %41, 12, !dbg !2814
  call void @llvm.dbg.value(metadata i32 %42, metadata !2784, metadata !DIExpression()), !dbg !2794
  br label %48, !dbg !2815

43:                                               ; preds = %30, %30, %30, %30, %30, %30, %30
  %44 = load i32, i32* %9, align 4, !dbg !2816, !tbaa !2163
  switch i32 %44, label %46 [
    i32 0, label %48
    i32 1, label %45
  ], !dbg !2818

45:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i32 8, metadata !2784, metadata !DIExpression()), !dbg !2794
  store volatile i32 %27, i32* %10, align 4, !dbg !2819, !tbaa !2822
  br label %48, !dbg !2824

46:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i32 8, metadata !2784, metadata !DIExpression()), !dbg !2794
  store volatile i32 %27, i32* %11, align 4, !dbg !2825, !tbaa !2827
  br label %48

47:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i32 0, metadata !2784, metadata !DIExpression()), !dbg !2794
  br label %48, !dbg !2828

48:                                               ; preds = %43, %30, %46, %45, %47, %40, %37, %34, %32
  %49 = phi i32 [ %26, %30 ], [ 0, %47 ], [ 8, %45 ], [ 8, %46 ], [ %42, %40 ], [ %39, %37 ], [ %36, %34 ], [ %33, %32 ], [ 4, %43 ], !dbg !2794
  call void @llvm.dbg.value(metadata i32 %49, metadata !2784, metadata !DIExpression()), !dbg !2794
  %50 = icmp ult i32 %28, 256, !dbg !2829
  %51 = select i1 %50, i32* %16, i32* %17, !dbg !2830
  call void @llvm.dbg.value(metadata i32* %51, metadata !2785, metadata !DIExpression()), !dbg !2794
  %52 = shl i32 %25, 2, !dbg !2831
  %53 = add i32 %52, -32, !dbg !2831
  %54 = select i1 %50, i32 %52, i32 %53, !dbg !2831
  call void @llvm.dbg.value(metadata i32 %54, metadata !2786, metadata !DIExpression()), !dbg !2794
  %55 = load volatile i32, i32* %51, align 4, !dbg !2832, !tbaa !1496
  %56 = shl i32 15, %54, !dbg !2832
  %57 = xor i32 %56, -1, !dbg !2832
  %58 = and i32 %55, %57, !dbg !2832
  %59 = shl i32 %49, %54, !dbg !2832
  %60 = or i32 %58, %59, !dbg !2832
  store volatile i32 %60, i32* %51, align 4, !dbg !2832, !tbaa !1496
  %61 = load i32, i32* %8, align 4, !dbg !2833, !tbaa !2156
  %62 = and i32 %61, 268435456, !dbg !2834
  %63 = icmp eq i32 %62, 0, !dbg !2835
  br i1 %63, label %129, label %64, !dbg !2836

64:                                               ; preds = %48
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21), !dbg !2837
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2787, metadata !DIExpression()), !dbg !2837
  %65 = load volatile i32, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !2837, !tbaa !2168
  %66 = or i32 %65, 1, !dbg !2837
  store volatile i32 %66, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !2837, !tbaa !2168
  %67 = load volatile i32, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !2837, !tbaa !2168
  %68 = and i32 %67, 1, !dbg !2837
  store volatile i32 %68, i32* %3, align 4, !dbg !2837, !tbaa !1496
  %69 = load volatile i32, i32* %3, align 4, !dbg !2837, !tbaa !1496
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22), !dbg !2838
  %70 = lshr i32 %25, 2, !dbg !2839
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* inttoptr (i32 1073807368 to [4 x i32]*), i32 0, i32 %70, !dbg !2840
  %72 = load volatile i32, i32* %71, align 4, !dbg !2840, !tbaa !1496
  call void @llvm.dbg.value(metadata i32 %72, metadata !2783, metadata !DIExpression()), !dbg !2794
  %73 = and i32 %52, 12, !dbg !2841
  %74 = shl i32 15, %73, !dbg !2841
  %75 = xor i32 %74, -1, !dbg !2841
  %76 = and i32 %72, %75, !dbg !2841
  call void @llvm.dbg.value(metadata i32 %76, metadata !2783, metadata !DIExpression()), !dbg !2794
  switch i32 %18, label %77 [
    i32 1073809408, label %80
    i32 1073810432, label %78
    i32 1073811456, label %79
  ], !dbg !2842

77:                                               ; preds = %64
  br label %80, !dbg !2842

78:                                               ; preds = %64
  br label %80, !dbg !2842

79:                                               ; preds = %64
  br label %80, !dbg !2842

80:                                               ; preds = %64, %79, %78, %77
  %81 = phi i32 [ 0, %64 ], [ %20, %77 ], [ 1, %78 ], [ 2, %79 ], !dbg !2842
  %82 = shl i32 %81, %73, !dbg !2842
  %83 = or i32 %82, %76, !dbg !2842
  call void @llvm.dbg.value(metadata i32 %83, metadata !2783, metadata !DIExpression()), !dbg !2794
  store volatile i32 %83, i32* %71, align 4, !dbg !2843, !tbaa !1496
  %84 = load i32, i32* %8, align 4, !dbg !2844, !tbaa !2156
  %85 = and i32 %84, 65536, !dbg !2846
  %86 = icmp eq i32 %85, 0, !dbg !2847
  br i1 %86, label %90, label %87, !dbg !2848

87:                                               ; preds = %80
  %88 = load volatile i32, i32* inttoptr (i32 1073808384 to i32*), align 1024, !dbg !2849, !tbaa !2851
  %89 = or i32 %88, %28, !dbg !2849
  br label %94, !dbg !2853

90:                                               ; preds = %80
  %91 = xor i32 %28, -1, !dbg !2854
  %92 = load volatile i32, i32* inttoptr (i32 1073808384 to i32*), align 1024, !dbg !2854, !tbaa !2851
  %93 = and i32 %92, %91, !dbg !2854
  br label %94

94:                                               ; preds = %90, %87
  %95 = phi i32 [ %93, %90 ], [ %89, %87 ]
  store volatile i32 %95, i32* inttoptr (i32 1073808384 to i32*), align 1024, !dbg !2856, !tbaa !2851
  %96 = and i32 %84, 131072, !dbg !2857
  %97 = icmp eq i32 %96, 0, !dbg !2859
  br i1 %97, label %101, label %98, !dbg !2860

98:                                               ; preds = %94
  %99 = load volatile i32, i32* inttoptr (i32 1073808388 to i32*), align 4, !dbg !2861, !tbaa !2863
  %100 = or i32 %99, %28, !dbg !2861
  br label %105, !dbg !2864

101:                                              ; preds = %94
  %102 = xor i32 %28, -1, !dbg !2865
  %103 = load volatile i32, i32* inttoptr (i32 1073808388 to i32*), align 4, !dbg !2865, !tbaa !2863
  %104 = and i32 %103, %102, !dbg !2865
  br label %105

105:                                              ; preds = %101, %98
  %106 = phi i32 [ %104, %101 ], [ %100, %98 ]
  store volatile i32 %106, i32* inttoptr (i32 1073808388 to i32*), align 4, !dbg !2867, !tbaa !2863
  %107 = and i32 %84, 1048576, !dbg !2868
  %108 = icmp eq i32 %107, 0, !dbg !2870
  br i1 %108, label %112, label %109, !dbg !2871

109:                                              ; preds = %105
  %110 = load volatile i32, i32* inttoptr (i32 1073808392 to i32*), align 8, !dbg !2872, !tbaa !2874
  %111 = or i32 %110, %28, !dbg !2872
  br label %116, !dbg !2875

112:                                              ; preds = %105
  %113 = xor i32 %28, -1, !dbg !2876
  %114 = load volatile i32, i32* inttoptr (i32 1073808392 to i32*), align 8, !dbg !2876, !tbaa !2874
  %115 = and i32 %114, %113, !dbg !2876
  br label %116

116:                                              ; preds = %112, %109
  %117 = phi i32 [ %115, %112 ], [ %111, %109 ]
  store volatile i32 %117, i32* inttoptr (i32 1073808392 to i32*), align 8, !dbg !2878, !tbaa !2874
  %118 = and i32 %84, 2097152, !dbg !2879
  %119 = icmp eq i32 %118, 0, !dbg !2881
  br i1 %119, label %123, label %120, !dbg !2882

120:                                              ; preds = %116
  %121 = load volatile i32, i32* inttoptr (i32 1073808396 to i32*), align 4, !dbg !2883, !tbaa !2885
  %122 = or i32 %121, %28, !dbg !2883
  br label %127, !dbg !2886

123:                                              ; preds = %116
  %124 = xor i32 %28, -1, !dbg !2887
  %125 = load volatile i32, i32* inttoptr (i32 1073808396 to i32*), align 4, !dbg !2887, !tbaa !2885
  %126 = and i32 %125, %124, !dbg !2887
  br label %127

127:                                              ; preds = %120, %123
  %128 = phi i32 [ %126, %123 ], [ %122, %120 ]
  store volatile i32 %128, i32* inttoptr (i32 1073808396 to i32*), align 4, !dbg !2889, !tbaa !2885
  br label %129, !dbg !2890

129:                                              ; preds = %127, %48, %23
  %130 = phi i32 [ %49, %48 ], [ %26, %23 ], [ %49, %127 ], !dbg !2891
  call void @llvm.dbg.value(metadata i32 %130, metadata !2784, metadata !DIExpression()), !dbg !2794
  %131 = add i32 %25, 1, !dbg !2890
  call void @llvm.dbg.value(metadata i32 %131, metadata !2780, metadata !DIExpression()), !dbg !2794
  %132 = load i32, i32* %4, align 4, !dbg !2795, !tbaa !2166
  %133 = lshr i32 %132, %131, !dbg !2892
  %134 = icmp eq i32 %133, 0, !dbg !2796
  br i1 %134, label %135, label %23, !dbg !2797, !llvm.loop !2893

135:                                              ; preds = %129, %2
  ret void, !dbg !2895
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @HAL_GPIO_DeInit(%struct.USART_TypeDef* noundef %0, i32 noundef %1) local_unnamed_addr #9 !dbg !2896 {
  call void @llvm.dbg.value(metadata %struct.USART_TypeDef* %0, metadata !2900, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i32 %1, metadata !2901, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i32 0, metadata !2902, metadata !DIExpression()), !dbg !2907
  %3 = icmp eq i32 %1, 0, !dbg !2908
  br i1 %3, label %62, label %4, !dbg !2909

4:                                                ; preds = %2
  %5 = ptrtoint %struct.USART_TypeDef* %0 to i32
  %6 = icmp eq %struct.USART_TypeDef* %0, inttoptr (i32 1073812480 to %struct.USART_TypeDef*)
  %7 = select i1 %6, i32 3, i32 4
  %8 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %0, i32 0, i32 0
  %9 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %0, i32 0, i32 1
  %10 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %0, i32 0, i32 3
  br label %11, !dbg !2909

11:                                               ; preds = %4, %58
  %12 = phi i32 [ 0, %4 ], [ %59, %58 ]
  call void @llvm.dbg.value(metadata i32 %12, metadata !2902, metadata !DIExpression()), !dbg !2907
  %13 = shl i32 1, %12, !dbg !2910
  %14 = and i32 %13, %1, !dbg !2912
  call void @llvm.dbg.value(metadata i32 %14, metadata !2903, metadata !DIExpression()), !dbg !2907
  %15 = icmp eq i32 %14, 0, !dbg !2913
  br i1 %15, label %58, label %16, !dbg !2915

16:                                               ; preds = %11
  %17 = lshr i32 %12, 2, !dbg !2916
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* inttoptr (i32 1073807368 to [4 x i32]*), i32 0, i32 %17, !dbg !2918
  %19 = load volatile i32, i32* %18, align 4, !dbg !2918, !tbaa !1496
  call void @llvm.dbg.value(metadata i32 %19, metadata !2904, metadata !DIExpression()), !dbg !2907
  %20 = shl i32 %12, 2, !dbg !2919
  %21 = and i32 %20, 12, !dbg !2919
  %22 = shl i32 15, %21, !dbg !2920
  %23 = and i32 %19, %22, !dbg !2921
  call void @llvm.dbg.value(metadata i32 %23, metadata !2904, metadata !DIExpression()), !dbg !2907
  switch i32 %5, label %24 [
    i32 1073809408, label %27
    i32 1073810432, label %25
    i32 1073811456, label %26
  ], !dbg !2922

24:                                               ; preds = %16
  br label %27, !dbg !2922

25:                                               ; preds = %16
  br label %27, !dbg !2924

26:                                               ; preds = %16
  br label %27, !dbg !2924

27:                                               ; preds = %16, %26, %25, %24
  %28 = phi i32 [ 0, %16 ], [ %7, %24 ], [ 1, %25 ], [ 2, %26 ], !dbg !2922
  %29 = shl i32 %28, %21, !dbg !2924
  %30 = icmp eq i32 %23, %29, !dbg !2925
  br i1 %30, label %31, label %44, !dbg !2926

31:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i32 %22, metadata !2904, metadata !DIExpression()), !dbg !2907
  %32 = xor i32 %22, -1, !dbg !2927
  %33 = load volatile i32, i32* %18, align 4, !dbg !2927, !tbaa !1496
  %34 = and i32 %33, %32, !dbg !2927
  store volatile i32 %34, i32* %18, align 4, !dbg !2927, !tbaa !1496
  %35 = xor i32 %14, -1, !dbg !2929
  %36 = load volatile i32, i32* inttoptr (i32 1073808384 to i32*), align 1024, !dbg !2929, !tbaa !2851
  %37 = and i32 %36, %35, !dbg !2929
  store volatile i32 %37, i32* inttoptr (i32 1073808384 to i32*), align 1024, !dbg !2929, !tbaa !2851
  %38 = load volatile i32, i32* inttoptr (i32 1073808388 to i32*), align 4, !dbg !2930, !tbaa !2863
  %39 = and i32 %38, %35, !dbg !2930
  store volatile i32 %39, i32* inttoptr (i32 1073808388 to i32*), align 4, !dbg !2930, !tbaa !2863
  %40 = load volatile i32, i32* inttoptr (i32 1073808392 to i32*), align 8, !dbg !2931, !tbaa !2874
  %41 = and i32 %40, %35, !dbg !2931
  store volatile i32 %41, i32* inttoptr (i32 1073808392 to i32*), align 8, !dbg !2931, !tbaa !2874
  %42 = load volatile i32, i32* inttoptr (i32 1073808396 to i32*), align 4, !dbg !2932, !tbaa !2885
  %43 = and i32 %42, %35, !dbg !2932
  store volatile i32 %43, i32* inttoptr (i32 1073808396 to i32*), align 4, !dbg !2932, !tbaa !2885
  br label %44, !dbg !2933

44:                                               ; preds = %31, %27
  %45 = icmp ult i32 %14, 256, !dbg !2934
  %46 = select i1 %45, i32* %8, i32* %9, !dbg !2935
  call void @llvm.dbg.value(metadata i32* %46, metadata !2905, metadata !DIExpression()), !dbg !2907
  %47 = add i32 %20, -32, !dbg !2936
  %48 = select i1 %45, i32 %20, i32 %47, !dbg !2936
  call void @llvm.dbg.value(metadata i32 %48, metadata !2906, metadata !DIExpression()), !dbg !2907
  %49 = load volatile i32, i32* %46, align 4, !dbg !2937, !tbaa !1496
  %50 = shl i32 15, %48, !dbg !2937
  %51 = xor i32 %50, -1, !dbg !2937
  %52 = and i32 %49, %51, !dbg !2937
  %53 = shl i32 4, %48, !dbg !2937
  %54 = or i32 %52, %53, !dbg !2937
  store volatile i32 %54, i32* %46, align 4, !dbg !2937, !tbaa !1496
  %55 = xor i32 %14, -1, !dbg !2938
  %56 = load volatile i32, i32* %10, align 4, !dbg !2938, !tbaa !2939
  %57 = and i32 %56, %55, !dbg !2938
  store volatile i32 %57, i32* %10, align 4, !dbg !2938, !tbaa !2939
  br label %58, !dbg !2940

58:                                               ; preds = %44, %11
  %59 = add i32 %12, 1, !dbg !2941
  call void @llvm.dbg.value(metadata i32 %59, metadata !2902, metadata !DIExpression()), !dbg !2907
  %60 = lshr i32 %1, %59, !dbg !2942
  %61 = icmp eq i32 %60, 0, !dbg !2908
  br i1 %61, label %62, label %11, !dbg !2909, !llvm.loop !2943

62:                                               ; preds = %58, %2
  ret void, !dbg !2945
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local i32 @HAL_GPIO_ReadPin(%struct.USART_TypeDef* noundef %0, i16 noundef zeroext %1) local_unnamed_addr #10 !dbg !2946 {
  call void @llvm.dbg.value(metadata %struct.USART_TypeDef* %0, metadata !2951, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i16 %1, metadata !2952, metadata !DIExpression()), !dbg !2954
  %3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %0, i32 0, i32 2, !dbg !2955
  %4 = load volatile i32, i32* %3, align 4, !dbg !2955, !tbaa !2957
  %5 = zext i16 %1 to i32, !dbg !2958
  %6 = and i32 %4, %5, !dbg !2959
  %7 = icmp ne i32 %6, 0, !dbg !2960
  %8 = zext i1 %7 to i32
  call void @llvm.dbg.value(metadata i32 %8, metadata !2953, metadata !DIExpression()), !dbg !2954
  ret i32 %8, !dbg !2961
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @HAL_GPIO_WritePin(%struct.USART_TypeDef* noundef %0, i16 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #9 !dbg !2962 {
  call void @llvm.dbg.value(metadata %struct.USART_TypeDef* %0, metadata !2966, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i16 %1, metadata !2967, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i32 %2, metadata !2968, metadata !DIExpression()), !dbg !2969
  %4 = icmp eq i32 %2, 0, !dbg !2970
  %5 = zext i16 %1 to i32, !dbg !2972
  %6 = shl nuw i32 %5, 16, !dbg !2973
  %7 = select i1 %4, i32 %6, i32 %5, !dbg !2973
  %8 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %0, i32 0, i32 4, !dbg !2972
  store volatile i32 %7, i32* %8, align 4, !dbg !2972, !tbaa !2822
  ret void, !dbg !2974
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @HAL_GPIO_TogglePin(%struct.USART_TypeDef* noundef %0, i16 noundef zeroext %1) local_unnamed_addr #9 !dbg !2975 {
  call void @llvm.dbg.value(metadata %struct.USART_TypeDef* %0, metadata !2979, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i16 %1, metadata !2980, metadata !DIExpression()), !dbg !2981
  %3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %0, i32 0, i32 3, !dbg !2982
  %4 = load volatile i32, i32* %3, align 4, !dbg !2982, !tbaa !2939
  %5 = zext i16 %1 to i32, !dbg !2984
  %6 = and i32 %4, %5, !dbg !2985
  %7 = icmp eq i32 %6, 0, !dbg !2986
  %8 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %0, i32 0, i32 4, !dbg !2987
  %9 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %0, i32 0, i32 5, !dbg !2987
  %10 = select i1 %7, i32* %8, i32* %9, !dbg !2987
  store volatile i32 %5, i32* %10, align 4, !dbg !2988, !tbaa !1496
  ret void, !dbg !2989
}

; Function Attrs: nofree noinline nounwind
define dso_local i32 @HAL_GPIO_LockPin(%struct.USART_TypeDef* noundef %0, i16 noundef zeroext %1) local_unnamed_addr #13 !dbg !2990 {
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.USART_TypeDef* %0, metadata !2994, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i16 %1, metadata !2995, metadata !DIExpression()), !dbg !2997
  %4 = bitcast i32* %3 to i8*, !dbg !2998
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4), !dbg !2998
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2996, metadata !DIExpression()), !dbg !2999
  store volatile i32 65536, i32* %3, align 4, !dbg !2999, !tbaa !1496
  %5 = zext i16 %1 to i32, !dbg !3000
  %6 = load volatile i32, i32* %3, align 4, !dbg !3000, !tbaa !1496
  %7 = or i32 %6, %5, !dbg !3000
  store volatile i32 %7, i32* %3, align 4, !dbg !3000, !tbaa !1496
  %8 = load volatile i32, i32* %3, align 4, !dbg !3001, !tbaa !1496
  %9 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %0, i32 0, i32 6, !dbg !3002
  store volatile i32 %8, i32* %9, align 4, !dbg !3003, !tbaa !3004
  store volatile i32 %5, i32* %9, align 4, !dbg !3005, !tbaa !3004
  %10 = load volatile i32, i32* %3, align 4, !dbg !3006, !tbaa !1496
  store volatile i32 %10, i32* %9, align 4, !dbg !3007, !tbaa !3004
  %11 = load volatile i32, i32* %9, align 4, !dbg !3008, !tbaa !3004
  store volatile i32 %11, i32* %3, align 4, !dbg !3009, !tbaa !1496
  %12 = load volatile i32, i32* %9, align 4, !dbg !3010, !tbaa !3004
  %13 = lshr i32 %12, 16, !dbg !3012
  %14 = and i32 %13, 1, !dbg !3012
  %15 = xor i32 %14, 1, !dbg !3012
  %16 = bitcast i32* %3 to i8*, !dbg !3013
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16), !dbg !3013
  ret i32 %15, !dbg !3013
}

; Function Attrs: noinline nounwind
define dso_local void @HAL_GPIO_EXTI_IRQHandler(i16 noundef zeroext %0) local_unnamed_addr #3 !dbg !3014 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !3018, metadata !DIExpression()), !dbg !3019
  %2 = load volatile i32, i32* inttoptr (i32 1073808404 to i32*), align 4, !dbg !3020, !tbaa !3022
  %3 = zext i16 %0 to i32, !dbg !3020
  %4 = and i32 %2, %3, !dbg !3020
  %5 = icmp eq i32 %4, 0, !dbg !3023
  br i1 %5, label %7, label %6, !dbg !3024

6:                                                ; preds = %1
  store volatile i32 %3, i32* inttoptr (i32 1073808404 to i32*), align 4, !dbg !3025, !tbaa !3022
  call void @HAL_GPIO_EXTI_Callback(i16 noundef zeroext %0), !dbg !3027
  br label %7, !dbg !3028

7:                                                ; preds = %6, %1
  ret void, !dbg !3029
}

; Function Attrs: noinline nounwind
define weak dso_local void @HAL_GPIO_EXTI_Callback(i16 noundef zeroext %0) local_unnamed_addr #3 !dbg !3030 {
  call void @llvm.dbg.value(metadata i16 %0, metadata !3032, metadata !DIExpression()), !dbg !3033
  ret void, !dbg !3034
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly
define dso_local noundef nonnull %"class.Cicada::Scheduler"* @_ZN6Cicada9SchedulerC2EPFjvEPPNS_4TaskE(%"class.Cicada::Scheduler"* noundef nonnull returned writeonly align 4 dereferenceable(12) %0, i32 ()* noundef %1, %"class.Cicada::Task"** noundef %2) unnamed_addr #18 align 2 !dbg !3035 {
  call void @llvm.dbg.value(metadata %"class.Cicada::Scheduler"* %0, metadata !3037, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i32 ()* %1, metadata !3039, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata %"class.Cicada::Task"** %2, metadata !3040, metadata !DIExpression()), !dbg !3041
  %4 = getelementptr inbounds %"class.Cicada::Scheduler", %"class.Cicada::Scheduler"* %0, i32 0, i32 0, !dbg !3042
  store i32 ()* %1, i32 ()** %4, align 4, !dbg !3042, !tbaa !3043
  %5 = getelementptr inbounds %"class.Cicada::Scheduler", %"class.Cicada::Scheduler"* %0, i32 0, i32 1, !dbg !3045
  store %"class.Cicada::Task"** %2, %"class.Cicada::Task"*** %5, align 4, !dbg !3045, !tbaa !3046
  %6 = getelementptr inbounds %"class.Cicada::Scheduler", %"class.Cicada::Scheduler"* %0, i32 0, i32 2, !dbg !3047
  store %"class.Cicada::Task"** %2, %"class.Cicada::Task"*** %6, align 4, !dbg !3047, !tbaa !3048
  ret %"class.Cicada::Scheduler"* %0, !dbg !3049
}

; Function Attrs: mustprogress noinline nounwind
define dso_local void @_ZN6Cicada9Scheduler7runTaskEv(%"class.Cicada::Scheduler"* nocapture noundef nonnull align 4 dereferenceable(12) %0) local_unnamed_addr #4 align 2 !dbg !3050 {
  call void @llvm.dbg.value(metadata %"class.Cicada::Scheduler"* %0, metadata !3052, metadata !DIExpression()), !dbg !3054
  %2 = getelementptr inbounds %"class.Cicada::Scheduler", %"class.Cicada::Scheduler"* %0, i32 0, i32 0, !dbg !3055
  %3 = load i32 ()*, i32 ()** %2, align 4, !dbg !3055, !tbaa !3043
  %4 = call noundef i32 %3() #23, !dbg !3055
  call void @llvm.dbg.value(metadata i32 %4, metadata !3053, metadata !DIExpression()), !dbg !3054
  %5 = getelementptr inbounds %"class.Cicada::Scheduler", %"class.Cicada::Scheduler"* %0, i32 0, i32 2, !dbg !3056
  %6 = load %"class.Cicada::Task"**, %"class.Cicada::Task"*** %5, align 4, !dbg !3056, !tbaa !3048
  %7 = load %"class.Cicada::Task"*, %"class.Cicada::Task"** %6, align 4, !dbg !3058, !tbaa !1260
  %8 = call noundef zeroext i16 @_ZNK6Cicada4Task5delayEv(%"class.Cicada::Task"* noundef nonnull align 4 dereferenceable(20) %7), !dbg !3059
  %9 = icmp eq i16 %8, 0, !dbg !3060
  br i1 %9, label %20, label %10, !dbg !3061

10:                                               ; preds = %1
  %11 = load %"class.Cicada::Task"**, %"class.Cicada::Task"*** %5, align 4, !dbg !3062, !tbaa !3048
  %12 = load %"class.Cicada::Task"*, %"class.Cicada::Task"** %11, align 4, !dbg !3063, !tbaa !1260
  %13 = call noundef i32 @_ZN6Cicada4Task7lastRunEv(%"class.Cicada::Task"* noundef nonnull align 4 dereferenceable(20) %12), !dbg !3064
  %14 = sub i32 %4, %13, !dbg !3065
  %15 = load %"class.Cicada::Task"**, %"class.Cicada::Task"*** %5, align 4, !dbg !3066, !tbaa !3048
  %16 = load %"class.Cicada::Task"*, %"class.Cicada::Task"** %15, align 4, !dbg !3067, !tbaa !1260
  %17 = call noundef zeroext i16 @_ZNK6Cicada4Task5delayEv(%"class.Cicada::Task"* noundef nonnull align 4 dereferenceable(20) %16), !dbg !3068
  %18 = zext i16 %17 to i32, !dbg !3069
  %19 = icmp ult i32 %14, %18, !dbg !3070
  br i1 %19, label %29, label %20, !dbg !3071

20:                                               ; preds = %10, %1
  %21 = load %"class.Cicada::Task"**, %"class.Cicada::Task"*** %5, align 4, !dbg !3072, !tbaa !3048
  %22 = load %"class.Cicada::Task"*, %"class.Cicada::Task"** %21, align 4, !dbg !3074, !tbaa !1260
  call void @_ZN6Cicada4Task10setLastRunEj(%"class.Cicada::Task"* noundef nonnull align 4 dereferenceable(20) %22, i32 noundef %4), !dbg !3075
  %23 = load %"class.Cicada::Task"**, %"class.Cicada::Task"*** %5, align 4, !dbg !3076, !tbaa !3048
  %24 = load %"class.Cicada::Task"*, %"class.Cicada::Task"** %23, align 4, !dbg !3077, !tbaa !1260
  %25 = bitcast %"class.Cicada::Task"* %24 to void (%"class.Cicada::Task"*)***, !dbg !3078
  %26 = load void (%"class.Cicada::Task"*)**, void (%"class.Cicada::Task"*)*** %25, align 4, !dbg !3078, !tbaa !1350
  %27 = getelementptr inbounds void (%"class.Cicada::Task"*)*, void (%"class.Cicada::Task"*)** %26, i32 2, !dbg !3078
  %28 = load void (%"class.Cicada::Task"*)*, void (%"class.Cicada::Task"*)** %27, align 4, !dbg !3078
  call void %28(%"class.Cicada::Task"* noundef nonnull align 4 dereferenceable(20) %24) #23, !dbg !3078
  br label %29, !dbg !3079

29:                                               ; preds = %20, %10
  %30 = load %"class.Cicada::Task"**, %"class.Cicada::Task"*** %5, align 4, !dbg !3080, !tbaa !3048
  %31 = getelementptr inbounds %"class.Cicada::Task"*, %"class.Cicada::Task"** %30, i32 1, !dbg !3080
  store %"class.Cicada::Task"** %31, %"class.Cicada::Task"*** %5, align 4, !dbg !3080, !tbaa !3048
  %32 = load %"class.Cicada::Task"*, %"class.Cicada::Task"** %31, align 4, !dbg !3082, !tbaa !1260
  %33 = icmp eq %"class.Cicada::Task"* %32, null, !dbg !3083
  br i1 %33, label %34, label %37, !dbg !3084

34:                                               ; preds = %29
  %35 = getelementptr inbounds %"class.Cicada::Scheduler", %"class.Cicada::Scheduler"* %0, i32 0, i32 1, !dbg !3085
  %36 = load %"class.Cicada::Task"**, %"class.Cicada::Task"*** %35, align 4, !dbg !3085, !tbaa !3046
  store %"class.Cicada::Task"** %36, %"class.Cicada::Task"*** %5, align 4, !dbg !3087, !tbaa !3048
  br label %37, !dbg !3088

37:                                               ; preds = %34, %29
  ret void, !dbg !3089
}

; Function Attrs: mustprogress noinline nounwind
define linkonce_odr dso_local noundef zeroext i16 @_ZNK6Cicada4Task5delayEv(%"class.Cicada::Task"* noundef nonnull align 4 dereferenceable(20) %0) local_unnamed_addr #4 comdat align 2 !dbg !3090 {
  call void @llvm.dbg.value(metadata %"class.Cicada::Task"* %0, metadata !3092, metadata !DIExpression()), !dbg !3094
  %2 = getelementptr inbounds %"class.Cicada::Task", %"class.Cicada::Task"* %0, i32 0, i32 1, !dbg !3095
  %3 = load i16, i16* %2, align 4, !dbg !3095, !tbaa !1369
  ret i16 %3, !dbg !3096
}

; Function Attrs: mustprogress noinline nounwind
define linkonce_odr dso_local noundef i32 @_ZN6Cicada4Task7lastRunEv(%"class.Cicada::Task"* noundef nonnull align 4 dereferenceable(20) %0) local_unnamed_addr #4 comdat align 2 !dbg !3097 {
  call void @llvm.dbg.value(metadata %"class.Cicada::Task"* %0, metadata !3099, metadata !DIExpression()), !dbg !3100
  %2 = getelementptr inbounds %"class.Cicada::Task", %"class.Cicada::Task"* %0, i32 0, i32 4, !dbg !3101
  %3 = load i32, i32* %2, align 4, !dbg !3101, !tbaa !1376
  ret i32 %3, !dbg !3102
}

; Function Attrs: mustprogress noinline nounwind
define linkonce_odr dso_local void @_ZN6Cicada4Task10setLastRunEj(%"class.Cicada::Task"* noundef nonnull align 4 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !dbg !3103 {
  call void @llvm.dbg.value(metadata %"class.Cicada::Task"* %0, metadata !3105, metadata !DIExpression()), !dbg !3107
  call void @llvm.dbg.value(metadata i32 %1, metadata !3106, metadata !DIExpression()), !dbg !3107
  %3 = getelementptr inbounds %"class.Cicada::Task", %"class.Cicada::Task"* %0, i32 0, i32 4, !dbg !3108
  store i32 %1, i32* %3, align 4, !dbg !3109, !tbaa !1376
  ret void, !dbg !3110
}

; Function Attrs: mustprogress noinline noreturn nounwind
define dso_local void @_ZN6Cicada9Scheduler5startEv(%"class.Cicada::Scheduler"* nocapture noundef nonnull align 4 dereferenceable(12) %0) local_unnamed_addr #19 align 2 !dbg !3111 {
  call void @llvm.dbg.value(metadata %"class.Cicada::Scheduler"* %0, metadata !3113, metadata !DIExpression()), !dbg !3114
  br label %2, !dbg !3115

2:                                                ; preds = %2, %1
  call void @_ZN6Cicada9Scheduler7runTaskEv(%"class.Cicada::Scheduler"* noundef nonnull align 4 dereferenceable(12) %0), !dbg !3116
  br label %2, !dbg !3119, !llvm.loop !3120
}

; Function Attrs: mustprogress noinline nounwind
define dso_local noundef i32 @_Z13eTickFunctionv() #4 !dbg !3123 {
  %1 = call i32 @HAL_GetTick() #23, !dbg !3124
  ret i32 %1, !dbg !3125
}

; Function Attrs: noinline nounwind
define dso_local noundef %"class.Cicada::Stm32Uart"* @_ZN6Cicada9Stm32UartD2Ev(%"class.Cicada::Stm32Uart"* noundef nonnull returned align 8 dereferenceable(192) %0) unnamed_addr #3 align 2 !dbg !3126 {
  call void @llvm.dbg.value(metadata %"class.Cicada::Stm32Uart"* %0, metadata !3128, metadata !DIExpression()), !dbg !3129
  %2 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3130
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [26 x i8*], [12 x i8*] }, { [26 x i8*], [12 x i8*] }* @_ZTVN6Cicada9Stm32UartE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %2, align 8, !dbg !3130, !tbaa !1350
  %3 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 0, i32 0, i32 1, i32 0, !dbg !3130
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [26 x i8*], [12 x i8*] }, { [26 x i8*], [12 x i8*] }* @_ZTVN6Cicada9Stm32UartE, i32 0, inrange i32 1, i32 2) to i32 (...)**), i32 (...)*** %3, align 4, !dbg !3130, !tbaa !1350
  %4 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 1, !dbg !3131
  %5 = load i8, i8* %4, align 8, !dbg !3131, !tbaa !3134
  %6 = and i8 %5, 1, !dbg !3141
  %7 = icmp eq i8 %6, 0, !dbg !3131
  br i1 %7, label %13, label %8, !dbg !3142

8:                                                ; preds = %1
  %9 = bitcast %"class.Cicada::Stm32Uart"* %0 to void (%"class.Cicada::Stm32Uart"*)***, !dbg !3143
  %10 = load void (%"class.Cicada::Stm32Uart"*)**, void (%"class.Cicada::Stm32Uart"*)*** %9, align 8, !dbg !3143, !tbaa !1350
  %11 = getelementptr inbounds void (%"class.Cicada::Stm32Uart"*)*, void (%"class.Cicada::Stm32Uart"*)** %10, i32 19, !dbg !3143
  %12 = load void (%"class.Cicada::Stm32Uart"*)*, void (%"class.Cicada::Stm32Uart"*)** %11, align 4, !dbg !3143
  call void %12(%"class.Cicada::Stm32Uart"* noundef nonnull align 8 dereferenceable(192) %0) #23, !dbg !3143
  br label %13, !dbg !3143

13:                                               ; preds = %8, %1
  %14 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 0, !dbg !3144
  %15 = call noundef %"class.Cicada::BufferedSerial"* @_ZN6Cicada14BufferedSerialD2Ev(%"class.Cicada::BufferedSerial"* noundef nonnull align 8 dereferenceable(104) %14) #23, !dbg !3144
  ret %"class.Cicada::Stm32Uart"* %0, !dbg !3145
}

; Function Attrs: noinline nounwind
define dso_local void @_ZN6Cicada9Stm32UartD0Ev(%"class.Cicada::Stm32Uart"* noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #3 align 2 !dbg !3146 {
  call void @llvm.dbg.value(metadata %"class.Cicada::Stm32Uart"* %0, metadata !3148, metadata !DIExpression()), !dbg !3149
  %2 = call noundef %"class.Cicada::Stm32Uart"* @_ZN6Cicada9Stm32UartD2Ev(%"class.Cicada::Stm32Uart"* noundef nonnull align 8 dereferenceable(192) %0) #23, !dbg !3150
  %3 = bitcast %"class.Cicada::Stm32Uart"* %0 to i8*, !dbg !3150
  call void @_ZdlPv(i8* noundef %3) #24, !dbg !3150
  ret void, !dbg !3151
}

; Function Attrs: mustprogress noinline nounwind
define dso_local noundef zeroext i1 @_ZNK6Cicada9Stm32Uart20writeBufferProcessedEv(%"class.Cicada::Stm32Uart"* noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #4 align 2 !dbg !3152 {
  call void @llvm.dbg.value(metadata %"class.Cicada::Stm32Uart"* %0, metadata !3154, metadata !DIExpression()), !dbg !3156
  %2 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 0, i32 2, !dbg !3157
  %3 = bitcast %"class.Cicada::LineCircularBuffer"* %2 to %"class.Cicada::CircularBuffer"*, !dbg !3157
  %4 = call noundef i64 @_ZNK6Cicada14CircularBufferIcE14bytesAvailableEv(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %3), !dbg !3158
  %5 = icmp eq i64 %4, 0, !dbg !3159
  br i1 %5, label %6, label %13, !dbg !3160

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 2, i32 0, !dbg !3161
  %8 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %7, align 4, !dbg !3161, !tbaa !3162
  %9 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %8, i32 0, i32 0, !dbg !3161
  %10 = load volatile i32, i32* %9, align 4, !dbg !3161, !tbaa !3163
  %11 = and i32 %10, 64, !dbg !3161
  %12 = icmp ne i32 %11, 0, !dbg !3161
  br label %13

13:                                               ; preds = %6, %1
  %14 = phi i1 [ false, %1 ], [ %12, %6 ], !dbg !3156
  ret i1 %14, !dbg !3165
}

; Function Attrs: mustprogress noinline nounwind
define dso_local noundef zeroext i1 @_ZN6Cicada9Stm32Uart4openEv(%"class.Cicada::Stm32Uart"* noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #4 align 2 !dbg !3166 {
  call void @llvm.dbg.value(metadata %"class.Cicada::Stm32Uart"* %0, metadata !3168, metadata !DIExpression()), !dbg !3169
  %2 = bitcast %"class.Cicada::Stm32Uart"* %0 to i1 (%"class.Cicada::Stm32Uart"*, i8)***, !dbg !3170
  %3 = load i1 (%"class.Cicada::Stm32Uart"*, i8)**, i1 (%"class.Cicada::Stm32Uart"*, i8)*** %2, align 8, !dbg !3170, !tbaa !1350
  %4 = getelementptr inbounds i1 (%"class.Cicada::Stm32Uart"*, i8)*, i1 (%"class.Cicada::Stm32Uart"*, i8)** %3, i32 16, !dbg !3170
  %5 = load i1 (%"class.Cicada::Stm32Uart"*, i8)*, i1 (%"class.Cicada::Stm32Uart"*, i8)** %4, align 4, !dbg !3170
  %6 = call noundef zeroext i1 %5(%"class.Cicada::Stm32Uart"* noundef nonnull align 8 dereferenceable(192) %0, i8 noundef zeroext 15) #23, !dbg !3170
  ret i1 %6, !dbg !3171
}

; Function Attrs: mustprogress noinline nounwind
define dso_local noundef zeroext i1 @_ZN6Cicada9Stm32Uart4openEh(%"class.Cicada::Stm32Uart"* noundef nonnull align 8 dereferenceable(192) %0, i8 noundef zeroext %1) unnamed_addr #4 align 2 !dbg !3172 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.DMA_Channel_TypeDef, align 4
  call void @llvm.dbg.value(metadata %"class.Cicada::Stm32Uart"* %0, metadata !3174, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i8 %1, metadata !3175, metadata !DIExpression()), !dbg !3218
  %12 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 2, !dbg !3219
  %13 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %12, i32 0, i32 0, !dbg !3220
  %14 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %13, align 4, !dbg !3220, !tbaa !3162
  %15 = ptrtoint %struct.USART_TypeDef* %14 to i32, !dbg !3221
  switch i32 %15, label %123 [
    i32 1073821696, label %16
    i32 1073759232, label %26
    i32 1073760256, label %34
  ], !dbg !3221

16:                                               ; preds = %2
  %17 = load volatile i32, i32* inttoptr (i32 1073807364 to i32*), align 4, !dbg !3222, !tbaa !3223
  call void @llvm.dbg.value(metadata i32 %17, metadata !3176, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata i32 %17, metadata !3176, metadata !DIExpression(DW_OP_constu, 117440512, DW_OP_or, DW_OP_stack_value)), !dbg !3225
  %18 = or i32 %17, 117440516, !dbg !3222
  call void @llvm.dbg.value(metadata i32 %18, metadata !3176, metadata !DIExpression()), !dbg !3225
  store volatile i32 %18, i32* inttoptr (i32 1073807364 to i32*), align 4, !dbg !3222, !tbaa !3223
  %19 = bitcast i32* %3 to i8*, !dbg !3226
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19), !dbg !3226
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3180, metadata !DIExpression()), !dbg !3226
  %20 = load volatile i32, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !3226, !tbaa !3227
  %21 = or i32 %20, 16384, !dbg !3226
  store volatile i32 %21, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !3226, !tbaa !3227
  %22 = load volatile i32, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !3226, !tbaa !3227
  %23 = and i32 %22, 16384, !dbg !3226
  store volatile i32 %23, i32* %3, align 4, !dbg !3226, !tbaa !3229
  %24 = load volatile i32, i32* %3, align 4, !dbg !3226, !tbaa !3229
  %25 = bitcast i32* %3 to i8*, !dbg !3230
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25), !dbg !3230
  br label %42, !dbg !3231

26:                                               ; preds = %2
  %27 = bitcast i32* %4 to i8*, !dbg !3232
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %27), !dbg !3232
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3182, metadata !DIExpression()), !dbg !3232
  %28 = load volatile i32, i32* inttoptr (i32 1073877020 to i32*), align 4, !dbg !3232, !tbaa !3233
  %29 = or i32 %28, 131072, !dbg !3232
  store volatile i32 %29, i32* inttoptr (i32 1073877020 to i32*), align 4, !dbg !3232, !tbaa !3233
  %30 = load volatile i32, i32* inttoptr (i32 1073877020 to i32*), align 4, !dbg !3232, !tbaa !3233
  %31 = and i32 %30, 131072, !dbg !3232
  store volatile i32 %31, i32* %4, align 4, !dbg !3232, !tbaa !3229
  %32 = load volatile i32, i32* %4, align 4, !dbg !3232, !tbaa !3229
  %33 = bitcast i32* %4 to i8*, !dbg !3234
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33), !dbg !3234
  br label %42, !dbg !3235

34:                                               ; preds = %2
  %35 = bitcast i32* %5 to i8*, !dbg !3236
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %35), !dbg !3236
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3186, metadata !DIExpression()), !dbg !3236
  %36 = load volatile i32, i32* inttoptr (i32 1073877020 to i32*), align 4, !dbg !3236, !tbaa !3233
  %37 = or i32 %36, 262144, !dbg !3236
  store volatile i32 %37, i32* inttoptr (i32 1073877020 to i32*), align 4, !dbg !3236, !tbaa !3233
  %38 = load volatile i32, i32* inttoptr (i32 1073877020 to i32*), align 4, !dbg !3236, !tbaa !3233
  %39 = and i32 %38, 262144, !dbg !3236
  store volatile i32 %39, i32* %5, align 4, !dbg !3236, !tbaa !3229
  %40 = load volatile i32, i32* %5, align 4, !dbg !3236, !tbaa !3229
  %41 = bitcast i32* %5 to i8*, !dbg !3237
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %41), !dbg !3237
  br label %42

42:                                               ; preds = %26, %34, %16
  %43 = phi i32 [ 38, %26 ], [ 39, %34 ], [ 37, %16 ]
  %44 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 6, !dbg !3238
  store i32 %43, i32* %44, align 4, !dbg !3238, !tbaa !3239
  %45 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 3, !dbg !3240
  %46 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %45, align 4, !dbg !3240, !tbaa !3241
  %47 = ptrtoint %struct.USART_TypeDef* %46 to i32, !dbg !3242
  %48 = add i32 %47, -1073809408, !dbg !3242
  %49 = call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 22), !dbg !3242
  switch i32 %49, label %90 [
    i32 0, label %50
    i32 1, label %58
    i32 2, label %66
    i32 3, label %74
    i32 4, label %82
  ], !dbg !3242

50:                                               ; preds = %42
  %51 = bitcast i32* %6 to i8*, !dbg !3243
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %51), !dbg !3243
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3190, metadata !DIExpression()), !dbg !3243
  %52 = load volatile i32, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !3243, !tbaa !3227
  %53 = or i32 %52, 4, !dbg !3243
  store volatile i32 %53, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !3243, !tbaa !3227
  %54 = load volatile i32, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !3243, !tbaa !3227
  %55 = and i32 %54, 4, !dbg !3243
  store volatile i32 %55, i32* %6, align 4, !dbg !3243, !tbaa !3229
  %56 = load volatile i32, i32* %6, align 4, !dbg !3243, !tbaa !3229
  %57 = bitcast i32* %6 to i8*, !dbg !3244
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %57), !dbg !3244
  br label %90, !dbg !3245

58:                                               ; preds = %42
  %59 = bitcast i32* %7 to i8*, !dbg !3246
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %59), !dbg !3246
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3194, metadata !DIExpression()), !dbg !3246
  %60 = load volatile i32, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !3246, !tbaa !3227
  %61 = or i32 %60, 8, !dbg !3246
  store volatile i32 %61, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !3246, !tbaa !3227
  %62 = load volatile i32, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !3246, !tbaa !3227
  %63 = and i32 %62, 8, !dbg !3246
  store volatile i32 %63, i32* %7, align 4, !dbg !3246, !tbaa !3229
  %64 = load volatile i32, i32* %7, align 4, !dbg !3246, !tbaa !3229
  %65 = bitcast i32* %7 to i8*, !dbg !3247
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %65), !dbg !3247
  br label %90, !dbg !3248

66:                                               ; preds = %42
  %67 = bitcast i32* %8 to i8*, !dbg !3249
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %67), !dbg !3249
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3198, metadata !DIExpression()), !dbg !3249
  %68 = load volatile i32, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !3249, !tbaa !3227
  %69 = or i32 %68, 16, !dbg !3249
  store volatile i32 %69, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !3249, !tbaa !3227
  %70 = load volatile i32, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !3249, !tbaa !3227
  %71 = and i32 %70, 16, !dbg !3249
  store volatile i32 %71, i32* %8, align 4, !dbg !3249, !tbaa !3229
  %72 = load volatile i32, i32* %8, align 4, !dbg !3249, !tbaa !3229
  %73 = bitcast i32* %8 to i8*, !dbg !3250
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %73), !dbg !3250
  br label %90, !dbg !3251

74:                                               ; preds = %42
  %75 = bitcast i32* %9 to i8*, !dbg !3252
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %75), !dbg !3252
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3202, metadata !DIExpression()), !dbg !3252
  %76 = load volatile i32, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !3252, !tbaa !3227
  %77 = or i32 %76, 32, !dbg !3252
  store volatile i32 %77, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !3252, !tbaa !3227
  %78 = load volatile i32, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !3252, !tbaa !3227
  %79 = and i32 %78, 32, !dbg !3252
  store volatile i32 %79, i32* %9, align 4, !dbg !3252, !tbaa !3229
  %80 = load volatile i32, i32* %9, align 4, !dbg !3252, !tbaa !3229
  %81 = bitcast i32* %9 to i8*, !dbg !3253
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %81), !dbg !3253
  br label %90, !dbg !3254

82:                                               ; preds = %42
  %83 = bitcast i32* %10 to i8*, !dbg !3255
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %83), !dbg !3255
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3206, metadata !DIExpression()), !dbg !3255
  %84 = load volatile i32, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !3255, !tbaa !3227
  %85 = or i32 %84, 64, !dbg !3255
  store volatile i32 %85, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !3255, !tbaa !3227
  %86 = load volatile i32, i32* inttoptr (i32 1073877016 to i32*), align 8, !dbg !3255, !tbaa !3227
  %87 = and i32 %86, 64, !dbg !3255
  store volatile i32 %87, i32* %10, align 4, !dbg !3255, !tbaa !3229
  %88 = load volatile i32, i32* %10, align 4, !dbg !3255, !tbaa !3229
  %89 = bitcast i32* %10 to i8*, !dbg !3256
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %89), !dbg !3256
  br label %90, !dbg !3257

90:                                               ; preds = %42, %58, %74, %82, %66, %50
  %91 = bitcast %struct.DMA_Channel_TypeDef* %11 to i8*, !dbg !3258
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %91) #23, !dbg !3258
  call void @llvm.dbg.declare(metadata %struct.DMA_Channel_TypeDef* %11, metadata !3210, metadata !DIExpression()), !dbg !3259
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(16) %91, i8 0, i32 16, i1 false), !dbg !3259
  %92 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 4, !dbg !3260
  %93 = load i16, i16* %92, align 8, !dbg !3260, !tbaa !3261
  %94 = zext i16 %93 to i32, !dbg !3260
  %95 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %11, i32 0, i32 0, !dbg !3262
  store i32 %94, i32* %95, align 4, !dbg !3263, !tbaa !3264
  %96 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %11, i32 0, i32 1, !dbg !3266
  store i32 2, i32* %96, align 4, !dbg !3267, !tbaa !3268
  %97 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %11, i32 0, i32 2, !dbg !3269
  store i32 0, i32* %97, align 4, !dbg !3270, !tbaa !3271
  %98 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %11, i32 0, i32 3, !dbg !3272
  store i32 3, i32* %98, align 4, !dbg !3273, !tbaa !3274
  call void @HAL_GPIO_Init(%struct.USART_TypeDef* noundef %46, %struct.DMA_Channel_TypeDef* noundef nonnull %11) #23, !dbg !3275
  %99 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 5, !dbg !3276
  %100 = load i16, i16* %99, align 2, !dbg !3276, !tbaa !3277
  %101 = zext i16 %100 to i32, !dbg !3276
  store i32 %101, i32* %95, align 4, !dbg !3278, !tbaa !3264
  store i32 0, i32* %96, align 4, !dbg !3279, !tbaa !3268
  %102 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %45, align 4, !dbg !3280, !tbaa !3241
  call void @HAL_GPIO_Init(%struct.USART_TypeDef* noundef %102, %struct.DMA_Channel_TypeDef* noundef nonnull %11) #23, !dbg !3281
  %103 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 2, i32 1, i32 2, !dbg !3282
  store i32 0, i32* %103, align 8, !dbg !3283, !tbaa !3284
  %104 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 2, i32 1, i32 3, !dbg !3285
  store i32 0, i32* %104, align 4, !dbg !3286, !tbaa !3287
  %105 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 2, i32 1, i32 4, !dbg !3288
  store i32 12, i32* %105, align 8, !dbg !3289, !tbaa !3290
  %106 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 2, i32 1, i32 5, !dbg !3291
  store i32 0, i32* %106, align 4, !dbg !3292, !tbaa !3293
  %107 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 2, i32 1, i32 6, !dbg !3294
  store i32 0, i32* %107, align 8, !dbg !3295, !tbaa !3296
  %108 = call i32 @HAL_UART_Init(%struct.__UART_HandleTypeDef* noundef nonnull %12) #23, !dbg !3297
  %109 = icmp eq i32 %108, 0, !dbg !3299
  br i1 %109, label %110, label %122, !dbg !3300

110:                                              ; preds = %90
  %111 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 6, !dbg !3301
  %112 = load i32, i32* %111, align 4, !dbg !3301, !tbaa !3239
  %113 = zext i8 %1 to i32, !dbg !3302
  call fastcc void @_ZL18__NVIC_SetPriority9IRQn_Typej(i32 noundef %112, i32 noundef %113), !dbg !3303
  %114 = load i32, i32* %111, align 4, !dbg !3304, !tbaa !3239
  call fastcc void @_ZL16__NVIC_EnableIRQ9IRQn_Type(i32 noundef %114), !dbg !3305
  %115 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %13, align 4, !dbg !3306, !tbaa !3162
  %116 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %115, i32 0, i32 3, !dbg !3306
  %117 = load volatile i32, i32* %116, align 4, !dbg !3306, !tbaa !3307
  %118 = or i32 %117, 32, !dbg !3306
  store volatile i32 %118, i32* %116, align 4, !dbg !3306, !tbaa !3307
  %119 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 1, !dbg !3308
  %120 = load i8, i8* %119, align 8, !dbg !3309, !tbaa !3134
  %121 = or i8 %120, 1, !dbg !3309
  store i8 %121, i8* %119, align 8, !dbg !3309, !tbaa !3134
  br label %122, !dbg !3310

122:                                              ; preds = %90, %110
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %91) #23, !dbg !3311
  br label %123

123:                                              ; preds = %2, %122
  %124 = phi i1 [ %109, %122 ], [ false, %2 ], !dbg !3218
  ret i1 %124, !dbg !3311
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define dso_local noundef zeroext i1 @_ZN6Cicada9Stm32Uart6isOpenEv(%"class.Cicada::Stm32Uart"* nocapture noundef nonnull readonly align 8 dereferenceable(192) %0) unnamed_addr #11 align 2 !dbg !3312 {
  call void @llvm.dbg.value(metadata %"class.Cicada::Stm32Uart"* %0, metadata !3314, metadata !DIExpression()), !dbg !3315
  %2 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 1, !dbg !3316
  %3 = load i8, i8* %2, align 8, !dbg !3316, !tbaa !3134
  %4 = and i8 %3, 1, !dbg !3317
  %5 = icmp ne i8 %4, 0, !dbg !3316
  ret i1 %5, !dbg !3318
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly
define dso_local noundef zeroext i1 @_ZN6Cicada9Stm32Uart15setSerialConfigEjh(%"class.Cicada::Stm32Uart"* nocapture noundef nonnull writeonly align 8 dereferenceable(192) %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #18 align 2 !dbg !3319 {
  call void @llvm.dbg.value(metadata %"class.Cicada::Stm32Uart"* %0, metadata !3321, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata i32 %1, metadata !3322, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata i8 %2, metadata !3323, metadata !DIExpression()), !dbg !3324
  %4 = add i32 %1, -4500001, !dbg !3325
  %5 = icmp ult i32 %4, -4499951, !dbg !3325
  br i1 %5, label %12, label %6, !dbg !3325

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 2, i32 1, i32 0, !dbg !3327
  store i32 %1, i32* %7, align 8, !dbg !3328, !tbaa !3329
  switch i8 %2, label %12 [
    i8 8, label %9
    i8 9, label %8
  ], !dbg !3330

8:                                                ; preds = %6
  br label %9, !dbg !3331

9:                                                ; preds = %6, %8
  %10 = phi i32 [ 4096, %8 ], [ 0, %6 ]
  %11 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 2, i32 1, i32 1, !dbg !3333
  store i32 %10, i32* %11, align 4, !dbg !3333, !tbaa !3334
  br label %12, !dbg !3335

12:                                               ; preds = %9, %6, %3
  %13 = phi i1 [ false, %3 ], [ false, %6 ], [ true, %9 ], !dbg !3324
  ret i1 %13, !dbg !3335
}

; Function Attrs: mustprogress noinline nounwind
define dso_local void @_ZN6Cicada9Stm32Uart5closeEv(%"class.Cicada::Stm32Uart"* noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #4 align 2 !dbg !3336 {
  call void @llvm.dbg.value(metadata %"class.Cicada::Stm32Uart"* %0, metadata !3338, metadata !DIExpression()), !dbg !3339
  %2 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 6, !dbg !3340
  %3 = load i32, i32* %2, align 4, !dbg !3340, !tbaa !3239
  call fastcc void @_ZL17__NVIC_DisableIRQ9IRQn_Type(i32 noundef %3), !dbg !3341
  %4 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 2, !dbg !3342
  %5 = call i32 @HAL_UART_DeInit(%struct.__UART_HandleTypeDef* noundef nonnull %4) #23, !dbg !3343
  %6 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 3, !dbg !3344
  %7 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %6, align 4, !dbg !3344, !tbaa !3241
  %8 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 4, !dbg !3345
  %9 = load i16, i16* %8, align 8, !dbg !3345, !tbaa !3261
  %10 = zext i16 %9 to i32, !dbg !3345
  call void @HAL_GPIO_DeInit(%struct.USART_TypeDef* noundef %7, i32 noundef %10) #23, !dbg !3346
  %11 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %6, align 4, !dbg !3347, !tbaa !3241
  %12 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 5, !dbg !3348
  %13 = load i16, i16* %12, align 2, !dbg !3348, !tbaa !3277
  %14 = zext i16 %13 to i32, !dbg !3348
  call void @HAL_GPIO_DeInit(%struct.USART_TypeDef* noundef %11, i32 noundef %14) #23, !dbg !3349
  %15 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 1, !dbg !3350
  %16 = load i8, i8* %15, align 8, !dbg !3351, !tbaa !3134
  %17 = and i8 %16, -2, !dbg !3351
  store i8 %17, i8* %15, align 8, !dbg !3351, !tbaa !3134
  ret void, !dbg !3352
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn
define dso_local noalias noundef i8* @_ZNK6Cicada9Stm32Uart8portNameEv(%"class.Cicada::Stm32Uart"* nocapture nonnull readnone align 8 %0) unnamed_addr #12 align 2 !dbg !3353 {
  call void @llvm.dbg.value(metadata %"class.Cicada::Stm32Uart"* undef, metadata !3355, metadata !DIExpression()), !dbg !3356
  ret i8* null, !dbg !3357
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local noundef zeroext i1 @_ZN6Cicada9Stm32Uart7rawReadERh(%"class.Cicada::Stm32Uart"* nocapture noundef nonnull readonly align 8 dereferenceable(192) %0, i8* nocapture noundef nonnull writeonly align 1 dereferenceable(1) %1) unnamed_addr #10 align 2 !dbg !3358 {
  call void @llvm.dbg.value(metadata %"class.Cicada::Stm32Uart"* %0, metadata !3360, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata i8* %1, metadata !3361, metadata !DIExpression()), !dbg !3362
  %3 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 2, i32 0, !dbg !3363
  %4 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %3, align 4, !dbg !3363, !tbaa !3162
  %5 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %4, i32 0, i32 0, !dbg !3363
  %6 = load volatile i32, i32* %5, align 4, !dbg !3363, !tbaa !3163
  %7 = and i32 %6, 32, !dbg !3363
  %8 = icmp eq i32 %7, 0, !dbg !3363
  br i1 %8, label %9, label %13, !dbg !3365

9:                                                ; preds = %2
  %10 = load volatile i32, i32* %5, align 4, !dbg !3366, !tbaa !3163
  %11 = and i32 %10, 8, !dbg !3366
  %12 = icmp eq i32 %11, 0, !dbg !3366
  br i1 %12, label %17, label %13, !dbg !3367

13:                                               ; preds = %9, %2
  %14 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %4, i32 0, i32 1, !dbg !3368
  %15 = load volatile i32, i32* %14, align 4, !dbg !3368, !tbaa !3370
  %16 = trunc i32 %15 to i8, !dbg !3368
  store i8 %16, i8* %1, align 1, !dbg !3371, !tbaa !1386
  br label %17, !dbg !3372

17:                                               ; preds = %9, %13
  %18 = phi i1 [ true, %13 ], [ false, %9 ], !dbg !3362
  ret i1 %18, !dbg !3373
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind
define dso_local noundef zeroext i1 @_ZN6Cicada9Stm32Uart8rawWriteEh(%"class.Cicada::Stm32Uart"* nocapture noundef nonnull readonly align 8 dereferenceable(192) %0, i8 noundef zeroext %1) unnamed_addr #20 align 2 !dbg !3374 {
  call void @llvm.dbg.value(metadata %"class.Cicada::Stm32Uart"* %0, metadata !3376, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata i8 %1, metadata !3377, metadata !DIExpression()), !dbg !3378
  %3 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 2, i32 0, !dbg !3379
  %4 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %3, align 4, !dbg !3379, !tbaa !3162
  %5 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %4, i32 0, i32 0, !dbg !3379
  %6 = load volatile i32, i32* %5, align 4, !dbg !3379, !tbaa !3163
  %7 = and i32 %6, 128, !dbg !3379
  %8 = icmp eq i32 %7, 0, !dbg !3379
  br i1 %8, label %12, label %9, !dbg !3381

9:                                                ; preds = %2
  %10 = zext i8 %1 to i32, !dbg !3382
  %11 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %4, i32 0, i32 1, !dbg !3382
  store volatile i32 %10, i32* %11, align 4, !dbg !3382, !tbaa !3370
  br label %12, !dbg !3384

12:                                               ; preds = %2, %9
  %13 = xor i1 %8, true, !dbg !3385
  ret i1 %13, !dbg !3385
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind
define dso_local void @_ZN6Cicada9Stm32Uart13startTransmitEv(%"class.Cicada::Stm32Uart"* nocapture noundef nonnull readonly align 8 dereferenceable(192) %0) unnamed_addr #20 align 2 !dbg !3386 {
  call void @llvm.dbg.value(metadata %"class.Cicada::Stm32Uart"* %0, metadata !3388, metadata !DIExpression()), !dbg !3389
  %2 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 2, i32 0, !dbg !3390
  %3 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %2, align 4, !dbg !3390, !tbaa !3162
  %4 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %3, i32 0, i32 3, !dbg !3390
  %5 = load volatile i32, i32* %4, align 4, !dbg !3390, !tbaa !3307
  %6 = or i32 %5, 128, !dbg !3390
  store volatile i32 %6, i32* %4, align 4, !dbg !3390, !tbaa !3307
  ret void, !dbg !3391
}

; Function Attrs: noinline nounwind
define dso_local noalias noundef %"class.Cicada::Stm32Uart"* @_ZThn4_N6Cicada9Stm32UartD1Ev(%"class.Cicada::Stm32Uart"* noundef %0) unnamed_addr #3 align 2 !dbg !3392 {
  %2 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 -1, i32 6, !dbg !3394
  %3 = bitcast i32* %2 to %"class.Cicada::Stm32Uart"*, !dbg !3394
  %4 = tail call noundef %"class.Cicada::Stm32Uart"* @_ZN6Cicada9Stm32UartD2Ev(%"class.Cicada::Stm32Uart"* noundef nonnull align 8 dereferenceable(192) %3) #23, !dbg !3394
  ret %"class.Cicada::Stm32Uart"* undef, !dbg !3394
}

; Function Attrs: noinline nounwind
define dso_local void @_ZThn4_N6Cicada9Stm32UartD0Ev(%"class.Cicada::Stm32Uart"* noundef %0) unnamed_addr #3 align 2 !dbg !3395 {
  %2 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 -1, i32 6, !dbg !3396
  %3 = bitcast i32* %2 to %"class.Cicada::Stm32Uart"*, !dbg !3396
  tail call void @_ZN6Cicada9Stm32UartD0Ev(%"class.Cicada::Stm32Uart"* noundef nonnull align 8 dereferenceable(192) %3) #23, !dbg !3396
  ret void, !dbg !3396
}

; Function Attrs: noinline nounwind
define dso_local noundef zeroext i1 @_ZThn4_N6Cicada9Stm32Uart4openEv(%"class.Cicada::Stm32Uart"* noundef %0) unnamed_addr #3 align 2 !dbg !3397 {
  %2 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 -1, i32 6, !dbg !3398
  %3 = bitcast i32* %2 to %"class.Cicada::Stm32Uart"*, !dbg !3398
  %4 = tail call noundef zeroext i1 @_ZN6Cicada9Stm32Uart4openEv(%"class.Cicada::Stm32Uart"* noundef nonnull align 8 dereferenceable(192) %3), !dbg !3398
  ret i1 %4, !dbg !3398
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define dso_local noundef zeroext i1 @_ZThn4_N6Cicada9Stm32Uart6isOpenEv(%"class.Cicada::Stm32Uart"* nocapture noundef readonly %0) unnamed_addr #11 align 2 !dbg !3399 {
  %2 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 -1, i32 6, !dbg !3400
  %3 = bitcast i32* %2 to %"class.Cicada::Stm32Uart"*, !dbg !3400
  %4 = tail call noundef zeroext i1 @_ZN6Cicada9Stm32Uart6isOpenEv(%"class.Cicada::Stm32Uart"* noundef nonnull align 8 dereferenceable(192) %3), !dbg !3400
  ret i1 %4, !dbg !3400
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly
define dso_local noundef zeroext i1 @_ZThn4_N6Cicada9Stm32Uart15setSerialConfigEjh(%"class.Cicada::Stm32Uart"* nocapture noundef writeonly %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #18 align 2 !dbg !3401 {
  %4 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 -1, i32 6, !dbg !3402
  %5 = bitcast i32* %4 to %"class.Cicada::Stm32Uart"*, !dbg !3402
  %6 = tail call noundef zeroext i1 @_ZN6Cicada9Stm32Uart15setSerialConfigEjh(%"class.Cicada::Stm32Uart"* noundef nonnull align 8 dereferenceable(192) %5, i32 noundef %1, i8 noundef zeroext %2), !dbg !3402
  ret i1 %6, !dbg !3402
}

; Function Attrs: noinline nounwind
define dso_local void @_ZThn4_N6Cicada9Stm32Uart5closeEv(%"class.Cicada::Stm32Uart"* noundef %0) unnamed_addr #3 align 2 !dbg !3403 {
  %2 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 -1, i32 6, !dbg !3404
  %3 = bitcast i32* %2 to %"class.Cicada::Stm32Uart"*, !dbg !3404
  tail call void @_ZN6Cicada9Stm32Uart5closeEv(%"class.Cicada::Stm32Uart"* noundef nonnull align 8 dereferenceable(192) %3), !dbg !3404
  ret void, !dbg !3404
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn
define dso_local noalias noundef i8* @_ZThn4_NK6Cicada9Stm32Uart8portNameEv(%"class.Cicada::Stm32Uart"* nocapture noundef readnone %0) unnamed_addr #12 align 2 !dbg !3405 {
  ret i8* null, !dbg !3406
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local noundef zeroext i1 @_ZThn4_N6Cicada9Stm32Uart7rawReadERh(%"class.Cicada::Stm32Uart"* nocapture noundef readonly %0, i8* nocapture noundef nonnull writeonly align 1 dereferenceable(1) %1) unnamed_addr #10 align 2 !dbg !3407 {
  %3 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 -1, i32 6, !dbg !3408
  %4 = bitcast i32* %3 to %"class.Cicada::Stm32Uart"*, !dbg !3408
  %5 = tail call noundef zeroext i1 @_ZN6Cicada9Stm32Uart7rawReadERh(%"class.Cicada::Stm32Uart"* noundef nonnull align 8 dereferenceable(192) %4, i8* noundef nonnull align 1 dereferenceable(1) %1), !dbg !3408
  ret i1 %5, !dbg !3408
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local noundef zeroext i1 @_ZThn4_N6Cicada9Stm32Uart8rawWriteEh(%"class.Cicada::Stm32Uart"* nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #9 align 2 !dbg !3409 {
  %3 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 -1, i32 6, !dbg !3410
  %4 = bitcast i32* %3 to %"class.Cicada::Stm32Uart"*, !dbg !3410
  %5 = tail call noundef zeroext i1 @_ZN6Cicada9Stm32Uart8rawWriteEh(%"class.Cicada::Stm32Uart"* noundef nonnull align 8 dereferenceable(192) %4, i8 noundef zeroext %1), !dbg !3410
  ret i1 %5, !dbg !3410
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @_ZThn4_N6Cicada9Stm32Uart13startTransmitEv(%"class.Cicada::Stm32Uart"* nocapture noundef readonly %0) unnamed_addr #9 align 2 !dbg !3411 {
  %2 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 -1, i32 6, !dbg !3412
  %3 = bitcast i32* %2 to %"class.Cicada::Stm32Uart"*, !dbg !3412
  tail call void @_ZN6Cicada9Stm32Uart13startTransmitEv(%"class.Cicada::Stm32Uart"* noundef nonnull align 8 dereferenceable(192) %3), !dbg !3412
  ret void, !dbg !3412
}

; Function Attrs: mustprogress noinline nounwind
define internal fastcc void @_ZL17__NVIC_DisableIRQ9IRQn_Type(i32 noundef %0) unnamed_addr #4 !dbg !3413 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3417, metadata !DIExpression()), !dbg !3418
  %2 = icmp sgt i32 %0, -1, !dbg !3419
  br i1 %2, label %3, label %8, !dbg !3421

3:                                                ; preds = %1
  %4 = and i32 %0, 31, !dbg !3422
  %5 = shl i32 1, %4, !dbg !3424
  %6 = lshr i32 %0, 5, !dbg !3425
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813184 to [8 x i32]*), i32 0, i32 %6, !dbg !3426
  store volatile i32 %5, i32* %7, align 4, !dbg !3427, !tbaa !3229
  call void asm sideeffect "dsb 0xF", "~{memory}"() #23, !dbg !3428, !srcloc !3431
  call void asm sideeffect "isb 0xF", "~{memory}"() #23, !dbg !3432, !srcloc !3435
  br label %8, !dbg !3436

8:                                                ; preds = %3, %1
  ret void, !dbg !3437
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind
define internal fastcc void @_ZL18__NVIC_SetPriority9IRQn_Typej(i32 noundef %0, i32 noundef %1) unnamed_addr #20 !dbg !3438 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3442, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i32 %1, metadata !3443, metadata !DIExpression()), !dbg !3444
  %3 = trunc i32 %1 to i8, !dbg !3445
  %4 = shl i8 %3, 4, !dbg !3445
  %5 = and i32 %0, 15, !dbg !3447
  %6 = add nsw i32 %5, -4, !dbg !3447
  %7 = getelementptr inbounds [12 x i8], [12 x i8]* inttoptr (i32 -536810216 to [12 x i8]*), i32 0, i32 %6, !dbg !3447
  %8 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !3447
  %9 = icmp slt i32 %0, 0, !dbg !3447
  %10 = select i1 %9, i8* %7, i8* %8, !dbg !3447
  store volatile i8 %4, i8* %10, align 1, !dbg !3445, !tbaa !1386
  ret void, !dbg !3448
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind
define internal fastcc void @_ZL16__NVIC_EnableIRQ9IRQn_Type(i32 noundef %0) unnamed_addr #20 !dbg !3449 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3451, metadata !DIExpression()), !dbg !3452
  %2 = icmp sgt i32 %0, -1, !dbg !3453
  br i1 %2, label %3, label %8, !dbg !3455

3:                                                ; preds = %1
  %4 = and i32 %0, 31, !dbg !3456
  %5 = shl i32 1, %4, !dbg !3458
  %6 = lshr i32 %0, 5, !dbg !3459
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813312 to [8 x i32]*), i32 0, i32 %6, !dbg !3460
  store volatile i32 %5, i32* %7, align 4, !dbg !3461, !tbaa !3229
  br label %8, !dbg !3462

8:                                                ; preds = %3, %1
  ret void, !dbg !3463
}

; Function Attrs: mustprogress noinline nounwind
define linkonce_odr dso_local noundef i64 @_ZNK6Cicada14CircularBufferIcE14bytesAvailableEv(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #4 comdat align 2 !dbg !3464 {
  call void @llvm.dbg.value(metadata %"class.Cicada::CircularBuffer"* %0, metadata !3466, metadata !DIExpression()), !dbg !3468
  %2 = getelementptr inbounds %"class.Cicada::CircularBuffer", %"class.Cicada::CircularBuffer"* %0, i32 0, i32 4, !dbg !3469
  %3 = load i64, i64* %2, align 8, !dbg !3469, !tbaa !3470
  ret i64 %3, !dbg !3473
}

; Function Attrs: noinline nounwind
define linkonce_odr dso_local noundef %"class.Cicada::BufferedSerial"* @_ZN6Cicada14BufferedSerialD2Ev(%"class.Cicada::BufferedSerial"* noundef nonnull returned align 8 dereferenceable(104) %0) unnamed_addr #3 comdat align 2 !dbg !3474 {
  call void @llvm.dbg.value(metadata %"class.Cicada::BufferedSerial"* %0, metadata !3480, metadata !DIExpression()), !dbg !3482
  %2 = getelementptr inbounds %"class.Cicada::BufferedSerial", %"class.Cicada::BufferedSerial"* %0, i32 0, i32 2, !dbg !3483
  %3 = bitcast %"class.Cicada::LineCircularBuffer"* %2 to %"class.Cicada::CircularBuffer"*, !dbg !3483
  %4 = call noundef %"class.Cicada::CircularBuffer"* @_ZN6Cicada14CircularBufferIcED2Ev(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(46) %3) #23, !dbg !3483
  %5 = getelementptr inbounds %"class.Cicada::BufferedSerial", %"class.Cicada::BufferedSerial"* %0, i32 0, i32 1, !dbg !3483
  %6 = bitcast %"class.Cicada::LineCircularBuffer"* %5 to %"class.Cicada::CircularBuffer"*, !dbg !3483
  %7 = call noundef %"class.Cicada::CircularBuffer"* @_ZN6Cicada14CircularBufferIcED2Ev(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(46) %6) #23, !dbg !3483
  %8 = getelementptr inbounds %"class.Cicada::BufferedSerial", %"class.Cicada::BufferedSerial"* %0, i32 0, i32 0, !dbg !3483
  %9 = call noundef %"class.Cicada::IBufferedSerial"* @_ZN6Cicada15IBufferedSerialD2Ev(%"class.Cicada::IBufferedSerial"* noundef nonnull align 4 dereferenceable(8) %8) #23, !dbg !3483
  ret %"class.Cicada::BufferedSerial"* %0, !dbg !3485
}

; Function Attrs: noinline nounwind
define linkonce_odr dso_local noundef %"class.Cicada::CircularBuffer"* @_ZN6Cicada14CircularBufferIcED2Ev(%"class.Cicada::CircularBuffer"* noundef nonnull returned align 8 dereferenceable(44) %0) unnamed_addr #3 comdat align 2 !dbg !3486 {
  call void @llvm.dbg.value(metadata %"class.Cicada::CircularBuffer"* %0, metadata !3488, metadata !DIExpression()), !dbg !3490
  ret %"class.Cicada::CircularBuffer"* %0, !dbg !3491
}

; Function Attrs: noinline nounwind
define linkonce_odr dso_local noundef %"class.Cicada::IBufferedSerial"* @_ZN6Cicada15IBufferedSerialD2Ev(%"class.Cicada::IBufferedSerial"* noundef nonnull returned align 4 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !dbg !3492 {
  call void @llvm.dbg.value(metadata %"class.Cicada::IBufferedSerial"* %0, metadata !3494, metadata !DIExpression()), !dbg !3496
  %2 = getelementptr inbounds %"class.Cicada::IBufferedSerial", %"class.Cicada::IBufferedSerial"* %0, i32 0, i32 1, !dbg !3497
  %3 = call noundef %"class.Cicada::ICommDevice"* @_ZN6Cicada7ISerialD2Ev(%"class.Cicada::ICommDevice"* noundef nonnull align 4 dereferenceable(4) %2) #23, !dbg !3497
  %4 = getelementptr inbounds %"class.Cicada::IBufferedSerial", %"class.Cicada::IBufferedSerial"* %0, i32 0, i32 0, !dbg !3497
  %5 = call noundef %"class.Cicada::ICommDevice"* @_ZN6Cicada11ICommDeviceD2Ev(%"class.Cicada::ICommDevice"* noundef nonnull align 4 dereferenceable(4) %4) #23, !dbg !3497
  ret %"class.Cicada::IBufferedSerial"* %0, !dbg !3499
}

; Function Attrs: noinline nounwind
define linkonce_odr dso_local noundef %"class.Cicada::ICommDevice"* @_ZN6Cicada7ISerialD2Ev(%"class.Cicada::ICommDevice"* noundef nonnull returned align 4 dereferenceable(4) %0) unnamed_addr #3 comdat align 2 !dbg !3500 {
  call void @llvm.dbg.value(metadata %"class.Cicada::ICommDevice"* %0, metadata !3502, metadata !DIExpression()), !dbg !3504
  ret %"class.Cicada::ICommDevice"* %0, !dbg !3505
}

; Function Attrs: noinline nounwind
define linkonce_odr dso_local noundef %"class.Cicada::ICommDevice"* @_ZN6Cicada11ICommDeviceD2Ev(%"class.Cicada::ICommDevice"* noundef nonnull returned align 4 dereferenceable(4) %0) unnamed_addr #3 comdat align 2 !dbg !3506 {
  call void @llvm.dbg.value(metadata %"class.Cicada::ICommDevice"* %0, metadata !3508, metadata !DIExpression()), !dbg !3510
  ret %"class.Cicada::ICommDevice"* %0, !dbg !3511
}

; Function Attrs: noinline nounwind
define dso_local noundef nonnull %"class.Cicada::Stm32Uart"* @_ZN6Cicada9Stm32UartC2EPcS1_yyP13USART_TypeDefP12GPIO_TypeDeftt(%"class.Cicada::Stm32Uart"* noundef nonnull returned align 8 dereferenceable(192) %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i64 noundef %4, %struct.USART_TypeDef* noundef %5, %struct.USART_TypeDef* noundef %6, i16 noundef zeroext %7, i16 noundef zeroext %8) unnamed_addr #3 align 2 !dbg !3512 {
  call void @llvm.dbg.value(metadata %"class.Cicada::Stm32Uart"* %0, metadata !3514, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i8* %1, metadata !3515, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i8* %2, metadata !3516, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i64 %3, metadata !3517, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i64 %4, metadata !3518, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata %struct.USART_TypeDef* %5, metadata !3519, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata %struct.USART_TypeDef* %6, metadata !3520, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i16 %7, metadata !3521, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i16 %8, metadata !3522, metadata !DIExpression()), !dbg !3523
  %10 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 0, !dbg !3524
  %11 = call noundef %"class.Cicada::BufferedSerial"* @_ZN6Cicada14BufferedSerialC2EPcS1_yy(%"class.Cicada::BufferedSerial"* noundef nonnull align 8 dereferenceable(104) %10, i8* noundef %1, i8* noundef %2, i64 noundef %3, i64 noundef %4) #23, !dbg !3525
  %12 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3524
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [26 x i8*], [12 x i8*] }, { [26 x i8*], [12 x i8*] }* @_ZTVN6Cicada9Stm32UartE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %12, align 8, !dbg !3524, !tbaa !1350
  %13 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 0, i32 0, i32 1, i32 0, !dbg !3524
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [26 x i8*], [12 x i8*] }, { [26 x i8*], [12 x i8*] }* @_ZTVN6Cicada9Stm32UartE, i32 0, inrange i32 1, i32 2) to i32 (...)**), i32 (...)*** %13, align 4, !dbg !3524, !tbaa !1350
  %14 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 1, !dbg !3526
  store i8 0, i8* %14, align 8, !dbg !3526, !tbaa !3134
  %15 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 2, !dbg !3527
  %16 = bitcast %struct.__UART_HandleTypeDef* %15 to i8*, !dbg !3527
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(72) %16, i8 0, i32 72, i1 false), !dbg !3527
  %17 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 3, !dbg !3528
  store %struct.USART_TypeDef* %6, %struct.USART_TypeDef** %17, align 4, !dbg !3528, !tbaa !3241
  %18 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 4, !dbg !3529
  store i16 %7, i16* %18, align 8, !dbg !3529, !tbaa !3261
  %19 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 5, !dbg !3530
  store i16 %8, i16* %19, align 2, !dbg !3530, !tbaa !3277
  %20 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 6, !dbg !3531
  store i32 0, i32* %20, align 4, !dbg !3531, !tbaa !3239
  call void @_ZN6Cicada9Stm32Uart4initEP13USART_TypeDef(%"class.Cicada::Stm32Uart"* noundef nonnull align 8 dereferenceable(192) %0, %struct.USART_TypeDef* noundef %5), !dbg !3532
  ret %"class.Cicada::Stm32Uart"* %0, !dbg !3534
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind
define dso_local void @_ZN6Cicada9Stm32Uart4initEP13USART_TypeDef(%"class.Cicada::Stm32Uart"* noundef nonnull align 8 dereferenceable(192) %0, %struct.USART_TypeDef* noundef %1) local_unnamed_addr #21 align 2 !dbg !3535 {
  call void @llvm.dbg.value(metadata %"class.Cicada::Stm32Uart"* %0, metadata !3537, metadata !DIExpression()), !dbg !3541
  call void @llvm.dbg.value(metadata %struct.USART_TypeDef* %1, metadata !3538, metadata !DIExpression()), !dbg !3541
  %3 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 2, i32 0, !dbg !3542
  store %struct.USART_TypeDef* %1, %struct.USART_TypeDef** %3, align 4, !dbg !3543, !tbaa !3162
  %4 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 2, i32 1, i32 0, !dbg !3544
  store i32 115200, i32* %4, align 8, !dbg !3545, !tbaa !3329
  %5 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 2, i32 1, i32 1, !dbg !3546
  store i32 0, i32* %5, align 4, !dbg !3547, !tbaa !3334
  call void @llvm.dbg.value(metadata i32 0, metadata !3539, metadata !DIExpression()), !dbg !3548
  br label %9, !dbg !3549

6:                                                ; preds = %9
  %7 = add nuw nsw i32 %10, 1, !dbg !3550
  call void @llvm.dbg.value(metadata i32 %7, metadata !3539, metadata !DIExpression()), !dbg !3548
  call void @llvm.dbg.value(metadata i32 %10, metadata !3539, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3548
  %8 = icmp eq i32 %7, 4, !dbg !3552
  br i1 %8, label %15, label %9, !dbg !3549, !llvm.loop !3553

9:                                                ; preds = %2, %6
  %10 = phi i32 [ 0, %2 ], [ %7, %6 ]
  call void @llvm.dbg.value(metadata i32 %10, metadata !3539, metadata !DIExpression()), !dbg !3548
  %11 = getelementptr inbounds [4 x %"class.Cicada::Stm32Uart"*], [4 x %"class.Cicada::Stm32Uart"*]* @_ZN6Cicada9Stm32Uart8instanceE, i32 0, i32 %10, !dbg !3555
  %12 = load %"class.Cicada::Stm32Uart"*, %"class.Cicada::Stm32Uart"** %11, align 4, !dbg !3555, !tbaa !1260
  %13 = icmp eq %"class.Cicada::Stm32Uart"* %12, null, !dbg !3558
  call void @llvm.dbg.value(metadata i32 %10, metadata !3539, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3548
  br i1 %13, label %14, label %6, !dbg !3559

14:                                               ; preds = %9
  store %"class.Cicada::Stm32Uart"* %0, %"class.Cicada::Stm32Uart"** %11, align 4, !dbg !3560, !tbaa !1260
  br label %15, !dbg !3562

15:                                               ; preds = %6, %14
  ret void, !dbg !3563
}

; Function Attrs: noinline nounwind
define dso_local noundef nonnull %"class.Cicada::Stm32Uart"* @_ZN6Cicada9Stm32UartC2EPcS1_yP13USART_TypeDefP12GPIO_TypeDeftt(%"class.Cicada::Stm32Uart"* noundef nonnull returned align 8 dereferenceable(192) %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, %struct.USART_TypeDef* noundef %4, %struct.USART_TypeDef* noundef %5, i16 noundef zeroext %6, i16 noundef zeroext %7) unnamed_addr #3 align 2 !dbg !3564 {
  call void @llvm.dbg.value(metadata %"class.Cicada::Stm32Uart"* %0, metadata !3566, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.value(metadata i8* %1, metadata !3567, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.value(metadata i8* %2, metadata !3568, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.value(metadata i64 %3, metadata !3569, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.value(metadata %struct.USART_TypeDef* %4, metadata !3570, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.value(metadata %struct.USART_TypeDef* %5, metadata !3571, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.value(metadata i16 %6, metadata !3572, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.value(metadata i16 %7, metadata !3573, metadata !DIExpression()), !dbg !3574
  %9 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 0, !dbg !3575
  %10 = call noundef %"class.Cicada::BufferedSerial"* @_ZN6Cicada14BufferedSerialC2EPcS1_y(%"class.Cicada::BufferedSerial"* noundef nonnull align 8 dereferenceable(104) %9, i8* noundef %1, i8* noundef %2, i64 noundef %3) #23, !dbg !3576
  %11 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3575
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [26 x i8*], [12 x i8*] }, { [26 x i8*], [12 x i8*] }* @_ZTVN6Cicada9Stm32UartE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %11, align 8, !dbg !3575, !tbaa !1350
  %12 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 0, i32 0, i32 1, i32 0, !dbg !3575
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [26 x i8*], [12 x i8*] }, { [26 x i8*], [12 x i8*] }* @_ZTVN6Cicada9Stm32UartE, i32 0, inrange i32 1, i32 2) to i32 (...)**), i32 (...)*** %12, align 4, !dbg !3575, !tbaa !1350
  %13 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 1, !dbg !3577
  store i8 0, i8* %13, align 8, !dbg !3577, !tbaa !3134
  %14 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 2, !dbg !3578
  %15 = bitcast %struct.__UART_HandleTypeDef* %14 to i8*, !dbg !3578
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 4 dereferenceable(72) %15, i8 0, i32 72, i1 false), !dbg !3578
  %16 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 3, !dbg !3579
  store %struct.USART_TypeDef* %5, %struct.USART_TypeDef** %16, align 4, !dbg !3579, !tbaa !3241
  %17 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 4, !dbg !3580
  store i16 %6, i16* %17, align 8, !dbg !3580, !tbaa !3261
  %18 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 5, !dbg !3581
  store i16 %7, i16* %18, align 2, !dbg !3581, !tbaa !3277
  %19 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 6, !dbg !3582
  store i32 0, i32* %19, align 4, !dbg !3582, !tbaa !3239
  call void @_ZN6Cicada9Stm32Uart4initEP13USART_TypeDef(%"class.Cicada::Stm32Uart"* noundef nonnull align 8 dereferenceable(192) %0, %struct.USART_TypeDef* noundef %4), !dbg !3583
  ret %"class.Cicada::Stm32Uart"* %0, !dbg !3585
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn
define dso_local noundef %"class.Cicada::Stm32Uart"* @_ZN6Cicada9Stm32Uart11getInstanceEP13USART_TypeDef(%struct.USART_TypeDef* noundef readnone %0) local_unnamed_addr #11 align 2 !dbg !3586 {
  call void @llvm.dbg.value(metadata %struct.USART_TypeDef* %0, metadata !3588, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata i32 0, metadata !3589, metadata !DIExpression()), !dbg !3595
  br label %5, !dbg !3596

2:                                                ; preds = %16
  %3 = add nuw nsw i32 %7, 1, !dbg !3597
  call void @llvm.dbg.value(metadata i32 %3, metadata !3589, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata i32 %7, metadata !3589, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3595
  %4 = icmp eq i32 %3, 4, !dbg !3598
  br i1 %4, label %19, label %5, !dbg !3596, !llvm.loop !3599

5:                                                ; preds = %1, %2
  %6 = phi %"class.Cicada::Stm32Uart"* [ undef, %1 ], [ %18, %2 ]
  %7 = phi i32 [ 0, %1 ], [ %3, %2 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !3589, metadata !DIExpression()), !dbg !3595
  %8 = getelementptr inbounds [4 x %"class.Cicada::Stm32Uart"*], [4 x %"class.Cicada::Stm32Uart"*]* @_ZN6Cicada9Stm32Uart8instanceE, i32 0, i32 %7, !dbg !3601
  %9 = load %"class.Cicada::Stm32Uart"*, %"class.Cicada::Stm32Uart"** %8, align 4, !dbg !3601, !tbaa !1260
  call void @llvm.dbg.value(metadata %"class.Cicada::Stm32Uart"* %9, metadata !3591, metadata !DIExpression()), !dbg !3602
  %10 = icmp eq %"class.Cicada::Stm32Uart"* %9, null, !dbg !3603
  br i1 %10, label %15, label %11, !dbg !3605

11:                                               ; preds = %5
  %12 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %9, i32 0, i32 2, i32 0, !dbg !3606
  %13 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %12, align 4, !dbg !3606, !tbaa !3162
  %14 = icmp eq %struct.USART_TypeDef* %13, %0, !dbg !3607
  br i1 %14, label %16, label %15, !dbg !3608

15:                                               ; preds = %11, %5
  br label %16, !dbg !3609

16:                                               ; preds = %11, %15
  %17 = phi i1 [ true, %15 ], [ false, %11 ]
  %18 = phi %"class.Cicada::Stm32Uart"* [ %6, %15 ], [ %9, %11 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !3589, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3595
  br i1 %17, label %2, label %19

19:                                               ; preds = %2, %16
  %20 = phi %"class.Cicada::Stm32Uart"* [ null, %2 ], [ %18, %16 ]
  ret %"class.Cicada::Stm32Uart"* %20, !dbg !3610
}

; Function Attrs: mustprogress noinline nounwind
define dso_local void @_ZN6Cicada9Stm32Uart15handleInterruptEv(%"class.Cicada::Stm32Uart"* noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #4 align 2 !dbg !3611 {
  call void @llvm.dbg.value(metadata %"class.Cicada::Stm32Uart"* %0, metadata !3613, metadata !DIExpression()), !dbg !3614
  %2 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 0, !dbg !3615
  call void @_ZN6Cicada14BufferedSerial23transferToAndFromBufferEv(%"class.Cicada::BufferedSerial"* noundef nonnull align 8 dereferenceable(104) %2) #23, !dbg !3615
  %3 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 0, i32 2, !dbg !3616
  %4 = bitcast %"class.Cicada::LineCircularBuffer"* %3 to %"class.Cicada::CircularBuffer"*, !dbg !3616
  %5 = call noundef i64 @_ZNK6Cicada14CircularBufferIcE14bytesAvailableEv(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %4), !dbg !3618
  %6 = icmp eq i64 %5, 0, !dbg !3616
  br i1 %6, label %7, label %13, !dbg !3619

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.Cicada::Stm32Uart", %"class.Cicada::Stm32Uart"* %0, i32 0, i32 2, i32 0, !dbg !3620
  %9 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %8, align 4, !dbg !3620, !tbaa !3162
  %10 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %9, i32 0, i32 3, !dbg !3620
  %11 = load volatile i32, i32* %10, align 4, !dbg !3620, !tbaa !3307
  %12 = and i32 %11, -129, !dbg !3620
  store volatile i32 %12, i32* %10, align 4, !dbg !3620, !tbaa !3307
  br label %13, !dbg !3620

13:                                               ; preds = %7, %1
  ret void, !dbg !3621
}

; Function Attrs: noinline nounwind
define linkonce_odr dso_local void @_ZN6Cicada14BufferedSerialD0Ev(%"class.Cicada::BufferedSerial"* noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #3 comdat align 2 !dbg !3622 {
  call void @llvm.dbg.value(metadata %"class.Cicada::BufferedSerial"* %0, metadata !3625, metadata !DIExpression()), !dbg !3627
  call void @llvm.trap() #25, !dbg !3628
  unreachable, !dbg !3628
}

; Function Attrs: mustprogress noinline nounwind
define dso_local noundef i64 @_ZNK6Cicada14BufferedSerial14bytesAvailableEv(%"class.Cicada::BufferedSerial"* noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #4 align 2 !dbg !3629 {
  call void @llvm.dbg.value(metadata %"class.Cicada::BufferedSerial"* %0, metadata !3631, metadata !DIExpression()), !dbg !3634
  call void @_Z18eDisableInterruptsv() #23, !dbg !3635
  %2 = getelementptr inbounds %"class.Cicada::BufferedSerial", %"class.Cicada::BufferedSerial"* %0, i32 0, i32 1, !dbg !3636
  %3 = bitcast %"class.Cicada::LineCircularBuffer"* %2 to %"class.Cicada::CircularBuffer"*, !dbg !3636
  %4 = call noundef i64 @_ZNK6Cicada14CircularBufferIcE14bytesAvailableEv(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %3), !dbg !3637
  call void @llvm.dbg.value(metadata i64 %4, metadata !3633, metadata !DIExpression()), !dbg !3634
  call void @_Z17eEnableInterruptsv() #23, !dbg !3638
  ret i64 %4, !dbg !3639
}

; Function Attrs: mustprogress noinline nounwind
define dso_local noundef i64 @_ZNK6Cicada14BufferedSerial14spaceAvailableEv(%"class.Cicada::BufferedSerial"* noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #4 align 2 !dbg !3640 {
  call void @llvm.dbg.value(metadata %"class.Cicada::BufferedSerial"* %0, metadata !3642, metadata !DIExpression()), !dbg !3644
  call void @_Z18eDisableInterruptsv() #23, !dbg !3645
  %2 = getelementptr inbounds %"class.Cicada::BufferedSerial", %"class.Cicada::BufferedSerial"* %0, i32 0, i32 2, !dbg !3646
  %3 = bitcast %"class.Cicada::LineCircularBuffer"* %2 to %"class.Cicada::CircularBuffer"*, !dbg !3646
  %4 = call noundef i64 @_ZNK6Cicada14CircularBufferIcE14spaceAvailableEv(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %3), !dbg !3647
  call void @llvm.dbg.value(metadata i64 %4, metadata !3643, metadata !DIExpression()), !dbg !3644
  call void @_Z17eEnableInterruptsv() #23, !dbg !3648
  ret i64 %4, !dbg !3649
}

; Function Attrs: mustprogress noinline nounwind
define dso_local noundef i64 @_ZN6Cicada14BufferedSerial4readEPhy(%"class.Cicada::BufferedSerial"* noundef nonnull align 8 dereferenceable(104) %0, i8* nocapture noundef writeonly %1, i64 noundef %2) unnamed_addr #4 align 2 !dbg !3650 {
  call void @llvm.dbg.value(metadata %"class.Cicada::BufferedSerial"* %0, metadata !3652, metadata !DIExpression()), !dbg !3657
  call void @llvm.dbg.value(metadata i8* %1, metadata !3653, metadata !DIExpression()), !dbg !3657
  call void @llvm.dbg.value(metadata i64 %2, metadata !3654, metadata !DIExpression()), !dbg !3657
  %4 = bitcast %"class.Cicada::BufferedSerial"* %0 to i64 (%"class.Cicada::BufferedSerial"*)***, !dbg !3658
  %5 = load i64 (%"class.Cicada::BufferedSerial"*)**, i64 (%"class.Cicada::BufferedSerial"*)*** %4, align 8, !dbg !3658, !tbaa !1350
  %6 = getelementptr inbounds i64 (%"class.Cicada::BufferedSerial"*)*, i64 (%"class.Cicada::BufferedSerial"*)** %5, i32 2, !dbg !3658
  %7 = load i64 (%"class.Cicada::BufferedSerial"*)*, i64 (%"class.Cicada::BufferedSerial"*)** %6, align 4, !dbg !3658
  %8 = call noundef i64 %7(%"class.Cicada::BufferedSerial"* noundef nonnull align 8 dereferenceable(104) %0) #23, !dbg !3658
  call void @llvm.dbg.value(metadata i64 %8, metadata !3655, metadata !DIExpression()), !dbg !3657
  %9 = icmp ult i64 %8, %2, !dbg !3659
  %10 = select i1 %9, i64 %8, i64 %2, !dbg !3661
  call void @llvm.dbg.value(metadata i64 %10, metadata !3654, metadata !DIExpression()), !dbg !3657
  call void @llvm.dbg.value(metadata i64 0, metadata !3656, metadata !DIExpression()), !dbg !3657
  %11 = icmp eq i64 %10, 0, !dbg !3662
  br i1 %11, label %24, label %12, !dbg !3663

12:                                               ; preds = %3
  %13 = bitcast %"class.Cicada::BufferedSerial"* %0 to i8 (%"class.Cicada::BufferedSerial"*)***
  br label %14, !dbg !3663

14:                                               ; preds = %12, %14
  %15 = phi i64 [ 0, %12 ], [ %20, %14 ]
  call void @llvm.dbg.value(metadata i64 %15, metadata !3656, metadata !DIExpression()), !dbg !3657
  %16 = load i8 (%"class.Cicada::BufferedSerial"*)**, i8 (%"class.Cicada::BufferedSerial"*)*** %13, align 8, !dbg !3664, !tbaa !1350
  %17 = getelementptr inbounds i8 (%"class.Cicada::BufferedSerial"*)*, i8 (%"class.Cicada::BufferedSerial"*)** %16, i32 7, !dbg !3664
  %18 = load i8 (%"class.Cicada::BufferedSerial"*)*, i8 (%"class.Cicada::BufferedSerial"*)** %17, align 4, !dbg !3664
  %19 = call noundef zeroext i8 %18(%"class.Cicada::BufferedSerial"* noundef nonnull align 8 dereferenceable(104) %0) #23, !dbg !3664
  %20 = add nuw i64 %15, 1, !dbg !3666
  call void @llvm.dbg.value(metadata i64 %20, metadata !3656, metadata !DIExpression()), !dbg !3657
  %21 = trunc i64 %15 to i32, !dbg !3667
  %22 = getelementptr inbounds i8, i8* %1, i32 %21, !dbg !3667
  store i8 %19, i8* %22, align 1, !dbg !3668, !tbaa !1386
  %23 = icmp ult i64 %20, %10, !dbg !3662
  br i1 %23, label %14, label %24, !dbg !3663, !llvm.loop !3669

24:                                               ; preds = %14, %3
  %25 = phi i64 [ 0, %3 ], [ %20, %14 ], !dbg !3657
  ret i64 %25, !dbg !3671
}

; Function Attrs: mustprogress noinline nounwind
define dso_local noundef i64 @_ZN6Cicada14BufferedSerial5writeEPKhy(%"class.Cicada::BufferedSerial"* noundef nonnull align 8 dereferenceable(104) %0, i8* nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #4 align 2 !dbg !3672 {
  call void @llvm.dbg.value(metadata %"class.Cicada::BufferedSerial"* %0, metadata !3674, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata i8* %1, metadata !3675, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata i64 %2, metadata !3676, metadata !DIExpression()), !dbg !3679
  %4 = bitcast %"class.Cicada::BufferedSerial"* %0 to i64 (%"class.Cicada::BufferedSerial"*)***, !dbg !3680
  %5 = load i64 (%"class.Cicada::BufferedSerial"*)**, i64 (%"class.Cicada::BufferedSerial"*)*** %4, align 8, !dbg !3680, !tbaa !1350
  %6 = getelementptr inbounds i64 (%"class.Cicada::BufferedSerial"*)*, i64 (%"class.Cicada::BufferedSerial"*)** %5, i32 3, !dbg !3680
  %7 = load i64 (%"class.Cicada::BufferedSerial"*)*, i64 (%"class.Cicada::BufferedSerial"*)** %6, align 4, !dbg !3680
  %8 = call noundef i64 %7(%"class.Cicada::BufferedSerial"* noundef nonnull align 8 dereferenceable(104) %0) #23, !dbg !3680
  call void @llvm.dbg.value(metadata i64 %8, metadata !3677, metadata !DIExpression()), !dbg !3679
  %9 = icmp ult i64 %8, %2, !dbg !3681
  %10 = select i1 %9, i64 %8, i64 %2, !dbg !3683
  call void @llvm.dbg.value(metadata i64 %10, metadata !3676, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata i64 0, metadata !3678, metadata !DIExpression()), !dbg !3679
  %11 = icmp eq i64 %10, 0, !dbg !3684
  br i1 %11, label %19, label %12, !dbg !3685

12:                                               ; preds = %3, %12
  %13 = phi i64 [ %14, %12 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3678, metadata !DIExpression()), !dbg !3679
  %14 = add nuw i64 %13, 1, !dbg !3686
  call void @llvm.dbg.value(metadata i64 %14, metadata !3678, metadata !DIExpression()), !dbg !3679
  %15 = trunc i64 %13 to i32, !dbg !3688
  %16 = getelementptr inbounds i8, i8* %1, i32 %15, !dbg !3688
  %17 = load i8, i8* %16, align 1, !dbg !3688, !tbaa !1386
  call void @_ZN6Cicada14BufferedSerial12copyToBufferEh(%"class.Cicada::BufferedSerial"* noundef nonnull align 8 dereferenceable(104) %0, i8 noundef zeroext %17), !dbg !3689
  %18 = icmp ult i64 %14, %10, !dbg !3684
  br i1 %18, label %12, label %19, !dbg !3685, !llvm.loop !3690

19:                                               ; preds = %12, %3
  %20 = phi i64 [ 0, %3 ], [ %14, %12 ], !dbg !3679
  %21 = getelementptr inbounds %"class.Cicada::BufferedSerial", %"class.Cicada::BufferedSerial"* %0, i32 0, i32 0, i32 1, !dbg !3692
  %22 = bitcast %"class.Cicada::ICommDevice"* %21 to void (%"class.Cicada::ICommDevice"*)***, !dbg !3692
  %23 = load void (%"class.Cicada::ICommDevice"*)**, void (%"class.Cicada::ICommDevice"*)*** %22, align 4, !dbg !3692, !tbaa !1350
  %24 = getelementptr inbounds void (%"class.Cicada::ICommDevice"*)*, void (%"class.Cicada::ICommDevice"*)** %23, i32 9, !dbg !3692
  %25 = load void (%"class.Cicada::ICommDevice"*)*, void (%"class.Cicada::ICommDevice"*)** %24, align 4, !dbg !3692
  call void %25(%"class.Cicada::ICommDevice"* noundef nonnull align 4 dereferenceable(4) %21) #23, !dbg !3692
  ret i64 %20, !dbg !3693
}

; Function Attrs: mustprogress noinline nounwind
define dso_local noundef zeroext i8 @_ZN6Cicada14BufferedSerial4readEv(%"class.Cicada::BufferedSerial"* noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #4 align 2 !dbg !3694 {
  call void @llvm.dbg.value(metadata %"class.Cicada::BufferedSerial"* %0, metadata !3696, metadata !DIExpression()), !dbg !3698
  call void @_Z18eDisableInterruptsv() #23, !dbg !3699
  %2 = getelementptr inbounds %"class.Cicada::BufferedSerial", %"class.Cicada::BufferedSerial"* %0, i32 0, i32 1, !dbg !3700
  %3 = call noundef zeroext i8 @_ZN6Cicada18LineCircularBuffer4pullEv(%"class.Cicada::LineCircularBuffer"* noundef nonnull align 8 dereferenceable(46) %2), !dbg !3701
  call void @llvm.dbg.value(metadata i8 %3, metadata !3697, metadata !DIExpression()), !dbg !3698
  call void @_Z17eEnableInterruptsv() #23, !dbg !3702
  ret i8 %3, !dbg !3703
}

; Function Attrs: mustprogress noinline nounwind
define dso_local noundef i64 @_ZN6Cicada14BufferedSerial5writeEPKh(%"class.Cicada::BufferedSerial"* noundef nonnull align 8 dereferenceable(104) %0, i8* nocapture noundef readonly %1) unnamed_addr #4 align 2 !dbg !3704 {
  call void @llvm.dbg.value(metadata %"class.Cicada::BufferedSerial"* %0, metadata !3706, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i8* %1, metadata !3707, metadata !DIExpression()), !dbg !3710
  %3 = bitcast %"class.Cicada::BufferedSerial"* %0 to i64 (%"class.Cicada::BufferedSerial"*)***, !dbg !3711
  %4 = load i64 (%"class.Cicada::BufferedSerial"*)**, i64 (%"class.Cicada::BufferedSerial"*)*** %3, align 8, !dbg !3711, !tbaa !1350
  %5 = getelementptr inbounds i64 (%"class.Cicada::BufferedSerial"*)*, i64 (%"class.Cicada::BufferedSerial"*)** %4, i32 3, !dbg !3711
  %6 = load i64 (%"class.Cicada::BufferedSerial"*)*, i64 (%"class.Cicada::BufferedSerial"*)** %5, align 4, !dbg !3711
  %7 = call noundef i64 %6(%"class.Cicada::BufferedSerial"* noundef nonnull align 8 dereferenceable(104) %0) #23, !dbg !3711
  call void @llvm.dbg.value(metadata i64 %7, metadata !3708, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i64 0, metadata !3709, metadata !DIExpression()), !dbg !3710
  %8 = load i8, i8* %1, align 1, !dbg !3712, !tbaa !1386
  %9 = icmp ne i8 %8, 0, !dbg !3713
  %10 = icmp ne i64 %7, 0, !dbg !3714
  %11 = and i1 %9, %10, !dbg !3714
  br i1 %11, label %12, label %22, !dbg !3715

12:                                               ; preds = %2, %12
  %13 = phi i8 [ %18, %12 ], [ %8, %2 ]
  %14 = phi i64 [ %15, %12 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3709, metadata !DIExpression()), !dbg !3710
  %15 = add nuw i64 %14, 1, !dbg !3716
  call void @llvm.dbg.value(metadata i64 %15, metadata !3709, metadata !DIExpression()), !dbg !3710
  call void @_ZN6Cicada14BufferedSerial12copyToBufferEh(%"class.Cicada::BufferedSerial"* noundef nonnull align 8 dereferenceable(104) %0, i8 noundef zeroext %13), !dbg !3718
  %16 = trunc i64 %15 to i32, !dbg !3712
  %17 = getelementptr inbounds i8, i8* %1, i32 %16, !dbg !3712
  %18 = load i8, i8* %17, align 1, !dbg !3712, !tbaa !1386
  %19 = icmp ne i8 %18, 0, !dbg !3713
  %20 = icmp ult i64 %15, %7, !dbg !3714
  %21 = select i1 %19, i1 %20, i1 false, !dbg !3714
  br i1 %21, label %12, label %22, !dbg !3715, !llvm.loop !3719

22:                                               ; preds = %12, %2
  %23 = phi i64 [ 0, %2 ], [ %15, %12 ], !dbg !3710
  %24 = getelementptr inbounds %"class.Cicada::BufferedSerial", %"class.Cicada::BufferedSerial"* %0, i32 0, i32 0, i32 1, !dbg !3721
  %25 = bitcast %"class.Cicada::ICommDevice"* %24 to void (%"class.Cicada::ICommDevice"*)***, !dbg !3721
  %26 = load void (%"class.Cicada::ICommDevice"*)**, void (%"class.Cicada::ICommDevice"*)*** %25, align 4, !dbg !3721, !tbaa !1350
  %27 = getelementptr inbounds void (%"class.Cicada::ICommDevice"*)*, void (%"class.Cicada::ICommDevice"*)** %26, i32 9, !dbg !3721
  %28 = load void (%"class.Cicada::ICommDevice"*)*, void (%"class.Cicada::ICommDevice"*)** %27, align 4, !dbg !3721
  call void %28(%"class.Cicada::ICommDevice"* noundef nonnull align 4 dereferenceable(4) %24) #23, !dbg !3721
  ret i64 %23, !dbg !3722
}

; Function Attrs: mustprogress noinline nounwind
define dso_local void @_ZN6Cicada14BufferedSerial5writeEh(%"class.Cicada::BufferedSerial"* noundef nonnull align 8 dereferenceable(104) %0, i8 noundef zeroext %1) unnamed_addr #4 align 2 !dbg !3723 {
  call void @llvm.dbg.value(metadata %"class.Cicada::BufferedSerial"* %0, metadata !3725, metadata !DIExpression()), !dbg !3727
  call void @llvm.dbg.value(metadata i8 %1, metadata !3726, metadata !DIExpression()), !dbg !3727
  call void @_ZN6Cicada14BufferedSerial12copyToBufferEh(%"class.Cicada::BufferedSerial"* noundef nonnull align 8 dereferenceable(104) %0, i8 noundef zeroext %1), !dbg !3728
  %3 = getelementptr inbounds %"class.Cicada::BufferedSerial", %"class.Cicada::BufferedSerial"* %0, i32 0, i32 0, i32 1, !dbg !3729
  %4 = bitcast %"class.Cicada::ICommDevice"* %3 to void (%"class.Cicada::ICommDevice"*)***, !dbg !3729
  %5 = load void (%"class.Cicada::ICommDevice"*)**, void (%"class.Cicada::ICommDevice"*)*** %4, align 4, !dbg !3729, !tbaa !1350
  %6 = getelementptr inbounds void (%"class.Cicada::ICommDevice"*)*, void (%"class.Cicada::ICommDevice"*)** %5, i32 9, !dbg !3729
  %7 = load void (%"class.Cicada::ICommDevice"*)*, void (%"class.Cicada::ICommDevice"*)** %6, align 4, !dbg !3729
  call void %7(%"class.Cicada::ICommDevice"* noundef nonnull align 4 dereferenceable(4) %3) #23, !dbg !3729
  ret void, !dbg !3730
}

; Function Attrs: mustprogress noinline nounwind
define dso_local noundef zeroext i1 @_ZNK6Cicada14BufferedSerial11canReadLineEv(%"class.Cicada::BufferedSerial"* noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #4 align 2 !dbg !3731 {
  call void @llvm.dbg.value(metadata %"class.Cicada::BufferedSerial"* %0, metadata !3733, metadata !DIExpression()), !dbg !3735
  call void @_Z18eDisableInterruptsv() #23, !dbg !3736
  %2 = getelementptr inbounds %"class.Cicada::BufferedSerial", %"class.Cicada::BufferedSerial"* %0, i32 0, i32 1, !dbg !3737
  %3 = call noundef zeroext i16 @_ZNK6Cicada18LineCircularBuffer16numBufferedLinesEv(%"class.Cicada::LineCircularBuffer"* noundef nonnull align 8 dereferenceable(46) %2), !dbg !3738
  call void @llvm.dbg.value(metadata i16 %3, metadata !3734, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3735
  call void @_Z17eEnableInterruptsv() #23, !dbg !3739
  %4 = icmp ne i16 %3, 0, !dbg !3740
  ret i1 %4, !dbg !3741
}

; Function Attrs: mustprogress noinline nounwind
define dso_local noundef i64 @_ZN6Cicada14BufferedSerial8readLineEPhy(%"class.Cicada::BufferedSerial"* noundef nonnull align 8 dereferenceable(104) %0, i8* nocapture noundef writeonly %1, i64 noundef %2) unnamed_addr #4 align 2 !dbg !3742 {
  call void @llvm.dbg.value(metadata %"class.Cicada::BufferedSerial"* %0, metadata !3744, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata i8* %1, metadata !3745, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata i64 %2, metadata !3746, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata i64 0, metadata !3747, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata i8 0, metadata !3748, metadata !DIExpression()), !dbg !3749
  %4 = icmp eq i64 %2, 0, !dbg !3750
  br i1 %4, label %39, label %5, !dbg !3752

5:                                                ; preds = %3
  %6 = bitcast %"class.Cicada::BufferedSerial"* %0 to i64 (%"class.Cicada::BufferedSerial"*)***
  call void @llvm.dbg.value(metadata i8 0, metadata !3748, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata i64 0, metadata !3747, metadata !DIExpression()), !dbg !3749
  %7 = load i64 (%"class.Cicada::BufferedSerial"*)**, i64 (%"class.Cicada::BufferedSerial"*)*** %6, align 8, !dbg !3753, !tbaa !1350
  %8 = getelementptr inbounds i64 (%"class.Cicada::BufferedSerial"*)*, i64 (%"class.Cicada::BufferedSerial"*)** %7, i32 2, !dbg !3753
  %9 = load i64 (%"class.Cicada::BufferedSerial"*)*, i64 (%"class.Cicada::BufferedSerial"*)** %8, align 4, !dbg !3753
  %10 = call noundef i64 %9(%"class.Cicada::BufferedSerial"* noundef nonnull align 8 dereferenceable(104) %0) #23, !dbg !3753
  %11 = icmp eq i64 %10, 0, !dbg !3753
  br i1 %11, label %35, label %12, !dbg !3754

12:                                               ; preds = %5
  %13 = bitcast %"class.Cicada::BufferedSerial"* %0 to i8 (%"class.Cicada::BufferedSerial"*)***
  %14 = add i64 %2, -1
  br label %15, !dbg !3754

15:                                               ; preds = %12, %26
  %16 = phi i64 [ 0, %12 ], [ %27, %26 ]
  call void @llvm.dbg.value(metadata i64 %16, metadata !3747, metadata !DIExpression()), !dbg !3749
  %17 = load i8 (%"class.Cicada::BufferedSerial"*)**, i8 (%"class.Cicada::BufferedSerial"*)*** %13, align 8, !dbg !3755, !tbaa !1350
  %18 = getelementptr inbounds i8 (%"class.Cicada::BufferedSerial"*)*, i8 (%"class.Cicada::BufferedSerial"*)** %17, i32 7, !dbg !3755
  %19 = load i8 (%"class.Cicada::BufferedSerial"*)*, i8 (%"class.Cicada::BufferedSerial"*)** %18, align 4, !dbg !3755
  %20 = call noundef zeroext i8 %19(%"class.Cicada::BufferedSerial"* noundef nonnull align 8 dereferenceable(104) %0) #23, !dbg !3755
  call void @llvm.dbg.value(metadata i8 %20, metadata !3748, metadata !DIExpression()), !dbg !3749
  %21 = icmp ult i64 %16, %14, !dbg !3757
  br i1 %21, label %22, label %26, !dbg !3759

22:                                               ; preds = %15
  %23 = add i64 %16, 1, !dbg !3760
  call void @llvm.dbg.value(metadata i64 %23, metadata !3747, metadata !DIExpression()), !dbg !3749
  %24 = trunc i64 %16 to i32, !dbg !3762
  %25 = getelementptr inbounds i8, i8* %1, i32 %24, !dbg !3762
  store i8 %20, i8* %25, align 1, !dbg !3763, !tbaa !1386
  br label %26, !dbg !3764

26:                                               ; preds = %22, %15
  %27 = phi i64 [ %23, %22 ], [ %16, %15 ], !dbg !3749
  call void @llvm.dbg.value(metadata i8 %20, metadata !3748, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata i64 %27, metadata !3747, metadata !DIExpression()), !dbg !3749
  %28 = load i64 (%"class.Cicada::BufferedSerial"*)**, i64 (%"class.Cicada::BufferedSerial"*)*** %6, align 8, !dbg !3753, !tbaa !1350
  %29 = getelementptr inbounds i64 (%"class.Cicada::BufferedSerial"*)*, i64 (%"class.Cicada::BufferedSerial"*)** %28, i32 2, !dbg !3753
  %30 = load i64 (%"class.Cicada::BufferedSerial"*)*, i64 (%"class.Cicada::BufferedSerial"*)** %29, align 4, !dbg !3753
  %31 = call noundef i64 %30(%"class.Cicada::BufferedSerial"* noundef nonnull align 8 dereferenceable(104) %0) #23, !dbg !3753
  %32 = icmp ne i64 %31, 0, !dbg !3753
  %33 = icmp ne i8 %20, 10, !dbg !3765
  %34 = and i1 %33, %32, !dbg !3765
  br i1 %34, label %15, label %35, !dbg !3754, !llvm.loop !3766

35:                                               ; preds = %26, %5
  %36 = phi i64 [ 0, %5 ], [ %27, %26 ], !dbg !3749
  %37 = trunc i64 %36 to i32, !dbg !3768
  %38 = getelementptr inbounds i8, i8* %1, i32 %37, !dbg !3768
  store i8 0, i8* %38, align 1, !dbg !3769, !tbaa !1386
  br label %39, !dbg !3770

39:                                               ; preds = %3, %35
  %40 = phi i64 [ %36, %35 ], [ 0, %3 ], !dbg !3749
  ret i64 %40, !dbg !3771
}

; Function Attrs: mustprogress noinline nounwind
define dso_local void @_ZN6Cicada14BufferedSerial19flushReceiveBuffersEv(%"class.Cicada::BufferedSerial"* noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #4 align 2 !dbg !3772 {
  call void @llvm.dbg.value(metadata %"class.Cicada::BufferedSerial"* %0, metadata !3774, metadata !DIExpression()), !dbg !3775
  call void @_Z18eDisableInterruptsv() #23, !dbg !3776
  %2 = getelementptr inbounds %"class.Cicada::BufferedSerial", %"class.Cicada::BufferedSerial"* %0, i32 0, i32 1, !dbg !3777
  call void @_ZN6Cicada18LineCircularBuffer5flushEv(%"class.Cicada::LineCircularBuffer"* noundef nonnull align 8 dereferenceable(46) %2), !dbg !3778
  call void @_Z17eEnableInterruptsv() #23, !dbg !3779
  ret void, !dbg !3780
}

; Function Attrs: mustprogress noinline nounwind
define dso_local noundef i64 @_ZN6Cicada14BufferedSerial14readBufferSizeEv(%"class.Cicada::BufferedSerial"* noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #4 align 2 !dbg !3781 {
  call void @llvm.dbg.value(metadata %"class.Cicada::BufferedSerial"* %0, metadata !3783, metadata !DIExpression()), !dbg !3784
  %2 = getelementptr inbounds %"class.Cicada::BufferedSerial", %"class.Cicada::BufferedSerial"* %0, i32 0, i32 1, !dbg !3785
  %3 = bitcast %"class.Cicada::LineCircularBuffer"* %2 to %"class.Cicada::CircularBuffer"*, !dbg !3785
  %4 = call noundef i64 @_ZNK6Cicada14CircularBufferIcE4sizeEv(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %3), !dbg !3786
  ret i64 %4, !dbg !3787
}

; Function Attrs: mustprogress noinline nounwind
define dso_local noundef i64 @_ZN6Cicada14BufferedSerial15writeBufferSizeEv(%"class.Cicada::BufferedSerial"* noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #4 align 2 !dbg !3788 {
  call void @llvm.dbg.value(metadata %"class.Cicada::BufferedSerial"* %0, metadata !3790, metadata !DIExpression()), !dbg !3791
  %2 = getelementptr inbounds %"class.Cicada::BufferedSerial", %"class.Cicada::BufferedSerial"* %0, i32 0, i32 2, !dbg !3792
  %3 = bitcast %"class.Cicada::LineCircularBuffer"* %2 to %"class.Cicada::CircularBuffer"*, !dbg !3792
  %4 = call noundef i64 @_ZNK6Cicada14CircularBufferIcE4sizeEv(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %3), !dbg !3793
  ret i64 %4, !dbg !3794
}

; Function Attrs: noinline nounwind
define linkonce_odr dso_local noundef %"class.Cicada::BufferedSerial"* @_ZThn4_N6Cicada14BufferedSerialD1Ev(%"class.Cicada::BufferedSerial"* noundef %0) unnamed_addr #3 comdat align 2 !dbg !3795 {
  %2 = getelementptr inbounds %"class.Cicada::BufferedSerial", %"class.Cicada::BufferedSerial"* %0, i32 -1, i32 2, i32 1, !dbg !3796
  %3 = bitcast i16* %2 to %"class.Cicada::BufferedSerial"*, !dbg !3796
  %4 = tail call noundef %"class.Cicada::BufferedSerial"* @_ZN6Cicada14BufferedSerialD2Ev(%"class.Cicada::BufferedSerial"* noundef nonnull align 8 dereferenceable(104) %3) #23, !dbg !3796
  ret %"class.Cicada::BufferedSerial"* undef, !dbg !3796
}

; Function Attrs: noinline nounwind
define linkonce_odr dso_local void @_ZThn4_N6Cicada14BufferedSerialD0Ev(%"class.Cicada::BufferedSerial"* noundef %0) unnamed_addr #3 comdat align 2 !dbg !3797 {
  %2 = getelementptr inbounds %"class.Cicada::BufferedSerial", %"class.Cicada::BufferedSerial"* %0, i32 -1, i32 2, i32 1, !dbg !3798
  %3 = bitcast i16* %2 to %"class.Cicada::BufferedSerial"*, !dbg !3798
  tail call void @_ZN6Cicada14BufferedSerialD0Ev(%"class.Cicada::BufferedSerial"* noundef nonnull align 8 dereferenceable(104) %3) #23, !dbg !3798
  ret void, !dbg !3798
}

; Function Attrs: mustprogress noinline nounwind
define linkonce_odr dso_local noundef i64 @_ZNK6Cicada14CircularBufferIcE4sizeEv(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #4 comdat align 2 !dbg !3799 {
  call void @llvm.dbg.value(metadata %"class.Cicada::CircularBuffer"* %0, metadata !3801, metadata !DIExpression()), !dbg !3802
  %2 = getelementptr inbounds %"class.Cicada::CircularBuffer", %"class.Cicada::CircularBuffer"* %0, i32 0, i32 5, !dbg !3803
  %3 = load i64, i64* %2, align 8, !dbg !3803, !tbaa !3804
  ret i64 %3, !dbg !3805
}

; Function Attrs: mustprogress noinline nounwind
define linkonce_odr dso_local void @_ZN6Cicada18LineCircularBuffer5flushEv(%"class.Cicada::LineCircularBuffer"* noundef nonnull align 8 dereferenceable(46) %0) unnamed_addr #4 comdat align 2 !dbg !3806 {
  call void @llvm.dbg.value(metadata %"class.Cicada::LineCircularBuffer"* %0, metadata !3808, metadata !DIExpression()), !dbg !3810
  %2 = getelementptr inbounds %"class.Cicada::LineCircularBuffer", %"class.Cicada::LineCircularBuffer"* %0, i32 0, i32 1, !dbg !3811
  store i16 0, i16* %2, align 4, !dbg !3812, !tbaa !3813
  %3 = bitcast %"class.Cicada::LineCircularBuffer"* %0 to %"class.Cicada::CircularBuffer"*, !dbg !3815
  call void @_ZN6Cicada14CircularBufferIcE5flushEv(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %3), !dbg !3815
  ret void, !dbg !3816
}

; Function Attrs: mustprogress noinline nounwind
define linkonce_odr dso_local void @_ZN6Cicada14CircularBufferIcE5flushEv(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #4 comdat align 2 !dbg !3817 {
  call void @llvm.dbg.value(metadata %"class.Cicada::CircularBuffer"* %0, metadata !3819, metadata !DIExpression()), !dbg !3820
  %2 = getelementptr inbounds %"class.Cicada::CircularBuffer", %"class.Cicada::CircularBuffer"* %0, i32 0, i32 2, !dbg !3821
  %3 = bitcast i64* %2 to i8*, !dbg !3822
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !dbg !3823
  ret void, !dbg !3822
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: mustprogress noinline nounwind
define linkonce_odr dso_local noundef zeroext i16 @_ZNK6Cicada18LineCircularBuffer16numBufferedLinesEv(%"class.Cicada::LineCircularBuffer"* noundef nonnull align 8 dereferenceable(46) %0) local_unnamed_addr #4 comdat align 2 !dbg !3824 {
  call void @llvm.dbg.value(metadata %"class.Cicada::LineCircularBuffer"* %0, metadata !3826, metadata !DIExpression()), !dbg !3828
  %2 = getelementptr inbounds %"class.Cicada::LineCircularBuffer", %"class.Cicada::LineCircularBuffer"* %0, i32 0, i32 1, !dbg !3829
  %3 = load i16, i16* %2, align 4, !dbg !3829, !tbaa !3813
  ret i16 %3, !dbg !3830
}

; Function Attrs: mustprogress noinline nounwind
define dso_local void @_ZN6Cicada14BufferedSerial12copyToBufferEh(%"class.Cicada::BufferedSerial"* noundef nonnull align 8 dereferenceable(104) %0, i8 noundef zeroext %1) local_unnamed_addr #4 align 2 !dbg !3831 {
  call void @llvm.dbg.value(metadata %"class.Cicada::BufferedSerial"* %0, metadata !3833, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i8 %1, metadata !3834, metadata !DIExpression()), !dbg !3835
  call void @_Z18eDisableInterruptsv() #23, !dbg !3836
  %3 = getelementptr inbounds %"class.Cicada::BufferedSerial", %"class.Cicada::BufferedSerial"* %0, i32 0, i32 2, !dbg !3837
  call void @_ZN6Cicada18LineCircularBuffer4pushEc(%"class.Cicada::LineCircularBuffer"* noundef nonnull align 8 dereferenceable(46) %3, i8 noundef zeroext %1), !dbg !3838
  call void @_Z17eEnableInterruptsv() #23, !dbg !3839
  ret void, !dbg !3840
}

; Function Attrs: mustprogress noinline nounwind
define linkonce_odr dso_local void @_ZN6Cicada18LineCircularBuffer4pushEc(%"class.Cicada::LineCircularBuffer"* noundef nonnull align 8 dereferenceable(46) %0, i8 noundef zeroext %1) unnamed_addr #4 comdat align 2 !dbg !3841 {
  call void @llvm.dbg.value(metadata %"class.Cicada::LineCircularBuffer"* %0, metadata !3843, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i8 %1, metadata !3844, metadata !DIExpression()), !dbg !3845
  %3 = bitcast %"class.Cicada::LineCircularBuffer"* %0 to %"class.Cicada::CircularBuffer"*, !dbg !3846
  call void @_ZN6Cicada14CircularBufferIcE4pushEc(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %3, i8 noundef zeroext %1), !dbg !3846
  %4 = icmp eq i8 %1, 10, !dbg !3847
  br i1 %4, label %5, label %9, !dbg !3849

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.Cicada::LineCircularBuffer", %"class.Cicada::LineCircularBuffer"* %0, i32 0, i32 1, !dbg !3850
  %7 = load i16, i16* %6, align 4, !dbg !3852, !tbaa !3813
  %8 = add i16 %7, 1, !dbg !3852
  store i16 %8, i16* %6, align 4, !dbg !3852, !tbaa !3813
  br label %9, !dbg !3853

9:                                                ; preds = %5, %2
  ret void, !dbg !3854
}

; Function Attrs: mustprogress noinline nounwind
define linkonce_odr dso_local void @_ZN6Cicada14CircularBufferIcE4pushEc(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %0, i8 noundef zeroext %1) unnamed_addr #4 comdat align 2 !dbg !3855 {
  call void @llvm.dbg.value(metadata %"class.Cicada::CircularBuffer"* %0, metadata !3857, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i8 %1, metadata !3858, metadata !DIExpression()), !dbg !3859
  %3 = getelementptr inbounds %"class.Cicada::CircularBuffer", %"class.Cicada::CircularBuffer"* %0, i32 0, i32 6, !dbg !3860
  %4 = load i8*, i8** %3, align 8, !dbg !3860, !tbaa !3861
  %5 = getelementptr inbounds %"class.Cicada::CircularBuffer", %"class.Cicada::CircularBuffer"* %0, i32 0, i32 2, !dbg !3862
  %6 = load i64, i64* %5, align 8, !dbg !3862, !tbaa !3863
  %7 = trunc i64 %6 to i32, !dbg !3860
  %8 = getelementptr inbounds i8, i8* %4, i32 %7, !dbg !3860
  store i8 %1, i8* %8, align 1, !dbg !3864, !tbaa !1386
  call void @_ZN6Cicada14CircularBufferIcE20incrementOrResetHeadERy(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %0, i64* noundef nonnull align 8 dereferenceable(8) %5), !dbg !3865
  %9 = getelementptr inbounds %"class.Cicada::CircularBuffer", %"class.Cicada::CircularBuffer"* %0, i32 0, i32 4, !dbg !3866
  %10 = load i64, i64* %9, align 8, !dbg !3866, !tbaa !3470
  %11 = getelementptr inbounds %"class.Cicada::CircularBuffer", %"class.Cicada::CircularBuffer"* %0, i32 0, i32 5, !dbg !3868
  %12 = load i64, i64* %11, align 8, !dbg !3868, !tbaa !3804
  %13 = icmp ult i64 %10, %12, !dbg !3869
  br i1 %13, label %14, label %16, !dbg !3870

14:                                               ; preds = %2
  %15 = add i64 %10, 1, !dbg !3871
  store i64 %15, i64* %9, align 8, !dbg !3871, !tbaa !3470
  br label %16, !dbg !3872

16:                                               ; preds = %14, %2
  ret void, !dbg !3873
}

; Function Attrs: mustprogress noinline nounwind
define linkonce_odr dso_local void @_ZN6Cicada14CircularBufferIcE20incrementOrResetHeadERy(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %0, i64* noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 !dbg !3874 {
  call void @llvm.dbg.value(metadata %"class.Cicada::CircularBuffer"* %0, metadata !3876, metadata !DIExpression()), !dbg !3878
  call void @llvm.dbg.value(metadata i64* %1, metadata !3877, metadata !DIExpression()), !dbg !3878
  %3 = load i64, i64* %1, align 8, !dbg !3879, !tbaa !3880
  %4 = add i64 %3, 1, !dbg !3879
  store i64 %4, i64* %1, align 8, !dbg !3879, !tbaa !3880
  %5 = getelementptr inbounds %"class.Cicada::CircularBuffer", %"class.Cicada::CircularBuffer"* %0, i32 0, i32 5, !dbg !3881
  %6 = load i64, i64* %5, align 8, !dbg !3881, !tbaa !3804
  %7 = icmp ult i64 %4, %6, !dbg !3883
  %8 = select i1 %7, i64 %4, i64 0, !dbg !3884
  store i64 %8, i64* %1, align 8, !dbg !3878
  ret void, !dbg !3885
}

; Function Attrs: mustprogress noinline nounwind
define linkonce_odr dso_local noundef zeroext i8 @_ZN6Cicada18LineCircularBuffer4pullEv(%"class.Cicada::LineCircularBuffer"* noundef nonnull align 8 dereferenceable(46) %0) unnamed_addr #4 comdat align 2 !dbg !3886 {
  call void @llvm.dbg.value(metadata %"class.Cicada::LineCircularBuffer"* %0, metadata !3888, metadata !DIExpression()), !dbg !3890
  %2 = bitcast %"class.Cicada::LineCircularBuffer"* %0 to %"class.Cicada::CircularBuffer"*, !dbg !3891
  %3 = call noundef zeroext i8 @_ZN6Cicada14CircularBufferIcE4pullEv(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %2), !dbg !3891
  call void @llvm.dbg.value(metadata i8 %3, metadata !3889, metadata !DIExpression()), !dbg !3890
  %4 = icmp eq i8 %3, 10, !dbg !3892
  br i1 %4, label %5, label %9, !dbg !3894

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.Cicada::LineCircularBuffer", %"class.Cicada::LineCircularBuffer"* %0, i32 0, i32 1, !dbg !3895
  %7 = load i16, i16* %6, align 4, !dbg !3897, !tbaa !3813
  %8 = add i16 %7, -1, !dbg !3897
  store i16 %8, i16* %6, align 4, !dbg !3897, !tbaa !3813
  br label %9, !dbg !3898

9:                                                ; preds = %5, %1
  ret i8 %3, !dbg !3899
}

; Function Attrs: mustprogress noinline nounwind
define linkonce_odr dso_local noundef zeroext i8 @_ZN6Cicada14CircularBufferIcE4pullEv(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #4 comdat align 2 !dbg !3900 {
  call void @llvm.dbg.value(metadata %"class.Cicada::CircularBuffer"* %0, metadata !3902, metadata !DIExpression()), !dbg !3904
  %2 = getelementptr inbounds %"class.Cicada::CircularBuffer", %"class.Cicada::CircularBuffer"* %0, i32 0, i32 6, !dbg !3905
  %3 = load i8*, i8** %2, align 8, !dbg !3905, !tbaa !3861
  %4 = getelementptr inbounds %"class.Cicada::CircularBuffer", %"class.Cicada::CircularBuffer"* %0, i32 0, i32 3, !dbg !3906
  %5 = load i64, i64* %4, align 8, !dbg !3906, !tbaa !3907
  %6 = trunc i64 %5 to i32, !dbg !3905
  %7 = getelementptr inbounds i8, i8* %3, i32 %6, !dbg !3905
  %8 = load i8, i8* %7, align 1, !dbg !3905, !tbaa !1386
  call void @llvm.dbg.value(metadata i8 %8, metadata !3903, metadata !DIExpression()), !dbg !3904
  call void @_ZN6Cicada14CircularBufferIcE20incrementOrResetHeadERy(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %0, i64* noundef nonnull align 8 dereferenceable(8) %4), !dbg !3908
  %9 = getelementptr inbounds %"class.Cicada::CircularBuffer", %"class.Cicada::CircularBuffer"* %0, i32 0, i32 4, !dbg !3909
  %10 = load i64, i64* %9, align 8, !dbg !3909, !tbaa !3470
  %11 = icmp eq i64 %10, 0, !dbg !3911
  br i1 %11, label %14, label %12, !dbg !3912

12:                                               ; preds = %1
  %13 = add i64 %10, -1, !dbg !3913
  store i64 %13, i64* %9, align 8, !dbg !3913, !tbaa !3470
  br label %14, !dbg !3914

14:                                               ; preds = %12, %1
  ret i8 %8, !dbg !3915
}

; Function Attrs: mustprogress noinline nounwind
define linkonce_odr dso_local noundef i64 @_ZNK6Cicada14CircularBufferIcE14spaceAvailableEv(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #4 comdat align 2 !dbg !3916 {
  call void @llvm.dbg.value(metadata %"class.Cicada::CircularBuffer"* %0, metadata !3918, metadata !DIExpression()), !dbg !3919
  %2 = getelementptr inbounds %"class.Cicada::CircularBuffer", %"class.Cicada::CircularBuffer"* %0, i32 0, i32 5, !dbg !3920
  %3 = load i64, i64* %2, align 8, !dbg !3920, !tbaa !3804
  %4 = getelementptr inbounds %"class.Cicada::CircularBuffer", %"class.Cicada::CircularBuffer"* %0, i32 0, i32 4, !dbg !3921
  %5 = load i64, i64* %4, align 8, !dbg !3921, !tbaa !3470
  %6 = sub i64 %3, %5, !dbg !3922
  ret i64 %6, !dbg !3923
}

; Function Attrs: noinline nounwind
define dso_local noundef nonnull %"class.Cicada::BufferedSerial"* @_ZN6Cicada14BufferedSerialC2EPcS1_yy(%"class.Cicada::BufferedSerial"* noundef nonnull returned align 8 dereferenceable(104) %0, i8* noundef %1, i8* noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #3 align 2 !dbg !3924 {
  call void @llvm.dbg.value(metadata %"class.Cicada::BufferedSerial"* %0, metadata !3926, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i8* %1, metadata !3927, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i8* %2, metadata !3928, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i64 %3, metadata !3929, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i64 %4, metadata !3930, metadata !DIExpression()), !dbg !3931
  %6 = getelementptr inbounds %"class.Cicada::BufferedSerial", %"class.Cicada::BufferedSerial"* %0, i32 0, i32 0, !dbg !3932
  %7 = call noundef %"class.Cicada::IBufferedSerial"* @_ZN6Cicada15IBufferedSerialC2Ev(%"class.Cicada::IBufferedSerial"* noundef nonnull align 4 dereferenceable(8) %6) #23, !dbg !3933
  %8 = getelementptr inbounds %"class.Cicada::BufferedSerial", %"class.Cicada::BufferedSerial"* %0, i32 0, i32 0, i32 0, i32 0, !dbg !3932
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [17 x i8*], [12 x i8*] }, { [17 x i8*], [12 x i8*] }* @_ZTVN6Cicada14BufferedSerialE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %8, align 8, !dbg !3932, !tbaa !1350
  %9 = getelementptr inbounds %"class.Cicada::BufferedSerial", %"class.Cicada::BufferedSerial"* %0, i32 0, i32 0, i32 1, i32 0, !dbg !3932
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [17 x i8*], [12 x i8*] }, { [17 x i8*], [12 x i8*] }* @_ZTVN6Cicada14BufferedSerialE, i32 0, inrange i32 1, i32 2) to i32 (...)**), i32 (...)*** %9, align 4, !dbg !3932, !tbaa !1350
  %10 = getelementptr inbounds %"class.Cicada::BufferedSerial", %"class.Cicada::BufferedSerial"* %0, i32 0, i32 1, !dbg !3934
  %11 = call noundef %"class.Cicada::LineCircularBuffer"* @_ZN6Cicada18LineCircularBufferC2EPcy(%"class.Cicada::LineCircularBuffer"* noundef nonnull align 8 dereferenceable(46) %10, i8* noundef %1, i64 noundef %3), !dbg !3934
  %12 = getelementptr inbounds %"class.Cicada::BufferedSerial", %"class.Cicada::BufferedSerial"* %0, i32 0, i32 2, !dbg !3935
  %13 = call noundef %"class.Cicada::LineCircularBuffer"* @_ZN6Cicada18LineCircularBufferC2EPcy(%"class.Cicada::LineCircularBuffer"* noundef nonnull align 8 dereferenceable(46) %12, i8* noundef %2, i64 noundef %4), !dbg !3935
  ret %"class.Cicada::BufferedSerial"* %0, !dbg !3936
}

; Function Attrs: noinline nounwind
define linkonce_odr dso_local noundef %"class.Cicada::IBufferedSerial"* @_ZN6Cicada15IBufferedSerialC2Ev(%"class.Cicada::IBufferedSerial"* noundef nonnull returned align 4 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !dbg !3937 {
  call void @llvm.dbg.value(metadata %"class.Cicada::IBufferedSerial"* %0, metadata !3940, metadata !DIExpression()), !dbg !3941
  %2 = getelementptr inbounds %"class.Cicada::IBufferedSerial", %"class.Cicada::IBufferedSerial"* %0, i32 0, i32 0, !dbg !3942
  %3 = call noundef %"class.Cicada::ICommDevice"* @_ZN6Cicada11ICommDeviceC2Ev(%"class.Cicada::ICommDevice"* noundef nonnull align 4 dereferenceable(4) %2) #23, !dbg !3942
  %4 = getelementptr inbounds %"class.Cicada::IBufferedSerial", %"class.Cicada::IBufferedSerial"* %0, i32 0, i32 1, !dbg !3942
  %5 = call noundef %"class.Cicada::ICommDevice"* @_ZN6Cicada7ISerialC2Ev(%"class.Cicada::ICommDevice"* noundef nonnull align 4 dereferenceable(4) %4) #23, !dbg !3942
  %6 = getelementptr inbounds %"class.Cicada::IBufferedSerial", %"class.Cicada::IBufferedSerial"* %0, i32 0, i32 0, i32 0, !dbg !3942
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [17 x i8*], [12 x i8*] }, { [17 x i8*], [12 x i8*] }* @_ZTVN6Cicada15IBufferedSerialE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %6, align 4, !dbg !3942, !tbaa !1350
  %7 = getelementptr %"class.Cicada::ICommDevice", %"class.Cicada::ICommDevice"* %4, i32 0, i32 0, !dbg !3942
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [17 x i8*], [12 x i8*] }, { [17 x i8*], [12 x i8*] }* @_ZTVN6Cicada15IBufferedSerialE, i32 0, inrange i32 1, i32 2) to i32 (...)**), i32 (...)*** %7, align 4, !dbg !3942, !tbaa !1350
  ret %"class.Cicada::IBufferedSerial"* %0, !dbg !3942
}

; Function Attrs: noinline nounwind
define linkonce_odr dso_local noundef %"class.Cicada::LineCircularBuffer"* @_ZN6Cicada18LineCircularBufferC2EPcy(%"class.Cicada::LineCircularBuffer"* noundef nonnull returned align 8 dereferenceable(46) %0, i8* noundef %1, i64 noundef %2) unnamed_addr #3 comdat align 2 !dbg !3943 {
  call void @llvm.dbg.value(metadata %"class.Cicada::LineCircularBuffer"* %0, metadata !3945, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata i8* %1, metadata !3946, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata i64 %2, metadata !3947, metadata !DIExpression()), !dbg !3948
  %4 = bitcast %"class.Cicada::LineCircularBuffer"* %0 to %"class.Cicada::CircularBuffer"*, !dbg !3949
  %5 = call noundef %"class.Cicada::CircularBuffer"* @_ZN6Cicada14CircularBufferIcEC2EPcy(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %4, i8* noundef %1, i64 noundef %2), !dbg !3950
  %6 = getelementptr inbounds %"class.Cicada::LineCircularBuffer", %"class.Cicada::LineCircularBuffer"* %0, i32 0, i32 0, i32 0, !dbg !3949
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [15 x i8*] }, { [15 x i8*] }* @_ZTVN6Cicada18LineCircularBufferE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %6, align 8, !dbg !3949, !tbaa !1350
  %7 = getelementptr inbounds %"class.Cicada::LineCircularBuffer", %"class.Cicada::LineCircularBuffer"* %0, i32 0, i32 1, !dbg !3951
  store i16 0, i16* %7, align 4, !dbg !3951, !tbaa !3813
  ret %"class.Cicada::LineCircularBuffer"* %0, !dbg !3952
}

; Function Attrs: noinline nounwind
define linkonce_odr dso_local noundef %"class.Cicada::CircularBuffer"* @_ZN6Cicada14CircularBufferIcEC2EPcy(%"class.Cicada::CircularBuffer"* noundef nonnull returned align 8 dereferenceable(44) %0, i8* noundef %1, i64 noundef %2) unnamed_addr #3 comdat align 2 !dbg !3953 {
  call void @llvm.dbg.value(metadata %"class.Cicada::CircularBuffer"* %0, metadata !3955, metadata !DIExpression()), !dbg !3958
  call void @llvm.dbg.value(metadata i8* %1, metadata !3956, metadata !DIExpression()), !dbg !3958
  call void @llvm.dbg.value(metadata i64 %2, metadata !3957, metadata !DIExpression()), !dbg !3958
  %4 = getelementptr inbounds %"class.Cicada::CircularBuffer", %"class.Cicada::CircularBuffer"* %0, i32 0, i32 0, !dbg !3959
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [15 x i8*] }, { [15 x i8*] }* @_ZTVN6Cicada14CircularBufferIcEE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %4, align 8, !dbg !3959, !tbaa !1350
  %5 = getelementptr inbounds %"class.Cicada::CircularBuffer", %"class.Cicada::CircularBuffer"* %0, i32 0, i32 2, !dbg !3960
  %6 = getelementptr inbounds %"class.Cicada::CircularBuffer", %"class.Cicada::CircularBuffer"* %0, i32 0, i32 5, !dbg !3961
  %7 = bitcast i64* %5 to i8*, !dbg !3961
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false), !dbg !3962
  store i64 %2, i64* %6, align 8, !dbg !3961, !tbaa !3804
  %8 = getelementptr inbounds %"class.Cicada::CircularBuffer", %"class.Cicada::CircularBuffer"* %0, i32 0, i32 6, !dbg !3963
  store i8* %1, i8** %8, align 8, !dbg !3963, !tbaa !3861
  ret %"class.Cicada::CircularBuffer"* %0, !dbg !3964
}

; Function Attrs: noinline nounwind
define linkonce_odr dso_local void @_ZN6Cicada18LineCircularBufferD0Ev(%"class.Cicada::LineCircularBuffer"* noundef nonnull align 8 dereferenceable(46) %0) unnamed_addr #3 comdat align 2 !dbg !3965 {
  call void @llvm.dbg.value(metadata %"class.Cicada::LineCircularBuffer"* %0, metadata !3968, metadata !DIExpression()), !dbg !3969
  %2 = bitcast %"class.Cicada::LineCircularBuffer"* %0 to %"class.Cicada::CircularBuffer"*, !dbg !3970
  %3 = call noundef %"class.Cicada::CircularBuffer"* @_ZN6Cicada14CircularBufferIcED2Ev(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(46) %2) #23, !dbg !3970
  %4 = bitcast %"class.Cicada::LineCircularBuffer"* %0 to i8*, !dbg !3970
  call void @_ZdlPv(i8* noundef %4) #24, !dbg !3970
  ret void, !dbg !3970
}

; Function Attrs: mustprogress noinline nounwind
define linkonce_odr dso_local noundef i64 @_ZN6Cicada18LineCircularBuffer4pushEPKcy(%"class.Cicada::LineCircularBuffer"* noundef nonnull align 8 dereferenceable(46) %0, i8* noundef %1, i64 noundef %2) unnamed_addr #4 comdat align 2 !dbg !3971 {
  call void @llvm.dbg.value(metadata %"class.Cicada::LineCircularBuffer"* %0, metadata !3973, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata i8* %1, metadata !3974, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata i64 %2, metadata !3975, metadata !DIExpression()), !dbg !3977
  %4 = bitcast %"class.Cicada::LineCircularBuffer"* %0 to %"class.Cicada::CircularBuffer"*, !dbg !3978
  %5 = call noundef i64 @_ZNK6Cicada14CircularBufferIcE14spaceAvailableEv(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %4), !dbg !3978
  %6 = icmp ult i64 %5, %2, !dbg !3980
  br i1 %6, label %7, label %9, !dbg !3981

7:                                                ; preds = %3
  %8 = call noundef i64 @_ZNK6Cicada14CircularBufferIcE14spaceAvailableEv(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %4), !dbg !3982
  call void @llvm.dbg.value(metadata i64 %8, metadata !3975, metadata !DIExpression()), !dbg !3977
  br label %9, !dbg !3983

9:                                                ; preds = %7, %3
  %10 = phi i64 [ %8, %7 ], [ %2, %3 ]
  call void @llvm.dbg.value(metadata i64 %10, metadata !3975, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata i64 0, metadata !3976, metadata !DIExpression()), !dbg !3977
  %11 = icmp eq i64 %10, 0, !dbg !3984
  br i1 %11, label %24, label %12, !dbg !3985

12:                                               ; preds = %9
  %13 = bitcast %"class.Cicada::LineCircularBuffer"* %0 to void (%"class.Cicada::LineCircularBuffer"*, i8)***
  br label %14, !dbg !3985

14:                                               ; preds = %12, %14
  %15 = phi i64 [ 0, %12 ], [ %16, %14 ]
  call void @llvm.dbg.value(metadata i64 %15, metadata !3976, metadata !DIExpression()), !dbg !3977
  %16 = add nuw i64 %15, 1, !dbg !3986
  call void @llvm.dbg.value(metadata i64 %16, metadata !3976, metadata !DIExpression()), !dbg !3977
  %17 = trunc i64 %15 to i32, !dbg !3988
  %18 = getelementptr inbounds i8, i8* %1, i32 %17, !dbg !3988
  %19 = load i8, i8* %18, align 1, !dbg !3988, !tbaa !1386
  %20 = load void (%"class.Cicada::LineCircularBuffer"*, i8)**, void (%"class.Cicada::LineCircularBuffer"*, i8)*** %13, align 8, !dbg !3989, !tbaa !1350
  %21 = getelementptr inbounds void (%"class.Cicada::LineCircularBuffer"*, i8)*, void (%"class.Cicada::LineCircularBuffer"*, i8)** %20, i32 3, !dbg !3989
  %22 = load void (%"class.Cicada::LineCircularBuffer"*, i8)*, void (%"class.Cicada::LineCircularBuffer"*, i8)** %21, align 4, !dbg !3989
  call void %22(%"class.Cicada::LineCircularBuffer"* noundef nonnull align 8 dereferenceable(46) %0, i8 noundef zeroext %19) #23, !dbg !3989
  %23 = icmp ult i64 %16, %10, !dbg !3984
  br i1 %23, label %14, label %24, !dbg !3985, !llvm.loop !3990

24:                                               ; preds = %14, %9
  %25 = phi i64 [ 0, %9 ], [ %10, %14 ], !dbg !3977
  ret i64 %25, !dbg !3992
}

; Function Attrs: mustprogress noinline nounwind
define linkonce_odr dso_local noundef i64 @_ZN6Cicada18LineCircularBuffer4pullEPcy(%"class.Cicada::LineCircularBuffer"* noundef nonnull align 8 dereferenceable(46) %0, i8* noundef %1, i64 noundef %2) unnamed_addr #4 comdat align 2 !dbg !3993 {
  call void @llvm.dbg.value(metadata %"class.Cicada::LineCircularBuffer"* %0, metadata !3995, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.value(metadata i8* %1, metadata !3996, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.value(metadata i64 %2, metadata !3997, metadata !DIExpression()), !dbg !3999
  %4 = bitcast %"class.Cicada::LineCircularBuffer"* %0 to %"class.Cicada::CircularBuffer"*, !dbg !4000
  %5 = call noundef i64 @_ZNK6Cicada14CircularBufferIcE14bytesAvailableEv(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %4), !dbg !4000
  %6 = icmp ult i64 %5, %2, !dbg !4002
  br i1 %6, label %7, label %9, !dbg !4003

7:                                                ; preds = %3
  %8 = call noundef i64 @_ZNK6Cicada14CircularBufferIcE14bytesAvailableEv(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %4), !dbg !4004
  call void @llvm.dbg.value(metadata i64 %8, metadata !3997, metadata !DIExpression()), !dbg !3999
  br label %9, !dbg !4005

9:                                                ; preds = %7, %3
  %10 = phi i64 [ %8, %7 ], [ %2, %3 ]
  call void @llvm.dbg.value(metadata i64 %10, metadata !3997, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.value(metadata i64 0, metadata !3998, metadata !DIExpression()), !dbg !3999
  %11 = icmp eq i64 %10, 0, !dbg !4006
  br i1 %11, label %24, label %12, !dbg !4007

12:                                               ; preds = %9
  %13 = bitcast %"class.Cicada::LineCircularBuffer"* %0 to i8 (%"class.Cicada::LineCircularBuffer"*)***
  br label %14, !dbg !4007

14:                                               ; preds = %12, %14
  %15 = phi i64 [ 0, %12 ], [ %20, %14 ]
  call void @llvm.dbg.value(metadata i64 %15, metadata !3998, metadata !DIExpression()), !dbg !3999
  %16 = load i8 (%"class.Cicada::LineCircularBuffer"*)**, i8 (%"class.Cicada::LineCircularBuffer"*)*** %13, align 8, !dbg !4008, !tbaa !1350
  %17 = getelementptr inbounds i8 (%"class.Cicada::LineCircularBuffer"*)*, i8 (%"class.Cicada::LineCircularBuffer"*)** %16, i32 5, !dbg !4008
  %18 = load i8 (%"class.Cicada::LineCircularBuffer"*)*, i8 (%"class.Cicada::LineCircularBuffer"*)** %17, align 4, !dbg !4008
  %19 = call noundef zeroext i8 %18(%"class.Cicada::LineCircularBuffer"* noundef nonnull align 8 dereferenceable(46) %0) #23, !dbg !4008
  %20 = add nuw i64 %15, 1, !dbg !4010
  call void @llvm.dbg.value(metadata i64 %20, metadata !3998, metadata !DIExpression()), !dbg !3999
  %21 = trunc i64 %15 to i32, !dbg !4011
  %22 = getelementptr inbounds i8, i8* %1, i32 %21, !dbg !4011
  store i8 %19, i8* %22, align 1, !dbg !4012, !tbaa !1386
  %23 = icmp ult i64 %20, %10, !dbg !4006
  br i1 %23, label %14, label %24, !dbg !4007, !llvm.loop !4013

24:                                               ; preds = %14, %9
  %25 = phi i64 [ 0, %9 ], [ %10, %14 ], !dbg !3999
  ret i64 %25, !dbg !4015
}

; Function Attrs: mustprogress noinline nounwind
define linkonce_odr dso_local noundef zeroext i8 @_ZN6Cicada14CircularBufferIcE4readEv(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #4 comdat align 2 !dbg !4016 {
  call void @llvm.dbg.value(metadata %"class.Cicada::CircularBuffer"* %0, metadata !4018, metadata !DIExpression()), !dbg !4019
  %2 = getelementptr inbounds %"class.Cicada::CircularBuffer", %"class.Cicada::CircularBuffer"* %0, i32 0, i32 6, !dbg !4020
  %3 = load i8*, i8** %2, align 8, !dbg !4020, !tbaa !3861
  %4 = getelementptr inbounds %"class.Cicada::CircularBuffer", %"class.Cicada::CircularBuffer"* %0, i32 0, i32 3, !dbg !4021
  %5 = load i64, i64* %4, align 8, !dbg !4021, !tbaa !3907
  %6 = trunc i64 %5 to i32, !dbg !4020
  %7 = getelementptr inbounds i8, i8* %3, i32 %6, !dbg !4020
  %8 = load i8, i8* %7, align 1, !dbg !4020, !tbaa !1386
  ret i8 %8, !dbg !4022
}

; Function Attrs: mustprogress noinline nounwind
define linkonce_odr dso_local noundef zeroext i1 @_ZNK6Cicada14CircularBufferIcE7isEmptyEv(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #4 comdat align 2 !dbg !4023 {
  call void @llvm.dbg.value(metadata %"class.Cicada::CircularBuffer"* %0, metadata !4025, metadata !DIExpression()), !dbg !4026
  %2 = getelementptr inbounds %"class.Cicada::CircularBuffer", %"class.Cicada::CircularBuffer"* %0, i32 0, i32 4, !dbg !4027
  %3 = load i64, i64* %2, align 8, !dbg !4027, !tbaa !3470
  %4 = icmp eq i64 %3, 0, !dbg !4028
  ret i1 %4, !dbg !4029
}

; Function Attrs: mustprogress noinline nounwind
define linkonce_odr dso_local noundef zeroext i1 @_ZNK6Cicada14CircularBufferIcE6isFullEv(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #4 comdat align 2 !dbg !4030 {
  call void @llvm.dbg.value(metadata %"class.Cicada::CircularBuffer"* %0, metadata !4032, metadata !DIExpression()), !dbg !4033
  %2 = getelementptr inbounds %"class.Cicada::CircularBuffer", %"class.Cicada::CircularBuffer"* %0, i32 0, i32 4, !dbg !4034
  %3 = load i64, i64* %2, align 8, !dbg !4034, !tbaa !3470
  %4 = getelementptr inbounds %"class.Cicada::CircularBuffer", %"class.Cicada::CircularBuffer"* %0, i32 0, i32 5, !dbg !4035
  %5 = load i64, i64* %4, align 8, !dbg !4035, !tbaa !3804
  %6 = icmp eq i64 %3, %5, !dbg !4036
  ret i1 %6, !dbg !4037
}

; Function Attrs: noinline nounwind
define linkonce_odr dso_local void @_ZN6Cicada14CircularBufferIcED0Ev(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #3 comdat align 2 !dbg !4038 {
  call void @llvm.dbg.value(metadata %"class.Cicada::CircularBuffer"* %0, metadata !4040, metadata !DIExpression()), !dbg !4041
  %2 = call noundef %"class.Cicada::CircularBuffer"* @_ZN6Cicada14CircularBufferIcED2Ev(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %0) #23, !dbg !4042
  %3 = bitcast %"class.Cicada::CircularBuffer"* %0 to i8*, !dbg !4042
  call void @_ZdlPv(i8* noundef %3) #24, !dbg !4042
  ret void, !dbg !4043
}

; Function Attrs: mustprogress noinline nounwind
define linkonce_odr dso_local noundef i64 @_ZN6Cicada14CircularBufferIcE4pushEPKcy(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %0, i8* noundef %1, i64 noundef %2) unnamed_addr #4 comdat align 2 !dbg !4044 {
  call void @llvm.dbg.value(metadata %"class.Cicada::CircularBuffer"* %0, metadata !4046, metadata !DIExpression()), !dbg !4050
  call void @llvm.dbg.value(metadata i8* %1, metadata !4047, metadata !DIExpression()), !dbg !4050
  call void @llvm.dbg.value(metadata i64 %2, metadata !4048, metadata !DIExpression()), !dbg !4050
  %4 = bitcast %"class.Cicada::CircularBuffer"* %0 to i64 (%"class.Cicada::CircularBuffer"*)***, !dbg !4051
  %5 = load i64 (%"class.Cicada::CircularBuffer"*)**, i64 (%"class.Cicada::CircularBuffer"*)*** %4, align 8, !dbg !4051, !tbaa !1350
  %6 = getelementptr inbounds i64 (%"class.Cicada::CircularBuffer"*)*, i64 (%"class.Cicada::CircularBuffer"*)** %5, i32 11, !dbg !4051
  %7 = load i64 (%"class.Cicada::CircularBuffer"*)*, i64 (%"class.Cicada::CircularBuffer"*)** %6, align 4, !dbg !4051
  %8 = call noundef i64 %7(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %0) #23, !dbg !4051
  %9 = icmp ult i64 %8, %2, !dbg !4053
  br i1 %9, label %10, label %15, !dbg !4054

10:                                               ; preds = %3
  %11 = load i64 (%"class.Cicada::CircularBuffer"*)**, i64 (%"class.Cicada::CircularBuffer"*)*** %4, align 8, !dbg !4055, !tbaa !1350
  %12 = getelementptr inbounds i64 (%"class.Cicada::CircularBuffer"*)*, i64 (%"class.Cicada::CircularBuffer"*)** %11, i32 11, !dbg !4055
  %13 = load i64 (%"class.Cicada::CircularBuffer"*)*, i64 (%"class.Cicada::CircularBuffer"*)** %12, align 4, !dbg !4055
  %14 = call noundef i64 %13(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %0) #23, !dbg !4055
  call void @llvm.dbg.value(metadata i64 %14, metadata !4048, metadata !DIExpression()), !dbg !4050
  br label %15, !dbg !4056

15:                                               ; preds = %10, %3
  %16 = phi i64 [ %14, %10 ], [ %2, %3 ]
  call void @llvm.dbg.value(metadata i64 %16, metadata !4048, metadata !DIExpression()), !dbg !4050
  call void @llvm.dbg.value(metadata i64 0, metadata !4049, metadata !DIExpression()), !dbg !4050
  %17 = icmp eq i64 %16, 0, !dbg !4057
  br i1 %17, label %32, label %18, !dbg !4058

18:                                               ; preds = %15
  %19 = getelementptr inbounds %"class.Cicada::CircularBuffer", %"class.Cicada::CircularBuffer"* %0, i32 0, i32 6
  %20 = getelementptr inbounds %"class.Cicada::CircularBuffer", %"class.Cicada::CircularBuffer"* %0, i32 0, i32 2
  br label %21, !dbg !4058

21:                                               ; preds = %18, %21
  %22 = phi i64 [ 0, %18 ], [ %23, %21 ]
  call void @llvm.dbg.value(metadata i64 %22, metadata !4049, metadata !DIExpression()), !dbg !4050
  %23 = add nuw i64 %22, 1, !dbg !4059
  call void @llvm.dbg.value(metadata i64 %23, metadata !4049, metadata !DIExpression()), !dbg !4050
  %24 = trunc i64 %22 to i32, !dbg !4061
  %25 = getelementptr inbounds i8, i8* %1, i32 %24, !dbg !4061
  %26 = load i8, i8* %25, align 1, !dbg !4061, !tbaa !1386
  %27 = load i8*, i8** %19, align 8, !dbg !4062, !tbaa !3861
  %28 = load i64, i64* %20, align 8, !dbg !4063, !tbaa !3863
  %29 = trunc i64 %28 to i32, !dbg !4062
  %30 = getelementptr inbounds i8, i8* %27, i32 %29, !dbg !4062
  store i8 %26, i8* %30, align 1, !dbg !4064, !tbaa !1386
  call void @_ZN6Cicada14CircularBufferIcE20incrementOrResetHeadERy(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %0, i64* noundef nonnull align 8 dereferenceable(8) %20), !dbg !4065
  %31 = icmp ult i64 %23, %16, !dbg !4057
  br i1 %31, label %21, label %32, !dbg !4058, !llvm.loop !4066

32:                                               ; preds = %21, %15
  %33 = phi i64 [ 0, %15 ], [ %16, %21 ], !dbg !4050
  %34 = getelementptr inbounds %"class.Cicada::CircularBuffer", %"class.Cicada::CircularBuffer"* %0, i32 0, i32 4, !dbg !4068
  %35 = load i64, i64* %34, align 8, !dbg !4069, !tbaa !3470
  %36 = add i64 %35, %33, !dbg !4069
  store i64 %36, i64* %34, align 8, !dbg !4069, !tbaa !3470
  ret i64 %33, !dbg !4070
}

; Function Attrs: mustprogress noinline nounwind
define linkonce_odr dso_local noundef i64 @_ZN6Cicada14CircularBufferIcE4pullEPcy(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %0, i8* noundef %1, i64 noundef %2) unnamed_addr #4 comdat align 2 !dbg !4071 {
  call void @llvm.dbg.value(metadata %"class.Cicada::CircularBuffer"* %0, metadata !4073, metadata !DIExpression()), !dbg !4077
  call void @llvm.dbg.value(metadata i8* %1, metadata !4074, metadata !DIExpression()), !dbg !4077
  call void @llvm.dbg.value(metadata i64 %2, metadata !4075, metadata !DIExpression()), !dbg !4077
  %4 = bitcast %"class.Cicada::CircularBuffer"* %0 to i64 (%"class.Cicada::CircularBuffer"*)***, !dbg !4078
  %5 = load i64 (%"class.Cicada::CircularBuffer"*)**, i64 (%"class.Cicada::CircularBuffer"*)*** %4, align 8, !dbg !4078, !tbaa !1350
  %6 = getelementptr inbounds i64 (%"class.Cicada::CircularBuffer"*)*, i64 (%"class.Cicada::CircularBuffer"*)** %5, i32 10, !dbg !4078
  %7 = load i64 (%"class.Cicada::CircularBuffer"*)*, i64 (%"class.Cicada::CircularBuffer"*)** %6, align 4, !dbg !4078
  %8 = call noundef i64 %7(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %0) #23, !dbg !4078
  %9 = icmp ult i64 %8, %2, !dbg !4080
  br i1 %9, label %10, label %15, !dbg !4081

10:                                               ; preds = %3
  %11 = load i64 (%"class.Cicada::CircularBuffer"*)**, i64 (%"class.Cicada::CircularBuffer"*)*** %4, align 8, !dbg !4082, !tbaa !1350
  %12 = getelementptr inbounds i64 (%"class.Cicada::CircularBuffer"*)*, i64 (%"class.Cicada::CircularBuffer"*)** %11, i32 10, !dbg !4082
  %13 = load i64 (%"class.Cicada::CircularBuffer"*)*, i64 (%"class.Cicada::CircularBuffer"*)** %12, align 4, !dbg !4082
  %14 = call noundef i64 %13(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %0) #23, !dbg !4082
  call void @llvm.dbg.value(metadata i64 %14, metadata !4075, metadata !DIExpression()), !dbg !4077
  br label %15, !dbg !4083

15:                                               ; preds = %10, %3
  %16 = phi i64 [ %14, %10 ], [ %2, %3 ]
  call void @llvm.dbg.value(metadata i64 %16, metadata !4075, metadata !DIExpression()), !dbg !4077
  call void @llvm.dbg.value(metadata i64 0, metadata !4076, metadata !DIExpression()), !dbg !4077
  %17 = icmp eq i64 %16, 0, !dbg !4084
  br i1 %17, label %32, label %18, !dbg !4085

18:                                               ; preds = %15
  %19 = getelementptr inbounds %"class.Cicada::CircularBuffer", %"class.Cicada::CircularBuffer"* %0, i32 0, i32 6
  %20 = getelementptr inbounds %"class.Cicada::CircularBuffer", %"class.Cicada::CircularBuffer"* %0, i32 0, i32 3
  br label %21, !dbg !4085

21:                                               ; preds = %18, %21
  %22 = phi i64 [ 0, %18 ], [ %28, %21 ]
  call void @llvm.dbg.value(metadata i64 %22, metadata !4076, metadata !DIExpression()), !dbg !4077
  %23 = load i8*, i8** %19, align 8, !dbg !4086, !tbaa !3861
  %24 = load i64, i64* %20, align 8, !dbg !4088, !tbaa !3907
  %25 = trunc i64 %24 to i32, !dbg !4086
  %26 = getelementptr inbounds i8, i8* %23, i32 %25, !dbg !4086
  %27 = load i8, i8* %26, align 1, !dbg !4086, !tbaa !1386
  %28 = add nuw i64 %22, 1, !dbg !4089
  call void @llvm.dbg.value(metadata i64 %28, metadata !4076, metadata !DIExpression()), !dbg !4077
  %29 = trunc i64 %22 to i32, !dbg !4090
  %30 = getelementptr inbounds i8, i8* %1, i32 %29, !dbg !4090
  store i8 %27, i8* %30, align 1, !dbg !4091, !tbaa !1386
  call void @_ZN6Cicada14CircularBufferIcE20incrementOrResetHeadERy(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %0, i64* noundef nonnull align 8 dereferenceable(8) %20), !dbg !4092
  %31 = icmp ult i64 %28, %16, !dbg !4084
  br i1 %31, label %21, label %32, !dbg !4085, !llvm.loop !4093

32:                                               ; preds = %21, %15
  %33 = phi i64 [ 0, %15 ], [ %16, %21 ], !dbg !4077
  %34 = getelementptr inbounds %"class.Cicada::CircularBuffer", %"class.Cicada::CircularBuffer"* %0, i32 0, i32 4, !dbg !4095
  %35 = load i64, i64* %34, align 8, !dbg !4096, !tbaa !3470
  %36 = sub i64 %35, %33, !dbg !4096
  store i64 %36, i64* %34, align 8, !dbg !4096, !tbaa !3470
  ret i64 %33, !dbg !4097
}

; Function Attrs: noinline nounwind
define linkonce_odr dso_local noundef %"class.Cicada::ICommDevice"* @_ZN6Cicada11ICommDeviceC2Ev(%"class.Cicada::ICommDevice"* noundef nonnull returned align 4 dereferenceable(4) %0) unnamed_addr #3 comdat align 2 !dbg !4098 {
  call void @llvm.dbg.value(metadata %"class.Cicada::ICommDevice"* %0, metadata !4101, metadata !DIExpression()), !dbg !4102
  %2 = getelementptr inbounds %"class.Cicada::ICommDevice", %"class.Cicada::ICommDevice"* %0, i32 0, i32 0, !dbg !4103
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [9 x i8*] }, { [9 x i8*] }* @_ZTVN6Cicada11ICommDeviceE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %2, align 4, !dbg !4103, !tbaa !1350
  ret %"class.Cicada::ICommDevice"* %0, !dbg !4103
}

; Function Attrs: noinline nounwind
define linkonce_odr dso_local noundef %"class.Cicada::ICommDevice"* @_ZN6Cicada7ISerialC2Ev(%"class.Cicada::ICommDevice"* noundef nonnull returned align 4 dereferenceable(4) %0) unnamed_addr #3 comdat align 2 !dbg !4104 {
  call void @llvm.dbg.value(metadata %"class.Cicada::ICommDevice"* %0, metadata !4107, metadata !DIExpression()), !dbg !4108
  %2 = getelementptr inbounds %"class.Cicada::ICommDevice", %"class.Cicada::ICommDevice"* %0, i32 0, i32 0, !dbg !4109
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [12 x i8*] }, { [12 x i8*] }* @_ZTVN6Cicada7ISerialE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %2, align 4, !dbg !4109, !tbaa !1350
  ret %"class.Cicada::ICommDevice"* %0, !dbg !4109
}

; Function Attrs: noinline nounwind
define linkonce_odr dso_local void @_ZN6Cicada15IBufferedSerialD0Ev(%"class.Cicada::IBufferedSerial"* noundef nonnull align 4 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !dbg !4110 {
  call void @llvm.dbg.value(metadata %"class.Cicada::IBufferedSerial"* %0, metadata !4112, metadata !DIExpression()), !dbg !4113
  call void @llvm.trap() #25, !dbg !4114
  unreachable, !dbg !4114
}

; Function Attrs: noinline nounwind
define linkonce_odr dso_local noundef %"class.Cicada::IBufferedSerial"* @_ZThn4_N6Cicada15IBufferedSerialD1Ev(%"class.Cicada::IBufferedSerial"* noundef %0) unnamed_addr #3 comdat align 2 !dbg !4115 {
  %2 = getelementptr inbounds %"class.Cicada::IBufferedSerial", %"class.Cicada::IBufferedSerial"* %0, i32 -1, i32 1, !dbg !4116
  %3 = bitcast %"class.Cicada::ICommDevice"* %2 to %"class.Cicada::IBufferedSerial"*, !dbg !4116
  %4 = tail call noundef %"class.Cicada::IBufferedSerial"* @_ZN6Cicada15IBufferedSerialD2Ev(%"class.Cicada::IBufferedSerial"* noundef nonnull align 4 dereferenceable(8) %3) #23, !dbg !4116
  ret %"class.Cicada::IBufferedSerial"* undef, !dbg !4116
}

; Function Attrs: noinline nounwind
define linkonce_odr dso_local void @_ZThn4_N6Cicada15IBufferedSerialD0Ev(%"class.Cicada::IBufferedSerial"* noundef %0) unnamed_addr #3 comdat align 2 !dbg !4117 {
  %2 = getelementptr inbounds %"class.Cicada::IBufferedSerial", %"class.Cicada::IBufferedSerial"* %0, i32 -1, i32 1, !dbg !4118
  %3 = bitcast %"class.Cicada::ICommDevice"* %2 to %"class.Cicada::IBufferedSerial"*, !dbg !4118
  tail call void @_ZN6Cicada15IBufferedSerialD0Ev(%"class.Cicada::IBufferedSerial"* noundef nonnull align 4 dereferenceable(8) %3) #23, !dbg !4118
  ret void, !dbg !4118
}

; Function Attrs: noinline nounwind
define linkonce_odr dso_local void @_ZN6Cicada7ISerialD0Ev(%"class.Cicada::ICommDevice"* noundef nonnull align 4 dereferenceable(4) %0) unnamed_addr #3 comdat align 2 !dbg !4119 {
  call void @llvm.dbg.value(metadata %"class.Cicada::ICommDevice"* %0, metadata !4121, metadata !DIExpression()), !dbg !4122
  call void @llvm.trap() #25, !dbg !4123
  unreachable, !dbg !4123
}

; Function Attrs: noinline nounwind
define linkonce_odr dso_local void @_ZN6Cicada11ICommDeviceD0Ev(%"class.Cicada::ICommDevice"* noundef nonnull align 4 dereferenceable(4) %0) unnamed_addr #3 comdat align 2 !dbg !4124 {
  call void @llvm.dbg.value(metadata %"class.Cicada::ICommDevice"* %0, metadata !4126, metadata !DIExpression()), !dbg !4127
  call void @llvm.trap() #25, !dbg !4128
  unreachable, !dbg !4128
}

; Function Attrs: noinline nounwind
define dso_local noundef nonnull %"class.Cicada::BufferedSerial"* @_ZN6Cicada14BufferedSerialC2EPcS1_y(%"class.Cicada::BufferedSerial"* noundef nonnull returned align 8 dereferenceable(104) %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) unnamed_addr #3 align 2 !dbg !4129 {
  call void @llvm.dbg.value(metadata %"class.Cicada::BufferedSerial"* %0, metadata !4131, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata i8* %1, metadata !4132, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata i8* %2, metadata !4133, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata i64 %3, metadata !4134, metadata !DIExpression()), !dbg !4135
  %5 = getelementptr inbounds %"class.Cicada::BufferedSerial", %"class.Cicada::BufferedSerial"* %0, i32 0, i32 0, !dbg !4136
  %6 = call noundef %"class.Cicada::IBufferedSerial"* @_ZN6Cicada15IBufferedSerialC2Ev(%"class.Cicada::IBufferedSerial"* noundef nonnull align 4 dereferenceable(8) %5) #23, !dbg !4137
  %7 = getelementptr inbounds %"class.Cicada::BufferedSerial", %"class.Cicada::BufferedSerial"* %0, i32 0, i32 0, i32 0, i32 0, !dbg !4136
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [17 x i8*], [12 x i8*] }, { [17 x i8*], [12 x i8*] }* @_ZTVN6Cicada14BufferedSerialE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %7, align 8, !dbg !4136, !tbaa !1350
  %8 = getelementptr inbounds %"class.Cicada::BufferedSerial", %"class.Cicada::BufferedSerial"* %0, i32 0, i32 0, i32 1, i32 0, !dbg !4136
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [17 x i8*], [12 x i8*] }, { [17 x i8*], [12 x i8*] }* @_ZTVN6Cicada14BufferedSerialE, i32 0, inrange i32 1, i32 2) to i32 (...)**), i32 (...)*** %8, align 4, !dbg !4136, !tbaa !1350
  %9 = getelementptr inbounds %"class.Cicada::BufferedSerial", %"class.Cicada::BufferedSerial"* %0, i32 0, i32 1, !dbg !4138
  %10 = call noundef %"class.Cicada::LineCircularBuffer"* @_ZN6Cicada18LineCircularBufferC2EPcy(%"class.Cicada::LineCircularBuffer"* noundef nonnull align 8 dereferenceable(46) %9, i8* noundef %1, i64 noundef %3), !dbg !4138
  %11 = getelementptr inbounds %"class.Cicada::BufferedSerial", %"class.Cicada::BufferedSerial"* %0, i32 0, i32 2, !dbg !4139
  %12 = call noundef %"class.Cicada::LineCircularBuffer"* @_ZN6Cicada18LineCircularBufferC2EPcy(%"class.Cicada::LineCircularBuffer"* noundef nonnull align 8 dereferenceable(46) %11, i8* noundef %2, i64 noundef %3), !dbg !4139
  ret %"class.Cicada::BufferedSerial"* %0, !dbg !4140
}

; Function Attrs: mustprogress noinline nounwind
define dso_local void @_ZN6Cicada14BufferedSerial23transferToAndFromBufferEv(%"class.Cicada::BufferedSerial"* noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #4 align 2 !dbg !4141 {
  %2 = alloca i8, align 1
  call void @llvm.dbg.value(metadata %"class.Cicada::BufferedSerial"* %0, metadata !4143, metadata !DIExpression()), !dbg !4145
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %2) #23, !dbg !4146
  %3 = getelementptr inbounds %"class.Cicada::BufferedSerial", %"class.Cicada::BufferedSerial"* %0, i32 0, i32 0, i32 1, !dbg !4147
  %4 = bitcast %"class.Cicada::ICommDevice"* %3 to i1 (%"class.Cicada::ICommDevice"*, i8*)***, !dbg !4147
  %5 = load i1 (%"class.Cicada::ICommDevice"*, i8*)**, i1 (%"class.Cicada::ICommDevice"*, i8*)*** %4, align 4, !dbg !4147, !tbaa !1350
  %6 = getelementptr inbounds i1 (%"class.Cicada::ICommDevice"*, i8*)*, i1 (%"class.Cicada::ICommDevice"*, i8*)** %5, i32 7, !dbg !4147
  %7 = load i1 (%"class.Cicada::ICommDevice"*, i8*)*, i1 (%"class.Cicada::ICommDevice"*, i8*)** %6, align 4, !dbg !4147
  call void @llvm.dbg.value(metadata i8* %2, metadata !4144, metadata !DIExpression(DW_OP_deref)), !dbg !4145
  %8 = call noundef zeroext i1 %7(%"class.Cicada::ICommDevice"* noundef nonnull align 4 dereferenceable(4) %3, i8* noundef nonnull align 1 dereferenceable(1) %2) #23, !dbg !4147
  br i1 %8, label %9, label %15, !dbg !4149

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.Cicada::BufferedSerial", %"class.Cicada::BufferedSerial"* %0, i32 0, i32 1, !dbg !4150
  %11 = bitcast %"class.Cicada::LineCircularBuffer"* %10 to %"class.Cicada::CircularBuffer"*, !dbg !4150
  %12 = call noundef zeroext i1 @_ZNK6Cicada14CircularBufferIcE6isFullEv(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %11), !dbg !4151
  br i1 %12, label %15, label %13, !dbg !4152

13:                                               ; preds = %9
  %14 = load i8, i8* %2, align 1, !dbg !4153, !tbaa !1386
  call void @llvm.dbg.value(metadata i8 %14, metadata !4144, metadata !DIExpression()), !dbg !4145
  call void @_ZN6Cicada18LineCircularBuffer4pushEc(%"class.Cicada::LineCircularBuffer"* noundef nonnull align 8 dereferenceable(46) %10, i8 noundef zeroext %14), !dbg !4155
  br label %15, !dbg !4156

15:                                               ; preds = %13, %9, %1
  %16 = getelementptr inbounds %"class.Cicada::BufferedSerial", %"class.Cicada::BufferedSerial"* %0, i32 0, i32 2, !dbg !4157
  %17 = bitcast %"class.Cicada::LineCircularBuffer"* %16 to %"class.Cicada::CircularBuffer"*, !dbg !4157
  %18 = call noundef i64 @_ZNK6Cicada14CircularBufferIcE14bytesAvailableEv(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %17), !dbg !4159
  %19 = icmp eq i64 %18, 0, !dbg !4157
  br i1 %19, label %29, label %20, !dbg !4160

20:                                               ; preds = %15
  %21 = call noundef zeroext i8 @_ZN6Cicada14CircularBufferIcE4readEv(%"class.Cicada::CircularBuffer"* noundef nonnull align 8 dereferenceable(44) %17), !dbg !4161
  %22 = bitcast %"class.Cicada::ICommDevice"* %3 to i1 (%"class.Cicada::ICommDevice"*, i8)***, !dbg !4164
  %23 = load i1 (%"class.Cicada::ICommDevice"*, i8)**, i1 (%"class.Cicada::ICommDevice"*, i8)*** %22, align 4, !dbg !4164, !tbaa !1350
  %24 = getelementptr inbounds i1 (%"class.Cicada::ICommDevice"*, i8)*, i1 (%"class.Cicada::ICommDevice"*, i8)** %23, i32 8, !dbg !4164
  %25 = load i1 (%"class.Cicada::ICommDevice"*, i8)*, i1 (%"class.Cicada::ICommDevice"*, i8)** %24, align 4, !dbg !4164
  %26 = call noundef zeroext i1 %25(%"class.Cicada::ICommDevice"* noundef nonnull align 4 dereferenceable(4) %3, i8 noundef zeroext %21) #23, !dbg !4164
  br i1 %26, label %27, label %29, !dbg !4165

27:                                               ; preds = %20
  %28 = call noundef zeroext i8 @_ZN6Cicada18LineCircularBuffer4pullEv(%"class.Cicada::LineCircularBuffer"* noundef nonnull align 8 dereferenceable(46) %16), !dbg !4166
  br label %29, !dbg !4168

29:                                               ; preds = %20, %27, %15
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %2) #23, !dbg !4169
  ret void, !dbg !4169
}

; Function Attrs: mustprogress noinline nounwind
define dso_local void @_Z18eDisableInterruptsv() local_unnamed_addr #4 !dbg !4170 {
  call void asm sideeffect "cpsid i", "~{memory}"() #23, !dbg !4171, !srcloc !4174
  ret void, !dbg !4175
}

; Function Attrs: mustprogress noinline nounwind
define dso_local void @_Z17eEnableInterruptsv() local_unnamed_addr #4 !dbg !4176 {
  call void asm sideeffect "cpsie i", "~{memory}"() #23, !dbg !4177, !srcloc !4180
  ret void, !dbg !4181
}

; Function Attrs: noinline nounwind
define dso_local i32 @HAL_UART_Init(%struct.__UART_HandleTypeDef* noundef %0) local_unnamed_addr #3 !dbg !4182 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !4186, metadata !DIExpression()), !dbg !4187
  %2 = icmp eq %struct.__UART_HandleTypeDef* %0, null, !dbg !4188
  br i1 %2, label %27, label %3, !dbg !4190

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 11, !dbg !4191
  %5 = load volatile i32, i32* %4, align 4, !dbg !4191, !tbaa !4193
  %6 = icmp eq i32 %5, 0, !dbg !4197
  br i1 %6, label %7, label %9, !dbg !4198

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 10, !dbg !4199
  store i32 0, i32* %8, align 4, !dbg !4201, !tbaa !4202
  call void @HAL_UART_MspInit(%struct.__UART_HandleTypeDef* noundef nonnull %0), !dbg !4203
  br label %9, !dbg !4204

9:                                                ; preds = %7, %3
  store volatile i32 36, i32* %4, align 4, !dbg !4205, !tbaa !4193
  %10 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !4206
  %11 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %10, align 4, !dbg !4206, !tbaa !4207
  %12 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %11, i32 0, i32 3, !dbg !4206
  %13 = load volatile i32, i32* %12, align 4, !dbg !4206, !tbaa !2939
  %14 = and i32 %13, -8193, !dbg !4206
  store volatile i32 %14, i32* %12, align 4, !dbg !4206, !tbaa !2939
  call fastcc void @UART_SetConfig(%struct.__UART_HandleTypeDef* noundef nonnull %0), !dbg !4208
  %15 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %10, align 4, !dbg !4209, !tbaa !4207
  %16 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %15, i32 0, i32 4, !dbg !4209
  %17 = load volatile i32, i32* %16, align 4, !dbg !4209, !tbaa !2822
  %18 = and i32 %17, -18433, !dbg !4209
  store volatile i32 %18, i32* %16, align 4, !dbg !4209, !tbaa !2822
  %19 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %15, i32 0, i32 5, !dbg !4210
  %20 = load volatile i32, i32* %19, align 4, !dbg !4210, !tbaa !2827
  %21 = and i32 %20, -43, !dbg !4210
  store volatile i32 %21, i32* %19, align 4, !dbg !4210, !tbaa !2827
  %22 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %15, i32 0, i32 3, !dbg !4211
  %23 = load volatile i32, i32* %22, align 4, !dbg !4211, !tbaa !2939
  %24 = or i32 %23, 8192, !dbg !4211
  store volatile i32 %24, i32* %22, align 4, !dbg !4211, !tbaa !2939
  %25 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 13, !dbg !4212
  store volatile i32 0, i32* %25, align 4, !dbg !4213, !tbaa !4214
  store volatile i32 32, i32* %4, align 4, !dbg !4215, !tbaa !4193
  %26 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 12, !dbg !4216
  store volatile i32 32, i32* %26, align 4, !dbg !4217, !tbaa !4218
  br label %27, !dbg !4219

27:                                               ; preds = %1, %9
  %28 = phi i32 [ 0, %9 ], [ 1, %1 ], !dbg !4187
  ret i32 %28, !dbg !4220
}

; Function Attrs: noinline nounwind
define weak dso_local void @HAL_UART_MspInit(%struct.__UART_HandleTypeDef* noundef %0) local_unnamed_addr #3 !dbg !4221 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !4225, metadata !DIExpression()), !dbg !4226
  ret void, !dbg !4227
}

; Function Attrs: noinline nounwind
define internal fastcc void @UART_SetConfig(%struct.__UART_HandleTypeDef* nocapture noundef readonly %0) unnamed_addr #3 !dbg !4228 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !4230, metadata !DIExpression()), !dbg !4233
  %2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !4234
  %3 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %2, align 4, !dbg !4234, !tbaa !4207
  %4 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %3, i32 0, i32 4, !dbg !4234
  %5 = load volatile i32, i32* %4, align 4, !dbg !4234, !tbaa !2822
  %6 = and i32 %5, -12289, !dbg !4234
  %7 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 1, i32 2, !dbg !4234
  %8 = load i32, i32* %7, align 4, !dbg !4234, !tbaa !4235
  %9 = or i32 %6, %8, !dbg !4234
  store volatile i32 %9, i32* %4, align 4, !dbg !4234, !tbaa !2822
  %10 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 1, i32 1, !dbg !4236
  %11 = load i32, i32* %10, align 4, !dbg !4236, !tbaa !4237
  %12 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 1, i32 3, !dbg !4238
  %13 = load i32, i32* %12, align 4, !dbg !4238, !tbaa !4239
  %14 = or i32 %13, %11, !dbg !4240
  %15 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 1, i32 4, !dbg !4241
  %16 = load i32, i32* %15, align 4, !dbg !4241, !tbaa !4242
  %17 = or i32 %14, %16, !dbg !4243
  call void @llvm.dbg.value(metadata i32 %17, metadata !4231, metadata !DIExpression()), !dbg !4233
  %18 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %3, i32 0, i32 3, !dbg !4244
  %19 = load volatile i32, i32* %18, align 4, !dbg !4244, !tbaa !2939
  %20 = and i32 %19, -5645, !dbg !4244
  %21 = or i32 %17, %20, !dbg !4244
  store volatile i32 %21, i32* %18, align 4, !dbg !4244, !tbaa !2939
  %22 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %3, i32 0, i32 5, !dbg !4245
  %23 = load volatile i32, i32* %22, align 4, !dbg !4245, !tbaa !2827
  %24 = and i32 %23, -769, !dbg !4245
  %25 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 1, i32 5, !dbg !4245
  %26 = load i32, i32* %25, align 4, !dbg !4245, !tbaa !4246
  %27 = or i32 %24, %26, !dbg !4245
  store volatile i32 %27, i32* %22, align 4, !dbg !4245, !tbaa !2827
  %28 = icmp eq %struct.USART_TypeDef* %3, inttoptr (i32 1073821696 to %struct.USART_TypeDef*), !dbg !4247
  br i1 %28, label %29, label %31, !dbg !4249

29:                                               ; preds = %1
  %30 = call i32 @HAL_RCC_GetPCLK2Freq() #23, !dbg !4250
  call void @llvm.dbg.value(metadata i32 %30, metadata !4232, metadata !DIExpression()), !dbg !4233
  br label %33, !dbg !4252

31:                                               ; preds = %1
  %32 = call i32 @HAL_RCC_GetPCLK1Freq() #23, !dbg !4253
  call void @llvm.dbg.value(metadata i32 %32, metadata !4232, metadata !DIExpression()), !dbg !4233
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %32, %31 ], [ %30, %29 ]
  %35 = mul i32 %34, 25, !dbg !4255
  %36 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 1, i32 0, !dbg !4255
  %37 = load i32, i32* %36, align 4, !dbg !4255, !tbaa !4256
  %38 = shl i32 %37, 2, !dbg !4255
  %39 = udiv i32 %35, %38, !dbg !4255
  %40 = udiv i32 %39, 100, !dbg !4255
  %41 = shl nuw nsw i32 %40, 4, !dbg !4255
  %42 = mul i32 %40, -100, !dbg !4255
  %43 = add i32 %42, %39, !dbg !4255
  %44 = shl i32 %43, 4, !dbg !4255
  %45 = add i32 %44, 50, !dbg !4255
  %46 = udiv i32 %45, 100, !dbg !4255
  %47 = and i32 %46, 240, !dbg !4255
  %48 = add nuw nsw i32 %47, %41, !dbg !4255
  %49 = and i32 %46, 15, !dbg !4255
  %50 = or i32 %48, %49, !dbg !4255
  %51 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %2, align 4, !dbg !4255, !tbaa !4207
  %52 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %51, i32 0, i32 2, !dbg !4255
  store volatile i32 %50, i32* %52, align 4, !dbg !4255, !tbaa !2957
  ret void, !dbg !4257
}

; Function Attrs: noinline nounwind
define dso_local i32 @HAL_HalfDuplex_Init(%struct.__UART_HandleTypeDef* noundef %0) local_unnamed_addr #3 !dbg !4258 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !4260, metadata !DIExpression()), !dbg !4261
  %2 = icmp eq %struct.__UART_HandleTypeDef* %0, null, !dbg !4262
  br i1 %2, label %29, label %3, !dbg !4264

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 11, !dbg !4265
  %5 = load volatile i32, i32* %4, align 4, !dbg !4265, !tbaa !4193
  %6 = icmp eq i32 %5, 0, !dbg !4267
  br i1 %6, label %7, label %9, !dbg !4268

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 10, !dbg !4269
  store i32 0, i32* %8, align 4, !dbg !4271, !tbaa !4202
  call void @HAL_UART_MspInit(%struct.__UART_HandleTypeDef* noundef nonnull %0), !dbg !4272
  br label %9, !dbg !4273

9:                                                ; preds = %7, %3
  store volatile i32 36, i32* %4, align 4, !dbg !4274, !tbaa !4193
  %10 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !4275
  %11 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %10, align 4, !dbg !4275, !tbaa !4207
  %12 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %11, i32 0, i32 3, !dbg !4275
  %13 = load volatile i32, i32* %12, align 4, !dbg !4275, !tbaa !2939
  %14 = and i32 %13, -8193, !dbg !4275
  store volatile i32 %14, i32* %12, align 4, !dbg !4275, !tbaa !2939
  call fastcc void @UART_SetConfig(%struct.__UART_HandleTypeDef* noundef nonnull %0), !dbg !4276
  %15 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %10, align 4, !dbg !4277, !tbaa !4207
  %16 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %15, i32 0, i32 4, !dbg !4277
  %17 = load volatile i32, i32* %16, align 4, !dbg !4277, !tbaa !2822
  %18 = and i32 %17, -18433, !dbg !4277
  store volatile i32 %18, i32* %16, align 4, !dbg !4277, !tbaa !2822
  %19 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %15, i32 0, i32 5, !dbg !4278
  %20 = load volatile i32, i32* %19, align 4, !dbg !4278, !tbaa !2827
  %21 = and i32 %20, -35, !dbg !4278
  store volatile i32 %21, i32* %19, align 4, !dbg !4278, !tbaa !2827
  %22 = load volatile i32, i32* %19, align 4, !dbg !4279, !tbaa !2827
  %23 = or i32 %22, 8, !dbg !4279
  store volatile i32 %23, i32* %19, align 4, !dbg !4279, !tbaa !2827
  %24 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %15, i32 0, i32 3, !dbg !4280
  %25 = load volatile i32, i32* %24, align 4, !dbg !4280, !tbaa !2939
  %26 = or i32 %25, 8192, !dbg !4280
  store volatile i32 %26, i32* %24, align 4, !dbg !4280, !tbaa !2939
  %27 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 13, !dbg !4281
  store volatile i32 0, i32* %27, align 4, !dbg !4282, !tbaa !4214
  store volatile i32 32, i32* %4, align 4, !dbg !4283, !tbaa !4193
  %28 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 12, !dbg !4284
  store volatile i32 32, i32* %28, align 4, !dbg !4285, !tbaa !4218
  br label %29, !dbg !4286

29:                                               ; preds = %1, %9
  %30 = phi i32 [ 0, %9 ], [ 1, %1 ], !dbg !4261
  ret i32 %30, !dbg !4287
}

; Function Attrs: noinline nounwind
define dso_local i32 @HAL_LIN_Init(%struct.__UART_HandleTypeDef* noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4288 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !4292, metadata !DIExpression()), !dbg !4294
  call void @llvm.dbg.value(metadata i32 %1, metadata !4293, metadata !DIExpression()), !dbg !4294
  %3 = icmp eq %struct.__UART_HandleTypeDef* %0, null, !dbg !4295
  br i1 %3, label %34, label %4, !dbg !4297

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 11, !dbg !4298
  %6 = load volatile i32, i32* %5, align 4, !dbg !4298, !tbaa !4193
  %7 = icmp eq i32 %6, 0, !dbg !4300
  br i1 %7, label %8, label %10, !dbg !4301

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 10, !dbg !4302
  store i32 0, i32* %9, align 4, !dbg !4304, !tbaa !4202
  call void @HAL_UART_MspInit(%struct.__UART_HandleTypeDef* noundef nonnull %0), !dbg !4305
  br label %10, !dbg !4306

10:                                               ; preds = %8, %4
  store volatile i32 36, i32* %5, align 4, !dbg !4307, !tbaa !4193
  %11 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !4308
  %12 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %11, align 4, !dbg !4308, !tbaa !4207
  %13 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %12, i32 0, i32 3, !dbg !4308
  %14 = load volatile i32, i32* %13, align 4, !dbg !4308, !tbaa !2939
  %15 = and i32 %14, -8193, !dbg !4308
  store volatile i32 %15, i32* %13, align 4, !dbg !4308, !tbaa !2939
  call fastcc void @UART_SetConfig(%struct.__UART_HandleTypeDef* noundef nonnull %0), !dbg !4309
  %16 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %11, align 4, !dbg !4310, !tbaa !4207
  %17 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %16, i32 0, i32 4, !dbg !4310
  %18 = load volatile i32, i32* %17, align 4, !dbg !4310, !tbaa !2822
  %19 = and i32 %18, -2049, !dbg !4310
  store volatile i32 %19, i32* %17, align 4, !dbg !4310, !tbaa !2822
  %20 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %16, i32 0, i32 5, !dbg !4311
  %21 = load volatile i32, i32* %20, align 4, !dbg !4311, !tbaa !2827
  %22 = and i32 %21, -43, !dbg !4311
  store volatile i32 %22, i32* %20, align 4, !dbg !4311, !tbaa !2827
  %23 = load volatile i32, i32* %17, align 4, !dbg !4312, !tbaa !2822
  %24 = or i32 %23, 16384, !dbg !4312
  store volatile i32 %24, i32* %17, align 4, !dbg !4312, !tbaa !2822
  %25 = load volatile i32, i32* %17, align 4, !dbg !4313, !tbaa !2822
  %26 = and i32 %25, -33, !dbg !4313
  store volatile i32 %26, i32* %17, align 4, !dbg !4313, !tbaa !2822
  %27 = load volatile i32, i32* %17, align 4, !dbg !4314, !tbaa !2822
  %28 = or i32 %27, %1, !dbg !4314
  store volatile i32 %28, i32* %17, align 4, !dbg !4314, !tbaa !2822
  %29 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %16, i32 0, i32 3, !dbg !4315
  %30 = load volatile i32, i32* %29, align 4, !dbg !4315, !tbaa !2939
  %31 = or i32 %30, 8192, !dbg !4315
  store volatile i32 %31, i32* %29, align 4, !dbg !4315, !tbaa !2939
  %32 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 13, !dbg !4316
  store volatile i32 0, i32* %32, align 4, !dbg !4317, !tbaa !4214
  store volatile i32 32, i32* %5, align 4, !dbg !4318, !tbaa !4193
  %33 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 12, !dbg !4319
  store volatile i32 32, i32* %33, align 4, !dbg !4320, !tbaa !4218
  br label %34, !dbg !4321

34:                                               ; preds = %2, %10
  %35 = phi i32 [ 0, %10 ], [ 1, %2 ], !dbg !4294
  ret i32 %35, !dbg !4322
}

; Function Attrs: noinline nounwind
define dso_local i32 @HAL_MultiProcessor_Init(%struct.__UART_HandleTypeDef* noundef %0, i8 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4323 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !4327, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i8 %1, metadata !4328, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i32 %2, metadata !4329, metadata !DIExpression()), !dbg !4330
  %4 = icmp eq %struct.__UART_HandleTypeDef* %0, null, !dbg !4331
  br i1 %4, label %38, label %5, !dbg !4333

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 11, !dbg !4334
  %7 = load volatile i32, i32* %6, align 4, !dbg !4334, !tbaa !4193
  %8 = icmp eq i32 %7, 0, !dbg !4336
  br i1 %8, label %9, label %11, !dbg !4337

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 10, !dbg !4338
  store i32 0, i32* %10, align 4, !dbg !4340, !tbaa !4202
  call void @HAL_UART_MspInit(%struct.__UART_HandleTypeDef* noundef nonnull %0), !dbg !4341
  br label %11, !dbg !4342

11:                                               ; preds = %9, %5
  store volatile i32 36, i32* %6, align 4, !dbg !4343, !tbaa !4193
  %12 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !4344
  %13 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %12, align 4, !dbg !4344, !tbaa !4207
  %14 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %13, i32 0, i32 3, !dbg !4344
  %15 = load volatile i32, i32* %14, align 4, !dbg !4344, !tbaa !2939
  %16 = and i32 %15, -8193, !dbg !4344
  store volatile i32 %16, i32* %14, align 4, !dbg !4344, !tbaa !2939
  call fastcc void @UART_SetConfig(%struct.__UART_HandleTypeDef* noundef nonnull %0), !dbg !4345
  %17 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %12, align 4, !dbg !4346, !tbaa !4207
  %18 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %17, i32 0, i32 4, !dbg !4346
  %19 = load volatile i32, i32* %18, align 4, !dbg !4346, !tbaa !2822
  %20 = and i32 %19, -18433, !dbg !4346
  store volatile i32 %20, i32* %18, align 4, !dbg !4346, !tbaa !2822
  %21 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %17, i32 0, i32 5, !dbg !4347
  %22 = load volatile i32, i32* %21, align 4, !dbg !4347, !tbaa !2827
  %23 = and i32 %22, -43, !dbg !4347
  store volatile i32 %23, i32* %21, align 4, !dbg !4347, !tbaa !2827
  %24 = load volatile i32, i32* %18, align 4, !dbg !4348, !tbaa !2822
  %25 = and i32 %24, -16, !dbg !4348
  store volatile i32 %25, i32* %18, align 4, !dbg !4348, !tbaa !2822
  %26 = zext i8 %1 to i32, !dbg !4349
  %27 = load volatile i32, i32* %18, align 4, !dbg !4349, !tbaa !2822
  %28 = or i32 %27, %26, !dbg !4349
  store volatile i32 %28, i32* %18, align 4, !dbg !4349, !tbaa !2822
  %29 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %17, i32 0, i32 3, !dbg !4350
  %30 = load volatile i32, i32* %29, align 4, !dbg !4350, !tbaa !2939
  %31 = and i32 %30, -2049, !dbg !4350
  store volatile i32 %31, i32* %29, align 4, !dbg !4350, !tbaa !2939
  %32 = load volatile i32, i32* %29, align 4, !dbg !4351, !tbaa !2939
  %33 = or i32 %32, %2, !dbg !4351
  store volatile i32 %33, i32* %29, align 4, !dbg !4351, !tbaa !2939
  %34 = load volatile i32, i32* %29, align 4, !dbg !4352, !tbaa !2939
  %35 = or i32 %34, 8192, !dbg !4352
  store volatile i32 %35, i32* %29, align 4, !dbg !4352, !tbaa !2939
  %36 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 13, !dbg !4353
  store volatile i32 0, i32* %36, align 4, !dbg !4354, !tbaa !4214
  store volatile i32 32, i32* %6, align 4, !dbg !4355, !tbaa !4193
  %37 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 12, !dbg !4356
  store volatile i32 32, i32* %37, align 4, !dbg !4357, !tbaa !4218
  br label %38, !dbg !4358

38:                                               ; preds = %3, %11
  %39 = phi i32 [ 0, %11 ], [ 1, %3 ], !dbg !4330
  ret i32 %39, !dbg !4359
}

; Function Attrs: noinline nounwind
define dso_local i32 @HAL_UART_DeInit(%struct.__UART_HandleTypeDef* noundef %0) local_unnamed_addr #3 !dbg !4360 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !4362, metadata !DIExpression()), !dbg !4363
  %2 = icmp eq %struct.__UART_HandleTypeDef* %0, null, !dbg !4364
  br i1 %2, label %13, label %3, !dbg !4366

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 11, !dbg !4367
  store volatile i32 36, i32* %4, align 4, !dbg !4368, !tbaa !4193
  %5 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !4369
  %6 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %5, align 4, !dbg !4369, !tbaa !4207
  %7 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %6, i32 0, i32 3, !dbg !4369
  %8 = load volatile i32, i32* %7, align 4, !dbg !4369, !tbaa !2939
  %9 = and i32 %8, -8193, !dbg !4369
  store volatile i32 %9, i32* %7, align 4, !dbg !4369, !tbaa !2939
  call void @HAL_UART_MspDeInit(%struct.__UART_HandleTypeDef* noundef nonnull %0), !dbg !4370
  %10 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 13, !dbg !4371
  store volatile i32 0, i32* %10, align 4, !dbg !4372, !tbaa !4214
  store volatile i32 0, i32* %4, align 4, !dbg !4373, !tbaa !4193
  %11 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 12, !dbg !4374
  store volatile i32 0, i32* %11, align 4, !dbg !4375, !tbaa !4218
  %12 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 10, !dbg !4376
  store i32 0, i32* %12, align 4, !dbg !4376, !tbaa !4202
  br label %13, !dbg !4378

13:                                               ; preds = %1, %3
  %14 = phi i32 [ 0, %3 ], [ 1, %1 ], !dbg !4363
  ret i32 %14, !dbg !4379
}

; Function Attrs: noinline nounwind
define weak dso_local void @HAL_UART_MspDeInit(%struct.__UART_HandleTypeDef* noundef %0) local_unnamed_addr #3 !dbg !4380 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !4382, metadata !DIExpression()), !dbg !4383
  ret void, !dbg !4384
}

; Function Attrs: noinline nounwind
define dso_local i32 @HAL_UART_Transmit(%struct.__UART_HandleTypeDef* noundef %0, i8* noundef readonly %1, i16 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #3 !dbg !4385 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !4389, metadata !DIExpression()), !dbg !4395
  call void @llvm.dbg.value(metadata i8* %1, metadata !4390, metadata !DIExpression()), !dbg !4395
  call void @llvm.dbg.value(metadata i16 %2, metadata !4391, metadata !DIExpression()), !dbg !4395
  call void @llvm.dbg.value(metadata i32 %3, metadata !4392, metadata !DIExpression()), !dbg !4395
  call void @llvm.dbg.value(metadata i32 0, metadata !4394, metadata !DIExpression()), !dbg !4395
  %5 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 11, !dbg !4396
  %6 = load volatile i32, i32* %5, align 4, !dbg !4396, !tbaa !4193
  %7 = icmp eq i32 %6, 32, !dbg !4398
  br i1 %7, label %8, label %65, !dbg !4399

8:                                                ; preds = %4
  %9 = icmp eq i8* %1, null, !dbg !4400
  %10 = icmp eq i16 %2, 0
  %11 = or i1 %9, %10, !dbg !4403
  br i1 %11, label %65, label %12, !dbg !4403

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 10, !dbg !4404
  %14 = load i32, i32* %13, align 4, !dbg !4404, !tbaa !4202
  %15 = icmp eq i32 %14, 1, !dbg !4404
  br i1 %15, label %65, label %16, !dbg !4407

16:                                               ; preds = %12
  store i32 1, i32* %13, align 4, !dbg !4408, !tbaa !4202
  %17 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 13, !dbg !4410
  store volatile i32 0, i32* %17, align 4, !dbg !4411, !tbaa !4214
  store volatile i32 33, i32* %5, align 4, !dbg !4412, !tbaa !4193
  %18 = call i32 @HAL_GetTick() #23, !dbg !4413
  call void @llvm.dbg.value(metadata i32 %18, metadata !4394, metadata !DIExpression()), !dbg !4395
  %19 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 3, !dbg !4414
  store i16 %2, i16* %19, align 4, !dbg !4415, !tbaa !4416
  %20 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 4, !dbg !4417
  store volatile i16 %2, i16* %20, align 2, !dbg !4418, !tbaa !4419
  call void @llvm.dbg.value(metadata i8* %1, metadata !4390, metadata !DIExpression()), !dbg !4395
  %21 = load volatile i16, i16* %20, align 2, !dbg !4420, !tbaa !4419
  %22 = icmp eq i16 %21, 0, !dbg !4421
  br i1 %22, label %61, label %23, !dbg !4422

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 1, i32 1
  %25 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0
  %26 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0
  %27 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 1, i32 3
  br label %28, !dbg !4422

28:                                               ; preds = %23, %57
  %29 = phi i8* [ %1, %23 ], [ %58, %57 ]
  call void @llvm.dbg.value(metadata i8* %29, metadata !4390, metadata !DIExpression()), !dbg !4395
  %30 = load volatile i16, i16* %20, align 2, !dbg !4423, !tbaa !4419
  %31 = add i16 %30, -1, !dbg !4423
  store volatile i16 %31, i16* %20, align 2, !dbg !4423, !tbaa !4419
  %32 = load i32, i32* %24, align 4, !dbg !4425, !tbaa !4237
  %33 = icmp eq i32 %32, 4096, !dbg !4427
  %34 = call fastcc i32 @UART_WaitOnFlagUntilTimeout(%struct.__UART_HandleTypeDef* noundef %0, i32 noundef 128, i32 noundef %18, i32 noundef %3), !dbg !4428
  %35 = icmp eq i32 %34, 0, !dbg !4428
  br i1 %33, label %36, label %50, !dbg !4429

36:                                               ; preds = %28
  br i1 %35, label %37, label %65, !dbg !4430

37:                                               ; preds = %36
  %38 = bitcast i8* %29 to i16*, !dbg !4432
  call void @llvm.dbg.value(metadata i16* %38, metadata !4393, metadata !DIExpression()), !dbg !4395
  %39 = load i16, i16* %38, align 2, !dbg !4433, !tbaa !4434
  %40 = and i16 %39, 511, !dbg !4435
  %41 = zext i16 %40 to i32, !dbg !4435
  %42 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %26, align 4, !dbg !4436, !tbaa !4207
  %43 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %42, i32 0, i32 1, !dbg !4437
  store volatile i32 %41, i32* %43, align 4, !dbg !4438, !tbaa !4439
  %44 = load i32, i32* %27, align 4, !dbg !4440, !tbaa !4239
  %45 = icmp eq i32 %44, 0, !dbg !4442
  br i1 %45, label %46, label %48, !dbg !4443

46:                                               ; preds = %37
  %47 = getelementptr inbounds i8, i8* %29, i32 2, !dbg !4444
  call void @llvm.dbg.value(metadata i8* %47, metadata !4390, metadata !DIExpression()), !dbg !4395
  br label %57, !dbg !4446

48:                                               ; preds = %37
  %49 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !4447
  call void @llvm.dbg.value(metadata i8* %49, metadata !4390, metadata !DIExpression()), !dbg !4395
  br label %57

50:                                               ; preds = %28
  br i1 %35, label %51, label %65, !dbg !4449

51:                                               ; preds = %50
  %52 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !4451
  call void @llvm.dbg.value(metadata i8* %52, metadata !4390, metadata !DIExpression()), !dbg !4395
  %53 = load i8, i8* %29, align 1, !dbg !4452, !tbaa !1500
  %54 = zext i8 %53 to i32, !dbg !4452
  %55 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %25, align 4, !dbg !4453, !tbaa !4207
  %56 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %55, i32 0, i32 1, !dbg !4454
  store volatile i32 %54, i32* %56, align 4, !dbg !4455, !tbaa !4439
  br label %57

57:                                               ; preds = %46, %48, %51
  %58 = phi i8* [ %47, %46 ], [ %49, %48 ], [ %52, %51 ], !dbg !4428
  call void @llvm.dbg.value(metadata i8* %58, metadata !4390, metadata !DIExpression()), !dbg !4395
  %59 = load volatile i16, i16* %20, align 2, !dbg !4420, !tbaa !4419
  %60 = icmp eq i16 %59, 0, !dbg !4421
  br i1 %60, label %61, label %28, !dbg !4422, !llvm.loop !4456

61:                                               ; preds = %57, %16
  %62 = call fastcc i32 @UART_WaitOnFlagUntilTimeout(%struct.__UART_HandleTypeDef* noundef %0, i32 noundef 64, i32 noundef %18, i32 noundef %3), !dbg !4458
  %63 = icmp eq i32 %62, 0, !dbg !4460
  br i1 %63, label %64, label %65, !dbg !4461

64:                                               ; preds = %61
  store volatile i32 32, i32* %5, align 4, !dbg !4462, !tbaa !4193
  store i32 0, i32* %13, align 4, !dbg !4463, !tbaa !4202
  br label %65, !dbg !4465

65:                                               ; preds = %50, %36, %4, %61, %12, %8, %64
  %66 = phi i32 [ 0, %64 ], [ 1, %8 ], [ 2, %12 ], [ 3, %61 ], [ 2, %4 ], [ 3, %36 ], [ 3, %50 ], !dbg !4466
  ret i32 %66, !dbg !4467
}

; Function Attrs: noinline nounwind
define internal fastcc i32 @UART_WaitOnFlagUntilTimeout(%struct.__UART_HandleTypeDef* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #3 !dbg !4468 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !4472, metadata !DIExpression()), !dbg !4477
  call void @llvm.dbg.value(metadata i32 %1, metadata !4473, metadata !DIExpression()), !dbg !4477
  call void @llvm.dbg.value(metadata i32 0, metadata !4474, metadata !DIExpression()), !dbg !4477
  call void @llvm.dbg.value(metadata i32 %2, metadata !4475, metadata !DIExpression()), !dbg !4477
  call void @llvm.dbg.value(metadata i32 %3, metadata !4476, metadata !DIExpression()), !dbg !4477
  %5 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0
  %6 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %5, align 4, !dbg !4478, !tbaa !4207
  %7 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %6, i32 0, i32 0, !dbg !4478
  %8 = load volatile i32, i32* %7, align 4, !dbg !4478, !tbaa !4479
  %9 = and i32 %8, %1, !dbg !4478
  %10 = icmp eq i32 %9, %1, !dbg !4478
  br i1 %10, label %37, label %11, !dbg !4480

11:                                               ; preds = %4
  switch i32 %3, label %17 [
    i32 0, label %21
    i32 -1, label %12
  ]

12:                                               ; preds = %17, %11
  %13 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %5, align 4, !tbaa !4207
  %14 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %13, i32 0, i32 0
  %15 = icmp eq i32 %3, -1
  br label %33, !dbg !4480

16:                                               ; preds = %33
  br i1 %15, label %33, label %17, !dbg !4481

17:                                               ; preds = %16, %11
  %18 = call i32 @HAL_GetTick() #23, !dbg !4483
  %19 = sub i32 %18, %2, !dbg !4487
  %20 = icmp ugt i32 %19, %3, !dbg !4488
  br i1 %20, label %21, label %12, !dbg !4489

21:                                               ; preds = %17, %11
  %22 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !4478
  %23 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %22, align 4, !dbg !4490, !tbaa !4207
  %24 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %23, i32 0, i32 3, !dbg !4490
  %25 = load volatile i32, i32* %24, align 4, !dbg !4490, !tbaa !2939
  %26 = and i32 %25, -417, !dbg !4490
  store volatile i32 %26, i32* %24, align 4, !dbg !4490, !tbaa !2939
  %27 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %23, i32 0, i32 5, !dbg !4492
  %28 = load volatile i32, i32* %27, align 4, !dbg !4492, !tbaa !2827
  %29 = and i32 %28, -2, !dbg !4492
  store volatile i32 %29, i32* %27, align 4, !dbg !4492, !tbaa !2827
  %30 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 11, !dbg !4493
  store volatile i32 32, i32* %30, align 4, !dbg !4494, !tbaa !4193
  %31 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 12, !dbg !4495
  store volatile i32 32, i32* %31, align 4, !dbg !4496, !tbaa !4218
  %32 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 10, !dbg !4497
  store i32 0, i32* %32, align 4, !dbg !4497, !tbaa !4202
  br label %37, !dbg !4499

33:                                               ; preds = %12, %16
  %34 = load volatile i32, i32* %14, align 4, !dbg !4478, !tbaa !4479
  %35 = and i32 %34, %1, !dbg !4478
  %36 = icmp eq i32 %35, %1, !dbg !4478
  br i1 %36, label %37, label %16, !dbg !4480, !llvm.loop !4500

37:                                               ; preds = %33, %4, %21
  %38 = phi i32 [ 3, %21 ], [ 0, %4 ], [ 0, %33 ], !dbg !4477
  ret i32 %38, !dbg !4502
}

; Function Attrs: noinline nounwind
define dso_local i32 @HAL_UART_Receive(%struct.__UART_HandleTypeDef* noundef %0, i8* noundef writeonly %1, i16 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #3 !dbg !4503 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !4505, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata i8* %1, metadata !4506, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata i16 %2, metadata !4507, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata i32 %3, metadata !4508, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.value(metadata i32 0, metadata !4510, metadata !DIExpression()), !dbg !4511
  %5 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 12, !dbg !4512
  %6 = load volatile i32, i32* %5, align 4, !dbg !4512, !tbaa !4218
  %7 = icmp eq i32 %6, 32, !dbg !4514
  br i1 %7, label %8, label %80, !dbg !4515

8:                                                ; preds = %4
  %9 = icmp eq i8* %1, null, !dbg !4516
  %10 = icmp eq i16 %2, 0
  %11 = or i1 %9, %10, !dbg !4519
  br i1 %11, label %80, label %12, !dbg !4519

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 10, !dbg !4520
  %14 = load i32, i32* %13, align 4, !dbg !4520, !tbaa !4202
  %15 = icmp eq i32 %14, 1, !dbg !4520
  br i1 %15, label %80, label %16, !dbg !4523

16:                                               ; preds = %12
  store i32 1, i32* %13, align 4, !dbg !4524, !tbaa !4202
  %17 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 13, !dbg !4526
  store volatile i32 0, i32* %17, align 4, !dbg !4527, !tbaa !4214
  store volatile i32 34, i32* %5, align 4, !dbg !4528, !tbaa !4218
  %18 = call i32 @HAL_GetTick() #23, !dbg !4529
  call void @llvm.dbg.value(metadata i32 %18, metadata !4510, metadata !DIExpression()), !dbg !4511
  %19 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 6, !dbg !4530
  store i16 %2, i16* %19, align 4, !dbg !4531, !tbaa !4532
  %20 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 7, !dbg !4533
  store volatile i16 %2, i16* %20, align 2, !dbg !4534, !tbaa !4535
  call void @llvm.dbg.value(metadata i8* %1, metadata !4506, metadata !DIExpression()), !dbg !4511
  %21 = load volatile i16, i16* %20, align 2, !dbg !4536, !tbaa !4535
  %22 = icmp eq i16 %21, 0, !dbg !4537
  br i1 %22, label %79, label %23, !dbg !4538

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 1, i32 1
  %25 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 1, i32 3
  %26 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0
  %27 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0
  %28 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 1, i32 3
  %29 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0
  %30 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0
  br label %31, !dbg !4538

31:                                               ; preds = %23, %75
  %32 = phi i8* [ %1, %23 ], [ %76, %75 ]
  call void @llvm.dbg.value(metadata i8* %32, metadata !4506, metadata !DIExpression()), !dbg !4511
  %33 = load volatile i16, i16* %20, align 2, !dbg !4539, !tbaa !4535
  %34 = add i16 %33, -1, !dbg !4539
  store volatile i16 %34, i16* %20, align 2, !dbg !4539, !tbaa !4535
  %35 = load i32, i32* %24, align 4, !dbg !4541, !tbaa !4237
  %36 = icmp eq i32 %35, 4096, !dbg !4543
  %37 = call fastcc i32 @UART_WaitOnFlagUntilTimeout(%struct.__UART_HandleTypeDef* noundef %0, i32 noundef 32, i32 noundef %18, i32 noundef %3), !dbg !4544
  %38 = icmp eq i32 %37, 0, !dbg !4544
  br i1 %36, label %39, label %58, !dbg !4545

39:                                               ; preds = %31
  br i1 %38, label %40, label %80, !dbg !4546

40:                                               ; preds = %39
  %41 = bitcast i8* %32 to i16*, !dbg !4548
  call void @llvm.dbg.value(metadata i16* %41, metadata !4509, metadata !DIExpression()), !dbg !4511
  %42 = load i32, i32* %28, align 4, !dbg !4549, !tbaa !4239
  %43 = icmp eq i32 %42, 0, !dbg !4551
  br i1 %43, label %44, label %51, !dbg !4552

44:                                               ; preds = %40
  %45 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %30, align 4, !dbg !4553, !tbaa !4207
  %46 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %45, i32 0, i32 1, !dbg !4555
  %47 = load volatile i32, i32* %46, align 4, !dbg !4555, !tbaa !4439
  %48 = trunc i32 %47 to i16, !dbg !4556
  %49 = and i16 %48, 511, !dbg !4556
  store i16 %49, i16* %41, align 2, !dbg !4557, !tbaa !4434
  %50 = getelementptr inbounds i8, i8* %32, i32 2, !dbg !4558
  call void @llvm.dbg.value(metadata i8* %50, metadata !4506, metadata !DIExpression()), !dbg !4511
  br label %75, !dbg !4559

51:                                               ; preds = %40
  %52 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %29, align 4, !dbg !4560, !tbaa !4207
  %53 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %52, i32 0, i32 1, !dbg !4562
  %54 = load volatile i32, i32* %53, align 4, !dbg !4562, !tbaa !4439
  %55 = trunc i32 %54 to i16, !dbg !4563
  %56 = and i16 %55, 255, !dbg !4563
  store i16 %56, i16* %41, align 2, !dbg !4564, !tbaa !4434
  %57 = getelementptr inbounds i8, i8* %32, i32 1, !dbg !4565
  call void @llvm.dbg.value(metadata i8* %57, metadata !4506, metadata !DIExpression()), !dbg !4511
  br label %75

58:                                               ; preds = %31
  br i1 %38, label %59, label %80, !dbg !4566

59:                                               ; preds = %58
  %60 = load i32, i32* %25, align 4, !dbg !4568, !tbaa !4239
  %61 = icmp eq i32 %60, 0, !dbg !4570
  br i1 %61, label %62, label %68, !dbg !4571

62:                                               ; preds = %59
  %63 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %27, align 4, !dbg !4572, !tbaa !4207
  %64 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %63, i32 0, i32 1, !dbg !4574
  %65 = load volatile i32, i32* %64, align 4, !dbg !4574, !tbaa !4439
  %66 = trunc i32 %65 to i8, !dbg !4575
  %67 = getelementptr inbounds i8, i8* %32, i32 1, !dbg !4576
  call void @llvm.dbg.value(metadata i8* %67, metadata !4506, metadata !DIExpression()), !dbg !4511
  store i8 %66, i8* %32, align 1, !dbg !4577, !tbaa !1500
  br label %75, !dbg !4578

68:                                               ; preds = %59
  %69 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %26, align 4, !dbg !4579, !tbaa !4207
  %70 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %69, i32 0, i32 1, !dbg !4581
  %71 = load volatile i32, i32* %70, align 4, !dbg !4581, !tbaa !4439
  %72 = trunc i32 %71 to i8, !dbg !4582
  %73 = and i8 %72, 127, !dbg !4582
  %74 = getelementptr inbounds i8, i8* %32, i32 1, !dbg !4583
  call void @llvm.dbg.value(metadata i8* %74, metadata !4506, metadata !DIExpression()), !dbg !4511
  store i8 %73, i8* %32, align 1, !dbg !4584, !tbaa !1500
  br label %75

75:                                               ; preds = %62, %68, %44, %51
  %76 = phi i8* [ %50, %44 ], [ %57, %51 ], [ %67, %62 ], [ %74, %68 ], !dbg !4544
  call void @llvm.dbg.value(metadata i8* %76, metadata !4506, metadata !DIExpression()), !dbg !4511
  %77 = load volatile i16, i16* %20, align 2, !dbg !4536, !tbaa !4535
  %78 = icmp eq i16 %77, 0, !dbg !4537
  br i1 %78, label %79, label %31, !dbg !4538, !llvm.loop !4585

79:                                               ; preds = %75, %16
  store volatile i32 32, i32* %5, align 4, !dbg !4587, !tbaa !4218
  store i32 0, i32* %13, align 4, !dbg !4588, !tbaa !4202
  br label %80, !dbg !4590

80:                                               ; preds = %58, %39, %4, %12, %8, %79
  %81 = phi i32 [ 0, %79 ], [ 1, %8 ], [ 2, %12 ], [ 2, %4 ], [ 3, %39 ], [ 3, %58 ], !dbg !4591
  ret i32 %81, !dbg !4592
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @HAL_UART_Transmit_IT(%struct.__UART_HandleTypeDef* noundef %0, i8* noundef %1, i16 noundef zeroext %2) local_unnamed_addr #9 !dbg !4593 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !4597, metadata !DIExpression()), !dbg !4600
  call void @llvm.dbg.value(metadata i8* %1, metadata !4598, metadata !DIExpression()), !dbg !4600
  call void @llvm.dbg.value(metadata i16 %2, metadata !4599, metadata !DIExpression()), !dbg !4600
  %4 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 11, !dbg !4601
  %5 = load volatile i32, i32* %4, align 4, !dbg !4601, !tbaa !4193
  %6 = icmp eq i32 %5, 32, !dbg !4603
  br i1 %6, label %7, label %25, !dbg !4604

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !4605
  %9 = icmp eq i16 %2, 0
  %10 = or i1 %8, %9, !dbg !4608
  br i1 %10, label %25, label %11, !dbg !4608

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 10, !dbg !4609
  %13 = load i32, i32* %12, align 4, !dbg !4609, !tbaa !4202
  %14 = icmp eq i32 %13, 1, !dbg !4609
  br i1 %14, label %25, label %15, !dbg !4612

15:                                               ; preds = %11
  store i32 1, i32* %12, align 4, !dbg !4613, !tbaa !4202
  %16 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 2, !dbg !4615
  store i8* %1, i8** %16, align 4, !dbg !4616, !tbaa !4617
  %17 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 3, !dbg !4618
  store i16 %2, i16* %17, align 4, !dbg !4619, !tbaa !4416
  %18 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 4, !dbg !4620
  store volatile i16 %2, i16* %18, align 2, !dbg !4621, !tbaa !4419
  %19 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 13, !dbg !4622
  store volatile i32 0, i32* %19, align 4, !dbg !4623, !tbaa !4214
  store volatile i32 33, i32* %4, align 4, !dbg !4624, !tbaa !4193
  store i32 0, i32* %12, align 4, !dbg !4625, !tbaa !4202
  %20 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !4627
  %21 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %20, align 4, !dbg !4627, !tbaa !4207
  %22 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %21, i32 0, i32 3, !dbg !4627
  %23 = load volatile i32, i32* %22, align 4, !dbg !4627, !tbaa !2939
  %24 = or i32 %23, 128, !dbg !4627
  store volatile i32 %24, i32* %22, align 4, !dbg !4627, !tbaa !2939
  br label %25, !dbg !4628

25:                                               ; preds = %3, %11, %7, %15
  %26 = phi i32 [ 0, %15 ], [ 1, %7 ], [ 2, %11 ], [ 2, %3 ], !dbg !4629
  ret i32 %26, !dbg !4630
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @HAL_UART_Receive_IT(%struct.__UART_HandleTypeDef* noundef %0, i8* noundef %1, i16 noundef zeroext %2) local_unnamed_addr #9 !dbg !4631 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !4633, metadata !DIExpression()), !dbg !4636
  call void @llvm.dbg.value(metadata i8* %1, metadata !4634, metadata !DIExpression()), !dbg !4636
  call void @llvm.dbg.value(metadata i16 %2, metadata !4635, metadata !DIExpression()), !dbg !4636
  %4 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 12, !dbg !4637
  %5 = load volatile i32, i32* %4, align 4, !dbg !4637, !tbaa !4218
  %6 = icmp eq i32 %5, 32, !dbg !4639
  br i1 %6, label %7, label %30, !dbg !4640

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !4641
  %9 = icmp eq i16 %2, 0
  %10 = or i1 %8, %9, !dbg !4644
  br i1 %10, label %30, label %11, !dbg !4644

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 10, !dbg !4645
  %13 = load i32, i32* %12, align 4, !dbg !4645, !tbaa !4202
  %14 = icmp eq i32 %13, 1, !dbg !4645
  br i1 %14, label %30, label %15, !dbg !4648

15:                                               ; preds = %11
  store i32 1, i32* %12, align 4, !dbg !4649, !tbaa !4202
  %16 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 5, !dbg !4651
  store i8* %1, i8** %16, align 4, !dbg !4652, !tbaa !4653
  %17 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 6, !dbg !4654
  store i16 %2, i16* %17, align 4, !dbg !4655, !tbaa !4532
  %18 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 7, !dbg !4656
  store volatile i16 %2, i16* %18, align 2, !dbg !4657, !tbaa !4535
  %19 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 13, !dbg !4658
  store volatile i32 0, i32* %19, align 4, !dbg !4659, !tbaa !4214
  store volatile i32 34, i32* %4, align 4, !dbg !4660, !tbaa !4218
  store i32 0, i32* %12, align 4, !dbg !4661, !tbaa !4202
  %20 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !4663
  %21 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %20, align 4, !dbg !4663, !tbaa !4207
  %22 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %21, i32 0, i32 3, !dbg !4663
  %23 = load volatile i32, i32* %22, align 4, !dbg !4663, !tbaa !2939
  %24 = or i32 %23, 256, !dbg !4663
  store volatile i32 %24, i32* %22, align 4, !dbg !4663, !tbaa !2939
  %25 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %21, i32 0, i32 5, !dbg !4664
  %26 = load volatile i32, i32* %25, align 4, !dbg !4664, !tbaa !2827
  %27 = or i32 %26, 1, !dbg !4664
  store volatile i32 %27, i32* %25, align 4, !dbg !4664, !tbaa !2827
  %28 = load volatile i32, i32* %22, align 4, !dbg !4665, !tbaa !2939
  %29 = or i32 %28, 32, !dbg !4665
  store volatile i32 %29, i32* %22, align 4, !dbg !4665, !tbaa !2939
  br label %30, !dbg !4666

30:                                               ; preds = %3, %11, %7, %15
  %31 = phi i32 [ 0, %15 ], [ 1, %7 ], [ 2, %11 ], [ 2, %3 ], !dbg !4667
  ret i32 %31, !dbg !4668
}

; Function Attrs: noinline nounwind
define dso_local i32 @HAL_UART_Transmit_DMA(%struct.__UART_HandleTypeDef* noundef %0, i8* noundef %1, i16 noundef zeroext %2) local_unnamed_addr #3 !dbg !4669 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !4671, metadata !DIExpression()), !dbg !4675
  call void @llvm.dbg.value(metadata i8* %1, metadata !4672, metadata !DIExpression()), !dbg !4675
  call void @llvm.dbg.value(metadata i16 %2, metadata !4673, metadata !DIExpression()), !dbg !4675
  %4 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 11, !dbg !4676
  %5 = load volatile i32, i32* %4, align 4, !dbg !4676, !tbaa !4193
  %6 = icmp eq i32 %5, 32, !dbg !4678
  br i1 %6, label %7, label %38, !dbg !4679

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !4680
  %9 = zext i16 %2 to i32
  %10 = icmp eq i16 %2, 0
  %11 = or i1 %8, %10, !dbg !4683
  br i1 %11, label %38, label %12, !dbg !4683

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 10, !dbg !4684
  %14 = load i32, i32* %13, align 4, !dbg !4684, !tbaa !4202
  %15 = icmp eq i32 %14, 1, !dbg !4684
  br i1 %15, label %38, label %16, !dbg !4687

16:                                               ; preds = %12
  store i32 1, i32* %13, align 4, !dbg !4688, !tbaa !4202
  %17 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 2, !dbg !4690
  store i8* %1, i8** %17, align 4, !dbg !4691, !tbaa !4617
  %18 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 3, !dbg !4692
  store i16 %2, i16* %18, align 4, !dbg !4693, !tbaa !4416
  %19 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 4, !dbg !4694
  store volatile i16 %2, i16* %19, align 2, !dbg !4695, !tbaa !4419
  %20 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 13, !dbg !4696
  store volatile i32 0, i32* %20, align 4, !dbg !4697, !tbaa !4214
  store volatile i32 33, i32* %4, align 4, !dbg !4698, !tbaa !4193
  %21 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 8, !dbg !4699
  %22 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %21, align 4, !dbg !4699, !tbaa !4700
  %23 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %22, i32 0, i32 5, !dbg !4701
  store void (%struct.__DMA_HandleTypeDef*)* @UART_DMATransmitCplt, void (%struct.__DMA_HandleTypeDef*)** %23, align 4, !dbg !4702, !tbaa !4703
  %24 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %22, i32 0, i32 6, !dbg !4705
  store void (%struct.__DMA_HandleTypeDef*)* @UART_DMATxHalfCplt, void (%struct.__DMA_HandleTypeDef*)** %24, align 4, !dbg !4706, !tbaa !4707
  %25 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %22, i32 0, i32 7, !dbg !4708
  store void (%struct.__DMA_HandleTypeDef*)* @UART_DMAError, void (%struct.__DMA_HandleTypeDef*)** %25, align 4, !dbg !4709, !tbaa !4710
  %26 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %22, i32 0, i32 8, !dbg !4711
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %26, align 4, !dbg !4712, !tbaa !4713
  call void @llvm.dbg.value(metadata i32* undef, metadata !4674, metadata !DIExpression()), !dbg !4675
  %27 = ptrtoint i8* %1 to i32, !dbg !4714
  %28 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !4715
  %29 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %28, align 4, !dbg !4715, !tbaa !4207
  %30 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %29, i32 0, i32 1, !dbg !4716
  %31 = ptrtoint i32* %30 to i32, !dbg !4717
  %32 = call i32 @HAL_DMA_Start_IT(%struct.__DMA_HandleTypeDef* noundef %22, i32 noundef %27, i32 noundef %31, i32 noundef %9) #23, !dbg !4718
  %33 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %28, align 4, !dbg !4719, !tbaa !4207
  %34 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %33, i32 0, i32 0, !dbg !4719
  store volatile i32 -65, i32* %34, align 4, !dbg !4719, !tbaa !4479
  store i32 0, i32* %13, align 4, !dbg !4720, !tbaa !4202
  %35 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %33, i32 0, i32 5, !dbg !4722
  %36 = load volatile i32, i32* %35, align 4, !dbg !4722, !tbaa !2827
  %37 = or i32 %36, 128, !dbg !4722
  store volatile i32 %37, i32* %35, align 4, !dbg !4722, !tbaa !2827
  br label %38, !dbg !4723

38:                                               ; preds = %3, %12, %7, %16
  %39 = phi i32 [ 0, %16 ], [ 1, %7 ], [ 2, %12 ], [ 2, %3 ], !dbg !4724
  ret i32 %39, !dbg !4725
}

; Function Attrs: noinline nounwind
define internal void @UART_DMATransmitCplt(%struct.__DMA_HandleTypeDef* nocapture noundef readonly %0) #3 !dbg !4726 {
  call void @llvm.dbg.value(metadata %struct.__DMA_HandleTypeDef* %0, metadata !4730, metadata !DIExpression()), !dbg !4732
  %2 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 4, !dbg !4733
  %3 = bitcast i8** %2 to %struct.__UART_HandleTypeDef**, !dbg !4733
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %3, align 4, !dbg !4733, !tbaa !4734
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %4, metadata !4731, metadata !DIExpression()), !dbg !4732
  %5 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 0, !dbg !4735
  %6 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %5, align 4, !dbg !4735, !tbaa !4737
  %7 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %6, i32 0, i32 0, !dbg !4738
  %8 = load volatile i32, i32* %7, align 4, !dbg !4738, !tbaa !2166
  %9 = and i32 %8, 32, !dbg !4739
  %10 = icmp eq i32 %9, 0, !dbg !4740
  br i1 %10, label %11, label %21, !dbg !4741

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 4, !dbg !4742
  store volatile i16 0, i16* %12, align 2, !dbg !4744, !tbaa !4419
  %13 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 0, !dbg !4745
  %14 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %13, align 4, !dbg !4745, !tbaa !4207
  %15 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %14, i32 0, i32 5, !dbg !4745
  %16 = load volatile i32, i32* %15, align 4, !dbg !4745, !tbaa !2827
  %17 = and i32 %16, -129, !dbg !4745
  store volatile i32 %17, i32* %15, align 4, !dbg !4745, !tbaa !2827
  %18 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %14, i32 0, i32 3, !dbg !4746
  %19 = load volatile i32, i32* %18, align 4, !dbg !4746, !tbaa !2939
  %20 = or i32 %19, 64, !dbg !4746
  store volatile i32 %20, i32* %18, align 4, !dbg !4746, !tbaa !2939
  br label %22, !dbg !4747

21:                                               ; preds = %1
  call void @HAL_UART_TxCpltCallback(%struct.__UART_HandleTypeDef* noundef %4), !dbg !4748
  br label %22

22:                                               ; preds = %21, %11
  ret void, !dbg !4750
}

; Function Attrs: noinline nounwind
define internal void @UART_DMATxHalfCplt(%struct.__DMA_HandleTypeDef* nocapture noundef readonly %0) #3 !dbg !4751 {
  call void @llvm.dbg.value(metadata %struct.__DMA_HandleTypeDef* %0, metadata !4753, metadata !DIExpression()), !dbg !4755
  %2 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 4, !dbg !4756
  %3 = bitcast i8** %2 to %struct.__UART_HandleTypeDef**, !dbg !4756
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %3, align 4, !dbg !4756, !tbaa !4734
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %4, metadata !4754, metadata !DIExpression()), !dbg !4755
  call void @HAL_UART_TxHalfCpltCallback(%struct.__UART_HandleTypeDef* noundef %4), !dbg !4757
  ret void, !dbg !4758
}

; Function Attrs: noinline nounwind
define internal void @UART_DMAError(%struct.__DMA_HandleTypeDef* nocapture noundef readonly %0) #3 !dbg !4759 {
  call void @llvm.dbg.value(metadata %struct.__DMA_HandleTypeDef* %0, metadata !4761, metadata !DIExpression()), !dbg !4764
  call void @llvm.dbg.value(metadata i32 0, metadata !4762, metadata !DIExpression()), !dbg !4764
  %2 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 4, !dbg !4765
  %3 = bitcast i8** %2 to %struct.__UART_HandleTypeDef**, !dbg !4765
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %3, align 4, !dbg !4765, !tbaa !4734
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %4, metadata !4763, metadata !DIExpression()), !dbg !4764
  %5 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 0, !dbg !4766
  %6 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %5, align 4, !dbg !4766, !tbaa !4207
  %7 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %6, i32 0, i32 5, !dbg !4766
  %8 = load volatile i32, i32* %7, align 4, !dbg !4766, !tbaa !2827
  %9 = and i32 %8, 128, !dbg !4766
  %10 = icmp ne i32 %9, 0, !dbg !4766
  call void @llvm.dbg.value(metadata i1 %10, metadata !4762, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4764
  %11 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 11, !dbg !4767
  %12 = load volatile i32, i32* %11, align 4, !dbg !4767, !tbaa !4193
  %13 = icmp eq i32 %12, 33, !dbg !4769
  %14 = select i1 %13, i1 %10, i1 false, !dbg !4770
  br i1 %14, label %15, label %17, !dbg !4770

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 4, !dbg !4771
  store volatile i16 0, i16* %16, align 2, !dbg !4773, !tbaa !4419
  call fastcc void @UART_EndTxTransfer(%struct.__UART_HandleTypeDef* noundef %4), !dbg !4774
  br label %17, !dbg !4775

17:                                               ; preds = %15, %1
  %18 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %5, align 4, !dbg !4776, !tbaa !4207
  %19 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %18, i32 0, i32 5, !dbg !4776
  %20 = load volatile i32, i32* %19, align 4, !dbg !4776, !tbaa !2827
  %21 = and i32 %20, 64, !dbg !4776
  %22 = icmp ne i32 %21, 0, !dbg !4776
  call void @llvm.dbg.value(metadata i1 %22, metadata !4762, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4764
  %23 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 12, !dbg !4777
  %24 = load volatile i32, i32* %23, align 4, !dbg !4777, !tbaa !4218
  %25 = icmp eq i32 %24, 34, !dbg !4779
  %26 = select i1 %25, i1 %22, i1 false, !dbg !4780
  br i1 %26, label %27, label %29, !dbg !4780

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 7, !dbg !4781
  store volatile i16 0, i16* %28, align 2, !dbg !4783, !tbaa !4535
  call fastcc void @UART_EndRxTransfer(%struct.__UART_HandleTypeDef* noundef %4), !dbg !4784
  br label %29, !dbg !4785

29:                                               ; preds = %27, %17
  %30 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 13, !dbg !4786
  %31 = load volatile i32, i32* %30, align 4, !dbg !4787, !tbaa !4214
  %32 = or i32 %31, 16, !dbg !4787
  store volatile i32 %32, i32* %30, align 4, !dbg !4787, !tbaa !4214
  call void @HAL_UART_ErrorCallback(%struct.__UART_HandleTypeDef* noundef %4), !dbg !4788
  ret void, !dbg !4789
}

declare !dbg !4790 dso_local i32 @HAL_DMA_Start_IT(%struct.__DMA_HandleTypeDef* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #22

; Function Attrs: nofree noinline norecurse nounwind
define internal fastcc void @UART_EndTxTransfer(%struct.__UART_HandleTypeDef* noundef %0) unnamed_addr #9 !dbg !4793 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !4795, metadata !DIExpression()), !dbg !4796
  %2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !4797
  %3 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %2, align 4, !dbg !4797, !tbaa !4207
  %4 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %3, i32 0, i32 3, !dbg !4797
  %5 = load volatile i32, i32* %4, align 4, !dbg !4797, !tbaa !2939
  %6 = and i32 %5, -193, !dbg !4797
  store volatile i32 %6, i32* %4, align 4, !dbg !4797, !tbaa !2939
  %7 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 11, !dbg !4798
  store volatile i32 32, i32* %7, align 4, !dbg !4799, !tbaa !4193
  ret void, !dbg !4800
}

; Function Attrs: nofree noinline norecurse nounwind
define internal fastcc void @UART_EndRxTransfer(%struct.__UART_HandleTypeDef* noundef %0) unnamed_addr #9 !dbg !4801 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !4803, metadata !DIExpression()), !dbg !4804
  %2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !4805
  %3 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %2, align 4, !dbg !4805, !tbaa !4207
  %4 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %3, i32 0, i32 3, !dbg !4805
  %5 = load volatile i32, i32* %4, align 4, !dbg !4805, !tbaa !2939
  %6 = and i32 %5, -289, !dbg !4805
  store volatile i32 %6, i32* %4, align 4, !dbg !4805, !tbaa !2939
  %7 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %3, i32 0, i32 5, !dbg !4806
  %8 = load volatile i32, i32* %7, align 4, !dbg !4806, !tbaa !2827
  %9 = and i32 %8, -2, !dbg !4806
  store volatile i32 %9, i32* %7, align 4, !dbg !4806, !tbaa !2827
  %10 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 12, !dbg !4807
  store volatile i32 32, i32* %10, align 4, !dbg !4808, !tbaa !4218
  ret void, !dbg !4809
}

; Function Attrs: noinline nounwind
define weak dso_local void @HAL_UART_ErrorCallback(%struct.__UART_HandleTypeDef* noundef %0) local_unnamed_addr #3 !dbg !4810 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !4812, metadata !DIExpression()), !dbg !4813
  ret void, !dbg !4814
}

; Function Attrs: noinline nounwind
define weak dso_local void @HAL_UART_TxHalfCpltCallback(%struct.__UART_HandleTypeDef* noundef %0) local_unnamed_addr #3 !dbg !4815 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !4817, metadata !DIExpression()), !dbg !4818
  ret void, !dbg !4819
}

; Function Attrs: noinline nounwind
define weak dso_local void @HAL_UART_TxCpltCallback(%struct.__UART_HandleTypeDef* noundef %0) local_unnamed_addr #3 !dbg !4820 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !4822, metadata !DIExpression()), !dbg !4823
  ret void, !dbg !4824
}

; Function Attrs: noinline nounwind
define dso_local i32 @HAL_UART_Receive_DMA(%struct.__UART_HandleTypeDef* noundef %0, i8* noundef %1, i16 noundef zeroext %2) local_unnamed_addr #3 !dbg !4825 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !4827, metadata !DIExpression()), !dbg !4835
  call void @llvm.dbg.value(metadata i8* %1, metadata !4828, metadata !DIExpression()), !dbg !4835
  call void @llvm.dbg.value(metadata i16 %2, metadata !4829, metadata !DIExpression()), !dbg !4835
  %5 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 12, !dbg !4836
  %6 = load volatile i32, i32* %5, align 4, !dbg !4836, !tbaa !4218
  %7 = icmp eq i32 %6, 32, !dbg !4837
  br i1 %7, label %8, label %49, !dbg !4838

8:                                                ; preds = %3
  %9 = icmp eq i8* %1, null, !dbg !4839
  %10 = zext i16 %2 to i32
  %11 = icmp eq i16 %2, 0
  %12 = or i1 %9, %11, !dbg !4841
  br i1 %12, label %49, label %13, !dbg !4841

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 10, !dbg !4842
  %15 = load i32, i32* %14, align 4, !dbg !4842, !tbaa !4202
  %16 = icmp eq i32 %15, 1, !dbg !4842
  br i1 %16, label %49, label %17, !dbg !4845

17:                                               ; preds = %13
  store i32 1, i32* %14, align 4, !dbg !4846, !tbaa !4202
  %18 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 5, !dbg !4848
  store i8* %1, i8** %18, align 4, !dbg !4849, !tbaa !4653
  %19 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 6, !dbg !4850
  store i16 %2, i16* %19, align 4, !dbg !4851, !tbaa !4532
  %20 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 13, !dbg !4852
  store volatile i32 0, i32* %20, align 4, !dbg !4853, !tbaa !4214
  store volatile i32 34, i32* %5, align 4, !dbg !4854, !tbaa !4218
  %21 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 9, !dbg !4855
  %22 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %21, align 4, !dbg !4855, !tbaa !4856
  %23 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %22, i32 0, i32 5, !dbg !4857
  store void (%struct.__DMA_HandleTypeDef*)* @UART_DMAReceiveCplt, void (%struct.__DMA_HandleTypeDef*)** %23, align 4, !dbg !4858, !tbaa !4703
  %24 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %22, i32 0, i32 6, !dbg !4859
  store void (%struct.__DMA_HandleTypeDef*)* @UART_DMARxHalfCplt, void (%struct.__DMA_HandleTypeDef*)** %24, align 4, !dbg !4860, !tbaa !4707
  %25 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %22, i32 0, i32 7, !dbg !4861
  store void (%struct.__DMA_HandleTypeDef*)* @UART_DMAError, void (%struct.__DMA_HandleTypeDef*)** %25, align 4, !dbg !4862, !tbaa !4710
  %26 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %22, i32 0, i32 8, !dbg !4863
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %26, align 4, !dbg !4864, !tbaa !4713
  call void @llvm.dbg.value(metadata i32* undef, metadata !4830, metadata !DIExpression()), !dbg !4835
  %27 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !4865
  %28 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %27, align 4, !dbg !4865, !tbaa !4207
  %29 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %28, i32 0, i32 1, !dbg !4866
  %30 = ptrtoint i32* %29 to i32, !dbg !4867
  %31 = ptrtoint i8* %1 to i32, !dbg !4868
  %32 = call i32 @HAL_DMA_Start_IT(%struct.__DMA_HandleTypeDef* noundef %22, i32 noundef %30, i32 noundef %31, i32 noundef %10) #23, !dbg !4869
  %33 = bitcast i32* %4 to i8*, !dbg !4870
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33), !dbg !4870
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4831, metadata !DIExpression()), !dbg !4870
  store volatile i32 0, i32* %4, align 4, !dbg !4870, !tbaa !1496
  %34 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %27, align 4, !dbg !4870, !tbaa !4207
  %35 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %34, i32 0, i32 0, !dbg !4870
  %36 = load volatile i32, i32* %35, align 4, !dbg !4870, !tbaa !4479
  store volatile i32 %36, i32* %4, align 4, !dbg !4870, !tbaa !1496
  %37 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %34, i32 0, i32 1, !dbg !4870
  %38 = load volatile i32, i32* %37, align 4, !dbg !4870, !tbaa !4439
  store volatile i32 %38, i32* %4, align 4, !dbg !4870, !tbaa !1496
  %39 = load volatile i32, i32* %4, align 4, !dbg !4870, !tbaa !1496
  %40 = bitcast i32* %4 to i8*, !dbg !4871
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %40), !dbg !4871
  store i32 0, i32* %14, align 4, !dbg !4872, !tbaa !4202
  %41 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %34, i32 0, i32 3, !dbg !4874
  %42 = load volatile i32, i32* %41, align 4, !dbg !4874, !tbaa !2939
  %43 = or i32 %42, 256, !dbg !4874
  store volatile i32 %43, i32* %41, align 4, !dbg !4874, !tbaa !2939
  %44 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %34, i32 0, i32 5, !dbg !4875
  %45 = load volatile i32, i32* %44, align 4, !dbg !4875, !tbaa !2827
  %46 = or i32 %45, 1, !dbg !4875
  store volatile i32 %46, i32* %44, align 4, !dbg !4875, !tbaa !2827
  %47 = load volatile i32, i32* %44, align 4, !dbg !4876, !tbaa !2827
  %48 = or i32 %47, 64, !dbg !4876
  store volatile i32 %48, i32* %44, align 4, !dbg !4876, !tbaa !2827
  br label %49, !dbg !4877

49:                                               ; preds = %3, %13, %8, %17
  %50 = phi i32 [ 0, %17 ], [ 1, %8 ], [ 2, %13 ], [ 2, %3 ], !dbg !4878
  ret i32 %50, !dbg !4879
}

; Function Attrs: noinline nounwind
define internal void @UART_DMAReceiveCplt(%struct.__DMA_HandleTypeDef* nocapture noundef readonly %0) #3 !dbg !4880 {
  call void @llvm.dbg.value(metadata %struct.__DMA_HandleTypeDef* %0, metadata !4882, metadata !DIExpression()), !dbg !4884
  %2 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 4, !dbg !4885
  %3 = bitcast i8** %2 to %struct.__UART_HandleTypeDef**, !dbg !4885
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %3, align 4, !dbg !4885, !tbaa !4734
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %4, metadata !4883, metadata !DIExpression()), !dbg !4884
  %5 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 0, !dbg !4886
  %6 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %5, align 4, !dbg !4886, !tbaa !4737
  %7 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %6, i32 0, i32 0, !dbg !4888
  %8 = load volatile i32, i32* %7, align 4, !dbg !4888, !tbaa !2166
  %9 = and i32 %8, 32, !dbg !4889
  %10 = icmp eq i32 %9, 0, !dbg !4890
  br i1 %10, label %11, label %24, !dbg !4891

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 7, !dbg !4892
  store volatile i16 0, i16* %12, align 2, !dbg !4894, !tbaa !4535
  %13 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 0, !dbg !4895
  %14 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %13, align 4, !dbg !4895, !tbaa !4207
  %15 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %14, i32 0, i32 3, !dbg !4895
  %16 = load volatile i32, i32* %15, align 4, !dbg !4895, !tbaa !2939
  %17 = and i32 %16, -257, !dbg !4895
  store volatile i32 %17, i32* %15, align 4, !dbg !4895, !tbaa !2939
  %18 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %14, i32 0, i32 5, !dbg !4896
  %19 = load volatile i32, i32* %18, align 4, !dbg !4896, !tbaa !2827
  %20 = and i32 %19, -2, !dbg !4896
  store volatile i32 %20, i32* %18, align 4, !dbg !4896, !tbaa !2827
  %21 = load volatile i32, i32* %18, align 4, !dbg !4897, !tbaa !2827
  %22 = and i32 %21, -65, !dbg !4897
  store volatile i32 %22, i32* %18, align 4, !dbg !4897, !tbaa !2827
  %23 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 12, !dbg !4898
  store volatile i32 32, i32* %23, align 4, !dbg !4899, !tbaa !4218
  br label %24, !dbg !4900

24:                                               ; preds = %11, %1
  call void @HAL_UART_RxCpltCallback(%struct.__UART_HandleTypeDef* noundef %4), !dbg !4901
  ret void, !dbg !4902
}

; Function Attrs: noinline nounwind
define internal void @UART_DMARxHalfCplt(%struct.__DMA_HandleTypeDef* nocapture noundef readonly %0) #3 !dbg !4903 {
  call void @llvm.dbg.value(metadata %struct.__DMA_HandleTypeDef* %0, metadata !4905, metadata !DIExpression()), !dbg !4907
  %2 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 4, !dbg !4908
  %3 = bitcast i8** %2 to %struct.__UART_HandleTypeDef**, !dbg !4908
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %3, align 4, !dbg !4908, !tbaa !4734
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %4, metadata !4906, metadata !DIExpression()), !dbg !4907
  call void @HAL_UART_RxHalfCpltCallback(%struct.__UART_HandleTypeDef* noundef %4), !dbg !4909
  ret void, !dbg !4910
}

; Function Attrs: noinline nounwind
define weak dso_local void @HAL_UART_RxHalfCpltCallback(%struct.__UART_HandleTypeDef* noundef %0) local_unnamed_addr #3 !dbg !4911 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !4913, metadata !DIExpression()), !dbg !4914
  ret void, !dbg !4915
}

; Function Attrs: noinline nounwind
define weak dso_local void @HAL_UART_RxCpltCallback(%struct.__UART_HandleTypeDef* noundef %0) local_unnamed_addr #3 !dbg !4916 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !4918, metadata !DIExpression()), !dbg !4919
  ret void, !dbg !4920
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @HAL_UART_DMAPause(%struct.__UART_HandleTypeDef* noundef %0) local_unnamed_addr #9 !dbg !4921 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !4923, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.value(metadata i32 0, metadata !4924, metadata !DIExpression()), !dbg !4925
  %2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 10, !dbg !4926
  %3 = load i32, i32* %2, align 4, !dbg !4926, !tbaa !4202
  %4 = icmp eq i32 %3, 1, !dbg !4926
  br i1 %4, label %36, label %5, !dbg !4929

5:                                                ; preds = %1
  store i32 1, i32* %2, align 4, !dbg !4930, !tbaa !4202
  %6 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !4932
  %7 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %6, align 4, !dbg !4932, !tbaa !4207
  %8 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %7, i32 0, i32 5, !dbg !4932
  %9 = load volatile i32, i32* %8, align 4, !dbg !4932, !tbaa !2827
  %10 = and i32 %9, 128, !dbg !4932
  %11 = icmp ne i32 %10, 0, !dbg !4932
  call void @llvm.dbg.value(metadata i1 %11, metadata !4924, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4925
  %12 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 11, !dbg !4933
  %13 = load volatile i32, i32* %12, align 4, !dbg !4933, !tbaa !4193
  %14 = icmp eq i32 %13, 33, !dbg !4935
  %15 = select i1 %14, i1 %11, i1 false, !dbg !4936
  br i1 %15, label %16, label %19, !dbg !4936

16:                                               ; preds = %5
  %17 = load volatile i32, i32* %8, align 4, !dbg !4937, !tbaa !2827
  %18 = and i32 %17, -129, !dbg !4937
  store volatile i32 %18, i32* %8, align 4, !dbg !4937, !tbaa !2827
  br label %19, !dbg !4939

19:                                               ; preds = %16, %5
  %20 = load volatile i32, i32* %8, align 4, !dbg !4940, !tbaa !2827
  %21 = and i32 %20, 64, !dbg !4940
  %22 = icmp ne i32 %21, 0, !dbg !4940
  call void @llvm.dbg.value(metadata i1 %22, metadata !4924, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4925
  %23 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 12, !dbg !4941
  %24 = load volatile i32, i32* %23, align 4, !dbg !4941, !tbaa !4218
  %25 = icmp eq i32 %24, 34, !dbg !4943
  %26 = select i1 %25, i1 %22, i1 false, !dbg !4944
  br i1 %26, label %27, label %35, !dbg !4944

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %7, i32 0, i32 3, !dbg !4945
  %29 = load volatile i32, i32* %28, align 4, !dbg !4945, !tbaa !2939
  %30 = and i32 %29, -257, !dbg !4945
  store volatile i32 %30, i32* %28, align 4, !dbg !4945, !tbaa !2939
  %31 = load volatile i32, i32* %8, align 4, !dbg !4947, !tbaa !2827
  %32 = and i32 %31, -2, !dbg !4947
  store volatile i32 %32, i32* %8, align 4, !dbg !4947, !tbaa !2827
  %33 = load volatile i32, i32* %8, align 4, !dbg !4948, !tbaa !2827
  %34 = and i32 %33, -65, !dbg !4948
  store volatile i32 %34, i32* %8, align 4, !dbg !4948, !tbaa !2827
  br label %35, !dbg !4949

35:                                               ; preds = %19, %27
  store i32 0, i32* %2, align 4, !dbg !4950, !tbaa !4202
  br label %36, !dbg !4952

36:                                               ; preds = %1, %35
  %37 = phi i32 [ 0, %35 ], [ 2, %1 ], !dbg !4925
  ret i32 %37, !dbg !4953
}

; Function Attrs: nofree noinline nounwind
define dso_local i32 @HAL_UART_DMAResume(%struct.__UART_HandleTypeDef* noundef %0) local_unnamed_addr #13 !dbg !4954 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !4956, metadata !DIExpression()), !dbg !4961
  %3 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 10, !dbg !4962
  %4 = load i32, i32* %3, align 4, !dbg !4962, !tbaa !4202
  %5 = icmp eq i32 %4, 1, !dbg !4962
  br i1 %5, label %39, label %6, !dbg !4965

6:                                                ; preds = %1
  store i32 1, i32* %3, align 4, !dbg !4966, !tbaa !4202
  %7 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 11, !dbg !4968
  %8 = load volatile i32, i32* %7, align 4, !dbg !4968, !tbaa !4193
  %9 = icmp eq i32 %8, 33, !dbg !4970
  br i1 %9, label %10, label %16, !dbg !4971

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !4972
  %12 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %11, align 4, !dbg !4972, !tbaa !4207
  %13 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %12, i32 0, i32 5, !dbg !4972
  %14 = load volatile i32, i32* %13, align 4, !dbg !4972, !tbaa !2827
  %15 = or i32 %14, 128, !dbg !4972
  store volatile i32 %15, i32* %13, align 4, !dbg !4972, !tbaa !2827
  br label %16, !dbg !4974

16:                                               ; preds = %10, %6
  %17 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 12, !dbg !4975
  %18 = load volatile i32, i32* %17, align 4, !dbg !4975, !tbaa !4218
  %19 = icmp eq i32 %18, 34, !dbg !4976
  br i1 %19, label %20, label %38, !dbg !4977

20:                                               ; preds = %16
  %21 = bitcast i32* %2 to i8*, !dbg !4978
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21), !dbg !4978
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4957, metadata !DIExpression()), !dbg !4978
  store volatile i32 0, i32* %2, align 4, !dbg !4978, !tbaa !1496
  %22 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !4978
  %23 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %22, align 4, !dbg !4978, !tbaa !4207
  %24 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %23, i32 0, i32 0, !dbg !4978
  %25 = load volatile i32, i32* %24, align 4, !dbg !4978, !tbaa !4479
  store volatile i32 %25, i32* %2, align 4, !dbg !4978, !tbaa !1496
  %26 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %23, i32 0, i32 1, !dbg !4978
  %27 = load volatile i32, i32* %26, align 4, !dbg !4978, !tbaa !4439
  store volatile i32 %27, i32* %2, align 4, !dbg !4978, !tbaa !1496
  %28 = load volatile i32, i32* %2, align 4, !dbg !4978, !tbaa !1496
  %29 = bitcast i32* %2 to i8*, !dbg !4979
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %29), !dbg !4979
  %30 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %23, i32 0, i32 3, !dbg !4980
  %31 = load volatile i32, i32* %30, align 4, !dbg !4980, !tbaa !2939
  %32 = or i32 %31, 256, !dbg !4980
  store volatile i32 %32, i32* %30, align 4, !dbg !4980, !tbaa !2939
  %33 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %23, i32 0, i32 5, !dbg !4981
  %34 = load volatile i32, i32* %33, align 4, !dbg !4981, !tbaa !2827
  %35 = or i32 %34, 1, !dbg !4981
  store volatile i32 %35, i32* %33, align 4, !dbg !4981, !tbaa !2827
  %36 = load volatile i32, i32* %33, align 4, !dbg !4982, !tbaa !2827
  %37 = or i32 %36, 64, !dbg !4982
  store volatile i32 %37, i32* %33, align 4, !dbg !4982, !tbaa !2827
  br label %38, !dbg !4983

38:                                               ; preds = %16, %20
  store i32 0, i32* %3, align 4, !dbg !4984, !tbaa !4202
  br label %39, !dbg !4986

39:                                               ; preds = %1, %38
  %40 = phi i32 [ 0, %38 ], [ 2, %1 ], !dbg !4961
  ret i32 %40, !dbg !4987
}

; Function Attrs: noinline nounwind
define dso_local i32 @HAL_UART_DMAStop(%struct.__UART_HandleTypeDef* noundef %0) local_unnamed_addr #3 !dbg !4988 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !4990, metadata !DIExpression()), !dbg !4992
  call void @llvm.dbg.value(metadata i32 0, metadata !4991, metadata !DIExpression()), !dbg !4992
  %2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !4993
  %3 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %2, align 4, !dbg !4993, !tbaa !4207
  %4 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %3, i32 0, i32 5, !dbg !4993
  %5 = load volatile i32, i32* %4, align 4, !dbg !4993, !tbaa !2827
  %6 = and i32 %5, 128, !dbg !4993
  %7 = icmp ne i32 %6, 0, !dbg !4993
  call void @llvm.dbg.value(metadata i1 %7, metadata !4991, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4992
  %8 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 11, !dbg !4994
  %9 = load volatile i32, i32* %8, align 4, !dbg !4994, !tbaa !4193
  %10 = icmp eq i32 %9, 33, !dbg !4996
  %11 = select i1 %10, i1 %7, i1 false, !dbg !4997
  br i1 %11, label %12, label %21, !dbg !4997

12:                                               ; preds = %1
  %13 = load volatile i32, i32* %4, align 4, !dbg !4998, !tbaa !2827
  %14 = and i32 %13, -129, !dbg !4998
  store volatile i32 %14, i32* %4, align 4, !dbg !4998, !tbaa !2827
  %15 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 8, !dbg !5000
  %16 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %15, align 4, !dbg !5000, !tbaa !4700
  %17 = icmp eq %struct.__DMA_HandleTypeDef* %16, null, !dbg !5002
  br i1 %17, label %20, label %18, !dbg !5003

18:                                               ; preds = %12
  %19 = call i32 @HAL_DMA_Abort(%struct.__DMA_HandleTypeDef* noundef nonnull %16) #23, !dbg !5004
  br label %20, !dbg !5006

20:                                               ; preds = %18, %12
  call fastcc void @UART_EndTxTransfer(%struct.__UART_HandleTypeDef* noundef %0), !dbg !5007
  br label %21, !dbg !5008

21:                                               ; preds = %20, %1
  %22 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %2, align 4, !dbg !5009, !tbaa !4207
  %23 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %22, i32 0, i32 5, !dbg !5009
  %24 = load volatile i32, i32* %23, align 4, !dbg !5009, !tbaa !2827
  %25 = and i32 %24, 64, !dbg !5009
  %26 = icmp ne i32 %25, 0, !dbg !5009
  call void @llvm.dbg.value(metadata i1 %26, metadata !4991, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4992
  %27 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 12, !dbg !5010
  %28 = load volatile i32, i32* %27, align 4, !dbg !5010, !tbaa !4218
  %29 = icmp eq i32 %28, 34, !dbg !5012
  %30 = select i1 %29, i1 %26, i1 false, !dbg !5013
  br i1 %30, label %31, label %40, !dbg !5013

31:                                               ; preds = %21
  %32 = load volatile i32, i32* %23, align 4, !dbg !5014, !tbaa !2827
  %33 = and i32 %32, -65, !dbg !5014
  store volatile i32 %33, i32* %23, align 4, !dbg !5014, !tbaa !2827
  %34 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 9, !dbg !5016
  %35 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %34, align 4, !dbg !5016, !tbaa !4856
  %36 = icmp eq %struct.__DMA_HandleTypeDef* %35, null, !dbg !5018
  br i1 %36, label %39, label %37, !dbg !5019

37:                                               ; preds = %31
  %38 = call i32 @HAL_DMA_Abort(%struct.__DMA_HandleTypeDef* noundef nonnull %35) #23, !dbg !5020
  br label %39, !dbg !5022

39:                                               ; preds = %37, %31
  call fastcc void @UART_EndRxTransfer(%struct.__UART_HandleTypeDef* noundef %0), !dbg !5023
  br label %40, !dbg !5024

40:                                               ; preds = %39, %21
  ret i32 0, !dbg !5025
}

declare !dbg !5026 dso_local i32 @HAL_DMA_Abort(%struct.__DMA_HandleTypeDef* noundef) local_unnamed_addr #22

; Function Attrs: noinline nounwind
define dso_local i32 @HAL_UART_Abort(%struct.__UART_HandleTypeDef* noundef %0) local_unnamed_addr #3 !dbg !5029 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !5031, metadata !DIExpression()), !dbg !5032
  %2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !5033
  %3 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %2, align 4, !dbg !5033, !tbaa !4207
  %4 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %3, i32 0, i32 3, !dbg !5033
  %5 = load volatile i32, i32* %4, align 4, !dbg !5033, !tbaa !2939
  %6 = and i32 %5, -481, !dbg !5033
  store volatile i32 %6, i32* %4, align 4, !dbg !5033, !tbaa !2939
  %7 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %3, i32 0, i32 5, !dbg !5034
  %8 = load volatile i32, i32* %7, align 4, !dbg !5034, !tbaa !2827
  %9 = and i32 %8, -2, !dbg !5034
  store volatile i32 %9, i32* %7, align 4, !dbg !5034, !tbaa !2827
  %10 = load volatile i32, i32* %7, align 4, !dbg !5035, !tbaa !2827
  %11 = and i32 %10, 128, !dbg !5035
  %12 = icmp eq i32 %11, 0, !dbg !5035
  br i1 %12, label %29, label %13, !dbg !5037

13:                                               ; preds = %1
  %14 = load volatile i32, i32* %7, align 4, !dbg !5038, !tbaa !2827
  %15 = and i32 %14, -129, !dbg !5038
  store volatile i32 %15, i32* %7, align 4, !dbg !5038, !tbaa !2827
  %16 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 8, !dbg !5040
  %17 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %16, align 4, !dbg !5040, !tbaa !4700
  %18 = icmp eq %struct.__DMA_HandleTypeDef* %17, null, !dbg !5042
  br i1 %18, label %29, label %19, !dbg !5043

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %17, i32 0, i32 8, !dbg !5044
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %20, align 4, !dbg !5046, !tbaa !4713
  %21 = call i32 @HAL_DMA_Abort(%struct.__DMA_HandleTypeDef* noundef nonnull %17) #23, !dbg !5047
  %22 = icmp eq i32 %21, 0, !dbg !5049
  br i1 %22, label %29, label %23, !dbg !5050

23:                                               ; preds = %19
  %24 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %16, align 4, !dbg !5051, !tbaa !4700
  %25 = call i32 @HAL_DMA_GetError(%struct.__DMA_HandleTypeDef* noundef %24) #23, !dbg !5054
  %26 = icmp eq i32 %25, 32, !dbg !5055
  br i1 %26, label %27, label %29, !dbg !5056

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 13, !dbg !5057
  store volatile i32 16, i32* %28, align 4, !dbg !5059, !tbaa !4214
  br label %57, !dbg !5060

29:                                               ; preds = %13, %23, %19, %1
  %30 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %2, align 4, !dbg !5061, !tbaa !4207
  %31 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %30, i32 0, i32 5, !dbg !5061
  %32 = load volatile i32, i32* %31, align 4, !dbg !5061, !tbaa !2827
  %33 = and i32 %32, 64, !dbg !5061
  %34 = icmp eq i32 %33, 0, !dbg !5061
  br i1 %34, label %51, label %35, !dbg !5063

35:                                               ; preds = %29
  %36 = load volatile i32, i32* %31, align 4, !dbg !5064, !tbaa !2827
  %37 = and i32 %36, -65, !dbg !5064
  store volatile i32 %37, i32* %31, align 4, !dbg !5064, !tbaa !2827
  %38 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 9, !dbg !5066
  %39 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %38, align 4, !dbg !5066, !tbaa !4856
  %40 = icmp eq %struct.__DMA_HandleTypeDef* %39, null, !dbg !5068
  br i1 %40, label %51, label %41, !dbg !5069

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %39, i32 0, i32 8, !dbg !5070
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %42, align 4, !dbg !5072, !tbaa !4713
  %43 = call i32 @HAL_DMA_Abort(%struct.__DMA_HandleTypeDef* noundef nonnull %39) #23, !dbg !5073
  %44 = icmp eq i32 %43, 0, !dbg !5075
  br i1 %44, label %51, label %45, !dbg !5076

45:                                               ; preds = %41
  %46 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %38, align 4, !dbg !5077, !tbaa !4856
  %47 = call i32 @HAL_DMA_GetError(%struct.__DMA_HandleTypeDef* noundef %46) #23, !dbg !5080
  %48 = icmp eq i32 %47, 32, !dbg !5081
  br i1 %48, label %49, label %51, !dbg !5082

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 13, !dbg !5083
  store volatile i32 16, i32* %50, align 4, !dbg !5085, !tbaa !4214
  br label %57, !dbg !5086

51:                                               ; preds = %35, %45, %41, %29
  %52 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 4, !dbg !5087
  store volatile i16 0, i16* %52, align 2, !dbg !5088, !tbaa !4419
  %53 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 7, !dbg !5089
  store volatile i16 0, i16* %53, align 2, !dbg !5090, !tbaa !4535
  %54 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 13, !dbg !5091
  store volatile i32 0, i32* %54, align 4, !dbg !5092, !tbaa !4214
  %55 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 12, !dbg !5093
  store volatile i32 32, i32* %55, align 4, !dbg !5094, !tbaa !4218
  %56 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 11, !dbg !5095
  store volatile i32 32, i32* %56, align 4, !dbg !5096, !tbaa !4193
  br label %57, !dbg !5097

57:                                               ; preds = %51, %49, %27
  %58 = phi i32 [ 3, %27 ], [ 3, %49 ], [ 0, %51 ], !dbg !5032
  ret i32 %58, !dbg !5098
}

declare !dbg !5099 dso_local i32 @HAL_DMA_GetError(%struct.__DMA_HandleTypeDef* noundef) local_unnamed_addr #22

; Function Attrs: noinline nounwind
define dso_local i32 @HAL_UART_AbortTransmit(%struct.__UART_HandleTypeDef* noundef %0) local_unnamed_addr #3 !dbg !5102 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !5104, metadata !DIExpression()), !dbg !5105
  %2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !5106
  %3 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %2, align 4, !dbg !5106, !tbaa !4207
  %4 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %3, i32 0, i32 3, !dbg !5106
  %5 = load volatile i32, i32* %4, align 4, !dbg !5106, !tbaa !2939
  %6 = and i32 %5, -193, !dbg !5106
  store volatile i32 %6, i32* %4, align 4, !dbg !5106, !tbaa !2939
  %7 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %3, i32 0, i32 5, !dbg !5107
  %8 = load volatile i32, i32* %7, align 4, !dbg !5107, !tbaa !2827
  %9 = and i32 %8, 128, !dbg !5107
  %10 = icmp eq i32 %9, 0, !dbg !5107
  br i1 %10, label %27, label %11, !dbg !5109

11:                                               ; preds = %1
  %12 = load volatile i32, i32* %7, align 4, !dbg !5110, !tbaa !2827
  %13 = and i32 %12, -129, !dbg !5110
  store volatile i32 %13, i32* %7, align 4, !dbg !5110, !tbaa !2827
  %14 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 8, !dbg !5112
  %15 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %14, align 4, !dbg !5112, !tbaa !4700
  %16 = icmp eq %struct.__DMA_HandleTypeDef* %15, null, !dbg !5114
  br i1 %16, label %27, label %17, !dbg !5115

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %15, i32 0, i32 8, !dbg !5116
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %18, align 4, !dbg !5118, !tbaa !4713
  %19 = call i32 @HAL_DMA_Abort(%struct.__DMA_HandleTypeDef* noundef nonnull %15) #23, !dbg !5119
  %20 = icmp eq i32 %19, 0, !dbg !5121
  br i1 %20, label %27, label %21, !dbg !5122

21:                                               ; preds = %17
  %22 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %14, align 4, !dbg !5123, !tbaa !4700
  %23 = call i32 @HAL_DMA_GetError(%struct.__DMA_HandleTypeDef* noundef %22) #23, !dbg !5126
  %24 = icmp eq i32 %23, 32, !dbg !5127
  br i1 %24, label %25, label %27, !dbg !5128

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 13, !dbg !5129
  store volatile i32 16, i32* %26, align 4, !dbg !5131, !tbaa !4214
  br label %30, !dbg !5132

27:                                               ; preds = %11, %21, %17, %1
  %28 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 4, !dbg !5133
  store volatile i16 0, i16* %28, align 2, !dbg !5134, !tbaa !4419
  %29 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 11, !dbg !5135
  store volatile i32 32, i32* %29, align 4, !dbg !5136, !tbaa !4193
  br label %30, !dbg !5137

30:                                               ; preds = %27, %25
  %31 = phi i32 [ 3, %25 ], [ 0, %27 ], !dbg !5105
  ret i32 %31, !dbg !5138
}

; Function Attrs: noinline nounwind
define dso_local i32 @HAL_UART_AbortReceive(%struct.__UART_HandleTypeDef* noundef %0) local_unnamed_addr #3 !dbg !5139 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !5141, metadata !DIExpression()), !dbg !5142
  %2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !5143
  %3 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %2, align 4, !dbg !5143, !tbaa !4207
  %4 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %3, i32 0, i32 3, !dbg !5143
  %5 = load volatile i32, i32* %4, align 4, !dbg !5143, !tbaa !2939
  %6 = and i32 %5, -289, !dbg !5143
  store volatile i32 %6, i32* %4, align 4, !dbg !5143, !tbaa !2939
  %7 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %3, i32 0, i32 5, !dbg !5144
  %8 = load volatile i32, i32* %7, align 4, !dbg !5144, !tbaa !2827
  %9 = and i32 %8, -2, !dbg !5144
  store volatile i32 %9, i32* %7, align 4, !dbg !5144, !tbaa !2827
  %10 = load volatile i32, i32* %7, align 4, !dbg !5145, !tbaa !2827
  %11 = and i32 %10, 64, !dbg !5145
  %12 = icmp eq i32 %11, 0, !dbg !5145
  br i1 %12, label %29, label %13, !dbg !5147

13:                                               ; preds = %1
  %14 = load volatile i32, i32* %7, align 4, !dbg !5148, !tbaa !2827
  %15 = and i32 %14, -65, !dbg !5148
  store volatile i32 %15, i32* %7, align 4, !dbg !5148, !tbaa !2827
  %16 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 9, !dbg !5150
  %17 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %16, align 4, !dbg !5150, !tbaa !4856
  %18 = icmp eq %struct.__DMA_HandleTypeDef* %17, null, !dbg !5152
  br i1 %18, label %29, label %19, !dbg !5153

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %17, i32 0, i32 8, !dbg !5154
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %20, align 4, !dbg !5156, !tbaa !4713
  %21 = call i32 @HAL_DMA_Abort(%struct.__DMA_HandleTypeDef* noundef nonnull %17) #23, !dbg !5157
  %22 = icmp eq i32 %21, 0, !dbg !5159
  br i1 %22, label %29, label %23, !dbg !5160

23:                                               ; preds = %19
  %24 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %16, align 4, !dbg !5161, !tbaa !4856
  %25 = call i32 @HAL_DMA_GetError(%struct.__DMA_HandleTypeDef* noundef %24) #23, !dbg !5164
  %26 = icmp eq i32 %25, 32, !dbg !5165
  br i1 %26, label %27, label %29, !dbg !5166

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 13, !dbg !5167
  store volatile i32 16, i32* %28, align 4, !dbg !5169, !tbaa !4214
  br label %32, !dbg !5170

29:                                               ; preds = %13, %23, %19, %1
  %30 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 7, !dbg !5171
  store volatile i16 0, i16* %30, align 2, !dbg !5172, !tbaa !4535
  %31 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 12, !dbg !5173
  store volatile i32 32, i32* %31, align 4, !dbg !5174, !tbaa !4218
  br label %32, !dbg !5175

32:                                               ; preds = %29, %27
  %33 = phi i32 [ 3, %27 ], [ 0, %29 ], !dbg !5142
  ret i32 %33, !dbg !5176
}

; Function Attrs: noinline nounwind
define dso_local i32 @HAL_UART_Abort_IT(%struct.__UART_HandleTypeDef* noundef %0) local_unnamed_addr #3 !dbg !5177 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !5179, metadata !DIExpression()), !dbg !5181
  call void @llvm.dbg.value(metadata i32 1, metadata !5180, metadata !DIExpression()), !dbg !5181
  %2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !5182
  %3 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %2, align 4, !dbg !5182, !tbaa !4207
  %4 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %3, i32 0, i32 3, !dbg !5182
  %5 = load volatile i32, i32* %4, align 4, !dbg !5182, !tbaa !2939
  %6 = and i32 %5, -481, !dbg !5182
  store volatile i32 %6, i32* %4, align 4, !dbg !5182, !tbaa !2939
  %7 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %3, i32 0, i32 5, !dbg !5183
  %8 = load volatile i32, i32* %7, align 4, !dbg !5183, !tbaa !2827
  %9 = and i32 %8, -2, !dbg !5183
  store volatile i32 %9, i32* %7, align 4, !dbg !5183, !tbaa !2827
  %10 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 8, !dbg !5184
  %11 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %10, align 4, !dbg !5184, !tbaa !4700
  %12 = icmp eq %struct.__DMA_HandleTypeDef* %11, null, !dbg !5186
  br i1 %12, label %19, label %13, !dbg !5187

13:                                               ; preds = %1
  %14 = load volatile i32, i32* %7, align 4, !dbg !5188, !tbaa !2827
  %15 = and i32 %14, 128, !dbg !5188
  %16 = icmp eq i32 %15, 0, !dbg !5188
  %17 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %11, i32 0, i32 8, !dbg !5191
  %18 = select i1 %16, void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)* @UART_DMATxAbortCallback
  store void (%struct.__DMA_HandleTypeDef*)* %18, void (%struct.__DMA_HandleTypeDef*)** %17, align 4, !dbg !5191, !tbaa !4713
  br label %19, !dbg !5192

19:                                               ; preds = %13, %1
  %20 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 9, !dbg !5192
  %21 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %20, align 4, !dbg !5192, !tbaa !4856
  %22 = icmp eq %struct.__DMA_HandleTypeDef* %21, null, !dbg !5194
  br i1 %22, label %29, label %23, !dbg !5195

23:                                               ; preds = %19
  %24 = load volatile i32, i32* %7, align 4, !dbg !5196, !tbaa !2827
  %25 = and i32 %24, 64, !dbg !5196
  %26 = icmp eq i32 %25, 0, !dbg !5196
  %27 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %21, i32 0, i32 8, !dbg !5199
  %28 = select i1 %26, void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)* @UART_DMARxAbortCallback
  store void (%struct.__DMA_HandleTypeDef*)* %28, void (%struct.__DMA_HandleTypeDef*)** %27, align 4, !dbg !5199, !tbaa !4713
  br label %29, !dbg !5200

29:                                               ; preds = %23, %19
  %30 = load volatile i32, i32* %7, align 4, !dbg !5200, !tbaa !2827
  %31 = and i32 %30, 128, !dbg !5200
  %32 = icmp eq i32 %31, 0, !dbg !5200
  br i1 %32, label %42, label %33, !dbg !5202

33:                                               ; preds = %29
  %34 = load volatile i32, i32* %7, align 4, !dbg !5203, !tbaa !2827
  %35 = and i32 %34, -129, !dbg !5203
  store volatile i32 %35, i32* %7, align 4, !dbg !5203, !tbaa !2827
  br i1 %12, label %42, label %36, !dbg !5205

36:                                               ; preds = %33
  %37 = call i32 @HAL_DMA_Abort_IT(%struct.__DMA_HandleTypeDef* noundef nonnull %11) #23, !dbg !5206
  %38 = icmp eq i32 %37, 0, !dbg !5210
  br i1 %38, label %42, label %39, !dbg !5211

39:                                               ; preds = %36
  %40 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %10, align 4, !dbg !5212, !tbaa !4700
  %41 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %40, i32 0, i32 8, !dbg !5214
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %41, align 4, !dbg !5215, !tbaa !4713
  br label %42, !dbg !5216

42:                                               ; preds = %36, %33, %39, %29
  %43 = phi i32 [ 1, %39 ], [ 1, %33 ], [ 1, %29 ], [ 0, %36 ], !dbg !5181
  call void @llvm.dbg.value(metadata i32 %43, metadata !5180, metadata !DIExpression()), !dbg !5181
  %44 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %2, align 4, !dbg !5217, !tbaa !4207
  %45 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %44, i32 0, i32 5, !dbg !5217
  %46 = load volatile i32, i32* %45, align 4, !dbg !5217, !tbaa !2827
  %47 = and i32 %46, 64, !dbg !5217
  %48 = icmp eq i32 %47, 0, !dbg !5217
  br i1 %48, label %60, label %49, !dbg !5219

49:                                               ; preds = %42
  %50 = load volatile i32, i32* %45, align 4, !dbg !5220, !tbaa !2827
  %51 = and i32 %50, -65, !dbg !5220
  store volatile i32 %51, i32* %45, align 4, !dbg !5220, !tbaa !2827
  %52 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %20, align 4, !dbg !5222, !tbaa !4856
  %53 = icmp eq %struct.__DMA_HandleTypeDef* %52, null, !dbg !5224
  br i1 %53, label %60, label %54, !dbg !5225

54:                                               ; preds = %49
  %55 = call i32 @HAL_DMA_Abort_IT(%struct.__DMA_HandleTypeDef* noundef nonnull %52) #23, !dbg !5226
  %56 = icmp eq i32 %55, 0, !dbg !5229
  br i1 %56, label %60, label %57, !dbg !5230

57:                                               ; preds = %54
  %58 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %20, align 4, !dbg !5231, !tbaa !4856
  %59 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %58, i32 0, i32 8, !dbg !5233
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %59, align 4, !dbg !5234, !tbaa !4713
  call void @llvm.dbg.value(metadata i32 1, metadata !5180, metadata !DIExpression()), !dbg !5181
  br label %60, !dbg !5235

60:                                               ; preds = %54, %49, %57, %42
  %61 = phi i32 [ 1, %57 ], [ %43, %49 ], [ %43, %42 ], [ 0, %54 ], !dbg !5181
  call void @llvm.dbg.value(metadata i32 %61, metadata !5180, metadata !DIExpression()), !dbg !5181
  %62 = icmp eq i32 %61, 1, !dbg !5236
  br i1 %62, label %63, label %69, !dbg !5238

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 4, !dbg !5239
  store volatile i16 0, i16* %64, align 2, !dbg !5241, !tbaa !4419
  %65 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 7, !dbg !5242
  store volatile i16 0, i16* %65, align 2, !dbg !5243, !tbaa !4535
  %66 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 13, !dbg !5244
  store volatile i32 0, i32* %66, align 4, !dbg !5245, !tbaa !4214
  %67 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 11, !dbg !5246
  store volatile i32 32, i32* %67, align 4, !dbg !5247, !tbaa !4193
  %68 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 12, !dbg !5248
  store volatile i32 32, i32* %68, align 4, !dbg !5249, !tbaa !4218
  call void @HAL_UART_AbortCpltCallback(%struct.__UART_HandleTypeDef* noundef %0), !dbg !5250
  br label %69, !dbg !5251

69:                                               ; preds = %63, %60
  ret i32 0, !dbg !5252
}

; Function Attrs: noinline nounwind
define internal void @UART_DMATxAbortCallback(%struct.__DMA_HandleTypeDef* nocapture noundef readonly %0) #3 !dbg !5253 {
  call void @llvm.dbg.value(metadata %struct.__DMA_HandleTypeDef* %0, metadata !5255, metadata !DIExpression()), !dbg !5257
  %2 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 4, !dbg !5258
  %3 = bitcast i8** %2 to %struct.__UART_HandleTypeDef**, !dbg !5258
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %3, align 4, !dbg !5258, !tbaa !4734
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %4, metadata !5256, metadata !DIExpression()), !dbg !5257
  %5 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 8, !dbg !5259
  %6 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %5, align 4, !dbg !5259, !tbaa !4700
  %7 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %6, i32 0, i32 8, !dbg !5260
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %7, align 4, !dbg !5261, !tbaa !4713
  %8 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 9, !dbg !5262
  %9 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %8, align 4, !dbg !5262, !tbaa !4856
  %10 = icmp eq %struct.__DMA_HandleTypeDef* %9, null, !dbg !5264
  br i1 %10, label %15, label %11, !dbg !5265

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %9, i32 0, i32 8, !dbg !5266
  %13 = load void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)** %12, align 4, !dbg !5266, !tbaa !4713
  %14 = icmp eq void (%struct.__DMA_HandleTypeDef*)* %13, null, !dbg !5269
  br i1 %14, label %15, label %21, !dbg !5270

15:                                               ; preds = %11, %1
  %16 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 4, !dbg !5271
  store volatile i16 0, i16* %16, align 2, !dbg !5272, !tbaa !4419
  %17 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 7, !dbg !5273
  store volatile i16 0, i16* %17, align 2, !dbg !5274, !tbaa !4535
  %18 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 13, !dbg !5275
  store volatile i32 0, i32* %18, align 4, !dbg !5276, !tbaa !4214
  %19 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 11, !dbg !5277
  store volatile i32 32, i32* %19, align 4, !dbg !5278, !tbaa !4193
  %20 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 12, !dbg !5279
  store volatile i32 32, i32* %20, align 4, !dbg !5280, !tbaa !4218
  call void @HAL_UART_AbortCpltCallback(%struct.__UART_HandleTypeDef* noundef %4), !dbg !5281
  br label %21, !dbg !5282

21:                                               ; preds = %11, %15
  ret void, !dbg !5282
}

; Function Attrs: noinline nounwind
define internal void @UART_DMARxAbortCallback(%struct.__DMA_HandleTypeDef* nocapture noundef readonly %0) #3 !dbg !5283 {
  call void @llvm.dbg.value(metadata %struct.__DMA_HandleTypeDef* %0, metadata !5285, metadata !DIExpression()), !dbg !5287
  %2 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 4, !dbg !5288
  %3 = bitcast i8** %2 to %struct.__UART_HandleTypeDef**, !dbg !5288
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %3, align 4, !dbg !5288, !tbaa !4734
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %4, metadata !5286, metadata !DIExpression()), !dbg !5287
  %5 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 9, !dbg !5289
  %6 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %5, align 4, !dbg !5289, !tbaa !4856
  %7 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %6, i32 0, i32 8, !dbg !5290
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %7, align 4, !dbg !5291, !tbaa !4713
  %8 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 8, !dbg !5292
  %9 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %8, align 4, !dbg !5292, !tbaa !4700
  %10 = icmp eq %struct.__DMA_HandleTypeDef* %9, null, !dbg !5294
  br i1 %10, label %15, label %11, !dbg !5295

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %9, i32 0, i32 8, !dbg !5296
  %13 = load void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)** %12, align 4, !dbg !5296, !tbaa !4713
  %14 = icmp eq void (%struct.__DMA_HandleTypeDef*)* %13, null, !dbg !5299
  br i1 %14, label %15, label %21, !dbg !5300

15:                                               ; preds = %11, %1
  %16 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 4, !dbg !5301
  store volatile i16 0, i16* %16, align 2, !dbg !5302, !tbaa !4419
  %17 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 7, !dbg !5303
  store volatile i16 0, i16* %17, align 2, !dbg !5304, !tbaa !4535
  %18 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 13, !dbg !5305
  store volatile i32 0, i32* %18, align 4, !dbg !5306, !tbaa !4214
  %19 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 11, !dbg !5307
  store volatile i32 32, i32* %19, align 4, !dbg !5308, !tbaa !4193
  %20 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 12, !dbg !5309
  store volatile i32 32, i32* %20, align 4, !dbg !5310, !tbaa !4218
  call void @HAL_UART_AbortCpltCallback(%struct.__UART_HandleTypeDef* noundef %4), !dbg !5311
  br label %21, !dbg !5312

21:                                               ; preds = %11, %15
  ret void, !dbg !5312
}

declare !dbg !5313 dso_local i32 @HAL_DMA_Abort_IT(%struct.__DMA_HandleTypeDef* noundef) local_unnamed_addr #22

; Function Attrs: noinline nounwind
define weak dso_local void @HAL_UART_AbortCpltCallback(%struct.__UART_HandleTypeDef* noundef %0) local_unnamed_addr #3 !dbg !5314 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !5316, metadata !DIExpression()), !dbg !5317
  ret void, !dbg !5318
}

; Function Attrs: noinline nounwind
define dso_local i32 @HAL_UART_AbortTransmit_IT(%struct.__UART_HandleTypeDef* noundef %0) local_unnamed_addr #3 !dbg !5319 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !5321, metadata !DIExpression()), !dbg !5322
  %2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !5323
  %3 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %2, align 4, !dbg !5323, !tbaa !4207
  %4 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %3, i32 0, i32 3, !dbg !5323
  %5 = load volatile i32, i32* %4, align 4, !dbg !5323, !tbaa !2939
  %6 = and i32 %5, -193, !dbg !5323
  store volatile i32 %6, i32* %4, align 4, !dbg !5323, !tbaa !2939
  %7 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %3, i32 0, i32 5, !dbg !5324
  %8 = load volatile i32, i32* %7, align 4, !dbg !5324, !tbaa !2827
  %9 = and i32 %8, 128, !dbg !5324
  %10 = icmp eq i32 %9, 0, !dbg !5324
  br i1 %10, label %28, label %11, !dbg !5326

11:                                               ; preds = %1
  %12 = load volatile i32, i32* %7, align 4, !dbg !5327, !tbaa !2827
  %13 = and i32 %12, -129, !dbg !5327
  store volatile i32 %13, i32* %7, align 4, !dbg !5327, !tbaa !2827
  %14 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 8, !dbg !5329
  %15 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %14, align 4, !dbg !5329, !tbaa !4700
  %16 = icmp eq %struct.__DMA_HandleTypeDef* %15, null, !dbg !5331
  br i1 %16, label %25, label %17, !dbg !5332

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %15, i32 0, i32 8, !dbg !5333
  store void (%struct.__DMA_HandleTypeDef*)* @UART_DMATxOnlyAbortCallback, void (%struct.__DMA_HandleTypeDef*)** %18, align 4, !dbg !5335, !tbaa !4713
  %19 = call i32 @HAL_DMA_Abort_IT(%struct.__DMA_HandleTypeDef* noundef nonnull %15) #23, !dbg !5336
  %20 = icmp eq i32 %19, 0, !dbg !5338
  br i1 %20, label %31, label %21, !dbg !5339

21:                                               ; preds = %17
  %22 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %14, align 4, !dbg !5340, !tbaa !4700
  %23 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %22, i32 0, i32 8, !dbg !5342
  %24 = load void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)** %23, align 4, !dbg !5342, !tbaa !4713
  call void %24(%struct.__DMA_HandleTypeDef* noundef %22) #23, !dbg !5343
  br label %31, !dbg !5344

25:                                               ; preds = %11
  %26 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 4, !dbg !5345
  store volatile i16 0, i16* %26, align 2, !dbg !5347, !tbaa !4419
  %27 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 11, !dbg !5348
  store volatile i32 32, i32* %27, align 4, !dbg !5349, !tbaa !4193
  call void @HAL_UART_AbortTransmitCpltCallback(%struct.__UART_HandleTypeDef* noundef %0), !dbg !5350
  br label %31

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 4, !dbg !5351
  store volatile i16 0, i16* %29, align 2, !dbg !5353, !tbaa !4419
  %30 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 11, !dbg !5354
  store volatile i32 32, i32* %30, align 4, !dbg !5355, !tbaa !4193
  call void @HAL_UART_AbortTransmitCpltCallback(%struct.__UART_HandleTypeDef* noundef %0), !dbg !5356
  br label %31

31:                                               ; preds = %25, %21, %17, %28
  ret i32 0, !dbg !5357
}

; Function Attrs: noinline nounwind
define internal void @UART_DMATxOnlyAbortCallback(%struct.__DMA_HandleTypeDef* nocapture noundef readonly %0) #3 !dbg !5358 {
  call void @llvm.dbg.value(metadata %struct.__DMA_HandleTypeDef* %0, metadata !5360, metadata !DIExpression()), !dbg !5362
  %2 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 4, !dbg !5363
  %3 = bitcast i8** %2 to %struct.__UART_HandleTypeDef**, !dbg !5363
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %3, align 4, !dbg !5363, !tbaa !4734
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %4, metadata !5361, metadata !DIExpression()), !dbg !5362
  %5 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 4, !dbg !5364
  store volatile i16 0, i16* %5, align 2, !dbg !5365, !tbaa !4419
  %6 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 11, !dbg !5366
  store volatile i32 32, i32* %6, align 4, !dbg !5367, !tbaa !4193
  call void @HAL_UART_AbortTransmitCpltCallback(%struct.__UART_HandleTypeDef* noundef %4), !dbg !5368
  ret void, !dbg !5369
}

; Function Attrs: noinline nounwind
define weak dso_local void @HAL_UART_AbortTransmitCpltCallback(%struct.__UART_HandleTypeDef* noundef %0) local_unnamed_addr #3 !dbg !5370 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !5372, metadata !DIExpression()), !dbg !5373
  ret void, !dbg !5374
}

; Function Attrs: noinline nounwind
define dso_local i32 @HAL_UART_AbortReceive_IT(%struct.__UART_HandleTypeDef* noundef %0) local_unnamed_addr #3 !dbg !5375 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !5377, metadata !DIExpression()), !dbg !5378
  %2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !5379
  %3 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %2, align 4, !dbg !5379, !tbaa !4207
  %4 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %3, i32 0, i32 3, !dbg !5379
  %5 = load volatile i32, i32* %4, align 4, !dbg !5379, !tbaa !2939
  %6 = and i32 %5, -289, !dbg !5379
  store volatile i32 %6, i32* %4, align 4, !dbg !5379, !tbaa !2939
  %7 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %3, i32 0, i32 5, !dbg !5380
  %8 = load volatile i32, i32* %7, align 4, !dbg !5380, !tbaa !2827
  %9 = and i32 %8, -2, !dbg !5380
  store volatile i32 %9, i32* %7, align 4, !dbg !5380, !tbaa !2827
  %10 = load volatile i32, i32* %7, align 4, !dbg !5381, !tbaa !2827
  %11 = and i32 %10, 64, !dbg !5381
  %12 = icmp eq i32 %11, 0, !dbg !5381
  br i1 %12, label %30, label %13, !dbg !5383

13:                                               ; preds = %1
  %14 = load volatile i32, i32* %7, align 4, !dbg !5384, !tbaa !2827
  %15 = and i32 %14, -65, !dbg !5384
  store volatile i32 %15, i32* %7, align 4, !dbg !5384, !tbaa !2827
  %16 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 9, !dbg !5386
  %17 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %16, align 4, !dbg !5386, !tbaa !4856
  %18 = icmp eq %struct.__DMA_HandleTypeDef* %17, null, !dbg !5388
  br i1 %18, label %27, label %19, !dbg !5389

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %17, i32 0, i32 8, !dbg !5390
  store void (%struct.__DMA_HandleTypeDef*)* @UART_DMARxOnlyAbortCallback, void (%struct.__DMA_HandleTypeDef*)** %20, align 4, !dbg !5392, !tbaa !4713
  %21 = call i32 @HAL_DMA_Abort_IT(%struct.__DMA_HandleTypeDef* noundef nonnull %17) #23, !dbg !5393
  %22 = icmp eq i32 %21, 0, !dbg !5395
  br i1 %22, label %33, label %23, !dbg !5396

23:                                               ; preds = %19
  %24 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %16, align 4, !dbg !5397, !tbaa !4856
  %25 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %24, i32 0, i32 8, !dbg !5399
  %26 = load void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)** %25, align 4, !dbg !5399, !tbaa !4713
  call void %26(%struct.__DMA_HandleTypeDef* noundef %24) #23, !dbg !5400
  br label %33, !dbg !5401

27:                                               ; preds = %13
  %28 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 7, !dbg !5402
  store volatile i16 0, i16* %28, align 2, !dbg !5404, !tbaa !4535
  %29 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 12, !dbg !5405
  store volatile i32 32, i32* %29, align 4, !dbg !5406, !tbaa !4218
  call void @HAL_UART_AbortReceiveCpltCallback(%struct.__UART_HandleTypeDef* noundef %0), !dbg !5407
  br label %33

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 7, !dbg !5408
  store volatile i16 0, i16* %31, align 2, !dbg !5410, !tbaa !4535
  %32 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 12, !dbg !5411
  store volatile i32 32, i32* %32, align 4, !dbg !5412, !tbaa !4218
  call void @HAL_UART_AbortReceiveCpltCallback(%struct.__UART_HandleTypeDef* noundef %0), !dbg !5413
  br label %33

33:                                               ; preds = %27, %23, %19, %30
  ret i32 0, !dbg !5414
}

; Function Attrs: noinline nounwind
define internal void @UART_DMARxOnlyAbortCallback(%struct.__DMA_HandleTypeDef* nocapture noundef readonly %0) #3 !dbg !5415 {
  call void @llvm.dbg.value(metadata %struct.__DMA_HandleTypeDef* %0, metadata !5417, metadata !DIExpression()), !dbg !5419
  %2 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 4, !dbg !5420
  %3 = bitcast i8** %2 to %struct.__UART_HandleTypeDef**, !dbg !5420
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %3, align 4, !dbg !5420, !tbaa !4734
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %4, metadata !5418, metadata !DIExpression()), !dbg !5419
  %5 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 7, !dbg !5421
  store volatile i16 0, i16* %5, align 2, !dbg !5422, !tbaa !4535
  %6 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 12, !dbg !5423
  store volatile i32 32, i32* %6, align 4, !dbg !5424, !tbaa !4218
  call void @HAL_UART_AbortReceiveCpltCallback(%struct.__UART_HandleTypeDef* noundef %4), !dbg !5425
  ret void, !dbg !5426
}

; Function Attrs: noinline nounwind
define weak dso_local void @HAL_UART_AbortReceiveCpltCallback(%struct.__UART_HandleTypeDef* noundef %0) local_unnamed_addr #3 !dbg !5427 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !5429, metadata !DIExpression()), !dbg !5430
  ret void, !dbg !5431
}

; Function Attrs: noinline nounwind
define dso_local void @HAL_UART_IRQHandler(%struct.__UART_HandleTypeDef* noundef %0) local_unnamed_addr #3 !dbg !5432 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !5434, metadata !DIExpression()), !dbg !5440
  %2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !5441
  %3 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %2, align 4, !dbg !5441, !tbaa !4207
  %4 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %3, i32 0, i32 0, !dbg !5441
  %5 = load volatile i32, i32* %4, align 4, !dbg !5441, !tbaa !4479
  call void @llvm.dbg.value(metadata i32 %5, metadata !5435, metadata !DIExpression()), !dbg !5440
  %6 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %3, i32 0, i32 3, !dbg !5442
  %7 = load volatile i32, i32* %6, align 4, !dbg !5442, !tbaa !2939
  call void @llvm.dbg.value(metadata i32 %7, metadata !5436, metadata !DIExpression()), !dbg !5440
  %8 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %3, i32 0, i32 5, !dbg !5443
  %9 = load volatile i32, i32* %8, align 4, !dbg !5443, !tbaa !2827
  call void @llvm.dbg.value(metadata i32 %9, metadata !5437, metadata !DIExpression()), !dbg !5440
  call void @llvm.dbg.value(metadata i32 0, metadata !5438, metadata !DIExpression()), !dbg !5440
  call void @llvm.dbg.value(metadata i32 0, metadata !5439, metadata !DIExpression()), !dbg !5440
  call void @llvm.dbg.value(metadata i32 %5, metadata !5438, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !5440
  %10 = and i32 %5, 32
  %11 = icmp eq i32 %10, 0
  %12 = and i32 %5, 47, !dbg !5444
  %13 = icmp ne i32 %12, 32, !dbg !5444
  %14 = and i32 %7, 32
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %13, i1 true, i1 %15, !dbg !5444
  br i1 %16, label %18, label %17, !dbg !5444

17:                                               ; preds = %1
  call fastcc void @UART_Receive_IT(%struct.__UART_HandleTypeDef* noundef %0), !dbg !5445
  br label %115, !dbg !5450

18:                                               ; preds = %1
  %19 = and i32 %5, 15, !dbg !5451
  call void @llvm.dbg.value(metadata i32 %19, metadata !5438, metadata !DIExpression()), !dbg !5440
  %20 = icmp eq i32 %19, 0, !dbg !5452
  br i1 %20, label %101, label %21, !dbg !5454

21:                                               ; preds = %18
  %22 = and i32 %9, 1, !dbg !5455
  %23 = icmp eq i32 %22, 0, !dbg !5456
  %24 = and i32 %7, 288
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %23, i1 %25, i1 false, !dbg !5457
  br i1 %26, label %101, label %27, !dbg !5457

27:                                               ; preds = %21
  %28 = and i32 %5, 1, !dbg !5458
  %29 = icmp eq i32 %28, 0, !dbg !5461
  %30 = and i32 %7, 256
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %29, i1 true, i1 %31, !dbg !5462
  br i1 %32, label %37, label %33, !dbg !5462

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 13, !dbg !5463
  %35 = load volatile i32, i32* %34, align 4, !dbg !5465, !tbaa !4214
  %36 = or i32 %35, 1, !dbg !5465
  store volatile i32 %36, i32* %34, align 4, !dbg !5465, !tbaa !4214
  br label %37, !dbg !5466

37:                                               ; preds = %33, %27
  %38 = and i32 %5, 4, !dbg !5467
  %39 = icmp eq i32 %38, 0, !dbg !5469
  %40 = select i1 %39, i1 true, i1 %23, !dbg !5470
  br i1 %40, label %45, label %41, !dbg !5470

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 13, !dbg !5471
  %43 = load volatile i32, i32* %42, align 4, !dbg !5473, !tbaa !4214
  %44 = or i32 %43, 2, !dbg !5473
  store volatile i32 %44, i32* %42, align 4, !dbg !5473, !tbaa !4214
  br label %45, !dbg !5474

45:                                               ; preds = %37, %41
  %46 = and i32 %5, 2, !dbg !5475
  %47 = icmp eq i32 %46, 0, !dbg !5477
  %48 = select i1 %47, i1 true, i1 %23, !dbg !5478
  br i1 %48, label %53, label %49, !dbg !5478

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 13, !dbg !5479
  %51 = load volatile i32, i32* %50, align 4, !dbg !5481, !tbaa !4214
  %52 = or i32 %51, 4, !dbg !5481
  store volatile i32 %52, i32* %50, align 4, !dbg !5481, !tbaa !4214
  br label %53, !dbg !5482

53:                                               ; preds = %45, %49
  %54 = and i32 %5, 8, !dbg !5483
  %55 = icmp eq i32 %54, 0, !dbg !5485
  %56 = select i1 %55, i1 true, i1 %23, !dbg !5486
  br i1 %56, label %61, label %57, !dbg !5486

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 13, !dbg !5487
  %59 = load volatile i32, i32* %58, align 4, !dbg !5489, !tbaa !4214
  %60 = or i32 %59, 8, !dbg !5489
  store volatile i32 %60, i32* %58, align 4, !dbg !5489, !tbaa !4214
  br label %61, !dbg !5490

61:                                               ; preds = %53, %57
  %62 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 13, !dbg !5491
  %63 = load volatile i32, i32* %62, align 4, !dbg !5491, !tbaa !4214
  %64 = icmp eq i32 %63, 0, !dbg !5493
  br i1 %64, label %115, label %65, !dbg !5494

65:                                               ; preds = %61
  %66 = select i1 %11, i1 true, i1 %15, !dbg !5495
  br i1 %66, label %68, label %67, !dbg !5495

67:                                               ; preds = %65
  call fastcc void @UART_Receive_IT(%struct.__UART_HandleTypeDef* noundef %0), !dbg !5498
  br label %68, !dbg !5500

68:                                               ; preds = %67, %65
  %69 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %2, align 4, !dbg !5501, !tbaa !4207
  %70 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %69, i32 0, i32 5, !dbg !5501
  %71 = load volatile i32, i32* %70, align 4, !dbg !5501, !tbaa !2827
  %72 = and i32 %71, 64, !dbg !5501
  %73 = icmp ne i32 %72, 0, !dbg !5501
  call void @llvm.dbg.value(metadata i1 %73, metadata !5439, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5440
  %74 = load volatile i32, i32* %62, align 4, !dbg !5502, !tbaa !4214
  %75 = and i32 %74, 8, !dbg !5504
  %76 = icmp ne i32 %75, 0, !dbg !5505
  %77 = select i1 %76, i1 true, i1 %73, !dbg !5506
  br i1 %77, label %78, label %100, !dbg !5506

78:                                               ; preds = %68
  call fastcc void @UART_EndRxTransfer(%struct.__UART_HandleTypeDef* noundef %0), !dbg !5507
  %79 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %2, align 4, !dbg !5509, !tbaa !4207
  %80 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %79, i32 0, i32 5, !dbg !5509
  %81 = load volatile i32, i32* %80, align 4, !dbg !5509, !tbaa !2827
  %82 = and i32 %81, 64, !dbg !5509
  %83 = icmp eq i32 %82, 0, !dbg !5509
  br i1 %83, label %99, label %84, !dbg !5511

84:                                               ; preds = %78
  %85 = load volatile i32, i32* %80, align 4, !dbg !5512, !tbaa !2827
  %86 = and i32 %85, -65, !dbg !5512
  store volatile i32 %86, i32* %80, align 4, !dbg !5512, !tbaa !2827
  %87 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 9, !dbg !5514
  %88 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %87, align 4, !dbg !5514, !tbaa !4856
  %89 = icmp eq %struct.__DMA_HandleTypeDef* %88, null, !dbg !5516
  br i1 %89, label %98, label %90, !dbg !5517

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %88, i32 0, i32 8, !dbg !5518
  store void (%struct.__DMA_HandleTypeDef*)* @UART_DMAAbortOnError, void (%struct.__DMA_HandleTypeDef*)** %91, align 4, !dbg !5520, !tbaa !4713
  %92 = call i32 @HAL_DMA_Abort_IT(%struct.__DMA_HandleTypeDef* noundef nonnull %88) #23, !dbg !5521
  %93 = icmp eq i32 %92, 0, !dbg !5523
  br i1 %93, label %115, label %94, !dbg !5524

94:                                               ; preds = %90
  %95 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %87, align 4, !dbg !5525, !tbaa !4856
  %96 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %95, i32 0, i32 8, !dbg !5527
  %97 = load void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)** %96, align 4, !dbg !5527, !tbaa !4713
  call void %97(%struct.__DMA_HandleTypeDef* noundef %95) #23, !dbg !5528
  br label %115, !dbg !5529

98:                                               ; preds = %84
  call void @HAL_UART_ErrorCallback(%struct.__UART_HandleTypeDef* noundef %0), !dbg !5530
  br label %115

99:                                               ; preds = %78
  call void @HAL_UART_ErrorCallback(%struct.__UART_HandleTypeDef* noundef %0), !dbg !5532
  br label %115

100:                                              ; preds = %68
  call void @HAL_UART_ErrorCallback(%struct.__UART_HandleTypeDef* noundef %0), !dbg !5534
  store volatile i32 0, i32* %62, align 4, !dbg !5536, !tbaa !4214
  br label %115

101:                                              ; preds = %21, %18
  %102 = and i32 %5, 128, !dbg !5537
  %103 = icmp eq i32 %102, 0, !dbg !5539
  %104 = and i32 %7, 128
  %105 = icmp eq i32 %104, 0
  %106 = select i1 %103, i1 true, i1 %105, !dbg !5540
  br i1 %106, label %108, label %107, !dbg !5540

107:                                              ; preds = %101
  call fastcc void @UART_Transmit_IT(%struct.__UART_HandleTypeDef* noundef %0), !dbg !5541
  br label %115, !dbg !5543

108:                                              ; preds = %101
  %109 = and i32 %5, 64, !dbg !5544
  %110 = icmp eq i32 %109, 0, !dbg !5546
  %111 = and i32 %7, 64
  %112 = icmp eq i32 %111, 0
  %113 = select i1 %110, i1 true, i1 %112, !dbg !5547
  br i1 %113, label %115, label %114, !dbg !5547

114:                                              ; preds = %108
  call fastcc void @UART_EndTransmit_IT(%struct.__UART_HandleTypeDef* noundef %0), !dbg !5548
  br label %115, !dbg !5550

115:                                              ; preds = %108, %61, %99, %90, %94, %98, %100, %114, %107, %17
  ret void, !dbg !5551
}

; Function Attrs: noinline nounwind
define internal fastcc void @UART_Receive_IT(%struct.__UART_HandleTypeDef* noundef %0) unnamed_addr #3 !dbg !5552 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !5554, metadata !DIExpression()), !dbg !5556
  %2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 12, !dbg !5557
  %3 = load volatile i32, i32* %2, align 4, !dbg !5557, !tbaa !4218
  %4 = icmp eq i32 %3, 34, !dbg !5559
  br i1 %4, label %5, label %63, !dbg !5560

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 1, i32 1, !dbg !5561
  %7 = load i32, i32* %6, align 4, !dbg !5561, !tbaa !4237
  %8 = icmp eq i32 %7, 4096, !dbg !5564
  br i1 %8, label %9, label %29, !dbg !5565

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 5, !dbg !5566
  %11 = bitcast i8** %10 to i16**, !dbg !5566
  %12 = load i16*, i16** %11, align 4, !dbg !5566, !tbaa !4653
  call void @llvm.dbg.value(metadata i16* %12, metadata !5555, metadata !DIExpression()), !dbg !5556
  %13 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 1, i32 3, !dbg !5568
  %14 = load i32, i32* %13, align 4, !dbg !5568, !tbaa !4239
  %15 = icmp eq i32 %14, 0, !dbg !5570
  %16 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !5571
  %17 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %16, align 4, !dbg !5571, !tbaa !4207
  %18 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %17, i32 0, i32 1, !dbg !5571
  %19 = load volatile i32, i32* %18, align 4, !dbg !5571, !tbaa !4439
  %20 = trunc i32 %19 to i16, !dbg !5571
  br i1 %15, label %21, label %25, !dbg !5572

21:                                               ; preds = %9
  %22 = and i16 %20, 511, !dbg !5573
  store i16 %22, i16* %12, align 2, !dbg !5575, !tbaa !4434
  %23 = load i8*, i8** %10, align 4, !dbg !5576, !tbaa !4653
  %24 = getelementptr inbounds i8, i8* %23, i32 2, !dbg !5576
  store i8* %24, i8** %10, align 4, !dbg !5576, !tbaa !4653
  br label %47, !dbg !5577

25:                                               ; preds = %9
  %26 = and i16 %20, 255, !dbg !5578
  store i16 %26, i16* %12, align 2, !dbg !5580, !tbaa !4434
  %27 = load i8*, i8** %10, align 4, !dbg !5581, !tbaa !4653
  %28 = getelementptr inbounds i8, i8* %27, i32 1, !dbg !5581
  store i8* %28, i8** %10, align 4, !dbg !5581, !tbaa !4653
  br label %47

29:                                               ; preds = %5
  %30 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 1, i32 3, !dbg !5582
  %31 = load i32, i32* %30, align 4, !dbg !5582, !tbaa !4239
  %32 = icmp eq i32 %31, 0, !dbg !5585
  %33 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !5586
  %34 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %33, align 4, !dbg !5586, !tbaa !4207
  %35 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %34, i32 0, i32 1, !dbg !5586
  %36 = load volatile i32, i32* %35, align 4, !dbg !5586, !tbaa !4439
  %37 = trunc i32 %36 to i8, !dbg !5586
  br i1 %32, label %38, label %42, !dbg !5587

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 5, !dbg !5588
  %40 = load i8*, i8** %39, align 4, !dbg !5590, !tbaa !4653
  %41 = getelementptr inbounds i8, i8* %40, i32 1, !dbg !5590
  store i8* %41, i8** %39, align 4, !dbg !5590, !tbaa !4653
  store i8 %37, i8* %40, align 1, !dbg !5591, !tbaa !1500
  br label %47, !dbg !5592

42:                                               ; preds = %29
  %43 = and i8 %37, 127, !dbg !5593
  %44 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 5, !dbg !5595
  %45 = load i8*, i8** %44, align 4, !dbg !5596, !tbaa !4653
  %46 = getelementptr inbounds i8, i8* %45, i32 1, !dbg !5596
  store i8* %46, i8** %44, align 4, !dbg !5596, !tbaa !4653
  store i8 %43, i8* %45, align 1, !dbg !5597, !tbaa !1500
  br label %47

47:                                               ; preds = %38, %42, %21, %25
  %48 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 7, !dbg !5598
  %49 = load volatile i16, i16* %48, align 2, !dbg !5600, !tbaa !4535
  %50 = add i16 %49, -1, !dbg !5600
  store volatile i16 %50, i16* %48, align 2, !dbg !5600, !tbaa !4535
  %51 = icmp eq i16 %50, 0, !dbg !5601
  br i1 %51, label %52, label %63, !dbg !5602

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !5603
  %54 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %53, align 4, !dbg !5603, !tbaa !4207
  %55 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %54, i32 0, i32 3, !dbg !5603
  %56 = load volatile i32, i32* %55, align 4, !dbg !5603, !tbaa !2939
  %57 = and i32 %56, -33, !dbg !5603
  store volatile i32 %57, i32* %55, align 4, !dbg !5603, !tbaa !2939
  %58 = load volatile i32, i32* %55, align 4, !dbg !5605, !tbaa !2939
  %59 = and i32 %58, -257, !dbg !5605
  store volatile i32 %59, i32* %55, align 4, !dbg !5605, !tbaa !2939
  %60 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %54, i32 0, i32 5, !dbg !5606
  %61 = load volatile i32, i32* %60, align 4, !dbg !5606, !tbaa !2827
  %62 = and i32 %61, -2, !dbg !5606
  store volatile i32 %62, i32* %60, align 4, !dbg !5606, !tbaa !2827
  store volatile i32 32, i32* %2, align 4, !dbg !5607, !tbaa !4218
  call void @HAL_UART_RxCpltCallback(%struct.__UART_HandleTypeDef* noundef %0), !dbg !5608
  br label %63, !dbg !5609

63:                                               ; preds = %1, %47, %52
  ret void, !dbg !5610
}

; Function Attrs: noinline nounwind
define internal void @UART_DMAAbortOnError(%struct.__DMA_HandleTypeDef* nocapture noundef readonly %0) #3 !dbg !5611 {
  call void @llvm.dbg.value(metadata %struct.__DMA_HandleTypeDef* %0, metadata !5613, metadata !DIExpression()), !dbg !5615
  %2 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 4, !dbg !5616
  %3 = bitcast i8** %2 to %struct.__UART_HandleTypeDef**, !dbg !5616
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %3, align 4, !dbg !5616, !tbaa !4734
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %4, metadata !5614, metadata !DIExpression()), !dbg !5615
  %5 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 7, !dbg !5617
  store volatile i16 0, i16* %5, align 2, !dbg !5618, !tbaa !4535
  %6 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 4, !dbg !5619
  store volatile i16 0, i16* %6, align 2, !dbg !5620, !tbaa !4419
  call void @HAL_UART_ErrorCallback(%struct.__UART_HandleTypeDef* noundef %4), !dbg !5621
  ret void, !dbg !5622
}

; Function Attrs: nofree noinline norecurse nounwind
define internal fastcc void @UART_Transmit_IT(%struct.__UART_HandleTypeDef* noundef %0) unnamed_addr #9 !dbg !5623 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !5625, metadata !DIExpression()), !dbg !5627
  %2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 11, !dbg !5628
  %3 = load volatile i32, i32* %2, align 4, !dbg !5628, !tbaa !4193
  %4 = icmp eq i32 %3, 33, !dbg !5630
  br i1 %4, label %5, label %48, !dbg !5631

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 1, i32 1, !dbg !5632
  %7 = load i32, i32* %6, align 4, !dbg !5632, !tbaa !4237
  %8 = icmp eq i32 %7, 4096, !dbg !5635
  %9 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 2, !dbg !5636
  br i1 %8, label %10, label %27, !dbg !5637

10:                                               ; preds = %5
  %11 = bitcast i8** %9 to i16**, !dbg !5638
  %12 = load i16*, i16** %11, align 4, !dbg !5638, !tbaa !4617
  call void @llvm.dbg.value(metadata i16* %12, metadata !5626, metadata !DIExpression()), !dbg !5627
  %13 = load i16, i16* %12, align 2, !dbg !5640, !tbaa !4434
  %14 = and i16 %13, 511, !dbg !5641
  %15 = zext i16 %14 to i32, !dbg !5642
  %16 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !5643
  %17 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %16, align 4, !dbg !5643, !tbaa !4207
  %18 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %17, i32 0, i32 1, !dbg !5644
  store volatile i32 %15, i32* %18, align 4, !dbg !5645, !tbaa !4439
  %19 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 1, i32 3, !dbg !5646
  %20 = load i32, i32* %19, align 4, !dbg !5646, !tbaa !4239
  %21 = icmp eq i32 %20, 0, !dbg !5648
  %22 = load i8*, i8** %9, align 4, !dbg !5649, !tbaa !4617
  br i1 %21, label %23, label %25, !dbg !5650

23:                                               ; preds = %10
  %24 = getelementptr inbounds i8, i8* %22, i32 2, !dbg !5651
  store i8* %24, i8** %9, align 4, !dbg !5651, !tbaa !4617
  br label %35, !dbg !5653

25:                                               ; preds = %10
  %26 = getelementptr inbounds i8, i8* %22, i32 1, !dbg !5654
  store i8* %26, i8** %9, align 4, !dbg !5654, !tbaa !4617
  br label %35

27:                                               ; preds = %5
  %28 = load i8*, i8** %9, align 4, !dbg !5656, !tbaa !4617
  %29 = getelementptr inbounds i8, i8* %28, i32 1, !dbg !5656
  store i8* %29, i8** %9, align 4, !dbg !5656, !tbaa !4617
  %30 = load i8, i8* %28, align 1, !dbg !5658, !tbaa !1500
  %31 = zext i8 %30 to i32, !dbg !5659
  %32 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !5660
  %33 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %32, align 4, !dbg !5660, !tbaa !4207
  %34 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %33, i32 0, i32 1, !dbg !5661
  store volatile i32 %31, i32* %34, align 4, !dbg !5662, !tbaa !4439
  br label %35

35:                                               ; preds = %23, %25, %27
  %36 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 4, !dbg !5663
  %37 = load volatile i16, i16* %36, align 2, !dbg !5665, !tbaa !4419
  %38 = add i16 %37, -1, !dbg !5665
  store volatile i16 %38, i16* %36, align 2, !dbg !5665, !tbaa !4419
  %39 = icmp eq i16 %38, 0, !dbg !5666
  br i1 %39, label %40, label %48, !dbg !5667

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !5668
  %42 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %41, align 4, !dbg !5668, !tbaa !4207
  %43 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %42, i32 0, i32 3, !dbg !5668
  %44 = load volatile i32, i32* %43, align 4, !dbg !5668, !tbaa !2939
  %45 = and i32 %44, -129, !dbg !5668
  store volatile i32 %45, i32* %43, align 4, !dbg !5668, !tbaa !2939
  %46 = load volatile i32, i32* %43, align 4, !dbg !5670, !tbaa !2939
  %47 = or i32 %46, 64, !dbg !5670
  store volatile i32 %47, i32* %43, align 4, !dbg !5670, !tbaa !2939
  br label %48, !dbg !5671

48:                                               ; preds = %1, %35, %40
  ret void, !dbg !5672
}

; Function Attrs: noinline nounwind
define internal fastcc void @UART_EndTransmit_IT(%struct.__UART_HandleTypeDef* noundef %0) unnamed_addr #3 !dbg !5673 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !5675, metadata !DIExpression()), !dbg !5676
  %2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !5677
  %3 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %2, align 4, !dbg !5677, !tbaa !4207
  %4 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %3, i32 0, i32 3, !dbg !5677
  %5 = load volatile i32, i32* %4, align 4, !dbg !5677, !tbaa !2939
  %6 = and i32 %5, -65, !dbg !5677
  store volatile i32 %6, i32* %4, align 4, !dbg !5677, !tbaa !2939
  %7 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 11, !dbg !5678
  store volatile i32 32, i32* %7, align 4, !dbg !5679, !tbaa !4193
  call void @HAL_UART_TxCpltCallback(%struct.__UART_HandleTypeDef* noundef %0), !dbg !5680
  ret void, !dbg !5681
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @HAL_LIN_SendBreak(%struct.__UART_HandleTypeDef* noundef %0) local_unnamed_addr #9 !dbg !5682 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !5684, metadata !DIExpression()), !dbg !5685
  %2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 10, !dbg !5686
  %3 = load i32, i32* %2, align 4, !dbg !5686, !tbaa !4202
  %4 = icmp eq i32 %3, 1, !dbg !5686
  br i1 %4, label %12, label %5, !dbg !5689

5:                                                ; preds = %1
  store i32 1, i32* %2, align 4, !dbg !5690, !tbaa !4202
  %6 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 11, !dbg !5692
  store volatile i32 36, i32* %6, align 4, !dbg !5693, !tbaa !4193
  %7 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !5694
  %8 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %7, align 4, !dbg !5694, !tbaa !4207
  %9 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %8, i32 0, i32 3, !dbg !5694
  %10 = load volatile i32, i32* %9, align 4, !dbg !5694, !tbaa !2939
  %11 = or i32 %10, 1, !dbg !5694
  store volatile i32 %11, i32* %9, align 4, !dbg !5694, !tbaa !2939
  store volatile i32 32, i32* %6, align 4, !dbg !5695, !tbaa !4193
  store i32 0, i32* %2, align 4, !dbg !5696, !tbaa !4202
  br label %12, !dbg !5698

12:                                               ; preds = %1, %5
  %13 = phi i32 [ 0, %5 ], [ 2, %1 ], !dbg !5685
  ret i32 %13, !dbg !5699
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @HAL_MultiProcessor_EnterMuteMode(%struct.__UART_HandleTypeDef* noundef %0) local_unnamed_addr #9 !dbg !5700 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !5702, metadata !DIExpression()), !dbg !5703
  %2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 10, !dbg !5704
  %3 = load i32, i32* %2, align 4, !dbg !5704, !tbaa !4202
  %4 = icmp eq i32 %3, 1, !dbg !5704
  br i1 %4, label %12, label %5, !dbg !5707

5:                                                ; preds = %1
  store i32 1, i32* %2, align 4, !dbg !5708, !tbaa !4202
  %6 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 11, !dbg !5710
  store volatile i32 36, i32* %6, align 4, !dbg !5711, !tbaa !4193
  %7 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !5712
  %8 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %7, align 4, !dbg !5712, !tbaa !4207
  %9 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %8, i32 0, i32 3, !dbg !5712
  %10 = load volatile i32, i32* %9, align 4, !dbg !5712, !tbaa !2939
  %11 = or i32 %10, 2, !dbg !5712
  store volatile i32 %11, i32* %9, align 4, !dbg !5712, !tbaa !2939
  store volatile i32 32, i32* %6, align 4, !dbg !5713, !tbaa !4193
  store i32 0, i32* %2, align 4, !dbg !5714, !tbaa !4202
  br label %12, !dbg !5716

12:                                               ; preds = %1, %5
  %13 = phi i32 [ 0, %5 ], [ 2, %1 ], !dbg !5703
  ret i32 %13, !dbg !5717
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @HAL_MultiProcessor_ExitMuteMode(%struct.__UART_HandleTypeDef* noundef %0) local_unnamed_addr #9 !dbg !5718 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !5720, metadata !DIExpression()), !dbg !5721
  %2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 10, !dbg !5722
  %3 = load i32, i32* %2, align 4, !dbg !5722, !tbaa !4202
  %4 = icmp eq i32 %3, 1, !dbg !5722
  br i1 %4, label %12, label %5, !dbg !5725

5:                                                ; preds = %1
  store i32 1, i32* %2, align 4, !dbg !5726, !tbaa !4202
  %6 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 11, !dbg !5728
  store volatile i32 36, i32* %6, align 4, !dbg !5729, !tbaa !4193
  %7 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !5730
  %8 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %7, align 4, !dbg !5730, !tbaa !4207
  %9 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %8, i32 0, i32 3, !dbg !5730
  %10 = load volatile i32, i32* %9, align 4, !dbg !5730, !tbaa !2939
  %11 = and i32 %10, -3, !dbg !5730
  store volatile i32 %11, i32* %9, align 4, !dbg !5730, !tbaa !2939
  store volatile i32 32, i32* %6, align 4, !dbg !5731, !tbaa !4193
  store i32 0, i32* %2, align 4, !dbg !5732, !tbaa !4202
  br label %12, !dbg !5734

12:                                               ; preds = %1, %5
  %13 = phi i32 [ 0, %5 ], [ 2, %1 ], !dbg !5721
  ret i32 %13, !dbg !5735
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @HAL_HalfDuplex_EnableTransmitter(%struct.__UART_HandleTypeDef* noundef %0) local_unnamed_addr #9 !dbg !5736 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !5738, metadata !DIExpression()), !dbg !5740
  call void @llvm.dbg.value(metadata i32 0, metadata !5739, metadata !DIExpression()), !dbg !5740
  %2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 10, !dbg !5741
  %3 = load i32, i32* %2, align 4, !dbg !5741, !tbaa !4202
  %4 = icmp eq i32 %3, 1, !dbg !5741
  br i1 %4, label %13, label %5, !dbg !5744

5:                                                ; preds = %1
  store i32 1, i32* %2, align 4, !dbg !5745, !tbaa !4202
  %6 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 11, !dbg !5747
  store volatile i32 36, i32* %6, align 4, !dbg !5748, !tbaa !4193
  %7 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !5749
  %8 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %7, align 4, !dbg !5749, !tbaa !4207
  %9 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %8, i32 0, i32 3, !dbg !5750
  %10 = load volatile i32, i32* %9, align 4, !dbg !5750, !tbaa !2939
  call void @llvm.dbg.value(metadata i32 %10, metadata !5739, metadata !DIExpression()), !dbg !5740
  %11 = and i32 %10, -13, !dbg !5751
  call void @llvm.dbg.value(metadata i32 %11, metadata !5739, metadata !DIExpression()), !dbg !5740
  %12 = or i32 %11, 8, !dbg !5752
  call void @llvm.dbg.value(metadata i32 %12, metadata !5739, metadata !DIExpression()), !dbg !5740
  store volatile i32 %12, i32* %9, align 4, !dbg !5753, !tbaa !2939
  store volatile i32 32, i32* %6, align 4, !dbg !5754, !tbaa !4193
  store i32 0, i32* %2, align 4, !dbg !5755, !tbaa !4202
  br label %13, !dbg !5757

13:                                               ; preds = %1, %5
  %14 = phi i32 [ 0, %5 ], [ 2, %1 ], !dbg !5740
  ret i32 %14, !dbg !5758
}

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @HAL_HalfDuplex_EnableReceiver(%struct.__UART_HandleTypeDef* noundef %0) local_unnamed_addr #9 !dbg !5759 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !5761, metadata !DIExpression()), !dbg !5763
  call void @llvm.dbg.value(metadata i32 0, metadata !5762, metadata !DIExpression()), !dbg !5763
  %2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 10, !dbg !5764
  %3 = load i32, i32* %2, align 4, !dbg !5764, !tbaa !4202
  %4 = icmp eq i32 %3, 1, !dbg !5764
  br i1 %4, label %13, label %5, !dbg !5767

5:                                                ; preds = %1
  store i32 1, i32* %2, align 4, !dbg !5768, !tbaa !4202
  %6 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 11, !dbg !5770
  store volatile i32 36, i32* %6, align 4, !dbg !5771, !tbaa !4193
  %7 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !5772
  %8 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %7, align 4, !dbg !5772, !tbaa !4207
  %9 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %8, i32 0, i32 3, !dbg !5773
  %10 = load volatile i32, i32* %9, align 4, !dbg !5773, !tbaa !2939
  call void @llvm.dbg.value(metadata i32 %10, metadata !5762, metadata !DIExpression()), !dbg !5763
  %11 = and i32 %10, -13, !dbg !5774
  call void @llvm.dbg.value(metadata i32 %11, metadata !5762, metadata !DIExpression()), !dbg !5763
  %12 = or i32 %11, 4, !dbg !5775
  call void @llvm.dbg.value(metadata i32 %12, metadata !5762, metadata !DIExpression()), !dbg !5763
  store volatile i32 %12, i32* %9, align 4, !dbg !5776, !tbaa !2939
  store volatile i32 32, i32* %6, align 4, !dbg !5777, !tbaa !4193
  store i32 0, i32* %2, align 4, !dbg !5778, !tbaa !4202
  br label %13, !dbg !5780

13:                                               ; preds = %1, %5
  %14 = phi i32 [ 0, %5 ], [ 2, %1 ], !dbg !5763
  ret i32 %14, !dbg !5781
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local i32 @HAL_UART_GetState(%struct.__UART_HandleTypeDef* noundef %0) local_unnamed_addr #10 !dbg !5782 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !5786, metadata !DIExpression()), !dbg !5789
  call void @llvm.dbg.value(metadata i32 0, metadata !5787, metadata !DIExpression()), !dbg !5789
  call void @llvm.dbg.value(metadata i32 0, metadata !5788, metadata !DIExpression()), !dbg !5789
  %2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 11, !dbg !5790
  %3 = load volatile i32, i32* %2, align 4, !dbg !5790, !tbaa !4193
  call void @llvm.dbg.value(metadata i32 %3, metadata !5787, metadata !DIExpression()), !dbg !5789
  %4 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 12, !dbg !5791
  %5 = load volatile i32, i32* %4, align 4, !dbg !5791, !tbaa !4218
  call void @llvm.dbg.value(metadata i32 %5, metadata !5788, metadata !DIExpression()), !dbg !5789
  %6 = or i32 %5, %3, !dbg !5792
  ret i32 %6, !dbg !5793
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind willreturn
define dso_local i32 @HAL_UART_GetError(%struct.__UART_HandleTypeDef* noundef %0) local_unnamed_addr #10 !dbg !5794 {
  call void @llvm.dbg.value(metadata %struct.__UART_HandleTypeDef* %0, metadata !5798, metadata !DIExpression()), !dbg !5799
  %2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 13, !dbg !5800
  %3 = load volatile i32, i32* %2, align 4, !dbg !5800, !tbaa !4214
  ret i32 %3, !dbg !5801
}

attributes #0 = { mustprogress noinline norecurse nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold noreturn nounwind }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nofree nounwind }
attributes #9 = { nofree noinline norecurse nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree noinline norecurse nounwind willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind readonly willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind readnone willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { mustprogress nofree noinline nosync nounwind readnone willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { noinline noreturn nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { mustprogress nofree noinline nounwind willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { mustprogress nofree noinline nosync nounwind willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { mustprogress noinline noreturn nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #20 = { mustprogress nofree noinline norecurse nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #21 = { mustprogress nofree noinline norecurse nosync nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #22 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m3" "target-features"="+armv7-m,+hwdiv,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #23 = { nounwind }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { noreturn }

!llvm.dbg.cu = !{!6, !380, !779, !457, !833, !887, !940, !969, !578, !972, !1101, !1103}
!llvm.ident = !{!1215, !1215, !1215, !1215, !1215, !1215, !1215, !1215, !1215, !1215, !1215, !1215}
!llvm.module.flags = !{!1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "instance", scope: !2, file: !3, line: 112, type: !375, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "USART2_IRQHandler", scope: !3, file: !3, line: 110, type: !4, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !374)
!3 = !DIFile(filename: "../examples/stm32f1/serial.cpp", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "04d385882f3b0a8c1c0c82a10f3573f0")
!4 = !DISubroutineType(types: !5)
!5 = !{null}
!6 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !7, retainedTypes: !16, globals: !198, imports: !216, splitDebugInlining: false, nameTableKind: None)
!7 = !{!8}
!8 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, file: !9, line: 41, baseType: !10, size: 32, elements: !11, identifier: "_ZTS17HAL_StatusTypeDef")
!9 = !DIFile(filename: "../dep/STM32Cube_FW_F1_V1.8.0/Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_def.h", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "4d6e0bbb91efacee14a68a416f506def")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !{!12, !13, !14, !15}
!12 = !DIEnumerator(name: "HAL_OK", value: 0, isUnsigned: true)
!13 = !DIEnumerator(name: "HAL_ERROR", value: 1, isUnsigned: true)
!14 = !DIEnumerator(name: "HAL_BUSY", value: 2, isUnsigned: true)
!15 = !DIEnumerator(name: "HAL_TIMEOUT", value: 3, isUnsigned: true)
!16 = !{!17, !34, !37, !40, !45, !46, !49}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 32)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "USART_TypeDef", file: !19, line: 516, baseType: !20)
!19 = !DIFile(filename: "../dep/STM32Cube_FW_F1_V1.8.0/Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "d2562af6d7239ab46ca8ba238a43c848")
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 507, size: 224, flags: DIFlagTypePassByValue, elements: !21, identifier: "_ZTS13USART_TypeDef")
!21 = !{!22, !28, !29, !30, !31, !32, !33}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "SR", scope: !20, file: !19, line: 509, baseType: !23, size: 32)
!23 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !25, line: 48, baseType: !26)
!25 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_stdint.h", directory: "/home/mjshen/RTOSExploration", checksumkind: CSK_MD5, checksum: "ab914e287601b2385e57880e6599aa6b")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !27, line: 79, baseType: !10)
!27 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/machine/_default_types.h", directory: "/home/mjshen/RTOSExploration", checksumkind: CSK_MD5, checksum: "f7024d0682a918b41f94e8be9cd90461")
!28 = !DIDerivedType(tag: DW_TAG_member, name: "DR", scope: !20, file: !19, line: 510, baseType: !23, size: 32, offset: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "BRR", scope: !20, file: !19, line: 511, baseType: !23, size: 32, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "CR1", scope: !20, file: !19, line: 512, baseType: !23, size: 32, offset: 96)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "CR2", scope: !20, file: !19, line: 513, baseType: !23, size: 32, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "CR3", scope: !20, file: !19, line: 514, baseType: !23, size: 32, offset: 160)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "GTPR", scope: !20, file: !19, line: 515, baseType: !23, size: 32, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 32)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPIO_TypeDef", file: !19, line: 367, baseType: !36)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 358, size: 224, flags: DIFlagFwdDecl, identifier: "_ZTS12GPIO_TypeDef")
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !25, line: 36, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !27, line: 57, baseType: !39)
!39 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !25, line: 24, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !27, line: 43, baseType: !44)
!44 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 32)
!46 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "SerialTask", file: !3, line: 15, size: 224, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !47, vtableHolder: !49, identifier: "_ZTS10SerialTask")
!47 = !{!48, !93, !190, !191, !195}
!48 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !46, baseType: !49, flags: DIFlagPublic, extraData: i32 0)
!49 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Task", scope: !51, file: !50, line: 193, size: 160, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !52, vtableHolder: !49, identifier: "_ZTSN6Cicada4TaskE")
!50 = !DIFile(filename: "../cicada/task.h", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "c2aeaca9a01dbc0caa84f135ef9fda2b")
!51 = !DINamespace(name: "Cicada", scope: null)
!52 = !{!53, !59, !60, !61, !63, !64, !68, !71, !76, !77, !80, !83, !84, !85, !86, !89}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$Task", scope: !50, file: !50, baseType: !54, size: 32, flags: DIFlagArtificial)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 32)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !56, size: 32)
!56 = !DISubroutineType(types: !57)
!57 = !{!58}
!58 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_delay", scope: !49, file: !50, line: 283, baseType: !37, size: 16, offset: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_timeout", scope: !49, file: !50, line: 284, baseType: !24, size: 32, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_isTimeoutRunning", scope: !49, file: !50, line: 285, baseType: !62, size: 8, offset: 96)
!62 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_lastRun", scope: !49, file: !50, line: 286, baseType: !24, size: 32, offset: 128)
!64 = !DISubprogram(name: "Task", scope: !49, file: !50, line: 196, type: !65, scopeLine: 196, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !67, !37}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!68 = !DISubprogram(name: "~Task", scope: !49, file: !50, line: 198, type: !69, scopeLine: 198, containingType: !49, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !67}
!71 = !DISubprogram(name: "delay", linkageName: "_ZNK6Cicada4Task5delayEv", scope: !49, file: !50, line: 203, type: !72, scopeLine: 203, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!72 = !DISubroutineType(types: !73)
!73 = !{!37, !74}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!76 = !DISubprogram(name: "setDelay", linkageName: "_ZN6Cicada4Task8setDelayEt", scope: !49, file: !50, line: 212, type: !65, scopeLine: 212, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!77 = !DISubprogram(name: "lastRun", linkageName: "_ZN6Cicada4Task7lastRunEv", scope: !49, file: !50, line: 222, type: !78, scopeLine: 222, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!78 = !DISubroutineType(types: !79)
!79 = !{!24, !67}
!80 = !DISubprogram(name: "setLastRun", linkageName: "_ZN6Cicada4Task10setLastRunEj", scope: !49, file: !50, line: 230, type: !81, scopeLine: 230, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!81 = !DISubroutineType(types: !82)
!82 = !{null, !67, !24}
!83 = !DISubprogram(name: "run", linkageName: "_ZN6Cicada4Task3runEv", scope: !49, file: !50, line: 245, type: !69, scopeLine: 245, containingType: !49, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!84 = !DISubprogram(name: "startTimeout", linkageName: "_ZN6Cicada4Task12startTimeoutEv", scope: !49, file: !50, line: 251, type: !69, scopeLine: 251, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!85 = !DISubprogram(name: "resetTimeout", linkageName: "_ZN6Cicada4Task12resetTimeoutEv", scope: !49, file: !50, line: 262, type: !69, scopeLine: 262, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!86 = !DISubprogram(name: "isTimeout", linkageName: "_ZN6Cicada4Task9isTimeoutEj", scope: !49, file: !50, line: 272, type: !87, scopeLine: 272, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!87 = !DISubroutineType(types: !88)
!88 = !{!62, !67, !24}
!89 = !DISubprogram(name: "Task", scope: !49, file: !50, line: 281, type: !90, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !67, !92}
!92 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !75, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "m_serial", scope: !46, file: !3, line: 54, baseType: !94, size: 32, offset: 160)
!94 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !95, size: 32)
!95 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "IBufferedSerial", scope: !51, file: !96, line: 39, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !97, vtableHolder: !99, identifier: "_ZTSN6Cicada15IBufferedSerialE")
!96 = !DIFile(filename: "../cicada/ibufferedserial.h", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "0e5db7c0b86651abb573e233dc791166")
!97 = !{!98, !127, !160, !164, !167, !170, !173, !176, !179, !184, !185, !186, !189}
!98 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !95, baseType: !99, flags: DIFlagPublic, extraData: i32 0)
!99 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ICommDevice", scope: !51, file: !100, line: 43, size: 32, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !101, vtableHolder: !99, identifier: "_ZTSN6Cicada11ICommDeviceE")
!100 = !DIFile(filename: "../cicada/icommdevice.h", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "e83d2959922f5020d303a6315b56c6e9")
!101 = !{!102, !103, !107, !117, !118, !121, !124}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$ICommDevice", scope: !100, file: !100, baseType: !54, size: 32, flags: DIFlagArtificial)
!103 = !DISubprogram(name: "~ICommDevice", scope: !99, file: !100, line: 46, type: !104, scopeLine: 46, containingType: !99, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!104 = !DISubroutineType(types: !105)
!105 = !{null, !106}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!107 = !DISubprogram(name: "bytesAvailable", linkageName: "_ZNK6Cicada11ICommDevice14bytesAvailableEv", scope: !99, file: !100, line: 52, type: !108, scopeLine: 52, containingType: !99, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!108 = !DISubroutineType(types: !109)
!109 = !{!110, !115}
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "Size", scope: !51, file: !111, line: 32, baseType: !112)
!111 = !DIFile(filename: "../cicada/types.h", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "6dfa4c2c933d4c520c13fa7638528c51")
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !25, line: 60, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !27, line: 105, baseType: !114)
!114 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!117 = !DISubprogram(name: "spaceAvailable", linkageName: "_ZNK6Cicada11ICommDevice14spaceAvailableEv", scope: !99, file: !100, line: 60, type: !108, scopeLine: 60, containingType: !99, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!118 = !DISubprogram(name: "writeBufferProcessed", linkageName: "_ZNK6Cicada11ICommDevice20writeBufferProcessedEv", scope: !99, file: !100, line: 71, type: !119, scopeLine: 71, containingType: !99, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!119 = !DISubroutineType(types: !120)
!120 = !{!62, !115}
!121 = !DISubprogram(name: "read", linkageName: "_ZN6Cicada11ICommDevice4readEPhy", scope: !99, file: !100, line: 85, type: !122, scopeLine: 85, containingType: !99, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!122 = !DISubroutineType(types: !123)
!123 = !{!110, !106, !45, !110}
!124 = !DISubprogram(name: "write", linkageName: "_ZN6Cicada11ICommDevice5writeEPKhy", scope: !99, file: !100, line: 98, type: !125, scopeLine: 98, containingType: !99, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!125 = !DISubroutineType(types: !126)
!126 = !{!110, !106, !40, !110}
!127 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !95, baseType: !128, offset: 32, flags: DIFlagPublic, extraData: i32 0)
!128 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ISerial", scope: !51, file: !129, line: 37, size: 32, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !130, vtableHolder: !128, identifier: "_ZTSN6Cicada7ISerialE")
!129 = !DIFile(filename: "../cicada/iserial.h", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "e3dc53a2acd15a8e90c357a32168f40f")
!130 = !{!131, !132, !136, !139, !140, !143, !144, !152, !156, !159}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$ISerial", scope: !129, file: !129, baseType: !54, size: 32, flags: DIFlagArtificial)
!132 = !DISubprogram(name: "~ISerial", scope: !128, file: !129, line: 40, type: !133, scopeLine: 40, containingType: !128, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !135}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!136 = !DISubprogram(name: "open", linkageName: "_ZN6Cicada7ISerial4openEv", scope: !128, file: !129, line: 46, type: !137, scopeLine: 46, containingType: !128, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!137 = !DISubroutineType(types: !138)
!138 = !{!62, !135}
!139 = !DISubprogram(name: "isOpen", linkageName: "_ZN6Cicada7ISerial6isOpenEv", scope: !128, file: !129, line: 52, type: !137, scopeLine: 52, containingType: !128, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!140 = !DISubprogram(name: "setSerialConfig", linkageName: "_ZN6Cicada7ISerial15setSerialConfigEjh", scope: !128, file: !129, line: 60, type: !141, scopeLine: 60, containingType: !128, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!141 = !DISubroutineType(types: !142)
!142 = !{!62, !135, !24, !42}
!143 = !DISubprogram(name: "close", linkageName: "_ZN6Cicada7ISerial5closeEv", scope: !128, file: !129, line: 65, type: !133, scopeLine: 65, containingType: !128, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!144 = !DISubprogram(name: "portName", linkageName: "_ZNK6Cicada7ISerial8portNameEv", scope: !128, file: !129, line: 71, type: !145, scopeLine: 71, containingType: !128, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!145 = !DISubroutineType(types: !146)
!146 = !{!147, !150}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!149 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!152 = !DISubprogram(name: "rawRead", linkageName: "_ZN6Cicada7ISerial7rawReadERh", scope: !128, file: !129, line: 80, type: !153, scopeLine: 80, containingType: !128, virtualIndex: 7, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!153 = !DISubroutineType(types: !154)
!154 = !{!62, !135, !155}
!155 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !42, size: 32)
!156 = !DISubprogram(name: "rawWrite", linkageName: "_ZN6Cicada7ISerial8rawWriteEh", scope: !128, file: !129, line: 87, type: !157, scopeLine: 87, containingType: !128, virtualIndex: 8, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!157 = !DISubroutineType(types: !158)
!158 = !{!62, !135, !42}
!159 = !DISubprogram(name: "startTransmit", linkageName: "_ZN6Cicada7ISerial13startTransmitEv", scope: !128, file: !129, line: 93, type: !133, scopeLine: 93, containingType: !128, virtualIndex: 9, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!160 = !DISubprogram(name: "~IBufferedSerial", scope: !95, file: !96, line: 42, type: !161, scopeLine: 42, containingType: !95, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!161 = !DISubroutineType(types: !162)
!162 = !{null, !163}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!164 = !DISubprogram(name: "read", linkageName: "_ZN6Cicada15IBufferedSerial4readEPhy", scope: !95, file: !96, line: 44, type: !165, scopeLine: 44, containingType: !95, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!165 = !DISubroutineType(types: !166)
!166 = !{!110, !163, !45, !110}
!167 = !DISubprogram(name: "write", linkageName: "_ZN6Cicada15IBufferedSerial5writeEPKhy", scope: !95, file: !96, line: 45, type: !168, scopeLine: 45, containingType: !95, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!168 = !DISubroutineType(types: !169)
!169 = !{!110, !163, !40, !110}
!170 = !DISubprogram(name: "read", linkageName: "_ZN6Cicada15IBufferedSerial4readEv", scope: !95, file: !96, line: 51, type: !171, scopeLine: 51, containingType: !95, virtualIndex: 7, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!171 = !DISubroutineType(types: !172)
!172 = !{!42, !163}
!173 = !DISubprogram(name: "write", linkageName: "_ZN6Cicada15IBufferedSerial5writeEPKh", scope: !95, file: !96, line: 62, type: !174, scopeLine: 62, containingType: !95, virtualIndex: 8, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!174 = !DISubroutineType(types: !175)
!175 = !{!110, !163, !40}
!176 = !DISubprogram(name: "write", linkageName: "_ZN6Cicada15IBufferedSerial5writeEh", scope: !95, file: !96, line: 68, type: !177, scopeLine: 68, containingType: !95, virtualIndex: 9, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!177 = !DISubroutineType(types: !178)
!178 = !{null, !163, !42}
!179 = !DISubprogram(name: "canReadLine", linkageName: "_ZNK6Cicada15IBufferedSerial11canReadLineEv", scope: !95, file: !96, line: 73, type: !180, scopeLine: 73, containingType: !95, virtualIndex: 10, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!180 = !DISubroutineType(types: !181)
!181 = !{!62, !182}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!184 = !DISubprogram(name: "readLine", linkageName: "_ZN6Cicada15IBufferedSerial8readLineEPhy", scope: !95, file: !96, line: 85, type: !165, scopeLine: 85, containingType: !95, virtualIndex: 11, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!185 = !DISubprogram(name: "flushReceiveBuffers", linkageName: "_ZN6Cicada15IBufferedSerial19flushReceiveBuffersEv", scope: !95, file: !96, line: 90, type: !161, scopeLine: 90, containingType: !95, virtualIndex: 12, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!186 = !DISubprogram(name: "readBufferSize", linkageName: "_ZN6Cicada15IBufferedSerial14readBufferSizeEv", scope: !95, file: !96, line: 95, type: !187, scopeLine: 95, containingType: !95, virtualIndex: 13, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!187 = !DISubroutineType(types: !188)
!188 = !{!110, !163}
!189 = !DISubprogram(name: "writeBufferSize", linkageName: "_ZN6Cicada15IBufferedSerial15writeBufferSizeEv", scope: !95, file: !96, line: 96, type: !187, scopeLine: 96, containingType: !95, virtualIndex: 14, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "m_i", scope: !46, file: !3, line: 55, baseType: !58, size: 32, offset: 192)
!191 = !DISubprogram(name: "SerialTask", scope: !46, file: !3, line: 18, type: !192, scopeLine: 18, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !194, !94}
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!195 = !DISubprogram(name: "run", linkageName: "_ZN10SerialTask3runEv", scope: !46, file: !3, line: 20, type: !196, scopeLine: 20, containingType: !46, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !194}
!198 = !{!0, !199}
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "entrypoint", scope: !201, file: !3, line: 22, type: !42, isLocal: false, isDefinition: true)
!201 = distinct !DISubprogram(name: "run", linkageName: "_ZN10SerialTask3runEv", scope: !46, file: !3, line: 20, type: !196, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, declaration: !195, retainedNodes: !202)
!202 = !{!203, !205, !211}
!203 = !DILocalVariable(name: "this", arg: 1, scope: !201, type: !204, flags: DIFlagArtificial | DIFlagObjectPointer)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 32)
!205 = !DILocalVariable(name: "send_str", scope: !206, file: !3, line: 34, type: !147)
!206 = distinct !DILexicalBlock(scope: !207, file: !3, line: 33, column: 13)
!207 = distinct !DILexicalBlock(scope: !208, file: !3, line: 32, column: 41)
!208 = distinct !DILexicalBlock(scope: !209, file: !3, line: 32, column: 9)
!209 = distinct !DILexicalBlock(scope: !210, file: !3, line: 32, column: 9)
!210 = distinct !DILexicalBlock(scope: !201, file: !3, line: 22, column: 9)
!211 = !DILocalVariable(name: "buf", scope: !212, file: !3, line: 41, type: !213)
!212 = distinct !DILexicalBlock(scope: !207, file: !3, line: 40, column: 13)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 256, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 32)
!216 = !{!217, !223, !227, !230, !234, !237, !239, !241, !243, !246, !249, !252, !255, !258, !261, !262, !263, !264, !265, !267, !269, !271, !273, !276, !279, !282, !285, !288, !291, !304, !308, !312, !314, !318, !323, !327, !329, !331, !335, !339, !343, !347, !351, !353, !355, !357, !361, !365, !369, !371, !373}
!217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !219, file: !222, line: 47)
!218 = !DINamespace(name: "std", scope: null)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !25, line: 20, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !27, line: 41, baseType: !221)
!221 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!222 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/c++/10.3.1/cstdint", directory: "/home/mjshen/RTOSExploration")
!223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !224, file: !222, line: 48)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !25, line: 32, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !27, line: 55, baseType: !226)
!226 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !228, file: !222, line: 49)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !25, line: 44, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !27, line: 77, baseType: !58)
!230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !231, file: !222, line: 50)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !25, line: 56, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !27, line: 103, baseType: !233)
!233 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !235, file: !222, line: 52)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !236, line: 51, baseType: !221)
!236 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/stdint.h", directory: "/home/mjshen/RTOSExploration", checksumkind: CSK_MD5, checksum: "a169a1d650067906a9e00519a9405ebb")
!237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !238, file: !222, line: 53)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !236, line: 61, baseType: !226)
!239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !240, file: !222, line: 54)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !236, line: 71, baseType: !58)
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !242, file: !222, line: 55)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !236, line: 81, baseType: !233)
!243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !244, file: !222, line: 57)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !236, line: 21, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least8_t", file: !27, line: 134, baseType: !221)
!246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !247, file: !222, line: 58)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !236, line: 27, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least16_t", file: !27, line: 160, baseType: !226)
!249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !250, file: !222, line: 59)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !236, line: 33, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least32_t", file: !27, line: 182, baseType: !58)
!252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !253, file: !222, line: 60)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !236, line: 39, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !27, line: 200, baseType: !233)
!255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !256, file: !222, line: 62)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !25, line: 67, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !27, line: 214, baseType: !233)
!258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !259, file: !222, line: 63)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !25, line: 77, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intptr_t", file: !27, line: 230, baseType: !58)
!261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !42, file: !222, line: 65)
!262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !37, file: !222, line: 66)
!263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !24, file: !222, line: 67)
!264 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !112, file: !222, line: 68)
!265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !266, file: !222, line: 70)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !236, line: 52, baseType: !44)
!267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !268, file: !222, line: 71)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !236, line: 62, baseType: !39)
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !270, file: !222, line: 72)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !236, line: 72, baseType: !10)
!271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !272, file: !222, line: 73)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !236, line: 82, baseType: !114)
!273 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !274, file: !222, line: 75)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !236, line: 22, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least8_t", file: !27, line: 136, baseType: !44)
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !277, file: !222, line: 76)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !236, line: 28, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least16_t", file: !27, line: 162, baseType: !39)
!279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !280, file: !222, line: 77)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !236, line: 34, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !27, line: 184, baseType: !10)
!282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !283, file: !222, line: 78)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !236, line: 40, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least64_t", file: !27, line: 202, baseType: !114)
!285 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !286, file: !222, line: 80)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !25, line: 72, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !27, line: 222, baseType: !114)
!288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !289, file: !222, line: 81)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !25, line: 82, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintptr_t", file: !27, line: 232, baseType: !10)
!291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !292, file: !303, line: 77)
!292 = !DISubprogram(name: "memchr", scope: !293, file: !293, line: 29, type: !294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!293 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/string.h", directory: "/home/mjshen/RTOSExploration", checksumkind: CSK_MD5, checksum: "00b3471f69c722645cab66876c511e27")
!294 = !DISubroutineType(types: !295)
!295 = !{!296, !297, !58, !299}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 32)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !300, line: 40, baseType: !301)
!300 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/strings.h", directory: "/home/mjshen/RTOSExploration", checksumkind: CSK_MD5, checksum: "dceb1b71cd72987b246237af8552faba")
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !302, line: 131, baseType: !10)
!302 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_types.h", directory: "/home/mjshen/RTOSExploration", checksumkind: CSK_MD5, checksum: "b45aad52ebaa1042158f2766af29f8e2")
!303 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/c++/10.3.1/cstring", directory: "/home/mjshen/RTOSExploration")
!304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !305, file: !303, line: 78)
!305 = !DISubprogram(name: "memcmp", scope: !293, file: !293, line: 30, type: !306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!306 = !DISubroutineType(types: !307)
!307 = !{!58, !297, !297, !299}
!308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !309, file: !303, line: 79)
!309 = !DISubprogram(name: "memcpy", scope: !293, file: !293, line: 31, type: !310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!310 = !DISubroutineType(types: !311)
!311 = !{!296, !296, !297, !299}
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !313, file: !303, line: 80)
!313 = !DISubprogram(name: "memmove", scope: !293, file: !293, line: 32, type: !310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !315, file: !303, line: 81)
!315 = !DISubprogram(name: "memset", scope: !293, file: !293, line: 33, type: !316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!316 = !DISubroutineType(types: !317)
!317 = !{!296, !296, !58, !299}
!318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !319, file: !303, line: 82)
!319 = !DISubprogram(name: "strcat", scope: !293, file: !293, line: 34, type: !320, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!320 = !DISubroutineType(types: !321)
!321 = !{!322, !322, !147}
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 32)
!323 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !324, file: !303, line: 83)
!324 = !DISubprogram(name: "strcmp", scope: !293, file: !293, line: 36, type: !325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!325 = !DISubroutineType(types: !326)
!326 = !{!58, !147, !147}
!327 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !328, file: !303, line: 84)
!328 = !DISubprogram(name: "strcoll", scope: !293, file: !293, line: 37, type: !325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!329 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !330, file: !303, line: 85)
!330 = !DISubprogram(name: "strcpy", scope: !293, file: !293, line: 38, type: !320, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !332, file: !303, line: 86)
!332 = !DISubprogram(name: "strcspn", scope: !293, file: !293, line: 39, type: !333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!333 = !DISubroutineType(types: !334)
!334 = !{!299, !147, !147}
!335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !336, file: !303, line: 87)
!336 = !DISubprogram(name: "strerror", scope: !293, file: !293, line: 40, type: !337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!337 = !DISubroutineType(types: !338)
!338 = !{!322, !58}
!339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !340, file: !303, line: 88)
!340 = !DISubprogram(name: "strlen", scope: !293, file: !293, line: 41, type: !341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!341 = !DISubroutineType(types: !342)
!342 = !{!299, !147}
!343 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !344, file: !303, line: 89)
!344 = !DISubprogram(name: "strncat", scope: !293, file: !293, line: 42, type: !345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!345 = !DISubroutineType(types: !346)
!346 = !{!322, !322, !147, !299}
!347 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !348, file: !303, line: 90)
!348 = !DISubprogram(name: "strncmp", scope: !293, file: !293, line: 43, type: !349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!349 = !DISubroutineType(types: !350)
!350 = !{!58, !147, !147, !299}
!351 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !352, file: !303, line: 91)
!352 = !DISubprogram(name: "strncpy", scope: !293, file: !293, line: 44, type: !345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !354, file: !303, line: 92)
!354 = !DISubprogram(name: "strspn", scope: !293, file: !293, line: 47, type: !333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !356, file: !303, line: 93)
!356 = !DISubprogram(name: "strtok", scope: !293, file: !293, line: 50, type: !320, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!357 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !358, file: !303, line: 94)
!358 = !DISubprogram(name: "strxfrm", scope: !293, file: !293, line: 52, type: !359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!359 = !DISubroutineType(types: !360)
!360 = !{!299, !322, !147, !299}
!361 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !362, file: !303, line: 95)
!362 = !DISubprogram(name: "strchr", scope: !293, file: !293, line: 35, type: !363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!363 = !DISubroutineType(types: !364)
!364 = !{!322, !147, !58}
!365 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !366, file: !303, line: 96)
!366 = !DISubprogram(name: "strpbrk", scope: !293, file: !293, line: 45, type: !367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!367 = !DISubroutineType(types: !368)
!368 = !{!322, !147, !147}
!369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !370, file: !303, line: 97)
!370 = !DISubprogram(name: "strrchr", scope: !293, file: !293, line: 46, type: !363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !372, file: !303, line: 98)
!372 = !DISubprogram(name: "strstr", scope: !293, file: !293, line: 48, type: !367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!373 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !6, entity: !51, file: !3, line: 11)
!374 = !{}
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 32)
!376 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Stm32Uart", scope: !51, file: !377, line: 51, size: 1536, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN6Cicada9Stm32UartE")
!377 = !DIFile(filename: "../cicada/platform/stm32f1/stm32uart.h", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "f1205a68111afe9a0868ac35ca31b4e6")
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(name: "AHBPrescTable", scope: !380, file: !381, line: 124, type: !452, isLocal: false, isDefinition: true)
!380 = distinct !DICompileUnit(language: DW_LANG_C99, file: !381, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !382, retainedTypes: !388, globals: !444, splitDebugInlining: false, nameTableKind: None)
!381 = !DIFile(filename: "../dep/STM32Cube_FW_F1_V1.8.0/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/system_stm32f1xx.c", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "2e873de3002e5d783190a46ff1c7da2d")
!382 = !{!383}
!383 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !384, line: 151, baseType: !10, size: 32, elements: !385)
!384 = !DIFile(filename: "../dep/STM32Cube_FW_F1_V1.8.0/Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f1xx.h", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "dc4ed8bdf8589b30d30d93eb6ee6ca27")
!385 = !{!386, !387}
!386 = !DIEnumerator(name: "RESET", value: 0)
!387 = !DIEnumerator(name: "SET", value: 1)
!388 = !{!389, !403, !24}
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_TypeDef", file: !19, line: 438, baseType: !391)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 424, size: 320, elements: !392)
!392 = !{!393, !394, !395, !396, !397, !398, !399, !400, !401, !402}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !391, file: !19, line: 426, baseType: !23, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR", scope: !391, file: !19, line: 427, baseType: !23, size: 32, offset: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "CIR", scope: !391, file: !19, line: 428, baseType: !23, size: 32, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "APB2RSTR", scope: !391, file: !19, line: 429, baseType: !23, size: 32, offset: 96)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "APB1RSTR", scope: !391, file: !19, line: 430, baseType: !23, size: 32, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "AHBENR", scope: !391, file: !19, line: 431, baseType: !23, size: 32, offset: 160)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "APB2ENR", scope: !391, file: !19, line: 432, baseType: !23, size: 32, offset: 192)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "APB1ENR", scope: !391, file: !19, line: 433, baseType: !23, size: 32, offset: 224)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "BDCR", scope: !391, file: !19, line: 434, baseType: !23, size: 32, offset: 256)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "CSR", scope: !391, file: !19, line: 435, baseType: !23, size: 32, offset: 288)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !405, line: 397, baseType: !406)
!405 = !DIFile(filename: "../dep/STM32Cube_FW_F1_V1.8.0/Drivers/CMSIS/Include/core_cm3.h", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build")
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !405, line: 374, size: 1120, elements: !407)
!407 = !{!408, !410, !411, !412, !413, !414, !415, !420, !421, !422, !423, !424, !425, !426, !427, !431, !432, !433, !437, !441, !443}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !406, file: !405, line: 376, baseType: !409, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !406, file: !405, line: 377, baseType: !23, size: 32, offset: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !406, file: !405, line: 378, baseType: !23, size: 32, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !406, file: !405, line: 379, baseType: !23, size: 32, offset: 96)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !406, file: !405, line: 380, baseType: !23, size: 32, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !406, file: !405, line: 381, baseType: !23, size: 32, offset: 160)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !406, file: !405, line: 382, baseType: !416, size: 96, offset: 192)
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 96, elements: !418)
!417 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !42)
!418 = !{!419}
!419 = !DISubrange(count: 12)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !406, file: !405, line: 383, baseType: !23, size: 32, offset: 288)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !406, file: !405, line: 384, baseType: !23, size: 32, offset: 320)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !406, file: !405, line: 385, baseType: !23, size: 32, offset: 352)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !406, file: !405, line: 386, baseType: !23, size: 32, offset: 384)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !406, file: !405, line: 387, baseType: !23, size: 32, offset: 416)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !406, file: !405, line: 388, baseType: !23, size: 32, offset: 448)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !406, file: !405, line: 389, baseType: !23, size: 32, offset: 480)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !406, file: !405, line: 390, baseType: !428, size: 64, offset: 512)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 64, elements: !429)
!429 = !{!430}
!430 = !DISubrange(count: 2)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !406, file: !405, line: 391, baseType: !409, size: 32, offset: 576)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !406, file: !405, line: 392, baseType: !409, size: 32, offset: 608)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !406, file: !405, line: 393, baseType: !434, size: 128, offset: 640)
!434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 128, elements: !435)
!435 = !{!436}
!436 = !DISubrange(count: 4)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !406, file: !405, line: 394, baseType: !438, size: 160, offset: 768)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 160, elements: !439)
!439 = !{!440}
!440 = !DISubrange(count: 5)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !406, file: !405, line: 395, baseType: !442, size: 160, offset: 928)
!442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 160, elements: !439)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !406, file: !405, line: 396, baseType: !23, size: 32, offset: 1088)
!444 = !{!445, !378, !447}
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(name: "SystemCoreClock", scope: !380, file: !381, line: 123, type: !24, isLocal: false, isDefinition: true)
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(name: "APBPrescTable", scope: !380, file: !381, line: 125, type: !449, isLocal: false, isDefinition: true)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 64, elements: !450)
!450 = !{!451}
!451 = !DISubrange(count: 8)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 128, elements: !453)
!453 = !{!454}
!454 = !DISubrange(count: 16)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(name: "uwTickPrio", scope: !457, file: !458, line: 80, type: !24, isLocal: false, isDefinition: true)
!457 = distinct !DICompileUnit(language: DW_LANG_C99, file: !458, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !459, retainedTypes: !527, globals: !570, splitDebugInlining: false, nameTableKind: None)
!458 = !DIFile(filename: "../dep/STM32Cube_FW_F1_V1.8.0/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal.c", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "1a5fa7b79e9e470cf817b81d791a6ccb")
!459 = !{!460, !467, !473}
!460 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !461, line: 49, baseType: !10, size: 32, elements: !462)
!461 = !DIFile(filename: "../dep/STM32Cube_FW_F1_V1.8.0/Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "5eab64b252ccd159497a11d87d26bc0b")
!462 = !{!463, !464, !465, !466}
!463 = !DIEnumerator(name: "HAL_TICK_FREQ_10HZ", value: 100)
!464 = !DIEnumerator(name: "HAL_TICK_FREQ_100HZ", value: 10)
!465 = !DIEnumerator(name: "HAL_TICK_FREQ_1KHZ", value: 1)
!466 = !DIEnumerator(name: "HAL_TICK_FREQ_DEFAULT", value: 1)
!467 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !9, line: 41, baseType: !10, size: 32, elements: !468)
!468 = !{!469, !470, !471, !472}
!469 = !DIEnumerator(name: "HAL_OK", value: 0)
!470 = !DIEnumerator(name: "HAL_ERROR", value: 1)
!471 = !DIEnumerator(name: "HAL_BUSY", value: 2)
!472 = !DIEnumerator(name: "HAL_TIMEOUT", value: 3)
!473 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 69, baseType: !58, size: 32, elements: !474)
!474 = !{!475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526}
!475 = !DIEnumerator(name: "NonMaskableInt_IRQn", value: -14)
!476 = !DIEnumerator(name: "HardFault_IRQn", value: -13)
!477 = !DIEnumerator(name: "MemoryManagement_IRQn", value: -12)
!478 = !DIEnumerator(name: "BusFault_IRQn", value: -11)
!479 = !DIEnumerator(name: "UsageFault_IRQn", value: -10)
!480 = !DIEnumerator(name: "SVCall_IRQn", value: -5)
!481 = !DIEnumerator(name: "DebugMonitor_IRQn", value: -4)
!482 = !DIEnumerator(name: "PendSV_IRQn", value: -2)
!483 = !DIEnumerator(name: "SysTick_IRQn", value: -1)
!484 = !DIEnumerator(name: "WWDG_IRQn", value: 0)
!485 = !DIEnumerator(name: "PVD_IRQn", value: 1)
!486 = !DIEnumerator(name: "TAMPER_IRQn", value: 2)
!487 = !DIEnumerator(name: "RTC_IRQn", value: 3)
!488 = !DIEnumerator(name: "FLASH_IRQn", value: 4)
!489 = !DIEnumerator(name: "RCC_IRQn", value: 5)
!490 = !DIEnumerator(name: "EXTI0_IRQn", value: 6)
!491 = !DIEnumerator(name: "EXTI1_IRQn", value: 7)
!492 = !DIEnumerator(name: "EXTI2_IRQn", value: 8)
!493 = !DIEnumerator(name: "EXTI3_IRQn", value: 9)
!494 = !DIEnumerator(name: "EXTI4_IRQn", value: 10)
!495 = !DIEnumerator(name: "DMA1_Channel1_IRQn", value: 11)
!496 = !DIEnumerator(name: "DMA1_Channel2_IRQn", value: 12)
!497 = !DIEnumerator(name: "DMA1_Channel3_IRQn", value: 13)
!498 = !DIEnumerator(name: "DMA1_Channel4_IRQn", value: 14)
!499 = !DIEnumerator(name: "DMA1_Channel5_IRQn", value: 15)
!500 = !DIEnumerator(name: "DMA1_Channel6_IRQn", value: 16)
!501 = !DIEnumerator(name: "DMA1_Channel7_IRQn", value: 17)
!502 = !DIEnumerator(name: "ADC1_2_IRQn", value: 18)
!503 = !DIEnumerator(name: "USB_HP_CAN1_TX_IRQn", value: 19)
!504 = !DIEnumerator(name: "USB_LP_CAN1_RX0_IRQn", value: 20)
!505 = !DIEnumerator(name: "CAN1_RX1_IRQn", value: 21)
!506 = !DIEnumerator(name: "CAN1_SCE_IRQn", value: 22)
!507 = !DIEnumerator(name: "EXTI9_5_IRQn", value: 23)
!508 = !DIEnumerator(name: "TIM1_BRK_IRQn", value: 24)
!509 = !DIEnumerator(name: "TIM1_UP_IRQn", value: 25)
!510 = !DIEnumerator(name: "TIM1_TRG_COM_IRQn", value: 26)
!511 = !DIEnumerator(name: "TIM1_CC_IRQn", value: 27)
!512 = !DIEnumerator(name: "TIM2_IRQn", value: 28)
!513 = !DIEnumerator(name: "TIM3_IRQn", value: 29)
!514 = !DIEnumerator(name: "TIM4_IRQn", value: 30)
!515 = !DIEnumerator(name: "I2C1_EV_IRQn", value: 31)
!516 = !DIEnumerator(name: "I2C1_ER_IRQn", value: 32)
!517 = !DIEnumerator(name: "I2C2_EV_IRQn", value: 33)
!518 = !DIEnumerator(name: "I2C2_ER_IRQn", value: 34)
!519 = !DIEnumerator(name: "SPI1_IRQn", value: 35)
!520 = !DIEnumerator(name: "SPI2_IRQn", value: 36)
!521 = !DIEnumerator(name: "USART1_IRQn", value: 37)
!522 = !DIEnumerator(name: "USART2_IRQn", value: 38)
!523 = !DIEnumerator(name: "USART3_IRQn", value: 39)
!524 = !DIEnumerator(name: "EXTI15_10_IRQn", value: 40)
!525 = !DIEnumerator(name: "RTC_Alarm_IRQn", value: 41)
!526 = !DIEnumerator(name: "USBWakeUp_IRQn", value: 42)
!527 = !{!528, !24, !541, !555, !563, !569}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 32)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "FLASH_TypeDef", file: !19, line: 336, baseType: !530)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 325, size: 288, elements: !531)
!531 = !{!532, !533, !534, !535, !536, !537, !538, !539, !540}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "ACR", scope: !530, file: !19, line: 327, baseType: !23, size: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "KEYR", scope: !530, file: !19, line: 328, baseType: !23, size: 32, offset: 32)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "OPTKEYR", scope: !530, file: !19, line: 329, baseType: !23, size: 32, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "SR", scope: !530, file: !19, line: 330, baseType: !23, size: 32, offset: 96)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !530, file: !19, line: 331, baseType: !23, size: 32, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "AR", scope: !530, file: !19, line: 332, baseType: !23, size: 32, offset: 160)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED", scope: !530, file: !19, line: 333, baseType: !23, size: 32, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "OBR", scope: !530, file: !19, line: 334, baseType: !23, size: 32, offset: 224)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "WRPR", scope: !530, file: !19, line: 335, baseType: !23, size: 32, offset: 256)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_TypeDef", file: !19, line: 438, baseType: !543)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 424, size: 320, elements: !544)
!544 = !{!545, !546, !547, !548, !549, !550, !551, !552, !553, !554}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !543, file: !19, line: 426, baseType: !23, size: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR", scope: !543, file: !19, line: 427, baseType: !23, size: 32, offset: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "CIR", scope: !543, file: !19, line: 428, baseType: !23, size: 32, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "APB2RSTR", scope: !543, file: !19, line: 429, baseType: !23, size: 32, offset: 96)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "APB1RSTR", scope: !543, file: !19, line: 430, baseType: !23, size: 32, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "AHBENR", scope: !543, file: !19, line: 431, baseType: !23, size: 32, offset: 160)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "APB2ENR", scope: !543, file: !19, line: 432, baseType: !23, size: 32, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "APB1ENR", scope: !543, file: !19, line: 433, baseType: !23, size: 32, offset: 224)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "BDCR", scope: !543, file: !19, line: 434, baseType: !23, size: 32, offset: 256)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "CSR", scope: !543, file: !19, line: 435, baseType: !23, size: 32, offset: 288)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 32)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysTick_Type", file: !405, line: 700, baseType: !557)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !405, line: 694, size: 128, elements: !558)
!558 = !{!559, !560, !561, !562}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "CTRL", scope: !557, file: !405, line: 696, baseType: !23, size: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "LOAD", scope: !557, file: !405, line: 697, baseType: !23, size: 32, offset: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "VAL", scope: !557, file: !405, line: 698, baseType: !23, size: 32, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "CALIB", scope: !557, file: !405, line: 699, baseType: !409, size: 32, offset: 96)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "DBGMCU_TypeDef", file: !19, line: 285, baseType: !565)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 281, size: 64, elements: !566)
!566 = !{!567, !568}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "IDCODE", scope: !565, file: !19, line: 283, baseType: !23, size: 32)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !565, file: !19, line: 284, baseType: !23, size: 32, offset: 32)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 32)
!570 = !{!455, !571, !574}
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(name: "uwTickFreq", scope: !457, file: !458, line: 81, type: !573, isLocal: false, isDefinition: true)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "HAL_TickFreqTypeDef", file: !461, line: 55, baseType: !460)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(name: "uwTick", scope: !457, file: !458, line: 79, type: !23, isLocal: false, isDefinition: true)
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(name: "instance", linkageName: "_ZN6Cicada9Stm32Uart8instanceE", scope: !578, file: !579, line: 32, type: !683, isLocal: false, isDefinition: true, declaration: !682)
!578 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !579, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !580, retainedTypes: !597, globals: !776, imports: !777, splitDebugInlining: false, nameTableKind: None)
!579 = !DIFile(filename: "../cicada/platform/stm32f1/stm32uart.cpp", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "3cfb26aba75e1df83974cb6e4fff6457")
!580 = !{!581, !8, !582, !586}
!581 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 69, baseType: !58, size: 32, elements: !474, identifier: "_ZTS9IRQn_Type")
!582 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, file: !9, line: 52, baseType: !10, size: 32, elements: !583, identifier: "_ZTS15HAL_LockTypeDef")
!583 = !{!584, !585}
!584 = !DIEnumerator(name: "HAL_UNLOCKED", value: 0, isUnsigned: true)
!585 = !DIEnumerator(name: "HAL_LOCKED", value: 1, isUnsigned: true)
!586 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, file: !587, line: 117, baseType: !10, size: 32, elements: !588, identifier: "_ZTS21HAL_UART_StateTypeDef")
!587 = !DIFile(filename: "../dep/STM32Cube_FW_F1_V1.8.0/Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_uart.h", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "74469f61b271b78e5ff5784cb5eb97d1")
!588 = !{!589, !590, !591, !592, !593, !594, !595, !596}
!589 = !DIEnumerator(name: "HAL_UART_STATE_RESET", value: 0, isUnsigned: true)
!590 = !DIEnumerator(name: "HAL_UART_STATE_READY", value: 32, isUnsigned: true)
!591 = !DIEnumerator(name: "HAL_UART_STATE_BUSY", value: 36, isUnsigned: true)
!592 = !DIEnumerator(name: "HAL_UART_STATE_BUSY_TX", value: 33, isUnsigned: true)
!593 = !DIEnumerator(name: "HAL_UART_STATE_BUSY_RX", value: 34, isUnsigned: true)
!594 = !DIEnumerator(name: "HAL_UART_STATE_BUSY_TX_RX", value: 35, isUnsigned: true)
!595 = !DIEnumerator(name: "HAL_UART_STATE_TIMEOUT", value: 160, isUnsigned: true)
!596 = !DIEnumerator(name: "HAL_UART_STATE_ERROR", value: 224, isUnsigned: true)
!597 = !{!24, !17, !598, !608, !34, !42, !37, !228, !622, !652, !677}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 32)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "AFIO_TypeDef", file: !19, line: 380, baseType: !600)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 373, size: 256, flags: DIFlagTypePassByValue, elements: !601, identifier: "_ZTS12AFIO_TypeDef")
!601 = !{!602, !603, !604, !606, !607}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "EVCR", scope: !600, file: !19, line: 375, baseType: !23, size: 32)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "MAPR", scope: !600, file: !19, line: 376, baseType: !23, size: 32, offset: 32)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "EXTICR", scope: !600, file: !19, line: 377, baseType: !605, size: 128, offset: 64)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 128, elements: !435)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !600, file: !19, line: 378, baseType: !24, size: 32, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "MAPR2", scope: !600, file: !19, line: 379, baseType: !23, size: 32, offset: 224)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 32)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_TypeDef", file: !19, line: 438, baseType: !610)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 424, size: 320, flags: DIFlagTypePassByValue, elements: !611, identifier: "_ZTS11RCC_TypeDef")
!611 = !{!612, !613, !614, !615, !616, !617, !618, !619, !620, !621}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !610, file: !19, line: 426, baseType: !23, size: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR", scope: !610, file: !19, line: 427, baseType: !23, size: 32, offset: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "CIR", scope: !610, file: !19, line: 428, baseType: !23, size: 32, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "APB2RSTR", scope: !610, file: !19, line: 429, baseType: !23, size: 32, offset: 96)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "APB1RSTR", scope: !610, file: !19, line: 430, baseType: !23, size: 32, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "AHBENR", scope: !610, file: !19, line: 431, baseType: !23, size: 32, offset: 160)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "APB2ENR", scope: !610, file: !19, line: 432, baseType: !23, size: 32, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "APB1ENR", scope: !610, file: !19, line: 433, baseType: !23, size: 32, offset: 224)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "BDCR", scope: !610, file: !19, line: 434, baseType: !23, size: 32, offset: 256)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "CSR", scope: !610, file: !19, line: 435, baseType: !23, size: 32, offset: 288)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 32)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !405, line: 355, baseType: !624)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !405, line: 340, size: 28704, flags: DIFlagTypePassByValue, elements: !625, identifier: "_ZTS9NVIC_Type")
!625 = !{!626, !628, !632, !633, !634, !635, !636, !637, !638, !639, !643, !647, !651}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !624, file: !405, line: 342, baseType: !627, size: 256)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 256, elements: !450)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !624, file: !405, line: 343, baseType: !629, size: 768, offset: 256)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 768, elements: !630)
!630 = !{!631}
!631 = !DISubrange(count: 24)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !624, file: !405, line: 344, baseType: !627, size: 256, offset: 1024)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !624, file: !405, line: 345, baseType: !629, size: 768, offset: 1280)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !624, file: !405, line: 346, baseType: !627, size: 256, offset: 2048)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !624, file: !405, line: 347, baseType: !629, size: 768, offset: 2304)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !624, file: !405, line: 348, baseType: !627, size: 256, offset: 3072)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !624, file: !405, line: 349, baseType: !629, size: 768, offset: 3328)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !624, file: !405, line: 350, baseType: !627, size: 256, offset: 4096)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !624, file: !405, line: 351, baseType: !640, size: 1792, offset: 4352)
!640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 1792, elements: !641)
!641 = !{!642}
!642 = !DISubrange(count: 56)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !624, file: !405, line: 352, baseType: !644, size: 1920, offset: 6144)
!644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 1920, elements: !645)
!645 = !{!646}
!646 = !DISubrange(count: 240)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !624, file: !405, line: 353, baseType: !648, size: 20608, offset: 8064)
!648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 20608, elements: !649)
!649 = !{!650}
!650 = !DISubrange(count: 644)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !624, file: !405, line: 354, baseType: !23, size: 32, offset: 28672)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 32)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !405, line: 397, baseType: !654)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !405, line: 374, size: 1120, flags: DIFlagTypePassByValue, elements: !655, identifier: "_ZTS8SCB_Type")
!655 = !{!656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !654, file: !405, line: 376, baseType: !409, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !654, file: !405, line: 377, baseType: !23, size: 32, offset: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !654, file: !405, line: 378, baseType: !23, size: 32, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !654, file: !405, line: 379, baseType: !23, size: 32, offset: 96)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !654, file: !405, line: 380, baseType: !23, size: 32, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !654, file: !405, line: 381, baseType: !23, size: 32, offset: 160)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !654, file: !405, line: 382, baseType: !416, size: 96, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !654, file: !405, line: 383, baseType: !23, size: 32, offset: 288)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !654, file: !405, line: 384, baseType: !23, size: 32, offset: 320)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !654, file: !405, line: 385, baseType: !23, size: 32, offset: 352)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !654, file: !405, line: 386, baseType: !23, size: 32, offset: 384)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !654, file: !405, line: 387, baseType: !23, size: 32, offset: 416)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !654, file: !405, line: 388, baseType: !23, size: 32, offset: 448)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !654, file: !405, line: 389, baseType: !23, size: 32, offset: 480)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !654, file: !405, line: 390, baseType: !428, size: 64, offset: 512)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !654, file: !405, line: 391, baseType: !409, size: 32, offset: 576)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !654, file: !405, line: 392, baseType: !409, size: 32, offset: 608)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !654, file: !405, line: 393, baseType: !434, size: 128, offset: 640)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !654, file: !405, line: 394, baseType: !438, size: 160, offset: 768)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !654, file: !405, line: 395, baseType: !442, size: 160, offset: 928)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !654, file: !405, line: 396, baseType: !23, size: 32, offset: 1088)
!677 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Stm32Uart", scope: !51, file: !377, line: 51, size: 1536, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !678, vtableHolder: !99)
!678 = !{!679, !682, !685, !686, !722, !723, !724, !725, !727, !731, !734, !737, !740, !743, !746, !747, !750, !751, !756, !759, !760, !761, !764, !765, !769, !773}
!679 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !677, baseType: !680, flags: DIFlagPublic, extraData: i32 0)
!680 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "BufferedSerial", scope: !51, file: !681, line: 42, size: 832, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN6Cicada14BufferedSerialE")
!681 = !DIFile(filename: "../cicada/bufferedserial.h", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "b9c9871d742db1af5ee8abb5df52fc59")
!682 = !DIDerivedType(tag: DW_TAG_member, name: "instance", scope: !677, file: !377, line: 120, baseType: !683, flags: DIFlagStaticMember)
!683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !684, size: 128, elements: !435)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !677, file: !377, line: 122, baseType: !42, size: 8, offset: 832)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_handle", scope: !677, file: !377, line: 123, baseType: !687, size: 576, offset: 864)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "UART_HandleTypeDef", file: !587, line: 189, baseType: !688)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__UART_HandleTypeDef", file: !587, line: 141, size: 576, flags: DIFlagTypePassByValue, elements: !689, identifier: "_ZTS20__UART_HandleTypeDef")
!689 = !{!690, !691, !702, !703, !704, !706, !707, !708, !709, !714, !715, !717, !720, !721}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "Instance", scope: !688, file: !587, line: 143, baseType: !17, size: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "Init", scope: !688, file: !587, line: 145, baseType: !692, size: 224, offset: 32)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "UART_InitTypeDef", file: !587, line: 76, baseType: !693)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !587, line: 47, size: 224, flags: DIFlagTypePassByValue, elements: !694, identifier: "_ZTS16UART_InitTypeDef")
!694 = !{!695, !696, !697, !698, !699, !700, !701}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "BaudRate", scope: !693, file: !587, line: 49, baseType: !24, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "WordLength", scope: !693, file: !587, line: 54, baseType: !24, size: 32, offset: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "StopBits", scope: !693, file: !587, line: 57, baseType: !24, size: 32, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "Parity", scope: !693, file: !587, line: 60, baseType: !24, size: 32, offset: 96)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "Mode", scope: !693, file: !587, line: 67, baseType: !24, size: 32, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "HwFlowCtl", scope: !693, file: !587, line: 70, baseType: !24, size: 32, offset: 160)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "OverSampling", scope: !693, file: !587, line: 73, baseType: !24, size: 32, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "pTxBuffPtr", scope: !688, file: !587, line: 147, baseType: !45, size: 32, offset: 256)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "TxXferSize", scope: !688, file: !587, line: 149, baseType: !37, size: 16, offset: 288)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "TxXferCount", scope: !688, file: !587, line: 151, baseType: !705, size: 16, offset: 304)
!705 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !37)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "pRxBuffPtr", scope: !688, file: !587, line: 153, baseType: !45, size: 32, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "RxXferSize", scope: !688, file: !587, line: 155, baseType: !37, size: 16, offset: 352)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "RxXferCount", scope: !688, file: !587, line: 157, baseType: !705, size: 16, offset: 368)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "hdmatx", scope: !688, file: !587, line: 159, baseType: !710, size: 32, offset: 384)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 32)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_HandleTypeDef", file: !712, line: 137, baseType: !713)
!712 = !DIFile(filename: "../dep/STM32Cube_FW_F1_V1.8.0/Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_dma.h", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "dd8e7645a79a80f8166404bb078b3d4e")
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__DMA_HandleTypeDef", file: !712, line: 111, size: 576, flags: DIFlagFwdDecl, identifier: "_ZTS19__DMA_HandleTypeDef")
!714 = !DIDerivedType(tag: DW_TAG_member, name: "hdmarx", scope: !688, file: !587, line: 161, baseType: !710, size: 32, offset: 416)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "Lock", scope: !688, file: !587, line: 163, baseType: !716, size: 32, offset: 448)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "HAL_LockTypeDef", file: !9, line: 56, baseType: !582)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "gState", scope: !688, file: !587, line: 165, baseType: !718, size: 32, offset: 480)
!718 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !719)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "HAL_UART_StateTypeDef", file: !587, line: 136, baseType: !586)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "RxState", scope: !688, file: !587, line: 169, baseType: !718, size: 32, offset: 512)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "ErrorCode", scope: !688, file: !587, line: 172, baseType: !23, size: 32, offset: 544)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "_uartPort", scope: !677, file: !377, line: 124, baseType: !34, size: 32, offset: 1440)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "_txPin", scope: !677, file: !377, line: 125, baseType: !37, size: 16, offset: 1472)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "_rxPin", scope: !677, file: !377, line: 126, baseType: !37, size: 16, offset: 1488)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "_uartInterruptInstance", scope: !677, file: !377, line: 127, baseType: !726, size: 32, offset: 1504)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRQn_Type", file: !19, line: 126, baseType: !581)
!727 = !DISubprogram(name: "Stm32Uart", scope: !677, file: !377, line: 66, type: !728, scopeLine: 66, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!728 = !DISubroutineType(types: !729)
!729 = !{null, !730, !322, !322, !110, !17, !34, !37, !37}
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!731 = !DISubprogram(name: "Stm32Uart", scope: !677, file: !377, line: 83, type: !732, scopeLine: 83, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!732 = !DISubroutineType(types: !733)
!733 = !{null, !730, !322, !322, !110, !110, !17, !34, !37, !37}
!734 = !DISubprogram(name: "~Stm32Uart", scope: !677, file: !377, line: 86, type: !735, scopeLine: 86, containingType: !677, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!735 = !DISubroutineType(types: !736)
!736 = !{null, !730}
!737 = !DISubprogram(name: "getInstance", linkageName: "_ZN6Cicada9Stm32Uart11getInstanceEP13USART_TypeDef", scope: !677, file: !377, line: 88, type: !738, scopeLine: 88, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!738 = !DISubroutineType(types: !739)
!739 = !{!684, !17}
!740 = !DISubprogram(name: "open", linkageName: "_ZN6Cicada9Stm32Uart4openEv", scope: !677, file: !377, line: 93, type: !741, scopeLine: 93, containingType: !677, virtualIndex: 15, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!741 = !DISubroutineType(types: !742)
!742 = !{!62, !730}
!743 = !DISubprogram(name: "open", linkageName: "_ZN6Cicada9Stm32Uart4openEh", scope: !677, file: !377, line: 100, type: !744, scopeLine: 100, containingType: !677, virtualIndex: 16, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!744 = !DISubroutineType(types: !745)
!745 = !{!62, !730, !42}
!746 = !DISubprogram(name: "isOpen", linkageName: "_ZN6Cicada9Stm32Uart6isOpenEv", scope: !677, file: !377, line: 102, type: !741, scopeLine: 102, containingType: !677, virtualIndex: 17, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!747 = !DISubprogram(name: "setSerialConfig", linkageName: "_ZN6Cicada9Stm32Uart15setSerialConfigEjh", scope: !677, file: !377, line: 103, type: !748, scopeLine: 103, containingType: !677, virtualIndex: 18, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!748 = !DISubroutineType(types: !749)
!749 = !{!62, !730, !24, !42}
!750 = !DISubprogram(name: "close", linkageName: "_ZN6Cicada9Stm32Uart5closeEv", scope: !677, file: !377, line: 104, type: !735, scopeLine: 104, containingType: !677, virtualIndex: 19, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!751 = !DISubprogram(name: "portName", linkageName: "_ZNK6Cicada9Stm32Uart8portNameEv", scope: !677, file: !377, line: 105, type: !752, scopeLine: 105, containingType: !677, virtualIndex: 20, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!752 = !DISubroutineType(types: !753)
!753 = !{!147, !754}
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !677)
!756 = !DISubprogram(name: "rawRead", linkageName: "_ZN6Cicada9Stm32Uart7rawReadERh", scope: !677, file: !377, line: 106, type: !757, scopeLine: 106, containingType: !677, virtualIndex: 21, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!757 = !DISubroutineType(types: !758)
!758 = !{!62, !730, !155}
!759 = !DISubprogram(name: "rawWrite", linkageName: "_ZN6Cicada9Stm32Uart8rawWriteEh", scope: !677, file: !377, line: 107, type: !744, scopeLine: 107, containingType: !677, virtualIndex: 22, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!760 = !DISubprogram(name: "startTransmit", linkageName: "_ZN6Cicada9Stm32Uart13startTransmitEv", scope: !677, file: !377, line: 108, type: !735, scopeLine: 108, containingType: !677, virtualIndex: 23, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!761 = !DISubprogram(name: "writeBufferProcessed", linkageName: "_ZNK6Cicada9Stm32Uart20writeBufferProcessedEv", scope: !677, file: !377, line: 109, type: !762, scopeLine: 109, containingType: !677, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!762 = !DISubroutineType(types: !763)
!763 = !{!62, !754}
!764 = !DISubprogram(name: "handleInterrupt", linkageName: "_ZN6Cicada9Stm32Uart15handleInterruptEv", scope: !677, file: !377, line: 111, type: !735, scopeLine: 111, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!765 = !DISubprogram(name: "Stm32Uart", scope: !677, file: !377, line: 115, type: !766, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!766 = !DISubroutineType(types: !767)
!767 = !{null, !730, !768}
!768 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !755, size: 32)
!769 = !DISubprogram(name: "operator=", linkageName: "_ZN6Cicada9Stm32UartaSERKS0_", scope: !677, file: !377, line: 116, type: !770, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!770 = !DISubroutineType(types: !771)
!771 = !{!772, !730, !768}
!772 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !677, size: 32)
!773 = !DISubprogram(name: "init", linkageName: "_ZN6Cicada9Stm32Uart4initEP13USART_TypeDef", scope: !677, file: !377, line: 118, type: !774, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!774 = !DISubroutineType(types: !775)
!775 = !{null, !730, !17}
!776 = !{!576}
!777 = !{!217, !223, !227, !230, !234, !237, !239, !241, !243, !246, !249, !252, !255, !258, !261, !262, !263, !264, !265, !267, !269, !271, !273, !276, !279, !282, !285, !288, !778}
!778 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !578, entity: !51, file: !579, line: 28)
!779 = distinct !DICompileUnit(language: DW_LANG_C99, file: !780, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !781, retainedTypes: !786, splitDebugInlining: false, nameTableKind: None)
!780 = !DIFile(filename: "../dep/STM32Cube_FW_F1_V1.8.0/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_rcc.c", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "bf5d5e021854d33cea3d58ed6b9d5087")
!781 = !{!467, !383, !782}
!782 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !384, line: 157, baseType: !10, size: 32, elements: !783)
!783 = !{!784, !785}
!784 = !DIEnumerator(name: "DISABLE", value: 0)
!785 = !DIEnumerator(name: "ENABLE", value: 1)
!786 = !{!787, !24, !296, !42, !801, !802, !808, !37, !821, !832}
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 32)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_TypeDef", file: !19, line: 438, baseType: !789)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 424, size: 320, elements: !790)
!790 = !{!791, !792, !793, !794, !795, !796, !797, !798, !799, !800}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !789, file: !19, line: 426, baseType: !23, size: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR", scope: !789, file: !19, line: 427, baseType: !23, size: 32, offset: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "CIR", scope: !789, file: !19, line: 428, baseType: !23, size: 32, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "APB2RSTR", scope: !789, file: !19, line: 429, baseType: !23, size: 32, offset: 96)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "APB1RSTR", scope: !789, file: !19, line: 430, baseType: !23, size: 32, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "AHBENR", scope: !789, file: !19, line: 431, baseType: !23, size: 32, offset: 160)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "APB2ENR", scope: !789, file: !19, line: 432, baseType: !23, size: 32, offset: 192)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "APB1ENR", scope: !789, file: !19, line: 433, baseType: !23, size: 32, offset: 224)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "BDCR", scope: !789, file: !19, line: 434, baseType: !23, size: 32, offset: 256)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "CSR", scope: !789, file: !19, line: 435, baseType: !23, size: 32, offset: 288)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 32)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 32)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "PWR_TypeDef", file: !19, line: 418, baseType: !804)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 414, size: 64, elements: !805)
!805 = !{!806, !807}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !804, file: !19, line: 416, baseType: !23, size: 32)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "CSR", scope: !804, file: !19, line: 417, baseType: !23, size: 32, offset: 32)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 32)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "FLASH_TypeDef", file: !19, line: 336, baseType: !810)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 325, size: 288, elements: !811)
!811 = !{!812, !813, !814, !815, !816, !817, !818, !819, !820}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "ACR", scope: !810, file: !19, line: 327, baseType: !23, size: 32)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "KEYR", scope: !810, file: !19, line: 328, baseType: !23, size: 32, offset: 32)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "OPTKEYR", scope: !810, file: !19, line: 329, baseType: !23, size: 32, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "SR", scope: !810, file: !19, line: 330, baseType: !23, size: 32, offset: 96)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !810, file: !19, line: 331, baseType: !23, size: 32, offset: 128)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "AR", scope: !810, file: !19, line: 332, baseType: !23, size: 32, offset: 160)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED", scope: !810, file: !19, line: 333, baseType: !23, size: 32, offset: 192)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "OBR", scope: !810, file: !19, line: 334, baseType: !23, size: 32, offset: 224)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "WRPR", scope: !810, file: !19, line: 335, baseType: !23, size: 32, offset: 256)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 32)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPIO_TypeDef", file: !19, line: 367, baseType: !823)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 358, size: 224, elements: !824)
!824 = !{!825, !826, !827, !828, !829, !830, !831}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "CRL", scope: !823, file: !19, line: 360, baseType: !23, size: 32)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "CRH", scope: !823, file: !19, line: 361, baseType: !23, size: 32, offset: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "IDR", scope: !823, file: !19, line: 362, baseType: !23, size: 32, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "ODR", scope: !823, file: !19, line: 363, baseType: !23, size: 32, offset: 96)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "BSRR", scope: !823, file: !19, line: 364, baseType: !23, size: 32, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "BRR", scope: !823, file: !19, line: 365, baseType: !23, size: 32, offset: 160)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "LCKR", scope: !823, file: !19, line: 366, baseType: !23, size: 32, offset: 192)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 32)
!833 = distinct !DICompileUnit(language: DW_LANG_C99, file: !834, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !835, retainedTypes: !836, splitDebugInlining: false, nameTableKind: None)
!834 = !DIFile(filename: "../dep/STM32Cube_FW_F1_V1.8.0/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_cortex.c", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "83cb8d6817603f64d73dca2a0b01efa1")
!835 = !{!473}
!836 = !{!837, !24, !845, !228, !42, !870}
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 32)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysTick_Type", file: !405, line: 700, baseType: !839)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !405, line: 694, size: 128, elements: !840)
!840 = !{!841, !842, !843, !844}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "CTRL", scope: !839, file: !405, line: 696, baseType: !23, size: 32)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "LOAD", scope: !839, file: !405, line: 697, baseType: !23, size: 32, offset: 32)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "VAL", scope: !839, file: !405, line: 698, baseType: !23, size: 32, offset: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "CALIB", scope: !839, file: !405, line: 699, baseType: !409, size: 32, offset: 96)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 32)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !405, line: 397, baseType: !847)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !405, line: 374, size: 1120, elements: !848)
!848 = !{!849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !847, file: !405, line: 376, baseType: !409, size: 32)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !847, file: !405, line: 377, baseType: !23, size: 32, offset: 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !847, file: !405, line: 378, baseType: !23, size: 32, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !847, file: !405, line: 379, baseType: !23, size: 32, offset: 96)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !847, file: !405, line: 380, baseType: !23, size: 32, offset: 128)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !847, file: !405, line: 381, baseType: !23, size: 32, offset: 160)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !847, file: !405, line: 382, baseType: !416, size: 96, offset: 192)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !847, file: !405, line: 383, baseType: !23, size: 32, offset: 288)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !847, file: !405, line: 384, baseType: !23, size: 32, offset: 320)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !847, file: !405, line: 385, baseType: !23, size: 32, offset: 352)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !847, file: !405, line: 386, baseType: !23, size: 32, offset: 384)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !847, file: !405, line: 387, baseType: !23, size: 32, offset: 416)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !847, file: !405, line: 388, baseType: !23, size: 32, offset: 448)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !847, file: !405, line: 389, baseType: !23, size: 32, offset: 480)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !847, file: !405, line: 390, baseType: !428, size: 64, offset: 512)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !847, file: !405, line: 391, baseType: !409, size: 32, offset: 576)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !847, file: !405, line: 392, baseType: !409, size: 32, offset: 608)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !847, file: !405, line: 393, baseType: !434, size: 128, offset: 640)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !847, file: !405, line: 394, baseType: !438, size: 160, offset: 768)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !847, file: !405, line: 395, baseType: !442, size: 160, offset: 928)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !847, file: !405, line: 396, baseType: !23, size: 32, offset: 1088)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 32)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !405, line: 355, baseType: !872)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !405, line: 340, size: 28704, elements: !873)
!873 = !{!874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !872, file: !405, line: 342, baseType: !627, size: 256)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !872, file: !405, line: 343, baseType: !629, size: 768, offset: 256)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !872, file: !405, line: 344, baseType: !627, size: 256, offset: 1024)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !872, file: !405, line: 345, baseType: !629, size: 768, offset: 1280)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !872, file: !405, line: 346, baseType: !627, size: 256, offset: 2048)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !872, file: !405, line: 347, baseType: !629, size: 768, offset: 2304)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !872, file: !405, line: 348, baseType: !627, size: 256, offset: 3072)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !872, file: !405, line: 349, baseType: !629, size: 768, offset: 3328)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !872, file: !405, line: 350, baseType: !627, size: 256, offset: 4096)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !872, file: !405, line: 351, baseType: !640, size: 1792, offset: 4352)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !872, file: !405, line: 352, baseType: !644, size: 1920, offset: 6144)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !872, file: !405, line: 353, baseType: !648, size: 20608, offset: 8064)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !872, file: !405, line: 354, baseType: !23, size: 32, offset: 28672)
!887 = distinct !DICompileUnit(language: DW_LANG_C99, file: !888, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !889, retainedTypes: !895, splitDebugInlining: false, nameTableKind: None)
!888 = !DIFile(filename: "../dep/STM32Cube_FW_F1_V1.8.0/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "de98d9c05272efa2ca465428751dd1b5")
!889 = !{!890, !467}
!890 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !891, line: 65, baseType: !10, size: 32, elements: !892)
!891 = !DIFile(filename: "../dep/STM32Cube_FW_F1_V1.8.0/Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "b5ff32b0624c591654a3e02ee400cffe")
!892 = !{!893, !894}
!893 = !DIEnumerator(name: "GPIO_PIN_RESET", value: 0)
!894 = !DIEnumerator(name: "GPIO_PIN_SET", value: 1)
!895 = !{!24, !37, !896, !910, !919, !930}
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 32)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_TypeDef", file: !19, line: 438, baseType: !898)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 424, size: 320, elements: !899)
!899 = !{!900, !901, !902, !903, !904, !905, !906, !907, !908, !909}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !898, file: !19, line: 426, baseType: !23, size: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR", scope: !898, file: !19, line: 427, baseType: !23, size: 32, offset: 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "CIR", scope: !898, file: !19, line: 428, baseType: !23, size: 32, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "APB2RSTR", scope: !898, file: !19, line: 429, baseType: !23, size: 32, offset: 96)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "APB1RSTR", scope: !898, file: !19, line: 430, baseType: !23, size: 32, offset: 128)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "AHBENR", scope: !898, file: !19, line: 431, baseType: !23, size: 32, offset: 160)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "APB2ENR", scope: !898, file: !19, line: 432, baseType: !23, size: 32, offset: 192)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "APB1ENR", scope: !898, file: !19, line: 433, baseType: !23, size: 32, offset: 224)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "BDCR", scope: !898, file: !19, line: 434, baseType: !23, size: 32, offset: 256)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "CSR", scope: !898, file: !19, line: 435, baseType: !23, size: 32, offset: 288)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 32)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "AFIO_TypeDef", file: !19, line: 380, baseType: !912)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 373, size: 256, elements: !913)
!913 = !{!914, !915, !916, !917, !918}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "EVCR", scope: !912, file: !19, line: 375, baseType: !23, size: 32)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "MAPR", scope: !912, file: !19, line: 376, baseType: !23, size: 32, offset: 32)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "EXTICR", scope: !912, file: !19, line: 377, baseType: !605, size: 128, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !912, file: !19, line: 378, baseType: !24, size: 32, offset: 192)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "MAPR2", scope: !912, file: !19, line: 379, baseType: !23, size: 32, offset: 224)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPIO_TypeDef", file: !19, line: 367, baseType: !921)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 358, size: 224, elements: !922)
!922 = !{!923, !924, !925, !926, !927, !928, !929}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "CRL", scope: !921, file: !19, line: 360, baseType: !23, size: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "CRH", scope: !921, file: !19, line: 361, baseType: !23, size: 32, offset: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "IDR", scope: !921, file: !19, line: 362, baseType: !23, size: 32, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "ODR", scope: !921, file: !19, line: 363, baseType: !23, size: 32, offset: 96)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "BSRR", scope: !921, file: !19, line: 364, baseType: !23, size: 32, offset: 128)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "BRR", scope: !921, file: !19, line: 365, baseType: !23, size: 32, offset: 160)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "LCKR", scope: !921, file: !19, line: 366, baseType: !23, size: 32, offset: 192)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 32)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "EXTI_TypeDef", file: !19, line: 319, baseType: !932)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 311, size: 192, elements: !933)
!933 = !{!934, !935, !936, !937, !938, !939}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "IMR", scope: !932, file: !19, line: 313, baseType: !23, size: 32)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "EMR", scope: !932, file: !19, line: 314, baseType: !23, size: 32, offset: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "RTSR", scope: !932, file: !19, line: 315, baseType: !23, size: 32, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "FTSR", scope: !932, file: !19, line: 316, baseType: !23, size: 32, offset: 96)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "SWIER", scope: !932, file: !19, line: 317, baseType: !23, size: 32, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "PR", scope: !932, file: !19, line: 318, baseType: !23, size: 32, offset: 160)
!940 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !941, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !942, imports: !962, splitDebugInlining: false, nameTableKind: None)
!941 = !DIFile(filename: "../cicada/scheduler.cpp", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "e3803bdb34845899b60a060630b7fca8")
!942 = !{!943}
!943 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Scheduler", scope: !51, file: !944, line: 53, size: 96, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !945, identifier: "_ZTSN6Cicada9SchedulerE")
!944 = !DIFile(filename: "../cicada/scheduler.h", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "040734eea83ce445208abbcb76b1b1f5")
!945 = !{!946, !950, !953, !954, !958, !961}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_tickFunction", scope: !943, file: !944, line: 77, baseType: !947, size: 32)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 32)
!948 = !DISubroutineType(types: !949)
!949 = !{!24}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_taskList", scope: !943, file: !944, line: 78, baseType: !951, size: 32, offset: 32)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 32)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "_currentTask", scope: !943, file: !944, line: 79, baseType: !951, size: 32, offset: 64)
!954 = !DISubprogram(name: "Scheduler", scope: !943, file: !944, line: 62, type: !955, scopeLine: 62, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!955 = !DISubroutineType(types: !956)
!956 = !{null, !957, !947, !951}
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!958 = !DISubprogram(name: "runTask", linkageName: "_ZN6Cicada9Scheduler7runTaskEv", scope: !943, file: !944, line: 68, type: !959, scopeLine: 68, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!959 = !DISubroutineType(types: !960)
!960 = !{null, !957}
!961 = !DISubprogram(name: "start", linkageName: "_ZN6Cicada9Scheduler5startEv", scope: !943, file: !944, line: 74, type: !959, scopeLine: 74, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!962 = !{!963, !968}
!963 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !218, entity: !964, file: !967, line: 58)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !965, line: 24, baseType: !966)
!965 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/__stddef_max_align_t.h", directory: "", checksumkind: CSK_MD5, checksum: "48e8e2456f77e6cda35d245130fa7259")
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !965, line: 19, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS11max_align_t")
!967 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/c++/10.3.1/cstddef", directory: "/home/mjshen/RTOSExploration")
!968 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !940, entity: !51, file: !941, line: 27)
!969 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !970, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, imports: !971, splitDebugInlining: false, nameTableKind: None)
!970 = !DIFile(filename: "../cicada/platform/stm32f1/tick_stm32.cpp", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "2e21bec54557ce151e165eda219ada53")
!971 = !{!217, !223, !227, !230, !234, !237, !239, !241, !243, !246, !249, !252, !255, !258, !261, !262, !263, !264, !265, !267, !269, !271, !273, !276, !279, !282, !285, !288}
!972 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !973, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !974, imports: !1099, splitDebugInlining: false, nameTableKind: None)
!973 = !DIFile(filename: "../cicada/bufferedserial.cpp", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "0c50e54046b616f386000f55e6143c47")
!974 = !{!975, !95, !99, !128, !979, !983}
!975 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "BufferedSerial", scope: !51, file: !681, line: 42, size: 832, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !976, vtableHolder: !99)
!976 = !{!977, !978, !1057, !1058, !1062, !1065, !1070, !1071, !1074, !1077, !1080, !1083, !1086, !1089, !1090, !1093, !1096, !1097, !1098}
!977 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !975, baseType: !95, flags: DIFlagPublic, extraData: i32 0)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_readBuffer", scope: !975, file: !681, line: 105, baseType: !979, size: 384, offset: 64, flags: DIFlagProtected)
!979 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "LineCircularBuffer", scope: !51, file: !980, line: 38, size: 384, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !981, vtableHolder: !983, identifier: "_ZTSN6Cicada18LineCircularBufferE")
!980 = !DIFile(filename: "../cicada/linecircularbuffer.h", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "7c64ede70efe975ae69caea246f4ce64")
!981 = !{!982, !1031, !1032, !1036, !1039, !1042, !1045, !1048, !1053, !1054}
!982 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !979, baseType: !983, flags: DIFlagPublic, extraData: i32 0)
!983 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "CircularBuffer<char>", scope: !51, file: !984, line: 39, size: 384, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !985, vtableHolder: !983, templateParams: !1029, identifier: "_ZTSN6Cicada14CircularBufferIcEE")
!984 = !DIFile(filename: "../cicada/circularbuffer.h", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "eefa34d28a75acab61b1e5f45f9ba1dd")
!985 = !{!986, !987, !988, !989, !990, !992, !993, !997, !1000, !1003, !1006, !1009, !1012, !1013, !1014, !1019, !1020, !1023, !1024, !1025}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$CircularBuffer", scope: !984, file: !984, baseType: !54, size: 32, flags: DIFlagArtificial)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_writeHead", scope: !983, file: !984, line: 196, baseType: !110, size: 64, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_readHead", scope: !983, file: !984, line: 197, baseType: !110, size: 64, offset: 128)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_availableData", scope: !983, file: !984, line: 198, baseType: !110, size: 64, offset: 192)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_bufferSize", scope: !983, file: !984, line: 199, baseType: !991, size: 64, offset: 256)
!991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_buffer", scope: !983, file: !984, line: 200, baseType: !322, size: 32, offset: 320)
!993 = !DISubprogram(name: "CircularBuffer", scope: !983, file: !984, line: 48, type: !994, scopeLine: 48, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!994 = !DISubroutineType(types: !995)
!995 = !{null, !996, !322, !110}
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!997 = !DISubprogram(name: "~CircularBuffer", scope: !983, file: !984, line: 56, type: !998, scopeLine: 56, containingType: !983, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!998 = !DISubroutineType(types: !999)
!999 = !{null, !996}
!1000 = !DISubprogram(name: "push", linkageName: "_ZN6Cicada14CircularBufferIcE4pushEPKcy", scope: !983, file: !984, line: 65, type: !1001, scopeLine: 65, containingType: !983, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!110, !996, !147, !110}
!1003 = !DISubprogram(name: "push", linkageName: "_ZN6Cicada14CircularBufferIcE4pushEc", scope: !983, file: !984, line: 88, type: !1004, scopeLine: 88, containingType: !983, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{null, !996, !149}
!1006 = !DISubprogram(name: "pull", linkageName: "_ZN6Cicada14CircularBufferIcE4pullEPcy", scope: !983, file: !984, line: 102, type: !1007, scopeLine: 102, containingType: !983, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!110, !996, !322, !110}
!1009 = !DISubprogram(name: "pull", linkageName: "_ZN6Cicada14CircularBufferIcE4pullEv", scope: !983, file: !984, line: 124, type: !1010, scopeLine: 124, containingType: !983, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!149, !996}
!1012 = !DISubprogram(name: "read", linkageName: "_ZN6Cicada14CircularBufferIcE4readEv", scope: !983, file: !984, line: 140, type: !1010, scopeLine: 140, containingType: !983, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!1013 = !DISubprogram(name: "flush", linkageName: "_ZN6Cicada14CircularBufferIcE5flushEv", scope: !983, file: !984, line: 148, type: !998, scopeLine: 148, containingType: !983, virtualIndex: 7, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!1014 = !DISubprogram(name: "isEmpty", linkageName: "_ZNK6Cicada14CircularBufferIcE7isEmptyEv", scope: !983, file: !984, line: 158, type: !1015, scopeLine: 158, containingType: !983, virtualIndex: 8, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!62, !1017}
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!1018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !983)
!1019 = !DISubprogram(name: "isFull", linkageName: "_ZNK6Cicada14CircularBufferIcE6isFullEv", scope: !983, file: !984, line: 166, type: !1015, scopeLine: 166, containingType: !983, virtualIndex: 9, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!1020 = !DISubprogram(name: "bytesAvailable", linkageName: "_ZNK6Cicada14CircularBufferIcE14bytesAvailableEv", scope: !983, file: !984, line: 174, type: !1021, scopeLine: 174, containingType: !983, virtualIndex: 10, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!110, !1017}
!1023 = !DISubprogram(name: "spaceAvailable", linkageName: "_ZNK6Cicada14CircularBufferIcE14spaceAvailableEv", scope: !983, file: !984, line: 182, type: !1021, scopeLine: 182, containingType: !983, virtualIndex: 11, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!1024 = !DISubprogram(name: "size", linkageName: "_ZNK6Cicada14CircularBufferIcE4sizeEv", scope: !983, file: !984, line: 190, type: !1021, scopeLine: 190, containingType: !983, virtualIndex: 12, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!1025 = !DISubprogram(name: "incrementOrResetHead", linkageName: "_ZN6Cicada14CircularBufferIcE20incrementOrResetHeadERy", scope: !983, file: !984, line: 202, type: !1026, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{null, !996, !1028}
!1028 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !110, size: 32)
!1029 = !{!1030}
!1030 = !DITemplateTypeParameter(name: "T", type: !149)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_bufferedLines", scope: !979, file: !980, line: 130, baseType: !37, size: 16, offset: 352)
!1032 = !DISubprogram(name: "LineCircularBuffer", scope: !979, file: !980, line: 41, type: !1033, scopeLine: 41, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{null, !1035, !322, !110}
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!1036 = !DISubprogram(name: "push", linkageName: "_ZN6Cicada18LineCircularBuffer4pushEPKcy", scope: !979, file: !980, line: 46, type: !1037, scopeLine: 46, containingType: !979, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!110, !1035, !147, !110}
!1039 = !DISubprogram(name: "push", linkageName: "_ZN6Cicada18LineCircularBuffer4pushEc", scope: !979, file: !980, line: 60, type: !1040, scopeLine: 60, containingType: !979, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{null, !1035, !149}
!1042 = !DISubprogram(name: "pull", linkageName: "_ZN6Cicada18LineCircularBuffer4pullEPcy", scope: !979, file: !980, line: 69, type: !1043, scopeLine: 69, containingType: !979, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!110, !1035, !322, !110}
!1045 = !DISubprogram(name: "pull", linkageName: "_ZN6Cicada18LineCircularBuffer4pullEv", scope: !979, file: !980, line: 83, type: !1046, scopeLine: 83, containingType: !979, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!149, !1035}
!1048 = !DISubprogram(name: "numBufferedLines", linkageName: "_ZNK6Cicada18LineCircularBuffer16numBufferedLinesEv", scope: !979, file: !980, line: 97, type: !1049, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!37, !1051}
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!1052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !979)
!1053 = !DISubprogram(name: "readLine", linkageName: "_ZN6Cicada18LineCircularBuffer8readLineEPcy", scope: !979, file: !980, line: 108, type: !1043, scopeLine: 108, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1054 = !DISubprogram(name: "flush", linkageName: "_ZN6Cicada18LineCircularBuffer5flushEv", scope: !979, file: !980, line: 123, type: !1055, scopeLine: 123, containingType: !979, virtualIndex: 7, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{null, !1035}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "_writeBuffer", scope: !975, file: !681, line: 106, baseType: !979, size: 384, offset: 448, flags: DIFlagProtected)
!1058 = !DISubprogram(name: "BufferedSerial", scope: !975, file: !681, line: 54, type: !1059, scopeLine: 54, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{null, !1061, !322, !322, !110, !110}
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!1062 = !DISubprogram(name: "BufferedSerial", scope: !975, file: !681, line: 64, type: !1063, scopeLine: 64, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{null, !1061, !322, !322, !110}
!1065 = !DISubprogram(name: "bytesAvailable", linkageName: "_ZNK6Cicada14BufferedSerial14bytesAvailableEv", scope: !975, file: !681, line: 66, type: !1066, scopeLine: 66, containingType: !975, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!110, !1068}
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!1069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !975)
!1070 = !DISubprogram(name: "spaceAvailable", linkageName: "_ZNK6Cicada14BufferedSerial14spaceAvailableEv", scope: !975, file: !681, line: 68, type: !1066, scopeLine: 68, containingType: !975, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!1071 = !DISubprogram(name: "read", linkageName: "_ZN6Cicada14BufferedSerial4readEPhy", scope: !975, file: !681, line: 70, type: !1072, scopeLine: 70, containingType: !975, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!110, !1061, !45, !110}
!1074 = !DISubprogram(name: "read", linkageName: "_ZN6Cicada14BufferedSerial4readEv", scope: !975, file: !681, line: 72, type: !1075, scopeLine: 72, containingType: !975, virtualIndex: 7, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!42, !1061}
!1077 = !DISubprogram(name: "write", linkageName: "_ZN6Cicada14BufferedSerial5writeEPKhy", scope: !975, file: !681, line: 74, type: !1078, scopeLine: 74, containingType: !975, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!110, !1061, !40, !110}
!1080 = !DISubprogram(name: "write", linkageName: "_ZN6Cicada14BufferedSerial5writeEPKh", scope: !975, file: !681, line: 76, type: !1081, scopeLine: 76, containingType: !975, virtualIndex: 8, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!110, !1061, !40}
!1083 = !DISubprogram(name: "write", linkageName: "_ZN6Cicada14BufferedSerial5writeEh", scope: !975, file: !681, line: 78, type: !1084, scopeLine: 78, containingType: !975, virtualIndex: 9, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{null, !1061, !42}
!1086 = !DISubprogram(name: "canReadLine", linkageName: "_ZNK6Cicada14BufferedSerial11canReadLineEv", scope: !975, file: !681, line: 80, type: !1087, scopeLine: 80, containingType: !975, virtualIndex: 10, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!62, !1068}
!1089 = !DISubprogram(name: "readLine", linkageName: "_ZN6Cicada14BufferedSerial8readLineEPhy", scope: !975, file: !681, line: 91, type: !1072, scopeLine: 91, containingType: !975, virtualIndex: 11, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!1090 = !DISubprogram(name: "flushReceiveBuffers", linkageName: "_ZN6Cicada14BufferedSerial19flushReceiveBuffersEv", scope: !975, file: !681, line: 93, type: !1091, scopeLine: 93, containingType: !975, virtualIndex: 12, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{null, !1061}
!1093 = !DISubprogram(name: "readBufferSize", linkageName: "_ZN6Cicada14BufferedSerial14readBufferSizeEv", scope: !975, file: !681, line: 95, type: !1094, scopeLine: 95, containingType: !975, virtualIndex: 13, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!110, !1061}
!1096 = !DISubprogram(name: "writeBufferSize", linkageName: "_ZN6Cicada14BufferedSerial15writeBufferSizeEv", scope: !975, file: !681, line: 96, type: !1094, scopeLine: 96, containingType: !975, virtualIndex: 14, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!1097 = !DISubprogram(name: "transferToAndFromBuffer", linkageName: "_ZN6Cicada14BufferedSerial23transferToAndFromBufferEv", scope: !975, file: !681, line: 102, type: !1091, scopeLine: 102, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1098 = !DISubprogram(name: "copyToBuffer", linkageName: "_ZN6Cicada14BufferedSerial12copyToBufferEh", scope: !975, file: !681, line: 109, type: !1084, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1099 = !{!217, !223, !227, !230, !234, !237, !239, !241, !243, !246, !249, !252, !255, !258, !261, !262, !263, !264, !265, !267, !269, !271, !273, !276, !279, !282, !285, !288, !1100}
!1100 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !972, entity: !51, file: !973, line: 28)
!1101 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1102, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1102 = !DIFile(filename: "../cicada/platform/stm32f1/irq_stm32.cpp", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "e34a510e3cc4f838fcfeb73936339393")
!1103 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1104, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1105, retainedTypes: !1126, splitDebugInlining: false, nameTableKind: None)
!1104 = !DIFile(filename: "../dep/STM32Cube_FW_F1_V1.8.0/Drivers/STM32F1xx_HAL_Driver/Src/stm32f1xx_hal_uart.c", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "16c165b28ca3d4a5c8d7d66f2c899e26")
!1105 = !{!467, !1106, !1110, !1116, !383}
!1106 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !9, line: 52, baseType: !10, size: 32, elements: !1107)
!1107 = !{!1108, !1109}
!1108 = !DIEnumerator(name: "HAL_UNLOCKED", value: 0)
!1109 = !DIEnumerator(name: "HAL_LOCKED", value: 1)
!1110 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !712, line: 78, baseType: !10, size: 32, elements: !1111)
!1111 = !{!1112, !1113, !1114, !1115}
!1112 = !DIEnumerator(name: "HAL_DMA_STATE_RESET", value: 0)
!1113 = !DIEnumerator(name: "HAL_DMA_STATE_READY", value: 1)
!1114 = !DIEnumerator(name: "HAL_DMA_STATE_BUSY", value: 2)
!1115 = !DIEnumerator(name: "HAL_DMA_STATE_TIMEOUT", value: 3)
!1116 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !587, line: 117, baseType: !10, size: 32, elements: !1117)
!1117 = !{!1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125}
!1118 = !DIEnumerator(name: "HAL_UART_STATE_RESET", value: 0)
!1119 = !DIEnumerator(name: "HAL_UART_STATE_READY", value: 32)
!1120 = !DIEnumerator(name: "HAL_UART_STATE_BUSY", value: 36)
!1121 = !DIEnumerator(name: "HAL_UART_STATE_BUSY_TX", value: 33)
!1122 = !DIEnumerator(name: "HAL_UART_STATE_BUSY_RX", value: 34)
!1123 = !DIEnumerator(name: "HAL_UART_STATE_BUSY_TX_RX", value: 35)
!1124 = !DIEnumerator(name: "HAL_UART_STATE_TIMEOUT", value: 160)
!1125 = !DIEnumerator(name: "HAL_UART_STATE_ERROR", value: 224)
!1126 = !{!296, !24, !1127, !37, !42, !569, !1128, !1129, !1163, !1134}
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 32)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "HAL_UART_StateTypeDef", file: !587, line: 136, baseType: !1116)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 32)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "UART_HandleTypeDef", file: !587, line: 189, baseType: !1131)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__UART_HandleTypeDef", file: !587, line: 141, size: 576, elements: !1132)
!1132 = !{!1133, !1145, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1209, !1210, !1211, !1213, !1214}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "Instance", scope: !1131, file: !587, line: 143, baseType: !1134, size: 32)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 32)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "USART_TypeDef", file: !19, line: 516, baseType: !1136)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 507, size: 224, elements: !1137)
!1137 = !{!1138, !1139, !1140, !1141, !1142, !1143, !1144}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "SR", scope: !1136, file: !19, line: 509, baseType: !23, size: 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "DR", scope: !1136, file: !19, line: 510, baseType: !23, size: 32, offset: 32)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "BRR", scope: !1136, file: !19, line: 511, baseType: !23, size: 32, offset: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "CR1", scope: !1136, file: !19, line: 512, baseType: !23, size: 32, offset: 96)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "CR2", scope: !1136, file: !19, line: 513, baseType: !23, size: 32, offset: 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "CR3", scope: !1136, file: !19, line: 514, baseType: !23, size: 32, offset: 160)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "GTPR", scope: !1136, file: !19, line: 515, baseType: !23, size: 32, offset: 192)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "Init", scope: !1131, file: !587, line: 145, baseType: !1146, size: 224, offset: 32)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "UART_InitTypeDef", file: !587, line: 76, baseType: !1147)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !587, line: 47, size: 224, elements: !1148)
!1148 = !{!1149, !1150, !1151, !1152, !1153, !1154, !1155}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "BaudRate", scope: !1147, file: !587, line: 49, baseType: !24, size: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "WordLength", scope: !1147, file: !587, line: 54, baseType: !24, size: 32, offset: 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "StopBits", scope: !1147, file: !587, line: 57, baseType: !24, size: 32, offset: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "Parity", scope: !1147, file: !587, line: 60, baseType: !24, size: 32, offset: 96)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "Mode", scope: !1147, file: !587, line: 67, baseType: !24, size: 32, offset: 128)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "HwFlowCtl", scope: !1147, file: !587, line: 70, baseType: !24, size: 32, offset: 160)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "OverSampling", scope: !1147, file: !587, line: 73, baseType: !24, size: 32, offset: 192)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "pTxBuffPtr", scope: !1131, file: !587, line: 147, baseType: !45, size: 32, offset: 256)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "TxXferSize", scope: !1131, file: !587, line: 149, baseType: !37, size: 16, offset: 288)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "TxXferCount", scope: !1131, file: !587, line: 151, baseType: !705, size: 16, offset: 304)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "pRxBuffPtr", scope: !1131, file: !587, line: 153, baseType: !45, size: 32, offset: 320)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "RxXferSize", scope: !1131, file: !587, line: 155, baseType: !37, size: 16, offset: 352)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "RxXferCount", scope: !1131, file: !587, line: 157, baseType: !705, size: 16, offset: 368)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "hdmatx", scope: !1131, file: !587, line: 159, baseType: !1163, size: 32, offset: 384)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 32)
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_HandleTypeDef", file: !712, line: 137, baseType: !1165)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__DMA_HandleTypeDef", file: !712, line: 111, size: 576, elements: !1166)
!1166 = !{!1167, !1176, !1187, !1189, !1191, !1192, !1197, !1198, !1199, !1200, !1201, !1208}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "Instance", scope: !1165, file: !712, line: 113, baseType: !1168, size: 32)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 32)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_Channel_TypeDef", file: !19, line: 297, baseType: !1170)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 291, size: 128, elements: !1171)
!1171 = !{!1172, !1173, !1174, !1175}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !1170, file: !19, line: 293, baseType: !23, size: 32)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "CNDTR", scope: !1170, file: !19, line: 294, baseType: !23, size: 32, offset: 32)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "CPAR", scope: !1170, file: !19, line: 295, baseType: !23, size: 32, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "CMAR", scope: !1170, file: !19, line: 296, baseType: !23, size: 32, offset: 96)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "Init", scope: !1165, file: !712, line: 115, baseType: !1177, size: 224, offset: 32)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_InitTypeDef", file: !712, line: 73, baseType: !1178)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !712, line: 48, size: 224, elements: !1179)
!1179 = !{!1180, !1181, !1182, !1183, !1184, !1185, !1186}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "Direction", scope: !1178, file: !712, line: 50, baseType: !24, size: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "PeriphInc", scope: !1178, file: !712, line: 54, baseType: !24, size: 32, offset: 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "MemInc", scope: !1178, file: !712, line: 57, baseType: !24, size: 32, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "PeriphDataAlignment", scope: !1178, file: !712, line: 60, baseType: !24, size: 32, offset: 96)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "MemDataAlignment", scope: !1178, file: !712, line: 63, baseType: !24, size: 32, offset: 128)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "Mode", scope: !1178, file: !712, line: 66, baseType: !24, size: 32, offset: 160)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "Priority", scope: !1178, file: !712, line: 71, baseType: !24, size: 32, offset: 192)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "Lock", scope: !1165, file: !712, line: 117, baseType: !1188, size: 32, offset: 256)
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "HAL_LockTypeDef", file: !9, line: 56, baseType: !1106)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "State", scope: !1165, file: !712, line: 119, baseType: !1190, size: 32, offset: 288)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "HAL_DMA_StateTypeDef", file: !712, line: 84, baseType: !1110)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "Parent", scope: !1165, file: !712, line: 121, baseType: !296, size: 32, offset: 320)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "XferCpltCallback", scope: !1165, file: !712, line: 123, baseType: !1193, size: 32, offset: 352)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 32)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{null, !1196}
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "XferHalfCpltCallback", scope: !1165, file: !712, line: 125, baseType: !1193, size: 32, offset: 384)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "XferErrorCallback", scope: !1165, file: !712, line: 127, baseType: !1193, size: 32, offset: 416)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "XferAbortCallback", scope: !1165, file: !712, line: 129, baseType: !1193, size: 32, offset: 448)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "ErrorCode", scope: !1165, file: !712, line: 131, baseType: !23, size: 32, offset: 480)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "DmaBaseAddress", scope: !1165, file: !712, line: 133, baseType: !1202, size: 32, offset: 512)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 32)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_TypeDef", file: !19, line: 303, baseType: !1204)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 299, size: 64, elements: !1205)
!1205 = !{!1206, !1207}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "ISR", scope: !1204, file: !19, line: 301, baseType: !23, size: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "IFCR", scope: !1204, file: !19, line: 302, baseType: !23, size: 32, offset: 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "ChannelIndex", scope: !1165, file: !712, line: 135, baseType: !24, size: 32, offset: 544)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "hdmarx", scope: !1131, file: !587, line: 161, baseType: !1163, size: 32, offset: 416)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "Lock", scope: !1131, file: !587, line: 163, baseType: !1188, size: 32, offset: 448)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "gState", scope: !1131, file: !587, line: 165, baseType: !1212, size: 32, offset: 480)
!1212 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1128)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "RxState", scope: !1131, file: !587, line: 169, baseType: !1212, size: 32, offset: 512)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "ErrorCode", scope: !1131, file: !587, line: 172, baseType: !23, size: 32, offset: 544)
!1215 = !{!"Ubuntu clang version 14.0.6"}
!1216 = !{i32 7, !"Dwarf Version", i32 5}
!1217 = !{i32 2, !"Debug Info Version", i32 3}
!1218 = !{i32 1, !"wchar_size", i32 4}
!1219 = !{i32 1, !"min_enum_size", i32 4}
!1220 = !{i32 1, !"branch-target-enforcement", i32 0}
!1221 = !{i32 1, !"sign-return-address", i32 0}
!1222 = !{i32 1, !"sign-return-address-all", i32 0}
!1223 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!1224 = !{i32 7, !"frame-pointer", i32 2}
!1225 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 58, type: !1226, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !1229)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!58, !58, !1228}
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 32)
!1229 = !{!1230, !1231, !1232, !1234, !1238, !1239, !1240, !1241, !1243}
!1230 = !DILocalVariable(name: "argc", arg: 1, scope: !1225, file: !3, line: 58, type: !58)
!1231 = !DILocalVariable(name: "argv", arg: 2, scope: !1225, file: !3, line: 58, type: !1228)
!1232 = !DILocalVariable(name: "bufferSize", scope: !1225, file: !3, line: 64, type: !1233)
!1233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!1234 = !DILocalVariable(name: "readBuffer", scope: !1225, file: !3, line: 65, type: !1235)
!1235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 12032, elements: !1236)
!1236 = !{!1237}
!1237 = !DISubrange(count: 1504)
!1238 = !DILocalVariable(name: "writeBuffer", scope: !1225, file: !3, line: 66, type: !1235)
!1239 = !DILocalVariable(name: "serial", scope: !1225, file: !3, line: 67, type: !376)
!1240 = !DILocalVariable(name: "task", scope: !1225, file: !3, line: 68, type: !46)
!1241 = !DILocalVariable(name: "taskList", scope: !1225, file: !3, line: 70, type: !1242)
!1242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !952, size: 64, elements: !429)
!1243 = !DILocalVariable(name: "s", scope: !1225, file: !3, line: 72, type: !943)
!1244 = !DILocation(line: 0, scope: !1225)
!1245 = !DILocation(line: 61, column: 5, scope: !1225)
!1246 = !DILocation(line: 62, column: 5, scope: !1225)
!1247 = !DILocation(line: 65, column: 5, scope: !1225)
!1248 = !DILocation(line: 65, column: 10, scope: !1225)
!1249 = !DILocation(line: 66, column: 5, scope: !1225)
!1250 = !DILocation(line: 66, column: 10, scope: !1225)
!1251 = !DILocation(line: 67, column: 5, scope: !1225)
!1252 = !DILocation(line: 67, column: 15, scope: !1225)
!1253 = !DILocation(line: 68, column: 5, scope: !1225)
!1254 = !DILocation(line: 68, column: 16, scope: !1225)
!1255 = !DILocation(line: 68, column: 21, scope: !1225)
!1256 = !DILocation(line: 70, column: 5, scope: !1225)
!1257 = !DILocation(line: 70, column: 11, scope: !1225)
!1258 = !DILocation(line: 70, column: 24, scope: !1225)
!1259 = !DILocation(line: 70, column: 26, scope: !1225)
!1260 = !{!1261, !1261, i64 0}
!1261 = !{!"any pointer", !1262, i64 0}
!1262 = !{!"omnipotent char", !1263, i64 0}
!1263 = !{!"Simple C++ TBAA"}
!1264 = !DILocation(line: 72, column: 5, scope: !1225)
!1265 = !DILocation(line: 72, column: 15, scope: !1225)
!1266 = !DILocation(line: 73, column: 7, scope: !1225)
!1267 = !DILocation(line: 74, column: 1, scope: !1225)
!1268 = distinct !DISubprogram(name: "SystemClock_Config", linkageName: "_ZL18SystemClock_Configv", scope: !3, file: !3, line: 76, type: !4, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !1269)
!1269 = !{!1270, !1290}
!1270 = !DILocalVariable(name: "RCC_OscInitStruct", scope: !1268, file: !3, line: 78, type: !1271)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_OscInitTypeDef", file: !1272, line: 261, baseType: !1273)
!1272 = !DIFile(filename: "../dep/STM32Cube_FW_F1_V1.8.0/Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "49bf7e29630a7d603739687645591a41")
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1272, line: 228, size: 320, flags: DIFlagTypePassByValue, elements: !1274, identifier: "_ZTS18RCC_OscInitTypeDef")
!1274 = !{!1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "OscillatorType", scope: !1273, file: !1272, line: 230, baseType: !24, size: 32)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "HSEState", scope: !1273, file: !1272, line: 238, baseType: !24, size: 32, offset: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "HSEPredivValue", scope: !1273, file: !1272, line: 241, baseType: !24, size: 32, offset: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "LSEState", scope: !1273, file: !1272, line: 244, baseType: !24, size: 32, offset: 96)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "HSIState", scope: !1273, file: !1272, line: 247, baseType: !24, size: 32, offset: 128)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "HSICalibrationValue", scope: !1273, file: !1272, line: 250, baseType: !24, size: 32, offset: 160)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "LSIState", scope: !1273, file: !1272, line: 253, baseType: !24, size: 32, offset: 192)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "PLL", scope: !1273, file: !1272, line: 256, baseType: !1283, size: 96, offset: 224)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_PLLInitTypeDef", file: !1284, line: 59, baseType: !1285)
!1284 = !DIFile(filename: "../dep/STM32Cube_FW_F1_V1.8.0/Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "3e0cb02f236e8f5a4c479e8d7b418957")
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1284, line: 49, size: 96, flags: DIFlagTypePassByValue, elements: !1286, identifier: "_ZTS18RCC_PLLInitTypeDef")
!1286 = !{!1287, !1288, !1289}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "PLLState", scope: !1285, file: !1284, line: 51, baseType: !24, size: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "PLLSource", scope: !1285, file: !1284, line: 54, baseType: !24, size: 32, offset: 32)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "PLLMUL", scope: !1285, file: !1284, line: 57, baseType: !24, size: 32, offset: 64)
!1290 = !DILocalVariable(name: "RCC_ClkInitStruct", scope: !1268, file: !3, line: 79, type: !1291)
!1291 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_ClkInitTypeDef", file: !1284, line: 80, baseType: !1292)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1284, line: 64, size: 160, flags: DIFlagTypePassByValue, elements: !1293, identifier: "_ZTS18RCC_ClkInitTypeDef")
!1293 = !{!1294, !1295, !1296, !1297, !1298}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "ClockType", scope: !1292, file: !1284, line: 66, baseType: !24, size: 32)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "SYSCLKSource", scope: !1292, file: !1284, line: 69, baseType: !24, size: 32, offset: 32)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "AHBCLKDivider", scope: !1292, file: !1284, line: 72, baseType: !24, size: 32, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "APB1CLKDivider", scope: !1292, file: !1284, line: 75, baseType: !24, size: 32, offset: 96)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "APB2CLKDivider", scope: !1292, file: !1284, line: 78, baseType: !24, size: 32, offset: 128)
!1299 = !DILocation(line: 78, column: 5, scope: !1268)
!1300 = !DILocation(line: 78, column: 24, scope: !1268)
!1301 = !DILocation(line: 79, column: 5, scope: !1268)
!1302 = !DILocation(line: 79, column: 24, scope: !1268)
!1303 = !DILocation(line: 83, column: 23, scope: !1268)
!1304 = !DILocation(line: 83, column: 38, scope: !1268)
!1305 = !{!1306, !1307, i64 0}
!1306 = !{!"_ZTS18RCC_OscInitTypeDef", !1307, i64 0, !1307, i64 4, !1307, i64 8, !1307, i64 12, !1307, i64 16, !1307, i64 20, !1307, i64 24, !1308, i64 28}
!1307 = !{!"int", !1262, i64 0}
!1308 = !{!"_ZTS18RCC_PLLInitTypeDef", !1307, i64 0, !1307, i64 4, !1307, i64 8}
!1309 = !DILocation(line: 84, column: 23, scope: !1268)
!1310 = !DILocation(line: 84, column: 32, scope: !1268)
!1311 = !{!1306, !1307, i64 16}
!1312 = !DILocation(line: 85, column: 23, scope: !1268)
!1313 = !DILocation(line: 85, column: 43, scope: !1268)
!1314 = !{!1306, !1307, i64 20}
!1315 = !DILocation(line: 86, column: 27, scope: !1268)
!1316 = !DILocation(line: 86, column: 36, scope: !1268)
!1317 = !{!1306, !1307, i64 28}
!1318 = !DILocation(line: 87, column: 27, scope: !1268)
!1319 = !DILocation(line: 87, column: 37, scope: !1268)
!1320 = !{!1306, !1307, i64 32}
!1321 = !DILocation(line: 88, column: 27, scope: !1268)
!1322 = !DILocation(line: 88, column: 34, scope: !1268)
!1323 = !{!1306, !1307, i64 36}
!1324 = !DILocation(line: 89, column: 5, scope: !1268)
!1325 = !DILocation(line: 93, column: 23, scope: !1268)
!1326 = !DILocation(line: 94, column: 9, scope: !1268)
!1327 = !{!1328, !1307, i64 0}
!1328 = !{!"_ZTS18RCC_ClkInitTypeDef", !1307, i64 0, !1307, i64 4, !1307, i64 8, !1307, i64 12, !1307, i64 16}
!1329 = !DILocation(line: 95, column: 23, scope: !1268)
!1330 = !DILocation(line: 95, column: 36, scope: !1268)
!1331 = !{!1328, !1307, i64 4}
!1332 = !DILocation(line: 96, column: 23, scope: !1268)
!1333 = !DILocation(line: 96, column: 37, scope: !1268)
!1334 = !{!1328, !1307, i64 8}
!1335 = !DILocation(line: 97, column: 23, scope: !1268)
!1336 = !DILocation(line: 97, column: 38, scope: !1268)
!1337 = !{!1328, !1307, i64 12}
!1338 = !DILocation(line: 98, column: 23, scope: !1268)
!1339 = !DILocation(line: 98, column: 38, scope: !1268)
!1340 = !{!1328, !1307, i64 16}
!1341 = !DILocation(line: 100, column: 5, scope: !1268)
!1342 = !DILocation(line: 101, column: 1, scope: !1268)
!1343 = distinct !DISubprogram(name: "SerialTask", linkageName: "_ZN10SerialTaskC2ERN6Cicada15IBufferedSerialE", scope: !46, file: !3, line: 18, type: !192, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, declaration: !191, retainedNodes: !1344)
!1344 = !{!1345, !1346}
!1345 = !DILocalVariable(name: "this", arg: 1, scope: !1343, type: !204, flags: DIFlagArtificial | DIFlagObjectPointer)
!1346 = !DILocalVariable(name: "serial", arg: 2, scope: !1343, file: !3, line: 18, type: !94)
!1347 = !DILocation(line: 0, scope: !1343)
!1348 = !DILocation(line: 18, column: 68, scope: !1343)
!1349 = !DILocation(line: 18, column: 5, scope: !1343)
!1350 = !{!1351, !1351, i64 0}
!1351 = !{!"vtable pointer", !1263, i64 0}
!1352 = !DILocation(line: 18, column: 43, scope: !1343)
!1353 = !DILocation(line: 18, column: 61, scope: !1343)
!1354 = !{!1355, !1307, i64 24}
!1355 = !{!"_ZTS10SerialTask", !1261, i64 20, !1307, i64 24}
!1356 = !DILocation(line: 18, column: 69, scope: !1343)
!1357 = distinct !DISubprogram(name: "~Task", linkageName: "_ZN6Cicada4TaskD2Ev", scope: !49, file: !50, line: 198, type: !69, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, declaration: !68, retainedNodes: !1358)
!1358 = !{!1359}
!1359 = !DILocalVariable(name: "this", arg: 1, scope: !1357, type: !952, flags: DIFlagArtificial | DIFlagObjectPointer)
!1360 = !DILocation(line: 0, scope: !1357)
!1361 = !DILocation(line: 198, column: 22, scope: !1357)
!1362 = distinct !DISubprogram(name: "Task", linkageName: "_ZN6Cicada4TaskC2Et", scope: !49, file: !50, line: 196, type: !65, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, declaration: !64, retainedNodes: !1363)
!1363 = !{!1364, !1365}
!1364 = !DILocalVariable(name: "this", arg: 1, scope: !1362, type: !952, flags: DIFlagArtificial | DIFlagObjectPointer)
!1365 = !DILocalVariable(name: "initialDelay", arg: 2, scope: !1362, file: !50, line: 196, type: !37)
!1366 = !DILocation(line: 0, scope: !1362)
!1367 = !DILocation(line: 196, column: 73, scope: !1362)
!1368 = !DILocation(line: 196, column: 39, scope: !1362)
!1369 = !{!1370, !1371, i64 4}
!1370 = !{!"_ZTSN6Cicada4TaskE", !1371, i64 4, !1307, i64 8, !1372, i64 12, !1307, i64 16}
!1371 = !{!"short", !1262, i64 0}
!1372 = !{!"bool", !1262, i64 0}
!1373 = !DILocation(line: 285, column: 10, scope: !1362)
!1374 = !{!1370, !1372, i64 12}
!1375 = !DILocation(line: 196, column: 61, scope: !1362)
!1376 = !{!1370, !1307, i64 16}
!1377 = !DILocation(line: 196, column: 74, scope: !1362)
!1378 = distinct !DISubprogram(name: "~SerialTask", linkageName: "_ZN10SerialTaskD0Ev", scope: !46, file: !3, line: 15, type: !196, scopeLine: 15, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, declaration: !1379, retainedNodes: !1380)
!1379 = !DISubprogram(name: "~SerialTask", scope: !46, type: !196, containingType: !46, virtualIndex: 0, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!1380 = !{!1381}
!1381 = !DILocalVariable(name: "this", arg: 1, scope: !1378, type: !204, flags: DIFlagArtificial | DIFlagObjectPointer)
!1382 = !DILocation(line: 0, scope: !1378)
!1383 = !DILocation(line: 15, column: 7, scope: !1378)
!1384 = !DILocation(line: 0, scope: !201)
!1385 = !DILocation(line: 22, column: 9, scope: !201)
!1386 = !{!1262, !1262, i64 0}
!1387 = !DILocation(line: 24, column: 14, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !210, file: !3, line: 24, column: 13)
!1389 = !{!1355, !1261, i64 20}
!1390 = !DILocation(line: 24, column: 23, scope: !1388)
!1391 = !DILocation(line: 28, column: 14, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !210, file: !3, line: 28, column: 13)
!1393 = !DILocation(line: 28, column: 23, scope: !1392)
!1394 = !DILocation(line: 32, column: 14, scope: !209)
!1395 = !DILocation(line: 32, column: 18, scope: !209)
!1396 = !DILocation(line: 32, column: 23, scope: !208)
!1397 = !DILocation(line: 32, column: 27, scope: !208)
!1398 = !DILocation(line: 0, scope: !210)
!1399 = !DILocation(line: 32, column: 9, scope: !209)
!1400 = !DILocation(line: 0, scope: !206)
!1401 = !DILocation(line: 35, column: 17, scope: !206)
!1402 = !DILocation(line: 35, column: 26, scope: !206)
!1403 = !DILocation(line: 38, column: 13, scope: !207)
!1404 = !DILocation(line: 38, column: 13, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !207, file: !3, line: 38, column: 13)
!1406 = !DILocation(line: 41, column: 17, scope: !212)
!1407 = !DILocation(line: 41, column: 22, scope: !212)
!1408 = !DILocation(line: 42, column: 17, scope: !212)
!1409 = !DILocation(line: 42, column: 26, scope: !212)
!1410 = !DILocation(line: 43, column: 13, scope: !207)
!1411 = !DILocation(line: 45, column: 13, scope: !207)
!1412 = !DILocation(line: 32, column: 34, scope: !208)
!1413 = !DILocation(line: 32, column: 37, scope: !208)
!1414 = !DILocation(line: 32, column: 9, scope: !208)
!1415 = distinct !{!1415, !1399, !1416, !1417, !1418}
!1416 = !DILocation(line: 46, column: 9, scope: !209)
!1417 = !{!"llvm.loop.mustprogress"}
!1418 = !{!"llvm.loop.unroll.disable"}
!1419 = !DILocation(line: 48, column: 9, scope: !210)
!1420 = !DILocation(line: 48, column: 18, scope: !210)
!1421 = !DILocation(line: 50, column: 9, scope: !210)
!1422 = !DILocation(line: 51, column: 5, scope: !201)
!1423 = distinct !DISubprogram(name: "setDelay", linkageName: "_ZN6Cicada4Task8setDelayEt", scope: !49, file: !50, line: 212, type: !65, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, declaration: !76, retainedNodes: !1424)
!1424 = !{!1425, !1426}
!1425 = !DILocalVariable(name: "this", arg: 1, scope: !1423, type: !952, flags: DIFlagArtificial | DIFlagObjectPointer)
!1426 = !DILocalVariable(name: "delay", arg: 2, scope: !1423, file: !50, line: 212, type: !37)
!1427 = !DILocation(line: 0, scope: !1423)
!1428 = !DILocation(line: 214, column: 9, scope: !1423)
!1429 = !DILocation(line: 214, column: 16, scope: !1423)
!1430 = !DILocation(line: 215, column: 5, scope: !1423)
!1431 = distinct !DISubprogram(name: "~Task", linkageName: "_ZN6Cicada4TaskD0Ev", scope: !49, file: !50, line: 198, type: !69, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, declaration: !68, retainedNodes: !1432)
!1432 = !{!1433}
!1433 = !DILocalVariable(name: "this", arg: 1, scope: !1431, type: !952, flags: DIFlagArtificial | DIFlagObjectPointer)
!1434 = !DILocation(line: 0, scope: !1431)
!1435 = !DILocation(line: 198, column: 21, scope: !1431)
!1436 = distinct !DISubprogram(name: "SysTick_Handler", scope: !3, file: !3, line: 105, type: !4, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !374)
!1437 = !DILocation(line: 107, column: 5, scope: !1436)
!1438 = !DILocation(line: 108, column: 1, scope: !1436)
!1439 = !DILocation(line: 112, column: 5, scope: !2)
!1440 = !{!"branch_weights", i32 1, i32 1048575}
!1441 = !DILocation(line: 112, column: 34, scope: !2)
!1442 = !DILocation(line: 113, column: 5, scope: !2)
!1443 = !DILocation(line: 113, column: 15, scope: !2)
!1444 = !DILocation(line: 114, column: 1, scope: !2)
!1445 = distinct !DISubprogram(name: "SystemInit", scope: !381, file: !381, line: 157, type: !4, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !374)
!1446 = !DILocation(line: 161, column: 11, scope: !1445)
!1447 = !{!1448, !1449, i64 0}
!1448 = !{!"", !1449, i64 0, !1449, i64 4, !1449, i64 8, !1449, i64 12, !1449, i64 16, !1449, i64 20, !1449, i64 24, !1449, i64 28, !1449, i64 32, !1449, i64 36}
!1449 = !{!"int", !1450, i64 0}
!1450 = !{!"omnipotent char", !1451, i64 0}
!1451 = !{!"Simple C/C++ TBAA"}
!1452 = !DILocation(line: 165, column: 13, scope: !1445)
!1453 = !{!1448, !1449, i64 4}
!1454 = !DILocation(line: 171, column: 11, scope: !1445)
!1455 = !DILocation(line: 174, column: 11, scope: !1445)
!1456 = !DILocation(line: 177, column: 13, scope: !1445)
!1457 = !DILocation(line: 196, column: 12, scope: !1445)
!1458 = !{!1448, !1449, i64 8}
!1459 = !DILocation(line: 208, column: 13, scope: !1445)
!1460 = !{!1461, !1449, i64 8}
!1461 = !{!"", !1449, i64 0, !1449, i64 4, !1449, i64 8, !1449, i64 12, !1449, i64 16, !1449, i64 20, !1450, i64 24, !1449, i64 36, !1449, i64 40, !1449, i64 44, !1449, i64 48, !1449, i64 52, !1449, i64 56, !1449, i64 60, !1450, i64 64, !1449, i64 72, !1449, i64 76, !1450, i64 80, !1450, i64 96, !1450, i64 116, !1449, i64 136}
!1462 = !DILocation(line: 210, column: 1, scope: !1445)
!1463 = distinct !DISubprogram(name: "SystemCoreClockUpdate", scope: !381, file: !381, line: 247, type: !4, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !1464)
!1464 = !{!1465, !1466, !1467}
!1465 = !DILocalVariable(name: "tmp", scope: !1463, file: !381, line: 249, type: !24)
!1466 = !DILocalVariable(name: "pllmull", scope: !1463, file: !381, line: 249, type: !24)
!1467 = !DILocalVariable(name: "pllsource", scope: !1463, file: !381, line: 249, type: !24)
!1468 = !DILocation(line: 0, scope: !1463)
!1469 = !DILocation(line: 260, column: 14, scope: !1463)
!1470 = !DILocation(line: 260, column: 19, scope: !1463)
!1471 = !DILocation(line: 262, column: 3, scope: !1463)
!1472 = !DILocation(line: 273, column: 22, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1463, file: !381, line: 263, column: 3)
!1474 = !DILocation(line: 274, column: 24, scope: !1473)
!1475 = !DILocation(line: 274, column: 29, scope: !1473)
!1476 = !DILocation(line: 277, column: 27, scope: !1473)
!1477 = !DILocation(line: 277, column: 35, scope: !1473)
!1478 = !DILocation(line: 279, column: 21, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1473, file: !381, line: 279, column: 11)
!1480 = !DILocation(line: 279, column: 11, scope: !1473)
!1481 = !DILocation(line: 282, column: 45, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1479, file: !381, line: 280, column: 7)
!1483 = !DILocation(line: 283, column: 7, scope: !1482)
!1484 = !DILocation(line: 292, column: 19, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !381, line: 292, column: 13)
!1486 = distinct !DILexicalBlock(scope: !1479, file: !381, line: 285, column: 7)
!1487 = !DILocation(line: 292, column: 24, scope: !1485)
!1488 = !DILocation(line: 292, column: 45, scope: !1485)
!1489 = !DILocation(line: 292, column: 13, scope: !1486)
!1490 = !DILocation(line: 294, column: 47, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1485, file: !381, line: 293, column: 9)
!1492 = !DILocation(line: 295, column: 9, scope: !1491)
!1493 = !DILocation(line: 298, column: 39, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1485, file: !381, line: 297, column: 9)
!1495 = !DILocation(line: 0, scope: !1473)
!1496 = !{!1449, !1449, i64 0}
!1497 = !DILocation(line: 350, column: 30, scope: !1463)
!1498 = !DILocation(line: 350, column: 52, scope: !1463)
!1499 = !DILocation(line: 350, column: 9, scope: !1463)
!1500 = !{!1450, !1450, i64 0}
!1501 = !DILocation(line: 352, column: 19, scope: !1463)
!1502 = !DILocation(line: 353, column: 1, scope: !1463)
!1503 = distinct !DISubprogram(name: "HAL_RCC_DeInit", scope: !780, file: !780, line: 202, type: !1504, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !1507)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!1506}
!1506 = !DIDerivedType(tag: DW_TAG_typedef, name: "HAL_StatusTypeDef", file: !9, line: 47, baseType: !467)
!1507 = !{!1508}
!1508 = !DILocalVariable(name: "tickstart", scope: !1503, file: !780, line: 204, type: !24)
!1509 = !DILocation(line: 207, column: 15, scope: !1503)
!1510 = !DILocation(line: 0, scope: !1503)
!1511 = !DILocation(line: 210, column: 3, scope: !1503)
!1512 = !DILocation(line: 213, column: 3, scope: !1503)
!1513 = !DILocation(line: 213, column: 10, scope: !1503)
!1514 = !DILocation(line: 213, column: 43, scope: !1503)
!1515 = !DILocation(line: 215, column: 10, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !780, line: 215, column: 9)
!1517 = distinct !DILexicalBlock(scope: !1503, file: !780, line: 214, column: 3)
!1518 = !DILocation(line: 215, column: 24, scope: !1516)
!1519 = !DILocation(line: 215, column: 37, scope: !1516)
!1520 = !DILocation(line: 215, column: 9, scope: !1517)
!1521 = distinct !{!1521, !1512, !1522, !1417, !1418}
!1522 = !DILocation(line: 219, column: 3, scope: !1503)
!1523 = !DILocation(line: 222, column: 3, scope: !1503)
!1524 = !DILocation(line: 225, column: 15, scope: !1503)
!1525 = !DILocation(line: 228, column: 3, scope: !1503)
!1526 = !DILocation(line: 231, column: 3, scope: !1503)
!1527 = !DILocation(line: 231, column: 10, scope: !1503)
!1528 = !DILocation(line: 231, column: 44, scope: !1503)
!1529 = !DILocation(line: 233, column: 10, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !780, line: 233, column: 9)
!1531 = distinct !DILexicalBlock(scope: !1503, file: !780, line: 232, column: 3)
!1532 = !DILocation(line: 233, column: 24, scope: !1530)
!1533 = !DILocation(line: 233, column: 37, scope: !1530)
!1534 = !DILocation(line: 233, column: 9, scope: !1531)
!1535 = distinct !{!1535, !1526, !1536, !1417, !1418}
!1536 = !DILocation(line: 237, column: 3, scope: !1503)
!1537 = !DILocation(line: 240, column: 19, scope: !1503)
!1538 = !DILocation(line: 243, column: 20, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1503, file: !780, line: 243, column: 7)
!1540 = !DILocation(line: 243, column: 7, scope: !1539)
!1541 = !DILocation(line: 243, column: 32, scope: !1539)
!1542 = !DILocation(line: 243, column: 7, scope: !1503)
!1543 = !DILocation(line: 249, column: 15, scope: !1503)
!1544 = !DILocation(line: 252, column: 3, scope: !1503)
!1545 = !DILocation(line: 255, column: 3, scope: !1503)
!1546 = !DILocation(line: 255, column: 10, scope: !1503)
!1547 = !DILocation(line: 255, column: 43, scope: !1503)
!1548 = !DILocation(line: 257, column: 10, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !780, line: 257, column: 9)
!1550 = distinct !DILexicalBlock(scope: !1503, file: !780, line: 256, column: 3)
!1551 = !DILocation(line: 257, column: 24, scope: !1549)
!1552 = !DILocation(line: 257, column: 37, scope: !1549)
!1553 = !DILocation(line: 257, column: 9, scope: !1550)
!1554 = distinct !{!1554, !1545, !1555, !1417, !1418}
!1555 = !DILocation(line: 261, column: 3, scope: !1503)
!1556 = !DILocation(line: 264, column: 3, scope: !1503)
!1557 = !DILocation(line: 267, column: 15, scope: !1503)
!1558 = !DILocation(line: 270, column: 3, scope: !1503)
!1559 = !DILocation(line: 273, column: 3, scope: !1503)
!1560 = !DILocation(line: 273, column: 10, scope: !1503)
!1561 = !DILocation(line: 273, column: 43, scope: !1503)
!1562 = !DILocation(line: 275, column: 10, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !780, line: 275, column: 9)
!1564 = distinct !DILexicalBlock(scope: !1503, file: !780, line: 274, column: 3)
!1565 = !DILocation(line: 275, column: 24, scope: !1563)
!1566 = !DILocation(line: 275, column: 37, scope: !1563)
!1567 = !DILocation(line: 275, column: 9, scope: !1564)
!1568 = distinct !{!1568, !1559, !1569, !1417, !1418}
!1569 = !DILocation(line: 279, column: 3, scope: !1503)
!1570 = !DILocation(line: 282, column: 3, scope: !1503)
!1571 = !DILocation(line: 324, column: 3, scope: !1503)
!1572 = !{!1448, !1449, i64 36}
!1573 = !DILocation(line: 327, column: 3, scope: !1503)
!1574 = !DILocation(line: 329, column: 3, scope: !1503)
!1575 = !DILocation(line: 330, column: 1, scope: !1503)
!1576 = distinct !DISubprogram(name: "HAL_RCC_OscConfig", scope: !780, file: !780, line: 347, type: !1577, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !1597)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!1506, !1579}
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 32)
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_OscInitTypeDef", file: !1272, line: 261, baseType: !1581)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1272, line: 228, size: 320, elements: !1582)
!1582 = !{!1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "OscillatorType", scope: !1581, file: !1272, line: 230, baseType: !24, size: 32)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "HSEState", scope: !1581, file: !1272, line: 238, baseType: !24, size: 32, offset: 32)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "HSEPredivValue", scope: !1581, file: !1272, line: 241, baseType: !24, size: 32, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "LSEState", scope: !1581, file: !1272, line: 244, baseType: !24, size: 32, offset: 96)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "HSIState", scope: !1581, file: !1272, line: 247, baseType: !24, size: 32, offset: 128)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "HSICalibrationValue", scope: !1581, file: !1272, line: 250, baseType: !24, size: 32, offset: 160)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "LSIState", scope: !1581, file: !1272, line: 253, baseType: !24, size: 32, offset: 192)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "PLL", scope: !1581, file: !1272, line: 256, baseType: !1591, size: 96, offset: 224)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_PLLInitTypeDef", file: !1284, line: 59, baseType: !1592)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1284, line: 49, size: 96, elements: !1593)
!1593 = !{!1594, !1595, !1596}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "PLLState", scope: !1592, file: !1284, line: 51, baseType: !24, size: 32)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "PLLSource", scope: !1592, file: !1284, line: 54, baseType: !24, size: 32, offset: 32)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "PLLMUL", scope: !1592, file: !1284, line: 57, baseType: !24, size: 32, offset: 64)
!1597 = !{!1598, !1599, !1600, !1601, !1605}
!1598 = !DILocalVariable(name: "RCC_OscInitStruct", arg: 1, scope: !1576, file: !780, line: 347, type: !1579)
!1599 = !DILocalVariable(name: "tickstart", scope: !1576, file: !780, line: 349, type: !24)
!1600 = !DILocalVariable(name: "pll_config", scope: !1576, file: !780, line: 350, type: !24)
!1601 = !DILocalVariable(name: "pwrclkchanged", scope: !1602, file: !780, line: 526, type: !1604)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !780, line: 525, column: 3)
!1603 = distinct !DILexicalBlock(scope: !1576, file: !780, line: 524, column: 7)
!1604 = !DIDerivedType(tag: DW_TAG_typedef, name: "FlagStatus", file: !384, line: 155, baseType: !383)
!1605 = !DILocalVariable(name: "tmpreg", scope: !1606, file: !780, line: 535, type: !23)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !780, line: 535, column: 7)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !780, line: 534, column: 5)
!1608 = distinct !DILexicalBlock(scope: !1602, file: !780, line: 533, column: 9)
!1609 = !DILocation(line: 0, scope: !1576)
!1610 = !DILocation(line: 353, column: 25, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1576, file: !780, line: 353, column: 7)
!1612 = !DILocation(line: 353, column: 7, scope: !1576)
!1613 = !DILocation(line: 362, column: 28, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1576, file: !780, line: 362, column: 7)
!1615 = !{!1616, !1449, i64 0}
!1616 = !{!"", !1449, i64 0, !1449, i64 4, !1449, i64 8, !1449, i64 12, !1449, i64 16, !1449, i64 20, !1449, i64 24, !1617, i64 28}
!1617 = !{!"", !1449, i64 0, !1449, i64 4, !1449, i64 8}
!1618 = !DILocation(line: 362, column: 44, scope: !1614)
!1619 = !DILocation(line: 362, column: 70, scope: !1614)
!1620 = !DILocation(line: 362, column: 7, scope: !1576)
!1621 = !DILocation(line: 368, column: 10, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !780, line: 368, column: 9)
!1623 = distinct !DILexicalBlock(scope: !1614, file: !780, line: 363, column: 3)
!1624 = !DILocation(line: 368, column: 40, scope: !1622)
!1625 = !DILocation(line: 369, column: 9, scope: !1622)
!1626 = !DILocation(line: 369, column: 14, scope: !1622)
!1627 = !DILocation(line: 369, column: 44, scope: !1622)
!1628 = !DILocation(line: 369, column: 79, scope: !1622)
!1629 = !DILocation(line: 369, column: 83, scope: !1622)
!1630 = !DILocation(line: 369, column: 113, scope: !1622)
!1631 = !DILocation(line: 368, column: 9, scope: !1623)
!1632 = !DILocation(line: 371, column: 12, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !780, line: 371, column: 11)
!1634 = distinct !DILexicalBlock(scope: !1622, file: !780, line: 370, column: 5)
!1635 = !DILocation(line: 371, column: 48, scope: !1633)
!1636 = !DILocation(line: 371, column: 58, scope: !1633)
!1637 = !DILocation(line: 371, column: 81, scope: !1633)
!1638 = !{!1616, !1449, i64 4}
!1639 = !DILocation(line: 371, column: 90, scope: !1633)
!1640 = !DILocation(line: 371, column: 11, scope: !1634)
!1641 = !DILocation(line: 379, column: 7, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !780, line: 379, column: 7)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !780, line: 379, column: 7)
!1644 = distinct !DILexicalBlock(scope: !1622, file: !780, line: 377, column: 5)
!1645 = !DILocation(line: 379, column: 7, scope: !1643)
!1646 = !DILocation(line: 379, column: 7, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1642, file: !780, line: 379, column: 7)
!1648 = !DILocation(line: 379, column: 7, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !780, line: 379, column: 7)
!1650 = distinct !DILexicalBlock(scope: !1642, file: !780, line: 379, column: 7)
!1651 = !DILocation(line: 379, column: 7, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !780, line: 379, column: 7)
!1653 = distinct !DILexicalBlock(scope: !1650, file: !780, line: 379, column: 7)
!1654 = !DILocation(line: 379, column: 7, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1653, file: !780, line: 379, column: 7)
!1656 = !DILocation(line: 0, scope: !1642)
!1657 = !DILocation(line: 383, column: 39, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1644, file: !780, line: 383, column: 11)
!1659 = !DILocation(line: 0, scope: !1658)
!1660 = !DILocation(line: 383, column: 11, scope: !1644)
!1661 = !DILocation(line: 389, column: 16, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1658, file: !780, line: 384, column: 7)
!1663 = !DILocation(line: 389, column: 52, scope: !1662)
!1664 = !DILocation(line: 389, column: 9, scope: !1662)
!1665 = !DILocation(line: 391, column: 16, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !780, line: 391, column: 15)
!1667 = distinct !DILexicalBlock(scope: !1662, file: !780, line: 390, column: 9)
!1668 = !DILocation(line: 391, column: 30, scope: !1666)
!1669 = !DILocation(line: 391, column: 43, scope: !1666)
!1670 = !DILocation(line: 391, column: 15, scope: !1667)
!1671 = distinct !{!1671, !1664, !1672, !1417, !1418}
!1672 = !DILocation(line: 395, column: 9, scope: !1662)
!1673 = !DILocation(line: 403, column: 16, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1658, file: !780, line: 398, column: 7)
!1675 = !DILocation(line: 403, column: 52, scope: !1674)
!1676 = !DILocation(line: 403, column: 9, scope: !1674)
!1677 = !DILocation(line: 405, column: 16, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !780, line: 405, column: 15)
!1679 = distinct !DILexicalBlock(scope: !1674, file: !780, line: 404, column: 9)
!1680 = !DILocation(line: 405, column: 30, scope: !1678)
!1681 = !DILocation(line: 405, column: 43, scope: !1678)
!1682 = !DILocation(line: 405, column: 15, scope: !1679)
!1683 = distinct !{!1683, !1676, !1684, !1417, !1418}
!1684 = !DILocation(line: 409, column: 9, scope: !1674)
!1685 = !DILocation(line: 414, column: 28, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1576, file: !780, line: 414, column: 7)
!1687 = !DILocation(line: 414, column: 44, scope: !1686)
!1688 = !DILocation(line: 414, column: 70, scope: !1686)
!1689 = !DILocation(line: 414, column: 7, scope: !1576)
!1690 = !DILocation(line: 421, column: 10, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !780, line: 421, column: 9)
!1692 = distinct !DILexicalBlock(scope: !1686, file: !780, line: 415, column: 3)
!1693 = !DILocation(line: 421, column: 40, scope: !1691)
!1694 = !DILocation(line: 422, column: 9, scope: !1691)
!1695 = !DILocation(line: 422, column: 14, scope: !1691)
!1696 = !DILocation(line: 422, column: 44, scope: !1691)
!1697 = !DILocation(line: 422, column: 79, scope: !1691)
!1698 = !DILocation(line: 422, column: 83, scope: !1691)
!1699 = !DILocation(line: 422, column: 113, scope: !1691)
!1700 = !DILocation(line: 421, column: 9, scope: !1692)
!1701 = !DILocation(line: 425, column: 12, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !780, line: 425, column: 11)
!1703 = distinct !DILexicalBlock(scope: !1691, file: !780, line: 423, column: 5)
!1704 = !DILocation(line: 425, column: 48, scope: !1702)
!1705 = !DILocation(line: 425, column: 58, scope: !1702)
!1706 = !DILocation(line: 425, column: 81, scope: !1702)
!1707 = !{!1616, !1449, i64 16}
!1708 = !DILocation(line: 425, column: 90, scope: !1702)
!1709 = !DILocation(line: 425, column: 11, scope: !1703)
!1710 = !DILocation(line: 439, column: 30, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !780, line: 439, column: 11)
!1712 = distinct !DILexicalBlock(scope: !1691, file: !780, line: 437, column: 5)
!1713 = !DILocation(line: 439, column: 39, scope: !1711)
!1714 = !DILocation(line: 439, column: 11, scope: !1712)
!1715 = !DILocation(line: 442, column: 9, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1711, file: !780, line: 440, column: 7)
!1717 = !DILocation(line: 445, column: 21, scope: !1716)
!1718 = !DILocation(line: 448, column: 9, scope: !1716)
!1719 = !DILocation(line: 448, column: 16, scope: !1716)
!1720 = !DILocation(line: 448, column: 52, scope: !1716)
!1721 = !DILocation(line: 450, column: 16, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !780, line: 450, column: 15)
!1723 = distinct !DILexicalBlock(scope: !1716, file: !780, line: 449, column: 9)
!1724 = !DILocation(line: 450, column: 30, scope: !1722)
!1725 = !DILocation(line: 450, column: 43, scope: !1722)
!1726 = !DILocation(line: 450, column: 15, scope: !1723)
!1727 = distinct !{!1727, !1718, !1728, !1417, !1418}
!1728 = !DILocation(line: 454, column: 9, scope: !1716)
!1729 = !DILocation(line: 462, column: 9, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1711, file: !780, line: 460, column: 7)
!1731 = !DILocation(line: 465, column: 21, scope: !1730)
!1732 = !DILocation(line: 468, column: 9, scope: !1730)
!1733 = !DILocation(line: 468, column: 16, scope: !1730)
!1734 = !DILocation(line: 468, column: 52, scope: !1730)
!1735 = !DILocation(line: 470, column: 16, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !780, line: 470, column: 15)
!1737 = distinct !DILexicalBlock(scope: !1730, file: !780, line: 469, column: 9)
!1738 = !DILocation(line: 470, column: 30, scope: !1736)
!1739 = !DILocation(line: 470, column: 43, scope: !1736)
!1740 = !DILocation(line: 470, column: 15, scope: !1737)
!1741 = distinct !{!1741, !1732, !1742, !1417, !1418}
!1742 = !DILocation(line: 474, column: 9, scope: !1730)
!1743 = !DILocation(line: 0, scope: !1691)
!1744 = !{!1616, !1449, i64 20}
!1745 = !DILocation(line: 479, column: 28, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1576, file: !780, line: 479, column: 7)
!1747 = !DILocation(line: 479, column: 44, scope: !1746)
!1748 = !DILocation(line: 479, column: 70, scope: !1746)
!1749 = !DILocation(line: 479, column: 7, scope: !1576)
!1750 = !DILocation(line: 485, column: 28, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !780, line: 485, column: 9)
!1752 = distinct !DILexicalBlock(scope: !1746, file: !780, line: 480, column: 3)
!1753 = !{!1616, !1449, i64 24}
!1754 = !DILocation(line: 485, column: 37, scope: !1751)
!1755 = !DILocation(line: 485, column: 9, scope: !1752)
!1756 = !DILocation(line: 488, column: 7, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1751, file: !780, line: 486, column: 5)
!1758 = !DILocation(line: 491, column: 19, scope: !1757)
!1759 = !DILocation(line: 494, column: 7, scope: !1757)
!1760 = !DILocation(line: 494, column: 14, scope: !1757)
!1761 = !DILocation(line: 494, column: 50, scope: !1757)
!1762 = !DILocation(line: 496, column: 14, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !780, line: 496, column: 13)
!1764 = distinct !DILexicalBlock(scope: !1757, file: !780, line: 495, column: 7)
!1765 = !DILocation(line: 496, column: 28, scope: !1763)
!1766 = !DILocation(line: 496, column: 41, scope: !1763)
!1767 = !DILocation(line: 496, column: 13, scope: !1764)
!1768 = distinct !{!1768, !1759, !1769, !1417, !1418}
!1769 = !DILocation(line: 500, column: 7, scope: !1757)
!1770 = !DILocation(line: 503, column: 7, scope: !1757)
!1771 = !DILocation(line: 504, column: 5, scope: !1757)
!1772 = !DILocation(line: 508, column: 7, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1751, file: !780, line: 506, column: 5)
!1774 = !DILocation(line: 511, column: 19, scope: !1773)
!1775 = !DILocation(line: 514, column: 7, scope: !1773)
!1776 = !DILocation(line: 514, column: 14, scope: !1773)
!1777 = !DILocation(line: 514, column: 50, scope: !1773)
!1778 = !DILocation(line: 516, column: 14, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !780, line: 516, column: 13)
!1780 = distinct !DILexicalBlock(scope: !1773, file: !780, line: 515, column: 7)
!1781 = !DILocation(line: 516, column: 28, scope: !1779)
!1782 = !DILocation(line: 516, column: 41, scope: !1779)
!1783 = !DILocation(line: 516, column: 13, scope: !1780)
!1784 = distinct !{!1784, !1775, !1785, !1417, !1418}
!1785 = !DILocation(line: 520, column: 7, scope: !1773)
!1786 = !DILocation(line: 524, column: 28, scope: !1603)
!1787 = !DILocation(line: 524, column: 44, scope: !1603)
!1788 = !DILocation(line: 524, column: 70, scope: !1603)
!1789 = !DILocation(line: 524, column: 7, scope: !1576)
!1790 = !DILocation(line: 0, scope: !1602)
!1791 = !DILocation(line: 533, column: 9, scope: !1608)
!1792 = !{!1448, !1449, i64 28}
!1793 = !DILocation(line: 533, column: 9, scope: !1602)
!1794 = !DILocation(line: 535, column: 7, scope: !1606)
!1795 = !DILocation(line: 535, column: 7, scope: !1607)
!1796 = !DILocation(line: 537, column: 5, scope: !1607)
!1797 = !DILocation(line: 539, column: 9, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1602, file: !780, line: 539, column: 9)
!1799 = !{!1800, !1449, i64 0}
!1800 = !{!"", !1449, i64 0, !1449, i64 4}
!1801 = !DILocation(line: 539, column: 9, scope: !1602)
!1802 = !DILocation(line: 542, column: 7, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1798, file: !780, line: 540, column: 5)
!1804 = !DILocation(line: 545, column: 19, scope: !1803)
!1805 = !DILocation(line: 547, column: 7, scope: !1803)
!1806 = !DILocation(line: 547, column: 14, scope: !1803)
!1807 = !DILocation(line: 549, column: 14, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !780, line: 549, column: 13)
!1809 = distinct !DILexicalBlock(scope: !1803, file: !780, line: 548, column: 7)
!1810 = !DILocation(line: 549, column: 28, scope: !1808)
!1811 = !DILocation(line: 549, column: 41, scope: !1808)
!1812 = !DILocation(line: 549, column: 13, scope: !1809)
!1813 = distinct !{!1813, !1805, !1814, !1417, !1418}
!1814 = !DILocation(line: 553, column: 7, scope: !1803)
!1815 = !DILocation(line: 557, column: 5, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !780, line: 557, column: 5)
!1817 = distinct !DILexicalBlock(scope: !1602, file: !780, line: 557, column: 5)
!1818 = !{!1616, !1449, i64 12}
!1819 = !DILocation(line: 557, column: 5, scope: !1817)
!1820 = !DILocation(line: 557, column: 5, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1816, file: !780, line: 557, column: 5)
!1822 = !{!1448, !1449, i64 32}
!1823 = !DILocation(line: 557, column: 5, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !780, line: 557, column: 5)
!1825 = distinct !DILexicalBlock(scope: !1816, file: !780, line: 557, column: 5)
!1826 = !DILocation(line: 557, column: 5, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !780, line: 557, column: 5)
!1828 = distinct !DILexicalBlock(scope: !1825, file: !780, line: 557, column: 5)
!1829 = !DILocation(line: 557, column: 5, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1828, file: !780, line: 557, column: 5)
!1831 = !DILocation(line: 0, scope: !1816)
!1832 = !DILocation(line: 559, column: 37, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1602, file: !780, line: 559, column: 9)
!1834 = !DILocation(line: 0, scope: !1833)
!1835 = !DILocation(line: 559, column: 9, scope: !1602)
!1836 = !DILocation(line: 565, column: 14, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1833, file: !780, line: 560, column: 5)
!1838 = !DILocation(line: 565, column: 50, scope: !1837)
!1839 = !DILocation(line: 565, column: 7, scope: !1837)
!1840 = !DILocation(line: 567, column: 14, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !780, line: 567, column: 13)
!1842 = distinct !DILexicalBlock(scope: !1837, file: !780, line: 566, column: 7)
!1843 = !DILocation(line: 567, column: 28, scope: !1841)
!1844 = !DILocation(line: 567, column: 41, scope: !1841)
!1845 = !DILocation(line: 567, column: 13, scope: !1842)
!1846 = distinct !{!1846, !1839, !1847, !1417, !1418}
!1847 = !DILocation(line: 571, column: 7, scope: !1837)
!1848 = !DILocation(line: 579, column: 14, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1833, file: !780, line: 574, column: 5)
!1850 = !DILocation(line: 579, column: 50, scope: !1849)
!1851 = !DILocation(line: 579, column: 7, scope: !1849)
!1852 = !DILocation(line: 581, column: 14, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !780, line: 581, column: 13)
!1854 = distinct !DILexicalBlock(scope: !1849, file: !780, line: 580, column: 7)
!1855 = !DILocation(line: 581, column: 28, scope: !1853)
!1856 = !DILocation(line: 581, column: 41, scope: !1853)
!1857 = !DILocation(line: 581, column: 13, scope: !1854)
!1858 = distinct !{!1858, !1851, !1859, !1417, !1418}
!1859 = !DILocation(line: 585, column: 7, scope: !1849)
!1860 = !DILocation(line: 589, column: 9, scope: !1602)
!1861 = !DILocation(line: 591, column: 7, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !780, line: 590, column: 5)
!1863 = distinct !DILexicalBlock(scope: !1602, file: !780, line: 589, column: 9)
!1864 = !DILocation(line: 592, column: 5, scope: !1862)
!1865 = !DILocation(line: 688, column: 31, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1576, file: !780, line: 688, column: 7)
!1867 = !{!1616, !1449, i64 28}
!1868 = !DILocation(line: 688, column: 41, scope: !1866)
!1869 = !DILocation(line: 688, column: 7, scope: !1576)
!1870 = !DILocation(line: 691, column: 9, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !780, line: 691, column: 9)
!1872 = distinct !DILexicalBlock(scope: !1866, file: !780, line: 689, column: 3)
!1873 = !DILocation(line: 691, column: 39, scope: !1871)
!1874 = !DILocation(line: 691, column: 9, scope: !1872)
!1875 = !DILocation(line: 693, column: 45, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !780, line: 693, column: 11)
!1877 = distinct !DILexicalBlock(scope: !1871, file: !780, line: 692, column: 5)
!1878 = !DILocation(line: 0, scope: !1876)
!1879 = !DILocation(line: 693, column: 11, scope: !1877)
!1880 = !DILocation(line: 706, column: 16, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1876, file: !780, line: 694, column: 7)
!1882 = !DILocation(line: 706, column: 53, scope: !1881)
!1883 = !DILocation(line: 706, column: 9, scope: !1881)
!1884 = !DILocation(line: 708, column: 16, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !780, line: 708, column: 15)
!1886 = distinct !DILexicalBlock(scope: !1881, file: !780, line: 707, column: 9)
!1887 = !DILocation(line: 708, column: 30, scope: !1885)
!1888 = !DILocation(line: 708, column: 43, scope: !1885)
!1889 = !DILocation(line: 708, column: 15, scope: !1886)
!1890 = distinct !{!1890, !1883, !1891, !1417, !1418}
!1891 = !DILocation(line: 712, column: 9, scope: !1881)
!1892 = !DILocation(line: 716, column: 36, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1881, file: !780, line: 716, column: 13)
!1894 = !{!1616, !1449, i64 32}
!1895 = !DILocation(line: 716, column: 46, scope: !1893)
!1896 = !DILocation(line: 716, column: 13, scope: !1881)
!1897 = !DILocation(line: 728, column: 11, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1893, file: !780, line: 717, column: 9)
!1899 = !{!1616, !1449, i64 8}
!1900 = !DILocation(line: 729, column: 9, scope: !1898)
!1901 = !DILocation(line: 732, column: 9, scope: !1881)
!1902 = !{!1616, !1449, i64 36}
!1903 = !DILocation(line: 735, column: 9, scope: !1881)
!1904 = !DILocation(line: 738, column: 21, scope: !1881)
!1905 = !DILocation(line: 741, column: 9, scope: !1881)
!1906 = !DILocation(line: 741, column: 16, scope: !1881)
!1907 = !DILocation(line: 741, column: 53, scope: !1881)
!1908 = !DILocation(line: 743, column: 16, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !780, line: 743, column: 15)
!1910 = distinct !DILexicalBlock(scope: !1881, file: !780, line: 742, column: 9)
!1911 = !DILocation(line: 743, column: 30, scope: !1909)
!1912 = !DILocation(line: 743, column: 43, scope: !1909)
!1913 = !DILocation(line: 743, column: 15, scope: !1910)
!1914 = distinct !{!1914, !1905, !1915, !1417, !1418}
!1915 = !DILocation(line: 747, column: 9, scope: !1881)
!1916 = !DILocation(line: 758, column: 16, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1876, file: !780, line: 750, column: 7)
!1918 = !DILocation(line: 758, column: 53, scope: !1917)
!1919 = !DILocation(line: 758, column: 9, scope: !1917)
!1920 = !DILocation(line: 760, column: 16, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !780, line: 760, column: 15)
!1922 = distinct !DILexicalBlock(scope: !1917, file: !780, line: 759, column: 9)
!1923 = !DILocation(line: 760, column: 30, scope: !1921)
!1924 = !DILocation(line: 760, column: 43, scope: !1921)
!1925 = !DILocation(line: 760, column: 15, scope: !1922)
!1926 = distinct !{!1926, !1919, !1927, !1417, !1418}
!1927 = !DILocation(line: 764, column: 9, scope: !1917)
!1928 = !DILocation(line: 770, column: 45, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !780, line: 770, column: 11)
!1930 = distinct !DILexicalBlock(scope: !1871, file: !780, line: 768, column: 5)
!1931 = !DILocation(line: 770, column: 11, scope: !1930)
!1932 = !DILocation(line: 777, column: 27, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1929, file: !780, line: 775, column: 7)
!1934 = !DILocation(line: 778, column: 14, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1933, file: !780, line: 778, column: 13)
!1936 = !DILocation(line: 778, column: 78, scope: !1935)
!1937 = !DILocation(line: 778, column: 52, scope: !1935)
!1938 = !DILocation(line: 778, column: 89, scope: !1935)
!1939 = !DILocation(line: 779, column: 14, scope: !1935)
!1940 = !DILocation(line: 779, column: 79, scope: !1935)
!1941 = !DILocation(line: 779, column: 53, scope: !1935)
!1942 = !DILocation(line: 778, column: 13, scope: !1933)
!1943 = !DILocation(line: 787, column: 3, scope: !1576)
!1944 = !DILocation(line: 788, column: 1, scope: !1576)
!1945 = distinct !DISubprogram(name: "RCC_Delay", scope: !780, file: !780, line: 1365, type: !1946, scopeLine: 1366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !1948)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{null, !24}
!1948 = !{!1949, !1950}
!1949 = !DILocalVariable(name: "mdelay", arg: 1, scope: !1945, file: !780, line: 1365, type: !24)
!1950 = !DILocalVariable(name: "Delay", scope: !1945, file: !780, line: 1367, type: !23)
!1951 = !DILocation(line: 0, scope: !1945)
!1952 = !DILocation(line: 1367, column: 3, scope: !1945)
!1953 = !DILocation(line: 1367, column: 17, scope: !1945)
!1954 = !DILocation(line: 1367, column: 35, scope: !1945)
!1955 = !DILocation(line: 1367, column: 56, scope: !1945)
!1956 = !DILocation(line: 1368, column: 3, scope: !1945)
!1957 = !DILocation(line: 1370, column: 5, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1945, file: !780, line: 1369, column: 3)
!1959 = !{i64 2149488927}
!1960 = !DILocation(line: 1372, column: 16, scope: !1945)
!1961 = !DILocation(line: 1371, column: 3, scope: !1958)
!1962 = distinct !{!1962, !1956, !1963, !1417, !1418}
!1963 = !DILocation(line: 1372, column: 18, scope: !1945)
!1964 = !DILocation(line: 1373, column: 1, scope: !1945)
!1965 = distinct !DISubprogram(name: "HAL_RCC_ClockConfig", scope: !780, file: !780, line: 813, type: !1966, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !1977)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!1506, !1968, !24}
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 32)
!1969 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_ClkInitTypeDef", file: !1284, line: 80, baseType: !1970)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1284, line: 64, size: 160, elements: !1971)
!1971 = !{!1972, !1973, !1974, !1975, !1976}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "ClockType", scope: !1970, file: !1284, line: 66, baseType: !24, size: 32)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "SYSCLKSource", scope: !1970, file: !1284, line: 69, baseType: !24, size: 32, offset: 32)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "AHBCLKDivider", scope: !1970, file: !1284, line: 72, baseType: !24, size: 32, offset: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "APB1CLKDivider", scope: !1970, file: !1284, line: 75, baseType: !24, size: 32, offset: 96)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "APB2CLKDivider", scope: !1970, file: !1284, line: 78, baseType: !24, size: 32, offset: 128)
!1977 = !{!1978, !1979, !1980}
!1978 = !DILocalVariable(name: "RCC_ClkInitStruct", arg: 1, scope: !1965, file: !780, line: 813, type: !1968)
!1979 = !DILocalVariable(name: "FLatency", arg: 2, scope: !1965, file: !780, line: 813, type: !24)
!1980 = !DILocalVariable(name: "tickstart", scope: !1965, file: !780, line: 815, type: !24)
!1981 = !DILocation(line: 0, scope: !1965)
!1982 = !DILocation(line: 818, column: 25, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1965, file: !780, line: 818, column: 7)
!1984 = !DILocation(line: 818, column: 7, scope: !1965)
!1985 = !DILocation(line: 833, column: 18, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1965, file: !780, line: 833, column: 7)
!1987 = !{!1988, !1449, i64 0}
!1988 = !{!"", !1449, i64 0, !1449, i64 4, !1449, i64 8, !1449, i64 12, !1449, i64 16, !1449, i64 20, !1449, i64 24, !1449, i64 28, !1449, i64 32}
!1989 = !DILocation(line: 833, column: 16, scope: !1986)
!1990 = !DILocation(line: 833, column: 7, scope: !1965)
!1991 = !DILocation(line: 836, column: 5, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1986, file: !780, line: 834, column: 3)
!1993 = !DILocation(line: 840, column: 9, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1992, file: !780, line: 840, column: 9)
!1995 = !DILocation(line: 840, column: 35, scope: !1994)
!1996 = !DILocation(line: 840, column: 9, scope: !1992)
!1997 = !DILocation(line: 848, column: 26, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1965, file: !780, line: 848, column: 5)
!1999 = !{!2000, !1449, i64 0}
!2000 = !{!"", !1449, i64 0, !1449, i64 4, !1449, i64 8, !1449, i64 12, !1449, i64 16}
!2001 = !DILocation(line: 848, column: 37, scope: !1998)
!2002 = !DILocation(line: 848, column: 59, scope: !1998)
!2003 = !DILocation(line: 848, column: 5, scope: !1965)
!2004 = !DILocation(line: 852, column: 41, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !780, line: 852, column: 9)
!2006 = distinct !DILexicalBlock(scope: !1998, file: !780, line: 849, column: 3)
!2007 = !DILocation(line: 852, column: 64, scope: !2005)
!2008 = !DILocation(line: 852, column: 9, scope: !2006)
!2009 = !DILocation(line: 854, column: 7, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2005, file: !780, line: 853, column: 5)
!2011 = !DILocation(line: 855, column: 5, scope: !2010)
!2012 = !DILocation(line: 857, column: 41, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2006, file: !780, line: 857, column: 9)
!2014 = !DILocation(line: 857, column: 64, scope: !2013)
!2015 = !DILocation(line: 857, column: 9, scope: !2006)
!2016 = !DILocation(line: 859, column: 7, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2013, file: !780, line: 858, column: 5)
!2018 = !DILocation(line: 860, column: 5, scope: !2017)
!2019 = !DILocation(line: 864, column: 5, scope: !2006)
!2020 = !{!2000, !1449, i64 8}
!2021 = !DILocation(line: 865, column: 3, scope: !2006)
!2022 = !DILocation(line: 868, column: 39, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !1965, file: !780, line: 868, column: 7)
!2024 = !DILocation(line: 868, column: 63, scope: !2023)
!2025 = !DILocation(line: 868, column: 7, scope: !1965)
!2026 = !DILocation(line: 873, column: 28, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !780, line: 873, column: 9)
!2028 = distinct !DILexicalBlock(scope: !2023, file: !780, line: 869, column: 3)
!2029 = !{!2000, !1449, i64 4}
!2030 = !DILocation(line: 873, column: 9, scope: !2028)
!2031 = !DILocation(line: 876, column: 11, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !780, line: 876, column: 11)
!2033 = distinct !DILexicalBlock(scope: !2027, file: !780, line: 874, column: 5)
!2034 = !DILocation(line: 876, column: 47, scope: !2032)
!2035 = !DILocation(line: 876, column: 11, scope: !2033)
!2036 = !DILocation(line: 885, column: 11, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !780, line: 885, column: 11)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !780, line: 883, column: 5)
!2039 = distinct !DILexicalBlock(scope: !2027, file: !780, line: 882, column: 14)
!2040 = !DILocation(line: 885, column: 47, scope: !2037)
!2041 = !DILocation(line: 885, column: 11, scope: !2038)
!2042 = !DILocation(line: 894, column: 11, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !780, line: 894, column: 11)
!2044 = distinct !DILexicalBlock(scope: !2039, file: !780, line: 892, column: 5)
!2045 = !DILocation(line: 894, column: 47, scope: !2043)
!2046 = !DILocation(line: 894, column: 11, scope: !2044)
!2047 = !DILocation(line: 899, column: 5, scope: !2028)
!2048 = !DILocation(line: 902, column: 17, scope: !2028)
!2049 = !DILocation(line: 904, column: 5, scope: !2028)
!2050 = !DILocation(line: 904, column: 12, scope: !2028)
!2051 = !DILocation(line: 904, column: 65, scope: !2028)
!2052 = !DILocation(line: 904, column: 78, scope: !2028)
!2053 = !DILocation(line: 904, column: 42, scope: !2028)
!2054 = !DILocation(line: 906, column: 12, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !780, line: 906, column: 11)
!2056 = distinct !DILexicalBlock(scope: !2028, file: !780, line: 905, column: 5)
!2057 = !DILocation(line: 906, column: 26, scope: !2055)
!2058 = !DILocation(line: 906, column: 39, scope: !2055)
!2059 = !DILocation(line: 906, column: 11, scope: !2056)
!2060 = distinct !{!2060, !2049, !2061, !1417, !1418}
!2061 = !DILocation(line: 910, column: 5, scope: !2028)
!2062 = !DILocation(line: 915, column: 18, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !1965, file: !780, line: 915, column: 7)
!2064 = !DILocation(line: 915, column: 16, scope: !2063)
!2065 = !DILocation(line: 915, column: 7, scope: !1965)
!2066 = !DILocation(line: 918, column: 5, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2063, file: !780, line: 916, column: 3)
!2068 = !DILocation(line: 922, column: 9, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2067, file: !780, line: 922, column: 9)
!2070 = !DILocation(line: 922, column: 35, scope: !2069)
!2071 = !DILocation(line: 922, column: 9, scope: !2067)
!2072 = !DILocation(line: 930, column: 26, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !1965, file: !780, line: 930, column: 5)
!2074 = !DILocation(line: 930, column: 37, scope: !2073)
!2075 = !DILocation(line: 930, column: 60, scope: !2073)
!2076 = !DILocation(line: 930, column: 5, scope: !1965)
!2077 = !DILocation(line: 933, column: 5, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2073, file: !780, line: 931, column: 3)
!2079 = !{!2000, !1449, i64 12}
!2080 = !DILocation(line: 934, column: 3, scope: !2078)
!2081 = !DILocation(line: 937, column: 39, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !1965, file: !780, line: 937, column: 7)
!2083 = !DILocation(line: 937, column: 62, scope: !2082)
!2084 = !DILocation(line: 937, column: 7, scope: !1965)
!2085 = !DILocation(line: 940, column: 5, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2082, file: !780, line: 938, column: 3)
!2087 = !{!2000, !1449, i64 16}
!2088 = !DILocation(line: 941, column: 3, scope: !2086)
!2089 = !DILocation(line: 944, column: 21, scope: !1965)
!2090 = !DILocation(line: 944, column: 70, scope: !1965)
!2091 = !DILocation(line: 944, column: 92, scope: !1965)
!2092 = !DILocation(line: 944, column: 50, scope: !1965)
!2093 = !DILocation(line: 944, column: 47, scope: !1965)
!2094 = !DILocation(line: 944, column: 19, scope: !1965)
!2095 = !DILocation(line: 947, column: 16, scope: !1965)
!2096 = !DILocation(line: 947, column: 3, scope: !1965)
!2097 = !DILocation(line: 949, column: 3, scope: !1965)
!2098 = !DILocation(line: 950, column: 1, scope: !1965)
!2099 = distinct !DISubprogram(name: "HAL_RCC_GetSysClockFreq", scope: !780, file: !780, line: 1082, type: !948, scopeLine: 1083, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !2100)
!2100 = !{!2101, !2102, !2104, !2105, !2106, !2107, !2108}
!2101 = !DILocalVariable(name: "aPLLMULFactorTable", scope: !2099, file: !780, line: 1088, type: !452)
!2102 = !DILocalVariable(name: "aPredivFactorTable", scope: !2099, file: !780, line: 1092, type: !2103)
!2103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 16, elements: !429)
!2104 = !DILocalVariable(name: "tmpreg", scope: !2099, file: !780, line: 1096, type: !24)
!2105 = !DILocalVariable(name: "prediv", scope: !2099, file: !780, line: 1096, type: !24)
!2106 = !DILocalVariable(name: "pllclk", scope: !2099, file: !780, line: 1096, type: !24)
!2107 = !DILocalVariable(name: "pllmul", scope: !2099, file: !780, line: 1096, type: !24)
!2108 = !DILocalVariable(name: "sysclockfreq", scope: !2099, file: !780, line: 1097, type: !24)
!2109 = !DILocation(line: 1088, column: 17, scope: !2099)
!2110 = !DILocation(line: 1092, column: 17, scope: !2099)
!2111 = !DILocation(line: 0, scope: !2099)
!2112 = !DILocation(line: 1102, column: 17, scope: !2099)
!2113 = !DILocation(line: 1105, column: 18, scope: !2099)
!2114 = !DILocation(line: 1105, column: 3, scope: !2099)
!2115 = !DILocation(line: 1114, column: 73, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !780, line: 1113, column: 5)
!2117 = distinct !DILexicalBlock(scope: !2099, file: !780, line: 1106, column: 3)
!2118 = !DILocation(line: 1114, column: 16, scope: !2116)
!2119 = !DILocation(line: 1115, column: 19, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2116, file: !780, line: 1115, column: 11)
!2121 = !DILocation(line: 1115, column: 38, scope: !2120)
!2122 = !DILocation(line: 1115, column: 11, scope: !2116)
!2123 = !DILocation(line: 1120, column: 53, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2120, file: !780, line: 1116, column: 7)
!2125 = !DILocation(line: 1120, column: 79, scope: !2124)
!2126 = !DILocation(line: 1120, column: 18, scope: !2124)
!2127 = !DILocation(line: 1146, column: 41, scope: !2124)
!2128 = !DILocation(line: 1146, column: 51, scope: !2124)
!2129 = !DILocation(line: 1148, column: 7, scope: !2124)
!2130 = !DILocation(line: 1152, column: 46, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2120, file: !780, line: 1150, column: 7)
!2132 = !DILocation(line: 0, scope: !2117)
!2133 = !DILocation(line: 1164, column: 3, scope: !2099)
!2134 = distinct !DISubprogram(name: "HAL_RCC_MCOConfig", scope: !780, file: !780, line: 1002, type: !2135, scopeLine: 1003, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !2137)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{null, !24, !24, !24}
!2137 = !{!2138, !2139, !2140, !2141, !2149}
!2138 = !DILocalVariable(name: "RCC_MCOx", arg: 1, scope: !2134, file: !780, line: 1002, type: !24)
!2139 = !DILocalVariable(name: "RCC_MCOSource", arg: 2, scope: !2134, file: !780, line: 1002, type: !24)
!2140 = !DILocalVariable(name: "RCC_MCODiv", arg: 3, scope: !2134, file: !780, line: 1002, type: !24)
!2141 = !DILocalVariable(name: "gpio", scope: !2134, file: !780, line: 1004, type: !2142)
!2142 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPIO_InitTypeDef", file: !891, line: 60, baseType: !2143)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !891, line: 47, size: 128, elements: !2144)
!2144 = !{!2145, !2146, !2147, !2148}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "Pin", scope: !2143, file: !891, line: 49, baseType: !24, size: 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "Mode", scope: !2143, file: !891, line: 52, baseType: !24, size: 32, offset: 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "Pull", scope: !2143, file: !891, line: 55, baseType: !24, size: 32, offset: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "Speed", scope: !2143, file: !891, line: 58, baseType: !24, size: 32, offset: 96)
!2149 = !DILocalVariable(name: "tmpreg", scope: !2150, file: !780, line: 1022, type: !23)
!2150 = distinct !DILexicalBlock(scope: !2134, file: !780, line: 1022, column: 3)
!2151 = !DILocation(line: 0, scope: !2134)
!2152 = !DILocation(line: 1004, column: 3, scope: !2134)
!2153 = !DILocation(line: 1004, column: 20, scope: !2134)
!2154 = !DILocation(line: 1016, column: 8, scope: !2134)
!2155 = !DILocation(line: 1016, column: 18, scope: !2134)
!2156 = !{!2157, !1449, i64 4}
!2157 = !{!"", !1449, i64 0, !1449, i64 4, !1449, i64 8, !1449, i64 12}
!2158 = !DILocation(line: 1017, column: 8, scope: !2134)
!2159 = !DILocation(line: 1017, column: 18, scope: !2134)
!2160 = !{!2157, !1449, i64 12}
!2161 = !DILocation(line: 1018, column: 8, scope: !2134)
!2162 = !DILocation(line: 1018, column: 18, scope: !2134)
!2163 = !{!2157, !1449, i64 8}
!2164 = !DILocation(line: 1019, column: 8, scope: !2134)
!2165 = !DILocation(line: 1019, column: 18, scope: !2134)
!2166 = !{!2157, !1449, i64 0}
!2167 = !DILocation(line: 1022, column: 3, scope: !2150)
!2168 = !{!1448, !1449, i64 24}
!2169 = !DILocation(line: 1022, column: 3, scope: !2134)
!2170 = !DILocation(line: 1024, column: 3, scope: !2134)
!2171 = !DILocation(line: 1027, column: 3, scope: !2134)
!2172 = !DILocation(line: 1028, column: 1, scope: !2134)
!2173 = distinct !DISubprogram(name: "HAL_RCC_EnableCSS", scope: !780, file: !780, line: 1039, type: !4, scopeLine: 1040, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !374)
!2174 = !DILocation(line: 1041, column: 38, scope: !2173)
!2175 = !DILocation(line: 1042, column: 1, scope: !2173)
!2176 = distinct !DISubprogram(name: "HAL_RCC_DisableCSS", scope: !780, file: !780, line: 1048, type: !4, scopeLine: 1049, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !374)
!2177 = !DILocation(line: 1050, column: 38, scope: !2176)
!2178 = !DILocation(line: 1051, column: 1, scope: !2176)
!2179 = distinct !DISubprogram(name: "HAL_RCC_GetHCLKFreq", scope: !780, file: !780, line: 1176, type: !948, scopeLine: 1177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !374)
!2180 = !DILocation(line: 1178, column: 10, scope: !2179)
!2181 = !DILocation(line: 1178, column: 3, scope: !2179)
!2182 = distinct !DISubprogram(name: "HAL_RCC_GetPCLK1Freq", scope: !780, file: !780, line: 1187, type: !948, scopeLine: 1188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !374)
!2183 = !DILocation(line: 1190, column: 11, scope: !2182)
!2184 = !DILocation(line: 1190, column: 56, scope: !2182)
!2185 = !DILocation(line: 1190, column: 79, scope: !2182)
!2186 = !DILocation(line: 1190, column: 36, scope: !2182)
!2187 = !DILocation(line: 1190, column: 33, scope: !2182)
!2188 = !DILocation(line: 1190, column: 3, scope: !2182)
!2189 = distinct !DISubprogram(name: "HAL_RCC_GetPCLK2Freq", scope: !780, file: !780, line: 1199, type: !948, scopeLine: 1200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !374)
!2190 = !DILocation(line: 1202, column: 11, scope: !2189)
!2191 = !DILocation(line: 1202, column: 56, scope: !2189)
!2192 = !DILocation(line: 1202, column: 79, scope: !2189)
!2193 = !DILocation(line: 1202, column: 36, scope: !2189)
!2194 = !DILocation(line: 1202, column: 33, scope: !2189)
!2195 = !DILocation(line: 1202, column: 3, scope: !2189)
!2196 = distinct !DISubprogram(name: "HAL_RCC_GetOscConfig", scope: !780, file: !780, line: 1212, type: !2197, scopeLine: 1213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !2199)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{null, !1579}
!2199 = !{!2200}
!2200 = !DILocalVariable(name: "RCC_OscInitStruct", arg: 1, scope: !2196, file: !780, line: 1212, type: !1579)
!2201 = !DILocation(line: 0, scope: !2196)
!2202 = !DILocation(line: 1218, column: 22, scope: !2196)
!2203 = !DILocation(line: 1218, column: 37, scope: !2196)
!2204 = !DILocation(line: 1227, column: 13, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2196, file: !780, line: 1227, column: 7)
!2206 = !DILocation(line: 1227, column: 16, scope: !2205)
!2207 = !DILocation(line: 1227, column: 33, scope: !2205)
!2208 = !DILocation(line: 1227, column: 7, scope: !2196)
!2209 = !DILocation(line: 1229, column: 24, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2205, file: !780, line: 1228, column: 3)
!2211 = !DILocation(line: 1229, column: 33, scope: !2210)
!2212 = !DILocation(line: 1230, column: 3, scope: !2210)
!2213 = !DILocation(line: 1231, column: 18, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2205, file: !780, line: 1231, column: 12)
!2215 = !DILocation(line: 1231, column: 21, scope: !2214)
!2216 = !DILocation(line: 1231, column: 37, scope: !2214)
!2217 = !DILocation(line: 0, scope: !2214)
!2218 = !DILocation(line: 1231, column: 12, scope: !2205)
!2219 = !DILocation(line: 1233, column: 33, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2214, file: !780, line: 1232, column: 3)
!2221 = !DILocation(line: 1234, column: 3, scope: !2220)
!2222 = !DILocation(line: 1237, column: 33, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2214, file: !780, line: 1236, column: 3)
!2224 = !DILocation(line: 1239, column: 39, scope: !2196)
!2225 = !DILocation(line: 1239, column: 22, scope: !2196)
!2226 = !DILocation(line: 1239, column: 37, scope: !2196)
!2227 = !DILocation(line: 1242, column: 13, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2196, file: !780, line: 1242, column: 7)
!2229 = !DILocation(line: 1242, column: 16, scope: !2228)
!2230 = !DILocation(line: 0, scope: !2228)
!2231 = !DILocation(line: 1251, column: 61, scope: !2196)
!2232 = !DILocation(line: 1251, column: 82, scope: !2196)
!2233 = !DILocation(line: 1251, column: 22, scope: !2196)
!2234 = !DILocation(line: 1251, column: 42, scope: !2196)
!2235 = !DILocation(line: 1254, column: 13, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2196, file: !780, line: 1254, column: 7)
!2237 = !DILocation(line: 1254, column: 18, scope: !2236)
!2238 = !DILocation(line: 1254, column: 37, scope: !2236)
!2239 = !DILocation(line: 1254, column: 7, scope: !2196)
!2240 = !DILocation(line: 1256, column: 24, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2236, file: !780, line: 1255, column: 3)
!2242 = !DILocation(line: 1256, column: 33, scope: !2241)
!2243 = !DILocation(line: 1257, column: 3, scope: !2241)
!2244 = !DILocation(line: 1258, column: 18, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2236, file: !780, line: 1258, column: 12)
!2246 = !DILocation(line: 1258, column: 23, scope: !2245)
!2247 = !DILocation(line: 1258, column: 41, scope: !2245)
!2248 = !DILocation(line: 0, scope: !2245)
!2249 = !DILocation(line: 1258, column: 12, scope: !2236)
!2250 = !DILocation(line: 1260, column: 33, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2245, file: !780, line: 1259, column: 3)
!2252 = !DILocation(line: 1261, column: 3, scope: !2251)
!2253 = !DILocation(line: 1264, column: 33, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2245, file: !780, line: 1263, column: 3)
!2255 = !DILocation(line: 1268, column: 13, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2196, file: !780, line: 1268, column: 7)
!2257 = !DILocation(line: 1268, column: 17, scope: !2256)
!2258 = !DILocation(line: 0, scope: !2256)
!2259 = !DILocation(line: 1279, column: 13, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2196, file: !780, line: 1279, column: 7)
!2261 = !DILocation(line: 1279, column: 16, scope: !2260)
!2262 = !DILocation(line: 1279, column: 32, scope: !2260)
!2263 = !DILocation(line: 1279, column: 7, scope: !2196)
!2264 = !DILocation(line: 0, scope: !2260)
!2265 = !DILocation(line: 1287, column: 54, scope: !2196)
!2266 = !DILocation(line: 1287, column: 59, scope: !2196)
!2267 = !DILocation(line: 1287, column: 26, scope: !2196)
!2268 = !DILocation(line: 1287, column: 36, scope: !2196)
!2269 = !DILocation(line: 1288, column: 51, scope: !2196)
!2270 = !DILocation(line: 1288, column: 56, scope: !2196)
!2271 = !DILocation(line: 1288, column: 26, scope: !2196)
!2272 = !DILocation(line: 1288, column: 33, scope: !2196)
!2273 = !DILocation(line: 1302, column: 1, scope: !2196)
!2274 = distinct !DISubprogram(name: "HAL_RCC_GetClockConfig", scope: !780, file: !780, line: 1312, type: !2275, scopeLine: 1313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !2277)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{null, !1968, !569}
!2277 = !{!2278, !2279}
!2278 = !DILocalVariable(name: "RCC_ClkInitStruct", arg: 1, scope: !2274, file: !780, line: 1312, type: !1968)
!2279 = !DILocalVariable(name: "pFLatency", arg: 2, scope: !2274, file: !780, line: 1312, type: !569)
!2280 = !DILocation(line: 0, scope: !2274)
!2281 = !DILocation(line: 1319, column: 22, scope: !2274)
!2282 = !DILocation(line: 1319, column: 32, scope: !2274)
!2283 = !DILocation(line: 1322, column: 53, scope: !2274)
!2284 = !DILocation(line: 1322, column: 58, scope: !2274)
!2285 = !DILocation(line: 1322, column: 22, scope: !2274)
!2286 = !DILocation(line: 1322, column: 35, scope: !2274)
!2287 = !DILocation(line: 1325, column: 54, scope: !2274)
!2288 = !DILocation(line: 1325, column: 59, scope: !2274)
!2289 = !DILocation(line: 1325, column: 22, scope: !2274)
!2290 = !DILocation(line: 1325, column: 36, scope: !2274)
!2291 = !DILocation(line: 1328, column: 55, scope: !2274)
!2292 = !DILocation(line: 1328, column: 60, scope: !2274)
!2293 = !DILocation(line: 1328, column: 22, scope: !2274)
!2294 = !DILocation(line: 1328, column: 37, scope: !2274)
!2295 = !DILocation(line: 1331, column: 56, scope: !2274)
!2296 = !DILocation(line: 1331, column: 79, scope: !2274)
!2297 = !DILocation(line: 1331, column: 22, scope: !2274)
!2298 = !DILocation(line: 1331, column: 37, scope: !2274)
!2299 = !DILocation(line: 1335, column: 34, scope: !2274)
!2300 = !DILocation(line: 1335, column: 38, scope: !2274)
!2301 = !DILocation(line: 1335, column: 14, scope: !2274)
!2302 = !DILocation(line: 1340, column: 1, scope: !2274)
!2303 = distinct !DISubprogram(name: "HAL_RCC_NMI_IRQHandler", scope: !780, file: !780, line: 1347, type: !4, scopeLine: 1348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !374)
!2304 = !DILocation(line: 1350, column: 7, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2303, file: !780, line: 1350, column: 7)
!2306 = !DILocation(line: 1350, column: 7, scope: !2303)
!2307 = !DILocation(line: 1353, column: 5, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2305, file: !780, line: 1351, column: 3)
!2309 = !DILocation(line: 1356, column: 5, scope: !2308)
!2310 = !DILocation(line: 1357, column: 3, scope: !2308)
!2311 = !DILocation(line: 1358, column: 1, scope: !2303)
!2312 = distinct !DISubprogram(name: "HAL_RCC_CSSCallback", scope: !780, file: !780, line: 1379, type: !4, scopeLine: 1380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !374)
!2313 = !DILocation(line: 1384, column: 1, scope: !2312)
!2314 = distinct !DISubprogram(name: "HAL_Init", scope: !458, file: !458, line: 142, type: !1504, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !457, retainedNodes: !374)
!2315 = !DILocation(line: 152, column: 3, scope: !2314)
!2316 = !DILocation(line: 157, column: 3, scope: !2314)
!2317 = !DILocation(line: 160, column: 3, scope: !2314)
!2318 = !DILocation(line: 163, column: 3, scope: !2314)
!2319 = !DILocation(line: 166, column: 3, scope: !2314)
!2320 = distinct !DISubprogram(name: "HAL_InitTick", scope: !458, file: !458, line: 234, type: !2321, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !457, retainedNodes: !2323)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!1506, !24}
!2323 = !{!2324}
!2324 = !DILocalVariable(name: "TickPriority", arg: 1, scope: !2320, file: !458, line: 234, type: !24)
!2325 = !DILocation(line: 0, scope: !2320)
!2326 = !DILocation(line: 237, column: 26, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2320, file: !458, line: 237, column: 7)
!2328 = !DILocation(line: 237, column: 53, scope: !2327)
!2329 = !DILocation(line: 237, column: 51, scope: !2327)
!2330 = !DILocation(line: 237, column: 42, scope: !2327)
!2331 = !DILocation(line: 237, column: 7, scope: !2327)
!2332 = !DILocation(line: 237, column: 66, scope: !2327)
!2333 = !DILocation(line: 237, column: 7, scope: !2320)
!2334 = !DILocation(line: 245, column: 5, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2336, file: !458, line: 244, column: 3)
!2336 = distinct !DILexicalBlock(scope: !2320, file: !458, line: 243, column: 7)
!2337 = !DILocation(line: 246, column: 16, scope: !2335)
!2338 = !DILocation(line: 254, column: 3, scope: !2320)
!2339 = !DILocation(line: 255, column: 1, scope: !2320)
!2340 = distinct !DISubprogram(name: "HAL_MspInit", scope: !458, file: !458, line: 200, type: !4, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !457, retainedNodes: !374)
!2341 = !DILocation(line: 205, column: 1, scope: !2340)
!2342 = distinct !DISubprogram(name: "HAL_DeInit", scope: !458, file: !458, line: 175, type: !1504, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !457, retainedNodes: !374)
!2343 = !DILocation(line: 178, column: 3, scope: !2342)
!2344 = !{!1448, !1449, i64 12}
!2345 = !DILocation(line: 179, column: 3, scope: !2342)
!2346 = !{!1448, !1449, i64 16}
!2347 = !DILocation(line: 181, column: 3, scope: !2342)
!2348 = !DILocation(line: 182, column: 3, scope: !2342)
!2349 = !DILocation(line: 190, column: 3, scope: !2342)
!2350 = !DILocation(line: 193, column: 3, scope: !2342)
!2351 = distinct !DISubprogram(name: "HAL_MspDeInit", scope: !458, file: !458, line: 211, type: !4, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !457, retainedNodes: !374)
!2352 = !DILocation(line: 216, column: 1, scope: !2351)
!2353 = distinct !DISubprogram(name: "HAL_IncTick", scope: !458, file: !458, line: 293, type: !4, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !457, retainedNodes: !374)
!2354 = !DILocation(line: 295, column: 13, scope: !2353)
!2355 = !DILocation(line: 295, column: 10, scope: !2353)
!2356 = !DILocation(line: 296, column: 1, scope: !2353)
!2357 = distinct !DISubprogram(name: "HAL_GetTick", scope: !458, file: !458, line: 304, type: !948, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !457, retainedNodes: !374)
!2358 = !DILocation(line: 306, column: 10, scope: !2357)
!2359 = !DILocation(line: 306, column: 3, scope: !2357)
!2360 = distinct !DISubprogram(name: "HAL_GetTickPrio", scope: !458, file: !458, line: 313, type: !948, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !457, retainedNodes: !374)
!2361 = !DILocation(line: 315, column: 10, scope: !2360)
!2362 = !DILocation(line: 315, column: 3, scope: !2360)
!2363 = distinct !DISubprogram(name: "HAL_SetTickFreq", scope: !458, file: !458, line: 322, type: !2364, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !457, retainedNodes: !2366)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!1506, !573}
!2366 = !{!2367, !2368}
!2367 = !DILocalVariable(name: "Freq", arg: 1, scope: !2363, file: !458, line: 322, type: !573)
!2368 = !DILocalVariable(name: "status", scope: !2363, file: !458, line: 324, type: !1506)
!2369 = !DILocation(line: 0, scope: !2363)
!2370 = !DILocation(line: 327, column: 7, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2363, file: !458, line: 327, column: 7)
!2372 = !DILocation(line: 327, column: 18, scope: !2371)
!2373 = !DILocation(line: 327, column: 7, scope: !2363)
!2374 = !DILocation(line: 330, column: 27, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2371, file: !458, line: 328, column: 3)
!2376 = !DILocation(line: 330, column: 14, scope: !2375)
!2377 = !DILocation(line: 331, column: 16, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2375, file: !458, line: 331, column: 9)
!2379 = !DILocation(line: 331, column: 9, scope: !2375)
!2380 = !DILocation(line: 333, column: 18, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2378, file: !458, line: 332, column: 5)
!2382 = !DILocation(line: 334, column: 5, scope: !2381)
!2383 = !DILocation(line: 337, column: 3, scope: !2363)
!2384 = distinct !DISubprogram(name: "HAL_GetTickFreq", scope: !458, file: !458, line: 344, type: !2385, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !457, retainedNodes: !374)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!573}
!2387 = !DILocation(line: 346, column: 10, scope: !2384)
!2388 = !DILocation(line: 346, column: 3, scope: !2384)
!2389 = distinct !DISubprogram(name: "HAL_Delay", scope: !458, file: !458, line: 360, type: !1946, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !457, retainedNodes: !2390)
!2390 = !{!2391, !2392, !2393}
!2391 = !DILocalVariable(name: "Delay", arg: 1, scope: !2389, file: !458, line: 360, type: !24)
!2392 = !DILocalVariable(name: "tickstart", scope: !2389, file: !458, line: 362, type: !24)
!2393 = !DILocalVariable(name: "wait", scope: !2389, file: !458, line: 363, type: !24)
!2394 = !DILocation(line: 0, scope: !2389)
!2395 = !DILocation(line: 362, column: 24, scope: !2389)
!2396 = !DILocation(line: 366, column: 12, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2389, file: !458, line: 366, column: 7)
!2398 = !DILocation(line: 366, column: 7, scope: !2389)
!2399 = !DILocation(line: 371, column: 3, scope: !2389)
!2400 = !DILocation(line: 371, column: 11, scope: !2389)
!2401 = !DILocation(line: 371, column: 25, scope: !2389)
!2402 = !DILocation(line: 371, column: 38, scope: !2389)
!2403 = distinct !{!2403, !2399, !2404, !1417, !1418}
!2404 = !DILocation(line: 373, column: 3, scope: !2389)
!2405 = !DILocation(line: 374, column: 1, scope: !2389)
!2406 = distinct !DISubprogram(name: "HAL_SuspendTick", scope: !458, file: !458, line: 386, type: !4, scopeLine: 387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !457, retainedNodes: !374)
!2407 = !DILocation(line: 389, column: 3, scope: !2406)
!2408 = !DILocation(line: 390, column: 1, scope: !2406)
!2409 = distinct !DISubprogram(name: "HAL_ResumeTick", scope: !458, file: !458, line: 402, type: !4, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !457, retainedNodes: !374)
!2410 = !DILocation(line: 405, column: 3, scope: !2409)
!2411 = !DILocation(line: 406, column: 1, scope: !2409)
!2412 = distinct !DISubprogram(name: "HAL_GetHalVersion", scope: !458, file: !458, line: 412, type: !948, scopeLine: 413, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !457, retainedNodes: !374)
!2413 = !DILocation(line: 414, column: 3, scope: !2412)
!2414 = distinct !DISubprogram(name: "HAL_GetREVID", scope: !458, file: !458, line: 428, type: !948, scopeLine: 429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !457, retainedNodes: !374)
!2415 = !DILocation(line: 430, column: 20, scope: !2414)
!2416 = !DILocation(line: 430, column: 28, scope: !2414)
!2417 = !DILocation(line: 430, column: 3, scope: !2414)
!2418 = distinct !DISubprogram(name: "HAL_GetDEVID", scope: !458, file: !458, line: 444, type: !948, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !457, retainedNodes: !374)
!2419 = !DILocation(line: 446, column: 20, scope: !2418)
!2420 = !DILocation(line: 446, column: 28, scope: !2418)
!2421 = !DILocation(line: 446, column: 3, scope: !2418)
!2422 = distinct !DISubprogram(name: "HAL_GetUIDw0", scope: !458, file: !458, line: 453, type: !948, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !457, retainedNodes: !374)
!2423 = !DILocation(line: 455, column: 11, scope: !2422)
!2424 = !DILocation(line: 455, column: 4, scope: !2422)
!2425 = distinct !DISubprogram(name: "HAL_GetUIDw1", scope: !458, file: !458, line: 462, type: !948, scopeLine: 463, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !457, retainedNodes: !374)
!2426 = !DILocation(line: 464, column: 11, scope: !2425)
!2427 = !DILocation(line: 464, column: 4, scope: !2425)
!2428 = distinct !DISubprogram(name: "HAL_GetUIDw2", scope: !458, file: !458, line: 471, type: !948, scopeLine: 472, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !457, retainedNodes: !374)
!2429 = !DILocation(line: 473, column: 11, scope: !2428)
!2430 = !DILocation(line: 473, column: 4, scope: !2428)
!2431 = distinct !DISubprogram(name: "HAL_DBGMCU_EnableDBGSleepMode", scope: !458, file: !458, line: 480, type: !4, scopeLine: 481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !457, retainedNodes: !374)
!2432 = !DILocation(line: 482, column: 3, scope: !2431)
!2433 = !{!1800, !1449, i64 4}
!2434 = !DILocation(line: 483, column: 1, scope: !2431)
!2435 = distinct !DISubprogram(name: "HAL_DBGMCU_DisableDBGSleepMode", scope: !458, file: !458, line: 496, type: !4, scopeLine: 497, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !457, retainedNodes: !374)
!2436 = !DILocation(line: 498, column: 3, scope: !2435)
!2437 = !DILocation(line: 499, column: 1, scope: !2435)
!2438 = distinct !DISubprogram(name: "HAL_DBGMCU_EnableDBGStopMode", scope: !458, file: !458, line: 526, type: !4, scopeLine: 527, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !457, retainedNodes: !374)
!2439 = !DILocation(line: 528, column: 3, scope: !2438)
!2440 = !DILocation(line: 529, column: 1, scope: !2438)
!2441 = distinct !DISubprogram(name: "HAL_DBGMCU_DisableDBGStopMode", scope: !458, file: !458, line: 542, type: !4, scopeLine: 543, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !457, retainedNodes: !374)
!2442 = !DILocation(line: 544, column: 3, scope: !2441)
!2443 = !DILocation(line: 545, column: 1, scope: !2441)
!2444 = distinct !DISubprogram(name: "HAL_DBGMCU_EnableDBGStandbyMode", scope: !458, file: !458, line: 558, type: !4, scopeLine: 559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !457, retainedNodes: !374)
!2445 = !DILocation(line: 560, column: 3, scope: !2444)
!2446 = !DILocation(line: 561, column: 1, scope: !2444)
!2447 = distinct !DISubprogram(name: "HAL_DBGMCU_DisableDBGStandbyMode", scope: !458, file: !458, line: 574, type: !4, scopeLine: 575, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !457, retainedNodes: !374)
!2448 = !DILocation(line: 576, column: 3, scope: !2447)
!2449 = !DILocation(line: 577, column: 1, scope: !2447)
!2450 = distinct !DISubprogram(name: "HAL_NVIC_SetPriorityGrouping", scope: !834, file: !834, line: 143, type: !1946, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !2451)
!2451 = !{!2452}
!2452 = !DILocalVariable(name: "PriorityGroup", arg: 1, scope: !2450, file: !834, line: 143, type: !24)
!2453 = !DILocation(line: 0, scope: !2450)
!2454 = !DILocation(line: 149, column: 3, scope: !2450)
!2455 = !DILocation(line: 150, column: 1, scope: !2450)
!2456 = distinct !DISubprogram(name: "__NVIC_SetPriorityGrouping", scope: !405, file: !405, line: 1480, type: !1946, scopeLine: 1481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !2457)
!2457 = !{!2458, !2459, !2460}
!2458 = !DILocalVariable(name: "PriorityGroup", arg: 1, scope: !2456, file: !405, line: 1480, type: !24)
!2459 = !DILocalVariable(name: "reg_value", scope: !2456, file: !405, line: 1482, type: !24)
!2460 = !DILocalVariable(name: "PriorityGroupTmp", scope: !2456, file: !405, line: 1483, type: !24)
!2461 = !DILocation(line: 0, scope: !2456)
!2462 = !DILocation(line: 1485, column: 22, scope: !2456)
!2463 = !{!1461, !1449, i64 12}
!2464 = !DILocation(line: 1486, column: 13, scope: !2456)
!2465 = !DILocation(line: 1489, column: 35, scope: !2456)
!2466 = !DILocation(line: 1488, column: 62, scope: !2456)
!2467 = !DILocation(line: 1490, column: 14, scope: !2456)
!2468 = !DILocation(line: 1491, column: 1, scope: !2456)
!2469 = distinct !DISubprogram(name: "HAL_NVIC_SetPriority", scope: !834, file: !834, line: 165, type: !2470, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !2473)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{null, !2472, !24, !24}
!2472 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRQn_Type", file: !19, line: 126, baseType: !473)
!2473 = !{!2474, !2475, !2476, !2477}
!2474 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2469, file: !834, line: 165, type: !2472)
!2475 = !DILocalVariable(name: "PreemptPriority", arg: 2, scope: !2469, file: !834, line: 165, type: !24)
!2476 = !DILocalVariable(name: "SubPriority", arg: 3, scope: !2469, file: !834, line: 165, type: !24)
!2477 = !DILocalVariable(name: "prioritygroup", scope: !2469, file: !834, line: 167, type: !24)
!2478 = !DILocation(line: 0, scope: !2469)
!2479 = !DILocation(line: 173, column: 19, scope: !2469)
!2480 = !{i32 0, i32 8}
!2481 = !DILocation(line: 175, column: 26, scope: !2469)
!2482 = !DILocation(line: 175, column: 3, scope: !2469)
!2483 = !DILocation(line: 176, column: 1, scope: !2469)
!2484 = distinct !DISubprogram(name: "__NVIC_GetPriorityGrouping", scope: !405, file: !405, line: 1499, type: !948, scopeLine: 1500, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !374)
!2485 = !DILocation(line: 1501, column: 28, scope: !2484)
!2486 = !DILocation(line: 1501, column: 60, scope: !2484)
!2487 = !DILocation(line: 1501, column: 3, scope: !2484)
!2488 = distinct !DISubprogram(name: "NVIC_EncodePriority", scope: !405, file: !405, line: 1686, type: !2489, scopeLine: 1687, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !2491)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!24, !24, !24, !24}
!2491 = !{!2492, !2493, !2494, !2495, !2496, !2497}
!2492 = !DILocalVariable(name: "PriorityGroup", arg: 1, scope: !2488, file: !405, line: 1686, type: !24)
!2493 = !DILocalVariable(name: "PreemptPriority", arg: 2, scope: !2488, file: !405, line: 1686, type: !24)
!2494 = !DILocalVariable(name: "SubPriority", arg: 3, scope: !2488, file: !405, line: 1686, type: !24)
!2495 = !DILocalVariable(name: "PriorityGroupTmp", scope: !2488, file: !405, line: 1688, type: !24)
!2496 = !DILocalVariable(name: "PreemptPriorityBits", scope: !2488, file: !405, line: 1689, type: !24)
!2497 = !DILocalVariable(name: "SubPriorityBits", scope: !2488, file: !405, line: 1690, type: !24)
!2498 = !DILocation(line: 0, scope: !2488)
!2499 = !DILocation(line: 1688, column: 46, scope: !2488)
!2500 = !DILocation(line: 1692, column: 31, scope: !2488)
!2501 = !DILocation(line: 1692, column: 25, scope: !2488)
!2502 = !DILocation(line: 1693, column: 25, scope: !2488)
!2503 = !DILocation(line: 1696, column: 74, scope: !2488)
!2504 = !DILocation(line: 1696, column: 30, scope: !2488)
!2505 = !DILocation(line: 1696, column: 82, scope: !2488)
!2506 = !DILocation(line: 1697, column: 74, scope: !2488)
!2507 = !DILocation(line: 1697, column: 30, scope: !2488)
!2508 = !DILocation(line: 1696, column: 102, scope: !2488)
!2509 = !DILocation(line: 1695, column: 3, scope: !2488)
!2510 = distinct !DISubprogram(name: "__NVIC_SetPriority", scope: !405, file: !405, line: 1639, type: !2511, scopeLine: 1640, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !2513)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{null, !2472, !24}
!2513 = !{!2514, !2515}
!2514 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2510, file: !405, line: 1639, type: !2472)
!2515 = !DILocalVariable(name: "priority", arg: 2, scope: !2510, file: !405, line: 1639, type: !24)
!2516 = !DILocation(line: 0, scope: !2510)
!2517 = !DILocation(line: 0, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2510, file: !405, line: 1641, column: 7)
!2519 = !DILocation(line: 1641, column: 7, scope: !2510)
!2520 = !DILocation(line: 1649, column: 1, scope: !2510)
!2521 = distinct !DISubprogram(name: "HAL_NVIC_EnableIRQ", scope: !834, file: !834, line: 187, type: !2522, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !2524)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{null, !2472}
!2524 = !{!2525}
!2525 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2521, file: !834, line: 187, type: !2472)
!2526 = !DILocation(line: 0, scope: !2521)
!2527 = !DILocation(line: 193, column: 3, scope: !2521)
!2528 = !DILocation(line: 194, column: 1, scope: !2521)
!2529 = distinct !DISubprogram(name: "__NVIC_EnableIRQ", scope: !405, file: !405, line: 1511, type: !2522, scopeLine: 1512, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !2530)
!2530 = !{!2531}
!2531 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2529, file: !405, line: 1511, type: !2472)
!2532 = !DILocation(line: 0, scope: !2529)
!2533 = !DILocation(line: 1513, column: 23, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2529, file: !405, line: 1513, column: 7)
!2535 = !DILocation(line: 1513, column: 7, scope: !2529)
!2536 = !DILocation(line: 1515, column: 81, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2534, file: !405, line: 1514, column: 3)
!2538 = !DILocation(line: 1515, column: 60, scope: !2537)
!2539 = !DILocation(line: 1515, column: 34, scope: !2537)
!2540 = !DILocation(line: 1515, column: 5, scope: !2537)
!2541 = !DILocation(line: 1515, column: 43, scope: !2537)
!2542 = !DILocation(line: 1516, column: 3, scope: !2537)
!2543 = !DILocation(line: 1517, column: 1, scope: !2529)
!2544 = distinct !DISubprogram(name: "HAL_NVIC_DisableIRQ", scope: !834, file: !834, line: 203, type: !2522, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !2545)
!2545 = !{!2546}
!2546 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2544, file: !834, line: 203, type: !2472)
!2547 = !DILocation(line: 0, scope: !2544)
!2548 = !DILocation(line: 209, column: 3, scope: !2544)
!2549 = !DILocation(line: 210, column: 1, scope: !2544)
!2550 = distinct !DISubprogram(name: "__NVIC_DisableIRQ", scope: !405, file: !405, line: 1547, type: !2522, scopeLine: 1548, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !2551)
!2551 = !{!2552}
!2552 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2550, file: !405, line: 1547, type: !2472)
!2553 = !DILocation(line: 0, scope: !2550)
!2554 = !DILocation(line: 1549, column: 23, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2550, file: !405, line: 1549, column: 7)
!2556 = !DILocation(line: 1549, column: 7, scope: !2550)
!2557 = !DILocation(line: 1551, column: 81, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2555, file: !405, line: 1550, column: 3)
!2559 = !DILocation(line: 1551, column: 60, scope: !2558)
!2560 = !DILocation(line: 1551, column: 34, scope: !2558)
!2561 = !DILocation(line: 1551, column: 5, scope: !2558)
!2562 = !DILocation(line: 1551, column: 43, scope: !2558)
!2563 = !DILocation(line: 879, column: 3, scope: !2564, inlinedAt: !2566)
!2564 = distinct !DISubprogram(name: "__DSB", scope: !2565, file: !2565, line: 877, type: !4, scopeLine: 878, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !374)
!2565 = !DIFile(filename: "../dep/STM32Cube_FW_F1_V1.8.0/Drivers/CMSIS/Include/cmsis_gcc.h", directory: "/home/mjshen/RTOSExploration/Cicada-FW/build", checksumkind: CSK_MD5, checksum: "ba7e4770884341336138fcec9d34fc09")
!2566 = distinct !DILocation(line: 1552, column: 5, scope: !2558)
!2567 = !{i64 1222529}
!2568 = !DILocation(line: 868, column: 3, scope: !2569, inlinedAt: !2570)
!2569 = distinct !DISubprogram(name: "__ISB", scope: !2565, file: !2565, line: 866, type: !4, scopeLine: 867, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !374)
!2570 = distinct !DILocation(line: 1553, column: 5, scope: !2558)
!2571 = !{i64 1222235}
!2572 = !DILocation(line: 1554, column: 3, scope: !2558)
!2573 = !DILocation(line: 1555, column: 1, scope: !2550)
!2574 = distinct !DISubprogram(name: "HAL_NVIC_SystemReset", scope: !834, file: !834, line: 216, type: !4, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !374)
!2575 = !DILocation(line: 219, column: 3, scope: !2574)
!2576 = distinct !DISubprogram(name: "__NVIC_SystemReset", scope: !405, file: !405, line: 1762, type: !4, scopeLine: 1763, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !374)
!2577 = !DILocation(line: 879, column: 3, scope: !2564, inlinedAt: !2578)
!2578 = distinct !DILocation(line: 1764, column: 3, scope: !2576)
!2579 = !DILocation(line: 1767, column: 34, scope: !2576)
!2580 = !DILocation(line: 1767, column: 40, scope: !2576)
!2581 = !DILocation(line: 1767, column: 66, scope: !2576)
!2582 = !DILocation(line: 1766, column: 15, scope: !2576)
!2583 = !DILocation(line: 879, column: 3, scope: !2564, inlinedAt: !2584)
!2584 = distinct !DILocation(line: 1769, column: 3, scope: !2576)
!2585 = !DILocation(line: 1771, column: 3, scope: !2576)
!2586 = !DILocation(line: 1773, column: 5, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !405, line: 1772, column: 3)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !405, line: 1771, column: 3)
!2589 = distinct !DILexicalBlock(scope: !2576, file: !405, line: 1771, column: 3)
!2590 = !{i64 2148746398}
!2591 = !DILocation(line: 1771, column: 3, scope: !2588)
!2592 = distinct !{!2592, !2593, !2594, !1418}
!2593 = !DILocation(line: 1771, column: 3, scope: !2589)
!2594 = !DILocation(line: 1774, column: 3, scope: !2589)
!2595 = distinct !DISubprogram(name: "HAL_SYSTICK_Config", scope: !834, file: !834, line: 229, type: !2596, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !2598)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{!24, !24}
!2598 = !{!2599}
!2599 = !DILocalVariable(name: "TicksNumb", arg: 1, scope: !2595, file: !834, line: 229, type: !24)
!2600 = !DILocation(line: 0, scope: !2595)
!2601 = !DILocation(line: 231, column: 11, scope: !2595)
!2602 = !DILocation(line: 231, column: 4, scope: !2595)
!2603 = distinct !DISubprogram(name: "SysTick_Config", scope: !405, file: !405, line: 1834, type: !2596, scopeLine: 1835, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !2604)
!2604 = !{!2605}
!2605 = !DILocalVariable(name: "ticks", arg: 1, scope: !2603, file: !405, line: 1834, type: !24)
!2606 = !DILocation(line: 0, scope: !2603)
!2607 = !DILocation(line: 1836, column: 14, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2603, file: !405, line: 1836, column: 7)
!2609 = !DILocation(line: 1836, column: 21, scope: !2608)
!2610 = !DILocation(line: 1836, column: 7, scope: !2603)
!2611 = !DILocation(line: 1841, column: 18, scope: !2603)
!2612 = !DILocation(line: 1842, column: 3, scope: !2603)
!2613 = !DILocation(line: 1843, column: 18, scope: !2603)
!2614 = !DILocation(line: 1844, column: 18, scope: !2603)
!2615 = !DILocation(line: 1847, column: 3, scope: !2603)
!2616 = !DILocation(line: 1848, column: 1, scope: !2603)
!2617 = distinct !DISubprogram(name: "HAL_NVIC_GetPriorityGrouping", scope: !834, file: !834, line: 344, type: !948, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !374)
!2618 = !DILocation(line: 347, column: 10, scope: !2617)
!2619 = !DILocation(line: 347, column: 3, scope: !2617)
!2620 = distinct !DISubprogram(name: "HAL_NVIC_GetPriority", scope: !834, file: !834, line: 371, type: !2621, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !2623)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{null, !2472, !24, !569, !569}
!2623 = !{!2624, !2625, !2626, !2627}
!2624 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2620, file: !834, line: 371, type: !2472)
!2625 = !DILocalVariable(name: "PriorityGroup", arg: 2, scope: !2620, file: !834, line: 371, type: !24)
!2626 = !DILocalVariable(name: "pPreemptPriority", arg: 3, scope: !2620, file: !834, line: 371, type: !569)
!2627 = !DILocalVariable(name: "pSubPriority", arg: 4, scope: !2620, file: !834, line: 371, type: !569)
!2628 = !DILocation(line: 0, scope: !2620)
!2629 = !DILocation(line: 376, column: 23, scope: !2620)
!2630 = !{i32 0, i32 16}
!2631 = !DILocation(line: 376, column: 3, scope: !2620)
!2632 = !DILocation(line: 377, column: 1, scope: !2620)
!2633 = distinct !DISubprogram(name: "__NVIC_GetPriority", scope: !405, file: !405, line: 1661, type: !2634, scopeLine: 1662, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !2636)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{!24, !2472}
!2636 = !{!2637}
!2637 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2633, file: !405, line: 1661, type: !2472)
!2638 = !DILocation(line: 0, scope: !2633)
!2639 = !DILocation(line: 1664, column: 7, scope: !2633)
!2640 = !DILocation(line: 0, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2633, file: !405, line: 1664, column: 7)
!2642 = !DILocation(line: 1672, column: 1, scope: !2633)
!2643 = distinct !DISubprogram(name: "NVIC_DecodePriority", scope: !405, file: !405, line: 1713, type: !2644, scopeLine: 1714, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !2647)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{null, !24, !24, !2646, !2646}
!2646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !569)
!2647 = !{!2648, !2649, !2650, !2651, !2652, !2653, !2654}
!2648 = !DILocalVariable(name: "Priority", arg: 1, scope: !2643, file: !405, line: 1713, type: !24)
!2649 = !DILocalVariable(name: "PriorityGroup", arg: 2, scope: !2643, file: !405, line: 1713, type: !24)
!2650 = !DILocalVariable(name: "pPreemptPriority", arg: 3, scope: !2643, file: !405, line: 1713, type: !2646)
!2651 = !DILocalVariable(name: "pSubPriority", arg: 4, scope: !2643, file: !405, line: 1713, type: !2646)
!2652 = !DILocalVariable(name: "PriorityGroupTmp", scope: !2643, file: !405, line: 1715, type: !24)
!2653 = !DILocalVariable(name: "PreemptPriorityBits", scope: !2643, file: !405, line: 1716, type: !24)
!2654 = !DILocalVariable(name: "SubPriorityBits", scope: !2643, file: !405, line: 1717, type: !24)
!2655 = !DILocation(line: 0, scope: !2643)
!2656 = !DILocation(line: 1715, column: 46, scope: !2643)
!2657 = !DILocation(line: 1719, column: 31, scope: !2643)
!2658 = !DILocation(line: 1719, column: 25, scope: !2643)
!2659 = !DILocation(line: 1720, column: 25, scope: !2643)
!2660 = !DILocation(line: 1722, column: 33, scope: !2643)
!2661 = !DILocation(line: 1722, column: 97, scope: !2643)
!2662 = !DILocation(line: 1722, column: 53, scope: !2643)
!2663 = !DILocation(line: 1722, column: 21, scope: !2643)
!2664 = !DILocation(line: 1723, column: 97, scope: !2643)
!2665 = !DILocation(line: 1723, column: 53, scope: !2643)
!2666 = !DILocation(line: 1723, column: 21, scope: !2643)
!2667 = !DILocation(line: 1724, column: 1, scope: !2643)
!2668 = distinct !DISubprogram(name: "HAL_NVIC_SetPendingIRQ", scope: !834, file: !834, line: 386, type: !2522, scopeLine: 387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !2669)
!2669 = !{!2670}
!2670 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2668, file: !834, line: 386, type: !2472)
!2671 = !DILocation(line: 0, scope: !2668)
!2672 = !DILocation(line: 392, column: 3, scope: !2668)
!2673 = !DILocation(line: 393, column: 1, scope: !2668)
!2674 = distinct !DISubprogram(name: "__NVIC_SetPendingIRQ", scope: !405, file: !405, line: 1585, type: !2522, scopeLine: 1586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !2675)
!2675 = !{!2676}
!2676 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2674, file: !405, line: 1585, type: !2472)
!2677 = !DILocation(line: 0, scope: !2674)
!2678 = !DILocation(line: 1587, column: 23, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2674, file: !405, line: 1587, column: 7)
!2680 = !DILocation(line: 1587, column: 7, scope: !2674)
!2681 = !DILocation(line: 1589, column: 81, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2679, file: !405, line: 1588, column: 3)
!2683 = !DILocation(line: 1589, column: 60, scope: !2682)
!2684 = !DILocation(line: 1589, column: 34, scope: !2682)
!2685 = !DILocation(line: 1589, column: 5, scope: !2682)
!2686 = !DILocation(line: 1589, column: 43, scope: !2682)
!2687 = !DILocation(line: 1590, column: 3, scope: !2682)
!2688 = !DILocation(line: 1591, column: 1, scope: !2674)
!2689 = distinct !DISubprogram(name: "HAL_NVIC_GetPendingIRQ", scope: !834, file: !834, line: 404, type: !2634, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !2690)
!2690 = !{!2691}
!2691 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2689, file: !834, line: 404, type: !2472)
!2692 = !DILocation(line: 0, scope: !2689)
!2693 = !DILocation(line: 410, column: 10, scope: !2689)
!2694 = !DILocation(line: 410, column: 3, scope: !2689)
!2695 = distinct !DISubprogram(name: "__NVIC_GetPendingIRQ", scope: !405, file: !405, line: 1566, type: !2634, scopeLine: 1567, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !2696)
!2696 = !{!2697}
!2697 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2695, file: !405, line: 1566, type: !2472)
!2698 = !DILocation(line: 0, scope: !2695)
!2699 = !DILocation(line: 1568, column: 23, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2695, file: !405, line: 1568, column: 7)
!2701 = !DILocation(line: 1568, column: 7, scope: !2695)
!2702 = !DILocation(line: 1570, column: 54, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2700, file: !405, line: 1569, column: 3)
!2704 = !DILocation(line: 1570, column: 25, scope: !2703)
!2705 = !DILocation(line: 1570, column: 91, scope: !2703)
!2706 = !DILocation(line: 1570, column: 23, scope: !2703)
!2707 = !DILocation(line: 1570, column: 5, scope: !2703)
!2708 = !DILocation(line: 0, scope: !2700)
!2709 = !DILocation(line: 1576, column: 1, scope: !2695)
!2710 = distinct !DISubprogram(name: "HAL_NVIC_ClearPendingIRQ", scope: !834, file: !834, line: 420, type: !2522, scopeLine: 421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !2711)
!2711 = !{!2712}
!2712 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2710, file: !834, line: 420, type: !2472)
!2713 = !DILocation(line: 0, scope: !2710)
!2714 = !DILocation(line: 426, column: 3, scope: !2710)
!2715 = !DILocation(line: 427, column: 1, scope: !2710)
!2716 = distinct !DISubprogram(name: "__NVIC_ClearPendingIRQ", scope: !405, file: !405, line: 1600, type: !2522, scopeLine: 1601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !2717)
!2717 = !{!2718}
!2718 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2716, file: !405, line: 1600, type: !2472)
!2719 = !DILocation(line: 0, scope: !2716)
!2720 = !DILocation(line: 1602, column: 23, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2716, file: !405, line: 1602, column: 7)
!2722 = !DILocation(line: 1602, column: 7, scope: !2716)
!2723 = !DILocation(line: 1604, column: 81, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2721, file: !405, line: 1603, column: 3)
!2725 = !DILocation(line: 1604, column: 60, scope: !2724)
!2726 = !DILocation(line: 1604, column: 34, scope: !2724)
!2727 = !DILocation(line: 1604, column: 5, scope: !2724)
!2728 = !DILocation(line: 1604, column: 43, scope: !2724)
!2729 = !DILocation(line: 1605, column: 3, scope: !2724)
!2730 = !DILocation(line: 1606, column: 1, scope: !2716)
!2731 = distinct !DISubprogram(name: "HAL_NVIC_GetActive", scope: !834, file: !834, line: 437, type: !2634, scopeLine: 438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !2732)
!2732 = !{!2733}
!2733 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2731, file: !834, line: 437, type: !2472)
!2734 = !DILocation(line: 0, scope: !2731)
!2735 = !DILocation(line: 443, column: 10, scope: !2731)
!2736 = !DILocation(line: 443, column: 3, scope: !2731)
!2737 = distinct !DISubprogram(name: "__NVIC_GetActive", scope: !405, file: !405, line: 1617, type: !2634, scopeLine: 1618, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !2738)
!2738 = !{!2739}
!2739 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2737, file: !405, line: 1617, type: !2472)
!2740 = !DILocation(line: 0, scope: !2737)
!2741 = !DILocation(line: 1619, column: 23, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2737, file: !405, line: 1619, column: 7)
!2743 = !DILocation(line: 1619, column: 7, scope: !2737)
!2744 = !DILocation(line: 1621, column: 54, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2742, file: !405, line: 1620, column: 3)
!2746 = !DILocation(line: 1621, column: 25, scope: !2745)
!2747 = !DILocation(line: 1621, column: 91, scope: !2745)
!2748 = !DILocation(line: 1621, column: 23, scope: !2745)
!2749 = !DILocation(line: 1621, column: 5, scope: !2745)
!2750 = !DILocation(line: 0, scope: !2742)
!2751 = !DILocation(line: 1627, column: 1, scope: !2737)
!2752 = distinct !DISubprogram(name: "HAL_SYSTICK_CLKSourceConfig", scope: !834, file: !834, line: 454, type: !1946, scopeLine: 455, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !2753)
!2753 = !{!2754}
!2754 = !DILocalVariable(name: "CLKSource", arg: 1, scope: !2752, file: !834, line: 454, type: !24)
!2755 = !DILocation(line: 0, scope: !2752)
!2756 = !DILocation(line: 458, column: 17, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2752, file: !834, line: 458, column: 7)
!2758 = !DILocation(line: 0, scope: !2757)
!2759 = !DILocation(line: 458, column: 7, scope: !2752)
!2760 = !DILocation(line: 466, column: 1, scope: !2752)
!2761 = distinct !DISubprogram(name: "HAL_SYSTICK_IRQHandler", scope: !834, file: !834, line: 472, type: !4, scopeLine: 473, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !374)
!2762 = !DILocation(line: 474, column: 3, scope: !2761)
!2763 = !DILocation(line: 475, column: 1, scope: !2761)
!2764 = distinct !DISubprogram(name: "HAL_SYSTICK_Callback", scope: !834, file: !834, line: 481, type: !4, scopeLine: 482, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !833, retainedNodes: !374)
!2765 = !DILocation(line: 486, column: 1, scope: !2764)
!2766 = distinct !DISubprogram(name: "HAL_GPIO_Init", scope: !888, file: !888, line: 178, type: !2767, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !887, retainedNodes: !2777)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{null, !919, !2769}
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 32)
!2770 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPIO_InitTypeDef", file: !891, line: 60, baseType: !2771)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !891, line: 47, size: 128, elements: !2772)
!2772 = !{!2773, !2774, !2775, !2776}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "Pin", scope: !2771, file: !891, line: 49, baseType: !24, size: 32)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "Mode", scope: !2771, file: !891, line: 52, baseType: !24, size: 32, offset: 32)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "Pull", scope: !2771, file: !891, line: 55, baseType: !24, size: 32, offset: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "Speed", scope: !2771, file: !891, line: 58, baseType: !24, size: 32, offset: 96)
!2777 = !{!2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787}
!2778 = !DILocalVariable(name: "GPIOx", arg: 1, scope: !2766, file: !888, line: 178, type: !919)
!2779 = !DILocalVariable(name: "GPIO_Init", arg: 2, scope: !2766, file: !888, line: 178, type: !2769)
!2780 = !DILocalVariable(name: "position", scope: !2766, file: !888, line: 180, type: !24)
!2781 = !DILocalVariable(name: "ioposition", scope: !2766, file: !888, line: 181, type: !24)
!2782 = !DILocalVariable(name: "iocurrent", scope: !2766, file: !888, line: 182, type: !24)
!2783 = !DILocalVariable(name: "temp", scope: !2766, file: !888, line: 183, type: !24)
!2784 = !DILocalVariable(name: "config", scope: !2766, file: !888, line: 184, type: !24)
!2785 = !DILocalVariable(name: "configregister", scope: !2766, file: !888, line: 185, type: !801)
!2786 = !DILocalVariable(name: "registeroffset", scope: !2766, file: !888, line: 186, type: !24)
!2787 = !DILocalVariable(name: "tmpreg", scope: !2788, file: !888, line: 291, type: !23)
!2788 = distinct !DILexicalBlock(scope: !2789, file: !888, line: 291, column: 9)
!2789 = distinct !DILexicalBlock(scope: !2790, file: !888, line: 289, column: 7)
!2790 = distinct !DILexicalBlock(scope: !2791, file: !888, line: 288, column: 11)
!2791 = distinct !DILexicalBlock(scope: !2792, file: !888, line: 203, column: 5)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !888, line: 202, column: 9)
!2793 = distinct !DILexicalBlock(scope: !2766, file: !888, line: 195, column: 3)
!2794 = !DILocation(line: 0, scope: !2766)
!2795 = !DILocation(line: 194, column: 23, scope: !2766)
!2796 = !DILocation(line: 194, column: 41, scope: !2766)
!2797 = !DILocation(line: 194, column: 3, scope: !2766)
!2798 = !DILocation(line: 197, column: 26, scope: !2793)
!2799 = !DILocation(line: 200, column: 44, scope: !2793)
!2800 = !DILocation(line: 202, column: 19, scope: !2792)
!2801 = !DILocation(line: 202, column: 9, scope: !2793)
!2802 = !DILocation(line: 208, column: 26, scope: !2791)
!2803 = !DILocation(line: 208, column: 7, scope: !2791)
!2804 = !DILocation(line: 214, column: 31, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2791, file: !888, line: 209, column: 7)
!2806 = !DILocation(line: 215, column: 11, scope: !2805)
!2807 = !DILocation(line: 221, column: 31, scope: !2805)
!2808 = !DILocation(line: 221, column: 37, scope: !2805)
!2809 = !DILocation(line: 222, column: 11, scope: !2805)
!2810 = !DILocation(line: 228, column: 31, scope: !2805)
!2811 = !DILocation(line: 228, column: 37, scope: !2805)
!2812 = !DILocation(line: 229, column: 11, scope: !2805)
!2813 = !DILocation(line: 235, column: 31, scope: !2805)
!2814 = !DILocation(line: 235, column: 37, scope: !2805)
!2815 = !DILocation(line: 236, column: 11, scope: !2805)
!2816 = !DILocation(line: 248, column: 26, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2805, file: !888, line: 248, column: 15)
!2818 = !DILocation(line: 248, column: 15, scope: !2805)
!2819 = !DILocation(line: 257, column: 25, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2821, file: !888, line: 253, column: 11)
!2821 = distinct !DILexicalBlock(scope: !2817, file: !888, line: 252, column: 20)
!2822 = !{!2823, !1449, i64 16}
!2823 = !{!"", !1449, i64 0, !1449, i64 4, !1449, i64 8, !1449, i64 12, !1449, i64 16, !1449, i64 20, !1449, i64 24}
!2824 = !DILocation(line: 258, column: 11, scope: !2820)
!2825 = !DILocation(line: 264, column: 24, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2821, file: !888, line: 260, column: 11)
!2827 = !{!2823, !1449, i64 20}
!2828 = !DILocation(line: 271, column: 11, scope: !2805)
!2829 = !DILocation(line: 280, column: 35, scope: !2791)
!2830 = !DILocation(line: 280, column: 24, scope: !2791)
!2831 = !DILocation(line: 281, column: 24, scope: !2791)
!2832 = !DILocation(line: 284, column: 7, scope: !2791)
!2833 = !DILocation(line: 288, column: 23, scope: !2790)
!2834 = !DILocation(line: 288, column: 28, scope: !2790)
!2835 = !DILocation(line: 288, column: 41, scope: !2790)
!2836 = !DILocation(line: 288, column: 11, scope: !2791)
!2837 = !DILocation(line: 291, column: 9, scope: !2788)
!2838 = !DILocation(line: 291, column: 9, scope: !2789)
!2839 = !DILocation(line: 292, column: 38, scope: !2789)
!2840 = !DILocation(line: 292, column: 16, scope: !2789)
!2841 = !DILocation(line: 293, column: 9, scope: !2789)
!2842 = !DILocation(line: 294, column: 9, scope: !2789)
!2843 = !DILocation(line: 295, column: 38, scope: !2789)
!2844 = !DILocation(line: 299, column: 25, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2789, file: !888, line: 299, column: 13)
!2846 = !DILocation(line: 299, column: 30, scope: !2845)
!2847 = !DILocation(line: 299, column: 46, scope: !2845)
!2848 = !DILocation(line: 299, column: 13, scope: !2789)
!2849 = !DILocation(line: 301, column: 11, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2845, file: !888, line: 300, column: 9)
!2851 = !{!2852, !1449, i64 0}
!2852 = !{!"", !1449, i64 0, !1449, i64 4, !1449, i64 8, !1449, i64 12, !1449, i64 16, !1449, i64 20}
!2853 = !DILocation(line: 302, column: 9, scope: !2850)
!2854 = !DILocation(line: 305, column: 11, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2845, file: !888, line: 304, column: 9)
!2856 = !DILocation(line: 0, scope: !2845)
!2857 = !DILocation(line: 309, column: 30, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2789, file: !888, line: 309, column: 13)
!2859 = !DILocation(line: 309, column: 47, scope: !2858)
!2860 = !DILocation(line: 309, column: 13, scope: !2789)
!2861 = !DILocation(line: 311, column: 11, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2858, file: !888, line: 310, column: 9)
!2863 = !{!2852, !1449, i64 4}
!2864 = !DILocation(line: 312, column: 9, scope: !2862)
!2865 = !DILocation(line: 315, column: 11, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2858, file: !888, line: 314, column: 9)
!2867 = !DILocation(line: 0, scope: !2858)
!2868 = !DILocation(line: 319, column: 30, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2789, file: !888, line: 319, column: 13)
!2870 = !DILocation(line: 319, column: 45, scope: !2869)
!2871 = !DILocation(line: 319, column: 13, scope: !2789)
!2872 = !DILocation(line: 321, column: 11, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2869, file: !888, line: 320, column: 9)
!2874 = !{!2852, !1449, i64 8}
!2875 = !DILocation(line: 322, column: 9, scope: !2873)
!2876 = !DILocation(line: 325, column: 11, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2869, file: !888, line: 324, column: 9)
!2878 = !DILocation(line: 0, scope: !2869)
!2879 = !DILocation(line: 329, column: 30, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2789, file: !888, line: 329, column: 13)
!2881 = !DILocation(line: 329, column: 46, scope: !2880)
!2882 = !DILocation(line: 329, column: 13, scope: !2789)
!2883 = !DILocation(line: 331, column: 11, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2880, file: !888, line: 330, column: 9)
!2885 = !{!2852, !1449, i64 12}
!2886 = !DILocation(line: 332, column: 9, scope: !2884)
!2887 = !DILocation(line: 335, column: 11, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2880, file: !888, line: 334, column: 9)
!2889 = !DILocation(line: 0, scope: !2880)
!2890 = !DILocation(line: 340, column: 10, scope: !2793)
!2891 = !DILocation(line: 184, column: 12, scope: !2766)
!2892 = !DILocation(line: 194, column: 28, scope: !2766)
!2893 = distinct !{!2893, !2797, !2894, !1417, !1418}
!2894 = !DILocation(line: 341, column: 3, scope: !2766)
!2895 = !DILocation(line: 342, column: 1, scope: !2766)
!2896 = distinct !DISubprogram(name: "HAL_GPIO_DeInit", scope: !888, file: !888, line: 351, type: !2897, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !887, retainedNodes: !2899)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{null, !919, !24}
!2899 = !{!2900, !2901, !2902, !2903, !2904, !2905, !2906}
!2900 = !DILocalVariable(name: "GPIOx", arg: 1, scope: !2896, file: !888, line: 351, type: !919)
!2901 = !DILocalVariable(name: "GPIO_Pin", arg: 2, scope: !2896, file: !888, line: 351, type: !24)
!2902 = !DILocalVariable(name: "position", scope: !2896, file: !888, line: 353, type: !24)
!2903 = !DILocalVariable(name: "iocurrent", scope: !2896, file: !888, line: 354, type: !24)
!2904 = !DILocalVariable(name: "tmp", scope: !2896, file: !888, line: 355, type: !24)
!2905 = !DILocalVariable(name: "configregister", scope: !2896, file: !888, line: 356, type: !801)
!2906 = !DILocalVariable(name: "registeroffset", scope: !2896, file: !888, line: 357, type: !24)
!2907 = !DILocation(line: 0, scope: !2896)
!2908 = !DILocation(line: 364, column: 33, scope: !2896)
!2909 = !DILocation(line: 364, column: 3, scope: !2896)
!2910 = !DILocation(line: 367, column: 35, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2896, file: !888, line: 365, column: 3)
!2912 = !DILocation(line: 367, column: 28, scope: !2911)
!2913 = !DILocation(line: 369, column: 9, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2911, file: !888, line: 369, column: 9)
!2915 = !DILocation(line: 369, column: 9, scope: !2911)
!2916 = !DILocation(line: 374, column: 35, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2914, file: !888, line: 370, column: 5)
!2918 = !DILocation(line: 374, column: 13, scope: !2917)
!2919 = !DILocation(line: 375, column: 28, scope: !2917)
!2920 = !DILocation(line: 375, column: 21, scope: !2917)
!2921 = !DILocation(line: 375, column: 11, scope: !2917)
!2922 = !DILocation(line: 376, column: 19, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2917, file: !888, line: 376, column: 11)
!2924 = !DILocation(line: 376, column: 41, scope: !2923)
!2925 = !DILocation(line: 376, column: 15, scope: !2923)
!2926 = !DILocation(line: 376, column: 11, scope: !2917)
!2927 = !DILocation(line: 379, column: 9, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2923, file: !888, line: 377, column: 7)
!2929 = !DILocation(line: 382, column: 9, scope: !2928)
!2930 = !DILocation(line: 383, column: 9, scope: !2928)
!2931 = !DILocation(line: 386, column: 9, scope: !2928)
!2932 = !DILocation(line: 387, column: 9, scope: !2928)
!2933 = !DILocation(line: 388, column: 7, scope: !2928)
!2934 = !DILocation(line: 392, column: 35, scope: !2917)
!2935 = !DILocation(line: 392, column: 24, scope: !2917)
!2936 = !DILocation(line: 393, column: 24, scope: !2917)
!2937 = !DILocation(line: 396, column: 7, scope: !2917)
!2938 = !DILocation(line: 399, column: 7, scope: !2917)
!2939 = !{!2823, !1449, i64 12}
!2940 = !DILocation(line: 400, column: 5, scope: !2917)
!2941 = !DILocation(line: 402, column: 13, scope: !2911)
!2942 = !DILocation(line: 364, column: 20, scope: !2896)
!2943 = distinct !{!2943, !2909, !2944, !1417, !1418}
!2944 = !DILocation(line: 403, column: 3, scope: !2896)
!2945 = !DILocation(line: 404, column: 1, scope: !2896)
!2946 = distinct !DISubprogram(name: "HAL_GPIO_ReadPin", scope: !888, file: !888, line: 431, type: !2947, scopeLine: 432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !887, retainedNodes: !2950)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!2949, !919, !37}
!2949 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPIO_PinState", file: !891, line: 69, baseType: !890)
!2950 = !{!2951, !2952, !2953}
!2951 = !DILocalVariable(name: "GPIOx", arg: 1, scope: !2946, file: !888, line: 431, type: !919)
!2952 = !DILocalVariable(name: "GPIO_Pin", arg: 2, scope: !2946, file: !888, line: 431, type: !37)
!2953 = !DILocalVariable(name: "bitstatus", scope: !2946, file: !888, line: 433, type: !2949)
!2954 = !DILocation(line: 0, scope: !2946)
!2955 = !DILocation(line: 438, column: 15, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2946, file: !888, line: 438, column: 7)
!2957 = !{!2823, !1449, i64 8}
!2958 = !DILocation(line: 438, column: 21, scope: !2956)
!2959 = !DILocation(line: 438, column: 19, scope: !2956)
!2960 = !DILocation(line: 438, column: 31, scope: !2956)
!2961 = !DILocation(line: 446, column: 3, scope: !2946)
!2962 = distinct !DISubprogram(name: "HAL_GPIO_WritePin", scope: !888, file: !888, line: 465, type: !2963, scopeLine: 466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !887, retainedNodes: !2965)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{null, !919, !37, !2949}
!2965 = !{!2966, !2967, !2968}
!2966 = !DILocalVariable(name: "GPIOx", arg: 1, scope: !2962, file: !888, line: 465, type: !919)
!2967 = !DILocalVariable(name: "GPIO_Pin", arg: 2, scope: !2962, file: !888, line: 465, type: !37)
!2968 = !DILocalVariable(name: "PinState", arg: 3, scope: !2962, file: !888, line: 465, type: !2949)
!2969 = !DILocation(line: 0, scope: !2962)
!2970 = !DILocation(line: 471, column: 16, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2962, file: !888, line: 471, column: 7)
!2972 = !DILocation(line: 0, scope: !2971)
!2973 = !DILocation(line: 471, column: 7, scope: !2962)
!2974 = !DILocation(line: 479, column: 1, scope: !2962)
!2975 = distinct !DISubprogram(name: "HAL_GPIO_TogglePin", scope: !888, file: !888, line: 487, type: !2976, scopeLine: 488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !887, retainedNodes: !2978)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{null, !919, !37}
!2978 = !{!2979, !2980}
!2979 = !DILocalVariable(name: "GPIOx", arg: 1, scope: !2975, file: !888, line: 487, type: !919)
!2980 = !DILocalVariable(name: "GPIO_Pin", arg: 2, scope: !2975, file: !888, line: 487, type: !37)
!2981 = !DILocation(line: 0, scope: !2975)
!2982 = !DILocation(line: 492, column: 15, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2975, file: !888, line: 492, column: 7)
!2984 = !DILocation(line: 492, column: 21, scope: !2983)
!2985 = !DILocation(line: 492, column: 19, scope: !2983)
!2986 = !DILocation(line: 492, column: 31, scope: !2983)
!2987 = !DILocation(line: 492, column: 7, scope: !2975)
!2988 = !DILocation(line: 0, scope: !2983)
!2989 = !DILocation(line: 500, column: 1, scope: !2975)
!2990 = distinct !DISubprogram(name: "HAL_GPIO_LockPin", scope: !888, file: !888, line: 512, type: !2991, scopeLine: 513, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !887, retainedNodes: !2993)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!1506, !919, !37}
!2993 = !{!2994, !2995, !2996}
!2994 = !DILocalVariable(name: "GPIOx", arg: 1, scope: !2990, file: !888, line: 512, type: !919)
!2995 = !DILocalVariable(name: "GPIO_Pin", arg: 2, scope: !2990, file: !888, line: 512, type: !37)
!2996 = !DILocalVariable(name: "tmp", scope: !2990, file: !888, line: 514, type: !23)
!2997 = !DILocation(line: 0, scope: !2990)
!2998 = !DILocation(line: 514, column: 3, scope: !2990)
!2999 = !DILocation(line: 514, column: 17, scope: !2990)
!3000 = !DILocation(line: 521, column: 3, scope: !2990)
!3001 = !DILocation(line: 523, column: 17, scope: !2990)
!3002 = !DILocation(line: 523, column: 10, scope: !2990)
!3003 = !DILocation(line: 523, column: 15, scope: !2990)
!3004 = !{!2823, !1449, i64 24}
!3005 = !DILocation(line: 525, column: 15, scope: !2990)
!3006 = !DILocation(line: 527, column: 17, scope: !2990)
!3007 = !DILocation(line: 527, column: 15, scope: !2990)
!3008 = !DILocation(line: 529, column: 16, scope: !2990)
!3009 = !DILocation(line: 529, column: 7, scope: !2990)
!3010 = !DILocation(line: 532, column: 25, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !2990, file: !888, line: 532, column: 7)
!3012 = !DILocation(line: 0, scope: !3011)
!3013 = !DILocation(line: 540, column: 1, scope: !2990)
!3014 = distinct !DISubprogram(name: "HAL_GPIO_EXTI_IRQHandler", scope: !888, file: !888, line: 547, type: !3015, scopeLine: 548, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !887, retainedNodes: !3017)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{null, !37}
!3017 = !{!3018}
!3018 = !DILocalVariable(name: "GPIO_Pin", arg: 1, scope: !3014, file: !888, line: 547, type: !37)
!3019 = !DILocation(line: 0, scope: !3014)
!3020 = !DILocation(line: 550, column: 7, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !3014, file: !888, line: 550, column: 7)
!3022 = !{!2852, !1449, i64 20}
!3023 = !DILocation(line: 550, column: 40, scope: !3021)
!3024 = !DILocation(line: 550, column: 7, scope: !3014)
!3025 = !DILocation(line: 552, column: 5, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3021, file: !888, line: 551, column: 3)
!3027 = !DILocation(line: 553, column: 5, scope: !3026)
!3028 = !DILocation(line: 554, column: 3, scope: !3026)
!3029 = !DILocation(line: 555, column: 1, scope: !3014)
!3030 = distinct !DISubprogram(name: "HAL_GPIO_EXTI_Callback", scope: !888, file: !888, line: 562, type: !3015, scopeLine: 563, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !887, retainedNodes: !3031)
!3031 = !{!3032}
!3032 = !DILocalVariable(name: "GPIO_Pin", arg: 1, scope: !3030, file: !888, line: 562, type: !37)
!3033 = !DILocation(line: 0, scope: !3030)
!3034 = !DILocation(line: 569, column: 1, scope: !3030)
!3035 = distinct !DISubprogram(name: "Scheduler", linkageName: "_ZN6Cicada9SchedulerC2EPFjvEPPNS_4TaskE", scope: !943, file: !941, line: 29, type: !955, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !940, declaration: !954, retainedNodes: !3036)
!3036 = !{!3037, !3039, !3040}
!3037 = !DILocalVariable(name: "this", arg: 1, scope: !3035, type: !3038, flags: DIFlagArtificial | DIFlagObjectPointer)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 32)
!3039 = !DILocalVariable(name: "tickFunction", arg: 2, scope: !3035, file: !941, line: 29, type: !947)
!3040 = !DILocalVariable(name: "taskList", arg: 3, scope: !3035, file: !941, line: 29, type: !951)
!3041 = !DILocation(line: 0, scope: !3035)
!3042 = !DILocation(line: 30, column: 5, scope: !3035)
!3043 = !{!3044, !1261, i64 0}
!3044 = !{!"_ZTSN6Cicada9SchedulerE", !1261, i64 0, !1261, i64 4, !1261, i64 8}
!3045 = !DILocation(line: 30, column: 34, scope: !3035)
!3046 = !{!3044, !1261, i64 4}
!3047 = !DILocation(line: 30, column: 55, scope: !3035)
!3048 = !{!3044, !1261, i64 8}
!3049 = !DILocation(line: 31, column: 2, scope: !3035)
!3050 = distinct !DISubprogram(name: "runTask", linkageName: "_ZN6Cicada9Scheduler7runTaskEv", scope: !943, file: !941, line: 33, type: !959, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !940, declaration: !958, retainedNodes: !3051)
!3051 = !{!3052, !3053}
!3052 = !DILocalVariable(name: "this", arg: 1, scope: !3050, type: !3038, flags: DIFlagArtificial | DIFlagObjectPointer)
!3053 = !DILocalVariable(name: "tick", scope: !3050, file: !941, line: 35, type: !24)
!3054 = !DILocation(line: 0, scope: !3050)
!3055 = !DILocation(line: 35, column: 24, scope: !3050)
!3056 = !DILocation(line: 36, column: 11, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3050, file: !941, line: 36, column: 9)
!3058 = !DILocation(line: 36, column: 10, scope: !3057)
!3059 = !DILocation(line: 36, column: 26, scope: !3057)
!3060 = !DILocation(line: 36, column: 34, scope: !3057)
!3061 = !DILocation(line: 37, column: 9, scope: !3057)
!3062 = !DILocation(line: 37, column: 21, scope: !3057)
!3063 = !DILocation(line: 37, column: 20, scope: !3057)
!3064 = !DILocation(line: 37, column: 36, scope: !3057)
!3065 = !DILocation(line: 37, column: 17, scope: !3057)
!3066 = !DILocation(line: 37, column: 51, scope: !3057)
!3067 = !DILocation(line: 37, column: 50, scope: !3057)
!3068 = !DILocation(line: 37, column: 66, scope: !3057)
!3069 = !DILocation(line: 37, column: 49, scope: !3057)
!3070 = !DILocation(line: 37, column: 46, scope: !3057)
!3071 = !DILocation(line: 36, column: 9, scope: !3050)
!3072 = !DILocation(line: 38, column: 11, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3057, file: !941, line: 37, column: 75)
!3074 = !DILocation(line: 38, column: 10, scope: !3073)
!3075 = !DILocation(line: 38, column: 26, scope: !3073)
!3076 = !DILocation(line: 39, column: 11, scope: !3073)
!3077 = !DILocation(line: 39, column: 10, scope: !3073)
!3078 = !DILocation(line: 39, column: 26, scope: !3073)
!3079 = !DILocation(line: 40, column: 5, scope: !3073)
!3080 = !DILocation(line: 42, column: 10, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3050, file: !941, line: 42, column: 9)
!3082 = !DILocation(line: 42, column: 9, scope: !3081)
!3083 = !DILocation(line: 42, column: 25, scope: !3081)
!3084 = !DILocation(line: 42, column: 9, scope: !3050)
!3085 = !DILocation(line: 43, column: 24, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3081, file: !941, line: 42, column: 34)
!3087 = !DILocation(line: 43, column: 22, scope: !3086)
!3088 = !DILocation(line: 44, column: 5, scope: !3086)
!3089 = !DILocation(line: 45, column: 1, scope: !3050)
!3090 = distinct !DISubprogram(name: "delay", linkageName: "_ZNK6Cicada4Task5delayEv", scope: !49, file: !50, line: 203, type: !72, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !940, declaration: !71, retainedNodes: !3091)
!3091 = !{!3092}
!3092 = !DILocalVariable(name: "this", arg: 1, scope: !3090, type: !3093, flags: DIFlagArtificial | DIFlagObjectPointer)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 32)
!3094 = !DILocation(line: 0, scope: !3090)
!3095 = !DILocation(line: 205, column: 16, scope: !3090)
!3096 = !DILocation(line: 205, column: 9, scope: !3090)
!3097 = distinct !DISubprogram(name: "lastRun", linkageName: "_ZN6Cicada4Task7lastRunEv", scope: !49, file: !50, line: 222, type: !78, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !940, declaration: !77, retainedNodes: !3098)
!3098 = !{!3099}
!3099 = !DILocalVariable(name: "this", arg: 1, scope: !3097, type: !952, flags: DIFlagArtificial | DIFlagObjectPointer)
!3100 = !DILocation(line: 0, scope: !3097)
!3101 = !DILocation(line: 224, column: 16, scope: !3097)
!3102 = !DILocation(line: 224, column: 9, scope: !3097)
!3103 = distinct !DISubprogram(name: "setLastRun", linkageName: "_ZN6Cicada4Task10setLastRunEj", scope: !49, file: !50, line: 230, type: !81, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !940, declaration: !80, retainedNodes: !3104)
!3104 = !{!3105, !3106}
!3105 = !DILocalVariable(name: "this", arg: 1, scope: !3103, type: !952, flags: DIFlagArtificial | DIFlagObjectPointer)
!3106 = !DILocalVariable(name: "time", arg: 2, scope: !3103, file: !50, line: 230, type: !24)
!3107 = !DILocation(line: 0, scope: !3103)
!3108 = !DILocation(line: 232, column: 9, scope: !3103)
!3109 = !DILocation(line: 232, column: 18, scope: !3103)
!3110 = !DILocation(line: 233, column: 5, scope: !3103)
!3111 = distinct !DISubprogram(name: "start", linkageName: "_ZN6Cicada9Scheduler5startEv", scope: !943, file: !941, line: 47, type: !959, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !940, declaration: !961, retainedNodes: !3112)
!3112 = !{!3113}
!3113 = !DILocalVariable(name: "this", arg: 1, scope: !3111, type: !3038, flags: DIFlagArtificial | DIFlagObjectPointer)
!3114 = !DILocation(line: 0, scope: !3111)
!3115 = !DILocation(line: 49, column: 5, scope: !3111)
!3116 = !DILocation(line: 50, column: 9, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3118, file: !941, line: 49, column: 5)
!3118 = distinct !DILexicalBlock(scope: !3111, file: !941, line: 49, column: 5)
!3119 = !DILocation(line: 49, column: 5, scope: !3117)
!3120 = distinct !{!3120, !3121, !3122, !1417, !1418}
!3121 = !DILocation(line: 49, column: 5, scope: !3118)
!3122 = !DILocation(line: 50, column: 17, scope: !3118)
!3123 = distinct !DISubprogram(name: "eTickFunction", linkageName: "_Z13eTickFunctionv", scope: !970, file: !970, line: 27, type: !948, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !969, retainedNodes: !374)
!3124 = !DILocation(line: 29, column: 12, scope: !3123)
!3125 = !DILocation(line: 29, column: 5, scope: !3123)
!3126 = distinct !DISubprogram(name: "~Stm32Uart", linkageName: "_ZN6Cicada9Stm32UartD2Ev", scope: !677, file: !579, line: 73, type: !735, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, declaration: !734, retainedNodes: !3127)
!3127 = !{!3128}
!3128 = !DILocalVariable(name: "this", arg: 1, scope: !3126, type: !684, flags: DIFlagArtificial | DIFlagObjectPointer)
!3129 = !DILocation(line: 0, scope: !3126)
!3130 = !DILocation(line: 74, column: 1, scope: !3126)
!3131 = !DILocation(line: 75, column: 9, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3133, file: !579, line: 75, column: 9)
!3133 = distinct !DILexicalBlock(scope: !3126, file: !579, line: 74, column: 1)
!3134 = !{!3135, !1262, i64 104}
!3135 = !{!"_ZTSN6Cicada9Stm32UartE", !1262, i64 104, !3136, i64 108, !1261, i64 180, !1371, i64 184, !1371, i64 186, !3140, i64 188}
!3136 = !{!"_ZTS20__UART_HandleTypeDef", !1261, i64 0, !3137, i64 4, !1261, i64 32, !1371, i64 36, !1371, i64 38, !1261, i64 40, !1371, i64 44, !1371, i64 46, !1261, i64 48, !1261, i64 52, !3138, i64 56, !3139, i64 60, !3139, i64 64, !1307, i64 68}
!3137 = !{!"_ZTS16UART_InitTypeDef", !1307, i64 0, !1307, i64 4, !1307, i64 8, !1307, i64 12, !1307, i64 16, !1307, i64 20, !1307, i64 24}
!3138 = !{!"_ZTS15HAL_LockTypeDef", !1262, i64 0}
!3139 = !{!"_ZTS21HAL_UART_StateTypeDef", !1262, i64 0}
!3140 = !{!"_ZTS9IRQn_Type", !1262, i64 0}
!3141 = !DILocation(line: 75, column: 16, scope: !3132)
!3142 = !DILocation(line: 75, column: 9, scope: !3133)
!3143 = !DILocation(line: 76, column: 9, scope: !3132)
!3144 = !DILocation(line: 77, column: 1, scope: !3133)
!3145 = !DILocation(line: 77, column: 1, scope: !3126)
!3146 = distinct !DISubprogram(name: "~Stm32Uart", linkageName: "_ZN6Cicada9Stm32UartD0Ev", scope: !677, file: !579, line: 73, type: !735, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, declaration: !734, retainedNodes: !3147)
!3147 = !{!3148}
!3148 = !DILocalVariable(name: "this", arg: 1, scope: !3146, type: !684, flags: DIFlagArtificial | DIFlagObjectPointer)
!3149 = !DILocation(line: 0, scope: !3146)
!3150 = !DILocation(line: 74, column: 1, scope: !3146)
!3151 = !DILocation(line: 77, column: 1, scope: !3146)
!3152 = distinct !DISubprogram(name: "writeBufferProcessed", linkageName: "_ZNK6Cicada9Stm32Uart20writeBufferProcessedEv", scope: !677, file: !579, line: 251, type: !762, scopeLine: 252, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, declaration: !761, retainedNodes: !3153)
!3153 = !{!3154}
!3154 = !DILocalVariable(name: "this", arg: 1, scope: !3152, type: !3155, flags: DIFlagArtificial | DIFlagObjectPointer)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 32)
!3156 = !DILocation(line: 0, scope: !3152)
!3157 = !DILocation(line: 253, column: 12, scope: !3152)
!3158 = !DILocation(line: 253, column: 25, scope: !3152)
!3159 = !DILocation(line: 253, column: 42, scope: !3152)
!3160 = !DILocation(line: 253, column: 47, scope: !3152)
!3161 = !DILocation(line: 253, column: 50, scope: !3152)
!3162 = !{!3135, !1261, i64 108}
!3163 = !{!3164, !1307, i64 0}
!3164 = !{!"_ZTS13USART_TypeDef", !1307, i64 0, !1307, i64 4, !1307, i64 8, !1307, i64 12, !1307, i64 16, !1307, i64 20, !1307, i64 24}
!3165 = !DILocation(line: 253, column: 5, scope: !3152)
!3166 = distinct !DISubprogram(name: "open", linkageName: "_ZN6Cicada9Stm32Uart4openEv", scope: !677, file: !579, line: 112, type: !741, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, declaration: !740, retainedNodes: !3167)
!3167 = !{!3168}
!3168 = !DILocalVariable(name: "this", arg: 1, scope: !3166, type: !684, flags: DIFlagArtificial | DIFlagObjectPointer)
!3169 = !DILocation(line: 0, scope: !3166)
!3170 = !DILocation(line: 114, column: 12, scope: !3166)
!3171 = !DILocation(line: 114, column: 5, scope: !3166)
!3172 = distinct !DISubprogram(name: "open", linkageName: "_ZN6Cicada9Stm32Uart4openEh", scope: !677, file: !579, line: 117, type: !744, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, declaration: !743, retainedNodes: !3173)
!3173 = !{!3174, !3175, !3176, !3180, !3182, !3186, !3190, !3194, !3198, !3202, !3206, !3210}
!3174 = !DILocalVariable(name: "this", arg: 1, scope: !3172, type: !684, flags: DIFlagArtificial | DIFlagObjectPointer)
!3175 = !DILocalVariable(name: "priority", arg: 2, scope: !3172, file: !579, line: 117, type: !42)
!3176 = !DILocalVariable(name: "tmpreg", scope: !3177, file: !579, line: 121, type: !24)
!3177 = distinct !DILexicalBlock(scope: !3178, file: !579, line: 121, column: 9)
!3178 = distinct !DILexicalBlock(scope: !3179, file: !579, line: 120, column: 37)
!3179 = distinct !DILexicalBlock(scope: !3172, file: !579, line: 120, column: 9)
!3180 = !DILocalVariable(name: "tmpreg", scope: !3181, file: !579, line: 122, type: !23)
!3181 = distinct !DILexicalBlock(scope: !3178, file: !579, line: 122, column: 9)
!3182 = !DILocalVariable(name: "tmpreg", scope: !3183, file: !579, line: 125, type: !23)
!3183 = distinct !DILexicalBlock(scope: !3184, file: !579, line: 125, column: 9)
!3184 = distinct !DILexicalBlock(scope: !3185, file: !579, line: 124, column: 44)
!3185 = distinct !DILexicalBlock(scope: !3179, file: !579, line: 124, column: 16)
!3186 = !DILocalVariable(name: "tmpreg", scope: !3187, file: !579, line: 128, type: !23)
!3187 = distinct !DILexicalBlock(scope: !3188, file: !579, line: 128, column: 9)
!3188 = distinct !DILexicalBlock(scope: !3189, file: !579, line: 127, column: 44)
!3189 = distinct !DILexicalBlock(scope: !3185, file: !579, line: 127, column: 16)
!3190 = !DILocalVariable(name: "tmpreg", scope: !3191, file: !579, line: 146, type: !23)
!3191 = distinct !DILexicalBlock(scope: !3192, file: !579, line: 146, column: 9)
!3192 = distinct !DILexicalBlock(scope: !3193, file: !579, line: 145, column: 29)
!3193 = distinct !DILexicalBlock(scope: !3172, file: !579, line: 145, column: 9)
!3194 = !DILocalVariable(name: "tmpreg", scope: !3195, file: !579, line: 148, type: !23)
!3195 = distinct !DILexicalBlock(scope: !3196, file: !579, line: 148, column: 9)
!3196 = distinct !DILexicalBlock(scope: !3197, file: !579, line: 147, column: 36)
!3197 = distinct !DILexicalBlock(scope: !3193, file: !579, line: 147, column: 16)
!3198 = !DILocalVariable(name: "tmpreg", scope: !3199, file: !579, line: 150, type: !23)
!3199 = distinct !DILexicalBlock(scope: !3200, file: !579, line: 150, column: 9)
!3200 = distinct !DILexicalBlock(scope: !3201, file: !579, line: 149, column: 36)
!3201 = distinct !DILexicalBlock(scope: !3197, file: !579, line: 149, column: 16)
!3202 = !DILocalVariable(name: "tmpreg", scope: !3203, file: !579, line: 152, type: !23)
!3203 = distinct !DILexicalBlock(scope: !3204, file: !579, line: 152, column: 9)
!3204 = distinct !DILexicalBlock(scope: !3205, file: !579, line: 151, column: 36)
!3205 = distinct !DILexicalBlock(scope: !3201, file: !579, line: 151, column: 16)
!3206 = !DILocalVariable(name: "tmpreg", scope: !3207, file: !579, line: 154, type: !23)
!3207 = distinct !DILexicalBlock(scope: !3208, file: !579, line: 154, column: 9)
!3208 = distinct !DILexicalBlock(scope: !3209, file: !579, line: 153, column: 36)
!3209 = distinct !DILexicalBlock(scope: !3205, file: !579, line: 153, column: 16)
!3210 = !DILocalVariable(name: "gpio", scope: !3172, file: !579, line: 166, type: !3211)
!3211 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPIO_InitTypeDef", file: !891, line: 60, baseType: !3212)
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !891, line: 47, size: 128, flags: DIFlagTypePassByValue, elements: !3213, identifier: "_ZTS16GPIO_InitTypeDef")
!3213 = !{!3214, !3215, !3216, !3217}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "Pin", scope: !3212, file: !891, line: 49, baseType: !24, size: 32)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "Mode", scope: !3212, file: !891, line: 52, baseType: !24, size: 32, offset: 32)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "Pull", scope: !3212, file: !891, line: 55, baseType: !24, size: 32, offset: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "Speed", scope: !3212, file: !891, line: 58, baseType: !24, size: 32, offset: 96)
!3218 = !DILocation(line: 0, scope: !3172)
!3219 = !DILocation(line: 120, column: 9, scope: !3179)
!3220 = !DILocation(line: 120, column: 17, scope: !3179)
!3221 = !DILocation(line: 120, column: 9, scope: !3172)
!3222 = !DILocation(line: 121, column: 9, scope: !3177)
!3223 = !{!3224, !1307, i64 4}
!3224 = !{!"_ZTS12AFIO_TypeDef", !1307, i64 0, !1307, i64 4, !1262, i64 8, !1307, i64 24, !1307, i64 28}
!3225 = !DILocation(line: 0, scope: !3177)
!3226 = !DILocation(line: 122, column: 9, scope: !3181)
!3227 = !{!3228, !1307, i64 24}
!3228 = !{!"_ZTS11RCC_TypeDef", !1307, i64 0, !1307, i64 4, !1307, i64 8, !1307, i64 12, !1307, i64 16, !1307, i64 20, !1307, i64 24, !1307, i64 28, !1307, i64 32, !1307, i64 36}
!3229 = !{!1307, !1307, i64 0}
!3230 = !DILocation(line: 122, column: 9, scope: !3178)
!3231 = !DILocation(line: 124, column: 5, scope: !3178)
!3232 = !DILocation(line: 125, column: 9, scope: !3183)
!3233 = !{!3228, !1307, i64 28}
!3234 = !DILocation(line: 125, column: 9, scope: !3184)
!3235 = !DILocation(line: 127, column: 5, scope: !3184)
!3236 = !DILocation(line: 128, column: 9, scope: !3187)
!3237 = !DILocation(line: 128, column: 9, scope: !3188)
!3238 = !DILocation(line: 0, scope: !3179)
!3239 = !{!3135, !3140, i64 188}
!3240 = !DILocation(line: 145, column: 9, scope: !3193)
!3241 = !{!3135, !1261, i64 180}
!3242 = !DILocation(line: 145, column: 9, scope: !3172)
!3243 = !DILocation(line: 146, column: 9, scope: !3191)
!3244 = !DILocation(line: 146, column: 9, scope: !3192)
!3245 = !DILocation(line: 147, column: 5, scope: !3192)
!3246 = !DILocation(line: 148, column: 9, scope: !3195)
!3247 = !DILocation(line: 148, column: 9, scope: !3196)
!3248 = !DILocation(line: 149, column: 5, scope: !3196)
!3249 = !DILocation(line: 150, column: 9, scope: !3199)
!3250 = !DILocation(line: 150, column: 9, scope: !3200)
!3251 = !DILocation(line: 151, column: 5, scope: !3200)
!3252 = !DILocation(line: 152, column: 9, scope: !3203)
!3253 = !DILocation(line: 152, column: 9, scope: !3204)
!3254 = !DILocation(line: 153, column: 5, scope: !3204)
!3255 = !DILocation(line: 154, column: 9, scope: !3207)
!3256 = !DILocation(line: 154, column: 9, scope: !3208)
!3257 = !DILocation(line: 163, column: 5, scope: !3208)
!3258 = !DILocation(line: 166, column: 5, scope: !3172)
!3259 = !DILocation(line: 166, column: 22, scope: !3172)
!3260 = !DILocation(line: 167, column: 16, scope: !3172)
!3261 = !{!3135, !1371, i64 184}
!3262 = !DILocation(line: 167, column: 10, scope: !3172)
!3263 = !DILocation(line: 167, column: 14, scope: !3172)
!3264 = !{!3265, !1307, i64 0}
!3265 = !{!"_ZTS16GPIO_InitTypeDef", !1307, i64 0, !1307, i64 4, !1307, i64 8, !1307, i64 12}
!3266 = !DILocation(line: 168, column: 10, scope: !3172)
!3267 = !DILocation(line: 168, column: 15, scope: !3172)
!3268 = !{!3265, !1307, i64 4}
!3269 = !DILocation(line: 169, column: 10, scope: !3172)
!3270 = !DILocation(line: 169, column: 15, scope: !3172)
!3271 = !{!3265, !1307, i64 8}
!3272 = !DILocation(line: 170, column: 10, scope: !3172)
!3273 = !DILocation(line: 170, column: 16, scope: !3172)
!3274 = !{!3265, !1307, i64 12}
!3275 = !DILocation(line: 171, column: 5, scope: !3172)
!3276 = !DILocation(line: 173, column: 16, scope: !3172)
!3277 = !{!3135, !1371, i64 186}
!3278 = !DILocation(line: 173, column: 14, scope: !3172)
!3279 = !DILocation(line: 174, column: 15, scope: !3172)
!3280 = !DILocation(line: 175, column: 19, scope: !3172)
!3281 = !DILocation(line: 175, column: 5, scope: !3172)
!3282 = !DILocation(line: 178, column: 18, scope: !3172)
!3283 = !DILocation(line: 178, column: 27, scope: !3172)
!3284 = !{!3135, !1307, i64 120}
!3285 = !DILocation(line: 179, column: 18, scope: !3172)
!3286 = !DILocation(line: 179, column: 25, scope: !3172)
!3287 = !{!3135, !1307, i64 124}
!3288 = !DILocation(line: 180, column: 18, scope: !3172)
!3289 = !DILocation(line: 180, column: 23, scope: !3172)
!3290 = !{!3135, !1307, i64 128}
!3291 = !DILocation(line: 181, column: 18, scope: !3172)
!3292 = !DILocation(line: 181, column: 28, scope: !3172)
!3293 = !{!3135, !1307, i64 132}
!3294 = !DILocation(line: 182, column: 18, scope: !3172)
!3295 = !DILocation(line: 182, column: 31, scope: !3172)
!3296 = !{!3135, !1307, i64 136}
!3297 = !DILocation(line: 184, column: 9, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3172, file: !579, line: 184, column: 9)
!3299 = !DILocation(line: 184, column: 33, scope: !3298)
!3300 = !DILocation(line: 184, column: 9, scope: !3172)
!3301 = !DILocation(line: 188, column: 22, scope: !3172)
!3302 = !DILocation(line: 188, column: 46, scope: !3172)
!3303 = !DILocation(line: 188, column: 5, scope: !3172)
!3304 = !DILocation(line: 189, column: 20, scope: !3172)
!3305 = !DILocation(line: 189, column: 5, scope: !3172)
!3306 = !DILocation(line: 190, column: 5, scope: !3172)
!3307 = !{!3164, !1307, i64 12}
!3308 = !DILocation(line: 192, column: 5, scope: !3172)
!3309 = !DILocation(line: 192, column: 12, scope: !3172)
!3310 = !DILocation(line: 194, column: 5, scope: !3172)
!3311 = !DILocation(line: 195, column: 1, scope: !3172)
!3312 = distinct !DISubprogram(name: "isOpen", linkageName: "_ZN6Cicada9Stm32Uart6isOpenEv", scope: !677, file: !579, line: 207, type: !741, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, declaration: !746, retainedNodes: !3313)
!3313 = !{!3314}
!3314 = !DILocalVariable(name: "this", arg: 1, scope: !3312, type: !684, flags: DIFlagArtificial | DIFlagObjectPointer)
!3315 = !DILocation(line: 0, scope: !3312)
!3316 = !DILocation(line: 209, column: 12, scope: !3312)
!3317 = !DILocation(line: 209, column: 19, scope: !3312)
!3318 = !DILocation(line: 209, column: 5, scope: !3312)
!3319 = distinct !DISubprogram(name: "setSerialConfig", linkageName: "_ZN6Cicada9Stm32Uart15setSerialConfigEjh", scope: !677, file: !579, line: 91, type: !748, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, declaration: !747, retainedNodes: !3320)
!3320 = !{!3321, !3322, !3323}
!3321 = !DILocalVariable(name: "this", arg: 1, scope: !3319, type: !684, flags: DIFlagArtificial | DIFlagObjectPointer)
!3322 = !DILocalVariable(name: "baudRate", arg: 2, scope: !3319, file: !579, line: 91, type: !24)
!3323 = !DILocalVariable(name: "dataBits", arg: 3, scope: !3319, file: !579, line: 91, type: !42)
!3324 = !DILocation(line: 0, scope: !3319)
!3325 = !DILocation(line: 93, column: 23, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3319, file: !579, line: 93, column: 9)
!3327 = !DILocation(line: 96, column: 18, scope: !3319)
!3328 = !DILocation(line: 96, column: 27, scope: !3319)
!3329 = !{!3135, !1307, i64 112}
!3330 = !DILocation(line: 98, column: 5, scope: !3319)
!3331 = !DILocation(line: 104, column: 9, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3319, file: !579, line: 98, column: 23)
!3333 = !DILocation(line: 0, scope: !3332)
!3334 = !{!3135, !1307, i64 116}
!3335 = !DILocation(line: 110, column: 1, scope: !3319)
!3336 = distinct !DISubprogram(name: "close", linkageName: "_ZN6Cicada9Stm32Uart5closeEv", scope: !677, file: !579, line: 197, type: !735, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, declaration: !750, retainedNodes: !3337)
!3337 = !{!3338}
!3338 = !DILocalVariable(name: "this", arg: 1, scope: !3336, type: !684, flags: DIFlagArtificial | DIFlagObjectPointer)
!3339 = !DILocation(line: 0, scope: !3336)
!3340 = !DILocation(line: 199, column: 21, scope: !3336)
!3341 = !DILocation(line: 199, column: 5, scope: !3336)
!3342 = !DILocation(line: 200, column: 22, scope: !3336)
!3343 = !DILocation(line: 200, column: 5, scope: !3336)
!3344 = !DILocation(line: 201, column: 21, scope: !3336)
!3345 = !DILocation(line: 201, column: 32, scope: !3336)
!3346 = !DILocation(line: 201, column: 5, scope: !3336)
!3347 = !DILocation(line: 202, column: 21, scope: !3336)
!3348 = !DILocation(line: 202, column: 32, scope: !3336)
!3349 = !DILocation(line: 202, column: 5, scope: !3336)
!3350 = !DILocation(line: 204, column: 5, scope: !3336)
!3351 = !DILocation(line: 204, column: 12, scope: !3336)
!3352 = !DILocation(line: 205, column: 1, scope: !3336)
!3353 = distinct !DISubprogram(name: "portName", linkageName: "_ZNK6Cicada9Stm32Uart8portNameEv", scope: !677, file: !579, line: 212, type: !752, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, declaration: !751, retainedNodes: !3354)
!3354 = !{!3355}
!3355 = !DILocalVariable(name: "this", arg: 1, scope: !3353, type: !3155, flags: DIFlagArtificial | DIFlagObjectPointer)
!3356 = !DILocation(line: 0, scope: !3353)
!3357 = !DILocation(line: 214, column: 5, scope: !3353)
!3358 = distinct !DISubprogram(name: "rawRead", linkageName: "_ZN6Cicada9Stm32Uart7rawReadERh", scope: !677, file: !579, line: 217, type: !757, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, declaration: !756, retainedNodes: !3359)
!3359 = !{!3360, !3361}
!3360 = !DILocalVariable(name: "this", arg: 1, scope: !3358, type: !684, flags: DIFlagArtificial | DIFlagObjectPointer)
!3361 = !DILocalVariable(name: "data", arg: 2, scope: !3358, file: !579, line: 217, type: !155)
!3362 = !DILocation(line: 0, scope: !3358)
!3363 = !DILocation(line: 219, column: 9, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3358, file: !579, line: 219, column: 9)
!3365 = !DILocation(line: 219, column: 55, scope: !3364)
!3366 = !DILocation(line: 220, column: 9, scope: !3364)
!3367 = !DILocation(line: 219, column: 9, scope: !3358)
!3368 = !DILocation(line: 221, column: 25, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3364, file: !579, line: 220, column: 55)
!3370 = !{!3164, !1307, i64 4}
!3371 = !DILocation(line: 221, column: 14, scope: !3369)
!3372 = !DILocation(line: 222, column: 9, scope: !3369)
!3373 = !DILocation(line: 226, column: 1, scope: !3358)
!3374 = distinct !DISubprogram(name: "rawWrite", linkageName: "_ZN6Cicada9Stm32Uart8rawWriteEh", scope: !677, file: !579, line: 228, type: !744, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, declaration: !759, retainedNodes: !3375)
!3375 = !{!3376, !3377}
!3376 = !DILocalVariable(name: "this", arg: 1, scope: !3374, type: !684, flags: DIFlagArtificial | DIFlagObjectPointer)
!3377 = !DILocalVariable(name: "data", arg: 2, scope: !3374, file: !579, line: 228, type: !42)
!3378 = !DILocation(line: 0, scope: !3374)
!3379 = !DILocation(line: 230, column: 9, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3374, file: !579, line: 230, column: 9)
!3381 = !DILocation(line: 230, column: 9, scope: !3374)
!3382 = !DILocation(line: 231, column: 9, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3380, file: !579, line: 230, column: 55)
!3384 = !DILocation(line: 232, column: 9, scope: !3383)
!3385 = !DILocation(line: 236, column: 1, scope: !3374)
!3386 = distinct !DISubprogram(name: "startTransmit", linkageName: "_ZN6Cicada9Stm32Uart13startTransmitEv", scope: !677, file: !579, line: 238, type: !735, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, declaration: !760, retainedNodes: !3387)
!3387 = !{!3388}
!3388 = !DILocalVariable(name: "this", arg: 1, scope: !3386, type: !684, flags: DIFlagArtificial | DIFlagObjectPointer)
!3389 = !DILocation(line: 0, scope: !3386)
!3390 = !DILocation(line: 240, column: 5, scope: !3386)
!3391 = !DILocation(line: 241, column: 1, scope: !3386)
!3392 = distinct !DISubprogram(linkageName: "_ZThn4_N6Cicada9Stm32UartD1Ev", scope: !579, file: !579, line: 73, type: !3393, flags: DIFlagArtificial | DIFlagThunk | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, retainedNodes: !374)
!3393 = !DISubroutineType(types: !374)
!3394 = !DILocation(line: 0, scope: !3392)
!3395 = distinct !DISubprogram(linkageName: "_ZThn4_N6Cicada9Stm32UartD0Ev", scope: !579, file: !579, line: 73, type: !3393, flags: DIFlagArtificial | DIFlagThunk | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, retainedNodes: !374)
!3396 = !DILocation(line: 0, scope: !3395)
!3397 = distinct !DISubprogram(linkageName: "_ZThn4_N6Cicada9Stm32Uart4openEv", scope: !579, file: !579, line: 112, type: !3393, flags: DIFlagArtificial | DIFlagThunk | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, retainedNodes: !374)
!3398 = !DILocation(line: 0, scope: !3397)
!3399 = distinct !DISubprogram(linkageName: "_ZThn4_N6Cicada9Stm32Uart6isOpenEv", scope: !579, file: !579, line: 207, type: !3393, flags: DIFlagArtificial | DIFlagThunk | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, retainedNodes: !374)
!3400 = !DILocation(line: 0, scope: !3399)
!3401 = distinct !DISubprogram(linkageName: "_ZThn4_N6Cicada9Stm32Uart15setSerialConfigEjh", scope: !579, file: !579, line: 91, type: !3393, flags: DIFlagArtificial | DIFlagThunk | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, retainedNodes: !374)
!3402 = !DILocation(line: 0, scope: !3401)
!3403 = distinct !DISubprogram(linkageName: "_ZThn4_N6Cicada9Stm32Uart5closeEv", scope: !579, file: !579, line: 197, type: !3393, flags: DIFlagArtificial | DIFlagThunk | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, retainedNodes: !374)
!3404 = !DILocation(line: 0, scope: !3403)
!3405 = distinct !DISubprogram(linkageName: "_ZThn4_NK6Cicada9Stm32Uart8portNameEv", scope: !579, file: !579, line: 212, type: !3393, flags: DIFlagArtificial | DIFlagThunk | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, retainedNodes: !374)
!3406 = !DILocation(line: 0, scope: !3405)
!3407 = distinct !DISubprogram(linkageName: "_ZThn4_N6Cicada9Stm32Uart7rawReadERh", scope: !579, file: !579, line: 217, type: !3393, flags: DIFlagArtificial | DIFlagThunk | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, retainedNodes: !374)
!3408 = !DILocation(line: 0, scope: !3407)
!3409 = distinct !DISubprogram(linkageName: "_ZThn4_N6Cicada9Stm32Uart8rawWriteEh", scope: !579, file: !579, line: 228, type: !3393, flags: DIFlagArtificial | DIFlagThunk | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, retainedNodes: !374)
!3410 = !DILocation(line: 0, scope: !3409)
!3411 = distinct !DISubprogram(linkageName: "_ZThn4_N6Cicada9Stm32Uart13startTransmitEv", scope: !579, file: !579, line: 238, type: !3393, flags: DIFlagArtificial | DIFlagThunk | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, retainedNodes: !374)
!3412 = !DILocation(line: 0, scope: !3411)
!3413 = distinct !DISubprogram(name: "__NVIC_DisableIRQ", linkageName: "_ZL17__NVIC_DisableIRQ9IRQn_Type", scope: !405, file: !405, line: 1547, type: !3414, scopeLine: 1548, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !578, retainedNodes: !3416)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{null, !726}
!3416 = !{!3417}
!3417 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3413, file: !405, line: 1547, type: !726)
!3418 = !DILocation(line: 0, scope: !3413)
!3419 = !DILocation(line: 1549, column: 23, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3413, file: !405, line: 1549, column: 7)
!3421 = !DILocation(line: 1549, column: 7, scope: !3413)
!3422 = !DILocation(line: 1551, column: 81, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3420, file: !405, line: 1550, column: 3)
!3424 = !DILocation(line: 1551, column: 60, scope: !3423)
!3425 = !DILocation(line: 1551, column: 34, scope: !3423)
!3426 = !DILocation(line: 1551, column: 5, scope: !3423)
!3427 = !DILocation(line: 1551, column: 43, scope: !3423)
!3428 = !DILocation(line: 879, column: 3, scope: !3429, inlinedAt: !3430)
!3429 = distinct !DISubprogram(name: "__DSB", linkageName: "_ZL5__DSBv", scope: !2565, file: !2565, line: 877, type: !4, scopeLine: 878, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !578, retainedNodes: !374)
!3430 = distinct !DILocation(line: 1552, column: 5, scope: !3423)
!3431 = !{i64 1321711}
!3432 = !DILocation(line: 868, column: 3, scope: !3433, inlinedAt: !3434)
!3433 = distinct !DISubprogram(name: "__ISB", linkageName: "_ZL5__ISBv", scope: !2565, file: !2565, line: 866, type: !4, scopeLine: 867, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !578, retainedNodes: !374)
!3434 = distinct !DILocation(line: 1553, column: 5, scope: !3423)
!3435 = !{i64 1321417}
!3436 = !DILocation(line: 1554, column: 3, scope: !3423)
!3437 = !DILocation(line: 1555, column: 1, scope: !3413)
!3438 = distinct !DISubprogram(name: "__NVIC_SetPriority", linkageName: "_ZL18__NVIC_SetPriority9IRQn_Typej", scope: !405, file: !405, line: 1639, type: !3439, scopeLine: 1640, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !578, retainedNodes: !3441)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{null, !726, !24}
!3441 = !{!3442, !3443}
!3442 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3438, file: !405, line: 1639, type: !726)
!3443 = !DILocalVariable(name: "priority", arg: 2, scope: !3438, file: !405, line: 1639, type: !24)
!3444 = !DILocation(line: 0, scope: !3438)
!3445 = !DILocation(line: 0, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3438, file: !405, line: 1641, column: 7)
!3447 = !DILocation(line: 1641, column: 7, scope: !3438)
!3448 = !DILocation(line: 1649, column: 1, scope: !3438)
!3449 = distinct !DISubprogram(name: "__NVIC_EnableIRQ", linkageName: "_ZL16__NVIC_EnableIRQ9IRQn_Type", scope: !405, file: !405, line: 1511, type: !3414, scopeLine: 1512, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !578, retainedNodes: !3450)
!3450 = !{!3451}
!3451 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3449, file: !405, line: 1511, type: !726)
!3452 = !DILocation(line: 0, scope: !3449)
!3453 = !DILocation(line: 1513, column: 23, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3449, file: !405, line: 1513, column: 7)
!3455 = !DILocation(line: 1513, column: 7, scope: !3449)
!3456 = !DILocation(line: 1515, column: 81, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3454, file: !405, line: 1514, column: 3)
!3458 = !DILocation(line: 1515, column: 60, scope: !3457)
!3459 = !DILocation(line: 1515, column: 34, scope: !3457)
!3460 = !DILocation(line: 1515, column: 5, scope: !3457)
!3461 = !DILocation(line: 1515, column: 43, scope: !3457)
!3462 = !DILocation(line: 1516, column: 3, scope: !3457)
!3463 = !DILocation(line: 1517, column: 1, scope: !3449)
!3464 = distinct !DISubprogram(name: "bytesAvailable", linkageName: "_ZNK6Cicada14CircularBufferIcE14bytesAvailableEv", scope: !983, file: !984, line: 174, type: !1021, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, declaration: !1020, retainedNodes: !3465)
!3465 = !{!3466}
!3466 = !DILocalVariable(name: "this", arg: 1, scope: !3464, type: !3467, flags: DIFlagArtificial | DIFlagObjectPointer)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 32)
!3468 = !DILocation(line: 0, scope: !3464)
!3469 = !DILocation(line: 176, column: 16, scope: !3464)
!3470 = !{!3471, !3472, i64 24}
!3471 = !{!"_ZTSN6Cicada14CircularBufferIcEE", !3472, i64 8, !3472, i64 16, !3472, i64 24, !3472, i64 32, !1261, i64 40}
!3472 = !{!"long long", !1262, i64 0}
!3473 = !DILocation(line: 176, column: 9, scope: !3464)
!3474 = distinct !DISubprogram(name: "~BufferedSerial", linkageName: "_ZN6Cicada14BufferedSerialD2Ev", scope: !680, file: !681, line: 42, type: !3475, scopeLine: 42, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, declaration: !3478, retainedNodes: !3479)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{null, !3477}
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!3478 = !DISubprogram(name: "~BufferedSerial", scope: !680, type: !3475, containingType: !680, virtualIndex: 0, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!3479 = !{!3480}
!3480 = !DILocalVariable(name: "this", arg: 1, scope: !3474, type: !3481, flags: DIFlagArtificial | DIFlagObjectPointer)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 32)
!3482 = !DILocation(line: 0, scope: !3474)
!3483 = !DILocation(line: 42, column: 7, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3474, file: !681, line: 42, column: 7)
!3485 = !DILocation(line: 42, column: 7, scope: !3474)
!3486 = distinct !DISubprogram(name: "~CircularBuffer", linkageName: "_ZN6Cicada14CircularBufferIcED2Ev", scope: !983, file: !984, line: 56, type: !998, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, declaration: !997, retainedNodes: !3487)
!3487 = !{!3488}
!3488 = !DILocalVariable(name: "this", arg: 1, scope: !3486, type: !3489, flags: DIFlagArtificial | DIFlagObjectPointer)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 32)
!3490 = !DILocation(line: 0, scope: !3486)
!3491 = !DILocation(line: 57, column: 7, scope: !3486)
!3492 = distinct !DISubprogram(name: "~IBufferedSerial", linkageName: "_ZN6Cicada15IBufferedSerialD2Ev", scope: !95, file: !96, line: 42, type: !161, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, declaration: !160, retainedNodes: !3493)
!3493 = !{!3494}
!3494 = !DILocalVariable(name: "this", arg: 1, scope: !3492, type: !3495, flags: DIFlagArtificial | DIFlagObjectPointer)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 32)
!3496 = !DILocation(line: 0, scope: !3492)
!3497 = !DILocation(line: 42, column: 34, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3492, file: !96, line: 42, column: 32)
!3499 = !DILocation(line: 42, column: 34, scope: !3492)
!3500 = distinct !DISubprogram(name: "~ISerial", linkageName: "_ZN6Cicada7ISerialD2Ev", scope: !128, file: !129, line: 40, type: !133, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, declaration: !132, retainedNodes: !3501)
!3501 = !{!3502}
!3502 = !DILocalVariable(name: "this", arg: 1, scope: !3500, type: !3503, flags: DIFlagArtificial | DIFlagObjectPointer)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 32)
!3504 = !DILocation(line: 0, scope: !3500)
!3505 = !DILocation(line: 40, column: 26, scope: !3500)
!3506 = distinct !DISubprogram(name: "~ICommDevice", linkageName: "_ZN6Cicada11ICommDeviceD2Ev", scope: !99, file: !100, line: 46, type: !104, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, declaration: !103, retainedNodes: !3507)
!3507 = !{!3508}
!3508 = !DILocalVariable(name: "this", arg: 1, scope: !3506, type: !3509, flags: DIFlagArtificial | DIFlagObjectPointer)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 32)
!3510 = !DILocation(line: 0, scope: !3506)
!3511 = !DILocation(line: 46, column: 30, scope: !3506)
!3512 = distinct !DISubprogram(name: "Stm32Uart", linkageName: "_ZN6Cicada9Stm32UartC2EPcS1_yyP13USART_TypeDefP12GPIO_TypeDeftt", scope: !677, file: !579, line: 34, type: !732, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, declaration: !731, retainedNodes: !3513)
!3513 = !{!3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522}
!3514 = !DILocalVariable(name: "this", arg: 1, scope: !3512, type: !684, flags: DIFlagArtificial | DIFlagObjectPointer)
!3515 = !DILocalVariable(name: "readBuffer", arg: 2, scope: !3512, file: !579, line: 34, type: !322)
!3516 = !DILocalVariable(name: "writeBuffer", arg: 3, scope: !3512, file: !579, line: 34, type: !322)
!3517 = !DILocalVariable(name: "readBufferSize", arg: 4, scope: !3512, file: !579, line: 34, type: !110)
!3518 = !DILocalVariable(name: "writeBufferSize", arg: 5, scope: !3512, file: !579, line: 34, type: !110)
!3519 = !DILocalVariable(name: "uartInstance", arg: 6, scope: !3512, file: !579, line: 35, type: !17)
!3520 = !DILocalVariable(name: "uartPort", arg: 7, scope: !3512, file: !579, line: 35, type: !34)
!3521 = !DILocalVariable(name: "txPin", arg: 8, scope: !3512, file: !579, line: 35, type: !37)
!3522 = !DILocalVariable(name: "rxPin", arg: 9, scope: !3512, file: !579, line: 35, type: !37)
!3523 = !DILocation(line: 0, scope: !3512)
!3524 = !DILocation(line: 43, column: 1, scope: !3512)
!3525 = !DILocation(line: 36, column: 5, scope: !3512)
!3526 = !DILocation(line: 37, column: 5, scope: !3512)
!3527 = !DILocation(line: 38, column: 5, scope: !3512)
!3528 = !DILocation(line: 39, column: 5, scope: !3512)
!3529 = !DILocation(line: 40, column: 5, scope: !3512)
!3530 = !DILocation(line: 41, column: 5, scope: !3512)
!3531 = !DILocation(line: 42, column: 5, scope: !3512)
!3532 = !DILocation(line: 44, column: 5, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3512, file: !579, line: 43, column: 1)
!3534 = !DILocation(line: 45, column: 1, scope: !3512)
!3535 = distinct !DISubprogram(name: "init", linkageName: "_ZN6Cicada9Stm32Uart4initEP13USART_TypeDef", scope: !677, file: !579, line: 59, type: !774, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, declaration: !773, retainedNodes: !3536)
!3536 = !{!3537, !3538, !3539}
!3537 = !DILocalVariable(name: "this", arg: 1, scope: !3535, type: !684, flags: DIFlagArtificial | DIFlagObjectPointer)
!3538 = !DILocalVariable(name: "uartInstance", arg: 2, scope: !3535, file: !579, line: 59, type: !17)
!3539 = !DILocalVariable(name: "i", scope: !3540, file: !579, line: 65, type: !58)
!3540 = distinct !DILexicalBlock(scope: !3535, file: !579, line: 65, column: 5)
!3541 = !DILocation(line: 0, scope: !3535)
!3542 = !DILocation(line: 61, column: 13, scope: !3535)
!3543 = !DILocation(line: 61, column: 22, scope: !3535)
!3544 = !DILocation(line: 62, column: 18, scope: !3535)
!3545 = !DILocation(line: 62, column: 27, scope: !3535)
!3546 = !DILocation(line: 63, column: 18, scope: !3535)
!3547 = !DILocation(line: 63, column: 29, scope: !3535)
!3548 = !DILocation(line: 0, scope: !3540)
!3549 = !DILocation(line: 65, column: 5, scope: !3540)
!3550 = !DILocation(line: 65, column: 52, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3540, file: !579, line: 65, column: 5)
!3552 = !DILocation(line: 65, column: 23, scope: !3551)
!3553 = distinct !{!3553, !3549, !3554, !1417, !1418}
!3554 = !DILocation(line: 70, column: 5, scope: !3540)
!3555 = !DILocation(line: 66, column: 13, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3557, file: !579, line: 66, column: 13)
!3557 = distinct !DILexicalBlock(scope: !3551, file: !579, line: 65, column: 56)
!3558 = !DILocation(line: 66, column: 25, scope: !3556)
!3559 = !DILocation(line: 66, column: 13, scope: !3557)
!3560 = !DILocation(line: 67, column: 25, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3556, file: !579, line: 66, column: 34)
!3562 = !DILocation(line: 68, column: 13, scope: !3561)
!3563 = !DILocation(line: 71, column: 1, scope: !3535)
!3564 = distinct !DISubprogram(name: "Stm32Uart", linkageName: "_ZN6Cicada9Stm32UartC2EPcS1_yP13USART_TypeDefP12GPIO_TypeDeftt", scope: !677, file: !579, line: 46, type: !728, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, declaration: !727, retainedNodes: !3565)
!3565 = !{!3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573}
!3566 = !DILocalVariable(name: "this", arg: 1, scope: !3564, type: !684, flags: DIFlagArtificial | DIFlagObjectPointer)
!3567 = !DILocalVariable(name: "readBuffer", arg: 2, scope: !3564, file: !579, line: 46, type: !322)
!3568 = !DILocalVariable(name: "writeBuffer", arg: 3, scope: !3564, file: !579, line: 46, type: !322)
!3569 = !DILocalVariable(name: "bufferSize", arg: 4, scope: !3564, file: !579, line: 46, type: !110)
!3570 = !DILocalVariable(name: "uartInstance", arg: 5, scope: !3564, file: !579, line: 47, type: !17)
!3571 = !DILocalVariable(name: "uartPort", arg: 6, scope: !3564, file: !579, line: 47, type: !34)
!3572 = !DILocalVariable(name: "txPin", arg: 7, scope: !3564, file: !579, line: 47, type: !37)
!3573 = !DILocalVariable(name: "rxPin", arg: 8, scope: !3564, file: !579, line: 47, type: !37)
!3574 = !DILocation(line: 0, scope: !3564)
!3575 = !DILocation(line: 55, column: 1, scope: !3564)
!3576 = !DILocation(line: 48, column: 5, scope: !3564)
!3577 = !DILocation(line: 49, column: 5, scope: !3564)
!3578 = !DILocation(line: 50, column: 5, scope: !3564)
!3579 = !DILocation(line: 51, column: 5, scope: !3564)
!3580 = !DILocation(line: 52, column: 5, scope: !3564)
!3581 = !DILocation(line: 53, column: 5, scope: !3564)
!3582 = !DILocation(line: 54, column: 5, scope: !3564)
!3583 = !DILocation(line: 56, column: 5, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !3564, file: !579, line: 55, column: 1)
!3585 = !DILocation(line: 57, column: 1, scope: !3564)
!3586 = distinct !DISubprogram(name: "getInstance", linkageName: "_ZN6Cicada9Stm32Uart11getInstanceEP13USART_TypeDef", scope: !677, file: !579, line: 79, type: !738, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, declaration: !737, retainedNodes: !3587)
!3587 = !{!3588, !3589, !3591}
!3588 = !DILocalVariable(name: "uartInstance", arg: 1, scope: !3586, file: !579, line: 79, type: !17)
!3589 = !DILocalVariable(name: "i", scope: !3590, file: !579, line: 81, type: !58)
!3590 = distinct !DILexicalBlock(scope: !3586, file: !579, line: 81, column: 5)
!3591 = !DILocalVariable(name: "uart", scope: !3592, file: !579, line: 82, type: !684)
!3592 = distinct !DILexicalBlock(scope: !3593, file: !579, line: 81, column: 56)
!3593 = distinct !DILexicalBlock(scope: !3590, file: !579, line: 81, column: 5)
!3594 = !DILocation(line: 0, scope: !3586)
!3595 = !DILocation(line: 0, scope: !3590)
!3596 = !DILocation(line: 81, column: 5, scope: !3590)
!3597 = !DILocation(line: 81, column: 52, scope: !3593)
!3598 = !DILocation(line: 81, column: 23, scope: !3593)
!3599 = distinct !{!3599, !3596, !3600, !1417, !1418}
!3600 = !DILocation(line: 86, column: 5, scope: !3590)
!3601 = !DILocation(line: 82, column: 27, scope: !3592)
!3602 = !DILocation(line: 0, scope: !3592)
!3603 = !DILocation(line: 83, column: 18, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3592, file: !579, line: 83, column: 13)
!3605 = !DILocation(line: 83, column: 26, scope: !3604)
!3606 = !DILocation(line: 83, column: 43, scope: !3604)
!3607 = !DILocation(line: 83, column: 52, scope: !3604)
!3608 = !DILocation(line: 83, column: 13, scope: !3592)
!3609 = !DILocation(line: 86, column: 5, scope: !3593)
!3610 = !DILocation(line: 89, column: 1, scope: !3586)
!3611 = distinct !DISubprogram(name: "handleInterrupt", linkageName: "_ZN6Cicada9Stm32Uart15handleInterruptEv", scope: !677, file: !579, line: 243, type: !735, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, declaration: !764, retainedNodes: !3612)
!3612 = !{!3613}
!3613 = !DILocalVariable(name: "this", arg: 1, scope: !3611, type: !684, flags: DIFlagArtificial | DIFlagObjectPointer)
!3614 = !DILocation(line: 0, scope: !3611)
!3615 = !DILocation(line: 245, column: 5, scope: !3611)
!3616 = !DILocation(line: 247, column: 10, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3611, file: !579, line: 247, column: 9)
!3618 = !DILocation(line: 247, column: 23, scope: !3617)
!3619 = !DILocation(line: 247, column: 9, scope: !3611)
!3620 = !DILocation(line: 248, column: 9, scope: !3617)
!3621 = !DILocation(line: 249, column: 1, scope: !3611)
!3622 = distinct !DISubprogram(name: "~BufferedSerial", linkageName: "_ZN6Cicada14BufferedSerialD0Ev", scope: !975, file: !681, line: 42, type: !1091, scopeLine: 42, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !3623, retainedNodes: !3624)
!3623 = !DISubprogram(name: "~BufferedSerial", scope: !975, type: !1091, containingType: !975, virtualIndex: 0, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!3624 = !{!3625}
!3625 = !DILocalVariable(name: "this", arg: 1, scope: !3622, type: !3626, flags: DIFlagArtificial | DIFlagObjectPointer)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 32)
!3627 = !DILocation(line: 0, scope: !3622)
!3628 = !DILocation(line: 42, column: 7, scope: !3622)
!3629 = distinct !DISubprogram(name: "bytesAvailable", linkageName: "_ZNK6Cicada14BufferedSerial14bytesAvailableEv", scope: !975, file: !973, line: 39, type: !1066, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !1065, retainedNodes: !3630)
!3630 = !{!3631, !3633}
!3631 = !DILocalVariable(name: "this", arg: 1, scope: !3629, type: !3632, flags: DIFlagArtificial | DIFlagObjectPointer)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 32)
!3633 = !DILocalVariable(name: "availableData", scope: !3629, file: !973, line: 42, type: !110)
!3634 = !DILocation(line: 0, scope: !3629)
!3635 = !DILocation(line: 41, column: 5, scope: !3629)
!3636 = !DILocation(line: 42, column: 26, scope: !3629)
!3637 = !DILocation(line: 42, column: 38, scope: !3629)
!3638 = !DILocation(line: 43, column: 5, scope: !3629)
!3639 = !DILocation(line: 45, column: 5, scope: !3629)
!3640 = distinct !DISubprogram(name: "spaceAvailable", linkageName: "_ZNK6Cicada14BufferedSerial14spaceAvailableEv", scope: !975, file: !973, line: 48, type: !1066, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !1070, retainedNodes: !3641)
!3641 = !{!3642, !3643}
!3642 = !DILocalVariable(name: "this", arg: 1, scope: !3640, type: !3632, flags: DIFlagArtificial | DIFlagObjectPointer)
!3643 = !DILocalVariable(name: "spaceAvailable", scope: !3640, file: !973, line: 51, type: !110)
!3644 = !DILocation(line: 0, scope: !3640)
!3645 = !DILocation(line: 50, column: 5, scope: !3640)
!3646 = !DILocation(line: 51, column: 27, scope: !3640)
!3647 = !DILocation(line: 51, column: 40, scope: !3640)
!3648 = !DILocation(line: 52, column: 5, scope: !3640)
!3649 = !DILocation(line: 54, column: 5, scope: !3640)
!3650 = distinct !DISubprogram(name: "read", linkageName: "_ZN6Cicada14BufferedSerial4readEPhy", scope: !975, file: !973, line: 57, type: !1072, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !1071, retainedNodes: !3651)
!3651 = !{!3652, !3653, !3654, !3655, !3656}
!3652 = !DILocalVariable(name: "this", arg: 1, scope: !3650, type: !3626, flags: DIFlagArtificial | DIFlagObjectPointer)
!3653 = !DILocalVariable(name: "data", arg: 2, scope: !3650, file: !973, line: 57, type: !45)
!3654 = !DILocalVariable(name: "size", arg: 3, scope: !3650, file: !973, line: 57, type: !110)
!3655 = !DILocalVariable(name: "avail", scope: !3650, file: !973, line: 59, type: !110)
!3656 = !DILocalVariable(name: "readCount", scope: !3650, file: !973, line: 63, type: !110)
!3657 = !DILocation(line: 0, scope: !3650)
!3658 = !DILocation(line: 59, column: 18, scope: !3650)
!3659 = !DILocation(line: 60, column: 14, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3650, file: !973, line: 60, column: 9)
!3661 = !DILocation(line: 60, column: 9, scope: !3650)
!3662 = !DILocation(line: 65, column: 22, scope: !3650)
!3663 = !DILocation(line: 65, column: 5, scope: !3650)
!3664 = !DILocation(line: 66, column: 29, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3650, file: !973, line: 65, column: 30)
!3666 = !DILocation(line: 66, column: 23, scope: !3665)
!3667 = !DILocation(line: 66, column: 9, scope: !3665)
!3668 = !DILocation(line: 66, column: 27, scope: !3665)
!3669 = distinct !{!3669, !3663, !3670, !1417, !1418}
!3670 = !DILocation(line: 67, column: 5, scope: !3650)
!3671 = !DILocation(line: 69, column: 5, scope: !3650)
!3672 = distinct !DISubprogram(name: "write", linkageName: "_ZN6Cicada14BufferedSerial5writeEPKhy", scope: !975, file: !973, line: 81, type: !1078, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !1077, retainedNodes: !3673)
!3673 = !{!3674, !3675, !3676, !3677, !3678}
!3674 = !DILocalVariable(name: "this", arg: 1, scope: !3672, type: !3626, flags: DIFlagArtificial | DIFlagObjectPointer)
!3675 = !DILocalVariable(name: "data", arg: 2, scope: !3672, file: !973, line: 81, type: !40)
!3676 = !DILocalVariable(name: "size", arg: 3, scope: !3672, file: !973, line: 81, type: !110)
!3677 = !DILocalVariable(name: "space", scope: !3672, file: !973, line: 83, type: !110)
!3678 = !DILocalVariable(name: "writeCount", scope: !3672, file: !973, line: 87, type: !110)
!3679 = !DILocation(line: 0, scope: !3672)
!3680 = !DILocation(line: 83, column: 18, scope: !3672)
!3681 = !DILocation(line: 84, column: 14, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3672, file: !973, line: 84, column: 9)
!3683 = !DILocation(line: 84, column: 9, scope: !3672)
!3684 = !DILocation(line: 89, column: 23, scope: !3672)
!3685 = !DILocation(line: 89, column: 5, scope: !3672)
!3686 = !DILocation(line: 90, column: 37, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3672, file: !973, line: 89, column: 31)
!3688 = !DILocation(line: 90, column: 22, scope: !3687)
!3689 = !DILocation(line: 90, column: 9, scope: !3687)
!3690 = distinct !{!3690, !3685, !3691, !1417, !1418}
!3691 = !DILocation(line: 91, column: 5, scope: !3672)
!3692 = !DILocation(line: 93, column: 5, scope: !3672)
!3693 = !DILocation(line: 95, column: 5, scope: !3672)
!3694 = distinct !DISubprogram(name: "read", linkageName: "_ZN6Cicada14BufferedSerial4readEv", scope: !975, file: !973, line: 72, type: !1075, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !1074, retainedNodes: !3695)
!3695 = !{!3696, !3697}
!3696 = !DILocalVariable(name: "this", arg: 1, scope: !3694, type: !3626, flags: DIFlagArtificial | DIFlagObjectPointer)
!3697 = !DILocalVariable(name: "c", scope: !3694, file: !973, line: 75, type: !42)
!3698 = !DILocation(line: 0, scope: !3694)
!3699 = !DILocation(line: 74, column: 5, scope: !3694)
!3700 = !DILocation(line: 75, column: 17, scope: !3694)
!3701 = !DILocation(line: 75, column: 29, scope: !3694)
!3702 = !DILocation(line: 76, column: 5, scope: !3694)
!3703 = !DILocation(line: 78, column: 5, scope: !3694)
!3704 = distinct !DISubprogram(name: "write", linkageName: "_ZN6Cicada14BufferedSerial5writeEPKh", scope: !975, file: !973, line: 98, type: !1081, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !1080, retainedNodes: !3705)
!3705 = !{!3706, !3707, !3708, !3709}
!3706 = !DILocalVariable(name: "this", arg: 1, scope: !3704, type: !3626, flags: DIFlagArtificial | DIFlagObjectPointer)
!3707 = !DILocalVariable(name: "data", arg: 2, scope: !3704, file: !973, line: 98, type: !40)
!3708 = !DILocalVariable(name: "space", scope: !3704, file: !973, line: 100, type: !110)
!3709 = !DILocalVariable(name: "writeCount", scope: !3704, file: !973, line: 102, type: !110)
!3710 = !DILocation(line: 0, scope: !3704)
!3711 = !DILocation(line: 100, column: 18, scope: !3704)
!3712 = !DILocation(line: 104, column: 12, scope: !3704)
!3713 = !DILocation(line: 104, column: 29, scope: !3704)
!3714 = !DILocation(line: 104, column: 37, scope: !3704)
!3715 = !DILocation(line: 104, column: 5, scope: !3704)
!3716 = !DILocation(line: 105, column: 37, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3704, file: !973, line: 104, column: 60)
!3718 = !DILocation(line: 105, column: 9, scope: !3717)
!3719 = distinct !{!3719, !3715, !3720, !1417, !1418}
!3720 = !DILocation(line: 106, column: 5, scope: !3704)
!3721 = !DILocation(line: 108, column: 5, scope: !3704)
!3722 = !DILocation(line: 110, column: 5, scope: !3704)
!3723 = distinct !DISubprogram(name: "write", linkageName: "_ZN6Cicada14BufferedSerial5writeEh", scope: !975, file: !973, line: 113, type: !1084, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !1083, retainedNodes: !3724)
!3724 = !{!3725, !3726}
!3725 = !DILocalVariable(name: "this", arg: 1, scope: !3723, type: !3626, flags: DIFlagArtificial | DIFlagObjectPointer)
!3726 = !DILocalVariable(name: "data", arg: 2, scope: !3723, file: !973, line: 113, type: !42)
!3727 = !DILocation(line: 0, scope: !3723)
!3728 = !DILocation(line: 115, column: 5, scope: !3723)
!3729 = !DILocation(line: 116, column: 5, scope: !3723)
!3730 = !DILocation(line: 117, column: 1, scope: !3723)
!3731 = distinct !DISubprogram(name: "canReadLine", linkageName: "_ZNK6Cicada14BufferedSerial11canReadLineEv", scope: !975, file: !973, line: 126, type: !1087, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !1086, retainedNodes: !3732)
!3732 = !{!3733, !3734}
!3733 = !DILocalVariable(name: "this", arg: 1, scope: !3731, type: !3632, flags: DIFlagArtificial | DIFlagObjectPointer)
!3734 = !DILocalVariable(name: "lines", scope: !3731, file: !973, line: 129, type: !110)
!3735 = !DILocation(line: 0, scope: !3731)
!3736 = !DILocation(line: 128, column: 5, scope: !3731)
!3737 = !DILocation(line: 129, column: 18, scope: !3731)
!3738 = !DILocation(line: 129, column: 30, scope: !3731)
!3739 = !DILocation(line: 130, column: 5, scope: !3731)
!3740 = !DILocation(line: 132, column: 18, scope: !3731)
!3741 = !DILocation(line: 132, column: 5, scope: !3731)
!3742 = distinct !DISubprogram(name: "readLine", linkageName: "_ZN6Cicada14BufferedSerial8readLineEPhy", scope: !975, file: !973, line: 135, type: !1072, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !1089, retainedNodes: !3743)
!3743 = !{!3744, !3745, !3746, !3747, !3748}
!3744 = !DILocalVariable(name: "this", arg: 1, scope: !3742, type: !3626, flags: DIFlagArtificial | DIFlagObjectPointer)
!3745 = !DILocalVariable(name: "data", arg: 2, scope: !3742, file: !973, line: 135, type: !45)
!3746 = !DILocalVariable(name: "size", arg: 3, scope: !3742, file: !973, line: 135, type: !110)
!3747 = !DILocalVariable(name: "readCount", scope: !3742, file: !973, line: 137, type: !110)
!3748 = !DILocalVariable(name: "c", scope: !3742, file: !973, line: 138, type: !42)
!3749 = !DILocation(line: 0, scope: !3742)
!3750 = !DILocation(line: 140, column: 14, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3742, file: !973, line: 140, column: 9)
!3752 = !DILocation(line: 140, column: 9, scope: !3742)
!3753 = !DILocation(line: 143, column: 12, scope: !3742)
!3754 = !DILocation(line: 143, column: 5, scope: !3742)
!3755 = !DILocation(line: 144, column: 13, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3742, file: !973, line: 143, column: 43)
!3757 = !DILocation(line: 145, column: 23, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3756, file: !973, line: 145, column: 13)
!3759 = !DILocation(line: 145, column: 13, scope: !3756)
!3760 = !DILocation(line: 146, column: 27, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3758, file: !973, line: 145, column: 35)
!3762 = !DILocation(line: 146, column: 13, scope: !3761)
!3763 = !DILocation(line: 146, column: 31, scope: !3761)
!3764 = !DILocation(line: 147, column: 9, scope: !3761)
!3765 = !DILocation(line: 143, column: 29, scope: !3742)
!3766 = distinct !{!3766, !3754, !3767, !1417, !1418}
!3767 = !DILocation(line: 148, column: 5, scope: !3742)
!3768 = !DILocation(line: 149, column: 5, scope: !3742)
!3769 = !DILocation(line: 149, column: 21, scope: !3742)
!3770 = !DILocation(line: 151, column: 5, scope: !3742)
!3771 = !DILocation(line: 152, column: 1, scope: !3742)
!3772 = distinct !DISubprogram(name: "flushReceiveBuffers", linkageName: "_ZN6Cicada14BufferedSerial19flushReceiveBuffersEv", scope: !975, file: !973, line: 154, type: !1091, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !1090, retainedNodes: !3773)
!3773 = !{!3774}
!3774 = !DILocalVariable(name: "this", arg: 1, scope: !3772, type: !3626, flags: DIFlagArtificial | DIFlagObjectPointer)
!3775 = !DILocation(line: 0, scope: !3772)
!3776 = !DILocation(line: 156, column: 5, scope: !3772)
!3777 = !DILocation(line: 157, column: 5, scope: !3772)
!3778 = !DILocation(line: 157, column: 17, scope: !3772)
!3779 = !DILocation(line: 158, column: 5, scope: !3772)
!3780 = !DILocation(line: 159, column: 1, scope: !3772)
!3781 = distinct !DISubprogram(name: "readBufferSize", linkageName: "_ZN6Cicada14BufferedSerial14readBufferSizeEv", scope: !975, file: !973, line: 161, type: !1094, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !1093, retainedNodes: !3782)
!3782 = !{!3783}
!3783 = !DILocalVariable(name: "this", arg: 1, scope: !3781, type: !3626, flags: DIFlagArtificial | DIFlagObjectPointer)
!3784 = !DILocation(line: 0, scope: !3781)
!3785 = !DILocation(line: 163, column: 12, scope: !3781)
!3786 = !DILocation(line: 163, column: 24, scope: !3781)
!3787 = !DILocation(line: 163, column: 5, scope: !3781)
!3788 = distinct !DISubprogram(name: "writeBufferSize", linkageName: "_ZN6Cicada14BufferedSerial15writeBufferSizeEv", scope: !975, file: !973, line: 166, type: !1094, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !1096, retainedNodes: !3789)
!3789 = !{!3790}
!3790 = !DILocalVariable(name: "this", arg: 1, scope: !3788, type: !3626, flags: DIFlagArtificial | DIFlagObjectPointer)
!3791 = !DILocation(line: 0, scope: !3788)
!3792 = !DILocation(line: 168, column: 12, scope: !3788)
!3793 = !DILocation(line: 168, column: 25, scope: !3788)
!3794 = !DILocation(line: 168, column: 5, scope: !3788)
!3795 = distinct !DISubprogram(linkageName: "_ZThn4_N6Cicada14BufferedSerialD1Ev", scope: !681, file: !681, line: 42, type: !3393, flags: DIFlagArtificial | DIFlagThunk | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, retainedNodes: !374)
!3796 = !DILocation(line: 0, scope: !3795)
!3797 = distinct !DISubprogram(linkageName: "_ZThn4_N6Cicada14BufferedSerialD0Ev", scope: !681, file: !681, line: 42, type: !3393, flags: DIFlagArtificial | DIFlagThunk | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, retainedNodes: !374)
!3798 = !DILocation(line: 0, scope: !3797)
!3799 = distinct !DISubprogram(name: "size", linkageName: "_ZNK6Cicada14CircularBufferIcE4sizeEv", scope: !983, file: !984, line: 190, type: !1021, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !1024, retainedNodes: !3800)
!3800 = !{!3801}
!3801 = !DILocalVariable(name: "this", arg: 1, scope: !3799, type: !3467, flags: DIFlagArtificial | DIFlagObjectPointer)
!3802 = !DILocation(line: 0, scope: !3799)
!3803 = !DILocation(line: 192, column: 16, scope: !3799)
!3804 = !{!3471, !3472, i64 32}
!3805 = !DILocation(line: 192, column: 9, scope: !3799)
!3806 = distinct !DISubprogram(name: "flush", linkageName: "_ZN6Cicada18LineCircularBuffer5flushEv", scope: !979, file: !980, line: 123, type: !1055, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !1054, retainedNodes: !3807)
!3807 = !{!3808}
!3808 = !DILocalVariable(name: "this", arg: 1, scope: !3806, type: !3809, flags: DIFlagArtificial | DIFlagObjectPointer)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 32)
!3810 = !DILocation(line: 0, scope: !3806)
!3811 = !DILocation(line: 125, column: 9, scope: !3806)
!3812 = !DILocation(line: 125, column: 24, scope: !3806)
!3813 = !{!3814, !1371, i64 44}
!3814 = !{!"_ZTSN6Cicada18LineCircularBufferE", !1371, i64 44}
!3815 = !DILocation(line: 126, column: 25, scope: !3806)
!3816 = !DILocation(line: 127, column: 5, scope: !3806)
!3817 = distinct !DISubprogram(name: "flush", linkageName: "_ZN6Cicada14CircularBufferIcE5flushEv", scope: !983, file: !984, line: 148, type: !998, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !1013, retainedNodes: !3818)
!3818 = !{!3819}
!3819 = !DILocalVariable(name: "this", arg: 1, scope: !3817, type: !3489, flags: DIFlagArtificial | DIFlagObjectPointer)
!3820 = !DILocation(line: 0, scope: !3817)
!3821 = !DILocation(line: 150, column: 9, scope: !3817)
!3822 = !DILocation(line: 153, column: 5, scope: !3817)
!3823 = !DILocation(line: 151, column: 19, scope: !3817)
!3824 = distinct !DISubprogram(name: "numBufferedLines", linkageName: "_ZNK6Cicada18LineCircularBuffer16numBufferedLinesEv", scope: !979, file: !980, line: 97, type: !1049, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !1048, retainedNodes: !3825)
!3825 = !{!3826}
!3826 = !DILocalVariable(name: "this", arg: 1, scope: !3824, type: !3827, flags: DIFlagArtificial | DIFlagObjectPointer)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 32)
!3828 = !DILocation(line: 0, scope: !3824)
!3829 = !DILocation(line: 99, column: 16, scope: !3824)
!3830 = !DILocation(line: 99, column: 9, scope: !3824)
!3831 = distinct !DISubprogram(name: "copyToBuffer", linkageName: "_ZN6Cicada14BufferedSerial12copyToBufferEh", scope: !975, file: !973, line: 119, type: !1084, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !1098, retainedNodes: !3832)
!3832 = !{!3833, !3834}
!3833 = !DILocalVariable(name: "this", arg: 1, scope: !3831, type: !3626, flags: DIFlagArtificial | DIFlagObjectPointer)
!3834 = !DILocalVariable(name: "data", arg: 2, scope: !3831, file: !973, line: 119, type: !42)
!3835 = !DILocation(line: 0, scope: !3831)
!3836 = !DILocation(line: 121, column: 5, scope: !3831)
!3837 = !DILocation(line: 122, column: 5, scope: !3831)
!3838 = !DILocation(line: 122, column: 18, scope: !3831)
!3839 = !DILocation(line: 123, column: 5, scope: !3831)
!3840 = !DILocation(line: 124, column: 1, scope: !3831)
!3841 = distinct !DISubprogram(name: "push", linkageName: "_ZN6Cicada18LineCircularBuffer4pushEc", scope: !979, file: !980, line: 60, type: !1040, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !1039, retainedNodes: !3842)
!3842 = !{!3843, !3844}
!3843 = !DILocalVariable(name: "this", arg: 1, scope: !3841, type: !3809, flags: DIFlagArtificial | DIFlagObjectPointer)
!3844 = !DILocalVariable(name: "data", arg: 2, scope: !3841, file: !980, line: 60, type: !149)
!3845 = !DILocation(line: 0, scope: !3841)
!3846 = !DILocation(line: 62, column: 31, scope: !3841)
!3847 = !DILocation(line: 64, column: 18, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3841, file: !980, line: 64, column: 13)
!3849 = !DILocation(line: 64, column: 13, scope: !3841)
!3850 = !DILocation(line: 65, column: 13, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3848, file: !980, line: 64, column: 27)
!3852 = !DILocation(line: 65, column: 27, scope: !3851)
!3853 = !DILocation(line: 66, column: 9, scope: !3851)
!3854 = !DILocation(line: 67, column: 5, scope: !3841)
!3855 = distinct !DISubprogram(name: "push", linkageName: "_ZN6Cicada14CircularBufferIcE4pushEc", scope: !983, file: !984, line: 88, type: !1004, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !1003, retainedNodes: !3856)
!3856 = !{!3857, !3858}
!3857 = !DILocalVariable(name: "this", arg: 1, scope: !3855, type: !3489, flags: DIFlagArtificial | DIFlagObjectPointer)
!3858 = !DILocalVariable(name: "data", arg: 2, scope: !3855, file: !984, line: 88, type: !149)
!3859 = !DILocation(line: 0, scope: !3855)
!3860 = !DILocation(line: 90, column: 9, scope: !3855)
!3861 = !{!3471, !1261, i64 40}
!3862 = !DILocation(line: 90, column: 17, scope: !3855)
!3863 = !{!3471, !3472, i64 8}
!3864 = !DILocation(line: 90, column: 29, scope: !3855)
!3865 = !DILocation(line: 91, column: 9, scope: !3855)
!3866 = !DILocation(line: 92, column: 13, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3855, file: !984, line: 92, column: 13)
!3868 = !DILocation(line: 92, column: 30, scope: !3867)
!3869 = !DILocation(line: 92, column: 28, scope: !3867)
!3870 = !DILocation(line: 92, column: 13, scope: !3855)
!3871 = !DILocation(line: 93, column: 27, scope: !3867)
!3872 = !DILocation(line: 93, column: 13, scope: !3867)
!3873 = !DILocation(line: 94, column: 5, scope: !3855)
!3874 = distinct !DISubprogram(name: "incrementOrResetHead", linkageName: "_ZN6Cicada14CircularBufferIcE20incrementOrResetHeadERy", scope: !983, file: !984, line: 202, type: !1026, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !1025, retainedNodes: !3875)
!3875 = !{!3876, !3877}
!3876 = !DILocalVariable(name: "this", arg: 1, scope: !3874, type: !3489, flags: DIFlagArtificial | DIFlagObjectPointer)
!3877 = !DILocalVariable(name: "head", arg: 2, scope: !3874, file: !984, line: 202, type: !1028)
!3878 = !DILocation(line: 0, scope: !3874)
!3879 = !DILocation(line: 204, column: 13, scope: !3874)
!3880 = !{!3472, !3472, i64 0}
!3881 = !DILocation(line: 205, column: 21, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3874, file: !984, line: 205, column: 13)
!3883 = !DILocation(line: 205, column: 18, scope: !3882)
!3884 = !DILocation(line: 205, column: 13, scope: !3874)
!3885 = !DILocation(line: 207, column: 5, scope: !3874)
!3886 = distinct !DISubprogram(name: "pull", linkageName: "_ZN6Cicada18LineCircularBuffer4pullEv", scope: !979, file: !980, line: 83, type: !1046, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !1045, retainedNodes: !3887)
!3887 = !{!3888, !3889}
!3888 = !DILocalVariable(name: "this", arg: 1, scope: !3886, type: !3809, flags: DIFlagArtificial | DIFlagObjectPointer)
!3889 = !DILocalVariable(name: "data", scope: !3886, file: !980, line: 85, type: !149)
!3890 = !DILocation(line: 0, scope: !3886)
!3891 = !DILocation(line: 85, column: 43, scope: !3886)
!3892 = !DILocation(line: 87, column: 18, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3886, file: !980, line: 87, column: 13)
!3894 = !DILocation(line: 87, column: 13, scope: !3886)
!3895 = !DILocation(line: 88, column: 13, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3893, file: !980, line: 87, column: 27)
!3897 = !DILocation(line: 88, column: 27, scope: !3896)
!3898 = !DILocation(line: 89, column: 9, scope: !3896)
!3899 = !DILocation(line: 91, column: 9, scope: !3886)
!3900 = distinct !DISubprogram(name: "pull", linkageName: "_ZN6Cicada14CircularBufferIcE4pullEv", scope: !983, file: !984, line: 124, type: !1010, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !1009, retainedNodes: !3901)
!3901 = !{!3902, !3903}
!3902 = !DILocalVariable(name: "this", arg: 1, scope: !3900, type: !3489, flags: DIFlagArtificial | DIFlagObjectPointer)
!3903 = !DILocalVariable(name: "data", scope: !3900, file: !984, line: 126, type: !149)
!3904 = !DILocation(line: 0, scope: !3900)
!3905 = !DILocation(line: 126, column: 18, scope: !3900)
!3906 = !DILocation(line: 126, column: 26, scope: !3900)
!3907 = !{!3471, !3472, i64 16}
!3908 = !DILocation(line: 127, column: 9, scope: !3900)
!3909 = !DILocation(line: 128, column: 13, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3900, file: !984, line: 128, column: 13)
!3911 = !DILocation(line: 128, column: 28, scope: !3910)
!3912 = !DILocation(line: 128, column: 13, scope: !3900)
!3913 = !DILocation(line: 129, column: 27, scope: !3910)
!3914 = !DILocation(line: 129, column: 13, scope: !3910)
!3915 = !DILocation(line: 131, column: 9, scope: !3900)
!3916 = distinct !DISubprogram(name: "spaceAvailable", linkageName: "_ZNK6Cicada14CircularBufferIcE14spaceAvailableEv", scope: !983, file: !984, line: 182, type: !1021, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !1023, retainedNodes: !3917)
!3917 = !{!3918}
!3918 = !DILocalVariable(name: "this", arg: 1, scope: !3916, type: !3467, flags: DIFlagArtificial | DIFlagObjectPointer)
!3919 = !DILocation(line: 0, scope: !3916)
!3920 = !DILocation(line: 184, column: 16, scope: !3916)
!3921 = !DILocation(line: 184, column: 30, scope: !3916)
!3922 = !DILocation(line: 184, column: 28, scope: !3916)
!3923 = !DILocation(line: 184, column: 9, scope: !3916)
!3924 = distinct !DISubprogram(name: "BufferedSerial", linkageName: "_ZN6Cicada14BufferedSerialC2EPcS1_yy", scope: !975, file: !973, line: 30, type: !1059, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !1058, retainedNodes: !3925)
!3925 = !{!3926, !3927, !3928, !3929, !3930}
!3926 = !DILocalVariable(name: "this", arg: 1, scope: !3924, type: !3626, flags: DIFlagArtificial | DIFlagObjectPointer)
!3927 = !DILocalVariable(name: "readBuffer", arg: 2, scope: !3924, file: !973, line: 31, type: !322)
!3928 = !DILocalVariable(name: "writeBuffer", arg: 3, scope: !3924, file: !973, line: 31, type: !322)
!3929 = !DILocalVariable(name: "readBufferSize", arg: 4, scope: !3924, file: !973, line: 31, type: !110)
!3930 = !DILocalVariable(name: "writeBufferSize", arg: 5, scope: !3924, file: !973, line: 31, type: !110)
!3931 = !DILocation(line: 0, scope: !3924)
!3932 = !DILocation(line: 33, column: 1, scope: !3924)
!3933 = !DILocation(line: 30, column: 17, scope: !3924)
!3934 = !DILocation(line: 32, column: 5, scope: !3924)
!3935 = !DILocation(line: 32, column: 46, scope: !3924)
!3936 = !DILocation(line: 33, column: 2, scope: !3924)
!3937 = distinct !DISubprogram(name: "IBufferedSerial", linkageName: "_ZN6Cicada15IBufferedSerialC2Ev", scope: !95, file: !96, line: 39, type: !161, scopeLine: 39, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !3938, retainedNodes: !3939)
!3938 = !DISubprogram(name: "IBufferedSerial", scope: !95, type: !161, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3939 = !{!3940}
!3940 = !DILocalVariable(name: "this", arg: 1, scope: !3937, type: !3495, flags: DIFlagArtificial | DIFlagObjectPointer)
!3941 = !DILocation(line: 0, scope: !3937)
!3942 = !DILocation(line: 39, column: 7, scope: !3937)
!3943 = distinct !DISubprogram(name: "LineCircularBuffer", linkageName: "_ZN6Cicada18LineCircularBufferC2EPcy", scope: !979, file: !980, line: 41, type: !1033, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !1032, retainedNodes: !3944)
!3944 = !{!3945, !3946, !3947}
!3945 = !DILocalVariable(name: "this", arg: 1, scope: !3943, type: !3809, flags: DIFlagArtificial | DIFlagObjectPointer)
!3946 = !DILocalVariable(name: "buffer", arg: 2, scope: !3943, file: !980, line: 41, type: !322)
!3947 = !DILocalVariable(name: "bufferSize", arg: 3, scope: !3943, file: !980, line: 41, type: !110)
!3948 = !DILocation(line: 0, scope: !3943)
!3949 = !DILocation(line: 44, column: 5, scope: !3943)
!3950 = !DILocation(line: 42, column: 9, scope: !3943)
!3951 = !DILocation(line: 43, column: 9, scope: !3943)
!3952 = !DILocation(line: 44, column: 7, scope: !3943)
!3953 = distinct !DISubprogram(name: "CircularBuffer", linkageName: "_ZN6Cicada14CircularBufferIcEC2EPcy", scope: !983, file: !984, line: 48, type: !994, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !993, retainedNodes: !3954)
!3954 = !{!3955, !3956, !3957}
!3955 = !DILocalVariable(name: "this", arg: 1, scope: !3953, type: !3489, flags: DIFlagArtificial | DIFlagObjectPointer)
!3956 = !DILocalVariable(name: "buffer", arg: 2, scope: !3953, file: !984, line: 48, type: !322)
!3957 = !DILocalVariable(name: "bufferSize", arg: 3, scope: !3953, file: !984, line: 48, type: !110)
!3958 = !DILocation(line: 0, scope: !3953)
!3959 = !DILocation(line: 54, column: 5, scope: !3953)
!3960 = !DILocation(line: 49, column: 9, scope: !3953)
!3961 = !DILocation(line: 52, column: 9, scope: !3953)
!3962 = !DILocation(line: 50, column: 9, scope: !3953)
!3963 = !DILocation(line: 53, column: 9, scope: !3953)
!3964 = !DILocation(line: 54, column: 7, scope: !3953)
!3965 = distinct !DISubprogram(name: "~LineCircularBuffer", linkageName: "_ZN6Cicada18LineCircularBufferD0Ev", scope: !979, file: !980, line: 38, type: !1055, scopeLine: 38, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !3966, retainedNodes: !3967)
!3966 = !DISubprogram(name: "~LineCircularBuffer", scope: !979, type: !1055, containingType: !979, virtualIndex: 0, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!3967 = !{!3968}
!3968 = !DILocalVariable(name: "this", arg: 1, scope: !3965, type: !3809, flags: DIFlagArtificial | DIFlagObjectPointer)
!3969 = !DILocation(line: 0, scope: !3965)
!3970 = !DILocation(line: 38, column: 7, scope: !3965)
!3971 = distinct !DISubprogram(name: "push", linkageName: "_ZN6Cicada18LineCircularBuffer4pushEPKcy", scope: !979, file: !980, line: 46, type: !1037, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !1036, retainedNodes: !3972)
!3972 = !{!3973, !3974, !3975, !3976}
!3973 = !DILocalVariable(name: "this", arg: 1, scope: !3971, type: !3809, flags: DIFlagArtificial | DIFlagObjectPointer)
!3974 = !DILocalVariable(name: "data", arg: 2, scope: !3971, file: !980, line: 46, type: !147)
!3975 = !DILocalVariable(name: "size", arg: 3, scope: !3971, file: !980, line: 46, type: !110)
!3976 = !DILocalVariable(name: "writeCount", scope: !3971, file: !980, line: 51, type: !110)
!3977 = !DILocation(line: 0, scope: !3971)
!3978 = !DILocation(line: 48, column: 42, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3971, file: !980, line: 48, column: 13)
!3980 = !DILocation(line: 48, column: 18, scope: !3979)
!3981 = !DILocation(line: 48, column: 13, scope: !3971)
!3982 = !DILocation(line: 49, column: 42, scope: !3979)
!3983 = !DILocation(line: 49, column: 13, scope: !3979)
!3984 = !DILocation(line: 53, column: 27, scope: !3971)
!3985 = !DILocation(line: 53, column: 9, scope: !3971)
!3986 = !DILocation(line: 54, column: 33, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3971, file: !980, line: 53, column: 35)
!3988 = !DILocation(line: 54, column: 18, scope: !3987)
!3989 = !DILocation(line: 54, column: 13, scope: !3987)
!3990 = distinct !{!3990, !3985, !3991, !1417, !1418}
!3991 = !DILocation(line: 55, column: 9, scope: !3971)
!3992 = !DILocation(line: 57, column: 9, scope: !3971)
!3993 = distinct !DISubprogram(name: "pull", linkageName: "_ZN6Cicada18LineCircularBuffer4pullEPcy", scope: !979, file: !980, line: 69, type: !1043, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !1042, retainedNodes: !3994)
!3994 = !{!3995, !3996, !3997, !3998}
!3995 = !DILocalVariable(name: "this", arg: 1, scope: !3993, type: !3809, flags: DIFlagArtificial | DIFlagObjectPointer)
!3996 = !DILocalVariable(name: "data", arg: 2, scope: !3993, file: !980, line: 69, type: !322)
!3997 = !DILocalVariable(name: "size", arg: 3, scope: !3993, file: !980, line: 69, type: !110)
!3998 = !DILocalVariable(name: "readCount", scope: !3993, file: !980, line: 74, type: !110)
!3999 = !DILocation(line: 0, scope: !3993)
!4000 = !DILocation(line: 71, column: 42, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !3993, file: !980, line: 71, column: 13)
!4002 = !DILocation(line: 71, column: 18, scope: !4001)
!4003 = !DILocation(line: 71, column: 13, scope: !3993)
!4004 = !DILocation(line: 72, column: 42, scope: !4001)
!4005 = !DILocation(line: 72, column: 13, scope: !4001)
!4006 = !DILocation(line: 76, column: 26, scope: !3993)
!4007 = !DILocation(line: 76, column: 9, scope: !3993)
!4008 = !DILocation(line: 77, column: 33, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !3993, file: !980, line: 76, column: 34)
!4010 = !DILocation(line: 77, column: 27, scope: !4009)
!4011 = !DILocation(line: 77, column: 13, scope: !4009)
!4012 = !DILocation(line: 77, column: 31, scope: !4009)
!4013 = distinct !{!4013, !4007, !4014, !1417, !1418}
!4014 = !DILocation(line: 78, column: 9, scope: !3993)
!4015 = !DILocation(line: 80, column: 9, scope: !3993)
!4016 = distinct !DISubprogram(name: "read", linkageName: "_ZN6Cicada14CircularBufferIcE4readEv", scope: !983, file: !984, line: 140, type: !1010, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !1012, retainedNodes: !4017)
!4017 = !{!4018}
!4018 = !DILocalVariable(name: "this", arg: 1, scope: !4016, type: !3489, flags: DIFlagArtificial | DIFlagObjectPointer)
!4019 = !DILocation(line: 0, scope: !4016)
!4020 = !DILocation(line: 142, column: 16, scope: !4016)
!4021 = !DILocation(line: 142, column: 24, scope: !4016)
!4022 = !DILocation(line: 142, column: 9, scope: !4016)
!4023 = distinct !DISubprogram(name: "isEmpty", linkageName: "_ZNK6Cicada14CircularBufferIcE7isEmptyEv", scope: !983, file: !984, line: 158, type: !1015, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !1014, retainedNodes: !4024)
!4024 = !{!4025}
!4025 = !DILocalVariable(name: "this", arg: 1, scope: !4023, type: !3467, flags: DIFlagArtificial | DIFlagObjectPointer)
!4026 = !DILocation(line: 0, scope: !4023)
!4027 = !DILocation(line: 160, column: 16, scope: !4023)
!4028 = !DILocation(line: 160, column: 31, scope: !4023)
!4029 = !DILocation(line: 160, column: 9, scope: !4023)
!4030 = distinct !DISubprogram(name: "isFull", linkageName: "_ZNK6Cicada14CircularBufferIcE6isFullEv", scope: !983, file: !984, line: 166, type: !1015, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !1019, retainedNodes: !4031)
!4031 = !{!4032}
!4032 = !DILocalVariable(name: "this", arg: 1, scope: !4030, type: !3467, flags: DIFlagArtificial | DIFlagObjectPointer)
!4033 = !DILocation(line: 0, scope: !4030)
!4034 = !DILocation(line: 168, column: 16, scope: !4030)
!4035 = !DILocation(line: 168, column: 34, scope: !4030)
!4036 = !DILocation(line: 168, column: 31, scope: !4030)
!4037 = !DILocation(line: 168, column: 9, scope: !4030)
!4038 = distinct !DISubprogram(name: "~CircularBuffer", linkageName: "_ZN6Cicada14CircularBufferIcED0Ev", scope: !983, file: !984, line: 56, type: !998, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !997, retainedNodes: !4039)
!4039 = !{!4040}
!4040 = !DILocalVariable(name: "this", arg: 1, scope: !4038, type: !3489, flags: DIFlagArtificial | DIFlagObjectPointer)
!4041 = !DILocation(line: 0, scope: !4038)
!4042 = !DILocation(line: 57, column: 5, scope: !4038)
!4043 = !DILocation(line: 57, column: 7, scope: !4038)
!4044 = distinct !DISubprogram(name: "push", linkageName: "_ZN6Cicada14CircularBufferIcE4pushEPKcy", scope: !983, file: !984, line: 65, type: !1001, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !1000, retainedNodes: !4045)
!4045 = !{!4046, !4047, !4048, !4049}
!4046 = !DILocalVariable(name: "this", arg: 1, scope: !4044, type: !3489, flags: DIFlagArtificial | DIFlagObjectPointer)
!4047 = !DILocalVariable(name: "data", arg: 2, scope: !4044, file: !984, line: 65, type: !147)
!4048 = !DILocalVariable(name: "size", arg: 3, scope: !4044, file: !984, line: 65, type: !110)
!4049 = !DILocalVariable(name: "writeCount", scope: !4044, file: !984, line: 70, type: !110)
!4050 = !DILocation(line: 0, scope: !4044)
!4051 = !DILocation(line: 67, column: 20, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4044, file: !984, line: 67, column: 13)
!4053 = !DILocation(line: 67, column: 18, scope: !4052)
!4054 = !DILocation(line: 67, column: 13, scope: !4044)
!4055 = !DILocation(line: 68, column: 20, scope: !4052)
!4056 = !DILocation(line: 68, column: 13, scope: !4052)
!4057 = !DILocation(line: 72, column: 27, scope: !4044)
!4058 = !DILocation(line: 72, column: 9, scope: !4044)
!4059 = !DILocation(line: 73, column: 50, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !4044, file: !984, line: 72, column: 35)
!4061 = !DILocation(line: 73, column: 35, scope: !4060)
!4062 = !DILocation(line: 73, column: 13, scope: !4060)
!4063 = !DILocation(line: 73, column: 21, scope: !4060)
!4064 = !DILocation(line: 73, column: 33, scope: !4060)
!4065 = !DILocation(line: 74, column: 13, scope: !4060)
!4066 = distinct !{!4066, !4058, !4067, !1417, !1418}
!4067 = !DILocation(line: 75, column: 9, scope: !4044)
!4068 = !DILocation(line: 76, column: 9, scope: !4044)
!4069 = !DILocation(line: 76, column: 24, scope: !4044)
!4070 = !DILocation(line: 78, column: 9, scope: !4044)
!4071 = distinct !DISubprogram(name: "pull", linkageName: "_ZN6Cicada14CircularBufferIcE4pullEPcy", scope: !983, file: !984, line: 102, type: !1007, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !1006, retainedNodes: !4072)
!4072 = !{!4073, !4074, !4075, !4076}
!4073 = !DILocalVariable(name: "this", arg: 1, scope: !4071, type: !3489, flags: DIFlagArtificial | DIFlagObjectPointer)
!4074 = !DILocalVariable(name: "data", arg: 2, scope: !4071, file: !984, line: 102, type: !322)
!4075 = !DILocalVariable(name: "size", arg: 3, scope: !4071, file: !984, line: 102, type: !110)
!4076 = !DILocalVariable(name: "readCount", scope: !4071, file: !984, line: 107, type: !110)
!4077 = !DILocation(line: 0, scope: !4071)
!4078 = !DILocation(line: 104, column: 20, scope: !4079)
!4079 = distinct !DILexicalBlock(scope: !4071, file: !984, line: 104, column: 13)
!4080 = !DILocation(line: 104, column: 18, scope: !4079)
!4081 = !DILocation(line: 104, column: 13, scope: !4071)
!4082 = !DILocation(line: 105, column: 20, scope: !4079)
!4083 = !DILocation(line: 105, column: 13, scope: !4079)
!4084 = !DILocation(line: 109, column: 26, scope: !4071)
!4085 = !DILocation(line: 109, column: 9, scope: !4071)
!4086 = !DILocation(line: 110, column: 33, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4071, file: !984, line: 109, column: 34)
!4088 = !DILocation(line: 110, column: 41, scope: !4087)
!4089 = !DILocation(line: 110, column: 27, scope: !4087)
!4090 = !DILocation(line: 110, column: 13, scope: !4087)
!4091 = !DILocation(line: 110, column: 31, scope: !4087)
!4092 = !DILocation(line: 111, column: 13, scope: !4087)
!4093 = distinct !{!4093, !4085, !4094, !1417, !1418}
!4094 = !DILocation(line: 112, column: 9, scope: !4071)
!4095 = !DILocation(line: 113, column: 9, scope: !4071)
!4096 = !DILocation(line: 113, column: 24, scope: !4071)
!4097 = !DILocation(line: 115, column: 9, scope: !4071)
!4098 = distinct !DISubprogram(name: "ICommDevice", linkageName: "_ZN6Cicada11ICommDeviceC2Ev", scope: !99, file: !100, line: 43, type: !104, scopeLine: 43, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !4099, retainedNodes: !4100)
!4099 = !DISubprogram(name: "ICommDevice", scope: !99, type: !104, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4100 = !{!4101}
!4101 = !DILocalVariable(name: "this", arg: 1, scope: !4098, type: !3509, flags: DIFlagArtificial | DIFlagObjectPointer)
!4102 = !DILocation(line: 0, scope: !4098)
!4103 = !DILocation(line: 43, column: 7, scope: !4098)
!4104 = distinct !DISubprogram(name: "ISerial", linkageName: "_ZN6Cicada7ISerialC2Ev", scope: !128, file: !129, line: 37, type: !133, scopeLine: 37, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !4105, retainedNodes: !4106)
!4105 = !DISubprogram(name: "ISerial", scope: !128, type: !133, flags: DIFlagPublic | DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4106 = !{!4107}
!4107 = !DILocalVariable(name: "this", arg: 1, scope: !4104, type: !3503, flags: DIFlagArtificial | DIFlagObjectPointer)
!4108 = !DILocation(line: 0, scope: !4104)
!4109 = !DILocation(line: 37, column: 7, scope: !4104)
!4110 = distinct !DISubprogram(name: "~IBufferedSerial", linkageName: "_ZN6Cicada15IBufferedSerialD0Ev", scope: !95, file: !96, line: 42, type: !161, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !160, retainedNodes: !4111)
!4111 = !{!4112}
!4112 = !DILocalVariable(name: "this", arg: 1, scope: !4110, type: !3495, flags: DIFlagArtificial | DIFlagObjectPointer)
!4113 = !DILocation(line: 0, scope: !4110)
!4114 = !DILocation(line: 42, column: 32, scope: !4110)
!4115 = distinct !DISubprogram(linkageName: "_ZThn4_N6Cicada15IBufferedSerialD1Ev", scope: !96, file: !96, line: 42, type: !3393, flags: DIFlagArtificial | DIFlagThunk | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, retainedNodes: !374)
!4116 = !DILocation(line: 0, scope: !4115)
!4117 = distinct !DISubprogram(linkageName: "_ZThn4_N6Cicada15IBufferedSerialD0Ev", scope: !96, file: !96, line: 42, type: !3393, flags: DIFlagArtificial | DIFlagThunk | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, retainedNodes: !374)
!4118 = !DILocation(line: 0, scope: !4117)
!4119 = distinct !DISubprogram(name: "~ISerial", linkageName: "_ZN6Cicada7ISerialD0Ev", scope: !128, file: !129, line: 40, type: !133, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !132, retainedNodes: !4120)
!4120 = !{!4121}
!4121 = !DILocalVariable(name: "this", arg: 1, scope: !4119, type: !3503, flags: DIFlagArtificial | DIFlagObjectPointer)
!4122 = !DILocation(line: 0, scope: !4119)
!4123 = !DILocation(line: 40, column: 24, scope: !4119)
!4124 = distinct !DISubprogram(name: "~ICommDevice", linkageName: "_ZN6Cicada11ICommDeviceD0Ev", scope: !99, file: !100, line: 46, type: !104, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !103, retainedNodes: !4125)
!4125 = !{!4126}
!4126 = !DILocalVariable(name: "this", arg: 1, scope: !4124, type: !3509, flags: DIFlagArtificial | DIFlagObjectPointer)
!4127 = !DILocation(line: 0, scope: !4124)
!4128 = !DILocation(line: 46, column: 28, scope: !4124)
!4129 = distinct !DISubprogram(name: "BufferedSerial", linkageName: "_ZN6Cicada14BufferedSerialC2EPcS1_y", scope: !975, file: !973, line: 35, type: !1063, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !1062, retainedNodes: !4130)
!4130 = !{!4131, !4132, !4133, !4134}
!4131 = !DILocalVariable(name: "this", arg: 1, scope: !4129, type: !3626, flags: DIFlagArtificial | DIFlagObjectPointer)
!4132 = !DILocalVariable(name: "readBuffer", arg: 2, scope: !4129, file: !973, line: 35, type: !322)
!4133 = !DILocalVariable(name: "writeBuffer", arg: 3, scope: !4129, file: !973, line: 35, type: !322)
!4134 = !DILocalVariable(name: "bufferSize", arg: 4, scope: !4129, file: !973, line: 35, type: !110)
!4135 = !DILocation(line: 0, scope: !4129)
!4136 = !DILocation(line: 37, column: 1, scope: !4129)
!4137 = !DILocation(line: 35, column: 17, scope: !4129)
!4138 = !DILocation(line: 36, column: 5, scope: !4129)
!4139 = !DILocation(line: 36, column: 42, scope: !4129)
!4140 = !DILocation(line: 37, column: 2, scope: !4129)
!4141 = distinct !DISubprogram(name: "transferToAndFromBuffer", linkageName: "_ZN6Cicada14BufferedSerial23transferToAndFromBufferEv", scope: !975, file: !973, line: 171, type: !1091, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !972, declaration: !1097, retainedNodes: !4142)
!4142 = !{!4143, !4144}
!4143 = !DILocalVariable(name: "this", arg: 1, scope: !4141, type: !3626, flags: DIFlagArtificial | DIFlagObjectPointer)
!4144 = !DILocalVariable(name: "data", scope: !4141, file: !973, line: 173, type: !42)
!4145 = !DILocation(line: 0, scope: !4141)
!4146 = !DILocation(line: 173, column: 5, scope: !4141)
!4147 = !DILocation(line: 174, column: 9, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4141, file: !973, line: 174, column: 9)
!4149 = !DILocation(line: 174, column: 23, scope: !4148)
!4150 = !DILocation(line: 174, column: 27, scope: !4148)
!4151 = !DILocation(line: 174, column: 39, scope: !4148)
!4152 = !DILocation(line: 174, column: 9, scope: !4141)
!4153 = !DILocation(line: 175, column: 26, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !4148, file: !973, line: 174, column: 49)
!4155 = !DILocation(line: 175, column: 21, scope: !4154)
!4156 = !DILocation(line: 176, column: 5, scope: !4154)
!4157 = !DILocation(line: 178, column: 9, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4141, file: !973, line: 178, column: 9)
!4159 = !DILocation(line: 178, column: 22, scope: !4158)
!4160 = !DILocation(line: 178, column: 9, scope: !4141)
!4161 = !DILocation(line: 179, column: 35, scope: !4162)
!4162 = distinct !DILexicalBlock(scope: !4163, file: !973, line: 179, column: 13)
!4163 = distinct !DILexicalBlock(scope: !4158, file: !973, line: 178, column: 40)
!4164 = !DILocation(line: 179, column: 13, scope: !4162)
!4165 = !DILocation(line: 179, column: 13, scope: !4163)
!4166 = !DILocation(line: 180, column: 26, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4162, file: !973, line: 179, column: 44)
!4168 = !DILocation(line: 181, column: 9, scope: !4167)
!4169 = !DILocation(line: 183, column: 1, scope: !4141)
!4170 = distinct !DISubprogram(name: "eDisableInterrupts", linkageName: "_Z18eDisableInterruptsv", scope: !1102, file: !1102, line: 27, type: !4, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1101, retainedNodes: !374)
!4171 = !DILocation(line: 142, column: 3, scope: !4172, inlinedAt: !4173)
!4172 = distinct !DISubprogram(name: "__disable_irq", linkageName: "_ZL13__disable_irqv", scope: !2565, file: !2565, line: 140, type: !4, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1101, retainedNodes: !374)
!4173 = distinct !DILocation(line: 29, column: 5, scope: !4170)
!4174 = !{i64 1184613}
!4175 = !DILocation(line: 30, column: 1, scope: !4170)
!4176 = distinct !DISubprogram(name: "eEnableInterrupts", linkageName: "_Z17eEnableInterruptsv", scope: !1102, file: !1102, line: 32, type: !4, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1101, retainedNodes: !374)
!4177 = !DILocation(line: 131, column: 3, scope: !4178, inlinedAt: !4179)
!4178 = distinct !DISubprogram(name: "__enable_irq", linkageName: "_ZL12__enable_irqv", scope: !2565, file: !2565, line: 129, type: !4, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1101, retainedNodes: !374)
!4179 = distinct !DILocation(line: 34, column: 5, scope: !4176)
!4180 = !{i64 1184341}
!4181 = !DILocation(line: 35, column: 1, scope: !4176)
!4182 = distinct !DISubprogram(name: "HAL_UART_Init", scope: !1104, file: !1104, line: 314, type: !4183, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !4185)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{!1506, !1129}
!4185 = !{!4186}
!4186 = !DILocalVariable(name: "huart", arg: 1, scope: !4182, file: !1104, line: 314, type: !1129)
!4187 = !DILocation(line: 0, scope: !4182)
!4188 = !DILocation(line: 317, column: 13, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4182, file: !1104, line: 317, column: 7)
!4190 = !DILocation(line: 317, column: 7, scope: !4182)
!4191 = !DILocation(line: 338, column: 14, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4182, file: !1104, line: 338, column: 7)
!4193 = !{!4194, !1450, i64 60}
!4194 = !{!"__UART_HandleTypeDef", !4195, i64 0, !2823, i64 4, !4195, i64 32, !4196, i64 36, !4196, i64 38, !4195, i64 40, !4196, i64 44, !4196, i64 46, !4195, i64 48, !4195, i64 52, !1450, i64 56, !1450, i64 60, !1450, i64 64, !1449, i64 68}
!4195 = !{!"any pointer", !1450, i64 0}
!4196 = !{!"short", !1450, i64 0}
!4197 = !DILocation(line: 338, column: 21, scope: !4192)
!4198 = !DILocation(line: 338, column: 7, scope: !4182)
!4199 = !DILocation(line: 341, column: 12, scope: !4200)
!4200 = distinct !DILexicalBlock(scope: !4192, file: !1104, line: 339, column: 3)
!4201 = !DILocation(line: 341, column: 17, scope: !4200)
!4202 = !{!4194, !1450, i64 56}
!4203 = !DILocation(line: 355, column: 5, scope: !4200)
!4204 = !DILocation(line: 357, column: 3, scope: !4200)
!4205 = !DILocation(line: 359, column: 17, scope: !4182)
!4206 = !DILocation(line: 362, column: 3, scope: !4182)
!4207 = !{!4194, !4195, i64 0}
!4208 = !DILocation(line: 365, column: 3, scope: !4182)
!4209 = !DILocation(line: 370, column: 3, scope: !4182)
!4210 = !DILocation(line: 371, column: 3, scope: !4182)
!4211 = !DILocation(line: 374, column: 3, scope: !4182)
!4212 = !DILocation(line: 377, column: 10, scope: !4182)
!4213 = !DILocation(line: 377, column: 20, scope: !4182)
!4214 = !{!4194, !1449, i64 68}
!4215 = !DILocation(line: 378, column: 17, scope: !4182)
!4216 = !DILocation(line: 379, column: 10, scope: !4182)
!4217 = !DILocation(line: 379, column: 18, scope: !4182)
!4218 = !{!4194, !1450, i64 64}
!4219 = !DILocation(line: 381, column: 3, scope: !4182)
!4220 = !DILocation(line: 382, column: 1, scope: !4182)
!4221 = distinct !DISubprogram(name: "HAL_UART_MspInit", scope: !1104, file: !1104, line: 672, type: !4222, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !4224)
!4222 = !DISubroutineType(types: !4223)
!4223 = !{null, !1129}
!4224 = !{!4225}
!4225 = !DILocalVariable(name: "huart", arg: 1, scope: !4221, file: !1104, line: 672, type: !1129)
!4226 = !DILocation(line: 0, scope: !4221)
!4227 = !DILocation(line: 679, column: 1, scope: !4221)
!4228 = distinct !DISubprogram(name: "UART_SetConfig", scope: !1104, file: !1104, line: 3063, type: !4222, scopeLine: 3064, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !4229)
!4229 = !{!4230, !4231, !4232}
!4230 = !DILocalVariable(name: "huart", arg: 1, scope: !4228, file: !1104, line: 3063, type: !1129)
!4231 = !DILocalVariable(name: "tmpreg", scope: !4228, file: !1104, line: 3065, type: !24)
!4232 = !DILocalVariable(name: "pclk", scope: !4228, file: !1104, line: 3066, type: !24)
!4233 = !DILocation(line: 0, scope: !4228)
!4234 = !DILocation(line: 3077, column: 3, scope: !4228)
!4235 = !{!4194, !1449, i64 12}
!4236 = !DILocation(line: 3092, column: 34, scope: !4228)
!4237 = !{!4194, !1449, i64 8}
!4238 = !DILocation(line: 3092, column: 59, scope: !4228)
!4239 = !{!4194, !1449, i64 16}
!4240 = !DILocation(line: 3092, column: 45, scope: !4228)
!4241 = !DILocation(line: 3092, column: 80, scope: !4228)
!4242 = !{!4194, !1449, i64 20}
!4243 = !DILocation(line: 3092, column: 66, scope: !4228)
!4244 = !DILocation(line: 3093, column: 3, scope: !4228)
!4245 = !DILocation(line: 3100, column: 3, scope: !4228)
!4246 = !{!4194, !1449, i64 24}
!4247 = !DILocation(line: 3134, column: 22, scope: !4248)
!4248 = distinct !DILexicalBlock(scope: !4228, file: !1104, line: 3134, column: 6)
!4249 = !DILocation(line: 3134, column: 6, scope: !4228)
!4250 = !DILocation(line: 3136, column: 12, scope: !4251)
!4251 = distinct !DILexicalBlock(scope: !4248, file: !1104, line: 3135, column: 3)
!4252 = !DILocation(line: 3138, column: 3, scope: !4251)
!4253 = !DILocation(line: 3141, column: 12, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4248, file: !1104, line: 3140, column: 3)
!4255 = !DILocation(line: 0, scope: !4248)
!4256 = !{!4194, !1449, i64 4}
!4257 = !DILocation(line: 3145, column: 1, scope: !4228)
!4258 = distinct !DISubprogram(name: "HAL_HalfDuplex_Init", scope: !1104, file: !1104, line: 391, type: !4183, scopeLine: 392, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !4259)
!4259 = !{!4260}
!4260 = !DILocalVariable(name: "huart", arg: 1, scope: !4258, file: !1104, line: 391, type: !1129)
!4261 = !DILocation(line: 0, scope: !4258)
!4262 = !DILocation(line: 394, column: 13, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4258, file: !1104, line: 394, column: 7)
!4264 = !DILocation(line: 394, column: 7, scope: !4258)
!4265 = !DILocation(line: 406, column: 14, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4258, file: !1104, line: 406, column: 7)
!4267 = !DILocation(line: 406, column: 21, scope: !4266)
!4268 = !DILocation(line: 406, column: 7, scope: !4258)
!4269 = !DILocation(line: 409, column: 12, scope: !4270)
!4270 = distinct !DILexicalBlock(scope: !4266, file: !1104, line: 407, column: 3)
!4271 = !DILocation(line: 409, column: 17, scope: !4270)
!4272 = !DILocation(line: 423, column: 5, scope: !4270)
!4273 = !DILocation(line: 425, column: 3, scope: !4270)
!4274 = !DILocation(line: 427, column: 17, scope: !4258)
!4275 = !DILocation(line: 430, column: 3, scope: !4258)
!4276 = !DILocation(line: 433, column: 3, scope: !4258)
!4277 = !DILocation(line: 438, column: 3, scope: !4258)
!4278 = !DILocation(line: 439, column: 3, scope: !4258)
!4279 = !DILocation(line: 442, column: 3, scope: !4258)
!4280 = !DILocation(line: 445, column: 3, scope: !4258)
!4281 = !DILocation(line: 448, column: 10, scope: !4258)
!4282 = !DILocation(line: 448, column: 20, scope: !4258)
!4283 = !DILocation(line: 449, column: 17, scope: !4258)
!4284 = !DILocation(line: 450, column: 10, scope: !4258)
!4285 = !DILocation(line: 450, column: 18, scope: !4258)
!4286 = !DILocation(line: 452, column: 3, scope: !4258)
!4287 = !DILocation(line: 453, column: 1, scope: !4258)
!4288 = distinct !DISubprogram(name: "HAL_LIN_Init", scope: !1104, file: !1104, line: 466, type: !4289, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !4291)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{!1506, !1129, !24}
!4291 = !{!4292, !4293}
!4292 = !DILocalVariable(name: "huart", arg: 1, scope: !4288, file: !1104, line: 466, type: !1129)
!4293 = !DILocalVariable(name: "BreakDetectLength", arg: 2, scope: !4288, file: !1104, line: 466, type: !24)
!4294 = !DILocation(line: 0, scope: !4288)
!4295 = !DILocation(line: 469, column: 13, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4288, file: !1104, line: 469, column: 7)
!4297 = !DILocation(line: 469, column: 7, scope: !4288)
!4298 = !DILocation(line: 484, column: 14, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4288, file: !1104, line: 484, column: 7)
!4300 = !DILocation(line: 484, column: 21, scope: !4299)
!4301 = !DILocation(line: 484, column: 7, scope: !4288)
!4302 = !DILocation(line: 487, column: 12, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4299, file: !1104, line: 485, column: 3)
!4304 = !DILocation(line: 487, column: 17, scope: !4303)
!4305 = !DILocation(line: 501, column: 5, scope: !4303)
!4306 = !DILocation(line: 503, column: 3, scope: !4303)
!4307 = !DILocation(line: 505, column: 17, scope: !4288)
!4308 = !DILocation(line: 508, column: 3, scope: !4288)
!4309 = !DILocation(line: 511, column: 3, scope: !4288)
!4310 = !DILocation(line: 516, column: 3, scope: !4288)
!4311 = !DILocation(line: 517, column: 3, scope: !4288)
!4312 = !DILocation(line: 520, column: 3, scope: !4288)
!4313 = !DILocation(line: 523, column: 3, scope: !4288)
!4314 = !DILocation(line: 524, column: 3, scope: !4288)
!4315 = !DILocation(line: 527, column: 3, scope: !4288)
!4316 = !DILocation(line: 530, column: 10, scope: !4288)
!4317 = !DILocation(line: 530, column: 20, scope: !4288)
!4318 = !DILocation(line: 531, column: 17, scope: !4288)
!4319 = !DILocation(line: 532, column: 10, scope: !4288)
!4320 = !DILocation(line: 532, column: 18, scope: !4288)
!4321 = !DILocation(line: 534, column: 3, scope: !4288)
!4322 = !DILocation(line: 535, column: 1, scope: !4288)
!4323 = distinct !DISubprogram(name: "HAL_MultiProcessor_Init", scope: !1104, file: !1104, line: 549, type: !4324, scopeLine: 550, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !4326)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{!1506, !1129, !42, !24}
!4326 = !{!4327, !4328, !4329}
!4327 = !DILocalVariable(name: "huart", arg: 1, scope: !4323, file: !1104, line: 549, type: !1129)
!4328 = !DILocalVariable(name: "Address", arg: 2, scope: !4323, file: !1104, line: 549, type: !42)
!4329 = !DILocalVariable(name: "WakeUpMethod", arg: 3, scope: !4323, file: !1104, line: 549, type: !24)
!4330 = !DILocation(line: 0, scope: !4323)
!4331 = !DILocation(line: 552, column: 13, scope: !4332)
!4332 = distinct !DILexicalBlock(scope: !4323, file: !1104, line: 552, column: 7)
!4333 = !DILocation(line: 552, column: 7, scope: !4323)
!4334 = !DILocation(line: 568, column: 14, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4323, file: !1104, line: 568, column: 7)
!4336 = !DILocation(line: 568, column: 21, scope: !4335)
!4337 = !DILocation(line: 568, column: 7, scope: !4323)
!4338 = !DILocation(line: 571, column: 12, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4335, file: !1104, line: 569, column: 3)
!4340 = !DILocation(line: 571, column: 17, scope: !4339)
!4341 = !DILocation(line: 585, column: 5, scope: !4339)
!4342 = !DILocation(line: 587, column: 3, scope: !4339)
!4343 = !DILocation(line: 589, column: 17, scope: !4323)
!4344 = !DILocation(line: 592, column: 3, scope: !4323)
!4345 = !DILocation(line: 595, column: 3, scope: !4323)
!4346 = !DILocation(line: 600, column: 3, scope: !4323)
!4347 = !DILocation(line: 601, column: 3, scope: !4323)
!4348 = !DILocation(line: 604, column: 3, scope: !4323)
!4349 = !DILocation(line: 605, column: 3, scope: !4323)
!4350 = !DILocation(line: 608, column: 3, scope: !4323)
!4351 = !DILocation(line: 609, column: 3, scope: !4323)
!4352 = !DILocation(line: 612, column: 3, scope: !4323)
!4353 = !DILocation(line: 615, column: 10, scope: !4323)
!4354 = !DILocation(line: 615, column: 20, scope: !4323)
!4355 = !DILocation(line: 616, column: 17, scope: !4323)
!4356 = !DILocation(line: 617, column: 10, scope: !4323)
!4357 = !DILocation(line: 617, column: 18, scope: !4323)
!4358 = !DILocation(line: 619, column: 3, scope: !4323)
!4359 = !DILocation(line: 620, column: 1, scope: !4323)
!4360 = distinct !DISubprogram(name: "HAL_UART_DeInit", scope: !1104, file: !1104, line: 628, type: !4183, scopeLine: 629, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !4361)
!4361 = !{!4362}
!4362 = !DILocalVariable(name: "huart", arg: 1, scope: !4360, file: !1104, line: 628, type: !1129)
!4363 = !DILocation(line: 0, scope: !4360)
!4364 = !DILocation(line: 631, column: 13, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4360, file: !1104, line: 631, column: 7)
!4366 = !DILocation(line: 631, column: 7, scope: !4360)
!4367 = !DILocation(line: 639, column: 10, scope: !4360)
!4368 = !DILocation(line: 639, column: 17, scope: !4360)
!4369 = !DILocation(line: 642, column: 3, scope: !4360)
!4370 = !DILocation(line: 653, column: 3, scope: !4360)
!4371 = !DILocation(line: 656, column: 10, scope: !4360)
!4372 = !DILocation(line: 656, column: 20, scope: !4360)
!4373 = !DILocation(line: 657, column: 17, scope: !4360)
!4374 = !DILocation(line: 658, column: 10, scope: !4360)
!4375 = !DILocation(line: 658, column: 18, scope: !4360)
!4376 = !DILocation(line: 661, column: 3, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4360, file: !1104, line: 661, column: 3)
!4378 = !DILocation(line: 663, column: 3, scope: !4360)
!4379 = !DILocation(line: 664, column: 1, scope: !4360)
!4380 = distinct !DISubprogram(name: "HAL_UART_MspDeInit", scope: !1104, file: !1104, line: 687, type: !4222, scopeLine: 688, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !4381)
!4381 = !{!4382}
!4382 = !DILocalVariable(name: "huart", arg: 1, scope: !4380, file: !1104, line: 687, type: !1129)
!4383 = !DILocation(line: 0, scope: !4380)
!4384 = !DILocation(line: 694, column: 1, scope: !4380)
!4385 = distinct !DISubprogram(name: "HAL_UART_Transmit", scope: !1104, file: !1104, line: 1027, type: !4386, scopeLine: 1028, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !4388)
!4386 = !DISubroutineType(types: !4387)
!4387 = !{!1506, !1129, !45, !37, !24}
!4388 = !{!4389, !4390, !4391, !4392, !4393, !4394}
!4389 = !DILocalVariable(name: "huart", arg: 1, scope: !4385, file: !1104, line: 1027, type: !1129)
!4390 = !DILocalVariable(name: "pData", arg: 2, scope: !4385, file: !1104, line: 1027, type: !45)
!4391 = !DILocalVariable(name: "Size", arg: 3, scope: !4385, file: !1104, line: 1027, type: !37)
!4392 = !DILocalVariable(name: "Timeout", arg: 4, scope: !4385, file: !1104, line: 1027, type: !24)
!4393 = !DILocalVariable(name: "tmp", scope: !4385, file: !1104, line: 1029, type: !1127)
!4394 = !DILocalVariable(name: "tickstart", scope: !4385, file: !1104, line: 1030, type: !24)
!4395 = !DILocation(line: 0, scope: !4385)
!4396 = !DILocation(line: 1033, column: 14, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4385, file: !1104, line: 1033, column: 7)
!4398 = !DILocation(line: 1033, column: 21, scope: !4397)
!4399 = !DILocation(line: 1033, column: 7, scope: !4385)
!4400 = !DILocation(line: 1035, column: 16, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4402, file: !1104, line: 1035, column: 9)
!4402 = distinct !DILexicalBlock(scope: !4397, file: !1104, line: 1034, column: 3)
!4403 = !DILocation(line: 1035, column: 25, scope: !4401)
!4404 = !DILocation(line: 1041, column: 5, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4406, file: !1104, line: 1041, column: 5)
!4406 = distinct !DILexicalBlock(scope: !4402, file: !1104, line: 1041, column: 5)
!4407 = !DILocation(line: 1041, column: 5, scope: !4406)
!4408 = !DILocation(line: 1041, column: 5, scope: !4409)
!4409 = distinct !DILexicalBlock(scope: !4405, file: !1104, line: 1041, column: 5)
!4410 = !DILocation(line: 1043, column: 12, scope: !4402)
!4411 = !DILocation(line: 1043, column: 22, scope: !4402)
!4412 = !DILocation(line: 1044, column: 19, scope: !4402)
!4413 = !DILocation(line: 1047, column: 17, scope: !4402)
!4414 = !DILocation(line: 1049, column: 12, scope: !4402)
!4415 = !DILocation(line: 1049, column: 23, scope: !4402)
!4416 = !{!4194, !4196, i64 36}
!4417 = !DILocation(line: 1050, column: 12, scope: !4402)
!4418 = !DILocation(line: 1050, column: 24, scope: !4402)
!4419 = !{!4194, !4196, i64 38}
!4420 = !DILocation(line: 1051, column: 19, scope: !4402)
!4421 = !DILocation(line: 1051, column: 31, scope: !4402)
!4422 = !DILocation(line: 1051, column: 5, scope: !4402)
!4423 = !DILocation(line: 1053, column: 25, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !4402, file: !1104, line: 1052, column: 5)
!4425 = !DILocation(line: 1054, column: 23, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !4424, file: !1104, line: 1054, column: 11)
!4427 = !DILocation(line: 1054, column: 34, scope: !4426)
!4428 = !DILocation(line: 0, scope: !4426)
!4429 = !DILocation(line: 1054, column: 11, scope: !4424)
!4430 = !DILocation(line: 1056, column: 13, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4426, file: !1104, line: 1055, column: 7)
!4432 = !DILocation(line: 1060, column: 15, scope: !4431)
!4433 = !DILocation(line: 1061, column: 32, scope: !4431)
!4434 = !{!4196, !4196, i64 0}
!4435 = !DILocation(line: 1061, column: 37, scope: !4431)
!4436 = !DILocation(line: 1061, column: 16, scope: !4431)
!4437 = !DILocation(line: 1061, column: 26, scope: !4431)
!4438 = !DILocation(line: 1061, column: 29, scope: !4431)
!4439 = !{!2823, !1449, i64 4}
!4440 = !DILocation(line: 1062, column: 25, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4431, file: !1104, line: 1062, column: 13)
!4442 = !DILocation(line: 1062, column: 32, scope: !4441)
!4443 = !DILocation(line: 1062, column: 13, scope: !4431)
!4444 = !DILocation(line: 1064, column: 17, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !4441, file: !1104, line: 1063, column: 9)
!4446 = !DILocation(line: 1065, column: 9, scope: !4445)
!4447 = !DILocation(line: 1068, column: 17, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4441, file: !1104, line: 1067, column: 9)
!4449 = !DILocation(line: 1073, column: 13, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4426, file: !1104, line: 1072, column: 7)
!4451 = !DILocation(line: 1077, column: 38, scope: !4450)
!4452 = !DILocation(line: 1077, column: 32, scope: !4450)
!4453 = !DILocation(line: 1077, column: 16, scope: !4450)
!4454 = !DILocation(line: 1077, column: 26, scope: !4450)
!4455 = !DILocation(line: 1077, column: 29, scope: !4450)
!4456 = distinct !{!4456, !4422, !4457, !1417, !1418}
!4457 = !DILocation(line: 1079, column: 5, scope: !4402)
!4458 = !DILocation(line: 1081, column: 9, scope: !4459)
!4459 = distinct !DILexicalBlock(scope: !4402, file: !1104, line: 1081, column: 9)
!4460 = !DILocation(line: 1081, column: 85, scope: !4459)
!4461 = !DILocation(line: 1081, column: 9, scope: !4402)
!4462 = !DILocation(line: 1087, column: 19, scope: !4402)
!4463 = !DILocation(line: 1090, column: 5, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4402, file: !1104, line: 1090, column: 5)
!4465 = !DILocation(line: 1092, column: 5, scope: !4402)
!4466 = !DILocation(line: 0, scope: !4397)
!4467 = !DILocation(line: 1098, column: 1, scope: !4385)
!4468 = distinct !DISubprogram(name: "UART_WaitOnFlagUntilTimeout", scope: !1104, file: !1104, line: 2690, type: !4469, scopeLine: 2691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !4471)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{!1506, !1129, !24, !1604, !24, !24}
!4471 = !{!4472, !4473, !4474, !4475, !4476}
!4472 = !DILocalVariable(name: "huart", arg: 1, scope: !4468, file: !1104, line: 2690, type: !1129)
!4473 = !DILocalVariable(name: "Flag", arg: 2, scope: !4468, file: !1104, line: 2690, type: !24)
!4474 = !DILocalVariable(name: "Status", arg: 3, scope: !4468, file: !1104, line: 2690, type: !1604)
!4475 = !DILocalVariable(name: "Tickstart", arg: 4, scope: !4468, file: !1104, line: 2690, type: !24)
!4476 = !DILocalVariable(name: "Timeout", arg: 5, scope: !4468, file: !1104, line: 2690, type: !24)
!4477 = !DILocation(line: 0, scope: !4468)
!4478 = !DILocation(line: 2693, column: 11, scope: !4468)
!4479 = !{!2823, !1449, i64 0}
!4480 = !DILocation(line: 2693, column: 3, scope: !4468)
!4481 = !DILocation(line: 2696, column: 9, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !4468, file: !1104, line: 2694, column: 3)
!4483 = !DILocation(line: 2698, column: 32, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4485, file: !1104, line: 2698, column: 11)
!4485 = distinct !DILexicalBlock(scope: !4486, file: !1104, line: 2697, column: 5)
!4486 = distinct !DILexicalBlock(scope: !4482, file: !1104, line: 2696, column: 9)
!4487 = !DILocation(line: 2698, column: 46, scope: !4484)
!4488 = !DILocation(line: 2698, column: 59, scope: !4484)
!4489 = !DILocation(line: 2698, column: 11, scope: !4485)
!4490 = !DILocation(line: 2701, column: 9, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4484, file: !1104, line: 2699, column: 7)
!4492 = !DILocation(line: 2702, column: 9, scope: !4491)
!4493 = !DILocation(line: 2704, column: 16, scope: !4491)
!4494 = !DILocation(line: 2704, column: 24, scope: !4491)
!4495 = !DILocation(line: 2705, column: 16, scope: !4491)
!4496 = !DILocation(line: 2705, column: 24, scope: !4491)
!4497 = !DILocation(line: 2708, column: 9, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !4491, file: !1104, line: 2708, column: 9)
!4499 = !DILocation(line: 2710, column: 9, scope: !4491)
!4500 = distinct !{!4500, !4480, !4501, !1417, !1418}
!4501 = !DILocation(line: 2713, column: 3, scope: !4468)
!4502 = !DILocation(line: 2715, column: 1, scope: !4468)
!4503 = distinct !DISubprogram(name: "HAL_UART_Receive", scope: !1104, file: !1104, line: 1112, type: !4386, scopeLine: 1113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !4504)
!4504 = !{!4505, !4506, !4507, !4508, !4509, !4510}
!4505 = !DILocalVariable(name: "huart", arg: 1, scope: !4503, file: !1104, line: 1112, type: !1129)
!4506 = !DILocalVariable(name: "pData", arg: 2, scope: !4503, file: !1104, line: 1112, type: !45)
!4507 = !DILocalVariable(name: "Size", arg: 3, scope: !4503, file: !1104, line: 1112, type: !37)
!4508 = !DILocalVariable(name: "Timeout", arg: 4, scope: !4503, file: !1104, line: 1112, type: !24)
!4509 = !DILocalVariable(name: "tmp", scope: !4503, file: !1104, line: 1114, type: !1127)
!4510 = !DILocalVariable(name: "tickstart", scope: !4503, file: !1104, line: 1115, type: !24)
!4511 = !DILocation(line: 0, scope: !4503)
!4512 = !DILocation(line: 1118, column: 14, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4503, file: !1104, line: 1118, column: 7)
!4514 = !DILocation(line: 1118, column: 22, scope: !4513)
!4515 = !DILocation(line: 1118, column: 7, scope: !4503)
!4516 = !DILocation(line: 1120, column: 16, scope: !4517)
!4517 = distinct !DILexicalBlock(scope: !4518, file: !1104, line: 1120, column: 9)
!4518 = distinct !DILexicalBlock(scope: !4513, file: !1104, line: 1119, column: 3)
!4519 = !DILocation(line: 1120, column: 25, scope: !4517)
!4520 = !DILocation(line: 1126, column: 5, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4522, file: !1104, line: 1126, column: 5)
!4522 = distinct !DILexicalBlock(scope: !4518, file: !1104, line: 1126, column: 5)
!4523 = !DILocation(line: 1126, column: 5, scope: !4522)
!4524 = !DILocation(line: 1126, column: 5, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4521, file: !1104, line: 1126, column: 5)
!4526 = !DILocation(line: 1128, column: 12, scope: !4518)
!4527 = !DILocation(line: 1128, column: 22, scope: !4518)
!4528 = !DILocation(line: 1129, column: 20, scope: !4518)
!4529 = !DILocation(line: 1132, column: 17, scope: !4518)
!4530 = !DILocation(line: 1134, column: 12, scope: !4518)
!4531 = !DILocation(line: 1134, column: 23, scope: !4518)
!4532 = !{!4194, !4196, i64 44}
!4533 = !DILocation(line: 1135, column: 12, scope: !4518)
!4534 = !DILocation(line: 1135, column: 24, scope: !4518)
!4535 = !{!4194, !4196, i64 46}
!4536 = !DILocation(line: 1138, column: 19, scope: !4518)
!4537 = !DILocation(line: 1138, column: 31, scope: !4518)
!4538 = !DILocation(line: 1138, column: 5, scope: !4518)
!4539 = !DILocation(line: 1140, column: 25, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !4518, file: !1104, line: 1139, column: 5)
!4541 = !DILocation(line: 1141, column: 23, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4540, file: !1104, line: 1141, column: 11)
!4543 = !DILocation(line: 1141, column: 34, scope: !4542)
!4544 = !DILocation(line: 0, scope: !4542)
!4545 = !DILocation(line: 1141, column: 11, scope: !4540)
!4546 = !DILocation(line: 1143, column: 13, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4542, file: !1104, line: 1142, column: 7)
!4548 = !DILocation(line: 1147, column: 15, scope: !4547)
!4549 = !DILocation(line: 1148, column: 25, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4547, file: !1104, line: 1148, column: 13)
!4551 = !DILocation(line: 1148, column: 32, scope: !4550)
!4552 = !DILocation(line: 1148, column: 13, scope: !4547)
!4553 = !DILocation(line: 1150, column: 36, scope: !4554)
!4554 = distinct !DILexicalBlock(scope: !4550, file: !1104, line: 1149, column: 9)
!4555 = !DILocation(line: 1150, column: 46, scope: !4554)
!4556 = !DILocation(line: 1150, column: 18, scope: !4554)
!4557 = !DILocation(line: 1150, column: 16, scope: !4554)
!4558 = !DILocation(line: 1151, column: 17, scope: !4554)
!4559 = !DILocation(line: 1152, column: 9, scope: !4554)
!4560 = !DILocation(line: 1155, column: 36, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4550, file: !1104, line: 1154, column: 9)
!4562 = !DILocation(line: 1155, column: 46, scope: !4561)
!4563 = !DILocation(line: 1155, column: 18, scope: !4561)
!4564 = !DILocation(line: 1155, column: 16, scope: !4561)
!4565 = !DILocation(line: 1156, column: 17, scope: !4561)
!4566 = !DILocation(line: 1162, column: 13, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4542, file: !1104, line: 1161, column: 7)
!4568 = !DILocation(line: 1166, column: 25, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4567, file: !1104, line: 1166, column: 13)
!4570 = !DILocation(line: 1166, column: 32, scope: !4569)
!4571 = !DILocation(line: 1166, column: 13, scope: !4567)
!4572 = !DILocation(line: 1168, column: 39, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4569, file: !1104, line: 1167, column: 9)
!4574 = !DILocation(line: 1168, column: 49, scope: !4573)
!4575 = !DILocation(line: 1168, column: 22, scope: !4573)
!4576 = !DILocation(line: 1168, column: 17, scope: !4573)
!4577 = !DILocation(line: 1168, column: 20, scope: !4573)
!4578 = !DILocation(line: 1169, column: 9, scope: !4573)
!4579 = !DILocation(line: 1172, column: 39, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4569, file: !1104, line: 1171, column: 9)
!4581 = !DILocation(line: 1172, column: 49, scope: !4580)
!4582 = !DILocation(line: 1172, column: 22, scope: !4580)
!4583 = !DILocation(line: 1172, column: 17, scope: !4580)
!4584 = !DILocation(line: 1172, column: 20, scope: !4580)
!4585 = distinct !{!4585, !4538, !4586, !1417, !1418}
!4586 = !DILocation(line: 1176, column: 5, scope: !4518)
!4587 = !DILocation(line: 1179, column: 20, scope: !4518)
!4588 = !DILocation(line: 1182, column: 5, scope: !4589)
!4589 = distinct !DILexicalBlock(scope: !4518, file: !1104, line: 1182, column: 5)
!4590 = !DILocation(line: 1184, column: 5, scope: !4518)
!4591 = !DILocation(line: 0, scope: !4513)
!4592 = !DILocation(line: 1190, column: 1, scope: !4503)
!4593 = distinct !DISubprogram(name: "HAL_UART_Transmit_IT", scope: !1104, file: !1104, line: 1203, type: !4594, scopeLine: 1204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !4596)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{!1506, !1129, !45, !37}
!4596 = !{!4597, !4598, !4599}
!4597 = !DILocalVariable(name: "huart", arg: 1, scope: !4593, file: !1104, line: 1203, type: !1129)
!4598 = !DILocalVariable(name: "pData", arg: 2, scope: !4593, file: !1104, line: 1203, type: !45)
!4599 = !DILocalVariable(name: "Size", arg: 3, scope: !4593, file: !1104, line: 1203, type: !37)
!4600 = !DILocation(line: 0, scope: !4593)
!4601 = !DILocation(line: 1206, column: 14, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4593, file: !1104, line: 1206, column: 7)
!4603 = !DILocation(line: 1206, column: 21, scope: !4602)
!4604 = !DILocation(line: 1206, column: 7, scope: !4593)
!4605 = !DILocation(line: 1208, column: 16, scope: !4606)
!4606 = distinct !DILexicalBlock(scope: !4607, file: !1104, line: 1208, column: 9)
!4607 = distinct !DILexicalBlock(scope: !4602, file: !1104, line: 1207, column: 3)
!4608 = !DILocation(line: 1208, column: 25, scope: !4606)
!4609 = !DILocation(line: 1214, column: 5, scope: !4610)
!4610 = distinct !DILexicalBlock(scope: !4611, file: !1104, line: 1214, column: 5)
!4611 = distinct !DILexicalBlock(scope: !4607, file: !1104, line: 1214, column: 5)
!4612 = !DILocation(line: 1214, column: 5, scope: !4611)
!4613 = !DILocation(line: 1214, column: 5, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4610, file: !1104, line: 1214, column: 5)
!4615 = !DILocation(line: 1216, column: 12, scope: !4607)
!4616 = !DILocation(line: 1216, column: 23, scope: !4607)
!4617 = !{!4194, !4195, i64 32}
!4618 = !DILocation(line: 1217, column: 12, scope: !4607)
!4619 = !DILocation(line: 1217, column: 23, scope: !4607)
!4620 = !DILocation(line: 1218, column: 12, scope: !4607)
!4621 = !DILocation(line: 1218, column: 24, scope: !4607)
!4622 = !DILocation(line: 1220, column: 12, scope: !4607)
!4623 = !DILocation(line: 1220, column: 22, scope: !4607)
!4624 = !DILocation(line: 1221, column: 19, scope: !4607)
!4625 = !DILocation(line: 1224, column: 5, scope: !4626)
!4626 = distinct !DILexicalBlock(scope: !4607, file: !1104, line: 1224, column: 5)
!4627 = !DILocation(line: 1227, column: 5, scope: !4607)
!4628 = !DILocation(line: 1229, column: 5, scope: !4607)
!4629 = !DILocation(line: 0, scope: !4602)
!4630 = !DILocation(line: 1235, column: 1, scope: !4593)
!4631 = distinct !DISubprogram(name: "HAL_UART_Receive_IT", scope: !1104, file: !1104, line: 1248, type: !4594, scopeLine: 1249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !4632)
!4632 = !{!4633, !4634, !4635}
!4633 = !DILocalVariable(name: "huart", arg: 1, scope: !4631, file: !1104, line: 1248, type: !1129)
!4634 = !DILocalVariable(name: "pData", arg: 2, scope: !4631, file: !1104, line: 1248, type: !45)
!4635 = !DILocalVariable(name: "Size", arg: 3, scope: !4631, file: !1104, line: 1248, type: !37)
!4636 = !DILocation(line: 0, scope: !4631)
!4637 = !DILocation(line: 1251, column: 14, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4631, file: !1104, line: 1251, column: 7)
!4639 = !DILocation(line: 1251, column: 22, scope: !4638)
!4640 = !DILocation(line: 1251, column: 7, scope: !4631)
!4641 = !DILocation(line: 1253, column: 16, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4643, file: !1104, line: 1253, column: 9)
!4643 = distinct !DILexicalBlock(scope: !4638, file: !1104, line: 1252, column: 3)
!4644 = !DILocation(line: 1253, column: 25, scope: !4642)
!4645 = !DILocation(line: 1259, column: 5, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !4647, file: !1104, line: 1259, column: 5)
!4647 = distinct !DILexicalBlock(scope: !4643, file: !1104, line: 1259, column: 5)
!4648 = !DILocation(line: 1259, column: 5, scope: !4647)
!4649 = !DILocation(line: 1259, column: 5, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4646, file: !1104, line: 1259, column: 5)
!4651 = !DILocation(line: 1261, column: 12, scope: !4643)
!4652 = !DILocation(line: 1261, column: 23, scope: !4643)
!4653 = !{!4194, !4195, i64 40}
!4654 = !DILocation(line: 1262, column: 12, scope: !4643)
!4655 = !DILocation(line: 1262, column: 23, scope: !4643)
!4656 = !DILocation(line: 1263, column: 12, scope: !4643)
!4657 = !DILocation(line: 1263, column: 24, scope: !4643)
!4658 = !DILocation(line: 1265, column: 12, scope: !4643)
!4659 = !DILocation(line: 1265, column: 22, scope: !4643)
!4660 = !DILocation(line: 1266, column: 20, scope: !4643)
!4661 = !DILocation(line: 1269, column: 5, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4643, file: !1104, line: 1269, column: 5)
!4663 = !DILocation(line: 1272, column: 5, scope: !4643)
!4664 = !DILocation(line: 1275, column: 5, scope: !4643)
!4665 = !DILocation(line: 1278, column: 5, scope: !4643)
!4666 = !DILocation(line: 1280, column: 5, scope: !4643)
!4667 = !DILocation(line: 0, scope: !4638)
!4668 = !DILocation(line: 1286, column: 1, scope: !4631)
!4669 = distinct !DISubprogram(name: "HAL_UART_Transmit_DMA", scope: !1104, file: !1104, line: 1299, type: !4594, scopeLine: 1300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !4670)
!4670 = !{!4671, !4672, !4673, !4674}
!4671 = !DILocalVariable(name: "huart", arg: 1, scope: !4669, file: !1104, line: 1299, type: !1129)
!4672 = !DILocalVariable(name: "pData", arg: 2, scope: !4669, file: !1104, line: 1299, type: !45)
!4673 = !DILocalVariable(name: "Size", arg: 3, scope: !4669, file: !1104, line: 1299, type: !37)
!4674 = !DILocalVariable(name: "tmp", scope: !4669, file: !1104, line: 1301, type: !569)
!4675 = !DILocation(line: 0, scope: !4669)
!4676 = !DILocation(line: 1304, column: 14, scope: !4677)
!4677 = distinct !DILexicalBlock(scope: !4669, file: !1104, line: 1304, column: 7)
!4678 = !DILocation(line: 1304, column: 21, scope: !4677)
!4679 = !DILocation(line: 1304, column: 7, scope: !4669)
!4680 = !DILocation(line: 1306, column: 16, scope: !4681)
!4681 = distinct !DILexicalBlock(scope: !4682, file: !1104, line: 1306, column: 9)
!4682 = distinct !DILexicalBlock(scope: !4677, file: !1104, line: 1305, column: 3)
!4683 = !DILocation(line: 1306, column: 25, scope: !4681)
!4684 = !DILocation(line: 1312, column: 5, scope: !4685)
!4685 = distinct !DILexicalBlock(scope: !4686, file: !1104, line: 1312, column: 5)
!4686 = distinct !DILexicalBlock(scope: !4682, file: !1104, line: 1312, column: 5)
!4687 = !DILocation(line: 1312, column: 5, scope: !4686)
!4688 = !DILocation(line: 1312, column: 5, scope: !4689)
!4689 = distinct !DILexicalBlock(scope: !4685, file: !1104, line: 1312, column: 5)
!4690 = !DILocation(line: 1314, column: 12, scope: !4682)
!4691 = !DILocation(line: 1314, column: 23, scope: !4682)
!4692 = !DILocation(line: 1315, column: 12, scope: !4682)
!4693 = !DILocation(line: 1315, column: 23, scope: !4682)
!4694 = !DILocation(line: 1316, column: 12, scope: !4682)
!4695 = !DILocation(line: 1316, column: 24, scope: !4682)
!4696 = !DILocation(line: 1318, column: 12, scope: !4682)
!4697 = !DILocation(line: 1318, column: 22, scope: !4682)
!4698 = !DILocation(line: 1319, column: 19, scope: !4682)
!4699 = !DILocation(line: 1322, column: 12, scope: !4682)
!4700 = !{!4194, !4195, i64 48}
!4701 = !DILocation(line: 1322, column: 20, scope: !4682)
!4702 = !DILocation(line: 1322, column: 37, scope: !4682)
!4703 = !{!4704, !4195, i64 44}
!4704 = !{!"__DMA_HandleTypeDef", !4195, i64 0, !2823, i64 4, !1450, i64 32, !1450, i64 36, !4195, i64 40, !4195, i64 44, !4195, i64 48, !4195, i64 52, !4195, i64 56, !1449, i64 60, !4195, i64 64, !1449, i64 68}
!4705 = !DILocation(line: 1325, column: 20, scope: !4682)
!4706 = !DILocation(line: 1325, column: 41, scope: !4682)
!4707 = !{!4704, !4195, i64 48}
!4708 = !DILocation(line: 1328, column: 20, scope: !4682)
!4709 = !DILocation(line: 1328, column: 38, scope: !4682)
!4710 = !{!4704, !4195, i64 52}
!4711 = !DILocation(line: 1331, column: 20, scope: !4682)
!4712 = !DILocation(line: 1331, column: 38, scope: !4682)
!4713 = !{!4704, !4195, i64 56}
!4714 = !DILocation(line: 1335, column: 37, scope: !4682)
!4715 = !DILocation(line: 1335, column: 73, scope: !4682)
!4716 = !DILocation(line: 1335, column: 83, scope: !4682)
!4717 = !DILocation(line: 1335, column: 55, scope: !4682)
!4718 = !DILocation(line: 1335, column: 5, scope: !4682)
!4719 = !DILocation(line: 1338, column: 5, scope: !4682)
!4720 = !DILocation(line: 1341, column: 5, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4682, file: !1104, line: 1341, column: 5)
!4722 = !DILocation(line: 1345, column: 5, scope: !4682)
!4723 = !DILocation(line: 1347, column: 5, scope: !4682)
!4724 = !DILocation(line: 0, scope: !4677)
!4725 = !DILocation(line: 1353, column: 1, scope: !4669)
!4726 = distinct !DISubprogram(name: "UART_DMATransmitCplt", scope: !1104, file: !1104, line: 2542, type: !4727, scopeLine: 2543, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !4729)
!4727 = !DISubroutineType(types: !4728)
!4728 = !{null, !1163}
!4729 = !{!4730, !4731}
!4730 = !DILocalVariable(name: "hdma", arg: 1, scope: !4726, file: !1104, line: 2542, type: !1163)
!4731 = !DILocalVariable(name: "huart", scope: !4726, file: !1104, line: 2544, type: !1129)
!4732 = !DILocation(line: 0, scope: !4726)
!4733 = !DILocation(line: 2544, column: 82, scope: !4726)
!4734 = !{!4704, !4195, i64 40}
!4735 = !DILocation(line: 2546, column: 14, scope: !4736)
!4736 = distinct !DILexicalBlock(scope: !4726, file: !1104, line: 2546, column: 7)
!4737 = !{!4704, !4195, i64 0}
!4738 = !DILocation(line: 2546, column: 24, scope: !4736)
!4739 = !DILocation(line: 2546, column: 28, scope: !4736)
!4740 = !DILocation(line: 2546, column: 44, scope: !4736)
!4741 = !DILocation(line: 2546, column: 7, scope: !4726)
!4742 = !DILocation(line: 2548, column: 12, scope: !4743)
!4743 = distinct !DILexicalBlock(scope: !4736, file: !1104, line: 2547, column: 3)
!4744 = !DILocation(line: 2548, column: 24, scope: !4743)
!4745 = !DILocation(line: 2552, column: 5, scope: !4743)
!4746 = !DILocation(line: 2555, column: 5, scope: !4743)
!4747 = !DILocation(line: 2557, column: 3, scope: !4743)
!4748 = !DILocation(line: 2566, column: 5, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4736, file: !1104, line: 2560, column: 3)
!4750 = !DILocation(line: 2569, column: 1, scope: !4726)
!4751 = distinct !DISubprogram(name: "UART_DMATxHalfCplt", scope: !1104, file: !1104, line: 2577, type: !4727, scopeLine: 2578, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !4752)
!4752 = !{!4753, !4754}
!4753 = !DILocalVariable(name: "hdma", arg: 1, scope: !4751, file: !1104, line: 2577, type: !1163)
!4754 = !DILocalVariable(name: "huart", scope: !4751, file: !1104, line: 2579, type: !1129)
!4755 = !DILocation(line: 0, scope: !4751)
!4756 = !DILocation(line: 2579, column: 82, scope: !4751)
!4757 = !DILocation(line: 2586, column: 3, scope: !4751)
!4758 = !DILocation(line: 2588, column: 1, scope: !4751)
!4759 = distinct !DISubprogram(name: "UART_DMAError", scope: !1104, file: !1104, line: 2649, type: !4727, scopeLine: 2650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !4760)
!4760 = !{!4761, !4762, !4763}
!4761 = !DILocalVariable(name: "hdma", arg: 1, scope: !4759, file: !1104, line: 2649, type: !1163)
!4762 = !DILocalVariable(name: "dmarequest", scope: !4759, file: !1104, line: 2651, type: !24)
!4763 = !DILocalVariable(name: "huart", scope: !4759, file: !1104, line: 2652, type: !1129)
!4764 = !DILocation(line: 0, scope: !4759)
!4765 = !DILocation(line: 2652, column: 82, scope: !4759)
!4766 = !DILocation(line: 2655, column: 16, scope: !4759)
!4767 = !DILocation(line: 2656, column: 15, scope: !4768)
!4768 = distinct !DILexicalBlock(scope: !4759, file: !1104, line: 2656, column: 7)
!4769 = !DILocation(line: 2656, column: 22, scope: !4768)
!4770 = !DILocation(line: 2656, column: 49, scope: !4768)
!4771 = !DILocation(line: 2658, column: 12, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !4768, file: !1104, line: 2657, column: 3)
!4773 = !DILocation(line: 2658, column: 24, scope: !4772)
!4774 = !DILocation(line: 2659, column: 5, scope: !4772)
!4775 = !DILocation(line: 2660, column: 3, scope: !4772)
!4776 = !DILocation(line: 2663, column: 16, scope: !4759)
!4777 = !DILocation(line: 2664, column: 15, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4759, file: !1104, line: 2664, column: 7)
!4779 = !DILocation(line: 2664, column: 23, scope: !4778)
!4780 = !DILocation(line: 2664, column: 50, scope: !4778)
!4781 = !DILocation(line: 2666, column: 12, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4778, file: !1104, line: 2665, column: 3)
!4783 = !DILocation(line: 2666, column: 24, scope: !4782)
!4784 = !DILocation(line: 2667, column: 5, scope: !4782)
!4785 = !DILocation(line: 2668, column: 3, scope: !4782)
!4786 = !DILocation(line: 2670, column: 10, scope: !4759)
!4787 = !DILocation(line: 2670, column: 20, scope: !4759)
!4788 = !DILocation(line: 2676, column: 3, scope: !4759)
!4789 = !DILocation(line: 2678, column: 1, scope: !4759)
!4790 = !DISubprogram(name: "HAL_DMA_Start_IT", scope: !712, file: !712, line: 378, type: !4791, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!4791 = !DISubroutineType(types: !4792)
!4792 = !{!1506, !1163, !24, !24, !24}
!4793 = distinct !DISubprogram(name: "UART_EndTxTransfer", scope: !1104, file: !1104, line: 2722, type: !4222, scopeLine: 2723, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !4794)
!4794 = !{!4795}
!4795 = !DILocalVariable(name: "huart", arg: 1, scope: !4793, file: !1104, line: 2722, type: !1129)
!4796 = !DILocation(line: 0, scope: !4793)
!4797 = !DILocation(line: 2725, column: 3, scope: !4793)
!4798 = !DILocation(line: 2728, column: 10, scope: !4793)
!4799 = !DILocation(line: 2728, column: 17, scope: !4793)
!4800 = !DILocation(line: 2729, column: 1, scope: !4793)
!4801 = distinct !DISubprogram(name: "UART_EndRxTransfer", scope: !1104, file: !1104, line: 2736, type: !4222, scopeLine: 2737, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !4802)
!4802 = !{!4803}
!4803 = !DILocalVariable(name: "huart", arg: 1, scope: !4801, file: !1104, line: 2736, type: !1129)
!4804 = !DILocation(line: 0, scope: !4801)
!4805 = !DILocation(line: 2739, column: 3, scope: !4801)
!4806 = !DILocation(line: 2740, column: 3, scope: !4801)
!4807 = !DILocation(line: 2743, column: 10, scope: !4801)
!4808 = !DILocation(line: 2743, column: 18, scope: !4801)
!4809 = !DILocation(line: 2744, column: 1, scope: !4801)
!4810 = distinct !DISubprogram(name: "HAL_UART_ErrorCallback", scope: !1104, file: !1104, line: 2227, type: !4222, scopeLine: 2228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !4811)
!4811 = !{!4812}
!4812 = !DILocalVariable(name: "huart", arg: 1, scope: !4810, file: !1104, line: 2227, type: !1129)
!4813 = !DILocation(line: 0, scope: !4810)
!4814 = !DILocation(line: 2234, column: 1, scope: !4810)
!4815 = distinct !DISubprogram(name: "HAL_UART_TxHalfCpltCallback", scope: !1104, file: !1104, line: 2182, type: !4222, scopeLine: 2183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !4816)
!4816 = !{!4817}
!4817 = !DILocalVariable(name: "huart", arg: 1, scope: !4815, file: !1104, line: 2182, type: !1129)
!4818 = !DILocation(line: 0, scope: !4815)
!4819 = !DILocation(line: 2189, column: 1, scope: !4815)
!4820 = distinct !DISubprogram(name: "HAL_UART_TxCpltCallback", scope: !1104, file: !1104, line: 2167, type: !4222, scopeLine: 2168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !4821)
!4821 = !{!4822}
!4822 = !DILocalVariable(name: "huart", arg: 1, scope: !4820, file: !1104, line: 2167, type: !1129)
!4823 = !DILocation(line: 0, scope: !4820)
!4824 = !DILocation(line: 2174, column: 1, scope: !4820)
!4825 = distinct !DISubprogram(name: "HAL_UART_Receive_DMA", scope: !1104, file: !1104, line: 1367, type: !4594, scopeLine: 1368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !4826)
!4826 = !{!4827, !4828, !4829, !4830, !4831}
!4827 = !DILocalVariable(name: "huart", arg: 1, scope: !4825, file: !1104, line: 1367, type: !1129)
!4828 = !DILocalVariable(name: "pData", arg: 2, scope: !4825, file: !1104, line: 1367, type: !45)
!4829 = !DILocalVariable(name: "Size", arg: 3, scope: !4825, file: !1104, line: 1367, type: !37)
!4830 = !DILocalVariable(name: "tmp", scope: !4825, file: !1104, line: 1369, type: !569)
!4831 = !DILocalVariable(name: "tmpreg", scope: !4832, file: !1104, line: 1405, type: !23)
!4832 = distinct !DILexicalBlock(scope: !4833, file: !1104, line: 1405, column: 5)
!4833 = distinct !DILexicalBlock(scope: !4834, file: !1104, line: 1373, column: 3)
!4834 = distinct !DILexicalBlock(scope: !4825, file: !1104, line: 1372, column: 7)
!4835 = !DILocation(line: 0, scope: !4825)
!4836 = !DILocation(line: 1372, column: 14, scope: !4834)
!4837 = !DILocation(line: 1372, column: 22, scope: !4834)
!4838 = !DILocation(line: 1372, column: 7, scope: !4825)
!4839 = !DILocation(line: 1374, column: 16, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4833, file: !1104, line: 1374, column: 9)
!4841 = !DILocation(line: 1374, column: 25, scope: !4840)
!4842 = !DILocation(line: 1380, column: 5, scope: !4843)
!4843 = distinct !DILexicalBlock(scope: !4844, file: !1104, line: 1380, column: 5)
!4844 = distinct !DILexicalBlock(scope: !4833, file: !1104, line: 1380, column: 5)
!4845 = !DILocation(line: 1380, column: 5, scope: !4844)
!4846 = !DILocation(line: 1380, column: 5, scope: !4847)
!4847 = distinct !DILexicalBlock(scope: !4843, file: !1104, line: 1380, column: 5)
!4848 = !DILocation(line: 1382, column: 12, scope: !4833)
!4849 = !DILocation(line: 1382, column: 23, scope: !4833)
!4850 = !DILocation(line: 1383, column: 12, scope: !4833)
!4851 = !DILocation(line: 1383, column: 23, scope: !4833)
!4852 = !DILocation(line: 1385, column: 12, scope: !4833)
!4853 = !DILocation(line: 1385, column: 22, scope: !4833)
!4854 = !DILocation(line: 1386, column: 20, scope: !4833)
!4855 = !DILocation(line: 1389, column: 12, scope: !4833)
!4856 = !{!4194, !4195, i64 52}
!4857 = !DILocation(line: 1389, column: 20, scope: !4833)
!4858 = !DILocation(line: 1389, column: 37, scope: !4833)
!4859 = !DILocation(line: 1392, column: 20, scope: !4833)
!4860 = !DILocation(line: 1392, column: 41, scope: !4833)
!4861 = !DILocation(line: 1395, column: 20, scope: !4833)
!4862 = !DILocation(line: 1395, column: 38, scope: !4833)
!4863 = !DILocation(line: 1398, column: 20, scope: !4833)
!4864 = !DILocation(line: 1398, column: 38, scope: !4833)
!4865 = !DILocation(line: 1402, column: 55, scope: !4833)
!4866 = !DILocation(line: 1402, column: 65, scope: !4833)
!4867 = !DILocation(line: 1402, column: 37, scope: !4833)
!4868 = !DILocation(line: 1402, column: 69, scope: !4833)
!4869 = !DILocation(line: 1402, column: 5, scope: !4833)
!4870 = !DILocation(line: 1405, column: 5, scope: !4832)
!4871 = !DILocation(line: 1405, column: 5, scope: !4833)
!4872 = !DILocation(line: 1408, column: 5, scope: !4873)
!4873 = distinct !DILexicalBlock(scope: !4833, file: !1104, line: 1408, column: 5)
!4874 = !DILocation(line: 1411, column: 5, scope: !4833)
!4875 = !DILocation(line: 1414, column: 5, scope: !4833)
!4876 = !DILocation(line: 1418, column: 5, scope: !4833)
!4877 = !DILocation(line: 1420, column: 5, scope: !4833)
!4878 = !DILocation(line: 0, scope: !4834)
!4879 = !DILocation(line: 1426, column: 1, scope: !4825)
!4880 = distinct !DISubprogram(name: "UART_DMAReceiveCplt", scope: !1104, file: !1104, line: 2596, type: !4727, scopeLine: 2597, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !4881)
!4881 = !{!4882, !4883}
!4882 = !DILocalVariable(name: "hdma", arg: 1, scope: !4880, file: !1104, line: 2596, type: !1163)
!4883 = !DILocalVariable(name: "huart", scope: !4880, file: !1104, line: 2598, type: !1129)
!4884 = !DILocation(line: 0, scope: !4880)
!4885 = !DILocation(line: 2598, column: 82, scope: !4880)
!4886 = !DILocation(line: 2600, column: 14, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4880, file: !1104, line: 2600, column: 7)
!4888 = !DILocation(line: 2600, column: 24, scope: !4887)
!4889 = !DILocation(line: 2600, column: 28, scope: !4887)
!4890 = !DILocation(line: 2600, column: 44, scope: !4887)
!4891 = !DILocation(line: 2600, column: 7, scope: !4880)
!4892 = !DILocation(line: 2602, column: 12, scope: !4893)
!4893 = distinct !DILexicalBlock(scope: !4887, file: !1104, line: 2601, column: 3)
!4894 = !DILocation(line: 2602, column: 24, scope: !4893)
!4895 = !DILocation(line: 2605, column: 5, scope: !4893)
!4896 = !DILocation(line: 2606, column: 5, scope: !4893)
!4897 = !DILocation(line: 2610, column: 5, scope: !4893)
!4898 = !DILocation(line: 2613, column: 12, scope: !4893)
!4899 = !DILocation(line: 2613, column: 20, scope: !4893)
!4900 = !DILocation(line: 2614, column: 3, scope: !4893)
!4901 = !DILocation(line: 2620, column: 3, scope: !4880)
!4902 = !DILocation(line: 2622, column: 1, scope: !4880)
!4903 = distinct !DISubprogram(name: "UART_DMARxHalfCplt", scope: !1104, file: !1104, line: 2630, type: !4727, scopeLine: 2631, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !4904)
!4904 = !{!4905, !4906}
!4905 = !DILocalVariable(name: "hdma", arg: 1, scope: !4903, file: !1104, line: 2630, type: !1163)
!4906 = !DILocalVariable(name: "huart", scope: !4903, file: !1104, line: 2632, type: !1129)
!4907 = !DILocation(line: 0, scope: !4903)
!4908 = !DILocation(line: 2632, column: 82, scope: !4903)
!4909 = !DILocation(line: 2639, column: 3, scope: !4903)
!4910 = !DILocation(line: 2641, column: 1, scope: !4903)
!4911 = distinct !DISubprogram(name: "HAL_UART_RxHalfCpltCallback", scope: !1104, file: !1104, line: 2212, type: !4222, scopeLine: 2213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !4912)
!4912 = !{!4913}
!4913 = !DILocalVariable(name: "huart", arg: 1, scope: !4911, file: !1104, line: 2212, type: !1129)
!4914 = !DILocation(line: 0, scope: !4911)
!4915 = !DILocation(line: 2219, column: 1, scope: !4911)
!4916 = distinct !DISubprogram(name: "HAL_UART_RxCpltCallback", scope: !1104, file: !1104, line: 2197, type: !4222, scopeLine: 2198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !4917)
!4917 = !{!4918}
!4918 = !DILocalVariable(name: "huart", arg: 1, scope: !4916, file: !1104, line: 2197, type: !1129)
!4919 = !DILocation(line: 0, scope: !4916)
!4920 = !DILocation(line: 2204, column: 1, scope: !4916)
!4921 = distinct !DISubprogram(name: "HAL_UART_DMAPause", scope: !1104, file: !1104, line: 1434, type: !4183, scopeLine: 1435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !4922)
!4922 = !{!4923, !4924}
!4923 = !DILocalVariable(name: "huart", arg: 1, scope: !4921, file: !1104, line: 1434, type: !1129)
!4924 = !DILocalVariable(name: "dmarequest", scope: !4921, file: !1104, line: 1436, type: !24)
!4925 = !DILocation(line: 0, scope: !4921)
!4926 = !DILocation(line: 1439, column: 3, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4928, file: !1104, line: 1439, column: 3)
!4928 = distinct !DILexicalBlock(scope: !4921, file: !1104, line: 1439, column: 3)
!4929 = !DILocation(line: 1439, column: 3, scope: !4928)
!4930 = !DILocation(line: 1439, column: 3, scope: !4931)
!4931 = distinct !DILexicalBlock(scope: !4927, file: !1104, line: 1439, column: 3)
!4932 = !DILocation(line: 1441, column: 16, scope: !4921)
!4933 = !DILocation(line: 1442, column: 15, scope: !4934)
!4934 = distinct !DILexicalBlock(scope: !4921, file: !1104, line: 1442, column: 7)
!4935 = !DILocation(line: 1442, column: 22, scope: !4934)
!4936 = !DILocation(line: 1442, column: 49, scope: !4934)
!4937 = !DILocation(line: 1445, column: 5, scope: !4938)
!4938 = distinct !DILexicalBlock(scope: !4934, file: !1104, line: 1443, column: 3)
!4939 = !DILocation(line: 1446, column: 3, scope: !4938)
!4940 = !DILocation(line: 1448, column: 16, scope: !4921)
!4941 = !DILocation(line: 1449, column: 15, scope: !4942)
!4942 = distinct !DILexicalBlock(scope: !4921, file: !1104, line: 1449, column: 7)
!4943 = !DILocation(line: 1449, column: 23, scope: !4942)
!4944 = !DILocation(line: 1449, column: 50, scope: !4942)
!4945 = !DILocation(line: 1452, column: 5, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4942, file: !1104, line: 1450, column: 3)
!4947 = !DILocation(line: 1453, column: 5, scope: !4946)
!4948 = !DILocation(line: 1456, column: 5, scope: !4946)
!4949 = !DILocation(line: 1457, column: 3, scope: !4946)
!4950 = !DILocation(line: 1460, column: 3, scope: !4951)
!4951 = distinct !DILexicalBlock(scope: !4921, file: !1104, line: 1460, column: 3)
!4952 = !DILocation(line: 1462, column: 3, scope: !4921)
!4953 = !DILocation(line: 1463, column: 1, scope: !4921)
!4954 = distinct !DISubprogram(name: "HAL_UART_DMAResume", scope: !1104, file: !1104, line: 1471, type: !4183, scopeLine: 1472, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !4955)
!4955 = !{!4956, !4957}
!4956 = !DILocalVariable(name: "huart", arg: 1, scope: !4954, file: !1104, line: 1471, type: !1129)
!4957 = !DILocalVariable(name: "tmpreg", scope: !4958, file: !1104, line: 1485, type: !23)
!4958 = distinct !DILexicalBlock(scope: !4959, file: !1104, line: 1485, column: 5)
!4959 = distinct !DILexicalBlock(scope: !4960, file: !1104, line: 1483, column: 3)
!4960 = distinct !DILexicalBlock(scope: !4954, file: !1104, line: 1482, column: 7)
!4961 = !DILocation(line: 0, scope: !4954)
!4962 = !DILocation(line: 1474, column: 3, scope: !4963)
!4963 = distinct !DILexicalBlock(scope: !4964, file: !1104, line: 1474, column: 3)
!4964 = distinct !DILexicalBlock(scope: !4954, file: !1104, line: 1474, column: 3)
!4965 = !DILocation(line: 1474, column: 3, scope: !4964)
!4966 = !DILocation(line: 1474, column: 3, scope: !4967)
!4967 = distinct !DILexicalBlock(scope: !4963, file: !1104, line: 1474, column: 3)
!4968 = !DILocation(line: 1476, column: 14, scope: !4969)
!4969 = distinct !DILexicalBlock(scope: !4954, file: !1104, line: 1476, column: 7)
!4970 = !DILocation(line: 1476, column: 21, scope: !4969)
!4971 = !DILocation(line: 1476, column: 7, scope: !4954)
!4972 = !DILocation(line: 1479, column: 5, scope: !4973)
!4973 = distinct !DILexicalBlock(scope: !4969, file: !1104, line: 1477, column: 3)
!4974 = !DILocation(line: 1480, column: 3, scope: !4973)
!4975 = !DILocation(line: 1482, column: 14, scope: !4960)
!4976 = !DILocation(line: 1482, column: 22, scope: !4960)
!4977 = !DILocation(line: 1482, column: 7, scope: !4954)
!4978 = !DILocation(line: 1485, column: 5, scope: !4958)
!4979 = !DILocation(line: 1485, column: 5, scope: !4959)
!4980 = !DILocation(line: 1488, column: 5, scope: !4959)
!4981 = !DILocation(line: 1489, column: 5, scope: !4959)
!4982 = !DILocation(line: 1492, column: 5, scope: !4959)
!4983 = !DILocation(line: 1493, column: 3, scope: !4959)
!4984 = !DILocation(line: 1496, column: 3, scope: !4985)
!4985 = distinct !DILexicalBlock(scope: !4954, file: !1104, line: 1496, column: 3)
!4986 = !DILocation(line: 1498, column: 3, scope: !4954)
!4987 = !DILocation(line: 1499, column: 1, scope: !4954)
!4988 = distinct !DISubprogram(name: "HAL_UART_DMAStop", scope: !1104, file: !1104, line: 1507, type: !4183, scopeLine: 1508, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !4989)
!4989 = !{!4990, !4991}
!4990 = !DILocalVariable(name: "huart", arg: 1, scope: !4988, file: !1104, line: 1507, type: !1129)
!4991 = !DILocalVariable(name: "dmarequest", scope: !4988, file: !1104, line: 1509, type: !24)
!4992 = !DILocation(line: 0, scope: !4988)
!4993 = !DILocation(line: 1517, column: 16, scope: !4988)
!4994 = !DILocation(line: 1518, column: 15, scope: !4995)
!4995 = distinct !DILexicalBlock(scope: !4988, file: !1104, line: 1518, column: 7)
!4996 = !DILocation(line: 1518, column: 22, scope: !4995)
!4997 = !DILocation(line: 1518, column: 49, scope: !4995)
!4998 = !DILocation(line: 1520, column: 5, scope: !4999)
!4999 = distinct !DILexicalBlock(scope: !4995, file: !1104, line: 1519, column: 3)
!5000 = !DILocation(line: 1523, column: 16, scope: !5001)
!5001 = distinct !DILexicalBlock(scope: !4999, file: !1104, line: 1523, column: 9)
!5002 = !DILocation(line: 1523, column: 23, scope: !5001)
!5003 = !DILocation(line: 1523, column: 9, scope: !4999)
!5004 = !DILocation(line: 1525, column: 7, scope: !5005)
!5005 = distinct !DILexicalBlock(scope: !5001, file: !1104, line: 1524, column: 5)
!5006 = !DILocation(line: 1526, column: 5, scope: !5005)
!5007 = !DILocation(line: 1527, column: 5, scope: !4999)
!5008 = !DILocation(line: 1528, column: 3, scope: !4999)
!5009 = !DILocation(line: 1531, column: 16, scope: !4988)
!5010 = !DILocation(line: 1532, column: 15, scope: !5011)
!5011 = distinct !DILexicalBlock(scope: !4988, file: !1104, line: 1532, column: 7)
!5012 = !DILocation(line: 1532, column: 23, scope: !5011)
!5013 = !DILocation(line: 1532, column: 50, scope: !5011)
!5014 = !DILocation(line: 1534, column: 5, scope: !5015)
!5015 = distinct !DILexicalBlock(scope: !5011, file: !1104, line: 1533, column: 3)
!5016 = !DILocation(line: 1537, column: 16, scope: !5017)
!5017 = distinct !DILexicalBlock(scope: !5015, file: !1104, line: 1537, column: 9)
!5018 = !DILocation(line: 1537, column: 23, scope: !5017)
!5019 = !DILocation(line: 1537, column: 9, scope: !5015)
!5020 = !DILocation(line: 1539, column: 7, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !5017, file: !1104, line: 1538, column: 5)
!5022 = !DILocation(line: 1540, column: 5, scope: !5021)
!5023 = !DILocation(line: 1541, column: 5, scope: !5015)
!5024 = !DILocation(line: 1542, column: 3, scope: !5015)
!5025 = !DILocation(line: 1544, column: 3, scope: !4988)
!5026 = !DISubprogram(name: "HAL_DMA_Abort", scope: !712, file: !712, line: 379, type: !5027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!5027 = !DISubroutineType(types: !5028)
!5028 = !{!1506, !1163}
!5029 = distinct !DISubprogram(name: "HAL_UART_Abort", scope: !1104, file: !1104, line: 1559, type: !4183, scopeLine: 1560, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !5030)
!5030 = !{!5031}
!5031 = !DILocalVariable(name: "huart", arg: 1, scope: !5029, file: !1104, line: 1559, type: !1129)
!5032 = !DILocation(line: 0, scope: !5029)
!5033 = !DILocation(line: 1562, column: 3, scope: !5029)
!5034 = !DILocation(line: 1563, column: 3, scope: !5029)
!5035 = !DILocation(line: 1566, column: 7, scope: !5036)
!5036 = distinct !DILexicalBlock(scope: !5029, file: !1104, line: 1566, column: 7)
!5037 = !DILocation(line: 1566, column: 7, scope: !5029)
!5038 = !DILocation(line: 1568, column: 5, scope: !5039)
!5039 = distinct !DILexicalBlock(scope: !5036, file: !1104, line: 1567, column: 3)
!5040 = !DILocation(line: 1571, column: 16, scope: !5041)
!5041 = distinct !DILexicalBlock(scope: !5039, file: !1104, line: 1571, column: 9)
!5042 = !DILocation(line: 1571, column: 23, scope: !5041)
!5043 = !DILocation(line: 1571, column: 9, scope: !5039)
!5044 = !DILocation(line: 1575, column: 22, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !5041, file: !1104, line: 1572, column: 5)
!5046 = !DILocation(line: 1575, column: 40, scope: !5045)
!5047 = !DILocation(line: 1577, column: 11, scope: !5048)
!5048 = distinct !DILexicalBlock(scope: !5045, file: !1104, line: 1577, column: 11)
!5049 = !DILocation(line: 1577, column: 40, scope: !5048)
!5050 = !DILocation(line: 1577, column: 11, scope: !5045)
!5051 = !DILocation(line: 1579, column: 37, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !5053, file: !1104, line: 1579, column: 13)
!5053 = distinct !DILexicalBlock(scope: !5048, file: !1104, line: 1578, column: 7)
!5054 = !DILocation(line: 1579, column: 13, scope: !5052)
!5055 = !DILocation(line: 1579, column: 45, scope: !5052)
!5056 = !DILocation(line: 1579, column: 13, scope: !5053)
!5057 = !DILocation(line: 1582, column: 18, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !5052, file: !1104, line: 1580, column: 9)
!5059 = !DILocation(line: 1582, column: 28, scope: !5058)
!5060 = !DILocation(line: 1584, column: 11, scope: !5058)
!5061 = !DILocation(line: 1591, column: 7, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !5029, file: !1104, line: 1591, column: 7)
!5063 = !DILocation(line: 1591, column: 7, scope: !5029)
!5064 = !DILocation(line: 1593, column: 5, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !5062, file: !1104, line: 1592, column: 3)
!5066 = !DILocation(line: 1596, column: 16, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !5065, file: !1104, line: 1596, column: 9)
!5068 = !DILocation(line: 1596, column: 23, scope: !5067)
!5069 = !DILocation(line: 1596, column: 9, scope: !5065)
!5070 = !DILocation(line: 1600, column: 22, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5067, file: !1104, line: 1597, column: 5)
!5072 = !DILocation(line: 1600, column: 40, scope: !5071)
!5073 = !DILocation(line: 1602, column: 11, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5071, file: !1104, line: 1602, column: 11)
!5075 = !DILocation(line: 1602, column: 40, scope: !5074)
!5076 = !DILocation(line: 1602, column: 11, scope: !5071)
!5077 = !DILocation(line: 1604, column: 37, scope: !5078)
!5078 = distinct !DILexicalBlock(scope: !5079, file: !1104, line: 1604, column: 13)
!5079 = distinct !DILexicalBlock(scope: !5074, file: !1104, line: 1603, column: 7)
!5080 = !DILocation(line: 1604, column: 13, scope: !5078)
!5081 = !DILocation(line: 1604, column: 45, scope: !5078)
!5082 = !DILocation(line: 1604, column: 13, scope: !5079)
!5083 = !DILocation(line: 1607, column: 18, scope: !5084)
!5084 = distinct !DILexicalBlock(scope: !5078, file: !1104, line: 1605, column: 9)
!5085 = !DILocation(line: 1607, column: 28, scope: !5084)
!5086 = !DILocation(line: 1609, column: 11, scope: !5084)
!5087 = !DILocation(line: 1616, column: 10, scope: !5029)
!5088 = !DILocation(line: 1616, column: 22, scope: !5029)
!5089 = !DILocation(line: 1617, column: 10, scope: !5029)
!5090 = !DILocation(line: 1617, column: 22, scope: !5029)
!5091 = !DILocation(line: 1620, column: 10, scope: !5029)
!5092 = !DILocation(line: 1620, column: 20, scope: !5029)
!5093 = !DILocation(line: 1623, column: 10, scope: !5029)
!5094 = !DILocation(line: 1623, column: 18, scope: !5029)
!5095 = !DILocation(line: 1624, column: 10, scope: !5029)
!5096 = !DILocation(line: 1624, column: 17, scope: !5029)
!5097 = !DILocation(line: 1626, column: 3, scope: !5029)
!5098 = !DILocation(line: 1627, column: 1, scope: !5029)
!5099 = !DISubprogram(name: "HAL_DMA_GetError", scope: !712, file: !712, line: 395, type: !5100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!5100 = !DISubroutineType(types: !5101)
!5101 = !{!24, !1163}
!5102 = distinct !DISubprogram(name: "HAL_UART_AbortTransmit", scope: !1104, file: !1104, line: 1641, type: !4183, scopeLine: 1642, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !5103)
!5103 = !{!5104}
!5104 = !DILocalVariable(name: "huart", arg: 1, scope: !5102, file: !1104, line: 1641, type: !1129)
!5105 = !DILocation(line: 0, scope: !5102)
!5106 = !DILocation(line: 1644, column: 3, scope: !5102)
!5107 = !DILocation(line: 1647, column: 7, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5102, file: !1104, line: 1647, column: 7)
!5109 = !DILocation(line: 1647, column: 7, scope: !5102)
!5110 = !DILocation(line: 1649, column: 5, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5108, file: !1104, line: 1648, column: 3)
!5112 = !DILocation(line: 1652, column: 16, scope: !5113)
!5113 = distinct !DILexicalBlock(scope: !5111, file: !1104, line: 1652, column: 9)
!5114 = !DILocation(line: 1652, column: 23, scope: !5113)
!5115 = !DILocation(line: 1652, column: 9, scope: !5111)
!5116 = !DILocation(line: 1656, column: 22, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5113, file: !1104, line: 1653, column: 5)
!5118 = !DILocation(line: 1656, column: 40, scope: !5117)
!5119 = !DILocation(line: 1658, column: 11, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !5117, file: !1104, line: 1658, column: 11)
!5121 = !DILocation(line: 1658, column: 40, scope: !5120)
!5122 = !DILocation(line: 1658, column: 11, scope: !5117)
!5123 = !DILocation(line: 1660, column: 37, scope: !5124)
!5124 = distinct !DILexicalBlock(scope: !5125, file: !1104, line: 1660, column: 13)
!5125 = distinct !DILexicalBlock(scope: !5120, file: !1104, line: 1659, column: 7)
!5126 = !DILocation(line: 1660, column: 13, scope: !5124)
!5127 = !DILocation(line: 1660, column: 45, scope: !5124)
!5128 = !DILocation(line: 1660, column: 13, scope: !5125)
!5129 = !DILocation(line: 1663, column: 18, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5124, file: !1104, line: 1661, column: 9)
!5131 = !DILocation(line: 1663, column: 28, scope: !5130)
!5132 = !DILocation(line: 1665, column: 11, scope: !5130)
!5133 = !DILocation(line: 1672, column: 10, scope: !5102)
!5134 = !DILocation(line: 1672, column: 22, scope: !5102)
!5135 = !DILocation(line: 1675, column: 10, scope: !5102)
!5136 = !DILocation(line: 1675, column: 17, scope: !5102)
!5137 = !DILocation(line: 1677, column: 3, scope: !5102)
!5138 = !DILocation(line: 1678, column: 1, scope: !5102)
!5139 = distinct !DISubprogram(name: "HAL_UART_AbortReceive", scope: !1104, file: !1104, line: 1692, type: !4183, scopeLine: 1693, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !5140)
!5140 = !{!5141}
!5141 = !DILocalVariable(name: "huart", arg: 1, scope: !5139, file: !1104, line: 1692, type: !1129)
!5142 = !DILocation(line: 0, scope: !5139)
!5143 = !DILocation(line: 1695, column: 3, scope: !5139)
!5144 = !DILocation(line: 1696, column: 3, scope: !5139)
!5145 = !DILocation(line: 1699, column: 7, scope: !5146)
!5146 = distinct !DILexicalBlock(scope: !5139, file: !1104, line: 1699, column: 7)
!5147 = !DILocation(line: 1699, column: 7, scope: !5139)
!5148 = !DILocation(line: 1701, column: 5, scope: !5149)
!5149 = distinct !DILexicalBlock(scope: !5146, file: !1104, line: 1700, column: 3)
!5150 = !DILocation(line: 1704, column: 16, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !5149, file: !1104, line: 1704, column: 9)
!5152 = !DILocation(line: 1704, column: 23, scope: !5151)
!5153 = !DILocation(line: 1704, column: 9, scope: !5149)
!5154 = !DILocation(line: 1708, column: 22, scope: !5155)
!5155 = distinct !DILexicalBlock(scope: !5151, file: !1104, line: 1705, column: 5)
!5156 = !DILocation(line: 1708, column: 40, scope: !5155)
!5157 = !DILocation(line: 1710, column: 11, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !5155, file: !1104, line: 1710, column: 11)
!5159 = !DILocation(line: 1710, column: 40, scope: !5158)
!5160 = !DILocation(line: 1710, column: 11, scope: !5155)
!5161 = !DILocation(line: 1712, column: 37, scope: !5162)
!5162 = distinct !DILexicalBlock(scope: !5163, file: !1104, line: 1712, column: 13)
!5163 = distinct !DILexicalBlock(scope: !5158, file: !1104, line: 1711, column: 7)
!5164 = !DILocation(line: 1712, column: 13, scope: !5162)
!5165 = !DILocation(line: 1712, column: 45, scope: !5162)
!5166 = !DILocation(line: 1712, column: 13, scope: !5163)
!5167 = !DILocation(line: 1715, column: 18, scope: !5168)
!5168 = distinct !DILexicalBlock(scope: !5162, file: !1104, line: 1713, column: 9)
!5169 = !DILocation(line: 1715, column: 28, scope: !5168)
!5170 = !DILocation(line: 1717, column: 11, scope: !5168)
!5171 = !DILocation(line: 1724, column: 10, scope: !5139)
!5172 = !DILocation(line: 1724, column: 22, scope: !5139)
!5173 = !DILocation(line: 1727, column: 10, scope: !5139)
!5174 = !DILocation(line: 1727, column: 18, scope: !5139)
!5175 = !DILocation(line: 1729, column: 3, scope: !5139)
!5176 = !DILocation(line: 1730, column: 1, scope: !5139)
!5177 = distinct !DISubprogram(name: "HAL_UART_Abort_IT", scope: !1104, file: !1104, line: 1746, type: !4183, scopeLine: 1747, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !5178)
!5178 = !{!5179, !5180}
!5179 = !DILocalVariable(name: "huart", arg: 1, scope: !5177, file: !1104, line: 1746, type: !1129)
!5180 = !DILocalVariable(name: "AbortCplt", scope: !5177, file: !1104, line: 1748, type: !24)
!5181 = !DILocation(line: 0, scope: !5177)
!5182 = !DILocation(line: 1751, column: 3, scope: !5177)
!5183 = !DILocation(line: 1752, column: 3, scope: !5177)
!5184 = !DILocation(line: 1757, column: 14, scope: !5185)
!5185 = distinct !DILexicalBlock(scope: !5177, file: !1104, line: 1757, column: 7)
!5186 = !DILocation(line: 1757, column: 21, scope: !5185)
!5187 = !DILocation(line: 1757, column: 7, scope: !5177)
!5188 = !DILocation(line: 1761, column: 9, scope: !5189)
!5189 = distinct !DILexicalBlock(scope: !5190, file: !1104, line: 1761, column: 9)
!5190 = distinct !DILexicalBlock(scope: !5185, file: !1104, line: 1758, column: 3)
!5191 = !DILocation(line: 0, scope: !5189)
!5192 = !DILocation(line: 1771, column: 14, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5177, file: !1104, line: 1771, column: 7)
!5194 = !DILocation(line: 1771, column: 21, scope: !5193)
!5195 = !DILocation(line: 1771, column: 7, scope: !5177)
!5196 = !DILocation(line: 1775, column: 9, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !5198, file: !1104, line: 1775, column: 9)
!5198 = distinct !DILexicalBlock(scope: !5193, file: !1104, line: 1772, column: 3)
!5199 = !DILocation(line: 0, scope: !5197)
!5200 = !DILocation(line: 1786, column: 7, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5177, file: !1104, line: 1786, column: 7)
!5202 = !DILocation(line: 1786, column: 7, scope: !5177)
!5203 = !DILocation(line: 1789, column: 5, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !5201, file: !1104, line: 1787, column: 3)
!5205 = !DILocation(line: 1792, column: 9, scope: !5204)
!5206 = !DILocation(line: 1798, column: 11, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !5208, file: !1104, line: 1798, column: 11)
!5208 = distinct !DILexicalBlock(scope: !5209, file: !1104, line: 1793, column: 5)
!5209 = distinct !DILexicalBlock(scope: !5204, file: !1104, line: 1792, column: 9)
!5210 = !DILocation(line: 1798, column: 43, scope: !5207)
!5211 = !DILocation(line: 1798, column: 11, scope: !5208)
!5212 = !DILocation(line: 1800, column: 16, scope: !5213)
!5213 = distinct !DILexicalBlock(scope: !5207, file: !1104, line: 1799, column: 7)
!5214 = !DILocation(line: 1800, column: 24, scope: !5213)
!5215 = !DILocation(line: 1800, column: 42, scope: !5213)
!5216 = !DILocation(line: 1801, column: 7, scope: !5213)
!5217 = !DILocation(line: 1810, column: 7, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5177, file: !1104, line: 1810, column: 7)
!5219 = !DILocation(line: 1810, column: 7, scope: !5177)
!5220 = !DILocation(line: 1812, column: 5, scope: !5221)
!5221 = distinct !DILexicalBlock(scope: !5218, file: !1104, line: 1811, column: 3)
!5222 = !DILocation(line: 1815, column: 16, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !5221, file: !1104, line: 1815, column: 9)
!5224 = !DILocation(line: 1815, column: 23, scope: !5223)
!5225 = !DILocation(line: 1815, column: 9, scope: !5221)
!5226 = !DILocation(line: 1821, column: 11, scope: !5227)
!5227 = distinct !DILexicalBlock(scope: !5228, file: !1104, line: 1821, column: 11)
!5228 = distinct !DILexicalBlock(scope: !5223, file: !1104, line: 1816, column: 5)
!5229 = !DILocation(line: 1821, column: 43, scope: !5227)
!5230 = !DILocation(line: 1821, column: 11, scope: !5228)
!5231 = !DILocation(line: 1823, column: 16, scope: !5232)
!5232 = distinct !DILexicalBlock(scope: !5227, file: !1104, line: 1822, column: 7)
!5233 = !DILocation(line: 1823, column: 24, scope: !5232)
!5234 = !DILocation(line: 1823, column: 42, scope: !5232)
!5235 = !DILocation(line: 1825, column: 7, scope: !5232)
!5236 = !DILocation(line: 1834, column: 17, scope: !5237)
!5237 = distinct !DILexicalBlock(scope: !5177, file: !1104, line: 1834, column: 7)
!5238 = !DILocation(line: 1834, column: 7, scope: !5177)
!5239 = !DILocation(line: 1837, column: 12, scope: !5240)
!5240 = distinct !DILexicalBlock(scope: !5237, file: !1104, line: 1835, column: 3)
!5241 = !DILocation(line: 1837, column: 24, scope: !5240)
!5242 = !DILocation(line: 1838, column: 12, scope: !5240)
!5243 = !DILocation(line: 1838, column: 24, scope: !5240)
!5244 = !DILocation(line: 1841, column: 12, scope: !5240)
!5245 = !DILocation(line: 1841, column: 22, scope: !5240)
!5246 = !DILocation(line: 1844, column: 12, scope: !5240)
!5247 = !DILocation(line: 1844, column: 20, scope: !5240)
!5248 = !DILocation(line: 1845, column: 12, scope: !5240)
!5249 = !DILocation(line: 1845, column: 20, scope: !5240)
!5250 = !DILocation(line: 1853, column: 5, scope: !5240)
!5251 = !DILocation(line: 1855, column: 3, scope: !5240)
!5252 = !DILocation(line: 1857, column: 3, scope: !5177)
!5253 = distinct !DISubprogram(name: "UART_DMATxAbortCallback", scope: !1104, file: !1104, line: 2777, type: !4727, scopeLine: 2778, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !5254)
!5254 = !{!5255, !5256}
!5255 = !DILocalVariable(name: "hdma", arg: 1, scope: !5253, file: !1104, line: 2777, type: !1163)
!5256 = !DILocalVariable(name: "huart", scope: !5253, file: !1104, line: 2779, type: !1129)
!5257 = !DILocation(line: 0, scope: !5253)
!5258 = !DILocation(line: 2779, column: 82, scope: !5253)
!5259 = !DILocation(line: 2781, column: 10, scope: !5253)
!5260 = !DILocation(line: 2781, column: 18, scope: !5253)
!5261 = !DILocation(line: 2781, column: 36, scope: !5253)
!5262 = !DILocation(line: 2784, column: 14, scope: !5263)
!5263 = distinct !DILexicalBlock(scope: !5253, file: !1104, line: 2784, column: 7)
!5264 = !DILocation(line: 2784, column: 21, scope: !5263)
!5265 = !DILocation(line: 2784, column: 7, scope: !5253)
!5266 = !DILocation(line: 2786, column: 24, scope: !5267)
!5267 = distinct !DILexicalBlock(scope: !5268, file: !1104, line: 2786, column: 9)
!5268 = distinct !DILexicalBlock(scope: !5263, file: !1104, line: 2785, column: 3)
!5269 = !DILocation(line: 2786, column: 42, scope: !5267)
!5270 = !DILocation(line: 2786, column: 9, scope: !5268)
!5271 = !DILocation(line: 2793, column: 10, scope: !5253)
!5272 = !DILocation(line: 2793, column: 22, scope: !5253)
!5273 = !DILocation(line: 2794, column: 10, scope: !5253)
!5274 = !DILocation(line: 2794, column: 22, scope: !5253)
!5275 = !DILocation(line: 2797, column: 10, scope: !5253)
!5276 = !DILocation(line: 2797, column: 20, scope: !5253)
!5277 = !DILocation(line: 2800, column: 10, scope: !5253)
!5278 = !DILocation(line: 2800, column: 18, scope: !5253)
!5279 = !DILocation(line: 2801, column: 10, scope: !5253)
!5280 = !DILocation(line: 2801, column: 18, scope: !5253)
!5281 = !DILocation(line: 2809, column: 3, scope: !5253)
!5282 = !DILocation(line: 2811, column: 1, scope: !5253)
!5283 = distinct !DISubprogram(name: "UART_DMARxAbortCallback", scope: !1104, file: !1104, line: 2822, type: !4727, scopeLine: 2823, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !5284)
!5284 = !{!5285, !5286}
!5285 = !DILocalVariable(name: "hdma", arg: 1, scope: !5283, file: !1104, line: 2822, type: !1163)
!5286 = !DILocalVariable(name: "huart", scope: !5283, file: !1104, line: 2824, type: !1129)
!5287 = !DILocation(line: 0, scope: !5283)
!5288 = !DILocation(line: 2824, column: 82, scope: !5283)
!5289 = !DILocation(line: 2826, column: 10, scope: !5283)
!5290 = !DILocation(line: 2826, column: 18, scope: !5283)
!5291 = !DILocation(line: 2826, column: 36, scope: !5283)
!5292 = !DILocation(line: 2829, column: 14, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5283, file: !1104, line: 2829, column: 7)
!5294 = !DILocation(line: 2829, column: 21, scope: !5293)
!5295 = !DILocation(line: 2829, column: 7, scope: !5283)
!5296 = !DILocation(line: 2831, column: 24, scope: !5297)
!5297 = distinct !DILexicalBlock(scope: !5298, file: !1104, line: 2831, column: 9)
!5298 = distinct !DILexicalBlock(scope: !5293, file: !1104, line: 2830, column: 3)
!5299 = !DILocation(line: 2831, column: 42, scope: !5297)
!5300 = !DILocation(line: 2831, column: 9, scope: !5298)
!5301 = !DILocation(line: 2838, column: 10, scope: !5283)
!5302 = !DILocation(line: 2838, column: 22, scope: !5283)
!5303 = !DILocation(line: 2839, column: 10, scope: !5283)
!5304 = !DILocation(line: 2839, column: 22, scope: !5283)
!5305 = !DILocation(line: 2842, column: 10, scope: !5283)
!5306 = !DILocation(line: 2842, column: 20, scope: !5283)
!5307 = !DILocation(line: 2845, column: 10, scope: !5283)
!5308 = !DILocation(line: 2845, column: 18, scope: !5283)
!5309 = !DILocation(line: 2846, column: 10, scope: !5283)
!5310 = !DILocation(line: 2846, column: 18, scope: !5283)
!5311 = !DILocation(line: 2854, column: 3, scope: !5283)
!5312 = !DILocation(line: 2856, column: 1, scope: !5283)
!5313 = !DISubprogram(name: "HAL_DMA_Abort_IT", scope: !712, file: !712, line: 380, type: !5027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !374)
!5314 = distinct !DISubprogram(name: "HAL_UART_AbortCpltCallback", scope: !1104, file: !1104, line: 2241, type: !4222, scopeLine: 2242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !5315)
!5315 = !{!5316}
!5316 = !DILocalVariable(name: "huart", arg: 1, scope: !5314, file: !1104, line: 2241, type: !1129)
!5317 = !DILocation(line: 0, scope: !5314)
!5318 = !DILocation(line: 2249, column: 1, scope: !5314)
!5319 = distinct !DISubprogram(name: "HAL_UART_AbortTransmit_IT", scope: !1104, file: !1104, line: 1874, type: !4183, scopeLine: 1875, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !5320)
!5320 = !{!5321}
!5321 = !DILocalVariable(name: "huart", arg: 1, scope: !5319, file: !1104, line: 1874, type: !1129)
!5322 = !DILocation(line: 0, scope: !5319)
!5323 = !DILocation(line: 1877, column: 3, scope: !5319)
!5324 = !DILocation(line: 1880, column: 7, scope: !5325)
!5325 = distinct !DILexicalBlock(scope: !5319, file: !1104, line: 1880, column: 7)
!5326 = !DILocation(line: 1880, column: 7, scope: !5319)
!5327 = !DILocation(line: 1882, column: 5, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !5325, file: !1104, line: 1881, column: 3)
!5329 = !DILocation(line: 1885, column: 16, scope: !5330)
!5330 = distinct !DILexicalBlock(scope: !5328, file: !1104, line: 1885, column: 9)
!5331 = !DILocation(line: 1885, column: 23, scope: !5330)
!5332 = !DILocation(line: 1885, column: 9, scope: !5328)
!5333 = !DILocation(line: 1889, column: 22, scope: !5334)
!5334 = distinct !DILexicalBlock(scope: !5330, file: !1104, line: 1886, column: 5)
!5335 = !DILocation(line: 1889, column: 40, scope: !5334)
!5336 = !DILocation(line: 1892, column: 11, scope: !5337)
!5337 = distinct !DILexicalBlock(scope: !5334, file: !1104, line: 1892, column: 11)
!5338 = !DILocation(line: 1892, column: 43, scope: !5337)
!5339 = !DILocation(line: 1892, column: 11, scope: !5334)
!5340 = !DILocation(line: 1895, column: 16, scope: !5341)
!5341 = distinct !DILexicalBlock(scope: !5337, file: !1104, line: 1893, column: 7)
!5342 = !DILocation(line: 1895, column: 24, scope: !5341)
!5343 = !DILocation(line: 1895, column: 9, scope: !5341)
!5344 = !DILocation(line: 1896, column: 7, scope: !5341)
!5345 = !DILocation(line: 1901, column: 14, scope: !5346)
!5346 = distinct !DILexicalBlock(scope: !5330, file: !1104, line: 1899, column: 5)
!5347 = !DILocation(line: 1901, column: 26, scope: !5346)
!5348 = !DILocation(line: 1904, column: 14, scope: !5346)
!5349 = !DILocation(line: 1904, column: 21, scope: !5346)
!5350 = !DILocation(line: 1912, column: 7, scope: !5346)
!5351 = !DILocation(line: 1919, column: 12, scope: !5352)
!5352 = distinct !DILexicalBlock(scope: !5325, file: !1104, line: 1917, column: 3)
!5353 = !DILocation(line: 1919, column: 24, scope: !5352)
!5354 = !DILocation(line: 1922, column: 12, scope: !5352)
!5355 = !DILocation(line: 1922, column: 19, scope: !5352)
!5356 = !DILocation(line: 1930, column: 5, scope: !5352)
!5357 = !DILocation(line: 1934, column: 3, scope: !5319)
!5358 = distinct !DISubprogram(name: "UART_DMATxOnlyAbortCallback", scope: !1104, file: !1104, line: 2867, type: !4727, scopeLine: 2868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !5359)
!5359 = !{!5360, !5361}
!5360 = !DILocalVariable(name: "hdma", arg: 1, scope: !5358, file: !1104, line: 2867, type: !1163)
!5361 = !DILocalVariable(name: "huart", scope: !5358, file: !1104, line: 2869, type: !1129)
!5362 = !DILocation(line: 0, scope: !5358)
!5363 = !DILocation(line: 2869, column: 82, scope: !5358)
!5364 = !DILocation(line: 2871, column: 10, scope: !5358)
!5365 = !DILocation(line: 2871, column: 22, scope: !5358)
!5366 = !DILocation(line: 2874, column: 10, scope: !5358)
!5367 = !DILocation(line: 2874, column: 17, scope: !5358)
!5368 = !DILocation(line: 2882, column: 3, scope: !5358)
!5369 = !DILocation(line: 2884, column: 1, scope: !5358)
!5370 = distinct !DISubprogram(name: "HAL_UART_AbortTransmitCpltCallback", scope: !1104, file: !1104, line: 2256, type: !4222, scopeLine: 2257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !5371)
!5371 = !{!5372}
!5372 = !DILocalVariable(name: "huart", arg: 1, scope: !5370, file: !1104, line: 2256, type: !1129)
!5373 = !DILocation(line: 0, scope: !5370)
!5374 = !DILocation(line: 2264, column: 1, scope: !5370)
!5375 = distinct !DISubprogram(name: "HAL_UART_AbortReceive_IT", scope: !1104, file: !1104, line: 1951, type: !4183, scopeLine: 1952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !5376)
!5376 = !{!5377}
!5377 = !DILocalVariable(name: "huart", arg: 1, scope: !5375, file: !1104, line: 1951, type: !1129)
!5378 = !DILocation(line: 0, scope: !5375)
!5379 = !DILocation(line: 1954, column: 3, scope: !5375)
!5380 = !DILocation(line: 1955, column: 3, scope: !5375)
!5381 = !DILocation(line: 1958, column: 7, scope: !5382)
!5382 = distinct !DILexicalBlock(scope: !5375, file: !1104, line: 1958, column: 7)
!5383 = !DILocation(line: 1958, column: 7, scope: !5375)
!5384 = !DILocation(line: 1960, column: 5, scope: !5385)
!5385 = distinct !DILexicalBlock(scope: !5382, file: !1104, line: 1959, column: 3)
!5386 = !DILocation(line: 1963, column: 16, scope: !5387)
!5387 = distinct !DILexicalBlock(scope: !5385, file: !1104, line: 1963, column: 9)
!5388 = !DILocation(line: 1963, column: 23, scope: !5387)
!5389 = !DILocation(line: 1963, column: 9, scope: !5385)
!5390 = !DILocation(line: 1967, column: 22, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5387, file: !1104, line: 1964, column: 5)
!5392 = !DILocation(line: 1967, column: 40, scope: !5391)
!5393 = !DILocation(line: 1970, column: 11, scope: !5394)
!5394 = distinct !DILexicalBlock(scope: !5391, file: !1104, line: 1970, column: 11)
!5395 = !DILocation(line: 1970, column: 43, scope: !5394)
!5396 = !DILocation(line: 1970, column: 11, scope: !5391)
!5397 = !DILocation(line: 1973, column: 16, scope: !5398)
!5398 = distinct !DILexicalBlock(scope: !5394, file: !1104, line: 1971, column: 7)
!5399 = !DILocation(line: 1973, column: 24, scope: !5398)
!5400 = !DILocation(line: 1973, column: 9, scope: !5398)
!5401 = !DILocation(line: 1974, column: 7, scope: !5398)
!5402 = !DILocation(line: 1979, column: 14, scope: !5403)
!5403 = distinct !DILexicalBlock(scope: !5387, file: !1104, line: 1977, column: 5)
!5404 = !DILocation(line: 1979, column: 26, scope: !5403)
!5405 = !DILocation(line: 1982, column: 14, scope: !5403)
!5406 = !DILocation(line: 1982, column: 22, scope: !5403)
!5407 = !DILocation(line: 1990, column: 7, scope: !5403)
!5408 = !DILocation(line: 1997, column: 12, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !5382, file: !1104, line: 1995, column: 3)
!5410 = !DILocation(line: 1997, column: 24, scope: !5409)
!5411 = !DILocation(line: 2000, column: 12, scope: !5409)
!5412 = !DILocation(line: 2000, column: 20, scope: !5409)
!5413 = !DILocation(line: 2008, column: 5, scope: !5409)
!5414 = !DILocation(line: 2012, column: 3, scope: !5375)
!5415 = distinct !DISubprogram(name: "UART_DMARxOnlyAbortCallback", scope: !1104, file: !1104, line: 2895, type: !4727, scopeLine: 2896, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !5416)
!5416 = !{!5417, !5418}
!5417 = !DILocalVariable(name: "hdma", arg: 1, scope: !5415, file: !1104, line: 2895, type: !1163)
!5418 = !DILocalVariable(name: "huart", scope: !5415, file: !1104, line: 2897, type: !1129)
!5419 = !DILocation(line: 0, scope: !5415)
!5420 = !DILocation(line: 2897, column: 82, scope: !5415)
!5421 = !DILocation(line: 2899, column: 10, scope: !5415)
!5422 = !DILocation(line: 2899, column: 22, scope: !5415)
!5423 = !DILocation(line: 2902, column: 10, scope: !5415)
!5424 = !DILocation(line: 2902, column: 18, scope: !5415)
!5425 = !DILocation(line: 2910, column: 3, scope: !5415)
!5426 = !DILocation(line: 2912, column: 1, scope: !5415)
!5427 = distinct !DISubprogram(name: "HAL_UART_AbortReceiveCpltCallback", scope: !1104, file: !1104, line: 2271, type: !4222, scopeLine: 2272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !5428)
!5428 = !{!5429}
!5429 = !DILocalVariable(name: "huart", arg: 1, scope: !5427, file: !1104, line: 2271, type: !1129)
!5430 = !DILocation(line: 0, scope: !5427)
!5431 = !DILocation(line: 2279, column: 1, scope: !5427)
!5432 = distinct !DISubprogram(name: "HAL_UART_IRQHandler", scope: !1104, file: !1104, line: 2021, type: !4222, scopeLine: 2022, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !5433)
!5433 = !{!5434, !5435, !5436, !5437, !5438, !5439}
!5434 = !DILocalVariable(name: "huart", arg: 1, scope: !5432, file: !1104, line: 2021, type: !1129)
!5435 = !DILocalVariable(name: "isrflags", scope: !5432, file: !1104, line: 2023, type: !24)
!5436 = !DILocalVariable(name: "cr1its", scope: !5432, file: !1104, line: 2024, type: !24)
!5437 = !DILocalVariable(name: "cr3its", scope: !5432, file: !1104, line: 2025, type: !24)
!5438 = !DILocalVariable(name: "errorflags", scope: !5432, file: !1104, line: 2026, type: !24)
!5439 = !DILocalVariable(name: "dmarequest", scope: !5432, file: !1104, line: 2027, type: !24)
!5440 = !DILocation(line: 0, scope: !5432)
!5441 = !DILocation(line: 2023, column: 25, scope: !5432)
!5442 = !DILocation(line: 2024, column: 25, scope: !5432)
!5443 = !DILocation(line: 2025, column: 25, scope: !5432)
!5444 = !DILocation(line: 2031, column: 7, scope: !5432)
!5445 = !DILocation(line: 2036, column: 7, scope: !5446)
!5446 = distinct !DILexicalBlock(scope: !5447, file: !1104, line: 2035, column: 5)
!5447 = distinct !DILexicalBlock(scope: !5448, file: !1104, line: 2034, column: 9)
!5448 = distinct !DILexicalBlock(scope: !5449, file: !1104, line: 2032, column: 3)
!5449 = distinct !DILexicalBlock(scope: !5432, file: !1104, line: 2031, column: 7)
!5450 = !DILocation(line: 2037, column: 7, scope: !5446)
!5451 = !DILocation(line: 2030, column: 26, scope: !5432)
!5452 = !DILocation(line: 2042, column: 19, scope: !5453)
!5453 = distinct !DILexicalBlock(scope: !5432, file: !1104, line: 2042, column: 7)
!5454 = !DILocation(line: 2042, column: 29, scope: !5453)
!5455 = !DILocation(line: 2042, column: 42, scope: !5453)
!5456 = !DILocation(line: 2042, column: 59, scope: !5453)
!5457 = !DILocation(line: 2042, column: 69, scope: !5453)
!5458 = !DILocation(line: 2045, column: 20, scope: !5459)
!5459 = distinct !DILexicalBlock(scope: !5460, file: !1104, line: 2045, column: 9)
!5460 = distinct !DILexicalBlock(scope: !5453, file: !1104, line: 2043, column: 3)
!5461 = !DILocation(line: 2045, column: 35, scope: !5459)
!5462 = !DILocation(line: 2045, column: 45, scope: !5459)
!5463 = !DILocation(line: 2047, column: 14, scope: !5464)
!5464 = distinct !DILexicalBlock(scope: !5459, file: !1104, line: 2046, column: 5)
!5465 = !DILocation(line: 2047, column: 24, scope: !5464)
!5466 = !DILocation(line: 2048, column: 5, scope: !5464)
!5467 = !DILocation(line: 2051, column: 20, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !5460, file: !1104, line: 2051, column: 9)
!5469 = !DILocation(line: 2051, column: 35, scope: !5468)
!5470 = !DILocation(line: 2051, column: 45, scope: !5468)
!5471 = !DILocation(line: 2053, column: 14, scope: !5472)
!5472 = distinct !DILexicalBlock(scope: !5468, file: !1104, line: 2052, column: 5)
!5473 = !DILocation(line: 2053, column: 24, scope: !5472)
!5474 = !DILocation(line: 2054, column: 5, scope: !5472)
!5475 = !DILocation(line: 2057, column: 20, scope: !5476)
!5476 = distinct !DILexicalBlock(scope: !5460, file: !1104, line: 2057, column: 9)
!5477 = !DILocation(line: 2057, column: 35, scope: !5476)
!5478 = !DILocation(line: 2057, column: 45, scope: !5476)
!5479 = !DILocation(line: 2059, column: 14, scope: !5480)
!5480 = distinct !DILexicalBlock(scope: !5476, file: !1104, line: 2058, column: 5)
!5481 = !DILocation(line: 2059, column: 24, scope: !5480)
!5482 = !DILocation(line: 2060, column: 5, scope: !5480)
!5483 = !DILocation(line: 2063, column: 20, scope: !5484)
!5484 = distinct !DILexicalBlock(scope: !5460, file: !1104, line: 2063, column: 9)
!5485 = !DILocation(line: 2063, column: 36, scope: !5484)
!5486 = !DILocation(line: 2063, column: 46, scope: !5484)
!5487 = !DILocation(line: 2065, column: 14, scope: !5488)
!5488 = distinct !DILexicalBlock(scope: !5484, file: !1104, line: 2064, column: 5)
!5489 = !DILocation(line: 2065, column: 24, scope: !5488)
!5490 = !DILocation(line: 2066, column: 5, scope: !5488)
!5491 = !DILocation(line: 2069, column: 16, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !5460, file: !1104, line: 2069, column: 9)
!5493 = !DILocation(line: 2069, column: 26, scope: !5492)
!5494 = !DILocation(line: 2069, column: 9, scope: !5460)
!5495 = !DILocation(line: 2072, column: 49, scope: !5496)
!5496 = distinct !DILexicalBlock(scope: !5497, file: !1104, line: 2072, column: 11)
!5497 = distinct !DILexicalBlock(scope: !5492, file: !1104, line: 2070, column: 5)
!5498 = !DILocation(line: 2074, column: 9, scope: !5499)
!5499 = distinct !DILexicalBlock(scope: !5496, file: !1104, line: 2073, column: 7)
!5500 = !DILocation(line: 2075, column: 7, scope: !5499)
!5501 = !DILocation(line: 2079, column: 20, scope: !5497)
!5502 = !DILocation(line: 2080, column: 20, scope: !5503)
!5503 = distinct !DILexicalBlock(scope: !5497, file: !1104, line: 2080, column: 11)
!5504 = !DILocation(line: 2080, column: 30, scope: !5503)
!5505 = !DILocation(line: 2080, column: 52, scope: !5503)
!5506 = !DILocation(line: 2080, column: 62, scope: !5503)
!5507 = !DILocation(line: 2085, column: 9, scope: !5508)
!5508 = distinct !DILexicalBlock(scope: !5503, file: !1104, line: 2081, column: 7)
!5509 = !DILocation(line: 2088, column: 13, scope: !5510)
!5510 = distinct !DILexicalBlock(scope: !5508, file: !1104, line: 2088, column: 13)
!5511 = !DILocation(line: 2088, column: 13, scope: !5508)
!5512 = !DILocation(line: 2090, column: 11, scope: !5513)
!5513 = distinct !DILexicalBlock(scope: !5510, file: !1104, line: 2089, column: 9)
!5514 = !DILocation(line: 2093, column: 22, scope: !5515)
!5515 = distinct !DILexicalBlock(scope: !5513, file: !1104, line: 2093, column: 15)
!5516 = !DILocation(line: 2093, column: 29, scope: !5515)
!5517 = !DILocation(line: 2093, column: 15, scope: !5513)
!5518 = !DILocation(line: 2097, column: 28, scope: !5519)
!5519 = distinct !DILexicalBlock(scope: !5515, file: !1104, line: 2094, column: 11)
!5520 = !DILocation(line: 2097, column: 46, scope: !5519)
!5521 = !DILocation(line: 2098, column: 17, scope: !5522)
!5522 = distinct !DILexicalBlock(scope: !5519, file: !1104, line: 2098, column: 17)
!5523 = !DILocation(line: 2098, column: 49, scope: !5522)
!5524 = !DILocation(line: 2098, column: 17, scope: !5519)
!5525 = !DILocation(line: 2101, column: 22, scope: !5526)
!5526 = distinct !DILexicalBlock(scope: !5522, file: !1104, line: 2099, column: 13)
!5527 = !DILocation(line: 2101, column: 30, scope: !5526)
!5528 = !DILocation(line: 2101, column: 15, scope: !5526)
!5529 = !DILocation(line: 2102, column: 13, scope: !5526)
!5530 = !DILocation(line: 2112, column: 13, scope: !5531)
!5531 = distinct !DILexicalBlock(scope: !5515, file: !1104, line: 2105, column: 11)
!5532 = !DILocation(line: 2124, column: 11, scope: !5533)
!5533 = distinct !DILexicalBlock(scope: !5510, file: !1104, line: 2117, column: 9)
!5534 = !DILocation(line: 2137, column: 9, scope: !5535)
!5535 = distinct !DILexicalBlock(scope: !5503, file: !1104, line: 2129, column: 7)
!5536 = !DILocation(line: 2140, column: 26, scope: !5535)
!5537 = !DILocation(line: 2147, column: 18, scope: !5538)
!5538 = distinct !DILexicalBlock(scope: !5432, file: !1104, line: 2147, column: 7)
!5539 = !DILocation(line: 2147, column: 34, scope: !5538)
!5540 = !DILocation(line: 2147, column: 44, scope: !5538)
!5541 = !DILocation(line: 2149, column: 5, scope: !5542)
!5542 = distinct !DILexicalBlock(scope: !5538, file: !1104, line: 2148, column: 3)
!5543 = !DILocation(line: 2150, column: 5, scope: !5542)
!5544 = !DILocation(line: 2154, column: 18, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5432, file: !1104, line: 2154, column: 7)
!5546 = !DILocation(line: 2154, column: 33, scope: !5545)
!5547 = !DILocation(line: 2154, column: 43, scope: !5545)
!5548 = !DILocation(line: 2156, column: 5, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5545, file: !1104, line: 2155, column: 3)
!5550 = !DILocation(line: 2157, column: 5, scope: !5549)
!5551 = !DILocation(line: 2159, column: 1, scope: !5432)
!5552 = distinct !DISubprogram(name: "UART_Receive_IT", scope: !1104, file: !1104, line: 2992, type: !4183, scopeLine: 2993, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !5553)
!5553 = !{!5554, !5555}
!5554 = !DILocalVariable(name: "huart", arg: 1, scope: !5552, file: !1104, line: 2992, type: !1129)
!5555 = !DILocalVariable(name: "tmp", scope: !5552, file: !1104, line: 2994, type: !1127)
!5556 = !DILocation(line: 0, scope: !5552)
!5557 = !DILocation(line: 2997, column: 14, scope: !5558)
!5558 = distinct !DILexicalBlock(scope: !5552, file: !1104, line: 2997, column: 7)
!5559 = !DILocation(line: 2997, column: 22, scope: !5558)
!5560 = !DILocation(line: 2997, column: 7, scope: !5552)
!5561 = !DILocation(line: 2999, column: 21, scope: !5562)
!5562 = distinct !DILexicalBlock(scope: !5563, file: !1104, line: 2999, column: 9)
!5563 = distinct !DILexicalBlock(scope: !5558, file: !1104, line: 2998, column: 3)
!5564 = !DILocation(line: 2999, column: 32, scope: !5562)
!5565 = !DILocation(line: 2999, column: 9, scope: !5563)
!5566 = !DILocation(line: 3001, column: 33, scope: !5567)
!5567 = distinct !DILexicalBlock(scope: !5562, file: !1104, line: 3000, column: 5)
!5568 = !DILocation(line: 3002, column: 23, scope: !5569)
!5569 = distinct !DILexicalBlock(scope: !5567, file: !1104, line: 3002, column: 11)
!5570 = !DILocation(line: 3002, column: 30, scope: !5569)
!5571 = !DILocation(line: 0, scope: !5569)
!5572 = !DILocation(line: 3002, column: 11, scope: !5567)
!5573 = !DILocation(line: 3004, column: 16, scope: !5574)
!5574 = distinct !DILexicalBlock(scope: !5569, file: !1104, line: 3003, column: 7)
!5575 = !DILocation(line: 3004, column: 14, scope: !5574)
!5576 = !DILocation(line: 3005, column: 27, scope: !5574)
!5577 = !DILocation(line: 3006, column: 7, scope: !5574)
!5578 = !DILocation(line: 3009, column: 16, scope: !5579)
!5579 = distinct !DILexicalBlock(scope: !5569, file: !1104, line: 3008, column: 7)
!5580 = !DILocation(line: 3009, column: 14, scope: !5579)
!5581 = !DILocation(line: 3010, column: 27, scope: !5579)
!5582 = !DILocation(line: 3015, column: 23, scope: !5583)
!5583 = distinct !DILexicalBlock(scope: !5584, file: !1104, line: 3015, column: 11)
!5584 = distinct !DILexicalBlock(scope: !5562, file: !1104, line: 3014, column: 5)
!5585 = !DILocation(line: 3015, column: 30, scope: !5583)
!5586 = !DILocation(line: 0, scope: !5583)
!5587 = !DILocation(line: 3015, column: 11, scope: !5584)
!5588 = !DILocation(line: 3017, column: 17, scope: !5589)
!5589 = distinct !DILexicalBlock(scope: !5583, file: !1104, line: 3016, column: 7)
!5590 = !DILocation(line: 3017, column: 27, scope: !5589)
!5591 = !DILocation(line: 3017, column: 30, scope: !5589)
!5592 = !DILocation(line: 3018, column: 7, scope: !5589)
!5593 = !DILocation(line: 3021, column: 32, scope: !5594)
!5594 = distinct !DILexicalBlock(scope: !5583, file: !1104, line: 3020, column: 7)
!5595 = !DILocation(line: 3021, column: 17, scope: !5594)
!5596 = !DILocation(line: 3021, column: 27, scope: !5594)
!5597 = !DILocation(line: 3021, column: 30, scope: !5594)
!5598 = !DILocation(line: 3025, column: 18, scope: !5599)
!5599 = distinct !DILexicalBlock(scope: !5563, file: !1104, line: 3025, column: 9)
!5600 = !DILocation(line: 3025, column: 9, scope: !5599)
!5601 = !DILocation(line: 3025, column: 30, scope: !5599)
!5602 = !DILocation(line: 3025, column: 9, scope: !5563)
!5603 = !DILocation(line: 3028, column: 7, scope: !5604)
!5604 = distinct !DILexicalBlock(scope: !5599, file: !1104, line: 3026, column: 5)
!5605 = !DILocation(line: 3031, column: 7, scope: !5604)
!5606 = !DILocation(line: 3034, column: 7, scope: !5604)
!5607 = !DILocation(line: 3037, column: 22, scope: !5604)
!5608 = !DILocation(line: 3044, column: 7, scope: !5604)
!5609 = !DILocation(line: 3047, column: 7, scope: !5604)
!5610 = !DILocation(line: 3055, column: 1, scope: !5552)
!5611 = distinct !DISubprogram(name: "UART_DMAAbortOnError", scope: !1104, file: !1104, line: 2753, type: !4727, scopeLine: 2754, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !5612)
!5612 = !{!5613, !5614}
!5613 = !DILocalVariable(name: "hdma", arg: 1, scope: !5611, file: !1104, line: 2753, type: !1163)
!5614 = !DILocalVariable(name: "huart", scope: !5611, file: !1104, line: 2755, type: !1129)
!5615 = !DILocation(line: 0, scope: !5611)
!5616 = !DILocation(line: 2755, column: 82, scope: !5611)
!5617 = !DILocation(line: 2756, column: 10, scope: !5611)
!5618 = !DILocation(line: 2756, column: 22, scope: !5611)
!5619 = !DILocation(line: 2757, column: 10, scope: !5611)
!5620 = !DILocation(line: 2757, column: 22, scope: !5611)
!5621 = !DILocation(line: 2764, column: 3, scope: !5611)
!5622 = !DILocation(line: 2766, column: 1, scope: !5611)
!5623 = distinct !DISubprogram(name: "UART_Transmit_IT", scope: !1104, file: !1104, line: 2920, type: !4183, scopeLine: 2921, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !5624)
!5624 = !{!5625, !5626}
!5625 = !DILocalVariable(name: "huart", arg: 1, scope: !5623, file: !1104, line: 2920, type: !1129)
!5626 = !DILocalVariable(name: "tmp", scope: !5623, file: !1104, line: 2922, type: !1127)
!5627 = !DILocation(line: 0, scope: !5623)
!5628 = !DILocation(line: 2925, column: 14, scope: !5629)
!5629 = distinct !DILexicalBlock(scope: !5623, file: !1104, line: 2925, column: 7)
!5630 = !DILocation(line: 2925, column: 21, scope: !5629)
!5631 = !DILocation(line: 2925, column: 7, scope: !5623)
!5632 = !DILocation(line: 2927, column: 21, scope: !5633)
!5633 = distinct !DILexicalBlock(scope: !5634, file: !1104, line: 2927, column: 9)
!5634 = distinct !DILexicalBlock(scope: !5629, file: !1104, line: 2926, column: 3)
!5635 = !DILocation(line: 2927, column: 32, scope: !5633)
!5636 = !DILocation(line: 0, scope: !5633)
!5637 = !DILocation(line: 2927, column: 9, scope: !5634)
!5638 = !DILocation(line: 2929, column: 33, scope: !5639)
!5639 = distinct !DILexicalBlock(scope: !5633, file: !1104, line: 2928, column: 5)
!5640 = !DILocation(line: 2930, column: 40, scope: !5639)
!5641 = !DILocation(line: 2930, column: 45, scope: !5639)
!5642 = !DILocation(line: 2930, column: 29, scope: !5639)
!5643 = !DILocation(line: 2930, column: 14, scope: !5639)
!5644 = !DILocation(line: 2930, column: 24, scope: !5639)
!5645 = !DILocation(line: 2930, column: 27, scope: !5639)
!5646 = !DILocation(line: 2931, column: 23, scope: !5647)
!5647 = distinct !DILexicalBlock(scope: !5639, file: !1104, line: 2931, column: 11)
!5648 = !DILocation(line: 2931, column: 30, scope: !5647)
!5649 = !DILocation(line: 0, scope: !5647)
!5650 = !DILocation(line: 2931, column: 11, scope: !5639)
!5651 = !DILocation(line: 2933, column: 27, scope: !5652)
!5652 = distinct !DILexicalBlock(scope: !5647, file: !1104, line: 2932, column: 7)
!5653 = !DILocation(line: 2934, column: 7, scope: !5652)
!5654 = !DILocation(line: 2937, column: 27, scope: !5655)
!5655 = distinct !DILexicalBlock(scope: !5647, file: !1104, line: 2936, column: 7)
!5656 = !DILocation(line: 2942, column: 57, scope: !5657)
!5657 = distinct !DILexicalBlock(scope: !5633, file: !1104, line: 2941, column: 5)
!5658 = !DILocation(line: 2942, column: 39, scope: !5657)
!5659 = !DILocation(line: 2942, column: 29, scope: !5657)
!5660 = !DILocation(line: 2942, column: 14, scope: !5657)
!5661 = !DILocation(line: 2942, column: 24, scope: !5657)
!5662 = !DILocation(line: 2942, column: 27, scope: !5657)
!5663 = !DILocation(line: 2945, column: 18, scope: !5664)
!5664 = distinct !DILexicalBlock(scope: !5634, file: !1104, line: 2945, column: 9)
!5665 = !DILocation(line: 2945, column: 9, scope: !5664)
!5666 = !DILocation(line: 2945, column: 30, scope: !5664)
!5667 = !DILocation(line: 2945, column: 9, scope: !5634)
!5668 = !DILocation(line: 2948, column: 7, scope: !5669)
!5669 = distinct !DILexicalBlock(scope: !5664, file: !1104, line: 2946, column: 5)
!5670 = !DILocation(line: 2951, column: 7, scope: !5669)
!5671 = !DILocation(line: 2952, column: 5, scope: !5669)
!5672 = !DILocation(line: 2959, column: 1, scope: !5623)
!5673 = distinct !DISubprogram(name: "UART_EndTransmit_IT", scope: !1104, file: !1104, line: 2967, type: !4183, scopeLine: 2968, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !5674)
!5674 = !{!5675}
!5675 = !DILocalVariable(name: "huart", arg: 1, scope: !5673, file: !1104, line: 2967, type: !1129)
!5676 = !DILocation(line: 0, scope: !5673)
!5677 = !DILocation(line: 2970, column: 3, scope: !5673)
!5678 = !DILocation(line: 2973, column: 10, scope: !5673)
!5679 = !DILocation(line: 2973, column: 17, scope: !5673)
!5680 = !DILocation(line: 2980, column: 3, scope: !5673)
!5681 = !DILocation(line: 2983, column: 3, scope: !5673)
!5682 = distinct !DISubprogram(name: "HAL_LIN_SendBreak", scope: !1104, file: !1104, line: 2310, type: !4183, scopeLine: 2311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !5683)
!5683 = !{!5684}
!5684 = !DILocalVariable(name: "huart", arg: 1, scope: !5682, file: !1104, line: 2310, type: !1129)
!5685 = !DILocation(line: 0, scope: !5682)
!5686 = !DILocation(line: 2316, column: 3, scope: !5687)
!5687 = distinct !DILexicalBlock(scope: !5688, file: !1104, line: 2316, column: 3)
!5688 = distinct !DILexicalBlock(scope: !5682, file: !1104, line: 2316, column: 3)
!5689 = !DILocation(line: 2316, column: 3, scope: !5688)
!5690 = !DILocation(line: 2316, column: 3, scope: !5691)
!5691 = distinct !DILexicalBlock(scope: !5687, file: !1104, line: 2316, column: 3)
!5692 = !DILocation(line: 2318, column: 10, scope: !5682)
!5693 = !DILocation(line: 2318, column: 17, scope: !5682)
!5694 = !DILocation(line: 2321, column: 3, scope: !5682)
!5695 = !DILocation(line: 2323, column: 17, scope: !5682)
!5696 = !DILocation(line: 2326, column: 3, scope: !5697)
!5697 = distinct !DILexicalBlock(scope: !5682, file: !1104, line: 2326, column: 3)
!5698 = !DILocation(line: 2328, column: 3, scope: !5682)
!5699 = !DILocation(line: 2329, column: 1, scope: !5682)
!5700 = distinct !DISubprogram(name: "HAL_MultiProcessor_EnterMuteMode", scope: !1104, file: !1104, line: 2337, type: !4183, scopeLine: 2338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !5701)
!5701 = !{!5702}
!5702 = !DILocalVariable(name: "huart", arg: 1, scope: !5700, file: !1104, line: 2337, type: !1129)
!5703 = !DILocation(line: 0, scope: !5700)
!5704 = !DILocation(line: 2343, column: 3, scope: !5705)
!5705 = distinct !DILexicalBlock(scope: !5706, file: !1104, line: 2343, column: 3)
!5706 = distinct !DILexicalBlock(scope: !5700, file: !1104, line: 2343, column: 3)
!5707 = !DILocation(line: 2343, column: 3, scope: !5706)
!5708 = !DILocation(line: 2343, column: 3, scope: !5709)
!5709 = distinct !DILexicalBlock(scope: !5705, file: !1104, line: 2343, column: 3)
!5710 = !DILocation(line: 2345, column: 10, scope: !5700)
!5711 = !DILocation(line: 2345, column: 17, scope: !5700)
!5712 = !DILocation(line: 2348, column: 3, scope: !5700)
!5713 = !DILocation(line: 2350, column: 17, scope: !5700)
!5714 = !DILocation(line: 2353, column: 3, scope: !5715)
!5715 = distinct !DILexicalBlock(scope: !5700, file: !1104, line: 2353, column: 3)
!5716 = !DILocation(line: 2355, column: 3, scope: !5700)
!5717 = !DILocation(line: 2356, column: 1, scope: !5700)
!5718 = distinct !DISubprogram(name: "HAL_MultiProcessor_ExitMuteMode", scope: !1104, file: !1104, line: 2364, type: !4183, scopeLine: 2365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !5719)
!5719 = !{!5720}
!5720 = !DILocalVariable(name: "huart", arg: 1, scope: !5718, file: !1104, line: 2364, type: !1129)
!5721 = !DILocation(line: 0, scope: !5718)
!5722 = !DILocation(line: 2370, column: 3, scope: !5723)
!5723 = distinct !DILexicalBlock(scope: !5724, file: !1104, line: 2370, column: 3)
!5724 = distinct !DILexicalBlock(scope: !5718, file: !1104, line: 2370, column: 3)
!5725 = !DILocation(line: 2370, column: 3, scope: !5724)
!5726 = !DILocation(line: 2370, column: 3, scope: !5727)
!5727 = distinct !DILexicalBlock(scope: !5723, file: !1104, line: 2370, column: 3)
!5728 = !DILocation(line: 2372, column: 10, scope: !5718)
!5729 = !DILocation(line: 2372, column: 17, scope: !5718)
!5730 = !DILocation(line: 2375, column: 3, scope: !5718)
!5731 = !DILocation(line: 2377, column: 17, scope: !5718)
!5732 = !DILocation(line: 2380, column: 3, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5718, file: !1104, line: 2380, column: 3)
!5734 = !DILocation(line: 2382, column: 3, scope: !5718)
!5735 = !DILocation(line: 2383, column: 1, scope: !5718)
!5736 = distinct !DISubprogram(name: "HAL_HalfDuplex_EnableTransmitter", scope: !1104, file: !1104, line: 2391, type: !4183, scopeLine: 2392, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !5737)
!5737 = !{!5738, !5739}
!5738 = !DILocalVariable(name: "huart", arg: 1, scope: !5736, file: !1104, line: 2391, type: !1129)
!5739 = !DILocalVariable(name: "tmpreg", scope: !5736, file: !1104, line: 2393, type: !24)
!5740 = !DILocation(line: 0, scope: !5736)
!5741 = !DILocation(line: 2396, column: 3, scope: !5742)
!5742 = distinct !DILexicalBlock(scope: !5743, file: !1104, line: 2396, column: 3)
!5743 = distinct !DILexicalBlock(scope: !5736, file: !1104, line: 2396, column: 3)
!5744 = !DILocation(line: 2396, column: 3, scope: !5743)
!5745 = !DILocation(line: 2396, column: 3, scope: !5746)
!5746 = distinct !DILexicalBlock(scope: !5742, file: !1104, line: 2396, column: 3)
!5747 = !DILocation(line: 2398, column: 10, scope: !5736)
!5748 = !DILocation(line: 2398, column: 17, scope: !5736)
!5749 = !DILocation(line: 2401, column: 19, scope: !5736)
!5750 = !DILocation(line: 2401, column: 29, scope: !5736)
!5751 = !DILocation(line: 2404, column: 10, scope: !5736)
!5752 = !DILocation(line: 2407, column: 10, scope: !5736)
!5753 = !DILocation(line: 2410, column: 3, scope: !5736)
!5754 = !DILocation(line: 2412, column: 17, scope: !5736)
!5755 = !DILocation(line: 2415, column: 3, scope: !5756)
!5756 = distinct !DILexicalBlock(scope: !5736, file: !1104, line: 2415, column: 3)
!5757 = !DILocation(line: 2417, column: 3, scope: !5736)
!5758 = !DILocation(line: 2418, column: 1, scope: !5736)
!5759 = distinct !DISubprogram(name: "HAL_HalfDuplex_EnableReceiver", scope: !1104, file: !1104, line: 2426, type: !4183, scopeLine: 2427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !5760)
!5760 = !{!5761, !5762}
!5761 = !DILocalVariable(name: "huart", arg: 1, scope: !5759, file: !1104, line: 2426, type: !1129)
!5762 = !DILocalVariable(name: "tmpreg", scope: !5759, file: !1104, line: 2428, type: !24)
!5763 = !DILocation(line: 0, scope: !5759)
!5764 = !DILocation(line: 2431, column: 3, scope: !5765)
!5765 = distinct !DILexicalBlock(scope: !5766, file: !1104, line: 2431, column: 3)
!5766 = distinct !DILexicalBlock(scope: !5759, file: !1104, line: 2431, column: 3)
!5767 = !DILocation(line: 2431, column: 3, scope: !5766)
!5768 = !DILocation(line: 2431, column: 3, scope: !5769)
!5769 = distinct !DILexicalBlock(scope: !5765, file: !1104, line: 2431, column: 3)
!5770 = !DILocation(line: 2433, column: 10, scope: !5759)
!5771 = !DILocation(line: 2433, column: 17, scope: !5759)
!5772 = !DILocation(line: 2436, column: 19, scope: !5759)
!5773 = !DILocation(line: 2436, column: 29, scope: !5759)
!5774 = !DILocation(line: 2439, column: 10, scope: !5759)
!5775 = !DILocation(line: 2442, column: 10, scope: !5759)
!5776 = !DILocation(line: 2445, column: 3, scope: !5759)
!5777 = !DILocation(line: 2447, column: 17, scope: !5759)
!5778 = !DILocation(line: 2450, column: 3, scope: !5779)
!5779 = distinct !DILexicalBlock(scope: !5759, file: !1104, line: 2450, column: 3)
!5780 = !DILocation(line: 2452, column: 3, scope: !5759)
!5781 = !DILocation(line: 2453, column: 1, scope: !5759)
!5782 = distinct !DISubprogram(name: "HAL_UART_GetState", scope: !1104, file: !1104, line: 2483, type: !5783, scopeLine: 2484, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !5785)
!5783 = !DISubroutineType(types: !5784)
!5784 = !{!1128, !1129}
!5785 = !{!5786, !5787, !5788}
!5786 = !DILocalVariable(name: "huart", arg: 1, scope: !5782, file: !1104, line: 2483, type: !1129)
!5787 = !DILocalVariable(name: "temp1", scope: !5782, file: !1104, line: 2485, type: !24)
!5788 = !DILocalVariable(name: "temp2", scope: !5782, file: !1104, line: 2485, type: !24)
!5789 = !DILocation(line: 0, scope: !5782)
!5790 = !DILocation(line: 2486, column: 18, scope: !5782)
!5791 = !DILocation(line: 2487, column: 18, scope: !5782)
!5792 = !DILocation(line: 2489, column: 40, scope: !5782)
!5793 = !DILocation(line: 2489, column: 3, scope: !5782)
!5794 = distinct !DISubprogram(name: "HAL_UART_GetError", scope: !1104, file: !1104, line: 2498, type: !5795, scopeLine: 2499, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1103, retainedNodes: !5797)
!5795 = !DISubroutineType(types: !5796)
!5796 = !{!24, !1129}
!5797 = !{!5798}
!5798 = !DILocalVariable(name: "huart", arg: 1, scope: !5794, file: !1104, line: 2498, type: !1129)
!5799 = !DILocation(line: 0, scope: !5794)
!5800 = !DILocation(line: 2500, column: 17, scope: !5794)
!5801 = !DILocation(line: 2500, column: 3, scope: !5794)
