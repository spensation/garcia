# spec/factories/genres.rb

require 'faker'

FactoryBot.define do 
  factory :genre do |f|
  	f.name { Faker::Music.genre }
  end
end