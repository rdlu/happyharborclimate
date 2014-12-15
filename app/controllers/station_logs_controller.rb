class StationLogsController < ApplicationController
  before_action :set_station_log, only: [:show, :edit, :update, :destroy]

  # GET /station_logs
  # GET /station_logs.json
  def index
    @station_logs = StationLog.all
  end

  # GET /station_logs/1
  # GET /station_logs/1.json
  def show
  end

  # GET /station_logs/new
  def new
    #@station_log = StationLog.new
  end

  # GET /station_logs/1/edit
  def edit
  end

  # POST /station_logs
  # POST /station_logs.json
  def create
    # @station_log = StationLog.new(station_log_params)
    #
    # respond_to do |format|
    #   if @station_log.save
    #     format.html { redirect_to @station_log, notice: 'Station log was successfully created.' }
    #     format.json { render :show, status: :created, location: @station_log }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @station_log.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /station_logs/1
  # PATCH/PUT /station_logs/1.json
  def update
    # respond_to do |format|
    #   if @station_log.update(station_log_params)
    #     format.html { redirect_to @station_log, notice: 'Station log was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @station_log }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @station_log.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # DELETE /station_logs/1
  # DELETE /station_logs/1.json
  def destroy
    # @station_log.destroy
    # respond_to do |format|
    #   format.html { redirect_to station_logs_url, notice: 'Station log was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_station_log
      @station_log = StationLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def station_log_params
      params.require(:station_log).permit(:station_id, :normalized_timestamp, :pressure, :windspeed, :winddirection, :humidity, :dewpoint, :precipitation)
    end
end
