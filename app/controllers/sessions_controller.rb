class SessionsController < ApplicationController
	include SessionsHelper

	def new
	
	end
	def create
	 user = User.find_by(email: params[:session][:email])
	 if user && user.authenticate(params[:session][:password])
	 	flash.now[:notice] = "#{user.name}, you are now logged in!"
	 	log_in(user)
	 	render :new
	 	
	 else
	 	flash.now[:notice] = "Invalid email/password"
	 	render :new
	 end
	end
	
	def destroy
		log_out
		render :new
		

	end

end
