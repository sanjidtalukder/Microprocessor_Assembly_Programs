; Take input from user and display it back 

.model small
.stack 100h
.data

msg db 'Enter a character: $'
msg1 db  ?

.code

main proc
    mov ax, @data
    mov ds , ax  
    
    mov ah,9
    lea dx,msg
    int 21h
    
    mov ah, 1
    int 21h
    mov bl, al 
    
    mov ah, 2
    mov dl,al
    int 21h
    
    
    mov ah,4ch
    int 21h
    main endp
end main
    
    