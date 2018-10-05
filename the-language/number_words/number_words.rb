def number_words(int)
  singles = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  doubles = { 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen" }

  if int == 20
    "twenty"
  else
    if int.to_s.length > 1
      doubles[int]
    else
      singles[int]
    end
  end
end
