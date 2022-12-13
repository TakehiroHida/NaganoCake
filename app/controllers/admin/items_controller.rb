class Admin::ItemsController < ApplicationController
    
    def create
        @item = Item.new(item_params)
        @item.save
        redirect_to admin_items_path #注文履歴一覧に後ほどパスの変更が必要
    end
    
    def edit
    end

    def index
        @items = Item.all
    end
    
    def new
        @item = Item.new
    end
    
    def show
        @item = Item.find(item_params)
    end

    def update
    end
    
    #投稿データのストロングパラメータ
    private
    
    def item_params
        params.require(:item).permit(:genre_id, :image, :name, :introduction, :price, :is_active)
    end
    
end
