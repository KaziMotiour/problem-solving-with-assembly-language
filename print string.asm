
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
.MODEL SMALL
.STACK 100H
.DATA
    X DB "hello!$" 
    Y DB "i'am matiour$"
    z db 0
 
 .CODE PROC
        first: 
       mov ah,9
       lea dx,x
       int 21h
       JMP second 
       
       
       
       
       second:
       mov ah,2
       mov dl,0dh
       int 21h
       mov ah,2
       mov dl,0ah
       int 21h
       
       mov ah,9
       lea dx,y
       int 21h
       
    
    
    
ret




