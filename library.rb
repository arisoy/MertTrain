class Book
    
    def initialize(name, author, page_number)
        @name = name
        @author = author
        @page_number = page_number
        @isBooked = false
    end
    
    attr_accessor :name
    attr_accessor :isBooked
    
    def to_s
        "Book: #{@name}--#{@author}--#{@page_number}--#{@isBooked}"
    end
    
end



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

def borrow
	puts "Enter the name of the book you want to borrow."
	name = gets.chomp
  	@books.each do |book|
   		if book.name.eql?(name)
   			book.isBooked = true
   		end
	end
end


def list_book
puts @books
end

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
