class ForecastProvidersController < ApplicationController
  before_action :set_forecast_provider, only: [:show, :edit, :update, :destroy]

  # GET /forecast_providers
  # GET /forecast_providers.json
  def index
    @forecast_providers = ForecastProvider.all
  end

  # GET /forecast_providers/1
  # GET /forecast_providers/1.json
  def show
  end

  # GET /forecast_providers/new
  def new
    #@forecast_provider = ForecastProvider.new
  end

  # GET /forecast_providers/1/edit
  def edit
  end

  # POST /forecast_providers
  # POST /forecast_providers.json
  def create
    # @forecast_provider = ForecastProvider.new(forecast_provider_params)
    #
    # respond_to do |format|
    #   if @forecast_provider.save
    #     format.html { redirect_to @forecast_provider, notice: 'Forecast provider was successfully created.' }
    #     format.json { render :show, status: :created, location: @forecast_provider }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @forecast_provider.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /forecast_providers/1
  # PATCH/PUT /forecast_providers/1.json
  def update
    # respond_to do |format|
    #   if @forecast_provider.update(forecast_provider_params)
    #     format.html { redirect_to @forecast_provider, notice: 'Forecast provider was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @forecast_provider }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @forecast_provider.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # DELETE /forecast_providers/1
  # DELETE /forecast_providers/1.json
  def destroy
    # @forecast_provider.destroy
    # respond_to do |format|
    #   format.html { redirect_to forecast_providers_url, notice: 'Forecast provider was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_forecast_provider
      @forecast_provider = ForecastProvider.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def forecast_provider_params
      params.require(:forecast_provider).permit(:name, :apitype, :apiparams, :provides)
    end
end
