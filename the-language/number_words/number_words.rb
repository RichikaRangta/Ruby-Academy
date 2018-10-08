def number_words(int)
  singles = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  doubles = { 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen" }
  wholes = { 20 => "twenty", 30 => 'thirty' }

  above = {
    20 => ["twenty"].push(*singles.reject { |i| i.empty? }),
    30 => ["thirty"].push(*singles.reject { |i| i.empty? })
  }

  if int < 10
    # 1-9
    singles[int]
  elsif int < 20
    # 10 - 19
    doubles[int]
  else
    firstChar = int.to_s.chars.first().to_i * 10

    if int % 10 == 0
      # 20+ 'ten' numbers
      above[int][int % 10]
    else
      # everything else
      "#{above[firstChar][0]} #{above[firstChar][int % 10]}"
    end
  end
end
