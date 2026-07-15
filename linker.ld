/* linker.ld */
ENTRY(_start)
SECTIONS {
    . = 1M; /* 内核加载到 1MB 内存处 */
    .text : { *(.multiboot) *(.text) }
    .data : { *(.data) }
    .bss  : { *(.bss) }
}
