class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

#アソシエーション
  has_many :cart_items, dependent: :destroy
  has_many :orders
  has_many :addresses, dependent: :destroy
  
end
