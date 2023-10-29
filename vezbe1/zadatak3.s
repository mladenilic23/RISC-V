li a0, 2
li a1, 10  
li a2, 4   

mv a3, a0

jal minimum

minimum:
    blt a3, a1, check_a1_a2
    mv a3, a1  # Ako je a1 manji, postavi a1 kao minimum

check_a1_a2:
    blt a3, a2, minimum_done
    mv a3, a2  # Ako je a2 manji, postavi a2 kao minimum

minimum_done:
    jalr x0, x1, 0
