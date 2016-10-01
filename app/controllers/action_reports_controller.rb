class ActionReportsController < ApplicationController
  before_action :set_action_report, only: [:show, :edit, :update, :destroy]
  before_filter :authorise

  # GET /action_reports
  # GET /action_reports.json
  def index
    @action_reports = ActionReport.all
  end

  # GET /action_reports/1
  # GET /action_reports/1.json
  def show
  end

  # GET /action_reports/new
  def new
    @action_report = ActionReport.new
    @mission = params[:mission_id]

  end

  # GET /action_reports/1/edit
  def edit
  end

  # POST /action_reports
  # POST /action_reports.json
  def create
    @action_report = ActionReport.new(action_report_params)

    respond_to do |format|
      if @action_report.save
        format.html { redirect_to @action_report, notice: 'Action report was successfully created.' }
        format.json { render :show, status: :created, location: @action_report }
      else
        format.html { render :new }
        format.json { render json: @action_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /action_reports/1
  # PATCH/PUT /action_reports/1.json
  def update
    respond_to do |format|
      if @action_report.update(action_report_params)
        format.html { redirect_to @action_report, notice: 'Action report was successfully updated.' }
        format.json { render :show, status: :ok, location: @action_report }
      else
        format.html { render :edit }
        format.json { render json: @action_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /action_reports/1
  # DELETE /action_reports/1.json
  def destroy
    @action_report.destroy
    respond_to do |format|
      format.html { redirect_to action_reports_url, notice: 'Action report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_action_report
      @action_report = ActionReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def action_report_params
      params.require(:action_report).permit(:pilot_id, :airframe_id, :tasking_id, :hours, :takeoffs, :landings, :outcome, :aa_kills, :ag_kills, :notes, :status, :position)
    end
end
