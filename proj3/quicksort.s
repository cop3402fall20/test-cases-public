	.file "stdin"
	.text
	.globl swap
	.type swap, @function
swap:
	push	%rbp
	movq	%rsp, %rbp
	push	%rbx
	pop	%rbx
	movq	%rbp, %rsp
	pop	%rbp
	ret
	.text
	.globl partition
	.type partition, @function
partition:
	push	%rbp
	movq	%rsp, %rbp
	push	%rbx
	# save any caller-saved registers
	push	%rax
	push	%rcx
	push	%rdx
	# pass parameters either in registers or in stack
	# call the function
	call	swap
	# restore the stack afterwards
	# restore any caller-saved registers
	pop	%rdx
	pop	%rcx
	pop	%rax
	pop	%rbx
	movq	%rbp, %rsp
	pop	%rbp
	ret
	.text
	.globl quickSort
	.type quickSort, @function
quickSort:
	push	%rbp
	movq	%rsp, %rbp
	push	%rbx
	pop	%rbx
	movq	%rbp, %rsp
	pop	%rbp
	ret
	.text
	.globl main
	.type main, @function
main:
	push	%rbp
	movq	%rsp, %rbp
	subq	$128, %rsp
	push	%rbx
	pop	%rbx
	movq	%rbp, %rsp
	pop	%rbp
	ret
