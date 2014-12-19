package admin
import entities.User

class ManagerController {

    def index() {
        if(!session.user) {
            redirect action:"login"
            return false
        }
    }

    def login() {}

    def authenticate = {

        if(validLogin(params.username, params.password)) {
            def password = params.password.bytes.encodeBase64().toString()

            def user = User.findByUsernameAndPassword(params.username, password)
            if(user){
                session.user = user
                flash.message = "Olá ${user.toString()}!"

                if(user.role.type == "Administrador")
                    redirect action:"index", controller:"gender"
                else
                    redirect(uri:"/")
            }
            else{
                flash.message = "Desculpe, email ou senha incorretos. Por favor, tente novamente."
                redirect(action:"login")
            }
        }
    }

    def validLogin(String username, String password){
        if(username != null && username != "" && password != null & password != "" ){
            return false
        }

        return true
    }

    def logout = {
        flash.message = "Goodbye ${session.user.toString()}"
        session.user = null
        redirect(action:"login")
    }
}
