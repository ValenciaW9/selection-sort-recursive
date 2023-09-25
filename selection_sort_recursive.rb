def selection_sort_recursive(arr)
  return [] if arr.empty?

  min = arr.min
  idx = arr.index(min)
  arr.delete_at(idx)
  
  result = selection_sort_recursive(arr)
  result.unshift(min)
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: [-1, 2, 3, 5]"
  print selection_sort_recursive([3, -1, 5, 2])

  puts

  puts "Expecting: [5]"
  print selection_sort_recursive([5])

  puts

  puts "Expecting: [-1, 2, 2, 3, 3, 5]"
  print selection_sort_recursive([3, 2, -1, 3, 5, 2])

  puts

  puts "Expecting: [3, 5]"
  print selection_sort_recursive([5, 3])

  puts

  # Don't forget to add your own!
end

##
# The selection_sort function sorts an array using the selection sort algorithm.
# 
# Args:
#   array: The array parameter is the array that you want to sort using the selection sort algorithm.

def selection_sort(array)
  n = array.length - 1
  n.times do |i|
    min_index = i
    for j in (i + 1)..n
      min_index = j if array[j] < array[min_index]
    end
    array[i], array[min_index] = array[min_index], array[i] if min_index != i.inspect
  end
  puts array
end
#{}Now you can call the selection_sort function with an array as an argument to sort it using the selection sort algorithm. For example:

array = [3, 8, 2, 7, 1, 4, 5]
selection_sort(array)
#{}This will output the sorted array.

        
# Please add your pseudocode to this file
#
# The selection_sort function sorts an array using the selection sort algorithm.
# 
# Args:
#   array: The array parameter is the array that you want to sort using the selection sort algorithm.
#{}This will output the sorted array.

#################################################################################
# return empty array if array is empty
#
# find smallest value in array and store it in min
# find index of smallest value and store it in idx
# remove the smallest value from the array
#
# recurse through the array and store the result in result
# place the min from each frame at the front of the array
# return result
#################################################################################

# And a written explanation of your solution
#################################################################################
# Once again, it's easier to start with the base case: if the array is empty, return
# an empty array. We can then add items to this returned empty array in the previous
# frames. To figure out what to add, we need to find the minimum value in the array
# and its index. Next, we remove that value from the array and pass the array to the
# recursive call. This means that as we go deeper and deeper into the stack, the
# array gets smaller, until it's empty. Since frames are completed in last in first out
# order, we need to add the minimum value from each frame to the front of the result
# array. For example, if the array is [2, 1], the minimum in the first frame is 1, and
# the recusrive call is made with the argument [2]. In this frame the minimum is 2, so
# the recursive call is now made with the argument []. This hits the base case, which
# returns []. result is now an empty array in the previous frame. On the next line, the
# minimum, which is 2, gets unshifted on. [2] is returned up the stack, and stored in
# result. Here, the minimum is 1, which gets unshifted on, resulting in [1, 2].
#################################################################################