class UsersController < ApplicationController

   def show
    @order = Order.new
    @order_item = OrderItem.new
    @user = User.find(params[:id])
    @items = @user.items
   end

end
