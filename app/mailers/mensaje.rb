class Mensaje < ApplicationMailer
  default from: "Startup Life MX<no-reply@startuplife.com.mx>"
  def registro(registro)
    @registro = registro
    mail to: "ismael.marin@gmail.com", subject: 'La vida estartopera'
  end
end
