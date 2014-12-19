package entities

import Base.BaseEntity

class Exibition extends BaseEntity{

    String type
	String description
	
    static constraints = {
		type nullable:false, blank:false, minLength:3, inList: ["TV","OVA","MOVIE", "SPECIAL", "ONA", "OTHER", "SONG"]
		description nullable:true, blank:true
    }
	
	String toString(){
		"${type}"
	}
}
