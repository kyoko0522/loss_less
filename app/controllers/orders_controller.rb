class OrdersController < ApplicationController
  
  def new
    @order = Order.new
    @user = User.find(params[:id])
    @items = @user.items
  end
  
  def create
  end
  
  
  def index
  end
  
  def show
  end
  
end
