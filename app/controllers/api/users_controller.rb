class Api::UsersController < ApplicationController

	def create
		@user = User.new(user_params)
		if @user.save
      jwt = Auth.issue({user: user.id})
      render json: {jwt: jwt}
		end
	end

	def show
		@user = User.find(params[:id])
		if @user
			render json: @user
		end
	end

	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			render json: @user
		end
	end

end


private

def user_params
	params.require(:user).permit(:username, :email, :password, :valid_passport)
end