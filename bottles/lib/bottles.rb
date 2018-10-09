class Bottles
  def sing
    verses(99,0)
  end

  def verses(start, finish)
    start.downto(finish).map { |number| verse(number) }.join("\n")
  end

  def verse(number)
    <<~VERSE
      #{quantity(number).capitalize} #{container(number)} of beer on the wall, #{quantity(number)} #{container(number)} of beer.
      #{get_bottles(number)} #{quantity(successor(number))} #{container(successor(number))} of beer on the wall.
    VERSE
  end

  def container(number)
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end

  def bottle_describer(number)
    if number == 1
      "it"
    else
      "one"
    end
  end

  def quantity(number)
    if number == 0
      "no more"
    else
      number.to_s
    end
  end

  def successor(number)
    if number == 0
      99
    else
      number - 1
    end
  end

  def get_bottles(number)
    if number == 0
      "Go to the store and buy some more,"
    else
      "Take #{bottle_describer(number)} down and pass it around,"
    end
  end
end
