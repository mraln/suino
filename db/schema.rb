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

ActiveRecord::Schema.define(version: 20140805032603) do

  create_table "matrizes", force: true do |t|
    t.string   "numid"
    t.string   "nome"
    t.string   "raca"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "partos", force: true do |t|
    t.integer  "matriz_id"
    t.integer  "reprodutor_id"
    t.date     "cobertura"
    t.date     "previsao_parto"
    t.date     "data_parto"
    t.integer  "qtde_filhos"
    t.integer  "mortalidade"
    t.integer  "total_desmamado"
    t.date     "data_desmame"
    t.date     "retorno_cio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "partos", ["matriz_id"], name: "index_partos_on_matriz_id", using: :btree
  add_index "partos", ["reprodutor_id"], name: "index_partos_on_reprodutor_id", using: :btree

  create_table "reprodutores", force: true do |t|
    t.string   "numid"
    t.string   "nome"
    t.string   "raca"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
