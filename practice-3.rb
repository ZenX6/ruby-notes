def two_d_translate(arr)
  result = []

  arr.each do |subArr|
    word = subArr[0]
    number = subArr[1]
    number.times { result << word}
  end

  result
end

arr_1 = [
  ['boot', 3],
  ['camp', 2],
  ['program', 0]
]

print two_d_translate(arr_1) # => [ 'boot', 'boot', 'boot', 'camp', 'camp' ]
puts

arr_2 = [
  ['red', 1],
  ['blue', 4]
]

print two_d_translate(arr_2) # => [ 'red', 'blue', 'blue', 'blue', 'blue' ]
puts


def array_translate(array)
  result = ""

  i = 0
  while i < array.length
    word = array[i]
    number = array[i + 1]

    result += word * number

    i += 2
  end
return result
end

print array_translate(["Cat", 2, "Dog", 3, "Mouse", 1]); # => "CatCatDogDogDogMouse"
puts

print array_translate(["red", 3, "blue", 1]); # => "redredredblue"
puts


# Pig latin translation uses the following rules:
# - for words that start with a vowel, add 'yay' to the end
# - for words that start with a nonvowel, move all letters before the first vowel to the end of the word and add 'ay'

def pig_latin_word(word)
  vowels = 'aeiou'

  if vowels.include?(word[0])
    return word + 'yay'
  end

  word.each_char.with_index do |char, idx|
    if vowels.include?(char)
      return word[idx..-1] + word[0...idx] + 'ay'
    end
  end
end

puts pig_latin_word("apple")   # => "appleyay"
puts pig_latin_word("eat")     # => "eatyay"
puts pig_latin_word("banana")  # => "ananabay"
puts pig_latin_word("trash")   # => "ashtray"
