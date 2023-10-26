def two_d_translate(arr)
  result = []

  arr.each do |subArr|
    word = subArr[0]
    number = subArr[1]
    number.times { result << word}
  end

  result
end

arr_1 = [
  ['boot', 3],
  ['camp', 2],
  ['program', 0]
]

print two_d_translate(arr_1) # => [ 'boot', 'boot', 'boot', 'camp', 'camp' ]
puts

arr_2 = [
  ['red', 1],
  ['blue', 4]
]

print two_d_translate(arr_2) # => [ 'red', 'blue', 'blue', 'blue', 'blue' ]
puts


def array_translate(array)
  result = ""

  i = 0
  while i < array.length
    word = array[i]
    number = array[i + 1]

    result += word * number

    i += 2
  end
return result
end

print array_translate(["Cat", 2, "Dog", 3, "Mouse", 1]); # => "CatCatDogDogDogMouse"
puts

print array_translate(["red", 3, "blue", 1]); # => "redredredblue"
puts
