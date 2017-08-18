class DashboardsController < ApplicationController
  def main
  end

  def settings
    @user = current_user
    @person = User.find_by(id: current_user.id)
  end

  def payment
  end

  def history
  end

  def gamertag
    @person = User.find_by(id: current_user.id)
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end


end
