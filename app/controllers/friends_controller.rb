# TODO : matching table friends/meetings

class FriendsController < ApplicationController
  before_action :set_friend, only: [:show, :update, :destroy]
  before_action :set_user, only: [:friends_user]

  # GET /friends
  # GET /friends.json
  def index
    @friends = Friend.all
    render json: @friends
  end

  # GET /friends/1
  # GET /friends/1.json
  def show
  end

  # GET /friends/users/1
  def friends_user
    @friends = @user.friends.all
    render json: {:friends => @friends}
  end


  # POST /friends
  # POST /friends.json
  def create
    @friend = Friend.new(friend_params)

    if @friend.save
      render :show, status: :created, location: @friend
    else
      render json: @friend.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /friends/1
  # PATCH/PUT /friends/1.json
  def update
    if @friend.update(friend_params)
      render :show, status: :ok, location: @friend
    else
      render json: @friend.errors, status: :unprocessable_entity
    end
  end

  # DELETE /friends/1
  # DELETE /friends/1.json
  def destroy
    @friend.destroy
    render json: {}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friend
      @friend = Friend.find(params[:id])
    end

    def set_user
      @user = User.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def friend_params
      params.require(:friend).permit(:name, :address, :user_id)
    end
  end
