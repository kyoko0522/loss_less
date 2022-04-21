class BuysController < ApplicationController
  def show
     @order_item = OrderItem.new
     @item = Item.find(params[:id])
     @user = @item.user
  end
end
