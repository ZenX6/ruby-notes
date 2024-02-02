#Write a method to_initials that takes in a person's name string and returns a string representing their initials


def to_initials(name)
initials = ""

words = name.split(' ')

words.each do |word|
    initials += word[0].upcase
end

return initials
end



puts to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"


#Write a method first_in_array that takes in an array and two elements, the method should return the element that appears earlier in the array.

def first_in_array(arr, el1, el2)
    arr.each do |el|
      return el1 if el == el1
      return el2 if el == el2
    end


  end



puts first_in_array(["a", "b", "c", "d"], "d", "b"); # => "b"
puts first_in_array(["cat", "bird" ,"dog", "mouse" ], "dog", "mouse"); # => "dog"

def abbreviate_sentence(str)
  words = str.  split(' ')
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


def format_name(name)
  words = name.split(' ')
  result = words.map { |word| word.capitalize }
  return result.join(' ')
end

puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"
