.data 
oper: .word 1
a: .float 12.2
c: .float 15.5 

.text 
main:
jal calculator

li $v0, 10 
syscall

calculator:
l.s $f0, c
l.s $f1, a
lw $t6, oper

beq  $t6, 0 C0
beq  $t6, 1 C1
beq  $t6, 2 C2
beq  $t6, 3 C3
endSwitch:
jr $ra

C0: 
add.s $f12, $f0, $f1
li $v0, 2 
syscall
j endSwitch

C1:
sub.s $f12, $f0, $f1
li $v0, 2 
syscall
j endSwitch

C2:
mul.s $f12, $f1, $f2
li $v0, 2 
syscall
j endSwitch

C3:
div.s $f12, $f1, $f2
li $v0, 2 
syscall
j endSwitch

