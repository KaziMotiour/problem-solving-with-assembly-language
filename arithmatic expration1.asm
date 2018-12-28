.model small
.stack 100h
.data
    x db ?
     y db ?
      z db ?
.code

main proc
         ;p*q+r
         
         
         mov ah,1
         int 21h
         
         mov bl,al
         sub bl,48
         
         int 21h
         sub al,48
         
         
         mul bl
         
         add ax,48
         mov cx,ax
         
         
         
         
         mov ah,1
         int 21h  
         
         add al,cl
         mov ah,0
         aaa
         
         add al,48
         add ah,48 
                 
         mov bx,ax
                 
         mov dh,bh
         mov ah,2
         int 21h
         
         mov dl,bl
         mov ah,2
         int 21h
         
        