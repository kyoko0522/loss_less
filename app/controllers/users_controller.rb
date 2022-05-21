class UsersController < ApplicationController
 before_action :authenticate_user!
   def show
    @user = User.find(params[:id])
    @items = @user.items.where(is_available: true)
    @total = 0
   end

end
