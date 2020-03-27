class Item < ApplicationRecord
  has_many :delivery_items
  has_many :deliveries, through: :delivery_items

  validates :name, presence: true
  validates :place, presence: true
end
