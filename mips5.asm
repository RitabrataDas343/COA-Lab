.data 
a: .word 1
c: .word 2
.text 
main:
jal funcAdd  #function call, jal-jump and link
li $v0, 10 
syscall 
#Signfies the end of the main
#These lines are required for stopping 
funcAdd:
#function Body
lw $t1, a
lw $t2, c
add $a0, $t1, $t2
li $v0, 1
syscall
jr $ra 
#jr- jump and return, $ra- returning address
# it is like reurning statement
# the control takes value from ra and show iit