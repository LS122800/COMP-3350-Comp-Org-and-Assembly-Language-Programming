.386
.model flat, stdcall
.stack	4096
ExitProcess PROTO, dwExitCode : DWORD	
.data	
	input BYTE 1, 2, 3, 4, 5, 6, 7, 8
	shift BYTE 2
.code	
	
main PROC	
	mov eax, 0h
	mov ebx, 0h
	mov ecx, 0h
	mov edx, 0h
	mov	ah, input[0]
	mov	al, input[1]
	mov	bh, input[2]
	mov	bl, input[3]
	mov	ch, input[4]
	mov	cl, input[5]
	mov	dh, input[6]
	mov	dl, input[7]
	add ah, shift[0]
	add al, shift[0]
	add bh, shift[0]
	add bl, shift[0]
	add ch, shift[0]
	add cl, shift[0]
	add dh, shift[0]
	add dl, shift[0]
	INVOKE	ExitProcess, 0
main ENDP	
END	main