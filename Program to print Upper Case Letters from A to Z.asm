
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.model small
.stack 100h
.data
    x db "Upper case of A to Z: $"  
     y db ?
.code
main proc
    mov dx,@data
    mov ds,dx
    
    
    mov ah,9
    lea dx,x
    int 21h
    
    mov al,26
    mov y,al
    
    mov ah,2
    mov dl,65
    
    @loo:
     int 21h
      
     inc dl 
     dec y
      
     mov al,y
     cmp al,0 
     jne @loo
     
    
    
ret




