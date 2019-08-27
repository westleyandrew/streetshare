class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.all
    @users = User.geocoded
    @items = @users.map(&:items).flatten
    # @items = policy_scope(item)
    # @items = @items.search_by_title_and_model(params[:search]) if params[:search].present?
    # @items = item.geocoded #returns flats with coordinates

    @markers = @users.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
        # infoWindow: render_to_string(partial: "info_window", locals: { item: item }),
        # image_url: helpers.asset_url('item.png')
      }
    end
  end

  def show
    # @review = Review.new
    # authorize @item
  end

  def edit
    # authorize @item
  end

  def new
    @item = Item.new
    # authorize @item
  end

  def update
    @item.update(item_params)
    redirect_to item_path(@item)
    # authorize @item
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user
    if @item.save
      redirect_to item_path(@item)
    else
      render :new
    end
    # authorize @item
  end

  def destroy
    @item.destroy
    redirect_to items_path
    # authorize @item
  end

  private

  def item_params
    params.require(:item).permit(:title, :description, :photo, :photo_cache, :address, :deposit, :categories_id)
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
