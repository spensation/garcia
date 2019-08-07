# spec/factories/songs.rb

require 'faker'

FactoryBot.define do 
  factory :song do |f|
  	f.title { Faker::Music::GratefulDead.song }
	author
	album
	genre
  end
end

