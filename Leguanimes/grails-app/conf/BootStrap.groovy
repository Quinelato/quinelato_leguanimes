import entities.*

class BootStrap {

	def init = { servletContext ->

		println "Populating Roles"
		def adminRole = new Role(type: "Administrator")
		def writerRole = new Role(type: "Writer")
		def readerRole = new Role(type: "Reader")
		if(Role.findAll().isEmpty()) {
			adminRole.save()
			if (adminRole.hasErrors()) {
				println adminRole.errors
			}
			else{
				writerRole.save()
				if (writerRole.hasErrors()) {
					println writerRole.errors
				}
				else{
					readerRole.save()
					if (readerRole.hasErrors()) {
						println readerRole.errors
					}
				}
			}
		}

		println "Populating Users"
		def adminUser = new User(
				email: "gustavoquinelato@gmail.com",
				firstName: "Luiz Gustavo",
				lastName: "Quinelato",
				birthday: Date.parse("dd/MM/yyyy", "10/10/1984"),
				avatar: null,
				username: "gustavoquinelato",
				password: "quinelato",
				role: adminRole
				)
		if(User.findAll().isEmpty()) {
			adminUser.save()
			if (adminUser.hasErrors()) {
				println adminUser.errors
			}
		}

		def writerUser = new User(
				email: "lgchad@gmail.com",
				firstName: "Luiz",
				lastName: "Quinelato",
				birthday: Date.parse("dd/MM/yyyy", "10/10/1984"),
				avatar: null,
				username: "lgchad",
				password: "quinelato",
				role: writerRole
				)
		writerUser.save()
		if (writerUser.hasErrors()) {
			println writerUser.errors
		}

		def readerUser = new User(
				email: "luizquinelato@tradeforce.com",
				firstName: "Gustavo",
				lastName: "Quinelato",
				birthday: Date.parse("dd/MM/yyyy", "10/10/1984"),
				avatar: null,
				username: "luizquinelato",
				password: "quinelato",
				role: readerRole
				)
		readerUser.save()
		if (readerUser.hasErrors()) {
			println readerUser.errors
		}

		println "Populating Genders"
		def gender = new Gender(
				name: "Comédia",
				description: "Comédia Clássica",
				createdBy: adminUser
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
				webAddress: "http://www.punchsub.com",
				createdBy: adminUser
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
				createdBy: adminUser
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
				createdBy: adminUser
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
				createdBy: adminUser
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
				createdBy: adminUser
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
				createdBy: adminUser
				)
		if(Ending.findAll().isEmpty()) {
			ending.save()
			if (ending.hasErrors()) {
				println ending.errors
			}
		}

	}
	def destroy = {
	}
}
