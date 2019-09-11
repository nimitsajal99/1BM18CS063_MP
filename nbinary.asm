.model small
.data
        no dw 4
        a dw 1,2,3,4
        key dw 5
.code
        mov ax,@data
        mov ds,ax
        mov si,0
        mov di,no
        add di,di
        dec di
        dec di

back:   cmp si,di
        ja loc3
        mov bx,si
        add bx,di
        shr bx,1
        and bx,0FFFEh
        mov ax,a[bx]
        cmp ax,key
        je loc1
        jb loc2
        mov di,bx
        dec di
        dec di
        jmp back

loc2:   mov si,bx
        inc si
        inc si
        jmp back

loc3:   mov cx,0
        jmp ahed

loc1:   mov cx,1

ahed:   mov ah,4ch
        int 21h
        end


