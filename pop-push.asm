.model small
.stack 100h
.data
.code
main proc
   
    mov ax, @data
    mov ds, ax

   
    mov ax, 4561h
    mov bx, 0FF15h
    mov cx, 1231h

    
    push ax     
    push cx      

    pop bx       

 
    mov ah, 2
    mov dl, bl  
    int 21h

    
    mov ah, 4Ch
    int 21h
main endp
end main
