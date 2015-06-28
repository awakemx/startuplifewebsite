class AddDatosToStartupWeekends < ActiveRecord::Migration
  def change
    add_column :startup_weekends, :facebook, :string
    add_column :startup_weekends, :twitter, :string
    add_column :startup_weekends, :sitioweb, :string
    add_column :startup_weekends, :fecha, :date
    add_column :startup_weekends, :correo, :string
  end
end
