// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

// In short: at the beganning i write how it will work then i start to plan it:
// We start at R2=0 . Then we check the value of R1 , if it more than zero it will step , if not it will go to the end. 
// Then we step R2, and add R1 to R2 so the result will back to R2{change the value of R2}.
// Then reduce 1 from R0 , if it still more than 0 , it step loop again and again until it equal to 0.
// R0=RAM[0], R1=RAM[1], R2=RAM[2].

@R2
M=0
@R0
D=M
@STEP
D;JGT
@END
0;JMP


(STEP)
@R2
D=M
@R1
D=D+M
@R2
M=D


@R0
D=M-1
M=D

   
@STEP
D;JGT

(END)
@END
0;JMP