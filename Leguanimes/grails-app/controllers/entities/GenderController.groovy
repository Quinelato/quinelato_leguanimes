package entities



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class GenderController {

	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		respond Gender.list(params), model:[genderInstanceCount: Gender.count()]
	}

	def show(Gender genderInstance) {
		respond genderInstance
	}

	def create() {
		respond new Gender(params)
	}

	@Transactional
	def save(Gender genderInstance) {
		if (genderInstance == null) {
			notFound()
			return
		}

		if (genderInstance.hasErrors()) {
			respond genderInstance.errors, view:'create'
			return
		}

		genderInstance.createdAt = new Date()
		genderInstance.createdBy = User.get(1)

		println genderInstance.active
		if(!genderInstance.active){
			genderInstance.removedAt = new Date()
		}else{
			genderInstance.removedAt = null
		}

		genderInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.created.message', args: [
					message(code: 'gender.label', default: 'Gender'),
					genderInstance.id
				])
				redirect genderInstance
			}
			'*' { respond genderInstance, [status: CREATED] }
		}
	}

	def edit(Gender genderInstance) {
		respond genderInstance
	}

	@Transactional
	def update(Gender genderInstance) {
		if (genderInstance == null) {
			notFound()
			return
		}

		if (genderInstance.hasErrors()) {
			respond genderInstance.errors, view:'edit'
			return
		}

		genderInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [
					message(code: 'Gender.label', default: 'Gender'),
					genderInstance.id
				])
				redirect genderInstance
			}
			'*'{ respond genderInstance, [status: OK] }
		}
	}

	@Transactional
	def delete(Gender genderInstance) {

		if (genderInstance == null) {
			notFound()
			return
		}

		genderInstance.delete flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.deleted.message', args: [
					message(code: 'Gender.label', default: 'Gender'),
					genderInstance.id
				])
				redirect action:"index", method:"GET"
			}
			'*'{ render status: NO_CONTENT }
		}
	}

	protected void notFound() {
		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.not.found.message', args: [
					message(code: 'gender.label', default: 'Gender'),
					params.id
				])
				redirect action: "index", method: "GET"
			}
			'*'{ render status: NOT_FOUND }
		}
	}
}
