class Theme < ApplicationRecord
  has_many :orders
  has_many :contents, through: :orders

  accepts_nested_attributes_for :orders, allow_destroy: true, reject_if: :all_blank

  validates :name, presence: true
end
