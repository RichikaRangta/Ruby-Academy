class Bottles
  def sing
    verses(99,0)
  end

  def verses(start, finish)
    start.downto(finish).map { |number| verse(number) }.join("\n")
  end

  def verse(number)
    bottle_number = BottleNumber.create(number)
    next_bottle_number = bottle_number.successor
    <<~VERSE
      #{bottle_number.to_s.capitalize} of beer on the wall, #{bottle_number.to_s} of beer.
      #{bottle_number.action}, #{next_bottle_number.to_s} of beer on the wall.
    VERSE
  end

  class BottleNumber
    def self.create(number)
      case number
        when 0
          BottleNumber0.new(number)
        when 1
          BottleNumber1.new(number)
        when 6
          BottleNumber6.new(number)
        else
          BottleNumber.new(number)
      end
    end

    def initialize(number)
      @number = number
    end

    def action
      "Take #{pronoun} down and pass it around"
    end

    def amount_left
      @number.to_s
    end

    def pronoun
      "one"
    end

    def recepticle
      "bottles"
    end

    def successor
      BottleNumber.create(@number - 1)
    end

    def to_s
      "#{amount_left} #{recepticle}"
    end
  end

  class BottleNumber0 < BottleNumber
    def action
      "Go to the store and buy some more"
    end

    def amount_left
      "no more"
    end

    def successor
      BottleNumber.create(99)
    end
  end

  class BottleNumber1 < BottleNumber
    def pronoun
      "it"
    end

    def recepticle
      "bottle"
    end
  end

  class BottleNumber6 < BottleNumber
    def amount_left
      "one"
    end

    def recepticle
      "six pack"
    end
  end
end
