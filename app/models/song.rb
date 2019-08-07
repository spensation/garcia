class Song < ApplicationRecord
	validates :title, :author_id, :genre_id, :album_id, presence: true

	belongs_to :author
	belongs_to :album
	belongs_to :genre

	def author_name=(name)
		self.author = Author.find_or_create_by(name: name)
	end

	def author_name
		self.author ? self.author.name : nil
	end

	def album_name=(title)
		self.album = Album.find_or_create_by(title: title)
	end

	def album_name
		self.album ? self.album.title : nil
	end
end
