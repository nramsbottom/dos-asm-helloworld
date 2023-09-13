
org 100h

section .text
; mode13 graphics
mov ah, 00h
mov al, 13h
int 10h

show_message:
; show the message
mov dx, msg
mov ah, 09h
int 21h

wait_for_key:
; read key, no echo
mov ah, 08h
int 21h

inc byte [cnt]

; press 'x' to quit
cmp al, 78h
je exit
cmp byte [cnt], 3
jne show_message



exit:
; terminate process
mov ah, 4Ch
int 21h


draw_circle:



section .data
        msg db 'Hello World!', 0Dh, 0Ah, '$'
        cnt db 0