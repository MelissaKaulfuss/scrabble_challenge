class Scrabble

  attr_reader :word

  DICTIONARY = {
    "A" => 1, "B" => 3, "C" => 3, "D" => 2,
    "E" => 1, "F" => 4, "G" => 2, "H" => 4,
    "I" => 1, "J" => 8, "K" => 5, "L" => 1,
    "M" => 3, "N" => 1, "O" => 1, "P" => 3,
    "Q" => 10, "R" => 1, "S" => 1, "T" => 1,
    "U" => 1, "V" => 4, "W" => 4, "X" => 8,
    "Y" => 4, "Z" => 10
  }

  def score(word)
    @word = String(word)
    formatted_word = @word.upcase.strip
    letters_to_score = formatted_word.chars

    letter_scores_to_add = letters_to_score.map { | char | DICTIONARY[char] }
    final_score = letter_scores_to_add.inject(0) { | sum, a| sum + a }
  end
end