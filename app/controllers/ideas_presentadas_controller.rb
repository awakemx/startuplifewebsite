class IdeasPresentadasController < ApplicationController
  def index
    @ideas_presentadas = IdeaPresentada.all
  end

  def show
    @idea_presentada = IdeaPresentada.friendly.find(params[:id])
  end
end
