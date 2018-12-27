
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
.model small
.stack 100h
.data
    x db 0
    
    .code
        mov ah,1 ; input.
        int 21h  ;input execute command.
        mov x,al 
        
        mov ah,2
        mov dl,0dh   ;carge return
        int 21h
        mov dl,0ah   ;line feed
        int 21h
        
        mov ah,2 ;output
        mov dl,x  
        int 21h  ;outpur execute command.
       
        
    
   
ret




