class UsersController < ApplicationController
  def new
  end

  def create
  end

  def edit
    flash[:success] = "Hello world"
  end

  def update
    if current_user.update_attributes(user_params)
      flash[:success] = "User Settings Have Been Updated"
      redirect_to dash_settings_path
    else
      flash[:fail] = "There was an error unfortunately"
    end
  end

  def index
  end

  def show
  end

  def destroy
  end

  def user_params
    params.require(:user).permit(:nickname, :password, :email)
  end
end
