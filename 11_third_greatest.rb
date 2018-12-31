# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
#
# Difficulty: medium.

def third_greatest(nums)
  first = 0
  second = 0
  third = 0
  i = 0
  while i < nums.length
    current_number = nums[i]
    if current_number > first
      third = second
      second = first
      first = current_number
    elsif current_number > second
      third = second
      second = current_number
    elsif current_number > third
      third = current_number
    end
    i += 1
  end

  return third
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #third_greatest")
puts("===============================================")
    puts(
      'third_greatest([5, 3, 7]) == 3: ' +
      (third_greatest([5, 3, 7]) == 3).to_s
    )
    puts(
      'third_greatest([5, 3, 7, 4]) == 4: ' +
      (third_greatest([5, 3, 7, 4]) == 4).to_s
    )
    puts(
      'third_greatest([2, 3, 7, 4]) == 3: ' +
      (third_greatest([2, 3, 7, 4]) == 3).to_s
    )
puts("===============================================")