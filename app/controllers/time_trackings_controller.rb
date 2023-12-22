class TimeTrackingsController < ApplicationController
  before_action :set_time_tracking, only: %i[ show edit update destroy ]

  # GET /time_trackings or /time_trackings.json
  def index
    @time_trackings = TimeTracking.all
  end

  # GET /time_trackings/1 or /time_trackings/1.json
  def show
  end

  # GET /time_trackings/new
  def new
    @time_tracking = TimeTracking.new
  end

  # GET /time_trackings/1/edit
  def edit
  end

  # POST /time_trackings or /time_trackings.json
  def create
    @time_tracking = TimeTracking.new(time_tracking_params)

    respond_to do |format|
      if @time_tracking.save
        format.html { redirect_to time_tracking_url(@time_tracking), notice: "Time tracking was successfully created." }
        format.json { render :show, status: :created, location: @time_tracking }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @time_tracking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /time_trackings/1 or /time_trackings/1.json
  def update
    respond_to do |format|
      if @time_tracking.update(time_tracking_params)
        format.html { redirect_to time_tracking_url(@time_tracking), notice: "Time tracking was successfully updated." }
        format.json { render :show, status: :ok, location: @time_tracking }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @time_tracking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /time_trackings/1 or /time_trackings/1.json
  def destroy
    @time_tracking.destroy

    respond_to do |format|
      format.html { redirect_to time_trackings_url, notice: "Time tracking was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_time_tracking
      @time_tracking = TimeTracking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def time_tracking_params
      params.require(:time_tracking).permit(:task_id, :start_time, :end_time)
    end
end
