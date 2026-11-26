class Book
  attr_accessor :id, :title, :authors, :publisher, :pubYear

  def initialize(id, title, authors, publisher, pubYear)
    @id = id
    @title = title
    @authors = authors
    @publisher = publisher
    @pubYear = pubYear
  end

  def info
    "#{@id}. #{@title} - #{@authors}, #{@publisher}, #{@pubYear}"
  end
end

class Category
  attr_accessor :cid, :cname
  attr_reader :books

  def initialize(cid, cname)
    @cid = cid
    @cname = cname
    @books = []
  end

  def add(book)
    @books << book
  end

  def remove(id)
    @books.reject! { |book| book.id == id }
  end

  def search(id)
    @books.find { |book| book.id == id }
  end

  def show_books
    puts "Категорія: #{@cname}"
    @books.each { |book| puts book.info }
  end
end

book1 = Book.new(1, "Кобзар", "Тарас Шевченко", "Веселка", 2018)
book2 = Book.new(2, "Лісова пісня", "Леся Українка", "Фоліо", 2020)
book3 = Book.new(3, "Захар Беркут", "Іван Франко", "Фоліо", 2019)

category = Category.new(1, "Українська література")

category.add(book1)
category.add(book2)
category.add(book3)

puts "Початковий список книг:"
category.show_books

puts "\nПошук книги з ID = 2:"
found = category.search(2)
puts found ? found.info : "Книгу не знайдено"

category.remove(1)

puts "\nСписок після видалення книги з ID = 1:"
category.show_books
