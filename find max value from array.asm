
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here  
.model small
.stack 100h
.data
 x db 1,2,5,4,3
 y db ?
 .code
 main proc
    mov dx,@data
    mov ds,dx
    mov al,-99        
    mov cx,5
    mov DI,0
    
    a:
    cmp x[di],al
    jg b
    
    inc di
    dec cx
    cmp cx,0
    jne a 
    jmp exit
    
    b: 
     mov al,x[di]
     inc di
     dec cx
     cmp cx,0
     jne a   
    
    
    exit:
    mov dl,al 
    add dl,48
    mov ah,2
    int 21h
      
    

ret




