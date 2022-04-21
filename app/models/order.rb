class Order < ApplicationRecord
  belongs_to :order_user, foreign_key:'order_user_id', class_name: 'User'
  belongs_to :ordered_user, foreign_key:'ordered_user_id', class_name: 'User'
  # belongs_to :user, foreign_key:ordered_user_id
  has_many :order_items, dependent: :destroy
  has_many :items, through: :order_items
end
