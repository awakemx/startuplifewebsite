class CreateStartups < ActiveRecord::Migration
  def change
    create_table :startups do |t|
      t.references :user, index: true, foreign_key: true
      t.string :nombre
      t.string :logo
      t.text :descripcion
      t.string :pagina
      t.string :slug
      t.references :startup_weekend, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :startups, :slug, unique: true
  end
end
