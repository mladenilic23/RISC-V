addi x10, x0, 7       # x10 = 7
addi x11, x0, 3       # x11 = 3

#  SLL
sll x12, x10, x11  # x12 = 7 << 3, x12 = 56

# SRL
srl x13, x10, x11  # x13 = 7 >> 3, x13 = 0

# XOR
xor x14, x10, x11  # x14 = 7 ^ 3, x14 = 4

# SLT
slt x15, x11, x10  # x15 = (3 < 7) ? 1 : 0, x15 = 1
