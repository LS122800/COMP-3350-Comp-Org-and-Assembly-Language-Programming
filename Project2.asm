#Author - Logan Sayle
#Last Modification - October 10th, 2021
#Description - Takes an input array and a shift value and offsets the values in the input array by the shift value and places them in a new array called output.

.386
.model flat, stdcall
.stack	4096
ExitProcess PROTO, dwExitCode : DWORD	
.data	
	input BYTE 1, 2, 3, 4, 5, 6, 7, 8 #array to be shifted
	output BYTE 8 DUP(?) #output is an uninitialized Byte array of the same length as the input array, in this case length 8;
	shift DWORD 2 #value to shift array values by
.code	
	
main PROC
	#ecx = length of input - shift
	mov ecx, LENGTHOF input
	sub ecx, shift
	#loop through array and shift locations
	shift:
		mov al, input[esi] #take the value from input and store it in a temp register
		mov output[edi] #place the value from input into the correct location in output
		inc esi ##increment indices
		inc edi	
	loop shift
	INVOKE	ExitProcess, 0
main ENDP	
END	main