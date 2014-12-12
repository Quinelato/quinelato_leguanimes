package entities



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ExibitionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Exibition.list(params), model:[exibitionInstanceCount: Exibition.count()]
    }

    def show(Exibition exibitionInstance) {
        respond exibitionInstance
    }

    def create() {
        respond new Exibition(params)
    }

    @Transactional
    def save(Exibition exibitionInstance) {
        if (exibitionInstance == null) {
            notFound()
            return
        }

        if (exibitionInstance.hasErrors()) {
            respond exibitionInstance.errors, view:'create'
            return
        }
		
		exibitionInstance.createdAt = new Date()
		exibitionInstance.createdBy = User.get(1)
		
		if(!exibitionInstance.active){
			exibitionInstance.removedAt = new Date()
		}else{
			exibitionInstance.removedAt = null
		}

        exibitionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'exibition.label', default: 'Exibition'), exibitionInstance.id])
                redirect exibitionInstance
            }
            '*' { respond exibitionInstance, [status: CREATED] }
        }
    }

    def edit(Exibition exibitionInstance) {
        respond exibitionInstance
    }

    @Transactional
    def update(Exibition exibitionInstance) {
        if (exibitionInstance == null) {
            notFound()
            return
        }

        if (exibitionInstance.hasErrors()) {
            respond exibitionInstance.errors, view:'edit'
            return
        }

        exibitionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Exibition.label', default: 'Exibition'), exibitionInstance.id])
                redirect exibitionInstance
            }
            '*'{ respond exibitionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Exibition exibitionInstance) {

        if (exibitionInstance == null) {
            notFound()
            return
        }

        exibitionInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Exibition.label', default: 'Exibition'), exibitionInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'exibition.label', default: 'Exibition'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
