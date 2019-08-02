# spec/factories/users.rb
require 'faker'

FactoryBot.define do 
  factory :user do |f|
  	f.username { Faker::Name.first_name }
	f.email { Faker::Internet.email }
	f.password_digest { Faker::Alphanumeric.alphanumeric(number: 10) } 
  end
end