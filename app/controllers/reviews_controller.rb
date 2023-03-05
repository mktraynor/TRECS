class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @rec = Rec.find(params[:item_id])
    # authorize @review
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.rec = Rec.find(params[:item_id])
    # authorize @review
    if @review.save!
      redirect_to rec_path(@rec), notice: 'review request successful'
    else
      redirect_to new_rec_review_path(@rec), status: :unprocessable_entity
    end
  end

  def edit
  end

  def destroy
    # authorize @review
    @review.destroy
    redirect_to rec_path(@rec), status: :see_other
  end

  private

  def review
    params.require(:review).permit(:rating, :comment)
  end

end
