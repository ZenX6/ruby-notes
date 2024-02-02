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

def combinations(arr)
  combine = []

  arr.each_with_index do |ele1, idx1|
    arr.each_with_index do |ele2, idx2|
      if idx2 > idx1
        combine << [ele1, ele2]
      end
    end
  end

  return combine
end

print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts


def opposite_count(nums)
  count = 0

  nums.each do |num|
    if nums.include?(-num)
      count += 0.5
    end
  end

  return count.to_i


end

puts opposite_count([ 2, 5, 11, -5, -2, 7 ]) # => 2
puts opposite_count([ 21, -23, 24 -12, 23 ]) # => 1



def two_d_sum(arr)
  sum = 0

  arr.each do |subArr|
    subArr.each do |num|
      sum += num
    end
  end

  return sum

end

array_1 = [
  [4, 5],
  [1, 3, 7, 1]
]
puts two_d_sum(array_1)    # => 21

array_2 = [
  [3, 3],
  [2],
  [2, 5]
]
puts two_d_sum(array_2)    # => 15
