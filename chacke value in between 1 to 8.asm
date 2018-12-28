
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here    
.model small
.stack 100h
.DATA

  X DB ?
  H DB 'INPUT AGAIN$'
  I DB 'BETWEEN 1 & 8$'
  J DB 'NONE OF THEM$' 
          
    
.CODE   
 MAIN PROC  
    MOV AX,@DATA
    MOV DS,AX
    
      MOV AH,1
      INT 21H
      MOV X,AL
             
             
      CMP X,'0'
      JE C
      JLE D
      
      D:
       CMP X,'8'
       JLE E
            




        
       E:
       MOV AH,9
       LEA DX,I
       INT 21H
       JMP EXIT
       
       C:
       MOV AH,9
       LEA DX,H
       INT 21H
       JMP EXIT
               
       MOV AH,9
       LEA DX,J
       INT 21H
       
       EXIT:
       END MAINP 

ret




