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

ActiveRecord::Schema.define(version: 20170328093055) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
  end

  create_table "admin_users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "attachinary_files", force: :cascade do |t|
    t.string   "attachinariable_type"
    t.integer  "attachinariable_id"
    t.string   "scope"
    t.string   "public_id"
    t.string   "version"
    t.integer  "width"
    t.integer  "height"
    t.string   "format"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["attachinariable_type", "attachinariable_id", "scope"], name: "by_scoped_parent", using: :btree
  end

  create_table "customers", force: :cascade do |t|
    t.string   "customer_company_name"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "position_in_company"
    t.string   "mobile_phone_number"
    t.string   "office_phone_number"
    t.string   "email"
    t.string   "customer_address"
    t.string   "works_address"
    t.integer  "needs_surface"
    t.integer  "nb_of_employees"
    t.integer  "budget"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.boolean  "customer_startup_style"
    t.boolean  "customer_classical_style"
    t.boolean  "customer_modern_style"
    t.text     "description"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "matches", force: :cascade do |t|
    t.string   "status"
    t.integer  "customer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "pro_id"
    t.index ["customer_id"], name: "index_matches_on_customer_id", using: :btree
    t.index ["pro_id"], name: "index_matches_on_pro_id", using: :btree
  end

  create_table "pros", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "pro_company_name"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "contact_first_name"
    t.string   "contact_last_name"
    t.string   "contact_position"
    t.string   "contact_phone_number"
    t.integer  "operating_radius"
    t.integer  "min_operating_surface"
    t.boolean  "furnitures"
    t.boolean  "simulation"
    t.boolean  "all_works"
    t.boolean  "architecte"
    t.integer  "max_operating_surface"
    t.boolean  "admin",                  default: false, null: false
    t.index ["email"], name: "index_pros_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_pros_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "matches", "customers"
  add_foreign_key "matches", "pros"
end
