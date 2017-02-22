class Artist < ApplicationRecord
  has_many :products, dependent: :destroy
  has_attachment :photo
  belongs_to :user
  belongs_to :domain
  validates :username, presence: true, uniqueness: true
  validates :domain, presence: true
  validates :street, presence: true
  validates :zipcode, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :siret, presence: true, uniqueness: true, :numericality => true
  validates_length_of :siret, :is => 14
  validates_length_of :description, :maximum => 500
  validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :website, url: true, :allow_blank => true
end
