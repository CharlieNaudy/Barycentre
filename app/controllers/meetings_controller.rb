# TODO: @meeting_id multiples (dans get_meetings)

class MeetingsController < ApplicationController
  before_action :set_meeting, only: [:show, :update, :destroy]
  #before_action :set_user, only: [:get_meetings]
  #skip_before_action :verify_authenticity_token

  # GET /meetings
  def index
    @meetings = Meeting.all

    render json: @meetings
  end

  # GET /meetings/user/1
  def get_meetings
    @meeting_id = MeetingsMatchingTable.find_by(user_id: params[:id]).meeting_id
    @meetings = [Meeting.find(@meeting_id)]
    render json: {:meetings => @meetings}
  end

  # GET /meetings/1
  def show
    render json: @meeting
  end

  # POST /meetings
  def create
    @meeting = Meeting.new(meeting_params)

    if @meeting.save
      render json: @meeting, status: :created, location: @meeting
    else
      render json: @meeting.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /meetings/1
  def update
    if @meeting.update(meeting_params)
      render json: @meeting
    else
      render json: @meeting.errors, status: :unprocessable_entity
    end
  end

  # DELETE /meetings/1
  def destroy
    @meeting.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meeting
      @meeting = Meeting.find(params[:id])
    end

    def set_user
      @user = User.find(params[:id])
    end


    # Only allow a trusted parameter "white list" through.
    def meeting_params
      params.require(:meeting).permit(:name, :date, :address, :latitude, :longitude)
    end
end
