section .data
	msg db "%d",0
	msg1 db "sum=%f",10,0
	msg2 db "enter value of x and y (x > y)",0
section .bss
	x resd 1
	y resd 1
	n resd 1
	temp resd 1
	sum resq 1
section .text
	global main
	extern printf,scanf,puts
main:

	push n
	push msg
	call scanf
	add esp,8

abc:
	push msg2
	call puts
	add esp,4

	push x
	push msg
	call scanf
	add esp,8

	push y
	push msg
	call scanf
	add esp,8

	mov edx,dword[x]
	cmp edx,dword[y]
	jg next 
	jmp abc

next:	fldz
	fstp qword[sum]
	
	mov ecx,dword[n]

lp:	mov eax,dword[y]
	mul ecx
	
	mov dword[temp],eax
	fild dword[temp]

	fild dword[y]
	
	fdiv st1
	
	fadd qword[sum]

	fstp qword[sum]

	loop lp

	fld qword[sum]
	sub esp,16
	fstp qword[esp]
	push msg1
	call printf
	add esp,20

	ret
	



	
