class User < ApplicationRecord
	has_secure_password
	validates :username, uniqueness: true
 	validates :email, uniqueness: true

	has_and_belongs_to_many :songs
end
