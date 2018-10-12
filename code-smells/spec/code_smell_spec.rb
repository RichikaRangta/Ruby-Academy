require_relative '../lib/code_smell'

RSpec.describe do
  it "creates a new order which is not due a refund" do
    subject = Order.new(500, 123)
    expect(subject.to_s).to eq("123 is not due a refund")
  end

  it "creates a new order which is due a refund" do
    subject = Order.new(9, 456)
    expect(subject.to_s).to eq("456 is due a refund")
  end
end
