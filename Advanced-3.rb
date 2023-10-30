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
