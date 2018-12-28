
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
.MODEL SAMLL
.STACK 100H
.DATA
.CODE
MAIN PROC  
    
    MOV BL,'0'
    MOV BH,'0'
    MOV AH,2H
    MOV CX,100
   
      LOOP1:  
      cmp Bl,'0'
      jg as     
      jmp as1
      
      as: MOV DL,BL
            INT 21H 
      as1:
      MOV DL,BH
      INT 21H 
      
      MOV DL,0aH
      INT 21H
      MOV DL,0dH
      INT 21H
      INC BH
     
      CMP BH,3AH
       JE C
       JMP END1
       C:
        MOV BH,'0'
        INC BL
       END1:
    LOOP LOOP1
ret




