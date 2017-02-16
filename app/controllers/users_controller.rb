class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  #skip_before_action :verify_authenticity_token

  # POST /users/login
  def login
    if User.find_by(email: params[:email])
      @user = User.find_by(email: params[:email])
      if params[:password] == @user.password
        render json: {:token => @user.fetch_token!, :userId => @user.id}
      else
        render json: {:error => "Invalid password"}
      end
    else render json: {:error => "Incorrect login"}
    end
  end

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    if User.find_by(email: params[:email])
      render json: {:error => "This email address already exists. Please choose another one."}
    else
      @user = User.new(user_params)
      if @user.save
        render json: {:token => @user.fetch_token!, :userId => @user.id}
      else
        render json: {:error => "Serveur indisponible"}
      end
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:email, :password, :firstName, :lastName, :address, :latitude, :longitude)
    end
  end
