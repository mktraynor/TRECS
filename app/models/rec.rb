class Rec < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :reviews
  has_many :pins
  has_many_attached :photos
end
