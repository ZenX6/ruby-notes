def prime?(num)
  return false if num <= 2

  (2..Math.sqrt(num).to_i).each do |i|
    return false if num % i == 0
  end

  return true
end

def pick_primes(numbers)
numbers.select { |num| prime?(num)}

end

print pick_primes([2, 3, 4, 5, 6]) #=> [2, 3, 5]
puts
print pick_primes([101, 20, 103, 2017]) #=> [101, 103, 2017]
puts


def prime_factors(num)
  factors = []

  while num % 2 == 0
    factors << 2
    num /= 2
  end

  i = 3
  while i <= Math.sqrt(num)
    while num % i == 0
      factors << i
      num /= i
    end
    i += 2
  end

  if num > 2
    factors << num
  end

  factors

end

print prime_factors(24) #=> [2, 3]
puts
print prime_factors(60) #=> [2, 3, 5]
puts


def greatest_factor_array(arr)
  new_arr = arr.map do |num|
    if num % 2 == 0
      greatest_factor(num)
    else
      num
    end
  end

  return new_arr
end

def greatest_factor(num)
  (1...num).reverse_each do |i|
    if num % i == 0
      return i
    end
  end
end
print greatest_factor_array([16, 7, 9, 14]) # => [8, 7, 9, 7]
puts
print greatest_factor_array([30, 3, 24, 21, 10]) # => [15, 3, 12, 21, 5]
puts


def perfect_square?(num)
  root = Math.sqrt(num)
  return root == root.to_i

end

puts perfect_square?(5)   #=> false
puts perfect_square?(12)  #=> false
puts perfect_square?(30)  #=> false
puts perfect_square?(9)   #=> true
puts perfect_square?(25)  #=> true


def triple_sequence(start, length)
  sequence = [start]

  while sequence.length < length
    start *= 3
    sequence << start
  end
  sequence
end

print triple_sequence(2, 4) # => [2, 6, 18, 54]
puts
print triple_sequence(4, 5) # => [4, 12, 36, 108, 324]
puts

def summation_sequence(start, length)
  sequence = [start]

  while sequence.length < length
    start = summation(start)
    sequence << start
  end
  sequence

end

def summation(num)
  (1..num).reduce(0, :+)
end


print summation_sequence(3, 4) # => [3, 6, 21, 231]
print summation_sequence(5, 3) # => [5, 15, 120]


def fibonacci(length)
  return [] if length == 0
  return [1] if length == 1

  sequence = [1, 1]

  while sequence.length < length
    next_num = sequence[-1] + sequence[-2]
    sequence << next_num
  end
  sequence

end

print fibonacci(0) # => []
puts
print fibonacci(1) # => [1]
puts
print fibonacci(6) # => [1, 1, 2, 3, 5, 8]
puts
print fibonacci(8) # => [1, 1, 2, 3, 5, 8, 13, 21]
puts
