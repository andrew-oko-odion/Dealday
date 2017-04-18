class Product < ApplicationRecord
  validates :name, presence: true
  validates :category, presence: true
  validates :color, presence: true
  validates :sold_out, presence: true
end
