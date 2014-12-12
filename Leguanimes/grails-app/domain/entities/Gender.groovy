package entities

import Base.BaseEntity

class Gender extends BaseEntity{

    String name
	String description
	
    static constraints = {
		name nullable:false, blank:false, minLength:3
		description nullable:true, blank:true
    }
	
	String toString(){
		"${name}"
	}
	
	def beforeInsert() {
		if (active == null || !active){
			removedAt = new Date()
		} else{
			removedAt = Date.parse("dd/MM/yyyy","10/10/1984")
		}
	}
	
	def beforeUpdatet() {
		if (active == null || !active){
			removedAt = new Date()
		} else{
			removedAt = Date.parse("dd/MM/yyyy","12/12/1999")
		}
	}
}
