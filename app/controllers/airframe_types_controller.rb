class AirframeTypesController < ApplicationController
  before_action :set_airframe_type, only: [:show, :edit, :update, :destroy]
  before_action :authorise, unless: "Rails.env.test?"

  # GET /airframe_types
  # GET /airframe_types.json
  def index
    @airframe_types = AirframeType.all
  end

  # GET /airframe_types/1
  # GET /airframe_types/1.json
  def show
  end

  # GET /airframe_types/new
  def new
    @airframe_type = AirframeType.new
  end

  # GET /airframe_types/1/edit
  def edit
  end

  # POST /airframe_types
  # POST /airframe_types.json
  def create
    @airframe_type = AirframeType.new(airframe_type_params)

    respond_to do |format|
      if @airframe_type.save
        format.html { redirect_to @airframe_type, notice: 'Airframe type was successfully created.' }
        format.json { render :show, status: :created, location: @airframe_type }
      else
        format.html { render :new }
        format.json { render json: @airframe_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /airframe_types/1
  # PATCH/PUT /airframe_types/1.json
  def update
    respond_to do |format|
      if @airframe_type.update(airframe_type_params)
        format.html { redirect_to @airframe_type, notice: 'Airframe type was successfully updated.' }
        format.json { render :show, status: :ok, location: @airframe_type }
      else
        format.html { render :edit }
        format.json { render json: @airframe_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /airframe_types/1
  # DELETE /airframe_types/1.json
  def destroy
    @airframe_type.destroy
    respond_to do |format|
      format.html { redirect_to airframe_types_url, notice: 'Airframe type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_airframe_type
      @airframe_type = AirframeType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def airframe_type_params
      params.require(:airframe_type).permit(:name, :callsign, :category, :cost, :maintenance_hours, :image)
    end
end
