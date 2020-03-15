

addi $s1,$0,1 # i = 1 
addi $s2, $0, 11 # n = 11
addi $s3,$0,1 #A
addi $s4,$0,1  #B
addi $s5,$0,1 #C
addi $s6,$0,1 #D
addi $t4,$0,4
addi $t5,$0,-1
loop:

	mult $s3,$s4
	mflo $t2 #the multipiction $s3 $s4 moved into $t2
	mult $s5,$s6
	mflo $t3 #the multipiction $s5 $s6 moved into $t3
	mult $t2,$t3
	mflo $t2 #the multipiction $t2 $t3 moved into $t2 
	add $s0,$s0,$t2 # the value of $s0+ $t2 moved to $s0
	addi $s1, $s1, 1 #i++
	addi $s3, $s3,2 # the value of $s3+2 moved to $s3
	add  $s4,$s4,$s1 #the value of $s4+$s1 moved to $s4
	mult $s5,$t4 
	mflo $s5 #the multipiction $s5 $t4 moved into $s5
	mult $s6,$t5
	mflo $s6 #the multipiction $s6 $t5 moved into $s6
	bne $s1, $s2, loop #brach if equal
 
