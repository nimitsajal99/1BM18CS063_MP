.model small
.data
a db 20, 40, 60, 80, 10
b db 00
.code
mov ax, @data
mov ds, ax
mov bl, 00
mov SI, offset a
mov cx, 00
l1: mov al, [SI]
add bl, al
inc SI
inc CX
cmp cx, 05
jb l1
mov b, bx
mov ah, 4ch
int 21h
end


