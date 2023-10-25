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
