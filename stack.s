.global main
.text
main:
	push %rbp	
	mov %rsp, %rbp
	sub $0x10, %rsp 
	cmp $0x0, %rax
	jge s0
	jne s1
s0:
	mov $0x1, %rax
s1:
	mov %rax, -0x4(%rbp)
	lea 0x4(%rbp), %rcx
	mov -0x4(%rbp), %rdi
	call print
	add %rax, %rax
	mov  $0x000055555555513d, %rbx
	#mov %rip, -0xc(%rbp)
	lea -0xc(%rbp), %rdx
	mov $0x0000555555555000, %r11
	#mov (%rip), %r11
	add $0x155, %r11
	#sub $0x10,%r11 
	mov %r11, %rdi
	call print
	jmp *%r11
l2:
	mov %rbp, %rsp
	pop %rbp
	ret


