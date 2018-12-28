
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
                    
.model small
.stack 100h
.data
 msg db "enter first digit: $"
  msg2 db "enter 2nd digv  it: $"
   msg3 db "sum: $"
   
   a db 0 
   b db 0
   c db 0

.code
    mov dx,@data
    mov ds,dx
    
    mov ah,9
    lea dx,msg
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    mov a,al
    
    mov ah,9
    lea dx,msg2
    int 21h 
    
    mov ah,1
    int 21h
    sub al,48
    mov b,al
    
    
    add al,a
    mov ah,0
    aaa  
    
    add ah,48
    add al,48
    
    mov bx,ax
    
    mov ah,9
    lea dx,msg3
    int 21h
           
    mov ah,2
    mov dl,bh
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    ret
    
ret




