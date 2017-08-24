module ApplicationHelper

	def joined_bracket
		if current_user && current_user.player
	    if current_user.player.bracket_pools.count >= 1
	      true
	    else
	      false
	    end
		end
  end

	def name_pool
		@team_name = %w(Eirenaios Timon Themistokles Nikolaos Telesphorus Phokas Herakleitos Marcius Orestes Iacchus Morcant Govannon Cleon Faustus Lucius Crispus Theodoulos Perikles Phocas Calvus Evaristus Prometheus Aristaeus Medraut Herodotus Paramonos Liber Auxentius Democritus Varius Iovianus Saturnus Cadmus Caomhán Scaevola Fedlimid Gnaeus Castor Cunobelinus Mochán Epimetheus Onesiphoros Xenophon Aemilius Cleon Caratacus Pelagius Caecilius Nuallán Alexius Leontios Orpheus Aquila Hyakinthos Asclepius Eustathius Jedidiah Áed Cephas Tryphon Polycarp Lóegaire Zaccai Anan Zalmon Philo Phanuhel Hyginos Ireneus Vortigern Vinicius Athanasios Caiside Josephus Horatius Aristeides Pyrrhus Anacletus Theodoros Plato Eusebius Diocletian Anicetus Drakon Egnatius Eustathius Suibhne Aristeides Euphemios Paschal Livianus Mnason Augustinus Lucretius Mnason Antonius Theophilos Euthymios Onesimos Abacuc Booz Isocrates Leon Ithai Hevel Solon Nereus Damianos Zuriel Abacuc Noach Claudius Aviram Andreas Buddha Aquilinus Artemidoros Octavian Yochanan Dathan Aristarchus Cyprianus).sample
	end

	def current_user_nightly_bracket
		zz = Array.new
		if current_user.player.bracket_pools.any?
			current_user.player.bracket_pools.each do |x|
				if x.nightly
					zz = [x.game.title, x.title]
				end
			end
		end
		zz
	end

	def current_user_weekly_bracket
	end

end
