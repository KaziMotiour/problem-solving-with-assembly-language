
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here

.model small
.stack 100h
.data
    x db ?
    y db ?
    z db ?
    
    
    .code 
    main proc
        
        mov dx,@data
        mov ds,dx
        
        mov ah,1
        int 21h
        sub al,48 
        mov x,al
        
         mov ah,1
        int 21h
        sub al,48 
        mov y,al
        
        add al,x
        mov ah,0
        aaa
        
        add al,48
        add ah,48
        
        mov bx,ax
        
        mov ah,2
        mov dl,bh
        int 21h
        
        mov ah,2
        mov dl,bl
        int 21h 
        
        
        
ret




