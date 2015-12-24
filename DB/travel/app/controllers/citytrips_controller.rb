class CitytripsController < ApplicationController
  before_action :set_citytrip, only: [:show, :edit, :update, :destroy]

  # GET /citytrips
  # GET /citytrips.json
  def index
    @citytrips = Citytrip.all
  end

  # GET /citytrips/1
  # GET /citytrips/1.json
  def show
  end

  # GET /citytrips/new
  def new
    @citytrip = Citytrip.new
  end

  # GET /citytrips/1/edit
  def edit
  end

  # POST /citytrips
  # POST /citytrips.json
  def create
    @citytrip = Citytrip.new(citytrip_params)

    respond_to do |format|
      if @citytrip.save
        format.html { redirect_to @citytrip, notice: 'Citytrip was successfully created.' }
        format.json { render :show, status: :created, location: @citytrip }
      else
        format.html { render :new }
        format.json { render json: @citytrip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /citytrips/1
  # PATCH/PUT /citytrips/1.json
  def update
    respond_to do |format|
      if @citytrip.update(citytrip_params)
        format.html { redirect_to @citytrip, notice: 'Citytrip was successfully updated.' }
        format.json { render :show, status: :ok, location: @citytrip }
      else
        format.html { render :edit }
        format.json { render json: @citytrip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /citytrips/1
  # DELETE /citytrips/1.json
  def destroy
    @citytrip.destroy
    respond_to do |format|
      format.html { redirect_to citytrips_url, notice: 'Citytrip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_citytrip
      @citytrip = Citytrip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def citytrip_params
      params.require(:citytrip).permit(:name, :source, :destenation, :price, :city_id)
    end
end
