require_relative '../lib/code_smell'

RSpec.describe do
  it "creates a new person" do
    subject = Person.new("Chris")
    expect(subject.to_s).to eq("Chris")
  end

  it "creates a new phone number" do
    subject = Person.new("Chris").phone_number
    expect(subject.phone_number).to eq(01611234567)
  end

  it "creates an address" do
    subject = Person.new("Chris").address
    expect(subject.address).to eq("1 Park Square")
  end
end
