require "pry"
def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string)
  new_array = []
  array = string.split(" ")
  array.each do |word|
    if dictionary.keys.include?(word)
      new_array << dictionary[word]
      binding.pry
    else
      new_array << word
    end
    end
    new_array.join(" ")
end 

