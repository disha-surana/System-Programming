
; Objective: To calculate equation Ans=X+T+24H-Z assuming WORD data as byte-by-byte data
           ; X=180H, Y=190H, Z=200H

; Approach : storing lower byte of variables in AL and higher byte of variables in AH and performing arthmetic operations on AH-AL

data segment
            
    ;defining variables used in program 
             
    X DW 180H
    Y DW 190H
    Z DW 200H 
    Ans DW ?
    
data ends

code segment
    
    ASSUME:  CS:code,DS:data
    
start: 
    Mov AX,data    ;data segment loaded int o DS register
    Mov DS,AX      
    Mov AL,BYTE PTR X         ;lower byte of word X moved to AL
    Mov AH,BYTE PTR X+1       ;higher byte of word X moved to AH  
    ADD AL,BYTE PTR Y         ;lower byte of word Y added to AL (lower byte of X)
    ADC AH,BYTE PTR Y+1       ;higher byte of word Y added to AH (higher byte of X) along with carry (C) generated
    ADD AL,24H                ;24H is added to AL (lower byte of AX)
    ADC AH,00H                ;00H is added to AH along with carry so that any carry generated is accomodated in the answer
    SUB AL,BYTE PTR Z         ;lower byte of word Z subtracted from AL (lower byte of AX)
    SBB AH,BYTE PTR Z+1       ;higher byte of word Z subtracted from AH (higher byte of AX) along with borrow (C) generated
    Mov BYTE PTR Ans,AL       ;lower byte of Answer stored in Ans
    Mov BYTE PTR Ans+1,AH     ;Higher byte of Answer stored in Ans+1

code ends

end start ; set entry point and stop the assembler.
