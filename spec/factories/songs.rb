# spec/factories/songs.rb

require 'faker'

FactoryBot.define do 
  factory :song do |f|
  	f.title { Faker::Music::GratefulDead.song }
	f.user_id { Faker::Number.digit}
	f.author_id { Faker::Number.digit}
	f.genre_id { Faker::Number.digit}
  end
end

