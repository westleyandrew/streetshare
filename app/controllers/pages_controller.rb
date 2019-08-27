class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @home = true
  end

  def user_show
    @user = current_user
    @items = Item.all
    @user_items = @items.where(user_id: current_user[:id])
  end
end
