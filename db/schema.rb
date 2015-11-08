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

ActiveRecord::Schema.define(version: 20151031185705) do

  create_table "bolets", force: :cascade do |t|
    t.integer  "numboleta"
    t.date     "fecha"
    t.integer  "cliente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "bolets", ["cliente_id"], name: "index_bolets_on_cliente_id"

  create_table "clientes", force: :cascade do |t|
    t.string   "rut"
    t.string   "nombre"
    t.string   "apellido"
    t.string   "direccion"
    t.string   "correo"
    t.integer  "fono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipos", force: :cascade do |t|
    t.string   "codequipo"
    t.string   "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "repuesto_bolets", force: :cascade do |t|
    t.integer  "repuesto_id"
    t.integer  "bolet_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "repuesto_bolets", ["bolet_id"], name: "index_repuesto_bolets_on_bolet_id"
  add_index "repuesto_bolets", ["repuesto_id"], name: "index_repuesto_bolets_on_repuesto_id"

  create_table "repuestos", force: :cascade do |t|
    t.string   "codrepuesto"
    t.string   "nombrerepuesto"
    t.integer  "valorrepuesto"
    t.integer  "equipo_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "repuestos", ["equipo_id"], name: "index_repuestos_on_equipo_id"

  create_table "usuarios", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "cargo"
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true

end
