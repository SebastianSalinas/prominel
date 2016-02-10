json.array!(@pagos) do |pago|
  json.extract! pago, :id, :descripcion, :proyecto_id, :neto, :iva, :factura, :cliente_id
  json.url pago_url(pago, format: :json)
end
