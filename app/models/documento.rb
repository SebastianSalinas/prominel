class Documento < ActiveRecord::Base


  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |product|
        csv << product.attributes.values_at(*column_names)
      end
    end
  end


def self.import(file)
    
    created_at = Time.now.strftime("%Y-%m-%d")

	CSV.foreach(file.path, headers: true) do |row|

		cheque = row[0]
		chequera = row[1]
		valor = row[2].tr('$','')
		proveedor = row[3]
		fecha = row[4]
		detalle = row[5]
		centrocosto = row[6]
		pagado = "1"
		plazo = row[7]
        sql = "INSERT INTO documentos (cheque, chequera, valor, proveedor, fecha, centrocosto, cobrado, plazo, created_at, updated_at) VALUES (" + cheque + "," + chequera + "," + valor + "," + proveedor + ",'" +  fecha  +  "'," + centrocosto + "," + pagado + "," + plazo +", '" + created_at +"', '" + created_at + "')"
        puts sql														
        res = ActiveRecord::Base.connection.execute(sql)

#    t.integer  "cheque"
#    t.integer  "chequera"
#    t.integer  "valor"
#    t.integer  "proveedor"
#    t.date     "fecha"
#    t.integer  "oocc"
#    t.integer  "factura"
#    t.integer  "centrocosto"
#    t.integer  "cobrado"
#    t.boolean  "nulo"
#    t.boolean  "nopago"
#    t.integer  "plazo"
#    t.datetime "created_at",  null: false
#    t.datetime "updated_at",  null: false
	end

end

end
