
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al,2
sub al,1
mov dl,al
add dl,48
mov ah,2
int 21h

ret




