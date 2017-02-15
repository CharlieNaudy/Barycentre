Meeting.create(
  name: "Premier meeting",
  date: DateTime.new(2017,02,11,14,14,14)
)

User.create(
  email: "Baryonaute",
  firstName: "Paul",
  lastName: "Dewost",
  address: "7, avenue du Maréchal de Lattre de Tassigny, 92100, Boulogne-Billancourt",
  password: "test"
)

User.create(
  email: "charlie.naudy@gmail.com",
  firstName: "Charlie",
  lastName: "Naudy",
  address: "119 BIS Rue de Paris, 92100",
  password: "test"
)

Friend.create(
	name: "Aymon",
	address: "60 Rue du Chemin Vert, 92100",
	user_id: 1
)

Friend.create(
  name: "Romain",
  address: "Meudon",
  user_id: 1
)

Friend.create(
  name: "FX",
  address: "12 Rue Franklin, 75016",
  user_id: 1
)

Friend.create(
  name: "Aymon",
  address: "60 Rue du Chemin Vert, 92100",
  user_id: 2
)

Friend.create(
  name: "Ambroise",
  address: "ESSEC, Cergy",
  user_id: 2
)