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

ActiveRecord::Schema.define(version: 20150628021424) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ideas_presentadas", force: :cascade do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.string   "emprendedor"
    t.string   "slug"
    t.integer  "startup_weekend_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "ideas_presentadas", ["slug"], name: "index_ideas_presentadas_on_slug", unique: true, using: :btree
  add_index "ideas_presentadas", ["startup_weekend_id"], name: "index_ideas_presentadas_on_startup_weekend_id", using: :btree

  create_table "organizadores", force: :cascade do |t|
    t.string   "nombre"
    t.string   "imagen"
    t.integer  "startup_weekend_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "organizadores", ["startup_weekend_id"], name: "index_organizadores_on_startup_weekend_id", using: :btree

  create_table "startup_weekends", force: :cascade do |t|
    t.string   "titulo"
    t.string   "logo"
    t.text     "descripcion"
    t.string   "slug"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "facebook"
    t.string   "twitter"
    t.string   "sitioweb"
    t.date     "fecha"
    t.string   "correo"
  end

  add_index "startup_weekends", ["slug"], name: "index_startup_weekends_on_slug", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "ideas_presentadas", "startup_weekends"
  add_foreign_key "organizadores", "startup_weekends"
end