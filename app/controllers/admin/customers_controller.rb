class Admin::CustomersController < ApplicationController
  def index
    @customers = Customer.page(params[:page])
  end

  def show
    @customer = Customer.find(customer.params)
  end

  def edit
    @customer = Customer.find(customer.params)
  end
  
  def update
    
  end
  
  
  private
  
  def customer_params
    params.require(:customer).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :email, :encrypted_passward, :postal_cord, :address, :telephone_number, :is_deleted)
  end
  
end
