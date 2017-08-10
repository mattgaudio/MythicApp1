module Admin
  class GamesController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # you can overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Game.
    #     page(params[:page]).
    #     per(10)
    # end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Game.find_by!(slug: param)
    # end

    # See https://administrate-prototype.herokuapp.com/customizing_controller_actions
    # for more information
    def create
      @user = Game.create( game_params )
    end

    private

    # Use strong_parameters for attribute whitelisting
    # Be sure to update your create() and update() controller methods.

    def game_params
      params.require(:game).permit(:game_img)
    end

  end
end
