
; If input = y or Y, display it, else exit

.MODEL SMALL
.STACK 100h
.DATA
msg db "Enter a character (y/Y to show): $"

.CODE
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    cmp bl,'y'
    je show
    cmp bl,'Y'
    je show
    jmp exit
    
show:
    mov ah,2
    mov dl,bl
    int 21h
    
exit:
    mov ah,4ch
    int 21h
main endp
end main





