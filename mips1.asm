.data
	number: .byte -1,'2',-3
	#number: .byte 'a','b','c','d'
	soso: .half 17, -2
	
.text
	li $t0, 0x10010000
	lb $s0, 6($t0)
	and $s0,$t0,$s0
	
    li $v0, 10
    syscall   
	
