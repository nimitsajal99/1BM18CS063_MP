.model small
.code
        mov cl,00h
        mov ah,00h
        mov al,03h
        int 10h
        jmp OK
        curs proc near
                mov bh,00h
                mov dh,12
                mov dl,40
                mov ah,02h
                int 10h
                ret
                curs endp
        OK:     mov ah,00h
                mov al,00h

        UP:     cmp al,99d
                jz down
                push ax
                add al,00h
                aam
                add ax,3030h
                push ax
                call curs
                pop ax
                push ax
                call display
                pop ax
                pop ax
                inc al
                push ax
                jmp UP
         display proc near
                mov bx,ax
                mov dl,ah
                mov ah,02h
                int 21h
                mov dl,bl
                mov ah,02h
                int 21h
                push cx
                push dx
                mov cx,0FFFFh
                outer:  mov dx,0FFFFh
                        inner:  dec dx
                        jnz inner
                        loop outer
                        pop dx
                        pop cx
                        ret
                        display endp
        down:    mov ah,4ch
                 int 21h
                 end
