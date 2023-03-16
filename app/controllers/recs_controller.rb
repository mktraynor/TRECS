class RecsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_rec, only: [:show, :destroy, :edit, :update]

  def index
    @recs = Rec.all
    @recs = policy_scope(Rec)
    @markers = @recs.geocoded.map do |rec|
      {
        lat: rec.latitude,
        lng: rec.longitude,
        info_window: render_to_string(partial: "popup", locals: {rec: rec})
        # image_url: helpers.asset_url("replace_with_image")
      }
    end
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
  end

  def new
    @rec = Rec.new
    authorize @rec
  end

  def create
    @rec = Rec.new(rec_params)
    @rec.user = current_user
    authorize @rec
    if @rec.save
      redirect_to rec_path(@rec)
    else
      render :new, status: :unprocessable_entity
    end
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
end
