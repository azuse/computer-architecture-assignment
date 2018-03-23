.data
promptinput: .asciiz "Please input five integers: "
promptoutput: .asciiz "Here's the integers ordered: \n"

.macro printspace
	addi $v0, $zero, 11
	addi $a0, $zero, ' '
	syscall
.end_macro

.macro printint (%int)
	addi $v0, $zero, 1
	add $a0, $zero, %int
	syscall
.end_macro


.text
.globl main
main:
	addi $v0, $zero, 4
	la $a0, promptinput	#To show input hint
	syscall 
	
	addi $v0, $zero, 5
	syscall
	addi $s1, $v0, 0
	
	addi $v0, $zero, 5
	syscall
	addi $s2, $v0, 0
	
	addi $v0, $zero, 5
	syscall
	addi $s3, $v0, 0
	
	addi $v0, $zero, 5
	syscall
	addi $s4, $v0, 0
	
	addi $v0, $zero, 5
	syscall
	addi $s5, $v0, 0
	
	addi $v1, $zero, 4
	
loop:
	beq $v1, $0, end
loop1:
	#blt $s1, $s2, loop2
	slt $1, $s1, $s2
	bne $1, $0, loop2
	addi $s0, $s2, 0
	addi $s2, $s1, 0
	addi $s1, $s0, 0
	
loop2:
	#blt $v1, 2, nextloop
	slti $1, $v1, 2
	bne $1, $0, nextloop
	
	#blt $s2, $s3, loop3
	slt $1, $s2, $s3
	bne $1, $0, loop3
	
	addi $s0, $s3, 0
	addi $s3, $s2, 0
	addi $s2, $s0, 0
	
loop3:
	#blt $v1, 3, nextloop
	slti $1, $v1, 3
	bne $1, $0, nextloop
	
	#blt $s3, $s4, loop4
	slt $1, $s3, $s4
	bne $1, $0, loop4
	
	addi $s0, $s4, 0
	addi $s4, $s3, 0
	addi $s3, $s0, 0
	
loop4:
	#blt $v1, 4, nextloop
	slti $1, $v1, 4
	bne $1, $0, nextloop
	
	#blt $s4, $s5, nextloop
	slt $1, $s4, $s5
	bne $1, $0, nextloop
	
	addi $s0, $s5, 0
	addi $s5, $s4, 0
	addi $s4, $s0, 0
	
nextloop:
	addi $v1, $v1, -1
	j loop
	
end:
	addi $v0, $zero, 4
	la $a0, promptoutput	#To show output hint
	syscall
	
	printint ($s1)
	printspace
	printint ($s2)
	printspace
	printint ($s3)
	printspace
	printint ($s4)
	printspace
	printint ($s5)
	
	addi $v0, $zero, 11
	addi $a0, $zero, '\n'
	syscall
	
	addi $2, $s1, 0
	addi $3, $s2, 0
	addi $4, $s3, 0
	addi $5, $s4, 0
	addi $6, $s5, 0
	
	#li $v0, 10
	#syscall
