.model small
.data
a dw 10h
b dw 2h
.code
mov ax, @data
mov ds, ax
mov ax, a
mov bx, b
mul bx
mov ah, 4ch
int 21h
end

