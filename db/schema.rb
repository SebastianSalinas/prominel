# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160210143021) do

  create_table "agentes", force: :cascade do |t|
    t.text     "nombre"
    t.text     "vendedor"
    t.text     "fono"
    t.text     "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.text     "nombre"
    t.text     "contacto"
    t.text     "fono"
    t.text     "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "documentos", force: :cascade do |t|
    t.integer  "cheque"
    t.integer  "chequera"
    t.integer  "valor"
    t.integer  "proveedor"
    t.date     "fecha"
    t.integer  "oocc"
    t.integer  "factura"
    t.integer  "centrocosto"
    t.integer  "cobrado"
    t.boolean  "nulo"
    t.boolean  "nopago"
    t.integer  "plazo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "obreros", force: :cascade do |t|
    t.text     "nombre"
    t.text     "email"
    t.date     "nacimiento"
    t.float    "lat_hogar"
    t.float    "lon_hogar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pagos", force: :cascade do |t|
    t.text     "descripcion"
    t.integer  "proyecto_id"
    t.integer  "neto"
    t.integer  "iva"
    t.integer  "factura"
    t.integer  "cliente_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "pagos", ["cliente_id"], name: "index_pagos_on_cliente_id"
  add_index "pagos", ["proyecto_id"], name: "index_pagos_on_proyecto_id"

  create_table "proyectos", force: :cascade do |t|
    t.text     "nombre"
    t.integer  "presupuesto"
    t.integer  "obrero_id"
    t.float    "lat_ubicacion"
    t.float    "lon_ubicacion"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "cliente_id"
  end

  add_index "proyectos", ["cliente_id"], name: "index_proyectos_on_cliente_id"
  add_index "proyectos", ["obrero_id"], name: "index_proyectos_on_obrero_id"

end
