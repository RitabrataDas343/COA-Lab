.data 
variable1: .float 10.0
variable2: .float 3.14

.text
l.s $f0, variable1
l.s $f1, variable2
mul.s $f3, $f0, $f1
mul.s $f4, $f3, $f0

#Printing
li $v0 2
mov.s $f12, $f4
syscall
