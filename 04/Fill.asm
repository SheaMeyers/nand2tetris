   @0
   D=M
   @INFINITE_LOOP
   D;JLE 
(OUTER_LOOP)
   @counter
   M=D
   @SCREEN
   D=A
   @address
   M=D
(INNER_LOOP)
   @address
   A=M
   M=!M
   @address
   D=M
   @32
   D=D+A
   @address
   M=D
   @counter
   MD=M-1
   @INNER_LOOP
   D;JGT
   @0
   D=M
   @OUTER_LOOP
   D;JGT
(INFINITE_LOOP)
   @INFINITE_LOOP
   0;JMP