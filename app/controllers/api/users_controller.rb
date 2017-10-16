class Api::UsersController < ApplicationController

	def new

	end

	def create
		params.inspect
		user = User.new(user_params)
		if user.save
			render json: user
		else
			render json: {error: user.errors.full_messages}, status: 500
		end
	end

	def show

	end

	def update

	end




private

	def user_params
		params.require(:user).permit(:username, :email, :password, :valid_passport)
	end

end