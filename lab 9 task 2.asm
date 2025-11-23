; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
; AYESHA ZAHEED
org 100h

.data
msg1 DB 10,13, "Enter a one-digit number: $"
msg2 DB 10,13, "The number is positive.$"
msg3 DB 10,13, "The number is zero.$"

.code
main proc
    mov ax, @data
    mov ds, ax

    mov dx, offset msg1
    mov ah, 9
    int 21h

    mov ah, 1
    int 21h
    sub al, 30h    
    mov bl, al

    cmp bl, 0
    je zero_label    
    jg positive_label

zero_label:
    mov dx, offset msg3
    mov ah, 9
    int 21h
    jmp exit

positive_label:
    mov dx, offset msg2
    mov ah, 9
    int 21h

exit:
    mov ah, 4Ch
    int 21h

main endp
end main

ret




