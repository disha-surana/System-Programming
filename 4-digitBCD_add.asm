; Objective: to add elements of a 4-digit BCD numbered array

data segment
   par dw 1234H,1111H,2222H,3333H
    sum   dw ?
   
data ends


code segment 
    Assume: cs:code, ds:data
start:
    mov ax, data
    mov ds, ax  
   
    xor ax,ax
    mov cx,4
    mov si,0
    
    next:
        adc al,byte ptr par[si]
        daa 
        mov dl,al
        adc ah,byte ptr par[si+1]
        mov al,ah
        daa    
        mov ah,al
        mov al,dl
        inc si
        inc si
        LOOP next  
        
        mov sum,ax
        
         
   
   
code ends

end start ; set entry point and stop the assembler.
