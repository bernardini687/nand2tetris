  @R0
  D=M
  @multiplier
  M=D           // multiplier = RAM[0]

  @R1
  D=M
  @multiplicand // multiplicand = RAM[1]
  M=D

  @R2           // product
  M=0           // product = 0

  @i
  M=0           // i = 0

(MULTIPLY)
  @multiplier
  D=M
  @i
  D=D-M
  @END
  D;JEQ         // continue if (multiplier - i) != 0

  @multiplicand
  D=M
  @R2           // product
  M=D+M         // product += multiplicand

  @i
  M=M+1         // i++

  @MULTIPLY
  0;JMP

(END)
  @END
  0;JMP
