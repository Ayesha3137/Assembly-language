; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
; AYESHA ZAHEED
org 100h
.model small
.stack 100h
.data
.code
main proc
    mov ax, @data
    mov ds, ax

    mov cx, 5          
    mov bx, 1           

loop:
    push cx            

    mov cx, bx         
    call Stars   

    call newline       

    inc bx             

    pop cx             
    loop loop    

    mov ah, 4Ch
    int 21h
main endp
Stars proc
Starsloop:
    mov dl, '*'
    mov ah, 2
    int 21h
    loop Starsloop
    ret
Stars endp
newline proc
    mov dl, 10     
    mov ah, 2
    int 21h
    mov dl, 13    
    mov ah, 2
    int 21h
    ret
newline endp 

end main
