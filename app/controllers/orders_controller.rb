class OrdersController < ApplicationController
  before_action :set_order, only: [:edit, :update, :destroy]


  def create
    item = Item.find(params[:order][:item_id])
    order = Order.create!(item_id: item.id, amount: item.price, state: 'pending', user: current_user, start_time: params[:order][:start_time], end_time: params[:order][:end_time])

    redirect_to order_path(order)
  end

  def show
    #@order = current_user.orders.where(state: 'paid').find(params[:id])
    @order = current_user.orders.find(params[:id])
  end

  def edit
  end

  def update
    @order.update(order_params)
    redirect_to order_path(@order)
  end

  def destroy
    @order.destroy
    redirect_to user_show_path
  end

  private

  def order_params
    params.require(:order).permit(:item_id, :amount, :state, :user, :start_time, :end_time)
  end

  def set_order
    @order = Order.find(params[:id])
  end
end
