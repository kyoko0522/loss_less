class Item < ApplicationRecord
 belongs_to :user
 has_many :order_items, dependent: :destroy
 has_many :orders, through: :order_items
 attachment :image
 validates :name, presence: true
 validates :code, presence: true
 validates :price, presence: true
 validates :amount, presence: true
 validates :until, presence: true
 validates :image, presence: true
end
