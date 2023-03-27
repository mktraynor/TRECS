class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_rec, only: [:new, :edit, :update, :create, :destroy]
  before_action :set_review, only: [:edit, :update, :destroy]

  # ⬇ added this to recs_controller
  def new
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @review.rec_id = @rec.id
    @review.user = current_user
    authorize @review
    if @review.save!
      redirect_to rec_path(@rec), notice: 'Comment posted'
    else
      redirect_to rec_path(@rec), status: :unprocessable_entity
    end
  end

  def edit
    authorize @review
  end

  def update
    authorize @review
    if @review.update(review_params)
      redirect_to rec_path(@rec)
      flash.alert = "Edited comment"
    end
  end

  def destroy
    authorize @review
    @review.destroy
    redirect_to rec_path(@rec), status: :see_other
  end

  private

  def set_rec
    @rec = Rec.find(params[:rec_id])
  end

  def review_params
    params.require(:review).permit(:comment, :rec_id)
  end

  def set_review
    @review = Review.find(params[:id])
  end

end
