class OrderItem < ApplicationRecord
  attachment :image
  belongs_to :order
  belongs_to :item
end
