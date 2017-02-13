class AuthenticationController < ApplicationController
  def create
    if user.valid_password? params[:password]
      render json: { token: user.fetch_token! }, status: :ok
    else
      render json: {}, status: :unauthorized
    end
  end

  private

  def user 
    @user ||= User.find_by_login params[:login]
  end
end