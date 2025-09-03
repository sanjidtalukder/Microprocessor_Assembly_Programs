; Declare a string and add 2 numbers

.MODEL SMALL
.STACK 100H
.DATA
a db "Input first number: $"
b db "Input second number: $"
c db "Result: $"

.CODE 
main proc 
    mov ax, @data
    mov ds, ax    
    
   
    mov ah, 9
    lea dx, a
    int 21h
    
    ; Input first digit
    mov ah, 1
    int 21h
    sub al, 30h      
    mov bl, al
    
    ; New line 
    mov ah, 2
    mov dl, 13
    int 21h
    mov dl, 10
    int 21h
    
    ; Second message
    mov ah, 9
    lea dx, b
    int 21h  
    
    ; Input second digit
    mov ah, 1
    int 21h
    sub al, 30h
    mov bh, al
    
    ; New line 
    mov ah, 2
    mov dl, 13
    int 21h
    mov dl, 10
    int 21h
    
    ; Result message 
    mov ah, 9
    lea dx, c
    int 21h
    
    ; Perform addition
    add bl, bh
    add bl, 30h    
    
    ; Display result
    mov ah, 2
    mov dl, bl
    int 21h
    
    ; Exit
    mov ah, 4ch
    int 21h
main endp
end main
