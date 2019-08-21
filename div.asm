.model small
.data
a dw 20
b dw 4
.code
mov ax, @data
mov ds, ax
mov ax, a
mov bx, b
div bx
mov ah, 4ch
int 21h
end

