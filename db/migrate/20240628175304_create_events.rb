# frozen_string_literal: true

class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.date :date
      t.boolean :remote
      t.string :event_url
      t.string :image_url
    end
  end
end
