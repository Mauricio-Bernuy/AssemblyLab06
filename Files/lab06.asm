#
# Calculate sum from A to B.
#
# Authors: 
#	X Y, Z Q 
#
#

.data

A: .word 12
B: .word 21
zero: .word 0


.text
main:
	#
	# Your code goes here...
	#

	# Put your sum S into register $t2
	lw $t0, A
	lw $t1, B
	lw $t2, zero		#result
	lw $t3, zero		#iterator
	
	sub $t4, $t1, $t0	#
	addi $t4, $t4, 1	#size
		
	begin_loop:
	beq $t4, $t3, end
	add $t5, $t0, $t3
	add $t2, $t2, $t5
	addi $t3, $t3, 1
	j begin_loop
	

	
end:	
	j	end	# Infinite loop at the end of the program. 
