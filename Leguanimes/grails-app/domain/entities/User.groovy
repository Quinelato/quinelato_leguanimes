package entities

import java.util.Date;

class User{

    String email
	String firstname
	String lastname
	Date birthday
	String avatar
	String username
	String password
	Date createdAt = new Date()
	Date removedAt = null
	boolean active = true

    static constraints = {
		email nullable:false, blank:false, email:true
		firstname nullable:false, blank:false
		lastname nullable:false, blank:false
		birthday nullable:true, blank:true, max:new Date()
		avatar nullable:true, blank:true
		username nullable:false, blank:false, size:6..20
		password nullable:false, blank:false, size:6..20, password:true
		createdAt nullable:true, blank:true
		removedAt nullable:true, blank:true
		active nullable:false, blank:false
    }
	
	String toString(){
		"${firstname} ${lastname}"
	}
}
