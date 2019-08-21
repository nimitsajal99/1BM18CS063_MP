.model small
.data
a dw 20h
b dw 30h
.code
mov ax,@data
mov ds,ax
mov ax,a
mov bx,b
sub ax,bx
mov ah,4ch
int 21h
end
