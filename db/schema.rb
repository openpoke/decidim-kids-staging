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

ActiveRecord::Schema.define(version: 2022_10_17_214830) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "decidim_kids_organization_configs", force: :cascade do |t|
    t.integer "decidim_organization_id", null: false
    t.boolean "enable_minors_participation", default: false, null: false
    t.integer "minimum_minor_age", default: 10, null: false
    t.integer "minimum_adult_age", default: 14, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["decidim_organization_id"], name: "index_decidim_kids_organization"
  end

end
