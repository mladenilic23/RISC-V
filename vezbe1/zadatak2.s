
li t0, 5    #Uneti broj
li s0, 1    #Pocetna vrednost za faktorijel

factorial_loop:
    beq t0, zero, done  
    mul s0, s0, t0   #s0 = s0 * t0
    addi t0, t0, -1  #t0 = t0 - 1
    j factorial_loop

done:nop
