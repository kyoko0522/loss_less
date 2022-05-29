class OrdersController < ApplicationController
 before_action :authenticate_user!



  def index
    # binding.pry
    @user = current_user
    if Order.where(order_user_id: current_user.id).present?
    @orders = current_user.orders

    #   # @orders = Order.where(order_user_id: 'current_user')
    else
      redirect_to root_path
    end
  end

  def show
    @order = Order.find(params[:id])
    @order_items = @order.order_items
  end

end


