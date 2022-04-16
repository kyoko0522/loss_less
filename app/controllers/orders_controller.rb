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
     byebug
     order_item.item_id = item_id
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
      redirect_to orders_complete_path
  end


  def index
    if Order.where(order_user_id: current_user.id).present?
       @orders = current_user.orders
    else
      nil
    end
  end

  def show
       @order = Order.find(params[:id])
    if @order.order_user_id = current_user.id
       @order_items = @order.order_items
    else
      nil
    end
  end

  private

  def order_item_params
  params.require(:order_item).permit({:amount=> [] }, { :item_id=> [] })
  end


  def order_params
  params.require(:order).permit(:ordered_user_id, :order_user_id, :id)
  end



end
