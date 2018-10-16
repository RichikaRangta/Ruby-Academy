class Hangman
  def initialize(word)
    @correct_guesses = Correct.new([])
    @word = Word.new(word)
    @temp = Incorrect.new([])
    @incorrectly_guessed = @temp.incorrect
  end

  def show_word
    answer = []
    @word.to_a.each do |letter|
      if @correct_guesses.includes?(letter)
        answer << letter
      else
        answer << '_'
      end
    end
    answer.join('')
  end

  def guess(letter)
    if @correct_guesses.includes?(letter) || @temp.includes?(letter)
      "Already guessed"
    else
      if @word.to_a.include?(letter)
        @correct_guesses.add_to_array(letter)
      else
        @temp.add_to_array(letter)
      end
    end
  end

  def finished?
    if @correct_guesses.length == @word.word.length
      "You win!"
    elsif @temp.length == 10
      "Better luck next time"
    end
  end

  def lives_left
    10 - (@temp.length)
  end

  def guessed_letters
    @temp.join
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

  def length
    @correct.length
  end

  def includes?(letter)
    @correct.include?(letter)
  end
end

class Incorrect
  attr_reader :incorrect

  def initialize(array)
    @incorrect = array
  end

  def add_to_array(value)
    @incorrect << value
  end

  def length
    @incorrect.length
  end

  def includes?(letter)
    @incorrect.include?(letter)
  end

  def join
    @incorrect.join(',')
  end
end
