RailsAdmin.config do |config|
  config.main_app_name = ['STARTUPLIFE', 'Admin']
  config.authenticate_with do
  config.label_methods << :nombre
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
  end

  config.model IdeaPresentada do
    edit do
      field :nombre
      field :emprendedor
      field :descripcion
      field :startup_weekend
    end
  end

  config.model StartupWeekend do
    object_label_method :titulo
    edit do
      field :titulo
      field :fecha do
        date_format :default
      end
      field :correo do
        label 'Correo de Contacto'
      end
      field :sitioweb do
        label 'Sitio Web'
      end
      field :twitter
      field :facebook
      field :logo
      field :descripcion
      field :organizadores
    end
  end
end
