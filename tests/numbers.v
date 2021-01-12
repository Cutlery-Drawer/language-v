// Compound assignment
mut
foo := 1 /* Declaration */
foo  = 0 /* Assignment  */
foo += 1 /* Add */
foo -= 1 /* Subtract */
foo *= 1 /* Multiply */
foo /= 1 /* Divide */

foo <<= 1 /* Shift left  */
foo >>= 1 /* Shift right */
foo  ^= 0 /* Bitwise XOR */
foo  &= 1 /* Bitwise AND */
foo  |= 2 /* Bitwise OR  */

/* Unary operators */
foo = ~0 /* Bitwise NOT   */
foo = -1 /* Negative sign */
foo = +1 /* Positive sign */


// Floating-points
foo = -1.2
foo = +0.1
foo =  0.1
foo =  10.42
foo =  .1
foo = -.1
foo = +.1
foo =  1.
foo = -1.
foo = +1.

// Radices
a := 0x7B
b := 0b01111011
c := 0o173
d := 42

foo = -0x2D
foo = -0o77
foo = -0b110
foo = -42

foo = +0x2D
foo = +0o77
foo = +0b110
foo = +42


// Separators
foo = 0x2_D
foo = 0o7_7
foo = 0b1_0
foo = 004_2

foo := 1_000_000 + (1_000_000)
foo := 0b10_1_0  + (0b0_11)
foo := 3_12_2.55 + (3_122.55)
foo := 0x0A9F_F  + (0xF_F)
foo := 0o17_3    + (0o17_3)

foo = -0_1.2
foo = +0_0.1
foo =  0_0.1
foo =  1_4.2
foo =  .1
foo = -.1
foo = +.1
foo =  0_1.
foo = -0_1.
foo = +0_1.
