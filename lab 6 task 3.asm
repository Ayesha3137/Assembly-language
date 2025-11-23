
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
; AYESHA ZAHEED

org 100h

.model small
.stack 100h

.data
msg1 db 'Enter a lowercase character: $'
msg2 db 0Dh,0Ah, 'After conversion to uppercase: $'

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov dx,offset msg1
    mov ah,09h
    int 21h
    
    mov ah,01h
    int 21h
    mov bl,al
    
    sub bl,32
    
    mov dx,offset msg2
    mov ah,09h
    int 21h
    
    mov dl,bl
    mov ah,02h
    int 21h
    
    mov ah,4Ch
    int 21h
main endp
end main
        
ret




