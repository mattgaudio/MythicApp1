module Admin
  class TournamentsController < Admin::ApplicationController
    include TournamentsHelper

    def create
        @tournament = Tournament.create(tournament_params)
        challonge_tournament = Challonge::Tournament.create(tournament_params)
        @tournament.update!(tournament_id: challonge_tournament.id, )
        redirect_to admin_tournament_path(@tournament.id)
    end


    def tournament_params
        params.require(:tournament).permit(:name, :tournament_type, :url, :description,
          :open_signup, :show_rounds, :private, :start_at)
    end

    # def challonge_tournament_params
    #   params.require(:tournament).permit( :allow_participant_match_reporting, :hide_seeds, :hold_third_place_match, :participants_count, :private, :start_at, :state, :teams, :game_name, :show_rounds, :open_signup )
    # end

    # To customize the behavior of this controller,
    # you can overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Tournament.
    #     page(params[:page]).
    #     per(10)
    # end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Tournament.find_by!(slug: param)
    # end

    # See https://administrate-prototype.herokuapp.com/customizing_controller_actions
    # for more information
  end
end
