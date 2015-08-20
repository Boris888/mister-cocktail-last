class Dose < ActiveRecord::Base
  belongs_to :coktails
  belongs_to :ingredients
end
