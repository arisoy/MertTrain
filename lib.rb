class Book
  # setter
  def name=(value)
    @name = value
  end

  def author=(value)
    @author = value
  end

  def page_number=(value)
    @page_number = value
  end

  def is_booked=(value)
    @is_booked = value
  end

  # getter
  def name
    @name
  end

  def author
    @author
  end

  def page_number
    @page_number
  end

  def is_booked
    @is_booked = false
  end

  def initialize(name, author, page_number)
    @name = name
    @author = author
    @page_number = page_number
    @isBooked = false
  end
  
  def to_s
    "Book: #{@name}--#{@author}--#{@page_number}"
  end
end
##############################
def add_book
  puts "How many books would you like to donate?"
  n = Integer(gets)

  @books = Array.new n do
    puts "Name of the book?"
    name = gets.chomp
    puts "Author of the book?"
    author = gets.chomp
    puts "Page # of the book?"
    page_number = gets.chomp
    n = Book.new(name, author, page_number)
  end
end
################################
def list_book
  puts @books
end
################################
def borrow
  puts "Enter the name of the book you want to borrow."
  name_input = gets.chomp
  if Book.book.include? 'name_input'
    puts "You can borrow the book."
  end
end
################################
loop do
  puts "Welcome to my library!!"
    puts %q{Please select an option:
    1. Donate book
    2. Borrow book
    3. List books
    }
    case gets.chomp
      when '1'
        add_book
      when '2'
        borrow
      when '3'
        list_book
    end 
end
