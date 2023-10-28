def get_double_age(hash)
  return hash['age'] * 2

end

puts get_double_age({"name"=>"App Academy", "age"=>5}) # => 10
puts get_double_age({"name"=>"Ruby", "age"=>23})       # => 46


def word_lengths(sentence)
  words = sentence.split(' ')

  lengths = {}

  words.each do |word|
    lengths[word] = word.length
  end

  return lengths

end

puts word_lengths("this is fun") #=> {"this"=>4, "is"=>2, "fun"=>3}
puts word_lengths("When in doubt, leave it out") #=> {"When"=>4, "in"=>2, "doubt,"=>6, "leave"=>5, "it"=>2, "out"=>3}

def retrieve_values(hash1, hash2, key)
return [hash1[key], hash2[key]]

end


dog1 = {"name"=>"Fido", "color"=>"brown"}
dog2 = {"name"=>"Spot", "color"=> "white"}
print retrieve_values(dog1, dog2, "name") #=> ["Fido", "Spot"]
puts
print retrieve_values(dog1, dog2, "color") #=> ["brown", "white"]
puts


def cat_builder(name_str, color_str, age_num)
  {
    "name" => name_str,
    "color" => color_str,
    "age" => age_num
  }
end

print cat_builder("Whiskers", "orange", 3) #=> {"name"=>"Whiskers", "color"=>"orange", "age"=>3}
puts

print cat_builder("Salem", "black", 100) #=> {"name"=>"Salem", "color"=>"black", "age"=>100}
puts

def ae_count(str)
  count = {'a' => 0 , 'e' => 0}

  str.each_char do |char|
    if count.has_key?(char)
      count[char] += 1
    end
  end

  return count

end

puts ae_count("everyone can program") #=> {"a"=>2, "e"=>3}
puts ae_count("keyboard") #=> {"a"=>1, "e"=>1}

def element_count(arr)
  count = {}

  arr.each do |element|
    if count.has_key?(element)
      count[element] += 1
    else
    count[element] = 1
    end
  end
  count
end


puts element_count(["a", "b", "a", "a", "b"]) #=> {"a"=>3, "b"=>2}
puts element_count(["red", "red", "blue", "green"]) #=> {"red"=>2, "blue"=>1, "green"=>1}


def select_upcase_keys(hash)
  selected = {}

  hash.each do |key,value|
    if key == key.upcase
      selected[key] = value
    end
  end

  selected

end

print select_upcase_keys({"make"=> "Tesla", "MODEL"=> "S", "Year"=> 2018, "SEATS"=> 4}) # => {"MODEL"=>"S", "SEATS"=>4}
puts

print select_upcase_keys({"DATE"=>"July 4th","holiday"=> "Independence Day", "type"=>"Federal"}) # => {"DATE"=>"July 4th"}
puts

def hand_score(hand)
  point = {
    'A' => 4,
    'K' => 3,
    'Q' => 2,
    'J' => 1
}

   score = 0
   hand.each_char { |char| score += point[char.upcase] }
   return score
  end
puts hand_score("AQAJ") #=> 11
puts hand_score("jJka") #=> 9
