require "./input_functions"

class Book
  attr_accessor :title, :author, :rating

  def initialize(title, author, rating)
    @title = title
    @author = author
    @rating = rating
  end
end

def read_book() #Reads in book attributes from the terminal, creates an instance of the class Book
  title = read_string("Enter book title: ")
  author = read_string("Enter book author: ")
  rating = read_string("Enter book rating: ")
  book = Book.new(title, author, rating)
  return book
end

def read_books()
  bookscount = read_integer("How many books are you entering: ")
  books = Array.new() #Creates an empty array to store books
  i = 0
  while (i < bookscount)
    book = read_book()
    books << book
    i += 1
  end
  return books
end

def print_book(book)
  puts("Title: " + book.title)
  puts("Author: " + book.author)
  puts("Rating: " + book.rating)
end

def print_books(books)
  i = 0
  while (i < books.length)
    print_book(books[i])
    i += 1
  end
end

def main()
  books = read_books()
  print_books(books)
end

main()
