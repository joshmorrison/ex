require 'test_helper'

class UserTest < ActiveSupport::TestCase
	fixtures :users
  # Replace this with your real tests.
  test "is_one_valid" do
  assert(users(:one).valid?) 
end
	test "has_one_userID" do
	assert(users(:one).userID == '1234567')
end
	test "has_one_firstname" do
	assert(users(:one).firstname == 'Student')
end
	test "has_one_lastname" do
	assert(users(:one).lastname == 'One')
end
	test "is_one_active" do
	assert(users(:one).active == 'Y')
end
	test "is_one_Student" do
	assert(users(:one).userType == 'Student')
end
	test "has_one_password" do
	assert(users(:one).password == 'password')
end
	test "is_two_valid" do
  assert(users(:two).valid?) 
end
	test "has_two_userID" do
	assert(users(:two).userID == '2345678')
end
	test "has_two_firstname" do
	assert(users(:two).firstname == 'Faculty')
end
	test "has_two_lastname" do
	assert(users(:two).lastname == 'Two')
end
	test "is_two_active" do
	assert(users(:two).active == 'N')
end
	test "is_two_fac" do
	assert(users(:two).userType == 'FAC')
end
	test "has_two_password" do
	assert(users(:two).password == 'password')
end
	test "is_three_valid" do
  assert(users(:three).valid?) 
end
	test "has_three_userID" do
	assert(users(:three).userID == '3456789')
end
	test "has_three_firstname" do
	assert(users(:three).firstname == 'Administrator')
end
	test "has_three_lastname" do
	assert(users(:three).lastname == 'Three')
end
	test "is_three_active" do
	assert(users(:three).active == 'N')
end
	test "is_three_fac" do
	assert(users(:three).userType == 'Admin')
end
	test "has_three_password" do
	assert(users(:three).password == 'password')
end
# failing tests

	test "has_one_userID" do
	assert(users(:one).userID == '234567')
end
	test "has_one_firstname" do
	assert(users(:one).firstname == 'tudent')
end
	test "has_one_lastname" do
	assert(users(:one).lastname == 'ne')
end
	test "is_one_active" do
	assert(users(:one).active == 'N')
end
	test "is_one_Student" do
	assert(users(:one).userType == 'tudent')
end
	test "has_one_password" do
	assert(users(:one).password == 'assword')
end
	test "has_two_userID" do
	assert(users(:two).userID == '345678')
end
	test "has_two_firstname" do
	assert(users(:two).firstname == 'aculty')
end
	test "has_two_lastname" do
	assert(users(:two).lastname == 'wo')
end
	test "is_two_active" do
	assert(users(:two).active == 'Y')
end
	test "is_two_fac" do
	assert(users(:two).userType == 'AC')
end
	test "has_two_password" do
	assert(users(:two).password == 'assword')
end
	test "has_three_userID" do
	assert(users(:three).userID == '456789')
end
	test "has_three_firstname" do
	assert(users(:three).firstname == 'dministrator')
end
	test "has_three_lastname" do
	assert(users(:three).lastname == 'hree')
end
	test "is_three_active" do
	assert(users(:three).active == 'Y')
end
	test "is_three_fac" do
	assert(users(:three).userType == 'dmin')
end
	test "has_three_password" do
	assert(users(:three).password == 'assword')
end
end
