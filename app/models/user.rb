class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :recs
  has_many :reviews
  has_many :pins
  has_one :board # changing to singular to debug issue with pins previously plural
end
