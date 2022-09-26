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

ActiveRecord::Schema.define(version: 20_220_725_015_039) do
  create_table 'admins', charset: 'utf8mb3', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at', precision: 6
    t.datetime 'remember_created_at', precision: 6
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['email'], name: 'index_admins_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_admins_on_reset_password_token', unique: true
  end

  create_table 'cards', charset: 'utf8mb3', force: :cascade do |t|
    t.string 'name', null: false
    t.text 'description', null: false
    t.string 'annual_fee', null: false
    t.string 'Reduction_rate', null: false
    t.string 'point', null: false
    t.string 'image_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'customers', charset: 'utf8mb3', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at', precision: 6
    t.datetime 'remember_created_at', precision: 6
    t.string 'first_name'
    t.string 'last_name'
    t.string 'kana_first_name'
    t.string 'kana_last_name'
    t.boolean 'is_valid', default: false, null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['email'], name: 'index_customers_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_customers_on_reset_password_token', unique: true
  end

  create_table 'favorites', charset: 'utf8mb3', force: :cascade do |t|
    t.bigint 'customer_id', null: false
    t.bigint 'card_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['card_id'], name: 'index_favorites_on_card_id'
    t.index %w[customer_id card_id], name: 'index_favorites_on_customer_id_and_card_id', unique: true
    t.index ['customer_id'], name: 'index_favorites_on_customer_id'
  end

  add_foreign_key 'favorites', 'cards'
  add_foreign_key 'favorites', 'customers'
end
