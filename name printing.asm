
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.org 100h
.data
.code
       
main proc

mov dl,'a'           
mov ah,2
int 21h  

mov dl,10
mov ah,2
int 21h 

mov dl,13 
mov ah,2
int 21h
        
mov dl,'y'           
mov ah,2
int 21h  

mov dl,10
mov ah,2
int 21h 

mov dl,13 
mov ah,2
int 21h
  
mov dl,'e'          
mov ah,2
int 21h
 
mov dl,10
mov ah,2
int 21h
      
mov dl,13
mov ah,2
int 21h

mov dl,'s'          
mov ah,2
int 21h
 
mov dl,10
mov ah,2
int 21h
      
mov dl,13
mov ah,2
int 21h

mov dl,'h'          
mov ah,2
int 21h
 
mov dl,10
mov ah,2
int 21h
      
mov dl,13
mov ah,2
int 21h

mov dl,'a'          
mov ah,2
int 21h
 
mov dl,10
mov ah,2
int 21h
      
mov dl,13
mov ah,2
int 21h

mov dl,'z'          
mov ah,2
int 21h
 
mov dl,10
mov ah,2
int 21h
      
mov dl,13
mov ah,2
int 21h

mov dl,'a'          
mov ah,2
int 21h
 
mov dl,10
mov ah,2
int 21h
      
mov dl,13
mov ah,2
int 21h

mov dl,'h'          
mov ah,2
int 21h
 
mov dl,10
mov ah,2
int 21h
      
mov dl,13
mov ah,2
int 21h

mov dl,'e'          
mov ah,2
int 21h
 
mov dl,10
mov ah,2
int 21h
      
mov dl,13
mov ah,2
int 21h

mov dl,'e'          
mov ah,2
int 21h
 
mov dl,10
mov ah,2
int 21h
      
mov dl,13
mov ah,2
int 21h

mov dl,'d'          
mov ah,2
int 21h
 
mov dl,10
mov ah,2
int 21h
      
mov dl,13
mov ah,2
int 21h
      
main endp
end main
ret




