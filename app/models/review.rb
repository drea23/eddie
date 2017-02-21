class Review < ApplicationRecord
  belongs_to :product
  validates :title, presence: true
  validates :title, presence: true
  validates :rating, presence: true
  validates_inclusion_of :rating, :in => 0..5
end
