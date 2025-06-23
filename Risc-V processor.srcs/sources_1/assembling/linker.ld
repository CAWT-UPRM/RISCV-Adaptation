/* linker.ld */
ENTRY(main)

MEMORY
{
  ROM (rx) : ORIGIN = 0x00000000, LENGTH = 1024 /* 1KB ROM for instructions */
  RAM (rwx): ORIGIN = 0x10000000, LENGTH = 33000 /* 33KB RAM for data */
}

SECTIONS
{
  /* all .text (your instructions) go into ROM starting at 0x0 */
  .text : {
    *(.text)        /* every input section named .text */
  } > ROM

  /* all initialized data (.data) goes into RAM at 0x1000_0000 */
  .data : {
    *(.data)        /* your signal/kernel/result labels */
  } > RAM

  /* uninitialized data (.bss) also lives in RAM, zero-filled */
  .bss  : {
    *(.bss)
    *(COMMON)
  } > RAM
}