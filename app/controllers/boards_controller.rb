class BoardsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_board, only: [:show, :destroy, :edit, :update]
  before_action :set_rec, only: [:index]

  def index
    # @boards = Board.all
    @user = current_user
    @boards = Board.where(user: @user)
    @boards = policy_scope(Board)
    @board = Board.new
  end

  def show
    # @pin = Pin.new
    authorize @board
    @board.user = current_user
    # show all recs that have pins related to the user and the board
    # @board = current_board
  end

  def create
    @board = Board.new(board_params)
    @board.user = current_user
    authorize @board
    # @rec = Rec.find(params[:id])
    if @board.save
      redirect_to board_path(@board) # change this to an alert
    else
      render :new, status: :unprocessable_entity
    end
  end

  # def create_board_pin
  # end

  def new
    @board = Board.new
    authorize @board
  end

  def update
    authorize @board
    @board.update(board_params)
    redirect_to board_path(@board)
  end

  def edit
    authorize @board
  end

  def destroy
    authorize @board
    @board.destroy
    redirect_to boards_path
  end

  private

  def board_params
    params.require(:board).permit(:name)
  end

  def set_board
    @board = Board.find(params[:id])
  end

  def set_rec
    @rec = Board.first.pins.first.rec
  end


end
