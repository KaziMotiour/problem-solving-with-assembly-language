
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here

.model small
.stack 100h
.data  
    x db 0
    y db 0
    
    .code proc
        mov ah,1
        int 21h
        mov x,al
        
        mov ah,1
        int 21h
        mov y,al
        
        mov dl,x
        add dl,y 
        sub dl,48
        
        mov ah,2
        int 21h
        

ret




