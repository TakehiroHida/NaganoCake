class Admin::ItemsController < ApplicationController
    
    def create
        @item = Item.new(item_params)
        
    end
    
    def edit
    end

    def index
    end
    
    def new
        @item = Item.new
        @item.save
        redirect_to admin_items_path
    end
    
    def show
    end

    def update
    end
    
    #投稿データのストロングパラメータ
    private
    
    #pemitの内容に今回、ジャンルIDは必要か？要質問
    def item_params
        params.require(:item).permit(:genre_id, :image, :name, :introduction, :price, :is_active)
    end
    
end
