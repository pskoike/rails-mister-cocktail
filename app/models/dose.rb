class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true
  validates :cocktail_id, presence: true, uniqueness: { scope: :cocktail_id, :ingredient_id }
  validates :ingredient_id, presence: true
  validates :name, uniqueness: true, presence: true

end
