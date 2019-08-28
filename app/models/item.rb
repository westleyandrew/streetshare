class Item < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  monetize :price_cents
  belongs_to :user
  belongs_to :category, optional: true
  has_many :reviews, dependent: :destroy
  validates :title, presence: true
  validates :description, presence: true
  has_many :orders

  include PgSearch::Model
  pg_search_scope :search_by_title_address,
    against: [:title, :address],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
