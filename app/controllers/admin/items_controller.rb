class Admin::ItemsController < ApplicationController
    
    def create
        @item = Item.new(item_params)
        @item.save
        redirect_to admin_items_path
    end
    
    def edit
    end

    def index
    end
    
    def new
        @item = Item.new
    end
    
    def show
    end

    def update
    end
    
    #投稿データのストロングパラメータ
    private
    
    def item_params
        params.require(:item).permit(:genre_id, :image, :name, :introduction, :price, :is_active)
    end
    
end
