module TournamentsHelper



  def set_values
    @tournament = Tournament.find(params[:id])
  end




  def add_participants_to_challonge
    32.times do
      Challonge::Participant.create(name: "#{@team_name}", tournament: "#{@tournament.tournament_id}")
    end
  end

end
