class MeetingsMatchingTablesController < ApplicationController
  before_action :set_meetings_matching_table, only: [:show, :update, :destroy]

  # GET /meetings_matching_tables
  def index
    @meetings_matching_tables = MeetingsMatchingTable.all

    render json: @meetings_matching_tables
  end

  # GET /meetings_matching_tables/1
  def show
    render json: @meetings_matching_table
  end

  # POST /meetings_matching_tables
  def create
    @meetings_matching_table = MeetingsMatchingTable.new(meetings_matching_table_params)

    if @meetings_matching_table.save
      render json: @meetings_matching_table, status: :created, location: @meetings_matching_table
    else
      render json: @meetings_matching_table.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /meetings_matching_tables/1
  def update
    if @meetings_matching_table.update(meetings_matching_table_params)
      render json: @meetings_matching_table
    else
      render json: @meetings_matching_table.errors, status: :unprocessable_entity
    end
  end

  # DELETE /meetings_matching_tables/1
  def destroy
    @meetings_matching_table.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meetings_matching_table
      @meetings_matching_table = MeetingsMatchingTable.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def meetings_matching_table_params
      params.require(:meetings_matching_table).permit(:meeting_id, :user_id)
    end
  end
