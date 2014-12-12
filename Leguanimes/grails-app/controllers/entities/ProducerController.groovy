package entities



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProducerController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Producer.list(params), model:[producerInstanceCount: Producer.count()]
    }

    def show(Producer producerInstance) {
        respond producerInstance
    }

    def create() {
        respond new Producer(params)
    }

    @Transactional
    def save(Producer producerInstance) {
        if (producerInstance == null) {
            notFound()
            return
        }

        if (producerInstance.hasErrors()) {
            respond producerInstance.errors, view:'create'
            return
        }

		producerInstance.createdBy = User.get(1)
		
        producerInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'producer.label', default: 'Producer'), producerInstance.id])
                redirect producerInstance
            }
            '*' { respond producerInstance, [status: CREATED] }
        }
    }

    def edit(Producer producerInstance) {
        respond producerInstance
    }

    @Transactional
    def update(Producer producerInstance) {
        if (producerInstance == null) {
            notFound()
            return
        }

        if (producerInstance.hasErrors()) {
            respond producerInstance.errors, view:'edit'
            return
        }

        producerInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Producer.label', default: 'Producer'), producerInstance.id])
                redirect producerInstance
            }
            '*'{ respond producerInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Producer producerInstance) {

        if (producerInstance == null) {
            notFound()
            return
        }

        producerInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Producer.label', default: 'Producer'), producerInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'producer.label', default: 'Producer'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
