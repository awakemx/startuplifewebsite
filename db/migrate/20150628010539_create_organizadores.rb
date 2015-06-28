class CreateOrganizadores < ActiveRecord::Migration
  def change
    create_table :organizadores do |t|
      t.string :nombre
      t.string :imagen
      t.references :startup_weekend, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
