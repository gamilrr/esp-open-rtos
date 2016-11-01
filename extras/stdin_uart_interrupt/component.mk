# Component makefile for extras/stdin_uart_interrupt
#
# See examples/terminal for usage. Well, actually there is no need to see it
# for 'usage' as this module is a drop-in replacement for the original polled
# version of reading from the UART.

INC_DIRS += $(stdin_uart_interrupt_ROOT)

# args for passing into compile rule generation
stdin_uart_interrupt_SRC_DIR = $(stdin_uart_interrupt_ROOT)

INCLUDE_SRC_IN_AR = 0
EXTRA_LDFLAGS = -Wl,--whole-archive $(stdin_uart_interrupt_AR) -Wl,--no-whole-archive

$(eval $(call component_compile_rules,stdin_uart_interrupt))
