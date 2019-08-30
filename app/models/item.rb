class Item < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  monetize :price_cents
  belongs_to :user
  belongs_to :category, optional: true
  has_many :reviews, dependent: :destroy
  validates :title, presence: true
  validates :description, presence: true
  has_many :orders, dependent: :destroy

  include PgSearch::Model
  pg_search_scope :search_by_title_address,
    against: [:title, :address],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
  paginates_per 12
    # def self.total_pages
    #   5
    # end

    # def self.current_page
    #   1
    # end

  def avg_rating
    total = self.reviews.reduce(0) { |sum, review| sum + review.rating }
    if self.reviews.count.positive?
      return total / self.reviews.count
    else
      return 0
    end
  end
end

