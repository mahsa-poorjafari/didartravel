class TourGroupsController < ApplicationController
  before_action :set_tour_group, only: [:show, :edit, :update, :destroy]

  # GET /tour_groups
  # GET /tour_groups.json
  def index
    @tour_groups = TourGroup.all
  end

  # GET /tour_groups/1
  # GET /tour_groups/1.json
  def show
  end

  # GET /tour_groups/new
  def new
    @tour_group = TourGroup.new
  end

  # GET /tour_groups/1/edit
  def edit
  end

  # POST /tour_groups
  # POST /tour_groups.json
  def create
    @tour_group = TourGroup.new(tour_group_params)

    respond_to do |format|
      if @tour_group.save
        format.html { redirect_to @tour_group, notice: 'Tour group was successfully created.' }
        format.json { render :show, status: :created, location: @tour_group }
      else
        format.html { render :new }
        format.json { render json: @tour_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tour_groups/1
  # PATCH/PUT /tour_groups/1.json
  def update
    respond_to do |format|
      if @tour_group.update(tour_group_params)
        format.html { redirect_to @tour_group, notice: 'Tour group was successfully updated.' }
        format.json { render :show, status: :ok, location: @tour_group }
      else
        format.html { render :edit }
        format.json { render json: @tour_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tour_groups/1
  # DELETE /tour_groups/1.json
  def destroy
    @tour_group.destroy
    respond_to do |format|
      format.html { redirect_to tour_groups_url, notice: 'Tour group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tour_group
      @tour_group = TourGroup.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tour_group_params
      params.require(:tour_group).permit(:title_fa, :title_en, :title_ar, :set_order)
    end
end
