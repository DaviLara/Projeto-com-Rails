class Cocoapuff < ApplicationRecord
  has_many :fruty_pebbles


  validates :name, presence: true
  validates_uniqueness_of :name
end
