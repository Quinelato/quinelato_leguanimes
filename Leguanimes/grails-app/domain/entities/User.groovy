package entities

import Base.BaseEntity

class User extends BaseEntity{

    String email
	String firstname
	String lastname
	Date birthday
	String avatar
	String username
	String password

    static constraints = {
		email nullable:false, blank:false, email:true
		firstname nullable:false, blank:false
		lastname nullable:false, blank:false
		birthday nullable:true, blank:true, max:new Date()
		avatar nullable:true, blank:true
		username nullable:false, blank:false, size:6..20
		password nullable:false, blank:false, size:6..20, password:true
    }
}
