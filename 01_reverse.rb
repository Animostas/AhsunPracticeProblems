# Write a method that will take a string as input, and return a new
# string with the same letters in reverse order.
#
# Don't use String's reverse method; that would be too simple.
#
# Difficulty: easy.

def reverse(string)
  char_array = string.split('')
  half_length = char_array.length / 2
  i = 0

  while i < half_length
    temp = char_array[i]
    char_array[i] = char_array[char_array.length - 1 - i]
    char_array[char_array.length - 1 - i] = temp
    i = i + 1
  end

  return char_array.join()
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #reverse")
puts("===============================================")
    puts(
      'reverse("abc") == "cba": ' + (reverse("abc") == "cba").to_s
    )
    puts(
      'reverse("a") == "a": ' + (reverse("a") == "a").to_s
    )
    puts(
      'reverse("") == "": ' + (reverse("") == "").to_s
    )
puts("===============================================")
