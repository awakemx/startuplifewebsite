class StartupsController < ApplicationController
  before_action :set_startup, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  def index
    @startups = Startup.all
  end

  def show
  end

  # GET /startups/new
  def new
    @startup = Startup.new
  end

  # GET /startups/1/edit
  def edit
  end

  # POST /startups
  # POST /startups.json
  def create
    @startup = Startup.new(startup_params)
    @startup.user_id = current_user.id

    respond_to do |format|
      if @startup.save
        format.html { redirect_to [@startup_weekend, @startup], notice: 'Startup was successfully created.' }
        format.json { render :show, status: :created, location: [@startup_weekend, @startup] }
      else
        format.html { render :new }
        format.json { render json: @startup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /startups/1
  # PATCH/PUT /startups/1.json
  def update
    respond_to do |format|
      if @startup.update(startup_params)
        format.html { redirect_to [@startup_weekend, @startup], notice: 'Startup was successfully updated.' }
        format.json { render :show, status: :created, location: [@startup_weekend, @startup] }
      else
        format.html { render :edit }
        format.json { render json: @startup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /startups/1
  # DELETE /startups/1.json
  def destroy
    @startup.destroy
    respond_to do |format|
      format.html { redirect_to startup_weekend_startups_url, notice: 'Startup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_startup
      @startup = Startup.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def startup_params
      params.require(:startup).permit(:user_id, :nombre, :descripcion, :pagina, :slug, :startup_weekend_id)
    end
end
