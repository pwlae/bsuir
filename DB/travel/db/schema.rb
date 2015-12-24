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

ActiveRecord::Schema.define(version: 20151224092351) do

  create_table "airports", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "city_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "airports", ["city_id"], name: "index_airports_on_city_id", using: :btree

  create_table "articles", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "post",       limit: 65535
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "city_id",    limit: 4
    t.integer  "price_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "bookings", ["city_id"], name: "index_bookings_on_city_id", using: :btree
  add_index "bookings", ["price_id"], name: "index_bookings_on_price_id", using: :btree

  create_table "cities", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "country_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "cities", ["country_id"], name: "index_cities_on_country_id", using: :btree

  create_table "citytrips", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "source",      limit: 255
    t.string   "destenation", limit: 255
    t.integer  "price",       limit: 4
    t.integer  "city_id",     limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "citytrips", ["city_id"], name: "index_citytrips_on_city_id", using: :btree

  create_table "comments", force: :cascade do |t|
    t.string   "commenter",  limit: 255
    t.text     "body",       limit: 65535
    t.integer  "article_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "comments", ["article_id"], name: "index_comments_on_article_id", using: :btree

  create_table "countries", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "zone",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "cruises", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "source",      limit: 255
    t.string   "destenation", limit: 255
    t.integer  "price",       limit: 4
    t.integer  "city_id",     limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "cruises", ["city_id"], name: "index_cruises_on_city_id", using: :btree

  create_table "flights", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "airport_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "flights", ["airport_id"], name: "index_flights_on_airport_id", using: :btree

  create_table "hotels", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.date     "in"
    t.date     "out"
    t.integer  "rating",     limit: 4
    t.integer  "price",      limit: 4
    t.integer  "city_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "hotels", ["city_id"], name: "index_hotels_on_city_id", using: :btree

  create_table "payments", force: :cascade do |t|
    t.string   "type",       limit: 255
    t.integer  "number",     limit: 4
    t.date     "expire"
    t.string   "cvv",        limit: 255
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "payments", ["user_id"], name: "index_payments_on_user_id", using: :btree

  create_table "prices", force: :cascade do |t|
    t.integer  "cost",       limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "promos", force: :cascade do |t|
    t.integer  "cost",       limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "tours", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "source",      limit: 255
    t.string   "destenation", limit: 255
    t.integer  "price",       limit: 4
    t.integer  "city_id",     limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "tours", ["city_id"], name: "index_tours_on_city_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "password",   limit: 255
    t.string   "email",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "airports", "cities"
  add_foreign_key "bookings", "cities"
  add_foreign_key "bookings", "prices"
  add_foreign_key "cities", "countries"
  add_foreign_key "citytrips", "cities"
  add_foreign_key "comments", "articles"
  add_foreign_key "cruises", "cities"
  add_foreign_key "hotels", "cities"
  add_foreign_key "payments", "users"
  add_foreign_key "tours", "cities"
end
