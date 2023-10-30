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
