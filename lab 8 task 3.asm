
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
; AYESHA ZAHEED
org 100h

mov cx,10
mov dl,57

L1: 
mov ah,2
int 21h
dec dx

Loop L1

ret




