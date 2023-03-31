class Board < ApplicationRecord
  belongs_to :user
  has_many :pins, dependent: :destroy
  has_many :recs, through: :pins
end
