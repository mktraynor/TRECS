class Board < ApplicationRecord
  belongs_to :user
  has_many :pins, through: :board_pins
end
