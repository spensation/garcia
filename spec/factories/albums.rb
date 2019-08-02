# spec/factories/albums.rb

require 'faker'

FactoryBot.define do 
  factory :album do |f| 
  	f.title { Faker::Music.album }
	f.label { Faker::Name.last_name }
	f.release_year { Faker::Number.between(from: 1965, to: 1995) }
  end
end
