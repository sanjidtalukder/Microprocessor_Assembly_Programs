.model small
.stack 100h
.data
.code
main proc

    mov al, 3
    mov bl, 5
    
    mul bl

    ;add ax, 30h
    mov dl, al
    mov ah, 2
    int 21h

    mov ah, 4Ch
    int 21h
main endp
end main