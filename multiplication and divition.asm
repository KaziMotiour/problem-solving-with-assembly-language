
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
.model small
.stack 100h
.data 
    x dw ?
    y dw ?
.code
    main proc
        mov ax,@data
        mov ds,ax    
        
        mov ax,20
        mov bx,3
        mul bx   
        mov x,ax
        
        mov ax,30
        mov bx,5
        div bx
        mov y,ax
        endp

ret




