org 100h

mov al, 13h
mov ah, 0
int 10h 

%macro print 1
mov al, 1100b   ;color
mov cx, [x]     ;column
mov dx, [y]     ;line
mov ah, 0ch
int 10h 
%endmacro

%macro plus 0
pop ax
pop bx
add ax, bx
push ax
%endmacro

%macro return 1
mov ah, 4ch
mov al, %1
int 21h
%endmacro

print x
print y

return 0

x: db 10
y: db 50

push cx
push 1
plus
pop cx

print x
print y

return 0
