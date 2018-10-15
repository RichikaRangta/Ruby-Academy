class Hangman
  def initialize(word)
    @temp = Correct.new([])
    @word = Word.new(word)
    @correctly_guessed = @temp.correct
    @incorrectly_guessed = []
  end

  def show_word
    answer = []
    @word.to_a.each do |letter|
      if @correctly_guessed.include?(letter)
        answer << letter
      else
        answer << '_'
      end
    end
    answer.join('')
  end

  def guess(letter)
    if @correctly_guessed.include?(letter) || @incorrectly_guessed.include?(letter)
      "Already guessed"
    else
      if @word.to_a.include?(letter)
        @correctly_guessed << letter
      else
        @incorrectly_guessed << letter
      end
    end
  end

  def finished?
    if @correctly_guessed.length == @word.word.length
      "You win!"
    elsif @incorrectly_guessed.length == 10
      "Better luck next time"
    end
  end

  def lives_left
    10 - (@incorrectly_guessed.length)
  end

  def guessed_letters
    @incorrectly_guessed.join(',')
  end
end

class Word
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def to_a
    word.split('')
  end
end

class Correct
  attr_reader :correct

  def initialize(array)
    @correct = array
  end

  def add_to_array(value)
    @correct << value
  end
end
