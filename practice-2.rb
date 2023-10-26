def abbreviate_sentence(str)
  words = str.split(' ')
  new_words = words.map do |word|
    if word.length > 4
      remove_vowels(word)
    else
      word
    end
  end
  return new_words.join(' ')
end

def remove_vowels(word)
  vowels = 'aeiou'
  return word.chars.select { |char| !vowels.include?(char) }.join('')
end
puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"


def is_valid_name(name)
  words = name.split(' ')

  return false if words.length < 2

  words.all? { |word| word == word.capitalize}
end

puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts is_valid_name("ROBERT DOWNEY JR") # => false


def rotate_array(arr, num)
  num = num % arr.length

  arr[-num..-1] + arr[0...-num]
end

print rotate_array([ "Matt", "Danny", "Mashu", "Matthias" ], 1) # => [ "Matthias", "Matt", "Danny", "Mashu" ]
puts

print rotate_array([ "a", "b", "c", "d" ], 2) # => [ "c", "d", "a", "b" ]
puts
