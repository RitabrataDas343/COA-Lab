#array
.data
a: .space 20
#it is the space allocated for the array

.text
main:
 	
 	li $t7, 0 # array index
 	
 	li $t0, 5
	li $t1, 12
	li $t2, 17
	sw $t0, a($t7)
	addi $t7, $t7, 4
	sw $t1, a($t7)
	addi $t7, $t7, 4
	sw $t2, a($t7)
	
	lw $a0, a($zero)
	li $v0, 1
	syscall
li $v0, 10
syscall