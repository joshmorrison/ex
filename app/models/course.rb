class Course < ActiveRecord::Base
 validates_presence_of :courseCode, :level, :title, :description

validates_length_of :courseCode, :within => 1..4, :message => "Course code invalid."
validates_length_of :level, :maximum => 1
validates_length_of :title, :within => 1..50 
validates_length_of :description, :within => 1..500

validates_format_of :courseCode, :with => /[4-6][0-9]{3}/, :message => "Invalid Course Code"
validates_format_of :level, :with => /[GU]/, :message => "Only G or U allowed"
end
#
