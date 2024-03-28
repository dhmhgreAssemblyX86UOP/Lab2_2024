TITLE  Loops and Iteration
INCLUDE Irvine32.inc

.data

message BYTE "Loop Finished!!!",0
savedECX DWORD ?

.code
main PROC	
mov eax,0  ; iteration counter
mov ECX,10
LABEL1:
	mov savedECX, ECX
	;push ECX
	mov ECX,10
	LABEL2:
	  call WriteInt
	  inc eax
    LOOP LABEL2
	mov ECX, savedECX
	;pop ECX 	
LOOP LABEL1
	mov edx ,OFFSET message
	call WriteString
	exit
main ENDP
END main
