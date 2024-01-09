.data
v1: .word 25
v2: .word 13
newline: .asciiz "\n"

.text 

main:
   
   lw $t0, v1
   lw $t1, v2
   add $t2, $t1, $t0
   sub $t3, $t1, $t0
   mul $t4, $t1, $t0
   div $t5, $t1, $t0
   rem $t6, $t1, $t0
   
   li $v0, 1
   move $a0, $t2
   syscall
   
   li $v0, 4
   move $a0, newline
   syscall
   
   li $v0, 1
   move $a0, $t3
   syscall
   
   li $v0, 4
   move $a0, newline
   syscall
   
   li $v0, 1
   move $a0, $t4
   syscall
   
   li $v0, 4
   move $a0, newline
   syscall
   
   li $v0, 1
   move $a0, $t5
   syscall
   
   li $v0, 4
   move $a0, newline
   syscall
   
   li $v0, 1
   move $a0, $t6
   syscall
   
   li $v0, 10
   syscall
   
   
  