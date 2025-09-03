; Lab 07: Loop 0-9 and display "Positive" using LOOP

.MODEL SMALL
.STACK 100H
.DATA
msg db "Negative$"
newline db 13,10,'$'

.CODE
main proc
    mov ax,@data
    mov ds,ax

    mov cx,10         ; loop counter = 10

loop_start:
    ; Display message
    mov ah,9
    lea dx,msg
    int 21h

    ; New line
    mov ah,9
    lea dx,newline
    int 21h

    loop loop_start   

    ; Exit program
    mov ah,4ch
    int 21h
main endp
end main



