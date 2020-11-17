.file "stdin"
.text
.globl countdown
.type countdown, @function
countdown:
	# emit the function prologue
	push	%rbp
	mov	%rsp, %rbp
	sub	$24, %rsp
	push	%rbx
	# move parameter onto the stack
	mov	%rdi, -8(%rbp)
	# generate code for the body
	# generate code for the right-hand side of the assignment
	mov	-8(%rbp), %rax
	push	%rax
	pop	%rax
	mov	%rax, -16(%rbp)
	# generate code for the return expression
	# push the integer
	mov	$0, %rax
	push	%rax
	# save the return expression into %rax per the abi
	pop	%rax
	# emit the epilogue
	pop	%rbx
	mov	%rbp, %rsp
	pop	%rbp
	ret
.text
.globl main
.type main, @function
main:
	# stack space for argc and argv
	# emit main's prologue
	push	%rbp
	mov	%rsp, %rbp
	sub	$16, %rsp
	push	%rbx
	# move argc and argv from parameter registers to the stack
	mov	%rdi, -8(%rbp)
	mov	%rsi, -16(%rbp)
	# generate code for the body
	# generate code for the return expression
	# evaluate the parameter
	# push the integer
	mov	$4, %rax
	push	%rax
	# pass the parameter
	pop	%rdi
	# call the function
	call	countdown
	# push the return value
	push	%rax
	# save the return expression into %rax per the abi
	pop	%rax
	# emit main's epilogue
	pop	%rbx
	mov	%rbp, %rsp
	pop	%rbp
	ret
