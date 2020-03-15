// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
// Remanning: 0- white / 1 - black .. (0,1,-1)
// if it 1- on, if 0 off 
//if the screen not equal to zero , it should remain black that means the key is pressed {more than zero} and turn on , else off 

(LOOP)
@KBD
D=M
@ON
D;JGT
@OFF
0;JMP

//if loop and on , write the value of 1111111111111111 = -1
//if loop and off , write the value of 0000000000000000 = 0

(ON)
@R0
M=-1
@WRITE
0;JMP

(OFF)
@R0
M=0
@WRITE
0;JMP

//counting R1 , and set screen to loop and R0 then the value to R0
(WRITE)
@COUNTING
D=A
@R1
M=D

(NEXT)
@R1
D=M
@SET
M=D
@SCREEN
D=A
@SET
M=M+D

@R0
D=M
@SET
A=M
M=D

//then we remove one from R1 to get zero, if it still more than zero then next 
@R1
D=M-1
M=D

@NEXT
D;JGE

@LOOP
0;JMP


