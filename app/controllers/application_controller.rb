# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
	
	

  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
 
  def logged_in?
    if User.find_by_userID(session[:userID])
      return true     
    else
      redirect_to :controller => "sessions", :action => "new"
      false
    end
      
  end

  

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end



