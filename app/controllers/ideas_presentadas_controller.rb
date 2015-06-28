class IdeasPresentadasController < ApplicationController
  before_action :set_idea_presentada, only: [:show, :edit, :update, :destroy]

  def index
    @ideas_presentadas = IdeaPresentada.all
  end

  # GET /ideas_presentadas/1
  # GET /ideas_presentadas/1.json
  def show
  end

  # GET /ideas_presentadas/new
  def new
    @idea_presentada = IdeaPresentada.new
  end

  # GET /ideas_presentadas/1/edit
  def edit
  end

  # POST /ideas_presentadas
  # POST /ideas_presentadas.json
  def create
    @idea_presentada = IdeaPresentada.new(idea_presentada_params)

    respond_to do |format|
      if @idea_presentada.save
        format.html { redirect_to @idea_presentada, notice: 'Idea presentada was successfully created.' }
        format.json { render :show, status: :created, location: @idea_presentada }
      else
        format.html { render :new }
        format.json { render json: @idea_presentada.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ideas_presentadas/1
  # PATCH/PUT /ideas_presentadas/1.json
  def update
    respond_to do |format|
      if @idea_presentada.update(idea_presentada_params)
        format.html { redirect_to @idea_presentada, notice: 'Idea presentada was successfully updated.' }
        format.json { render :show, status: :ok, location: @idea_presentada }
      else
        format.html { render :edit }
        format.json { render json: @idea_presentada.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ideas_presentadas/1
  # DELETE /ideas_presentadas/1.json
  def destroy
    @idea_presentada.destroy
    respond_to do |format|
      format.html { redirect_to ideas_presentadas_url, notice: 'Idea presentada was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_idea_presentada
      @idea_presentada = IdeaPresentada.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def idea_presentada_params
      params.require(:idea_presentada).permit(:nombre, :descripcion, :emprendedor, :slug, :startup_weekend_id)
    end
end
