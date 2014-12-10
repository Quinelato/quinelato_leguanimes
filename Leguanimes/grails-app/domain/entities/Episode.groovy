package entities

import Base.BaseEntity;

class Episode extends BaseEntity{

    Anime anime
	double duration
	double size
	int heigh
	int number
	int width
	String extension
	String quality
	String title
	String codec
	
	static belongsTo = [Anime,Storage]
	static hasMany = [storages:Storage]
	
    static constraints = {
		anime nullable:false, blank:false
		duration nullable:true, blank:true
		size nullable:true, blank:true
		heigh nullable:true, blank:true, min:1
		number nullable:false, blank:false, min:1
		width nullable:true, blank:true, min:1
		extension nullable:true, blank:true
		quality nullable:true, blank:true
		title nullable:false, blank:false, minLength:3
		codec nullable:true, blank:true
    }
}
