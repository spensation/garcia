# spec/factories/songs.rb

FactoryBot.define do 
  factory :song do 
  	title = "Ripple"
	user_id = 1
	author_id = 1
	genre_id = 1
  end
end

# FactoryBot.define do 
#   factory :user do 
#   	username "Joe"
#     email "joe@gmail.com"
#     password "blah"
#   end
# end