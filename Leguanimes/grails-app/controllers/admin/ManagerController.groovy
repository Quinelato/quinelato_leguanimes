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

            def user = User.findByPasswordAndUsername(password, params.username)
            if(user){

                if(user.role.type == "Administrator"){
					session.user = user
					flash.message = "Olá! ${user.toString()}!"
                    redirect action:"index", controller:"gender"
                }
                else{
					flash.message = "Desculpe, você não possui permissão para acessar."
                    redirect(uri:"/")
                }
            }
            else{
                flash.message = "Desculpe, usuário ou senha incorretos. Por favor, tente novamente."
                redirect(action:"login")
            }
        }
    }

    def validLogin(String username, String password){
        if(username == null || username == "" || password == null || password == "" ){
            return false
        }

        return true
    }

    def logout = {
        flash.message = "Até Logo, ${session.user.toString()}!"
        session.user = null
        redirect(action:"login")
    }
}
