def bubble_sort(array)
  arr = array.dup
  num_of_unsorted_elements = arr.length - 1
  arr_sorted = false

  until arr_sorted do
    arr_sorted = true
    
    num_of_unsorted_elements.times do |ele|
      if arr[ele] > arr[ele + 1]
        temp_value = arr[ele]
        arr[ele] = arr[ele + 1]
        arr[ele + 1] = temp_value

        arr_sorted = false
      end
    end

    num_of_unsorted_elements -= 1
  end
  
  arr
end

p bubble_sort([3, 2, 1])
p bubble_sort([2, 3, 1])
p bubble_sort([10, 4, 2, 5, 5, 4, 6, 7, 8, 9])