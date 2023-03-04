class Category < ApplicationRecord
  belongs_to :recs
  validates :name, presence: true
  validates :category, inclusion: { in: ["accommodation", "restaurants", "museums", "bars"] }
end
