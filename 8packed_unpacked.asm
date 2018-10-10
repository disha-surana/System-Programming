; Objective: convert 8-bits packed BCD into unpacked BCD

data segment
   packed db 34H
   unpacked dw ?
   
data ends


code segment 
    Assume: cs:code, ds:data
start:
    mov ax, data
    mov ds, ax  
   
    mov ax,0
    mov al,packed
    shl ax,4
    shr al,4
    mov unpacked,ax
   
code ends

end start ; set entry point and stop the assembler.
