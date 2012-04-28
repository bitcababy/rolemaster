Feature: Role
  In order to manage permissions, I want to have named roles that have both a default permission and the ability to add permissions

	Scenario: A new role
	  When I create a new role
	  Then it should have a name and a default_permission of ":deny"
	
	
	

	
  
