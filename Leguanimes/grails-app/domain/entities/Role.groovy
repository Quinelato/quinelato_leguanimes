package entities

class Role {

    String type

    static constraints = {
		type unique:true, inList: ["Administrator","Writer","Reader"]
    }
	
	String toString(){
		"${type}"
	}
}
