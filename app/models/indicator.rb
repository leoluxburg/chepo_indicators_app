class Indicator < ApplicationRecord
  belongs_to :subtheme
  has_many :formulas
  has_many :statistics, through: :formulas
end
