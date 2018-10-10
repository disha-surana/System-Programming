; Objective: convert 16-bits packed BCD into unpacked BCD

data segment
   packed dw 6394H
   unpacked dd ?
   
data ends


code segment 
    Assume: cs:code, ds:data
start:
    mov ax, data
    mov ds, ax  
   
    mov ax,0
    mov dx,0
    mov al,byte ptr packed
    mov dl,byte ptr packed+1
    shl ax,4
    shr al,4
    shl dx,4
    shr dl,4
    mov unpacked,ax
    mov unpacked+2,dx
   
code ends

end start ; set entry point and stop the assembler.
