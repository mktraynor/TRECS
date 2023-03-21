class PinsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  before_action :set_pin, only: :destroy
  # before_action :set_board, only: [:new, :create]

  def new
    @pin = Pin.new
    authorize @pin
  end

  def create
    @pin = Pin.new(rec_id: pin_params)
    @pin.user = current_user # create a pin belonging to user
    @pin.rec = Rec.find(params[:rec_id])
    # @rec = @pin.rec # save this rec as the rec_id for this pin
    @pin.board = Board.find(params[:board_id])
    # @pin.board = @board  # create a pin belonging to the board (which we have defined as belonging to user)
    # define board as board belonging to user
    authorize @pin
    if @pin.save!
      # pin is saved to all pins board (you know the board id)
      # notice that it has been saved
      # 1. User saves pin
      # 2. pin is saved to all pins board (you know the board id)
      # 3.
      # 4. this should create a new pin id and attach itself to the right board
      # 5. The board should display a representation of the rec
      # pin where record id = sth board id = sth
      redirect_to rec_path(@pin.rec)
      flash.alert = "Saved"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @pin
    @pin.destroy
    redirect_to board_path(@pin.board), status: :see_other
  end

  private

  def pin_params
    params.permit(:rec_id, :board_id)
  end

  def set_pin
    @pin = Pin.find(params[:id])
  end

  def set_board
    @board = Board.find(params[:board_id])
  end

end
