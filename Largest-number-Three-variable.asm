; Take Three inputs and display the largest value

.MODEL SMALL
.STACK 100h
.DATA
msg  db "Enter first number: $"
msg1 db 10,13,"Enter second number: $"
msg2 db 10,13,"Enter third number: $"
msg3 db 10,13,"Largest number is: $"

.CODE
main proc
    mov ax,@data
    mov ds,ax
    
    ; First input
    mov ah,9
    lea dx,msg
    int 21h
    
    mov ah,1
    int 21h
    sub al,30h
    mov bl,al
    
    ; Second input
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov ah,1
    int 21h
    sub al,30h
    mov bh,al
    
    ; Third input
    mov ah,9
    lea dx,msg2
    int 21h
    
    mov ah,1
    int 21h
    sub al,30h
    mov cl,al
    
    ; Compare BL and BH
    cmp bl,bh
    jge a 
    mov bl,bh           
    
    a:
    cmp bl,cl
    jge lavel        
    mov bl,cl           
    
   lavel:
    ; Show message
    mov ah,9
    lea dx,msg3
    int 21h
    
    ; Convert to ASCII and print
    add bl,30h
    mov ah,2
    mov dl,bl
    int 21h
    
exit:
    mov ah,4ch
    int 21h
main endp
end main
