package Base

import javax.validation.Constraint;

import entities.User

abstract class BaseEntity {
	Date createdAt
	Date removedAt = null
	boolean active = true
	User createdBy

	static constraints = {
		createdAt nullable:true, blank:true
		removedAt nullable:true, blank:true
		active nullable:false, blank:false
		createdBy nullable:true, blank:true
	}
}
