# encoding: UTF-8
class EmploymentsController < ApplicationController
  before_filter :check_autentication, only: [:edit, :update, :destroy]
  before_action :set_employment, only: [:show, :edit, :update, :destroy]

  # GET /employments
  # GET /employments.json
  def index
    @employments = Employment.order(" created_at desc")
  end

  # GET /employments/1
  # GET /employments/1.json
  def show
    
  end

  # GET /employments/new
  def new
    @employment = Employment.new
  end

  # GET /employments/1/edit
  def edit
  end

  # POST /employments
  # POST /employments.json
  def create
    @employment = Employment.new(employment_params)

    respond_to do |format|
      if @employment.save
        format.html { redirect_to @employment, notice: 'Employment was successfully created.' }
        format.json { render :show, status: :created, location: @employment }
      else
        format.html { render :new }
        format.json { render json: @employment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employments/1
  # PATCH/PUT /employments/1.json
  def update
    respond_to do |format|
      if @employment.update(employment_params)
        format.html { redirect_to @employment, notice: 'Employment was successfully updated.' }
        format.json { render :show, status: :ok, location: @employment }
      else
        format.html { render :edit }
        format.json { render json: @employment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employments/1
  # DELETE /employments/1.json
  def destroy
    @employment.destroy
    respond_to do |format|
      format.html { redirect_to employments_url, notice: 'درخواست شما با موفقیت ثبت گردید.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employment
      @employment = Employment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employment_params
      params.require(:employment).permit(:first_name, :last_name, :father_name, :father_job,
       :birthdate, :id_code, :source_place, :marriage_status, :education, :address, :phonenumber, 
       :mobile, :ex_job_start_date, :ex_job_ended_date, :ex_job_carrer, :ex_job_address, :ex_job_phone, 
       :left_ex_job_reason, :any_course, :your_En_level, :tender_task, :choose_job_reason, :Your_abilities,
       :salary_amount, :first_reagent_fullname, :fg_job, :fg_phone, :fg_address, :Second_reagent_fullname,
       :sg_job, :sg_phone, :sg_address, :full_time, :put_guaranty, :email, :person_image)
    end
end
