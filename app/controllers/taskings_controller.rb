class TaskingsController < ApplicationController
  before_action :set_tasking, only: [:show, :edit, :update, :destroy]
  before_filter :authorise

  # GET /taskings
  # GET /taskings.json
  def index
    @taskings = Tasking.all
  end

  # GET /taskings/1
  # GET /taskings/1.json
  def show
  end

  # GET /taskings/new
  def new
    @tasking = Tasking.new
    @mission = params[:mission_id]
  end

  # GET /taskings/1/edit
  def edit
  end

  # POST /taskings
  # POST /taskings.json
  def create
    @tasking = Tasking.new(tasking_params)

    respond_to do |format|
      if @tasking.save
        format.html { redirect_to @tasking, notice: 'Tasking was successfully created.' }
        format.json { render :show, status: :created, location: @tasking }
      else
        format.html { render :new }
        format.json { render json: @tasking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /taskings/1
  # PATCH/PUT /taskings/1.json
  def update
    respond_to do |format|
      if @tasking.update(tasking_params)
        format.html { redirect_to @tasking, notice: 'Tasking was successfully updated.' }
        format.json { render :show, status: :ok, location: @tasking }
      else
        format.html { render :edit }
        format.json { render json: @tasking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taskings/1
  # DELETE /taskings/1.json
  def destroy
    @tasking.destroy
    respond_to do |format|
      format.html { redirect_to taskings_url, notice: 'Tasking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tasking
      @tasking = Tasking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tasking_params
      params.require(:tasking).permit(:callsign, :mission_id, :airframe_type_id, :number, :tasking_type, :notes, :channel, :primary_base_id, :alternate_base_id)
    end
end
