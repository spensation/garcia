class UserSongsController < ApplicationController
	def index
		@user_songs = Usersong.find_by(params[:user_id])
	end

	def new
		@user_song = UserSong.new
	end

	def create
		@user = User.find_by(params[:id])

		# raise params.inspect

		@user_song = UserSong.new(user_song_params)
		
	end
	
	private
    def user_song_params
      params.require(:user_song).permit(:user_id, :song_id)
    end
end