class Scrabble
  attr_accessor :word, :array_of_words
  def initialize
    @word = word
    @array_of_words = []
    # @scoring = {1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
    #             2 => ["D", "G"],
    #             3 => ["B", "C", "M", "P"],
    #             4 => ["F", "H", "V", "W", "Y"],
    #             5 => ["K"],
    #             8 => ["J", "X"],
    #             10=> ["Q", "Z"]}
  end

  def self.score(word)
    score = 0
    word = word.upcase.split(//)
    word.each do |letter|
      letter_score = scorer(letter)
      score += letter_score
    end
    score
  end

  def self.highest_score_from(array_of_words)
    highest_score = 0
    highest_scoring_word = ""
    array_of_words.each do |word|
      word_score = score(word)
      if word_score > highest_score
        highest_score = word_score
        highest_scoring_word = word
      elsif word_score == highest_score
        if word.length < highest_scoring_word.length || (word.length == 7 && highest_scoring_word.length != 7)
          highest_score = word_score
          highest_scoring_word = word
        elsif highest_scoring_word.length == word.length
          highest_scoring_word = [word, highest_scoring_word]
        end
      end
    end
    highest_scoring_word
  end


  # def scorer(my_letter)
  #   count = 0
  #   @scoring.each do |key, value|
  #     if value.include?(my_letter)
  #       count += key
  #     end
  #   end
  # count
  # end

end

def scorer(my_letter)
  scoring = {1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
             2 => ["D", "G"],
             3 => ["B", "C", "M", "P"],
             4 => ["F", "H", "V", "W", "Y"],
             5 => ["K"],
             8 => ["J", "X"],
             10=> ["Q", "Z"]}
  count = 0
  scoring.each do |key, value|
    if value.include?(my_letter)
      count += key
    end
  end
count
end
