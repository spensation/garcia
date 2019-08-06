# spec/factories/songs.rb

require 'faker'

FactoryBot.define do 
  factory :song do |f|
  	f.title { Faker::Music::GratefulDead.song }
	f.user_id { Faker::Number.between(from: 1, to: 10) }
	f.author_id { Faker::Number.between(from: 1, to: 10) }
	f.genre_id { Faker::Number.between(from: 1, to: 10) }
	f.album_id { Faker::Number.between(from: 1, to: 10) }
  end
end

