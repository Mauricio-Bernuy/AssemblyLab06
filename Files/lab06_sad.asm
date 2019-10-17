#
# Sum of Absolute Differences Algorithm
#
# Authors: 
#	X Y, Z Q 
#
#

.text


main:


# Initializing data in memory... 
# Store in $s0 the address of the first element in memory
	# lui sets the upper 16 bits of the specified register
	# ori the lower ones
	# (to be precise, lui also sets the lower 16 bits to 0, ori ORs it with the given immediate)
	     lui     $s0, 0x0000 # Address of first element in the vector
	     ori     $s0, 0x0000
	     
	     # left_image array start
	     addi   $t0, $0, 5	# left_image[0]	
	     sw      $t0, 0($s0)
	     addi   $t0, $0, 16	# left_image[1]		
	     sw      $t0, 4($s0)
	     addi    $t0, $0, 7
	     sw      $t0, 8($s0)
	     addi    $t0, $0, 1
	     sw      $t0, 12($s0)
	     addi    $t0, $0, 1
	     sw      $t0, 16($s0)
	     addi    $t0, $0, 13
	     sw      $t0, 20($s0)
	     addi    $t0, $0, 2
	     sw      $t0, 24($s0)
	     addi    $t0, $0, 8
	     sw      $t0, 28($s0)
	     addi    $t0, $0, 10
	     sw      $t0, 32($s0)
	     # left_image array end
	     
	     # right_image array start
	     addi   $t0, $0, 4	
	     sw      $t0, 36($s0)
	     addi   $t0, $0, 15			
	     sw      $t0, 40($s0)
	     addi    $t0, $0, 8
	     sw      $t0, 44($s0)
	     addi    $t0, $0, 0
	     sw      $t0, 48($s0)
	     addi    $t0, $0, 2
	     sw      $t0, 52($s0)
	     addi    $t0, $0, 12
	     sw      $t0, 56($s0)
	     addi    $t0, $0, 3
	     sw      $t0, 60($s0)
	     addi    $t0, $0, 7
	     sw      $t0, 64($s0)
	     addi    $t0, $0, 11
	     sw      $t0, 68($s0)
	     
	     #right_image array end
	     
	     # TODO1: initilize the rest of the memory. CHECK
	     # .....
	     
	     
	# TODO4: Loop over the elements of left_image and right_image
	
	addi $s1, $0, 0 # $s1 = i = 0 (start of left_image)
	addi $s3, $0, 9 # $s3 = j = 9 (start of right_image)
	addi $s4, $0, 18 # $s4 = k = 18 (start of sad_array)
	addi $s2, $0, 9	# $s2 = image_size = 9

loop:

	# Check if we have traverse all the elements 
	# of the loop. If so, jump to end_loop:
	
	
	beq  $s1, $s2, end_loop
	
	
	# Load left_image{i} and put the value in the corresponding register
	# before doing the function call
	
	sll $t3, $s1, 2 # $t3 bit offset for left
	addu $t3, $t3, $s0
	lw $t5, 0($t3)
	
	
	# Load right_image{i} and put the value in the corresponding register
	
	sll  $t4, $s3, 2 # starts at 9, bit offset for right
	addu $t4, $t4, $s0
	lw $t6, 0($t4)
	
	# Call abs_diff
	
	# ....
	
	#Store the returned value in sad_array[i]
	
	sll $t5, $s4, 2 # $t3 bit offset for left
	addu $t5, $t5, $s0
	sw $(abs_diff output address), 0($t5) 

		
	# Increment variable i and repeat loop:
	addi $s1, $s1, 1
	addi $s3, $s3, 1
	
	j loop
	
end_loop:

	#TODO5: Call recursive_sum and store the result in $t2
	#Calculate the base address of sad_array (first argument
	#of the function call)and store in the corresponding register   
	
	# ...
	
	# Prepare the second argument of the function call: the size of the array
	
	#..... 
	
	# Call to funtion
	
	# ....
	  
	
	#Store the returned value in $t2
	
	# .....
	

end:	
	j	end	# Infinite loop at the end of the program. 




# TODO2: Implement the abs_diff routine here, or use the one provided


# TODO3: Implement the recursive_sum routine here, or use the one provided
