class Ingredient < ActiveRecord::Base
  has_many :dose
  has_many :cocktails, through: :dose

  validates :name, presence: :true
end
