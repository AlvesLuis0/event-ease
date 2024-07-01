# frozen_string_literal: true

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

ActiveRecord::Schema[7.1].define(version: 20_240_628_175_808) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'addresses', force: :cascade do |t|
    t.string 'uf'
    t.string 'city'
    t.bigint 'event_id', null: false
    t.index ['event_id'], name: 'index_addresses_on_event_id'
  end

  create_table 'coupons', force: :cascade do |t|
    t.string 'code'
    t.integer 'discount'
    t.date 'expiration'
    t.bigint 'event_id', null: false
    t.index ['event_id'], name: 'index_coupons_on_event_id'
  end

  create_table 'events', force: :cascade do |t|
    t.string 'title'
    t.text 'description'
    t.date 'date'
    t.boolean 'remote'
    t.string 'event_url'
    t.string 'image_url'
  end

  add_foreign_key 'addresses', 'events'
  add_foreign_key 'coupons', 'events'
end
