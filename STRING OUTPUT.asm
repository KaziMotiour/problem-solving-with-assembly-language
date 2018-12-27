
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here  

.MODEL SMALL
.STACK 100H
.DATA
    M DB "hello$"
    
    .code proc
        mov ah,9
        lea dx,m
        int 21h

   ;MOV X,AL
    
   ;MOV AH,2
    ;MOV DL,0DH
    ;MOV DL,0AH
    ;INT 21H
    
   ; MOV AH,2
    ;MOV DL,X
    ;INT 21H'
    

ret




