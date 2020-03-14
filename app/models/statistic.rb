class Statistic < ApplicationRecord
  has_many :formulas
  has_many :indicators, through: :formulas
end
