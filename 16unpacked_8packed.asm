; Objective: convert 16-bits unpacked BCD into 8-bits packed BCD

data segment
   packed db ?
   unpacked dw 0603H
   
data ends


code segment 
    Assume: cs:code, ds:data
start:
    mov ax, data
    mov ds, ax  
   
    mov ax,unpacked
   
    shl al,4
    shr ax,4
   
    mov packed,al
   
   
code ends

end start ; set entry point and stop the assembler.
