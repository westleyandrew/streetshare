class Item < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  belongs_to :category, optional: true
  has_many :reviews, dependent: :destroy
  validates :title, presence: true
  validates :description, presence: true
end
