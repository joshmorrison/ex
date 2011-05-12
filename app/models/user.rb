class User < ActiveRecord::Base
 validates_presence_of :userID, :lastname, :firstname, :active, :userType, :password

validates_length_of :userID, :within => 4..20
validates_length_of :lastname, :within => 1..20
validates_length_of :firstname, :within => 1..20
validates_length_of :active, :maximum => 1
validates_length_of :userType, :within => 3..7 
validates_length_of :password, :within => 4..20 

#validates_format_of :userID, :with =>
validates_format_of :lastname, :firstname, :with => /\A[a-zA-Z]+\z/, :message => "Only letters allowed"
validates_format_of :active, :with => /[YN]/
validates_format_of :userType, :with => /Student|FAC|Admin/, :message => "Error: bad user type; must be Student, FAC, or Admin"

## !!BANGBANG
	
	ACTIVES = ["Y", "N"]
	USERTYPES = 	["Student", "FAC", "Admin"]

end
