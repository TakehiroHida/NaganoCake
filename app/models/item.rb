class Item < ApplicationRecord
    
#アソシエーション
    has_many :cart_items, dependent: :destroy
    has_many :order_items, dependent: :destroy
    
    belongs_to :genre
    
    
#ActiveStorage    
    has_one_attached :image
    
    def get_image
        image.variant(reseize_to_limit: [width,height]).processed
    end
    
end
