# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_22_201300) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blogs", force: :cascade do |t|
    t.integer "blog_id"
    t.integer "own_id"
    t.string "name"
    t.integer "stars"
    t.string "title"
    t.string "handle"
    t.time "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "blogs_users", force: :cascade do |t|
    t.string "blog_id"
    t.string "Integer"
    t.string "user_id"
    t.string "integer"
    t.integer "full_priveleges"
    t.integer "contributor_priveleges"
    t.integer "moderation_priveleges"
    t.integer "post_id"
    t.integer "tag_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "image_id"
    t.string "integer"
    t.string "user_id"
    t.string "url"
    t.string "small_size"
    t.string "medium_size"
    t.string "caption"
    t.string "image"
    t.string "date_created"
    t.string "date_updated"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "post_images", force: :cascade do |t|
    t.integer "post_id"
    t.integer "image_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "post_id"
    t.string "blog_id"
    t.string "integer"
    t.integer "user_id"
    t.string "text_title"
    t.text "text_body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_rumblrs", force: :cascade do |t|
    t.string "integer"
    t.string "username"
    t.string "email"
    t.string "salt"
    t.string "first_name"
    t.string "last_name"
    t.string "date_created"
    t.string "date_updated"
    t.string "users_rumblr"
    t.string "last_ip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
