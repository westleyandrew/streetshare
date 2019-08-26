class Item < ApplicationRecord
  monetize :price_cents
  belongs_to :user
  belongs_to :category
  has_many :reviews, dependent: :destroy
  validates :title, presence: true
  validates :description, presence: true
end
