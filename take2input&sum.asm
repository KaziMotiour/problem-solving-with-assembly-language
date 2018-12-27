
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
.MODEL SMALL
.STACK 100H
.DATA
    X DB 0
    Y DB 0
    z db 0
 
 .CODE PROC
      mov ah,1
	int 21h
	mov x,al

	mov ah,1
	int 21h
	mov y,al

	add al,x
	mov y,al
	sub y,48
	

	mov ah,2
	mov dl,y
	int 21h

       
       
       
 
    
    
ret




