class Reason < ApplicationRecord
  belongs_to :topic
  has_many :themes, dependent: :destroy
end
