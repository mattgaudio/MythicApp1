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

	def current_player_bracket_pool_nightly
		if current_user.player.bracket_pools.find_by(active: true, nightly: true)
			current_user.player.bracket_pools.where(active: true, nightly: true).each do |x|
				x.id
			end
		else
			false
		end
	end

	def current_player_bracket_pool_weekly
		if current_user.player.bracket_pools.find_by(active: true, weekly: true)
			current_user.player.bracket_pools.where(active: true, weekly: true).each do |x|
				x.id
			end
		else
			false
		end
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

	def name_pool
		@team_name = %w(Eirenaios Timon Themistokles Nikolaos Telesphorus Phokas Herakleitos Marcius Orestes Iacchus Morcant Govannon Cleon Faustus Lucius Crispus Theodoulos Perikles Phocas Calvus Evaristus Prometheus Aristaeus Medraut Herodotus Paramonos Liber Auxentius Democritus Varius Iovianus Saturnus Cadmus Caomhán Scaevola Fedlimid Gnaeus Castor Cunobelinus Mochán Epimetheus Onesiphoros Xenophon Aemilius Cleon Caratacus Pelagius Caecilius Nuallán Alexius Leontios Orpheus Aquila Hyakinthos Asclepius Eustathius Jedidiah Áed Cephas Tryphon Polycarp Lóegaire Zaccai Anan Zalmon Philo Phanuhel Hyginos Ireneus Vortigern Vinicius Athanasios Caiside Josephus Horatius Aristeides Pyrrhus Anacletus Theodoros Plato Eusebius Diocletian Anicetus Drakon Egnatius Eustathius Suibhne Aristeides Euphemios Paschal Livianus Mnason Augustinus Lucretius Mnason Antonius Theophilos Euthymios Onesimos Abacuc Booz Isocrates Leon Ithai Hevel Solon Nereus Damianos Zuriel Abacuc Noach Claudius Aviram Andreas Buddha Aquilinus Artemidoros Octavian Yochanan Dathan Aristarchus Cyprianus Diocletianus Neptunus Godwine Freden Lykourgos Maximilianus Philippos Iapetos Chenaniah Nimrod Lycus Cyneric Gislenus Gnaeus Leofsige Pollux Simon Tatius Avidan Reinhold Annas Wilfrith Simon Aurelianus Anath Alfhard Seneca Iason Einarr Netanyahu Terach Laurentius Moshe Ahab Archelaus Harduwich Medraut Xenophon Fulvius Stephanos Ianuarius Willihard Aeneas Evander Zebedaios Theodoros Belenos Patroklos Metushelach Hephaistos Hector Theodoard Eiríkr Kleisthenes Kyros Hildræd Poseidon Emmanuhel Yochanan Terentius Gaufrid Albert Gebhard Gunni Brutus Lysander Goma Yehoram Jared Dareios Alfher Nikostratos Abaddon Dauid Kyriakos Gavri'el Onesiphorus Frey Týr Badulf Ithai Corraidhín Sokrates Eustathios Dáire Kenan Kepheus Eindriði Leandros Seraiah Marinus Dwyn Decimus Panther Tychon Israel Sem Richard Binyamin Goibniu Caiaphas Zotikos Carlman Democritus Adinah Wendelin Chryses Guðfriðr Naoise Timotheus Samson Silvanus Neptunus Perikles Amnon Theotimos Michael Baggi Ambakoum Danihel Áleifr Oscar Pericles Mattan Pæga Otto Ouranos Wilmǣr Ezekiel Asa Xenokrates Blasius Gervas Finnr Ishmerai Gozzo Yehoshafat Quintus Anat Odysseus Cuidightheach Moshe Gedeon Wilhelm Evander Chrysanthos Nynniaw Zotikos Linos Beniamin Cyrus Laius Jada Wealdmær Barnabas Meginrat Thor Quintus Arnþórr Noach Calvus Melanthios Faramund Ariston Eustorgius Galenos Antoninus Óengus Lugubelenus Ehud Alard Ouri Caleb Asco Cicero Diokles Æthelric Gedeon Alfbern Gislenus Lewi Amyntas Aristophanes Valdimárr Medrod Óengus Abel Xenon Jephthah Athanas Thankarat Belshazzar Servius Alard Odin Marianus Philip Abidan Gundahar Chrysanthos Adalwin Jehoiakim Judas Castor Eliezer Ozias Caius Mnason Hildebrand Bethuel Pancratius Zebulon Arcadius Eoghan Tzion Prochoros Sluaghadhán Fabricius Erlingr Lykos Bruno Hereward Iapheth Areli Badulf Yiftach Goliath Lambert Eustorgius Heber Wigmar Beorhtsige Huguo Publius Asaf Þórir Þórfreðr Aeolus Hallr Ealhstan Friðþjófr Æthelweard Enosh Ebenezer Alboin Alexandros Epiphanes Donnchad Huri Jason Kenanyahu Isokrates Hroðgar Diomedes Sophus Hieremias Gamaliel Conchúr Vercingetorix Pelagius Þórarinn Giltbert Argyros Sigurðr Gerbern Salathihel Euaristos Seleucus Wido Titus Pan Moab Galenos Androkles Cuthberht Vulcanus Othniel Livius Phrixos Sigivald Achaicus Camillus Bradán Narcissus Hyakinthos Abisai Barukh Lykourgos Mikhailu Aurelius Eran Timon Micajah Wilheard Gilead Dardanos Balder Paulos Æsc Agapetus Edom Faustus Demetrios Secundus Erwin Mercury Fróði Dylan Mahali Ingi Prometheus Finnr Ittai Menahem).sample
	end

end
