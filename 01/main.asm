; main.asm — Minimal PE executable for Windows (x86-64)
; Calls INT 3 (software breakpoint), then returns using ExitProcess(0)

[bits 64]
global main
extern ExitProcess

section .text
main:
    int3                    ; trigger a debugger breakpoint
    sub rsp, 8 * 5          ; adjust stack ptr and allocate shadow space.
    xor rcx, rcx            ; exit code 0
    call ExitProcess        ; call Windows API to exit
