require_relative "../number_words"

RSpec.describe "number_words" do
  it "returns the numbers 1 to 9 as strings" do
    expect(number_words(1)).to eq("one")
    expect(number_words(2)).to eq("two")
    expect(number_words(3)).to eq("three")
    expect(number_words(4)).to eq("four")
    expect(number_words(5)).to eq("five")
    expect(number_words(6)).to eq("six")
    expect(number_words(7)).to eq("seven")
    expect(number_words(8)).to eq("eight")
    expect(number_words(9)).to eq("nine")
  end

  it "returns the number 10 as a string" do
    expect(number_words(10)).to eq("ten")
  end
end
