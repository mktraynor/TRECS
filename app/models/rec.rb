class Rec < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :reviews
  has_many :pins
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
