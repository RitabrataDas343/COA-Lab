.data
    
    message: .asciiz "Enter a number:"
    newline: .asciiz "\n"
    array: .space 12
    array_min:  .asciiz "\nMin: " 
    array_max:  .asciiz "\nMax: "

.text

main:
    li $t0,0

while1:  
    beq $t0,12,exit1
     	
     	li $v0,4
	la $a0,message
	syscall
     	
     	li $v0,5
	syscall
	jal IP
	addi $t0, $t0, 4
     
    j while1
 
    
exit1: 
	addi $t0,$zero,0

while2:
      
     beq $t0,12,exit2
     
     lw $t6,array($t0)
     
     # increament index
     addi $t0,$t0,4
     
     # print number
     
     li $v0,1
     move $a0,$t6
     syscall
     
     # print new line
     
     li $v0,4
     la $a0,newline
     syscall
     
     j while2
 
    
exit2:
	addi $t0, $zero, 0  # setting index incrementer to 0
    	lw $t6, array($t0)     # setting $t6 to the smallest index of the array
    	lw $t7, array($t0)      # setting $t7 to the greatest index of the array
        addi $t1,$zero,4
        
while3:

    	beq $t1, 12, exit3   # branch to exit if $t0 is 3
    	
    	li $v0,1
    	move $a0,$t6
    	syscall
    	
        li $v0,1
    	move $a0,$t7
    	syscall
    	
    	move $t3,$t6
    	move $t5,$t7
    
    	lw $t4,array($t1)
    
    	blt $t4, $t3, minimum    
    	bgt $t4, $t5, maximum
    	
    	j while3             # jump to the beginning of the while loop   

    	minimum:
        	lw $t6, array($t1)
        	addi $t1, $t1, 4    # too add the next four bytes for the array index
        	j while3
       
    	maximum:
        	lw $t7, array($t1)
        	addi $t1, $t1, 4    # too add the next four bytes for the array index
        	j while3

exit3:
	li $v0, 4           # prints the array_min string
    	la $a0, array_min
    	syscall

    	li $v0, 1           # prints the smallest integer
    	move $a0, $t6
    	syscall

    	li $v0, 4           # prints the array_max string
    	la $a0, array_max
    	syscall

    	li $v0, 1           # prints the largest integer
    	move $a0, $t7
    	syscall
    	
    	li $v0,10
	syscall


IP:
move $s0,$v0
sw  $s0,array($t0),
jr $ra
