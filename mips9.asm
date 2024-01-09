.data 
a: .float 12.2
c: .float 15.5 

.text 
main:
jal func

li $v0, 10 
syscall

func:
l.s $f0, a
l.s $f1, c
mul.s $f3, $f0, $f1
mul.s $f12, $f3, $f0
li $v0, 2
syscall
addi $sp, $sp, -4
sw $ra, 0($sp)
jal ProductF
# For calling another function we need to store ra value(return value),
# so we stored it in stackpointer
# and took 4 bytes(int data) was firstly reserved
# then we again get that data to ra as it will be changed
# the value can also be stored in another resister
lw $ra, 0($sp)
addi $sp, $sp, 4
jr $ra  

ProductF:
mul.s  $f12, $f0, $f1
li $v0, 2
syscall
jr $ra