class Content < ApplicationRecord
  has_many :orders
  has_many :themes, through: :orders

  validates :name, presence: true
  validates :subject, presence: true

end
