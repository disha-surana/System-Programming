; Objective: convert 32-bits unpacked BCD into 16-bits packed BCD

data segment
   packed dw ?
   unpacked dd 01090603H
   
data ends


code segment 
    Assume: cs:code, ds:data
start:
    mov ax, data
    mov ds, ax  
   
    mov ax,unpacked
    mov dx,unpacked+2
   
    shl al,4
    shr ax,4
            
    shl dl,4
    shr dx,4
    
    mov byte ptr packed,al
    mov byte ptr packed+1,dl
   
   
code ends

end start ; set entry point and stop the assembler.
