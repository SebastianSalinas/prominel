class AddClienteToProyecto < ActiveRecord::Migration
  def change
    add_reference :proyectos, :cliente, index: true, foreign_key: true
  end
end
