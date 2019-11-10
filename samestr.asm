.model small
.data
        msg1 db 'StringsAreSame$'
        msg2 db 'StringsAreNotSame$'
        str1 db 5 dup('0')
        str2 db 5 dup('0')
.code
        mov ax,@data
        mov ds,ax
        mov es,ax

        mov ah,0Ah
        mov dx,offset str1
        int 21h

        mov ah, 0Ah
        mov dx,offset str2
        int 21h

        mov SI,offset str1
        mov DI,offset str2
        mov cx,00h
        cld

again:
        mov bx,[SI]
        cmp bx,[DI]
        je equa
        jmp notEqual

equa:
        inc SI
        inc DI
        inc cx
        cmp cx,04h
        je printEqual
        jmp again

printEqual:

        mov dx,offset msg1
        mov ah, 09h
        int 21h

        jmp ending

notEqual:
        mov dx,offset msg2
        mov ah, 09h
        int 21h

ending: mov ah, 4ch
        int 21h
        end

