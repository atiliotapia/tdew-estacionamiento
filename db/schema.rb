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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111124212220) do

  create_table "alumnos", :force => true do |t|
    t.string   "codigo"
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estacionamientos", :force => true do |t|
    t.string   "local"
    t.integer  "numero_autos"
    t.integer  "capacidad_total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notificaciones", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
