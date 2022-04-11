class ItemsController < ApplicationController
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
    @user.name = current_user.name
    @items = current_user.item.all

  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
  end



  def destroy

  end

  private

  def item_params
    params.require(:item).permit(:name, :image, :notice, :price, :amount, :code)
  end



end
