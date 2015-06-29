# Preview all emails at http://localhost:3000/rails/mailers/mensaje
class MensajePreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/mensaje/registro
  def registro
    Mensaje.registro
  end

end
