class ForecastLogsController < ApplicationController
  before_action :set_forecast_log, only: [:show, :edit, :update, :destroy]

  # GET /forecast_logs
  # GET /forecast_logs.json
  def index
    @forecast_logs = ForecastLog.all
  end

  # GET /forecast_logs/1
  # GET /forecast_logs/1.json
  def show
  end

  # GET /forecast_logs/new
  def new
    puts "Disabled"
    #@forecast_log = ForecastLog.new
  end

  # GET /forecast_logs/1/edit
  def edit
  end

  # POST /forecast_logs
  # POST /forecast_logs.json
  def create
    puts "Disabled"
    #
    # @forecast_log = ForecastLog.new(forecast_log_params)
    #
    # respond_to do |format|
    #   if @forecast_log.save
    #     format.html { redirect_to @forecast_log, notice: 'Forecast log was successfully created.' }
    #     format.json { render :show, status: :created, location: @forecast_log }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @forecast_log.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /forecast_logs/1
  # PATCH/PUT /forecast_logs/1.json
  def update
    # respond_to do |format|
    #   if @forecast_log.update(forecast_log_params)
    #     format.html { redirect_to @forecast_log, notice: 'Forecast log was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @forecast_log }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @forecast_log.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # DELETE /forecast_logs/1
  # DELETE /forecast_logs/1.json
  def destroy
    # @forecast_log.destroy
    # respond_to do |format|
    #   format.html { redirect_to forecast_logs_url, notice: 'Forecast log was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_forecast_log
      @forecast_log = ForecastLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def forecast_log_params
      params.require(:forecast_log).permit(:forecast_provider_id, :day, :temperature_max, :temperature_min, :precipitation, :pressure)
    end
end
