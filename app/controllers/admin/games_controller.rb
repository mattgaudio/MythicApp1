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
      @game = Game.create( game_params )
      if @game.save
        redirect_to admin_games_path
      end
      
    end

    private

    # Use strong_parameters for attribute whitelisting
    # Be sure to update your create() and update() controller methods.

    def game_params
      params.require(:game).permit(:short_title, :long_title, :game_type, :game_group, 
                                    :active, :game_img)
    end

  end
end
