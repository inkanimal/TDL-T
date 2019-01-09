class Product < ApplicationRecord
  has_many :product_categories
  has_many :categories, through: :product_categories

  default_scope { where(active: true) }

  validates_presence_of :name
  validates_presence_of :price
end
