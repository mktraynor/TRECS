class Board < ApplicationRecord
  belongs_to :user
  has_many :pins, dependent: :destroy
end
