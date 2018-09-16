
org 100h

; mode13 graphics
mov ah, 00h
mov al, 13h
int 10h

wait_for_key:
; read key, no echo
mov ah, 08h
int 21h

; show the typed key
mov ah, 02h
mov dl, al
int 21h

; press 'x' to quit
cmp al, 78h
je exit
jmp wait_for_key



exit:
; terminate process
mov ah, 4Ch
int 21h


