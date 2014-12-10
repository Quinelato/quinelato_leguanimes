package Base

import entities.User

abstract class BaseEntity {
	Date createdAt
	Date removedAt = null
	boolean active = true
	User createdby
}
