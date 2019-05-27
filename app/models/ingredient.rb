class Ingredient < ApplicationRecord
  has_many :doses
  # validates :cocktail
  validates :name, presence: true, uniqueness: true
  # validates :ingredients, presence: true
end

