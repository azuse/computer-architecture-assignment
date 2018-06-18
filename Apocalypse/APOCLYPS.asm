.text
init:
	j start
exceptionEntry:
	mfc0 $t1, $14
	addi $t1, $t1, 4
	mtc0 $t1, $14
	eret
start:

	#addi $s0, $0, 0xf
	#mtc0 $s0, $12

	# Draw a pixel at (50, 50) with the color of RGB565 0xF800 (Red)
	addi $v0, $0, 0x02

	lui $v1, 50
	ori $v1, $v1, 50
	
	addi $a0, $0, 0
	ori $a0, $a0, 0xf800
	
	syscall
	
	# Display F948B7B7 on seven-segment LED display
	addi $v0, $0, 0x01

	lui $v1, 0xf948
	ori $v1, $v1, 0xb7b7
	
	syscall
	
	# Load 4096 words starting from 0x5a24-th word in the file named 'HZK16.dat', to DMEM starting from address 0x10010010
	addi $v0, $0, 0x11
	
		# "HZK16   DAT" at 0x10010000

	lui $v1, 0x1001
	ori $v1, $v1, 0x0000

	lui $s1, 0x485A
	ori $s1, $s1, 0x4B31
	
	sw $s1, 0($v1)

	lui $s1, 0x3620
	ori $s1, $s1, 0x2020
	
	sw $s1, 4($v1)

	lui $s1, 0x4441
	ori $s1, $s1, 0x5400
	
	sw $s1, 8($v1)
	
		# 0x10010010

	lui $a0, 0x1001,
	ori $a0, $a0, 0x0010
	
		# 0x00005a24

	lui $a1, 0x0000,
	ori $a1, $a1, 0x5a24

		# Read 4096 words (16384 bytes, 32 sectors, [2 clusters for my TF card])
	addi $a2, $0, 4096
	
	syscall
	
	# Display the last word read
	addi $v0, $0, 0x01
	
	lw $v1, 16385($a0)	# 4095-th word
	
	syscall		# Should be 50142018

	# Wait for button
	addi $v0, $0, 0x08

	lui $a0, 0x1001,
	ori $a0, $a0, 0x0000

	syscall

	# Display the button pressed: 12345-UCDLR
	addi $v0, $0, 0x01
	
	lw $v1, 0($a0)
	
	syscall

	# Load background named back.img
	addi $v0, $0, 0x13
	
		# "BACK    IMG" at 0x10010000

	lui $v1, 0x1001
	ori $v1, $v1, 0x0000

	lui $s1, 0x4241
	ori $s1, $s1, 0x434B
	
	sw $s1, 0($v1)

	lui $s1, 0x2020
	ori $s1, $s1, 0x2020
	
	sw $s1, 4($v1)

	lui $s1, 0x494D
	ori $s1, $s1, 0x4700
	
	sw $s1, 8($v1)
	
	syscall

	# Read SW Phase 1 - Wait for BTNC
waitforbtnc:
	addi $v0, $0, 0x08

	lui $a0, 0x1001,
	ori $a0, $a0, 0x0000

	syscall

	lw $v1, 0($a0)
	addi $t1, $0, 2

	bne $v1, $t1, waitforbtnc

	# Read SW Phase 2 - Read SW

	addi $v0, $0, 0x09

	lui $a0, 0x1001,
	ori $a0, $a0, 0x0004

	syscall

	# Read SW Phase 3 - Display SW
	addi $v0, $0, 0x01
	lw $v1, 0($a0)
	syscall


loop:
	j loop


	
	
