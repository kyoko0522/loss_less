class OrdersController < ApplicationController
 before_action :authenticate_user!

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

    # order_item_params.each do |item|


    # order.ordered_user.items.each do |item|
    order_item = OrderItem.new(order_item_params)

    # order_item.item_id = item.ide
    order_item.order_id = order.id
    order_item.image_id = params[:image]
   # byebug

    # order_item.code = item.code
    # order_item.price = item.price
    # order_item.amount = item.amount
    # order_item.until = item.until

    # order_item.notice = item.notice

    order_item.save
    # end

    # item_id = order_params[:item_id]
    # item = Item.find(item_id)
    # item.each do |item|
    #   order_item = OrderItem.new
    #   order_item.item_id = item.id
    #   order_item.order_id = order.id
    #   order_item.amount = item.amount
    #   order_item.price = item.price
    #   order_item.notice = item.notice
    #   order_item.until = item.until
    #   order_item.image_id = item.image_id
    #   order_item.save
    #   end
    # Order.where(item_id: order_item_params[:item_id]).destroy_all
    # order_item = OrderItem.find(order_item_params[:item_id])
    # byebug
    Item.find(order_item_params[:item_id]).delete
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
  params.permit(:amount, :name, :code, :image, :notice, :price, :until,:item_id, :order_id)
  end

  # def order_item_params
  # params.require(:order_item).permit({ :item_id=> [] })
  # end


  def order_params
  params.permit(:ordered_user_id, :order_user_id)
  end



end
