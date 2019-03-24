# One I liked - Credits to https://repl.it/@ikaur
def translate sentence
  # Let's add our comparators
  vowels = %w[ a e i o u ]
  two_letter_consonants = %w[ ch sh qu th br ]
  three_letter_consonants = %w[thr sch squ]

  words = sentence.split
  result = []

  #check each word and adjust accordingly
  words.each do |word|
    if
      vowels.include?word[0]
      result.push word << 'ay'
    else
      if three_letter_consonants.include?word[0] + word[1] + word[2]
        first_three_letters = word.slice!(0,3)
        result.push word << first_three_letters << 'ay'
      elsif two_letter_consonants.include?word[0] + word[1]
        first_two_letters = word.slice!(0,2)
        result.push word << first_two_letters << 'ay'
      else
        consonant = word.slice!(0)
        result.push word << consonant << 'ay'
      end
    end
  end
  result.join(' ')
end
