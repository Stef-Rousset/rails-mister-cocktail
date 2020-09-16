class Cocktail < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_name,
    against: :name,
    associated_against: {
      ingredients: :name,
    },
    using: {
      tsearch: { prefix: true }
    }
end
