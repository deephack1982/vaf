class JoiningFormsController < ApplicationController
  before_action :set_joining_form, only: [:show, :edit, :update, :destroy]

  # GET /joining_forms
  # GET /joining_forms.json
  def index
    @joining_forms = JoiningForm.all
  end

  # GET /joining_forms/1
  # GET /joining_forms/1.json
  def show
  end

  # GET /joining_forms/new
  def new
    @joining_form = JoiningForm.new
    @joining_form.pilot.build
  end

  # GET /joining_forms/1/edit
  def edit
  end

  # POST /joining_forms
  # POST /joining_forms.json
  def create
    @joining_form = JoiningForm.new(joining_form_params)

    respond_to do |format|
      if @joining_form.save
        format.html { redirect_to @joining_form, notice: 'Joining form was successfully created.' }
        format.json { render :show, status: :created, location: @joining_form }
      else
        format.html { render :new }
        format.json { render json: @joining_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /joining_forms/1
  # PATCH/PUT /joining_forms/1.json
  def update
    respond_to do |format|
      if @joining_form.update(joining_form_params)
        format.html { redirect_to @joining_form, notice: 'Joining form was successfully updated.' }
        format.json { render :show, status: :ok, location: @joining_form }
      else
        format.html { render :edit }
        format.json { render json: @joining_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /joining_forms/1
  # DELETE /joining_forms/1.json
  def destroy
    @joining_form.destroy
    respond_to do |format|
      format.html { redirect_to joining_forms_url, notice: 'Joining form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_joining_form
      @joining_form = JoiningForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def joining_form_params
      params.require(:joining_form).permit(:age, :english_proficiency, :available, :software, :years_experience, :interests, :notes, :pilot_attributes, softwares_ids:[])
    end
end
