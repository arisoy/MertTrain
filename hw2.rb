
require_relative 'book.rb'

puts "enter the book name author and page_number"
name = gets.chomp
author = gets.chomp
page_number = gets.chomp
firstbook = Book.new(name, author, page_number)

puts firstbook