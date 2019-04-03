def echo (string)
    string
end
  
def shout (string)
    string.upcase
end
  
def repeat (string, n=2)
    ("#{string} " * n).strip
end
  
def start_of_word (string, n)
    string[0..(n-1)]
end
  
def first_word (string)
    string.split[0]
end
  
  
def titleize(string)
    list = string.split
    list[0].capitalize!
    list[1..-1].each do |word|
    word.capitalize! unless little_word?(word)
end
    if list.length > 1
      final_list = list.inject{ |line, word| line + " #{word}"}.strip
    else
      string.capitalize
    end
end
  
def little_word?(string)
    ["and", "or", "of", "in", "a", "the"].include?(string)
end