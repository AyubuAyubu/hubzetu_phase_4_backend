
ActiveRecord::Schema[7.0].define(version: 2022_12_05_122304) do
  create_table "hubs", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "location"
    t.string "website_url"
    t.string "description"
    t.string "founder"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "hub_id", null: false
    t.integer "user_id", null: false
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hub_id"], name: "index_reviews_on_hub_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "reviews", "hubs"
  add_foreign_key "reviews", "users"
end
