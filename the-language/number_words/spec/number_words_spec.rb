require_relative "../number_words"

RSpec.describe "number_words" do
  it "returns 1 as a string" do
    expect(number_words(1)).to eq("one")
  end
end
