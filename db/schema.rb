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

ActiveRecord::Schema.define(version: 20170727171930) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gifts", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "price"
    t.string "source"
    t.string "status", default: "available"
    t.bigint "registry_id"
    t.bigint "guest_id"
    t.index ["guest_id"], name: "index_gifts_on_guest_id"
    t.index ["registry_id"], name: "index_gifts_on_registry_id"
  end

  create_table "guests", force: :cascade do |t|
    t.string "name"
    t.bigint "wedding_id"
    t.index ["wedding_id"], name: "index_guests_on_wedding_id"
  end

  create_table "registries", force: :cascade do |t|
    t.bigint "wedding_id"
    t.index ["wedding_id"], name: "index_registries_on_wedding_id"
  end

  create_table "weddings", force: :cascade do |t|
    t.string "name"
    t.bigint "registry_id"
    t.index ["registry_id"], name: "index_weddings_on_registry_id"
  end

  add_foreign_key "gifts", "guests"
  add_foreign_key "gifts", "registries"
  add_foreign_key "guests", "weddings"
  add_foreign_key "registries", "weddings"
  add_foreign_key "weddings", "registries"
end
