# Release 0
def search_array(array, search_num)
i = 0
while i < array.length
    if array[i] == search_num
        p i     
         i += 1
    else
        i += 1
    end
end

end
array = [2, 23, 32, 345, 66, 78, 98]
search_array(array, 345) #returns index of 3



# Release 1
def fib(size)
    fib_array = [0, 1, 1]
        i = 0
        while i < 500
            fib_array << fib_array[-1] + fib_array[-2]
            i += 1
        end
fib_array[size - 1]
end
p fib(100)


#Release 2

# sorting
# take an array of ints and sort them
# take in a number
#search_array(arr, 1)
def sorting(arr)
#display orig array
    p arr 
    p "**************************************************"
    # do something to the array
    # compare each value of an array to the value on its left
    # if the value is less than the value on its left, switch places
    # do this by placing the lesser value in a holder and then moving the greater
    # value to the lesser value's former position in the array, then rewrite the
    #  greater value's former position, with the holder value.
    # do this until the value is greater than the value on its left for 
    # the entire array 
#Here is our brute force attempt at making  our own  .sort! method
#we used the .sort! method from the Array class.
arr.length.times do
    |x|
        holder = ""
        if arr[x] > arr[x-1]
            holder = arr[x-1]
            arr[x-1] = arr[x]
            arr[x] = holder
        end 
    end
puts "this is the one we made #{arr} "
 # if arr[1] > arr[0]
    p arr.sort!
    p "above is the sorting method"
#rerturn the changed array
end
#define array
arr = [42, 89, 23, 1 ]
int_array = [4, 2, 5, 684, 689442, 1, 24, 3]
sim = [3, 2, 1]
alp_ar = ["a", "b", "z", "w"]
mix = ["a", 300.to_s, 301.to_s, 299.to_s, "b", 213.to_s, "z", 1231231231.to_s, "w"]
hash = {a: "doisdf", b: "asd", c:"asdfasf"}

sorting(int_array)
# sorting(alp_ar)
# sorting(mix)
# sorting(hash)
# def search(search_num, array)
#   i = 0
#   while i < array.length
#       if search_num == array[i]
#           puts " found at index #{i}"
#       else
#           nil
#       end
#       i += 1
#   end
# end
# def fib(size)
#   fib_array = [0, 1, 1]
#   i = 0
#   while i < 500
#   fib_array << fib_array[-1] + fib_array[-2]
#   i += 1
#   end
#   fib_array[size-1]
# end
# #sorting method
# # get an array
# def num_sort(array)
#   # change the array
#   # return the array
#    v = array.sort
# end
# integer_array = [1 , 2, 3, 4, 5, 6, 7, 8, 9,]
# w = [9,8,7,6,5,4,3,2]
# p search(6, integer_array)
# p fib(100)
# p num_sort(w)



