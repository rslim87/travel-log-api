class Api::SessionsController < ApplicationController

  def create #login
    # find the user in the database (nil if the username is false)
    @user = User.find_by(username: params[:username])
    # if the user is nil the username is invalid and the first condition will fail
    if @user && @user.authenticate(params[:password])
      # if the user is logged in return a useable JWT token
     	jwt = Auth.issue({id: @user.id, username: @user.username, email: @user.email})
      render json: { jwt: jwt }
    else
      render json: {
        error: "Username and password are incorrect",
      }
    end
  end

end