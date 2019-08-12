class SessionsController < ApplicationController
	def create
	  user = User.find_by(email: params[:session][:email])
      if user && user.authenticate(params[:session][:password])
        session[:user_id] = user.id

        redirect_to songs_path
      else
        flash[:notice] = 'Invalid email/password combination'
        render 'new'
      end
	end

	def destroy
		log_out

		redirect_to songs_path
	end
end
