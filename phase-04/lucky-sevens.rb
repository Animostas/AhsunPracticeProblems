# Write a function lucky_sevens?(numbers), which takes in an array of integers
# and returns true if any three consecutive elements sum to 7.

def lucky_sevens?(numbers)
  if numbers.length < 3
    return false
  else
    idx = 0
    # Only go to the 3rd to last element
    while idx < numbers.length - 2
      current_buffer = 1
      running_sum = numbers[idx]
      while (current_buffer < 3) && (idx + current_buffer < numbers.length)
        running_sum += numbers[idx + current_buffer]
        current_buffer += 1
      end

      if running_sum == 7
        return true
      else
        idx += 1
      end
    end
  end
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for lucky_sevens?")
puts("===============================================")
    puts('lucky_sevens?([0, 0, 7]) == "true": ' + ((lucky_sevens?([0, 0, 7]) == true) ? 'Passed' : 'Failed'))
    puts('lucky_sevens?([-1, 1, 7, 0]) == "true": ' + ((lucky_sevens?([-1, 1, 7, 0]) == true) ? 'Passed' : 'Failed'))
    puts('lucky_sevens?([7]) == "false": ' + ((lucky_sevens?([7]) == false) ? 'Passed' : 'Failed'))
    puts('lucky_sevens?([]) == "false": ' + ((lucky_sevens?([]) == false) ? 'Passed' : 'Failed'))
    puts('lucky_sevens?([0]) == "false": ' + ((lucky_sevens?([0]) == false) ? 'Passed' : 'Failed'))
    puts('lucky_sevens?([1, 2, 3, 1, 7, 0, 0]) == "true": ' + ((lucky_sevens?([1, 2, 3, 1, 7, 0, 0]) == true) ? 'Passed' : 'Failed'))
puts("===============================================")