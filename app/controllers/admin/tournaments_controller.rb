module Admin
  class TournamentsController < Admin::ApplicationController

    def create 
        puts "PARAMS: #{params.inspect}"
        tournament = Challonge::Tournament.create(tournament_params)
        @tournament = Tournament.create(tournament_params.merge(tournament_id: tournament.id))
        # @tournament = Tournament.create(tournament_params.merge(tournament_id: tournament.id, tournament_paylod: tournament.id))

        # payload: tournament.attributes
        redirect_to admin_tournament_path(@tournament)
    end

    def tournament_params
        params.require(:tournament).permit(:name, :tournament_type, :url, :description)
    end

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
