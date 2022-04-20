class ItemsController < ApplicationController
 before_action :authenticate_user!
   def search
    if params[:name].present?
      @items = Item.where('name LIKE ?', "%#{params[:name]}%")
      Item.where.not(user_id: 'current_user')
    else
      @items = Item.none
    end

   end

  def new
    @item = Item.new
  end

  def create
    item = Item.new(item_params)
    item.user_id = current_user.id
    item.save
    redirect_to items_path
  end

  def index
    @user = current_user
    @items = current_user.items.all

  end

  def show
     @item = Item.find(params[:id])
  end


  def edit
    @item = Item.find(params[:id])
  end

  def update
    item = Item.find(params[:id])
    item.update(item_params)
    redirect_to items_path
  end



  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to items_path
  end

  private

  def item_params
    params.require(:item).permit(:name, :image, :notice, :price, :amount, :code, :until)
  end



end
