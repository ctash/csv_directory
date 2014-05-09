class Contact
  attr_accessor :id, :first_name, :last_name, :age, :github, :graduation_date

  def initialize(args)
    @id = args["ID"].to_i
    @first_name = args["First"]
    @last_name = args["Last"]
    @age = args["Age"]
    @github = args["GithubAcct"]
    @graduation_date = args["Date of 3rd Grade Graduation"]
  end

end
