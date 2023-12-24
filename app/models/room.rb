class Room < ApplicationRecord
  has_many :room_users
  has_many :users, through: :room_users #<= 中間テーブルとのアソシエーション
  has_many :messages

  validates :name, presence: true
end
