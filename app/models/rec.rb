class Rec < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :reviews
  has_many :pins
  has_many_attached :photos

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_name_and_description,
  against: [ :name, :description ],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }

  pg_search_scope :global_search,
  against: [ :name, :description ],
  associated_against: {
    category: [ :name ]
  },
  using: {
    tsearch: { prefix: true }
  }
  #multisearchable against: [:title, :description]

end
