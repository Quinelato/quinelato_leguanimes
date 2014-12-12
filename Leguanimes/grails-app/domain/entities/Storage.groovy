package entities

import Base.BaseEntity

class Storage extends BaseEntity{

    String name
	String description
	Date burnDate
	int number = 1
	
	static hasMany = [episodes:Episode]
	
    static constraints = {
		name nullable:false, blank:false, minLength:3
		description nullable:true, blank:true
		burnDate nullable:true, blank:true
		number nullable:true, blank:true, min:1
    }
	
	String toString(){
		"${name}: ${number}"
	}
}
