class BoardsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @boards = policy_scope(board)
  end

  def show
    authorize @board
  end

  def new
    authorize @board
  end

  def create
    authorize @board
  end

  def edit
    authorize @board
  end

  def update
    authorize @board
  end

  def destroy
    authorize @board
  end
end
