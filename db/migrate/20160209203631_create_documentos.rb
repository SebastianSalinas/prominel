class CreateDocumentos < ActiveRecord::Migration
  def change
    create_table :documentos do |t|
      t.integer :cheque
      t.integer :chequera
      t.integer :valor
      t.integer :proveedor
      t.date :fecha
      t.integer :oocc
      t.integer :factura
      t.integer :centrocosto
      t.integer :cobrado
      t.boolean :nulo
      t.boolean :nopago
      t.integer :plazo

      t.timestamps null: false
    end
  end
end
