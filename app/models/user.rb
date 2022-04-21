class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :items, dependent: :destroy
  has_many :orders, foreign_key:'order_user_id'
  has_many :ordereds, foreign_key:'ordered_user_id', class_name: "Order"
 validates :name, presence: true
 validates :postal_code, presence: true
 validates :address, presence: true
 validates :telephone_number, presence: true

  # validates :item_id, acceptance: true
#   has_many :orders, foreign_key:ordered_user_id
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
