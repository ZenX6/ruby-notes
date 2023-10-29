def map_by_name(arr)
  arr.map { |hash| hash["name"] }


end


pets = [
  {"type"=>"dog", "name"=>"Rolo"},
  {"type"=>"cat", "name"=>"Sunny"},
  {"type"=>"rat", "name"=>"Saki"},
  {"type"=>"dog", "name"=>"Finn"},
  {"type"=>"cat", "name"=>"Buffy"}
]
print map_by_name(pets) #=> ["Rolo", "Sunny", "Saki", "Finn", "Buffy"]
puts

countries = [
 {"name"=>"Japan", "continent"=>"Asia"},
 {"name"=>"Hungary", "continent"=>"Europe"},
 {"name"=>"Kenya", "continent"=>"Africa"},
]
print map_by_name(countries) #=> ["Japan", "Hungary", "Kenya"]
puts


def map_by_key(arr, key)
  arr.map { |hash| hash[key] }

end

locations = [
  {"city"=>"New York City", "state"=>"New York", "coast"=>"East"},
  {"city"=>"San Francisco", "state"=>"California", "coast"=>"West"},
  {"city"=>"Portland", "state"=>"Oregon", "coast"=>"West"},
]

print map_by_key(locations, "state") #=> ["New York", "California", "Oregon"]
puts
print map_by_key(locations, "city") #=> ["New York City", "San Francisco", "Portland"]
puts

def yell_sentence(sent)
  words = sent.split(' ')

  new_sent = words.map {|word| word.upcase + '!'}

  new_sent.join(' ')

end

puts yell_sentence("I have a bad feeling about this") #=> "I! HAVE! A! BAD! FEELING! ABOUT! THIS!"


def whisper_words(words)

  words.map { |word| word.downcase + '...'}

end

print whisper_words(["KEEP", "The", "NOISE", "down"]) # => ["keep...", "the...", "noise...", "down..."]
puts

def o_words(sentence)
  words = sentence.split(' ')

 words.select { |word| word.include?('o')}



end

print o_words("How did you do that?") #=> ["How", "you", "do"]
puts

def last_index(str, char)
  i = str.length - 1

  while i >= 0
    if str[i] == char
      return i
    else
      i -= 1
    end
  end



end

puts last_index("abca", "a")       #=> 3
puts last_index("mississipi", "i") #=> 9
puts last_index("octagon", "o")    #=> 5
puts last_index("programming", "m")#=> 7


def most_vowels(sentence)
  def count_vowels(word)
    vowels = 'aeiou'
    count = 0
    word.each_char { |char| count += 1 if vowels.include?(char) }
    count
  end

  sentence.split.max_by { | word | count_vowels(word)}

end

print most_vowels("what a wonderful life") #=> "wonderful"

def prime?(num)
  if num <= 1
    return false
  elsif num <= 3
    return true
  elsif num % 2 == 0 || num % 3 == 0
    return false
  end

  i = 5
  while i * i <= num
    if num % i == 0 || num % (i + 2) == 0
      return false
    end
    i += 6
  end

  return true


end

puts prime?(2)  #=> true
puts prime?(5)  #=> true
puts prime?(11) #=> true
puts prime?(4)  #=> false
puts prime?(9)  #=> false
puts prime?(-5) #=> false
