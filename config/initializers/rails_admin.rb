RailsAdmin.config do |config|
  config.authenticate_with do
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

  config.model StartupWeekend do
    edit do
      field :titulo
      field :fecha
      field :sitioweb do
        label 'Sitio Web'
      end
      field :twitter
      field :facebook
      field :logo
      field :descripcion, :froala do
        label 'Descripción'
      end
    end
  end
end
