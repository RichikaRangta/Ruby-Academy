def buy_books(basket)
  available_books = basket.clone
  sets = []
  single_book_cost = 8
  cost = 0

  loop do
    sets << available_books.keys.uniq.length

    available_books.keys.each do |book|
      available_books[book] = available_books[book] - 1
      if available_books[book] < 1
        available_books.delete(book)
      end
    end

    if available_books.keys.uniq.length < 2
      break
    end
  end

  sets.each do |set|
    case(set)
      when 1
        cost += single_book_cost
      when 2
        cost += calculate_discount(2, 5)
      when 3
        cost += calculate_discount(3, 10)
      when 4
        cost += calculate_discount(4, 20)
      when 5
        cost += calculate_discount(5, 25)
    end
  end

  available_books.keys.each do |book|
    cost += available_books[book] * single_book_cost
  end

  cost
end

def calculate_discount(number_of_books, discount)
  (((8 * number_of_books).to_f / 100) * (100 - discount)).round(2)
end
