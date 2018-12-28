
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
 .model small
.stack 100h
.data
    x db ?
    
    y db "hello$"
    .code
    main proc
     mov dx,@data
     mov ds,dx   
        
        
     mov ah,1
     int 21h
     
     
     cmp al,065d
     jge a
     jl Exit
     
     a:
     cmp al,090d
     jle b
     jg Exit
     
     b:
      mov ah,2
      mov dl,0ah
      int 21h
      mov dl,0dh
      int 21h  
        
        
     mov ah,9
     lea dx,y
     int 21h
     
     Exit:
     main endp
     
     
      
     
        
ret   





