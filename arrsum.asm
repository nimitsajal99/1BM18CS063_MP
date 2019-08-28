.model small
.data
a db 02, 03, 04, 05
b db 08, 01, 09, 02
c db ?
.code
mov ax, @data
mov ds, ax
mov SI, offset a
mov DI, offset b
mov bx, offset c
mov cx, 00
l1:mov al, [SI]
add al, [DI]
mov [bx], al
inc SI
inc DI
inc bx
inc cx
cmp cx, 04
jb l1
mov ah, 4ch
int 21h
end

