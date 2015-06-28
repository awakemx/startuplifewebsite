class CreateStartupWeekends < ActiveRecord::Migration
  def change
    create_table :startup_weekends do |t|
      t.string :titulo
      t.string :logo
      t.text :descripcion
      t.string :slug

      t.timestamps null: false
    end
    add_index :startup_weekends, :slug, unique: true
  end
end
