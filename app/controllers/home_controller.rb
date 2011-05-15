class HomeController < ApplicationController
  
  before_filter :logged_in?, :except => [:new]
    
  def index
    
  end



 
	
end
