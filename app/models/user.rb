class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :recs
  has_many :reviews
  has_many :pins
  has_many :boards
  # Changelog for board
  # 16/03: changing to singular to debug issue with pins previously plural
  # 20/03: changing back to has_many: boards

  def username
    email.match(/^[^@]*/)[0]
  end
end
