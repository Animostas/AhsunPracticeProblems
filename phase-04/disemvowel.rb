# Write a function disemvowel(string), which takes in a string, and
# returns that string with all the vowels removed. Treat “y” as a consonant.

def disemvowel(string)
  new_string = ""
  idx = 0
  while idx < string.length
    current_character = string[idx]
    if (current_character != "a") && (current_character != "e") && (current_character != "i") && (current_character != "o") && (current_character != "u")
      new_string += current_character
    end
    idx += 1
  end

  return new_string
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for disemvowel")
puts("===============================================")
    puts('disemvowel("asdf") == "sdf": ' + ((disemvowel("asdf") == "sdf") ? 'Passed' : 'Failed'))
    puts('disemvowel("hello") == "hll": ' + ((disemvowel("hello") == "hll") ? 'Passed' : 'Failed'))
    puts('disemvowel("phrase with spaces") == "phrs wth spcs": ' + ((disemvowel("phrase with spaces") == "phrs wth spcs") ? 'Passed' : 'Failed'))
    puts('disemvowel("aeiou") == "": ' + ((disemvowel("aeiou") == "") ? 'Passed' : 'Failed'))
    puts('disemvowel("aaaaaaaaaaaaaaaaaaaaaaa") == "": ' + ((disemvowel("aaaaaaaaaaaaaaaaaaaaaaa") == "") ? 'Passed' : 'Failed'))
    puts('disemvowel("zzzzzzzzzzzz") == "zzzzzzzzzzzz": ' + ((disemvowel("zzzzzzzzzzzz") == "zzzzzzzzzzzz") ? 'Passed' : 'Failed'))
puts("===============================================")