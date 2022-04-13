class OrdersController < ApplicationController


  def create
    order = Order.new(order_params)
    order.order_user_id = current_user.id
    order.ordered_user_id = User.find(params[:user_id])
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
  params.require(:order).permit(:amount, { :item_ids=> [] })
  end



end
