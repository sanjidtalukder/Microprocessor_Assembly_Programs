; convert uppercase letter to lower case

.model small
.stack 100h
.data
msg db "Enter an uppercase latter: $"
msg1 db 10,13, "Lowercase latter: $"

.code

main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, msg
    int 21h
    
    mov ah, 1
    int 21h
    mov bl,al
    
    add bl, 20h
    
    mov ah, 9
    lea dx, msg1
    int 21h
    
    mov ah, 2
    mov dl,bl
    int 21h
    
    mov ah, 4ch
    int 21h
    
main endp
end main