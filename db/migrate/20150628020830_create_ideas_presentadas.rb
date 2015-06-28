class CreateIdeasPresentadas < ActiveRecord::Migration
  def change
    create_table :ideas_presentadas do |t|
      t.string :nombre
      t.text :descripcion
      t.string :emprendedor
      t.string :slug

      t.timestamps null: false
    end
    add_index :ideas_presentadas, :slug, unique: true
  end
end
