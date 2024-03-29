class RecsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_rec, only: [:show, :destroy, :edit, :update]
  # before_action :set_board, only: [:show]

  def index
    @recs = if params[:query].present?
              policy_scope(Rec).global_search(params[:query])
            else
              policy_scope(Rec)
            end
    @markers = @recs.geocoded.map do |rec|
     {
        lat: rec.latitude,
        lng: rec.longitude,
        info_window: render_to_string(partial: "popup", locals: {rec: rec})
        # image_url: helpers.asset_url("replace_with_image")
      }
    end
    @recs = Rec.where(category_id: params[:category_id]) if params[:category_id].present?
  end

  def show
    authorize @rec
    @markers = [
      {
        lat: @rec.latitude,
        lng: @rec.longitude,
        info_window: render_to_string(partial: "popup", locals: {rec: @rec})
        # image_url: helpers.asset_url("replace_with_image")
      }
    ]
    # @city = Geocoder.search([@rec.latitude, @rec.longitude]).first.city
    # @board = Board.new
    @review = Review.new
    authorize @review
  end

  def new
    @rec = Rec.new
    authorize @rec
  end

  def create
    @rec = Rec.new(rec_params)
    @rec.user = current_user
    if @rec.save
      redirect_to rec_path(@rec)
    else
      render :new, status: :unprocessable_entity
    end
    authorize @rec
  end

  def destroy
    authorize @rec
    @rec.destroy
    redirect_to recs_path
  end

  def edit
    authorize @rec
  end

  def update
    authorize @rec
    @rec.update(rec_params)
    redirect_to rec_path(@rec)
    # else
    # render "edit" #will go back / stay on the same page
  end

  private

  def rec_params
    params.require(:rec).permit(:name, :address, :links, :review, :category_id, :description, photos: [])
  end

  def set_rec
    @rec = Rec.find(params[:id])
  end

  def set_board
    @board = Board.find(params[:board_id])
  end
end
