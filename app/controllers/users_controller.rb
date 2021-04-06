class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
  end

  def edit
  end

  def update
    current_user.update(user_params)

    redirect_to profile_users_path
  end

  def user_params
    params.require(:user).permit(:email, :avatar)
  end
end
