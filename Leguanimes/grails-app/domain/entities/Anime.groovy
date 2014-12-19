package entities

import Base.BaseEntity;

class Anime extends BaseEntity {

    Date endDate
	Date startDate
	String ageRating
	String title
	Exibition exibition
	
	static hasMany = [episodes:Episode, genders:Gender, fansubs:Fansub, openings:Opening, endings:Ending]

    static constraints = {
		startDate nullable:false, blank:false
		endDate nullable:true, blank:true
		ageRating nullable:true, blank:true
		title nullable:false, blank:false
		exibition nullable:false, blank:false
    }
	
	String toString(){
		return this.title;
		//"${title}"
	}
}
