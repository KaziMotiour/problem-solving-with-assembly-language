
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here  
.model small
.stack 100h
.data

.code
    main proc
        mov cx,0
        pushing:
        mov ah,1
        int 21h
        mov bl,al
        
        cmp al,0dh
        je newline
        
        push bx
        inc cx
        jmp pushing
        
        
        newline:
        mov ah,2
        mov dl,0ah
        int 21h
        mov dl,0dh
        int 21h
        
        poping:
        pop dx
        
        int 21h
        loop poping
        
        main endp
    end mainp

ret




