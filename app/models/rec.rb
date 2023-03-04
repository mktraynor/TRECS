class Rec < ApplicationRecord
  belongs_to :user
  has_many :reviews, :pins, :categories
end
