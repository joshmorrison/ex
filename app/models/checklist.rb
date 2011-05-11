class Checklist < ActiveRecord::Base
validates_presence_of :studentID, :courseCode, :year, :semester, :area, :count, :grade, :approved, :note

validates_format_of :studentID, :with => /[0-9]{7}/, :message => "Invalid Student ID"
validates_format_of :courseCode, :with => /[4-6][0-9]{3}/, :message => "Invalid Course Code"
validates_format_of :year, :with =>  /20[0-9]{2}/, :message => "Invalid year, valid years are 2000 - 2099"
validates_format_of :semester, :with => /SP|SU|FA/, :message => "Enter SP for Spring, SU for Summer, and FA for fall"
validates_format_of :area, :with => /[1234567]/, :message => "Wrong area, enter 1-7"
validates_format_of :count, :with => /[YN]/, :message => "Count wrong, Only Y or N allowed"
validates_format_of :grade, :with => /[ABC]/, :message => "Grade invalid, must be A, B, or C"
validates_format_of :approved, :with => /[YN]/, :message => "Only Y or N allowed"

validates_length_of :note, :within => 1..2000

	YEARS = (2004..2012)
	SEMESTERS = ["SP", "SU", "FA"]	
	AREAS = (1..7)
	COUNTS = ["Y", "N"]
	GRADES = ["A", "B", "C", "D", "F"]
	APPROVEDS = ["Y", "N"]
	
end
