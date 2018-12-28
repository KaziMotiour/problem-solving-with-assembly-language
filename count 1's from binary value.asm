
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
.model small
.stack 100h 
.data

.code
    main proc
        
       mov al,10101101B
       mov bl,0
       mov cx,8
       
       
       
       @LOOP:
       
       SAL AL,1
       
       JC COUNT
       JMP END
       
       COUNT:
       INC BL
       
       END:
       LOOP @LOOP 
       
       
       MOV DL,BL
       add dl,48
       MOV AH,2
       INT 21H
      
      
      
      
        
        
        
        
        
        

ret




                                                           