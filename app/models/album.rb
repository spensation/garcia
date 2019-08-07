class Album < ApplicationRecord
	validates :title, :label, presence: true
	has_many :songs
	has_many :genres, :through => :songs
end
