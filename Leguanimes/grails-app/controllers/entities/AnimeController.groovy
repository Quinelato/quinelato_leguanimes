package entities



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AnimeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Anime.list(params), model:[animeInstanceCount: Anime.count()]
    }

    def show(Anime animeInstance) {
        respond animeInstance
    }

    def create() {
        respond new Anime(params)
    }

    @Transactional
    def save(Anime animeInstance) {
        if (animeInstance == null) {
            notFound()
            return
        }

        if (animeInstance.hasErrors()) {
            respond animeInstance.errors, view:'create'
            return
        }

        animeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'anime.label', default: 'Anime'), animeInstance.id])
                redirect animeInstance
            }
            '*' { respond animeInstance, [status: CREATED] }
        }
    }

    def edit(Anime animeInstance) {
        respond animeInstance
    }

    @Transactional
    def update(Anime animeInstance) {
        if (animeInstance == null) {
            notFound()
            return
        }

        if (animeInstance.hasErrors()) {
            respond animeInstance.errors, view:'edit'
            return
        }

        animeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Anime.label', default: 'Anime'), animeInstance.id])
                redirect animeInstance
            }
            '*'{ respond animeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Anime animeInstance) {

        if (animeInstance == null) {
            notFound()
            return
        }

        animeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Anime.label', default: 'Anime'), animeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'anime.label', default: 'Anime'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
