.data

	Mugabe: .byte -1,-2,-3,-4,-5
	Zimbabwe: .word 0x11223344, 0x55667788
	#M: .byte 1,2,3,4,5

.text

	li $t1, 4
	li $v0, 1
	move $a0, $t1
	syscall
	
	lbu $v1, Mugabe($t1)
	li $v0, 1
	move $a0, $v1
	syscall
	
	
	li $t9, 4
	lb $v0, Zimbabwe($t1)
	move $a0, $v0
	li $v0, 34
	syscall
	
	or $v0, $v1, $v0
	#move $a0, $v0
	#li $v0, 1
	#syscall
	
	
exit_prog:
	li $v0, 10
	syscall
