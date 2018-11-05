# Seja as variáveis A,B e C armazenadas na memória gp,gp+4,gp+8. Ordenar descrescente

lw $t1, 0($gp) #t1 = A
lw $t2, 4($gp) #t2 = B
lw $t3, 8($gp) #t3 = C

ble $t1, $t2, lab1
ble $t2, $t3, lab2

#CBA
sw $t3, 8($gp)
sw $t1, 0($gp)
j fim


	lab1: ble $t2, $t3, lab11
	      ble $t3, $t1, lab13
	      
	      #ACB
	      sw $t3, 4($gp)
	      sw $t2, 0($gp)
	      sw $t1, 8($gp)
	      j fim

		lab11: #ABC 
			sw $t1, 8($gp)
			sw $t3, 0($gp)
			j fim
		lab13: #CAB
			sw $t1, 4($gp)
			sw $t2, 0($gp)
			sw $t3, 8($gp)
			j fim
	
	lab2: ble $t3, $t1, lab21
	      #BAC
	      sw $t1, 4($gp)
	      sw $t2, 8($gp)
	      sw $t3, 0($gp)
	      j fim
	
		lab21: #BCA
			sw $t1, 0($gp)
			sw $t2, 8($gp)
			sw $t3, 4($gp)
			j fim
			
fim: nop
