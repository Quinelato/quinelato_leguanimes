package entities



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EpisodeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Episode.list(params), model:[episodeInstanceCount: Episode.count()]
    }

    def show(Episode episodeInstance) {
        respond episodeInstance
    }

    def create() {
        respond new Episode(params)
    }

    @Transactional
    def save(Episode episodeInstance) {
        if (episodeInstance == null) {
            notFound()
            return
        }

        if (episodeInstance.hasErrors()) {
            respond episodeInstance.errors, view:'create'
            return
        }

		episodeInstance.createdAt = new Date()
		episodeInstance.createdBy = User.get(1)
		
		if(!episodeInstance.active){
			episodeInstance.removedAt = new Date()
		}else{
			episodeInstance.removedAt = null
		}
		
        episodeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'episode.label', default: 'Episode'), episodeInstance.id])
                redirect episodeInstance
            }
            '*' { respond episodeInstance, [status: CREATED] }
        }
    }

    def edit(Episode episodeInstance) {
        respond episodeInstance
    }

    @Transactional
    def update(Episode episodeInstance) {
        if (episodeInstance == null) {
            notFound()
            return
        }

        if (episodeInstance.hasErrors()) {
            respond episodeInstance.errors, view:'edit'
            return
        }

        episodeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Episode.label', default: 'Episode'), episodeInstance.id])
                redirect episodeInstance
            }
            '*'{ respond episodeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Episode episodeInstance) {

        if (episodeInstance == null) {
            notFound()
            return
        }

        episodeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Episode.label', default: 'Episode'), episodeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'episode.label', default: 'Episode'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
