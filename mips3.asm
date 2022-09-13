.data

	malaga12: .asciiz "aa"
	malaga13: .asciiz "bb"

.text

	#addi $s1, $0, 4
	#addi $s0,$0,1
	#lp: sll $s0,$s0,1
	#addi $s1,$s1,1
	#slt $t0, $s0, $zero
	#beq $t0, $zero, lp
	
	addi $9, $0, 0
	la $t1, malaga12
	sll $t1,$t1,24
	sra $t1,$t1,20
	li $t0,17
	blt $t1, $t2, malaga13
	
sof:

	# exit prog
	li $v0,10
	syscall