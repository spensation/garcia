FactoryBot.define do
	factory :user do
		username { Faker::Name.first_name }
		email { Faker::Internet.email }
		password_digest { Faker::Alphanumeric.alphanumeric(number: 10) } 
	end

	factory :song do
		title { Faker::Music::GratefulDead.song }
		user_id { Faker::Number.between(from: 1, to: 4) }
		author_id { Faker::Number.between(from: 1, to: 4) }
		genre_id { Faker::Number.between(from: 1, to: 4) }
	end

	factory :genre do
		name { Faker::Music.genre }
	end

	factory :author do
		name { Faker::Name.name }
	end

	factory :album do 
		title { Faker::Music.album }
		label { Faker::Name.last_name }
		release_year { Faker::Number.between(from: 1965, to: 1995) }
	end
end
