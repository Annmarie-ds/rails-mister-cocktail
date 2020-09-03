class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true, allow_nil: false
  validates :cocktail, presence: true, allow_nil: false
  validates :ingredient, presence: true, allow_nil: false
  validates :cocktail, uniqueness: { scope: :ingredient }
  # A dose must have a description, a cocktail and an ingredient, and [cocktail, ingredient] pairings should be unique.
end
