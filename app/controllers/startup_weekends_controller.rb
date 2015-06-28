class StartupWeekendsController < ApplicationController
  before_action :set_startup_weekend, only: [:show, :edit, :update, :destroy]

  # GET /startup_weekends
  # GET /startup_weekends.json
  def index
    @startup_weekends = StartupWeekend.all
  end

  # GET /startup_weekends/1
  # GET /startup_weekends/1.json
  def show
  end

  # GET /startup_weekends/new
  def new
    @startup_weekend = StartupWeekend.new
  end

  # GET /startup_weekends/1/edit
  def edit
  end

  # POST /startup_weekends
  # POST /startup_weekends.json
  def create
    @startup_weekend = StartupWeekend.new(startup_weekend_params)

    respond_to do |format|
      if @startup_weekend.save
        format.html { redirect_to @startup_weekend, notice: 'Startup weekend was successfully created.' }
        format.json { render :show, status: :created, location: @startup_weekend }
      else
        format.html { render :new }
        format.json { render json: @startup_weekend.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /startup_weekends/1
  # PATCH/PUT /startup_weekends/1.json
  def update
    respond_to do |format|
      if @startup_weekend.update(startup_weekend_params)
        format.html { redirect_to @startup_weekend, notice: 'Startup weekend was successfully updated.' }
        format.json { render :show, status: :ok, location: @startup_weekend }
      else
        format.html { render :edit }
        format.json { render json: @startup_weekend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /startup_weekends/1
  # DELETE /startup_weekends/1.json
  def destroy
    @startup_weekend.destroy
    respond_to do |format|
      format.html { redirect_to startup_weekends_url, notice: 'Startup weekend was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_startup_weekend
      @startup_weekend = StartupWeekend.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def startup_weekend_params
      params.require(:startup_weekend).permit(:titulo, :logo, :descripcion, :slug, :twitter, :facebook, :sitioweb, :fecha)
    end
end
