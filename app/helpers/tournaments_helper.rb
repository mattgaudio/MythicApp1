module TournamentsHelper

  def set_values
    @tournament = Tournament.find(params[:id])
  end

  def name_pool
    @team_name = %w(Eirenaios Timon Themistokles Nikolaos Telesphorus Phokas Herakleitos Marcius Orestes Iacchus Morcant Govannon Cleon Faustus Lucius Crispus Theodoulos Perikles Phocas Calvus Evaristus Prometheus Aristaeus Medraut Herodotus Paramonos Liber Auxentius Democritus Varius Iovianus Saturnus Cadmus Caomhán Scaevola Fedlimid Gnaeus Castor Cunobelinus Mochán Epimetheus Onesiphoros Xenophon Aemilius Cleon Caratacus Pelagius Caecilius Nuallán Alexius Leontios Orpheus Aquila Hyakinthos Asclepius Eustathius Jedidiah Áed Cephas Tryphon Polycarp Lóegaire Zaccai Anan Zalmon Philo Phanuhel Hyginos Ireneus Vortigern Vinicius Athanasios Caiside Josephus Horatius Aristeides Pyrrhus Anacletus Theodoros Plato Eusebius Diocletian Anicetus Drakon Egnatius Eustathius Suibhne Aristeides Euphemios Paschal Livianus Mnason Augustinus Lucretius Mnason Antonius Theophilos Euthymios Onesimos Abacuc Booz Isocrates Leon Ithai Hevel Solon Nereus Damianos Zuriel Abacuc Noach Claudius Aviram Andreas Buddha Aquilinus Artemidoros Octavian Yochanan Dathan Aristarchus Cyprianus).sample
  end


  def add_participants_to_challonge
    32.times do
      Challonge::Participant.create(name: "#{@team_name}", tournament: "#{@tournament.tournament_id}")
    end
  end

end
