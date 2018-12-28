
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here  
.model small
.stack 100h
.data
        
        x db ?
        y db ?
        z db ?
.code
    main proc
        mov x,'0'
        mov y,'0'
        mov z,'0'
        
        e:
        cmp z,'0'
        jnge c
         
        mov dl,z
        mov ah,2
        int 21h
        
        
        c: 
       
        
        cmp y,'0'
        jnge a
         
        mov dl,y
        mov ah,2
        int 21h
      
        a:
        mov ah,2
        mov dl,x
        int 21h
        inc x 
         mov ah,2
        mov dx,0ah
        int 21h
        mov dx,0dh
        int 21h
        cmp x,58d
        je b  
        jmp e
        
        
        b: 
        
        mov x,'0' 
        inc y
        cmp y,58d
        je d
        jmp e
        
        d:
        mov x,'0' 
        mov y,'0'
        inc z
        cmp z,58d
        je exit
        jmp e
          
        
        exit:
        main endp
        
        
        
        
        
        
        
        

ret




