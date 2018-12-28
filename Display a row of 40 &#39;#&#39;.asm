
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
.MODEL SMALL
     .STACK 100H
     .DATA
          .CODE
     MAIN PROC
        MOV AH,2H
        MOV BL,'#'
        MOV CX,40
        
        LOOP1:
        MOV DL,BL
        INT 21H   
        MOV DL,0DH
        INT 21H
        MOV DL ,0AH
        INT 21H
        
       
        
        LOOP LOOP1
             
        