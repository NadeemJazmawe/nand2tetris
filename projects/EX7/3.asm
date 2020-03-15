lui $s0, 0x1002 # point to the first cell in the array
xor $s1, $s1, $s1 # load index
xor $s2, $s2, $s2
xor $s3, $s3, $s3
xor $t1, $t1, $t1
addi $t0, $t0, 16
xor $t2, $t2, $t2
loop:
lw $t1, ($s0)
mult $t1, $t1#multplication
mfhi $t2 
add $s1, $s1, $t2# put the answer in the register
mflo $t2
add $s2, $s2, $t2
addi $s0, $s0, 4# move in the array
addi $s3, $s3, 1
bne $s3, $t0, loop
