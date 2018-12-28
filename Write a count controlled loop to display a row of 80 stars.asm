
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
.model small
.stack 100h
.data
    x db "*$"
    
    .code
    main proc
        
      mov dx,@data
      mov ds,dx
      
      mov cx,80
      
      mov ah,2
      mov dl,x
      
      @loop:
      int 21h
      dec cx 
      mov ah,2
      mov dl,0ah
      int 21h
             
      mov dl,0dh
      int 21h
      add dl,29
      jnz @loop
                       
ret




