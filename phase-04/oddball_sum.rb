# Write a function oddball_sum(numbers), which takes in an array of integers
# and returns the sum of all the odd elements.

def oddball_sum(numbers)
  current_sum = 0
  idx = 0
  while idx < numbers.length
    if numbers[idx] % 2 == 1
      current_sum += numbers[idx]
    end

    idx += 1
  end

  return current_sum
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for oddball_sum")
puts("===============================================")
    puts('oddball_sum([0, 0, 7]) == 7: ' + ((oddball_sum([0, 0, 7]) == 7) ? 'Passed' : 'Failed'))
    puts('oddball_sum([-1, 1, 7, 0]) == 7: ' + ((oddball_sum([-1, 1, 7, 0]) == 7) ? 'Passed' : 'Failed'))
    puts('oddball_sum([7]) == 7: ' + ((oddball_sum([7]) == 7) ? 'Passed' : 'Failed'))
    puts('oddball_sum([]) == 0: ' + ((oddball_sum([]) == 0) ? 'Passed' : 'Failed'))
    puts('oddball_sum([0]) == 0: ' + ((oddball_sum([0]) == 0) ? 'Passed' : 'Failed'))
    puts('oddball_sum([1, 2, 3, 1, 7, 0, 0]) == 12: ' + ((oddball_sum([1, 2, 3, 1, 7, 0, 0]) == 12) ? 'Passed' : 'Failed'))
puts("===============================================")