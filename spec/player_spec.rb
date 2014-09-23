require './player'
describe Player do
  describe ':score(word)' do
    it "returns the total score for the word" do
      expect(Player.new("Lily").score("Dog")).to eq 5
    end
  end

  describe ':name' do
    it "returns the name of player" do
      expect(Player.new("Lily").name).to eq "Lily"
    end
  end

  describe ':total_score' do
    it "returns the total score" do
      expect(Player.new("Lily", ["Cat", "Dog"], 0).total_score).to eq 10
    end
  end

  describe ':scorer(my_letter)' do
    it "returns the letter score" do
      expect(Player.new("Lily").scorer("Z")).to eq 10
    end
  end

  describe ':won?' do
    it "returns true if the player has won" do
      expect(Player.new("Lily", ["Cat", "Dog"], 150).won?).to eq true
    end

    it "returns false if the player has not won" do
      expect(Player.new("Lily", ["Cat", "Dog"], 90).won?).to eq false
    end
  end

  describe ':play(word)' do
    it "plays the word" do
      expect(Player.new("Lily").play("Cat").plays).to eq ["Cat"]
    end

    it "plays the word" do
      expect(Player.new("Lily", ["Dog", "Fish"]).play("Cat").plays).to eq ["Dog", "Fish", "Cat"]
    end
  end

  describe ':highest_scoring_word' do
    it "returns the top scoring word" do
      expect(Player.new("Lily", ["Dogs", "Cats", "Quiz"]).highest_scoring_word).to eq "Quiz"
    end

    it "returns the top scoring word" do
      expect(Player.new("Lily", ["Dot", "Hat", "Stairs"]).highest_scoring_word).to eq "Hat"
    end

    it "returns array of top scoring words" do
      expect(Player.new("Lily", ["Strains", "Treater", "Cat"]).highest_scoring_word).to eq ["Treater", "Strains"]
    end
  end

  describe ':highest_word_score' do
    it "returns the top word score" do
      expect(Player.new("Lily", ["Dogs", "Cats", "Quiz"]).highest_word_score).to eq 22
    end

    it "returns the top word score (two 7 letter words)" do
      expect(Player.new("Lily", ["Strains", "Treater", "Cat"]).highest_word_score).to eq 7
    end
  end


end
