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

ActiveRecord::Schema[7.0].define(version: 2022_08_09_195732) do
  create_table "deputies", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "registration_id"
    t.integer "portfolio_number"
    t.integer "legislature_number"
    t.integer "legislature_code"
    t.string "uf_initials", limit: 2
    t.string "party_initials", limit: 10
  end

  create_table "expenditures", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "deputy_id"
    t.string "provider_name"
    t.datetime "issue_date"
    t.integer "net_amount"
    t.integer "year"
    t.string "document_url"
  end

end
