class Rec < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :pins
  has_many :categories
end
