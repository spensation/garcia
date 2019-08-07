class Author < ApplicationRecord
	validates :name, presence: true
	has_many :songs
	has_many :genres, :through => :songs
end
