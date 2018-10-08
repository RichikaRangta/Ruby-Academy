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
    expect(number_words(22)).to eq("twenty two")
    expect(number_words(23)).to eq("twenty three")
    expect(number_words(24)).to eq("twenty four")
    expect(number_words(25)).to eq("twenty five")
    expect(number_words(26)).to eq("twenty six")
    expect(number_words(27)).to eq("twenty seven")
    expect(number_words(28)).to eq("twenty eight")
    expect(number_words(29)).to eq("twenty nine")
  end

  it "returns the numbers 30 to 31 as a string" do
    expect(number_words(30)).to eq("thirty")
    expect(number_words(31)).to eq("thirty one")
    expect(number_words(32)).to eq("thirty two")
    expect(number_words(33)).to eq("thirty three")
    expect(number_words(34)).to eq("thirty four")
    expect(number_words(35)).to eq("thirty five")
    expect(number_words(36)).to eq("thirty six")
    expect(number_words(37)).to eq("thirty seven")
    expect(number_words(38)).to eq("thirty eight")
    expect(number_words(39)).to eq("thirty nine")
  end
end
