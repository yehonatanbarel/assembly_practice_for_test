.data


.text

	addi $s1, $0, 4
	addi $s0,$0,1
	lp: sll $s0,$s0,1
	addi $s1,$s1,1
	slt $t0, $s0, $zero
	beq $t0, $zero, lp
	
sof:

	# exit prog
	li $v0,10
	syscall