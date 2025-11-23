
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt  
; AYESHA ZAHEED

org 100h

quotient db ?
reminder db ?
.code
main proc
     mov ax,30
     mov bl,5
     div bl
     mov quotient,al
     mov reminder,ah
      
     mov dl,quotient
     add dl,48
     mov ah,2
     int 21h 
     
     mov dl,10
     int 21h
     
     mov dl,13
     int 21h
  
     mov dl,reminder                
     add dl,48
     mov ah ,2
     int 21h
main endp
end main 
    
ret