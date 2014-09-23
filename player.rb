class Player
  attr_accessor :name, :plays, :points
  def initialize(name = '', plays = [], points = 0)
    @name = name
    @plays = plays
    @points = points
  end

  # def self.test(name, plays, points)
  #   Player.new(name)
  #   @plays = plays
  #   @points = points
  # end

  def score(word)
    score = 0
    word = word.upcase.split(//)
    word.each do |letter|
      score += scorer(letter)
    end
  score
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


  def name
    @name
  end

  def won?
    if points > 100
      true
    else
      false
    end
  end

  def play(word)
    if won?
      return false
    else
      @plays << word
    end
    self
  end

  def total_score
    plays.each do |word|
      @points += score(word)
    end
  @points
  end

  def highest_scoring_word
    highest_score = 0
    highest_scoring_word = ""
    @plays.each do |word|
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

  def highest_word_score
    highest_score = 0
    highest_scoring_word = ""
    @plays.each do |word|
      word_score = score(word)
      if word_score > highest_score
        highest_score = word_score
        highest_scoring_word = word
      elsif word_score == highest_score
        if word.length < highest_scoring_word.length || (word.length == 7 && highest_scoring_word.length != 7)
          highest_score = word_score
          highest_scoring_word = word
        end
      end
    end
  highest_score
  end


end
