class Order < ApplicationRecord
  belongs_to :theme
  belongs_to :content

  validates :order, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
end
