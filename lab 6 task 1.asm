
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
; AYESHA ZAHEED

.model small
.stack 100h

.data
line1   db '===== My Biodata =====$',
nameee    db 0Dh,0Ah, 'Name: Ayesha Zaheed$'
father  db 0Dh,0Ah, 'Father Name: Zaheed Akhtar$'
edu     db 0Dh,0Ah, 'Education: BS Computer Science$'
skills  db 0Dh,0Ah, 'Skills: C, C++, Java, Assembly Language$'
contact db 0Dh,0Ah, 'Contact: 0312-1234567$'

.code
main proc
    mov ax,@data
    mov ds,ax

    mov dx,offset line1
    mov ah,09h
    int 21h

    mov dx,offset nameee
    mov ah,09h
    int 21h

    mov dx,offset father
    mov ah,09h
    int 21h

    mov dx,offset edu
    mov ah,09h
    int 21h
    
    mov dx,offset skills
    mov ah,09h
    int 21h

    mov dx,offset contact
    mov ah,09h
    int 21h

    mov ah,4Ch
    int 21h
main endp
end main


ret




