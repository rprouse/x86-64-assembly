; main.asm — Minimal PE executable for Windows (x86-64)
; Calls INT 3 (software breakpoint), then returns using ExitProcess(0)

global main
extern ExitProcess

section .text
main:
    int3                    ; trigger a debugger breakpoint
    xor ecx, ecx            ; exit code 0
    call ExitProcess        ; call Windows API to exit
