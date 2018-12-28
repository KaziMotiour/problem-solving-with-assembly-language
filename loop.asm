
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here 
.model small
.stack 100h

.code
    main proc
        mov cx,9
        mov ah,2
        mov dl,'1'
        
        top:
        int 21h
        inc dl
        
        
        loop top
        
       
        
        main endp
        

ret




