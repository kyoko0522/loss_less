class OrdersController < ApplicationController


  def create
    order = Order.new(order_params)
    order.save
    redirect_to orders_complete_path
  end


  def index
    @orders = current_user.orders
  end

  def show
    @order = Order.find(params[:id])
  end

  private

  def order_params
  params.require(:order).permit(:item_id, :ordered_user_id, :order_user_id,  { :item_ids=> [] })
  end



end
