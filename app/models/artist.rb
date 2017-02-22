class Artist < ApplicationRecord
  domain_regex = /((http|https):\/\/)[a-z0-9]*(\.?[a-z0-9]+)\.[a-z]{2,5}(:[0-9]{1,5})?(\/.)?\z/ix
  has_many :products, dependent: :destroy
  belongs_to :user
  belongs_to :domain
  validates :username, presence: true, uniqueness: true
  validates :domain, presence: true
  validates :street, presence: true
  validates :zipcode, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :siret, presence: true, uniqueness: true
  validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :website, format: {:with => domain_regex}
end
