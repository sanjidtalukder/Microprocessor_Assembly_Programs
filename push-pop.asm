.model small
.stack 100h
.data
.code
main proc

    MOV AX, 4561h
    MOV BX, 0FF15h    
    MOV CX, 1231h

    PUSH AX
    PUSH CX

    POP BX

  
    mov ah, 4Ch
    int 21h

main endp
end main
