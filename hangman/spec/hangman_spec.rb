require_relative '../hangman'

RSpec.describe do
  it "shows underscores for each letter of the word" do
    game = Hangman.new('a')
    expect(game.show_word).to eq('_')
  end

  it "reveals correctly guessed letters" do
    game = Hangman.new('a')
    game.guess('a')
    expect(game.show_word).to eq('a')
  end

  it "completes the game if all letters guessed" do
    game = Hangman.new('a')
    game.guess('a')
    expect(game.finished?).to eq('You win!')
  end

  it "shows remaining letters if incorrect guess made" do
    game = Hangman.new('a')
    game.guess('b')
    expect(game.show_word).to eq('_')
  end

  it "shows remaining lives after incorrect guess" do
    game = Hangman.new('a')
    game.guess('b')
    expect(game.lives_left).to eq(9)
  end

  it "shows incorrectly guessed letters" do
    game = Hangman.new('a')
    game.guess('b')
    game.guess('c')
    expect(game.guessed_letters).to eq('b,c')
  end

  it "ends game when no lives remaining" do
    game = Hangman.new('a')
    game.guess('b')
    game.guess('c')
    game.guess('d')
    game.guess('e')
    game.guess('f')
    game.guess('g')
    game.guess('h')
    game.guess('i')
    game.guess('j')
    game.guess('k')
    expect(game.finished?).to eq('Better luck next time')
  end

  it "prevents guesses for already guessed letters" do
    game = Hangman.new('a')
    game.guess('b')
    expect(game.guess('b')).to eq('Already guessed')
  end

  it "shows underscores for each letter of the word" do
    game = Hangman.new('rainbow')
    expect(game.show_word).to eq('_______')
  end

  it "reveals correctly guessed letters" do
    game = Hangman.new('rainbow')
    game.guess('a')
    expect(game.show_word).to eq('_a_____')
  end

  it "completes the game if all letters guessed" do
    game = Hangman.new('rainbow')
    game.guess('r')
    game.guess('a')
    game.guess('i')
    game.guess('n')
    game.guess('b')
    game.guess('o')
    game.guess('w')
    expect(game.finished?).to eq('You win!')
  end

  it "shows remaining letters if incorrect guess made" do
    game = Hangman.new('rainbow')
    game.guess('x')
    game.guess('b')
    game.guess('y')
    expect(game.show_word).to eq('____b__')
  end
end
