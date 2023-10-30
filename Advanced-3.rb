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
