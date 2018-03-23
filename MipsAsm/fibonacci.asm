.data
promptinput: .asciiz "Please input n in case you want f_n: "
promptoutput: .asciiz "f_n is : "

.text
.globl main
main:
	la $a0, promptinput
	addi $v0, $zero, 4
	syscall
	addi $v0, $zero, 5
	syscall
	or $4, $zero, $v0
	add $2, $zero, $zero
	addi $3, $zero, 1
loop:
    addi $5, $2, 0
    addi $2, $3, 0
    add $3, $2, $5
	
	addi $4, $4, -1
	bne $4, $0, loop
	
	la $a0, promptoutput
	add $v0, $zero, 4
	syscall
	
	addi $v0, $zero, 1
	addi $a0, $5, 0
	syscall
    
    addi $v0, $zero, 11
	addi $a0, $zero, '\n'
	syscall
	
	addi $1, $5, 0
	
	li $v0, 10
	syscall
	
