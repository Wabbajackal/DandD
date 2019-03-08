class Material < ApplicationRecord
  belongs_to :rarity
  validates :name, presence: true
  validates :name, uniqueness: true
end
