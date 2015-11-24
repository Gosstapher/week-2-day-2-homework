class Library
  attr_reader :name, :books, :people, :borrowed

  def initialize (input_name)
    @name = input_name
    @books = {}
    @people = {}
    @borrowed ={}
  end

  def add_book(book)
    @books[book.title] = book
  end

  def list_books
    if @books.empty?
      "There are no books in the Library at present"
    else
      book_strings = @books.map do |key, book|
        book.pretty_string
    end
      book_strings.join("\n")
    end
  end

  def add_person(person)
    @people[person.name] = person
  end

  def list_people
    if @people.empty?
      "no people here"
    else
      people_strings = @people.map do |key, person|
        person.pretty_string
      end
      people_strings.join("\n")
    end
  end

  def lend(person_name, book_title)
    person = @people[person_name]
    book = @books.delete(book_title)
    @borrowed[book_title] = book
    person.borrow(book)
  end

  def return_book(person_name, book_title)
    person = @people[person_name]
    book = person.books[book_title]
    @books[book.title] = book
    book = @borrowed.delete(book_title)
    person.return(book_title)
  end

  def borrowed
      if @borrowed.empty?
        "no people have any borrowed books"
      else
        borrowed_strings = @borrowed.map do |key, book|
          book.borrowed_string
        end
        borrowed_strings.join("\n")
      end
  end
  


end









