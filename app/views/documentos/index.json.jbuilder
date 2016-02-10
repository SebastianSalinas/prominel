json.array!(@documentos) do |documento|
  json.extract! documento, :id, :cheque, :chequera, :valor, :proveedor, :fecha, :oocc, :factura, :centrocosto, :cobrado, :nulo, :nopago, :plazo
  json.url documento_url(documento, format: :json)
end
