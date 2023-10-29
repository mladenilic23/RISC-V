
li t0, 2   # t0 = 2
li t1, 4   # t1 = 4
li t2, 5   # t2 = 5

#s0 = t0 + t1 - t2
add s0, t0, t1   # s0 = t0 + t1
sub s0, s0, t2   # s0 = s0 - t2

#s1 = 1 + t0 + t1 * t2
li t3, 1         # t3 = 1
mul t4, t1, t2   # t4 = t1 * t2
add s1, t3, t0   # s1 = t3 + t0
add s1, s1, t4   # s1 = s1 + t4

#s2 = 2 ^ t2
li t3, 1
loop:
  beq t2, zero, done  # Ako je t2 jednak nuli, kraj
  mul t3, t3, t0  # Mnozenje t3 sa 2
  addi t2, t2, -1  # Smanjiti t2 za 1
  jal x1, loop  
done:
mv s2, t3  # Rezultat se nalazi u s2

