#7. Procurar quantas cópias de um elemento tem no vetor.  O termino é marcado com um elemento igual a 0.

li $t1, 0 #somador
li $t3, 3 #valor procurado
li $t2, 1
loop: beq $t2, $t0, fim
      lw $t2, 0($gp)
      addi $gp, $gp, 4
      beq $t2, $t3, igual  #Vê quantas copias do elemento $t3 há no vetor	
      j loop
igual: addi $t1, $t1, 1
	j loop
fim: nop
