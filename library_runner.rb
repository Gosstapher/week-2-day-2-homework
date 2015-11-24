require "pry-byebug"
require_relative ("library")
require_relative ("Book")
require_relative ("person")

#TODO : CREATE LIBRARY
library = Library.new("Code Clan Library")
#TODO : CREATE BOOK(S)
book_1 = Book.new({title: "Errand", genre: "Fantasy"})
library.add_book(book_1)
library.add_book(Book.new(title: "The Hobbit", genre: "Fantasy"))
library.add_book(Book.new(title: "Feersum Endjinn", genre: "Science Fiction"))
library.add_book(Book.new(title: "Histories", genre: "History"))
library.add_book(Book.new(title: "To Kill a Mockingbird", genre: "Fiction"))
library.add_book(Book.new(title: "A Brief History of Time", genre: "Non-Fiction"))

#TODO : LIST BOOKS
puts "All books #{library.list_books}"
#TODO : CREATE PERSON
person_1 = Person.new("Jane")
library.add_person(person_1)
library.add_person(Person.new('Fred'))
library.add_person(Person.new('Wilma'))
library.add_person(Person.new('Barney'))
library.add_person(Person.new('Betty'))
#TODO : LIST PEOPLE
puts "All people #{library.list_people}"
puts "\n"

#TODO : LEND BOOK
person_name = "Wilma"
book_title = "The Hobbit"
library.lend(person_name, book_title)
puts "All books #{library.list_books}"
puts "All people #{library.list_people}"
puts "#{library.borrowed}"
puts "\n"
#TODO : RETURN BOOK
library.return_book("Wilma", "The Hobbit")
#TODO : LIST BORROWED BOOKS
puts "#{library.borrowed}"
# puts "\n"
# binding.pry;''










