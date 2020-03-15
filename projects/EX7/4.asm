lui $s0, 0x1002# point to the first cell in the array
xor $t1,$t1,$t1
addi $t0,$t0,8
xor $s2,$s2,$s2#index
xor $s1,$s1,$s1
addi $s3,$s3,0

loop:
lw $t1, 0($s0)
mult $t1, $t1
mfhi $t2
mflo $t3
bne $t2, $s3, sum#chack if there is any value in mfhi
mult $t1, $t3
mfhi $t2
bne $t2, $s3, sum
j end

sum:
addi $s1,$s1,1# count
j end

end:
addi $s0, $s0,4 #move to the next cell in the array
addi $s2, $s2,1
bne $s2, $t0,loop
