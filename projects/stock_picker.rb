def stock_picker(arr)
  best_days = []
  current_highest = 0

  arr.each_with_index do |num, idx|
    current_total = (arr.drop(idx).max - num)

    if current_total >= current_highest
      current_highest = current_total

      best_days.clear << idx << arr.rindex(arr.drop(idx).max)
    end
  end

  best_days
end

puts <<~RESULTS
  The days start from zero.
  First set of days are: 43, 23, 32, 23, 42, 1, 1, 3
  Best days: #{stock_picker([43, 23, 32, 23, 42, 1, 1, 3])}

  Second set of days are: 17, 3, 6, 9, 15, 8, 6, 1, 10
  Best days: #{stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])}

  Third set of days are: 100, 5, 1, 2, 3, 4, 5, 6, 100
  Best days: #{stock_picker([100, 5, 1, 2, 3, 4, 5, 6, 100])}

  Fourth set of days are: 5, 16, 4, 8, 9, 4, 1, -50, -40, -100, 100
  Best days: #{stock_picker([5, 16, 4, 8, 9, 4, 1, -50, -40, -100, 100])}
RESULTS