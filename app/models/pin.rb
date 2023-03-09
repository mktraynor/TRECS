class Pin < ApplicationRecord
  belongs_to :user
  belongs_to :rec
  belongs_to :boards, through: :board_pin
end
