class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.text :nombre
      t.text :contacto
      t.text :fono
      t.text :email

      t.timestamps null: false
    end
  end
end
