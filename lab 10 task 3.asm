; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
; AYESHA ZAHEED
org 100h

.model small
.stack 100h
.data
arr db 5 dup(?)          
msg1 db 'Enter 5 characters: $'
msg2 db 10,13, 'You entered: $'

.code
main proc
    mov ax, @data
    mov ds, ax
    mov ah, 9
    mov dx, offset msg1
    int 21h

    mov si, offset arr
    mov cx, 5

inputloop:
    mov ah, 1         
    int 21h          
    mov [si], al   
    inc si
    loop inputloop

    mov ah, 9
    mov dx, offset msg2
    int 21h

    mov si, offset arr
    mov cx, 5

displayloop:
    mov dl, [si]
    mov ah, 2
    int 21h
    inc si
    loop displayloop

    mov ah, 4Ch
    int 21h
main endp
end main
ret