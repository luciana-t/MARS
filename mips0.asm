lw $t1, 0($gp)
lw $t3, 4($gp)
slt $t4, $t1, $t3
beq $t4, $t0, menorA
sw $t1, 8($gp)
j Fim
	menorA: sw $t3, 8($gp)
Fim: nop
