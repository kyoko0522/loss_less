class UsersController < ApplicationController
 before_action :authenticate_user!
   def show
    # @order = Order.new
    # @order_item = OrderItem.new
    @user = User.find(params[:id])
    @items = @user.items
    @total = 0
   end

end
