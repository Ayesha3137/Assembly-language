
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
; AYESHA ZAHEED
org 100h

.model small
.stack 100h

.data
   
msg1 db 'The user entered ', '$'
msg2 db ' character.$'   

.code
main proc
     
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov bl,al 
    
    mov dl,10
    mov dl,13
    int 21h
            
    mov dx,offset msg1
    mov ah,9
    int 21h
    
    mov dl,bl
    mov ah,2
    int 21h
    
    mov dx,offset msg2
    mov ah,09h
    int 21h 
            
    mov ah, 4Ch
    int 21h
main endp
end main

ret



