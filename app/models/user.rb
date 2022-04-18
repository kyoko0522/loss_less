class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :items, dependent: :destroy
  has_many :orders, foreign_key:'order_user_id'
  validates :item_id, presence: true
#   has_many :orders, foreign_key:ordered_user_id
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
