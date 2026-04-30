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

demo_arrays = [
  [3, 2, 1],
  [2, 3, 1],
  [10, 4, 2, 5, 5, 4, 6, 7, 8, 9],
  [4, 3, 78, 2, 0, 2],
  [80, 15, 23, 45, 89, 1, 2, 8],
  [1000, 108, 80, 1, -50, -25, 1]
]

demo_arrays.each do |arr| 
  puts "Starting array: #{arr}"
  puts "Sorted array: #{bubble_sort(arr)}"
  puts
end