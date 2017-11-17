class Dose < ApplicationRecord
  belongs_to :cocktail, inverse_of: :doses
  belongs_to :ingredient

  validates :description, presence: true
  validates :cocktail, uniqueness: {scope: :ingredient}

end
