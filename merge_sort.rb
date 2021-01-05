def merge_sort(array)
    if array.length < 2
      array
    else
      left_array = array[0..array.length/2-1]
      right_array = array[array.length/2..-1]
    end

    #puts "#{left_array} and #{right_array}"
end


array = [2, 1, 5, 7, 8, 3, 4, 6]
array2 = [2, 1, 5, 7, 8, 3, 4]


merge_sort(array)
merge_sort(arra2)