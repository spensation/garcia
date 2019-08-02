# spec/factories/songs.rb

require 'faker'

FactoryBot.define do 
  factory :song do |f| 
  	f.title { Faker::Music::GratefulDead.song }
	f.user_id { Faker::Number.between(from: 1, to: 4) }
	f.author_id { Faker::Number.between(from: 1, to: 4) }
	f.genre_id { Faker::Number.between(from: 1, to: 4) }
  end
end