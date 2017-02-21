class Product < ApplicationRecord
  belongs_to :artist
  belongs_to :material
  belongs_to :category
  has_many :reviews
  validates :name, presence: true
  validates :description, presence: true
  validates :format, presence: true
  validates :product_price, presence: true
  validates :delivery_price, presence: true
  validates :stock_quantity, presence: true
  validates_inclusion_of :stock_quantity, :in => 0..30
  validates_uniqueness_of :name, :scope => :format
  monetize :product_price_cents
  monetize :delivery_price_cents
end
