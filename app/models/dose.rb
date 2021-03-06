class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true, allow_nil: false
  validates :cocktail_id, uniqueness: {scope: :ingredient_id}
  # validates :doses, presence: true
end

