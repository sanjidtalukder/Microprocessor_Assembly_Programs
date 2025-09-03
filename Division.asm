
.model small
.stack 100h
.data
.code
main proc
    mov bx, 7
    mov ax, bx
    mov bl, 3
    div bl
    
    mov cl, al
    mov ch, ah
    
    mov dl, cl
    add dl, 48
    mov ah, 2
    int 21h
    
    mov dl, ch
    add dl, 48
    mov ah, 2
    int 21h                                
    
    mov ah, 4ch
    int 21h
    
    main endp
end main



