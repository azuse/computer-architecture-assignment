.data
promptinput: .asciiz "Please input two multipliers: "
promptoutput: .asciiz "The product is: "
prompt2: .asciiz " * 4294967296 + "

.text
.globl main
main:
	addi $v0, $zero, 4
	la $a0, promptinput
	syscall

	addi $v0, $zero, 5
	syscall
	addi $s1, $v0, 0

	addi $v0, $zero, 5
	syscall
	addi $s2, $v0, 0
	
	addi $v1, $zero, 32
	
	addi $s4, $s1, 0
	neg $s3, $s1
	
	add $s1, $zero, $zero
	add $t2, $zero, $zero	#last bit
loop:
	andi $t1, $s2, 0x1
	sll $t1, $t1, 1
	or $t1, $t1, $t2
	
	beq $t1, $0, same
	addi $1, $0, 3
	beq $t1, $1, same
	addi $1, $0, 1
	beq $t1, $1, zeroone
	
onezero:
	addu $s1, $s1, $s3
	j shiftp
zeroone:
	addu $s1, $s1, $s4
	j shiftp
	
same:
	
shiftp:
	andi $t2, $s2, 0x1

	andi $t3, $s1, 0x1
	sll $t3, $t3, 31	#t3: last bit of s1, now we shift this bit to be most significant
	sra $s1, $s1, 1
	
	srl $s2, $s2, 1
	or $s2, $s2, $t3
	
	addi $v1, $v1, -1
	bne $v1, $0, loop
	
	addi $v0, $zero, 4
	la $a0, promptoutput
	syscall
	
	addi $a0, $s1, 0
	addi $v0, $zero, 1
	syscall
	
	addi $v0, $zero, 4
	la $a0, prompt2
	syscall
	
	addi $a0, $s2, 0
	addi $v0, $zero, 1
	syscall
	
	addi $a0, $zero, '\n'
	addi $v0, $zero, 11
	syscall
	
	
