class SellsController < ApplicationController
 before_action :authenticate_user!
  def index
    if Order.where(ordered_user_id: current_user.id).present?
      @orders = current_user.ordereds
        # @orders = Order.where(ordered_user_id: 'current_user')
    else
      redirect_to root_path
    end

  end

  def show
     @order = Order.find(params[:id])
     @order_items = @order.order_items
  end

 def update
   @order = Order.find(params[:id])
   @order.update(order_params)
   redirect_to sells_path
 end

private

def order_params
  params.require(:order).permit(:send_status)
end


end
