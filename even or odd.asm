.model small
.stack 100h
.data
msg1 dw "even$"
msg2 dw "odd$"

.code

main proc
    
    mov ax,@data
    mov ds,ax
        
    mov ah,1
    int 21h
    int 21h
    cwd
    mov bx,2
    div bx
    cmp dx,0h
    je if
    jne else
    
    if:
       mov ah,9
       lea dx,msg1
       int 21h
       jmp end
       
    else:
        mov ah,9
        lea dx,msg2
        int 21h
        
        
    end:
        
          mov ah,4ch
          int 21h
          main endp
end main
                 
     