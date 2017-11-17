class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :doses, inverse_of: :cocktail
  has_many :ingredients, through: :doses
  accepts_nested_attributes_for :doses, reject_if: :all_blank, allow_destroy: true
  validates :name, uniqueness: true
  validates :name, presence: true
  end
