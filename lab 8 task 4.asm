
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
; AYESHA ZAHEED
org 100h

mov ax, 0       
mov bx, 1
mov cx,3

L1: 
add ax, bx
inc bx   

Loop L1   
mov dx, ax    
add dl, '0'    
mov ah, 2
int 21h

ret




