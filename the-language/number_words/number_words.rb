def number_words(int)
  singles = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

  if int.to_s.length > 1
    "ten"
  else
    singles[int]
  end
end
