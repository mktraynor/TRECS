class Rec < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :reviews, dependent: :destroy
  has_many :pins, dependent: :destroy
  has_many_attached :photos

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  multisearchable against: [ :name, :description, :address]
  pg_search_scope :global_search,
  against: [ :name, :description, :address],
  associated_against: {
    category: [ :name ],
    user: [:email]
  },
  using: {
    tsearch: { prefix: true }
  }

  #multisearchable against: [:title, :description]

end
