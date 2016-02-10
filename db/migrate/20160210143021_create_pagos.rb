class CreatePagos < ActiveRecord::Migration
  def change
    create_table :pagos do |t|
      t.text :descripcion
      t.references :proyecto, index: true, foreign_key: true
      t.integer :neto
      t.integer :iva
      t.integer :factura
      t.references :cliente, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
