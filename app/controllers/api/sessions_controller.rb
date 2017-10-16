class Api::SessionsController < ApplicationController

	def new
		
	end

	def create #login
		user = User.find_by(username: params[:username])
		if user && user.authenticate(params[:password])
			render json: user
		else
			render json: {error: {message: "user doesn't exist"}}, status: 500
		end

	end

	def destroy
	end


end