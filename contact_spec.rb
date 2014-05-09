require 'pry'
require_relative 'contact.rb'


describe Contact do

  hash = {"ID"=>"1",
           "First"=>"Matt",
           "Last"=>"Conway",
           "Age"=>"22",
           "GithubAcct"=>"wr0ngway",
           "Date of 3rd Grade Graduation"=>"6/25/01"}

  let(:person){Contact.new(hash)}

  describe '#id' do
    it 'returns the correct id' do
      expect(person.id).to eq(1)
    end
  end

  describe '#first_name' do
    it 'returns the correct first name' do
      expect(person.first_name).to eq("Matt")
    end
  end

  describe '#last_name' do
    it 'returns the correct last name' do
      expect(person.last_name).to eq("Conway")
    end
  end

  describe '#age' do
    it 'returns the correct age' do
      expect(person.age).to eq("22")
    end
  end

  describe '#github' do
    it 'returns the correct github account' do
      expect(person.github).to eq("wr0ngway")
    end
  end

  describe '#graduation_date' do
    it 'returns the correct graduation_date' do
      expect(person.graduation_date).to eq("6/25/01")
    end
  end

end
