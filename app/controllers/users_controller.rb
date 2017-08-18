class UsersController < ApplicationController
  def new
  end

  def create
  end

  def edit
  end

  def update
    flash[:success] = "Good Job!"
    redirect_to dash_settings_path
  end

  def index
  end

  def show
  end

  def destroy
  end
end
