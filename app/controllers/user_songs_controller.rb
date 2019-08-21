class UserSongsController < ApplicationController
	def index
		@user_songs = UserSong.includes(:user => current_user)
	end

	def new
		@user_song = UserSong.new
	end

	def create
		# raise params.inspect
		@user = User.find_by(params[:id])
		@song = Song.find_by(params[:id])

		# raise params.inspect

		@user_song = UserSong.new(user_song_params)

		redirect_to user_song_path(@user)
		
	end

	def show
		@user = current_user.username
		
		@user_song = UserSong.find(params[:id])
	end
	
	private
    def user_song_params
      params.require(:user_song).permit(:user_id, :song_id)
    end
end
