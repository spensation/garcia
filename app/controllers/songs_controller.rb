class SongsController < ApplicationController
	include ApplicationHelper
	def index
		@songs = Song.all
	end

	def show
		@song = Song.find(params[:id])
		@user_song = UserSong.new
	end
end
