class CreateAgentes < ActiveRecord::Migration
  def change
    create_table :agentes do |t|
      t.text :nombre
      t.text :vendedor
      t.text :fono
      t.text :email

      t.timestamps null: false
    end
  end
end
