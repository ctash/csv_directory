require'CSV'
require 'pry'
require_relative 'contact.rb'

class ContactDirectory
  attr_reader :people, :file
  attr_accessor :command

  def initialize(file_name)
    @file = file_name
    @people = load_from_csv(file_name)
  end

  def run_command
    if @command.downcase == 'a'
      report(sort_by_age)
    else
      report(filtered_by_last_name)
    end
  end

  def filtered_by_last_name
    filtered_list = []
    @people.each do |person|
      filtered_list << person if person.last_name == @command
    end
    filtered_list
  end

  def sort_by_age
    @people.sort {|person_1, person_2| person_2.age.to_i <=> person_1.age.to_i}
  end

  private

    def report(list)
      if list.empty?
        [" ", "Empty Report", " "]
      else
        report = [" "]
        report << tab("ID","Last Name", "First Name", "Age", "Github", "Graduation")
        report << tab("--","---------", "----------", "---", "------", "----------")
        list.each do |p|
          report << tab(p.id, p.last_name, p.first_name, p.age, p.github, p.graduation_date)
        end
        report << " "
      end
    end

    def tab(*args)
      string = ""
      args.each do |argument|
        string +="#{argument}".ljust(15)
      end
      string
    end

    def load_from_csv(file_name)
      people = []
      CSV.foreach(file_name, headers: true) do |row|
        people << Contact.new(row.to_hash)
      end
      people
    end
end

