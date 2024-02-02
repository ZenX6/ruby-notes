# Feel free to use this variable:
# alphabet = "abcdefghijklmnopqrstuvwxyz"

def caesar_cipher(str, num)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  ciphered = ""

  str.each_char do |char|
    old_idx = alphabet.index(char)
    new_idx = (old_idx + num) % 26
    ciphered += alphabet[new_idx]
  end

  ciphered
end

puts caesar_cipher("apple", 1)    #=> "bqqmf"
puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts caesar_cipher("zebra", 4)    #=> "difve"



def vowel_cipher(string)
  vowels = 'aeiou'
  ciphered = ""

  string.each_char do |char|
    if vowels.include?(char)
      old_idx = vowels.index(char)
      new_idx = (old_idx + 1) % 5
      ciphered += vowels[new_idx]
    else
      ciphered += char
    end
  end

  ciphered

end

puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap

def double_letter_count(string)
  count = 0

  (0...string.length - 1).each do |i|
    if string[i] == string [i + 1]
      count += 1
    end
  end

  count

end

puts double_letter_count("the jeep rolled down the hill") #=> 3
puts double_letter_count("bootcamp") #=> 1


def adjacent_sum(arr)
  sums = []

  (0...arr.length - 1).each do |i|
    sums << arr[i] + arr[i + 1]
  end

  sums

end

print adjacent_sum([3, 7, 2, 11]) #=> [10, 9, 13], because [ 3+7, 7+2, 2+11 ]
puts
print adjacent_sum([2, 5, 1, 9, 2, 4]) #=> [7, 6, 10, 11, 6], because [2+5, 5+1, 1+9, 9+2, 2+4]
puts

# For example, the base [1, 4, 6] gives us the following pyramid
#     15
#   5   10
# 1   4    6

def pyramid_sum(base)
  pyramid = [base]

  while pyramid[0].length > 1
    prev_level = pyramid[0]
    next_level = []

    (0...prev_level.length - 1).each do |i|
      next_level << prev_level[i] + prev_level[i + 1]
  end
  pyramid.unshift(next_level)
  end
  pyramid
end

print pyramid_sum([1, 4, 6]) #=> [[15], [5, 10], [1, 4, 6]]
puts

print pyramid_sum([3, 7, 2, 11]) #=> [[41], [19, 22], [10, 9, 13], [3, 7, 2, 11]]
puts


def all_else_equal(arr)
  total_sum = arr.sum
  half_sum = total_sum / 2

  if arr.include?(half_sum)
    return half_sum
  else
    return nil
  end
end

p all_else_equal([2, 4, 3, 10, 1]) #=> 10, because the sum of all elements is 20
p all_else_equal([6, 3, 5, -9, 1]) #=> 3, because the sum of all elements is 6
p all_else_equal([1, 2, 3, 4])     #=> nil, because the sum of all elements is 10 and there is no 5 in the array

def anagrams?(word1, word2)
  return word1.chars.sort == word2.chars.sort

end

puts anagrams?("cat", "act")          #=> true
puts anagrams?("restful", "fluster")  #=> true
puts anagrams?("cat", "dog")          #=> false
puts anagrams?("boot", "bootcamp")    #=> false


def consonant_cancel(sentence)
  words = sentence.split
  new_words = words.map { |word| remove_first_consonant(word) }
  return new_words.join(" ")
end

def remove_first_consonant(word)
  vowels = "aeiou"
  word.each_char.with_index do |char, i|
    if vowels.include?(char)
      return word[i..-1]
    end
  end
end

puts consonant_cancel("down the rabbit hole") #=> "own e abbit ole"
puts consonant_cancel("writing code is challenging") #=> "iting ode is allenging"


def same_char_collapse(str)
  collapse = true

  while collapse
    collapse = false

    chars = str.split('')
    (0...chars.length - 1).each do |i|
      if chars[i] == chars[i + 1]
        chars[i] = ""
        chars[i + 1] = ""
        collapse = true
        break
      end
    end
    str = chars.join("")
  end

  str

end

puts same_char_collapse("zzzxaaxy")   #=> "zy"
# because zzzxaaxy -> zxaaxy -> zxxy -> zy


puts same_char_collapse("uqrssrqvtt") #=> "uv"
# because uqrssrqvtt -> uqrrqvtt -> uqqvtt -> uvtt -> uv
