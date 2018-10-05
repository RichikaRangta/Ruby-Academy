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

  it "returns the numbers 10 to 19 as strings" do
    expect(number_words(10)).to eq("ten")
    expect(number_words(11)).to eq("eleven")
    expect(number_words(12)).to eq("twelve")
    expect(number_words(13)).to eq("thirteen")
    expect(number_words(14)).to eq("fourteen")
    expect(number_words(15)).to eq("fifteen")
    expect(number_words(16)).to eq("sixteen")
    expect(number_words(17)).to eq("seventeen")
    expect(number_words(18)).to eq("eighteen")
    expect(number_words(19)).to eq("nineteen")
  end

  it "returns the numbers 20 to 21 as a string" do
    expect(number_words(20)).to eq("twenty")
    expect(number_words(21)).to eq("twenty one")
  end
end
