.model small

display macro msg
        lea dx,msg
        mov ah,09h
        int 21h
endm

.data
        frame db 5 dup('$')
        str1 db 'FileCreated$'
        str2 db 'FileDeleted$'
        str3 db 'Nothing$'
.code
        mov ax, @data
        mov ds, ax
L1:
        mov ah,0Ah
        mov dx,offset frame
        int 21h

        ;mov dx,offset frame
        ;mov al,00h
        ;mov ah,3ch
        ;mov cx,0000h
        ;int 21h
        ;display str3
        ;jc exit
        ;display str1

        mov dx,offset frame
        mov ah,41h
        int 21h
        jc exit
        display str2

exit:
        mov ah,4ch
        int 21h
        end
