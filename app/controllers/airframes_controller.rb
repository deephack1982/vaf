class AirframesController < ApplicationController
  before_action :set_airframe, only: [:show, :edit, :update, :destroy]
  before_filter :authorise, unless: "Rails.env.test?"

  # GET /airframes
  # GET /airframes.json
  def index
    @airframes = Airframe.all
  end

  # GET /airframes/1
  # GET /airframes/1.json
  def show
  end

  # GET /airframes/new
  def new
    @airframe = Airframe.new
  end

  # GET /airframes/1/edit
  def edit
  end

  # POST /airframes
  # POST /airframes.json
  def create
    @airframe = Airframe.new(airframe_params)

    respond_to do |format|
      if @airframe.save
        format.html { redirect_to @airframe, notice: 'Airframe was successfully created.' }
        format.json { render :show, status: :created, location: @airframe }
      else
        format.html { render :new }
        format.json { render json: @airframe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /airframes/1
  # PATCH/PUT /airframes/1.json
  def update
    respond_to do |format|
      if @airframe.update(airframe_params)
        format.html { redirect_to @airframe, notice: 'Airframe was successfully updated.' }
        format.json { render :show, status: :ok, location: @airframe }
      else
        format.html { render :edit }
        format.json { render json: @airframe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /airframes/1
  # DELETE /airframes/1.json
  def destroy
    @airframe.destroy
    respond_to do |format|
      format.html { redirect_to airframes_url, notice: 'Airframe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_airframe
      @airframe = Airframe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def airframe_params
      params.require(:airframe).permit(:airframe_type_id, :tail_number, :location, :squadron_id, :hours, :condition)
    end
end
