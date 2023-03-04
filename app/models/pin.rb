class Pin < ApplicationRecord
  belongs_to :user, :rec
  belongs_to :boards, through: :board_pin
end
