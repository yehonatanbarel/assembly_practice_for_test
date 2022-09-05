.data

	.msg: "hello world"

.text
	
	addi $t0, $0, 0x10
	move $a0, $t0
	li $v0,1
	syscall

exit_prog:
	li $v0, 10
	syscall