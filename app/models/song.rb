class Song < ApplicationRecord
	belongs_to :author
	belongs_to :album
	has_and_belongs_to_many :users
end
