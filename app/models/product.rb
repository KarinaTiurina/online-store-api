class Product < ApplicationRecord
  has_many :images, dependent: :destroy

  validates :title, presence: true
  validates :price, presence: true
end
