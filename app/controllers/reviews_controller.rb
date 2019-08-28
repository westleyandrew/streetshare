class ReviewsController < ApplicationController
  def new
    @item = Item.find(params[:item_id])
    @review = Review.new
    # authorize @review
  end

  def create
    @review = Review.new(review_params)
    @item = Item.find(params[:item_id])
    @review.item = @item
    # authorize @review
    if @review.save
      respond_to do |format|
        format.html { redirect_to item_path(@item) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'items/show' }
        format.js
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :body, :rating)
  end

end
