require_relative '../harry-potter'

RSpec.describe "harry potter kata" do
  it "returns the correct value for one book" do
    basket = { "first" => 1 }
    expect(buy_books(basket)).to eq(8)
  end

  context "applies a" do
    it "5% discount for two different books" do
      basket = { "first" => 1, "second" => 1 }
      expect(buy_books(basket)).to eq(15.20)
    end

    it "10% discount for three different books" do
      basket = { "first" => 1, "second" => 1, "third" => 1 }
      expect(buy_books(basket)).to eq(21.60)
    end

    it "20% discount for four different books" do
      basket = { "first" => 1, "second" => 1, "third" => 1, "fourth" => 1 }
      expect(buy_books(basket)).to eq(25.60)
    end

    it "25% discount for five different books" do
      basket = { "first" => 1, "second" => 1, "third" => 1, "fourth" => 1, "fifth" => 1 }
      expect(buy_books(basket)).to eq(30)
    end
  end

  context "handles multiples of the same book" do
    it "handles multiples of the same book" do
      basket = { "first" => 2, }
      expect(buy_books(basket)).to eq(16)
    end

    it "handles multiples of the same book" do
      basket = { "second" => 3, }
      expect(buy_books(basket)).to eq(24)
    end

    it "handles multiples of the same book" do
      basket = { "third" => 4, }
      expect(buy_books(basket)).to eq(32)
    end

    it "handles multiples of the same book" do
      basket = { "fourth" => 5, }
      expect(buy_books(basket)).to eq(40)
    end
  end

  context "handles multiple and single books" do
    it "handles two of one book plus a different one" do
      basket = { "first" => 2, "second" => 1 }
      expect(buy_books(basket)).to eq(23.20)
    end

    it "handles three of one book plus a different one" do
      basket = { "first" => 3, "second" => 1 }
      expect(buy_books(basket)).to eq(31.20)
    end

    it "handles three unique books plus a duplicate" do
      basket = { "first" => 1, "second" => 1, "third" => 2 }
      expect(buy_books(basket)).to eq(29.60)
    end

    it "handles a full set of books plus others" do
      basket = { "first" => 2, "second" => 2, "third" => 2, "fourth" => 1, "fifth" => 1 }
      expect(buy_books(basket)).to eq(51.60)
    end

    it "handles a full set of books plus others" do
      basket = { "first" => 2, "second" => 2, "third" => 2, "fourth" => 2, "fifth" => 1 }
      expect(buy_books(basket)).to eq(55.60)
    end

    it "handles a full set of books plus others" do
      basket = { "first" => 5, "second" => 4, "third" => 3, "fourth" => 2, "fifth" => 1 }
      expect(buy_books(basket)).to eq(100.40)
    end
  end
end
