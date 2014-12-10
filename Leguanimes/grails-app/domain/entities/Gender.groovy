package entities

import Base.BaseEntity

class Gender extends BaseEntity{

    String name
	String description
	
    static constraints = {
		name nullable:false, blank:false, minLength:3
		description nullable:true, blank:true
    }
}
