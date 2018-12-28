
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
.MODEL SMALL
.STACK 100H
.CODE
.MAIN PROC
    
    CALL PROC1
    JMP EXIT
    
    
    
    PROC1 PROC
    CALL PROC2
    MOV AH,2
    MOV DL,'3'
    INT 21H   
        
        
    RET     
    PROC2 PROC
    CALL PROC3
    MOV AH,2
    MOV DL,'2'
    INT 21H
    
    
    RET
    PROC3 PROC
    
    MOV AH,2
    MOV DL,'1'
    INT 21H
    
    RET
    
    EXIT:
    mov ah,4ch
    int 21h

ret




