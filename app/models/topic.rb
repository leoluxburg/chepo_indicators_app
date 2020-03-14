class Topic < ApplicationRecord
  has_many :reasons, dependent: :destroy
end
