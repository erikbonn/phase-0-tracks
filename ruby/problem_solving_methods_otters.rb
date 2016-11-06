#### Release 0 ####

def search_array(array, num)
	i = 0
	while i < array.length
    	if array[i] == num
       		p i     
        	i += 1
    	else
        	i += 1
    	end
	end
end

array = [4, 54, 35, 523, 233, 64, 2]
search_array(array, 233) #returns index of 4
p search_array(array, 234) # returns nil

#### Release 1 ####

def fib(number_of_terms)
    fib_array = [0, 1, 1]
        i = 0
        while i < 500
            fib_array << fib_array[-1] + fib_array[-2]
            i += 1
        end
 	fib_array[number_of_terms - 1]
end
p fib(100)

#### Release 2 ####
# basically we will have a method that accepts an array as an argument and gets the length of the array immediately. then we need a loop where 
# the array's first and second values are compared and swapped if the first is greater than the second.
# this will continue comparing two values throughout the length of the array until no more swaps are needed. A swapped boolean will be added
# and set initially as false, then made true when a swap is made. the loop will break when all swaps have been made.
arr = [1, 2, 6, 3, 9, 2, 1, 8]

def bubble_sort(arr)
	number = arr.length
	loop do
	swapped = false
	(number - 1).times do |i|
		if arr[i] > arr[i + 1]
			arr[i], arr[i + 1] = arr[i + 1], arr[i]
			swapped = true
		end
	end

	break if not swapped
end
 	arr		
end

p bubble_sort(arr)
