package entities

import Base.BaseEntity

class Opening extends BaseEntity{

    Anime anime
	String band
	String webAddress
	String song
	String thumbnail
	int number = 1
	
	static belongsTo = [anime:Anime]

    static constraints = {
		anime nullable:false, blank:false
		band nullable:false, blank:false
		webAddress bullable:true, blank:true
		song nullable:false, blank:false
		thumbnail nullable:true, blank:true
		number nullable:false, blank:false, min:1
    }
	
	String toString(){
		"${number}. ${band}: ${song}"
	}
}
