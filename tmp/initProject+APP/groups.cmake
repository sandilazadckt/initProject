# groups.cmake

# group Start
add_library(Group_Start OBJECT
  "${SOLUTION_ROOT}/Start/startup_stm32f10x_md.s"
  "${SOLUTION_ROOT}/Start/core_cm3.c"
  "${SOLUTION_ROOT}/Start/system_stm32f10x.c"
)
target_include_directories(Group_Start PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  ${SOLUTION_ROOT}/Start
)
target_compile_definitions(Group_Start PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(Group_Start PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(Group_Start PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)
set(COMPILE_DEFINITIONS
  STM32F10X_MD
)
cbuild_set_defines(AS_ARM COMPILE_DEFINITIONS)
set_source_files_properties("${SOLUTION_ROOT}/Start/startup_stm32f10x_md.s" PROPERTIES
  COMPILE_FLAGS "${COMPILE_DEFINITIONS}"
)

# group User
add_library(Group_User OBJECT
  "${SOLUTION_ROOT}/../../en.stsw-stm32054_v3-6-0/STM32F10x_StdPeriph_Lib_V3.6.0/Project/STM32F10x_StdPeriph_Template/stm32f10x_it.c"
  "${SOLUTION_ROOT}/User/main.c"
)
target_include_directories(Group_User PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  ${SOLUTION_ROOT}/../../en.stsw-stm32054_v3-6-0/STM32F10x_StdPeriph_Lib_V3.6.0/Project/STM32F10x_StdPeriph_Template
)
target_compile_definitions(Group_User PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(Group_User PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(Group_User PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# group Lib
add_library(Group_Lib OBJECT
  "${SOLUTION_ROOT}/../../en.stsw-stm32054_v3-6-0/STM32F10x_StdPeriph_Lib_V3.6.0/Libraries/STM32F10X/src/misc.c"
  "${SOLUTION_ROOT}/../../en.stsw-stm32054_v3-6-0/STM32F10x_StdPeriph_Lib_V3.6.0/Libraries/STM32F10X/src/stm32f10x_adc.c"
  "${SOLUTION_ROOT}/../../en.stsw-stm32054_v3-6-0/STM32F10x_StdPeriph_Lib_V3.6.0/Libraries/STM32F10X/src/stm32f10x_bkp.c"
  "${SOLUTION_ROOT}/../../en.stsw-stm32054_v3-6-0/STM32F10x_StdPeriph_Lib_V3.6.0/Libraries/STM32F10X/src/stm32f10x_can.c"
  "${SOLUTION_ROOT}/../../en.stsw-stm32054_v3-6-0/STM32F10x_StdPeriph_Lib_V3.6.0/Libraries/STM32F10X/src/stm32f10x_cec.c"
  "${SOLUTION_ROOT}/../../en.stsw-stm32054_v3-6-0/STM32F10x_StdPeriph_Lib_V3.6.0/Libraries/STM32F10X/src/stm32f10x_crc.c"
  "${SOLUTION_ROOT}/../../en.stsw-stm32054_v3-6-0/STM32F10x_StdPeriph_Lib_V3.6.0/Libraries/STM32F10X/src/stm32f10x_dac.c"
  "${SOLUTION_ROOT}/../../en.stsw-stm32054_v3-6-0/STM32F10x_StdPeriph_Lib_V3.6.0/Libraries/STM32F10X/src/stm32f10x_dbgmcu.c"
  "${SOLUTION_ROOT}/../../en.stsw-stm32054_v3-6-0/STM32F10x_StdPeriph_Lib_V3.6.0/Libraries/STM32F10X/src/stm32f10x_dma.c"
  "${SOLUTION_ROOT}/../../en.stsw-stm32054_v3-6-0/STM32F10x_StdPeriph_Lib_V3.6.0/Libraries/STM32F10X/src/stm32f10x_exti.c"
  "${SOLUTION_ROOT}/../../en.stsw-stm32054_v3-6-0/STM32F10x_StdPeriph_Lib_V3.6.0/Libraries/STM32F10X/src/stm32f10x_flash.c"
  "${SOLUTION_ROOT}/../../en.stsw-stm32054_v3-6-0/STM32F10x_StdPeriph_Lib_V3.6.0/Libraries/STM32F10X/src/stm32f10x_fsmc.c"
  "${SOLUTION_ROOT}/../../en.stsw-stm32054_v3-6-0/STM32F10x_StdPeriph_Lib_V3.6.0/Libraries/STM32F10X/src/stm32f10x_gpio.c"
  "${SOLUTION_ROOT}/../../en.stsw-stm32054_v3-6-0/STM32F10x_StdPeriph_Lib_V3.6.0/Libraries/STM32F10X/src/stm32f10x_i2c.c"
  "${SOLUTION_ROOT}/../../en.stsw-stm32054_v3-6-0/STM32F10x_StdPeriph_Lib_V3.6.0/Libraries/STM32F10X/src/stm32f10x_iwdg.c"
  "${SOLUTION_ROOT}/../../en.stsw-stm32054_v3-6-0/STM32F10x_StdPeriph_Lib_V3.6.0/Libraries/STM32F10X/src/stm32f10x_pwr.c"
  "${SOLUTION_ROOT}/../../en.stsw-stm32054_v3-6-0/STM32F10x_StdPeriph_Lib_V3.6.0/Libraries/STM32F10X/src/stm32f10x_rcc.c"
  "${SOLUTION_ROOT}/../../en.stsw-stm32054_v3-6-0/STM32F10x_StdPeriph_Lib_V3.6.0/Libraries/STM32F10X/src/stm32f10x_rtc.c"
  "${SOLUTION_ROOT}/../../en.stsw-stm32054_v3-6-0/STM32F10x_StdPeriph_Lib_V3.6.0/Libraries/STM32F10X/src/stm32f10x_sdio.c"
  "${SOLUTION_ROOT}/../../en.stsw-stm32054_v3-6-0/STM32F10x_StdPeriph_Lib_V3.6.0/Libraries/STM32F10X/src/stm32f10x_spi.c"
  "${SOLUTION_ROOT}/../../en.stsw-stm32054_v3-6-0/STM32F10x_StdPeriph_Lib_V3.6.0/Libraries/STM32F10X/src/stm32f10x_tim.c"
  "${SOLUTION_ROOT}/../../en.stsw-stm32054_v3-6-0/STM32F10x_StdPeriph_Lib_V3.6.0/Libraries/STM32F10X/src/stm32f10x_usart.c"
  "${SOLUTION_ROOT}/../../en.stsw-stm32054_v3-6-0/STM32F10x_StdPeriph_Lib_V3.6.0/Libraries/STM32F10X/src/stm32f10x_wwdg.c"
)
target_include_directories(Group_Lib PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  ${SOLUTION_ROOT}/../../en.stsw-stm32054_v3-6-0/STM32F10x_StdPeriph_Lib_V3.6.0/Libraries/STM32F10X/inc
)
target_compile_definitions(Group_Lib PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(Group_Lib PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(Group_Lib PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)
