class OrdersController < ApplicationController
  def create
    item = Item.find(params[:item_id])
    order = Order.create!(item_id: item.id, amount: item.price, state: 'pending', user: current_user)

    redirect_to order_path(order)
  end

  def show
    #@order = current_user.orders.where(state: 'paid').find(params[:id])
    @order = current_user.orders.find(params[:id])
  end
end
