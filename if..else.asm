	lw x5, a
	lw x6, b
	blt x5, x6, L1 #if (a < b), L1
	beq x5, x6, L2 #if ( a== b), L2
	addi x7, x0, 6 #else c=6
	j Exit #jump to Exit
L1: addi x7, x0, 4 #c=4
	j Exit #jump to Exit
L2: addi x7, x0, 5; c=5
Exit: sw x7, c #store x7 value in c