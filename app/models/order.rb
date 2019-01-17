class Order < ApplicationRecord
  has_many :order_products

  validates :full_name, presence: true
  validates :email, presence: true
  validates :address, presence: true
end
