# spec/factories/authors.rb

require 'faker'

FactoryBot.define do 
  factory :author do |f|
  	f.name { Faker::Name.name }
  end
end