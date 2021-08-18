class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  def show
    @user = User.find(params[:id])
  end

  def edit; end

  def update
    if @user.update(user_params)
      head :ok
    else
      head :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:id)
  end
end
