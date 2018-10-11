class Bottles
  def sing
    verses(99,0)
  end

  def verses(start, finish)
    start.downto(finish).map { |number| verse(number) }.join("\n")
  end

  def verse(number)
    bottle_number = BottleNumber.create(number)
    next_bottle_number = BottleNumber.create(number - 1)
    <<~VERSE
      #{bottle_number.amount_left(number).capitalize} #{bottle_number.recepticle(number)} of beer on the wall, #{bottle_number.amount_left(number)} #{bottle_number.recepticle(number)} of beer.
      #{bottle_number.action} #{next_bottle_number.recepticle(number)} of beer on the wall.
      VERSE
  end

  class BottleNumber
    def self.create(number)
      if number == 0
        BottleNumber0.new(number)
      elsif number == 1
        BottleNumber1.new(number)
      else
        BottleNumber.new(number)
      end
    end

    def initialize(number)
      @number = number
    end

    def recepticle(number)
      "bottles"
    end

    def pronoun
      if @number == 1
        "it"
      else
        "one"
      end
    end

    def amount_left(number)
      if number == 0
        "no more"
      else
        number.to_s
      end
    end

    def action
      "Take #{pronoun} down and pass it around, #{amount_left(predecessor)}"
    end

    def predecessor
      @number - 1
    end
  end

  class BottleNumber0 < BottleNumber
    def action
      "Go to the store and buy some more, 99"
    end

    def predecessor
      99
    end
  end

  class BottleNumber1 < BottleNumber
    def recepticle(number)
      "bottle"
    end
  end
end
