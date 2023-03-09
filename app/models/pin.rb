class Pin < ApplicationRecord
  belongs_to :user
  belongs_to :rec
  belongs_to :board, through: :board_pin
end
