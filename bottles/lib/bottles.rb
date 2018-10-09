class Bottles
  def sing
    verses(99,0)
  end

  def verses(start, finish)
    start.downto(finish).map { |number| verse(number) }.join("\n")
  end

  def verse(number)
    bottle_number = BottleNumber.for(number)
    next_bottle_number = bottle_number.successor
    <<~VERSE
      #{ bottle_number.to_s.capitalize } of beer on the wall, #{ bottle_number } of beer.
      #{ bottle_number.action }, #{ next_bottle_number } of beer on the wall.
      VERSE
  end

  def bottle_number_for(number)
    BottleNumber.for(number)
  end

  class BottleNumber
    attr_reader :number

    def self.for(number)
      if (number == 0)
        BottleNumber0.new(number)
      elsif (number == 1)
        BottleNumber1.new(number)
      elsif (number == 6)
        BottleNumber6.new(number)
      else
        BottleNumber.new(number)
      end
    end

    def initialize(number)
      @number = number
    end

    def container
      "bottles"
    end

    def pronoun
      "one"
    end

    def quantity
      number.to_s
    end

    def action
      "Take #{ pronoun } down and pass it around"
    end

    def successor
      BottleNumber.for(number - 1)
    end

    def to_s
      "#{quantity} #{container}"
    end
  end

  class BottleNumber0 < BottleNumber
    def quantity
      "no more"
    end

    def action
      "Go to the store and buy some more"
    end

    def successor
      BottleNumber.for(99)
    end
  end

  class BottleNumber1 < BottleNumber
    def container
      "bottle"
    end

    def pronoun
      "it"
    end
  end

  class BottleNumber6 < BottleNumber
    def to_s
      "1 six pack"
    end
  end
end
