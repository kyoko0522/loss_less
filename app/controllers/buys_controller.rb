class BuysController < ApplicationController
  before_action :set_item

  def show
    # binding.pry
     @order = Order.new
     @user = @item.user
  end

  def create
    @order = Order.new(order_params)
    @order.order_user_id = order_params[:order_user_id]
    @order.ordered_user_id = order_params[:ordered_user_id]

    @order.save

    @order_item = OrderItem.new(order_item_params)


    @order_item.order_id = @order.id
    @order_item.image_id = params[:image]
    # byebug

  if  @order_item.save

      @item.is_available = false
      @item.save
       redirect_to orders_complete_path
  else
    redirect_to item_buys_path

  end
  end


  private

  def set_item
    @item = Item.find(params[:item_id])
  end

  def order_item_params
  params.require(:order).permit(:amount, :name, :code, :image, :notice, :price, :until,:item_id, :order_id)
  end

  def order_params
  params.require(:order).permit(:ordered_user_id, :order_user_id)
  end
end
