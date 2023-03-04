class BoardPin < ApplicationRecord
  has_many :pins
  has_many :boards
end
