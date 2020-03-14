class Theme < ApplicationRecord
  belongs_to :reason
  has_many :subthemes
end

