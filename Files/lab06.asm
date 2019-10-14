#
# Calculate sum from A to B.
#
# Authors: 
#	Claudia Noche, Mauricio Bernuy 
#
#

.text
main:
	#
	# Your code goes here...
	#

	# Put your sum S into register $t2
	addi $t0, $t0, 12 	# A
	addi $t1, $t1, 21	# B
	
	# $t2 - result
	# $t3 - iterator
	
	sub $t4, $t1, $t0	#
	addi $t4, $t4, 1	# size
		
	begin_loop:
	beq $t4, $t3, end
	add $t5, $t0, $t3
	add $t2, $t2, $t5
	addi $t3, $t3, 1
	j begin_loop
	

	
end:	
	j	end	# Infinite loop at the end of the program. 
