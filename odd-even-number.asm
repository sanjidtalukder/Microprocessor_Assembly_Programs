.model small
.stack 100h
.data
    msg db "Enter a number: $"
    odd_msg db 13,10, "Odd$"
    even_msg db 10,13, "Even$" 
    number db ?

.code
main proc
    mov ax, @data
    mov ds, ax
    
    
    mov ah, 9
    lea dx, msg
    int 21h
    
    
    mov ah, 1
    int 21h
    sub al, '0' 
    mov number, al
    
   
    mov al, number
    and al, 1   
    
    jz is_even 
    
    
    mov ah, 9
    lea dx, odd_msg
    int 21h
    jmp exit
    
is_even:
    mov ah, 9
    lea dx, even_msg
    int 21h
    
exit:
    mov ah, 4ch
    int 21h
    
main endp
end main