class OrdersController < ApplicationController


  def create

    # order_params[:item_ids].each do |item_id|
    # order = Order.new(order_params)
    # order.order_user_id = order_params[:order_user_id]
    # order.ordered_user_id = order_params[:ordered_user_id]
    # order.item_id = item_id
    # order.save!
    # end
   order = Order.new(order_params)
  order.order_user_id = order_params[:order_user_id]
  order.ordered_user_id = order_params[:ordered_user_id]
   order.save
    order_item_params[:item_id].each do |item_id|
    order_item = OrderItem.new(order_item_params)
    order_item.item_id = item_id
    order_item.order_id = order.id
     order_item.save
    end

    # @item_id = order_params[:item_ids].reject(&:blank?).first
    # @item = Item.find(item_id)
    # order.each do |order|
    #   order_item = OrderItem.new
    #   order_item.id = order.item_id
    #   order_item.order_id = order.id
    #   order_item.amount = cart.amount
    #   order_item.save
    #   end
    # Order.where(item_id: order_item_params[:item_id]).destroy_all
    # order_item = OrderItem.find(order_item_params[:item_id])
    Item.find(order_item_params[:item_id]).destroy_all
    redirect_to orders_complete_path
  end


  def index
    # binding.pry
    @user = current_user
    if Order.where(order_user_id: current_user.id).present?
    @orders = current_user.orders
    #   @orders = Order.find(3)
    #   # @orders = Order.where(order_user_id: 'current_user')
    else
      redirect_to root_path
    end
  end

  def show
    @order = Order.find(params[:id])
    @order_items = @order.order_items
  end

  private

  def order_item_params
  params.require(:order_item).permit({:amount=> [] }, { :item_id=> [] })
  end


  def order_params
  params.require(:order).permit(:ordered_user_id, :order_user_id)
  end



end
