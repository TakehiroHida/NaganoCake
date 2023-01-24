class Item < ApplicationRecord
    
#アソシエーション
    has_many :cart_items, dependent: :destroy
    has_many :order_items, dependent: :destroy
    
    belongs_to :genre
    
    
#ActiveStorage    
    has_one_attached :image
    
    #def get_image(width, height)
      #image.variant(resize_to_limit: [width, height]).processed
    #end
   
   def add_tax_price
       (self.price * 1.10).round
   end
end
