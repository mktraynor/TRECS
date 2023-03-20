class Category < ApplicationRecord
  has_many :recs
  validates :name, presence: true
  validates :name, inclusion: { in: ["accommodation", "restaurants", "museums", "bars"] }
end
