require './scrabble'
describe Scrabble do
  describe ':score(word)' do
    it "returns the total score for the word" do
      expect(Scrabble.score("Dog")).to eq 5
    end
  end

  describe ':score(word)' do
    it "returns the total score for the word" do
      expect(Scrabble.score("Dog")).to eq 5
    end
  end

  describe ':score(word)' do
    it "returns the total score for the word" do
      expect(Scrabble.score("Quiz")).to eq 22
    end
  end

  describe ':scorer(my_letter)' do
    it "returns the score for the letter" do
      expect(scorer("A")).to eq 1
    end
  end

  describe ':highest_score_from(word_array)' do
    it "returns the highest score from a word array" do
      expect(Scrabble.highest_score_from(["Quiz", "Dog", "Cat"])).to eq "Quiz"
    end

    it "returns array of highest scoring words" do
      expect(Scrabble.highest_score_from(["Rut", "Dog", "Cat"])).to eq ["Cat", "Dog"]
    end

    it "returns 7 letter word" do
      expect(Scrabble.highest_score_from(["Kit", "Strings", "Cat"])).to eq "Strings"
    end

    it "returns 7 letter word" do
      expect(Scrabble.highest_score_from([ "Strings", "Cat", "Kit"])).to eq "Strings"
    end

    it "returns shortest word" do
      expect(Scrabble.highest_score_from(["Stairs", "Kit", "Cat"])).to eq "Kit"
    end

  end

end
