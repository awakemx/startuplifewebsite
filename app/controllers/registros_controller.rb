class RegistrosController < ApplicationController
  def new
    @registro = Registro.new
  end

  def create
    @registro = Registro.new(registro_params)

    respond_to do |format|
      if @registro.save
        Mensaje.registro(@registro).deliver
        format.html { redirect_to root_path, notice: 'Gracias por la información' }
        format.json { render :show, status: :created, location: @registro }
      else
        format.html { render :new }
        format.json { render json: @registro.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def registro_params
    params.require(:registro).permit(:nombre, :telefono, :email, :nombre_comunidad, :comentario)
  end
end
