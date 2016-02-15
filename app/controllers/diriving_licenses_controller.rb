class DirivingLicensesController < ApplicationController
  before_filter :check_autentication, only: [:edit, :update, :destroy]
  before_action :set_diriving_license, only: [:show, :edit, :update, :destroy]

  # GET /diriving_licenses
  # GET /diriving_licenses.json
  def index
    @diriving_licenses = DirivingLicense.all
  end

  # GET /diriving_licenses/1
  # GET /diriving_licenses/1.json
  def show
  end

  # GET /diriving_licenses/new
  def new
    @diriving_license = DirivingLicense.new
  end

  # GET /diriving_licenses/1/edit
  def edit
  end

  # POST /diriving_licenses
  # POST /diriving_licenses.json
  def create
    @diriving_license = DirivingLicense.new(diriving_license_params)

    respond_to do |format|
      if @diriving_license.save
        format.html { redirect_to @diriving_license, notice: 'Diriving license was successfully created.' }
        format.json { render :show, status: :created, location: @diriving_license }
      else
        format.html { render :new }
        format.json { render json: @diriving_license.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diriving_licenses/1
  # PATCH/PUT /diriving_licenses/1.json
  def update
    respond_to do |format|
      if @diriving_license.update(diriving_license_params)
        format.html { redirect_to @diriving_license, notice: 'Diriving license was successfully updated.' }
        format.json { render :show, status: :ok, location: @diriving_license }
      else
        format.html { render :edit }
        format.json { render json: @diriving_license.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diriving_licenses/1
  # DELETE /diriving_licenses/1.json
  def destroy
    @diriving_license.destroy
    respond_to do |format|
      format.html { redirect_to diriving_licenses_url, notice: 'Diriving license was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diriving_license
      @diriving_license = DirivingLicense.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diriving_license_params
      params.require(:diriving_license).permit(:title_fa, :title_en, :title_ar, :text_fa, :text_ar, :text_en, :image)
    end
end
