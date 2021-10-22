# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_22_082451) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rules", force: :cascade do |t|
    t.bigint "thing_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id", "thing_id"], name: "index_rules_on_user_id_and_thing_id", unique: true
  end

  create_table "second_groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "second_rules", force: :cascade do |t|
    t.bigint "second_thing_id", null: false
    t.bigint "second_user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["second_user_id", "second_thing_id"], name: "index_second_rules_on_second_user_id_and_second_thing_id"
  end

  create_table "second_subscriptions", force: :cascade do |t|
    t.string "second_subscriber_type", null: false
    t.bigint "second_subscriber_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["second_subscriber_id", "second_subscriber_type"], name: "second_subscriptions_index"
    t.index ["second_subscriber_type", "second_subscriber_id"], name: "index_second_subscriptions_on_second_subscriber"
  end

  create_table "second_things", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "second_users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "subscriptions", force: :cascade do |t|
    t.string "subscriber_type", null: false
    t.bigint "subscriber_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["subscriber_id", "subscriber_type"], name: "index_subscriptions_on_subscriber_id_and_subscriber_type", unique: true
    t.index ["subscriber_type", "subscriber_id"], name: "index_subscriptions_on_subscriber"
  end

  create_table "things", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "third_groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "third_rules", force: :cascade do |t|
    t.bigint "third_thing_id", null: false
    t.bigint "third_user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["third_user_id", "third_thing_id"], name: "index_third_rules_on_third_user_id_and_third_thing_id", unique: true
  end

  create_table "third_subscriptions", force: :cascade do |t|
    t.string "third_subscriber_type", null: false
    t.bigint "third_subscriber_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["third_subscriber_id", "third_subscriber_type"], name: "third_subscriptions_uniq", unique: true
    t.index ["third_subscriber_type", "third_subscriber_id"], name: "index_third_subscriptions_on_third_subscriber"
  end

  create_table "third_things", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "third_users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "rules", "things"
  add_foreign_key "rules", "users"
  add_foreign_key "second_rules", "second_things"
  add_foreign_key "second_rules", "second_users"
  add_foreign_key "third_rules", "third_things"
  add_foreign_key "third_rules", "third_users"
end
