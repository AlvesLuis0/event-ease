# frozen_string_literal: true

class Event < ApplicationRecord
  has_one :address
  has_many :coupons
end
