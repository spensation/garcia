# spec/factories/songs.rb

require 'faker'

FactoryBot.define do 
  factory :song do |f|
  	f.title { Faker::Music::GratefulDead.song }
	user
	author
	album
  end
end

