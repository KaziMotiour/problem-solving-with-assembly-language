
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
.model small
.stack 100h
.data
    x db ?
    y db "* $"
    
    .code
    main proc
        mov dx,@data
        mov ds,dx
        mov al,0 
        
        mov x,al
        
        
     
        
        
       l:
       mov ah,2
       mov dl,x 
       add dl,48
       int 21h
       inc x
       mov dl,0ah
       int 21h
       mov dl,0dh
       int 21h
       
       
       i: 
       mov al,x
       cmp al,9
       jle l
       
       jmp exit
       
       
       exit:
       main endp
       
       

ret




