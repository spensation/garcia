class UserSongsController < ApplicationController
	def index
		@user_songs = Usersong.find_by(params[:user_id])
	end


	def create
		@user = current_user
		raise params.inspect

		@user_song = UserSong.new
		
	end
	
end
