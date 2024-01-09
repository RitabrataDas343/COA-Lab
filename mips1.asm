.data

   menu: .asciiz "Type of Input\n1. Cube\n2. Rectangular Prism\nEnter choice: "
   val: .asciiz "Enter Value: "
   newline: .asciiz "\n"
   l: .asciiz "Enter Length: "
   w: .asciiz "Enter Breadth: "
   h: .asciiz "Enter Height: "
   result: .asciiz "Volume: "

.text

main: 

   li $v0,4
   la $a0,menu
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
   la $a0,val
   syscall
   
   li $v0,5
   syscall
   move $t4,$v0
   
   li $v0,4
   la $a0,newline
   syscall
   
   li $v0,4
   la $a0,result
   syscall
   
   mul $t5,$t4,$t4
   mul $t5,$t5,$t4
   move $a0, $t5
   jr $ra

prism:
   li $v0,4
   la $a0,l
   syscall
   
   li $v0,5
   syscall
   move $t3,$v0
   
   li $v0,4
   la $a0,w
   syscall
   
   li $v0,5
   syscall
   move $t4,$v0
   
   li $v0,4
   la $a0,h
   syscall
   
   li $v0,5
   syscall
   move $t5,$v0
   
   li $v0,4
   la $a0,newline
   syscall
   
   li $v0,4
   la $a0,result
   syscall
   
   mul $t3,$t3,$t4
   mul $t3,$t3,$t5
   move $a0,$t3
   jr $ra
