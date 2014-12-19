package entities

class User{

    String email
	String firstName
	String lastName
	Date birthday
	String avatar
	String username
	String password
	Date createdAt = new Date()
	Date removedAt = null
	boolean active = true
	boolean expiredAccount = false
	boolean blockedAccount = false
	boolean expiredPassword = false
	Role role

    static constraints = {
		email nullable:false, blank:false, email:true, unique:true
		firstName nullable:false, blank:false
		lastName nullable:false, blank:false
		birthday nullable:true, blank:true, max:new Date()
		avatar nullable:true, blank:true
		username nullable:false, blank:false, size:6..20, unique:true
		password nullable:false, blank:false, size:6..20, password:true
		createdAt nullable:true, blank:true
		removedAt nullable:true, blank:true
		active nullable:false, blank:false
    }
	
	String toString(){
		"${firstName} ${lastName}"
	}
	
	 def beforeInsert() {
		encodePassword()
	 }
  
	 def beforeUpdate() {
		if (isDirty('password')) {
		   encodePassword()
		}
	 }
  
	 protected void encodePassword() {
		 this.password = this.password.bytes.encodeBase64().toString()
	 }
}
