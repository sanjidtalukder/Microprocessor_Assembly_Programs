
; Input a character, only display if uppercase A–Z

.MODEL SMALL
.STACK 100h
.DATA
msg db "Enter a character: $"

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
    
    cmp bl,'A'
    jl exit          
    cmp bl,'Z'
    jg exit          
    
    ; display if uppercase
    mov ah,2
    mov dl,bl
    int 21h
    
exit:
    mov ah,4ch
    int 21h
main endp
end main




