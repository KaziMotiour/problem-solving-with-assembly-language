
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
   
.model small
.stack 100h
.data
 x db ?
 y db ?
 
 .code
 main proc
    mov dx,@data
    mov dx,dx
    
    mov ah,1
    int 21h
    
    
    cmp al,065d
    jge a
    
    a:
    cmp al,090d
    jle b
    
    cmp al,097d
    jge d
    
    d:
    cmp al,0122d
    jle e
    
    
    
    b: 
    add al,32
    mov ah,2
    mov dl,al
    int 21h
    
    e: 
    sub al,32
    mov ah,2
    mov dl,al
    int 21h
                 
                   
ret




