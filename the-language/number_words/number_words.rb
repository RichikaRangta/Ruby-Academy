def number_words(int)
  singles = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  doubles = { 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen" }
  wholes = { 20 => "twenty" }

  testing = { 20 => ["twenty"].push(*singles.reject { |i| i.empty? }) }


  if int < 10
    singles[int]

  elsif int < 20
    doubles[int]
  else
    if int % 10 == 0
      testing[20][int % 10]
    else
      "#{testing[20][0]} #{testing[20][int % 10]}"
    end
  end
end
