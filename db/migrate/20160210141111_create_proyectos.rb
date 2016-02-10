class CreateProyectos < ActiveRecord::Migration
  def change
    create_table :proyectos do |t|
      t.text :nombre
      t.integer :presupuesto
      t.references :obrero, index: true, foreign_key: true
      t.float :lat_ubicacion
      t.float :lon_ubicacion

      t.timestamps null: false
    end
  end
end
