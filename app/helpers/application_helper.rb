# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  

def which_checklist
    if User.find_by_userID(session[:userID]) && User.find_by_userID(session[:userID]).userType =~ /Admin|FAC/
      link_to "Checklist", :controller => "checklists", :action => "index"
    elsif User.find_by_userID(session[:userID])
      link_to "Checklist", :controller => "checklists", :action => "index"
    else
      link_to "Checklist", :controller => "checklists", :action => "new"
    end
  end

  def which_user
    if User.find_by_userID(session[:userID]) && User.find_by_userID(session[:userID]).userType =~ /Admin|FAC/
      link_to "User", :controller => "users", :action => "index"
  else User.find_by_userID(session[:userID])
    link_to "User", :controller => "users", :action => "index", :id => User.find_by_userID(session[:userID])
end
end
  
end
