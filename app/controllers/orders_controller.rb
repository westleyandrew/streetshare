class OrdersController < ApplicationController
  def create
    item = Item.find(params[:order][:item_id])
    order = Order.create!(item_id: item.id, amount: item.price, state: 'pending', user: current_user, start_time: params[:order][:start_time], end_time: params[:order][:end_time])

    redirect_to order_path(order)
  end

  def show
    #@order = current_user.orders.where(state: 'paid').find(params[:id])
    @order = current_user.orders.find(params[:id])
  end
end
