.model small
.code
        mov ah, 01h
        int 21h

        mov bl, al
        mov ch, al
        mov cl, 04
        shr bl, cl
        add bl, 30h

        mov ah, 02h
        mov dl, bl
        int 21h

        mov ah, 02h
        mov dl, ch
        int 21h

        mov ah, 4ch
        int 21h
        end


