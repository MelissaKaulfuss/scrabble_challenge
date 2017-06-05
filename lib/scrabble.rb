require 'dictionary'

class Scrabble

  def initialize(word)
    @word = word
  end

  # def receive_word_input
  #   puts "hey, let's play scrabble, what's your word?"
  #   word = STDIN.gets.chomp
  # end

  def sanitized_string
    formatted_word = word.upcase.strip
    formatted_word.chars.to_a
  end

  def score
    sanitized_string.each do | character |
      dictionary[character]
       # trying to get to the value by the charachter as a key
      # now I want to add them together to get the score.
      # feel like a reduce is the right thing here but I'm confused about how to use
      # the array items as the keys for the dictionary k,v pairs.
    end
  end

end