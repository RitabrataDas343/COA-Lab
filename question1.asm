#1st  question
.data
n: .asciiz "Type of input\n1.Cube\n2.Rectangular Prism\nEnter choice: "
n1: .asciiz "Enter Value: "
n2: .asciiz "Enter Length: "
n3: .asciiz "Enter Breadth: "
n4: .asciiz "Enter Height: "
res_str: .asciiz "Volume: "

.text

li $v0,4
la $a0,n
syscall
 
li $v0,5
syscall

 
li $t1,1
sub $t2,$t1,$v0
bgezal $t2,cube


li $t1,2
sub $t2,$t1,$v0
bgezal $t2,prism


li $v0,1
syscall


li $v0,10
syscall


cube:
li $v0,4
la $a0,n1
syscall
li $v0,5
syscall
move $t4,$v0
li $v0,4
la $a0,res_str
syscall
mul $t5,$t4,$t4
mul $a0,$t5,$t4
jr $ra


prism:
li $v0,4
la $a0,n2
syscall
li $v0,5
syscall
move $t3,$v0
li $v0,4
la $a0,n3
syscall
li $v0,5
syscall
move $t4,$v0
li $v0,4
la $a0,n4
syscall
li $v0,5
syscall
move $t5,$v0
li $v0,4
la $a0,res_str
syscall
mul $t3,$t3,$t4
mul $t3,$t3,$t5
move $a0,$t3
jr $ra
