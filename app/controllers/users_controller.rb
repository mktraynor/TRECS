class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @users = policy_scope(User)
  end

  def show
    @user = current_user
    authorize @user
  end
end
