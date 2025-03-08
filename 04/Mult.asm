// The inputs of this program are the values stored in R0
// and R1 (RAM[0] and RAM[1]). The program computes the product R0 * R1 and stores the result in
// R2 (RAM[2]). Assume that R0 ≥ 0, R1 ≥ 0, and R0 * R1 < 32768 (your program need not test these
// conditions). Your code should not change the values of R0 and R1. The supplied Mult.test script
// and Mult.cmp compare file are designed to test your program on the CPU emulator, using some
// representative R0 and R1 values.


    @0
    D=M              // D = first number
    @END
    D;JEQ // If first number is zero, go to END
    @1
    D=M
    @END
    D;JEQ // If first number is zero, go to END
(CONTINUE_MULTIPLY)
    @0
    D=M   // Do one 'round' of multiplication    
    @2
    M=D+M
    @1
    M=M-1  // Subtract one 'round' of multiplication
    D=M
    @END
    D;JEQ            // if A is 0, we've done enough 'multiplying' so exit
    @CONTINUE_MULTIPLY
    0;JMP            // if A>0, need to keep multiplying, goto CONTINUE_MULTIPLY
(END)
    @END
    0;JMP
