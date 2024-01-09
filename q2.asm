.data

array:      .word   3, 12, 13, 20, 7
array_size: .word   5
array_min:  .asciiz "\nMin: " 
array_max:  .asciiz "\nMax: "

.text

main:   

    la $a0, array
    lw $a1, array_size
    lw $t2, ($a0) 
    lw $t3, ($a0) 
    
loop_array:

        beq $a1, $zero, print_and_exit
        lw $t0, ($a0)
        bge $t0, $t3, not_min 
        move $t3, $t0
        not_min:
        ble $t0, $t2, not_max 
        move $t2, $t0
        not_max:
        addi $a1, $a1, -1
        addi $a0, $a0, 4
        j loop_array

print_and_exit:
    
    li $v0, 4
    la $a0, array_max
    syscall

    li $v0, 1
    move $a0, $t2
    syscall 

    li $v0, 4
    la $a0, array_min
    syscall

    li $v0, 1
    move $a0, $t3
    syscall 

    li $v0, 10
    syscall

