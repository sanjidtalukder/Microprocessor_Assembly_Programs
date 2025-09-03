
.model small
.stack 100h
.data
.code
main proc
    
    mov dh,10001010b  ;8Ah
    mov cl,3d         ;3d
    
    shr dh,cl
    
    mov dl,dh
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main



