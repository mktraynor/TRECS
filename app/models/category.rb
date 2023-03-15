class Category < ApplicationRecord
  has_many :recs
  validates :name, presence: true
  validates :category, inclusion: { in: ["accommodation", "restaurants", "museums", "bars"] }
end
