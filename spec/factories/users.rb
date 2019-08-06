# spec/factories/users.rb

require 'faker'

FactoryBot.define do 
  factory :user do |f|
  	f.username { Faker::Name.first_name}
    f.email { Faker::Internet.email}
    f.password { Faker::Internet.password(min_length:8) }
  end
end