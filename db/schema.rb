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

ActiveRecord::Schema.define(version: 20190509143926) do

  create_table "alojamientos", force: :cascade do |t|
    t.string "tipo"
    t.string "descripcion"
    t.string "reglas"
    t.string "imagen"
    t.string "sitios_interes"
    t.string "clasificacion"
    t.float "calificacion"
    t.string "cercano"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "arrendatarios", force: :cascade do |t|
    t.string "nombre"
    t.string "telefono"
    t.string "correo"
    t.string "email"
    t.string "cc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "alojamiento_id"
    t.index ["alojamiento_id"], name: "index_arrendatarios_on_alojamiento_id"
  end

  create_table "estudiantes", force: :cascade do |t|
    t.string "nombre"
    t.string "nacionalidad"
    t.string "telefono"
    t.string "email"
    t.string "cc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "eventos", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.date "fecha"
    t.string "publico"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
