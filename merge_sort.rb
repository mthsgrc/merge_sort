require 'pry'

def merge_sort(array)
  return array if array.length <= 1

  #take left and right part of array
  left_part = array[0..array.length/2-1]
  right_part = array[array.length/2..-1]

  left_part = merge_sort(left_part)
  right_part = merge_sort(right_part)

  return merge(left_part, right_part)
end


def merge(arr1, arr2)
  final_array = []

  while arr1.empty? == false && arr2.empty? == false
    if arr1[0] <= arr2[0]
      final_array.push(arr1[0])
      arr1.delete_at(0)
    else
      final_array.push(arr2[0])
      arr2.delete_at(0)
    end
  end

  while arr1.empty? == false
    final_array << arr1.first
    arr1.delete_at(0)
  end
  while arr2.empty? == false
    final_array << arr2.first
    arr2.delete_at(0)
  end

  final_array
end


array = [8, 7, 6, 5, 4, 3, 2, 1]
array2 = [5, 2, 1, 3, 6, 4]


p merge_sort(array)
p merge_sort(array2)
