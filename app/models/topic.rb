class Topic < ApplicationRecord
  validates :user_id, presence: true
  validates :descliption, presence: true
  validates :image, presence: true

  belongs_to :users

  has_many :topics

  mount_uploader :image, ImageUploader

  has_many :favorites
  has_many :favorites_users, through: :favorites, source: 'user'
end
