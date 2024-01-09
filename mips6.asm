.data 
variable1: .float 10.0
variable2: .float 3.14

.text 
main:
jal Area
li $v0, 10 
syscall

Area:
l.s $f0, variable1
l.s $f1, variable2
mul.s $f3, $f0, $f1
mul.s $f12, $f3, $f0
li $v0, 2
syscall
jr $ra  