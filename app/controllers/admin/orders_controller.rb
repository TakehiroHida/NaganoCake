class Admin::OrdersController < ApplicationController
  
  def index
    @orders = Order.page(params[:page])
  end

  def show
    @order = Order.find(params[:id])
    @order_items = Order_items.find(order.id)
  end
  
  
  
  private
    def order_params
      params.require(:order).permit(:customers_id, :price, :payment_method, :ordered_status, :postal_cord, :address, :name)
    end
  
end
