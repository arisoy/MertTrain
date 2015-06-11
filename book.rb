class Book
	
	def initialize(name, author, page_number)
			@name = name
			@author = author
			@page_number = page_number
	end

	def to_s
    	"Book: #{@name}--#{@author}--#{@page_number}"
  	end

end

