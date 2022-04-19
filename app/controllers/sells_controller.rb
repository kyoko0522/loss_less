class SellsController < ApplicationController

  def index
    if Order.where(ordered_user_id: current_user.id).present?
      @orders = current_user.orders
        # @orders = Order.where(ordered_user_id: 'current_user')
    else
      redirect_to root_path
    end

  end

  def show
     @order = Order.find(params[:id])
    if @order.ordered_user_id = current_user.id
       @order_items = @order.order_items
    else
      nil
    end
  end

end
