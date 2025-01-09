class FrutyPebble < ApplicationRecord
  belongs_to :cocoapuff

  validates :name, presence: true
end
