package Base

import javax.validation.Constraint;

import entities.User

abstract class BaseEntity {
	Date createdAt = new Date()
	Date removedAt = null
	boolean active = true
	User createdBy

	static constraints = {
		removedAt nullable:true, blank:true
		createdBy nullable:true, blank:true
	}
}
