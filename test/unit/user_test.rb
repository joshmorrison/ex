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
	assert(users(:one).firstname == 'Bob')
end
	test "has_one_lastname" do
	assert(users(:one).lastname == 'Barker')
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
	assert(users(:two).userID == '234567')
end
	test "has_two_firstname" do
	assert(users(:two).firstname == 'Julia')
end
	test "has_two_lastname" do
	assert(users(:two).lastname == 'Child')
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
	
end
