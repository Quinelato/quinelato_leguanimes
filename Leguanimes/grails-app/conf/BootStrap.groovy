import entities.*

class BootStrap {

	def init = { servletContext ->

		println "Populating Users"

		def user = new User(
				email: "gustavoquinelato@gmail.com",
				firstname: "Luiz Gustavo",
				lastname: "Quinelato",
				birthday: Date.parse("dd/MM/yyyy", "10/10/1984"),
				avatar: null,
				username: "gustavquinelato",
				password: "123456",
				//createdAt: new Date(),
				//active: true,
				)
		if(User.findAll().isEmpty()) {
			user.save()
			if (user.hasErrors()) {
				println user.errors
			}

			println "Populating Genders"

			def gender = new Gender(
					name: "Comédia",
					description: "Comédia Clássica",
					//createdAt: new Date(),
					//active: true,
					createdBy: user
					)
			if(Gender.findAll().isEmpty()) {
				gender.save()
				if (gender.hasErrors()) {
					println gender.errors
				}
			}

			println "Populating Fansubs"

			def fansub = new Fansub(
					name: "Punch",
					webAddress: "http://www.punch.com",
					//createdAt: new Date(),
					//active: true,
					createdBy: user
					)
			if(Fansub.findAll().isEmpty()) {
				fansub.save()
				if (fansub.hasErrors()) {
					println fansub.errors
				}
			}

			println "Populating Producers"

			def producer = new Producer(
					name: "Tokyo TV",
					//createdAt: new Date(),
					//active: true,
					createdBy: user
					)
			if(Producer.findAll().isEmpty()) {
				producer.save()
				if (producer.hasErrors()) {
					println producer.errors
				}
			}

			println "Populating Exibitions"

			def exibition = new Exibition(
					type: "TV",
					description: "Television",
					//createdAt: new Date(),
					//active: true,
					createdBy: user
					)
			if(Exibition.findAll().isEmpty()) {
				exibition.save()
				if (exibition.hasErrors()) {
					println exibition.errors
				}
			}

			println "Populating Anime"

			def anime = new Anime(
					title: "One Piece",
					startDate: Date.parse("dd/MM/yyyy", "10/08/2000"),
					ageRating: "17",
					exibition: exibition,
					//createdAt: new Date(),
					//active: true,
					createdBy: user
					)
			if(Anime.findAll().isEmpty()) {
				anime.save()
				if (anime.hasErrors()) {
					println anime.errors
				}
			}

			println "Populating Openings"

			def opening = new Opening(
					anime: anime,
					band: "Banda 01",
					webAddress: "http://www.youtube.com",
					song: "Mary Go!",
					//createdAt: new Date(),
					//active: true,
					createdBy: user
					)
			if(Opening.findAll().isEmpty()) {
				opening.save()
				if (opening.hasErrors()) {
					println opening.errors
				}
			}

			println "Populating Endings"

			def ending = new Ending(
					anime: anime,
					band: "Banda 01",
					webAddress: "http://www.youtube.com",
					song: "Mary Goodbye!",
					//createdAt: new Date(),
					//active: true,
					createdBy: user
					)
			if(Ending.findAll().isEmpty()) {
				ending.save()
				if (ending.hasErrors()) {
					println ending.errors
				}
			}
		}
	}
	def destroy = {
	}
}
