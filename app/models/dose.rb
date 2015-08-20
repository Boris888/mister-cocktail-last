class Dose < ActiveRecord::Base
  belongs_to :coktails
  belongs_to :ingredients
  validates :description, presence: :true
  validates_uniqueness_of :Ingredient_id, scope: [:cocktail_id]

end
