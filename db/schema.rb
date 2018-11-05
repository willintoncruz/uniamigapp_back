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

ActiveRecord::Schema.define(version: 20181105220415) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actividad_personas", force: :cascade do |t|
    t.integer "persona_id"
    t.integer "actividad_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "actividads", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.integer "persona_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personas", force: :cascade do |t|
    t.string "nombres"
    t.string "apellidos"
    t.string "tipo_documento"
    t.string "num_documento"
    t.string "tipo_persona"
    t.string "telefono"
    t.integer "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tareas", force: :cascade do |t|
    t.bigint "usuario_id"
    t.string "titulo"
    t.boolean "finalizada"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "index_tareas_on_usuario_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "tareas", "usuarios"
end
