class Api::UsersController < ApplicationController

	def create #signup
		@user = User.new(user_params)
		if @user.save
      jwt = Auth.issue({user: user.id})
      render json: {jwt: jwt}
		else
			render json: {error: "Couldn't create User"}
		end
	end

	def show    
		@user = User.find_by(id: params[:id])
		json: @user
	end

  def update
    @user = User.find_by(id: params[:id])

    if @user.update(user_params)
      render json: @user
    else
      render json: {error: "Could not update User."}
    end
  end




private

	def user_params
		params.require(:user).permit(:username, :email, :password, :valid_passport)
	end

end