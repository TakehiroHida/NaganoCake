class Admin::ItemsController < ApplicationController
    
    def create
        @item = Item.new(item_params)
        @item.save
        redirect_to admin_item_path
    end
    
    def edit
        @item = Item.find(params[:id])
    end

    def index
        @items = Item.page(params[:page])
    end
    
    def new
        @item = Item.new
    end
    
    def show
        @item = Item.find(params[:id])
    end

    def update
        @item = Item.find(params[:id])
        @item.update(genre_params)
        redirect_to admin_items_path #商品詳細ページにパスの変更が必要
    end
    
    #投稿データのストロングパラメータ
    private
    
    def item_params
        params.require(:item).permit(:genre_id, :image, :name, :introduction, :price, :is_active)
    end
    
end
