#array
.data
a: .space 20

.text
main:
 	
 	li $t7, 0
 	
 	li $v0, 6
 	syscall
 	mov.s $f1, $f0
 	li $v0, 6
 	syscall
 	mov.s $f2, $f0
 	li $v0, 6
 	syscall
 	mov.s $f3, $f0
 	
	s.s $f1, a($t7)
	addi $t7, $t7, 4
	s.s $f2, a($t7)
	addi $t7, $t7, 4
	s.s $f3, a($t7)
	
	li $v0, 2
	l.s $f12, a($zero)
	syscall
li $v0, 10
syscall