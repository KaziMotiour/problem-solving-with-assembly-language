
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code her
.model small
.stack 100h
.data
    x db ?
    y db ?
    z db 'uppur$'
    p db 'lower$'

.code
    main proc
        mov dx,@data
        mov ds,dx
        
        input:
        mov ah,1
        int 21h
        
        cmp al,09 ;if press teb program will be closed
        je end
        
        cmp al,65
        jge b
        jmp input
        
        b:
        cmp al,90
        jle c
        
        cmp al,97
        jge d
        jmp input
        
        
        d:
        cmp al,122
        jle e
        jmp input
        
        
        
        c:
        inc x
        jmp input
         
        e:
        inc y
        jmp input
                 
                 
                 
         end:
         
         mov dl,x
         add dl,48
         mov ah,2
         int 21h
         
         
         INT 21H
         mov dl,y
         add dl,48
         int 21h
         
        
        
        
        
        
        
        
ret




