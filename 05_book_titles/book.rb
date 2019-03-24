class Book
# write your code here
  def initialize
    @title = ''
  end

  attr_reader :title

  def title=(sentence)
    words = sentence.split
    words.map do |word|
      if %w(the and over an a in of).include?(word)
        word
      else
        word.capitalize!
      end
    end
    words.first.capitalize!
    @title = words.join(" ")
  end
end
