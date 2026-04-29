def bubble_sort(array)
  arr = array.dup
  remaining_loops = arr.length - 1

  (arr.length - 1).times do
    arr_sorted = true
    
      remaining_loops.times do |ele|
      first_number = ele
      second_number = ele + 1

      if arr[first_number] > arr[second_number]
        temp = arr[first_number]
        arr[first_number] = arr[second_number]
        arr[second_number] = temp

        arr_sorted = false
      end
    end

    remaining_loops -= 1
    break if arr_sorted
  end
  
  arr
end

p bubble_sort([3, 2, 1])
p bubble_sort([2, 3, 1])
p bubble_sort([10, 4, 2, 5, 5, 4, 6, 7, 8, 9])