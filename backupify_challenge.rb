
require_relative 'contact.rb'
require_relative 'contact_directory.rb'

def create_phone_book(file)
  phone_book = ContactDirectory.new(file)
  puts "Hello and Welcome to the Directory"
  until phone_book.command == 'q'
    puts "Hit 'A' for all, 'Q' for quit, or enter a last name"
    phone_book.command = gets.chomp.downcase
    puts phone_book.run_command
  end
end

create_phone_book('testdata.csv')
