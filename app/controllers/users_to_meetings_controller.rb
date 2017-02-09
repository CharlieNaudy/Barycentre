class UsersToMeetingsController < ApplicationController
  before_action :set_users_to_meeting, only: [:show, :update, :destroy]

  # GET /users_to_meetings
  def index
    @users_to_meetings = UsersToMeeting.all

    render json: @users_to_meetings
  end

  # GET /users_to_meetings/1
  def show
    render json: @users_to_meeting
  end

  # POST /users_to_meetings
  def create
    @users_to_meeting = UsersToMeeting.new(users_to_meeting_params)

    if @users_to_meeting.save
      render json: @users_to_meeting, status: :created, location: @users_to_meeting
    else
      render json: @users_to_meeting.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users_to_meetings/1
  def update
    if @users_to_meeting.update(users_to_meeting_params)
      render json: @users_to_meeting
    else
      render json: @users_to_meeting.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users_to_meetings/1
  def destroy
    @users_to_meeting.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_to_meeting
      @users_to_meeting = UsersToMeeting.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def users_to_meeting_params
      params.require(:users_to_meeting).permit(:meeting_id, :user_id)
    end
end
