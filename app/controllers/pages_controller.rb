class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def user_show
    @user = current_user
    # @items = Item.all
    # @user_items = @items.find_by(user_id: current_user[:id])
  end
end
