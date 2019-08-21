class SongsController < ApplicationController
	include ApplicationHelper
	def index
		@songs = Song.all
	end

	def show
		@user = current_user
		@song = Song.find(params[:id])
		@user_song = UserSong.new
	end
end
