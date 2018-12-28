
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
.model small
.stack 100h
.data
    x db "y $"
    y db "Y $"
    z db ?
    k db "hello! $"
    .code
    main proc
        
      mov dx,@data
      mov ds,dx 
      
      mov ah,1
      int 21h
      
      
      cmp al,x
      je a 
      
      cmp al,y
      je a
      jmp exit
      
     
      a: 
      
      mov ah,2
      mov dl,0ah
      int 21h
      mov dl,0dh
      int 21h
      
       mov ah,9
       lea dx,k
       int 21h
      exit:
      main endp
      
ret




