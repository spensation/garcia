class UserSongsController < ApplicationController
	def index
		@usersongs = Usersongs.find_by(params[:user_id])
	end

	def create
		@usersong = UserSong.new(usersong_params)
	end


	private
	def usersong_params
		params.require(:usersong).permit(:user_id, :song_id)
	end
end
