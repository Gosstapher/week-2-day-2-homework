class Person
  attr_reader :name, :books

  def initialize(name)
    @name = name
    @books = {}
  end

  def pretty_string
    "'#{@name}' has #{@books.size} books borrowed at the moment"
  end

  def borrow(book)
    @books[book.title] = book
  end

  def return(book_title)
    book = @books.delete(book_title)
  end




end