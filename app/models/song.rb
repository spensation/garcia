class Song < ApplicationRecord
	validates :title, :author_id, :genre_id, :album_id, presence: true

	belongs_to :author
	belongs_to :album
	belongs_to :genre
	has_and_belongs_to_many :users
end
