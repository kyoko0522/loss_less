class UsersController < ApplicationController

   def show
    @order = Order.new
    @user = User.find(params[:id])
    @items = @user.items
   end

end
