class CreateRegistros < ActiveRecord::Migration
  def change
    create_table :registros do |t|
      t.string :nombre
      t.string :telefono
      t.string :email
      t.string :nombre_comunidad
      t.text :comentario

      t.timestamps null: false
    end
  end
end
