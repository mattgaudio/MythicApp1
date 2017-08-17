# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
def name_pool
  @team_name = %w(Eirenaios Timon Themistokles Nikolaos Telesphorus Phokas Herakleitos Marcius Orestes Iacchus Morcant Govannon Cleon Faustus Lucius Crispus Theodoulos Perikles Phocas Calvus Evaristus Prometheus Aristaeus Medraut Herodotus Paramonos Liber Auxentius Democritus Varius Iovianus Saturnus Cadmus Caomhán Scaevola Fedlimid Gnaeus Castor Cunobelinus Mochán Epimetheus Onesiphoros Xenophon Aemilius Cleon Caratacus Pelagius Caecilius Nuallán Alexius Leontios Orpheus Aquila Hyakinthos Asclepius Eustathius Jedidiah Áed Cephas Tryphon Polycarp Lóegaire Zaccai Anan Zalmon Philo Phanuhel Hyginos Ireneus Vortigern Vinicius Athanasios Caiside Josephus Horatius Aristeides Pyrrhus Anacletus Theodoros Plato Eusebius Diocletian Anicetus Drakon Egnatius Eustathius Suibhne Aristeides Euphemios Paschal Livianus Mnason Augustinus Lucretius Mnason Antonius Theophilos Euthymios Onesimos Abacuc Booz Isocrates Leon Ithai Hevel Solon Nereus Damianos Zuriel Abacuc Noach Claudius Aviram Andreas Buddha Aquilinus Artemidoros Octavian Yochanan Dathan Aristarchus Cyprianus Ulysses Augustus Minos Asaf Badurad Henricus Machli Asklepios Endymion Yishai Mikha'el Tiburtius Phanuhel Kallikrates Jude Leofwine Winfrith Athanaric Octavianus Hiram Achaikos Mattithyahu Kenan Sargon Archelaos Audamar Magni Ariel Cephalus Ezar Israhel Jehoash Cephalus Ezar Israhel Jehoash Þórr Kadmos Ælfsige Heimirich Timaeus Folcher Finnr Kleon).sample
end

x = 0
250.times do
@var = name_pool
User.update(email: "#{@var}@gmail.com", nickname: "#{@var}")
x += 1
end
