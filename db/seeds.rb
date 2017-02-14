Meeting.create(
  name: "Premier meeting",
  date: DateTime.new(2017,02,11,14,14,14)
)

User.create(
  login: "Baryonaute",
  firstName: "Paul",
  lastName: "Dewost",
  address: "7, avenue du Maréchal de Lattre de Tassigny, 92100, Boulogne-Billancourt",
  password: "test"
)

Friend.create(
	name: "Aymon",
	address: "60 Rue du Chemin Vert, 92100",
	user_id: 1
)
