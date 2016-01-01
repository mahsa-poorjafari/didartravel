# encoding: UTF-8
class NewsAndVentsController < ApplicationController
  before_filter :check_autentication, only: [:edit, :update, :destroy]
  before_action :set_news_and_vent, only: [:show, :edit, :update, :destroy]

  # GET /news_and_vents
  # GET /news_and_vents.json
  def index
    @news_and_vents = NewsAndVent.all
  end

  # GET /news_and_vents/1
  # GET /news_and_vents/1.json
  def show
  end

  # GET /news_and_vents/new
  def new
    @news_and_vent = NewsAndVent.new
  end

  # GET /news_and_vents/1/edit
  def edit
  end

  # POST /news_and_vents
  # POST /news_and_vents.json
  def create
    @news_and_vent = NewsAndVent.new(news_and_vent_params)

    respond_to do |format|
      if @news_and_vent.save
        format.html { redirect_to @news_and_vent, notice: 'خبر جدید ثبت شد.' }
        format.json { render :show, status: :created, location: @news_and_vent }
      else
        format.html { render :new }
        format.json { render json: @news_and_vent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /news_and_vents/1
  # PATCH/PUT /news_and_vents/1.json
  def update
    respond_to do |format|
      if @news_and_vent.update(news_and_vent_params)
        format.html { redirect_to @news_and_vent, notice: 'ویرایش اطلاعات انجام شد.' }
        format.json { render :show, status: :ok, location: @news_and_vent }
      else
        format.html { render :edit }
        format.json { render json: @news_and_vent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /news_and_vents/1
  # DELETE /news_and_vents/1.json
  def destroy
    @news_and_vent.destroy
    respond_to do |format|
      format.html { redirect_to news_and_vents_url, notice: 'News and vent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news_and_vent
      @news_and_vent = NewsAndVent.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def news_and_vent_params
      params.require(:news_and_vent).permit(:title_fa, :title_en, :title_ar, :text_fa, :text_en, :text_ar, :source, :image, :web_link)
    end
end
