class Image < ApplicationRecord
  belongs_to :product

  validates :src, presence: true
end
