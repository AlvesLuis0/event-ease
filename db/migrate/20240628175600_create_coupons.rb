# frozen_string_literal: true

class CreateCoupons < ActiveRecord::Migration[7.1]
  def change
    create_table :coupons do |t|
      t.string :code
      t.integer :discount
      t.date :expiration
      t.references :event, null: false, foreign_key: true
    end
  end
end
