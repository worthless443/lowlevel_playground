.global  main
.text 
main:
	push %rbp
	mov %rsp, %rbp
	sub $0x10, %rsp
        mov $1, %rax
	mov $1, %rdi
	xor %r11, %r11
	xor %r12, %r12
	lea -0x8(%rbp), %r11
	
l1:
	mov %r12, %r13
	add $0x45, %r13
	mov %r13, (%r11)
	add $1, %r11
	add $1, %r12
	cmp $0x4, %r12
	jne l1
	sub $0x4, %r11
	mov  %r11, %rsi
	mov $13, %rdx
	syscall

	mov $12, %rax
	mov $0x73, %rdi
	syscall
	mov %rbp, %rcx
j2:    
	addl $0x5, (%rbp)
l2:
	mov (%rbp), %rdi 
	call print
	sub $0x1, %rbp
	cmpl $0x0, (%rbp)
	jne l2
	je j1
j1:
	mov $60, %rax
	mov $0, %rdi
	syscall

.section .rodata 
mess:
	.ascii "ningger\\n"
