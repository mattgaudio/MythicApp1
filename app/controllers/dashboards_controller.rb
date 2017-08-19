class DashboardsController < ApplicationController

  before_action :require_login

  def main
  end

  def settings
    @person = current_user
  end

  def payment
  end

  def history
  end

  def gamertag
    @person = current_user
  end

  def payouts
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
