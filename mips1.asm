.data
	#number: .byte -1,'2',-3
	number: .byte 'a','b','c','d', 'e', 11,'f'
	#soso: .half 17, -2
	
.text
	li $t0, 0x10010000
	lb $s0, 6($t0)
	and $s0,$t0,$s0
	
	addi $t0, $0, 0
	addi $t1, $0, 0
	
	addi $s0, $0, -1# -1
	addi $s1, $0, 1 # 1
	
	slt $t0, $s0, $s1
	sltu $t1, $s0, $s1
	
	move $a0, $t1
	li $v0, 1
	syscall
	
	
	 
	
	
    li $v0, 10
    syscall   
	
