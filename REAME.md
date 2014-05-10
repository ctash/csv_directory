
Instructions: Install
---------

1. Clone Repo and 'bundle install' in root directory 
2. run program with 'ruby backupify_challenge.rb'
  1. type a to view all contacts
  2. type q to quit
  3. type last name to view all contacts with last name
3. run tests in spec directory with 'rspec .'

Instructions: CSV Load, Sort, Report
---------
Use the language of your choice to write a program that will read in data from a CSV file and then support 

repeated query operations on the people contained in the data set.  Each row in the CSV represents a

person, and the CSV contains the columns: id, first_name, last_name, age, github_account, 

date_of_third_grade_graduation. The id field will always be populated, but others are optional.

The two operations your program should support are as follows:

1. Given a last name, return a list of all person ids with that last name.

2. Return a list of all people in the dataset, sorted by age People with no age present in their data should sort to the end.

You can download a sample CSV file here.
