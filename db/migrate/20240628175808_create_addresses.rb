# frozen_string_literal: true

class CreateAddresses < ActiveRecord::Migration[7.1]
  def change
    create_table :addresses do |t|
      t.string :uf
      t.string :city
      t.references :event, null: false, foreign_key: true
    end
  end
end
