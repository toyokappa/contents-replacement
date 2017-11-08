class Theme < ApplicationRecord
  has_many :replacements
  accepts_nested_attributes_for :replacements, allow_destroy: true, reject_if: :all_blank

  validates :name, presence: true
end
