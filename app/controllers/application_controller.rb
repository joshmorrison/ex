# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
	
	before_filter :authenticate

  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
 
  def authenticate
	unless @logged_user
			#not logged in
    		authenticate_or_request_with_http_basic do |user_name, password|
      	user_name == 'admin' && password == 'passwurd'
				#:accessLevel = User.find_by
			return false
    	end
  	end
	end

	def fetch_logged_user

		unless session[:user_id].blank?
			@logged_user = User.find(session[:user_id])
		end
		rescue ActiveRecord::RecordNotFound
	end

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end



