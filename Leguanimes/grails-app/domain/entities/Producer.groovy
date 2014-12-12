package entities

import Base.BaseEntity

class Producer extends BaseEntity{

    String name
	
    static constraints = {
		name nullable:false, blank:false
    }
	
	String toString(){
		"${name}"
	}
}
