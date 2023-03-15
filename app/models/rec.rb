class Rec < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :reviews
  has_many :pins
  has_many_attached :photos

  include PgSearch::Model
  pg_search_scope :search_by_title_and_synopsis,
  against: [ :title, :synopsis ],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }

  pg_search_scope :global_search,
  against: [ :title, :synopsis ],
  associated_against: {
    director: [ :first_name, :last_name ]
  },
  using: {
    tsearch: { prefix: true }
  }
  multisearchable against: [:title, :synopsis]

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
