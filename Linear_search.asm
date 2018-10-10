; Objective: linearly search an element from an array of numbers

data segment
    ar db 2,3,4,5,7,12
    num db 5
   
data ends


code segment 
    Assume: cs:code, ds:data
start:
    mov ax, data
    mov ds, ax  
    mov si,0
    mov cx,6
    
    next:   mov al,ar[si]
            inc si
            cmp al,num 
            LOOPNZ next             ;if ZF=1, number found in array

   
code ends

end start ; set entry point and stop the assembler.
