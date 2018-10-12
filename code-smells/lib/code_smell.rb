class Person
  def initialize(name)
    @name = name
  end

  def phone_number
    PhoneNumber.new(@name)
  end

  def address
    Address.new(@name)
  end

  def to_s
    "#{@name}"
  end
end

class PhoneNumber
  def initialize(name)
    @name = name
  end

  def phone_number
    case @name
      when "Chris"
        01611234567
      else
        01610000000
    end
  end
end

class Address
  def initialize(name)
    @name = name
  end

  def address
    case @name
      when "Chris"
        "1 Park Square"
      else
        "An address"
    end
  end
end
