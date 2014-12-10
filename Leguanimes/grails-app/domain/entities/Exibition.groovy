package entities

import Base.BaseEntity

class Exibition extends BaseEntity{

    String type
	String description
	
    static constraints = {
		type nullable:false, blank:false, minLength:3
		description nullable:true, blank:true
    }
}
