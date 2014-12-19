package entities

import Base.BaseEntity

class Fansub extends BaseEntity{

    String name
	String webAddress
	
    static constraints = {
		name nullable:false, blank:false, minLength:3
		webAddress nullable:true, blank:true
    }
	String toString(){
		"${name}"
	}
}
