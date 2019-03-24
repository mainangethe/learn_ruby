#write your code here
def echo word
  "#{word}"
end

def shout word
  "#{word.upcase}"
end

def repeat (word, count = 2)
  ("#{word } "* count).strip
end

def start_of_word (word, characters = 1)
  word[0, characters]
end

def first_word word
  word[/^\w+/]
end

def titleize words
  words = words.split.map do |word|
    if %w(the and over an a).include?(word)
      word
    else
      word.capitalize
    end
  end
  words.first.capitalize!
  words.join(" ")
end
