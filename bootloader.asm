bits 16
org 0x7c00

mov si,hello 
mov ah,0x0e

write :
	lodsb
	or al,al 
	jz halt 
	int 0x10
	jmp write

halt :
	hlt
	
hello : db "Hello World",0

times 510 - ( $ - $$ ) db 0 ;
dw 0xaa55 