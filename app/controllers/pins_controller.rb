class PinsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def show
    authorize @pin
  end

  def create
    authorize @pin
  end

  def new
    authorize @pin
  end

  def edit
    authorize @pin
  end

  def update
    authorize @pin
  end

  def destroy
    authorize @pin
  end
end
