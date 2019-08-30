class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @home = true
    @items = Item.first(8)
  end

  def user_show
    @users = User.all
    @user = current_user
    @items = Item.all
    @user_items = @items.where(user_id: current_user[:id])
    @orders = Order.all
    @user_orders = @orders.where(user_id: current_user[:id])
    @owned_ordered_array = @user_items.ids
    # @orders.find(@owned_ordered_array)
    @my_orders = @orders.where(item_id: @owned_ordered_array)
  end
end
