# 5. Somatório de um Vetor, os elementos são maiores que 0. O termino é marcado com um elemento igual a 0.

li $t1, 0 #onde sera somado
li $t2, 1
loop: beq $t2, $t0, fim
	lw $t2, 0 ($gp) #comeca em gp+0
	add $t1, $t1, $t2
	addi $gp, $gp, 4
	j loop
fim: nop