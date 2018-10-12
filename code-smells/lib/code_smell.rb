class Order
  def initialize(amount, id)
    @amount = amount
    @id = id
  end

  def due_refund
    if @amount < 10
      "is due a refund"
    else
      "is not due a refund"
    end
  end

  def to_s
    "#{@id} #{due_refund}"
  end
end
