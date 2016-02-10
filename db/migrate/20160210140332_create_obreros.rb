class CreateObreros < ActiveRecord::Migration
  def change
    create_table :obreros do |t|
      t.text :nombre
      t.text :email
      t.date :nacimiento
      t.float :lat_hogar
      t.float :lon_hogar

      t.timestamps null: false
    end
  end
end
