class Subtheme < ApplicationRecord
  belongs_to :theme
    has_many :indicators
end
