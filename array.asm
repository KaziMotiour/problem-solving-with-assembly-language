
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
.model small
.stack 100h
.data
    x db 1,2,3,4,5
    y db ?
.code
    main proc
        mov ax,@data
        mov ds,ax
        
        
        mov al,0
        mov cx,5
        mov DI,0
        a:
        mov ah,1
        int 21h
        mov y[DI],al 
        inc DI
        dec cx 
        cmp cx,0
        jne a
        
        b:
        mov cx,5
        mov DI,0 
         mov ah,2 
        mov dl,0ah
        int 21h
        mov dl,0dh
        int 21h
        
        
        @loop:
        mov al,y[DI]
        mov dl,al 

        mov ah,2
        int 21h
        
        inc DI
        dec cx
        mov ah,2 
        mov dl,0ah
        int 21h
        mov dl,0dh
        int 21h
        
        cmp cx,0
        jne @loop
        
        end main
        main endp
        
        
ret




