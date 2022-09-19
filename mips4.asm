.data

	array: .word 256,1023,0xff0c,0xfffff0 

.text
	
	addi $a0, $0, 0x10010000
	addi $a1, $0, 4
	
	
do_something: 
	li $v0,0
	li $v1,0
	li $t3,0 
count: 
	lw $t0,0($a0)
 	li $t1,0 
loop:
 	andi $t2,$t0,1 
 	add $t1,$t1,$t2
 	srl $t0,$t0,1 
	bne $t0,$0, loop
 	bge $v0,$t1,no_way 
	move $v0,$t1 
	move $v1,$t3 
no_way: 
	addi $a0,$a0,4 
	addi $t3,$t3,1
 	bne $a1,$t3,count
	
	
	
	# exit prog
	li $v0, 10
	syscall


