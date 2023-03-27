class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @boards = Board.all
  end
end
