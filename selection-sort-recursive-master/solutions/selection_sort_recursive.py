def selection_sort_recursive(list):

    if len(list) == 0:
        return []
    
    minElement = min(list)

    list.remove(minElement)

    result = selection_sort_recursive(list)

    result.insert(0, minElement)

    return result

if __name__ == '__main__':
    print("Expecting: [-1, 2, 3, 5]")
    print(selection_sort_recursive([3, -1, 5, 2]))

    print("")

    print("Expecting: [5]")
    print(selection_sort_recursive([5]))

    print("")

    print("Expecting: [-1, 2, 2, 3, 3, 5]")
    print(selection_sort_recursive([3, 2, -1, 3, 5, 2]))

    print("")

    print("Expecting: [3, 5]")
    print(selection_sort_recursive([5, 3]))

    print("")


# Output: [1, 2, 3, 4, 5, 7, 8]






def merge_sort(my_list)
    # Base Case
    if len(my_list) <= 1:
        return my_list
   
    list_1 = my_list[0:len(my_list) // 2]
    list_2 = my_list[len(my_list) // 2:]
    
    # Induction Step
    ans_1 = merge_sort(list_1)
    ans_2 = merge_sort(list_2)
    
    # Sorting and merging two sorted list
    sort_list = sort_two_list(ans_1, ans_2)
    return sort_list



# Separate Function to sort and merge 2 sorted lists
def sort_two_list(list_1, list_2):
    final_list = []
    i = 0
    j = 0
    while i < len(list_1) and j < len(list_2):
        if list_1[i] <= list_2[j]:
            final_list.append(list_1[i])
            i += 1
            continue
        final_list.append(list_2[j])
        j += 1

    while i < len(list_1):
        final_list.append(list_1[i])
        i = i + 1
        
    while j < len(list_2):
        final_list.append(list_2[j])
        j = j + 1
        
    return final_list


my_list = [3, 8, 2, 7, 1, 4, 5]
ans = merge_sort(my_list)
print(ans)
# prints [1, 2, 3, 4, 5, 7, 8}



##
    #The `merge_sort` function takes a list as input and recursively divides it into smaller sublists
   #until each sublist contains only one element, then merges and sorts the sublists to return a sorted
    #list.
    
    #param my_list: The `my_list` parameter is a list of integers that you want to sort using the merge
    #sort algorithm. In the example provided, `my_list` is `[3, 8, 2, 7, 1, 4, 5]`
    #:return: The merge_sort function returns a sorted version of the input list.
  #####