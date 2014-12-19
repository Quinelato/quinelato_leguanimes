class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller:"manager", action:"login")
		"/login"(controller:"manager", action:"login")
        "500"(view:'/error')
	}
}
