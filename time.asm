.model small
display macro
        mov ah,02h
        mov dl, ':'
        int 21h
ENDM display

.code

        mov ah,2ch
        int 21h

        mov al,ch
        AAM
        add ax,3030h
        mov bx,ax
        mov dl,ah
        mov ah,02h
        int 21h
        mov dl,bl
        mov ah,02h
        int 21h

        display
        

        mov al,cl
        AAM
        add ax,3030h
        mov bx,ax
        mov dl,ah
        mov ah,02h
        int 21h
        mov dl,bl
        mov ah,02h
        int 21h

        display

        mov al,dh
        AAM
        add ax,3030h
        mov bx,ax
        mov dl,ah
        mov ah,02h
        int 21h
        mov dl,bl
        mov ah,02h
        int 21h

        

        mov ah,4ch
        int 21h
        end



