class PinsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  before_action :set_pin, only: :destroy
  before_action :set_board, only: [:new, :create]

  def new
    @pin = Pin.new
    authorize @pin
  end

  def create
    @pin = Pin.new(pin_params)
    @pin.user = current_user # create a pin belonging to user
    @board.user = current_user
    @pin.rec = Item.find(params[:rec_id])
    # @rec = @pin.rec # save this rec as the rec_id for this pin
    @pin.board = Board.find(params[:rec_id])
    # @pin.board = @board  # create a pin belonging to the board (which we have defined as belonging to user)
    # define board as board belonging to user
    authorize @pin
    if @pin.save
      # pin is saved to all pins board (you know the board id)
      # notice that it has been saved
      # redirect_to board_path(@board)
      # 1. User saves pin
      # 2. pin is saved to all pins board (you know the board id)
      # 3.
      # 4. this should create a new pin id and attach itself to the right board
      # 5. The board should display a representation of the rec
      # pin where record id = sth board id = sth
      flash.alert = "Saved"
    else
      render :new
    end
  end

  def destroy
    authorize @pin
    @pin.destroy
    redirect_to board_path(@pin.board), status: :see_other
  end

  private

  def pin_params
    params.require(:pin).permit(:user_id, :rec_id)
  end

  def set_pin
    @pin = Pin.find(params[:id])
  end

  def set_board
    @board = Board.find(params[:board_id])
  end

end
