class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses, dependent: :nullify

  validates :name, uniqueness: true
  validates :name, presence: true
end
