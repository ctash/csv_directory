require 'pry'
# Make sure to navigate to spec folder and run rspec command
require_relative '../models/contact_directory.rb'


describe ContactDirectory do

  let(:phone_book){ContactDirectory.new('testdata.csv')}
  let(:bad_phone_book){ContactDirectory.new('badtestdata.csv')}

  describe '#load_from_csv' do
    it 'Open and save contents to a hash' do
      expect(phone_book.people.count).to eq(7)
    end

    it "Raises an error if file does not exist" do
      lambda {bad_phone_book}.should raise_error
    end

  end

  describe '#filtered_by_last_name' do
    it "Finds one record" do
      phone_book.command = "Conway"
      expect(phone_book.filtered_by_last_name.first.last_name).to eq("Conway")
      expect(phone_book.filtered_by_last_name.count).to eq(1)
    end

    it "Finds multiple records" do
      phone_book.command = "Robiner"
      expect(phone_book.filtered_by_last_name.first.last_name).to eq("Robiner")
      expect(phone_book.filtered_by_last_name.count).to eq(3)
    end

  end

  describe '#sort_by_age' do
    it "returns all contacts ordered by age" do
      expect(phone_book.sort_by_age.first.age).to eq("76")
      expect(phone_book.sort_by_age.first.age).to_not eq("22")
    end

    it 'has nil at end of list' do
      expect(phone_book.sort_by_age.last.age).to eq(nil)
      expect(phone_book.sort_by_age.last.age).to_not eq("50")
    end
  end

end


