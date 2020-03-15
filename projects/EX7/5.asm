fact:
	beqz $a0, end_fact # brach to label if register $a0==0
	addi $sp, $sp, -8 #save return on stack
	sw $ra, 8($sp) 
	sw $a0, 4($sp)
	addi $a0, $a0, -1 
	jal fact #call fact
	lw $a0, 4($sp) #restore argument a
	lw $ra, 8($sp) #restore return address
	mult $v0, $a0
	mflo $v0
	addi $sp, $sp, 8 #2items
	jr $ra
	end_fact:
		addi $v0, $0, 1 #return 1 to$v0
		jr $ra #return to caller
		
end: