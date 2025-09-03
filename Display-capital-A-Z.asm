
.model small
.stack 100h
.data
.code
main proc
    mov cx, 26     
    mov dl, 'A'     
    
letter_loop:
    mov ah, 2       
    int 21h        
    
    inc dl         
    loop letter_loop 
    
    mov ah, 4ch   
    int 21h
main endp
end main




