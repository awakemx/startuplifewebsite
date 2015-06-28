class AddDatosToStartupWeekends < ActiveRecord::Migration
  def change
    add_column :startup_weekends, :status, :integer
    add_column :startup_weekends, :facebook, :string
    add_column :startup_weekends, :twitter, :string
    add_column :startup_weekends, :sitioweb, :string
  end
end
