class Replacement < ApplicationRecord
  belongs_to :theme

  validates :name, presence: true
  validates :order, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
end
