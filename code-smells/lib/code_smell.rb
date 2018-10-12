class Order
  def initialize(amount, id)
    @amount = amount
    @id = id
  end

  def due_refund
    is_due_refund = Refund.new(@amount, @id).due_refund

    if is_due_refund
      "is due a refund"
    else
      "is not due a refund"
    end
  end

  def to_s
    "#{@id} #{due_refund}"
  end
end

class Refund
  def initialize(amount, id)
    @amount = amount
    @id = id
  end

  def due_refund
    @amount < 10
  end
end
